Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/FBXExporter?download=true
inline.NumInlined: 9027
inline.NumDeleted: 2242
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN6Assimp11FBXExporter12WriteObjectsEv:bb.a
_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i4076:    ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit
  store ptr %i.jec, ptr %i.ihm, align 8
  br label %_ZNSt6vectorIfSaIfEE5clearEv.exit4077

_ZNSt6vectorIfSaIfEE5clearEv.exit4077:            ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i4076
  %i.jee = load ptr, ptr %243, align 8            ; 2 uses
  %i.jef = load ptr, ptr %i.iho, align 8
  %.not.i.i4078 = icmp eq ptr %i.jef, %i.jee
  br i1 %.not.i.i4078, label %_ZNSt6vectorIfSaIfEE5clearEv.exit4080, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i4079

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i4079:    ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit4077
  store ptr %i.jee, ptr %i.iho, align 8
  br label %_ZNSt6vectorIfSaIfEE5clearEv.exit4080

_ZNSt6vectorIfSaIfEE5clearEv.exit4080:            ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit4077, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i4079
  %i.jeg = getelementptr inbounds nuw i8, ptr %i.ivc, i64 1040 ; 2 uses
  %i.jeh = load i32, ptr %i.jeg, align 8
  %.not14054 = icmp eq i32 %i.jeh, 0
  br i1 %.not14054, label %._crit_edge.i.i4081, label %.lr.ph14021

.lr.ph14021:                                      ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit4080
  %i.jei = getelementptr inbounds nuw i8, ptr %i.ivc, i64 1048
  br label %bb.avc

._crit_edge.i.i4081:                              ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit4140, %_ZNSt6vectorIfSaIfEE5clearEv.exit4080
  %i.jej = load float, ptr %238, align 8
  %i.jek = getelementptr inbounds nuw i8, ptr %i.iyk, i64 8 ; 3 uses
  %i.jel = load i64, ptr %i.jek, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %251) #31
  store ptr %i.iif, ptr %251, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.iif, ptr noundef nonnull align 1 dereferenceable(3) @.str.364, i64 3, i1 false)
  store i64 3, ptr %i.iig, align 8
  store i8 0, ptr %i.iiu, align 1
  %i.jem = fpext float %i.jej to double
  invoke void @_ZN6Assimp11FBXExporter19WriteAnimationCurveERNS_12StreamWriterILb0ELb0EEEdRKSt6vectorIlSaIlEERKS4_IfSaIfEElRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(56) %43, double noundef %i.jem, ptr noundef nonnull align 8 dereferenceable(24) %240, ptr noundef nonnull align 8 dereferenceable(24) %241, i64 noundef %i.jel, ptr noundef nonnull align 8 dereferenceable(32) %251)
          to label %bb.avz unwind label %bb.awc

bb.auz:                                           ; preds = %._crit_edge.i.i4011
  %i.jen = landingpad { ptr, i32 }
          cleanup
  %i.jeo = load ptr, ptr %244, align 8            ; 2 uses
  %i.jep = icmp eq ptr %i.jeo, %i.ihq
  br i1 %i.jep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4087, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4085

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4085: ; preds = %bb.auz
  %i.jeq = load i64, ptr %i.ihq, align 8
  %i.jer = add i64 %i.jeq, 1
  call void @_ZdlPvm(ptr noundef %i.jeo, i64 noundef %i.jer) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4087

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4087: ; preds = %bb.auz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4085
  call void @llvm.lifetime.end.p0(ptr nonnull %244) #31
  br label %bb.axk

bb.ava:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4056
  %i.jes = landingpad { ptr, i32 }
          cleanup
  %i.jet = load ptr, ptr %245, align 8            ; 2 uses
  %i.jeu = icmp eq ptr %i.jet, %i.ihs
  br i1 %i.jeu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4090, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4088

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4088: ; preds = %bb.ava
  %i.jev = load i64, ptr %i.ihs, align 8
  %i.jew = add i64 %i.jev, 1
  call void @_ZdlPvm(ptr noundef %i.jet, i64 noundef %i.jew) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4090

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4090: ; preds = %bb.ava, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4088
  call void @llvm.lifetime.end.p0(ptr nonnull %245) #31
  br label %bb.axk

bb.avb:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4063
  %i.jex = landingpad { ptr, i32 }
          cleanup
  %i.jey = load ptr, ptr %246, align 8            ; 2 uses
  %i.jez = icmp eq ptr %i.jey, %i.ihu
  br i1 %i.jez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4093, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4091

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4091: ; preds = %bb.avb
  %i.jfa = load i64, ptr %i.ihu, align 8
  %i.jfb = add i64 %i.jfa, 1
  call void @_ZdlPvm(ptr noundef %i.jey, i64 noundef %i.jfb) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4093

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4093: ; preds = %bb.avb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4091
  call void @llvm.lifetime.end.p0(ptr nonnull %246) #31
  br label %bb.axk

bb.avc:                                           ; preds = %.lr.ph14021, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit4140
  %.061114020 = phi i64 [ 0, %.lr.ph14021 ], [ %i.jlj, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit4140 ] ; 2 uses
  %i.jfc = load ptr, ptr %i.jei, align 8
  %i.jfd = getelementptr inbounds nuw [32 x i8], ptr %i.jfc, i64 %.061114020 ; 5 uses
  %i.jfe = load double, ptr %i.jfd, align 8       ; 2 uses
  %i.jff = load double, ptr %i.iut, align 8       ; 2 uses
  %i.jfg = fcmp oeq double %i.jff, 0.000000e+00
  br i1 %i.jfg, label %_ZSt10fpclassifyd.exit.i4095, label %bb.avd

bb.avd:                                           ; preds = %bb.avc
  %i.jfh = fdiv double %i.jfe, %i.jff             ; 3 uses
  %i.jfi = fcmp ogt double %i.jfh, f0x41A7CE5B9F18D651
  br i1 %i.jfi, label %_Z8to_ktimedPK11aiAnimation.exit4096, label %bb.ave

_ZSt10fpclassifyd.exit.i4095:                     ; preds = %bb.avc
  %i.jfj = fmul double %i.jfe, f0x422581D1AF600000
  %i.jfk = fptosi double %i.jfj to i64
  br label %_Z8to_ktimedPK11aiAnimation.exit4096

bb.ave:                                           ; preds = %bb.avd
  %i.jfl = fcmp olt double %i.jfh, f0xC1A7CE5B9F18D651
  br i1 %i.jfl, label %_Z8to_ktimedPK11aiAnimation.exit4096, label %bb.avf

bb.avf:                                           ; preds = %bb.ave
  %i.jfm = fmul double %i.jfh, f0x422581D1AF600000
  %i.jfn = fptosi double %i.jfm to i64
  br label %_Z8to_ktimedPK11aiAnimation.exit4096

_Z8to_ktimedPK11aiAnimation.exit4096:             ; preds = %bb.avf, %bb.ave, %_ZSt10fpclassifyd.exit.i4095, %bb.avd
  %.1.i4094 = phi i64 [ %i.jfk, %_ZSt10fpclassifyd.exit.i4095 ], [ %i.jfn, %bb.avf ], [ 9223372036854775807, %bb.avd ], [ -9223372036854775808, %bb.ave ] ; 2 uses
  %i.jfo = load ptr, ptr %i.ihi, align 8          ; 3 uses
  %i.jfp = load ptr, ptr %i.ihj, align 8
  %.not.i.i4097 = icmp eq ptr %i.jfo, %i.jfp
  br i1 %.not.i.i4097, label %bb.avh, label %bb.avg

bb.avg:                                           ; preds = %_Z8to_ktimedPK11aiAnimation.exit4096
  store i64 %.1.i4094, ptr %i.jfo, align 8
  %i.jfq = load ptr, ptr %i.ihi, align 8
  %i.jfr = getelementptr inbounds nuw i8, ptr %i.jfq, i64 8
  store ptr %i.jfr, ptr %i.ihi, align 8
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit4106

bb.avh:                                           ; preds = %_Z8to_ktimedPK11aiAnimation.exit4096
  %i.jfs = load ptr, ptr %240, align 8            ; 4 uses
  %i.jft = ptrtoint ptr %i.jfo to i64
  %i.jfu = ptrtoint ptr %i.jfs to i64             ; 2 uses
  %i.jfv = sub i64 %i.jft, %i.jfu                 ; 5 uses
  %i.jfw = icmp eq i64 %i.jfv, 9223372036854775800
  br i1 %i.jfw, label %bb.avi, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i4098

bb.avi:                                           ; preds = %bb.avh
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.401) #30
          to label %.noexc4104 unwind label %.loopexit.split-lp5861

.noexc4104:                                       ; preds = %bb.avi
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i4098: ; preds = %bb.avh
  %i.jfx = ashr exact i64 %i.jfv, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i4099 = call i64 @llvm.umax.i64(i64 %i.jfx, i64 1)
  %i.jfy = add nsw i64 %.sroa.speculated.i.i.i.i4099, %i.jfx ; 2 uses
  %i.jfz = icmp ult i64 %i.jfy, %i.jfx
  %i.jga = call i64 @llvm.umin.i64(i64 %i.jfy, i64 1152921504606846975)
  %i.jgb = select i1 %i.jfz, i64 1152921504606846975, i64 %i.jga ; 3 uses
  %.not.i.i.i.i4100 = icmp ne i64 %i.jgb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i4100)
  %i.jgc = shl nuw nsw i64 %i.jgb, 3
  %i.jgd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jgc) #34
          to label %.noexc4105 unwind label %.loopexit5860 ; 4 uses

.noexc4105:                                       ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i4098
  %i.jge = getelementptr inbounds i8, ptr %i.jgd, i64 %i.jfv ; 2 uses
  store i64 %.1.i4094, ptr %i.jge, align 8
  %i.jgf = icmp sgt i64 %i.jfv, 0
  br i1 %i.jgf, label %bb.avj, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i4101

bb.avj:                                           ; preds = %.noexc4105
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jgd, ptr align 8 %i.jfs, i64 %i.jfv, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i4101

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i4101: ; preds = %bb.avj, %.noexc4105
  %i.jgg = getelementptr inbounds nuw i8, ptr %i.jge, i64 8
  %.not.i17.i.i.i4102 = icmp eq ptr %i.jfs, null
  br i1 %.not.i17.i.i.i4102, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i4103, label %bb.avk

bb.avk:                                           ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i4101
  %i.jgh = load ptr, ptr %i.ihj, align 8
  %i.jgi = ptrtoint ptr %i.jgh to i64
  %i.jgj = sub i64 %i.jgi, %i.jfu
  call void @_ZdlPvm(ptr noundef nonnull %i.jfs, i64 noundef %i.jgj) #32
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i4103

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i4103: ; preds = %bb.avk, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i4101
  store ptr %i.jgd, ptr %240, align 8
  store ptr %i.jgg, ptr %i.ihi, align 8
  %i.jgk = getelementptr inbounds nuw [8 x i8], ptr %i.jgd, i64 %i.jgb
  store ptr %i.jgk, ptr %i.ihj, align 8
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit4106

_ZNSt6vectorIlSaIlEE9push_backEOl.exit4106:       ; preds = %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i4103, %bb.avg
  call void @llvm.lifetime.start.p0(ptr nonnull %247) #31
  %i.jgl = getelementptr inbounds nuw i8, ptr %i.jfd, i64 8
  %i.jgm = getelementptr inbounds nuw i8, ptr %i.jfd, i64 16
  %i.jgn = getelementptr inbounds nuw i8, ptr %i.jfd, i64 20
  %i.jgo = getelementptr inbounds nuw i8, ptr %i.jfd, i64 12
  %i.jgp = load float, ptr %i.jgl, align 8, !noalias !346 ; 4 uses
  %i.jgq = fneg float %i.jgp                      ; 3 uses
  %i.jgr = load <2 x float>, ptr %i.jgo, align 4, !noalias !346 ; 5 uses
  %i.jgs = shufflevector <2 x float> %i.jgr, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison> ; 2 uses
  %i.jgt = shufflevector <4 x float> <float -2.000000e+00, float poison, float poison, float 0.000000e+00>, <4 x float> %i.jgs, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.jgu = shufflevector <2 x float> %i.jgr, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.jgv = insertelement <4 x float> %i.jgu, float -0.000000e+00, i64 3
  %i.jgw = load <2 x float>, ptr %i.jgm, align 8, !noalias !346 ; 7 uses
  %i.jgx = load float, ptr %i.jgn, align 4, !noalias !346 ; 4 uses
  %i.jgy = fmul float %i.jgx, %i.jgx              ; 2 uses
  %i.jgz = fmul float %i.jgx, %i.jgp
  %i.jha = extractelement <2 x float> %i.jgw, i64 0 ; 2 uses
  %i.jhb = call float @llvm.fmuladd.f32(float %i.jha, float %i.jha, float %i.jgy)
  %i.jhc = insertelement <2 x float> poison, float %i.jgx, i64 0 ; 2 uses
  %i.jhd = insertelement <2 x float> %i.jhc, float %i.jgp, i64 1
  %i.jhe = shufflevector <2 x float> %i.jgw, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.jhf = insertelement <2 x float> %i.jhe, float %i.jgq, i64 0
  %i.jhg = fmul <2 x float> %i.jhd, %i.jhf
  %i.jhh = insertelement <4 x float> %i.jgv, float %i.jhb, i64 0
  %i.jhi = shufflevector <2 x float> %i.jgw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison> ; 3 uses
  %i.jhj = shufflevector <4 x float> %i.jhh, <4 x float> %i.jhi, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.jhk = shufflevector <2 x float> %i.jhg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.jhl = shufflevector <4 x float> <float 1.000000e+00, float poison, float poison, float 1.000000e+00>, <4 x float> %i.jhk, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.jhm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jgt, <4 x float> %i.jhj, <4 x float> %i.jhl)
  %i.jhn = fmul <4 x float> %i.jhm, <float 1.000000e+00, float 2.000000e+00, float 2.000000e+00, float 0.000000e+00>
  %257 = extractelement <2 x float> %i.jgr, i64 0 ; 5 uses
  %i.jho = call float @llvm.fmuladd.f32(float %257, float %257, float %i.jgy)
  %258 = fmul float %257, %i.jgq
  %i.jhp = insertelement <4 x float> %i.jgs, float 0.000000e+00, i64 3
  %i.jhq = insertelement <4 x float> %i.jhp, float %i.jho, i64 1
  %i.jhr = shufflevector <4 x float> %i.jhq, <4 x float> %i.jhi, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.jhs = shufflevector <4 x float> %i.jhi, <4 x float> <float poison, float -2.000000e+00, float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.jht = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float 1.000000e+00>, float %i.jgz, i64 0
  %i.jhu = insertelement <4 x float> %i.jht, float %258, i64 2
  %i.jhv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jhr, <4 x float> %i.jhs, <4 x float> %i.jhu)
  %i.jhw = fmul <4 x float> %i.jhv, <float 2.000000e+00, float 1.000000e+00, float 2.000000e+00, float 0.000000e+00>
  %foldExtExtBinop = fmul <2 x float> %i.jgw, %i.jgw
  %i.jhx = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.jhy = call float @llvm.fmuladd.f32(float %257, float %257, float %i.jhx)
  %i.jhz = call float @llvm.fmuladd.f32(float %i.jhy, float -2.000000e+00, float 1.000000e+00)
  store <4 x float> %i.jhn, ptr %247, align 16
  store <4 x float> %i.jhw, ptr %i.ihw, align 16
  %i.jia = shufflevector <2 x float> %i.jgw, <2 x float> %i.jgr, <2 x i32> <i32 0, i32 2>
  %i.jib = insertelement <2 x float> poison, float %i.jgq, i64 0
  %i.jic = insertelement <2 x float> %i.jib, float %i.jgp, i64 1
  %i.jid = fmul <2 x float> %i.jia, %i.jic
  %i.jie = shufflevector <2 x float> %i.jgr, <2 x float> %i.jgw, <2 x i32> <i32 0, i32 2>
  %i.jif = shufflevector <2 x float> %i.jhc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jig = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jie, <2 x float> %i.jif, <2 x float> %i.jid)
  %i.jih = fmul <2 x float> %i.jig, splat (float 2.000000e+00)
  store <2 x float> %i.jih, ptr %i.ihx, align 16
  store float %i.jhz, ptr %i.ihy, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ihz, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.iia, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %248) #31
  store <2 x float> zeroinitializer, ptr %248, align 8
  store float 0.000000e+00, ptr %i.iib, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %249) #31
  store <2 x float> zeroinitializer, ptr %249, align 8
  store float 0.000000e+00, ptr %i.iid, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %250) #31
  store <2 x float> zeroinitializer, ptr %250, align 8
  store float 0.000000e+00, ptr %i.iie, align 8
  invoke void @_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfES3_S3_(ptr noundef nonnull align 4 dereferenceable(64) %247, ptr noundef nonnull align 4 dereferenceable(12) %248, ptr noundef nonnull align 4 dereferenceable(12) %249, ptr noundef nonnull align 4 dereferenceable(12) %250)
          to label %bb.avl unwind label %.loopexit5865

bb.avl:                                           ; preds = %_ZNSt6vectorIlSaIlEE9push_backEOl.exit4106
  %i.jii = load <2 x float>, ptr %249, align 8
  %i.jij = fmul <2 x float> %i.jii, splat (float f0x42652EE1) ; 2 uses
  %i.jik = load float, ptr %i.iid, align 8
  %i.jil = fmul float %i.jik, f0x42652EE1
  store <2 x float> %i.jij, ptr %249, align 8
  store float %i.jil, ptr %i.iid, align 8
  %i.jim = load ptr, ptr %i.ihk, align 8          ; 3 uses
  %i.jin = load ptr, ptr %i.ihl, align 8
  %.not.i4111 = icmp eq ptr %i.jim, %i.jin
  br i1 %.not.i4111, label %bb.avn, label %bb.avm

bb.avm:                                           ; preds = %bb.avl
  %i.jio = extractelement <2 x float> %i.jij, i64 0
  store float %i.jio, ptr %i.jim, align 4
  %i.jip = load ptr, ptr %i.ihk, align 8
  %i.jiq = getelementptr inbounds nuw i8, ptr %i.jip, i64 4
  store ptr %i.jiq, ptr %i.ihk, align 8
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit4120

bb.avn:                                           ; preds = %bb.avl
  %i.jir = load ptr, ptr %241, align 8            ; 4 uses
  %i.jis = ptrtoint ptr %i.jim to i64
  %i.jit = ptrtoint ptr %i.jir to i64             ; 2 uses
  %i.jiu = sub i64 %i.jis, %i.jit                 ; 5 uses
  %i.jiv = icmp eq i64 %i.jiu, 9223372036854775804
  br i1 %i.jiv, label %.invoke17979, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i4112

.invoke17979:                                     ; preds = %bb.avv, %bb.avr, %bb.avn
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.401) #30
          to label %.cont17980 unwind label %.loopexit.split-lp5866

.cont17980:                                       ; preds = %.invoke17979
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i4112: ; preds = %bb.avn
  %i.jiw = ashr exact i64 %i.jiu, 2               ; 3 uses
  %.sroa.speculated.i.i.i4113 = call i64 @llvm.umax.i64(i64 %i.jiw, i64 1)
  %i.jix = add nsw i64 %.sroa.speculated.i.i.i4113, %i.jiw ; 2 uses
  %i.jiy = icmp ult i64 %i.jix, %i.jiw
  %i.jiz = call i64 @llvm.umin.i64(i64 %i.jix, i64 2305843009213693951)
  %i.jja = select i1 %i.jiy, i64 2305843009213693951, i64 %i.jiz ; 3 uses
  %.not.i.i.i4114 = icmp ne i64 %i.jja, 0
  call void @llvm.assume(i1 %.not.i.i.i4114)
  %i.jjb = shl nuw nsw i64 %i.jja, 2
  %i.jjc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jjb) #34
          to label %.noexc4119 unwind label %.loopexit5865 ; 4 uses

.noexc4119:                                       ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i4112
  %i.jjd = getelementptr inbounds i8, ptr %i.jjc, i64 %i.jiu ; 2 uses
  %i.jje = load float, ptr %249, align 8
  store float %i.jje, ptr %i.jjd, align 4
  %i.jjf = icmp sgt i64 %i.jiu, 0
  br i1 %i.jjf, label %bb.avo, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4115

bb.avo:                                           ; preds = %.noexc4119
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.jjc, ptr align 4 %i.jir, i64 %i.jiu, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4115

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4115: ; preds = %bb.avo, %.noexc4119
  %i.jjg = getelementptr inbounds nuw i8, ptr %i.jjd, i64 4
  %.not.i17.i.i4116 = icmp eq ptr %i.jir, null
  br i1 %.not.i17.i.i4116, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i4117, label %bb.avp

bb.avp:                                           ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4115
  %i.jjh = load ptr, ptr %i.ihl, align 8
  %i.jji = ptrtoint ptr %i.jjh to i64
  %i.jjj = sub i64 %i.jji, %i.jit
  call void @_ZdlPvm(ptr noundef nonnull %i.jir, i64 noundef %i.jjj) #32
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i4117

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i4117: ; preds = %bb.avp, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4115
  store ptr %i.jjc, ptr %241, align 8
  store ptr %i.jjg, ptr %i.ihk, align 8
  %i.jjk = getelementptr inbounds nuw [4 x i8], ptr %i.jjc, i64 %i.jja
  store ptr %i.jjk, ptr %i.ihl, align 8
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit4120

_ZNSt6vectorIfSaIfEE9push_backERKf.exit4120:      ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i4117, %bb.avm
  %i.jjl = load ptr, ptr %i.ihm, align 8          ; 3 uses
  %i.jjm = load ptr, ptr %i.ihn, align 8
  %.not.i4121 = icmp eq ptr %i.jjl, %i.jjm
  br i1 %.not.i4121, label %bb.avr, label %bb.avq

bb.avq:                                           ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit4120
  %i.jjn = load float, ptr %i.iic, align 4
  store float %i.jjn, ptr %i.jjl, align 4
  %i.jjo = load ptr, ptr %i.ihm, align 8
  %i.jjp = getelementptr inbounds nuw i8, ptr %i.jjo, i64 4
  store ptr %i.jjp, ptr %i.ihm, align 8
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit4130

bb.avr:                                           ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit4120
  %i.jjq = load ptr, ptr %242, align 8            ; 4 uses
  %i.jjr = ptrtoint ptr %i.jjl to i64
  %i.jjs = ptrtoint ptr %i.jjq to i64             ; 2 uses
  %i.jjt = sub i64 %i.jjr, %i.jjs                 ; 5 uses
  %i.jju = icmp eq i64 %i.jjt, 9223372036854775804
  br i1 %i.jju, label %.invoke17979, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i4122

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i4122: ; preds = %bb.avr
  %i.jjv = ashr exact i64 %i.jjt, 2               ; 3 uses
  %.sroa.speculated.i.i.i4123 = call i64 @llvm.umax.i64(i64 %i.jjv, i64 1)
  %i.jjw = add nsw i64 %.sroa.speculated.i.i.i4123, %i.jjv ; 2 uses
  %i.jjx = icmp ult i64 %i.jjw, %i.jjv
  %i.jjy = call i64 @llvm.umin.i64(i64 %i.jjw, i64 2305843009213693951)
  %i.jjz = select i1 %i.jjx, i64 2305843009213693951, i64 %i.jjy ; 3 uses
  %.not.i.i.i4124 = icmp ne i64 %i.jjz, 0
  call void @llvm.assume(i1 %.not.i.i.i4124)
  %i.jka = shl nuw nsw i64 %i.jjz, 2
  %i.jkb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jka) #34
          to label %.noexc4129 unwind label %.loopexit5865 ; 4 uses

.noexc4129:                                       ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i4122
  %i.jkc = getelementptr inbounds i8, ptr %i.jkb, i64 %i.jjt ; 2 uses
  %i.jkd = load float, ptr %i.iic, align 4
  store float %i.jkd, ptr %i.jkc, align 4
  %i.jke = icmp sgt i64 %i.jjt, 0
  br i1 %i.jke, label %bb.avs, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4125

bb.avs:                                           ; preds = %.noexc4129
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.jkb, ptr align 4 %i.jjq, i64 %i.jjt, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4125

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4125: ; preds = %bb.avs, %.noexc4129
  %i.jkf = getelementptr inbounds nuw i8, ptr %i.jkc, i64 4
  %.not.i17.i.i4126 = icmp eq ptr %i.jjq, null
  br i1 %.not.i17.i.i4126, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i4127, label %bb.avt

bb.avt:                                           ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4125
  %i.jkg = load ptr, ptr %i.ihn, align 8
  %i.jkh = ptrtoint ptr %i.jkg to i64
  %i.jki = sub i64 %i.jkh, %i.jjs
  call void @_ZdlPvm(ptr noundef nonnull %i.jjq, i64 noundef %i.jki) #32
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i4127

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i4127: ; preds = %bb.avt, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i4125
  store ptr %i.jkb, ptr %242, align 8
  store ptr %i.jkf, ptr %i.ihm, align 8
  %i.jkj = getelementptr inbounds nuw [4 x i8], ptr %i.jkb, i64 %i.jjz
  store ptr %i.jkj, ptr %i.ihn, align 8
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit4130

_ZNSt6vectorIfSaIfEE9push_backERKf.exit4130:      ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i4127, %bb.avq
  %i.jkk = load ptr, ptr %i.iho, align 8          ; 3 uses
  %i.jkl = load ptr, ptr %i.ihp, align 8
  %.not.i4131 = icmp eq ptr %i.jkk, %i.jkl
  br i1 %.not.i4131, label %bb.avv, label %bb.avu

bb.avu:                                           ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit4130
  %i.jkm = load float, ptr %i.iid, align 8
  store float %i.jkm, ptr %i.jkk, align 4
  %i.jkn = load ptr, ptr %i.iho, align 8
  %i.jko = getelementptr inbounds nuw i8, ptr %i.jkn, i64 4
  store ptr %i.jko, ptr %i.iho, align 8
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit4140

bb.avv:                                           ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit4130
  %i.jkp = load ptr, ptr %243, align 8            ; 4 uses
  %i.jkq = ptrtoint ptr %i.jkk to i64
  %i.jkr = ptrtoint ptr %i.jkp to i64             ; 2 uses
  %i.jks = sub i64 %i.jkq, %i.jkr                 ; 5 uses
end_hunk_0

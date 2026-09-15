Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/ColladaParser?download=true
inline.NumInlined: 6573
inline.NumDeleted: 2480
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN6Assimp7Collada12MeshInstanceD2Ev:bb.a
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6Assimp7Collada20SemanticMappingTableEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6Assimp7Collada20SemanticMappingTableESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #33
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6Assimp7Collada20SemanticMappingTableESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit: ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6Assimp7Collada20SemanticMappingTableESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit
  %i.i = load i64, ptr %i.g, align 8
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6Assimp7Collada20SemanticMappingTableESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJRA43_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA38_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(43) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(38) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  invoke void @_ZN15DeadlyErrorBaseC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA38_KcERA43_S7_EEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(43) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(38) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %4, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %4, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #30
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #28
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #28
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #28
  resume { ptr, i32 } %i.o
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define hidden void @_ZNK6Assimp13ColladaParser24CalculateResultTransformERKSt6vectorINS_7Collada9TransformESaIS3_EE(ptr dead_on_unwind noalias nofree writable writeonly sret(%class.aiMatrix4x4t) align 4 captures(none) initializes((0, 64)) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(772) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #17 align 2 {
bb.a:
  store float 1.000000e+00, ptr %0, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.f, align 4
  %i.g = load ptr, ptr %2, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not158 = icmp eq ptr %i.g, %i.i
  br i1 %.not158, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.promoted = load <4 x float>, ptr %0, align 1
  %.promoted209 = load <4 x float>, ptr %i.j, align 1
  %.promoted211 = load <4 x float>, ptr %i.k, align 1
  %.promoted213 = load float, ptr %i.l, align 1
  %.promoted215 = load float, ptr %i.m, align 1
  %.promoted217 = load float, ptr %i.n, align 1
  %.promoted219 = load float, ptr %i.f, align 1
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.h
  store <4 x float> %i.lw, ptr %0, align 1
  store <4 x float> %i.lv, ptr %i.j, align 1
  store <4 x float> %i.lu, ptr %i.k, align 1
  store float %i.lt, ptr %i.l, align 1
  store float %i.ls, ptr %i.m, align 1
  store float %i.lr, ptr %i.n, align 1
  store float %i.lq, ptr %i.f, align 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %i.o = phi float [ %.promoted219, %.lr.ph ], [ %i.lq, %bb.h ]
  %i.p = phi float [ %.promoted217, %.lr.ph ], [ %i.lr, %bb.h ]
  %i.q = phi float [ %.promoted215, %.lr.ph ], [ %i.ls, %bb.h ]
  %i.r = phi float [ %.promoted213, %.lr.ph ], [ %i.lt, %bb.h ]
  %i.s = phi <4 x float> [ %.promoted211, %.lr.ph ], [ %i.lu, %bb.h ]
  %i.t = phi <4 x float> [ %.promoted209, %.lr.ph ], [ %i.lv, %bb.h ]
  %i.u = phi <4 x float> [ %.promoted, %.lr.ph ], [ %i.lw, %bb.h ]
  %.sroa.0149.0159 = phi ptr [ %i.g, %.lr.ph ], [ %i.mb, %bb.h ] ; 33 uses
  %i.v = phi <4 x float> [ <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, %.lr.ph ], [ %i.lx, %bb.h ] ; 21 uses
  %i.w = phi <4 x float> [ <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %.lr.ph ], [ %i.ly, %bb.h ] ; 21 uses
  %i.x = phi <4 x float> [ <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, %.lr.ph ], [ %i.lz, %bb.h ] ; 20 uses
  %i.y = phi <4 x float> [ <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, %.lr.ph ], [ %i.ma, %bb.h ] ; 18 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 32
  %i.aa = load i32, ptr %i.z, align 8
  switch i32 %i.aa, label %bb.h [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 5, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 36
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 44
  %i.ad = load float, ptr %i.ac, align 4          ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 48
  %i.af = load <2 x float>, ptr %i.ab, align 4    ; 3 uses
  %i.ag = load <2 x float>, ptr %i.ae, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 56
  %i.ai = load float, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 60
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 64
  %i.al = load float, ptr %i.aj, align 4          ; 3 uses
  %i.am = load <2 x float>, ptr %i.ak, align 8    ; 6 uses
  %foldExtExtBinop = fmul <2 x float> %i.am, %i.am
  %i.an = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.al, float %i.al, float %i.an)
  %i.ap = extractelement <2 x float> %i.am, i64 1 ; 2 uses
  %i.aq = tail call noundef float @llvm.fmuladd.f32(float %i.ap, float %i.ap, float %i.ao) ; 2 uses
  %i.ar = fcmp oeq float %i.aq, 0.000000e+00
  %i.as = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.at = insertelement <2 x float> %i.as, float %i.al, i64 1 ; 2 uses
  br i1 %i.ar, label %_ZN10aiVector3tIfE9NormalizeEv.exit, label %_ZN10aiVector3tIfEdVEf.exit.i

_ZN10aiVector3tIfEdVEf.exit.i:                    ; preds = %bb.c
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.aq)
  %i.au = fdiv float 1.000000e+00, %sqrt.i.i
  %i.av = insertelement <2 x float> poison, float %i.au, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ax = fmul <2 x float> %i.at, %i.aw
  %i.ay = fmul <2 x float> %i.am, %i.aw
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit

_ZN10aiVector3tIfE9NormalizeEv.exit:              ; preds = %bb.c, %_ZN10aiVector3tIfEdVEf.exit.i
  %i.az = phi <2 x float> [ %i.at, %bb.c ], [ %i.ax, %_ZN10aiVector3tIfEdVEf.exit.i ] ; 4 uses
  %i.ba = phi <2 x float> [ %i.am, %bb.c ], [ %i.ay, %_ZN10aiVector3tIfEdVEf.exit.i ] ; 3 uses
  %i.bb = fsub <2 x float> %i.ag, %i.af           ; 5 uses
  %i.bc = fsub float %i.ai, %i.ad                 ; 4 uses
  %foldExtExtBinop205 = fmul <2 x float> %i.bb, %i.bb
  %i.bd = extractelement <2 x float> %foldExtExtBinop205, i64 1
  %i.be = extractelement <2 x float> %i.bb, i64 0 ; 2 uses
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.be, float %i.be, float %i.bd)
  %i.bg = tail call noundef float @llvm.fmuladd.f32(float %i.bc, float %i.bc, float %i.bf) ; 2 uses
  %i.bh = fcmp oeq float %i.bg, 0.000000e+00
  br i1 %i.bh, label %_ZN10aiVector3tIfE9NormalizeEv.exit46, label %_ZN10aiVector3tIfEdVEf.exit.i44

_ZN10aiVector3tIfEdVEf.exit.i44:                  ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit
  %sqrt.i.i45 = tail call noundef float @llvm.sqrt.f32(float %i.bg)
  %i.bi = fdiv float 1.000000e+00, %sqrt.i.i45    ; 2 uses
  %i.bj = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bk = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bl = fmul <2 x float> %i.bb, %i.bk
  %i.bm = fmul float %i.bc, %i.bi
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit46

_ZN10aiVector3tIfE9NormalizeEv.exit46:            ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit, %_ZN10aiVector3tIfEdVEf.exit.i44
  %.sroa.0120.0 = phi <2 x float> [ %i.bb, %_ZN10aiVector3tIfE9NormalizeEv.exit ], [ %i.bl, %_ZN10aiVector3tIfEdVEf.exit.i44 ] ; 3 uses
  %.sroa.8123.0 = phi float [ %i.bc, %_ZN10aiVector3tIfE9NormalizeEv.exit ], [ %i.bm, %_ZN10aiVector3tIfEdVEf.exit.i44 ] ; 3 uses
  %.sroa.0124.4.vec.extract128 = extractelement <2 x float> %.sroa.0120.0, i64 1 ; 2 uses
  %i.bn = fneg <2 x float> %i.ba
  %.sroa.0124.0.vec.extract126 = extractelement <2 x float> %.sroa.0120.0, i64 0 ; 2 uses
  %i.bo = shufflevector <2 x float> %.sroa.0120.0, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bp = insertelement <2 x float> %i.bo, float %.sroa.8123.0, i64 0
  %i.bq = fmul <2 x float> %i.bp, %i.bn
  %i.br = insertelement <2 x float> %i.bo, float %.sroa.8123.0, i64 1
  %i.bs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.br, <2 x float> %i.az, <2 x float> %i.bq) ; 5 uses
  %i.bt = extractelement <2 x float> %i.az, i64 1
  %i.bu = fneg float %i.bt
  %i.bv = fmul float %.sroa.0124.4.vec.extract128, %i.bu
  %i.bw = extractelement <2 x float> %i.ba, i64 0
  %i.bx = tail call float @llvm.fmuladd.f32(float %.sroa.0124.0.vec.extract126, float %i.bw, float %i.bv) ; 4 uses
  %foldExtExtBinop207 = fmul <2 x float> %i.bs, %i.bs
  %i.by = extractelement <2 x float> %foldExtExtBinop207, i64 1
  %i.bz = extractelement <2 x float> %i.bs, i64 0 ; 2 uses
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.bz, float %i.by)
  %i.cb = tail call noundef float @llvm.fmuladd.f32(float %i.bx, float %i.bx, float %i.ca) ; 2 uses
  %i.cc = fcmp oeq float %i.cb, 0.000000e+00
  br i1 %i.cc, label %_ZN10aiVector3tIfE9NormalizeEv.exit53, label %_ZN10aiVector3tIfEdVEf.exit.i51

_ZN10aiVector3tIfEdVEf.exit.i51:                  ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit46
  %sqrt.i.i52 = tail call noundef float @llvm.sqrt.f32(float %i.cb)
  %i.cd = fdiv float 1.000000e+00, %sqrt.i.i52    ; 2 uses
  %i.ce = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cg = fmul <2 x float> %i.bs, %i.cf
  %i.ch = fmul float %i.bx, %i.cd
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit53

_ZN10aiVector3tIfE9NormalizeEv.exit53:            ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit46, %_ZN10aiVector3tIfEdVEf.exit.i51
  %.sroa.0112.0 = phi <2 x float> [ %i.bs, %_ZN10aiVector3tIfE9NormalizeEv.exit46 ], [ %i.cg, %_ZN10aiVector3tIfEdVEf.exit.i51 ] ; 2 uses
  %.sroa.9119.0 = phi float [ %i.bx, %_ZN10aiVector3tIfE9NormalizeEv.exit46 ], [ %i.ch, %_ZN10aiVector3tIfEdVEf.exit.i51 ]
  %3 = fneg float %.sroa.0124.0.vec.extract126
  %4 = fneg float %.sroa.0124.4.vec.extract128
  %5 = fneg float %.sroa.8123.0
  %i.ci = shufflevector <2 x float> %i.ba, <2 x float> poison, <4 x i32> zeroinitializer
  %i.cj = fmul <4 x float> %i.ci, %i.y
  %i.ck = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.cl = fmul <4 x float> %i.ck, %i.y
  %i.cm = shufflevector <2 x float> %.sroa.0112.0, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.cn = fmul <4 x float> %i.cm, %i.y
  %i.co = shufflevector <2 x float> %.sroa.0112.0, <2 x float> poison, <4 x i32> zeroinitializer
  %i.cp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.co, <4 x float> %i.x, <4 x float> %i.cn)
  %i.cq = insertelement <4 x float> poison, float %.sroa.9119.0, i64 0
  %i.cr = shufflevector <4 x float> %i.cq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cr, <4 x float> %i.w, <4 x float> %i.cp)
  %i.ct = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.v, <4 x float> zeroinitializer, <4 x float> %i.cs)
  %i.cu = shufflevector <2 x float> %i.az, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.cv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cu, <4 x float> %i.x, <4 x float> %i.cj)
  %i.cw = shufflevector <2 x float> %i.az, <2 x float> poison, <4 x i32> zeroinitializer
  %i.cx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cw, <4 x float> %i.w, <4 x float> %i.cv)
  %i.cy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.v, <4 x float> zeroinitializer, <4 x float> %i.cx)
  %6 = insertelement <4 x float> poison, float %4, i64 0
  %7 = shufflevector <4 x float> %6, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cz = fmul <4 x float> %i.y, %7
  %8 = insertelement <4 x float> poison, float %3, i64 0
  %i.da = shufflevector <4 x float> %8, <4 x float> poison, <4 x i32> zeroinitializer
  %i.db = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.da, <4 x float> %i.x, <4 x float> %i.cz)
  %9 = insertelement <4 x float> poison, float %5, i64 0
  %10 = shufflevector <4 x float> %9, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %10, <4 x float> %i.w, <4 x float> %i.db)
  %i.dd = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> zeroinitializer
  %i.de = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dd, <4 x float> %i.x, <4 x float> %i.cl)
  %i.df = insertelement <4 x float> poison, float %i.ad, i64 0
  %i.dg = shufflevector <4 x float> %i.df, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dg, <4 x float> %i.w, <4 x float> %i.de)
  %i.di = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.v, <4 x float> zeroinitializer, <4 x float> %i.dc)
  %i.dj = fadd <4 x float> %i.v, %i.dh
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 36
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 48
  %i.dm = load float, ptr %i.dl, align 8
  %i.dn = fmul float %i.dm, f0x40490FDB
  %i.do = fdiv float %i.dn, 1.800000e+02          ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 40
  %i.dq = fmul <4 x float> %i.y, zeroinitializer
  %i.dr = load float, ptr %i.dp, align 8          ; 3 uses
  %i.ds = load <3 x float>, ptr %i.dk, align 4    ; 6 uses
  %i.dt = tail call noundef float @cosf(float noundef %i.do) #28 ; 4 uses
  %i.du = tail call noundef float @sinf(float noundef %i.do) #28 ; 3 uses
  %i.dv = fsub float 1.000000e+00, %i.dt
  %i.dw = insertelement <3 x float> poison, float %i.dv, i64 0
  %i.dx = shufflevector <3 x float> %i.dw, <3 x float> poison, <3 x i32> zeroinitializer
  %i.dy = fmul <3 x float> %i.ds, %i.dx           ; 3 uses
  %i.dz = extractelement <3 x float> %i.ds, i64 0
  %i.ea = extractelement <3 x float> %i.ds, i64 2
  %i.eb = fmul float %i.ea, %i.du                 ; 2 uses
  %i.ec = fneg float %i.eb
  %i.ed = fmul float %i.dr, %i.du                 ; 2 uses
  %i.ee = fmul float %i.dz, %i.du                 ; 2 uses
  %i.ef = fneg float %i.ee
  %i.eg = fneg float %i.ed
  %i.eh = shufflevector <3 x float> %i.ds, <3 x float> poison, <3 x i32> <i32 2, i32 2, i32 2>
  %i.ei = insertelement <3 x float> poison, float %i.ed, i64 0
  %i.ej = insertelement <3 x float> %i.ei, float %i.ef, i64 1
  %i.ek = insertelement <3 x float> %i.ej, float %i.dt, i64 2
  %i.el = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.dy, <3 x float> %i.eh, <3 x float> %i.ek) ; 3 uses
  %i.em = shufflevector <3 x float> %i.el, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.en = fmul <4 x float> %i.y, %i.em
  %i.eo = shufflevector <3 x float> %i.el, <3 x float> poison, <4 x i32> zeroinitializer
  %i.ep = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eo, <4 x float> %i.x, <4 x float> %i.en)
  %i.eq = shufflevector <3 x float> %i.el, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.er = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eq, <4 x float> %i.w, <4 x float> %i.ep)
  %i.es = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.x, <4 x float> zeroinitializer, <4 x float> %i.dq)
  %i.et = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.w, <4 x float> zeroinitializer, <4 x float> %i.es)
  %i.eu = shufflevector <3 x float> %i.dy, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ev = shufflevector <3 x float> %i.ds, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 poison>
  %i.ew = insertelement <3 x float> %i.ev, float %i.dr, i64 2
  %i.ex = insertelement <3 x float> poison, float %i.eg, i64 0
  %i.ey = insertelement <3 x float> %i.ex, float %i.dt, i64 1
  %i.ez = insertelement <3 x float> %i.ey, float %i.eb, i64 2
  %i.fa = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.eu, <3 x float> %i.ew, <3 x float> %i.ez) ; 3 uses
  %i.fb = shufflevector <3 x float> %i.fa, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fc = fmul <4 x float> %i.fb, %i.y
  %i.fd = shufflevector <3 x float> %i.fa, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fe = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fd, <4 x float> %i.x, <4 x float> %i.fc)
  %i.ff = shufflevector <3 x float> %i.fa, <3 x float> poison, <4 x i32> zeroinitializer
  %i.fg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ff, <4 x float> %i.w, <4 x float> %i.fe)
  %i.fh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.v, <4 x float> zeroinitializer, <4 x float> %i.fg)
  %i.fi = shufflevector <3 x float> %i.dy, <3 x float> poison, <3 x i32> <i32 0, i32 1, i32 1>
  %i.fj = insertelement <3 x float> poison, float %i.dr, i64 0
  %i.fk = shufflevector <3 x float> %i.fj, <3 x float> %i.ds, <3 x i32> <i32 0, i32 0, i32 5>
  %i.fl = insertelement <3 x float> poison, float %i.ec, i64 0
  %i.fm = insertelement <3 x float> %i.fl, float %i.dt, i64 1
  %i.fn = insertelement <3 x float> %i.fm, float %i.ee, i64 2
  %i.fo = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.fi, <3 x float> %i.fk, <3 x float> %i.fn) ; 3 uses
  %i.fp = shufflevector <3 x float> %i.fo, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fq = fmul <4 x float> %i.y, %i.fp
  %i.fr = shufflevector <3 x float> %i.fo, <3 x float> poison, <4 x i32> zeroinitializer
  %i.fs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fr, <4 x float> %i.x, <4 x float> %i.fq)
  %i.ft = shufflevector <3 x float> %i.fo, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ft, <4 x float> %i.w, <4 x float> %i.fs)
  %i.fv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.v, <4 x float> zeroinitializer, <4 x float> %i.fu)
  %i.fw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.v, <4 x float> zeroinitializer, <4 x float> %i.er)
  %i.fx = fadd <4 x float> %i.v, %i.et
  br label %.sink.split

bb.e:                                             ; preds = %bb.b
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 36
  %i.fz = load float, ptr %i.fy, align 4
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 40
  %i.gb = load float, ptr %i.ga, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 44
  %i.gd = load float, ptr %i.gc, align 4
  %i.ge = fmul <4 x float> %i.y, zeroinitializer  ; 2 uses
  %i.gf = fadd <4 x float> %i.x, %i.ge
  %i.gg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.w, <4 x float> zeroinitializer, <4 x float> %i.gf)
  %i.gh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.v, <4 x float> zeroinitializer, <4 x float> %i.gg)
  %i.gi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.x, <4 x float> zeroinitializer, <4 x float> %i.y)
  %i.gj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.w, <4 x float> zeroinitializer, <4 x float> %i.gi)
  %i.gk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.v, <4 x float> zeroinitializer, <4 x float> %i.gj)
  %i.gl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.x, <4 x float> zeroinitializer, <4 x float> %i.ge)
  %i.gm = fadd <4 x float> %i.w, %i.gl
  %i.gn = insertelement <4 x float> poison, float %i.gb, i64 0
  %i.go = shufflevector <4 x float> %i.gn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gp = fmul <4 x float> %i.go, %i.y
  %i.gq = insertelement <4 x float> poison, float %i.fz, i64 0
  %i.gr = shufflevector <4 x float> %i.gq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gr, <4 x float> %i.x, <4 x float> %i.gp)
  %i.gt = insertelement <4 x float> poison, float %i.gd, i64 0
  %i.gu = shufflevector <4 x float> %i.gt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gu, <4 x float> %i.w, <4 x float> %i.gs)
  %i.gw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.v, <4 x float> zeroinitializer, <4 x float> %i.gm)
  %i.gx = fadd <4 x float> %i.v, %i.gv
  br label %.sink.split

bb.f:                                             ; preds = %bb.b
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 36
  %i.gz = load float, ptr %i.gy, align 4
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 40
  %i.hb = load float, ptr %i.ha, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 44
  %i.hd = load float, ptr %i.hc, align 4
  %i.he = fmul <4 x float> %i.y, zeroinitializer  ; 2 uses
  %i.hf = insertelement <4 x float> poison, float %i.gz, i64 0
  %i.hg = shufflevector <4 x float> %i.hf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hg, <4 x float> %i.x, <4 x float> %i.he)
  %i.hi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.w, <4 x float> zeroinitializer, <4 x float> %i.hh)
  %i.hj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.v, <4 x float> zeroinitializer, <4 x float> %i.hi)
  %i.hk = insertelement <4 x float> poison, float %i.hb, i64 0
  %i.hl = shufflevector <4 x float> %i.hk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hm = fmul <4 x float> %i.hl, %i.y
  %i.hn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.x, <4 x float> zeroinitializer, <4 x float> %i.hm)
  %i.ho = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.w, <4 x float> zeroinitializer, <4 x float> %i.hn)
  %i.hp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.v, <4 x float> zeroinitializer, <4 x float> %i.ho)
  %i.hq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.x, <4 x float> zeroinitializer, <4 x float> %i.he) ; 2 uses
  %i.hr = insertelement <4 x float> poison, float %i.hd, i64 0
  %i.hs = shufflevector <4 x float> %i.hr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ht = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hs, <4 x float> %i.w, <4 x float> %i.hq)
  %i.hu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.w, <4 x float> zeroinitializer, <4 x float> %i.hq)
  %i.hv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.v, <4 x float> zeroinitializer, <4 x float> %i.ht)
  %i.hw = fadd <4 x float> %i.v, %i.hu
  br label %.sink.split

bb.g:                                             ; preds = %bb.b
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 36
  %i.hy = load float, ptr %i.hx, align 4
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 40
  %i.ia = load float, ptr %i.hz, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 44
  %i.ic = load float, ptr %i.ib, align 4
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 48
  %i.ie = load float, ptr %i.id, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 52
  %i.ig = load float, ptr %i.if, align 4
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 56
  %i.ii = load float, ptr %i.ih, align 8
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 60
  %i.ik = load float, ptr %i.ij, align 4
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 64
  %i.im = load float, ptr %i.il, align 8
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 68
  %i.io = load float, ptr %i.in, align 4
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 72
  %i.iq = load float, ptr %i.ip, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 76
  %i.is = load float, ptr %i.ir, align 4
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 80
  %i.iu = load float, ptr %i.it, align 8
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 84
  %i.iw = load float, ptr %i.iv, align 4
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 88
  %i.iy = load float, ptr %i.ix, align 8
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 92
  %i.ja = load float, ptr %i.iz, align 4
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 96
  %i.jc = load float, ptr %i.jb, align 8
  %i.jd = insertelement <4 x float> poison, float %i.ig, i64 0
  %i.je = shufflevector <4 x float> %i.jd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jf = fmul <4 x float> %i.je, %i.y
  %i.jg = insertelement <4 x float> poison, float %i.hy, i64 0
  %i.jh = shufflevector <4 x float> %i.jg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ji = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jh, <4 x float> %i.x, <4 x float> %i.jf)
  %i.jj = insertelement <4 x float> poison, float %i.io, i64 0
  %i.jk = shufflevector <4 x float> %i.jj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jk, <4 x float> %i.w, <4 x float> %i.ji)
  %i.jm = insertelement <4 x float> poison, float %i.iw, i64 0
  %i.jn = shufflevector <4 x float> %i.jm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jn, <4 x float> %i.v, <4 x float> %i.jl)
  %i.jp = insertelement <4 x float> poison, float %i.ii, i64 0
  %i.jq = shufflevector <4 x float> %i.jp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jr = fmul <4 x float> %i.jq, %i.y
  %i.js = insertelement <4 x float> poison, float %i.ia, i64 0
  %i.jt = shufflevector <4 x float> %i.js, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ju = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jt, <4 x float> %i.x, <4 x float> %i.jr)
  %i.jv = insertelement <4 x float> poison, float %i.iq, i64 0
  %i.jw = shufflevector <4 x float> %i.jv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jw, <4 x float> %i.w, <4 x float> %i.ju)
  %i.jy = insertelement <4 x float> poison, float %i.iy, i64 0
  %i.jz = shufflevector <4 x float> %i.jy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ka = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jz, <4 x float> %i.v, <4 x float> %i.jx)
  %i.kb = insertelement <4 x float> poison, float %i.ik, i64 0
  %i.kc = shufflevector <4 x float> %i.kb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kd = fmul <4 x float> %i.kc, %i.y
  %i.ke = insertelement <4 x float> poison, float %i.ic, i64 0
  %i.kf = shufflevector <4 x float> %i.ke, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kf, <4 x float> %i.x, <4 x float> %i.kd)
  %i.kh = insertelement <4 x float> poison, float %i.is, i64 0
  %i.ki = shufflevector <4 x float> %i.kh, <4 x float> poison, <4 x i32> zeroinitializer
end_hunk_0

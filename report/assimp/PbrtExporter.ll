Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/PbrtExporter?download=true
inline.NumInlined: 1466
inline.NumDeleted: 366
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Assimp12PbrtExporter20WriteWorldDefinitionEv:bb.a
bb.t:                                             ; preds = %bb.s
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  call void @__clang_call_terminate(ptr %i.cf) #27
  unreachable

_ZNSt14_Function_baseD2Ev.exit39:                 ; preds = %.loopexit.split-lp, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24
  %i.b = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.a) ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8
  %i.d = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8              ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.d, ptr %0, align 8
  %i.k = load i64, ptr %i.e, align 8
  store i64 %i.k, ptr %i.c, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.h, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.n, align 8
  store ptr %i.e, ptr %i.b, align 8
  store i64 0, ptr %i.m, align 8
  store i8 0, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #27
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp12PbrtExporter11WriteCameraEi(ptr noundef nonnull align 8 dereferenceable(624) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %2 = alloca %class.aiMatrix4x4t, align 8        ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = sext i32 %1 to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8              ; 11 uses
  %i.h = icmp eq i32 %1, 0                        ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 34 uses
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.27, i64 noundef 11) ; 0 uses
  %i.k = add nsw i32 %1, 1
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i32 noundef %i.k) ; 3 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.28, i64 noundef 2) ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  %i.o = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.n) #24
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull %i.n, i64 noundef %i.o) ; 0 uses
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 1076
  %i.s = load float, ptr %i.r, align 4            ; 3 uses
  %i.t = fcmp oeq float %i.s, 0.000000e+00
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.29, i64 noundef 66) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.30, i64 noundef 21) ; 0 uses
  %i.w = fpext float %i.s to double
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.i, double noundef %i.w)
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi float [ f0x3FAAAAAB, %bb.b ], [ %i.s, %bb.c ] ; 3 uses
  %i.z = fdiv float 1.920000e+03, %.0
  %i.aa = tail call float @llvm.round.f32(float %i.z)
  %i.ab = fptosi float %i.aa to i32
  br i1 %i.h, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.31, i64 noundef 2) ; 0 uses
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.32, i64 noundef 30) ; 0 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef %i.af, i64 noundef %i.ah)
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull @.str.33, i64 noundef 6) ; 0 uses
  %i.ak = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.31, i64 noundef 2) ; 0 uses
  br label %bb.f

.critedge:                                        ; preds = %bb.d
  %i.al = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.32, i64 noundef 30) ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef %i.an, i64 noundef %i.ap)
  %i.ar = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull @.str.33, i64 noundef 6) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %.critedge, %bb.e
  %i.as = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.34, i64 noundef 27) ; 0 uses
  %i.at = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i32 noundef 1920)
  %i.au = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef nonnull @.str.35, i64 noundef 2) ; 0 uses
  br i1 %i.h, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.31, i64 noundef 2) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.36, i64 noundef 27) ; 0 uses
  %i.ax = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i32 noundef %i.ab)
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull @.str.35, i64 noundef 2) ; 0 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 1064
  %i.ba = load float, ptr %i.az, align 4
  %i.bb = fmul float %i.ba, f0x42652EE1           ; 2 uses
  %i.bc = fcmp oge float %.0, 1.000000e+00
  %i.bd = fdiv float %i.bb, %.0
  %i.be = select i1 %i.bc, float %i.bb, float %i.bd ; 3 uses
  %i.bf = fcmp olt float %i.be, 5.000000e+00
  br i1 %i.bf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bg = fpext float %i.be to double
  %i.bh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, double noundef %i.bg)
  %i.bi = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef nonnull @.str.37, i64 noundef 77) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.047 = phi float [ 4.500000e+01, %bb.i ], [ %i.be, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZNK6Assimp12PbrtExporter16GetNodeTransformERK8aiString(ptr dead_on_unwind nonnull writable sret(%class.aiMatrix4x4t) align 4 %2, ptr noundef nonnull align 8 dereferenceable(624) %0, ptr noundef nonnull align 4 dereferenceable(1028) %i.g)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 1028
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.g, i64 1036
  %i.bn = load float, ptr %i.bm, align 4          ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bw = load float, ptr %i.bv, align 8          ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.by = load float, ptr %i.bx, align 4          ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.g, i64 1052
  %i.ca = getelementptr inbounds nuw i8, ptr %i.g, i64 1060
  %i.cb = load float, ptr %i.ca, align 4
  %i.cc = fadd float %i.bn, %i.cb                 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.g, i64 1040
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 1044
  %i.cf = getelementptr inbounds nuw i8, ptr %i.g, i64 1048
  %i.cg = load <2 x float>, ptr %2, align 8       ; 3 uses
  %i.ch = load float, ptr %i.bk, align 4          ; 2 uses
  %i.ci = load <2 x float>, ptr %i.bp, align 8    ; 3 uses
  %i.cj = load float, ptr %i.bq, align 4          ; 2 uses
  %i.ck = load <2 x float>, ptr %i.bj, align 4    ; 2 uses
  %i.cl = load <2 x float>, ptr %i.bt, align 8    ; 3 uses
  %i.cm = load float, ptr %i.bu, align 4
  %i.cn = load <2 x float>, ptr %i.bz, align 4    ; 2 uses
  %i.co = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cp = shufflevector <2 x float> %i.cn, <2 x float> <float -0.000000e+00, float poison>, <2 x i32> <i32 2, i32 0>
  %i.cq = fadd <2 x float> %i.co, %i.cp           ; 2 uses
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.cs = shufflevector <2 x float> %i.ck, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ct = shufflevector <2 x float> %i.cn, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cu = shufflevector <4 x float> <float -0.000000e+00, float poison, float -0.000000e+00, float -0.000000e+00>, <4 x float> %i.ct, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.cv = fadd <4 x float> %i.cs, %i.cu           ; 2 uses
  %i.cw = shufflevector <2 x float> %i.cl, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.cx = insertelement <4 x float> %i.cw, float %i.ch, i64 1
  %i.cy = insertelement <4 x float> %i.cx, float %i.cj, i64 2
  %i.cz = shufflevector <4 x float> %i.cy, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 2>
  %i.da = fmul <4 x float> %i.cz, %i.cv
  %i.db = shufflevector <2 x float> %i.cg, <2 x float> %i.ci, <4 x i32> <i32 poison, i32 0, i32 0, i32 2> ; 2 uses
  %i.dc = shufflevector <2 x float> %i.cl, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.dd = shufflevector <4 x float> %i.dc, <4 x float> %i.db, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.de = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dd, <4 x float> %i.cr, <4 x float> %i.da) ; 3 uses
  %i.df = extractelement <4 x float> %i.de, i64 0
  %i.dg = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.bn, float %i.df)
  %i.dh = fadd float %i.by, %i.dg
  %i.di = extractelement <4 x float> %i.de, i64 1
  %i.dj = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.cc, float %i.di)
  %i.dk = fadd float %i.by, %i.dj                 ; 2 uses
  %i.dl = extractelement <4 x float> %i.cv, i64 1 ; 2 uses
  %i.dm = fmul float %i.ch, %i.dl
  %i.dn = fmul float %i.cj, %i.dl
  %i.do = insertelement <2 x float> %i.cq, float %i.bn, i64 0
  %i.dp = shufflevector <2 x float> %i.do, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dq = shufflevector <4 x float> %i.de, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 3, i32 poison>
  %i.dr = insertelement <4 x float> %i.dq, float %i.dm, i64 1
  %i.ds = insertelement <4 x float> %i.dr, float %i.dn, i64 3
  %i.dt = load <2 x float>, ptr %i.bl, align 8    ; 3 uses
  %i.du = load float, ptr %i.bo, align 4
  %i.dv = load <2 x float>, ptr %i.br, align 8    ; 3 uses
  %i.dw = load float, ptr %i.bs, align 4
  %i.dx = shufflevector <2 x float> %i.dt, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.dy = shufflevector <4 x float> %i.dx, <4 x float> %i.db, <4 x i32> <i32 0, i32 5, i32 poison, i32 7>
  %i.dz = shufflevector <2 x float> %i.dv, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ea = shufflevector <4 x float> %i.dy, <4 x float> %i.dz, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.eb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ea, <4 x float> %i.dp, <4 x float> %i.ds) ; 3 uses
  %i.ec = extractelement <4 x float> %i.eb, i64 0
  %i.ed = fadd float %i.ec, %i.du
  %i.ee = extractelement <4 x float> %i.eb, i64 2
  %i.ef = fadd float %i.dw, %i.ee
  %i.eg = shufflevector <2 x float> %i.dt, <2 x float> %i.dv, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.eh = insertelement <2 x float> poison, float %i.cc, i64 0
  %i.ei = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ej = shufflevector <4 x float> %i.eb, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.ek = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eg, <2 x float> %i.ei, <2 x float> %i.ej)
  %i.el = shufflevector <2 x float> %i.dt, <2 x float> %i.dv, <2 x i32> <i32 1, i32 3>
  %i.em = fadd <2 x float> %i.el, %i.ek           ; 2 uses
  %i.en = load float, ptr %i.ce, align 4          ; 2 uses
  %i.eo = load float, ptr %i.cd, align 4          ; 2 uses
  %i.ep = load float, ptr %i.cf, align 4          ; 2 uses
  %3 = shufflevector <2 x float> %i.cg, <2 x float> %i.ci, <2 x i32> <i32 1, i32 3>
  %4 = insertelement <2 x float> poison, float %i.en, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  %7 = shufflevector <2 x float> %i.cg, <2 x float> %i.ci, <2 x i32> <i32 0, i32 2>
  %i.eq = insertelement <2 x float> poison, float %i.eo, i64 0
  %8 = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.er = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %7, <2 x float> %8, <2 x float> %6)
  %i.es = insertelement <2 x float> poison, float %i.ep, i64 0
  %i.et = shufflevector <2 x float> %i.es, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eg, <2 x float> %i.et, <2 x float> %i.er) ; 5 uses
  %i.ev = fmul float %i.cm, %i.en
  %i.ew = extractelement <2 x float> %i.cl, i64 0
  %i.ex = tail call float @llvm.fmuladd.f32(float %i.ew, float %i.eo, float %i.ev)
  %i.ey = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.ep, float %i.ex) ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.eu, %i.eu
  %i.ez = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.fa = extractelement <2 x float> %i.eu, i64 0 ; 2 uses
  %i.fb = tail call float @llvm.fmuladd.f32(float %i.fa, float %i.fa, float %i.ez)
  %i.fc = tail call noundef float @llvm.fmuladd.f32(float %i.ey, float %i.ey, float %i.fb) ; 2 uses
  %i.fd = fcmp oeq float %i.fc, 0.000000e+00
  br i1 %i.fd, label %_ZN10aiVector3tIfE9NormalizeEv.exit, label %_ZN10aiVector3tIfEdVEf.exit.i

_ZN10aiVector3tIfEdVEf.exit.i:                    ; preds = %bb.j
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.fc)
  %i.fe = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.ff = insertelement <2 x float> poison, float %i.fe, i64 0
  %i.fg = shufflevector <2 x float> %i.ff, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fh = fmul <2 x float> %i.eu, %i.fg
  %i.fi = fmul float %i.ey, %i.fe
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit

_ZN10aiVector3tIfE9NormalizeEv.exit:              ; preds = %bb.j, %_ZN10aiVector3tIfEdVEf.exit.i
  %.sroa.9.0 = phi float [ %i.ey, %bb.j ], [ %i.fi, %_ZN10aiVector3tIfEdVEf.exit.i ]
  %.sroa.0.0 = phi <2 x float> [ %i.eu, %bb.j ], [ %i.fh, %_ZN10aiVector3tIfEdVEf.exit.i ]
  br i1 %i.h, label %.critedge53, label %bb.k

bb.k:                                             ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit
  %i.fj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.31, i64 noundef 2) ; 0 uses
  %i.fk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.38, i64 noundef 12) ; 0 uses
  %i.fl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.31, i64 noundef 2) ; 0 uses
  br label %bb.l

.critedge53:                                      ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit
  %i.fm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.38, i64 noundef 12) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %.critedge53, %bb.k
  %i.fn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.39, i64 noundef 7) ; 0 uses
  %i.fo = fpext float %i.ed to double
  %i.fp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.i, double noundef %i.fo) ; 2 uses
  %i.fq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fp, ptr noundef nonnull @.str.14, i64 noundef 1) ; 0 uses
  %i.fr = fpext float %i.ef to double
  %i.fs = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fp, double noundef %i.fr) ; 2 uses
  %i.ft = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fs, ptr noundef nonnull @.str.14, i64 noundef 1) ; 0 uses
  %i.fu = fpext float %i.dh to double
  %i.fv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fs, double noundef %i.fu)
  %i.fw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fv, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  br i1 %i.h, label %.critedge57, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.31, i64 noundef 2) ; 0 uses
  %i.fy = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.40, i64 noundef 7) ; 0 uses
  %i.fz = fpext <2 x float> %i.em to <2 x double> ; 2 uses
  %i.ga = extractelement <2 x double> %i.fz, i64 0
  %i.gb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.i, double noundef %i.ga) ; 2 uses
  %i.gc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gb, ptr noundef nonnull @.str.14, i64 noundef 1) ; 0 uses
  %i.gd = extractelement <2 x double> %i.fz, i64 1
  %i.ge = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.gb, double noundef %i.gd) ; 2 uses
  %i.gf = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ge, ptr noundef nonnull @.str.14, i64 noundef 1) ; 0 uses
  %i.gg = fpext float %i.dk to double
  %i.gh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ge, double noundef %i.gg)
  %i.gi = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gh, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  %i.gj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.31, i64 noundef 2) ; 0 uses
  br label %bb.n

.critedge57:                                      ; preds = %bb.l
  %i.gk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.40, i64 noundef 7) ; 0 uses
  %i.gl = fpext <2 x float> %i.em to <2 x double> ; 2 uses
  %i.gm = extractelement <2 x double> %i.gl, i64 0
  %i.gn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.i, double noundef %i.gm) ; 2 uses
  %i.go = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gn, ptr noundef nonnull @.str.14, i64 noundef 1) ; 0 uses
  %i.gp = extractelement <2 x double> %i.gl, i64 1
  %i.gq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.gn, double noundef %i.gp) ; 2 uses
  %i.gr = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gq, ptr noundef nonnull @.str.14, i64 noundef 1) ; 0 uses
  %i.gs = fpext float %i.dk to double
  %i.gt = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.gq, double noundef %i.gs)
  %i.gu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gt, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %.critedge57, %bb.m
  %i.gv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.40, i64 noundef 7) ; 0 uses
  %i.gw = fpext <2 x float> %.sroa.0.0 to <2 x double> ; 2 uses
  %i.gx = extractelement <2 x double> %i.gw, i64 0
  %i.gy = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.i, double noundef %i.gx) ; 2 uses
  %i.gz = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gy, ptr noundef nonnull @.str.14, i64 noundef 1) ; 0 uses
  %i.ha = extractelement <2 x double> %i.gw, i64 1
  %i.hb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.gy, double noundef %i.ha) ; 2 uses
  %i.hc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hb, ptr noundef nonnull @.str.14, i64 noundef 1) ; 0 uses
  %i.hd = fpext float %.sroa.9.0 to double
  %i.he = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.hb, double noundef %i.hd)
  %i.hf = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.he, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  br i1 %i.h, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.hg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.31, i64 noundef 2) ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.hh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.41, i64 noundef 33) ; 0 uses
  %i.hi = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.42, i64 noundef 1) ; 0 uses
  %i.hj = fpext float %.047 to double
  %i.hk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.i, double noundef %i.hj)
  %i.hl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hk, ptr noundef nonnull @.str.43, i64 noundef 3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK6Assimp12PbrtExporter16GetNodeTransformERK8aiString(ptr dead_on_unwind noalias nofree writable sret(%class.aiMatrix4x4t) align 4 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(624) %1, ptr noundef nonnull align 4 dereferenceable(1028) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.f = tail call noundef ptr @_ZN6aiNode8FindNodeEPKc(ptr noundef nonnull align 8 dereferenceable(1144) %i.d, ptr noundef nonnull %i.e) ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext 34)
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull %i.e)
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.25, i64 noundef 33) ; 0 uses
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyExportErrorC2IJRA20_KcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 1 dereferenceable(20) @.str.26)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTI17DeadlyExportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.j) #24
  resume { ptr, i32 } %i.k

.preheader:                                       ; preds = %bb.a, %.preheader
  %.079 = phi ptr [ %i.bm, %.preheader ], [ %i.f, %bb.a ] ; 16 uses
  %i.l = phi <4 x float> [ %i.bk, %.preheader ], [ <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, %bb.a ] ; 4 uses
  %i.m = phi <4 x float> [ %i.ay, %.preheader ], [ <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, %bb.a ] ; 4 uses
  %i.n = phi <4 x float> [ %i.ag, %.preheader ], [ <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, %bb.a ] ; 4 uses
  %i.o = phi <4 x float> [ %i.am, %.preheader ], [ <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %bb.a ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.079, i64 1028
  %.sroa.0.0.copyload10 = load float, ptr %i.p, align 4
  %.sroa.6.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %.079, i64 1032
  %.sroa.6.0.copyload12 = load float, ptr %.sroa.6.0..sroa_idx11, align 4
  %.sroa.8.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %.079, i64 1036
  %.sroa.8.0.copyload14 = load float, ptr %.sroa.8.0..sroa_idx13, align 4
  %.sroa.10.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %.079, i64 1040
  %.sroa.10.0.copyload16 = load float, ptr %.sroa.10.0..sroa_idx15, align 4
  %.sroa.12.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %.079, i64 1044
  %.sroa.16.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %.079, i64 1052
  %.sroa.16.0.copyload22 = load float, ptr %.sroa.16.0..sroa_idx21, align 4
  %.sroa.18.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %.079, i64 1056
  %.sroa.18.0.copyload24 = load float, ptr %.sroa.18.0..sroa_idx23, align 4
  %.sroa.20.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %.079, i64 1060
  %.sroa.20.0.copyload26 = load float, ptr %.sroa.20.0..sroa_idx25, align 4
  %.sroa.22.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %.079, i64 1064
  %.sroa.22.0.copyload28 = load float, ptr %.sroa.22.0..sroa_idx27, align 4
  %.sroa.24.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %.079, i64 1068
  %.sroa.24.0.copyload30 = load float, ptr %.sroa.24.0..sroa_idx29, align 4
  %.sroa.26.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %.079, i64 1072
  %.sroa.26.0.copyload32 = load float, ptr %.sroa.26.0..sroa_idx31, align 4
  %.sroa.28.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %.079, i64 1076
  %.sroa.28.0.copyload34 = load float, ptr %.sroa.28.0..sroa_idx33, align 4
  %.sroa.30.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %.079, i64 1080
  %.sroa.30.0.copyload36 = load float, ptr %.sroa.30.0..sroa_idx35, align 4
  %.sroa.32.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %.079, i64 1084
  %.sroa.32.0.copyload38 = load float, ptr %.sroa.32.0..sroa_idx37, align 4
  %.sroa.34.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %.079, i64 1088
  %.sroa.34.0.copyload40 = load float, ptr %.sroa.34.0..sroa_idx39, align 4
  %i.q = insertelement <4 x float> poison, float %.sroa.6.0.copyload12, i64 0
  %i.r = shufflevector <4 x float> %i.q, <4 x float> poison, <4 x i32> zeroinitializer
  %i.s = fmul <4 x float> %i.o, %i.r
  %i.t = load <2 x float>, ptr %.sroa.12.0..sroa_idx17, align 4 ; 2 uses
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.v = fmul <4 x float> %i.o, %i.u
  %i.w = shufflevector <2 x float> %i.t, <2 x float> poison, <4 x i32> zeroinitializer
  %i.x = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.n, <4 x float> %i.w, <4 x float> %i.v)
  %i.y = insertelement <4 x float> poison, float %.sroa.0.0.copyload10, i64 0
  %i.z = shufflevector <4 x float> %i.y, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.n, <4 x float> %i.z, <4 x float> %i.s)
  %i.ab = insertelement <4 x float> poison, float %.sroa.8.0.copyload14, i64 0
  %i.ac = shufflevector <4 x float> %i.ab, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ad = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.m, <4 x float> %i.ac, <4 x float> %i.aa)
  %i.ae = insertelement <4 x float> poison, float %.sroa.10.0.copyload16, i64 0
  %i.af = shufflevector <4 x float> %i.ae, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ag = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.l, <4 x float> %i.af, <4 x float> %i.ad) ; 5 uses
  %i.ah = insertelement <4 x float> poison, float %.sroa.16.0.copyload22, i64 0
  %i.ai = shufflevector <4 x float> %i.ah, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.m, <4 x float> %i.ai, <4 x float> %i.x)
  %i.ak = insertelement <4 x float> poison, float %.sroa.18.0.copyload24, i64 0
  %i.al = shufflevector <4 x float> %i.ak, <4 x float> poison, <4 x i32> zeroinitializer
  %i.am = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.l, <4 x float> %i.al, <4 x float> %i.aj) ; 5 uses
  %i.an = insertelement <4 x float> poison, float %.sroa.22.0.copyload28, i64 0
  %i.ao = shufflevector <4 x float> %i.an, <4 x float> poison, <4 x i32> zeroinitializer
end_hunk_0

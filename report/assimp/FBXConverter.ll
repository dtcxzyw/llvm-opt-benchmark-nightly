inline.NumInlined: 7594
inline.NumDeleted: 2896
begin_hunk_0_@_ZN6Assimp3FBX12FBXConverter31NeedsComplexTransformationChainERKNS0_5ModelE:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.q
  store i8 0, ptr %i.s, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.t = invoke noundef ptr @_ZNK6Assimp3FBX13PropertyTable3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc39 unwind label %bb.j   ; 2 uses

.noexc39:                                         ; preds = %bb.e
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.noexc39
  %i.v = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %i.t, ptr nonnull @_ZTIN6Assimp3FBX8PropertyE, ptr nonnull @_ZTIN6Assimp3FBX13TypedPropertyI10aiVector3tIfEEE, i64 0) #27 ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.0.0.copyload31.i = load <2 x float>, ptr %i.x, align 4
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.10.0.copyload.i = load float, ptr %.sroa.10.0..sroa_idx.i, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.noexc39, %bb.f
  %.0 = phi i1 [ true, %bb.g ], [ false, %.noexc39 ], [ false, %bb.f ] ; 2 uses
  %.sroa.10.0.i = phi float [ %.sroa.10.0.copyload.i, %bb.g ], [ 0.000000e+00, %.noexc39 ], [ 0.000000e+00, %bb.f ] ; 3 uses
  %.sroa.0.0.i = phi <2 x float> [ %.sroa.0.0.copyload31.i, %bb.g ], [ zeroinitializer, %.noexc39 ], [ zeroinitializer, %bb.f ] ; 5 uses
  %i.y = load ptr, ptr %2, align 8                ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.d
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.aa = load i64, ptr %i.d, align 8
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %or.cond5 = and i1 %i.i, %.0
  br i1 %or.cond5, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.046.0.vec.extract = extractelement <2 x float> %.sroa.0.0.i, i64 0
  %i.ac = fadd float %.sroa.046.0.vec.extract, -1.000000e+00 ; 2 uses
  %.sroa.046.4.vec.extract = extractelement <2 x float> %.sroa.0.0.i, i64 1
  %i.ad = fadd float %.sroa.046.4.vec.extract, -1.000000e+00 ; 2 uses
  %i.ae = fadd float %.sroa.10.0.i, -1.000000e+00 ; 2 uses
  %i.af = fmul float %i.ad, %i.ad
  %i.ag = call float @llvm.fmuladd.f32(float %i.ac, float %i.ac, float %i.af)
  %i.ah = call noundef float @llvm.fmuladd.f32(float %i.ae, float %i.ae, float %i.ag)
  %i.ai = fcmp ogt float %i.ah, f0x34000000
  br i1 %i.ai, label %.critedge, label %.thread

.thread:                                          ; preds = %bb.i
  br label %.critedge

bb.j:                                             ; preds = %bb.e
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load ptr, ptr %2, align 8               ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.d
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.j
  %i.am = load i64, ptr %i.d, align 8
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %i.aj

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  br i1 %.0, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.sroa.046.0.vec.extract48 = extractelement <2 x float> %.sroa.0.0.i, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.0.0.i, %.sroa.0.0.i
  %i.ao = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ap = call float @llvm.fmuladd.f32(float %.sroa.046.0.vec.extract48, float %.sroa.046.0.vec.extract48, float %i.ao)
  %i.aq = call noundef float @llvm.fmuladd.f32(float %.sroa.10.0.i, float %.sroa.10.0.i, float %i.ap)
  %i.ar = fcmp ogt float %i.aq, f0x34000000
  br i1 %i.ar, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.b
  %i.as = add nuw nsw i64 %.03062, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.as, 17
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !116

.critedge:                                        ; preds = %bb.l, %bb.m, %.thread, %bb.i
  %.lcssa59 = phi i1 [ false, %.thread ], [ true, %bb.i ], [ false, %bb.m ], [ true, %bb.l ]
  ret i1 %.lcssa59
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX12FBXConverter27NameTransformationChainNodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_18TransformationCompE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull readnone align 8 captures(none) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.a, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.33, i64 12, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 12, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i8 0, ptr %i.c, align 4
  call void @llvm.experimental.noalias.scope.decl(metadata !117)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noalias !117
  %i.f = load ptr, ptr %2, align 8, !noalias !117
  %i.g = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.f, i64 noundef %i.e)
          to label %.noexc10 unwind label %bb.h   ; 8 uses

.noexc10:                                         ; preds = %._crit_edge.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.h, ptr %5, align 8, !alias.scope !117
  %i.i = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 7 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %.thread, label %bb.a

.thread:                                          ; preds = %.noexc10
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.m = load i64, ptr %i.l, align 8              ; 3 uses
  %i.n = icmp ult i64 %i.m, 16
  call void @llvm.assume(i1 %i.n)
  %i.o = add nuw nsw i64 %i.m, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.o, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.m, ptr %i.q, align 8, !alias.scope !117
  store ptr %i.j, ptr %i.g, align 8
  store i64 0, ptr %i.p, align 8
  store i8 0, ptr %i.j, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.a:                                             ; preds = %.noexc10
  store ptr %i.i, ptr %5, align 8, !alias.scope !117
  %i.r = load i64, ptr %i.j, align 8
  store i64 %i.r, ptr %i.h, align 8, !alias.scope !117
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.pre.i, ptr %i.t, align 8, !alias.scope !117
  store ptr %i.j, ptr %i.g, align 8
  store i64 0, ptr %i.s, align 8
  store i8 0, ptr %i.j, align 8
  %i.u = icmp eq i64 %.pre.i, 4611686018427387903
  br i1 %i.u, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.225) #31
          to label %.noexc14 unwind label %bb.i

.noexc14:                                         ; preds = %bb.b
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %.thread, %bb.a
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.34, i64 noundef 1)
          to label %.noexc15 unwind label %bb.i   ; 6 uses

.noexc15:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.w, ptr %4, align 8, !alias.scope !120
  %i.x = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 5 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

bb.c:                                             ; preds = %.noexc15
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ab = load i64, ptr %i.aa, align 8            ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, ptr noundef nonnull align 8 dereferenceable(1) %i.y, i64 %i.ad, i1 false)
  br label %bb.d

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %.noexc15
  store ptr %i.x, ptr %4, align 8, !alias.scope !120
  %i.ae = load i64, ptr %i.y, align 8
  store i64 %i.ae, ptr %i.w, align 8, !alias.scope !120
  %.phi.trans.insert.i12 = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.pre.i13 = load i64, ptr %.phi.trans.insert.i12, align 8
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11, %bb.c
  %i.af = phi i64 [ %i.ab, %bb.c ], [ %.pre.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11 ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.af, ptr %i.ah, align 8, !alias.scope !120
  store ptr %i.y, ptr %i.v, align 8
  store i64 0, ptr %i.ag, align 8
  store i8 0, ptr %i.y, align 8
  %i.ai = icmp ult i32 %3, 17
  br i1 %i.ai, label %switch.lookup, label %_ZN6Assimp3FBX12FBXConverter22NameTransformationCompENS1_18TransformationCompE.exit

switch.lookup:                                    ; preds = %bb.d
  %7 = zext nneg i32 %3 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN6Assimp3FBX12FBXConverter27NameTransformationChainNodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_18TransformationCompE, i64 %7
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_ZN6Assimp3FBX12FBXConverter22NameTransformationCompENS1_18TransformationCompE.exit

_ZN6Assimp3FBX12FBXConverter22NameTransformationCompENS1_18TransformationCompE.exit: ; preds = %bb.d, %switch.lookup
  %.0.i = phi ptr [ %switch.load, %switch.lookup ], [ null, %bb.d ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !123)
  %8 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i) #27, !noalias !123 ; 2 uses
  %9 = load i64, ptr %i.ah, align 8, !noalias !123
  %10 = sub i64 4611686018427387903, %9
  %11 = icmp ult i64 %10, %8
  br i1 %11, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i16

bb.e:                                             ; preds = %_ZN6Assimp3FBX12FBXConverter22NameTransformationCompENS1_18TransformationCompE.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.225) #31
          to label %.noexc20 unwind label %bb.j

.noexc20:                                         ; preds = %bb.e
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i16: ; preds = %_ZN6Assimp3FBX12FBXConverter22NameTransformationCompENS1_18TransformationCompE.exit
  %i.aj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull %.0.i, i64 noundef %8)
          to label %.noexc21 unwind label %bb.j   ; 6 uses

.noexc21:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i16
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ak, ptr %0, align 8, !alias.scope !123
  %i.al = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 5 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

bb.f:                                             ; preds = %.noexc21
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ap = load i64, ptr %i.ao, align 8            ; 3 uses
  %i.aq = icmp ult i64 %i.ap, 16
  call void @llvm.assume(i1 %i.aq)
  %i.ar = add nuw nsw i64 %i.ap, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ak, ptr noundef nonnull align 8 dereferenceable(1) %i.am, i64 %i.ar, i1 false)
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %.noexc21
  store ptr %i.al, ptr %0, align 8, !alias.scope !123
  %i.as = load i64, ptr %i.am, align 8
  store i64 %i.as, ptr %i.ak, align 8, !alias.scope !123
  %.phi.trans.insert.i18 = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.pre.i19 = load i64, ptr %.phi.trans.insert.i18, align 8
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17, %bb.f
  %i.at = phi i64 [ %i.ap, %bb.f ], [ %.pre.i19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.at, ptr %i.av, align 8, !alias.scope !123
  store ptr %i.am, ptr %i.aj, align 8
  store i64 0, ptr %i.au, align 8
  store i8 0, ptr %i.am, align 8
  %i.aw = load ptr, ptr %4, align 8               ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.w
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.g
  %i.ay = load i64, ptr %i.w, align 8
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  %i.ba = load ptr, ptr %5, align 8               ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.h
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bc = load i64, ptr %i.h, align 8
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  %i.be = load ptr, ptr %6, align 8               ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.a
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %i.bg = load i64, ptr %i.a, align 8
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret void

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.b
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i16, %bb.e
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bl = load ptr, ptr %4, align 8               ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.w
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.j
  %i.bn = load i64, ptr %i.w, align 8
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30, %bb.i
  %.pn = phi { ptr, i32 } [ %i.bj, %bb.i ], [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30 ], [ %i.bk, %bb.j ] ; 2 uses
  %i.bp = load ptr, ptr %5, align 8               ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.h
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
  %i.br = load i64, ptr %i.h, align 8
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.bi, %bb.h ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32 ]
  %i.bt = load ptr, ptr %6, align 8               ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.a
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.bv = load i64, ptr %i.a, align 8
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZNK6Assimp3FBX5Model13RotationOrderEv(ptr noundef nonnull align 8 dereferenceable(208) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = load ptr, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.d, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.d, ptr noundef nonnull align 1 dereferenceable(13) @.str.217, i64 13, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 13, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 29
  store i8 0, ptr %i.f, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4
  %i.g = invoke noundef ptr @_ZNK6Assimp3FBX13PropertyTable3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %.noexc11 unwind label %bb.c   ; 2 uses

.noexc11:                                         ; preds = %._crit_edge.i.i
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %bb.a

bb.a:                                             ; preds = %.noexc11
  %i.i = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %i.g, ptr nonnull @_ZTIN6Assimp3FBX8PropertyE, ptr nonnull @_ZTIN6Assimp3FBX13TypedPropertyIiEE, i64 0) #27 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %spec.select.i = select i1 %i.j, ptr %i.a, ptr %i.k
  %.1.i.pre = load i32, ptr %spec.select.i, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.noexc11
  %.1.i = phi i32 [ 0, %.noexc11 ], [ %.1.i.pre, %bb.a ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = load ptr, ptr %1, align 8                ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.d
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.n = load i64, ptr %i.d, align 8
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  %or.cond = icmp ugt i32 %.1.i, 6
  %. = select i1 %or.cond, i32 0, i32 %.1.i
  ret i32 %.

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.q = load ptr, ptr %1, align 8                ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.d
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.c
  %i.s = load i64, ptr %i.d, align 8
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  resume { ptr, i32 } %i.p
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE7InverseEv(ptr noundef nonnull align 4 dereferenceable(64) %0) local_unnamed_addr #14 comdat align 2 {
bb.a:
end_hunk_0
begin_hunk_1_@_ZN6Assimp3FBX12FBXConverter22GenerateNodeAnimationsERSt6vectorIP10aiNodeAnimSaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS2_IPKNS0_18AnimationCurveNodeESaISI_EERKSt3mapISI_PKNS0_14AnimationLayerESt4lessISI_ESaISt4pairIKSI_SQ_EEEllRdS10_:bb.a

bb.ac:                                            ; preds = %.noexc.i
  %i.de = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %bb.dc

bb.ad:                                            ; preds = %.noexc163, %.noexc162, %bb.ab, %bb.aa, %bb.y
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

_ZN6Assimp12LogFunctionsINS_11FBXImporterEE15LogVerboseDebugIJRA47_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit: ; preds = %.noexc164, %.noexc161, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.r
  %i.dg = add nuw nsw i64 %.0122301, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.dg, 17
  br i1 %exitcond.not, label %bb.p, label %bb.q, !llvm.loop !354

_ZN6Assimp12LogFunctionsINS_11FBXImporterEE15LogVerboseDebugIJRA47_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit.thread: ; preds = %bb.x, %bb.z
  %i.dh = icmp ne i64 %.0122301, 12
  %i.di = icmp ne i64 %i.bn, 3
  %or.cond5 = and i1 %i.dh, %i.di
  %spec.select = select i1 %or.cond5, i1 true, i1 %.0123300.ph ; 2 uses
  %i.dj = add nuw nsw i64 %.0122301, 1            ; 2 uses
  %exitcond.not360 = icmp eq i64 %i.dj, 17
  br i1 %exitcond.not360, label %.thread, label %.outer, !llvm.loop !354

bb.ae:                                            ; preds = %bb.p
  %i.dk = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc168 unwind label %bb.ag

.noexc168:                                        ; preds = %bb.ae
  br i1 %i.dk, label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA68_KcEEEvDpOT_.exit, label %bb.af

bb.af:                                            ; preds = %.noexc168
  %i.dl = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc169 unwind label %bb.ag

.noexc169:                                        ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.dm = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11FBXImporterEE6PrefixEv()
          to label %.noexc170 unwind label %bb.ag

.noexc170:                                        ; preds = %.noexc169
  store ptr %i.dm, ptr %i.a, align 8
  invoke void @_ZN6Assimp6Logger4warnIJPKcRA68_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.dl, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(68) @.str.181)
          to label %.noexc171 unwind label %bb.ag

.noexc171:                                        ; preds = %.noexc170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA68_KcEEEvDpOT_.exit

bb.ag:                                            ; preds = %.noexc170, %.noexc169, %bb.af, %bb.ae, %bb.ai
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

.thread:                                          ; preds = %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE15LogVerboseDebugIJRA47_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit.thread, %bb.p
  %.2125361365 = phi i1 [ %.0123300.ph, %bb.p ], [ %spec.select, %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE15LogVerboseDebugIJRA47_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit.thread ]
  %i.do = load ptr, ptr %i.u, align 8, !nonnull !3, !align !9
  %i.dp = load ptr, ptr %i.do, align 8, !nonnull !3
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 10
  %i.dr = load i8, ptr %i.dq, align 1, !range !4, !noundef !3
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %.thread
  br i1 %.2125361365, label %bb.ax, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dt = invoke noundef zeroext i1 @_ZN6Assimp3FBX12FBXConverter31NeedsComplexTransformationChainERKNS0_5ModelE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(208) %i.r)
          to label %bb.aj unwind label %bb.ag

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.dt, label %bb.ax, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.thread
  %i.du = invoke noundef ptr @_ZN6Assimp3FBX12FBXConverter22GenerateSimpleNodeAnimERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_5ModelEPSt23_Rb_tree_const_iteratorISt4pairIS8_St6vectorIPKNS0_18AnimationCurveNodeESaISI_EEEESM_llRdSO_(ptr noundef nonnull align 8 dereferenceable(529) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(208) %i.r, ptr noundef nonnull %10, ptr nonnull %i.f, i64 noundef %5, i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.al unwind label %bb.ap     ; 7 uses

bb.al:                                            ; preds = %bb.ak
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 1028
  %i.dw = load i32, ptr %i.dv, align 4
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %bb.al
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 1040
  %i.dz = load i32, ptr %i.dy, align 8
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.eb = getelementptr inbounds nuw i8, ptr %i.du, i64 1056
  %i.ec = load i32, ptr %i.eb, align 8
  %i.ed = icmp eq i32 %i.ec, 0
  br i1 %i.ed, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  call void @_ZN10aiNodeAnimD2Ev(ptr noundef nonnull align 8 dead_on_return(1080) dereferenceable(1080) %i.du) #27
  call void @_ZdlPvm(ptr noundef nonnull %i.du, i64 noundef 1080) #29
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA68_KcEEEvDpOT_.exit

bb.ap:                                            ; preds = %bb.ak
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

bb.aq:                                            ; preds = %bb.an, %bb.am, %bb.al
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.eg = load ptr, ptr %i.ef, align 8            ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8
  %.not.i172 = icmp eq ptr %i.eg, %i.ei
  br i1 %.not.i172, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store ptr %i.du, ptr %i.eg, align 8
  %i.ej = load ptr, ptr %i.ef, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store ptr %i.ek, ptr %i.ef, align 8
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA68_KcEEEvDpOT_.exit

bb.as:                                            ; preds = %bb.aq
  %i.el = load ptr, ptr %1, align 8               ; 4 uses
  %i.em = ptrtoint ptr %i.eg to i64
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = sub i64 %i.em, %i.en                    ; 6 uses
  %i.ep = icmp eq i64 %i.eo, 9223372036854775800
  br i1 %i.ep, label %bb.at, label %_ZNKSt6vectorIP10aiNodeAnimSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.at:                                            ; preds = %bb.as
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.224) #31
          to label %.noexc176 unwind label %bb.aw

.noexc176:                                        ; preds = %bb.at
  unreachable

_ZNKSt6vectorIP10aiNodeAnimSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.as
  %i.eq = ashr exact i64 %i.eo, 3                 ; 3 uses
  %.sroa.speculated.i.i.i173 = call i64 @llvm.umax.i64(i64 %i.eq, i64 1)
  %i.er = add nsw i64 %.sroa.speculated.i.i.i173, %i.eq ; 2 uses
  %i.es = icmp ult i64 %i.er, %i.eq
  %i.et = call i64 @llvm.umin.i64(i64 %i.er, i64 1152921504606846975)
  %i.eu = select i1 %i.es, i64 1152921504606846975, i64 %i.et ; 3 uses
  %.not.i.i.i174 = icmp ne i64 %i.eu, 0
  call void @llvm.assume(i1 %.not.i.i.i174)
  %i.ev = shl nuw nsw i64 %i.eu, 3
  %i.ew = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ev) #30
          to label %.noexc177 unwind label %bb.aw ; 4 uses

.noexc177:                                        ; preds = %_ZNKSt6vectorIP10aiNodeAnimSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ex = getelementptr inbounds i8, ptr %i.ew, i64 %i.eo ; 2 uses
  store ptr %i.du, ptr %i.ex, align 8
  %i.ey = icmp sgt i64 %i.eo, 0
  br i1 %i.ey, label %bb.au, label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.au:                                            ; preds = %.noexc177
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ew, ptr align 8 %i.el, i64 %i.eo, i1 false)
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP10aiNodeAnimSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.au, %.noexc177
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %.not.i17.i.i175 = icmp eq ptr %i.el, null
  br i1 %.not.i17.i.i175, label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.el, i64 noundef %i.eo) #29
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP10aiNodeAnimSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.av, %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.ew, ptr %1, align 8
  store ptr %i.ez, ptr %i.ef, align 8
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.eu
  store ptr %i.fa, ptr %i.eh, align 8
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA68_KcEEEvDpOT_.exit

bb.aw:                                            ; preds = %_ZNKSt6vectorIP10aiNodeAnimSaIS1_EE12_M_check_lenEmPKc.exit.i.i, %bb.at
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

bb.ax:                                            ; preds = %bb.aj, %bb.ah
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 12 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  br label %bb.az

bb.ay:                                            ; preds = %bb.cz
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.fi = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_jESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.fh, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_jEEEixERSB_.exit unwind label %bb.db

bb.az:                                            ; preds = %bb.ax, %bb.cz
  %.0114306 = phi i64 [ 0, %bb.ax ], [ %i.kn, %bb.cz ] ; 4 uses
  %.0115304 = phi i32 [ 1, %bb.ax ], [ %i.ko, %bb.cz ] ; 3 uses
  %.0116303 = phi i32 [ 0, %bb.ax ], [ %.2118, %bb.cz ] ; 2 uses
  %i.fj = trunc nuw nsw i64 %.0114306 to i32      ; 2 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %.0114306
  %i.fl = load ptr, ptr %i.fk, align 8            ; 4 uses
  %.not261 = icmp eq ptr %i.fl, %i.f
  br i1 %.not261, label %bb.cz, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fm = or i32 %.0115304, %.0116303             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  invoke void @_ZN6Assimp3FBX12FBXConverter27NameTransformationChainNodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_18TransformationCompE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %i.fj)
          to label %bb.bb unwind label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  switch i32 %i.fj, label %bb.cj [
    i32 7, label %bb.bd
    i32 6, label %bb.bd
    i32 8, label %bb.bd
    i32 15, label %bb.bd
    i32 4, label %bb.be
    i32 5, label %bb.be
    i32 10, label %bb.be
    i32 11, label %bb.be
    i32 3, label %bb.be
    i32 14, label %bb.be
    i32 12, label %bb.ci
    i32 16, label %bb.ci
  ]

bb.bc:                                            ; preds = %bb.ba
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

bb.bd:                                            ; preds = %bb.bb, %bb.bb, %bb.bb, %bb.bb
  %15 = getelementptr inbounds nuw i8, ptr %i.fl, i64 64
  %i.fo = invoke noundef ptr @_ZN6Assimp3FBX12FBXConverter24GenerateRotationNodeAnimERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_5ModelERKSt6vectorIPKNS0_18AnimationCurveNodeESaISG_EERKSt3mapISG_PKNS0_14AnimationLayerESt4lessISG_ESaISt4pairIKSG_SO_EEEllRdSY_(ptr noundef nonnull align 8 dereferenceable(529) %0, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(208) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.cj unwind label %.loopexit

.loopexit:                                        ; preds = %bb.bd, %bb.be, %bb.ci, %_ZNKSt6vectorIP10aiNodeAnimSaIS1_EE12_M_check_lenEmPKc.exit.i.i212
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

.loopexit.split-lp:                               ; preds = %bb.cv
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.be:                                            ; preds = %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb
  %16 = getelementptr inbounds nuw i8, ptr %i.fl, i64 64 ; 3 uses
  %i.fp = invoke noundef ptr @_ZN6Assimp3FBX12FBXConverter27GenerateTranslationNodeAnimERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_5ModelERKSt6vectorIPKNS0_18AnimationCurveNodeESaISG_EERKSt3mapISG_PKNS0_14AnimationLayerESt4lessISG_ESaISt4pairIKSG_SO_EEEllRdSY_b(ptr noundef nonnull align 8 dereferenceable(529) %0, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8, i1 noundef zeroext false)
          to label %bb.bf unwind label %.loopexit ; 3 uses

bb.bf:                                            ; preds = %bb.be
  switch i64 %.0114306, label %bb.cj [
    i64 5, label %bb.bg
    i64 11, label %bb.bu
  ]

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  invoke void @_ZN6Assimp3FBX12FBXConverter27NameTransformationChainNodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_18TransformationCompE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 9)
          to label %bb.bh unwind label %bb.bm

bb.bh:                                            ; preds = %bb.bg
  %i.fq = invoke noundef ptr @_ZN6Assimp3FBX12FBXConverter27GenerateTranslationNodeAnimERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_5ModelERKSt6vectorIPKNS0_18AnimationCurveNodeESaISG_EERKSt3mapISG_PKNS0_14AnimationLayerESt4lessISG_ESaISt4pairIKSG_SO_EEEllRdSY_b(ptr noundef nonnull align 8 dereferenceable(529) %0, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8, i1 noundef zeroext true)
          to label %bb.bi unwind label %.loopexit268 ; 7 uses

bb.bi:                                            ; preds = %bb.bh
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 1028
  %i.fs = load i32, ptr %i.fr, align 4
  %i.ft = icmp eq i32 %i.fs, 0
  br i1 %i.ft, label %bb.bj, label %bb.bo

bb.bj:                                            ; preds = %bb.bi
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fq, i64 1040
  %i.fv = load i32, ptr %i.fu, align 8
  %i.fw = icmp eq i32 %i.fv, 0
  br i1 %i.fw, label %bb.bk, label %bb.bo

bb.bk:                                            ; preds = %bb.bj
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fq, i64 1056
  %i.fy = load i32, ptr %i.fx, align 8
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %bb.bl, label %bb.bo

bb.bl:                                            ; preds = %bb.bk
  call void @_ZN10aiNodeAnimD2Ev(ptr noundef nonnull align 8 dead_on_return(1080) dereferenceable(1080) %i.fq) #27
  call void @_ZdlPvm(ptr noundef nonnull %i.fq, i64 noundef 1080) #29
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit191

bb.bm:                                            ; preds = %bb.bg
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

.loopexit268:                                     ; preds = %bb.bh, %_ZNKSt6vectorIP10aiNodeAnimSaIS1_EE12_M_check_lenEmPKc.exit.i.i183
  %lpad.loopexit270 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

.loopexit.split-lp269:                            ; preds = %bb.br
  %lpad.loopexit.split-lp271 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bn:                                            ; preds = %.loopexit.split-lp269, %.loopexit268
  %lpad.phi272 = phi { ptr, i32 } [ %lpad.loopexit270, %.loopexit268 ], [ %lpad.loopexit.split-lp271, %.loopexit.split-lp269 ]
  %i.gb = load ptr, ptr %13, align 8              ; 2 uses
  %i.gc = icmp eq ptr %i.gb, %i.ff
  br i1 %i.gc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179: ; preds = %bb.bn
  %i.gd = load i64, ptr %i.ff, align 8
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.ge) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %bb.cy

bb.bo:                                            ; preds = %bb.bk, %bb.bj, %bb.bi
  %i.gf = load ptr, ptr %i.fc, align 8            ; 3 uses
  %i.gg = load ptr, ptr %i.fd, align 8
  %.not.i182 = icmp eq ptr %i.gf, %i.gg
  br i1 %.not.i182, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  store ptr %i.fq, ptr %i.gf, align 8
  %i.gh = load ptr, ptr %i.fc, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  store ptr %i.gi, ptr %i.fc, align 8
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit191

bb.bq:                                            ; preds = %bb.bo
  %i.gj = load ptr, ptr %1, align 8               ; 4 uses
  %i.gk = ptrtoint ptr %i.gf to i64
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = sub i64 %i.gk, %i.gl                    ; 6 uses
  %i.gn = icmp eq i64 %i.gm, 9223372036854775800
  br i1 %i.gn, label %bb.br, label %_ZNKSt6vectorIP10aiNodeAnimSaIS1_EE12_M_check_lenEmPKc.exit.i.i183

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.224) #31
          to label %.noexc189 unwind label %.loopexit.split-lp269

.noexc189:                                        ; preds = %bb.br
  unreachable

_ZNKSt6vectorIP10aiNodeAnimSaIS1_EE12_M_check_lenEmPKc.exit.i.i183: ; preds = %bb.bq
  %i.go = ashr exact i64 %i.gm, 3                 ; 3 uses
  %.sroa.speculated.i.i.i184 = call i64 @llvm.umax.i64(i64 %i.go, i64 1)
  %i.gp = add nsw i64 %.sroa.speculated.i.i.i184, %i.go ; 2 uses
  %i.gq = icmp ult i64 %i.gp, %i.go
  %i.gr = call i64 @llvm.umin.i64(i64 %i.gp, i64 1152921504606846975)
  %i.gs = select i1 %i.gq, i64 1152921504606846975, i64 %i.gr ; 3 uses
  %.not.i.i.i185 = icmp ne i64 %i.gs, 0
  call void @llvm.assume(i1 %.not.i.i.i185)
  %i.gt = shl nuw nsw i64 %i.gs, 3
  %i.gu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gt) #30
          to label %.noexc190 unwind label %.loopexit268 ; 4 uses

.noexc190:                                        ; preds = %_ZNKSt6vectorIP10aiNodeAnimSaIS1_EE12_M_check_lenEmPKc.exit.i.i183
  %i.gv = getelementptr inbounds i8, ptr %i.gu, i64 %i.gm ; 2 uses
  store ptr %i.fq, ptr %i.gv, align 8
  %i.gw = icmp sgt i64 %i.gm, 0
  br i1 %i.gw, label %bb.bs, label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i186

bb.bs:                                            ; preds = %.noexc190
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gu, ptr align 8 %i.gj, i64 %i.gm, i1 false)
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i186

_ZNSt6vectorIP10aiNodeAnimSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i186: ; preds = %bb.bs, %.noexc190
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %.not.i17.i.i187 = icmp eq ptr %i.gj, null
  br i1 %.not.i17.i.i187, label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i188, label %bb.bt

bb.bt:                                            ; preds = %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i186
  call void @_ZdlPvm(ptr noundef nonnull %i.gj, i64 noundef %i.gm) #29
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i188

_ZNSt6vectorIP10aiNodeAnimSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i188: ; preds = %bb.bt, %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i186
  store ptr %i.gu, ptr %1, align 8
  store ptr %i.gx, ptr %i.fc, align 8
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %i.gs
  store ptr %i.gy, ptr %i.fd, align 8
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit191

_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit191: ; preds = %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i188, %bb.bp, %bb.bl
  %i.gz = shl i32 %.0115304, 4
  %i.ha = or i32 %i.fm, %i.gz
  %i.hb = load ptr, ptr %13, align 8              ; 2 uses
  %i.hc = icmp eq ptr %i.hb, %i.ff
  br i1 %i.hc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192: ; preds = %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit191
  %i.hd = load i64, ptr %i.ff, align 8
  %i.he = add i64 %i.hd, 1
  call void @_ZdlPvm(ptr noundef %i.hb, i64 noundef %i.he) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194: ; preds = %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit191, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %bb.cj

bb.bu:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  invoke void @_ZN6Assimp3FBX12FBXConverter27NameTransformationChainNodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_18TransformationCompE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 13)
          to label %bb.bv unwind label %bb.ca

bb.bv:                                            ; preds = %bb.bu
  %i.hf = invoke noundef ptr @_ZN6Assimp3FBX12FBXConverter27GenerateTranslationNodeAnimERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_5ModelERKSt6vectorIPKNS0_18AnimationCurveNodeESaISG_EERKSt3mapISG_PKNS0_14AnimationLayerESt4lessISG_ESaISt4pairIKSG_SO_EEEllRdSY_b(ptr noundef nonnull align 8 dereferenceable(529) %0, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8, i1 noundef zeroext true)
          to label %bb.bw unwind label %.loopexit263 ; 7 uses

bb.bw:                                            ; preds = %bb.bv
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 1028
  %i.hh = load i32, ptr %i.hg, align 4
  %i.hi = icmp eq i32 %i.hh, 0
  br i1 %i.hi, label %bb.bx, label %bb.cc

bb.bx:                                            ; preds = %bb.bw
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hf, i64 1040
  %i.hk = load i32, ptr %i.hj, align 8
  %i.hl = icmp eq i32 %i.hk, 0
  br i1 %i.hl, label %bb.by, label %bb.cc

bb.by:                                            ; preds = %bb.bx
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hf, i64 1056
  %i.hn = load i32, ptr %i.hm, align 8
  %i.ho = icmp eq i32 %i.hn, 0
  br i1 %i.ho, label %bb.bz, label %bb.cc

bb.bz:                                            ; preds = %bb.by
  call void @_ZN10aiNodeAnimD2Ev(ptr noundef nonnull align 8 dead_on_return(1080) dereferenceable(1080) %i.hf) #27
  call void @_ZdlPvm(ptr noundef nonnull %i.hf, i64 noundef 1080) #29
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit207

bb.ca:                                            ; preds = %bb.bu
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

.loopexit263:                                     ; preds = %bb.bv, %_ZNKSt6vectorIP10aiNodeAnimSaIS1_EE12_M_check_lenEmPKc.exit.i.i199
  %lpad.loopexit265 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

.loopexit.split-lp264:                            ; preds = %bb.cf
  %lpad.loopexit.split-lp266 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.cb:                                            ; preds = %.loopexit.split-lp264, %.loopexit263
  %lpad.phi267 = phi { ptr, i32 } [ %lpad.loopexit265, %.loopexit263 ], [ %lpad.loopexit.split-lp266, %.loopexit.split-lp264 ]
  %i.hq = load ptr, ptr %14, align 8              ; 2 uses
  %i.hr = icmp eq ptr %i.hq, %i.fe
  br i1 %i.hr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195: ; preds = %bb.cb
  %i.hs = load i64, ptr %i.fe, align 8
  %i.ht = add i64 %i.hs, 1
  call void @_ZdlPvm(ptr noundef %i.hq, i64 noundef %i.ht) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197: ; preds = %bb.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  br label %bb.cy

bb.cc:                                            ; preds = %bb.by, %bb.bx, %bb.bw
  %i.hu = load ptr, ptr %i.fc, align 8            ; 3 uses
  %i.hv = load ptr, ptr %i.fd, align 8
  %.not.i198 = icmp eq ptr %i.hu, %i.hv
  br i1 %.not.i198, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  store ptr %i.hf, ptr %i.hu, align 8
  %i.hw = load ptr, ptr %i.fc, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  store ptr %i.hx, ptr %i.fc, align 8
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit207

bb.ce:                                            ; preds = %bb.cc
  %i.hy = load ptr, ptr %1, align 8               ; 4 uses
  %i.hz = ptrtoint ptr %i.hu to i64
  %i.ia = ptrtoint ptr %i.hy to i64
  %i.ib = sub i64 %i.hz, %i.ia                    ; 6 uses
  %i.ic = icmp eq i64 %i.ib, 9223372036854775800
  br i1 %i.ic, label %bb.cf, label %_ZNKSt6vectorIP10aiNodeAnimSaIS1_EE12_M_check_lenEmPKc.exit.i.i199

bb.cf:                                            ; preds = %bb.ce
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.224) #31
          to label %.noexc205 unwind label %.loopexit.split-lp264

.noexc205:                                        ; preds = %bb.cf
  unreachable

_ZNKSt6vectorIP10aiNodeAnimSaIS1_EE12_M_check_lenEmPKc.exit.i.i199: ; preds = %bb.ce
  %i.id = ashr exact i64 %i.ib, 3                 ; 3 uses
  %.sroa.speculated.i.i.i200 = call i64 @llvm.umax.i64(i64 %i.id, i64 1)
  %i.ie = add nsw i64 %.sroa.speculated.i.i.i200, %i.id ; 2 uses
  %i.if = icmp ult i64 %i.ie, %i.id
  %i.ig = call i64 @llvm.umin.i64(i64 %i.ie, i64 1152921504606846975)
  %i.ih = select i1 %i.if, i64 1152921504606846975, i64 %i.ig ; 3 uses
  %.not.i.i.i201 = icmp ne i64 %i.ih, 0
  call void @llvm.assume(i1 %.not.i.i.i201)
  %i.ii = shl nuw nsw i64 %i.ih, 3
  %i.ij = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ii) #30
          to label %.noexc206 unwind label %.loopexit263 ; 4 uses

.noexc206:                                        ; preds = %_ZNKSt6vectorIP10aiNodeAnimSaIS1_EE12_M_check_lenEmPKc.exit.i.i199
  %i.ik = getelementptr inbounds i8, ptr %i.ij, i64 %i.ib ; 2 uses
  store ptr %i.hf, ptr %i.ik, align 8
  %i.il = icmp sgt i64 %i.ib, 0
  br i1 %i.il, label %bb.cg, label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i202

bb.cg:                                            ; preds = %.noexc206
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ij, ptr align 8 %i.hy, i64 %i.ib, i1 false)
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i202

_ZNSt6vectorIP10aiNodeAnimSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i202: ; preds = %bb.cg, %.noexc206
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %.not.i17.i.i203 = icmp eq ptr %i.hy, null
  br i1 %.not.i17.i.i203, label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i204, label %bb.ch

bb.ch:                                            ; preds = %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i202
  call void @_ZdlPvm(ptr noundef nonnull %i.hy, i64 noundef %i.ib) #29
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i204

_ZNSt6vectorIP10aiNodeAnimSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i204: ; preds = %bb.ch, %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i202
  store ptr %i.ij, ptr %1, align 8
  store ptr %i.im, ptr %i.fc, align 8
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.ih
  store ptr %i.in, ptr %i.fd, align 8
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit207

_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit207: ; preds = %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i204, %bb.cd, %bb.bz
  %i.io = load ptr, ptr %14, align 8              ; 2 uses
  %i.ip = icmp eq ptr %i.io, %i.fe
  br i1 %i.ip, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208: ; preds = %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit207
  %i.iq = load i64, ptr %i.fe, align 8
  %i.ir = add i64 %i.iq, 1
  call void @_ZdlPvm(ptr noundef %i.io, i64 noundef %i.ir) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210: ; preds = %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit207, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  br label %bb.cj

bb.ci:                                            ; preds = %bb.bb, %bb.bb
  %17 = getelementptr inbounds nuw i8, ptr %i.fl, i64 64
  %i.is = invoke noundef ptr @_ZN6Assimp3FBX12FBXConverter23GenerateScalingNodeAnimERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_5ModelERKSt6vectorIPKNS0_18AnimationCurveNodeESaISG_EERKSt3mapISG_PKNS0_14AnimationLayerESt4lessISG_ESaISt4pairIKSG_SO_EEEllRdSY_(ptr noundef nonnull align 8 dereferenceable(529) %0, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.cj unwind label %.loopexit

bb.cj:                                            ; preds = %bb.ci, %bb.bd, %bb.bf, %bb.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210
  %.0258 = phi ptr [ null, %bb.bb ], [ %i.fo, %bb.bd ], [ %i.fp, %bb.bf ], [ %i.fp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194 ], [ %i.fp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210 ], [ %i.is, %bb.ci ] ; 9 uses
  %.1117 = phi i32 [ %i.fm, %bb.bb ], [ %i.fm, %bb.bd ], [ %i.fm, %bb.bf ], [ %i.ha, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194 ], [ poison, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210 ], [ %i.fm, %bb.ci ]
  %i.it = getelementptr inbounds nuw i8, ptr %.0258, i64 1028
  %i.iu = load i32, ptr %i.it, align 4
  %i.iv = icmp eq i32 %i.iu, 0
  br i1 %i.iv, label %bb.ck, label %bb.cs

bb.ck:                                            ; preds = %bb.cj
  %i.iw = getelementptr inbounds nuw i8, ptr %.0258, i64 1040
  %i.ix = load i32, ptr %i.iw, align 8
  %i.iy = icmp eq i32 %i.ix, 0
  br i1 %i.iy, label %bb.cl, label %bb.cs

bb.cl:                                            ; preds = %bb.ck
  %i.iz = getelementptr inbounds nuw i8, ptr %.0258, i64 1056
  %i.ja = load i32, ptr %i.iz, align 8
  %i.jb = icmp eq i32 %i.ja, 0
  br i1 %i.jb, label %bb.cm, label %bb.cs

bb.cm:                                            ; preds = %bb.cl
  %i.jc = getelementptr inbounds nuw i8, ptr %.0258, i64 1032
  %i.jd = load ptr, ptr %i.jc, align 8            ; 2 uses
  %i.je = icmp eq ptr %i.jd, null
  br i1 %i.je, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void @_ZdaPv(ptr noundef nonnull %i.jd) #29
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.jf = getelementptr inbounds nuw i8, ptr %.0258, i64 1048
  %i.jg = load ptr, ptr %i.jf, align 8            ; 2 uses
  %i.jh = icmp eq ptr %i.jg, null
  br i1 %i.jh, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void @_ZdaPv(ptr noundef nonnull %i.jg) #29
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.ji = getelementptr inbounds nuw i8, ptr %.0258, i64 1064
  %i.jj = load ptr, ptr %i.ji, align 8            ; 2 uses
  %i.jk = icmp eq ptr %i.jj, null
  br i1 %i.jk, label %_ZN10aiNodeAnimD2Ev.exit, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  call void @_ZdaPv(ptr noundef nonnull %i.jj) #29
  br label %_ZN10aiNodeAnimD2Ev.exit

_ZN10aiNodeAnimD2Ev.exit:                         ; preds = %bb.cq, %bb.cr
  call void @_ZdlPvm(ptr noundef nonnull %.0258, i64 noundef 1080) #29
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit220

bb.cs:                                            ; preds = %bb.cl, %bb.ck, %bb.cj
  %i.jl = load ptr, ptr %i.fc, align 8            ; 3 uses
  %i.jm = load ptr, ptr %i.fd, align 8
  %.not.i211 = icmp eq ptr %i.jl, %i.jm
  br i1 %.not.i211, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  store ptr %.0258, ptr %i.jl, align 8
  %i.jn = load ptr, ptr %i.fc, align 8
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  store ptr %i.jo, ptr %i.fc, align 8
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit220

bb.cu:                                            ; preds = %bb.cs
  %i.jp = load ptr, ptr %1, align 8               ; 4 uses
  %i.jq = ptrtoint ptr %i.jl to i64
  %i.jr = ptrtoint ptr %i.jp to i64
  %i.js = sub i64 %i.jq, %i.jr                    ; 6 uses
  %i.jt = icmp eq i64 %i.js, 9223372036854775800
  br i1 %i.jt, label %bb.cv, label %_ZNKSt6vectorIP10aiNodeAnimSaIS1_EE12_M_check_lenEmPKc.exit.i.i212

bb.cv:                                            ; preds = %bb.cu
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.224) #31
          to label %.noexc218 unwind label %.loopexit.split-lp

.noexc218:                                        ; preds = %bb.cv
  unreachable

_ZNKSt6vectorIP10aiNodeAnimSaIS1_EE12_M_check_lenEmPKc.exit.i.i212: ; preds = %bb.cu
  %i.ju = ashr exact i64 %i.js, 3                 ; 3 uses
  %.sroa.speculated.i.i.i213 = call i64 @llvm.umax.i64(i64 %i.ju, i64 1)
  %i.jv = add nsw i64 %.sroa.speculated.i.i.i213, %i.ju ; 2 uses
  %i.jw = icmp ult i64 %i.jv, %i.ju
  %i.jx = call i64 @llvm.umin.i64(i64 %i.jv, i64 1152921504606846975)
  %i.jy = select i1 %i.jw, i64 1152921504606846975, i64 %i.jx ; 3 uses
  %.not.i.i.i214 = icmp ne i64 %i.jy, 0
  call void @llvm.assume(i1 %.not.i.i.i214)
  %i.jz = shl nuw nsw i64 %i.jy, 3
  %i.ka = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jz) #30
          to label %.noexc219 unwind label %.loopexit ; 4 uses

.noexc219:                                        ; preds = %_ZNKSt6vectorIP10aiNodeAnimSaIS1_EE12_M_check_lenEmPKc.exit.i.i212
  %i.kb = getelementptr inbounds i8, ptr %i.ka, i64 %i.js ; 2 uses
  store ptr %.0258, ptr %i.kb, align 8
  %i.kc = icmp sgt i64 %i.js, 0
  br i1 %i.kc, label %bb.cw, label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i215

bb.cw:                                            ; preds = %.noexc219
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ka, ptr align 8 %i.jp, i64 %i.js, i1 false)
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i215

_ZNSt6vectorIP10aiNodeAnimSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i215: ; preds = %bb.cw, %.noexc219
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  %.not.i17.i.i216 = icmp eq ptr %i.jp, null
  br i1 %.not.i17.i.i216, label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i217, label %bb.cx

bb.cx:                                            ; preds = %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i215
  call void @_ZdlPvm(ptr noundef nonnull %i.jp, i64 noundef %i.js) #29
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i217

_ZNSt6vectorIP10aiNodeAnimSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i217: ; preds = %bb.cx, %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i215
  store ptr %i.ka, ptr %1, align 8
  store ptr %i.kd, ptr %i.fc, align 8
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %i.jy
  store ptr %i.ke, ptr %i.fd, align 8
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit220

_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit220: ; preds = %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i217, %bb.ct, %_ZN10aiNodeAnimD2Ev.exit
  %i.kf = load ptr, ptr %12, align 8              ; 2 uses
  %i.kg = icmp eq ptr %i.kf, %i.fg
  br i1 %i.kg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221: ; preds = %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit220
  %i.kh = load i64, ptr %i.fg, align 8
  %i.ki = add i64 %i.kh, 1
  call void @_ZdlPvm(ptr noundef %i.kf, i64 noundef %i.ki) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223: ; preds = %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backERKS1_.exit220, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %bb.cz

bb.cy:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197, %bb.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181
  %.pn138 = phi { ptr, i32 } [ %i.hp, %bb.ca ], [ %i.ga, %bb.bm ], [ %lpad.phi272, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181 ], [ %lpad.phi267, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.kj = load ptr, ptr %12, align 8              ; 2 uses
  %i.kk = icmp eq ptr %i.kj, %i.fg
  br i1 %i.kk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224: ; preds = %bb.cy
  %i.kl = load i64, ptr %i.fg, align 8
  %i.km = add i64 %i.kl, 1
  call void @_ZdlPvm(ptr noundef %i.kj, i64 noundef %i.km) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226: ; preds = %bb.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %bb.dc

bb.cz:                                            ; preds = %bb.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223
  %.2118 = phi i32 [ %.1117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223 ], [ %.0116303, %bb.az ] ; 2 uses
  %i.kn = add nuw nsw i64 %.0114306, 1            ; 2 uses
  %i.ko = shl i32 %.0115304, 1
  %exitcond308.not = icmp eq i64 %i.kn, 17
  br i1 %exitcond308.not, label %bb.ay, label %bb.az, !llvm.loop !355

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_jEEEixERSB_.exit: ; preds = %bb.ay
  store i32 %.2118, ptr %i.fi, align 4
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA68_KcEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA68_KcEEEvDpOT_.exit: ; preds = %bb.ao, %bb.ar, %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %.noexc171, %.noexc168, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_jEEEixERSB_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  %i.kp = load ptr, ptr %i.g, align 8
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaISD_EEESt10_Select1stISG_ESt4lessIS5_ESaISG_EE8_M_eraseEPSt13_Rb_tree_nodeISG_E(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef %i.kp)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaISB_EESt4lessIS5_ESaISt4pairIKS5_SD_EEED2Ev.exit unwind label %bb.da

bb.da:                                            ; preds = %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA68_KcEEEvDpOT_.exit
  %i.kq = landingpad { ptr, i32 }
          catch ptr null
  %i.kr = extractvalue { ptr, i32 } %i.kq, 0
  call void @__clang_call_terminate(ptr %i.kr) #32
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaISB_EESt4lessIS5_ESaISt4pairIKS5_SD_EEED2Ev.exit: ; preds = %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA68_KcEEEvDpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  ret void

bb.db:                                            ; preds = %bb.ay
  %i.ks = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

bb.dc:                                            ; preds = %bb.ap, %bb.aw, %bb.db, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226, %bb.bc, %bb.ac, %bb.ad, %bb.ag
  %.pn144.pn = phi { ptr, i32 } [ %i.dn, %bb.ag ], [ %i.de, %bb.ac ], [ %i.fn, %bb.bc ], [ %i.df, %bb.ad ], [ %i.ks, %bb.db ], [ %.pn138, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226 ], [ %i.fb, %bb.aw ], [ %i.ee, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.dd

bb.dd:                                            ; preds = %.loopexit273, %.loopexit.split-lp274, %bb.dc
  %.pn147 = phi { ptr, i32 } [ %.pn144.pn, %bb.dc ], [ %lpad.loopexit275, %.loopexit273 ], [ %lpad.loopexit.split-lp276, %.loopexit.split-lp274 ]
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaISB_EESt4lessIS5_ESaISt4pairIKS5_SD_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  resume { ptr, i32 } %.pn147
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPP10aiNodeAnimSt6vectorIS3_SaIS3_EEEEN6Assimp3FBX4Util10delete_funIS2_EEET0_T_SF_SE_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %.not4 = icmp eq ptr %0, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph

end_hunk_1

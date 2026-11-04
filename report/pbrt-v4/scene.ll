Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/scene?download=true
inline.NumInlined: 8765
inline.NumDeleted: 2913
loop-unroll.NumCompletelyUnrolled: 48
loop-unroll.NumRuntimeUnrolled: 78
loop-unroll.NumUnrolled: 126
begin_hunk_0_@_ZN4pbrt17BasicSceneBuilder17CoordSysTransformERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7FileLocE:bb.a
  br i1 %i.ah, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt12TransformSetESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4pbrt12TransformSetEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !87 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.aj, i64 %i.x) ; 2 uses
  %i.ak = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.ak, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !89
  %i.an = call i32 @memcmp(ptr noundef %i.y, ptr noundef %i.am, i64 noundef %.sroa.speculated.i.i.i.i.i) #32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.an, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt12TransformSetESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.f
  %i.ao = sub i64 %i.x, %i.aj
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ao, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt12TransformSetESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt12TransformSetESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.an, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.ap = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.ap, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt12TransformSetESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt12TransformSetESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
  %i.aq = invoke noundef nonnull align 4 dereferenceable(256) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt12TransformSetESt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 800
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(256) %i.ar, ptr noundef nonnull align 4 dereferenceable(256) %i.aq, i64 256, i1 false), !tbaa.struct !215
  br label %bb.n

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = load ptr, ptr %5, align 8, !tbaa !89    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.b
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.i
  %i.av = load i64, ptr %i.b, align 8, !tbaa !88
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.sink.split

bb.j:                                             ; preds = %bb.g
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt12TransformSetESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4pbrt12TransformSetEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt12TransformSetESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.ax, ptr %3, align 8, !tbaa !85, !alias.scope !663
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.ay, align 8, !tbaa !87, !alias.scope !663
  store i8 0, ptr %i.ax, align 8, !tbaa !88, !alias.scope !663
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEvPS7_PKcOT_DpOT0_(ptr noundef nonnull align 8 %3, ptr noundef nonnull @.str.18, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i unwind label %bb.k

bb.k:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt12TransformSetESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = load ptr, ptr %3, align 8, !tbaa !89, !alias.scope !663 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.ax
  br i1 %i.bb, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.k
  %i.bc = load i64, ptr %i.ax, align 8, !tbaa !88, !alias.scope !663
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #33
  br label %.body

_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt12TransformSetESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread
  %i.be = load ptr, ptr %3, align 8, !tbaa !89
  invoke void @_ZN4pbrt7WarningEPKNS_7FileLocEPKc(ptr noundef nonnull %2, ptr noundef %i.be)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i
  %i.bf = load ptr, ptr %3, align 8, !tbaa !89    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.ax
  br i1 %i.bg, label %_ZN4pbrt7WarningIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKNS_7FileLocEPKcDpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.l
  %i.bh = load i64, ptr %i.ax, align 8, !tbaa !88
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #33
  br label %_ZN4pbrt7WarningIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKNS_7FileLocEPKcDpOT_.exit

bb.m:                                             ; preds = %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  %i.bk = load ptr, ptr %3, align 8, !tbaa !89    ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.ax
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %bb.m
  %i.bm = load i64, ptr %i.ax, align 8, !tbaa !88
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %.body

_ZN4pbrt7WarningIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKNS_7FileLocEPKcDpOT_.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.n

bb.n:                                             ; preds = %_ZN4pbrt7WarningIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKNS_7FileLocEPKcDpOT_.exit, %bb.h
  %i.bo = load ptr, ptr %4, align 8, !tbaa !89    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %bb.n
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !88
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret void

.body:                                            ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, %bb.j
  %.pn = phi { ptr, i32 } [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.aw, %bb.j ], [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i ], [ %i.az, %bb.k ] ; 2 uses
  %i.bt = load ptr, ptr %4, align 8, !tbaa !89    ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %.body
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !88
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.sink.split: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  %.sink33 = phi i64 [ %i.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13 ], [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7 ]
  %.sink = phi ptr [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13 ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7 ]
  %.pn.pn.ph = phi { ptr, i32 } [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13 ], [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7 ]
  %i.bx = add i64 %.sink33, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bx) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.sink.split, %.body, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.as, %bb.i ], [ %.pn, %.body ], [ %.pn.pn.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt17BasicSceneBuilder6CameraERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorISB_EEEENS_7FileLocE(ptr noundef nonnull align 64 dereferenceable(3544) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef align 8 captures(none) dereferenceable(96) %2, ptr noundef byval(%"struct.pbrt::FileLoc") align 8 %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.pbrt::Transform", align 4   ; 9 uses
  %5 = alloca %"class.pbrt::ParameterDictionary", align 8 ; 12 uses
  %6 = alloca %"class.pbrt::InlinedVector", align 8 ; 8 uses
  %7 = alloca %"struct.pbrt::TransformSet", align 4 ; 6 uses
  %.sroa.6 = alloca [16 x i8], align 4            ; 5 uses
  %.sroa.8 = alloca [16 x i8], align 4            ; 5 uses
  %.sroa.10 = alloca [16 x i8], align 4           ; 5 uses
  %.sroa.11.sroa.5 = alloca [64 x i8], align 4    ; 5 uses
  %.sroa.11.sroa.7 = alloca [16 x i8], align 4    ; 5 uses
  %.sroa.11.sroa.9 = alloca [16 x i8], align 4    ; 5 uses
  %.sroa.11.sroa.11 = alloca [16 x i8], align 4   ; 5 uses
  %.sroa.11.sroa.13 = alloca [64 x i8], align 4   ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.pbrt::CameraTransform", align 4 ; 7 uses
  %10 = alloca %"class.pbrt::AnimatedTransform", align 4 ; 5 uses
  %11 = alloca %"class.pbrt::Transform", align 4  ; 5 uses
  %12 = alloca %"struct.pbrt::CameraSceneEntity", align 8 ; 19 uses
  %13 = alloca %"class.pbrt::ParameterDictionary", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.a = load i64, ptr %2, align 8, !tbaa !102
  store i64 %i.a, ptr %6, align 8, !tbaa !102
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.g = load i64, ptr %i.e, align 8, !tbaa !109  ; 3 uses
  %i.h = load <2 x i64>, ptr %i.f, align 8, !tbaa !198
  store <2 x i64> %i.h, ptr %i.c, align 8, !tbaa !198
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !103
  store ptr %i.j, ptr %i.b, align 8, !tbaa !103
  %i.k = icmp ult i64 %i.g, 9
  br i1 %i.k, label %.preheader.i, label %bb.b

.preheader.i:                                     ; preds = %bb.a
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = shl nuw nsw i64 %i.g, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %i.m, i64 %i.n, i1 false), !tbaa !189
  br label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.e, align 8, !tbaa !109
  br label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit

_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit: ; preds = %.lr.ph.i, %.preheader.i, %bb.b
  store i64 0, ptr %i.f, align 8, !tbaa !110
  store ptr null, ptr %i.i, align 8, !tbaa !103
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !213
  invoke void @_ZN4pbrt19ParameterDictionaryC1ENS_13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS3_EEEEPKNS_13RGBColorSpaceE(ptr noundef nonnull align 8 dereferenceable(108) %5, ptr nofree noundef nonnull align 8 dereferenceable(96) %6, ptr noundef %i.p)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit
  store i64 0, ptr %i.d, align 8, !tbaa !109
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !103  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load i64, ptr %i.c, align 8, !tbaa !110
  %i.s = shl i64 %i.r, 3
  %i.t = load ptr, ptr %6, align 8, !tbaa !111    ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !72
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  invoke void %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull %i.q, i64 noundef %i.s, i64 noundef 8)
          to label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit unwind label %bb.e, !inline_history !3

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #31
  unreachable

_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit: ; preds = %bb.c, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !166
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %bb.f, label %._crit_edge.i.i

bb.f:                                             ; preds = %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit
  invoke void @_ZN4pbrt9ErrorExitIJRA7_KcEEEvPKNS_7FileLocEPS1_DpOT_(ptr noundef nonnull %3, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(7) @.str.20) #34
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %6) #32
  br label %bb.ai

bb.i:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

._crit_edge.i.i:                                  ; preds = %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 2 uses
  %.sroa.041.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  %.sroa.041.sroa.5.0.copyload = load float, ptr %.sroa.041.sroa.5.0..sroa_idx, align 32
  %.sroa.041.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 868
  %.sroa.041.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 884
  %.sroa.041.sroa.7.0.copyload = load float, ptr %.sroa.041.sroa.7.0..sroa_idx, align 4
  %.sroa.041.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 888
  %.sroa.041.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 904
  %.sroa.041.sroa.9.0.copyload = load float, ptr %.sroa.041.sroa.9.0..sroa_idx, align 8
  %.sroa.041.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 908
  %.sroa.041.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 924
  %.sroa.041.sroa.11.0.copyload = load float, ptr %.sroa.041.sroa.11.0..sroa_idx, align 4
  %.sroa.041.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 2 uses
  %.sroa.041.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 992 ; 2 uses
  %.sroa.041.sroa.13.0.copyload = load float, ptr %.sroa.041.sroa.13.0..sroa_idx, align 32
  %.sroa.041.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 996
  %.sroa.041.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1012
  %.sroa.041.sroa.15.0.copyload = load float, ptr %.sroa.041.sroa.15.0..sroa_idx, align 4
  %.sroa.041.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %.sroa.041.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %.sroa.041.sroa.17.0.copyload = load float, ptr %.sroa.041.sroa.17.0..sroa_idx, align 8
  %.sroa.041.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1036
  %.sroa.041.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1052
  %.sroa.041.sroa.19.0.copyload = load float, ptr %.sroa.041.sroa.19.0..sroa_idx, align 4, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  %.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %7, i64 128 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %4, ptr noundef nonnull align 32 dereferenceable(64) %.sroa.041.sroa.5.0..sroa_idx, i64 64, i1 false), !tbaa.struct !217, !noalias !666
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.af, ptr noundef nonnull align 32 dereferenceable(256) %i.ae, i64 64, i1 false), !tbaa.struct !217, !noalias !666
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %7, ptr noundef nonnull align 4 dereferenceable(128) %4, i64 128, i1 false), !tbaa.struct !214
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %4, ptr noundef nonnull align 32 dereferenceable(64) %.sroa.041.sroa.13.0..sroa_idx, i64 64, i1 false), !tbaa.struct !217, !noalias !666
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.af, ptr noundef nonnull align 32 dereferenceable(128) %.sroa.041.sroa.12.0..sroa_idx, i64 64, i1 false), !tbaa.struct !217, !noalias !666
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %.ptr.1.i.i, ptr noundef nonnull align 4 dereferenceable(128) %4, i64 128, i1 false), !tbaa.struct !214
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.sroa.13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.041.sroa.6.0..sroa_idx, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.041.sroa.8.0..sroa_idx, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.10, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.041.sroa.10.0..sroa_idx, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %.sroa.11.sroa.5, ptr noundef nonnull align 32 dereferenceable(64) %i.ae, i64 64, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.11.sroa.7, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.041.sroa.14.0..sroa_idx, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.11.sroa.9, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.041.sroa.16.0..sroa_idx, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.11.sroa.11, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.041.sroa.18.0..sroa_idx, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %.sroa.11.sroa.13, ptr noundef nonnull align 32 dereferenceable(64) %.sroa.041.sroa.12.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.ag, ptr %8, align 8, !tbaa !85
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ag, ptr noundef nonnull align 1 dereferenceable(6) @.str.21, i64 6, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 6, ptr %i.ah, align 8, !tbaa !87
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 22
  store i8 0, ptr %i.ai, align 2, !tbaa !88
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.ak = invoke noundef nonnull align 4 dereferenceable(256) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt12TransformSetESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.j unwind label %bb.aa      ; 16 uses

bb.j:                                             ; preds = %._crit_edge.i.i
  store float %.sroa.041.sroa.5.0.copyload, ptr %i.ak, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6, i64 16, i1 false), !tbaa.struct !667
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  store float %.sroa.041.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8, i64 16, i1 false), !tbaa.struct !668
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  store float %.sroa.041.sroa.9.0.copyload, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.10, i64 16, i1 false), !tbaa.struct !669
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 60
  store float %.sroa.041.sroa.11.0.copyload, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.11.sroa.5.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %.sroa.11.sroa.5.0..sroa.11.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(64) %.sroa.11.sroa.5, i64 64, i1 false), !tbaa.struct !670
  %.sroa.11.sroa.6.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 128
  store float %.sroa.041.sroa.13.0.copyload, ptr %.sroa.11.sroa.6.0..sroa.11.0..sroa_idx.sroa_idx, align 4
  %.sroa.11.sroa.7.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.11.sroa.7.0..sroa.11.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.11.sroa.7, i64 16, i1 false), !tbaa.struct !671
  %.sroa.11.sroa.8.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 148
  store float %.sroa.041.sroa.15.0.copyload, ptr %.sroa.11.sroa.8.0..sroa.11.0..sroa_idx.sroa_idx, align 4
  %.sroa.11.sroa.9.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.11.sroa.9.0..sroa.11.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.11.sroa.9, i64 16, i1 false), !tbaa.struct !672
  %.sroa.11.sroa.10.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 168
  store float %.sroa.041.sroa.17.0.copyload, ptr %.sroa.11.sroa.10.0..sroa.11.0..sroa_idx.sroa_idx, align 4
  %.sroa.11.sroa.11.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 172
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.11.sroa.11.0..sroa.11.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.11.sroa.11, i64 16, i1 false), !tbaa.struct !673
  %.sroa.11.sroa.12.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 188
  store float %.sroa.041.sroa.19.0.copyload, ptr %.sroa.11.sroa.12.0..sroa.11.0..sroa_idx.sroa_idx, align 4
  %.sroa.11.sroa.13.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %.sroa.11.sroa.13.0..sroa.11.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(64) %.sroa.11.sroa.13, i64 64, i1 false), !tbaa.struct !217
  %i.al = load ptr, ptr %8, align 8, !tbaa !89    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.ag
  br i1 %i.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.an = load i64, ptr %i.ag, align 8, !tbaa !88
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #33
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.sroa.11)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.sroa.13)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1060
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !218
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.as = load float, ptr %i.ar, align 8, !tbaa !219
  invoke void @_ZN4pbrt17AnimatedTransformC1ERKNS_9TransformEfS3_f(ptr noundef nonnull align 4 dereferenceable(696) %10, ptr noundef nonnull align 4 dereferenceable(128) %7, float noundef %i.aq, ptr noundef nonnull align 4 dereferenceable(128) %.ptr.1.i.i, float noundef %i.as)
          to label %bb.k unwind label %bb.ab

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  invoke void @_ZN4pbrt15CameraTransformC1ERKNS_17AnimatedTransformE(ptr noundef nonnull align 4 dereferenceable(824) %9, ptr noundef nonnull align 4 dereferenceable(696) %10)
          to label %bb.l unwind label %bb.ab

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 696
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 760
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %11, ptr noundef nonnull align 4 dereferenceable(64) %i.au, i64 64, i1 false), !tbaa.struct !217
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.av, ptr noundef nonnull align 4 dereferenceable(128) %i.at, i64 64, i1 false), !tbaa.struct !217
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(128) %i.aw, ptr noundef nonnull align 4 dereferenceable(128) %11, i64 128, i1 false), !tbaa.struct !214
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  %i.ax = load i64, ptr %5, align 8, !tbaa !102
  store i64 %i.ax, ptr %13, align 8, !tbaa !102
  %i.ay = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %13, i64 80 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %13, i64 88
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 3 uses
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !109 ; 3 uses
  %i.be = load <2 x i64>, ptr %i.bc, align 8, !tbaa !198
  store <2 x i64> %i.be, ptr %i.az, align 8, !tbaa !198
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !103
  store ptr %i.bg, ptr %i.ay, align 8, !tbaa !103
  %i.bh = icmp ult i64 %i.bd, 9
  br i1 %i.bh, label %.preheader.i.i, label %bb.m

.preheader.i.i:                                   ; preds = %bb.l
  %.not.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bk = shl nuw nsw i64 %i.bd, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bi, ptr nonnull align 8 %i.bj, i64 %i.bk, i1 false), !tbaa !189
  br label %.loopexit

bb.m:                                             ; preds = %bb.l
  store i64 0, ptr %i.bb, align 8, !tbaa !109
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.m, %.preheader.i.i
  store i64 0, ptr %i.bc, align 8, !tbaa !110
  store ptr null, ptr %i.bf, align 8, !tbaa !103
  %i.bl = getelementptr inbounds nuw i8, ptr %13, i64 96
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bl, ptr noundef nonnull align 8 dereferenceable(12) %i.bm, i64 12, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke void @_ZN4pbrt17CameraSceneEntityC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_19ParameterDictionaryENS_7FileLocERKNS_15CameraTransformES8_(ptr noundef nonnull align 8 dereferenceable(1000) %12, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef nonnull align 8 dereferenceable(112) %13, ptr noundef nonnull byval(%"struct.pbrt::FileLoc") align 8 %3, ptr noundef nonnull align 4 dereferenceable(824) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.bn)
          to label %bb.n unwind label %bb.ac

bb.n:                                             ; preds = %.loopexit
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 2544
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1000) %i.bo, ptr noundef nonnull align 8 dereferenceable(1000) %12, i64 32, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 2576
  %i.bq = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  %i.br = invoke noundef nonnull align 8 dereferenceable(96) ptr @_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEaSEOS7_(ptr noundef nonnull align 8 dereferenceable(108) %i.bp, ptr noundef nonnull align 8 dereferenceable(108) %i.bq)
          to label %.noexc25 unwind label %bb.ad  ; 0 uses

.noexc25:                                         ; preds = %bb.n
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 2672
  %i.bt = getelementptr inbounds nuw i8, ptr %12, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.bs, ptr noundef nonnull align 8 dereferenceable(12) %i.bt, i64 12, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 2688
  %i.bv = getelementptr inbounds nuw i8, ptr %12, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(824) %i.bu, ptr noundef nonnull align 8 dereferenceable(824) %i.bv, i64 824, i1 false), !tbaa.struct !221
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 3512 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %12, i64 968 ; 5 uses
  %i.by = load ptr, ptr %i.bw, align 8, !tbaa !89 ; 6 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 3528 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  %i.cb = load ptr, ptr %i.bx, align 8, !tbaa !89 ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %12, i64 984 ; 4 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc                ; 2 uses
  br i1 %i.ca, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %.noexc25
  br i1 %i.cd, label %bb.o, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22: ; preds = %.noexc25
  br i1 %i.cd, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  %i.ce = getelementptr inbounds nuw i8, ptr %12, i64 976 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !87 ; 3 uses
  %i.cg = icmp ult i64 %i.cf, 16
  call void @llvm.assume(i1 %i.cg)
  switch i64 %i.cf, label %bb.q [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o
  %i.ch = load i8, ptr %i.cb, align 1, !tbaa !88
  store i8 %i.ch, ptr %i.by, align 1, !tbaa !88
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.q:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.by, ptr align 1 %i.cb, i64 %i.cf, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.q, %bb.p, %bb.o
  %i.ci = load i64, ptr %i.ce, align 8, !tbaa !87 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 3520
  store i64 %i.ci, ptr %i.cj, align 64, !tbaa !87
  %i.ck = load ptr, ptr %i.bw, align 8, !tbaa !89
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.ci
  store i8 0, ptr %i.cl, align 1, !tbaa !88
  %.pre.i.i = load ptr, ptr %i.bx, align 8, !tbaa !89
  br label %bb.t

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 3520
  store ptr %i.cb, ptr %i.bw, align 8, !tbaa !89
  %i.cn = getelementptr inbounds nuw i8, ptr %12, i64 976
  %i.co = load <2 x i64>, ptr %i.cn, align 8, !tbaa !88
  store <2 x i64> %i.co, ptr %i.cm, align 64, !tbaa !88
  br label %bb.s

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22
  %i.cp = load i64, ptr %i.bz, align 8, !tbaa !88
  store ptr %i.cb, ptr %i.bw, align 8, !tbaa !89
  %i.cq = getelementptr inbounds nuw i8, ptr %12, i64 976
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 3520
  %i.cs = load <2 x i64>, ptr %i.cq, align 8, !tbaa !88
  store <2 x i64> %i.cs, ptr %i.cr, align 64, !tbaa !88
  %.not.i.i23 = icmp eq ptr %i.by, null
  br i1 %.not.i.i23, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.by, ptr %i.bx, align 8, !tbaa !89
  store i64 %i.cp, ptr %i.cc, align 8, !tbaa !88
  br label %bb.t

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.cc, ptr %i.bx, align 8, !tbaa !89
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
  %i.ct = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.by, %bb.r ], [ %i.cc, %bb.s ]
  %i.cu = getelementptr inbounds nuw i8, ptr %12, i64 976
  store i64 0, ptr %i.cu, align 8, !tbaa !87
  store i8 0, ptr %i.ct, align 1, !tbaa !88
  %i.cv = load ptr, ptr %i.bx, align 8, !tbaa !89 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %12, i64 984 ; 2 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.t
  %i.cy = load i64, ptr %i.cw, align 8, !tbaa !88
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cz) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %12, i64 120
  store i64 0, ptr %i.da, align 8, !tbaa !109
  %i.db = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4pbrt17CameraSceneEntityD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.dd = getelementptr inbounds nuw i8, ptr %12, i64 112
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !110
  %i.df = shl i64 %i.de, 3
  %i.dg = load ptr, ptr %i.bq, align 8, !tbaa !111 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !72
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load ptr, ptr %i.di, align 8
  invoke void %i.dj(ptr noundef nonnull align 8 dereferenceable(8) %i.dg, ptr noundef nonnull %i.dc, i64 noundef %i.df, i64 noundef 8)
          to label %_ZN4pbrt17CameraSceneEntityD2Ev.exit unwind label %bb.v, !inline_history !3

bb.v:                                             ; preds = %bb.u
  %i.dk = landingpad { ptr, i32 }
          catch ptr null
  %i.dl = extractvalue { ptr, i32 } %i.dk, 0
  call void @__clang_call_terminate(ptr %i.dl) #31
  unreachable

_ZN4pbrt17CameraSceneEntityD2Ev.exit:             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.u
  store i64 0, ptr %i.ba, align 8, !tbaa !109
  %i.dm = load ptr, ptr %i.ay, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i.i.i, label %_ZN4pbrt19ParameterDictionaryD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZN4pbrt17CameraSceneEntityD2Ev.exit
  %i.dn = load i64, ptr %i.az, align 8, !tbaa !110
  %i.do = shl i64 %i.dn, 3
  %i.dp = load ptr, ptr %13, align 8, !tbaa !111  ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !72
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8
  invoke void %i.ds(ptr noundef nonnull align 8 dereferenceable(8) %i.dp, ptr noundef nonnull %i.dm, i64 noundef %i.do, i64 noundef 8)
          to label %_ZN4pbrt19ParameterDictionaryD2Ev.exit unwind label %bb.x, !inline_history !3

bb.x:                                             ; preds = %bb.w
  %i.dt = landingpad { ptr, i32 }
          catch ptr null
  %i.du = extractvalue { ptr, i32 } %i.dt, 0
  call void @__clang_call_terminate(ptr %i.du) #31
  unreachable

_ZN4pbrt19ParameterDictionaryD2Ev.exit:           ; preds = %_ZN4pbrt17CameraSceneEntityD2Ev.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  store i64 0, ptr %i.bb, align 8, !tbaa !109
  %i.dv = load ptr, ptr %i.bf, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i.i26 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i.i.i26, label %_ZN4pbrt19ParameterDictionaryD2Ev.exit27, label %bb.y

bb.y:                                             ; preds = %_ZN4pbrt19ParameterDictionaryD2Ev.exit
  %i.dw = load i64, ptr %i.bc, align 8, !tbaa !110
  %i.dx = shl i64 %i.dw, 3
  %i.dy = load ptr, ptr %5, align 8, !tbaa !111   ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !72
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8
  invoke void %i.eb(ptr noundef nonnull align 8 dereferenceable(8) %i.dy, ptr noundef nonnull %i.dv, i64 noundef %i.dx, i64 noundef 8)
          to label %_ZN4pbrt19ParameterDictionaryD2Ev.exit27 unwind label %bb.z, !inline_history !3

bb.z:                                             ; preds = %bb.y
  %i.ec = landingpad { ptr, i32 }
          catch ptr null
  %i.ed = extractvalue { ptr, i32 } %i.ec, 0
  call void @__clang_call_terminate(ptr %i.ed) #31
  unreachable

_ZN4pbrt19ParameterDictionaryD2Ev.exit27:         ; preds = %_ZN4pbrt19ParameterDictionaryD2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  ret void

bb.aa:                                            ; preds = %._crit_edge.i.i
  %i.ee = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZN4pbrt17BasicSceneBuilder9AttributeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorISB_EEEENS_7FileLocE:bb.a
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8
  tail call void %i.ch(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef nonnull %.pre.i13.i, i64 noundef %i.cd, i64 noundef 8), !inline_history !704
  %.pre5.pre.i = load i64, ptr %i.aj, align 8, !tbaa !109
  br label %_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE17deallocate_objectIS4_EEvPT_m.exit.i.i

_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE17deallocate_objectIS4_EEvPT_m.exit.i.i: ; preds = %bb.e, %._crit_edge.i.i
  %.pre5.i = phi i64 [ %.pre5.pre.i, %bb.e ], [ %i.cb, %._crit_edge.i.i ]
  store i64 %i.aw, ptr %i.al, align 32, !tbaa !110
  store ptr %.0.i.i.i.i15.i, ptr %i.ak, align 8, !tbaa !103
  br label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEE9push_backERKS2_.exit

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.7, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i14.i, i64 %indvars.iv.i.i
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i.i
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !189
  store ptr %i.ck, ptr %i.ci, align 8, !tbaa !189
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i14.i, i64 %indvars.iv.next.i.i
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next.i.i
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !189
  store ptr %i.cn, ptr %i.cl, align 8, !tbaa !189
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i14.i, i64 %indvars.iv.next.i.i.1
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next.i.i.1
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !189
  store ptr %i.cq, ptr %i.co, align 8, !tbaa !189
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i14.i, i64 %indvars.iv.next.i.i.2
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next.i.i.2
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !189
  store ptr %i.ct, ptr %i.cr, align 8, !tbaa !189
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i14.i, i64 %indvars.iv.next.i.i.3
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next.i.i.3
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !189
  store ptr %i.cw, ptr %i.cu, align 8, !tbaa !189
  %indvars.iv.next.i.i.4 = add nuw nsw i64 %indvars.iv.i.i, 5 ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i14.i, i64 %indvars.iv.next.i.i.4
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next.i.i.4
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !189
  store ptr %i.cz, ptr %i.cx, align 8, !tbaa !189
  %indvars.iv.next.i.i.5 = add nuw nsw i64 %indvars.iv.i.i, 6 ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i14.i, i64 %indvars.iv.next.i.i.5
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next.i.i.5
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !189
  store ptr %i.dc, ptr %i.da, align 8, !tbaa !189
  %indvars.iv.next.i.i.6 = add nuw nsw i64 %indvars.iv.i.i, 7 ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i14.i, i64 %indvars.iv.next.i.i.6
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next.i.i.6
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !189
  store ptr %i.df, ptr %i.dd, align 8, !tbaa !189
  %indvars.iv.next.i.i.7 = add nuw nsw i64 %indvars.iv.i.i, 8 ; 2 uses
  %exitcond.not.i.i.7 = icmp eq i64 %indvars.iv.next.i.i.7, %i.be
  br i1 %exitcond.not.i.i.7, label %._crit_edge.i.i, label %vec.epilog.scalar.ph, !llvm.loop !705

_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEE9push_backERKS2_.exit: ; preds = %bb.b, %bb.c, %_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE17deallocate_objectIS4_EEvPT_m.exit.i.i
  %i.dg = phi ptr [ %.0.i.i.i.i15.i, %_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE17deallocate_objectIS4_EEvPT_m.exit.i.i ], [ %i.an, %bb.c ], [ %i.an, %bb.b ] ; 3 uses
  %i.dh = phi i64 [ %.pre5.i, %_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE17deallocate_objectIS4_EEvPT_m.exit.i.i ], [ %i.ao, %bb.c ], [ %i.ao, %bb.b ] ; 2 uses
  %.not.i4.i = icmp eq ptr %i.dg, null
  %i.di = select i1 %.not.i4.i, ptr %i.am, ptr %i.dg
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.dh
  store ptr %i.ap, ptr %i.dj, align 8, !tbaa !189
  %i.dk = add i64 %i.dh, 1                        ; 2 uses
  store i64 %i.dk, ptr %i.aj, align 8, !tbaa !109
  %i.dl = getelementptr inbounds nuw i8, ptr %.030, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.dl, %i.ah
  br i1 %.not, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEE9push_backERKS2_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22.thread28
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !87   ; 3 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #32
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !89
  %bcmp = tail call i32 @bcmp(ptr %i.f, ptr nonnull %1, i64 %i.b)
  %i.g = icmp eq i32 %bcmp, 0
  br label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit:       ; preds = %bb.c, %bb.b, %bb.a
  %i.h = phi i1 [ false, %bb.a ], [ %i.g, %bb.c ], [ true, %bb.b ]
  ret i1 %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4pbrt12ParserTarget17ErrorExitDeferredIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKNS_7FileLocEPKcDpOT_(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.a, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !85, !alias.scope !712
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !87, !alias.scope !712
  store i8 0, ptr %i.b, align 8, !tbaa !88, !alias.scope !712
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEvPS7_PKcOT_DpOT0_(ptr noundef nonnull align 8 %4, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN4pbrt12StringPrintfIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load ptr, ptr %4, align 8, !tbaa !89, !alias.scope !712 ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.b
  br i1 %i.f, label %common.resume.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.b, align 8, !tbaa !88, !alias.scope !712
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #33
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.d, %bb.b ]
  resume { ptr, i32 } %common.resume.op.i

_ZN4pbrt12StringPrintfIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i: ; preds = %bb.a
  %i.i = load ptr, ptr %4, align 8, !tbaa !89
  invoke void @_ZN4pbrt5ErrorEPKNS_7FileLocEPKc(ptr noundef %1, ptr noundef %i.i)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i
  %i.j = load ptr, ptr %4, align 8, !tbaa !89     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.b
  br i1 %i.k, label %_ZN4pbrt5ErrorIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKNS_7FileLocEPKcDpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.l = load i64, ptr %i.b, align 8, !tbaa !88
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #33
  br label %_ZN4pbrt5ErrorIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKNS_7FileLocEPKcDpOT_.exit

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %4, align 8, !tbaa !89     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.b
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %bb.d
  %i.q = load i64, ptr %i.b, align 8, !tbaa !88
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %common.resume.i

_ZN4pbrt5ErrorIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKNS_7FileLocEPKcDpOT_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt17BasicSceneBuilder7SamplerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorISB_EEEENS_7FileLocE(ptr noundef nonnull align 64 dereferenceable(3544) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef align 8 captures(none) dereferenceable(96) %2, ptr noundef byval(%"struct.pbrt::FileLoc") align 8 %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.pbrt::ParameterDictionary", align 8 ; 12 uses
  %5 = alloca %"class.pbrt::InlinedVector", align 8 ; 8 uses
  %6 = alloca %"struct.pbrt::SceneEntity", align 8 ; 11 uses
  %7 = alloca %"class.pbrt::ParameterDictionary", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.a = load i64, ptr %2, align 8, !tbaa !102
  store i64 %i.a, ptr %5, align 8, !tbaa !102
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.g = load i64, ptr %i.e, align 8, !tbaa !109  ; 3 uses
  %i.h = load <2 x i64>, ptr %i.f, align 8, !tbaa !198
  store <2 x i64> %i.h, ptr %i.c, align 8, !tbaa !198
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !103
  store ptr %i.j, ptr %i.b, align 8, !tbaa !103
  %i.k = icmp ult i64 %i.g, 9
  br i1 %i.k, label %.preheader.i, label %bb.b

.preheader.i:                                     ; preds = %bb.a
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = shl nuw nsw i64 %i.g, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %i.m, i64 %i.n, i1 false), !tbaa !189
  br label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.e, align 8, !tbaa !109
  br label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit

_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit: ; preds = %.lr.ph.i, %.preheader.i, %bb.b
  store i64 0, ptr %i.f, align 8, !tbaa !110
  store ptr null, ptr %i.i, align 8, !tbaa !103
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !213
  invoke void @_ZN4pbrt19ParameterDictionaryC1ENS_13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS3_EEEEPKNS_13RGBColorSpaceE(ptr noundef nonnull align 8 dereferenceable(108) %4, ptr nofree noundef nonnull align 8 dereferenceable(96) %5, ptr noundef %i.p)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit
  store i64 0, ptr %i.d, align 8, !tbaa !109
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !103  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load i64, ptr %i.c, align 8, !tbaa !110
  %i.s = shl i64 %i.r, 3
  %i.t = load ptr, ptr %5, align 8, !tbaa !111    ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !72
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  invoke void %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull %i.q, i64 noundef %i.s, i64 noundef 8)
          to label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit unwind label %bb.e, !inline_history !3

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #31
  unreachable

_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit: ; preds = %bb.c, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !166
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit
  invoke void @_ZN4pbrt9ErrorExitIJRA8_KcEEEvPKNS_7FileLocEPS1_DpOT_(ptr noundef nonnull %3, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(8) @.str.36) #34
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %5) #32
  br label %bb.x

bb.i:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.j:                                             ; preds = %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.ae = load i64, ptr %4, align 8, !tbaa !102
  store i64 %i.ae, ptr %7, align 8, !tbaa !102
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 3 uses
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !109 ; 3 uses
  %i.al = load <2 x i64>, ptr %i.aj, align 8, !tbaa !198
  store <2 x i64> %i.al, ptr %i.ag, align 8, !tbaa !198
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !103
  store ptr %i.an, ptr %i.af, align 8, !tbaa !103
  %i.ao = icmp ult i64 %i.ak, 9
  br i1 %i.ao, label %.preheader.i.i, label %bb.k

.preheader.i.i:                                   ; preds = %bb.j
  %.not.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ar = shl nuw nsw i64 %i.ak, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ap, ptr nonnull align 8 %i.aq, i64 %i.ar, i1 false), !tbaa !189
  br label %.loopexit

bb.k:                                             ; preds = %bb.j
  store i64 0, ptr %i.ai, align 8, !tbaa !109
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.k, %.preheader.i.i
  store i64 0, ptr %i.aj, align 8, !tbaa !110
  store ptr null, ptr %i.am, align 8, !tbaa !103
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.as, ptr noundef nonnull align 8 dereferenceable(12) %i.at, i64 12, i1 false)
  invoke void @_ZN4pbrt11SceneEntityC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_19ParameterDictionaryENS_7FileLocE(ptr noundef nonnull align 8 dereferenceable(144) %6, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef nonnull align 8 dereferenceable(112) %7, ptr noundef nonnull byval(%"struct.pbrt::FileLoc") align 8 %3)
          to label %bb.l unwind label %bb.t

bb.l:                                             ; preds = %.loopexit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1824
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(144) %i.au, ptr noundef nonnull align 8 dereferenceable(144) %6, i64 32, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1856
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.ax = invoke noundef nonnull align 8 dereferenceable(96) ptr @_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEaSEOS7_(ptr noundef nonnull align 8 dereferenceable(108) %i.av, ptr noundef nonnull align 8 dereferenceable(108) %i.aw)
          to label %bb.m unwind label %bb.u       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1952
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(12) %i.ay, ptr noundef nonnull align 8 dereferenceable(12) %i.az, i64 12, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i64 0, ptr %i.ba, align 8, !tbaa !109
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4pbrt11SceneEntityD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !110
  %i.bf = shl i64 %i.be, 3
  %i.bg = load ptr, ptr %i.aw, align 8, !tbaa !111 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !72
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  invoke void %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef nonnull %i.bc, i64 noundef %i.bf, i64 noundef 8)
          to label %_ZN4pbrt11SceneEntityD2Ev.exit unwind label %bb.o, !inline_history !3

bb.o:                                             ; preds = %bb.n
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #31
  unreachable

_ZN4pbrt11SceneEntityD2Ev.exit:                   ; preds = %bb.m, %bb.n
  store i64 0, ptr %i.ah, align 8, !tbaa !109
  %i.bm = load ptr, ptr %i.af, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i.i, label %_ZN4pbrt19ParameterDictionaryD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4pbrt11SceneEntityD2Ev.exit
  %i.bn = load i64, ptr %i.ag, align 8, !tbaa !110
  %i.bo = shl i64 %i.bn, 3
  %i.bp = load ptr, ptr %7, align 8, !tbaa !111   ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !72
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8
  invoke void %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull %i.bm, i64 noundef %i.bo, i64 noundef 8)
          to label %_ZN4pbrt19ParameterDictionaryD2Ev.exit unwind label %bb.q, !inline_history !3

bb.q:                                             ; preds = %bb.p
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #31
  unreachable

_ZN4pbrt19ParameterDictionaryD2Ev.exit:           ; preds = %_ZN4pbrt11SceneEntityD2Ev.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  store i64 0, ptr %i.ai, align 8, !tbaa !109
  %i.bv = load ptr, ptr %i.am, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i.i12 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i.i12, label %_ZN4pbrt19ParameterDictionaryD2Ev.exit13, label %bb.r

bb.r:                                             ; preds = %_ZN4pbrt19ParameterDictionaryD2Ev.exit
  %i.bw = load i64, ptr %i.aj, align 8, !tbaa !110
  %i.bx = shl i64 %i.bw, 3
  %i.by = load ptr, ptr %4, align 8, !tbaa !111   ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !72
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  invoke void %i.cb(ptr noundef nonnull align 8 dereferenceable(8) %i.by, ptr noundef nonnull %i.bv, i64 noundef %i.bx, i64 noundef 8)
          to label %_ZN4pbrt19ParameterDictionaryD2Ev.exit13 unwind label %bb.s, !inline_history !3

bb.s:                                             ; preds = %bb.r
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  call void @__clang_call_terminate(ptr %i.cd) #31
  unreachable

_ZN4pbrt19ParameterDictionaryD2Ev.exit13:         ; preds = %_ZN4pbrt19ParameterDictionaryD2Ev.exit, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret void

bb.t:                                             ; preds = %.loopexit
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %bb.l
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt11SceneEntityD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %6) #32
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.cf, %bb.u ], [ %i.ce, %bb.t ]
  call void @_ZN4pbrt19ParameterDictionaryD2Ev(ptr noundef nonnull align 8 dead_on_return(108) dereferenceable(108) %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.i
  %.pn9 = phi { ptr, i32 } [ %i.ad, %bb.i ], [ %.pn, %bb.v ]
  call void @_ZN4pbrt19ParameterDictionaryD2Ev(ptr noundef nonnull align 8 dead_on_return(108) dereferenceable(108) %4) #32
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.h
  %.pn9.pn = phi { ptr, i32 } [ %.pn9, %bb.w ], [ %i.ac, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  resume { ptr, i32 } %.pn9.pn
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt9ErrorExitIJRA8_KcEEEvPKNS_7FileLocEPS1_DpOT_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(8) %2) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !85, !alias.scope !715
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !87, !alias.scope !715
  store i8 0, ptr %i.a, align 8, !tbaa !88, !alias.scope !715
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRA8_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef nonnull align 8 %3, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(8) %2)
          to label %_ZN4pbrt12StringPrintfIJRA8_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %3, align 8, !tbaa !89, !alias.scope !715 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !88, !alias.scope !715
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #33
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRA8_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %3, align 8, !tbaa !89
  invoke void @_ZN4pbrt9ErrorExitEPKNS_7FileLocEPKc(ptr noundef %0, ptr noundef %i.h) #34
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA8_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA8_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %3, align 8, !tbaa !89     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !88
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt17BasicSceneBuilder10WorldBeginENS_7FileLocE(ptr noundef nonnull align 64 dereferenceable(3544) %0, ptr noundef byval(%"struct.pbrt::FileLoc") align 8 %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"struct.pbrt::SceneEntity", align 8 ; 10 uses
  %4 = alloca %"struct.pbrt::SceneEntity", align 8 ; 10 uses
  %5 = alloca %"struct.pbrt::CameraSceneEntity", align 8 ; 9 uses
  %6 = alloca %"struct.pbrt::SceneEntity", align 8 ; 9 uses
  %7 = alloca %"struct.pbrt::SceneEntity", align 8 ; 10 uses
  %8 = alloca %"struct.pbrt::SceneEntity", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !166
  %i.c = icmp eq i32 %i.b, 1
end_hunk_1
begin_hunk_2_@_ZN4pbrt10BasicScene10SetOptionsENS_11SceneEntityES1_NS_17CameraSceneEntityES1_S1_S1_:bb.a
  br i1 %i.et, label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEE7reserveEm.exit.i.i.i.i.i.i.i.thread, label %_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE15allocate_objectIS4_EEPT_m.exit.i.i.i.i.i.i.i.i

_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE15allocate_objectIS4_EEPT_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.eu = load ptr, ptr %i.eo, align 8, !tbaa !72, !noalias !767
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8, !noalias !767
  %i.ex = invoke noundef ptr %i.ew(ptr noundef nonnull align 8 dereferenceable(8) %i.eo, i64 noundef %i.es, i64 noundef 8)
          to label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEE7reserveEm.exit.i.i.i.i.i.i.i.thread unwind label %bb.an, !inline_history !757

_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEE7reserveEm.exit.i.i.i.i.i.i.i.thread: ; preds = %bb.l, %_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE15allocate_objectIS4_EEPT_m.exit.i.i.i.i.i.i.i.i
  %.0.i.i.i.i2024.i.i.i.i.i.i.i = phi ptr [ null, %bb.l ], [ %i.ex, %_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE15allocate_objectIS4_EEPT_m.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  store i64 %i.ca, ptr %i.er, align 8, !tbaa !110, !alias.scope !767
  store ptr %.0.i.i.i.i2024.i.i.i.i.i.i.i, ptr %i.eq, align 8, !tbaa !103, !alias.scope !767
  br label %iter.check102

_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEE7reserveEm.exit.i.i.i.i.i.i.i: ; preds = %_ZN4pbrt11SceneEntityC2ERKS0_.exit
  br i1 %.not.i.i.i, label %"_ZSt4bindIRZN4pbrt10BasicScene10SetOptionsENS0_11SceneEntityES2_NS0_17CameraSceneEntityES2_S2_S2_E3$_0JEENSt12_Bind_helperIXsr15__is_socketlikeIT_EE5valueES7_JDpT0_EE4typeEOS7_DpOS8_.exit.i", label %iter.check102

iter.check102:                                    ; preds = %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEE7reserveEm.exit.i.i.i.i.i.i.i.thread, %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEE7reserveEm.exit.i.i.i.i.i.i.i
  %i.ey = phi ptr [ %.0.i.i.i.i2024.i.i.i.i.i.i.i, %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEE7reserveEm.exit.i.i.i.i.i.i.i.thread ], [ null, %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEE7reserveEm.exit.i.i.i.i.i.i.i ] ; 6 uses
  %i.ez = phi i64 [ %i.ca, %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEE7reserveEm.exit.i.i.i.i.i.i.i.thread ], [ 0, %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEE7reserveEm.exit.i.i.i.i.i.i.i ] ; 4 uses
  %.not.i9.i.i.i.i.i.i.i = icmp eq ptr %i.ey, null
  %i.fa = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.fb = select i1 %.not.i9.i.i.i.i.i.i.i, ptr %i.fa, ptr %i.ey ; 12 uses
  %.not.i.i10.i.i.i.i.i.i.i = icmp eq ptr %i.bz, null
  %i.fc = getelementptr inbounds nuw i8, ptr %16, i64 48
  %i.fd = select i1 %.not.i.i10.i.i.i.i.i.i.i, ptr %i.fc, ptr %i.bz ; 12 uses
  %min.iters.check86 = icmp ult i64 %i.ca, 4
  %i.fe = ptrtoaddr ptr %i.fd to i64
  %i.ff = ptrtoaddr ptr %i.fb to i64
  %i.fg = sub i64 %i.fe, %i.ff
  %diff.check88 = icmp ugt i64 %i.fg, -128
  %or.cond120 = select i1 %min.iters.check86, i1 true, i1 %diff.check88
  br i1 %or.cond120, label %vec.epilog.scalar.ph104.preheader, label %vector.main.loop.iter.check89

vector.main.loop.iter.check89:                    ; preds = %iter.check102
  %min.iters.check90 = icmp ult i64 %i.ca, 16
  br i1 %min.iters.check90, label %vec.epilog.ph106, label %vector.ph91

vector.ph91:                                      ; preds = %vector.main.loop.iter.check89
  %i.fh = and i64 %i.ca, 12
  %n.vec92 = and i64 %i.ca, -16                   ; 4 uses
  br label %vector.body93

vector.body93:                                    ; preds = %vector.ph91, %vector.body93
  %index94 = phi i64 [ 0, %vector.ph91 ], [ %index.next99, %vector.body93 ] ; 3 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %index94 ; 4 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %index94 ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 32
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 96
  %wide.load95 = load <4 x ptr>, ptr %i.fj, align 8, !tbaa !189, !noalias !767
  %wide.load96 = load <4 x ptr>, ptr %i.fk, align 8, !tbaa !189, !noalias !767
  %wide.load97 = load <4 x ptr>, ptr %i.fl, align 8, !tbaa !189, !noalias !767
  %wide.load98 = load <4 x ptr>, ptr %i.fm, align 8, !tbaa !189, !noalias !767
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 32
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fi, i64 64
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fi, i64 96
  store <4 x ptr> %wide.load95, ptr %i.fi, align 8, !tbaa !189
  store <4 x ptr> %wide.load96, ptr %i.fn, align 8, !tbaa !189
  store <4 x ptr> %wide.load97, ptr %i.fo, align 8, !tbaa !189
  store <4 x ptr> %wide.load98, ptr %i.fp, align 8, !tbaa !189
  %index.next99 = add nuw i64 %index94, 16        ; 2 uses
  %i.fq = icmp eq i64 %index.next99, %n.vec92
  br i1 %i.fq, label %middle.block100, label %vector.body93, !llvm.loop !758

middle.block100:                                  ; preds = %vector.body93
  %cmp.n101 = icmp eq i64 %i.ca, %n.vec92
  br i1 %cmp.n101, label %"_ZSt4bindIRZN4pbrt10BasicScene10SetOptionsENS0_11SceneEntityES2_NS0_17CameraSceneEntityES2_S2_S2_E3$_0JEENSt12_Bind_helperIXsr15__is_socketlikeIT_EE5valueES7_JDpT0_EE4typeEOS7_DpOS8_.exit.i", label %vec.epilog.iter.check103

vec.epilog.iter.check103:                         ; preds = %middle.block100
  %min.epilog.iters.check105 = icmp eq i64 %i.fh, 0
  br i1 %min.epilog.iters.check105, label %vec.epilog.scalar.ph104.preheader, label %vec.epilog.ph106, !prof !181

vec.epilog.ph106:                                 ; preds = %vector.main.loop.iter.check89, %vec.epilog.iter.check103
  %vec.epilog.resume.val107 = phi i64 [ %n.vec92, %vec.epilog.iter.check103 ], [ 0, %vector.main.loop.iter.check89 ]
  %n.vec108 = and i64 %i.ca, -4                   ; 3 uses
  br label %vec.epilog.vector.body109

vec.epilog.vector.body109:                        ; preds = %vec.epilog.vector.body109, %vec.epilog.ph106
  %index110 = phi i64 [ %vec.epilog.resume.val107, %vec.epilog.ph106 ], [ %index.next112, %vec.epilog.vector.body109 ] ; 3 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %index110
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %index110
  %wide.load111 = load <4 x ptr>, ptr %i.fs, align 8, !tbaa !189, !noalias !767
  store <4 x ptr> %wide.load111, ptr %i.fr, align 8, !tbaa !189
  %index.next112 = add nuw i64 %index110, 4       ; 2 uses
  %i.ft = icmp eq i64 %index.next112, %n.vec108
  br i1 %i.ft, label %vec.epilog.middle.block113, label %vec.epilog.vector.body109, !llvm.loop !759

vec.epilog.middle.block113:                       ; preds = %vec.epilog.vector.body109
  %cmp.n114 = icmp eq i64 %i.ca, %n.vec108
  br i1 %cmp.n114, label %"_ZSt4bindIRZN4pbrt10BasicScene10SetOptionsENS0_11SceneEntityES2_NS0_17CameraSceneEntityES2_S2_S2_E3$_0JEENSt12_Bind_helperIXsr15__is_socketlikeIT_EE5valueES7_JDpT0_EE4typeEOS7_DpOS8_.exit.i", label %vec.epilog.scalar.ph104.preheader

vec.epilog.scalar.ph104.preheader:                ; preds = %iter.check102, %vec.epilog.iter.check103, %vec.epilog.middle.block113
  %.011.i.i.i.i.i.i.i.ph = phi i64 [ 0, %iter.check102 ], [ %n.vec92, %vec.epilog.iter.check103 ], [ %n.vec108, %vec.epilog.middle.block113 ] ; 4 uses
  %i.fu = sub i64 %i.ca, %.011.i.i.i.i.i.i.i.ph
  %xtraiter121 = and i64 %i.fu, 7                 ; 2 uses
  %lcmp.mod122.not = icmp eq i64 %xtraiter121, 0
  br i1 %lcmp.mod122.not, label %vec.epilog.scalar.ph104.prol.loopexit, label %vec.epilog.scalar.ph104.prol

vec.epilog.scalar.ph104.prol:                     ; preds = %vec.epilog.scalar.ph104.preheader, %vec.epilog.scalar.ph104.prol
  %.011.i.i.i.i.i.i.i.prol = phi i64 [ %i.fy, %vec.epilog.scalar.ph104.prol ], [ %.011.i.i.i.i.i.i.i.ph, %vec.epilog.scalar.ph104.preheader ] ; 3 uses
  %prol.iter123 = phi i64 [ %prol.iter123.next, %vec.epilog.scalar.ph104.prol ], [ 0, %vec.epilog.scalar.ph104.preheader ]
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %.011.i.i.i.i.i.i.i.prol
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %.011.i.i.i.i.i.i.i.prol
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !189, !noalias !767
  store ptr %i.fx, ptr %i.fv, align 8, !tbaa !189
  %i.fy = add nuw i64 %.011.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter123.next = add i64 %prol.iter123, 1   ; 2 uses
  %prol.iter123.cmp.not = icmp eq i64 %prol.iter123.next, %xtraiter121
  br i1 %prol.iter123.cmp.not, label %vec.epilog.scalar.ph104.prol.loopexit, label %vec.epilog.scalar.ph104.prol, !llvm.loop !760

vec.epilog.scalar.ph104.prol.loopexit:            ; preds = %vec.epilog.scalar.ph104.prol, %vec.epilog.scalar.ph104.preheader
  %.011.i.i.i.i.i.i.i.unr = phi i64 [ %.011.i.i.i.i.i.i.i.ph, %vec.epilog.scalar.ph104.preheader ], [ %i.fy, %vec.epilog.scalar.ph104.prol ]
  %i.fz = sub i64 %.011.i.i.i.i.i.i.i.ph, %i.ca
  %i.ga = icmp ugt i64 %i.fz, -8
  br i1 %i.ga, label %"_ZSt4bindIRZN4pbrt10BasicScene10SetOptionsENS0_11SceneEntityES2_NS0_17CameraSceneEntityES2_S2_S2_E3$_0JEENSt12_Bind_helperIXsr15__is_socketlikeIT_EE5valueES7_JDpT0_EE4typeEOS7_DpOS8_.exit.i", label %vec.epilog.scalar.ph104

vec.epilog.scalar.ph104:                          ; preds = %vec.epilog.scalar.ph104.prol.loopexit, %vec.epilog.scalar.ph104
  %.011.i.i.i.i.i.i.i = phi i64 [ %i.hg, %vec.epilog.scalar.ph104 ], [ %.011.i.i.i.i.i.i.i.unr, %vec.epilog.scalar.ph104.prol.loopexit ] ; 10 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %.011.i.i.i.i.i.i.i
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %.011.i.i.i.i.i.i.i
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !189, !noalias !767
  store ptr %i.gd, ptr %i.gb, align 8, !tbaa !189
  %i.ge = add nuw i64 %.011.i.i.i.i.i.i.i, 1      ; 2 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.ge
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.ge
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !189, !noalias !767
  store ptr %i.gh, ptr %i.gf, align 8, !tbaa !189
  %i.gi = add nuw i64 %.011.i.i.i.i.i.i.i, 2      ; 2 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.gi
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.gi
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !189, !noalias !767
  store ptr %i.gl, ptr %i.gj, align 8, !tbaa !189
  %i.gm = add nuw i64 %.011.i.i.i.i.i.i.i, 3      ; 2 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.gm
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.gm
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !189, !noalias !767
  store ptr %i.gp, ptr %i.gn, align 8, !tbaa !189
  %i.gq = add nuw i64 %.011.i.i.i.i.i.i.i, 4      ; 2 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.gq
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.gq
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !189, !noalias !767
  store ptr %i.gt, ptr %i.gr, align 8, !tbaa !189
  %i.gu = add nuw i64 %.011.i.i.i.i.i.i.i, 5      ; 2 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.gu
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.gu
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !189, !noalias !767
  store ptr %i.gx, ptr %i.gv, align 8, !tbaa !189
  %i.gy = add nuw i64 %.011.i.i.i.i.i.i.i, 6      ; 2 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.gy
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.gy
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !189, !noalias !767
  store ptr %i.hb, ptr %i.gz, align 8, !tbaa !189
  %i.hc = add nuw i64 %.011.i.i.i.i.i.i.i, 7      ; 2 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.hc
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.hc
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !189, !noalias !767
  store ptr %i.hf, ptr %i.hd, align 8, !tbaa !189
  %i.hg = add nuw i64 %.011.i.i.i.i.i.i.i, 8      ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.7 = icmp eq i64 %i.hg, %i.ca
  br i1 %exitcond.not.i.i.i.i.i.i.i.7, label %"_ZSt4bindIRZN4pbrt10BasicScene10SetOptionsENS0_11SceneEntityES2_NS0_17CameraSceneEntityES2_S2_S2_E3$_0JEENSt12_Bind_helperIXsr15__is_socketlikeIT_EE5valueES7_JDpT0_EE4typeEOS7_DpOS8_.exit.i", label %vec.epilog.scalar.ph104, !llvm.loop !761

"_ZSt4bindIRZN4pbrt10BasicScene10SetOptionsENS0_11SceneEntityES2_NS0_17CameraSceneEntityES2_S2_S2_E3$_0JEENSt12_Bind_helperIXsr15__is_socketlikeIT_EE5valueES7_JDpT0_EE4typeEOS7_DpOS8_.exit.i": ; preds = %vec.epilog.scalar.ph104.prol.loopexit, %vec.epilog.scalar.ph104, %middle.block100, %vec.epilog.middle.block113, %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEE7reserveEm.exit.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i2947 = phi i1 [ true, %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEE7reserveEm.exit.i.i.i.i.i.i.i ], [ false, %middle.block100 ], [ false, %vec.epilog.middle.block113 ], [ false, %vec.epilog.scalar.ph104 ], [ false, %vec.epilog.scalar.ph104.prol.loopexit ]
  %i.hh = phi ptr [ null, %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEE7reserveEm.exit.i.i.i.i.i.i.i ], [ %i.ey, %middle.block100 ], [ %i.ey, %vec.epilog.middle.block113 ], [ %i.ey, %vec.epilog.scalar.ph104 ], [ %i.ey, %vec.epilog.scalar.ph104.prol.loopexit ]
  %i.hi = phi i64 [ 0, %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEE7reserveEm.exit.i.i.i.i.i.i.i ], [ %i.ez, %middle.block100 ], [ %i.ez, %vec.epilog.middle.block113 ], [ %i.ez, %vec.epilog.scalar.ph104 ], [ %i.ez, %vec.epilog.scalar.ph104.prol.loopexit ]
  %i.hj = getelementptr inbounds nuw i8, ptr %9, i64 120 ; 2 uses
  store i64 %i.ca, ptr %i.hj, align 8, !tbaa !109, !alias.scope !767
  %i.hk = getelementptr inbounds nuw i8, ptr %9, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.hk, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.ek, i64 12, i1 false)
  %i.hl = getelementptr inbounds nuw i8, ptr %9, i64 144
  store ptr %0, ptr %i.hl, align 8, !tbaa !308, !alias.scope !767
  %i.hm = invoke noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #35
          to label %bb.m unwind label %bb.q       ; 15 uses

bb.m:                                             ; preds = %"_ZSt4bindIRZN4pbrt10BasicScene10SetOptionsENS0_11SceneEntityES2_NS0_17CameraSceneEntityES2_S2_S2_E3$_0JEENSt12_Bind_helperIXsr15__is_socketlikeIT_EE5valueES7_JDpT0_EE4typeEOS7_DpOS8_.exit.i"
  %i.hn = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #35
          to label %.noexc.i.i unwind label %.body.i ; 9 uses

.noexc.i.i:                                       ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(153) %i.hn, ptr noundef nonnull align 8 dereferenceable(153) %9, i64 32, i1 false)
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 32
  store i64 %i.ep, ptr %i.ho, align 8, !tbaa !102
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 40
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 112
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hn, i64 120
  store i64 %i.ca, ptr %i.hr, align 8, !tbaa !109
  store i64 %i.hi, ptr %i.hq, align 8, !tbaa !110
  store ptr %i.hh, ptr %i.hp, align 8, !tbaa !103
  %i.hs = icmp ult i64 %i.ca, 9
  br i1 %i.hs, label %.preheader.i.i.i.i.i.i.i.i.i, label %bb.n

.preheader.i.i.i.i.i.i.i.i.i:                     ; preds = %.noexc.i.i
  br i1 %.not.i.i.i.i.i.i.i2947, label %_ZNSt14_Function_baseD2Ev.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.preheader.i.i.i.i.i.i.i.i.i
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hn, i64 48
  %i.hu = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.hv = shl nuw nsw i64 %i.ca, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ht, ptr nonnull align 8 %i.hu, i64 %i.hv, i1 false), !tbaa !189
  br label %_ZNSt14_Function_baseD2Ev.exit.i

bb.n:                                             ; preds = %.noexc.i.i
  store i64 0, ptr %i.hj, align 8, !tbaa !109
  br label %_ZNSt14_Function_baseD2Ev.exit.i

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.n, %.lr.ph.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i
  store i64 0, ptr %i.er, align 8, !tbaa !110
  store ptr null, ptr %i.eq, align 8, !tbaa !103
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hn, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.hw, ptr noundef nonnull align 8 dereferenceable(12) %i.ek, i64 12, i1 false)
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hn, i64 144
  store ptr %0, ptr %i.hx, align 8, !tbaa !308
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  store i32 0, ptr %i.hy, align 8, !tbaa !311
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.hz, i8 0, i64 17, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4pbrt8AsyncJobINS_7SamplerEEE, i64 16), ptr %i.hm, align 8, !tbaa !72
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hm, i64 40
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hm, i64 64
  store ptr @"_ZNSt17_Function_handlerIFN4pbrt7SamplerEvESt5_BindIFZNS0_10BasicScene10SetOptionsENS0_11SceneEntityES5_NS0_17CameraSceneEntityES5_S5_S5_E3$_0vEEE9_M_invokeERKSt9_Any_data", ptr %i.ib, align 8, !tbaa !313
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hm, i64 56
  store ptr %i.hn, ptr %i.ia, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hm, i64 48
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !88
  store ptr @"_ZNSt17_Function_handlerIFN4pbrt7SamplerEvESt5_BindIFZNS0_10BasicScene10SetOptionsENS0_11SceneEntityES5_NS0_17CameraSceneEntityES5_S5_S5_E3$_0vEEE10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation", ptr %i.ic, align 8, !tbaa !314
  %i.id = getelementptr inbounds nuw i8, ptr %i.hm, i64 72
  store i8 0, ptr %i.id, align 8, !tbaa !319
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hm, i64 88
  store i8 0, ptr %i.ie, align 8, !tbaa !320
  %i.if = getelementptr inbounds nuw i8, ptr %i.hm, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.if, i8 0, i64 40, i1 false)
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hm, i64 136
  call void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.ig) #32
  %i.ih = invoke noundef i32 @_ZN4pbrt14RunningThreadsEv()
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.ii = icmp eq i32 %i.ih, 1
  br i1 %i.ii, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN4pbrt8AsyncJobINS_7SamplerEE6DoWorkEv(ptr noundef nonnull align 8 dereferenceable(184) %i.hm)
          to label %bb.v unwind label %bb.q

.body.i:                                          ; preds = %bb.m
  %i.ij = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.hm, i64 noundef 184) #33
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit18.i

bb.q:                                             ; preds = %bb.p, %_ZNSt14_Function_baseD2Ev.exit.i, %"_ZSt4bindIRZN4pbrt10BasicScene10SetOptionsENS0_11SceneEntityES2_NS0_17CameraSceneEntityES2_S2_S2_E3$_0JEENSt12_Bind_helperIXsr15__is_socketlikeIT_EE5valueES7_JDpT0_EE4typeEOS7_DpOS8_.exit.i"
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit18.i

bb.r:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  %i.il = load ptr, ptr @_ZN4pbrt11ParallelJob10threadPoolE, align 8, !tbaa !322
  invoke void @_ZN4pbrt10ThreadPool12AddToJobListEPNS_11ParallelJobE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_lock") align 8 %10, ptr noundef nonnull align 8 dereferenceable(128) %i.il, ptr noundef nonnull %i.hm)
          to label %bb.t unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.im = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit18.i

bb.t:                                             ; preds = %bb.r
  %i.in = load ptr, ptr %10, align 8, !tbaa !325  ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ip = load i8, ptr %i.io, align 8, !tbaa !326, !range !211, !noundef !212
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  %i.iq = trunc nuw i8 %i.ip to i1
  %.not.i.i13.i = icmp ne ptr %i.in, null
  %or.cond.not.i = select i1 %i.iq, i1 %.not.i.i13.i, i1 false
  br i1 %or.cond.not.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ir = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.in) #32 ; 0 uses
  br label %bb.v

_ZNSt11unique_lockISt5mutexED2Ev.exit18.i:        ; preds = %bb.s, %bb.q, %.body.i
  %.pn.pn.i = phi { ptr, i32 } [ %i.im, %bb.s ], [ %i.ij, %.body.i ], [ %i.ik, %bb.q ]
  call fastcc void @"_ZNSt5_BindIFZN4pbrt10BasicScene10SetOptionsENS0_11SceneEntityES2_NS0_17CameraSceneEntityES2_S2_S2_E3$_0vEED2Ev"(ptr noundef nonnull align 8 dead_on_return(153) dereferenceable(153) %9) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %.body

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 416
  store ptr %i.hm, ptr %i.is, align 8, !tbaa !768
  %i.it = load ptr, ptr %i.bm, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i.i.i.i31 = icmp eq ptr %i.it, null
  br i1 %.not.i.i.i.i.i.i.i31, label %"_ZZN4pbrt10BasicScene10SetOptionsENS_11SceneEntityES1_NS_17CameraSceneEntityES1_S1_S1_EN3$_0D2Ev.exit", label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.iu = load ptr, ptr %i.bk, align 8, !tbaa !72
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 24
  %i.iw = load ptr, ptr %i.iv, align 8
  invoke void %i.iw(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, ptr noundef nonnull %i.it, i64 noundef %i.by, i64 noundef 8)
          to label %"_ZZN4pbrt10BasicScene10SetOptionsENS_11SceneEntityES1_NS_17CameraSceneEntityES1_S1_S1_EN3$_0D2Ev.exit" unwind label %bb.x, !inline_history !3

bb.x:                                             ; preds = %bb.w
  %i.ix = landingpad { ptr, i32 }
          catch ptr null
  %i.iy = extractvalue { ptr, i32 } %i.ix, 0
  call void @__clang_call_terminate(ptr %i.iy) #31
  unreachable

"_ZZN4pbrt10BasicScene10SetOptionsENS_11SceneEntityES1_NS_17CameraSceneEntityES1_S1_S1_EN3$_0D2Ev.exit": ; preds = %bb.v, %bb.w
  call void @_ZN4pbrt17CameraSceneEntityC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(1000) %17, ptr noundef nonnull align 8 dereferenceable(1000) %3)
  %i.iz = getelementptr inbounds nuw i8, ptr %17, i64 1000 ; 2 uses
  store ptr %0, ptr %i.iz, align 8, !tbaa !328
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !769)
  invoke void @_ZN4pbrt17CameraSceneEntityC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(1009) %7, ptr noundef nonnull align 8 dereferenceable(1008) %17)
          to label %.noexc39 unwind label %bb.ao

.noexc39:                                         ; preds = %"_ZZN4pbrt10BasicScene10SetOptionsENS_11SceneEntityES1_NS_17CameraSceneEntityES1_S1_S1_EN3$_0D2Ev.exit"
  %i.ja = getelementptr inbounds nuw i8, ptr %7, i64 1000 ; 2 uses
  %i.jb = load ptr, ptr %i.iz, align 8, !tbaa !328, !noalias !769
  store ptr %i.jb, ptr %i.ja, align 8, !tbaa !328, !alias.scope !769
  %i.jc = invoke noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #35
          to label %bb.y unwind label %bb.ad      ; 15 uses

bb.y:                                             ; preds = %.noexc39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i8 0, i64 24, i1 false)
  %i.jd = invoke noalias noundef nonnull dereferenceable(1016) ptr @_Znwm(i64 noundef 1016) #35
          to label %.noexc.i.i35 unwind label %.body.i34 ; 12 uses

.noexc.i.i35:                                     ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1009) %i.jd, ptr noundef nonnull align 8 dereferenceable(1009) %7, i64 32, i1 false)
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 32
  %i.jf = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !102
  store i64 %i.jg, ptr %i.je, align 8, !tbaa !102
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jd, i64 40
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jd, i64 112
  %i.jj = getelementptr inbounds nuw i8, ptr %7, i64 120 ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %7, i64 112 ; 3 uses
  %i.jl = load i64, ptr %i.jj, align 8, !tbaa !109 ; 3 uses
  %i.jm = load <2 x i64>, ptr %i.jk, align 8, !tbaa !198
  store <2 x i64> %i.jm, ptr %i.ji, align 8, !tbaa !198
  %i.jn = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !103
  store ptr %i.jo, ptr %i.jh, align 8, !tbaa !103
  %i.jp = icmp ult i64 %i.jl, 9
  br i1 %i.jp, label %.preheader.i.i.i.i.i.i.i.i.i.i, label %bb.z

.preheader.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.noexc.i.i35
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.jl, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4pbrt11SceneEntityC2EOS0_.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jd, i64 48
  %i.jr = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.js = shl nuw nsw i64 %i.jl, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.jq, ptr nonnull align 8 %i.jr, i64 %i.js, i1 false), !tbaa !189
  br label %_ZN4pbrt11SceneEntityC2EOS0_.exit.i.i.i.i.i.i.i

bb.z:                                             ; preds = %.noexc.i.i35
  store i64 0, ptr %i.jj, align 8, !tbaa !109
  br label %_ZN4pbrt11SceneEntityC2EOS0_.exit.i.i.i.i.i.i.i

_ZN4pbrt11SceneEntityC2EOS0_.exit.i.i.i.i.i.i.i:  ; preds = %bb.z, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i
  store i64 0, ptr %i.jk, align 8, !tbaa !110
  store ptr null, ptr %i.jn, align 8, !tbaa !103
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jd, i64 128
  %i.ju = getelementptr inbounds nuw i8, ptr %7, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.jt, ptr noundef nonnull align 8 dereferenceable(12) %i.ju, i64 12, i1 false)
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jd, i64 144
  %i.jw = getelementptr inbounds nuw i8, ptr %7, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(824) %i.jv, ptr noundef nonnull align 8 dereferenceable(824) %i.jw, i64 824, i1 false), !tbaa.struct !221
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jd, i64 968 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %7, i64 968 ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jd, i64 984 ; 3 uses
  store ptr %i.jz, ptr %i.jx, align 8, !tbaa !85
  %i.ka = load ptr, ptr %i.jy, align 8, !tbaa !89 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %7, i64 984 ; 7 uses
  %i.kc = icmp eq ptr %i.ka, %i.kb
  br i1 %i.kc, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

bb.aa:                                            ; preds = %_ZN4pbrt11SceneEntityC2EOS0_.exit.i.i.i.i.i.i.i
  %i.kd = getelementptr inbounds nuw i8, ptr %7, i64 976
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !87 ; 3 uses
  %i.kf = icmp ult i64 %i.ke, 16
  call void @llvm.assume(i1 %i.kf)
  %i.kg = add nuw nsw i64 %i.ke, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.jz, ptr noundef nonnull align 8 dereferenceable(1) %i.kb, i64 %i.kg, i1 false)
  br label %_ZNSt14_Function_baseD2Ev.exit.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZN4pbrt11SceneEntityC2EOS0_.exit.i.i.i.i.i.i.i
  store ptr %i.ka, ptr %i.jx, align 8, !tbaa !89
  %i.kh = load i64, ptr %i.kb, align 8, !tbaa !88
  store i64 %i.kh, ptr %i.jz, align 8, !tbaa !88
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 976
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !87
  br label %_ZNSt14_Function_baseD2Ev.exit.i36

_ZNSt14_Function_baseD2Ev.exit.i36:               ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.ki = phi i64 [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i ], [ %i.ke, %bb.aa ]
  %i.kj = getelementptr inbounds nuw i8, ptr %7, i64 976
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jd, i64 976
  store i64 %i.ki, ptr %i.kk, align 8, !tbaa !87
  store ptr %i.kb, ptr %i.jy, align 8, !tbaa !89
  store i64 0, ptr %i.kj, align 8, !tbaa !87
  store i8 0, ptr %i.kb, align 8, !tbaa !88
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jd, i64 1000
  %i.km = load ptr, ptr %i.ja, align 8, !tbaa !328
  store ptr %i.km, ptr %i.kl, align 8, !tbaa !328
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  store i32 0, ptr %i.kn, align 8, !tbaa !311
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.ko, i8 0, i64 17, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4pbrt8AsyncJobINS_6CameraEEE, i64 16), ptr %i.jc, align 8, !tbaa !72
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jc, i64 40
  %i.kq = getelementptr inbounds nuw i8, ptr %i.jc, i64 64
  store ptr @"_ZNSt17_Function_handlerIFN4pbrt6CameraEvESt5_BindIFZNS0_10BasicScene10SetOptionsENS0_11SceneEntityES5_NS0_17CameraSceneEntityES5_S5_S5_E3$_1vEEE9_M_invokeERKSt9_Any_data", ptr %i.kq, align 8, !tbaa !330
  %i.kr = getelementptr inbounds nuw i8, ptr %i.jc, i64 56
  store ptr %i.jd, ptr %i.kp, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jc, i64 48
  %i.ks = load i64, ptr %.sroa.5, align 8, !tbaa !88
  store i64 %i.ks, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !88
  store ptr @"_ZNSt17_Function_handlerIFN4pbrt6CameraEvESt5_BindIFZNS0_10BasicScene10SetOptionsENS0_11SceneEntityES5_NS0_17CameraSceneEntityES5_S5_S5_E3$_1vEEE10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation", ptr %i.kr, align 8, !tbaa !314
  %i.kt = getelementptr inbounds nuw i8, ptr %i.jc, i64 72
  store i8 0, ptr %i.kt, align 8, !tbaa !333
  %i.ku = getelementptr inbounds nuw i8, ptr %i.jc, i64 88
  store i8 0, ptr %i.ku, align 8, !tbaa !334
  %i.kv = getelementptr inbounds nuw i8, ptr %i.jc, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.kv, i8 0, i64 40, i1 false)
  %i.kw = getelementptr inbounds nuw i8, ptr %i.jc, i64 136
  call void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.kw) #32
  %i.kx = invoke noundef i32 @_ZN4pbrt14RunningThreadsEv()
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit.i36
  %i.ky = icmp eq i32 %i.kx, 1
  br i1 %i.ky, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN4pbrt8AsyncJobINS_6CameraEE6DoWorkEv(ptr noundef nonnull align 8 dereferenceable(184) %i.jc)
          to label %_ZNSt11unique_lockISt5mutexED2Ev.exit14.i unwind label %bb.ad

.body.i34:                                        ; preds = %bb.y
  %i.kz = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.jc, i64 noundef 184) #33
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit18.i32

bb.ad:                                            ; preds = %bb.ac, %_ZNSt14_Function_baseD2Ev.exit.i36, %.noexc39
  %i.la = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit18.i32

bb.ae:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  %i.lb = load ptr, ptr @_ZN4pbrt11ParallelJob10threadPoolE, align 8, !tbaa !322
  invoke void @_ZN4pbrt10ThreadPool12AddToJobListEPNS_11ParallelJobE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_lock") align 8 %8, ptr noundef nonnull align 8 dereferenceable(128) %i.lb, ptr noundef nonnull %i.jc)
          to label %bb.ag unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.lc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit18.i32

bb.ag:                                            ; preds = %bb.ae
  %i.ld = load ptr, ptr %8, align 8, !tbaa !325   ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.lf = load i8, ptr %i.le, align 8, !tbaa !326, !range !211, !noundef !212
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  %i.lg = trunc nuw i8 %i.lf to i1
  %.not.i.i13.i37 = icmp ne ptr %i.ld, null
  %or.cond.not.i38 = select i1 %i.lg, i1 %.not.i.i13.i37, i1 false
  br i1 %or.cond.not.i38, label %bb.ah, label %_ZNSt11unique_lockISt5mutexED2Ev.exit14.i

bb.ah:                                            ; preds = %bb.ag
  %i.lh = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ld) #32 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit14.i

_ZNSt11unique_lockISt5mutexED2Ev.exit14.i:        ; preds = %bb.ah, %bb.ag, %bb.ac
  %i.li = load ptr, ptr %i.jy, align 8, !tbaa !89 ; 2 uses
  %i.lj = icmp eq ptr %i.li, %i.kb
  br i1 %i.lj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit14.i
  %i.lk = load i64, ptr %i.kb, align 8, !tbaa !88
  %i.ll = add i64 %i.lk, 1
  call void @_ZdlPvm(ptr noundef %i.li, i64 noundef %i.ll) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit14.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store i64 0, ptr %i.jj, align 8, !tbaa !109
  %i.lm = load ptr, ptr %i.jn, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i15.i = icmp eq ptr %i.lm, null
  br i1 %.not.i.i.i.i.i.i.i.i.i15.i, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.ln = load i64, ptr %i.jk, align 8, !tbaa !110
  %i.lo = shl i64 %i.ln, 3
  %i.lp = load ptr, ptr %i.jf, align 8, !tbaa !111 ; 2 uses
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !72
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 24
  %i.ls = load ptr, ptr %i.lr, align 8
  invoke void %i.ls(ptr noundef nonnull align 8 dereferenceable(8) %i.lp, ptr noundef nonnull %i.lm, i64 noundef %i.lo, i64 noundef 8)
          to label %bb.ak unwind label %bb.aj, !inline_history !3

bb.aj:                                            ; preds = %bb.ai
  %i.lt = landingpad { ptr, i32 }
          catch ptr null
  %i.lu = extractvalue { ptr, i32 } %i.lt, 0
  call void @__clang_call_terminate(ptr %i.lu) #31
  unreachable

_ZNSt11unique_lockISt5mutexED2Ev.exit18.i32:      ; preds = %bb.af, %bb.ad, %.body.i34
  %.pn.pn.i33 = phi { ptr, i32 } [ %i.lc, %bb.af ], [ %i.kz, %.body.i34 ], [ %i.la, %bb.ad ]
  call fastcc void @"_ZNSt5_BindIFZN4pbrt10BasicScene10SetOptionsENS0_11SceneEntityES2_NS0_17CameraSceneEntityES2_S2_S2_E3$_1vEED2Ev"(ptr noundef nonnull align 8 dead_on_return(1009) dereferenceable(1009) %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %.body40

bb.ak:                                            ; preds = %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 592
  store ptr %i.jc, ptr %i.lv, align 8, !tbaa !335
  %i.lw = getelementptr inbounds nuw i8, ptr %17, i64 968
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !89 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %17, i64 984 ; 2 uses
  %i.lz = icmp eq ptr %i.lx, %i.ly
  br i1 %i.lz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.ak
  %i.ma = load i64, ptr %i.ly, align 8, !tbaa !88
  %i.mb = add i64 %i.ma, 1
  call void @_ZdlPvm(ptr noundef %i.lx, i64 noundef %i.mb) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.mc = getelementptr inbounds nuw i8, ptr %17, i64 120
  store i64 0, ptr %i.mc, align 8, !tbaa !109
  %i.md = getelementptr inbounds nuw i8, ptr %17, i64 40
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i.i.i.i.i42 = icmp eq ptr %i.me, null
  br i1 %.not.i.i.i.i.i.i.i.i42, label %"_ZZN4pbrt10BasicScene10SetOptionsENS_11SceneEntityES1_NS_17CameraSceneEntityES1_S1_S1_EN3$_1D2Ev.exit", label %bb.al

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.mf = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.mg = getelementptr inbounds nuw i8, ptr %17, i64 112
  %i.mh = load i64, ptr %i.mg, align 8, !tbaa !110
  %i.mi = shl i64 %i.mh, 3
  %i.mj = load ptr, ptr %i.mf, align 8, !tbaa !111 ; 2 uses
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !72
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 24
  %i.mm = load ptr, ptr %i.ml, align 8
  invoke void %i.mm(ptr noundef nonnull align 8 dereferenceable(8) %i.mj, ptr noundef nonnull %i.me, i64 noundef %i.mi, i64 noundef 8)
          to label %"_ZZN4pbrt10BasicScene10SetOptionsENS_11SceneEntityES1_NS_17CameraSceneEntityES1_S1_S1_EN3$_1D2Ev.exit" unwind label %bb.am, !inline_history !3

bb.am:                                            ; preds = %bb.al
end_hunk_2
begin_hunk_3_@_ZN4pbrt17CameraSceneEntityC2ERKS0_:bb.a
  %i.ev = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt11SceneEntityD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #32
  resume { ptr, i32 } %i.ev
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt17BasicSceneBuilder15MakeNamedMediumERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorISB_EEEENS_7FileLocE(ptr noundef nonnull align 64 dereferenceable(3544) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef align 8 captures(none) dereferenceable(96) %2, ptr noundef byval(%"struct.pbrt::FileLoc") align 8 %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.pbrt::ParameterDictionary", align 8 ; 12 uses
  %7 = alloca %"class.pbrt::InlinedVector", align 8 ; 8 uses
  %8 = alloca %"struct.pbrt::TransformedSceneEntity", align 8 ; 7 uses
  %9 = alloca %"class.pbrt::ParameterDictionary", align 8 ; 9 uses
  %10 = alloca %"class.pbrt::AnimatedTransform", align 4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.b, ptr %5, align 8, !tbaa !85
  %i.c = load ptr, ptr %1, align 8, !tbaa !89     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !87   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 %i.e, ptr %i.a, align 8, !tbaa !198
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %5, align 8, !tbaa !89
  %i.h = load i64, ptr %i.a, align 8, !tbaa !198
  store i64 %i.h, ptr %i.b, align 8, !tbaa !88
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !88
  store i8 %i.j, ptr %i.i, align 1, !tbaa !88
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !198  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !87
  %i.m = load ptr, ptr %5, align 8, !tbaa !89
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  invoke void @_ZN4pbrt13NormalizeUTF8ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nofree noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.o = load ptr, ptr %5, align 8, !tbaa !89     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.b
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.q = load i64, ptr %i.b, align 8, !tbaa !88
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !168  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1632 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not10.i.i.i, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !87   ; 4 uses
  %i.y = load ptr, ptr %4, align 8                ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !87  ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.x, i64 %i.aa) ; 2 uses
  %i.ab = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.ab, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !89
  %i.ae = call i32 @memcmp(ptr noundef %i.ad, ptr noundef %i.y, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.e
  %i.af = sub i64 %i.aa, %i.x
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.af, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.ae, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.ag = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.ag, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.ag, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !216 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i, label %bb.e, !llvm.loop !13

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.ah = icmp eq ptr %.19.i.i.i, %i.v
  br i1 %i.ah, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !87 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.aj, i64 %i.x) ; 2 uses
  %i.ak = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.ak, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !89
  %i.an = call i32 @memcmp(ptr noundef %i.y, ptr noundef %i.am, i64 noundef %.sroa.speculated.i.i.i.i.i) #32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.an, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.f
  %i.ao = sub i64 %i.x, %i.aj
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ao, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.an, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.ap = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.ap, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit
  invoke void @_ZNK4pbrt12ParserTarget17ErrorExitDeferredIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKNS_7FileLocEPKcDpOT_(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull %3, ptr noundef nonnull @.str.39, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.x unwind label %bb.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %5, align 8, !tbaa !89    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.b
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.h
  %i.at = load i64, ptr %i.b, align 8, !tbaa !88
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.sink.split

bb.i:                                             ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, %bb.g
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit
  %i.av = invoke { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE16_M_insert_uniqueIRKS5_EESt4pairISt17_Rb_tree_iteratorIS5_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit unwind label %bb.i ; 0 uses

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit: ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.aw = load i64, ptr %2, align 8, !tbaa !102
  store i64 %i.aw, ptr %7, align 8, !tbaa !102
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !109 ; 3 uses
  %i.bd = load <2 x i64>, ptr %i.bb, align 8, !tbaa !198
  store <2 x i64> %i.bd, ptr %i.ay, align 8, !tbaa !198
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !103
  store ptr %i.bf, ptr %i.ax, align 8, !tbaa !103
  %i.bg = icmp ult i64 %i.bc, 9
  br i1 %i.bg, label %.preheader.i, label %bb.j

.preheader.i:                                     ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit
  %.not.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i, label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = shl nuw nsw i64 %i.bc, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bh, ptr nonnull align 8 %i.bi, i64 %i.bj, i1 false), !tbaa !189
  br label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit

bb.j:                                             ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit
  store i64 0, ptr %i.ba, align 8, !tbaa !109
  br label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit

_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit: ; preds = %.lr.ph.i, %.preheader.i, %bb.j
  store i64 0, ptr %i.bb, align 8, !tbaa !110
  store ptr null, ptr %i.be, align 8, !tbaa !103
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !213
  invoke void @_ZN4pbrt19ParameterDictionaryC1ENS_13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS3_EEEERKS8_PKNS_13RGBColorSpaceE(ptr noundef nonnull align 8 dereferenceable(108) %6, ptr nofree noundef nonnull align 8 dereferenceable(96) %7, ptr noundef nonnull align 8 dereferenceable(96) %i.bk, ptr noundef %i.bm)
          to label %bb.k unwind label %bb.y

bb.k:                                             ; preds = %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit
  store i64 0, ptr %i.az, align 8, !tbaa !109
  %i.bn = load ptr, ptr %i.ax, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i, label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bo = load i64, ptr %i.ay, align 8, !tbaa !110
  %i.bp = shl i64 %i.bo, 3
  %i.bq = load ptr, ptr %7, align 8, !tbaa !111   ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !72
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8
  invoke void %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr noundef nonnull %i.bn, i64 noundef %i.bp, i64 noundef 8)
          to label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit unwind label %bb.m, !inline_history !3

bb.m:                                             ; preds = %bb.l
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #31
  unreachable

_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit: ; preds = %bb.k, %bb.l
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bx = load ptr, ptr %i.bw, align 16, !tbaa !165
  %i.by = load i64, ptr %6, align 8, !tbaa !102
  store i64 %i.by, ptr %9, align 8, !tbaa !102
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %9, i64 88
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 3 uses
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !109 ; 3 uses
  %i.cf = load <2 x i64>, ptr %i.cd, align 8, !tbaa !198
  store <2 x i64> %i.cf, ptr %i.ca, align 8, !tbaa !198
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !103
  store ptr %i.ch, ptr %i.bz, align 8, !tbaa !103
  %i.ci = icmp ult i64 %i.ce, 9
  br i1 %i.ci, label %.preheader.i.i, label %bb.n

.preheader.i.i:                                   ; preds = %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit
  %.not.i.i = icmp eq i64 %i.ce, 0
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cl = shl nuw nsw i64 %i.ce, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cj, ptr nonnull align 8 %i.ck, i64 %i.cl, i1 false), !tbaa !189
  br label %.loopexit

bb.n:                                             ; preds = %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit
  store i64 0, ptr %i.cc, align 8, !tbaa !109
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.n, %.preheader.i.i
  store i64 0, ptr %i.cd, align 8, !tbaa !110
  store ptr null, ptr %i.cg, align 8, !tbaa !103
  %i.cm = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.cm, ptr noundef nonnull align 8 dereferenceable(12) %i.cn, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  invoke void @_ZNK4pbrt17BasicSceneBuilder16RenderFromObjectEv(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::AnimatedTransform") align 4 %10, ptr noundef nonnull align 64 dereferenceable(3544) %0)
          to label %bb.o unwind label %bb.z

bb.o:                                             ; preds = %.loopexit
  invoke void @_ZN4pbrt22TransformedSceneEntityC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_19ParameterDictionaryENS_7FileLocERKNS_17AnimatedTransformE(ptr noundef nonnull align 8 dereferenceable(840) %8, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nofree noundef nonnull align 8 dereferenceable(112) %9, ptr noundef nonnull byval(%"struct.pbrt::FileLoc") align 8 %3, ptr noundef nonnull align 4 dereferenceable(696) %10)
          to label %bb.p unwind label %bb.z

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN4pbrt10BasicScene9AddMediumENS_22TransformedSceneEntityE(ptr noundef nonnull align 8 dereferenceable(1520) %i.bx, ptr nofree noundef nonnull align 8 dereferenceable(840) %8)
          to label %bb.q unwind label %bb.aa

bb.q:                                             ; preds = %bb.p
  %i.co = getelementptr inbounds nuw i8, ptr %8, i64 120
  store i64 0, ptr %i.co, align 8, !tbaa !109
  %i.cp = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i.i.i17 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i.i.i17, label %_ZN4pbrt11SceneEntityD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cr = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.cs = getelementptr inbounds nuw i8, ptr %8, i64 112
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !110
  %i.cu = shl i64 %i.ct, 3
  %i.cv = load ptr, ptr %i.cr, align 8, !tbaa !111 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !72
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8
  invoke void %i.cy(ptr noundef nonnull align 8 dereferenceable(8) %i.cv, ptr noundef nonnull %i.cq, i64 noundef %i.cu, i64 noundef 8)
          to label %_ZN4pbrt11SceneEntityD2Ev.exit unwind label %bb.s, !inline_history !3

bb.s:                                             ; preds = %bb.r
  %i.cz = landingpad { ptr, i32 }
          catch ptr null
  %i.da = extractvalue { ptr, i32 } %i.cz, 0
  call void @__clang_call_terminate(ptr %i.da) #31
  unreachable

_ZN4pbrt11SceneEntityD2Ev.exit:                   ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  store i64 0, ptr %i.cb, align 8, !tbaa !109
  %i.db = load ptr, ptr %i.bz, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i.i18 = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i.i.i18, label %_ZN4pbrt19ParameterDictionaryD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZN4pbrt11SceneEntityD2Ev.exit
  %i.dc = load i64, ptr %i.ca, align 8, !tbaa !110
  %i.dd = shl i64 %i.dc, 3
  %i.de = load ptr, ptr %9, align 8, !tbaa !111   ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !72
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8
  invoke void %i.dh(ptr noundef nonnull align 8 dereferenceable(8) %i.de, ptr noundef nonnull %i.db, i64 noundef %i.dd, i64 noundef 8)
          to label %_ZN4pbrt19ParameterDictionaryD2Ev.exit unwind label %bb.u, !inline_history !3

bb.u:                                             ; preds = %bb.t
  %i.di = landingpad { ptr, i32 }
          catch ptr null
  %i.dj = extractvalue { ptr, i32 } %i.di, 0
  call void @__clang_call_terminate(ptr %i.dj) #31
  unreachable

_ZN4pbrt19ParameterDictionaryD2Ev.exit:           ; preds = %_ZN4pbrt11SceneEntityD2Ev.exit, %bb.t
  store i64 0, ptr %i.cc, align 8, !tbaa !109
  %i.dk = load ptr, ptr %i.cg, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i.i19 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i.i.i19, label %_ZN4pbrt19ParameterDictionaryD2Ev.exit20, label %bb.v

bb.v:                                             ; preds = %_ZN4pbrt19ParameterDictionaryD2Ev.exit
  %i.dl = load i64, ptr %i.cd, align 8, !tbaa !110
  %i.dm = shl i64 %i.dl, 3
  %i.dn = load ptr, ptr %6, align 8, !tbaa !111   ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !72
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8
  invoke void %i.dq(ptr noundef nonnull align 8 dereferenceable(8) %i.dn, ptr noundef nonnull %i.dk, i64 noundef %i.dm, i64 noundef 8)
          to label %_ZN4pbrt19ParameterDictionaryD2Ev.exit20 unwind label %bb.w, !inline_history !3

bb.w:                                             ; preds = %bb.v
  %i.dr = landingpad { ptr, i32 }
          catch ptr null
  %i.ds = extractvalue { ptr, i32 } %i.dr, 0
  call void @__clang_call_terminate(ptr %i.ds) #31
  unreachable

_ZN4pbrt19ParameterDictionaryD2Ev.exit20:         ; preds = %_ZN4pbrt19ParameterDictionaryD2Ev.exit, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %bb.x

bb.x:                                             ; preds = %bb.g, %_ZN4pbrt19ParameterDictionaryD2Ev.exit20
  %i.dt = load ptr, ptr %4, align 8, !tbaa !89    ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dv = icmp eq ptr %i.dt, %i.du
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.x
  %i.dw = load i64, ptr %i.du, align 8, !tbaa !88
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dx) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret void

bb.y:                                             ; preds = %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit
  %i.dy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %7) #32
  br label %bb.ac

bb.z:                                             ; preds = %bb.o, %.loopexit
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %bb.p
  %i.ea = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt11SceneEntityD2Ev(ptr noundef nonnull align 8 dead_on_return(840) dereferenceable(840) %8) #32
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pn = phi { ptr, i32 } [ %i.ea, %bb.aa ], [ %i.dz, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @_ZN4pbrt19ParameterDictionaryD2Ev(ptr noundef nonnull align 8 dead_on_return(108) dereferenceable(108) %9) #32
  call void @_ZN4pbrt19ParameterDictionaryD2Ev(ptr noundef nonnull align 8 dead_on_return(108) dereferenceable(108) %6) #32
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.y
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ab ], [ %i.dy, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.i
  %.pn11 = phi { ptr, i32 } [ %i.au, %bb.i ], [ %.pn.pn.pn, %bb.ac ] ; 2 uses
  %i.eb = load ptr, ptr %4, align 8, !tbaa !89    ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ed = icmp eq ptr %i.eb, %i.ec
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.ad
  %i.ee = load i64, ptr %i.ec, align 8, !tbaa !88
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.sink.split: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  %.sink45 = phi i64 [ %i.ee, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14 ]
  %.sink = phi ptr [ %i.eb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ], [ %i.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14 ]
  %.pn11.pn.ph = phi { ptr, i32 } [ %.pn11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ], [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14 ]
  %i.ef = add i64 %.sink45, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ef) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.sink.split, %bb.ad, %bb.h
  %.pn11.pn = phi { ptr, i32 } [ %i.aq, %bb.h ], [ %.pn11, %bb.ad ], [ %.pn11.pn.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  resume { ptr, i32 } %.pn11.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4pbrt12ParserTarget17ErrorExitDeferredIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKNS_7FileLocEPKcDpOT_(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.a, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !85, !alias.scope !780
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !87, !alias.scope !780
  store i8 0, ptr %i.b, align 8, !tbaa !88, !alias.scope !780
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEvPS7_PKcOT_DpOT0_(ptr noundef nonnull align 8 %4, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load ptr, ptr %4, align 8, !tbaa !89, !alias.scope !780 ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.b
  br i1 %i.f, label %common.resume.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.b, align 8, !tbaa !88, !alias.scope !780
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #33
  br label %common.resume.i

end_hunk_3
begin_hunk_4_@_ZN4pbrt10BasicScene9AddMediumENS_22TransformedSceneEntityE:bb.a
_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE15allocate_objectIS4_EEPT_m.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.fq = load ptr, ptr %i.fk, align 8, !tbaa !72, !noalias !797
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8, !noalias !797
  %i.ft = invoke noundef ptr %i.fs(ptr noundef nonnull align 8 dereferenceable(8) %i.fk, i64 noundef %i.fo, i64 noundef 8)
          to label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEE7reserveEm.exit.i.i.i.i.i.i.i.i.thread unwind label %bb.w, !inline_history !792

_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEE7reserveEm.exit.i.i.i.i.i.i.i.i.thread: ; preds = %bb.e, %_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE15allocate_objectIS4_EEPT_m.exit.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i2024.i.i.i.i.i.i.i.i = phi ptr [ null, %bb.e ], [ %i.ft, %_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE15allocate_objectIS4_EEPT_m.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  store i64 %i.r, ptr %i.fn, align 8, !tbaa !110, !alias.scope !797
  store ptr %.0.i.i.i.i2024.i.i.i.i.i.i.i.i, ptr %i.fm, align 8, !tbaa !103, !alias.scope !797
  br label %iter.check90

_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEE7reserveEm.exit.i.i.i.i.i.i.i.i: ; preds = %.loopexit
  br i1 %.not.i.i.i.i, label %"_ZSt4bindIRZN4pbrt10BasicScene9AddMediumENS0_22TransformedSceneEntityEE3$_0JEENSt12_Bind_helperIXsr15__is_socketlikeIT_EE5valueES6_JDpT0_EE4typeEOS6_DpOS7_.exit.i", label %iter.check90

iter.check90:                                     ; preds = %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEE7reserveEm.exit.i.i.i.i.i.i.i.i.thread, %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEE7reserveEm.exit.i.i.i.i.i.i.i.i
  %i.fu = phi ptr [ %.0.i.i.i.i2024.i.i.i.i.i.i.i.i, %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEE7reserveEm.exit.i.i.i.i.i.i.i.i.thread ], [ null, %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEE7reserveEm.exit.i.i.i.i.i.i.i.i ] ; 6 uses
  %i.fv = phi i64 [ %i.r, %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEE7reserveEm.exit.i.i.i.i.i.i.i.i.thread ], [ 0, %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEE7reserveEm.exit.i.i.i.i.i.i.i.i ] ; 4 uses
  %.not.i9.i.i.i.i.i.i.i.i = icmp eq ptr %i.fu, null
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.fx = select i1 %.not.i9.i.i.i.i.i.i.i.i, ptr %i.fw, ptr %i.fu ; 12 uses
  %.not.i.i10.i.i.i.i.i.i.i.i = icmp eq ptr %i.ff, null
  %i.fy = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.fz = select i1 %.not.i.i10.i.i.i.i.i.i.i.i, ptr %i.fy, ptr %i.ff ; 12 uses
  %min.iters.check74 = icmp ult i64 %i.r, 4
  %i.ga = ptrtoaddr ptr %i.fz to i64
  %i.gb = ptrtoaddr ptr %i.fx to i64
  %i.gc = sub i64 %i.ga, %i.gb
  %diff.check76 = icmp ugt i64 %i.gc, -128
  %or.cond111 = select i1 %min.iters.check74, i1 true, i1 %diff.check76
  br i1 %or.cond111, label %vec.epilog.scalar.ph92.preheader, label %vector.main.loop.iter.check77

vector.main.loop.iter.check77:                    ; preds = %iter.check90
  %min.iters.check78 = icmp ult i64 %i.r, 16
  br i1 %min.iters.check78, label %vec.epilog.ph94, label %vector.ph79

vector.ph79:                                      ; preds = %vector.main.loop.iter.check77
  %i.gd = and i64 %i.r, 12
  %n.vec80 = and i64 %i.r, -16                    ; 4 uses
  br label %vector.body81

vector.body81:                                    ; preds = %vector.ph79, %vector.body81
  %index82 = phi i64 [ 0, %vector.ph79 ], [ %index.next87, %vector.body81 ] ; 3 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %index82 ; 4 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %index82 ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 32
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 64
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 96
  %wide.load83 = load <4 x ptr>, ptr %i.gf, align 8, !tbaa !189, !noalias !797
  %wide.load84 = load <4 x ptr>, ptr %i.gg, align 8, !tbaa !189, !noalias !797
  %wide.load85 = load <4 x ptr>, ptr %i.gh, align 8, !tbaa !189, !noalias !797
  %wide.load86 = load <4 x ptr>, ptr %i.gi, align 8, !tbaa !189, !noalias !797
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ge, i64 32
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ge, i64 64
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ge, i64 96
  store <4 x ptr> %wide.load83, ptr %i.ge, align 8, !tbaa !189
  store <4 x ptr> %wide.load84, ptr %i.gj, align 8, !tbaa !189
  store <4 x ptr> %wide.load85, ptr %i.gk, align 8, !tbaa !189
  store <4 x ptr> %wide.load86, ptr %i.gl, align 8, !tbaa !189
  %index.next87 = add nuw i64 %index82, 16        ; 2 uses
  %i.gm = icmp eq i64 %index.next87, %n.vec80
  br i1 %i.gm, label %middle.block88, label %vector.body81, !llvm.loop !793

middle.block88:                                   ; preds = %vector.body81
  %cmp.n89 = icmp eq i64 %i.r, %n.vec80
  br i1 %cmp.n89, label %"_ZSt4bindIRZN4pbrt10BasicScene9AddMediumENS0_22TransformedSceneEntityEE3$_0JEENSt12_Bind_helperIXsr15__is_socketlikeIT_EE5valueES6_JDpT0_EE4typeEOS6_DpOS7_.exit.i", label %vec.epilog.iter.check91

vec.epilog.iter.check91:                          ; preds = %middle.block88
  %min.epilog.iters.check93 = icmp eq i64 %i.gd, 0
  br i1 %min.epilog.iters.check93, label %vec.epilog.scalar.ph92.preheader, label %vec.epilog.ph94, !prof !181

vec.epilog.ph94:                                  ; preds = %vector.main.loop.iter.check77, %vec.epilog.iter.check91
  %vec.epilog.resume.val95 = phi i64 [ %n.vec80, %vec.epilog.iter.check91 ], [ 0, %vector.main.loop.iter.check77 ]
  %n.vec96 = and i64 %i.r, -4                     ; 3 uses
  br label %vec.epilog.vector.body97

vec.epilog.vector.body97:                         ; preds = %vec.epilog.vector.body97, %vec.epilog.ph94
  %index98 = phi i64 [ %vec.epilog.resume.val95, %vec.epilog.ph94 ], [ %index.next100, %vec.epilog.vector.body97 ] ; 3 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %index98
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %index98
  %wide.load99 = load <4 x ptr>, ptr %i.go, align 8, !tbaa !189, !noalias !797
  store <4 x ptr> %wide.load99, ptr %i.gn, align 8, !tbaa !189
  %index.next100 = add nuw i64 %index98, 4        ; 2 uses
  %i.gp = icmp eq i64 %index.next100, %n.vec96
  br i1 %i.gp, label %vec.epilog.middle.block101, label %vec.epilog.vector.body97, !llvm.loop !794

vec.epilog.middle.block101:                       ; preds = %vec.epilog.vector.body97
  %cmp.n102 = icmp eq i64 %i.r, %n.vec96
  br i1 %cmp.n102, label %"_ZSt4bindIRZN4pbrt10BasicScene9AddMediumENS0_22TransformedSceneEntityEE3$_0JEENSt12_Bind_helperIXsr15__is_socketlikeIT_EE5valueES6_JDpT0_EE4typeEOS6_DpOS7_.exit.i", label %vec.epilog.scalar.ph92.preheader

vec.epilog.scalar.ph92.preheader:                 ; preds = %iter.check90, %vec.epilog.iter.check91, %vec.epilog.middle.block101
  %.011.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %iter.check90 ], [ %n.vec80, %vec.epilog.iter.check91 ], [ %n.vec96, %vec.epilog.middle.block101 ] ; 4 uses
  %i.gq = sub i64 %i.r, %.011.i.i.i.i.i.i.i.i.ph
  %xtraiter115 = and i64 %i.gq, 7                 ; 2 uses
  %lcmp.mod116.not = icmp eq i64 %xtraiter115, 0
  br i1 %lcmp.mod116.not, label %vec.epilog.scalar.ph92.prol.loopexit, label %vec.epilog.scalar.ph92.prol

vec.epilog.scalar.ph92.prol:                      ; preds = %vec.epilog.scalar.ph92.preheader, %vec.epilog.scalar.ph92.prol
  %.011.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.gu, %vec.epilog.scalar.ph92.prol ], [ %.011.i.i.i.i.i.i.i.i.ph, %vec.epilog.scalar.ph92.preheader ] ; 3 uses
  %prol.iter117 = phi i64 [ %prol.iter117.next, %vec.epilog.scalar.ph92.prol ], [ 0, %vec.epilog.scalar.ph92.preheader ]
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %.011.i.i.i.i.i.i.i.i.prol
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %.011.i.i.i.i.i.i.i.i.prol
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !189, !noalias !797
  store ptr %i.gt, ptr %i.gr, align 8, !tbaa !189
  %i.gu = add nuw i64 %.011.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter117.next = add i64 %prol.iter117, 1   ; 2 uses
  %prol.iter117.cmp.not = icmp eq i64 %prol.iter117.next, %xtraiter115
  br i1 %prol.iter117.cmp.not, label %vec.epilog.scalar.ph92.prol.loopexit, label %vec.epilog.scalar.ph92.prol, !llvm.loop !795

vec.epilog.scalar.ph92.prol.loopexit:             ; preds = %vec.epilog.scalar.ph92.prol, %vec.epilog.scalar.ph92.preheader
  %.011.i.i.i.i.i.i.i.i.unr = phi i64 [ %.011.i.i.i.i.i.i.i.i.ph, %vec.epilog.scalar.ph92.preheader ], [ %i.gu, %vec.epilog.scalar.ph92.prol ]
  %i.gv = sub i64 %.011.i.i.i.i.i.i.i.i.ph, %i.r
  %i.gw = icmp ugt i64 %i.gv, -8
  br i1 %i.gw, label %"_ZSt4bindIRZN4pbrt10BasicScene9AddMediumENS0_22TransformedSceneEntityEE3$_0JEENSt12_Bind_helperIXsr15__is_socketlikeIT_EE5valueES6_JDpT0_EE4typeEOS6_DpOS7_.exit.i", label %vec.epilog.scalar.ph92

vec.epilog.scalar.ph92:                           ; preds = %vec.epilog.scalar.ph92.prol.loopexit, %vec.epilog.scalar.ph92
  %.011.i.i.i.i.i.i.i.i = phi i64 [ %i.ic, %vec.epilog.scalar.ph92 ], [ %.011.i.i.i.i.i.i.i.i.unr, %vec.epilog.scalar.ph92.prol.loopexit ] ; 10 uses
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %.011.i.i.i.i.i.i.i.i
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %.011.i.i.i.i.i.i.i.i
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !189, !noalias !797
  store ptr %i.gz, ptr %i.gx, align 8, !tbaa !189
  %i.ha = add nuw i64 %.011.i.i.i.i.i.i.i.i, 1    ; 2 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.ha
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %i.ha
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !189, !noalias !797
  store ptr %i.hd, ptr %i.hb, align 8, !tbaa !189
  %i.he = add nuw i64 %.011.i.i.i.i.i.i.i.i, 2    ; 2 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.he
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %i.he
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !189, !noalias !797
  store ptr %i.hh, ptr %i.hf, align 8, !tbaa !189
  %i.hi = add nuw i64 %.011.i.i.i.i.i.i.i.i, 3    ; 2 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.hi
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %i.hi
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !189, !noalias !797
  store ptr %i.hl, ptr %i.hj, align 8, !tbaa !189
  %i.hm = add nuw i64 %.011.i.i.i.i.i.i.i.i, 4    ; 2 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.hm
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %i.hm
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !189, !noalias !797
  store ptr %i.hp, ptr %i.hn, align 8, !tbaa !189
  %i.hq = add nuw i64 %.011.i.i.i.i.i.i.i.i, 5    ; 2 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.hq
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %i.hq
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !189, !noalias !797
  store ptr %i.ht, ptr %i.hr, align 8, !tbaa !189
  %i.hu = add nuw i64 %.011.i.i.i.i.i.i.i.i, 6    ; 2 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.hu
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %i.hu
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !189, !noalias !797
  store ptr %i.hx, ptr %i.hv, align 8, !tbaa !189
  %i.hy = add nuw i64 %.011.i.i.i.i.i.i.i.i, 7    ; 2 uses
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.hy
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %i.hy
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !189, !noalias !797
  store ptr %i.ib, ptr %i.hz, align 8, !tbaa !189
  %i.ic = add nuw i64 %.011.i.i.i.i.i.i.i.i, 8    ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.7 = icmp eq i64 %i.ic, %i.r
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.7, label %"_ZSt4bindIRZN4pbrt10BasicScene9AddMediumENS0_22TransformedSceneEntityEE3$_0JEENSt12_Bind_helperIXsr15__is_socketlikeIT_EE5valueES6_JDpT0_EE4typeEOS6_DpOS7_.exit.i", label %vec.epilog.scalar.ph92, !llvm.loop !796

"_ZSt4bindIRZN4pbrt10BasicScene9AddMediumENS0_22TransformedSceneEntityEE3$_0JEENSt12_Bind_helperIXsr15__is_socketlikeIT_EE5valueES6_JDpT0_EE4typeEOS6_DpOS7_.exit.i": ; preds = %vec.epilog.scalar.ph92.prol.loopexit, %vec.epilog.scalar.ph92, %middle.block88, %vec.epilog.middle.block101, %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEE7reserveEm.exit.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i1220 = phi i1 [ true, %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEE7reserveEm.exit.i.i.i.i.i.i.i.i ], [ false, %middle.block88 ], [ false, %vec.epilog.middle.block101 ], [ false, %vec.epilog.scalar.ph92 ], [ false, %vec.epilog.scalar.ph92.prol.loopexit ]
  %i.id = phi ptr [ null, %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEE7reserveEm.exit.i.i.i.i.i.i.i.i ], [ %i.fu, %middle.block88 ], [ %i.fu, %vec.epilog.middle.block101 ], [ %i.fu, %vec.epilog.scalar.ph92 ], [ %i.fu, %vec.epilog.scalar.ph92.prol.loopexit ]
  %i.ie = phi i64 [ 0, %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEE7reserveEm.exit.i.i.i.i.i.i.i.i ], [ %i.fv, %middle.block88 ], [ %i.fv, %vec.epilog.middle.block101 ], [ %i.fv, %vec.epilog.scalar.ph92 ], [ %i.fv, %vec.epilog.scalar.ph92.prol.loopexit ]
  %i.if = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  store i64 %i.r, ptr %i.if, align 8, !tbaa !109, !alias.scope !797
  %i.ig = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ig, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.fg, i64 12, i1 false)
  %i.ih = getelementptr inbounds nuw i8, ptr %2, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(696) %i.ih, ptr noundef nonnull readonly align 8 dereferenceable(696) %i.fh, i64 696, i1 false), !tbaa.struct !336
  %i.ii = getelementptr inbounds nuw i8, ptr %2, i64 840
  store ptr %0, ptr %i.ii, align 8, !tbaa !339, !alias.scope !797
  %i.ij = invoke noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #35
          to label %bb.f unwind label %bb.j       ; 15 uses

bb.f:                                             ; preds = %"_ZSt4bindIRZN4pbrt10BasicScene9AddMediumENS0_22TransformedSceneEntityEE3$_0JEENSt12_Bind_helperIXsr15__is_socketlikeIT_EE5valueES6_JDpT0_EE4typeEOS6_DpOS7_.exit.i"
  %i.ik = invoke noalias noundef nonnull dereferenceable(856) ptr @_Znwm(i64 noundef 856) #35
          to label %.noexc.i.i unwind label %.body.i ; 10 uses

.noexc.i.i:                                       ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(849) %i.ik, ptr noundef nonnull align 8 dereferenceable(849) %2, i64 32, i1 false)
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 32
  store i64 %i.fl, ptr %i.il, align 8, !tbaa !102
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 40
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 112
  %i.io = getelementptr inbounds nuw i8, ptr %i.ik, i64 120
  store i64 %i.r, ptr %i.io, align 8, !tbaa !109
  store i64 %i.ie, ptr %i.in, align 8, !tbaa !110
  store ptr %i.id, ptr %i.im, align 8, !tbaa !103
  %i.ip = icmp ult i64 %i.r, 9
  br i1 %i.ip, label %.preheader.i.i.i.i.i.i.i.i.i.i, label %bb.g

.preheader.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.noexc.i.i
  br i1 %.not.i.i.i.i.i.i.i.i1220, label %_ZNSt14_Function_baseD2Ev.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ik, i64 48
  %i.ir = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.is = shl nuw nsw i64 %i.r, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.iq, ptr nonnull align 8 %i.ir, i64 %i.is, i1 false), !tbaa !189
  br label %_ZNSt14_Function_baseD2Ev.exit.i

bb.g:                                             ; preds = %.noexc.i.i
  store i64 0, ptr %i.if, align 8, !tbaa !109
  br label %_ZNSt14_Function_baseD2Ev.exit.i

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i
  store i64 0, ptr %i.fn, align 8, !tbaa !110
  store ptr null, ptr %i.fm, align 8, !tbaa !103
  %i.it = getelementptr inbounds nuw i8, ptr %i.ik, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.it, ptr noundef nonnull align 8 dereferenceable(12) %i.fg, i64 12, i1 false)
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ik, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(696) %i.iu, ptr noundef nonnull align 8 dereferenceable(696) %i.fh, i64 696, i1 false)
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ik, i64 840
  store ptr %0, ptr %i.iv, align 8, !tbaa !339
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  store i32 0, ptr %i.iw, align 8, !tbaa !311
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.ix, i8 0, i64 17, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4pbrt8AsyncJobINS_6MediumEEE, i64 16), ptr %i.ij, align 8, !tbaa !72
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ij, i64 40
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ij, i64 64
  store ptr @"_ZNSt17_Function_handlerIFN4pbrt6MediumEvESt5_BindIFZNS0_10BasicScene9AddMediumENS0_22TransformedSceneEntityEE3$_0vEEE9_M_invokeERKSt9_Any_data", ptr %i.iz, align 8, !tbaa !341
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ij, i64 56
  store ptr %i.ik, ptr %i.iy, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ij, i64 48
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !88
  store ptr @"_ZNSt17_Function_handlerIFN4pbrt6MediumEvESt5_BindIFZNS0_10BasicScene9AddMediumENS0_22TransformedSceneEntityEE3$_0vEEE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation", ptr %i.ja, align 8, !tbaa !314
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ij, i64 72
  store i8 0, ptr %i.jb, align 8, !tbaa !344
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ij, i64 88
  store i8 0, ptr %i.jc, align 8, !tbaa !345
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ij, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.jd, i8 0, i64 40, i1 false)
  %i.je = getelementptr inbounds nuw i8, ptr %i.ij, i64 136
  tail call void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.je) #32
  %i.jf = invoke noundef i32 @_ZN4pbrt14RunningThreadsEv()
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.jg = icmp eq i32 %i.jf, 1
  br i1 %i.jg, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN4pbrt8AsyncJobINS_6MediumEE6DoWorkEv(ptr noundef nonnull align 8 dereferenceable(184) %i.ij)
          to label %bb.o unwind label %bb.j

.body.i:                                          ; preds = %bb.f
  %i.jh = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ij, i64 noundef 184) #33
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit18.i

bb.j:                                             ; preds = %bb.i, %_ZNSt14_Function_baseD2Ev.exit.i, %"_ZSt4bindIRZN4pbrt10BasicScene9AddMediumENS0_22TransformedSceneEntityEE3$_0JEENSt12_Bind_helperIXsr15__is_socketlikeIT_EE5valueES6_JDpT0_EE4typeEOS6_DpOS7_.exit.i"
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit18.i

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.jj = load ptr, ptr @_ZN4pbrt11ParallelJob10threadPoolE, align 8, !tbaa !322
  invoke void @_ZN4pbrt10ThreadPool12AddToJobListEPNS_11ParallelJobE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_lock") align 8 %3, ptr noundef nonnull align 8 dereferenceable(128) %i.jj, ptr noundef nonnull %i.ij)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.jk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit18.i

bb.m:                                             ; preds = %bb.k
  %i.jl = load ptr, ptr %3, align 8, !tbaa !325   ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.jn = load i8, ptr %i.jm, align 8, !tbaa !326, !range !211, !noundef !212
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.jo = trunc nuw i8 %i.jn to i1
  %.not.i.i13.i = icmp ne ptr %i.jl, null
  %or.cond.not.i = select i1 %i.jo, i1 %.not.i.i13.i, i1 false
  br i1 %or.cond.not.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.jp = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.jl) #32 ; 0 uses
  br label %bb.o

_ZNSt11unique_lockISt5mutexED2Ev.exit18.i:        ; preds = %bb.l, %bb.j, %.body.i
  %.pn.pn.i = phi { ptr, i32 } [ %i.jk, %bb.l ], [ %i.jh, %.body.i ], [ %i.ji, %bb.j ]
  call fastcc void @"_ZNSt5_BindIFZN4pbrt10BasicScene9AddMediumENS0_22TransformedSceneEntityEE3$_0vEED2Ev"(ptr noundef nonnull align 8 dead_on_return(849) dereferenceable(849) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %.body

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.jr = load ptr, ptr %1, align 8, !tbaa !200
  %i.js = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4pbrt8AsyncJobINS6_6MediumEEESt4lessIS5_ESaISt4pairIKS5_SA_EEEixERSE_(ptr noundef nonnull align 8 dereferenceable(48) %i.jq, ptr noundef nonnull align 8 dereferenceable(32) %i.jr)
          to label %bb.p unwind label %bb.w

bb.p:                                             ; preds = %bb.o
  store ptr %i.ij, ptr %i.js, align 8, !tbaa !798
  store i64 0, ptr %i.cn, align 8, !tbaa !109
  %i.jt = load ptr, ptr %i.cl, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.jt, null
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZZN4pbrt10BasicScene9AddMediumENS_22TransformedSceneEntityEEN3$_0D2Ev.exit", label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ju = load ptr, ptr %i.cj, align 8, !tbaa !72
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 24
  %i.jw = load ptr, ptr %i.jv, align 8
  invoke void %i.jw(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, ptr noundef nonnull %i.jt, i64 noundef %i.fe, i64 noundef 8)
          to label %"_ZZN4pbrt10BasicScene9AddMediumENS_22TransformedSceneEntityEEN3$_0D2Ev.exit" unwind label %bb.r, !inline_history !3

bb.r:                                             ; preds = %bb.q
  %i.jx = landingpad { ptr, i32 }
          catch ptr null
  %i.jy = extractvalue { ptr, i32 } %i.jx, 0
  call void @__clang_call_terminate(ptr %i.jy) #31
  unreachable

"_ZZN4pbrt10BasicScene9AddMediumENS_22TransformedSceneEntityEEN3$_0D2Ev.exit": ; preds = %bb.p, %bb.q
  %i.jz = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.cg) #32 ; 0 uses
  store i64 0, ptr %i.f, align 8, !tbaa !109
  %.not.i.i.i.i.i.i.i14 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i.i14, label %"_ZZN4pbrt10BasicScene9AddMediumENS_22TransformedSceneEntityEEN3$_0D2Ev.exit15", label %bb.s

bb.s:                                             ; preds = %"_ZZN4pbrt10BasicScene9AddMediumENS_22TransformedSceneEntityEEN3$_0D2Ev.exit"
  %i.ka = load ptr, ptr %i.b, align 8, !tbaa !72
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 24
  %i.kc = load ptr, ptr %i.kb, align 8
  invoke void %i.kc(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %i.q, i64 noundef %i.p, i64 noundef 8)
          to label %"_ZZN4pbrt10BasicScene9AddMediumENS_22TransformedSceneEntityEEN3$_0D2Ev.exit15" unwind label %bb.t, !inline_history !3

bb.t:                                             ; preds = %bb.s
  %i.kd = landingpad { ptr, i32 }
          catch ptr null
  %i.ke = extractvalue { ptr, i32 } %i.kd, 0
  call void @__clang_call_terminate(ptr %i.ke) #31
  unreachable

"_ZZN4pbrt10BasicScene9AddMediumENS_22TransformedSceneEntityEEN3$_0D2Ev.exit15": ; preds = %"_ZZN4pbrt10BasicScene9AddMediumENS_22TransformedSceneEntityEEN3$_0D2Ev.exit", %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret void

bb.u:                                             ; preds = %bb.c
  %i.kf = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.v:                                             ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE15allocate_objectIS4_EEPT_m.exit.i.i.i.i.i.i
  %i.kg = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE15allocate_objectIS4_EEPT_m.exit.i.i.i.i.i.i.i.i.i, %bb.o
  %i.kh = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit18.i, %bb.w
  %eh.lpad-body = phi { ptr, i32 } [ %i.kh, %bb.w ], [ %.pn.pn.i, %_ZNSt11unique_lockISt5mutexED2Ev.exit18.i ]
  call fastcc void @"_ZZN4pbrt10BasicScene9AddMediumENS_22TransformedSceneEntityEEN3$_0D2Ev"(ptr noundef nonnull align 8 dead_on_return(848) dereferenceable(848) %5) #32
  br label %bb.x

bb.x:                                             ; preds = %.body, %bb.v
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.kg, %bb.v ]
  %i.ki = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.cg) #32 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.x ], [ %i.kf, %bb.u ]
  call fastcc void @"_ZZN4pbrt10BasicScene9AddMediumENS_22TransformedSceneEntityEEN3$_0D2Ev"(ptr noundef nonnull align 8 dead_on_return(848) dereferenceable(848) %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4pbrt17BasicSceneBuilder16RenderFromObjectEv(ptr dead_on_unwind noalias writable sret(%"class.pbrt::AnimatedTransform") align 4 %0, ptr noundef nonnull align 64 dereferenceable(3544) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.pstd::optional.288", align 4 ; 5 uses
  %3 = alloca %"class.pbrt::Transform", align 4   ; 5 uses
  %4 = alloca %"class.pstd::optional.288", align 4 ; 5 uses
  %5 = alloca %"class.pbrt::Transform", align 4   ; 5 uses
  %6 = alloca %"class.pbrt::Transform", align 4   ; 6 uses
  %7 = alloca %"class.pbrt::Transform", align 4   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !803)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32, !noalias !803
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1120 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 800
  call void @_ZNK4pbrt9TransformmlERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %5, ptr noundef nonnull align 4 dereferenceable(128) %i.a, ptr noundef nonnull align 4 dereferenceable(128) %i.b), !noalias !803
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %6, ptr noundef nonnull align 4 dereferenceable(64) %5, i64 64, i1 false), !tbaa.struct !217
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32, !noalias !803
  call void @_ZN4pbrt7InverseILi4EEEN4pstd8optionalINS_12SquareMatrixIXT_EEEEERKS4_(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.288") align 4 %4, ptr noundef nonnull align 4 dereferenceable(64) %5), !noalias !803
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.e = load i8, ptr %i.d, align 4, !tbaa !348, !range !211, !noalias !803, !noundef !212
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_ZN4pstd8optionalIN4pbrt12SquareMatrixILi4EEEEdeEv.exit.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.a
  store <8 x float> splat (float +snan(0x200000)), ptr %i.c, align 4, !tbaa !107, !alias.scope !803
end_hunk_4
begin_hunk_5_@_ZN4pbrt22TransformedSceneEntityC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_19ParameterDictionaryENS_7FileLocERKNS_17AnimatedTransformE:bb.a
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %index13
  %wide.load14 = load <4 x ptr>, ptr %i.aj, align 8, !tbaa !189
  store <4 x ptr> %wide.load14, ptr %i.ai, align 8, !tbaa !189
  %index.next15 = add nuw i64 %index13, 4         ; 2 uses
  %i.ak = icmp eq i64 %index.next15, %n.vec12
  br i1 %i.ak, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !806

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n16 = icmp eq i64 %i.o, %n.vec12
  br i1 %cmp.n16, label %_ZN4pbrt19ParameterDictionaryC2ERKS0_.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.011.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec12, %vec.epilog.middle.block ] ; 4 uses
  %i.al = sub i64 %i.o, %.011.i.i.ph
  %xtraiter = and i64 %i.al, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.011.i.i.prol = phi i64 [ %i.ap, %vec.epilog.scalar.ph.prol ], [ %.011.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.011.i.i.prol
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.011.i.i.prol
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !189
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !189
  %i.ap = add nuw i64 %.011.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !807

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.011.i.i.unr = phi i64 [ %.011.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ap, %vec.epilog.scalar.ph.prol ]
  %i.aq = sub i64 %.011.i.i.ph, %i.o
  %i.ar = icmp ugt i64 %i.aq, -8
  br i1 %i.ar, label %_ZN4pbrt19ParameterDictionaryC2ERKS0_.exit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.011.i.i = phi i64 [ %i.bx, %vec.epilog.scalar.ph ], [ %.011.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.011.i.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.011.i.i
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !189
  store ptr %i.au, ptr %i.as, align 8, !tbaa !189
  %i.av = add nuw i64 %.011.i.i, 1                ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.av
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.av
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !189
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !189
  %i.az = add nuw i64 %.011.i.i, 2                ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.az
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.az
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !189
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !189
  %i.bd = add nuw i64 %.011.i.i, 3                ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.bd
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.bd
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !189
  store ptr %i.bg, ptr %i.be, align 8, !tbaa !189
  %i.bh = add nuw i64 %.011.i.i, 4                ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.bh
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.bh
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !189
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !189
  %i.bl = add nuw i64 %.011.i.i, 5                ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.bl
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.bl
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !189
  store ptr %i.bo, ptr %i.bm, align 8, !tbaa !189
  %i.bp = add nuw i64 %.011.i.i, 6                ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.bp
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.bp
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !189
  store ptr %i.bs, ptr %i.bq, align 8, !tbaa !189
  %i.bt = add nuw i64 %.011.i.i, 7                ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.bt
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.bt
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !189
  store ptr %i.bw, ptr %i.bu, align 8, !tbaa !189
  %i.bx = add nuw i64 %.011.i.i, 8                ; 2 uses
  %exitcond.not.i.i.7 = icmp eq i64 %i.bx, %i.o
  br i1 %exitcond.not.i.i.7, label %_ZN4pbrt19ParameterDictionaryC2ERKS0_.exit, label %vec.epilog.scalar.ph, !llvm.loop !808

_ZN4pbrt19ParameterDictionaryC2ERKS0_.exit:       ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEE7reserveEm.exit.i.i
  store i64 %i.o, ptr %i.e, align 8, !tbaa !109
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.by, ptr noundef nonnull align 8 dereferenceable(12) %i.bz, i64 12, i1 false)
  invoke void @_ZN4pbrt11SceneEntityC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_19ParameterDictionaryENS_7FileLocE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef nonnull align 8 dereferenceable(112) %5, ptr noundef nonnull byval(%"struct.pbrt::FileLoc") align 8 %3)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZN4pbrt19ParameterDictionaryC2ERKS0_.exit
  store i64 0, ptr %i.e, align 8, !tbaa !109
  %i.ca = load ptr, ptr %i.c, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i.i, label %_ZN4pbrt19ParameterDictionaryD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cb = load i64, ptr %i.d, align 8, !tbaa !110
  %i.cc = shl i64 %i.cb, 3
  %i.cd = load ptr, ptr %5, align 8, !tbaa !111   ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !72
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8
  invoke void %i.cg(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef nonnull %i.ca, i64 noundef %i.cc, i64 noundef 8)
          to label %_ZN4pbrt19ParameterDictionaryD2Ev.exit unwind label %bb.e, !inline_history !3

bb.e:                                             ; preds = %bb.d
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  call void @__clang_call_terminate(ptr %i.ci) #31
  unreachable

_ZN4pbrt19ParameterDictionaryD2Ev.exit:           ; preds = %bb.c, %bb.d
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(696) %i.cj, ptr noundef nonnull align 4 dereferenceable(696) %4, i64 696, i1 false), !tbaa.struct !336
  ret void

bb.f:                                             ; preds = %_ZN4pbrt19ParameterDictionaryC2ERKS0_.exit
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt19ParameterDictionaryD2Ev(ptr noundef nonnull align 8 dead_on_return(108) dereferenceable(108) %5) #32
  resume { ptr, i32 } %i.ck
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4pbrt11SceneEntityD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 0, ptr %i.a, align 8, !tbaa !109
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !103  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZN4pbrt19ParameterDictionaryD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = load i64, ptr %i.e, align 8, !tbaa !110
  %i.g = shl i64 %i.f, 3
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !111  ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !72
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  invoke void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %i.c, i64 noundef %i.g, i64 noundef 8)
          to label %_ZN4pbrt19ParameterDictionaryD2Ev.exit unwind label %bb.c, !inline_history !3

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #31
  unreachable

_ZN4pbrt19ParameterDictionaryD2Ev.exit:           ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt17BasicSceneBuilder11LightSourceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorISB_EEEENS_7FileLocE(ptr noundef nonnull align 64 dereferenceable(3544) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef align 8 captures(none) dereferenceable(96) %2, ptr noundef byval(%"struct.pbrt::FileLoc") align 8 %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.pbrt::ParameterDictionary", align 8 ; 12 uses
  %5 = alloca %"class.pbrt::InlinedVector", align 8 ; 8 uses
  %6 = alloca %"struct.pbrt::LightSceneEntity", align 8 ; 9 uses
  %7 = alloca %"class.pbrt::ParameterDictionary", align 8 ; 9 uses
  %8 = alloca %"class.pbrt::AnimatedTransform", align 4 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !166
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN4pbrt9ErrorExitIJRA12_KcEEEvPKNS_7FileLocEPS1_DpOT_(ptr noundef nonnull %3, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(12) @.str.40) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.d = load i64, ptr %2, align 8, !tbaa !102
  store i64 %i.d, ptr %5, align 8, !tbaa !102
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.j = load i64, ptr %i.h, align 8, !tbaa !109  ; 3 uses
  %i.k = load <2 x i64>, ptr %i.i, align 8, !tbaa !198
  store <2 x i64> %i.k, ptr %i.f, align 8, !tbaa !198
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !103
  store ptr %i.m, ptr %i.e, align 8, !tbaa !103
  %i.n = icmp ult i64 %i.j, 9
  br i1 %i.n, label %.preheader.i, label %bb.d

.preheader.i:                                     ; preds = %bb.c
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = shl nuw nsw i64 %i.j, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.p, i64 %i.q, i1 false), !tbaa !189
  br label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %i.h, align 8, !tbaa !109
  br label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit

_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit: ; preds = %.lr.ph.i, %.preheader.i, %bb.d
  store i64 0, ptr %i.i, align 8, !tbaa !110
  store ptr null, ptr %i.l, align 8, !tbaa !103
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !213
  invoke void @_ZN4pbrt19ParameterDictionaryC1ENS_13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS3_EEEERKS8_PKNS_13RGBColorSpaceE(ptr noundef nonnull align 8 dereferenceable(108) %4, ptr nofree noundef nonnull align 8 dereferenceable(96) %5, ptr noundef nonnull align 8 dereferenceable(96) %i.r, ptr noundef %i.t)
          to label %bb.e unwind label %bb.r

bb.e:                                             ; preds = %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit
  store i64 0, ptr %i.g, align 8, !tbaa !109
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !103  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i64, ptr %i.f, align 8, !tbaa !110
  %i.w = shl i64 %i.v, 3
  %i.x = load ptr, ptr %5, align 8, !tbaa !111    ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !72
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull %i.u, i64 noundef %i.w, i64 noundef 8)
          to label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit unwind label %bb.g, !inline_history !3

bb.g:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #31
  unreachable

_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit: ; preds = %bb.e, %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 16, !tbaa !165
  %i.af = load i64, ptr %4, align 8, !tbaa !102
  store i64 %i.af, ptr %7, align 8, !tbaa !102
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 3 uses
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !109 ; 3 uses
  %i.am = load <2 x i64>, ptr %i.ak, align 8, !tbaa !198
  store <2 x i64> %i.am, ptr %i.ah, align 8, !tbaa !198
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !103
  store ptr %i.ao, ptr %i.ag, align 8, !tbaa !103
  %i.ap = icmp ult i64 %i.al, 9
  br i1 %i.ap, label %.preheader.i.i, label %bb.h

.preheader.i.i:                                   ; preds = %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit
  %.not.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.as = shl nuw nsw i64 %i.al, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aq, ptr nonnull align 8 %i.ar, i64 %i.as, i1 false), !tbaa !189
  br label %.loopexit

bb.h:                                             ; preds = %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit
  store i64 0, ptr %i.aj, align 8, !tbaa !109
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.h, %.preheader.i.i
  store i64 0, ptr %i.ak, align 8, !tbaa !110
  store ptr null, ptr %i.an, align 8, !tbaa !103
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.at, ptr noundef nonnull align 8 dereferenceable(12) %i.au, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  invoke void @_ZNK4pbrt17BasicSceneBuilder16RenderFromObjectEv(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::AnimatedTransform") align 4 %8, ptr noundef nonnull align 64 dereferenceable(3544) %0)
          to label %bb.i unwind label %bb.s

bb.i:                                             ; preds = %.loopexit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke void @_ZN4pbrt16LightSceneEntityC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_19ParameterDictionaryENS_7FileLocERKNS_17AnimatedTransformES8_(ptr noundef nonnull align 8 dereferenceable(872) %6, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef nonnull align 8 dereferenceable(112) %7, ptr noundef nonnull byval(%"struct.pbrt::FileLoc") align 8 %3, ptr noundef nonnull align 4 dereferenceable(696) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.av)
          to label %bb.j unwind label %bb.s

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN4pbrt10BasicScene8AddLightENS_16LightSceneEntityE(ptr noundef nonnull align 8 dereferenceable(1520) %i.ae, ptr nofree noundef nonnull align 8 dereferenceable(872) %6)
          to label %bb.k unwind label %bb.t

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 840
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !89 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 856 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.k
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !88
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i64 0, ptr %i.bc, align 8, !tbaa !109
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4pbrt16LightSceneEntityD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !110
  %i.bi = shl i64 %i.bh, 3
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !111 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !72
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8
  invoke void %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull %i.be, i64 noundef %i.bi, i64 noundef 8)
          to label %_ZN4pbrt16LightSceneEntityD2Ev.exit unwind label %bb.m, !inline_history !3

bb.m:                                             ; preds = %bb.l
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  call void @__clang_call_terminate(ptr %i.bo) #31
  unreachable

_ZN4pbrt16LightSceneEntityD2Ev.exit:              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  store i64 0, ptr %i.ai, align 8, !tbaa !109
  %i.bp = load ptr, ptr %i.ag, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i.i, label %_ZN4pbrt19ParameterDictionaryD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4pbrt16LightSceneEntityD2Ev.exit
  %i.bq = load i64, ptr %i.ah, align 8, !tbaa !110
  %i.br = shl i64 %i.bq, 3
  %i.bs = load ptr, ptr %7, align 8, !tbaa !111   ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !72
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8
  invoke void %i.bv(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, ptr noundef nonnull %i.bp, i64 noundef %i.br, i64 noundef 8)
          to label %_ZN4pbrt19ParameterDictionaryD2Ev.exit unwind label %bb.o, !inline_history !3

bb.o:                                             ; preds = %bb.n
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  call void @__clang_call_terminate(ptr %i.bx) #31
  unreachable

_ZN4pbrt19ParameterDictionaryD2Ev.exit:           ; preds = %_ZN4pbrt16LightSceneEntityD2Ev.exit, %bb.n
  store i64 0, ptr %i.aj, align 8, !tbaa !109
  %i.by = load ptr, ptr %i.an, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i.i9 = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i.i9, label %_ZN4pbrt19ParameterDictionaryD2Ev.exit10, label %bb.p

bb.p:                                             ; preds = %_ZN4pbrt19ParameterDictionaryD2Ev.exit
  %i.bz = load i64, ptr %i.ak, align 8, !tbaa !110
  %i.ca = shl i64 %i.bz, 3
  %i.cb = load ptr, ptr %4, align 8, !tbaa !111   ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !72
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8
  invoke void %i.ce(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, ptr noundef nonnull %i.by, i64 noundef %i.ca, i64 noundef 8)
          to label %_ZN4pbrt19ParameterDictionaryD2Ev.exit10 unwind label %bb.q, !inline_history !3

bb.q:                                             ; preds = %bb.p
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %i.cf, 0
  call void @__clang_call_terminate(ptr %i.cg) #31
  unreachable

_ZN4pbrt19ParameterDictionaryD2Ev.exit10:         ; preds = %_ZN4pbrt19ParameterDictionaryD2Ev.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret void

bb.r:                                             ; preds = %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %5) #32
  br label %bb.v

bb.s:                                             ; preds = %bb.i, %.loopexit
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %bb.j
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt16LightSceneEntityD2Ev(ptr noundef nonnull align 8 dead_on_return(872) dereferenceable(872) %6) #32
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn = phi { ptr, i32 } [ %i.cj, %bb.t ], [ %i.ci, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  call void @_ZN4pbrt19ParameterDictionaryD2Ev(ptr noundef nonnull align 8 dead_on_return(108) dereferenceable(108) %7) #32
  call void @_ZN4pbrt19ParameterDictionaryD2Ev(ptr noundef nonnull align 8 dead_on_return(108) dereferenceable(108) %4) #32
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn, %bb.u ], [ %i.ch, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt9ErrorExitIJRA12_KcEEEvPKNS_7FileLocEPS1_DpOT_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(12) %2) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !85, !alias.scope !811
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !87, !alias.scope !811
  store i8 0, ptr %i.a, align 8, !tbaa !88, !alias.scope !811
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRA12_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef nonnull align 8 %3, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(12) %2)
          to label %_ZN4pbrt12StringPrintfIJRA12_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %3, align 8, !tbaa !89, !alias.scope !811 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !88, !alias.scope !811
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #33
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRA12_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %3, align 8, !tbaa !89
  invoke void @_ZN4pbrt9ErrorExitEPKNS_7FileLocEPKc(ptr noundef %0, ptr noundef %i.h) #34
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA12_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA12_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %3, align 8, !tbaa !89     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !88
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt10BasicScene8AddLightENS_16LightSceneEntityE(ptr noundef nonnull align 8 dereferenceable(1520) %0, ptr nofree noundef align 8 dereferenceable(872) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::_Bind.389", align 8    ; 20 uses
  %3 = alloca %"class.std::function.249", align 8 ; 8 uses
  %4 = alloca %"class.std::unique_lock", align 8  ; 6 uses
  %5 = alloca %"class.pbrt::Medium", align 8      ; 5 uses
  %6 = alloca %class.anon.175, align 8            ; 14 uses
  %7 = alloca %class.anon.175, align 8            ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 840
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @_ZN4pbrt10BasicScene9GetMediumERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS_7FileLocE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Medium") align 8 %5, ptr noundef nonnull align 8 dereferenceable(1520) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 968 ; 3 uses
  %i.d = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #32 ; 2 uses
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.d) #34
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.f = load i8, ptr %i.e, align 8, !tbaa !186, !range !211, !noundef !212
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  invoke void @_ZN4pbrt7WarningEPKNS_7FileLocEPKc(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.109)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.e:                                             ; preds = %bb.c, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  store ptr %0, ptr %6, align 8, !tbaa !353
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  invoke void @_ZN4pbrt16LightSceneEntityC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(872) %i.i, ptr noundef nonnull align 8 dereferenceable(872) %1)
          to label %bb.f unwind label %bb.af

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 880 ; 2 uses
  %i.k = load i64, ptr %5, align 8, !tbaa !354
  store i64 %i.k, ptr %i.j, align 8, !tbaa !354
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 2 uses
  %i.m = load ptr, ptr %6, align 8, !tbaa !353
  store ptr %i.m, ptr %7, align 8, !tbaa !353
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  invoke void @_ZN4pbrt16LightSceneEntityC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(872) %i.n, ptr noundef nonnull align 8 dereferenceable(872) %i.i)
          to label %bb.g unwind label %bb.ag

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 880 ; 2 uses
  %i.p = load i64, ptr %i.j, align 8, !tbaa !354
  store i64 %i.p, ptr %i.o, align 8, !tbaa !354
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !814)
  %i.q = load ptr, ptr %7, align 8, !tbaa !353, !noalias !814
  store ptr %i.q, ptr %2, align 8, !tbaa !353, !alias.scope !814
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  invoke void @_ZN4pbrt16LightSceneEntityC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(872) %i.r, ptr noundef nonnull align 8 dereferenceable(872) %i.n)
          to label %.noexc unwind label %bb.ah

.noexc:                                           ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 880 ; 2 uses
  %i.t = load i64, ptr %i.o, align 8, !tbaa !354, !noalias !814
  store i64 %i.t, ptr %i.s, align 8, !tbaa !354, !alias.scope !814
  %i.u = invoke noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #35
          to label %bb.h unwind label %bb.o       ; 15 uses

bb.h:                                             ; preds = %.noexc
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.w = invoke noalias noundef nonnull dereferenceable(896) ptr @_Znwm(i64 noundef 896) #35
          to label %.noexc.i.i unwind label %.body.i ; 13 uses

.noexc.i.i:                                       ; preds = %bb.h
  %i.x = load ptr, ptr %2, align 8, !tbaa !353
  store ptr %i.x, ptr %i.w, align 8, !tbaa !353
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(872) %i.y, ptr noundef nonnull align 8 dereferenceable(872) %i.r, i64 32, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !102
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !102
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 120
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 3 uses
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !109 ; 3 uses
  %i.ah = load <2 x i64>, ptr %i.af, align 8, !tbaa !198
  store <2 x i64> %i.ah, ptr %i.ad, align 8, !tbaa !198
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !103
  store ptr %i.aj, ptr %i.ac, align 8, !tbaa !103
  %i.ak = icmp ult i64 %i.ag, 9
  br i1 %i.ak, label %.preheader.i.i.i.i.i.i.i.i.i.i.i, label %bb.i

.preheader.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.noexc.i.i
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4pbrt22TransformedSceneEntityC2EOS0_.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.an = shl nuw nsw i64 %i.ag, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.al, ptr nonnull align 8 %i.am, i64 %i.an, i1 false), !tbaa !189
  br label %_ZN4pbrt22TransformedSceneEntityC2EOS0_.exit.i.i.i.i.i.i.i

bb.i:                                             ; preds = %.noexc.i.i
  store i64 0, ptr %i.ae, align 8, !tbaa !109
  br label %_ZN4pbrt22TransformedSceneEntityC2EOS0_.exit.i.i.i.i.i.i.i

_ZN4pbrt22TransformedSceneEntityC2EOS0_.exit.i.i.i.i.i.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i
  store i64 0, ptr %i.af, align 8, !tbaa !110
  store ptr null, ptr %i.ai, align 8, !tbaa !103
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 136
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ao, ptr noundef nonnull align 8 dereferenceable(12) %i.ap, i64 12, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 152
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(696) %i.aq, ptr noundef nonnull align 8 dereferenceable(696) %i.ar, i64 696, i1 false), !tbaa.struct !336
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 848 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 848 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.w, i64 864 ; 3 uses
  store ptr %i.au, ptr %i.as, align 8, !tbaa !85
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !89 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 864 ; 7 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %_ZN4pbrt22TransformedSceneEntityC2EOS0_.exit.i.i.i.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 856
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !87 ; 3 uses
  %i.ba = icmp ult i64 %i.az, 16
  call void @llvm.assume(i1 %i.ba)
  %i.bb = add nuw nsw i64 %i.az, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.au, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.bb, i1 false)
  br label %_ZN4pbrt8AsyncJobINS_5LightEEC2ESt8functionIFS1_vEE.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZN4pbrt22TransformedSceneEntityC2EOS0_.exit.i.i.i.i.i.i.i
  store ptr %i.av, ptr %i.as, align 8, !tbaa !89
  %i.bc = load i64, ptr %i.aw, align 8, !tbaa !88
  store i64 %i.bc, ptr %i.au, align 8, !tbaa !88
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 856
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !87
  br label %_ZN4pbrt8AsyncJobINS_5LightEEC2ESt8functionIFS1_vEE.exit.i

_ZN4pbrt8AsyncJobINS_5LightEEC2ESt8functionIFS1_vEE.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %bb.j
  %i.bd = phi i64 [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i ], [ %i.az, %bb.j ]
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 856
  %i.bf = getelementptr inbounds nuw i8, ptr %i.w, i64 856
  store i64 %i.bd, ptr %i.bf, align 8, !tbaa !87
  store ptr %i.aw, ptr %i.at, align 8, !tbaa !89
  store i64 0, ptr %i.be, align 8, !tbaa !87
  store i8 0, ptr %i.aw, align 8, !tbaa !88
  %i.bg = getelementptr inbounds nuw i8, ptr %i.w, i64 880
  %i.bh = load i64, ptr %i.s, align 8, !tbaa !354
  store i64 %i.bh, ptr %i.bg, align 8, !tbaa !354
  store ptr %i.w, ptr %3, align 8, !tbaa !356
  %i.bi = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i32 0, ptr %i.bi, align 8, !tbaa !311
  %i.bj = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.bj, i8 0, i64 17, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4pbrt8AsyncJobINS_5LightEEE, i64 16), ptr %i.u, align 8, !tbaa !72
  %i.bk = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.bl = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store ptr @"_ZNSt17_Function_handlerIFN4pbrt5LightEvESt5_BindIFZNS0_10BasicScene8AddLightENS0_16LightSceneEntityEE3$_0vEEE9_M_invokeERKSt9_Any_data", ptr %i.bl, align 8, !tbaa !358
  %i.bm = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 16, i1 false), !tbaa.struct !815
  store ptr @"_ZNSt17_Function_handlerIFN4pbrt5LightEvESt5_BindIFZNS0_10BasicScene8AddLightENS0_16LightSceneEntityEE3$_0vEEE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation", ptr %i.bm, align 8, !tbaa !314
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  store i8 0, ptr %i.bn, align 8, !tbaa !361
  %i.bo = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  store i8 0, ptr %i.bo, align 8, !tbaa !362
  %i.bp = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bp, i8 0, i64 40, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.u, i64 136
  call void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.bq) #32
  %i.br = load ptr, ptr %i.v, align 8, !tbaa !314 ; 2 uses
  %.not.i.i8 = icmp eq ptr %i.br, null
  br i1 %.not.i.i8, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZN4pbrt8AsyncJobINS_5LightEEC2ESt8functionIFS1_vEE.exit.i
  %i.bs = invoke noundef zeroext i1 %i.br(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #31
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.k, %_ZN4pbrt8AsyncJobINS_5LightEEC2ESt8functionIFS1_vEE.exit.i
  %i.bv = invoke noundef i32 @_ZN4pbrt14RunningThreadsEv()
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.bw = icmp eq i32 %i.bv, 1
  br i1 %i.bw, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN4pbrt8AsyncJobINS_5LightEE6DoWorkEv(ptr noundef nonnull align 8 dereferenceable(184) %i.u)
          to label %_ZNSt11unique_lockISt5mutexED2Ev.exit14.i unwind label %bb.o

.body.i:                                          ; preds = %bb.h
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef 184) #33
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit17.i

bb.o:                                             ; preds = %bb.n, %_ZNSt14_Function_baseD2Ev.exit.i, %.noexc
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit17.i

bb.p:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.bz = load ptr, ptr @_ZN4pbrt11ParallelJob10threadPoolE, align 8, !tbaa !322
  invoke void @_ZN4pbrt10ThreadPool12AddToJobListEPNS_11ParallelJobE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_lock") align 8 %4, ptr noundef nonnull align 8 dereferenceable(128) %i.bz, ptr noundef nonnull %i.u)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit17.i

bb.r:                                             ; preds = %bb.p
  %i.cb = load ptr, ptr %4, align 8, !tbaa !325   ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cd = load i8, ptr %i.cc, align 8, !tbaa !326, !range !211, !noundef !212
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.ce = trunc nuw i8 %i.cd to i1
  %.not.i.i13.i = icmp ne ptr %i.cb, null
  %or.cond.not.i = select i1 %i.ce, i1 %.not.i.i13.i, i1 false
  br i1 %or.cond.not.i, label %bb.s, label %_ZNSt11unique_lockISt5mutexED2Ev.exit14.i

bb.s:                                             ; preds = %bb.r
  %i.cf = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.cb) #32 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit14.i

_ZNSt11unique_lockISt5mutexED2Ev.exit14.i:        ; preds = %bb.s, %bb.r, %bb.n
  %i.cg = load ptr, ptr %i.at, align 8, !tbaa !89 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.aw
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit14.i
  %i.ci = load i64, ptr %i.aw, align 8, !tbaa !88
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit14.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store i64 0, ptr %i.ae, align 8, !tbaa !109
  %i.ck = load ptr, ptr %i.ai, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.cl = load i64, ptr %i.af, align 8, !tbaa !110
  %i.cm = shl i64 %i.cl, 3
  %i.cn = load ptr, ptr %i.aa, align 8, !tbaa !111 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !72
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8
  invoke void %i.cq(ptr noundef nonnull align 8 dereferenceable(8) %i.cn, ptr noundef nonnull %i.ck, i64 noundef %i.cm, i64 noundef 8)
          to label %bb.v unwind label %bb.u, !inline_history !3

bb.u:                                             ; preds = %bb.t
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  call void @__clang_call_terminate(ptr %i.cs) #31
  unreachable

_ZNSt11unique_lockISt5mutexED2Ev.exit17.i:        ; preds = %bb.q, %bb.o, %.body.i
  %.pn.pn.i = phi { ptr, i32 } [ %i.ca, %bb.q ], [ %i.bx, %.body.i ], [ %i.by, %bb.o ]
  call fastcc void @"_ZNSt5_BindIFZN4pbrt10BasicScene8AddLightENS0_16LightSceneEntityEE3$_0vEED2Ev"(ptr noundef nonnull align 8 dead_on_return(889) dereferenceable(889) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %.body

bb.v:                                             ; preds = %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 1016 ; 3 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !816 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 3 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !817
  %.not.i.i9 = icmp eq ptr %i.cu, %i.cw
  br i1 %.not.i.i9, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store ptr %i.u, ptr %i.cu, align 8, !tbaa !364
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr %i.cx, ptr %i.ct, align 8, !tbaa !816
  br label %_ZNSt6vectorIPN4pbrt8AsyncJobINS0_5LightEEESaIS4_EE9push_backEOS4_.exit

bb.x:                                             ; preds = %bb.v
  %i.cy = load ptr, ptr %i.l, align 8, !tbaa !818 ; 4 uses
  %i.cz = ptrtoint ptr %i.cu to i64
  %i.da = ptrtoint ptr %i.cy to i64               ; 2 uses
  %i.db = sub i64 %i.cz, %i.da                    ; 5 uses
  %i.dc = icmp eq i64 %i.db, 9223372036854775800
  br i1 %i.dc, label %bb.y, label %_ZNKSt6vectorIPN4pbrt8AsyncJobINS0_5LightEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
end_hunk_5
begin_hunk_6_@_ZN4pbrt16LightSceneEntityC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_19ParameterDictionaryENS_7FileLocERKNS_17AnimatedTransformES8_:bb.a
  store ptr %i.bx, ptr %i.bv, align 8, !tbaa !189
  %i.by = add nuw i64 %.011.i.i, 8                ; 2 uses
  %exitcond.not.i.i.7 = icmp eq i64 %i.by, %i.p
  br i1 %exitcond.not.i.i.7, label %_ZN4pbrt19ParameterDictionaryC2ERKS0_.exit, label %vec.epilog.scalar.ph, !llvm.loop !822

_ZN4pbrt19ParameterDictionaryC2ERKS0_.exit:       ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEE7reserveEm.exit.i.i
  store i64 %i.p, ptr %i.f, align 8, !tbaa !109
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bz, ptr noundef nonnull align 8 dereferenceable(12) %i.ca, i64 12, i1 false)
  invoke void @_ZN4pbrt22TransformedSceneEntityC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_19ParameterDictionaryENS_7FileLocERKNS_17AnimatedTransformE(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef nonnull align 8 dereferenceable(112) %6, ptr noundef nonnull byval(%"struct.pbrt::FileLoc") align 8 %3, ptr noundef nonnull align 4 dereferenceable(696) %4)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %_ZN4pbrt19ParameterDictionaryC2ERKS0_.exit
  store i64 0, ptr %i.f, align 8, !tbaa !109
  %i.cb = load ptr, ptr %i.d, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i.i, label %_ZN4pbrt19ParameterDictionaryD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cc = load i64, ptr %i.e, align 8, !tbaa !110
  %i.cd = shl i64 %i.cc, 3
  %i.ce = load ptr, ptr %6, align 8, !tbaa !111   ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !72
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8
  invoke void %i.ch(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef nonnull %i.cb, i64 noundef %i.cd, i64 noundef 8)
          to label %_ZN4pbrt19ParameterDictionaryD2Ev.exit unwind label %bb.e, !inline_history !3

bb.e:                                             ; preds = %bb.d
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  call void @__clang_call_terminate(ptr %i.cj) #31
  unreachable

_ZN4pbrt19ParameterDictionaryD2Ev.exit:           ; preds = %bb.c, %bb.d
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 3 uses
  store ptr %i.cl, ptr %i.ck, align 8, !tbaa !85
  %i.cm = load ptr, ptr %5, align 8, !tbaa !89    ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !87 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 %i.co, ptr %i.a, align 8, !tbaa !198
  %i.cp = icmp ugt i64 %i.co, 15
  br i1 %i.cp, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZN4pbrt19ParameterDictionaryD2Ev.exit
  %i.cq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ck, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.cq, ptr %i.ck, align 8, !tbaa !89
  %i.cr = load i64, ptr %i.a, align 8, !tbaa !198
  store i64 %i.cr, ptr %i.cl, align 8, !tbaa !88
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZN4pbrt19ParameterDictionaryD2Ev.exit
  %i.cs = phi ptr [ %i.cq, %.noexc ], [ %i.cl, %_ZN4pbrt19ParameterDictionaryD2Ev.exit ] ; 2 uses
  switch i64 %i.co, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.ct = load i8, ptr %i.cm, align 1, !tbaa !88
  store i8 %i.ct, ptr %i.cs, align 1, !tbaa !88
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cs, ptr align 1 %i.cm, i64 %i.co, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i
  %i.cu = load i64, ptr %i.a, align 8, !tbaa !198 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 848
  store i64 %i.cu, ptr %i.cv, align 8, !tbaa !87
  %i.cw = load ptr, ptr %i.ck, align 8, !tbaa !89
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cu
  store i8 0, ptr %i.cx, align 1, !tbaa !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  ret void

bb.i:                                             ; preds = %_ZN4pbrt19ParameterDictionaryC2ERKS0_.exit
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt19ParameterDictionaryD2Ev(ptr noundef nonnull align 8 dead_on_return(108) dereferenceable(108) %6) #32
  br label %bb.k

bb.j:                                             ; preds = %.noexc.i
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt11SceneEntityD2Ev(ptr noundef nonnull align 8 dead_on_return(840) dereferenceable(840) %0) #32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.cz, %bb.j ], [ %i.cy, %bb.i ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4pbrt16LightSceneEntityD2Ev(ptr noundef nonnull align 8 dead_on_return(872) dereferenceable(872) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !88
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 0, ptr %i.g, align 8, !tbaa !109
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !103  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4pbrt11SceneEntityD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.l = load i64, ptr %i.k, align 8, !tbaa !110
  %i.m = shl i64 %i.l, 3
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !111  ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !72
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  invoke void %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull %i.i, i64 noundef %i.m, i64 noundef 8)
          to label %_ZN4pbrt11SceneEntityD2Ev.exit unwind label %bb.c, !inline_history !3

bb.c:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #31
  unreachable

_ZN4pbrt11SceneEntityD2Ev.exit:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt17BasicSceneBuilder5ShapeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorISB_EEEENS_7FileLocE(ptr noundef nonnull align 64 dereferenceable(3544) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef align 8 captures(none) dereferenceable(96) %2, ptr noundef byval(%"struct.pbrt::FileLoc") align 8 %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.pstd::optional.288", align 4 ; 5 uses
  %5 = alloca %"class.pbrt::Transform", align 4   ; 5 uses
  %6 = alloca %"class.pbrt::ParameterDictionary", align 8 ; 21 uses
  %7 = alloca %"class.pbrt::InlinedVector", align 8 ; 8 uses
  %8 = alloca %"struct.pbrt::SceneEntity", align 8 ; 7 uses
  %9 = alloca %"class.pbrt::ParameterDictionary", align 8 ; 11 uses
  %10 = alloca %"class.pbrt::AnimatedTransform", align 4 ; 5 uses
  %11 = alloca %"class.pbrt::Transform", align 4  ; 17 uses
  %12 = alloca %"struct.pbrt::AnimatedShapeSceneEntity", align 8 ; 18 uses
  %13 = alloca %"class.pbrt::ParameterDictionary", align 8 ; 9 uses
  %14 = alloca %"struct.pbrt::AnimatedShapeSceneEntity", align 8 ; 14 uses
  %15 = alloca %"class.pbrt::Transform", align 4  ; 7 uses
  %16 = alloca %"class.pbrt::Transform", align 4  ; 6 uses
  %17 = alloca %"struct.pbrt::ShapeSceneEntity", align 8 ; 16 uses
  %18 = alloca %"class.pbrt::ParameterDictionary", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !166
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN4pbrt9ErrorExitIJRA6_KcEEEvPKNS_7FileLocEPS1_DpOT_(ptr noundef nonnull %3, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(6) @.str.41) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.d = load i64, ptr %2, align 8, !tbaa !102
  store i64 %i.d, ptr %7, align 8, !tbaa !102
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.j = load i64, ptr %i.h, align 8, !tbaa !109  ; 3 uses
  %i.k = load <2 x i64>, ptr %i.i, align 8, !tbaa !198
  store <2 x i64> %i.k, ptr %i.f, align 8, !tbaa !198
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !103
  store ptr %i.m, ptr %i.e, align 8, !tbaa !103
  %i.n = icmp ult i64 %i.j, 9
  br i1 %i.n, label %.preheader.i, label %bb.d

.preheader.i:                                     ; preds = %bb.c
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = shl nuw nsw i64 %i.j, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.p, i64 %i.q, i1 false), !tbaa !189
  br label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %i.h, align 8, !tbaa !109
  br label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit

_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit: ; preds = %.lr.ph.i, %.preheader.i, %bb.d
  store i64 0, ptr %i.i, align 8, !tbaa !110
  store ptr null, ptr %i.l, align 8, !tbaa !103
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !213
  invoke void @_ZN4pbrt19ParameterDictionaryC1ENS_13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS3_EEEERKS8_PKNS_13RGBColorSpaceE(ptr noundef nonnull align 8 dereferenceable(108) %6, ptr nofree noundef nonnull align 8 dereferenceable(96) %7, ptr noundef nonnull align 8 dereferenceable(96) %i.s, ptr noundef %i.u)
          to label %bb.e unwind label %bb.r

bb.e:                                             ; preds = %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit
  store i64 0, ptr %i.g, align 8, !tbaa !109
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !103  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i, label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load i64, ptr %i.f, align 8, !tbaa !110
  %i.x = shl i64 %i.w, 3
  %i.y = load ptr, ptr %7, align 8, !tbaa !111    ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !72
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  invoke void %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull %i.v, i64 noundef %i.x, i64 noundef 8)
          to label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit unwind label %bb.g, !inline_history !3

bb.g:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #31
  unreachable

_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit: ; preds = %bb.e, %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ag = load i64, ptr %i.af, align 16, !tbaa !87
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.w, label %bb.h

bb.h:                                             ; preds = %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load ptr, ptr %i.ai, align 16, !tbaa !165
  %i.ak = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #32 ; 3 uses
  %i.al = ptrtoint ptr %i.ak to i64
  store i64 %i.al, ptr %9, align 8, !tbaa !102
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  store ptr null, ptr %i.am, align 8, !tbaa !103
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  %i.aq = load i64, ptr %i.ap, align 64, !tbaa !109 ; 4 uses
  %.not.i.i.i = icmp ugt i64 %i.aq, 8
  br i1 %.not.i.i.i, label %bb.i, label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEE7reserveEm.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.ar = shl i64 %i.aq, 3                        ; 2 uses
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE17deallocate_objectIS4_EEvPT_m.exit.i.i.i, label %_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE15allocate_objectIS4_EEPT_m.exit.i.i.i

_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE15allocate_objectIS4_EEPT_m.exit.i.i.i: ; preds = %bb.i
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !72
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = invoke noundef ptr %i.av(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, i64 noundef %i.ar, i64 noundef 8)
          to label %.noexc unwind label %bb.s, !inline_history !4 ; 14 uses

.noexc:                                           ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE15allocate_objectIS4_EEPT_m.exit.i.i.i
  %.pre.pre.i.i.i = load ptr, ptr %i.am, align 8, !tbaa !103 ; 4 uses
  %.pre.i.i = load i64, ptr %i.ao, align 8, !tbaa !109 ; 11 uses
  %.not15.i.i.i = icmp eq i64 %.pre.i.i, 0
  br i1 %.not15.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %.noexc
  %i.ax = ptrtoaddr ptr %i.aw to i64
  %.not.i12.i.i.i = icmp eq ptr %.pre.pre.i.i.i, null
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.az = select i1 %.not.i12.i.i.i, ptr %i.ay, ptr %.pre.pre.i.i.i ; 12 uses
  %min.iters.check = icmp ult i64 %.pre.i.i, 4
  %i.ba = ptrtoaddr ptr %i.az to i64
  %i.bb = sub i64 %i.ba, %i.ax
  %diff.check = icmp ugt i64 %i.bb, -128
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check133 = icmp ult i64 %.pre.i.i, 16
  br i1 %min.iters.check133, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bc = and i64 %.pre.i.i, 12
  %n.vec = and i64 %.pre.i.i, -16                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index ; 4 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %index ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 96
  %wide.load = load <4 x ptr>, ptr %i.be, align 8, !tbaa !189
  %wide.load134 = load <4 x ptr>, ptr %i.bf, align 8, !tbaa !189
  %wide.load135 = load <4 x ptr>, ptr %i.bg, align 8, !tbaa !189
  %wide.load136 = load <4 x ptr>, ptr %i.bh, align 8, !tbaa !189
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 96
  store <4 x ptr> %wide.load, ptr %i.bd, align 8, !tbaa !189
  store <4 x ptr> %wide.load134, ptr %i.bi, align 8, !tbaa !189
  store <4 x ptr> %wide.load135, ptr %i.bj, align 8, !tbaa !189
  store <4 x ptr> %wide.load136, ptr %i.bk, align 8, !tbaa !189
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !823

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.pre.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bc, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !181

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec137 = and i64 %.pre.i.i, -4               ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index138 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next140, %vec.epilog.vector.body ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index138
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %index138
  %wide.load139 = load <4 x ptr>, ptr %i.bn, align 8, !tbaa !189
  store <4 x ptr> %wide.load139, ptr %i.bm, align 8, !tbaa !189
  %index.next140 = add nuw i64 %index138, 4       ; 2 uses
  %i.bo = icmp eq i64 %index.next140, %n.vec137
  br i1 %i.bo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !824

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n141 = icmp eq i64 %.pre.i.i, %n.vec137
  br i1 %cmp.n141, label %._crit_edge.i.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec137, %vec.epilog.middle.block ] ; 4 uses
  %i.bp = sub i64 %.pre.i.i, %indvars.iv.i.i.i.ph
  %xtraiter = and i64 %i.bp, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.i.i.i.prol
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.i.i.i.prol
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !189
  store ptr %i.bs, ptr %i.bq, align 8, !tbaa !189
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !825

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.bt = sub i64 %indvars.iv.i.i.i.ph, %.pre.i.i
  %i.bu = icmp ugt i64 %i.bt, -8
  br i1 %i.bu, label %._crit_edge.i.i.i, label %vec.epilog.scalar.ph

._crit_edge.i.i.i:                                ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.noexc
  %.not.i.i.i.i.i.i = icmp eq ptr %.pre.pre.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE17deallocate_objectIS4_EEvPT_m.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %._crit_edge.i.i.i
  %i.bv = load i64, ptr %i.an, align 8, !tbaa !110
  %i.bw = shl i64 %i.bv, 3
  %i.bx = load ptr, ptr %9, align 8, !tbaa !111   ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !72
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8
  invoke void %i.ca(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, ptr noundef nonnull %.pre.pre.i.i.i, i64 noundef %i.bw, i64 noundef 8)
          to label %_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE17deallocate_objectIS4_EEvPT_m.exit.i.i.i unwind label %bb.s, !inline_history !4

_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE17deallocate_objectIS4_EEvPT_m.exit.i.i.i: ; preds = %bb.j, %._crit_edge.i.i.i, %bb.i
  %.0.i.i.i.i2024.i.i = phi ptr [ %i.aw, %._crit_edge.i.i.i ], [ null, %bb.i ], [ %i.aw, %bb.j ] ; 2 uses
  store i64 %i.aq, ptr %i.an, align 8, !tbaa !110
  store ptr %.0.i.i.i.i2024.i.i, ptr %i.am, align 8, !tbaa !103
  %.pre12.i.i = load i64, ptr %i.ap, align 64, !tbaa !109
  br label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEE7reserveEm.exit.i.i

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.7, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.i.i.i
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.i.i.i
end_hunk_6
begin_hunk_7_@_ZN4pbrt17BasicSceneBuilder5ShapeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorISB_EEEENS_7FileLocE:bb.a
  store ptr %i.eo, ptr %i.em, align 8, !tbaa !189
  %i.ep = add nuw i64 %.011.i.i, 3                ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.ep
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.ep
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !189
  store ptr %i.es, ptr %i.eq, align 8, !tbaa !189
  %i.et = add nuw i64 %.011.i.i, 4                ; 2 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.et
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.et
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !189
  store ptr %i.ew, ptr %i.eu, align 8, !tbaa !189
  %i.ex = add nuw i64 %.011.i.i, 5                ; 2 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.ex
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.ex
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !189
  store ptr %i.fa, ptr %i.ey, align 8, !tbaa !189
  %i.fb = add nuw i64 %.011.i.i, 6                ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.fb
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.fb
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !189
  store ptr %i.fe, ptr %i.fc, align 8, !tbaa !189
  %i.ff = add nuw i64 %.011.i.i, 7                ; 2 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.ff
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.ff
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !189
  store ptr %i.fi, ptr %i.fg, align 8, !tbaa !189
  %i.fj = add nuw i64 %.011.i.i, 8                ; 2 uses
  %exitcond.not.i.i.7 = icmp eq i64 %i.fj, %i.da
  br i1 %exitcond.not.i.i.7, label %.loopexit92, label %vec.epilog.scalar.ph162, !llvm.loop !830

.loopexit92:                                      ; preds = %vec.epilog.scalar.ph162.prol.loopexit, %vec.epilog.scalar.ph162, %middle.block158, %vec.epilog.middle.block171, %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEE7reserveEm.exit.i.i
  store i64 %i.da, ptr %i.ao, align 8, !tbaa !109
  %i.fk = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.fk, ptr noundef nonnull align 8 dereferenceable(12) %i.fl, i64 12, i1 false)
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 280
  invoke void @_ZN4pbrt11SceneEntityC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_19ParameterDictionaryENS_7FileLocE(ptr noundef nonnull align 8 dereferenceable(144) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr nofree noundef nonnull align 8 dereferenceable(112) %9, ptr noundef nonnull byval(%"struct.pbrt::FileLoc") align 8 %i.fm)
          to label %bb.k unwind label %bb.t

bb.k:                                             ; preds = %.loopexit92
  %i.fn = invoke noundef i32 @_ZN4pbrt10BasicScene12AddAreaLightENS_11SceneEntityE(ptr noundef nonnull align 8 dereferenceable(1520) %i.aj, ptr nofree noundef nonnull align 8 dereferenceable(144) %8)
          to label %bb.l unwind label %bb.u       ; 2 uses

bb.l:                                             ; preds = %bb.k
  %i.fo = getelementptr inbounds nuw i8, ptr %8, i64 120
  store i64 0, ptr %i.fo, align 8, !tbaa !109
  %i.fp = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i.i.i38 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i.i.i.i.i38, label %_ZN4pbrt11SceneEntityD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fr = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.fs = getelementptr inbounds nuw i8, ptr %8, i64 112
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !110
  %i.fu = shl i64 %i.ft, 3
  %i.fv = load ptr, ptr %i.fr, align 8, !tbaa !111 ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !72
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  %i.fy = load ptr, ptr %i.fx, align 8
  invoke void %i.fy(ptr noundef nonnull align 8 dereferenceable(8) %i.fv, ptr noundef nonnull %i.fq, i64 noundef %i.fu, i64 noundef 8)
          to label %_ZN4pbrt11SceneEntityD2Ev.exit unwind label %bb.n, !inline_history !3

bb.n:                                             ; preds = %bb.m
  %i.fz = landingpad { ptr, i32 }
          catch ptr null
  %i.ga = extractvalue { ptr, i32 } %i.fz, 0
  call void @__clang_call_terminate(ptr %i.ga) #31
  unreachable

_ZN4pbrt11SceneEntityD2Ev.exit:                   ; preds = %bb.l, %bb.m
  store i64 0, ptr %i.ao, align 8, !tbaa !109
  %i.gb = load ptr, ptr %i.am, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.gb, null
  br i1 %.not.i.i.i.i.i, label %_ZN4pbrt19ParameterDictionaryD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN4pbrt11SceneEntityD2Ev.exit
  %i.gc = load i64, ptr %i.an, align 8, !tbaa !110
  %i.gd = shl i64 %i.gc, 3
  %i.ge = load ptr, ptr %9, align 8, !tbaa !111   ; 2 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !72
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  %i.gh = load ptr, ptr %i.gg, align 8
  invoke void %i.gh(ptr noundef nonnull align 8 dereferenceable(8) %i.ge, ptr noundef nonnull %i.gb, i64 noundef %i.gd, i64 noundef 8)
          to label %_ZN4pbrt19ParameterDictionaryD2Ev.exit unwind label %bb.p, !inline_history !3

bb.p:                                             ; preds = %bb.o
  %i.gi = landingpad { ptr, i32 }
          catch ptr null
  %i.gj = extractvalue { ptr, i32 } %i.gi, 0
  call void @__clang_call_terminate(ptr %i.gj) #31
  unreachable

_ZN4pbrt19ParameterDictionaryD2Ev.exit:           ; preds = %_ZN4pbrt11SceneEntityD2Ev.exit, %bb.o
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 1520
  %i.gl = load ptr, ptr %i.gk, align 16, !tbaa !365
  %.not = icmp eq ptr %i.gl, null
  br i1 %.not, label %bb.w, label %bb.q

bb.q:                                             ; preds = %_ZN4pbrt19ParameterDictionaryD2Ev.exit
  invoke void @_ZN4pbrt7WarningEPKNS_7FileLocEPKc(ptr noundef nonnull %3, ptr noundef nonnull @.str.42)
          to label %bb.w unwind label %bb.s

bb.r:                                             ; preds = %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit
  %i.gm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %7) #32
  br label %bb.br

bb.s:                                             ; preds = %bb.j, %_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE15allocate_objectIS4_EEPT_m.exit.i.i.i, %bb.q
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.t:                                             ; preds = %.loopexit92
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %bb.k
  %i.gp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt11SceneEntityD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %8) #32
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.gp, %bb.u ], [ %i.go, %bb.t ]
  call void @_ZN4pbrt19ParameterDictionaryD2Ev(ptr noundef nonnull align 8 dead_on_return(108) dereferenceable(108) %9) #32
  br label %bb.bq

bb.w:                                             ; preds = %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit, %bb.q, %_ZN4pbrt19ParameterDictionaryD2Ev.exit
  %.0 = phi i32 [ -1, %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit ], [ %i.fn, %bb.q ], [ %i.fn, %_ZN4pbrt19ParameterDictionaryD2Ev.exit ] ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.gs = call noundef zeroext i1 @_ZNK4pbrt12SquareMatrixILi4EEneERKS1_(ptr noundef nonnull align 4 dereferenceable(128) %i.gr, ptr noundef nonnull align 4 dereferenceable(256) %i.gq)
  br i1 %i.gs, label %bb.x, label %bb.az

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  invoke void @_ZNK4pbrt17BasicSceneBuilder16RenderFromObjectEv(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::AnimatedTransform") align 4 %10, ptr noundef nonnull align 64 dereferenceable(3544) %0)
          to label %bb.y unwind label %bb.ag

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  store float 1.000000e+00, ptr %11, align 4, !tbaa !107
  %i.gt = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.gu = getelementptr inbounds nuw i8, ptr %11, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gt, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.gu, align 4, !tbaa !107
  %i.gv = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.gw = getelementptr inbounds nuw i8, ptr %11, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gv, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.gw, align 4, !tbaa !107
  %i.gx = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.gy = getelementptr inbounds nuw i8, ptr %11, i64 60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gx, i8 0, i64 16, i1 false)
  store <2 x float> splat (float 1.000000e+00), ptr %i.gy, align 4, !tbaa !107
  %i.gz = getelementptr inbounds nuw i8, ptr %11, i64 68
  %i.ha = getelementptr inbounds nuw i8, ptr %11, i64 84
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gz, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ha, align 4, !tbaa !107
  %i.hb = getelementptr inbounds nuw i8, ptr %11, i64 88
  %i.hc = getelementptr inbounds nuw i8, ptr %11, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.hb, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.hc, align 4, !tbaa !107
  %i.hd = getelementptr inbounds nuw i8, ptr %11, i64 108
  %i.he = getelementptr inbounds nuw i8, ptr %11, i64 124
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.hd, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.he, align 4, !tbaa !107
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %i.hg = invoke noundef ptr @_ZN4pbrt11InternCacheINS_9TransformESt4hashIS1_EE6LookupIZNS4_6LookupERKS1_EUlN4pstd3pmr21polymorphic_allocatorISt4byteEES7_E_EEPS6_S7_T_(ptr noundef nonnull align 64 dereferenceable(168) %i.hf, ptr noundef nonnull align 4 dereferenceable(128) %11)
          to label %_ZN4pbrt11InternCacheINS_9TransformESt4hashIS1_EE6LookupERKS1_.exit unwind label %bb.ah

_ZN4pbrt11InternCacheINS_9TransformESt4hashIS1_EE6LookupERKS1_.exit: ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  %i.hh = load i64, ptr %6, align 8, !tbaa !102
  store i64 %i.hh, ptr %13, align 8, !tbaa !102
  %i.hi = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %13, i64 80 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %13, i64 88
  %i.hl = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  %i.hn = load i64, ptr %i.hl, align 8, !tbaa !109 ; 3 uses
  %i.ho = load <2 x i64>, ptr %i.hm, align 8, !tbaa !198
  store <2 x i64> %i.ho, ptr %i.hj, align 8, !tbaa !198
  %i.hp = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !103
  store ptr %i.hq, ptr %i.hi, align 8, !tbaa !103
  %i.hr = icmp ult i64 %i.hn, 9
  br i1 %i.hr, label %.preheader.i.i, label %bb.z

.preheader.i.i:                                   ; preds = %_ZN4pbrt11InternCacheINS_9TransformESt4hashIS1_EE6LookupERKS1_.exit
  %.not.i.i40 = icmp eq i64 %i.hn, 0
  br i1 %.not.i.i40, label %.loopexit, label %.lr.ph.i.i41

.lr.ph.i.i41:                                     ; preds = %.preheader.i.i
  %i.hs = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ht = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.hu = shl nuw nsw i64 %i.hn, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hs, ptr nonnull align 8 %i.ht, i64 %i.hu, i1 false), !tbaa !189
  br label %.loopexit

bb.z:                                             ; preds = %_ZN4pbrt11InternCacheINS_9TransformESt4hashIS1_EE6LookupERKS1_.exit
  store i64 0, ptr %i.hl, align 8, !tbaa !109
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i41, %bb.z, %.preheader.i.i
  store i64 0, ptr %i.hm, align 8, !tbaa !110
  store ptr null, ptr %i.hp, align 8, !tbaa !103
  %i.hv = getelementptr inbounds nuw i8, ptr %13, i64 96
  %i.hw = getelementptr inbounds nuw i8, ptr %6, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.hv, ptr noundef nonnull align 8 dereferenceable(12) %i.hw, i64 12, i1 false)
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.hy = load i8, ptr %i.hx, align 16, !tbaa !210, !range !211, !noundef !212
  %i.hz = trunc nuw i8 %i.hy to i1
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ib = load i32, ptr %i.ia, align 32, !tbaa !366
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke void @_ZN4pbrt24AnimatedShapeSceneEntityC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_19ParameterDictionaryENS_7FileLocERKNS_17AnimatedTransformEPKNS_9TransformEbiS8_iS8_S8_(ptr noundef nonnull align 8 dereferenceable(960) %12, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef nonnull align 8 dereferenceable(112) %13, ptr noundef nonnull byval(%"struct.pbrt::FileLoc") align 8 %3, ptr noundef nonnull align 4 dereferenceable(696) %10, ptr noundef %i.hg, i1 noundef zeroext %i.hz, i32 noundef %i.ib, ptr noundef nonnull align 8 dereferenceable(32) %i.ic, i32 noundef %.0, ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.id)
          to label %bb.aa unwind label %bb.ai

bb.aa:                                            ; preds = %.loopexit
  store i64 0, ptr %i.hk, align 8, !tbaa !109
  %i.ie = load ptr, ptr %i.hi, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i.i43 = icmp eq ptr %i.ie, null
  br i1 %.not.i.i.i.i.i43, label %_ZN4pbrt19ParameterDictionaryD2Ev.exit44, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.if = load i64, ptr %i.hj, align 8, !tbaa !110
  %i.ig = shl i64 %i.if, 3
  %i.ih = load ptr, ptr %13, align 8, !tbaa !111  ; 2 uses
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !72
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 24
  %i.ik = load ptr, ptr %i.ij, align 8
  invoke void %i.ik(ptr noundef nonnull align 8 dereferenceable(8) %i.ih, ptr noundef nonnull %i.ie, i64 noundef %i.ig, i64 noundef 8)
          to label %_ZN4pbrt19ParameterDictionaryD2Ev.exit44 unwind label %bb.ac, !inline_history !3

bb.ac:                                            ; preds = %bb.ab
  %i.il = landingpad { ptr, i32 }
          catch ptr null
  %i.im = extractvalue { ptr, i32 } %i.il, 0
  call void @__clang_call_terminate(ptr %i.im) #31
  unreachable

_ZN4pbrt19ParameterDictionaryD2Ev.exit44:         ; preds = %bb.aa, %bb.ab
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 1520
  %i.io = load ptr, ptr %i.in, align 16, !tbaa !365 ; 4 uses
  %.not29 = icmp eq ptr %i.io, null
  br i1 %.not29, label %bb.ak, label %bb.ad

bb.ad:                                            ; preds = %_ZN4pbrt19ParameterDictionaryD2Ev.exit44
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 112 ; 3 uses
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !367 ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 120
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !368
  %.not.i.i45 = icmp eq ptr %i.iq, %i.is
  br i1 %.not.i.i45, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN4pbrt24AnimatedShapeSceneEntityC2EOS0_(ptr noundef nonnull align 8 dereferenceable(960) %i.iq, ptr noundef nonnull align 8 dereferenceable(960) %12)
          to label %.noexc46 unwind label %bb.aj

.noexc46:                                         ; preds = %bb.ae
  %i.it = load ptr, ptr %i.ip, align 8, !tbaa !367
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 960
  store ptr %i.iu, ptr %i.ip, align 8, !tbaa !367
  br label %_ZNSt6vectorIN4pbrt24AnimatedShapeSceneEntityESaIS1_EE9push_backEOS1_.exit

bb.af:                                            ; preds = %bb.ad
  %i.iv = getelementptr inbounds nuw i8, ptr %i.io, i64 104
  invoke void @_ZNSt6vectorIN4pbrt24AnimatedShapeSceneEntityESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.iv, ptr %i.iq, ptr noundef nonnull align 8 dereferenceable(960) %12)
          to label %_ZNSt6vectorIN4pbrt24AnimatedShapeSceneEntityESaIS1_EE9push_backEOS1_.exit unwind label %bb.aj

bb.ag:                                            ; preds = %bb.x
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ah:                                            ; preds = %bb.y
  %i.ix = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  br label %bb.ay

bb.ai:                                            ; preds = %.loopexit
  %i.iy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt19ParameterDictionaryD2Ev(ptr noundef nonnull align 8 dead_on_return(108) dereferenceable(108) %13) #32
  br label %bb.ax

bb.aj:                                            ; preds = %bb.af, %bb.ae, %bb.ak
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.ak:                                            ; preds = %_ZN4pbrt19ParameterDictionaryD2Ev.exit44
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jb = load ptr, ptr %i.ja, align 16, !tbaa !165 ; 4 uses
  invoke void @_ZN4pbrt24AnimatedShapeSceneEntityC2EOS0_(ptr noundef nonnull align 8 dereferenceable(960) %14, ptr noundef nonnull align 8 dereferenceable(960) %12)
          to label %bb.al unwind label %bb.aj

bb.al:                                            ; preds = %bb.ak
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 1400 ; 3 uses
  %i.jd = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.jc) #32 ; 2 uses
  %.not.i.i.i48 = icmp eq i32 %i.jd, 0
  br i1 %.not.i.i.i48, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.jd) #34
          to label %.noexc49 unwind label %bb.at

.noexc49:                                         ; preds = %bb.am
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i:        ; preds = %bb.al
  %i.je = getelementptr inbounds nuw i8, ptr %i.jb, i64 328 ; 3 uses
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !367 ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jb, i64 336
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !368
  %.not.i.i2.i = icmp eq ptr %i.jf, %i.jh
  br i1 %.not.i.i2.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  invoke void @_ZN4pbrt24AnimatedShapeSceneEntityC2EOS0_(ptr noundef nonnull align 8 dereferenceable(960) %i.jf, ptr noundef nonnull align 8 dereferenceable(960) %14)
          to label %.noexc.i unwind label %bb.ap

.noexc.i:                                         ; preds = %bb.an
  %i.ji = load ptr, ptr %i.je, align 8, !tbaa !367
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 960
  store ptr %i.jj, ptr %i.je, align 8, !tbaa !367
  br label %bb.aq

bb.ao:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jb, i64 320
  invoke void @_ZNSt6vectorIN4pbrt24AnimatedShapeSceneEntityESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.jk, ptr %i.jf, ptr noundef nonnull align 8 dereferenceable(960) %14)
          to label %bb.aq unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.jl = landingpad { ptr, i32 }
          cleanup
  %i.jm = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.jc) #32 ; 0 uses
  br label %.body

bb.aq:                                            ; preds = %bb.ao, %.noexc.i
  %i.jn = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.jc) #32 ; 0 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %14, i64 928
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !89 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %14, i64 944 ; 2 uses
  %i.jr = icmp eq ptr %i.jp, %i.jq
  br i1 %i.jr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.aq
  %i.js = load i64, ptr %i.jq, align 8, !tbaa !88
  %i.jt = add i64 %i.js, 1
  call void @_ZdlPvm(ptr noundef %i.jp, i64 noundef %i.jt) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ju = getelementptr inbounds nuw i8, ptr %14, i64 896
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !89 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %14, i64 912 ; 2 uses
  %i.jx = icmp eq ptr %i.jv, %i.jw
  br i1 %i.jx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.jy = load i64, ptr %i.jw, align 8, !tbaa !88
  %i.jz = add i64 %i.jy, 1
  call void @_ZdlPvm(ptr noundef %i.jv, i64 noundef %i.jz) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.ka = getelementptr inbounds nuw i8, ptr %14, i64 856
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !89 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %14, i64 872 ; 2 uses
  %i.kd = icmp eq ptr %i.kb, %i.kc
  br i1 %i.kd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.ke = load i64, ptr %i.kc, align 8, !tbaa !88
  %i.kf = add i64 %i.ke, 1
  call void @_ZdlPvm(ptr noundef %i.kb, i64 noundef %i.kf) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  %i.kg = getelementptr inbounds nuw i8, ptr %14, i64 120
  store i64 0, ptr %i.kg, align 8, !tbaa !109
  %i.kh = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ki, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4pbrt24AnimatedShapeSceneEntityESaIS1_EE9push_backEOS1_.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i
  %i.kj = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.kk = getelementptr inbounds nuw i8, ptr %14, i64 112
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !110
  %i.km = shl i64 %i.kl, 3
  %i.kn = load ptr, ptr %i.kj, align 8, !tbaa !111 ; 2 uses
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !72
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 24
  %i.kq = load ptr, ptr %i.kp, align 8
  invoke void %i.kq(ptr noundef nonnull align 8 dereferenceable(8) %i.kn, ptr noundef nonnull %i.ki, i64 noundef %i.km, i64 noundef 8)
          to label %_ZNSt6vectorIN4pbrt24AnimatedShapeSceneEntityESaIS1_EE9push_backEOS1_.exit unwind label %bb.as, !inline_history !3

bb.as:                                            ; preds = %bb.ar
  %i.kr = landingpad { ptr, i32 }
          catch ptr null
  %i.ks = extractvalue { ptr, i32 } %i.kr, 0
  call void @__clang_call_terminate(ptr %i.ks) #31
  unreachable

bb.at:                                            ; preds = %bb.am
  %i.kt = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ap, %bb.at
  %eh.lpad-body = phi { ptr, i32 } [ %i.kt, %bb.at ], [ %i.jl, %bb.ap ]
  call void @_ZN4pbrt24AnimatedShapeSceneEntityD2Ev(ptr noundef nonnull align 8 dead_on_return(960) dereferenceable(960) %14) #32
  br label %bb.aw

_ZNSt6vectorIN4pbrt24AnimatedShapeSceneEntityESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, %.noexc46, %bb.af
  %i.ku = getelementptr inbounds nuw i8, ptr %12, i64 928
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !89 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %12, i64 944 ; 2 uses
  %i.kx = icmp eq ptr %i.kv, %i.kw
  br i1 %i.kx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i50: ; preds = %_ZNSt6vectorIN4pbrt24AnimatedShapeSceneEntityESaIS1_EE9push_backEOS1_.exit
  %i.ky = load i64, ptr %i.kw, align 8, !tbaa !88
  %i.kz = add i64 %i.ky, 1
  call void @_ZdlPvm(ptr noundef %i.kv, i64 noundef %i.kz) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i51: ; preds = %_ZNSt6vectorIN4pbrt24AnimatedShapeSceneEntityESaIS1_EE9push_backEOS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i50
  %i.la = getelementptr inbounds nuw i8, ptr %12, i64 896
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !89 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %12, i64 912 ; 2 uses
  %i.ld = icmp eq ptr %i.lb, %i.lc
  br i1 %i.ld, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i51
  %i.le = load i64, ptr %i.lc, align 8, !tbaa !88
  %i.lf = add i64 %i.le, 1
  call void @_ZdlPvm(ptr noundef %i.lb, i64 noundef %i.lf) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i51, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i52
  %i.lg = getelementptr inbounds nuw i8, ptr %12, i64 856
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !89 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %12, i64 872 ; 2 uses
  %i.lj = icmp eq ptr %i.lh, %i.li
  br i1 %i.lj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i53
  %i.lk = load i64, ptr %i.li, align 8, !tbaa !88
  %i.ll = add i64 %i.lk, 1
  call void @_ZdlPvm(ptr noundef %i.lh, i64 noundef %i.ll) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i55: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i54
  %i.lm = getelementptr inbounds nuw i8, ptr %12, i64 120
  store i64 0, ptr %i.lm, align 8, !tbaa !109
  %i.ln = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i.i.i.i56 = icmp eq ptr %i.lo, null
  br i1 %.not.i.i.i.i.i.i.i56, label %_ZN4pbrt24AnimatedShapeSceneEntityD2Ev.exit60, label %bb.au

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i55
  %i.lp = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.lq = getelementptr inbounds nuw i8, ptr %12, i64 112
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !110
  %i.ls = shl i64 %i.lr, 3
  %i.lt = load ptr, ptr %i.lp, align 8, !tbaa !111 ; 2 uses
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !72
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 24
  %i.lw = load ptr, ptr %i.lv, align 8
  invoke void %i.lw(ptr noundef nonnull align 8 dereferenceable(8) %i.lt, ptr noundef nonnull %i.lo, i64 noundef %i.ls, i64 noundef 8)
          to label %_ZN4pbrt24AnimatedShapeSceneEntityD2Ev.exit60 unwind label %bb.av, !inline_history !3

bb.av:                                            ; preds = %bb.au
  %i.lx = landingpad { ptr, i32 }
          catch ptr null
  %i.ly = extractvalue { ptr, i32 } %i.lx, 0
  call void @__clang_call_terminate(ptr %i.ly) #31
  unreachable

_ZN4pbrt24AnimatedShapeSceneEntityD2Ev.exit60:    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i55, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %bb.bn

bb.aw:                                            ; preds = %.body, %bb.aj
  %.pn30 = phi { ptr, i32 } [ %i.iz, %bb.aj ], [ %eh.lpad-body, %.body ]
  call void @_ZN4pbrt24AnimatedShapeSceneEntityD2Ev(ptr noundef nonnull align 8 dead_on_return(960) dereferenceable(960) %12) #32
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.ai
  %.pn30.pn = phi { ptr, i32 } [ %.pn30, %bb.aw ], [ %i.iy, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ah, %bb.ax, %bb.ag
  %.pn30.pn.pn.pn = phi { ptr, i32 } [ %i.iw, %bb.ag ], [ %.pn30.pn, %bb.ax ], [ %i.ix, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %bb.bq

bb.az:                                            ; preds = %bb.w
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 1280 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !833)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32, !noalias !833
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 1120
  invoke void @_ZNK4pbrt9TransformmlERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %5, ptr noundef nonnull align 4 dereferenceable(128) %i.ma, ptr noundef nonnull align 4 dereferenceable(128) %i.gq)
          to label %.noexc61 unwind label %bb.bg

.noexc61:                                         ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %15, ptr noundef nonnull align 4 dereferenceable(64) %5, i64 64, i1 false), !tbaa.struct !217
  %i.mb = getelementptr inbounds nuw i8, ptr %15, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32, !noalias !833
  invoke void @_ZN4pbrt7InverseILi4EEEN4pstd8optionalINS_12SquareMatrixIXT_EEEEERKS4_(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.288") align 4 %4, ptr noundef nonnull align 4 dereferenceable(64) %5)
          to label %.noexc62 unwind label %bb.bg

.noexc62:                                         ; preds = %.noexc61
  %i.mc = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.md = load i8, ptr %i.mc, align 4, !tbaa !348, !range !211, !noalias !833, !noundef !212
  %i.me = trunc nuw i8 %i.md to i1
  br i1 %i.me, label %_ZN4pstd8optionalIN4pbrt12SquareMatrixILi4EEEEdeEv.exit.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %.noexc62
  store <8 x float> splat (float +snan(0x200000)), ptr %i.mb, align 4, !tbaa !107, !alias.scope !833
  %i.mf = getelementptr inbounds nuw i8, ptr %15, i64 96
  store <8 x float> splat (float +snan(0x200000)), ptr %i.mf, align 4, !tbaa !107, !alias.scope !833
  br label %bb.ba

_ZN4pstd8optionalIN4pbrt12SquareMatrixILi4EEEEdeEv.exit.i.i: ; preds = %.noexc62
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.mb, ptr noundef nonnull align 4 dereferenceable(64) %4, i64 64, i1 false), !tbaa.struct !217
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN4pstd8optionalIN4pbrt12SquareMatrixILi4EEEEdeEv.exit.i.i, %.preheader.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32, !noalias !833
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32, !noalias !833
  %i.mg = invoke noundef ptr @_ZN4pbrt11InternCacheINS_9TransformESt4hashIS1_EE6LookupIZNS4_6LookupERKS1_EUlN4pstd3pmr21polymorphic_allocatorISt4byteEES7_E_EEPS6_S7_T_(ptr noundef nonnull align 64 dereferenceable(168) %i.lz, ptr noundef nonnull align 4 dereferenceable(128) %15)
          to label %bb.bb unwind label %bb.bg     ; 3 uses

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %16, ptr noundef nonnull align 4 dereferenceable(64) %i.mh, i64 64, i1 false), !tbaa.struct !217
  %i.mi = getelementptr inbounds nuw i8, ptr %16, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.mi, ptr noundef nonnull align 4 dereferenceable(128) %i.mg, i64 64, i1 false), !tbaa.struct !217
  %i.mj = invoke noundef ptr @_ZN4pbrt11InternCacheINS_9TransformESt4hashIS1_EE6LookupIZNS4_6LookupERKS1_EUlN4pstd3pmr21polymorphic_allocatorISt4byteEES7_E_EEPS6_S7_T_(ptr noundef nonnull align 64 dereferenceable(168) %i.lz, ptr noundef nonnull align 4 dereferenceable(128) %16)
          to label %_ZN4pbrt11InternCacheINS_9TransformESt4hashIS1_EE6LookupERKS1_.exit66 unwind label %bb.bh

_ZN4pbrt11InternCacheINS_9TransformESt4hashIS1_EE6LookupERKS1_.exit66: ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #32
  %i.mk = load i64, ptr %6, align 8, !tbaa !102
  store i64 %i.mk, ptr %18, align 8, !tbaa !102
  %i.ml = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %18, i64 80 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %18, i64 88
  %i.mo = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  %i.mq = load i64, ptr %i.mo, align 8, !tbaa !109 ; 3 uses
  %i.mr = load <2 x i64>, ptr %i.mp, align 8, !tbaa !198
  store <2 x i64> %i.mr, ptr %i.mm, align 8, !tbaa !198
  %i.ms = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !103
  store ptr %i.mt, ptr %i.ml, align 8, !tbaa !103
  %i.mu = icmp ult i64 %i.mq, 9
  br i1 %i.mu, label %.preheader.i.i67, label %bb.bc

.preheader.i.i67:                                 ; preds = %_ZN4pbrt11InternCacheINS_9TransformESt4hashIS1_EE6LookupERKS1_.exit66
  %.not.i.i68 = icmp eq i64 %i.mq, 0
  br i1 %.not.i.i68, label %.loopexit91, label %.lr.ph.i.i69

.lr.ph.i.i69:                                     ; preds = %.preheader.i.i67
  %i.mv = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.mw = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.mx = shl nuw nsw i64 %i.mq, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.mv, ptr nonnull align 8 %i.mw, i64 %i.mx, i1 false), !tbaa !189
  br label %.loopexit91

bb.bc:                                            ; preds = %_ZN4pbrt11InternCacheINS_9TransformESt4hashIS1_EE6LookupERKS1_.exit66
  store i64 0, ptr %i.mo, align 8, !tbaa !109
  br label %.loopexit91

.loopexit91:                                      ; preds = %.lr.ph.i.i69, %bb.bc, %.preheader.i.i67
  store i64 0, ptr %i.mp, align 8, !tbaa !110
  store ptr null, ptr %i.ms, align 8, !tbaa !103
  %i.my = getelementptr inbounds nuw i8, ptr %18, i64 96
  %i.mz = getelementptr inbounds nuw i8, ptr %6, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.my, ptr noundef nonnull align 8 dereferenceable(12) %i.mz, i64 12, i1 false)
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.nb = load i8, ptr %i.na, align 16, !tbaa !210, !range !211, !noundef !212
  %i.nc = trunc nuw i8 %i.nb to i1
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ne = load i32, ptr %i.nd, align 32, !tbaa !366
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke void @_ZN4pbrt16ShapeSceneEntityC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_19ParameterDictionaryENS_7FileLocEPKNS_9TransformESD_biS8_iS8_S8_(ptr noundef nonnull align 8 dereferenceable(272) %17, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef nonnull align 8 dereferenceable(112) %18, ptr noundef nonnull byval(%"struct.pbrt::FileLoc") align 8 %3, ptr noundef nonnull %i.mg, ptr noundef %i.mj, i1 noundef zeroext %i.nc, i32 noundef %i.ne, ptr noundef nonnull align 8 dereferenceable(32) %i.nf, i32 noundef %.0, ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.ng)
          to label %bb.bd unwind label %bb.bi

bb.bd:                                            ; preds = %.loopexit91
  store i64 0, ptr %i.mn, align 8, !tbaa !109
  %i.nh = load ptr, ptr %i.ml, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i.i74 = icmp eq ptr %i.nh, null
  br i1 %.not.i.i.i.i.i74, label %_ZN4pbrt19ParameterDictionaryD2Ev.exit75, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ni = load i64, ptr %i.mm, align 8, !tbaa !110
  %i.nj = shl i64 %i.ni, 3
  %i.nk = load ptr, ptr %18, align 8, !tbaa !111  ; 2 uses
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !72
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 24
  %i.nn = load ptr, ptr %i.nm, align 8
  invoke void %i.nn(ptr noundef nonnull align 8 dereferenceable(8) %i.nk, ptr noundef nonnull %i.nh, i64 noundef %i.nj, i64 noundef 8)
          to label %_ZN4pbrt19ParameterDictionaryD2Ev.exit75 unwind label %bb.bf, !inline_history !3

bb.bf:                                            ; preds = %bb.be
  %i.no = landingpad { ptr, i32 }
          catch ptr null
  %i.np = extractvalue { ptr, i32 } %i.no, 0
  call void @__clang_call_terminate(ptr %i.np) #31
  unreachable

_ZN4pbrt19ParameterDictionaryD2Ev.exit75:         ; preds = %bb.bd, %bb.be
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 1520
  %i.nr = load ptr, ptr %i.nq, align 16, !tbaa !365 ; 2 uses
  %.not24 = icmp eq ptr %i.nr, null
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nr, i64 80
  %i.nu = select i1 %.not24, ptr %i.ns, ptr %i.nt
  %i.nv = invoke noundef nonnull align 8 dereferenceable(272) ptr @_ZNSt6vectorIN4pbrt16ShapeSceneEntityESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.nu, ptr noundef nonnull align 8 dereferenceable(272) %17)
          to label %_ZNSt6vectorIN4pbrt16ShapeSceneEntityESaIS1_EE9push_backEOS1_.exit unwind label %bb.bj ; 0 uses

bb.bg:                                            ; preds = %bb.ba, %.noexc61, %bb.az
  %i.nw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  br label %bb.bq

bb.bh:                                            ; preds = %bb.bb
  %i.nx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  br label %bb.bq

bb.bi:                                            ; preds = %.loopexit91
  %i.ny = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt19ParameterDictionaryD2Ev(ptr noundef nonnull align 8 dead_on_return(108) dereferenceable(108) %18) #32
  br label %bb.bm

bb.bj:                                            ; preds = %_ZN4pbrt19ParameterDictionaryD2Ev.exit75
  %i.nz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt16ShapeSceneEntityD2Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %17) #32
  br label %bb.bm

_ZNSt6vectorIN4pbrt16ShapeSceneEntityESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZN4pbrt19ParameterDictionaryD2Ev.exit75
  %i.oa = getelementptr inbounds nuw i8, ptr %17, i64 240
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !89 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %17, i64 256 ; 2 uses
  %i.od = icmp eq ptr %i.ob, %i.oc
  br i1 %i.od, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i79: ; preds = %_ZNSt6vectorIN4pbrt16ShapeSceneEntityESaIS1_EE9push_backEOS1_.exit
  %i.oe = load i64, ptr %i.oc, align 8, !tbaa !88
  %i.of = add i64 %i.oe, 1
  call void @_ZdlPvm(ptr noundef %i.ob, i64 noundef %i.of) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i80: ; preds = %_ZNSt6vectorIN4pbrt16ShapeSceneEntityESaIS1_EE9push_backEOS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i79
  %i.og = getelementptr inbounds nuw i8, ptr %17, i64 208
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !89 ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %17, i64 224 ; 2 uses
  %i.oj = icmp eq ptr %i.oh, %i.oi
  br i1 %i.oj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i81: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i80
  %i.ok = load i64, ptr %i.oi, align 8, !tbaa !88
  %i.ol = add i64 %i.ok, 1
  call void @_ZdlPvm(ptr noundef %i.oh, i64 noundef %i.ol) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i80, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i81
  %i.om = getelementptr inbounds nuw i8, ptr %17, i64 168
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !89 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %17, i64 184 ; 2 uses
  %i.op = icmp eq ptr %i.on, %i.oo
  br i1 %i.op, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i83: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i82
  %i.oq = load i64, ptr %i.oo, align 8, !tbaa !88
  %i.or = add i64 %i.oq, 1
  call void @_ZdlPvm(ptr noundef %i.on, i64 noundef %i.or) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i84: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i82, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i83
  %i.os = getelementptr inbounds nuw i8, ptr %17, i64 120
  store i64 0, ptr %i.os, align 8, !tbaa !109
  %i.ot = getelementptr inbounds nuw i8, ptr %17, i64 40
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i.i.i.i85 = icmp eq ptr %i.ou, null
  br i1 %.not.i.i.i.i.i.i.i85, label %_ZN4pbrt16ShapeSceneEntityD2Ev.exit, label %bb.bk

bb.bk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i84
  %i.ov = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.ow = getelementptr inbounds nuw i8, ptr %17, i64 112
  %i.ox = load i64, ptr %i.ow, align 8, !tbaa !110
  %i.oy = shl i64 %i.ox, 3
  %i.oz = load ptr, ptr %i.ov, align 8, !tbaa !111 ; 2 uses
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !72
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 24
  %i.pc = load ptr, ptr %i.pb, align 8
  invoke void %i.pc(ptr noundef nonnull align 8 dereferenceable(8) %i.oz, ptr noundef nonnull %i.ou, i64 noundef %i.oy, i64 noundef 8)
          to label %_ZN4pbrt16ShapeSceneEntityD2Ev.exit unwind label %bb.bl, !inline_history !3

bb.bl:                                            ; preds = %bb.bk
  %i.pd = landingpad { ptr, i32 }
          catch ptr null
  %i.pe = extractvalue { ptr, i32 } %i.pd, 0
  call void @__clang_call_terminate(ptr %i.pe) #31
  unreachable

_ZN4pbrt16ShapeSceneEntityD2Ev.exit:              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i84, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bj, %bb.bi
  %.pn25 = phi { ptr, i32 } [ %i.nz, %bb.bj ], [ %i.ny, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  br label %bb.bq

bb.bn:                                            ; preds = %_ZN4pbrt16ShapeSceneEntityD2Ev.exit, %_ZN4pbrt24AnimatedShapeSceneEntityD2Ev.exit60
  %i.pf = getelementptr inbounds nuw i8, ptr %6, i64 88
  store i64 0, ptr %i.pf, align 8, !tbaa !109
  %i.pg = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i.i89 = icmp eq ptr %i.ph, null
  br i1 %.not.i.i.i.i.i89, label %_ZN4pbrt19ParameterDictionaryD2Ev.exit90, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.pi = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.pj = load i64, ptr %i.pi, align 8, !tbaa !110
  %i.pk = shl i64 %i.pj, 3
  %i.pl = load ptr, ptr %6, align 8, !tbaa !111   ; 2 uses
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !72
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 24
  %i.po = load ptr, ptr %i.pn, align 8
  invoke void %i.po(ptr noundef nonnull align 8 dereferenceable(8) %i.pl, ptr noundef nonnull %i.ph, i64 noundef %i.pk, i64 noundef 8)
          to label %_ZN4pbrt19ParameterDictionaryD2Ev.exit90 unwind label %bb.bp, !inline_history !3

bb.bp:                                            ; preds = %bb.bo
  %i.pp = landingpad { ptr, i32 }
          catch ptr null
  %i.pq = extractvalue { ptr, i32 } %i.pp, 0
  call void @__clang_call_terminate(ptr %i.pq) #31
  unreachable

_ZN4pbrt19ParameterDictionaryD2Ev.exit90:         ; preds = %bb.bn, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  ret void

bb.bq:                                            ; preds = %bb.bg, %bb.bm, %bb.bh, %bb.ay, %bb.v, %bb.s
  %.pn30.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn30.pn.pn.pn, %bb.ay ], [ %.pn, %bb.v ], [ %i.gn, %bb.s ], [ %i.nw, %bb.bg ], [ %.pn25, %bb.bm ], [ %i.nx, %bb.bh ]
  call void @_ZN4pbrt19ParameterDictionaryD2Ev(ptr noundef nonnull align 8 dead_on_return(108) dereferenceable(108) %6) #32
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.r
  %.pn30.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn30.pn.pn.pn.pn, %bb.bq ], [ %i.gm, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  resume { ptr, i32 } %.pn30.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt9ErrorExitIJRA6_KcEEEvPKNS_7FileLocEPS1_DpOT_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(6) %2) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
end_hunk_7
begin_hunk_8_@_ZN4pbrt17BasicSceneBuilder6RotateEffffNS_7FileLocE:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.14.0..sroa_idx.i.i.i.i, i8 0, i64 16, i1 false), !alias.scope !929, !noalias !923
  store float 1.000000e+00, ptr %.sroa.18.0..sroa_idx.i.i.i.i, align 4, !tbaa !88, !alias.scope !929, !noalias !923
  call void @_ZNK4pbrt9TransformmlERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %8, ptr noundef nonnull align 8 dereferenceable(128) %7, ptr noundef nonnull align 4 dereferenceable(128) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32, !noalias !923
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(128) %i.ba, ptr noundef nonnull align 4 dereferenceable(128) %8, i64 128, i1 false), !tbaa.struct !214
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  br label %"_ZN4pbrt17BasicSceneBuilder13GraphicsState19ForActiveTransformsIZNS0_6RotateEffffNS_7FileLocEE3$_0EEvT_.exit"

"_ZN4pbrt17BasicSceneBuilder13GraphicsState19ForActiveTransformsIZNS0_6RotateEffffNS_7FileLocEE3$_0EEvT_.exit": ; preds = %bb.b, %_ZN4pbrt12TransformSetixEi.exit5.1.i
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt17BasicSceneBuilder5ScaleEfffNS_7FileLocE(ptr nofree noundef nonnull align 64 captures(none) dereferenceable(3544) %0, float noundef %1, float noundef %2, float noundef %3, ptr nofree noundef readnone byval(%"struct.pbrt::FileLoc") align 8 captures(none) %4) unnamed_addr #10 align 2 {
bb.a:
  %5 = alloca %"class.pbrt::Transform", align 4   ; 8 uses
  %6 = alloca %"class.pbrt::Transform", align 8   ; 8 uses
  %7 = alloca %"class.pbrt::Transform", align 4   ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 2 uses
  %i.b = load i32, ptr %i.a, align 32, !tbaa !108 ; 2 uses
  %i.c = and i32 %i.b, 1
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %_ZN4pbrt12TransformSetixEi.exit5.i

_ZN4pbrt12TransformSetixEi.exit5.i:               ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %6, ptr noundef nonnull align 32 dereferenceable(128) %i.d, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32, !noalias !932
  call void @_ZN4pbrt5ScaleEfff(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %5, float noundef %1, float noundef %2, float noundef %3), !noalias !932
  call void @_ZNK4pbrt9TransformmlERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %7, ptr noundef nonnull align 8 dereferenceable(128) %6, ptr noundef nonnull align 4 dereferenceable(128) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32, !noalias !932
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(128) %i.d, ptr noundef nonnull align 4 dereferenceable(128) %7, i64 128, i1 false), !tbaa.struct !214
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  %.pre.i = load i32, ptr %i.a, align 32, !tbaa !108
  br label %bb.b

bb.b:                                             ; preds = %_ZN4pbrt12TransformSetixEi.exit5.i, %bb.a
  %i.e = phi i32 [ %i.b, %bb.a ], [ %.pre.i, %_ZN4pbrt12TransformSetixEi.exit5.i ]
  %i.f = and i32 %i.e, 2
  %.not.1.i = icmp eq i32 %i.f, 0
  br i1 %.not.1.i, label %"_ZN4pbrt17BasicSceneBuilder13GraphicsState19ForActiveTransformsIZNS0_5ScaleEfffNS_7FileLocEE3$_0EEvT_.exit", label %_ZN4pbrt12TransformSetixEi.exit5.1.i

_ZN4pbrt12TransformSetixEi.exit5.1.i:             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %6, ptr noundef nonnull align 32 dereferenceable(128) %i.g, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32, !noalias !932
  call void @_ZN4pbrt5ScaleEfff(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %5, float noundef %1, float noundef %2, float noundef %3), !noalias !932
  call void @_ZNK4pbrt9TransformmlERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %7, ptr noundef nonnull align 8 dereferenceable(128) %6, ptr noundef nonnull align 4 dereferenceable(128) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32, !noalias !932
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(128) %i.g, ptr noundef nonnull align 4 dereferenceable(128) %7, i64 128, i1 false), !tbaa.struct !214
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %"_ZN4pbrt17BasicSceneBuilder13GraphicsState19ForActiveTransformsIZNS0_5ScaleEfffNS_7FileLocEE3$_0EEvT_.exit"

"_ZN4pbrt17BasicSceneBuilder13GraphicsState19ForActiveTransformsIZNS0_5ScaleEfffNS_7FileLocEE3$_0EEvT_.exit": ; preds = %bb.b, %_ZN4pbrt12TransformSetixEi.exit5.1.i
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt17BasicSceneBuilder6LookAtEfffffffffNS_7FileLocE(ptr nofree noundef nonnull align 64 captures(none) dereferenceable(3544) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, float noundef %9, ptr nofree noundef readnone byval(%"struct.pbrt::FileLoc") align 8 captures(none) %10) unnamed_addr #10 align 2 {
bb.a:
  %11 = alloca %"class.pbrt::Transform", align 8  ; 8 uses
  %12 = alloca %"class.pbrt::Transform", align 4  ; 8 uses
  %13 = alloca %class.anon.139, align 8           ; 5 uses
  %14 = alloca %"class.pbrt::Transform", align 4  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  %.sroa.019.0.vec.insert = insertelement <2 x float> poison, float %1, i64 0
  %.sroa.019.4.vec.insert = insertelement <2 x float> %.sroa.019.0.vec.insert, float %2, i64 1
  %.sroa.016.0.vec.insert = insertelement <2 x float> poison, float %4, i64 0
  %.sroa.016.4.vec.insert = insertelement <2 x float> %.sroa.016.0.vec.insert, float %5, i64 1
  %.sroa.014.0.vec.insert = insertelement <2 x float> poison, float %7, i64 0
  %.sroa.014.4.vec.insert = insertelement <2 x float> %.sroa.014.0.vec.insert, float %8, i64 1
  call void @_ZN4pbrt6LookAtENS_6Point3IfEES1_NS_7Vector3IfEE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %14, <2 x float> %.sroa.019.4.vec.insert, float %3, <2 x float> %.sroa.016.4.vec.insert, float %6, <2 x float> %.sroa.014.4.vec.insert, float %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %13, ptr noundef nonnull align 4 dereferenceable(128) %14, i64 128, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 2 uses
  %i.b = load i32, ptr %i.a, align 32, !tbaa !108 ; 2 uses
  %i.c = and i32 %i.b, 1
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %_ZN4pbrt12TransformSetixEi.exit5.i

_ZN4pbrt12TransformSetixEi.exit5.i:               ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %11, ptr noundef nonnull align 32 dereferenceable(128) %i.d, i64 128, i1 false)
  call void @_ZNK4pbrt9TransformmlERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %12, ptr noundef nonnull align 8 dereferenceable(128) %11, ptr noundef nonnull align 8 dereferenceable(128) %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(128) %i.d, ptr noundef nonnull align 4 dereferenceable(128) %12, i64 128, i1 false), !tbaa.struct !214
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  %.pre.i = load i32, ptr %i.a, align 32, !tbaa !108
  br label %bb.b

bb.b:                                             ; preds = %_ZN4pbrt12TransformSetixEi.exit5.i, %bb.a
  %i.e = phi i32 [ %i.b, %bb.a ], [ %.pre.i, %_ZN4pbrt12TransformSetixEi.exit5.i ]
  %i.f = and i32 %i.e, 2
  %.not.1.i = icmp eq i32 %i.f, 0
  br i1 %.not.1.i, label %"_ZN4pbrt17BasicSceneBuilder13GraphicsState19ForActiveTransformsIZNS0_6LookAtEfffffffffNS_7FileLocEE3$_0EEvT_.exit", label %_ZN4pbrt12TransformSetixEi.exit5.1.i

_ZN4pbrt12TransformSetixEi.exit5.1.i:             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %11, ptr noundef nonnull align 32 dereferenceable(128) %i.g, i64 128, i1 false)
  call void @_ZNK4pbrt9TransformmlERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %12, ptr noundef nonnull align 8 dereferenceable(128) %11, ptr noundef nonnull align 8 dereferenceable(128) %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(128) %i.g, ptr noundef nonnull align 4 dereferenceable(128) %12, i64 128, i1 false), !tbaa.struct !214
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  br label %"_ZN4pbrt17BasicSceneBuilder13GraphicsState19ForActiveTransformsIZNS0_6LookAtEfffffffffNS_7FileLocEE3$_0EEvT_.exit"

"_ZN4pbrt17BasicSceneBuilder13GraphicsState19ForActiveTransformsIZNS0_6LookAtEfffffffffNS_7FileLocEE3$_0EEvT_.exit": ; preds = %bb.b, %_ZN4pbrt12TransformSetixEi.exit5.1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  ret void
}

declare void @_ZN4pbrt6LookAtENS_6Point3IfEES1_NS_7Vector3IfEE(ptr dead_on_unwind writable sret(%"class.pbrt::Transform") align 4, <2 x float>, float, <2 x float>, float, <2 x float>, float) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4pbrt17BasicSceneBuilder18ActiveTransformAllENS_7FileLocE(ptr nofree noundef nonnull writeonly align 64 captures(none) dereferenceable(3544) initializes((1056, 1060)) %0, ptr nofree noundef readnone byval(%"struct.pbrt::FileLoc") align 8 captures(none) %1) unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1056
  store i32 3, ptr %i.a, align 32, !tbaa !237
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4pbrt17BasicSceneBuilder22ActiveTransformEndTimeENS_7FileLocE(ptr nofree noundef nonnull writeonly align 64 captures(none) dereferenceable(3544) initializes((1056, 1060)) %0, ptr nofree noundef readnone byval(%"struct.pbrt::FileLoc") align 8 captures(none) %1) unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1056
  store i32 2, ptr %i.a, align 32, !tbaa !237
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4pbrt17BasicSceneBuilder24ActiveTransformStartTimeENS_7FileLocE(ptr nofree noundef nonnull writeonly align 64 captures(none) dereferenceable(3544) initializes((1056, 1060)) %0, ptr nofree noundef readnone byval(%"struct.pbrt::FileLoc") align 8 captures(none) %1) unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1056
  store i32 1, ptr %i.a, align 32, !tbaa !237
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt17BasicSceneBuilder14TransformTimesEffNS_7FileLocE(ptr nofree noundef nonnull align 64 captures(none) dereferenceable(3544) %0, float noundef %1, float noundef %2, ptr noundef byval(%"struct.pbrt::FileLoc") align 8 %3) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !166
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN4pbrt9ErrorExitIJRA15_KcEEEvPKNS_7FileLocEPS1_DpOT_(ptr noundef nonnull %3, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(15) @.str.78) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1060
  store float %1, ptr %i.d, align 4, !tbaa !218
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1064
  store float %2, ptr %i.e, align 8, !tbaa !219
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt17BasicSceneBuilder11PixelFilterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorISB_EEEENS_7FileLocE(ptr noundef nonnull align 64 dereferenceable(3544) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef align 8 captures(none) dereferenceable(96) %2, ptr noundef byval(%"struct.pbrt::FileLoc") align 8 %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.pbrt::ParameterDictionary", align 8 ; 12 uses
  %5 = alloca %"class.pbrt::InlinedVector", align 8 ; 8 uses
  %6 = alloca %"struct.pbrt::SceneEntity", align 8 ; 11 uses
  %7 = alloca %"class.pbrt::ParameterDictionary", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.a = load i64, ptr %2, align 8, !tbaa !102
  store i64 %i.a, ptr %5, align 8, !tbaa !102
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.g = load i64, ptr %i.e, align 8, !tbaa !109  ; 3 uses
  %i.h = load <2 x i64>, ptr %i.f, align 8, !tbaa !198
  store <2 x i64> %i.h, ptr %i.c, align 8, !tbaa !198
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !103
  store ptr %i.j, ptr %i.b, align 8, !tbaa !103
  %i.k = icmp ult i64 %i.g, 9
  br i1 %i.k, label %.preheader.i, label %bb.b

.preheader.i:                                     ; preds = %bb.a
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = shl nuw nsw i64 %i.g, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %i.m, i64 %i.n, i1 false), !tbaa !189
  br label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.e, align 8, !tbaa !109
  br label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit

_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit: ; preds = %.lr.ph.i, %.preheader.i, %bb.b
  store i64 0, ptr %i.f, align 8, !tbaa !110
  store ptr null, ptr %i.i, align 8, !tbaa !103
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !213
  invoke void @_ZN4pbrt19ParameterDictionaryC1ENS_13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS3_EEEEPKNS_13RGBColorSpaceE(ptr noundef nonnull align 8 dereferenceable(108) %4, ptr nofree noundef nonnull align 8 dereferenceable(96) %5, ptr noundef %i.p)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit
  store i64 0, ptr %i.d, align 8, !tbaa !109
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !103  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load i64, ptr %i.c, align 8, !tbaa !110
  %i.s = shl i64 %i.r, 3
  %i.t = load ptr, ptr %5, align 8, !tbaa !111    ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !72
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  invoke void %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull %i.q, i64 noundef %i.s, i64 noundef 8)
          to label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit unwind label %bb.e, !inline_history !3

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #31
  unreachable

_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit: ; preds = %bb.c, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !166
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit
  invoke void @_ZN4pbrt9ErrorExitIJRA12_KcEEEvPKNS_7FileLocEPS1_DpOT_(ptr noundef nonnull %3, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(12) @.str.79) #34
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %5) #32
  br label %bb.x

bb.i:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.j:                                             ; preds = %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.ae = load i64, ptr %4, align 8, !tbaa !102
  store i64 %i.ae, ptr %7, align 8, !tbaa !102
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 3 uses
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !109 ; 3 uses
  %i.al = load <2 x i64>, ptr %i.aj, align 8, !tbaa !198
  store <2 x i64> %i.al, ptr %i.ag, align 8, !tbaa !198
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !103
  store ptr %i.an, ptr %i.af, align 8, !tbaa !103
  %i.ao = icmp ult i64 %i.ak, 9
  br i1 %i.ao, label %.preheader.i.i, label %bb.k

.preheader.i.i:                                   ; preds = %bb.j
  %.not.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ar = shl nuw nsw i64 %i.ak, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ap, ptr nonnull align 8 %i.aq, i64 %i.ar, i1 false), !tbaa !189
  br label %.loopexit

bb.k:                                             ; preds = %bb.j
  store i64 0, ptr %i.ai, align 8, !tbaa !109
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.k, %.preheader.i.i
  store i64 0, ptr %i.aj, align 8, !tbaa !110
  store ptr null, ptr %i.am, align 8, !tbaa !103
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.as, ptr noundef nonnull align 8 dereferenceable(12) %i.at, i64 12, i1 false)
  invoke void @_ZN4pbrt11SceneEntityC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_19ParameterDictionaryENS_7FileLocE(ptr noundef nonnull align 8 dereferenceable(144) %6, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef nonnull align 8 dereferenceable(112) %7, ptr noundef nonnull byval(%"struct.pbrt::FileLoc") align 8 %3)
          to label %bb.l unwind label %bb.t

bb.l:                                             ; preds = %.loopexit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 2256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.au, ptr noundef nonnull align 8 dereferenceable(144) %6, i64 32, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 2288
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.ax = invoke noundef nonnull align 8 dereferenceable(96) ptr @_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEaSEOS7_(ptr noundef nonnull align 8 dereferenceable(108) %i.av, ptr noundef nonnull align 8 dereferenceable(108) %i.aw)
          to label %bb.m unwind label %bb.u       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 2384
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.ay, ptr noundef nonnull align 8 dereferenceable(12) %i.az, i64 12, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i64 0, ptr %i.ba, align 8, !tbaa !109
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4pbrt11SceneEntityD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !110
  %i.bf = shl i64 %i.be, 3
  %i.bg = load ptr, ptr %i.aw, align 8, !tbaa !111 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !72
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  invoke void %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef nonnull %i.bc, i64 noundef %i.bf, i64 noundef 8)
          to label %_ZN4pbrt11SceneEntityD2Ev.exit unwind label %bb.o, !inline_history !3

bb.o:                                             ; preds = %bb.n
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #31
  unreachable

_ZN4pbrt11SceneEntityD2Ev.exit:                   ; preds = %bb.m, %bb.n
  store i64 0, ptr %i.ah, align 8, !tbaa !109
  %i.bm = load ptr, ptr %i.af, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i.i, label %_ZN4pbrt19ParameterDictionaryD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4pbrt11SceneEntityD2Ev.exit
  %i.bn = load i64, ptr %i.ag, align 8, !tbaa !110
  %i.bo = shl i64 %i.bn, 3
  %i.bp = load ptr, ptr %7, align 8, !tbaa !111   ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !72
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8
  invoke void %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull %i.bm, i64 noundef %i.bo, i64 noundef 8)
          to label %_ZN4pbrt19ParameterDictionaryD2Ev.exit unwind label %bb.q, !inline_history !3

bb.q:                                             ; preds = %bb.p
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #31
  unreachable

_ZN4pbrt19ParameterDictionaryD2Ev.exit:           ; preds = %_ZN4pbrt11SceneEntityD2Ev.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  store i64 0, ptr %i.ai, align 8, !tbaa !109
  %i.bv = load ptr, ptr %i.am, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i.i12 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i.i12, label %_ZN4pbrt19ParameterDictionaryD2Ev.exit13, label %bb.r

bb.r:                                             ; preds = %_ZN4pbrt19ParameterDictionaryD2Ev.exit
  %i.bw = load i64, ptr %i.aj, align 8, !tbaa !110
  %i.bx = shl i64 %i.bw, 3
  %i.by = load ptr, ptr %4, align 8, !tbaa !111   ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !72
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  invoke void %i.cb(ptr noundef nonnull align 8 dereferenceable(8) %i.by, ptr noundef nonnull %i.bv, i64 noundef %i.bx, i64 noundef 8)
          to label %_ZN4pbrt19ParameterDictionaryD2Ev.exit13 unwind label %bb.s, !inline_history !3

bb.s:                                             ; preds = %bb.r
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  call void @__clang_call_terminate(ptr %i.cd) #31
  unreachable

_ZN4pbrt19ParameterDictionaryD2Ev.exit13:         ; preds = %_ZN4pbrt19ParameterDictionaryD2Ev.exit, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret void

bb.t:                                             ; preds = %.loopexit
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %bb.l
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt11SceneEntityD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %6) #32
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.cf, %bb.u ], [ %i.ce, %bb.t ]
  call void @_ZN4pbrt19ParameterDictionaryD2Ev(ptr noundef nonnull align 8 dead_on_return(108) dereferenceable(108) %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.i
  %.pn9 = phi { ptr, i32 } [ %i.ad, %bb.i ], [ %.pn, %bb.v ]
  call void @_ZN4pbrt19ParameterDictionaryD2Ev(ptr noundef nonnull align 8 dead_on_return(108) dereferenceable(108) %4) #32
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.h
  %.pn9.pn = phi { ptr, i32 } [ %.pn9, %bb.w ], [ %i.ac, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  resume { ptr, i32 } %.pn9.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt17BasicSceneBuilder4FilmERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorISB_EEEENS_7FileLocE(ptr noundef nonnull align 64 dereferenceable(3544) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef align 8 captures(none) dereferenceable(96) %2, ptr noundef byval(%"struct.pbrt::FileLoc") align 8 %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.pbrt::ParameterDictionary", align 8 ; 12 uses
  %5 = alloca %"class.pbrt::InlinedVector", align 8 ; 8 uses
  %6 = alloca %"struct.pbrt::SceneEntity", align 8 ; 11 uses
  %7 = alloca %"class.pbrt::ParameterDictionary", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.a = load i64, ptr %2, align 8, !tbaa !102
  store i64 %i.a, ptr %5, align 8, !tbaa !102
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.g = load i64, ptr %i.e, align 8, !tbaa !109  ; 3 uses
  %i.h = load <2 x i64>, ptr %i.f, align 8, !tbaa !198
  store <2 x i64> %i.h, ptr %i.c, align 8, !tbaa !198
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !103
  store ptr %i.j, ptr %i.b, align 8, !tbaa !103
  %i.k = icmp ult i64 %i.g, 9
  br i1 %i.k, label %.preheader.i, label %bb.b

.preheader.i:                                     ; preds = %bb.a
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = shl nuw nsw i64 %i.g, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %i.m, i64 %i.n, i1 false), !tbaa !189
  br label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.e, align 8, !tbaa !109
  br label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit

_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit: ; preds = %.lr.ph.i, %.preheader.i, %bb.b
  store i64 0, ptr %i.f, align 8, !tbaa !110
  store ptr null, ptr %i.i, align 8, !tbaa !103
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !213
  invoke void @_ZN4pbrt19ParameterDictionaryC1ENS_13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS3_EEEEPKNS_13RGBColorSpaceE(ptr noundef nonnull align 8 dereferenceable(108) %4, ptr nofree noundef nonnull align 8 dereferenceable(96) %5, ptr noundef %i.p)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit
  store i64 0, ptr %i.d, align 8, !tbaa !109
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !103  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load i64, ptr %i.c, align 8, !tbaa !110
  %i.s = shl i64 %i.r, 3
  %i.t = load ptr, ptr %5, align 8, !tbaa !111    ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !72
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  invoke void %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull %i.q, i64 noundef %i.s, i64 noundef 8)
          to label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit unwind label %bb.e, !inline_history !3

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #31
  unreachable

_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit: ; preds = %bb.c, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !166
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit
  invoke void @_ZN4pbrt9ErrorExitIJRA5_KcEEEvPKNS_7FileLocEPS1_DpOT_(ptr noundef nonnull %3, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(5) @.str.80) #34
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %5) #32
  br label %bb.x

bb.i:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.j:                                             ; preds = %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.ae = load i64, ptr %4, align 8, !tbaa !102
  store i64 %i.ae, ptr %7, align 8, !tbaa !102
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 3 uses
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !109 ; 3 uses
  %i.al = load <2 x i64>, ptr %i.aj, align 8, !tbaa !198
  store <2 x i64> %i.al, ptr %i.ag, align 8, !tbaa !198
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !103
  store ptr %i.an, ptr %i.af, align 8, !tbaa !103
  %i.ao = icmp ult i64 %i.ak, 9
  br i1 %i.ao, label %.preheader.i.i, label %bb.k

.preheader.i.i:                                   ; preds = %bb.j
  %.not.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ar = shl nuw nsw i64 %i.ak, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ap, ptr nonnull align 8 %i.aq, i64 %i.ar, i1 false), !tbaa !189
  br label %.loopexit

bb.k:                                             ; preds = %bb.j
  store i64 0, ptr %i.ai, align 8, !tbaa !109
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.k, %.preheader.i.i
  store i64 0, ptr %i.aj, align 8, !tbaa !110
  store ptr null, ptr %i.am, align 8, !tbaa !103
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.as, ptr noundef nonnull align 8 dereferenceable(12) %i.at, i64 12, i1 false)
  invoke void @_ZN4pbrt11SceneEntityC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_19ParameterDictionaryENS_7FileLocE(ptr noundef nonnull align 8 dereferenceable(144) %6, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef nonnull align 8 dereferenceable(112) %7, ptr noundef nonnull byval(%"struct.pbrt::FileLoc") align 8 %3)
          to label %bb.l unwind label %bb.t

bb.l:                                             ; preds = %.loopexit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1968
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.au, ptr noundef nonnull align 8 dereferenceable(144) %6, i64 32, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 2000
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.ax = invoke noundef nonnull align 8 dereferenceable(96) ptr @_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEaSEOS7_(ptr noundef nonnull align 8 dereferenceable(108) %i.av, ptr noundef nonnull align 8 dereferenceable(108) %i.aw)
          to label %bb.m unwind label %bb.u       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 2096
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.ay, ptr noundef nonnull align 8 dereferenceable(12) %i.az, i64 12, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i64 0, ptr %i.ba, align 8, !tbaa !109
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4pbrt11SceneEntityD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !110
  %i.bf = shl i64 %i.be, 3
  %i.bg = load ptr, ptr %i.aw, align 8, !tbaa !111 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !72
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  invoke void %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef nonnull %i.bc, i64 noundef %i.bf, i64 noundef 8)
          to label %_ZN4pbrt11SceneEntityD2Ev.exit unwind label %bb.o, !inline_history !3

bb.o:                                             ; preds = %bb.n
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #31
  unreachable

_ZN4pbrt11SceneEntityD2Ev.exit:                   ; preds = %bb.m, %bb.n
  store i64 0, ptr %i.ah, align 8, !tbaa !109
  %i.bm = load ptr, ptr %i.af, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i.i, label %_ZN4pbrt19ParameterDictionaryD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4pbrt11SceneEntityD2Ev.exit
  %i.bn = load i64, ptr %i.ag, align 8, !tbaa !110
  %i.bo = shl i64 %i.bn, 3
  %i.bp = load ptr, ptr %7, align 8, !tbaa !111   ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !72
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8
  invoke void %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull %i.bm, i64 noundef %i.bo, i64 noundef 8)
          to label %_ZN4pbrt19ParameterDictionaryD2Ev.exit unwind label %bb.q, !inline_history !3

bb.q:                                             ; preds = %bb.p
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #31
  unreachable

_ZN4pbrt19ParameterDictionaryD2Ev.exit:           ; preds = %_ZN4pbrt11SceneEntityD2Ev.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  store i64 0, ptr %i.ai, align 8, !tbaa !109
  %i.bv = load ptr, ptr %i.am, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i.i12 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i.i12, label %_ZN4pbrt19ParameterDictionaryD2Ev.exit13, label %bb.r

bb.r:                                             ; preds = %_ZN4pbrt19ParameterDictionaryD2Ev.exit
  %i.bw = load i64, ptr %i.aj, align 8, !tbaa !110
  %i.bx = shl i64 %i.bw, 3
  %i.by = load ptr, ptr %4, align 8, !tbaa !111   ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !72
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  invoke void %i.cb(ptr noundef nonnull align 8 dereferenceable(8) %i.by, ptr noundef nonnull %i.bv, i64 noundef %i.bx, i64 noundef 8)
          to label %_ZN4pbrt19ParameterDictionaryD2Ev.exit13 unwind label %bb.s, !inline_history !3

bb.s:                                             ; preds = %bb.r
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  call void @__clang_call_terminate(ptr %i.cd) #31
  unreachable

_ZN4pbrt19ParameterDictionaryD2Ev.exit13:         ; preds = %_ZN4pbrt19ParameterDictionaryD2Ev.exit, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret void

bb.t:                                             ; preds = %.loopexit
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %bb.l
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt11SceneEntityD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %6) #32
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.cf, %bb.u ], [ %i.ce, %bb.t ]
  call void @_ZN4pbrt19ParameterDictionaryD2Ev(ptr noundef nonnull align 8 dead_on_return(108) dereferenceable(108) %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.i
  %.pn9 = phi { ptr, i32 } [ %i.ad, %bb.i ], [ %.pn, %bb.v ]
  call void @_ZN4pbrt19ParameterDictionaryD2Ev(ptr noundef nonnull align 8 dead_on_return(108) dereferenceable(108) %4) #32
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.h
  %.pn9.pn = phi { ptr, i32 } [ %.pn9, %bb.w ], [ %i.ac, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  resume { ptr, i32 } %.pn9.pn
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt9ErrorExitIJRA5_KcEEEvPKNS_7FileLocEPS1_DpOT_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(5) %2) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !85, !alias.scope !935
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !87, !alias.scope !935
  store i8 0, ptr %i.a, align 8, !tbaa !88, !alias.scope !935
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRA5_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef nonnull align 8 %3, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(5) %2)
          to label %_ZN4pbrt12StringPrintfIJRA5_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %3, align 8, !tbaa !89, !alias.scope !935 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !88, !alias.scope !935
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #33
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRA5_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %3, align 8, !tbaa !89
  invoke void @_ZN4pbrt9ErrorExitEPKNS_7FileLocEPKc(ptr noundef %0, ptr noundef %i.h) #34
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA5_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA5_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %3, align 8, !tbaa !89     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !88
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt17BasicSceneBuilder11AcceleratorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorISB_EEEENS_7FileLocE(ptr noundef nonnull align 64 dereferenceable(3544) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef align 8 captures(none) dereferenceable(96) %2, ptr noundef byval(%"struct.pbrt::FileLoc") align 8 %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.pbrt::ParameterDictionary", align 8 ; 12 uses
  %5 = alloca %"class.pbrt::InlinedVector", align 8 ; 8 uses
  %6 = alloca %"struct.pbrt::SceneEntity", align 8 ; 11 uses
  %7 = alloca %"class.pbrt::ParameterDictionary", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.a = load i64, ptr %2, align 8, !tbaa !102
  store i64 %i.a, ptr %5, align 8, !tbaa !102
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.g = load i64, ptr %i.e, align 8, !tbaa !109  ; 3 uses
  %i.h = load <2 x i64>, ptr %i.f, align 8, !tbaa !198
  store <2 x i64> %i.h, ptr %i.c, align 8, !tbaa !198
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !103
  store ptr %i.j, ptr %i.b, align 8, !tbaa !103
  %i.k = icmp ult i64 %i.g, 9
  br i1 %i.k, label %.preheader.i, label %bb.b

.preheader.i:                                     ; preds = %bb.a
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = shl nuw nsw i64 %i.g, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %i.m, i64 %i.n, i1 false), !tbaa !189
  br label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.e, align 8, !tbaa !109
  br label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit

_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit: ; preds = %.lr.ph.i, %.preheader.i, %bb.b
  store i64 0, ptr %i.f, align 8, !tbaa !110
  store ptr null, ptr %i.i, align 8, !tbaa !103
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !213
  invoke void @_ZN4pbrt19ParameterDictionaryC1ENS_13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS3_EEEEPKNS_13RGBColorSpaceE(ptr noundef nonnull align 8 dereferenceable(108) %4, ptr nofree noundef nonnull align 8 dereferenceable(96) %5, ptr noundef %i.p)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit
  store i64 0, ptr %i.d, align 8, !tbaa !109
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !103  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load i64, ptr %i.c, align 8, !tbaa !110
  %i.s = shl i64 %i.r, 3
  %i.t = load ptr, ptr %5, align 8, !tbaa !111    ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !72
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  invoke void %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull %i.q, i64 noundef %i.s, i64 noundef 8)
          to label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit unwind label %bb.e, !inline_history !3

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #31
  unreachable

_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit: ; preds = %bb.c, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !166
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit
  invoke void @_ZN4pbrt9ErrorExitIJRA12_KcEEEvPKNS_7FileLocEPS1_DpOT_(ptr noundef nonnull %3, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(12) @.str.81) #34
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %5) #32
  br label %bb.x

bb.i:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.j:                                             ; preds = %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.ae = load i64, ptr %4, align 8, !tbaa !102
  store i64 %i.ae, ptr %7, align 8, !tbaa !102
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 3 uses
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !109 ; 3 uses
  %i.al = load <2 x i64>, ptr %i.aj, align 8, !tbaa !198
  store <2 x i64> %i.al, ptr %i.ag, align 8, !tbaa !198
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !103
  store ptr %i.an, ptr %i.af, align 8, !tbaa !103
  %i.ao = icmp ult i64 %i.ak, 9
  br i1 %i.ao, label %.preheader.i.i, label %bb.k

.preheader.i.i:                                   ; preds = %bb.j
  %.not.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ar = shl nuw nsw i64 %i.ak, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ap, ptr nonnull align 8 %i.aq, i64 %i.ar, i1 false), !tbaa !189
  br label %.loopexit

bb.k:                                             ; preds = %bb.j
  store i64 0, ptr %i.ai, align 8, !tbaa !109
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.k, %.preheader.i.i
  store i64 0, ptr %i.aj, align 8, !tbaa !110
  store ptr null, ptr %i.am, align 8, !tbaa !103
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.as, ptr noundef nonnull align 8 dereferenceable(12) %i.at, i64 12, i1 false)
  invoke void @_ZN4pbrt11SceneEntityC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_19ParameterDictionaryENS_7FileLocE(ptr noundef nonnull align 8 dereferenceable(144) %6, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef nonnull align 8 dereferenceable(112) %7, ptr noundef nonnull byval(%"struct.pbrt::FileLoc") align 8 %3)
          to label %bb.l unwind label %bb.t

bb.l:                                             ; preds = %.loopexit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 2400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(144) %i.au, ptr noundef nonnull align 8 dereferenceable(144) %6, i64 32, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 2432
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.ax = invoke noundef nonnull align 8 dereferenceable(96) ptr @_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEaSEOS7_(ptr noundef nonnull align 8 dereferenceable(108) %i.av, ptr noundef nonnull align 8 dereferenceable(108) %i.aw)
          to label %bb.m unwind label %bb.u       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 2528
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(12) %i.ay, ptr noundef nonnull align 8 dereferenceable(12) %i.az, i64 12, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i64 0, ptr %i.ba, align 8, !tbaa !109
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4pbrt11SceneEntityD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !110
  %i.bf = shl i64 %i.be, 3
  %i.bg = load ptr, ptr %i.aw, align 8, !tbaa !111 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !72
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  invoke void %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef nonnull %i.bc, i64 noundef %i.bf, i64 noundef 8)
          to label %_ZN4pbrt11SceneEntityD2Ev.exit unwind label %bb.o, !inline_history !3

bb.o:                                             ; preds = %bb.n
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #31
  unreachable

_ZN4pbrt11SceneEntityD2Ev.exit:                   ; preds = %bb.m, %bb.n
  store i64 0, ptr %i.ah, align 8, !tbaa !109
  %i.bm = load ptr, ptr %i.af, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i.i, label %_ZN4pbrt19ParameterDictionaryD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4pbrt11SceneEntityD2Ev.exit
  %i.bn = load i64, ptr %i.ag, align 8, !tbaa !110
  %i.bo = shl i64 %i.bn, 3
  %i.bp = load ptr, ptr %7, align 8, !tbaa !111   ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !72
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8
  invoke void %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull %i.bm, i64 noundef %i.bo, i64 noundef 8)
          to label %_ZN4pbrt19ParameterDictionaryD2Ev.exit unwind label %bb.q, !inline_history !3

bb.q:                                             ; preds = %bb.p
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #31
  unreachable

_ZN4pbrt19ParameterDictionaryD2Ev.exit:           ; preds = %_ZN4pbrt11SceneEntityD2Ev.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  store i64 0, ptr %i.ai, align 8, !tbaa !109
  %i.bv = load ptr, ptr %i.am, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i.i12 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i.i12, label %_ZN4pbrt19ParameterDictionaryD2Ev.exit13, label %bb.r

bb.r:                                             ; preds = %_ZN4pbrt19ParameterDictionaryD2Ev.exit
  %i.bw = load i64, ptr %i.aj, align 8, !tbaa !110
  %i.bx = shl i64 %i.bw, 3
  %i.by = load ptr, ptr %4, align 8, !tbaa !111   ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !72
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  invoke void %i.cb(ptr noundef nonnull align 8 dereferenceable(8) %i.by, ptr noundef nonnull %i.bv, i64 noundef %i.bx, i64 noundef 8)
          to label %_ZN4pbrt19ParameterDictionaryD2Ev.exit13 unwind label %bb.s, !inline_history !3

bb.s:                                             ; preds = %bb.r
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  call void @__clang_call_terminate(ptr %i.cd) #31
  unreachable

_ZN4pbrt19ParameterDictionaryD2Ev.exit13:         ; preds = %_ZN4pbrt19ParameterDictionaryD2Ev.exit, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret void

bb.t:                                             ; preds = %.loopexit
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %bb.l
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt11SceneEntityD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %6) #32
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.cf, %bb.u ], [ %i.ce, %bb.t ]
  call void @_ZN4pbrt19ParameterDictionaryD2Ev(ptr noundef nonnull align 8 dead_on_return(108) dereferenceable(108) %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.i
  %.pn9 = phi { ptr, i32 } [ %i.ad, %bb.i ], [ %.pn, %bb.v ]
  call void @_ZN4pbrt19ParameterDictionaryD2Ev(ptr noundef nonnull align 8 dead_on_return(108) dereferenceable(108) %4) #32
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.h
  %.pn9.pn = phi { ptr, i32 } [ %.pn9, %bb.w ], [ %i.ac, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  resume { ptr, i32 } %.pn9.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt17BasicSceneBuilder10IntegratorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorISB_EEEENS_7FileLocE(ptr noundef nonnull align 64 dereferenceable(3544) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef align 8 captures(none) dereferenceable(96) %2, ptr noundef byval(%"struct.pbrt::FileLoc") align 8 %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.pbrt::ParameterDictionary", align 8 ; 12 uses
  %5 = alloca %"class.pbrt::InlinedVector", align 8 ; 8 uses
  %6 = alloca %"struct.pbrt::SceneEntity", align 8 ; 11 uses
  %7 = alloca %"class.pbrt::ParameterDictionary", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.a = load i64, ptr %2, align 8, !tbaa !102
  store i64 %i.a, ptr %5, align 8, !tbaa !102
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.g = load i64, ptr %i.e, align 8, !tbaa !109  ; 3 uses
  %i.h = load <2 x i64>, ptr %i.f, align 8, !tbaa !198
  store <2 x i64> %i.h, ptr %i.c, align 8, !tbaa !198
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !103
  store ptr %i.j, ptr %i.b, align 8, !tbaa !103
  %i.k = icmp ult i64 %i.g, 9
  br i1 %i.k, label %.preheader.i, label %bb.b

.preheader.i:                                     ; preds = %bb.a
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = shl nuw nsw i64 %i.g, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %i.m, i64 %i.n, i1 false), !tbaa !189
  br label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.e, align 8, !tbaa !109
  br label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit

_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit: ; preds = %.lr.ph.i, %.preheader.i, %bb.b
  store i64 0, ptr %i.f, align 8, !tbaa !110
  store ptr null, ptr %i.i, align 8, !tbaa !103
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !213
  invoke void @_ZN4pbrt19ParameterDictionaryC1ENS_13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS3_EEEEPKNS_13RGBColorSpaceE(ptr noundef nonnull align 8 dereferenceable(108) %4, ptr nofree noundef nonnull align 8 dereferenceable(96) %5, ptr noundef %i.p)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit
  store i64 0, ptr %i.d, align 8, !tbaa !109
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !103  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load i64, ptr %i.c, align 8, !tbaa !110
  %i.s = shl i64 %i.r, 3
  %i.t = load ptr, ptr %5, align 8, !tbaa !111    ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !72
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  invoke void %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull %i.q, i64 noundef %i.s, i64 noundef 8)
          to label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit unwind label %bb.e, !inline_history !3

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #31
  unreachable

_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit: ; preds = %bb.c, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !166
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit
  invoke void @_ZN4pbrt9ErrorExitIJRA11_KcEEEvPKNS_7FileLocEPS1_DpOT_(ptr noundef nonnull %3, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(11) @.str.82) #34
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %5) #32
  br label %bb.x

bb.i:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.j:                                             ; preds = %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.ae = load i64, ptr %4, align 8, !tbaa !102
  store i64 %i.ae, ptr %7, align 8, !tbaa !102
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 3 uses
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !109 ; 3 uses
  %i.al = load <2 x i64>, ptr %i.aj, align 8, !tbaa !198
  store <2 x i64> %i.al, ptr %i.ag, align 8, !tbaa !198
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !103
  store ptr %i.an, ptr %i.af, align 8, !tbaa !103
  %i.ao = icmp ult i64 %i.ak, 9
  br i1 %i.ao, label %.preheader.i.i, label %bb.k

.preheader.i.i:                                   ; preds = %bb.j
  %.not.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ar = shl nuw nsw i64 %i.ak, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ap, ptr nonnull align 8 %i.aq, i64 %i.ar, i1 false), !tbaa !189
  br label %.loopexit

bb.k:                                             ; preds = %bb.j
  store i64 0, ptr %i.ai, align 8, !tbaa !109
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.k, %.preheader.i.i
  store i64 0, ptr %i.aj, align 8, !tbaa !110
  store ptr null, ptr %i.am, align 8, !tbaa !103
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.as, ptr noundef nonnull align 8 dereferenceable(12) %i.at, i64 12, i1 false)
  invoke void @_ZN4pbrt11SceneEntityC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_19ParameterDictionaryENS_7FileLocE(ptr noundef nonnull align 8 dereferenceable(144) %6, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef nonnull align 8 dereferenceable(112) %7, ptr noundef nonnull byval(%"struct.pbrt::FileLoc") align 8 %3)
          to label %bb.l unwind label %bb.t

bb.l:                                             ; preds = %.loopexit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 2112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(144) %i.au, ptr noundef nonnull align 8 dereferenceable(144) %6, i64 32, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 2144
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.ax = invoke noundef nonnull align 8 dereferenceable(96) ptr @_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEaSEOS7_(ptr noundef nonnull align 8 dereferenceable(108) %i.av, ptr noundef nonnull align 8 dereferenceable(108) %i.aw)
          to label %bb.m unwind label %bb.u       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 2240
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(12) %i.ay, ptr noundef nonnull align 8 dereferenceable(12) %i.az, i64 12, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i64 0, ptr %i.ba, align 8, !tbaa !109
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4pbrt11SceneEntityD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !110
  %i.bf = shl i64 %i.be, 3
  %i.bg = load ptr, ptr %i.aw, align 8, !tbaa !111 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !72
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  invoke void %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef nonnull %i.bc, i64 noundef %i.bf, i64 noundef 8)
          to label %_ZN4pbrt11SceneEntityD2Ev.exit unwind label %bb.o, !inline_history !3

bb.o:                                             ; preds = %bb.n
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #31
  unreachable

_ZN4pbrt11SceneEntityD2Ev.exit:                   ; preds = %bb.m, %bb.n
  store i64 0, ptr %i.ah, align 8, !tbaa !109
  %i.bm = load ptr, ptr %i.af, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i.i, label %_ZN4pbrt19ParameterDictionaryD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4pbrt11SceneEntityD2Ev.exit
  %i.bn = load i64, ptr %i.ag, align 8, !tbaa !110
  %i.bo = shl i64 %i.bn, 3
  %i.bp = load ptr, ptr %7, align 8, !tbaa !111   ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !72
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8
  invoke void %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull %i.bm, i64 noundef %i.bo, i64 noundef 8)
          to label %_ZN4pbrt19ParameterDictionaryD2Ev.exit unwind label %bb.q, !inline_history !3

bb.q:                                             ; preds = %bb.p
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #31
  unreachable

_ZN4pbrt19ParameterDictionaryD2Ev.exit:           ; preds = %_ZN4pbrt11SceneEntityD2Ev.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  store i64 0, ptr %i.ai, align 8, !tbaa !109
  %i.bv = load ptr, ptr %i.am, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i.i12 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i.i12, label %_ZN4pbrt19ParameterDictionaryD2Ev.exit13, label %bb.r

bb.r:                                             ; preds = %_ZN4pbrt19ParameterDictionaryD2Ev.exit
  %i.bw = load i64, ptr %i.aj, align 8, !tbaa !110
  %i.bx = shl i64 %i.bw, 3
  %i.by = load ptr, ptr %4, align 8, !tbaa !111   ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !72
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  invoke void %i.cb(ptr noundef nonnull align 8 dereferenceable(8) %i.by, ptr noundef nonnull %i.bv, i64 noundef %i.bx, i64 noundef 8)
          to label %_ZN4pbrt19ParameterDictionaryD2Ev.exit13 unwind label %bb.s, !inline_history !3

bb.s:                                             ; preds = %bb.r
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  call void @__clang_call_terminate(ptr %i.cd) #31
  unreachable

_ZN4pbrt19ParameterDictionaryD2Ev.exit13:         ; preds = %_ZN4pbrt19ParameterDictionaryD2Ev.exit, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret void

bb.t:                                             ; preds = %.loopexit
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %bb.l
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt11SceneEntityD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %6) #32
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.cf, %bb.u ], [ %i.ce, %bb.t ]
  call void @_ZN4pbrt19ParameterDictionaryD2Ev(ptr noundef nonnull align 8 dead_on_return(108) dereferenceable(108) %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.i
  %.pn9 = phi { ptr, i32 } [ %i.ad, %bb.i ], [ %.pn, %bb.v ]
  call void @_ZN4pbrt19ParameterDictionaryD2Ev(ptr noundef nonnull align 8 dead_on_return(108) dereferenceable(108) %4) #32
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.h
  %.pn9.pn = phi { ptr, i32 } [ %.pn9, %bb.w ], [ %i.ac, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  resume { ptr, i32 } %.pn9.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt17BasicSceneBuilder15MediumInterfaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_NS_7FileLocE(ptr noundef nonnull align 64 dereferenceable(3544) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr nofree noundef readnone byval(%"struct.pbrt::FileLoc") align 8 captures(none) %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.c, ptr %5, align 8, !tbaa !85
  %i.d = load ptr, ptr %1, align 8, !tbaa !89     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !87   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store i64 %i.f, ptr %i.b, align 8, !tbaa !198
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %5, align 8, !tbaa !89
  %i.i = load i64, ptr %i.b, align 8, !tbaa !198
  store i64 %i.i, ptr %i.c, align 8, !tbaa !88
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !88
  store i8 %i.k, ptr %i.j, align 1, !tbaa !88
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.b, align 8, !tbaa !198  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !87
  %i.n = load ptr, ptr %5, align 8, !tbaa !89
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  invoke void @_ZN4pbrt13NormalizeUTF8ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nofree noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.p = load ptr, ptr %5, align 8, !tbaa !89     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.c
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.r = load i64, ptr %i.c, align 8, !tbaa !88
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.t, ptr %7, align 8, !tbaa !85
end_hunk_8
begin_hunk_9_@_ZN4pbrt17BasicSceneBuilder15MediumInterfaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_NS_7FileLocE:bb.a
bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %5, align 8, !tbaa !89    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.c
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.i
  %i.az = load i64, ptr %i.c, align 8, !tbaa !88
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.sink.split

bb.j:                                             ; preds = %.noexc.i9
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

bb.k:                                             ; preds = %bb.g
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = load ptr, ptr %7, align 8, !tbaa !89    ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.t
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.k
  %i.be = load i64, ptr %i.t, align 8, !tbaa !88
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = load ptr, ptr %6, align 8, !tbaa !89    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.l
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !88
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.l, %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26, %bb.j
  %.pn = phi { ptr, i32 } [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ], [ %i.ba, %bb.j ], [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29 ], [ %i.bb, %bb.k ], [ %i.bg, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  %i.bm = load ptr, ptr %4, align 8, !tbaa !89    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !88
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.sink.split: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  %.sink50 = phi i64 [ %i.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32 ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23 ]
  %.sink = phi ptr [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32 ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23 ]
  %.pn.pn.ph = phi { ptr, i32 } [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32 ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23 ]
  %i.bq = add i64 %.sink50, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bq) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.aw, %bb.i ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %.pn.pn.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt17BasicSceneBuilder7TextureERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_NS_13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorISB_EEEENS_7FileLocE(ptr noundef nonnull align 64 dereferenceable(3544) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nofree noundef align 8 captures(none) dereferenceable(96) %4, ptr noundef byval(%"struct.pbrt::FileLoc") align 8 %5) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.pbrt::ParameterDictionary", align 8 ; 21 uses
  %9 = alloca %"class.pbrt::InlinedVector", align 8 ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"struct.pbrt::TransformedSceneEntity", align 8 ; 7 uses
  %12 = alloca %"class.pbrt::ParameterDictionary", align 8 ; 9 uses
  %13 = alloca %"struct.pbrt::FileLoc", align 8   ; 2 uses
  %14 = alloca %"class.pbrt::AnimatedTransform", align 4 ; 5 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"struct.pbrt::TransformedSceneEntity", align 8 ; 7 uses
  %17 = alloca %"class.pbrt::ParameterDictionary", align 8 ; 9 uses
  %18 = alloca %"struct.pbrt::FileLoc", align 8   ; 2 uses
  %19 = alloca %"class.pbrt::AnimatedTransform", align 4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.d, ptr %7, align 8, !tbaa !85
  %i.e = load ptr, ptr %1, align 8, !tbaa !89     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !87   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  store i64 %i.g, ptr %i.c, align 8, !tbaa !198
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %7, align 8, !tbaa !89
  %i.j = load i64, ptr %i.c, align 8, !tbaa !198
  store i64 %i.j, ptr %i.d, align 8, !tbaa !88
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc.i ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !88
  store i8 %i.l, ptr %i.k, align 1, !tbaa !88
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.m = load i64, ptr %i.c, align 8, !tbaa !198  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !87
  %i.o = load ptr, ptr %7, align 8, !tbaa !89
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  invoke void @_ZN4pbrt13NormalizeUTF8ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nofree noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.q = load ptr, ptr %7, align 8, !tbaa !89     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.d
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.s = load i64, ptr %i.d, align 8, !tbaa !88
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load i32, ptr %i.u, align 8, !tbaa !166
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.e, label %bb.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZN4pbrt9ErrorExitIJRA8_KcEEEvPKNS_7FileLocEPS1_DpOT_(ptr noundef nonnull %5, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(8) @.str.83) #34
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load ptr, ptr %7, align 8, !tbaa !89     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.d
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %bb.g
  %i.aa = load i64, ptr %i.d, align 8, !tbaa !88
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.sink.split

bb.h:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  %i.ac = load i64, ptr %4, align 8, !tbaa !102
  store i64 %i.ac, ptr %9, align 8, !tbaa !102
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 88
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !109 ; 3 uses
  %i.aj = load <2 x i64>, ptr %i.ah, align 8, !tbaa !198
  store <2 x i64> %i.aj, ptr %i.ae, align 8, !tbaa !198
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !103
  store ptr %i.al, ptr %i.ad, align 8, !tbaa !103
  %i.am = icmp ult i64 %i.ai, 9
  br i1 %i.am, label %.preheader.i, label %bb.j

.preheader.i:                                     ; preds = %bb.i
  %.not.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i, label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ap = shl nuw nsw i64 %i.ai, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.an, ptr nonnull align 8 %i.ao, i64 %i.ap, i1 false), !tbaa !189
  br label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit

bb.j:                                             ; preds = %bb.i
  store i64 0, ptr %i.ag, align 8, !tbaa !109
  br label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit

_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit: ; preds = %.lr.ph.i, %.preheader.i, %bb.j
  store i64 0, ptr %i.ah, align 8, !tbaa !110
  store ptr null, ptr %i.ak, align 8, !tbaa !103
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !213
  invoke void @_ZN4pbrt19ParameterDictionaryC1ENS_13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS3_EEEERKS8_PKNS_13RGBColorSpaceE(ptr noundef nonnull align 8 dereferenceable(108) %8, ptr nofree noundef nonnull align 8 dereferenceable(96) %9, ptr noundef nonnull align 8 dereferenceable(96) %i.aq, ptr noundef %i.as)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit
  store i64 0, ptr %i.af, align 8, !tbaa !109
  %i.at = load ptr, ptr %i.ad, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i, label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = load i64, ptr %i.ae, align 8, !tbaa !110
  %i.av = shl i64 %i.au, 3
  %i.aw = load ptr, ptr %9, align 8, !tbaa !111   ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !72
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8
  invoke void %i.az(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull %i.at, i64 noundef %i.av, i64 noundef 8)
          to label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit unwind label %bb.m, !inline_history !3

bb.m:                                             ; preds = %bb.l
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  call void @__clang_call_terminate(ptr %i.bb) #31
  unreachable

_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit: ; preds = %bb.k, %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !87 ; 2 uses
  switch i64 %i.bd, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit39.thread [
    i64 5, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 8, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit39
  ]

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit
  %i.be = load ptr, ptr %2, align 8, !tbaa !89    ; 2 uses
  %i.bf = load i32, ptr %i.be, align 1
  %i.bg = xor i32 %i.bf, 1634692198
  %i.bh = getelementptr i8, ptr %i.be, i64 4
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = zext i8 %i.bi to i32
  %i.bk = xor i32 %i.bj, 116
  %i.bl = or i32 %i.bg, %i.bk
  %i.bm = icmp ne i32 %i.bl, 0
  %i.bn = zext i1 %i.bm to i32
  %.not = icmp eq i32 %i.bn, 0
  br i1 %.not, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread86, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit39.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit39: ; preds = %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit
  %.pre = load ptr, ptr %2, align 8, !tbaa !89
  %bcmp.i.i38 = call i32 @bcmp(ptr %.pre, ptr nonnull @.str.85, i64 %i.bd)
  %.not92 = icmp eq i32 %bcmp.i.i38, 0
  br i1 %.not92, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread86, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit39.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit39.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit39
  invoke void @_ZNK4pbrt12ParserTarget17ErrorExitDeferredIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKNS_7FileLocEPKcDpOT_(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull %5, ptr noundef nonnull @.str.86, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49 unwind label %bb.r

bb.n:                                             ; preds = %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %9) #32
  br label %bb.aw

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread86: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit39
  %i.bp = phi i64 [ 1720, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit39 ], [ 1672, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ]
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 %i.bp ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !168 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not10.i.i.i, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread86
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !87 ; 4 uses
  %i.bw = load ptr, ptr %6, align 8               ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !87 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bv, i64 %i.by) ; 2 uses
  %i.bz = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.bz, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.o
  %i.ca = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !89
  %i.cc = call i32 @memcmp(ptr noundef %i.cb, ptr noundef %i.bw, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.cc, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.o
  %i.cd = sub i64 %i.by, %i.bv
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.cd, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.cc, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.ce = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.ce, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.ce, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !216 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i, label %bb.o, !llvm.loop !13

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.cf = icmp eq ptr %.19.i.i.i, %i.bt
  br i1 %i.cf, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %bb.p

bb.p:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !87 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ch, i64 %i.bv) ; 2 uses
  %i.ci = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.ci, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.p
  %i.cj = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !89
  %i.cl = call i32 @memcmp(ptr noundef %i.bw, ptr noundef %i.ck, i64 noundef %.sroa.speculated.i.i.i.i.i) #32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.cl, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.p
  %i.cm = sub i64 %i.bv, %i.ch
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.cm, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.cl, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.cn = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.cn, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %bb.q

bb.q:                                             ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit
  invoke void @_ZNK4pbrt12ParserTarget17ErrorExitDeferredIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKNS_7FileLocEPKcDpOT_(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull %5, ptr noundef nonnull @.str.87, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49 unwind label %bb.r

bb.r:                                             ; preds = %.noexc.i54, %.noexc.i43, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit39.thread, %bb.q
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread86, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit
  %i.cp = invoke { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE16_M_insert_uniqueIRKS5_EESt4pairISt17_Rb_tree_iteratorIS5_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.bq, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit unwind label %bb.r ; 0 uses

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit: ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread
  %i.cq = load i64, ptr %i.bc, align 8, !tbaa !87
  %i.cr = icmp eq i64 %i.cq, 5
  br i1 %i.cr, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit41, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit41.thread89

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit41: ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit
  %i.cs = load ptr, ptr %2, align 8, !tbaa !89    ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 1
  %i.cu = xor i32 %i.ct, 1634692198
  %i.cv = getelementptr i8, ptr %i.cs, i64 4
  %i.cw = load i8, ptr %i.cv, align 1
  %i.cx = zext i8 %i.cw to i32
  %i.cy = xor i32 %i.cx, 116
  %i.cz = or i32 %i.cu, %i.cy
  %i.da = icmp ne i32 %i.cz, 0
  %i.db = zext i1 %i.da to i32
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit41.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit41.thread89

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit41.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit41
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.de = load ptr, ptr %i.dd, align 16, !tbaa !165
  %i.df = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.df, ptr %10, align 8, !tbaa !85
  %i.dg = load ptr, ptr %6, align 8, !tbaa !89    ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !87 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store i64 %i.di, ptr %i.b, align 8, !tbaa !198
  %i.dj = icmp ugt i64 %i.di, 15
  br i1 %i.dj, label %.noexc.i43, label %._crit_edge.i.i42

.noexc.i43:                                       ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit41.thread
  %i.dk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.r     ; 2 uses

.noexc:                                           ; preds = %.noexc.i43
  store ptr %i.dk, ptr %10, align 8, !tbaa !89
  %i.dl = load i64, ptr %i.b, align 8, !tbaa !198
  store i64 %i.dl, ptr %i.df, align 8, !tbaa !88
  br label %._crit_edge.i.i42

._crit_edge.i.i42:                                ; preds = %.noexc, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit41.thread
  %i.dm = phi ptr [ %i.dk, %.noexc ], [ %i.df, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit41.thread ] ; 2 uses
  switch i64 %i.di, label %bb.t [
    i64 1, label %bb.s
    i64 0, label %bb.u
  ]

bb.s:                                             ; preds = %._crit_edge.i.i42
  %i.dn = load i8, ptr %i.dg, align 1, !tbaa !88
  store i8 %i.dn, ptr %i.dm, align 1, !tbaa !88
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge.i.i42
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dm, ptr align 1 %i.dg, i64 %i.di, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %._crit_edge.i.i42
  %i.do = load i64, ptr %i.b, align 8, !tbaa !198 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.do, ptr %i.dp, align 8, !tbaa !87
  %i.dq = load ptr, ptr %10, align 8, !tbaa !89
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.do
  store i8 0, ptr %i.dr, align 1, !tbaa !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  %i.ds = load i64, ptr %8, align 8, !tbaa !102
  store i64 %i.ds, ptr %12, align 8, !tbaa !102
  %i.dt = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %12, i64 80 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %12, i64 88
  %i.dw = getelementptr inbounds nuw i8, ptr %8, i64 88 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 2 uses
  %i.dy = load i64, ptr %i.dw, align 8, !tbaa !109 ; 3 uses
  %i.dz = load <2 x i64>, ptr %i.dx, align 8, !tbaa !198
  store <2 x i64> %i.dz, ptr %i.du, align 8, !tbaa !198
  %i.ea = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !103
  store ptr %i.eb, ptr %i.dt, align 8, !tbaa !103
  %i.ec = icmp ult i64 %i.dy, 9
  br i1 %i.ec, label %.preheader.i.i, label %bb.v

.preheader.i.i:                                   ; preds = %bb.u
  %.not.i.i = icmp eq i64 %i.dy, 0
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ee = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ef = shl nuw nsw i64 %i.dy, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ed, ptr nonnull align 8 %i.ee, i64 %i.ef, i1 false), !tbaa !189
  br label %.loopexit

bb.v:                                             ; preds = %bb.u
  store i64 0, ptr %i.dw, align 8, !tbaa !109
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.v, %.preheader.i.i
  store i64 0, ptr %i.dx, align 8, !tbaa !110
  store ptr null, ptr %i.ea, align 8, !tbaa !103
  %i.eg = getelementptr inbounds nuw i8, ptr %12, i64 96
  %i.eh = getelementptr inbounds nuw i8, ptr %8, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.eg, ptr noundef nonnull align 8 dereferenceable(12) %i.eh, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !203
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  invoke void @_ZNK4pbrt17BasicSceneBuilder16RenderFromObjectEv(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::AnimatedTransform") align 4 %14, ptr noundef nonnull align 64 dereferenceable(3544) %0)
          to label %bb.w unwind label %bb.ad

bb.w:                                             ; preds = %.loopexit
  invoke void @_ZN4pbrt22TransformedSceneEntityC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_19ParameterDictionaryENS_7FileLocERKNS_17AnimatedTransformE(ptr noundef nonnull align 8 dereferenceable(840) %11, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nofree noundef nonnull align 8 dereferenceable(112) %12, ptr noundef nonnull byval(%"struct.pbrt::FileLoc") align 8 %13, ptr noundef nonnull align 4 dereferenceable(696) %14)
          to label %bb.x unwind label %bb.ad

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN4pbrt10BasicScene15AddFloatTextureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_22TransformedSceneEntityE(ptr noundef nonnull align 8 dereferenceable(1520) %i.de, ptr nofree noundef nonnull align 8 dereferenceable(32) %10, ptr nofree noundef nonnull align 8 dereferenceable(840) %11)
          to label %bb.y unwind label %bb.ae

bb.y:                                             ; preds = %bb.x
  %i.ei = getelementptr inbounds nuw i8, ptr %11, i64 120
  store i64 0, ptr %i.ei, align 8, !tbaa !109
  %i.ej = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i.i.i45 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i.i.i.i.i45, label %_ZN4pbrt11SceneEntityD2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.el = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.em = getelementptr inbounds nuw i8, ptr %11, i64 112
  %i.en = load i64, ptr %i.em, align 8, !tbaa !110
  %i.eo = shl i64 %i.en, 3
  %i.ep = load ptr, ptr %i.el, align 8, !tbaa !111 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !72
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.es = load ptr, ptr %i.er, align 8
  invoke void %i.es(ptr noundef nonnull align 8 dereferenceable(8) %i.ep, ptr noundef nonnull %i.ek, i64 noundef %i.eo, i64 noundef 8)
          to label %_ZN4pbrt11SceneEntityD2Ev.exit unwind label %bb.aa, !inline_history !3

bb.aa:                                            ; preds = %bb.z
  %i.et = landingpad { ptr, i32 }
          catch ptr null
  %i.eu = extractvalue { ptr, i32 } %i.et, 0
  call void @__clang_call_terminate(ptr %i.eu) #31
  unreachable

_ZN4pbrt11SceneEntityD2Ev.exit:                   ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  store i64 0, ptr %i.dv, align 8, !tbaa !109
  %i.ev = load ptr, ptr %i.dt, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i.i46 = icmp eq ptr %i.ev, null
  br i1 %.not.i.i.i.i.i46, label %_ZN4pbrt19ParameterDictionaryD2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN4pbrt11SceneEntityD2Ev.exit
  %i.ew = load i64, ptr %i.du, align 8, !tbaa !110
  %i.ex = shl i64 %i.ew, 3
  %i.ey = load ptr, ptr %12, align 8, !tbaa !111  ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !72
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  %i.fb = load ptr, ptr %i.fa, align 8
  invoke void %i.fb(ptr noundef nonnull align 8 dereferenceable(8) %i.ey, ptr noundef nonnull %i.ev, i64 noundef %i.ex, i64 noundef 8)
          to label %_ZN4pbrt19ParameterDictionaryD2Ev.exit unwind label %bb.ac, !inline_history !3

bb.ac:                                            ; preds = %bb.ab
  %i.fc = landingpad { ptr, i32 }
          catch ptr null
  %i.fd = extractvalue { ptr, i32 } %i.fc, 0
  call void @__clang_call_terminate(ptr %i.fd) #31
  unreachable

_ZN4pbrt19ParameterDictionaryD2Ev.exit:           ; preds = %_ZN4pbrt11SceneEntityD2Ev.exit, %bb.ab
  %i.fe = load ptr, ptr %10, align 8, !tbaa !89   ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.df
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %_ZN4pbrt19ParameterDictionaryD2Ev.exit
  %i.fg = load i64, ptr %i.df, align 8, !tbaa !88
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.sink.split

bb.ad:                                            ; preds = %bb.w, %.loopexit
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %bb.x
  %i.fi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt11SceneEntityD2Ev(ptr noundef nonnull align 8 dead_on_return(840) dereferenceable(840) %11) #32
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn24 = phi { ptr, i32 } [ %i.fi, %bb.ae ], [ %i.fh, %bb.ad ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  call void @_ZN4pbrt19ParameterDictionaryD2Ev(ptr noundef nonnull align 8 dead_on_return(108) dereferenceable(108) %12) #32
  %i.fj = load ptr, ptr %10, align 8, !tbaa !89   ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.df
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.af
  %i.fl = load i64, ptr %i.df, align 8, !tbaa !88
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fm) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit41.thread89: ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit41
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fo = load ptr, ptr %i.fn, align 16, !tbaa !165
  %i.fp = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  store ptr %i.fp, ptr %15, align 8, !tbaa !85
  %i.fq = load ptr, ptr %6, align 8, !tbaa !89    ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !87 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 %i.fs, ptr %i.a, align 8, !tbaa !198
  %i.ft = icmp ugt i64 %i.fs, 15
  br i1 %i.ft, label %.noexc.i54, label %._crit_edge.i.i53

.noexc.i54:                                       ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit41.thread89
  %i.fu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc55 unwind label %bb.r   ; 2 uses

.noexc55:                                         ; preds = %.noexc.i54
  store ptr %i.fu, ptr %15, align 8, !tbaa !89
  %i.fv = load i64, ptr %i.a, align 8, !tbaa !198
  store i64 %i.fv, ptr %i.fp, align 8, !tbaa !88
  br label %._crit_edge.i.i53

._crit_edge.i.i53:                                ; preds = %.noexc55, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit41.thread89
  %i.fw = phi ptr [ %i.fu, %.noexc55 ], [ %i.fp, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit41.thread89 ] ; 2 uses
  switch i64 %i.fs, label %bb.ah [
    i64 1, label %bb.ag
    i64 0, label %bb.ai
  ]

bb.ag:                                            ; preds = %._crit_edge.i.i53
  %i.fx = load i8, ptr %i.fq, align 1, !tbaa !88
  store i8 %i.fx, ptr %i.fw, align 1, !tbaa !88
  br label %bb.ai

bb.ah:                                            ; preds = %._crit_edge.i.i53
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fw, ptr align 1 %i.fq, i64 %i.fs, i1 false)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %._crit_edge.i.i53
  %i.fy = load i64, ptr %i.a, align 8, !tbaa !198 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.fy, ptr %i.fz, align 8, !tbaa !87
  %i.ga = load ptr, ptr %15, align 8, !tbaa !89
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.fy
  store i8 0, ptr %i.gb, align 1, !tbaa !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.gc = load i64, ptr %8, align 8, !tbaa !102
  store i64 %i.gc, ptr %17, align 8, !tbaa !102
  %i.gd = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %17, i64 80 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %17, i64 88
  %i.gg = getelementptr inbounds nuw i8, ptr %8, i64 88 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 2 uses
  %i.gi = load i64, ptr %i.gg, align 8, !tbaa !109 ; 3 uses
  %i.gj = load <2 x i64>, ptr %i.gh, align 8, !tbaa !198
  store <2 x i64> %i.gj, ptr %i.ge, align 8, !tbaa !198
  %i.gk = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !103
  store ptr %i.gl, ptr %i.gd, align 8, !tbaa !103
  %i.gm = icmp ult i64 %i.gi, 9
  br i1 %i.gm, label %.preheader.i.i57, label %bb.aj

.preheader.i.i57:                                 ; preds = %bb.ai
  %.not.i.i58 = icmp eq i64 %i.gi, 0
  br i1 %.not.i.i58, label %.loopexit94, label %.lr.ph.i.i59

.lr.ph.i.i59:                                     ; preds = %.preheader.i.i57
  %i.gn = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.go = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.gp = shl nuw nsw i64 %i.gi, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gn, ptr nonnull align 8 %i.go, i64 %i.gp, i1 false), !tbaa !189
  br label %.loopexit94

bb.aj:                                            ; preds = %bb.ai
  store i64 0, ptr %i.gg, align 8, !tbaa !109
  br label %.loopexit94

.loopexit94:                                      ; preds = %.lr.ph.i.i59, %bb.aj, %.preheader.i.i57
  store i64 0, ptr %i.gh, align 8, !tbaa !110
  store ptr null, ptr %i.gk, align 8, !tbaa !103
  %i.gq = getelementptr inbounds nuw i8, ptr %17, i64 96
  %i.gr = getelementptr inbounds nuw i8, ptr %8, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.gq, ptr noundef nonnull align 8 dereferenceable(12) %i.gr, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !203
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #32
  invoke void @_ZNK4pbrt17BasicSceneBuilder16RenderFromObjectEv(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::AnimatedTransform") align 4 %19, ptr noundef nonnull align 64 dereferenceable(3544) %0)
          to label %bb.ak unwind label %bb.ar

bb.ak:                                            ; preds = %.loopexit94
  invoke void @_ZN4pbrt22TransformedSceneEntityC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_19ParameterDictionaryENS_7FileLocERKNS_17AnimatedTransformE(ptr noundef nonnull align 8 dereferenceable(840) %16, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nofree noundef nonnull align 8 dereferenceable(112) %17, ptr noundef nonnull byval(%"struct.pbrt::FileLoc") align 8 %18, ptr noundef nonnull align 4 dereferenceable(696) %19)
          to label %bb.al unwind label %bb.ar

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN4pbrt10BasicScene18AddSpectrumTextureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_22TransformedSceneEntityE(ptr noundef nonnull align 8 dereferenceable(1520) %i.fo, ptr nofree noundef nonnull align 8 dereferenceable(32) %15, ptr nofree noundef nonnull align 8 dereferenceable(840) %16)
          to label %bb.am unwind label %bb.as

bb.am:                                            ; preds = %bb.al
  %i.gs = getelementptr inbounds nuw i8, ptr %16, i64 120
  store i64 0, ptr %i.gs, align 8, !tbaa !109
  %i.gt = getelementptr inbounds nuw i8, ptr %16, i64 40
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i.i.i64 = icmp eq ptr %i.gu, null
  br i1 %.not.i.i.i.i.i.i64, label %_ZN4pbrt11SceneEntityD2Ev.exit65, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gv = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.gw = getelementptr inbounds nuw i8, ptr %16, i64 112
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !110
  %i.gy = shl i64 %i.gx, 3
  %i.gz = load ptr, ptr %i.gv, align 8, !tbaa !111 ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !72
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  %i.hc = load ptr, ptr %i.hb, align 8
  invoke void %i.hc(ptr noundef nonnull align 8 dereferenceable(8) %i.gz, ptr noundef nonnull %i.gu, i64 noundef %i.gy, i64 noundef 8)
          to label %_ZN4pbrt11SceneEntityD2Ev.exit65 unwind label %bb.ao, !inline_history !3

bb.ao:                                            ; preds = %bb.an
  %i.hd = landingpad { ptr, i32 }
          catch ptr null
  %i.he = extractvalue { ptr, i32 } %i.hd, 0
  call void @__clang_call_terminate(ptr %i.he) #31
  unreachable

_ZN4pbrt11SceneEntityD2Ev.exit65:                 ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #32
  store i64 0, ptr %i.gf, align 8, !tbaa !109
  %i.hf = load ptr, ptr %i.gd, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i.i66 = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i.i.i66, label %_ZN4pbrt19ParameterDictionaryD2Ev.exit67, label %bb.ap

bb.ap:                                            ; preds = %_ZN4pbrt11SceneEntityD2Ev.exit65
  %i.hg = load i64, ptr %i.ge, align 8, !tbaa !110
  %i.hh = shl i64 %i.hg, 3
  %i.hi = load ptr, ptr %17, align 8, !tbaa !111  ; 2 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !72
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8
  invoke void %i.hl(ptr noundef nonnull align 8 dereferenceable(8) %i.hi, ptr noundef nonnull %i.hf, i64 noundef %i.hh, i64 noundef 8)
          to label %_ZN4pbrt19ParameterDictionaryD2Ev.exit67 unwind label %bb.aq, !inline_history !3

bb.aq:                                            ; preds = %bb.ap
  %i.hm = landingpad { ptr, i32 }
          catch ptr null
  %i.hn = extractvalue { ptr, i32 } %i.hm, 0
  call void @__clang_call_terminate(ptr %i.hn) #31
  unreachable

_ZN4pbrt19ParameterDictionaryD2Ev.exit67:         ; preds = %_ZN4pbrt11SceneEntityD2Ev.exit65, %bb.ap
  %i.ho = load ptr, ptr %15, align 8, !tbaa !89   ; 2 uses
  %i.hp = icmp eq ptr %i.ho, %i.fp
  br i1 %i.hp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %_ZN4pbrt19ParameterDictionaryD2Ev.exit67
  %i.hq = load i64, ptr %i.fp, align 8, !tbaa !88
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.sink.split

bb.ar:                                            ; preds = %bb.ak, %.loopexit94
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.as:                                            ; preds = %bb.al
  %i.hs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt11SceneEntityD2Ev(ptr noundef nonnull align 8 dead_on_return(840) dereferenceable(840) %16) #32
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.pn = phi { ptr, i32 } [ %i.hs, %bb.as ], [ %i.hr, %bb.ar ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #32
  call void @_ZN4pbrt19ParameterDictionaryD2Ev(ptr noundef nonnull align 8 dead_on_return(108) dereferenceable(108) %17) #32
  %i.ht = load ptr, ptr %15, align 8, !tbaa !89   ; 2 uses
  %i.hu = icmp eq ptr %i.ht, %i.fp
  br i1 %i.hu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %bb.at
  %i.hv = load i64, ptr %i.fp, align 8, !tbaa !88
  %i.hw = add i64 %i.hv, 1
  call void @_ZdlPvm(ptr noundef %i.ht, i64 noundef %i.hw) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.sink.split: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  %.sink122 = phi i64 [ %i.hq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68 ], [ %i.fg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47 ]
  %.sink = phi ptr [ %i.ho, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68 ], [ %i.fe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47 ]
  %i.hx = add i64 %.sink122, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.hx) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.sink.split, %_ZN4pbrt19ParameterDictionaryD2Ev.exit67, %_ZN4pbrt19ParameterDictionaryD2Ev.exit, %bb.q, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit39.thread
  %i.hy = getelementptr inbounds nuw i8, ptr %8, i64 88
  store i64 0, ptr %i.hy, align 8, !tbaa !109
  %i.hz = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i.i74 = icmp eq ptr %i.ia, null
  br i1 %.not.i.i.i.i.i74, label %_ZN4pbrt19ParameterDictionaryD2Ev.exit75, label %bb.au

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  %i.ib = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !110
  %i.id = shl i64 %i.ic, 3
  %i.ie = load ptr, ptr %8, align 8, !tbaa !111   ; 2 uses
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !72
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 24
  %i.ih = load ptr, ptr %i.ig, align 8
  invoke void %i.ih(ptr noundef nonnull align 8 dereferenceable(8) %i.ie, ptr noundef nonnull %i.ia, i64 noundef %i.id, i64 noundef 8)
          to label %_ZN4pbrt19ParameterDictionaryD2Ev.exit75 unwind label %bb.av, !inline_history !3

bb.av:                                            ; preds = %bb.au
  %i.ii = landingpad { ptr, i32 }
          catch ptr null
  %i.ij = extractvalue { ptr, i32 } %i.ii, 0
  call void @__clang_call_terminate(ptr %i.ij) #31
  unreachable

_ZN4pbrt19ParameterDictionaryD2Ev.exit75:         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  %i.ik = load ptr, ptr %6, align 8, !tbaa !89    ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.im = icmp eq ptr %i.ik, %i.il
  br i1 %i.im, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %_ZN4pbrt19ParameterDictionaryD2Ev.exit75
  %i.in = load i64, ptr %i.il, align 8, !tbaa !88
  %i.io = add i64 %i.in, 1
  call void @_ZdlPvm(ptr noundef %i.ik, i64 noundef %i.io) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %_ZN4pbrt19ParameterDictionaryD2Ev.exit75, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.at, %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50, %bb.r
  %.pn29 = phi { ptr, i32 } [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71 ], [ %i.co, %bb.r ], [ %.pn24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ], [ %.pn24, %bb.af ], [ %.pn, %bb.at ]
  call void @_ZN4pbrt19ParameterDictionaryD2Ev(ptr noundef nonnull align 8 dead_on_return(108) dereferenceable(108) %8) #32
  br label %bb.aw

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, %bb.n
  %.pn29.pn = phi { ptr, i32 } [ %.pn29, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ], [ %i.bo, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.h
  %.pn32 = phi { ptr, i32 } [ %i.ab, %bb.h ], [ %.pn29.pn, %bb.aw ] ; 2 uses
  %i.ip = load ptr, ptr %6, align 8, !tbaa !89    ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ir = icmp eq ptr %i.ip, %i.iq
  br i1 %i.ir, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %bb.ax
  %i.is = load i64, ptr %i.iq, align 8, !tbaa !88
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.sink.split: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79
  %.sink125 = phi i64 [ %i.is, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79 ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35 ]
  %.sink123 = phi ptr [ %i.ip, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79 ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35 ]
  %.pn32.pn.ph = phi { ptr, i32 } [ %.pn32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79 ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35 ]
  %i.it = add i64 %.sink125, 1
  call void @_ZdlPvm(ptr noundef %.sink123, i64 noundef %i.it) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.sink.split, %bb.ax, %bb.g
  %.pn32.pn = phi { ptr, i32 } [ %i.x, %bb.g ], [ %.pn32, %bb.ax ], [ %.pn32.pn.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  resume { ptr, i32 } %.pn32.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt10BasicScene15AddFloatTextureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_22TransformedSceneEntityE(ptr noundef nonnull align 8 dereferenceable(1520) %0, ptr nofree noundef align 8 dereferenceable(32) %1, ptr nofree noundef align 8 dereferenceable(840) %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::_Bind.375", align 8    ; 14 uses
  %.sroa.4 = alloca [24 x i8], align 8            ; 4 uses
  %4 = alloca %"class.std::unique_lock", align 8  ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"struct.std::pair.171", align 8    ; 30 uses
  %i.b = ptrtoaddr ptr %6 to i64
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"struct.std::pair.171", align 8   ; 30 uses
  %i.c = ptrtoaddr ptr %12 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 408
  %i.f = load i8, ptr %i.e, align 8, !tbaa !186, !range !211, !noundef !212
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @_ZN4pbrt7WarningEPKNS_7FileLocEPKc(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.103)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 3 uses
  %i.j = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.i) #32 ; 2 uses
  %.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.j) #34
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.c
  %i.k = load ptr, ptr %2, align 8, !tbaa !200    ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !87
  switch i64 %i.m, label %_ZNK4pbrt14InternedStringneEPKc.exit24.thread [
    i64 8, label %_ZNK4pbrt14InternedStringneEPKc.exit
    i64 4, label %_ZNK4pbrt14InternedStringneEPKc.exit24
  ]

_ZNK4pbrt14InternedStringneEPKc.exit:             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !89
  %i.o = load i64, ptr %i.n, align 1
  %i.p = icmp ne i64 %i.o, 8097873887282425193
  %i.q = zext i1 %i.p to i32
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %_ZNK4pbrt14InternedStringneEPKc.exit.thread102, label %_ZNK4pbrt14InternedStringneEPKc.exit24.thread

_ZNK4pbrt14InternedStringneEPKc.exit24:           ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !89
  %i.s = load i32, ptr %i.r, align 1
  %i.t = icmp ne i32 %i.s, 2019914864
  %i.u = zext i1 %i.t to i32
  %.not105 = icmp eq i32 %i.u, 0
  br i1 %.not105, label %_ZNK4pbrt14InternedStringneEPKc.exit.thread102, label %_ZNK4pbrt14InternedStringneEPKc.exit24.thread

_ZNK4pbrt14InternedStringneEPKc.exit24.thread:    ; preds = %_ZNK4pbrt14InternedStringneEPKc.exit, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %_ZNK4pbrt14InternedStringneEPKc.exit24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !944)
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 10 uses
  store ptr %i.v, ptr %6, align 8, !tbaa !85, !alias.scope !944
  %i.w = load ptr, ptr %1, align 8, !tbaa !89, !noalias !944 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.e:                                             ; preds = %_ZNK4pbrt14InternedStringneEPKc.exit24.thread
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !87, !noalias !944 ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 16
  call void @llvm.assume(i1 %i.ab)
  %i.ac = add nuw nsw i64 %i.aa, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.v, ptr noundef nonnull align 8 dereferenceable(1) %i.x, i64 %i.ac, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNK4pbrt14InternedStringneEPKc.exit24.thread
  store ptr %i.w, ptr %6, align 8, !tbaa !89, !alias.scope !944
  %i.ad = load i64, ptr %i.x, align 8, !tbaa !88, !noalias !944
  store i64 %i.ad, ptr %i.v, align 8, !tbaa !88, !alias.scope !944
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !87, !noalias !944
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.e
  %i.ae = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.aa, %bb.e ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.ae, ptr %i.ag, align 8, !tbaa !87, !alias.scope !944
  store ptr %i.x, ptr %1, align 8, !tbaa !89, !noalias !944
  store i64 0, ptr %i.af, align 8, !tbaa !87, !noalias !944
  store i8 0, ptr %i.x, align 8, !tbaa !88, !noalias !944
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(840) %i.ah, ptr noundef nonnull align 8 dereferenceable(840) %2, i64 32, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !102, !noalias !944
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !102, !alias.scope !944
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 144 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 152 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !109, !noalias !944 ; 3 uses
  %i.ar = load <2 x i64>, ptr %i.ap, align 8, !tbaa !198, !noalias !944
  store <2 x i64> %i.ar, ptr %i.am, align 8, !tbaa !198, !alias.scope !944
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !103, !noalias !944
  store ptr %i.at, ptr %i.al, align 8, !tbaa !103, !alias.scope !944
  %i.au = icmp ult i64 %i.aq, 9
  br i1 %i.au, label %.preheader.i.i.i.i.i.i, label %bb.f

.preheader.i.i.i.i.i.i:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %.not.i.i.i.i.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ax = shl nuw nsw i64 %i.aq, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.av, ptr nonnull align 8 %i.aw, i64 %i.ax, i1 false), !tbaa !189
  br label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  store i64 0, ptr %i.ao, align 8, !tbaa !109, !noalias !944
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i
  store i64 0, ptr %i.ap, align 8, !tbaa !110, !noalias !944
  store ptr null, ptr %i.as, align 8, !tbaa !103, !noalias !944
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 160 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ay, ptr noundef nonnull align 8 dereferenceable(12) %i.az, i64 12, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 176 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(696) %i.ba, ptr noundef nonnull align 8 dereferenceable(696) %i.d, i64 696, i1 false), !tbaa.struct !336
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !400 ; 22 uses
  %i.bd = ptrtoaddr ptr %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !401
  %.not.i.i25 = icmp eq ptr %i.bc, %i.bf
  br i1 %.not.i.i25, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 3 uses
  store ptr %i.bg, ptr %i.bc, align 8, !tbaa !85
  %i.bh = load ptr, ptr %6, align 8, !tbaa !89    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.v
  br i1 %i.bi, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.bj = icmp ult i64 %i.ae, 16
  call void @llvm.assume(i1 %i.bj)
  %i.bk = add nuw nsw i64 %i.ae, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bg, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.bk, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  store ptr %i.bh, ptr %i.bc, align 8, !tbaa !89
  %i.bl = load i64, ptr %i.v, align 8, !tbaa !88
  store i64 %i.bl, ptr %i.bg, align 8, !tbaa !88
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i64 %i.ae, ptr %i.bm, align 8, !tbaa !87
  store ptr %i.v, ptr %6, align 8, !tbaa !89
  store i64 0, ptr %i.ag, align 8, !tbaa !87
  store i8 0, ptr %i.v, align 8, !tbaa !88
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(840) %i.bn, ptr noundef nonnull align 8 dereferenceable(840) %i.ah, i64 32, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  %i.bp = load i64, ptr %i.ai, align 8, !tbaa !102
  store i64 %i.bp, ptr %i.bo, align 8, !tbaa !102
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bc, i64 72 ; 2 uses
  store ptr null, ptr %i.bq, align 8, !tbaa !103
  %i.br = getelementptr inbounds nuw i8, ptr %i.bc, i64 144 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, i8 0, i64 16, i1 false)
  %i.bs = load i64, ptr %i.an, align 8, !tbaa !109 ; 10 uses
  %i.bt = load <2 x i64>, ptr %i.am, align 8, !tbaa !198
  store <2 x i64> %i.bt, ptr %i.br, align 8, !tbaa !198
  %i.bu = load ptr, ptr %i.al, align 8, !tbaa !103
  store ptr %i.bu, ptr %i.bq, align 8, !tbaa !103
  %i.bv = add i64 %i.bs, -9
  %or.cond = icmp ult i64 %i.bv, -8
  br i1 %or.cond, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit.thread, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bc, i64 80 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  %i.by = sub i64 %i.b, %i.bd
  %diff.check173 = icmp ugt i64 %i.by, -32
  br i1 %diff.check173, label %scalar.ph171, label %vector.ph174

vector.ph174:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i
  %trip.count.minus.1177 = add nsw i64 %i.bs, -1
  %broadcast.splatinsert178 = insertelement <4 x i64> poison, i64 %trip.count.minus.1177, i64 0
  %broadcast.splat179 = shufflevector <4 x i64> %broadcast.splatinsert178, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %n.rnd.up175 = add nuw nsw i64 %i.bs, 3
  %n.vec176 = and i64 %n.rnd.up175, 28
  %i.bz = icmp uge <4 x i64> %broadcast.splat179, <i64 0, i64 1, i64 2, i64 3>
  %unmaskedload190 = load <4 x ptr>, ptr %i.bx, align 8, !tbaa !189
  call void @llvm.masked.store.v4p0.p0(<4 x ptr> %unmaskedload190, ptr align 8 %i.bw, <4 x i1> %i.bz), !tbaa !189
  %i.ca = icmp eq i64 %n.vec176, 4
  br i1 %i.ca, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit.thread, label %vector.body180.1

vector.body180.1:                                 ; preds = %vector.ph174
  %i.cb = icmp ugt <4 x i64> %broadcast.splat179, <i64 3, i64 4, i64 5, i64 6>
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bc, i64 112
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 112
  %unmaskedload191 = load <4 x ptr>, ptr %i.cd, align 8, !tbaa !189
  call void @llvm.masked.store.v4p0.p0(<4 x ptr> %unmaskedload191, ptr align 8 %i.cc, <4 x i1> %i.cb), !tbaa !189
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit.thread

scalar.ph171:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ce = load ptr, ptr %i.bx, align 8, !tbaa !189
  store ptr %i.ce, ptr %i.bw, align 8, !tbaa !189
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.bs, 1
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit.thread, label %scalar.ph171.1

scalar.ph171.1:                                   ; preds = %scalar.ph171
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bc, i64 88
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !189
  store ptr %i.ch, ptr %i.cf, align 8, !tbaa !189
  %exitcond.not.i.i.i.i.i.i.i.1 = icmp eq i64 %i.bs, 2
  br i1 %exitcond.not.i.i.i.i.i.i.i.1, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit.thread, label %scalar.ph171.2

scalar.ph171.2:                                   ; preds = %scalar.ph171.1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bc, i64 96
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !189
  store ptr %i.ck, ptr %i.ci, align 8, !tbaa !189
  %exitcond.not.i.i.i.i.i.i.i.2 = icmp eq i64 %i.bs, 3
  br i1 %exitcond.not.i.i.i.i.i.i.i.2, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit.thread, label %scalar.ph171.3

scalar.ph171.3:                                   ; preds = %scalar.ph171.2
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bc, i64 104
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !189
  store ptr %i.cn, ptr %i.cl, align 8, !tbaa !189
  %exitcond.not.i.i.i.i.i.i.i.3 = icmp eq i64 %i.bs, 4
  br i1 %exitcond.not.i.i.i.i.i.i.i.3, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit.thread, label %scalar.ph171.4

scalar.ph171.4:                                   ; preds = %scalar.ph171.3
  %i.co = getelementptr inbounds nuw i8, ptr %i.bc, i64 112
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !189
  store ptr %i.cq, ptr %i.co, align 8, !tbaa !189
  %exitcond.not.i.i.i.i.i.i.i.4 = icmp eq i64 %i.bs, 5
  br i1 %exitcond.not.i.i.i.i.i.i.i.4, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit.thread, label %scalar.ph171.5

scalar.ph171.5:                                   ; preds = %scalar.ph171.4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bc, i64 120
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 120
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !189
  store ptr %i.ct, ptr %i.cr, align 8, !tbaa !189
  %exitcond.not.i.i.i.i.i.i.i.5 = icmp eq i64 %i.bs, 6
  br i1 %exitcond.not.i.i.i.i.i.i.i.5, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit.thread, label %scalar.ph171.6

scalar.ph171.6:                                   ; preds = %scalar.ph171.5
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bc, i64 128
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !189
  store ptr %i.cw, ptr %i.cu, align 8, !tbaa !189
  %exitcond.not.i.i.i.i.i.i.i.6 = icmp eq i64 %i.bs, 7
  br i1 %exitcond.not.i.i.i.i.i.i.i.6, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit.thread, label %scalar.ph171.7

scalar.ph171.7:                                   ; preds = %scalar.ph171.6
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bc, i64 136
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 136
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !189
  store ptr %i.cz, ptr %i.cx, align 8, !tbaa !189
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit.thread

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit.thread: ; preds = %vector.ph174, %vector.body180.1, %scalar.ph171, %scalar.ph171.1, %scalar.ph171.2, %scalar.ph171.3, %scalar.ph171.4, %scalar.ph171.5, %scalar.ph171.6, %scalar.ph171.7, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  store i64 0, ptr %i.am, align 8, !tbaa !110
  store ptr null, ptr %i.al, align 8, !tbaa !103
  %i.da = getelementptr inbounds nuw i8, ptr %i.bc, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.da, ptr noundef nonnull align 8 dereferenceable(12) %i.ay, i64 12, i1 false)
  %i.db = getelementptr inbounds nuw i8, ptr %i.bc, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(696) %i.db, ptr noundef nonnull align 8 dereferenceable(696) %i.ba, i64 696, i1 false), !tbaa.struct !336
  %i.dc = load ptr, ptr %i.bb, align 8, !tbaa !400
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 872
  store ptr %i.dd, ptr %i.bb, align 8, !tbaa !400
  store i64 0, ptr %i.an, align 8, !tbaa !109
  br label %_ZN4pbrt11SceneEntityD2Ev.exit.i

bb.j:                                             ; preds = %bb.g
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 1136
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.de, ptr %i.bc, ptr noundef nonnull align 8 dereferenceable(872) %6)
          to label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit unwind label %bb.m

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit: ; preds = %bb.j
  %.pre107 = load ptr, ptr %i.al, align 8, !tbaa !103 ; 2 uses
  store i64 0, ptr %i.an, align 8, !tbaa !109
  %.not.i.i.i.i.i.i.i26 = icmp eq ptr %.pre107, null
  br i1 %.not.i.i.i.i.i.i.i26, label %_ZN4pbrt11SceneEntityD2Ev.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit
  %i.df = load i64, ptr %i.am, align 8, !tbaa !110
  %i.dg = shl i64 %i.df, 3
  %i.dh = load ptr, ptr %i.ai, align 8, !tbaa !111 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !72
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8
  invoke void %i.dk(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull %.pre107, i64 noundef %i.dg, i64 noundef 8)
          to label %_ZN4pbrt11SceneEntityD2Ev.exit.i unwind label %bb.l, !inline_history !3

bb.l:                                             ; preds = %bb.k
  %i.dl = landingpad { ptr, i32 }
          catch ptr null
  %i.dm = extractvalue { ptr, i32 } %i.dl, 0
  call void @__clang_call_terminate(ptr %i.dm) #31
  unreachable

_ZN4pbrt11SceneEntityD2Ev.exit.i:                 ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit.thread, %bb.k, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit
  %i.dn = load ptr, ptr %6, align 8, !tbaa !89    ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.v
  br i1 %i.do, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i27

end_hunk_9
begin_hunk_10_@_ZN4pbrt10BasicScene15AddFloatTextureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_22TransformedSceneEntityE:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i54: ; preds = %bb.z
  %i.gc = load i64, ptr %i.fx, align 8, !tbaa !88, !alias.scope !945
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.gd) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i: ; preds = %bb.y
  %i.ge = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gf = load ptr, ptr %5, align 8, !tbaa !89
  invoke void @_ZN4pbrt5ErrorEPKNS_7FileLocEPKc(ptr noundef nonnull %i.ge, ptr noundef %i.gf)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i
  %i.gg = load ptr, ptr %5, align 8, !tbaa !89    ; 2 uses
  %i.gh = icmp eq ptr %i.gg, %i.fx
  br i1 %i.gh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i55: ; preds = %bb.aa
  %i.gi = load i64, ptr %i.fx, align 8, !tbaa !88
  %i.gj = add i64 %i.gi, 1
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gj) #33
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i56

bb.ab:                                            ; preds = %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i
  %i.gk = landingpad { ptr, i32 }
          cleanup
  %i.gl = load ptr, ptr %5, align 8, !tbaa !89    ; 2 uses
  %i.gm = icmp eq ptr %i.gl, %i.fx
  br i1 %i.gm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %bb.ab
  %i.gn = load i64, ptr %i.fx, align 8, !tbaa !88
  %i.go = add i64 %i.gn, 1
  call void @_ZdlPvm(ptr noundef %i.gl, i64 noundef %i.go) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i56: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 1352 ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !402
  %i.gr = add nsw i32 %i.gq, 1
  store i32 %i.gr, ptr %i.gp, align 8, !tbaa !402
  br label %bb.bd

bb.ac:                                            ; preds = %bb.w
  %i.gs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gt = load ptr, ptr %11, align 8, !tbaa !89   ; 2 uses
  %i.gu = icmp eq ptr %i.gt, %i.fh
  br i1 %i.gu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.ac
  %i.gv = load i64, ptr %i.fh, align 8, !tbaa !88
  %i.gw = add i64 %i.gv, 1
  call void @_ZdlPvm(ptr noundef %i.gt, i64 noundef %i.gw) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !168 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 1216 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.gz, null
  br i1 %.not10.i.i.i, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ad
  %i.hb = load i64, ptr %i.el, align 8, !tbaa !87 ; 4 uses
  %i.hc = load ptr, ptr %7, align 8               ; 2 uses
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.gz, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.ha, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.hd = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !87 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.hb, i64 %i.he) ; 2 uses
  %i.hf = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.hf, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.ae
  %i.hg = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !89
  %i.hi = call i32 @memcmp(ptr noundef %i.hh, ptr noundef %i.hc, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #32 ; 2 uses
  %.not.i.i.i.i.i.i60 = icmp eq i32 %i.hi, 0
  br i1 %.not.i.i.i.i.i.i60, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.ae
  %i.hj = sub i64 %i.he, %i.hb
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.hj, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.hi, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.hk = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.hk, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.hk, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !216 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i, label %bb.ae, !llvm.loop !13

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.hl = icmp eq ptr %.19.i.i.i, %i.ha
  br i1 %i.hl, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %bb.af

bb.af:                                            ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i
  %i.hm = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !87 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.hn, i64 %i.hb) ; 2 uses
  %i.ho = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.ho, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.af
  %i.hp = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !89
  %i.hr = call i32 @memcmp(ptr noundef %i.hc, ptr noundef %i.hq, i64 noundef %.sroa.speculated.i.i.i.i.i) #32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.hr, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.af
  %i.hs = sub i64 %i.hb, %i.hn
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.hs, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.hr, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.ht = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.ht, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !946)
  %i.hu = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 10 uses
  store ptr %i.hu, ptr %12, align 8, !tbaa !85, !alias.scope !946
  %i.hv = load ptr, ptr %1, align 8, !tbaa !89, !noalias !946 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.hx = icmp eq ptr %i.hv, %i.hw
  br i1 %i.hx, label %bb.ah, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61

bb.ah:                                            ; preds = %bb.ag
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !87, !noalias !946 ; 3 uses
  %i.ia = icmp ult i64 %i.hz, 16
  call void @llvm.assume(i1 %i.ia)
  %i.ib = add nuw nsw i64 %i.hz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hu, ptr noundef nonnull align 8 dereferenceable(1) %i.hw, i64 %i.ib, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61: ; preds = %bb.ag
  store ptr %i.hv, ptr %12, align 8, !tbaa !89, !alias.scope !946
  %i.ic = load i64, ptr %i.hw, align 8, !tbaa !88, !noalias !946
  store i64 %i.ic, ptr %i.hu, align 8, !tbaa !88, !alias.scope !946
  %.phi.trans.insert.i62 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i63 = load i64, ptr %.phi.trans.insert.i62, align 8, !tbaa !87, !noalias !946
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i64: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61, %bb.ah
  %i.id = phi i64 [ %.pre.i63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61 ], [ %i.hz, %bb.ah ] ; 4 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.if = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store i64 %i.id, ptr %i.if, align 8, !tbaa !87, !alias.scope !946
  store ptr %i.hw, ptr %1, align 8, !tbaa !89, !noalias !946
  store i64 0, ptr %i.ie, align 8, !tbaa !87, !noalias !946
  store i8 0, ptr %i.hw, align 8, !tbaa !88, !noalias !946
  %i.ig = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(840) %i.ig, ptr noundef nonnull align 8 dereferenceable(840) %2, i64 32, i1 false)
  %i.ih = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 3 uses
  %i.ii = load i64, ptr %i.ds, align 8, !tbaa !102, !noalias !946
  store i64 %i.ii, ptr %i.ih, align 8, !tbaa !102, !alias.scope !946
  %i.ij = getelementptr inbounds nuw i8, ptr %12, i64 72 ; 4 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %12, i64 144 ; 4 uses
  %i.il = getelementptr inbounds nuw i8, ptr %12, i64 152 ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.io = load i64, ptr %i.im, align 8, !tbaa !109, !noalias !946 ; 3 uses
  %i.ip = load <2 x i64>, ptr %i.in, align 8, !tbaa !198, !noalias !946
  store <2 x i64> %i.ip, ptr %i.ik, align 8, !tbaa !198, !alias.scope !946
  %i.iq = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !103, !noalias !946
  store ptr %i.ir, ptr %i.ij, align 8, !tbaa !103, !alias.scope !946
  %i.is = icmp ult i64 %i.io, 9
  br i1 %i.is, label %.preheader.i.i.i.i.i.i65, label %bb.ai

.preheader.i.i.i.i.i.i65:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i64
  %.not.i.i.i.i.i.i66 = icmp eq i64 %i.io, 0
  br i1 %.not.i.i.i.i.i.i66, label %bb.aj, label %.lr.ph.i.i.i.i.i.i67

.lr.ph.i.i.i.i.i.i67:                             ; preds = %.preheader.i.i.i.i.i.i65
  %i.it = getelementptr inbounds nuw i8, ptr %12, i64 80
  %i.iu = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.iv = shl nuw nsw i64 %i.io, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.it, ptr nonnull align 8 %i.iu, i64 %i.iv, i1 false), !tbaa !189
  br label %bb.aj

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i64
  store i64 0, ptr %i.im, align 8, !tbaa !109, !noalias !946
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.lr.ph.i.i.i.i.i.i67, %.preheader.i.i.i.i.i.i65
  store i64 0, ptr %i.in, align 8, !tbaa !110, !noalias !946
  store ptr null, ptr %i.iq, align 8, !tbaa !103, !noalias !946
  %i.iw = getelementptr inbounds nuw i8, ptr %12, i64 160 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.iw, ptr noundef nonnull align 8 dereferenceable(12) %i.ix, i64 12, i1 false)
  %i.iy = getelementptr inbounds nuw i8, ptr %12, i64 176 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(696) %i.iy, ptr noundef nonnull align 8 dereferenceable(696) %i.d, i64 696, i1 false), !tbaa.struct !336
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 3 uses
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !400 ; 22 uses
  %i.jb = ptrtoaddr ptr %i.ja to i64
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !401
  %.not.i.i69 = icmp eq ptr %i.ja, %i.jd
  br i1 %.not.i.i69, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.je = getelementptr inbounds nuw i8, ptr %i.ja, i64 16 ; 3 uses
  store ptr %i.je, ptr %i.ja, align 8, !tbaa !85
  %i.jf = load ptr, ptr %12, align 8, !tbaa !89   ; 2 uses
  %i.jg = icmp eq ptr %i.jf, %i.hu
  br i1 %i.jg, label %bb.al, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i70

bb.al:                                            ; preds = %bb.ak
  %i.jh = icmp ult i64 %i.id, 16
  call void @llvm.assume(i1 %i.jh)
  %i.ji = add nuw nsw i64 %i.id, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.je, ptr noundef nonnull align 8 dereferenceable(1) %i.hu, i64 %i.ji, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i70: ; preds = %bb.ak
  store ptr %i.jf, ptr %i.ja, align 8, !tbaa !89
  %i.jj = load i64, ptr %i.hu, align 8, !tbaa !88
  store i64 %i.jj, ptr %i.je, align 8, !tbaa !88
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i71: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i70, %bb.al
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  store i64 %i.id, ptr %i.jk, align 8, !tbaa !87
  store ptr %i.hu, ptr %12, align 8, !tbaa !89
  store i64 0, ptr %i.if, align 8, !tbaa !87
  store i8 0, ptr %i.hu, align 8, !tbaa !88
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ja, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(840) %i.jl, ptr noundef nonnull align 8 dereferenceable(840) %i.ig, i64 32, i1 false)
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ja, i64 64
  %i.jn = load i64, ptr %i.ih, align 8, !tbaa !102
  store i64 %i.jn, ptr %i.jm, align 8, !tbaa !102
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ja, i64 72 ; 2 uses
  store ptr null, ptr %i.jo, align 8, !tbaa !103
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ja, i64 144 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jp, i8 0, i64 16, i1 false)
  %i.jq = load i64, ptr %i.il, align 8, !tbaa !109 ; 10 uses
  %i.jr = load <2 x i64>, ptr %i.ik, align 8, !tbaa !198
  store <2 x i64> %i.jr, ptr %i.jp, align 8, !tbaa !198
  %i.js = load ptr, ptr %i.ij, align 8, !tbaa !103
  store ptr %i.js, ptr %i.jo, align 8, !tbaa !103
  %i.jt = add i64 %i.jq, -9
  %or.cond168 = icmp ult i64 %i.jt, -8
  br i1 %or.cond168, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit80.thread, label %.lr.ph.i.i.i.i.i.i.i75

.lr.ph.i.i.i.i.i.i.i75:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i71
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ja, i64 80 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %12, i64 80 ; 2 uses
  %i.jw = sub i64 %i.c, %i.jb
  %diff.check = icmp ugt i64 %i.jw, -32
  br i1 %diff.check, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i75
  %trip.count.minus.1 = add nsw i64 %i.jq, -1
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %trip.count.minus.1, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %n.rnd.up = add nuw nsw i64 %i.jq, 3
  %n.vec = and i64 %n.rnd.up, 28
  %i.jx = icmp uge <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3>
  %unmaskedload = load <4 x ptr>, ptr %i.jv, align 8, !tbaa !189
  call void @llvm.masked.store.v4p0.p0(<4 x ptr> %unmaskedload, ptr align 8 %i.ju, <4 x i1> %i.jx), !tbaa !189
  %i.jy = icmp eq i64 %n.vec, 4
  br i1 %i.jy, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit80.thread, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.jz = icmp ugt <4 x i64> %broadcast.splat, <i64 3, i64 4, i64 5, i64 6>
  %i.ka = getelementptr inbounds nuw i8, ptr %i.ja, i64 112
  %i.kb = getelementptr inbounds nuw i8, ptr %12, i64 112
  %unmaskedload189 = load <4 x ptr>, ptr %i.kb, align 8, !tbaa !189
  call void @llvm.masked.store.v4p0.p0(<4 x ptr> %unmaskedload189, ptr align 8 %i.ka, <4 x i1> %i.jz), !tbaa !189
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit80.thread

scalar.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i75
  %i.kc = load ptr, ptr %i.jv, align 8, !tbaa !189
  store ptr %i.kc, ptr %i.ju, align 8, !tbaa !189
  %exitcond.not.i.i.i.i.i.i.i78 = icmp eq i64 %i.jq, 1
  br i1 %exitcond.not.i.i.i.i.i.i.i78, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit80.thread, label %scalar.ph.1

scalar.ph.1:                                      ; preds = %scalar.ph
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ja, i64 88
  %i.ke = getelementptr inbounds nuw i8, ptr %12, i64 88
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !189
  store ptr %i.kf, ptr %i.kd, align 8, !tbaa !189
  %exitcond.not.i.i.i.i.i.i.i78.1 = icmp eq i64 %i.jq, 2
  br i1 %exitcond.not.i.i.i.i.i.i.i78.1, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit80.thread, label %scalar.ph.2

scalar.ph.2:                                      ; preds = %scalar.ph.1
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ja, i64 96
  %i.kh = getelementptr inbounds nuw i8, ptr %12, i64 96
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !189
  store ptr %i.ki, ptr %i.kg, align 8, !tbaa !189
  %exitcond.not.i.i.i.i.i.i.i78.2 = icmp eq i64 %i.jq, 3
  br i1 %exitcond.not.i.i.i.i.i.i.i78.2, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit80.thread, label %scalar.ph.3

scalar.ph.3:                                      ; preds = %scalar.ph.2
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ja, i64 104
  %i.kk = getelementptr inbounds nuw i8, ptr %12, i64 104
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !189
  store ptr %i.kl, ptr %i.kj, align 8, !tbaa !189
  %exitcond.not.i.i.i.i.i.i.i78.3 = icmp eq i64 %i.jq, 4
  br i1 %exitcond.not.i.i.i.i.i.i.i78.3, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit80.thread, label %scalar.ph.4

scalar.ph.4:                                      ; preds = %scalar.ph.3
  %i.km = getelementptr inbounds nuw i8, ptr %i.ja, i64 112
  %i.kn = getelementptr inbounds nuw i8, ptr %12, i64 112
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !189
  store ptr %i.ko, ptr %i.km, align 8, !tbaa !189
  %exitcond.not.i.i.i.i.i.i.i78.4 = icmp eq i64 %i.jq, 5
  br i1 %exitcond.not.i.i.i.i.i.i.i78.4, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit80.thread, label %scalar.ph.5

scalar.ph.5:                                      ; preds = %scalar.ph.4
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ja, i64 120
  %i.kq = getelementptr inbounds nuw i8, ptr %12, i64 120
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !189
  store ptr %i.kr, ptr %i.kp, align 8, !tbaa !189
  %exitcond.not.i.i.i.i.i.i.i78.5 = icmp eq i64 %i.jq, 6
  br i1 %exitcond.not.i.i.i.i.i.i.i78.5, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit80.thread, label %scalar.ph.6

scalar.ph.6:                                      ; preds = %scalar.ph.5
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ja, i64 128
  %i.kt = getelementptr inbounds nuw i8, ptr %12, i64 128
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !189
  store ptr %i.ku, ptr %i.ks, align 8, !tbaa !189
  %exitcond.not.i.i.i.i.i.i.i78.6 = icmp eq i64 %i.jq, 7
  br i1 %exitcond.not.i.i.i.i.i.i.i78.6, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit80.thread, label %scalar.ph.7

scalar.ph.7:                                      ; preds = %scalar.ph.6
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ja, i64 136
  %i.kw = getelementptr inbounds nuw i8, ptr %12, i64 136
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !189
  store ptr %i.kx, ptr %i.kv, align 8, !tbaa !189
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit80.thread

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit80.thread: ; preds = %vector.ph, %vector.body.1, %scalar.ph, %scalar.ph.1, %scalar.ph.2, %scalar.ph.3, %scalar.ph.4, %scalar.ph.5, %scalar.ph.6, %scalar.ph.7, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i71
  store i64 0, ptr %i.ik, align 8, !tbaa !110
  store ptr null, ptr %i.ij, align 8, !tbaa !103
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ja, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ky, ptr noundef nonnull align 8 dereferenceable(12) %i.iw, i64 12, i1 false)
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ja, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(696) %i.kz, ptr noundef nonnull align 8 dereferenceable(696) %i.iy, i64 696, i1 false), !tbaa.struct !336
  %i.la = load ptr, ptr %i.iz, align 8, !tbaa !400
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 872
  store ptr %i.lb, ptr %i.iz, align 8, !tbaa !400
  store i64 0, ptr %i.il, align 8, !tbaa !109
  br label %_ZN4pbrt11SceneEntityD2Ev.exit.i82

bb.am:                                            ; preds = %bb.aj
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 1136
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.lc, ptr %i.ja, ptr noundef nonnull align 8 dereferenceable(872) %12)
          to label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit80 unwind label %bb.ap

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit80: ; preds = %bb.am
  %.pre = load ptr, ptr %i.ij, align 8, !tbaa !103 ; 2 uses
  store i64 0, ptr %i.il, align 8, !tbaa !109
  %.not.i.i.i.i.i.i.i81 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i.i.i.i.i81, label %_ZN4pbrt11SceneEntityD2Ev.exit.i82, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit80
  %i.ld = load i64, ptr %i.ik, align 8, !tbaa !110
  %i.le = shl i64 %i.ld, 3
  %i.lf = load ptr, ptr %i.ih, align 8, !tbaa !111 ; 2 uses
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !72
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 24
  %i.li = load ptr, ptr %i.lh, align 8
  invoke void %i.li(ptr noundef nonnull align 8 dereferenceable(8) %i.lf, ptr noundef nonnull %.pre, i64 noundef %i.le, i64 noundef 8)
          to label %_ZN4pbrt11SceneEntityD2Ev.exit.i82 unwind label %bb.ao, !inline_history !3

bb.ao:                                            ; preds = %bb.an
  %i.lj = landingpad { ptr, i32 }
          catch ptr null
  %i.lk = extractvalue { ptr, i32 } %i.lj, 0
  call void @__clang_call_terminate(ptr %i.lk) #31
  unreachable

_ZN4pbrt11SceneEntityD2Ev.exit.i82:               ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit80.thread, %bb.an, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit80
  %i.ll = load ptr, ptr %12, align 8, !tbaa !89   ; 2 uses
  %i.lm = icmp eq ptr %i.ll, %i.hu
  br i1 %i.lm, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i83: ; preds = %_ZN4pbrt11SceneEntityD2Ev.exit.i82
  %i.ln = load i64, ptr %i.hu, align 8, !tbaa !88
  %i.lo = add i64 %i.ln, 1
  call void @_ZdlPvm(ptr noundef %i.ll, i64 noundef %i.lo) #33
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEED2Ev.exit85

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEED2Ev.exit85: ; preds = %_ZN4pbrt11SceneEntityD2Ev.exit.i82, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  br label %bb.bd

bb.ap:                                            ; preds = %bb.am
  %i.lp = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEED2Ev(ptr noundef nonnull align 8 dead_on_return(872) dereferenceable(872) %12) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i, %bb.ad, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit
  %i.lq = invoke { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE16_M_insert_uniqueIRKS5_EESt4pairISt17_Rb_tree_iteratorIS5_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.gx, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit unwind label %bb.bf ; 0 uses

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit: ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.lr = ptrtoint ptr %0 to i64
  store i64 %i.lr, ptr %3, align 8, !tbaa !403, !alias.scope !947
  %i.ls = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  invoke void @_ZNSt10_Head_baseILm0EN4pbrt22TransformedSceneEntityELb0EEC2IRS1_EEOT_(ptr noundef nonnull align 8 dereferenceable(840) %i.ls, ptr noundef nonnull align 8 dereferenceable(840) %2)
          to label %.noexc88 unwind label %bb.bf

.noexc88:                                         ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit
  %i.lt = invoke noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #35
          to label %bb.aq unwind label %bb.au     ; 15 uses

bb.aq:                                            ; preds = %.noexc88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4, i8 0, i64 24, i1 false)
  %i.lu = invoke noalias noundef nonnull dereferenceable(848) ptr @_Znwm(i64 noundef 848) #35
          to label %.noexc.i.i unwind label %.body.i ; 9 uses

.noexc.i.i:                                       ; preds = %bb.aq
  %i.lv = load i64, ptr %3, align 8, !tbaa !403
  store i64 %i.lv, ptr %i.lu, align 8, !tbaa !403
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(840) %i.lw, ptr noundef nonnull align 8 dereferenceable(840) %i.ls, i64 32, i1 false)
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lu, i64 40
  %i.ly = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.lz = load i64, ptr %i.ly, align 8, !tbaa !102
  store i64 %i.lz, ptr %i.lx, align 8, !tbaa !102
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lu, i64 48
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lu, i64 120
  %i.mc = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 3 uses
  %i.md = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 3 uses
  %i.me = load i64, ptr %i.mc, align 8, !tbaa !109 ; 3 uses
  %i.mf = load <2 x i64>, ptr %i.md, align 8, !tbaa !198
  store <2 x i64> %i.mf, ptr %i.mb, align 8, !tbaa !198
  %i.mg = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !103
  store ptr %i.mh, ptr %i.ma, align 8, !tbaa !103
  %i.mi = icmp ult i64 %i.me, 9
  br i1 %i.mi, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ar

.preheader.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.noexc.i.i
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.me, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lu, i64 56
  %i.mk = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ml = shl nuw nsw i64 %i.me, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.mj, ptr nonnull align 8 %i.mk, i64 %i.ml, i1 false), !tbaa !189
  br label %_ZNSt14_Function_baseD2Ev.exit.i

bb.ar:                                            ; preds = %.noexc.i.i
  store i64 0, ptr %i.mc, align 8, !tbaa !109
  br label %_ZNSt14_Function_baseD2Ev.exit.i

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ar
  store i64 0, ptr %i.md, align 8, !tbaa !110
  store ptr null, ptr %i.mg, align 8, !tbaa !103
  %i.mm = getelementptr inbounds nuw i8, ptr %i.lu, i64 136
  %i.mn = getelementptr inbounds nuw i8, ptr %3, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.mm, ptr noundef nonnull align 8 dereferenceable(12) %i.mn, i64 12, i1 false)
  %i.mo = getelementptr inbounds nuw i8, ptr %i.lu, i64 152
  %i.mp = getelementptr inbounds nuw i8, ptr %3, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(696) %i.mo, ptr noundef nonnull align 8 dereferenceable(696) %i.mp, i64 696, i1 false), !tbaa.struct !336
  %i.mq = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  store i32 0, ptr %i.mq, align 8, !tbaa !311
  %i.mr = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.mr, i8 0, i64 17, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4pbrt8AsyncJobINS_12FloatTextureEEE, i64 16), ptr %i.lt, align 8, !tbaa !72
  %i.ms = getelementptr inbounds nuw i8, ptr %i.lt, i64 40
  %i.mt = getelementptr inbounds nuw i8, ptr %i.lt, i64 64
  store ptr @"_ZNSt17_Function_handlerIFN4pbrt12FloatTextureEvESt5_BindIFZNS0_10BasicScene15AddFloatTextureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_22TransformedSceneEntityEE3$_0SB_EEE9_M_invokeERKSt9_Any_data", ptr %i.mt, align 8, !tbaa !405
  %i.mu = getelementptr inbounds nuw i8, ptr %i.lt, i64 56
  store ptr %i.lu, ptr %i.ms, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lt, i64 48
  %i.mv = load i64, ptr %.sroa.4, align 8, !tbaa !88
  store i64 %i.mv, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !88
  store ptr @"_ZNSt17_Function_handlerIFN4pbrt12FloatTextureEvESt5_BindIFZNS0_10BasicScene15AddFloatTextureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_22TransformedSceneEntityEE3$_0SB_EEE10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation", ptr %i.mu, align 8, !tbaa !314
  %i.mw = getelementptr inbounds nuw i8, ptr %i.lt, i64 72
  store i8 0, ptr %i.mw, align 8, !tbaa !408
  %i.mx = getelementptr inbounds nuw i8, ptr %i.lt, i64 88
  store i8 0, ptr %i.mx, align 8, !tbaa !409
  %i.my = getelementptr inbounds nuw i8, ptr %i.lt, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.my, i8 0, i64 40, i1 false)
  %i.mz = getelementptr inbounds nuw i8, ptr %i.lt, i64 136
  call void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.mz) #32
  %i.na = invoke noundef i32 @_ZN4pbrt14RunningThreadsEv()
          to label %bb.as unwind label %bb.au

bb.as:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.nb = icmp eq i32 %i.na, 1
  br i1 %i.nb, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  invoke void @_ZN4pbrt8AsyncJobINS_12FloatTextureEE6DoWorkEv(ptr noundef nonnull align 8 dereferenceable(184) %i.lt)
          to label %_ZNSt11unique_lockISt5mutexED2Ev.exit15.i unwind label %bb.au

.body.i:                                          ; preds = %bb.aq
  %i.nc = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.lt, i64 noundef 184) #33
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit18.i

bb.au:                                            ; preds = %bb.at, %_ZNSt14_Function_baseD2Ev.exit.i, %.noexc88
  %i.nd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit18.i

bb.av:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.ne = load ptr, ptr @_ZN4pbrt11ParallelJob10threadPoolE, align 8, !tbaa !322
  invoke void @_ZN4pbrt10ThreadPool12AddToJobListEPNS_11ParallelJobE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_lock") align 8 %4, ptr noundef nonnull align 8 dereferenceable(128) %i.ne, ptr noundef nonnull %i.lt)
          to label %bb.ax unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.nf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit18.i

bb.ax:                                            ; preds = %bb.av
  %i.ng = load ptr, ptr %4, align 8, !tbaa !325   ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ni = load i8, ptr %i.nh, align 8, !tbaa !326, !range !211, !noundef !212
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.nj = trunc nuw i8 %i.ni to i1
  %.not.i.i14.i = icmp ne ptr %i.ng, null
  %or.cond.not.i = select i1 %i.nj, i1 %.not.i.i14.i, i1 false
  br i1 %or.cond.not.i, label %bb.ay, label %_ZNSt11unique_lockISt5mutexED2Ev.exit15.i

bb.ay:                                            ; preds = %bb.ax
  %i.nk = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ng) #32 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit15.i

_ZNSt11unique_lockISt5mutexED2Ev.exit15.i:        ; preds = %bb.ay, %bb.ax, %bb.at
  store i64 0, ptr %i.mc, align 8, !tbaa !109
  %i.nl = load ptr, ptr %i.mg, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.nl, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit15.i
  %i.nm = load i64, ptr %i.md, align 8, !tbaa !110
  %i.nn = shl i64 %i.nm, 3
  %i.no = load ptr, ptr %i.ly, align 8, !tbaa !111 ; 2 uses
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !72
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 24
  %i.nr = load ptr, ptr %i.nq, align 8
  invoke void %i.nr(ptr noundef nonnull align 8 dereferenceable(8) %i.no, ptr noundef nonnull %i.nl, i64 noundef %i.nn, i64 noundef 8)
          to label %bb.bb unwind label %bb.ba, !inline_history !3

bb.ba:                                            ; preds = %bb.az
  %i.ns = landingpad { ptr, i32 }
          catch ptr null
  %i.nt = extractvalue { ptr, i32 } %i.ns, 0
  call void @__clang_call_terminate(ptr %i.nt) #31
  unreachable

_ZNSt11unique_lockISt5mutexED2Ev.exit18.i:        ; preds = %bb.aw, %bb.au, %.body.i
  %.pn.pn.i = phi { ptr, i32 } [ %i.nf, %bb.aw ], [ %i.nc, %.body.i ], [ %i.nd, %bb.au ]
  call fastcc void @"_ZNSt5_BindIFZN4pbrt10BasicScene15AddFloatTextureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_22TransformedSceneEntityEE3$_0S8_EED2Ev"(ptr noundef nonnull align 8 dead_on_return(848) dereferenceable(848) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

bb.bb:                                            ; preds = %bb.az, %_ZNSt11unique_lockISt5mutexED2Ev.exit15.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %i.nv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4pbrt8AsyncJobINS6_12FloatTextureEEESt4lessIS5_ESaISt4pairIKS5_SA_EEEixERSE_(ptr noundef nonnull align 8 dereferenceable(48) %i.nu, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.bc unwind label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  store ptr %i.lt, ptr %i.nv, align 8, !tbaa !948
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEED2Ev.exit85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i56, %bb.q
  %i.nw = load ptr, ptr %7, align 8, !tbaa !89    ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ny = icmp eq ptr %i.nw, %i.nx
  br i1 %i.ny, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %bb.bd
  %i.nz = load i64, ptr %i.nx, align 8, !tbaa !88
  %i.oa = add i64 %i.nz, 1
  call void @_ZdlPvm(ptr noundef %i.nw, i64 noundef %i.oa) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %bb.be

bb.be:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEED2Ev.exit
  %i.ob = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.i) #32 ; 0 uses
  ret void

bb.bf:                                            ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, %.noexc.i49, %bb.p, %bb.bb
  %i.oc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.ac, %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i54, %_ZNSt11unique_lockISt5mutexED2Ev.exit18.i, %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57, %bb.ap
  %.pn17 = phi { ptr, i32 } [ %.pn.pn.i, %_ZNSt11unique_lockISt5mutexED2Ev.exit18.i ], [ %i.lp, %bb.ap ], [ %i.gs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57 ], [ %i.fz, %bb.z ], [ %i.oc, %bb.bf ], [ %i.gk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i ], [ %i.fz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i54 ], [ %i.gs, %bb.ac ] ; 2 uses
  %i.od = load ptr, ptr %7, align 8, !tbaa !89    ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.of = icmp eq ptr %i.od, %i.oe
  br i1 %i.of, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59
  %i.og = load i64, ptr %i.oe, align 8, !tbaa !88
  %i.oh = add i64 %i.og, 1
  call void @_ZdlPvm(ptr noundef %i.od, i64 noundef %i.oh) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %.pn17.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ], [ %.pn17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94 ], [ %.pn17, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %bb.bg

bb.bg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, %bb.m
  %.pn20.pn = phi { ptr, i32 } [ %i.dr, %bb.m ], [ %.pn17.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96 ]
  %i.oi = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.i) #32 ; 0 uses
  resume { ptr, i32 } %.pn20.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt10BasicScene18AddSpectrumTextureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_22TransformedSceneEntityE(ptr noundef nonnull align 8 dereferenceable(1520) %0, ptr nofree noundef align 8 dereferenceable(32) %1, ptr nofree noundef align 8 dereferenceable(840) %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::_Bind.384", align 8    ; 14 uses
  %.sroa.4 = alloca [24 x i8], align 8            ; 4 uses
  %4 = alloca %"class.std::unique_lock", align 8  ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"struct.std::pair.171", align 8    ; 30 uses
  %i.b = ptrtoaddr ptr %6 to i64
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"struct.std::pair.171", align 8   ; 30 uses
  %i.c = ptrtoaddr ptr %12 to i64
  %13 = alloca %"struct.std::pair.171", align 8   ; 36 uses
  %i.d = ptrtoaddr ptr %13 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 3 uses
  %i.f = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #32 ; 2 uses
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.f) #34
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 8, !tbaa !200    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !87
  switch i64 %i.i, label %_ZNK4pbrt14InternedStringneEPKc.exit27.thread [
    i64 8, label %_ZNK4pbrt14InternedStringneEPKc.exit
    i64 4, label %_ZNK4pbrt14InternedStringneEPKc.exit27
  ]

_ZNK4pbrt14InternedStringneEPKc.exit:             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !89
  %i.k = load i64, ptr %i.j, align 1
  %i.l = icmp ne i64 %i.k, 8097873887282425193
  %i.m = zext i1 %i.l to i32
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %_ZNK4pbrt14InternedStringneEPKc.exit.thread123, label %_ZNK4pbrt14InternedStringneEPKc.exit27.thread

_ZNK4pbrt14InternedStringneEPKc.exit27:           ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !89
  %i.o = load i32, ptr %i.n, align 1
  %i.p = icmp ne i32 %i.o, 2019914864
  %i.q = zext i1 %i.p to i32
  %.not126 = icmp eq i32 %i.q, 0
  br i1 %.not126, label %_ZNK4pbrt14InternedStringneEPKc.exit.thread123, label %_ZNK4pbrt14InternedStringneEPKc.exit27.thread

_ZNK4pbrt14InternedStringneEPKc.exit27.thread:    ; preds = %_ZNK4pbrt14InternedStringneEPKc.exit, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %_ZNK4pbrt14InternedStringneEPKc.exit27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !957)
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 10 uses
  store ptr %i.r, ptr %6, align 8, !tbaa !85, !alias.scope !957
  %i.s = load ptr, ptr %1, align 8, !tbaa !89, !noalias !957 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.c:                                             ; preds = %_ZNK4pbrt14InternedStringneEPKc.exit27.thread
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !87, !noalias !957 ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNK4pbrt14InternedStringneEPKc.exit27.thread
  store ptr %i.s, ptr %6, align 8, !tbaa !89, !alias.scope !957
  %i.z = load i64, ptr %i.t, align 8, !tbaa !88, !noalias !957
  store i64 %i.z, ptr %i.r, align 8, !tbaa !88, !alias.scope !957
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !87, !noalias !957
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.c
  %i.aa = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.w, %bb.c ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !87, !alias.scope !957
  store ptr %i.t, ptr %1, align 8, !tbaa !89, !noalias !957
  store i64 0, ptr %i.ab, align 8, !tbaa !87, !noalias !957
  store i8 0, ptr %i.t, align 8, !tbaa !88, !noalias !957
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(840) %i.ad, ptr noundef nonnull align 8 dereferenceable(840) %2, i64 32, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !102, !noalias !957
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !102, !alias.scope !957
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 144 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 152 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !109, !noalias !957 ; 3 uses
  %i.an = load <2 x i64>, ptr %i.al, align 8, !tbaa !198, !noalias !957
  store <2 x i64> %i.an, ptr %i.ai, align 8, !tbaa !198, !alias.scope !957
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !103, !noalias !957
  store ptr %i.ap, ptr %i.ah, align 8, !tbaa !103, !alias.scope !957
  %i.aq = icmp ult i64 %i.am, 9
  br i1 %i.aq, label %.preheader.i.i.i.i.i.i, label %bb.d

.preheader.i.i.i.i.i.i:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %.not.i.i.i.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.at = shl nuw nsw i64 %i.am, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ar, ptr nonnull align 8 %i.as, i64 %i.at, i1 false), !tbaa !189
  br label %bb.e

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  store i64 0, ptr %i.ak, align 8, !tbaa !109, !noalias !957
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i
  store i64 0, ptr %i.al, align 8, !tbaa !110, !noalias !957
  store ptr null, ptr %i.ao, align 8, !tbaa !103, !noalias !957
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 160 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.au, ptr noundef nonnull align 8 dereferenceable(12) %i.av, i64 12, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 176 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(696) %i.aw, ptr noundef nonnull align 8 dereferenceable(696) %i.ax, i64 696, i1 false), !tbaa.struct !336
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !400 ; 22 uses
  %i.ba = ptrtoaddr ptr %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !401
  %.not.i.i28 = icmp eq ptr %i.az, %i.bc
  br i1 %.not.i.i28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 3 uses
  store ptr %i.bd, ptr %i.az, align 8, !tbaa !85
  %i.be = load ptr, ptr %6, align 8, !tbaa !89    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.r
  br i1 %i.bf, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.bg = icmp ult i64 %i.aa, 16
  call void @llvm.assume(i1 %i.bg)
  %i.bh = add nuw nsw i64 %i.aa, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bd, ptr noundef nonnull align 8 dereferenceable(1) %i.r, i64 %i.bh, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  store ptr %i.be, ptr %i.az, align 8, !tbaa !89
  %i.bi = load i64, ptr %i.r, align 8, !tbaa !88
  store i64 %i.bi, ptr %i.bd, align 8, !tbaa !88
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 %i.aa, ptr %i.bj, align 8, !tbaa !87
  store ptr %i.r, ptr %6, align 8, !tbaa !89
  store i64 0, ptr %i.ac, align 8, !tbaa !87
  store i8 0, ptr %i.r, align 8, !tbaa !88
  %i.bk = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(840) %i.bk, ptr noundef nonnull align 8 dereferenceable(840) %i.ad, i64 32, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bm = load i64, ptr %i.ae, align 8, !tbaa !102
  store i64 %i.bm, ptr %i.bl, align 8, !tbaa !102
  %i.bn = getelementptr inbounds nuw i8, ptr %i.az, i64 72 ; 2 uses
  store ptr null, ptr %i.bn, align 8, !tbaa !103
  %i.bo = getelementptr inbounds nuw i8, ptr %i.az, i64 144 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i8 0, i64 16, i1 false)
  %i.bp = load i64, ptr %i.aj, align 8, !tbaa !109 ; 10 uses
  %i.bq = load <2 x i64>, ptr %i.ai, align 8, !tbaa !198
  store <2 x i64> %i.bq, ptr %i.bo, align 8, !tbaa !198
  %i.br = load ptr, ptr %i.ah, align 8, !tbaa !103
  store ptr %i.br, ptr %i.bn, align 8, !tbaa !103
  %i.bs = add i64 %i.bp, -9
  %or.cond = icmp ult i64 %i.bs, -8
  br i1 %or.cond, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit.thread, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.az, i64 80 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  %i.bv = sub i64 %i.b, %i.ba
  %diff.check226 = icmp ugt i64 %i.bv, -32
  br i1 %diff.check226, label %scalar.ph224, label %vector.ph227

vector.ph227:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i
  %trip.count.minus.1230 = add nsw i64 %i.bp, -1
  %broadcast.splatinsert231 = insertelement <4 x i64> poison, i64 %trip.count.minus.1230, i64 0
  %broadcast.splat232 = shufflevector <4 x i64> %broadcast.splatinsert231, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %n.rnd.up228 = add nuw nsw i64 %i.bp, 3
  %n.vec229 = and i64 %n.rnd.up228, 28
  %i.bw = icmp uge <4 x i64> %broadcast.splat232, <i64 0, i64 1, i64 2, i64 3>
  %unmaskedload246 = load <4 x ptr>, ptr %i.bu, align 8, !tbaa !189
  call void @llvm.masked.store.v4p0.p0(<4 x ptr> %unmaskedload246, ptr align 8 %i.bt, <4 x i1> %i.bw), !tbaa !189
  %i.bx = icmp eq i64 %n.vec229, 4
  br i1 %i.bx, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit.thread, label %vector.body233.1

vector.body233.1:                                 ; preds = %vector.ph227
  %i.by = icmp ugt <4 x i64> %broadcast.splat232, <i64 3, i64 4, i64 5, i64 6>
  %i.bz = getelementptr inbounds nuw i8, ptr %i.az, i64 112
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 112
  %unmaskedload247 = load <4 x ptr>, ptr %i.ca, align 8, !tbaa !189
  call void @llvm.masked.store.v4p0.p0(<4 x ptr> %unmaskedload247, ptr align 8 %i.bz, <4 x i1> %i.by), !tbaa !189
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit.thread

scalar.ph224:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.cb = load ptr, ptr %i.bu, align 8, !tbaa !189
  store ptr %i.cb, ptr %i.bt, align 8, !tbaa !189
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.bp, 1
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit.thread, label %scalar.ph224.1

scalar.ph224.1:                                   ; preds = %scalar.ph224
  %i.cc = getelementptr inbounds nuw i8, ptr %i.az, i64 88
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !189
  store ptr %i.ce, ptr %i.cc, align 8, !tbaa !189
  %exitcond.not.i.i.i.i.i.i.i.1 = icmp eq i64 %i.bp, 2
  br i1 %exitcond.not.i.i.i.i.i.i.i.1, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit.thread, label %scalar.ph224.2

scalar.ph224.2:                                   ; preds = %scalar.ph224.1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.az, i64 96
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !189
  store ptr %i.ch, ptr %i.cf, align 8, !tbaa !189
  %exitcond.not.i.i.i.i.i.i.i.2 = icmp eq i64 %i.bp, 3
  br i1 %exitcond.not.i.i.i.i.i.i.i.2, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit.thread, label %scalar.ph224.3

scalar.ph224.3:                                   ; preds = %scalar.ph224.2
  %i.ci = getelementptr inbounds nuw i8, ptr %i.az, i64 104
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !189
  store ptr %i.ck, ptr %i.ci, align 8, !tbaa !189
  %exitcond.not.i.i.i.i.i.i.i.3 = icmp eq i64 %i.bp, 4
  br i1 %exitcond.not.i.i.i.i.i.i.i.3, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit.thread, label %scalar.ph224.4

scalar.ph224.4:                                   ; preds = %scalar.ph224.3
  %i.cl = getelementptr inbounds nuw i8, ptr %i.az, i64 112
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !189
  store ptr %i.cn, ptr %i.cl, align 8, !tbaa !189
  %exitcond.not.i.i.i.i.i.i.i.4 = icmp eq i64 %i.bp, 5
  br i1 %exitcond.not.i.i.i.i.i.i.i.4, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit.thread, label %scalar.ph224.5

scalar.ph224.5:                                   ; preds = %scalar.ph224.4
  %i.co = getelementptr inbounds nuw i8, ptr %i.az, i64 120
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 120
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !189
  store ptr %i.cq, ptr %i.co, align 8, !tbaa !189
  %exitcond.not.i.i.i.i.i.i.i.5 = icmp eq i64 %i.bp, 6
  br i1 %exitcond.not.i.i.i.i.i.i.i.5, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit.thread, label %scalar.ph224.6

scalar.ph224.6:                                   ; preds = %scalar.ph224.5
  %i.cr = getelementptr inbounds nuw i8, ptr %i.az, i64 128
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !189
  store ptr %i.ct, ptr %i.cr, align 8, !tbaa !189
  %exitcond.not.i.i.i.i.i.i.i.6 = icmp eq i64 %i.bp, 7
  br i1 %exitcond.not.i.i.i.i.i.i.i.6, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit.thread, label %scalar.ph224.7

scalar.ph224.7:                                   ; preds = %scalar.ph224.6
  %i.cu = getelementptr inbounds nuw i8, ptr %i.az, i64 136
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 136
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !189
  store ptr %i.cw, ptr %i.cu, align 8, !tbaa !189
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit.thread

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit.thread: ; preds = %vector.ph227, %vector.body233.1, %scalar.ph224, %scalar.ph224.1, %scalar.ph224.2, %scalar.ph224.3, %scalar.ph224.4, %scalar.ph224.5, %scalar.ph224.6, %scalar.ph224.7, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  store i64 0, ptr %i.ai, align 8, !tbaa !110
  store ptr null, ptr %i.ah, align 8, !tbaa !103
  %i.cx = getelementptr inbounds nuw i8, ptr %i.az, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.cx, ptr noundef nonnull align 8 dereferenceable(12) %i.au, i64 12, i1 false)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.az, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(696) %i.cy, ptr noundef nonnull align 8 dereferenceable(696) %i.aw, i64 696, i1 false), !tbaa.struct !336
  %i.cz = load ptr, ptr %i.ay, align 8, !tbaa !400
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 872
  store ptr %i.da, ptr %i.ay, align 8, !tbaa !400
  store i64 0, ptr %i.aj, align 8, !tbaa !109
  br label %_ZN4pbrt11SceneEntityD2Ev.exit.i

bb.h:                                             ; preds = %bb.e
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 1160
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.db, ptr %i.az, ptr noundef nonnull align 8 dereferenceable(872) %6)
          to label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit unwind label %bb.k

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit: ; preds = %bb.h
  %.pre131 = load ptr, ptr %i.ah, align 8, !tbaa !103 ; 2 uses
  store i64 0, ptr %i.aj, align 8, !tbaa !109
  %.not.i.i.i.i.i.i.i29 = icmp eq ptr %.pre131, null
  br i1 %.not.i.i.i.i.i.i.i29, label %_ZN4pbrt11SceneEntityD2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit
  %i.dc = load i64, ptr %i.ai, align 8, !tbaa !110
  %i.dd = shl i64 %i.dc, 3
  %i.de = load ptr, ptr %i.ae, align 8, !tbaa !111 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !72
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8
  invoke void %i.dh(ptr noundef nonnull align 8 dereferenceable(8) %i.de, ptr noundef nonnull %.pre131, i64 noundef %i.dd, i64 noundef 8)
          to label %_ZN4pbrt11SceneEntityD2Ev.exit.i unwind label %bb.j, !inline_history !3

bb.j:                                             ; preds = %bb.i
  %i.di = landingpad { ptr, i32 }
          catch ptr null
  %i.dj = extractvalue { ptr, i32 } %i.di, 0
  call void @__clang_call_terminate(ptr %i.dj) #31
  unreachable

_ZN4pbrt11SceneEntityD2Ev.exit.i:                 ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit.thread, %bb.i, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit
  %i.dk = load ptr, ptr %6, align 8, !tbaa !89    ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.r
  br i1 %i.dl, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30
end_hunk_10
begin_hunk_11_@_ZN4pbrt10BasicScene18AddSpectrumTextureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_22TransformedSceneEntityE:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i57: ; preds = %bb.x
  %i.fz = load i64, ptr %i.fu, align 8, !tbaa !88, !alias.scope !958
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.ga) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i: ; preds = %bb.w
  %i.gb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gc = load ptr, ptr %5, align 8, !tbaa !89
  invoke void @_ZN4pbrt5ErrorEPKNS_7FileLocEPKc(ptr noundef nonnull %i.gb, ptr noundef %i.gc)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i
  %i.gd = load ptr, ptr %5, align 8, !tbaa !89    ; 2 uses
  %i.ge = icmp eq ptr %i.gd, %i.fu
  br i1 %i.ge, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i58: ; preds = %bb.y
  %i.gf = load i64, ptr %i.fu, align 8, !tbaa !88
  %i.gg = add i64 %i.gf, 1
  call void @_ZdlPvm(ptr noundef %i.gd, i64 noundef %i.gg) #33
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i59

bb.z:                                             ; preds = %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i
  %i.gh = landingpad { ptr, i32 }
          cleanup
  %i.gi = load ptr, ptr %5, align 8, !tbaa !89    ; 2 uses
  %i.gj = icmp eq ptr %i.gi, %i.fu
  br i1 %i.gj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %bb.z
  %i.gk = load i64, ptr %i.fu, align 8, !tbaa !88
  %i.gl = add i64 %i.gk, 1
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gl) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i59: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 1352 ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !402
  %i.go = add nsw i32 %i.gn, 1
  store i32 %i.go, ptr %i.gm, align 8, !tbaa !402
  br label %bb.bg

bb.aa:                                            ; preds = %bb.u
  %i.gp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gq = load ptr, ptr %11, align 8, !tbaa !89   ; 2 uses
  %i.gr = icmp eq ptr %i.gq, %i.fe
  br i1 %i.gr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %bb.aa
  %i.gs = load i64, ptr %i.fe, align 8, !tbaa !88
  %i.gt = add i64 %i.gs, 1
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gt) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !168 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 1216 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.gw, null
  br i1 %.not10.i.i.i, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ab
  %i.gy = load i64, ptr %i.ei, align 8, !tbaa !87 ; 4 uses
  %i.gz = load ptr, ptr %7, align 8               ; 2 uses
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.gw, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.gx, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.ha = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !87 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.gy, i64 %i.hb) ; 2 uses
  %i.hc = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.hc, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.ac
  %i.hd = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !89
  %i.hf = call i32 @memcmp(ptr noundef %i.he, ptr noundef %i.gz, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #32 ; 2 uses
  %.not.i.i.i.i.i.i63 = icmp eq i32 %i.hf, 0
  br i1 %.not.i.i.i.i.i.i63, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.ac
  %i.hg = sub i64 %i.hb, %i.gy
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.hg, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.hf, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.hh = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.hh, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.hh, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !216 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i, label %bb.ac, !llvm.loop !13

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.hi = icmp eq ptr %.19.i.i.i, %i.gx
  br i1 %i.hi, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i
  %i.hj = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !87 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.hk, i64 %i.gy) ; 2 uses
  %i.hl = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.hl, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.ad
  %i.hm = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !89
  %i.ho = call i32 @memcmp(ptr noundef %i.gz, ptr noundef %i.hn, i64 noundef %.sroa.speculated.i.i.i.i.i) #32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ho, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.ad
  %i.hp = sub i64 %i.gy, %i.hk
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.hp, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.ho, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.hq = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.hq, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !959)
  %i.hr = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 10 uses
  store ptr %i.hr, ptr %12, align 8, !tbaa !85, !alias.scope !959
  %i.hs = load ptr, ptr %1, align 8, !tbaa !89, !noalias !959 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.hu = icmp eq ptr %i.hs, %i.ht
  br i1 %i.hu, label %bb.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64

bb.af:                                            ; preds = %bb.ae
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !87, !noalias !959 ; 3 uses
  %i.hx = icmp ult i64 %i.hw, 16
  call void @llvm.assume(i1 %i.hx)
  %i.hy = add nuw nsw i64 %i.hw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hr, ptr noundef nonnull align 8 dereferenceable(1) %i.ht, i64 %i.hy, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64: ; preds = %bb.ae
  store ptr %i.hs, ptr %12, align 8, !tbaa !89, !alias.scope !959
  %i.hz = load i64, ptr %i.ht, align 8, !tbaa !88, !noalias !959
  store i64 %i.hz, ptr %i.hr, align 8, !tbaa !88, !alias.scope !959
  %.phi.trans.insert.i65 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i66 = load i64, ptr %.phi.trans.insert.i65, align 8, !tbaa !87, !noalias !959
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i67: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64, %bb.af
  %i.ia = phi i64 [ %.pre.i66, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64 ], [ %i.hw, %bb.af ] ; 4 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ic = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store i64 %i.ia, ptr %i.ic, align 8, !tbaa !87, !alias.scope !959
  store ptr %i.ht, ptr %1, align 8, !tbaa !89, !noalias !959
  store i64 0, ptr %i.ib, align 8, !tbaa !87, !noalias !959
  store i8 0, ptr %i.ht, align 8, !tbaa !88, !noalias !959
  %i.id = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(840) %i.id, ptr noundef nonnull align 8 dereferenceable(840) %2, i64 32, i1 false)
  %i.ie = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 3 uses
  %i.if = load i64, ptr %i.dp, align 8, !tbaa !102, !noalias !959
  store i64 %i.if, ptr %i.ie, align 8, !tbaa !102, !alias.scope !959
  %i.ig = getelementptr inbounds nuw i8, ptr %12, i64 72 ; 4 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %12, i64 144 ; 4 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %12, i64 152 ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.il = load i64, ptr %i.ij, align 8, !tbaa !109, !noalias !959 ; 3 uses
  %i.im = load <2 x i64>, ptr %i.ik, align 8, !tbaa !198, !noalias !959
  store <2 x i64> %i.im, ptr %i.ih, align 8, !tbaa !198, !alias.scope !959
  %i.in = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !103, !noalias !959
  store ptr %i.io, ptr %i.ig, align 8, !tbaa !103, !alias.scope !959
  %i.ip = icmp ult i64 %i.il, 9
  br i1 %i.ip, label %.preheader.i.i.i.i.i.i68, label %bb.ag

.preheader.i.i.i.i.i.i68:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i67
  %.not.i.i.i.i.i.i69 = icmp eq i64 %i.il, 0
  br i1 %.not.i.i.i.i.i.i69, label %bb.ah, label %.lr.ph.i.i.i.i.i.i70

.lr.ph.i.i.i.i.i.i70:                             ; preds = %.preheader.i.i.i.i.i.i68
  %i.iq = getelementptr inbounds nuw i8, ptr %12, i64 80
  %i.ir = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.is = shl nuw nsw i64 %i.il, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.iq, ptr nonnull align 8 %i.ir, i64 %i.is, i1 false), !tbaa !189
  br label %bb.ah

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i67
  store i64 0, ptr %i.ij, align 8, !tbaa !109, !noalias !959
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph.i.i.i.i.i.i70, %.preheader.i.i.i.i.i.i68
  store i64 0, ptr %i.ik, align 8, !tbaa !110, !noalias !959
  store ptr null, ptr %i.in, align 8, !tbaa !103, !noalias !959
  %i.it = getelementptr inbounds nuw i8, ptr %12, i64 160 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.it, ptr noundef nonnull align 8 dereferenceable(12) %i.iu, i64 12, i1 false)
  %i.iv = getelementptr inbounds nuw i8, ptr %12, i64 176 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %2, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(696) %i.iv, ptr noundef nonnull align 8 dereferenceable(696) %i.iw, i64 696, i1 false), !tbaa.struct !336
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 3 uses
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !400 ; 22 uses
  %i.iz = ptrtoaddr ptr %i.iy to i64
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !401
  %.not.i.i72 = icmp eq ptr %i.iy, %i.jb
  br i1 %.not.i.i72, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iy, i64 16 ; 3 uses
  store ptr %i.jc, ptr %i.iy, align 8, !tbaa !85
  %i.jd = load ptr, ptr %12, align 8, !tbaa !89   ; 2 uses
  %i.je = icmp eq ptr %i.jd, %i.hr
  br i1 %i.je, label %bb.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i73

bb.aj:                                            ; preds = %bb.ai
  %i.jf = icmp ult i64 %i.ia, 16
  call void @llvm.assume(i1 %i.jf)
  %i.jg = add nuw nsw i64 %i.ia, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.jc, ptr noundef nonnull align 8 dereferenceable(1) %i.hr, i64 %i.jg, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i73: ; preds = %bb.ai
  store ptr %i.jd, ptr %i.iy, align 8, !tbaa !89
  %i.jh = load i64, ptr %i.hr, align 8, !tbaa !88
  store i64 %i.jh, ptr %i.jc, align 8, !tbaa !88
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i74: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i73, %bb.aj
  %i.ji = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  store i64 %i.ia, ptr %i.ji, align 8, !tbaa !87
  store ptr %i.hr, ptr %12, align 8, !tbaa !89
  store i64 0, ptr %i.ic, align 8, !tbaa !87
  store i8 0, ptr %i.hr, align 8, !tbaa !88
  %i.jj = getelementptr inbounds nuw i8, ptr %i.iy, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(840) %i.jj, ptr noundef nonnull align 8 dereferenceable(840) %i.id, i64 32, i1 false)
  %i.jk = getelementptr inbounds nuw i8, ptr %i.iy, i64 64
  %i.jl = load i64, ptr %i.ie, align 8, !tbaa !102
  store i64 %i.jl, ptr %i.jk, align 8, !tbaa !102
  %i.jm = getelementptr inbounds nuw i8, ptr %i.iy, i64 72 ; 2 uses
  store ptr null, ptr %i.jm, align 8, !tbaa !103
  %i.jn = getelementptr inbounds nuw i8, ptr %i.iy, i64 144 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jn, i8 0, i64 16, i1 false)
  %i.jo = load i64, ptr %i.ii, align 8, !tbaa !109 ; 10 uses
  %i.jp = load <2 x i64>, ptr %i.ih, align 8, !tbaa !198
  store <2 x i64> %i.jp, ptr %i.jn, align 8, !tbaa !198
  %i.jq = load ptr, ptr %i.ig, align 8, !tbaa !103
  store ptr %i.jq, ptr %i.jm, align 8, !tbaa !103
  %i.jr = add i64 %i.jo, -9
  %or.cond202 = icmp ult i64 %i.jr, -8
  br i1 %or.cond202, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit83.thread, label %.lr.ph.i.i.i.i.i.i.i78

.lr.ph.i.i.i.i.i.i.i78:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i74
  %i.js = getelementptr inbounds nuw i8, ptr %i.iy, i64 80 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %12, i64 80 ; 2 uses
  %i.ju = sub i64 %i.c, %i.iz
  %diff.check = icmp ugt i64 %i.ju, -32
  br i1 %diff.check, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i78
  %trip.count.minus.1 = add nsw i64 %i.jo, -1
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %trip.count.minus.1, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %n.rnd.up = add nuw nsw i64 %i.jo, 3
  %n.vec = and i64 %n.rnd.up, 28
  %i.jv = icmp uge <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3>
  %unmaskedload = load <4 x ptr>, ptr %i.jt, align 8, !tbaa !189
  call void @llvm.masked.store.v4p0.p0(<4 x ptr> %unmaskedload, ptr align 8 %i.js, <4 x i1> %i.jv), !tbaa !189
  %i.jw = icmp eq i64 %n.vec, 4
  br i1 %i.jw, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit83.thread, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.jx = icmp ugt <4 x i64> %broadcast.splat, <i64 3, i64 4, i64 5, i64 6>
  %i.jy = getelementptr inbounds nuw i8, ptr %i.iy, i64 112
  %i.jz = getelementptr inbounds nuw i8, ptr %12, i64 112
  %unmaskedload243 = load <4 x ptr>, ptr %i.jz, align 8, !tbaa !189
  call void @llvm.masked.store.v4p0.p0(<4 x ptr> %unmaskedload243, ptr align 8 %i.jy, <4 x i1> %i.jx), !tbaa !189
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit83.thread

scalar.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i78
  %i.ka = load ptr, ptr %i.jt, align 8, !tbaa !189
  store ptr %i.ka, ptr %i.js, align 8, !tbaa !189
  %exitcond.not.i.i.i.i.i.i.i81 = icmp eq i64 %i.jo, 1
  br i1 %exitcond.not.i.i.i.i.i.i.i81, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit83.thread, label %scalar.ph.1

scalar.ph.1:                                      ; preds = %scalar.ph
  %i.kb = getelementptr inbounds nuw i8, ptr %i.iy, i64 88
  %i.kc = getelementptr inbounds nuw i8, ptr %12, i64 88
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !189
  store ptr %i.kd, ptr %i.kb, align 8, !tbaa !189
  %exitcond.not.i.i.i.i.i.i.i81.1 = icmp eq i64 %i.jo, 2
  br i1 %exitcond.not.i.i.i.i.i.i.i81.1, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit83.thread, label %scalar.ph.2

scalar.ph.2:                                      ; preds = %scalar.ph.1
  %i.ke = getelementptr inbounds nuw i8, ptr %i.iy, i64 96
  %i.kf = getelementptr inbounds nuw i8, ptr %12, i64 96
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !189
  store ptr %i.kg, ptr %i.ke, align 8, !tbaa !189
  %exitcond.not.i.i.i.i.i.i.i81.2 = icmp eq i64 %i.jo, 3
  br i1 %exitcond.not.i.i.i.i.i.i.i81.2, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit83.thread, label %scalar.ph.3

scalar.ph.3:                                      ; preds = %scalar.ph.2
  %i.kh = getelementptr inbounds nuw i8, ptr %i.iy, i64 104
  %i.ki = getelementptr inbounds nuw i8, ptr %12, i64 104
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !189
  store ptr %i.kj, ptr %i.kh, align 8, !tbaa !189
  %exitcond.not.i.i.i.i.i.i.i81.3 = icmp eq i64 %i.jo, 4
  br i1 %exitcond.not.i.i.i.i.i.i.i81.3, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit83.thread, label %scalar.ph.4

scalar.ph.4:                                      ; preds = %scalar.ph.3
  %i.kk = getelementptr inbounds nuw i8, ptr %i.iy, i64 112
  %i.kl = getelementptr inbounds nuw i8, ptr %12, i64 112
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !189
  store ptr %i.km, ptr %i.kk, align 8, !tbaa !189
  %exitcond.not.i.i.i.i.i.i.i81.4 = icmp eq i64 %i.jo, 5
  br i1 %exitcond.not.i.i.i.i.i.i.i81.4, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit83.thread, label %scalar.ph.5

scalar.ph.5:                                      ; preds = %scalar.ph.4
  %i.kn = getelementptr inbounds nuw i8, ptr %i.iy, i64 120
  %i.ko = getelementptr inbounds nuw i8, ptr %12, i64 120
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !189
  store ptr %i.kp, ptr %i.kn, align 8, !tbaa !189
  %exitcond.not.i.i.i.i.i.i.i81.5 = icmp eq i64 %i.jo, 6
  br i1 %exitcond.not.i.i.i.i.i.i.i81.5, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit83.thread, label %scalar.ph.6

scalar.ph.6:                                      ; preds = %scalar.ph.5
  %i.kq = getelementptr inbounds nuw i8, ptr %i.iy, i64 128
  %i.kr = getelementptr inbounds nuw i8, ptr %12, i64 128
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !189
  store ptr %i.ks, ptr %i.kq, align 8, !tbaa !189
  %exitcond.not.i.i.i.i.i.i.i81.6 = icmp eq i64 %i.jo, 7
  br i1 %exitcond.not.i.i.i.i.i.i.i81.6, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit83.thread, label %scalar.ph.7

scalar.ph.7:                                      ; preds = %scalar.ph.6
  %i.kt = getelementptr inbounds nuw i8, ptr %i.iy, i64 136
  %i.ku = getelementptr inbounds nuw i8, ptr %12, i64 136
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !189
  store ptr %i.kv, ptr %i.kt, align 8, !tbaa !189
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit83.thread

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit83.thread: ; preds = %vector.ph, %vector.body.1, %scalar.ph, %scalar.ph.1, %scalar.ph.2, %scalar.ph.3, %scalar.ph.4, %scalar.ph.5, %scalar.ph.6, %scalar.ph.7, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i74
  store i64 0, ptr %i.ih, align 8, !tbaa !110
  store ptr null, ptr %i.ig, align 8, !tbaa !103
  %i.kw = getelementptr inbounds nuw i8, ptr %i.iy, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.kw, ptr noundef nonnull align 8 dereferenceable(12) %i.it, i64 12, i1 false)
  %i.kx = getelementptr inbounds nuw i8, ptr %i.iy, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(696) %i.kx, ptr noundef nonnull align 8 dereferenceable(696) %i.iv, i64 696, i1 false), !tbaa.struct !336
  %i.ky = load ptr, ptr %i.ix, align 8, !tbaa !400
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 872
  store ptr %i.kz, ptr %i.ix, align 8, !tbaa !400
  store i64 0, ptr %i.ii, align 8, !tbaa !109
  br label %_ZN4pbrt11SceneEntityD2Ev.exit.i85

bb.ak:                                            ; preds = %bb.ah
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 1160
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.la, ptr %i.iy, ptr noundef nonnull align 8 dereferenceable(872) %12)
          to label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit83 unwind label %bb.an

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit83: ; preds = %bb.ak
  %.pre = load ptr, ptr %i.ig, align 8, !tbaa !103 ; 2 uses
  store i64 0, ptr %i.ii, align 8, !tbaa !109
  %.not.i.i.i.i.i.i.i84 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i.i.i.i.i84, label %_ZN4pbrt11SceneEntityD2Ev.exit.i85, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit83
  %i.lb = load i64, ptr %i.ih, align 8, !tbaa !110
  %i.lc = shl i64 %i.lb, 3
  %i.ld = load ptr, ptr %i.ie, align 8, !tbaa !111 ; 2 uses
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !72
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 24
  %i.lg = load ptr, ptr %i.lf, align 8
  invoke void %i.lg(ptr noundef nonnull align 8 dereferenceable(8) %i.ld, ptr noundef nonnull %.pre, i64 noundef %i.lc, i64 noundef 8)
          to label %_ZN4pbrt11SceneEntityD2Ev.exit.i85 unwind label %bb.am, !inline_history !3

bb.am:                                            ; preds = %bb.al
  %i.lh = landingpad { ptr, i32 }
          catch ptr null
  %i.li = extractvalue { ptr, i32 } %i.lh, 0
  call void @__clang_call_terminate(ptr %i.li) #31
  unreachable

_ZN4pbrt11SceneEntityD2Ev.exit.i85:               ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit83.thread, %bb.al, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit83
  %i.lj = load ptr, ptr %12, align 8, !tbaa !89   ; 2 uses
  %i.lk = icmp eq ptr %i.lj, %i.hr
  br i1 %i.lk, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86
end_hunk_11
begin_hunk_12_@_ZN4pbrt10BasicScene18AddSpectrumTextureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_22TransformedSceneEntityE:bb.a
  %or.cond203 = icmp ult i64 %i.mt, -8
  br i1 %or.cond203, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit102.thread, label %.lr.ph.i.i.i.i.i.i.i97

.lr.ph.i.i.i.i.i.i.i97:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i93
  %i.mu = getelementptr inbounds nuw i8, ptr %i.lq, i64 80 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %13, i64 80 ; 2 uses
  %i.mw = sub i64 %i.d, %i.lr
  %diff.check208 = icmp ugt i64 %i.mw, -32
  br i1 %diff.check208, label %scalar.ph206, label %vector.ph209

vector.ph209:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i97
  %trip.count.minus.1212 = add nsw i64 %i.mp, -1
  %broadcast.splatinsert213 = insertelement <4 x i64> poison, i64 %trip.count.minus.1212, i64 0
  %broadcast.splat214 = shufflevector <4 x i64> %broadcast.splatinsert213, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %n.rnd.up210 = add nuw nsw i64 %i.mp, 3
  %n.vec211 = and i64 %n.rnd.up210, 28
  %i.mx = icmp uge <4 x i64> %broadcast.splat214, <i64 0, i64 1, i64 2, i64 3>
  %unmaskedload244 = load <4 x ptr>, ptr %i.mv, align 8, !tbaa !189
  call void @llvm.masked.store.v4p0.p0(<4 x ptr> %unmaskedload244, ptr align 8 %i.mu, <4 x i1> %i.mx), !tbaa !189
  %i.my = icmp eq i64 %n.vec211, 4
  br i1 %i.my, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit102.thread, label %vector.body215.1

vector.body215.1:                                 ; preds = %vector.ph209
  %i.mz = icmp ugt <4 x i64> %broadcast.splat214, <i64 3, i64 4, i64 5, i64 6>
  %i.na = getelementptr inbounds nuw i8, ptr %i.lq, i64 112
  %i.nb = getelementptr inbounds nuw i8, ptr %13, i64 112
  %unmaskedload245 = load <4 x ptr>, ptr %i.nb, align 8, !tbaa !189
  call void @llvm.masked.store.v4p0.p0(<4 x ptr> %unmaskedload245, ptr align 8 %i.na, <4 x i1> %i.mz), !tbaa !189
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit102.thread

scalar.ph206:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i97
  %i.nc = load ptr, ptr %i.mv, align 8, !tbaa !189
  store ptr %i.nc, ptr %i.mu, align 8, !tbaa !189
  %exitcond.not.i.i.i.i.i.i.i100 = icmp eq i64 %i.mp, 1
  br i1 %exitcond.not.i.i.i.i.i.i.i100, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit102.thread, label %scalar.ph206.1

scalar.ph206.1:                                   ; preds = %scalar.ph206
  %i.nd = getelementptr inbounds nuw i8, ptr %i.lq, i64 88
  %i.ne = getelementptr inbounds nuw i8, ptr %13, i64 88
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !189
  store ptr %i.nf, ptr %i.nd, align 8, !tbaa !189
  %exitcond.not.i.i.i.i.i.i.i100.1 = icmp eq i64 %i.mp, 2
  br i1 %exitcond.not.i.i.i.i.i.i.i100.1, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit102.thread, label %scalar.ph206.2

scalar.ph206.2:                                   ; preds = %scalar.ph206.1
  %i.ng = getelementptr inbounds nuw i8, ptr %i.lq, i64 96
  %i.nh = getelementptr inbounds nuw i8, ptr %13, i64 96
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !189
  store ptr %i.ni, ptr %i.ng, align 8, !tbaa !189
  %exitcond.not.i.i.i.i.i.i.i100.2 = icmp eq i64 %i.mp, 3
  br i1 %exitcond.not.i.i.i.i.i.i.i100.2, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit102.thread, label %scalar.ph206.3

scalar.ph206.3:                                   ; preds = %scalar.ph206.2
  %i.nj = getelementptr inbounds nuw i8, ptr %i.lq, i64 104
  %i.nk = getelementptr inbounds nuw i8, ptr %13, i64 104
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !189
  store ptr %i.nl, ptr %i.nj, align 8, !tbaa !189
  %exitcond.not.i.i.i.i.i.i.i100.3 = icmp eq i64 %i.mp, 4
  br i1 %exitcond.not.i.i.i.i.i.i.i100.3, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit102.thread, label %scalar.ph206.4

scalar.ph206.4:                                   ; preds = %scalar.ph206.3
  %i.nm = getelementptr inbounds nuw i8, ptr %i.lq, i64 112
  %i.nn = getelementptr inbounds nuw i8, ptr %13, i64 112
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !189
  store ptr %i.no, ptr %i.nm, align 8, !tbaa !189
  %exitcond.not.i.i.i.i.i.i.i100.4 = icmp eq i64 %i.mp, 5
  br i1 %exitcond.not.i.i.i.i.i.i.i100.4, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit102.thread, label %scalar.ph206.5

scalar.ph206.5:                                   ; preds = %scalar.ph206.4
  %i.np = getelementptr inbounds nuw i8, ptr %i.lq, i64 120
  %i.nq = getelementptr inbounds nuw i8, ptr %13, i64 120
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !189
  store ptr %i.nr, ptr %i.np, align 8, !tbaa !189
  %exitcond.not.i.i.i.i.i.i.i100.5 = icmp eq i64 %i.mp, 6
  br i1 %exitcond.not.i.i.i.i.i.i.i100.5, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit102.thread, label %scalar.ph206.6

scalar.ph206.6:                                   ; preds = %scalar.ph206.5
  %i.ns = getelementptr inbounds nuw i8, ptr %i.lq, i64 128
  %i.nt = getelementptr inbounds nuw i8, ptr %13, i64 128
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !189
  store ptr %i.nu, ptr %i.ns, align 8, !tbaa !189
  %exitcond.not.i.i.i.i.i.i.i100.6 = icmp eq i64 %i.mp, 7
  br i1 %exitcond.not.i.i.i.i.i.i.i100.6, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit102.thread, label %scalar.ph206.7

scalar.ph206.7:                                   ; preds = %scalar.ph206.6
  %i.nv = getelementptr inbounds nuw i8, ptr %i.lq, i64 136
  %i.nw = getelementptr inbounds nuw i8, ptr %13, i64 136
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !189
  store ptr %i.nx, ptr %i.nv, align 8, !tbaa !189
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit102.thread

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit102.thread: ; preds = %vector.ph209, %vector.body215.1, %scalar.ph206, %scalar.ph206.1, %scalar.ph206.2, %scalar.ph206.3, %scalar.ph206.4, %scalar.ph206.5, %scalar.ph206.6, %scalar.ph206.7, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i93
  store i64 0, ptr %i.mo, align 8, !tbaa !110
  store ptr null, ptr %i.mr, align 8, !tbaa !103
  %i.ny = getelementptr inbounds nuw i8, ptr %i.lq, i64 160
  %i.nz = getelementptr inbounds nuw i8, ptr %13, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ny, ptr noundef nonnull align 8 dereferenceable(12) %i.nz, i64 12, i1 false)
  %i.oa = getelementptr inbounds nuw i8, ptr %i.lq, i64 176
  %i.ob = getelementptr inbounds nuw i8, ptr %13, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(696) %i.oa, ptr noundef nonnull align 8 dereferenceable(696) %i.ob, i64 696, i1 false), !tbaa.struct !336
  %i.oc = load ptr, ptr %i.lp, align 8, !tbaa !400
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 872
  store ptr %i.od, ptr %i.lp, align 8, !tbaa !400
  %i.oe = getelementptr inbounds nuw i8, ptr %13, i64 152
  store i64 0, ptr %i.oe, align 8, !tbaa !109
  br label %_ZN4pbrt11SceneEntityD2Ev.exit.i104

bb.aq:                                            ; preds = %_ZSt9make_pairIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN4pbrt22TransformedSceneEntityEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSB_INSC_IT0_E4typeEE6__typeEEOSD_OSI_.exit
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 1184
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.of, ptr %i.lq, ptr noundef nonnull align 8 dereferenceable(872) %13)
          to label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit102 unwind label %bb.bj

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit102: ; preds = %bb.aq
  %.phi.trans.insert129 = getelementptr inbounds nuw i8, ptr %13, i64 72
  %.pre130 = load ptr, ptr %.phi.trans.insert129, align 8, !tbaa !103 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %13, i64 152
  store i64 0, ptr %i.og, align 8, !tbaa !109
  %.not.i.i.i.i.i.i.i103 = icmp eq ptr %.pre130, null
  br i1 %.not.i.i.i.i.i.i.i103, label %_ZN4pbrt11SceneEntityD2Ev.exit.i104, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit102
  %i.oh = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.oi = getelementptr inbounds nuw i8, ptr %13, i64 144
  %i.oj = load i64, ptr %i.oi, align 8, !tbaa !110
  %i.ok = shl i64 %i.oj, 3
  %i.ol = load ptr, ptr %i.oh, align 8, !tbaa !111 ; 2 uses
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !72
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 24
  %i.oo = load ptr, ptr %i.on, align 8
  invoke void %i.oo(ptr noundef nonnull align 8 dereferenceable(8) %i.ol, ptr noundef nonnull %.pre130, i64 noundef %i.ok, i64 noundef 8)
          to label %_ZN4pbrt11SceneEntityD2Ev.exit.i104 unwind label %bb.as, !inline_history !3

bb.as:                                            ; preds = %bb.ar
  %i.op = landingpad { ptr, i32 }
          catch ptr null
  %i.oq = extractvalue { ptr, i32 } %i.op, 0
  call void @__clang_call_terminate(ptr %i.oq) #31
  unreachable

_ZN4pbrt11SceneEntityD2Ev.exit.i104:              ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit102.thread, %bb.ar, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE9push_backEOS9_.exit102
  %i.or = load ptr, ptr %13, align 8, !tbaa !89   ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ot = icmp eq ptr %i.or, %i.os
  br i1 %i.ot, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i105: ; preds = %_ZN4pbrt11SceneEntityD2Ev.exit.i104
  %i.ou = load i64, ptr %i.os, align 8, !tbaa !88
  %i.ov = add i64 %i.ou, 1
  call void @_ZdlPvm(ptr noundef %i.or, i64 noundef %i.ov) #33
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEED2Ev.exit107

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEED2Ev.exit107: ; preds = %_ZN4pbrt11SceneEntityD2Ev.exit.i104, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i105
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.ow = ptrtoint ptr %0 to i64
  store i64 %i.ow, ptr %3, align 8, !tbaa !403, !alias.scope !960
  %i.ox = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  invoke void @_ZNSt10_Head_baseILm0EN4pbrt22TransformedSceneEntityELb0EEC2IRS1_EEOT_(ptr noundef nonnull align 8 dereferenceable(840) %i.ox, ptr noundef nonnull align 8 dereferenceable(840) %2)
          to label %.noexc109 unwind label %bb.bl

.noexc109:                                        ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEED2Ev.exit107
  %i.oy = invoke noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #35
          to label %bb.at unwind label %bb.ax     ; 15 uses

bb.at:                                            ; preds = %.noexc109
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4, i8 0, i64 24, i1 false)
  %i.oz = invoke noalias noundef nonnull dereferenceable(848) ptr @_Znwm(i64 noundef 848) #35
          to label %.noexc.i.i unwind label %.body.i ; 9 uses

.noexc.i.i:                                       ; preds = %bb.at
  %i.pa = load i64, ptr %3, align 8, !tbaa !403
  store i64 %i.pa, ptr %i.oz, align 8, !tbaa !403
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oz, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(840) %i.pb, ptr noundef nonnull align 8 dereferenceable(840) %i.ox, i64 32, i1 false)
  %i.pc = getelementptr inbounds nuw i8, ptr %i.oz, i64 40
  %i.pd = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.pe = load i64, ptr %i.pd, align 8, !tbaa !102
  store i64 %i.pe, ptr %i.pc, align 8, !tbaa !102
  %i.pf = getelementptr inbounds nuw i8, ptr %i.oz, i64 48
  %i.pg = getelementptr inbounds nuw i8, ptr %i.oz, i64 120
  %i.ph = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 3 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 3 uses
  %i.pj = load i64, ptr %i.ph, align 8, !tbaa !109 ; 3 uses
  %i.pk = load <2 x i64>, ptr %i.pi, align 8, !tbaa !198
  store <2 x i64> %i.pk, ptr %i.pg, align 8, !tbaa !198
  %i.pl = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !103
  store ptr %i.pm, ptr %i.pf, align 8, !tbaa !103
  %i.pn = icmp ult i64 %i.pj, 9
  br i1 %i.pn, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.au

.preheader.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.noexc.i.i
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.pj, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %i.po = getelementptr inbounds nuw i8, ptr %i.oz, i64 56
  %i.pp = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.pq = shl nuw nsw i64 %i.pj, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.po, ptr nonnull align 8 %i.pp, i64 %i.pq, i1 false), !tbaa !189
  br label %_ZNSt14_Function_baseD2Ev.exit.i

bb.au:                                            ; preds = %.noexc.i.i
  store i64 0, ptr %i.ph, align 8, !tbaa !109
  br label %_ZNSt14_Function_baseD2Ev.exit.i

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %bb.au
  store i64 0, ptr %i.pi, align 8, !tbaa !110
  store ptr null, ptr %i.pl, align 8, !tbaa !103
  %i.pr = getelementptr inbounds nuw i8, ptr %i.oz, i64 136
  %i.ps = getelementptr inbounds nuw i8, ptr %3, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.pr, ptr noundef nonnull align 8 dereferenceable(12) %i.ps, i64 12, i1 false)
  %i.pt = getelementptr inbounds nuw i8, ptr %i.oz, i64 152
  %i.pu = getelementptr inbounds nuw i8, ptr %3, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(696) %i.pt, ptr noundef nonnull align 8 dereferenceable(696) %i.pu, i64 696, i1 false), !tbaa.struct !336
  %i.pv = getelementptr inbounds nuw i8, ptr %i.oy, i64 8
  store i32 0, ptr %i.pv, align 8, !tbaa !311
  %i.pw = getelementptr inbounds nuw i8, ptr %i.oy, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.pw, i8 0, i64 17, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4pbrt8AsyncJobINS_15SpectrumTextureEEE, i64 16), ptr %i.oy, align 8, !tbaa !72
  %i.px = getelementptr inbounds nuw i8, ptr %i.oy, i64 40
  %i.py = getelementptr inbounds nuw i8, ptr %i.oy, i64 64
  store ptr @"_ZNSt17_Function_handlerIFN4pbrt15SpectrumTextureEvESt5_BindIFZNS0_10BasicScene18AddSpectrumTextureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_22TransformedSceneEntityEE3$_0SB_EEE9_M_invokeERKSt9_Any_data", ptr %i.py, align 8, !tbaa !412
  %i.pz = getelementptr inbounds nuw i8, ptr %i.oy, i64 56
  store ptr %i.oz, ptr %i.px, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.oy, i64 48
  %i.qa = load i64, ptr %.sroa.4, align 8, !tbaa !88
  store i64 %i.qa, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !88
  store ptr @"_ZNSt17_Function_handlerIFN4pbrt15SpectrumTextureEvESt5_BindIFZNS0_10BasicScene18AddSpectrumTextureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_22TransformedSceneEntityEE3$_0SB_EEE10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation", ptr %i.pz, align 8, !tbaa !314
  %i.qb = getelementptr inbounds nuw i8, ptr %i.oy, i64 72
  store i8 0, ptr %i.qb, align 8, !tbaa !415
  %i.qc = getelementptr inbounds nuw i8, ptr %i.oy, i64 88
  store i8 0, ptr %i.qc, align 8, !tbaa !416
  %i.qd = getelementptr inbounds nuw i8, ptr %i.oy, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.qd, i8 0, i64 40, i1 false)
  %i.qe = getelementptr inbounds nuw i8, ptr %i.oy, i64 136
  call void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.qe) #32
  %i.qf = invoke noundef i32 @_ZN4pbrt14RunningThreadsEv()
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.qg = icmp eq i32 %i.qf, 1
  br i1 %i.qg, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN4pbrt8AsyncJobINS_15SpectrumTextureEE6DoWorkEv(ptr noundef nonnull align 8 dereferenceable(184) %i.oy)
          to label %_ZNSt11unique_lockISt5mutexED2Ev.exit15.i unwind label %bb.ax

.body.i:                                          ; preds = %bb.at
  %i.qh = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.oy, i64 noundef 184) #33
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit18.i

bb.ax:                                            ; preds = %bb.aw, %_ZNSt14_Function_baseD2Ev.exit.i, %.noexc109
  %i.qi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit18.i

bb.ay:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.qj = load ptr, ptr @_ZN4pbrt11ParallelJob10threadPoolE, align 8, !tbaa !322
  invoke void @_ZN4pbrt10ThreadPool12AddToJobListEPNS_11ParallelJobE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_lock") align 8 %4, ptr noundef nonnull align 8 dereferenceable(128) %i.qj, ptr noundef nonnull %i.oy)
          to label %bb.ba unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.qk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit18.i

bb.ba:                                            ; preds = %bb.ay
  %i.ql = load ptr, ptr %4, align 8, !tbaa !325   ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.qn = load i8, ptr %i.qm, align 8, !tbaa !326, !range !211, !noundef !212
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.qo = trunc nuw i8 %i.qn to i1
  %.not.i.i14.i = icmp ne ptr %i.ql, null
  %or.cond.not.i = select i1 %i.qo, i1 %.not.i.i14.i, i1 false
  br i1 %or.cond.not.i, label %bb.bb, label %_ZNSt11unique_lockISt5mutexED2Ev.exit15.i

bb.bb:                                            ; preds = %bb.ba
  %i.qp = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ql) #32 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit15.i

_ZNSt11unique_lockISt5mutexED2Ev.exit15.i:        ; preds = %bb.bb, %bb.ba, %bb.aw
  store i64 0, ptr %i.ph, align 8, !tbaa !109
  %i.qq = load ptr, ptr %i.pl, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.qq, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit15.i
  %i.qr = load i64, ptr %i.pi, align 8, !tbaa !110
  %i.qs = shl i64 %i.qr, 3
  %i.qt = load ptr, ptr %i.pd, align 8, !tbaa !111 ; 2 uses
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !72
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 24
  %i.qw = load ptr, ptr %i.qv, align 8
  invoke void %i.qw(ptr noundef nonnull align 8 dereferenceable(8) %i.qt, ptr noundef nonnull %i.qq, i64 noundef %i.qs, i64 noundef 8)
          to label %bb.be unwind label %bb.bd, !inline_history !3

bb.bd:                                            ; preds = %bb.bc
  %i.qx = landingpad { ptr, i32 }
          catch ptr null
  %i.qy = extractvalue { ptr, i32 } %i.qx, 0
  call void @__clang_call_terminate(ptr %i.qy) #31
  unreachable

_ZNSt11unique_lockISt5mutexED2Ev.exit18.i:        ; preds = %bb.az, %bb.ax, %.body.i
  %.pn.pn.i = phi { ptr, i32 } [ %i.qk, %bb.az ], [ %i.qh, %.body.i ], [ %i.qi, %bb.ax ]
  call fastcc void @"_ZNSt5_BindIFZN4pbrt10BasicScene18AddSpectrumTextureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_22TransformedSceneEntityEE3$_0S8_EED2Ev"(ptr noundef nonnull align 8 dead_on_return(848) dereferenceable(848) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

bb.be:                                            ; preds = %bb.bc, %_ZNSt11unique_lockISt5mutexED2Ev.exit15.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 1304
  %i.ra = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4pbrt8AsyncJobINS6_15SpectrumTextureEEESt4lessIS5_ESaISt4pairIKS5_SA_EEEixERSE_(ptr noundef nonnull align 8 dereferenceable(48) %i.qz, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.bf unwind label %bb.bl

bb.bf:                                            ; preds = %bb.be
  store ptr %i.oy, ptr %i.ra, align 8, !tbaa !961
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEED2Ev.exit88, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i59, %bb.o
  %i.rb = load ptr, ptr %7, align 8, !tbaa !89    ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.rd = icmp eq ptr %i.rb, %i.rc
  br i1 %i.rd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112: ; preds = %bb.bg
  %i.re = load i64, ptr %i.rc, align 8, !tbaa !88
  %i.rf = add i64 %i.re, 1
  call void @_ZdlPvm(ptr noundef %i.rb, i64 noundef %i.rf) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %bb.bh

bb.bh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEED2Ev.exit
  %i.rg = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #32 ; 0 uses
  ret void

bb.bi:                                            ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit
  %i.rh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bj:                                            ; preds = %bb.aq
  %i.ri = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEED2Ev(ptr noundef nonnull align 8 dead_on_return(872) dereferenceable(872) %13) #32
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.pn16 = phi { ptr, i32 } [ %i.ri, %bb.bj ], [ %i.rh, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

bb.bl:                                            ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEED2Ev.exit107, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, %.noexc.i52, %bb.n, %bb.be
  %i.rj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %bb.aa, %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i57, %_ZNSt11unique_lockISt5mutexED2Ev.exit18.i, %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60, %bb.bk, %bb.an
  %.pn20 = phi { ptr, i32 } [ %.pn.pn.i, %_ZNSt11unique_lockISt5mutexED2Ev.exit18.i ], [ %i.ln, %bb.an ], [ %i.gp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60 ], [ %.pn16, %bb.bk ], [ %i.fw, %bb.x ], [ %i.rj, %bb.bl ], [ %i.gh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i ], [ %i.fw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i57 ], [ %i.gp, %bb.aa ] ; 2 uses
  %i.rk = load ptr, ptr %7, align 8, !tbaa !89    ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.rm = icmp eq ptr %i.rk, %i.rl
  br i1 %i.rm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62
  %i.rn = load i64, ptr %i.rl, align 8, !tbaa !88
  %i.ro = add i64 %i.rn, 1
  call void @_ZdlPvm(ptr noundef %i.rk, i64 noundef %i.ro) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %.pn20.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50 ], [ %.pn20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115 ], [ %.pn20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %bb.bm

bb.bm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, %bb.k
  %.pn23.pn = phi { ptr, i32 } [ %i.do, %bb.k ], [ %.pn20.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117 ]
  %i.rp = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #32 ; 0 uses
  resume { ptr, i32 } %.pn23.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt17BasicSceneBuilder8MaterialERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorISB_EEEENS_7FileLocE(ptr noundef nonnull align 64 dereferenceable(3544) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef align 8 captures(none) dereferenceable(96) %2, ptr noundef byval(%"struct.pbrt::FileLoc") align 8 %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.pbrt::ParameterDictionary", align 8 ; 12 uses
  %5 = alloca %"class.pbrt::InlinedVector", align 8 ; 8 uses
  %6 = alloca %"struct.pbrt::SceneEntity", align 8 ; 7 uses
  %7 = alloca %"class.pbrt::ParameterDictionary", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !166
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN4pbrt9ErrorExitIJRA9_KcEEEvPKNS_7FileLocEPS1_DpOT_(ptr noundef nonnull %3, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(9) @.str.88) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.d = load i64, ptr %2, align 8, !tbaa !102
  store i64 %i.d, ptr %5, align 8, !tbaa !102
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.j = load i64, ptr %i.h, align 8, !tbaa !109  ; 3 uses
  %i.k = load <2 x i64>, ptr %i.i, align 8, !tbaa !198
  store <2 x i64> %i.k, ptr %i.f, align 8, !tbaa !198
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !103
  store ptr %i.m, ptr %i.e, align 8, !tbaa !103
  %i.n = icmp ult i64 %i.j, 9
  br i1 %i.n, label %.preheader.i, label %bb.d

.preheader.i:                                     ; preds = %bb.c
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = shl nuw nsw i64 %i.j, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.p, i64 %i.q, i1 false), !tbaa !189
  br label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %i.h, align 8, !tbaa !109
  br label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit

_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit: ; preds = %.lr.ph.i, %.preheader.i, %bb.d
  store i64 0, ptr %i.i, align 8, !tbaa !110
  store ptr null, ptr %i.l, align 8, !tbaa !103
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !213
  invoke void @_ZN4pbrt19ParameterDictionaryC1ENS_13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS3_EEEERKS8_PKNS_13RGBColorSpaceE(ptr noundef nonnull align 8 dereferenceable(108) %4, ptr nofree noundef nonnull align 8 dereferenceable(96) %5, ptr noundef nonnull align 8 dereferenceable(96) %i.r, ptr noundef %i.t)
          to label %bb.e unwind label %bb.q

bb.e:                                             ; preds = %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit
  store i64 0, ptr %i.g, align 8, !tbaa !109
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !103  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i64, ptr %i.f, align 8, !tbaa !110
  %i.w = shl i64 %i.v, 3
  %i.x = load ptr, ptr %5, align 8, !tbaa !111    ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !72
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull %i.u, i64 noundef %i.w, i64 noundef 8)
          to label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit unwind label %bb.g, !inline_history !3

bb.g:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #31
  unreachable

_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit: ; preds = %bb.e, %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 16, !tbaa !165
  %i.af = load i64, ptr %4, align 8, !tbaa !102
  store i64 %i.af, ptr %7, align 8, !tbaa !102
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 3 uses
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !109 ; 3 uses
  %i.am = load <2 x i64>, ptr %i.ak, align 8, !tbaa !198
  store <2 x i64> %i.am, ptr %i.ah, align 8, !tbaa !198
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !103
  store ptr %i.ao, ptr %i.ag, align 8, !tbaa !103
  %i.ap = icmp ult i64 %i.al, 9
  br i1 %i.ap, label %.preheader.i.i, label %bb.h

.preheader.i.i:                                   ; preds = %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit
  %.not.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.as = shl nuw nsw i64 %i.al, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aq, ptr nonnull align 8 %i.ar, i64 %i.as, i1 false), !tbaa !189
  br label %.loopexit

bb.h:                                             ; preds = %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit
  store i64 0, ptr %i.aj, align 8, !tbaa !109
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.h, %.preheader.i.i
  store i64 0, ptr %i.ak, align 8, !tbaa !110
  store ptr null, ptr %i.an, align 8, !tbaa !103
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.at, ptr noundef nonnull align 8 dereferenceable(12) %i.au, i64 12, i1 false)
  invoke void @_ZN4pbrt11SceneEntityC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_19ParameterDictionaryENS_7FileLocE(ptr noundef nonnull align 8 dereferenceable(144) %6, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef nonnull align 8 dereferenceable(112) %7, ptr noundef nonnull byval(%"struct.pbrt::FileLoc") align 8 %3)
          to label %bb.i unwind label %bb.r

bb.i:                                             ; preds = %.loopexit
  %i.av = invoke noundef i32 @_ZN4pbrt10BasicScene11AddMaterialENS_11SceneEntityE(ptr noundef nonnull align 8 dereferenceable(1520) %i.ae, ptr nofree noundef nonnull align 8 dereferenceable(144) %6)
          to label %bb.j unwind label %bb.s

bb.j:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %i.av, ptr %i.aw, align 32, !tbaa !366
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i64 0, ptr %i.ax, align 8, !tbaa !109
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4pbrt11SceneEntityD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !110
  %i.bd = shl i64 %i.bc, 3
  %i.be = load ptr, ptr %i.ba, align 8, !tbaa !111 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !72
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  invoke void %i.bh(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef nonnull %i.az, i64 noundef %i.bd, i64 noundef 8)
          to label %_ZN4pbrt11SceneEntityD2Ev.exit unwind label %bb.l, !inline_history !3

bb.l:                                             ; preds = %bb.k
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #31
  unreachable

_ZN4pbrt11SceneEntityD2Ev.exit:                   ; preds = %bb.j, %bb.k
  store i64 0, ptr %i.ai, align 8, !tbaa !109
  %i.bk = load ptr, ptr %i.ag, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.i, label %_ZN4pbrt19ParameterDictionaryD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4pbrt11SceneEntityD2Ev.exit
  %i.bl = load i64, ptr %i.ah, align 8, !tbaa !110
  %i.bm = shl i64 %i.bl, 3
  %i.bn = load ptr, ptr %7, align 8, !tbaa !111   ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !72
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  invoke void %i.bq(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr noundef nonnull %i.bk, i64 noundef %i.bm, i64 noundef 8)
          to label %_ZN4pbrt19ParameterDictionaryD2Ev.exit unwind label %bb.n, !inline_history !3

bb.n:                                             ; preds = %bb.m
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #31
  unreachable

_ZN4pbrt19ParameterDictionaryD2Ev.exit:           ; preds = %_ZN4pbrt11SceneEntityD2Ev.exit, %bb.m
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %i.bu, align 16, !tbaa !87
  %i.bv = load ptr, ptr %i.bt, align 8, !tbaa !89
  store i8 0, ptr %i.bv, align 1, !tbaa !88
  store i64 0, ptr %i.aj, align 8, !tbaa !109
  %i.bw = load ptr, ptr %i.an, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i.i9 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i.i9, label %_ZN4pbrt19ParameterDictionaryD2Ev.exit10, label %bb.o

bb.o:                                             ; preds = %_ZN4pbrt19ParameterDictionaryD2Ev.exit
  %i.bx = load i64, ptr %i.ak, align 8, !tbaa !110
  %i.by = shl i64 %i.bx, 3
  %i.bz = load ptr, ptr %4, align 8, !tbaa !111   ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !72
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8
  invoke void %i.cc(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr noundef nonnull %i.bw, i64 noundef %i.by, i64 noundef 8)
          to label %_ZN4pbrt19ParameterDictionaryD2Ev.exit10 unwind label %bb.p, !inline_history !3

bb.p:                                             ; preds = %bb.o
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  call void @__clang_call_terminate(ptr %i.ce) #31
  unreachable

_ZN4pbrt19ParameterDictionaryD2Ev.exit10:         ; preds = %_ZN4pbrt19ParameterDictionaryD2Ev.exit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret void

bb.q:                                             ; preds = %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %5) #32
  br label %bb.u

bb.r:                                             ; preds = %.loopexit
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %bb.i
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt11SceneEntityD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %6) #32
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn = phi { ptr, i32 } [ %i.ch, %bb.s ], [ %i.cg, %bb.r ]
  call void @_ZN4pbrt19ParameterDictionaryD2Ev(ptr noundef nonnull align 8 dead_on_return(108) dereferenceable(108) %7) #32
  call void @_ZN4pbrt19ParameterDictionaryD2Ev(ptr noundef nonnull align 8 dead_on_return(108) dereferenceable(108) %4) #32
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn, %bb.t ], [ %i.cf, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt9ErrorExitIJRA9_KcEEEvPKNS_7FileLocEPS1_DpOT_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(9) %2) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !85, !alias.scope !964
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !87, !alias.scope !964
  store i8 0, ptr %i.a, align 8, !tbaa !88, !alias.scope !964
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRA9_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef nonnull align 8 %3, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(9) %2)
          to label %_ZN4pbrt12StringPrintfIJRA9_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %3, align 8, !tbaa !89, !alias.scope !964 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !88, !alias.scope !964
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #33
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRA9_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %3, align 8, !tbaa !89
  invoke void @_ZN4pbrt9ErrorExitEPKNS_7FileLocEPKc(ptr noundef %0, ptr noundef %i.h) #34
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA9_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA9_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %3, align 8, !tbaa !89     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !88
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt17BasicSceneBuilder17MakeNamedMaterialERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorISB_EEEENS_7FileLocE(ptr noundef nonnull align 64 dereferenceable(3544) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef align 8 captures(none) dereferenceable(96) %2, ptr noundef byval(%"struct.pbrt::FileLoc") align 8 %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.pbrt::ParameterDictionary", align 8 ; 15 uses
  %7 = alloca %"class.pbrt::InlinedVector", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"struct.pbrt::SceneEntity", align 8 ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.pbrt::ParameterDictionary", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.c, ptr %5, align 8, !tbaa !85
  %i.d = load ptr, ptr %1, align 8, !tbaa !89     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !87   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store i64 %i.f, ptr %i.b, align 8, !tbaa !198
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %5, align 8, !tbaa !89
  %i.i = load i64, ptr %i.b, align 8, !tbaa !198
  store i64 %i.i, ptr %i.c, align 8, !tbaa !88
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !88
  store i8 %i.k, ptr %i.j, align 1, !tbaa !88
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.b, align 8, !tbaa !198  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !87
  %i.n = load ptr, ptr %5, align 8, !tbaa !89
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  invoke void @_ZN4pbrt13NormalizeUTF8ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nofree noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.p = load ptr, ptr %5, align 8, !tbaa !89     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.c
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.r = load i64, ptr %i.c, align 8, !tbaa !88
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !166
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.e, label %bb.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZN4pbrt9ErrorExitIJRA18_KcEEEvPKNS_7FileLocEPS1_DpOT_(ptr noundef nonnull %3, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(18) @.str.89) #34
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = load ptr, ptr %5, align 8, !tbaa !89     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.c
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.g
  %i.z = load i64, ptr %i.c, align 8, !tbaa !88
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.sink.split

bb.h:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.ab = load i64, ptr %2, align 8, !tbaa !102
  store i64 %i.ab, ptr %7, align 8, !tbaa !102
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !109 ; 3 uses
  %i.ai = load <2 x i64>, ptr %i.ag, align 8, !tbaa !198
  store <2 x i64> %i.ai, ptr %i.ad, align 8, !tbaa !198
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !103
  store ptr %i.ak, ptr %i.ac, align 8, !tbaa !103
  %i.al = icmp ult i64 %i.ah, 9
  br i1 %i.al, label %.preheader.i, label %bb.j

.preheader.i:                                     ; preds = %bb.i
  %.not.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i, label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ao = shl nuw nsw i64 %i.ah, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.am, ptr nonnull align 8 %i.an, i64 %i.ao, i1 false), !tbaa !189
  br label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit

bb.j:                                             ; preds = %bb.i
  store i64 0, ptr %i.af, align 8, !tbaa !109
  br label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit

_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit: ; preds = %.lr.ph.i, %.preheader.i, %bb.j
  store i64 0, ptr %i.ag, align 8, !tbaa !110
  store ptr null, ptr %i.aj, align 8, !tbaa !103
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !213
  invoke void @_ZN4pbrt19ParameterDictionaryC1ENS_13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS3_EEEERKS8_PKNS_13RGBColorSpaceE(ptr noundef nonnull align 8 dereferenceable(108) %6, ptr nofree noundef nonnull align 8 dereferenceable(96) %7, ptr noundef nonnull align 8 dereferenceable(96) %i.ap, ptr noundef %i.ar)
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit
  store i64 0, ptr %i.ae, align 8, !tbaa !109
  %i.as = load ptr, ptr %i.ac, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i, label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = load i64, ptr %i.ad, align 8, !tbaa !110
  %i.au = shl i64 %i.at, 3
  %i.av = load ptr, ptr %7, align 8, !tbaa !111   ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !72
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8
  invoke void %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull %i.as, i64 noundef %i.au, i64 noundef 8)
          to label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit unwind label %bb.m, !inline_history !3

bb.m:                                             ; preds = %bb.l
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #31
  unreachable

_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit: ; preds = %bb.k, %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1576
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1592
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !168 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1584 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not10.i.i.i, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !87 ; 4 uses
  %i.bh = load ptr, ptr %4, align 8               ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !87 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bg, i64 %i.bj) ; 2 uses
  %i.bk = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.bk, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.n
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !89
  %i.bn = call i32 @memcmp(ptr noundef %i.bm, ptr noundef %i.bh, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.bn, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.n
  %i.bo = sub i64 %i.bj, %i.bg
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.bo, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.bn, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.bp = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.bp, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.bp, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !216 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i, label %bb.n, !llvm.loop !13

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.bq = icmp eq ptr %.19.i.i.i, %i.be
  br i1 %i.bq, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %bb.o

bb.o:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !87 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bs, i64 %i.bg) ; 2 uses
  %i.bt = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.bt, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !89
  %i.bw = call i32 @memcmp(ptr noundef %i.bh, ptr noundef %i.bv, i64 noundef %.sroa.speculated.i.i.i.i.i) #32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.bw, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.o
  %i.bx = sub i64 %i.bg, %i.bs
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.bx, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.bw, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.by = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.by, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %bb.p

bb.p:                                             ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit
  invoke void @_ZNK4pbrt12ParserTarget17ErrorExitDeferredIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKNS_7FileLocEPKcDpOT_(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull %3, ptr noundef nonnull @.str.90, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35 unwind label %bb.r

bb.q:                                             ; preds = %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %7) #32
  br label %bb.ag

bb.r:                                             ; preds = %.noexc.i23, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, %bb.p
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i, %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit
  %i.cb = invoke { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE16_M_insert_uniqueIRKS5_EESt4pairISt17_Rb_tree_iteratorIS5_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit unwind label %bb.r ; 0 uses

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit: ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cd = load ptr, ptr %i.cc, align 16, !tbaa !165
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.ce, ptr %8, align 8, !tbaa !85
  %i.cf = load ptr, ptr %4, align 8, !tbaa !89    ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !87 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 %i.ch, ptr %i.a, align 8, !tbaa !198
  %i.ci = icmp ugt i64 %i.ch, 15
  br i1 %i.ci, label %.noexc.i23, label %._crit_edge.i.i22

.noexc.i23:                                       ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit
  %i.cj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.r     ; 2 uses

.noexc:                                           ; preds = %.noexc.i23
  store ptr %i.cj, ptr %8, align 8, !tbaa !89
  %i.ck = load i64, ptr %i.a, align 8, !tbaa !198
  store i64 %i.ck, ptr %i.ce, align 8, !tbaa !88
  br label %._crit_edge.i.i22

._crit_edge.i.i22:                                ; preds = %.noexc, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit
  %i.cl = phi ptr [ %i.cj, %.noexc ], [ %i.ce, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit ] ; 2 uses
  switch i64 %i.ch, label %bb.t [
    i64 1, label %bb.s
    i64 0, label %._crit_edge.i.i25
  ]

bb.s:                                             ; preds = %._crit_edge.i.i22
  %i.cm = load i8, ptr %i.cf, align 1, !tbaa !88
  store i8 %i.cm, ptr %i.cl, align 1, !tbaa !88
  br label %._crit_edge.i.i25

bb.t:                                             ; preds = %._crit_edge.i.i22
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cl, ptr align 1 %i.cf, i64 %i.ch, i1 false)
  br label %._crit_edge.i.i25

._crit_edge.i.i25:                                ; preds = %bb.t, %bb.s, %._crit_edge.i.i22
  %i.cn = load i64, ptr %i.a, align 8, !tbaa !198 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.cn, ptr %i.co, align 8, !tbaa !87
  %i.cp = load ptr, ptr %8, align 8, !tbaa !89
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cn
  store i8 0, ptr %i.cq, align 1, !tbaa !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  %i.cr = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.cr, ptr %10, align 8, !tbaa !85
  %i.cs = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.cs, align 8, !tbaa !87
  store i8 0, ptr %i.cr, align 8, !tbaa !88
  %i.ct = load i64, ptr %6, align 8, !tbaa !102
  store i64 %i.ct, ptr %11, align 8, !tbaa !102
  %i.cu = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %11, i64 80 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %11, i64 88
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  %i.cz = load i64, ptr %i.cx, align 8, !tbaa !109 ; 3 uses
  %i.da = load <2 x i64>, ptr %i.cy, align 8, !tbaa !198
  store <2 x i64> %i.da, ptr %i.cv, align 8, !tbaa !198
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !103
  store ptr %i.dc, ptr %i.cu, align 8, !tbaa !103
  %i.dd = icmp ult i64 %i.cz, 9
  br i1 %i.dd, label %.preheader.i.i, label %bb.u

.preheader.i.i:                                   ; preds = %._crit_edge.i.i25
  %.not.i.i = icmp eq i64 %i.cz, 0
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dg = shl nuw nsw i64 %i.cz, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.de, ptr nonnull align 8 %i.df, i64 %i.dg, i1 false), !tbaa !189
  br label %.loopexit

bb.u:                                             ; preds = %._crit_edge.i.i25
  store i64 0, ptr %i.cx, align 8, !tbaa !109
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.u, %.preheader.i.i
  store i64 0, ptr %i.cy, align 8, !tbaa !110
  store ptr null, ptr %i.db, align 8, !tbaa !103
  %i.dh = getelementptr inbounds nuw i8, ptr %11, i64 96
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.dh, ptr noundef nonnull align 8 dereferenceable(12) %i.di, i64 12, i1 false)
  invoke void @_ZN4pbrt11SceneEntityC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_19ParameterDictionaryENS_7FileLocE(ptr noundef nonnull align 8 dereferenceable(144) %9, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr nofree noundef nonnull align 8 dereferenceable(112) %11, ptr noundef nonnull byval(%"struct.pbrt::FileLoc") align 8 %3)
          to label %bb.v unwind label %bb.ad

bb.v:                                             ; preds = %.loopexit
  invoke void @_ZN4pbrt10BasicScene16AddNamedMaterialENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11SceneEntityE(ptr noundef nonnull align 8 dereferenceable(1520) %i.cd, ptr nofree noundef nonnull align 8 dereferenceable(32) %8, ptr nofree noundef nonnull align 8 dereferenceable(144) %9)
          to label %bb.w unwind label %bb.ae

bb.w:                                             ; preds = %bb.v
  %i.dj = getelementptr inbounds nuw i8, ptr %9, i64 120
  store i64 0, ptr %i.dj, align 8, !tbaa !109
  %i.dk = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i.i.i28 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i.i.i.i28, label %_ZN4pbrt11SceneEntityD2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dm = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.dn = getelementptr inbounds nuw i8, ptr %9, i64 112
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !110
  %i.dp = shl i64 %i.do, 3
  %i.dq = load ptr, ptr %i.dm, align 8, !tbaa !111 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !72
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8
  invoke void %i.dt(ptr noundef nonnull align 8 dereferenceable(8) %i.dq, ptr noundef nonnull %i.dl, i64 noundef %i.dp, i64 noundef 8)
          to label %_ZN4pbrt11SceneEntityD2Ev.exit unwind label %bb.y, !inline_history !3

bb.y:                                             ; preds = %bb.x
  %i.du = landingpad { ptr, i32 }
          catch ptr null
  %i.dv = extractvalue { ptr, i32 } %i.du, 0
  call void @__clang_call_terminate(ptr %i.dv) #31
  unreachable

_ZN4pbrt11SceneEntityD2Ev.exit:                   ; preds = %bb.w, %bb.x
  store i64 0, ptr %i.cw, align 8, !tbaa !109
  %i.dw = load ptr, ptr %i.cu, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i.i29 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i.i.i29, label %_ZN4pbrt19ParameterDictionaryD2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN4pbrt11SceneEntityD2Ev.exit
  %i.dx = load i64, ptr %i.cv, align 8, !tbaa !110
  %i.dy = shl i64 %i.dx, 3
  %i.dz = load ptr, ptr %11, align 8, !tbaa !111  ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !72
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8
  invoke void %i.ec(ptr noundef nonnull align 8 dereferenceable(8) %i.dz, ptr noundef nonnull %i.dw, i64 noundef %i.dy, i64 noundef 8)
          to label %_ZN4pbrt19ParameterDictionaryD2Ev.exit unwind label %bb.aa, !inline_history !3

bb.aa:                                            ; preds = %bb.z
  %i.ed = landingpad { ptr, i32 }
          catch ptr null
  %i.ee = extractvalue { ptr, i32 } %i.ed, 0
  call void @__clang_call_terminate(ptr %i.ee) #31
  unreachable

_ZN4pbrt19ParameterDictionaryD2Ev.exit:           ; preds = %_ZN4pbrt11SceneEntityD2Ev.exit, %bb.z
  %i.ef = load ptr, ptr %10, align 8, !tbaa !89   ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.cr
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZN4pbrt19ParameterDictionaryD2Ev.exit
  %i.eh = load i64, ptr %i.cr, align 8, !tbaa !88
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ei) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZN4pbrt19ParameterDictionaryD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  %i.ej = load ptr, ptr %8, align 8, !tbaa !89    ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.ce
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
  %i.el = load i64, ptr %i.ce, align 8, !tbaa !88
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.em) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33, %bb.p
  %i.en = getelementptr inbounds nuw i8, ptr %6, i64 88
  store i64 0, ptr %i.en, align 8, !tbaa !109
  %i.eo = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i.i36 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.i.i.i36, label %_ZN4pbrt19ParameterDictionaryD2Ev.exit37, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.eq = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !110
  %i.es = shl i64 %i.er, 3
  %i.et = load ptr, ptr %6, align 8, !tbaa !111   ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !72
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8
  invoke void %i.ew(ptr noundef nonnull align 8 dereferenceable(8) %i.et, ptr noundef nonnull %i.ep, i64 noundef %i.es, i64 noundef 8)
          to label %_ZN4pbrt19ParameterDictionaryD2Ev.exit37 unwind label %bb.ac, !inline_history !3

bb.ac:                                            ; preds = %bb.ab
  %i.ex = landingpad { ptr, i32 }
          catch ptr null
  %i.ey = extractvalue { ptr, i32 } %i.ex, 0
  call void @__clang_call_terminate(ptr %i.ey) #31
  unreachable

_ZN4pbrt19ParameterDictionaryD2Ev.exit37:         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  %i.ez = load ptr, ptr %4, align 8, !tbaa !89    ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.fb = icmp eq ptr %i.ez, %i.fa
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZN4pbrt19ParameterDictionaryD2Ev.exit37
  %i.fc = load i64, ptr %i.fa, align 8, !tbaa !88
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fd) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %_ZN4pbrt19ParameterDictionaryD2Ev.exit37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret void

bb.ad:                                            ; preds = %.loopexit
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %bb.v
  %i.ff = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt11SceneEntityD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %9) #32
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.ff, %bb.ae ], [ %i.fe, %bb.ad ] ; 2 uses
  call void @_ZN4pbrt19ParameterDictionaryD2Ev(ptr noundef nonnull align 8 dead_on_return(108) dereferenceable(108) %11) #32
  %i.fg = load ptr, ptr %10, align 8, !tbaa !89   ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.cr
  br i1 %i.fh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %bb.af
  %i.fi = load i64, ptr %i.cr, align 8, !tbaa !88
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fj) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  %i.fk = load ptr, ptr %8, align 8, !tbaa !89    ; 2 uses
  %i.fl = icmp eq ptr %i.fk, %i.ce
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  %i.fm = load i64, ptr %i.ce, align 8, !tbaa !88
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fn) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44, %bb.r
  %.pn13 = phi { ptr, i32 } [ %i.ca, %bb.r ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43 ]
  call void @_ZN4pbrt19ParameterDictionaryD2Ev(ptr noundef nonnull align 8 dead_on_return(108) dereferenceable(108) %6) #32
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %bb.q
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ %i.bz, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.h
  %.pn16 = phi { ptr, i32 } [ %i.aa, %bb.h ], [ %.pn13.pn, %bb.ag ] ; 2 uses
  %i.fo = load ptr, ptr %4, align 8, !tbaa !89    ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.fq = icmp eq ptr %i.fo, %i.fp
  br i1 %i.fq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %bb.ah
  %i.fr = load i64, ptr %i.fp, align 8, !tbaa !88
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.sink.split: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  %.sink77 = phi i64 [ %i.fr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47 ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19 ]
  %.sink = phi ptr [ %i.fo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47 ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19 ]
  %.pn16.pn.ph = phi { ptr, i32 } [ %.pn16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47 ], [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19 ]
  %i.fs = add i64 %.sink77, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.fs) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.sink.split, %bb.ah, %bb.g
  %.pn16.pn = phi { ptr, i32 } [ %i.w, %bb.g ], [ %.pn16, %bb.ah ], [ %.pn16.pn.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  resume { ptr, i32 } %.pn16.pn
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt9ErrorExitIJRA18_KcEEEvPKNS_7FileLocEPS1_DpOT_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(18) %2) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !85, !alias.scope !967
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !87, !alias.scope !967
  store i8 0, ptr %i.a, align 8, !tbaa !88, !alias.scope !967
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRA18_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef nonnull align 8 %3, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(18) %2)
          to label %_ZN4pbrt12StringPrintfIJRA18_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %3, align 8, !tbaa !89, !alias.scope !967 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !88, !alias.scope !967
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #33
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRA18_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %3, align 8, !tbaa !89
  invoke void @_ZN4pbrt9ErrorExitEPKNS_7FileLocEPKc(ptr noundef %0, ptr noundef %i.h) #34
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA18_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA18_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %3, align 8, !tbaa !89     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !88
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt10BasicScene16AddNamedMaterialENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11SceneEntityE(ptr noundef nonnull align 8 dereferenceable(1520) %0, ptr nofree noundef align 8 dereferenceable(32) %1, ptr nofree noundef align 8 dereferenceable(144) %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::pair.167", align 8    ; 29 uses
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 3 uses
  %i.c = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #32 ; 2 uses
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.c) #34
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  invoke void @_ZN4pbrt10BasicScene22startLoadingNormalMapsERKNS_19ParameterDictionaryE(ptr noundef nonnull align 8 dereferenceable(1520) %0, ptr noundef nonnull align 8 dereferenceable(108) %i.d)
          to label %bb.c unwind label %bb.l

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !970)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 10 uses
  store ptr %i.e, ptr %3, align 8, !tbaa !85, !alias.scope !970
  %i.f = load ptr, ptr %1, align 8, !tbaa !89, !noalias !970 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !87, !noalias !970 ; 3 uses
  %i.k = icmp ult i64 %i.j, 16
  call void @llvm.assume(i1 %i.k)
  %i.l = add nuw nsw i64 %i.j, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.l, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  store ptr %i.f, ptr %3, align 8, !tbaa !89, !alias.scope !970
  %i.m = load i64, ptr %i.g, align 8, !tbaa !88, !noalias !970
  store i64 %i.m, ptr %i.e, align 8, !tbaa !88, !alias.scope !970
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !87, !noalias !970
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.d
  %i.n = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.j, %bb.d ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.n, ptr %i.p, align 8, !tbaa !87, !alias.scope !970
  store ptr %i.g, ptr %1, align 8, !tbaa !89, !noalias !970
  store i64 0, ptr %i.o, align 8, !tbaa !87, !noalias !970
  store i8 0, ptr %i.g, align 8, !tbaa !88, !noalias !970
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.q, ptr noundef nonnull align 8 dereferenceable(144) %2, i64 32, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  %i.s = load i64, ptr %i.d, align 8, !tbaa !102, !noalias !970
  store i64 %i.s, ptr %i.r, align 8, !tbaa !102, !alias.scope !970
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 152 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.y = load i64, ptr %i.w, align 8, !tbaa !109, !noalias !970 ; 3 uses
  %i.z = load <2 x i64>, ptr %i.x, align 8, !tbaa !198, !noalias !970
  store <2 x i64> %i.z, ptr %i.u, align 8, !tbaa !198, !alias.scope !970
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !103, !noalias !970
  store ptr %i.ab, ptr %i.t, align 8, !tbaa !103, !alias.scope !970
  %i.ac = icmp ult i64 %i.y, 9
  br i1 %i.ac, label %.preheader.i.i.i.i.i, label %bb.e

.preheader.i.i.i.i.i:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %.not.i.i.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.af = shl nuw nsw i64 %i.y, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr nonnull align 8 %i.ae, i64 %i.af, i1 false), !tbaa !189
  br label %bb.f

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  store i64 0, ptr %i.w, align 8, !tbaa !109, !noalias !970
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %.preheader.i.i.i.i.i
  store i64 0, ptr %i.x, align 8, !tbaa !110, !noalias !970
  store ptr null, ptr %i.aa, align 8, !tbaa !103, !noalias !970
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ag, ptr noundef nonnull align 8 dereferenceable(12) %i.ah, i64 12, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !418 ; 21 uses
  %i.ak = ptrtoaddr ptr %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !419
  %.not.i.i6 = icmp eq ptr %i.aj, %i.am
  br i1 %.not.i.i6, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 3 uses
  store ptr %i.an, ptr %i.aj, align 8, !tbaa !85
  %i.ao = load ptr, ptr %3, align 8, !tbaa !89    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.e
  br i1 %i.ap, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.aq = icmp ult i64 %i.n, 16
  call void @llvm.assume(i1 %i.aq)
  %i.ar = add nuw nsw i64 %i.n, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.an, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.ar, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.g
  store ptr %i.ao, ptr %i.aj, align 8, !tbaa !89
  %i.as = load i64, ptr %i.e, align 8, !tbaa !88
  store i64 %i.as, ptr %i.an, align 8, !tbaa !88
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %i.n, ptr %i.at, align 8, !tbaa !87
  store ptr %i.e, ptr %3, align 8, !tbaa !89
  store i64 0, ptr %i.p, align 8, !tbaa !87
  store i8 0, ptr %i.e, align 8, !tbaa !88
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.au, ptr noundef nonnull align 8 dereferenceable(144) %i.q, i64 32, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.aw = load i64, ptr %i.r, align 8, !tbaa !102
  store i64 %i.aw, ptr %i.av, align 8, !tbaa !102
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aj, i64 72 ; 2 uses
  store ptr null, ptr %i.ax, align 8, !tbaa !103
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 144 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i8 0, i64 16, i1 false)
  %i.az = load i64, ptr %i.v, align 8, !tbaa !109 ; 10 uses
  %i.ba = load <2 x i64>, ptr %i.u, align 8, !tbaa !198
  store <2 x i64> %i.ba, ptr %i.ay, align 8, !tbaa !198
  %i.bb = load ptr, ptr %i.t, align 8, !tbaa !103
  store ptr %i.bb, ptr %i.ax, align 8, !tbaa !103
  %i.bc = add i64 %i.az, -9
  %or.cond = icmp ult i64 %i.bc, -8
  br i1 %or.cond, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEESaIS9_EE9push_backEOS9_.exit.thread, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aj, i64 80 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.bf = sub i64 %i.a, %i.ak
  %diff.check = icmp ugt i64 %i.bf, -32
  br i1 %diff.check, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i
  %trip.count.minus.1 = add nsw i64 %i.az, -1
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %trip.count.minus.1, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %n.rnd.up = add nuw nsw i64 %i.az, 3
  %n.vec = and i64 %n.rnd.up, 28
  %i.bg = icmp uge <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3>
  %unmaskedload = load <4 x ptr>, ptr %i.be, align 8, !tbaa !189
  call void @llvm.masked.store.v4p0.p0(<4 x ptr> %unmaskedload, ptr align 8 %i.bd, <4 x i1> %i.bg), !tbaa !189
  %i.bh = icmp eq i64 %n.vec, 4
  br i1 %i.bh, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEESaIS9_EE9push_backEOS9_.exit.thread, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.bi = icmp ugt <4 x i64> %broadcast.splat, <i64 3, i64 4, i64 5, i64 6>
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aj, i64 112
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 112
  %unmaskedload22 = load <4 x ptr>, ptr %i.bk, align 8, !tbaa !189
  call void @llvm.masked.store.v4p0.p0(<4 x ptr> %unmaskedload22, ptr align 8 %i.bj, <4 x i1> %i.bi), !tbaa !189
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEESaIS9_EE9push_backEOS9_.exit.thread

scalar.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bl = load ptr, ptr %i.be, align 8, !tbaa !189
  store ptr %i.bl, ptr %i.bd, align 8, !tbaa !189
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.az, 1
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEESaIS9_EE9push_backEOS9_.exit.thread, label %scalar.ph.1

scalar.ph.1:                                      ; preds = %scalar.ph
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aj, i64 88
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !189
  store ptr %i.bo, ptr %i.bm, align 8, !tbaa !189
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %i.az, 2
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEESaIS9_EE9push_backEOS9_.exit.thread, label %scalar.ph.2

scalar.ph.2:                                      ; preds = %scalar.ph.1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aj, i64 96
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !189
  store ptr %i.br, ptr %i.bp, align 8, !tbaa !189
  %exitcond.not.i.i.i.i.i.i.2 = icmp eq i64 %i.az, 3
  br i1 %exitcond.not.i.i.i.i.i.i.2, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEESaIS9_EE9push_backEOS9_.exit.thread, label %scalar.ph.3

scalar.ph.3:                                      ; preds = %scalar.ph.2
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aj, i64 104
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !189
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !189
  %exitcond.not.i.i.i.i.i.i.3 = icmp eq i64 %i.az, 4
  br i1 %exitcond.not.i.i.i.i.i.i.3, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEESaIS9_EE9push_backEOS9_.exit.thread, label %scalar.ph.4

scalar.ph.4:                                      ; preds = %scalar.ph.3
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aj, i64 112
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !189
  store ptr %i.bx, ptr %i.bv, align 8, !tbaa !189
  %exitcond.not.i.i.i.i.i.i.4 = icmp eq i64 %i.az, 5
  br i1 %exitcond.not.i.i.i.i.i.i.4, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEESaIS9_EE9push_backEOS9_.exit.thread, label %scalar.ph.5

scalar.ph.5:                                      ; preds = %scalar.ph.4
  %i.by = getelementptr inbounds nuw i8, ptr %i.aj, i64 120
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !189
  store ptr %i.ca, ptr %i.by, align 8, !tbaa !189
  %exitcond.not.i.i.i.i.i.i.5 = icmp eq i64 %i.az, 6
  br i1 %exitcond.not.i.i.i.i.i.i.5, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEESaIS9_EE9push_backEOS9_.exit.thread, label %scalar.ph.6

scalar.ph.6:                                      ; preds = %scalar.ph.5
  %i.cb = getelementptr inbounds nuw i8, ptr %i.aj, i64 128
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !189
  store ptr %i.cd, ptr %i.cb, align 8, !tbaa !189
  %exitcond.not.i.i.i.i.i.i.6 = icmp eq i64 %i.az, 7
  br i1 %exitcond.not.i.i.i.i.i.i.6, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEESaIS9_EE9push_backEOS9_.exit.thread, label %scalar.ph.7

scalar.ph.7:                                      ; preds = %scalar.ph.6
  %i.ce = getelementptr inbounds nuw i8, ptr %i.aj, i64 136
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !189
  store ptr %i.cg, ptr %i.ce, align 8, !tbaa !189
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEESaIS9_EE9push_backEOS9_.exit.thread

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEESaIS9_EE9push_backEOS9_.exit.thread: ; preds = %vector.ph, %vector.body.1, %scalar.ph, %scalar.ph.1, %scalar.ph.2, %scalar.ph.3, %scalar.ph.4, %scalar.ph.5, %scalar.ph.6, %scalar.ph.7, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  store i64 0, ptr %i.u, align 8, !tbaa !110
  store ptr null, ptr %i.t, align 8, !tbaa !103
  %i.ch = getelementptr inbounds nuw i8, ptr %i.aj, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ch, ptr noundef nonnull align 8 dereferenceable(12) %i.ag, i64 12, i1 false)
  %i.ci = load ptr, ptr %i.ai, align 8, !tbaa !418
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 176
  store ptr %i.cj, ptr %i.ai, align 8, !tbaa !418
  store i64 0, ptr %i.v, align 8, !tbaa !109
  br label %_ZN4pbrt11SceneEntityD2Ev.exit.i

bb.i:                                             ; preds = %bb.f
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 920
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, ptr %i.aj, ptr noundef nonnull align 8 dereferenceable(176) %3)
          to label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEESaIS9_EE9push_backEOS9_.exit unwind label %bb.m

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEESaIS9_EE9push_backEOS9_.exit: ; preds = %bb.i
  %.pre = load ptr, ptr %i.t, align 8, !tbaa !103 ; 2 uses
  store i64 0, ptr %i.v, align 8, !tbaa !109
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4pbrt11SceneEntityD2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEESaIS9_EE9push_backEOS9_.exit
  %i.cl = load i64, ptr %i.u, align 8, !tbaa !110
  %i.cm = shl i64 %i.cl, 3
  %i.cn = load ptr, ptr %i.r, align 8, !tbaa !111 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !72
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8
  invoke void %i.cq(ptr noundef nonnull align 8 dereferenceable(8) %i.cn, ptr noundef nonnull %.pre, i64 noundef %i.cm, i64 noundef 8)
          to label %_ZN4pbrt11SceneEntityD2Ev.exit.i unwind label %bb.k, !inline_history !3

bb.k:                                             ; preds = %bb.j
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  call void @__clang_call_terminate(ptr %i.cs) #31
  unreachable

_ZN4pbrt11SceneEntityD2Ev.exit.i:                 ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEESaIS9_EE9push_backEOS9_.exit.thread, %bb.j, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEESaIS9_EE9push_backEOS9_.exit
  %i.ct = load ptr, ptr %3, align 8, !tbaa !89    ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.e
  br i1 %i.cu, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7: ; preds = %_ZN4pbrt11SceneEntityD2Ev.exit.i
  %i.cv = load i64, ptr %i.e, align 8, !tbaa !88
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #33
end_hunk_12
begin_hunk_13_@_ZN4pbrt17BasicSceneBuilder13NamedMaterialERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7FileLocE:bb.a
  store i8 %i.j, ptr %i.i, align 1, !tbaa !88
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !198  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !87
  %i.m = load ptr, ptr %4, align 8, !tbaa !89
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  invoke void @_ZN4pbrt13NormalizeUTF8ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nofree noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.o = load ptr, ptr %4, align 8, !tbaa !89     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.b
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.q = load i64, ptr %i.b, align 8, !tbaa !88
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !166
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.e, label %bb.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZN4pbrt9ErrorExitIJRA14_KcEEEvPKNS_7FileLocEPS1_DpOT_(ptr noundef nonnull %2, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(14) @.str.92) #34
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = load ptr, ptr %4, align 8, !tbaa !89     ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.b
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.g
  %i.y = load i64, ptr %i.b, align 8, !tbaa !88
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.sink.split

bb.h:                                             ; preds = %bb.i, %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = load ptr, ptr %3, align 8, !tbaa !89    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.h
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !88
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.sink.split

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 104
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 -1, ptr %i.af, align 32, !tbaa !366
  %i.ag = load ptr, ptr %3, align 8, !tbaa !89    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !88
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.sink.split: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  %.sink21 = phi i64 [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8 ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5 ]
  %.sink = phi ptr [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8 ], [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5 ]
  %.pn.ph = phi { ptr, i32 } [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8 ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5 ]
  %i.al = add i64 %.sink21, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.al) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.sink.split, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.v, %bb.g ], [ %i.z, %bb.h ], [ %.pn.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt9ErrorExitIJRA14_KcEEEvPKNS_7FileLocEPS1_DpOT_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(14) %2) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !85, !alias.scope !973
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !87, !alias.scope !973
  store i8 0, ptr %i.a, align 8, !tbaa !88, !alias.scope !973
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRA14_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef nonnull align 8 %3, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(14) %2)
          to label %_ZN4pbrt12StringPrintfIJRA14_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %3, align 8, !tbaa !89, !alias.scope !973 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !88, !alias.scope !973
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #33
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRA14_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %3, align 8, !tbaa !89
  invoke void @_ZN4pbrt9ErrorExitEPKNS_7FileLocEPKc(ptr noundef %0, ptr noundef %i.h) #34
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA14_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA14_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %3, align 8, !tbaa !89     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !88
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt17BasicSceneBuilder15AreaLightSourceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorISB_EEEENS_7FileLocE(ptr noundef nonnull align 64 dereferenceable(3544) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef align 8 captures(none) dereferenceable(96) %2, ptr noundef byval(%"struct.pbrt::FileLoc") align 8 %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.pbrt::ParameterDictionary", align 8 ; 11 uses
  %5 = alloca %"class.pbrt::InlinedVector", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !166
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN4pbrt9ErrorExitIJRA16_KcEEEvPKNS_7FileLocEPS1_DpOT_(ptr noundef nonnull %3, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(16) @.str.93) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.e = load i64, ptr %2, align 8, !tbaa !102
  store i64 %i.e, ptr %5, align 8, !tbaa !102
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.k = load i64, ptr %i.i, align 8, !tbaa !109  ; 3 uses
  %i.l = load <2 x i64>, ptr %i.j, align 8, !tbaa !198
  store <2 x i64> %i.l, ptr %i.g, align 8, !tbaa !198
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !103
  store ptr %i.n, ptr %i.f, align 8, !tbaa !103
  %i.o = icmp ult i64 %i.k, 9
  br i1 %i.o, label %.preheader.i, label %bb.d

.preheader.i:                                     ; preds = %bb.c
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = shl nuw nsw i64 %i.k, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr nonnull align 8 %i.q, i64 %i.r, i1 false), !tbaa !189
  br label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %i.i, align 8, !tbaa !109
  br label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit

_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit: ; preds = %.lr.ph.i, %.preheader.i, %bb.d
  store i64 0, ptr %i.j, align 8, !tbaa !110
  store ptr null, ptr %i.m, align 8, !tbaa !103
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !213
  invoke void @_ZN4pbrt19ParameterDictionaryC1ENS_13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS3_EEEERKS8_PKNS_13RGBColorSpaceE(ptr noundef nonnull align 8 dereferenceable(108) %4, ptr nofree noundef nonnull align 8 dereferenceable(96) %5, ptr noundef nonnull align 8 dereferenceable(96) %i.s, ptr noundef %i.u)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.w = invoke noundef nonnull align 8 dereferenceable(96) ptr @_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEaSEOS7_(ptr noundef nonnull align 8 dereferenceable(108) %i.v, ptr noundef nonnull align 8 dereferenceable(108) %4)
          to label %bb.f unwind label %bb.l       ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.x, ptr noundef nonnull align 8 dereferenceable(12) %i.y, i64 12, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i64 0, ptr %i.z, align 8, !tbaa !109
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i, label %_ZN4pbrt19ParameterDictionaryD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !110
  %i.ae = shl i64 %i.ad, 3
  %i.af = load ptr, ptr %4, align 8, !tbaa !111   ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !72
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull %i.ab, i64 noundef %i.ae, i64 noundef 8)
          to label %_ZN4pbrt19ParameterDictionaryD2Ev.exit unwind label %bb.h, !inline_history !3

bb.h:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #31
  unreachable

_ZN4pbrt19ParameterDictionaryD2Ev.exit:           ; preds = %bb.f, %bb.g
  store i64 0, ptr %i.h, align 8, !tbaa !109
  %i.al = load ptr, ptr %i.f, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i, label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4pbrt19ParameterDictionaryD2Ev.exit
  %i.am = load i64, ptr %i.g, align 8, !tbaa !110
  %i.an = shl i64 %i.am, 3
  %i.ao = load ptr, ptr %5, align 8, !tbaa !111   ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !72
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  invoke void %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull %i.al, i64 noundef %i.an, i64 noundef 8)
          to label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit unwind label %bb.j, !inline_history !3

bb.j:                                             ; preds = %bb.i
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  call void @__clang_call_terminate(ptr %i.at) #31
  unreachable

_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev.exit: ; preds = %_ZN4pbrt19ParameterDictionaryD2Ev.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !203
  ret void

bb.k:                                             ; preds = %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.e
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt19ParameterDictionaryD2Ev(ptr noundef nonnull align 8 dead_on_return(108) dereferenceable(108) %4) #32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.aw, %bb.l ], [ %i.av, %bb.k ]
  call void @_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt9ErrorExitIJRA16_KcEEEvPKNS_7FileLocEPS1_DpOT_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(16) %2) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !85, !alias.scope !976
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !87, !alias.scope !976
  store i8 0, ptr %i.a, align 8, !tbaa !88, !alias.scope !976
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRA16_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef nonnull align 8 %3, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(16) %2)
          to label %_ZN4pbrt12StringPrintfIJRA16_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %3, align 8, !tbaa !89, !alias.scope !976 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !88, !alias.scope !976
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #33
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRA16_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %3, align 8, !tbaa !89
  invoke void @_ZN4pbrt9ErrorExitEPKNS_7FileLocEPKc(ptr noundef %0, ptr noundef %i.h) #34
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA16_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA16_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %3, align 8, !tbaa !89     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !88
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %common.resume
}

declare void @_ZN4pbrt3LogENS_8LogLevelEPKciS2_(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4pbrt11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEE3GetEv(ptr noundef nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::thread::id", align 8   ; 6 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  %i.c = tail call i64 @pthread_self() #37
  store i64 %i.c, ptr %1, align 8
  %i.d = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 8, i64 noundef 3339675911)
          to label %_ZNKSt4hashINSt6thread2idEEclERKS1_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #31
  unreachable

_ZNKSt4hashINSt6thread2idEEclERKS1_.exit:         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !420
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !421
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = sdiv exact i64 %i.m, 24
  %i.o = and i64 %i.d, 4294967295
  %i.p = urem i64 %i.o, %i.n
  %i.q = trunc nuw i64 %i.p to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZNKSt4hashINSt6thread2idEEclERKS1_.exit
  %i.r = call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(56) %0) #32
  switch i32 %i.r, label %_ZNSt12shared_mutex11lock_sharedEv.exit.preheader [
    i32 11, label %bb.c
    i32 35, label %bb.d
  ]

_ZNSt12shared_mutex11lock_sharedEv.exit.preheader: ; preds = %bb.c
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !420
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !421  ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
end_hunk_13
begin_hunk_14_@_ZNSt6vectorIN4pbrt16ShapeSceneEntityESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_:bb.a
scalar.ph.6:                                      ; preds = %scalar.ph.5
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !189
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !189
  %exitcond.not.i.i.i.i.6 = icmp eq i64 %i.n, 7
  br i1 %exitcond.not.i.i.i.i.6, label %_ZN4pbrt11SceneEntityC2EOS0_.exit.i, label %scalar.ph.7

scalar.ph.7:                                      ; preds = %scalar.ph.6
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !189
  store ptr %i.av, ptr %i.at, align 8, !tbaa !189
  br label %_ZN4pbrt11SceneEntityC2EOS0_.exit.i

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.l, align 8, !tbaa !109
  br label %_ZN4pbrt11SceneEntityC2EOS0_.exit.i

_ZN4pbrt11SceneEntityC2EOS0_.exit.i:              ; preds = %vector.ph, %vector.body.1, %scalar.ph, %scalar.ph.1, %scalar.ph.2, %scalar.ph.3, %scalar.ph.4, %scalar.ph.5, %scalar.ph.6, %scalar.ph.7, %bb.c, %.preheader.i.i.i.i
  store i64 0, ptr %i.m, align 8, !tbaa !110
  store ptr null, ptr %i.p, align 8, !tbaa !103
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.aw, ptr noundef nonnull align 8 dereferenceable(12) %i.ax, i64 12, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 168 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 184 ; 3 uses
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !85
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !89 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 5 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.d:                                             ; preds = %_ZN4pbrt11SceneEntityC2EOS0_.exit.i
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !87 ; 2 uses
  %i.bi = icmp ult i64 %i.bh, 16
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = add nuw nsw i64 %i.bh, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bc, ptr noundef nonnull align 8 dereferenceable(1) %i.be, i64 %i.bj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4pbrt11SceneEntityC2EOS0_.exit.i
  store ptr %i.bd, ptr %i.ba, align 8, !tbaa !89
  %i.bk = load i64, ptr %i.be, align 8, !tbaa !88
  store i64 %i.bk, ptr %i.bc, align 8, !tbaa !88
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.d
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !87
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !87
  store ptr %i.be, ptr %i.bb, align 8, !tbaa !89
  store i64 0, ptr %i.bl, align 8, !tbaa !87
  store i8 0, ptr %i.be, align 8, !tbaa !88
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !379
  store i32 %i.bq, ptr %i.bo, align 8, !tbaa !379
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 208 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 224 ; 3 uses
  store ptr %i.bt, ptr %i.br, align 8, !tbaa !85
  %i.bu = load ptr, ptr %i.bs, align 8, !tbaa !89 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 5 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i7.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !87 ; 2 uses
  %i.bz = icmp ult i64 %i.by, 16
  tail call void @llvm.assume(i1 %i.bz)
  %i.ca = add nuw nsw i64 %i.by, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bt, ptr noundef nonnull align 8 dereferenceable(1) %i.bv, i64 %i.ca, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit8.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i7.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.bu, ptr %i.br, align 8, !tbaa !89
  %i.cb = load i64, ptr %i.bv, align 8, !tbaa !88
  store i64 %i.cb, ptr %i.bt, align 8, !tbaa !88
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit8.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit8.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i7.i, %bb.e
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !87
  %i.ce = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !87
  store ptr %i.bv, ptr %i.bs, align 8, !tbaa !89
  store i64 0, ptr %i.cc, align 8, !tbaa !87
  store i8 0, ptr %i.bv, align 8, !tbaa !88
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 240 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 256 ; 3 uses
  store ptr %i.ch, ptr %i.cf, align 8, !tbaa !85
  %i.ci = load ptr, ptr %i.cg, align 8, !tbaa !89 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 5 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit8.i
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !87 ; 2 uses
  %i.cn = icmp ult i64 %i.cm, 16
  tail call void @llvm.assume(i1 %i.cn)
  %i.co = add nuw nsw i64 %i.cm, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ch, ptr noundef nonnull align 8 dereferenceable(1) %i.cj, i64 %i.co, i1 false)
  br label %_ZN4pbrt16ShapeSceneEntityC2EOS0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit8.i
  store ptr %i.ci, ptr %i.cf, align 8, !tbaa !89
  %i.cp = load i64, ptr %i.cj, align 8, !tbaa !88
  store i64 %i.cp, ptr %i.ch, align 8, !tbaa !88
  br label %_ZN4pbrt16ShapeSceneEntityC2EOS0_.exit

_ZN4pbrt16ShapeSceneEntityC2EOS0_.exit:           ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !87
  %i.cs = getelementptr inbounds nuw i8, ptr %i.c, i64 248
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !87
  store ptr %i.cj, ptr %i.cg, align 8, !tbaa !89
  store i64 0, ptr %i.cq, align 8, !tbaa !87
  store i8 0, ptr %i.cj, align 8, !tbaa !88
  %i.ct = load ptr, ptr %i.b, align 8, !tbaa !205
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 272 ; 2 uses
  store ptr %i.cu, ptr %i.b, align 8, !tbaa !205
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN4pbrt16ShapeSceneEntityESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(272) %1)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !394
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN4pbrt16ShapeSceneEntityC2EOS0_.exit
  %i.cv = phi ptr [ %.pre, %bb.g ], [ %i.cu, %_ZN4pbrt16ShapeSceneEntityC2EOS0_.exit ]
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 -272
  ret ptr %i.cw
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN4pbrt16ShapeSceneEntityESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(272) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !205  ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !204    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775680
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4pbrt16ShapeSceneEntityESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.185) #34
  unreachable

_ZNKSt6vectorIN4pbrt16ShapeSceneEntityESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 272                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 33909456017848440)
  %i.l = select i1 %i.j, i64 33909456017848440, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 272                ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #35 ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 18 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.q, ptr noundef nonnull align 8 dereferenceable(272) %2, i64 32, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.t = load i64, ptr %i.s, align 8, !tbaa !102
  store i64 %i.t, ptr %i.r, align 8, !tbaa !102
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 112
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.y = load i64, ptr %i.w, align 8, !tbaa !109  ; 3 uses
  %i.z = load <2 x i64>, ptr %i.x, align 8, !tbaa !198
  store <2 x i64> %i.z, ptr %i.v, align 8, !tbaa !198
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !103
  store ptr %i.ab, ptr %i.u, align 8, !tbaa !103
  %i.ac = icmp ult i64 %i.y, 9
  br i1 %i.ac, label %.preheader.i.i.i.i, label %bb.c

.preheader.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN4pbrt16ShapeSceneEntityESaIS1_EE12_M_check_lenEmPKc.exit
  %.not.i.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.i.i, label %_ZN4pbrt11SceneEntityC2EOS0_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.af = shl nuw nsw i64 %i.y, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr nonnull align 8 %i.ae, i64 %i.af, i1 false), !tbaa !189
  br label %_ZN4pbrt11SceneEntityC2EOS0_.exit.i

bb.c:                                             ; preds = %_ZNKSt6vectorIN4pbrt16ShapeSceneEntityESaIS1_EE12_M_check_lenEmPKc.exit
  store i64 0, ptr %i.w, align 8, !tbaa !109
  br label %_ZN4pbrt11SceneEntityC2EOS0_.exit.i

_ZN4pbrt11SceneEntityC2EOS0_.exit.i:              ; preds = %.lr.ph.i.i.i.i, %bb.c, %.preheader.i.i.i.i
  store i64 0, ptr %i.x, align 8, !tbaa !110
  store ptr null, ptr %i.aa, align 8, !tbaa !103
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ag, ptr noundef nonnull align 8 dereferenceable(12) %i.ah, i64 12, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 144
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 168 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 168 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 184 ; 3 uses
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !85
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !89 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 184 ; 5 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.d:                                             ; preds = %_ZN4pbrt11SceneEntityC2EOS0_.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !87 ; 3 uses
  %i.as = icmp ult i64 %i.ar, 16
  tail call void @llvm.assume(i1 %i.as)
  %i.at = add nuw nsw i64 %i.ar, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.am, ptr noundef nonnull align 8 dereferenceable(1) %i.ao, i64 %i.at, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4pbrt11SceneEntityC2EOS0_.exit.i
  store ptr %i.an, ptr %i.ak, align 8, !tbaa !89
  %i.au = load i64, ptr %i.ao, align 8, !tbaa !88
  store i64 %i.au, ptr %i.am, align 8, !tbaa !88
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 176
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !87
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.d
  %i.av = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ar, %bb.d ]
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.ax = getelementptr inbounds nuw i8, ptr %i.q, i64 176
  store i64 %i.av, ptr %i.ax, align 8, !tbaa !87
  store ptr %i.ao, ptr %i.al, align 8, !tbaa !89
  store i64 0, ptr %i.aw, align 8, !tbaa !87
  store i8 0, ptr %i.ao, align 8, !tbaa !88
  %i.ay = getelementptr inbounds nuw i8, ptr %i.q, i64 200
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !379
  store i32 %i.ba, ptr %i.ay, align 8, !tbaa !379
  %i.bb = getelementptr inbounds nuw i8, ptr %i.q, i64 208 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.q, i64 224 ; 3 uses
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !85
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !89 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 224 ; 5 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i7.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !87 ; 3 uses
  %i.bj = icmp ult i64 %i.bi, 16
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = add nuw nsw i64 %i.bi, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bd, ptr noundef nonnull align 8 dereferenceable(1) %i.bf, i64 %i.bk, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit8.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i7.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.be, ptr %i.bb, align 8, !tbaa !89
  %i.bl = load i64, ptr %i.bf, align 8, !tbaa !88
  store i64 %i.bl, ptr %i.bd, align 8, !tbaa !88
  %.phi.trans.insert56 = getelementptr inbounds nuw i8, ptr %2, i64 216
  %.pre57 = load i64, ptr %.phi.trans.insert56, align 8, !tbaa !87
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit8.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit8.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i7.i, %bb.e
  %i.bm = phi i64 [ %.pre57, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i7.i ], [ %i.bi, %bb.e ]
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.bo = getelementptr inbounds nuw i8, ptr %i.q, i64 216
  store i64 %i.bm, ptr %i.bo, align 8, !tbaa !87
  store ptr %i.bf, ptr %i.bc, align 8, !tbaa !89
  store i64 0, ptr %i.bn, align 8, !tbaa !87
  store i8 0, ptr %i.bf, align 8, !tbaa !88
  %i.bp = getelementptr inbounds nuw i8, ptr %i.q, i64 240 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.q, i64 256 ; 3 uses
  store ptr %i.br, ptr %i.bp, align 8, !tbaa !85
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !89 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 5 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit8.i
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 248
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !87 ; 3 uses
  %i.bx = icmp ult i64 %i.bw, 16
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = add nuw nsw i64 %i.bw, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.br, ptr noundef nonnull align 8 dereferenceable(1) %i.bt, i64 %i.by, i1 false)
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit8.i
  store ptr %i.bs, ptr %i.bp, align 8, !tbaa !89
  %i.bz = load i64, ptr %i.bt, align 8, !tbaa !88
  store i64 %i.bz, ptr %i.br, align 8, !tbaa !88
  %.phi.trans.insert58 = getelementptr inbounds nuw i8, ptr %2, i64 248
  %.pre59 = load i64, ptr %.phi.trans.insert58, align 8, !tbaa !87
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i, %bb.f
  %i.ca = phi i64 [ %.pre59, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i ], [ %i.bw, %bb.f ]
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 248
  %i.cc = getelementptr inbounds nuw i8, ptr %i.q, i64 248
  store i64 %i.ca, ptr %i.cc, align 8, !tbaa !87
  store ptr %i.bt, ptr %i.bq, align 8, !tbaa !89
  store i64 0, ptr %i.cb, align 8, !tbaa !87
  store i8 0, ptr %i.bt, align 8, !tbaa !88
  %.not14.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not14.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4pbrt16ShapeSceneEntityES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %_ZSt10_ConstructIN4pbrt16ShapeSceneEntityEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.016.i.i.i.i.i = phi ptr [ %i.ce, %_ZSt10_ConstructIN4pbrt16ShapeSceneEntityEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %bb.g ] ; 3 uses
  %.01215.i.i.i.i.i = phi ptr [ %i.cd, %_ZSt10_ConstructIN4pbrt16ShapeSceneEntityEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %bb.g ] ; 2 uses
  invoke void @_ZN4pbrt16ShapeSceneEntityC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(272) %.016.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(272) %.01215.i.i.i.i.i)
          to label %_ZSt10_ConstructIN4pbrt16ShapeSceneEntityEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.h

_ZSt10_ConstructIN4pbrt16ShapeSceneEntityEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i, i64 272 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i, i64 272 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cd, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4pbrt16ShapeSceneEntityES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !34

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %i.cf, 0
  %i.ch = tail call ptr @__cxa_begin_catch(ptr %i.cg) #32 ; 0 uses
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN4pbrt16ShapeSceneEntityEEEvT_S5_(ptr noundef nonnull %i.p, ptr noundef nonnull %.016.i.i.i.i.i)
          to label %_ZSt8_DestroyIPN4pbrt16ShapeSceneEntityEEvT_S3_.exit.i.i.i.i.i unwind label %bb.i

_ZSt8_DestroyIPN4pbrt16ShapeSceneEntityEEvT_S3_.exit.i.i.i.i.i: ; preds = %bb.h
  invoke void @__cxa_rethrow() #34
          to label %bb.k unwind label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPN4pbrt16ShapeSceneEntityEEvT_S3_.exit.i.i.i.i.i, %bb.h
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN4pbrt16ShapeSceneEntityES1_EvT_S3_RSaIT0_E.exit.thread unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cj = landingpad { ptr, i32 }
          catch ptr null
  %i.ck = extractvalue { ptr, i32 } %i.cj, 0
  tail call void @__clang_call_terminate(ptr %i.ck) #31
  unreachable

bb.k:                                             ; preds = %_ZSt8_DestroyIPN4pbrt16ShapeSceneEntityEEvT_S3_.exit.i.i.i.i.i
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN4pbrt16ShapeSceneEntityES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %_ZSt10_ConstructIN4pbrt16ShapeSceneEntityEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i, %bb.g
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %bb.g ], [ %i.ce, %_ZSt10_ConstructIN4pbrt16ShapeSceneEntityEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 272 ; 4 uses
  %.not14.i.i.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not14.i.i.i.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4pbrt16ShapeSceneEntityES2_SaIS1_EET0_T_S5_S4_RT1_.exit38, label %.lr.ph.i.i.i.i.i29

.lr.ph.i.i.i.i.i29:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4pbrt16ShapeSceneEntityES2_SaIS1_EET0_T_S5_S4_RT1_.exit, %_ZSt10_ConstructIN4pbrt16ShapeSceneEntityEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i33
  %.016.i.i.i.i.i30 = phi ptr [ %i.cn, %_ZSt10_ConstructIN4pbrt16ShapeSceneEntityEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i33 ], [ %i.cl, %_ZSt34__uninitialized_move_if_noexcept_aIPN4pbrt16ShapeSceneEntityES2_SaIS1_EET0_T_S5_S4_RT1_.exit ] ; 3 uses
  %.01215.i.i.i.i.i31 = phi ptr [ %i.cm, %_ZSt10_ConstructIN4pbrt16ShapeSceneEntityEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i33 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN4pbrt16ShapeSceneEntityES2_SaIS1_EET0_T_S5_S4_RT1_.exit ] ; 2 uses
  invoke void @_ZN4pbrt16ShapeSceneEntityC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(272) %.016.i.i.i.i.i30, ptr noundef nonnull align 8 dereferenceable(272) %.01215.i.i.i.i.i31)
          to label %_ZSt10_ConstructIN4pbrt16ShapeSceneEntityEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i33 unwind label %bb.l

_ZSt10_ConstructIN4pbrt16ShapeSceneEntityEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i33: ; preds = %.lr.ph.i.i.i.i.i29
  %i.cm = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i31, i64 272 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i30, i64 272 ; 2 uses
  %.not.i.i.i.i.i34 = icmp eq ptr %i.cm, %i.b
  br i1 %.not.i.i.i.i.i34, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4pbrt16ShapeSceneEntityES2_SaIS1_EET0_T_S5_S4_RT1_.exit38, label %.lr.ph.i.i.i.i.i29, !llvm.loop !34

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i29
  %i.co = landingpad { ptr, i32 }
          catch ptr null
  %i.cp = extractvalue { ptr, i32 } %i.co, 0
  %i.cq = tail call ptr @__cxa_begin_catch(ptr %i.cp) #32 ; 0 uses
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN4pbrt16ShapeSceneEntityEEEvT_S5_(ptr noundef nonnull %i.cl, ptr noundef nonnull %.016.i.i.i.i.i30)
          to label %_ZSt8_DestroyIPN4pbrt16ShapeSceneEntityEEvT_S3_.exit.i.i.i.i.i32 unwind label %bb.m

_ZSt8_DestroyIPN4pbrt16ShapeSceneEntityEEvT_S3_.exit.i.i.i.i.i32: ; preds = %bb.l
  invoke void @__cxa_rethrow() #34
          to label %bb.o unwind label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPN4pbrt16ShapeSceneEntityEEvT_S3_.exit.i.i.i.i.i32, %bb.l
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %bb.q unwind label %bb.n

end_hunk_14
begin_hunk_15_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4pbrt6MediumEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_:bb.a
  %i.u = load i64, ptr %i.t, align 8, !tbaa !87   ; 2 uses
  %.sroa.speculated.i.i.i5 = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.s) ; 2 uses
  %i.v = icmp eq i64 %.sroa.speculated.i.i.i5, 0
  br i1 %i.v, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 32
  %i.x = load ptr, ptr %1, align 8, !tbaa !89
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !89
  %i.z = tail call i32 @memcmp(ptr noundef %i.y, ptr noundef %i.x, i64 noundef %.sroa.speculated.i.i.i5) #32 ; 2 uses
  %.not.i.i.i7 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %bb.d
  %i.aa = sub i64 %i.s, %i.u
  %spec.select7.i.i.i.i10 = tail call i64 @llvm.smax.i64(i64 %i.aa, i64 -2147483648)
  %.08.i.i.i.i11 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i10, i64 2147483647)
  %.0.i6.i.i.i12 = trunc nsw i64 %.08.i.i.i.i11 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9
  %.0.i.i.i8 = phi i32 [ %i.z, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6 ], [ %.0.i6.i.i.i12, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9 ]
  %i.ab = icmp slt i32 %.0.i.i.i8, 0              ; 2 uses
  %spec.select = select i1 %i.ab, ptr null, ptr %.sroa.014.0
  %spec.select30 = select i1 %i.ab, ptr %.028.lcssa38, ptr null
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13, %._crit_edge.thread
  %.sroa.027.0 = phi ptr [ %spec.select, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ null, %._crit_edge.thread ]
  %.sroa.4.0 = phi ptr [ %spec.select30, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ %.028.lcssa39, %._crit_edge.thread ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.027.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: nounwind
declare noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4pbrt8AsyncJobINS8_6MediumEEEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4pbrt8AsyncJobINS8_6MediumEEEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4pbrt8AsyncJobINS8_6MediumEEEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !431
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4pbrt8AsyncJobINS8_6MediumEEEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !430  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !89   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4pbrt8AsyncJobINS8_6MediumEEEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8, !tbaa !88
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #33
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4pbrt8AsyncJobINS8_6MediumEEEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4pbrt8AsyncJobINS8_6MediumEEEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 72) #33
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2285

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4pbrt8AsyncJobINS8_6MediumEEEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noalias noundef nonnull ptr @"_ZNSt17_Function_handlerIFN4pstd3pmr21polymorphic_allocatorISt4byteEEvEZN4pbrt10BasicSceneC1EvE3$_0E9_M_invokeERKSt9_Any_data"(ptr nofree nonnull readnone align 8 captures(none) %0) #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN4pstd3pmr20get_default_resourceEv() #32
  %i.b = tail call noalias noundef nonnull align 64 dereferenceable(64) ptr @_ZnwmSt11align_val_t(i64 noundef 64, i64 noundef 64) #35 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4pstd3pmr25monotonic_buffer_resourceE, i64 16), ptr %i.b, align 64, !tbaa !72
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.a, ptr %i.c, align 8, !tbaa !79
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1048576, ptr %i.d, align 16, !tbaa !172
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFN4pstd3pmr21polymorphic_allocatorISt4byteEEvEZN4pbrt10BasicSceneC1EvE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt10BasicSceneC1EvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit" [
    i32 0, label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt10BasicSceneC1EvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit.sink.split"
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt10BasicSceneC1EvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIZN4pbrt10BasicSceneC1EvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIZN4pbrt10BasicSceneC1EvE3$_0", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !443
  br label %"_ZNSt14_Function_base13_Base_managerIZN4pbrt10BasicSceneC1EvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN4pbrt10BasicSceneC1EvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZN4pbrt10BasicSceneC1EvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: nounwind
declare noundef ptr @_ZN4pstd3pmr20get_default_resourceEv() local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(176) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !418  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !2287   ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775712
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEESaIS9_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.185) #34
  unreachable

_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEESaIS9_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 176                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 52405522936674862)
  %i.l = select i1 %i.j, i64 52405522936674862, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 176                ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #35 ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 11 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !85
  %i.s = load ptr, ptr %2, align 8, !tbaa !89     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEESaIS9_EE12_M_check_lenEmPKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !87   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEESaIS9_EE12_M_check_lenEmPKc.exit
  store ptr %i.s, ptr %i.q, align 8, !tbaa !89
  %i.z = load i64, ptr %i.t, align 8, !tbaa !88
  store i64 %i.z, ptr %i.r, align 8, !tbaa !88
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !87
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.c
  %i.aa = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.w, %bb.c ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !87
  store ptr %i.t, ptr %2, align 8, !tbaa !89
  store i64 0, ptr %i.ab, align 8, !tbaa !87
  store i8 0, ptr %i.t, align 8, !tbaa !88
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.ad, ptr noundef nonnull align 8 dereferenceable(144) %i.ae, i64 32, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !102
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !102
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 144
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !109 ; 3 uses
  %i.an = load <2 x i64>, ptr %i.al, align 8, !tbaa !198
  store <2 x i64> %i.an, ptr %i.aj, align 8, !tbaa !198
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !103
  store ptr %i.ap, ptr %i.ai, align 8, !tbaa !103
  %i.aq = icmp ult i64 %i.am, 9
  br i1 %i.aq, label %.preheader.i.i.i.i, label %bb.d

.preheader.i.i.i.i:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %.not.i.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.at = shl nuw nsw i64 %i.am, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ar, ptr nonnull align 8 %i.as, i64 %i.at, i1 false), !tbaa !189
  br label %.loopexit

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store i64 0, ptr %i.ak, align 8, !tbaa !109
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %bb.d, %.preheader.i.i.i.i
  store i64 0, ptr %i.al, align 8, !tbaa !110
  store ptr null, ptr %i.ao, align 8, !tbaa !103
  %i.au = getelementptr inbounds nuw i8, ptr %i.q, i64 160
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 160
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.au, ptr noundef nonnull align 8 dereferenceable(12) %i.av, i64 12, i1 false)
  %.not14.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not14.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEESA_SaIS9_EET0_T_SD_SC_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.loopexit, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.016.i.i.i.i.i = phi ptr [ %i.ax, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %.loopexit ] ; 3 uses
  %.01215.i.i.i.i.i = phi ptr [ %i.aw, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %.loopexit ] ; 2 uses
  invoke void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(176) %.016.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(176) %.01215.i.i.i.i.i)
          to label %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.e

_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i, i64 176 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i, i64 176 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aw, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEESA_SaIS9_EET0_T_SD_SC_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2286

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  %i.ba = tail call ptr @__cxa_begin_catch(ptr %i.az) #32 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEEEvT_SB_(ptr noundef nonnull %i.p, ptr noundef nonnull %.016.i.i.i.i.i)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #34
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEES9_EvT_SB_RSaIT0_E.exit.thread unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  tail call void @__clang_call_terminate(ptr %i.bd) #31
  unreachable

bb.i:                                             ; preds = %bb.f
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEESA_SaIS9_EET0_T_SD_SC_RT1_.exit: ; preds = %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i, %.loopexit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %.loopexit ], [ %i.ax, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 176 ; 4 uses
  %.not14.i.i.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not14.i.i.i.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEESA_SaIS9_EET0_T_SD_SC_RT1_.exit37, label %.lr.ph.i.i.i.i.i29

.lr.ph.i.i.i.i.i29:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEESA_SaIS9_EET0_T_SD_SC_RT1_.exit, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i32
  %.016.i.i.i.i.i30 = phi ptr [ %i.bg, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i32 ], [ %i.be, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEESA_SaIS9_EET0_T_SD_SC_RT1_.exit ] ; 3 uses
  %.01215.i.i.i.i.i31 = phi ptr [ %i.bf, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i32 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEESA_SaIS9_EET0_T_SD_SC_RT1_.exit ] ; 2 uses
  invoke void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(176) %.016.i.i.i.i.i30, ptr noundef nonnull align 8 dereferenceable(176) %.01215.i.i.i.i.i31)
          to label %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i32 unwind label %bb.j

_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i32: ; preds = %.lr.ph.i.i.i.i.i29
  %i.bf = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i31, i64 176 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i30, i64 176 ; 2 uses
  %.not.i.i.i.i.i33 = icmp eq ptr %i.bf, %i.b
  br i1 %.not.i.i.i.i.i33, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEESA_SaIS9_EET0_T_SD_SC_RT1_.exit37, label %.lr.ph.i.i.i.i.i29, !llvm.loop !2286

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i29
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  %i.bj = tail call ptr @__cxa_begin_catch(ptr %i.bi) #32 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEEEvT_SB_(ptr noundef nonnull %i.be, ptr noundef nonnull %.016.i.i.i.i.i30)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_rethrow() #34
          to label %bb.n unwind label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %bb.r unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  tail call void @__clang_call_terminate(ptr %i.bm) #31
  unreachable

bb.n:                                             ; preds = %bb.k
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEESA_SaIS9_EET0_T_SD_SC_RT1_.exit37: ; preds = %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i32, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEESA_SaIS9_EET0_T_SD_SC_RT1_.exit
  %.0.lcssa.i.i.i.i.i34 = phi ptr [ %i.be, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEESA_SaIS9_EET0_T_SD_SC_RT1_.exit ], [ %i.bg, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i32 ]
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEEEvT_SB_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEESA_SaIS9_EET0_T_SD_SC_RT1_.exit37, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.cf, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEEEvPT_.exit.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEESA_SaIS9_EET0_T_SD_SC_RT1_.exit37 ] ; 7 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 152
  store i64 0, ptr %i.bn, align 8, !tbaa !109
  %i.bo = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 72
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4pbrt11SceneEntityD2Ev.exit.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 64
  %i.br = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 144
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !110
  %i.bt = shl i64 %i.bs, 3
  %i.bu = load ptr, ptr %i.bq, align 8, !tbaa !111 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !72
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8
  invoke void %i.bx(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, ptr noundef nonnull %i.bp, i64 noundef %i.bt, i64 noundef 8)
          to label %_ZN4pbrt11SceneEntityD2Ev.exit.i.i.i.i unwind label %bb.p, !inline_history !3

bb.p:                                             ; preds = %bb.o
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  tail call void @__clang_call_terminate(ptr %i.bz) #31
  unreachable

_ZN4pbrt11SceneEntityD2Ev.exit.i.i.i.i:           ; preds = %bb.o, %.lr.ph.i.i
  %i.ca = load ptr, ptr %.05.i.i, align 8, !tbaa !89 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZN4pbrt11SceneEntityD2Ev.exit.i.i.i.i
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !88
  %i.ce = add i64 %i.cd, 1
  tail call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.ce) #33
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEEEvPT_.exit.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEEEvPT_.exit.i.i: ; preds = %_ZN4pbrt11SceneEntityD2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 176 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cf, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEEEvT_SB_.exit, label %.lr.ph.i.i, !llvm.loop !48

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEEEvT_SB_.exit: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEESA_SaIS9_EET0_T_SD_SC_RT1_.exit37
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i38 = icmp eq ptr %i.c, null
  br i1 %.not.i38, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEESaIS9_EE13_M_deallocateEPS9_m.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEEEvT_SB_.exit
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !419
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = sub i64 %i.ci, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.cj) #33
  br label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEESaIS9_EE13_M_deallocateEPS9_m.exit

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEESaIS9_EE13_M_deallocateEPS9_m.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEEEvT_SB_.exit, %bb.q
  store ptr %i.p, ptr %0, align 8, !tbaa !2287
  store ptr %.0.lcssa.i.i.i.i.i34, ptr %i.a, align 8, !tbaa !418
  %i.ck = getelementptr inbounds nuw [176 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ck, ptr %i.cg, align 8, !tbaa !419
  ret void

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEES9_EvT_SB_RSaIT0_E.exit.thread: ; preds = %bb.g
  %i.cl = extractvalue { ptr, i32 } %i.bb, 0
  %i.cm = tail call ptr @__cxa_begin_catch(ptr %i.cl) #32 ; 0 uses
  tail call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEED2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %i.q) #32
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEES9_EvT_SB_RSaIT0_E.exit

bb.r:                                             ; preds = %bb.l
  %i.cn = extractvalue { ptr, i32 } %i.bk, 0
  %i.co = tail call ptr @__cxa_begin_catch(ptr %i.cn) #32 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEEEvT_SB_(ptr noundef nonnull %i.p, ptr noundef nonnull %i.be)
          to label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEES9_EvT_SB_RSaIT0_E.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEES9_EvT_SB_RSaIT0_E.exit
  %i.cp = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.t unwind label %bb.u

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEES9_EvT_SB_RSaIT0_E.exit: ; preds = %bb.r, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEES9_EvT_SB_RSaIT0_E.exit.thread
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #33
  invoke void @__cxa_rethrow() #34
          to label %bb.v unwind label %bb.s

bb.t:                                             ; preds = %bb.s
  resume { ptr, i32 } %i.cp

bb.u:                                             ; preds = %bb.s
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
end_hunk_15
begin_hunk_16_@_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt11SceneEntityEEC2ERKS8_:bb.a

vector.body27:                                    ; preds = %vector.ph25, %vector.body27
  %index28 = phi i64 [ 0, %vector.ph25 ], [ %index.next33, %vector.body27 ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %index28 ; 4 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %index28 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 96
  %wide.load29 = load <4 x ptr>, ptr %i.ct, align 8, !tbaa !189
  %wide.load30 = load <4 x ptr>, ptr %i.cu, align 8, !tbaa !189
  %wide.load31 = load <4 x ptr>, ptr %i.cv, align 8, !tbaa !189
  %wide.load32 = load <4 x ptr>, ptr %i.cw, align 8, !tbaa !189
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cs, i64 96
  store <4 x ptr> %wide.load29, ptr %i.cs, align 8, !tbaa !189
  store <4 x ptr> %wide.load30, ptr %i.cx, align 8, !tbaa !189
  store <4 x ptr> %wide.load31, ptr %i.cy, align 8, !tbaa !189
  store <4 x ptr> %wide.load32, ptr %i.cz, align 8, !tbaa !189
  %index.next33 = add nuw i64 %index28, 16        ; 2 uses
  %i.da = icmp eq i64 %index.next33, %n.vec26
  br i1 %i.da, label %middle.block34, label %vector.body27, !llvm.loop !2292

middle.block34:                                   ; preds = %vector.body27
  %cmp.n35 = icmp eq i64 %i.ch, %n.vec26
  br i1 %cmp.n35, label %.loopexit, label %vec.epilog.iter.check37

vec.epilog.iter.check37:                          ; preds = %middle.block34
  %min.epilog.iters.check39 = icmp eq i64 %i.cr, 0
  br i1 %min.epilog.iters.check39, label %vec.epilog.scalar.ph38.preheader, label %vec.epilog.ph40, !prof !181

vec.epilog.ph40:                                  ; preds = %vector.main.loop.iter.check23, %vec.epilog.iter.check37
  %vec.epilog.resume.val41 = phi i64 [ %n.vec26, %vec.epilog.iter.check37 ], [ 0, %vector.main.loop.iter.check23 ]
  %n.vec42 = and i64 %i.ch, -4                    ; 3 uses
  br label %vec.epilog.vector.body43

vec.epilog.vector.body43:                         ; preds = %vec.epilog.vector.body43, %vec.epilog.ph40
  %index44 = phi i64 [ %vec.epilog.resume.val41, %vec.epilog.ph40 ], [ %index.next46, %vec.epilog.vector.body43 ] ; 3 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %index44
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %index44
  %wide.load45 = load <4 x ptr>, ptr %i.dc, align 8, !tbaa !189
  store <4 x ptr> %wide.load45, ptr %i.db, align 8, !tbaa !189
  %index.next46 = add nuw i64 %index44, 4         ; 2 uses
  %i.dd = icmp eq i64 %index.next46, %n.vec42
  br i1 %i.dd, label %vec.epilog.middle.block47, label %vec.epilog.vector.body43, !llvm.loop !2293

vec.epilog.middle.block47:                        ; preds = %vec.epilog.vector.body43
  %cmp.n48 = icmp eq i64 %i.ch, %n.vec42
  br i1 %cmp.n48, label %.loopexit, label %vec.epilog.scalar.ph38.preheader

vec.epilog.scalar.ph38.preheader:                 ; preds = %iter.check36, %vec.epilog.iter.check37, %vec.epilog.middle.block47
  %.011.i.i.i.ph = phi i64 [ 0, %iter.check36 ], [ %n.vec26, %vec.epilog.iter.check37 ], [ %n.vec42, %vec.epilog.middle.block47 ] ; 4 uses
  %i.de = sub i64 %i.ch, %.011.i.i.i.ph
  %xtraiter54 = and i64 %i.de, 7                  ; 2 uses
  %lcmp.mod55.not = icmp eq i64 %xtraiter54, 0
  br i1 %lcmp.mod55.not, label %vec.epilog.scalar.ph38.prol.loopexit, label %vec.epilog.scalar.ph38.prol

vec.epilog.scalar.ph38.prol:                      ; preds = %vec.epilog.scalar.ph38.preheader, %vec.epilog.scalar.ph38.prol
  %.011.i.i.i.prol = phi i64 [ %i.di, %vec.epilog.scalar.ph38.prol ], [ %.011.i.i.i.ph, %vec.epilog.scalar.ph38.preheader ] ; 3 uses
  %prol.iter56 = phi i64 [ %prol.iter56.next, %vec.epilog.scalar.ph38.prol ], [ 0, %vec.epilog.scalar.ph38.preheader ]
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %.011.i.i.i.prol
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.011.i.i.i.prol
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !189
  store ptr %i.dh, ptr %i.df, align 8, !tbaa !189
  %i.di = add nuw i64 %.011.i.i.i.prol, 1         ; 2 uses
  %prol.iter56.next = add i64 %prol.iter56, 1     ; 2 uses
  %prol.iter56.cmp.not = icmp eq i64 %prol.iter56.next, %xtraiter54
  br i1 %prol.iter56.cmp.not, label %vec.epilog.scalar.ph38.prol.loopexit, label %vec.epilog.scalar.ph38.prol, !llvm.loop !2294

vec.epilog.scalar.ph38.prol.loopexit:             ; preds = %vec.epilog.scalar.ph38.prol, %vec.epilog.scalar.ph38.preheader
  %.011.i.i.i.unr = phi i64 [ %.011.i.i.i.ph, %vec.epilog.scalar.ph38.preheader ], [ %i.di, %vec.epilog.scalar.ph38.prol ]
  %i.dj = sub i64 %.011.i.i.i.ph, %i.ch
  %i.dk = icmp ugt i64 %i.dj, -8
  br i1 %i.dk, label %.loopexit, label %vec.epilog.scalar.ph38

vec.epilog.scalar.ph38:                           ; preds = %vec.epilog.scalar.ph38.prol.loopexit, %vec.epilog.scalar.ph38
  %.011.i.i.i = phi i64 [ %i.eq, %vec.epilog.scalar.ph38 ], [ %.011.i.i.i.unr, %vec.epilog.scalar.ph38.prol.loopexit ] ; 10 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %.011.i.i.i
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.011.i.i.i
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !189
  store ptr %i.dn, ptr %i.dl, align 8, !tbaa !189
  %i.do = add nuw i64 %.011.i.i.i, 1              ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.do
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.do
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !189
  store ptr %i.dr, ptr %i.dp, align 8, !tbaa !189
  %i.ds = add nuw i64 %.011.i.i.i, 2              ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.ds
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.ds
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !189
  store ptr %i.dv, ptr %i.dt, align 8, !tbaa !189
  %i.dw = add nuw i64 %.011.i.i.i, 3              ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.dw
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.dw
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !189
  store ptr %i.dz, ptr %i.dx, align 8, !tbaa !189
  %i.ea = add nuw i64 %.011.i.i.i, 4              ; 2 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.ea
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.ea
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !189
  store ptr %i.ed, ptr %i.eb, align 8, !tbaa !189
  %i.ee = add nuw i64 %.011.i.i.i, 5              ; 2 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.ee
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.ee
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !189
  store ptr %i.eh, ptr %i.ef, align 8, !tbaa !189
  %i.ei = add nuw i64 %.011.i.i.i, 6              ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.ei
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.ei
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !189
  store ptr %i.el, ptr %i.ej, align 8, !tbaa !189
  %i.em = add nuw i64 %.011.i.i.i, 7              ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.em
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.em
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !189
  store ptr %i.ep, ptr %i.en, align 8, !tbaa !189
  %i.eq = add nuw i64 %.011.i.i.i, 8              ; 2 uses
  %exitcond.not.i.i.i.7 = icmp eq i64 %i.eq, %i.ch
  br i1 %exitcond.not.i.i.i.7, label %.loopexit, label %vec.epilog.scalar.ph38, !llvm.loop !2295

.loopexit:                                        ; preds = %vec.epilog.scalar.ph38.prol.loopexit, %vec.epilog.scalar.ph38, %middle.block34, %vec.epilog.middle.block47, %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEE7reserveEm.exit.i.i.i
  store i64 %i.ch, ptr %i.v, align 8, !tbaa !109
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.er, ptr noundef nonnull align 8 dereferenceable(12) %i.es, i64 12, i1 false)
  ret void

bb.f:                                             ; preds = %bb.e, %_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE15allocate_objectIS4_EEPT_m.exit.i.i.i.i
  %i.et = landingpad { ptr, i32 }
          cleanup
  %i.eu = load ptr, ptr %0, align 8, !tbaa !89    ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.b
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.ew = load i64, ptr %i.b, align 8, !tbaa !88
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ex) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.et
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN4pbrt11SceneEntityESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(144) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !196  ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !199    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775728
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4pbrt11SceneEntityESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.185) #34
  unreachable

_ZNKSt6vectorIN4pbrt11SceneEntityESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 144                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 64051194700380387)
  %i.l = select i1 %i.j, i64 64051194700380387, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 144                ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #35 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 7 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.q, ptr noundef nonnull align 8 dereferenceable(144) %2, i64 32, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.t = load i64, ptr %i.s, align 8, !tbaa !102
  store i64 %i.t, ptr %i.r, align 8, !tbaa !102
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 112
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.y = load i64, ptr %i.w, align 8, !tbaa !109  ; 3 uses
  %i.z = load <2 x i64>, ptr %i.x, align 8, !tbaa !198
  store <2 x i64> %i.z, ptr %i.v, align 8, !tbaa !198
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !103
  store ptr %i.ab, ptr %i.u, align 8, !tbaa !103
  %i.ac = icmp ult i64 %i.y, 9
  br i1 %i.ac, label %.preheader.i.i.i, label %bb.c

.preheader.i.i.i:                                 ; preds = %_ZNKSt6vectorIN4pbrt11SceneEntityESaIS1_EE12_M_check_lenEmPKc.exit
  %.not.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.i, label %.loopexit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.af = shl nuw nsw i64 %i.y, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr nonnull align 8 %i.ae, i64 %i.af, i1 false), !tbaa !189
  br label %.loopexit

bb.c:                                             ; preds = %_ZNKSt6vectorIN4pbrt11SceneEntityESaIS1_EE12_M_check_lenEmPKc.exit
  store i64 0, ptr %i.w, align 8, !tbaa !109
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i.i, %bb.c, %.preheader.i.i.i
  store i64 0, ptr %i.x, align 8, !tbaa !110
  store ptr null, ptr %i.aa, align 8, !tbaa !103
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ag, ptr noundef nonnull align 8 dereferenceable(12) %i.ah, i64 12, i1 false)
  %i.ai = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN4pbrt11SceneEntityEPS1_ET0_T_S6_S5_(ptr noundef %i.c, ptr noundef %1, ptr noundef nonnull %i.p)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPN4pbrt11SceneEntityES2_SaIS1_EET0_T_S5_S4_RT1_.exit unwind label %bb.g

_ZSt34__uninitialized_move_if_noexcept_aIPN4pbrt11SceneEntityES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %.loopexit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 144 ; 2 uses
  %i.ak = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN4pbrt11SceneEntityEPS1_ET0_T_S6_S5_(ptr noundef %1, ptr noundef %i.b, ptr noundef nonnull %i.aj)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPN4pbrt11SceneEntityES2_SaIS1_EET0_T_S5_S4_RT1_.exit28 unwind label %bb.h

_ZSt34__uninitialized_move_if_noexcept_aIPN4pbrt11SceneEntityES2_SaIS1_EET0_T_S5_S4_RT1_.exit28: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4pbrt11SceneEntityES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4pbrt11SceneEntityEEvT_S3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4pbrt11SceneEntityES2_SaIS1_EET0_T_S5_S4_RT1_.exit28, %_ZSt8_DestroyIN4pbrt11SceneEntityEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.ay, %_ZSt8_DestroyIN4pbrt11SceneEntityEEvPT_.exit.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN4pbrt11SceneEntityES2_SaIS1_EET0_T_S5_S4_RT1_.exit28 ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 120
  store i64 0, ptr %i.al, align 8, !tbaa !109
  %i.am = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN4pbrt11SceneEntityEEvPT_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 112
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !110
  %i.ar = shl i64 %i.aq, 3
  %i.as = load ptr, ptr %i.ao, align 8, !tbaa !111 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !72
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  invoke void %i.av(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull %i.an, i64 noundef %i.ar, i64 noundef 8)
          to label %_ZSt8_DestroyIN4pbrt11SceneEntityEEvPT_.exit.i.i unwind label %bb.e, !inline_history !3

bb.e:                                             ; preds = %bb.d
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  tail call void @__clang_call_terminate(ptr %i.ax) #31
  unreachable

_ZSt8_DestroyIN4pbrt11SceneEntityEEvPT_.exit.i.i: ; preds = %bb.d, %.lr.ph.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 144 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ay, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4pbrt11SceneEntityEEvT_S3_.exit, label %.lr.ph.i.i, !llvm.loop !49

_ZSt8_DestroyIPN4pbrt11SceneEntityEEvT_S3_.exit:  ; preds = %_ZSt8_DestroyIN4pbrt11SceneEntityEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN4pbrt11SceneEntityES2_SaIS1_EET0_T_S5_S4_RT1_.exit28
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i29 = icmp eq ptr %i.c, null
  br i1 %.not.i29, label %_ZNSt12_Vector_baseIN4pbrt11SceneEntityESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN4pbrt11SceneEntityEEvT_S3_.exit
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !197
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bc) #33
  br label %_ZNSt12_Vector_baseIN4pbrt11SceneEntityESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN4pbrt11SceneEntityESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt8_DestroyIPN4pbrt11SceneEntityEEvT_S3_.exit, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !199
  store ptr %i.ak, ptr %i.a, align 8, !tbaa !196
  %i.bd = getelementptr inbounds nuw [144 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bd, ptr %i.az, align 8, !tbaa !197
  ret void

bb.g:                                             ; preds = %.loopexit
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  %i.bg = tail call ptr @__cxa_begin_catch(ptr %i.bf) #32 ; 0 uses
  tail call void @_ZN4pbrt11SceneEntityD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.q) #32
  br label %bb.j

bb.h:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4pbrt11SceneEntityES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  %i.bj = tail call ptr @__cxa_begin_catch(ptr %i.bi) #32 ; 0 uses
  invoke void @_ZSt8_DestroyIPN4pbrt11SceneEntityEEvT_S3_(ptr noundef nonnull %i.p, ptr noundef nonnull %i.aj)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.j
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %bb.g, %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #33
  invoke void @__cxa_rethrow() #34
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bk

bb.l:                                             ; preds = %bb.i
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  tail call void @__clang_call_terminate(ptr %i.bm) #31
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIPKN4pbrt11SceneEntityEPS1_ET0_T_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not15 = icmp eq ptr %0, %1
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.loopexit
  %.017 = phi ptr [ %i.ee, %.loopexit ], [ %2, %bb.a ] ; 10 uses
  %.01216 = phi ptr [ %i.ed, %.loopexit ], [ %0, %bb.a ] ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.017, ptr noundef nonnull align 8 dereferenceable(144) %.01216, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %.017, i64 32 ; 2 uses
  %i.b = tail call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #32 ; 3 uses
  %i.c = ptrtoint ptr %i.b to i64
  store i64 %i.c, ptr %i.a, align 8, !tbaa !102
  %i.d = getelementptr inbounds nuw i8, ptr %.017, i64 40 ; 3 uses
  store ptr null, ptr %i.d, align 8, !tbaa !103
  %i.e = getelementptr inbounds nuw i8, ptr %.017, i64 112 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.017, i64 120 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.01216, i64 120 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.h = load i64, ptr %i.g, align 8, !tbaa !109  ; 4 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.h, 8
  br i1 %.not.i.i.i.i.i, label %bb.b, label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEE7reserveEm.exit.i.i.i.i

bb.b:                                             ; preds = %.lr.ph
  %i.i = shl i64 %i.h, 3                          ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE17deallocate_objectIS4_EEvPT_m.exit.i.i.i.i.i, label %_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE15allocate_objectIS4_EEPT_m.exit.i.i.i.i.i

_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE15allocate_objectIS4_EEPT_m.exit.i.i.i.i.i: ; preds = %bb.b
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !72
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = invoke noundef ptr %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %i.i, i64 noundef 8)
          to label %.noexc unwind label %bb.d, !inline_history !2296 ; 14 uses

.noexc:                                           ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE15allocate_objectIS4_EEPT_m.exit.i.i.i.i.i
  %.pre.pre.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !103 ; 4 uses
  %.pre.i.i.i.i = load i64, ptr %i.f, align 8, !tbaa !109 ; 11 uses
  %.not15.i.i.i.i.i = icmp eq i64 %.pre.i.i.i.i, 0
  br i1 %.not15.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %iter.check54

iter.check54:                                     ; preds = %.noexc
  %i.o = ptrtoaddr ptr %i.n to i64
  %.not.i12.i.i.i.i.i = icmp eq ptr %.pre.pre.i.i.i.i.i, null
  %i.p = getelementptr inbounds nuw i8, ptr %.017, i64 48
  %i.q = select i1 %.not.i12.i.i.i.i.i, ptr %i.p, ptr %.pre.pre.i.i.i.i.i ; 12 uses
  %min.iters.check38 = icmp ult i64 %.pre.i.i.i.i, 4
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = sub i64 %i.r, %i.o
  %diff.check40 = icmp ugt i64 %i.s, -128
  %or.cond = select i1 %min.iters.check38, i1 true, i1 %diff.check40
  br i1 %or.cond, label %vec.epilog.scalar.ph56.preheader, label %vector.main.loop.iter.check41

vector.main.loop.iter.check41:                    ; preds = %iter.check54
  %min.iters.check42 = icmp ult i64 %.pre.i.i.i.i, 16
  br i1 %min.iters.check42, label %vec.epilog.ph58, label %vector.ph43

vector.ph43:                                      ; preds = %vector.main.loop.iter.check41
  %i.t = and i64 %.pre.i.i.i.i, 12
  %n.vec44 = and i64 %.pre.i.i.i.i, -16           ; 4 uses
  br label %vector.body45

vector.body45:                                    ; preds = %vector.ph43, %vector.body45
  %index46 = phi i64 [ 0, %vector.ph43 ], [ %index.next51, %vector.body45 ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index46 ; 4 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %index46 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  %wide.load47 = load <4 x ptr>, ptr %i.v, align 8, !tbaa !189
  %wide.load48 = load <4 x ptr>, ptr %i.w, align 8, !tbaa !189
  %wide.load49 = load <4 x ptr>, ptr %i.x, align 8, !tbaa !189
  %wide.load50 = load <4 x ptr>, ptr %i.y, align 8, !tbaa !189
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  store <4 x ptr> %wide.load47, ptr %i.u, align 8, !tbaa !189
  store <4 x ptr> %wide.load48, ptr %i.z, align 8, !tbaa !189
  store <4 x ptr> %wide.load49, ptr %i.aa, align 8, !tbaa !189
  store <4 x ptr> %wide.load50, ptr %i.ab, align 8, !tbaa !189
  %index.next51 = add nuw i64 %index46, 16        ; 2 uses
  %i.ac = icmp eq i64 %index.next51, %n.vec44
end_hunk_16
begin_hunk_17_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4pbrt8AsyncJobIPNS8_5ImageEEEESt10_Select1stISE_ESt4lessIS5_ESaISE_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESP_IJEEEEEvPSt13_Rb_tree_nodeISE_EDpOT_:bb.a
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #31
  unreachable

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4pbrt8AsyncJobIPNS8_5ImageEEEESt10_Select1stISE_ESt4lessIS5_ESaISE_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.02931 = load ptr, ptr %i.a, align 8, !tbaa !216 ; 2 uses
  %.not32 = icmp eq ptr %.02931, null
  br i1 %.not32, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !87   ; 2 uses
  %i.e = load ptr, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.02933 = phi ptr [ %.02931, %.lr.ph ], [ %.029, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02933, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !87   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.d) ; 2 uses
  %i.h = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.h, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.02933, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !89
  %i.k = tail call i32 @memcmp(ptr noundef %i.e, ptr noundef %i.j, i64 noundef %.sroa.speculated.i.i.i) #32 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.b
  %i.l = sub i64 %i.d, %i.g
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.l, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.k, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.m = icmp slt i32 %.0.i.i.i, 0                ; 2 uses
  %.in.v = select i1 %i.m, i64 16, i64 24
  %.in = getelementptr inbounds nuw i8, ptr %.02933, i64 %.in.v
  %.029 = load ptr, ptr %.in, align 8, !tbaa !216 ; 2 uses
  %.not = icmp eq ptr %.029, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !2307

._crit_edge:                                      ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  br i1 %i.m, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.028.lcssa39 = phi ptr [ %.02933, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !169
  %i.p = icmp eq ptr %.028.lcssa39, %i.o
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.028.lcssa39) #36
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.028.lcssa38 = phi ptr [ %.028.lcssa39, %bb.c ], [ %.02933, %._crit_edge ]
  %.sroa.014.0 = phi ptr [ %i.q, %bb.c ], [ %.02933, %._crit_edge ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !87   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !87   ; 2 uses
  %.sroa.speculated.i.i.i5 = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.s) ; 2 uses
  %i.v = icmp eq i64 %.sroa.speculated.i.i.i5, 0
  br i1 %i.v, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 32
  %i.x = load ptr, ptr %1, align 8, !tbaa !89
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !89
  %i.z = tail call i32 @memcmp(ptr noundef %i.y, ptr noundef %i.x, i64 noundef %.sroa.speculated.i.i.i5) #32 ; 2 uses
  %.not.i.i.i7 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %bb.d
  %i.aa = sub i64 %i.s, %i.u
  %spec.select7.i.i.i.i10 = tail call i64 @llvm.smax.i64(i64 %i.aa, i64 -2147483648)
  %.08.i.i.i.i11 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i10, i64 2147483647)
  %.0.i6.i.i.i12 = trunc nsw i64 %.08.i.i.i.i11 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9
  %.0.i.i.i8 = phi i32 [ %i.z, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6 ], [ %.0.i6.i.i.i12, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9 ]
  %i.ab = icmp slt i32 %.0.i.i.i8, 0              ; 2 uses
  %spec.select = select i1 %i.ab, ptr null, ptr %.sroa.014.0
  %spec.select30 = select i1 %i.ab, ptr %.028.lcssa38, ptr null
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13, %._crit_edge.thread
  %.sroa.027.0 = phi ptr [ %spec.select, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ null, %._crit_edge.thread ]
  %.sroa.4.0 = phi ptr [ %spec.select30, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ %.028.lcssa39, %._crit_edge.thread ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.027.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(872) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !400  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !2309   ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775448
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.185) #34
  unreachable

_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 872                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 10577261510154559)
  %i.l = select i1 %i.j, i64 10577261510154559, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 872                ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #35 ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 12 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !85
  %i.s = load ptr, ptr %2, align 8, !tbaa !89     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE12_M_check_lenEmPKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !87   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE12_M_check_lenEmPKc.exit
  store ptr %i.s, ptr %i.q, align 8, !tbaa !89
  %i.z = load i64, ptr %i.t, align 8, !tbaa !88
  store i64 %i.z, ptr %i.r, align 8, !tbaa !88
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !87
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.c
  %i.aa = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.w, %bb.c ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !87
  store ptr %i.t, ptr %2, align 8, !tbaa !89
  store i64 0, ptr %i.ab, align 8, !tbaa !87
  store i8 0, ptr %i.t, align 8, !tbaa !88
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(840) %i.ad, ptr noundef nonnull align 8 dereferenceable(840) %i.ae, i64 32, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !102
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !102
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 144
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !109 ; 3 uses
  %i.an = load <2 x i64>, ptr %i.al, align 8, !tbaa !198
  store <2 x i64> %i.an, ptr %i.aj, align 8, !tbaa !198
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !103
  store ptr %i.ap, ptr %i.ai, align 8, !tbaa !103
  %i.aq = icmp ult i64 %i.am, 9
  br i1 %i.aq, label %.preheader.i.i.i.i.i, label %bb.d

.preheader.i.i.i.i.i:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %.not.i.i.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.at = shl nuw nsw i64 %i.am, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ar, ptr nonnull align 8 %i.as, i64 %i.at, i1 false), !tbaa !189
  br label %.loopexit

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store i64 0, ptr %i.ak, align 8, !tbaa !109
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %bb.d, %.preheader.i.i.i.i.i
  store i64 0, ptr %i.al, align 8, !tbaa !110
  store ptr null, ptr %i.ao, align 8, !tbaa !103
  %i.au = getelementptr inbounds nuw i8, ptr %i.q, i64 160
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 160
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.au, ptr noundef nonnull align 8 dereferenceable(12) %i.av, i64 12, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.q, i64 176
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 176
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(696) %i.aw, ptr noundef nonnull align 8 dereferenceable(696) %i.ax, i64 696, i1 false), !tbaa.struct !336
  %.not14.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not14.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESA_SaIS9_EET0_T_SD_SC_RT1_.exit, label %.lr.ph.i.i.i.i.i28

.lr.ph.i.i.i.i.i28:                               ; preds = %.loopexit, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.016.i.i.i.i.i = phi ptr [ %i.az, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %.loopexit ] ; 3 uses
  %.01215.i.i.i.i.i = phi ptr [ %i.ay, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %.loopexit ] ; 2 uses
  invoke void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(872) %.016.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(872) %.01215.i.i.i.i.i)
          to label %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.e

_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i28
  %i.ay = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i, i64 872 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i, i64 872 ; 2 uses
  %.not.i.i.i.i.i29 = icmp eq ptr %i.ay, %1
  br i1 %.not.i.i.i.i.i29, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESA_SaIS9_EET0_T_SD_SC_RT1_.exit, label %.lr.ph.i.i.i.i.i28, !llvm.loop !2308

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i28
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  %i.bc = tail call ptr @__cxa_begin_catch(ptr %i.bb) #32 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEEEvT_SB_(ptr noundef nonnull %i.p, ptr noundef nonnull %.016.i.i.i.i.i)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #34
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEES9_EvT_SB_RSaIT0_E.exit.thread unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  tail call void @__clang_call_terminate(ptr %i.bf) #31
  unreachable

bb.i:                                             ; preds = %bb.f
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESA_SaIS9_EET0_T_SD_SC_RT1_.exit: ; preds = %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i, %.loopexit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %.loopexit ], [ %i.az, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 872 ; 4 uses
  %.not14.i.i.i.i.i30 = icmp eq ptr %1, %i.b
  br i1 %.not14.i.i.i.i.i30, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESA_SaIS9_EET0_T_SD_SC_RT1_.exit39, label %.lr.ph.i.i.i.i.i31

.lr.ph.i.i.i.i.i31:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESA_SaIS9_EET0_T_SD_SC_RT1_.exit, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i34
  %.016.i.i.i.i.i32 = phi ptr [ %i.bi, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i34 ], [ %i.bg, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESA_SaIS9_EET0_T_SD_SC_RT1_.exit ] ; 3 uses
  %.01215.i.i.i.i.i33 = phi ptr [ %i.bh, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i34 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESA_SaIS9_EET0_T_SD_SC_RT1_.exit ] ; 2 uses
  invoke void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(872) %.016.i.i.i.i.i32, ptr noundef nonnull align 8 dereferenceable(872) %.01215.i.i.i.i.i33)
          to label %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i34 unwind label %bb.j

_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i34: ; preds = %.lr.ph.i.i.i.i.i31
  %i.bh = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i33, i64 872 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i32, i64 872 ; 2 uses
  %.not.i.i.i.i.i35 = icmp eq ptr %i.bh, %i.b
  br i1 %.not.i.i.i.i.i35, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESA_SaIS9_EET0_T_SD_SC_RT1_.exit39, label %.lr.ph.i.i.i.i.i31, !llvm.loop !2308

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i31
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  %i.bl = tail call ptr @__cxa_begin_catch(ptr %i.bk) #32 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEEEvT_SB_(ptr noundef nonnull %i.bg, ptr noundef nonnull %.016.i.i.i.i.i32)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_rethrow() #34
          to label %bb.n unwind label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %bb.r unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  tail call void @__clang_call_terminate(ptr %i.bo) #31
  unreachable

bb.n:                                             ; preds = %bb.k
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESA_SaIS9_EET0_T_SD_SC_RT1_.exit39: ; preds = %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i34, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESA_SaIS9_EET0_T_SD_SC_RT1_.exit
  %.0.lcssa.i.i.i.i.i36 = phi ptr [ %i.bg, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESA_SaIS9_EET0_T_SD_SC_RT1_.exit ], [ %i.bi, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i34 ]
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEEEvT_SB_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESA_SaIS9_EET0_T_SD_SC_RT1_.exit39, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.ch, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEEEvPT_.exit.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESA_SaIS9_EET0_T_SD_SC_RT1_.exit39 ] ; 7 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 152
  store i64 0, ptr %i.bp, align 8, !tbaa !109
  %i.bq = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 72
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !103 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4pbrt11SceneEntityD2Ev.exit.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 64
  %i.bt = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 144
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !110
  %i.bv = shl i64 %i.bu, 3
  %i.bw = load ptr, ptr %i.bs, align 8, !tbaa !111 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !72
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8
  invoke void %i.bz(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, ptr noundef nonnull %i.br, i64 noundef %i.bv, i64 noundef 8)
          to label %_ZN4pbrt11SceneEntityD2Ev.exit.i.i.i.i unwind label %bb.p, !inline_history !3

bb.p:                                             ; preds = %bb.o
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  tail call void @__clang_call_terminate(ptr %i.cb) #31
  unreachable

_ZN4pbrt11SceneEntityD2Ev.exit.i.i.i.i:           ; preds = %bb.o, %.lr.ph.i.i
  %i.cc = load ptr, ptr %.05.i.i, align 8, !tbaa !89 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZN4pbrt11SceneEntityD2Ev.exit.i.i.i.i
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !88
  %i.cg = add i64 %i.cf, 1
  tail call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cg) #33
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEEEvPT_.exit.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEEEvPT_.exit.i.i: ; preds = %_ZN4pbrt11SceneEntityD2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 872 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ch, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEEEvT_SB_.exit, label %.lr.ph.i.i, !llvm.loop !50

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEEEvT_SB_.exit: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESA_SaIS9_EET0_T_SD_SC_RT1_.exit39
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE13_M_deallocateEPS9_m.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEEEvT_SB_.exit
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !401
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = sub i64 %i.ck, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.cl) #33
  br label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE13_M_deallocateEPS9_m.exit

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEESaIS9_EE13_M_deallocateEPS9_m.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEEEvT_SB_.exit, %bb.q
  store ptr %i.p, ptr %0, align 8, !tbaa !2309
  store ptr %.0.lcssa.i.i.i.i.i36, ptr %i.a, align 8, !tbaa !400
  %i.cm = getelementptr inbounds nuw [872 x i8], ptr %i.p, i64 %i.l
  store ptr %i.cm, ptr %i.ci, align 8, !tbaa !401
  ret void

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEES9_EvT_SB_RSaIT0_E.exit.thread: ; preds = %bb.g
  %i.cn = extractvalue { ptr, i32 } %i.bd, 0
  %i.co = tail call ptr @__cxa_begin_catch(ptr %i.cn) #32 ; 0 uses
  tail call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEED2Ev(ptr noundef nonnull align 8 dead_on_return(872) dereferenceable(872) %i.q) #32
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEES9_EvT_SB_RSaIT0_E.exit

bb.r:                                             ; preds = %bb.l
  %i.cp = extractvalue { ptr, i32 } %i.bm, 0
  %i.cq = tail call ptr @__cxa_begin_catch(ptr %i.cp) #32 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEEEvT_SB_(ptr noundef nonnull %i.p, ptr noundef nonnull %i.bg)
          to label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEES9_EvT_SB_RSaIT0_E.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEES9_EvT_SB_RSaIT0_E.exit
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.t unwind label %bb.u

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEES9_EvT_SB_RSaIT0_E.exit: ; preds = %bb.r, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt22TransformedSceneEntityEES9_EvT_SB_RSaIT0_E.exit.thread
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #33
  invoke void @__cxa_rethrow() #34
          to label %bb.v unwind label %bb.s

bb.t:                                             ; preds = %bb.s
  resume { ptr, i32 } %i.cr

bb.u:                                             ; preds = %bb.s
end_hunk_17

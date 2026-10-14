Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/jsoncpp?download=true
inline.NumInlined: 3522
inline.NumDeleted: 846
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZNK4Json5ValueeqERKS0_:bb.a
  %i.aj = load ptr, ptr %0, align 8, !tbaa !50    ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !129
  %i.am = load ptr, ptr %1, align 8, !tbaa !50    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !129
  %i.ap = icmp eq i64 %i.al, %i.ao
  br i1 %i.ap, label %bb.p, label %_ZSteqRKSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EESD_.exit

bb.p:                                             ; preds = %bb.o
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !127 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %.not2932 = icmp eq ptr %i.ar, %i.as
  br i1 %.not2932, label %_ZSteqRKSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EESD_.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !127
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.r
  %.sroa.0.034 = phi ptr [ %i.bo, %bb.r ], [ %i.au, %.lr.ph.preheader ] ; 5 uses
  %.sroa.025.033 = phi ptr [ %i.bn, %bb.r ], [ %i.ar, %.lr.ph.preheader ] ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.025.033, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.034, i64 32
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !200 ; 2 uses
  %.not.i = icmp eq ptr %i.ax, null
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.025.033, i64 40
  %i.az = load i32, ptr %i.ay, align 8            ; 2 uses
  br i1 %.not.i, label %.split, label %bb.q

.split:                                           ; preds = %.lr.ph
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.034, i64 40
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !50
  %i.bc = icmp eq i32 %i.az, %i.bb
  br i1 %i.bc, label %_ZSteqIKN4Json5Value8CZStringES1_EbRKSt4pairIT_T0_ES9_.exit.i.i, label %_ZSteqRKSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EESD_.exit

bb.q:                                             ; preds = %.lr.ph
  %i.bd = lshr i32 %i.az, 2                       ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.034, i64 40
  %i.bf = load i32, ptr %i.be, align 8
  %i.bg = lshr i32 %i.bf, 2
  %.not10.i = icmp eq i32 %i.bd, %i.bg
  br i1 %.not10.i, label %_ZNK4Json5Value8CZStringeqERKS1_.exit, label %_ZSteqRKSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EESD_.exit

_ZNK4Json5Value8CZStringeqERKS1_.exit:            ; preds = %bb.q
  %i.bh = load ptr, ptr %i.aw, align 8, !tbaa !200
  %i.bi = zext nneg i32 %i.bd to i64
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.ax, ptr %i.bh, i64 %i.bi)
  %i.bj = icmp eq i32 %bcmp.i, 0
  br i1 %i.bj, label %_ZSteqIKN4Json5Value8CZStringES1_EbRKSt4pairIT_T0_ES9_.exit.i.i, label %_ZSteqRKSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EESD_.exit

_ZSteqIKN4Json5Value8CZStringES1_EbRKSt4pairIT_T0_ES9_.exit.i.i: ; preds = %_ZNK4Json5Value8CZStringeqERKS1_.exit, %.split
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.025.033, i64 48
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.034, i64 48
  %i.bm = tail call noundef zeroext i1 @_ZNK4Json5ValueeqERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, ptr noundef nonnull align 8 dereferenceable(32) %i.bl), !inline_history !560
  br i1 %i.bm, label %bb.r, label %_ZSteqRKSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EESD_.exit

bb.r:                                             ; preds = %_ZSteqIKN4Json5Value8CZStringES1_EbRKSt4pairIT_T0_ES9_.exit.i.i
  %i.bn = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.025.033) #45, !inline_history !561 ; 2 uses
  %i.bo = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0.034) #45, !inline_history !561
  %.not29 = icmp eq ptr %i.bn, %i.as
  br i1 %.not29, label %_ZSteqRKSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EESD_.exit, label %.lr.ph, !llvm.loop !562

bb.s:                                             ; preds = %bb.b
  br label %_ZSteqRKSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EESD_.exit

_ZSteqRKSt8_Rb_treeIN4Json5Value8CZStringESt4pairIKS2_S1_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EESD_.exit: ; preds = %bb.q, %.split, %_ZNK4Json5Value8CZStringeqERKS1_.exit, %_ZSteqIKN4Json5Value8CZStringES1_EbRKSt4pairIT_T0_ES9_.exit.i.i, %bb.r, %bb.p, %bb.n, %_ZN4JsonL20decodePrefixedStringEbPKcPjPS1_.exit20, %bb.o, %bb.b, %bb.a, %bb.s, %bb.h, %bb.f, %bb.e, %bb.d, %bb.c
  %.1 = phi i1 [ true, %bb.b ], [ false, %bb.s ], [ false, %bb.a ], [ %i.i, %bb.c ], [ %i.l, %bb.d ], [ %i.o, %bb.e ], [ %i.r, %bb.f ], [ %i.w, %bb.h ], [ false, %_ZN4JsonL20decodePrefixedStringEbPKcPjPS1_.exit20 ], [ false, %bb.o ], [ %i.ai, %bb.n ], [ true, %bb.p ], [ false, %bb.q ], [ false, %.split ], [ false, %_ZNK4Json5Value8CZStringeqERKS1_.exit ], [ false, %_ZSteqIKN4Json5Value8CZStringES1_EbRKSt4pairIT_T0_ES9_.exit.i.i ], [ true, %bb.r ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local noundef zeroext i1 @_ZNK4Json5ValueneERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #18 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK4Json5ValueeqERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.b = xor i1 %i.a, true
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK4Json5Value9asCStringEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8              ; 2 uses
  %i.c = and i16 %i.b, 255
  %i.d = icmp eq i16 %i.c, 4
  br i1 %i.d, label %_ZN4JsonL20decodePrefixedStringEbPKcPjPS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %1)
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.44, i64 noundef 49)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(112) %1)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZN4Json15throwLogicErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2) #44
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !78     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.l = load i64, ptr %i.j, align 8, !tbaa !50
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.g, %bb.f ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.h, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %bb.e ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %1) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  resume { ptr, i32 } %.pn.pn

_ZN4JsonL20decodePrefixedStringEbPKcPjPS1_.exit:  ; preds = %bb.a
  %i.n = load ptr, ptr %0, align 8, !tbaa !50     ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  %i.p = lshr i16 %i.b, 6
  %i.q = and i16 %i.p, 4
  %spec.select.idx = zext nneg i16 %i.q to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %i.n, i64 %spec.select.idx
  %.05 = select i1 %i.o, ptr @.str, ptr %spec.select
  ret ptr %.05
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4Json5Value9getStringEPPKcS3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8              ; 2 uses
  %i.c = and i16 %i.b, 255
  %.not = icmp eq i16 %i.c, 4
  %i.d = load ptr, ptr %0, align 8                ; 5 uses
  %i.e = icmp ne ptr %i.d, null
  %or.cond.not = select i1 %.not, i1 %i.e, i1 false ; 2 uses
  br i1 %or.cond.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = and i16 %i.b, 256
  %.not6 = icmp eq i16 %i.f, 0
  br i1 %.not6, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #45
  %i.h = trunc i64 %i.g to i32
  br label %_ZN4JsonL20decodePrefixedStringEbPKcPjPS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.d, align 4, !tbaa !101
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  br label %_ZN4JsonL20decodePrefixedStringEbPKcPjPS1_.exit

_ZN4JsonL20decodePrefixedStringEbPKcPjPS1_.exit:  ; preds = %bb.c, %bb.d
  %.sink.i = phi i32 [ %i.i, %bb.d ], [ %i.h, %bb.c ]
  %storemerge.i = phi ptr [ %i.j, %bb.d ], [ %i.d, %bb.c ] ; 2 uses
  store ptr %storemerge.i, ptr %1, align 8, !tbaa !117
  %i.k = zext i32 %.sink.i to i64
  %i.l = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %i.k
  store ptr %i.l, ptr %2, align 8, !tbaa !117
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN4JsonL20decodePrefixedStringEbPKcPjPS1_.exit
  ret i1 %or.cond.not
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Json13valueToStringB5cxx11Ex(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [25 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  %i.c = icmp eq i64 %1, -9223372036854775808
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %2 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i8 0, ptr %2, align 8, !tbaa !50
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store <4 x i8> <i8 53, i8 56, i8 48, i8 56>, ptr %i.d, align 4, !tbaa !50
  %3 = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  store <16 x i8> <i8 45, i8 57, i8 50, i8 50, i8 51, i8 51, i8 55, i8 50, i8 48, i8 51, i8 54, i8 56, i8 53, i8 52, i8 55, i8 55>, ptr %3, align 4, !tbaa !50
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.e = icmp slt i64 %1, 0
  br i1 %i.e, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.f = sub nsw i64 0, %1
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i8 0, ptr %i.g, align 8, !tbaa !50
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.2 = phi ptr [ %i.g, %bb.d ], [ %i.k, %bb.e ]  ; 2 uses
  %.0.i5 = phi i64 [ %i.f, %bb.d ], [ %i.l, %bb.e ] ; 3 uses
  %i.h = urem i64 %.0.i5, 10
  %i.i = trunc nuw nsw i64 %i.h to i8
  %i.j = or disjoint i8 %i.i, 48
  %i.k = getelementptr inbounds i8, ptr %.2, i64 -1 ; 2 uses
  store i8 %i.j, ptr %i.k, align 1, !tbaa !50
  %i.l = udiv i64 %.0.i5, 10
  %.not.i6 = icmp samesign ult i64 %.0.i5, 10
  br i1 %.not.i6, label %_ZN4JsonL12uintToStringEyRPc.exit7, label %bb.e, !llvm.loop !17

_ZN4JsonL12uintToStringEyRPc.exit7:               ; preds = %bb.e
  %4 = getelementptr inbounds i8, ptr %.2, i64 -2 ; 2 uses
  store i8 45, ptr %4, align 1, !tbaa !50
  br label %.loopexit

bb.f:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i8 0, ptr %i.m, align 8, !tbaa !50
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.3 = phi ptr [ %i.m, %bb.f ], [ %i.q, %bb.g ]
  %.0.i8 = phi i64 [ %1, %bb.f ], [ %i.r, %bb.g ] ; 3 uses
  %i.n = urem i64 %.0.i8, 10
  %i.o = trunc nuw nsw i64 %i.n to i8
  %i.p = or disjoint i8 %i.o, 48
  %i.q = getelementptr inbounds i8, ptr %.3, i64 -1 ; 3 uses
  store i8 %i.p, ptr %i.q, align 1, !tbaa !50
  %i.r = udiv i64 %.0.i8, 10
  %.not.i9 = icmp ult i64 %.0.i8, 10
  br i1 %.not.i9, label %.loopexit, label %bb.g, !llvm.loop !17

.loopexit:                                        ; preds = %bb.g, %bb.b, %_ZN4JsonL12uintToStringEyRPc.exit7
  %.0 = phi ptr [ %3, %bb.b ], [ %4, %_ZN4JsonL12uintToStringEyRPc.exit7 ], [ %i.q, %bb.g ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !46
  %i.t = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0) #40 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 %i.t, ptr %i.a, align 8, !tbaa !113
  %i.u = icmp ugt i64 %i.t, 15
  br i1 %i.u, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %.loopexit
  %i.v = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.v, ptr %0, align 8, !tbaa !78
  %i.w = load i64, ptr %i.a, align 8, !tbaa !113
  store i64 %i.w, ptr %i.s, align 8, !tbaa !50
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %.loopexit
  %i.x = phi ptr [ %i.v, %.noexc.i ], [ %i.s, %.loopexit ] ; 2 uses
  switch i64 %i.t, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.y = load i8, ptr %.0, align 1, !tbaa !50
  store i8 %i.y, ptr %i.x, align 1, !tbaa !50
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr nonnull align 1 %.0, i64 %i.t, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i
  %i.z = load i64, ptr %i.a, align 8, !tbaa !113  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !49
  %i.ab = load ptr, ptr %0, align 8, !tbaa !78
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ac, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Json13valueToStringB5cxx11Ey(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [25 x i8], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i8 0, ptr %i.c, align 8, !tbaa !50
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.c, %bb.a ], [ %i.g, %bb.b ]
  %.0.i = phi i64 [ %1, %bb.a ], [ %i.h, %bb.b ]  ; 3 uses
  %i.d = urem i64 %.0.i, 10
  %i.e = trunc nuw nsw i64 %i.d to i8
  %i.f = or disjoint i8 %i.e, 48
  %i.g = getelementptr inbounds i8, ptr %.0, i64 -1 ; 5 uses
  store i8 %i.f, ptr %i.g, align 1, !tbaa !50
  %i.h = udiv i64 %.0.i, 10
  %.not.i = icmp ult i64 %.0.i, 10
  br i1 %.not.i, label %bb.c, label %bb.b, !llvm.loop !17

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !46
  %i.j = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #40 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 %i.j, ptr %i.a, align 8, !tbaa !113
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.l = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !78
  %i.m = load i64, ptr %i.a, align 8, !tbaa !113
  store i64 %i.m, ptr %i.i, align 8, !tbaa !50
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.c
  %i.n = phi ptr [ %i.l, %.noexc.i ], [ %i.i, %bb.c ] ; 2 uses
  switch i64 %i.j, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.o = load i8, ptr %i.g, align 1, !tbaa !50
  store i8 %i.o, ptr %i.n, align 1, !tbaa !50
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr nonnull align 1 %i.g, i64 %i.j, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.p = load i64, ptr %i.a, align 8, !tbaa !113  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !49
  %i.r = load ptr, ptr %0, align 8, !tbaa !78
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Json13valueToStringB5cxx11Ed(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, double noundef %1) local_unnamed_addr #2 {
bb.a:
  tail call void @_ZN4Json13valueToStringB5cxx11Edbj(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, double noundef %1, i1 noundef zeroext false, i32 noundef 17)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK4Json5Value5isIntEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8
  %trunc = trunc i16 %i.b to i8
  switch i8 %trunc, label %bb.f [
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8, !tbaa !50
  %i.d = add i64 %i.c, 2147483648
  %spec.select = icmp ult i64 %i.d, 4294967296
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = load i64, ptr %0, align 8, !tbaa !50
  %i.f = icmp ult i64 %i.e, 2147483648
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.g = load double, ptr %0, align 8, !tbaa !50  ; 3 uses
  %i.h = fcmp ult double %i.g, f0xC1E0000000000000
  %i.i = fcmp ugt double %i.g, f0x41DFFFFFFFC00000
  %or.cond = or i1 %i.h, %i.i
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call { double, double } @llvm.modf.f64(double %i.g)
  %i.k = extractvalue { double, double } %i.j, 0
  %i.l = fcmp oeq double %i.k, 0.000000e+00
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.d, %bb.e, %bb.c, %bb.b
  %.0 = phi i1 [ false, %bb.d ], [ %spec.select, %bb.b ], [ %i.f, %bb.c ], [ %i.l, %bb.e ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZNK4Json5Value6asUIntEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8
  %trunc = trunc i16 %i.b to i8
  switch i8 %trunc, label %bb.ab [
    i8 1, label %_ZNK4Json5Value6isUIntEv.exit
    i8 2, label %_ZNK4Json5Value6isUIntEv.exit28
    i8 3, label %bb.r
    i8 0, label %bb.ai
    i8 5, label %bb.aa
  ]

_ZNK4Json5Value6isUIntEv.exit:                    ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8, !tbaa !50     ; 2 uses
  %i.d = icmp ult i64 %i.c, 4294967296
  br i1 %i.d, label %bb.i, label %bb.b

bb.b:                                             ; preds = %_ZNK4Json5Value6isUIntEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %1)
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.52, i64 noundef 28)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(112) %1)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZN4Json15throwLogicErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2) #44
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
end_hunk_0

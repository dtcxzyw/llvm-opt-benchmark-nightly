Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/extended_rewrite?download=true
inline.NumInlined: 5801
inline.NumDeleted: 1533
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZNK4cvc58internal12NodeTemplateILb1EE7getTypeEb:bb.a
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !154
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #27
  br i1 %.0, label %bb.r, label %bb.s

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q
  br i1 %.0, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn1523 = phi { ptr, i32 } [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.q) #24
  br label %bb.s

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.r, %bb.p
  %.pn15.pn = phi { ptr, i32 } [ %.pn1523, %bb.r ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %bb.p ], [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #24
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.m
  %.pn15.pn.pn = phi { ptr, i32 } [ %.pn15.pn, %bb.s ], [ %i.s, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %.body

bb.u:                                             ; preds = %bb.f
  ret void

.body:                                            ; preds = %bb.e, %bb.t
  %.pn15.pn.pn.pn = phi { ptr, i32 } [ %.pn15.pn.pn, %bb.t ], [ %i.k, %bb.e ]
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #24
  resume { ptr, i32 } %.pn15.pn.pn.pn

bb.v:                                             ; preds = %bb.l
  unreachable
}

declare noundef zeroext i1 @_ZNK4cvc58internal8TypeNode9isIntegerEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN4cvc58internal6theory7strings11ArithEntailC1EPNS0_11NodeManagerEPNS1_8RewriterEb(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, ptr noundef, i1 noundef zeroext) unnamed_addr #2

declare void @_ZN4cvc58internal6theory7strings11ArithEntail24rewritePredViaEntailmentERKNS0_12NodeTemplateILb1EEEb(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8, ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc58internal6theory7strings11ArithEntailD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !146
  invoke void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #26
  unreachable

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !146
  invoke void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef %i.h)
          to label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit1 unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #26
  unreachable

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit1: ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !39   ; 3 uses
  %i.m = load i64, ptr %i.l, align 8              ; 3 uses
  %i.n = and i64 %i.m, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.n, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.d, !prof !41

bb.d:                                             ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit1
  %i.o = add i64 %i.m, 1152920405095219200
  %i.p = and i64 %i.o, 1152920405095219200        ; 2 uses
  %i.q = and i64 %i.m, -1152920405095219201
  %i.r = or disjoint i64 %i.p, %i.q
  store i64 %i.r, ptr %i.l, align 8
  %i.s = icmp eq i64 %i.p, 0
  br i1 %i.s, label %bb.e, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !41

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit1, %bb.d, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !39   ; 3 uses
  %i.x = load i64, ptr %i.w, align 8              ; 3 uses
  %i.y = and i64 %i.x, 1152920405095219200
  %.not.i.i2 = icmp eq i64 %i.y, 1152920405095219200
  br i1 %.not.i.i2, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit3, label %bb.g, !prof !41

bb.g:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.z = add i64 %i.x, 1152920405095219200
  %i.aa = and i64 %i.z, 1152920405095219200       ; 2 uses
  %i.ab = and i64 %i.x, -1152920405095219201
  %i.ac = or disjoint i64 %i.aa, %i.ab
  store i64 %i.ac, ptr %i.w, align 8
  %i.ad = icmp eq i64 %i.aa, 0
  br i1 %i.ad, label %bb.h, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit3, !prof !41

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit3 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  tail call void @__clang_call_terminate(ptr %i.af) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit3:  ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, %bb.g, %bb.h
  ret void
}

declare noundef zeroext i1 @_ZNK4cvc58internal8TypeNode12isStringLikeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK4cvc58internal6theory11quantifiers16ExtendedRewriter22extendedRewriteStringsERKNS0_12NodeTemplateILb1EEE(ptr dead_on_unwind noalias writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %4 = alloca %"class.cvc5::internal::NodeTemplate.107", align 8 ; 4 uses
  %5 = alloca %"class.cvc5::internal::NodeTemplate.107", align 8 ; 4 uses
  %6 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate.107", align 8 ; 4 uses
  %8 = alloca %"class.cvc5::internal::NodeTemplate.107", align 8 ; 4 uses
  %9 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %10 = alloca %"class.cvc5::internal::NodeTemplate.107", align 8 ; 4 uses
  %11 = alloca %"class.cvc5::internal::NodeTemplate.107", align 8 ; 4 uses
  %12 = alloca %"class.cvc5::internal::NodeTemplate.107", align 8 ; 4 uses
  %13 = alloca %"class.std::unordered_map.460", align 8 ; 13 uses
  %14 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %15 = alloca %"class.cvc5::internal::NodeTemplate.107", align 8 ; 4 uses
  %16 = alloca %"class.cvc5::internal::NodeTemplate.107", align 8 ; 4 uses
  %17 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %18 = alloca %"class.cvc5::internal::NodeTemplate.107", align 8 ; 4 uses
  %19 = alloca %"class.cvc5::internal::NodeTemplate.107", align 8 ; 4 uses
  %20 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %21 = alloca %"class.cvc5::internal::NodeTemplate.107", align 8 ; 4 uses
  %22 = alloca %"class.cvc5::internal::NodeTemplate.107", align 8 ; 4 uses
  %23 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %24 = alloca %"class.cvc5::internal::NodeTemplate.107", align 8 ; 4 uses
  %25 = alloca %"class.cvc5::internal::NodeTemplate.107", align 8 ; 4 uses
  %26 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %27 = alloca %"class.cvc5::internal::NodeTemplate.107", align 8 ; 4 uses
  %28 = alloca %"class.cvc5::internal::NodeTemplate.107", align 8 ; 4 uses
  %29 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %30 = alloca %"class.cvc5::internal::NodeTemplate.107", align 8 ; 4 uses
  %31 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %32 = alloca %"class.cvc5::internal::NodeTemplate.107", align 8 ; 4 uses
  %33 = alloca %"class.cvc5::internal::NodeTemplate.107", align 8 ; 4 uses
  %34 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %35 = alloca %"class.cvc5::internal::NodeTemplate.107", align 8 ; 4 uses
  %36 = alloca %"class.cvc5::internal::NodeTemplate.107", align 8 ; 4 uses
  %37 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %38 = alloca %"class.cvc5::internal::NodeTemplate.107", align 8 ; 4 uses
  %39 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %40 = alloca %"class.cvc5::internal::NodeTemplate.107", align 8 ; 4 uses
  %41 = alloca %"class.cvc5::internal::theory::strings::ArithEntail", align 8 ; 11 uses
  %42 = alloca %"class.cvc5::internal::theory::strings::StringsEntail", align 8 ; 10 uses
  %43 = alloca %"class.cvc5::internal::theory::strings::SequencesRewriter", align 8 ; 8 uses
  %44 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 13 uses
  %45 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %46 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %47 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %48 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %49 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %50 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %51 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 12 uses
  %52 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %53 = alloca %"class.cvc5::internal::NodeTemplate.107", align 8 ; 2 uses
  %54 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %55 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 8 uses
  %56 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %57 = alloca [2 x %"class.std::vector.97"], align 16 ; 22 uses
  %58 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %59 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 11 uses
  %60 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %61 = alloca %"class.cvc5::internal::NodeTemplate.107", align 8 ; 2 uses
  %62 = alloca [2 x %"class.std::vector.97"], align 16 ; 29 uses
  %63 = alloca %"class.std::vector.97", align 8   ; 10 uses
  %64 = alloca %"class.cvc5::internal::NodeTemplate.107", align 8 ; 2 uses
  %65 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %66 = alloca %"class.std::vector.97", align 8   ; 19 uses
  %67 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 14 uses
  %68 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %69 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 4 uses
  %70 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %71 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 4 uses
  %72 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %73 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 3 uses
  %74 = alloca %"class.std::vector.97", align 8   ; 20 uses
  %75 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 10 uses
  %76 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %77 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %78 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 9 uses
  %79 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 4 uses
  %80 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %81 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 13 uses
  %82 = alloca %"class.cvc5::internal::NodeTemplate.107", align 8 ; 2 uses
  %83 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %84 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %85 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 11 uses
  %86 = alloca %"class.cvc5::internal::NodeTemplate.107", align 8 ; 2 uses
  %87 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %88 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %89 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %90 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %91 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %92 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 4 uses
  %93 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %94 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %95 = alloca %"class.cvc5::internal::NodeTemplate.107", align 8 ; 2 uses
  %96 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %97 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %98 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %99 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %100 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %101 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 4 uses
  %102 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %103 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %104 = alloca %"class.cvc5::internal::NodeTemplate.107", align 8 ; 2 uses
  %105 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %106 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %107 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %108 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %109 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %110 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 4 uses
  %111 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %112 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %113 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %114 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 10 uses
  %115 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %116 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 4 uses
  %117 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 10 uses
  %118 = alloca %"class.cvc5::internal::NodeTemplate.107", align 8 ; 2 uses
  %119 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %120 = alloca %"class.cvc5::internal::NodeTemplate.107", align 8 ; 2 uses
  %121 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %122 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %123 = alloca %"class.std::vector.97", align 16 ; 13 uses
  %124 = alloca %"struct.std::pair.228", align 8  ; 8 uses
  %125 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %126 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 10 uses
  %127 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 4 uses
  %128 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 6 uses
  %129 = alloca %"class.cvc5::internal::NodeTemplate.107", align 8 ; 2 uses
  %130 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %131 = alloca %"class.cvc5::internal::NodeTemplate.107", align 8 ; 2 uses
  %132 = alloca %"class.cvc5::internal::NodeTemplate.107", align 8 ; 2 uses
  %133 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %134 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 3 uses
  %135 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %136 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %137 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %138 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %139 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 10 uses
  %140 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %141 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 10 uses
  %142 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 10 uses
  %143 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 4 uses
  %144 = alloca %"class.std::vector.97", align 8  ; 9 uses
  %145 = alloca %"struct.std::pair.228", align 8  ; 8 uses
  %146 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %147 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 12 uses
  %148 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %149 = alloca %"class.std::vector.97", align 8  ; 14 uses
  %150 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 10 uses
  %151 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 4 uses
  %152 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %153 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 6 uses
  %154 = alloca %"class.cvc5::internal::NodeTemplate.107", align 8 ; 2 uses
  %155 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %156 = alloca %"class.cvc5::internal::NodeTemplate.107", align 8 ; 2 uses
  %157 = alloca %"class.cvc5::internal::NodeTemplate.107", align 8 ; 2 uses
  %158 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 3 uses
  %159 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %160 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %161 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %162 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %163 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 9 uses
  %164 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %165 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 12 uses
  %166 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 4 uses
  %167 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %168 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %169 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %170 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %171 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %172 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %173 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %174 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %175 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %176 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %177 = alloca %"class.cvc5::internal::NodeTemplate.107", align 8 ; 2 uses
  %178 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %179 = alloca %"class.cvc5::internal::NodeTemplate.107", align 8 ; 2 uses
  %180 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %181 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %182 = alloca %"class.cvc5::internal::NodeTemplate.107", align 8 ; 2 uses
  %183 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %184 = alloca %"class.cvc5::internal::NodeTemplate.107", align 8 ; 2 uses
  %185 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %186 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %187 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %188 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %189 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %190 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %191 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %192 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 10 uses
  %193 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %194 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %195 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %196 = alloca %"class.cvc5::internal::NodeTemplate.107", align 8 ; 2 uses
  %197 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %198 = alloca %"class.cvc5::internal::NodeTemplate.107", align 8 ; 2 uses
  %199 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %200 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %201 = alloca %"class.cvc5::internal::NodeTemplate.107", align 8 ; 2 uses
  %202 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %203 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %204 = alloca %"class.cvc5::internal::NodeTemplate.107", align 8 ; 2 uses
  %205 = alloca %"class.cvc5::internal::NodeTemplate.107", align 8 ; 2 uses
  %206 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %207 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 3 uses
  %208 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %209 = alloca %"class.std::vector.97", align 8  ; 16 uses
  %210 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %211 = alloca %"class.std::vector.97", align 8  ; 17 uses
  %212 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %213 = alloca %"class.std::vector.97", align 8  ; 15 uses
  %214 = alloca %"class.std::vector.97", align 8  ; 15 uses
  %215 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %216 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %217 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %218 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %219 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %220 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %221 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %222 = alloca %"struct.cvc5::internal::theory::RewriteResponse", align 8 ; 6 uses
  %223 = alloca %"class.cvc5::internal::NodeTemplate.107", align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #24
  %i.a = load ptr, ptr %1, align 8, !tbaa !32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !137, !nonnull !44, !align !138
  call void @_ZN4cvc58internal6theory7strings11ArithEntailC1EPNS0_11NodeManagerEPNS1_8RewriterEb(ptr noundef nonnull align 8 dereferenceable(128) %41, ptr noundef %i.a, ptr noundef nonnull %i.c, i1 noundef zeroext true)
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #24
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !137, !nonnull !44, !align !138
  %.05382287.sroa.gep2879 = getelementptr inbounds nuw i8, ptr %62, i64 24
  %indvars.iv.sroa.gep2880 = getelementptr inbounds nuw i8, ptr %62, i64 24
  %.05382287.sroa.gep2883 = getelementptr inbounds nuw i8, ptr %57, i64 24
  invoke void @_ZN4cvc58internal6theory7strings13StringsEntailC1EPNS1_8RewriterERNS2_11ArithEntailE(ptr noundef nonnull align 8 dereferenceable(24) %42, ptr noundef nonnull %i.d, ptr noundef nonnull align 8 dereferenceable(128) %41)
          to label %bb.b unwind label %bb.ab

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #24
  %i.e = load ptr, ptr %1, align 8, !tbaa !32
  invoke void @_ZN4cvc58internal6theory7strings17SequencesRewriterC1EPNS0_11NodeManagerERNS2_11ArithEntailERNS2_13StringsEntailEPNS0_13HistogramStatINS2_7RewriteEEE(ptr noundef nonnull align 8 dereferenceable(112) %43, ptr noundef %i.e, ptr noundef nonnull align 8 dereferenceable(128) %41, ptr noundef nonnull align 8 dereferenceable(24) %42, ptr noundef null)
          to label %bb.c unwind label %bb.ac

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %2, align 8, !tbaa !39     ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8
  %i.i = trunc i64 %i.h to i32
  %i.j = and i32 %i.i, 1023
  switch i32 %i.j, label %bb.baw [
    i32 5, label %bb.d
    i32 319, label %bb.lr
    i32 322, label %bb.oh
    i32 330, label %bb.xw
    i32 325, label %bb.akk
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #24
  store ptr %i.f, ptr %45, align 8, !tbaa !39
  %i.k = load i64, ptr %i.f, align 8              ; 3 uses
  %i.l = lshr i64 %i.k, 40
  %i.m = trunc nuw nsw i64 %i.l to i32
end_hunk_0
begin_hunk_1_@_ZNK4cvc58internal6theory11quantifiers16ExtendedRewriter22extendedRewriteStringsERKNS0_12NodeTemplateILb1EEE:bb.a
  br i1 %i.nh, label %bb.di, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit907.1, !prof !41

bb.di:                                            ; preds = %bb.dh
  %i.ni = or i64 %i.nc, 1152920405095219200
  store i64 %i.ni, ptr %i.nb, align 8, !noalias !720
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.nb)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit907.1 unwind label %bb.dn, !noalias !720

bb.dj:                                            ; preds = %.noexc905.1
  %i.nj = add nuw nsw i32 %i.nf, 1
  %i.nk = zext nneg i32 %i.nj to i64
  %i.nl = shl nuw nsw i64 %i.nk, 40
  %i.nm = and i64 %i.nc, -1152920405095219201
  %i.nn = or i64 %i.nl, %i.nm
  store i64 %i.nn, ptr %i.nb, align 8, !noalias !720
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit907.1

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit907.1: ; preds = %bb.dj, %bb.di, %bb.dh
  %i.no = getelementptr inbounds nuw i8, ptr %57, i64 24
  invoke void @_ZN4cvc58internal6theory7strings5utils9getConcatENS0_12NodeTemplateILb1EEERSt6vectorIS5_SaIS5_EE(ptr noundef nonnull align 8 %58, ptr noundef nonnull align 8 dereferenceable(24) %i.no)
          to label %bb.dk unwind label %bb.do

bb.dk:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit907.1
  %i.np = load ptr, ptr %58, align 8, !tbaa !39   ; 3 uses
  %i.nq = load i64, ptr %i.np, align 8            ; 3 uses
  %i.nr = and i64 %i.nq, 1152920405095219200
  %.not.i.i908.1 = icmp eq i64 %i.nr, 1152920405095219200
  br i1 %.not.i.i908.1, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit910.1, label %bb.dl, !prof !41

bb.dl:                                            ; preds = %bb.dk
  %i.ns = add i64 %i.nq, 1152920405095219200
  %i.nt = and i64 %i.ns, 1152920405095219200      ; 2 uses
  %i.nu = and i64 %i.nq, -1152920405095219201
  %i.nv = or disjoint i64 %i.nt, %i.nu
  store i64 %i.nv, ptr %i.np, align 8
  %i.nw = icmp eq i64 %i.nt, 0
  br i1 %i.nw, label %bb.dm, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit910.1, !prof !41

bb.dm:                                            ; preds = %bb.dl
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.np)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit910.1 unwind label %bb.dg

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit910.1: ; preds = %bb.dm, %bb.dl, %bb.dk
  %i.nx = getelementptr inbounds nuw i8, ptr %63, i64 8 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %63, i64 16
  %i.nz = getelementptr inbounds nuw i8, ptr %66, i64 8 ; 6 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %66, i64 16 ; 5 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %62, i64 8 ; 3 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %62, i64 16
  %i.od = getelementptr inbounds nuw i8, ptr %62, i64 32 ; 3 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %62, i64 40
  %i.of = getelementptr inbounds nuw i8, ptr %62, i64 24
  %i.og = getelementptr inbounds nuw i8, ptr %62, i64 24 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %62, i64 32
  %i.oi = getelementptr inbounds nuw i8, ptr %62, i64 40
  %i.oj = getelementptr inbounds nuw i8, ptr %62, i64 8
  %i.ok = getelementptr inbounds nuw i8, ptr %62, i64 16
  br label %bb.dp

bb.dn:                                            ; preds = %bb.di, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit910, %bb.dc, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit903
  %i.ol = landingpad { ptr, i32 }
          cleanup
  br label %bb.le

bb.do:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit907.1, %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit907
  %i.om = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %58) #24
  br label %bb.le

bb.dp:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1034, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit910.1
  %.not2292 = phi i1 [ true, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit910.1 ], [ false, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1034 ]
  %indvars.iv.sroa.phi = phi ptr [ %62, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit910.1 ], [ %indvars.iv.sroa.gep2880, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1034 ]
  %indvars.iv = phi i64 [ 0, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit910.1 ], [ 1, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1034 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !721)
  %i.on = load ptr, ptr %2, align 8, !tbaa !39, !noalias !721 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 8
  %i.op = load i64, ptr %i.oo, align 8, !noalias !721
  %i.oq = trunc i64 %i.op to i32
  %i.or = and i32 %i.oq, 1023                     ; 2 uses
  %i.os = icmp eq i32 %i.or, 1023
  %i.ot = select i1 %i.os, i32 -1, i32 %i.or
  %i.ou = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.ot)
          to label %.noexc912 unwind label %bb.ef, !noalias !721

.noexc912:                                        ; preds = %bb.dp
  %i.ov = icmp eq i32 %i.ou, 2
  %i.ow = zext i1 %i.ov to i64
  %i.ox = getelementptr inbounds nuw i8, ptr %i.on, i64 24
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %i.ox, i64 %indvars.iv
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %i.oy, i64 %i.ow
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !38, !noalias !721 ; 5 uses
  store ptr %i.pa, ptr %60, align 8, !tbaa !39, !alias.scope !721
  %i.pb = load i64, ptr %i.pa, align 8, !noalias !721 ; 3 uses
  %i.pc = lshr i64 %i.pb, 40
  %i.pd = trunc nuw nsw i64 %i.pc to i32
  %i.pe = and i32 %i.pd, 1048575                  ; 3 uses
  %i.pf = icmp samesign ult i32 %i.pe, 1048574
  br i1 %i.pf, label %bb.dq, label %bb.dr, !prof !42

bb.dq:                                            ; preds = %.noexc912
  %i.pg = add nuw nsw i32 %i.pe, 1
  %i.ph = zext nneg i32 %i.pg to i64
  %i.pi = shl nuw nsw i64 %i.ph, 40
  %i.pj = and i64 %i.pb, -1152920405095219201
  %i.pk = or i64 %i.pi, %i.pj
  store i64 %i.pk, ptr %i.pa, align 8, !noalias !721
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit914

bb.dr:                                            ; preds = %.noexc912
  %i.pl = icmp eq i32 %i.pe, 1048574
  br i1 %i.pl, label %bb.ds, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit914, !prof !41

bb.ds:                                            ; preds = %bb.dr
  %i.pm = or i64 %i.pb, 1152920405095219200
  store i64 %i.pm, ptr %i.pa, align 8, !noalias !721
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.pa)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit914 unwind label %bb.ef, !noalias !721

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit914: ; preds = %bb.dr, %bb.dq, %bb.ds
  invoke void @_ZN4cvc58internal6theory7strings13StringsEntail22checkHomogeneousStringENS0_12NodeTemplateILb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %59, ptr noundef nonnull align 8 %60)
          to label %bb.dt unwind label %bb.eg

bb.dt:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit914
  %i.pn = load ptr, ptr %60, align 8, !tbaa !39   ; 3 uses
  %i.po = load i64, ptr %i.pn, align 8            ; 3 uses
  %i.pp = and i64 %i.po, 1152920405095219200
  %.not.i.i915 = icmp eq i64 %i.pp, 1152920405095219200
  br i1 %.not.i.i915, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit917, label %bb.du, !prof !41

bb.du:                                            ; preds = %bb.dt
  %i.pq = add i64 %i.po, 1152920405095219200
  %i.pr = and i64 %i.pq, 1152920405095219200      ; 2 uses
  %i.ps = and i64 %i.po, -1152920405095219201
  %i.pt = or disjoint i64 %i.pr, %i.ps
  store i64 %i.pt, ptr %i.pn, align 8
  %i.pu = icmp eq i64 %i.pr, 0
  br i1 %i.pu, label %bb.dv, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit917, !prof !41

bb.dv:                                            ; preds = %bb.du
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.pn)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit917 unwind label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.pv = landingpad { ptr, i32 }
          catch ptr null
  %i.pw = extractvalue { ptr, i32 } %i.pv, 0
  call void @__clang_call_terminate(ptr %i.pw) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit917: ; preds = %bb.dt, %bb.du, %bb.dv
  %i.px = load ptr, ptr %59, align 8, !tbaa !39
  %i.py = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.pz = icmp eq i8 %i.py, 0
  br i1 %i.pz, label %bb.dx, label %bb.eb, !prof !34

bb.dx:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit917
  %i.qa = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  %.not.i.i918 = icmp eq i32 %i.qa, 0
  br i1 %.not.i.i918, label %bb.eb, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.qb = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %bb.dz unwind label %bb.ea     ; 4 uses

bb.dz:                                            ; preds = %bb.dy
  %i.qc = load <2 x i64>, ptr %i.qb, align 8
  %i.qd = and <2 x i64> %i.qc, <i64 -1152921504606846976, i64 -288230371856745472>
  %i.qe = or disjoint <2 x i64> %i.qd, <i64 1152920405095219200, i64 0>
  store <2 x i64> %i.qe, ptr %i.qb, align 8
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qb, i64 16
  store ptr null, ptr %i.qf, align 8, !tbaa !37
  store ptr %i.qb, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !38
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  br label %bb.eb

bb.ea:                                            ; preds = %bb.dy
  %i.qg = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  br label %.body919

bb.eb:                                            ; preds = %bb.dz, %bb.dx, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit917
  %i.qh = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !38
  %i.qi = icmp eq ptr %i.px, %i.qh
  br i1 %i.qi, label %.thread2054, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.qj = load ptr, ptr %59, align 8, !tbaa !39
  store ptr %i.qj, ptr %61, align 8, !tbaa !140
  %i.qk = invoke noundef zeroext i1 @_ZN4cvc58internal6theory7strings4Word7isEmptyENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 %61)
          to label %bb.ed unwind label %bb.eh

bb.ed:                                            ; preds = %bb.ec
  br i1 %i.qk, label %.thread2054, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %62, i8 0, i64 48, i1 false)
  br label %bb.ei

bb.ef:                                            ; preds = %bb.ds, %bb.dp
  %i.ql = landingpad { ptr, i32 }
          cleanup
  br label %bb.kh

bb.eg:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit914
  %i.qm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %60) #24
  br label %bb.kh

bb.eh:                                            ; preds = %bb.ec
  %i.qn = landingpad { ptr, i32 }
          cleanup
  br label %.body919

bb.ei:                                            ; preds = %bb.ee, %._crit_edge2272
  %.sroa.7.0 = phi i64 [ 0, %bb.ee ], [ %.sroa.7.5, %._crit_edge2272 ] ; 2 uses
  %.sroa.02371.0 = phi i64 [ 0, %bb.ee ], [ %.sroa.02371.5, %._crit_edge2272 ] ; 2 uses
  %i.qo = phi i1 [ false, %bb.ee ], [ true, %._crit_edge2272 ] ; 3 uses
  %224 = phi i1 [ true, %bb.ee ], [ false, %._crit_edge2272 ]
  %.05382287.sroa.phi2878 = phi ptr [ %62, %bb.ee ], [ %.05382287.sroa.gep2879, %._crit_edge2272 ] ; 3 uses
  %.05382287.sroa.phi2881 = phi ptr [ %57, %bb.ee ], [ %.05382287.sroa.gep2883, %._crit_edge2272 ] ; 3 uses
  %i.qp = load ptr, ptr %.05382287.sroa.phi2881, align 8, !tbaa !135 ; 6 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %.05382287.sroa.phi2881, i64 8 ; 2 uses
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !135 ; 6 uses
  %.not.i.i921 = icmp eq ptr %i.qp, %i.qr
  br i1 %.not.i.i921, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.qs = ptrtoint ptr %i.qr to i64
  %i.qt = ptrtoint ptr %i.qp to i64
  %i.qu = sub i64 %i.qs, %i.qt                    ; 2 uses
  %i.qv = ashr exact i64 %i.qu, 3
  %i.qw = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.qv, i1 true)
  %i.qx = shl nuw nsw i64 %i.qw, 1
  %i.qy = xor i64 %i.qx, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_(ptr %i.qp, ptr %i.qr, i64 noundef %i.qy)
          to label %.noexc922 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc922:                                        ; preds = %bb.ej
  %i.qz = icmp sgt i64 %i.qu, 128
  br i1 %i.qz, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %.noexc922
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qp, i64 128 ; 3 uses
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_(ptr %i.qp, ptr nonnull %i.ra)
          to label %.noexc923 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc923:                                        ; preds = %bb.ek
  %.not4.i.i.i.i = icmp eq ptr %i.ra, %i.qr
  br i1 %.not4.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc923, %.noexc924
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.rb, %.noexc924 ], [ %i.ra, %.noexc923 ] ; 2 uses
  invoke void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_(ptr nonnull %.sroa.0.05.i.i.i.i)
          to label %.noexc924 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc924:                                        ; preds = %.lr.ph.i.i.i.i
  %i.rb = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.rb, %i.qr
  br i1 %.not.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !3

bb.el:                                            ; preds = %.noexc922
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_(ptr %i.qp, ptr %i.qr)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit: ; preds = %.noexc924, %.noexc923, %bb.ei, %bb.el
  %i.rc = load ptr, ptr %.05382287.sroa.phi2881, align 8, !tbaa !135 ; 2 uses
  %i.rd = load ptr, ptr %i.qq, align 8, !tbaa !135 ; 2 uses
  %.not21142269 = icmp eq ptr %i.rc, %i.rd
  br i1 %.not21142269, label %._crit_edge2272, label %.lr.ph2271

.lr.ph2271:                                       ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit
  %i.re = getelementptr inbounds nuw i8, ptr %.05382287.sroa.phi2878, i64 8 ; 3 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %.05382287.sroa.phi2878, i64 16
  br label %bb.em

bb.em:                                            ; preds = %.lr.ph2271, %.thread2055
  %.sroa.7.1 = phi i64 [ %.sroa.7.0, %.lr.ph2271 ], [ %.sroa.7.4, %.thread2055 ] ; 4 uses
  %.sroa.02371.1 = phi i64 [ %.sroa.02371.0, %.lr.ph2271 ], [ %.sroa.02371.4, %.thread2055 ] ; 4 uses
  %.sroa.02045.02270 = phi ptr [ %i.rc, %.lr.ph2271 ], [ %i.vf, %.thread2055 ] ; 5 uses
  %i.rg = invoke noundef zeroext i1 @_ZNK4cvc58internal12NodeTemplateILb1EE7isConstEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.02045.02270)
          to label %bb.en unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.en:                                            ; preds = %bb.em
  br i1 %i.rg, label %bb.eo, label %bb.fr

bb.eo:                                            ; preds = %bb.en
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #24
  %i.rh = load ptr, ptr %.sroa.02045.02270, align 8, !tbaa !39
  store ptr %i.rh, ptr %64, align 8, !tbaa !140
  invoke void @_ZN4cvc58internal6theory7strings4Word8getCharsENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.97") align 8 %63, ptr noundef nonnull align 8 %64)
          to label %bb.ep unwind label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.ri = load ptr, ptr %63, align 8, !tbaa !135  ; 2 uses
  %i.rj = load ptr, ptr %i.nx, align 8, !tbaa !135 ; 2 uses
  %.not21152253 = icmp eq ptr %i.ri, %i.rj
  br i1 %.not21152253, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit937.thread, label %.lr.ph2257

.lr.ph2257:                                       ; preds = %bb.ep
  %i.rk = load ptr, ptr %59, align 8, !tbaa !39
  br label %bb.er

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.fw, %bb.fv, %bb.em, %.lr.ph.i.i.i.i, %bb.ej, %bb.ek, %bb.el
  %lpad.loopexit.split-lp2850 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.eq:                                            ; preds = %bb.eo
  %i.rl = landingpad { ptr, i32 }
          cleanup
  br label %bb.fq

bb.er:                                            ; preds = %.lr.ph2257, %bb.fk
  %.sroa.7.2 = phi i64 [ %.sroa.7.1, %.lr.ph2257 ], [ %spec.select, %bb.fk ] ; 5 uses
  %.sroa.02371.2 = phi i64 [ %.sroa.02371.1, %.lr.ph2257 ], [ %spec.select2801, %bb.fk ] ; 5 uses
  %.sroa.02041.02254 = phi ptr [ %i.ri, %.lr.ph2257 ], [ %i.tv, %bb.fk ] ; 2 uses
  %i.rm = load ptr, ptr %.sroa.02041.02254, align 8, !tbaa !39
  %.not2116 = icmp eq ptr %i.rm, %i.rk
  br i1 %.not2116, label %bb.fk, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.rn = load ptr, ptr %2, align 8, !tbaa !39    ; 8 uses
  store ptr %i.rn, ptr %65, align 8, !tbaa !39
  %i.ro = load i64, ptr %i.rn, align 8            ; 3 uses
  %i.rp = lshr i64 %i.ro, 40
  %i.rq = trunc nuw nsw i64 %i.rp to i32
  %i.rr = and i32 %i.rq, 1048575                  ; 3 uses
  %i.rs = icmp samesign ult i32 %i.rr, 1048574
  br i1 %i.rs, label %bb.et, label %bb.eu, !prof !42

bb.et:                                            ; preds = %bb.es
  %i.rt = add nuw nsw i32 %i.rr, 1
  %i.ru = zext nneg i32 %i.rt to i64
  %i.rv = shl nuw nsw i64 %i.ru, 40
  %i.rw = and i64 %i.ro, -1152920405095219201
  %i.rx = or i64 %i.rv, %i.rw
  store i64 %i.rx, ptr %i.rn, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit927

bb.eu:                                            ; preds = %bb.es
  %i.ry = icmp eq i32 %i.rr, 1048574
  br i1 %i.ry, label %bb.ev, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit927, !prof !41

bb.ev:                                            ; preds = %bb.eu
  %i.rz = or i64 %i.ro, 1152920405095219200
  store i64 %i.rz, ptr %i.rn, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.rn)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit927 unwind label %bb.fi

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit927: ; preds = %bb.eu, %bb.et, %bb.ev
  %i.sa = load ptr, ptr %i.hd, align 8, !tbaa !39 ; 7 uses
  %i.sb = load i64, ptr %i.sa, align 8            ; 4 uses
  %i.sc = lshr i64 %i.sb, 40
  %i.sd = trunc nuw nsw i64 %i.sc to i32
  %i.se = and i32 %i.sd, 1048575                  ; 3 uses
  %i.sf = icmp samesign ult i32 %i.se, 1048574
  br i1 %i.sf, label %bb.ew, label %bb.ex, !prof !42

bb.ew:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit927
  %i.sg = add nuw nsw i32 %i.se, 1
  %i.sh = zext nneg i32 %i.sg to i64
  %i.si = shl nuw nsw i64 %i.sh, 40
  %i.sj = and i64 %i.sb, -1152920405095219201
  %i.sk = or i64 %i.si, %i.sj                     ; 2 uses
  store i64 %i.sk, ptr %i.sa, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit929

bb.ex:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit927
  %i.sl = icmp eq i32 %i.se, 1048574
  br i1 %i.sl, label %bb.ey, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit929, !prof !41

bb.ey:                                            ; preds = %bb.ex
  %i.sm = or i64 %i.sb, 1152920405095219200
  store i64 %i.sm, ptr %i.sa, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.sa)
          to label %._ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit929_crit_edge unwind label %bb.fj

._ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit929_crit_edge: ; preds = %bb.ey
  %.pre2395.a = load i64, ptr %i.sa, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit929

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit929: ; preds = %._ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit929_crit_edge, %bb.ew, %bb.ex
  %i.sn = phi i64 [ %.pre2395.a, %._ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit929_crit_edge ], [ %i.sk, %bb.ew ], [ %i.sb, %bb.ex ] ; 3 uses
  %i.so = and i64 %i.sn, 1152920405095219200
  %.not.i.i930 = icmp eq i64 %i.so, 1152920405095219200
  br i1 %.not.i.i930, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit932, label %bb.ez, !prof !41

bb.ez:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit929
  %i.sp = add i64 %i.sn, 1152920405095219200
  %i.sq = and i64 %i.sp, 1152920405095219200      ; 2 uses
  %i.sr = and i64 %i.sn, -1152920405095219201
  %i.ss = or disjoint i64 %i.sq, %i.sr
  store i64 %i.ss, ptr %i.sa, align 8
  %i.st = icmp eq i64 %i.sq, 0
  br i1 %i.st, label %bb.fa, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit932, !prof !41

bb.fa:                                            ; preds = %bb.ez
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.sa)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit932 unwind label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.su = landingpad { ptr, i32 }
          catch ptr null
  %i.sv = extractvalue { ptr, i32 } %i.su, 0
  call void @__clang_call_terminate(ptr %i.sv) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit932: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit929, %bb.ez, %bb.fa
  %i.sw = load i64, ptr %i.rn, align 8            ; 3 uses
  %i.sx = and i64 %i.sw, 1152920405095219200
  %.not.i.i933 = icmp eq i64 %i.sx, 1152920405095219200
  br i1 %.not.i.i933, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit935, label %bb.fc, !prof !41

bb.fc:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit932
  %i.sy = add i64 %i.sw, 1152920405095219200
  %i.sz = and i64 %i.sy, 1152920405095219200      ; 2 uses
  %i.ta = and i64 %i.sw, -1152920405095219201
  %i.tb = or disjoint i64 %i.sz, %i.ta
  store i64 %i.tb, ptr %i.rn, align 8
  %i.tc = icmp eq i64 %i.sz, 0
  br i1 %i.tc, label %bb.fd, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit935, !prof !41

bb.fd:                                            ; preds = %bb.fc
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.rn)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit935 unwind label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.td = landingpad { ptr, i32 }
          catch ptr null
  %i.te = extractvalue { ptr, i32 } %i.td, 0
  call void @__clang_call_terminate(ptr %i.te) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit935: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit932, %bb.fc, %bb.fd
  %i.tf = load ptr, ptr %i.hd, align 8, !tbaa !39 ; 5 uses
  store ptr %i.tf, ptr %0, align 8, !tbaa !39
  %i.tg = load i64, ptr %i.tf, align 8            ; 3 uses
  %i.th = lshr i64 %i.tg, 40
  %i.ti = trunc nuw nsw i64 %i.th to i32
  %i.tj = and i32 %i.ti, 1048575                  ; 3 uses
  %i.tk = icmp samesign ult i32 %i.tj, 1048574
  br i1 %i.tk, label %bb.ff, label %bb.fg, !prof !42

bb.ff:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit935
  %i.tl = add nuw nsw i32 %i.tj, 1
  %i.tm = zext nneg i32 %i.tl to i64
  %i.tn = shl nuw nsw i64 %i.tm, 40
  %i.to = and i64 %i.tg, -1152920405095219201
  %i.tp = or i64 %i.tn, %i.to
  store i64 %i.tp, ptr %i.tf, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit937.thread

bb.fg:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit935
  %i.tq = icmp eq i32 %i.tj, 1048574
  br i1 %i.tq, label %bb.fh, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit937.thread, !prof !41

bb.fh:                                            ; preds = %bb.fg
  %i.tr = or i64 %i.tg, 1152920405095219200
  store i64 %i.tr, ptr %i.tf, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.tf)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit937.thread unwind label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.ev
  %i.ts = landingpad { ptr, i32 }
          cleanup
  br label %bb.fl

bb.fj:                                            ; preds = %bb.ey
  %i.tt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %65) #24
  br label %bb.fl

bb.fk:                                            ; preds = %bb.er
  %.sroa.speculated = select i1 %i.qo, i64 %.sroa.7.2, i64 %.sroa.02371.2
  %i.tu = add i64 %.sroa.speculated, 1            ; 2 uses
  %spec.select = select i1 %i.qo, i64 %i.tu, i64 %.sroa.7.2 ; 2 uses
  %spec.select2801 = select i1 %i.qo, i64 %.sroa.02371.2, i64 %i.tu ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %.sroa.02041.02254, i64 8 ; 2 uses
  %.not2115 = icmp eq ptr %i.tv, %i.rj
  br i1 %.not2115, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit937.thread, label %bb.er

bb.fl:                                            ; preds = %bb.fj, %bb.fi
  %.pn731 = phi { ptr, i32 } [ %i.ts, %bb.fi ], [ %i.tt, %bb.fj ]
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %63) #24
  br label %bb.fq

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit937.thread: ; preds = %bb.fk, %bb.ep, %bb.fh, %bb.ff, %bb.fg
  %.sroa.7.3 = phi i64 [ %.sroa.7.1, %bb.ep ], [ %.sroa.7.2, %bb.fg ], [ %.sroa.7.2, %bb.ff ], [ %.sroa.7.2, %bb.fh ], [ %spec.select, %bb.fk ]
  %.sroa.02371.3 = phi i64 [ %.sroa.02371.1, %bb.ep ], [ %.sroa.02371.2, %bb.fg ], [ %.sroa.02371.2, %bb.ff ], [ %.sroa.02371.2, %bb.fh ], [ %spec.select2801, %bb.fk ]
  %.not21152138 = phi i1 [ true, %bb.ep ], [ false, %bb.fg ], [ false, %bb.ff ], [ false, %bb.fh ], [ true, %bb.fk ]
  %spec.store.select = phi i32 [ 0, %bb.ep ], [ 1, %bb.fg ], [ 1, %bb.ff ], [ 1, %bb.fh ], [ 0, %bb.fk ]
  %i.tw = load ptr, ptr %63, align 8, !tbaa !141  ; 3 uses
  %i.tx = load ptr, ptr %i.nx, align 8, !tbaa !134 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.tw, %i.tx
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit937.thread, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ui, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i ], [ %i.tw, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit937.thread ] ; 2 uses
  %i.ty = load ptr, ptr %.05.i.i.i, align 8, !tbaa !39 ; 3 uses
  %i.tz = load i64, ptr %i.ty, align 8            ; 3 uses
  %i.ua = and i64 %i.tz, 1152920405095219200
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ua, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, label %bb.fm, !prof !41

bb.fm:                                            ; preds = %.lr.ph.i.i.i
  %i.ub = add i64 %i.tz, 1152920405095219200
  %i.uc = and i64 %i.ub, 1152920405095219200      ; 2 uses
  %i.ud = and i64 %i.tz, -1152920405095219201
  %i.ue = or disjoint i64 %i.uc, %i.ud
  store i64 %i.ue, ptr %i.ty, align 8
  %i.uf = icmp eq i64 %i.uc, 0
  br i1 %i.uf, label %bb.fn, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, !prof !41

bb.fn:                                            ; preds = %bb.fm
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ty)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i unwind label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.ug = landingpad { ptr, i32 }
          catch ptr null
  %i.uh = extractvalue { ptr, i32 } %i.ug, 0
  call void @__clang_call_terminate(ptr %i.uh) #26
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i: ; preds = %bb.fn, %bb.fm, %.lr.ph.i.i.i
  %i.ui = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ui, %i.tx
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !5

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %63, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit937.thread
  %i.uj = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.tw, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit937.thread ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.uj, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, label %bb.fp

bb.fp:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i
  %i.uk = load ptr, ptr %i.ny, align 8, !tbaa !136
  %i.ul = ptrtoint ptr %i.uk to i64
  %i.um = ptrtoint ptr %i.uj to i64
  %i.un = sub i64 %i.ul, %i.um
  call void @_ZdlPvm(ptr noundef nonnull %i.uj, i64 noundef %i.un) #27
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, %bb.fp
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #24
  br i1 %.not21152138, label %.thread2055, label %.loopexit2118

bb.fq:                                            ; preds = %bb.fl, %bb.eq
  %.pn731.pn = phi { ptr, i32 } [ %.pn731, %bb.fl ], [ %i.rl, %bb.eq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #24
  br label %.loopexit.split-lp

bb.fr:                                            ; preds = %bb.en
  %i.uo = load ptr, ptr %i.re, align 8, !tbaa !134 ; 3 uses
  %i.up = load ptr, ptr %i.rf, align 8, !tbaa !136
  %.not.i938 = icmp eq ptr %i.uo, %i.up
  br i1 %.not.i938, label %bb.fw, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.uq = load ptr, ptr %.sroa.02045.02270, align 8, !tbaa !39 ; 5 uses
  store ptr %i.uq, ptr %i.uo, align 8, !tbaa !39
  %i.ur = load i64, ptr %i.uq, align 8            ; 3 uses
  %i.us = lshr i64 %i.ur, 40
  %i.ut = trunc nuw nsw i64 %i.us to i32
  %i.uu = and i32 %i.ut, 1048575                  ; 3 uses
  %i.uv = icmp samesign ult i32 %i.uu, 1048574
  br i1 %i.uv, label %bb.ft, label %bb.fu, !prof !42

bb.ft:                                            ; preds = %bb.fs
  %i.uw = add nuw nsw i32 %i.uu, 1
  %i.ux = zext nneg i32 %i.uw to i64
  %i.uy = shl nuw nsw i64 %i.ux, 40
  %i.uz = and i64 %i.ur, -1152920405095219201
  %i.va = or i64 %i.uy, %i.uz
  store i64 %i.va, ptr %i.uq, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i

bb.fu:                                            ; preds = %bb.fs
  %i.vb = icmp eq i32 %i.uu, 1048574
  br i1 %i.vb, label %bb.fv, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i, !prof !41

bb.fv:                                            ; preds = %bb.fu
  %i.vc = or i64 %i.ur, 1152920405095219200
  store i64 %i.vc, ptr %i.uq, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.uq)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i: ; preds = %bb.fv, %bb.fu, %bb.ft
  %i.vd = load ptr, ptr %i.re, align 8, !tbaa !134
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 8
  store ptr %i.ve, ptr %i.re, align 8, !tbaa !134
  br label %.thread2055

bb.fw:                                            ; preds = %bb.fr
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %.05382287.sroa.phi2878, ptr %i.uo, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.02045.02270)
          to label %.thread2055 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread2055:                                      ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i, %bb.fw, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit
  %.sroa.7.4 = phi i64 [ %.sroa.7.3, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit ], [ %.sroa.7.1, %bb.fw ], [ %.sroa.7.1, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i ] ; 2 uses
  %.sroa.02371.4 = phi i64 [ %.sroa.02371.3, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit ], [ %.sroa.02371.1, %bb.fw ], [ %.sroa.02371.1, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i ] ; 2 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %.sroa.02045.02270, i64 8 ; 2 uses
  %.not2114 = icmp eq ptr %i.vf, %i.rd
  br i1 %.not2114, label %._crit_edge2272, label %bb.em

._crit_edge2272:                                  ; preds = %.thread2055, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit
  %.sroa.7.5 = phi i64 [ %.sroa.7.0, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit ], [ %.sroa.7.4, %.thread2055 ] ; 5 uses
  %.sroa.02371.5 = phi i64 [ %.sroa.02371.0, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit ], [ %.sroa.02371.4, %.thread2055 ] ; 5 uses
  br i1 %224, label %bb.ei, label %bb.fx, !llvm.loop !589

bb.fx:                                            ; preds = %._crit_edge2272
  %i.vg = call i64 @llvm.umin.i64(i64 %.sroa.7.5, i64 %.sroa.02371.5) ; 2 uses
  %.not744.not = icmp ugt i64 %.sroa.02371.5, %.sroa.7.5
  br i1 %.not744.not, label %bb.gb, label %bb.gv

bb.fy:                                            ; preds = %bb.hj
  %i.vh = add nuw nsw i32 %i.zt, 1
  %i.vi = zext nneg i32 %i.vh to i64
  %i.vj = shl nuw nsw i64 %i.vi, 40
  %i.vk = and i64 %i.zq, -1152920405095219201
  %i.vl = or i64 %i.vj, %i.vk
  store i64 %i.vl, ptr %i.zp, align 8
  br label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit

bb.fz:                                            ; preds = %bb.hj
  %i.vm = icmp eq i32 %i.zt, 1048574
  br i1 %i.vm, label %bb.ga, label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit, !prof !41

bb.ga:                                            ; preds = %bb.fz
  %i.vn = or i64 %i.zq, 1152920405095219200
  store i64 %i.vn, ptr %i.zp, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.zp)
          to label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit unwind label %bb.iz

bb.gb:                                            ; preds = %bb.fx
  %i.vo = sub i64 %.sroa.02371.5, %i.vg           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #24
  %i.vp = icmp ugt i64 %i.vo, 1152921504606846975
  br i1 %i.vp, label %bb.gc, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

bb.gc:                                            ; preds = %bb.gw, %bb.gb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.116) #29
          to label %.noexc944 unwind label %.loopexit.split-lp2123.loopexit.split-lp.loopexit.split-lp

.noexc944:                                        ; preds = %bb.gc
  unreachable

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %bb.gb
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %66, i8 0, i64 24, i1 false)
  %i.vq = shl nuw nsw i64 %i.vo, 3
  %i.vr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vq) #25
          to label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEC2EmRKS4_.exit.i unwind label %.loopexit.split-lp2123.loopexit.split-lp.loopexit.split-lp ; 4 uses

_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEC2EmRKS4_.exit.i: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  store ptr %i.vr, ptr %66, align 8, !tbaa !141
  store ptr %i.vr, ptr %i.nz, align 8, !tbaa !134
  %i.vs = getelementptr inbounds nuw [8 x i8], ptr %i.vr, i64 %i.vo
  store ptr %i.vs, ptr %i.oa, align 8, !tbaa !136
  %i.vt = invoke noundef ptr @_ZSt18__do_uninit_fill_nIPN4cvc58internal12NodeTemplateILb1EEEmS3_ET_S5_T0_RKT1_(ptr noundef nonnull %i.vr, i64 noundef %i.vo, ptr noundef nonnull align 8 dereferenceable(8) %59)
          to label %bb.gf unwind label %bb.gd

bb.gd:                                            ; preds = %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEC2EmRKS4_.exit.i.1, %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEC2EmRKS4_.exit.i
  %i.vu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vv = load ptr, ptr %66, align 8, !tbaa !141  ; 3 uses
  %.not.i.i.i943 = icmp eq ptr %i.vv, null
  br i1 %.not.i.i.i943, label %.body946, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.vw = load ptr, ptr %i.oa, align 8, !tbaa !136
  %i.vx = ptrtoint ptr %i.vw to i64
  %i.vy = ptrtoint ptr %i.vv to i64
  %i.vz = sub i64 %i.vx, %i.vy
  call void @_ZdlPvm(ptr noundef nonnull %i.vv, i64 noundef %i.vz) #27
  br label %.body946

bb.gf:                                            ; preds = %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEC2EmRKS4_.exit.i
  store ptr %i.vt, ptr %i.nz, align 8, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #24
  invoke void @_ZN4cvc58internal6theory7strings4Word13mkWordFlattenERKSt6vectorINS0_12NodeTemplateILb1EEESaIS6_EE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %67, ptr noundef nonnull align 8 dereferenceable(24) %66)
          to label %bb.gg unwind label %bb.gs

bb.gg:                                            ; preds = %bb.gf
  %i.wa = load ptr, ptr %i.ob, align 8, !tbaa !134 ; 3 uses
  %i.wb = load ptr, ptr %i.oc, align 16, !tbaa !136
  %.not.i.i948 = icmp eq ptr %i.wa, %i.wb
  br i1 %.not.i.i948, label %bb.gl, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.wc = load ptr, ptr %67, align 8, !tbaa !39   ; 5 uses
  store ptr %i.wc, ptr %i.wa, align 8, !tbaa !39
  %i.wd = load i64, ptr %i.wc, align 8            ; 3 uses
  %i.we = lshr i64 %i.wd, 40
  %i.wf = trunc nuw nsw i64 %i.we to i32
  %i.wg = and i32 %i.wf, 1048575                  ; 3 uses
  %i.wh = icmp samesign ult i32 %i.wg, 1048574
  br i1 %i.wh, label %bb.gi, label %bb.gj, !prof !42

bb.gi:                                            ; preds = %bb.gh
  %i.wi = add nuw nsw i32 %i.wg, 1
  %i.wj = zext nneg i32 %i.wi to i64
  %i.wk = shl nuw nsw i64 %i.wj, 40
  %i.wl = and i64 %i.wd, -1152920405095219201
  %i.wm = or i64 %i.wk, %i.wl
  store i64 %i.wm, ptr %i.wc, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i

bb.gj:                                            ; preds = %bb.gh
  %i.wn = icmp eq i32 %i.wg, 1048574
  br i1 %i.wn, label %bb.gk, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i, !prof !41

bb.gk:                                            ; preds = %bb.gj
  %i.wo = or i64 %i.wd, 1152920405095219200
  store i64 %i.wo, ptr %i.wc, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.wc)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i unwind label %bb.gt

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i: ; preds = %bb.gk, %bb.gj, %bb.gi
  %i.wp = load ptr, ptr %i.ob, align 8, !tbaa !134
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 8
  store ptr %i.wq, ptr %i.ob, align 8, !tbaa !134
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit

bb.gl:                                            ; preds = %bb.gg
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %62, ptr %i.wa, ptr noundef nonnull align 8 dereferenceable(8) %67)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit unwind label %bb.gt

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i, %bb.gl
  %i.wr = load ptr, ptr %67, align 8, !tbaa !39   ; 3 uses
  %i.ws = load i64, ptr %i.wr, align 8            ; 3 uses
  %i.wt = and i64 %i.ws, 1152920405095219200
  %.not.i.i951 = icmp eq i64 %i.wt, 1152920405095219200
  br i1 %.not.i.i951, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit953, label %bb.gm, !prof !41

bb.gm:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit
  %i.wu = add i64 %i.ws, 1152920405095219200
  %i.wv = and i64 %i.wu, 1152920405095219200      ; 2 uses
  %i.ww = and i64 %i.ws, -1152920405095219201
  %i.wx = or disjoint i64 %i.wv, %i.ww
  store i64 %i.wx, ptr %i.wr, align 8
  %i.wy = icmp eq i64 %i.wv, 0
  br i1 %i.wy, label %bb.gn, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit953, !prof !41

bb.gn:                                            ; preds = %bb.gm
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.wr)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit953 unwind label %bb.go

bb.go:                                            ; preds = %bb.hf, %bb.gn
  %i.wz = landingpad { ptr, i32 }
          catch ptr null
  %i.xa = extractvalue { ptr, i32 } %i.wz, 0
  call void @__clang_call_terminate(ptr %i.xa) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit953: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit, %bb.gm, %bb.gn
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #24
  %i.xb = load ptr, ptr %66, align 8, !tbaa !141  ; 3 uses
  %i.xc = load ptr, ptr %i.nz, align 8, !tbaa !134 ; 2 uses
  %.not4.i.i.i954 = icmp eq ptr %i.xb, %i.xc
  br i1 %.not4.i.i.i954, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i962, label %.lr.ph.i.i.i955

.lr.ph.i.i.i955:                                  ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit953, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i958
  %.05.i.i.i956 = phi ptr [ %i.xm, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i958 ], [ %i.xb, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit953 ] ; 2 uses
  %i.xd = load ptr, ptr %.05.i.i.i956, align 8, !tbaa !39 ; 3 uses
  %i.xe = load i64, ptr %i.xd, align 8            ; 3 uses
  %i.xf = and i64 %i.xe, 1152920405095219200
  %.not.i.i.i.i.i.i957 = icmp eq i64 %i.xf, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i957, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i958, label %bb.gp, !prof !41

bb.gp:                                            ; preds = %.lr.ph.i.i.i955
  %i.xg = add i64 %i.xe, 1152920405095219200
  %i.xh = and i64 %i.xg, 1152920405095219200      ; 2 uses
  %i.xi = and i64 %i.xe, -1152920405095219201
  %i.xj = or disjoint i64 %i.xh, %i.xi
  store i64 %i.xj, ptr %i.xd, align 8
  %i.xk = icmp eq i64 %i.xh, 0
  br i1 %i.xk, label %bb.gq, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i958, !prof !41

bb.gq:                                            ; preds = %bb.gp
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.xd)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i958 unwind label %.loopexit.split-lp2335.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp2335.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.hh, %bb.gq
  %lpad.loopexit.split-lp2856 = landingpad { ptr, i32 }
          catch ptr null
  %i.xl = extractvalue { ptr, i32 } %lpad.loopexit.split-lp2856, 0
  call void @__clang_call_terminate(ptr %i.xl) #26
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i958: ; preds = %bb.gq, %bb.gp, %.lr.ph.i.i.i955
  %i.xm = getelementptr inbounds nuw i8, ptr %.05.i.i.i956, i64 8 ; 2 uses
  %.not.i.i.i959 = icmp eq ptr %i.xm, %i.xc
  br i1 %.not.i.i.i959, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i960, label %.lr.ph.i.i.i955, !llvm.loop !5

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i960: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i958
  %.pr.i961 = load ptr, ptr %66, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i962

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i962: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i960, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit953
  %i.xn = phi ptr [ %.pr.i961, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i960 ], [ %i.xb, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit953 ] ; 3 uses
  %.not.i.i1.i963 = icmp eq ptr %i.xn, null
  br i1 %.not.i.i1.i963, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit965, label %bb.gr

bb.gr:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i962
  %i.xo = load ptr, ptr %i.oa, align 8, !tbaa !136
  %i.xp = ptrtoint ptr %i.xo to i64
  %i.xq = ptrtoint ptr %i.xn to i64
  %i.xr = sub i64 %i.xp, %i.xq
  call void @_ZdlPvm(ptr noundef nonnull %i.xn, i64 noundef %i.xr) #27
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit965

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit965: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i962, %bb.gr
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #24
  br label %bb.gv

.loopexit.split-lp2123.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.1, %bb.gc
  %lpad.loopexit.split-lp2859 = landingpad { ptr, i32 }
          cleanup
  br label %.body946

bb.gs:                                            ; preds = %bb.gx, %bb.gf
  %i.xs = landingpad { ptr, i32 }
          cleanup
  br label %bb.gu

bb.gt:                                            ; preds = %bb.hd, %bb.hb, %bb.gl, %bb.gk
  %i.xt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %67) #24
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %bb.gs
  %.pn745 = phi { ptr, i32 } [ %i.xt, %bb.gt ], [ %i.xs, %bb.gs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #24
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %66) #24
  br label %.body946

.body946:                                         ; preds = %.loopexit.split-lp2123.loopexit.split-lp.loopexit.split-lp, %bb.ge, %bb.gd, %bb.gu
  %.pn745.pn = phi { ptr, i32 } [ %.pn745, %bb.gu ], [ %i.vu, %bb.gd ], [ %i.vu, %bb.ge ], [ %lpad.loopexit.split-lp2859, %.loopexit.split-lp2123.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #24
  br label %.loopexit.split-lp

bb.gv:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit965, %bb.fx
  %.not744.1.not = icmp ugt i64 %.sroa.7.5, %.sroa.02371.5
  br i1 %.not744.1.not, label %bb.gw, label %bb.hj

bb.gw:                                            ; preds = %bb.gv
  %i.xu = sub i64 %.sroa.7.5, %i.vg               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #24
  %i.xv = icmp ugt i64 %i.xu, 1152921504606846975
  br i1 %i.xv, label %bb.gc, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.1

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.1: ; preds = %bb.gw
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %66, i8 0, i64 24, i1 false)
  %i.xw = shl nuw nsw i64 %i.xu, 3
  %i.xx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.xw) #25
          to label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEC2EmRKS4_.exit.i.1 unwind label %.loopexit.split-lp2123.loopexit.split-lp.loopexit.split-lp ; 4 uses

_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEC2EmRKS4_.exit.i.1: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.1
  store ptr %i.xx, ptr %66, align 8, !tbaa !141
  store ptr %i.xx, ptr %i.nz, align 8, !tbaa !134
  %i.xy = getelementptr inbounds nuw [8 x i8], ptr %i.xx, i64 %i.xu
  store ptr %i.xy, ptr %i.oa, align 8, !tbaa !136
  %i.xz = invoke noundef ptr @_ZSt18__do_uninit_fill_nIPN4cvc58internal12NodeTemplateILb1EEEmS3_ET_S5_T0_RKT1_(ptr noundef nonnull %i.xx, i64 noundef %i.xu, ptr noundef nonnull align 8 dereferenceable(8) %59)
          to label %bb.gx unwind label %bb.gd

bb.gx:                                            ; preds = %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEC2EmRKS4_.exit.i.1
  store ptr %i.xz, ptr %i.nz, align 8, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #24
  invoke void @_ZN4cvc58internal6theory7strings4Word13mkWordFlattenERKSt6vectorINS0_12NodeTemplateILb1EEESaIS6_EE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %67, ptr noundef nonnull align 8 dereferenceable(24) %66)
          to label %bb.gy unwind label %bb.gs

bb.gy:                                            ; preds = %bb.gx
  %i.ya = load ptr, ptr %i.od, align 16, !tbaa !134 ; 3 uses
  %i.yb = load ptr, ptr %i.oe, align 8, !tbaa !136
  %.not.i.i948.1 = icmp eq ptr %i.ya, %i.yb
  br i1 %.not.i.i948.1, label %bb.hd, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.yc = load ptr, ptr %67, align 8, !tbaa !39   ; 5 uses
  store ptr %i.yc, ptr %i.ya, align 8, !tbaa !39
  %i.yd = load i64, ptr %i.yc, align 8            ; 3 uses
  %i.ye = lshr i64 %i.yd, 40
  %i.yf = trunc nuw nsw i64 %i.ye to i32
  %i.yg = and i32 %i.yf, 1048575                  ; 3 uses
  %i.yh = icmp samesign ult i32 %i.yg, 1048574
  br i1 %i.yh, label %bb.hc, label %bb.ha, !prof !42

bb.ha:                                            ; preds = %bb.gz
  %i.yi = icmp eq i32 %i.yg, 1048574
  br i1 %i.yi, label %bb.hb, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i.1, !prof !41

bb.hb:                                            ; preds = %bb.ha
  %i.yj = or i64 %i.yd, 1152920405095219200
  store i64 %i.yj, ptr %i.yc, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.yc)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i.1 unwind label %bb.gt

bb.hc:                                            ; preds = %bb.gz
  %i.yk = add nuw nsw i32 %i.yg, 1
  %i.yl = zext nneg i32 %i.yk to i64
  %i.ym = shl nuw nsw i64 %i.yl, 40
  %i.yn = and i64 %i.yd, -1152920405095219201
  %i.yo = or i64 %i.ym, %i.yn
  store i64 %i.yo, ptr %i.yc, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i.1

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i.1: ; preds = %bb.hc, %bb.hb, %bb.ha
  %i.yp = load ptr, ptr %i.od, align 16, !tbaa !134
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 8
  store ptr %i.yq, ptr %i.od, align 16, !tbaa !134
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit.1

bb.hd:                                            ; preds = %bb.gy
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.of, ptr %i.ya, ptr noundef nonnull align 8 dereferenceable(8) %67)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit.1 unwind label %bb.gt

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit.1: ; preds = %bb.hd, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i.1
  %i.yr = load ptr, ptr %67, align 8, !tbaa !39   ; 3 uses
  %i.ys = load i64, ptr %i.yr, align 8            ; 3 uses
  %i.yt = and i64 %i.ys, 1152920405095219200
  %.not.i.i951.1 = icmp eq i64 %i.yt, 1152920405095219200
  br i1 %.not.i.i951.1, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit953.1, label %bb.he, !prof !41

bb.he:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit.1
  %i.yu = add i64 %i.ys, 1152920405095219200
  %i.yv = and i64 %i.yu, 1152920405095219200      ; 2 uses
  %i.yw = and i64 %i.ys, -1152920405095219201
  %i.yx = or disjoint i64 %i.yv, %i.yw
  store i64 %i.yx, ptr %i.yr, align 8
  %i.yy = icmp eq i64 %i.yv, 0
  br i1 %i.yy, label %bb.hf, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit953.1, !prof !41

bb.hf:                                            ; preds = %bb.he
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.yr)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit953.1 unwind label %bb.go

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit953.1: ; preds = %bb.hf, %bb.he, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit.1
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #24
  %i.yz = load ptr, ptr %66, align 8, !tbaa !141  ; 3 uses
  %i.za = load ptr, ptr %i.nz, align 8, !tbaa !134 ; 2 uses
  %.not4.i.i.i954.1 = icmp eq ptr %i.yz, %i.za
  br i1 %.not4.i.i.i954.1, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i962.1, label %.lr.ph.i.i.i955.1

.lr.ph.i.i.i955.1:                                ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit953.1, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i958.1
  %.05.i.i.i956.1 = phi ptr [ %i.zj, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i958.1 ], [ %i.yz, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit953.1 ] ; 2 uses
  %i.zb = load ptr, ptr %.05.i.i.i956.1, align 8, !tbaa !39 ; 3 uses
  %i.zc = load i64, ptr %i.zb, align 8            ; 3 uses
  %i.zd = and i64 %i.zc, 1152920405095219200
  %.not.i.i.i.i.i.i957.1 = icmp eq i64 %i.zd, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i957.1, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i958.1, label %bb.hg, !prof !41

bb.hg:                                            ; preds = %.lr.ph.i.i.i955.1
  %i.ze = add i64 %i.zc, 1152920405095219200
  %i.zf = and i64 %i.ze, 1152920405095219200      ; 2 uses
  %i.zg = and i64 %i.zc, -1152920405095219201
  %i.zh = or disjoint i64 %i.zf, %i.zg
  store i64 %i.zh, ptr %i.zb, align 8
  %i.zi = icmp eq i64 %i.zf, 0
  br i1 %i.zi, label %bb.hh, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i958.1, !prof !41

bb.hh:                                            ; preds = %bb.hg
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.zb)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i958.1 unwind label %.loopexit.split-lp2335.loopexit.split-lp.loopexit.split-lp

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i958.1: ; preds = %bb.hh, %bb.hg, %.lr.ph.i.i.i955.1
  %i.zj = getelementptr inbounds nuw i8, ptr %.05.i.i.i956.1, i64 8 ; 2 uses
  %.not.i.i.i959.1 = icmp eq ptr %i.zj, %i.za
  br i1 %.not.i.i.i959.1, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i960.1, label %.lr.ph.i.i.i955.1, !llvm.loop !5

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i960.1: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i958.1
  %.pr.i961.1 = load ptr, ptr %66, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i962.1

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i962.1: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i960.1, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit953.1
  %i.zk = phi ptr [ %.pr.i961.1, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i960.1 ], [ %i.yz, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit953.1 ] ; 3 uses
  %.not.i.i1.i963.1 = icmp eq ptr %i.zk, null
  br i1 %.not.i.i1.i963.1, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit965.1, label %bb.hi

bb.hi:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i962.1
  %i.zl = load ptr, ptr %i.oa, align 8, !tbaa !136
  %i.zm = ptrtoint ptr %i.zl to i64
  %i.zn = ptrtoint ptr %i.zk to i64
  %i.zo = sub i64 %i.zm, %i.zn
  call void @_ZdlPvm(ptr noundef nonnull %i.zk, i64 noundef %i.zo) #27
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit965.1

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit965.1: ; preds = %bb.hi, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i962.1
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #24
  br label %bb.hj

bb.hj:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit965.1, %bb.gv
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #24
  %i.zp = load ptr, ptr %55, align 8, !tbaa !142  ; 5 uses
  store ptr %i.zp, ptr %69, align 8, !tbaa !142
  %i.zq = load i64, ptr %i.zp, align 8            ; 3 uses
  %i.zr = lshr i64 %i.zq, 40
  %i.zs = trunc nuw nsw i64 %i.zr to i32
  %i.zt = and i32 %i.zs, 1048575                  ; 3 uses
  %i.zu = icmp samesign ult i32 %i.zt, 1048574
  br i1 %i.zu, label %bb.fy, label %bb.fz, !prof !42

_ZN4cvc58internal8TypeNodeC2ERKS1_.exit:          ; preds = %bb.fz, %bb.fy, %bb.ga
  invoke void @_ZN4cvc58internal6theory7strings5utils8mkConcatERKSt6vectorINS0_12NodeTemplateILb1EEESaIS6_EENS0_8TypeNodeE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %68, ptr noundef nonnull align 8 dereferenceable(24) %indvars.iv.sroa.phi, ptr noundef nonnull align 8 %69)
          to label %bb.hk unwind label %bb.ja

bb.hk:                                            ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit
  %i.zv = load ptr, ptr %69, align 8, !tbaa !142  ; 3 uses
  %i.zw = load i64, ptr %i.zv, align 8            ; 3 uses
  %i.zx = and i64 %i.zw, 1152920405095219200
  %.not.i.i966 = icmp eq i64 %i.zx, 1152920405095219200
  br i1 %.not.i.i966, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, label %bb.hl, !prof !41

bb.hl:                                            ; preds = %bb.hk
  %i.zy = add i64 %i.zw, 1152920405095219200
  %i.zz = and i64 %i.zy, 1152920405095219200      ; 2 uses
  %i.aaa = and i64 %i.zw, -1152920405095219201
  %i.aab = or disjoint i64 %i.zz, %i.aaa
  store i64 %i.aab, ptr %i.zv, align 8
  %i.aac = icmp eq i64 %i.zz, 0
  br i1 %i.aac, label %bb.hm, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, !prof !41

bb.hm:                                            ; preds = %bb.hl
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.zv)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit unwind label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.aad = landingpad { ptr, i32 }
          catch ptr null
  %i.aae = extractvalue { ptr, i32 } %i.aad, 0
  call void @__clang_call_terminate(ptr %i.aae) #26
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit:              ; preds = %bb.hk, %bb.hl, %bb.hm
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #24
  %i.aaf = trunc nuw nsw i64 %indvars.iv to i32
  %i.aag = xor i32 %i.aaf, 1                      ; 2 uses
  %i.aah = load ptr, ptr %55, align 8, !tbaa !142 ; 5 uses
  store ptr %i.aah, ptr %71, align 8, !tbaa !142
  %i.aai = load i64, ptr %i.aah, align 8          ; 3 uses
  %i.aaj = lshr i64 %i.aai, 40
  %i.aak = trunc nuw nsw i64 %i.aaj to i32
  %i.aal = and i32 %i.aak, 1048575                ; 3 uses
  %i.aam = icmp samesign ult i32 %i.aal, 1048574
  br i1 %i.aam, label %bb.ho, label %bb.hp, !prof !42

bb.ho:                                            ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit
  %i.aan = add nuw nsw i32 %i.aal, 1
end_hunk_1
begin_hunk_2_@_ZNK4cvc58internal6theory11quantifiers16ExtendedRewriter22extendedRewriteStringsERKNS0_12NodeTemplateILb1EEE:bb.a
  %i.afd = icmp samesign ult i32 %i.afc, 1048574
  br i1 %i.afd, label %bb.iq, label %bb.ir, !prof !42

bb.iq:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit993
  %i.afe = add nuw nsw i32 %i.afc, 1
  %i.aff = zext nneg i32 %i.afe to i64
  %i.afg = shl nuw nsw i64 %i.aff, 40
  %i.afh = and i64 %i.aez, -1152920405095219201
  %i.afi = or i64 %i.afg, %i.afh                  ; 2 uses
  store i64 %i.afi, ptr %i.aey, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit995

bb.ir:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit993
  %i.afj = icmp eq i32 %i.afc, 1048574
  br i1 %i.afj, label %bb.is, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit995, !prof !41

bb.is:                                            ; preds = %bb.ir
  %i.afk = or i64 %i.aez, 1152920405095219200
  store i64 %i.afk, ptr %i.aey, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aey)
          to label %._ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit995_crit_edge unwind label %bb.ji

._ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit995_crit_edge: ; preds = %bb.is
  %.pre2398.a = load i64, ptr %i.aey, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit995

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit995: ; preds = %._ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit995_crit_edge, %bb.iq, %bb.ir
  %i.afl = phi i64 [ %.pre2398.a, %._ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit995_crit_edge ], [ %i.afi, %bb.iq ], [ %i.aez, %bb.ir ] ; 3 uses
  %i.afm = and i64 %i.afl, 1152920405095219200
  %.not.i.i996 = icmp eq i64 %i.afm, 1152920405095219200
  br i1 %.not.i.i996, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit998, label %bb.it, !prof !41

bb.it:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit995
  %i.afn = add i64 %i.afl, 1152920405095219200
  %i.afo = and i64 %i.afn, 1152920405095219200    ; 2 uses
  %i.afp = and i64 %i.afl, -1152920405095219201
  %i.afq = or disjoint i64 %i.afo, %i.afp
  store i64 %i.afq, ptr %i.aey, align 8
  %i.afr = icmp eq i64 %i.afo, 0
  br i1 %i.afr, label %bb.iu, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit998, !prof !41

bb.iu:                                            ; preds = %bb.it
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aey)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit998 unwind label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.afs = landingpad { ptr, i32 }
          catch ptr null
  %i.aft = extractvalue { ptr, i32 } %i.afs, 0
  call void @__clang_call_terminate(ptr %i.aft) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit998: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit995, %bb.it, %bb.iu
  %i.afu = load ptr, ptr %73, align 8, !tbaa !39  ; 3 uses
  %i.afv = load i64, ptr %i.afu, align 8          ; 3 uses
  %i.afw = and i64 %i.afv, 1152920405095219200
  %.not.i.i999 = icmp eq i64 %i.afw, 1152920405095219200
  br i1 %.not.i.i999, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1001, label %bb.iw, !prof !41

bb.iw:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit998
  %i.afx = add i64 %i.afv, 1152920405095219200
  %i.afy = and i64 %i.afx, 1152920405095219200    ; 2 uses
  %i.afz = and i64 %i.afv, -1152920405095219201
  %i.aga = or disjoint i64 %i.afy, %i.afz
  store i64 %i.aga, ptr %i.afu, align 8
  %i.agb = icmp eq i64 %i.afy, 0
  br i1 %i.agb, label %bb.ix, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1001, !prof !41

bb.ix:                                            ; preds = %bb.iw
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.afu)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1001 unwind label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.agc = landingpad { ptr, i32 }
          catch ptr null
  %i.agd = extractvalue { ptr, i32 } %i.agc, 0
  call void @__clang_call_terminate(ptr %i.agd) #26
  unreachable

bb.iz:                                            ; preds = %bb.ga
  %i.age = landingpad { ptr, i32 }
          cleanup
  br label %bb.jx

bb.ja:                                            ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit
  %i.agf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %69) #24
  br label %bb.jx

bb.jb:                                            ; preds = %bb.hq
  %i.agg = landingpad { ptr, i32 }
          cleanup
  br label %bb.jw

bb.jc:                                            ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit969
  %i.agh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %71) #24
  br label %bb.jw

bb.jd:                                            ; preds = %bb.hx, %_ZN4cvc58internal8TypeNodeD2Ev.exit972
  %i.agi = landingpad { ptr, i32 }
          cleanup
  br label %bb.jf

bb.je:                                            ; preds = %bb.ib, %bb.hy
  %i.agj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %72) #24
  br label %bb.jf

bb.jf:                                            ; preds = %bb.je, %bb.jd
  %.pn736 = phi { ptr, i32 } [ %i.agj, %bb.je ], [ %i.agi, %bb.jd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #24
  br label %.body989

bb.jg:                                            ; preds = %bb.ij
  %i.agk = landingpad { ptr, i32 }
          cleanup
  br label %.body989

bb.jh:                                            ; preds = %bb.ip
  %i.agl = landingpad { ptr, i32 }
          cleanup
  br label %bb.jj

bb.ji:                                            ; preds = %bb.is
  %i.agm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %73) #24
  br label %bb.jj

bb.jj:                                            ; preds = %bb.ji, %bb.jh
  %.pn738.pn = phi { ptr, i32 } [ %i.agm, %bb.ji ], [ %i.agl, %bb.jh ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #24
  br label %.body989

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1001: ; preds = %bb.ix, %bb.iw, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit998, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit986
  %.5512 = phi i32 [ 0, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit986 ], [ 1, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit998 ], [ 1, %bb.iw ], [ 1, %bb.ix ]
  %i.agn = load ptr, ptr %70, align 8, !tbaa !39  ; 3 uses
  %i.ago = load i64, ptr %i.agn, align 8          ; 3 uses
  %i.agp = and i64 %i.ago, 1152920405095219200
  %.not.i.i1002 = icmp eq i64 %i.agp, 1152920405095219200
  br i1 %.not.i.i1002, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1004, label %bb.jk, !prof !41

bb.jk:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1001
  %i.agq = add i64 %i.ago, 1152920405095219200
  %i.agr = and i64 %i.agq, 1152920405095219200    ; 2 uses
  %i.ags = and i64 %i.ago, -1152920405095219201
  %i.agt = or disjoint i64 %i.agr, %i.ags
  store i64 %i.agt, ptr %i.agn, align 8
  %i.agu = icmp eq i64 %i.agr, 0
  br i1 %i.agu, label %bb.jl, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1004, !prof !41

bb.jl:                                            ; preds = %bb.jk
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.agn)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1004 unwind label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.agv = landingpad { ptr, i32 }
          catch ptr null
  %i.agw = extractvalue { ptr, i32 } %i.agv, 0
  call void @__clang_call_terminate(ptr %i.agw) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1004: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1001, %bb.jk, %bb.jl
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #24
  %i.agx = load ptr, ptr %68, align 8, !tbaa !39  ; 3 uses
  %i.agy = load i64, ptr %i.agx, align 8          ; 3 uses
  %i.agz = and i64 %i.agy, 1152920405095219200
  %.not.i.i1005 = icmp eq i64 %i.agz, 1152920405095219200
  br i1 %.not.i.i1005, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1007, label %bb.jn, !prof !41

bb.jn:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1004
  %i.aha = add i64 %i.agy, 1152920405095219200
  %i.ahb = and i64 %i.aha, 1152920405095219200    ; 2 uses
  %i.ahc = and i64 %i.agy, -1152920405095219201
  %i.ahd = or disjoint i64 %i.ahb, %i.ahc
  store i64 %i.ahd, ptr %i.agx, align 8
  %i.ahe = icmp eq i64 %i.ahb, 0
  br i1 %i.ahe, label %bb.jo, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1007, !prof !41

bb.jo:                                            ; preds = %bb.jn
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.agx)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1007 unwind label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.ahf = landingpad { ptr, i32 }
          catch ptr null
  %i.ahg = extractvalue { ptr, i32 } %i.ahf, 0
  call void @__clang_call_terminate(ptr %i.ahg) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1007: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1004, %bb.jn, %bb.jo
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #24
  br label %.loopexit2118

.loopexit2118:                                    ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1007
  %.6513 = phi i32 [ %.5512, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1007 ], [ %spec.store.select, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit ]
  %i.ahh = load ptr, ptr %i.og, align 8, !tbaa !141 ; 3 uses
  %i.ahi = load ptr, ptr %i.oh, align 16, !tbaa !134 ; 2 uses
  %.not4.i.i.i1008 = icmp eq ptr %i.ahh, %i.ahi
  br i1 %.not4.i.i.i1008, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1016, label %.lr.ph.i.i.i1009

.lr.ph.i.i.i1009:                                 ; preds = %.loopexit2118, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1012
  %.05.i.i.i1010 = phi ptr [ %i.ahs, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1012 ], [ %i.ahh, %.loopexit2118 ] ; 2 uses
  %i.ahj = load ptr, ptr %.05.i.i.i1010, align 8, !tbaa !39 ; 3 uses
  %i.ahk = load i64, ptr %i.ahj, align 8          ; 3 uses
  %i.ahl = and i64 %i.ahk, 1152920405095219200
  %.not.i.i.i.i.i.i1011 = icmp eq i64 %i.ahl, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i1011, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1012, label %bb.jq, !prof !41

bb.jq:                                            ; preds = %.lr.ph.i.i.i1009
  %i.ahm = add i64 %i.ahk, 1152920405095219200
  %i.ahn = and i64 %i.ahm, 1152920405095219200    ; 2 uses
  %i.aho = and i64 %i.ahk, -1152920405095219201
  %i.ahp = or disjoint i64 %i.ahn, %i.aho
  store i64 %i.ahp, ptr %i.ahj, align 8
  %i.ahq = icmp eq i64 %i.ahn, 0
  br i1 %i.ahq, label %bb.jr, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1012, !prof !41

bb.jr:                                            ; preds = %bb.jq
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ahj)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1012 unwind label %.loopexit.split-lp2340.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp2340.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ju, %bb.jr
  %lpad.loopexit.split-lp2853 = landingpad { ptr, i32 }
          catch ptr null
  %i.ahr = extractvalue { ptr, i32 } %lpad.loopexit.split-lp2853, 0
  call void @__clang_call_terminate(ptr %i.ahr) #26
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1012: ; preds = %bb.jr, %bb.jq, %.lr.ph.i.i.i1009
  %i.ahs = getelementptr inbounds nuw i8, ptr %.05.i.i.i1010, i64 8 ; 2 uses
  %.not.i.i.i1013 = icmp eq ptr %i.ahs, %i.ahi
  br i1 %.not.i.i.i1013, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i1014, label %.lr.ph.i.i.i1009, !llvm.loop !5

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i1014: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1012
  %.pr.i1015 = load ptr, ptr %i.og, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1016

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1016: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i1014, %.loopexit2118
  %i.aht = phi ptr [ %.pr.i1015, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i1014 ], [ %i.ahh, %.loopexit2118 ] ; 3 uses
  %.not.i.i1.i1017 = icmp eq ptr %i.aht, null
  br i1 %.not.i.i1.i1017, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1019, label %bb.js

bb.js:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1016
  %i.ahu = load ptr, ptr %i.oi, align 8, !tbaa !136
  %i.ahv = ptrtoint ptr %i.ahu to i64
  %i.ahw = ptrtoint ptr %i.aht to i64
  %i.ahx = sub i64 %i.ahv, %i.ahw
  call void @_ZdlPvm(ptr noundef nonnull %i.aht, i64 noundef %i.ahx) #27
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1019

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1019: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1016, %bb.js
  %i.ahy = load ptr, ptr %62, align 16, !tbaa !141 ; 3 uses
  %i.ahz = load ptr, ptr %i.oj, align 8, !tbaa !134 ; 2 uses
  %.not4.i.i.i1008.1 = icmp eq ptr %i.ahy, %i.ahz
  br i1 %.not4.i.i.i1008.1, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1016.1, label %.lr.ph.i.i.i1009.1

.lr.ph.i.i.i1009.1:                               ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1019, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1012.1
  %.05.i.i.i1010.1 = phi ptr [ %i.aii, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1012.1 ], [ %i.ahy, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1019 ] ; 2 uses
  %i.aia = load ptr, ptr %.05.i.i.i1010.1, align 8, !tbaa !39 ; 3 uses
  %i.aib = load i64, ptr %i.aia, align 8          ; 3 uses
  %i.aic = and i64 %i.aib, 1152920405095219200
  %.not.i.i.i.i.i.i1011.1 = icmp eq i64 %i.aic, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i1011.1, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1012.1, label %bb.jt, !prof !41

bb.jt:                                            ; preds = %.lr.ph.i.i.i1009.1
  %i.aid = add i64 %i.aib, 1152920405095219200
  %i.aie = and i64 %i.aid, 1152920405095219200    ; 2 uses
  %i.aif = and i64 %i.aib, -1152920405095219201
  %i.aig = or disjoint i64 %i.aie, %i.aif
  store i64 %i.aig, ptr %i.aia, align 8
  %i.aih = icmp eq i64 %i.aie, 0
  br i1 %i.aih, label %bb.ju, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1012.1, !prof !41

bb.ju:                                            ; preds = %bb.jt
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aia)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1012.1 unwind label %.loopexit.split-lp2340.loopexit.split-lp.loopexit.split-lp

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1012.1: ; preds = %bb.ju, %bb.jt, %.lr.ph.i.i.i1009.1
  %i.aii = getelementptr inbounds nuw i8, ptr %.05.i.i.i1010.1, i64 8 ; 2 uses
  %.not.i.i.i1013.1 = icmp eq ptr %i.aii, %i.ahz
  br i1 %.not.i.i.i1013.1, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i1014.1, label %.lr.ph.i.i.i1009.1, !llvm.loop !5

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i1014.1: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1012.1
  %.pr.i1015.1 = load ptr, ptr %62, align 16, !tbaa !141
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1016.1

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1016.1: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i1014.1, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1019
  %i.aij = phi ptr [ %.pr.i1015.1, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i1014.1 ], [ %i.ahy, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1019 ] ; 3 uses
  %.not.i.i1.i1017.1 = icmp eq ptr %i.aij, null
  br i1 %.not.i.i1.i1017.1, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1019.1, label %bb.jv

bb.jv:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1016.1
  %i.aik = load ptr, ptr %i.ok, align 16, !tbaa !136
  %i.ail = ptrtoint ptr %i.aik to i64
  %i.aim = ptrtoint ptr %i.aij to i64
  %i.ain = sub i64 %i.ail, %i.aim
  call void @_ZdlPvm(ptr noundef nonnull %i.aij, i64 noundef %i.ain) #27
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1019.1

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1019.1: ; preds = %bb.jv, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1016.1
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #24
  %i.aio = icmp eq i32 %.6513, 0
  br label %.thread2054

.body989:                                         ; preds = %bb.jg, %.body.i987, %bb.jj, %bb.jf
  %.pn738.pn.pn = phi { ptr, i32 } [ %.pn738.pn, %bb.jj ], [ %.pn736, %bb.jf ], [ %i.agk, %bb.jg ], [ %i.aek, %.body.i987 ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %70) #24
  br label %bb.jw

bb.jw:                                            ; preds = %.body989, %bb.jc, %bb.jb
  %.pn738.pn.pn.pn = phi { ptr, i32 } [ %.pn738.pn.pn, %.body989 ], [ %i.agh, %bb.jc ], [ %i.agg, %bb.jb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #24
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %68) #24
  br label %bb.jx

bb.jx:                                            ; preds = %bb.jw, %bb.ja, %bb.iz
  %.pn738.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn738.pn.pn.pn, %bb.jw ], [ %i.agf, %bb.ja ], [ %i.age, %bb.iz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #24
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.fq, %.body946, %bb.jx
  %.pn745.pn.pn.pn = phi { ptr, i32 } [ %.pn731.pn, %bb.fq ], [ %.pn738.pn.pn.pn.pn, %bb.jx ], [ %.pn745.pn, %.body946 ], [ %lpad.loopexit.split-lp2850, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.aip = getelementptr inbounds nuw i8, ptr %62, i64 24 ; 2 uses
  %i.aiq = load ptr, ptr %i.aip, align 8, !tbaa !141 ; 3 uses
  %i.air = getelementptr inbounds nuw i8, ptr %62, i64 32
  %i.ais = load ptr, ptr %i.air, align 16, !tbaa !134 ; 2 uses
  %.not4.i.i.i1020 = icmp eq ptr %i.aiq, %i.ais
  br i1 %.not4.i.i.i1020, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1028, label %.lr.ph.i.i.i1021

.lr.ph.i.i.i1021:                                 ; preds = %.loopexit.split-lp, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1024
  %.05.i.i.i1022 = phi ptr [ %i.ajc, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1024 ], [ %i.aiq, %.loopexit.split-lp ] ; 2 uses
  %i.ait = load ptr, ptr %.05.i.i.i1022, align 8, !tbaa !39 ; 3 uses
  %i.aiu = load i64, ptr %i.ait, align 8          ; 3 uses
  %i.aiv = and i64 %i.aiu, 1152920405095219200
  %.not.i.i.i.i.i.i1023 = icmp eq i64 %i.aiv, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i1023, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1024, label %bb.jy, !prof !41

bb.jy:                                            ; preds = %.lr.ph.i.i.i1021
  %i.aiw = add i64 %i.aiu, 1152920405095219200
  %i.aix = and i64 %i.aiw, 1152920405095219200    ; 2 uses
  %i.aiy = and i64 %i.aiu, -1152920405095219201
  %i.aiz = or disjoint i64 %i.aix, %i.aiy
  store i64 %i.aiz, ptr %i.ait, align 8
  %i.aja = icmp eq i64 %i.aix, 0
  br i1 %i.aja, label %bb.jz, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1024, !prof !41

bb.jz:                                            ; preds = %bb.jy
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ait)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1024 unwind label %.loopexit.split-lp2348.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp2348.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.kc, %bb.jz
  %lpad.loopexit.split-lp2844 = landingpad { ptr, i32 }
          catch ptr null
  %i.ajb = extractvalue { ptr, i32 } %lpad.loopexit.split-lp2844, 0
  call void @__clang_call_terminate(ptr %i.ajb) #26
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1024: ; preds = %bb.jz, %bb.jy, %.lr.ph.i.i.i1021
  %i.ajc = getelementptr inbounds nuw i8, ptr %.05.i.i.i1022, i64 8 ; 2 uses
  %.not.i.i.i1025 = icmp eq ptr %i.ajc, %i.ais
  br i1 %.not.i.i.i1025, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i1026, label %.lr.ph.i.i.i1021, !llvm.loop !5

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i1026: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1024
  %.pr.i1027 = load ptr, ptr %i.aip, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1028

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1028: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i1026, %.loopexit.split-lp
  %i.ajd = phi ptr [ %.pr.i1027, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i1026 ], [ %i.aiq, %.loopexit.split-lp ] ; 3 uses
  %.not.i.i1.i1029 = icmp eq ptr %i.ajd, null
  br i1 %.not.i.i1.i1029, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1031, label %bb.ka

bb.ka:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1028
  %i.aje = getelementptr inbounds nuw i8, ptr %62, i64 40
  %i.ajf = load ptr, ptr %i.aje, align 8, !tbaa !136
  %i.ajg = ptrtoint ptr %i.ajf to i64
  %i.ajh = ptrtoint ptr %i.ajd to i64
  %i.aji = sub i64 %i.ajg, %i.ajh
  call void @_ZdlPvm(ptr noundef nonnull %i.ajd, i64 noundef %i.aji) #27
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1031

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1031: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1028, %bb.ka
  %i.ajj = load ptr, ptr %62, align 16, !tbaa !141 ; 3 uses
  %i.ajk = getelementptr inbounds nuw i8, ptr %62, i64 8
  %i.ajl = load ptr, ptr %i.ajk, align 8, !tbaa !134 ; 2 uses
  %.not4.i.i.i1020.1 = icmp eq ptr %i.ajj, %i.ajl
  br i1 %.not4.i.i.i1020.1, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1028.1, label %.lr.ph.i.i.i1021.1

.lr.ph.i.i.i1021.1:                               ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1031, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1024.1
  %.05.i.i.i1022.1 = phi ptr [ %i.aju, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1024.1 ], [ %i.ajj, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1031 ] ; 2 uses
  %i.ajm = load ptr, ptr %.05.i.i.i1022.1, align 8, !tbaa !39 ; 3 uses
  %i.ajn = load i64, ptr %i.ajm, align 8          ; 3 uses
  %i.ajo = and i64 %i.ajn, 1152920405095219200
  %.not.i.i.i.i.i.i1023.1 = icmp eq i64 %i.ajo, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i1023.1, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1024.1, label %bb.kb, !prof !41

bb.kb:                                            ; preds = %.lr.ph.i.i.i1021.1
  %i.ajp = add i64 %i.ajn, 1152920405095219200
  %i.ajq = and i64 %i.ajp, 1152920405095219200    ; 2 uses
  %i.ajr = and i64 %i.ajn, -1152920405095219201
  %i.ajs = or disjoint i64 %i.ajq, %i.ajr
  store i64 %i.ajs, ptr %i.ajm, align 8
  %i.ajt = icmp eq i64 %i.ajq, 0
  br i1 %i.ajt, label %bb.kc, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1024.1, !prof !41

bb.kc:                                            ; preds = %bb.kb
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ajm)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1024.1 unwind label %.loopexit.split-lp2348.loopexit.split-lp.loopexit.split-lp

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1024.1: ; preds = %bb.kc, %bb.kb, %.lr.ph.i.i.i1021.1
  %i.aju = getelementptr inbounds nuw i8, ptr %.05.i.i.i1022.1, i64 8 ; 2 uses
  %.not.i.i.i1025.1 = icmp eq ptr %i.aju, %i.ajl
  br i1 %.not.i.i.i1025.1, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i1026.1, label %.lr.ph.i.i.i1021.1, !llvm.loop !5

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i1026.1: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1024.1
  %.pr.i1027.1 = load ptr, ptr %62, align 16, !tbaa !141
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1028.1

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1028.1: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i1026.1, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1031
  %i.ajv = phi ptr [ %.pr.i1027.1, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i1026.1 ], [ %i.ajj, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1031 ] ; 3 uses
  %.not.i.i1.i1029.1 = icmp eq ptr %i.ajv, null
  br i1 %.not.i.i1.i1029.1, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1031.1, label %bb.kd

bb.kd:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1028.1
  %i.ajw = getelementptr inbounds nuw i8, ptr %62, i64 16
  %i.ajx = load ptr, ptr %i.ajw, align 16, !tbaa !136
  %i.ajy = ptrtoint ptr %i.ajx to i64
  %i.ajz = ptrtoint ptr %i.ajv to i64
  %i.aka = sub i64 %i.ajy, %i.ajz
  call void @_ZdlPvm(ptr noundef nonnull %i.ajv, i64 noundef %i.aka) #27
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1031.1

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1031.1: ; preds = %bb.kd, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1028.1
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #24
  br label %.body919

.thread2054:                                      ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1019.1, %bb.eb, %bb.ed
  %.7514 = phi i1 [ %i.aio, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1019.1 ], [ true, %bb.eb ], [ true, %bb.ed ] ; 2 uses
  %i.akb = load ptr, ptr %59, align 8, !tbaa !39  ; 3 uses
  %i.akc = load i64, ptr %i.akb, align 8          ; 3 uses
  %i.akd = and i64 %i.akc, 1152920405095219200
  %.not.i.i1032 = icmp eq i64 %i.akd, 1152920405095219200
  br i1 %.not.i.i1032, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1034, label %bb.ke, !prof !41

bb.ke:                                            ; preds = %.thread2054
  %i.ake = add i64 %i.akc, 1152920405095219200
  %i.akf = and i64 %i.ake, 1152920405095219200    ; 2 uses
  %i.akg = and i64 %i.akc, -1152920405095219201
  %i.akh = or disjoint i64 %i.akf, %i.akg
  store i64 %i.akh, ptr %i.akb, align 8
  %i.aki = icmp eq i64 %i.akf, 0
  br i1 %i.aki, label %bb.kf, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1034, !prof !41

bb.kf:                                            ; preds = %bb.ke
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.akb)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1034 unwind label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.akj = landingpad { ptr, i32 }
          catch ptr null
  %i.akk = extractvalue { ptr, i32 } %i.akj, 0
  call void @__clang_call_terminate(ptr %i.akk) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1034: ; preds = %.thread2054, %bb.ke, %bb.kf
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #24
  %or.cond = and i1 %.7514, %.not2292
  br i1 %or.cond, label %bb.dp, label %bb.ki, !llvm.loop !598

.body919:                                         ; preds = %bb.ea, %bb.eh, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1031.1
  %.pn745.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn745.pn.pn.pn, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1031.1 ], [ %i.qn, %bb.eh ], [ %i.qg, %bb.ea ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %59) #24
  br label %bb.kh

bb.kh:                                            ; preds = %.body919, %bb.eg, %bb.ef
  %.pn745.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn745.pn.pn.pn.pn, %.body919 ], [ %i.qm, %bb.eg ], [ %i.ql, %bb.ef ]
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #24
  br label %bb.le

bb.ki:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1034
  %i.akl = getelementptr inbounds nuw i8, ptr %57, i64 24 ; 2 uses
  %i.akm = load ptr, ptr %i.akl, align 8, !tbaa !141 ; 3 uses
  %i.akn = getelementptr inbounds nuw i8, ptr %57, i64 32
  %i.ako = load ptr, ptr %i.akn, align 16, !tbaa !134 ; 2 uses
  %.not4.i.i.i1035 = icmp eq ptr %i.akm, %i.ako
  br i1 %.not4.i.i.i1035, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1043, label %.lr.ph.i.i.i1036

.lr.ph.i.i.i1036:                                 ; preds = %bb.ki, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1039
  %.05.i.i.i1037 = phi ptr [ %i.aky, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1039 ], [ %i.akm, %bb.ki ] ; 2 uses
  %i.akp = load ptr, ptr %.05.i.i.i1037, align 8, !tbaa !39 ; 3 uses
  %i.akq = load i64, ptr %i.akp, align 8          ; 3 uses
  %i.akr = and i64 %i.akq, 1152920405095219200
  %.not.i.i.i.i.i.i1038 = icmp eq i64 %i.akr, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i1038, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1039, label %bb.kj, !prof !41

bb.kj:                                            ; preds = %.lr.ph.i.i.i1036
  %i.aks = add i64 %i.akq, 1152920405095219200
  %i.akt = and i64 %i.aks, 1152920405095219200    ; 2 uses
  %i.aku = and i64 %i.akq, -1152920405095219201
  %i.akv = or disjoint i64 %i.akt, %i.aku
  store i64 %i.akv, ptr %i.akp, align 8
  %i.akw = icmp eq i64 %i.akt, 0
  br i1 %i.akw, label %bb.kk, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1039, !prof !41

bb.kk:                                            ; preds = %bb.kj
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.akp)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1039 unwind label %.loopexit.split-lp2358.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp2358.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.kn, %bb.kk
  %lpad.loopexit.split-lp2839 = landingpad { ptr, i32 }
          catch ptr null
  %i.akx = extractvalue { ptr, i32 } %lpad.loopexit.split-lp2839, 0
  call void @__clang_call_terminate(ptr %i.akx) #26
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1039: ; preds = %bb.kk, %bb.kj, %.lr.ph.i.i.i1036
  %i.aky = getelementptr inbounds nuw i8, ptr %.05.i.i.i1037, i64 8 ; 2 uses
  %.not.i.i.i1040 = icmp eq ptr %i.aky, %i.ako
  br i1 %.not.i.i.i1040, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i1041, label %.lr.ph.i.i.i1036, !llvm.loop !5

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i1041: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1039
  %.pr.i1042 = load ptr, ptr %i.akl, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1043
end_hunk_2

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/extended_rewrite?download=true
inline.NumInlined: 5801
inline.NumDeleted: 1532
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZNK4cvc58internal12NodeTemplateILb1EE7getTypeEb:bb.a
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.x = load i64, ptr %i.v, align 8, !tbaa !154
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #27
  br i1 %.0, label %bb.r, label %bb.s

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q
  br i1 %.0, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn1523 = phi { ptr, i32 } [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.n) #24
  br label %bb.s

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.r, %bb.p
  %.pn15.pn = phi { ptr, i32 } [ %.pn1523, %bb.r ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %bb.p ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #24
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.m
  %.pn15.pn.pn = phi { ptr, i32 } [ %.pn15.pn, %bb.s ], [ %i.p, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %.body

bb.u:                                             ; preds = %bb.f
  ret void

.body:                                            ; preds = %bb.e, %bb.t
  %.pn15.pn.pn.pn = phi { ptr, i32 } [ %.pn15.pn.pn, %bb.t ], [ %i.h, %bb.e ]
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
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !36   ; 3 uses
  %i.m = load i64, ptr %i.l, align 8              ; 3 uses
  %i.n = and i64 %i.m, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.n, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.d, !prof !38

bb.d:                                             ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit1
  %i.o = add i64 %i.m, 1152920405095219200
  %i.p = and i64 %i.o, 1152920405095219200        ; 2 uses
  %i.q = and i64 %i.m, -1152920405095219201
  %i.r = or disjoint i64 %i.p, %i.q
  store i64 %i.r, ptr %i.l, align 8
  %i.s = icmp eq i64 %i.p, 0
  br i1 %i.s, label %bb.e, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !38

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
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !36   ; 3 uses
  %i.x = load i64, ptr %i.w, align 8              ; 3 uses
  %i.y = and i64 %i.x, 1152920405095219200
  %.not.i.i2 = icmp eq i64 %i.y, 1152920405095219200
  br i1 %.not.i.i2, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit3, label %bb.g, !prof !38

bb.g:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.z = add i64 %i.x, 1152920405095219200
  %i.aa = and i64 %i.z, 1152920405095219200       ; 2 uses
  %i.ab = and i64 %i.x, -1152920405095219201
  %i.ac = or disjoint i64 %i.aa, %i.ab
  store i64 %i.ac, ptr %i.w, align 8
  %i.ad = icmp eq i64 %i.aa, 0
  br i1 %i.ad, label %bb.h, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit3, !prof !38

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
  %.sroa.0 = alloca i64, align 16                 ; 6 uses
  %.sroa.6 = alloca i64, align 8                  ; 6 uses
  %63 = alloca %"class.std::vector.97", align 8   ; 10 uses
  %64 = alloca %"class.cvc5::internal::NodeTemplate.107", align 8 ; 2 uses
  %65 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 3 uses
  %66 = alloca %"class.std::vector.97", align 8   ; 19 uses
  %67 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 14 uses
  %68 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %69 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 4 uses
  %70 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %71 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 4 uses
  %72 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %73 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 3 uses
  %74 = alloca %"class.std::vector.97", align 8   ; 20 uses
  %75 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !137, !nonnull !41, !align !138
  call void @_ZN4cvc58internal6theory7strings11ArithEntailC1EPNS0_11NodeManagerEPNS1_8RewriterEb(ptr noundef nonnull align 8 dereferenceable(128) %41, ptr noundef %i.a, ptr noundef nonnull %i.c, i1 noundef zeroext true)
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #24
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !137, !nonnull !41, !align !138
  %.05382290.sroa.gep2800 = getelementptr inbounds nuw i8, ptr %62, i64 24
  %indvars.iv.sroa.gep2801 = getelementptr inbounds nuw i8, ptr %62, i64 24
  %.05382290.sroa.gep2804 = getelementptr inbounds nuw i8, ptr %57, i64 24
  invoke void @_ZN4cvc58internal6theory7strings13StringsEntailC1EPNS1_8RewriterERNS2_11ArithEntailE(ptr noundef nonnull align 8 dereferenceable(24) %42, ptr noundef nonnull %i.d, ptr noundef nonnull align 8 dereferenceable(128) %41)
          to label %bb.b unwind label %bb.ab

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #24
  %i.e = load ptr, ptr %1, align 8, !tbaa !32
  invoke void @_ZN4cvc58internal6theory7strings17SequencesRewriterC1EPNS0_11NodeManagerERNS2_11ArithEntailERNS2_13StringsEntailEPNS0_13HistogramStatINS2_7RewriteEEE(ptr noundef nonnull align 8 dereferenceable(112) %43, ptr noundef %i.e, ptr noundef nonnull align 8 dereferenceable(128) %41, ptr noundef nonnull align 8 dereferenceable(24) %42, ptr noundef null)
          to label %bb.c unwind label %bb.ac

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %2, align 8, !tbaa !36     ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8
  %i.i = trunc i64 %i.h to i32
  %i.j = and i32 %i.i, 1023
  switch i32 %i.j, label %bb.bcs [
    i32 5, label %bb.d
    i32 319, label %bb.mj
    i32 322, label %bb.pb
    i32 330, label %bb.zb
    i32 325, label %bb.ama
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #24
  store ptr %i.f, ptr %45, align 8, !tbaa !36
  %i.k = load i64, ptr %i.f, align 8              ; 3 uses
  %i.l = lshr i64 %i.k, 40
  %i.m = trunc nuw nsw i64 %i.l to i32
end_hunk_0
begin_hunk_1_@_ZNK4cvc58internal6theory11quantifiers16ExtendedRewriter22extendedRewriteStringsERKNS0_12NodeTemplateILb1EEE:bb.a

bb.dp:                                            ; preds = %.noexc906.1
  %i.nm = icmp eq i32 %i.nk, 1048574
  br i1 %i.nm, label %bb.dq, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit908.1, !prof !38

bb.dq:                                            ; preds = %bb.dp
  %i.nn = or i64 %i.nh, 1152920405095219200
  store i64 %i.nn, ptr %i.ng, align 8, !noalias !712
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ng)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit908.1 unwind label %bb.dv

bb.dr:                                            ; preds = %.noexc906.1
  %i.no = add nuw nsw i32 %i.nk, 1
  %i.np = zext nneg i32 %i.no to i64
  %i.nq = shl nuw nsw i64 %i.np, 40
  %i.nr = and i64 %i.nh, -1152920405095219201
  %i.ns = or i64 %i.nq, %i.nr
  store i64 %i.ns, ptr %i.ng, align 8, !noalias !712
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit908.1

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit908.1: ; preds = %bb.dr, %bb.dq, %bb.dp
  %i.nt = getelementptr inbounds nuw i8, ptr %57, i64 24
  invoke void @_ZN4cvc58internal6theory7strings5utils9getConcatENS0_12NodeTemplateILb1EEERSt6vectorIS5_SaIS5_EE(ptr noundef nonnull align 8 %58, ptr noundef nonnull align 8 dereferenceable(24) %i.nt)
          to label %bb.ds unwind label %bb.dw

bb.ds:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit908.1
  %i.nu = load ptr, ptr %58, align 8, !tbaa !36   ; 3 uses
  %i.nv = load i64, ptr %i.nu, align 8            ; 3 uses
  %i.nw = and i64 %i.nv, 1152920405095219200
  %.not.i.i909.1 = icmp eq i64 %i.nw, 1152920405095219200
  br i1 %.not.i.i909.1, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit911.1, label %bb.dt, !prof !38

bb.dt:                                            ; preds = %bb.ds
  %i.nx = add i64 %i.nv, 1152920405095219200
  %i.ny = and i64 %i.nx, 1152920405095219200      ; 2 uses
  %i.nz = and i64 %i.nv, -1152920405095219201
  %i.oa = or disjoint i64 %i.ny, %i.nz
  store i64 %i.oa, ptr %i.nu, align 8
  %i.ob = icmp eq i64 %i.ny, 0
  br i1 %i.ob, label %bb.du, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit911.1, !prof !38

bb.du:                                            ; preds = %bb.dt
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.nu)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit911.1 unwind label %bb.do

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit911.1: ; preds = %bb.du, %bb.dt, %bb.ds
  %i.oc = getelementptr inbounds nuw i8, ptr %63, i64 8 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %63, i64 16
  %i.oe = getelementptr inbounds nuw i8, ptr %66, i64 8 ; 6 uses
  %i.of = getelementptr inbounds nuw i8, ptr %66, i64 16 ; 5 uses
  %i.og = getelementptr inbounds nuw i8, ptr %62, i64 8 ; 3 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %62, i64 16
  %i.oi = getelementptr inbounds nuw i8, ptr %62, i64 32 ; 3 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %62, i64 40
  %i.ok = getelementptr inbounds nuw i8, ptr %62, i64 24
  %i.ol = getelementptr inbounds nuw i8, ptr %62, i64 24 ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %62, i64 32
  %i.on = getelementptr inbounds nuw i8, ptr %62, i64 40
  %i.oo = getelementptr inbounds nuw i8, ptr %62, i64 8
  %i.op = getelementptr inbounds nuw i8, ptr %62, i64 16
  br label %bb.dx

bb.dv:                                            ; preds = %bb.dq, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit911, %bb.dk, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit904
  %i.oq = landingpad { ptr, i32 }
          cleanup
  br label %bb.lv

bb.dw:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit908.1, %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit908
  %i.or = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %58) #24
  br label %bb.lv

bb.dx:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1036, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit911.1
  %.not2295 = phi i1 [ true, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit911.1 ], [ false, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1036 ]
  %indvars.iv.sroa.phi = phi ptr [ %62, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit911.1 ], [ %indvars.iv.sroa.gep2801, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1036 ]
  %indvars.iv = phi i64 [ 0, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit911.1 ], [ 1, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1036 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !713)
  %i.os = load ptr, ptr %2, align 8, !tbaa !36, !noalias !713 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 8
  %i.ou = load i64, ptr %i.ot, align 8, !noalias !713
  %i.ov = trunc i64 %i.ou to i32
  %i.ow = and i32 %i.ov, 1023                     ; 2 uses
  %i.ox = icmp eq i32 %i.ow, 1023
  %i.oy = select i1 %i.ox, i32 -1, i32 %i.ow
  %i.oz = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.oy)
          to label %.noexc913 unwind label %bb.en

.noexc913:                                        ; preds = %bb.dx
  %i.pa = icmp eq i32 %i.oz, 2
  %i.pb = zext i1 %i.pa to i64
  %i.pc = getelementptr inbounds nuw i8, ptr %i.os, i64 24
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr %i.pc, i64 %indvars.iv
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.pd, i64 %i.pb
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !35, !noalias !713 ; 5 uses
  store ptr %i.pf, ptr %60, align 8, !tbaa !36, !alias.scope !713
  %i.pg = load i64, ptr %i.pf, align 8, !noalias !713 ; 3 uses
  %i.ph = lshr i64 %i.pg, 40
  %i.pi = trunc nuw nsw i64 %i.ph to i32
  %i.pj = and i32 %i.pi, 1048575                  ; 3 uses
  %i.pk = icmp samesign ult i32 %i.pj, 1048574
  br i1 %i.pk, label %bb.dy, label %bb.dz, !prof !39

bb.dy:                                            ; preds = %.noexc913
  %i.pl = add nuw nsw i32 %i.pj, 1
  %i.pm = zext nneg i32 %i.pl to i64
  %i.pn = shl nuw nsw i64 %i.pm, 40
  %i.po = and i64 %i.pg, -1152920405095219201
  %i.pp = or i64 %i.pn, %i.po
  store i64 %i.pp, ptr %i.pf, align 8, !noalias !713
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit915

bb.dz:                                            ; preds = %.noexc913
  %i.pq = icmp eq i32 %i.pj, 1048574
  br i1 %i.pq, label %bb.ea, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit915, !prof !38

bb.ea:                                            ; preds = %bb.dz
  %i.pr = or i64 %i.pg, 1152920405095219200
  store i64 %i.pr, ptr %i.pf, align 8, !noalias !713
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.pf)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit915 unwind label %bb.en

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit915: ; preds = %bb.dz, %bb.dy, %bb.ea
  invoke void @_ZN4cvc58internal6theory7strings13StringsEntail22checkHomogeneousStringENS0_12NodeTemplateILb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %59, ptr noundef nonnull align 8 %60)
          to label %bb.eb unwind label %bb.eo

bb.eb:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit915
  %i.ps = load ptr, ptr %60, align 8, !tbaa !36   ; 3 uses
  %i.pt = load i64, ptr %i.ps, align 8            ; 3 uses
  %i.pu = and i64 %i.pt, 1152920405095219200
  %.not.i.i916 = icmp eq i64 %i.pu, 1152920405095219200
  br i1 %.not.i.i916, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit918, label %bb.ec, !prof !38

bb.ec:                                            ; preds = %bb.eb
  %i.pv = add i64 %i.pt, 1152920405095219200
  %i.pw = and i64 %i.pv, 1152920405095219200      ; 2 uses
  %i.px = and i64 %i.pt, -1152920405095219201
  %i.py = or disjoint i64 %i.pw, %i.px
  store i64 %i.py, ptr %i.ps, align 8
  %i.pz = icmp eq i64 %i.pw, 0
  br i1 %i.pz, label %bb.ed, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit918, !prof !38

bb.ed:                                            ; preds = %bb.ec
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ps)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit918 unwind label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.qa = landingpad { ptr, i32 }
          catch ptr null
  %i.qb = extractvalue { ptr, i32 } %i.qa, 0
  call void @__clang_call_terminate(ptr %i.qb) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit918: ; preds = %bb.eb, %bb.ec, %bb.ed
  %i.qc = load ptr, ptr %59, align 8, !tbaa !36
  %i.qd = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.qe = icmp eq i8 %i.qd, 0
  br i1 %i.qe, label %bb.ef, label %bb.ej, !prof !34

bb.ef:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit918
  %i.qf = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  %.not.i.i919 = icmp eq i32 %i.qf, 0
  br i1 %.not.i.i919, label %bb.ej, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.qg = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %bb.eh unwind label %bb.ei     ; 3 uses

bb.eh:                                            ; preds = %bb.eg
  store i64 1152920405095219200, ptr %i.qg, align 8
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qh, i8 0, i64 16, i1 false)
  store ptr %i.qg, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !35
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  br label %bb.ej

bb.ei:                                            ; preds = %bb.eg
  %i.qi = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  br label %.body920

bb.ej:                                            ; preds = %bb.eh, %bb.ef, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit918
  %i.qj = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !35
  %i.qk = icmp eq ptr %i.qc, %i.qj
  br i1 %i.qk, label %.thread2063, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.ql = load ptr, ptr %59, align 8, !tbaa !36
  store ptr %i.ql, ptr %61, align 8, !tbaa !140
  %i.qm = invoke noundef zeroext i1 @_ZN4cvc58internal6theory7strings4Word7isEmptyENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 %61)
          to label %bb.el unwind label %bb.ep

bb.el:                                            ; preds = %bb.ek
  br i1 %i.qm, label %.thread2063, label %bb.em

bb.em:                                            ; preds = %bb.el
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %62, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  store i64 0, ptr %.sroa.0, align 16
  store i64 0, ptr %.sroa.6, align 8
  br label %bb.eq

bb.en:                                            ; preds = %bb.ea, %bb.dx
  %i.qn = landingpad { ptr, i32 }
          cleanup
  br label %bb.kx

bb.eo:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit915
  %i.qo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %60) #24
  br label %bb.kx

bb.ep:                                            ; preds = %bb.ek
  %i.qp = landingpad { ptr, i32 }
          cleanup
  br label %.body920

bb.eq:                                            ; preds = %bb.em, %._crit_edge2275
  %i.qq = phi i1 [ true, %bb.em ], [ false, %._crit_edge2275 ]
  %.05382290.sroa.phi = phi ptr [ %.sroa.0, %bb.em ], [ %.sroa.6, %._crit_edge2275 ] ; 2 uses
  %.05382290.sroa.phi2799 = phi ptr [ %62, %bb.em ], [ %.05382290.sroa.gep2800, %._crit_edge2275 ] ; 3 uses
  %.05382290.sroa.phi2802 = phi ptr [ %57, %bb.em ], [ %.05382290.sroa.gep2804, %._crit_edge2275 ] ; 3 uses
  %i.qr = load ptr, ptr %.05382290.sroa.phi2802, align 8, !tbaa !135 ; 6 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %.05382290.sroa.phi2802, i64 8 ; 2 uses
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !135 ; 6 uses
  %.not.i.i922 = icmp eq ptr %i.qr, %i.qt
  br i1 %.not.i.i922, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.qu = ptrtoint ptr %i.qt to i64
  %i.qv = ptrtoint ptr %i.qr to i64
  %i.qw = sub i64 %i.qu, %i.qv                    ; 2 uses
  %i.qx = ashr exact i64 %i.qw, 3
  %i.qy = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.qx, i1 true)
  %i.qz = shl nuw nsw i64 %i.qy, 1
  %i.ra = xor i64 %i.qz, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_(ptr %i.qr, ptr %i.qt, i64 noundef %i.ra)
          to label %.noexc923 unwind label %.loopexit.split-lp

.noexc923:                                        ; preds = %bb.er
  %i.rb = icmp sgt i64 %i.qw, 128
  br i1 %i.rb, label %bb.es, label %bb.et

bb.es:                                            ; preds = %.noexc923
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qr, i64 128 ; 3 uses
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_(ptr %i.qr, ptr nonnull %i.rc)
          to label %.noexc924 unwind label %.loopexit.split-lp

.noexc924:                                        ; preds = %bb.es
  %.not4.i.i.i.i = icmp eq ptr %i.rc, %i.qt
  br i1 %.not4.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc924, %.noexc925
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.rd, %.noexc925 ], [ %i.rc, %.noexc924 ] ; 2 uses
  invoke void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_(ptr nonnull %.sroa.0.05.i.i.i.i)
          to label %.noexc925 unwind label %.loopexit2127

.noexc925:                                        ; preds = %.lr.ph.i.i.i.i
  %i.rd = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.rd, %i.qt
  br i1 %.not.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !3

bb.et:                                            ; preds = %.noexc923
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_(ptr %i.qr, ptr %i.qt)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit unwind label %.loopexit.split-lp

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit: ; preds = %.noexc925, %.noexc924, %bb.eq, %bb.et
  %i.re = load ptr, ptr %.05382290.sroa.phi2802, align 8, !tbaa !135 ; 2 uses
  %i.rf = load ptr, ptr %i.qs, align 8, !tbaa !135 ; 2 uses
  %.not21232272 = icmp eq ptr %i.re, %i.rf
  br i1 %.not21232272, label %._crit_edge2275, label %.lr.ph2274

.lr.ph2274:                                       ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit
  %i.rg = getelementptr inbounds nuw i8, ptr %.05382290.sroa.phi2799, i64 8 ; 3 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %.05382290.sroa.phi2799, i64 16
  br label %bb.eu

.loopexit2127:                                    ; preds = %.lr.ph.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.km

.loopexit.split-lp:                               ; preds = %bb.er, %bb.es, %bb.et
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.km

bb.eu:                                            ; preds = %.lr.ph2274, %.thread2064
  %.sroa.02054.02273 = phi ptr [ %i.re, %.lr.ph2274 ], [ %i.vj, %.thread2064 ] ; 5 uses
  %i.ri = invoke noundef zeroext i1 @_ZNK4cvc58internal12NodeTemplateILb1EE7isConstEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.02054.02273)
          to label %bb.ev unwind label %bb.ey

bb.ev:                                            ; preds = %bb.eu
  br i1 %i.ri, label %bb.ew, label %bb.ga

bb.ew:                                            ; preds = %bb.ev
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #24
  %i.rj = load ptr, ptr %.sroa.02054.02273, align 8, !tbaa !36
  store ptr %i.rj, ptr %64, align 8, !tbaa !140
  invoke void @_ZN4cvc58internal6theory7strings4Word8getCharsENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.97") align 8 %63, ptr noundef nonnull align 8 %64)
          to label %bb.ex unwind label %bb.ez

bb.ex:                                            ; preds = %bb.ew
  %i.rk = load ptr, ptr %63, align 8, !tbaa !135  ; 2 uses
  %i.rl = load ptr, ptr %i.oc, align 8, !tbaa !135 ; 2 uses
  %.not21242258 = icmp eq ptr %i.rk, %i.rl
  br i1 %.not21242258, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit938.thread, label %.lr.ph2262

.lr.ph2262:                                       ; preds = %bb.ex
  %i.rm = load ptr, ptr %59, align 8, !tbaa !36
  br label %bb.fa

bb.ey:                                            ; preds = %bb.gf, %bb.ge, %bb.eu
  %i.rn = landingpad { ptr, i32 }
          cleanup
  br label %bb.km

bb.ez:                                            ; preds = %bb.ew
  %i.ro = landingpad { ptr, i32 }
          cleanup
  br label %bb.fz

bb.fa:                                            ; preds = %.lr.ph2262, %bb.ft
  %.sroa.02050.02259 = phi ptr [ %i.rk, %.lr.ph2262 ], [ %i.tz, %bb.ft ] ; 2 uses
  %i.rp = load ptr, ptr %.sroa.02050.02259, align 8, !tbaa !36
  %.not2125 = icmp eq ptr %i.rp, %i.rm
  br i1 %.not2125, label %bb.ft, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.rq = load ptr, ptr %2, align 8, !tbaa !36    ; 5 uses
  store ptr %i.rq, ptr %65, align 8, !tbaa !36
  %i.rr = load i64, ptr %i.rq, align 8            ; 3 uses
  %i.rs = lshr i64 %i.rr, 40
  %i.rt = trunc nuw nsw i64 %i.rs to i32
  %i.ru = and i32 %i.rt, 1048575                  ; 3 uses
  %i.rv = icmp samesign ult i32 %i.ru, 1048574
  br i1 %i.rv, label %bb.fc, label %bb.fd, !prof !39

bb.fc:                                            ; preds = %bb.fb
  %i.rw = add nuw nsw i32 %i.ru, 1
  %i.rx = zext nneg i32 %i.rw to i64
  %i.ry = shl nuw nsw i64 %i.rx, 40
  %i.rz = and i64 %i.rr, -1152920405095219201
  %i.sa = or i64 %i.ry, %i.rz
  store i64 %i.sa, ptr %i.rq, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit928

bb.fd:                                            ; preds = %bb.fb
  %i.sb = icmp eq i32 %i.ru, 1048574
  br i1 %i.sb, label %bb.fe, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit928, !prof !38

bb.fe:                                            ; preds = %bb.fd
  %i.sc = or i64 %i.rr, 1152920405095219200
  store i64 %i.sc, ptr %i.rq, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.rq)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit928 unwind label %bb.fr

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit928: ; preds = %bb.fd, %bb.fc, %bb.fe
  %i.sd = load ptr, ptr %i.hi, align 8, !tbaa !36 ; 7 uses
  %i.se = load i64, ptr %i.sd, align 8            ; 4 uses
  %i.sf = lshr i64 %i.se, 40
  %i.sg = trunc nuw nsw i64 %i.sf to i32
  %i.sh = and i32 %i.sg, 1048575                  ; 3 uses
  %i.si = icmp samesign ult i32 %i.sh, 1048574
  br i1 %i.si, label %bb.ff, label %bb.fg, !prof !39

bb.ff:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit928
  %i.sj = add nuw nsw i32 %i.sh, 1
  %i.sk = zext nneg i32 %i.sj to i64
  %i.sl = shl nuw nsw i64 %i.sk, 40
  %i.sm = and i64 %i.se, -1152920405095219201
  %i.sn = or i64 %i.sl, %i.sm                     ; 2 uses
  store i64 %i.sn, ptr %i.sd, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit930

bb.fg:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit928
  %i.so = icmp eq i32 %i.sh, 1048574
  br i1 %i.so, label %bb.fh, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit930, !prof !38

bb.fh:                                            ; preds = %bb.fg
  %i.sp = or i64 %i.se, 1152920405095219200
  store i64 %i.sp, ptr %i.sd, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.sd)
          to label %._ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit930_crit_edge unwind label %bb.fs

._ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit930_crit_edge: ; preds = %bb.fh
  %.pre2386.a = load i64, ptr %i.sd, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit930

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit930: ; preds = %._ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit930_crit_edge, %bb.ff, %bb.fg
  %i.sq = phi i64 [ %.pre2386.a, %._ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit930_crit_edge ], [ %i.sn, %bb.ff ], [ %i.se, %bb.fg ] ; 3 uses
  %i.sr = and i64 %i.sq, 1152920405095219200
  %.not.i.i931 = icmp eq i64 %i.sr, 1152920405095219200
  br i1 %.not.i.i931, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit933, label %bb.fi, !prof !38

bb.fi:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit930
  %i.ss = add i64 %i.sq, 1152920405095219200
  %i.st = and i64 %i.ss, 1152920405095219200      ; 2 uses
  %i.su = and i64 %i.sq, -1152920405095219201
  %i.sv = or disjoint i64 %i.st, %i.su
  store i64 %i.sv, ptr %i.sd, align 8
  %i.sw = icmp eq i64 %i.st, 0
  br i1 %i.sw, label %bb.fj, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit933, !prof !38

bb.fj:                                            ; preds = %bb.fi
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.sd)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit933 unwind label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.sx = landingpad { ptr, i32 }
          catch ptr null
  %i.sy = extractvalue { ptr, i32 } %i.sx, 0
  call void @__clang_call_terminate(ptr %i.sy) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit933: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit930, %bb.fi, %bb.fj
  %i.sz = load ptr, ptr %65, align 8, !tbaa !36   ; 3 uses
  %i.ta = load i64, ptr %i.sz, align 8            ; 3 uses
  %i.tb = and i64 %i.ta, 1152920405095219200
  %.not.i.i934 = icmp eq i64 %i.tb, 1152920405095219200
  br i1 %.not.i.i934, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit936, label %bb.fl, !prof !38

bb.fl:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit933
  %i.tc = add i64 %i.ta, 1152920405095219200
  %i.td = and i64 %i.tc, 1152920405095219200      ; 2 uses
  %i.te = and i64 %i.ta, -1152920405095219201
  %i.tf = or disjoint i64 %i.td, %i.te
  store i64 %i.tf, ptr %i.sz, align 8
  %i.tg = icmp eq i64 %i.td, 0
  br i1 %i.tg, label %bb.fm, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit936, !prof !38

bb.fm:                                            ; preds = %bb.fl
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.sz)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit936 unwind label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.th = landingpad { ptr, i32 }
          catch ptr null
  %i.ti = extractvalue { ptr, i32 } %i.th, 0
  call void @__clang_call_terminate(ptr %i.ti) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit936: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit933, %bb.fl, %bb.fm
  %i.tj = load ptr, ptr %i.hi, align 8, !tbaa !36 ; 5 uses
  store ptr %i.tj, ptr %0, align 8, !tbaa !36
  %i.tk = load i64, ptr %i.tj, align 8            ; 3 uses
  %i.tl = lshr i64 %i.tk, 40
  %i.tm = trunc nuw nsw i64 %i.tl to i32
  %i.tn = and i32 %i.tm, 1048575                  ; 3 uses
  %i.to = icmp samesign ult i32 %i.tn, 1048574
  br i1 %i.to, label %bb.fo, label %bb.fp, !prof !39

bb.fo:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit936
  %i.tp = add nuw nsw i32 %i.tn, 1
  %i.tq = zext nneg i32 %i.tp to i64
  %i.tr = shl nuw nsw i64 %i.tq, 40
  %i.ts = and i64 %i.tk, -1152920405095219201
  %i.tt = or i64 %i.tr, %i.ts
  store i64 %i.tt, ptr %i.tj, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit938.thread

bb.fp:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit936
  %i.tu = icmp eq i32 %i.tn, 1048574
  br i1 %i.tu, label %bb.fq, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit938.thread, !prof !38

bb.fq:                                            ; preds = %bb.fp
  %i.tv = or i64 %i.tk, 1152920405095219200
  store i64 %i.tv, ptr %i.tj, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.tj)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit938.thread unwind label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.fe
  %i.tw = landingpad { ptr, i32 }
          cleanup
  br label %bb.fu

bb.fs:                                            ; preds = %bb.fh
  %i.tx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %65) #24
  br label %bb.fu

bb.ft:                                            ; preds = %bb.fa
  %224 = load i64, ptr %.05382290.sroa.phi, align 8, !tbaa !122
  %i.ty = add i64 %224, 1
  store i64 %i.ty, ptr %.05382290.sroa.phi, align 8, !tbaa !122
  %i.tz = getelementptr inbounds nuw i8, ptr %.sroa.02050.02259, i64 8 ; 2 uses
  %.not2124 = icmp eq ptr %i.tz, %i.rl
  br i1 %.not2124, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit938.thread, label %bb.fa

bb.fu:                                            ; preds = %bb.fs, %bb.fr
  %.pn731 = phi { ptr, i32 } [ %i.tw, %bb.fr ], [ %i.tx, %bb.fs ]
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %63) #24
  br label %bb.fz

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit938.thread: ; preds = %bb.ft, %bb.ex, %bb.fq, %bb.fo, %bb.fp
  %.not21242145 = phi i1 [ false, %bb.fq ], [ false, %bb.fp ], [ false, %bb.fo ], [ true, %bb.ex ], [ true, %bb.ft ]
  %spec.store.select = phi i32 [ 1, %bb.fq ], [ 1, %bb.fp ], [ 1, %bb.fo ], [ 0, %bb.ex ], [ 0, %bb.ft ]
  %i.ua = load ptr, ptr %63, align 8, !tbaa !141  ; 3 uses
  %i.ub = load ptr, ptr %i.oc, align 8, !tbaa !134 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ua, %i.ub
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit938.thread, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.um, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i ], [ %i.ua, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit938.thread ] ; 2 uses
  %i.uc = load ptr, ptr %.05.i.i.i, align 8, !tbaa !36 ; 3 uses
  %i.ud = load i64, ptr %i.uc, align 8            ; 3 uses
  %i.ue = and i64 %i.ud, 1152920405095219200
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ue, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, label %bb.fv, !prof !38

bb.fv:                                            ; preds = %.lr.ph.i.i.i
  %i.uf = add i64 %i.ud, 1152920405095219200
  %i.ug = and i64 %i.uf, 1152920405095219200      ; 2 uses
  %i.uh = and i64 %i.ud, -1152920405095219201
  %i.ui = or disjoint i64 %i.ug, %i.uh
  store i64 %i.ui, ptr %i.uc, align 8
  %i.uj = icmp eq i64 %i.ug, 0
  br i1 %i.uj, label %bb.fw, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, !prof !38

bb.fw:                                            ; preds = %bb.fv
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.uc)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i unwind label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.uk = landingpad { ptr, i32 }
          catch ptr null
  %i.ul = extractvalue { ptr, i32 } %i.uk, 0
  call void @__clang_call_terminate(ptr %i.ul) #26
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i: ; preds = %bb.fw, %bb.fv, %.lr.ph.i.i.i
  %i.um = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.um, %i.ub
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !5

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %63, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit938.thread
  %i.un = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.ua, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit938.thread ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.un, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, label %bb.fy

bb.fy:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i
  %i.uo = load ptr, ptr %i.od, align 8, !tbaa !136
  %i.up = ptrtoint ptr %i.uo to i64
  %i.uq = ptrtoint ptr %i.un to i64
  %i.ur = sub i64 %i.up, %i.uq
  call void @_ZdlPvm(ptr noundef nonnull %i.un, i64 noundef %i.ur) #27
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, %bb.fy
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #24
  br i1 %.not21242145, label %.thread2064, label %.loopexit

bb.fz:                                            ; preds = %bb.fu, %bb.ez
  %.pn731.pn = phi { ptr, i32 } [ %.pn731, %bb.fu ], [ %i.ro, %bb.ez ]
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #24
  br label %bb.km

bb.ga:                                            ; preds = %bb.ev
  %i.us = load ptr, ptr %i.rg, align 8, !tbaa !134 ; 3 uses
  %i.ut = load ptr, ptr %i.rh, align 8, !tbaa !136
  %.not.i939 = icmp eq ptr %i.us, %i.ut
  br i1 %.not.i939, label %bb.gf, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.uu = load ptr, ptr %.sroa.02054.02273, align 8, !tbaa !36 ; 5 uses
  store ptr %i.uu, ptr %i.us, align 8, !tbaa !36
  %i.uv = load i64, ptr %i.uu, align 8            ; 3 uses
  %i.uw = lshr i64 %i.uv, 40
  %i.ux = trunc nuw nsw i64 %i.uw to i32
  %i.uy = and i32 %i.ux, 1048575                  ; 3 uses
  %i.uz = icmp samesign ult i32 %i.uy, 1048574
  br i1 %i.uz, label %bb.gc, label %bb.gd, !prof !39

bb.gc:                                            ; preds = %bb.gb
  %i.va = add nuw nsw i32 %i.uy, 1
  %i.vb = zext nneg i32 %i.va to i64
  %i.vc = shl nuw nsw i64 %i.vb, 40
  %i.vd = and i64 %i.uv, -1152920405095219201
  %i.ve = or i64 %i.vc, %i.vd
  store i64 %i.ve, ptr %i.uu, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i

bb.gd:                                            ; preds = %bb.gb
  %i.vf = icmp eq i32 %i.uy, 1048574
  br i1 %i.vf, label %bb.ge, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i, !prof !38

bb.ge:                                            ; preds = %bb.gd
  %i.vg = or i64 %i.uv, 1152920405095219200
  store i64 %i.vg, ptr %i.uu, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.uu)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i unwind label %bb.ey

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i: ; preds = %bb.ge, %bb.gd, %bb.gc
  %i.vh = load ptr, ptr %i.rg, align 8, !tbaa !134
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 8
  store ptr %i.vi, ptr %i.rg, align 8, !tbaa !134
  br label %.thread2064

bb.gf:                                            ; preds = %bb.ga
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %.05382290.sroa.phi2799, ptr %i.us, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.02054.02273)
          to label %.thread2064 unwind label %bb.ey

.thread2064:                                      ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i, %bb.gf, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit
  %i.vj = getelementptr inbounds nuw i8, ptr %.sroa.02054.02273, i64 8 ; 2 uses
  %.not2123 = icmp eq ptr %i.vj, %i.rf
  br i1 %.not2123, label %._crit_edge2275, label %bb.eu

._crit_edge2275:                                  ; preds = %.thread2064, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit
  br i1 %i.qq, label %bb.eq, label %bb.gg, !llvm.loop !581

bb.gg:                                            ; preds = %._crit_edge2275
  %.sroa.6.0..sroa.6.8. = load i64, ptr %.sroa.6, align 8, !tbaa !122 ; 4 uses
  %.sroa.0.0..sroa.0.0. = load i64, ptr %.sroa.0, align 16, !tbaa !122 ; 4 uses
  %i.vk = call i64 @llvm.umin.i64(i64 %.sroa.6.0..sroa.6.8., i64 %.sroa.0.0..sroa.0.0.) ; 2 uses
  %.not744.not = icmp ugt i64 %.sroa.0.0..sroa.0.0., %.sroa.6.0..sroa.6.8.
  br i1 %.not744.not, label %bb.gk, label %bb.hf

bb.gh:                                            ; preds = %bb.ht
  %i.vl = add nuw nsw i32 %i.zx, 1
  %i.vm = zext nneg i32 %i.vl to i64
  %i.vn = shl nuw nsw i64 %i.vm, 40
  %i.vo = and i64 %i.zu, -1152920405095219201
  %i.vp = or i64 %i.vn, %i.vo
  store i64 %i.vp, ptr %i.zt, align 8
  br label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit

bb.gi:                                            ; preds = %bb.ht
  %i.vq = icmp eq i32 %i.zx, 1048574
  br i1 %i.vq, label %bb.gj, label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit, !prof !38

bb.gj:                                            ; preds = %bb.gi
  %i.vr = or i64 %i.zu, 1152920405095219200
  store i64 %i.vr, ptr %i.zt, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.zt)
          to label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit unwind label %bb.jm

bb.gk:                                            ; preds = %bb.gg
  %i.vs = sub i64 %.sroa.0.0..sroa.0.0., %i.vk    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #24
  %i.vt = icmp ugt i64 %i.vs, 1152921504606846975
  br i1 %i.vt, label %bb.gl, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

bb.gl:                                            ; preds = %bb.hg, %bb.gk
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.116) #29
          to label %.noexc945 unwind label %.loopexit.split-lp2129

.noexc945:                                        ; preds = %bb.gl
  unreachable

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %bb.gk
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %66, i8 0, i64 24, i1 false)
  %i.vu = shl nuw nsw i64 %i.vs, 3
  %i.vv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vu) #25
          to label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEC2EmRKS4_.exit.i unwind label %.loopexit2128 ; 4 uses

_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEC2EmRKS4_.exit.i: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  store ptr %i.vv, ptr %66, align 8, !tbaa !141
  store ptr %i.vv, ptr %i.oe, align 8, !tbaa !134
  %i.vw = getelementptr inbounds nuw [8 x i8], ptr %i.vv, i64 %i.vs
  store ptr %i.vw, ptr %i.of, align 8, !tbaa !136
  %i.vx = invoke noundef ptr @_ZSt18__do_uninit_fill_nIPN4cvc58internal12NodeTemplateILb1EEEmS3_ET_S5_T0_RKT1_(ptr noundef nonnull %i.vv, i64 noundef %i.vs, ptr noundef nonnull align 8 dereferenceable(8) %59)
          to label %bb.go unwind label %bb.gm

bb.gm:                                            ; preds = %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEC2EmRKS4_.exit.i.1, %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEC2EmRKS4_.exit.i
  %i.vy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vz = load ptr, ptr %66, align 8, !tbaa !141  ; 3 uses
  %.not.i.i.i944 = icmp eq ptr %i.vz, null
  br i1 %.not.i.i.i944, label %.body947, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.wa = load ptr, ptr %i.of, align 8, !tbaa !136
  %i.wb = ptrtoint ptr %i.wa to i64
  %i.wc = ptrtoint ptr %i.vz to i64
  %i.wd = sub i64 %i.wb, %i.wc
  call void @_ZdlPvm(ptr noundef nonnull %i.vz, i64 noundef %i.wd) #27
  br label %.body947

bb.go:                                            ; preds = %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEC2EmRKS4_.exit.i
  store ptr %i.vx, ptr %i.oe, align 8, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #24
  invoke void @_ZN4cvc58internal6theory7strings4Word13mkWordFlattenERKSt6vectorINS0_12NodeTemplateILb1EEESaIS6_EE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %67, ptr noundef nonnull align 8 dereferenceable(24) %66)
          to label %bb.gp unwind label %bb.hc

bb.gp:                                            ; preds = %bb.go
  %i.we = load ptr, ptr %i.og, align 8, !tbaa !134 ; 3 uses
  %i.wf = load ptr, ptr %i.oh, align 16, !tbaa !136
  %.not.i.i949 = icmp eq ptr %i.we, %i.wf
  br i1 %.not.i.i949, label %bb.gu, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.wg = load ptr, ptr %67, align 8, !tbaa !36   ; 5 uses
  store ptr %i.wg, ptr %i.we, align 8, !tbaa !36
  %i.wh = load i64, ptr %i.wg, align 8            ; 3 uses
  %i.wi = lshr i64 %i.wh, 40
  %i.wj = trunc nuw nsw i64 %i.wi to i32
  %i.wk = and i32 %i.wj, 1048575                  ; 3 uses
  %i.wl = icmp samesign ult i32 %i.wk, 1048574
  br i1 %i.wl, label %bb.gr, label %bb.gs, !prof !39

bb.gr:                                            ; preds = %bb.gq
  %i.wm = add nuw nsw i32 %i.wk, 1
  %i.wn = zext nneg i32 %i.wm to i64
  %i.wo = shl nuw nsw i64 %i.wn, 40
  %i.wp = and i64 %i.wh, -1152920405095219201
  %i.wq = or i64 %i.wo, %i.wp
  store i64 %i.wq, ptr %i.wg, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i

bb.gs:                                            ; preds = %bb.gq
  %i.wr = icmp eq i32 %i.wk, 1048574
  br i1 %i.wr, label %bb.gt, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i, !prof !38

bb.gt:                                            ; preds = %bb.gs
  %i.ws = or i64 %i.wh, 1152920405095219200
  store i64 %i.ws, ptr %i.wg, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.wg)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i unwind label %bb.hd

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i: ; preds = %bb.gt, %bb.gs, %bb.gr
  %i.wt = load ptr, ptr %i.og, align 8, !tbaa !134
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 8
  store ptr %i.wu, ptr %i.og, align 8, !tbaa !134
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit

bb.gu:                                            ; preds = %bb.gp
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %62, ptr %i.we, ptr noundef nonnull align 8 dereferenceable(8) %67)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit unwind label %bb.hd

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i, %bb.gu
  %i.wv = load ptr, ptr %67, align 8, !tbaa !36   ; 3 uses
  %i.ww = load i64, ptr %i.wv, align 8            ; 3 uses
  %i.wx = and i64 %i.ww, 1152920405095219200
  %.not.i.i952 = icmp eq i64 %i.wx, 1152920405095219200
  br i1 %.not.i.i952, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit954, label %bb.gv, !prof !38

bb.gv:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit
  %i.wy = add i64 %i.ww, 1152920405095219200
  %i.wz = and i64 %i.wy, 1152920405095219200      ; 2 uses
  %i.xa = and i64 %i.ww, -1152920405095219201
  %i.xb = or disjoint i64 %i.wz, %i.xa
  store i64 %i.xb, ptr %i.wv, align 8
  %i.xc = icmp eq i64 %i.wz, 0
  br i1 %i.xc, label %bb.gw, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit954, !prof !38

bb.gw:                                            ; preds = %bb.gv
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.wv)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit954 unwind label %bb.gx

bb.gx:                                            ; preds = %bb.hp, %bb.gw
  %i.xd = landingpad { ptr, i32 }
          catch ptr null
  %i.xe = extractvalue { ptr, i32 } %i.xd, 0
  call void @__clang_call_terminate(ptr %i.xe) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit954: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit, %bb.gv, %bb.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #24
  %i.xf = load ptr, ptr %66, align 8, !tbaa !141  ; 3 uses
  %i.xg = load ptr, ptr %i.oe, align 8, !tbaa !134 ; 2 uses
  %.not4.i.i.i955 = icmp eq ptr %i.xf, %i.xg
  br i1 %.not4.i.i.i955, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i963, label %.lr.ph.i.i.i956

.lr.ph.i.i.i956:                                  ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit954, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i959
  %.05.i.i.i957 = phi ptr [ %i.xq, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i959 ], [ %i.xf, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit954 ] ; 2 uses
  %i.xh = load ptr, ptr %.05.i.i.i957, align 8, !tbaa !36 ; 3 uses
  %i.xi = load i64, ptr %i.xh, align 8            ; 3 uses
  %i.xj = and i64 %i.xi, 1152920405095219200
  %.not.i.i.i.i.i.i958 = icmp eq i64 %i.xj, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i958, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i959, label %bb.gy, !prof !38

bb.gy:                                            ; preds = %.lr.ph.i.i.i956
  %i.xk = add i64 %i.xi, 1152920405095219200
  %i.xl = and i64 %i.xk, 1152920405095219200      ; 2 uses
  %i.xm = and i64 %i.xi, -1152920405095219201
  %i.xn = or disjoint i64 %i.xl, %i.xm
  store i64 %i.xn, ptr %i.xh, align 8
  %i.xo = icmp eq i64 %i.xl, 0
  br i1 %i.xo, label %bb.gz, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i959, !prof !38

bb.gz:                                            ; preds = %bb.gy
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.xh)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i959 unwind label %.loopexit2326

.loopexit2326:                                    ; preds = %bb.gz
  %lpad.loopexit2328 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ha

.loopexit.split-lp2327:                           ; preds = %bb.hr
  %lpad.loopexit.split-lp2329 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ha

bb.ha:                                            ; preds = %.loopexit.split-lp2327, %.loopexit2326
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit2328, %.loopexit2326 ], [ %lpad.loopexit.split-lp2329, %.loopexit.split-lp2327 ]
  %i.xp = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.xp) #26
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i959: ; preds = %bb.gz, %bb.gy, %.lr.ph.i.i.i956
  %i.xq = getelementptr inbounds nuw i8, ptr %.05.i.i.i957, i64 8 ; 2 uses
  %.not.i.i.i960 = icmp eq ptr %i.xq, %i.xg
  br i1 %.not.i.i.i960, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i961, label %.lr.ph.i.i.i956, !llvm.loop !5

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i961: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i959
  %.pr.i962 = load ptr, ptr %66, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i963

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i963: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i961, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit954
  %i.xr = phi ptr [ %.pr.i962, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i961 ], [ %i.xf, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit954 ] ; 3 uses
  %.not.i.i1.i964 = icmp eq ptr %i.xr, null
  br i1 %.not.i.i1.i964, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit966, label %bb.hb

bb.hb:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i963
  %i.xs = load ptr, ptr %i.of, align 8, !tbaa !136
  %i.xt = ptrtoint ptr %i.xs to i64
  %i.xu = ptrtoint ptr %i.xr to i64
  %i.xv = sub i64 %i.xt, %i.xu
  call void @_ZdlPvm(ptr noundef nonnull %i.xr, i64 noundef %i.xv) #27
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit966

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit966: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i963, %bb.hb
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #24
  br label %bb.hf

.loopexit2128:                                    ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.1, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %lpad.loopexit2130 = landingpad { ptr, i32 }
          cleanup
  br label %.body947

.loopexit.split-lp2129:                           ; preds = %bb.gl
  %lpad.loopexit.split-lp2131 = landingpad { ptr, i32 }
          cleanup
  br label %.body947

bb.hc:                                            ; preds = %bb.hh, %bb.go
  %i.xw = landingpad { ptr, i32 }
          cleanup
  br label %bb.he

bb.hd:                                            ; preds = %bb.hn, %bb.hl, %bb.gu, %bb.gt
  %i.xx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %67) #24
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %bb.hc
  %.pn745 = phi { ptr, i32 } [ %i.xx, %bb.hd ], [ %i.xw, %bb.hc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #24
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %66) #24
  br label %.body947

.body947:                                         ; preds = %.loopexit2128, %.loopexit.split-lp2129, %bb.gn, %bb.gm, %bb.he
  %.pn745.pn = phi { ptr, i32 } [ %.pn745, %bb.he ], [ %i.vy, %bb.gm ], [ %i.vy, %bb.gn ], [ %lpad.loopexit2130, %.loopexit2128 ], [ %lpad.loopexit.split-lp2131, %.loopexit.split-lp2129 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #24
  br label %bb.km

bb.hf:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit966, %bb.gg
  %.not744.1.not = icmp ugt i64 %.sroa.6.0..sroa.6.8., %.sroa.0.0..sroa.0.0.
  br i1 %.not744.1.not, label %bb.hg, label %bb.ht

bb.hg:                                            ; preds = %bb.hf
  %i.xy = sub i64 %.sroa.6.0..sroa.6.8., %i.vk    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #24
  %i.xz = icmp ugt i64 %i.xy, 1152921504606846975
  br i1 %i.xz, label %bb.gl, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.1

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.1: ; preds = %bb.hg
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %66, i8 0, i64 24, i1 false)
  %i.ya = shl nuw nsw i64 %i.xy, 3
  %i.yb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ya) #25
          to label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEC2EmRKS4_.exit.i.1 unwind label %.loopexit2128 ; 4 uses

_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEC2EmRKS4_.exit.i.1: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.1
  store ptr %i.yb, ptr %66, align 8, !tbaa !141
  store ptr %i.yb, ptr %i.oe, align 8, !tbaa !134
  %i.yc = getelementptr inbounds nuw [8 x i8], ptr %i.yb, i64 %i.xy
  store ptr %i.yc, ptr %i.of, align 8, !tbaa !136
  %i.yd = invoke noundef ptr @_ZSt18__do_uninit_fill_nIPN4cvc58internal12NodeTemplateILb1EEEmS3_ET_S5_T0_RKT1_(ptr noundef nonnull %i.yb, i64 noundef %i.xy, ptr noundef nonnull align 8 dereferenceable(8) %59)
          to label %bb.hh unwind label %bb.gm

bb.hh:                                            ; preds = %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEC2EmRKS4_.exit.i.1
  store ptr %i.yd, ptr %i.oe, align 8, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #24
  invoke void @_ZN4cvc58internal6theory7strings4Word13mkWordFlattenERKSt6vectorINS0_12NodeTemplateILb1EEESaIS6_EE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %67, ptr noundef nonnull align 8 dereferenceable(24) %66)
          to label %bb.hi unwind label %bb.hc

bb.hi:                                            ; preds = %bb.hh
  %i.ye = load ptr, ptr %i.oi, align 16, !tbaa !134 ; 3 uses
  %i.yf = load ptr, ptr %i.oj, align 8, !tbaa !136
  %.not.i.i949.1 = icmp eq ptr %i.ye, %i.yf
  br i1 %.not.i.i949.1, label %bb.hn, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.yg = load ptr, ptr %67, align 8, !tbaa !36   ; 5 uses
  store ptr %i.yg, ptr %i.ye, align 8, !tbaa !36
  %i.yh = load i64, ptr %i.yg, align 8            ; 3 uses
  %i.yi = lshr i64 %i.yh, 40
  %i.yj = trunc nuw nsw i64 %i.yi to i32
  %i.yk = and i32 %i.yj, 1048575                  ; 3 uses
  %i.yl = icmp samesign ult i32 %i.yk, 1048574
  br i1 %i.yl, label %bb.hm, label %bb.hk, !prof !39

bb.hk:                                            ; preds = %bb.hj
  %i.ym = icmp eq i32 %i.yk, 1048574
  br i1 %i.ym, label %bb.hl, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i.1, !prof !38

bb.hl:                                            ; preds = %bb.hk
  %i.yn = or i64 %i.yh, 1152920405095219200
  store i64 %i.yn, ptr %i.yg, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.yg)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i.1 unwind label %bb.hd

bb.hm:                                            ; preds = %bb.hj
  %i.yo = add nuw nsw i32 %i.yk, 1
  %i.yp = zext nneg i32 %i.yo to i64
  %i.yq = shl nuw nsw i64 %i.yp, 40
  %i.yr = and i64 %i.yh, -1152920405095219201
  %i.ys = or i64 %i.yq, %i.yr
  store i64 %i.ys, ptr %i.yg, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i.1

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i.1: ; preds = %bb.hm, %bb.hl, %bb.hk
  %i.yt = load ptr, ptr %i.oi, align 16, !tbaa !134
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 8
  store ptr %i.yu, ptr %i.oi, align 16, !tbaa !134
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit.1

bb.hn:                                            ; preds = %bb.hi
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ok, ptr %i.ye, ptr noundef nonnull align 8 dereferenceable(8) %67)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit.1 unwind label %bb.hd

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit.1: ; preds = %bb.hn, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i.1
  %i.yv = load ptr, ptr %67, align 8, !tbaa !36   ; 3 uses
  %i.yw = load i64, ptr %i.yv, align 8            ; 3 uses
  %i.yx = and i64 %i.yw, 1152920405095219200
  %.not.i.i952.1 = icmp eq i64 %i.yx, 1152920405095219200
  br i1 %.not.i.i952.1, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit954.1, label %bb.ho, !prof !38

bb.ho:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit.1
  %i.yy = add i64 %i.yw, 1152920405095219200
  %i.yz = and i64 %i.yy, 1152920405095219200      ; 2 uses
  %i.za = and i64 %i.yw, -1152920405095219201
  %i.zb = or disjoint i64 %i.yz, %i.za
  store i64 %i.zb, ptr %i.yv, align 8
  %i.zc = icmp eq i64 %i.yz, 0
  br i1 %i.zc, label %bb.hp, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit954.1, !prof !38

bb.hp:                                            ; preds = %bb.ho
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.yv)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit954.1 unwind label %bb.gx

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit954.1: ; preds = %bb.hp, %bb.ho, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit.1
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #24
  %i.zd = load ptr, ptr %66, align 8, !tbaa !141  ; 3 uses
  %i.ze = load ptr, ptr %i.oe, align 8, !tbaa !134 ; 2 uses
  %.not4.i.i.i955.1 = icmp eq ptr %i.zd, %i.ze
  br i1 %.not4.i.i.i955.1, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i963.1, label %.lr.ph.i.i.i956.1

.lr.ph.i.i.i956.1:                                ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit954.1, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i959.1
  %.05.i.i.i957.1 = phi ptr [ %i.zn, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i959.1 ], [ %i.zd, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit954.1 ] ; 2 uses
  %i.zf = load ptr, ptr %.05.i.i.i957.1, align 8, !tbaa !36 ; 3 uses
  %i.zg = load i64, ptr %i.zf, align 8            ; 3 uses
  %i.zh = and i64 %i.zg, 1152920405095219200
  %.not.i.i.i.i.i.i958.1 = icmp eq i64 %i.zh, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i958.1, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i959.1, label %bb.hq, !prof !38

bb.hq:                                            ; preds = %.lr.ph.i.i.i956.1
  %i.zi = add i64 %i.zg, 1152920405095219200
  %i.zj = and i64 %i.zi, 1152920405095219200      ; 2 uses
  %i.zk = and i64 %i.zg, -1152920405095219201
  %i.zl = or disjoint i64 %i.zj, %i.zk
  store i64 %i.zl, ptr %i.zf, align 8
  %i.zm = icmp eq i64 %i.zj, 0
  br i1 %i.zm, label %bb.hr, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i959.1, !prof !38

bb.hr:                                            ; preds = %bb.hq
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.zf)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i959.1 unwind label %.loopexit.split-lp2327

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i959.1: ; preds = %bb.hr, %bb.hq, %.lr.ph.i.i.i956.1
  %i.zn = getelementptr inbounds nuw i8, ptr %.05.i.i.i957.1, i64 8 ; 2 uses
  %.not.i.i.i960.1 = icmp eq ptr %i.zn, %i.ze
  br i1 %.not.i.i.i960.1, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i961.1, label %.lr.ph.i.i.i956.1, !llvm.loop !5

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i961.1: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i959.1
  %.pr.i962.1 = load ptr, ptr %66, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i963.1

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i963.1: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i961.1, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit954.1
  %i.zo = phi ptr [ %.pr.i962.1, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i961.1 ], [ %i.zd, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit954.1 ] ; 3 uses
  %.not.i.i1.i964.1 = icmp eq ptr %i.zo, null
  br i1 %.not.i.i1.i964.1, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit966.1, label %bb.hs

bb.hs:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i963.1
  %i.zp = load ptr, ptr %i.of, align 8, !tbaa !136
  %i.zq = ptrtoint ptr %i.zp to i64
  %i.zr = ptrtoint ptr %i.zo to i64
  %i.zs = sub i64 %i.zq, %i.zr
  call void @_ZdlPvm(ptr noundef nonnull %i.zo, i64 noundef %i.zs) #27
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit966.1

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit966.1: ; preds = %bb.hs, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i963.1
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #24
  br label %bb.ht

bb.ht:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit966.1, %bb.hf
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #24
  %i.zt = load ptr, ptr %55, align 8, !tbaa !142  ; 5 uses
  store ptr %i.zt, ptr %69, align 8, !tbaa !142
  %i.zu = load i64, ptr %i.zt, align 8            ; 3 uses
  %i.zv = lshr i64 %i.zu, 40
  %i.zw = trunc nuw nsw i64 %i.zv to i32
  %i.zx = and i32 %i.zw, 1048575                  ; 3 uses
  %i.zy = icmp samesign ult i32 %i.zx, 1048574
  br i1 %i.zy, label %bb.gh, label %bb.gi, !prof !39

_ZN4cvc58internal8TypeNodeC2ERKS1_.exit:          ; preds = %bb.gi, %bb.gh, %bb.gj
  invoke void @_ZN4cvc58internal6theory7strings5utils8mkConcatERKSt6vectorINS0_12NodeTemplateILb1EEESaIS6_EENS0_8TypeNodeE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %68, ptr noundef nonnull align 8 dereferenceable(24) %indvars.iv.sroa.phi, ptr noundef nonnull align 8 %69)
          to label %bb.hu unwind label %bb.jn

bb.hu:                                            ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit
  %i.zz = load ptr, ptr %69, align 8, !tbaa !142  ; 3 uses
  %i.aaa = load i64, ptr %i.zz, align 8           ; 3 uses
  %i.aab = and i64 %i.aaa, 1152920405095219200
  %.not.i.i967 = icmp eq i64 %i.aab, 1152920405095219200
  br i1 %.not.i.i967, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, label %bb.hv, !prof !38

bb.hv:                                            ; preds = %bb.hu
  %i.aac = add i64 %i.aaa, 1152920405095219200
  %i.aad = and i64 %i.aac, 1152920405095219200    ; 2 uses
  %i.aae = and i64 %i.aaa, -1152920405095219201
  %i.aaf = or disjoint i64 %i.aad, %i.aae
  store i64 %i.aaf, ptr %i.zz, align 8
  %i.aag = icmp eq i64 %i.aad, 0
  br i1 %i.aag, label %bb.hw, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, !prof !38

bb.hw:                                            ; preds = %bb.hv
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.zz)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit unwind label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.aah = landingpad { ptr, i32 }
          catch ptr null
  %i.aai = extractvalue { ptr, i32 } %i.aah, 0
  call void @__clang_call_terminate(ptr %i.aai) #26
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit:              ; preds = %bb.hu, %bb.hv, %bb.hw
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #24
  %i.aaj = trunc nuw nsw i64 %indvars.iv to i32
  %i.aak = xor i32 %i.aaj, 1                      ; 2 uses
  %i.aal = load ptr, ptr %55, align 8, !tbaa !142 ; 5 uses
  store ptr %i.aal, ptr %71, align 8, !tbaa !142
  %i.aam = load i64, ptr %i.aal, align 8          ; 3 uses
  %i.aan = lshr i64 %i.aam, 40
  %i.aao = trunc nuw nsw i64 %i.aan to i32
  %i.aap = and i32 %i.aao, 1048575                ; 3 uses
  %i.aaq = icmp samesign ult i32 %i.aap, 1048574
  br i1 %i.aaq, label %bb.hy, label %bb.hz, !prof !39

bb.hy:                                            ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit
  %i.aar = add nuw nsw i32 %i.aap, 1
end_hunk_1
begin_hunk_2_@_ZNK4cvc58internal6theory11quantifiers16ExtendedRewriter22extendedRewriteStringsERKNS0_12NodeTemplateILb1EEE:bb.a
  %i.afj = icmp samesign ult i32 %i.afi, 1048574
  br i1 %i.afj, label %bb.jd, label %bb.je, !prof !39

bb.jd:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit995
  %i.afk = add nuw nsw i32 %i.afi, 1
  %i.afl = zext nneg i32 %i.afk to i64
  %i.afm = shl nuw nsw i64 %i.afl, 40
  %i.afn = and i64 %i.aff, -1152920405095219201
  %i.afo = or i64 %i.afm, %i.afn                  ; 2 uses
  store i64 %i.afo, ptr %i.afe, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit997

bb.je:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit995
  %i.afp = icmp eq i32 %i.afi, 1048574
  br i1 %i.afp, label %bb.jf, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit997, !prof !38

bb.jf:                                            ; preds = %bb.je
  %i.afq = or i64 %i.aff, 1152920405095219200
  store i64 %i.afq, ptr %i.afe, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.afe)
          to label %._ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit997_crit_edge unwind label %bb.jv

._ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit997_crit_edge: ; preds = %bb.jf
  %.pre2389.a = load i64, ptr %i.afe, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit997

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit997: ; preds = %._ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit997_crit_edge, %bb.jd, %bb.je
  %i.afr = phi i64 [ %.pre2389.a, %._ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit997_crit_edge ], [ %i.afo, %bb.jd ], [ %i.aff, %bb.je ] ; 3 uses
  %i.afs = and i64 %i.afr, 1152920405095219200
  %.not.i.i998 = icmp eq i64 %i.afs, 1152920405095219200
  br i1 %.not.i.i998, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1000, label %bb.jg, !prof !38

bb.jg:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit997
  %i.aft = add i64 %i.afr, 1152920405095219200
  %i.afu = and i64 %i.aft, 1152920405095219200    ; 2 uses
  %i.afv = and i64 %i.afr, -1152920405095219201
  %i.afw = or disjoint i64 %i.afu, %i.afv
  store i64 %i.afw, ptr %i.afe, align 8
  %i.afx = icmp eq i64 %i.afu, 0
  br i1 %i.afx, label %bb.jh, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1000, !prof !38

bb.jh:                                            ; preds = %bb.jg
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.afe)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1000 unwind label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  %i.afy = landingpad { ptr, i32 }
          catch ptr null
  %i.afz = extractvalue { ptr, i32 } %i.afy, 0
  call void @__clang_call_terminate(ptr %i.afz) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1000: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit997, %bb.jg, %bb.jh
  %i.aga = load ptr, ptr %73, align 8, !tbaa !36  ; 3 uses
  %i.agb = load i64, ptr %i.aga, align 8          ; 3 uses
  %i.agc = and i64 %i.agb, 1152920405095219200
  %.not.i.i1001 = icmp eq i64 %i.agc, 1152920405095219200
  br i1 %.not.i.i1001, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1003, label %bb.jj, !prof !38

bb.jj:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1000
  %i.agd = add i64 %i.agb, 1152920405095219200
  %i.age = and i64 %i.agd, 1152920405095219200    ; 2 uses
  %i.agf = and i64 %i.agb, -1152920405095219201
  %i.agg = or disjoint i64 %i.age, %i.agf
  store i64 %i.agg, ptr %i.aga, align 8
  %i.agh = icmp eq i64 %i.age, 0
  br i1 %i.agh, label %bb.jk, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1003, !prof !38

bb.jk:                                            ; preds = %bb.jj
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aga)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1003 unwind label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  %i.agi = landingpad { ptr, i32 }
          catch ptr null
  %i.agj = extractvalue { ptr, i32 } %i.agi, 0
  call void @__clang_call_terminate(ptr %i.agj) #26
  unreachable

bb.jm:                                            ; preds = %bb.gj
  %i.agk = landingpad { ptr, i32 }
          cleanup
  br label %bb.kl

bb.jn:                                            ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit
  %i.agl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %69) #24
  br label %bb.kl

bb.jo:                                            ; preds = %bb.ia
  %i.agm = landingpad { ptr, i32 }
          cleanup
  br label %bb.kk

bb.jp:                                            ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit970
  %i.agn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %71) #24
  br label %bb.kk

bb.jq:                                            ; preds = %bb.ih, %_ZN4cvc58internal8TypeNodeD2Ev.exit973
  %i.ago = landingpad { ptr, i32 }
          cleanup
  br label %bb.js

bb.jr:                                            ; preds = %bb.il, %bb.ii
  %i.agp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %72) #24
  br label %bb.js

bb.js:                                            ; preds = %bb.jr, %bb.jq
  %.pn736 = phi { ptr, i32 } [ %i.agp, %bb.jr ], [ %i.ago, %bb.jq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #24
  br label %.body991

bb.jt:                                            ; preds = %bb.it
  %i.agq = landingpad { ptr, i32 }
          cleanup
  br label %.body991

bb.ju:                                            ; preds = %bb.jc
  %i.agr = landingpad { ptr, i32 }
          cleanup
  br label %bb.jw

bb.jv:                                            ; preds = %bb.jf
  %i.ags = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %73) #24
  br label %bb.jw

bb.jw:                                            ; preds = %bb.jv, %bb.ju
  %.pn738.pn = phi { ptr, i32 } [ %i.ags, %bb.jv ], [ %i.agr, %bb.ju ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #24
  br label %.body991

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1003: ; preds = %bb.jk, %bb.jj, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1000, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit987
  %.5512 = phi i32 [ 0, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit987 ], [ 1, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1000 ], [ 1, %bb.jj ], [ 1, %bb.jk ]
  %i.agt = load ptr, ptr %70, align 8, !tbaa !36  ; 3 uses
  %i.agu = load i64, ptr %i.agt, align 8          ; 3 uses
  %i.agv = and i64 %i.agu, 1152920405095219200
  %.not.i.i1004 = icmp eq i64 %i.agv, 1152920405095219200
  br i1 %.not.i.i1004, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1006, label %bb.jx, !prof !38

bb.jx:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1003
  %i.agw = add i64 %i.agu, 1152920405095219200
  %i.agx = and i64 %i.agw, 1152920405095219200    ; 2 uses
  %i.agy = and i64 %i.agu, -1152920405095219201
  %i.agz = or disjoint i64 %i.agx, %i.agy
  store i64 %i.agz, ptr %i.agt, align 8
  %i.aha = icmp eq i64 %i.agx, 0
  br i1 %i.aha, label %bb.jy, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1006, !prof !38

bb.jy:                                            ; preds = %bb.jx
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.agt)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1006 unwind label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  %i.ahb = landingpad { ptr, i32 }
          catch ptr null
  %i.ahc = extractvalue { ptr, i32 } %i.ahb, 0
  call void @__clang_call_terminate(ptr %i.ahc) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1006: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1003, %bb.jx, %bb.jy
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #24
  %i.ahd = load ptr, ptr %68, align 8, !tbaa !36  ; 3 uses
  %i.ahe = load i64, ptr %i.ahd, align 8          ; 3 uses
  %i.ahf = and i64 %i.ahe, 1152920405095219200
  %.not.i.i1007 = icmp eq i64 %i.ahf, 1152920405095219200
  br i1 %.not.i.i1007, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1009, label %bb.ka, !prof !38

bb.ka:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1006
  %i.ahg = add i64 %i.ahe, 1152920405095219200
  %i.ahh = and i64 %i.ahg, 1152920405095219200    ; 2 uses
  %i.ahi = and i64 %i.ahe, -1152920405095219201
  %i.ahj = or disjoint i64 %i.ahh, %i.ahi
  store i64 %i.ahj, ptr %i.ahd, align 8
  %i.ahk = icmp eq i64 %i.ahh, 0
  br i1 %i.ahk, label %bb.kb, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1009, !prof !38

bb.kb:                                            ; preds = %bb.ka
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ahd)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1009 unwind label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  %i.ahl = landingpad { ptr, i32 }
          catch ptr null
  %i.ahm = extractvalue { ptr, i32 } %i.ahl, 0
  call void @__clang_call_terminate(ptr %i.ahm) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1009: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1006, %bb.ka, %bb.kb
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #24
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1009
  %.6513 = phi i32 [ %.5512, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1009 ], [ %spec.store.select, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.ahn = load ptr, ptr %i.ol, align 8, !tbaa !141 ; 3 uses
  %i.aho = load ptr, ptr %i.om, align 16, !tbaa !134 ; 2 uses
  %.not4.i.i.i1010 = icmp eq ptr %i.ahn, %i.aho
  br i1 %.not4.i.i.i1010, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1018, label %.lr.ph.i.i.i1011

.lr.ph.i.i.i1011:                                 ; preds = %.loopexit, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1014
  %.05.i.i.i1012 = phi ptr [ %i.ahy, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1014 ], [ %i.ahn, %.loopexit ] ; 2 uses
  %i.ahp = load ptr, ptr %.05.i.i.i1012, align 8, !tbaa !36 ; 3 uses
  %i.ahq = load i64, ptr %i.ahp, align 8          ; 3 uses
  %i.ahr = and i64 %i.ahq, 1152920405095219200
  %.not.i.i.i.i.i.i1013 = icmp eq i64 %i.ahr, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i1013, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1014, label %bb.kd, !prof !38

bb.kd:                                            ; preds = %.lr.ph.i.i.i1011
  %i.ahs = add i64 %i.ahq, 1152920405095219200
  %i.aht = and i64 %i.ahs, 1152920405095219200    ; 2 uses
  %i.ahu = and i64 %i.ahq, -1152920405095219201
  %i.ahv = or disjoint i64 %i.aht, %i.ahu
  store i64 %i.ahv, ptr %i.ahp, align 8
  %i.ahw = icmp eq i64 %i.aht, 0
  br i1 %i.ahw, label %bb.ke, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1014, !prof !38

bb.ke:                                            ; preds = %bb.kd
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ahp)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1014 unwind label %.loopexit2330

.loopexit2330:                                    ; preds = %bb.ke
  %lpad.loopexit2332 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.kf

.loopexit.split-lp2331:                           ; preds = %bb.ki
  %lpad.loopexit.split-lp2333 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.kf

bb.kf:                                            ; preds = %.loopexit.split-lp2331, %.loopexit2330
  %lpad.phi2334 = phi { ptr, i32 } [ %lpad.loopexit2332, %.loopexit2330 ], [ %lpad.loopexit.split-lp2333, %.loopexit.split-lp2331 ]
  %i.ahx = extractvalue { ptr, i32 } %lpad.phi2334, 0
  call void @__clang_call_terminate(ptr %i.ahx) #26
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1014: ; preds = %bb.ke, %bb.kd, %.lr.ph.i.i.i1011
  %i.ahy = getelementptr inbounds nuw i8, ptr %.05.i.i.i1012, i64 8 ; 2 uses
  %.not.i.i.i1015 = icmp eq ptr %i.ahy, %i.aho
  br i1 %.not.i.i.i1015, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i1016, label %.lr.ph.i.i.i1011, !llvm.loop !5

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i1016: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1014
  %.pr.i1017 = load ptr, ptr %i.ol, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1018

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1018: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i1016, %.loopexit
  %i.ahz = phi ptr [ %.pr.i1017, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i1016 ], [ %i.ahn, %.loopexit ] ; 3 uses
  %.not.i.i1.i1019 = icmp eq ptr %i.ahz, null
  br i1 %.not.i.i1.i1019, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1021, label %bb.kg

bb.kg:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1018
  %i.aia = load ptr, ptr %i.on, align 8, !tbaa !136
  %i.aib = ptrtoint ptr %i.aia to i64
  %i.aic = ptrtoint ptr %i.ahz to i64
  %i.aid = sub i64 %i.aib, %i.aic
  call void @_ZdlPvm(ptr noundef nonnull %i.ahz, i64 noundef %i.aid) #27
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1021

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1021: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1018, %bb.kg
  %i.aie = load ptr, ptr %62, align 16, !tbaa !141 ; 3 uses
  %i.aif = load ptr, ptr %i.oo, align 8, !tbaa !134 ; 2 uses
  %.not4.i.i.i1010.1 = icmp eq ptr %i.aie, %i.aif
  br i1 %.not4.i.i.i1010.1, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1018.1, label %.lr.ph.i.i.i1011.1

.lr.ph.i.i.i1011.1:                               ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1021, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1014.1
  %.05.i.i.i1012.1 = phi ptr [ %i.aio, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1014.1 ], [ %i.aie, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1021 ] ; 2 uses
  %i.aig = load ptr, ptr %.05.i.i.i1012.1, align 8, !tbaa !36 ; 3 uses
  %i.aih = load i64, ptr %i.aig, align 8          ; 3 uses
  %i.aii = and i64 %i.aih, 1152920405095219200
  %.not.i.i.i.i.i.i1013.1 = icmp eq i64 %i.aii, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i1013.1, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1014.1, label %bb.kh, !prof !38

bb.kh:                                            ; preds = %.lr.ph.i.i.i1011.1
  %i.aij = add i64 %i.aih, 1152920405095219200
  %i.aik = and i64 %i.aij, 1152920405095219200    ; 2 uses
  %i.ail = and i64 %i.aih, -1152920405095219201
  %i.aim = or disjoint i64 %i.aik, %i.ail
  store i64 %i.aim, ptr %i.aig, align 8
  %i.ain = icmp eq i64 %i.aik, 0
  br i1 %i.ain, label %bb.ki, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1014.1, !prof !38

bb.ki:                                            ; preds = %bb.kh
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aig)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1014.1 unwind label %.loopexit.split-lp2331

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1014.1: ; preds = %bb.ki, %bb.kh, %.lr.ph.i.i.i1011.1
  %i.aio = getelementptr inbounds nuw i8, ptr %.05.i.i.i1012.1, i64 8 ; 2 uses
  %.not.i.i.i1015.1 = icmp eq ptr %i.aio, %i.aif
  br i1 %.not.i.i.i1015.1, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i1016.1, label %.lr.ph.i.i.i1011.1, !llvm.loop !5

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i1016.1: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1014.1
  %.pr.i1017.1 = load ptr, ptr %62, align 16, !tbaa !141
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1018.1

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1018.1: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i1016.1, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1021
  %i.aip = phi ptr [ %.pr.i1017.1, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i1016.1 ], [ %i.aie, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1021 ] ; 3 uses
  %.not.i.i1.i1019.1 = icmp eq ptr %i.aip, null
  br i1 %.not.i.i1.i1019.1, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1021.1, label %bb.kj

bb.kj:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1018.1
  %i.aiq = load ptr, ptr %i.op, align 16, !tbaa !136
  %i.air = ptrtoint ptr %i.aiq to i64
  %i.ais = ptrtoint ptr %i.aip to i64
  %i.ait = sub i64 %i.air, %i.ais
  call void @_ZdlPvm(ptr noundef nonnull %i.aip, i64 noundef %i.ait) #27
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1021.1

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1021.1: ; preds = %bb.kj, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1018.1
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #24
  %i.aiu = icmp eq i32 %.6513, 0
  br label %.thread2063

.body991:                                         ; preds = %bb.jt, %.body.i988, %bb.jw, %bb.js
  %.pn738.pn.pn = phi { ptr, i32 } [ %.pn738.pn, %bb.jw ], [ %.pn736, %bb.js ], [ %i.agq, %bb.jt ], [ %.pn5.i.i989, %.body.i988 ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %70) #24
  br label %bb.kk

bb.kk:                                            ; preds = %.body991, %bb.jp, %bb.jo
  %.pn738.pn.pn.pn = phi { ptr, i32 } [ %.pn738.pn.pn, %.body991 ], [ %i.agn, %bb.jp ], [ %i.agm, %bb.jo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #24
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %68) #24
  br label %bb.kl

bb.kl:                                            ; preds = %bb.kk, %bb.jn, %bb.jm
  %.pn738.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn738.pn.pn.pn, %bb.kk ], [ %i.agl, %bb.jn ], [ %i.agk, %bb.jm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #24
  br label %bb.km

bb.km:                                            ; preds = %.loopexit2127, %.loopexit.split-lp, %bb.ey, %bb.fz, %.body947, %bb.kl
  %.pn745.pn.pn.pn = phi { ptr, i32 } [ %i.rn, %bb.ey ], [ %.pn738.pn.pn.pn.pn, %bb.kl ], [ %.pn745.pn, %.body947 ], [ %.pn731.pn, %bb.fz ], [ %lpad.loopexit, %.loopexit2127 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.aiv = getelementptr inbounds nuw i8, ptr %62, i64 24 ; 2 uses
  %i.aiw = load ptr, ptr %i.aiv, align 8, !tbaa !141 ; 3 uses
  %i.aix = getelementptr inbounds nuw i8, ptr %62, i64 32
  %i.aiy = load ptr, ptr %i.aix, align 16, !tbaa !134 ; 2 uses
  %.not4.i.i.i1022 = icmp eq ptr %i.aiw, %i.aiy
  br i1 %.not4.i.i.i1022, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1030, label %.lr.ph.i.i.i1023

.lr.ph.i.i.i1023:                                 ; preds = %bb.km, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1026
  %.05.i.i.i1024 = phi ptr [ %i.aji, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1026 ], [ %i.aiw, %bb.km ] ; 2 uses
  %i.aiz = load ptr, ptr %.05.i.i.i1024, align 8, !tbaa !36 ; 3 uses
  %i.aja = load i64, ptr %i.aiz, align 8          ; 3 uses
  %i.ajb = and i64 %i.aja, 1152920405095219200
  %.not.i.i.i.i.i.i1025 = icmp eq i64 %i.ajb, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i1025, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1026, label %bb.kn, !prof !38

bb.kn:                                            ; preds = %.lr.ph.i.i.i1023
  %i.ajc = add i64 %i.aja, 1152920405095219200
  %i.ajd = and i64 %i.ajc, 1152920405095219200    ; 2 uses
  %i.aje = and i64 %i.aja, -1152920405095219201
  %i.ajf = or disjoint i64 %i.ajd, %i.aje
  store i64 %i.ajf, ptr %i.aiz, align 8
  %i.ajg = icmp eq i64 %i.ajd, 0
  br i1 %i.ajg, label %bb.ko, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1026, !prof !38

bb.ko:                                            ; preds = %bb.kn
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aiz)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1026 unwind label %.loopexit2338

.loopexit2338:                                    ; preds = %bb.ko
  %lpad.loopexit2340 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.kp

.loopexit.split-lp2339:                           ; preds = %bb.ks
  %lpad.loopexit.split-lp2341 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.kp

bb.kp:                                            ; preds = %.loopexit.split-lp2339, %.loopexit2338
  %lpad.phi2342 = phi { ptr, i32 } [ %lpad.loopexit2340, %.loopexit2338 ], [ %lpad.loopexit.split-lp2341, %.loopexit.split-lp2339 ]
  %i.ajh = extractvalue { ptr, i32 } %lpad.phi2342, 0
  call void @__clang_call_terminate(ptr %i.ajh) #26
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1026: ; preds = %bb.ko, %bb.kn, %.lr.ph.i.i.i1023
  %i.aji = getelementptr inbounds nuw i8, ptr %.05.i.i.i1024, i64 8 ; 2 uses
  %.not.i.i.i1027 = icmp eq ptr %i.aji, %i.aiy
  br i1 %.not.i.i.i1027, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i1028, label %.lr.ph.i.i.i1023, !llvm.loop !5

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i1028: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1026
  %.pr.i1029 = load ptr, ptr %i.aiv, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1030

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1030: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i1028, %bb.km
  %i.ajj = phi ptr [ %.pr.i1029, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i1028 ], [ %i.aiw, %bb.km ] ; 3 uses
  %.not.i.i1.i1031 = icmp eq ptr %i.ajj, null
  br i1 %.not.i.i1.i1031, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1033, label %bb.kq

bb.kq:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1030
  %i.ajk = getelementptr inbounds nuw i8, ptr %62, i64 40
  %i.ajl = load ptr, ptr %i.ajk, align 8, !tbaa !136
  %i.ajm = ptrtoint ptr %i.ajl to i64
  %i.ajn = ptrtoint ptr %i.ajj to i64
  %i.ajo = sub i64 %i.ajm, %i.ajn
  call void @_ZdlPvm(ptr noundef nonnull %i.ajj, i64 noundef %i.ajo) #27
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1033

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1033: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1030, %bb.kq
  %i.ajp = load ptr, ptr %62, align 16, !tbaa !141 ; 3 uses
  %i.ajq = getelementptr inbounds nuw i8, ptr %62, i64 8
  %i.ajr = load ptr, ptr %i.ajq, align 8, !tbaa !134 ; 2 uses
  %.not4.i.i.i1022.1 = icmp eq ptr %i.ajp, %i.ajr
  br i1 %.not4.i.i.i1022.1, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1030.1, label %.lr.ph.i.i.i1023.1

.lr.ph.i.i.i1023.1:                               ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1033, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1026.1
  %.05.i.i.i1024.1 = phi ptr [ %i.aka, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1026.1 ], [ %i.ajp, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1033 ] ; 2 uses
  %i.ajs = load ptr, ptr %.05.i.i.i1024.1, align 8, !tbaa !36 ; 3 uses
  %i.ajt = load i64, ptr %i.ajs, align 8          ; 3 uses
  %i.aju = and i64 %i.ajt, 1152920405095219200
  %.not.i.i.i.i.i.i1025.1 = icmp eq i64 %i.aju, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i1025.1, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1026.1, label %bb.kr, !prof !38

bb.kr:                                            ; preds = %.lr.ph.i.i.i1023.1
  %i.ajv = add i64 %i.ajt, 1152920405095219200
  %i.ajw = and i64 %i.ajv, 1152920405095219200    ; 2 uses
  %i.ajx = and i64 %i.ajt, -1152920405095219201
  %i.ajy = or disjoint i64 %i.ajw, %i.ajx
  store i64 %i.ajy, ptr %i.ajs, align 8
  %i.ajz = icmp eq i64 %i.ajw, 0
  br i1 %i.ajz, label %bb.ks, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1026.1, !prof !38

bb.ks:                                            ; preds = %bb.kr
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ajs)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1026.1 unwind label %.loopexit.split-lp2339

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1026.1: ; preds = %bb.ks, %bb.kr, %.lr.ph.i.i.i1023.1
  %i.aka = getelementptr inbounds nuw i8, ptr %.05.i.i.i1024.1, i64 8 ; 2 uses
  %.not.i.i.i1027.1 = icmp eq ptr %i.aka, %i.ajr
  br i1 %.not.i.i.i1027.1, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i1028.1, label %.lr.ph.i.i.i1023.1, !llvm.loop !5

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i1028.1: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1026.1
  %.pr.i1029.1 = load ptr, ptr %62, align 16, !tbaa !141
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1030.1

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1030.1: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i1028.1, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1033
  %i.akb = phi ptr [ %.pr.i1029.1, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i1028.1 ], [ %i.ajp, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1033 ] ; 3 uses
  %.not.i.i1.i1031.1 = icmp eq ptr %i.akb, null
  br i1 %.not.i.i1.i1031.1, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1033.1, label %bb.kt

bb.kt:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1030.1
  %i.akc = getelementptr inbounds nuw i8, ptr %62, i64 16
  %i.akd = load ptr, ptr %i.akc, align 16, !tbaa !136
  %i.ake = ptrtoint ptr %i.akd to i64
  %i.akf = ptrtoint ptr %i.akb to i64
  %i.akg = sub i64 %i.ake, %i.akf
  call void @_ZdlPvm(ptr noundef nonnull %i.akb, i64 noundef %i.akg) #27
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1033.1

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1033.1: ; preds = %bb.kt, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1030.1
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #24
  br label %.body920

.thread2063:                                      ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1021.1, %bb.ej, %bb.el
  %.7514 = phi i1 [ %i.aiu, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1021.1 ], [ true, %bb.ej ], [ true, %bb.el ] ; 2 uses
  %i.akh = load ptr, ptr %59, align 8, !tbaa !36  ; 3 uses
  %i.aki = load i64, ptr %i.akh, align 8          ; 3 uses
  %i.akj = and i64 %i.aki, 1152920405095219200
  %.not.i.i1034 = icmp eq i64 %i.akj, 1152920405095219200
  br i1 %.not.i.i1034, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1036, label %bb.ku, !prof !38

bb.ku:                                            ; preds = %.thread2063
  %i.akk = add i64 %i.aki, 1152920405095219200
  %i.akl = and i64 %i.akk, 1152920405095219200    ; 2 uses
  %i.akm = and i64 %i.aki, -1152920405095219201
  %i.akn = or disjoint i64 %i.akl, %i.akm
  store i64 %i.akn, ptr %i.akh, align 8
  %i.ako = icmp eq i64 %i.akl, 0
  br i1 %i.ako, label %bb.kv, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1036, !prof !38

bb.kv:                                            ; preds = %bb.ku
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.akh)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1036 unwind label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %i.akp = landingpad { ptr, i32 }
          catch ptr null
  %i.akq = extractvalue { ptr, i32 } %i.akp, 0
  call void @__clang_call_terminate(ptr %i.akq) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1036: ; preds = %.thread2063, %bb.ku, %bb.kv
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #24
  %or.cond = and i1 %.7514, %.not2295
  br i1 %or.cond, label %bb.dx, label %bb.ky, !llvm.loop !590

.body920:                                         ; preds = %bb.ei, %bb.ep, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1033.1
  %.pn745.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn745.pn.pn.pn, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1033.1 ], [ %i.qp, %bb.ep ], [ %i.qi, %bb.ei ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %59) #24
  br label %bb.kx

bb.kx:                                            ; preds = %.body920, %bb.eo, %bb.en
  %.pn745.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn745.pn.pn.pn.pn, %.body920 ], [ %i.qo, %bb.eo ], [ %i.qn, %bb.en ]
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #24
  br label %bb.lv

bb.ky:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1036
  %i.akr = getelementptr inbounds nuw i8, ptr %57, i64 24 ; 2 uses
  %i.aks = load ptr, ptr %i.akr, align 8, !tbaa !141 ; 3 uses
  %i.akt = getelementptr inbounds nuw i8, ptr %57, i64 32
  %i.aku = load ptr, ptr %i.akt, align 16, !tbaa !134 ; 2 uses
  %.not4.i.i.i1037 = icmp eq ptr %i.aks, %i.aku
  br i1 %.not4.i.i.i1037, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1045, label %.lr.ph.i.i.i1038

.lr.ph.i.i.i1038:                                 ; preds = %bb.ky, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1041
  %.05.i.i.i1039 = phi ptr [ %i.ale, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1041 ], [ %i.aks, %bb.ky ] ; 2 uses
  %i.akv = load ptr, ptr %.05.i.i.i1039, align 8, !tbaa !36 ; 3 uses
  %i.akw = load i64, ptr %i.akv, align 8          ; 3 uses
  %i.akx = and i64 %i.akw, 1152920405095219200
  %.not.i.i.i.i.i.i1040 = icmp eq i64 %i.akx, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i1040, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1041, label %bb.kz, !prof !38

bb.kz:                                            ; preds = %.lr.ph.i.i.i1038
  %i.aky = add i64 %i.akw, 1152920405095219200
  %i.akz = and i64 %i.aky, 1152920405095219200    ; 2 uses
  %i.ala = and i64 %i.akw, -1152920405095219201
  %i.alb = or disjoint i64 %i.akz, %i.ala
  store i64 %i.alb, ptr %i.akv, align 8
  %i.alc = icmp eq i64 %i.akz, 0
  br i1 %i.alc, label %bb.la, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1041, !prof !38

bb.la:                                            ; preds = %bb.kz
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.akv)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1041 unwind label %.loopexit2348

.loopexit2348:                                    ; preds = %bb.la
  %lpad.loopexit2350 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.lb

.loopexit.split-lp2349:                           ; preds = %bb.le
end_hunk_2

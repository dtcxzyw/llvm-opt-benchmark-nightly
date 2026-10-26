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
  %.05382278.sroa.gep2848 = getelementptr inbounds nuw i8, ptr %62, i64 24
  %indvars.iv.sroa.gep2849 = getelementptr inbounds nuw i8, ptr %62, i64 24
  %.05382278.sroa.gep2852 = getelementptr inbounds nuw i8, ptr %57, i64 24
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
  switch i32 %i.j, label %bb.bav [
    i32 5, label %bb.d
    i32 319, label %bb.lr
    i32 322, label %bb.og
    i32 330, label %bb.xv
    i32 325, label %bb.akj
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #24
  store ptr %i.f, ptr %45, align 8, !tbaa !36
  %i.k = load i64, ptr %i.f, align 8              ; 3 uses
  %i.l = lshr i64 %i.k, 40
  %i.m = trunc nuw nsw i64 %i.l to i32
end_hunk_0
begin_hunk_1_@_ZNK4cvc58internal6theory11quantifiers16ExtendedRewriter22extendedRewriteStringsERKNS0_12NodeTemplateILb1EEE:bb.a

bb.dh:                                            ; preds = %.noexc905.1
  %i.nh = icmp eq i32 %i.nf, 1048574
  br i1 %i.nh, label %bb.di, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit907.1, !prof !38

bb.di:                                            ; preds = %bb.dh
  %i.ni = or i64 %i.nc, 1152920405095219200
  store i64 %i.ni, ptr %i.nb, align 8, !noalias !716
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.nb)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit907.1 unwind label %bb.dn

bb.dj:                                            ; preds = %.noexc905.1
  %i.nj = add nuw nsw i32 %i.nf, 1
  %i.nk = zext nneg i32 %i.nj to i64
  %i.nl = shl nuw nsw i64 %i.nk, 40
  %i.nm = and i64 %i.nc, -1152920405095219201
  %i.nn = or i64 %i.nl, %i.nm
  store i64 %i.nn, ptr %i.nb, align 8, !noalias !716
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit907.1

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit907.1: ; preds = %bb.dj, %bb.di, %bb.dh
  %i.no = getelementptr inbounds nuw i8, ptr %57, i64 24
  invoke void @_ZN4cvc58internal6theory7strings5utils9getConcatENS0_12NodeTemplateILb1EEERSt6vectorIS5_SaIS5_EE(ptr noundef nonnull align 8 %58, ptr noundef nonnull align 8 dereferenceable(24) %i.no)
          to label %bb.dk unwind label %bb.do

bb.dk:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit907.1
  %i.np = load ptr, ptr %58, align 8, !tbaa !36   ; 3 uses
  %i.nq = load i64, ptr %i.np, align 8            ; 3 uses
  %i.nr = and i64 %i.nq, 1152920405095219200
  %.not.i.i908.1 = icmp eq i64 %i.nr, 1152920405095219200
  br i1 %.not.i.i908.1, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit910.1, label %bb.dl, !prof !38

bb.dl:                                            ; preds = %bb.dk
  %i.ns = add i64 %i.nq, 1152920405095219200
  %i.nt = and i64 %i.ns, 1152920405095219200      ; 2 uses
  %i.nu = and i64 %i.nq, -1152920405095219201
  %i.nv = or disjoint i64 %i.nt, %i.nu
  store i64 %i.nv, ptr %i.np, align 8
  %i.nw = icmp eq i64 %i.nt, 0
  br i1 %i.nw, label %bb.dm, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit910.1, !prof !38

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
  %.not2283 = phi i1 [ true, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit910.1 ], [ false, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1034 ]
  %indvars.iv.sroa.phi = phi ptr [ %62, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit910.1 ], [ %indvars.iv.sroa.gep2849, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1034 ]
  %indvars.iv = phi i64 [ 0, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit910.1 ], [ 1, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1034 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !717)
  %i.on = load ptr, ptr %2, align 8, !tbaa !36, !noalias !717 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 8
  %i.op = load i64, ptr %i.oo, align 8, !noalias !717
  %i.oq = trunc i64 %i.op to i32
  %i.or = and i32 %i.oq, 1023                     ; 2 uses
  %i.os = icmp eq i32 %i.or, 1023
  %i.ot = select i1 %i.os, i32 -1, i32 %i.or
  %i.ou = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.ot)
          to label %.noexc912 unwind label %bb.ef

.noexc912:                                        ; preds = %bb.dp
  %i.ov = icmp eq i32 %i.ou, 2
  %i.ow = zext i1 %i.ov to i64
  %i.ox = getelementptr inbounds nuw i8, ptr %i.on, i64 24
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %i.ox, i64 %indvars.iv
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %i.oy, i64 %i.ow
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !35, !noalias !717 ; 5 uses
  store ptr %i.pa, ptr %60, align 8, !tbaa !36, !alias.scope !717
  %i.pb = load i64, ptr %i.pa, align 8, !noalias !717 ; 3 uses
  %i.pc = lshr i64 %i.pb, 40
  %i.pd = trunc nuw nsw i64 %i.pc to i32
  %i.pe = and i32 %i.pd, 1048575                  ; 3 uses
  %i.pf = icmp samesign ult i32 %i.pe, 1048574
  br i1 %i.pf, label %bb.dq, label %bb.dr, !prof !39

bb.dq:                                            ; preds = %.noexc912
  %i.pg = add nuw nsw i32 %i.pe, 1
  %i.ph = zext nneg i32 %i.pg to i64
  %i.pi = shl nuw nsw i64 %i.ph, 40
  %i.pj = and i64 %i.pb, -1152920405095219201
  %i.pk = or i64 %i.pi, %i.pj
  store i64 %i.pk, ptr %i.pa, align 8, !noalias !717
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit914

bb.dr:                                            ; preds = %.noexc912
  %i.pl = icmp eq i32 %i.pe, 1048574
  br i1 %i.pl, label %bb.ds, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit914, !prof !38

bb.ds:                                            ; preds = %bb.dr
  %i.pm = or i64 %i.pb, 1152920405095219200
  store i64 %i.pm, ptr %i.pa, align 8, !noalias !717
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.pa)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit914 unwind label %bb.ef

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit914: ; preds = %bb.dr, %bb.dq, %bb.ds
  invoke void @_ZN4cvc58internal6theory7strings13StringsEntail22checkHomogeneousStringENS0_12NodeTemplateILb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %59, ptr noundef nonnull align 8 %60)
          to label %bb.dt unwind label %bb.eg

bb.dt:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit914
  %i.pn = load ptr, ptr %60, align 8, !tbaa !36   ; 3 uses
  %i.po = load i64, ptr %i.pn, align 8            ; 3 uses
  %i.pp = and i64 %i.po, 1152920405095219200
  %.not.i.i915 = icmp eq i64 %i.pp, 1152920405095219200
  br i1 %.not.i.i915, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit917, label %bb.du, !prof !38

bb.du:                                            ; preds = %bb.dt
  %i.pq = add i64 %i.po, 1152920405095219200
  %i.pr = and i64 %i.pq, 1152920405095219200      ; 2 uses
  %i.ps = and i64 %i.po, -1152920405095219201
  %i.pt = or disjoint i64 %i.pr, %i.ps
  store i64 %i.pt, ptr %i.pn, align 8
  %i.pu = icmp eq i64 %i.pr, 0
  br i1 %i.pu, label %bb.dv, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit917, !prof !38

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
  %i.px = load ptr, ptr %59, align 8, !tbaa !36
  %i.py = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.pz = icmp eq i8 %i.py, 0
  br i1 %i.pz, label %bb.dx, label %bb.eb, !prof !34

bb.dx:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit917
  %i.qa = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  %.not.i.i918 = icmp eq i32 %i.qa, 0
  br i1 %.not.i.i918, label %bb.eb, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.qb = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %bb.dz unwind label %bb.ea     ; 3 uses

bb.dz:                                            ; preds = %bb.dy
  store i64 1152920405095219200, ptr %i.qb, align 8
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qc, i8 0, i64 16, i1 false)
  store ptr %i.qb, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !35
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  br label %bb.eb

bb.ea:                                            ; preds = %bb.dy
  %i.qd = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  br label %.body919

bb.eb:                                            ; preds = %bb.dz, %bb.dx, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit917
  %i.qe = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !35
  %i.qf = icmp eq ptr %i.px, %i.qe
  br i1 %i.qf, label %.thread2054, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.qg = load ptr, ptr %59, align 8, !tbaa !36
  store ptr %i.qg, ptr %61, align 8, !tbaa !140
  %i.qh = invoke noundef zeroext i1 @_ZN4cvc58internal6theory7strings4Word7isEmptyENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 %61)
          to label %bb.ed unwind label %bb.eh

bb.ed:                                            ; preds = %bb.ec
  br i1 %i.qh, label %.thread2054, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %62, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  store i64 0, ptr %.sroa.0, align 16
  store i64 0, ptr %.sroa.6, align 8
  br label %bb.ei

bb.ef:                                            ; preds = %bb.ds, %bb.dp
  %i.qi = landingpad { ptr, i32 }
          cleanup
  br label %bb.kh

bb.eg:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit914
  %i.qj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %60) #24
  br label %bb.kh

bb.eh:                                            ; preds = %bb.ec
  %i.qk = landingpad { ptr, i32 }
          cleanup
  br label %.body919

bb.ei:                                            ; preds = %bb.ee, %._crit_edge2263
  %i.ql = phi i1 [ true, %bb.ee ], [ false, %._crit_edge2263 ]
  %.05382278.sroa.phi = phi ptr [ %.sroa.0, %bb.ee ], [ %.sroa.6, %._crit_edge2263 ] ; 2 uses
  %.05382278.sroa.phi2847 = phi ptr [ %62, %bb.ee ], [ %.05382278.sroa.gep2848, %._crit_edge2263 ] ; 3 uses
  %.05382278.sroa.phi2850 = phi ptr [ %57, %bb.ee ], [ %.05382278.sroa.gep2852, %._crit_edge2263 ] ; 3 uses
  %i.qm = load ptr, ptr %.05382278.sroa.phi2850, align 8, !tbaa !135 ; 6 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %.05382278.sroa.phi2850, i64 8 ; 2 uses
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !135 ; 6 uses
  %.not.i.i921 = icmp eq ptr %i.qm, %i.qo
  br i1 %.not.i.i921, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.qp = ptrtoint ptr %i.qo to i64
  %i.qq = ptrtoint ptr %i.qm to i64
  %i.qr = sub i64 %i.qp, %i.qq                    ; 2 uses
  %i.qs = ashr exact i64 %i.qr, 3
  %i.qt = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.qs, i1 true)
  %i.qu = shl nuw nsw i64 %i.qt, 1
  %i.qv = xor i64 %i.qu, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_(ptr %i.qm, ptr %i.qo, i64 noundef %i.qv)
          to label %.noexc922 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc922:                                        ; preds = %bb.ej
  %i.qw = icmp sgt i64 %i.qr, 128
  br i1 %i.qw, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %.noexc922
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qm, i64 128 ; 3 uses
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_(ptr %i.qm, ptr nonnull %i.qx)
          to label %.noexc923 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc923:                                        ; preds = %bb.ek
  %.not4.i.i.i.i = icmp eq ptr %i.qx, %i.qo
  br i1 %.not4.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc923, %.noexc924
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.qy, %.noexc924 ], [ %i.qx, %.noexc923 ] ; 2 uses
  invoke void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_(ptr nonnull %.sroa.0.05.i.i.i.i)
          to label %.noexc924 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc924:                                        ; preds = %.lr.ph.i.i.i.i
  %i.qy = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.qy, %i.qo
  br i1 %.not.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !3

bb.el:                                            ; preds = %.noexc922
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_(ptr %i.qm, ptr %i.qo)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit: ; preds = %.noexc924, %.noexc923, %bb.ei, %bb.el
  %i.qz = load ptr, ptr %.05382278.sroa.phi2850, align 8, !tbaa !135 ; 2 uses
  %i.ra = load ptr, ptr %i.qn, align 8, !tbaa !135 ; 2 uses
  %.not21142260 = icmp eq ptr %i.qz, %i.ra
  br i1 %.not21142260, label %._crit_edge2263, label %.lr.ph2262

.lr.ph2262:                                       ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit
  %i.rb = getelementptr inbounds nuw i8, ptr %.05382278.sroa.phi2847, i64 8 ; 3 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %.05382278.sroa.phi2847, i64 16
  br label %bb.em

bb.em:                                            ; preds = %.lr.ph2262, %.thread2055
  %.sroa.02045.02261 = phi ptr [ %i.qz, %.lr.ph2262 ], [ %i.vd, %.thread2055 ] ; 5 uses
  %i.rd = invoke noundef zeroext i1 @_ZNK4cvc58internal12NodeTemplateILb1EE7isConstEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.02045.02261)
          to label %bb.en unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.en:                                            ; preds = %bb.em
  br i1 %i.rd, label %bb.eo, label %bb.fr

bb.eo:                                            ; preds = %bb.en
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #24
  %i.re = load ptr, ptr %.sroa.02045.02261, align 8, !tbaa !36
  store ptr %i.re, ptr %64, align 8, !tbaa !140
  invoke void @_ZN4cvc58internal6theory7strings4Word8getCharsENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.97") align 8 %63, ptr noundef nonnull align 8 %64)
          to label %bb.ep unwind label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.rf = load ptr, ptr %63, align 8, !tbaa !135  ; 2 uses
  %i.rg = load ptr, ptr %i.nx, align 8, !tbaa !135 ; 2 uses
  %.not21152246 = icmp eq ptr %i.rf, %i.rg
  br i1 %.not21152246, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit937.thread, label %.lr.ph2250

.lr.ph2250:                                       ; preds = %bb.ep
  %i.rh = load ptr, ptr %59, align 8, !tbaa !36
  br label %bb.er

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.fw, %bb.fv, %bb.em, %.lr.ph.i.i.i.i, %bb.ej, %bb.ek, %bb.el
  %lpad.loopexit.split-lp2823 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.eq:                                            ; preds = %bb.eo
  %i.ri = landingpad { ptr, i32 }
          cleanup
  br label %bb.fq

bb.er:                                            ; preds = %.lr.ph2250, %bb.fk
  %.sroa.02041.02247 = phi ptr [ %i.rf, %.lr.ph2250 ], [ %i.tt, %bb.fk ] ; 2 uses
  %i.rj = load ptr, ptr %.sroa.02041.02247, align 8, !tbaa !36
  %.not2116 = icmp eq ptr %i.rj, %i.rh
  br i1 %.not2116, label %bb.fk, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.rk = load ptr, ptr %2, align 8, !tbaa !36    ; 5 uses
  store ptr %i.rk, ptr %65, align 8, !tbaa !36
  %i.rl = load i64, ptr %i.rk, align 8            ; 3 uses
  %i.rm = lshr i64 %i.rl, 40
  %i.rn = trunc nuw nsw i64 %i.rm to i32
  %i.ro = and i32 %i.rn, 1048575                  ; 3 uses
  %i.rp = icmp samesign ult i32 %i.ro, 1048574
  br i1 %i.rp, label %bb.et, label %bb.eu, !prof !39

bb.et:                                            ; preds = %bb.es
  %i.rq = add nuw nsw i32 %i.ro, 1
  %i.rr = zext nneg i32 %i.rq to i64
  %i.rs = shl nuw nsw i64 %i.rr, 40
  %i.rt = and i64 %i.rl, -1152920405095219201
  %i.ru = or i64 %i.rs, %i.rt
  store i64 %i.ru, ptr %i.rk, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit927

bb.eu:                                            ; preds = %bb.es
  %i.rv = icmp eq i32 %i.ro, 1048574
  br i1 %i.rv, label %bb.ev, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit927, !prof !38

bb.ev:                                            ; preds = %bb.eu
  %i.rw = or i64 %i.rl, 1152920405095219200
  store i64 %i.rw, ptr %i.rk, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.rk)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit927 unwind label %bb.fi

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit927: ; preds = %bb.eu, %bb.et, %bb.ev
  %i.rx = load ptr, ptr %i.hd, align 8, !tbaa !36 ; 7 uses
  %i.ry = load i64, ptr %i.rx, align 8            ; 4 uses
  %i.rz = lshr i64 %i.ry, 40
  %i.sa = trunc nuw nsw i64 %i.rz to i32
  %i.sb = and i32 %i.sa, 1048575                  ; 3 uses
  %i.sc = icmp samesign ult i32 %i.sb, 1048574
  br i1 %i.sc, label %bb.ew, label %bb.ex, !prof !39

bb.ew:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit927
  %i.sd = add nuw nsw i32 %i.sb, 1
  %i.se = zext nneg i32 %i.sd to i64
  %i.sf = shl nuw nsw i64 %i.se, 40
  %i.sg = and i64 %i.ry, -1152920405095219201
  %i.sh = or i64 %i.sf, %i.sg                     ; 2 uses
  store i64 %i.sh, ptr %i.rx, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit929

bb.ex:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit927
  %i.si = icmp eq i32 %i.sb, 1048574
  br i1 %i.si, label %bb.ey, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit929, !prof !38

bb.ey:                                            ; preds = %bb.ex
  %i.sj = or i64 %i.ry, 1152920405095219200
  store i64 %i.sj, ptr %i.rx, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.rx)
          to label %._ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit929_crit_edge unwind label %bb.fj

._ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit929_crit_edge: ; preds = %bb.ey
  %.pre2380.a = load i64, ptr %i.rx, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit929

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit929: ; preds = %._ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit929_crit_edge, %bb.ew, %bb.ex
  %i.sk = phi i64 [ %.pre2380.a, %._ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit929_crit_edge ], [ %i.sh, %bb.ew ], [ %i.ry, %bb.ex ] ; 3 uses
  %i.sl = and i64 %i.sk, 1152920405095219200
  %.not.i.i930 = icmp eq i64 %i.sl, 1152920405095219200
  br i1 %.not.i.i930, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit932, label %bb.ez, !prof !38

bb.ez:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit929
  %i.sm = add i64 %i.sk, 1152920405095219200
  %i.sn = and i64 %i.sm, 1152920405095219200      ; 2 uses
  %i.so = and i64 %i.sk, -1152920405095219201
  %i.sp = or disjoint i64 %i.sn, %i.so
  store i64 %i.sp, ptr %i.rx, align 8
  %i.sq = icmp eq i64 %i.sn, 0
  br i1 %i.sq, label %bb.fa, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit932, !prof !38

bb.fa:                                            ; preds = %bb.ez
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.rx)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit932 unwind label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.sr = landingpad { ptr, i32 }
          catch ptr null
  %i.ss = extractvalue { ptr, i32 } %i.sr, 0
  call void @__clang_call_terminate(ptr %i.ss) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit932: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit929, %bb.ez, %bb.fa
  %i.st = load ptr, ptr %65, align 8, !tbaa !36   ; 3 uses
  %i.su = load i64, ptr %i.st, align 8            ; 3 uses
  %i.sv = and i64 %i.su, 1152920405095219200
  %.not.i.i933 = icmp eq i64 %i.sv, 1152920405095219200
  br i1 %.not.i.i933, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit935, label %bb.fc, !prof !38

bb.fc:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit932
  %i.sw = add i64 %i.su, 1152920405095219200
  %i.sx = and i64 %i.sw, 1152920405095219200      ; 2 uses
  %i.sy = and i64 %i.su, -1152920405095219201
  %i.sz = or disjoint i64 %i.sx, %i.sy
  store i64 %i.sz, ptr %i.st, align 8
  %i.ta = icmp eq i64 %i.sx, 0
  br i1 %i.ta, label %bb.fd, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit935, !prof !38

bb.fd:                                            ; preds = %bb.fc
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.st)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit935 unwind label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.tb = landingpad { ptr, i32 }
          catch ptr null
  %i.tc = extractvalue { ptr, i32 } %i.tb, 0
  call void @__clang_call_terminate(ptr %i.tc) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit935: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit932, %bb.fc, %bb.fd
  %i.td = load ptr, ptr %i.hd, align 8, !tbaa !36 ; 5 uses
  store ptr %i.td, ptr %0, align 8, !tbaa !36
  %i.te = load i64, ptr %i.td, align 8            ; 3 uses
  %i.tf = lshr i64 %i.te, 40
  %i.tg = trunc nuw nsw i64 %i.tf to i32
  %i.th = and i32 %i.tg, 1048575                  ; 3 uses
  %i.ti = icmp samesign ult i32 %i.th, 1048574
  br i1 %i.ti, label %bb.ff, label %bb.fg, !prof !39

bb.ff:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit935
  %i.tj = add nuw nsw i32 %i.th, 1
  %i.tk = zext nneg i32 %i.tj to i64
  %i.tl = shl nuw nsw i64 %i.tk, 40
  %i.tm = and i64 %i.te, -1152920405095219201
  %i.tn = or i64 %i.tl, %i.tm
  store i64 %i.tn, ptr %i.td, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit937.thread

bb.fg:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit935
  %i.to = icmp eq i32 %i.th, 1048574
  br i1 %i.to, label %bb.fh, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit937.thread, !prof !38

bb.fh:                                            ; preds = %bb.fg
  %i.tp = or i64 %i.te, 1152920405095219200
  store i64 %i.tp, ptr %i.td, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.td)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit937.thread unwind label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.ev
  %i.tq = landingpad { ptr, i32 }
          cleanup
  br label %bb.fl

bb.fj:                                            ; preds = %bb.ey
  %i.tr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %65) #24
  br label %bb.fl

bb.fk:                                            ; preds = %bb.er
  %224 = load i64, ptr %.05382278.sroa.phi, align 8, !tbaa !122
  %i.ts = add i64 %224, 1
  store i64 %i.ts, ptr %.05382278.sroa.phi, align 8, !tbaa !122
  %i.tt = getelementptr inbounds nuw i8, ptr %.sroa.02041.02247, i64 8 ; 2 uses
  %.not2115 = icmp eq ptr %i.tt, %i.rg
  br i1 %.not2115, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit937.thread, label %bb.er

bb.fl:                                            ; preds = %bb.fj, %bb.fi
  %.pn731 = phi { ptr, i32 } [ %i.tq, %bb.fi ], [ %i.tr, %bb.fj ]
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %63) #24
  br label %bb.fq

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit937.thread: ; preds = %bb.fk, %bb.ep, %bb.fh, %bb.ff, %bb.fg
  %.not21152138 = phi i1 [ false, %bb.fh ], [ false, %bb.fg ], [ false, %bb.ff ], [ true, %bb.ep ], [ true, %bb.fk ]
  %spec.store.select = phi i32 [ 1, %bb.fh ], [ 1, %bb.fg ], [ 1, %bb.ff ], [ 0, %bb.ep ], [ 0, %bb.fk ]
  %i.tu = load ptr, ptr %63, align 8, !tbaa !141  ; 3 uses
  %i.tv = load ptr, ptr %i.nx, align 8, !tbaa !134 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.tu, %i.tv
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit937.thread, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ug, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i ], [ %i.tu, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit937.thread ] ; 2 uses
  %i.tw = load ptr, ptr %.05.i.i.i, align 8, !tbaa !36 ; 3 uses
  %i.tx = load i64, ptr %i.tw, align 8            ; 3 uses
  %i.ty = and i64 %i.tx, 1152920405095219200
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ty, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, label %bb.fm, !prof !38

bb.fm:                                            ; preds = %.lr.ph.i.i.i
  %i.tz = add i64 %i.tx, 1152920405095219200
  %i.ua = and i64 %i.tz, 1152920405095219200      ; 2 uses
  %i.ub = and i64 %i.tx, -1152920405095219201
  %i.uc = or disjoint i64 %i.ua, %i.ub
  store i64 %i.uc, ptr %i.tw, align 8
  %i.ud = icmp eq i64 %i.ua, 0
  br i1 %i.ud, label %bb.fn, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, !prof !38

bb.fn:                                            ; preds = %bb.fm
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.tw)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i unwind label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.ue = landingpad { ptr, i32 }
          catch ptr null
  %i.uf = extractvalue { ptr, i32 } %i.ue, 0
  call void @__clang_call_terminate(ptr %i.uf) #26
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i: ; preds = %bb.fn, %bb.fm, %.lr.ph.i.i.i
  %i.ug = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ug, %i.tv
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !5

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %63, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit937.thread
  %i.uh = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.tu, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit937.thread ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.uh, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, label %bb.fp

bb.fp:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i
  %i.ui = load ptr, ptr %i.ny, align 8, !tbaa !136
  %i.uj = ptrtoint ptr %i.ui to i64
  %i.uk = ptrtoint ptr %i.uh to i64
  %i.ul = sub i64 %i.uj, %i.uk
  call void @_ZdlPvm(ptr noundef nonnull %i.uh, i64 noundef %i.ul) #27
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, %bb.fp
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #24
  br i1 %.not21152138, label %.thread2055, label %.loopexit2118

bb.fq:                                            ; preds = %bb.fl, %bb.eq
  %.pn731.pn = phi { ptr, i32 } [ %.pn731, %bb.fl ], [ %i.ri, %bb.eq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #24
  br label %.loopexit.split-lp

bb.fr:                                            ; preds = %bb.en
  %i.um = load ptr, ptr %i.rb, align 8, !tbaa !134 ; 3 uses
  %i.un = load ptr, ptr %i.rc, align 8, !tbaa !136
  %.not.i938 = icmp eq ptr %i.um, %i.un
  br i1 %.not.i938, label %bb.fw, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.uo = load ptr, ptr %.sroa.02045.02261, align 8, !tbaa !36 ; 5 uses
  store ptr %i.uo, ptr %i.um, align 8, !tbaa !36
  %i.up = load i64, ptr %i.uo, align 8            ; 3 uses
  %i.uq = lshr i64 %i.up, 40
  %i.ur = trunc nuw nsw i64 %i.uq to i32
  %i.us = and i32 %i.ur, 1048575                  ; 3 uses
  %i.ut = icmp samesign ult i32 %i.us, 1048574
  br i1 %i.ut, label %bb.ft, label %bb.fu, !prof !39

bb.ft:                                            ; preds = %bb.fs
  %i.uu = add nuw nsw i32 %i.us, 1
  %i.uv = zext nneg i32 %i.uu to i64
  %i.uw = shl nuw nsw i64 %i.uv, 40
  %i.ux = and i64 %i.up, -1152920405095219201
  %i.uy = or i64 %i.uw, %i.ux
  store i64 %i.uy, ptr %i.uo, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i

bb.fu:                                            ; preds = %bb.fs
  %i.uz = icmp eq i32 %i.us, 1048574
  br i1 %i.uz, label %bb.fv, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i, !prof !38

bb.fv:                                            ; preds = %bb.fu
  %i.va = or i64 %i.up, 1152920405095219200
  store i64 %i.va, ptr %i.uo, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.uo)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i: ; preds = %bb.fv, %bb.fu, %bb.ft
  %i.vb = load ptr, ptr %i.rb, align 8, !tbaa !134
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 8
  store ptr %i.vc, ptr %i.rb, align 8, !tbaa !134
  br label %.thread2055

bb.fw:                                            ; preds = %bb.fr
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %.05382278.sroa.phi2847, ptr %i.um, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.02045.02261)
          to label %.thread2055 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread2055:                                      ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i, %bb.fw, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit
  %i.vd = getelementptr inbounds nuw i8, ptr %.sroa.02045.02261, i64 8 ; 2 uses
  %.not2114 = icmp eq ptr %i.vd, %i.ra
  br i1 %.not2114, label %._crit_edge2263, label %bb.em

._crit_edge2263:                                  ; preds = %.thread2055, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit
  br i1 %i.ql, label %bb.ei, label %bb.fx, !llvm.loop !585

bb.fx:                                            ; preds = %._crit_edge2263
  %.sroa.6.0..sroa.6.8. = load i64, ptr %.sroa.6, align 8, !tbaa !122 ; 4 uses
  %.sroa.0.0..sroa.0.0. = load i64, ptr %.sroa.0, align 16, !tbaa !122 ; 4 uses
  %i.ve = call i64 @llvm.umin.i64(i64 %.sroa.6.0..sroa.6.8., i64 %.sroa.0.0..sroa.0.0.) ; 2 uses
  %.not744.not = icmp ugt i64 %.sroa.0.0..sroa.0.0., %.sroa.6.0..sroa.6.8.
  br i1 %.not744.not, label %bb.gb, label %bb.gv

bb.fy:                                            ; preds = %bb.hj
  %i.vf = add nuw nsw i32 %i.zr, 1
  %i.vg = zext nneg i32 %i.vf to i64
  %i.vh = shl nuw nsw i64 %i.vg, 40
  %i.vi = and i64 %i.zo, -1152920405095219201
  %i.vj = or i64 %i.vh, %i.vi
  store i64 %i.vj, ptr %i.zn, align 8
  br label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit

bb.fz:                                            ; preds = %bb.hj
  %i.vk = icmp eq i32 %i.zr, 1048574
  br i1 %i.vk, label %bb.ga, label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit, !prof !38

bb.ga:                                            ; preds = %bb.fz
  %i.vl = or i64 %i.zo, 1152920405095219200
  store i64 %i.vl, ptr %i.zn, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.zn)
          to label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit unwind label %bb.iz

bb.gb:                                            ; preds = %bb.fx
  %i.vm = sub i64 %.sroa.0.0..sroa.0.0., %i.ve    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #24
  %i.vn = icmp ugt i64 %i.vm, 1152921504606846975
  br i1 %i.vn, label %bb.gc, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

bb.gc:                                            ; preds = %bb.gw, %bb.gb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.116) #29
          to label %.noexc944 unwind label %.loopexit.split-lp2123.loopexit.split-lp.loopexit.split-lp

.noexc944:                                        ; preds = %bb.gc
  unreachable

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %bb.gb
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %66, i8 0, i64 24, i1 false)
  %i.vo = shl nuw nsw i64 %i.vm, 3
  %i.vp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vo) #25
          to label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEC2EmRKS4_.exit.i unwind label %.loopexit.split-lp2123.loopexit.split-lp.loopexit.split-lp ; 4 uses

_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEC2EmRKS4_.exit.i: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  store ptr %i.vp, ptr %66, align 8, !tbaa !141
  store ptr %i.vp, ptr %i.nz, align 8, !tbaa !134
  %i.vq = getelementptr inbounds nuw [8 x i8], ptr %i.vp, i64 %i.vm
  store ptr %i.vq, ptr %i.oa, align 8, !tbaa !136
  %i.vr = invoke noundef ptr @_ZSt18__do_uninit_fill_nIPN4cvc58internal12NodeTemplateILb1EEEmS3_ET_S5_T0_RKT1_(ptr noundef nonnull %i.vp, i64 noundef %i.vm, ptr noundef nonnull align 8 dereferenceable(8) %59)
          to label %bb.gf unwind label %bb.gd

bb.gd:                                            ; preds = %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEC2EmRKS4_.exit.i.1, %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEC2EmRKS4_.exit.i
  %i.vs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vt = load ptr, ptr %66, align 8, !tbaa !141  ; 3 uses
  %.not.i.i.i943 = icmp eq ptr %i.vt, null
  br i1 %.not.i.i.i943, label %.body946, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.vu = load ptr, ptr %i.oa, align 8, !tbaa !136
  %i.vv = ptrtoint ptr %i.vu to i64
  %i.vw = ptrtoint ptr %i.vt to i64
  %i.vx = sub i64 %i.vv, %i.vw
  call void @_ZdlPvm(ptr noundef nonnull %i.vt, i64 noundef %i.vx) #27
  br label %.body946

bb.gf:                                            ; preds = %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEC2EmRKS4_.exit.i
  store ptr %i.vr, ptr %i.nz, align 8, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #24
  invoke void @_ZN4cvc58internal6theory7strings4Word13mkWordFlattenERKSt6vectorINS0_12NodeTemplateILb1EEESaIS6_EE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %67, ptr noundef nonnull align 8 dereferenceable(24) %66)
          to label %bb.gg unwind label %bb.gs

bb.gg:                                            ; preds = %bb.gf
  %i.vy = load ptr, ptr %i.ob, align 8, !tbaa !134 ; 3 uses
  %i.vz = load ptr, ptr %i.oc, align 16, !tbaa !136
  %.not.i.i948 = icmp eq ptr %i.vy, %i.vz
  br i1 %.not.i.i948, label %bb.gl, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.wa = load ptr, ptr %67, align 8, !tbaa !36   ; 5 uses
  store ptr %i.wa, ptr %i.vy, align 8, !tbaa !36
  %i.wb = load i64, ptr %i.wa, align 8            ; 3 uses
  %i.wc = lshr i64 %i.wb, 40
  %i.wd = trunc nuw nsw i64 %i.wc to i32
  %i.we = and i32 %i.wd, 1048575                  ; 3 uses
  %i.wf = icmp samesign ult i32 %i.we, 1048574
  br i1 %i.wf, label %bb.gi, label %bb.gj, !prof !39

bb.gi:                                            ; preds = %bb.gh
  %i.wg = add nuw nsw i32 %i.we, 1
  %i.wh = zext nneg i32 %i.wg to i64
  %i.wi = shl nuw nsw i64 %i.wh, 40
  %i.wj = and i64 %i.wb, -1152920405095219201
  %i.wk = or i64 %i.wi, %i.wj
  store i64 %i.wk, ptr %i.wa, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i

bb.gj:                                            ; preds = %bb.gh
  %i.wl = icmp eq i32 %i.we, 1048574
  br i1 %i.wl, label %bb.gk, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i, !prof !38

bb.gk:                                            ; preds = %bb.gj
  %i.wm = or i64 %i.wb, 1152920405095219200
  store i64 %i.wm, ptr %i.wa, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.wa)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i unwind label %bb.gt

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i: ; preds = %bb.gk, %bb.gj, %bb.gi
  %i.wn = load ptr, ptr %i.ob, align 8, !tbaa !134
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 8
  store ptr %i.wo, ptr %i.ob, align 8, !tbaa !134
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit

bb.gl:                                            ; preds = %bb.gg
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %62, ptr %i.vy, ptr noundef nonnull align 8 dereferenceable(8) %67)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit unwind label %bb.gt

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i, %bb.gl
  %i.wp = load ptr, ptr %67, align 8, !tbaa !36   ; 3 uses
  %i.wq = load i64, ptr %i.wp, align 8            ; 3 uses
  %i.wr = and i64 %i.wq, 1152920405095219200
  %.not.i.i951 = icmp eq i64 %i.wr, 1152920405095219200
  br i1 %.not.i.i951, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit953, label %bb.gm, !prof !38

bb.gm:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit
  %i.ws = add i64 %i.wq, 1152920405095219200
  %i.wt = and i64 %i.ws, 1152920405095219200      ; 2 uses
  %i.wu = and i64 %i.wq, -1152920405095219201
  %i.wv = or disjoint i64 %i.wt, %i.wu
  store i64 %i.wv, ptr %i.wp, align 8
  %i.ww = icmp eq i64 %i.wt, 0
  br i1 %i.ww, label %bb.gn, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit953, !prof !38

bb.gn:                                            ; preds = %bb.gm
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.wp)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit953 unwind label %bb.go

bb.go:                                            ; preds = %bb.hf, %bb.gn
  %i.wx = landingpad { ptr, i32 }
          catch ptr null
  %i.wy = extractvalue { ptr, i32 } %i.wx, 0
  call void @__clang_call_terminate(ptr %i.wy) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit953: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit, %bb.gm, %bb.gn
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #24
  %i.wz = load ptr, ptr %66, align 8, !tbaa !141  ; 3 uses
  %i.xa = load ptr, ptr %i.nz, align 8, !tbaa !134 ; 2 uses
  %.not4.i.i.i954 = icmp eq ptr %i.wz, %i.xa
  br i1 %.not4.i.i.i954, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i962, label %.lr.ph.i.i.i955

.lr.ph.i.i.i955:                                  ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit953, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i958
  %.05.i.i.i956 = phi ptr [ %i.xk, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i958 ], [ %i.wz, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit953 ] ; 2 uses
  %i.xb = load ptr, ptr %.05.i.i.i956, align 8, !tbaa !36 ; 3 uses
  %i.xc = load i64, ptr %i.xb, align 8            ; 3 uses
  %i.xd = and i64 %i.xc, 1152920405095219200
  %.not.i.i.i.i.i.i957 = icmp eq i64 %i.xd, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i957, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i958, label %bb.gp, !prof !38

bb.gp:                                            ; preds = %.lr.ph.i.i.i955
  %i.xe = add i64 %i.xc, 1152920405095219200
  %i.xf = and i64 %i.xe, 1152920405095219200      ; 2 uses
  %i.xg = and i64 %i.xc, -1152920405095219201
  %i.xh = or disjoint i64 %i.xf, %i.xg
  store i64 %i.xh, ptr %i.xb, align 8
  %i.xi = icmp eq i64 %i.xf, 0
  br i1 %i.xi, label %bb.gq, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i958, !prof !38

bb.gq:                                            ; preds = %bb.gp
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.xb)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i958 unwind label %.loopexit.split-lp2320.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp2320.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.hh, %bb.gq
  %lpad.loopexit.split-lp2829 = landingpad { ptr, i32 }
          catch ptr null
  %i.xj = extractvalue { ptr, i32 } %lpad.loopexit.split-lp2829, 0
  call void @__clang_call_terminate(ptr %i.xj) #26
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i958: ; preds = %bb.gq, %bb.gp, %.lr.ph.i.i.i955
  %i.xk = getelementptr inbounds nuw i8, ptr %.05.i.i.i956, i64 8 ; 2 uses
  %.not.i.i.i959 = icmp eq ptr %i.xk, %i.xa
  br i1 %.not.i.i.i959, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i960, label %.lr.ph.i.i.i955, !llvm.loop !5

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i960: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i958
  %.pr.i961 = load ptr, ptr %66, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i962

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i962: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i960, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit953
  %i.xl = phi ptr [ %.pr.i961, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i960 ], [ %i.wz, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit953 ] ; 3 uses
  %.not.i.i1.i963 = icmp eq ptr %i.xl, null
  br i1 %.not.i.i1.i963, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit965, label %bb.gr

bb.gr:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i962
  %i.xm = load ptr, ptr %i.oa, align 8, !tbaa !136
  %i.xn = ptrtoint ptr %i.xm to i64
  %i.xo = ptrtoint ptr %i.xl to i64
  %i.xp = sub i64 %i.xn, %i.xo
  call void @_ZdlPvm(ptr noundef nonnull %i.xl, i64 noundef %i.xp) #27
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit965

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit965: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i962, %bb.gr
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #24
  br label %bb.gv

.loopexit.split-lp2123.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.1, %bb.gc
  %lpad.loopexit.split-lp2832 = landingpad { ptr, i32 }
          cleanup
  br label %.body946

bb.gs:                                            ; preds = %bb.gx, %bb.gf
  %i.xq = landingpad { ptr, i32 }
          cleanup
  br label %bb.gu

bb.gt:                                            ; preds = %bb.hd, %bb.hb, %bb.gl, %bb.gk
  %i.xr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %67) #24
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %bb.gs
  %.pn745 = phi { ptr, i32 } [ %i.xr, %bb.gt ], [ %i.xq, %bb.gs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #24
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %66) #24
  br label %.body946

.body946:                                         ; preds = %.loopexit.split-lp2123.loopexit.split-lp.loopexit.split-lp, %bb.ge, %bb.gd, %bb.gu
  %.pn745.pn = phi { ptr, i32 } [ %.pn745, %bb.gu ], [ %i.vs, %bb.gd ], [ %i.vs, %bb.ge ], [ %lpad.loopexit.split-lp2832, %.loopexit.split-lp2123.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #24
  br label %.loopexit.split-lp

bb.gv:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit965, %bb.fx
  %.not744.1.not = icmp ugt i64 %.sroa.6.0..sroa.6.8., %.sroa.0.0..sroa.0.0.
  br i1 %.not744.1.not, label %bb.gw, label %bb.hj

bb.gw:                                            ; preds = %bb.gv
  %i.xs = sub i64 %.sroa.6.0..sroa.6.8., %i.ve    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #24
  %i.xt = icmp ugt i64 %i.xs, 1152921504606846975
  br i1 %i.xt, label %bb.gc, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.1

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.1: ; preds = %bb.gw
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %66, i8 0, i64 24, i1 false)
  %i.xu = shl nuw nsw i64 %i.xs, 3
  %i.xv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.xu) #25
          to label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEC2EmRKS4_.exit.i.1 unwind label %.loopexit.split-lp2123.loopexit.split-lp.loopexit.split-lp ; 4 uses

_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEC2EmRKS4_.exit.i.1: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.1
  store ptr %i.xv, ptr %66, align 8, !tbaa !141
  store ptr %i.xv, ptr %i.nz, align 8, !tbaa !134
  %i.xw = getelementptr inbounds nuw [8 x i8], ptr %i.xv, i64 %i.xs
  store ptr %i.xw, ptr %i.oa, align 8, !tbaa !136
  %i.xx = invoke noundef ptr @_ZSt18__do_uninit_fill_nIPN4cvc58internal12NodeTemplateILb1EEEmS3_ET_S5_T0_RKT1_(ptr noundef nonnull %i.xv, i64 noundef %i.xs, ptr noundef nonnull align 8 dereferenceable(8) %59)
          to label %bb.gx unwind label %bb.gd

bb.gx:                                            ; preds = %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEC2EmRKS4_.exit.i.1
  store ptr %i.xx, ptr %i.nz, align 8, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #24
  invoke void @_ZN4cvc58internal6theory7strings4Word13mkWordFlattenERKSt6vectorINS0_12NodeTemplateILb1EEESaIS6_EE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %67, ptr noundef nonnull align 8 dereferenceable(24) %66)
          to label %bb.gy unwind label %bb.gs

bb.gy:                                            ; preds = %bb.gx
  %i.xy = load ptr, ptr %i.od, align 16, !tbaa !134 ; 3 uses
  %i.xz = load ptr, ptr %i.oe, align 8, !tbaa !136
  %.not.i.i948.1 = icmp eq ptr %i.xy, %i.xz
  br i1 %.not.i.i948.1, label %bb.hd, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.ya = load ptr, ptr %67, align 8, !tbaa !36   ; 5 uses
  store ptr %i.ya, ptr %i.xy, align 8, !tbaa !36
  %i.yb = load i64, ptr %i.ya, align 8            ; 3 uses
  %i.yc = lshr i64 %i.yb, 40
  %i.yd = trunc nuw nsw i64 %i.yc to i32
  %i.ye = and i32 %i.yd, 1048575                  ; 3 uses
  %i.yf = icmp samesign ult i32 %i.ye, 1048574
  br i1 %i.yf, label %bb.hc, label %bb.ha, !prof !39

bb.ha:                                            ; preds = %bb.gz
  %i.yg = icmp eq i32 %i.ye, 1048574
  br i1 %i.yg, label %bb.hb, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i.1, !prof !38

bb.hb:                                            ; preds = %bb.ha
  %i.yh = or i64 %i.yb, 1152920405095219200
  store i64 %i.yh, ptr %i.ya, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ya)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i.1 unwind label %bb.gt

bb.hc:                                            ; preds = %bb.gz
  %i.yi = add nuw nsw i32 %i.ye, 1
  %i.yj = zext nneg i32 %i.yi to i64
  %i.yk = shl nuw nsw i64 %i.yj, 40
  %i.yl = and i64 %i.yb, -1152920405095219201
  %i.ym = or i64 %i.yk, %i.yl
  store i64 %i.ym, ptr %i.ya, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i.1

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i.1: ; preds = %bb.hc, %bb.hb, %bb.ha
  %i.yn = load ptr, ptr %i.od, align 16, !tbaa !134
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 8
  store ptr %i.yo, ptr %i.od, align 16, !tbaa !134
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit.1

bb.hd:                                            ; preds = %bb.gy
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.of, ptr %i.xy, ptr noundef nonnull align 8 dereferenceable(8) %67)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit.1 unwind label %bb.gt

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit.1: ; preds = %bb.hd, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i.1
  %i.yp = load ptr, ptr %67, align 8, !tbaa !36   ; 3 uses
  %i.yq = load i64, ptr %i.yp, align 8            ; 3 uses
  %i.yr = and i64 %i.yq, 1152920405095219200
  %.not.i.i951.1 = icmp eq i64 %i.yr, 1152920405095219200
  br i1 %.not.i.i951.1, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit953.1, label %bb.he, !prof !38

bb.he:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit.1
  %i.ys = add i64 %i.yq, 1152920405095219200
  %i.yt = and i64 %i.ys, 1152920405095219200      ; 2 uses
  %i.yu = and i64 %i.yq, -1152920405095219201
  %i.yv = or disjoint i64 %i.yt, %i.yu
  store i64 %i.yv, ptr %i.yp, align 8
  %i.yw = icmp eq i64 %i.yt, 0
  br i1 %i.yw, label %bb.hf, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit953.1, !prof !38

bb.hf:                                            ; preds = %bb.he
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.yp)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit953.1 unwind label %bb.go

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit953.1: ; preds = %bb.hf, %bb.he, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit.1
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #24
  %i.yx = load ptr, ptr %66, align 8, !tbaa !141  ; 3 uses
  %i.yy = load ptr, ptr %i.nz, align 8, !tbaa !134 ; 2 uses
  %.not4.i.i.i954.1 = icmp eq ptr %i.yx, %i.yy
  br i1 %.not4.i.i.i954.1, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i962.1, label %.lr.ph.i.i.i955.1

.lr.ph.i.i.i955.1:                                ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit953.1, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i958.1
  %.05.i.i.i956.1 = phi ptr [ %i.zh, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i958.1 ], [ %i.yx, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit953.1 ] ; 2 uses
  %i.yz = load ptr, ptr %.05.i.i.i956.1, align 8, !tbaa !36 ; 3 uses
  %i.za = load i64, ptr %i.yz, align 8            ; 3 uses
  %i.zb = and i64 %i.za, 1152920405095219200
  %.not.i.i.i.i.i.i957.1 = icmp eq i64 %i.zb, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i957.1, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i958.1, label %bb.hg, !prof !38

bb.hg:                                            ; preds = %.lr.ph.i.i.i955.1
  %i.zc = add i64 %i.za, 1152920405095219200
  %i.zd = and i64 %i.zc, 1152920405095219200      ; 2 uses
  %i.ze = and i64 %i.za, -1152920405095219201
  %i.zf = or disjoint i64 %i.zd, %i.ze
  store i64 %i.zf, ptr %i.yz, align 8
  %i.zg = icmp eq i64 %i.zd, 0
  br i1 %i.zg, label %bb.hh, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i958.1, !prof !38

bb.hh:                                            ; preds = %bb.hg
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.yz)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i958.1 unwind label %.loopexit.split-lp2320.loopexit.split-lp.loopexit.split-lp

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i958.1: ; preds = %bb.hh, %bb.hg, %.lr.ph.i.i.i955.1
  %i.zh = getelementptr inbounds nuw i8, ptr %.05.i.i.i956.1, i64 8 ; 2 uses
  %.not.i.i.i959.1 = icmp eq ptr %i.zh, %i.yy
  br i1 %.not.i.i.i959.1, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i960.1, label %.lr.ph.i.i.i955.1, !llvm.loop !5

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i960.1: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i958.1
  %.pr.i961.1 = load ptr, ptr %66, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i962.1

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i962.1: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i960.1, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit953.1
  %i.zi = phi ptr [ %.pr.i961.1, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i960.1 ], [ %i.yx, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit953.1 ] ; 3 uses
  %.not.i.i1.i963.1 = icmp eq ptr %i.zi, null
  br i1 %.not.i.i1.i963.1, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit965.1, label %bb.hi

bb.hi:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i962.1
  %i.zj = load ptr, ptr %i.oa, align 8, !tbaa !136
  %i.zk = ptrtoint ptr %i.zj to i64
  %i.zl = ptrtoint ptr %i.zi to i64
  %i.zm = sub i64 %i.zk, %i.zl
  call void @_ZdlPvm(ptr noundef nonnull %i.zi, i64 noundef %i.zm) #27
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit965.1

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit965.1: ; preds = %bb.hi, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i962.1
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #24
  br label %bb.hj

bb.hj:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit965.1, %bb.gv
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #24
  %i.zn = load ptr, ptr %55, align 8, !tbaa !142  ; 5 uses
  store ptr %i.zn, ptr %69, align 8, !tbaa !142
  %i.zo = load i64, ptr %i.zn, align 8            ; 3 uses
  %i.zp = lshr i64 %i.zo, 40
  %i.zq = trunc nuw nsw i64 %i.zp to i32
  %i.zr = and i32 %i.zq, 1048575                  ; 3 uses
  %i.zs = icmp samesign ult i32 %i.zr, 1048574
  br i1 %i.zs, label %bb.fy, label %bb.fz, !prof !39

_ZN4cvc58internal8TypeNodeC2ERKS1_.exit:          ; preds = %bb.fz, %bb.fy, %bb.ga
  invoke void @_ZN4cvc58internal6theory7strings5utils8mkConcatERKSt6vectorINS0_12NodeTemplateILb1EEESaIS6_EENS0_8TypeNodeE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %68, ptr noundef nonnull align 8 dereferenceable(24) %indvars.iv.sroa.phi, ptr noundef nonnull align 8 %69)
          to label %bb.hk unwind label %bb.ja

bb.hk:                                            ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit
  %i.zt = load ptr, ptr %69, align 8, !tbaa !142  ; 3 uses
  %i.zu = load i64, ptr %i.zt, align 8            ; 3 uses
  %i.zv = and i64 %i.zu, 1152920405095219200
  %.not.i.i966 = icmp eq i64 %i.zv, 1152920405095219200
  br i1 %.not.i.i966, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, label %bb.hl, !prof !38

bb.hl:                                            ; preds = %bb.hk
  %i.zw = add i64 %i.zu, 1152920405095219200
  %i.zx = and i64 %i.zw, 1152920405095219200      ; 2 uses
  %i.zy = and i64 %i.zu, -1152920405095219201
  %i.zz = or disjoint i64 %i.zx, %i.zy
  store i64 %i.zz, ptr %i.zt, align 8
  %i.aaa = icmp eq i64 %i.zx, 0
  br i1 %i.aaa, label %bb.hm, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, !prof !38

bb.hm:                                            ; preds = %bb.hl
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.zt)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit unwind label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.aab = landingpad { ptr, i32 }
          catch ptr null
  %i.aac = extractvalue { ptr, i32 } %i.aab, 0
  call void @__clang_call_terminate(ptr %i.aac) #26
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit:              ; preds = %bb.hk, %bb.hl, %bb.hm
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #24
  %i.aad = trunc nuw nsw i64 %indvars.iv to i32
  %i.aae = xor i32 %i.aad, 1                      ; 2 uses
  %i.aaf = load ptr, ptr %55, align 8, !tbaa !142 ; 5 uses
  store ptr %i.aaf, ptr %71, align 8, !tbaa !142
  %i.aag = load i64, ptr %i.aaf, align 8          ; 3 uses
  %i.aah = lshr i64 %i.aag, 40
  %i.aai = trunc nuw nsw i64 %i.aah to i32
  %i.aaj = and i32 %i.aai, 1048575                ; 3 uses
  %i.aak = icmp samesign ult i32 %i.aaj, 1048574
  br i1 %i.aak, label %bb.ho, label %bb.hp, !prof !39

bb.ho:                                            ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit
  %i.aal = add nuw nsw i32 %i.aaj, 1
end_hunk_1
begin_hunk_2_@_ZNK4cvc58internal6theory11quantifiers16ExtendedRewriter22extendedRewriteStringsERKNS0_12NodeTemplateILb1EEE:bb.a
  %i.afb = icmp samesign ult i32 %i.afa, 1048574
  br i1 %i.afb, label %bb.iq, label %bb.ir, !prof !39

bb.iq:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit993
  %i.afc = add nuw nsw i32 %i.afa, 1
  %i.afd = zext nneg i32 %i.afc to i64
  %i.afe = shl nuw nsw i64 %i.afd, 40
  %i.aff = and i64 %i.aex, -1152920405095219201
  %i.afg = or i64 %i.afe, %i.aff                  ; 2 uses
  store i64 %i.afg, ptr %i.aew, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit995

bb.ir:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit993
  %i.afh = icmp eq i32 %i.afa, 1048574
  br i1 %i.afh, label %bb.is, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit995, !prof !38

bb.is:                                            ; preds = %bb.ir
  %i.afi = or i64 %i.aex, 1152920405095219200
  store i64 %i.afi, ptr %i.aew, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aew)
          to label %._ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit995_crit_edge unwind label %bb.ji

._ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit995_crit_edge: ; preds = %bb.is
  %.pre2383.a = load i64, ptr %i.aew, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit995

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit995: ; preds = %._ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit995_crit_edge, %bb.iq, %bb.ir
  %i.afj = phi i64 [ %.pre2383.a, %._ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit995_crit_edge ], [ %i.afg, %bb.iq ], [ %i.aex, %bb.ir ] ; 3 uses
  %i.afk = and i64 %i.afj, 1152920405095219200
  %.not.i.i996 = icmp eq i64 %i.afk, 1152920405095219200
  br i1 %.not.i.i996, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit998, label %bb.it, !prof !38

bb.it:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit995
  %i.afl = add i64 %i.afj, 1152920405095219200
  %i.afm = and i64 %i.afl, 1152920405095219200    ; 2 uses
  %i.afn = and i64 %i.afj, -1152920405095219201
  %i.afo = or disjoint i64 %i.afm, %i.afn
  store i64 %i.afo, ptr %i.aew, align 8
  %i.afp = icmp eq i64 %i.afm, 0
  br i1 %i.afp, label %bb.iu, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit998, !prof !38

bb.iu:                                            ; preds = %bb.it
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aew)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit998 unwind label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.afq = landingpad { ptr, i32 }
          catch ptr null
  %i.afr = extractvalue { ptr, i32 } %i.afq, 0
  call void @__clang_call_terminate(ptr %i.afr) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit998: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit995, %bb.it, %bb.iu
  %i.afs = load ptr, ptr %73, align 8, !tbaa !36  ; 3 uses
  %i.aft = load i64, ptr %i.afs, align 8          ; 3 uses
  %i.afu = and i64 %i.aft, 1152920405095219200
  %.not.i.i999 = icmp eq i64 %i.afu, 1152920405095219200
  br i1 %.not.i.i999, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1001, label %bb.iw, !prof !38

bb.iw:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit998
  %i.afv = add i64 %i.aft, 1152920405095219200
  %i.afw = and i64 %i.afv, 1152920405095219200    ; 2 uses
  %i.afx = and i64 %i.aft, -1152920405095219201
  %i.afy = or disjoint i64 %i.afw, %i.afx
  store i64 %i.afy, ptr %i.afs, align 8
  %i.afz = icmp eq i64 %i.afw, 0
  br i1 %i.afz, label %bb.ix, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1001, !prof !38

bb.ix:                                            ; preds = %bb.iw
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.afs)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1001 unwind label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.aga = landingpad { ptr, i32 }
          catch ptr null
  %i.agb = extractvalue { ptr, i32 } %i.aga, 0
  call void @__clang_call_terminate(ptr %i.agb) #26
  unreachable

bb.iz:                                            ; preds = %bb.ga
  %i.agc = landingpad { ptr, i32 }
          cleanup
  br label %bb.jx

bb.ja:                                            ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit
  %i.agd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %69) #24
  br label %bb.jx

bb.jb:                                            ; preds = %bb.hq
  %i.age = landingpad { ptr, i32 }
          cleanup
  br label %bb.jw

bb.jc:                                            ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit969
  %i.agf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %71) #24
  br label %bb.jw

bb.jd:                                            ; preds = %bb.hx, %_ZN4cvc58internal8TypeNodeD2Ev.exit972
  %i.agg = landingpad { ptr, i32 }
          cleanup
  br label %bb.jf

bb.je:                                            ; preds = %bb.ib, %bb.hy
  %i.agh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %72) #24
  br label %bb.jf

bb.jf:                                            ; preds = %bb.je, %bb.jd
  %.pn736 = phi { ptr, i32 } [ %i.agh, %bb.je ], [ %i.agg, %bb.jd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #24
  br label %.body989

bb.jg:                                            ; preds = %bb.ij
  %i.agi = landingpad { ptr, i32 }
          cleanup
  br label %.body989

bb.jh:                                            ; preds = %bb.ip
  %i.agj = landingpad { ptr, i32 }
          cleanup
  br label %bb.jj

bb.ji:                                            ; preds = %bb.is
  %i.agk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %73) #24
  br label %bb.jj

bb.jj:                                            ; preds = %bb.ji, %bb.jh
  %.pn738.pn = phi { ptr, i32 } [ %i.agk, %bb.ji ], [ %i.agj, %bb.jh ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #24
  br label %.body989

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1001: ; preds = %bb.ix, %bb.iw, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit998, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit986
  %.5512 = phi i32 [ 0, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit986 ], [ 1, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit998 ], [ 1, %bb.iw ], [ 1, %bb.ix ]
  %i.agl = load ptr, ptr %70, align 8, !tbaa !36  ; 3 uses
  %i.agm = load i64, ptr %i.agl, align 8          ; 3 uses
  %i.agn = and i64 %i.agm, 1152920405095219200
  %.not.i.i1002 = icmp eq i64 %i.agn, 1152920405095219200
  br i1 %.not.i.i1002, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1004, label %bb.jk, !prof !38

bb.jk:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1001
  %i.ago = add i64 %i.agm, 1152920405095219200
  %i.agp = and i64 %i.ago, 1152920405095219200    ; 2 uses
  %i.agq = and i64 %i.agm, -1152920405095219201
  %i.agr = or disjoint i64 %i.agp, %i.agq
  store i64 %i.agr, ptr %i.agl, align 8
  %i.ags = icmp eq i64 %i.agp, 0
  br i1 %i.ags, label %bb.jl, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1004, !prof !38

bb.jl:                                            ; preds = %bb.jk
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.agl)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1004 unwind label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.agt = landingpad { ptr, i32 }
          catch ptr null
  %i.agu = extractvalue { ptr, i32 } %i.agt, 0
  call void @__clang_call_terminate(ptr %i.agu) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1004: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1001, %bb.jk, %bb.jl
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #24
  %i.agv = load ptr, ptr %68, align 8, !tbaa !36  ; 3 uses
  %i.agw = load i64, ptr %i.agv, align 8          ; 3 uses
  %i.agx = and i64 %i.agw, 1152920405095219200
  %.not.i.i1005 = icmp eq i64 %i.agx, 1152920405095219200
  br i1 %.not.i.i1005, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1007, label %bb.jn, !prof !38

bb.jn:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1004
  %i.agy = add i64 %i.agw, 1152920405095219200
  %i.agz = and i64 %i.agy, 1152920405095219200    ; 2 uses
  %i.aha = and i64 %i.agw, -1152920405095219201
  %i.ahb = or disjoint i64 %i.agz, %i.aha
  store i64 %i.ahb, ptr %i.agv, align 8
  %i.ahc = icmp eq i64 %i.agz, 0
  br i1 %i.ahc, label %bb.jo, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1007, !prof !38

bb.jo:                                            ; preds = %bb.jn
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.agv)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1007 unwind label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.ahd = landingpad { ptr, i32 }
          catch ptr null
  %i.ahe = extractvalue { ptr, i32 } %i.ahd, 0
  call void @__clang_call_terminate(ptr %i.ahe) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1007: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1004, %bb.jn, %bb.jo
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #24
  br label %.loopexit2118

.loopexit2118:                                    ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1007
  %.6513 = phi i32 [ %.5512, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1007 ], [ %spec.store.select, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.ahf = load ptr, ptr %i.og, align 8, !tbaa !141 ; 3 uses
  %i.ahg = load ptr, ptr %i.oh, align 16, !tbaa !134 ; 2 uses
  %.not4.i.i.i1008 = icmp eq ptr %i.ahf, %i.ahg
  br i1 %.not4.i.i.i1008, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1016, label %.lr.ph.i.i.i1009

.lr.ph.i.i.i1009:                                 ; preds = %.loopexit2118, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1012
  %.05.i.i.i1010 = phi ptr [ %i.ahq, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1012 ], [ %i.ahf, %.loopexit2118 ] ; 2 uses
  %i.ahh = load ptr, ptr %.05.i.i.i1010, align 8, !tbaa !36 ; 3 uses
  %i.ahi = load i64, ptr %i.ahh, align 8          ; 3 uses
  %i.ahj = and i64 %i.ahi, 1152920405095219200
  %.not.i.i.i.i.i.i1011 = icmp eq i64 %i.ahj, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i1011, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1012, label %bb.jq, !prof !38

bb.jq:                                            ; preds = %.lr.ph.i.i.i1009
  %i.ahk = add i64 %i.ahi, 1152920405095219200
  %i.ahl = and i64 %i.ahk, 1152920405095219200    ; 2 uses
  %i.ahm = and i64 %i.ahi, -1152920405095219201
  %i.ahn = or disjoint i64 %i.ahl, %i.ahm
  store i64 %i.ahn, ptr %i.ahh, align 8
  %i.aho = icmp eq i64 %i.ahl, 0
  br i1 %i.aho, label %bb.jr, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1012, !prof !38

bb.jr:                                            ; preds = %bb.jq
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ahh)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1012 unwind label %.loopexit.split-lp2325.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp2325.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ju, %bb.jr
  %lpad.loopexit.split-lp2826 = landingpad { ptr, i32 }
          catch ptr null
  %i.ahp = extractvalue { ptr, i32 } %lpad.loopexit.split-lp2826, 0
  call void @__clang_call_terminate(ptr %i.ahp) #26
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1012: ; preds = %bb.jr, %bb.jq, %.lr.ph.i.i.i1009
  %i.ahq = getelementptr inbounds nuw i8, ptr %.05.i.i.i1010, i64 8 ; 2 uses
  %.not.i.i.i1013 = icmp eq ptr %i.ahq, %i.ahg
  br i1 %.not.i.i.i1013, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i1014, label %.lr.ph.i.i.i1009, !llvm.loop !5

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i1014: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1012
  %.pr.i1015 = load ptr, ptr %i.og, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1016

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1016: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i1014, %.loopexit2118
  %i.ahr = phi ptr [ %.pr.i1015, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i1014 ], [ %i.ahf, %.loopexit2118 ] ; 3 uses
  %.not.i.i1.i1017 = icmp eq ptr %i.ahr, null
  br i1 %.not.i.i1.i1017, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1019, label %bb.js

bb.js:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1016
  %i.ahs = load ptr, ptr %i.oi, align 8, !tbaa !136
  %i.aht = ptrtoint ptr %i.ahs to i64
  %i.ahu = ptrtoint ptr %i.ahr to i64
  %i.ahv = sub i64 %i.aht, %i.ahu
  call void @_ZdlPvm(ptr noundef nonnull %i.ahr, i64 noundef %i.ahv) #27
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1019

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1019: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1016, %bb.js
  %i.ahw = load ptr, ptr %62, align 16, !tbaa !141 ; 3 uses
  %i.ahx = load ptr, ptr %i.oj, align 8, !tbaa !134 ; 2 uses
  %.not4.i.i.i1008.1 = icmp eq ptr %i.ahw, %i.ahx
  br i1 %.not4.i.i.i1008.1, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1016.1, label %.lr.ph.i.i.i1009.1

.lr.ph.i.i.i1009.1:                               ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1019, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1012.1
  %.05.i.i.i1010.1 = phi ptr [ %i.aig, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1012.1 ], [ %i.ahw, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1019 ] ; 2 uses
  %i.ahy = load ptr, ptr %.05.i.i.i1010.1, align 8, !tbaa !36 ; 3 uses
  %i.ahz = load i64, ptr %i.ahy, align 8          ; 3 uses
  %i.aia = and i64 %i.ahz, 1152920405095219200
  %.not.i.i.i.i.i.i1011.1 = icmp eq i64 %i.aia, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i1011.1, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1012.1, label %bb.jt, !prof !38

bb.jt:                                            ; preds = %.lr.ph.i.i.i1009.1
  %i.aib = add i64 %i.ahz, 1152920405095219200
  %i.aic = and i64 %i.aib, 1152920405095219200    ; 2 uses
  %i.aid = and i64 %i.ahz, -1152920405095219201
  %i.aie = or disjoint i64 %i.aic, %i.aid
  store i64 %i.aie, ptr %i.ahy, align 8
  %i.aif = icmp eq i64 %i.aic, 0
  br i1 %i.aif, label %bb.ju, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1012.1, !prof !38

bb.ju:                                            ; preds = %bb.jt
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ahy)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1012.1 unwind label %.loopexit.split-lp2325.loopexit.split-lp.loopexit.split-lp

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1012.1: ; preds = %bb.ju, %bb.jt, %.lr.ph.i.i.i1009.1
  %i.aig = getelementptr inbounds nuw i8, ptr %.05.i.i.i1010.1, i64 8 ; 2 uses
  %.not.i.i.i1013.1 = icmp eq ptr %i.aig, %i.ahx
  br i1 %.not.i.i.i1013.1, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i1014.1, label %.lr.ph.i.i.i1009.1, !llvm.loop !5

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i1014.1: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1012.1
  %.pr.i1015.1 = load ptr, ptr %62, align 16, !tbaa !141
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1016.1

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1016.1: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i1014.1, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1019
  %i.aih = phi ptr [ %.pr.i1015.1, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i1014.1 ], [ %i.ahw, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1019 ] ; 3 uses
  %.not.i.i1.i1017.1 = icmp eq ptr %i.aih, null
  br i1 %.not.i.i1.i1017.1, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1019.1, label %bb.jv

bb.jv:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1016.1
  %i.aii = load ptr, ptr %i.ok, align 16, !tbaa !136
  %i.aij = ptrtoint ptr %i.aii to i64
  %i.aik = ptrtoint ptr %i.aih to i64
  %i.ail = sub i64 %i.aij, %i.aik
  call void @_ZdlPvm(ptr noundef nonnull %i.aih, i64 noundef %i.ail) #27
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1019.1

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1019.1: ; preds = %bb.jv, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1016.1
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #24
  %i.aim = icmp eq i32 %.6513, 0
  br label %.thread2054

.body989:                                         ; preds = %bb.jg, %.body.i987, %bb.jj, %bb.jf
  %.pn738.pn.pn = phi { ptr, i32 } [ %.pn738.pn, %bb.jj ], [ %.pn736, %bb.jf ], [ %i.agi, %bb.jg ], [ %i.aei, %.body.i987 ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %70) #24
  br label %bb.jw

bb.jw:                                            ; preds = %.body989, %bb.jc, %bb.jb
  %.pn738.pn.pn.pn = phi { ptr, i32 } [ %.pn738.pn.pn, %.body989 ], [ %i.agf, %bb.jc ], [ %i.age, %bb.jb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #24
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %68) #24
  br label %bb.jx

bb.jx:                                            ; preds = %bb.jw, %bb.ja, %bb.iz
  %.pn738.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn738.pn.pn.pn, %bb.jw ], [ %i.agd, %bb.ja ], [ %i.agc, %bb.iz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #24
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.fq, %.body946, %bb.jx
  %.pn745.pn.pn.pn = phi { ptr, i32 } [ %.pn731.pn, %bb.fq ], [ %.pn738.pn.pn.pn.pn, %bb.jx ], [ %.pn745.pn, %.body946 ], [ %lpad.loopexit.split-lp2823, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.ain = getelementptr inbounds nuw i8, ptr %62, i64 24 ; 2 uses
  %i.aio = load ptr, ptr %i.ain, align 8, !tbaa !141 ; 3 uses
  %i.aip = getelementptr inbounds nuw i8, ptr %62, i64 32
  %i.aiq = load ptr, ptr %i.aip, align 16, !tbaa !134 ; 2 uses
  %.not4.i.i.i1020 = icmp eq ptr %i.aio, %i.aiq
  br i1 %.not4.i.i.i1020, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1028, label %.lr.ph.i.i.i1021

.lr.ph.i.i.i1021:                                 ; preds = %.loopexit.split-lp, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1024
  %.05.i.i.i1022 = phi ptr [ %i.aja, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1024 ], [ %i.aio, %.loopexit.split-lp ] ; 2 uses
  %i.air = load ptr, ptr %.05.i.i.i1022, align 8, !tbaa !36 ; 3 uses
  %i.ais = load i64, ptr %i.air, align 8          ; 3 uses
  %i.ait = and i64 %i.ais, 1152920405095219200
  %.not.i.i.i.i.i.i1023 = icmp eq i64 %i.ait, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i1023, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1024, label %bb.jy, !prof !38

bb.jy:                                            ; preds = %.lr.ph.i.i.i1021
  %i.aiu = add i64 %i.ais, 1152920405095219200
  %i.aiv = and i64 %i.aiu, 1152920405095219200    ; 2 uses
  %i.aiw = and i64 %i.ais, -1152920405095219201
  %i.aix = or disjoint i64 %i.aiv, %i.aiw
  store i64 %i.aix, ptr %i.air, align 8
  %i.aiy = icmp eq i64 %i.aiv, 0
  br i1 %i.aiy, label %bb.jz, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1024, !prof !38

bb.jz:                                            ; preds = %bb.jy
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.air)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1024 unwind label %.loopexit.split-lp2333.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp2333.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.kc, %bb.jz
  %lpad.loopexit.split-lp2817 = landingpad { ptr, i32 }
          catch ptr null
  %i.aiz = extractvalue { ptr, i32 } %lpad.loopexit.split-lp2817, 0
  call void @__clang_call_terminate(ptr %i.aiz) #26
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1024: ; preds = %bb.jz, %bb.jy, %.lr.ph.i.i.i1021
  %i.aja = getelementptr inbounds nuw i8, ptr %.05.i.i.i1022, i64 8 ; 2 uses
  %.not.i.i.i1025 = icmp eq ptr %i.aja, %i.aiq
  br i1 %.not.i.i.i1025, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i1026, label %.lr.ph.i.i.i1021, !llvm.loop !5

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i1026: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1024
  %.pr.i1027 = load ptr, ptr %i.ain, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1028

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1028: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i1026, %.loopexit.split-lp
  %i.ajb = phi ptr [ %.pr.i1027, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i1026 ], [ %i.aio, %.loopexit.split-lp ] ; 3 uses
  %.not.i.i1.i1029 = icmp eq ptr %i.ajb, null
  br i1 %.not.i.i1.i1029, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1031, label %bb.ka

bb.ka:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1028
  %i.ajc = getelementptr inbounds nuw i8, ptr %62, i64 40
  %i.ajd = load ptr, ptr %i.ajc, align 8, !tbaa !136
  %i.aje = ptrtoint ptr %i.ajd to i64
  %i.ajf = ptrtoint ptr %i.ajb to i64
  %i.ajg = sub i64 %i.aje, %i.ajf
  call void @_ZdlPvm(ptr noundef nonnull %i.ajb, i64 noundef %i.ajg) #27
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1031

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1031: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1028, %bb.ka
  %i.ajh = load ptr, ptr %62, align 16, !tbaa !141 ; 3 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %62, i64 8
  %i.ajj = load ptr, ptr %i.aji, align 8, !tbaa !134 ; 2 uses
  %.not4.i.i.i1020.1 = icmp eq ptr %i.ajh, %i.ajj
  br i1 %.not4.i.i.i1020.1, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1028.1, label %.lr.ph.i.i.i1021.1

.lr.ph.i.i.i1021.1:                               ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1031, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1024.1
  %.05.i.i.i1022.1 = phi ptr [ %i.ajs, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1024.1 ], [ %i.ajh, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1031 ] ; 2 uses
  %i.ajk = load ptr, ptr %.05.i.i.i1022.1, align 8, !tbaa !36 ; 3 uses
  %i.ajl = load i64, ptr %i.ajk, align 8          ; 3 uses
  %i.ajm = and i64 %i.ajl, 1152920405095219200
  %.not.i.i.i.i.i.i1023.1 = icmp eq i64 %i.ajm, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i1023.1, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1024.1, label %bb.kb, !prof !38

bb.kb:                                            ; preds = %.lr.ph.i.i.i1021.1
  %i.ajn = add i64 %i.ajl, 1152920405095219200
  %i.ajo = and i64 %i.ajn, 1152920405095219200    ; 2 uses
  %i.ajp = and i64 %i.ajl, -1152920405095219201
  %i.ajq = or disjoint i64 %i.ajo, %i.ajp
  store i64 %i.ajq, ptr %i.ajk, align 8
  %i.ajr = icmp eq i64 %i.ajo, 0
  br i1 %i.ajr, label %bb.kc, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1024.1, !prof !38

bb.kc:                                            ; preds = %bb.kb
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ajk)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1024.1 unwind label %.loopexit.split-lp2333.loopexit.split-lp.loopexit.split-lp

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1024.1: ; preds = %bb.kc, %bb.kb, %.lr.ph.i.i.i1021.1
  %i.ajs = getelementptr inbounds nuw i8, ptr %.05.i.i.i1022.1, i64 8 ; 2 uses
  %.not.i.i.i1025.1 = icmp eq ptr %i.ajs, %i.ajj
  br i1 %.not.i.i.i1025.1, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i1026.1, label %.lr.ph.i.i.i1021.1, !llvm.loop !5

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i1026.1: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1024.1
  %.pr.i1027.1 = load ptr, ptr %62, align 16, !tbaa !141
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1028.1

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1028.1: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i1026.1, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1031
  %i.ajt = phi ptr [ %.pr.i1027.1, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i1026.1 ], [ %i.ajh, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1031 ] ; 3 uses
  %.not.i.i1.i1029.1 = icmp eq ptr %i.ajt, null
  br i1 %.not.i.i1.i1029.1, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1031.1, label %bb.kd

bb.kd:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1028.1
  %i.aju = getelementptr inbounds nuw i8, ptr %62, i64 16
  %i.ajv = load ptr, ptr %i.aju, align 16, !tbaa !136
  %i.ajw = ptrtoint ptr %i.ajv to i64
  %i.ajx = ptrtoint ptr %i.ajt to i64
  %i.ajy = sub i64 %i.ajw, %i.ajx
  call void @_ZdlPvm(ptr noundef nonnull %i.ajt, i64 noundef %i.ajy) #27
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1031.1

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1031.1: ; preds = %bb.kd, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1028.1
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #24
  br label %.body919

.thread2054:                                      ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1019.1, %bb.eb, %bb.ed
  %.7514 = phi i1 [ %i.aim, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1019.1 ], [ true, %bb.eb ], [ true, %bb.ed ] ; 2 uses
  %i.ajz = load ptr, ptr %59, align 8, !tbaa !36  ; 3 uses
  %i.aka = load i64, ptr %i.ajz, align 8          ; 3 uses
  %i.akb = and i64 %i.aka, 1152920405095219200
  %.not.i.i1032 = icmp eq i64 %i.akb, 1152920405095219200
  br i1 %.not.i.i1032, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1034, label %bb.ke, !prof !38

bb.ke:                                            ; preds = %.thread2054
  %i.akc = add i64 %i.aka, 1152920405095219200
  %i.akd = and i64 %i.akc, 1152920405095219200    ; 2 uses
  %i.ake = and i64 %i.aka, -1152920405095219201
  %i.akf = or disjoint i64 %i.akd, %i.ake
  store i64 %i.akf, ptr %i.ajz, align 8
  %i.akg = icmp eq i64 %i.akd, 0
  br i1 %i.akg, label %bb.kf, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1034, !prof !38

bb.kf:                                            ; preds = %bb.ke
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ajz)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1034 unwind label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.akh = landingpad { ptr, i32 }
          catch ptr null
  %i.aki = extractvalue { ptr, i32 } %i.akh, 0
  call void @__clang_call_terminate(ptr %i.aki) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1034: ; preds = %.thread2054, %bb.ke, %bb.kf
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #24
  %or.cond = and i1 %.7514, %.not2283
  br i1 %or.cond, label %bb.dp, label %bb.ki, !llvm.loop !594

.body919:                                         ; preds = %bb.ea, %bb.eh, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1031.1
  %.pn745.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn745.pn.pn.pn, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit1031.1 ], [ %i.qk, %bb.eh ], [ %i.qd, %bb.ea ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %59) #24
  br label %bb.kh

bb.kh:                                            ; preds = %.body919, %bb.eg, %bb.ef
  %.pn745.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn745.pn.pn.pn.pn, %.body919 ], [ %i.qj, %bb.eg ], [ %i.qi, %bb.ef ]
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #24
  br label %bb.le

bb.ki:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1034
  %i.akj = getelementptr inbounds nuw i8, ptr %57, i64 24 ; 2 uses
  %i.akk = load ptr, ptr %i.akj, align 8, !tbaa !141 ; 3 uses
  %i.akl = getelementptr inbounds nuw i8, ptr %57, i64 32
  %i.akm = load ptr, ptr %i.akl, align 16, !tbaa !134 ; 2 uses
  %.not4.i.i.i1035 = icmp eq ptr %i.akk, %i.akm
  br i1 %.not4.i.i.i1035, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1043, label %.lr.ph.i.i.i1036

.lr.ph.i.i.i1036:                                 ; preds = %bb.ki, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1039
  %.05.i.i.i1037 = phi ptr [ %i.akw, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1039 ], [ %i.akk, %bb.ki ] ; 2 uses
  %i.akn = load ptr, ptr %.05.i.i.i1037, align 8, !tbaa !36 ; 3 uses
  %i.ako = load i64, ptr %i.akn, align 8          ; 3 uses
  %i.akp = and i64 %i.ako, 1152920405095219200
  %.not.i.i.i.i.i.i1038 = icmp eq i64 %i.akp, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i1038, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1039, label %bb.kj, !prof !38

bb.kj:                                            ; preds = %.lr.ph.i.i.i1036
  %i.akq = add i64 %i.ako, 1152920405095219200
  %i.akr = and i64 %i.akq, 1152920405095219200    ; 2 uses
  %i.aks = and i64 %i.ako, -1152920405095219201
  %i.akt = or disjoint i64 %i.akr, %i.aks
  store i64 %i.akt, ptr %i.akn, align 8
  %i.aku = icmp eq i64 %i.akr, 0
  br i1 %i.aku, label %bb.kk, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1039, !prof !38

bb.kk:                                            ; preds = %bb.kj
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.akn)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1039 unwind label %.loopexit.split-lp2343.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp2343.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.kn, %bb.kk
  %lpad.loopexit.split-lp2812 = landingpad { ptr, i32 }
          catch ptr null
  %i.akv = extractvalue { ptr, i32 } %lpad.loopexit.split-lp2812, 0
  call void @__clang_call_terminate(ptr %i.akv) #26
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1039: ; preds = %bb.kk, %bb.kj, %.lr.ph.i.i.i1036
  %i.akw = getelementptr inbounds nuw i8, ptr %.05.i.i.i1037, i64 8 ; 2 uses
  %.not.i.i.i1040 = icmp eq ptr %i.akw, %i.akm
  br i1 %.not.i.i.i1040, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i1041, label %.lr.ph.i.i.i1036, !llvm.loop !5

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i1041: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i1039
  %.pr.i1042 = load ptr, ptr %i.akj, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i1043
end_hunk_2

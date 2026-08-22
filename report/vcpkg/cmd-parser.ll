Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/cmd-parser?download=true
inline.NumInlined: 6268
inline.NumDeleted: 401
loop-unroll.NumCompletelyUnrolled: 200
loop-unroll.NumUnrolled: 200
begin_hunk_0_@_ZL19C_A_T_C_H_T_E_S_T_6v:bb.a
  %15 = alloca %"class.Catch::StringRef", align 8 ; 5 uses
  %16 = alloca %"class.Catch::UnaryExpr", align 8 ; 10 uses
  %17 = alloca %"class.Catch::StringRef", align 8 ; 5 uses
  %18 = alloca %"class.Catch::UnaryExpr", align 8 ; 10 uses
  %19 = alloca %"class.Catch::StringRef", align 8 ; 5 uses
  %20 = alloca %"class.Catch::UnaryExpr", align 8 ; 10 uses
  %21 = alloca %"class.Catch::UnaryExpr", align 8 ; 10 uses
  %22 = alloca %"class.Catch::UnaryExpr", align 8 ; 10 uses
  %23 = alloca %"class.Catch::UnaryExpr", align 8 ; 10 uses
  %24 = alloca %"class.Catch::UnaryExpr", align 8 ; 10 uses
  %25 = alloca %"class.Catch::UnaryExpr", align 8 ; 10 uses
  %26 = alloca %"class.Catch::UnaryExpr", align 8 ; 10 uses
  %27 = alloca %"class.Catch::UnaryExpr", align 8 ; 10 uses
  %28 = alloca %"class.Catch::UnaryExpr", align 8 ; 10 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %29 = alloca %"class.std::vector", align 8      ; 26 uses
  %30 = alloca %"class.std::vector", align 8      ; 13 uses
  %31 = alloca %"struct.vcpkg::CmdParser", align 8 ; 22 uses
  %i.f = alloca i8, align 1                       ; 6 uses
  %32 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %33 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %34 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %35 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %36 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %37 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %38 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %39 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %i.g = alloca i8, align 1                       ; 8 uses
  %40 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %41 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %42 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %43 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %44 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %45 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %46 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %47 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %48 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %49 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %50 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %51 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %52 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %53 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %54 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %55 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %56 = alloca %"struct.vcpkg::Optional", align 1 ; 17 uses
  %57 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %58 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %59 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %60 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %61 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %62 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %63 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %64 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %65 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %66 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %67 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %68 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %69 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %70 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %71 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %72 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %73 = alloca %"class.Catch::BinaryExpr.25", align 8 ; 13 uses
  %74 = alloca %"struct.vcpkg::LineInfo", align 8 ; 7 uses
  %75 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %76 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %77 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %78 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %79 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %80 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %81 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %82 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %83 = alloca %"class.Catch::BinaryExpr.25", align 8 ; 13 uses
  %84 = alloca %"struct.vcpkg::LineInfo", align 8 ; 7 uses
  %85 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %86 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %87 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %88 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %89 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %90 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %91 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %92 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %93 = alloca %"class.Catch::BinaryExpr.25", align 8 ; 13 uses
  %94 = alloca %"struct.vcpkg::LineInfo", align 8 ; 7 uses
  %i.h = alloca i8, align 1                       ; 8 uses
  %95 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %96 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %97 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %98 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %99 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %100 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %101 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %102 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %103 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %104 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %105 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %106 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %107 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %108 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %109 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %110 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %111 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %112 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %113 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %114 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %i.i = alloca i8, align 1                       ; 6 uses
  %115 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %116 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %117 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %118 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %119 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %120 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %121 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %122 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %123 = alloca %"struct.vcpkg::Optional", align 1 ; 8 uses
  %124 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %125 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %126 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %127 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %128 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %129 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %130 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %131 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %132 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %133 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %134 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %135 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %136 = alloca %"class.Catch::BinaryExpr.25", align 8 ; 13 uses
  %137 = alloca %"struct.vcpkg::LineInfo", align 8 ; 7 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %138 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %139 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %140 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %141 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %142 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %143 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %144 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %145 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %146 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %147 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %148 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %149 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %150 = alloca %"class.std::vector", align 8     ; 11 uses
  %151 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %152 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %153 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %154 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %155 = alloca %"class.Catch::BinaryExpr.0", align 8 ; 13 uses
  %156 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %157 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %158 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %159 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %160 = alloca %"class.Catch::BinaryExpr.26", align 8 ; 13 uses
  %161 = alloca %"class.std::vector.15", align 8  ; 11 uses
  %162 = alloca %"class.std::vector", align 8     ; 13 uses
  %163 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %29, i8 0, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 35 uses
  %i.l = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 15 uses
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA2_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %29, ptr null, ptr noundef nonnull align 1 dereferenceable(2) @.str.65)
          to label %.noexc211 unwind label %bb.y

.noexc211:                                        ; preds = %bb.a
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !51   ; 7 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !50
  %.not.i212 = icmp eq ptr %i.m, %i.n
  br i1 %.not.i212, label %bb.b, label %._crit_edge.i.i.i213

._crit_edge.i.i.i213:                             ; preds = %.noexc211
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  store ptr %i.o, ptr %i.m, align 8, !tbaa !9
  store i16 25133, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 2, ptr %i.p, align 8, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 18
  store i8 0, ptr %i.q, align 2, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  store ptr %i.r, ptr %i.k, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA3_KcEEERS5_DpOT_.exit

bb.b:                                             ; preds = %.noexc211
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA3_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %29, ptr %i.m, ptr noundef nonnull align 1 dereferenceable(3) @.str.100)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA3_KcEEERS5_DpOT_.exit_crit_edge unwind label %bb.y

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA3_KcEEERS5_DpOT_.exit_crit_edge: ; preds = %bb.b
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA3_KcEEERS5_DpOT_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA3_KcEEERS5_DpOT_.exit: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA3_KcEEERS5_DpOT_.exit_crit_edge, %._crit_edge.i.i.i213
  %i.s = phi ptr [ %.pre, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA3_KcEEERS5_DpOT_.exit_crit_edge ], [ %i.r, %._crit_edge.i.i.i213 ] ; 7 uses
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !50
  %.not.i218 = icmp eq ptr %i.s, %i.t
  br i1 %.not.i218, label %bb.c, label %._crit_edge.i.i.i219

._crit_edge.i.i.i219:                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA3_KcEEERS5_DpOT_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.u, ptr noundef nonnull align 1 dereferenceable(4) @.str.101, i64 3, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 3, ptr %i.v, align 8, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 19
  store i8 0, ptr %i.w, align 1, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  store ptr %i.x, ptr %i.k, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA4_KcEEERS5_DpOT_.exit

bb.c:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA3_KcEEERS5_DpOT_.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA4_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %29, ptr %i.s, ptr noundef nonnull align 1 dereferenceable(4) @.str.101)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA4_KcEEERS5_DpOT_.exit_crit_edge unwind label %bb.y

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA4_KcEEERS5_DpOT_.exit_crit_edge: ; preds = %bb.c
  %.pre560 = load ptr, ptr %i.k, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA4_KcEEERS5_DpOT_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA4_KcEEERS5_DpOT_.exit: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA4_KcEEERS5_DpOT_.exit_crit_edge, %._crit_edge.i.i.i219
  %i.y = phi ptr [ %.pre560, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA4_KcEEERS5_DpOT_.exit_crit_edge ], [ %i.x, %._crit_edge.i.i.i219 ] ; 7 uses
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !50
  %.not.i224 = icmp eq ptr %i.y, %i.z
  br i1 %.not.i224, label %bb.d, label %._crit_edge.i.i.i225

._crit_edge.i.i.i225:                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA4_KcEEERS5_DpOT_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !9
  store i32 1680682285, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 4, ptr %i.ab, align 8, !tbaa !13
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  store i8 0, ptr %i.ac, align 4, !tbaa !16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 2 uses
  store ptr %i.ad, ptr %i.k, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA5_KcEEERS5_DpOT_.exit

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA4_KcEEERS5_DpOT_.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA5_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %29, ptr %i.y, ptr noundef nonnull align 1 dereferenceable(5) @.str.102)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA5_KcEEERS5_DpOT_.exit_crit_edge unwind label %bb.y

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA5_KcEEERS5_DpOT_.exit_crit_edge: ; preds = %bb.d
  %.pre561 = load ptr, ptr %i.k, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA5_KcEEERS5_DpOT_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA5_KcEEERS5_DpOT_.exit: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA5_KcEEERS5_DpOT_.exit_crit_edge, %._crit_edge.i.i.i225
  %i.ae = phi ptr [ %.pre561, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA5_KcEEERS5_DpOT_.exit_crit_edge ], [ %i.ad, %._crit_edge.i.i.i225 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #20
  %i.af = load ptr, ptr %29, align 8, !tbaa !48   ; 3 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %30, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.ae, %i.af
  br i1 %.not.i.i.i.i, label %.noexc232, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA5_KcEEERS5_DpOT_.exit
  %i.aj = icmp ugt i64 %i.ai, 9223372036854775776
  br i1 %i.aj, label %.noexc.i.i230, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !84

.noexc.i.i230:                                    ; preds = %bb.e
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc231 unwind label %bb.z

.noexc231:                                        ; preds = %.noexc.i.i230
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.e
  %i.ak = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #23
          to label %.noexc232 unwind label %bb.z

.noexc232:                                        ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA5_KcEEERS5_DpOT_.exit
  %i.al = phi ptr [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA5_KcEEERS5_DpOT_.exit ], [ %i.ak, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.al, ptr %30, align 8, !tbaa !48
  %i.am = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 4 uses
  store ptr %i.al, ptr %i.am, align 8, !tbaa !51
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ai
  %i.ao = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 3 uses
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !50
  %i.ap = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.af, ptr %i.ae, ptr noundef %i.al)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %.noexc232
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %30, align 8, !tbaa !48   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i, label %.body, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = load ptr, ptr %i.ao, align 8, !tbaa !50
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = sub i64 %i.at, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.av) #22
  br label %.body

bb.h:                                             ; preds = %.noexc232
  store ptr %i.ap, ptr %i.am, align 8, !tbaa !51
  %i.aw = load ptr, ptr %i.k, align 8, !tbaa !51  ; 7 uses
  %i.ax = load ptr, ptr %i.l, align 8, !tbaa !50
  %.not.i233 = icmp eq ptr %i.aw, %i.ax
  br i1 %.not.i233, label %bb.i, label %._crit_edge.i.i.i234

._crit_edge.i.i.i234:                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !9
  store i64 7521983798963285293, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 8, ptr %i.az, align 8, !tbaa !13
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store i8 0, ptr %i.ba, align 8, !tbaa !16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 32 ; 2 uses
  store ptr %i.bb, ptr %i.k, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA9_KcEEERS5_DpOT_.exit

bb.i:                                             ; preds = %bb.h
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA9_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %29, ptr %i.aw, ptr noundef nonnull align 1 dereferenceable(9) @.str.103)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA9_KcEEERS5_DpOT_.exit_crit_edge unwind label %bb.aa

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA9_KcEEERS5_DpOT_.exit_crit_edge: ; preds = %bb.i
  %.pre562 = load ptr, ptr %i.k, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA9_KcEEERS5_DpOT_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA9_KcEEERS5_DpOT_.exit: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA9_KcEEERS5_DpOT_.exit_crit_edge, %._crit_edge.i.i.i234
  %i.bc = phi ptr [ %.pre562, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA9_KcEEERS5_DpOT_.exit_crit_edge ], [ %i.bb, %._crit_edge.i.i.i234 ] ; 8 uses
  %i.bd = load ptr, ptr %i.l, align 8, !tbaa !50
  %.not.i239 = icmp eq ptr %i.bc, %i.bd
  br i1 %.not.i239, label %bb.j, label %.noexc.i.i241

.noexc.i.i241:                                    ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA9_KcEEERS5_DpOT_.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  store i64 17, ptr %i.e, align 8, !tbaa !33
  %i.bf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc243 unwind label %bb.aa ; 2 uses

.noexc243:                                        ; preds = %.noexc.i.i241
  store ptr %i.bf, ptr %i.bc, align 8, !tbaa !24
  %i.bg = load i64, ptr %i.e, align 8, !tbaa !33  ; 3 uses
  store i64 %i.bg, ptr %i.be, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.bf, ptr noundef nonnull align 1 dereferenceable(18) @.str.104, i64 17, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !13
  %i.bi = load ptr, ptr %i.bc, align 8, !tbaa !24
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bg
  store i8 0, ptr %i.bj, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  %i.bk = load ptr, ptr %i.k, align 8, !tbaa !51
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32 ; 2 uses
  store ptr %i.bl, ptr %i.k, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA18_KcEEERS5_DpOT_.exit

bb.j:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA9_KcEEERS5_DpOT_.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA18_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %29, ptr %i.bc, ptr noundef nonnull align 1 dereferenceable(18) @.str.104)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA18_KcEEERS5_DpOT_.exit_crit_edge unwind label %bb.aa

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA18_KcEEERS5_DpOT_.exit_crit_edge: ; preds = %bb.j
  %.pre563 = load ptr, ptr %i.k, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA18_KcEEERS5_DpOT_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA18_KcEEERS5_DpOT_.exit: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA18_KcEEERS5_DpOT_.exit_crit_edge, %.noexc243
  %i.bm = phi ptr [ %.pre563, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA18_KcEEERS5_DpOT_.exit_crit_edge ], [ %i.bl, %.noexc243 ] ; 8 uses
  %i.bn = load ptr, ptr %i.l, align 8, !tbaa !50
  %.not.i245 = icmp eq ptr %i.bm, %i.bn
  br i1 %.not.i245, label %bb.k, label %.noexc.i.i247

.noexc.i.i247:                                    ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA18_KcEEERS5_DpOT_.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 2 uses
  store ptr %i.bo, ptr %i.bm, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i64 27, ptr %i.d, align 8, !tbaa !33
  %i.bp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc249 unwind label %bb.aa ; 2 uses

.noexc249:                                        ; preds = %.noexc.i.i247
  store ptr %i.bp, ptr %i.bm, align 8, !tbaa !24
  %i.bq = load i64, ptr %i.d, align 8, !tbaa !33  ; 3 uses
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.bp, ptr noundef nonnull align 1 dereferenceable(28) @.str.105, i64 27, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !13
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !24
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bq
  store i8 0, ptr %i.bt, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  %i.bu = load ptr, ptr %i.k, align 8, !tbaa !51
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32 ; 2 uses
  store ptr %i.bv, ptr %i.k, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA28_KcEEERS5_DpOT_.exit

bb.k:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA18_KcEEERS5_DpOT_.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA28_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %29, ptr %i.bm, ptr noundef nonnull align 1 dereferenceable(28) @.str.105)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA28_KcEEERS5_DpOT_.exit_crit_edge unwind label %bb.aa

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA28_KcEEERS5_DpOT_.exit_crit_edge: ; preds = %bb.k
  %.pre564 = load ptr, ptr %i.k, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA28_KcEEERS5_DpOT_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA28_KcEEERS5_DpOT_.exit: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA28_KcEEERS5_DpOT_.exit_crit_edge, %.noexc249
  %i.bw = phi ptr [ %.pre564, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA28_KcEEERS5_DpOT_.exit_crit_edge ], [ %i.bv, %.noexc249 ] ; 7 uses
  %i.bx = load ptr, ptr %i.l, align 8, !tbaa !50
  %.not.i251 = icmp eq ptr %i.bw, %i.bx
  br i1 %.not.i251, label %bb.l, label %._crit_edge.i.i.i252

._crit_edge.i.i.i252:                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA28_KcEEERS5_DpOT_.exit
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 2 uses
  store ptr %i.by, ptr %i.bw, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.by, ptr noundef nonnull align 1 dereferenceable(12) @.str.106, i64 11, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i64 11, ptr %i.bz, align 8, !tbaa !13
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 27
  store i8 0, ptr %i.ca, align 1, !tbaa !16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 32 ; 2 uses
  store ptr %i.cb, ptr %i.k, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEERS5_DpOT_.exit

bb.l:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA28_KcEEERS5_DpOT_.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA12_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %29, ptr %i.bw, ptr noundef nonnull align 1 dereferenceable(12) @.str.106)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEERS5_DpOT_.exit_crit_edge unwind label %bb.aa

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEERS5_DpOT_.exit_crit_edge: ; preds = %bb.l
  %.pre565 = load ptr, ptr %i.k, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEERS5_DpOT_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEERS5_DpOT_.exit: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEERS5_DpOT_.exit_crit_edge, %._crit_edge.i.i.i252
  %i.cc = phi ptr [ %.pre565, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEERS5_DpOT_.exit_crit_edge ], [ %i.cb, %._crit_edge.i.i.i252 ] ; 7 uses
  %i.cd = load ptr, ptr %i.l, align 8, !tbaa !50
  %.not.i257 = icmp eq ptr %i.cc, %i.cd
  br i1 %.not.i257, label %bb.m, label %._crit_edge.i.i.i258

._crit_edge.i.i.i258:                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEERS5_DpOT_.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  store ptr %i.ce, ptr %i.cc, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.ce, ptr noundef nonnull align 1 dereferenceable(12) @.str.106, i64 11, i1 false)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i64 11, ptr %i.cf, align 8, !tbaa !13
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 27
  store i8 0, ptr %i.cg, align 1, !tbaa !16
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 32 ; 2 uses
  store ptr %i.ch, ptr %i.k, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEERS5_DpOT_.exit264

bb.m:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEERS5_DpOT_.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA12_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %29, ptr %i.cc, ptr noundef nonnull align 1 dereferenceable(12) @.str.106)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEERS5_DpOT_.exit264_crit_edge unwind label %bb.aa

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEERS5_DpOT_.exit264_crit_edge: ; preds = %bb.m
  %.pre566 = load ptr, ptr %i.k, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEERS5_DpOT_.exit264

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEERS5_DpOT_.exit264: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEERS5_DpOT_.exit264_crit_edge, %._crit_edge.i.i.i258
  %i.ci = phi ptr [ %.pre566, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEERS5_DpOT_.exit264_crit_edge ], [ %i.ch, %._crit_edge.i.i.i258 ] ; 7 uses
  %i.cj = load ptr, ptr %i.l, align 8, !tbaa !50
  %.not.i265 = icmp eq ptr %i.ci, %i.cj
  br i1 %.not.i265, label %bb.n, label %._crit_edge.i.i.i266

._crit_edge.i.i.i266:                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEERS5_DpOT_.exit264
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 16 ; 2 uses
  store ptr %i.ck, ptr %i.ci, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.ck, ptr noundef nonnull align 1 dereferenceable(12) @.str.106, i64 11, i1 false)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i64 11, ptr %i.cl, align 8, !tbaa !13
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 27
  store i8 0, ptr %i.cm, align 1, !tbaa !16
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 32 ; 2 uses
  store ptr %i.cn, ptr %i.k, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEERS5_DpOT_.exit272

bb.n:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEERS5_DpOT_.exit264
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA12_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %29, ptr %i.ci, ptr noundef nonnull align 1 dereferenceable(12) @.str.106)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEERS5_DpOT_.exit272_crit_edge unwind label %bb.aa

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEERS5_DpOT_.exit272_crit_edge: ; preds = %bb.n
  %.pre567 = load ptr, ptr %i.k, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEERS5_DpOT_.exit272

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEERS5_DpOT_.exit272: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEERS5_DpOT_.exit272_crit_edge, %._crit_edge.i.i.i266
  %i.co = phi ptr [ %.pre567, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEERS5_DpOT_.exit272_crit_edge ], [ %i.cn, %._crit_edge.i.i.i266 ] ; 7 uses
  %i.cp = load ptr, ptr %i.l, align 8, !tbaa !50
  %.not.i273 = icmp eq ptr %i.co, %i.cp
  br i1 %.not.i273, label %bb.o, label %._crit_edge.i.i.i274

._crit_edge.i.i.i274:                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEERS5_DpOT_.exit272
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 16 ; 2 uses
  store ptr %i.cq, ptr %i.co, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.cq, ptr noundef nonnull align 1 dereferenceable(12) @.str.106, i64 11, i1 false)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store i64 11, ptr %i.cr, align 8, !tbaa !13
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 27
  store i8 0, ptr %i.cs, align 1, !tbaa !16
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 32 ; 2 uses
  store ptr %i.ct, ptr %i.k, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEERS5_DpOT_.exit280

bb.o:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEERS5_DpOT_.exit272
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA12_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %29, ptr %i.co, ptr noundef nonnull align 1 dereferenceable(12) @.str.106)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEERS5_DpOT_.exit280_crit_edge unwind label %bb.aa

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEERS5_DpOT_.exit280_crit_edge: ; preds = %bb.o
  %.pre568 = load ptr, ptr %i.k, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEERS5_DpOT_.exit280

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEERS5_DpOT_.exit280: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEERS5_DpOT_.exit280_crit_edge, %._crit_edge.i.i.i274
  %i.cu = phi ptr [ %.pre568, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEERS5_DpOT_.exit280_crit_edge ], [ %i.ct, %._crit_edge.i.i.i274 ] ; 8 uses
  %i.cv = load ptr, ptr %i.l, align 8, !tbaa !50
  %.not.i281 = icmp eq ptr %i.cu, %i.cv
  br i1 %.not.i281, label %bb.p, label %.noexc.i.i283

.noexc.i.i283:                                    ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEERS5_DpOT_.exit280
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  store ptr %i.cw, ptr %i.cu, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i64 20, ptr %i.c, align 8, !tbaa !33
  %i.cx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.cu, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc285 unwind label %bb.aa ; 2 uses

.noexc285:                                        ; preds = %.noexc.i.i283
  store ptr %i.cx, ptr %i.cu, align 8, !tbaa !24
  %i.cy = load i64, ptr %i.c, align 8, !tbaa !33  ; 3 uses
  store i64 %i.cy, ptr %i.cw, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.cx, ptr noundef nonnull align 1 dereferenceable(21) @.str.107, i64 20, i1 false)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !13
  %i.da = load ptr, ptr %i.cu, align 8, !tbaa !24
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cy
  store i8 0, ptr %i.db, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %i.dc = load ptr, ptr %i.k, align 8, !tbaa !51
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32 ; 2 uses
  store ptr %i.dd, ptr %i.k, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA21_KcEEERS5_DpOT_.exit

bb.p:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEERS5_DpOT_.exit280
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA21_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %29, ptr %i.cu, ptr noundef nonnull align 1 dereferenceable(21) @.str.107)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA21_KcEEERS5_DpOT_.exit_crit_edge unwind label %bb.aa

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA21_KcEEERS5_DpOT_.exit_crit_edge: ; preds = %bb.p
  %.pre569 = load ptr, ptr %i.k, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA21_KcEEERS5_DpOT_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA21_KcEEERS5_DpOT_.exit: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA21_KcEEERS5_DpOT_.exit_crit_edge, %.noexc285
  %i.de = phi ptr [ %.pre569, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA21_KcEEERS5_DpOT_.exit_crit_edge ], [ %i.dd, %.noexc285 ] ; 8 uses
  %i.df = load ptr, ptr %i.l, align 8, !tbaa !50
  %.not.i287 = icmp eq ptr %i.de, %i.df
  br i1 %.not.i287, label %bb.q, label %.noexc.i.i289

.noexc.i.i289:                                    ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA21_KcEEERS5_DpOT_.exit
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 16 ; 2 uses
  store ptr %i.dg, ptr %i.de, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i64 24, ptr %i.b, align 8, !tbaa !33
  %i.dh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.de, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc291 unwind label %bb.aa ; 2 uses

.noexc291:                                        ; preds = %.noexc.i.i289
  store ptr %i.dh, ptr %i.de, align 8, !tbaa !24
  %i.di = load i64, ptr %i.b, align 8, !tbaa !33  ; 3 uses
  store i64 %i.di, ptr %i.dg, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.dh, ptr noundef nonnull align 1 dereferenceable(25) @.str.108, i64 24, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store i64 %i.di, ptr %i.dj, align 8, !tbaa !13
  %i.dk = load ptr, ptr %i.de, align 8, !tbaa !24
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.di
  store i8 0, ptr %i.dl, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.dm = load ptr, ptr %i.k, align 8, !tbaa !51
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 32 ; 2 uses
  store ptr %i.dn, ptr %i.k, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA25_KcEEERS5_DpOT_.exit

bb.q:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA21_KcEEERS5_DpOT_.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA25_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %29, ptr %i.de, ptr noundef nonnull align 1 dereferenceable(25) @.str.108)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA25_KcEEERS5_DpOT_.exit_crit_edge unwind label %bb.aa

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA25_KcEEERS5_DpOT_.exit_crit_edge: ; preds = %bb.q
  %.pre570 = load ptr, ptr %i.k, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA25_KcEEERS5_DpOT_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA25_KcEEERS5_DpOT_.exit: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA25_KcEEERS5_DpOT_.exit_crit_edge, %.noexc291
  %i.do = phi ptr [ %.pre570, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA25_KcEEERS5_DpOT_.exit_crit_edge ], [ %i.dn, %.noexc291 ] ; 7 uses
  %i.dp = load ptr, ptr %i.l, align 8, !tbaa !50
  %.not.i293 = icmp eq ptr %i.do, %i.dp
  br i1 %.not.i293, label %bb.r, label %._crit_edge.i.i.i294

._crit_edge.i.i.i294:                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA25_KcEEERS5_DpOT_.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 16 ; 2 uses
  store ptr %i.dq, ptr %i.do, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.dq, ptr noundef nonnull align 1 dereferenceable(14) @.str.109, i64 13, i1 false)
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store i64 13, ptr %i.dr, align 8, !tbaa !13
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 29
  store i8 0, ptr %i.ds, align 1, !tbaa !16
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 32 ; 2 uses
  store ptr %i.dt, ptr %i.k, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA14_KcEEERS5_DpOT_.exit

bb.r:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA25_KcEEERS5_DpOT_.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA14_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %29, ptr %i.do, ptr noundef nonnull align 1 dereferenceable(14) @.str.109)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA14_KcEEERS5_DpOT_.exit_crit_edge unwind label %bb.aa

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA14_KcEEERS5_DpOT_.exit_crit_edge: ; preds = %bb.r
  %.pre571 = load ptr, ptr %i.k, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA14_KcEEERS5_DpOT_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA14_KcEEERS5_DpOT_.exit: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA14_KcEEERS5_DpOT_.exit_crit_edge, %._crit_edge.i.i.i294
  %i.du = phi ptr [ %.pre571, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA14_KcEEERS5_DpOT_.exit_crit_edge ], [ %i.dt, %._crit_edge.i.i.i294 ] ; 7 uses
  %i.dv = load ptr, ptr %i.l, align 8, !tbaa !50
  %.not.i299 = icmp eq ptr %i.du, %i.dv
  br i1 %.not.i299, label %bb.s, label %._crit_edge.i.i.i300

._crit_edge.i.i.i300:                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA14_KcEEERS5_DpOT_.exit
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 16 ; 2 uses
  store ptr %i.dw, ptr %i.du, align 8, !tbaa !9
  store i64 7308339910538374445, ptr %i.dw, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store i64 8, ptr %i.dx, align 8, !tbaa !13
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  store i8 0, ptr %i.dy, align 8, !tbaa !16
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 32 ; 2 uses
  store ptr %i.dz, ptr %i.k, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA9_KcEEERS5_DpOT_.exit306

bb.s:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA14_KcEEERS5_DpOT_.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA9_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %29, ptr %i.du, ptr noundef nonnull align 1 dereferenceable(9) @.str.110)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA9_KcEEERS5_DpOT_.exit306_crit_edge unwind label %bb.aa

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA9_KcEEERS5_DpOT_.exit306_crit_edge: ; preds = %bb.s
  %.pre572 = load ptr, ptr %i.k, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA9_KcEEERS5_DpOT_.exit306

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA9_KcEEERS5_DpOT_.exit306: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA9_KcEEERS5_DpOT_.exit306_crit_edge, %._crit_edge.i.i.i300
  %i.ea = phi ptr [ %.pre572, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA9_KcEEERS5_DpOT_.exit306_crit_edge ], [ %i.dz, %._crit_edge.i.i.i300 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #20
  %i.eb = load ptr, ptr %29, align 8, !tbaa !48   ; 2 uses
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = ashr exact i64 %i.ee, 5
  invoke void @_ZN5vcpkg9CmdParserC1ENS_4SpanIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE(ptr noundef nonnull align 8 dereferenceable(144) %31, ptr %i.eb, i64 %i.ef)
          to label %bb.t unwind label %bb.ab

bb.t:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA9_KcEEERS5_DpOT_.exit306
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  store i8 1, ptr %i.f, align 1, !tbaa !112
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #20
  store ptr @.str.61, ptr %33, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %33, i64 8
  store i64 5, ptr %i.eg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #20
  store ptr @.str, ptr %34, align 8, !tbaa !18
  %i.eh = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i64 208, ptr %i.eh, align 8, !tbaa !20
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %35, ptr noundef nonnull @.str.111) #20
  %i.ei = load ptr, ptr %35, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.ek = load i64, ptr %i.ej, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %32, ptr noundef nonnull align 8 dereferenceable(16) %33, ptr noundef nonnull align 8 dereferenceable(16) %34, ptr %i.ei, i64 %i.ek, i32 noundef 2)
          to label %bb.u unwind label %bb.ac

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #20
  %i.el = invoke noundef zeroext i1 @_ZN5vcpkg9CmdParser12parse_switchENS_10StringViewENS_12StabilityTagERb(ptr noundef nonnull align 8 dereferenceable(144) %31, ptr nonnull @.str.112, i64 12, i32 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %i.f)
          to label %bb.v unwind label %bb.ad

bb.v:                                             ; preds = %bb.u
  %i.em = xor i1 %i.el, true
  %i.en = zext i1 %i.em to i8                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #20
  %i.eo = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i8 0, ptr %i.eo, align 8, !tbaa !25, !alias.scope !113
  %i.ep = getelementptr inbounds nuw i8, ptr %28, i64 9
  store i8 %i.en, ptr %i.ep, align 1, !tbaa !28, !alias.scope !113
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch9UnaryExprIbEE, i64 16), ptr %28, align 8, !tbaa !29, !alias.scope !113
  %i.eq = getelementptr inbounds nuw i8, ptr %28, i64 10
  store i8 %i.en, ptr %i.eq, align 2, !tbaa !116, !alias.scope !113
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %32, ptr noundef nonnull align 8 dereferenceable(10) %28)
          to label %bb.x unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.er = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(11) dereferenceable(11) %28) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #20
  br label %.body307

bb.x:                                             ; preds = %bb.v
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(11) dereferenceable(11) %28) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #20
  br label %bb.af

bb.y:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.qm

bb.z:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i230
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aa:                                            ; preds = %bb.s, %bb.r, %bb.q, %.noexc.i.i289, %bb.p, %.noexc.i.i283, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %.noexc.i.i247, %bb.j, %.noexc.i.i241, %bb.i
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ql

bb.ab:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA9_KcEEERS5_DpOT_.exit306
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %bb.qk

bb.ac:                                            ; preds = %bb.t
  %i.ew = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #20
  br label %bb.ao

bb.ad:                                            ; preds = %bb.u
  %i.ex = landingpad { ptr, i32 }
          catch ptr null
  br label %.body307

.body307:                                         ; preds = %bb.w, %bb.ad
  %eh.lpad-body308 = phi { ptr, i32 } [ %i.ex, %bb.ad ], [ %i.er, %bb.w ]
  %i.ey = extractvalue { ptr, i32 } %eh.lpad-body308, 0
  %i.ez = call ptr @__cxa_begin_catch(ptr %i.ey) #20 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %32)
          to label %bb.ae unwind label %bb.al

bb.ae:                                            ; preds = %.body307
  invoke void @__cxa_end_catch()
          to label %bb.af unwind label %bb.am

bb.af:                                            ; preds = %bb.ae, %bb.x
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %32)
          to label %bb.ag unwind label %bb.am

bb.ag:                                            ; preds = %bb.af
  %i.fa = getelementptr inbounds nuw i8, ptr %32, i64 58
  %i.fb = load i8, ptr %i.fa, align 2, !tbaa !37, !range !44, !noundef !45
  %i.fc = trunc nuw i8 %i.fb to i1
  br i1 %i.fc, label %_ZN5Catch16AssertionHandlerD2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fd = getelementptr inbounds nuw i8, ptr %32, i64 64
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !46, !nonnull !45, !align !47 ; 2 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !29
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 112
  %i.fh = load ptr, ptr %i.fg, align 8
  invoke void %i.fh(ptr noundef nonnull align 8 dereferenceable(8) %i.fe, ptr noundef nonnull align 8 dereferenceable(72) %32)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fi = landingpad { ptr, i32 }
          catch ptr null
  %i.fj = extractvalue { ptr, i32 } %i.fi, 0
  call void @__clang_call_terminate(ptr %i.fj) #21
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit:             ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #20
  store ptr @.str.61, ptr %37, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i64 5, ptr %i.fk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #20
  store ptr @.str, ptr %38, align 8, !tbaa !18
  %i.fl = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i64 209, ptr %i.fl, align 8, !tbaa !20
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %39, ptr noundef nonnull @.str.113) #20
  %i.fm = load ptr, ptr %39, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.fo = load i64, ptr %i.fn, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %36, ptr noundef nonnull align 8 dereferenceable(16) %37, ptr noundef nonnull align 8 dereferenceable(16) %38, ptr %i.fm, i64 %i.fo, i32 noundef 2)
          to label %bb.aj unwind label %bb.ap

bb.aj:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #20
  %i.fp = load i8, ptr %i.f, align 1, !tbaa !112, !range !44, !noundef !45 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #20
  %i.fq = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i8 0, ptr %i.fq, align 8, !tbaa !25, !alias.scope !118
  %i.fr = getelementptr inbounds nuw i8, ptr %27, i64 9
  store i8 %i.fp, ptr %i.fr, align 1, !tbaa !28, !alias.scope !118
end_hunk_0
begin_hunk_1_@_ZL19C_A_T_C_H_T_E_S_T_6v:bb.a
  %i.aoo = load ptr, ptr %.05.i.i.i458, align 8, !tbaa !24 ; 2 uses
  %i.aop = getelementptr inbounds nuw i8, ptr %.05.i.i.i458, i64 16 ; 2 uses
  %i.aoq = icmp eq ptr %i.aoo, %i.aop
  br i1 %i.aoq, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i460, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i459

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i459: ; preds = %.lr.ph.i.i.i457
  %i.aor = load i64, ptr %i.aop, align 8, !tbaa !16
  %i.aos = add i64 %i.aor, 1
  call void @_ZdlPvm(ptr noundef %i.aoo, i64 noundef %i.aos) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i460

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i460: ; preds = %.lr.ph.i.i.i457, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i459
  %i.aot = getelementptr inbounds nuw i8, ptr %.05.i.i.i458, i64 32 ; 2 uses
  %.not.i.i.i461 = icmp eq ptr %i.aot, %i.aon
  br i1 %.not.i.i.i461, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i462, label %.lr.ph.i.i.i457, !llvm.loop !59

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i462: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i460
  %.pr.i463 = load ptr, ptr %29, align 8, !tbaa !48
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i464

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i464: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i462, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit455
  %i.aou = phi ptr [ %.pr.i463, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i462 ], [ %i.aom, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit455 ] ; 3 uses
  %.not.i.i1.i465 = icmp eq ptr %i.aou, null
  br i1 %.not.i.i1.i465, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit468, label %bb.pw

bb.pw:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i464
  %i.aov = load ptr, ptr %i.l, align 8, !tbaa !50
  %i.aow = ptrtoint ptr %i.aov to i64
  %i.aox = ptrtoint ptr %i.aou to i64
  %i.aoy = sub i64 %i.aow, %i.aox
  call void @_ZdlPvm(ptr noundef nonnull %i.aou, i64 noundef %i.aoy) #22
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit468

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit468: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i464, %bb.pw
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #20
  ret void

bb.px:                                            ; preds = %.loopexit
  %i.aoz = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.pz unwind label %bb.qn

bb.py:                                            ; preds = %bb.pq, %bb.pp
  %i.apa = landingpad { ptr, i32 }
          cleanup
  br label %bb.pz

bb.pz:                                            ; preds = %bb.px, %bb.py
  %.pn194 = phi { ptr, i32 } [ %i.apa, %bb.py ], [ %i.aoz, %bb.px ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %156) #20
  br label %bb.qa

bb.qa:                                            ; preds = %bb.pz, %bb.pk
  %.pn194.pn = phi { ptr, i32 } [ %.pn194, %bb.pz ], [ %i.amr, %bb.pk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %156) #20
  br label %bb.qb

bb.qb:                                            ; preds = %bb.qa, %bb.pj
  %.pn194.pn.pn = phi { ptr, i32 } [ %.pn194.pn, %bb.qa ], [ %.pn190.pn, %bb.pj ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %150) #20
  br label %bb.qc

bb.qc:                                            ; preds = %bb.qb, %bb.op
  %.pn194.pn.pn.pn = phi { ptr, i32 } [ %.pn194.pn.pn, %bb.qb ], [ %i.aja, %bb.op ]
  call void @llvm.lifetime.end.p0(ptr nonnull %150) #20
  br label %bb.qd

bb.qd:                                            ; preds = %bb.qc, %bb.oo, %bb.ny, %bb.nk
  %.pn194.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn194.pn.pn.pn, %bb.qc ], [ %.pn186.pn, %bb.oo ], [ %.pn183.pn, %bb.ny ], [ %.pn180.pn, %bb.nk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #20
  br label %bb.qe

bb.qe:                                            ; preds = %bb.qd, %bb.mx, %bb.mi, %bb.lu
  %.pn194.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn194.pn.pn.pn.pn, %bb.qd ], [ %.pn177.pn, %bb.mx ], [ %.pn173.pn, %bb.mi ], [ %.pn170.pn, %bb.lu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %123) #20
  br label %bb.qf

bb.qf:                                            ; preds = %bb.qe, %bb.lh, %bb.kt
  %.pn194.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn194.pn.pn.pn.pn.pn, %bb.qe ], [ %.pn167.pn, %bb.lh ], [ %.pn164.pn, %bb.kt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #20
  br label %bb.qg

bb.qg:                                            ; preds = %bb.qf, %bb.kg, %bb.js, %bb.jf, %bb.ir, %bb.ie
  %.pn194.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn194.pn.pn.pn.pn.pn.pn, %bb.qf ], [ %.pn161.pn, %bb.kg ], [ %.pn158.pn, %bb.js ], [ %.pn155.pn, %bb.jf ], [ %.pn152.pn, %bb.ir ], [ %.pn149.pn, %bb.ie ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  br label %bb.qh

bb.qh:                                            ; preds = %bb.qg, %bb.hq, %bb.hd, %bb.go, %bb.fz, %bb.fk, %bb.eu, %bb.ef, %bb.dr
  %.pn194.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn194.pn.pn.pn.pn.pn.pn.pn, %bb.qg ], [ %.pn146.pn, %bb.hq ], [ %.pn142.pn, %bb.hd ], [ %.pn139.pn, %bb.go ], [ %.pn135.pn, %bb.fz ], [ %.pn132.pn, %bb.fk ], [ %.pn128.pn, %bb.eu ], [ %.pn125.pn, %bb.ef ], [ %.pn122.pn, %bb.dr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #20
  br label %bb.qi

bb.qi:                                            ; preds = %bb.qh, %bb.de, %bb.cq, %bb.cd, %bb.bp
  %.pn194.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn194.pn.pn.pn.pn.pn.pn.pn.pn, %bb.qh ], [ %.pn119.pn, %bb.de ], [ %.pn116.pn, %bb.cq ], [ %.pn113.pn, %bb.cd ], [ %.pn110.pn, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  br label %bb.qj

bb.qj:                                            ; preds = %bb.qi, %bb.bc, %bb.ao
  %.pn194.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn194.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.qi ], [ %.pn107.pn, %bb.bc ], [ %.pn.pn, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @_ZN5vcpkg9CmdParserD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %31) #20
  br label %bb.qk

bb.qk:                                            ; preds = %bb.qj, %bb.ab
  %.pn194.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn194.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.qj ], [ %i.ev, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #20
  br label %bb.ql

bb.ql:                                            ; preds = %bb.qk, %bb.aa
  %.pn194.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn194.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.qk ], [ %i.eu, %bb.aa ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %30) #20
  br label %.body

.body:                                            ; preds = %bb.z, %bb.g, %bb.f, %bb.ql
  %.pn194.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn194.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ql ], [ %i.et, %bb.z ], [ %i.aq, %bb.g ], [ %i.aq, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #20
  br label %bb.qm

bb.qm:                                            ; preds = %.body, %bb.y
  %.pn194.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn194.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body ], [ %i.es, %bb.y ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %29) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #20
  resume { ptr, i32 } %.pn194.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn

bb.qn:                                            ; preds = %bb.px, %bb.pg, %bb.ol, %bb.nv, %bb.nh, %bb.mu, %bb.mf, %bb.lr, %bb.le, %bb.kq, %bb.kd, %bb.jp, %bb.jc, %bb.io, %bb.ib, %bb.hn, %bb.ha, %bb.gl, %bb.fw, %bb.fh, %bb.er, %bb.ec, %bb.do, %bb.db, %bb.cn, %bb.ca, %bb.bm, %bb.az, %bb.al
  %i.apb = landingpad { ptr, i32 }
          catch ptr null
  %i.apc = extractvalue { ptr, i32 } %i.apb, 0
  call void @__clang_call_terminate(ptr %i.apc) #21
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL19C_A_T_C_H_T_E_S_T_8v() #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.Catch::UnaryExpr", align 8  ; 10 uses
  %1 = alloca %"class.Catch::UnaryExpr", align 8  ; 10 uses
  %2 = alloca %"class.Catch::UnaryExpr", align 8  ; 10 uses
  %3 = alloca %"class.Catch::UnaryExpr", align 8  ; 10 uses
  %4 = alloca %"class.Catch::UnaryExpr", align 8  ; 10 uses
  %5 = alloca %"class.Catch::UnaryExpr", align 8  ; 10 uses
  %6 = alloca %"class.Catch::UnaryExpr", align 8  ; 10 uses
  %7 = alloca %"class.Catch::UnaryExpr", align 8  ; 10 uses
  %8 = alloca %"class.Catch::UnaryExpr", align 8  ; 10 uses
  %9 = alloca %"class.std::vector", align 8       ; 19 uses
  %10 = alloca %"struct.vcpkg::CmdParser", align 8 ; 15 uses
  %i.a = alloca i8, align 1                       ; 12 uses
  %11 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %12 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %13 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %14 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %15 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %16 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %17 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %18 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %19 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %20 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %21 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %22 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %23 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %24 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %25 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %26 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %27 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %28 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %29 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %30 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %31 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %32 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %33 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %34 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %35 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %36 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %37 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %38 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %39 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %40 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %41 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %42 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %43 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %44 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %45 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %46 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 18 uses
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 9 uses
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA4_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr null, ptr noundef nonnull align 1 dereferenceable(4) @.str.150)
          to label %.noexc60 unwind label %bb.o

.noexc60:                                         ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !51   ; 7 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !50
  %.not.i61 = icmp eq ptr %i.d, %i.e
  br i1 %.not.i61, label %bb.b, label %._crit_edge.i.i.i62

._crit_edge.i.i.i62:                              ; preds = %.noexc60
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.f, ptr noundef nonnull align 1 dereferenceable(6) @.str.151, i64 5, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 5, ptr %i.g, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 21
  store i8 0, ptr %i.h, align 1, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  store ptr %i.i, ptr %i.b, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit

bb.b:                                             ; preds = %.noexc60
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA6_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr %i.d, ptr noundef nonnull align 1 dereferenceable(6) @.str.151)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit_crit_edge unwind label %bb.o

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit_crit_edge: ; preds = %bb.b
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit_crit_edge, %._crit_edge.i.i.i62
  %i.j = phi ptr [ %.pre, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit_crit_edge ], [ %i.i, %._crit_edge.i.i.i62 ] ; 7 uses
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !50
  %.not.i67 = icmp eq ptr %i.j, %i.k
  br i1 %.not.i67, label %bb.c, label %._crit_edge.i.i.i68

._crit_edge.i.i.i68:                              ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  store ptr %i.l, ptr %i.j, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.l, ptr noundef nonnull align 1 dereferenceable(6) @.str.152, i64 5, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 5, ptr %i.m, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 21
  store i8 0, ptr %i.n, align 1, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  store ptr %i.o, ptr %i.b, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit74

bb.c:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA6_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr %i.j, ptr noundef nonnull align 1 dereferenceable(6) @.str.152)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit74_crit_edge unwind label %bb.o

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit74_crit_edge: ; preds = %bb.c
  %.pre191 = load ptr, ptr %i.b, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit74

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit74: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit74_crit_edge, %._crit_edge.i.i.i68
  %i.p = phi ptr [ %.pre191, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit74_crit_edge ], [ %i.o, %._crit_edge.i.i.i68 ] ; 7 uses
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !50
  %.not.i75 = icmp eq ptr %i.p, %i.q
  br i1 %.not.i75, label %bb.d, label %._crit_edge.i.i.i76

._crit_edge.i.i.i76:                              ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit74
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  store ptr %i.r, ptr %i.p, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.r, ptr noundef nonnull align 1 dereferenceable(4) @.str.153, i64 3, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 3, ptr %i.s, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 19
  store i8 0, ptr %i.t, align 1, !tbaa !16
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  store ptr %i.u, ptr %i.b, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA4_KcEEERS5_DpOT_.exit82

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit74
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA4_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr %i.p, ptr noundef nonnull align 1 dereferenceable(4) @.str.153)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA4_KcEEERS5_DpOT_.exit82_crit_edge unwind label %bb.o

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA4_KcEEERS5_DpOT_.exit82_crit_edge: ; preds = %bb.d
  %.pre192 = load ptr, ptr %i.b, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA4_KcEEERS5_DpOT_.exit82

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA4_KcEEERS5_DpOT_.exit82: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA4_KcEEERS5_DpOT_.exit82_crit_edge, %._crit_edge.i.i.i76
  %i.v = phi ptr [ %.pre192, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA4_KcEEERS5_DpOT_.exit82_crit_edge ], [ %i.u, %._crit_edge.i.i.i76 ] ; 7 uses
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !50
  %.not.i83 = icmp eq ptr %i.v, %i.w
  br i1 %.not.i83, label %bb.e, label %._crit_edge.i.i.i84

._crit_edge.i.i.i84:                              ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA4_KcEEERS5_DpOT_.exit82
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  store ptr %i.x, ptr %i.v, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.x, ptr noundef nonnull align 1 dereferenceable(6) @.str.154, i64 5, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 5, ptr %i.y, align 8, !tbaa !13
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 21
  store i8 0, ptr %i.z, align 1, !tbaa !16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 2 uses
  store ptr %i.aa, ptr %i.b, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit90

bb.e:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA4_KcEEERS5_DpOT_.exit82
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA6_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr %i.v, ptr noundef nonnull align 1 dereferenceable(6) @.str.154)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit90_crit_edge unwind label %bb.o

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit90_crit_edge: ; preds = %bb.e
  %.pre193 = load ptr, ptr %i.b, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit90

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit90: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit90_crit_edge, %._crit_edge.i.i.i84
  %i.ab = phi ptr [ %.pre193, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit90_crit_edge ], [ %i.aa, %._crit_edge.i.i.i84 ] ; 7 uses
  %i.ac = load ptr, ptr %i.c, align 8, !tbaa !50
  %.not.i91 = icmp eq ptr %i.ab, %i.ac
  br i1 %.not.i91, label %bb.f, label %._crit_edge.i.i.i92

._crit_edge.i.i.i92:                              ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit90
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.ad, ptr noundef nonnull align 1 dereferenceable(6) @.str.155, i64 5, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 5, ptr %i.ae, align 8, !tbaa !13
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 21
  store i8 0, ptr %i.af, align 1, !tbaa !16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 2 uses
  store ptr %i.ag, ptr %i.b, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit98

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit90
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA6_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr %i.ab, ptr noundef nonnull align 1 dereferenceable(6) @.str.155)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit98_crit_edge unwind label %bb.o

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit98_crit_edge: ; preds = %bb.f
  %.pre194 = load ptr, ptr %i.b, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit98

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit98: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit98_crit_edge, %._crit_edge.i.i.i92
  %i.ah = phi ptr [ %.pre194, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit98_crit_edge ], [ %i.ag, %._crit_edge.i.i.i92 ] ; 7 uses
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !50
  %.not.i99 = icmp eq ptr %i.ah, %i.ai
  br i1 %.not.i99, label %bb.g, label %._crit_edge.i.i.i100

._crit_edge.i.i.i100:                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit98
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.aj, ptr noundef nonnull align 1 dereferenceable(4) @.str.156, i64 3, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 3, ptr %i.ak, align 8, !tbaa !13
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 19
  store i8 0, ptr %i.al, align 1, !tbaa !16
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 32 ; 2 uses
  store ptr %i.am, ptr %i.b, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA4_KcEEERS5_DpOT_.exit106

bb.g:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit98
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA4_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr %i.ah, ptr noundef nonnull align 1 dereferenceable(4) @.str.156)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA4_KcEEERS5_DpOT_.exit106_crit_edge unwind label %bb.o

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA4_KcEEERS5_DpOT_.exit106_crit_edge: ; preds = %bb.g
  %.pre195 = load ptr, ptr %i.b, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA4_KcEEERS5_DpOT_.exit106

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA4_KcEEERS5_DpOT_.exit106: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA4_KcEEERS5_DpOT_.exit106_crit_edge, %._crit_edge.i.i.i100
  %i.an = phi ptr [ %.pre195, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA4_KcEEERS5_DpOT_.exit106_crit_edge ], [ %i.am, %._crit_edge.i.i.i100 ] ; 7 uses
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !50
  %.not.i107 = icmp eq ptr %i.an, %i.ao
  br i1 %.not.i107, label %bb.h, label %._crit_edge.i.i.i108

._crit_edge.i.i.i108:                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA4_KcEEERS5_DpOT_.exit106
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.ap, ptr noundef nonnull align 1 dereferenceable(6) @.str.157, i64 5, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 5, ptr %i.aq, align 8, !tbaa !13
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 21
  store i8 0, ptr %i.ar, align 1, !tbaa !16
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 2 uses
  store ptr %i.as, ptr %i.b, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit114

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA4_KcEEERS5_DpOT_.exit106
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA6_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr %i.an, ptr noundef nonnull align 1 dereferenceable(6) @.str.157)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit114_crit_edge unwind label %bb.o

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit114_crit_edge: ; preds = %bb.h
  %.pre196 = load ptr, ptr %i.b, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit114

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit114: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit114_crit_edge, %._crit_edge.i.i.i108
  %i.at = phi ptr [ %.pre196, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit114_crit_edge ], [ %i.as, %._crit_edge.i.i.i108 ] ; 7 uses
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !50
  %.not.i115 = icmp eq ptr %i.at, %i.au
  br i1 %.not.i115, label %bb.i, label %._crit_edge.i.i.i116

._crit_edge.i.i.i116:                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit114
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  store ptr %i.av, ptr %i.at, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.av, ptr noundef nonnull align 1 dereferenceable(6) @.str.158, i64 5, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 5, ptr %i.aw, align 8, !tbaa !13
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 21
  store i8 0, ptr %i.ax, align 1, !tbaa !16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 32 ; 2 uses
  store ptr %i.ay, ptr %i.b, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit122

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit114
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA6_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr %i.at, ptr noundef nonnull align 1 dereferenceable(6) @.str.158)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit122_crit_edge unwind label %bb.o

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit122_crit_edge: ; preds = %bb.i
  %.pre197 = load ptr, ptr %i.b, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit122

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit122: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit122_crit_edge, %._crit_edge.i.i.i116
  %i.az = phi ptr [ %.pre197, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit122_crit_edge ], [ %i.ay, %._crit_edge.i.i.i116 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.ba = load ptr, ptr %9, align 8, !tbaa !48    ; 2 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 5
  invoke void @_ZN5vcpkg9CmdParserC1ENS_4SpanIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE(ptr noundef nonnull align 8 dereferenceable(144) %10, ptr %i.ba, i64 %i.be)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  store ptr @.str.61, ptr %12, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 5, ptr %i.bf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  store ptr @.str, ptr %13, align 8, !tbaa !18
  %i.bg = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 280, ptr %i.bg, align 8, !tbaa !20
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull @.str.159) #20
  %i.bh = load ptr, ptr %14, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bj = load i64, ptr %i.bi, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %11, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr %i.bh, i64 %i.bj, i32 noundef 2)
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.bk = invoke noundef zeroext i1 @_ZN5vcpkg9CmdParser12parse_switchENS_10StringViewENS_12StabilityTagERb(ptr noundef nonnull align 8 dereferenceable(144) %10, ptr nonnull @.str.65, i64 1, i32 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.bl = zext i1 %i.bk to i8                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i8 0, ptr %i.bm, align 8, !tbaa !25, !alias.scope !217
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 9
  store i8 %i.bl, ptr %i.bn, align 1, !tbaa !28, !alias.scope !217
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch9UnaryExprIbEE, i64 16), ptr %8, align 8, !tbaa !29, !alias.scope !217
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 10
  store i8 %i.bl, ptr %i.bo, align 2, !tbaa !116, !alias.scope !217
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %11, ptr noundef nonnull align 8 dereferenceable(10) %8)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(11) dereferenceable(11) %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %.body

bb.n:                                             ; preds = %bb.l
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(11) dereferenceable(11) %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %bb.t

bb.o:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

bb.p:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit122
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.et

bb.q:                                             ; preds = %bb.j
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %bb.ae

bb.r:                                             ; preds = %bb.k
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.m, %bb.r
  %eh.lpad-body = phi { ptr, i32 } [ %i.bt, %bb.r ], [ %i.bp, %bb.m ]
  %i.bu = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.bv = call ptr @__cxa_begin_catch(ptr %i.bu) #20 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %11)
          to label %bb.s unwind label %bb.ab

bb.s:                                             ; preds = %.body
  invoke void @__cxa_end_catch()
          to label %bb.t unwind label %bb.ac

bb.t:                                             ; preds = %bb.s, %bb.n
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %11)
          to label %bb.u unwind label %bb.ac

bb.u:                                             ; preds = %bb.t
  %i.bw = getelementptr inbounds nuw i8, ptr %11, i64 58
  %i.bx = load i8, ptr %i.bw, align 2, !tbaa !37, !range !44, !noundef !45
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %_ZN5Catch16AssertionHandlerD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bz = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !46, !nonnull !45, !align !47 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !29
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 112
  %i.cd = load ptr, ptr %i.cc, align 8
  invoke void %i.cd(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef nonnull align 8 dereferenceable(72) %11)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  call void @__clang_call_terminate(ptr %i.cf) #21
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit:             ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  store ptr @.str.61, ptr %16, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 5, ptr %i.cg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  store ptr @.str, ptr %17, align 8, !tbaa !18
  %i.ch = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 281, ptr %i.ch, align 8, !tbaa !20
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull @.str.160) #20
  %i.ci = load ptr, ptr %18, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ck = load i64, ptr %i.cj, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %15, ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %17, ptr %i.ci, i64 %i.ck, i32 noundef 2)
          to label %bb.x unwind label %bb.af

bb.x:                                             ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  %i.cl = invoke noundef zeroext i1 @_ZN5vcpkg9CmdParser12parse_switchENS_10StringViewENS_12StabilityTagERb(ptr noundef nonnull align 8 dereferenceable(144) %10, ptr nonnull @.str.66, i64 1, i32 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.y unwind label %bb.ag

bb.y:                                             ; preds = %bb.x
  %i.cm = zext i1 %i.cl to i8                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i8 0, ptr %i.cn, align 8, !tbaa !25, !alias.scope !220
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 9
  store i8 %i.cm, ptr %i.co, align 1, !tbaa !28, !alias.scope !220
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch9UnaryExprIbEE, i64 16), ptr %7, align 8, !tbaa !29, !alias.scope !220
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 10
  store i8 %i.cm, ptr %i.cp, align 2, !tbaa !116, !alias.scope !220
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %15, ptr noundef nonnull align 8 dereferenceable(10) %7)
          to label %bb.aa unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(11) dereferenceable(11) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %.body123

bb.aa:                                            ; preds = %bb.y
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(11) dereferenceable(11) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.ai

bb.ab:                                            ; preds = %.body
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ad unwind label %bb.ev

bb.ac:                                            ; preds = %bb.t, %bb.s
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %.pn = phi { ptr, i32 } [ %i.cs, %bb.ac ], [ %i.cr, %bb.ab ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %11) #20
  br label %bb.ae

end_hunk_1
begin_hunk_2_@_ZL20C_A_T_C_H_T_E_S_T_10v:bb.a
  %62 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %63 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %64 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %65 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %66 = alloca %"class.Catch::BinaryExpr.34", align 8 ; 13 uses
  %67 = alloca %"struct.vcpkg::Optional.35", align 8 ; 16 uses
  %68 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %69 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %70 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %71 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %72 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %73 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %74 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %75 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %76 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %77 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %78 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %79 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %80 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %81 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %82 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %83 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %84 = alloca %"struct.vcpkg::Optional.35", align 8 ; 29 uses
  %85 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %86 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %87 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %88 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %89 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %90 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %91 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %92 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %93 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %94 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %95 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %96 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %97 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %98 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %99 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %100 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %101 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %102 = alloca %"class.Catch::BinaryExpr.31", align 8 ; 13 uses
  %103 = alloca %"struct.vcpkg::LineInfo", align 8 ; 7 uses
  %104 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %105 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %106 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %107 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %108 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %109 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %110 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %111 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %112 = alloca %"class.Catch::BinaryExpr.39", align 8 ; 13 uses
  %113 = alloca %"struct.vcpkg::LineInfo", align 8 ; 7 uses
  %114 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %115 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %116 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %117 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %118 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %119 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %120 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %121 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %122 = alloca %"class.Catch::BinaryExpr.39", align 8 ; 13 uses
  %123 = alloca %"struct.vcpkg::LineInfo", align 8 ; 7 uses
  %124 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %125 = alloca %"class.std::vector.15", align 8  ; 16 uses
  %126 = alloca %"class.std::vector", align 8     ; 8 uses
  %127 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 14 uses
  %128 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %129 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %130 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %131 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %132 = alloca %"class.Catch::BinaryExpr.26", align 8 ; 13 uses
  %133 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %134 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %135 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %136 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %137 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %138 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %139 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %140 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %141 = alloca %"class.Catch::BinaryExpr.40", align 8 ; 13 uses
  %142 = alloca %"struct.vcpkg::LocalizedString", align 8 ; 15 uses
  %143 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %144 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %145 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %146 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %147 = alloca %"class.Catch::BinaryExpr.26", align 8 ; 13 uses
  %148 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %149 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %150 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %151 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %152 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %153 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %154 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %155 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %156 = alloca %"class.Catch::BinaryExpr.40", align 8 ; 13 uses
  %157 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %158 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %159 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %160 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %161 = alloca %"class.Catch::BinaryExpr.26", align 8 ; 13 uses
  %162 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %163 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %164 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %165 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %166 = alloca %"class.Catch::BinaryExpr.0", align 8 ; 13 uses
  %167 = alloca %"class.std::vector", align 8     ; 11 uses
  %168 = alloca %"class.std::vector", align 8     ; 14 uses
  %169 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %28, i8 0, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 27 uses
  %i.h = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 11 uses
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA31_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %28, ptr null, ptr noundef nonnull align 1 dereferenceable(31) @.str.174)
          to label %.noexc216 unwind label %bb.q

.noexc216:                                        ; preds = %bb.a
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !51   ; 8 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !50
  %.not.i217 = icmp eq ptr %i.i, %i.j
  br i1 %.not.i217, label %bb.b, label %.noexc.i.i219

.noexc.i.i219:                                    ; preds = %.noexc216
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  store i64 17, ptr %i.f, align 8, !tbaa !33
  %i.l = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc221 unwind label %bb.q  ; 2 uses

.noexc221:                                        ; preds = %.noexc.i.i219
  store ptr %i.l, ptr %i.i, align 8, !tbaa !24
  %i.m = load i64, ptr %i.f, align 8, !tbaa !33   ; 3 uses
  store i64 %i.m, ptr %i.k, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.l, ptr noundef nonnull align 1 dereferenceable(18) @.str.175, i64 17, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !13
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !24
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !51
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  store ptr %i.r, ptr %i.g, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA18_KcEEERS5_DpOT_.exit

bb.b:                                             ; preds = %.noexc216
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA18_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %28, ptr %i.i, ptr noundef nonnull align 1 dereferenceable(18) @.str.175)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA18_KcEEERS5_DpOT_.exit_crit_edge unwind label %bb.q

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA18_KcEEERS5_DpOT_.exit_crit_edge: ; preds = %bb.b
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA18_KcEEERS5_DpOT_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA18_KcEEERS5_DpOT_.exit: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA18_KcEEERS5_DpOT_.exit_crit_edge, %.noexc221
  %i.s = phi ptr [ %.pre, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA18_KcEEERS5_DpOT_.exit_crit_edge ], [ %i.r, %.noexc221 ] ; 8 uses
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !50
  %.not.i223 = icmp eq ptr %i.s, %i.t
  br i1 %.not.i223, label %bb.c, label %.noexc.i.i226

.noexc.i.i226:                                    ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA18_KcEEERS5_DpOT_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  store i64 17, ptr %i.e, align 8, !tbaa !33
  %i.v = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc228 unwind label %bb.q  ; 2 uses

.noexc228:                                        ; preds = %.noexc.i.i226
  store ptr %i.v, ptr %i.s, align 8, !tbaa !24
  %i.w = load i64, ptr %i.e, align 8, !tbaa !33   ; 3 uses
  store i64 %i.w, ptr %i.u, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.v, ptr noundef nonnull align 1 dereferenceable(18) @.str.176, i64 17, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !13
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !24
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !51
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32 ; 2 uses
  store ptr %i.ab, ptr %i.g, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA18_KcEEERS5_DpOT_.exit230

bb.c:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA18_KcEEERS5_DpOT_.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA18_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %28, ptr %i.s, ptr noundef nonnull align 1 dereferenceable(18) @.str.176)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA18_KcEEERS5_DpOT_.exit230_crit_edge unwind label %bb.q

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA18_KcEEERS5_DpOT_.exit230_crit_edge: ; preds = %bb.c
  %.pre615 = load ptr, ptr %i.g, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA18_KcEEERS5_DpOT_.exit230

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA18_KcEEERS5_DpOT_.exit230: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA18_KcEEERS5_DpOT_.exit230_crit_edge, %.noexc228
  %i.ac = phi ptr [ %.pre615, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA18_KcEEERS5_DpOT_.exit230_crit_edge ], [ %i.ab, %.noexc228 ] ; 7 uses
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !50
  %.not.i231 = icmp eq ptr %i.ac, %i.ad
  br i1 %.not.i231, label %bb.d, label %._crit_edge.i.i.i232

._crit_edge.i.i.i232:                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA18_KcEEERS5_DpOT_.exit230
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.ae, ptr noundef nonnull align 1 dereferenceable(16) @.str.177, i64 15, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 15, ptr %i.af, align 8, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 31
  store i8 0, ptr %i.ag, align 1, !tbaa !16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 2 uses
  store ptr %i.ah, ptr %i.g, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA16_KcEEERS5_DpOT_.exit

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA18_KcEEERS5_DpOT_.exit230
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA16_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %28, ptr %i.ac, ptr noundef nonnull align 1 dereferenceable(16) @.str.177)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA16_KcEEERS5_DpOT_.exit_crit_edge unwind label %bb.q

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA16_KcEEERS5_DpOT_.exit_crit_edge: ; preds = %bb.d
  %.pre616 = load ptr, ptr %i.g, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA16_KcEEERS5_DpOT_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA16_KcEEERS5_DpOT_.exit: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA16_KcEEERS5_DpOT_.exit_crit_edge, %._crit_edge.i.i.i232
  %i.ai = phi ptr [ %.pre616, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA16_KcEEERS5_DpOT_.exit_crit_edge ], [ %i.ah, %._crit_edge.i.i.i232 ] ; 7 uses
  %i.aj = load ptr, ptr %i.h, align 8, !tbaa !50
  %.not.i237 = icmp eq ptr %i.ai, %i.aj
  br i1 %.not.i237, label %bb.e, label %._crit_edge.i.i.i238

._crit_edge.i.i.i238:                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA16_KcEEERS5_DpOT_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.ak, ptr noundef nonnull align 1 dereferenceable(13) @.str.178, i64 12, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 12, ptr %i.al, align 8, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 28
  store i8 0, ptr %i.am, align 4, !tbaa !16
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 32 ; 2 uses
  store ptr %i.an, ptr %i.g, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA13_KcEEERS5_DpOT_.exit

bb.e:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA16_KcEEERS5_DpOT_.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA13_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %28, ptr %i.ai, ptr noundef nonnull align 1 dereferenceable(13) @.str.178)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA13_KcEEERS5_DpOT_.exit_crit_edge unwind label %bb.q

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA13_KcEEERS5_DpOT_.exit_crit_edge: ; preds = %bb.e
  %.pre617 = load ptr, ptr %i.g, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA13_KcEEERS5_DpOT_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA13_KcEEERS5_DpOT_.exit: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA13_KcEEERS5_DpOT_.exit_crit_edge, %._crit_edge.i.i.i238
  %i.ao = phi ptr [ %.pre617, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA13_KcEEERS5_DpOT_.exit_crit_edge ], [ %i.an, %._crit_edge.i.i.i238 ] ; 8 uses
  %i.ap = load ptr, ptr %i.h, align 8, !tbaa !50
  %.not.i243 = icmp eq ptr %i.ao, %i.ap
  br i1 %.not.i243, label %bb.f, label %.noexc.i.i245

.noexc.i.i245:                                    ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA13_KcEEERS5_DpOT_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i64 20, ptr %i.d, align 8, !tbaa !33
  %i.ar = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc247 unwind label %bb.q  ; 2 uses

.noexc247:                                        ; preds = %.noexc.i.i245
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !24
  %i.as = load i64, ptr %i.d, align 8, !tbaa !33  ; 3 uses
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.ar, ptr noundef nonnull align 1 dereferenceable(21) @.str.179, i64 20, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %i.as, ptr %i.at, align 8, !tbaa !13
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !24
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.as
  store i8 0, ptr %i.av, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  %i.aw = load ptr, ptr %i.g, align 8, !tbaa !51
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32 ; 2 uses
  store ptr %i.ax, ptr %i.g, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA21_KcEEERS5_DpOT_.exit

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA13_KcEEERS5_DpOT_.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA21_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %28, ptr %i.ao, ptr noundef nonnull align 1 dereferenceable(21) @.str.179)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA21_KcEEERS5_DpOT_.exit_crit_edge unwind label %bb.q

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA21_KcEEERS5_DpOT_.exit_crit_edge: ; preds = %bb.f
  %.pre618 = load ptr, ptr %i.g, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA21_KcEEERS5_DpOT_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA21_KcEEERS5_DpOT_.exit: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA21_KcEEERS5_DpOT_.exit_crit_edge, %.noexc247
  %i.ay = phi ptr [ %.pre618, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA21_KcEEERS5_DpOT_.exit_crit_edge ], [ %i.ax, %.noexc247 ] ; 8 uses
  %i.az = load ptr, ptr %i.h, align 8, !tbaa !50
  %.not.i249 = icmp eq ptr %i.ay, %i.az
  br i1 %.not.i249, label %bb.g, label %.noexc.i.i252

.noexc.i.i252:                                    ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA21_KcEEERS5_DpOT_.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  store ptr %i.ba, ptr %i.ay, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i64 30, ptr %i.c, align 8, !tbaa !33
  %i.bb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc254 unwind label %bb.q  ; 2 uses

.noexc254:                                        ; preds = %.noexc.i.i252
  store ptr %i.bb, ptr %i.ay, align 8, !tbaa !24
  %i.bc = load i64, ptr %i.c, align 8, !tbaa !33  ; 3 uses
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.bb, ptr noundef nonnull align 1 dereferenceable(31) @.str.180, i64 30, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !13
  %i.be = load ptr, ptr %i.ay, align 8, !tbaa !24
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bc
  store i8 0, ptr %i.bf, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %i.bg = load ptr, ptr %i.g, align 8, !tbaa !51
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32 ; 2 uses
  store ptr %i.bh, ptr %i.g, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA31_KcEEERS5_DpOT_.exit256

bb.g:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA21_KcEEERS5_DpOT_.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA31_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %28, ptr %i.ay, ptr noundef nonnull align 1 dereferenceable(31) @.str.180)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA31_KcEEERS5_DpOT_.exit256_crit_edge unwind label %bb.q

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA31_KcEEERS5_DpOT_.exit256_crit_edge: ; preds = %bb.g
  %.pre619 = load ptr, ptr %i.g, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA31_KcEEERS5_DpOT_.exit256

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA31_KcEEERS5_DpOT_.exit256: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA31_KcEEERS5_DpOT_.exit256_crit_edge, %.noexc254
  %i.bi = phi ptr [ %.pre619, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA31_KcEEERS5_DpOT_.exit256_crit_edge ], [ %i.bh, %.noexc254 ] ; 7 uses
  %i.bj = load ptr, ptr %i.h, align 8, !tbaa !50
  %.not.i257 = icmp eq ptr %i.bi, %i.bj
  br i1 %.not.i257, label %bb.h, label %._crit_edge.i.i.i258

._crit_edge.i.i.i258:                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA31_KcEEERS5_DpOT_.exit256
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.bk, ptr noundef nonnull align 1 dereferenceable(14) @.str.181, i64 13, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i64 13, ptr %i.bl, align 8, !tbaa !13
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 29
  store i8 0, ptr %i.bm, align 1, !tbaa !16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 32 ; 2 uses
  store ptr %i.bn, ptr %i.g, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA14_KcEEERS5_DpOT_.exit

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA31_KcEEERS5_DpOT_.exit256
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA14_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %28, ptr %i.bi, ptr noundef nonnull align 1 dereferenceable(14) @.str.181)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA14_KcEEERS5_DpOT_.exit_crit_edge unwind label %bb.q

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA14_KcEEERS5_DpOT_.exit_crit_edge: ; preds = %bb.h
  %.pre620 = load ptr, ptr %i.g, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA14_KcEEERS5_DpOT_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA14_KcEEERS5_DpOT_.exit: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA14_KcEEERS5_DpOT_.exit_crit_edge, %._crit_edge.i.i.i258
  %i.bo = phi ptr [ %.pre620, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA14_KcEEERS5_DpOT_.exit_crit_edge ], [ %i.bn, %._crit_edge.i.i.i258 ] ; 7 uses
  %i.bp = load ptr, ptr %i.h, align 8, !tbaa !50
  %.not.i263 = icmp eq ptr %i.bo, %i.bp
  br i1 %.not.i263, label %bb.i, label %._crit_edge.i.i.i264

._crit_edge.i.i.i264:                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA14_KcEEERS5_DpOT_.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  store ptr %i.bq, ptr %i.bo, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.bq, ptr noundef nonnull align 1 dereferenceable(12) @.str.106, i64 11, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i64 11, ptr %i.br, align 8, !tbaa !13
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 27
  store i8 0, ptr %i.bs, align 1, !tbaa !16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 32 ; 2 uses
  store ptr %i.bt, ptr %i.g, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEERS5_DpOT_.exit

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA14_KcEEERS5_DpOT_.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA12_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %28, ptr %i.bo, ptr noundef nonnull align 1 dereferenceable(12) @.str.106)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEERS5_DpOT_.exit_crit_edge unwind label %bb.q

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEERS5_DpOT_.exit_crit_edge: ; preds = %bb.i
  %.pre621 = load ptr, ptr %i.g, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEERS5_DpOT_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEERS5_DpOT_.exit: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEERS5_DpOT_.exit_crit_edge, %._crit_edge.i.i.i264
  %i.bu = phi ptr [ %.pre621, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEERS5_DpOT_.exit_crit_edge ], [ %i.bt, %._crit_edge.i.i.i264 ] ; 7 uses
  %i.bv = load ptr, ptr %i.h, align 8, !tbaa !50
  %.not.i269 = icmp eq ptr %i.bu, %i.bv
  br i1 %.not.i269, label %bb.j, label %._crit_edge.i.i.i270

._crit_edge.i.i.i270:                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEERS5_DpOT_.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 2 uses
  store ptr %i.bw, ptr %i.bu, align 8, !tbaa !9
  store i8 98, ptr %i.bw, align 8, !tbaa !16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i64 1, ptr %i.bx, align 8, !tbaa !13
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 17
  store i8 0, ptr %i.by, align 1, !tbaa !16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 32 ; 2 uses
  store ptr %i.bz, ptr %i.g, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA2_KcEEERS5_DpOT_.exit

bb.j:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEERS5_DpOT_.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA2_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %28, ptr %i.bu, ptr noundef nonnull align 1 dereferenceable(2) @.str.66)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA2_KcEEERS5_DpOT_.exit_crit_edge unwind label %bb.q

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA2_KcEEERS5_DpOT_.exit_crit_edge: ; preds = %bb.j
  %.pre622 = load ptr, ptr %i.g, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA2_KcEEERS5_DpOT_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA2_KcEEERS5_DpOT_.exit: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA2_KcEEERS5_DpOT_.exit_crit_edge, %._crit_edge.i.i.i270
  %i.ca = phi ptr [ %.pre622, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA2_KcEEERS5_DpOT_.exit_crit_edge ], [ %i.bz, %._crit_edge.i.i.i270 ] ; 8 uses
  %i.cb = load ptr, ptr %i.h, align 8, !tbaa !50
  %.not.i275 = icmp eq ptr %i.ca, %i.cb
  br i1 %.not.i275, label %bb.k, label %.noexc.i.i277

.noexc.i.i277:                                    ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA2_KcEEERS5_DpOT_.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 2 uses
  store ptr %i.cc, ptr %i.ca, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i64 16, ptr %i.b, align 8, !tbaa !33
  %i.cd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ca, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc279 unwind label %bb.q  ; 2 uses

.noexc279:                                        ; preds = %.noexc.i.i277
  store ptr %i.cd, ptr %i.ca, align 8, !tbaa !24
  %i.ce = load i64, ptr %i.b, align 8, !tbaa !33  ; 3 uses
  store i64 %i.ce, ptr %i.cc, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.cd, ptr noundef nonnull align 1 dereferenceable(17) @.str.182, i64 16, i1 false)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !13
  %i.cg = load ptr, ptr %i.ca, align 8, !tbaa !24
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ce
  store i8 0, ptr %i.ch, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.ci = load ptr, ptr %i.g, align 8, !tbaa !51
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 32 ; 2 uses
  store ptr %i.cj, ptr %i.g, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA17_KcEEERS5_DpOT_.exit

bb.k:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA2_KcEEERS5_DpOT_.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA17_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %28, ptr %i.ca, ptr noundef nonnull align 1 dereferenceable(17) @.str.182)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA17_KcEEERS5_DpOT_.exit_crit_edge unwind label %bb.q

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA17_KcEEERS5_DpOT_.exit_crit_edge: ; preds = %bb.k
  %.pre623 = load ptr, ptr %i.g, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA17_KcEEERS5_DpOT_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA17_KcEEERS5_DpOT_.exit: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA17_KcEEERS5_DpOT_.exit_crit_edge, %.noexc279
  %i.ck = phi ptr [ %.pre623, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA17_KcEEERS5_DpOT_.exit_crit_edge ], [ %i.cj, %.noexc279 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #20
  %i.cl = load ptr, ptr %28, align 8, !tbaa !48   ; 2 uses
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = ashr exact i64 %i.co, 5
  invoke void @_ZN5vcpkg9CmdParserC1ENS_4SpanIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE(ptr noundef nonnull align 8 dereferenceable(144) %29, ptr %i.cl, i64 %i.cp)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA17_KcEEERS5_DpOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #20
  %i.cq = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 6 uses
  store ptr %i.cq, ptr %30, align 8, !tbaa !9
  %i.cr = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 7 uses
  store i64 0, ptr %i.cr, align 8, !tbaa !13
  store i8 0, ptr %i.cq, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #20
  store ptr @.str.61, ptr %32, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %32, i64 8
  store i64 5, ptr %i.cs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #20
  store ptr @.str, ptr %33, align 8, !tbaa !18
  %i.ct = getelementptr inbounds nuw i8, ptr %33, i64 8
  store i64 310, ptr %i.ct, align 8, !tbaa !20
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %34, ptr noundef nonnull @.str.183) #20
  %i.cu = load ptr, ptr %34, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.cw = load i64, ptr %i.cv, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %31, ptr noundef nonnull align 8 dereferenceable(16) %32, ptr noundef nonnull align 8 dereferenceable(16) %33, ptr %i.cu, i64 %i.cw, i32 noundef 2)
          to label %bb.m unwind label %bb.s

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #20
  %i.cx = invoke noundef zeroext i1 @_ZN5vcpkg9CmdParser12parse_optionENS_10StringViewENS_12StabilityTagERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(144) %29, ptr nonnull @.str.184, i64 14, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %30)
          to label %bb.n unwind label %bb.t

bb.n:                                             ; preds = %bb.m
  %i.cy = zext i1 %i.cx to i8                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #20
  %i.cz = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i8 0, ptr %i.cz, align 8, !tbaa !25, !alias.scope !244
  %i.da = getelementptr inbounds nuw i8, ptr %27, i64 9
  store i8 %i.cy, ptr %i.da, align 1, !tbaa !28, !alias.scope !244
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch9UnaryExprIbEE, i64 16), ptr %27, align 8, !tbaa !29, !alias.scope !244
  %i.db = getelementptr inbounds nuw i8, ptr %27, i64 10
  store i8 %i.cy, ptr %i.db, align 2, !tbaa !116, !alias.scope !244
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %31, ptr noundef nonnull align 8 dereferenceable(10) %27)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dc = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(11) dereferenceable(11) %27) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20
  br label %.body

bb.p:                                             ; preds = %bb.n
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(11) dereferenceable(11) %27) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20
  br label %bb.v

bb.q:                                             ; preds = %bb.k, %.noexc.i.i277, %bb.j, %bb.i, %bb.h, %bb.g, %.noexc.i.i252, %bb.f, %.noexc.i.i245, %bb.e, %bb.d, %bb.c, %.noexc.i.i226, %bb.b, %.noexc.i.i219, %bb.a
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.qx

bb.r:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA17_KcEEERS5_DpOT_.exit
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.qw

bb.s:                                             ; preds = %bb.l
  %i.df = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #20
  br label %bb.ag

bb.t:                                             ; preds = %bb.m
  %i.dg = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.o, %bb.t
  %eh.lpad-body = phi { ptr, i32 } [ %i.dg, %bb.t ], [ %i.dc, %bb.o ]
  %i.dh = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.di = call ptr @__cxa_begin_catch(ptr %i.dh) #20 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %31)
          to label %bb.u unwind label %bb.ad

bb.u:                                             ; preds = %.body
  invoke void @__cxa_end_catch()
          to label %bb.v unwind label %bb.ae

bb.v:                                             ; preds = %bb.u, %bb.p
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %31)
          to label %bb.w unwind label %bb.ae

bb.w:                                             ; preds = %bb.v
  %i.dj = getelementptr inbounds nuw i8, ptr %31, i64 58
  %i.dk = load i8, ptr %i.dj, align 2, !tbaa !37, !range !44, !noundef !45
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %_ZN5Catch16AssertionHandlerD2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dm = getelementptr inbounds nuw i8, ptr %31, i64 64
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !46, !nonnull !45, !align !47 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !29
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 112
  %i.dq = load ptr, ptr %i.dp, align 8
  invoke void %i.dq(ptr noundef nonnull align 8 dereferenceable(8) %i.dn, ptr noundef nonnull align 8 dereferenceable(72) %31)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dr = landingpad { ptr, i32 }
          catch ptr null
end_hunk_2
begin_hunk_3_@_ZL20C_A_T_C_H_T_E_S_T_10v:bb.a
bb.qs:                                            ; preds = %bb.qr
  %i.awy = load ptr, ptr %i.sd, align 8, !tbaa !24 ; 2 uses
  %i.awz = getelementptr inbounds nuw i8, ptr %84, i64 24 ; 2 uses
  %i.axa = icmp eq ptr %i.awy, %i.awz
  br i1 %i.axa, label %_ZN5vcpkg7details19OptionalStorageDtorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit511, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i509

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i509: ; preds = %bb.qs
  %i.axb = load i64, ptr %i.awz, align 8, !tbaa !16
  %i.axc = add i64 %i.axb, 1
  call void @_ZdlPvm(ptr noundef %i.awy, i64 noundef %i.axc) #22
  br label %_ZN5vcpkg7details19OptionalStorageDtorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit511

_ZN5vcpkg7details19OptionalStorageDtorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit511: ; preds = %bb.qs, %bb.qr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i509
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #20
  br label %bb.qt

bb.qt:                                            ; preds = %_ZN5vcpkg7details19OptionalStorageDtorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit511, %bb.gl, %bb.fx, %bb.fk, %bb.ev
  %.pn205.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn205.pn.pn.pn.pn, %_ZN5vcpkg7details19OptionalStorageDtorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit511 ], [ %.pn143.pn, %bb.gl ], [ %.pn140.pn, %bb.fx ], [ %.pn137.pn, %bb.fk ], [ %.pn134.pn, %bb.ev ]
  %i.axd = load i8, ptr %67, align 8, !tbaa !268, !range !44, !noundef !45
  %i.axe = trunc nuw i8 %i.axd to i1
  br i1 %i.axe, label %bb.qu, label %_ZN5vcpkg7details19OptionalStorageDtorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit514

bb.qu:                                            ; preds = %bb.qt
  %i.axf = load ptr, ptr %i.nr, align 8, !tbaa !24 ; 2 uses
  %i.axg = getelementptr inbounds nuw i8, ptr %67, i64 24 ; 2 uses
  %i.axh = icmp eq ptr %i.axf, %i.axg
  br i1 %i.axh, label %_ZN5vcpkg7details19OptionalStorageDtorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit514, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i512

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i512: ; preds = %bb.qu
  %i.axi = load i64, ptr %i.axg, align 8, !tbaa !16
  %i.axj = add i64 %i.axi, 1
  call void @_ZdlPvm(ptr noundef %i.axf, i64 noundef %i.axj) #22
  br label %_ZN5vcpkg7details19OptionalStorageDtorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit514

_ZN5vcpkg7details19OptionalStorageDtorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit514: ; preds = %bb.qu, %bb.qt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i512
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #20
  br label %bb.qv

bb.qv:                                            ; preds = %_ZN5vcpkg7details19OptionalStorageDtorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit514, %bb.ei, %bb.dt, %bb.de, %bb.cp, %bb.ca, %bb.bl, %bb.aw, %bb.av, %bb.ag
  %.pn205.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn205.pn.pn.pn.pn.pn, %_ZN5vcpkg7details19OptionalStorageDtorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit514 ], [ %.pn131.pn, %bb.ei ], [ %.pn127.pn, %bb.dt ], [ %i.fz, %bb.aw ], [ %.pn124.pn, %bb.de ], [ %.pn120.pn, %bb.cp ], [ %.pn117.pn, %bb.ca ], [ %.pn113.pn, %bb.bl ], [ %.pn110.pn, %bb.av ], [ %.pn.pn, %bb.ag ]
  %i.axk = load ptr, ptr %30, align 8, !tbaa !24  ; 2 uses
  %i.axl = icmp eq ptr %i.axk, %i.cq
  br i1 %i.axl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit517, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i515

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i515: ; preds = %bb.qv
  %i.axm = load i64, ptr %i.cq, align 8, !tbaa !16
  %i.axn = add i64 %i.axm, 1
  call void @_ZdlPvm(ptr noundef %i.axk, i64 noundef %i.axn) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit517

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit517: ; preds = %bb.qv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i515
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #20
  call void @_ZN5vcpkg9CmdParserD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %29) #20
  br label %bb.qw

bb.qw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit517, %bb.r
  %.pn205.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn205.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit517 ], [ %i.de, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #20
  br label %bb.qx

bb.qx:                                            ; preds = %bb.qw, %bb.q
  %.pn205.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn205.pn.pn.pn.pn.pn.pn.pn, %bb.qw ], [ %i.dd, %bb.q ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %28) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #20
  resume { ptr, i32 } %.pn205.pn.pn.pn.pn.pn.pn.pn.pn

bb.qy:                                            ; preds = %bb.ql, %bb.pu, %bb.pa, %bb.ol, %bb.nv, %bb.ne, %bb.ml, %bb.lw, %bb.lf, %bb.kn, %bb.jx, %bb.jh, %bb.ir, %bb.ib, %bb.hl, %bb.gv, %bb.gi, %bb.fu, %bb.fh, %bb.es, %bb.ef, %bb.dq, %bb.db, %bb.cm, %bb.bx, %bb.bi, %bb.as, %bb.ad
  %i.axo = landingpad { ptr, i32 }
          catch ptr null
  %i.axp = extractvalue { ptr, i32 } %i.axo, 0
  call void @__clang_call_terminate(ptr %i.axp) #21
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL20C_A_T_C_H_T_E_S_T_12v() #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.Catch::UnaryExpr", align 8  ; 10 uses
  %1 = alloca %"class.Catch::StringRef", align 8  ; 5 uses
  %2 = alloca %"class.Catch::UnaryExpr", align 8  ; 10 uses
  %3 = alloca %"class.Catch::StringRef", align 8  ; 5 uses
  %4 = alloca %"class.Catch::UnaryExpr", align 8  ; 10 uses
  %5 = alloca %"class.Catch::StringRef", align 8  ; 5 uses
  %6 = alloca %"class.Catch::UnaryExpr", align 8  ; 10 uses
  %7 = alloca %"class.Catch::StringRef", align 8  ; 5 uses
  %8 = alloca %"class.Catch::UnaryExpr", align 8  ; 10 uses
  %9 = alloca %"class.Catch::StringRef", align 8  ; 5 uses
  %10 = alloca %"class.Catch::UnaryExpr", align 8 ; 10 uses
  %11 = alloca %"class.Catch::StringRef", align 8 ; 5 uses
  %12 = alloca %"class.Catch::UnaryExpr", align 8 ; 10 uses
  %13 = alloca %"class.Catch::StringRef", align 8 ; 5 uses
  %14 = alloca %"class.Catch::UnaryExpr", align 8 ; 10 uses
  %15 = alloca %"class.Catch::StringRef", align 8 ; 5 uses
  %16 = alloca %"class.Catch::UnaryExpr", align 8 ; 10 uses
  %17 = alloca %"class.Catch::StringRef", align 8 ; 5 uses
  %18 = alloca %"class.Catch::UnaryExpr", align 8 ; 10 uses
  %19 = alloca %"class.std::vector", align 8      ; 19 uses
  %20 = alloca %"struct.vcpkg::CmdParser", align 8 ; 17 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 41 uses
  %22 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %23 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %24 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %25 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %26 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %27 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %28 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %29 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %30 = alloca %"class.Catch::BinaryExpr.41", align 8 ; 13 uses
  %31 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %32 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %33 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %34 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %35 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %36 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %37 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %38 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %39 = alloca %"class.Catch::BinaryExpr.41", align 8 ; 13 uses
  %40 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %41 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %42 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %43 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %44 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %45 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %46 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %47 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %48 = alloca %"class.Catch::BinaryExpr.40", align 8 ; 13 uses
  %49 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %50 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %51 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %52 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %53 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %54 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %55 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %56 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %57 = alloca %"class.Catch::BinaryExpr.40", align 8 ; 13 uses
  %58 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %59 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %60 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %61 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %62 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %63 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %64 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %65 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %66 = alloca %"class.Catch::BinaryExpr.41", align 8 ; 13 uses
  %67 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %68 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %69 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %70 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %71 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %72 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %73 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %74 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %75 = alloca %"class.Catch::BinaryExpr.40", align 8 ; 13 uses
  %76 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %77 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %78 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %79 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %80 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %81 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %82 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %83 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %84 = alloca %"class.Catch::BinaryExpr.40", align 8 ; 13 uses
  %85 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %86 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %87 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %88 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %89 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %90 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %91 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %92 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %93 = alloca %"class.Catch::BinaryExpr.40", align 8 ; 13 uses
  %94 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %95 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %96 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %97 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %98 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %99 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %100 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %101 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %102 = alloca %"class.Catch::BinaryExpr.41", align 8 ; 13 uses
  %103 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %104 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %105 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %106 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 18 uses
  %i.b = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 9 uses
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA6_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr null, ptr noundef nonnull align 1 dereferenceable(6) @.str.221)
          to label %.noexc131 unwind label %bb.n

.noexc131:                                        ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !51   ; 7 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !50
  %.not.i132 = icmp eq ptr %i.c, %i.d
  br i1 %.not.i132, label %bb.b, label %._crit_edge.i.i.i133

._crit_edge.i.i.i133:                             ; preds = %.noexc131
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.e, ptr noundef nonnull align 1 dereferenceable(8) @.str.222, i64 7, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 7, ptr %i.f, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 23
  store i8 0, ptr %i.g, align 1, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  store ptr %i.h, ptr %i.a, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit

bb.b:                                             ; preds = %.noexc131
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA8_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr %i.c, ptr noundef nonnull align 1 dereferenceable(8) @.str.222)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit_crit_edge unwind label %bb.n

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit_crit_edge: ; preds = %bb.b
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit_crit_edge, %._crit_edge.i.i.i133
  %i.i = phi ptr [ %.pre, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit_crit_edge ], [ %i.h, %._crit_edge.i.i.i133 ] ; 7 uses
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !50
  %.not.i138 = icmp eq ptr %i.i, %i.j
  br i1 %.not.i138, label %bb.c, label %._crit_edge.i.i.i139

._crit_edge.i.i.i139:                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.k, ptr noundef nonnull align 1 dereferenceable(8) @.str.223, i64 7, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 7, ptr %i.l, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 23
  store i8 0, ptr %i.m, align 1, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  store ptr %i.n, ptr %i.a, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit145

bb.c:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA8_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr %i.i, ptr noundef nonnull align 1 dereferenceable(8) @.str.223)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit145_crit_edge unwind label %bb.n

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit145_crit_edge: ; preds = %bb.c
  %.pre332 = load ptr, ptr %i.a, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit145

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit145: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit145_crit_edge, %._crit_edge.i.i.i139
  %i.o = phi ptr [ %.pre332, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit145_crit_edge ], [ %i.n, %._crit_edge.i.i.i139 ] ; 7 uses
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !50
  %.not.i146 = icmp eq ptr %i.o, %i.p
  br i1 %.not.i146, label %bb.d, label %._crit_edge.i.i.i147

._crit_edge.i.i.i147:                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit145
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  store ptr %i.q, ptr %i.o, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.q, ptr noundef nonnull align 1 dereferenceable(6) @.str.224, i64 5, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 5, ptr %i.r, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 21
  store i8 0, ptr %i.s, align 1, !tbaa !16
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  store ptr %i.t, ptr %i.a, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit153

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit145
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA6_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr %i.o, ptr noundef nonnull align 1 dereferenceable(6) @.str.224)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit153_crit_edge unwind label %bb.n

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit153_crit_edge: ; preds = %bb.d
  %.pre333 = load ptr, ptr %i.a, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit153

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit153: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit153_crit_edge, %._crit_edge.i.i.i147
  %i.u = phi ptr [ %.pre333, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit153_crit_edge ], [ %i.t, %._crit_edge.i.i.i147 ] ; 7 uses
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !50
  %.not.i154 = icmp eq ptr %i.u, %i.v
  br i1 %.not.i154, label %bb.e, label %._crit_edge.i.i.i155

._crit_edge.i.i.i155:                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit153
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  store ptr %i.w, ptr %i.u, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.w, ptr noundef nonnull align 1 dereferenceable(8) @.str.225, i64 7, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 7, ptr %i.x, align 8, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 23
  store i8 0, ptr %i.y, align 1, !tbaa !16
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  store ptr %i.z, ptr %i.a, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit161

bb.e:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit153
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA8_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr %i.u, ptr noundef nonnull align 1 dereferenceable(8) @.str.225)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit161_crit_edge unwind label %bb.n

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit161_crit_edge: ; preds = %bb.e
  %.pre334 = load ptr, ptr %i.a, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit161

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit161: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit161_crit_edge, %._crit_edge.i.i.i155
  %i.aa = phi ptr [ %.pre334, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit161_crit_edge ], [ %i.z, %._crit_edge.i.i.i155 ] ; 7 uses
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !50
  %.not.i162 = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i162, label %bb.f, label %._crit_edge.i.i.i163

._crit_edge.i.i.i163:                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit161
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.ac, ptr noundef nonnull align 1 dereferenceable(8) @.str.226, i64 7, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 7, ptr %i.ad, align 8, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 23
  store i8 0, ptr %i.ae, align 1, !tbaa !16
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 32 ; 2 uses
  store ptr %i.af, ptr %i.a, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit169

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit161
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA8_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr %i.aa, ptr noundef nonnull align 1 dereferenceable(8) @.str.226)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit169_crit_edge unwind label %bb.n

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit169_crit_edge: ; preds = %bb.f
  %.pre335 = load ptr, ptr %i.a, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit169

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit169: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit169_crit_edge, %._crit_edge.i.i.i163
  %i.ag = phi ptr [ %.pre335, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit169_crit_edge ], [ %i.af, %._crit_edge.i.i.i163 ] ; 7 uses
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !50
  %.not.i170 = icmp eq ptr %i.ag, %i.ah
  br i1 %.not.i170, label %bb.g, label %._crit_edge.i.i.i171

._crit_edge.i.i.i171:                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit169
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.ai, ptr noundef nonnull align 1 dereferenceable(6) @.str.227, i64 5, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 5, ptr %i.aj, align 8, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 21
  store i8 0, ptr %i.ak, align 1, !tbaa !16
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 2 uses
  store ptr %i.al, ptr %i.a, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit177

bb.g:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit169
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA6_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr %i.ag, ptr noundef nonnull align 1 dereferenceable(6) @.str.227)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit177_crit_edge unwind label %bb.n

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit177_crit_edge: ; preds = %bb.g
  %.pre336 = load ptr, ptr %i.a, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit177

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit177: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit177_crit_edge, %._crit_edge.i.i.i171
  %i.am = phi ptr [ %.pre336, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit177_crit_edge ], [ %i.al, %._crit_edge.i.i.i171 ] ; 7 uses
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !50
  %.not.i178 = icmp eq ptr %i.am, %i.an
  br i1 %.not.i178, label %bb.h, label %._crit_edge.i.i.i179

._crit_edge.i.i.i179:                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit177
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.ao, ptr noundef nonnull align 1 dereferenceable(8) @.str.228, i64 7, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 7, ptr %i.ap, align 8, !tbaa !13
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 23
  store i8 0, ptr %i.aq, align 1, !tbaa !16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 32 ; 2 uses
  store ptr %i.ar, ptr %i.a, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit185

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit177
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA8_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr %i.am, ptr noundef nonnull align 1 dereferenceable(8) @.str.228)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit185_crit_edge unwind label %bb.n

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit185_crit_edge: ; preds = %bb.h
  %.pre337 = load ptr, ptr %i.a, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit185

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit185: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit185_crit_edge, %._crit_edge.i.i.i179
  %i.as = phi ptr [ %.pre337, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit185_crit_edge ], [ %i.ar, %._crit_edge.i.i.i179 ] ; 7 uses
  %i.at = load ptr, ptr %i.b, align 8, !tbaa !50
  %.not.i186 = icmp eq ptr %i.as, %i.at
  br i1 %.not.i186, label %bb.i, label %._crit_edge.i.i.i187

._crit_edge.i.i.i187:                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit185
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  store ptr %i.au, ptr %i.as, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.au, ptr noundef nonnull align 1 dereferenceable(8) @.str.229, i64 7, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 7, ptr %i.av, align 8, !tbaa !13
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 23
  store i8 0, ptr %i.aw, align 1, !tbaa !16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 32 ; 2 uses
  store ptr %i.ax, ptr %i.a, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit193

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit185
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA8_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr %i.as, ptr noundef nonnull align 1 dereferenceable(8) @.str.229)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit193_crit_edge unwind label %bb.n

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit193_crit_edge: ; preds = %bb.i
  %.pre338 = load ptr, ptr %i.a, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit193

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit193: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit193_crit_edge, %._crit_edge.i.i.i187
  %i.ay = phi ptr [ %.pre338, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit193_crit_edge ], [ %i.ax, %._crit_edge.i.i.i187 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  %i.az = load ptr, ptr %19, align 8, !tbaa !48   ; 2 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 5
  invoke void @_ZN5vcpkg9CmdParserC1ENS_4SpanIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE(ptr noundef nonnull align 8 dereferenceable(144) %20, ptr %i.az, i64 %i.bd)
          to label %._crit_edge.i.i unwind label %bb.o

._crit_edge.i.i:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit193
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  %i.be = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 6 uses
  store ptr %i.be, ptr %21, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.be, ptr noundef nonnull align 1 dereferenceable(3) @.str.230, i64 3, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 15 uses
  store i64 3, ptr %i.bf, align 8, !tbaa !13
  %i.bg = getelementptr inbounds nuw i8, ptr %21, i64 19
  store i8 0, ptr %i.bg, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20
  store ptr @.str.61, ptr %23, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 5, ptr %i.bh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #20
  store ptr @.str, ptr %24, align 8, !tbaa !18
  %i.bi = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 376, ptr %i.bi, align 8, !tbaa !20
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %25, ptr noundef nonnull @.str.231) #20
  %i.bj = load ptr, ptr %25, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.bl = load i64, ptr %i.bk, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %22, ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull align 8 dereferenceable(16) %24, ptr %i.bj, i64 %i.bl, i32 noundef 2)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  %i.bm = invoke noundef zeroext i1 @_ZN5vcpkg9CmdParser12parse_optionENS_10StringViewENS_12StabilityTagERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(144) %20, ptr nonnull @.str.65, i64 1, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %21)
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.bn = zext i1 %i.bm to i8                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  %i.bo = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i8 0, ptr %i.bo, align 8, !tbaa !25, !alias.scope !330
  %i.bp = getelementptr inbounds nuw i8, ptr %18, i64 9
  store i8 %i.bn, ptr %i.bp, align 1, !tbaa !28, !alias.scope !330
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch9UnaryExprIbEE, i64 16), ptr %18, align 8, !tbaa !29, !alias.scope !330
  %i.bq = getelementptr inbounds nuw i8, ptr %18, i64 10
  store i8 %i.bn, ptr %i.bq, align 2, !tbaa !116, !alias.scope !330
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %22, ptr noundef nonnull align 8 dereferenceable(10) %18)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(11) dereferenceable(11) %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  br label %.body

bb.m:                                             ; preds = %bb.k
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(11) dereferenceable(11) %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  br label %bb.s

bb.n:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.kl

bb.o:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit193
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.kk

bb.p:                                             ; preds = %._crit_edge.i.i
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  br label %bb.ad

bb.q:                                             ; preds = %bb.j
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.l, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.bv, %bb.q ], [ %i.br, %bb.l ]
  %i.bw = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.bx = call ptr @__cxa_begin_catch(ptr %i.bw) #20 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %22)
          to label %bb.r unwind label %bb.aa

bb.r:                                             ; preds = %.body
  invoke void @__cxa_end_catch()
          to label %bb.s unwind label %bb.ab

bb.s:                                             ; preds = %bb.r, %bb.m
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %22)
          to label %bb.t unwind label %bb.ab

bb.t:                                             ; preds = %bb.s
  %i.by = getelementptr inbounds nuw i8, ptr %22, i64 58
  %i.bz = load i8, ptr %i.by, align 2, !tbaa !37, !range !44, !noundef !45
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %_ZN5Catch16AssertionHandlerD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cb = getelementptr inbounds nuw i8, ptr %22, i64 64
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !46, !nonnull !45, !align !47 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !29
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 112
  %i.cf = load ptr, ptr %i.ce, align 8
  invoke void %i.cf(ptr noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noundef nonnull align 8 dereferenceable(72) %22)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  call void @__clang_call_terminate(ptr %i.ch) #21
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit:             ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #20
  store ptr @.str.61, ptr %27, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 5, ptr %i.ci, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #20
  store ptr @.str, ptr %28, align 8, !tbaa !18
  %i.cj = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i64 377, ptr %i.cj, align 8, !tbaa !20
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull @.str.232) #20
  %i.ck = load ptr, ptr %29, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.cm = load i64, ptr %i.cl, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %26, ptr noundef nonnull align 8 dereferenceable(16) %27, ptr noundef nonnull align 8 dereferenceable(16) %28, ptr %i.ck, i64 %i.cm, i32 noundef 2)
          to label %bb.w unwind label %bb.ae

bb.w:                                             ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !333)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  %i.cn = load i64, ptr %i.bf, align 8, !tbaa !13, !noalias !333
  %i.co = icmp eq i64 %i.cn, 1
  br i1 %i.co, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cp = load ptr, ptr %21, align 8, !tbaa !24, !noalias !333
  %lhsc = load i8, ptr %i.cp, align 1
  %i.cq = icmp eq i8 %lhsc, 118
  %i.cr = zext i1 %i.cq to i8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cs = phi i8 [ 0, %bb.w ], [ %i.cr, %bb.x ]
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull @.str.63) #20, !noalias !333
  %i.ct = load ptr, ptr %17, align 8, !noalias !333
  %i.cu = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !noalias !333
  %i.cw = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i8 1, ptr %i.cw, align 8, !tbaa !25, !alias.scope !333
  %i.cx = getelementptr inbounds nuw i8, ptr %30, i64 9
  store i8 %i.cs, ptr %i.cx, align 1, !tbaa !28, !alias.scope !333
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch10BinaryExprIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_KcEE, i64 16), ptr %30, align 8, !tbaa !29, !alias.scope !333
  %i.cy = getelementptr inbounds nuw i8, ptr %30, i64 16
  store ptr %21, ptr %i.cy, align 8, !tbaa !31, !alias.scope !333
  %i.cz = getelementptr inbounds nuw i8, ptr %30, i64 24
  store ptr %i.ct, ptr %i.cz, align 8, !tbaa !17, !alias.scope !333
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %30, i64 32
  store i64 %i.cv, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !33, !alias.scope !333
  %i.da = getelementptr inbounds nuw i8, ptr %30, i64 40
  store ptr @.str.233, ptr %i.da, align 8, !tbaa !17, !alias.scope !333
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %26, ptr noundef nonnull align 8 dereferenceable(10) %30)
          to label %bb.z unwind label %bb.af

end_hunk_3
begin_hunk_4_@_ZL20C_A_T_C_H_T_E_S_T_18v:bb.a
  %55 = alloca %"class.Catch::BinaryExpr.0", align 8 ; 13 uses
  %56 = alloca %"class.std::vector", align 8      ; 14 uses
  %57 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 15 uses
  %58 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %59 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %60 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %61 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %62 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %63 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %64 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %65 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %66 = alloca %"struct.vcpkg::Optional.42", align 8 ; 17 uses
  %67 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %68 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %69 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %70 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %71 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %72 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %73 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %74 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %75 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %76 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %77 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %78 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %79 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %80 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %81 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %82 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %83 = alloca %"struct.vcpkg::Optional.42", align 8 ; 27 uses
  %84 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %85 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %86 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %87 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %88 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %89 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %90 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %91 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %92 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 13 uses
  %93 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %94 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %95 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %96 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %97 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %98 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %99 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %100 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %101 = alloca %"class.Catch::BinaryExpr.0", align 8 ; 13 uses
  %102 = alloca %"struct.vcpkg::LineInfo", align 8 ; 7 uses
  %103 = alloca %"class.std::vector", align 8     ; 14 uses
  %104 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 13 uses
  %105 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %106 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %107 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %108 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %109 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %110 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %111 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %112 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %113 = alloca %"class.Catch::BinaryExpr.0", align 8 ; 13 uses
  %114 = alloca %"struct.vcpkg::LineInfo", align 8 ; 7 uses
  %115 = alloca %"class.std::vector", align 8     ; 14 uses
  %116 = alloca [2 x %"class.std::__cxx11::basic_string"], align 8 ; 21 uses
  %117 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 13 uses
  %118 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %119 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %120 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %121 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %122 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %123 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %124 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %125 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %126 = alloca %"class.Catch::BinaryExpr.0", align 8 ; 13 uses
  %127 = alloca %"struct.vcpkg::LineInfo", align 8 ; 7 uses
  %128 = alloca %"class.std::vector", align 8     ; 14 uses
  %129 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 13 uses
  %130 = alloca %"class.std::vector", align 8     ; 13 uses
  %131 = alloca %"class.std::vector.15", align 8  ; 13 uses
  %132 = alloca %"class.std::vector", align 8     ; 8 uses
  %133 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 14 uses
  %134 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %135 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %136 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %137 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %138 = alloca %"class.Catch::BinaryExpr.26", align 8 ; 13 uses
  %139 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %140 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %141 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %142 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %143 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %144 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %145 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %146 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %147 = alloca %"class.Catch::BinaryExpr.0", align 8 ; 13 uses
  %148 = alloca %"class.std::vector", align 8     ; 14 uses
  %149 = alloca [3 x %"class.std::__cxx11::basic_string"], align 8 ; 29 uses
  %150 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %151 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %152 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %153 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %154 = alloca %"class.Catch::BinaryExpr.26", align 8 ; 13 uses
  %155 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %156 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %157 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %158 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %159 = alloca %"class.Catch::BinaryExpr.0", align 8 ; 13 uses
  %160 = alloca %"class.std::vector", align 8     ; 11 uses
  %161 = alloca %"class.std::vector", align 8     ; 14 uses
  %162 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %25, i8 0, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 30 uses
  %i.j = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 12 uses
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA31_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %25, ptr null, ptr noundef nonnull align 1 dereferenceable(31) @.str.174)
          to label %.noexc267 unwind label %bb.r

.noexc267:                                        ; preds = %bb.a
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !51   ; 8 uses
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !50
  %.not.i268 = icmp eq ptr %i.k, %i.l
  br i1 %.not.i268, label %bb.b, label %.noexc.i.i270

.noexc.i.i270:                                    ; preds = %.noexc267
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  store ptr %i.m, ptr %i.k, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  store i64 17, ptr %i.h, align 8, !tbaa !33
  %i.n = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0)
          to label %.noexc272 unwind label %bb.r  ; 2 uses

.noexc272:                                        ; preds = %.noexc.i.i270
  store ptr %i.n, ptr %i.k, align 8, !tbaa !24
  %i.o = load i64, ptr %i.h, align 8, !tbaa !33   ; 3 uses
  store i64 %i.o, ptr %i.m, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.n, ptr noundef nonnull align 1 dereferenceable(18) @.str.175, i64 17, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !13
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !24
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !51
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  store ptr %i.t, ptr %i.i, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA18_KcEEERS5_DpOT_.exit

bb.b:                                             ; preds = %.noexc267
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA18_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %25, ptr %i.k, ptr noundef nonnull align 1 dereferenceable(18) @.str.175)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA18_KcEEERS5_DpOT_.exit_crit_edge unwind label %bb.r

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA18_KcEEERS5_DpOT_.exit_crit_edge: ; preds = %bb.b
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA18_KcEEERS5_DpOT_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA18_KcEEERS5_DpOT_.exit: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA18_KcEEERS5_DpOT_.exit_crit_edge, %.noexc272
  %i.u = phi ptr [ %.pre, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA18_KcEEERS5_DpOT_.exit_crit_edge ], [ %i.t, %.noexc272 ] ; 8 uses
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !50
  %.not.i274 = icmp eq ptr %i.u, %i.v
  br i1 %.not.i274, label %bb.c, label %.noexc.i.i277

.noexc.i.i277:                                    ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA18_KcEEERS5_DpOT_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  store ptr %i.w, ptr %i.u, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  store i64 17, ptr %i.g, align 8, !tbaa !33
  %i.x = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc279 unwind label %bb.r  ; 2 uses

.noexc279:                                        ; preds = %.noexc.i.i277
  store ptr %i.x, ptr %i.u, align 8, !tbaa !24
  %i.y = load i64, ptr %i.g, align 8, !tbaa !33   ; 3 uses
  store i64 %i.y, ptr %i.w, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.x, ptr noundef nonnull align 1 dereferenceable(18) @.str.176, i64 17, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !13
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  %i.ac = load ptr, ptr %i.i, align 8, !tbaa !51
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 2 uses
  store ptr %i.ad, ptr %i.i, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA18_KcEEERS5_DpOT_.exit281

bb.c:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA18_KcEEERS5_DpOT_.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA18_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %25, ptr %i.u, ptr noundef nonnull align 1 dereferenceable(18) @.str.176)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA18_KcEEERS5_DpOT_.exit281_crit_edge unwind label %bb.r

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA18_KcEEERS5_DpOT_.exit281_crit_edge: ; preds = %bb.c
  %.pre1037 = load ptr, ptr %i.i, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA18_KcEEERS5_DpOT_.exit281

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA18_KcEEERS5_DpOT_.exit281: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA18_KcEEERS5_DpOT_.exit281_crit_edge, %.noexc279
  %i.ae = phi ptr [ %.pre1037, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA18_KcEEERS5_DpOT_.exit281_crit_edge ], [ %i.ad, %.noexc279 ] ; 7 uses
  %i.af = load ptr, ptr %i.j, align 8, !tbaa !50
  %.not.i282 = icmp eq ptr %i.ae, %i.af
  br i1 %.not.i282, label %bb.d, label %._crit_edge.i.i.i283

._crit_edge.i.i.i283:                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA18_KcEEERS5_DpOT_.exit281
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.ag, ptr noundef nonnull align 1 dereferenceable(16) @.str.177, i64 15, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i64 15, ptr %i.ah, align 8, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 31
  store i8 0, ptr %i.ai, align 1, !tbaa !16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 2 uses
  store ptr %i.aj, ptr %i.i, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA16_KcEEERS5_DpOT_.exit

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA18_KcEEERS5_DpOT_.exit281
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA16_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %25, ptr %i.ae, ptr noundef nonnull align 1 dereferenceable(16) @.str.177)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA16_KcEEERS5_DpOT_.exit_crit_edge unwind label %bb.r

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA16_KcEEERS5_DpOT_.exit_crit_edge: ; preds = %bb.d
  %.pre1038 = load ptr, ptr %i.i, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA16_KcEEERS5_DpOT_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA16_KcEEERS5_DpOT_.exit: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA16_KcEEERS5_DpOT_.exit_crit_edge, %._crit_edge.i.i.i283
  %i.ak = phi ptr [ %.pre1038, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA16_KcEEERS5_DpOT_.exit_crit_edge ], [ %i.aj, %._crit_edge.i.i.i283 ] ; 7 uses
  %i.al = load ptr, ptr %i.j, align 8, !tbaa !50
  %.not.i288 = icmp eq ptr %i.ak, %i.al
  br i1 %.not.i288, label %bb.e, label %._crit_edge.i.i.i289

._crit_edge.i.i.i289:                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA16_KcEEERS5_DpOT_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.am, ptr noundef nonnull align 1 dereferenceable(13) @.str.178, i64 12, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 12, ptr %i.an, align 8, !tbaa !13
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 28
  store i8 0, ptr %i.ao, align 4, !tbaa !16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 32 ; 2 uses
  store ptr %i.ap, ptr %i.i, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA13_KcEEERS5_DpOT_.exit

bb.e:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA16_KcEEERS5_DpOT_.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA13_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %25, ptr %i.ak, ptr noundef nonnull align 1 dereferenceable(13) @.str.178)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA13_KcEEERS5_DpOT_.exit_crit_edge unwind label %bb.r

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA13_KcEEERS5_DpOT_.exit_crit_edge: ; preds = %bb.e
  %.pre1039 = load ptr, ptr %i.i, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA13_KcEEERS5_DpOT_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA13_KcEEERS5_DpOT_.exit: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA13_KcEEERS5_DpOT_.exit_crit_edge, %._crit_edge.i.i.i289
  %i.aq = phi ptr [ %.pre1039, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA13_KcEEERS5_DpOT_.exit_crit_edge ], [ %i.ap, %._crit_edge.i.i.i289 ] ; 8 uses
  %i.ar = load ptr, ptr %i.j, align 8, !tbaa !50
  %.not.i294 = icmp eq ptr %i.aq, %i.ar
  br i1 %.not.i294, label %bb.f, label %.noexc.i.i296

.noexc.i.i296:                                    ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA13_KcEEERS5_DpOT_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  store i64 20, ptr %i.f, align 8, !tbaa !33
  %i.at = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc298 unwind label %bb.r  ; 2 uses

.noexc298:                                        ; preds = %.noexc.i.i296
  store ptr %i.at, ptr %i.aq, align 8, !tbaa !24
  %i.au = load i64, ptr %i.f, align 8, !tbaa !33  ; 3 uses
  store i64 %i.au, ptr %i.as, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.at, ptr noundef nonnull align 1 dereferenceable(21) @.str.179, i64 20, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i64 %i.au, ptr %i.av, align 8, !tbaa !13
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.au
  store i8 0, ptr %i.ax, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  %i.ay = load ptr, ptr %i.i, align 8, !tbaa !51
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32 ; 2 uses
  store ptr %i.az, ptr %i.i, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA21_KcEEERS5_DpOT_.exit

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA13_KcEEERS5_DpOT_.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA21_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %25, ptr %i.aq, ptr noundef nonnull align 1 dereferenceable(21) @.str.179)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA21_KcEEERS5_DpOT_.exit_crit_edge unwind label %bb.r

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA21_KcEEERS5_DpOT_.exit_crit_edge: ; preds = %bb.f
  %.pre1040 = load ptr, ptr %i.i, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA21_KcEEERS5_DpOT_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA21_KcEEERS5_DpOT_.exit: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA21_KcEEERS5_DpOT_.exit_crit_edge, %.noexc298
  %i.ba = phi ptr [ %.pre1040, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA21_KcEEERS5_DpOT_.exit_crit_edge ], [ %i.az, %.noexc298 ] ; 8 uses
  %i.bb = load ptr, ptr %i.j, align 8, !tbaa !50
  %.not.i300 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not.i300, label %bb.g, label %.noexc.i.i302

.noexc.i.i302:                                    ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA21_KcEEERS5_DpOT_.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  store i64 21, ptr %i.e, align 8, !tbaa !33
  %i.bd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc304 unwind label %bb.r  ; 2 uses

.noexc304:                                        ; preds = %.noexc.i.i302
  store ptr %i.bd, ptr %i.ba, align 8, !tbaa !24
  %i.be = load i64, ptr %i.e, align 8, !tbaa !33  ; 3 uses
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.bd, ptr noundef nonnull align 1 dereferenceable(22) @.str.252, i64 21, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !13
  %i.bg = load ptr, ptr %i.ba, align 8, !tbaa !24
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.be
  store i8 0, ptr %i.bh, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  %i.bi = load ptr, ptr %i.i, align 8, !tbaa !51
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32 ; 2 uses
  store ptr %i.bj, ptr %i.i, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA22_KcEEERS5_DpOT_.exit

bb.g:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA21_KcEEERS5_DpOT_.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA22_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %25, ptr %i.ba, ptr noundef nonnull align 1 dereferenceable(22) @.str.252)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA22_KcEEERS5_DpOT_.exit_crit_edge unwind label %bb.r

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA22_KcEEERS5_DpOT_.exit_crit_edge: ; preds = %bb.g
  %.pre1041 = load ptr, ptr %i.i, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA22_KcEEERS5_DpOT_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA22_KcEEERS5_DpOT_.exit: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA22_KcEEERS5_DpOT_.exit_crit_edge, %.noexc304
  %i.bk = phi ptr [ %.pre1041, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA22_KcEEERS5_DpOT_.exit_crit_edge ], [ %i.bj, %.noexc304 ] ; 8 uses
  %i.bl = load ptr, ptr %i.j, align 8, !tbaa !50
  %.not.i306 = icmp eq ptr %i.bk, %i.bl
  br i1 %.not.i306, label %bb.h, label %.noexc.i.i309

.noexc.i.i309:                                    ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA22_KcEEERS5_DpOT_.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  store ptr %i.bm, ptr %i.bk, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i64 30, ptr %i.d, align 8, !tbaa !33
  %i.bn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc311 unwind label %bb.r  ; 2 uses

.noexc311:                                        ; preds = %.noexc.i.i309
  store ptr %i.bn, ptr %i.bk, align 8, !tbaa !24
  %i.bo = load i64, ptr %i.d, align 8, !tbaa !33  ; 3 uses
  store i64 %i.bo, ptr %i.bm, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.bn, ptr noundef nonnull align 1 dereferenceable(31) @.str.180, i64 30, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !13
  %i.bq = load ptr, ptr %i.bk, align 8, !tbaa !24
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bo
  store i8 0, ptr %i.br, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  %i.bs = load ptr, ptr %i.i, align 8, !tbaa !51
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32 ; 2 uses
  store ptr %i.bt, ptr %i.i, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA31_KcEEERS5_DpOT_.exit313

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA22_KcEEERS5_DpOT_.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA31_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %25, ptr %i.bk, ptr noundef nonnull align 1 dereferenceable(31) @.str.180)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA31_KcEEERS5_DpOT_.exit313_crit_edge unwind label %bb.r

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA31_KcEEERS5_DpOT_.exit313_crit_edge: ; preds = %bb.h
  %.pre1042 = load ptr, ptr %i.i, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA31_KcEEERS5_DpOT_.exit313

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA31_KcEEERS5_DpOT_.exit313: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA31_KcEEERS5_DpOT_.exit313_crit_edge, %.noexc311
  %i.bu = phi ptr [ %.pre1042, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA31_KcEEERS5_DpOT_.exit313_crit_edge ], [ %i.bt, %.noexc311 ] ; 7 uses
  %i.bv = load ptr, ptr %i.j, align 8, !tbaa !50
  %.not.i314 = icmp eq ptr %i.bu, %i.bv
  br i1 %.not.i314, label %bb.i, label %._crit_edge.i.i.i315

._crit_edge.i.i.i315:                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA31_KcEEERS5_DpOT_.exit313
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 2 uses
  store ptr %i.bw, ptr %i.bu, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.bw, ptr noundef nonnull align 1 dereferenceable(14) @.str.181, i64 13, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i64 13, ptr %i.bx, align 8, !tbaa !13
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 29
  store i8 0, ptr %i.by, align 1, !tbaa !16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 32 ; 2 uses
  store ptr %i.bz, ptr %i.i, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA14_KcEEERS5_DpOT_.exit

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA31_KcEEERS5_DpOT_.exit313
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA14_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %25, ptr %i.bu, ptr noundef nonnull align 1 dereferenceable(14) @.str.181)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA14_KcEEERS5_DpOT_.exit_crit_edge unwind label %bb.r

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA14_KcEEERS5_DpOT_.exit_crit_edge: ; preds = %bb.i
  %.pre1043 = load ptr, ptr %i.i, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA14_KcEEERS5_DpOT_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA14_KcEEERS5_DpOT_.exit: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA14_KcEEERS5_DpOT_.exit_crit_edge, %._crit_edge.i.i.i315
  %i.ca = phi ptr [ %.pre1043, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA14_KcEEERS5_DpOT_.exit_crit_edge ], [ %i.bz, %._crit_edge.i.i.i315 ] ; 7 uses
  %i.cb = load ptr, ptr %i.j, align 8, !tbaa !50
  %.not.i320 = icmp eq ptr %i.ca, %i.cb
  br i1 %.not.i320, label %bb.j, label %._crit_edge.i.i.i321

._crit_edge.i.i.i321:                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA14_KcEEERS5_DpOT_.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 2 uses
  store ptr %i.cc, ptr %i.ca, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.cc, ptr noundef nonnull align 1 dereferenceable(12) @.str.106, i64 11, i1 false)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i64 11, ptr %i.cd, align 8, !tbaa !13
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 27
  store i8 0, ptr %i.ce, align 1, !tbaa !16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 32 ; 2 uses
  store ptr %i.cf, ptr %i.i, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEERS5_DpOT_.exit

bb.j:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA14_KcEEERS5_DpOT_.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA12_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %25, ptr %i.ca, ptr noundef nonnull align 1 dereferenceable(12) @.str.106)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEERS5_DpOT_.exit_crit_edge unwind label %bb.r

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEERS5_DpOT_.exit_crit_edge: ; preds = %bb.j
  %.pre1044 = load ptr, ptr %i.i, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEERS5_DpOT_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEERS5_DpOT_.exit: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEERS5_DpOT_.exit_crit_edge, %._crit_edge.i.i.i321
  %i.cg = phi ptr [ %.pre1044, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEERS5_DpOT_.exit_crit_edge ], [ %i.cf, %._crit_edge.i.i.i321 ] ; 7 uses
  %i.ch = load ptr, ptr %i.j, align 8, !tbaa !50
  %.not.i326 = icmp eq ptr %i.cg, %i.ch
  br i1 %.not.i326, label %bb.k, label %._crit_edge.i.i.i327

._crit_edge.i.i.i327:                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEERS5_DpOT_.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 2 uses
  store ptr %i.ci, ptr %i.cg, align 8, !tbaa !9
  store i8 98, ptr %i.ci, align 8, !tbaa !16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i64 1, ptr %i.cj, align 8, !tbaa !13
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 17
  store i8 0, ptr %i.ck, align 1, !tbaa !16
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 32 ; 2 uses
  store ptr %i.cl, ptr %i.i, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA2_KcEEERS5_DpOT_.exit

bb.k:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEERS5_DpOT_.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA2_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %25, ptr %i.cg, ptr noundef nonnull align 1 dereferenceable(2) @.str.66)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA2_KcEEERS5_DpOT_.exit_crit_edge unwind label %bb.r

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA2_KcEEERS5_DpOT_.exit_crit_edge: ; preds = %bb.k
  %.pre1045 = load ptr, ptr %i.i, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA2_KcEEERS5_DpOT_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA2_KcEEERS5_DpOT_.exit: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA2_KcEEERS5_DpOT_.exit_crit_edge, %._crit_edge.i.i.i327
  %i.cm = phi ptr [ %.pre1045, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA2_KcEEERS5_DpOT_.exit_crit_edge ], [ %i.cl, %._crit_edge.i.i.i327 ] ; 8 uses
  %i.cn = load ptr, ptr %i.j, align 8, !tbaa !50
  %.not.i332 = icmp eq ptr %i.cm, %i.cn
  br i1 %.not.i332, label %bb.l, label %.noexc.i.i334

.noexc.i.i334:                                    ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA2_KcEEERS5_DpOT_.exit
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 2 uses
  store ptr %i.co, ptr %i.cm, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i64 16, ptr %i.c, align 8, !tbaa !33
  %i.cp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.cm, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc336 unwind label %bb.r  ; 2 uses

.noexc336:                                        ; preds = %.noexc.i.i334
  store ptr %i.cp, ptr %i.cm, align 8, !tbaa !24
  %i.cq = load i64, ptr %i.c, align 8, !tbaa !33  ; 3 uses
  store i64 %i.cq, ptr %i.co, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.cp, ptr noundef nonnull align 1 dereferenceable(17) @.str.182, i64 16, i1 false)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store i64 %i.cq, ptr %i.cr, align 8, !tbaa !13
  %i.cs = load ptr, ptr %i.cm, align 8, !tbaa !24
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cq
  store i8 0, ptr %i.ct, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %i.cu = load ptr, ptr %i.i, align 8, !tbaa !51
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 32 ; 2 uses
  store ptr %i.cv, ptr %i.i, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA17_KcEEERS5_DpOT_.exit

bb.l:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA2_KcEEERS5_DpOT_.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA17_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %25, ptr %i.cm, ptr noundef nonnull align 1 dereferenceable(17) @.str.182)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA17_KcEEERS5_DpOT_.exit_crit_edge unwind label %bb.r

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA17_KcEEERS5_DpOT_.exit_crit_edge: ; preds = %bb.l
  %.pre1046 = load ptr, ptr %i.i, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA17_KcEEERS5_DpOT_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA17_KcEEERS5_DpOT_.exit: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA17_KcEEERS5_DpOT_.exit_crit_edge, %.noexc336
  %i.cw = phi ptr [ %.pre1046, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA17_KcEEERS5_DpOT_.exit_crit_edge ], [ %i.cv, %.noexc336 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #20
  %i.cx = load ptr, ptr %25, align 8, !tbaa !48   ; 2 uses
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = ashr exact i64 %i.da, 5
  invoke void @_ZN5vcpkg9CmdParserC1ENS_4SpanIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE(ptr noundef nonnull align 8 dereferenceable(144) %26, ptr %i.cx, i64 %i.db)
          to label %bb.m unwind label %bb.s

bb.m:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA17_KcEEERS5_DpOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %27, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #20
  store ptr @.str.61, ptr %29, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 5, ptr %i.dc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #20
  store ptr @.str, ptr %30, align 8, !tbaa !18
  %i.dd = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i64 452, ptr %i.dd, align 8, !tbaa !20
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %31, ptr noundef nonnull @.str.253) #20
  %i.de = load ptr, ptr %31, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.dg = load i64, ptr %i.df, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %28, ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull align 8 dereferenceable(16) %30, ptr %i.de, i64 %i.dg, i32 noundef 2)
          to label %bb.n unwind label %bb.t

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #20
  %i.dh = invoke noundef zeroext i1 @_ZN5vcpkg9CmdParser18parse_multi_optionENS_10StringViewENS_12StabilityTagERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(144) %26, ptr nonnull @.str.184, i64 14, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(24) %27)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.di = zext i1 %i.dh to i8                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #20
  %i.dj = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i8 0, ptr %i.dj, align 8, !tbaa !25, !alias.scope !414
  %i.dk = getelementptr inbounds nuw i8, ptr %24, i64 9
  store i8 %i.di, ptr %i.dk, align 1, !tbaa !28, !alias.scope !414
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch9UnaryExprIbEE, i64 16), ptr %24, align 8, !tbaa !29, !alias.scope !414
  %i.dl = getelementptr inbounds nuw i8, ptr %24, i64 10
  store i8 %i.di, ptr %i.dl, align 2, !tbaa !116, !alias.scope !414
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %28, ptr noundef nonnull align 8 dereferenceable(10) %24)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dm = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(11) dereferenceable(11) %24) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  br label %.body

bb.q:                                             ; preds = %bb.o
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(11) dereferenceable(11) %24) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  br label %bb.w

bb.r:                                             ; preds = %bb.l, %.noexc.i.i334, %bb.k, %bb.j, %bb.i, %bb.h, %.noexc.i.i309, %bb.g, %.noexc.i.i302, %bb.f, %.noexc.i.i296, %bb.e, %bb.d, %bb.c, %.noexc.i.i277, %bb.b, %.noexc.i.i270, %bb.a
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.pt

bb.s:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA17_KcEEERS5_DpOT_.exit
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.ps

bb.t:                                             ; preds = %bb.m
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #20
  br label %bb.ak

bb.u:                                             ; preds = %bb.n
  %i.dq = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.p, %bb.u
  %eh.lpad-body = phi { ptr, i32 } [ %i.dq, %bb.u ], [ %i.dm, %bb.p ]
  %i.dr = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.ds = call ptr @__cxa_begin_catch(ptr %i.dr) #20 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %28)
          to label %bb.v unwind label %bb.ah

bb.v:                                             ; preds = %.body
  invoke void @__cxa_end_catch()
          to label %bb.w unwind label %bb.ai

bb.w:                                             ; preds = %bb.v, %bb.q
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %28)
          to label %bb.x unwind label %bb.ai

bb.x:                                             ; preds = %bb.w
  %i.dt = getelementptr inbounds nuw i8, ptr %28, i64 58
  %i.du = load i8, ptr %i.dt, align 2, !tbaa !37, !range !44, !noundef !45
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %_ZN5Catch16AssertionHandlerD2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dw = getelementptr inbounds nuw i8, ptr %28, i64 64
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !46, !nonnull !45, !align !47 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !29
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 112
  %i.ea = load ptr, ptr %i.dz, align 8
  invoke void %i.ea(ptr noundef nonnull align 8 dereferenceable(8) %i.dx, ptr noundef nonnull align 8 dereferenceable(72) %28)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eb = landingpad { ptr, i32 }
          catch ptr null
  %i.ec = extractvalue { ptr, i32 } %i.eb, 0
  call void @__clang_call_terminate(ptr %i.ec) #21
  unreachable

end_hunk_4
begin_hunk_5_@_ZL20C_A_T_C_H_T_E_S_T_18v:bb.a
          to label %bb.pl unwind label %bb.pu

bb.pk:                                            ; preds = %bb.ox, %bb.ow
  %i.bhr = landingpad { ptr, i32 }
          cleanup
  br label %bb.pl

bb.pl:                                            ; preds = %bb.pj, %bb.pk
  %.pn256 = phi { ptr, i32 } [ %i.bhr, %bb.pk ], [ %i.bhq, %bb.pj ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %155) #20
  br label %bb.pm

bb.pm:                                            ; preds = %bb.pl, %bb.os
  %.pn256.pn = phi { ptr, i32 } [ %.pn256, %bb.pl ], [ %i.bdn, %bb.os ]
  call void @llvm.lifetime.end.p0(ptr nonnull %155) #20
  br label %bb.pn

bb.pn:                                            ; preds = %bb.pm, %bb.or, %bb.nx, %bb.ni, %bb.mq
  %.pn256.pn.pn = phi { ptr, i32 } [ %.pn256.pn, %bb.pm ], [ %.pn252.pn, %bb.or ], [ %.pn248.pn, %bb.nx ], [ %.pn244.pn, %bb.ni ], [ %.pn241.pn, %bb.mq ]
  call void @_ZNSt6vectorIN5vcpkg15LocalizedStringESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %131) #20
  br label %bb.po

bb.po:                                            ; preds = %bb.pn, %.loopexit1017
  %.pn256.pn.pn.pn = phi { ptr, i32 } [ %.pn256.pn.pn, %bb.pn ], [ %.pn237.pn, %.loopexit1017 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %131) #20
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %130) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %130) #20
  br label %bb.pp

bb.pp:                                            ; preds = %bb.po, %bb.lz, %bb.lh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit627, %bb.kn, %bb.jw, %bb.jc, %bb.il, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit476, %bb.hr, %bb.hb
  %.pn256.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn256.pn.pn.pn, %bb.po ], [ %.pn234.pn, %bb.lz ], [ %.pn230.pn, %bb.lh ], [ %eh.lpad-body5911299, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit627 ], [ %.pn225.pn, %bb.kn ], [ %.pn221.pn, %bb.jw ], [ %.pn218.pn, %bb.jc ], [ %.pn214.pn, %bb.il ], [ %eh.lpad-body4411296, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit476 ], [ %.pn209.pn, %bb.hr ], [ %.pn206.pn, %bb.hb ]
  call void @_ZN5vcpkg7details19OptionalStorageDtorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %83) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #20
  br label %bb.pq

bb.pq:                                            ; preds = %bb.pp, %bb.go, %bb.ga, %bb.fn, %bb.ex
  %.pn256.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn256.pn.pn.pn.pn, %bb.pp ], [ %.pn203.pn, %bb.go ], [ %.pn200.pn, %bb.ga ], [ %.pn197.pn, %bb.fn ], [ %.pn194.pn, %bb.ex ]
  call void @_ZN5vcpkg7details19OptionalStorageDtorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %66) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #20
  br label %bb.pr

bb.pr:                                            ; preds = %bb.pq, %bb.ek, %bb.dw, %bb.dj, %bb.ct, %bb.cb, %bb.bn, %bb.ba, %bb.az, %bb.ak
  %.pn256.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn256.pn.pn.pn.pn.pn, %bb.pq ], [ %.pn191.pn, %bb.ek ], [ %.pn188.pn, %bb.dw ], [ %i.ih, %bb.ba ], [ %.pn185.pn, %bb.dj ], [ %.pn181.pn, %bb.ct ], [ %.pn178.pn, %bb.cb ], [ %.pn175.pn, %bb.bn ], [ %.pn172.pn, %bb.az ], [ %.pn.pn, %bb.ak ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %27) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20
  call void @_ZN5vcpkg9CmdParserD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %26) #20
  br label %bb.ps

bb.ps:                                            ; preds = %bb.pr, %bb.s
  %.pn256.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn256.pn.pn.pn.pn.pn.pn, %bb.pr ], [ %i.do, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20
  br label %bb.pt

bb.pt:                                            ; preds = %bb.ps, %bb.r
  %.pn256.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn256.pn.pn.pn.pn.pn.pn.pn, %bb.ps ], [ %i.dn, %bb.r ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %25) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  resume { ptr, i32 } %.pn256.pn.pn.pn.pn.pn.pn.pn.pn

bb.pu:                                            ; preds = %bb.pj, %bb.oo, %bb.nu, %bb.nf, %bb.mn, %bb.lw, %bb.le, %bb.kk, %bb.jt, %bb.iz, %bb.ii, %bb.ho, %bb.gy, %bb.gl, %bb.fx, %bb.fk, %bb.eu, %bb.eh, %bb.dt, %bb.dg, %bb.cq, %bb.by, %bb.bk, %bb.aw, %bb.ah
  %i.bhs = landingpad { ptr, i32 }
          catch ptr null
  %i.bht = extractvalue { ptr, i32 } %i.bhs, 0
  call void @__clang_call_terminate(ptr %i.bht) #21
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL20C_A_T_C_H_T_E_S_T_20v() #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.Catch::UnaryExpr", align 8  ; 10 uses
  %1 = alloca %"class.Catch::StringRef", align 8  ; 5 uses
  %2 = alloca %"class.Catch::UnaryExpr", align 8  ; 10 uses
  %3 = alloca %"class.Catch::UnaryExpr", align 8  ; 10 uses
  %4 = alloca %"class.Catch::UnaryExpr", align 8  ; 10 uses
  %5 = alloca %"class.Catch::UnaryExpr", align 8  ; 10 uses
  %6 = alloca %"class.Catch::UnaryExpr", align 8  ; 10 uses
  %7 = alloca %"class.Catch::UnaryExpr", align 8  ; 10 uses
  %8 = alloca %"class.Catch::UnaryExpr", align 8  ; 10 uses
  %9 = alloca %"class.Catch::StringRef", align 8  ; 5 uses
  %10 = alloca %"class.Catch::UnaryExpr", align 8 ; 10 uses
  %11 = alloca %"class.Catch::UnaryExpr", align 8 ; 10 uses
  %12 = alloca %"class.Catch::UnaryExpr", align 8 ; 10 uses
  %13 = alloca %"class.Catch::UnaryExpr", align 8 ; 10 uses
  %14 = alloca %"class.Catch::UnaryExpr", align 8 ; 10 uses
  %15 = alloca %"class.Catch::StringRef", align 8 ; 5 uses
  %16 = alloca %"class.Catch::UnaryExpr", align 8 ; 10 uses
  %17 = alloca %"class.Catch::StringRef", align 8 ; 5 uses
  %18 = alloca %"class.Catch::UnaryExpr", align 8 ; 10 uses
  %19 = alloca %"class.std::vector", align 8      ; 19 uses
  %20 = alloca %"struct.vcpkg::CmdParser", align 8 ; 17 uses
  %21 = alloca %"class.std::vector", align 8      ; 40 uses
  %22 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 13 uses
  %23 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %24 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %25 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %26 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %27 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %28 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %29 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %30 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %31 = alloca %"class.Catch::BinaryExpr.0", align 8 ; 13 uses
  %32 = alloca %"class.std::vector", align 8      ; 14 uses
  %33 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 13 uses
  %34 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %35 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %36 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %37 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %38 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %39 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %40 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %41 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %42 = alloca %"class.Catch::BinaryExpr.0", align 8 ; 13 uses
  %43 = alloca %"class.std::vector", align 8      ; 14 uses
  %44 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 13 uses
  %45 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %46 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %47 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %48 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %49 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %50 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %51 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %52 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %53 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %54 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %55 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %56 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %57 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %58 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %59 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %60 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %61 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %62 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %63 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %64 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %65 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %66 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %67 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %68 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %69 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %70 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %71 = alloca %"class.Catch::BinaryExpr.0", align 8 ; 13 uses
  %72 = alloca %"class.std::vector", align 8      ; 14 uses
  %73 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 13 uses
  %74 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %75 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %76 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %77 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %78 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %79 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %80 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %81 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %82 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %83 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %84 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %85 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %86 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %87 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %88 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %89 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %90 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %91 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %92 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %93 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %94 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %95 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %96 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %97 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %98 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %99 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %100 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %101 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %102 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %103 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %104 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %105 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %106 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %107 = alloca %"class.Catch::BinaryExpr.0", align 8 ; 13 uses
  %108 = alloca %"class.std::vector", align 8     ; 14 uses
  %109 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 13 uses
  %110 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %111 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %112 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %113 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 18 uses
  %i.b = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 9 uses
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA6_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr null, ptr noundef nonnull align 1 dereferenceable(6) @.str.221)
          to label %.noexc174 unwind label %bb.q

.noexc174:                                        ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !51   ; 7 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !50
  %.not.i175 = icmp eq ptr %i.c, %i.d
  br i1 %.not.i175, label %bb.b, label %._crit_edge.i.i.i176

._crit_edge.i.i.i176:                             ; preds = %.noexc174
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.e, ptr noundef nonnull align 1 dereferenceable(8) @.str.222, i64 7, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 7, ptr %i.f, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 23
  store i8 0, ptr %i.g, align 1, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  store ptr %i.h, ptr %i.a, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit

bb.b:                                             ; preds = %.noexc174
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA8_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr %i.c, ptr noundef nonnull align 1 dereferenceable(8) @.str.222)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit_crit_edge unwind label %bb.q

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit_crit_edge: ; preds = %bb.b
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit_crit_edge, %._crit_edge.i.i.i176
  %i.i = phi ptr [ %.pre, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit_crit_edge ], [ %i.h, %._crit_edge.i.i.i176 ] ; 7 uses
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !50
  %.not.i181 = icmp eq ptr %i.i, %i.j
  br i1 %.not.i181, label %bb.c, label %._crit_edge.i.i.i182

._crit_edge.i.i.i182:                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.k, ptr noundef nonnull align 1 dereferenceable(8) @.str.223, i64 7, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 7, ptr %i.l, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 23
  store i8 0, ptr %i.m, align 1, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  store ptr %i.n, ptr %i.a, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit188

bb.c:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA8_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr %i.i, ptr noundef nonnull align 1 dereferenceable(8) @.str.223)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit188_crit_edge unwind label %bb.q

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit188_crit_edge: ; preds = %bb.c
  %.pre587 = load ptr, ptr %i.a, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit188

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit188: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit188_crit_edge, %._crit_edge.i.i.i182
  %i.o = phi ptr [ %.pre587, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit188_crit_edge ], [ %i.n, %._crit_edge.i.i.i182 ] ; 7 uses
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !50
  %.not.i189 = icmp eq ptr %i.o, %i.p
  br i1 %.not.i189, label %bb.d, label %._crit_edge.i.i.i190

._crit_edge.i.i.i190:                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit188
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  store ptr %i.q, ptr %i.o, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.q, ptr noundef nonnull align 1 dereferenceable(6) @.str.224, i64 5, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 5, ptr %i.r, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 21
  store i8 0, ptr %i.s, align 1, !tbaa !16
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  store ptr %i.t, ptr %i.a, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit196

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit188
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA6_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr %i.o, ptr noundef nonnull align 1 dereferenceable(6) @.str.224)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit196_crit_edge unwind label %bb.q

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit196_crit_edge: ; preds = %bb.d
  %.pre588 = load ptr, ptr %i.a, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit196

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit196: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit196_crit_edge, %._crit_edge.i.i.i190
  %i.u = phi ptr [ %.pre588, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit196_crit_edge ], [ %i.t, %._crit_edge.i.i.i190 ] ; 7 uses
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !50
  %.not.i197 = icmp eq ptr %i.u, %i.v
  br i1 %.not.i197, label %bb.e, label %._crit_edge.i.i.i198

._crit_edge.i.i.i198:                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit196
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  store ptr %i.w, ptr %i.u, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.w, ptr noundef nonnull align 1 dereferenceable(8) @.str.225, i64 7, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 7, ptr %i.x, align 8, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 23
  store i8 0, ptr %i.y, align 1, !tbaa !16
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  store ptr %i.z, ptr %i.a, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit204

bb.e:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit196
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA8_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr %i.u, ptr noundef nonnull align 1 dereferenceable(8) @.str.225)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit204_crit_edge unwind label %bb.q

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit204_crit_edge: ; preds = %bb.e
  %.pre589 = load ptr, ptr %i.a, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit204

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit204: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit204_crit_edge, %._crit_edge.i.i.i198
  %i.aa = phi ptr [ %.pre589, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit204_crit_edge ], [ %i.z, %._crit_edge.i.i.i198 ] ; 7 uses
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !50
  %.not.i205 = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i205, label %bb.f, label %._crit_edge.i.i.i206

._crit_edge.i.i.i206:                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit204
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.ac, ptr noundef nonnull align 1 dereferenceable(8) @.str.226, i64 7, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 7, ptr %i.ad, align 8, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 23
  store i8 0, ptr %i.ae, align 1, !tbaa !16
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 32 ; 2 uses
  store ptr %i.af, ptr %i.a, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit212

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit204
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA8_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr %i.aa, ptr noundef nonnull align 1 dereferenceable(8) @.str.226)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit212_crit_edge unwind label %bb.q

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit212_crit_edge: ; preds = %bb.f
  %.pre590 = load ptr, ptr %i.a, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit212

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit212: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit212_crit_edge, %._crit_edge.i.i.i206
  %i.ag = phi ptr [ %.pre590, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit212_crit_edge ], [ %i.af, %._crit_edge.i.i.i206 ] ; 7 uses
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !50
  %.not.i213 = icmp eq ptr %i.ag, %i.ah
  br i1 %.not.i213, label %bb.g, label %._crit_edge.i.i.i214

._crit_edge.i.i.i214:                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit212
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.ai, ptr noundef nonnull align 1 dereferenceable(6) @.str.227, i64 5, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 5, ptr %i.aj, align 8, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 21
  store i8 0, ptr %i.ak, align 1, !tbaa !16
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 2 uses
  store ptr %i.al, ptr %i.a, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit220

bb.g:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit212
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA6_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr %i.ag, ptr noundef nonnull align 1 dereferenceable(6) @.str.227)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit220_crit_edge unwind label %bb.q

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit220_crit_edge: ; preds = %bb.g
  %.pre591 = load ptr, ptr %i.a, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit220

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit220: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit220_crit_edge, %._crit_edge.i.i.i214
  %i.am = phi ptr [ %.pre591, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit220_crit_edge ], [ %i.al, %._crit_edge.i.i.i214 ] ; 7 uses
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !50
  %.not.i221 = icmp eq ptr %i.am, %i.an
  br i1 %.not.i221, label %bb.h, label %._crit_edge.i.i.i222

._crit_edge.i.i.i222:                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit220
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.ao, ptr noundef nonnull align 1 dereferenceable(8) @.str.228, i64 7, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 7, ptr %i.ap, align 8, !tbaa !13
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 23
  store i8 0, ptr %i.aq, align 1, !tbaa !16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 32 ; 2 uses
  store ptr %i.ar, ptr %i.a, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit228

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA6_KcEEERS5_DpOT_.exit220
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA8_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr %i.am, ptr noundef nonnull align 1 dereferenceable(8) @.str.228)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit228_crit_edge unwind label %bb.q

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit228_crit_edge: ; preds = %bb.h
  %.pre592 = load ptr, ptr %i.a, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit228

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit228: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit228_crit_edge, %._crit_edge.i.i.i222
  %i.as = phi ptr [ %.pre592, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit228_crit_edge ], [ %i.ar, %._crit_edge.i.i.i222 ] ; 7 uses
  %i.at = load ptr, ptr %i.b, align 8, !tbaa !50
  %.not.i229 = icmp eq ptr %i.as, %i.at
  br i1 %.not.i229, label %bb.i, label %._crit_edge.i.i.i230

._crit_edge.i.i.i230:                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit228
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  store ptr %i.au, ptr %i.as, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.au, ptr noundef nonnull align 1 dereferenceable(8) @.str.229, i64 7, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 7, ptr %i.av, align 8, !tbaa !13
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 23
  store i8 0, ptr %i.aw, align 1, !tbaa !16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 32 ; 2 uses
  store ptr %i.ax, ptr %i.a, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit236

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit228
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA8_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr %i.as, ptr noundef nonnull align 1 dereferenceable(8) @.str.229)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit236_crit_edge unwind label %bb.q

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit236_crit_edge: ; preds = %bb.i
  %.pre593 = load ptr, ptr %i.a, align 8, !tbaa !51
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit236

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit236: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit236_crit_edge, %._crit_edge.i.i.i230
  %i.ay = phi ptr [ %.pre593, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit236_crit_edge ], [ %i.ax, %._crit_edge.i.i.i230 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  %i.az = load ptr, ptr %19, align 8, !tbaa !48   ; 2 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 5
  invoke void @_ZN5vcpkg9CmdParserC1ENS_4SpanIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE(ptr noundef nonnull align 8 dereferenceable(144) %20, ptr %i.az, i64 %i.bd)
          to label %._crit_edge.i.i unwind label %bb.r

._crit_edge.i.i:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit236
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  %i.be = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  store ptr %i.be, ptr %22, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.be, ptr noundef nonnull align 1 dereferenceable(3) @.str.230, i64 3, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 3, ptr %i.bf, align 8, !tbaa !13
  %i.bg = getelementptr inbounds nuw i8, ptr %22, i64 19
  store i8 0, ptr %i.bg, align 1, !tbaa !16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false)
  %i.bh = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #23
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i unwind label %bb.j ; 3 uses

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i: ; preds = %._crit_edge.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %22, i64 32
  store ptr %i.bh, ptr %21, align 8, !tbaa !48
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bk = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 5 uses
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !50
  %i.bl = invoke noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef nonnull %22, ptr noundef nonnull %i.bi, ptr noundef nonnull %i.bh)
          to label %bb.l unwind label %bb.j

bb.j:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i, %._crit_edge.i.i
  %i.bm = landingpad { ptr, i32 }
          cleanup
  %i.bn = load ptr, ptr %21, align 8, !tbaa !48   ; 3 uses
  %.not.i.i5.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i5.i, label %.body, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !50
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = sub i64 %i.bq, %i.br
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.bs) #22
  br label %.body

bb.l:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 17 uses
  store ptr %i.bl, ptr %i.bt, align 8, !tbaa !51
  %i.bu = load ptr, ptr %22, align 8, !tbaa !24   ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !16
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.by) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #20
  store ptr @.str.61, ptr %24, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 5, ptr %i.bz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #20
  store ptr @.str, ptr %25, align 8, !tbaa !18
  %i.ca = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 510, ptr %i.ca, align 8, !tbaa !20
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef nonnull @.str.270) #20
  %i.cb = load ptr, ptr %26, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.cd = load i64, ptr %i.cc, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %23, ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull align 8 dereferenceable(16) %25, ptr %i.cb, i64 %i.cd, i32 noundef 2)
          to label %bb.m unwind label %bb.s

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  %i.ce = invoke noundef zeroext i1 @_ZN5vcpkg9CmdParser18parse_multi_optionENS_10StringViewENS_12StabilityTagERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(144) %20, ptr nonnull @.str.65, i64 1, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(24) %21)
          to label %bb.n unwind label %bb.t

bb.n:                                             ; preds = %bb.m
  %i.cf = zext i1 %i.ce to i8                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  %i.cg = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i8 0, ptr %i.cg, align 8, !tbaa !25, !alias.scope !491
  %i.ch = getelementptr inbounds nuw i8, ptr %18, i64 9
  store i8 %i.cf, ptr %i.ch, align 1, !tbaa !28, !alias.scope !491
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch9UnaryExprIbEE, i64 16), ptr %18, align 8, !tbaa !29, !alias.scope !491
  %i.ci = getelementptr inbounds nuw i8, ptr %18, i64 10
  store i8 %i.cf, ptr %i.ci, align 2, !tbaa !116, !alias.scope !491
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %23, ptr noundef nonnull align 8 dereferenceable(10) %18)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cj = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(11) dereferenceable(11) %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  br label %.body238

bb.p:                                             ; preds = %bb.n
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(11) dereferenceable(11) %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  br label %bb.v

bb.q:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.kz

bb.r:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEERS5_DpOT_.exit236
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ky

.body:                                            ; preds = %bb.j, %bb.k
  %i.cm = load ptr, ptr %22, align 8, !tbaa !24   ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240: ; preds = %.body
  %i.cp = load i64, ptr %i.cn, align 8, !tbaa !16
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cq) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  br label %bb.kx

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  br label %bb.aj

bb.t:                                             ; preds = %bb.m
  %i.cs = landingpad { ptr, i32 }
          catch ptr null
  br label %.body238

.body238:                                         ; preds = %bb.o, %bb.t
  %eh.lpad-body239 = phi { ptr, i32 } [ %i.cs, %bb.t ], [ %i.cj, %bb.o ]
  %i.ct = extractvalue { ptr, i32 } %eh.lpad-body239, 0
  %i.cu = call ptr @__cxa_begin_catch(ptr %i.ct) #20 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %23)
          to label %bb.u unwind label %bb.ag

bb.u:                                             ; preds = %.body238
  invoke void @__cxa_end_catch()
          to label %bb.v unwind label %bb.ah

bb.v:                                             ; preds = %bb.u, %bb.p
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %23)
          to label %bb.w unwind label %bb.ah

bb.w:                                             ; preds = %bb.v
  %i.cv = getelementptr inbounds nuw i8, ptr %23, i64 58
  %i.cw = load i8, ptr %i.cv, align 2, !tbaa !37, !range !44, !noundef !45
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %_ZN5Catch16AssertionHandlerD2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cy = getelementptr inbounds nuw i8, ptr %23, i64 64
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !46, !nonnull !45, !align !47 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !29
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 112
  %i.dc = load ptr, ptr %i.db, align 8
  invoke void %i.dc(ptr noundef nonnull align 8 dereferenceable(8) %i.cz, ptr noundef nonnull align 8 dereferenceable(72) %23)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dd = landingpad { ptr, i32 }
          catch ptr null
end_hunk_5

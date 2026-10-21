Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmMakefileTargetGenerator?download=true
inline.NumInlined: 5642
inline.NumDeleted: 1654
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN25cmMakefileTargetGenerator20WriteObjectRuleFilesERK12cmSourceFile:bb.a
  %i.aa = alloca i64, align 8                     ; 6 uses
  %i.ab = alloca i64, align 8                     ; 5 uses
  %i.ac = alloca i64, align 8                     ; 5 uses
  %i.ad = alloca i64, align 8                     ; 6 uses
  %i.ae = alloca i64, align 8                     ; 6 uses
  %32 = alloca [4 x %"struct.std::pair.1155"], align 8 ; 15 uses
  %33 = alloca %class.cmAlphaNum, align 8         ; 6 uses
  %34 = alloca [3 x %"struct.std::pair.1155"], align 8 ; 12 uses
  %35 = alloca %class.cmAlphaNum, align 8         ; 6 uses
  %i.af = alloca i64, align 8                     ; 5 uses
  %i.ag = alloca i64, align 8                     ; 5 uses
  %i.ah = alloca i64, align 8                     ; 6 uses
  %i.ai = alloca i64, align 8                     ; 6 uses
  %36 = alloca [5 x %"struct.std::pair.1155"], align 8 ; 18 uses
  %37 = alloca %class.cmAlphaNum, align 8         ; 6 uses
  %38 = alloca [2 x %"struct.std::pair.1155"], align 8 ; 9 uses
  %i.aj = alloca i64, align 8                     ; 6 uses
  %i.ak = alloca i64, align 8                     ; 5 uses
  %i.al = alloca i64, align 8                     ; 5 uses
  %i.am = alloca i64, align 8                     ; 6 uses
  %i.an = alloca i64, align 8                     ; 6 uses
  %i.ao = alloca i64, align 8                     ; 6 uses
  %39 = alloca [3 x %"struct.std::pair.1155"], align 8 ; 12 uses
  %40 = alloca %class.cmAlphaNum, align 8         ; 6 uses
  %i.ap = alloca i64, align 8                     ; 6 uses
  %41 = alloca [3 x %"struct.std::pair.1155"], align 8 ; 12 uses
  %42 = alloca %class.cmAlphaNum, align 8         ; 6 uses
  %43 = alloca [3 x %"struct.std::pair.1155"], align 8 ; 12 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 61 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 24 uses
  %47 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 18 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %50 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %51 = alloca %"class.std::vector", align 8      ; 23 uses
  %52 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %53 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %54 = alloca %"class.std::__cxx11::basic_string", align 8 ; 32 uses
  %55 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %56 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %57 = alloca %"class.std::vector", align 8      ; 11 uses
  %58 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %59 = alloca %"class.std::unordered_map.290", align 8 ; 18 uses
  %60 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %61 = alloca %"struct.std::pair.1012", align 8  ; 10 uses
  %62 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %63 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %64 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %65 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %66 = alloca %"class.std::vector", align 8      ; 10 uses
  %67 = alloca %"class.std::__cxx11::basic_string", align 8 ; 34 uses
  %68 = alloca %"class.std::__cxx11::basic_string", align 8 ; 19 uses
  %69 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %70 = alloca %class.cmGeneratorExpressionInterpreter, align 8 ; 17 uses
  %71 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %72 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %73 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %74 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %75 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %76 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %77 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %78 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %79 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %80 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %81 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %82 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %83 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %84 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %85 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %86 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %87 = alloca %"class.std::vector.987", align 8  ; 11 uses
  %88 = alloca %"class.std::vector", align 8      ; 10 uses
  %89 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %90 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %91 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %92 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %93 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %94 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %95 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %96 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %97 = alloca %"class.std::vector", align 8      ; 18 uses
  %98 = alloca %"class.std::vector.987", align 8  ; 11 uses
  %99 = alloca %"class.std::vector", align 8      ; 10 uses
  %100 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %101 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %102 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %103 = alloca %"class.std::set", align 8        ; 14 uses
  %104 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %105 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %106 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %107 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %108 = alloca %"class.std::vector.987", align 8 ; 11 uses
  %109 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %110 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %111 = alloca %"class.std::vector", align 8     ; 9 uses
  %112 = alloca %"class.std::vector", align 8     ; 27 uses
  %113 = alloca %"struct.cmLocalUnixMakefileGenerator3::EchoProgress", align 8 ; 13 uses
  %114 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %115 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %116 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %117 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %118 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %119 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %120 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %121 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %122 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %123 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %124 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %125 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %126 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %127 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %128 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %129 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %130 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %131 = alloca %"struct.cmRulePlaceholderExpander::RuleVariables", align 8 ; 31 uses
  %132 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %133 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %134 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %135 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %136 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %137 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %138 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %139 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %140 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %141 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %142 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %143 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %144 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %145 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %146 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %147 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %148 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %149 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %150 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %151 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %152 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %153 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %154 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %155 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %156 = alloca %"class.std::unique_ptr.1024", align 8 ; 11 uses
  %157 = alloca %"class.std::__cxx11::basic_string", align 8 ; 24 uses
  %158 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %159 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %160 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %161 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %162 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %163 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %164 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %165 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %166 = alloca %class.cmList, align 8            ; 22 uses
  %167 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %168 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %169 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %170 = alloca %"class.std::__cxx11::basic_string", align 8 ; 21 uses
  %171 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %172 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %173 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %174 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %175 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %176 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %177 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %178 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %179 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %180 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %181 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %182 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %183 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %184 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %185 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %186 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %187 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %188 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %189 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %190 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %191 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %192 = alloca %"class.std::function.1034", align 8 ; 11 uses
  %193 = alloca %class.cmList, align 8            ; 15 uses
  %194 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %195 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %196 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %197 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %198 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %199 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %200 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %201 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %202 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %203 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %204 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %205 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %206 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %207 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %208 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %209 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %210 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %211 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %212 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %213 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %214 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %215 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %216 = alloca %class.cmList, align 8            ; 14 uses
  %217 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %218 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %219 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %220 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %221 = alloca %"class.std::vector", align 8     ; 12 uses
  %222 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %223 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %224 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %225 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %226 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %227 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %228 = alloca %class.cmList, align 8            ; 14 uses
  %229 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 14 uses
  %230 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %231 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %232 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %233 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %234 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %235 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %236 = alloca %class.cmList, align 8            ; 14 uses
  %237 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 14 uses
  %238 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %239 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #25
  call void @_ZNK12cmSourceFile11GetLanguageB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %44, ptr noundef nonnull align 8 dereferenceable(376) %1)
  %i.aq = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 22 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !39 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.agg, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !138
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 2371
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !376, !range !287, !noundef !288
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.c, label %.critedge941

bb.c:                                             ; preds = %bb.b
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !296
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #25, !noalias !901
  store i64 6, ptr %43, align 8, !tbaa !290, !alias.scope !902, !noalias !901
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %43, i64 8
  store ptr @.str.40, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !291, !alias.scope !902, !noalias !901
  %i.ba = getelementptr inbounds nuw i8, ptr %43, i64 16
  store ptr null, ptr %i.ba, align 8, !tbaa !294, !alias.scope !902, !noalias !901
  %i.bb = getelementptr inbounds nuw i8, ptr %43, i64 24
  %i.bc = load ptr, ptr %44, align 8, !tbaa !269, !noalias !901
  store i64 %i.ar, ptr %i.bb, align 8, !tbaa !290, !alias.scope !903, !noalias !901
  %.sroa.4.0..sroa_idx.i10.i = getelementptr inbounds nuw i8, ptr %43, i64 32
  store ptr %i.bc, ptr %.sroa.4.0..sroa_idx.i10.i, align 8, !tbaa !291, !alias.scope !903, !noalias !901
  %i.bd = getelementptr inbounds nuw i8, ptr %43, i64 40
  store ptr null, ptr %i.bd, align 8, !tbaa !294, !alias.scope !903, !noalias !901
  %i.be = getelementptr inbounds nuw i8, ptr %43, i64 48
  store i64 21, ptr %i.be, align 8, !tbaa !290, !alias.scope !904, !noalias !901
  %.sroa.4.0..sroa_idx.i18.i = getelementptr inbounds nuw i8, ptr %43, i64 56
  store ptr @.str.53, ptr %.sroa.4.0..sroa_idx.i18.i, align 8, !tbaa !291, !alias.scope !904, !noalias !901
  %i.bf = getelementptr inbounds nuw i8, ptr %43, i64 64
  store ptr null, ptr %i.bf, align 8, !tbaa !294, !alias.scope !904, !noalias !901
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %45, ptr nonnull %43, i64 3)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #25, !noalias !901
  %i.bg = invoke ptr @_ZNK10cmMakefile13GetDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2952) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %45)
          to label %bb.e unwind label %bb.m       ; 3 uses

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp eq ptr %i.bg, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !269
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !39
  %i.bk = call noundef zeroext i1 @_ZN7cmValue4IsOnESt17basic_string_viewIcSt11char_traitsIcEE(i64 %i.bj, ptr %i.bh) #25
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.ph = phi i1 [ %i.bk, %bb.f ], [ false, %bb.e ]
  %i.bl = load ptr, ptr %45, align 8, !tbaa !269  ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !40
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #25
  br label %.critedge941

.critedge941:                                     ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bq = phi i1 [ %.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %bb.b ] ; 5 uses
  %i.br = zext i1 %i.bq to i32                    ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 38 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !270
  %i.bu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN17cmGeneratorTarget13GetObjectNameB5cxx11EPK12cmSourceFile(ptr noundef nonnull align 8 dereferenceable(3187) %i.bt, ptr noundef nonnull %1)
          to label %bb.h unwind label %bb.n       ; 3 uses

bb.h:                                             ; preds = %.critedge941
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #25
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 256
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #25, !noalias !905
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !269, !noalias !905
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !39, !noalias !905
  store i64 %i.by, ptr %41, align 8, !tbaa !290, !alias.scope !906, !noalias !905
  %.sroa.4.0..sroa_idx.i.i972 = getelementptr inbounds nuw i8, ptr %41, i64 8
  store ptr %i.bw, ptr %.sroa.4.0..sroa_idx.i.i972, align 8, !tbaa !291, !alias.scope !906, !noalias !905
  %i.bz = getelementptr inbounds nuw i8, ptr %41, i64 16
  store ptr null, ptr %i.bz, align 8, !tbaa !294, !alias.scope !906, !noalias !905
  %i.ca = getelementptr inbounds nuw i8, ptr %41, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #25, !noalias !905
  %i.cb = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %42, i64 24 ; 3 uses
  store i64 0, ptr %42, align 8, !noalias !905
  store i8 47, ptr %i.cc, align 8, !tbaa !40, !noalias !905
  store i64 1, ptr %i.cb, align 8, !tbaa !290, !noalias !905
  %.sroa.4.0..sroa_idx.i3.i = getelementptr inbounds nuw i8, ptr %42, i64 16
  store ptr %i.cc, ptr %.sroa.4.0..sroa_idx.i3.i, align 8, !tbaa !291, !noalias !905
  store i64 1, ptr %i.ca, align 8, !tbaa !290, !alias.scope !907, !noalias !905
  %.sroa.4.0..sroa_idx.i11.i = getelementptr inbounds nuw i8, ptr %41, i64 32
  store ptr %i.cc, ptr %.sroa.4.0..sroa_idx.i11.i, align 8, !tbaa !291, !alias.scope !907, !noalias !905
  %i.cd = getelementptr inbounds nuw i8, ptr %41, i64 40
  store ptr null, ptr %i.cd, align 8, !tbaa !294, !alias.scope !907, !noalias !905
  %i.ce = getelementptr inbounds nuw i8, ptr %41, i64 48
  %i.cf = load ptr, ptr %i.bu, align 8, !tbaa !269, !noalias !905
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !39, !noalias !905
  store i64 %i.ch, ptr %i.ce, align 8, !tbaa !290, !alias.scope !908, !noalias !905
  %.sroa.4.0..sroa_idx.i19.i = getelementptr inbounds nuw i8, ptr %41, i64 56
  store ptr %i.cf, ptr %.sroa.4.0..sroa_idx.i19.i, align 8, !tbaa !291, !alias.scope !908, !noalias !905
  %i.ci = getelementptr inbounds nuw i8, ptr %41, i64 64
  store ptr null, ptr %i.ci, align 8, !tbaa !294, !alias.scope !908, !noalias !905
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %46, ptr nonnull %41, i64 3)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #25, !noalias !905
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #25, !noalias !905
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !98 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not10.i.i.i, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i
  %i.cn = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !39 ; 4 uses
  %i.cp = load ptr, ptr %46, align 8              ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.cm, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !39 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.co, i64 %i.cr) ; 2 uses
  %i.cs = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.cs, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.j
  %i.ct = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !269
  %i.cv = call i32 @memcmp(ptr noundef %i.cu, ptr noundef %i.cp, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #25 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.cv, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.j
  %i.cw = sub i64 %i.cr, %i.co
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.cw, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.cv, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.cx = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.cx, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.cx, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !307 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i, label %bb.j, !llvm.loop !606

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.cy = icmp eq ptr %.19.i.i.i, %i.cm
  br i1 %i.cy, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !39 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.da, i64 %i.co) ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN25cmMakefileTargetGenerator20WriteObjectRuleFilesERK12cmSourceFile:bb.a

bb.aau:                                           ; preds = %bb.aat
  switch i64 %i.dya, label %bb.aaw [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i2418
    i64 1, label %bb.aav
  ]

bb.aav:                                           ; preds = %bb.aau
  %i.dyc = load i8, ptr %i.dxy, align 1, !tbaa !40
  store i8 %i.dyc, ptr %i.dxv, align 1, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i2418

bb.aaw:                                           ; preds = %bb.aau
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dxv, ptr align 1 %i.dxy, i64 %i.dya, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i2418

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i2418: ; preds = %bb.aaw, %bb.aav, %bb.aau
  %i.dyd = load i64, ptr %i.dxn, align 8, !tbaa !39 ; 2 uses
  store i64 %i.dyd, ptr %i.dxt, align 8, !tbaa !39
  %i.dye = load ptr, ptr %.sroa.03073.03272, align 8, !tbaa !269
  %i.dyf = getelementptr inbounds nuw i8, ptr %i.dye, i64 %i.dyd
  store i8 0, ptr %i.dyf, align 1, !tbaa !40
  %.pre.i2419 = load ptr, ptr %215, align 8, !tbaa !269
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit2422

.thread.i2421:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i2420
  store ptr %i.dxy, ptr %.sroa.03073.03272, align 8, !tbaa !269
  %i.dyg = load i64, ptr %i.dxn, align 8, !tbaa !39
  store i64 %i.dyg, ptr %i.dxt, align 8, !tbaa !39
  %i.dyh = load i64, ptr %i.dxm, align 8, !tbaa !40
  store i64 %i.dyh, ptr %i.dxw, align 8, !tbaa !40
  br label %bb.aay

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i2415: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i2414
  %i.dyi = load i64, ptr %i.dxw, align 8, !tbaa !40
  store ptr %i.dxy, ptr %.sroa.03073.03272, align 8, !tbaa !269
  %i.dyj = load i64, ptr %i.dxn, align 8, !tbaa !39
  store i64 %i.dyj, ptr %i.dxt, align 8, !tbaa !39
  %i.dyk = load i64, ptr %i.dxm, align 8, !tbaa !40
  store i64 %i.dyk, ptr %i.dxw, align 8, !tbaa !40
  %.not.i2416 = icmp eq ptr %i.dxv, null
  br i1 %.not.i2416, label %bb.aay, label %bb.aax

bb.aax:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i2415
  store ptr %i.dxv, ptr %215, align 8, !tbaa !269
  store i64 %i.dyi, ptr %i.dxm, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit2422

bb.aay:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i2415, %.thread.i2421
  store ptr %i.dxm, ptr %215, align 8, !tbaa !269
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit2422

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit2422: ; preds = %bb.aat, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i2418, %bb.aax, %bb.aay
  %i.dyl = phi ptr [ %i.dxv, %bb.aax ], [ %i.dxm, %bb.aay ], [ %i.dxy, %bb.aat ], [ %.pre.i2419, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i2418 ]
  store i64 0, ptr %i.dxn, align 8, !tbaa !39
  store i8 0, ptr %i.dyl, align 1, !tbaa !40
  %i.dym = load ptr, ptr %215, align 8, !tbaa !269 ; 2 uses
  %i.dyn = icmp eq ptr %i.dym, %i.dxm
  br i1 %i.dyn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2425, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2423

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2423: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit2422
  %i.dyo = load i64, ptr %i.dxm, align 8, !tbaa !40
  %i.dyp = add i64 %i.dyo, 1
  call void @_ZdlPvm(ptr noundef %i.dym, i64 noundef %i.dyp) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2425

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2425: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit2422, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2423
  call void @llvm.lifetime.end.p0(ptr nonnull %215) #25
  %i.dyq = load ptr, ptr %156, align 8, !tbaa !394
  %i.dyr = load ptr, ptr %i.fw, align 8, !tbaa !103
  invoke void @_ZN25cmRulePlaceholderExpander19ExpandRuleVariablesEP17cmOutputConverterRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_13RuleVariablesE(ptr noundef nonnull align 8 dereferenceable(256) %i.dyq, ptr noundef %i.dyr, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.03073.03272, ptr noundef nonnull align 8 dereferenceable(400) %131)
          to label %bb.aaz unwind label %.loopexit.split-lp3245.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aaz:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2425
  %i.dys = getelementptr inbounds nuw i8, ptr %.sroa.03073.03272, i64 32 ; 2 uses
  %.not3225 = icmp eq ptr %i.dys, %i.dxi
  br i1 %.not3225, label %._crit_edge3275, label %bb.aar

bb.aba:                                           ; preds = %bb.aar
  %i.dyt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %215) #25
  br label %.loopexit.split-lp3245

bb.abb:                                           ; preds = %._crit_edge3275
  %i.dyu = load ptr, ptr %i.fw, align 8, !tbaa !103
  %i.dyv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK16cmLocalGenerator18GetBinaryDirectoryB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(816) %i.dyu)
          to label %bb.abc unwind label %.loopexit.split-lp3245.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.abc:                                           ; preds = %bb.abb
  invoke void @_ZN29cmLocalUnixMakefileGenerator315CreateCDCommandERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERKS6_SB_(ptr noundef nonnull align 8 dereferenceable(1104) %i.dxo, ptr noundef nonnull align 8 dereferenceable(24) %166, ptr noundef nonnull align 8 dereferenceable(32) %i.dxp, ptr noundef nonnull align 8 dereferenceable(32) %i.dyv)
          to label %bb.abd unwind label %.loopexit.split-lp3245.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.abd:                                           ; preds = %bb.abc
  %i.dyw = getelementptr inbounds nuw i8, ptr %112, i64 8 ; 14 uses
  %i.dyx = load ptr, ptr %i.dyw, align 8, !tbaa !282
  %i.dyy = load ptr, ptr %166, align 8, !tbaa !282
  %i.dyz = load ptr, ptr %i.cly, align 8, !tbaa !282
  %i.dza = load ptr, ptr %112, align 8, !tbaa !282 ; 2 uses
  %i.dzb = ptrtoint ptr %i.dyx to i64
  %i.dzc = ptrtoint ptr %i.dza to i64
  %i.dzd = sub i64 %i.dzb, %i.dzc
  %i.dze = getelementptr inbounds i8, ptr %i.dza, i64 %i.dzd
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEEEvNSA_IPS5_S7_EET_SG_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %112, ptr %i.dze, ptr %i.dyy, ptr %i.dyz)
          to label %_ZN2cm6appendISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE6cmListTnNSt9enable_ifIXaaaaaaaasr2cm21is_sequence_containerIT_EE5valuesr2cm14is_input_rangeIT0_EE5valuentsr2cm13is_unique_ptrINSC_10value_typeEEE5valuentsr2cm13is_unique_ptrINSD_10value_typeEEE5valuesr3std14is_convertibleISF_SE_EE5valueEiE4typeELi0EEEvRSC_RKSD_.exit unwind label %.loopexit.split-lp3245.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN2cm6appendISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE6cmListTnNSt9enable_ifIXaaaaaaaasr2cm21is_sequence_containerIT_EE5valuesr2cm14is_input_rangeIT0_EE5valuentsr2cm13is_unique_ptrINSC_10value_typeEEE5valuentsr2cm13is_unique_ptrINSD_10value_typeEEE5valuesr3std14is_convertibleISF_SE_EE5valueEiE4typeELi0EEEvRSC_RKSD_.exit: ; preds = %bb.abd
  %i.dzf = load ptr, ptr %203, align 8, !tbaa !269 ; 2 uses
  %i.dzg = icmp eq ptr %i.dzf, %i.dnc
  br i1 %i.dzg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2429, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2427

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2427: ; preds = %_ZN2cm6appendISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE6cmListTnNSt9enable_ifIXaaaaaaaasr2cm21is_sequence_containerIT_EE5valuesr2cm14is_input_rangeIT0_EE5valuentsr2cm13is_unique_ptrINSC_10value_typeEEE5valuentsr2cm13is_unique_ptrINSD_10value_typeEEE5valuesr3std14is_convertibleISF_SE_EE5valueEiE4typeELi0EEEvRSC_RKSD_.exit
  %i.dzh = load i64, ptr %i.dnc, align 8, !tbaa !40
  %i.dzi = add i64 %i.dzh, 1
  call void @_ZdlPvm(ptr noundef %i.dzf, i64 noundef %i.dzi) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2429

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2429: ; preds = %_ZN2cm6appendISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE6cmListTnNSt9enable_ifIXaaaaaaaasr2cm21is_sequence_containerIT_EE5valuesr2cm14is_input_rangeIT0_EE5valuentsr2cm13is_unique_ptrINSC_10value_typeEEE5valuentsr2cm13is_unique_ptrINSD_10value_typeEEE5valuesr3std14is_convertibleISF_SE_EE5valueEiE4typeELi0EEEvRSC_RKSD_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2427
  call void @llvm.lifetime.end.p0(ptr nonnull %203) #25
  %i.dzj = load ptr, ptr %198, align 8, !tbaa !269 ; 2 uses
  %i.dzk = icmp eq ptr %i.dzj, %i.dka
  br i1 %i.dzk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2432, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2430

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2430: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2429
  %i.dzl = load i64, ptr %i.dka, align 8, !tbaa !40
  %i.dzm = add i64 %i.dzl, 1
  call void @_ZdlPvm(ptr noundef %i.dzj, i64 noundef %i.dzm) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2432

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2432: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2429, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2430
  call void @llvm.lifetime.end.p0(ptr nonnull %198) #25
  %i.dzn = load ptr, ptr %185, align 8, !tbaa !269 ; 2 uses
  %i.dzo = icmp eq ptr %i.dzn, %i.czy
  br i1 %i.dzo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2435, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2433

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2433: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2432
  %i.dzp = load i64, ptr %i.czy, align 8, !tbaa !40
  %i.dzq = add i64 %i.dzp, 1
  call void @_ZdlPvm(ptr noundef %i.dzn, i64 noundef %i.dzq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2435

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2435: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2432, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2433
  call void @llvm.lifetime.end.p0(ptr nonnull %185) #25
  %i.dzr = load ptr, ptr %166, align 8, !tbaa !278 ; 3 uses
  %i.dzs = load ptr, ptr %i.cly, align 8, !tbaa !279 ; 2 uses
  %.not4.i.i.i.i2436 = icmp eq ptr %i.dzr, %i.dzs
  br i1 %.not4.i.i.i.i2436, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i2444, label %.lr.ph.i.i.i.i2437

.lr.ph.i.i.i.i2437:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2435, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i2440
  %.05.i.i.i.i2438 = phi ptr [ %i.dzy, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i2440 ], [ %i.dzr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2435 ] ; 3 uses
  %i.dzt = load ptr, ptr %.05.i.i.i.i2438, align 8, !tbaa !269 ; 2 uses
  %i.dzu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i2438, i64 16 ; 2 uses
  %i.dzv = icmp eq ptr %i.dzt, %i.dzu
  br i1 %i.dzv, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i2440, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i2439

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i2439: ; preds = %.lr.ph.i.i.i.i2437
  %i.dzw = load i64, ptr %i.dzu, align 8, !tbaa !40
  %i.dzx = add i64 %i.dzw, 1
  call void @_ZdlPvm(ptr noundef %i.dzt, i64 noundef %i.dzx) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i2440

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i2440: ; preds = %.lr.ph.i.i.i.i2437, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i2439
  %i.dzy = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i2438, i64 32 ; 2 uses
  %.not.i.i.i.i2441 = icmp eq ptr %i.dzy, %i.dzs
  br i1 %.not.i.i.i.i2441, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i2442, label %.lr.ph.i.i.i.i2437, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i2442: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i2440
  %.pr.i.i2443 = load ptr, ptr %166, align 8, !tbaa !278
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i2444

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i2444: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i2442, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2435
  %i.dzz = phi ptr [ %.pr.i.i2443, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i2442 ], [ %i.dzr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2435 ] ; 3 uses
  %.not.i.i1.i.i2445 = icmp eq ptr %i.dzz, null
  br i1 %.not.i.i1.i.i2445, label %_ZN6cmListD2Ev.exit2447, label %bb.abe

bb.abe:                                           ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i2444
  %i.eaa = getelementptr inbounds nuw i8, ptr %166, i64 16
  %i.eab = load ptr, ptr %i.eaa, align 8, !tbaa !281
  %i.eac = ptrtoint ptr %i.eab to i64
  %i.ead = ptrtoint ptr %i.dzz to i64
  %i.eae = sub i64 %i.eac, %i.ead
  call void @_ZdlPvm(ptr noundef nonnull %i.dzz, i64 noundef %i.eae) #26
  br label %_ZN6cmListD2Ev.exit2447

_ZN6cmListD2Ev.exit2447:                          ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i2444, %bb.abe
  call void @llvm.lifetime.end.p0(ptr nonnull %166) #25
  %i.eaf = load ptr, ptr %157, align 8, !tbaa !269 ; 2 uses
  %i.eag = icmp eq ptr %i.eaf, %i.ccj
  br i1 %i.eag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2450, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2448

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2448: ; preds = %_ZN6cmListD2Ev.exit2447
  %i.eah = load i64, ptr %i.ccj, align 8, !tbaa !40
  %i.eai = add i64 %i.eah, 1
  call void @_ZdlPvm(ptr noundef %i.eaf, i64 noundef %i.eai) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2450

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2450: ; preds = %_ZN6cmListD2Ev.exit2447, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2448
  call void @llvm.lifetime.end.p0(ptr nonnull %157) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %216) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %216, i8 0, i64 24, i1 false)
  %240 = getelementptr inbounds nuw i8, ptr %216, i64 8 ; 6 uses
  %i.eaj = getelementptr inbounds nuw i8, ptr %216, i64 16 ; 2 uses
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %216, ptr null, ptr noundef nonnull align 8 dereferenceable(32) %67)
          to label %_ZN6cmList12emplace_backIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit unwind label %.loopexit.split-lp3239.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN6cmList12emplace_backIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2450
  call void @llvm.lifetime.start.p0(ptr nonnull %217) #25
  %i.eak = getelementptr inbounds nuw i8, ptr %217, i64 16 ; 6 uses
  store ptr %i.eak, ptr %217, align 8, !tbaa !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.eak, ptr noundef nonnull align 1 dereferenceable(14) @.str.121, i64 14, i1 false)
  %i.eal = getelementptr inbounds nuw i8, ptr %217, i64 8
  store i64 14, ptr %i.eal, align 8, !tbaa !39
  %i.eam = getelementptr inbounds nuw i8, ptr %217, i64 30
  store i8 0, ptr %i.eam, align 2, !tbaa !40
  %i.ean = invoke ptr @_ZNK12cmSourceFile11GetPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 8 dereferenceable(32) %217)
          to label %bb.abf unwind label %bb.abq   ; 3 uses

bb.abf:                                           ; preds = %_ZN6cmList12emplace_backIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit
  %i.eao = load ptr, ptr %217, align 8, !tbaa !269 ; 2 uses
  %i.eap = icmp eq ptr %i.eao, %i.eak
  br i1 %i.eap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2460, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2458

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2458: ; preds = %bb.abf
  %i.eaq = load i64, ptr %i.eak, align 8, !tbaa !40
  %i.ear = add i64 %i.eaq, 1
  call void @_ZdlPvm(ptr noundef %i.eao, i64 noundef %i.ear) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2460

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2460: ; preds = %bb.abf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2458
  call void @llvm.lifetime.end.p0(ptr nonnull %217) #25
  %.not3226 = icmp eq ptr %i.ean, null
  br i1 %.not3226, label %bb.abu, label %bb.abg

bb.abg:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2460
  call void @llvm.lifetime.start.p0(ptr nonnull %218) #25
  %i.eas = getelementptr inbounds nuw i8, ptr %219, i64 16 ; 7 uses
  store ptr %i.eas, ptr %219, align 8, !tbaa !36
  %i.eat = load ptr, ptr %i.ean, align 8, !tbaa !269 ; 2 uses
  %i.eau = getelementptr inbounds nuw i8, ptr %i.ean, i64 8
  %i.eav = load i64, ptr %i.eau, align 8, !tbaa !39 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  store i64 %i.eav, ptr %i.g, align 8, !tbaa !290
  %i.eaw = icmp ugt i64 %i.eav, 15
  br i1 %i.eaw, label %.noexc.i2464, label %._crit_edge.i.i2463

.noexc.i2464:                                     ; preds = %bb.abg
  %i.eax = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %219, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc2465 unwind label %bb.abr ; 2 uses

.noexc2465:                                       ; preds = %.noexc.i2464
  store ptr %i.eax, ptr %219, align 8, !tbaa !269
  %i.eay = load i64, ptr %i.g, align 8, !tbaa !290
  store i64 %i.eay, ptr %i.eas, align 8, !tbaa !40
  br label %._crit_edge.i.i2463

._crit_edge.i.i2463:                              ; preds = %.noexc2465, %bb.abg
  %i.eaz = phi ptr [ %i.eax, %.noexc2465 ], [ %i.eas, %bb.abg ] ; 2 uses
  switch i64 %i.eav, label %bb.abi [
    i64 1, label %bb.abh
    i64 0, label %bb.abj
  ]

bb.abh:                                           ; preds = %._crit_edge.i.i2463
  %i.eba = load i8, ptr %i.eat, align 1, !tbaa !40
  store i8 %i.eba, ptr %i.eaz, align 1, !tbaa !40
  br label %bb.abj

bb.abi:                                           ; preds = %._crit_edge.i.i2463
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eaz, ptr align 1 %i.eat, i64 %i.eav, i1 false)
  br label %bb.abj

bb.abj:                                           ; preds = %bb.abi, %bb.abh, %._crit_edge.i.i2463
  %i.ebb = load i64, ptr %i.g, align 8, !tbaa !290 ; 2 uses
  %i.ebc = getelementptr inbounds nuw i8, ptr %219, i64 8
  store i64 %i.ebb, ptr %i.ebc, align 8, !tbaa !39
  %i.ebd = load ptr, ptr %219, align 8, !tbaa !269
  %i.ebe = getelementptr inbounds nuw i8, ptr %i.ebd, i64 %i.ebb
  store i8 0, ptr %i.ebe, align 1, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  %i.ebf = load ptr, ptr %i.fw, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %220) #25
  %i.ebg = getelementptr inbounds nuw i8, ptr %220, i64 16 ; 6 uses
  store ptr %i.ebg, ptr %220, align 8, !tbaa !36
  %i.ebh = getelementptr inbounds nuw i8, ptr %220, i64 8
  store i64 0, ptr %i.ebh, align 8, !tbaa !39
  store i8 0, ptr %i.ebg, align 8, !tbaa !40
  invoke void @_ZN21cmGeneratorExpression8EvaluateENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPK16cmLocalGeneratorRKS5_PK17cmGeneratorTargetP31cmGeneratorExpressionDAGCheckerSD_SA_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %218, ptr noundef nonnull align 8 %219, ptr noundef %i.ebf, ptr noundef nonnull align 8 dereferenceable(32) %54, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(32) %220)
          to label %bb.abk unwind label %bb.abs

bb.abk:                                           ; preds = %bb.abj
  %i.ebi = load ptr, ptr %220, align 8, !tbaa !269 ; 2 uses
  %i.ebj = icmp eq ptr %i.ebi, %i.ebg
  br i1 %i.ebj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2469, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2467

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2467: ; preds = %bb.abk
  %i.ebk = load i64, ptr %i.ebg, align 8, !tbaa !40
  %i.ebl = add i64 %i.ebk, 1
  call void @_ZdlPvm(ptr noundef %i.ebi, i64 noundef %i.ebl) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2469

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2469: ; preds = %bb.abk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2467
  call void @llvm.lifetime.end.p0(ptr nonnull %220) #25
  %i.ebm = load ptr, ptr %219, align 8, !tbaa !269 ; 2 uses
  %i.ebn = icmp eq ptr %i.ebm, %i.eas
  br i1 %i.ebn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2472, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2470

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2470: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2469
  %i.ebo = load i64, ptr %i.eas, align 8, !tbaa !40
  %i.ebp = add i64 %i.ebo, 1
  call void @_ZdlPvm(ptr noundef %i.ebm, i64 noundef %i.ebp) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2472

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2472: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2469, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2470
  %i.ebq = getelementptr inbounds nuw i8, ptr %218, i64 8
  %i.ebr = load i64, ptr %i.ebq, align 8, !tbaa !39
  %i.ebs = icmp eq i64 %i.ebr, 0
  br i1 %i.ebs, label %_ZN6cmList6appendERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_14ExpandElementsENS_13EmptyElementsE.exit2474, label %bb.abl

bb.abl:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2472
  %i.ebt = load ptr, ptr %240, align 8, !tbaa !282
  %i.ebu = invoke ptr @_ZN6cmList6InsertERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EERSC_NS_14ExpandElementsENS_13EmptyElementsE(ptr noundef nonnull align 8 dereferenceable(24) %216, ptr %i.ebt, ptr noundef nonnull align 8 dereferenceable(32) %218, i32 noundef 1, i32 noundef 0)
          to label %_ZN6cmList6appendERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_14ExpandElementsENS_13EmptyElementsE.exit2474 unwind label %bb.abt ; 0 uses

.loopexit.split-lp3245.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2425, %bb.abd, %bb.abc, %bb.abb, %._crit_edge3275
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp3245

.loopexit.split-lp3245:                           ; preds = %.loopexit.split-lp3245.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.aba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2410
  %.pn861.pn = phi { ptr, i32 } [ %.pn813.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2410 ], [ %i.dyt, %bb.aba ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp3245.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.ebv = load ptr, ptr %203, align 8, !tbaa !269 ; 2 uses
  %i.ebw = icmp eq ptr %i.ebv, %i.dnc
  br i1 %i.ebw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2477, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2475

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2475: ; preds = %.loopexit.split-lp3245
  %i.ebx = load i64, ptr %i.dnc, align 8, !tbaa !40
  %i.eby = add i64 %i.ebx, 1
  call void @_ZdlPvm(ptr noundef %i.ebv, i64 noundef %i.eby) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2477

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2477: ; preds = %.loopexit.split-lp3245, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2475, %bb.zd
  %.pn861.pn.pn = phi { ptr, i32 } [ %i.doz, %bb.zd ], [ %.pn861.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2475 ], [ %.pn861.pn, %.loopexit.split-lp3245 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %203) #25
  br label %bb.abm

bb.abm:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2477, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2272
  %.pn861.pn.pn.pn = phi { ptr, i32 } [ %.pn861.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2477 ], [ %.pn795, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2272 ]
  %i.ebz = load ptr, ptr %198, align 8, !tbaa !269 ; 2 uses
  %i.eca = icmp eq ptr %i.ebz, %i.dka
  br i1 %i.eca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2480, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2478

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2478: ; preds = %bb.abm
  %i.ecb = load i64, ptr %i.dka, align 8, !tbaa !40
  %i.ecc = add i64 %i.ecb, 1
  call void @_ZdlPvm(ptr noundef %i.ebz, i64 noundef %i.ecc) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2480

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2480: ; preds = %bb.abm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2478
  call void @llvm.lifetime.end.p0(ptr nonnull %198) #25
  br label %bb.abn

bb.abn:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2158, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2172, %.body2176, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2480, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2164, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2161, %bb.wk
  %.pn861.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dbb, %bb.wk ], [ %i.ddm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2158 ], [ %i.ddr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2161 ], [ %.pn861.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2480 ], [ %.pn787.pn.pn.pn, %.body2176 ], [ %.pn783, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2172 ], [ %i.ddw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2164 ]
  %i.ecd = load ptr, ptr %185, align 8, !tbaa !269 ; 2 uses
  %i.ece = icmp eq ptr %i.ecd, %i.czy
  br i1 %i.ece, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2483, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2481

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2481: ; preds = %bb.abn
  %i.ecf = load i64, ptr %i.czy, align 8, !tbaa !40
  %i.ecg = add i64 %i.ecf, 1
  call void @_ZdlPvm(ptr noundef %i.ecd, i64 noundef %i.ecg) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2483

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2483: ; preds = %bb.abn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2481
  call void @llvm.lifetime.end.p0(ptr nonnull %185) #25
  br label %bb.abo

bb.abo:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2483, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2101, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1959, %bb.uc, %.body1910
  %.pn870.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn870.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2101 ], [ %.pn861.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2483 ], [ %.pn752, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1959 ], [ %i.cpp, %bb.uc ], [ %.pn749.pn, %.body1910 ]
  call void @_ZN6cmListD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %166) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %166) #25
  br label %bb.abp

bb.abp:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1876, %bb.te, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1901, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1837, %bb.rx, %bb.abo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1834
  %.pn870.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn870.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.abo ], [ %.pn729, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1837 ], [ %.pn744, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1901 ], [ %.pn727, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1834 ], [ %i.cfn, %bb.rx ], [ %.pn739.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1876 ], [ %i.ckd, %bb.te ]
  %i.ech = load ptr, ptr %157, align 8, !tbaa !269 ; 2 uses
  %i.eci = icmp eq ptr %i.ech, %i.ccj
  br i1 %i.eci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2486, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2484

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2484: ; preds = %bb.abp
  %i.ecj = load i64, ptr %i.ccj, align 8, !tbaa !40
  %i.eck = add i64 %i.ecj, 1
  call void @_ZdlPvm(ptr noundef %i.ech, i64 noundef %i.eck) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2486

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2486: ; preds = %bb.abp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2484
  call void @llvm.lifetime.end.p0(ptr nonnull %157) #25
  br label %bb.agh

bb.abq:                                           ; preds = %_ZN6cmList12emplace_backIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit
  %i.ecl = landingpad { ptr, i32 }
          cleanup
  %i.ecm = load ptr, ptr %217, align 8, !tbaa !269 ; 2 uses
  %i.ecn = icmp eq ptr %i.ecm, %i.eak
  br i1 %i.ecn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2489, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2487

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2487: ; preds = %bb.abq
  %i.eco = load i64, ptr %i.eak, align 8, !tbaa !40
  %i.ecp = add i64 %i.eco, 1
  call void @_ZdlPvm(ptr noundef %i.ecm, i64 noundef %i.ecp) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2489

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2489: ; preds = %bb.abq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2487
  call void @llvm.lifetime.end.p0(ptr nonnull %217) #25
  br label %.loopexit.split-lp3239

bb.abr:                                           ; preds = %.noexc.i2464
  %i.ecq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2495

bb.abs:                                           ; preds = %bb.abj
  %i.ecr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ecs = load ptr, ptr %220, align 8, !tbaa !269 ; 2 uses
  %i.ect = icmp eq ptr %i.ecs, %i.ebg
  br i1 %i.ect, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2492, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2490

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2490: ; preds = %bb.abs
  %i.ecu = load i64, ptr %i.ebg, align 8, !tbaa !40
  %i.ecv = add i64 %i.ecu, 1
  call void @_ZdlPvm(ptr noundef %i.ecs, i64 noundef %i.ecv) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2492

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2492: ; preds = %bb.abs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2490
  call void @llvm.lifetime.end.p0(ptr nonnull %220) #25
  %i.ecw = load ptr, ptr %219, align 8, !tbaa !269 ; 2 uses
  %i.ecx = icmp eq ptr %i.ecw, %i.eas
  br i1 %i.ecx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2495, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2493

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2493: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2492
  %i.ecy = load i64, ptr %i.eas, align 8, !tbaa !40
  %i.ecz = add i64 %i.ecy, 1
  call void @_ZdlPvm(ptr noundef %i.ecw, i64 noundef %i.ecz) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2495

bb.abt:                                           ; preds = %bb.abl
  %i.eda = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.edb = load ptr, ptr %218, align 8, !tbaa !269 ; 2 uses
  %i.edc = getelementptr inbounds nuw i8, ptr %218, i64 16 ; 2 uses
  %i.edd = icmp eq ptr %i.edb, %i.edc
  br i1 %i.edd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2495, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2496

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2496: ; preds = %bb.abt
  %i.ede = load i64, ptr %i.edc, align 8, !tbaa !40
  %i.edf = add i64 %i.ede, 1
  call void @_ZdlPvm(ptr noundef %i.edb, i64 noundef %i.edf) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2495

_ZN6cmList6appendERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_14ExpandElementsENS_13EmptyElementsE.exit2474: ; preds = %bb.abl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2472
  %i.edg = load ptr, ptr %218, align 8, !tbaa !269 ; 2 uses
  %i.edh = getelementptr inbounds nuw i8, ptr %218, i64 16 ; 2 uses
  %i.edi = icmp eq ptr %i.edg, %i.edh
  br i1 %i.edi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2501, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2499

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2499: ; preds = %_ZN6cmList6appendERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_14ExpandElementsENS_13EmptyElementsE.exit2474
  %i.edj = load i64, ptr %i.edh, align 8, !tbaa !40
  %i.edk = add i64 %i.edj, 1
  call void @_ZdlPvm(ptr noundef %i.edg, i64 noundef %i.edk) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2501

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2501: ; preds = %_ZN6cmList6appendERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_14ExpandElementsENS_13EmptyElementsE.exit2474, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2499
  call void @llvm.lifetime.end.p0(ptr nonnull %218) #25
  br label %bb.abu

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2495: ; preds = %bb.abt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2492, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2496, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2493, %bb.abr
  %.pn823 = phi { ptr, i32 } [ %i.ecr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2493 ], [ %i.ecq, %bb.abr ], [ %i.eda, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2496 ], [ %i.ecr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2492 ], [ %i.eda, %bb.abt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %218) #25
  br label %.loopexit.split-lp3239

bb.abu:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2501, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2460
  %i.edl = load i64, ptr %i.vr, align 8, !tbaa !39 ; 5 uses
  %i.edm = icmp eq i64 %i.edl, 0
  %.pre3325 = load ptr, ptr %240, align 8, !tbaa !279 ; 9 uses
  br i1 %i.edm, label %_ZN6cmList12emplace_backIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit2508, label %bb.abv

bb.abv:                                           ; preds = %bb.abu
  %i.edn = load ptr, ptr %i.eaj, align 8, !tbaa !281
  %.not.i.i2502 = icmp eq ptr %.pre3325, %i.edn
  br i1 %.not.i.i2502, label %bb.abz, label %bb.abw

bb.abw:                                           ; preds = %bb.abv
  %i.edo = getelementptr inbounds nuw i8, ptr %.pre3325, i64 16 ; 3 uses
  store ptr %i.edo, ptr %.pre3325, align 8, !tbaa !36
  %i.edp = load ptr, ptr %73, align 8, !tbaa !269 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  store i64 %i.edl, ptr %i.f, align 8, !tbaa !290
  %i.edq = icmp ugt i64 %i.edl, 15
  br i1 %i.edq, label %.noexc.i.i.i2505, label %._crit_edge.i.i.i.i2503

.noexc.i.i.i2505:                                 ; preds = %bb.abw
  %i.edr = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.pre3325, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc2506 unwind label %.loopexit.split-lp3239.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc2506:                                       ; preds = %.noexc.i.i.i2505
  store ptr %i.edr, ptr %.pre3325, align 8, !tbaa !269
  %i.eds = load i64, ptr %i.f, align 8, !tbaa !290
  store i64 %i.eds, ptr %i.edo, align 8, !tbaa !40
  br label %._crit_edge.i.i.i.i2503

._crit_edge.i.i.i.i2503:                          ; preds = %.noexc2506, %bb.abw
  %i.edt = phi ptr [ %i.edr, %.noexc2506 ], [ %i.edo, %bb.abw ] ; 2 uses
  %cond = icmp eq i64 %i.edl, 1
  br i1 %cond, label %bb.abx, label %bb.aby

bb.abx:                                           ; preds = %._crit_edge.i.i.i.i2503
  %i.edu = load i8, ptr %i.edp, align 1, !tbaa !40
  store i8 %i.edu, ptr %i.edt, align 1, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i2504

bb.aby:                                           ; preds = %._crit_edge.i.i.i.i2503
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.edt, ptr align 1 %i.edp, i64 %i.edl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i2504

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i2504: ; preds = %bb.aby, %bb.abx
  %i.edv = load i64, ptr %i.f, align 8, !tbaa !290 ; 2 uses
  %i.edw = getelementptr inbounds nuw i8, ptr %.pre3325, i64 8
  store i64 %i.edv, ptr %i.edw, align 8, !tbaa !39
  %i.edx = load ptr, ptr %.pre3325, align 8, !tbaa !269
  %i.edy = getelementptr inbounds nuw i8, ptr %i.edx, i64 %i.edv
  store i8 0, ptr %i.edy, align 1, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  %i.edz = load ptr, ptr %240, align 8, !tbaa !279
  %i.eea = getelementptr inbounds nuw i8, ptr %i.edz, i64 32 ; 2 uses
  store ptr %i.eea, ptr %240, align 8, !tbaa !279
  br label %_ZN6cmList12emplace_backIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit2508

bb.abz:                                           ; preds = %bb.abv
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %216, ptr %.pre3325, ptr noundef nonnull align 8 dereferenceable(32) %73)
          to label %._ZN6cmList12emplace_backIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit2508_crit_edge unwind label %.loopexit.split-lp3239.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._ZN6cmList12emplace_backIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit2508_crit_edge: ; preds = %bb.abz
  %.pre3324 = load ptr, ptr %240, align 8, !tbaa !279
  br label %_ZN6cmList12emplace_backIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit2508

_ZN6cmList12emplace_backIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit2508: ; preds = %._ZN6cmList12emplace_backIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit2508_crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i2504, %bb.abu
  %i.eeb = phi ptr [ %.pre3324, %._ZN6cmList12emplace_backIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit2508_crit_edge ], [ %i.eea, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i2504 ], [ %.pre3325, %bb.abu ] ; 3 uses
  %i.eec = load ptr, ptr %216, align 8, !tbaa !278 ; 2 uses
  %i.eed = ptrtoint ptr %i.eeb to i64
  %i.eee = ptrtoint ptr %i.eec to i64
  %i.eef = sub i64 %i.eed, %i.eee
  %i.eeg = icmp ugt i64 %i.eef, 32
  br i1 %i.eeg, label %bb.aca, label %bb.acc

bb.aca:                                           ; preds = %_ZN6cmList12emplace_backIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit2508
  %i.eeh = getelementptr inbounds nuw i8, ptr %i.eec, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store ptr %i.hd, ptr %8, align 8, !tbaa !298
  %.not6.i.i = icmp eq ptr %i.eeh, %i.eeb
  br i1 %.not6.i.i, label %.loopexit3243, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.aca
  %i.eei = getelementptr inbounds nuw i8, ptr %0, i64 464
  br label %bb.acb

bb.acb:                                           ; preds = %.noexc2510, %.lr.ph.i.i
  %.sroa.03.07.i.i = phi ptr [ %i.eeh, %.lr.ph.i.i ], [ %i.eek, %.noexc2510 ] ; 2 uses
  %i.eej = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_insert_unique_IRS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.hd, ptr nonnull %i.eei, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.03.07.i.i, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %.noexc2510 unwind label %.loopexit.split-lp3239.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc2510:                                       ; preds = %bb.acb
  %i.eek = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i, i64 32 ; 2 uses
  %.not.i.i2509 = icmp eq ptr %i.eek, %i.eeb
  br i1 %.not.i.i2509, label %.loopexit3243, label %bb.acb, !llvm.loop !11

.loopexit3243:                                    ; preds = %.noexc2510, %bb.aca
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.acc

.loopexit.split-lp3239.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.acb, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit2517, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2450, %.noexc.i.i.i2505, %bb.abz, %.noexc.i.i2514, %bb.ach
  %lpad.loopexit.split-lp4509 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp3239

bb.acc:                                           ; preds = %.loopexit3243, %_ZN6cmList12emplace_backIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit2508
  br i1 %i.bq, label %bb.acd, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit2517

bb.acd:                                           ; preds = %bb.acc
  %i.eel = getelementptr inbounds nuw i8, ptr %51, i64 8 ; 3 uses
  %i.eem = load ptr, ptr %i.eel, align 8, !tbaa !279 ; 8 uses
  %i.een = getelementptr inbounds nuw i8, ptr %51, i64 16
  %i.eeo = load ptr, ptr %i.een, align 8, !tbaa !281
  %.not.i2511 = icmp eq ptr %i.eem, %i.eeo
  br i1 %.not.i2511, label %bb.ach, label %bb.ace

bb.ace:                                           ; preds = %bb.acd
  %i.eep = getelementptr inbounds nuw i8, ptr %i.eem, i64 16 ; 3 uses
  store ptr %i.eep, ptr %i.eem, align 8, !tbaa !36
  %i.eeq = load ptr, ptr %148, align 8, !tbaa !269 ; 2 uses
  %i.eer = load i64, ptr %i.btu, align 8, !tbaa !39 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  store i64 %i.eer, ptr %i.e, align 8, !tbaa !290
  %i.ees = icmp ugt i64 %i.eer, 15
  br i1 %i.ees, label %.noexc.i.i2514, label %._crit_edge.i.i.i2512

.noexc.i.i2514:                                   ; preds = %bb.ace
  %i.eet = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.eem, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc2515 unwind label %.loopexit.split-lp3239.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc2515:                                       ; preds = %.noexc.i.i2514
  store ptr %i.eet, ptr %i.eem, align 8, !tbaa !269
  %i.eeu = load i64, ptr %i.e, align 8, !tbaa !290
  store i64 %i.eeu, ptr %i.eep, align 8, !tbaa !40
  br label %._crit_edge.i.i.i2512

._crit_edge.i.i.i2512:                            ; preds = %.noexc2515, %bb.ace
  %i.eev = phi ptr [ %i.eet, %.noexc2515 ], [ %i.eep, %bb.ace ] ; 2 uses
  switch i64 %i.eer, label %bb.acg [
    i64 1, label %bb.acf
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i2513
  ]

bb.acf:                                           ; preds = %._crit_edge.i.i.i2512
  %i.eew = load i8, ptr %i.eeq, align 1, !tbaa !40
  store i8 %i.eew, ptr %i.eev, align 1, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i2513

bb.acg:                                           ; preds = %._crit_edge.i.i.i2512
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eev, ptr align 1 %i.eeq, i64 %i.eer, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i2513

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i2513: ; preds = %bb.acg, %bb.acf, %._crit_edge.i.i.i2512
  %i.eex = load i64, ptr %i.e, align 8, !tbaa !290 ; 2 uses
  %i.eey = getelementptr inbounds nuw i8, ptr %i.eem, i64 8
  store i64 %i.eex, ptr %i.eey, align 8, !tbaa !39
  %i.eez = load ptr, ptr %i.eem, align 8, !tbaa !269
  %i.efa = getelementptr inbounds nuw i8, ptr %i.eez, i64 %i.eex
  store i8 0, ptr %i.efa, align 1, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  %i.efb = load ptr, ptr %i.eel, align 8, !tbaa !279
  %i.efc = getelementptr inbounds nuw i8, ptr %i.efb, i64 32
  store ptr %i.efc, ptr %i.eel, align 8, !tbaa !279
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit2517

bb.ach:                                           ; preds = %bb.acd
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %51, ptr %i.eem, ptr noundef nonnull align 8 dereferenceable(32) %148)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit2517 unwind label %.loopexit.split-lp3239.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit2517: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i2513, %bb.ach, %bb.acc
  %i.efd = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %i.efe = load ptr, ptr %i.efd, align 8, !tbaa !277
  %i.eff = invoke noundef zeroext i1 @_ZN25cmMakefileTargetGenerator13WriteMakeRuleERSoPKcRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EESD_SD_b(ptr noundef nonnull align 8 dereferenceable(1064) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.efe, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(24) %216, ptr noundef nonnull align 8 dereferenceable(24) %51, ptr noundef nonnull align 8 dereferenceable(24) %112, i1 noundef zeroext false)
          to label %bb.aci unwind label %.loopexit.split-lp3239.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.aci:                                           ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit2517
  br i1 %i.bq, label %bb.acj, label %bb.ack

bb.acj:                                           ; preds = %bb.aci
  %i.efg = load ptr, ptr %68, align 8, !tbaa !269
  store ptr %i.efg, ptr %i.bqy, align 8, !tbaa !391
  br label %bb.ack

bb.ack:                                           ; preds = %bb.acj, %bb.aci
  br i1 %i.cce, label %bb.acl, label %bb.acm

bb.acl:                                           ; preds = %bb.ack
  %i.efh = load ptr, ptr %i.fw, align 8, !tbaa !103 ; 2 uses
  %i.efi = getelementptr inbounds nuw i8, ptr %i.efh, i64 1047
  %i.efj = load i8, ptr %i.efi, align 1, !tbaa !1064, !range !287, !noundef !288
  %i.efk = trunc nuw i8 %i.efj to i1
  %i.efl = xor i1 %i.efk, true
  %i.efm = getelementptr inbounds nuw i8, ptr %i.efh, i64 1048
  %i.efn = load i8, ptr %i.efm, align 8, !tbaa !1065, !range !287, !noundef !288
  %i.efo = trunc nuw i8 %i.efn to i1
  %i.efp = xor i1 %i.efo, true
  br label %bb.acm

bb.acm:                                           ; preds = %bb.ack, %bb.acl
  %i.efq = phi i1 [ %i.efl, %bb.acl ], [ false, %bb.ack ] ; 2 uses
  %i.efr = phi i1 [ %i.efp, %bb.acl ], [ false, %bb.ack ] ; 2 uses
  %or.cond4 = or i1 %i.efq, %i.efr
  br i1 %or.cond4, label %bb.acn, label %bb.afw

bb.acn:                                           ; preds = %bb.acm
  call void @llvm.lifetime.start.p0(ptr nonnull %221) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %221, i8 0, i64 24, i1 false)
  %241 = getelementptr inbounds nuw i8, ptr %221, i64 8
  %i.efs = getelementptr inbounds nuw i8, ptr %221, i64 16
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA12_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %221, ptr null, ptr noundef nonnull align 1 dereferenceable(12) @.str.122)
          to label %.noexc2523 unwind label %bb.adh

.noexc2523:                                       ; preds = %bb.acn
  %i.eft = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32) %67, i8 noundef signext 46, i64 noundef -1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %222) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !1066)
  %i.efu = getelementptr inbounds nuw i8, ptr %67, i64 8
  %i.efv = load i64, ptr %i.efu, align 8, !tbaa !39, !noalias !1066
  %i.efw = getelementptr inbounds nuw i8, ptr %222, i64 16 ; 7 uses
  store ptr %i.efw, ptr %222, align 8, !tbaa !36, !alias.scope !1066
  %i.efx = load ptr, ptr %67, align 8, !tbaa !269, !noalias !1066 ; 2 uses
  %spec.select.i.i.i2524 = call noundef i64 @llvm.umin.i64(i64 %i.eft, i64 %i.efv) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25, !noalias !1066
  store i64 %spec.select.i.i.i2524, ptr %i.d, align 8, !tbaa !290, !noalias !1066
  %i.efy = icmp ugt i64 %spec.select.i.i.i2524, 15
  br i1 %i.efy, label %.noexc10.i.i, label %._crit_edge.i.i.i2525

.noexc10.i.i:                                     ; preds = %.noexc2523
  %i.efz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %222, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc2526 unwind label %bb.adi ; 2 uses

.noexc2526:                                       ; preds = %.noexc10.i.i
  store ptr %i.efz, ptr %222, align 8, !tbaa !269, !alias.scope !1066
  %i.ega = load i64, ptr %i.d, align 8, !tbaa !290, !noalias !1066
  store i64 %i.ega, ptr %i.efw, align 8, !tbaa !40, !alias.scope !1066
  br label %._crit_edge.i.i.i2525

._crit_edge.i.i.i2525:                            ; preds = %.noexc2526, %.noexc2523
  %i.egb = phi ptr [ %i.efz, %.noexc2526 ], [ %i.efw, %.noexc2523 ] ; 2 uses
  switch i64 %spec.select.i.i.i2524, label %bb.acp [
    i64 1, label %bb.aco
    i64 0, label %bb.acq
  ]

bb.aco:                                           ; preds = %._crit_edge.i.i.i2525
  %i.egc = load i8, ptr %i.efx, align 1, !tbaa !40
  store i8 %i.egc, ptr %i.egb, align 1, !tbaa !40
  br label %bb.acq

bb.acp:                                           ; preds = %._crit_edge.i.i.i2525
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.egb, ptr align 1 %i.efx, i64 %spec.select.i.i.i2524, i1 false)
  br label %bb.acq

bb.acq:                                           ; preds = %bb.acp, %bb.aco, %._crit_edge.i.i.i2525
  %i.egd = load i64, ptr %i.d, align 8, !tbaa !290, !noalias !1066 ; 2 uses
  %i.ege = getelementptr inbounds nuw i8, ptr %222, i64 8 ; 3 uses
  store i64 %i.egd, ptr %i.ege, align 8, !tbaa !39, !alias.scope !1066
  %i.egf = load ptr, ptr %222, align 8, !tbaa !269, !alias.scope !1066
  %i.egg = getelementptr inbounds nuw i8, ptr %i.egf, i64 %i.egd
  store i8 0, ptr %i.egg, align 1, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25, !noalias !1066
  %i.egh = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32) %46, i8 noundef signext 46, i64 noundef -1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %223) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !1067)
  %i.egi = load i64, ptr %i.hr, align 8, !tbaa !39, !noalias !1067
  %i.egj = getelementptr inbounds nuw i8, ptr %223, i64 16 ; 7 uses
  store ptr %i.egj, ptr %223, align 8, !tbaa !36, !alias.scope !1067
  %i.egk = load ptr, ptr %46, align 8, !tbaa !269, !noalias !1067 ; 2 uses
  %spec.select.i.i.i2527 = call noundef i64 @llvm.umin.i64(i64 %i.egh, i64 %i.egi) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25, !noalias !1067
  store i64 %spec.select.i.i.i2527, ptr %i.c, align 8, !tbaa !290, !noalias !1067
  %i.egl = icmp ugt i64 %spec.select.i.i.i2527, 15
  br i1 %i.egl, label %.noexc10.i.i2529, label %._crit_edge.i.i.i2528

.noexc10.i.i2529:                                 ; preds = %bb.acq
  %i.egm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %223, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc2530 unwind label %bb.adj ; 2 uses

.noexc2530:                                       ; preds = %.noexc10.i.i2529
  store ptr %i.egm, ptr %223, align 8, !tbaa !269, !alias.scope !1067
  %i.egn = load i64, ptr %i.c, align 8, !tbaa !290, !noalias !1067
  store i64 %i.egn, ptr %i.egj, align 8, !tbaa !40, !alias.scope !1067
  br label %._crit_edge.i.i.i2528

._crit_edge.i.i.i2528:                            ; preds = %.noexc2530, %bb.acq
  %i.ego = phi ptr [ %i.egm, %.noexc2530 ], [ %i.egj, %bb.acq ] ; 2 uses
  switch i64 %spec.select.i.i.i2527, label %bb.acs [
    i64 1, label %bb.acr
    i64 0, label %bb.act
  ]

bb.acr:                                           ; preds = %._crit_edge.i.i.i2528
  %i.egp = load i8, ptr %i.egk, align 1, !tbaa !40
  store i8 %i.egp, ptr %i.ego, align 1, !tbaa !40
  br label %bb.act

bb.acs:                                           ; preds = %._crit_edge.i.i.i2528
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ego, ptr align 1 %i.egk, i64 %spec.select.i.i.i2527, i1 false)
  br label %bb.act

bb.act:                                           ; preds = %bb.acs, %bb.acr, %._crit_edge.i.i.i2528
  %i.egq = load i64, ptr %i.c, align 8, !tbaa !290, !noalias !1067 ; 2 uses
  %i.egr = getelementptr inbounds nuw i8, ptr %223, i64 8 ; 3 uses
  store i64 %i.egq, ptr %i.egr, align 8, !tbaa !39, !alias.scope !1067
  %i.egs = load ptr, ptr %223, align 8, !tbaa !269, !alias.scope !1067
  %i.egt = getelementptr inbounds nuw i8, ptr %i.egs, i64 %i.egq
  store i8 0, ptr %i.egt, align 1, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25, !noalias !1067
  br i1 %i.efq, label %bb.acu, label %bb.aeh

bb.acu:                                           ; preds = %bb.act
  %i.egu = load ptr, ptr %112, align 8, !tbaa !278 ; 3 uses
  %i.egv = load ptr, ptr %i.dyw, align 8, !tbaa !279 ; 2 uses
  %.not.i.i2532 = icmp eq ptr %i.egv, %i.egu
  br i1 %.not.i.i2532, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i2533

.lr.ph.i.i.i.i2533:                               ; preds = %bb.acu, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i2536
  %.05.i.i.i.i2534 = phi ptr [ %i.ehb, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i2536 ], [ %i.egu, %bb.acu ] ; 3 uses
  %i.egw = load ptr, ptr %.05.i.i.i.i2534, align 8, !tbaa !269 ; 2 uses
  %i.egx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i2534, i64 16 ; 2 uses
  %i.egy = icmp eq ptr %i.egw, %i.egx
  br i1 %i.egy, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i2536, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i2535

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i2535: ; preds = %.lr.ph.i.i.i.i2533
  %i.egz = load i64, ptr %i.egx, align 8, !tbaa !40
  %i.eha = add i64 %i.egz, 1
  call void @_ZdlPvm(ptr noundef %i.egw, i64 noundef %i.eha) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i2536

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i2536: ; preds = %.lr.ph.i.i.i.i2533, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i2535
  %i.ehb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i2534, i64 32 ; 2 uses
  %.not.i.i.i.i2537 = icmp eq ptr %i.ehb, %i.egv
  br i1 %.not.i.i.i.i2537, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i2538, label %.lr.ph.i.i.i.i2533, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i2538: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i2536
  store ptr %i.egu, ptr %i.dyw, align 8, !tbaa !279
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit: ; preds = %bb.acu, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i2538
  call void @llvm.lifetime.start.p0(ptr nonnull %224) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !1068)
  %i.ehc = load ptr, ptr %222, align 8, !tbaa !269, !noalias !1068
  %i.ehd = load i64, ptr %i.ege, align 8, !tbaa !39, !noalias !1068 ; 3 uses
  %i.ehe = getelementptr inbounds nuw i8, ptr %224, i64 16 ; 7 uses
  store ptr %i.ehe, ptr %224, align 8, !tbaa !36, !alias.scope !1069
  %i.ehf = getelementptr inbounds nuw i8, ptr %224, i64 8 ; 3 uses
  store i64 0, ptr %i.ehf, align 8, !tbaa !39, !alias.scope !1069
  store i8 0, ptr %i.ehe, align 8, !tbaa !40, !alias.scope !1069
  %i.ehg = add i64 %i.ehd, 2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %224, i64 noundef %i.ehg)
          to label %bb.acv unwind label %bb.acw

bb.acv:                                           ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  %i.ehh = load i64, ptr %i.ehf, align 8, !tbaa !39, !alias.scope !1069
  %i.ehi = sub i64 4611686018427387903, %i.ehh
  %i.ehj = icmp ult i64 %i.ehi, %i.ehd
  br i1 %i.ehj, label %.invoke.i.i2546, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i2543

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i2543: ; preds = %bb.acv
  %i.ehk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %224, ptr noundef %i.ehc, i64 noundef %i.ehd)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i2544 unwind label %bb.acw ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i2544: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i2543
  %i.ehl = load i64, ptr %i.ehf, align 8, !tbaa !39, !alias.scope !1069
  %i.ehm = and i64 %i.ehl, -2
  %i.ehn = icmp eq i64 %i.ehm, 4611686018427387902
  br i1 %i.ehn, label %.invoke.i.i2546, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i2545

.invoke.i.i2546:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i2544, %bb.acv
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.222) #29
          to label %.cont.i.i2547 unwind label %bb.acw

.cont.i.i2547:                                    ; preds = %.invoke.i.i2546
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i2545: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i2544
  %i.eho = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %224, ptr noundef nonnull @.str.123, i64 noundef 2)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.acw ; 0 uses

bb.acw:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i2545, %.invoke.i.i2546, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i2543, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  %i.ehp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ehq = load ptr, ptr %224, align 8, !tbaa !269, !alias.scope !1069 ; 2 uses
  %i.ehr = icmp eq ptr %i.ehq, %i.ehe
  br i1 %i.ehr, label %.body2548, label %.body2548.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i2545
  call void @llvm.lifetime.start.p0(ptr nonnull %225) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !1070)
  %i.ehs = load ptr, ptr %223, align 8, !tbaa !269, !noalias !1070
  %i.eht = load i64, ptr %i.egr, align 8, !tbaa !39, !noalias !1070 ; 3 uses
  %i.ehu = getelementptr inbounds nuw i8, ptr %225, i64 16 ; 7 uses
  store ptr %i.ehu, ptr %225, align 8, !tbaa !36, !alias.scope !1071
  %i.ehv = getelementptr inbounds nuw i8, ptr %225, i64 8 ; 5 uses
  store i64 0, ptr %i.ehv, align 8, !tbaa !39, !alias.scope !1071
  store i8 0, ptr %i.ehu, align 8, !tbaa !40, !alias.scope !1071
  %i.ehw = add i64 %i.eht, 2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %225, i64 noundef %i.ehw)
          to label %bb.acx unwind label %bb.acy

bb.acx:                                           ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.ehx = load i64, ptr %i.ehv, align 8, !tbaa !39, !alias.scope !1071
  %i.ehy = sub i64 4611686018427387903, %i.ehx
  %i.ehz = icmp ult i64 %i.ehy, %i.eht
  br i1 %i.ehz, label %.invoke.i.i2556, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i2553

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i2553: ; preds = %bb.acx
  %i.eia = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %225, ptr noundef %i.ehs, i64 noundef %i.eht)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i2554 unwind label %bb.acy ; 0 uses
end_hunk_1
begin_hunk_2_@_ZN25cmMakefileTargetGenerator20WriteObjectRuleFilesERK12cmSourceFile:bb.a
bb.afk:                                           ; preds = %bb.afh
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %112, ptr %i.euo, ptr noundef nonnull align 8 dereferenceable(32) %239)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit2736 unwind label %bb.afm

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit2736: ; preds = %bb.afk
  %.pre3331 = load ptr, ptr %239, align 8, !tbaa !269 ; 2 uses
  %i.evf = getelementptr inbounds nuw i8, ptr %239, i64 16 ; 2 uses
  %i.evg = icmp eq ptr %.pre3331, %i.evf
  br i1 %i.evg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2739, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2737

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2737: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit2736
  %i.evh = load i64, ptr %i.evf, align 8, !tbaa !40
  %i.evi = add i64 %i.evh, 1
  call void @_ZdlPvm(ptr noundef %.pre3331, i64 noundef %i.evi) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2739

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2739: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit2736, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit2736.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2737
  call void @llvm.lifetime.end.p0(ptr nonnull %239) #25
  br label %bb.afn

bb.afl:                                           ; preds = %bb.afg
  %i.evj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2742

bb.afm:                                           ; preds = %bb.afk
  %i.evk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.evl = load ptr, ptr %239, align 8, !tbaa !269 ; 2 uses
  %i.evm = getelementptr inbounds nuw i8, ptr %239, i64 16 ; 2 uses
  %i.evn = icmp eq ptr %i.evl, %i.evm
  br i1 %i.evn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2742, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2740

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2740: ; preds = %bb.afm
  %i.evo = load i64, ptr %i.evm, align 8, !tbaa !40
  %i.evp = add i64 %i.evo, 1
  call void @_ZdlPvm(ptr noundef %i.evl, i64 noundef %i.evp) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2742

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2742: ; preds = %bb.afm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2740, %bb.afl
  %.pn830 = phi { ptr, i32 } [ %i.evj, %bb.afl ], [ %i.evk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2740 ], [ %i.evk, %bb.afm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %239) #25
  br label %bb.afq

bb.afn:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2739, %_ZN6cmListD2Ev.exit2724
  %i.evq = load ptr, ptr %i.fw, align 8, !tbaa !103
  %i.evr = load ptr, ptr %i.efd, align 8, !tbaa !277
  invoke void @_ZN29cmLocalUnixMakefileGenerator313WriteMakeRuleERSoPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS8_SaIS8_EESF_bb(ptr noundef nonnull align 8 dereferenceable(1104) %i.evq, ptr noundef nonnull align 8 dereferenceable(8) %i.evr, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(32) %232, ptr noundef nonnull align 8 dereferenceable(24) %221, ptr noundef nonnull align 8 dereferenceable(24) %112, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.afo unwind label %bb.afp

bb.afo:                                           ; preds = %bb.afn
  %i.evs = load ptr, ptr %235, align 8, !tbaa !269 ; 2 uses
  %i.evt = getelementptr inbounds nuw i8, ptr %235, i64 16 ; 2 uses
  %i.evu = icmp eq ptr %i.evs, %i.evt
  br i1 %i.evu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2745, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2743

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2743: ; preds = %bb.afo
  %i.evv = load i64, ptr %i.evt, align 8, !tbaa !40
  %i.evw = add i64 %i.evv, 1
  call void @_ZdlPvm(ptr noundef %i.evs, i64 noundef %i.evw) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2745

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2745: ; preds = %bb.afo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2743
  call void @llvm.lifetime.end.p0(ptr nonnull %235) #25
  %i.evx = load ptr, ptr %234, align 8, !tbaa !269 ; 2 uses
  %i.evy = getelementptr inbounds nuw i8, ptr %234, i64 16 ; 2 uses
  %i.evz = icmp eq ptr %i.evx, %i.evy
  br i1 %i.evz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2748, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2746

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2746: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2745
  %i.ewa = load i64, ptr %i.evy, align 8, !tbaa !40
  %i.ewb = add i64 %i.ewa, 1
  call void @_ZdlPvm(ptr noundef %i.evx, i64 noundef %i.ewb) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2748

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2748: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2745, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2746
  call void @llvm.lifetime.end.p0(ptr nonnull %234) #25
  %i.ewc = load ptr, ptr %233, align 8, !tbaa !269 ; 2 uses
  %i.ewd = icmp eq ptr %i.ewc, %i.eqa
  br i1 %i.ewd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2751, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2749

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2749: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2748
  %i.ewe = load i64, ptr %i.eqa, align 8, !tbaa !40
  %i.ewf = add i64 %i.ewe, 1
  call void @_ZdlPvm(ptr noundef %i.ewc, i64 noundef %i.ewf) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2751

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2751: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2748, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2749
  call void @llvm.lifetime.end.p0(ptr nonnull %233) #25
  %i.ewg = load ptr, ptr %232, align 8, !tbaa !269 ; 2 uses
  %i.ewh = icmp eq ptr %i.ewg, %i.epk
  br i1 %i.ewh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2754, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2752

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2752: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2751
  %i.ewi = load i64, ptr %i.epk, align 8, !tbaa !40
  %i.ewj = add i64 %i.ewi, 1
  call void @_ZdlPvm(ptr noundef %i.ewg, i64 noundef %i.ewj) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2754

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2754: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2751, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2752
  call void @llvm.lifetime.end.p0(ptr nonnull %232) #25
  br label %bb.afs

bb.afp:                                           ; preds = %bb.aep, %bb.afn
  %i.ewk = landingpad { ptr, i32 }
          cleanup
  br label %bb.afq

bb.afq:                                           ; preds = %bb.aff, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2742, %bb.afp
  %.pn834.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ewk, %bb.afp ], [ %.pn834.pn.pn, %bb.aff ], [ %.pn830, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2742 ] ; 2 uses
  %i.ewl = load ptr, ptr %235, align 8, !tbaa !269 ; 2 uses
  %i.ewm = getelementptr inbounds nuw i8, ptr %235, i64 16 ; 2 uses
  %i.ewn = icmp eq ptr %i.ewl, %i.ewm
  br i1 %i.ewn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2757, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2755

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2755: ; preds = %bb.afq
  %i.ewo = load i64, ptr %i.ewm, align 8, !tbaa !40
  %i.ewp = add i64 %i.ewo, 1
  call void @_ZdlPvm(ptr noundef %i.ewl, i64 noundef %i.ewp) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2757

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2757: ; preds = %bb.afq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2755, %bb.aex
  %.pn834.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ess, %bb.aex ], [ %.pn834.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2755 ], [ %.pn834.pn.pn.pn.pn, %bb.afq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %235) #25
  br label %bb.afr

bb.afr:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2757, %bb.aew
  %.pn834.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn834.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2757 ], [ %i.esr, %bb.aew ] ; 2 uses
  %i.ewq = load ptr, ptr %234, align 8, !tbaa !269 ; 2 uses
  %i.ewr = getelementptr inbounds nuw i8, ptr %234, i64 16 ; 2 uses
  %i.ews = icmp eq ptr %i.ewq, %i.ewr
  br i1 %i.ews, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2760, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2758

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2758: ; preds = %bb.afr
  %i.ewt = load i64, ptr %i.ewr, align 8, !tbaa !40
  %i.ewu = add i64 %i.ewt, 1
  call void @_ZdlPvm(ptr noundef %i.ewq, i64 noundef %i.ewu) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2760

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2760: ; preds = %bb.afr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2758, %bb.aev
  %.pn834.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.esq, %bb.aev ], [ %.pn834.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2758 ], [ %.pn834.pn.pn.pn.pn.pn.pn, %bb.afr ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %234) #25
  %i.ewv = load ptr, ptr %233, align 8, !tbaa !269 ; 2 uses
  %i.eww = icmp eq ptr %i.ewv, %i.eqa
  br i1 %i.eww, label %.body2673, label %.body2673.sink.split

.body2673.sink.split:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2760, %bb.aem
  %.sink4498 = phi ptr [ %i.eqm, %bb.aem ], [ %i.ewv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2760 ]
  %.pn834.pn.pn.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.eql, %bb.aem ], [ %.pn834.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2760 ]
  %i.ewx = load i64, ptr %i.eqa, align 8, !tbaa !40
  %i.ewy = add i64 %i.ewx, 1
  call void @_ZdlPvm(ptr noundef %.sink4498, i64 noundef %i.ewy) #26
  br label %.body2673

.body2673:                                        ; preds = %.body2673.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2760, %bb.aem
  %.pn834.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.eql, %bb.aem ], [ %.pn834.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2760 ], [ %.pn834.pn.pn.pn.pn.pn.pn.pn.pn.ph, %.body2673.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %233) #25
  %i.ewz = load ptr, ptr %232, align 8, !tbaa !269 ; 2 uses
  %i.exa = icmp eq ptr %i.ewz, %i.epk
  br i1 %i.exa, label %.body2662, label %.body2662.sink.split

.body2662.sink.split:                             ; preds = %.body2673, %bb.aek
  %.sink4501 = phi ptr [ %i.epw, %bb.aek ], [ %i.ewz, %.body2673 ]
  %.pn834.pn.pn.pn.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.epv, %bb.aek ], [ %.pn834.pn.pn.pn.pn.pn.pn.pn.pn, %.body2673 ]
  %i.exb = load i64, ptr %i.epk, align 8, !tbaa !40
  %i.exc = add i64 %i.exb, 1
  call void @_ZdlPvm(ptr noundef %.sink4501, i64 noundef %i.exc) #26
  br label %.body2662

.body2662:                                        ; preds = %.body2662.sink.split, %.body2673, %bb.aek
  %.pn834.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.epv, %bb.aek ], [ %.pn834.pn.pn.pn.pn.pn.pn.pn.pn, %.body2673 ], [ %.pn834.pn.pn.pn.pn.pn.pn.pn.pn.pn.ph, %.body2662.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %232) #25
  br label %bb.afu

bb.afs:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2754, %bb.aeh
  %i.exd = load ptr, ptr %223, align 8, !tbaa !269 ; 2 uses
  %i.exe = icmp eq ptr %i.exd, %i.egj
  br i1 %i.exe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2769, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2767

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2767: ; preds = %bb.afs
  %i.exf = load i64, ptr %i.egj, align 8, !tbaa !40
  %i.exg = add i64 %i.exf, 1
  call void @_ZdlPvm(ptr noundef %i.exd, i64 noundef %i.exg) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2769

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2769: ; preds = %bb.afs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2767
  call void @llvm.lifetime.end.p0(ptr nonnull %223) #25
  %i.exh = load ptr, ptr %222, align 8, !tbaa !269 ; 2 uses
  %i.exi = icmp eq ptr %i.exh, %i.efw
  br i1 %i.exi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2772, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2770

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2770: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2769
  %i.exj = load i64, ptr %i.efw, align 8, !tbaa !40
  %i.exk = add i64 %i.exj, 1
  call void @_ZdlPvm(ptr noundef %i.exh, i64 noundef %i.exk) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2772

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2772: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2769, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2770
  call void @llvm.lifetime.end.p0(ptr nonnull %222) #25
  %i.exl = load ptr, ptr %221, align 8, !tbaa !278 ; 3 uses
  %i.exm = load ptr, ptr %241, align 8, !tbaa !279 ; 2 uses
  %.not4.i.i.i2773 = icmp eq ptr %i.exl, %i.exm
  br i1 %.not4.i.i.i2773, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i2781, label %.lr.ph.i.i.i2774

.lr.ph.i.i.i2774:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2772, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i2777
  %.05.i.i.i2775 = phi ptr [ %i.exs, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i2777 ], [ %i.exl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2772 ] ; 3 uses
  %i.exn = load ptr, ptr %.05.i.i.i2775, align 8, !tbaa !269 ; 2 uses
  %i.exo = getelementptr inbounds nuw i8, ptr %.05.i.i.i2775, i64 16 ; 2 uses
  %i.exp = icmp eq ptr %i.exn, %i.exo
  br i1 %i.exp, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i2777, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i2776

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i2776: ; preds = %.lr.ph.i.i.i2774
  %i.exq = load i64, ptr %i.exo, align 8, !tbaa !40
  %i.exr = add i64 %i.exq, 1
  call void @_ZdlPvm(ptr noundef %i.exn, i64 noundef %i.exr) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i2777

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i2777: ; preds = %.lr.ph.i.i.i2774, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i2776
  %i.exs = getelementptr inbounds nuw i8, ptr %.05.i.i.i2775, i64 32 ; 2 uses
  %.not.i.i.i2778 = icmp eq ptr %i.exs, %i.exm
  br i1 %.not.i.i.i2778, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i2779, label %.lr.ph.i.i.i2774, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i2779: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i2777
  %.pr.i2780 = load ptr, ptr %221, align 8, !tbaa !278
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i2781

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i2781: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i2779, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2772
  %i.ext = phi ptr [ %.pr.i2780, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i2779 ], [ %i.exl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2772 ] ; 3 uses
  %.not.i.i1.i2782 = icmp eq ptr %i.ext, null
  br i1 %.not.i.i1.i2782, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit2784, label %bb.aft

bb.aft:                                           ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i2781
  %i.exu = load ptr, ptr %i.efs, align 8, !tbaa !281
  %i.exv = ptrtoint ptr %i.exu to i64
  %i.exw = ptrtoint ptr %i.ext to i64
  %i.exx = sub i64 %i.exv, %i.exw
  call void @_ZdlPvm(ptr noundef nonnull %i.ext, i64 noundef %i.exx) #26
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit2784

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit2784: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i2781, %bb.aft
  call void @llvm.lifetime.end.p0(ptr nonnull %221) #25
  br label %bb.afw

bb.afu:                                           ; preds = %.body2662, %.body2548
  %.pn845.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn845.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body2548 ], [ %.pn834.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body2662 ] ; 2 uses
  %i.exy = load ptr, ptr %223, align 8, !tbaa !269 ; 2 uses
  %i.exz = icmp eq ptr %i.exy, %i.egj
  br i1 %i.exz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2787, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2785

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2785: ; preds = %bb.afu
  %i.eya = load i64, ptr %i.egj, align 8, !tbaa !40
  %i.eyb = add i64 %i.eya, 1
  call void @_ZdlPvm(ptr noundef %i.exy, i64 noundef %i.eyb) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2787

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2787: ; preds = %bb.afu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2785, %bb.adj
  %.pn845.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ekm, %bb.adj ], [ %.pn845.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2785 ], [ %.pn845.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.afu ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %223) #25
  %i.eyc = load ptr, ptr %222, align 8, !tbaa !269 ; 2 uses
  %i.eyd = icmp eq ptr %i.eyc, %i.efw
  br i1 %i.eyd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2790, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2788

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2788: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2787
  %i.eye = load i64, ptr %i.efw, align 8, !tbaa !40
  %i.eyf = add i64 %i.eye, 1
  call void @_ZdlPvm(ptr noundef %i.eyc, i64 noundef %i.eyf) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2790

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2790: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2787, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2788, %bb.adi
  %.pn845.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ekl, %bb.adi ], [ %.pn845.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2788 ], [ %.pn845.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2787 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %222) #25
  br label %bb.afv

bb.afv:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2790, %bb.adh
  %.pn845.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn845.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2790 ], [ %i.ekk, %bb.adh ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %221) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %221) #25
  br label %.loopexit.split-lp3239

bb.afw:                                           ; preds = %bb.acm, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit2784
  %i.eyg = load ptr, ptr %216, align 8, !tbaa !278 ; 3 uses
  %i.eyh = load ptr, ptr %240, align 8, !tbaa !279 ; 2 uses
  %.not4.i.i.i.i2791 = icmp eq ptr %i.eyg, %i.eyh
  br i1 %.not4.i.i.i.i2791, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i2799, label %.lr.ph.i.i.i.i2792

.lr.ph.i.i.i.i2792:                               ; preds = %bb.afw, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i2795
  %.05.i.i.i.i2793 = phi ptr [ %i.eyn, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i2795 ], [ %i.eyg, %bb.afw ] ; 3 uses
  %i.eyi = load ptr, ptr %.05.i.i.i.i2793, align 8, !tbaa !269 ; 2 uses
  %i.eyj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i2793, i64 16 ; 2 uses
  %i.eyk = icmp eq ptr %i.eyi, %i.eyj
  br i1 %i.eyk, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i2795, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i2794

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i2794: ; preds = %.lr.ph.i.i.i.i2792
  %i.eyl = load i64, ptr %i.eyj, align 8, !tbaa !40
  %i.eym = add i64 %i.eyl, 1
  call void @_ZdlPvm(ptr noundef %i.eyi, i64 noundef %i.eym) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i2795

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i2795: ; preds = %.lr.ph.i.i.i.i2792, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i2794
  %i.eyn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i2793, i64 32 ; 2 uses
  %.not.i.i.i.i2796 = icmp eq ptr %i.eyn, %i.eyh
  br i1 %.not.i.i.i.i2796, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i2797, label %.lr.ph.i.i.i.i2792, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i2797: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i2795
  %.pr.i.i2798 = load ptr, ptr %216, align 8, !tbaa !278
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i2799

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i2799: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i2797, %bb.afw
  %i.eyo = phi ptr [ %.pr.i.i2798, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i2797 ], [ %i.eyg, %bb.afw ] ; 3 uses
  %.not.i.i1.i.i2800 = icmp eq ptr %i.eyo, null
  br i1 %.not.i.i1.i.i2800, label %_ZN6cmListD2Ev.exit2802, label %bb.afx

bb.afx:                                           ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i2799
  %i.eyp = load ptr, ptr %i.eaj, align 8, !tbaa !281
  %i.eyq = ptrtoint ptr %i.eyp to i64
  %i.eyr = ptrtoint ptr %i.eyo to i64
  %i.eys = sub i64 %i.eyq, %i.eyr
  call void @_ZdlPvm(ptr noundef nonnull %i.eyo, i64 noundef %i.eys) #26
  br label %_ZN6cmListD2Ev.exit2802

_ZN6cmListD2Ev.exit2802:                          ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i2799, %bb.afx
  call void @llvm.lifetime.end.p0(ptr nonnull %216) #25
  %i.eyt = load ptr, ptr %156, align 8, !tbaa !394 ; 3 uses
  %.not.i2803 = icmp eq ptr %i.eyt, null
  br i1 %.not.i2803, label %_ZNSt10unique_ptrI25cmRulePlaceholderExpanderSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteI25cmRulePlaceholderExpanderEclEPS0_.exit.i

_ZNKSt14default_deleteI25cmRulePlaceholderExpanderEclEPS0_.exit.i: ; preds = %_ZN6cmListD2Ev.exit2802
  %i.eyu = load ptr, ptr %i.eyt, align 8, !tbaa !32
  %i.eyv = getelementptr inbounds nuw i8, ptr %i.eyu, i64 8
  %i.eyw = load ptr, ptr %i.eyv, align 8
  call void %i.eyw(ptr noundef nonnull align 8 dereferenceable(256) %i.eyt) #25, !inline_history !12
  br label %_ZNSt10unique_ptrI25cmRulePlaceholderExpanderSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI25cmRulePlaceholderExpanderSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZN6cmListD2Ev.exit2802, %_ZNKSt14default_deleteI25cmRulePlaceholderExpanderEclEPS0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %156) #25
  %i.eyx = load ptr, ptr %148, align 8, !tbaa !269 ; 2 uses
  %i.eyy = icmp eq ptr %i.eyx, %i.btt
  br i1 %i.eyy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2806, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2804

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2804: ; preds = %_ZNSt10unique_ptrI25cmRulePlaceholderExpanderSt14default_deleteIS0_EED2Ev.exit
  %i.eyz = load i64, ptr %i.btt, align 8, !tbaa !40
  %i.eza = add i64 %i.eyz, 1
  call void @_ZdlPvm(ptr noundef %i.eyx, i64 noundef %i.eza) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2806

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2806: ; preds = %_ZNSt10unique_ptrI25cmRulePlaceholderExpanderSt14default_deleteIS0_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2804
  call void @llvm.lifetime.end.p0(ptr nonnull %148) #25
  %i.ezb = load ptr, ptr %147, align 8, !tbaa !269 ; 2 uses
  %i.ezc = icmp eq ptr %i.ezb, %i.btr
  br i1 %i.ezc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2809, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2807

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2807: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2806
  %i.ezd = load i64, ptr %i.btr, align 8, !tbaa !40
  %i.eze = add i64 %i.ezd, 1
  call void @_ZdlPvm(ptr noundef %i.ezb, i64 noundef %i.eze) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2809

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2809: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2806, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2807
  call void @llvm.lifetime.end.p0(ptr nonnull %147) #25
  %i.ezf = load ptr, ptr %146, align 8, !tbaa !269 ; 2 uses
  %i.ezg = icmp eq ptr %i.ezf, %i.btp
  br i1 %i.ezg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2812, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2810

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2810: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2809
  %i.ezh = load i64, ptr %i.btp, align 8, !tbaa !40
  %i.ezi = add i64 %i.ezh, 1
  call void @_ZdlPvm(ptr noundef %i.ezf, i64 noundef %i.ezi) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2812

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2812: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2809, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2810
  call void @llvm.lifetime.end.p0(ptr nonnull %146) #25
  %i.ezj = load ptr, ptr %143, align 8, !tbaa !269 ; 2 uses
  %i.ezk = getelementptr inbounds nuw i8, ptr %143, i64 16 ; 2 uses
  %i.ezl = icmp eq ptr %i.ezj, %i.ezk
  br i1 %i.ezl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2815, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2813

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2813: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2812
  %i.ezm = load i64, ptr %i.ezk, align 8, !tbaa !40
  %i.ezn = add i64 %i.ezm, 1
  call void @_ZdlPvm(ptr noundef %i.ezj, i64 noundef %i.ezn) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2815

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2815: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2812, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2813
  call void @llvm.lifetime.end.p0(ptr nonnull %143) #25
  %i.ezo = load ptr, ptr %142, align 8, !tbaa !269 ; 2 uses
  %i.ezp = getelementptr inbounds nuw i8, ptr %142, i64 16 ; 2 uses
  %i.ezq = icmp eq ptr %i.ezo, %i.ezp
  br i1 %i.ezq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2818, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2816

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2816: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2815
  %i.ezr = load i64, ptr %i.ezp, align 8, !tbaa !40
  %i.ezs = add i64 %i.ezr, 1
  call void @_ZdlPvm(ptr noundef %i.ezo, i64 noundef %i.ezs) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2818

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2818: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2815, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2816
  call void @llvm.lifetime.end.p0(ptr nonnull %142) #25
  %i.ezt = load ptr, ptr %139, align 8, !tbaa !269 ; 2 uses
  %i.ezu = icmp eq ptr %i.ezt, %i.bpp
  br i1 %i.ezu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2821, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2819

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2819: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2818
  %i.ezv = load i64, ptr %i.bpp, align 8, !tbaa !40
  %i.ezw = add i64 %i.ezv, 1
  call void @_ZdlPvm(ptr noundef %i.ezt, i64 noundef %i.ezw) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2821

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2821: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2818, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2819
  call void @llvm.lifetime.end.p0(ptr nonnull %139) #25
  %i.ezx = load ptr, ptr %136, align 8, !tbaa !269 ; 2 uses
  %i.ezy = icmp eq ptr %i.ezx, %i.boc
  br i1 %i.ezy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2824, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2822

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2822: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2821
  %i.ezz = load i64, ptr %i.boc, align 8, !tbaa !40
  %i.faa = add i64 %i.ezz, 1
  call void @_ZdlPvm(ptr noundef %i.ezx, i64 noundef %i.faa) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2824

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2824: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2821, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2822
  call void @llvm.lifetime.end.p0(ptr nonnull %136) #25
  %i.fab = load ptr, ptr %133, align 8, !tbaa !269 ; 2 uses
  %i.fac = icmp eq ptr %i.fab, %i.bmo
  br i1 %i.fac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2827, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2825

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2825: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2824
  %i.fad = load i64, ptr %i.bmo, align 8, !tbaa !40
  %i.fae = add i64 %i.fad, 1
  call void @_ZdlPvm(ptr noundef %i.fab, i64 noundef %i.fae) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2827

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2827: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2824, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2825
  call void @llvm.lifetime.end.p0(ptr nonnull %133) #25
  %i.faf = load ptr, ptr %132, align 8, !tbaa !269 ; 2 uses
  %i.fag = getelementptr inbounds nuw i8, ptr %132, i64 16 ; 2 uses
  %i.fah = icmp eq ptr %i.faf, %i.fag
  br i1 %i.fah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2830, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2828

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2828: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2827
  %i.fai = load i64, ptr %i.fag, align 8, !tbaa !40
  %i.faj = add i64 %i.fai, 1
  call void @_ZdlPvm(ptr noundef %i.faf, i64 noundef %i.faj) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2830

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2830: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2827, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2828
  call void @llvm.lifetime.end.p0(ptr nonnull %132) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %131) #25
  %i.fak = load ptr, ptr %117, align 8, !tbaa !269 ; 2 uses
  %i.fal = icmp eq ptr %i.fak, %i.bbq
  br i1 %i.fal, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2833, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2831

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2831: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2830
  %i.fam = load i64, ptr %i.bbq, align 8, !tbaa !40
  %i.fan = add i64 %i.fam, 1
  call void @_ZdlPvm(ptr noundef %i.fak, i64 noundef %i.fan) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2833

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2833: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2830, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2831
  call void @llvm.lifetime.end.p0(ptr nonnull %117) #25
  %i.fao = load ptr, ptr %116, align 8, !tbaa !269 ; 2 uses
  %i.fap = icmp eq ptr %i.fao, %i.bbo
  br i1 %i.fap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2836, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2834

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2834: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2833
  %i.faq = load i64, ptr %i.bbo, align 8, !tbaa !40
  %i.far = add i64 %i.faq, 1
  call void @_ZdlPvm(ptr noundef %i.fao, i64 noundef %i.far) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2836

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2836: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2833, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2834
  call void @llvm.lifetime.end.p0(ptr nonnull %116) #25
  %i.fas = load ptr, ptr %115, align 8, !tbaa !269 ; 2 uses
  %i.fat = icmp eq ptr %i.fas, %i.bbm
  br i1 %i.fat, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2839, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2837

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2837: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2836
  %i.fau = load i64, ptr %i.bbm, align 8, !tbaa !40
  %i.fav = add i64 %i.fau, 1
  call void @_ZdlPvm(ptr noundef %i.fas, i64 noundef %i.fav) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2839

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2839: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2836, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2837
  call void @llvm.lifetime.end.p0(ptr nonnull %115) #25
  %i.faw = load ptr, ptr %112, align 8, !tbaa !278 ; 3 uses
  %i.fax = load ptr, ptr %i.dyw, align 8, !tbaa !279 ; 2 uses
  %.not4.i.i.i2840 = icmp eq ptr %i.faw, %i.fax
  br i1 %.not4.i.i.i2840, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i2848, label %.lr.ph.i.i.i2841

.lr.ph.i.i.i2841:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2839, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i2844
  %.05.i.i.i2842 = phi ptr [ %i.fbd, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i2844 ], [ %i.faw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2839 ] ; 3 uses
  %i.fay = load ptr, ptr %.05.i.i.i2842, align 8, !tbaa !269 ; 2 uses
  %i.faz = getelementptr inbounds nuw i8, ptr %.05.i.i.i2842, i64 16 ; 2 uses
  %i.fba = icmp eq ptr %i.fay, %i.faz
  br i1 %i.fba, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i2844, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i2843

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i2843: ; preds = %.lr.ph.i.i.i2841
  %i.fbb = load i64, ptr %i.faz, align 8, !tbaa !40
  %i.fbc = add i64 %i.fbb, 1
  call void @_ZdlPvm(ptr noundef %i.fay, i64 noundef %i.fbc) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i2844

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i2844: ; preds = %.lr.ph.i.i.i2841, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i2843
  %i.fbd = getelementptr inbounds nuw i8, ptr %.05.i.i.i2842, i64 32 ; 2 uses
  %.not.i.i.i2845 = icmp eq ptr %i.fbd, %i.fax
  br i1 %.not.i.i.i2845, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i2846, label %.lr.ph.i.i.i2841, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i2846: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i2844
  %.pr.i2847 = load ptr, ptr %112, align 8, !tbaa !278
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i2848

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i2848: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i2846, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2839
  %i.fbe = phi ptr [ %.pr.i2847, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i2846 ], [ %i.faw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2839 ] ; 3 uses
  %.not.i.i1.i2849 = icmp eq ptr %i.fbe, null
  br i1 %.not.i.i1.i2849, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit2851, label %bb.afy
end_hunk_2

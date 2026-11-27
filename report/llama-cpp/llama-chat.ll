Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/llama-chat?download=true
inline.NumInlined: 1454
inline.NumDeleted: 202
begin_hunk_0_@_Z24llm_chat_detect_templateRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

bb.cd:                                            ; preds = %bb.cc
  %i.cn = tail call fastcc noundef zeroext i1 @"_ZZ24llm_chat_detect_templateRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clEPKc"(ptr %0, ptr noundef nonnull @.str.68)
  br i1 %i.cn, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.co = tail call fastcc noundef zeroext i1 @"_ZZ24llm_chat_detect_templateRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clEPKc"(ptr %0, ptr noundef nonnull @.str.128)
  br i1 %i.co, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd, %bb.cc
  br label %bb.cg

bb.cg:                                            ; preds = %bb.u, %bb.cf, %bb.d, %bb.e, %bb.h, %bb.k, %bb.l, %bb.m, %bb.p, %bb.q, %bb.t, %bb.w, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.af, %bb.ah, %bb.aj, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ar, %bb.av, %bb.ax, %bb.aw, %bb.bb, %bb.ba, %bb.bc, %bb.bd, %bb.be, %bb.bg, %bb.bj, %bb.bm, %bb.bo, %bb.bp, %bb.br, %bb.bt, %bb.bv, %bb.bx, %bb.by, %bb.bz, %bb.ca, %bb.cb, %bb.ce, %bb.n, %_Z26llm_chat_template_from_strRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %.2 = phi i32 [ %i.b, %_Z26llm_chat_template_from_strRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ 55, %bb.cf ], [ 11, %bb.d ], [ 8, %bb.h ], [ %., %bb.l ], [ 5, %bb.k ], [ %i.l, %bb.e ], [ 54, %bb.ce ], [ 10, %bb.p ], [ 27, %bb.q ], [ %i.ae, %bb.u ], [ 32, %bb.t ], [ 28, %bb.w ], [ 13, %bb.y ], [ 14, %bb.z ], [ 15, %bb.aa ], [ 16, %bb.ab ], [ %.11, %bb.af ], [ 17, %bb.ac ], [ 4, %bb.m ], [ 20, %bb.ah ], [ 24, %bb.aj ], [ 25, %bb.al ], [ 26, %bb.am ], [ 29, %bb.an ], [ 21, %bb.ao ], [ %.12, %bb.av ], [ 22, %bb.ar ], [ %spec.select, %bb.n ], [ %.13, %bb.bb ], [ 33, %bb.aw ], [ 33, %bb.ax ], [ 34, %bb.ba ], [ 37, %bb.bc ], [ 38, %bb.bd ], [ 39, %bb.be ], [ 40, %bb.bg ], [ 41, %bb.bj ], [ 42, %bb.bm ], [ 43, %bb.bo ], [ 45, %bb.bp ], [ 46, %bb.br ], [ 47, %bb.bt ], [ 49, %bb.bv ], [ 48, %bb.bx ], [ 50, %bb.by ], [ 51, %bb.bz ], [ 52, %bb.ca ], [ 53, %bb.cb ]
  ret i32 %.2

bb.ch:                                            ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #4

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @"_ZZ24llm_chat_detect_templateRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clEPKc"(ptr nonnull %.0.val, ptr noundef %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #23
  %i.b = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %.0.val, ptr noundef nonnull %0, i64 noundef 0, i64 noundef %i.a) #23
  %i.c = icmp ne i64 %i.b, -1
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_Z23llm_chat_apply_template17llm_chat_templateRKSt6vectorIPK18llama_chat_messageSaIS3_EERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(i32 noundef %0, ptr nofree noundef nonnull readonly align 8 dereferenceable(24) %1, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(32) %2, i1 noundef zeroext %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca i64, align 8                      ; 6 uses
  %i.k = alloca i64, align 8                      ; 6 uses
  %i.l = alloca i64, align 8                      ; 6 uses
  %i.m = alloca i64, align 8                      ; 6 uses
  %i.n = alloca i64, align 8                      ; 6 uses
  %i.o = alloca i64, align 8                      ; 6 uses
  %i.p = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 104 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %19 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %26 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %31 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %33 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %36 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %39 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %42 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %44 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %47 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %49 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %50 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %51 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %52 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %53 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %54 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %55 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %56 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %57 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %58 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %59 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %60 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %61 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %62 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %63 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %64 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %65 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %66 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %67 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %68 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %69 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %70 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %71 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %72 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %73 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %74 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %75 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %76 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %77 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %78 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %79 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %80 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %81 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %82 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %83 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %84 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %85 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %86 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %87 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %88 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %89 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %90 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %91 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %92 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %93 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %94 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %95 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %96 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %97 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %98 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %99 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %100 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %101 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %102 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %103 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %104 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %105 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %106 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %107 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %108 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %109 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %110 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %111 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %112 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %113 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %114 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %115 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %116 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %117 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %118 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %119 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %120 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %121 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %122 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %123 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %124 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %125 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %126 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %127 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %128 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %129 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %130 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %131 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %132 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %133 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %134 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %135 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %136 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %137 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %138 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %139 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %140 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %141 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %142 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %143 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %144 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %145 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %146 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %147 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %148 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %149 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %150 = alloca %"class.std::allocator.0", align 1 ; 7 uses
  %151 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %152 = alloca %"class.std::allocator.0", align 1 ; 7 uses
  %153 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %154 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %155 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %156 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %157 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %158 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %159 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %160 = alloca %"class.std::allocator.0", align 1 ; 5 uses
  %161 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %162 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %163 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %164 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %165 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %166 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %167 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %168 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %169 = alloca %"class.std::__cxx11::basic_string", align 8 ; 23 uses
  %170 = alloca %"class.std::allocator.0", align 1 ; 7 uses
  %171 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %172 = alloca %"class.std::allocator.0", align 1 ; 7 uses
  %173 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %174 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %175 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
  %i.q = icmp eq i32 %0, 0
  br i1 %i.q, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %1, align 8, !tbaa !48     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !48   ; 2 uses
  %.not26753149 = icmp eq ptr %i.r, %i.t
  br i1 %.not26753149, label %._crit_edge3153, label %.lr.ph3152

.lr.ph3152:                                       ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 9 uses
  br label %bb.c

._crit_edge3153:                                  ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit961, %bb.b
  br i1 %3, label %bb.h, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit963

bb.c:                                             ; preds = %.lr.ph3152, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit961
  %.sroa.02601.03150 = phi ptr [ %i.r, %.lr.ph3152 ], [ %i.au, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit961 ] ; 2 uses
  %i.v = load ptr, ptr %.sroa.02601.03150, align 8, !tbaa !50 ; 2 uses
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull @.str.54, i64 noundef 12)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !52   ; 3 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !54
  %i.z = getelementptr i8, ptr %i.y, i64 -24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %i.u, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !63
  %i.ae = or i32 %i.ad, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ab, i32 noundef %i.ae)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit953 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.af = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.x) #23
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull %i.x, i64 noundef %i.af)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit953 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit953: ; preds = %bb.d, %bb.e
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull @.str.129, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit955 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit955: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit953
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !64 ; 3 uses
  %.not.i956 = icmp eq ptr %i.aj, null
  br i1 %.not.i956, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit955
  %i.ak = load ptr, ptr %i.u, align 8, !tbaa !54
  %i.al = getelementptr i8, ptr %i.ak, i64 -24
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds i8, ptr %i.u, i64 %i.am ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !63
  %i.aq = or i32 %i.ap, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.an, i32 noundef %i.aq)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit959 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit955
  %i.ar = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aj) #23
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull %i.aj, i64 noundef %i.ar)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit959 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit959: ; preds = %bb.f, %bb.g
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull @.str.130, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit961 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit961: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit959
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.02601.03150, i64 8 ; 2 uses
  %.not2675 = icmp eq ptr %i.au, %i.t
  br i1 %.not2675, label %._crit_edge3153, label %bb.c

bb.h:                                             ; preds = %._crit_edge3153
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %.invoke3893

bb.i:                                             ; preds = %bb.a
  %i.aw = and i32 %0, -2                          ; 3 uses
  %or.cond = icmp eq i32 %i.aw, 8
  br i1 %or.cond, label %bb.j, label %bb.y

bb.j:                                             ; preds = %bb.i
  %i.ax = icmp eq i32 %0, 8                       ; 2 uses
  %i.ay = select i1 %i.ax, ptr @.str.132, ptr @.str.133 ; 3 uses
  %i.az = load ptr, ptr %1, align 8, !tbaa !48    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !48 ; 2 uses
  %.not26743145 = icmp eq ptr %i.az, %i.bb
  br i1 %.not26743145, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit963, label %.lr.ph3148

.lr.ph3148:                                       ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  %i.bh = zext i1 %i.ax to i64                    ; 3 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph3148, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1002
  %.sroa.02597.03146 = phi ptr [ %i.az, %.lr.ph3148 ], [ %i.ec, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1002 ] ; 2 uses
  %i.bi = load ptr, ptr %.sroa.02597.03146, align 8, !tbaa !50 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !52 ; 4 uses
  store ptr %i.bc, ptr %5, align 8, !tbaa !24
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.243) #24
          to label %.noexc964 unwind label %.loopexit.split-lp2678.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc964:                                        ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bl = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bj) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #23
  store i64 %i.bl, ptr %i.p, align 8, !tbaa !25
  %i.bm = icmp ugt i64 %i.bl, 15
  br i1 %i.bm, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.m
  %i.bn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.p, i64 noundef 0)
          to label %.noexc965 unwind label %.loopexit.split-lp2678.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc965:                                        ; preds = %.noexc.i
  store ptr %i.bn, ptr %5, align 8, !tbaa !21
  %i.bo = load i64, ptr %i.p, align 8, !tbaa !25
  store i64 %i.bo, ptr %i.bc, align 8, !tbaa !26
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc965, %bb.m
  %i.bp = phi ptr [ %i.bn, %.noexc965 ], [ %i.bc, %bb.m ] ; 2 uses
  switch i64 %i.bl, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %bb.p
  ]

bb.n:                                             ; preds = %._crit_edge.i.i
  %i.bq = load i8, ptr %i.bj, align 1, !tbaa !26
  store i8 %i.bq, ptr %i.bp, align 1, !tbaa !26
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bp, ptr nonnull align 1 %i.bj, i64 %i.bl, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %._crit_edge.i.i
  %i.br = load i64, ptr %i.p, align 8, !tbaa !25  ; 2 uses
  store i64 %i.br, ptr %i.bd, align 8, !tbaa !20
  %i.bs = load ptr, ptr %5, align 8, !tbaa !21
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.br
  store i8 0, ptr %i.bt, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !64 ; 4 uses
  store ptr %i.be, ptr %6, align 8, !tbaa !24
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.243) #24
          to label %.noexc968 unwind label %.loopexit.split-lp2683.loopexit.split-lp.loopexit.split-lp

.noexc968:                                        ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bx = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bv) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #23
  store i64 %i.bx, ptr %i.o, align 8, !tbaa !25
  %i.by = icmp ugt i64 %i.bx, 15
  br i1 %i.by, label %.noexc.i967, label %._crit_edge.i.i966

.noexc.i967:                                      ; preds = %bb.r
  %i.bz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.o, i64 noundef 0)
          to label %.noexc969 unwind label %.loopexit.split-lp2683.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc969:                                        ; preds = %.noexc.i967
  store ptr %i.bz, ptr %6, align 8, !tbaa !21
  %i.ca = load i64, ptr %i.o, align 8, !tbaa !25
  store i64 %i.ca, ptr %i.be, align 8, !tbaa !26
  br label %._crit_edge.i.i966
end_hunk_0
begin_hunk_1_@_Z23llm_chat_apply_template17llm_chat_templateRKSt6vectorIPK18llama_chat_messageSaIS3_EERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
  %i.chi = phi i64 [ 21, %bb.ry ], [ 27, %bb.rv ]
  %i.chj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.amy, ptr noundef nonnull %i.chh, i64 noundef %i.chi)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2075.invoke unwind label %bb.rx ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2075.invoke: ; preds = %.invoke3915
  %i.chk = load ptr, ptr %1, align 8, !tbaa !67
  %i.chl = getelementptr inbounds nuw [8 x i8], ptr %i.chk, i64 %.06532982
  %i.chm = load ptr, ptr %i.chl, align 8, !tbaa !50
  %i.chn = getelementptr inbounds nuw i8, ptr %i.chm, i64 8
  %i.cho = load ptr, ptr %i.chn, align 8, !tbaa !64
  %i.chp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.amy, ptr noundef %i.cho)
          to label %.invoke3892 unwind label %bb.rx

.invoke3892:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2075.invoke
  %i.chq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.chp, ptr noundef nonnull @.str.138, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2070 unwind label %bb.rx ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2070: ; preds = %.invoke3892, %bb.ry
  %i.chr = load ptr, ptr %128, align 8, !tbaa !21 ; 2 uses
  %i.chs = icmp eq ptr %i.chr, %i.amz
  br i1 %i.chs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2080, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2078

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2078: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2070
  %i.cht = load i64, ptr %i.amz, align 8, !tbaa !26
  %i.chu = add i64 %i.cht, 1
  call void @_ZdlPvm(ptr noundef %i.chr, i64 noundef %i.chu) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2080

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2080: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2070, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2078
  call void @llvm.lifetime.end.p0(ptr nonnull %128) #23
  %i.chv = add nuw i64 %.06532982, 1              ; 2 uses
  %i.chw = load ptr, ptr %i.amv, align 8, !tbaa !66
  %i.chx = load ptr, ptr %1, align 8, !tbaa !67   ; 2 uses
  %i.chy = ptrtoint ptr %i.chw to i64
  %i.chz = ptrtoint ptr %i.chx to i64
  %i.cia = sub i64 %i.chy, %i.chz
  %i.cib = ashr exact i64 %i.cia, 3
  %i.cic = icmp ult i64 %i.chv, %i.cib
  br i1 %i.cic, label %bb.ru, label %._crit_edge2984, !llvm.loop !36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2073: ; preds = %bb.rx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2071, %bb.rw
  %.pn724 = phi { ptr, i32 } [ %i.cha, %bb.rw ], [ %i.chb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2071 ], [ %i.chb, %bb.rx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %128) #23
  br label %.loopexit.split-lp

bb.rz:                                            ; preds = %._crit_edge2984
  %i.cid = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %.invoke3893

bb.sa:                                            ; preds = %bb.gy
  %i.cie = icmp eq i32 %0, 41
  %or.cond17 = icmp eq i32 %i.aw, 40
  br i1 %or.cond17, label %bb.sb, label %bb.sk

bb.sb:                                            ; preds = %bb.sa
  %i.cif = load ptr, ptr %1, align 8, !tbaa !48   ; 2 uses
  %i.cig = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cih = load ptr, ptr %i.cig, align 8, !tbaa !48 ; 2 uses
  %.not26703125 = icmp eq ptr %i.cif, %i.cih
  br i1 %.not26703125, label %._crit_edge3129, label %.lr.ph3128

.lr.ph3128:                                       ; preds = %bb.sb
  %i.cii = getelementptr inbounds nuw i8, ptr %130, i64 8 ; 2 uses
  %i.cij = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cik = getelementptr inbounds nuw i8, ptr %130, i64 16 ; 4 uses
  br label %bb.sc

._crit_edge3129:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2095, %bb.sb
  br i1 %3, label %bb.sj, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit963

bb.sc:                                            ; preds = %.lr.ph3128, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2095
  %.sroa.02463.03126 = phi ptr [ %i.cif, %.lr.ph3128 ], [ %i.cjp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2095 ] ; 2 uses
  %i.cil = load ptr, ptr %.sroa.02463.03126, align 8, !tbaa !50 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %130) #23
  %i.cim = load ptr, ptr %i.cil, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %131) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %130, ptr noundef %i.cim, ptr noundef nonnull align 1 dereferenceable(1) %131)
          to label %bb.sd unwind label %bb.sf

bb.sd:                                            ; preds = %bb.sc
  call void @llvm.lifetime.end.p0(ptr nonnull %131) #23
  %i.cin = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %130, ptr noundef nonnull @.str.136)
  br i1 %i.cin, label %bb.se, label %bb.sh

bb.se:                                            ; preds = %bb.sd
  %i.cio = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %130, ptr noundef nonnull @.str.206)
          to label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_PDoFiiEET0_T_SD_SC_T1_.exit unwind label %bb.sg ; 0 uses

bb.sf:                                            ; preds = %bb.sc
  %i.cip = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %131) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2085

bb.sg:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2090, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2088, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_PDoFiiEET0_T_SD_SC_T1_.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2092, %bb.se
  %i.ciq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cir = load ptr, ptr %130, align 8, !tbaa !21 ; 2 uses
  %i.cis = icmp eq ptr %i.cir, %i.cik
  br i1 %i.cis, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2085, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2083

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2083: ; preds = %bb.sg
  %i.cit = load i64, ptr %i.cik, align 8, !tbaa !26
  %i.ciu = add i64 %i.cit, 1
  call void @_ZdlPvm(ptr noundef %i.cir, i64 noundef %i.ciu) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2085

bb.sh:                                            ; preds = %bb.sd
  %i.civ = load ptr, ptr %130, align 8, !tbaa !21 ; 2 uses
  %i.ciw = load i64, ptr %i.cii, align 8, !tbaa !20 ; 2 uses
  %i.cix = getelementptr inbounds nuw i8, ptr %i.civ, i64 %i.ciw
  %.not6.i = icmp samesign eq i64 %i.ciw, 0
  br i1 %.not6.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_PDoFiiEET0_T_SD_SC_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.sh, %.lr.ph.i
  %.sroa.0.08.i = phi ptr [ %i.cjc, %.lr.ph.i ], [ %i.civ, %bb.sh ] ; 3 uses
  %i.ciy = load i8, ptr %.sroa.0.08.i, align 1, !tbaa !26
  %i.ciz = sext i8 %i.ciy to i32
  %i.cja = call noundef i32 @toupper(i32 noundef %i.ciz) #23, !inline_history !37
  %i.cjb = trunc i32 %i.cja to i8
  store i8 %i.cjb, ptr %.sroa.0.08.i, align 1, !tbaa !26
  %i.cjc = getelementptr i8, ptr %.sroa.0.08.i, i64 1 ; 2 uses
  %.not.i2086 = icmp eq ptr %i.cjc, %i.cix
  br i1 %.not.i2086, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_PDoFiiEET0_T_SD_SC_T1_.exit, label %.lr.ph.i, !llvm.loop !38

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_PDoFiiEET0_T_SD_SC_T1_.exit: ; preds = %.lr.ph.i, %bb.sh, %bb.se
  %i.cjd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cij, ptr noundef nonnull @.str.207, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2088 unwind label %bb.sg ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2088: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_PDoFiiEET0_T_SD_SC_T1_.exit
  %i.cje = load ptr, ptr %130, align 8, !tbaa !21
  %i.cjf = load i64, ptr %i.cii, align 8, !tbaa !20
  %i.cjg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cij, ptr noundef %i.cje, i64 noundef %i.cjf)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2090 unwind label %bb.sg ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2090: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2088
  %i.cjh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cjg, ptr noundef nonnull @.str.208, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2092 unwind label %bb.sg ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2092: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2090
  %i.cji = getelementptr inbounds nuw i8, ptr %i.cil, i64 8
  %i.cjj = load ptr, ptr %i.cji, align 8, !tbaa !64
  %i.cjk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.cjg, ptr noundef %i.cjj)
          to label %bb.si unwind label %bb.sg     ; 0 uses

bb.si:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2092
  %i.cjl = load ptr, ptr %130, align 8, !tbaa !21 ; 2 uses
  %i.cjm = icmp eq ptr %i.cjl, %i.cik
  br i1 %i.cjm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2095, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2093

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2093: ; preds = %bb.si
  %i.cjn = load i64, ptr %i.cik, align 8, !tbaa !26
  %i.cjo = add i64 %i.cjn, 1
  call void @_ZdlPvm(ptr noundef %i.cjl, i64 noundef %i.cjo) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2095

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2095: ; preds = %bb.si, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2093
  call void @llvm.lifetime.end.p0(ptr nonnull %130) #23
  %i.cjp = getelementptr inbounds nuw i8, ptr %.sroa.02463.03126, i64 8 ; 2 uses
  %.not2670 = icmp eq ptr %i.cjp, %i.cih
  br i1 %.not2670, label %._crit_edge3129, label %bb.sc

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2085: ; preds = %bb.sg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2083, %bb.sf
  %.pn722 = phi { ptr, i32 } [ %i.cip, %bb.sf ], [ %i.ciq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2083 ], [ %i.ciq, %bb.sg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %130) #23
  br label %.loopexit.split-lp

bb.sj:                                            ; preds = %._crit_edge3129
  %i.cjq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cjr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cjq, ptr noundef nonnull @.str.107, i64 noundef 22)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2097 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2097: ; preds = %bb.sj
  br i1 %i.cie, label %.invoke3893, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit963

bb.sk:                                            ; preds = %bb.sa
  switch i32 %0, label %bb.yf [
    i32 42, label %bb.sy
    i32 43, label %bb.tj
    i32 44, label %bb.tv
    i32 45, label %bb.ub
    i32 46, label %bb.ul
    i32 47, label %bb.uu
    i32 48, label %.preheader
    i32 49, label %bb.ve
    i32 50, label %bb.vp
    i32 51, label %bb.vz
    i32 52, label %bb.wm
    i32 53, label %.preheader2719
    i32 54, label %bb.xq
  ]

.preheader2719:                                   ; preds = %bb.sk
  %i.cjs = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.cjt = load ptr, ptr %i.cjs, align 8, !tbaa !66
  %i.cju = load ptr, ptr %1, align 8, !tbaa !67   ; 3 uses
  %.not3156 = icmp eq ptr %i.cjt, %i.cju
  br i1 %.not3156, label %._crit_edge3078, label %.lr.ph3077

.lr.ph3077:                                       ; preds = %.preheader2719
  %176 = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.cjv = getelementptr inbounds nuw i8, ptr %171, i64 8 ; 3 uses
  %i.cjw = getelementptr inbounds nuw i8, ptr %171, i64 16 ; 6 uses
  %i.cjx = getelementptr inbounds nuw i8, ptr %169, i64 16 ; 6 uses
  %i.cjy = getelementptr inbounds nuw i8, ptr %169, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %169) #23
  %i.cjz = load ptr, ptr %i.cju, align 8, !tbaa !50
  %i.cka = load ptr, ptr %i.cjz, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %170) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %169, ptr noundef %i.cka, ptr noundef nonnull align 1 dereferenceable(1) %170)
          to label %bb.sl unwind label %.loopexit.split-lp3212.loopexit.split-lp.loopexit.split-lp

bb.sl:                                            ; preds = %.lr.ph3077
  call void @llvm.lifetime.end.p0(ptr nonnull %170) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %171) #23
  %i.ckb = load ptr, ptr %i.cju, align 8, !tbaa !50
  %i.ckc = getelementptr inbounds nuw i8, ptr %i.ckb, i64 8
  %i.ckd = load ptr, ptr %i.ckc, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %172) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %171, ptr noundef %i.ckd, ptr noundef nonnull align 1 dereferenceable(1) %172)
          to label %bb.sm unwind label %.loopexit.split-lp3217.loopexit.split-lp.loopexit.split-lp

bb.sm:                                            ; preds = %bb.sl
  call void @llvm.lifetime.end.p0(ptr nonnull %172) #23
  %i.cke = call noundef zeroext i1 @_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %169, ptr noundef nonnull @.str.134)
  br i1 %i.cke, label %bb.sn, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2358.peel

bb.sn:                                            ; preds = %bb.sm
  %i.ckf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %176, ptr noundef nonnull @.str.126, i64 noundef 28)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2358.peel unwind label %.loopexit.split-lp3222.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2358.peel: ; preds = %bb.sn, %bb.sm
  %i.ckg = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %169, ptr noundef nonnull @.str.134)
  br i1 %i.ckg, label %.invoke3914.invoke, label %bb.so

bb.so:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2358.peel
  %i.ckh = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %169, ptr noundef nonnull @.str.136)
  br i1 %i.ckh, label %.invoke3914.invoke, label %bb.sp

bb.sp:                                            ; preds = %bb.so
  %i.cki = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %169, ptr noundef nonnull @.str.155)
  br i1 %i.cki, label %.invoke3914.invoke, label %bb.sq

bb.sq:                                            ; preds = %bb.sp
  %i.ckj = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %169, ptr noundef nonnull @.str.185)
  br i1 %i.ckj, label %.invoke3914.invoke, label %bb.sr

bb.sr:                                            ; preds = %bb.sq
  %i.ckk = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %169, ptr noundef nonnull @.str.237)
  br i1 %i.ckk, label %.invoke3914.invoke, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2367.peel

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2387.peel.invoke: ; preds = %.invoke3914.invoke
  %i.ckl = load ptr, ptr %171, align 8, !tbaa !21
  %i.ckm = load i64, ptr %i.cjv, align 8, !tbaa !20
  %i.ckn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %176, ptr noundef %i.ckl, i64 noundef %i.ckm)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2389.peel.invoke unwind label %.loopexit.split-lp3222.loopexit.split-lp.loopexit.split-lp

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2389.peel.invoke: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2387.peel.invoke
  %i.cko = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ckn, ptr noundef nonnull @.str.233, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2367.peel unwind label %.loopexit.split-lp3222.loopexit.split-lp.loopexit.split-lp ; 0 uses

.invoke3914.invoke:                               ; preds = %bb.sq, %bb.sp, %bb.so, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2358.peel, %bb.sr
  %i.ckp = phi ptr [ @.str.238, %bb.sr ], [ @.str.234, %bb.so ], [ @.str.236, %bb.sq ], [ @.str.235, %bb.sp ], [ @.str.232, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2358.peel ]
  %i.ckq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %176, ptr noundef nonnull %i.ckp, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2387.peel.invoke unwind label %.loopexit.split-lp3222.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2367.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2389.peel.invoke, %bb.sr
  %i.ckr = load ptr, ptr %171, align 8, !tbaa !21 ; 2 uses
  %i.cks = icmp eq ptr %i.ckr, %i.cjw
  br i1 %i.cks, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2393.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2392.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2392.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2367.peel
  %i.ckt = load i64, ptr %i.cjw, align 8, !tbaa !26
  %i.cku = add i64 %i.ckt, 1
  call void @_ZdlPvm(ptr noundef %i.ckr, i64 noundef %i.cku) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2394.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2393.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2367.peel
  %177 = load i64, ptr %i.cjv, align 8, !tbaa !20
  %178 = icmp ult i64 %177, 16
  call void @llvm.assume(i1 %178)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2394.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2394.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2393.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2392.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %171) #23
  %i.ckv = load ptr, ptr %169, align 8, !tbaa !21 ; 2 uses
  %i.ckw = icmp eq ptr %i.ckv, %i.cjx
  br i1 %i.ckw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2396.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2395.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2395.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2394.peel
  %i.ckx = load i64, ptr %i.cjx, align 8, !tbaa !26
  %i.cky = add i64 %i.ckx, 1
  call void @_ZdlPvm(ptr noundef %i.ckv, i64 noundef %i.cky) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2397.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2396.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2394.peel
  %179 = load i64, ptr %i.cjy, align 8, !tbaa !20
  %180 = icmp ult i64 %179, 16
  call void @llvm.assume(i1 %180)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2397.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2397.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2396.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2395.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %169) #23
  %i.ckz = load ptr, ptr %i.cjs, align 8, !tbaa !66
  %i.cla = load ptr, ptr %1, align 8, !tbaa !67   ; 2 uses
  %i.clb = ptrtoint ptr %i.ckz to i64
  %i.clc = ptrtoint ptr %i.cla to i64
  %i.cld = sub i64 %i.clb, %i.clc
  %i.cle = icmp ugt i64 %i.cld, 8
  br i1 %i.cle, label %.peel.next, label %._crit_edge3078

.preheader:                                       ; preds = %bb.sk
  %i.clf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.clg = load ptr, ptr %i.clf, align 8, !tbaa !66
  %i.clh = load ptr, ptr %1, align 8, !tbaa !67   ; 2 uses
  %.not3158 = icmp eq ptr %i.clg, %i.clh
  br i1 %.not3158, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit963, label %.lr.ph3097

.lr.ph3097:                                       ; preds = %.preheader
  %181 = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 9 uses
  %i.cli = getelementptr inbounds nuw i8, ptr %149, i64 16 ; 6 uses
  %i.clj = getelementptr inbounds nuw i8, ptr %149, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %149) #23
  %i.clk = load ptr, ptr %i.clh, align 8, !tbaa !50
  %i.cll = load ptr, ptr %i.clk, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %150) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %149, ptr noundef %i.cll, ptr noundef nonnull align 1 dereferenceable(1) %150)
          to label %bb.ss unwind label %.loopexit.split-lp3243.loopexit.split-lp.loopexit.split-lp

bb.ss:                                            ; preds = %.lr.ph3097
  call void @llvm.lifetime.end.p0(ptr nonnull %150) #23
  %i.clm = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %149, ptr noundef nonnull @.str.134)
  br i1 %i.clm, label %bb.st, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2232.peel

bb.st:                                            ; preds = %bb.ss
  %i.cln = load ptr, ptr %1, align 8, !tbaa !67
  %i.clo = load ptr, ptr %i.cln, align 8, !tbaa !50
  %i.clp = getelementptr inbounds nuw i8, ptr %i.clo, i64 8
  %i.clq = load ptr, ptr %i.clp, align 8, !tbaa !64
  %i.clr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %181, ptr noundef %i.clq)
          to label %bb.su unwind label %.loopexit.split-lp3248.loopexit.split-lp.loopexit.split-lp

bb.su:                                            ; preds = %bb.st
  %i.cls = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.clr, ptr noundef nonnull @.str.122, i64 noundef 34)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2232.peel unwind label %.loopexit.split-lp3248.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2232.peel: ; preds = %bb.su, %bb.ss
  %i.clt = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %149, ptr noundef nonnull @.str.155)
  br i1 %i.clt, label %bb.sx, label %bb.sv

bb.sv:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2232.peel
  %i.clu = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %149, ptr noundef nonnull @.str.136)
  br i1 %i.clu, label %bb.sw, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2239.peel

bb.sw:                                            ; preds = %bb.sv
  %i.clv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %181, ptr noundef nonnull @.str.225, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2241.peel unwind label %.loopexit.split-lp3248.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2241.peel: ; preds = %bb.sw
  %i.clw = load ptr, ptr %1, align 8, !tbaa !67
  %i.clx = load ptr, ptr %i.clw, align 8, !tbaa !50
  %i.cly = getelementptr inbounds nuw i8, ptr %i.clx, i64 8
  %i.clz = load ptr, ptr %i.cly, align 8, !tbaa !64
  %i.cma = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %181, ptr noundef %i.clz)
          to label %.invoke3898 unwind label %.loopexit.split-lp3248.loopexit.split-lp.loopexit.split-lp

.invoke3898:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2237.peel, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2241.peel
  %i.cmb = phi ptr [ %i.cma, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2241.peel ], [ %i.cmk, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2237.peel ]
  %i.cmc = phi ptr [ @.str.120, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2241.peel ], [ @.str.224, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2237.peel ]
  %i.cmd = phi i64 [ 20, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2241.peel ], [ 34, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2237.peel ]
  %i.cme = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cmb, ptr noundef nonnull %i.cmc, i64 noundef %i.cmd)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2239.peel unwind label %.loopexit.split-lp3248.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.sx:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2232.peel
  %i.cmf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %181, ptr noundef nonnull @.str.120, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2237.peel unwind label %.loopexit.split-lp3248.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2237.peel: ; preds = %bb.sx
  %i.cmg = load ptr, ptr %1, align 8, !tbaa !67
  %i.cmh = load ptr, ptr %i.cmg, align 8, !tbaa !50
  %i.cmi = getelementptr inbounds nuw i8, ptr %i.cmh, i64 8
  %i.cmj = load ptr, ptr %i.cmi, align 8, !tbaa !64
  %i.cmk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %181, ptr noundef %i.cmj)
          to label %.invoke3898 unwind label %.loopexit.split-lp3248.loopexit.split-lp.loopexit.split-lp

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2239.peel: ; preds = %.invoke3898, %bb.sv
  %i.cml = load ptr, ptr %149, align 8, !tbaa !21 ; 2 uses
  %i.cmm = icmp eq ptr %i.cml, %i.cli
  br i1 %i.cmm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2245.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2244.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2244.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2239.peel
  %i.cmn = load i64, ptr %i.cli, align 8, !tbaa !26
  %i.cmo = add i64 %i.cmn, 1
  call void @_ZdlPvm(ptr noundef %i.cml, i64 noundef %i.cmo) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2246.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2245.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2239.peel
  %182 = load i64, ptr %i.clj, align 8, !tbaa !20
  %183 = icmp ult i64 %182, 16
  call void @llvm.assume(i1 %183)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2246.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2246.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2245.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2244.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %149) #23
  %i.cmp = load ptr, ptr %i.clf, align 8, !tbaa !66
  %i.cmq = load ptr, ptr %1, align 8, !tbaa !67   ; 2 uses
  %i.cmr = ptrtoint ptr %i.cmp to i64
  %i.cms = ptrtoint ptr %i.cmq to i64
  %i.cmt = sub i64 %i.cmr, %i.cms
  %i.cmu = icmp ugt i64 %i.cmt, 8
  br i1 %i.cmu, label %.peel.next3240, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit963

bb.sy:                                            ; preds = %bb.sk
  %i.cmv = load ptr, ptr %1, align 8, !tbaa !48   ; 2 uses
  %i.cmw = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cmx = load ptr, ptr %i.cmw, align 8, !tbaa !48
  %i.cmy = icmp eq ptr %i.cmv, %i.cmx
  br i1 %i.cmy, label %.critedge884.thread, label %bb.sz

bb.sz:                                            ; preds = %bb.sy
  call void @llvm.lifetime.start.p0(ptr nonnull %132) #23
  %i.cmz = load ptr, ptr %i.cmv, align 8, !tbaa !50
  %i.cna = load ptr, ptr %i.cmz, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %133) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %132, ptr noundef %i.cna, ptr noundef nonnull align 1 dereferenceable(1) %133)
          to label %.critedge882 unwind label %bb.ta

.critedge882:                                     ; preds = %bb.sz
  %i.cnb = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %132, ptr noundef nonnull @.str.134)
  %i.cnc = load ptr, ptr %132, align 8, !tbaa !21 ; 2 uses
  %i.cnd = getelementptr inbounds nuw i8, ptr %132, i64 16 ; 2 uses
  %i.cne = icmp eq ptr %i.cnc, %i.cnd
  br i1 %i.cne, label %.critedge884, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2100: ; preds = %.critedge882
  %i.cnf = load i64, ptr %i.cnd, align 8, !tbaa !26
  %i.cng = add i64 %i.cnf, 1
  call void @_ZdlPvm(ptr noundef %i.cnc, i64 noundef %i.cng) #25
  br label %.critedge884

.critedge884:                                     ; preds = %.critedge882, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2100
  call void @llvm.lifetime.end.p0(ptr nonnull %133) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %132) #23
  br i1 %i.cnb, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2104, label %.critedge884.thread

.critedge884.thread:                              ; preds = %bb.sy, %.critedge884
  %i.cnh = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cni = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cnh, ptr noundef nonnull @.str.209, i64 noundef 52)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2104 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ta:                                            ; preds = %bb.sz
  %i.cnj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %133) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %132) #23
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cn, %bb.co, %bb.cp, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1173, %bb.cq, %bb.cr, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1179, %bb.c, %bb.d, %bb.e, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit953, %bb.f, %bb.g, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit959, %bb.lf, %bb.df, %bb.dg, %bb.dh, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1214, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1216, %bb.di, %bb.dj, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1222, %.invoke3893, %bb.ve, %bb.tv, %.critedge884.thread, %bb.sj, %.critedge880.thread, %bb.rc, %bb.rb, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1579, %bb.je, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1559, %bb.iy, %bb.bb, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2028
  %lpad.loopexit.split-lp4079 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2104: ; preds = %.critedge884.thread, %.critedge884
  %i.cnk = load ptr, ptr %1, align 8, !tbaa !48   ; 2 uses
  %i.cnl = load ptr, ptr %i.cmw, align 8, !tbaa !48 ; 2 uses
  %.not26693121 = icmp eq ptr %i.cnk, %i.cnl
  br i1 %.not26693121, label %._crit_edge3124, label %.lr.ph3123

.lr.ph3123:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2104
  %i.cnm = getelementptr inbounds nuw i8, ptr %134, i64 8 ; 2 uses
  %i.cnn = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cno = getelementptr inbounds nuw i8, ptr %134, i64 16 ; 4 uses
  br label %bb.tb

._crit_edge3124:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2125, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2104
  br i1 %3, label %bb.ti, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit963

bb.tb:                                            ; preds = %.lr.ph3123, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2125
  %.sroa.02459.03122 = phi ptr [ %i.cnk, %.lr.ph3123 ], [ %i.cou, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2125 ] ; 2 uses
  %i.cnp = load ptr, ptr %.sroa.02459.03122, align 8, !tbaa !50 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %134) #23
  %i.cnq = load ptr, ptr %i.cnp, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %135) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %134, ptr noundef %i.cnq, ptr noundef nonnull align 1 dereferenceable(1) %135)
          to label %bb.tc unwind label %bb.te

bb.tc:                                            ; preds = %bb.tb
  call void @llvm.lifetime.end.p0(ptr nonnull %135) #23
  %i.cnr = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %134, ptr noundef nonnull @.str.136)
  br i1 %i.cnr, label %bb.td, label %bb.tg

bb.td:                                            ; preds = %bb.tc
  %i.cns = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %134, ptr noundef nonnull @.str.206)
          to label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_PDoFiiEET0_T_SD_SC_T1_.exit2114 unwind label %bb.tf ; 0 uses

bb.te:                                            ; preds = %bb.tb
  %i.cnt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %135) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2107

bb.tf:                                            ; preds = %bb.th, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2118, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2116, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_PDoFiiEET0_T_SD_SC_T1_.exit2114, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2120, %bb.td
  %i.cnu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cnv = load ptr, ptr %134, align 8, !tbaa !21 ; 2 uses
  %i.cnw = icmp eq ptr %i.cnv, %i.cno
  br i1 %i.cnw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2105: ; preds = %bb.tf
  %i.cnx = load i64, ptr %i.cno, align 8, !tbaa !26
  %i.cny = add i64 %i.cnx, 1
  call void @_ZdlPvm(ptr noundef %i.cnv, i64 noundef %i.cny) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2107

bb.tg:                                            ; preds = %bb.tc
  %i.cnz = load ptr, ptr %134, align 8, !tbaa !21 ; 2 uses
  %i.coa = load i64, ptr %i.cnm, align 8, !tbaa !20 ; 2 uses
  %i.cob = getelementptr inbounds nuw i8, ptr %i.cnz, i64 %i.coa
  %.not6.i2108 = icmp samesign eq i64 %i.coa, 0
  br i1 %.not6.i2108, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_PDoFiiEET0_T_SD_SC_T1_.exit2114, label %.lr.ph.i2109

.lr.ph.i2109:                                     ; preds = %bb.tg, %.lr.ph.i2109
  %.sroa.0.08.i2110 = phi ptr [ %i.cog, %.lr.ph.i2109 ], [ %i.cnz, %bb.tg ] ; 3 uses
  %i.coc = load i8, ptr %.sroa.0.08.i2110, align 1, !tbaa !26
  %i.cod = sext i8 %i.coc to i32
  %i.coe = call noundef i32 @toupper(i32 noundef %i.cod) #23, !inline_history !37
  %i.cof = trunc i32 %i.coe to i8
  store i8 %i.cof, ptr %.sroa.0.08.i2110, align 1, !tbaa !26
  %i.cog = getelementptr i8, ptr %.sroa.0.08.i2110, i64 1 ; 2 uses
  %.not.i2112 = icmp eq ptr %i.cog, %i.cob
  br i1 %.not.i2112, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_PDoFiiEET0_T_SD_SC_T1_.exit2114, label %.lr.ph.i2109, !llvm.loop !38

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_PDoFiiEET0_T_SD_SC_T1_.exit2114: ; preds = %.lr.ph.i2109, %bb.tg, %bb.td
  %i.coh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cnn, ptr noundef nonnull @.str.207, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2116 unwind label %bb.tf ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2116: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_PDoFiiEET0_T_SD_SC_T1_.exit2114
  %i.coi = load ptr, ptr %134, align 8, !tbaa !21
  %i.coj = load i64, ptr %i.cnm, align 8, !tbaa !20
  %i.cok = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cnn, ptr noundef %i.coi, i64 noundef %i.coj)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2118 unwind label %bb.tf ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2118: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2116
  %i.col = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cok, ptr noundef nonnull @.str.208, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2120 unwind label %bb.tf ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2120: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2118
  %i.com = getelementptr inbounds nuw i8, ptr %i.cnp, i64 8
  %i.con = load ptr, ptr %i.com, align 8, !tbaa !64
  %i.coo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.cok, ptr noundef %i.con)
          to label %bb.th unwind label %bb.tf

bb.th:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2120
  %i.cop = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.coo, ptr noundef nonnull @.str.112, i64 noundef 12)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2122 unwind label %bb.tf ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2122: ; preds = %bb.th
  %i.coq = load ptr, ptr %134, align 8, !tbaa !21 ; 2 uses
  %i.cor = icmp eq ptr %i.coq, %i.cno
  br i1 %i.cor, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2123: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2122
  %i.cos = load i64, ptr %i.cno, align 8, !tbaa !26
  %i.cot = add i64 %i.cos, 1
  call void @_ZdlPvm(ptr noundef %i.coq, i64 noundef %i.cot) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2125: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2122, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2123
  call void @llvm.lifetime.end.p0(ptr nonnull %134) #23
  %i.cou = getelementptr inbounds nuw i8, ptr %.sroa.02459.03122, i64 8 ; 2 uses
  %.not2669 = icmp eq ptr %i.cou, %i.cnl
  br i1 %.not2669, label %._crit_edge3124, label %bb.tb

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2107: ; preds = %bb.tf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2105, %bb.te
  %.pn719 = phi { ptr, i32 } [ %i.cnt, %bb.te ], [ %i.cnu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2105 ], [ %i.cnu, %bb.tf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %134) #23
  br label %.loopexit.split-lp

bb.ti:                                            ; preds = %._crit_edge3124
  %i.cov = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %.invoke3893

bb.tj:                                            ; preds = %bb.sk
  %i.cow = load ptr, ptr %1, align 8, !tbaa !48   ; 2 uses
  %i.cox = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.coy = load ptr, ptr %i.cox, align 8, !tbaa !48 ; 2 uses
  %.not26683116 = icmp eq ptr %i.cow, %i.coy
  br i1 %.not26683116, label %._crit_edge3120, label %.lr.ph3119

.lr.ph3119:                                       ; preds = %bb.tj
  %i.coz = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cpa = getelementptr inbounds nuw i8, ptr %136, i64 8
  %i.cpb = getelementptr inbounds nuw i8, ptr %139, i64 8
  %i.cpc = getelementptr inbounds nuw i8, ptr %138, i64 8
  %i.cpd = getelementptr inbounds nuw i8, ptr %138, i64 16 ; 4 uses
  %i.cpe = getelementptr inbounds nuw i8, ptr %139, i64 16 ; 4 uses
  %i.cpf = getelementptr inbounds nuw i8, ptr %136, i64 16 ; 4 uses
  br label %bb.tk

._crit_edge3120:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2146, %bb.tj
  br i1 %3, label %bb.tu, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit963

bb.tk:                                            ; preds = %.lr.ph3119, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2146
end_hunk_1
begin_hunk_2_@_Z23llm_chat_apply_template17llm_chat_templateRKSt6vectorIPK18llama_chat_messageSaIS3_EERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
  %i.ctw = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %145, ptr noundef nonnull @.str.134)
  br i1 %i.ctw, label %bb.uo, label %bb.ur

bb.uo:                                            ; preds = %bb.un
  %i.ctx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cts, ptr noundef nonnull @.str.219, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2199 unwind label %bb.uq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2199: ; preds = %bb.uo
  %i.cty = getelementptr inbounds nuw i8, ptr %i.ctu, i64 8
  %i.ctz = load ptr, ptr %i.cty, align 8, !tbaa !64
  %i.cua = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.cts, ptr noundef %i.ctz)
          to label %.invoke3896 unwind label %bb.uq

bb.up:                                            ; preds = %bb.um
  %i.cub = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %146) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2204

bb.uq:                                            ; preds = %.invoke3896, %bb.ut, %bb.uo, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2208, %bb.us, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2199
  %i.cuc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cud = load ptr, ptr %145, align 8, !tbaa !21 ; 2 uses
  %i.cue = icmp eq ptr %i.cud, %i.ctt
  br i1 %i.cue, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2204, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2202

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2202: ; preds = %bb.uq
  %i.cuf = load i64, ptr %i.ctt, align 8, !tbaa !26
  %i.cug = add i64 %i.cuf, 1
  call void @_ZdlPvm(ptr noundef %i.cud, i64 noundef %i.cug) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2204

bb.ur:                                            ; preds = %bb.un
  %i.cuh = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %145, ptr noundef nonnull @.str.155)
  br i1 %i.cuh, label %bb.us, label %bb.ut

bb.us:                                            ; preds = %bb.ur
  %i.cui = getelementptr inbounds nuw i8, ptr %i.ctu, i64 8
  %i.cuj = load ptr, ptr %i.cui, align 8, !tbaa !64
  %i.cuk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.cts, ptr noundef %i.cuj)
          to label %.invoke3896 unwind label %bb.uq

bb.ut:                                            ; preds = %bb.ur
  %i.cul = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cts, ptr noundef nonnull @.str.219, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2208 unwind label %bb.uq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2208: ; preds = %bb.ut
  %i.cum = getelementptr inbounds nuw i8, ptr %i.ctu, i64 8
  %i.cun = load ptr, ptr %i.cum, align 8, !tbaa !64
  %i.cuo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.cts, ptr noundef %i.cun)
          to label %.invoke3896 unwind label %bb.uq

.invoke3896:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2199, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2208, %bb.us
  %i.cup = phi ptr [ %i.cuk, %bb.us ], [ %i.cuo, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2208 ], [ %i.cua, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2199 ]
  %i.cuq = phi ptr [ @.str.220, %bb.us ], [ @.str.116, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2208 ], [ @.str.117, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2199 ]
  %i.cur = phi i64 [ 7, %bb.us ], [ 11, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2208 ], [ 11, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2199 ]
  %i.cus = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cup, ptr noundef nonnull %i.cuq, i64 noundef %i.cur)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2201 unwind label %bb.uq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2201: ; preds = %.invoke3896
  %i.cut = load ptr, ptr %145, align 8, !tbaa !21 ; 2 uses
  %i.cuu = icmp eq ptr %i.cut, %i.ctt
  br i1 %i.cuu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2213, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2211

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2211: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2201
  %i.cuv = load i64, ptr %i.ctt, align 8, !tbaa !26
  %i.cuw = add i64 %i.cuv, 1
  call void @_ZdlPvm(ptr noundef %i.cut, i64 noundef %i.cuw) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2213

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2213: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2201, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2211
  call void @llvm.lifetime.end.p0(ptr nonnull %145) #23
  %i.cux = getelementptr inbounds nuw i8, ptr %.sroa.02443.03104, i64 8 ; 2 uses
  %.not2665 = icmp eq ptr %i.cux, %i.ctr
  br i1 %.not2665, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit963, label %bb.um

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2204: ; preds = %bb.uq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2202, %bb.up
  %.pn708 = phi { ptr, i32 } [ %i.cub, %bb.up ], [ %i.cuc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2202 ], [ %i.cuc, %bb.uq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %145) #23
  br label %.loopexit.split-lp

bb.uu:                                            ; preds = %bb.sk
  %i.cuy = load ptr, ptr %1, align 8, !tbaa !48   ; 2 uses
  %i.cuz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cva = load ptr, ptr %i.cuz, align 8, !tbaa !48 ; 2 uses
  %.not26643098 = icmp eq ptr %i.cuy, %i.cva
  br i1 %.not26643098, label %._crit_edge3102, label %.lr.ph3101

.lr.ph3101:                                       ; preds = %bb.uu
  %i.cvb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.cvc = getelementptr inbounds nuw i8, ptr %147, i64 8
  %i.cvd = getelementptr inbounds nuw i8, ptr %147, i64 16 ; 4 uses
  br label %bb.uv

._crit_edge3102:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2225, %bb.uu
  br i1 %3, label %bb.va, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit963

bb.uv:                                            ; preds = %.lr.ph3101, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2225
  %.sroa.02439.03099 = phi ptr [ %i.cuy, %.lr.ph3101 ], [ %i.cvw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2225 ] ; 2 uses
  %i.cve = load ptr, ptr %.sroa.02439.03099, align 8, !tbaa !50 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %147) #23
  %i.cvf = load ptr, ptr %i.cve, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %148) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %147, ptr noundef %i.cvf, ptr noundef nonnull align 1 dereferenceable(1) %148)
          to label %bb.uw unwind label %bb.uy

bb.uw:                                            ; preds = %bb.uv
  call void @llvm.lifetime.end.p0(ptr nonnull %148) #23
  %i.cvg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cvb, ptr noundef nonnull @.str.118, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2215 unwind label %bb.uz ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2215: ; preds = %bb.uw
  %i.cvh = load ptr, ptr %147, align 8, !tbaa !21
  %i.cvi = load i64, ptr %i.cvc, align 8, !tbaa !20
  %i.cvj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cvb, ptr noundef %i.cvh, i64 noundef %i.cvi)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2217 unwind label %bb.uz ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2217: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2215
  %i.cvk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cvj, ptr noundef nonnull @.str.221, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2219 unwind label %bb.uz ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2219: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2217
  %i.cvl = getelementptr inbounds nuw i8, ptr %i.cve, i64 8
  %i.cvm = load ptr, ptr %i.cvl, align 8, !tbaa !64
  %i.cvn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.cvj, ptr noundef %i.cvm)
          to label %bb.ux unwind label %bb.uz     ; 0 uses

bb.ux:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2219
  %i.cvo = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %147, ptr noundef nonnull @.str.155) ; 2 uses
  %i.cvp = select i1 %i.cvo, ptr @.str.222, ptr @.str.68
  %i.cvq = select i1 %i.cvo, i64 10, i64 7
  %i.cvr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cvb, ptr noundef nonnull %i.cvp, i64 noundef %i.cvq)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2222 unwind label %bb.uz ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2222: ; preds = %bb.ux
  %i.cvs = load ptr, ptr %147, align 8, !tbaa !21 ; 2 uses
  %i.cvt = icmp eq ptr %i.cvs, %i.cvd
  br i1 %i.cvt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2225, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2223

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2223: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2222
  %i.cvu = load i64, ptr %i.cvd, align 8, !tbaa !26
  %i.cvv = add i64 %i.cvu, 1
  call void @_ZdlPvm(ptr noundef %i.cvs, i64 noundef %i.cvv) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2225

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2225: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2222, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2223
  call void @llvm.lifetime.end.p0(ptr nonnull %147) #23
  %i.cvw = getelementptr inbounds nuw i8, ptr %.sroa.02439.03099, i64 8 ; 2 uses
  %.not2664 = icmp eq ptr %i.cvw, %i.cva
  br i1 %.not2664, label %._crit_edge3102, label %bb.uv

bb.uy:                                            ; preds = %bb.uv
  %i.cvx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %148) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2228

bb.uz:                                            ; preds = %bb.ux, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2217, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2215, %bb.uw, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2219
  %i.cvy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cvz = load ptr, ptr %147, align 8, !tbaa !21 ; 2 uses
  %i.cwa = icmp eq ptr %i.cvz, %i.cvd
  br i1 %i.cwa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2228, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2226

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2226: ; preds = %bb.uz
  %i.cwb = load i64, ptr %i.cvd, align 8, !tbaa !26
  %i.cwc = add i64 %i.cwb, 1
  call void @_ZdlPvm(ptr noundef %i.cvz, i64 noundef %i.cwc) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2228

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2228: ; preds = %bb.uz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2226, %bb.uy
  %.pn706 = phi { ptr, i32 } [ %i.cvx, %bb.uy ], [ %i.cvy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2226 ], [ %i.cvy, %bb.uz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %147) #23
  br label %.loopexit.split-lp

bb.va:                                            ; preds = %._crit_edge3102
  %i.cwd = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %.invoke3893

.peel.next3240:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2246.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2246
  %i.cwe = phi ptr [ %i.cxm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2246 ], [ %i.cmq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2246.peel ]
  %.05183096 = phi i64 [ %i.cxk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2246 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2246.peel ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %149) #23
  %i.cwf = getelementptr inbounds nuw [8 x i8], ptr %i.cwe, i64 %.05183096
  %i.cwg = load ptr, ptr %i.cwf, align 8, !tbaa !50
  %i.cwh = load ptr, ptr %i.cwg, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %150) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %149, ptr noundef %i.cwh, ptr noundef nonnull align 1 dereferenceable(1) %150)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2232 unwind label %.loopexit.split-lp3243.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp3243.loopexit.split-lp.loopexit.split-lp: ; preds = %.peel.next3240, %.lr.ph3097
  %lpad.loopexit.split-lp4037 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %150) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2235

.loopexit.split-lp3248.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.vd, %bb.vb, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2241, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2237, %.invoke3897, %.invoke3898, %bb.st, %bb.su, %bb.sw, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2241.peel, %bb.sx, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2237.peel
  %lpad.loopexit.split-lp4040 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cwi = load ptr, ptr %149, align 8, !tbaa !21 ; 2 uses
  %i.cwj = icmp eq ptr %i.cwi, %i.cli
  br i1 %i.cwj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2235, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2233

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2233: ; preds = %.loopexit.split-lp3248.loopexit.split-lp.loopexit.split-lp
  %i.cwk = load i64, ptr %i.cli, align 8, !tbaa !26
  %i.cwl = add i64 %i.cwk, 1
  call void @_ZdlPvm(ptr noundef %i.cwi, i64 noundef %i.cwl) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2235

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2232: ; preds = %.peel.next3240
  call void @llvm.lifetime.end.p0(ptr nonnull %150) #23
  %i.cwm = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %149, ptr noundef nonnull @.str.155)
  br i1 %i.cwm, label %bb.vb, label %bb.vc

bb.vb:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2232
  %i.cwn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %181, ptr noundef nonnull @.str.120, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2237 unwind label %.loopexit.split-lp3248.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2237: ; preds = %bb.vb
  %i.cwo = load ptr, ptr %1, align 8, !tbaa !67
  %i.cwp = getelementptr inbounds nuw [8 x i8], ptr %i.cwo, i64 %.05183096
  %i.cwq = load ptr, ptr %i.cwp, align 8, !tbaa !50
  %i.cwr = getelementptr inbounds nuw i8, ptr %i.cwq, i64 8
  %i.cws = load ptr, ptr %i.cwr, align 8, !tbaa !64
  %i.cwt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %181, ptr noundef %i.cws)
          to label %.invoke3897 unwind label %.loopexit.split-lp3248.loopexit.split-lp.loopexit.split-lp

.invoke3897:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2241, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2237
  %i.cwu = phi ptr [ %i.cwt, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2237 ], [ %i.cxf, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2241 ]
  %i.cwv = phi ptr [ @.str.224, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2237 ], [ @.str.120, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2241 ]
  %i.cww = phi i64 [ 34, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2237 ], [ 20, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2241 ]
  %i.cwx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cwu, ptr noundef nonnull %i.cwv, i64 noundef %i.cww)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2239 unwind label %.loopexit.split-lp3248.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.vc:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2232
  %i.cwy = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %149, ptr noundef nonnull @.str.136)
  br i1 %i.cwy, label %bb.vd, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2239

bb.vd:                                            ; preds = %bb.vc
  %i.cwz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %181, ptr noundef nonnull @.str.225, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2241 unwind label %.loopexit.split-lp3248.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2241: ; preds = %bb.vd
  %i.cxa = load ptr, ptr %1, align 8, !tbaa !67
  %i.cxb = getelementptr inbounds nuw [8 x i8], ptr %i.cxa, i64 %.05183096
  %i.cxc = load ptr, ptr %i.cxb, align 8, !tbaa !50
  %i.cxd = getelementptr inbounds nuw i8, ptr %i.cxc, i64 8
  %i.cxe = load ptr, ptr %i.cxd, align 8, !tbaa !64
  %i.cxf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %181, ptr noundef %i.cxe)
          to label %.invoke3897 unwind label %.loopexit.split-lp3248.loopexit.split-lp.loopexit.split-lp

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2239: ; preds = %.invoke3897, %bb.vc
  %i.cxg = load ptr, ptr %149, align 8, !tbaa !21 ; 2 uses
  %i.cxh = icmp eq ptr %i.cxg, %i.cli
  br i1 %i.cxh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2246, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2244

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2244: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2239
  %i.cxi = load i64, ptr %i.cli, align 8, !tbaa !26
  %i.cxj = add i64 %i.cxi, 1
  call void @_ZdlPvm(ptr noundef %i.cxg, i64 noundef %i.cxj) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2246

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2246: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2239, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2244
  call void @llvm.lifetime.end.p0(ptr nonnull %149) #23
  %i.cxk = add nuw i64 %.05183096, 1              ; 2 uses
  %i.cxl = load ptr, ptr %i.clf, align 8, !tbaa !66
  %i.cxm = load ptr, ptr %1, align 8, !tbaa !67   ; 2 uses
  %i.cxn = ptrtoint ptr %i.cxl to i64
  %i.cxo = ptrtoint ptr %i.cxm to i64
  %i.cxp = sub i64 %i.cxn, %i.cxo
  %i.cxq = ashr exact i64 %i.cxp, 3
  %i.cxr = icmp ult i64 %i.cxk, %i.cxq
  br i1 %i.cxr, label %.peel.next3240, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit963, !llvm.loop !39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2235: ; preds = %.loopexit.split-lp3248.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2233, %.loopexit.split-lp3243.loopexit.split-lp.loopexit.split-lp
  %.pn704 = phi { ptr, i32 } [ %lpad.loopexit.split-lp4037, %.loopexit.split-lp3243.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp4040, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2233 ], [ %lpad.loopexit.split-lp4040, %.loopexit.split-lp3248.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %149) #23
  br label %.loopexit.split-lp

bb.ve:                                            ; preds = %bb.sk
  %i.cxs = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.cxt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cxs, ptr noundef nonnull @.str.121, i64 noundef 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2248.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2248.preheader: ; preds = %bb.ve
  %i.cxu = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.cxv = load ptr, ptr %i.cxu, align 8, !tbaa !66
  %i.cxw = load ptr, ptr %1, align 8, !tbaa !67   ; 2 uses
  %.not3157 = icmp eq ptr %i.cxv, %i.cxw
  br i1 %.not3157, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit963, label %.lr.ph3095

.lr.ph3095:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2248.preheader
  %184 = getelementptr inbounds nuw i8, ptr %151, i64 16 ; 6 uses
  %i.cxx = getelementptr inbounds nuw i8, ptr %151, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %151) #23
  %i.cxy = load ptr, ptr %i.cxw, align 8, !tbaa !50
  %i.cxz = load ptr, ptr %i.cxy, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %152) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %151, ptr noundef %i.cxz, ptr noundef nonnull align 1 dereferenceable(1) %152)
          to label %bb.vf unwind label %.loopexit.split-lp3230.loopexit.split-lp.loopexit.split-lp

bb.vf:                                            ; preds = %.lr.ph3095
  call void @llvm.lifetime.end.p0(ptr nonnull %152) #23
  %i.cya = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %151, ptr noundef nonnull @.str.134)
  br i1 %i.cya, label %bb.vk, label %bb.vg

bb.vg:                                            ; preds = %bb.vf
  %i.cyb = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %151, ptr noundef nonnull @.str.136)
  br i1 %i.cyb, label %bb.vj, label %bb.vh

bb.vh:                                            ; preds = %bb.vg
  %i.cyc = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %151, ptr noundef nonnull @.str.155)
  br i1 %i.cyc, label %bb.vi, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2250.peel

bb.vi:                                            ; preds = %bb.vh
  %i.cyd = load ptr, ptr %1, align 8, !tbaa !67
  %i.cye = load ptr, ptr %i.cyd, align 8, !tbaa !50
  %i.cyf = getelementptr inbounds nuw i8, ptr %i.cye, i64 8
  %i.cyg = load ptr, ptr %i.cyf, align 8, !tbaa !64
  %i.cyh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.cxs, ptr noundef %i.cyg)
          to label %.invoke3900 unwind label %.loopexit.split-lp3235.loopexit.split-lp.loopexit.split-lp

.invoke3900:                                      ; preds = %bb.vk, %bb.vj, %bb.vi
  %i.cyi = phi ptr [ %i.cyq, %bb.vj ], [ %i.cyh, %bb.vi ], [ %i.cyv, %bb.vk ]
  %i.cyj = phi ptr [ @.str.225, %bb.vj ], [ @.str.120, %bb.vi ], [ @.str.122, %bb.vk ]
  %i.cyk = phi i64 [ 15, %bb.vj ], [ 20, %bb.vi ], [ 34, %bb.vk ]
  %i.cyl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cyi, ptr noundef nonnull %i.cyj, i64 noundef %i.cyk)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2250.peel unwind label %.loopexit.split-lp3235.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.vj:                                            ; preds = %bb.vg
  %i.cym = load ptr, ptr %1, align 8, !tbaa !67
  %i.cyn = load ptr, ptr %i.cym, align 8, !tbaa !50
  %i.cyo = getelementptr inbounds nuw i8, ptr %i.cyn, i64 8
  %i.cyp = load ptr, ptr %i.cyo, align 8, !tbaa !64
  %i.cyq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.cxs, ptr noundef %i.cyp)
          to label %.invoke3900 unwind label %.loopexit.split-lp3235.loopexit.split-lp.loopexit.split-lp

bb.vk:                                            ; preds = %bb.vf
  %i.cyr = load ptr, ptr %1, align 8, !tbaa !67
  %i.cys = load ptr, ptr %i.cyr, align 8, !tbaa !50
  %i.cyt = getelementptr inbounds nuw i8, ptr %i.cys, i64 8
  %i.cyu = load ptr, ptr %i.cyt, align 8, !tbaa !64
  %i.cyv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.cxs, ptr noundef %i.cyu)
          to label %.invoke3900 unwind label %.loopexit.split-lp3235.loopexit.split-lp.loopexit.split-lp

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2250.peel: ; preds = %.invoke3900, %bb.vh
  %i.cyw = load ptr, ptr %151, align 8, !tbaa !21 ; 2 uses
  %i.cyx = icmp eq ptr %i.cyw, %184
  br i1 %i.cyx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2259.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2258.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2258.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2250.peel
  %i.cyy = load i64, ptr %184, align 8, !tbaa !26
  %i.cyz = add i64 %i.cyy, 1
  call void @_ZdlPvm(ptr noundef %i.cyw, i64 noundef %i.cyz) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2260.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2259.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2250.peel
  %185 = load i64, ptr %i.cxx, align 8, !tbaa !20
  %186 = icmp ult i64 %185, 16
  call void @llvm.assume(i1 %186)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2260.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2260.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2259.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2258.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %151) #23
  %i.cza = load ptr, ptr %i.cxu, align 8, !tbaa !66
  %i.czb = load ptr, ptr %1, align 8, !tbaa !67   ; 2 uses
  %i.czc = ptrtoint ptr %i.cza to i64
  %i.czd = ptrtoint ptr %i.czb to i64
  %i.cze = sub i64 %i.czc, %i.czd
  %i.czf = icmp ugt i64 %i.cze, 8
  br i1 %i.czf, label %.peel.next3227, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit963

.peel.next3227:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2260.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2260
  %i.czg = phi ptr [ %i.dam, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2260 ], [ %i.czb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2260.peel ]
  %.05173094 = phi i64 [ %i.dak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2260 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2260.peel ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %151) #23
  %i.czh = getelementptr inbounds nuw [8 x i8], ptr %i.czg, i64 %.05173094
  %i.czi = load ptr, ptr %i.czh, align 8, !tbaa !50
  %i.czj = load ptr, ptr %i.czi, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %152) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %151, ptr noundef %i.czj, ptr noundef nonnull align 1 dereferenceable(1) %152)
          to label %bb.vl unwind label %.loopexit.split-lp3230.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp3230.loopexit.split-lp.loopexit.split-lp: ; preds = %.peel.next3227, %.lr.ph3095
  %lpad.loopexit.split-lp4044 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %152) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2253

.loopexit.split-lp3235.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.vo, %bb.vm, %.invoke3899, %.invoke3900, %bb.vi, %bb.vj, %bb.vk
  %lpad.loopexit.split-lp4047 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.czk = load ptr, ptr %151, align 8, !tbaa !21 ; 2 uses
  %i.czl = icmp eq ptr %i.czk, %184
  br i1 %i.czl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2253, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2251

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2251: ; preds = %.loopexit.split-lp3235.loopexit.split-lp.loopexit.split-lp
  %i.czm = load i64, ptr %184, align 8, !tbaa !26
  %i.czn = add i64 %i.czm, 1
  call void @_ZdlPvm(ptr noundef %i.czk, i64 noundef %i.czn) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2253

bb.vl:                                            ; preds = %.peel.next3227
  call void @llvm.lifetime.end.p0(ptr nonnull %152) #23
  %i.czo = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %151, ptr noundef nonnull @.str.136)
  br i1 %i.czo, label %bb.vm, label %bb.vn

bb.vm:                                            ; preds = %bb.vl
  %i.czp = load ptr, ptr %1, align 8, !tbaa !67
  %i.czq = getelementptr inbounds nuw [8 x i8], ptr %i.czp, i64 %.05173094
  %i.czr = load ptr, ptr %i.czq, align 8, !tbaa !50
  %i.czs = getelementptr inbounds nuw i8, ptr %i.czr, i64 8
  %i.czt = load ptr, ptr %i.czs, align 8, !tbaa !64
  %i.czu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.cxs, ptr noundef %i.czt)
          to label %.invoke3899 unwind label %.loopexit.split-lp3235.loopexit.split-lp.loopexit.split-lp

.invoke3899:                                      ; preds = %bb.vo, %bb.vm
  %i.czv = phi ptr [ %i.czu, %bb.vm ], [ %i.daf, %bb.vo ]
  %i.czw = phi ptr [ @.str.225, %bb.vm ], [ @.str.120, %bb.vo ]
  %i.czx = phi i64 [ 15, %bb.vm ], [ 20, %bb.vo ]
  %i.czy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.czv, ptr noundef nonnull %i.czw, i64 noundef %i.czx)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2250 unwind label %.loopexit.split-lp3235.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.vn:                                            ; preds = %bb.vl
  %i.czz = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %151, ptr noundef nonnull @.str.155)
  br i1 %i.czz, label %bb.vo, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2250

bb.vo:                                            ; preds = %bb.vn
  %i.daa = load ptr, ptr %1, align 8, !tbaa !67
  %i.dab = getelementptr inbounds nuw [8 x i8], ptr %i.daa, i64 %.05173094
  %i.dac = load ptr, ptr %i.dab, align 8, !tbaa !50
  %i.dad = getelementptr inbounds nuw i8, ptr %i.dac, i64 8
  %i.dae = load ptr, ptr %i.dad, align 8, !tbaa !64
  %i.daf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.cxs, ptr noundef %i.dae)
          to label %.invoke3899 unwind label %.loopexit.split-lp3235.loopexit.split-lp.loopexit.split-lp

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2250: ; preds = %.invoke3899, %bb.vn
  %i.dag = load ptr, ptr %151, align 8, !tbaa !21 ; 2 uses
  %i.dah = icmp eq ptr %i.dag, %184
  br i1 %i.dah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2260, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2258

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2258: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2250
  %i.dai = load i64, ptr %184, align 8, !tbaa !26
  %i.daj = add i64 %i.dai, 1
  call void @_ZdlPvm(ptr noundef %i.dag, i64 noundef %i.daj) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2260

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2260: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2250, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2258
  call void @llvm.lifetime.end.p0(ptr nonnull %151) #23
  %i.dak = add nuw i64 %.05173094, 1              ; 2 uses
  %i.dal = load ptr, ptr %i.cxu, align 8, !tbaa !66
  %i.dam = load ptr, ptr %1, align 8, !tbaa !67   ; 2 uses
  %i.dan = ptrtoint ptr %i.dal to i64
  %i.dao = ptrtoint ptr %i.dam to i64
  %i.dap = sub i64 %i.dan, %i.dao
  %i.daq = ashr exact i64 %i.dap, 3
  %i.dar = icmp ult i64 %i.dak, %i.daq
  br i1 %i.dar, label %.peel.next3227, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit963, !llvm.loop !40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2253: ; preds = %.loopexit.split-lp3235.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2251, %.loopexit.split-lp3230.loopexit.split-lp.loopexit.split-lp
  %.pn702 = phi { ptr, i32 } [ %lpad.loopexit.split-lp4044, %.loopexit.split-lp3230.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp4047, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2251 ], [ %lpad.loopexit.split-lp4047, %.loopexit.split-lp3235.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %151) #23
  br label %.loopexit.split-lp

bb.vp:                                            ; preds = %bb.sk
  %i.das = load ptr, ptr %1, align 8, !tbaa !48   ; 2 uses
  %i.dat = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dau = load ptr, ptr %i.dat, align 8, !tbaa !48 ; 2 uses
  %.not26633089 = icmp eq ptr %i.das, %i.dau
  br i1 %.not26633089, label %._crit_edge3093, label %.lr.ph3092

.lr.ph3092:                                       ; preds = %bb.vp
  %i.dav = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.daw = getelementptr inbounds nuw i8, ptr %153, i64 16 ; 4 uses
  br label %bb.vq

._crit_edge3093:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2276, %bb.vp
  br i1 %3, label %bb.vy, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit963

bb.vq:                                            ; preds = %.lr.ph3092, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2276
  %.sroa.02435.03090 = phi ptr [ %i.das, %.lr.ph3092 ], [ %i.dbu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2276 ] ; 2 uses
  %i.dax = load ptr, ptr %.sroa.02435.03090, align 8, !tbaa !50 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %153) #23
  %i.day = load ptr, ptr %i.dax, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %154) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %153, ptr noundef %i.day, ptr noundef nonnull align 1 dereferenceable(1) %154)
          to label %bb.vr unwind label %bb.vs

bb.vr:                                            ; preds = %bb.vq
  call void @llvm.lifetime.end.p0(ptr nonnull %154) #23
  %i.daz = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %153, ptr noundef nonnull @.str.134)
  br i1 %i.daz, label %.invoke3901, label %bb.vu

bb.vs:                                            ; preds = %bb.vq
  %i.dba = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %154) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2265

bb.vt:                                            ; preds = %.invoke3901, %bb.vx, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2262
  %i.dbb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dbc = load ptr, ptr %153, align 8, !tbaa !21 ; 2 uses
  %i.dbd = icmp eq ptr %i.dbc, %i.daw
  br i1 %i.dbd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2265, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2263

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2263: ; preds = %bb.vt
  %i.dbe = load i64, ptr %i.daw, align 8, !tbaa !26
  %i.dbf = add i64 %i.dbe, 1
  call void @_ZdlPvm(ptr noundef %i.dbc, i64 noundef %i.dbf) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2265

bb.vu:                                            ; preds = %bb.vr
  %i.dbg = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %153, ptr noundef nonnull @.str.136)
  br i1 %i.dbg, label %.invoke3901, label %bb.vv

bb.vv:                                            ; preds = %bb.vu
  %i.dbh = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %153, ptr noundef nonnull @.str.155)
  br i1 %i.dbh, label %.invoke3901, label %bb.vw

bb.vw:                                            ; preds = %bb.vv
  %i.dbi = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %153, ptr noundef nonnull @.str.185)
  br i1 %i.dbi, label %.invoke3901, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2262

.invoke3901:                                      ; preds = %bb.vr, %bb.vw, %bb.vv, %bb.vu
  %i.dbj = phi ptr [ @.str.123, %bb.vv ], [ @.str.227, %bb.vu ], [ @.str.228, %bb.vw ], [ @.str.226, %bb.vr ]
  %i.dbk = phi i64 [ 38, %bb.vv ], [ 28, %bb.vu ], [ 30, %bb.vw ], [ 32, %bb.vr ]
  %i.dbl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dav, ptr noundef nonnull %i.dbj, i64 noundef %i.dbk)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2262 unwind label %bb.vt ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2262: ; preds = %.invoke3901, %bb.vw
  %i.dbm = getelementptr inbounds nuw i8, ptr %i.dax, i64 8
  %i.dbn = load ptr, ptr %i.dbm, align 8, !tbaa !64
  %i.dbo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.dav, ptr noundef %i.dbn)
          to label %bb.vx unwind label %bb.vt

bb.vx:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2262
  %i.dbp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dbo, ptr noundef nonnull @.str.148, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2273 unwind label %bb.vt ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2273: ; preds = %bb.vx
  %i.dbq = load ptr, ptr %153, align 8, !tbaa !21 ; 2 uses
  %i.dbr = icmp eq ptr %i.dbq, %i.daw
  br i1 %i.dbr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2276, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2274

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2274: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2273
  %i.dbs = load i64, ptr %i.daw, align 8, !tbaa !26
  %i.dbt = add i64 %i.dbs, 1
  call void @_ZdlPvm(ptr noundef %i.dbq, i64 noundef %i.dbt) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2276

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2276: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2273, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2274
  call void @llvm.lifetime.end.p0(ptr nonnull %153) #23
  %i.dbu = getelementptr inbounds nuw i8, ptr %.sroa.02435.03090, i64 8 ; 2 uses
  %.not2663 = icmp eq ptr %i.dbu, %i.dau
  br i1 %.not2663, label %._crit_edge3093, label %bb.vq

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2265: ; preds = %bb.vt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2263, %bb.vs
  %.pn700 = phi { ptr, i32 } [ %i.dba, %bb.vs ], [ %i.dbb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2263 ], [ %i.dbb, %bb.vt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %153) #23
  br label %.loopexit.split-lp

bb.vy:                                            ; preds = %._crit_edge3093
  %i.dbv = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %.invoke3893

bb.vz:                                            ; preds = %bb.sk
  %i.dbw = load ptr, ptr %1, align 8, !tbaa !48   ; 2 uses
  %i.dbx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dby = load ptr, ptr %i.dbx, align 8, !tbaa !48 ; 2 uses
  %.not26623084 = icmp eq ptr %i.dbw, %i.dby
  br i1 %.not26623084, label %._crit_edge3088, label %.lr.ph3087

.lr.ph3087:                                       ; preds = %bb.vz
  %i.dbz = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dca = getelementptr inbounds nuw i8, ptr %155, i64 8
  %i.dcb = getelementptr inbounds nuw i8, ptr %158, i64 8
  %i.dcc = getelementptr inbounds nuw i8, ptr %157, i64 8
  %i.dcd = getelementptr inbounds nuw i8, ptr %157, i64 16 ; 4 uses
  %i.dce = getelementptr inbounds nuw i8, ptr %158, i64 16 ; 4 uses
  %i.dcf = getelementptr inbounds nuw i8, ptr %155, i64 16 ; 4 uses
  br label %bb.wa

._crit_edge3088:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2297, %bb.vz
  br i1 %3, label %bb.wl, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit963

bb.wa:                                            ; preds = %.lr.ph3087, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2297
  %.sroa.02431.03085 = phi ptr [ %i.dbw, %.lr.ph3087 ], [ %i.ddi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2297 ] ; 2 uses
  %i.dcg = load ptr, ptr %.sroa.02431.03085, align 8, !tbaa !50 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %155) #23
  %i.dch = load ptr, ptr %i.dcg, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %156) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %155, ptr noundef %i.dch, ptr noundef nonnull align 1 dereferenceable(1) %156)
          to label %bb.wb unwind label %bb.wg

bb.wb:                                            ; preds = %bb.wa
  call void @llvm.lifetime.end.p0(ptr nonnull %156) #23
  %i.dci = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dbz, ptr noundef nonnull @.str.124, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2280 unwind label %bb.wh ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2280: ; preds = %bb.wb
  %i.dcj = load ptr, ptr %155, align 8, !tbaa !21
  %i.dck = load i64, ptr %i.dca, align 8, !tbaa !20
  %i.dcl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dbz, ptr noundef %i.dcj, i64 noundef %i.dck)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2282 unwind label %bb.wh ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2282: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2280
  %i.dcm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dcl, ptr noundef nonnull @.str.129, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2284 unwind label %bb.wh ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2284: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2282
  call void @llvm.lifetime.start.p0(ptr nonnull %157) #23
  %i.dcn = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %155, ptr noundef nonnull @.str.155) ; 4 uses
  br i1 %i.dcn, label %bb.wc, label %bb.we

bb.wc:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2284
  call void @llvm.lifetime.start.p0(ptr nonnull %158) #23
  %i.dco = getelementptr inbounds nuw i8, ptr %i.dcg, i64 8
  %i.dcp = load ptr, ptr %i.dco, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %159) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %158, ptr noundef %i.dcp, ptr noundef nonnull align 1 dereferenceable(1) %159)
          to label %bb.wd unwind label %bb.wi

bb.wd:                                            ; preds = %bb.wc
  %.val900 = load ptr, ptr %158, align 8
  %.val901 = load i64, ptr %i.dcb, align 8, !tbaa !20
  invoke fastcc void @_ZL4trimRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %157, ptr %.val900, i64 %.val901)
          to label %bb.wf unwind label %.critedge893.thread

bb.we:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2284
  %i.dcq = getelementptr inbounds nuw i8, ptr %i.dcg, i64 8
  %i.dcr = load ptr, ptr %i.dcq, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %160) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %157, ptr noundef %i.dcr, ptr noundef nonnull align 1 dereferenceable(1) %160)
          to label %bb.wf unwind label %.split.thread

bb.wf:                                            ; preds = %bb.wd, %bb.we
  %i.dcs = load ptr, ptr %157, align 8, !tbaa !21
  %i.dct = load i64, ptr %i.dcc, align 8, !tbaa !20
  %i.dcu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dcl, ptr noundef %i.dcs, i64 noundef %i.dct)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2286 unwind label %bb.wj

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2286: ; preds = %bb.wf
end_hunk_2
begin_hunk_3_@_Z23llm_chat_apply_template17llm_chat_templateRKSt6vectorIPK18llama_chat_messageSaIS3_EERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a

bb.wx:                                            ; preds = %bb.wo
  %i.dfu = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %161, ptr noundef nonnull @.str.136)
  br i1 %i.dfu, label %bb.wy, label %bb.xe

bb.wy:                                            ; preds = %bb.wx
  %i.dfv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.def, ptr noundef nonnull @.str.159, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2328 unwind label %bb.wt ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2328: ; preds = %bb.wy
  call void @llvm.lifetime.start.p0(ptr nonnull %166) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %167) #23
  %i.dfw = getelementptr inbounds nuw i8, ptr %i.dep, i64 8
  %i.dfx = load ptr, ptr %i.dfw, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %168) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %167, ptr noundef %i.dfx, ptr noundef nonnull align 1 dereferenceable(1) %168)
          to label %bb.wz unwind label %bb.xb

bb.wz:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2328
  %.val = load ptr, ptr %167, align 8
  %.val897 = load i64, ptr %i.deg, align 8, !tbaa !20
  invoke fastcc void @_ZL4trimRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %166, ptr %.val, i64 %.val897)
          to label %bb.xa unwind label %bb.xc

bb.xa:                                            ; preds = %bb.wz
  %i.dfy = load ptr, ptr %166, align 8, !tbaa !21
  %i.dfz = load i64, ptr %i.deh, align 8, !tbaa !20
  %i.dga = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.def, ptr noundef %i.dfy, i64 noundef %i.dfz)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2330 unwind label %bb.xd

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2330: ; preds = %bb.xa
  %i.dgb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dga, ptr noundef nonnull @.str.231, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2332 unwind label %bb.xd ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2332: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2330
  %i.dgc = load ptr, ptr %166, align 8, !tbaa !21 ; 2 uses
  %i.dgd = icmp eq ptr %i.dgc, %i.dei
  br i1 %i.dgd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2335, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2333

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2333: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2332
  %i.dge = load i64, ptr %i.dei, align 8, !tbaa !26
  %i.dgf = add i64 %i.dge, 1
  call void @_ZdlPvm(ptr noundef %i.dgc, i64 noundef %i.dgf) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2335

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2335: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2332, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2333
  %i.dgg = load ptr, ptr %167, align 8, !tbaa !21 ; 2 uses
  %i.dgh = icmp eq ptr %i.dgg, %i.dej
  br i1 %i.dgh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2338, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2336

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2336: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2335
  %i.dgi = load i64, ptr %i.dej, align 8, !tbaa !26
  %i.dgj = add i64 %i.dgi, 1
  call void @_ZdlPvm(ptr noundef %i.dgg, i64 noundef %i.dgj) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2338

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2338: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2335, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2336
  call void @llvm.lifetime.end.p0(ptr nonnull %168) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %167) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %166) #23
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2348

bb.xb:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2328
  %i.dgk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2344

bb.xc:                                            ; preds = %bb.wz
  %i.dgl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2341

bb.xd:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2330, %bb.xa
  %i.dgm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dgn = load ptr, ptr %166, align 8, !tbaa !21 ; 2 uses
  %i.dgo = icmp eq ptr %i.dgn, %i.dei
  br i1 %i.dgo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2341, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2339

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2339: ; preds = %bb.xd
  %i.dgp = load i64, ptr %i.dei, align 8, !tbaa !26
  %i.dgq = add i64 %i.dgp, 1
  call void @_ZdlPvm(ptr noundef %i.dgn, i64 noundef %i.dgq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2341

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2341: ; preds = %bb.xd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2339, %bb.xc
  %.pn686 = phi { ptr, i32 } [ %i.dgl, %bb.xc ], [ %i.dgm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2339 ], [ %i.dgm, %bb.xd ] ; 2 uses
  %i.dgr = load ptr, ptr %167, align 8, !tbaa !21 ; 2 uses
  %i.dgs = icmp eq ptr %i.dgr, %i.dej
  br i1 %i.dgs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2344, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2342

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2342: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2341
  %i.dgt = load i64, ptr %i.dej, align 8, !tbaa !26
  %i.dgu = add i64 %i.dgt, 1
  call void @_ZdlPvm(ptr noundef %i.dgr, i64 noundef %i.dgu) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2344

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2344: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2341, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2342, %bb.xb
  %.pn686.pn = phi { ptr, i32 } [ %i.dgk, %bb.xb ], [ %.pn686, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2342 ], [ %.pn686, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2341 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %168) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %167) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %166) #23
  br label %bb.xh

bb.xe:                                            ; preds = %bb.wx
  %i.dgv = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %161, ptr noundef nonnull @.str.155)
  br i1 %i.dgv, label %bb.xf, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2348

bb.xf:                                            ; preds = %bb.xe
  %i.dgw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.def, ptr noundef nonnull @.str.181, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2346 unwind label %bb.wt ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2346: ; preds = %bb.xf
  %i.dgx = getelementptr inbounds nuw i8, ptr %i.dep, i64 8
  %i.dgy = load ptr, ptr %i.dgx, align 8, !tbaa !64
  %i.dgz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.def, ptr noundef %i.dgy)
          to label %bb.xg unwind label %bb.wt

bb.xg:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2346
  %i.dha = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dgz, ptr noundef nonnull @.str.231, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2348 unwind label %bb.wt ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2348: ; preds = %bb.xg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2338, %bb.xe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2320
  %i.dhb = load ptr, ptr %161, align 8, !tbaa !21 ; 2 uses
  %i.dhc = icmp eq ptr %i.dhb, %i.deo
  br i1 %i.dhc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2351, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2349

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2349: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2348
  %i.dhd = load i64, ptr %i.deo, align 8, !tbaa !26
  %i.dhe = add i64 %i.dhd, 1
  call void @_ZdlPvm(ptr noundef %i.dhb, i64 noundef %i.dhe) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2351

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2351: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2348, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2349
  call void @llvm.lifetime.end.p0(ptr nonnull %161) #23
  %i.dhf = getelementptr inbounds nuw i8, ptr %.sroa.02427.03080, i64 8 ; 2 uses
  %.not2661 = icmp eq ptr %i.dhf, %i.dee
  br i1 %.not2661, label %._crit_edge3083, label %bb.wn

bb.xh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2344, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2326, %bb.wt
  %.pn689.pn.pn = phi { ptr, i32 } [ %.pn689.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2326 ], [ %i.dfi, %bb.wt ], [ %.pn686.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2344 ] ; 2 uses
  %i.dhg = load ptr, ptr %161, align 8, !tbaa !21 ; 2 uses
  %i.dhh = icmp eq ptr %i.dhg, %i.deo
  br i1 %i.dhh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2354, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2352

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2352: ; preds = %bb.xh
  %i.dhi = load i64, ptr %i.deo, align 8, !tbaa !26
  %i.dhj = add i64 %i.dhi, 1
  call void @_ZdlPvm(ptr noundef %i.dhg, i64 noundef %i.dhj) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2354

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2354: ; preds = %bb.xh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2352, %bb.ws
  %.pn689.pn.pn.pn = phi { ptr, i32 } [ %i.dfh, %bb.ws ], [ %.pn689.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2352 ], [ %.pn689.pn.pn, %bb.xh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %161) #23
  br label %.loopexit.split-lp

bb.xi:                                            ; preds = %._crit_edge3083
  %i.dhk = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %.invoke3893

._crit_edge3078:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2397, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2397.peel, %.preheader2719
  br i1 %3, label %bb.xp, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit963

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2397.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2397
  %i.dhl = phi ptr [ %i.dir, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2397 ], [ %i.cla, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2397.peel ]
  %.03076 = phi i64 [ %i.dip, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2397 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2397.peel ] ; 2 uses
  %i.dhm = getelementptr inbounds nuw [8 x i8], ptr %i.dhl, i64 %.03076 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %169) #23
  %i.dhn = load ptr, ptr %i.dhm, align 8, !tbaa !50
  %i.dho = load ptr, ptr %i.dhn, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %170) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %169, ptr noundef %i.dho, ptr noundef nonnull align 1 dereferenceable(1) %170)
          to label %bb.xj unwind label %.loopexit.split-lp3212.loopexit.split-lp.loopexit.split-lp

bb.xj:                                            ; preds = %.peel.next
  call void @llvm.lifetime.end.p0(ptr nonnull %170) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %171) #23
  %i.dhp = load ptr, ptr %i.dhm, align 8, !tbaa !50
  %i.dhq = getelementptr inbounds nuw i8, ptr %i.dhp, i64 8
  %i.dhr = load ptr, ptr %i.dhq, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %172) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %171, ptr noundef %i.dhr, ptr noundef nonnull align 1 dereferenceable(1) %172)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2358 unwind label %.loopexit.split-lp3217.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp3212.loopexit.split-lp.loopexit.split-lp: ; preds = %.peel.next, %.lr.ph3077
  %lpad.loopexit.split-lp4055 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %170) #23
  br label %.loopexit.split-lp

.loopexit.split-lp3217.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.xj, %bb.sl
  %lpad.loopexit.split-lp4058 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %172) #23
  br label %bb.xo

.loopexit.split-lp3222.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2365.invoke, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2363.invoke, %.invoke3913.invoke, %.invoke3914.invoke, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2387.peel.invoke, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2389.peel.invoke, %bb.sn
  %lpad.loopexit.split-lp4061 = landingpad { ptr, i32 }
          cleanup
  %i.dhs = load ptr, ptr %171, align 8, !tbaa !21 ; 2 uses
  %i.dht = icmp eq ptr %i.dhs, %i.cjw
  br i1 %i.dht, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2361, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2359

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2359: ; preds = %.loopexit.split-lp3222.loopexit.split-lp.loopexit.split-lp
  %i.dhu = load i64, ptr %i.cjw, align 8, !tbaa !26
  %i.dhv = add i64 %i.dhu, 1
  call void @_ZdlPvm(ptr noundef %i.dhs, i64 noundef %i.dhv) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2361

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2361: ; preds = %.loopexit.split-lp3222.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2359
  call void @llvm.lifetime.end.p0(ptr nonnull %171) #23
  br label %bb.xo

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2358: ; preds = %bb.xj
  call void @llvm.lifetime.end.p0(ptr nonnull %172) #23
  %i.dhw = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %169, ptr noundef nonnull @.str.134)
  br i1 %i.dhw, label %.invoke3913.invoke, label %bb.xk

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2363.invoke: ; preds = %.invoke3913.invoke
  %i.dhx = load ptr, ptr %171, align 8, !tbaa !21
  %i.dhy = load i64, ptr %i.cjv, align 8, !tbaa !20
  %i.dhz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %176, ptr noundef %i.dhx, i64 noundef %i.dhy)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2365.invoke unwind label %.loopexit.split-lp3222.loopexit.split-lp.loopexit.split-lp

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2365.invoke: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2363.invoke
  %i.dia = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dhz, ptr noundef nonnull @.str.233, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2367 unwind label %.loopexit.split-lp3222.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.xk:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2358
  %i.dib = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %169, ptr noundef nonnull @.str.136)
  br i1 %i.dib, label %.invoke3913.invoke, label %bb.xl

.invoke3913.invoke:                               ; preds = %bb.xk, %bb.xl, %bb.xm, %bb.xn, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2358
  %i.dic = phi ptr [ @.str.232, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2358 ], [ @.str.236, %bb.xm ], [ @.str.234, %bb.xk ], [ @.str.235, %bb.xl ], [ @.str.238, %bb.xn ]
  %i.did = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %176, ptr noundef nonnull %i.dic, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2363.invoke unwind label %.loopexit.split-lp3222.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.xl:                                            ; preds = %bb.xk
  %i.die = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %169, ptr noundef nonnull @.str.155)
  br i1 %i.die, label %.invoke3913.invoke, label %bb.xm

bb.xm:                                            ; preds = %bb.xl
  %i.dif = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %169, ptr noundef nonnull @.str.185)
  br i1 %i.dif, label %.invoke3913.invoke, label %bb.xn

bb.xn:                                            ; preds = %bb.xm
  %i.dig = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %169, ptr noundef nonnull @.str.237)
  br i1 %i.dig, label %.invoke3913.invoke, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2367

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2367: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2365.invoke, %bb.xn
  %i.dih = load ptr, ptr %171, align 8, !tbaa !21 ; 2 uses
  %i.dii = icmp eq ptr %i.dih, %i.cjw
  br i1 %i.dii, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2394, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2392

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2392: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2367
  %i.dij = load i64, ptr %i.cjw, align 8, !tbaa !26
  %i.dik = add i64 %i.dij, 1
  call void @_ZdlPvm(ptr noundef %i.dih, i64 noundef %i.dik) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2394

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2394: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2367, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2392
  call void @llvm.lifetime.end.p0(ptr nonnull %171) #23
  %i.dil = load ptr, ptr %169, align 8, !tbaa !21 ; 2 uses
  %i.dim = icmp eq ptr %i.dil, %i.cjx
  br i1 %i.dim, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2397, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2395

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2395: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2394
  %i.din = load i64, ptr %i.cjx, align 8, !tbaa !26
  %i.dio = add i64 %i.din, 1
  call void @_ZdlPvm(ptr noundef %i.dil, i64 noundef %i.dio) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2397

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2397: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2394, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2395
  call void @llvm.lifetime.end.p0(ptr nonnull %169) #23
  %i.dip = add nuw i64 %.03076, 1                 ; 2 uses
  %i.diq = load ptr, ptr %i.cjs, align 8, !tbaa !66
  %i.dir = load ptr, ptr %1, align 8, !tbaa !67   ; 2 uses
  %i.dis = ptrtoint ptr %i.diq to i64
  %i.dit = ptrtoint ptr %i.dir to i64
  %i.diu = sub i64 %i.dis, %i.dit
  %i.div = ashr exact i64 %i.diu, 3
  %i.diw = icmp ult i64 %i.dip, %i.div
  br i1 %i.diw, label %.peel.next, label %._crit_edge3078, !llvm.loop !41

bb.xo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2361, %.loopexit.split-lp3217.loopexit.split-lp.loopexit.split-lp
  %.pn683 = phi { ptr, i32 } [ %lpad.loopexit.split-lp4061, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2361 ], [ %lpad.loopexit.split-lp4058, %.loopexit.split-lp3217.loopexit.split-lp.loopexit.split-lp ]
  %i.dix = load ptr, ptr %169, align 8, !tbaa !21 ; 2 uses
  %i.diy = icmp eq ptr %i.dix, %i.cjx
  br i1 %i.diy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2400, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2398

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2398: ; preds = %bb.xo
  %i.diz = load i64, ptr %i.cjx, align 8, !tbaa !26
  %i.dja = add i64 %i.diz, 1
  call void @_ZdlPvm(ptr noundef %i.dix, i64 noundef %i.dja) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2400

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2400: ; preds = %bb.xo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2398
  call void @llvm.lifetime.end.p0(ptr nonnull %169) #23
  br label %.loopexit.split-lp

bb.xp:                                            ; preds = %._crit_edge3078
  %i.djb = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %.invoke3893

bb.xq:                                            ; preds = %bb.sk
  %i.djc = load ptr, ptr %1, align 8, !tbaa !48   ; 2 uses
  %i.djd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dje = load ptr, ptr %i.djd, align 8, !tbaa !48 ; 2 uses
  %.not26603071 = icmp eq ptr %i.djc, %i.dje
  br i1 %.not26603071, label %._crit_edge3075, label %.lr.ph3074

.lr.ph3074:                                       ; preds = %bb.xq
  %i.djf = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.djg = getelementptr inbounds nuw i8, ptr %173, i64 8
  %i.djh = getelementptr inbounds nuw i8, ptr %173, i64 16 ; 4 uses
  br label %bb.xr

._crit_edge3075:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2413, %bb.xq
  br i1 %3, label %bb.xw, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit963

bb.xr:                                            ; preds = %.lr.ph3074, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2413
  %.sroa.02423.03072 = phi ptr [ %i.djc, %.lr.ph3074 ], [ %i.djx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2413 ] ; 2 uses
  %i.dji = load ptr, ptr %.sroa.02423.03072, align 8, !tbaa !50 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %173) #23
  %i.djj = load ptr, ptr %i.dji, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %174) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %173, ptr noundef %i.djj, ptr noundef nonnull align 1 dereferenceable(1) %174)
          to label %bb.xs unwind label %bb.xu

bb.xs:                                            ; preds = %bb.xr
  call void @llvm.lifetime.end.p0(ptr nonnull %174) #23
  %i.djk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.djf, ptr noundef nonnull @.str.127, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2404 unwind label %bb.xv ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2404: ; preds = %bb.xs
  %i.djl = load ptr, ptr %173, align 8, !tbaa !21
  %i.djm = load i64, ptr %i.djg, align 8, !tbaa !20
  %i.djn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.djf, ptr noundef %i.djl, i64 noundef %i.djm)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2406 unwind label %bb.xv ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2406: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2404
  %i.djo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.djn, ptr noundef nonnull @.str.128, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2408 unwind label %bb.xv ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2408: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2406
  %i.djp = getelementptr inbounds nuw i8, ptr %i.dji, i64 8
  %i.djq = load ptr, ptr %i.djp, align 8, !tbaa !64
  %i.djr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.djn, ptr noundef %i.djq)
          to label %bb.xt unwind label %bb.xv

bb.xt:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2408
  %i.djs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.djr, ptr noundef nonnull @.str.68, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2410 unwind label %bb.xv ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2410: ; preds = %bb.xt
  %i.djt = load ptr, ptr %173, align 8, !tbaa !21 ; 2 uses
  %i.dju = icmp eq ptr %i.djt, %i.djh
  br i1 %i.dju, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2413, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2411

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2411: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2410
  %i.djv = load i64, ptr %i.djh, align 8, !tbaa !26
  %i.djw = add i64 %i.djv, 1
  call void @_ZdlPvm(ptr noundef %i.djt, i64 noundef %i.djw) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2413

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2413: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2410, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2411
  call void @llvm.lifetime.end.p0(ptr nonnull %173) #23
  %i.djx = getelementptr inbounds nuw i8, ptr %.sroa.02423.03072, i64 8 ; 2 uses
  %.not2660 = icmp eq ptr %i.djx, %i.dje
  br i1 %.not2660, label %._crit_edge3075, label %bb.xr

bb.xu:                                            ; preds = %bb.xr
  %i.djy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %174) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2416

bb.xv:                                            ; preds = %bb.xt, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2406, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2404, %bb.xs, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2408
  %i.djz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dka = load ptr, ptr %173, align 8, !tbaa !21 ; 2 uses
  %i.dkb = icmp eq ptr %i.dka, %i.djh
  br i1 %i.dkb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2416, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2414

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2414: ; preds = %bb.xv
  %i.dkc = load i64, ptr %i.djh, align 8, !tbaa !26
  %i.dkd = add i64 %i.dkc, 1
  call void @_ZdlPvm(ptr noundef %i.dka, i64 noundef %i.dkd) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2416

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2416: ; preds = %bb.xv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2414, %bb.xu
  %.pn = phi { ptr, i32 } [ %i.djy, %bb.xu ], [ %i.djz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2414 ], [ %i.djz, %bb.xv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %173) #23
  br label %.loopexit.split-lp

bb.xw:                                            ; preds = %._crit_edge3075
  %i.dke = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %.invoke3893

.invoke3893:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2097, %._crit_edge3051, %._crit_edge3055, %._crit_edge3115, %bb.h, %bb.cl, %bb.cs, %bb.dd, %bb.dk, %bb.dt, %bb.gg, %bb.gx, %bb.hj, %bb.il, %bb.ix, %bb.jq, %bb.ks, %bb.ld, %bb.mi, %bb.nr, %bb.pa, %bb.qi, %bb.qq, %bb.qy, %bb.rm, %bb.rt, %bb.rz, %bb.ti, %bb.tu, %bb.uk, %bb.va, %bb.vy, %bb.wl, %bb.xi, %bb.xp, %bb.xw
  %i.dkf = phi ptr [ %i.dke, %bb.xw ], [ %i.djb, %bb.xp ], [ %i.dhk, %bb.xi ], [ %i.deb, %bb.wl ], [ %i.dbv, %bb.vy ], [ %i.cwd, %bb.va ], [ %i.cto, %bb.uk ], [ %i.av, %bb.h ], [ %i.cqx, %bb.tu ], [ %i.cov, %bb.ti ], [ %i.awq, %._crit_edge3051 ], [ %i.cid, %bb.rz ], [ %i.cgu, %bb.rt ], [ %i.cfr, %bb.rm ], [ %i.ccs, %bb.qy ], [ %i.cbk, %bb.qq ], [ %i.cac, %bb.qi ], [ %i.buf, %bb.pa ], [ %i.bos, %bb.nr ], [ %i.bjf, %bb.mi ], [ %i.beo, %bb.ld ], [ %i.bdd, %bb.ks ], [ %i.ayw, %bb.jq ], [ %i.avm, %._crit_edge3055 ], [ %i.cqy, %._crit_edge3115 ], [ %i.avl, %bb.ix ], [ %i.atj, %bb.il ], [ %i.apb, %bb.hj ], [ %i.amu, %bb.gx ], [ %i.ajg, %bb.gg ], [ %i.wd, %bb.dt ], [ %i.uj, %bb.dk ], [ %i.td, %bb.dd ], [ %i.rj, %bb.cs ], [ %i.qe, %bb.cl ], [ %i.cjq, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2097 ]
  %i.dkg = phi ptr [ @.str.239, %bb.xw ], [ @.str.235, %bb.xp ], [ @.str.182, %bb.xi ], [ @.str.230, %bb.wl ], [ @.str.123, %bb.vy ], [ @.str.223, %bb.va ], [ @.str.217, %bb.uk ], [ @.str.131, %bb.h ], [ @.str.212, %bb.tu ], [ @.str.107, %bb.ti ], [ @.str.147, %._crit_edge3051 ], [ @.str.205, %bb.rz ], [ @.str.202, %bb.rt ], [ @.str.200, %bb.rm ], [ @.str.195, %bb.qy ], [ @.str.195, %bb.qq ], [ @.str.195, %bb.qi ], [ @.str.147, %bb.pa ], [ @.str.96, %bb.nr ], [ @.str.96, %bb.mi ], [ @.str.92, %bb.ld ], [ @.str.182, %bb.ks ], [ @.str.67, %bb.jq ], [ @.str.67, %._crit_edge3055 ], [ @.str.182, %._crit_edge3115 ], [ @.str.174, %bb.ix ], [ @.str.171, %bb.il ], [ @.str.166, %bb.hj ], [ @.str.164, %bb.gx ], [ @.str.163, %bb.gg ], [ @.str.154, %bb.dt ], [ @.str.147, %bb.dk ], [ @.str.147, %bb.dd ], [ @.str.149, %bb.cs ], [ @.str.147, %bb.cl ], [ @.str.110, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2097 ]
  %i.dkh = phi i64 [ 18, %bb.xw ], [ 18, %bb.xp ], [ 10, %bb.xi ], [ 20, %bb.wl ], [ 38, %bb.vy ], [ 18, %bb.va ], [ 12, %bb.uk ], [ 22, %bb.h ], [ 41, %bb.tu ], [ 22, %bb.ti ], [ 14, %._crit_edge3051 ], [ 25, %bb.rz ], [ 35, %bb.rt ], [ 21, %bb.rm ], [ 41, %bb.qy ], [ 41, %bb.qq ], [ 41, %bb.qi ], [ 14, %bb.pa ], [ 13, %bb.nr ], [ 13, %bb.mi ], [ 17, %bb.ld ], [ 10, %bb.ks ], [ 13, %bb.jq ], [ 13, %._crit_edge3055 ], [ 10, %._crit_edge3115 ], [ 47, %bb.ix ], [ 40, %bb.il ], [ 14, %bb.hj ], [ 10, %bb.gx ], [ 23, %bb.gg ], [ 13, %bb.dt ], [ 14, %bb.dk ], [ 14, %bb.dd ], [ 31, %bb.cs ], [ 14, %bb.cl ], [ 7, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2097 ]
  %i.dki = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dkf, ptr noundef nonnull %i.dkg, i64 noundef %i.dkh)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit963 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit963: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1966, %bb.lg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1648, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2260, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2246, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2213, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1139, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1002, %.invoke3893, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2260.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2246.peel, %.preheader2725, %bb.le, %bb.jr, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2248.preheader, %.preheader, %bb.ul, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1084, %bb.j, %._crit_edge3124, %._crit_edge2992, %._crit_edge2976, %._crit_edge2966, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1325, %._crit_edge, %._crit_edge3070, %._crit_edge3060, %._crit_edge3051, %._crit_edge3033, %._crit_edge3024, %._crit_edge3014, %._crit_edge3007, %._crit_edge2997, %._crit_edge2989, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2097, %._crit_edge3129, %._crit_edge3120, %._crit_edge3111, %._crit_edge3102, %._crit_edge3088, %._crit_edge3078, %._crit_edge3075, %._crit_edge3083, %._crit_edge3093, %._crit_edge3115, %._crit_edge2984, %._crit_edge3002, %._crit_edge3019, %._crit_edge3038, %._crit_edge3047, %._crit_edge3055, %._crit_edge3065, %._crit_edge3134, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1331, %._crit_edge2961, %._crit_edge2971, %._crit_edge2981, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1019, %._crit_edge3153
  call void @llvm.lifetime.start.p0(ptr nonnull %175) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !69)
  call void @llvm.experimental.noalias.scope.decl(metadata !70)
  %i.dkj = getelementptr inbounds nuw i8, ptr %175, i64 16 ; 10 uses
  store ptr %i.dkj, ptr %175, align 8, !tbaa !24, !alias.scope !71
  %i.dkk = getelementptr inbounds nuw i8, ptr %175, i64 8 ; 6 uses
  store i64 0, ptr %i.dkk, align 8, !tbaa !20, !alias.scope !71
  store i8 0, ptr %i.dkj, align 8, !tbaa !26, !alias.scope !71
  %i.dkl = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.dkm = load ptr, ptr %i.dkl, align 8, !tbaa !73, !noalias !71 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.dkm, null
  %i.dkn = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.dko = load ptr, ptr %i.dkn, align 8, !noalias !71 ; 2 uses
  %i.dkp = icmp ugt ptr %i.dkm, %i.dko
  %.08.i.i.i = select i1 %i.dkp, ptr %i.dkm, ptr %i.dko ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.xz, label %bb.xx

bb.xx:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit963
  %i.dkq = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.dkr = load ptr, ptr %i.dkq, align 8, !tbaa !74, !noalias !71 ; 2 uses
  %i.dks = ptrtoint ptr %.08.i.i.i to i64
  %i.dkt = ptrtoint ptr %i.dkr to i64
  %i.dku = sub i64 %i.dks, %i.dkt
  %i.dkv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %175, i64 noundef 0, i64 noundef 0, ptr noundef %i.dkr, i64 noundef %i.dku)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.xy ; 0 uses

bb.xy:                                            ; preds = %bb.xz, %bb.xx
  %i.dkw = landingpad { ptr, i32 }
          cleanup
  %i.dkx = load ptr, ptr %175, align 8, !tbaa !21, !alias.scope !71 ; 2 uses
  %i.dky = icmp eq ptr %i.dkx, %i.dkj
  br i1 %i.dky, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.xy
  %i.dkz = load i64, ptr %i.dkj, align 8, !tbaa !26, !alias.scope !71
  %i.dla = add i64 %i.dkz, 1
  call void @_ZdlPvm(ptr noundef %i.dkx, i64 noundef %i.dla) #25
  br label %.body

bb.xz:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit963
  %i.dlb = getelementptr inbounds nuw i8, ptr %4, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %175, ptr noundef nonnull align 8 dereferenceable(32) %i.dlb)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.xy

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.xz, %bb.xx
  %i.dlc = load ptr, ptr %2, align 8, !tbaa !21   ; 6 uses
  %i.dld = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.dle = icmp eq ptr %i.dlc, %i.dld
  %i.dlf = load ptr, ptr %175, align 8, !tbaa !21 ; 5 uses
  %i.dlg = icmp eq ptr %i.dlf, %i.dkj             ; 2 uses
  br i1 %i.dle, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.dlg, label %bb.ya, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.dlg, label %bb.ya, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.ya:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.dlh = load i64, ptr %i.dkk, align 8, !tbaa !20 ; 3 uses
  %i.dli = icmp ult i64 %i.dlh, 16
  call void @llvm.assume(i1 %i.dli)
  switch i64 %i.dlh, label %bb.yc [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.yb
  ]

bb.yb:                                            ; preds = %bb.ya
  %i.dlj = load i8, ptr %i.dlf, align 1, !tbaa !26
  store i8 %i.dlj, ptr %i.dlc, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.yc:                                            ; preds = %bb.ya
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dlc, ptr align 1 %i.dlf, i64 %i.dlh, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.yc, %bb.yb, %bb.ya
  %i.dlk = load i64, ptr %i.dkk, align 8, !tbaa !20 ; 2 uses
  %i.dll = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.dlk, ptr %i.dll, align 8, !tbaa !20
  %i.dlm = load ptr, ptr %2, align 8, !tbaa !21
  %i.dln = getelementptr inbounds nuw i8, ptr %i.dlm, i64 %i.dlk
  store i8 0, ptr %i.dln, align 1, !tbaa !26
end_hunk_3

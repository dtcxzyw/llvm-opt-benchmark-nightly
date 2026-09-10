Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/dense_set?download=true
inline.NumInlined: 8227
inline.NumDeleted: 2159
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN29DenseSet_Functionalities_Test8TestBodyEv:bb.a
  %8 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %9 = alloca %"class.testing::Message", align 8  ; 7 uses
  %10 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %13 = alloca %"class.testing::Message", align 8 ; 7 uses
  %14 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %15 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %16 = alloca %"class.testing::Message", align 8 ; 7 uses
  %17 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %18 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.c = alloca float, align 4                    ; 5 uses
  %i.d = alloca float, align 4                    ; 5 uses
  %19 = alloca %"class.testing::Message", align 8 ; 7 uses
  %20 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %21 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %22 = alloca %"class.testing::Message", align 8 ; 7 uses
  %23 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %24 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.e = alloca float, align 4                    ; 5 uses
  %i.f = alloca float, align 4                    ; 5 uses
  %25 = alloca %"class.testing::Message", align 8 ; 7 uses
  %26 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %27 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %28 = alloca %"class.entt::internal::dense_set_iterator", align 8 ; 5 uses
  %29 = alloca %"class.entt::internal::dense_set_iterator", align 8 ; 5 uses
  %30 = alloca %"class.testing::Message", align 8 ; 7 uses
  %31 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %32 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %33 = alloca %"class.entt::internal::dense_set_iterator.25", align 8 ; 5 uses
  %34 = alloca %"class.entt::internal::dense_set_iterator.25", align 8 ; 5 uses
  %35 = alloca %"class.testing::Message", align 8 ; 7 uses
  %36 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %37 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %38 = alloca %"class.entt::internal::dense_set_iterator.25", align 8 ; 5 uses
  %39 = alloca %"class.entt::internal::dense_set_iterator.25", align 8 ; 5 uses
  %40 = alloca %"class.testing::Message", align 8 ; 7 uses
  %41 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %42 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %43 = alloca %"class.testing::Message", align 8 ; 7 uses
  %44 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %45 = alloca %"class.testing::AssertionResult", align 8 ; 11 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %46 = alloca %"class.testing::Message", align 8 ; 7 uses
  %47 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %48 = alloca %"class.testing::AssertionResult", align 8 ; 11 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca i32, align 4                      ; 7 uses
  %49 = alloca %"class.testing::Message", align 8 ; 7 uses
  %50 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %51 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  %52 = alloca %"class.testing::Message", align 8 ; 7 uses
  %53 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %54 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.m = alloca i64, align 8                      ; 5 uses
  %i.n = alloca i32, align 4                      ; 5 uses
  %55 = alloca %"class.testing::Message", align 8 ; 7 uses
  %56 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %57 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.o = alloca i64, align 8                      ; 5 uses
  %i.p = alloca i32, align 4                      ; 5 uses
  %58 = alloca %"class.testing::Message", align 8 ; 7 uses
  %59 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %60 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.q = alloca i64, align 8                      ; 5 uses
  %i.r = alloca i32, align 4                      ; 5 uses
  %61 = alloca %"class.testing::Message", align 8 ; 7 uses
  %62 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %63 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %64 = alloca %"class.entt::internal::dense_set_local_iterator", align 8 ; 6 uses
  %65 = alloca %"class.entt::internal::dense_set_local_iterator", align 8 ; 6 uses
  %66 = alloca %"class.testing::Message", align 8 ; 7 uses
  %67 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %68 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %69 = alloca %"class.entt::internal::dense_set_local_iterator.26", align 8 ; 6 uses
  %70 = alloca %"class.entt::internal::dense_set_local_iterator.26", align 8 ; 6 uses
  %71 = alloca %"class.testing::Message", align 8 ; 7 uses
  %72 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %73 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %74 = alloca %"class.entt::internal::dense_set_local_iterator.26", align 8 ; 6 uses
  %75 = alloca %"class.entt::internal::dense_set_local_iterator.26", align 8 ; 6 uses
  %76 = alloca %"class.testing::Message", align 8 ; 7 uses
  %77 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %78 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %79 = alloca %"class.testing::Message", align 8 ; 7 uses
  %80 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %81 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %82 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %83 = alloca %"class.testing::Message", align 8 ; 7 uses
  %84 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %85 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %86 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %87 = alloca %"class.entt::internal::dense_set_iterator", align 8 ; 5 uses
  %88 = alloca %"class.entt::internal::dense_set_iterator", align 8 ; 5 uses
  %89 = alloca %"class.testing::Message", align 8 ; 7 uses
  %90 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %91 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %92 = alloca %"class.entt::internal::dense_set_iterator", align 8 ; 5 uses
  %93 = alloca %"class.entt::internal::dense_set_iterator", align 8 ; 5 uses
  %94 = alloca %"class.testing::Message", align 8 ; 7 uses
  %95 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %96 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %97 = alloca %"class.entt::internal::dense_set_iterator.25", align 8 ; 5 uses
  %98 = alloca %"class.entt::internal::dense_set_iterator.25", align 8 ; 5 uses
  %99 = alloca %"class.testing::Message", align 8 ; 7 uses
  %100 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %101 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %102 = alloca %"class.entt::internal::dense_set_iterator.25", align 8 ; 5 uses
  %103 = alloca %"class.entt::internal::dense_set_iterator.25", align 8 ; 5 uses
  %104 = alloca %"class.testing::Message", align 8 ; 7 uses
  %105 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %106 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.s = alloca i32, align 4                      ; 5 uses
  %i.t = alloca i32, align 4                      ; 5 uses
  %107 = alloca %"class.testing::Message", align 8 ; 7 uses
  %108 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %109 = alloca %"class.testing::AssertionResult", align 8 ; 5 uses
  %i.u = alloca i32, align 4                      ; 5 uses
  %110 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.v = alloca i64, align 8                      ; 5 uses
  %i.w = alloca i32, align 4                      ; 5 uses
  %111 = alloca %"class.testing::Message", align 8 ; 7 uses
  %112 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %113 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.x = alloca i64, align 8                      ; 5 uses
  %i.y = alloca i32, align 4                      ; 5 uses
  %114 = alloca %"class.testing::Message", align 8 ; 7 uses
  %115 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %116 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.z = alloca i64, align 8                      ; 5 uses
  %i.aa = alloca i32, align 4                     ; 5 uses
  %117 = alloca %"class.testing::Message", align 8 ; 7 uses
  %118 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %119 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.ab = alloca i64, align 8                     ; 5 uses
  %i.ac = alloca i32, align 4                     ; 5 uses
  %120 = alloca %"class.testing::Message", align 8 ; 7 uses
  %121 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %122 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %123 = alloca %"class.testing::Message", align 8 ; 7 uses
  %124 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %125 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %126 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.ad = alloca i64, align 8                     ; 5 uses
  %i.ae = alloca i32, align 4                     ; 5 uses
  %127 = alloca %"class.testing::Message", align 8 ; 7 uses
  %128 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %129 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %130 = alloca %"class.entt::internal::dense_set_iterator", align 8 ; 5 uses
  %131 = alloca %"class.entt::internal::dense_set_iterator", align 8 ; 5 uses
  %132 = alloca %"class.testing::Message", align 8 ; 7 uses
  %133 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %134 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %135 = alloca %"class.entt::internal::dense_set_iterator.25", align 8 ; 5 uses
  %136 = alloca %"class.entt::internal::dense_set_iterator.25", align 8 ; 5 uses
  %137 = alloca %"class.testing::Message", align 8 ; 7 uses
  %138 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %139 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %140 = alloca %"class.entt::internal::dense_set_iterator.25", align 8 ; 5 uses
  %141 = alloca %"class.entt::internal::dense_set_iterator.25", align 8 ; 5 uses
  %142 = alloca %"class.testing::Message", align 8 ; 7 uses
  %143 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %144 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %145 = alloca %"class.testing::Message", align 8 ; 7 uses
  %146 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %147 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %148 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.af = alloca i64, align 8                     ; 5 uses
  %i.ag = alloca i32, align 4                     ; 5 uses
  %149 = alloca %"class.testing::Message", align 8 ; 7 uses
  %150 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %151 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %152 = alloca %"class.testing::Message", align 8 ; 7 uses
  %153 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %154 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %155 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.ah = alloca i64, align 8                     ; 5 uses
  %i.ai = alloca i32, align 4                     ; 5 uses
  %156 = alloca %"class.testing::Message", align 8 ; 7 uses
  %157 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %158 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %159 = alloca %"class.entt::internal::dense_set_iterator", align 8 ; 5 uses
  %160 = alloca %"class.entt::internal::dense_set_iterator", align 8 ; 5 uses
  %161 = alloca %"class.testing::Message", align 8 ; 7 uses
  %162 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %163 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %164 = alloca %"class.entt::internal::dense_set_iterator.25", align 8 ; 5 uses
  %165 = alloca %"class.entt::internal::dense_set_iterator.25", align 8 ; 5 uses
  %166 = alloca %"class.testing::Message", align 8 ; 7 uses
  %167 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %168 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %169 = alloca %"class.entt::internal::dense_set_iterator.25", align 8 ; 5 uses
  %170 = alloca %"class.entt::internal::dense_set_iterator.25", align 8 ; 5 uses
  %171 = alloca %"class.testing::Message", align 8 ; 7 uses
  %172 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %173 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %174 = alloca %"class.testing::Message", align 8 ; 7 uses
  %175 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %176 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %2, i8 0, i64 48, i1 false)
  store float 8.750000e-01, ptr %i.aj, align 8, !tbaa !74
  invoke void @_ZN4entt9dense_setIiSt8identityN4test20transparent_equal_toESaIiEE6rehashEm(ptr noundef nonnull align 8 dereferenceable(52) %2, i64 noundef 8)
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !75 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4entt8internal23compressed_pair_elementISt6vectorISt4pairImiESaIS4_EELm0EED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !76
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = sub i64 %i.ap, %i.aq
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.ar) #27
  br label %_ZN4entt8internal23compressed_pair_elementISt6vectorISt4pairImiESaIS4_EELm0EED2Ev.exit.i.i

_ZN4entt8internal23compressed_pair_elementISt6vectorISt4pairImiESaIS4_EELm0EED2Ev.exit.i.i: ; preds = %bb.c, %bb.b
  %i.as = load ptr, ptr %2, align 8, !tbaa !77    ; 3 uses
  %.not.i.i.i.i7.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i7.i.i, label %common.resume, label %bb.d

bb.d:                                             ; preds = %_ZN4entt8internal23compressed_pair_elementISt6vectorISt4pairImiESaIS4_EELm0EED2Ev.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !78
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = sub i64 %i.av, %i.aw
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.ax) #27
  br label %common.resume

common.resume:                                    ; preds = %_ZN4entt8internal23compressed_pair_elementISt6vectorISt4pairImiESaIS4_EELm0EED2Ev.exit.i.i, %bb.d, %bb.xx
  %common.resume.op = phi { ptr, i32 } [ %.pn518.pn.pn.pn.pn, %bb.xx ], [ %i.ak, %bb.d ], [ %i.ak, %_ZN4entt8internal23compressed_pair_elementISt6vectorISt4pairImiESaIS4_EELm0EED2Ev.exit.i.i ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i8 0, i64 16, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.az, ptr %3, align 8, !tbaa !81
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.ba, align 8, !tbaa !83
  %i.bb = invoke noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
          to label %bb.af unwind label %bb.g      ; 0 uses

bb.f:                                             ; preds = %bb.p
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.g:                                             ; preds = %bb.e
  %i.bd = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  %i.bf = extractvalue { ptr, i32 } %i.bd, 1
  %i.bg = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #26
  %i.bh = icmp eq i32 %i.bf, %i.bg
  %i.bi = call ptr @__cxa_begin_catch(ptr %i.be) #26 ; 3 uses
  br i1 %i.bh, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.bj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.4)
          to label %bb.i unwind label %bb.r       ; 0 uses

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !46
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -8
  %i.bm = load ptr, ptr %i.bl, align 8
  invoke void @_ZN7testing8internal11GetTypeNameB5cxx11ERKSt9type_info(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %i.bm)
          to label %bb.j unwind label %bb.s

bb.j:                                             ; preds = %bb.i
  %i.bn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.k unwind label %bb.t       ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.bo = load ptr, ptr %4, align 8, !tbaa !84    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !85
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.bt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.5)
          to label %bb.l unwind label %bb.r       ; 0 uses

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bu = load ptr, ptr %i.bi, align 8, !tbaa !46
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = call noundef ptr %i.bw(ptr noundef nonnull align 8 dereferenceable(8) %i.bi) #26
  %i.by = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.bx)
          to label %bb.m unwind label %bb.r       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.bz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.6)
          to label %bb.n unwind label %bb.r       ; 0 uses

bb.n:                                             ; preds = %bb.m
  invoke void @__cxa_end_catch()
          to label %bb.w unwind label %bb.u

bb.o:                                             ; preds = %bb.g
  %i.ca = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.3)
          to label %bb.p unwind label %bb.q       ; 0 uses

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_end_catch()
          to label %bb.w unwind label %bb.f

bb.q:                                             ; preds = %bb.o
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ag unwind label %bb.xy

bb.r:                                             ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.h
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.s:                                             ; preds = %bb.i
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit614

bb.t:                                             ; preds = %bb.j
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cf = load ptr, ptr %4, align 8, !tbaa !84    ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit614, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i612

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i612: ; preds = %bb.t
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !85
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit614

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit614: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i612, %bb.s
  %.pn = phi { ptr, i32 } [ %i.cd, %bb.s ], [ %i.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i612 ], [ %i.ce, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.v

bb.u:                                             ; preds = %bb.n
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit614, %bb.r
  %.pn312 = phi { ptr, i32 } [ %i.cc, %bb.r ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit614 ]
  invoke void @__cxa_end_catch()
          to label %bb.ag unwind label %bb.xy

bb.w:                                             ; preds = %bb.n, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.x unwind label %bb.aa

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.cl = load ptr, ptr %3, align 8, !tbaa !84, !noalias !294
  %i.cm = load i64, ptr %i.ba, align 8, !tbaa !83, !noalias !294
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26, !noalias !294
  invoke void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull @.str.7, i64 noundef 98, ptr noundef %i.cl, i64 noundef %i.cm, ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %bb.y unwind label %bb.ab

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26, !noalias !294
  %i.cn = load ptr, ptr %7, align 8, !tbaa !84
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 24, ptr noundef %i.cn)
          to label %bb.z unwind label %bb.ac

bb.z:                                             ; preds = %bb.y
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.critedge unwind label %bb.ad

.critedge:                                        ; preds = %bb.z
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #26
end_hunk_0
begin_hunk_1_@_ZN29DenseSet_Functionalities_Test8TestBodyEv:bb.a
  invoke void @_ZN7testing8internal8EqHelper7CompareIN4entt8internal18dense_set_iteratorIPKSt4pairImiEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %168, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, ptr noundef nonnull align 8 dereferenceable(8) %169, ptr noundef nonnull align 8 dereferenceable(8) %170)
          to label %bb.ws unwind label %bb.wu

bb.ws:                                            ; preds = %bb.wr
  call void @llvm.lifetime.end.p0(ptr nonnull %170) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %169) #26
  %i.baf = load i8, ptr %168, align 8, !tbaa !98, !range !101, !noundef !105
  %i.bag = trunc nuw i8 %i.baf to i1
  br i1 %i.bag, label %bb.xe, label %bb.wv

bb.wt:                                            ; preds = %_ZN7testing7MessageD2Ev.exit1168, %bb.wh
  %.pn510.pn.pn = phi { ptr, i32 } [ %.pn510.pn, %_ZN7testing7MessageD2Ev.exit1168 ], [ %i.azj, %bb.wh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %163) #26
  br label %bb.xx

bb.wu:                                            ; preds = %bb.wr
  %i.bah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %170) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %169) #26
  br label %bb.xj

bb.wv:                                            ; preds = %bb.ws
  call void @llvm.lifetime.start.p0(ptr nonnull %171) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %171)
          to label %bb.ww unwind label %bb.xa

bb.ww:                                            ; preds = %bb.wv
  call void @llvm.lifetime.start.p0(ptr nonnull %172) #26
  %i.bai = getelementptr inbounds nuw i8, ptr %168, i64 8
  %i.baj = load ptr, ptr %i.bai, align 8, !tbaa !100 ; 2 uses
  %.not.i.i.i1169 = icmp eq ptr %i.baj, null
  br i1 %.not.i.i.i1169, label %_ZNK7testing15AssertionResult15failure_messageEv.exit1170, label %bb.wx

bb.wx:                                            ; preds = %bb.ww
  %i.bak = load ptr, ptr %i.baj, align 8, !tbaa !84
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit1170

_ZNK7testing15AssertionResult15failure_messageEv.exit1170: ; preds = %bb.wx, %bb.ww
  %i.bal = phi ptr [ %i.bak, %bb.wx ], [ @.str.319, %bb.ww ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %172, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 88, ptr noundef %i.bal)
          to label %bb.wy unwind label %bb.xb

bb.wy:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1170
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %172, ptr noundef nonnull align 8 dereferenceable(8) %171)
          to label %bb.wz unwind label %bb.xc

bb.wz:                                            ; preds = %bb.wy
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %172) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %172) #26
  %i.bam = load ptr, ptr %171, align 8, !tbaa !87 ; 3 uses
  %.not.i.i1171 = icmp eq ptr %i.bam, null
  br i1 %.not.i.i1171, label %_ZN7testing7MessageD2Ev.exit1173, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1172

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1172: ; preds = %bb.wz
  %i.ban = load ptr, ptr %i.bam, align 8, !tbaa !46
  %i.bao = getelementptr inbounds nuw i8, ptr %i.ban, i64 8
  %i.bap = load ptr, ptr %i.bao, align 8
  call void %i.bap(ptr noundef nonnull align 8 dereferenceable(128) %i.bam) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1173

_ZN7testing7MessageD2Ev.exit1173:                 ; preds = %bb.wz, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1172
  call void @llvm.lifetime.end.p0(ptr nonnull %171) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %168) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %168) #26
  br label %bb.xu

bb.xa:                                            ; preds = %bb.wv
  %i.baq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1176

bb.xb:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1170
  %i.bar = landingpad { ptr, i32 }
          cleanup
  br label %bb.xd

bb.xc:                                            ; preds = %bb.wy
  %i.bas = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %172) #26
  br label %bb.xd

bb.xd:                                            ; preds = %bb.xc, %bb.xb
  %.pn514 = phi { ptr, i32 } [ %i.bas, %bb.xc ], [ %i.bar, %bb.xb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %172) #26
  %i.bat = load ptr, ptr %171, align 8, !tbaa !87 ; 3 uses
  %.not.i.i1174 = icmp eq ptr %i.bat, null
  br i1 %.not.i.i1174, label %_ZN7testing7MessageD2Ev.exit1176, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1175

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1175: ; preds = %bb.xd
  %i.bau = load ptr, ptr %i.bat, align 8, !tbaa !46
  %i.bav = getelementptr inbounds nuw i8, ptr %i.bau, i64 8
  %i.baw = load ptr, ptr %i.bav, align 8
  call void %i.baw(ptr noundef nonnull align 8 dereferenceable(128) %i.bat) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1176

_ZN7testing7MessageD2Ev.exit1176:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1175, %bb.xd, %bb.xa
  %.pn514.pn = phi { ptr, i32 } [ %i.baq, %bb.xa ], [ %.pn514, %bb.xd ], [ %.pn514, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1175 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %171) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %168) #26
  br label %bb.xj

bb.xe:                                            ; preds = %bb.ws
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %168) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %168) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %173) #26
  %i.bax = load ptr, ptr %2, align 8, !tbaa !77
  %i.bay = load ptr, ptr %i.ds, align 8           ; 3 uses
  br label %bb.xf

bb.xf:                                            ; preds = %bb.xg, %bb.xe
  %.07.in.i.i.i1177 = phi ptr [ %i.bax, %bb.xe ], [ %i.baz, %bb.xg ]
  %.07.i.i.i1178 = load i64, ptr %.07.in.i.i.i1177, align 8, !tbaa !106 ; 2 uses
  %.not.i.i.i1179 = icmp eq i64 %.07.i.i.i1178, -1
  br i1 %.not.i.i.i1179, label %bb.xh, label %bb.xg

bb.xg:                                            ; preds = %bb.xf
  %i.baz = getelementptr inbounds nuw [16 x i8], ptr %i.bay, i64 %.07.i.i.i1178 ; 3 uses
  %i.bba = getelementptr inbounds nuw i8, ptr %i.baz, i64 8
  %i.bbb = load i32, ptr %i.bba, align 4, !tbaa !107
  %i.bbc = icmp eq i32 %i.bbb, 0
  br i1 %i.bbc, label %_ZNK4entt9dense_setIiSt8identityN4test20transparent_equal_toESaIiEE4findERKi.exit.loopexit.i1180, label %bb.xf, !llvm.loop !1

bb.xh:                                            ; preds = %bb.xf
  %i.bbd = load ptr, ptr %i.du, align 8, !tbaa !102 ; 2 uses
  %i.bbe = ptrtoint ptr %i.bbd to i64
  %i.bbf = ptrtoint ptr %i.bay to i64
  %i.bbg = sub i64 %i.bbe, %i.bbf
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.bay, i64 %i.bbg
  br label %bb.xi

_ZNK4entt9dense_setIiSt8identityN4test20transparent_equal_toESaIiEE4findERKi.exit.loopexit.i1180: ; preds = %bb.xg
  %.pre.i1182 = load ptr, ptr %i.du, align 8, !tbaa !102
  br label %bb.xi

bb.xi:                                            ; preds = %_ZNK4entt9dense_setIiSt8identityN4test20transparent_equal_toESaIiEE4findERKi.exit.loopexit.i1180, %bb.xh
  %i.bbi = phi ptr [ %i.bbd, %bb.xh ], [ %.pre.i1182, %_ZNK4entt9dense_setIiSt8identityN4test20transparent_equal_toESaIiEE4findERKi.exit.loopexit.i1180 ]
  %.sroa.0.1.i.i.i1183 = phi ptr [ %i.bbh, %bb.xh ], [ %i.baz, %_ZNK4entt9dense_setIiSt8identityN4test20transparent_equal_toESaIiEE4findERKi.exit.loopexit.i1180 ]
  %.not1230 = icmp eq ptr %.sroa.0.1.i.i.i1183, %i.bbi ; 2 uses
  %i.bbj = zext i1 %.not1230 to i8
  store i8 %i.bbj, ptr %173, align 8, !tbaa !98
  %i.bbk = getelementptr inbounds nuw i8, ptr %173, i64 8
  store ptr null, ptr %i.bbk, align 8, !tbaa !99
  br i1 %.not1230, label %.critedge611, label %bb.xk

bb.xj:                                            ; preds = %_ZN7testing7MessageD2Ev.exit1176, %bb.wu
  %.pn514.pn.pn = phi { ptr, i32 } [ %.pn514.pn, %_ZN7testing7MessageD2Ev.exit1176 ], [ %i.bah, %bb.wu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %168) #26
  br label %bb.xx

bb.xk:                                            ; preds = %bb.xi
  call void @llvm.lifetime.start.p0(ptr nonnull %174) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %174)
          to label %bb.xl unwind label %bb.xp

bb.xl:                                            ; preds = %bb.xk
  call void @llvm.lifetime.start.p0(ptr nonnull %175) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %176) #26
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %176, ptr noundef nonnull align 8 dereferenceable(16) %173, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9)
          to label %bb.xm unwind label %bb.xq

bb.xm:                                            ; preds = %bb.xl
  %i.bbl = load ptr, ptr %176, align 8, !tbaa !84
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %175, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 90, ptr noundef %i.bbl)
          to label %bb.xn unwind label %bb.xr

bb.xn:                                            ; preds = %bb.xm
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %175, ptr noundef nonnull align 8 dereferenceable(8) %174)
          to label %bb.xo unwind label %bb.xs

bb.xo:                                            ; preds = %bb.xn
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %175) #26
  %i.bbm = load ptr, ptr %176, align 8, !tbaa !84 ; 2 uses
  %i.bbn = getelementptr inbounds nuw i8, ptr %176, i64 16 ; 2 uses
  %i.bbo = icmp eq ptr %i.bbm, %i.bbn
  br i1 %i.bbo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1187, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1185

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1185: ; preds = %bb.xo
  %i.bbp = load i64, ptr %i.bbn, align 8, !tbaa !85
  %i.bbq = add i64 %i.bbp, 1
  call void @_ZdlPvm(ptr noundef %i.bbm, i64 noundef %i.bbq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1187

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1187: ; preds = %bb.xo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1185
  call void @llvm.lifetime.end.p0(ptr nonnull %176) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %175) #26
  %i.bbr = load ptr, ptr %174, align 8, !tbaa !87 ; 3 uses
  %.not.i.i1188 = icmp eq ptr %i.bbr, null
  br i1 %.not.i.i1188, label %_ZN7testing7MessageD2Ev.exit1190, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1189

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1189: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1187
  %i.bbs = load ptr, ptr %i.bbr, align 8, !tbaa !46
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.bbs, i64 8
  %i.bbu = load ptr, ptr %i.bbt, align 8
  call void %i.bbu(ptr noundef nonnull align 8 dereferenceable(128) %i.bbr) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1190

_ZN7testing7MessageD2Ev.exit1190:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1187, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1189
  call void @llvm.lifetime.end.p0(ptr nonnull %174) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %173) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %173) #26
  br label %bb.xu

bb.xp:                                            ; preds = %bb.xk
  %i.bbv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1196

bb.xq:                                            ; preds = %bb.xl
  %i.bbw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1193

bb.xr:                                            ; preds = %bb.xm
  %i.bbx = landingpad { ptr, i32 }
          cleanup
  br label %bb.xt

bb.xs:                                            ; preds = %bb.xn
  %i.bby = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %175) #26
  br label %bb.xt

bb.xt:                                            ; preds = %bb.xs, %bb.xr
  %.pn518 = phi { ptr, i32 } [ %i.bby, %bb.xs ], [ %i.bbx, %bb.xr ] ; 2 uses
  %i.bbz = load ptr, ptr %176, align 8, !tbaa !84 ; 2 uses
  %i.bca = getelementptr inbounds nuw i8, ptr %176, i64 16 ; 2 uses
  %i.bcb = icmp eq ptr %i.bbz, %i.bca
  br i1 %i.bcb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1193, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1191

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1191: ; preds = %bb.xt
  %i.bcc = load i64, ptr %i.bca, align 8, !tbaa !85
  %i.bcd = add i64 %i.bcc, 1
  call void @_ZdlPvm(ptr noundef %i.bbz, i64 noundef %i.bcd) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1193

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1193: ; preds = %bb.xt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1191, %bb.xq
  %.pn518.pn = phi { ptr, i32 } [ %i.bbw, %bb.xq ], [ %.pn518, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1191 ], [ %.pn518, %bb.xt ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %176) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %175) #26
  %i.bce = load ptr, ptr %174, align 8, !tbaa !87 ; 3 uses
  %.not.i.i1194 = icmp eq ptr %i.bce, null
  br i1 %.not.i.i1194, label %_ZN7testing7MessageD2Ev.exit1196, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1195

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1195: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1193
  %i.bcf = load ptr, ptr %i.bce, align 8, !tbaa !46
  %i.bcg = getelementptr inbounds nuw i8, ptr %i.bcf, i64 8
  %i.bch = load ptr, ptr %i.bcg, align 8
  call void %i.bch(ptr noundef nonnull align 8 dereferenceable(128) %i.bce) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1196

_ZN7testing7MessageD2Ev.exit1196:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1195, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1193, %bb.xp
  %.pn518.pn.pn = phi { ptr, i32 } [ %i.bbv, %bb.xp ], [ %.pn518.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1193 ], [ %.pn518.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1195 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %174) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %173) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %173) #26
  br label %bb.xx

.critedge611:                                     ; preds = %bb.xi
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %173) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %173) #26
  br label %bb.xu

bb.xu:                                            ; preds = %_ZN7testing7MessageD2Ev.exit1173, %_ZN7testing7MessageD2Ev.exit1165, %_ZN7testing7MessageD2Ev.exit1157, %_ZN7testing7MessageD2Ev.exit1149, %_ZN7testing7MessageD2Ev.exit1138, %_ZN7testing7MessageD2Ev.exit1129, %_ZN7testing7MessageD2Ev.exit1118, %_ZN7testing7MessageD2Ev.exit1101, %_ZN7testing7MessageD2Ev.exit1093, %_ZN7testing7MessageD2Ev.exit1085, %_ZN7testing7MessageD2Ev.exit1077, %_ZN7testing7MessageD2Ev.exit1066, %_ZN7testing7MessageD2Ev.exit1057, %_ZN7testing7MessageD2Ev.exit1041, %_ZN7testing7MessageD2Ev.exit1025, %_ZN7testing7MessageD2Ev.exit1010, %_ZN7testing7MessageD2Ev.exit982, %_ZN7testing7MessageD2Ev.exit974, %_ZN7testing7MessageD2Ev.exit962, %_ZN7testing7MessageD2Ev.exit950, %_ZN7testing7MessageD2Ev.exit938, %_ZN7testing7MessageD2Ev.exit926, %_ZN7testing7MessageD2Ev.exit908, %_ZN7testing7MessageD2Ev.exit898, %_ZN7testing7MessageD2Ev.exit888, %_ZN7testing7MessageD2Ev.exit880, %_ZN7testing7MessageD2Ev.exit872, %_ZN7testing7MessageD2Ev.exit864, %_ZN7testing7MessageD2Ev.exit856, %_ZN7testing7MessageD2Ev.exit848, %_ZN7testing7MessageD2Ev.exit840, %_ZN7testing7MessageD2Ev.exit829, %_ZN7testing7MessageD2Ev.exit818, %_ZN7testing15AssertionResultD2Ev.exit803, %_ZN7testing15AssertionResultD2Ev.exit782, %_ZN7testing15AssertionResultD2Ev.exit762, %_ZN7testing15AssertionResultD2Ev.exit742, %_ZN7testing15AssertionResultD2Ev.exit720, %_ZN7testing15AssertionResultD2Ev.exit697, %_ZN7testing15AssertionResultD2Ev.exit676, %_ZN7testing15AssertionResultD2Ev.exit656, %_ZN7testing15AssertionResultD2Ev.exit, %_ZN7testing7MessageD2Ev.exit1190, %.critedge611, %_ZN7testing8internal14TrueWithStringD2Ev.exit
  %i.bci = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bcj = load ptr, ptr %i.bci, align 8, !tbaa !75 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bcj, null
  br i1 %.not.i.i.i.i.i, label %_ZN4entt8internal23compressed_pair_elementISt6vectorISt4pairImiESaIS4_EELm0EED2Ev.exit.i, label %bb.xv

bb.xv:                                            ; preds = %bb.xu
  %i.bck = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bcl = load ptr, ptr %i.bck, align 8, !tbaa !76
  %i.bcm = ptrtoint ptr %i.bcl to i64
  %i.bcn = ptrtoint ptr %i.bcj to i64
  %i.bco = sub i64 %i.bcm, %i.bcn
  call void @_ZdlPvm(ptr noundef nonnull %i.bcj, i64 noundef %i.bco) #27
  br label %_ZN4entt8internal23compressed_pair_elementISt6vectorISt4pairImiESaIS4_EELm0EED2Ev.exit.i

_ZN4entt8internal23compressed_pair_elementISt6vectorISt4pairImiESaIS4_EELm0EED2Ev.exit.i: ; preds = %bb.xv, %bb.xu
  %i.bcp = load ptr, ptr %2, align 8, !tbaa !77   ; 3 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.bcp, null
  br i1 %.not.i.i.i.i1.i, label %_ZN4entt9dense_setIiSt8identityN4test20transparent_equal_toESaIiEED2Ev.exit, label %bb.xw

bb.xw:                                            ; preds = %_ZN4entt8internal23compressed_pair_elementISt6vectorISt4pairImiESaIS4_EELm0EED2Ev.exit.i
  %i.bcq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bcr = load ptr, ptr %i.bcq, align 8, !tbaa !78
  %i.bcs = ptrtoint ptr %i.bcr to i64
  %i.bct = ptrtoint ptr %i.bcp to i64
  %i.bcu = sub i64 %i.bcs, %i.bct
  call void @_ZdlPvm(ptr noundef nonnull %i.bcp, i64 noundef %i.bcu) #27
  br label %_ZN4entt9dense_setIiSt8identityN4test20transparent_equal_toESaIiEED2Ev.exit

_ZN4entt9dense_setIiSt8identityN4test20transparent_equal_toESaIiEED2Ev.exit: ; preds = %_ZN4entt8internal23compressed_pair_elementISt6vectorISt4pairImiESaIS4_EELm0EED2Ev.exit.i, %bb.xw
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void

bb.xx:                                            ; preds = %_ZN7testing7MessageD2Ev.exit1196, %bb.xj, %bb.wt, %bb.wg, %bb.vt, %_ZN7testing7MessageD2Ev.exit1144, %bb.uu, %_ZN7testing7MessageD2Ev.exit1124, %bb.tw, %bb.tg, %bb.st, %bb.sg, %_ZN7testing7MessageD2Ev.exit1072, %bb.rh, %bb.qv, %bb.qe, %bb.pn, %bb.ow, %bb.op, %bb.oe, %bb.nr, %bb.nb, %bb.ml, %_ZN7testing7MessageD2Ev.exit932, %_ZN7testing7MessageD2Ev.exit914, %bb.kr, %bb.kb, %bb.jo, %bb.jb, %bb.io, %bb.ib, %bb.ho, %bb.hb, %bb.go, %bb.ga, %bb.fm, %bb.ey, %bb.ei, %bb.ds, %bb.dc, %bb.db, %bb.cm, %bb.by, %bb.bi, %_ZN7testing7MessageD2Ev.exit642, %_ZN7testing8internal14TrueWithStringD2Ev.exit629
  %.pn518.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn518.pn.pn, %_ZN7testing7MessageD2Ev.exit1196 ], [ %.pn514.pn.pn, %bb.xj ], [ %.pn510.pn.pn, %bb.wt ], [ %.pn506.pn.pn, %bb.wg ], [ %.pn502.pn.pn, %bb.vt ], [ %.pn498.pn.pn, %_ZN7testing7MessageD2Ev.exit1144 ], [ %.pn494.pn.pn, %bb.uu ], [ %.pn489.pn.pn, %_ZN7testing7MessageD2Ev.exit1124 ], [ %.pn485.pn.pn, %bb.tw ], [ %.pn481.pn.pn, %bb.tg ], [ %.pn477.pn.pn, %bb.st ], [ %.pn473.pn.pn, %bb.sg ], [ %.pn469.pn.pn, %_ZN7testing7MessageD2Ev.exit1072 ], [ %.pn465.pn.pn, %bb.rh ], [ %.pn459.pn.pn, %bb.qv ], [ %.pn453.pn.pn, %bb.qe ], [ %.pn447.pn.pn, %bb.pn ], [ %i.akg, %bb.ow ], [ %.pn316.pn.pn.pn, %_ZN7testing8internal14TrueWithStringD2Ev.exit629 ], [ %.pn437.pn.pn, %bb.op ], [ %.pn433.pn.pn, %bb.oe ], [ %.pn427.pn.pn, %bb.nr ], [ %.pn421.pn.pn, %bb.nb ], [ %.pn415.pn.pn, %bb.ml ], [ %.pn408.pn.pn, %_ZN7testing7MessageD2Ev.exit932 ], [ %.pn403.pn.pn, %_ZN7testing7MessageD2Ev.exit914 ], [ %.pn399.pn.pn, %bb.kr ], [ %.pn395.pn.pn, %bb.kb ], [ %.pn389.pn.pn, %bb.jo ], [ %.pn385.pn.pn, %bb.jb ], [ %.pn381.pn.pn, %bb.io ], [ %.pn377.pn.pn, %bb.ib ], [ %.pn373.pn.pn, %bb.ho ], [ %.pn369.pn.pn, %bb.hb ], [ %.pn363.pn.pn, %bb.go ], [ %.pn359.pn.pn, %bb.ga ], [ %.pn355.pn.pn, %bb.fm ], [ %.pn351.pn.pn, %bb.ey ], [ %.pn347.pn.pn, %bb.ei ], [ %.pn343.pn.pn, %bb.ds ], [ %i.kw, %bb.dc ], [ %.pn339.pn.pn, %bb.db ], [ %.pn335.pn.pn, %bb.cm ], [ %.pn331.pn.pn, %bb.by ], [ %.pn325.pn.pn, %bb.bi ], [ %.pn321.pn.pn, %_ZN7testing7MessageD2Ev.exit642 ]
  call void @_ZN4entt9dense_setIiSt8identityN4test20transparent_equal_toESaIiEED2Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %common.resume

bb.xy:                                            ; preds = %bb.v, %bb.q
  %i.bcv = landingpad { ptr, i32 }
          catch ptr null
  %i.bcw = extractvalue { ptr, i32 } %i.bcv, 0
  call void @__clang_call_terminate(ptr %i.bcw) #28
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv() local_unnamed_addr #0

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #6

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !83
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26
  %i.d = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef %i.b, ptr noundef nonnull %1, i64 noundef %i.c)
  ret ptr %i.d
}

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #26 ; 0 uses
  tail call void @_ZSt9terminatev() #28
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal11GetTypeNameB5cxx11ERKSt9type_info(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !112  ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !85
  %i.e = icmp eq i8 %i.d, 42
  %.idx.i = zext i1 %i.e to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4, !tbaa !107
  %i.g = call ptr @__cxa_demangle(ptr noundef nonnull %i.f, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.a) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.h = load i32, ptr %i.a, align 4, !tbaa !107
  %i.i = icmp eq i32 %i.h, 0
  %i.j = select i1 %i.i, ptr %i.g, ptr %i.f       ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.k, ptr %2, align 8, !tbaa !81
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.310) #29
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.m = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #26 ; 8 uses
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %bb.c, label %._crit_edge.i.i

bb.c:                                             ; preds = %bb.b
  %i.o = icmp slt i64 %i.m, 0
  br i1 %i.o, label %.noexc.i, label %bb.d

.noexc.i:                                         ; preds = %bb.c
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.311) #29
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.p = add nuw i64 %i.m, 1                      ; 2 uses
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !113

.noexc11.i:                                       ; preds = %bb.d
  call void @_ZSt17__throw_bad_allocv() #29
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.d
  %i.r = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #30 ; 2 uses
  store ptr %i.r, ptr %2, align 8, !tbaa !84
  store i64 %i.m, ptr %i.k, align 8, !tbaa !85
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.b
  %i.s = phi ptr [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.k, %bb.b ] ; 3 uses
  switch i64 %i.m, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.t = load i8, ptr %i.j, align 1, !tbaa !85
  store i8 %i.t, ptr %i.s, align 1, !tbaa !85
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull align 1 %i.j, i64 %i.m, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.m, ptr %i.u, align 8, !tbaa !83
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.m
  store i8 0, ptr %i.v, align 1, !tbaa !85
  call void @free(ptr noundef %i.g) #26
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.w, ptr %3, align 8, !tbaa !81
  %i.x = load ptr, ptr %2, align 8, !tbaa !84     ; 2 uses
  %i.y = load i64, ptr %i.u, align 8, !tbaa !83   ; 8 uses
  %i.z = icmp ugt i64 %i.y, 15
  br i1 %i.z, label %bb.h, label %._crit_edge.i.i13

bb.h:                                             ; preds = %bb.g
  %i.aa = icmp slt i64 %i.y, 0
  br i1 %i.aa, label %.noexc.i15, label %bb.i

.noexc.i15:                                       ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.311) #29
          to label %.noexc16 unwind label %bb.n

.noexc16:                                         ; preds = %.noexc.i15
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.ab = add nuw i64 %i.y, 1                     ; 2 uses
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i14, !prof !113

.noexc6.i:                                        ; preds = %bb.i
  invoke void @_ZSt17__throw_bad_allocv() #29
          to label %.noexc17 unwind label %bb.n

.noexc17:                                         ; preds = %.noexc6.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i14: ; preds = %bb.i
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #30
          to label %.noexc18 unwind label %bb.n   ; 2 uses

.noexc18:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i14
  store ptr %i.ad, ptr %3, align 8, !tbaa !84
  store i64 %i.y, ptr %i.w, align 8, !tbaa !85
  br label %._crit_edge.i.i13

._crit_edge.i.i13:                                ; preds = %.noexc18, %bb.g
  %i.ae = phi ptr [ %i.ad, %.noexc18 ], [ %i.w, %bb.g ] ; 3 uses
  switch i64 %i.y, label %bb.k [
    i64 1, label %bb.j
end_hunk_1
begin_hunk_2_@_ZN37DenseSet_LocalIteratorConversion_Test8TestBodyEv:bb.a

bb.cv:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit154, %_ZN7testing15AssertionResultD2Ev.exit134, %_ZN7testing15AssertionResultD2Ev.exit113, %_ZN7testing15AssertionResultD2Ev.exit93, %_ZN7testing15AssertionResultD2Ev.exit, %_ZN7testing15AssertionResultD2Ev.exit177
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.iw = load ptr, ptr %i.ae, align 8, !tbaa !75 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.iw, null
  br i1 %.not.i.i.i.i.i, label %_ZN4entt8internal23compressed_pair_elementISt6vectorISt4pairImiESaIS4_EELm0EED2Ev.exit.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !76
  %i.iz = ptrtoint ptr %i.iy to i64
  %i.ja = ptrtoint ptr %i.iw to i64
  %i.jb = sub i64 %i.iz, %i.ja
  call void @_ZdlPvm(ptr noundef nonnull %i.iw, i64 noundef %i.jb) #27
  br label %_ZN4entt8internal23compressed_pair_elementISt6vectorISt4pairImiESaIS4_EELm0EED2Ev.exit.i

_ZN4entt8internal23compressed_pair_elementISt6vectorISt4pairImiESaIS4_EELm0EED2Ev.exit.i: ; preds = %bb.cw, %bb.cv
  %i.jc = load ptr, ptr %1, align 8, !tbaa !77    ; 3 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.jc, null
  br i1 %.not.i.i.i.i1.i, label %_ZN4entt9dense_setIiSt4hashIiESt8equal_toIvESaIiEED2Ev.exit, label %bb.cx

bb.cx:                                            ; preds = %_ZN4entt8internal23compressed_pair_elementISt6vectorISt4pairImiESaIS4_EELm0EED2Ev.exit.i
  %i.jd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !78
  %i.jf = ptrtoint ptr %i.je to i64
  %i.jg = ptrtoint ptr %i.jc to i64
  %i.jh = sub i64 %i.jf, %i.jg
  call void @_ZdlPvm(ptr noundef nonnull %i.jc, i64 noundef %i.jh) #27
  br label %_ZN4entt9dense_setIiSt4hashIiESt8equal_toIvESaIiEED2Ev.exit

_ZN4entt9dense_setIiSt4hashIiESt8equal_toIvESaIiEED2Ev.exit: ; preds = %_ZN4entt8internal23compressed_pair_elementISt6vectorISt4pairImiESaIS4_EELm0EED2Ev.exit.i, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret void

bb.cy:                                            ; preds = %_ZN7testing7MessageD2Ev.exit172, %bb.cj
  %.pn57.pn.pn = phi { ptr, i32 } [ %.pn57.pn, %_ZN7testing7MessageD2Ev.exit172 ], [ %i.hz, %bb.cj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.ci, %bb.bs, %bb.bc, %bb.am, %bb.w
  %.pn57.pn.pn.pn = phi { ptr, i32 } [ %.pn57.pn.pn, %bb.cy ], [ %.pn53.pn.pn, %bb.ci ], [ %.pn49.pn.pn, %bb.bs ], [ %.pn45.pn.pn, %bb.bc ], [ %.pn41.pn.pn, %bb.am ], [ %.pn.pn.pn, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.g
  %.pn57.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn57.pn.pn.pn, %bb.cz ], [ %i.aq, %bb.g ]
  call void @_ZN4entt9dense_setIiSt4hashIiESt8equal_toIvESaIiEED2Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN20DenseSet_Rehash_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 9 uses
  %1 = alloca %"class.entt::dense_set.41", align 8 ; 70 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.testing::Message", align 8  ; 7 uses
  %4 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %5 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %6 = alloca %"class.testing::Message", align 8  ; 7 uses
  %7 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %10 = alloca %"class.testing::Message", align 8 ; 7 uses
  %11 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %12 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %13 = alloca %"class.testing::Message", align 8 ; 7 uses
  %14 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %15 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %16 = alloca %"class.testing::Message", align 8 ; 7 uses
  %17 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %19 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %20 = alloca %"class.testing::Message", align 8 ; 7 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %22 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %23 = alloca %"class.testing::Message", align 8 ; 7 uses
  %24 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %25 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %26 = alloca %"class.testing::Message", align 8 ; 7 uses
  %27 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %29 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %i.m = alloca i32, align 4                      ; 5 uses
  %30 = alloca %"class.testing::Message", align 8 ; 7 uses
  %31 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %32 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.n = alloca i64, align 8                      ; 5 uses
  %33 = alloca %"class.testing::Message", align 8 ; 7 uses
  %34 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %35 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %36 = alloca %"class.testing::Message", align 8 ; 7 uses
  %37 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %39 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.o = alloca i64, align 8                      ; 5 uses
  %i.p = alloca i32, align 4                      ; 5 uses
  %40 = alloca %"class.testing::Message", align 8 ; 7 uses
  %41 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.q = alloca i64, align 8                      ; 7 uses
  %42 = alloca %"class.testing::AssertionResult", align 8 ; 11 uses
  %i.r = alloca i64, align 8                      ; 5 uses
  %i.s = alloca i64, align 8                      ; 5 uses
  %43 = alloca %"class.testing::Message", align 8 ; 7 uses
  %44 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %45 = alloca %"class.testing::AssertionResult", align 8 ; 11 uses
  %i.t = alloca i64, align 8                      ; 5 uses
  %i.u = alloca i64, align 8                      ; 5 uses
  %46 = alloca %"class.testing::Message", align 8 ; 7 uses
  %47 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %48 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.v = alloca i64, align 8                      ; 5 uses
  %i.w = alloca i64, align 8                      ; 5 uses
  %49 = alloca %"class.testing::Message", align 8 ; 7 uses
  %50 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %51 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %52 = alloca %"class.testing::Message", align 8 ; 7 uses
  %53 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %54 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %55 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.x = alloca i64, align 8                      ; 5 uses
  %i.y = alloca i64, align 8                      ; 5 uses
  %56 = alloca %"class.testing::Message", align 8 ; 7 uses
  %57 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %58 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %59 = alloca %"class.testing::Message", align 8 ; 7 uses
  %60 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %61 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %62 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.z = alloca i64, align 8                      ; 5 uses
  %i.aa = alloca i64, align 8                     ; 5 uses
  %63 = alloca %"class.testing::Message", align 8 ; 7 uses
  %64 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %65 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %66 = alloca %"class.testing::Message", align 8 ; 7 uses
  %67 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %68 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %69 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.ab = alloca i64, align 8                     ; 5 uses
  %i.ac = alloca i32, align 4                     ; 5 uses
  %70 = alloca %"class.testing::Message", align 8 ; 7 uses
  %71 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.ad = alloca i64, align 8                     ; 9 uses
  %72 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %73 = alloca %"class.testing::Message", align 8 ; 7 uses
  %74 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %75 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %76 = alloca %"class.testing::AssertionResult", align 8 ; 11 uses
  %i.ae = alloca i64, align 8                     ; 5 uses
  %77 = alloca %"class.testing::Message", align 8 ; 7 uses
  %78 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %79 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.af = alloca i64, align 8                     ; 5 uses
  %i.ag = alloca i32, align 4                     ; 5 uses
  %80 = alloca %"class.testing::Message", align 8 ; 7 uses
  %81 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %82 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.ah = alloca i64, align 8                     ; 5 uses
  %i.ai = alloca i32, align 4                     ; 5 uses
  %83 = alloca %"class.testing::Message", align 8 ; 7 uses
  %84 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %85 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.aj = alloca i32, align 4                     ; 5 uses
  %86 = alloca %"class.testing::Message", align 8 ; 7 uses
  %87 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %88 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.ak = alloca i32, align 4                     ; 5 uses
  %89 = alloca %"class.testing::Message", align 8 ; 7 uses
  %90 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %91 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.al = alloca i64, align 8                     ; 5 uses
  %92 = alloca %"class.testing::Message", align 8 ; 7 uses
  %93 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %94 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %95 = alloca %"class.testing::Message", align 8 ; 7 uses
  %96 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %97 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %98 = alloca %"class.testing::AssertionResult", align 8 ; 38 uses
  %99 = alloca %"class.testing::Message", align 8 ; 7 uses
  %100 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %101 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %102 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.am = alloca i64, align 8                     ; 5 uses
  %i.an = alloca i32, align 4                     ; 5 uses
  %103 = alloca %"class.testing::Message", align 8 ; 7 uses
  %104 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %105 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.ao = alloca i64, align 8                     ; 5 uses
  %i.ap = alloca i32, align 4                     ; 5 uses
  %106 = alloca %"class.testing::Message", align 8 ; 7 uses
  %107 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 8, ptr %i.a, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %1, i8 0, i64 48, i1 false)
  store float 8.750000e-01, ptr %i.aq, align 8, !tbaa !136
  invoke void @_ZN4entt9dense_setImSt8identitySt8equal_toIvESaImEE6rehashEm(ptr noundef nonnull align 8 dereferenceable(52) %1, i64 noundef 8)
          to label %_ZN4entt9dense_setImSt8identitySt8equal_toIvESaImEEC2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !137 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4entt8internal23compressed_pair_elementISt6vectorISt4pairImmESaIS4_EELm0EED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !138
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = sub i64 %i.aw, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ay) #27
  br label %_ZN4entt8internal23compressed_pair_elementISt6vectorISt4pairImmESaIS4_EELm0EED2Ev.exit.i.i

_ZN4entt8internal23compressed_pair_elementISt6vectorISt4pairImmESaIS4_EELm0EED2Ev.exit.i.i: ; preds = %bb.c, %bb.b
  %i.az = load ptr, ptr %1, align 8, !tbaa !77    ; 3 uses
  %.not.i.i.i.i7.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i7.i.i, label %common.resume, label %bb.d

bb.d:                                             ; preds = %_ZN4entt8internal23compressed_pair_elementISt6vectorISt4pairImmESaIS4_EELm0EED2Ev.exit.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !78
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.az to i64
  %i.be = sub i64 %i.bc, %i.bd
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.be) #27
  br label %common.resume

common.resume:                                    ; preds = %_ZN4entt8internal23compressed_pair_elementISt6vectorISt4pairImmESaIS4_EELm0EED2Ev.exit.i.i, %bb.d, %bb.tf
  %common.resume.op = phi { ptr, i32 } [ %.pn364, %bb.tf ], [ %i.ar, %bb.d ], [ %i.ar, %_ZN4entt8internal23compressed_pair_elementISt6vectorISt4pairImmESaIS4_EELm0EED2Ev.exit.i.i ]
  resume { ptr, i32 } %common.resume.op

_ZN4entt9dense_setImSt8identitySt8equal_toIvESaImEEC2Ev.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i32 32, ptr %i.b, align 4, !tbaa !107
  %i.bf = invoke { ptr, i8 } @_ZN4entt9dense_setImSt8identitySt8equal_toIvESaImEE7emplaceIJjEEESt4pairINS_8internal18dense_set_iteratorIPS7_ImmEEEbEDpOT_(ptr noundef nonnull align 8 dereferenceable(52) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.e unwind label %bb.h       ; 0 uses

bb.e:                                             ; preds = %_ZN4entt9dense_setImSt8identitySt8equal_toIvESaImEEC2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 27 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !103
  %i.bi = load ptr, ptr %1, align 8, !tbaa !77
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 3                 ; 2 uses
  store i64 %i.bm, ptr %i.c, align 8, !tbaa !106
  %i.bn = load i64, ptr %i.a, align 8, !tbaa !106, !noalias !914
  %i.bo = icmp eq i64 %i.bm, %i.bn
  br i1 %i.bo, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %2)
          to label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.i

bb.g:                                             ; preds = %bb.e
  invoke void @_ZN7testing8internal18CmpHelperEQFailureImmEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %2, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.59, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.i

_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %i.bp = load i8, ptr %2, align 8, !tbaa !98, !range !101, !noundef !105
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %.critedge, label %bb.j

bb.h:                                             ; preds = %_ZN4entt9dense_setImSt8identitySt8equal_toIvESaImEEC2Ev.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.tf

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %bb.z

bb.j:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !100 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !84
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.l, %bb.k
  %i.bw = phi ptr [ %i.bv, %bb.l ], [ @.str.319, %bb.k ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 895, ptr noundef %i.bw)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %bb.m
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.bx = load ptr, ptr %3, align 8, !tbaa !87    ; 3 uses
  %.not.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.n
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !46
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(128) %i.bx) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.n, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.cb = load ptr, ptr %i.bt, align 8, !tbaa !100 ; 4 uses
  %.not.i.i433 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i433, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !84 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 2 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.o
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !85
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cg) #27
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.tb

bb.p:                                             ; preds = %bb.j
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit436

bb.q:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %bb.m
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #26
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn = phi { ptr, i32 } [ %i.cj, %bb.r ], [ %i.ci, %bb.q ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.ck = load ptr, ptr %3, align 8, !tbaa !87    ; 3 uses
  %.not.i.i434 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i434, label %_ZN7testing7MessageD2Ev.exit436, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i435

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i435: ; preds = %bb.s
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !46
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(128) %i.ck) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit436

_ZN7testing7MessageD2Ev.exit436:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i435, %bb.s, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %i.ch, %bb.p ], [ %.pn, %bb.s ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i435 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #26
  br label %bb.z

.critedge:                                        ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !100 ; 4 uses
end_hunk_2
begin_hunk_3_@_ZN20DenseSet_Rehash_Test8TestBodyEv:bb.a
  %.05.i.i930 = phi i64 [ %i.awk, %.lr.ph.i.i929 ], [ 0, %.critedge427 ]
  %.sroa.2.04.i.i931 = phi i64 [ %i.awj, %.lr.ph.i.i929 ], [ %i.awg, %.critedge427 ]
  %i.awi = getelementptr inbounds [16 x i8], ptr %i.awe, i64 %.sroa.2.04.i.i931
  %i.awj = load i64, ptr %i.awi, align 8, !tbaa !141 ; 2 uses
  %i.awk = add nuw nsw i64 %.05.i.i930, 1         ; 2 uses
  %i.awl = icmp eq i64 %i.awj, -1
  br i1 %i.awl, label %_ZNK4entt9dense_setImSt8identitySt8equal_toIvESaImEE11bucket_sizeEm.exit933, label %.lr.ph.i.i929, !llvm.loop !12

_ZNK4entt9dense_setImSt8identitySt8equal_toIvESaImEE11bucket_sizeEm.exit933: ; preds = %.lr.ph.i.i929, %.critedge427
  %.0.lcssa.i.i932 = phi i64 [ 0, %.critedge427 ], [ %i.awk, %.lr.ph.i.i929 ]
  store i64 %.0.lcssa.i.i932, ptr %i.am, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an) #26
  store i32 0, ptr %i.an, align 4, !tbaa !107
  invoke void @_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %102, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.12, ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 4 dereferenceable(4) %i.an)
          to label %bb.sd unwind label %bb.se

bb.sd:                                            ; preds = %_ZNK4entt9dense_setImSt8identitySt8equal_toIvESaImEE11bucket_sizeEm.exit933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am) #26
  %i.awm = load i8, ptr %102, align 8, !tbaa !98, !range !101, !noundef !105
  %i.awn = trunc nuw i8 %i.awm to i1
  br i1 %i.awn, label %bb.so, label %bb.sf

bb.se:                                            ; preds = %_ZNK4entt9dense_setImSt8identitySt8equal_toIvESaImEE11bucket_sizeEm.exit933
  %i.awo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am) #26
  br label %bb.sq

bb.sf:                                            ; preds = %bb.sd
  call void @llvm.lifetime.start.p0(ptr nonnull %103) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %103)
          to label %bb.sg unwind label %bb.sk

bb.sg:                                            ; preds = %bb.sf
  call void @llvm.lifetime.start.p0(ptr nonnull %104) #26
  %i.awp = getelementptr inbounds nuw i8, ptr %102, i64 8
  %i.awq = load ptr, ptr %i.awp, align 8, !tbaa !100 ; 2 uses
  %.not.i.i.i934 = icmp eq ptr %i.awq, null
  br i1 %.not.i.i.i934, label %_ZNK7testing15AssertionResult15failure_messageEv.exit935, label %bb.sh

bb.sh:                                            ; preds = %bb.sg
  %i.awr = load ptr, ptr %i.awq, align 8, !tbaa !84
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit935

_ZNK7testing15AssertionResult15failure_messageEv.exit935: ; preds = %bb.sh, %bb.sg
  %i.aws = phi ptr [ %i.awr, %bb.sh ], [ @.str.319, %bb.sg ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %104, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 961, ptr noundef %i.aws)
          to label %bb.si unwind label %bb.sl

bb.si:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit935
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %104, ptr noundef nonnull align 8 dereferenceable(8) %103)
          to label %bb.sj unwind label %bb.sm

bb.sj:                                            ; preds = %bb.si
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %104) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %104) #26
  %i.awt = load ptr, ptr %103, align 8, !tbaa !87 ; 3 uses
  %.not.i.i936 = icmp eq ptr %i.awt, null
  br i1 %.not.i.i936, label %_ZN7testing7MessageD2Ev.exit938, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i937

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i937: ; preds = %bb.sj
  %i.awu = load ptr, ptr %i.awt, align 8, !tbaa !46
  %i.awv = getelementptr inbounds nuw i8, ptr %i.awu, i64 8
  %i.aww = load ptr, ptr %i.awv, align 8
  call void %i.aww(ptr noundef nonnull align 8 dereferenceable(128) %i.awt) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit938

_ZN7testing7MessageD2Ev.exit938:                  ; preds = %bb.sj, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i937
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %102) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #26
  br label %bb.tb

bb.sk:                                            ; preds = %bb.sf
  %i.awx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit941

bb.sl:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit935
  %i.awy = landingpad { ptr, i32 }
          cleanup
  br label %bb.sn

bb.sm:                                            ; preds = %bb.si
  %i.awz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %104) #26
  br label %bb.sn

bb.sn:                                            ; preds = %bb.sm, %bb.sl
  %.pn354 = phi { ptr, i32 } [ %i.awz, %bb.sm ], [ %i.awy, %bb.sl ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %104) #26
  %i.axa = load ptr, ptr %103, align 8, !tbaa !87 ; 3 uses
  %.not.i.i939 = icmp eq ptr %i.axa, null
  br i1 %.not.i.i939, label %_ZN7testing7MessageD2Ev.exit941, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i940

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i940: ; preds = %bb.sn
  %i.axb = load ptr, ptr %i.axa, align 8, !tbaa !46
  %i.axc = getelementptr inbounds nuw i8, ptr %i.axb, i64 8
  %i.axd = load ptr, ptr %i.axc, align 8
  call void %i.axd(ptr noundef nonnull align 8 dereferenceable(128) %i.axa) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit941

_ZN7testing7MessageD2Ev.exit941:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i940, %bb.sn, %bb.sk
  %.pn354.pn = phi { ptr, i32 } [ %i.awx, %bb.sk ], [ %.pn354, %bb.sn ], [ %.pn354, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i940 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %102) #26
  br label %bb.sq

bb.so:                                            ; preds = %bb.sd
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %102) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %105) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao) #26
  %i.axe = load ptr, ptr %i.de, align 8, !tbaa !137
  %i.axf = load ptr, ptr %1, align 8, !tbaa !77
  %i.axg = getelementptr inbounds nuw i8, ptr %i.axf, i64 24
  %i.axh = load i64, ptr %i.axg, align 8, !tbaa !106 ; 2 uses
  %i.axi = icmp eq i64 %i.axh, -1
  br i1 %i.axi, label %_ZNK4entt9dense_setImSt8identitySt8equal_toIvESaImEE11bucket_sizeEm.exit946, label %.lr.ph.i.i942

.lr.ph.i.i942:                                    ; preds = %bb.so, %.lr.ph.i.i942
  %.05.i.i943 = phi i64 [ %i.axl, %.lr.ph.i.i942 ], [ 0, %bb.so ]
  %.sroa.2.04.i.i944 = phi i64 [ %i.axk, %.lr.ph.i.i942 ], [ %i.axh, %bb.so ]
  %i.axj = getelementptr inbounds [16 x i8], ptr %i.axe, i64 %.sroa.2.04.i.i944
  %i.axk = load i64, ptr %i.axj, align 8, !tbaa !141 ; 2 uses
  %i.axl = add nuw nsw i64 %.05.i.i943, 1         ; 2 uses
  %i.axm = icmp eq i64 %i.axk, -1
  br i1 %i.axm, label %_ZNK4entt9dense_setImSt8identitySt8equal_toIvESaImEE11bucket_sizeEm.exit946, label %.lr.ph.i.i942, !llvm.loop !12

_ZNK4entt9dense_setImSt8identitySt8equal_toIvESaImEE11bucket_sizeEm.exit946: ; preds = %.lr.ph.i.i942, %bb.so
  %.0.lcssa.i.i945 = phi i64 [ 0, %bb.so ], [ %i.axl, %.lr.ph.i.i942 ]
  store i64 %.0.lcssa.i.i945, ptr %i.ao, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap) #26
  store i32 0, ptr %i.ap, align 4, !tbaa !107
  invoke void @_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %105, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.12, ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %i.ap)
          to label %bb.sp unwind label %bb.sr

bb.sp:                                            ; preds = %_ZNK4entt9dense_setImSt8identitySt8equal_toIvESaImEE11bucket_sizeEm.exit946
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao) #26
  %i.axn = load i8, ptr %105, align 8, !tbaa !98, !range !101, !noundef !105
  %i.axo = trunc nuw i8 %i.axn to i1
  br i1 %i.axo, label %.critedge431, label %bb.ss

bb.sq:                                            ; preds = %_ZN7testing7MessageD2Ev.exit941, %bb.se
  %.pn354.pn.pn = phi { ptr, i32 } [ %.pn354.pn, %_ZN7testing7MessageD2Ev.exit941 ], [ %i.awo, %bb.se ]
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #26
  br label %bb.tf

bb.sr:                                            ; preds = %_ZNK4entt9dense_setImSt8identitySt8equal_toIvESaImEE11bucket_sizeEm.exit946
  %i.axp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao) #26
  br label %bb.te

bb.ss:                                            ; preds = %bb.sp
  call void @llvm.lifetime.start.p0(ptr nonnull %106) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %106)
          to label %bb.st unwind label %bb.sx

bb.st:                                            ; preds = %bb.ss
  call void @llvm.lifetime.start.p0(ptr nonnull %107) #26
  %i.axq = getelementptr inbounds nuw i8, ptr %105, i64 8
  %i.axr = load ptr, ptr %i.axq, align 8, !tbaa !100 ; 2 uses
  %.not.i.i.i947 = icmp eq ptr %i.axr, null
  br i1 %.not.i.i.i947, label %_ZNK7testing15AssertionResult15failure_messageEv.exit948, label %bb.su

bb.su:                                            ; preds = %bb.st
  %i.axs = load ptr, ptr %i.axr, align 8, !tbaa !84
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit948

_ZNK7testing15AssertionResult15failure_messageEv.exit948: ; preds = %bb.su, %bb.st
  %i.axt = phi ptr [ %i.axs, %bb.su ], [ @.str.319, %bb.st ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %107, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 962, ptr noundef %i.axt)
          to label %bb.sv unwind label %bb.sy

bb.sv:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit948
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %107, ptr noundef nonnull align 8 dereferenceable(8) %106)
          to label %bb.sw unwind label %bb.sz

bb.sw:                                            ; preds = %bb.sv
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %107) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %107) #26
  %i.axu = load ptr, ptr %106, align 8, !tbaa !87 ; 3 uses
  %.not.i.i949 = icmp eq ptr %i.axu, null
  br i1 %.not.i.i949, label %_ZN7testing7MessageD2Ev.exit951, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i950

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i950: ; preds = %bb.sw
  %i.axv = load ptr, ptr %i.axu, align 8, !tbaa !46
  %i.axw = getelementptr inbounds nuw i8, ptr %i.axv, i64 8
  %i.axx = load ptr, ptr %i.axw, align 8
  call void %i.axx(ptr noundef nonnull align 8 dereferenceable(128) %i.axu) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit951

_ZN7testing7MessageD2Ev.exit951:                  ; preds = %bb.sw, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i950
  call void @llvm.lifetime.end.p0(ptr nonnull %106) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %105) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %105) #26
  br label %bb.tb

bb.sx:                                            ; preds = %bb.ss
  %i.axy = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit954

bb.sy:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit948
  %i.axz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ta

bb.sz:                                            ; preds = %bb.sv
  %i.aya = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %107) #26
  br label %bb.ta

bb.ta:                                            ; preds = %bb.sz, %bb.sy
  %.pn360 = phi { ptr, i32 } [ %i.aya, %bb.sz ], [ %i.axz, %bb.sy ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %107) #26
  %i.ayb = load ptr, ptr %106, align 8, !tbaa !87 ; 3 uses
  %.not.i.i952 = icmp eq ptr %i.ayb, null
  br i1 %.not.i.i952, label %_ZN7testing7MessageD2Ev.exit954, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i953

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i953: ; preds = %bb.ta
  %i.ayc = load ptr, ptr %i.ayb, align 8, !tbaa !46
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.ayc, i64 8
  %i.aye = load ptr, ptr %i.ayd, align 8
  call void %i.aye(ptr noundef nonnull align 8 dereferenceable(128) %i.ayb) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit954

_ZN7testing7MessageD2Ev.exit954:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i953, %bb.ta, %bb.sx
  %.pn360.pn = phi { ptr, i32 } [ %i.axy, %bb.sx ], [ %.pn360, %bb.ta ], [ %.pn360, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i953 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %106) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %105) #26
  br label %bb.te

.critedge431:                                     ; preds = %bb.sp
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %105) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %105) #26
  br label %bb.tb

bb.tb:                                            ; preds = %_ZN7testing7MessageD2Ev.exit938, %bb.sc, %_ZN7testing7MessageD2Ev.exit902, %_ZN7testing7MessageD2Ev.exit885, %_ZN7testing7MessageD2Ev.exit877, %_ZN7testing7MessageD2Ev.exit867, %_ZN7testing7MessageD2Ev.exit859, %_ZN7testing7MessageD2Ev.exit846, %bb.mz, %_ZN7testing7MessageD2Ev.exit809, %_ZN7testing7MessageD2Ev.exit798, %_ZN7testing7MessageD2Ev.exit781, %_ZN7testing7MessageD2Ev.exit770, %_ZN7testing7MessageD2Ev.exit753, %_ZN7testing7MessageD2Ev.exit742, %_ZN7testing7MessageD2Ev.exit725, %_ZN7testing7MessageD2Ev.exit717, %_ZN7testing7MessageD2Ev.exit706, %_ZN7testing15AssertionResultD2Ev.exit689, %_ZN7testing15AssertionResultD2Ev.exit665, %_ZN7testing15AssertionResultD2Ev.exit638, %_ZN7testing15AssertionResultD2Ev.exit617, %_ZN7testing15AssertionResultD2Ev.exit593, %_ZN7testing15AssertionResultD2Ev.exit566, %_ZN7testing15AssertionResultD2Ev.exit545, %_ZN7testing15AssertionResultD2Ev.exit521, %_ZN7testing15AssertionResultD2Ev.exit494, %_ZN7testing15AssertionResultD2Ev.exit473, %_ZN7testing15AssertionResultD2Ev.exit450, %_ZN7testing15AssertionResultD2Ev.exit, %_ZN7testing7MessageD2Ev.exit951, %.critedge431
  %i.ayf = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ayg = load ptr, ptr %i.ayf, align 8, !tbaa !137 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ayg, null
  br i1 %.not.i.i.i.i.i, label %_ZN4entt8internal23compressed_pair_elementISt6vectorISt4pairImmESaIS4_EELm0EED2Ev.exit.i, label %bb.tc

bb.tc:                                            ; preds = %bb.tb
  %i.ayh = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ayi = load ptr, ptr %i.ayh, align 8, !tbaa !138
  %i.ayj = ptrtoint ptr %i.ayi to i64
  %i.ayk = ptrtoint ptr %i.ayg to i64
  %i.ayl = sub i64 %i.ayj, %i.ayk
  call void @_ZdlPvm(ptr noundef nonnull %i.ayg, i64 noundef %i.ayl) #27
  br label %_ZN4entt8internal23compressed_pair_elementISt6vectorISt4pairImmESaIS4_EELm0EED2Ev.exit.i

_ZN4entt8internal23compressed_pair_elementISt6vectorISt4pairImmESaIS4_EELm0EED2Ev.exit.i: ; preds = %bb.tc, %bb.tb
  %i.aym = load ptr, ptr %1, align 8, !tbaa !77   ; 3 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.aym, null
  br i1 %.not.i.i.i.i1.i, label %_ZN4entt9dense_setImSt8identitySt8equal_toIvESaImEED2Ev.exit, label %bb.td

bb.td:                                            ; preds = %_ZN4entt8internal23compressed_pair_elementISt6vectorISt4pairImmESaIS4_EELm0EED2Ev.exit.i
  %i.ayn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ayo = load ptr, ptr %i.ayn, align 8, !tbaa !78
  %i.ayp = ptrtoint ptr %i.ayo to i64
  %i.ayq = ptrtoint ptr %i.aym to i64
  %i.ayr = sub i64 %i.ayp, %i.ayq
  call void @_ZdlPvm(ptr noundef nonnull %i.aym, i64 noundef %i.ayr) #27
  br label %_ZN4entt9dense_setImSt8identitySt8equal_toIvESaImEED2Ev.exit

_ZN4entt9dense_setImSt8identitySt8equal_toIvESaImEED2Ev.exit: ; preds = %_ZN4entt8internal23compressed_pair_elementISt6vectorISt4pairImmESaIS4_EELm0EED2Ev.exit.i, %bb.td
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void

bb.te:                                            ; preds = %_ZN7testing7MessageD2Ev.exit954, %bb.sr
  %.pn360.pn.pn = phi { ptr, i32 } [ %.pn360.pn, %_ZN7testing7MessageD2Ev.exit954 ], [ %i.axp, %bb.sr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %105) #26
  br label %bb.tf

bb.tf:                                            ; preds = %bb.te, %bb.sq, %_ZN7testing7MessageD2Ev.exit928, %_ZN7testing7MessageD2Ev.exit908, %bb.pt, %bb.pd, %bb.op, %bb.oc, %bb.np, %bb.na, %bb.lu, %_ZN7testing7MessageD2Ev.exit804, %bb.kw, %_ZN7testing7MessageD2Ev.exit776, %bb.jt, %_ZN7testing7MessageD2Ev.exit748, %bb.iq, %bb.ia, %bb.hm, %bb.gy, %bb.gw, %_ZN7testing7MessageD2Ev.exit671, %bb.fr, %bb.ez, %_ZN7testing7MessageD2Ev.exit599, %bb.du, %bb.dc, %_ZN7testing7MessageD2Ev.exit527, %bb.bx, %bb.bf, %bb.be, %_ZN7testing7MessageD2Ev.exit456, %bb.z, %bb.h
  %.pn364 = phi { ptr, i32 } [ %i.uv, %bb.gy ], [ %.pn360.pn.pn, %bb.te ], [ %.pn354.pn.pn, %bb.sq ], [ %.pn347.pn.pn, %_ZN7testing7MessageD2Ev.exit928 ], [ %.pn341.pn.pn, %_ZN7testing7MessageD2Ev.exit908 ], [ %.pn337.pn.pn, %bb.pt ], [ %i.gm, %bb.bf ], [ %.pn333.pn.pn, %bb.pd ], [ %.pn329.pn.pn, %bb.op ], [ %.pn325.pn.pn, %bb.oc ], [ %.pn319.pn.pn, %bb.np ], [ %.pn312.pn.pn.pn, %bb.na ], [ %.pn302.pn.pn, %bb.lu ], [ %.pn297.pn.pn, %_ZN7testing7MessageD2Ev.exit804 ], [ %.pn293.pn.pn, %bb.kw ], [ %.pn288.pn.pn, %_ZN7testing7MessageD2Ev.exit776 ], [ %.pn284.pn.pn, %bb.jt ], [ %.pn279.pn.pn, %_ZN7testing7MessageD2Ev.exit748 ], [ %.pn275.pn.pn, %bb.iq ], [ %.pn271.pn.pn, %bb.ia ], [ %.pn267.pn.pn, %bb.hm ], [ %.pn263.pn.pn, %bb.gw ], [ %.pn258.pn.pn, %_ZN7testing7MessageD2Ev.exit671 ], [ %.pn254.pn.pn, %bb.fr ], [ %.pn250.pn.pn, %bb.ez ], [ %.pn245.pn.pn, %_ZN7testing7MessageD2Ev.exit599 ], [ %.pn241.pn.pn, %bb.du ], [ %.pn237.pn.pn, %bb.dc ], [ %.pn232.pn.pn, %_ZN7testing7MessageD2Ev.exit527 ], [ %.pn228.pn.pn, %bb.bx ], [ %.pn224.pn.pn, %bb.be ], [ %.pn219.pn.pn, %_ZN7testing7MessageD2Ev.exit456 ], [ %.pn.pn.pn, %bb.z ], [ %i.br, %bb.h ]
  call void @_ZN4entt9dense_setImSt8identitySt8equal_toIvESaImEED2Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt9dense_setImSt8identitySt8equal_toIvESaImEE6rehashEm(ptr noundef nonnull align 8 dereferenceable(52) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !139
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !137
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 4
  %i.i = uitofp i64 %i.h to float
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load float, ptr %i.j, align 8, !tbaa !136
  %i.l = fdiv float %i.i, %i.k
  %i.m = fptoui float %i.l to i64
  %i.n = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.m)
  %i.o = tail call i64 @llvm.umax.i64(i64 %i.n, i64 8)
  %i.p = add i64 %i.o, -1
  %i.q = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.p, i1 false)
  %i.r = sub nuw nsw i64 64, %i.q
  %i.s = shl nuw i64 1, %i.r                      ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !103  ; 4 uses
  %i.v = load ptr, ptr %0, align 8, !tbaa !77     ; 5 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 3                   ; 4 uses
  %.not = icmp eq i64 %i.s, %i.z
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aa = icmp ugt i64 %i.s, %i.z
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ab = sub nuw i64 %i.s, %i.z
  tail call void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ab)
  %.pre = load ptr, ptr %0, align 8, !tbaa !126
  %.pre26 = load ptr, ptr %i.t, align 8, !tbaa !126
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.d:                                             ; preds = %bb.b
  %i.ac = icmp ult i64 %i.s, %i.z
  br i1 %i.ac, label %bb.e, label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.s ; 3 uses
  %.not.i.i = icmp eq ptr %i.u, %i.ad
  br i1 %.not.i.i, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.e
  store ptr %i.ad, ptr %i.t, align 8, !tbaa !103
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

_ZNSt6vectorImSaImEE6resizeEm.exit:               ; preds = %bb.c, %bb.d, %bb.e, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i
  %i.ae = phi ptr [ %.pre26, %bb.c ], [ %i.u, %bb.d ], [ %i.u, %bb.e ], [ %i.ad, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i ] ; 3 uses
  %i.af = phi ptr [ %.pre, %bb.c ], [ %i.v, %bb.d ], [ %i.v, %bb.e ], [ %i.v, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i ] ; 7 uses
  %i.ag = icmp eq ptr %i.af, %i.ae
  br i1 %i.ag, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.ah = ptrtoaddr ptr %i.ae to i64
  %i.ai = ptrtoaddr ptr %i.af to i64
  %i.aj = add i64 %i.ah, -8
  %i.ak = sub i64 %i.aj, %i.ai
  %i.al = and i64 %i.ak, -8
  %i.am = add i64 %i.al, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.af, i8 -1, i64 %i.am, i1 false), !tbaa !106
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !139 ; 2 uses
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !137 ; 5 uses
  %.not25 = icmp eq ptr %i.an, %i.ao
  br i1 %.not25, label %.loopexit, label %.lr.ph24

.lr.ph24:                                         ; preds = %._crit_edge
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 3 uses
  %i.as = ashr exact i64 %i.ar, 4                 ; 2 uses
  %i.at = ptrtoint ptr %i.ae to i64
  %i.au = ptrtoint ptr %i.af to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 3
  %i.ax = add nsw i64 %i.aw, -1                   ; 3 uses
  %i.ay = icmp eq i64 %i.ar, 16
  br i1 %i.ay, label %.epil.preheader, label %.lr.ph24.new

.lr.ph24.new:                                     ; preds = %.lr.ph24
  %unroll_iter = and i64 %i.as, -2
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph24.new
  %.022 = phi i64 [ 0, %.lr.ph24.new ], [ %i.bm, %bb.f ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph24.new ], [ %niter.next.1, %bb.f ]
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %.022 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !106
  %i.bc = and i64 %i.bb, %i.ax
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.bc ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !106
  store i64 %.022, ptr %i.bd, align 8, !tbaa !106
  store i64 %i.be, ptr %i.az, align 8, !tbaa !141
  %i.bf = or disjoint i64 %.022, 1                ; 2 uses
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.bf ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !106
  %i.bj = and i64 %i.bi, %i.ax
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.bj ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !106
  store i64 %i.bf, ptr %i.bk, align 8, !tbaa !106
  store i64 %i.bl, ptr %i.bg, align 8, !tbaa !141
  %i.bm = add nuw i64 %.022, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !916

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.f
  %i.bn = and i64 %i.ar, 16
  %lcmp.mod.not = icmp eq i64 %i.bn, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph24
  %.022.epil.init = phi i64 [ 0, %.lr.ph24 ], [ %i.bm, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod32 = trunc i64 %i.as to i1
  tail call void @llvm.assume(i1 %lcmp.mod32)
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %.022.epil.init ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !106
  %i.br = and i64 %i.bq, %i.ax
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.br ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !106
  store i64 %.022.epil.init, ptr %i.bs, align 8, !tbaa !106
  store i64 %i.bt, ptr %i.bo, align 8, !tbaa !141
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt9dense_setImSt8identitySt8equal_toIvESaImEE5clearEv(ptr noundef nonnull align 8 dereferenceable(52) %0) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !77     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !103
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt6vectorImSaImEE5clearEv.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.a
  store ptr %i.a, ptr %i.b, align 8, !tbaa !103
end_hunk_3

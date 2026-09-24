Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/view?download=true
inline.NumInlined: 14012
inline.NumDeleted: 4156
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_ZN34ViewSingleStorage_SwapStorage_Test8TestBodyEv:bb.a
  call void @_ZN4entt13basic_storageIiNS_6entityESaIiEED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.r) #26
  call void @_ZN4entt13basic_storageIiNS_6entityESaIiEED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(208) %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %.pn136.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal11CmpHelperNEIPKN4entt13basic_storageIiNS2_6entityESaIiEEEDnEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !154
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN7testing8internal18CmpHelperOpFailureIPKN4entt13basic_storageIiNS2_6entityESaIiEEEDnEENS_15AssertionResultEPKcSB_RKT_RKT0_SB_(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.332)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN36ViewSingleStorage_StorageEntity_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.entt::basic_storage.169", align 8 ; 23 uses
  %2 = alloca %"class.entt::basic_view.170", align 8 ; 42 uses
  %3 = alloca %"struct.std::array", align 4       ; 14 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %11 = alloca %"struct.entt::internal::sparse_set_iterator", align 8 ; 7 uses
  %12 = alloca %"struct.entt::internal::sparse_set_iterator", align 8 ; 9 uses
  %13 = alloca %"class.testing::Message", align 8 ; 7 uses
  %14 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %15 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  %16 = alloca %"class.testing::Message", align 8 ; 7 uses
  %17 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %18 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %19 = alloca %"class.testing::Message", align 8 ; 7 uses
  %20 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %21 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %22 = alloca %"class.testing::Message", align 8 ; 7 uses
  %23 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %25 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %26 = alloca %"class.testing::Message", align 8 ; 7 uses
  %27 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %29 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %30 = alloca %"class.testing::Message", align 8 ; 7 uses
  %31 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %33 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %34 = alloca %"class.testing::Message", align 8 ; 7 uses
  %35 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %37 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %38 = alloca %"class.testing::Message", align 8 ; 7 uses
  %39 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %41 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %42 = alloca %"struct.entt::internal::sparse_set_iterator", align 8 ; 6 uses
  %43 = alloca %"struct.entt::internal::sparse_set_iterator", align 8 ; 6 uses
  %44 = alloca %"class.testing::Message", align 8 ; 7 uses
  %45 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %46 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %47 = alloca %"class.testing::Message", align 8 ; 7 uses
  %48 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %49 = alloca %"class.testing::AssertionResult", align 8 ; 11 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca i32, align 4                      ; 7 uses
  %50 = alloca %"class.testing::Message", align 8 ; 7 uses
  %51 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %52 = alloca %"class.testing::AssertionResult", align 8 ; 11 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  %53 = alloca %"class.testing::Message", align 8 ; 7 uses
  %54 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %55 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %56 = alloca %"class.testing::Message", align 8 ; 7 uses
  %57 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %58 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %59 = alloca %"class.testing::Message", align 8 ; 7 uses
  %60 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %61 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %62 = alloca %"struct.entt::internal::sparse_set_iterator", align 8 ; 6 uses
  %63 = alloca %"struct.entt::internal::sparse_set_iterator", align 8 ; 6 uses
  %64 = alloca %"class.testing::Message", align 8 ; 7 uses
  %65 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %66 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %67 = alloca %"struct.entt::internal::sparse_set_iterator", align 8 ; 6 uses
  %68 = alloca %"struct.entt::internal::sparse_set_iterator", align 8 ; 6 uses
  %69 = alloca %"class.testing::Message", align 8 ; 7 uses
  %70 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %71 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %72 = alloca %"class.std::reverse_iterator", align 8 ; 7 uses
  %73 = alloca %"class.std::reverse_iterator", align 8 ; 6 uses
  %74 = alloca %"class.testing::Message", align 8 ; 7 uses
  %75 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %76 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %77 = alloca %"class.std::reverse_iterator", align 8 ; 7 uses
  %78 = alloca %"class.std::reverse_iterator", align 8 ; 6 uses
  %79 = alloca %"class.testing::Message", align 8 ; 7 uses
  %80 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %81 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.m = alloca i64, align 8                      ; 5 uses
  %i.n = alloca i32, align 4                      ; 5 uses
  %82 = alloca %"class.testing::Message", align 8 ; 7 uses
  %83 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %84 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.o = alloca i64, align 8                      ; 5 uses
  %i.p = alloca i32, align 4                      ; 5 uses
  %85 = alloca %"class.testing::Message", align 8 ; 7 uses
  %86 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %87 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %88 = alloca %"class.std::reverse_iterator", align 8 ; 7 uses
  %89 = alloca %"class.std::reverse_iterator", align 8 ; 8 uses
  %90 = alloca %"class.testing::Message", align 8 ; 7 uses
  %91 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %92 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %93 = alloca %"class.std::reverse_iterator", align 8 ; 7 uses
  %94 = alloca %"class.std::reverse_iterator", align 8 ; 6 uses
  %95 = alloca %"class.testing::Message", align 8 ; 7 uses
  %96 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %97 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.q = alloca i32, align 4                      ; 5 uses
  %98 = alloca %"class.testing::Message", align 8 ; 7 uses
  %99 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %100 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.r = alloca i32, align 4                      ; 5 uses
  %101 = alloca %"class.testing::Message", align 8 ; 7 uses
  %102 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %103 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %104 = alloca %"struct.entt::internal::sparse_set_iterator", align 8 ; 6 uses
  %105 = alloca %"struct.entt::internal::sparse_set_iterator", align 8 ; 6 uses
  %106 = alloca %"class.testing::Message", align 8 ; 7 uses
  %107 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %108 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %109 = alloca %"struct.entt::internal::sparse_set_iterator", align 8 ; 6 uses
  %110 = alloca %"struct.entt::internal::sparse_set_iterator", align 8 ; 6 uses
  %111 = alloca %"class.testing::Message", align 8 ; 7 uses
  %112 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %113 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %114 = alloca %"struct.entt::internal::sparse_set_iterator", align 8 ; 6 uses
  %115 = alloca %"struct.entt::internal::sparse_set_iterator", align 8 ; 6 uses
  %116 = alloca %"class.testing::Message", align 8 ; 7 uses
  %117 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %118 = alloca %"class.std::tuple.112", align 4  ; 6 uses
  %119 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %120 = alloca %"class.testing::Message", align 8 ; 7 uses
  %121 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %122 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.s = alloca i64, align 8                      ; 5 uses
  %i.t = alloca i32, align 4                      ; 5 uses
  %123 = alloca %"class.testing::Message", align 8 ; 7 uses
  %124 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %125 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.u = alloca i64, align 8                      ; 5 uses
  %i.v = alloca i32, align 4                      ; 5 uses
  %126 = alloca %"class.testing::Message", align 8 ; 7 uses
  %127 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %128 = alloca %"class.testing::AssertionResult", align 8 ; 12 uses
  %129 = alloca %"class.testing::Message", align 8 ; 7 uses
  %130 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %131 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %132 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %133 = alloca %"class.testing::Message", align 8 ; 7 uses
  %134 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %135 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %136 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.w = alloca i64, align 8                      ; 5 uses
  %i.x = alloca i32, align 4                      ; 5 uses
  %137 = alloca %"class.testing::Message", align 8 ; 7 uses
  %138 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %139 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.y = alloca i64, align 8                      ; 5 uses
  %i.z = alloca i32, align 4                      ; 5 uses
  %140 = alloca %"class.testing::Message", align 8 ; 7 uses
  %141 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %142 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.aa = alloca i32, align 4                     ; 5 uses
  %i.ab = alloca i32, align 4                     ; 5 uses
  %143 = alloca %"class.testing::Message", align 8 ; 7 uses
  %144 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %145 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.ac = alloca i32, align 4                     ; 5 uses
  %i.ad = alloca i32, align 4                     ; 5 uses
  %146 = alloca %"class.testing::Message", align 8 ; 7 uses
  %147 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.ae = load atomic i8, ptr @_ZGVZN4entt7type_idIvEERKNS_9type_infoEvE8instance acquire, align 8
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %bb.b, label %bb.d, !prof !55

bb.b:                                             ; preds = %bb.a
  %i.ag = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIvEERKNS_9type_infoEvE8instance) #26
  %.not.i.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt9type_infoC2IvEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIvEERKNS_9type_infoEvE8instance) #26
  %i.ah = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIvEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIvEERKNS_9type_infoEvE8instance) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ai, i8 0, i64 48, i1 false)
  store ptr @_ZZN4entt7type_idIvEERKNS_9type_infoEvE8instance, ptr %i.aj, align 8, !tbaa !68
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i8 2, ptr %i.ak, align 8, !tbaa !69
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  store i64 0, ptr %i.al, align 8, !tbaa !70
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4entt13basic_storageINS_6entityES1_SaIS1_EEE, i64 16), ptr %1, align 8, !tbaa !43
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store ptr null, ptr %2, align 8, !tbaa !160
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  store i64 1, ptr %i.am, align 8, !tbaa !162
  %i.ao = invoke { ptr, i64 } @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE11try_emplaceES1_bPKv(ptr noundef nonnull align 8 dereferenceable(88) %1, i32 noundef 0, i1 noundef zeroext true, ptr noundef null)
          to label %bb.e unwind label %bb.m       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = extractvalue { ptr, i64 } %i.ao, 0
  %i.ar = extractvalue { ptr, i64 } %i.ao, 1
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !81
  %i.at = getelementptr [4 x i8], ptr %i.as, i64 %i.ar
  %i.au = getelementptr i8, ptr %i.at, i64 -4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !102
  store i32 %i.av, ptr %3, align 4, !tbaa !102
  %i.aw = load i64, ptr %i.al, align 8, !tbaa !70 ; 2 uses
  %i.ax = load ptr, ptr %i.ap, align 8, !tbaa !80
  %i.ay = load ptr, ptr %i.an, align 8, !tbaa !81 ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 2
  %i.bd = icmp eq i64 %i.aw, %i.bc
  br i1 %i.bd, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.be = load i64, ptr %i.am, align 8, !tbaa !162 ; 3 uses
  %i.bf = trunc i64 %i.be to i32
  %i.bg = and i32 %i.bf, 1048575                  ; 3 uses
  %i.bh = icmp ne i32 %i.bg, 1048575
  %i.bi = zext i1 %i.bh to i64
  %i.bj = add i64 %i.be, %i.bi                    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !127
  %i.bm = load ptr, ptr %i.ai, align 8, !tbaa !103 ; 2 uses
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = ashr exact i64 %i.bp, 3                 ; 2 uses
  %i.br = and i64 %i.be, 1048575                  ; 2 uses
  %i.bs = lshr i64 %i.br, 12                      ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.bq
  br i1 %i.bt, label %.lr.ph.i.i505, label %_ZN4entt13basic_storageINS_6entityES1_SaIS1_EE4nextEv.exit.i502

.lr.ph.i.i505:                                    ; preds = %bb.f, %bb.g
  %i.bu = phi i64 [ %i.ci, %bb.g ], [ %i.bs, %bb.f ]
  %i.bv = phi i64 [ %i.ch, %bb.g ], [ %i.br, %bb.f ]
  %.05.i.i506 = phi i32 [ %i.cd, %bb.g ], [ %i.bg, %bb.f ] ; 3 uses
  %storemerge4.i.i507 = phi i64 [ %i.cg, %bb.g ], [ %i.bj, %bb.f ] ; 5 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bu
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !99 ; 2 uses
  %.not.i.i.i.i508 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i508, label %_ZN4entt13basic_storageINS_6entityES1_SaIS1_EE4nextEv.exit.i502, label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE7currentES1_.exit.i.i509

_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE7currentES1_.exit.i.i509: ; preds = %.lr.ph.i.i505
  %i.by = and i64 %i.bv, 4095
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !102
  %.not.i.i510 = icmp ugt i32 %i.ca, -1048577
  %i.cb = icmp eq i32 %.05.i.i506, 1048575
  %or.cond.i.i511 = or i1 %i.cb, %.not.i.i510
  br i1 %or.cond.i.i511, label %_ZN4entt13basic_storageINS_6entityES1_SaIS1_EE4nextEv.exit.i502, label %bb.g

bb.g:                                             ; preds = %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE7currentES1_.exit.i.i509
  %i.cc = trunc i64 %storemerge4.i.i507 to i32
  %i.cd = and i32 %i.cc, 1048575                  ; 3 uses
  %i.ce = icmp ne i32 %i.cd, 1048575
  %i.cf = zext i1 %i.ce to i64
  %i.cg = add i64 %storemerge4.i.i507, %i.cf      ; 2 uses
  %i.ch = and i64 %storemerge4.i.i507, 1048575    ; 2 uses
  %i.ci = lshr i64 %i.ch, 12                      ; 2 uses
  %i.cj = icmp ult i64 %i.ci, %i.bq
  br i1 %i.cj, label %.lr.ph.i.i505, label %_ZN4entt13basic_storageINS_6entityES1_SaIS1_EE4nextEv.exit.i502, !llvm.loop !18

_ZN4entt13basic_storageINS_6entityES1_SaIS1_EE4nextEv.exit.i502: ; preds = %bb.g, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE7currentES1_.exit.i.i509, %.lr.ph.i.i505, %bb.f
  %storemerge.lcssa.i.i503 = phi i64 [ %i.bj, %bb.f ], [ %storemerge4.i.i507, %.lr.ph.i.i505 ], [ %i.cg, %bb.g ], [ %storemerge4.i.i507, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE7currentES1_.exit.i.i509 ]
  %.0.lcssa.i.i504 = phi i32 [ %i.bg, %bb.f ], [ %.05.i.i506, %.lr.ph.i.i505 ], [ %i.cd, %bb.g ], [ %.05.i.i506, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE7currentES1_.exit.i.i509 ]
  store i64 %storemerge.lcssa.i.i503, ptr %i.am, align 8, !tbaa !162
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.aw
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !102
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN4entt13basic_storageINS_6entityES1_SaIS1_EE4nextEv.exit.i502
  %i.cm = phi i32 [ %.0.lcssa.i.i504, %_ZN4entt13basic_storageINS_6entityES1_SaIS1_EE4nextEv.exit.i502 ], [ %i.cl, %bb.h ]
  %i.cn = invoke { ptr, i64 } @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE11try_emplaceES1_bPKv(ptr noundef nonnull align 8 dereferenceable(88) %1, i32 noundef %i.cm, i1 noundef zeroext true, ptr noundef null)
          to label %bb.j unwind label %bb.m       ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.co = extractvalue { ptr, i64 } %i.cn, 0
  %i.cp = extractvalue { ptr, i64 } %i.cn, 1
  %i.cq = load ptr, ptr %i.co, align 8, !tbaa !81
  %i.cr = getelementptr [4 x i8], ptr %i.cq, i64 %i.cp
  %i.cs = getelementptr i8, ptr %i.cr, i64 -4
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !102
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 7 uses
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.cv = load ptr, ptr %2, align 8, !tbaa !160   ; 3 uses
  %.not.i.i513 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i513, label %_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE2EE5frontEv.exit.thread, label %_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE2EE5emptyEvQneT0_LS5_1E.exit.i

_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE2EE5emptyEvQneT0_LS5_1E.exit.i: ; preds = %bb.j
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 72
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !70 ; 2 uses
  %i.cy = icmp eq i64 %i.cx, 0
  br i1 %i.cy, label %_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE2EE5frontEv.exit.thread, label %_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE2EE5frontEv.exit

_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE2EE5frontEv.exit.thread: ; preds = %_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE2EE5emptyEvQneT0_LS5_1E.exit.i, %bb.j
  store i32 -1, ptr %i.a, align 4, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i32 -1, ptr %i.b, align 4, !tbaa !102
  br label %bb.k

_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE2EE5frontEv.exit: ; preds = %_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE2EE5emptyEvQneT0_LS5_1E.exit.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !81
  %i.db = getelementptr [4 x i8], ptr %i.da, i64 %i.cx
  %i.dc = getelementptr i8, ptr %i.db, i64 -4
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !102 ; 2 uses
  store i32 %i.dd, ptr %i.a, align 4, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i32 -1, ptr %i.b, align 4, !tbaa !102
  %i.de = icmp eq i32 %i.dd, -1
  br i1 %i.de, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE2EE5frontEv.exit.thread, %_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE2EE5frontEv.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4)
          to label %_ZN7testing8internal8EqHelper7CompareIN4entt6entityES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit unwind label %bb.n

bb.l:                                             ; preds = %_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE2EE5frontEv.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIN4entt6entityES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZN7testing8internal8EqHelper7CompareIN4entt6entityES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit unwind label %bb.n

_ZN7testing8internal8EqHelper7CompareIN4entt6entityES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.df = load i8, ptr %4, align 8, !tbaa !91, !range !92, !noundef !93
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %.critedge, label %bb.o

bb.m:                                             ; preds = %bb.bj, %bb.i, %bb.d, %bb.pr, %.critedge483
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ty

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.ac

bb.o:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt6entityES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !94 ; 2 uses
  %.not.i.i.i515 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i515, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.q
end_hunk_0
begin_hunk_1_@_ZN36ViewSingleStorage_StorageEntity_Test8TestBodyEv:bb.a
bb.ou:                                            ; preds = %bb.ot
  %i.ape = load ptr, ptr %i.apd, align 8, !tbaa !76
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit1002

_ZNK7testing15AssertionResult15failure_messageEv.exit1002: ; preds = %bb.ou, %bb.ot
  %i.apf = phi ptr [ %i.ape, %bb.ou ], [ @.str.319, %bb.ot ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %117, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 615, ptr noundef %i.apf)
          to label %bb.ov unwind label %bb.oy

bb.ov:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1002
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %117, ptr noundef nonnull align 8 dereferenceable(8) %116)
          to label %bb.ow unwind label %bb.oz

bb.ow:                                            ; preds = %bb.ov
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %117) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %117) #26
  %i.apg = load ptr, ptr %116, align 8, !tbaa !79 ; 3 uses
  %.not.i.i1003 = icmp eq ptr %i.apg, null
  br i1 %.not.i.i1003, label %_ZN7testing7MessageD2Ev.exit1005, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1004

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1004: ; preds = %bb.ow
  %i.aph = load ptr, ptr %i.apg, align 8, !tbaa !43
  %i.api = getelementptr inbounds nuw i8, ptr %i.aph, i64 8
  %i.apj = load ptr, ptr %i.api, align 8
  call void %i.apj(ptr noundef nonnull align 8 dereferenceable(128) %i.apg) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1005

_ZN7testing7MessageD2Ev.exit1005:                 ; preds = %bb.ow, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1004
  call void @llvm.lifetime.end.p0(ptr nonnull %116) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %113) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %113) #26
  br label %bb.ts

bb.ox:                                            ; preds = %bb.os
  %i.apk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1008

bb.oy:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1002
  %i.apl = landingpad { ptr, i32 }
          cleanup
  br label %bb.pa

bb.oz:                                            ; preds = %bb.ov
  %i.apm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %117) #26
  br label %bb.pa

bb.pa:                                            ; preds = %bb.oz, %bb.oy
  %.pn379 = phi { ptr, i32 } [ %i.apm, %bb.oz ], [ %i.apl, %bb.oy ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %117) #26
  %i.apn = load ptr, ptr %116, align 8, !tbaa !79 ; 3 uses
  %.not.i.i1006 = icmp eq ptr %i.apn, null
  br i1 %.not.i.i1006, label %_ZN7testing7MessageD2Ev.exit1008, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1007

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1007: ; preds = %bb.pa
  %i.apo = load ptr, ptr %i.apn, align 8, !tbaa !43
  %i.app = getelementptr inbounds nuw i8, ptr %i.apo, i64 8
  %i.apq = load ptr, ptr %i.app, align 8
  call void %i.apq(ptr noundef nonnull align 8 dereferenceable(128) %i.apn) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1008

_ZN7testing7MessageD2Ev.exit1008:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1007, %bb.pa, %bb.ox
  %.pn379.pn = phi { ptr, i32 } [ %i.apk, %bb.ox ], [ %.pn379, %bb.pa ], [ %.pn379, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1007 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %116) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %113) #26
  br label %bb.pc

bb.pb:                                            ; preds = %bb.op
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %113) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %113) #26
  %i.apr = load ptr, ptr %2, align 8, !tbaa !160, !noalias !762 ; 4 uses
  %.not.i1009 = icmp eq ptr %i.apr, null
  br i1 %.not.i1009, label %.critedge483, label %_ZNK4entt10basic_viewINS_5get_tIJNS_13basic_storageINS_6entityES3_SaIS3_EEEEEENS_9exclude_tIJEEEE4eachEv.exit

_ZNK4entt10basic_viewINS_5get_tIJNS_13basic_storageINS_6entityES3_SaIS3_EEEEEENS_9exclude_tIJEEEE4eachEv.exit: ; preds = %bb.pb
  %i.aps = getelementptr inbounds nuw i8, ptr %i.apr, i64 32
  %i.apt = getelementptr inbounds nuw i8, ptr %i.apr, i64 72
  %i.apu = load i64, ptr %i.apt, align 8, !tbaa !70, !noalias !763 ; 2 uses
  %i.apv = icmp eq i64 %i.apu, 0
  br i1 %i.apv, label %.critedge483, label %.lr.ph

bb.pc:                                            ; preds = %_ZN7testing7MessageD2Ev.exit1008, %bb.or
  %.pn379.pn.pn = phi { ptr, i32 } [ %.pn379.pn, %_ZN7testing7MessageD2Ev.exit1008 ], [ %i.apb, %bb.or ]
  call void @llvm.lifetime.end.p0(ptr nonnull %113) #26
  br label %bb.ty

.lr.ph:                                           ; preds = %_ZNK4entt10basic_viewINS_5get_tIJNS_13basic_storageINS_6entityES3_SaIS3_EEEEEENS_9exclude_tIJEEEE4eachEv.exit, %bb.po
  %.sroa.6.01170 = phi i64 [ %i.aqs, %bb.po ], [ %i.apu, %_ZNK4entt10basic_viewINS_5get_tIJNS_13basic_storageINS_6entityES3_SaIS3_EEEEEENS_9exclude_tIJEEEE4eachEv.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %118) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !764)
  %i.apw = load ptr, ptr %i.aps, align 8, !tbaa !81, !noalias !764
  %i.apx = getelementptr [4 x i8], ptr %i.apw, i64 %.sroa.6.01170
  %i.apy = getelementptr i8, ptr %i.apx, i64 -4
  %i.apz = load i32, ptr %i.apy, align 4, !tbaa !102, !noalias !764
  store i32 %i.apz, ptr %118, align 4, !tbaa !133, !alias.scope !764
  call void @llvm.lifetime.start.p0(ptr nonnull %119) #26
  invoke void @_ZN7testing8internal8EqHelper7CompareIN4entt6entityES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %119, ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.88, ptr noundef nonnull align 4 dereferenceable(4) %118, ptr noundef nonnull align 4 dereferenceable(4) %i.cu)
          to label %bb.pd unwind label %bb.pe

bb.pd:                                            ; preds = %.lr.ph
  %i.aqa = load i8, ptr %119, align 8, !tbaa !91, !range !92, !noundef !93
  %i.aqb = trunc nuw i8 %i.aqa to i1
  br i1 %i.aqb, label %bb.po, label %bb.pf

bb.pe:                                            ; preds = %.lr.ph
  %i.aqc = landingpad { ptr, i32 }
          cleanup
  br label %bb.pp

bb.pf:                                            ; preds = %bb.pd
  call void @llvm.lifetime.start.p0(ptr nonnull %120) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %120)
          to label %bb.pg unwind label %bb.pk

bb.pg:                                            ; preds = %bb.pf
  call void @llvm.lifetime.start.p0(ptr nonnull %121) #26
  %i.aqd = getelementptr inbounds nuw i8, ptr %119, i64 8
  %i.aqe = load ptr, ptr %i.aqd, align 8, !tbaa !94 ; 2 uses
  %.not.i.i.i1011 = icmp eq ptr %i.aqe, null
  br i1 %.not.i.i.i1011, label %_ZNK7testing15AssertionResult15failure_messageEv.exit1012, label %bb.ph

bb.ph:                                            ; preds = %bb.pg
  %i.aqf = load ptr, ptr %i.aqe, align 8, !tbaa !76
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit1012

_ZNK7testing15AssertionResult15failure_messageEv.exit1012: ; preds = %bb.ph, %bb.pg
  %i.aqg = phi ptr [ %i.aqf, %bb.ph ], [ @.str.319, %bb.pg ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %121, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 618, ptr noundef %i.aqg)
          to label %bb.pi unwind label %bb.pl

bb.pi:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1012
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %121, ptr noundef nonnull align 8 dereferenceable(8) %120)
          to label %bb.pj unwind label %bb.pm

bb.pj:                                            ; preds = %bb.pi
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %121) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %121) #26
  %i.aqh = load ptr, ptr %120, align 8, !tbaa !79 ; 3 uses
  %.not.i.i1013 = icmp eq ptr %i.aqh, null
  br i1 %.not.i.i1013, label %bb.pq, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1014

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1014: ; preds = %bb.pj
  %i.aqi = load ptr, ptr %i.aqh, align 8, !tbaa !43
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aqi, i64 8
  %i.aqk = load ptr, ptr %i.aqj, align 8
  call void %i.aqk(ptr noundef nonnull align 8 dereferenceable(128) %i.aqh) #26, !inline_history !0
  br label %bb.pq

bb.pk:                                            ; preds = %bb.pf
  %i.aql = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1018

bb.pl:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1012
  %i.aqm = landingpad { ptr, i32 }
          cleanup
  br label %bb.pn

bb.pm:                                            ; preds = %bb.pi
  %i.aqn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %121) #26
  br label %bb.pn

bb.pn:                                            ; preds = %bb.pm, %bb.pl
  %.pn383 = phi { ptr, i32 } [ %i.aqn, %bb.pm ], [ %i.aqm, %bb.pl ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %121) #26
  %i.aqo = load ptr, ptr %120, align 8, !tbaa !79 ; 3 uses
  %.not.i.i1016 = icmp eq ptr %i.aqo, null
  br i1 %.not.i.i1016, label %_ZN7testing7MessageD2Ev.exit1018, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1017

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1017: ; preds = %bb.pn
  %i.aqp = load ptr, ptr %i.aqo, align 8, !tbaa !43
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aqp, i64 8
  %i.aqr = load ptr, ptr %i.aqq, align 8
  call void %i.aqr(ptr noundef nonnull align 8 dereferenceable(128) %i.aqo) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1018

_ZN7testing7MessageD2Ev.exit1018:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1017, %bb.pn, %bb.pk
  %.pn383.pn = phi { ptr, i32 } [ %i.aql, %bb.pk ], [ %.pn383, %bb.pn ], [ %.pn383, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1017 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %120) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %119) #26
  br label %bb.pp

bb.po:                                            ; preds = %bb.pd
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %119) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %119) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %118) #26
  %i.aqs = add nsw i64 %.sroa.6.01170, -1         ; 2 uses
  %i.aqt = icmp eq i64 %i.aqs, 0
  br i1 %i.aqt, label %.critedge483.loopexit, label %.lr.ph

bb.pp:                                            ; preds = %_ZN7testing7MessageD2Ev.exit1018, %bb.pe
  %.pn383.pn.pn = phi { ptr, i32 } [ %.pn383.pn, %_ZN7testing7MessageD2Ev.exit1018 ], [ %i.aqc, %bb.pe ]
  call void @llvm.lifetime.end.p0(ptr nonnull %119) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %118) #26
  br label %bb.ty

bb.pq:                                            ; preds = %bb.pj, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1014
  call void @llvm.lifetime.end.p0(ptr nonnull %120) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %119) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %119) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %118) #26
  br label %bb.ts

.critedge483.loopexit:                            ; preds = %bb.po
  %.val.pre = load ptr, ptr %2, align 8, !tbaa !160, !noalias !765
  br label %.critedge483

.critedge483:                                     ; preds = %bb.pb, %.critedge483.loopexit, %_ZNK4entt10basic_viewINS_5get_tIJNS_13basic_storageINS_6entityES3_SaIS3_EEEEEENS_9exclude_tIJEEEE4eachEv.exit
  %.val = phi ptr [ %.val.pre, %.critedge483.loopexit ], [ %i.apr, %_ZNK4entt10basic_viewINS_5get_tIJNS_13basic_storageINS_6entityES3_SaIS3_EEEEEENS_9exclude_tIJEEEE4eachEv.exit ], [ null, %bb.pb ]
  invoke fastcc void @"_ZNK4entt10basic_viewINS_5get_tIJNS_13basic_storageINS_6entityES3_SaIS3_EEEEEENS_9exclude_tIJEEEE4eachIZN36ViewSingleStorage_StorageEntity_Test8TestBodyEvE3$_0EEvT_"(ptr %.val, ptr %3)
          to label %bb.pr unwind label %bb.m

bb.pr:                                            ; preds = %.critedge483
  %.val501 = load ptr, ptr %2, align 8, !tbaa !160
  invoke fastcc void @"_ZNK4entt10basic_viewINS_5get_tIJNS_13basic_storageINS_6entityES3_SaIS3_EEEEEENS_9exclude_tIJEEEE4eachIZN36ViewSingleStorage_StorageEntity_Test8TestBodyEvE3$_1EEvT_"(ptr %.val501, ptr %1, ptr %3)
          to label %bb.ps unwind label %bb.m

bb.ps:                                            ; preds = %bb.pr
  call void @llvm.lifetime.start.p0(ptr nonnull %122) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #26
  %i.aqu = load ptr, ptr %2, align 8, !tbaa !160  ; 2 uses
  %.not.i1019 = icmp eq ptr %i.aqu, null
  br i1 %.not.i1019, label %_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE2EE4sizeEvQneT0_LS5_1E.exit1020, label %bb.pt

bb.pt:                                            ; preds = %bb.ps
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aqu, i64 72
  %i.aqw = load i64, ptr %i.aqv, align 8, !tbaa !70
  br label %_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE2EE4sizeEvQneT0_LS5_1E.exit1020

_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE2EE4sizeEvQneT0_LS5_1E.exit1020: ; preds = %bb.ps, %bb.pt
  %i.aqx = phi i64 [ %i.aqw, %bb.pt ], [ 0, %bb.ps ]
  store i64 %i.aqx, ptr %i.s, align 8, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #26
  store i32 0, ptr %i.t, align 4, !tbaa !98
  invoke void @_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %122, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.42, ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 4 dereferenceable(4) %i.t)
          to label %bb.pu unwind label %bb.pv

bb.pu:                                            ; preds = %_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE2EE4sizeEvQneT0_LS5_1E.exit1020
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #26
  %i.aqy = load i8, ptr %122, align 8, !tbaa !91, !range !92, !noundef !93
  %i.aqz = trunc nuw i8 %i.aqy to i1
  br i1 %i.aqz, label %bb.qf, label %bb.pw

bb.pv:                                            ; preds = %_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE2EE4sizeEvQneT0_LS5_1E.exit1020
  %i.ara = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #26
  br label %bb.qh

bb.pw:                                            ; preds = %bb.pu
  call void @llvm.lifetime.start.p0(ptr nonnull %123) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %123)
          to label %bb.px unwind label %bb.qb

bb.px:                                            ; preds = %bb.pw
  call void @llvm.lifetime.start.p0(ptr nonnull %124) #26
  %i.arb = getelementptr inbounds nuw i8, ptr %122, i64 8
  %i.arc = load ptr, ptr %i.arb, align 8, !tbaa !94 ; 2 uses
  %.not.i.i.i1021 = icmp eq ptr %i.arc, null
  br i1 %.not.i.i.i1021, label %_ZNK7testing15AssertionResult15failure_messageEv.exit1022, label %bb.py

bb.py:                                            ; preds = %bb.px
  %i.ard = load ptr, ptr %i.arc, align 8, !tbaa !76
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit1022

_ZNK7testing15AssertionResult15failure_messageEv.exit1022: ; preds = %bb.py, %bb.px
  %i.are = phi ptr [ %i.ard, %bb.py ], [ @.str.319, %bb.px ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %124, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 629, ptr noundef %i.are)
          to label %bb.pz unwind label %bb.qc

bb.pz:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1022
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %124, ptr noundef nonnull align 8 dereferenceable(8) %123)
          to label %bb.qa unwind label %bb.qd

bb.qa:                                            ; preds = %bb.pz
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %124) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %124) #26
  %i.arf = load ptr, ptr %123, align 8, !tbaa !79 ; 3 uses
  %.not.i.i1023 = icmp eq ptr %i.arf, null
  br i1 %.not.i.i1023, label %_ZN7testing7MessageD2Ev.exit1025, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1024

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1024: ; preds = %bb.qa
  %i.arg = load ptr, ptr %i.arf, align 8, !tbaa !43
  %i.arh = getelementptr inbounds nuw i8, ptr %i.arg, i64 8
  %i.ari = load ptr, ptr %i.arh, align 8
  call void %i.ari(ptr noundef nonnull align 8 dereferenceable(128) %i.arf) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1025

_ZN7testing7MessageD2Ev.exit1025:                 ; preds = %bb.qa, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1024
  call void @llvm.lifetime.end.p0(ptr nonnull %123) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %122) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %122) #26
  br label %bb.ts

bb.qb:                                            ; preds = %bb.pw
  %i.arj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1028

bb.qc:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1022
  %i.ark = landingpad { ptr, i32 }
          cleanup
  br label %bb.qe

bb.qd:                                            ; preds = %bb.pz
  %i.arl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %124) #26
  br label %bb.qe

bb.qe:                                            ; preds = %bb.qd, %bb.qc
  %.pn387 = phi { ptr, i32 } [ %i.arl, %bb.qd ], [ %i.ark, %bb.qc ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %124) #26
  %i.arm = load ptr, ptr %123, align 8, !tbaa !79 ; 3 uses
  %.not.i.i1026 = icmp eq ptr %i.arm, null
  br i1 %.not.i.i1026, label %_ZN7testing7MessageD2Ev.exit1028, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1027

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1027: ; preds = %bb.qe
  %i.arn = load ptr, ptr %i.arm, align 8, !tbaa !43
  %i.aro = getelementptr inbounds nuw i8, ptr %i.arn, i64 8
  %i.arp = load ptr, ptr %i.aro, align 8
  call void %i.arp(ptr noundef nonnull align 8 dereferenceable(128) %i.arm) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1028

_ZN7testing7MessageD2Ev.exit1028:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1027, %bb.qe, %bb.qb
  %.pn387.pn = phi { ptr, i32 } [ %i.arj, %bb.qb ], [ %.pn387, %bb.qe ], [ %.pn387, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1027 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %123) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %122) #26
  br label %bb.qh

bb.qf:                                            ; preds = %bb.pu
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %122) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %122) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %125) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #26
  %i.arq = load ptr, ptr %2, align 8, !tbaa !160  ; 2 uses
  %i.arr = getelementptr inbounds nuw i8, ptr %i.arq, i64 32
  %i.ars = getelementptr inbounds nuw i8, ptr %i.arq, i64 40
  %i.art = load ptr, ptr %i.ars, align 8, !tbaa !80
  %i.aru = load ptr, ptr %i.arr, align 8, !tbaa !81
  %i.arv = ptrtoint ptr %i.art to i64
  %i.arw = ptrtoint ptr %i.aru to i64
  %i.arx = sub i64 %i.arv, %i.arw
  %i.ary = ashr exact i64 %i.arx, 2
  store i64 %i.ary, ptr %i.u, align 8, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #26
  store i32 2, ptr %i.v, align 4, !tbaa !98
  invoke void @_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %125, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.24, ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 4 dereferenceable(4) %i.v)
          to label %bb.qg unwind label %bb.qi

bb.qg:                                            ; preds = %bb.qf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #26
  %i.arz = load i8, ptr %125, align 8, !tbaa !91, !range !92, !noundef !93
  %i.asa = trunc nuw i8 %i.arz to i1
  br i1 %i.asa, label %bb.qs, label %bb.qj

bb.qh:                                            ; preds = %_ZN7testing7MessageD2Ev.exit1028, %bb.pv
  %.pn387.pn.pn = phi { ptr, i32 } [ %.pn387.pn, %_ZN7testing7MessageD2Ev.exit1028 ], [ %i.ara, %bb.pv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %122) #26
  br label %bb.ty

bb.qi:                                            ; preds = %bb.qf
  %i.asb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #26
  br label %bb.qt

bb.qj:                                            ; preds = %bb.qg
  call void @llvm.lifetime.start.p0(ptr nonnull %126) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %126)
          to label %bb.qk unwind label %bb.qo

bb.qk:                                            ; preds = %bb.qj
  call void @llvm.lifetime.start.p0(ptr nonnull %127) #26
  %i.asc = getelementptr inbounds nuw i8, ptr %125, i64 8
  %i.asd = load ptr, ptr %i.asc, align 8, !tbaa !94 ; 2 uses
  %.not.i.i.i1029 = icmp eq ptr %i.asd, null
  br i1 %.not.i.i.i1029, label %_ZNK7testing15AssertionResult15failure_messageEv.exit1030, label %bb.ql

bb.ql:                                            ; preds = %bb.qk
  %i.ase = load ptr, ptr %i.asd, align 8, !tbaa !76
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit1030

_ZNK7testing15AssertionResult15failure_messageEv.exit1030: ; preds = %bb.ql, %bb.qk
  %i.asf = phi ptr [ %i.ase, %bb.ql ], [ @.str.319, %bb.qk ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %127, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 630, ptr noundef %i.asf)
          to label %bb.qm unwind label %bb.qp

bb.qm:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1030
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %127, ptr noundef nonnull align 8 dereferenceable(8) %126)
          to label %bb.qn unwind label %bb.qq

bb.qn:                                            ; preds = %bb.qm
end_hunk_1
begin_hunk_2_@_ZN36ViewSingleStorage_StorageEntity_Test8TestBodyEv:bb.a
  %i.axe = load i32, ptr %i.axd, align 4, !tbaa !102
  br label %_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE2EE5frontEv.exit1095

_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE2EE5frontEv.exit1095: ; preds = %bb.sq, %_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE2EE5emptyEvQneT0_LS5_1E.exit.i1094, %bb.sr
  %i.axf = phi i32 [ %i.axe, %bb.sr ], [ -1, %_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE2EE5emptyEvQneT0_LS5_1E.exit.i1094 ], [ -1, %bb.sq ]
  store i32 %i.axf, ptr %i.aa, align 4, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #26
  store i32 -1, ptr %i.ab, align 4, !tbaa !102
  invoke void @_ZN7testing8internal8EqHelper7CompareIN4entt6entityES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %142, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, ptr noundef nonnull align 4 dereferenceable(4) %i.aa, ptr noundef nonnull align 4 dereferenceable(4) %i.ab)
          to label %bb.ss unwind label %bb.su

bb.ss:                                            ; preds = %_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE2EE5frontEv.exit1095
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #26
  %i.axg = load i8, ptr %142, align 8, !tbaa !91, !range !92, !noundef !93
  %i.axh = trunc nuw i8 %i.axg to i1
  br i1 %i.axh, label %bb.te, label %bb.sv

bb.st:                                            ; preds = %_ZN7testing7MessageD2Ev.exit1092, %bb.sg
  %.pn411.pn.pn = phi { ptr, i32 } [ %.pn411.pn, %_ZN7testing7MessageD2Ev.exit1092 ], [ %i.awg, %bb.sg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %139) #26
  br label %bb.ty

bb.su:                                            ; preds = %_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE2EE5frontEv.exit1095
  %i.axi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #26
  br label %bb.th

bb.sv:                                            ; preds = %bb.ss
  call void @llvm.lifetime.start.p0(ptr nonnull %143) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %143)
          to label %bb.sw unwind label %bb.ta

bb.sw:                                            ; preds = %bb.sv
  call void @llvm.lifetime.start.p0(ptr nonnull %144) #26
  %i.axj = getelementptr inbounds nuw i8, ptr %142, i64 8
  %i.axk = load ptr, ptr %i.axj, align 8, !tbaa !94 ; 2 uses
  %.not.i.i.i1096 = icmp eq ptr %i.axk, null
  br i1 %.not.i.i.i1096, label %_ZNK7testing15AssertionResult15failure_messageEv.exit1097, label %bb.sx

bb.sx:                                            ; preds = %bb.sw
  %i.axl = load ptr, ptr %i.axk, align 8, !tbaa !76
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit1097

_ZNK7testing15AssertionResult15failure_messageEv.exit1097: ; preds = %bb.sx, %bb.sw
  %i.axm = phi ptr [ %i.axl, %bb.sx ], [ @.str.319, %bb.sw ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %144, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 638, ptr noundef %i.axm)
          to label %bb.sy unwind label %bb.tb

bb.sy:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1097
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %144, ptr noundef nonnull align 8 dereferenceable(8) %143)
          to label %bb.sz unwind label %bb.tc

bb.sz:                                            ; preds = %bb.sy
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %144) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %144) #26
  %i.axn = load ptr, ptr %143, align 8, !tbaa !79 ; 3 uses
  %.not.i.i1098 = icmp eq ptr %i.axn, null
  br i1 %.not.i.i1098, label %_ZN7testing7MessageD2Ev.exit1100, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1099

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1099: ; preds = %bb.sz
  %i.axo = load ptr, ptr %i.axn, align 8, !tbaa !43
  %i.axp = getelementptr inbounds nuw i8, ptr %i.axo, i64 8
  %i.axq = load ptr, ptr %i.axp, align 8
  call void %i.axq(ptr noundef nonnull align 8 dereferenceable(128) %i.axn) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1100

_ZN7testing7MessageD2Ev.exit1100:                 ; preds = %bb.sz, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1099
  call void @llvm.lifetime.end.p0(ptr nonnull %143) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %142) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %142) #26
  br label %bb.ts

bb.ta:                                            ; preds = %bb.sv
  %i.axr = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1103

bb.tb:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1097
  %i.axs = landingpad { ptr, i32 }
          cleanup
  br label %bb.td

bb.tc:                                            ; preds = %bb.sy
  %i.axt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %144) #26
  br label %bb.td

bb.td:                                            ; preds = %bb.tc, %bb.tb
  %.pn415 = phi { ptr, i32 } [ %i.axt, %bb.tc ], [ %i.axs, %bb.tb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %144) #26
  %i.axu = load ptr, ptr %143, align 8, !tbaa !79 ; 3 uses
  %.not.i.i1101 = icmp eq ptr %i.axu, null
  br i1 %.not.i.i1101, label %_ZN7testing7MessageD2Ev.exit1103, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1102

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1102: ; preds = %bb.td
  %i.axv = load ptr, ptr %i.axu, align 8, !tbaa !43
  %i.axw = getelementptr inbounds nuw i8, ptr %i.axv, i64 8
  %i.axx = load ptr, ptr %i.axw, align 8
  call void %i.axx(ptr noundef nonnull align 8 dereferenceable(128) %i.axu) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1103

_ZN7testing7MessageD2Ev.exit1103:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1102, %bb.td, %bb.ta
  %.pn415.pn = phi { ptr, i32 } [ %i.axr, %bb.ta ], [ %.pn415, %bb.td ], [ %.pn415, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1102 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %143) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %142) #26
  br label %bb.th

bb.te:                                            ; preds = %bb.ss
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %142) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %142) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %145) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #26
  %i.axy = load ptr, ptr %2, align 8, !tbaa !160  ; 3 uses
  %.not.i.i1104 = icmp eq ptr %i.axy, null
  br i1 %.not.i.i1104, label %_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE2EE4backEv.exit1106, label %_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE2EE5emptyEvQneT0_LS5_1E.exit.i1105

_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE2EE5emptyEvQneT0_LS5_1E.exit.i1105: ; preds = %bb.te
  %i.axz = getelementptr inbounds nuw i8, ptr %i.axy, i64 72
  %i.aya = load i64, ptr %i.axz, align 8, !tbaa !70
  %i.ayb = icmp eq i64 %i.aya, 0
  br i1 %i.ayb, label %_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE2EE4backEv.exit1106, label %bb.tf

bb.tf:                                            ; preds = %_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE2EE5emptyEvQneT0_LS5_1E.exit.i1105
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.axy, i64 32
  %i.ayd = load ptr, ptr %i.ayc, align 8, !tbaa !81
  %i.aye = load i32, ptr %i.ayd, align 4, !tbaa !102
  br label %_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE2EE4backEv.exit1106

_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE2EE4backEv.exit1106: ; preds = %bb.te, %_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE2EE5emptyEvQneT0_LS5_1E.exit.i1105, %bb.tf
  %i.ayf = phi i32 [ %i.aye, %bb.tf ], [ -1, %_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE2EE5emptyEvQneT0_LS5_1E.exit.i1105 ], [ -1, %bb.te ]
  store i32 %i.ayf, ptr %i.ac, align 4, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #26
  store i32 -1, ptr %i.ad, align 4, !tbaa !102
  invoke void @_ZN7testing8internal8EqHelper7CompareIN4entt6entityES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %145, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.46, ptr noundef nonnull align 4 dereferenceable(4) %i.ac, ptr noundef nonnull align 4 dereferenceable(4) %i.ad)
          to label %bb.tg unwind label %bb.ti

bb.tg:                                            ; preds = %_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE2EE4backEv.exit1106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #26
  %i.ayg = load i8, ptr %145, align 8, !tbaa !91, !range !92, !noundef !93
  %i.ayh = trunc nuw i8 %i.ayg to i1
  br i1 %i.ayh, label %.critedge499, label %bb.tj

bb.th:                                            ; preds = %_ZN7testing7MessageD2Ev.exit1103, %bb.su
  %.pn415.pn.pn = phi { ptr, i32 } [ %.pn415.pn, %_ZN7testing7MessageD2Ev.exit1103 ], [ %i.axi, %bb.su ]
  call void @llvm.lifetime.end.p0(ptr nonnull %142) #26
  br label %bb.ty

bb.ti:                                            ; preds = %_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE2EE4backEv.exit1106
  %i.ayi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #26
  br label %bb.tx

bb.tj:                                            ; preds = %bb.tg
  call void @llvm.lifetime.start.p0(ptr nonnull %146) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %146)
          to label %bb.tk unwind label %bb.to

bb.tk:                                            ; preds = %bb.tj
  call void @llvm.lifetime.start.p0(ptr nonnull %147) #26
  %i.ayj = getelementptr inbounds nuw i8, ptr %145, i64 8
  %i.ayk = load ptr, ptr %i.ayj, align 8, !tbaa !94 ; 2 uses
  %.not.i.i.i1107 = icmp eq ptr %i.ayk, null
  br i1 %.not.i.i.i1107, label %_ZNK7testing15AssertionResult15failure_messageEv.exit1108, label %bb.tl

bb.tl:                                            ; preds = %bb.tk
  %i.ayl = load ptr, ptr %i.ayk, align 8, !tbaa !76
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit1108

_ZNK7testing15AssertionResult15failure_messageEv.exit1108: ; preds = %bb.tl, %bb.tk
  %i.aym = phi ptr [ %i.ayl, %bb.tl ], [ @.str.319, %bb.tk ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %147, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 639, ptr noundef %i.aym)
          to label %bb.tm unwind label %bb.tp

bb.tm:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1108
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %147, ptr noundef nonnull align 8 dereferenceable(8) %146)
          to label %bb.tn unwind label %bb.tq

bb.tn:                                            ; preds = %bb.tm
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %147) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %147) #26
  %i.ayn = load ptr, ptr %146, align 8, !tbaa !79 ; 3 uses
  %.not.i.i1109 = icmp eq ptr %i.ayn, null
  br i1 %.not.i.i1109, label %_ZN7testing7MessageD2Ev.exit1111, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1110

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1110: ; preds = %bb.tn
  %i.ayo = load ptr, ptr %i.ayn, align 8, !tbaa !43
  %i.ayp = getelementptr inbounds nuw i8, ptr %i.ayo, i64 8
  %i.ayq = load ptr, ptr %i.ayp, align 8
  call void %i.ayq(ptr noundef nonnull align 8 dereferenceable(128) %i.ayn) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1111

_ZN7testing7MessageD2Ev.exit1111:                 ; preds = %bb.tn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1110
  call void @llvm.lifetime.end.p0(ptr nonnull %146) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %145) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %145) #26
  br label %bb.ts

bb.to:                                            ; preds = %bb.tj
  %i.ayr = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1114

bb.tp:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1108
  %i.ays = landingpad { ptr, i32 }
          cleanup
  br label %bb.tr

bb.tq:                                            ; preds = %bb.tm
  %i.ayt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %147) #26
  br label %bb.tr

bb.tr:                                            ; preds = %bb.tq, %bb.tp
  %.pn419 = phi { ptr, i32 } [ %i.ayt, %bb.tq ], [ %i.ays, %bb.tp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %147) #26
  %i.ayu = load ptr, ptr %146, align 8, !tbaa !79 ; 3 uses
  %.not.i.i1112 = icmp eq ptr %i.ayu, null
  br i1 %.not.i.i1112, label %_ZN7testing7MessageD2Ev.exit1114, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1113

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1113: ; preds = %bb.tr
  %i.ayv = load ptr, ptr %i.ayu, align 8, !tbaa !43
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.ayv, i64 8
  %i.ayx = load ptr, ptr %i.ayw, align 8
  call void %i.ayx(ptr noundef nonnull align 8 dereferenceable(128) %i.ayu) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1114

_ZN7testing7MessageD2Ev.exit1114:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1113, %bb.tr, %bb.to
  %.pn419.pn = phi { ptr, i32 } [ %i.ayr, %bb.to ], [ %.pn419, %bb.tr ], [ %.pn419, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1113 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %146) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %145) #26
  br label %bb.tx

.critedge499:                                     ; preds = %bb.tg
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %145) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %145) #26
  br label %bb.ts

bb.ts:                                            ; preds = %_ZN7testing7MessageD2Ev.exit1100, %_ZN7testing7MessageD2Ev.exit1089, %_ZN7testing7MessageD2Ev.exit1077, %_ZN7testing7MessageD2Ev.exit1056, %_ZN7testing7MessageD2Ev.exit1044, %_ZN7testing7MessageD2Ev.exit1033, %_ZN7testing7MessageD2Ev.exit1025, %bb.pq, %_ZN7testing7MessageD2Ev.exit1005, %_ZN7testing7MessageD2Ev.exit993, %_ZN7testing7MessageD2Ev.exit981, %_ZN7testing7MessageD2Ev.exit969, %_ZN7testing7MessageD2Ev.exit958, %_ZN7testing7MessageD2Ev.exit947, %_ZN7testing7MessageD2Ev.exit935, %_ZN7testing7MessageD2Ev.exit921, %_ZN7testing7MessageD2Ev.exit907, %_ZN7testing7MessageD2Ev.exit893, %_ZN7testing7MessageD2Ev.exit882, %_ZN7testing7MessageD2Ev.exit873, %_ZN7testing7MessageD2Ev.exit855, %_ZN7testing7MessageD2Ev.exit839, %_ZN7testing7MessageD2Ev.exit829, %_ZN7testing7MessageD2Ev.exit815, %_ZN7testing7MessageD2Ev.exit800, %_ZN7testing15AssertionResultD2Ev.exit775, %_ZN7testing15AssertionResultD2Ev.exit748, %_ZN7testing15AssertionResultD2Ev.exit719, %_ZN7testing15AssertionResultD2Ev.exit693, %_ZN7testing15AssertionResultD2Ev.exit670, %_ZN7testing15AssertionResultD2Ev.exit646, %_ZN7testing15AssertionResultD2Ev.exit624, %_ZN7testing15AssertionResultD2Ev.exit607, %_ZN7testing15AssertionResultD2Ev.exit586, %_ZN7testing15AssertionResultD2Ev.exit564, %_ZN7testing15AssertionResultD2Ev.exit540, %_ZN7testing15AssertionResultD2Ev.exit, %_ZN7testing7MessageD2Ev.exit1111, %.critedge499
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4entt16basic_sparse_setINS_6entityESaIS1_EEE, i64 16), ptr %1, align 8, !tbaa !43
  %i.ayy = load ptr, ptr %i.ai, align 8, !tbaa !114 ; 2 uses
  %i.ayz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aza = load ptr, ptr %i.ayz, align 8, !tbaa !114 ; 2 uses
  %i.azb = icmp eq ptr %i.ayy, %i.aza
  br i1 %i.azb, label %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE20release_sparse_pagesEv.exit.i, label %.lr.ph.i.i1115

.lr.ph.i.i1115:                                   ; preds = %bb.ts, %bb.tu
  %.sroa.08.012.i.i = phi ptr [ %i.azd, %bb.tu ], [ %i.ayy, %bb.ts ] ; 3 uses
  %i.azc = load ptr, ptr %.sroa.08.012.i.i, align 8, !tbaa !99 ; 2 uses
  %.not.i.i1116 = icmp eq ptr %i.azc, null
  br i1 %.not.i.i1116, label %bb.tu, label %bb.tt

bb.tt:                                            ; preds = %.lr.ph.i.i1115
  call void @_ZdlPvm(ptr noundef nonnull %i.azc, i64 noundef 16384) #27, !inline_history !115
  store ptr null, ptr %.sroa.08.012.i.i, align 8, !tbaa !99
  br label %bb.tu

bb.tu:                                            ; preds = %bb.tt, %.lr.ph.i.i1115
  %i.azd = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i, i64 8 ; 2 uses
  %i.aze = icmp eq ptr %i.azd, %i.aza
  br i1 %i.aze, label %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE20release_sparse_pagesEv.exit.i, label %.lr.ph.i.i1115

_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE20release_sparse_pagesEv.exit.i: ; preds = %bb.tu, %bb.ts
  %i.azf = load ptr, ptr %i.an, align 8, !tbaa !81 ; 3 uses
  %.not.i.i.i.i1117 = icmp eq ptr %i.azf, null
  br i1 %.not.i.i.i.i1117, label %_ZNSt6vectorIN4entt6entityESaIS1_EED2Ev.exit.i, label %bb.tv

bb.tv:                                            ; preds = %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE20release_sparse_pagesEv.exit.i
  %i.azg = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.azh = load ptr, ptr %i.azg, align 8, !tbaa !116
  %i.azi = ptrtoint ptr %i.azh to i64
  %i.azj = ptrtoint ptr %i.azf to i64
  %i.azk = sub i64 %i.azi, %i.azj
  call void @_ZdlPvm(ptr noundef nonnull %i.azf, i64 noundef %i.azk) #27, !inline_history !115
  br label %_ZNSt6vectorIN4entt6entityESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN4entt6entityESaIS1_EED2Ev.exit.i:   ; preds = %bb.tv, %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE20release_sparse_pagesEv.exit.i
  %i.azl = load ptr, ptr %i.ai, align 8, !tbaa !103 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.azl, null
  br i1 %.not.i.i.i1.i, label %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EED2Ev.exit, label %bb.tw

bb.tw:                                            ; preds = %_ZNSt6vectorIN4entt6entityESaIS1_EED2Ev.exit.i
  %i.azm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.azn = load ptr, ptr %i.azm, align 8, !tbaa !117
  %i.azo = ptrtoint ptr %i.azn to i64
  %i.azp = ptrtoint ptr %i.azl to i64
  %i.azq = sub i64 %i.azo, %i.azp
  call void @_ZdlPvm(ptr noundef nonnull %i.azl, i64 noundef %i.azq) #27, !inline_history !115
  br label %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EED2Ev.exit

_ZN4entt16basic_sparse_setINS_6entityESaIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN4entt6entityESaIS1_EED2Ev.exit.i, %bb.tw
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret void

bb.tx:                                            ; preds = %_ZN7testing7MessageD2Ev.exit1114, %bb.ti
  %.pn419.pn.pn = phi { ptr, i32 } [ %.pn419.pn, %_ZN7testing7MessageD2Ev.exit1114 ], [ %i.ayi, %bb.ti ]
  call void @llvm.lifetime.end.p0(ptr nonnull %145) #26
  br label %bb.ty

bb.ty:                                            ; preds = %bb.tx, %bb.th, %bb.st, %bb.sf, %_ZN7testing7MessageD2Ev.exit1062, %_ZN7testing7MessageD2Ev.exit1050, %bb.qt, %bb.qh, %bb.pp, %bb.pc, %bb.oq, %bb.od, %bb.nq, %bb.nd, %bb.mp, %bb.mb, %bb.lm, %bb.kx, %bb.kk, %bb.jx, %bb.ji, %bb.it, %bb.if, %bb.ht, %bb.hg, %bb.gu, %bb.gg, %bb.fp, %_ZN7testing7MessageD2Ev.exit725, %_ZN7testing7MessageD2Ev.exit699, %_ZN7testing7MessageD2Ev.exit676, %_ZN7testing7MessageD2Ev.exit652, %_ZN7testing7MessageD2Ev.exit630, %bb.cq, %bb.cc, %bb.bm, %bb.aw, %bb.ac, %bb.m
  %.pn419.pn.pn.pn = phi { ptr, i32 } [ %.pn419.pn.pn, %bb.tx ], [ %.pn415.pn.pn, %bb.th ], [ %.pn411.pn.pn, %bb.st ], [ %.pn405.pn.pn, %bb.sf ], [ %.pn399.pn.pn, %_ZN7testing7MessageD2Ev.exit1062 ], [ %.pn395.pn.pn, %_ZN7testing7MessageD2Ev.exit1050 ], [ %.pn391.pn.pn, %bb.qt ], [ %.pn387.pn.pn, %bb.qh ], [ %i.dh, %bb.m ], [ %.pn383.pn.pn, %bb.pp ], [ %.pn379.pn.pn, %bb.pc ], [ %.pn375.pn.pn, %bb.oq ], [ %.pn371.pn.pn, %bb.od ], [ %.pn367.pn.pn, %bb.nq ], [ %.pn363.pn.pn, %bb.nd ], [ %.pn359.pn.pn, %bb.mp ], [ %.pn355.pn.pn, %bb.mb ], [ %.pn351.pn.pn, %bb.lm ], [ %.pn345.pn.pn, %bb.kx ], [ %.pn339.pn.pn, %bb.kk ], [ %.pn335.pn.pn, %bb.jx ], [ %.pn331.pn.pn, %bb.ji ], [ %.pn327.pn.pn, %bb.it ], [ %.pn323.pn.pn, %bb.if ], [ %.pn319.pn.pn, %bb.ht ], [ %.pn315.pn.pn, %bb.hg ], [ %.pn309.pn.pn, %bb.gu ], [ %.pn303.pn.pn, %bb.gg ], [ %.pn299.pn.pn, %bb.fp ], [ %.pn295.pn.pn, %_ZN7testing7MessageD2Ev.exit725 ], [ %.pn291.pn.pn, %_ZN7testing7MessageD2Ev.exit699 ], [ %.pn287.pn.pn, %_ZN7testing7MessageD2Ev.exit676 ], [ %.pn283.pn.pn, %_ZN7testing7MessageD2Ev.exit652 ], [ %.pn279.pn.pn, %_ZN7testing7MessageD2Ev.exit630 ], [ %.pn275.pn.pn, %bb.cq ], [ %.pn271.pn.pn, %bb.cc ], [ %.pn267.pn.pn, %bb.bm ], [ %.pn263.pn.pn, %bb.aw ], [ %.pn.pn.pn, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %.pn419.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE2EE4findES2_(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !160    ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i32 %1, 1048575
  %i.c = zext nneg i32 %i.b to i64                ; 2 uses
  %i.d = lshr i64 %i.c, 12                        ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !127
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !103  ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3
  %i.m = icmp ult i64 %i.d, %i.l
  br i1 %i.m, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.d
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !99   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.e, label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i

_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i: ; preds = %bb.c
  %i.p = and i64 %i.c, 4095
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.p
  %i.r = and i32 %1, -1048576
  %i.s = load i32, ptr %i.q, align 4, !tbaa !102  ; 2 uses
  %i.t = xor i32 %i.s, %i.r
  %i.u = icmp ult i32 %i.t, 1048575
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i
  %i.v = and i32 %i.s, 1048575
  %narrow.i.i = add nuw nsw i32 %i.v, 1
  %i.w = zext nneg i32 %narrow.i.i to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i, %bb.d
  %.pn4.i = phi i64 [ %i.w, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i ] ; 2 uses
  %.pn6.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.x = add nsw i64 %.pn4.i, -1
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.z = load i64, ptr %i.y, align 8, !tbaa !70
  %i.aa = icmp ult i64 %i.x, %i.z
  br i1 %i.aa, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.a, %bb.e
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread
  %.sroa.02.0 = phi ptr [ null, %.thread ], [ %.pn6.i, %bb.e ]
  %.sroa.3.0 = phi i64 [ 0, %.thread ], [ %.pn4.i, %bb.e ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.02.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE4findES1_(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = and i32 %1, 1048575
  %i.b = zext nneg i32 %i.a to i64                ; 2 uses
  %i.c = lshr i64 %i.b, 12                        ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !127
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !103  ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3
  %i.l = icmp ult i64 %i.c, %i.k
  br i1 %i.l, label %bb.b, label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.c
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !99   ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread, label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit

_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit: ; preds = %bb.b
  %i.o = and i64 %i.b, 4095
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.o
  %i.q = and i32 %1, -1048576
  %i.r = load i32, ptr %i.p, align 4, !tbaa !102  ; 2 uses
  %i.s = xor i32 %i.r, %i.q
  %i.t = icmp ult i32 %i.s, 1048575
  br i1 %i.t, label %bb.c, label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread

bb.c:                                             ; preds = %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit
  %i.u = and i32 %i.r, 1048575
  %narrow.i = add nuw nsw i32 %i.u, 1
  %i.v = zext nneg i32 %narrow.i to i64
  br label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread

_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread: ; preds = %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit, %bb.a, %bb.b, %bb.c
  %.pn4 = phi i64 [ %i.v, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit ]
  %.pn6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.fca.0.insert.i.i.pn = insertvalue { ptr, i64 } poison, ptr %.pn6, 0
  %.pn = insertvalue { ptr, i64 } %.fca.0.insert.i.i.pn, i64 %.pn4, 1
  ret { ptr, i64 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZNK4entt10basic_viewINS_5get_tIJNS_13basic_storageINS_6entityES3_SaIS3_EEEEEENS_9exclude_tIJEEEE4eachIZN36ViewSingleStorage_StorageEntity_Test8TestBodyEvE3$_0EEvT_"(ptr nofree readonly captures(address_is_null) %.0.val, ptr nonnull %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %1 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %2 = alloca %"class.testing::Message", align 8  ; 7 uses
  %3 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %.not.i = icmp eq ptr %.0.val, null
  br i1 %.not.i, label %._crit_edge, label %_ZNK4entt10basic_viewINS_5get_tIJNS_13basic_storageINS_6entityES3_SaIS3_EEEEEENS_9exclude_tIJEEEE4eachEv.exit

_ZNK4entt10basic_viewINS_5get_tIJNS_13basic_storageINS_6entityES3_SaIS3_EEEEEENS_9exclude_tIJEEEE4eachEv.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 72
  %i.d = load i64, ptr %i.c, align 8, !tbaa !70, !noalias !777 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4entt10basic_viewINS_5get_tIJNS_13basic_storageINS_6entityES3_SaIS3_EEEEEENS_9exclude_tIJEEEE4eachEv.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
end_hunk_2

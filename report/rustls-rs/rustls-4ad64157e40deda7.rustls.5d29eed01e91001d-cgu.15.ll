Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/rustls-4ad64157e40deda7.rustls.5d29eed01e91001d-cgu.15?download=true
inline.NumInlined: 694
inline.NumDeleted: 368
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNvMs_NtCs7ZUl82OSlxp_6rustls6vecbufNtB4_14ChunkVecBuffer7consume:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECs7ZUl82OSlxp_6rustls.exit
  %i.j = load i64, ptr %i.h, align 8, !noundef !5 ; 2 uses
  %i.k = load i64, ptr %i.e, align 8, !range !19, !noundef !5 ; 2 uses
  %.not5 = icmp ult i64 %i.j, %i.k
  %i.l = select i1 %.not5, i64 0, i64 %i.k
  %.sroa.01.0 = sub nuw i64 %i.j, %i.l
  %i.m = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.sroa.01.0
  %i.o = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noundef !5 ; 3 uses
  %i.r = icmp sgt i64 %i.q, -1
  call void @llvm.assume(i1 %i.r)
  %i.s = icmp ult i64 %i.o, %i.q
  br i1 %i.s, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECs7ZUl82OSlxp_6rustls.exit, %bb.b, %bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  %i.t = sub nuw i64 %i.o, %i.q
  store i64 %i.t, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtNtCs4wP2HXfJTCR_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_3vec3VechEE9pop_frontCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
  %i.u = load i64, ptr %i.a, align 8, !range !4, !alias.scope !977, !noundef !5
  %i.v = icmp eq i64 %i.u, -1
  br i1 %i.v, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECs7ZUl82OSlxp_6rustls.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECs7ZUl82OSlxp_6rustls.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECs7ZUl82OSlxp_6rustls.exit.i.i: ; preds = %bb.e
  resume { ptr, i32 } %i.w

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i: ; preds = %bb.d
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECs7ZUl82OSlxp_6rustls.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECs7ZUl82OSlxp_6rustls.exit: ; preds = %bb.c, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.y = load i64, ptr %i.f, align 8, !noundef !5
  %.not = icmp eq i64 %i.y, 0
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMs_NtCs7ZUl82OSlxp_6rustls6vecbufNtB4_14ChunkVecBuffer7is_full(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !8, !noundef !5
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !980)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !980
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_RNvMs4_NtNtCs4wP2HXfJTCR_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_3vec3VechEE4iterCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f)
  %i.g = call noundef i64 @_RINvXs2_NtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque4iterINtB6_4IterINtNtBc_3vec3VechEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4foldjNCNvMNtCs7ZUl82OSlxp_6rustls6vecbufNtB2y_14ChunkVecBuffer3len0EB2A_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a, i64 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !980
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !980, !noundef !5
  %i.j = sub i64 %i.g, %i.i
  %i.k = icmp ugt i64 %i.j, %i.e
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.k, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvMs_NtCs7ZUl82OSlxp_6rustls6vecbufNtB4_14ChunkVecBuffer8write_to(ptr noalias nofree noundef align 8 dereferenceable(56) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [64 x i8], align 8                ; 7 uses
  %i.g = alloca [1024 x i8], align 8              ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !5
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load i64, ptr %i.l, align 8, !noundef !5 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.n = phi i64 [ 0, %bb.b ], [ %i.z, %bb.c ]    ; 5 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.n ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.n ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 0, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.n ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store i64 0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.n ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  store ptr inttoptr (i64 1 to ptr), ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  store i64 0, ptr %i.y, align 8
  %i.z = add nuw nsw i64 %i.n, 4                  ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.z, 64
  br i1 %exitcond.not.3, label %bb.d, label %bb.c

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 1024
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !987
  call void @_RNvMs4_NtNtCs4wP2HXfJTCR_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_3vec3VechEE4iterCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h)
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtBb_2io8io_slice7IoSliceEINtNtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque4iter4IterINtNtB22_3vec3VechEEEINtB5_7ZipImplBW_B1T_E3newCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.a), !noalias !988
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !987
  %.sroa.0.0.copyload = load ptr, ptr %i.f, align 8 ; 5 uses
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.432.0.copyload = load ptr, ptr %.sroa.432.0..sroa_idx, align 8 ; 6 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 4 uses
  %.sroa.733.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.sroa.733.0.copyload = load i64, ptr %.sroa.733.0..sroa_idx, align 8 ; 9 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8 ; 5 uses
  %i.ab = icmp ult i64 %.sroa.733.0.copyload, %.sroa.9.0.copyload
  br i1 %i.ab, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtBb_2io8io_slice7IoSliceEINtNtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque4iter4IterINtNtB22_3vec3VechEEEINtB5_7ZipImplBW_B1T_E4nextCs7ZUl82OSlxp_6rustls.exit.lr.ph, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtBb_2io8io_slice7IoSliceEINtNtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque4iter4IterINtNtB22_3vec3VechEEEINtB5_7ZipImplBW_B1T_E4nextCs7ZUl82OSlxp_6rustls.exit.thread

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtBb_2io8io_slice7IoSliceEINtNtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque4iter4IterINtNtB22_3vec3VechEEEINtB5_7ZipImplBW_B1T_E4nextCs7ZUl82OSlxp_6rustls.exit.lr.ph: ; preds = %bb.d
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.432.0.copyload) ]
  %i.ac = ptrtoint ptr %.sroa.5.0.copyload to i64
  %i.ad = ptrtoint ptr %.sroa.432.0.copyload to i64
  %i.ae = sub nuw i64 %i.ac, %i.ad
  %i.af = udiv exact i64 %i.ae, 24                ; 8 uses
  %i.ag = icmp ult i64 %.sroa.733.0.copyload, %i.af
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %.sroa.432.0.copyload, i64 %.sroa.733.0.copyload
  %i.ai = sub nuw i64 %.sroa.733.0.copyload, %i.af
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %.sroa.6.0.copyload, i64 %i.ai
  %.sroa.0.0.i.i.peel = select i1 %i.ag, ptr %i.ah, ptr %i.aj ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i.peel) ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.peel, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !noundef !5 ; 4 uses
  %i.am = icmp ugt i64 %i.m, %i.al
  br i1 %i.am, label %bb.i, label %bb.e, !prof !14

bb.e:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtBb_2io8io_slice7IoSliceEINtNtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque4iter4IterINtNtB22_3vec3VechEEEINtB5_7ZipImplBW_B1T_E4nextCs7ZUl82OSlxp_6rustls.exit.lr.ph
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.733.0.copyload ; 2 uses
  %i.ao = add nuw i64 %.sroa.733.0.copyload, 1    ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.peel, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !5, !noundef !5
  %i.ar = sub nuw i64 %i.al, %i.m
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.m
  store ptr %i.as, ptr %i.an, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 %i.ar, ptr %i.at, align 8
  %exitcond46.peel.not = icmp eq i64 %i.ao, %.sroa.9.0.copyload
  br i1 %exitcond46.peel.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtBb_2io8io_slice7IoSliceEINtNtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque4iter4IterINtNtB22_3vec3VechEEEINtB5_7ZipImplBW_B1T_E4nextCs7ZUl82OSlxp_6rustls.exit.thread, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtBb_2io8io_slice7IoSliceEINtNtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque4iter4IterINtNtB22_3vec3VechEEEINtB5_7ZipImplBW_B1T_E4nextCs7ZUl82OSlxp_6rustls.exit.peel.next.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtBb_2io8io_slice7IoSliceEINtNtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque4iter4IterINtNtB22_3vec3VechEEEINtB5_7ZipImplBW_B1T_E4nextCs7ZUl82OSlxp_6rustls.exit.peel.next.preheader: ; preds = %bb.e
  %i.au = add i64 %.sroa.9.0.copyload, -2
  %i.av = sub i64 %.sroa.733.0.copyload, %.sroa.9.0.copyload
  %i.aw = and i64 %i.av, 1
  %lcmp.mod.not.not = icmp eq i64 %i.aw, 0
  br i1 %lcmp.mod.not.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtBb_2io8io_slice7IoSliceEINtNtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque4iter4IterINtNtB22_3vec3VechEEEINtB5_7ZipImplBW_B1T_E4nextCs7ZUl82OSlxp_6rustls.exit.peel.next.prol, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtBb_2io8io_slice7IoSliceEINtNtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque4iter4IterINtNtB22_3vec3VechEEEINtB5_7ZipImplBW_B1T_E4nextCs7ZUl82OSlxp_6rustls.exit.peel.next.prol.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtBb_2io8io_slice7IoSliceEINtNtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque4iter4IterINtNtB22_3vec3VechEEEINtB5_7ZipImplBW_B1T_E4nextCs7ZUl82OSlxp_6rustls.exit.peel.next.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtBb_2io8io_slice7IoSliceEINtNtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque4iter4IterINtNtB22_3vec3VechEEEINtB5_7ZipImplBW_B1T_E4nextCs7ZUl82OSlxp_6rustls.exit.peel.next.preheader
  %i.ax = icmp ult i64 %i.ao, %i.af
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %.sroa.432.0.copyload, i64 %i.ao
  %i.az = sub nuw i64 %i.ao, %i.af
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %.sroa.6.0.copyload, i64 %i.az
  %.sroa.0.0.i.i.prol = select i1 %i.ax, ptr %i.ay, ptr %i.ba ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.prol, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !5
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload, i64 %i.ao ; 2 uses
  %i.be = add i64 %.sroa.733.0.copyload, 2
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.prol, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !5, !noundef !5
  store ptr %i.bg, ptr %i.bd, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i64 %i.bc, ptr %i.bh, align 8
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtBb_2io8io_slice7IoSliceEINtNtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque4iter4IterINtNtB22_3vec3VechEEEINtB5_7ZipImplBW_B1T_E4nextCs7ZUl82OSlxp_6rustls.exit.peel.next.prol.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtBb_2io8io_slice7IoSliceEINtNtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque4iter4IterINtNtB22_3vec3VechEEEINtB5_7ZipImplBW_B1T_E4nextCs7ZUl82OSlxp_6rustls.exit.peel.next.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtBb_2io8io_slice7IoSliceEINtNtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque4iter4IterINtNtB22_3vec3VechEEEINtB5_7ZipImplBW_B1T_E4nextCs7ZUl82OSlxp_6rustls.exit.peel.next.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtBb_2io8io_slice7IoSliceEINtNtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque4iter4IterINtNtB22_3vec3VechEEEINtB5_7ZipImplBW_B1T_E4nextCs7ZUl82OSlxp_6rustls.exit.peel.next.preheader
  %.sroa.733.041.unr = phi i64 [ %i.ao, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtBb_2io8io_slice7IoSliceEINtNtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque4iter4IterINtNtB22_3vec3VechEEEINtB5_7ZipImplBW_B1T_E4nextCs7ZUl82OSlxp_6rustls.exit.peel.next.preheader ], [ %i.be, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtBb_2io8io_slice7IoSliceEINtNtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque4iter4IterINtNtB22_3vec3VechEEEINtB5_7ZipImplBW_B1T_E4nextCs7ZUl82OSlxp_6rustls.exit.peel.next.prol ]
  %i.bi = icmp eq i64 %i.au, %.sroa.733.0.copyload
  br i1 %i.bi, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtBb_2io8io_slice7IoSliceEINtNtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque4iter4IterINtNtB22_3vec3VechEEEINtB5_7ZipImplBW_B1T_E4nextCs7ZUl82OSlxp_6rustls.exit.thread, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtBb_2io8io_slice7IoSliceEINtNtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque4iter4IterINtNtB22_3vec3VechEEEINtB5_7ZipImplBW_B1T_E4nextCs7ZUl82OSlxp_6rustls.exit.peel.next

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtBb_2io8io_slice7IoSliceEINtNtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque4iter4IterINtNtB22_3vec3VechEEEINtB5_7ZipImplBW_B1T_E4nextCs7ZUl82OSlxp_6rustls.exit.thread: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtBb_2io8io_slice7IoSliceEINtNtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque4iter4IterINtNtB22_3vec3VechEEEINtB5_7ZipImplBW_B1T_E4nextCs7ZUl82OSlxp_6rustls.exit.peel.next.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtBb_2io8io_slice7IoSliceEINtNtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque4iter4IterINtNtB22_3vec3VechEEEINtB5_7ZipImplBW_B1T_E4nextCs7ZUl82OSlxp_6rustls.exit.peel.next, %bb.e, %bb.d
  %i.bj = load i64, ptr %i.i, align 8, !noundef !5 ; 3 uses
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.bj, i64 64) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !invariant.load !5, !nonnull !5
  %i.bm = call { i64, ptr } %i.bl(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.g, i64 noundef %..i) #34 ; 2 uses
  %i.bn = extractvalue { i64, ptr } %i.bm, 0
  %i.bo = extractvalue { i64, ptr } %i.bm, 1      ; 3 uses
  %i.bp = ptrtoint ptr %i.bo to i64               ; 3 uses
  %i.bq = trunc nuw i64 %i.bn to i1
  br i1 %i.bq, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtBb_2io8io_slice7IoSliceEINtNtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque4iter4IterINtNtB22_3vec3VechEEEINtB5_7ZipImplBW_B1T_E4nextCs7ZUl82OSlxp_6rustls.exit.thread
  store i64 %i.bp, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.br = icmp eq i64 %i.bj, 0
  br i1 %i.br, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice7IoSliceENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1q_8adapters3map8map_foldRBQ_jjNCNvMs_NtCs7ZUl82OSlxp_6rustls6vecbufNtB2R_14ChunkVecBuffer8write_to0NCINvXsK_NtB1o_5accumjNtB40_3Sum3sumINtB2a_3MapBF_B2K_EE0E0EB2T_.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.f
  %min.iters.check = icmp ult i64 %i.bj, 5
  br i1 %min.iters.check, label %.preheader.preheader55, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader
  %i.bs = and i64 %..i, 3                         ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 0
  %i.bu = select i1 %i.bt, i64 4, i64 %i.bs
  %n.vec = sub nsw i64 %..i, %i.bu                ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bz, %vector.body ]
  %vec.phi52 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ca, %vector.body ]
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %index
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %index
  %i.bx = getelementptr i8, ptr %i.bv, i64 8
  %i.by = getelementptr i8, ptr %i.bw, i64 40
  %wide.vec = load <4 x i64>, ptr %i.bx, align 8
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec53 = load <4 x i64>, ptr %i.by, align 8
  %strided.vec54 = shufflevector <4 x i64> %wide.vec53, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.bz = add <2 x i64> %strided.vec, %vec.phi    ; 2 uses
  %i.ca = add <2 x i64> %strided.vec54, %vec.phi52 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !984

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ca, %i.bz
  %i.cc = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %.preheader.preheader55

.preheader.preheader55:                           ; preds = %.preheader.preheader, %middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.ph = phi i64 [ 0, %.preheader.preheader ], [ %i.cc, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader55, %.preheader
  %.sroa.04.0.i = phi i64 [ %i.cg, %.preheader ], [ %.sroa.04.0.i.ph, %.preheader.preheader55 ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ %i.cf, %.preheader ], [ %.sroa.02.0.i.ph, %.preheader.preheader55 ]
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.04.0.i
  %i.ce = getelementptr i8, ptr %i.cd, i64 8
  %.val.i30 = load i64, ptr %i.ce, align 8, !noundef !5
  %i.cf = add i64 %.val.i30, %.sroa.02.0.i        ; 2 uses
  %i.cg = add nuw nsw i64 %.sroa.04.0.i, 1        ; 2 uses
  %i.ch = icmp eq i64 %i.cg, %..i
  br i1 %i.ch, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice7IoSliceENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1q_8adapters3map8map_foldRBQ_jjNCNvMs_NtCs7ZUl82OSlxp_6rustls6vecbufNtB2R_14ChunkVecBuffer8write_to0NCINvXsK_NtB1o_5accumjNtB40_3Sum3sumINtB2a_3MapBF_B2K_EE0E0EB2T_.exit, label %.preheader, !llvm.loop !985

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice7IoSliceENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1q_8adapters3map8map_foldRBQ_jjNCNvMs_NtCs7ZUl82OSlxp_6rustls6vecbufNtB2R_14ChunkVecBuffer8write_to0NCINvXsK_NtB1o_5accumjNtB40_3Sum3sumINtB2a_3MapBF_B2K_EE0E0EB2T_.exit: ; preds = %.preheader, %bb.f
  %.sroa.0.0.i31 = phi i64 [ 0, %bb.f ], [ %i.cf, %.preheader ] ; 3 uses
  store i64 %.sroa.0.0.i31, ptr %i.d, align 8
  %i.ci = icmp ult i64 %.sroa.0.0.i31, %i.bp
  br i1 %i.ci, label %.split, label %bb.g

bb.g:                                             ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice7IoSliceENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1q_8adapters3map8map_foldRBQ_jjNCNvMs_NtCs7ZUl82OSlxp_6rustls6vecbufNtB2R_14ChunkVecBuffer8write_to0NCINvXsK_NtB1o_5accumjNtB40_3Sum3sumINtB2a_3MapBF_B2K_EE0E0EB2T_.exit
  call fastcc void @_RNvMs_NtCs7ZUl82OSlxp_6rustls6vecbufNtB4_14ChunkVecBuffer7consume(ptr noalias nofree noundef align 8 dereferenceable(56) %0, i64 noundef %i.bp)
  br label %.sink.split.sink.split

.split:                                           ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice7IoSliceENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1q_8adapters3map8map_foldRBQ_jjNCNvMs_NtCs7ZUl82OSlxp_6rustls6vecbufNtB2R_14ChunkVecBuffer8write_to0NCINvXsK_NtB1o_5accumjNtB40_3Sum3sumINtB2a_3MapBF_B2K_EE0E0EB2T_.exit
  call fastcc void @_RNvMs_NtCs7ZUl82OSlxp_6rustls6vecbufNtB4_14ChunkVecBuffer7consume(ptr noalias nofree noundef align 8 dereferenceable(56) %0, i64 noundef %.sroa.0.0.i31)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.415.0..sroa_idx, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %i.cj, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.419.0..sroa_idx, align 8
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @56, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ck = call noundef nonnull ptr @_RINvMNtNtCs4wP2HXfJTCR_5alloc2io5errorNtNtNtCsj6eKBz9Db1c_4core2io5error5Error3newNtNtB7_6string6StringECs7ZUl82OSlxp_6rustls(i8 noundef 42, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c) #30
  br label %.sink.split.sink.split

.sink.split.sink.split:                           ; preds = %bb.g, %.split
  %.sroa.5.0.ph.ph = phi ptr [ %i.ck, %.split ], [ %i.bo, %bb.g ]
  %.sroa.0.0.ph.ph = phi i64 [ 1, %.split ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtBb_2io8io_slice7IoSliceEINtNtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque4iter4IterINtNtB22_3vec3VechEEEINtB5_7ZipImplBW_B1T_E4nextCs7ZUl82OSlxp_6rustls.exit.thread
  %.sroa.5.0.ph = phi ptr [ %i.bo, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtBb_2io8io_slice7IoSliceEINtNtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque4iter4IterINtNtB22_3vec3VechEEEINtB5_7ZipImplBW_B1T_E4nextCs7ZUl82OSlxp_6rustls.exit.thread ], [ %.sroa.5.0.ph.ph, %.sink.split.sink.split ]
  %.sroa.0.0.ph = phi i64 [ 1, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtBb_2io8io_slice7IoSliceEINtNtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque4iter4IterINtNtB22_3vec3VechEEEINtB5_7ZipImplBW_B1T_E4nextCs7ZUl82OSlxp_6rustls.exit.thread ], [ %.sroa.0.0.ph.ph, %.sink.split.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.a
  %.sroa.5.0 = phi ptr [ null, %bb.a ], [ %.sroa.5.0.ph, %.sink.split ]
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %.sroa.0.0.ph, %.sink.split ]
  %i.cl = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.cm = insertvalue { i64, ptr } %i.cl, ptr %.sroa.5.0, 1
  ret { i64, ptr } %i.cm

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtBb_2io8io_slice7IoSliceEINtNtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque4iter4IterINtNtB22_3vec3VechEEEINtB5_7ZipImplBW_B1T_E4nextCs7ZUl82OSlxp_6rustls.exit.peel.next: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtBb_2io8io_slice7IoSliceEINtNtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque4iter4IterINtNtB22_3vec3VechEEEINtB5_7ZipImplBW_B1T_E4nextCs7ZUl82OSlxp_6rustls.exit.peel.next.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtBb_2io8io_slice7IoSliceEINtNtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque4iter4IterINtNtB22_3vec3VechEEEINtB5_7ZipImplBW_B1T_E4nextCs7ZUl82OSlxp_6rustls.exit.peel.next
  %.sroa.733.041 = phi i64 [ %i.df, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtBb_2io8io_slice7IoSliceEINtNtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque4iter4IterINtNtB22_3vec3VechEEEINtB5_7ZipImplBW_B1T_E4nextCs7ZUl82OSlxp_6rustls.exit.peel.next ], [ %.sroa.733.041.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtBb_2io8io_slice7IoSliceEINtNtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque4iter4IterINtNtB22_3vec3VechEEEINtB5_7ZipImplBW_B1T_E4nextCs7ZUl82OSlxp_6rustls.exit.peel.next.prol.loopexit ] ; 6 uses
  %i.cn = icmp ult i64 %.sroa.733.041, %i.af
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %.sroa.432.0.copyload, i64 %.sroa.733.041
  %i.cp = sub nuw i64 %.sroa.733.041, %i.af
  %i.cq = getelementptr inbounds nuw [24 x i8], ptr %.sroa.6.0.copyload, i64 %i.cp
  %.sroa.0.0.i.i = select i1 %i.cn, ptr %i.co, ptr %i.cq ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 16
  %i.cs = load i64, ptr %i.cr, align 8, !noundef !5
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.733.041 ; 2 uses
  %i.cu = add i64 %.sroa.733.041, 1               ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !nonnull !5, !noundef !5
  store ptr %i.cw, ptr %i.ct, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store i64 %i.cs, ptr %i.cx, align 8
  %i.cy = icmp ult i64 %i.cu, %i.af
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %.sroa.432.0.copyload, i64 %i.cu
  %i.da = sub nuw i64 %i.cu, %i.af
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %.sroa.6.0.copyload, i64 %i.da
  %.sroa.0.0.i.i.1 = select i1 %i.cy, ptr %i.cz, ptr %i.db ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.1, i64 16
  %i.dd = load i64, ptr %i.dc, align 8, !noundef !5
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload, i64 %i.cu ; 2 uses
  %i.df = add i64 %.sroa.733.041, 2               ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.1, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !nonnull !5, !noundef !5
  store ptr %i.dh, ptr %i.de, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store i64 %i.dd, ptr %i.di, align 8
  %exitcond46.not.1 = icmp eq i64 %i.df, %.sroa.9.0.copyload
  br i1 %exitcond46.not.1, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtBb_2io8io_slice7IoSliceEINtNtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque4iter4IterINtNtB22_3vec3VechEEEINtB5_7ZipImplBW_B1T_E4nextCs7ZUl82OSlxp_6rustls.exit.thread, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtBb_2io8io_slice7IoSliceEINtNtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque4iter4IterINtNtB22_3vec3VechEEEINtB5_7ZipImplBW_B1T_E4nextCs7ZUl82OSlxp_6rustls.exit.peel.next, !llvm.loop !986

bb.i:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtBb_2io8io_slice7IoSliceEINtNtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque4iter4IterINtNtB22_3vec3VechEEEINtB5_7ZipImplBW_B1T_E4nextCs7ZUl82OSlxp_6rustls.exit.lr.ph
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.m, i64 noundef %i.al, i64 noundef %i.al, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #35
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCs7ZUl82OSlxp_6rustls6server7builderINtNtB8_7builder13ConfigBuilderNtNtB6_11server_conn12ServerConfigNtB4_15WantsServerCertE16with_single_cert(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([240 x i8]) align 8 captures(none) dereferenceable(240) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 5 uses
  %i.d = alloca [72 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [64 x i8], align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  invoke void @_RNvMs2_NtNtCs7ZUl82OSlxp_6rustls6crypto6signerNtB5_12CertifiedKey8from_der(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.g)
          to label %bb.b unwind label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.d, align 8, !range !8, !noundef !5
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.k, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5, i64 64, i1 false)
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs7ZUl82OSlxp_6rustls7builder13ConfigBuilderNtNtNtBG_6server11server_conn12ServerConfigNtNtB1s_7builder15WantsServerCertEEBG_(ptr noalias nofree noundef align 8 dereferenceable(56) %1)
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1004
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.l, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  store i64 1, ptr %i.a, align 8, !noalias !1004
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.m, align 8, !noalias !1004
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !1005
  %i.n = tail call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 16, 81) 80, i64 noundef 8) #31, !noalias !1005 ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.e, label %bb.h, !prof !14

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #33
          to label %.noexc.i unwind label %bb.f, !noalias !1004

.noexc.i:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer12CertifiedKeyEBH_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.l)
          to label %bb.o unwind label %bb.g, !noalias !1004

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1004
  unreachable

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.n, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false), !noalias !1004
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1004
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.n, ptr %i.s, align 8
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !1006
  %i.t = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 16, 81) 24, i64 noundef 8) #31, !noalias !1006 ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.i, label %bb.m, !prof !14

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #33
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = atomicrmw sub ptr %i.n, i64 1 release, align 8, !noalias !1007
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer12CertifiedKeyE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s) #30
          to label %bb.o unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.m:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvMs_NtNtCs7ZUl82OSlxp_6rustls6server7builderINtNtB8_7builder13ConfigBuilderNtNtB6_11server_conn12ServerConfigNtB4_15WantsServerCertE18with_cert_resolver(ptr noalias nofree noundef nonnull sret([240 x i8]) align 8 captures(none) dereferenceable(240) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.c, ptr noundef nonnull %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @58)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.c
  ret void

bb.o:                                             ; preds = %bb.f, %bb.j, %bb.k
  %eh.lpad-body.ph = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.v, %bb.j ], [ %i.v, %bb.k ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs7ZUl82OSlxp_6rustls7builder13ConfigBuilderNtNtNtBG_6server11server_conn12ServerConfigNtNtB1s_7builder15WantsServerCertEEBG_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.c) #32
          to label %.thread unwind label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

.thread:                                          ; preds = %bb.o, %bb.q
  %.pn13 = phi { ptr, i32 } [ %i.aa, %bb.q ], [ %eh.lpad-body.ph, %bb.o ]
  resume { ptr, i32 } %.pn13

bb.q:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs7ZUl82OSlxp_6rustls7builder13ConfigBuilderNtNtNtBG_6server11server_conn12ServerConfigNtNtB1s_7builder15WantsServerCertEEBG_(ptr noalias nofree noundef align 8 dereferenceable(56) %1) #32
          to label %.thread unwind label %bb.p
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCs7ZUl82OSlxp_6rustls6server7builderINtNtB8_7builder13ConfigBuilderNtNtB6_11server_conn12ServerConfigNtB4_15WantsServerCertE18with_cert_resolver(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([240 x i8]) align 8 captures(none) dereferenceable(240) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [72 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [56 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 6 uses
  %i.m = alloca [16 x i8], align 8                ; 6 uses
  %i.n = alloca [8 x i8], align 8                 ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %3, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !5, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = invoke noundef zeroext i1 @_RNvMNtCs7ZUl82OSlxp_6rustls6cryptoNtB2_14CryptoProvider4fips(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.s)
          to label %bb.b unwind label %bb.ak

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.u = load ptr, ptr %i.q, align 8, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.u, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.v = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !5, !align !11, !noundef !5 ; 2 uses
  store ptr %i.v, ptr %i.m, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.x, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %2, ptr %i.l, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %3, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.aa = invoke noundef nonnull ptr @_RNvMNtNtNtCs7ZUl82OSlxp_6rustls6server5handy5cacheNtB2_24ServerSessionMemoryCache3new(i64 noundef 256)
          to label %bb.e unwind label %bb.d       ; 2 uses

end_hunk_0

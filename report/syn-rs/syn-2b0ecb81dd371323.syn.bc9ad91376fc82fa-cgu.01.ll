Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/syn-rs/original/syn-2b0ecb81dd371323.syn.bc9ad91376fc82fa-cgu.01?download=true
inline.NumInlined: 778
inline.NumDeleted: 277
begin_hunk_0_@_RNvXs0_NtCsgbWeKYPjk8w_3syn11parse_quoteINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB7_4attr9AttributeENtB5_10ParseQuote5parse:bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = icmp eq i64 %i.r, %i.n
  br i1 %i.v, label %.body.i, label %.lr.ph17

.lr.ph17:                                         ; preds = %bb.f, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEBF_.exit7.i.i
  %.sroa.0.1.i.i15 = phi i64 [ %i.s, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEBF_.exit7.i.i ], [ %i.r, %bb.f ] ; 2 uses
  %i.w = getelementptr inbounds nuw [248 x i8], ptr %i.m, i64 %.sroa.0.1.i.i15
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4attr4MetaEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(248) %i.w)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEBF_.exit7.i.i unwind label %bb.g, !noalias !1939, !inline_history !18

bb.g:                                             ; preds = %.lr.ph17
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !1939, !inline_history !19
  unreachable

.body.i:                                          ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEBF_.exit7.i.i, %bb.f
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.h, !inline_history !46

bb.h:                                             ; preds = %.body.i
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !inline_history !46
  unreachable

common.resume:                                    ; preds = %.body, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.u, %.body.i ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEBF_.exit.i.i, %bb.e
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c), !inline_history !46
  br label %bb.n

bb.i:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.8.0..sroa_idx3, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.5.0..sroa_idx, i64 216, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.j, ptr %i.a, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  %i.z = load i64, ptr %i.e, align 8, !alias.scope !1941, !noundef !26 ; 3 uses
  %i.aa = load i64, ptr %i.c, align 8, !range !49, !alias.scope !1941, !noundef !26
  %i.ab = icmp eq i64 %i.z, %i.aa
  br i1 %i.ab, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.m unwind label %bb.k, !noalias !1942

bb.k:                                             ; preds = %bb.j
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4attr4MetaEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(248) %i.a)
          to label %.body unwind label %bb.l, !inline_history !1937

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.m:                                             ; preds = %bb.j, %bb.i
  %i.ae = load ptr, ptr %i.d, align 8, !alias.scope !1941, !nonnull !26, !noundef !26
  %i.af = getelementptr inbounds nuw [248 x i8], ptr %i.ae, i64 %i.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.af, ptr noundef nonnull align 8 dereferenceable(248) %i.a, i64 248, i1 false)
  %i.ag = add i64 %i.z, 1
  store i64 %i.ag, ptr %i.e, align 8, !alias.scope !1941
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %.val = load ptr, ptr %1, align 8, !noundef !26
  %.val8 = load ptr, ptr %i.f, align 8, !noundef !26
  %i.ah = icmp eq ptr %.val, %.val8
  br i1 %i.ah, label %._crit_edge, label %bb.c

bb.n:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.o:                                             ; preds = %.body
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB7_3VecNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendBY_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = invoke { ptr, i64 } @_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageE8as_sliceB10_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { ptr, i64 } %i.b, 0
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1947, !noundef !26 ; 5 uses
  %i.g = load i64, ptr %0, align 8, !range !49, !alias.scope !1947, !noundef !26
  %i.h = sub i64 %i.g, %i.f
  %i.i = icmp ugt i64 %i.d, %i.h
  br i1 %i.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageE7reserveBI_.exit.thread.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageE7reserveBI_.exit.i, !prof !50

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageE7reserveBI_.exit.thread.i: ; preds = %bb.b
  invoke void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.f, i64 noundef %i.d, i64 noundef 8, i64 noundef 40)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageE7reserveBI_.exit.thread.i
  %i.j = load i64, ptr %i.e, align 8, !alias.scope !1948, !noundef !26 ; 2 uses
  %i.k = icmp ult i64 %i.j, 230584300921369396
  tail call void @llvm.assume(i1 %i.k)
  br label %bb.c

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageE7reserveBI_.exit.i: ; preds = %bb.b
  %i.l = icmp ult i64 %i.f, 230584300921369396
  tail call void @llvm.assume(i1 %i.l)
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageEEB1j_.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageE7reserveBI_.exit.i, %.noexc
  %i.m = phi i64 [ %i.j, %.noexc ], [ %i.f, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageE7reserveBI_.exit.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !1948, !nonnull !26, !noundef !26
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %i.m
  %i.q = mul nuw nsw i64 %i.d, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr readonly align 8 %i.c, i64 %i.q, i1 false)
  %.pre.i = load i64, ptr %i.e, align 8, !alias.scope !1948
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageEEB1j_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageEEB1j_.exit: ; preds = %bb.c, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageE7reserveBI_.exit.i
  %i.r = phi i64 [ %.pre.i, %bb.c ], [ %i.f, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageE7reserveBI_.exit.i ]
  %i.s = add i64 %i.r, %i.d
  store i64 %i.s, ptr %i.e, align 8, !alias.scope !1948
  %i.t = load ptr, ptr %1, align 8, !nonnull !26, !noundef !26
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noundef !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.v, ptr %i.a, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.t, ptr %i.w, align 8
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageEEB1t_.exit: ; preds = %bb.d
  resume { ptr, i32 } %lpad.thr_comm

bb.d:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageE7reserveBI_.exit.thread.i, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageEEB1t_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtCs3b5wA5ywLsd_10proc_macro9TokenTreeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !26, !noundef !26 ; 2 uses
  %i.f = load i64, ptr %i.c, align 8, !noundef !26 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1962)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1963
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1963
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 461168601842738791) %i.f, i1 noundef zeroext false, i64 noundef 4, i64 noundef 20), !noalias !1963
  %i.g = load i64, ptr %i.a, align 8, !range !44, !noalias !1963, !noundef !26
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !52, !noalias !1963, !noundef !26 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.h, label %bb.b, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i, !prof !50

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.k, align 8, !noalias !1963
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #19, !noalias !1963
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i: ; preds = %bb.a
  %i.m = load ptr, ptr %i.k, align 8, !noalias !1963, !nonnull !26, !noundef !26 ; 2 uses
  %i.n = icmp samesign ule i64 %i.f, %i.j
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1963
  store i64 %i.j, ptr %i.b, align 8, !noalias !1963
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.m, ptr %i.o, align 8, !noalias !1963
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw [20 x i8], ptr %i.e, i64 %i.f
  %i.r = icmp eq i64 %i.j, 0
  br i1 %i.r, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtCs3b5wA5ywLsd_10proc_macro9TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsgbWeKYPjk8w_3syn.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i, %_RNvXs1b_Cs3b5wA5ywLsd_10proc_macroNtB6_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i
  %.sroa.012.047.i = phi ptr [ %i.u, %_RNvXs1b_Cs3b5wA5ywLsd_10proc_macroNtB6_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i ], [ %i.e, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i ] ; 14 uses
  %.sroa.7.045.i = phi i64 [ %i.v, %_RNvXs1b_Cs3b5wA5ywLsd_10proc_macroNtB6_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i ], [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i ] ; 3 uses
  %.sroa.10.044.i = phi i64 [ %i.s, %_RNvXs1b_Cs3b5wA5ywLsd_10proc_macroNtB6_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i ], [ %i.j, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i ]
  %i.s = add i64 %.sroa.10.044.i, -1              ; 2 uses
  %i.t = icmp eq ptr %.sroa.012.047.i, %i.q
  br i1 %i.t, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtCs3b5wA5ywLsd_10proc_macro9TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsgbWeKYPjk8w_3syn.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 20
  %i.v = add nuw nsw i64 %.sroa.7.045.i, 1
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 16
  %i.x = load i8, ptr %i.w, align 4, !range !32, !alias.scope !1964, !noundef !26 ; 3 uses
  %i.y = icmp samesign ugt i8 %i.x, 3
  %i.z = zext nneg i8 %i.x to i64
  %i.aa = add nsw i64 %i.z, -3
  %i.ab = select i1 %i.y, i64 %i.aa, i64 0
  switch i64 %i.ab, label %bb.d [
    i64 0, label %bb.e
    i64 1, label %bb.g
    i64 2, label %bb.h
    i64 3, label %bb.i
  ]

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 12 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !alias.scope !1965, !noundef !26
  %.not.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i.i, label %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = invoke noundef i32 @_RNvXsa_NtNtCs3b5wA5ywLsd_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ac)
          to label %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i.i unwind label %bb.k, !noalias !1966

_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i.i: ; preds = %bb.f, %bb.e
  %storemerge.i.i.i = phi i32 [ 0, %bb.e ], [ %i.ae, %bb.f ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 4
  %.val1.i.i.i.i = load i32, ptr %i.af, align 4, !range !53, !alias.scope !1967, !noundef !26
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 8
  %.val.i.i.i.i = load i32, ptr %i.ag, align 4, !range !53, !alias.scope !1967, !noundef !26 ; 2 uses
  %.sroa.1016.sroa.0.0.extract.trunc17.i = trunc i32 %.val.i.i.i.i to i8
  %.sroa.1016.sroa.6.0.extract.shift18.i = and i32 %.val.i.i.i.i, -256
  %.sroa.13.sroa.0.0.extract.trunc.i = trunc i32 %storemerge.i.i.i to i8
  %.sroa.13.sroa.5.0.extract.shift.i = lshr i32 %storemerge.i.i.i, 8
  %.sroa.13.sroa.5.0.extract.trunc.i = trunc i32 %.sroa.13.sroa.5.0.extract.shift.i to i8
  %.sroa.13.sroa.6.0.extract.shift.i = and i32 %storemerge.i.i.i, -65536
  br label %_RNvXs1b_Cs3b5wA5ywLsd_10proc_macroNtB6_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i

bb.g:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 8
  %i.ai = load i8, ptr %i.ah, align 4, !range !54, !alias.scope !1968, !noundef !26
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 4
  %.val.i.i.i = load i32, ptr %i.aj, align 4, !range !53, !alias.scope !1968, !noundef !26
  br label %_RNvXs1b_Cs3b5wA5ywLsd_10proc_macroNtB6_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i

bb.h:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 4
  %i.al = load i16, ptr %i.ak, align 4, !alias.scope !1964
  %.sroa.013.sroa.7.0.extract.trunc.i = zext i16 %i.al to i32
  br label %_RNvXs1b_Cs3b5wA5ywLsd_10proc_macroNtB6_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i

bb.i:                                             ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 12
  %i.an = load i8, ptr %i.am, align 4, !range !55, !alias.scope !1969, !noundef !26
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 13
  %i.ap = load i8, ptr %i.ao, align 1, !alias.scope !1969
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 8
  %i.ar = load i32, ptr %i.aq, align 4, !alias.scope !1969, !noundef !26 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 4
  %.val.i3.i.i = load i32, ptr %i.as, align 4, !range !53, !alias.scope !1969, !noundef !26
  %.sroa.1016.sroa.0.0.extract.trunc.i = trunc i32 %i.ar to i8
  %.sroa.1016.sroa.6.0.extract.shift.i = and i32 %i.ar, -256
  br label %_RNvXs1b_Cs3b5wA5ywLsd_10proc_macroNtB6_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i

_RNvXs1b_Cs3b5wA5ywLsd_10proc_macroNtB6_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i: ; preds = %bb.i, %bb.h, %bb.g, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i.i
  %.sroa.013.sroa.7.0.i = phi i32 [ %.val1.i.i.i.i, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i.i ], [ %.val.i.i.i, %bb.g ], [ %.sroa.013.sroa.7.0.extract.trunc.i, %bb.h ], [ %.val.i3.i.i, %bb.i ]
  %.sroa.1016.sroa.6.sroa.0.0.i = phi i32 [ %.sroa.1016.sroa.6.0.extract.shift18.i, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i.i ], [ 0, %bb.g ], [ 0, %bb.h ], [ %.sroa.1016.sroa.6.0.extract.shift.i, %bb.i ]
  %.sroa.1016.sroa.0.0.i = phi i8 [ %.sroa.1016.sroa.0.0.extract.trunc17.i, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i.i ], [ %i.ai, %bb.g ], [ undef, %bb.h ], [ %.sroa.1016.sroa.0.0.extract.trunc.i, %bb.i ]
  %.sroa.13.sroa.6.0.i = phi i32 [ %.sroa.13.sroa.6.0.extract.shift.i, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i.i ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.i ]
  %.sroa.13.sroa.5.0.i = phi i8 [ %.sroa.13.sroa.5.0.extract.trunc.i, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i.i ], [ undef, %bb.g ], [ undef, %bb.h ], [ %i.ap, %bb.i ]
  %.sroa.13.sroa.0.0.i = phi i8 [ %.sroa.13.sroa.0.0.extract.trunc.i, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i.i ], [ undef, %bb.g ], [ undef, %bb.h ], [ %i.an, %bb.i ]
  %.sink.i.i = phi i8 [ %i.x, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i.i ], [ 4, %bb.g ], [ 5, %bb.h ], [ 6, %bb.i ]
  %.sroa.013.sroa.0.0.i = load i32, ptr %.sroa.012.047.i, align 4, !range !53, !alias.scope !1964, !noundef !26
  %i.at = getelementptr inbounds nuw [20 x i8], ptr %i.m, i64 %.sroa.7.045.i ; 4 uses
  %.sroa.013.sroa.7.0.insert.ext.i = zext i32 %.sroa.013.sroa.7.0.i to i64
  %.sroa.013.sroa.7.0.insert.shift.i = shl nuw i64 %.sroa.013.sroa.7.0.insert.ext.i, 32
  %.sroa.013.sroa.0.0.insert.ext.i = zext i32 %.sroa.013.sroa.0.0.i to i64
  %.sroa.013.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.013.sroa.7.0.insert.shift.i, %.sroa.013.sroa.0.0.insert.ext.i
  %.sroa.1016.sroa.0.0.insert.ext.i = zext i8 %.sroa.1016.sroa.0.0.i to i32
  %.sroa.1016.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.1016.sroa.6.sroa.0.0.i, %.sroa.1016.sroa.0.0.insert.ext.i
  %.sroa.13.sroa.5.0.insert.ext.i = zext i8 %.sroa.13.sroa.5.0.i to i32
  %.sroa.13.sroa.5.0.insert.shift.i = shl nuw nsw i32 %.sroa.13.sroa.5.0.insert.ext.i, 8
  %.sroa.13.sroa.5.0.insert.insert.i = or disjoint i32 %.sroa.13.sroa.5.0.insert.shift.i, %.sroa.13.sroa.6.0.i
  %.sroa.13.sroa.0.0.insert.ext.i = zext i8 %.sroa.13.sroa.0.0.i to i32
  %.sroa.13.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.13.sroa.5.0.insert.insert.i, %.sroa.13.sroa.0.0.insert.ext.i
  store i64 %.sroa.013.sroa.0.0.insert.insert.i, ptr %i.at, align 4, !noalias !1966
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 %.sroa.1016.sroa.0.0.insert.insert.i, ptr %.sroa.430.0..sroa_idx.i, align 4, !noalias !1966
  %.sroa.531.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store i32 %.sroa.13.sroa.0.0.insert.insert.i, ptr %.sroa.531.0..sroa_idx.i, align 4, !noalias !1966
  %.sroa.632.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i8 %.sink.i.i, ptr %.sroa.632.0..sroa_idx.i, align 4, !noalias !1966
  %i.au = icmp eq i64 %i.s, 0
  br i1 %i.au, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtCs3b5wA5ywLsd_10proc_macro9TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsgbWeKYPjk8w_3syn.exit, label %.lr.ph.i

bb.j:                                             ; preds = %bb.k
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !1966
  unreachable

bb.k:                                             ; preds = %bb.f
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.045.i, ptr %i.p, align 8, !noalias !1963
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtCs3b5wA5ywLsd_10proc_macro9TokenTreeEECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #17
          to label %bb.l unwind label %bb.j, !noalias !1966

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtCs3b5wA5ywLsd_10proc_macro9TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsgbWeKYPjk8w_3syn.exit: ; preds = %.lr.ph.i, %_RNvXs1b_Cs3b5wA5ywLsd_10proc_macroNtB6_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i
  store i64 %i.f, ptr %i.p, align 8, !noalias !1963
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !1962
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1963
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !26, !noundef !26 ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !noundef !26 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1987)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1988
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1988
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, 288230376151711744) %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32), !noalias !1988
  %i.h = load i64, ptr %i.b, align 8, !range !44, !noalias !1988, !noundef !26
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !52, !noalias !1988, !noundef !26 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i, !prof !50

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !1988
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #19, !noalias !1988
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !1988, !nonnull !26, !noundef !26 ; 2 uses
  %i.o = icmp samesign ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1988
  store i64 %i.k, ptr %i.c, align 8, !noalias !1988
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !1988
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.g
  %i.s = icmp eq i64 %i.k, 0
  br i1 %i.s, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtCs6et67aoV1xO_11proc_macro29TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsgbWeKYPjk8w_3syn.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.48.sroa.4.0..sroa.48.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.48.sroa.5.0..sroa.48.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.48.sroa.6.0..sroa.48.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %.sroa.48.sroa.7.0..sroa.48.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 21
  %.sroa.48.sroa.8.0..sroa.48.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  br label %bb.c

bb.c:                                             ; preds = %_RNvXsO_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i, %.lr.ph.i
  %.sroa.014.074.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.v, %_RNvXsO_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i ] ; 22 uses
  %.sroa.7.071.i = phi i64 [ 0, %.lr.ph.i ], [ %i.w, %_RNvXsO_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i ] ; 3 uses
  %.sroa.10.070.i = phi i64 [ %i.k, %.lr.ph.i ], [ %i.t, %_RNvXsO_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i ]
  %i.t = add i64 %.sroa.10.070.i, -1              ; 2 uses
  %i.u = icmp eq ptr %.sroa.014.074.i, %i.r
  br i1 %i.u, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtCs6et67aoV1xO_11proc_macro29TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsgbWeKYPjk8w_3syn.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.014.074.i, i64 32
  %i.w = add nuw nsw i64 %.sroa.7.071.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1989)
  %i.x = load i32, ptr %.sroa.014.074.i, align 8, !range !42, !alias.scope !1990, !noundef !26 ; 2 uses
  switch i32 %i.x, label %default.unreachable [
    i32 0, label %bb.e
    i32 1, label %bb.j
    i32 2, label %bb.k
    i32 3, label %bb.l
  ]

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.014.074.i, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1991)
  %i.z = load i32, ptr %i.y, align 8, !range !43, !alias.scope !1992, !noundef !26
  %i.aa = trunc nuw i32 %i.z to i1
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.014.074.i, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.014.074.i, i64 24
  %i.ad = load i8, ptr %i.ac, align 8, !range !1993, !alias.scope !1992, !noundef !26
  %i.ae = load ptr, ptr %i.ab, align 8, !alias.scope !1992, !nonnull !26, !noundef !26 ; 3 uses
  %i.af = load i64, ptr %i.ae, align 8, !noalias !1994, !noundef !26 ; 2 uses
  %i.ag = icmp ne i64 %i.af, 0
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = add i64 %i.af, 1                        ; 2 uses
  store i64 %i.ah, ptr %i.ae, align 8, !noalias !1994
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.i, label %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i, !prof !50

bb.g:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.014.074.i, i64 12
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.014.074.i, i64 28
  %i.al = load i8, ptr %i.ak, align 4, !range !1993, !alias.scope !1995, !noundef !26
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.014.074.i, i64 24 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !alias.scope !1995, !noundef !26
  %.not.i.i.i.i = icmp eq i32 %i.an, 0
  br i1 %.not.i.i.i.i, label %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = invoke noundef i32 @_RNvXsa_NtNtCs3b5wA5ywLsd_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.am)
          to label %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i.i.i unwind label %bb.t, !noalias !1996

_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i.i.i: ; preds = %bb.h, %bb.g
  %storemerge.i.i.i.i = phi i32 [ 0, %bb.g ], [ %i.ao, %bb.h ] ; 2 uses
  %.val2.i.i.i.i.i = load i32, ptr %i.aj, align 4, !range !53, !alias.scope !1997, !noundef !26
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.014.074.i, i64 16
  %.val1.i.i.i.i.i = load i64, ptr %i.ap, align 8, !alias.scope !1997
  %i.aq = inttoptr i64 %.val1.i.i.i.i.i to ptr
  %.sroa.846.sroa.0.0.extract.trunc.i.i = trunc i32 %storemerge.i.i.i.i to i8
  %i.ar = and i32 %storemerge.i.i.i.i, -256
  br label %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i

bb.i:                                             ; preds = %bb.f
  tail call void @llvm.trap()
  unreachable

_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i: ; preds = %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i.i.i, %bb.f
  %.sroa.444.0.i.i = phi i32 [ %.val2.i.i.i.i.i, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i.i.i ], [ undef, %bb.f ] ; 2 uses
  %.sroa.10.0.i.i = phi i8 [ %i.al, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i.i.i ], [ undef, %bb.f ]
  %.sroa.846.sroa.0.0.i.i = phi i8 [ %.sroa.846.sroa.0.0.extract.trunc.i.i, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i.i.i ], [ %i.ad, %bb.f ]
  %.sroa.846.sroa.5.sroa.0.0.i.i = phi i32 [ %i.ar, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i.i.i ], [ 0, %bb.f ]
  %.sroa.545.0.i.i = phi ptr [ %i.aq, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i.i.i ], [ %i.ae, %bb.f ]
  %storemerge.i.i.i = phi i32 [ 0, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i.i.i ], [ 1, %bb.f ]
  %.sroa.517.sroa.7.sroa.0.0.extract.trunc29.i = trunc i32 %.sroa.444.0.i.i to i8
  %.sroa.517.sroa.7.sroa.7.0.extract.shift32.i = lshr i32 %.sroa.444.0.i.i, 8
  %i.as = ptrtoint ptr %.sroa.545.0.i.i to i64    ; 2 uses
  %.sroa.11.sroa.0.0.extract.trunc.i = trunc i64 %i.as to i32
  %.sroa.11.sroa.6.0.extract.shift.i = lshr i64 %i.as, 32
  br label %_RNvXsO_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i

bb.j:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.014.074.i, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.014.074.i, i64 24
  %i.av = load i8, ptr %i.au, align 8, !range !28, !alias.scope !1990, !noundef !26 ; 2 uses
  %.not25.i.i = icmp eq i8 %i.av, 2
  br i1 %.not25.i.i, label %bb.n, label %bb.m

bb.k:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.014.074.i, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !range !1998, !alias.scope !1990, !noundef !26
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.014.074.i, i64 12
  %i.az = load i8, ptr %i.ay, align 4, !range !54, !alias.scope !1990, !noundef !26
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.014.074.i, i64 8
  %i.bb = load i32, ptr %i.ba, align 8, !alias.scope !1990, !noundef !26
  br label %_RNvXsO_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i

bb.l:                                             ; preds = %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.014.074.i, i64 8 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !range !31, !alias.scope !1990, !noundef !26
  %.not.i.i = icmp eq i64 %i.bd, -1
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.m:                                             ; preds = %bb.j
  %i.be = invoke { ptr, i64 } @_RNvXsf_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.at)
          to label %.noexc12.i unwind label %bb.t, !noalias !1996 ; 2 uses

.noexc12.i:                                       ; preds = %bb.m
  %i.bf = extractvalue { ptr, i64 } %i.be, 0
  %i.bg = extractvalue { ptr, i64 } %i.be, 1
  %i.bh = ptrtoint ptr %i.bf to i64
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %.val1.i.i.i = load i64, ptr %i.at, align 8, !alias.scope !1999
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.014.074.i, i64 16
  %i.bj = load i8, ptr %i.bi, align 8, !range !54, !alias.scope !1999, !noundef !26
  %.sroa.09.sroa.5.0.insert.ext.i.i = zext nneg i8 %i.bj to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.noexc12.i
  %.sroa.09.sroa.0.0.i.i = phi i64 [ %i.bh, %.noexc12.i ], [ %.val1.i.i.i, %bb.n ] ; 3 uses
  %.sroa.09.sroa.5.0.i.i = phi i64 [ %i.bg, %.noexc12.i ], [ %.sroa.09.sroa.5.0.insert.ext.i.i, %bb.n ] ; 2 uses
  %.sroa.517.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.09.sroa.0.0.i.i to i32
  %.sroa.517.sroa.7.0.extract.shift.i = lshr i64 %.sroa.09.sroa.0.0.i.i, 32
  %.sroa.517.sroa.7.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.517.sroa.7.0.extract.shift.i to i8
  %sum.shift63.i = lshr i64 %.sroa.09.sroa.0.0.i.i, 40
  %.sroa.517.sroa.7.sroa.7.0.extract.trunc.i = trunc nuw nsw i64 %sum.shift63.i to i32
  %.sroa.11.sroa.0.0.extract.trunc22.i = trunc i64 %.sroa.09.sroa.5.0.i.i to i32
  %.sroa.11.sroa.6.0.extract.shift23.i = lshr i64 %.sroa.09.sroa.5.0.i.i, 32
  br label %_RNvXsO_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i

bb.p:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2000
  invoke void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bc)
          to label %.noexc13.i unwind label %bb.t, !noalias !1996

.noexc13.i:                                       ; preds = %bb.p
  %.sroa.07.0.copyload.i.i = load i64, ptr %i.a, align 8, !noalias !2000
  %.sroa.48.sroa.0.0.copyload.i.i = load i32, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !noalias !2000
  %.sroa.48.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.48.sroa.4.0..sroa.48.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !2000
  %.sroa.48.sroa.5.0.copyload.i.i = load i32, ptr %.sroa.48.sroa.5.0..sroa.48.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !2000
  %.sroa.48.sroa.6.0.copyload.i.i = load i8, ptr %.sroa.48.sroa.6.0..sroa.48.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !2000
  %.sroa.48.sroa.7.0.copyload.i.i = load i8, ptr %.sroa.48.sroa.7.0..sroa.48.0..sroa_idx.sroa_idx.i.i, align 1, !noalias !2000
  %.sroa.48.sroa.8.0.copyload.i.i = load i16, ptr %.sroa.48.sroa.8.0..sroa.48.0..sroa_idx.sroa_idx.i.i, align 2, !noalias !2000
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2000
  br label %bb.r

bb.q:                                             ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.014.074.i, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.014.074.i, i64 28
  %i.bm = load i8, ptr %i.bl, align 4, !range !55, !alias.scope !2001, !noundef !26
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.014.074.i, i64 29
  %i.bo = load i8, ptr %i.bn, align 1, !alias.scope !2001
  %.val2.i.i.i = load i32, ptr %i.bk, align 8, !range !53, !alias.scope !2001, !noundef !26
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.014.074.i, i64 24
  %i.bq = load i32, ptr %i.bp, align 8, !alias.scope !2001, !noundef !26
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.014.074.i, i64 20
  %.val.i26.i.i = load i32, ptr %i.br, align 4, !range !53, !alias.scope !2001, !noundef !26
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.noexc13.i
  %.sroa.53.sroa.9.0.i.i = phi i16 [ undef, %bb.q ], [ %.sroa.48.sroa.8.0.copyload.i.i, %.noexc13.i ]
  %.sroa.53.sroa.8.0.i.i = phi i8 [ %i.bo, %bb.q ], [ %.sroa.48.sroa.7.0.copyload.i.i, %.noexc13.i ]
  %.sroa.53.sroa.7.0.i.i = phi i8 [ %i.bm, %bb.q ], [ %.sroa.48.sroa.6.0.copyload.i.i, %.noexc13.i ]
  %.sroa.53.sroa.6.0.i.i = phi i32 [ %i.bq, %bb.q ], [ %.sroa.48.sroa.5.0.copyload.i.i, %.noexc13.i ] ; 2 uses
  %.sroa.53.sroa.5.0.i.i = phi i32 [ %.val.i26.i.i, %bb.q ], [ %.sroa.48.sroa.4.0.copyload.i.i, %.noexc13.i ]
  %.sroa.53.sroa.0.0.i.i = phi i32 [ %.val2.i.i.i, %bb.q ], [ %.sroa.48.sroa.0.0.copyload.i.i, %.noexc13.i ]
  %.sroa.01.0.i.i = phi i64 [ -1, %bb.q ], [ %.sroa.07.0.copyload.i.i, %.noexc13.i ] ; 3 uses
  %.sroa.517.sroa.0.0.extract.trunc25.i = trunc i64 %.sroa.01.0.i.i to i32
  %.sroa.517.sroa.7.0.extract.shift26.i = lshr i64 %.sroa.01.0.i.i, 32
  %.sroa.517.sroa.7.sroa.0.0.extract.trunc28.i = trunc i64 %.sroa.517.sroa.7.0.extract.shift26.i to i8
  %sum.shift.i = lshr i64 %.sroa.01.0.i.i, 40
  %.sroa.517.sroa.7.sroa.7.0.extract.trunc31.i = trunc nuw nsw i64 %sum.shift.i to i32
  %.sroa.15.sroa.0.0.extract.trunc.i = trunc i32 %.sroa.53.sroa.6.0.i.i to i8
  %.sroa.15.sroa.6.0.extract.shift.i = and i32 %.sroa.53.sroa.6.0.i.i, -256
  %i.bs = zext i32 %.sroa.53.sroa.5.0.i.i to i64
  br label %_RNvXsO_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i

_RNvXsO_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i: ; preds = %bb.r, %bb.o, %bb.k, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i
  %.sroa.517.sroa.7.sroa.7.sroa.0.0.i = phi i32 [ %.sroa.517.sroa.7.sroa.7.0.extract.shift32.i, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.517.sroa.7.sroa.7.0.extract.trunc.i, %bb.o ], [ 0, %bb.k ], [ %.sroa.517.sroa.7.sroa.7.0.extract.trunc31.i, %bb.r ]
  %.sroa.517.sroa.7.sroa.0.0.i = phi i8 [ %.sroa.517.sroa.7.sroa.0.0.extract.trunc29.i, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.517.sroa.7.sroa.0.0.extract.trunc.i, %bb.o ], [ %i.az, %bb.k ], [ %.sroa.517.sroa.7.sroa.0.0.extract.trunc28.i, %bb.r ]
  %.sroa.517.sroa.0.0.i = phi i32 [ %storemerge.i.i.i, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.517.sroa.0.0.extract.trunc.i, %bb.o ], [ %i.bb, %bb.k ], [ %.sroa.517.sroa.0.0.extract.trunc25.i, %bb.r ]
  %.sroa.11.sroa.6.0.i = phi i64 [ %.sroa.11.sroa.6.0.extract.shift.i, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.11.sroa.6.0.extract.shift23.i, %bb.o ], [ 0, %bb.k ], [ %i.bs, %bb.r ]
  %.sroa.11.sroa.0.0.i = phi i32 [ %.sroa.11.sroa.0.0.extract.trunc.i, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.11.sroa.0.0.extract.trunc22.i, %bb.o ], [ undef, %bb.k ], [ %.sroa.53.sroa.0.0.i.i, %bb.r ]
  %.sroa.15.sroa.6.sroa.0.0.i = phi i32 [ %.sroa.846.sroa.5.sroa.0.0.i.i, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i ], [ 0, %bb.o ], [ 0, %bb.k ], [ %.sroa.15.sroa.6.0.extract.shift.i, %bb.r ]
  %.sroa.15.sroa.0.0.i = phi i8 [ %.sroa.846.sroa.0.0.i.i, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i ], [ %i.av, %bb.o ], [ undef, %bb.k ], [ %.sroa.15.sroa.0.0.extract.trunc.i, %bb.r ]
  %.sroa.21.0.i = phi i16 [ undef, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.o ], [ undef, %bb.k ], [ %.sroa.53.sroa.9.0.i.i, %bb.r ]
  %.sroa.20.0.i = phi i8 [ undef, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.o ], [ undef, %bb.k ], [ %.sroa.53.sroa.8.0.i.i, %bb.r ]
  %.sroa.18.0.i = phi i8 [ %.sroa.10.0.i.i, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.o ], [ undef, %bb.k ], [ %.sroa.53.sroa.7.0.i.i, %bb.r ]
  %.sroa.416.0.i = phi i32 [ undef, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.o ], [ %i.ax, %bb.k ], [ undef, %bb.r ]
  %i.bt = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %.sroa.7.071.i ; 8 uses
  %.sroa.517.sroa.7.sroa.7.0.insert.ext.i = shl nuw i32 %.sroa.517.sroa.7.sroa.7.sroa.0.0.i, 8
  %.sroa.517.sroa.7.sroa.0.0.insert.ext.i = zext i8 %.sroa.517.sroa.7.sroa.0.0.i to i32
  %.sroa.517.sroa.7.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.517.sroa.7.sroa.7.0.insert.ext.i, %.sroa.517.sroa.7.sroa.0.0.insert.ext.i
  %.sroa.517.sroa.7.0.insert.ext.i = zext i32 %.sroa.517.sroa.7.sroa.0.0.insert.insert.i to i64
  %.sroa.517.sroa.7.0.insert.shift.i = shl nuw i64 %.sroa.517.sroa.7.0.insert.ext.i, 32
  %.sroa.517.sroa.0.0.insert.ext.i = zext i32 %.sroa.517.sroa.0.0.i to i64
  %.sroa.517.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.517.sroa.7.0.insert.shift.i, %.sroa.517.sroa.0.0.insert.ext.i
  %.sroa.11.sroa.6.0.insert.shift.i = shl nuw i64 %.sroa.11.sroa.6.0.i, 32
  %.sroa.11.sroa.0.0.insert.ext.i = zext i32 %.sroa.11.sroa.0.0.i to i64
  %.sroa.11.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.11.sroa.6.0.insert.shift.i, %.sroa.11.sroa.0.0.insert.ext.i
  %.sroa.15.sroa.0.0.insert.ext.i = zext i8 %.sroa.15.sroa.0.0.i to i32
  %.sroa.15.sroa.0.0.insert.insert.i = or i32 %.sroa.15.sroa.6.sroa.0.0.i, %.sroa.15.sroa.0.0.insert.ext.i
  store i32 %i.x, ptr %i.bt, align 8, !noalias !1996
  %.sroa.448.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store i32 %.sroa.416.0.i, ptr %.sroa.448.0..sroa_idx.i, align 4, !noalias !1996
  %.sroa.549.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i64 %.sroa.517.sroa.0.0.insert.insert.i, ptr %.sroa.549.0..sroa_idx.i, align 8, !noalias !1996
  %.sroa.650.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store i64 %.sroa.11.sroa.0.0.insert.insert.i, ptr %.sroa.650.0..sroa_idx.i, align 8, !noalias !1996
  %.sroa.751.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  store i32 %.sroa.15.sroa.0.0.insert.insert.i, ptr %.sroa.751.0..sroa_idx.i, align 8, !noalias !1996
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 28
  store i8 %.sroa.18.0.i, ptr %.sroa.852.0..sroa_idx.i, align 4, !noalias !1996
  %.sroa.953.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 29
  store i8 %.sroa.20.0.i, ptr %.sroa.953.0..sroa_idx.i, align 1, !noalias !1996
  %.sroa.1054.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 30
  store i16 %.sroa.21.0.i, ptr %.sroa.1054.0..sroa_idx.i, align 2, !noalias !1996
  %i.bu = icmp eq i64 %i.t, 0
  br i1 %i.bu, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtCs6et67aoV1xO_11proc_macro29TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsgbWeKYPjk8w_3syn.exit, label %bb.c

bb.s:                                             ; preds = %bb.t
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !1996
  unreachable

bb.t:                                             ; preds = %bb.p, %bb.m, %bb.h
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.071.i, ptr %i.q, align 8, !noalias !1988
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeEECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #17
          to label %bb.u unwind label %bb.s, !noalias !1996

bb.u:                                             ; preds = %bb.t
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtCs6et67aoV1xO_11proc_macro29TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsgbWeKYPjk8w_3syn.exit: ; preds = %bb.c, %_RNvXsO_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i
  store i64 %i.g, ptr %i.q, align 8, !noalias !1988
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !1987
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1988
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBJ_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [248 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !26, !noundef !26 ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !noundef !26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2005
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2005
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 37191016277640226) %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 248), !noalias !2005
  %i.h = load i64, ptr %i.a, align 8, !range !44, !noalias !2005, !noundef !26
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !52, !noalias !2005, !noundef !26 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i, !prof !50

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !2005
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #19, !noalias !2005
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !2005, !nonnull !26, !noundef !26 ; 2 uses
  %i.o = icmp samesign ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2005
  store i64 %i.k, ptr %i.c, align 8, !noalias !2005
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !2005
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw [248 x i8], ptr %i.f, i64 %i.g
  %i.s = icmp eq i64 %i.k, 0
  br i1 %i.s, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtCsgbWeKYPjk8w_3syn4attr9AttributeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBO_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i, %bb.d
  %.sroa.012.023.i = phi ptr [ %i.w, %bb.d ], [ %i.f, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i ] ; 3 uses
  %.sroa.7.022.i = phi i64 [ %i.v, %bb.d ], [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %i.t, %bb.d ], [ %i.k, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i ]
  %i.t = add i64 %.sroa.10.021.i, -1              ; 2 uses
  %i.u = icmp eq ptr %.sroa.012.023.i, %i.r
  br i1 %i.u, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtCsgbWeKYPjk8w_3syn4attr9AttributeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBO_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2005
  invoke void @_RNvXs4_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4attr9AttributeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([248 x i8]) align 8 captures(none) dereferenceable(248) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %.sroa.012.023.i)
          to label %bb.d unwind label %bb.f, !noalias !2006

bb.d:                                             ; preds = %bb.c
  %i.v = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 248
  %i.x = getelementptr inbounds nuw [248 x i8], ptr %i.n, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.x, ptr noundef nonnull align 8 dereferenceable(248) %i.b, i64 248, i1 false), !noalias !2006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2005
  %i.y = icmp eq i64 %i.t, 0
  br i1 %i.y, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtCsgbWeKYPjk8w_3syn4attr9AttributeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBO_.exit, label %.lr.ph.i

bb.e:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !2006
  unreachable

bb.f:                                             ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.q, align 8, !noalias !2005
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #17
          to label %bb.g unwind label %bb.e, !noalias !2006

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtCsgbWeKYPjk8w_3syn4attr9AttributeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBO_.exit: ; preds = %.lr.ph.i, %bb.d, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i
  store i64 %i.g, ptr %i.q, align 8, !noalias !2005
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !2007
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2005
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBJ_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !26, !noundef !26 ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !noundef !26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2011
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2011
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 230584300921369396) %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 40), !noalias !2011
  %i.h = load i64, ptr %i.a, align 8, !range !44, !noalias !2011, !noundef !26
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !52, !noalias !2011, !noundef !26 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i, !prof !50

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !2011
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #19, !noalias !2011
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !2011, !nonnull !26, !noundef !26 ; 2 uses
  %i.o = icmp samesign ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2011
  store i64 %i.k, ptr %i.c, align 8, !noalias !2011
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !2011
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw [40 x i8], ptr %i.f, i64 %i.g
  %i.s = icmp eq i64 %i.k, 0
  br i1 %i.s, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBO_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i, %bb.d
  %.sroa.012.023.i = phi ptr [ %i.w, %bb.d ], [ %i.f, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i ] ; 3 uses
  %.sroa.7.022.i = phi i64 [ %i.v, %bb.d ], [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %i.t, %bb.d ], [ %i.k, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i ]
  %i.t = add i64 %.sroa.10.021.i, -1              ; 2 uses
  %i.u = icmp eq ptr %.sroa.012.023.i, %i.r
  br i1 %i.u, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBO_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2011
  invoke void @_RNvXs4_NtCsgbWeKYPjk8w_3syn5errorNtB5_12ErrorMessageNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.012.023.i)
          to label %bb.d unwind label %bb.f, !noalias !2012

bb.d:                                             ; preds = %bb.c
  %i.v = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 40
  %i.x = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.x, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false), !noalias !2012
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2011
  %i.y = icmp eq i64 %i.t, 0
  br i1 %i.y, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBO_.exit, label %.lr.ph.i

bb.e:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !2012
  unreachable

bb.f:                                             ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.q, align 8, !noalias !2011
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #17
          to label %bb.g unwind label %bb.e, !noalias !2012

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBO_.exit: ; preds = %.lr.ph.i, %bb.d, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i
  store i64 %i.g, ptr %i.q, align 8, !noalias !2011
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !2013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2011
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtCsgbWeKYPjk8w_3syn2ty4TypeNtNtBK_5token5CommaEENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBK_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [256 x i8], align 8               ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !26, !noundef !26 ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !noundef !26 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2020)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2021
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2021
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 36028797018963968) %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 256), !noalias !2021
  %i.h = load i64, ptr %i.a, align 8, !range !44, !noalias !2021, !noundef !26
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !52, !noalias !2021, !noundef !26 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i, !prof !50

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !2021
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #19, !noalias !2021
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !2021, !nonnull !26, !noundef !26 ; 2 uses
  %i.o = icmp samesign ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2021
  store i64 %i.k, ptr %i.c, align 8, !noalias !2021
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !2021
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw [256 x i8], ptr %i.f, i64 %i.g
  %i.s = icmp eq i64 %i.k, 0
  br i1 %i.s, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inTNtNtCsgbWeKYPjk8w_3syn2ty4TypeNtNtBP_5token5CommaENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBP_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i
  %.sroa.012.023.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.x, %bb.e ] ; 4 uses
  %.sroa.7.022.i = phi i64 [ 0, %.lr.ph.i ], [ %i.w, %bb.e ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %i.k, %.lr.ph.i ], [ %i.u, %bb.e ]
  %i.u = add i64 %.sroa.10.021.i, -1              ; 2 uses
  %i.v = icmp eq ptr %.sroa.012.023.i, %i.r
  br i1 %i.v, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inTNtNtCsgbWeKYPjk8w_3syn2ty4TypeNtNtBP_5token5CommaENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBP_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2021
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2022)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2023)
  invoke void @_RNvXs11_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtBa_2ty4TypeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([248 x i8]) align 8 captures(none) dereferenceable(256) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.012.023.i)
          to label %bb.e unwind label %bb.g, !noalias !2024

bb.e:                                             ; preds = %bb.d
  %i.w = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 256
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 248
  %.val.i.i = load i32, ptr %i.y, align 4, !alias.scope !2025
  store i32 %.val.i.i, ptr %i.t, align 8, !alias.scope !2022, !noalias !2021
  %i.z = getelementptr inbounds nuw [256 x i8], ptr %i.n, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.z, ptr noundef nonnull align 8 dereferenceable(256) %i.b, i64 256, i1 false), !noalias !2024
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2021
  %i.aa = icmp eq i64 %i.u, 0
  br i1 %i.aa, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inTNtNtCsgbWeKYPjk8w_3syn2ty4TypeNtNtBP_5token5CommaENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBP_.exit, label %bb.c

bb.f:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !2024
  unreachable

bb.g:                                             ; preds = %bb.d
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.q, align 8, !noalias !2021
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtCsgbWeKYPjk8w_3syn2ty4TypeNtNtB1d_5token5CommaEEEB1d_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #17
          to label %bb.h unwind label %bb.f, !noalias !2024

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inTNtNtCsgbWeKYPjk8w_3syn2ty4TypeNtNtBP_5token5CommaENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBP_.exit: ; preds = %bb.c, %bb.e, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i
  store i64 %i.g, ptr %i.q, align 8, !noalias !2021
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !2020
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2021
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtCsgbWeKYPjk8w_3syn2ty8NamedArgNtNtBK_5token5CommaEENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBK_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [312 x i8], align 8               ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !26, !noundef !26 ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !noundef !26 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2032)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2033
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2033
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 29562089861714026) %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 312), !noalias !2033
  %i.h = load i64, ptr %i.a, align 8, !range !44, !noalias !2033, !noundef !26
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !52, !noalias !2033, !noundef !26 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i, !prof !50

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !2033
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #19, !noalias !2033
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !2033, !nonnull !26, !noundef !26 ; 2 uses
  %i.o = icmp samesign ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2033
  store i64 %i.k, ptr %i.c, align 8, !noalias !2033
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !2033
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw [312 x i8], ptr %i.f, i64 %i.g
  %i.s = icmp eq i64 %i.k, 0
  br i1 %i.s, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inTNtNtCsgbWeKYPjk8w_3syn2ty8NamedArgNtNtBP_5token5CommaENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBP_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i
  %.sroa.012.023.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.x, %bb.e ] ; 4 uses
  %.sroa.7.022.i = phi i64 [ 0, %.lr.ph.i ], [ %i.w, %bb.e ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %i.k, %.lr.ph.i ], [ %i.u, %bb.e ]
  %i.u = add i64 %.sroa.10.021.i, -1              ; 2 uses
  %i.v = icmp eq ptr %.sroa.012.023.i, %i.r
  br i1 %i.v, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inTNtNtCsgbWeKYPjk8w_3syn2ty8NamedArgNtNtBP_5token5CommaENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBP_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2033
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2034)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2035)
  invoke void @_RNvXsP_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_2ty8NamedArgNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([304 x i8]) align 8 captures(none) dereferenceable(312) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(312) %.sroa.012.023.i)
          to label %bb.e unwind label %bb.g, !noalias !2036

bb.e:                                             ; preds = %bb.d
  %i.w = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 312
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 304
  %.val.i.i = load i32, ptr %i.y, align 4, !alias.scope !2037
  store i32 %.val.i.i, ptr %i.t, align 8, !alias.scope !2034, !noalias !2033
  %i.z = getelementptr inbounds nuw [312 x i8], ptr %i.n, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.z, ptr noundef nonnull align 8 dereferenceable(312) %i.b, i64 312, i1 false), !noalias !2036
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2033
  %i.aa = icmp eq i64 %i.u, 0
  br i1 %i.aa, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inTNtNtCsgbWeKYPjk8w_3syn2ty8NamedArgNtNtBP_5token5CommaENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBP_.exit, label %bb.c

bb.f:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !2036
  unreachable

bb.g:                                             ; preds = %bb.d
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.q, align 8, !noalias !2033
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtCsgbWeKYPjk8w_3syn2ty8NamedArgNtNtB1d_5token5CommaEEEB1d_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #17
          to label %bb.h unwind label %bb.f, !noalias !2036

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inTNtNtCsgbWeKYPjk8w_3syn2ty8NamedArgNtNtBP_5token5CommaENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBP_.exit: ; preds = %bb.c, %bb.e, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i
  store i64 %i.g, ptr %i.q, align 8, !noalias !2033
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !2032
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2033
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtCsgbWeKYPjk8w_3syn4data5FieldNtNtBK_5token5CommaEENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBK_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [520 x i8], align 8               ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !26, !noundef !26 ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !noundef !26 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2044)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2045
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2045
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 17737253917028416) %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 520), !noalias !2045
  %i.h = load i64, ptr %i.a, align 8, !range !44, !noalias !2045, !noundef !26
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !52, !noalias !2045, !noundef !26 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i, !prof !50

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !2045
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #19, !noalias !2045
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !2045, !nonnull !26, !noundef !26 ; 2 uses
  %i.o = icmp samesign ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2045
  store i64 %i.k, ptr %i.c, align 8, !noalias !2045
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !2045
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw [520 x i8], ptr %i.f, i64 %i.g
  %i.s = icmp eq i64 %i.k, 0
  br i1 %i.s, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inTNtNtCsgbWeKYPjk8w_3syn4data5FieldNtNtBP_5token5CommaENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBP_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i
  %.sroa.012.023.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.x, %bb.e ] ; 4 uses
  %.sroa.7.022.i = phi i64 [ 0, %.lr.ph.i ], [ %i.w, %bb.e ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %i.k, %.lr.ph.i ], [ %i.u, %bb.e ]
  %i.u = add i64 %.sroa.10.021.i, -1              ; 2 uses
  %i.v = icmp eq ptr %.sroa.012.023.i, %i.r
  br i1 %i.v, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inTNtNtCsgbWeKYPjk8w_3syn4data5FieldNtNtBP_5token5CommaENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBP_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2045
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2047)
  invoke void @_RNvXsv_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4data5FieldNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([512 x i8]) align 8 captures(none) dereferenceable(520) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(520) %.sroa.012.023.i)
          to label %bb.e unwind label %bb.g, !noalias !2048

bb.e:                                             ; preds = %bb.d
  %i.w = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 520
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 512
  %.val.i.i = load i32, ptr %i.y, align 4, !alias.scope !2049
  store i32 %.val.i.i, ptr %i.t, align 8, !alias.scope !2046, !noalias !2045
  %i.z = getelementptr inbounds nuw [520 x i8], ptr %i.n, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(520) %i.z, ptr noundef nonnull align 8 dereferenceable(520) %i.b, i64 520, i1 false), !noalias !2048
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2045
  %i.aa = icmp eq i64 %i.u, 0
  br i1 %i.aa, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inTNtNtCsgbWeKYPjk8w_3syn4data5FieldNtNtBP_5token5CommaENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBP_.exit, label %bb.c

bb.f:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !2048
  unreachable

bb.g:                                             ; preds = %bb.d
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.q, align 8, !noalias !2045
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtCsgbWeKYPjk8w_3syn4data5FieldNtNtB1d_5token5CommaEEEB1d_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #17
          to label %bb.h unwind label %bb.f, !noalias !2048

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inTNtNtCsgbWeKYPjk8w_3syn4data5FieldNtNtBP_5token5CommaENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBP_.exit: ; preds = %bb.c, %bb.e, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i
  store i64 %i.g, ptr %i.q, align 8, !noalias !2045
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !2044
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2045
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtCsgbWeKYPjk8w_3syn4data7VariantNtNtBK_5token5CommaEENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBK_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [288 x i8], align 8               ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !26, !noundef !26 ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !noundef !26 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2056)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2057
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2057
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 32025597350190194) %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 288), !noalias !2057
  %i.h = load i64, ptr %i.a, align 8, !range !44, !noalias !2057, !noundef !26
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !52, !noalias !2057, !noundef !26 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i, !prof !50

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !2057
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #19, !noalias !2057
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !2057, !nonnull !26, !noundef !26 ; 2 uses
  %i.o = icmp samesign ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2057
  store i64 %i.k, ptr %i.c, align 8, !noalias !2057
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !2057
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw [288 x i8], ptr %i.f, i64 %i.g
  %i.s = icmp eq i64 %i.k, 0
  br i1 %i.s, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inTNtNtCsgbWeKYPjk8w_3syn4data7VariantNtNtBP_5token5CommaENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBP_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i
  %.sroa.012.023.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.x, %bb.e ] ; 4 uses
  %.sroa.7.022.i = phi i64 [ 0, %.lr.ph.i ], [ %i.w, %bb.e ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %i.k, %.lr.ph.i ], [ %i.u, %bb.e ]
  %i.u = add i64 %.sroa.10.021.i, -1              ; 2 uses
  %i.v = icmp eq ptr %.sroa.012.023.i, %i.r
  br i1 %i.v, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inTNtNtCsgbWeKYPjk8w_3syn4data7VariantNtNtBP_5token5CommaENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBP_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2057
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2058)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2059)
  invoke void @_RNvXs1k_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtBa_4data7VariantNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([280 x i8]) align 8 captures(none) dereferenceable(288) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(288) %.sroa.012.023.i)
          to label %bb.e unwind label %bb.g, !noalias !2060

bb.e:                                             ; preds = %bb.d
  %i.w = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 288
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 280
  %.val.i.i = load i32, ptr %i.y, align 4, !alias.scope !2061
  store i32 %.val.i.i, ptr %i.t, align 8, !alias.scope !2058, !noalias !2057
  %i.z = getelementptr inbounds nuw [288 x i8], ptr %i.n, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.z, ptr noundef nonnull align 8 dereferenceable(288) %i.b, i64 288, i1 false), !noalias !2060
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2057
  %i.aa = icmp eq i64 %i.u, 0
  br i1 %i.aa, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inTNtNtCsgbWeKYPjk8w_3syn4data7VariantNtNtBP_5token5CommaENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBP_.exit, label %bb.c

bb.f:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !2060
  unreachable

bb.g:                                             ; preds = %bb.d
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.q, align 8, !noalias !2057
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtCsgbWeKYPjk8w_3syn4data7VariantNtNtB1d_5token5CommaEEEB1d_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #17
          to label %bb.h unwind label %bb.f, !noalias !2060

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inTNtNtCsgbWeKYPjk8w_3syn4data7VariantNtNtBP_5token5CommaENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBP_.exit: ; preds = %bb.c, %bb.e, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i
  store i64 %i.g, ptr %i.q, align 8, !noalias !2057
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !2056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2057
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtCsgbWeKYPjk8w_3syn4expr10FieldValueNtNtBK_5token5CommaEENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBK_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [232 x i8], align 8               ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !26, !noundef !26 ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !noundef !26 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2068)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2069
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2069
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 39755913951960241) %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 232), !noalias !2069
  %i.h = load i64, ptr %i.a, align 8, !range !44, !noalias !2069, !noundef !26
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !52, !noalias !2069, !noundef !26 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i, !prof !50

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !2069
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #19, !noalias !2069
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !2069, !nonnull !26, !noundef !26 ; 2 uses
  %i.o = icmp samesign ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2069
  store i64 %i.k, ptr %i.c, align 8, !noalias !2069
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !2069
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw [232 x i8], ptr %i.f, i64 %i.g
  %i.s = icmp eq i64 %i.k, 0
  br i1 %i.s, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inTNtNtCsgbWeKYPjk8w_3syn4expr10FieldValueNtNtBP_5token5CommaENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBP_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i
  %.sroa.012.023.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.x, %bb.e ] ; 4 uses
  %.sroa.7.022.i = phi i64 [ 0, %.lr.ph.i ], [ %i.w, %bb.e ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %i.k, %.lr.ph.i ], [ %i.u, %bb.e ]
  %i.u = add i64 %.sroa.10.021.i, -1              ; 2 uses
  %i.v = icmp eq ptr %.sroa.012.023.i, %i.r
  br i1 %i.v, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inTNtNtCsgbWeKYPjk8w_3syn4expr10FieldValueNtNtBP_5token5CommaENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBP_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2069
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2070)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2071)
  invoke void @_RNvXsx_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4expr10FieldValueNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([224 x i8]) align 8 captures(none) dereferenceable(232) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %.sroa.012.023.i)
          to label %bb.e unwind label %bb.g, !noalias !2072

bb.e:                                             ; preds = %bb.d
  %i.w = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 232
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 224
  %.val.i.i = load i32, ptr %i.y, align 4, !alias.scope !2073
  store i32 %.val.i.i, ptr %i.t, align 8, !alias.scope !2070, !noalias !2069
  %i.z = getelementptr inbounds nuw [232 x i8], ptr %i.n, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.z, ptr noundef nonnull align 8 dereferenceable(232) %i.b, i64 232, i1 false), !noalias !2072
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2069
  %i.aa = icmp eq i64 %i.u, 0
  br i1 %i.aa, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inTNtNtCsgbWeKYPjk8w_3syn4expr10FieldValueNtNtBP_5token5CommaENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBP_.exit, label %bb.c

bb.f:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !2072
  unreachable

bb.g:                                             ; preds = %bb.d
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.q, align 8, !noalias !2069
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtCsgbWeKYPjk8w_3syn4expr10FieldValueNtNtB1d_5token5CommaEEEB1d_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #17
          to label %bb.h unwind label %bb.f, !noalias !2072

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inTNtNtCsgbWeKYPjk8w_3syn4expr10FieldValueNtNtBP_5token5CommaENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBP_.exit: ; preds = %bb.c, %bb.e, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i
  store i64 %i.g, ptr %i.q, align 8, !noalias !2069
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !2068
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2069
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtCsgbWeKYPjk8w_3syn4expr4ExprNtNtBK_5token5CommaEENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBK_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [176 x i8], align 8               ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !26, !noundef !26 ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !noundef !26 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2080)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2081
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2081
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 52405522936674863) %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 176), !noalias !2081
  %i.h = load i64, ptr %i.a, align 8, !range !44, !noalias !2081, !noundef !26
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !52, !noalias !2081, !noundef !26 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i, !prof !50

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !2081
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #19, !noalias !2081
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !2081, !nonnull !26, !noundef !26 ; 2 uses
  %i.o = icmp samesign ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2081
  store i64 %i.k, ptr %i.c, align 8, !noalias !2081
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !2081
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw [176 x i8], ptr %i.f, i64 %i.g
  %i.s = icmp eq i64 %i.k, 0
  br i1 %i.s, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inTNtNtCsgbWeKYPjk8w_3syn4expr4ExprNtNtBP_5token5CommaENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBP_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i
  %.sroa.012.023.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.x, %bb.e ] ; 4 uses
  %.sroa.7.022.i = phi i64 [ 0, %.lr.ph.i ], [ %i.w, %bb.e ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %i.k, %.lr.ph.i ], [ %i.u, %bb.e ]
  %i.u = add i64 %.sroa.10.021.i, -1              ; 2 uses
  %i.v = icmp eq ptr %.sroa.012.023.i, %i.r
  br i1 %i.v, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inTNtNtCsgbWeKYPjk8w_3syn4expr4ExprNtNtBP_5token5CommaENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBP_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2081
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2082)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2083)
  invoke void @_RNvXsf_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4expr4ExprNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(176) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %.sroa.012.023.i)
          to label %bb.e unwind label %bb.g, !noalias !2084

bb.e:                                             ; preds = %bb.d
  %i.w = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 176
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 168
  %.val.i.i = load i32, ptr %i.y, align 4, !alias.scope !2085
  store i32 %.val.i.i, ptr %i.t, align 8, !alias.scope !2082, !noalias !2081
  %i.z = getelementptr inbounds nuw [176 x i8], ptr %i.n, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.z, ptr noundef nonnull align 8 dereferenceable(176) %i.b, i64 176, i1 false), !noalias !2084
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2081
  %i.aa = icmp eq i64 %i.u, 0
  br i1 %i.aa, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inTNtNtCsgbWeKYPjk8w_3syn4expr4ExprNtNtBP_5token5CommaENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBP_.exit, label %bb.c

bb.f:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !2084
  unreachable

bb.g:                                             ; preds = %bb.d
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.q, align 8, !noalias !2081
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtCsgbWeKYPjk8w_3syn4expr4ExprNtNtB1d_5token5CommaEEEB1d_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #17
          to label %bb.h unwind label %bb.f, !noalias !2084

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inTNtNtCsgbWeKYPjk8w_3syn4expr4ExprNtNtBP_5token5CommaENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBP_.exit: ; preds = %bb.c, %bb.e, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i
  store i64 %i.g, ptr %i.q, align 8, !noalias !2081
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !2080
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2081
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtCsgbWeKYPjk8w_3syn4path11PathSegmentNtNtBK_5token7PathSepEENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBK_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [96 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !26, !noundef !26 ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !noundef !26 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2092)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2093
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2093
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 96076792050570582) %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 96), !noalias !2093
  %i.h = load i64, ptr %i.a, align 8, !range !44, !noalias !2093, !noundef !26
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !52, !noalias !2093, !noundef !26 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i, !prof !50

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !2093
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #19, !noalias !2093
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !2093, !nonnull !26, !noundef !26 ; 2 uses
  %i.o = icmp samesign ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2093
  store i64 %i.k, ptr %i.c, align 8, !noalias !2093
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !2093
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw [96 x i8], ptr %i.f, i64 %i.g
  %i.s = icmp eq i64 %i.k, 0
  br i1 %i.s, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inTNtNtCsgbWeKYPjk8w_3syn4path11PathSegmentNtNtBP_5token7PathSepENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBP_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i
  %.sroa.012.023.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.x, %bb.e ] ; 4 uses
  %.sroa.7.022.i = phi i64 [ 0, %.lr.ph.i ], [ %i.w, %bb.e ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %i.k, %.lr.ph.i ], [ %i.u, %bb.e ]
  %i.u = add i64 %.sroa.10.021.i, -1              ; 2 uses
  %i.v = icmp eq ptr %.sroa.012.023.i, %i.r
  br i1 %i.v, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inTNtNtCsgbWeKYPjk8w_3syn4path11PathSegmentNtNtBP_5token7PathSepENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBP_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2093
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2094)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2095)
  invoke void @_RNvXsT_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4path11PathSegmentNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %.sroa.012.023.i)
          to label %bb.e unwind label %bb.g, !noalias !2096

bb.e:                                             ; preds = %bb.d
  %i.w = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 96
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 88
  %.val.i.i = load i64, ptr %i.y, align 4, !alias.scope !2097
  store i64 %.val.i.i, ptr %i.t, align 8, !alias.scope !2094, !noalias !2093
  %i.z = getelementptr inbounds nuw [96 x i8], ptr %i.n, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.z, ptr noundef nonnull align 8 dereferenceable(96) %i.b, i64 96, i1 false), !noalias !2096
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2093
  %i.aa = icmp eq i64 %i.u, 0
  br i1 %i.aa, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inTNtNtCsgbWeKYPjk8w_3syn4path11PathSegmentNtNtBP_5token7PathSepENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBP_.exit, label %bb.c

bb.f:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !2096
  unreachable

bb.g:                                             ; preds = %bb.d
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.q, align 8, !noalias !2093
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtCsgbWeKYPjk8w_3syn4path11PathSegmentNtNtB1d_5token7PathSepEEEB1d_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #17
          to label %bb.h unwind label %bb.f, !noalias !2096

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inTNtNtCsgbWeKYPjk8w_3syn4path11PathSegmentNtNtBP_5token7PathSepENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBP_.exit: ; preds = %bb.c, %bb.e, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i
  store i64 %i.g, ptr %i.q, align 8, !noalias !2093
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !2092
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2093
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtCsgbWeKYPjk8w_3syn4path15GenericArgumentNtNtBK_5token5CommaEENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBK_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [344 x i8], align 8               ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !26, !noundef !26 ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !noundef !26 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2104)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2105
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 26812128014112721) %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 344), !noalias !2105
  %i.h = load i64, ptr %i.a, align 8, !range !44, !noalias !2105, !noundef !26
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !52, !noalias !2105, !noundef !26 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i, !prof !50

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !2105
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #19, !noalias !2105
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !2105, !nonnull !26, !noundef !26 ; 2 uses
  %i.o = icmp samesign ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2105
  store i64 %i.k, ptr %i.c, align 8, !noalias !2105
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !2105
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw [344 x i8], ptr %i.f, i64 %i.g
  %i.s = icmp eq i64 %i.k, 0
  br i1 %i.s, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inTNtNtCsgbWeKYPjk8w_3syn4path15GenericArgumentNtNtBP_5token5CommaENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBP_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i
  %.sroa.012.023.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.x, %bb.e ] ; 4 uses
  %.sroa.7.022.i = phi i64 [ 0, %.lr.ph.i ], [ %i.w, %bb.e ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %i.k, %.lr.ph.i ], [ %i.u, %bb.e ]
  %i.u = add i64 %.sroa.10.021.i, -1              ; 2 uses
  %i.v = icmp eq ptr %.sroa.012.023.i, %i.r
  br i1 %i.v, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inTNtNtCsgbWeKYPjk8w_3syn4path15GenericArgumentNtNtBP_5token5CommaENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBP_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2105
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2107)
  invoke void @_RNvXsC_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4path15GenericArgumentNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([336 x i8]) align 8 captures(none) dereferenceable(344) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(344) %.sroa.012.023.i)
          to label %bb.e unwind label %bb.g, !noalias !2108

bb.e:                                             ; preds = %bb.d
  %i.w = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 344
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 336
  %.val.i.i = load i32, ptr %i.y, align 4, !alias.scope !2109
  store i32 %.val.i.i, ptr %i.t, align 8, !alias.scope !2106, !noalias !2105
  %i.z = getelementptr inbounds nuw [344 x i8], ptr %i.n, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %i.z, ptr noundef nonnull align 8 dereferenceable(344) %i.b, i64 344, i1 false), !noalias !2108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2105
  %i.aa = icmp eq i64 %i.u, 0
  br i1 %i.aa, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inTNtNtCsgbWeKYPjk8w_3syn4path15GenericArgumentNtNtBP_5token5CommaENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBP_.exit, label %bb.c

bb.f:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !2108
  unreachable

bb.g:                                             ; preds = %bb.d
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.q, align 8, !noalias !2105
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtCsgbWeKYPjk8w_3syn4path15GenericArgumentNtNtB1d_5token5CommaEEEB1d_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #17
          to label %bb.h unwind label %bb.f, !noalias !2108

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inTNtNtCsgbWeKYPjk8w_3syn4path15GenericArgumentNtNtBP_5token5CommaENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBP_.exit: ; preds = %bb.c, %bb.e, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i
  store i64 %i.g, ptr %i.q, align 8, !noalias !2105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !2104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2105
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtCsgbWeKYPjk8w_3syn8generics12GenericParamNtNtBK_5token5CommaEENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBK_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [488 x i8], align 8               ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !26, !noundef !26 ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !noundef !26 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2116)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2117
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 18900352534538476) %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 488), !noalias !2117
  %i.h = load i64, ptr %i.a, align 8, !range !44, !noalias !2117, !noundef !26
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !52, !noalias !2117, !noundef !26 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i, !prof !50

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !2117
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #19, !noalias !2117
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !2117, !nonnull !26, !noundef !26 ; 2 uses
  %i.o = icmp samesign ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2117
  store i64 %i.k, ptr %i.c, align 8, !noalias !2117
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !2117
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw [488 x i8], ptr %i.f, i64 %i.g
  %i.s = icmp eq i64 %i.k, 0
  br i1 %i.s, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inTNtNtCsgbWeKYPjk8w_3syn8generics12GenericParamNtNtBP_5token5CommaENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBP_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 480
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i
  %.sroa.012.023.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.x, %bb.e ] ; 4 uses
  %.sroa.7.022.i = phi i64 [ 0, %.lr.ph.i ], [ %i.w, %bb.e ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %i.k, %.lr.ph.i ], [ %i.u, %bb.e ]
  %i.u = add i64 %.sroa.10.021.i, -1              ; 2 uses
  %i.v = icmp eq ptr %.sroa.012.023.i, %i.r
  br i1 %i.v, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inTNtNtCsgbWeKYPjk8w_3syn8generics12GenericParamNtNtBP_5token5CommaENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBP_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2117
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2119)
  invoke void @_RNvXsD_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_8generics12GenericParamNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([480 x i8]) align 8 captures(none) dereferenceable(488) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(488) %.sroa.012.023.i)
          to label %bb.e unwind label %bb.g, !noalias !2120

bb.e:                                             ; preds = %bb.d
  %i.w = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 488
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 480
  %.val.i.i = load i32, ptr %i.y, align 4, !alias.scope !2121
  store i32 %.val.i.i, ptr %i.t, align 8, !alias.scope !2118, !noalias !2117
  %i.z = getelementptr inbounds nuw [488 x i8], ptr %i.n, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(488) %i.z, ptr noundef nonnull align 8 dereferenceable(488) %i.b, i64 488, i1 false), !noalias !2120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2117
  %i.aa = icmp eq i64 %i.u, 0
  br i1 %i.aa, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inTNtNtCsgbWeKYPjk8w_3syn8generics12GenericParamNtNtBP_5token5CommaENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBP_.exit, label %bb.c

bb.f:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !2120
  unreachable

bb.g:                                             ; preds = %bb.d
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.q, align 8, !noalias !2117
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtCsgbWeKYPjk8w_3syn8generics12GenericParamNtNtB1d_5token5CommaEEEB1d_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #17
          to label %bb.h unwind label %bb.f, !noalias !2120

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inTNtNtCsgbWeKYPjk8w_3syn8generics12GenericParamNtNtBP_5token5CommaENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBP_.exit: ; preds = %bb.c, %bb.e, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i
  store i64 %i.g, ptr %i.q, align 8, !noalias !2117
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !2116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2117
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtCsgbWeKYPjk8w_3syn8generics14TypeParamBoundNtNtBK_5token4PlusEENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBK_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [128 x i8], align 8               ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !26, !noundef !26 ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !noundef !26 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2128)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2129
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 72057594037927936) %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 128), !noalias !2129
  %i.h = load i64, ptr %i.a, align 8, !range !44, !noalias !2129, !noundef !26
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !52, !noalias !2129, !noundef !26 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i, !prof !50

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !2129
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #19, !noalias !2129
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !2129, !nonnull !26, !noundef !26 ; 2 uses
  %i.o = icmp samesign ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2129
  store i64 %i.k, ptr %i.c, align 8, !noalias !2129
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !2129
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw [128 x i8], ptr %i.f, i64 %i.g
  %i.s = icmp eq i64 %i.k, 0
  br i1 %i.s, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inTNtNtCsgbWeKYPjk8w_3syn8generics14TypeParamBoundNtNtBP_5token4PlusENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBP_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i
  %.sroa.012.023.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.x, %bb.e ] ; 4 uses
  %.sroa.7.022.i = phi i64 [ 0, %.lr.ph.i ], [ %i.w, %bb.e ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %i.k, %.lr.ph.i ], [ %i.u, %bb.e ]
  %i.u = add i64 %.sroa.10.021.i, -1              ; 2 uses
  %i.v = icmp eq ptr %.sroa.012.023.i, %i.r
  br i1 %i.v, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inTNtNtCsgbWeKYPjk8w_3syn8generics14TypeParamBoundNtNtBP_5token4PlusENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBP_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2129
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2131)
  invoke void @_RNvXs1a_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtBa_8generics14TypeParamBoundNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(128) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %.sroa.012.023.i)
          to label %bb.e unwind label %bb.g, !noalias !2132

bb.e:                                             ; preds = %bb.d
  %i.w = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 128
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 120
  %.val.i.i = load i32, ptr %i.y, align 4, !alias.scope !2133
  store i32 %.val.i.i, ptr %i.t, align 8, !alias.scope !2130, !noalias !2129
  %i.z = getelementptr inbounds nuw [128 x i8], ptr %i.n, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.z, ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 128, i1 false), !noalias !2132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2129
  %i.aa = icmp eq i64 %i.u, 0
  br i1 %i.aa, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inTNtNtCsgbWeKYPjk8w_3syn8generics14TypeParamBoundNtNtBP_5token4PlusENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBP_.exit, label %bb.c

bb.f:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !2132
  unreachable

bb.g:                                             ; preds = %bb.d
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.q, align 8, !noalias !2129
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtCsgbWeKYPjk8w_3syn8generics14TypeParamBoundNtNtB1d_5token4PlusEEEB1d_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #17
          to label %bb.h unwind label %bb.f, !noalias !2132

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inTNtNtCsgbWeKYPjk8w_3syn8generics14TypeParamBoundNtNtBP_5token4PlusENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBP_.exit: ; preds = %bb.c, %bb.e, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i
  store i64 %i.g, ptr %i.q, align 8, !noalias !2129
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !2128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2129
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtCsgbWeKYPjk8w_3syn8generics14WherePredicateNtNtBK_5token5CommaEENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBK_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [368 x i8], align 8               ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !26, !noundef !26 ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !noundef !26 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2140)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2141
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 25063510969714065) %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 368), !noalias !2141
  %i.h = load i64, ptr %i.a, align 8, !range !44, !noalias !2141, !noundef !26
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !52, !noalias !2141, !noundef !26 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i, !prof !50

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !2141
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #19, !noalias !2141
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !2141, !nonnull !26, !noundef !26 ; 2 uses
  %i.o = icmp samesign ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2141
  store i64 %i.k, ptr %i.c, align 8, !noalias !2141
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !2141
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw [368 x i8], ptr %i.f, i64 %i.g
  %i.s = icmp eq i64 %i.k, 0
  br i1 %i.s, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inTNtNtCsgbWeKYPjk8w_3syn8generics14WherePredicateNtNtBP_5token5CommaENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBP_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i
  %.sroa.012.023.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.x, %bb.e ] ; 4 uses
  %.sroa.7.022.i = phi i64 [ 0, %.lr.ph.i ], [ %i.w, %bb.e ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %i.k, %.lr.ph.i ], [ %i.u, %bb.e ]
  %i.u = add i64 %.sroa.10.021.i, -1              ; 2 uses
  %i.v = icmp eq ptr %.sroa.012.023.i, %i.r
  br i1 %i.v, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inTNtNtCsgbWeKYPjk8w_3syn8generics14WherePredicateNtNtBP_5token5CommaENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBP_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2141
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2143)
  invoke void @_RNvXs1o_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtBa_8generics14WherePredicateNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([360 x i8]) align 8 captures(none) dereferenceable(368) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(368) %.sroa.012.023.i)
          to label %bb.e unwind label %bb.g, !noalias !2144

bb.e:                                             ; preds = %bb.d
  %i.w = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 368
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 360
  %.val.i.i = load i32, ptr %i.y, align 4, !alias.scope !2145
  store i32 %.val.i.i, ptr %i.t, align 8, !alias.scope !2142, !noalias !2141
  %i.z = getelementptr inbounds nuw [368 x i8], ptr %i.n, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %i.z, ptr noundef nonnull align 8 dereferenceable(368) %i.b, i64 368, i1 false), !noalias !2144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2141
  %i.aa = icmp eq i64 %i.u, 0
  br i1 %i.aa, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inTNtNtCsgbWeKYPjk8w_3syn8generics14WherePredicateNtNtBP_5token5CommaENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBP_.exit, label %bb.c

bb.f:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !2144
  unreachable

bb.g:                                             ; preds = %bb.d
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.q, align 8, !noalias !2141
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtCsgbWeKYPjk8w_3syn8generics14WherePredicateNtNtB1d_5token5CommaEEEB1d_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #17
          to label %bb.h unwind label %bb.f, !noalias !2144

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inTNtNtCsgbWeKYPjk8w_3syn8generics14WherePredicateNtNtBP_5token5CommaENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBP_.exit: ; preds = %bb.c, %bb.e, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i
  store i64 %i.g, ptr %i.q, align 8, !noalias !2141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !2140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2141
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeNtNtBK_5token4PlusEENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBK_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !26, !noundef !26 ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !noundef !26 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2152)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2153
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 230584300921369396) %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 40), !noalias !2153
  %i.h = load i64, ptr %i.a, align 8, !range !44, !noalias !2153, !noundef !26
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !52, !noalias !2153, !noundef !26 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i, !prof !50

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !2153
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #19, !noalias !2153
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !2153, !nonnull !26, !noundef !26 ; 2 uses
  %i.o = icmp samesign ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2153
  store i64 %i.k, ptr %i.c, align 8, !noalias !2153
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !2153
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw [40 x i8], ptr %i.f, i64 %i.g
  %i.s = icmp eq i64 %i.k, 0
  br i1 %i.s, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inTNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeNtNtBP_5token4PlusENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBP_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i
  %.sroa.012.023.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.x, %bb.e ] ; 4 uses
  %.sroa.7.022.i = phi i64 [ 0, %.lr.ph.i ], [ %i.w, %bb.e ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %i.k, %.lr.ph.i ], [ %i.u, %bb.e ]
  %i.u = add i64 %.sroa.10.021.i, -1              ; 2 uses
  %i.v = icmp eq ptr %.sroa.012.023.i, %i.r
  br i1 %i.v, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inTNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeNtNtBP_5token4PlusENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBP_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2153
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2155)
  invoke void @_RNvXs0_NtCsgbWeKYPjk8w_3syn8lifetimeNtB5_8LifetimeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.012.023.i)
          to label %bb.e unwind label %bb.g, !noalias !2156

bb.e:                                             ; preds = %bb.d
  %i.w = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 32
  %.val.i.i = load i32, ptr %i.y, align 4, !alias.scope !2157
  store i32 %.val.i.i, ptr %i.t, align 8, !alias.scope !2154, !noalias !2153
  %i.z = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.z, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false), !noalias !2156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2153
  %i.aa = icmp eq i64 %i.u, 0
  br i1 %i.aa, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inTNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeNtNtBP_5token4PlusENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBP_.exit, label %bb.c

bb.f:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !2156
  unreachable

bb.g:                                             ; preds = %bb.d
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.q, align 8, !noalias !2153
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeNtNtB1d_5token4PlusEEEB1d_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #17
          to label %bb.h unwind label %bb.f, !noalias !2156

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inTNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeNtNtBP_5token4PlusENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBP_.exit: ; preds = %bb.c, %bb.e, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i
  store i64 %i.g, ptr %i.q, align 8, !noalias !2153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !2152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2153
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtCs3b5wA5ywLsd_10proc_macro9TokenTreeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !26, !noundef !26 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !26 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtCs3b5wA5ywLsd_10proc_macro9TokenTreeECsgbWeKYPjk8w_3syn.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs3b5wA5ywLsd_10proc_macro9TokenTreeECsgbWeKYPjk8w_3syn.exit.i
  %.sroa.0.09.i = phi i64 [ %i.g, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs3b5wA5ywLsd_10proc_macro9TokenTreeECsgbWeKYPjk8w_3syn.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [20 x i8], ptr %i.b, i64 %.sroa.0.09.i ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.i = load i8, ptr %i.h, align 4, !range !32, !alias.scope !2176, !noundef !26
  %i.j = icmp samesign ult i8 %i.i, 4
  br i1 %i.j, label %bb.b, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs3b5wA5ywLsd_10proc_macro9TokenTreeECsgbWeKYPjk8w_3syn.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !alias.scope !2177, !noundef !26
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs3b5wA5ywLsd_10proc_macro9TokenTreeECsgbWeKYPjk8w_3syn.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXs0_NtNtCs3b5wA5ywLsd_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.k)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs3b5wA5ywLsd_10proc_macro9TokenTreeECsgbWeKYPjk8w_3syn.exit.i unwind label %bb.d

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs3b5wA5ywLsd_10proc_macro9TokenTreeECsgbWeKYPjk8w_3syn.exit.i: ; preds = %bb.c, %bb.b, %.lr.ph.i
  %i.n = icmp eq i64 %i.g, %i.d
  br i1 %i.n, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtCs3b5wA5ywLsd_10proc_macro9TokenTreeECsgbWeKYPjk8w_3syn.exit, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = icmp eq i64 %i.g, %i.d
  br i1 %i.p, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.d, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs3b5wA5ywLsd_10proc_macro9TokenTreeECsgbWeKYPjk8w_3syn.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.r, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs3b5wA5ywLsd_10proc_macro9TokenTreeECsgbWeKYPjk8w_3syn.exit8.i ], [ %i.g, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw [20 x i8], ptr %i.b, i64 %.sroa.0.110.i ; 2 uses
  %i.r = add i64 %.sroa.0.110.i, 1                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = load i8, ptr %i.s, align 4, !range !32, !alias.scope !2178, !noundef !26
  %i.u = icmp samesign ult i8 %i.t, 4
  br i1 %i.u, label %bb.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs3b5wA5ywLsd_10proc_macro9TokenTreeECsgbWeKYPjk8w_3syn.exit8.i

bb.e:                                             ; preds = %.lr.ph12.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !alias.scope !2179, !noundef !26
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs3b5wA5ywLsd_10proc_macro9TokenTreeECsgbWeKYPjk8w_3syn.exit8.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXs0_NtNtCs3b5wA5ywLsd_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.v)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs3b5wA5ywLsd_10proc_macro9TokenTreeECsgbWeKYPjk8w_3syn.exit8.i unwind label %bb.g

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs3b5wA5ywLsd_10proc_macro9TokenTreeECsgbWeKYPjk8w_3syn.exit8.i: ; preds = %bb.f, %bb.e, %.lr.ph12.i
  %i.y = icmp eq i64 %i.r, %i.d
  br i1 %i.y, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs3b5wA5ywLsd_10proc_macro9TokenTreeECsgbWeKYPjk8w_3syn.exit8.i, %bb.d
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtCs3b5wA5ywLsd_10proc_macro9TokenTreeECsgbWeKYPjk8w_3syn.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs3b5wA5ywLsd_10proc_macro9TokenTreeECsgbWeKYPjk8w_3syn.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !26, !noundef !26 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !26 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEBG_.exit, label %.lr.ph

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEBF_.exit.i: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEBG_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEBF_.exit.i
  %.sroa.0.0.i1 = phi i64 [ %i.h, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEBF_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [248 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4attr4MetaEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(248) %i.g)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEBF_.exit.i unwind label %bb.b, !inline_history !2180

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEBF_.exit7.i: ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEBF_.exit7.i._crit_edge, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEBF_.exit7.i._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEBF_.exit7.i
  %.sroa.0.1.i2 = phi i64 [ %i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEBF_.exit7.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [248 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4attr4MetaEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(248) %i.m)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEBF_.exit7.i unwind label %bb.c, !inline_history !2180

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEBF_.exit7.i._crit_edge: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEBF_.exit7.i, %bb.b
  resume { ptr, i32 } %i.k

bb.c:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !inline_history !2181
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEBG_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEBF_.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4data5FieldENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !26, !noundef !26 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !26 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtCsgbWeKYPjk8w_3syn4data5FieldEBG_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtCsgbWeKYPjk8w_3syn4data5FieldEBG_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [512 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4data5FieldEBF_(ptr noalias nofree noundef align 8 dereferenceable(512) %i.g)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %._crit_edge, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
end_hunk_0

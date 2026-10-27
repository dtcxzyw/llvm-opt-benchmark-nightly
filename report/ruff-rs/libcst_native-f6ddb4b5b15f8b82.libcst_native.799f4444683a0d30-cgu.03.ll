Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/libcst_native-f6ddb4b5b15f8b82.libcst_native.799f4444683a0d30-cgu.03?download=true
inline.NumInlined: 1751
inline.NumDeleted: 369
begin_hunk_0_@_RNvXsA_NtNtCsarohYtwVpE2_13libcst_native5nodes10expressionNtB5_17DeflatedAttributeNtNtB7_6traits7Inflate7inflate:bb.a
bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aq = load i64, ptr %i.b, align 8, !range !14, !noundef !11
  %i.ar = trunc nuw i64 %i.aq to i1
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.528, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.ar, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.528, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.528)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression4NameEBH_(ptr noalias noundef align 8 dereferenceable(64) %i.e)
          to label %bb.y unwind label %bb.p

bb.w:                                             ; preds = %bb.u
  %.sroa.029.88..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.029, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.029)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.029.88..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.528, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.528)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.029, ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 64, i1 false)
  %.sroa.029.112..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.029, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %.sroa.029.112..sroa_idx, ptr noundef nonnull align 8 dereferenceable(208) %i.g, i64 208, i1 false)
  %.sroa.029.64..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.029, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.029.64..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.029, i64 320, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 320
  store ptr %i.aa, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.029)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.x

bb.x:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedRightParenEEB1d_.exit, %bb.ag, %bb.w
  ret void

bb.y:                                             ; preds = %bb.v, %bb.r
  %.sroa.030.8 = phi i8 [ 1, %bb.r ], [ 0, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op3DotEBH_(ptr noalias noundef align 8 dereferenceable(208) %i.g)
          to label %bb.aa unwind label %bb.k

bb.z:                                             ; preds = %bb.ao, %.thread.thread, %bb.am, %.thread85, %.body, %bb.t, %bb.o, %bb.j, %.body63
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.aa:                                            ; preds = %bb.y, %bb.m
  %.sroa.030.9 = phi i8 [ 1, %bb.m ], [ %.sroa.030.8, %bb.y ] ; 2 uses
  %.sroa.033.6 = phi i8 [ 1, %bb.m ], [ 0, %bb.y ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression10ExpressionEBH_(ptr noalias noundef align 8 dereferenceable(16) %i.aa) #14
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression10ExpressionEEB1f_.exit unwind label %bb.ab, !noalias !2556, !inline_history !22

bb.ab:                                            ; preds = %bb.aa
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aa, i64 noundef 16, i64 noundef 8) #15, !noalias !2556, !inline_history !22
  br label %.body63

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression10ExpressionEEB1f_.exit: ; preds = %bb.aa
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aa, i64 noundef 16, i64 noundef 8) #15, !noalias !2556, !inline_history !22
  br label %bb.ac

bb.ac:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression10ExpressionEEB1f_.exit, %bb.h
  %.sroa.030.10 = phi i8 [ 1, %bb.h ], [ %.sroa.030.9, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression10ExpressionEEB1f_.exit ] ; 4 uses
  %.sroa.033.7 = phi i8 [ 1, %bb.h ], [ %.sroa.033.6, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression10ExpressionEEB1f_.exit ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression9LeftParenENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.ae unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression9LeftParenENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.thread unwind label %bb.af

bb.ae:                                            ; preds = %bb.ac
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression9LeftParenENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression9LeftParenEEB1d_.exit unwind label %bb.b

bb.af:                                            ; preds = %bb.ad
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression9LeftParenEEB1d_.exit: ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.ay = trunc nuw i8 %.sroa.033.7 to i1
  br i1 %i.ay, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.ah, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression9LeftParenEEB1d_.exit
  %.sroa.030.11 = phi i8 [ %.sroa.030.12, %bb.ah ], [ %.sroa.030.10, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression9LeftParenEEB1d_.exit ]
  %i.az = trunc nuw i8 %.sroa.030.11 to i1
  br i1 %i.az, label %bb.aj, label %bb.x

bb.ah:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEB1f_.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression9LeftParenEEB1d_.exit
  %.sroa.030.12 = phi i8 [ 1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEB1f_.exit ], [ %.sroa.030.10, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression9LeftParenEEB1d_.exit ] ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression12DeflatedNameEBH_(ptr noalias noundef align 8 dereferenceable(64) %1)
          to label %bb.ag unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = trunc nuw i8 %.sroa.030.12 to i1
  br i1 %i.bb, label %.thread85, label %common.resume

bb.aj:                                            ; preds = %bb.ag
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedRightParenENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedRightParenEEB1d_.exit unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedRightParenENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %common.resume unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13
  unreachable

common.resume:                                    ; preds = %bb.ai, %.thread85, %bb.an, %bb.ao, %bb.ak
  %common.resume.op = phi { ptr, i32 } [ %i.bd, %bb.ak ], [ %.pn6088, %.thread85 ], [ %i.ba, %bb.ai ], [ %.pn587392, %bb.ao ], [ %.pn587392, %bb.an ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedRightParenEEB1d_.exit: ; preds = %bb.aj
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedRightParenENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bc)
  br label %bb.x

.thread85:                                        ; preds = %.body, %bb.ai
  %.pn6088 = phi { ptr, i32 } [ %i.ba, %bb.ai ], [ %i.u, %.body ]
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 88
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedRightParenEEB1d_(ptr noalias noundef align 8 dereferenceable(24) %i.bf) #16
          to label %common.resume unwind label %bb.z

.thread:                                          ; preds = %bb.ad, %.body63, %bb.b
  %.pn5873 = phi { ptr, i32 } [ %.pn56, %.body63 ], [ %i.aw, %bb.ad ], [ %i.n, %bb.b ] ; 2 uses
  %.sroa.033.072 = phi i8 [ %.sroa.033.2, %.body63 ], [ %.sroa.033.7, %bb.ad ], [ %.sroa.033.7, %bb.b ]
  %.sroa.030.071 = phi i8 [ %.sroa.030.2, %.body63 ], [ %.sroa.030.10, %bb.ad ], [ %.sroa.030.10, %bb.b ] ; 2 uses
  %i.bg = trunc nuw i8 %.sroa.033.072 to i1
  br i1 %i.bg, label %.thread.thread, label %bb.an

bb.am:                                            ; preds = %bb.a
  %i.bh = landingpad { ptr, i32 }
          cleanup
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 112
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEB1f_(ptr noalias noundef align 8 dereferenceable(8) %i.bi) #16
          to label %.thread.thread unwind label %bb.z

bb.an:                                            ; preds = %.thread.thread, %.thread
  %.sroa.030.07194 = phi i8 [ %.sroa.030.07195, %.thread.thread ], [ %.sroa.030.071, %.thread ]
  %.pn587392 = phi { ptr, i32 } [ %.pn587393, %.thread.thread ], [ %.pn5873, %.thread ] ; 2 uses
  %i.bj = trunc nuw i8 %.sroa.030.07194 to i1
  br i1 %i.bj, label %bb.ao, label %common.resume

.thread.thread:                                   ; preds = %bb.am, %.thread
  %.sroa.030.07195 = phi i8 [ %.sroa.030.071, %.thread ], [ 1, %bb.am ]
  %.pn587393 = phi { ptr, i32 } [ %.pn5873, %.thread ], [ %i.bh, %bb.am ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression12DeflatedNameEBH_(ptr noalias noundef align 8 dereferenceable(64) %1) #16
          to label %bb.an unwind label %bb.z

bb.ao:                                            ; preds = %bb.an
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 88
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedRightParenEEB1d_(ptr noalias noundef align 8 dereferenceable(24) %i.bk) #16
          to label %common.resume unwind label %bb.z
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsB_NtNtCsarohYtwVpE2_13libcst_native5nodes10expressionNtB5_9AttributeNtNtB7_7codegen7Codegen7codegen(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %0, ptr noalias noundef align 8 dereferenceable(80) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.a, align 8
  call fastcc void @_RINvYNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression9AttributeNtNtB7_6traits17ParenthesizedNode12parenthesizeNCNvXsB_B5_B3_NtNtB7_7codegen7Codegen7codegen0EB9_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %0, ptr noalias noundef align 8 dereferenceable(80) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsD_NtNtCsarohYtwVpE2_13libcst_native5nodes10expressionNtB5_16ComparisonTargetNtNtB7_7codegen7Codegen7codegen(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(336) %0, ptr noalias noundef align 8 dereferenceable(80) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXsg_NtNtCsarohYtwVpE2_13libcst_native5nodes2opNtB5_6CompOpNtNtB7_7codegen7Codegen7codegen(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(320) %0, ptr noalias noundef nonnull align 8 dereferenceable(80) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  tail call void @_RNvXs3F_NtNtCsarohYtwVpE2_13libcst_native5nodes10expressionNtB6_10ExpressionNtNtB8_7codegen7Codegen7codegen(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(80) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsE_NtNtCsarohYtwVpE2_13libcst_native5nodes10expressionNtB5_24DeflatedComparisonTargetNtNtB7_6traits7Inflate7inflate(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([336 x i8]) align 8 captures(none) dereferenceable(336) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [320 x i8], align 8               ; 7 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 6 uses
  %i.c = alloca [320 x i8], align 8               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXsh_NtNtCsarohYtwVpE2_13libcst_native5nodes2opNtB5_14DeflatedCompOpNtNtB7_6traits7Inflate7inflate(ptr noalias noundef nonnull sret([320 x i8]) align 8 captures(none) dereferenceable(320) %i.b, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %2)
          to label %bb.b unwind label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !range !2557, !noundef !11 ; 2 uses
  %i.e = icmp eq i64 %i.d, -1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef align 8 dereferenceable(16) %i.h)
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(288) %.sroa.522.0..sroa_idx, i64 288, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  store i64 %i.d, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load i64, ptr %i.i, align 8, !range !17, !noundef !11
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !noundef !11
  invoke void @_RNvXs3M_NtNtCsarohYtwVpE2_13libcst_native5nodes10expressionNtB6_18DeflatedExpressionNtNtB8_6traits7Inflate7inflate(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.j, ptr noundef %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %2)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op6CompOpEBH_(ptr noalias noundef align 8 dereferenceable(320) %i.c) #16
          to label %.thread unwind label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.n = load i64, ptr %i.a, align 8, !range !27, !noundef !11 ; 2 uses
  %.not = icmp eq i64 %i.n, -1
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %i.s, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.p, ptr %.sroa.430.0..sroa_idx, align 8
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.r, ptr %.sroa.531.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op6CompOpEBH_(ptr noalias noundef align 8 dereferenceable(320) %i.c)
  br label %.sink.split

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(320) %i.c, i64 320, i1 false)
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i64 %i.p, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr %i.r, ptr %.sroa.518.0..sroa_idx, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.c
  ret void

bb.j:                                             ; preds = %bb.k, %bb.e
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13
  unreachable

.thread:                                          ; preds = %bb.e, %bb.k
  %.pn37 = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.u, %bb.k ]
  resume { ptr, i32 } %.pn37

bb.k:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef align 8 dereferenceable(16) %i.v) #16
          to label %.thread unwind label %bb.j
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsG_NtNtCsarohYtwVpE2_13libcst_native5nodes10expressionNtB5_22DeflatedStarredElementNtNtB7_6traits7Inflate7inflate(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([368 x i8]) align 8 captures(none) dereferenceable(368) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(72) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMsF_NtNtCsarohYtwVpE2_13libcst_native5nodes10expressionNtB5_22DeflatedStarredElement15inflate_element(ptr noalias noundef nonnull sret([368 x i8]) align 8 captures(none) dereferenceable(368) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %2, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsH_NtNtCsarohYtwVpE2_13libcst_native5nodes10expressionNtB5_14StarredElementNtNtB7_7codegen7Codegen7codegen(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(368) %0, ptr noalias noundef align 8 dereferenceable(80) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.a, align 8
  call fastcc void @_RINvYNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression14StarredElementNtNtB7_6traits17ParenthesizedNode12parenthesizeNCNvXsH_B5_B3_NtNtB7_7codegen7Codegen7codegen0EB9_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(368) %0, ptr noalias noundef align 8 dereferenceable(80) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !range !13, !noundef !11
  %.not = icmp eq i64 %i.c, -2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvXs0_NtNtCsarohYtwVpE2_13libcst_native5nodes2opNtB5_5CommaNtNtB7_7codegen7Codegen7codegen(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(208) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(80) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvXsL_NtNtCsarohYtwVpE2_13libcst_native5nodes10expressionNtB5_15DeflatedElementINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_18DeflatedExpressionE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef range(i64 0, 30) %1, ptr noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i64 %1, 20
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ %1, %bb.b ], [ -1, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.c, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsM_NtNtCsarohYtwVpE2_13libcst_native5nodes10expressionNtB5_13DeflatedTupleNtNtB7_6traits7Inflate7inflate(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(72) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.58 = alloca [24 x i8], align 8           ; 6 uses
  %i.d = alloca [56 x i8], align 8                ; 10 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.52 = alloca [24 x i8], align 8           ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 10 uses
  %i.k = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %2, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  invoke void @_RNvXs2_NtNtCsarohYtwVpE2_13libcst_native5nodes6traitsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB7_10expression17DeflatedLeftParenENtB5_7Inflate7inflateB9_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.i, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %2)
          to label %bb.c unwind label %bb.ab

bb.b:                                             ; preds = %bb.v
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.n = load i64, ptr %i.i, align 8, !range !14, !noundef !11
  %i.o = trunc nuw i64 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %i.o, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression15DeflatedElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression15DeflatedElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %.body unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression15DeflatedElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression15DeflatedElementEEB1d_.exit unwind label %bb.aa

bb.g:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.h:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load i64, ptr %i.t, align 8, !noundef !11 ; 3 uses
  store i64 %i.u, ptr %i.g, align 8
  %i.v = icmp ult i64 %i.u, 384307168202282326
  call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.52)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !11, !noundef !11 ; 3 uses
  %i.y = load i64, ptr %1, align 8, !range !31, !noundef !11
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %i.u
  store ptr %i.x, ptr %i.d, align 8
  %.sroa.03.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.x, ptr %.sroa.03.sroa.4.0..sroa_idx, align 8
  %.sroa.03.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.y, ptr %.sroa.03.sroa.5.0..sroa_idx, align 8
  %.sroa.03.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.z, ptr %.sroa.03.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %i.k, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %i.g, ptr %i.ab, align 8
  invoke void @_RINvNtNtCs4NRVxsYgnAr_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtB2_9enumerate9EnumerateINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression15DeflatedElementEENCNvXsM_B2n_NtB2n_13DeflatedTupleNtNtB2p_6traits7Inflate7inflate0ENtB2n_7ElementINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtNtB2r_9tokenizer17whitespace_parser15WhitespaceErrorENCINvXso_B4Q_IB4O_INtB1D_3VecB4z_EB5A_EINtNtNtB4_6traits7collect12FromIteratorIB4O_B4z_B5A_EE9from_iterBQ_E0B6N_EB2r_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.d)
          to label %bb.j unwind label %bb.i

.body19:                                          ; preds = %bb.p, %bb.i, %bb.m
  %.sroa.09.2 = phi i8 [ 0, %bb.m ], [ %.sroa.09.3, %bb.i ], [ 0, %bb.p ]
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.m ], [ %i.ac, %bb.i ], [ %i.ao, %bb.p ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression9LeftParenEEB1d_(ptr noalias noundef align 8 dereferenceable(24) %i.j) #16
          to label %.thread unwind label %bb.x

bb.i:                                             ; preds = %bb.q, %bb.h
  %.sroa.09.3 = phi i8 [ 0, %bb.q ], [ 1, %bb.h ]
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body19

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ad = load i64, ptr %i.e, align 8, !range !14, !noundef !11
  %i.ae = trunc nuw i64 %i.ad to i1
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.52, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.52, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.52)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression7ElementEEB1d_.exit

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.52, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.52)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.58)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
end_hunk_0

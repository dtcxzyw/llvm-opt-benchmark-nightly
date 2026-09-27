Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/syn-rs/original/syn-2b0ecb81dd371323.syn.bc9ad91376fc82fa-cgu.07?download=true
inline.NumInlined: 615
inline.NumDeleted: 172
begin_hunk_0_@_RNvXs1e_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtBa_2ty13TypeReferenceNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone:bb.a

bb.g:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.p, %bb.g ], [ %i.o, %bb.f ] ; 3 uses
  %i.q = icmp eq i8 %.sroa.6.0, -1
  br i1 %i.q, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeEEB11_.exit, label %bb.h

bb.h:                                             ; preds = %.body
  %i.r = icmp eq i8 %.sroa.6.0, 2
  %i.s = icmp eq i64 %.sroa.5.015, 0
  %or.cond = select i1 %i.r, i1 true, i1 %i.s
  br i1 %or.cond, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeEEB11_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0, i64 noundef range(i64 1, 0) %.sroa.5.015, i64 noundef 1) #16, !noalias !1419
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeEEB11_.exit

bb.j:                                             ; preds = %.noexc
  %i.t = trunc nuw i32 %i.j to i1
  %.sroa.5.0 = select i1 %i.t, i32 %.val6, i32 undef
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.l, ptr noundef nonnull align 8 dereferenceable(248) %i.a, i64 248, i1 false), !noalias !1418
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1418
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %.val, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.0.0, ptr %i.v, align 8
  %.sroa.5.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.5.015, ptr %.sroa.5.0..sroa_idx9, align 8
  %.sroa.6.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx11, align 8
  %.sroa.8.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %0, i64 49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.8.0..sroa_idx13, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.8, i64 15, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.j, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.5.0, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.l, ptr %i.y, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.k:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeEEB11_.exit
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.l:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeEEB11_.exit
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1f_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtBa_2ty9TypeSliceNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [248 x i8], align 8               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBJ_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.d = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxNtNtCsgbWeKYPjk8w_3syn2ty4TypeE13new_uninit_inBK_()
          to label %.noexc unwind label %bb.b, !inline_history !3 ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #17
          to label %bb.f unwind label %bb.e

.noexc:                                           ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1422
  invoke void @_RNvXs11_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtBa_2ty4TypeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([248 x i8]) align 8 captures(none) dereferenceable(248) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %.val)
          to label %bb.d unwind label %bb.c, !inline_history !4

bb.c:                                             ; preds = %.noexc
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 248, i64 noundef 8) #16, !inline_history !3
  br label %.body

bb.d:                                             ; preds = %.noexc
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.d, ptr noundef nonnull align 8 dereferenceable(248) %i.a, i64 248, i1 false), !noalias !1422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1422
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.h, ptr noundef nonnull align 8 dereferenceable(12) %i.g, i64 12, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.e:                                             ; preds = %.body
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.f:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1g_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtBa_2ty15TypeTraitObjectNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBJ_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = load i32, ptr %i.c, align 8, !range !27, !noundef !10 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.val = load i32, ptr %i.e, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_RNvXs_NtCsgbWeKYPjk8w_3syn10punctuatedINtB4_10PunctuatedNtNtB6_8generics14TypeParamBoundNtNtB6_5token4PlusENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB6_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #17
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = trunc nuw i32 %i.d to i1
  %.sroa.5.0 = select i1 %i.h, i32 %.val, i32 undef
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.d, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %.sroa.5.0, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1h_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtBa_2ty9TypeTupleNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBJ_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_RNvXs_NtCsgbWeKYPjk8w_3syn10punctuatedINtB4_10PunctuatedNtNtB6_2ty4TypeNtNtB6_5token5CommaENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB6_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #17
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.f, ptr noundef nonnull align 8 dereferenceable(12) %i.e, i64 12, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs1s_NtCsgbWeKYPjk8w_3syn5tokenNtB6_5ConstNtB6_5Token7display() unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @6, i64 7 }
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtCsgbWeKYPjk8w_3syn2ty7parsingNtB7_7TypePtrNtNtB9_5parse5Parse5parse(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [248 x i8], align 8               ; 5 uses
  %i.b = alloca [248 x i8], align 8               ; 7 uses
  %.sroa.627 = alloca [24 x i8], align 8          ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvXs9m_NtCsgbWeKYPjk8w_3syn5tokenNtB6_4StarNtNtB8_5parse5Parse5parse(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #17
          to label %common.resume unwind label %bb.x

bb.c:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.d, align 8, !range !15, !noundef !10 ; 2 uses
  %.not = icmp eq i64 %i.i, -1
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.031.0.copyload = load i32, ptr %i.j, align 8 ; 2 uses
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.540.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.537.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.k, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.031.0.copyload, ptr %.sroa.439.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.h, %bb.n, %.body, %bb.p, %bb.k, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.ab, %bb.p ], [ %i.l, %bb.e ], [ %i.u, %bb.k ], [ %i.af, %.body ], [ %i.w, %bb.n ], [ %i.n, %bb.h ], [ %i.h, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit: ; preds = %bb.d
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.w

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvXsm_NtNtCsgbWeKYPjk8w_3syn2ty7parsingNtB7_17PointerMutabilityNtNtB9_5parse5Parse5parse(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %1)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #17
          to label %common.resume unwind label %bb.x

bb.i:                                             ; preds = %bb.g
  %i.o = load i64, ptr %i.c, align 8, !range !15, !noundef !10 ; 2 uses
  %.not58 = icmp eq i64 %i.o, -1
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.q = load i32, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.s = load i32, ptr %i.r, align 4              ; 2 uses
  br i1 %.not58, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.648.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.648.0.copyload = load i64, ptr %.sroa.648.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %i.t, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.q, ptr %.sroa.450.0..sroa_idx, align 8
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.s, ptr %.sroa.551.0..sroa_idx, align 4
  %.sroa.652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.648.0.copyload, ptr %.sroa.652.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit61 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit61: ; preds = %bb.j
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.w

bb.m:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.627)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvNtNtCsgbWeKYPjk8w_3syn2ty7parsing8ambig_ty(ptr noalias nofree noundef nonnull sret([248 x i8]) align 8 captures(none) dereferenceable(248) %i.b, ptr noundef nonnull align 8 %1, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %_RNvMs_NtNtCsgbWeKYPjk8w_3syn2ty7parsingNtB6_4Type12without_plus.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #17
          to label %common.resume unwind label %bb.x

_RNvMs_NtNtCsgbWeKYPjk8w_3syn2ty7parsingNtB6_4Type12without_plus.exit: ; preds = %bb.m
  %i.x = load i64, ptr %i.b, align 8, !range !25, !noundef !10 ; 2 uses
  %i.y = icmp eq i64 %i.x, -1
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.627, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  br i1 %i.y, label %bb.o, label %bb.r

bb.o:                                             ; preds = %_RNvMs_NtNtCsgbWeKYPjk8w_3syn2ty7parsingNtB6_4Type12without_plus.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.627, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit63 unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit63: ; preds = %bb.o
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.627)
  br label %bb.w

bb.r:                                             ; preds = %_RNvMs_NtNtCsgbWeKYPjk8w_3syn2ty7parsingNtB6_4Type12without_plus.exit
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.829.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.829.0..sroa_idx30, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.555.0..sroa_idx, i64 216, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.x, ptr %i.a, align 8
  %.sroa.627.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.627.0..sroa_idx28, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.627, i64 24, i1 false)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16, !noalias !1425
  %i.ad = tail call noundef align 8 dereferenceable_or_null(248) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 248, i64 noundef 8) #16, !noalias !1425 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.s, label %bb.v, !prof !26

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 248) #21
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty4TypeEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(248) %i.a) #17
          to label %.body unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

.body:                                            ; preds = %bb.t
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #17
          to label %common.resume unwind label %bb.x

bb.v:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.ad, ptr noundef nonnull align 8 dereferenceable(248) %i.a, i64 248, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.q, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.s, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ad, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sroa.031.0.copyload, ptr %.sroa.10.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.627)
  br label %bb.w

bb.w:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit63, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit61, %bb.v
  ret void

bb.x:                                             ; preds = %.body, %bb.n, %bb.h, %bb.b
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtCsgbWeKYPjk8w_3syn2ty8printingNtB7_9TypeFnPtrNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(248) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !range !15, !noundef !10
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvXs2_NtNtCsgbWeKYPjk8w_3syn8generics8printingNtB7_14BoundLifetimesNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.d = load i32, ptr %i.c, align 8, !range !27, !noundef !10
  %i.e = trunc nuw i32 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 212
  tail call void @_RNvXs5P_NtCsgbWeKYPjk8w_3syn5tokenNtB6_6UnsafeNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = load i64, ptr %0, align 8, !range !22, !noundef !10
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %bb.f, label %_RNvXsf_NtNtCsgbWeKYPjk8w_3syn2ty8printingNtB7_3AbiNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens.exit

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXs2k_NtCsgbWeKYPjk8w_3syn5tokenNtB6_6ExternNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.k = load ptr, ptr %i.i, align 8, !alias.scope !1432, !noalias !1433, !align !9, !noundef !10
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %_RNvXsf_NtNtCsgbWeKYPjk8w_3syn2ty8printingNtB7_3AbiNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvXNtNtCsgbWeKYPjk8w_3syn3lit8printingNtB4_6LitStrNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  br label %_RNvXsf_NtNtCsgbWeKYPjk8w_3syn2ty8printingNtB7_3AbiNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens.exit

_RNvXsf_NtNtCsgbWeKYPjk8w_3syn2ty8printingNtB7_3AbiNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @_RNvXs2y_NtCsgbWeKYPjk8w_3syn5tokenNtB6_2FnNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 236
  tail call void @_RINvMscE_NtCsgbWeKYPjk8w_3syn5tokenNtB7_5Paren8surroundNCNvXs2_NtNtB9_2ty8printingNtB11_9TypeFnPtrNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens0EB9_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %0)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !1434, !noalias !1435, !noundef !10 ; 2 uses
  %.not.i1 = icmp eq ptr %i.o, null
  br i1 %.not.i1, label %_RNvXsc_NtNtCsgbWeKYPjk8w_3syn2ty8printingNtB7_10ReturnTypeNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens.exit, label %bb.h

bb.h:                                             ; preds = %_RNvXsf_NtNtCsgbWeKYPjk8w_3syn2ty8printingNtB7_3AbiNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_RNvXs8P_NtCsgbWeKYPjk8w_3syn5tokenNtB6_6RArrowNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1), !inline_history !1436
  tail call void @_RNvXNtCsgbWeKYPjk8w_3syn2tyNtB2_4TypeNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1), !inline_history !1436
  br label %_RNvXsc_NtNtCsgbWeKYPjk8w_3syn2ty8printingNtB7_10ReturnTypeNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens.exit

_RNvXsc_NtNtCsgbWeKYPjk8w_3syn2ty8printingNtB7_10ReturnTypeNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens.exit: ; preds = %_RNvXsf_NtNtCsgbWeKYPjk8w_3syn2ty8printingNtB7_3AbiNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs3P_NtCsgbWeKYPjk8w_3syn5tokenNtB6_3MutNtB6_5Token7display() unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @7, i64 5 }
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtCsgbWeKYPjk8w_3syn2ty7parsingNtB7_13TypeReferenceNtNtB9_5parse5Parse5parse(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [248 x i8], align 8               ; 5 uses
  %i.b = alloca [248 x i8], align 8               ; 7 uses
  %.sroa.627 = alloca [24 x i8], align 8          ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 21 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 0, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvXs6A_NtCsgbWeKYPjk8w_3syn5tokenNtB6_3AndNtNtB8_5parse5Parse5parse(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull align 8 %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #17
          to label %common.resume unwind label %bb.ak

bb.c:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.e, align 8, !range !15, !noundef !10 ; 2 uses
  %.not = icmp eq i64 %i.j, -1
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.031.0.copyload = load i32, ptr %i.k, align 8 ; 2 uses
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.540.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.537.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.l, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.031.0.copyload, ptr %.sroa.439.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

common.resume:                                    ; preds = %bb.an, %bb.b, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeEEB11_.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeEEB11_.exit75, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeEEB11_.exit69, %bb.al, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.b ], [ %i.m, %bb.e ], [ %i.bk, %bb.al ], [ %i.ai, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeEEB11_.exit69 ], [ %i.bb, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeEEB11_.exit75 ], [ %.pn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeEEB11_.exit ], [ %i.bm, %bb.an ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit: ; preds = %bb.d
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.aj

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMs_NtNtCsgbWeKYPjk8w_3syn8lifetime7parsingNtB6_8Lifetime18parse_optional_any(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noundef nonnull align 8 %1)
          to label %bb.i unwind label %bb.h

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeEEB11_.exit: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.h
  %.pn = phi { ptr, i32 } [ %i.o, %bb.h ], [ %i.p, %bb.j ], [ %i.p, %bb.k ], [ %i.p, %bb.l ], [ %i.p, %bb.m ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #17
          to label %common.resume unwind label %bb.ak

bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeEEB11_.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvXsb_NtCsgbWeKYPjk8w_3syn5parseINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB7_5token3MutENtB5_5Parse5parseB7_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %1)
          to label %bb.n unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1479)
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.r = load i8, ptr %i.q, align 8, !range !16, !alias.scope !1479, !noundef !10 ; 2 uses
  %i.s = icmp eq i8 %i.r, -1
  br i1 %i.s, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeEEB11_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !1480)
  call void @llvm.experimental.noalias.scope.decl(metadata !1481)
  call void @llvm.experimental.noalias.scope.decl(metadata !1482)
  %i.t = icmp eq i8 %i.r, 2
  br i1 %i.t, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeEEB11_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val1.i.i.i.i = load i64, ptr %i.u, align 8, !alias.scope !1483, !noundef !10 ; 2 uses
  %i.v = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.v, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeEEB11_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !1483, !nonnull !10, !noundef !10
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i, i64 noundef 1) #16, !noalias !1483
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeEEB11_.exit

bb.n:                                             ; preds = %bb.i
  %i.w = load i64, ptr %i.c, align 8, !range !15, !noundef !10 ; 2 uses
  %.not58 = icmp eq i64 %i.w, -1
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.y = load i32, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.aa = load i32, ptr %i.z, align 4             ; 2 uses
  br i1 %.not58, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.648.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.648.0.copyload = load i64, ptr %.sroa.648.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.w, ptr %i.ab, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.y, ptr %.sroa.450.0..sroa_idx, align 8
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.aa, ptr %.sroa.551.0..sroa_idx, align 4
  %.sroa.652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.648.0.copyload, ptr %.sroa.652.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1484)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ad = load i8, ptr %i.ac, align 8, !range !16, !alias.scope !1484, !noundef !10 ; 2 uses
  %i.ae = icmp eq i8 %i.ad, -1
  br i1 %i.ae, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeEEB11_.exit66, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !1485)
  call void @llvm.experimental.noalias.scope.decl(metadata !1486)
  call void @llvm.experimental.noalias.scope.decl(metadata !1487)
  %i.af = icmp eq i8 %i.ad, 2
  br i1 %i.af, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeEEB11_.exit66, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val1.i.i.i.i64 = load i64, ptr %i.ag, align 8, !alias.scope !1488, !noundef !10 ; 2 uses
  %i.ah = icmp eq i64 %.val1.i.i.i.i64, 0
  br i1 %i.ah, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeEEB11_.exit66, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.val.i.i.i.i65 = load ptr, ptr %i.d, align 8, !alias.scope !1488, !nonnull !10, !noundef !10
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i65, i64 noundef range(i64 1, 0) %.val1.i.i.i.i64, i64 noundef 1) #16, !noalias !1488
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeEEB11_.exit66

bb.s:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.627)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvNtNtCsgbWeKYPjk8w_3syn2ty7parsing8ambig_ty(ptr noalias nofree noundef nonnull sret([248 x i8]) align 8 captures(none) dereferenceable(248) %i.b, ptr noundef nonnull align 8 %1, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %_RNvMs_NtNtCsgbWeKYPjk8w_3syn2ty7parsingNtB6_4Type12without_plus.exit unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !1489)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ak = load i8, ptr %i.aj, align 8, !range !16, !alias.scope !1489, !noundef !10 ; 2 uses
  %i.al = icmp eq i8 %i.ak, -1
  br i1 %i.al, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeEEB11_.exit69, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !1490)
  call void @llvm.experimental.noalias.scope.decl(metadata !1491)
  call void @llvm.experimental.noalias.scope.decl(metadata !1492)
  %i.am = icmp eq i8 %i.ak, 2
  br i1 %i.am, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeEEB11_.exit69, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val1.i.i.i.i67 = load i64, ptr %i.an, align 8, !alias.scope !1493, !noundef !10 ; 2 uses
  %i.ao = icmp eq i64 %.val1.i.i.i.i67, 0
  br i1 %i.ao, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeEEB11_.exit69, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.val.i.i.i.i68 = load ptr, ptr %i.d, align 8, !alias.scope !1493, !nonnull !10, !noundef !10
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i68, i64 noundef range(i64 1, 0) %.val1.i.i.i.i67, i64 noundef 1) #16, !noalias !1493
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeEEB11_.exit69

_RNvMs_NtNtCsgbWeKYPjk8w_3syn2ty7parsingNtB6_4Type12without_plus.exit: ; preds = %bb.s
end_hunk_0
begin_hunk_1_@_RNvXs4_NtNtCsgbWeKYPjk8w_3syn2ty7parsingNtB7_9TypeFnPtrNtNtB9_5parse5Parse5parse:bb.a
          to label %bb.cu unwind label %bb.bp
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtNtCsgbWeKYPjk8w_3syn2ty8printingNtB7_9TypeTupleNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_RINvMscE_NtCsgbWeKYPjk8w_3syn5tokenNtB7_5Paren8surroundNCNvXs4_NtNtB9_2ty8printingNtB11_9TypeTupleNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens0EB9_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtNtCsgbWeKYPjk8w_3syn2ty7parsingNtB7_9TypeNeverNtNtB9_5parse5Parse5parse(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs88_NtCsgbWeKYPjk8w_3syn5tokenNtB6_3NotNtNtB8_5parse5Parse5parse(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #17
          to label %common.resume unwind label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.a, align 8, !range !15, !noundef !10 ; 2 uses
  %.not = icmp eq i64 %i.f, -1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.011.0.copyload = load i32, ptr %i.g, align 8 ; 2 uses
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.520.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.517.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.f, ptr %i.h, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.011.0.copyload, ptr %.sroa.419.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.e, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit: ; preds = %bb.d
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.011.0.copyload, ptr %.sroa.59.0..sroa_idx, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit
  ret void

bb.i:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtNtCsgbWeKYPjk8w_3syn2ty8printingNtB7_8TypePathNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvNtNtCsgbWeKYPjk8w_3syn4path8printing11print_qpath(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.b, i8 noundef 2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs6_NtNtCsgbWeKYPjk8w_3syn2ty7parsingNtB7_9TypeInferNtNtB9_5parse5Parse5parse(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs2_NtCsgbWeKYPjk8w_3syn5tokenNtB5_10UnderscoreNtNtB7_5parse5Parse5parse(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #17
          to label %common.resume unwind label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.a, align 8, !range !15, !noundef !10 ; 2 uses
  %.not = icmp eq i64 %i.f, -1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.011.0.copyload = load i32, ptr %i.g, align 8 ; 2 uses
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.520.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.517.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.f, ptr %i.h, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.011.0.copyload, ptr %.sroa.419.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.e, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit: ; preds = %bb.d
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.011.0.copyload, ptr %.sroa.59.0..sroa_idx, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit
  ret void

bb.i:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs6_NtNtCsgbWeKYPjk8w_3syn2ty8printingNtB7_15TypeTraitObjectNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !range !27, !noundef !10
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 60
  tail call void @_RNvXs1Z_NtCsgbWeKYPjk8w_3syn5tokenNtB6_3DynNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvXNtNtCsgbWeKYPjk8w_3syn10punctuated8printingINtB4_10PunctuatedNtNtB6_8generics14TypeParamBoundNtNtB6_5token4PlusENtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokensB6_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs7X_NtCsgbWeKYPjk8w_3syn5tokenNtB6_5MinusNtB6_5Token7display() unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @8, i64 3 }
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs7_NtNtCsgbWeKYPjk8w_3syn2ty7parsingNtB7_9TypeTupleNtNtB9_5parse5Parse5parse(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [248 x i8], align 8               ; 4 uses
  %i.d = alloca [248 x i8], align 8               ; 7 uses
  %.sroa.619 = alloca [24 x i8], align 8          ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [248 x i8], align 8               ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 13 uses
  %i.h = alloca [24 x i8], align 8                ; 11 uses
  %i.i = alloca [72 x i8], align 8                ; 7 uses
  %i.j = alloca [248 x i8], align 8               ; 7 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 6 uses
  %i.k = alloca [56 x i8], align 8                ; 7 uses
  %i.l = alloca [32 x i8], align 8                ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvNtCsgbWeKYPjk8w_3syn5group12parse_parens(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.k, ptr noundef nonnull align 8 %1)
  %i.m = load i64, ptr %i.k, align 8, !range !22, !noundef !10
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit81

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 8 dereferenceable(12) %i.q, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.val76 = load ptr, ptr %i.l, align 8, !noundef !10
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %.val77 = load ptr, ptr %i.r, align 8, !noundef !10
  %i.s = icmp eq ptr %.val76, %.val77
  br i1 %i.s, label %bb.av, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_2ty4TypeEB8_(ptr noalias nofree noundef nonnull sret([248 x i8]) align 8 captures(address) dereferenceable(248) %i.j, ptr noundef nonnull align 8 %i.l)
          to label %bb.e unwind label %.thread93

.thread93:                                        ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.e:                                             ; preds = %bb.d
  %i.u = load i64, ptr %i.j, align 8, !range !25, !noundef !10 ; 2 uses
  %i.v = icmp eq i64 %i.u, -1
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  br i1 %i.v, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.am

bb.g:                                             ; preds = %bb.j, %bb.h
  %.pn = phi { ptr, i32 } [ %i.y, %bb.h ], [ %lpad.phi, %bb.j ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #17
          to label %.thread unwind label %bb.au

bb.h:                                             ; preds = %bb.ag
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.i:                                             ; preds = %bb.e
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.7102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.7102.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.540.0..sroa_idx, i64 216, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.sroa.6101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6101.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 0, ptr %i.h, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 0, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 0, ptr %i.g, align 8, !alias.scope !1588
  %.sroa.4.0..sroa_idx.i78 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i78, align 8, !alias.scope !1588
  %.sroa.5.0..sroa_idx.i79 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i79, i8 0, i64 16, i1 false), !alias.scope !1588
  store i64 %i.u, ptr %i.f, align 8
  invoke void @_RNvMNtCsgbWeKYPjk8w_3syn10punctuatedINtB2_10PunctuatedNtNtB4_2ty4TypeNtNtB4_5token5CommaE10push_valueB4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(248) %i.f)
          to label %bb.k unwind label %.loopexit.split-lp

.loopexit:                                        ; preds = %bb.p, %bb.s, %bb.u, %bb.x
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.split-lp:                               ; preds = %bb.i, %bb.k, %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_2ty4TypeNtNtBG_5token5CommaEEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g) #17
          to label %bb.g unwind label %bb.au

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token5CommaEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noundef nonnull align 8 %i.l)
          to label %bb.l unwind label %.loopexit.split-lp

bb.l:                                             ; preds = %bb.k
  %i.ab = load i64, ptr %i.e, align 8, !range !15, !noundef !10 ; 2 uses
  %.not = icmp eq i64 %i.ab, -1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.041.0.copyload = load i32, ptr %i.ac, align 8 ; 2 uses
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %.sroa.550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.550.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.547.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ab, ptr %i.ad, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.041.0.copyload, ptr %.sroa.449.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ag

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke void @_RNvMNtCsgbWeKYPjk8w_3syn10punctuatedINtB2_10PunctuatedNtNtB4_2ty4TypeNtNtB4_5token5CommaE10push_punctB4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g, i32 noundef %.sroa.041.0.copyload)
          to label %bb.o unwind label %.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  %.val7495 = load ptr, ptr %i.l, align 8, !noundef !10
  %.val7596 = load ptr, ptr %i.r, align 8, !noundef !10
  %i.ae = icmp eq ptr %.val7495, %.val7596
  br i1 %i.ae, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.619.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.821.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.619)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_2ty4TypeEB8_(ptr noalias nofree noundef nonnull sret([248 x i8]) align 8 captures(address) dereferenceable(248) %i.d, ptr noundef nonnull align 8 %i.l)
          to label %bb.q unwind label %.loopexit

bb.q:                                             ; preds = %bb.p
  %i.ag = load i64, ptr %i.d, align 8, !range !25, !noundef !10 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.619, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.452.0..sroa_idx, i64 24, i1 false)
  br i1 %i.ah, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.619, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.619)
  br label %bb.ag

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.821.0..sroa_idx22, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.553.0..sroa_idx, i64 216, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.ag, ptr %i.c, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.619.0..sroa_idx20, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.619, i64 24, i1 false)
  invoke void @_RNvMNtCsgbWeKYPjk8w_3syn10punctuatedINtB2_10PunctuatedNtNtB4_2ty4TypeNtNtB4_5token5CommaE10push_valueB4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(248) %i.c)
          to label %bb.t unwind label %.loopexit

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.619)
  %.val = load ptr, ptr %i.l, align 8, !noundef !10
  %.val73 = load ptr, ptr %i.r, align 8, !noundef !10
end_hunk_1
begin_hunk_2_@_RNvXs7_NtNtCsgbWeKYPjk8w_3syn2ty7parsingNtB7_9TypeTupleNtNtB9_5parse5Parse5parse:bb.a

bb.y:                                             ; preds = %bb.x
  %.val74 = load ptr, ptr %i.l, align 8, !noundef !10
  %.val75 = load ptr, ptr %i.r, align 8, !noundef !10
  %i.am = icmp eq ptr %.val74, %.val75
  br i1 %i.am, label %._crit_edge, label %bb.p

._crit_edge:                                      ; preds = %bb.y, %bb.t, %bb.o
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ao, ptr noundef nonnull align 4 dereferenceable(12) %i.a, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.i, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_RNvXNtCsgbWeKYPjk8w_3syn5parseNtB2_11ParseBufferNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %bb.ac unwind label %bb.z

bb.z:                                             ; preds = %._crit_edge
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1589)
  call void @llvm.experimental.noalias.scope.decl(metadata !1590)
  call void @llvm.experimental.noalias.scope.decl(metadata !1591)
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !1592, !noundef !10 ; 3 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %common.resume, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.at = load i64, ptr %i.ar, align 8, !noalias !1593, !noundef !10
  %i.au = add i64 %i.at, -1                       ; 2 uses
  store i64 %i.au, ptr %i.ar, align 8, !noalias !1593
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.ab, label %common.resume

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aq) #20
          to label %common.resume unwind label %bb.af

bb.ac:                                            ; preds = %._crit_edge
  %i.aw = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1594)
  call void @llvm.experimental.noalias.scope.decl(metadata !1595)
  call void @llvm.experimental.noalias.scope.decl(metadata !1596)
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !1597, !noundef !10 ; 3 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit81, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.az = load i64, ptr %i.ax, align 8, !noalias !1598, !noundef !10
  %i.ba = add i64 %i.az, -1                       ; 2 uses
  store i64 %i.ba, ptr %i.ax, align 8, !noalias !1598
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.ae, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit81

bb.ae:                                            ; preds = %bb.ad
  call void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aw) #20
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit81

bb.af:                                            ; preds = %bb.ab
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

common.resume:                                    ; preds = %.thread, %bb.an, %bb.ao, %bb.ap, %bb.z, %bb.aa, %bb.ab
  %common.resume.op = phi { ptr, i32 } [ %i.bg, %bb.an ], [ %i.ap, %bb.z ], [ %i.ap, %bb.ab ], [ %i.ap, %bb.aa ], [ %i.bg, %bb.ap ], [ %i.bg, %bb.ao ], [ %.pn7192, %.thread ]
  resume { ptr, i32 } %common.resume.op

bb.ag:                                            ; preds = %bb.r, %bb.w, %bb.m
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_2ty4TypeNtNtBG_5token5CommaEEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g)
          to label %bb.ah unwind label %bb.h

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit81: ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.b, %bb.aq, %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.aj unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.thread unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit unwind label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %.thread

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit: ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.am

bb.am:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit, %bb.f, %bb.av
  invoke void @_RNvXNtCsgbWeKYPjk8w_3syn5parseNtB2_11ParseBufferNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %bb.aq unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1599)
  call void @llvm.experimental.noalias.scope.decl(metadata !1600)
  call void @llvm.experimental.noalias.scope.decl(metadata !1601)
  %i.bi = load ptr, ptr %i.bh, align 8, !alias.scope !1602, !noundef !10 ; 3 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %common.resume, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.bk = load i64, ptr %i.bi, align 8, !noalias !1603, !noundef !10
  %i.bl = add i64 %i.bk, -1                       ; 2 uses
  store i64 %i.bl, ptr %i.bi, align 8, !noalias !1603
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %bb.ap, label %common.resume

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bh) #20
          to label %common.resume unwind label %bb.at

bb.aq:                                            ; preds = %bb.am
  %i.bn = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1604)
  call void @llvm.experimental.noalias.scope.decl(metadata !1605)
  call void @llvm.experimental.noalias.scope.decl(metadata !1606)
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !1607, !noundef !10 ; 3 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit81, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.bq = load i64, ptr %i.bo, align 8, !noalias !1608, !noundef !10
  %i.br = add i64 %i.bq, -1                       ; 2 uses
  store i64 %i.br, ptr %i.bo, align 8, !noalias !1608
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %bb.as, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit81

bb.as:                                            ; preds = %bb.ar
  call void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bn) #20
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit81

bb.at:                                            ; preds = %bb.ap
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.au:                                            ; preds = %.thread, %bb.j, %bb.g
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.av:                                            ; preds = %bb.c
  %.sroa.687.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.687.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %i.a, i64 12, i1 false)
  store i64 0, ptr %0, align 8
  %.sroa.084.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.084.sroa.4.0..sroa_idx, align 8
  %.sroa.084.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.084.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.586.0..sroa_idx, align 8
  br label %bb.am

.thread:                                          ; preds = %bb.g, %bb.ai, %bb.al, %.thread93
  %.pn7192 = phi { ptr, i32 } [ %i.t, %.thread93 ], [ %i.bd, %bb.ai ], [ %.pn, %bb.g ], [ %i.bf, %bb.al ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.l) #17
          to label %common.resume unwind label %bb.au
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs7_NtNtCsgbWeKYPjk8w_3syn2ty8printingNtB7_13TypeImplTraitNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_RNvXs2T_NtCsgbWeKYPjk8w_3syn5tokenNtB6_4ImplNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvXNtNtCsgbWeKYPjk8w_3syn10punctuated8printingINtB4_10PunctuatedNtNtB6_8generics14TypeParamBoundNtNtB6_5token4PlusENtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokensB6_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs89_NtCsgbWeKYPjk8w_3syn5tokenNtB6_3NotNtB6_5Token7display() unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @9, i64 3 }
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs8_NtNtCsgbWeKYPjk8w_3syn2ty7parsingNtB7_9TypeMacroNtNtB9_5parse5Parse5parse(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 7 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXNtNtCsgbWeKYPjk8w_3syn3mac7parsingNtB4_5MacroNtNtB6_5parse5Parse5parse(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.a, ptr noundef nonnull align 8 %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #17
          to label %common.resume unwind label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.a, align 8, !range !15, !noundef !10 ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.e ], [ %i.e, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit: ; preds = %bb.d
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.58.0..sroa_idx, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.66.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.i:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs8_NtNtCsgbWeKYPjk8w_3syn2ty8printingNtB7_9TypeGroupNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RINvMs8_NtCsgbWeKYPjk8w_3syn5tokenNtB6_5Group8surroundNCNvXs8_NtNtB8_2ty8printingNtB10_9TypeGroupNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens0EB8_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs9_NtNtCsgbWeKYPjk8w_3syn2ty7parsingNtB7_8TypePathNtNtB9_5parse5Parse5parse(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) initializes((0, 32)) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 8 uses
  %.sroa.0 = alloca [32 x i8], align 8            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCsgbWeKYPjk8w_3syn4path7parsing5qpath(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.a, ptr noundef nonnull align 8 %1, i1 noundef zeroext false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load i64, ptr %i.b, align 8, !range !15, !noundef !10 ; 2 uses
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.58.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.75.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.75.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.54.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.c, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ -1, %bb.b ], [ 0, %bb.c ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs9_NtNtCsgbWeKYPjk8w_3syn2ty8printingNtB7_9TypeParenNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RINvMscE_NtCsgbWeKYPjk8w_3syn5tokenNtB7_5Paren8surroundNCNvXs9_NtNtB9_2ty8printingNtB11_9TypeParenNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens0EB9_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs9n_NtCsgbWeKYPjk8w_3syn5tokenNtB6_4StarNtB6_5Token7display() unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @10, i64 3 }
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsB_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_2ty13FnPtrVariadicNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBJ_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = load i8, ptr %i.b, align 8, !range !16, !noundef !10 ; 3 uses
  %.not = icmp eq i8 %i.c, -1
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.not.i.i = icmp eq i8 %i.c, 2
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = invoke { ptr, i64 } @_RNvXsf_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.f = extractvalue { ptr, i64 } %i.e, 0
  %i.g = extractvalue { ptr, i64 } %i.e, 1
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.val.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !1618, !noalias !1619
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load i8, ptr %i.h, align 8, !range !28, !alias.scope !1618, !noalias !1619, !noundef !10
  %i.j = inttoptr i64 %.val.i.i.i to ptr
  %.sroa.0.sroa.5.0.insert.ext.i.i = zext nneg i8 %i.i to i64
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #17
          to label %bb.i unwind label %bb.h

bb.f:                                             ; preds = %bb.d, %.noexc
  %.sroa.0.sroa.0.0.i.i = phi ptr [ %i.f, %.noexc ], [ %i.j, %bb.d ]
  %.sroa.0.sroa.5.0.i.i = phi i64 [ %i.g, %.noexc ], [ %.sroa.0.sroa.5.0.insert.ext.i.i, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val.i = load i32, ptr %i.l, align 8, !alias.scope !1620, !noalias !1621
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  %.sroa.8.sroa.4.0 = phi i32 [ %.val.i, %bb.f ], [ undef, %bb.a ]
  %.sroa.5.016 = phi i64 [ %.sroa.0.sroa.5.0.i.i, %bb.f ], [ undef, %bb.a ]
  %.sroa.0.015 = phi ptr [ %.sroa.0.sroa.0.0.i.i, %bb.f ], [ undef, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.n, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.m, i64 12, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load i32, ptr %i.o, align 8, !range !27, !noundef !10 ; 2 uses
  %i.q = trunc nuw i32 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.val = load i32, ptr %i.r, align 4
  %.sroa.5.0 = select i1 %i.q, i32 %.val, i32 undef
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.0.015, ptr %i.s, align 8
  %.sroa.5.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.5.016, ptr %.sroa.5.0..sroa_idx7, align 8
  %.sroa.6.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %i.c, ptr %.sroa.6.0..sroa_idx9, align 8
  %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx11.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %.sroa.8.sroa.4.0, ptr %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx11.sroa_idx, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.p, ptr %i.t, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.h:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.i:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsP_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_2ty8NamedArgNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([304 x i8]) align 8 captures(none) dereferenceable(304) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(304) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [248 x i8], align 8               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 248
  call void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBJ_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.e = load i8, ptr %i.d, align 8, !range !16, !noundef !10 ; 5 uses
  %.not = icmp eq i8 %i.e, -1
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %.not.i.i = icmp eq i8 %i.e, 2
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = invoke { ptr, i64 } @_RNvXsf_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %.val.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !1639, !noalias !1640
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.k = load i8, ptr %i.j, align 8, !range !28, !alias.scope !1639, !noalias !1640, !noundef !10
  %i.l = inttoptr i64 %.val.i.i.i to ptr
  %.sroa.0.sroa.5.0.insert.ext.i.i = zext nneg i8 %i.k to i64
  br label %bb.g

bb.e:                                             ; preds = %bb.a, %bb.g
  %.sroa.8.sroa.4.0 = phi i32 [ %.val.i, %bb.g ], [ undef, %bb.a ]
  %.sroa.5.0 = phi i64 [ %.sroa.0.sroa.5.0.i.i, %bb.g ], [ undef, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %.sroa.0.sroa.0.0.i.i, %bb.g ], [ undef, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs11_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtBa_2ty4TypeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([248 x i8]) align 8 captures(none) dereferenceable(248) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %1)
          to label %bb.k unwind label %bb.h

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCs6et67aoV1xO_11proc_macro25IdentNtNtCsgbWeKYPjk8w_3syn5token5ColonEEEB1B_.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.f
  %.pn = phi { ptr, i32 } [ %i.m, %bb.f ], [ %i.o, %bb.h ], [ %i.o, %bb.i ], [ %i.o, %bb.j ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #17
          to label %bb.m unwind label %bb.l

bb.f:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCs6et67aoV1xO_11proc_macro25IdentNtNtCsgbWeKYPjk8w_3syn5token5ColonEEEB1B_.exit

bb.g:                                             ; preds = %bb.d, %.noexc
  %.sroa.0.sroa.0.0.i.i = phi ptr [ %i.h, %.noexc ], [ %i.l, %bb.d ]
  %.sroa.0.sroa.5.0.i.i = phi i64 [ %i.i, %.noexc ], [ %.sroa.0.sroa.5.0.insert.ext.i.i, %bb.d ]
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 296
  %.val.i = load i32, ptr %i.n, align 8, !alias.scope !1641, !noalias !1642
  br label %bb.e

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.p = icmp eq i8 %i.e, -1
  br i1 %i.p, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCs6et67aoV1xO_11proc_macro25IdentNtNtCsgbWeKYPjk8w_3syn5token5ColonEEEB1B_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = icmp eq i8 %i.e, 2
  %i.r = icmp eq i64 %.sroa.5.0, 0
  %or.cond = select i1 %i.q, i1 true, i1 %i.r
  br i1 %or.cond, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCs6et67aoV1xO_11proc_macro25IdentNtNtCsgbWeKYPjk8w_3syn5token5ColonEEEB1B_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0, i64 noundef range(i64 1, 0) %.sroa.5.0, i64 noundef 1) #16, !noalias !1643
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCs6et67aoV1xO_11proc_macro25IdentNtNtCsgbWeKYPjk8w_3syn5token5ColonEEEB1B_.exit

bb.k:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %.sroa.0.0, ptr %i.t, align 8
  %.sroa.5.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx3, align 8
  %.sroa.6.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i8 %i.e, ptr %.sroa.6.0..sroa_idx5, align 8
  %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx7.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i32 %.sroa.8.sroa.4.0, ptr %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx7.sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(248) %i.a, i64 248, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.l:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCs6et67aoV1xO_11proc_macro25IdentNtNtCsgbWeKYPjk8w_3syn5token5ColonEEEB1B_.exit
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.m:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCs6et67aoV1xO_11proc_macro25IdentNtNtCsgbWeKYPjk8w_3syn5token5ColonEEEB1B_.exit
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsY_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_2ty10ReturnTypeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [248 x i8], align 8               ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !noundef !10  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

end_hunk_2

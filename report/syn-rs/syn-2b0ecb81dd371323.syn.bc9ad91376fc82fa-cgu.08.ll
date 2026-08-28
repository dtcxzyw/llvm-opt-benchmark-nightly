Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/syn-rs/original/syn-2b0ecb81dd371323.syn.bc9ad91376fc82fa-cgu.08?download=true
inline.NumInlined: 547
inline.NumDeleted: 142
begin_hunk_0_@_RNvNtNtCsgbWeKYPjk8w_3syn2ty7parsing21parse_fn_ptr_variadic:bb.a
          cleanup
  %i.ak = icmp eq i8 %.sroa.15.0, -1
  br i1 %i.ak, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCs6et67aoV1xO_11proc_macro25IdentNtNtCsgbWeKYPjk8w_3syn5token5ColonEEEB1B_.exit85, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.al = icmp eq i8 %.sroa.15.0, 2
  %i.am = icmp eq i64 %.sroa.11.0, 0
  %or.cond160 = select i1 %i.al, i1 true, i1 %i.am
  br i1 %or.cond160, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCs6et67aoV1xO_11proc_macro25IdentNtNtCsgbWeKYPjk8w_3syn5token5ColonEEEB1B_.exit85, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i83

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i83: ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0, i64 noundef %.sroa.11.0, i64 noundef 1) #19, !noalias !1979
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCs6et67aoV1xO_11proc_macro25IdentNtNtCsgbWeKYPjk8w_3syn5token5ColonEEEB1B_.exit85

bb.w:                                             ; preds = %bb.t
  %i.an = load i64, ptr %i.a, align 8, !range !60, !noundef !5 ; 2 uses
  %.not69 = icmp eq i64 %i.an, -1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.057.0.copyload = load i64, ptr %i.ao, align 8 ; 2 uses
  br i1 %.not69, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.563.0.copyload = load i64, ptr %.sroa.563.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.an, ptr %i.ap, align 8
  %.sroa.465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.057.0.copyload, ptr %.sroa.465.0..sroa_idx, align 8
  %.sroa.566.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.563.0.copyload, ptr %.sroa.566.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  %i.aq = icmp eq i8 %.sroa.15.0, -1
  br i1 %i.aq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCs6et67aoV1xO_11proc_macro25IdentNtNtCsgbWeKYPjk8w_3syn5token5ColonEEEB1B_.exit89, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ar = icmp eq i8 %.sroa.15.0, 2
  %i.as = icmp eq i64 %.sroa.11.0, 0
  %or.cond161 = select i1 %i.ar, i1 true, i1 %i.as
  br i1 %or.cond161, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCs6et67aoV1xO_11proc_macro25IdentNtNtCsgbWeKYPjk8w_3syn5token5ColonEEEB1B_.exit89, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i87

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i87: ; preds = %bb.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0, i64 noundef %.sroa.11.0, i64 noundef 1) #19, !noalias !1988
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCs6et67aoV1xO_11proc_macro25IdentNtNtCsgbWeKYPjk8w_3syn5token5ColonEEEB1B_.exit89

bb.z:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %.sroa.837.sroa.9.0..sroa.837.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.837.sroa.9.0..sroa.837.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.20, i64 7, i1 false)
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.615, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.057.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.837.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.0.0, ptr %.sroa.837.0..sroa_idx, align 8
  %.sroa.837.sroa.7.0..sroa.837.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.11.0, ptr %.sroa.837.sroa.7.0..sroa.837.0..sroa_idx.sroa_idx, align 8
  %.sroa.837.sroa.8.0..sroa.837.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %.sroa.15.0, ptr %.sroa.837.sroa.8.0..sroa.837.0..sroa_idx.sroa_idx, align 8
  %.sroa.837.sroa.10.0..sroa.837.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %.sroa.20108.0, ptr %.sroa.837.sroa.10.0..sroa.837.0..sroa_idx.sroa_idx, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit101, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit95, %bb.z
  ret void

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCs6et67aoV1xO_11proc_macro25IdentNtNtCsgbWeKYPjk8w_3syn5token5ColonEEEB1B_.exit89: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i87, %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.ac unwind label %bb.ab

bb.ab:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCs6et67aoV1xO_11proc_macro25IdentNtNtCsgbWeKYPjk8w_3syn5token5ColonEEEB1B_.exit89
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load i64, ptr %i.e, align 8, !alias.scope !1997 ; 2 uses
  %i.au = icmp eq i64 %.val2.i, 0
  br i1 %i.au, label %common.resume, label %common.resume.sink.split

bb.ac:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCs6et67aoV1xO_11proc_macro25IdentNtNtCsgbWeKYPjk8w_3syn5token5ColonEEEB1B_.exit89
  %.val.i = load i64, ptr %i.e, align 8, !alias.scope !1997 ; 2 uses
  %i.av = icmp eq i64 %.val.i, 0
  br i1 %i.av, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit95, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit95.sink.split

common.resume.sink.split:                         ; preds = %bb.ab, %bb.ag, %bb.ae
  %.val2.i96.sink = phi i64 [ %.val2.i90, %bb.ae ], [ %.val2.i96, %bb.ag ], [ %.val2.i, %bb.ab ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.bb, %bb.ae ], [ %i.be, %bb.ag ], [ %i.at, %bb.ab ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val3.i97 = load ptr, ptr %i.aw, align 8, !nonnull !5, !noundef !5
  %i.ax = mul nuw i64 %.val2.i96.sink, 248
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i97, i64 noundef %i.ax, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !5
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.ag, %bb.ae, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCs6et67aoV1xO_11proc_macro25IdentNtNtCsgbWeKYPjk8w_3syn5token5ColonEEEB1B_.exit85, %bb.ab
  %common.resume.op = phi { ptr, i32 } [ %i.bb, %bb.ae ], [ %i.at, %bb.ab ], [ %i.aj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCs6et67aoV1xO_11proc_macro25IdentNtNtCsgbWeKYPjk8w_3syn5token5ColonEEEB1B_.exit85 ], [ %i.be, %bb.ag ], [ %.pn71, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit95.sink.split: ; preds = %bb.ac, %bb.af
  %.val.i.sink = phi i64 [ %.val.i93, %bb.af ], [ %.val.i, %bb.ac ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val1.i = load ptr, ptr %i.ay, align 8, !nonnull !5, !noundef !5
  %i.az = mul nuw i64 %.val.i.sink, 248
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.az, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !5
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit95

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit95: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit95.sink.split, %bb.ac, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.aa

bb.ad:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCs6et67aoV1xO_11proc_macro25IdentNtNtCsgbWeKYPjk8w_3syn5token5ColonEEEB1B_.exit85, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCs6et67aoV1xO_11proc_macro25IdentNtNtCsgbWeKYPjk8w_3syn5token5ColonEEEB1B_.exit85: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i83, %bb.v, %bb.u
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #20
          to label %common.resume unwind label %bb.ad

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCs6et67aoV1xO_11proc_macro25IdentNtNtCsgbWeKYPjk8w_3syn5token5ColonEEEB1B_.exit81: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i79, %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.af unwind label %bb.ae

bb.ae:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCs6et67aoV1xO_11proc_macro25IdentNtNtCsgbWeKYPjk8w_3syn5token5ColonEEEB1B_.exit81
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i90 = load i64, ptr %i.e, align 8, !alias.scope !2002 ; 2 uses
  %i.bc = icmp eq i64 %.val2.i90, 0
  br i1 %i.bc, label %common.resume, label %common.resume.sink.split

bb.af:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCs6et67aoV1xO_11proc_macro25IdentNtNtCsgbWeKYPjk8w_3syn5token5ColonEEEB1B_.exit81
  %.val.i93 = load i64, ptr %i.e, align 8, !alias.scope !2002 ; 2 uses
  %i.bd = icmp eq i64 %.val.i93, 0
  br i1 %i.bd, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit95, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit95.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit77: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i75, %bb.m, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11118)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.ah unwind label %bb.ag

bb.ag:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit77
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i96 = load i64, ptr %i.e, align 8, !alias.scope !2007 ; 2 uses
  %i.bf = icmp eq i64 %.val2.i96, 0
  br i1 %i.bf, label %common.resume, label %common.resume.sink.split

bb.ah:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit77
  %.val.i99 = load i64, ptr %i.e, align 8, !alias.scope !2007 ; 2 uses
  %i.bg = icmp eq i64 %.val.i99, 0
  br i1 %i.bg, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit101, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val1.i100 = load ptr, ptr %i.bh, align 8, !alias.scope !2012, !nonnull !5, !noundef !5
  %i.bi = mul nuw i64 %.val.i99, 248
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i100, i64 noundef %i.bi, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !2013
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit101

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit101: ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.aa
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCsgbWeKYPjk8w_3syn2ty7parsing8ambig_ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([248 x i8]) align 8 captures(none) dereferenceable(248) %0, ptr noundef nonnull align 8 %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 3 uses
  %i.b = alloca [12 x i8], align 4                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [64 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [64 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [80 x i8], align 8                ; 6 uses
  %i.j = alloca [48 x i8], align 8                ; 6 uses
  %i.k = alloca [248 x i8], align 8               ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [168 x i8], align 8               ; 7 uses
  %.sroa.6463 = alloca [24 x i8], align 8         ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [248 x i8], align 8               ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 9 uses
  %i.q = alloca [24 x i8], align 8                ; 13 uses
  %i.r = alloca [248 x i8], align 8               ; 7 uses
  %.sroa.6435 = alloca [24 x i8], align 8         ; 6 uses
  %i.s = alloca [248 x i8], align 8               ; 11 uses
  %i.t = alloca [56 x i8], align 8                ; 7 uses
  %i.u = alloca [32 x i8], align 8                ; 11 uses
  %i.v = alloca [32 x i8], align 8                ; 6 uses
  %i.w = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.6409 = alloca [24 x i8], align 8         ; 6 uses
  %i.x = alloca [32 x i8], align 8                ; 7 uses
  %i.y = alloca [24 x i8], align 8                ; 7 uses
  %i.z = alloca [24 x i8], align 8                ; 7 uses
  %i.aa = alloca [120 x i8], align 8              ; 4 uses
  %i.ab = alloca [120 x i8], align 8              ; 7 uses
  %.sroa.6367 = alloca [24 x i8], align 8         ; 6 uses
  %i.ac = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.0347 = alloca [96 x i8], align 8         ; 5 uses
  %i.ad = alloca [120 x i8], align 8              ; 6 uses
  %i.ae = alloca [32 x i8], align 8               ; 11 uses
  %i.af = alloca [48 x i8], align 8               ; 8 uses
  %.sroa.7331 = alloca [24 x i8], align 8         ; 7 uses
  %i.ag = alloca [24 x i8], align 8               ; 7 uses
  %i.ah = alloca [104 x i8], align 8              ; 7 uses
  %.sroa.6307 = alloca [24 x i8], align 8         ; 6 uses
  %i.ai = alloca [104 x i8], align 8              ; 20 uses
  %i.aj = alloca [48 x i8], align 8               ; 5 uses
  %i.ak = alloca [248 x i8], align 8              ; 7 uses
  %.sroa.6298 = alloca [24 x i8], align 8         ; 6 uses
  %i.al = alloca [248 x i8], align 8              ; 9 uses
  %i.am = alloca [32 x i8], align 8               ; 4 uses
  %i.an = alloca [248 x i8], align 8              ; 7 uses
  %.sroa.6286 = alloca [24 x i8], align 8         ; 6 uses
  %i.ao = alloca [248 x i8], align 8              ; 7 uses
  %i.ap = alloca [24 x i8], align 8               ; 7 uses
  %i.aq = alloca [24 x i8], align 8               ; 7 uses
  %i.ar = alloca [40 x i8], align 8               ; 9 uses
  %.sroa.5261.sroa.9 = alloca [15 x i8], align 1  ; 5 uses
  %i.as = alloca [24 x i8], align 8               ; 7 uses
  %i.at = alloca [24 x i8], align 8               ; 7 uses
  %i.au = alloca [248 x i8], align 8              ; 5 uses
  %i.av = alloca [24 x i8], align 8               ; 7 uses
  %i.aw = alloca [120 x i8], align 8              ; 4 uses
  %i.ax = alloca [120 x i8], align 8              ; 7 uses
  %.sroa.6228 = alloca [24 x i8], align 8         ; 6 uses
  %i.ay = alloca [24 x i8], align 8               ; 7 uses
  %i.az = alloca [120 x i8], align 8              ; 10 uses
  %i.ba = alloca [32 x i8], align 8               ; 12 uses
  %i.bb = alloca [24 x i8], align 8               ; 9 uses
  %.sroa.0208 = alloca [56 x i8], align 8         ; 3 uses
  %i.bc = alloca [32 x i8], align 8               ; 6 uses
  %i.bd = alloca [32 x i8], align 8               ; 6 uses
  %i.be = alloca [120 x i8], align 8              ; 10 uses
  %.sroa.61125.sroa.0 = alloca [40 x i8], align 8 ; 5 uses
  %.sroa.61125.sroa.7 = alloca [40 x i8], align 8 ; 5 uses
  %.sroa.71128.sroa.4 = alloca [12 x i8], align 4 ; 4 uses
  %.sroa.5184.sroa.0.sroa.7.sroa.0 = alloca [16 x i8], align 8 ; 5 uses
  %.sroa.01095.sroa.7 = alloca [40 x i8], align 8 ; 7 uses
  %.sroa.8 = alloca [40 x i8], align 8            ; 6 uses
  %.sroa.10 = alloca [12 x i8], align 4           ; 6 uses
  %i.bf = alloca [24 x i8], align 8               ; 7 uses
  %i.bg = alloca [248 x i8], align 8              ; 4 uses
  %i.bh = alloca [248 x i8], align 8              ; 7 uses
  %.sroa.6156 = alloca [24 x i8], align 8         ; 6 uses
  %i.bi = alloca [24 x i8], align 8               ; 7 uses
  %i.bj = alloca [248 x i8], align 8              ; 4 uses
  %i.bk = alloca [32 x i8], align 8               ; 13 uses
  %i.bl = alloca [24 x i8], align 8               ; 9 uses
  %i.bm = alloca [72 x i8], align 8               ; 4 uses
  %i.bn = alloca [248 x i8], align 8              ; 7 uses
  %.sroa.6132 = alloca [24 x i8], align 8         ; 6 uses
  %i.bo = alloca [248 x i8], align 8              ; 31 uses
  %i.bp = alloca [120 x i8], align 8              ; 4 uses
  %i.bq = alloca [120 x i8], align 8              ; 7 uses
  %.sroa.6126 = alloca [24 x i8], align 8         ; 6 uses
  %i.br = alloca [24 x i8], align 8               ; 7 uses
  %i.bs = alloca [120 x i8], align 8              ; 8 uses
  %.sroa.6105 = alloca [24 x i8], align 8         ; 6 uses
  %.sroa.8107 = alloca [64 x i8], align 8         ; 6 uses
  %i.bt = alloca [120 x i8], align 8              ; 11 uses
  %i.bu = alloca [32 x i8], align 8               ; 12 uses
  %i.bv = alloca [24 x i8], align 8               ; 9 uses
  %.sroa.094 = alloca [56 x i8], align 8          ; 3 uses
  %i.bw = alloca [64 x i8], align 8               ; 7 uses
  %.sroa.584 = alloca [24 x i8], align 8          ; 5 uses
  %i.bx = alloca [248 x i8], align 8              ; 9 uses
  %i.by = alloca [24 x i8], align 8               ; 10 uses
  %i.bz = alloca [56 x i8], align 8               ; 7 uses
  %i.ca = alloca [32 x i8], align 8               ; 25 uses
  %i.cb = alloca [56 x i8], align 8               ; 4 uses
  %i.cc = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.662 = alloca [24 x i8], align 8          ; 4 uses
  %.sroa.470 = alloca [16 x i8], align 8          ; 3 uses
  %i.cd = alloca [48 x i8], align 8               ; 7 uses
  %i.ce = alloca [56 x i8], align 8               ; 45 uses
  %i.cf = alloca [48 x i8], align 8               ; 22 uses
  %.sroa.553 = alloca [104 x i8], align 8         ; 5 uses
  %i.cg = alloca [24 x i8], align 8               ; 6 uses
  %i.ch = alloca [56 x i8], align 8               ; 7 uses
  %.sroa.640 = alloca [24 x i8], align 8          ; 4 uses
  %.sroa.636.sroa.7 = alloca [24 x i8], align 8   ; 6 uses
  %i.ci = alloca [104 x i8], align 8              ; 9 uses
  %i.cj = alloca [48 x i8], align 8               ; 7 uses
  %.sroa.522 = alloca [24 x i8], align 8          ; 5 uses
  %i.ck = alloca [24 x i8], align 8               ; 10 uses
  %i.cl = alloca [24 x i8], align 8               ; 6 uses
  %i.cm = alloca [104 x i8], align 8              ; 7 uses
  %i.cn = alloca [40 x i8], align 8               ; 7 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 6 uses
  %i.co = alloca [40 x i8], align 8               ; 18 uses
  %.val797 = load ptr, ptr %1, align 8, !noundef !5 ; 2 uses
  %i.cp = getelementptr i8, ptr %1, i64 8         ; 5 uses
  %.val798 = load ptr, ptr %i.cp, align 8, !noundef !5 ; 2 uses
  %i.cq = tail call noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token5GroupNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %1)
  br i1 %i.cq, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  call void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_2ty9TypeGroupEB8_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.cn, ptr noundef nonnull align 8 %1)
  %i.cr = load i64, ptr %i.cn, align 8, !range !60, !noundef !5 ; 2 uses
  %i.cs = icmp eq i64 %i.cr, -1
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.ct, i64 24, i1 false)
  br i1 %i.cs, label %bb.pk, label %bb.pl

.body840:                                         ; preds = %bb.ot, %bb.ou, %.thread966
  %.sroa.0480.0 = phi i8 [ %.sroa.0480.12, %bb.ou ], [ %.sroa.0480.2964, %.thread966 ], [ %.sroa.0480.12, %bb.ot ]
  %.pn771 = phi { ptr, i32 } [ %i.pn, %bb.ou ], [ %.pn769965, %.thread966 ], [ %i.pn, %bb.ot ] ; 2 uses
  %i.cu = trunc nuw i8 %.sroa.0480.0 to i1
  br i1 %i.cu, label %.body840.thread, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit879

bb.c:                                             ; preds = %.invoke
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %.body840.thread

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf)
  store i64 -1, ptr %i.cf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2016)
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 8, !noalias !2016, !noundef !5
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ce, i64 48 ; 3 uses
  store i32 %i.cx, ptr %i.cy, align 8, !alias.scope !2016
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ce, i64 32 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.ce, i64 40 ; 2 uses
  %i.db = load <2 x ptr>, ptr %1, align 8, !noalias !2016
  store <2 x ptr> %i.db, ptr %i.cz, align 8, !alias.scope !2016
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 11 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ce, i8 0, i64 16, i1 false), !alias.scope !2016
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !2016
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 24 ; 3 uses
  store i64 0, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !2016
  %i.dc = invoke noundef zeroext i1 @_RINvMNtCsgbWeKYPjk8w_3syn9lookaheadNtB3_10Lookahead14peekINvNtB5_5token3ForNtB3_11TokenMarkerEEB5_(ptr noundef nonnull align 8 %i.ce)
          to label %bb.f unwind label %.thread971.loopexit.split-lp

.thread971.loopexit:                              ; preds = %bb.ik, %bb.im, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeEBF_.exit, %bb.is
  %lpad.loopexit1063.a = landingpad { ptr, i32 }
          cleanup
  br label %.thread966

.thread971.loopexit.split-lp:                     ; preds = %bb.t, %bb.v, %bb.x, %bb.z, %bb.ab, %bb.ad, %bb.af, %bb.ai, %bb.h, %bb.al, %bb.ao, %bb.ap, %bb.at, %bb.av, %bb.ay, %bb.ba, %bb.bc, %bb.bf, %bb.bh, %bb.bj, %bb.bl, %bb.bn, %bb.bp, %bb.br, %bb.bu, %bb.bx, %bb.ca, %bb.cd, %bb.cb, %bb.cj, %bb.cm, %bb.cq, %bb.cn, %bb.ck, %bb.by, %bb.bv, %bb.eb, %bb.eu, %bb.g, %bb.ex, %bb.fa, %bb.fd, %bb.fl, %bb.bd, %bb.hu, %bb.aw, %bb.ar, %bb.ig, %bb.d, %bb.in, %bb.iy, %bb.jb, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn9lookahead10Lookahead1EBF_.exit, %bb.jc, %bb.lx, %bb.oq, %bb.nr
  %.sroa.0480.3.ph.ph = phi i8 [ 1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn9lookahead10Lookahead1EBF_.exit ], [ 1, %bb.jb ], [ 1, %bb.iy ], [ 1, %bb.in ], [ 1, %bb.nr ], [ 1, %bb.oq ], [ 1, %bb.d ], [ 1, %bb.lx ], [ 1, %bb.jc ], [ 1, %bb.ig ], [ 1, %bb.ar ], [ 1, %bb.aw ], [ %.sroa.0480.7, %bb.hu ], [ 1, %bb.bd ], [ 1, %bb.fl ], [ 1, %bb.fd ], [ 1, %bb.fa ], [ 1, %bb.ex ], [ 1, %bb.g ], [ 1, %bb.eu ], [ 1, %bb.eb ], [ 1, %bb.bv ], [ 1, %bb.by ], [ 1, %bb.ck ], [ 1, %bb.cn ], [ 1, %bb.cq ], [ 1, %bb.cm ], [ 1, %bb.cj ], [ 1, %bb.cb ], [ 1, %bb.cd ], [ 1, %bb.ca ], [ 1, %bb.bx ], [ 1, %bb.bu ], [ 1, %bb.br ], [ 1, %bb.bp ], [ 1, %bb.bn ], [ 1, %bb.bl ], [ 1, %bb.bj ], [ 1, %bb.bh ], [ 1, %bb.bf ], [ 1, %bb.bc ], [ 1, %bb.ba ], [ 1, %bb.ay ], [ 1, %bb.av ], [ 1, %bb.at ], [ 1, %bb.ap ], [ 1, %bb.ao ], [ 1, %bb.al ], [ 1, %bb.h ], [ 1, %bb.ai ], [ 1, %bb.af ], [ 1, %bb.ad ], [ 1, %bb.ab ], [ 1, %bb.z ], [ 1, %bb.x ], [ 1, %bb.v ], [ 1, %bb.t ]
  %lpad.loopexit.split-lp1064.a = landingpad { ptr, i32 }
          cleanup
  br label %.thread966

bb.e:                                             ; preds = %bb.ah, %bb.cp
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body840.thread

bb.f:                                             ; preds = %bb.d
  br i1 %i.dc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB8_8generics14BoundLifetimesEEB8_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.cd, ptr noundef nonnull align 8 %1)
          to label %bb.i unwind label %.thread971.loopexit.split-lp

bb.h:                                             ; preds = %bb.aj, %bb.f
  %i.dd = invoke noundef zeroext i1 @_RINvMNtCsgbWeKYPjk8w_3syn9lookaheadNtB3_10Lookahead14peekINvNtB5_5token5ParenNtB3_11TokenMarkerEEB5_(ptr noundef nonnull align 8 %i.ce)
          to label %bb.ak unwind label %.thread971.loopexit.split-lp

bb.i:                                             ; preds = %bb.g
  %i.de = load i64, ptr %i.cd, align 8, !range !2019, !noundef !5 ; 3 uses
  %i.df = icmp eq i64 %i.de, -2
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.662, ptr noundef nonnull align 8 dereferenceable(24) %i.dg, i64 24, i1 false)
  br i1 %i.df, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dh, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.662, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  br label %bb.jg

bb.k:                                             ; preds = %bb.i
  %.sroa.5520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.470, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5520.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  %i.di = load i64, ptr %i.cf, align 8, !range !60, !alias.scope !2020, !noundef !5
  %i.dj = icmp eq i64 %i.di, -1
  br i1 %i.dj, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_8generics12GenericParamNtNtBG_5token5CommaEEBG_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.cf)
          to label %bb.n unwind label %bb.m, !inline_history !977

bb.m:                                             ; preds = %bb.l
  %i.dk = landingpad { ptr, i32 }
          cleanup
  store i64 %i.de, ptr %i.cf, align 8
  %.sroa.368.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.368.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.662, i64 24, i1 false)
  %.sroa.470.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.470.0..sroa_idx.a, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.470, i64 16, i1 false)
  br label %.thread966

bb.n:                                             ; preds = %bb.l, %bb.k
  store i64 %i.de, ptr %i.cf, align 8
  %.sroa.368.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.368.0..sroa_idx69, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.662, i64 24, i1 false)
  %.sroa.470.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.470.0..sroa_idx71, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.470, i64 16, i1 false)
  %i.dl = load i32, ptr %i.cw, align 8, !noalias !2023, !noundef !5 ; 2 uses
  %i.dm = load ptr, ptr %1, align 8, !noalias !2023, !noundef !5 ; 2 uses
  %i.dn = load ptr, ptr %i.cp, align 8, !noalias !2023, !noundef !5 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecReENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do)
          to label %bb.q unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dp = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i = load i64, ptr %i.do, align 8, !alias.scope !2026 ; 2 uses
  %i.dq = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.dq, label %.body831, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.val3.i.i.i.i = load ptr, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !2037, !nonnull !5, !noundef !5
  %i.dr = shl nuw i64 %.val2.i.i.i.i, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %i.dr, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !2038
  br label %.body831

bb.q:                                             ; preds = %bb.n
  %.val.i.i.i.i = load i64, ptr %i.do, align 8, !alias.scope !2026 ; 2 uses
  %i.ds = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.ds, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn9lookahead10Lookahead1EBF_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.val1.i.i.i.i = load ptr, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !2037, !nonnull !5, !noundef !5
  %i.dt = shl nuw i64 %.val.i.i.i.i, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %i.dt, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !2041
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn9lookahead10Lookahead1EBF_.exit

.body831:                                         ; preds = %bb.o, %bb.p
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8
  store i64 0, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8
  store ptr %i.dm, ptr %i.cz, align 8
  store ptr %i.dn, ptr %i.da, align 8
  store i32 %i.dl, ptr %i.cy, align 8
  br label %.thread966

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn9lookahead10Lookahead1EBF_.exit: ; preds = %bb.r, %bb.q
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8
  store i64 0, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8
  store ptr %i.dm, ptr %i.cz, align 8
  store ptr %i.dn, ptr %i.da, align 8
  store i32 %i.dl, ptr %i.cy, align 8
end_hunk_0
begin_hunk_1_@_RNvNtNtCsgbWeKYPjk8w_3syn2ty7parsing8ambig_ty:bb.a
  %.sroa.4471.sroa.4.0..sroa.4471.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.gl, ptr %.sroa.4471.sroa.4.0..sroa.4471.0..sroa_idx.sroa_idx, align 8
  br label %bb.eb

bb.eb:                                            ; preds = %bb.el, %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.u)
          to label %bb.em unwind label %.thread971.loopexit.split-lp

bb.ec:                                            ; preds = %bb.pj, %bb.kq, %bb.hk, %bb.hq, %bb.na, %bb.ng, %bb.ro, %bb.si, %bb.sh, %bb.sc, %bb.rx, %bb.rk, %bb.rc, %bb.qz, %bb.pm, %.thread966, %.thread999, %.body, %bb.ox, %bb.nw, %bb.nt, %bb.nk, %bb.nj, %bb.nh, %bb.ne, %bb.nd, %bb.md, %bb.ma, %.body783, %bb.lb, %bb.ky, %bb.hz, %bb.hs, %bb.hp, %bb.gl, %bb.fq, %bb.fj, %.thread976, %bb.ev, %bb.eq, %bb.en, %bb.ei, %bb.ee, %.body786, %.body789
  %i.gt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21
  unreachable

.body786:                                         ; preds = %bb.dy, %bb.ee
  %.pn = phi { ptr, i32 } [ %i.gu, %bb.ee ], [ %i.gr, %bb.dy ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q) #20
          to label %.thread976 unwind label %bb.ec

bb.ed:                                            ; preds = %bb.dx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.gq, ptr noundef nonnull align 8 dereferenceable(248) %i.s, i64 248, i1 false)
  store ptr %i.gq, ptr %i.p, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token4SemiEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noundef nonnull align 8 %i.u)
          to label %bb.ef unwind label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.gu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn2ty4TypeEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.p) #20
          to label %.body786 unwind label %bb.ec

bb.ef:                                            ; preds = %bb.ed
  %i.gv = load i64, ptr %i.n, align 8, !range !60, !noundef !5 ; 2 uses
  %.not729.a = icmp eq i64 %i.gv, -1
  %i.gw = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.0679.0.copyload = load i32, ptr %i.gw, align 8 ; 2 uses
  br i1 %.not729.a, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %.sroa.5685.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %.sroa.5688.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5688.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5685.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.gv, ptr %i.gx, align 8
  %.sroa.4687.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.0679.0.copyload, ptr %.sroa.4687.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn2ty4TypeEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.p)
          to label %bb.es unwind label %bb.er

bb.eh:                                            ; preds = %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6463)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_4expr4ExprEB8_(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(address) dereferenceable(168) %i.m, ptr noundef nonnull align 8 %i.u)
          to label %bb.ej unwind label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.gy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn2ty4TypeEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.p) #20
          to label %bb.eq unwind label %bb.ec

bb.ej:                                            ; preds = %bb.eh
  %i.gz = load i64, ptr %i.m, align 8, !range !1727, !noundef !5 ; 2 uses
  %i.ha = icmp eq i64 %i.gz, -1
  %i.hb = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6463, ptr noundef nonnull align 8 dereferenceable(24) %i.hb, i64 24, i1 false)
  br i1 %i.ha, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hc, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6463, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn2ty4TypeEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.p)
          to label %bb.eo unwind label %bb.en

bb.el:                                            ; preds = %bb.ej
  %.sroa.5691.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.6443.sroa.0.sroa.8.0..sroa.6443.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.6443.sroa.0.sroa.8.0..sroa.6443.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.5691.0..sroa_idx, i64 136, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.sroa.6443.sroa.0.sroa.7.0..sroa.6443.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6443.sroa.0.sroa.7.0..sroa.6443.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6463, i64 24, i1 false)
  %.sroa.6443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6443.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  %.sroa.6443.sroa.7.0..sroa.6443.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.6443.sroa.7.0..sroa.6443.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %i.a, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  store i64 2, ptr %0, align 8
  %.sroa.6443.sroa.0.sroa.6.0..sroa.6443.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.gz, ptr %.sroa.6443.sroa.0.sroa.6.0..sroa.6443.0..sroa_idx.sroa_idx, align 8
  %.sroa.6443.sroa.6.0..sroa.6443.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %i.gq, ptr %.sroa.6443.sroa.6.0..sroa.6443.0..sroa_idx.sroa_idx, align 8
  %.sroa.6443.sroa.8.0..sroa.6443.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 220
  store i32 %.sroa.0679.0.copyload, ptr %.sroa.6443.sroa.8.0..sroa.6443.0..sroa_idx.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6463)
  br label %bb.eb

bb.em:                                            ; preds = %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %.invoke

bb.en:                                            ; preds = %bb.ek
  %i.hd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q) #20
          to label %.thread976 unwind label %bb.ec

bb.eo:                                            ; preds = %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q)
          to label %bb.ep unwind label %.thread991

bb.ep:                                            ; preds = %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6463)
  br label %bb.eu

bb.eq:                                            ; preds = %bb.er, %bb.ei
  %.pn730 = phi { ptr, i32 } [ %i.he, %bb.er ], [ %i.gy, %bb.ei ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q) #20
          to label %.thread976 unwind label %bb.ec

bb.er:                                            ; preds = %bb.eg
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

bb.es:                                            ; preds = %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q)
          to label %bb.et unwind label %.thread991

bb.et:                                            ; preds = %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.eu

bb.eu:                                            ; preds = %bb.ep, %bb.et, %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.u)
          to label %bb.ew unwind label %.thread971.loopexit.split-lp

bb.ev:                                            ; preds = %bb.ds
  %lpad.thr_comm.split-lp990 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty4TypeEBF_(ptr noalias nofree noundef align 8 dereferenceable(248) %i.s) #20
          to label %.thread976 unwind label %bb.ec

bb.ew:                                            ; preds = %bb.eu, %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.jg

.thread976:                                       ; preds = %.body789, %.body786, %bb.en, %bb.eq, %.thread991, %bb.ev, %.thread980
  %.pn732.pn979 = phi { ptr, i32 } [ %i.gd, %.thread980 ], [ %lpad.thr_comm.split-lp990, %bb.ev ], [ %lpad.thr_comm989, %.thread991 ], [ %i.gm, %.body789 ], [ %.pn, %.body786 ], [ %i.hd, %bb.en ], [ %.pn730, %bb.eq ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.u) #20
          to label %.thread966 unwind label %bb.ec

bb.ex:                                            ; preds = %bb.bo
  %.val795 = load ptr, ptr %1, align 8, !noundef !5
  %.val796 = load ptr, ptr %i.cp, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token3DynEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.z, ptr noundef nonnull align 8 %1)
          to label %bb.ey unwind label %.thread971.loopexit.split-lp

bb.ey:                                            ; preds = %bb.ex
  %i.hf = load i64, ptr %i.z, align 8, !range !60, !noundef !5 ; 2 uses
  %.not735 = icmp eq i64 %i.hf, -1
  %i.hg = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.hh = load i32, ptr %i.hg, align 8            ; 2 uses
  br i1 %.not735, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %.sroa.5660.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %.sroa.5663.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5663.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5660.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.hf, ptr %i.hi, align 8
  %.sroa.4662.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.hh, ptr %.sroa.4662.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.jg

bb.fa:                                            ; preds = %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB8_5token4StarEEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.y, ptr noundef nonnull align 8 %1)
          to label %bb.fb unwind label %.thread971.loopexit.split-lp

bb.fb:                                            ; preds = %bb.fa
  %i.hj = load i64, ptr %i.y, align 8, !range !60, !noundef !5 ; 2 uses
  %.not736 = icmp eq i64 %i.hj, -1
  %i.hk = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.0664.0.copyload = load i64, ptr %i.hk, align 8 ; 2 uses
  br i1 %.not736, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %.sroa.5670.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.5670.0.copyload = load i64, ptr %.sroa.5670.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.hj, ptr %i.hl, align 8
  %.sroa.4672.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0664.0.copyload, ptr %.sroa.4672.0..sroa_idx, align 8
  %.sroa.5673.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.5670.0.copyload, ptr %.sroa.5673.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.jg

bb.fd:                                            ; preds = %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6409)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  invoke void @_RNvMsd_NtNtCsgbWeKYPjk8w_3syn2ty7parsingNtB7_15TypeTraitObject12parse_bounds(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.w, ptr noundef %.val795, ptr noundef %.val796, ptr noundef nonnull align 8 %1, i1 noundef zeroext %2)
          to label %bb.fe unwind label %.thread971.loopexit.split-lp

bb.fe:                                            ; preds = %bb.fd
  %i.hm = load i64, ptr %i.w, align 8, !range !60, !noundef !5 ; 3 uses
  %i.hn = icmp eq i64 %i.hm, -1
  %i.ho = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6409, ptr noundef nonnull align 8 dereferenceable(24) %i.ho, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br i1 %i.hn, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hp, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6409, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6409)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.jg

bb.fg:                                            ; preds = %bb.fe
  %.sroa.4412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4412.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6409, i64 24, i1 false)
  store i64 %i.hm, ptr %i.x, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6409)
  %4 = and i64 %.sroa.0664.0.copyload, 4294967295
  %i.hq = icmp eq i64 %4, 1
  br i1 %i.hq, label %bb.fk, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  store i64 14, ptr %0, align 8
  %.sroa.7415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.7415.0..sroa_idx, align 8
  %.sroa.7415.sroa.0.sroa.7.0..sroa.7415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.7415.sroa.0.sroa.7.0..sroa.7415.0..sroa_idx.sroa_idx, align 8
  %.sroa.7415.sroa.0.sroa.8.0..sroa.7415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.7415.sroa.0.sroa.8.0..sroa.7415.0..sroa_idx.sroa_idx, align 8
  %.sroa.7415.sroa.0.sroa.9.0..sroa.7415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.hm, ptr %.sroa.7415.sroa.0.sroa.9.0..sroa.7415.0..sroa_idx.sroa_idx, align 8
  %.sroa.7415.sroa.0.sroa.9.sroa.7.0..sroa.7415.sroa.0.sroa.9.0..sroa.7415.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7415.sroa.0.sroa.9.sroa.7.0..sroa.7415.sroa.0.sroa.9.0..sroa.7415.0..sroa_idx.sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4412.0..sroa_idx, i64 24, i1 false)
  %.sroa.7415.sroa.7.0..sroa.7415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 1, ptr %.sroa.7415.sroa.7.0..sroa.7415.0..sroa_idx.sroa_idx, align 8
  %.sroa.7415.sroa.8.0..sroa.7415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %i.hh, ptr %.sroa.7415.sroa.8.0..sroa.7415.0..sroa_idx.sroa_idx, align 4
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fl, %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %.invoke

bb.fj:                                            ; preds = %bb.fk
  %i.hr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_8generics14TypeParamBoundNtNtBG_5token4PlusEEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.x) #20
          to label %.thread966 unwind label %bb.ec

bb.fk:                                            ; preds = %bb.fg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %.val793.a = load ptr, ptr %1, align 8, !noundef !5
  %.val794.a = load ptr, ptr %i.cp, align 8, !noundef !5
  invoke void @_RNvNtCsgbWeKYPjk8w_3syn8verbatim7between(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.v, ptr noundef %.val797, ptr noundef %.val798, ptr noundef %.val793.a, ptr noundef %.val794.a)
          to label %bb.fl unwind label %bb.fj

bb.fl:                                            ; preds = %bb.fk
  %.sroa.7415.sroa.0.sroa.0.0.copyload428 = load i64, ptr %i.v, align 8
  %.sroa.7415.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.7415.sroa.0.sroa.7.0.copyload430 = load ptr, ptr %.sroa.7415.sroa.0.sroa.7.0..sroa_idx, align 8
  %.sroa.7415.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.7415.0..sroa_idx416 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.7415.sroa.0.sroa.7.0..sroa.7415.0..sroa_idx416.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.7415.sroa.0.sroa.8.0..sroa.7415.0..sroa_idx416.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hs = load <2 x i64>, ptr %.sroa.7415.sroa.0.sroa.8.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  store i64 16, ptr %0, align 8
  store i64 %.sroa.7415.sroa.0.sroa.0.0.copyload428, ptr %.sroa.7415.0..sroa_idx416, align 8
  store ptr %.sroa.7415.sroa.0.sroa.7.0.copyload430, ptr %.sroa.7415.sroa.0.sroa.7.0..sroa.7415.0..sroa_idx416.sroa_idx, align 8
  store <2 x i64> %i.hs, ptr %.sroa.7415.sroa.0.sroa.8.0..sroa.7415.0..sroa_idx416.sroa_idx, align 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_8generics14TypeParamBoundNtNtBG_5token4PlusEEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.x)
          to label %bb.fi unwind label %.thread971.loopexit.split-lp

bb.fm:                                            ; preds = %bb.bd
  %i.ht = load i64, ptr %i.ah, align 8, !range !60, !noundef !5 ; 2 uses
  %i.hu = icmp eq i64 %i.ht, -1
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6307, ptr noundef nonnull align 8 dereferenceable(24) %i.hv, i64 24, i1 false)
  br i1 %i.hu, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hw, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6307, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6307)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %bb.jg

bb.fo:                                            ; preds = %bb.fm
  %.sroa.5628.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %.sroa.5313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5313.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5628.0..sroa_idx, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %.sroa.4312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4312.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6307, i64 24, i1 false)
  store i64 %i.ht, ptr %i.ai, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6307)
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ai, i64 72 ; 4 uses
  %i.hy = load i32, ptr %i.hx, align 8, !range !805, !noundef !5
  %.not737 = icmp eq i32 %i.hy, 2
  br i1 %.not737, label %bb.fp, label %.thread994.a

bb.fp:                                            ; preds = %bb.fo
  %i.hz = invoke noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token3NotNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %1)
          to label %bb.fs unwind label %bb.fr

.thread994.a:                                     ; preds = %bb.fo
  %.sroa.4315.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4315.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %i.ai, i64 104, i1 false)
  store i64 10, ptr %0, align 8
  br label %bb.ht

bb.fq:                                            ; preds = %bb.gl, %bb.fr
  %.sroa.0484.0 = phi i1 [ %.sroa.0484.1, %bb.fr ], [ false, %bb.gl ]
  %.pn741 = phi { ptr, i32 } [ %i.ia, %bb.fr ], [ %lpad.phi1070, %bb.gl ] ; 2 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ai) #20
          to label %bb.hq unwind label %bb.ec

bb.fr:                                            ; preds = %bb.hj, %bb.gi, %bb.gb, %bb.fy, %bb.fw, %bb.fu, %bb.fp
  %.sroa.0484.1 = phi i1 [ false, %bb.hj ], [ true, %bb.fp ], [ true, %bb.gi ], [ true, %bb.gb ], [ true, %bb.fy ], [ true, %bb.fw ], [ true, %bb.fu ]
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %bb.fq

bb.fs:                                            ; preds = %bb.fp
  br i1 %i.hz, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %bb.fx, %bb.fv, %bb.fs
  %i.ib = load i64, ptr %i.cf, align 8, !range !60, !noundef !5
  %.not739.a = icmp eq i64 %i.ib, -1
  br i1 %.not739.a, label %bb.gg, label %bb.gk

bb.fu:                                            ; preds = %bb.fs
  %i.ic = invoke noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token2NeNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %1)
          to label %bb.fv unwind label %bb.fr

bb.fv:                                            ; preds = %bb.fu
  br i1 %i.ic, label %bb.ft, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.id = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 2 uses
  %i.ie = invoke noundef zeroext i1 @_RNvMs5_NtNtCsgbWeKYPjk8w_3syn4path7parsingNtB7_4Path12is_mod_style(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.id)
          to label %bb.fx unwind label %bb.fr

bb.fx:                                            ; preds = %bb.fw
  br i1 %i.ie, label %bb.fy, label %bb.ft

bb.fy:                                            ; preds = %bb.fx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token3NotEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ag, ptr noundef nonnull align 8 %1)
          to label %bb.fz unwind label %bb.fr

bb.fz:                                            ; preds = %bb.fy
  %i.if = load i64, ptr %i.ag, align 8, !range !60, !noundef !5 ; 2 uses
  %.not738.a = icmp eq i64 %i.if, -1
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.0629.0.copyload = load i32, ptr %i.ig, align 8 ; 2 uses
  br i1 %.not738.a, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %.sroa.5635.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %.sroa.5638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5638.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5635.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.if, ptr %i.ih, align 8
  %.sroa.4637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.0629.0.copyload, ptr %.sroa.4637.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.gf

bb.gb:                                            ; preds = %bb.fz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7331)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  invoke void @_RNvNtCsgbWeKYPjk8w_3syn3mac15parse_delimiter(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.af, ptr noundef nonnull align 8 %1)
          to label %bb.gc unwind label %bb.fr

bb.gc:                                            ; preds = %bb.gb
  %i.ii = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ij = load i64, ptr %i.ii, align 8, !range !2019, !noundef !5 ; 2 uses
  %i.ik = icmp eq i64 %i.ij, -2
  br i1 %i.ik, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  %i.il = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7331, ptr noundef nonnull align 8 dereferenceable(24) %i.il, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.im, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7331, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7331)
  br label %bb.gf

bb.ge:                                            ; preds = %bb.gc
  %.sroa.4333.sroa.6.sroa.0.sroa.6.0..sroa.4333.sroa.6.0..sroa.4333.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4333.sroa.6.sroa.0.sroa.6.0..sroa.4333.sroa.6.0..sroa.4333.0..sroa_idx.sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 16, i1 false)
  %.sroa.5641.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7331, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5641.0..sroa_idx.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %.sroa.4333.sroa.6.sroa.0.sroa.5.0..sroa.4333.sroa.6.0..sroa.4333.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4333.sroa.6.sroa.0.sroa.5.0..sroa.4333.sroa.6.0..sroa.4333.0..sroa_idx.sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7331, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7331)
  %.sroa.4333.sroa.6.0..sroa.4333.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4333.sroa.6.0..sroa.4333.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.id, i64 48, i1 false)
  store i64 7, ptr %0, align 8
  %.sroa.4333.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4333.0..sroa_idx, align 8
  %.sroa.4333.sroa.4.0..sroa.4333.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4333.sroa.4.0..sroa.4333.0..sroa_idx.sroa_idx, align 8
  %.sroa.4333.sroa.5.0..sroa.4333.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.4333.sroa.5.0..sroa.4333.0..sroa_idx.sroa_idx, align 8
  %.sroa.4333.sroa.6.sroa.0.sroa.4.0..sroa.4333.sroa.6.0..sroa.4333.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.ij, ptr %.sroa.4333.sroa.6.sroa.0.sroa.4.0..sroa.4333.sroa.6.0..sroa.4333.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.4333.sroa.6.sroa.4.0..sroa.4333.sroa.6.0..sroa.4333.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 %.sroa.0629.0.copyload, ptr %.sroa.4333.sroa.6.sroa.4.0..sroa.4333.sroa.6.0..sroa.4333.0..sroa_idx.sroa_idx.sroa_idx, align 8
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ga, %bb.gd, %bb.ge, %bb.he
  %.sroa.0480.7 = phi i8 [ 0, %bb.he ], [ 1, %bb.ga ], [ 1, %bb.gd ], [ 1, %bb.ge ] ; 5 uses
  %.sroa.0484.2 = phi i1 [ false, %bb.he ], [ true, %bb.ga ], [ true, %bb.gd ], [ false, %bb.ge ] ; 2 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ai)
          to label %bb.hl unwind label %bb.hk

bb.gg:                                            ; preds = %bb.ft
  br i1 %2, label %bb.gi, label %bb.gh

bb.gh:                                            ; preds = %bb.gj, %bb.gg
  %.sroa.4381.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4381.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %i.ai, i64 104, i1 false)
  store i64 10, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %.invoke

bb.gi:                                            ; preds = %bb.gg
  %i.in = invoke noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token4PlusNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %1)
          to label %bb.gj unwind label %bb.fr

bb.gj:                                            ; preds = %bb.gi
  br i1 %i.in, label %bb.gk, label %bb.gh

bb.gk:                                            ; preds = %bb.ft, %bb.gj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store i64 0, ptr %i.ae, align 8, !alias.scope !2044
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !2044
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !2044
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0347)
  %.sroa.0347.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0347, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0347.48..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.cf, i64 48, i1 false)
  %i.io = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0347, ptr noundef nonnull align 8 dereferenceable(48) %i.io, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ad, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.0347, i64 96, i1 false)
  %.sroa.5348.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 96
  store i32 0, ptr %.sroa.5348.0..sroa_idx, align 8
  %.sroa.7350.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 112
  store i64 0, ptr %.sroa.7350.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0347)
  invoke void @_RNvMNtCsgbWeKYPjk8w_3syn10punctuatedINtB2_10PunctuatedNtNtB4_8generics14TypeParamBoundNtNtB4_5token4PlusE10push_valueB4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(120) %i.ad)
          to label %bb.gm unwind label %.loopexit.split-lp1067

.loopexit1066.a:                                  ; preds = %bb.gn, %bb.gp, %bb.gs, %bb.gt, %bb.gv, %bb.gw, %bb.gy, %bb.ha, %bb.hc, %bb.hh
  %lpad.loopexit1068 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gl

.loopexit.split-lp1067:                           ; preds = %bb.gk
  %lpad.loopexit.split-lp1069 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gl

bb.gl:                                            ; preds = %.loopexit.split-lp1067, %.loopexit1066.a
  %lpad.phi1070 = phi { ptr, i32 } [ %lpad.loopexit1068, %.loopexit1066.a ], [ %lpad.loopexit.split-lp1069, %.loopexit.split-lp1067 ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_8generics14TypeParamBoundNtNtBG_5token4PlusEEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ae) #20
          to label %bb.fq unwind label %bb.ec

bb.gm:                                            ; preds = %bb.gk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br i1 %2, label %.preheader, label %.loopexit1071

.preheader:                                       ; preds = %bb.gm
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.4653.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.5654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %.sroa.6367.0..sroa_idx368 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.8369.0..sroa_idx370 = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  br label %bb.gn

.loopexit1071:                                    ; preds = %bb.hd, %bb.go, %bb.gm
  %.sroa.4372.sroa.0.sroa.6.0..sroa.4372.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4372.sroa.0.sroa.6.0..sroa.4372.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 32, i1 false)
  store i64 14, ptr %0, align 8
  %.sroa.4372.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4372.0..sroa_idx, align 8
  %.sroa.4372.sroa.0.sroa.4.0..sroa.4372.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4372.sroa.0.sroa.4.0..sroa.4372.0..sroa_idx.sroa_idx, align 8
  %.sroa.4372.sroa.0.sroa.5.0..sroa.4372.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.4372.sroa.0.sroa.5.0..sroa.4372.0..sroa_idx.sroa_idx, align 8
  %.sroa.4372.sroa.4.0..sroa.4372.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %.sroa.4372.sroa.4.0..sroa.4372.0..sroa_idx.sroa_idx, align 8
  br label %bb.he

bb.gn:                                            ; preds = %.preheader, %bb.hi
  %i.iq = invoke noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token4PlusNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %1)
          to label %bb.go unwind label %.loopexit1066.a

bb.go:                                            ; preds = %bb.gn
  br i1 %i.iq, label %bb.gp, label %.loopexit1071

bb.gp:                                            ; preds = %bb.go
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token4PlusEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ac, ptr noundef nonnull align 8 %1)
          to label %bb.gq unwind label %.loopexit1066.a

bb.gq:                                            ; preds = %bb.gp
  %i.ir = load i64, ptr %i.ac, align 8, !range !60, !noundef !5 ; 2 uses
  %.not740.a = icmp eq i64 %i.ir, -1
  %.sroa.0642.0.copyload = load i32, ptr %i.ip, align 8 ; 2 uses
  br i1 %.not740.a, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %.sroa.5648.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %.sroa.5651.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5651.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5648.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ir, ptr %i.is, align 8
  %.sroa.4650.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.0642.0.copyload, ptr %.sroa.4650.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.hj

bb.gs:                                            ; preds = %bb.gq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  invoke void @_RNvMNtCsgbWeKYPjk8w_3syn10punctuatedINtB2_10PunctuatedNtNtB4_8generics14TypeParamBoundNtNtB4_5token4PlusE10push_punctB4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ae, i32 noundef %.sroa.0642.0.copyload)
          to label %bb.gt unwind label %.loopexit1066.a

bb.gt:                                            ; preds = %bb.gs
  %i.it = invoke noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekNtNtNtB8_3ext7private6PeekFnEB8_(ptr noundef nonnull align 8 %1)
          to label %bb.gu unwind label %.loopexit1066.a

bb.gu:                                            ; preds = %bb.gt
  br i1 %i.it, label %bb.gw, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.iu = invoke noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token7PathSepNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %1)
          to label %bb.gx unwind label %.loopexit1066.a

bb.gw:                                            ; preds = %bb.hd, %bb.hb, %bb.gz, %bb.gx, %bb.gu
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6367)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  invoke void @_RNvMs5_NtNtCsgbWeKYPjk8w_3syn8generics7parsingNtB7_14TypeParamBound12parse_single(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.ab, ptr noundef nonnull align 8 %1, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.hf unwind label %.loopexit1066.a

bb.gx:                                            ; preds = %bb.gv
  br i1 %i.iu, label %bb.gw, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.iv = invoke noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token8QuestionNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %1)
          to label %bb.gz unwind label %.loopexit1066.a

bb.gz:                                            ; preds = %bb.gy
  br i1 %i.iv, label %bb.gw, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.iw = invoke noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekNvNtB8_8lifetime8LifetimeEB8_(ptr noundef nonnull align 8 %1)
          to label %bb.hb unwind label %.loopexit1066.a

bb.hb:                                            ; preds = %bb.ha
  br i1 %i.iw, label %bb.gw, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.ix = invoke noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token5ParenNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %1)
          to label %bb.hd unwind label %.loopexit1066.a

bb.hd:                                            ; preds = %bb.hc
  br i1 %i.ix, label %bb.gw, label %.loopexit1071

bb.he:                                            ; preds = %bb.hj, %.loopexit1071
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.gf

bb.hf:                                            ; preds = %bb.gw
  %i.iy = load i64, ptr %i.ab, align 8, !range !2047, !noundef !5 ; 2 uses
  %i.iz = icmp eq i64 %i.iy, -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6367, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4653.0..sroa_idx, i64 24, i1 false)
  br i1 %i.iz, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %bb.hf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ja, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6367, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6367)
  br label %bb.hj

bb.hh:                                            ; preds = %bb.hf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.8369.0..sroa_idx370, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5654.0..sroa_idx, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  store i64 %i.iy, ptr %i.aa, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6367.0..sroa_idx368, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6367, i64 24, i1 false)
  invoke void @_RNvMNtCsgbWeKYPjk8w_3syn10punctuatedINtB2_10PunctuatedNtNtB4_8generics14TypeParamBoundNtNtB4_5token4PlusE10push_valueB4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(120) %i.aa)
          to label %bb.hi unwind label %.loopexit1066.a

bb.hi:                                            ; preds = %bb.hh
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6367)
  br label %bb.gn

bb.hj:                                            ; preds = %bb.gr, %bb.hg
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_8generics14TypeParamBoundNtNtBG_5token4PlusEEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ae)
          to label %bb.he unwind label %bb.fr

bb.hk:                                            ; preds = %bb.gf
  %i.jb = landingpad { ptr, i32 }
          cleanup
  %.val814.a = load i32, ptr %i.hx, align 8, !range !805, !noundef !5
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  %.val815.a = load ptr, ptr %i.jc, align 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path5QSelfEEB11_(i32 %.val814.a, ptr %.val815.a) #20
          to label %bb.hm unwind label %bb.ec

bb.hl:                                            ; preds = %bb.gf
  %.val816.a = load i32, ptr %i.hx, align 8, !range !805, !noundef !5
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  %.val817 = load ptr, ptr %i.jd, align 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path5QSelfEEB11_(i32 %.val816.a, ptr %.val817)
          to label %bb.ho unwind label %bb.hn

bb.hm:                                            ; preds = %bb.hk, %bb.hn
  %.pn743 = phi { ptr, i32 } [ %i.je, %bb.hn ], [ %i.jb, %bb.hk ] ; 2 uses
  br i1 %.sroa.0484.2, label %bb.hp, label %.thread966

bb.hn:                                            ; preds = %bb.hl
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %bb.hm

bb.ho:                                            ; preds = %bb.hl
  br i1 %.sroa.0484.2, label %bb.hu, label %bb.ht

bb.hp:                                            ; preds = %bb.hm
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4path4PathEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.jf) #20
          to label %.thread966 unwind label %bb.ec

bb.hq:                                            ; preds = %bb.fq
  %.val812.a = load i32, ptr %i.hx, align 8, !range !805, !noundef !5
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  %.val813.a = load ptr, ptr %i.jg, align 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path5QSelfEEB11_(i32 %.val812.a, ptr %.val813.a) #20
          to label %bb.hr unwind label %bb.ec

bb.hr:                                            ; preds = %bb.hq
  br i1 %.sroa.0484.0, label %bb.hs, label %.thread966

bb.hs:                                            ; preds = %bb.hr
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
end_hunk_1
begin_hunk_2_@_RNvNtNtCsgbWeKYPjk8w_3syn2ty7parsing8ambig_ty:bb.a
  %i.lx = add nsw i64 %i.lv, -2
  %i.ly = icmp samesign ugt i64 %i.lv, 1
  %i.lz = select i1 %i.ly, i64 %i.lx, i64 1
  switch i64 %i.lz, label %bb.kh [
    i64 8, label %bb.ki
    i64 12, label %bb.kj
  ]

bb.kh:                                            ; preds = %bb.lu, %bb.kj, %bb.ki, %bb.kg
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01095.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  br label %bb.kb

bb.ki:                                            ; preds = %bb.kg
  %i.ma = getelementptr inbounds nuw i8, ptr %i.bo, i64 80
  %i.mb = load i32, ptr %i.ma, align 8, !range !805, !noundef !5
  %.not752.a = icmp eq i32 %i.mb, 2
  br i1 %.not752.a, label %bb.kk, label %bb.kh

bb.kj:                                            ; preds = %bb.kg
  %i.mc = getelementptr inbounds nuw i8, ptr %i.bo, i64 64 ; 3 uses
  %i.md = load i32, ptr %i.mc, align 8, !range !2099, !noundef !5
  %i.me = trunc nuw i32 %i.md to i1
  br i1 %i.me, label %bb.kh, label %bb.km

bb.kk:                                            ; preds = %bb.ki
  %.sroa.01141.0.copyload = load i64, ptr %.sroa.5138.0..sroa_idx, align 8
  %.sroa.41142.0..sroa.5138.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01095.sroa.7, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.41142.0..sroa.5138.0..sroa_idx.sroa_idx, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10, ptr noundef nonnull align 4 dereferenceable(12) %i.b, i64 12, i1 false)
  br label %bb.la

bb.kl:                                            ; preds = %bb.kx, %bb.ko
  %i.mf = landingpad { ptr, i32 }
          cleanup
  br label %.thread1011

bb.km:                                            ; preds = %bb.kj
  %.sroa.61107.0..sroa.5138.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 48 ; 3 uses
  %.sroa.61107.0.copyload = load i64, ptr %.sroa.61107.0..sroa.5138.0..sroa_idx.sroa_idx, align 8 ; 6 uses
  %.sroa.71111.0..sroa.5138.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 56 ; 3 uses
  %.sroa.71111.0.copyload = load ptr, ptr %.sroa.71111.0..sroa.5138.0..sroa_idx.sroa_idx, align 8 ; 5 uses
  %i.mg = icmp ult i64 %.sroa.61107.0.copyload, 72057594037927936
  call void @llvm.assume(i1 %i.mg)
  %.not.i = icmp ne ptr %.sroa.71111.0.copyload, null
  %..i = zext i1 %.not.i to i64
  %i.mh = add nuw nsw i64 %.sroa.61107.0.copyload, %..i
  %i.mi = icmp samesign ugt i64 %i.mh, 1
  br i1 %i.mi, label %bb.lv, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %.not.i861 = icmp eq ptr %.sroa.71111.0.copyload, null
  %i.mj = icmp ne i64 %.sroa.61107.0.copyload, 0
  %spec.select.i = and i1 %i.mj, %.not.i861
  br i1 %spec.select.i, label %bb.lv, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.61125.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.61125.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.71128.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5138.0..sroa_idx, i64 16, i1 false)
  %.sroa.61107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store i64 %.sroa.61107.0.copyload, ptr %.sroa.61107.0..sroa_idx, align 8
  %.sroa.71111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store ptr %.sroa.71111.0.copyload, ptr %.sroa.71111.0..sroa_idx, align 8
  invoke void @_RNvXs4_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_10PunctuatedNtNtB7_8generics14TypeParamBoundNtNtB7_5token4PlusENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12IntoIterator9into_iterB7_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bd, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.bc)
          to label %bb.kp unwind label %bb.kl

bb.kp:                                            ; preds = %bb.ko
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  invoke void @_RNvXsj_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_8IntoIterNtNtB7_8generics14TypeParamBoundENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(address) dereferenceable(120) %i.be, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bd)
          to label %bb.kr unwind label %bb.kq

bb.kq:                                            ; preds = %bb.kt, %bb.kp
  %i.mk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsgbWeKYPjk8w_3syn8generics14TypeParamBoundENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bd)
          to label %.thread1011 unwind label %bb.ec

bb.kr:                                            ; preds = %bb.kp
  %i.ml = load i64, ptr %i.be, align 8, !range !2047, !noundef !5 ; 3 uses
  %.not749 = icmp eq i64 %i.ml, -1
  br i1 %.not749, label %bb.kt, label %bb.ks, !prof !1901

bb.ks:                                            ; preds = %bb.kr
  %.sroa.61125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.61125.sroa.0, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.61125.0..sroa_idx, i64 40, i1 false)
  %.sroa.61125.sroa.5.0..sroa.61125.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  %.sroa.61125.sroa.5.0.copyload = load i64, ptr %.sroa.61125.sroa.5.0..sroa.61125.0..sroa_idx.sroa_idx, align 8
  %.sroa.61125.sroa.7.0..sroa.61125.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.61125.sroa.7, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.61125.sroa.7.0..sroa.61125.0..sroa_idx.sroa_idx, i64 40, i1 false)
  %.sroa.71128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 96
  %.sroa.71128.sroa.0.0.copyload = load i32, ptr %.sroa.71128.0..sroa_idx, align 8
  %.sroa.71128.sroa.4.0..sroa.71128.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.71128.sroa.4, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.71128.sroa.4.0..sroa.71128.0..sroa_idx.sroa_idx, i64 12, i1 false)
  %.sroa.71130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 112
  %.sroa.71130.0.copyload = load i64, ptr %.sroa.71130.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  %i.mm = icmp sgt i64 %i.ml, -1
  br i1 %i.mm, label %bb.kv, label %bb.kw

bb.kt:                                            ; preds = %bb.kr
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #24
          to label %bb.ku unwind label %bb.kq

bb.ku:                                            ; preds = %bb.qe, %bb.kt
  unreachable

bb.kv:                                            ; preds = %bb.ks
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.61125.sroa.7, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01095.sroa.7, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.61125.sroa.0, i64 40, i1 false)
  br label %bb.kx

bb.kw:                                            ; preds = %bb.ks
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01095.sroa.7, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.61125.sroa.0, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.61125.sroa.7, i64 40, i1 false)
  br label %bb.kx

bb.kx:                                            ; preds = %bb.kv, %bb.kw
  %.sink1209 = phi ptr [ %i.b, %bb.kv ], [ %.sroa.71128.sroa.4, %bb.kw ]
  %.sroa.81100.0 = phi i32 [ 1, %bb.kv ], [ %.sroa.71128.sroa.0.0.copyload, %bb.kw ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10, ptr noundef nonnull align 4 dereferenceable(12) %.sink1209, i64 12, i1 false)
  invoke void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsgbWeKYPjk8w_3syn8generics14TypeParamBoundENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bd)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated8IntoIterNtNtBG_8generics14TypeParamBoundEEBG_.exit864 unwind label %bb.kl

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated8IntoIterNtNtBG_8generics14TypeParamBoundEEBG_.exit864: ; preds = %bb.kx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.61125.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.61125.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.71128.sroa.4)
  br label %bb.la

bb.ky:                                            ; preds = %bb.lb, %bb.kz
  %.pn754 = phi { ptr, i32 } [ %i.mn, %bb.kz ], [ %lpad.phi1062, %bb.lb ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bb) #20
          to label %.thread1011 unwind label %bb.ec

bb.kz:                                            ; preds = %bb.lo
  %i.mn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ky

bb.la:                                            ; preds = %bb.kk, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated8IntoIterNtNtBG_8generics14TypeParamBoundEEBG_.exit864
  %.sroa.12.1 = phi i64 [ 0, %bb.kk ], [ %.sroa.71130.0.copyload, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated8IntoIterNtNtBG_8generics14TypeParamBoundEEBG_.exit864 ]
  %.sroa.81100.1 = phi i32 [ 1, %bb.kk ], [ %.sroa.81100.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated8IntoIterNtNtBG_8generics14TypeParamBoundEEBG_.exit864 ]
  %.sroa.7.1 = phi i64 [ -1, %bb.kk ], [ %.sroa.61125.sroa.5.0.copyload, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated8IntoIterNtNtBG_8generics14TypeParamBoundEEBG_.exit864 ]
  %.sroa.01095.sroa.0.1 = phi i64 [ %.sroa.01141.0.copyload, %bb.kk ], [ %i.ml, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated8IntoIterNtNtBG_8generics14TypeParamBoundEEBG_.exit864 ]
  %.sroa.0506.2 = phi i1 [ false, %bb.kk ], [ true, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated8IntoIterNtNtBG_8generics14TypeParamBoundEEBG_.exit864 ] ; 2 uses
  %.sroa.0507.2 = phi i1 [ true, %bb.kk ], [ false, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated8IntoIterNtNtBG_8generics14TypeParamBoundEEBG_.exit864 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  store i64 0, ptr %i.bb, align 8
  %i.mo = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.mo, align 8
  %i.mp = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 0, ptr %i.mp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  store i64 0, ptr %i.ba, align 8, !alias.scope !2100
  %.sroa.4.0..sroa_idx.i859 = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i859, align 8, !alias.scope !2100
  %.sroa.5.0..sroa_idx.i860 = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i860, i8 0, i64 16, i1 false), !alias.scope !2100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  store i64 %.sroa.01095.sroa.0.1, ptr %i.az, align 8
  %.sroa.01095.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01095.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01095.sroa.7, i64 40, i1 false)
  %.sroa.7.0..sroa_idx1096 = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  store i64 %.sroa.7.1, ptr %.sroa.7.0..sroa_idx1096, align 8
  %.sroa.8.0..sroa_idx1099 = getelementptr inbounds nuw i8, ptr %i.az, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.0..sroa_idx1099, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, i64 40, i1 false)
  %.sroa.81100.0..sroa_idx1101 = getelementptr inbounds nuw i8, ptr %i.az, i64 96
  store i32 %.sroa.81100.1, ptr %.sroa.81100.0..sroa_idx1101, align 8
  %.sroa.10.0..sroa_idx1103 = getelementptr inbounds nuw i8, ptr %i.az, i64 100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10.0..sroa_idx1103, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10, i64 12, i1 false)
  %.sroa.12.0..sroa_idx1104 = getelementptr inbounds nuw i8, ptr %i.az, i64 112
  store i64 %.sroa.12.1, ptr %.sroa.12.0..sroa_idx1104, align 8
  invoke void @_RNvMNtCsgbWeKYPjk8w_3syn10punctuatedINtB2_10PunctuatedNtNtB4_8generics14TypeParamBoundNtNtB4_5token4PlusE10push_valueB4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(120) %i.az)
          to label %bb.lc unwind label %.loopexit.split-lp1059

.loopexit1058:                                    ; preds = %bb.ld, %bb.lh, %bb.lj, %bb.lm
  %lpad.loopexit1060 = landingpad { ptr, i32 }
          cleanup
  br label %bb.lb

.loopexit.split-lp1059:                           ; preds = %bb.la
  %lpad.loopexit.split-lp1061 = landingpad { ptr, i32 }
          cleanup
  br label %bb.lb

bb.lb:                                            ; preds = %.loopexit.split-lp1059, %.loopexit1058
  %lpad.phi1062 = phi { ptr, i32 } [ %lpad.loopexit1060, %.loopexit1058 ], [ %lpad.loopexit.split-lp1061, %.loopexit.split-lp1059 ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_8generics14TypeParamBoundNtNtBG_5token4PlusEEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ba) #20
          to label %bb.ky unwind label %bb.ec

bb.lc:                                            ; preds = %bb.la
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  %i.mq = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.4579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.5580.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %.sroa.6228.0..sroa_idx229 = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.8230.0..sroa_idx231 = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  br label %bb.ld

bb.ld:                                            ; preds = %bb.ln, %bb.lc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB8_5token4PlusEEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ay, ptr noundef nonnull align 8 %1)
          to label %bb.le unwind label %.loopexit1058

bb.le:                                            ; preds = %bb.ld
  %i.mr = load i64, ptr %i.ay, align 8, !range !60, !noundef !5 ; 2 uses
  %.not753 = icmp eq i64 %i.mr, -1
  %.sroa.0568.0.copyload = load i64, ptr %i.mq, align 8 ; 3 uses
  br i1 %.not753, label %bb.lg, label %bb.lf

bb.lf:                                            ; preds = %bb.le
  %.sroa.5574.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %.sroa.5574.0.copyload = load i64, ptr %.sroa.5574.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.mr, ptr %i.ms, align 8
  %.sroa.4576.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0568.0.copyload, ptr %.sroa.4576.0..sroa_idx, align 8
  %.sroa.5577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.5574.0.copyload, ptr %.sroa.5577.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.lo

bb.lg:                                            ; preds = %bb.le
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  %i.mt = trunc i64 %.sroa.0568.0.copyload to i1
  br i1 %i.mt, label %bb.lh, label %bb.li

bb.lh:                                            ; preds = %bb.lg
  %.sroa.2224.0.extract.shift = lshr i64 %.sroa.0568.0.copyload, 32
  %.sroa.2224.0.extract.trunc = trunc nuw i64 %.sroa.2224.0.extract.shift to i32
  invoke void @_RNvMNtCsgbWeKYPjk8w_3syn10punctuatedINtB2_10PunctuatedNtNtB4_8generics14TypeParamBoundNtNtB4_5token4PlusE10push_punctB4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ba, i32 noundef %.sroa.2224.0.extract.trunc)
          to label %bb.lj unwind label %.loopexit1058

bb.li:                                            ; preds = %bb.lg
  %.sroa.0208.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0208, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0208.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0208, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  store i64 14, ptr %0, align 8
  %.sroa.5206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5206.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0208, i64 56, i1 false)
  %.sroa.5206.sroa.5.0..sroa.5206.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %.sroa.5206.sroa.5.0..sroa.5206.0..sroa_idx.sroa_idx, align 8
  br label %bb.lp

bb.lj:                                            ; preds = %bb.lh
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6228)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  invoke void @_RNvMs5_NtNtCsgbWeKYPjk8w_3syn8generics7parsingNtB7_14TypeParamBound12parse_single(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.ax, ptr noundef nonnull align 8 %1, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.lk unwind label %.loopexit1058

bb.lk:                                            ; preds = %bb.lj
  %i.mu = load i64, ptr %i.ax, align 8, !range !2047, !noundef !5 ; 2 uses
  %i.mv = icmp eq i64 %i.mu, -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6228, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4579.0..sroa_idx, i64 24, i1 false)
  br i1 %i.mv, label %bb.ll, label %bb.lm

bb.ll:                                            ; preds = %bb.lk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mw, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6228, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6228)
  br label %bb.lo

bb.lm:                                            ; preds = %bb.lk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.8230.0..sroa_idx231, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5580.0..sroa_idx, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  store i64 %i.mu, ptr %i.aw, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6228.0..sroa_idx229, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6228, i64 24, i1 false)
  invoke void @_RNvMNtCsgbWeKYPjk8w_3syn10punctuatedINtB2_10PunctuatedNtNtB4_8generics14TypeParamBoundNtNtB4_5token4PlusE10push_valueB4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(120) %i.aw)
          to label %bb.ln unwind label %.loopexit1058

bb.ln:                                            ; preds = %bb.lm
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6228)
  br label %bb.ld

bb.lo:                                            ; preds = %bb.ll, %bb.lf
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_8generics14TypeParamBoundNtNtBG_5token4PlusEEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ba)
          to label %bb.lq unwind label %bb.kz

bb.lp:                                            ; preds = %bb.ls, %bb.li
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01095.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  br label %bb.lt

bb.lq:                                            ; preds = %bb.lo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bb)
          to label %bb.ls unwind label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.mx = landingpad { ptr, i32 }
          cleanup
  br label %.thread1011

bb.ls:                                            ; preds = %bb.lq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  br label %bb.lp

bb.lt:                                            ; preds = %._crit_edge, %bb.mv, %bb.lp
  br i1 %i.lo, label %bb.mw, label %bb.mx

bb.lu:                                            ; preds = %bb.lv
  store i64 14, ptr %i.bo, align 8
  store i64 0, ptr %.sroa.4137.0..sroa_idx, align 8
  %.sroa.5184.sroa.0.sroa.5.0..sroa.5184.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5184.sroa.0.sroa.5.0..sroa.5184.0..sroa_idx.sroa_idx, align 8
  %.sroa.5184.sroa.0.sroa.6.0..sroa.5184.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store i64 0, ptr %.sroa.5184.sroa.0.sroa.6.0..sroa.5184.0..sroa_idx.sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5138.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5184.sroa.0.sroa.7.sroa.0, i64 16, i1 false)
  store i64 %.sroa.61107.0.copyload, ptr %.sroa.61107.0..sroa.5138.0..sroa_idx.sroa_idx, align 8
  store ptr %.sroa.71111.0.copyload, ptr %.sroa.71111.0..sroa.5138.0..sroa_idx.sroa_idx, align 8
  store i32 0, ptr %i.mc, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5184.sroa.0.sroa.7.sroa.0)
  br label %bb.kh

bb.lv:                                            ; preds = %bb.km, %bb.kn
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5184.sroa.0.sroa.7.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5184.sroa.0.sroa.7.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5138.0..sroa_idx, i64 16, i1 false)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %.sroa.4137.0..sroa_idx)
          to label %bb.lu unwind label %bb.lw

bb.lw:                                            ; preds = %bb.lv
  %i.my = landingpad { ptr, i32 }
          cleanup
  store i64 14, ptr %i.bo, align 8
  store i64 0, ptr %.sroa.4137.0..sroa_idx, align 8
  %.sroa.5184.sroa.0.sroa.5.0..sroa.5184.0..sroa_idx185.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5184.sroa.0.sroa.5.0..sroa.5184.0..sroa_idx185.sroa_idx, align 8
  %.sroa.5184.sroa.0.sroa.6.0..sroa.5184.0..sroa_idx185.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store i64 0, ptr %.sroa.5184.sroa.0.sroa.6.0..sroa.5184.0..sroa_idx185.sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5138.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5184.sroa.0.sroa.7.sroa.0, i64 16, i1 false)
  store i64 %.sroa.61107.0.copyload, ptr %.sroa.61107.0..sroa.5138.0..sroa_idx.sroa_idx, align 8
  store ptr %.sroa.71111.0.copyload, ptr %.sroa.71111.0..sroa.5138.0..sroa_idx.sroa_idx, align 8
  store i32 0, ptr %i.mc, align 8
  br label %.thread1011

.body783:                                         ; preds = %bb.kc
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.av) #20
          to label %.thread999 unwind label %bb.ec

bb.lx:                                            ; preds = %bb.kb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.lr, ptr noundef nonnull align 8 dereferenceable(248) %i.au, i64 248, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  %.sroa.4233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4233.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false)
  %.sroa.4233.sroa.5.0..sroa.4233.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.4233.sroa.5.0..sroa.4233.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %i.b, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  store i64 9, ptr %0, align 8
  %.sroa.4233.sroa.4.0..sroa.4233.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.lr, ptr %.sroa.4233.sroa.4.0..sroa.4233.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ca)
          to label %bb.ly unwind label %.thread971.loopexit.split-lp

bb.ly:                                            ; preds = %bb.lx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  br label %.invoke

bb.lz:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit877, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit889, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit843
  ret void

bb.ma:                                            ; preds = %bb.md, %bb.mb
  %.pn760 = phi { ptr, i32 } [ %i.mz, %bb.mb ], [ %lpad.phi1057, %bb.md ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bl) #20
          to label %.thread999 unwind label %bb.ec

bb.mb:                                            ; preds = %bb.mt
  %i.mz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ma

bb.mc:                                            ; preds = %bb.jz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  store i64 0, ptr %i.bl, align 8
  %i.na = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.na, align 8
  %i.nb = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store i64 0, ptr %i.nb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  store i64 0, ptr %i.bk, align 8, !alias.scope !2103
  %.sroa.4.0..sroa_idx.i857 = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i857, align 8, !alias.scope !2103
  %.sroa.5.0..sroa_idx.i858 = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i858, i8 0, i64 16, i1 false), !alias.scope !2103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.bj, ptr noundef nonnull align 8 dereferenceable(248) %i.bo, i64 248, i1 false)
  invoke void @_RNvMNtCsgbWeKYPjk8w_3syn10punctuatedINtB2_10PunctuatedNtNtB4_2ty4TypeNtNtB4_5token5CommaE10push_valueB4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bk, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(248) %i.bj)
          to label %bb.me unwind label %.loopexit.split-lp1054

.loopexit1053:                                    ; preds = %bb.mj, %bb.mm, %bb.mo, %bb.mr
  %lpad.loopexit1055 = landingpad { ptr, i32 }
          cleanup
  br label %bb.md

.loopexit.split-lp1054:                           ; preds = %bb.mc, %bb.me, %bb.mh
  %lpad.loopexit.split-lp1056 = landingpad { ptr, i32 }
          cleanup
  br label %bb.md

bb.md:                                            ; preds = %.loopexit.split-lp1054, %.loopexit1053
  %lpad.phi1057 = phi { ptr, i32 } [ %lpad.loopexit1055, %.loopexit1053 ], [ %lpad.loopexit.split-lp1056, %.loopexit.split-lp1054 ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_2ty4TypeNtNtBG_5token5CommaEEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.bk) #20
          to label %bb.ma unwind label %bb.ec

bb.me:                                            ; preds = %bb.mc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token5CommaEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bi, ptr noundef nonnull align 8 %i.ca)
          to label %bb.mf unwind label %.loopexit.split-lp1054

bb.mf:                                            ; preds = %bb.me
  %i.nc = load i64, ptr %i.bi, align 8, !range !60, !noundef !5 ; 2 uses
  %.not758 = icmp eq i64 %i.nc, -1
  %i.nd = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.0545.0.copyload = load i32, ptr %i.nd, align 8 ; 2 uses
  br i1 %.not758, label %bb.mh, label %bb.mg

bb.mg:                                            ; preds = %bb.mf
  %.sroa.5551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  %.sroa.5554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5554.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5551.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.nc, ptr %i.ne, align 8
  %.sroa.4553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.0545.0.copyload, ptr %.sroa.4553.0..sroa_idx, align 8
end_hunk_2
begin_hunk_3_@_RNvNtNtCsgbWeKYPjk8w_3syn2ty7parsing8ambig_ty:bb.a
  %i.nz = getelementptr inbounds nuw i8, ptr %i.bo, i64 88
  %.val811 = load ptr, ptr %i.nz, align 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path5QSelfEEB11_(i32 %.val810, ptr %.val811)
          to label %bb.mw unwind label %.thread1007

bb.nc:                                            ; preds = %bb.mx
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %.sroa.4137.0..sroa_idx)
          to label %bb.mw unwind label %.thread1007

.thread1011:                                      ; preds = %bb.ky, %bb.lr, %bb.kl, %bb.lw, %bb.kq, %.thread1030
  %.pn7621018 = phi { ptr, i32 } [ %lpad.thr_comm1028, %.thread1030 ], [ %i.mk, %bb.kq ], [ %i.my, %bb.lw ], [ %i.mf, %bb.kl ], [ %i.mx, %bb.lr ], [ %.pn754, %bb.ky ] ; 5 uses
  %.sroa.0507.01017 = phi i1 [ true, %.thread1030 ], [ false, %bb.kq ], [ true, %bb.lw ], [ false, %bb.kl ], [ %.sroa.0507.2, %bb.lr ], [ %.sroa.0507.2, %bb.ky ]
  %.sroa.0506.01016 = phi i1 [ true, %.thread1030 ], [ true, %bb.kq ], [ true, %bb.lw ], [ true, %bb.kl ], [ %.sroa.0506.2, %bb.lr ], [ %.sroa.0506.2, %bb.ky ]
  %i.oa = load i64, ptr %i.bo, align 8, !range !685, !noundef !5 ; 3 uses
  %i.ob = icmp ne i64 %i.oa, 3
  call void @llvm.assume(i1 %i.ob)
  %i.oc = add nsw i64 %i.oa, -2
  %i.od = icmp samesign ugt i64 %i.oa, 1
  %i.oe = select i1 %i.od, i64 %i.oc, i64 1
  switch i64 %i.oe, label %bb.nd [
    i64 8, label %bb.ne
    i64 12, label %bb.nj
  ]

bb.nd:                                            ; preds = %.thread1011
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty4TypeEBF_(ptr noalias nofree noundef align 8 dereferenceable(248) %i.bo) #20
          to label %.thread999 unwind label %bb.ec

bb.ne:                                            ; preds = %.thread1011
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %.sroa.4137.0..sroa_idx) #20
          to label %bb.ng unwind label %bb.ec

bb.nf:                                            ; preds = %bb.ng
  br i1 %.sroa.0506.01016, label %bb.nh, label %.thread999

bb.ng:                                            ; preds = %bb.ne
  %i.of = getelementptr inbounds nuw i8, ptr %i.bo, i64 80
  %.val806 = load i32, ptr %i.of, align 8, !range !805, !noundef !5
  %i.og = getelementptr inbounds nuw i8, ptr %i.bo, i64 88
  %.val807 = load ptr, ptr %i.og, align 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path5QSelfEEB11_(i32 %.val806, ptr %.val807) #20
          to label %bb.nf unwind label %bb.ec

bb.nh:                                            ; preds = %bb.nf
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4path4PathEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.5138.0..sroa_idx) #20
          to label %.thread999 unwind label %bb.ec

bb.ni:                                            ; preds = %bb.nj
  br i1 %.sroa.0507.01017, label %bb.nk, label %.thread999

bb.nj:                                            ; preds = %.thread1011
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %.sroa.4137.0..sroa_idx) #20
          to label %bb.ni unwind label %bb.ec

bb.nk:                                            ; preds = %bb.ni
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_8generics14TypeParamBoundNtNtBG_5token4PlusEEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %.sroa.5138.0..sroa_idx) #20
          to label %.thread999 unwind label %bb.ec

bb.nl:                                            ; preds = %bb.pg, %bb.pe, %bb.jw
  invoke void @_RNvXNtCsgbWeKYPjk8w_3syn5parseNtB2_11ParseBufferNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ca)
          to label %bb.np unwind label %bb.nm

bb.nm:                                            ; preds = %bb.nl
  %i.oh = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2106)
  call void @llvm.experimental.noalias.scope.decl(metadata !2109)
  call void @llvm.experimental.noalias.scope.decl(metadata !2112)
  %i.oj = load ptr, ptr %i.oi, align 8, !alias.scope !2115, !noundef !5 ; 3 uses
  %i.ok = icmp eq ptr %i.oj, null
  br i1 %i.ok, label %.thread966, label %bb.nn

bb.nn:                                            ; preds = %bb.nm
  %i.ol = load i64, ptr %i.oj, align 8, !noalias !2118, !noundef !5
  %i.om = add i64 %i.ol, -1                       ; 2 uses
  store i64 %i.om, ptr %i.oj, align 8, !noalias !2118
  %i.on = icmp eq i64 %i.om, 0
  br i1 %i.on, label %bb.no, label %.thread966

bb.no:                                            ; preds = %bb.nn
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.oi) #23
          to label %.thread966 unwind label %bb.ns

bb.np:                                            ; preds = %bb.nl
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2123)
  call void @llvm.experimental.noalias.scope.decl(metadata !2126)
  call void @llvm.experimental.noalias.scope.decl(metadata !2129)
  %i.op = load ptr, ptr %i.oo, align 8, !alias.scope !2132, !noundef !5 ; 3 uses
  %i.oq = icmp eq ptr %i.op, null
  br i1 %i.oq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit, label %bb.nq

bb.nq:                                            ; preds = %bb.np
  %i.or = load i64, ptr %i.op, align 8, !noalias !2133, !noundef !5
  %i.os = add i64 %i.or, -1                       ; 2 uses
  store i64 %i.os, ptr %i.op, align 8, !noalias !2133
  %i.ot = icmp eq i64 %i.os, 0
  br i1 %i.ot, label %bb.nr, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit

bb.nr:                                            ; preds = %bb.nq
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.oo) #23
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit unwind label %.thread971.loopexit.split-lp

bb.ns:                                            ; preds = %bb.no
  %i.ou = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.nt:                                            ; preds = %bb.nw, %bb.nu
  %.pn765 = phi { ptr, i32 } [ %i.ov, %bb.nu ], [ %lpad.phi, %bb.nw ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bv) #20
          to label %.thread999 unwind label %bb.ec

bb.nu:                                            ; preds = %bb.om
  %i.ov = landingpad { ptr, i32 }
          cleanup
  br label %bb.nt

bb.nv:                                            ; preds = %bb.jt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  store i64 0, ptr %i.bv, align 8
  %i.ow = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ow, align 8
  %i.ox = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store i64 0, ptr %i.ox, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  store i64 0, ptr %i.bu, align 8, !alias.scope !2138
  %.sroa.4.0..sroa_idx.i855 = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i855, align 8, !alias.scope !2138
  %.sroa.5.0..sroa_idx.i856 = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i856, i8 0, i64 16, i1 false), !alias.scope !2138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6105)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8107)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_8generics10TraitBoundEB8_(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(address) dereferenceable(120) %i.bs, ptr noundef nonnull align 8 %i.ca)
          to label %bb.nx unwind label %.loopexit.split-lp

.loopexit:                                        ; preds = %bb.ob, %bb.of, %bb.oh, %bb.ok
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.nw

.loopexit.split-lp:                               ; preds = %bb.nv, %bb.nz
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.nw

bb.nw:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_8generics14TypeParamBoundNtNtBG_5token4PlusEEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.bu) #20
          to label %bb.nt unwind label %bb.ec

bb.nx:                                            ; preds = %bb.nv
  %i.oy = load i64, ptr %i.bs, align 8, !range !60, !noundef !5 ; 2 uses
  %i.oz = icmp eq i64 %i.oy, -1
  %i.pa = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6105, ptr noundef nonnull align 8 dereferenceable(24) %i.pa, i64 24, i1 false)
  br i1 %i.oz, label %bb.ny, label %bb.nz

bb.ny:                                            ; preds = %bb.nx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.pb, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6105, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6105)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8107)
  br label %bb.om

bb.nz:                                            ; preds = %bb.nx
  %.sroa.5526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.8107, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5526.0..sroa_idx, i64 64, i1 false)
  %.sroa.7528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 112
  %.sroa.7528.0.copyload = load i64, ptr %.sroa.7528.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  %.sroa.8107.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.8107, i64 16
  %.sroa.099.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.099.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.8107.48..sroa_idx, i64 48, i1 false)
  %.sroa.099.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.099.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6105, i64 24, i1 false)
  %.sroa.099.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.099.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8107, i64 16, i1 false)
  %.sroa.7101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7101.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %i.b, i64 12, i1 false)
  store i64 %i.oy, ptr %i.bt, align 8
  %.sroa.6100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 96
  store i32 1, ptr %.sroa.6100.0..sroa_idx, align 8
  %.sroa.8102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 112
  store i64 %.sroa.7528.0.copyload, ptr %.sroa.8102.0..sroa_idx, align 8
  invoke void @_RNvMNtCsgbWeKYPjk8w_3syn10punctuatedINtB2_10PunctuatedNtNtB4_8generics14TypeParamBoundNtNtB4_5token4PlusE10push_valueB4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bu, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(120) %i.bt)
          to label %bb.oa unwind label %.loopexit.split-lp

bb.oa:                                            ; preds = %bb.nz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6105)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8107)
  %i.pc = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.sroa.4540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.sroa.5541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %.sroa.6126.0..sroa_idx127 = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.sroa.8128.0..sroa_idx129 = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  br label %bb.ob

bb.ob:                                            ; preds = %bb.ol, %bb.oa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB8_5token4PlusEEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.br, ptr noundef nonnull align 8 %1)
          to label %bb.oc unwind label %.loopexit

bb.oc:                                            ; preds = %bb.ob
  %i.pd = load i64, ptr %i.br, align 8, !range !60, !noundef !5 ; 2 uses
  %.not764 = icmp eq i64 %i.pd, -1
  %.sroa.0529.0.copyload = load i64, ptr %i.pc, align 8 ; 3 uses
  br i1 %.not764, label %bb.oe, label %bb.od

bb.od:                                            ; preds = %bb.oc
  %.sroa.5535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %.sroa.5535.0.copyload = load i64, ptr %.sroa.5535.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.pd, ptr %i.pe, align 8
  %.sroa.4537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0529.0.copyload, ptr %.sroa.4537.0..sroa_idx, align 8
  %.sroa.5538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.5535.0.copyload, ptr %.sroa.5538.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.om

bb.oe:                                            ; preds = %bb.oc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  %i.pf = trunc i64 %.sroa.0529.0.copyload to i1
  br i1 %i.pf, label %bb.of, label %bb.og

bb.of:                                            ; preds = %bb.oe
  %.sroa.2122.0.extract.shift = lshr i64 %.sroa.0529.0.copyload, 32
  %.sroa.2122.0.extract.trunc = trunc nuw i64 %.sroa.2122.0.extract.shift to i32
  invoke void @_RNvMNtCsgbWeKYPjk8w_3syn10punctuatedINtB2_10PunctuatedNtNtB4_8generics14TypeParamBoundNtNtB4_5token4PlusE10push_punctB4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bu, i32 noundef %.sroa.2122.0.extract.trunc)
          to label %bb.oh unwind label %.loopexit

bb.og:                                            ; preds = %bb.oe
  %.sroa.094.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.094, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.094.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.bu, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.094, ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  store i64 14, ptr %0, align 8
  %.sroa.592.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.592.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.094, i64 56, i1 false)
  %.sroa.592.sroa.5.0..sroa.592.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %.sroa.592.sroa.5.0..sroa.592.0..sroa_idx.sroa_idx, align 8
  br label %bb.oq

bb.oh:                                            ; preds = %bb.of
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6126)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  invoke void @_RNvMs5_NtNtCsgbWeKYPjk8w_3syn8generics7parsingNtB7_14TypeParamBound12parse_single(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.bq, ptr noundef nonnull align 8 %1, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.oi unwind label %.loopexit

bb.oi:                                            ; preds = %bb.oh
  %i.pg = load i64, ptr %i.bq, align 8, !range !2047, !noundef !5 ; 2 uses
  %i.ph = icmp eq i64 %i.pg, -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6126, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4540.0..sroa_idx, i64 24, i1 false)
  br i1 %i.ph, label %bb.oj, label %bb.ok

bb.oj:                                            ; preds = %bb.oi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.pi, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6126, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6126)
  br label %bb.om

bb.ok:                                            ; preds = %bb.oi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.8128.0..sroa_idx129, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5541.0..sroa_idx, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  store i64 %i.pg, ptr %i.bp, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6126.0..sroa_idx127, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6126, i64 24, i1 false)
  invoke void @_RNvMNtCsgbWeKYPjk8w_3syn10punctuatedINtB2_10PunctuatedNtNtB4_8generics14TypeParamBoundNtNtB4_5token4PlusE10push_valueB4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bu, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(120) %i.bp)
          to label %bb.ol unwind label %.loopexit

bb.ol:                                            ; preds = %bb.ok
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6126)
  br label %bb.ob

bb.om:                                            ; preds = %bb.od, %bb.oj, %bb.ny
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_8generics14TypeParamBoundNtNtBG_5token4PlusEEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.bu)
          to label %bb.on unwind label %bb.nu

bb.on:                                            ; preds = %bb.om
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bv)
          to label %bb.oo unwind label %.thread1007

bb.oo:                                            ; preds = %bb.on
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  br label %bb.oq

bb.op:                                            ; preds = %bb.oq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  br label %bb.os

bb.oq:                                            ; preds = %bb.mw, %bb.oo, %bb.og
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ca)
          to label %bb.op unwind label %.thread971.loopexit.split-lp

bb.or:                                            ; preds = %bb.ow, %bb.ov
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  %i.pj = trunc nuw i8 %.sroa.0480.12 to i1
  %i.pk = load i64, ptr %i.cf, align 8, !range !60
  %i.pl = icmp ne i64 %i.pk, -1
  %or.cond1052.not = select i1 %i.pj, i1 %i.pl, i1 false
  br i1 %or.cond1052.not, label %bb.ph, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit877

bb.os:                                            ; preds = %bb.op, %bb.ja, %bb.ix, %bb.ht, %bb.iu, %bb.ip, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit
  %.sroa.0480.12 = phi i8 [ 1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit ], [ 1, %bb.op ], [ 1, %bb.ix ], [ 1, %bb.ja ], [ 1, %bb.ip ], [ 1, %bb.iu ], [ %.sroa.0480.8997, %bb.ht ] ; 3 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecReENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.pm)
          to label %bb.ov unwind label %bb.ot

bb.ot:                                            ; preds = %bb.os
  %i.pn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i868 = load i64, ptr %i.pm, align 8, !alias.scope !2141 ; 2 uses
  %i.po = icmp eq i64 %.val2.i.i.i.i868, 0
  br i1 %i.po, label %.body840, label %bb.ou

bb.ou:                                            ; preds = %bb.ot
  %.val3.i.i.i.i869 = load ptr, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !2152, !nonnull !5, !noundef !5
  %i.pp = shl nuw i64 %.val2.i.i.i.i868, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i869, i64 noundef %i.pp, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !2153
  br label %.body840

bb.ov:                                            ; preds = %bb.os
  %.val.i.i.i.i871 = load i64, ptr %i.pm, align 8, !alias.scope !2141 ; 2 uses
  %i.pq = icmp eq i64 %.val.i.i.i.i871, 0
  br i1 %i.pq, label %bb.or, label %bb.ow

bb.ow:                                            ; preds = %bb.ov
  %.val1.i.i.i.i872 = load ptr, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !2152, !nonnull !5, !noundef !5
  %i.pr = shl nuw i64 %.val.i.i.i.i871, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i872, i64 noundef %i.pr, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !2156
  br label %bb.or

bb.ox:                                            ; preds = %bb.js
  %i.ps = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.by) #20
          to label %.thread999 unwind label %bb.ec

bb.oy:                                            ; preds = %bb.js
  %i.pt = load i64, ptr %i.bw, align 8, !range !60, !noundef !5 ; 2 uses
  %i.pu = icmp eq i64 %i.pt, -1
  %i.pv = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.584, ptr noundef nonnull align 8 dereferenceable(24) %i.pv, i64 24, i1 false)
  br i1 %i.pu, label %bb.oz, label %bb.pa

bb.oz:                                            ; preds = %bb.oy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.pw, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.584, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.by)
          to label %bb.pf unwind label %.thread1007

bb.pa:                                            ; preds = %bb.oy
  %.sroa.5523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %.sroa.390.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.390.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5523.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  %.sroa.289.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.289.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.584, i64 24, i1 false)
  %i.px = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i64 %i.pt, ptr %i.px, align 8
  store i64 14, ptr %i.bx, align 8
  %i.py = invoke fastcc noundef ptr @_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit()
          to label %bb.pd unwind label %bb.pb     ; 2 uses

bb.pb:                                            ; preds = %bb.pa
  %i.pz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty4TypeEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(248) %i.bx) #20
          to label %.body unwind label %bb.pc

bb.pc:                                            ; preds = %bb.pb
  %i.qa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21
  unreachable

.body:                                            ; preds = %bb.pb
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.by) #20
          to label %.thread999 unwind label %bb.ec

bb.pd:                                            ; preds = %bb.pa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.py, ptr noundef nonnull align 8 dereferenceable(248) %i.bx, i64 248, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  %.sroa.576.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.576.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.by, i64 24, i1 false)
  %.sroa.576.sroa.6.0..sroa.576.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.576.sroa.6.0..sroa.576.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %i.b, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  store i64 9, ptr %0, align 8
  %.sroa.576.sroa.5.0..sroa.576.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.py, ptr %.sroa.576.sroa.5.0..sroa.576.0..sroa_idx.sroa_idx, align 8
  br label %bb.pe

bb.pe:                                            ; preds = %bb.pf, %bb.pd
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.584)
  br label %bb.nl

bb.pf:                                            ; preds = %bb.oz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  br label %bb.pe

bb.pg:                                            ; preds = %bb.jo
  %.sroa.473.sroa.6.0..sroa.473.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.473.sroa.6.0..sroa.473.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.473.sroa.7.0..sroa.473.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.473.sroa.7.0..sroa.473.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %i.b, i64 12, i1 false)
  store i64 15, ptr %0, align 8
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.473.0..sroa_idx, align 8
  %.sroa.473.sroa.0.sroa.4.0..sroa.473.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.473.sroa.0.sroa.4.0..sroa.473.0..sroa_idx.sroa_idx, align 8
  %.sroa.473.sroa.0.sroa.5.0..sroa.473.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.473.sroa.5.0..sroa.473.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.473.sroa.0.sroa.5.0..sroa.473.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.473.sroa.5.0..sroa.473.0..sroa_idx.sroa_idx, align 8
  br label %bb.nl

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit: ; preds = %bb.nq, %bb.np, %bb.nr, %bb.jn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  br label %bb.os

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit877: ; preds = %bb.ph, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn9lookahead10Lookahead1EBF_.exit852, %bb.or
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
end_hunk_3

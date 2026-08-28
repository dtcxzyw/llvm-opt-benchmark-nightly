Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/syn-rs/original/syn-2b0ecb81dd371323.syn.bc9ad91376fc82fa-cgu.04?download=true
inline.NumInlined: 577
inline.NumDeleted: 192
begin_hunk_0_@_RNvMs1_NtNtCsgbWeKYPjk8w_3syn4data7parsingNtB7_5Field11parse_named:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4callINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB8_4attr9AttributeEEB8_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noundef nonnull align 8 %1, ptr noundef nonnull @_RNvMNtCsgbWeKYPjk8w_3syn4attrNtB2_9Attribute11parse_outer)
  %i.j = load i64, ptr %i.h, align 8, !range !530, !noundef !5
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.ae

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10107)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_11restriction10VisibilityEB8_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.g, ptr noundef nonnull align 8 %1)
          to label %bb.e unwind label %bb.d

.body:                                            ; preds = %bb.d, %bb.al, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit
  %.pn97 = phi { ptr, i32 } [ %.pn95, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit ], [ %i.n, %bb.d ], [ %i.av, %bb.al ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #20
          to label %common.resume unwind label %bb.ah

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c
  %i.o = load i32, ptr %i.g, align 8, !range !981, !noundef !5 ; 5 uses
  %i.p = icmp eq i32 %i.o, -1
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.0154.0.copyload = load ptr, ptr %i.q, align 8
  %.sroa.4155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4155.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.sroa.4157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4157.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.8, i64 16, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0154.0.copyload, ptr %i.r, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.8)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn11restriction10VisibilityEBF_.exit

bb.g:                                             ; preds = %bb.e
  %.sroa.464.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %.sroa.464.sroa.0.0.copyload = load i32, ptr %.sroa.464.0..sroa_idx.a, align 4
  %.sroa.464.sroa.4.0..sroa.464.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.464.sroa.4.0.copyload = load ptr, ptr %.sroa.464.sroa.4.0..sroa.464.0..sroa_idx.sroa_idx, align 8 ; 6 uses
  %.sroa.464.sroa.5.0..sroa.464.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.464.sroa.5.0..sroa.464.0..sroa_idx.sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10107, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.8, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.57.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtCs6et67aoV1xO_11proc_macro25IdentEB8_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noundef nonnull align 8 %1)
          to label %bb.i unwind label %bb.h

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit: ; preds = %bb.m, %bb.l, %bb.h
  %.pn95 = phi { ptr, i32 } [ %i.s, %bb.h ], [ %.pn, %bb.l ], [ %.pn, %bb.m ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn11restriction10VisibilityEBF_(i32 %i.o, ptr %.sroa.464.sroa.4.0.copyload) #20
          to label %.body unwind label %bb.ah

bb.h:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit

bb.i:                                             ; preds = %bb.g
  %i.t = load i64, ptr %i.f, align 8, !range !530, !noundef !5
  %i.u = trunc nuw i64 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.4167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.5168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.6169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 25
  %.sroa.0166.0.copyload = load ptr, ptr %i.v, align 8 ; 6 uses
  %.sroa.4167.0.copyload = load i64, ptr %.sroa.4167.0..sroa_idx, align 8 ; 6 uses
  %.sroa.5168.0.copyload = load i8, ptr %.sroa.5168.0..sroa_idx, align 8 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.57.sroa.9, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6169.0..sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %i.u, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.sroa.6173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6173.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.57.sroa.9, i64 7, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0166.0.copyload, ptr %i.w, align 8
  %.sroa.4171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4167.0.copyload, ptr %.sroa.4171.0..sroa_idx, align 8
  %.sroa.5172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sroa.5168.0.copyload, ptr %.sroa.5172.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.57.sroa.9)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit104

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.57.sroa.9, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.57.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token5ColonEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noundef nonnull align 8 %1)
          to label %bb.o unwind label %bb.n

bb.l:                                             ; preds = %bb.u, %bb.n
  %.pn = phi { ptr, i32 } [ %i.z, %bb.n ], [ %i.ai, %bb.u ] ; 2 uses
  %i.x = icmp eq i8 %.sroa.5168.0.copyload, 2
  %i.y = icmp eq i64 %.sroa.4167.0.copyload, 0
  %or.cond = select i1 %i.x, i1 true, i1 %i.y
  br i1 %or.cond, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0166.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0166.0.copyload, i64 noundef range(i64 1, 0) %.sroa.4167.0.copyload, i64 noundef 1) #18, !noalias !982
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit

bb.n:                                             ; preds = %bb.af, %bb.q, %bb.k
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.o:                                             ; preds = %bb.k
  %i.aa = load i64, ptr %i.e, align 8, !range !4, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.aa, -1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.065.0.copyload = load i32, ptr %i.ab, align 8 ; 2 uses
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.sroa.571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %.sroa.574.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.574.0..sroa_idx.a, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.571.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aa, ptr %i.ac, align 8
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.065.0.copyload, ptr %.sroa.473.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ai

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.621)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_2ty4TypeEB8_(ptr noalias nofree noundef nonnull sret([248 x i8]) align 8 captures(address) dereferenceable(248) %i.c, ptr noundef nonnull align 8 %1)
          to label %bb.r unwind label %bb.n

bb.r:                                             ; preds = %bb.q
  %i.ad = load i64, ptr %i.c, align 8, !range !929, !noundef !5 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, -1
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.621, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false)
  br i1 %i.ae, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.621, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.621)
  br label %bb.ag

bb.t:                                             ; preds = %bb.r
  %.sroa.577.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.527.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.577.0..sroa_idx.a, i64 216, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.426.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.621, i64 24, i1 false)
  store i64 %i.ad, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.621)
  %i.ah = invoke noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token2EqNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %1)
          to label %bb.v unwind label %bb.u

bb.u:                                             ; preds = %bb.aa, %bb.w, %bb.t
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty4TypeEBF_(ptr noalias nofree noundef align 8 dereferenceable(248) %i.d) #20
          to label %bb.l unwind label %bb.ah

bb.v:                                             ; preds = %bb.t
  br i1 %i.ah, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token2EqEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %1)
          to label %bb.y unwind label %bb.u

bb.x:                                             ; preds = %bb.v, %bb.ad
  %.sroa.2.0.a = phi i64 [ %.sroa.054.0.insert.ext, %bb.ad ], [ undef, %bb.v ]
  %.sroa.028.0 = phi i64 [ %i.am, %bb.ad ], [ -1, %bb.v ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.057)
  %.sroa.057.248..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.057, i64 248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.057.248..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10107, i64 16, i1 false)
  %.sroa.10.sroa.6.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 505
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10.sroa.6.0..sroa.10.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.057, ptr noundef nonnull align 8 dereferenceable(248) %i.d, i64 248, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.057, i64 272, i1 false)
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i64 %.sroa.2.0.a, ptr %.sroa.558.0..sroa_idx, align 8
  %.sroa.659.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 %.sroa.028.0, ptr %.sroa.659.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.656, i64 160, i1 false)
  %.sroa.860.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 448
  store i32 1, ptr %.sroa.860.0..sroa_idx, align 8
  %.sroa.852.sroa.4.0..sroa.852.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 452
  store i32 %.sroa.065.0.copyload, ptr %.sroa.852.sroa.4.0..sroa.852.0..sroa_idx.sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 456
  store i32 %i.o, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.9.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 460
  store i32 %.sroa.464.sroa.0.0.copyload, ptr %.sroa.9.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx, align 4
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 464
  store ptr %.sroa.464.sroa.4.0.copyload, ptr %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 488
  store ptr %.sroa.0166.0.copyload, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 496
  store i64 %.sroa.4167.0.copyload, ptr %.sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx, align 8
  %.sroa.10.sroa.5.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 504
  store i8 %.sroa.5168.0.copyload, ptr %.sroa.10.sroa.5.0..sroa.10.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.057)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10107)
  br label %bb.ae

bb.y:                                             ; preds = %bb.w
  %i.aj = load i64, ptr %i.b, align 8, !range !4, !noundef !5 ; 2 uses
  %.not93 = icmp eq i64 %i.aj, -1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.078.0.copyload = load i32, ptr %i.ak, align 8 ; 2 uses
  br i1 %.not93, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.587.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.587.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.584.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aj, ptr %i.al, align 8
  %.sroa.486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.078.0.copyload, ptr %.sroa.486.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.af

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.647)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_4expr4ExprEB8_(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(address) dereferenceable(168) %i.a, ptr noundef nonnull align 8 %1)
          to label %bb.ab unwind label %bb.u

bb.ab:                                            ; preds = %bb.aa
  %i.am = load i64, ptr %i.a, align 8, !range !28, !noundef !5 ; 2 uses
  %i.an = icmp eq i64 %i.am, -1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.647, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false)
  br i1 %i.an, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.647, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.647)
  br label %bb.af

bb.ad:                                            ; preds = %bb.ab
  %.sroa.590.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.656.40..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.656, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.656.40..sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.590.0..sroa_idx, i64 136, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.656, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.647, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.647)
  %.sroa.054.0.insert.ext = zext i32 %.sroa.078.0.copyload to i64
  br label %bb.x

bb.ae:                                            ; preds = %bb.b, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.af:                                            ; preds = %bb.ac, %bb.z
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty4TypeEBF_(ptr noalias nofree noundef align 8 dereferenceable(248) %i.d)
          to label %bb.ag unwind label %bb.n

bb.ag:                                            ; preds = %bb.af, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ai

bb.ah:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit, %bb.u, %.body
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.ai:                                            ; preds = %bb.ag, %bb.p
  %i.ar = icmp eq i8 %.sroa.5168.0.copyload, 2
  %i.as = icmp eq i64 %.sroa.4167.0.copyload, 0
  %or.cond174 = select i1 %i.ar, i1 true, i1 %i.as
  br i1 %or.cond174, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit104, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0166.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0166.0.copyload, i64 noundef range(i64 1, 0) %.sroa.4167.0.copyload, i64 noundef 1) #18, !noalias !987
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit104

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit104: ; preds = %bb.aj, %bb.ai, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  %i.at = icmp ne i32 %i.o, 3
  call void @llvm.assume(i1 %i.at)
  %i.au = icmp samesign ult i32 %i.o, 2
  br i1 %i.au, label %bb.ak, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn11restriction10VisibilityEBF_.exit

bb.ak:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit104
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.464.sroa.4.0.copyload) ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4path4PathEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.sroa.464.sroa.4.0.copyload)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn11restriction13VisRestrictedEBF_.exit.i unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.464.sroa.4.0.copyload, i64 noundef 48, i64 noundef 8) #18
  br label %.body

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn11restriction13VisRestrictedEBF_.exit.i: ; preds = %bb.ak
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.464.sroa.4.0.copyload, i64 noundef 48, i64 noundef 8) #18
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn11restriction10VisibilityEBF_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn11restriction10VisibilityEBF_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn11restriction13VisRestrictedEBF_.exit.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit104, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10107)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit unwind label %bb.am

bb.am:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn11restriction10VisibilityEBF_.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #19
  unreachable

common.resume:                                    ; preds = %.body, %bb.am
  %common.resume.op = phi { ptr, i32 } [ %i.aw, %bb.am ], [ %.pn97, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn11restriction10VisibilityEBF_.exit
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
  br label %bb.ae
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtCsgbWeKYPjk8w_3syn4data7parsingNtB7_5Field13parse_unnamed(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([512 x i8]) align 8 captures(none) dereferenceable(512) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.034.sroa.0.sroa.0 = alloca [280 x i8], align 8 ; 5 uses
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [168 x i8], align 8               ; 7 uses
  %.sroa.627 = alloca [24 x i8], align 8          ; 6 uses
  %i.d = alloca [168 x i8], align 8               ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [248 x i8], align 8               ; 7 uses
  %.sroa.68 = alloca [24 x i8], align 8           ; 6 uses
  %i.g = alloca [248 x i8], align 8               ; 9 uses
  %i.h = alloca [32 x i8], align 8                ; 10 uses
  %.sroa.6.sroa.8 = alloca [16 x i8], align 8     ; 7 uses
  %.sroa.10 = alloca [16 x i8], align 8           ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4callINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB8_4attr9AttributeEEB8_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.i, ptr noundef nonnull align 8 %1, ptr noundef nonnull @_RNvMNtCsgbWeKYPjk8w_3syn4attrNtB2_9Attribute11parse_outer)
  %i.k = load i64, ptr %i.i, align 8, !range !530, !noundef !5
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_11restriction10VisibilityEB8_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noundef nonnull align 8 %1)
          to label %bb.e unwind label %bb.d

.body:                                            ; preds = %bb.d, %bb.ac, %bb.h
  %.pn64 = phi { ptr, i32 } [ %.pn, %bb.h ], [ %i.o, %bb.d ], [ %i.am, %bb.ac ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #20
          to label %common.resume unwind label %bb.ad

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c
  %i.p = load i32, ptr %i.h, align 8, !range !981, !noundef !5 ; 5 uses
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.082.0.copyload = load ptr, ptr %i.r, align 8
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.483.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.485.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.8, i64 16, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.082.0.copyload, ptr %i.s, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.8)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn11restriction10VisibilityEBF_.exit

bb.g:                                             ; preds = %bb.e
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.sroa.443.sroa.0.0.copyload = load i32, ptr %.sroa.443.0..sroa_idx, align 4
  %.sroa.443.sroa.4.0..sroa.443.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.443.sroa.4.0.copyload = load ptr, ptr %.sroa.443.sroa.4.0..sroa.443.0..sroa_idx.sroa_idx, align 8 ; 6 uses
  %.sroa.443.sroa.5.0..sroa.443.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.443.sroa.5.0..sroa.443.0..sroa_idx.sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.8, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.68)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_2ty4TypeEB8_(ptr noalias nofree noundef nonnull sret([248 x i8]) align 8 captures(address) dereferenceable(248) %i.f, ptr noundef nonnull align 8 %1)
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %bb.m, %bb.i
  %.pn = phi { ptr, i32 } [ %i.t, %bb.i ], [ %i.z, %bb.m ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn11restriction10VisibilityEBF_(i32 %i.p, ptr %.sroa.443.sroa.4.0.copyload) #20
          to label %.body unwind label %bb.ad

bb.i:                                             ; preds = %bb.z, %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.j:                                             ; preds = %bb.g
  %i.u = load i64, ptr %i.f, align 8, !range !929, !noundef !5 ; 2 uses
  %i.v = icmp eq i64 %i.u, -1
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.68, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  br i1 %i.v, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.68, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.68)
  br label %bb.aa

bb.l:                                             ; preds = %bb.j
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.513.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.546.0..sroa_idx, i64 216, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.412.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.68, i64 24, i1 false)
  store i64 %i.u, ptr %i.g, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.68)
  %i.y = invoke noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token2EqNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %1)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.x, %bb.w, %bb.t, %bb.p, %bb.l
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty4TypeEBF_(ptr noalias nofree noundef align 8 dereferenceable(248) %i.g) #20
          to label %bb.h unwind label %bb.ad

bb.n:                                             ; preds = %bb.l
  br i1 %i.y, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.034.sroa.0.sroa.0)
  %.sroa.036.sroa.0.sroa.0.248..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.034.sroa.0.sroa.0, i64 248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.036.sroa.0.sroa.0.248..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %.sroa.036.sroa.8.sroa.6.0..sroa.036.sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.036.sroa.8.sroa.6.0..sroa.036.sroa.8.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.034.sroa.0.sroa.0, ptr noundef nonnull align 8 dereferenceable(248) %i.g, i64 248, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.034.sroa.0.sroa.0, i64 280, i1 false)
  %.sroa.036.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 -1, ptr %.sroa.036.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.036.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 448
  store i32 0, ptr %.sroa.036.sroa.6.0..sroa_idx, align 8
  %.sroa.036.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 456
  store i32 %i.p, ptr %.sroa.036.sroa.8.0..sroa_idx, align 8
  %.sroa.036.sroa.8.sroa.4.0..sroa.036.sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 460
  store i32 %.sroa.443.sroa.0.0.copyload, ptr %.sroa.036.sroa.8.sroa.4.0..sroa.036.sroa.8.0..sroa_idx.sroa_idx, align 4
  %.sroa.036.sroa.8.sroa.5.0..sroa.036.sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 464
  store ptr %.sroa.443.sroa.4.0.copyload, ptr %.sroa.036.sroa.8.sroa.5.0..sroa.036.sroa.8.0..sroa_idx.sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 504
  store i8 -1, ptr %.sroa.9.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.034.sroa.0.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token2EqEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noundef nonnull align 8 %1)
          to label %bb.r unwind label %bb.m

bb.q:                                             ; preds = %bb.b, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.r:                                             ; preds = %bb.p
  %i.aa = load i64, ptr %i.e, align 8, !range !4, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.aa, -1
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.sroa.452.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.452.0.copyload = load i32, ptr %.sroa.452.0..sroa_idx.a, align 8
  %.sroa.553.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %.sroa.556.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.556.0..sroa_idx.a, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.553.0..sroa_idx.a, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aa, ptr %i.ab, align 8
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.452.0.copyload, ptr %.sroa.455.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.z

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ac = load <2 x ptr>, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.627)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_4expr4ExprEB8_(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(address) dereferenceable(168) %i.c, ptr noundef nonnull align 8 %1)
          to label %bb.u unwind label %bb.m

bb.u:                                             ; preds = %bb.t
  %i.ad = load i64, ptr %i.c, align 8, !range !28, !noundef !5 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, -1
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.627, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false)
  br i1 %i.ae, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.627, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.627)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.z

bb.w:                                             ; preds = %bb.u
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.533.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.559.0..sroa_idx, i64 136, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.432.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.627, i64 24, i1 false)
  store i64 %i.ad, ptr %i.d, align 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4expr4ExprEBF_(ptr noalias nofree noundef align 8 dereferenceable(168) %i.d)
          to label %bb.x unwind label %bb.m

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.627)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store <2 x ptr> %i.ac, ptr %i.a, align 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ai = load <2 x ptr>, ptr %1, align 8
  store <2 x ptr> %i.ai, ptr %i.ah, align 16
  invoke void @_RINvMNtCsgbWeKYPjk8w_3syn5errorNtB3_5Error9new_rangeINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangeNtNtB5_6buffer6CursorEReEB5_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 66)
          to label %bb.y unwind label %bb.m

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.z

bb.z:                                             ; preds = %bb.v, %bb.y, %bb.s
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty4TypeEBF_(ptr noalias nofree noundef align 8 dereferenceable(248) %i.g)
          to label %bb.aa unwind label %bb.i

bb.aa:                                            ; preds = %bb.z, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ak = icmp ne i32 %i.p, 3
  call void @llvm.assume(i1 %i.ak)
  %i.al = icmp samesign ult i32 %i.p, 2
  br i1 %i.al, label %bb.ab, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn11restriction10VisibilityEBF_.exit

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.443.sroa.4.0.copyload) ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4path4PathEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.sroa.443.sroa.4.0.copyload)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn11restriction13VisRestrictedEBF_.exit.i unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.443.sroa.4.0.copyload, i64 noundef 48, i64 noundef 8) #18
  br label %.body

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn11restriction13VisRestrictedEBF_.exit.i: ; preds = %bb.ab
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.443.sroa.4.0.copyload, i64 noundef 48, i64 noundef 8) #18
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn11restriction10VisibilityEBF_.exit

bb.ad:                                            ; preds = %bb.h, %bb.m, %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn11restriction10VisibilityEBF_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn11restriction13VisRestrictedEBF_.exit.i, %bb.aa, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit unwind label %bb.ae

bb.ae:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn11restriction10VisibilityEBF_.exit
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #19
  unreachable

common.resume:                                    ; preds = %.body, %bb.ae
  %common.resume.op = phi { ptr, i32 } [ %i.ao, %bb.ae ], [ %.pn64, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn11restriction10VisibilityEBF_.exit
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
  br label %bb.q
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsgbWeKYPjk8w_3syn4meta15parse_meta_path(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.522 = alloca [24 x i8], align 8          ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [88 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.57 = alloca [24 x i8], align 8           ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 15 uses
  %.sroa.6 = alloca [12 x i8], align 8            ; 3 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [48 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RNvXsb_NtCsgbWeKYPjk8w_3syn5parseINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB7_5token7PathSepENtB5_5Parse5parseB7_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull align 8 %1)
  %i.l = load i64, ptr %i.j, align 8, !range !4, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.l, -1
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(12) %i.m, i64 12, i1 false)
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %.sroa.528.0.copyload = load i32, ptr %.sroa.528.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.433.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.6, i64 12, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.n, align 8
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.528.0.copyload, ptr %.sroa.534.0..sroa_idx, align 4
  store i64 -1, ptr %0, align 8
  br label %bb.x

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 0, ptr %i.i, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.430.0..sroa_idx, align 8
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.531.0..sroa_idx, i8 0, i64 16, i1 false)
  %i.p = load ptr, ptr %1, align 8, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.r = load ptr, ptr %i.q, align 8, !noundef !5
  %i.s = invoke noundef zeroext i1 @_RNvXs0_NtCsgbWeKYPjk8w_3syn3extNtNtB5_7private8IdentAnyNtNtNtB7_5token7private11CustomToken4peek(ptr noundef %i.p, ptr noundef %i.r)
          to label %bb.e unwind label %.loopexit.split-lp

end_hunk_0
begin_hunk_1_@_RNvXNtNtCsgbWeKYPjk8w_3syn4data7parsingNtB4_7VariantNtNtB6_5parse5Parse5parse:bb.a

bb.e:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.thread190

bb.f:                                             ; preds = %bb.c
  %i.s = load i32, ptr %i.j, align 8, !range !981, !noundef !5 ; 6 uses
  %i.t = icmp eq i32 %i.s, -1
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.0166.0.copyload = load ptr, ptr %i.u, align 8 ; 10 uses
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.sroa.4167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4167.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.sroa.4169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4169.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.8, i64 16, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0166.0.copyload, ptr %i.v, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.8)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn11restriction10VisibilityEBF_.exit123

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11139)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.57.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtCs6et67aoV1xO_11proc_macro25IdentEB8_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.i, ptr noundef nonnull align 8 %1)
          to label %bb.j unwind label %bb.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit: ; preds = %bb.n, %bb.m, %bb.i
  %.pn104 = phi { ptr, i32 } [ %i.w, %bb.i ], [ %.pn102, %bb.m ], [ %.pn102, %bb.n ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn11restriction10VisibilityEBF_(i32 %i.s, ptr %.sroa.0166.0.copyload) #20
          to label %.thread190 unwind label %bb.bg

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit

bb.j:                                             ; preds = %bb.h
  %i.x = load i64, ptr %i.i, align 8, !range !530, !noundef !5
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.4179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.5180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.6181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 25
  %.sroa.0178.0.copyload = load ptr, ptr %i.z, align 8 ; 6 uses
  %.sroa.4179.0.copyload = load i64, ptr %.sroa.4179.0..sroa_idx, align 8 ; 6 uses
  %.sroa.5180.0.copyload = load i8, ptr %.sroa.5180.0..sroa_idx, align 8 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.57.sroa.9, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6181.0..sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %i.y, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.6185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6185.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.57.sroa.9, i64 7, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0178.0.copyload, ptr %i.aa, align 8
  %.sroa.4183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4179.0.copyload, ptr %.sroa.4183.0..sroa_idx, align 8
  %.sroa.5184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sroa.5180.0.copyload, ptr %.sroa.5184.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.57.sroa.9)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit119

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11139, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.57.sroa.9, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.57.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ab = invoke noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token5BraceNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %1)
          to label %bb.p unwind label %bb.o

bb.m:                                             ; preds = %bb.ac, %bb.o
  %.pn102 = phi { ptr, i32 } [ %i.ae, %bb.o ], [ %.pn100, %bb.ac ] ; 2 uses
  %i.ac = icmp eq i8 %.sroa.5180.0.copyload, 2
  %i.ad = icmp eq i64 %.sroa.4179.0.copyload, 0
  %or.cond = select i1 %i.ac, i1 true, i1 %i.ad
  br i1 %or.cond, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0178.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0178.0.copyload, i64 noundef range(i64 1, 0) %.sroa.4179.0.copyload, i64 noundef 1) #18, !noalias !1182
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit

bb.o:                                             ; preds = %bb.be, %bb.u, %bb.r, %bb.q, %bb.l
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.p:                                             ; preds = %bb.l
  br i1 %i.ab, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = invoke noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token5ParenNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %1)
          to label %bb.s unwind label %bb.o

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.610)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_4data11FieldsNamedEB8_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.g, ptr noundef nonnull align 8 %1)
          to label %bb.z unwind label %bb.o

bb.s:                                             ; preds = %bb.q
  br i1 %i.af, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i64 2, ptr %i.h, align 8
  br label %bb.y

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.616)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_4data13FieldsUnnamedEB8_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.f, ptr noundef nonnull align 8 %1)
          to label %bb.v unwind label %bb.o

bb.v:                                             ; preds = %bb.u
  %i.ag = load i64, ptr %i.f, align 8, !range !4, !noundef !5 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, -1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.616, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  br i1 %i.ah, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.616, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.616)
  br label %bb.bh

bb.x:                                             ; preds = %bb.v
  %.sroa.582.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.322.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.582.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.sroa.221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.221.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.616, i64 24, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.ag, ptr %i.ak, align 8
  store i64 1, ptr %i.h, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.616)
  br label %bb.y

bb.y:                                             ; preds = %bb.t, %bb.x, %bb.ab
  %i.al = invoke noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token2EqNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %1)
          to label %bb.ae unwind label %bb.ad

bb.z:                                             ; preds = %bb.r
  %i.am = load i64, ptr %i.g, align 8, !range !4, !noundef !5 ; 2 uses
  %i.an = icmp eq i64 %i.am, -1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.610, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false)
  br i1 %i.an, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.610, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.610)
  br label %bb.bh

bb.ab:                                            ; preds = %bb.z
  %.sroa.579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.579.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.610, i64 24, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.am, ptr %i.aq, align 8
  store i64 0, ptr %i.h, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.610)
  br label %bb.y

bb.ac:                                            ; preds = %bb.am, %bb.ad
  %.pn100 = phi { ptr, i32 } [ %i.ar, %bb.ad ], [ %.pn.pn, %bb.am ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4data6FieldsEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.h) #20
          to label %bb.m unwind label %bb.bg

bb.ad:                                            ; preds = %bb.bb, %bb.ba, %bb.ak, %bb.af, %bb.y
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ae:                                            ; preds = %bb.y
  br i1 %i.al, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token2EqEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noundef nonnull align 8 %1)
          to label %bb.ai unwind label %bb.ad

bb.ag:                                            ; preds = %bb.ae, %bb.bc
  %.sroa.225.0 = phi i64 [ %.sroa.061.sroa.0.0.insert.ext, %bb.bc ], [ undef, %bb.ae ]
  %.sroa.023.0 = phi i64 [ %.sroa.057.0.copyload197, %bb.bc ], [ -1, %bb.ae ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.068)
  %.sroa.068.56..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.068, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.068.56..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  %.sroa.872.sroa.6.0..sroa.872.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 273
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.872.sroa.6.0..sroa.872.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11139, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.068, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.068, i64 80, i1 false)
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.sroa.225.0, ptr %.sroa.569.0..sroa_idx, align 8
  %.sroa.670.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.023.0, ptr %.sroa.670.0..sroa_idx, align 8
  %.sroa.771.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.771.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.667, i64 160, i1 false)
  %.sroa.872.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr %.sroa.0178.0.copyload, ptr %.sroa.872.0..sroa_idx, align 8
  %.sroa.872.sroa.4.0..sroa.872.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 %.sroa.4179.0.copyload, ptr %.sroa.872.sroa.4.0..sroa.872.0..sroa_idx.sroa_idx, align 8
  %.sroa.872.sroa.5.0..sroa.872.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i8 %.sroa.5180.0.copyload, ptr %.sroa.872.sroa.5.0..sroa.872.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.068)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11139)
  %i.as = icmp ne i32 %i.s, 3
  call void @llvm.assume(i1 %i.as)
  %i.at = icmp samesign ult i32 %i.s, 2
  br i1 %i.at, label %bb.ah, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn11restriction10VisibilityEBF_.exit

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0166.0.copyload) ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4path4PathEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.sroa.0166.0.copyload)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn11restriction13VisRestrictedEBF_.exit.i unwind label %bb.d

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn11restriction13VisRestrictedEBF_.exit.i: ; preds = %bb.ah
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0166.0.copyload, i64 noundef 48, i64 noundef 8) #18
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn11restriction10VisibilityEBF_.exit

bb.ai:                                            ; preds = %bb.af
  %i.au = load i64, ptr %i.e, align 8, !range !4, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.au, -1
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.083.0.copyload = load i32, ptr %i.av, align 8 ; 2 uses
  br i1 %.not, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.sroa.589.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %.sroa.592.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.592.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.589.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.au, ptr %i.aw, align 8
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.083.0.copyload, ptr %.sroa.491.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.be

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.val115 = load ptr, ptr %1, align 8, !noundef !5
  %i.ax = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %.val116 = load ptr, ptr %i.ax, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB5_11ParseBuffer4fork(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noundef nonnull align 8 %1)
          to label %bb.al unwind label %bb.ad

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_4expr4ExprEB8_(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(address) dereferenceable(168) %i.c, ptr noundef nonnull align 8 %i.d)
          to label %bb.ao unwind label %bb.an

bb.am:                                            ; preds = %bb.bf, %bb.an
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.bf ], [ %i.ay, %bb.an ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.d) #20
          to label %bb.ac unwind label %bb.bg

bb.an:                                            ; preds = %bb.al
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ao:                                            ; preds = %bb.al
  %i.az = load i64, ptr %i.c, align 8, !range !28, !noundef !5
  %.not97 = icmp eq i64 %i.az, -1
  br i1 %.not97, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvNtCsgbWeKYPjk8w_3syn9scan_expr9scan_expr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %1)
          to label %bb.as unwind label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  invoke void @_RNvXNtNtCsgbWeKYPjk8w_3syn5parse11discouragedNtB4_11ParseBufferNtB2_11Speculative10advance_to(ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %i.d)
          to label %bb.az unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aw, %bb.au, %bb.at, %bb.aq, %bb.ap
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.as:                                            ; preds = %bb.ap
  %i.bb = load i64, ptr %i.b, align 8, !range !4, !noundef !5
  %i.bc = icmp eq i64 %i.bb, -1
  br i1 %i.bc, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsgbWeKYPjk8w_3syn5error5ErrorEEB12_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b)
          to label %bb.av unwind label %bb.ar

bb.au:                                            ; preds = %bb.as
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsgbWeKYPjk8w_3syn5error5ErrorEEB12_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b)
          to label %bb.aw unwind label %bb.ar

bb.av:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.az

bb.aw:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.547)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.val113 = load ptr, ptr %1, align 8, !noundef !5
  %.val114 = load ptr, ptr %i.ax, align 8, !noundef !5
  invoke void @_RNvNtCsgbWeKYPjk8w_3syn8verbatim7between(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noundef %.val115, ptr noundef %.val116, ptr noundef %.val113, ptr noundef %.val114)
          to label %bb.ax unwind label %bb.ar

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.547, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgbWeKYPjk8w_3syn4expr4ExprNtNtB11_5error5ErrorEEB11_(ptr noalias nofree noundef align 8 dereferenceable(168) %i.c)
          to label %.thread193 unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.bd = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775771, ptr %i.c, align 8
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.547.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.547, i64 32, i1 false)
  br label %bb.bf

.thread193:                                       ; preds = %bb.ax
  store i64 -9223372036854775771, ptr %i.c, align 8
  %.sroa.547.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.547.0..sroa_idx48, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.547, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.547)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.653)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.659)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.659, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.547.0..sroa_idx48, i64 24, i1 false)
  %.sroa.7.0..sroa_idx196 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7.0..sroa_idx196, i64 136, i1 false)
  br label %bb.bb

bb.az:                                            ; preds = %bb.aq, %bb.av
  %.sroa.057.0.copyload.pr = load i64, ptr %i.c, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.653)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.659)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %.sroa.659.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.659, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.659.0..sroa_idx, i64 24, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7.0..sroa_idx, i64 136, i1 false)
  %i.be = icmp eq i64 %.sroa.057.0.copyload.pr, -1
  br i1 %i.be, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.659)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.659.0..sroa_idx, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.d)
          to label %bb.bd unwind label %bb.ad

bb.bb:                                            ; preds = %.thread193, %bb.az
  %.sroa.057.0.copyload197 = phi i64 [ -9223372036854775771, %.thread193 ], [ %.sroa.057.0.copyload.pr, %bb.az ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.653, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.659, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.364, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7, i64 136, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.659)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.263, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.653, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.d)
          to label %bb.bc unwind label %bb.ad

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.653)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.667, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.263, i64 24, i1 false)
  %.sroa.667.40..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.667, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.667.40..sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.364, i64 136, i1 false)
  %.sroa.061.sroa.0.0.insert.ext = zext i32 %.sroa.083.0.copyload to i64
  br label %bb.ag

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn11restriction10VisibilityEBF_.exit: ; preds = %bb.ag, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn11restriction13VisRestrictedEBF_.exit.i, %bb.b, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void

bb.bd:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.653)
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.aj
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4data6FieldsEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.h)
          to label %bb.bh unwind label %bb.o

bb.bf:                                            ; preds = %bb.ar, %bb.ay
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.ar ], [ %i.bd, %bb.ay ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgbWeKYPjk8w_3syn4expr4ExprNtNtB11_5error5ErrorEEB11_(ptr noalias nofree noundef align 8 dereferenceable(168) %i.c) #20
          to label %bb.am unwind label %bb.bg

bb.bg:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit, %.thread190, %bb.bf, %bb.am, %bb.ac
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.bh:                                            ; preds = %bb.w, %bb.aa, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.bh = icmp eq i8 %.sroa.5180.0.copyload, 2
  %i.bi = icmp eq i64 %.sroa.4179.0.copyload, 0
  %or.cond198 = select i1 %i.bh, i1 true, i1 %i.bi
  br i1 %or.cond198, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit119, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0178.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0178.0.copyload, i64 noundef range(i64 1, 0) %.sroa.4179.0.copyload, i64 noundef 1) #18, !noalias !1187
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit119

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit119: ; preds = %bb.bi, %bb.bh, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11139)
  %i.bj = icmp ne i32 %i.s, 3
  call void @llvm.assume(i1 %i.bj)
  %i.bk = icmp samesign ult i32 %i.s, 2
  br i1 %i.bk, label %bb.bj, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn11restriction10VisibilityEBF_.exit123

bb.bj:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit119
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0166.0.copyload) ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4path4PathEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.sroa.0166.0.copyload)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn11restriction13VisRestrictedEBF_.exit.i120 unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0166.0.copyload, i64 noundef 48, i64 noundef 8) #18
  br label %.thread190

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn11restriction13VisRestrictedEBF_.exit.i120: ; preds = %bb.bj
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0166.0.copyload, i64 noundef 48, i64 noundef 8) #18
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn11restriction10VisibilityEBF_.exit123

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn11restriction10VisibilityEBF_.exit123: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn11restriction13VisRestrictedEBF_.exit.i120, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit119, %bb.g
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit unwind label %bb.bl

bb.bl:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn11restriction10VisibilityEBF_.exit123
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %common.resume unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #19
  unreachable

common.resume:                                    ; preds = %.thread190, %bb.d, %bb.bl
  %common.resume.op = phi { ptr, i32 } [ %i.bm, %bb.bl ], [ %.pn106189, %.thread190 ], [ %i.q, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn11restriction10VisibilityEBF_.exit123
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn11restriction10VisibilityEBF_.exit

.thread190:                                       ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit, %bb.bk, %bb.e
  %.pn106189 = phi { ptr, i32 } [ %i.bl, %bb.bk ], [ %i.r, %bb.e ], [ %.pn104, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #20
          to label %common.resume unwind label %bb.bg
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtCsgbWeKYPjk8w_3syn4data8printingNtB4_7VariantNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(280) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = getelementptr inbounds nuw [248 x i8], ptr %i.b, i64 %i.d
  tail call void @_RINvNvXNtCs6p3UlaoheVH_5quote3extNtCs6et67aoV1xO_11proc_macro211TokenStreamNtB5_14TokenStreamExt10append_all13do_append_allINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB2H_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @_RNvXsq_NtCs6p3UlaoheVH_5quote9to_tokensNtCs6et67aoV1xO_11proc_macro25IdentNtB5_8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.g = load i64, ptr %0, align 8, !range !632, !alias.scope !1192, !noalias !1195, !noundef !5
  switch i64 %i.g, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %_RNvXs6_NtCsgbWeKYPjk8w_3syn4dataNtB5_6FieldsNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens.exit
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_RINvMscu_NtCsgbWeKYPjk8w_3syn5tokenNtB7_5Brace8surroundNCNvXs_NtNtB9_4data8printingNtB10_11FieldsNamedNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens0EB9_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.h)
  br label %_RNvXs6_NtCsgbWeKYPjk8w_3syn4dataNtB5_6FieldsNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_RINvMscE_NtCsgbWeKYPjk8w_3syn5tokenNtB7_5Paren8surroundNCNvXs0_NtNtB9_4data8printingNtB11_13FieldsUnnamedNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens0EB9_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.j)
  br label %_RNvXs6_NtCsgbWeKYPjk8w_3syn4dataNtB5_6FieldsNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens.exit

_RNvXs6_NtCsgbWeKYPjk8w_3syn4dataNtB5_6FieldsNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !range !28, !noundef !5
  %.not = icmp eq i64 %i.m, -1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvXs6_NtCsgbWeKYPjk8w_3syn4dataNtB5_6FieldsNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_RNvXs7p_NtCsgbWeKYPjk8w_3syn5tokenNtB6_2EqNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  tail call void @_RNvXsc_NtCsgbWeKYPjk8w_3syn4exprNtB5_4ExprNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNvXs6_NtCsgbWeKYPjk8w_3syn4dataNtB5_6FieldsNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNvMs_NtNtCs4wP2HXfJTCR_5alloc3ffi5c_strNtB7_7CString3newNtNtBb_6string6StringNtB2_11SpecNewImpl13spec_new_implCsgbWeKYPjk8w_3syn(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !alias.scope !1197
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 5 uses
  %i.g = icmp samesign ult i64 %i.f, 16
  br i1 %i.g, label %.preheader.i, label %bb.b

.preheader.i:                                     ; preds = %bb.a
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %.loopexit11, label %.lr.ph.i

bb.b:                                             ; preds = %bb.a
  %i.h = invoke { i64, i64 } @_RNvNtNtCsj6eKBz9Db1c_4core5slice6memchr14memchr_aligned(i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef range(i64 0, -9223372036854775808) %i.f)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %bb.b
  %i.i = extractvalue { i64, i64 } %i.h, 0
  %i.j = extractvalue { i64, i64 } %i.h, 1
  %i.k = trunc nuw i64 %i.i to i1
  br i1 %i.k, label %.loopexit, label %.loopexit11

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.c
  %.sroa.04.011.i = phi i64 [ %i.o, %bb.c ], [ 0, %.preheader.i ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.04.011.i
  %i.m = load i8, ptr %i.l, align 1, !alias.scope !1204, !noundef !5
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.o = add nuw nsw i64 %.sroa.04.011.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.o, %i.f
  br i1 %exitcond.not.i, label %.loopexit11, label %.lr.ph.i

.loopexit:                                        ; preds = %.lr.ph.i, %.noexc
  %.sroa.5.0.i = phi i64 [ %i.j, %.noexc ], [ %.sroa.04.011.i, %.lr.ph.i ] ; 2 uses
  %i.p = icmp ult i64 %.sroa.5.0.i, %i.f
  tail call void @llvm.assume(i1 %i.p)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.5.0.i, ptr %.sroa.43.0..sroa_idx, align 8
  br label %bb.d

.loopexit11:                                      ; preds = %bb.c, %.noexc, %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.q = call { ptr, i64 } @_RNvMs_NtNtCs4wP2HXfJTCR_5alloc3ffi5c_strNtB4_7CString19__from_vec_unchecked(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a) ; 2 uses
  %i.r = extractvalue { ptr, i64 } %i.q, 0
  %i.s = extractvalue { ptr, i64 } %i.q, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.s, ptr %i.u, align 8
  store i64 -1, ptr %0, align 8
end_hunk_1
begin_hunk_2_@_RNvXs1_NtCsgbWeKYPjk8w_3syn11parse_quoteNtNtB7_4data5FieldNtB5_10ParseQuote5parse:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10113)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_11restriction10VisibilityEB8_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.g, ptr noundef nonnull align 8 %1)
          to label %bb.e unwind label %bb.d

.body:                                            ; preds = %bb.d, %bb.aq, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs6et67aoV1xO_11proc_macro25IdentEECsgbWeKYPjk8w_3syn.exit110
  %.pn103 = phi { ptr, i32 } [ %.pn101, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs6et67aoV1xO_11proc_macro25IdentEECsgbWeKYPjk8w_3syn.exit110 ], [ %i.n, %bb.d ], [ %i.av, %bb.aq ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #20
          to label %common.resume unwind label %bb.al

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c
  %i.o = load i32, ptr %i.g, align 8, !range !981, !noundef !5 ; 5 uses
  %i.p = icmp eq i32 %i.o, -1
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.0158.0.copyload = load ptr, ptr %i.q, align 8
  %.sroa.4159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4159.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.sroa.4161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4161.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.8, i64 16, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0158.0.copyload, ptr %i.r, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.8)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn11restriction10VisibilityEBF_.exit

bb.g:                                             ; preds = %bb.e
  %.sroa.470.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %.sroa.470.sroa.0.0.copyload = load i32, ptr %.sroa.470.0..sroa_idx.a, align 4
  %.sroa.470.sroa.4.0..sroa.470.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.470.sroa.4.0.copyload = load ptr, ptr %.sroa.470.sroa.4.0..sroa.470.0..sroa_idx.sroa_idx, align 8 ; 6 uses
  %.sroa.470.sroa.5.0..sroa.470.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.470.sroa.5.0..sroa.470.0..sroa_idx.sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10113, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.8, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  %i.s = invoke noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekNvNtB8_5ident5IdentEB8_(ptr noundef nonnull align 8 %1)
          to label %bb.i unwind label %.thread187

.thread187:                                       ; preds = %bb.n, %bb.l, %bb.j, %bb.g
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs6et67aoV1xO_11proc_macro25IdentEECsgbWeKYPjk8w_3syn.exit110

bb.h:                                             ; preds = %.thread194, %bb.q, %bb.aj
  %.sroa.9.1.ph = phi i8 [ %.sroa.5172.0.copyload, %bb.q ], [ %.sroa.9.2, %.thread194 ], [ %.sroa.9.2, %bb.aj ]
  %.sroa.7119.1.ph = phi i64 [ %.sroa.4171.0.copyload, %bb.q ], [ %.sroa.7119.2, %.thread194 ], [ %.sroa.7119.2, %bb.aj ]
  %.sroa.0117.1.ph = phi ptr [ %.sroa.0170.0.copyload, %bb.q ], [ %.sroa.0117.2, %.thread194 ], [ %.sroa.0117.2, %bb.aj ]
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.i:                                             ; preds = %bb.g
  br i1 %i.s, label %bb.j, label %.thread194

bb.j:                                             ; preds = %bb.i
  %i.t = invoke noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5peek2INvNtB8_5token5ColonNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %1)
          to label %bb.k unwind label %.thread187

bb.k:                                             ; preds = %bb.j
  br i1 %i.t, label %bb.l, label %.thread194

bb.l:                                             ; preds = %bb.k
  %i.u = invoke noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5peek2INvNtB8_5token7PathSepNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %1)
          to label %bb.m unwind label %.thread187

bb.m:                                             ; preds = %bb.l
  br i1 %i.u, label %.thread194, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.59.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtCs6et67aoV1xO_11proc_macro25IdentEB8_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noundef nonnull align 8 %1)
          to label %bb.o unwind label %.thread187

.thread194:                                       ; preds = %bb.i, %bb.k, %bb.m, %bb.t
  %.sroa.06.0196 = phi i1 [ true, %bb.t ], [ false, %bb.m ], [ false, %bb.k ], [ false, %bb.i ]
  %.sroa.9.2 = phi i8 [ %.sroa.5172.0.copyload, %bb.t ], [ -1, %bb.m ], [ -1, %bb.k ], [ -1, %bb.i ] ; 5 uses
  %.sroa.7119.2 = phi i64 [ %.sroa.4171.0.copyload, %bb.t ], [ undef, %bb.m ], [ undef, %bb.k ], [ undef, %bb.i ] ; 5 uses
  %.sroa.0117.2 = phi ptr [ %.sroa.0170.0.copyload, %bb.t ], [ undef, %bb.m ], [ undef, %bb.k ], [ undef, %bb.i ] ; 5 uses
  %.sroa.3.0 = phi i32 [ %.sroa.071.0.copyload, %bb.t ], [ undef, %bb.m ], [ undef, %bb.k ], [ undef, %bb.i ]
  %.sroa.010.0 = phi i32 [ 1, %bb.t ], [ 0, %bb.m ], [ 0, %bb.k ], [ 0, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.627)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_2ty4TypeEB8_(ptr noalias nofree noundef nonnull sret([248 x i8]) align 8 captures(address) dereferenceable(248) %i.c, ptr noundef nonnull align 8 %1)
          to label %bb.u unwind label %bb.h

bb.o:                                             ; preds = %bb.n
  %i.v = load i64, ptr %i.f, align 8, !range !530, !noundef !5
  %i.w = trunc nuw i64 %i.v to i1
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.4171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.5172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.6173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 25
  %.sroa.0170.0.copyload = load ptr, ptr %i.x, align 8 ; 4 uses
  %.sroa.4171.0.copyload = load i64, ptr %.sroa.4171.0..sroa_idx, align 8 ; 4 uses
  %.sroa.5172.0.copyload = load i8, ptr %.sroa.5172.0..sroa_idx, align 8 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.59.sroa.9, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6173.0..sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %i.w, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.sroa.6177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6177.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.59.sroa.9, i64 7, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0170.0.copyload, ptr %i.y, align 8
  %.sroa.4175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4171.0.copyload, ptr %.sroa.4175.0..sroa_idx, align 8
  %.sroa.5176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sroa.5172.0.copyload, ptr %.sroa.5176.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.59.sroa.9)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs6et67aoV1xO_11proc_macro25IdentEECsgbWeKYPjk8w_3syn.exit

bb.q:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.59.sroa.9, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.59.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token5ColonEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noundef nonnull align 8 %1)
          to label %bb.r unwind label %bb.h

bb.r:                                             ; preds = %bb.q
  %i.z = load i64, ptr %i.e, align 8, !range !4, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.z, -1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.071.0.copyload = load i32, ptr %i.aa, align 8 ; 2 uses
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %.sroa.580.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.580.0..sroa_idx.a, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.577.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.z, ptr %i.ab, align 8
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.071.0.copyload, ptr %.sroa.479.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.am

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.thread194

bb.u:                                             ; preds = %.thread194
  %i.ac = load i64, ptr %i.c, align 8, !range !929, !noundef !5 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, -1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.627, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  br i1 %i.ad, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.627, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.627)
  br label %bb.ak

bb.w:                                             ; preds = %bb.u
  %.sroa.583.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.533.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.583.0..sroa_idx.a, i64 216, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.432.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.627, i64 24, i1 false)
  store i64 %i.ac, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.627)
  br i1 %.sroa.06.0196, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.ag = invoke noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token2EqNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %1)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %bb.ae, %bb.aa, %bb.x
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty4TypeEBF_(ptr noalias nofree noundef align 8 dereferenceable(248) %i.d) #20
          to label %.thread unwind label %bb.al

bb.z:                                             ; preds = %bb.x
  br i1 %i.ag, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token2EqEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %1)
          to label %bb.ac unwind label %bb.y

bb.ab:                                            ; preds = %bb.w, %bb.z, %bb.ah
  %.sroa.2.0.a = phi i64 [ %.sroa.061.0.insert.ext, %bb.ah ], [ undef, %bb.z ], [ undef, %bb.w ]
  %.sroa.034.0 = phi i64 [ %i.al, %bb.ah ], [ -1, %bb.z ], [ -1, %bb.w ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.064)
  %.sroa.064.248..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.064, i64 248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.064.248..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %.sroa.10.sroa.6.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.sroa.6.0..sroa.10.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10113, i64 16, i1 false)
  %.sroa.11.sroa.6.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 505
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11.sroa.6.0..sroa.11.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.064, ptr noundef nonnull align 8 dereferenceable(248) %i.d, i64 248, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.064, i64 272, i1 false)
  %.sroa.565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i64 %.sroa.2.0.a, ptr %.sroa.565.0..sroa_idx, align 8
  %.sroa.666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 %.sroa.034.0, ptr %.sroa.666.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.663, i64 160, i1 false)
  %.sroa.867.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 448
  store i32 %.sroa.010.0, ptr %.sroa.867.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 452
  store i32 %.sroa.3.0, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 456
  store i32 %i.o, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 460
  store i32 %.sroa.470.sroa.0.0.copyload, ptr %.sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx, align 4
  %.sroa.10.sroa.5.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 464
  store ptr %.sroa.470.sroa.4.0.copyload, ptr %.sroa.10.sroa.5.0..sroa.10.0..sroa_idx.sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 488
  store ptr %.sroa.0117.2, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.11.sroa.4.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 496
  store i64 %.sroa.7119.2, ptr %.sroa.11.sroa.4.0..sroa.11.0..sroa_idx.sroa_idx, align 8
  %.sroa.11.sroa.5.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 504
  store i8 %.sroa.9.2, ptr %.sroa.11.sroa.5.0..sroa.11.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.064)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10113)
  br label %bb.ai

bb.ac:                                            ; preds = %bb.aa
  %i.ai = load i64, ptr %i.b, align 8, !range !4, !noundef !5 ; 2 uses
  %.not99 = icmp eq i64 %i.ai, -1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.084.0.copyload = load i32, ptr %i.aj, align 8 ; 2 uses
  br i1 %.not99, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.sroa.590.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.593.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.593.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.590.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ai, ptr %i.ak, align 8
  %.sroa.492.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.084.0.copyload, ptr %.sroa.492.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.aj

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.654)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_4expr4ExprEB8_(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(address) dereferenceable(168) %i.a, ptr noundef nonnull align 8 %1)
          to label %bb.af unwind label %bb.y

bb.af:                                            ; preds = %bb.ae
  %i.al = load i64, ptr %i.a, align 8, !range !28, !noundef !5 ; 2 uses
  %i.am = icmp eq i64 %i.al, -1
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.654, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false)
  br i1 %i.am, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.654, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.654)
  br label %bb.aj

bb.ah:                                            ; preds = %bb.af
  %.sroa.596.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.663.40..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.663, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.663.40..sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.596.0..sroa_idx, i64 136, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.663, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.654, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.654)
  %.sroa.061.0.insert.ext = zext i32 %.sroa.084.0.copyload to i64
  br label %bb.ab

bb.ai:                                            ; preds = %bb.b, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.aj:                                            ; preds = %bb.ag, %bb.ad
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty4TypeEBF_(ptr noalias nofree noundef align 8 dereferenceable(248) %i.d)
          to label %bb.ak unwind label %bb.h

bb.ak:                                            ; preds = %bb.aj, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.am

bb.al:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs6et67aoV1xO_11proc_macro25IdentEECsgbWeKYPjk8w_3syn.exit110, %bb.y, %.body
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.am:                                            ; preds = %bb.ak, %bb.s
  %.sroa.9.3 = phi i8 [ %.sroa.9.2, %bb.ak ], [ %.sroa.5172.0.copyload, %bb.s ] ; 2 uses
  %.sroa.7119.3 = phi i64 [ %.sroa.7119.2, %bb.ak ], [ %.sroa.4171.0.copyload, %bb.s ] ; 2 uses
  %.sroa.0117.3 = phi ptr [ %.sroa.0117.2, %bb.ak ], [ %.sroa.0170.0.copyload, %bb.s ] ; 2 uses
  %i.aq = icmp eq i8 %.sroa.9.3, -1
  br i1 %i.aq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs6et67aoV1xO_11proc_macro25IdentEECsgbWeKYPjk8w_3syn.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ar = icmp eq i8 %.sroa.9.3, 2
  %i.as = icmp eq i64 %.sroa.7119.3, 0
  %or.cond = select i1 %i.ar, i1 true, i1 %i.as
  br i1 %or.cond, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs6et67aoV1xO_11proc_macro25IdentEECsgbWeKYPjk8w_3syn.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0117.3) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0117.3, i64 noundef range(i64 1, 0) %.sroa.7119.3, i64 noundef 1) #18, !noalias !1277
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs6et67aoV1xO_11proc_macro25IdentEECsgbWeKYPjk8w_3syn.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs6et67aoV1xO_11proc_macro25IdentEECsgbWeKYPjk8w_3syn.exit110: ; preds = %bb.au, %bb.at, %.thread, %.thread187
  %.pn101 = phi { ptr, i32 } [ %.pn186, %bb.au ], [ %lpad.thr_comm, %.thread187 ], [ %.pn186, %.thread ], [ %.pn186, %bb.at ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn11restriction10VisibilityEBF_(i32 %i.o, ptr %.sroa.470.sroa.4.0.copyload) #20
          to label %.body unwind label %bb.al

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs6et67aoV1xO_11proc_macro25IdentEECsgbWeKYPjk8w_3syn.exit: ; preds = %bb.ao, %bb.an, %bb.am, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  %i.at = icmp ne i32 %i.o, 3
  call void @llvm.assume(i1 %i.at)
  %i.au = icmp samesign ult i32 %i.o, 2
  br i1 %i.au, label %bb.ap, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn11restriction10VisibilityEBF_.exit

bb.ap:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs6et67aoV1xO_11proc_macro25IdentEECsgbWeKYPjk8w_3syn.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.470.sroa.4.0.copyload) ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4path4PathEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.sroa.470.sroa.4.0.copyload)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn11restriction13VisRestrictedEBF_.exit.i unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.470.sroa.4.0.copyload, i64 noundef 48, i64 noundef 8) #18
  br label %.body

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn11restriction13VisRestrictedEBF_.exit.i: ; preds = %bb.ap
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.470.sroa.4.0.copyload, i64 noundef 48, i64 noundef 8) #18
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn11restriction10VisibilityEBF_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn11restriction10VisibilityEBF_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn11restriction13VisRestrictedEBF_.exit.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs6et67aoV1xO_11proc_macro25IdentEECsgbWeKYPjk8w_3syn.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10113)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit unwind label %bb.ar

bb.ar:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn11restriction10VisibilityEBF_.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #19
  unreachable

common.resume:                                    ; preds = %.body, %bb.ar
  %common.resume.op = phi { ptr, i32 } [ %i.aw, %bb.ar ], [ %.pn103, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn11restriction10VisibilityEBF_.exit
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
  br label %bb.ai

.thread:                                          ; preds = %bb.y, %bb.h
  %.pn186 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.h ], [ %i.ah, %bb.y ] ; 3 uses
  %.sroa.0117.0185 = phi ptr [ %.sroa.0117.1.ph, %bb.h ], [ %.sroa.0117.2, %bb.y ] ; 2 uses
  %.sroa.7119.0184 = phi i64 [ %.sroa.7119.1.ph, %bb.h ], [ %.sroa.7119.2, %bb.y ] ; 2 uses
  %.sroa.9.0183 = phi i8 [ %.sroa.9.1.ph, %bb.h ], [ %.sroa.9.2, %bb.y ] ; 2 uses
  %i.ay = icmp eq i8 %.sroa.9.0183, -1
  br i1 %i.ay, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs6et67aoV1xO_11proc_macro25IdentEECsgbWeKYPjk8w_3syn.exit110, label %bb.at

bb.at:                                            ; preds = %.thread
  %i.az = icmp eq i8 %.sroa.9.0183, 2
  %i.ba = icmp eq i64 %.sroa.7119.0184, 0
  %or.cond198 = select i1 %i.az, i1 true, i1 %i.ba
  br i1 %or.cond198, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs6et67aoV1xO_11proc_macro25IdentEECsgbWeKYPjk8w_3syn.exit110, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0117.0185) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0117.0185, i64 noundef range(i64 1, 0) %.sroa.7119.0184, i64 noundef 1) #18, !noalias !1284
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs6et67aoV1xO_11proc_macro25IdentEECsgbWeKYPjk8w_3syn.exit110
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs1_NtCsgbWeKYPjk8w_3syn4dataQNtB5_6FieldsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12IntoIterator9into_iter(ptr noalias nofree noundef align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !632, !alias.scope !1291, !noundef !5
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %_RNvMNtCsgbWeKYPjk8w_3syn4dataNtB2_6Fields8iter_mut.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = tail call { ptr, ptr } @_RNvMNtCsgbWeKYPjk8w_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4data5FieldNtNtB4_5token5CommaE8iter_mutB4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
  br label %_RNvMNtCsgbWeKYPjk8w_3syn4dataNtB2_6Fields8iter_mut.exit

_RNvMNtCsgbWeKYPjk8w_3syn4dataNtB2_6Fields8iter_mut.exit: ; preds = %bb.a, %.sink.split.i
  %.merged.i = phi { ptr, ptr } [ { ptr inttoptr (i64 1 to ptr), ptr @7 }, %bb.a ], [ %i.d, %.sink.split.i ]
  ret { ptr, ptr } %.merged.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtNtCsgbWeKYPjk8w_3syn4data8printingNtB7_5FieldNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(512) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.e = load i64, ptr %i.d, align 8, !noundef !5
  %i.f = getelementptr inbounds nuw [248 x i8], ptr %i.c, i64 %i.e
  tail call void @_RINvNvXNtCs6p3UlaoheVH_5quote3extNtCs6et67aoV1xO_11proc_macro211TokenStreamNtB5_14TokenStreamExt10append_all13do_append_allINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB2H_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 456
  tail call void @_RNvXNtNtCsgbWeKYPjk8w_3syn11restriction8printingNtB4_10VisibilityNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.i = load i8, ptr %i.h, align 8, !range !18, !noundef !5
  %.not = icmp eq i8 %i.i, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 488
  tail call void @_RNvXsq_NtCs6p3UlaoheVH_5quote9to_tokensNtCs6et67aoV1xO_11proc_macro25IdentNtB5_8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 448
  store ptr %i.k, ptr %i.a, align 8
  call void @_RNvXNtCsgbWeKYPjk8w_3syn5printINtB2_15TokensOrDefaultNtNtB4_5token5ColonENtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokensB4_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @_RNvXNtCsgbWeKYPjk8w_3syn2tyNtB2_4TypeNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !range !28, !noundef !5
  %.not1 = icmp eq i64 %i.m, -1
  br i1 %.not1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 272
  call void @_RNvXs7p_NtCsgbWeKYPjk8w_3syn5tokenNtB6_2EqNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  call void @_RNvXsc_NtCsgbWeKYPjk8w_3syn4exprNtB5_4ExprNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter7sources5emptyINtB5_5EmptyQNtNtCsgbWeKYPjk8w_3syn4data5FieldENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB14_(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter7sources5emptyINtB5_5EmptyRNtNtCsgbWeKYPjk8w_3syn4data5FieldENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB14_(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret i64 0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1k_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtBa_4data7VariantNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([280 x i8]) align 8 captures(none) dereferenceable(280) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(280) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [176 x i8], align 16              ; 6 uses
  %.sroa.5 = alloca [160 x i8], align 8           ; 4 uses
  %i.d = alloca [56 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBJ_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.i = load i8, ptr %i.h, align 8, !range !52, !noundef !5 ; 2 uses
  %.not = icmp eq i8 %i.i, 2                      ; 2 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = invoke { ptr, i64 } @_RNvXsf_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %bb.i unwind label %bb.c       ; 2 uses

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit: ; preds = %bb.k, %bb.j, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %i.k, %bb.c ], [ %.pn, %bb.j ], [ %.pn, %bb.k ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #20
          to label %bb.q unwind label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %i.g, align 8, !alias.scope !1294, !noalias !1297
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.m = load i8, ptr %i.l, align 8, !range !1299, !alias.scope !1294, !noalias !1297, !noundef !5
  %i.n = inttoptr i64 %.val.i to ptr
  %.sroa.05.sroa.5.0.insert.ext = zext nneg i8 %i.m to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %bb.d
  %.sroa.05.sroa.5.0 = phi i64 [ %i.y, %bb.i ], [ %.sroa.05.sroa.5.0.insert.ext, %bb.d ] ; 3 uses
  %.sroa.05.sroa.0.0 = phi ptr [ %i.x, %bb.i ], [ %i.n, %bb.d ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !1300)
  call void @llvm.experimental.noalias.scope.decl(metadata !1303)
  %i.o = load i64, ptr %1, align 8, !range !632, !alias.scope !1303, !noalias !1300, !noundef !5
  switch i64 %i.o, label %default.unreachable [
    i64 0, label %bb.f
    i64 1, label %bb.g
    i64 2, label %bb.h
  ]

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1305
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.r, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.q, i64 12, i1 false), !alias.scope !1306, !noalias !1300
  invoke void @_RNvXs_NtCsgbWeKYPjk8w_3syn10punctuatedINtB4_10PunctuatedNtNtB6_4data5FieldNtNtB6_5token5CommaENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB6_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.p)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !noalias !1303
  store i64 0, ptr %i.d, align 8, !alias.scope !1300, !noalias !1303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1305
  br label %_RNvXsy_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4data6FieldsNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit

bb.g:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1305
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.v, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.u, i64 12, i1 false), !alias.scope !1310, !noalias !1300
  invoke void @_RNvXs_NtCsgbWeKYPjk8w_3syn10punctuatedINtB4_10PunctuatedNtNtB6_4data5FieldNtNtB6_5token5CommaENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB6_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.t)
          to label %.noexc22 unwind label %bb.l

.noexc22:                                         ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !1303
  store i64 1, ptr %i.d, align 8, !alias.scope !1300, !noalias !1303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1305
  br label %_RNvXsy_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4data6FieldsNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit

bb.h:                                             ; preds = %bb.e
  store i64 2, ptr %i.d, align 8, !alias.scope !1300, !noalias !1303
  br label %_RNvXsy_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4data6FieldsNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit

bb.i:                                             ; preds = %bb.b
  %i.x = extractvalue { ptr, i64 } %i.j, 0
  %i.y = extractvalue { ptr, i64 } %i.j, 1
  br label %bb.e

bb.j:                                             ; preds = %bb.o, %bb.l
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.o ], [ %i.aa, %bb.l ] ; 2 uses
  %i.z = icmp eq i64 %.sroa.05.sroa.5.0, 0
  %or.cond = select i1 %.not, i1 true, i1 %i.z
  br i1 %or.cond, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.sroa.0.0) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.05.sroa.0.0, i64 noundef range(i64 1, 0) %.sroa.05.sroa.5.0, i64 noundef 1) #18, !noalias !1314
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit

bb.l:                                             ; preds = %bb.g, %bb.f
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

_RNvXsy_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4data6FieldsNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit: ; preds = %bb.h, %.noexc22, %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !range !28, !noundef !5
  %.not19 = icmp eq i64 %i.ac, -1
  br i1 %.not19, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_RNvXsy_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4data6FieldsNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !1319)
  call void @llvm.experimental.noalias.scope.decl(metadata !1322)
  %.val.i23 = load i32, ptr %i.ad, align 8, !alias.scope !1322, !noalias !1319
  store i32 %.val.i23, ptr %i.c, align 16, !alias.scope !1319, !noalias !1322
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  invoke void @_RNvXsf_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4expr4ExprNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.ab)
          to label %_RNvYTNtNtCsgbWeKYPjk8w_3syn5token2EqNtNtB7_4expr4ExprENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB7_.exit unwind label %bb.o

bb.n:                                             ; preds = %_RNvXsy_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4data6FieldsNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit, %_RNvYTNtNtCsgbWeKYPjk8w_3syn5token2EqNtNtB7_4expr4ExprENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB7_.exit
  %i.af = phi <2 x i64> [ <i64 undef, i64 -1>, %_RNvXsy_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4data6FieldsNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit ], [ %i.ak, %_RNvYTNtNtCsgbWeKYPjk8w_3syn5token2EqNtNtB7_4expr4ExprENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB7_.exit ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr %.sroa.05.sroa.0.0, ptr %i.ah, align 8
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 %.sroa.05.sroa.5.0, ptr %.sroa.525.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i8 %i.i, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x i64> %i.af, ptr %i.ai, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.5, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.o:                                             ; preds = %bb.m
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4data6FieldsEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.d) #20
          to label %bb.j unwind label %bb.p

_RNvYTNtNtCsgbWeKYPjk8w_3syn5token2EqNtNtB7_4expr4ExprENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB7_.exit: ; preds = %bb.m
  %i.ak = load <2 x i64>, ptr %i.c, align 16
  %.sroa.5.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.5, ptr noundef nonnull align 16 dereferenceable(160) %.sroa.5.0..sroa_idx4, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.n

bb.p:                                             ; preds = %bb.o, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.q:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtCsgbWeKYPjk8w_3syn4dataNtB5_7MembersNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((16, 17)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef align 8 ptr @_RNvXsp_NtCsgbWeKYPjk8w_3syn10punctuatedINtB5_4IterNtNtB7_4data5FieldENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1) ; 6 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 488 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 504 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !18, !noundef !5
  switch i8 %i.d, label %bb.f [
    i8 -1, label %bb.d
    i8 2, label %bb.g
  ]

bb.c:                                             ; preds = %bb.a, %bb.e
  %.sroa.49.0.sink = phi i8 [ %.sroa.48.0, %bb.e ], [ -2, %bb.a ]
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.49.0.sink, ptr %.sroa.49.0..sroa_idx, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  %i.e = tail call noundef i32 @_RNvXNtCsgbWeKYPjk8w_3syn7spannedNtNtB4_2ty4TypeNtB2_7Spanned4spanB4_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i32, ptr %i.f, align 8, !noundef !5
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.g, %bb.d
  %.sroa.4.sroa.0.0 = phi i64 [ undef, %bb.d ], [ %i.m, %bb.f ], [ %.sroa.621.0.insert.ext, %bb.g ]
  %.sroa.48.0 = phi i8 [ -1, %bb.d ], [ %i.n, %bb.f ], [ 2, %bb.g ]
  %.sroa.3.0 = phi i32 [ %i.e, %bb.d ], [ %.sroa.028.4.extract.trunc, %bb.f ], [ %.val1.i, %bb.g ]
  %.sroa.03.0 = phi i32 [ %i.g, %bb.d ], [ %.sroa.028.0.extract.trunc, %bb.f ], [ %.val.i, %bb.g ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !noundef !5
  %i.j = add i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 8
  store i32 %.sroa.03.0, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.3.0, ptr %.sroa.3.0..sroa_idx, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.sroa.0.0, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.c

bb.f:                                             ; preds = %bb.b
  %i.k = tail call { ptr, i64 } @_RNvXsf_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b) ; 2 uses
  %i.l = extractvalue { ptr, i64 } %i.k, 0
  %i.m = extractvalue { ptr, i64 } %i.k, 1
  %i.n = load i8, ptr %i.c, align 8, !range !1299, !noundef !5
  %i.o = ptrtoint ptr %i.l to i64                 ; 2 uses
  %.sroa.028.0.extract.trunc = trunc i64 %i.o to i32
  %.sroa.028.4.extract.shift = lshr i64 %i.o, 32
  %.sroa.028.4.extract.trunc = trunc nuw i64 %.sroa.028.4.extract.shift to i32
  br label %bb.e

bb.g:                                             ; preds = %bb.b
  %.val.i = load i32, ptr %i.b, align 8, !range !1324, !alias.scope !1325, !noalias !1328, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 496
  %i.q = load i8, ptr %i.p, align 8, !range !1299, !alias.scope !1325, !noalias !1328, !noundef !5
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 492
  %.val1.i = load i32, ptr %i.r, align 4, !range !1324, !alias.scope !1325, !noalias !1328, !noundef !5
  %.sroa.621.0.insert.ext = zext nneg i8 %i.q to i64
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtCsgbWeKYPjk8w_3syn4dataNtB5_7MembersNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 20)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !align !6, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !5, !nonnull !5
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef nonnull %i.a) #24 ; 2 uses
  %i.g = extractvalue { ptr, ptr } %i.f, 0
  %i.h = extractvalue { ptr, ptr } %i.f, 1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i32, ptr %i.i, align 8, !noundef !5
  store ptr %i.g, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.j, ptr %i.l, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs6_NtCsgbWeKYPjk8w_3syn4dataNtB5_6FieldsNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !632, !noundef !5
  switch i64 %i.a, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_RINvMscu_NtCsgbWeKYPjk8w_3syn5tokenNtB7_5Brace8surroundNCNvXs_NtNtB9_4data8printingNtB10_11FieldsNamedNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens0EB9_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_RINvMscE_NtCsgbWeKYPjk8w_3syn5tokenNtB7_5Paren8surroundNCNvXs0_NtNtB9_4data8printingNtB11_13FieldsUnnamedNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens0EB9_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsA_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4data13FieldsUnnamedNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((32, 44)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.a, i64 12, i1 false)
  tail call void @_RNvXs_NtCsgbWeKYPjk8w_3syn10punctuatedINtB4_10PunctuatedNtNtB6_4data5FieldNtNtB6_5token5CommaENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB6_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCsj6eKBz9Db1c_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1330, !noundef !5 ; 4 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048           ; 2 uses
  %i.f = icmp samesign ult i32 %1, 65536          ; 2 uses
  %..i = select i1 %i.f, i64 3, i64 4
  %.sroa.0.0.ph.i = select i1 %i.e, i64 2, i64 %..i
  tail call void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.ph.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !1330, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b ; 9 uses
  %i.j = trunc i32 %1 to i8
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128                ; 3 uses
  %i.m = lshr i32 %1, 6
  %i.n = trunc i32 %i.m to i8                     ; 2 uses
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 2 uses
  %i.q = lshr i32 %1, 12
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128
  %i.u = lshr i32 %1, 18
  %i.v = trunc nuw nsw i32 %i.u to i8
  %i.w = or disjoint i8 %i.v, -16
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !1330, !nonnull !5, !noundef !5
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.b
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.z, align 1
  br label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String4push.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = or disjoint i8 %i.n, -64
  store i8 %i.ab, ptr %i.i, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.l, ptr %i.ac, align 1
  br label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String4push.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = or disjoint i8 %i.r, -32
  store i8 %i.ad, ptr %i.i, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.p, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.l, ptr %i.af, align 1
  br label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.w, ptr %i.i, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.t, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.p, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.l, ptr %i.ai, align 1
  br label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String4push.exit

_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.03.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.aj = add nuw i64 %.sroa.0.03.i, %i.b
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !1330
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  tail call void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !1333
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1336, !noalias !1333, !noundef !5 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1336, !noalias !1333, !nonnull !5, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !1336, !noalias !1333
  br label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !1336, !noalias !1333
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtCsgbWeKYPjk8w_3syn4dataNtB4_6FieldsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12IntoIterator9into_iter(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
end_hunk_2
begin_hunk_3_@_RNvXss_NtCs6et67aoV1xO_11proc_macro23impNtB5_5IdentINtNtCsj6eKBz9Db1c_4core3cmp9PartialEqReE2eqCsgbWeKYPjk8w_3syn:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1413
  store i64 0, ptr %i.c, align 8, !noalias !1413
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1413
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1413
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1413
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.i, align 8, !noalias !1413
  store ptr %i.c, ptr %i.b, align 8, !noalias !1413
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @15, ptr %i.j, align 8, !noalias !1413
  %i.k = invoke noundef zeroext i1 @_RNvXsN_Cs3b5wA5ywLsd_10proc_macroNtB5_5IdentNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.e unwind label %bb.d, !noalias !1417

bb.d:                                             ; preds = %bb.f, %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #20
          to label %common.resume unwind label %bb.g, !noalias !1417

bb.e:                                             ; preds = %bb.c
  br i1 %i.k, label %bb.f, label %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtCs3b5wA5ywLsd_10proc_macro5IdentNtB5_12SpecToString14spec_to_stringCsgbWeKYPjk8w_3syn.exit, !prof !974

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #23
          to label %.noexc.i unwind label %bb.d, !noalias !1417

.noexc.i:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #19, !noalias !1417
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.d ], [ %i.t, %bb.j ]
  resume { ptr, i32 } %common.resume.op

_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtCs3b5wA5ywLsd_10proc_macro5IdentNtB5_12SpecToString14spec_to_stringCsgbWeKYPjk8w_3syn.exit: ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !1418
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1413
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noundef !5
  %i.p = icmp eq i64 %i.o, %.val1
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtCs3b5wA5ywLsd_10proc_macro5IdentNtB5_12SpecToString14spec_to_stringCsgbWeKYPjk8w_3syn.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !5, !noundef !5
  %bcmp = call i32 @bcmp(ptr nonnull %i.r, ptr nonnull %.val, i64 %.val1)
  %i.s = icmp eq i32 %bcmp, 0
  br label %bb.i

bb.i:                                             ; preds = %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtCs3b5wA5ywLsd_10proc_macro5IdentNtB5_12SpecToString14spec_to_stringCsgbWeKYPjk8w_3syn.exit, %bb.h
  %.sroa.0.0 = phi i1 [ %i.s, %bb.h ], [ false, %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtCs3b5wA5ywLsd_10proc_macro5IdentNtB5_12SpecToString14spec_to_stringCsgbWeKYPjk8w_3syn.exit ]
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsgbWeKYPjk8w_3syn.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsgbWeKYPjk8w_3syn.exit: ; preds = %bb.i
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.l

bb.l:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsgbWeKYPjk8w_3syn.exit, %bb.b
  %.sroa.0.1 = phi i1 [ %i.h, %bb.b ], [ %.sroa.0.0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsgbWeKYPjk8w_3syn.exit ]
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsv_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4data5FieldNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([512 x i8]) align 8 captures(none) dereferenceable(512) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(512) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [176 x i8], align 16              ; 6 uses
  %.sroa.55 = alloca [160 x i8], align 8          ; 4 uses
  %i.b = alloca [248 x i8], align 8               ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 248
  call void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBJ_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 456
  invoke void @_RNvXs1m_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtBa_11restriction10VisibilityNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f)
          to label %bb.e unwind label %bb.c

bb.b:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs6et67aoV1xO_11proc_macro25IdentEECsgbWeKYPjk8w_3syn.exit, %bb.c
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs6et67aoV1xO_11proc_macro25IdentEECsgbWeKYPjk8w_3syn.exit ], [ %i.g, %bb.c ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #20
          to label %bb.s unwind label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs6et67aoV1xO_11proc_macro25IdentEECsgbWeKYPjk8w_3syn.exit: ; preds = %bb.l, %bb.k, %bb.j, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.i, %bb.d ], [ %.pn, %bb.j ], [ %.pn, %bb.k ], [ %.pn, %bb.l ]
  %.val = load i32, ptr %i.c, align 8, !range !11, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val30.a = load ptr, ptr %i.h, align 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn11restriction10VisibilityEBF_(i32 %.val, ptr %.val30.a) #20
          to label %bb.b unwind label %bb.r

bb.d:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs6et67aoV1xO_11proc_macro25IdentEECsgbWeKYPjk8w_3syn.exit

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 488 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 504
  %i.l = load i8, ptr %i.k, align 8, !range !18, !noundef !5 ; 4 uses
  switch i8 %i.l, label %bb.g [
    i8 -1, label %bb.f
    i8 2, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e, %bb.h, %bb.i
  %.sroa.5.037 = phi i64 [ undef, %bb.e ], [ %i.u, %bb.i ], [ %.sroa.07.sroa.5.0.insert.ext, %bb.h ] ; 3 uses
  %.sroa.0.036 = phi ptr [ undef, %bb.e ], [ %i.t, %bb.i ], [ %i.s, %bb.h ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.n = load i32, ptr %i.m, align 8, !range !430, !noundef !5 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 452
  %.val31 = load i32, ptr %i.o, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXs11_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtBa_2ty4TypeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([248 x i8]) align 8 captures(none) dereferenceable(248) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %1)
          to label %bb.n unwind label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.p = invoke { ptr, i64 } @_RNvXsf_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j)
          to label %bb.i unwind label %bb.d       ; 2 uses

bb.h:                                             ; preds = %bb.e
  %.val.i = load i64, ptr %i.j, align 8, !alias.scope !1419, !noalias !1422
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 496
  %i.r = load i8, ptr %i.q, align 8, !range !1299, !alias.scope !1419, !noalias !1422, !noundef !5
  %i.s = inttoptr i64 %.val.i to ptr
  %.sroa.07.sroa.5.0.insert.ext = zext nneg i8 %i.r to i64
  br label %bb.f

bb.i:                                             ; preds = %bb.g
  %i.t = extractvalue { ptr, i64 } %i.p, 0
  %i.u = extractvalue { ptr, i64 } %i.p, 1
  br label %bb.f

bb.j:                                             ; preds = %bb.q, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.q ], [ %i.y, %bb.m ] ; 3 uses
  %i.v = icmp eq i8 %i.l, -1
  br i1 %i.v, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs6et67aoV1xO_11proc_macro25IdentEECsgbWeKYPjk8w_3syn.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = icmp eq i8 %i.l, 2
  %i.x = icmp eq i64 %.sroa.5.037, 0
  %or.cond = select i1 %i.w, i1 true, i1 %i.x
  br i1 %or.cond, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs6et67aoV1xO_11proc_macro25IdentEECsgbWeKYPjk8w_3syn.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.036) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.036, i64 noundef range(i64 1, 0) %.sroa.5.037, i64 noundef 1) #18, !noalias !1424
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs6et67aoV1xO_11proc_macro25IdentEECsgbWeKYPjk8w_3syn.exit

bb.m:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.n:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.55)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !range !28, !noundef !5
  %.not26 = icmp eq i64 %i.aa, -1
  br i1 %.not26, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !1431)
  call void @llvm.experimental.noalias.scope.decl(metadata !1434)
  %.val.i32 = load i32, ptr %i.ab, align 8, !alias.scope !1434, !noalias !1431
  store i32 %.val.i32, ptr %i.a, align 16, !alias.scope !1431, !noalias !1434
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  invoke void @_RNvXsf_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4expr4ExprNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.z)
          to label %_RNvYTNtNtCsgbWeKYPjk8w_3syn5token2EqNtNtB7_4expr4ExprENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB7_.exit unwind label %bb.q

bb.p:                                             ; preds = %bb.n, %_RNvYTNtNtCsgbWeKYPjk8w_3syn5token2EqNtNtB7_4expr4ExprENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB7_.exit
  %i.ad = phi <2 x i64> [ <i64 undef, i64 -1>, %bb.n ], [ %i.al, %_RNvYTNtNtCsgbWeKYPjk8w_3syn5token2EqNtNtB7_4expr4ExprENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB7_.exit ]
  %i.ae = trunc nuw i32 %i.n to i1
  %.sroa.5.0 = select i1 %i.ae, i32 %.val31, i32 undef
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 456
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 488
  store ptr %.sroa.0.036, ptr %i.ah, align 8
  %.sroa.5.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %0, i64 496
  store i64 %.sroa.5.037, ptr %.sroa.5.0..sroa_idx33, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 504
  store i8 %i.l, ptr %.sroa.7.0..sroa_idx, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 448
  store i32 %i.n, ptr %i.ai, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 452
  store i32 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(248) %i.b, i64 248, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 272
  store <2 x i64> %i.ad, ptr %i.aj, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.55.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.55, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.55)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.q:                                             ; preds = %bb.o
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty4TypeEBF_(ptr noalias nofree noundef align 8 dereferenceable(248) %i.b) #20
          to label %bb.j unwind label %bb.r

_RNvYTNtNtCsgbWeKYPjk8w_3syn5token2EqNtNtB7_4expr4ExprENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB7_.exit: ; preds = %bb.o
  %i.al = load <2 x i64>, ptr %i.a, align 16
  %.sroa.55.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.55, ptr noundef nonnull align 16 dereferenceable(160) %.sroa.55.0..sroa_idx6, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.p

bb.r:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs6et67aoV1xO_11proc_macro25IdentEECsgbWeKYPjk8w_3syn.exit, %bb.q, %bb.b
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.s:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXsw_NtCsgbWeKYPjk8w_3syn10punctuatedINtNtNtNtCsj6eKBz9Db1c_4core4iter7sources5empty5EmptyRNtNtB7_4data5FieldEINtB5_9IterTraitB1t_E9clone_boxB7_(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  ret { ptr, ptr } { ptr inttoptr (i64 1 to ptr), ptr @5 }
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsy_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4data6FieldsNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = load i64, ptr %1, align 8, !range !632, !noundef !5
  switch i64 %i.c, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.e, i64 12, i1 false), !alias.scope !1436
  call void @_RNvXs_NtCsgbWeKYPjk8w_3syn10punctuatedINtB4_10PunctuatedNtNtB6_4data5FieldNtNtB6_5token5CommaENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB6_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.i, i64 12, i1 false), !alias.scope !1440
  call void @_RNvXs_NtCsgbWeKYPjk8w_3syn10punctuatedINtB4_10PunctuatedNtNtB6_4data5FieldNtNtB6_5token5CommaENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB6_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.h)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  store i64 2, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsz_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4data11FieldsNamedNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((32, 44)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.a, i64 12, i1 false)
  tail call void @_RNvXs_NtCsgbWeKYPjk8w_3syn10punctuatedINtB4_10PunctuatedNtNtB6_4data5FieldNtNtB6_5token5CommaENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB6_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter7sources5empty5EmptyQNtNtCsgbWeKYPjk8w_3syn4data5FieldENtNtNtB9_6traits10exact_size17ExactSizeIterator8is_emptyBY_(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 true
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter7sources5empty5EmptyQNtNtCsgbWeKYPjk8w_3syn4data5FieldENtNtNtB9_6traits12double_ended19DoubleEndedIterator15advance_back_byBY_(ptr noalias nofree nonnull readnone captures(none) %0, i64 noundef returned %1) unnamed_addr #5 {
bb.a:
  ret i64 %1
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noalias noundef align 8 ptr @_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter7sources5empty5EmptyQNtNtCsgbWeKYPjk8w_3syn4data5FieldENtNtNtB9_6traits12double_ended19DoubleEndedIterator8nth_backBY_(ptr noalias nofree nonnull readnone captures(none) %0, i64 %1) unnamed_addr #5 {
bb.a:
  ret ptr null
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter7sources5empty5EmptyQNtNtCsgbWeKYPjk8w_3syn4data5FieldENtNtNtB9_6traits8iterator8Iterator10advance_byBY_(ptr noalias nofree nonnull readnone captures(none) %0, i64 noundef returned %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  ret i64 %1
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noalias noundef align 8 ptr @_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter7sources5empty5EmptyQNtNtCsgbWeKYPjk8w_3syn4data5FieldENtNtNtB9_6traits8iterator8Iterator3nthBY_(ptr noalias nofree nonnull readnone captures(none) %0, i64 %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  ret ptr null
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter7sources5empty5EmptyRNtNtCsgbWeKYPjk8w_3syn4data5FieldENtNtNtB9_6traits10exact_size17ExactSizeIterator8is_emptyBY_(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i1 true
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter7sources5empty5EmptyRNtNtCsgbWeKYPjk8w_3syn4data5FieldENtNtNtB9_6traits12double_ended19DoubleEndedIterator15advance_back_byBY_(ptr noalias nofree nonnull readnone captures(none) %0, i64 noundef returned %1) unnamed_addr #5 {
bb.a:
  ret i64 %1
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noalias noundef align 8 ptr @_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter7sources5empty5EmptyRNtNtCsgbWeKYPjk8w_3syn4data5FieldENtNtNtB9_6traits12double_ended19DoubleEndedIterator8nth_backBY_(ptr noalias nofree nonnull readnone captures(none) %0, i64 %1) unnamed_addr #5 {
bb.a:
  ret ptr null
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter7sources5empty5EmptyRNtNtCsgbWeKYPjk8w_3syn4data5FieldENtNtNtB9_6traits8iterator8Iterator10advance_byBY_(ptr noalias nofree nonnull readnone captures(none) %0, i64 noundef returned %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  ret i64 %1
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noalias noundef align 8 ptr @_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter7sources5empty5EmptyRNtNtCsgbWeKYPjk8w_3syn4data5FieldENtNtNtB9_6traits8iterator8Iterator3nthBY_(ptr noalias nofree nonnull readnone captures(none) %0, i64 %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
_RNvXs_NvNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_fmtQNtNtCs4wP2HXfJTCR_5alloc6string6StringNtB4_12SpecWriteFmt14spec_write_fmtCsgbWeKYPjk8w_3syn.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @15, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !1444
  ret i1 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RINvMsP_Cs3b5wA5ywLsd_10proc_macroNtB6_7Literal7subspanINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtCs3b5wA5ywLsd_10proc_macro9TokenTreeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

end_hunk_3

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/syn-rs/original/syn-2b0ecb81dd371323.syn.bc9ad91376fc82fa-cgu.09?download=true
inline.NumInlined: 538
inline.NumDeleted: 192
begin_hunk_0_@_RNvNtNtCsgbWeKYPjk8w_3syn6derive7parsing11data_struct:bb.a
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.m, i8 0, i64 16, i1 false), !alias.scope !1259
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1259
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 7 uses
  store i64 0, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 -1, ptr %i.l, align 8
  %i.u = invoke noundef zeroext i1 @_RINvMNtCsgbWeKYPjk8w_3syn9lookaheadNtB3_10Lookahead14peekINvNtB5_5token5WhereNtB3_11TokenMarkerEEB5_(ptr noundef nonnull align 8 %i.m)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_4data5FieldNtNtBG_5token5CommaEEBG_.exit.i164, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_4data5FieldNtNtBG_5token5CommaEEBG_.exit.i, %bb.w, %bb.v, %bb.t, %bb.s, %bb.q, %bb.o, %bb.n, %bb.d, %bb.a
  %.sroa.098.1 = phi i1 [ true, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_4data5FieldNtNtBG_5token5CommaEEBG_.exit.i164 ], [ false, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_4data5FieldNtNtBG_5token5CommaEEBG_.exit.i ], [ true, %bb.q ], [ true, %bb.t ], [ true, %bb.w ], [ false, %bb.v ], [ true, %bb.s ], [ true, %bb.n ], [ true, %bb.o ], [ true, %bb.a ], [ true, %bb.d ]
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body159

bb.c:                                             ; preds = %bb.a
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_8generics11WhereClauseEB8_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.k, ptr noundef nonnull align 8 %1)
          to label %bb.f unwind label %bb.b

bb.e:                                             ; preds = %bb.c, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn9lookahead10Lookahead1EBF_.exit
  %i.w = load i64, ptr %i.l, align 8, !range !91, !noundef !5
  %.not = icmp eq i64 %i.w, -1
  br i1 %.not, label %bb.o, label %bb.n

bb.f:                                             ; preds = %bb.d
  %i.x = load i64, ptr %i.k, align 8, !range !91, !noundef !5 ; 3 uses
  %i.y = icmp eq i64 %i.x, -1
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  br label %bb.bu

bb.h:                                             ; preds = %bb.f
  %.sroa.5102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.5102.0.copyload = load i64, ptr %.sroa.5102.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics11WhereClauseEEB11_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.l)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          cleanup
  store i64 %i.x, ptr %i.l, align 8
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.68.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i64 %.sroa.5102.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8
  br label %.body159

bb.j:                                             ; preds = %bb.h
  store i64 %i.x, ptr %i.l, align 8
  %.sroa.68.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.68.0..sroa_idx9, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  %.sroa.7.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i64 %.sroa.5102.0.copyload, ptr %.sroa.7.0..sroa_idx10, align 8
  %i.ac = load i32, ptr %i.n, align 8, !noalias !1262, !noundef !5 ; 2 uses
  %i.ad = load ptr, ptr %1, align 8, !noalias !1262, !noundef !5 ; 2 uses
  %i.ae = load ptr, ptr %i.p, align 8, !noalias !1262, !noundef !5 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecReENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEEECsgbWeKYPjk8w_3syn.exit.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %.body unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEEECsgbWeKYPjk8w_3syn.exit.i: ; preds = %bb.j
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn9lookahead10Lookahead1EBF_.exit unwind label %bb.m

bb.m:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEEECsgbWeKYPjk8w_3syn.exit.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.k, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.ai, %bb.m ], [ %i.ag, %bb.k ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8
  store i64 0, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8
  store ptr %i.ad, ptr %i.r, align 8
  store ptr %i.ae, ptr %i.s, align 8
  store i32 %i.ac, ptr %i.q, align 8
  br label %.body159

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn9lookahead10Lookahead1EBF_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEEECsgbWeKYPjk8w_3syn.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8
  store i64 0, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8
  store ptr %i.ad, ptr %i.r, align 8
  store ptr %i.ae, ptr %i.s, align 8
  store i32 %i.ac, ptr %i.q, align 8
  br label %bb.e

bb.n:                                             ; preds = %bb.p, %bb.e
  %i.aj = invoke noundef zeroext i1 @_RINvMNtCsgbWeKYPjk8w_3syn9lookaheadNtB3_10Lookahead14peekINvNtB5_5token5BraceNtB3_11TokenMarkerEEB5_(ptr noundef nonnull align 8 %i.m)
          to label %bb.r unwind label %bb.b

bb.o:                                             ; preds = %bb.e
  %i.ak = invoke noundef zeroext i1 @_RINvMNtCsgbWeKYPjk8w_3syn9lookaheadNtB3_10Lookahead14peekINvNtB5_5token5ParenNtB3_11TokenMarkerEEB5_(ptr noundef nonnull align 8 %i.m)
          to label %bb.p unwind label %bb.b

bb.p:                                             ; preds = %bb.o
  br i1 %i.ak, label %bb.q, label %bb.n

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.614)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_4data13FieldsUnnamedEB8_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.i, ptr noundef nonnull align 8 %1)
          to label %bb.ai unwind label %bb.b

bb.r:                                             ; preds = %bb.n
  br i1 %i.aj, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.al = invoke noundef zeroext i1 @_RINvMNtCsgbWeKYPjk8w_3syn9lookaheadNtB3_10Lookahead14peekINvNtB5_5token4SemiNtB3_11TokenMarkerEEB5_(ptr noundef nonnull align 8 %i.m)
          to label %bb.u unwind label %bb.b

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.658)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_4data11FieldsNamedEB8_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.d, ptr noundef nonnull align 8 %1)
          to label %bb.ac unwind label %bb.b

bb.u:                                             ; preds = %bb.s
  br i1 %i.al, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 56, i1 false)
  invoke void @_RNvMNtCsgbWeKYPjk8w_3syn9lookaheadNtB2_10Lookahead15error(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.a)
          to label %bb.x unwind label %bb.b

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token4SemiEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %1)
          to label %bb.z unwind label %bb.b

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics11WhereClauseEEB11_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.bm

bb.y:                                             ; preds = %.body159
  br i1 %.sroa.098.0, label %bb.by, label %common.resume

.split:                                           ; preds = %bb.bu
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.z:                                             ; preds = %bb.w
  %i.an = load i64, ptr %i.c, align 8, !range !91, !noundef !5 ; 2 uses
  %.not133 = icmp eq i64 %i.an, -1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0122.0.copyload = load i32, ptr %i.ao, align 8 ; 2 uses
  br i1 %.not133, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.sroa.5128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.sroa.5131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5131.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5128.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.an, ptr %i.ap, align 8
  %.sroa.4130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.0122.0.copyload, ptr %.sroa.4130.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bu

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.593.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.593.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.l, i64 40, i1 false)
  store i64 2, ptr %0, align 8
  %.sroa.684.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 1, ptr %.sroa.684.0..sroa_idx, align 8
  %.sroa.694.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %.sroa.0122.0.copyload, ptr %.sroa.694.0..sroa_idx, align 4
  br label %bb.af

bb.ac:                                            ; preds = %bb.t
  %i.aq = load i64, ptr %i.d, align 8, !range !91, !noundef !5 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, -1
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.658, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false)
  br i1 %i.ar, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.658, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.658)
  br label %bb.bu

bb.ae:                                            ; preds = %bb.ac
  %.sroa.5121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.672.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.672.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5121.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.sroa.571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.571.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.658, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.658)
  %.sroa.773.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.773.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.l, i64 40, i1 false)
  store i64 0, ptr %0, align 8
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aq, ptr %.sroa.470.0..sroa_idx, align 8
  %.sroa.874.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %.sroa.874.0..sroa_idx, align 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ab, %bb.ae, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.au = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecReENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn9lookahead10Lookahead1EBF_.exit144 unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %common.resume unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #13
  unreachable

common.resume:                                    ; preds = %bb.y, %bb.by, %bb.bw, %bb.ag
  %common.resume.op = phi { ptr, i32 } [ %i.co, %bb.bw ], [ %i.av, %bb.ag ], [ %.pn136, %bb.y ], [ %.pn138227, %bb.by ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn9lookahead10Lookahead1EBF_.exit144: ; preds = %bb.af
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.au)
  br label %bb.bm

bb.ai:                                            ; preds = %bb.q
  %i.ax = load i64, ptr %i.i, align 8, !range !91, !noundef !5 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, -1
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.614, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false)
  br i1 %i.ay, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.614, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.614)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4data13FieldsUnnamedEBF_.exit169

bb.ak:                                            ; preds = %.body156, %bb.aw, %.body149, %bb.al
  %.sroa.098.5 = phi i1 [ %.sroa.098.6, %bb.al ], [ true, %.body156 ], [ true, %bb.aw ], [ true, %.body149 ]
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.al ], [ %eh.lpad-body157, %.body156 ], [ %i.bp, %bb.aw ], [ %eh.lpad-body150, %.body149 ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4data13FieldsUnnamedEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.j) #14
          to label %.body159 unwind label %bb.bt

bb.al:                                            ; preds = %bb.bd, %bb.bc, %bb.as, %bb.ar, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn9lookahead10Lookahead1EBF_.exit151
  %.sroa.098.6 = phi i1 [ true, %bb.bd ], [ false, %bb.bc ], [ true, %bb.as ], [ true, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn9lookahead10Lookahead1EBF_.exit151 ], [ true, %bb.ar ]
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.am:                                            ; preds = %bb.ai
  %.sroa.5105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5105.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.614, i64 24, i1 false)
  store i64 %i.ax, ptr %i.j, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.614)
  %i.bc = load i32, ptr %i.n, align 8, !noalias !1265, !noundef !5 ; 2 uses
  %i.bd = load ptr, ptr %1, align 8, !noalias !1265, !noundef !5 ; 2 uses
  %i.be = load ptr, ptr %i.p, align 8, !noalias !1265, !noundef !5 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 6 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecReENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEEECsgbWeKYPjk8w_3syn.exit.i148 unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %.body149 unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEEECsgbWeKYPjk8w_3syn.exit.i148: ; preds = %bb.am
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn9lookahead10Lookahead1EBF_.exit151 unwind label %bb.ap

bb.ap:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEEECsgbWeKYPjk8w_3syn.exit.i148
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.body149

.body149:                                         ; preds = %bb.an, %bb.ap
  %eh.lpad-body150 = phi { ptr, i32 } [ %i.bi, %bb.ap ], [ %i.bg, %bb.an ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8
  store i64 0, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8
  store ptr %i.bd, ptr %i.r, align 8
  store ptr %i.be, ptr %i.s, align 8
  store i32 %i.bc, ptr %i.q, align 8
  br label %bb.ak

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn9lookahead10Lookahead1EBF_.exit151: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEEECsgbWeKYPjk8w_3syn.exit.i148
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8
  store i64 0, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8
  store ptr %i.bd, ptr %i.r, align 8
  store ptr %i.be, ptr %i.s, align 8
  store i32 %i.bc, ptr %i.q, align 8
  %i.bj = invoke noundef zeroext i1 @_RINvMNtCsgbWeKYPjk8w_3syn9lookaheadNtB3_10Lookahead14peekINvNtB5_5token5WhereNtB3_11TokenMarkerEEB5_(ptr noundef nonnull align 8 %i.m)
          to label %bb.aq unwind label %bb.al

bb.aq:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn9lookahead10Lookahead1EBF_.exit151
  br i1 %i.bj, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_8generics11WhereClauseEB8_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.h, ptr noundef nonnull align 8 %1)
          to label %bb.at unwind label %bb.al

bb.as:                                            ; preds = %bb.aq, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn9lookahead10Lookahead1EBF_.exit158
  %i.bk = invoke noundef zeroext i1 @_RINvMNtCsgbWeKYPjk8w_3syn9lookaheadNtB3_10Lookahead14peekINvNtB5_5token4SemiNtB3_11TokenMarkerEEB5_(ptr noundef nonnull align 8 %i.m)
          to label %bb.bb unwind label %bb.al

bb.at:                                            ; preds = %bb.ar
  %i.bl = load i64, ptr %i.h, align 8, !range !91, !noundef !5 ; 3 uses
  %i.bm = icmp eq i64 %i.bl, -1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.621, ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 24, i1 false)
  br i1 %i.bm, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.621, i64 24, i1 false)
  br label %bb.bn

bb.av:                                            ; preds = %bb.at
  %.sroa.5108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.5108.0.copyload = load i64, ptr %.sroa.5108.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics11WhereClauseEEB11_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.l)
          to label %bb.ax unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.bp = landingpad { ptr, i32 }
          cleanup
  store i64 %i.bl, ptr %i.l, align 8
  %.sroa.631.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.631.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.621, i64 24, i1 false)
  %.sroa.733.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i64 %.sroa.5108.0.copyload, ptr %.sroa.733.0..sroa_idx, align 8
  br label %bb.ak

bb.ax:                                            ; preds = %bb.av
  store i64 %i.bl, ptr %i.l, align 8
  %.sroa.631.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.631.0..sroa_idx32, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.621, i64 24, i1 false)
  %.sroa.733.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i64 %.sroa.5108.0.copyload, ptr %.sroa.733.0..sroa_idx34, align 8
  %i.bq = load i32, ptr %i.n, align 8, !noalias !1268, !noundef !5 ; 2 uses
  %i.br = load ptr, ptr %1, align 8, !noalias !1268, !noundef !5 ; 2 uses
  %i.bs = load ptr, ptr %i.p, align 8, !noalias !1268, !noundef !5 ; 2 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecReENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEEECsgbWeKYPjk8w_3syn.exit.i155 unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %.body156 unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEEECsgbWeKYPjk8w_3syn.exit.i155: ; preds = %bb.ax
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn9lookahead10Lookahead1EBF_.exit158 unwind label %bb.ba

bb.ba:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEEECsgbWeKYPjk8w_3syn.exit.i155
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body156

.body156:                                         ; preds = %bb.ay, %bb.ba
  %eh.lpad-body157 = phi { ptr, i32 } [ %i.bv, %bb.ba ], [ %i.bt, %bb.ay ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8
  store i64 0, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8
  store ptr %i.br, ptr %i.r, align 8
  store ptr %i.bs, ptr %i.s, align 8
  store i32 %i.bq, ptr %i.q, align 8
  br label %bb.ak

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn9lookahead10Lookahead1EBF_.exit158: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEEECsgbWeKYPjk8w_3syn.exit.i155
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8
  store i64 0, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8
  store ptr %i.br, ptr %i.r, align 8
  store ptr %i.bs, ptr %i.s, align 8
  store i32 %i.bq, ptr %i.q, align 8
  br label %bb.as

bb.bb:                                            ; preds = %bb.as
  br i1 %i.bk, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 56, i1 false)
  invoke void @_RNvMNtCsgbWeKYPjk8w_3syn9lookaheadNtB2_10Lookahead15error(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.e)
          to label %bb.be unwind label %bb.al

bb.bd:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token4SemiEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull align 8 %1)
          to label %bb.bk unwind label %bb.al

bb.be:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtCsgbWeKYPjk8w_3syn4data5FieldNtNtBK_5token5CommaEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j)
          to label %bb.bg unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNtCsgbWeKYPjk8w_3syn4data5FieldNtNtBR_5token5CommaEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j)
          to label %.body.i.i unwind label %bb.bh

bb.bg:                                            ; preds = %bb.be
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNtCsgbWeKYPjk8w_3syn4data5FieldNtNtBR_5token5CommaEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_4data5FieldNtNtBG_5token5CommaEEBG_.exit.i unwind label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.bi:                                            ; preds = %bb.bg
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.bi, %bb.bf
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.bz, %bb.bi ], [ %i.bx, %bb.bf ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.val1.i.i = load ptr, ptr %i.ca, align 8, !alias.scope !1271, !align !4, !noundef !5
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn4data5FieldEEEB1A_(ptr %.val1.i.i) #14
          to label %.body159 unwind label %bb.bj

bb.bj:                                            ; preds = %.body.i.i
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_4data5FieldNtNtBG_5token5CommaEEBG_.exit.i: ; preds = %bb.bg
  %i.cc = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.val.i.i = load ptr, ptr %i.cc, align 8, !alias.scope !1271, !align !4, !noundef !5
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn4data5FieldEEEB1A_(ptr %.val.i.i)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4data13FieldsUnnamedEBF_.exit unwind label %bb.b

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4data13FieldsUnnamedEBF_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_4data5FieldNtNtBG_5token5CommaEEBG_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics11WhereClauseEEB11_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.bm

bb.bk:                                            ; preds = %bb.bd
  %i.cd = load i64, ptr %i.g, align 8, !range !91, !noundef !5 ; 2 uses
  %.not135 = icmp eq i64 %i.cd, -1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.0109.0.copyload = load i32, ptr %i.ce, align 8 ; 2 uses
  br i1 %.not135, label %.thread, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %.sroa.5115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %.sroa.5118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5118.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5115.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cd, ptr %i.cf, align 8
  %.sroa.4117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.0109.0.copyload, ptr %.sroa.4117.0..sroa_idx, align 8
  br label %bb.bn

.thread:                                          ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.552.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.l, i64 40, i1 false)
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.451.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false)
  store i64 1, ptr %0, align 8
  %.sroa.646.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 1, ptr %.sroa.646.0..sroa_idx, align 8
  %.sroa.653.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %.sroa.0109.0.copyload, ptr %.sroa.653.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.af

bb.bm:                                            ; preds = %bb.x, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn9lookahead10Lookahead1EBF_.exit144, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4data13FieldsUnnamedEBF_.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn9lookahead10Lookahead1EBF_.exit172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret void

bb.bn:                                            ; preds = %bb.bl, %bb.au
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtCsgbWeKYPjk8w_3syn4data5FieldNtNtBK_5token5CommaEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j)
          to label %bb.bp unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNtCsgbWeKYPjk8w_3syn4data5FieldNtNtBR_5token5CommaEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j)
          to label %.body.i.i161 unwind label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNtCsgbWeKYPjk8w_3syn4data5FieldNtNtBR_5token5CommaEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_4data5FieldNtNtBG_5token5CommaEEBG_.exit.i164 unwind label %bb.br

bb.bq:                                            ; preds = %bb.bo
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.br:                                            ; preds = %bb.bp
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i161

.body.i.i161:                                     ; preds = %bb.br, %bb.bo
  %eh.lpad-body.i.i162 = phi { ptr, i32 } [ %i.ci, %bb.br ], [ %i.cg, %bb.bo ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.val1.i.i163 = load ptr, ptr %i.cj, align 8, !alias.scope !1276, !align !4, !noundef !5
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn4data5FieldEEEB1A_(ptr %.val1.i.i163) #14
          to label %.body159 unwind label %bb.bs

bb.bs:                                            ; preds = %.body.i.i161
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_4data5FieldNtNtBG_5token5CommaEEBG_.exit.i164: ; preds = %bb.bp
  %i.cl = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.val.i.i165 = load ptr, ptr %i.cl, align 8, !alias.scope !1276, !align !4, !noundef !5
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn4data5FieldEEEB1A_(ptr %.val.i.i165)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4data13FieldsUnnamedEBF_.exit169 unwind label %bb.b

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4data13FieldsUnnamedEBF_.exit169: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_4data5FieldNtNtBG_5token5CommaEEBG_.exit.i164, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.bu

bb.bt:                                            ; preds = %bb.by, %.body159, %bb.ak
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.bu:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4data13FieldsUnnamedEBF_.exit169, %bb.ad, %bb.aa, %bb.g
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics11WhereClauseEEB11_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.l)
          to label %bb.bv unwind label %.split

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecReENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cn)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn9lookahead10Lookahead1EBF_.exit172 unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cn)
          to label %common.resume unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn9lookahead10Lookahead1EBF_.exit172: ; preds = %bb.bv
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cn)
  br label %bb.bm

.body159:                                         ; preds = %.body.i.i161, %.body.i.i, %bb.b, %bb.i, %.body, %bb.ak
  %.sroa.098.0 = phi i1 [ true, %bb.i ], [ %.sroa.098.5, %bb.ak ], [ true, %.body ], [ false, %.body.i.i ], [ %.sroa.098.1, %bb.b ], [ true, %.body.i.i161 ]
  %.pn136 = phi { ptr, i32 } [ %i.ab, %bb.i ], [ %.pn, %bb.ak ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.v, %bb.b ], [ %eh.lpad-body.i.i162, %.body.i.i161 ] ; 2 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics11WhereClauseEEB11_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.l) #14
          to label %bb.y unwind label %bb.bt

bb.by:                                            ; preds = %.split, %bb.y
  %.pn138227 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %.split ], [ %.pn136, %bb.y ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn9lookahead10Lookahead1EBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.m) #14
          to label %common.resume unwind label %bb.bt
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCsgbWeKYPjk8w_3syn6derive7parsing9data_enum(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 2 uses
  %.sroa.011 = alloca [56 x i8], align 8          ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.68 = alloca [24 x i8], align 8           ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 12 uses
  %i.e = alloca [40 x i8], align 8                ; 7 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 6 uses
  %i.f = alloca [40 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB8_8generics11WhereClauseEEB8_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.e, ptr noundef nonnull align 8 %1)
  %i.g = load i64, ptr %i.e, align 8, !range !1078, !noundef !5 ; 2 uses
  %i.h = icmp eq i64 %i.g, -2
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 -1, ptr %i.j, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.y

bb.c:                                             ; preds = %bb.a
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.518.0.copyload = load i64, ptr %.sroa.518.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  store i64 %i.g, ptr %i.f, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 %.sroa.518.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvNtCsgbWeKYPjk8w_3syn5group12parse_braces(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noundef nonnull align 8 %1)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.thread30

bb.e:                                             ; preds = %bb.c
  %i.l = load i64, ptr %i.c, align 8, !range !498, !noundef !5
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 -1, ptr %i.o, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5parse11ParseBufferEBF_.exit

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 8 dereferenceable(12) %i.p, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.68)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer16parse_terminatedNtNtB8_4data7VariantINvNtB8_5token5CommaNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noundef nonnull align 8 %i.d, ptr noundef nonnull @_RNvXNtNtCsgbWeKYPjk8w_3syn4data7parsingNtB4_7VariantNtNtB6_5parse5Parse5parse)
          to label %bb.h unwind label %bb.z

bb.h:                                             ; preds = %bb.g
  %i.q = load i64, ptr %i.b, align 8, !range !91, !noundef !5 ; 2 uses
  %i.r = icmp eq i64 %i.q, -1
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.68, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.r, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.68, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 -1, ptr %i.t, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.68)
  invoke void @_RNvXNtCsgbWeKYPjk8w_3syn5parseNtB2_11ParseBufferNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %bb.m unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1281)
  call void @llvm.experimental.noalias.scope.decl(metadata !1284)
  call void @llvm.experimental.noalias.scope.decl(metadata !1287)
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !1290, !noundef !5 ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.thread30, label %bb.k

end_hunk_0

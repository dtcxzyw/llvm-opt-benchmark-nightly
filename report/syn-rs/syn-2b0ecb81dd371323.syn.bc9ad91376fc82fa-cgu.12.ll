Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/syn-rs/original/syn-2b0ecb81dd371323.syn.bc9ad91376fc82fa-cgu.12?download=true
inline.NumInlined: 183
inline.NumDeleted: 92
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4stepNCNvXNtNtB8_8lifetime7parsingNtB10_8LifetimeNtB6_5Parse5parse0B1m_EB8_:bb.a
_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsgbWeKYPjk8w_3syn.exit17.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsgbWeKYPjk8w_3syn.exit.i13.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !213
  call void @llvm.experimental.noalias.scope.decl(metadata !222)
  call void @llvm.experimental.noalias.scope.decl(metadata !225)
  call void @llvm.experimental.noalias.scope.decl(metadata !228)
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.aw = load i8, ptr %i.av, align 8, !range !161, !alias.scope !231, !noalias !213, !noundef !4
  %i.ax = icmp eq i8 %i.aw, 2
  br i1 %i.ax, label %_RNCNvXNtNtCsgbWeKYPjk8w_3syn8lifetime7parsingNtB6_8LifetimeNtNtB8_5parse5Parse5parse0B8_.exit.thread36, label %bb.s

bb.s:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsgbWeKYPjk8w_3syn.exit17.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val1.i.i.i.i = load i64, ptr %i.ay, align 8, !alias.scope !231, !noalias !213, !noundef !4 ; 2 uses
  %i.az = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.az, label %_RNCNvXNtNtCsgbWeKYPjk8w_3syn8lifetime7parsingNtB6_8LifetimeNtNtB8_5parse5Parse5parse0B8_.exit.thread36, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.val.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !231, !noalias !213, !nonnull !4, !noundef !4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i, i64 noundef 1) #18, !noalias !232
  br label %_RNCNvXNtNtCsgbWeKYPjk8w_3syn8lifetime7parsingNtB6_8LifetimeNtNtB8_5parse5Parse5parse0B8_.exit.thread36

bb.u:                                             ; preds = %bb.h
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !213
  unreachable

.thread28.i:                                      ; preds = %bb.w, %bb.v, %.thread.i, %bb.m
  %.pn23.i = phi { ptr, i32 } [ %i.ao, %bb.m ], [ %.pn24.i, %bb.w ], [ %.pn24.i, %.thread.i ], [ %.pn24.i, %bb.v ]
  resume { ptr, i32 } %.pn23.i

.thread.i:                                        ; preds = %.thread34.i, %bb.q, %bb.h, %bb.c
  %.pn24.i = phi { ptr, i32 } [ %i.ad, %bb.h ], [ %i.au, %.thread34.i ], [ %i.as, %bb.q ], [ %i.v, %bb.c ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !233)
  call void @llvm.experimental.noalias.scope.decl(metadata !236)
  call void @llvm.experimental.noalias.scope.decl(metadata !239)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.bc = load i8, ptr %i.bb, align 8, !range !161, !alias.scope !242, !noalias !213, !noundef !4
  %i.bd = icmp eq i8 %i.bc, 2
  br i1 %i.bd, label %.thread28.i, label %bb.v

bb.v:                                             ; preds = %.thread.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val1.i.i.i18.i = load i64, ptr %i.be, align 8, !alias.scope !242, !noalias !213, !noundef !4 ; 2 uses
  %i.bf = icmp eq i64 %.val1.i.i.i18.i, 0
  br i1 %i.bf, label %.thread28.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.val.i.i.i19.i = load ptr, ptr %i.g, align 8, !alias.scope !242, !noalias !213, !nonnull !4, !noundef !4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i19.i, i64 noundef range(i64 1, 0) %.val1.i.i.i18.i, i64 noundef 1) #18, !noalias !243
  br label %.thread28.i

_RNCNvXNtNtCsgbWeKYPjk8w_3syn8lifetime7parsingNtB6_8LifetimeNtNtB8_5parse5Parse5parse0B8_.exit.thread36: ; preds = %bb.t, %bb.s, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsgbWeKYPjk8w_3syn.exit17.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !213
  br label %.sink.split

_RNCNvXNtNtCsgbWeKYPjk8w_3syn8lifetime7parsingNtB6_8LifetimeNtNtB8_5parse5Parse5parse0B8_.exit: ; preds = %bb.l
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f), !noalias !213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !213
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.pre.pre = load i8, ptr %.phi.trans.insert.phi.trans.insert, align 8, !range !9 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !213
  %i.bg = icmp eq i8 %.pre.pre, -1
  br i1 %i.bg, label %bb.x, label %bb.y

.sink.split:                                      ; preds = %_RNCNvXNtNtCsgbWeKYPjk8w_3syn8lifetime7parsingNtB6_8LifetimeNtNtB8_5parse5Parse5parse0B8_.exit.thread, %_RNCNvXNtNtCsgbWeKYPjk8w_3syn8lifetime7parsingNtB6_8LifetimeNtNtB8_5parse5Parse5parse0B8_.exit.thread36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !213
  br label %bb.x

bb.x:                                             ; preds = %.sink.split, %_RNCNvXNtNtCsgbWeKYPjk8w_3syn8lifetime7parsingNtB6_8LifetimeNtNtB8_5parse5Parse5parse0B8_.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.025.0.copyload = load i64, ptr %i.bh, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bj = load <2 x ptr>, ptr %.sroa.426.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i64 %.sroa.025.0.copyload, ptr %i.bi, align 8
  store <2 x ptr> %i.bj, ptr %.sroa.429.0..sroa_idx, align 8
  br label %bb.z

bb.y:                                             ; preds = %_RNCNvXNtNtCsgbWeKYPjk8w_3syn8lifetime7parsingNtB6_8LifetimeNtNtB8_5parse5Parse5parse0B8_.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false)
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 17
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.519.0..sroa_idx, i64 7, i1 false)
  %.sroa.6.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx20, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.bl = load <2 x ptr>, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store <2 x ptr> %i.bl, ptr %1, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.pre.pre, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.6.0.copyload, ptr %.sroa.432.0..sroa_idx, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.sink = phi i64 [ 1, %bb.x ], [ 0, %bb.y ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4stepNCNvXs2_NtB8_5tokenNtB11_10UnderscoreNtB6_5Parse5parse0B1c_EB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 15 uses
  %i.d = alloca [40 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i32, ptr %i.f, align 8, !noundef !4
  %i.h = load ptr, ptr %1, align 8, !noundef !4   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !247
  call void @_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor5ident(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noundef %i.h, ptr noundef %i.j), !noalias !247
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.l = load i8, ptr %i.k, align 8, !range !9, !noalias !247, !noundef !4
  %.not.i = icmp eq i8 %i.l, -1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !247
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !247
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.n = load <2 x ptr>, ptr %i.m, align 8, !noalias !247
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !247
  store ptr @21, ptr %i.b, align 8, !noalias !247, !captures !110
  %i.o = invoke noundef zeroext i1 @_RNvXss_NtCs6et67aoV1xO_11proc_macro23impNtB5_5IdentINtNtCsj6eKBz9Db1c_4core3cmp9PartialEqRReE2eqCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %bb.g unwind label %bb.d, !noalias !247

bb.c:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit17.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !247
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !247
  call void @_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor5punct(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noundef %i.h, ptr noundef %i.j), !noalias !247
  %i.p = load i32, ptr %i.a, align 8, !range !141, !noalias !247, !noundef !4
  %cond.i = icmp eq i32 %i.p, 95
  br i1 %cond.i, label %bb.n, label %bb.o

bb.d:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !249)
  call void @llvm.experimental.noalias.scope.decl(metadata !252)
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.s = load i8, ptr %i.r, align 8, !range !161, !alias.scope !255, !noalias !247, !noundef !4
  %i.t = icmp eq i8 %i.s, 2
  br i1 %i.t, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val1.i.i.i = load i64, ptr %i.u, align 8, !alias.scope !255, !noalias !247, !noundef !4 ; 2 uses
  %i.v = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.v, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !255, !noalias !247, !nonnull !4, !noundef !4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i, i64 noundef 1) #18, !noalias !256
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit.i

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !247
  br i1 %i.o, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !257)
  call void @llvm.experimental.noalias.scope.decl(metadata !260)
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.x = load i8, ptr %i.w, align 8, !range !161, !alias.scope !263, !noalias !247, !noundef !4
  %i.y = icmp eq i8 %i.x, 2
  br i1 %i.y, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit17.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val1.i.i15.i = load i64, ptr %i.z, align 8, !alias.scope !263, !noalias !247, !noundef !4 ; 2 uses
  %i.aa = icmp eq i64 %.val1.i.i15.i, 0
  br i1 %i.aa, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit17.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val.i.i16.i = load ptr, ptr %i.c, align 8, !alias.scope !263, !noalias !247, !nonnull !4, !noundef !4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i16.i, i64 noundef range(i64 1, 0) %.val1.i.i15.i, i64 noundef 1) #18, !noalias !264
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit17.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit17.i: ; preds = %bb.j, %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !247
  br label %bb.c

bb.k:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ac = load i8, ptr %i.ab, align 8, !range !161, !noalias !247, !noundef !4
  %.not14.i = icmp eq i8 %i.ac, 2                 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !range !20, !noalias !247
  %.sroa.0.0.i = select i1 %.not14.i, i32 %i.ae, i32 0
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 %.sroa.0.0.i, ptr %i.af, align 8, !alias.scope !244, !noalias !265
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store <2 x ptr> %i.n, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !244, !noalias !265
  call void @llvm.experimental.noalias.scope.decl(metadata !266)
  call void @llvm.experimental.noalias.scope.decl(metadata !269)
  br i1 %.not14.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit20.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val1.i.i18.i = load i64, ptr %i.ag, align 8, !alias.scope !272, !noalias !247, !noundef !4 ; 2 uses
  %i.ah = icmp eq i64 %.val1.i.i18.i, 0
  br i1 %i.ah, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit20.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val.i.i19.i = load ptr, ptr %i.c, align 8, !alias.scope !272, !noalias !247, !nonnull !4, !noundef !4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i19.i, i64 noundef range(i64 1, 0) %.val1.i.i18.i, i64 noundef 1) #18, !noalias !273
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit20.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit20.i: ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !247
  br label %bb.p

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  resume { ptr, i32 } %i.q

bb.n:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !noalias !247, !noundef !4
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 %i.ak, ptr %i.al, align 8, !alias.scope !244, !noalias !265
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.am = load <2 x ptr>, ptr %i.ai, align 8, !noalias !247
  store <2 x ptr> %i.am, ptr %.sroa.44.0..sroa_idx.i, align 8, !alias.scope !244, !noalias !265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !247
  br label %bb.p

bb.o:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !247
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @_RINvNtCsgbWeKYPjk8w_3syn5error6new_atReEB4_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.an, i32 noundef %i.g, ptr noundef %i.h, ptr noundef %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 12), !noalias !265
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.023.0.copyload = load i64, ptr %i.ao, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load <2 x ptr>, ptr %.sroa.424.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store <2 x ptr> %i.ap, ptr %.sroa.427.0..sroa_idx, align 8
  br label %bb.q

bb.p:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit20.i, %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.017.0.copyload = load i64, ptr %i.aq, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5.0.extract.trunc = trunc i64 %.sroa.017.0.copyload to i32
  %i.ar = load <2 x ptr>, ptr %.sroa.418.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store <2 x ptr> %i.ar, ptr %1, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.5.0.extract.trunc, ptr %i.as, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sink = phi i64 [ %.sroa.023.0.copyload, %bb.o ], [ -1, %bb.p ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4stepNCNvXsc_B6_NtCs6et67aoV1xO_11proc_macro211TokenStreamNtB6_5Parse5parse0B14_EB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr nofree noundef nonnull align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %1, align 8, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noundef !4
  call void @_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor12token_stream(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef %i.b, ptr noundef %i.d)
  %i.e = load i64, ptr %i.a, align 8, !range !153, !noundef !4 ; 2 uses
  %i.f = icmp eq i64 %i.e, -2
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr @_RNvNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB6_6Cursor5empty11EMPTY_ENTRY, ptr %1, align 8
  store ptr @_RNvNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB6_6Cursor5empty11EMPTY_ENTRY, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  store i64 %i.e, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4stepNCNvXsd_B6_NtCs6et67aoV1xO_11proc_macro29TokenTreeNtB6_5Parse5parse0B14_EB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 4), (8, 32)) %0, ptr nofree noundef nonnull align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !noundef !4
  %i.e = load ptr, ptr %1, align 8, !noundef !4   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !274
  call void @_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor10token_tree(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef %i.e, ptr noundef %i.g), !noalias !274
  %i.h = load i32, ptr %i.a, align 8, !range !18, !noalias !274, !noundef !4
  %.not.i = icmp eq i32 %i.h, -1
  br i1 %.not.i, label %_RNCNvXsd_NtCsgbWeKYPjk8w_3syn5parseNtCs6et67aoV1xO_11proc_macro29TokenTreeNtB7_5Parse5parse0B9_.exit.thread, label %_RNCNvXsd_NtCsgbWeKYPjk8w_3syn5parseNtCs6et67aoV1xO_11proc_macro29TokenTreeNtB7_5Parse5parse0B9_.exit

_RNCNvXsd_NtCsgbWeKYPjk8w_3syn5parseNtCs6et67aoV1xO_11proc_macro29TokenTreeNtB7_5Parse5parse0B9_.exit.thread: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @_RINvNtCsgbWeKYPjk8w_3syn5error6new_atReEB4_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, i32 noundef %i.d, ptr noundef %i.e, ptr noundef %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 19)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !274
  br label %bb.b

_RNCNvXsd_NtCsgbWeKYPjk8w_3syn5parseNtCs6et67aoV1xO_11proc_macro29TokenTreeNtB7_5Parse5parse0B9_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  %.pr = load i32, ptr %i.b, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !274
  %i.j = icmp eq i32 %.pr, -1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNCNvXsd_NtCsgbWeKYPjk8w_3syn5parseNtCs6et67aoV1xO_11proc_macro29TokenTreeNtB7_5Parse5parse0B9_.exit.thread, %_RNCNvXsd_NtCsgbWeKYPjk8w_3syn5parseNtCs6et67aoV1xO_11proc_macro29TokenTreeNtB7_5Parse5parse0B9_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %_RNCNvXsd_NtCsgbWeKYPjk8w_3syn5parseNtCs6et67aoV1xO_11proc_macro29TokenTreeNtB7_5Parse5parse0B9_.exit
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.47.0..sroa_idx, i64 28, i1 false)
  %i.m = load <2 x ptr>, ptr %.sroa.58.0..sroa_idx, align 8
  store <2 x ptr> %i.m, ptr %1, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i32 [ %.pr, %bb.c ], [ -1, %bb.b ]
  store i32 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4stepNCNvXse_B6_NtCs6et67aoV1xO_11proc_macro25GroupNtB6_5Parse5parse0B14_EB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [40 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i32, ptr %i.d, align 8, !noundef !4
  %i.f = load ptr, ptr %1, align 8, !noundef !4   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !278
  call void @_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor15any_group_token(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noundef %i.f, ptr noundef %i.h), !noalias !278
  %i.i = load i32, ptr %i.b, align 8, !range !282, !noalias !278, !noundef !4
  %.not.i = icmp eq i32 %i.i, 2
  br i1 %.not.i, label %_RNCNvXse_NtCsgbWeKYPjk8w_3syn5parseNtCs6et67aoV1xO_11proc_macro25GroupNtB7_5Parse5parse0B9_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !278
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !278
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.k = load <2 x ptr>, ptr %i.j, align 8, !noalias !278
  %i.l = load ptr, ptr %i.j, align 8, !noalias !278, !noundef !4
  %i.m = load i32, ptr %i.a, align 8, !range !19, !noalias !278, !noundef !4
  %i.n = trunc nuw i32 %i.m to i1
  br i1 %i.n, label %bb.c, label %bb.d

_RNCNvXse_NtCsgbWeKYPjk8w_3syn5parseNtCs6et67aoV1xO_11proc_macro25GroupNtB7_5Parse5parse0B9_.exit.thread: ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25GroupECsgbWeKYPjk8w_3syn.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !278
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @_RINvNtCsgbWeKYPjk8w_3syn5error6new_atReEB4_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, i32 noundef %i.e, ptr noundef %i.f, ptr noundef %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 20)
  %.sroa.417.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.417.0.copyload.pre = load ptr, ptr %.sroa.417.0..sroa_idx.phi.trans.insert, align 8
  br label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = load i8, ptr %i.p, align 8, !range !21, !noalias !278, !noundef !4
  %.not1.i = icmp eq i8 %i.q, 3
  br i1 %.not1.i, label %bb.g, label %_RNCNvXse_NtCsgbWeKYPjk8w_3syn5parseNtCs6et67aoV1xO_11proc_macro25GroupNtB7_5Parse5parse0B9_.exit

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.s = load i8, ptr %i.r, align 4, !range !21, !noalias !278, !noundef !4
  %i.t = icmp eq i8 %i.s, 3
  br i1 %i.t, label %bb.e, label %_RNCNvXse_NtCsgbWeKYPjk8w_3syn5parseNtCs6et67aoV1xO_11proc_macro25GroupNtB7_5Parse5parse0B9_.exit

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !alias.scope !283, !noalias !278, !noundef !4
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25GroupECsgbWeKYPjk8w_3syn.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_RNvXs0_NtNtCs3b5wA5ywLsd_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.u), !noalias !278
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25GroupECsgbWeKYPjk8w_3syn.exit.i

bb.g:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  invoke void @_RNvXs0_NtCs6et67aoV1xO_11proc_macro28fallbackNtB5_11TokenStreamNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.x)
          to label %bb.j unwind label %bb.h, !noalias !278

bb.h:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !294)
  call void @llvm.experimental.noalias.scope.decl(metadata !297)
  call void @llvm.experimental.noalias.scope.decl(metadata !300)
  %i.z = load ptr, ptr %i.x, align 8, !alias.scope !303, !noalias !278, !nonnull !4, !noundef !4 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !noalias !308, !noundef !4
  %i.ab = add i64 %i.aa, -1                       ; 2 uses
  store i64 %i.ab, ptr %i.z, align 8, !noalias !308
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs6et67aoV1xO_11proc_macro25rcvec5RcVecNtBG_9TokenTreeEECsgbWeKYPjk8w_3syn.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeEE9drop_slowBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.x) #16
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs6et67aoV1xO_11proc_macro25rcvec5RcVecNtBG_9TokenTreeEECsgbWeKYPjk8w_3syn.exit.i.i.i.i.i unwind label %bb.l, !noalias !278

bb.j:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !309)
  call void @llvm.experimental.noalias.scope.decl(metadata !312)
end_hunk_0

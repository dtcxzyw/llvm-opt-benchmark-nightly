Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/syn-rs/original/syn-2b0ecb81dd371323.syn.bc9ad91376fc82fa-cgu.11?download=true
inline.NumInlined: 364
inline.NumDeleted: 140
begin_hunk_0_@_RNvNvMNtCsgbWeKYPjk8w_3syn3litNtB4_6LitStr10parse_with19respan_token_stream:bb.a
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro212token_stream8IntoIterECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef align 8 dereferenceable(40) %i.g) #15
          to label %bb.c unwind label %bb.ag

bb.h:                                             ; preds = %bb.f
  %i.p = load i32, ptr %i.f, align 8, !range !20, !noundef !4
  %.not = icmp eq i32 %i.p, -1
  br i1 %.not, label %bb.ab, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !626)
  call void @llvm.experimental.noalias.scope.decl(metadata !627)
  %i.q = load i32, ptr %i.e, align 8, !range !14, !alias.scope !627, !noundef !4
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !628
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !628
  invoke void @_RNvMsr_Cs6et67aoV1xO_11proc_macro2NtB5_5Group6stream(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k)
          to label %bb.n unwind label %bb.m, !noalias !626, !inline_history !595

bb.k:                                             ; preds = %bb.i
  invoke void @_RNvMsk_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTree8set_span(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e, i32 noundef %2)
          to label %bb.ae unwind label %bb.m, !noalias !626, !inline_history !595

bb.l:                                             ; preds = %.body7, %bb.m
  %.pn.i = phi { ptr, i32 } [ %i.s, %bb.m ], [ %eh.lpad-body8, %.body7 ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro29TokenTreeECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e) #15
          to label %.body unwind label %bb.aa, !noalias !626, !inline_history !595

bb.m:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25GroupECsgbWeKYPjk8w_3syn.exit, %bb.o, %bb.n, %bb.k, %bb.j
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.n:                                             ; preds = %bb.j
  invoke void @_RNvNvMNtCsgbWeKYPjk8w_3syn3litNtB4_6LitStr10parse_with19respan_token_stream(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, i32 noundef %2)
          to label %bb.o unwind label %bb.m, !noalias !626, !inline_history !595

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !628
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !628
  %i.t = load i32, ptr %i.k, align 8, !range !12, !alias.scope !627, !noundef !4
  %i.u = trunc nuw i32 %i.t to i1
  %i.v = load i8, ptr %i.m, align 8, !range !629
  %i.w = load i8, ptr %i.l, align 4, !range !629
  %.sroa.0.0.i = select i1 %i.u, i8 %i.v, i8 %i.w
  invoke void @_RNvMsr_Cs6et67aoV1xO_11proc_macro2NtB5_5Group3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i8 noundef %.sroa.0.0.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.c)
          to label %bb.p unwind label %bb.m, !noalias !626, !inline_history !595

bb.p:                                             ; preds = %bb.o
  %i.x = load i32, ptr %i.k, align 8, !range !12, !alias.scope !630, !noalias !626, !noundef !4
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.z = load i32, ptr %i.m, align 8, !alias.scope !631, !noalias !626, !noundef !4
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25GroupECsgbWeKYPjk8w_3syn.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvXs0_NtNtCs3b5wA5ywLsd_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.m)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25GroupECsgbWeKYPjk8w_3syn.exit unwind label %bb.y

bb.s:                                             ; preds = %bb.p
  invoke void @_RNvXs0_NtCs6et67aoV1xO_11proc_macro28fallbackNtB5_11TokenStreamNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %bb.v unwind label %bb.t, !noalias !626

bb.t:                                             ; preds = %bb.s
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !632), !noalias !626
  call void @llvm.experimental.noalias.scope.decl(metadata !633), !noalias !626
  call void @llvm.experimental.noalias.scope.decl(metadata !634), !noalias !626
  %i.ac = load ptr, ptr %i.n, align 8, !alias.scope !635, !noalias !626, !nonnull !4, !noundef !4 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !636, !noundef !4
  %i.ae = add i64 %i.ad, -1                       ; 2 uses
  store i64 %i.ae, ptr %i.ac, align 8, !noalias !636
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.u, label %.body7

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeEE9drop_slowBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n) #18
          to label %.body7 unwind label %bb.x, !noalias !626

bb.v:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !637), !noalias !626
  call void @llvm.experimental.noalias.scope.decl(metadata !638), !noalias !626
  call void @llvm.experimental.noalias.scope.decl(metadata !639), !noalias !626
  %i.ag = load ptr, ptr %i.n, align 8, !alias.scope !640, !noalias !626, !nonnull !4, !noundef !4 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !641, !noundef !4
  %i.ai = add i64 %i.ah, -1                       ; 2 uses
  store i64 %i.ai, ptr %i.ag, align 8, !noalias !641
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.w, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25GroupECsgbWeKYPjk8w_3syn.exit

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeEE9drop_slowBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n) #18
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25GroupECsgbWeKYPjk8w_3syn.exit unwind label %bb.y

bb.x:                                             ; preds = %bb.u
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !626
  unreachable

bb.y:                                             ; preds = %bb.w, %bb.r
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body7

.body7:                                           ; preds = %bb.t, %bb.u, %bb.y
  %eh.lpad-body8 = phi { ptr, i32 } [ %i.al, %bb.y ], [ %i.ab, %bb.u ], [ %i.ab, %bb.t ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !626
  br label %bb.l

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25GroupECsgbWeKYPjk8w_3syn.exit: ; preds = %bb.v, %bb.q, %bb.r, %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !628
  invoke void @_RNvMsr_Cs6et67aoV1xO_11proc_macro2NtB5_5Group8set_span(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k, i32 noundef %2)
          to label %bb.z unwind label %bb.m, !noalias !626, !inline_history !595

bb.z:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25GroupECsgbWeKYPjk8w_3syn.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !628
  br label %bb.ae

bb.aa:                                            ; preds = %bb.l
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !626, !inline_history !595
  unreachable

bb.ab:                                            ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.an = load i64, ptr %i.g, align 8, !range !6, !alias.scope !642, !noundef !4
  %i.ao = icmp eq i64 %i.an, 0
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  br i1 %i.ao, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs3b5wA5ywLsd_10proc_macro6bridge9TokenTreeNtNtBZ_6client11TokenStreamNtB1K_4SpanNtNtBZ_6symbol6SymbolEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ap)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro212token_stream8IntoIterECsgbWeKYPjk8w_3syn.exit unwind label %bb.d

bb.ad:                                            ; preds = %bb.ab
  invoke void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtCs6et67aoV1xO_11proc_macro29TokenTreeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ap)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro212token_stream8IntoIterECsgbWeKYPjk8w_3syn.exit unwind label %bb.d

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro212token_stream8IntoIterECsgbWeKYPjk8w_3syn.exit: ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.ae:                                            ; preds = %bb.z, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !alias.scope !628
  invoke void @_RNvXs2_NtCsgbWeKYPjk8w_3syn3extNtCs6et67aoV1xO_11proc_macro211TokenStreamNtB5_14TokenStreamExt6append(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.d)
          to label %bb.af unwind label %bb.g

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.f

bb.ag:                                            ; preds = %bb.ai, %.body, %bb.c
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.ah:                                            ; preds = %bb.c, %bb.ai
  %.pn.pn11 = phi { ptr, i32 } [ %i.ar, %bb.ai ], [ %.pn, %bb.c ]
  resume { ptr, i32 } %.pn.pn11

bb.ai:                                            ; preds = %bb.a
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro211TokenStreamECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef align 8 dereferenceable(32) %1) #15
          to label %bb.ah unwind label %bb.ag
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNvMNtCsgbWeKYPjk8w_3syn5errorNtB4_5Error11new_spanned11new_spanned(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 12 uses
  %i.c = alloca [64 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 9 uses
  %i.f = alloca [32 x i8], align 8                ; 12 uses
  %i.g = alloca [40 x i8], align 8                ; 7 uses
  %.sroa.5 = alloca [28 x i8], align 4            ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 5 uses
  %i.i = alloca [40 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvXs0_NtCs6et67aoV1xO_11proc_macro212token_streamNtB7_11TokenStreamNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12IntoIterator9into_iter(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1)
          to label %bb.b unwind label %.thread39

.thread36:                                        ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs6et67aoV1xO_11proc_macro29TokenTreeEECsgbWeKYPjk8w_3syn.exit.i, %.thread39, %.thread, %bb.af
  %.pn.pn = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.af ], [ %lpad.thr_comm, %.thread39 ], [ %i.an, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs6et67aoV1xO_11proc_macro29TokenTreeEECsgbWeKYPjk8w_3syn.exit.i ], [ %i.bk, %.thread ]
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2) #15
          to label %bb.ag unwind label %bb.ae

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvXNtCs6et67aoV1xO_11proc_macro212token_streamNtB2_8IntoIterNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.i)
          to label %bb.c unwind label %bb.af

.thread39:                                        ; preds = %bb.a, %bb.ab, %_RNCNvNvMNtCsgbWeKYPjk8w_3syn5errorNtB6_5Error11new_spanned11new_spanneds_0B8_.exit.i, %bb.q, %bb.p
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread36

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !683)
  %i.j = load i32, ptr %i.h, align 8, !range !20, !alias.scope !683, !noundef !4
  %.not.i = icmp eq i32 %i.j, -1
  br i1 %.not.i, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !683
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  %i.k = load i32, ptr %i.f, align 8, !range !14, !alias.scope !684, !noalias !683, !noundef !4
  switch i32 %i.k, label %default.unreachable [
    i32 0, label %bb.e
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.h
  ]

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.m = load i32, ptr %i.l, align 8, !range !12, !alias.scope !684, !noalias !683, !noundef !4
  %i.n = trunc nuw i32 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.p = load i32, ptr %i.o, align 4, !range !9, !alias.scope !684, !noalias !683
  %.sroa.03.0.i.i.i = select i1 %i.n, i32 0, i32 %i.p
  br label %_RNCNvNvMNtCsgbWeKYPjk8w_3syn5errorNtB6_5Error11new_spanned11new_spanned0B8_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.r = load i8, ptr %i.q, align 8, !range !10, !alias.scope !684, !noalias !683, !noundef !4
  %.not4.i.i.i = icmp eq i8 %i.r, 2
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.t = load i32, ptr %i.s, align 4, !range !9, !alias.scope !684, !noalias !683
  %.sroa.02.0.i.i.i = select i1 %.not4.i.i.i, i32 %i.t, i32 0
  br label %_RNCNvNvMNtCsgbWeKYPjk8w_3syn5errorNtB6_5Error11new_spanned11new_spanned0B8_.exit.i

bb.g:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.v = load i32, ptr %i.u, align 8, !alias.scope !684, !noalias !683, !noundef !4
  br label %_RNCNvNvMNtCsgbWeKYPjk8w_3syn5errorNtB6_5Error11new_spanned11new_spanned0B8_.exit.i

bb.h:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !11, !alias.scope !684, !noalias !683, !noundef !4
  %.not.i.i.i = icmp eq i64 %i.x, -1
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.z = load i32, ptr %i.y, align 4, !range !9, !alias.scope !684, !noalias !683
  %.sroa.01.0.i.i.i = select i1 %.not.i.i.i, i32 %i.z, i32 0
  br label %_RNCNvNvMNtCsgbWeKYPjk8w_3syn5errorNtB6_5Error11new_spanned11new_spanned0B8_.exit.i

_RNCNvNvMNtCsgbWeKYPjk8w_3syn5errorNtB6_5Error11new_spanned11new_spanned0B8_.exit.i: ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %.sroa.0.0.i.i.i = phi i32 [ %.sroa.03.0.i.i.i, %bb.e ], [ %.sroa.02.0.i.i.i, %bb.f ], [ %i.v, %bb.g ], [ %.sroa.01.0.i.i.i, %bb.h ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro29TokenTreeECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %.noexc unwind label %bb.af

.noexc:                                           ; preds = %_RNCNvNvMNtCsgbWeKYPjk8w_3syn5errorNtB6_5Error11new_spanned11new_spanned0B8_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !683
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtCs6et67aoV1xO_11proc_macro29TokenTreeE11map_or_elseNtBK_4SpanNvMsi_BK_B1z_9call_siteNCNvNvMNtCsgbWeKYPjk8w_3syn5errorNtB2d_5Error11new_spanned11new_spanned0EB2f_.exit

bb.i:                                             ; preds = %bb.c
  %i.aa = invoke noundef i32 @_RNvMsi_Cs6et67aoV1xO_11proc_macro2NtB5_4Span9call_site()
          to label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtCs6et67aoV1xO_11proc_macro29TokenTreeE11map_or_elseNtBK_4SpanNvMsi_BK_B1z_9call_siteNCNvNvMNtCsgbWeKYPjk8w_3syn5errorNtB2d_5Error11new_spanned11new_spanned0EB2f_.exit unwind label %bb.af

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtCs6et67aoV1xO_11proc_macro29TokenTreeE11map_or_elseNtBK_4SpanNvMsi_BK_B1z_9call_siteNCNvNvMNtCsgbWeKYPjk8w_3syn5errorNtB2d_5Error11new_spanned11new_spanned0EB2f_.exit: ; preds = %.noexc, %bb.i
  %.sroa.0.0.i = phi i32 [ %.sroa.0.0.i.i.i, %.noexc ], [ %i.aa, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !685)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !686
  store i32 -1, ptr %i.e, align 8, !noalias !687
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  br label %bb.j

bb.j:                                             ; preds = %bb.r, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtCs6et67aoV1xO_11proc_macro29TokenTreeE11map_or_elseNtBK_4SpanNvMsi_BK_B1z_9call_siteNCNvNvMNtCsgbWeKYPjk8w_3syn5errorNtB2d_5Error11new_spanned11new_spanned0EB2f_.exit
  invoke void @_RNvXNtCs6et67aoV1xO_11proc_macro212token_streamNtB2_8IntoIterNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.g)
          to label %bb.l unwind label %bb.s, !noalias !688

bb.k:                                             ; preds = %bb.n
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs6et67aoV1xO_11proc_macro29TokenTreeEECsgbWeKYPjk8w_3syn.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ad = load i32, ptr %i.d, align 8, !range !20, !noalias !686, !noundef !4
  %.not.i6 = icmp eq i32 %i.ad, -1
  br i1 %.not.i6, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !686
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !686
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !686
  %i.ae = load i32, ptr %i.c, align 8, !range !20, !alias.scope !689, !noalias !690, !noundef !4
  %i.af = icmp eq i32 %i.ae, -1
  br i1 %i.af, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro29TokenTreeECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.r unwind label %bb.k, !noalias !688

bb.o:                                             ; preds = %bb.l
  %.sroa.0.0.copyload = load i32, ptr %i.e, align 8, !noalias !691 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.5, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.433.0..sroa_idx, i64 28, i1 false), !noalias !691
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !686
  %i.ag = load i64, ptr %i.g, align 8, !range !6, !alias.scope !692, !noundef !4
  %i.ah = icmp eq i64 %i.ag, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  br i1 %i.ah, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs3b5wA5ywLsd_10proc_macro6bridge9TokenTreeNtNtBZ_6client11TokenStreamNtB1K_4SpanNtNtBZ_6symbol6SymbolEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %bb.v unwind label %.thread39

bb.q:                                             ; preds = %bb.o
  invoke void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtCs6et67aoV1xO_11proc_macro29TokenTreeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %bb.v unwind label %.thread39

bb.r:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !686
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !686
  br label %bb.j

bb.s:                                             ; preds = %bb.j
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = load i32, ptr %i.e, align 8, !range !20, !alias.scope !693, !noalias !686, !noundef !4
  %i.al = icmp eq i32 %i.ak, -1
  br i1 %i.al, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs6et67aoV1xO_11proc_macro29TokenTreeEECsgbWeKYPjk8w_3syn.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro29TokenTreeECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs6et67aoV1xO_11proc_macro29TokenTreeEECsgbWeKYPjk8w_3syn.exit.i unwind label %bb.u, !noalias !688

bb.u:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs6et67aoV1xO_11proc_macro29TokenTreeEECsgbWeKYPjk8w_3syn.exit.i, %bb.t
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !688
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs6et67aoV1xO_11proc_macro29TokenTreeEECsgbWeKYPjk8w_3syn.exit.i: ; preds = %bb.t, %bb.s, %bb.k
  %i.an = phi { ptr, i32 } [ %i.ac, %bb.k ], [ %i.aj, %bb.t ], [ %i.aj, %bb.s ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro212token_stream8IntoIterECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.g) #15
          to label %.thread36 unwind label %bb.u, !noalias !688

bb.v:                                             ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.not.i9 = icmp eq i32 %.sroa.0.0.copyload, -1
  br i1 %.not.i9, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtCs6et67aoV1xO_11proc_macro29TokenTreeE6map_orNtBK_4SpanNCNvNvMNtCsgbWeKYPjk8w_3syn5errorNtB1K_5Error11new_spanned11new_spanneds_0EB1M_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !694
  store i32 %.sroa.0.0.copyload, ptr %i.b, align 8
  %.sroa.5.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.5.0..sroa_idx24, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.5, i64 28, i1 false)
  switch i32 %.sroa.0.0.copyload, label %default.unreachable.i17 [
    i32 0, label %bb.x
    i32 1, label %bb.y
    i32 2, label %bb.z
    i32 3, label %bb.aa
  ]

default.unreachable.i17:                          ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !range !12, !alias.scope !695, !noalias !694, !noundef !4
  %i.aq = trunc nuw i32 %i.ap to i1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.as = load i32, ptr %i.ar, align 4, !range !9, !alias.scope !695, !noalias !694
  %.sroa.03.0.i.i.i16 = select i1 %i.aq, i32 0, i32 %i.as
  br label %_RNCNvNvMNtCsgbWeKYPjk8w_3syn5errorNtB6_5Error11new_spanned11new_spanneds_0B8_.exit.i

bb.y:                                             ; preds = %bb.w
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.au = load i8, ptr %i.at, align 8, !range !10, !alias.scope !695, !noalias !694, !noundef !4
  %.not4.i.i.i14 = icmp eq i8 %i.au, 2
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.aw = load i32, ptr %i.av, align 4, !range !9, !alias.scope !695, !noalias !694
  %.sroa.02.0.i.i.i15 = select i1 %.not4.i.i.i14, i32 %i.aw, i32 0
  br label %_RNCNvNvMNtCsgbWeKYPjk8w_3syn5errorNtB6_5Error11new_spanned11new_spanneds_0B8_.exit.i

bb.z:                                             ; preds = %bb.w
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ay = load i32, ptr %i.ax, align 8, !alias.scope !695, !noalias !694, !noundef !4
  br label %_RNCNvNvMNtCsgbWeKYPjk8w_3syn5errorNtB6_5Error11new_spanned11new_spanneds_0B8_.exit.i

bb.aa:                                            ; preds = %bb.w
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !range !11, !alias.scope !695, !noalias !694, !noundef !4
end_hunk_0

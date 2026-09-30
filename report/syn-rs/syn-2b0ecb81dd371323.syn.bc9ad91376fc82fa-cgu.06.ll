Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/syn-rs/original/syn-2b0ecb81dd371323.syn.bc9ad91376fc82fa-cgu.06?download=true
inline.NumInlined: 575
inline.NumDeleted: 231
begin_hunk_0_@_RNvMs_NtCsgbWeKYPjk8w_3syn4attrNtB4_4Meta18require_name_value:bb.a
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.g, label %bb.f, !prof !23

bb.d:                                             ; preds = %bb.a
  %.sroa.05.0 = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.j = load i32, ptr %.sroa.05.0, align 4, !noundef !5
  %i.k = icmp eq i32 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.m = load i32, ptr %i.l, align 8, !range !24
  %.sroa.04.0 = select i1 %i.k, i32 0, i32 %i.m
  tail call void @_RINvMNtCsgbWeKYPjk8w_3syn5errorNtB3_5Error3newReEB5_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, i32 noundef %.sroa.04.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 12)
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.n, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.m

bb.f:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.p = load i8, ptr %i.o, align 8, !range !11, !noundef !5
  %.not15 = icmp eq i8 %i.p, 2
  br i1 %.not15, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.c
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #13
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 68
  %i.r = load i32, ptr %i.q, align 4, !range !24, !noundef !5
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h
  %.sroa.07.0 = phi i32 [ %i.r, %bb.h ], [ 0, %bb.f ]
  %i.s = tail call noundef align 8 ptr @_RNvMNtCsgbWeKYPjk8w_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4path11PathSegmentNtNtB4_5token7PathSepE4lastB4_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h) ; 3 uses
  %.not16 = icmp eq ptr %i.s, null
  br i1 %.not16, label %bb.k, label %bb.j, !prof !23

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.u = load i8, ptr %i.t, align 8, !range !11, !noundef !5
  %.not17 = icmp eq i8 %i.u, 2
  br i1 %.not17, label %bb.l, label %.split

bb.k:                                             ; preds = %bb.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #13
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 68
  %i.w = load i32, ptr %i.v, align 4, !range !24, !noundef !5
  br label %.split

.split:                                           ; preds = %bb.j, %bb.l
  %.sroa.08.0 = phi i32 [ %i.w, %bb.l ], [ 0, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.h, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs2_NtNtCsgbWeKYPjk8w_3syn4attr7parsingNtB5_11DisplayPathNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.411.0..sroa_idx, align 8
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @14, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RINvNtCsgbWeKYPjk8w_3syn5error4new2NtNtCs4wP2HXfJTCR_5alloc6string6StringEB4_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, i32 noundef %.sroa.07.0, i32 noundef %.sroa.08.0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  br label %bb.m

bb.m:                                             ; preds = %bb.d, %.split, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvNtCsgbWeKYPjk8w_3syn9lookahead9peek_impl(ptr noundef nonnull align 8 %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !noundef !5
  %i.e = tail call noundef zeroext i1 %1(ptr noundef %i.b, ptr noundef %i.d) ; 2 uses
  br i1 %i.e, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %0, align 8, !noundef !5
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.d, !prof !7

bb.c:                                             ; preds = %bb.b
  store i64 -1, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = invoke { ptr, i64 } %2()
          to label %bb.e unwind label %bb.i       ; 2 uses

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #13
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, i64 } %i.i, 0
  %i.k = extractvalue { ptr, i64 } %i.i, 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !1039, !noalias !1040, !noundef !5 ; 3 uses
  %i.n = load i64, ptr %i.h, align 8, !range !8, !alias.scope !1039, !noalias !1040, !noundef !5
  %i.o = icmp eq i64 %i.m, %i.n
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecReE8grow_oneCs3b5wA5ywLsd_10proc_macro(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #14
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !1039, !noalias !1040, !nonnull !5, !noundef !5
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.m ; 2 uses
  store ptr %i.j, ptr %i.r, align 8, !noalias !1040, !captures !9
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.k, ptr %i.s, align 8
  %i.t = add i64 %i.m, 1
  store i64 %i.t, ptr %i.l, align 8, !alias.scope !1039, !noalias !1040
  %i.u = load i64, ptr %0, align 8, !noundef !5
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  ret i1 %i.e

bb.i:                                             ; preds = %bb.c, %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load i64, ptr %0, align 8, !noundef !5
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %0, align 8
  resume { ptr, i32 } %i.w
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCsgbWeKYPjk8w_3syn9scan_expr9scan_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [248 x i8], align 8               ; 7 uses
  %.sroa.677 = alloca [24 x i8], align 8          ; 6 uses
  %i.c = alloca [248 x i8], align 8               ; 7 uses
  %i.d = alloca [56 x i8], align 8                ; 7 uses
  %.sroa.668 = alloca [24 x i8], align 8          ; 6 uses
  %i.e = alloca [56 x i8], align 8                ; 7 uses
  %i.f = alloca [104 x i8], align 8               ; 7 uses
  %.sroa.659 = alloca [24 x i8], align 8          ; 6 uses
  %i.g = alloca [104 x i8], align 8               ; 12 uses
  %i.h = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.556 = alloca [24 x i8], align 8          ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [40 x i8], align 8                ; 9 uses
  %.sroa.554.sroa.9 = alloca [15 x i8], align 1   ; 5 uses
  %i.k = alloca [32 x i8], align 8                ; 9 uses
  %.sroa.552.sroa.9 = alloca [7 x i8], align 1    ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [32 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [16 x i8], align 8                ; 6 uses
  %i.s = getelementptr i8, ptr %1, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.4203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.5204.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.6205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 25
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.4187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.5188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.6189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 25
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.4107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.4133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.4130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.574.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.4127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 72 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 80 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.bl
  %i.ae = phi ptr [ getelementptr inbounds nuw (i8, ptr @_RNvNtCsgbWeKYPjk8w_3syn9scan_expr4INIT, i64 1392), %bb.a ], [ %i.dd, %bb.bl ]
  %.sroa.0.0261 = phi i64 [ 0, %bb.a ], [ %.sroa.0.1, %bb.bl ] ; 4 uses
  %.sroa.084.0260 = phi ptr [ @_RNvNtCsgbWeKYPjk8w_3syn9scan_expr4INIT, %bb.a ], [ %.sroa.084.1, %bb.bl ]
  %i.af = icmp ne i64 %.sroa.0.0261, 0            ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ap
  %.sroa.05.0258 = phi ptr [ %.sroa.084.0260, %.lr.ph ], [ %i.ag, %bb.ap ] ; 9 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.05.0258, i64 48 ; 2 uses
  %i.ah = load i64, ptr %.sroa.05.0258, align 8, !range !1060, !noundef !5 ; 2 uses
  switch i64 %i.ah, label %.unreachabledefault [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.j
    i64 5, label %bb.k
    i64 6, label %bb.l
    i64 7, label %bb.m
    i64 8, label %bb.n
    i64 9, label %bb.j
    i64 10, label %bb.o
    i64 11, label %bb.p
    i64 12, label %bb.q
    i64 13, label %bb.r
    i64 14, label %.loopexit220
    i64 15, label %bb.s
  ]

.unreachabledefault:                              ; preds = %bb.b
  unreachable

default.unreachable313:                           ; preds = %.loopexit220
  unreachable

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.05.0258, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !5, !noundef !5
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.05.0258, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !noundef !5
  store ptr %i.aj, ptr %i.r, align 8, !captures !9
  store i64 %i.al, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4stepNCNvNtB8_9scan_expr9scan_expr0bEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.r)
  %i.am = load i64, ptr %i.q, align 8, !range !15, !noundef !5 ; 2 uses
  %.not137 = icmp eq i64 %i.am, -1
  %i.an = load i8, ptr %i.aa, align 8             ; 2 uses
  br i1 %.not137, label %bb.u, label %bb.t

bb.d:                                             ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.05.0258, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !5, !noundef !5
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.05.0258, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4stepNCNvNtB8_9scan_expr9scan_exprs_0bEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ap, i64 noundef %i.ar)
  %i.as = load i64, ptr %i.p, align 8, !range !15, !noundef !5 ; 2 uses
  %.not136 = icmp eq i64 %i.as, -1
  %i.at = load i8, ptr %i.y, align 8              ; 2 uses
  br i1 %.not136, label %bb.x, label %bb.w

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseINtNtCsj6eKBz9Db1c_4core6option6OptionNtCs6et67aoV1xO_11proc_macro29TokenTreeEEB8_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noundef nonnull align 8 %1)
  %i.au = load i32, ptr %i.a, align 8, !range !1061, !noundef !5 ; 3 uses
  %i.av = icmp eq i32 %i.au, -2
  br i1 %i.av, label %bb.y, label %bb.z

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_2op5BinOpEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noundef nonnull align 8 %1)
  %i.aw = load i64, ptr %i.n, align 8, !range !15, !noundef !5
  %i.ax = icmp eq i64 %i.aw, -1                   ; 2 uses
  %i.ay = zext i1 %i.ax to i8
  br i1 %i.ax, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgbWeKYPjk8w_3syn2op5BinOpNtNtB11_5error5ErrorEEB11_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5error5ErrorEBF_.exit.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16
  unreachable

common.resume:                                    ; preds = %.body5.i, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.az, %bb.h ], [ %.pn.i, %.body5.i ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5error5ErrorEBF_.exit.i: ; preds = %bb.g
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgbWeKYPjk8w_3syn2op5BinOpNtNtB11_5error5ErrorEEB11_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgbWeKYPjk8w_3syn2op5BinOpNtNtB11_5error5ErrorEEB11_.exit: ; preds = %bb.f, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn5error5ErrorEBF_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.v

bb.j:                                             ; preds = %bb.b, %bb.b
  %i.bb = icmp eq i64 %i.ah, 4
  %or.cond = select i1 %i.bb, i1 true, i1 %i.af
  br i1 %or.cond, label %bb.ao, label %bb.ap

bb.k:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4stepNCNvNtB8_9scan_expr9scan_exprs1_0bEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull align 8 %1)
  %i.bc = load i64, ptr %i.l, align 8, !range !15, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.bc, -1
  %i.bd = load i8, ptr %i.w, align 8              ; 2 uses
  br i1 %.not, label %bb.ac, label %bb.ab

bb.l:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.552.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseINtNtCsj6eKBz9Db1c_4core6option6OptionNtCs6et67aoV1xO_11proc_macro25IdentEEB8_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.k, ptr noundef nonnull align 8 %1)
  %i.be = load i64, ptr %i.k, align 8, !range !19, !noundef !5
  %i.bf = trunc nuw i64 %i.be to i1
  %.sroa.0194.0.copyload = load ptr, ptr %i.v, align 8 ; 3 uses
  %.sroa.4195.0.copyload = load i64, ptr %.sroa.4187.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5196.0.copyload = load i8, ptr %.sroa.5188.0..sroa_idx, align 8 ; 3 uses
  br i1 %i.bf, label %bb.ad, label %bb.ae

bb.m:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.554.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB8_8lifetime8LifetimeEEB8_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.j, ptr noundef nonnull align 8 %1)
  %i.bg = load i64, ptr %i.j, align 8, !range !19, !noundef !5
  %i.bh = trunc nuw i64 %i.bg to i1
  %.sroa.0210.0.copyload = load ptr, ptr %i.u, align 8 ; 3 uses
  %.sroa.4211.0.copyload = load i64, ptr %.sroa.4203.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5212.0.copyload = load i8, ptr %.sroa.5204.0..sroa_idx, align 8 ; 3 uses
  br i1 %i.bh, label %bb.ah, label %bb.ai

bb.n:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.556)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB8_3lit3LitEEB8_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noundef nonnull align 8 %1)
  %i.bi = load i64, ptr %i.h, align 8, !range !19, !noundef !5
  %i.bj = trunc nuw i64 %i.bi to i1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.556, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %i.bj, label %bb.al, label %bb.am

bb.o:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.659)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_4expr8ExprPathEB8_(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.f, ptr noundef nonnull align 8 %1)
  %i.bk = load i64, ptr %i.f, align 8, !range !15, !noundef !5 ; 2 uses
  %i.bl = icmp eq i64 %i.bk, -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.659, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4127.0..sroa_idx, i64 24, i1 false)
  br i1 %i.bl, label %bb.as, label %bb.at

bb.p:                                             ; preds = %bb.b
  %i.bm = call noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token7PathSepNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %1)
  br i1 %i.bm, label %bb.bb, label %.loopexit220

bb.q:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.677)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs_NtNtCsgbWeKYPjk8w_3syn2ty7parsingNtB6_4Type12without_plus(ptr noalias nofree noundef nonnull sret([248 x i8]) align 8 captures(address) dereferenceable(248) %i.b, ptr noundef nonnull align 8 %1)
  %i.bn = load i64, ptr %i.b, align 8, !range !22, !noundef !5 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.677, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4133.0..sroa_idx, i64 24, i1 false)
  br i1 %i.bo, label %bb.be, label %bb.bf

bb.r:                                             ; preds = %bb.b
  %i.bp = call noundef zeroext i1 @_RNvMNtCsgbWeKYPjk8w_3syn4exprNtB2_4Expr4peek(ptr noundef nonnull align 8 %1)
  %i.bq = zext i1 %i.bp to i8
  br label %bb.v

bb.s:                                             ; preds = %bb.b
  %.val = load ptr, ptr %1, align 8, !noundef !5
  %.val138 = load ptr, ptr %i.s, align 8, !noundef !5
  %i.br = icmp eq ptr %.val, %.val138
  br i1 %i.br, label %.loopexit220, label %bb.bg

bb.t:                                             ; preds = %bb.c
  %.sroa.593.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 9
  %.sroa.596.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.596.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.593.0..sroa_idx, i64 15, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  store i64 %i.am, ptr %0, align 8
  %.sroa.495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.an, ptr %.sroa.495.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.bn

bb.u:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.v

bb.v:                                             ; preds = %bb.bg, %bb.ar, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn3lit3LitEEB11_.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeEEB11_.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs6et67aoV1xO_11proc_macro25IdentEECsgbWeKYPjk8w_3syn.exit, %bb.ac, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs6et67aoV1xO_11proc_macro29TokenTreeEECsgbWeKYPjk8w_3syn.exit, %bb.x, %bb.u, %bb.r, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgbWeKYPjk8w_3syn2op5BinOpNtNtB11_5error5ErrorEEB11_.exit
  %.sroa.050.0 = phi i8 [ %i.an, %bb.u ], [ %i.at, %bb.x ], [ %i.bv, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs6et67aoV1xO_11proc_macro29TokenTreeEECsgbWeKYPjk8w_3syn.exit ], [ %i.ay, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgbWeKYPjk8w_3syn2op5BinOpNtNtB11_5error5ErrorEEB11_.exit ], [ %i.bd, %bb.ac ], [ %i.bx, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs6et67aoV1xO_11proc_macro25IdentEECsgbWeKYPjk8w_3syn.exit ], [ %i.cb, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeEEB11_.exit ], [ %i.cg, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn3lit3LitEEB11_.exit ], [ %i.ci, %bb.ar ], [ %i.bq, %bb.r ], [ %i.cv, %bb.bg ]
  %i.bs = trunc nuw i8 %.sroa.050.0 to i1
  br i1 %i.bs, label %.loopexit220, label %bb.ap

bb.w:                                             ; preds = %bb.d
  %.sroa.5102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 9
  %.sroa.5105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.5105.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.5102.0..sroa_idx, i64 15, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  store i64 %i.as, ptr %0, align 8
  %.sroa.4104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.at, ptr %.sroa.4104.0..sroa_idx, align 8
  br label %bb.bn

bb.x:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.v

bb.y:                                             ; preds = %bb.e
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.bn

bb.z:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.429.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4107.0..sroa_idx, i64 28, i1 false)
  store i32 %i.au, ptr %i.o, align 8
  %i.bu = icmp ne i32 %i.au, -1                   ; 2 uses
  %i.bv = zext i1 %i.bu to i8
  br i1 %i.bu, label %bb.aa, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs6et67aoV1xO_11proc_macro29TokenTreeEECsgbWeKYPjk8w_3syn.exit

bb.aa:                                            ; preds = %bb.z
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro29TokenTreeECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.o)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs6et67aoV1xO_11proc_macro29TokenTreeEECsgbWeKYPjk8w_3syn.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs6et67aoV1xO_11proc_macro29TokenTreeEECsgbWeKYPjk8w_3syn.exit: ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.v

bb.ab:                                            ; preds = %bb.k
  %.sroa.5122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 9
  %.sroa.5125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.5125.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.5122.0..sroa_idx, i64 15, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i64 %i.bc, ptr %0, align 8
  %.sroa.4124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.bd, ptr %.sroa.4124.0..sroa_idx, align 8
  br label %bb.bn

bb.ac:                                            ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.v

bb.ad:                                            ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.552.sroa.9, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6189.0..sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.sroa.6201.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6201.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.552.sroa.9, i64 7, i1 false)
  store ptr %.sroa.0194.0.copyload, ptr %0, align 8
  %.sroa.4199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4195.0.copyload, ptr %.sroa.4199.0..sroa_idx, align 8
  %.sroa.5200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.5196.0.copyload, ptr %.sroa.5200.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.552.sroa.9)
  br label %bb.bn

bb.ae:                                            ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bw = icmp ne i8 %.sroa.5196.0.copyload, -1   ; 2 uses
  %i.bx = zext i1 %i.bw to i8
  br i1 %i.bw, label %bb.af, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs6et67aoV1xO_11proc_macro25IdentEECsgbWeKYPjk8w_3syn.exit

bb.af:                                            ; preds = %bb.ae
  %i.by = icmp eq i8 %.sroa.5196.0.copyload, 2
  %i.bz = icmp eq i64 %.sroa.4195.0.copyload, 0
  %or.cond218 = select i1 %i.by, i1 true, i1 %i.bz
  br i1 %or.cond218, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs6et67aoV1xO_11proc_macro25IdentEECsgbWeKYPjk8w_3syn.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0194.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0194.0.copyload, i64 noundef range(i64 1, 0) %.sroa.4195.0.copyload, i64 noundef 1) #15, !noalias !1062
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs6et67aoV1xO_11proc_macro25IdentEECsgbWeKYPjk8w_3syn.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs6et67aoV1xO_11proc_macro25IdentEECsgbWeKYPjk8w_3syn.exit: ; preds = %bb.ae, %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.552.sroa.9)
  br label %bb.v

bb.ah:                                            ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.554.sroa.9, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6205.0..sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.sroa.6217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6217.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.554.sroa.9, i64 7, i1 false)
  store ptr %.sroa.0210.0.copyload, ptr %0, align 8
  %.sroa.4215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4211.0.copyload, ptr %.sroa.4215.0..sroa_idx, align 8
  %.sroa.5216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.5212.0.copyload, ptr %.sroa.5216.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.554.sroa.9)
  br label %bb.bn

bb.ai:                                            ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.ca = icmp ne i8 %.sroa.5212.0.copyload, -1   ; 2 uses
  %i.cb = zext i1 %i.ca to i8
  br i1 %i.ca, label %bb.aj, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeEEB11_.exit

bb.aj:                                            ; preds = %bb.ai
  %i.cc = icmp eq i8 %.sroa.5212.0.copyload, 2
  %i.cd = icmp eq i64 %.sroa.4211.0.copyload, 0
  %or.cond219 = select i1 %i.cc, i1 true, i1 %i.cd
  br i1 %or.cond219, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeEEB11_.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0210.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0210.0.copyload, i64 noundef range(i64 1, 0) %.sroa.4211.0.copyload, i64 noundef 1) #15, !noalias !1063
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeEEB11_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeEEB11_.exit: ; preds = %bb.ai, %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.554.sroa.9)
  br label %bb.v

bb.al:                                            ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.556, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.556)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.bn

bb.am:                                            ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.556, i64 24, i1 false)
  %i.ce = load i64, ptr %i.i, align 8, !range !1064, !noundef !5
  %i.cf = icmp ne i64 %i.ce, -2                   ; 2 uses
  %i.cg = zext i1 %i.cf to i8
  br i1 %i.cf, label %bb.an, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn3lit3LitEEB11_.exit

bb.an:                                            ; preds = %bb.am
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn3lit3LitEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn3lit3LitEEB11_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn3lit3LitEEB11_.exit: ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.556)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.v

bb.ao:                                            ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4stepNCNvNtB8_9scan_expr9scan_exprs0_0bEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noundef nonnull align 8 %1)
  %i.ch = load i64, ptr %i.m, align 8, !range !15, !noundef !5 ; 2 uses
  %.not135 = icmp eq i64 %i.ch, -1
  %i.ci = load i8, ptr %i.x, align 8              ; 2 uses
  br i1 %.not135, label %bb.ar, label %bb.aq

bb.ap:                                            ; preds = %bb.j, %bb.v
  %i.cj = icmp eq ptr %i.ag, %i.ae
  br i1 %i.cj, label %.loopexit, label %bb.b

bb.aq:                                            ; preds = %bb.ao
  %.sroa.5113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 9
  %.sroa.5116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.5116.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.5113.0..sroa_idx, i64 15, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store i64 %i.ch, ptr %0, align 8
  %.sroa.4115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.ci, ptr %.sroa.4115.0..sroa_idx, align 8
  br label %bb.bn

bb.ar:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.v

bb.as:                                            ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.659, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.659)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.bn

bb.at:                                            ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.565.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5128.0..sroa_idx, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.464.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.659, i64 24, i1 false)
  store i64 %i.bk, ptr %i.g, align 8
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.g)
          to label %bb.av unwind label %bb.au, !inline_history !0

bb.au:                                            ; preds = %bb.at
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.g)
          to label %.body.i unwind label %bb.aw, !inline_history !0

bb.av:                                            ; preds = %bb.at
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.g)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit.i unwind label %bb.ax, !inline_history !0

bb.aw:                                            ; preds = %bb.au
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !inline_history !0
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ax, %bb.au
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cm, %bb.ax ], [ %i.ck, %bb.au ]
  %.val3.i = load i32, ptr %i.ab, align 8, !range !20, !alias.scope !1065, !noundef !5
  %.val4.i = load ptr, ptr %i.ac, align 8, !alias.scope !1065
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn4path5QSelfEEB11_(i32 %.val3.i, ptr %.val4.i) #17
          to label %.body5.i unwind label %bb.ba, !inline_history !0

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit.i: ; preds = %bb.av
  %.val.i = load i32, ptr %i.ab, align 8, !range !20, !alias.scope !1065, !noundef !5
  %.val2.i = load ptr, ptr %i.ac, align 8, !alias.scope !1065 ; 4 uses
  %i.cn = icmp eq i32 %.val.i, 2
  br i1 %i.cn, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4expr8ExprPathEBF_.exit, label %bb.ay

bb.ay:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty4TypeEBF_(ptr noalias nofree noundef align 8 dereferenceable(248) %.val2.i) #18
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn2ty4TypeEEB1e_.exit.i.i unwind label %bb.az, !noalias !1066, !inline_history !1059

bb.az:                                            ; preds = %bb.ay
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef 248, i64 noundef 8) #15, !noalias !1066, !inline_history !1059
  br label %.body5.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn2ty4TypeEEB1e_.exit.i.i: ; preds = %bb.ay
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef 248, i64 noundef 8) #15, !noalias !1066, !inline_history !1059
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4expr8ExprPathEBF_.exit

.body5.i:                                         ; preds = %bb.az, %.body.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.co, %bb.az ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4path4PathEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ad) #17
          to label %common.resume unwind label %bb.ba, !inline_history !0

bb.ba:                                            ; preds = %.body5.i, %.body.i
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !inline_history !0
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4expr8ExprPathEBF_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn2ty4TypeEEB1e_.exit.i.i
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4path4PathEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ad), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.659)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %.loopexit220

.loopexit220:                                     ; preds = %bb.s, %bb.b, %bb.v, %bb.p, %bb.bd, %bb.bf, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4expr8ExprPathEBF_.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.05.0258, i64 24
  %i.cr = load i64, ptr %i.cq, align 8, !range !1067, !noundef !5
  switch i64 %i.cr, label %default.unreachable313 [
    i64 0, label %bb.bh
    i64 1, label %bb.bi
    i64 2, label %bb.bj
    i64 3, label %bb.bk
  ]

bb.bb:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.668)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_4path30AngleBracketedGenericArgumentsEB8_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.d, ptr noundef nonnull align 8 %1)
  %i.cs = load i64, ptr %i.d, align 8, !range !15, !noundef !5 ; 2 uses
  %i.ct = icmp eq i64 %i.cs, -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.668, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4130.0..sroa_idx, i64 24, i1 false)
  br i1 %i.ct, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.668, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.668)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.bn

bb.bd:                                            ; preds = %bb.bb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.574.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5131.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.473.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.668, i64 24, i1 false)
  store i64 %i.cs, ptr %i.e, align 8
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.668)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.loopexit220

bb.be:                                            ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.677, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.677)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.bn

bb.bf:                                            ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.583.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.5134.0..sroa_idx, i64 216, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.482.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.677, i64 24, i1 false)
  store i64 %i.bn, ptr %i.c, align 8
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty4TypeEBF_(ptr noalias nofree noundef align 8 dereferenceable(248) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.677)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit220

bb.bg:                                            ; preds = %bb.s
  %i.cu = call noundef zeroext i1 @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token5CommaNtNtB8_9lookahead11TokenMarkerEEB8_(ptr noundef nonnull align 8 %1)
  %i.cv = zext i1 %i.cu to i8
  br label %bb.v

bb.bh:                                            ; preds = %.loopexit220
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.05.0258, i64 32
  %i.cx = load ptr, ptr %i.cw, align 8, !nonnull !5, !align !10, !noundef !5
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.05.0258, i64 40
  %i.cz = load i64, ptr %i.cy, align 8, !noundef !5
  %i.da = mul nuw nsw i64 %i.cz, 48
  br label %bb.bl

bb.bi:                                            ; preds = %.loopexit220
  %i.db = add i64 %.sroa.0.0261, 1
  br label %bb.bl

bb.bj:                                            ; preds = %.loopexit220
  %i.dc = add i64 %.sroa.0.0261, -1
  br label %bb.bl

bb.bk:                                            ; preds = %.loopexit220
  br i1 %i.af, label %.loopexit, label %bb.bm

bb.bl:                                            ; preds = %bb.bj, %bb.bi, %bb.bh
  %.sroa.084.1 = phi ptr [ %i.cx, %bb.bh ], [ @_RNvNtCsgbWeKYPjk8w_3syn9scan_expr4INIT, %bb.bi ], [ @_RNvNtCsgbWeKYPjk8w_3syn9scan_expr7POSTFIX, %bb.bj ] ; 2 uses
  %.sroa.686.1 = phi i64 [ %i.da, %bb.bh ], [ 1392, %bb.bi ], [ 480, %bb.bj ] ; 2 uses
  %.sroa.0.1 = phi i64 [ %.sroa.0.0261, %bb.bh ], [ %i.db, %bb.bi ], [ %i.dc, %bb.bj ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.084.1, i64 %.sroa.686.1
  %i.de = icmp samesign eq i64 %.sroa.686.1, 0
  br i1 %i.de, label %.loopexit, label %.lr.ph

bb.bm:                                            ; preds = %bb.bk
  store i64 -1, ptr %0, align 8
  br label %bb.bn

bb.bn:                                            ; preds = %bb.t, %bb.w, %bb.y, %bb.ab, %bb.ad, %bb.ah, %bb.al, %bb.aq, %bb.as, %bb.bc, %bb.be, %bb.bm, %.loopexit
  ret void

.loopexit:                                        ; preds = %bb.bl, %bb.ap, %bb.bk
  call void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5errorReEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 22)
  br label %bb.bn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs6p3UlaoheVH_5quote9to_tokensRNtNtCsgbWeKYPjk8w_3syn4attr9AttributeNtB2_8ToTokens9to_tokensBD_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !10, !noundef !5 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  tail call void @_RNvXs8H_NtCsgbWeKYPjk8w_3syn5tokenNtB6_5PoundNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.d = load i32, ptr %i.c, align 8, !range !18, !alias.scope !1071, !noalias !1072, !noundef !5
  %i.e = trunc nuw i32 %i.d to i1
  br i1 %i.e, label %bb.b, label %_RNvXNtNtCsgbWeKYPjk8w_3syn4attr8printingNtB4_9AttributeNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 228
  tail call void @_RNvXs87_NtCsgbWeKYPjk8w_3syn5tokenNtB6_3NotNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  br label %_RNvXNtNtCsgbWeKYPjk8w_3syn4attr8printingNtB4_9AttributeNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens.exit

_RNvXNtNtCsgbWeKYPjk8w_3syn4attr8printingNtB4_9AttributeNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens.exit: ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 236
  tail call void @_RINvMscz_NtCsgbWeKYPjk8w_3syn5tokenNtB7_7Bracket8surroundNCNvXNtNtB9_4attr8printingNtB10_9AttributeNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens0EB9_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtCsgbWeKYPjk8w_3syn4attr7parsingNtB4_4MetaNtNtB6_5parse5Parse5parse(ptr dead_on_unwind noalias nofree noundef writable sret([224 x i8]) align 8 captures(none) dereferenceable(224) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCsgbWeKYPjk8w_3syn4attr7parsing25parse_outermost_meta_path(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b, ptr noundef nonnull align 8 %1)
  %i.c = load i64, ptr %i.b, align 8, !range !15, !noundef !5 ; 2 uses
  %i.d = icmp eq i64 %i.c, -1
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.8.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.c, ptr %i.a, align 8
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @_RNvNtNtCsgbWeKYPjk8w_3syn4attr7parsing21parse_meta_after_path(ptr noalias nofree noundef nonnull sret([224 x i8]) align 8 captures(none) dereferenceable(224) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.a, ptr noundef nonnull align 8 %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtCsgbWeKYPjk8w_3syn4attr8printingNtB4_9AttributeNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(248) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @_RNvXs8H_NtCsgbWeKYPjk8w_3syn5tokenNtB6_5PoundNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.c = load i32, ptr %i.b, align 8, !range !18, !noundef !5
  %i.d = trunc nuw i32 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 228
  tail call void @_RNvXs87_NtCsgbWeKYPjk8w_3syn5tokenNtB6_3NotNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 236
  tail call void @_RINvMscz_NtCsgbWeKYPjk8w_3syn5tokenNtB7_7Bracket8surroundNCNvXNtNtB9_4attr8printingNtB10_9AttributeNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens0EB9_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtCsgbWeKYPjk8w_3syn4attr7parsingNtB7_13MetaNameValueNtNtB9_5parse5Parse5parse(ptr dead_on_unwind noalias nofree noundef writable sret([224 x i8]) align 8 captures(none) dereferenceable(224) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCsgbWeKYPjk8w_3syn4attr7parsing25parse_outermost_meta_path(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b, ptr noundef nonnull align 8 %1)
  %i.c = load i64, ptr %i.b, align 8, !range !15, !noundef !5 ; 2 uses
  %i.d = icmp eq i64 %i.c, -1
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.8.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.c, ptr %i.a, align 8
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @_RNvNtNtCsgbWeKYPjk8w_3syn4attr7parsing32parse_meta_name_value_after_path(ptr noalias nofree noundef nonnull sret([224 x i8]) align 8 captures(none) dereferenceable(224) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.a, ptr noundef nonnull align 8 %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtCsgbWeKYPjk8w_3syn4attr8printingNtB7_8MetaListNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  tail call void @_RNvNtNtCsgbWeKYPjk8w_3syn4path8printing10print_path(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, i8 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1079)
  %i.e = load i64, ptr %i.d, align 8, !range !15, !alias.scope !1079, !noalias !1080, !noundef !5
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !1079, !noalias !1080, !nonnull !5, !noundef !5 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !noalias !1081, !noundef !5 ; 2 uses
  %i.j = icmp ne i64 %i.i, 0
  tail call void @llvm.assume(i1 %i.j)
  %i.k = add i64 %i.i, 1                          ; 2 uses
  store i64 %i.k, ptr %i.h, align 8, !noalias !1081
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.i, label %_RNvXsz_NtCs6et67aoV1xO_11proc_macro23impNtB5_11TokenStreamNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit, !prof !23

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1082)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1083
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !alias.scope !1084, !noalias !1085, !noundef !5
  %.not.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = tail call noundef i32 @_RNvXsa_NtNtCs3b5wA5ywLsd_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.m), !noalias !1085
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = phi i32 [ %i.o, %bb.d ], [ 0, %bb.c ]    ; 3 uses
  store i32 %i.p, ptr %i.b, align 4, !noalias !1083
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1083
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtCs3b5wA5ywLsd_10proc_macro9TokenTreeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d)
          to label %_RNvXsA_NtCs6et67aoV1xO_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i unwind label %bb.f, !noalias !1085

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = icmp eq i32 %i.p, 0
  br i1 %i.r, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs3b5wA5ywLsd_10proc_macro11TokenStreamECsgbWeKYPjk8w_3syn.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXs0_NtNtCs3b5wA5ywLsd_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs3b5wA5ywLsd_10proc_macro11TokenStreamECsgbWeKYPjk8w_3syn.exit.i.i unwind label %bb.h, !noalias !1085

bb.h:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !1085
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations_macros-75ec4afe3f03c6e4.foundations_macros.7ba45c94b41498b1-cgu.0?download=true
inline.NumInlined: 59
inline.NumDeleted: 50
begin_hunk_0_@_RNvXs0_NtNtCsaC8UfsfJL0H_18foundations_macros11info_metric7parsingNtB7_5FieldNtNtCs6bAnw1I7Lci_3syn5parse5Parse5parse:bb.a
  call void @_RNvNvXs0_NtNtCsaC8UfsfJL0H_18foundations_macros11info_metric7parsingNtB9_5FieldNtNtCs6bAnw1I7Lci_3syn5parse5Parse5parse11parse_attrs(ptr nonnull sret([512 x i8]) align 8 %i.t, ptr nonnull align 8 %i.g)
  call void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric10FieldAttrsNtNtCs6bAnw1I7Lci_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([512 x i8]) align 8 %i.u, ptr nonnull align 8 %i.t) #18
  %i.z = load i64, ptr %i.u, align 8
  %i.aa = icmp eq i64 %i.z, -2
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  call void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric5FieldNtNtCs6bAnw1I7Lci_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1F_EE13from_residualBO_(ptr sret([800 x i8]) align 8 %0, ptr nonnull align 8 %i.b, ptr nonnull align 8 @67) #18
  br label %bb.aa

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.v, ptr noundef nonnull align 8 dereferenceable(512) %i.u, i64 512, i1 false)
  invoke void @_RINvMs9_NtCs6bAnw1I7Lci_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_11restriction10VisibilityEB8_(ptr nonnull sret([32 x i8]) align 8 %i.o, ptr align 8 %1)
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %bb.l, %bb.g
  %.pn5 = phi { ptr, i32 } [ %i.ac, %bb.g ], [ %.pn, %bb.l ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric10FieldAttrsEBF_(ptr nonnull align 8 %i.v) #19
          to label %bb.af unwind label %bb.ad

bb.g:                                             ; preds = %bb.ac, %bb.j, %bb.h, %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCs6bAnw1I7Lci_3syn11restriction10VisibilityNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([32 x i8]) align 8 %i.p, ptr nonnull align 8 %i.o)
          to label %bb.i unwind label %bb.g

bb.i:                                             ; preds = %bb.h
  %i.ad = load i32, ptr %i.p, align 8
  %i.ae = icmp eq i32 %i.ad, -1
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false)
  invoke void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric5FieldNtNtCs6bAnw1I7Lci_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1F_EE13from_residualBO_(ptr sret([800 x i8]) align 8 %0, ptr nonnull align 8 %i.c, ptr nonnull align 8 @66)
          to label %bb.ae unwind label %bb.g

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false)
  invoke void @_RINvMs9_NtCs6bAnw1I7Lci_3syn5parseNtB6_11ParseBuffer5parseNtCse4VeaA6Ikg_11proc_macro25IdentEB8_(ptr nonnull sret([32 x i8]) align 8 %i.l, ptr align 8 %1)
          to label %bb.n unwind label %bb.m

bb.l:                                             ; preds = %bb.r, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.m ], [ %i.ak, %bb.r ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn11restriction10VisibilityEBF_(ptr nonnull align 8 %i.q) #19
          to label %bb.f unwind label %bb.ad

bb.m:                                             ; preds = %bb.ab, %bb.p, %bb.n, %bb.k
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.n:                                             ; preds = %bb.k
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtCse4VeaA6Ikg_11proc_macro25IdentNtNtCs6bAnw1I7Lci_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1m_(ptr nonnull sret([32 x i8]) align 8 %i.m, ptr nonnull align 8 %i.l)
          to label %bb.o unwind label %bb.m

bb.o:                                             ; preds = %bb.n
  %i.ah = load i64, ptr %i.m, align 8
  %i.ai = trunc nuw i64 %i.ah to i1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  br i1 %i.ai, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false)
  invoke void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric5FieldNtNtCs6bAnw1I7Lci_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1F_EE13from_residualBO_(ptr sret([800 x i8]) align 8 %0, ptr nonnull align 8 %i.d, ptr nonnull align 8 @65)
          to label %bb.ac unwind label %bb.m

bb.q:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false)
  invoke void @_RINvMs9_NtCs6bAnw1I7Lci_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token5ColonEB8_(ptr nonnull sret([24 x i8]) align 8 %i.j, ptr align 8 %1)
          to label %bb.s unwind label %bb.r

bb.r:                                             ; preds = %.invoke, %bb.w, %bb.v, %bb.s, %bb.q
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.n) #19
          to label %bb.l unwind label %bb.ad

bb.s:                                             ; preds = %bb.q
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCs6bAnw1I7Lci_3syn5token5ColonNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([24 x i8]) align 8 %i.k, ptr nonnull align 8 %i.j)
          to label %bb.t unwind label %bb.r

bb.t:                                             ; preds = %bb.s
  %i.al = load i64, ptr %i.k, align 8
  %.not = icmp eq i64 %i.al, -1
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  br label %.invoke

bb.v:                                             ; preds = %bb.t
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.0.0.copyload = load i32, ptr %i.am, align 8
  invoke void @_RINvMs9_NtCs6bAnw1I7Lci_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_2ty4TypeEB8_(ptr nonnull sret([224 x i8]) align 8 %i.h, ptr align 8 %1)
          to label %bb.w unwind label %bb.r

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCs6bAnw1I7Lci_3syn2ty4TypeNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([224 x i8]) align 8 %i.i, ptr nonnull align 8 %i.h)
          to label %bb.x unwind label %bb.r

bb.x:                                             ; preds = %bb.w
  %i.an = load i64, ptr %i.i, align 8
  %i.ao = icmp eq i64 %i.an, -1
  br i1 %i.ao, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false)
  br label %.invoke

.invoke:                                          ; preds = %bb.u, %bb.y
  %i.aq = phi ptr [ %i.f, %bb.y ], [ %i.e, %bb.u ]
  %i.ar = phi ptr [ @63, %bb.y ], [ @64, %bb.u ]
  invoke void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric5FieldNtNtCs6bAnw1I7Lci_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1F_EE13from_residualBO_(ptr sret([800 x i8]) align 8 %0, ptr nonnull align 8 %i.aq, ptr nonnull align 8 %i.ar)
          to label %bb.ab unwind label %bb.r

bb.z:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %.sroa.02, ptr noundef nonnull align 8 dereferenceable(224) %i.i, i64 224, i1 false)
  %.sroa.02.224..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.02, i64 224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %.sroa.02.224..sroa_idx, ptr noundef nonnull align 8 dereferenceable(512) %i.v, i64 512, i1 false)
  %.sroa.02.736..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.02, i64 736
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.02.736..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false)
  %.sroa.02.768..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.02, i64 768
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.02.768..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(792) %0, ptr noundef nonnull align 8 dereferenceable(792) %.sroa.02, i64 792, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 792
  store i32 %.sroa.0.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ae, %bb.z, %bb.d, %bb.b
  ret void

bb.ab:                                            ; preds = %.invoke
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.n)
          to label %bb.ac unwind label %bb.m

bb.ac:                                            ; preds = %bb.p, %bb.ab
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn11restriction10VisibilityEBF_(ptr nonnull align 8 %i.q)
          to label %bb.ae unwind label %bb.g

bb.ad:                                            ; preds = %bb.r, %bb.l, %bb.f
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.ae:                                            ; preds = %bb.j, %bb.ac
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaC8UfsfJL0H_18foundations_macros11info_metric10FieldAttrsEBF_(ptr nonnull align 8 %i.v)
  br label %bb.aa

bb.af:                                            ; preds = %bb.f
  resume { ptr, i32 } %.pn5
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtCsaC8UfsfJL0H_18foundations_macros7span_fnNtB5_4ArgsNtNtCs6bAnw1I7Lci_3syn5parse5Parse5parse(ptr sret([104 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [80 x i8], align 8                ; 4 uses
  %i.g = alloca [80 x i8], align 8                ; 5 uses
  %i.h = alloca [80 x i8], align 8                ; 4 uses
  %i.i = alloca [80 x i8], align 8                ; 4 uses
  %i.j = alloca [80 x i8], align 8                ; 4 uses
  %i.k = alloca [80 x i8], align 8                ; 4 uses
  %i.l = alloca [80 x i8], align 8                ; 4 uses
  %i.m = alloca [80 x i8], align 8                ; 4 uses
  %i.n = alloca [80 x i8], align 8                ; 4 uses
  %i.o = alloca [80 x i8], align 8                ; 4 uses
  %i.p = alloca [80 x i8], align 8                ; 4 uses
  %i.q = alloca [80 x i8], align 8                ; 4 uses
  %i.r = alloca [80 x i8], align 8                ; 4 uses
  %i.s = alloca [80 x i8], align 8                ; 4 uses
  %i.t = alloca [80 x i8], align 8                ; 4 uses
  %i.u = alloca [80 x i8], align 8                ; 4 uses
  %i.v = alloca [80 x i8], align 8                ; 4 uses
  %i.w = alloca [80 x i8], align 8                ; 4 uses
  %i.x = alloca [80 x i8], align 8                ; 4 uses
  %i.y = alloca [80 x i8], align 8                ; 4 uses
  %i.z = alloca [80 x i8], align 8                ; 4 uses
  %i.aa = alloca [80 x i8], align 8               ; 4 uses
  %i.ab = alloca [48 x i8], align 8               ; 5 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [8 x i8], align 8                ; 16 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [24 x i8], align 8               ; 14 uses
  %i.ag = alloca [56 x i8], align 8               ; 9 uses
  %i.ah = alloca [24 x i8], align 8               ; 2 uses
  %i.ai = alloca [24 x i8], align 8               ; 2 uses
  %i.aj = alloca [80 x i8], align 8               ; 2 uses
  %i.ak = alloca [104 x i8], align 8              ; 3 uses
  %i.al = alloca [80 x i8], align 8               ; 6 uses
  %i.am = alloca [80 x i8], align 8               ; 4 uses
  %i.an = alloca [32 x i8], align 8               ; 2 uses
  %i.ao = alloca [32 x i8], align 8               ; 3 uses
  %i.ap = alloca [24 x i8], align 8               ; 6 uses
  %i.aq = alloca [48 x i8], align 8               ; 2 uses
  %i.ar = alloca [48 x i8], align 8               ; 4 uses
  %i.as = alloca [48 x i8], align 8               ; 4 uses
  %i.at = alloca [8 x i8], align 8                ; 2 uses
  store ptr %1, ptr %i.at, align 8
  call void @_RINvMs9_NtCs6bAnw1I7Lci_3syn5parseNtB6_11ParseBuffer5parseNtNtCsaC8UfsfJL0H_18foundations_macros7span_fn8SpanNameEBY_(ptr nonnull sret([48 x i8]) align 8 %i.aq, ptr align 8 %1)
  call void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsaC8UfsfJL0H_18foundations_macros7span_fn8SpanNameNtNtCs6bAnw1I7Lci_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([48 x i8]) align 8 %i.ar, ptr nonnull align 8 %i.aq) #18
  %i.au = load i64, ptr %i.ar, align 8
  %i.av = icmp eq i64 %i.au, -2
  br i1 %i.av, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 24, i1 false)
  call void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsaC8UfsfJL0H_18foundations_macros7span_fn4ArgsNtNtCs6bAnw1I7Lci_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1z_EE13from_residualBO_(ptr sret([104 x i8]) align 8 %0, ptr nonnull align 8 %i.ah, ptr nonnull align 8 @74) #18
  br label %bb.ce

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.as, ptr noundef nonnull align 8 dereferenceable(48) %i.ar, i64 48, i1 false)
  invoke void @_RNvNtCsaC8UfsfJL0H_18foundations_macros6common33parse_optional_trailing_meta_list(ptr nonnull sret([32 x i8]) align 8 %i.an, ptr nonnull align 8 %i.at)
          to label %bb.d unwind label %.thread7

.thread7:                                         ; preds = %bb.f, %bb.cf, %bb.d, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaENtNtCs6bAnw1I7Lci_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1p_(ptr nonnull sret([32 x i8]) align 8 %i.ao, ptr nonnull align 8 %i.an)
          to label %bb.e unwind label %.thread7

bb.e:                                             ; preds = %bb.d
  %i.ax = load i64, ptr %i.ao, align 8
  %i.ay = trunc nuw i64 %i.ax to i1
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  br i1 %i.ay, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false)
  invoke void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsaC8UfsfJL0H_18foundations_macros7span_fn4ArgsNtNtCs6bAnw1I7Lci_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1z_EE13from_residualBO_(ptr sret([104 x i8]) align 8 %0, ptr nonnull align 8 %i.ai, ptr nonnull align 8 @73)
          to label %bb.cg unwind label %.thread7

bb.g:                                             ; preds = %bb.ab, %bb.cc, %bb.ca
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.thread37.i, %bb.bz, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.ba, %bb.g ], [ %.pn27.pn.i, %bb.bz ], [ %.pn27.pn.i, %.thread37.i ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaEEB1g_(ptr nonnull align 8 %i.ap) #19
          to label %.thread unwind label %bb.ch

bb.h:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.be = load i64, ptr %i.bd, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !73)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store i8 0, ptr %i.ag, align 8, !noalias !73
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 7 uses
  store i64 -1, ptr %i.bf, align 8, !noalias !73
  invoke void @_RNvMNtCsje5z0uo7eGy_12darling_core5errorNtB2_5Error11accumulator(ptr nonnull sret([24 x i8]) align 8 %i.af)
          to label %bb.i unwind label %bb.j, !noalias !73

.thread37.i:                                      ; preds = %.thread.i, %bb.w, %bb.j
  %.pn27.pn.i = phi { ptr, i32 } [ %.pn2733.i, %.thread.i ], [ %lpad.thr_comm.split-lp.i, %bb.j ], [ %i.br, %bb.w ] ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !noalias !73
  %.not43.i = icmp eq i64 %i.bg, -1
  br i1 %.not43.i, label %.body, label %bb.bz

bb.i:                                             ; preds = %bb.h
  %i.bh = invoke { ptr, ptr } @_RNvXs_NtNtCs3oUPovFnLWP_4core5slice4iterRSNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaNtNtNtNtB8_4iter6traits7collect12IntoIterator9into_iterBM_(ptr align 8 %i.bc, i64 %i.be)
          to label %bb.k unwind label %.thread40.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !73 ; 2 uses

.thread40.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.by, %bb.bx, %bb.ac, %bb.l, %bb.aw, %bb.ae, %bb.ad, %bb.i
  %lpad.loopexit.split-lp72 = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.j:                                             ; preds = %bb.y, %bb.v, %bb.r, %bb.p, %bb.o, %bb.h
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread37.i

bb.k:                                             ; preds = %bb.i
  %i.bi = extractvalue { ptr, ptr } %i.bh, 0
  %i.bj = extractvalue { ptr, ptr } %i.bh, 1
  store ptr %i.bi, ptr %i.ae, align 8, !noalias !73
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.bj, ptr %i.bk, align 8, !noalias !73
  br label %.outer.i

.outer.i:                                         ; preds = %bb.aw, %bb.k
  %.sroa.38.0.ph.i = phi i8 [ %.sroa.38.1.i, %bb.aw ], [ 2, %bb.k ] ; 9 uses
  %.sroa.07.0.ph.i = phi i1 [ %.sroa.07.1.i, %bb.aw ], [ false, %bb.k ] ; 7 uses
  %.sroa.35.0.ph.i = phi i8 [ %.sroa.35.1.i, %bb.aw ], [ 2, %bb.k ] ; 9 uses
  %.sroa.04.0.ph.i = phi i1 [ %.sroa.04.1.i, %bb.aw ], [ false, %bb.k ] ; 7 uses
  %.sroa.3.0.ph.i = phi i8 [ %.sroa.3.1.i, %bb.aw ], [ 2, %bb.k ] ; 9 uses
  %.sroa.02.0.ph.i = phi i1 [ %.sroa.02.1.i, %bb.aw ], [ false, %bb.k ] ; 7 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.by, %.outer.i
  %i.bl = invoke align 8 ptr @_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterNtNtNtNtCsje5z0uo7eGy_12darling_core3ast4data11nested_meta10NestedMetaENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBX_(ptr nonnull align 8 %i.ae)
          to label %bb.m unwind label %.thread40.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !73 ; 5 uses

bb.m:                                             ; preds = %bb.l
  %.not.i = icmp eq ptr %i.bl, null
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bm = load i64, ptr %i.bl, align 8, !noalias !73
  %i.bn = icmp eq i64 %i.bm, -1
  br i1 %i.bn, label %bb.ac, label %bb.ad

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !noalias !73
  invoke void @_RNvMs8_NtCsje5z0uo7eGy_12darling_core5errorNtB5_11Accumulator6finish(ptr nonnull sret([80 x i8]) align 8 %i.f, ptr nonnull align 8 %i.e)
          to label %bb.p unwind label %bb.j, !noalias !73

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultuNtNtCsje5z0uo7eGy_12darling_core5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBP_(ptr nonnull sret([80 x i8]) align 8 %i.g, ptr nonnull align 8 %i.f)
          to label %bb.q unwind label %bb.j, !noalias !73

bb.q:                                             ; preds = %bb.p
  %i.bo = load i64, ptr %i.g, align 8, !noalias !73
  %.not21.i = icmp eq i64 %i.bo, -1
  br i1 %.not21.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 80, i1 false), !noalias !73
  invoke void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsaC8UfsfJL0H_18foundations_macros7span_fn7OptionsNtNtCsje5z0uo7eGy_12darling_core5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1C_EE13from_residualBO_(ptr nonnull sret([80 x i8]) align 8 %i.al, ptr nonnull align 8 %i.c, ptr nonnull align 8 @75)
          to label %bb.ab unwind label %bb.j

bb.s:                                             ; preds = %bb.q
  %i.bp = load i64, ptr %i.bf, align 8, !noalias !73
  %.not22.i = icmp eq i64 %i.bp, -1
  br i1 %.not22.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.bf, i64 48, i1 false), !noalias !73
  br label %bb.u

bb.u:                                             ; preds = %_RNvMs0_NtCsaC8UfsfJL0H_18foundations_macros7span_fnNtB5_7Options18default_crate_path.exit.i, %bb.t
  %.not23.i = icmp eq i8 %.sroa.3.0.ph.i, 2
  %spec.select.i = select i1 %.not23.i, i8 0, i8 %.sroa.3.0.ph.i
  %.not24.i = icmp eq i8 %.sroa.35.0.ph.i, 2
  %.sroa.016.0.i = select i1 %.not24.i, i8 0, i8 %.sroa.35.0.ph.i
  %.not25.i = icmp eq i8 %.sroa.38.0.ph.i, 2
  %.sroa.017.0.i = select i1 %.not25.i, i8 0, i8 %.sroa.38.0.ph.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bq, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  %.sroa.213.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %2 = freeze i8 %spec.select.i
  %3 = zext i8 %2 to i16
  %4 = freeze i8 %.sroa.016.0.i
  %5 = zext i8 %4 to i16
  %6 = shl nuw i16 %5, 8
  %7 = or disjoint i16 %6, %3
  store i16 %7, ptr %.sroa.213.0..sroa_idx.i, align 8, !alias.scope !73
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 58
  store i8 %.sroa.017.0.i, ptr %.sroa.4.0..sroa_idx.i, align 2, !alias.scope !73
  store i64 -1, ptr %i.al, align 8, !alias.scope !73
  br label %bb.ca

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !73
  invoke void @_RNvMCse4VeaA6Ikg_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a)
          to label %.noexc.i unwind label %bb.j, !noalias !74

.noexc.i:                                         ; preds = %bb.v
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private11push_colon2(ptr nonnull align 8 %i.a)
          to label %bb.x unwind label %bb.w, !noalias !74

bb.w:                                             ; preds = %bb.x, %.noexc.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro211TokenStreamECsk5uxfcyCLQt_5quote(ptr nonnull align 8 %i.a) #19
          to label %.thread37.i unwind label %bb.z, !noalias !74

bb.x:                                             ; preds = %.noexc.i
  invoke void @_RNvNtCsk5uxfcyCLQt_5quote9___private10push_ident(ptr nonnull align 8 %i.a, ptr nonnull @14, i64 11)
          to label %bb.y unwind label %bb.w, !noalias !74

bb.y:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !74
  invoke void @_RINvNtCs6bAnw1I7Lci_3syn11parse_quote5parseNtNtB4_4path4PathECsje5z0uo7eGy_12darling_core(ptr nonnull sret([48 x i8]) align 8 %i.d, ptr nonnull align 8 %i.b, ptr nonnull align 8 @16)
          to label %_RNvMs0_NtCsaC8UfsfJL0H_18foundations_macros7span_fnNtB5_7Options18default_crate_path.exit.i unwind label %bb.j, !noalias !73

bb.z:                                             ; preds = %bb.w
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !74
  unreachable

_RNvMs0_NtCsaC8UfsfJL0H_18foundations_macros7span_fnNtB5_7Options18default_crate_path.exit.i: ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !73
  br label %bb.u

bb.aa:                                            ; preds = %bb.bz, %.thread.i, %bb.ag
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.ab:                                            ; preds = %bb.r
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTbINtNtB4_6option6OptionNtNtCs6bAnw1I7Lci_3syn4path4PathEEECsaC8UfsfJL0H_18foundations_macros(ptr nonnull align 8 %i.ag)
          to label %bb.ca unwind label %bb.g

bb.ac:                                            ; preds = %bb.n
  invoke void @_RNvMNtCsje5z0uo7eGy_12darling_core5errorNtB2_5Error18unsupported_format(ptr nonnull sret([80 x i8]) align 8 %i.h, ptr nonnull @71, i64 7)
          to label %bb.bx unwind label %.thread40.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !73

bb.ad:                                            ; preds = %bb.n
  store ptr %i.bl, ptr %i.ad, align 8, !noalias !73
  %i.bu = invoke align 8 ptr @_RNvMs_NtCs6bAnw1I7Lci_3syn4attrNtB4_4Meta4path(ptr nonnull align 8 %i.bl)
          to label %bb.ae unwind label %.thread40.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !73

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvNtNtCsje5z0uo7eGy_12darling_core4util14path_to_string14path_to_string(ptr nonnull sret([24 x i8]) align 8 %i.ac, ptr align 8 %i.bu)
          to label %bb.af unwind label %.thread40.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !73

bb.af:                                            ; preds = %bb.ae
  %i.bv = invoke { ptr, i64 } @_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String6as_strCsaC8UfsfJL0H_18foundations_macros(ptr nonnull align 8 %i.ac)
          to label %bb.ai unwind label %bb.ah, !noalias !73 ; 2 uses

bb.ag:                                            ; preds = %bb.bu, %bb.ah
  %.pn.i = phi { ptr, i32 } [ %i.bw, %bb.ah ], [ %i.cn, %bb.bu ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECse4VeaA6Ikg_11proc_macro2(ptr nonnull align 8 %i.ac) #19
          to label %.thread.i unwind label %bb.aa, !noalias !73

bb.ah:                                            ; preds = %.invoke.i, %bb.bw, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.av, %bb.at, %bb.aq, %bb.an, %bb.ak, %bb.ai, %bb.af
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ai:                                            ; preds = %bb.af
  %i.bx = extractvalue { ptr, i64 } %i.bv, 0      ; 5 uses
  %i.by = extractvalue { ptr, i64 } %i.bv, 1      ; 5 uses
  %i.bz = invoke zeroext i1 @_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsaC8UfsfJL0H_18foundations_macros(ptr %i.bx, i64 %i.by, ptr nonnull @9, i64 10)
          to label %bb.aj unwind label %bb.ah, !noalias !73

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.bz, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ca = invoke zeroext i1 @_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsaC8UfsfJL0H_18foundations_macros(ptr %i.bx, i64 %i.by, ptr nonnull @13, i64 11)
          to label %bb.am unwind label %bb.ah, !noalias !73

bb.al:                                            ; preds = %bb.aj
  %i.cb = load i8, ptr %i.ag, align 8, !noalias !73
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.bp, label %bb.bq

bb.am:                                            ; preds = %bb.ak
  br i1 %i.ca, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cd = invoke zeroext i1 @_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsaC8UfsfJL0H_18foundations_macros(ptr %i.bx, i64 %i.by, ptr nonnull @11, i64 7)
          to label %bb.ap unwind label %bb.ah, !noalias !73

bb.ao:                                            ; preds = %bb.am
  br i1 %.sroa.02.0.ph.i, label %bb.bj, label %bb.bk

bb.ap:                                            ; preds = %bb.an
  br i1 %i.cd, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ce = invoke zeroext i1 @_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsaC8UfsfJL0H_18foundations_macros(ptr %i.bx, i64 %i.by, ptr nonnull @12, i64 4)
          to label %bb.as unwind label %bb.ah, !noalias !73

bb.ar:                                            ; preds = %bb.ap
  br i1 %.sroa.04.0.ph.i, label %bb.bd, label %bb.be

bb.as:                                            ; preds = %bb.aq
  br i1 %i.ce, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  invoke void @_RINvMNtCsje5z0uo7eGy_12darling_core5errorNtB3_5Error23unknown_field_with_altsReRAB1d_j4_ECsaC8UfsfJL0H_18foundations_macros(ptr nonnull sret([80 x i8]) align 8 %i.j, ptr %i.bx, i64 %i.by, ptr nonnull align 8 @76)
          to label %bb.av unwind label %bb.ah, !noalias !73

bb.au:                                            ; preds = %bb.as
  br i1 %.sroa.07.0.ph.i, label %bb.ax, label %bb.ay

bb.av:                                            ; preds = %bb.at
  %i.cf = load ptr, ptr %i.ad, align 8, !noalias !73
  invoke void @_RINvMs0_NtCsje5z0uo7eGy_12darling_core5errorNtB6_5Error9with_spanNtNtCs6bAnw1I7Lci_3syn4attr4MetaEB8_(ptr nonnull sret([80 x i8]) align 8 %i.k, ptr nonnull align 8 %i.j, ptr align 8 %i.cf)
          to label %.invoke.i unwind label %bb.ah, !noalias !73

bb.aw:                                            ; preds = %.invoke.i, %bb.bv, %bb.bo, %bb.bm, %bb.bi, %bb.bg, %bb.bc, %bb.ba
  %.sroa.38.1.i = phi i8 [ %.sroa.38.0.ph.i, %.invoke.i ], [ %.sroa.38.0.ph.i, %bb.bv ], [ %.sroa.38.0.ph.i, %bb.bo ], [ %.sroa.38.0.ph.i, %bb.bg ], [ %.sroa.38.0.ph.i, %bb.bi ], [ %i.ch, %bb.ba ], [ %.sroa.38.0.ph.i, %bb.bc ], [ %.sroa.38.0.ph.i, %bb.bm ]
  %.sroa.07.1.i = phi i1 [ %.sroa.07.0.ph.i, %.invoke.i ], [ %.sroa.07.0.ph.i, %bb.bv ], [ %.sroa.07.0.ph.i, %bb.bo ], [ %.sroa.07.0.ph.i, %bb.bg ], [ %.sroa.07.0.ph.i, %bb.bi ], [ true, %bb.ba ], [ true, %bb.bc ], [ %.sroa.07.0.ph.i, %bb.bm ]
  %.sroa.35.1.i = phi i8 [ %.sroa.35.0.ph.i, %.invoke.i ], [ %.sroa.35.0.ph.i, %bb.bv ], [ %.sroa.35.0.ph.i, %bb.bo ], [ %i.cj, %bb.bg ], [ %.sroa.35.0.ph.i, %bb.bi ], [ %.sroa.35.0.ph.i, %bb.ba ], [ %.sroa.35.0.ph.i, %bb.bc ], [ %.sroa.35.0.ph.i, %bb.bm ]
  %.sroa.04.1.i = phi i1 [ %.sroa.04.0.ph.i, %.invoke.i ], [ %.sroa.04.0.ph.i, %bb.bv ], [ %.sroa.04.0.ph.i, %bb.bo ], [ true, %bb.bg ], [ true, %bb.bi ], [ %.sroa.04.0.ph.i, %bb.ba ], [ %.sroa.04.0.ph.i, %bb.bc ], [ %.sroa.04.0.ph.i, %bb.bm ]
  %.sroa.3.1.i = phi i8 [ %.sroa.3.0.ph.i, %.invoke.i ], [ %.sroa.3.0.ph.i, %bb.bv ], [ %.sroa.3.0.ph.i, %bb.bo ], [ %.sroa.3.0.ph.i, %bb.bg ], [ %.sroa.3.0.ph.i, %bb.bi ], [ %.sroa.3.0.ph.i, %bb.ba ], [ %.sroa.3.0.ph.i, %bb.bc ], [ %i.cl, %bb.bm ]
  %.sroa.02.1.i = phi i1 [ %.sroa.02.0.ph.i, %.invoke.i ], [ %.sroa.02.0.ph.i, %bb.bv ], [ true, %bb.bo ], [ %.sroa.02.0.ph.i, %bb.bg ], [ %.sroa.02.0.ph.i, %bb.bi ], [ %.sroa.02.0.ph.i, %bb.ba ], [ %.sroa.02.0.ph.i, %bb.bc ], [ true, %bb.bm ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECse4VeaA6Ikg_11proc_macro2(ptr nonnull align 8 %i.ac)
          to label %.outer.i unwind label %.thread40.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !73

bb.ax:                                            ; preds = %bb.au
  invoke void @_RNvMNtCsje5z0uo7eGy_12darling_core5errorNtB2_5Error15duplicate_field(ptr nonnull sret([80 x i8]) align 8 %i.l, ptr nonnull @12, i64 4)
          to label %bb.bb unwind label %bb.ah, !noalias !73

bb.ay:                                            ; preds = %bb.au
  %i.cg = load ptr, ptr %i.ad, align 8, !noalias !73
  invoke void @_RNvYbNtNtCsje5z0uo7eGy_12darling_core9from_meta8FromMeta9from_metaB7_(ptr nonnull sret([80 x i8]) align 8 %i.n, ptr align 8 %i.cg)
          to label %bb.az unwind label %bb.ah, !noalias !73

bb.az:                                            ; preds = %bb.ay
  invoke void @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultbNtNtCsje5z0uo7eGy_12darling_core5error5ErrorE7map_errBJ_NCNvXs3_NtCsaC8UfsfJL0H_18foundations_macros7span_fnNtB1L_7OptionsNtNtBN_9from_meta8FromMeta9from_lists1_0EB1N_(ptr nonnull sret([80 x i8]) align 8 %i.o, ptr nonnull align 8 %i.n, ptr nonnull align 8 %i.ad)
          to label %bb.ba unwind label %bb.ah, !noalias !73

bb.ba:                                            ; preds = %bb.az
  %i.ch = invoke i8 @_RINvMs8_NtCsje5z0uo7eGy_12darling_core5errorNtB6_11Accumulator6handlebECsaC8UfsfJL0H_18foundations_macros(ptr nonnull align 8 %i.af, ptr nonnull align 8 %i.o)
          to label %bb.aw unwind label %bb.ah, !noalias !73

bb.bb:                                            ; preds = %bb.ax
  invoke void @_RINvMs0_NtCsje5z0uo7eGy_12darling_core5errorNtB6_5Error9with_spanRNtNtCs6bAnw1I7Lci_3syn4attr4MetaECsaC8UfsfJL0H_18foundations_macros(ptr nonnull sret([80 x i8]) align 8 %i.m, ptr nonnull align 8 %i.l, ptr nonnull align 8 %i.ad)
          to label %bb.bc unwind label %bb.ah, !noalias !73

bb.bc:                                            ; preds = %bb.bb
  invoke void @_RNvMs8_NtCsje5z0uo7eGy_12darling_core5errorNtB5_11Accumulator4push(ptr nonnull align 8 %i.af, ptr nonnull align 8 %i.m)
          to label %bb.aw unwind label %bb.ah, !noalias !73

bb.bd:                                            ; preds = %bb.ar
  invoke void @_RNvMNtCsje5z0uo7eGy_12darling_core5errorNtB2_5Error15duplicate_field(ptr nonnull sret([80 x i8]) align 8 %i.p, ptr nonnull @11, i64 7)
          to label %bb.bh unwind label %bb.ah, !noalias !73

bb.be:                                            ; preds = %bb.ar
  %i.ci = load ptr, ptr %i.ad, align 8, !noalias !73
  invoke void @_RNvYbNtNtCsje5z0uo7eGy_12darling_core9from_meta8FromMeta9from_metaB7_(ptr nonnull sret([80 x i8]) align 8 %i.r, ptr align 8 %i.ci)
          to label %bb.bf unwind label %bb.ah, !noalias !73

bb.bf:                                            ; preds = %bb.be
  invoke void @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultbNtNtCsje5z0uo7eGy_12darling_core5error5ErrorE7map_errBJ_NCNvXs3_NtCsaC8UfsfJL0H_18foundations_macros7span_fnNtB1L_7OptionsNtNtBN_9from_meta8FromMeta9from_lists0_0EB1N_(ptr nonnull sret([80 x i8]) align 8 %i.s, ptr nonnull align 8 %i.r, ptr nonnull align 8 %i.ad)
          to label %bb.bg unwind label %bb.ah, !noalias !73

bb.bg:                                            ; preds = %bb.bf
  %i.cj = invoke i8 @_RINvMs8_NtCsje5z0uo7eGy_12darling_core5errorNtB6_11Accumulator6handlebECsaC8UfsfJL0H_18foundations_macros(ptr nonnull align 8 %i.af, ptr nonnull align 8 %i.s)
          to label %bb.aw unwind label %bb.ah, !noalias !73

bb.bh:                                            ; preds = %bb.bd
  invoke void @_RINvMs0_NtCsje5z0uo7eGy_12darling_core5errorNtB6_5Error9with_spanRNtNtCs6bAnw1I7Lci_3syn4attr4MetaECsaC8UfsfJL0H_18foundations_macros(ptr nonnull sret([80 x i8]) align 8 %i.q, ptr nonnull align 8 %i.p, ptr nonnull align 8 %i.ad)
          to label %bb.bi unwind label %bb.ah, !noalias !73

bb.bi:                                            ; preds = %bb.bh
  invoke void @_RNvMs8_NtCsje5z0uo7eGy_12darling_core5errorNtB5_11Accumulator4push(ptr nonnull align 8 %i.af, ptr nonnull align 8 %i.q)
          to label %bb.aw unwind label %bb.ah, !noalias !73

bb.bj:                                            ; preds = %bb.ao
  invoke void @_RNvMNtCsje5z0uo7eGy_12darling_core5errorNtB2_5Error15duplicate_field(ptr nonnull sret([80 x i8]) align 8 %i.t, ptr nonnull @13, i64 11)
          to label %bb.bn unwind label %bb.ah, !noalias !73

bb.bk:                                            ; preds = %bb.ao
  %i.ck = load ptr, ptr %i.ad, align 8, !noalias !73
  invoke void @_RNvYbNtNtCsje5z0uo7eGy_12darling_core9from_meta8FromMeta9from_metaB7_(ptr nonnull sret([80 x i8]) align 8 %i.v, ptr align 8 %i.ck)
          to label %bb.bl unwind label %bb.ah, !noalias !73

end_hunk_0

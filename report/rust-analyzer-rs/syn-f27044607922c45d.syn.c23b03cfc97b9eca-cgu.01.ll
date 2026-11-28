Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/syn-f27044607922c45d.syn.c23b03cfc97b9eca-cgu.01?download=true
inline.NumInlined: 164
begin_hunk_0_@_RNvXs5_NtNtCsgFSQ9XOTBNe_3syn4expr7parsingNtB7_9ExprParenNtNtB9_5parse5Parse5parse:bb.a

bb.c:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.d, align 8
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.f)
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 8 dereferenceable(12) %i.m, i64 12, i1 false)
  invoke void @_RINvMs9_NtCsgFSQ9XOTBNe_3syn5parseNtB6_11ParseBuffer5parseINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtB8_4expr4ExprEEB8_(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.g)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.f) #15
          to label %bb.s unwind label %bb.q

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtCsgFSQ9XOTBNe_3syn4expr4ExprENtNtB1n_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1n_(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b)
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %bb.g
  %i.o = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.o, -1
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  invoke void @_RNvXsq_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtCsgFSQ9XOTBNe_3syn4expr9ExprParenNtNtBO_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1l_EE13from_residualBO_(ptr sret([48 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr nonnull align 8 @201)
          to label %bb.m unwind label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 12, i1 false)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.q, ptr %.sroa.2.0..sroa_idx, align 8
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn5parse11ParseBufferEBF_(ptr nonnull align 8 %i.g)
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %bb.p, %bb.j
  ret void

bb.l:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.f) #15
          to label %bb.n unwind label %bb.q

bb.m:                                             ; preds = %bb.i
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.f)
          to label %bb.p unwind label %bb.o

bb.n:                                             ; preds = %bb.o, %bb.l
  %.pn = phi { ptr, i32 } [ %i.s, %bb.o ], [ %i.r, %bb.l ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn5parse11ParseBufferEBF_(ptr nonnull align 8 %i.g) #15
          to label %bb.r unwind label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.p:                                             ; preds = %bb.m
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn5parse11ParseBufferEBF_(ptr nonnull align 8 %i.g)
  br label %bb.k

bb.q:                                             ; preds = %bb.s, %bb.n, %bb.l, %bb.f, %bb.b
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.r:                                             ; preds = %bb.s, %bb.n, %bb.b
  %.pn5.pn = phi { ptr, i32 } [ %i.n, %bb.s ], [ %i.h, %bb.b ], [ %.pn, %bb.n ]
  resume { ptr, i32 } %.pn5.pn

bb.s:                                             ; preds = %bb.f
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn5parse11ParseBufferEBF_(ptr nonnull align 8 %i.g) #15
          to label %bb.r unwind label %bb.q
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtNtCsgFSQ9XOTBNe_3syn4expr8printingNtB7_8ExprCallNtNtCslCbDOIcU2Dw_5quote9to_tokens8ToTokens9to_tokens(ptr align 8 %0, ptr align 8 %1) unnamed_addr #3 !guid !175 {
bb.a:
  %i.a = alloca [12 x i8], align 1                ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.a, i8 0, i64 12, i1 false)
  call void @_RNvNtNtCsgFSQ9XOTBNe_3syn4expr8printing15print_expr_call(ptr align 8 %0, ptr align 8 %1, ptr nonnull align 1 %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs6_NtNtCsgFSQ9XOTBNe_3syn4expr7parsingNtB7_7ExprLetNtNtB9_5parse5Parse5parse(ptr sret([48 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #3 !guid !176 {
bb.a:
  tail call void @_RNvNtNtCsgFSQ9XOTBNe_3syn4expr7parsing8expr_let(ptr sret([48 x i8]) align 8 %0, ptr align 8 %1, i1 zeroext true)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs6_NtNtCsgFSQ9XOTBNe_3syn4expr8printingNtB7_8ExprCastNtNtCslCbDOIcU2Dw_5quote9to_tokens8ToTokens9to_tokens(ptr align 8 %0, ptr align 8 %1) unnamed_addr #3 !guid !177 {
bb.a:
  %i.a = alloca [12 x i8], align 1                ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.a, i8 0, i64 12, i1 false)
  call void @_RNvNtNtCsgFSQ9XOTBNe_3syn4expr8printing15print_expr_cast(ptr align 8 %0, ptr align 8 %1, ptr nonnull align 1 %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i32, i32 } @_RNvXs7_NtCsgFSQ9XOTBNe_3syn4exprNtB5_5IndexINtNtCshzWfHUSfYae_4core7convert4FromjE4from(i64 %0) unnamed_addr #3 !guid !178 {
bb.a:
  %i.a = icmp ult i64 %0, 4294967295
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr nonnull @202, i64 43, ptr nonnull align 8 @203) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = trunc nuw i64 %0 to i32
  %i.c = tail call i32 @_RNvMsi_Cs1K5DUQUZc67_11proc_macro2NtB5_4Span9call_site()
  %i.d = insertvalue { i32, i32 } poison, i32 %i.b, 0
  %i.e = insertvalue { i32, i32 } %i.d, i32 %i.c, 1
  ret { i32, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs7_NtNtCsgFSQ9XOTBNe_3syn4expr7parsingNtB7_6ExprIfNtNtB9_5parse5Parse5parse(ptr sret([96 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #3 personality ptr @rust_eh_personality !guid !179 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [24 x i8], align 8                ; 2 uses
  %i.f = alloca [176 x i8], align 8               ; 2 uses
  %i.g = alloca [24 x i8], align 8                ; 2 uses
  %i.h = alloca [24 x i8], align 8                ; 3 uses
  %i.i = alloca [176 x i8], align 8               ; 5 uses
  %i.j = alloca [96 x i8], align 8                ; 4 uses
  %i.k = alloca [96 x i8], align 8                ; 3 uses
  %i.l = alloca [56 x i8], align 8                ; 2 uses
  %i.m = alloca [24 x i8], align 8                ; 2 uses
  %i.n = alloca [40 x i8], align 8                ; 2 uses
  %i.o = alloca [40 x i8], align 8                ; 4 uses
  %i.p = alloca [40 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 5 uses
  %i.r = alloca [104 x i8], align 8               ; 4 uses
  %i.s = alloca [176 x i8], align 8               ; 4 uses
  %i.t = alloca [96 x i8], align 8                ; 2 uses
  %i.u = alloca [56 x i8], align 8                ; 8 uses
  %i.v = alloca [24 x i8], align 8                ; 2 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [176 x i8], align 8               ; 3 uses
  %i.y = alloca [24 x i8], align 8                ; 3 uses
  %.sroa.0 = alloca [64 x i8], align 8            ; 3 uses
  %i.z = alloca [40 x i8], align 8                ; 2 uses
  %i.aa = alloca [40 x i8], align 8               ; 4 uses
  %i.ab = alloca [40 x i8], align 8               ; 3 uses
  %i.ac = alloca [176 x i8], align 8              ; 2 uses
  %i.ad = alloca [176 x i8], align 8              ; 4 uses
  %i.ae = alloca [176 x i8], align 8              ; 4 uses
  %i.af = alloca [24 x i8], align 8               ; 2 uses
  %i.ag = alloca [24 x i8], align 8               ; 4 uses
  %i.ah = alloca [96 x i8], align 8               ; 17 uses
  %i.ai = alloca [24 x i8], align 8               ; 6 uses
  %i.aj = alloca [32 x i8], align 8               ; 2 uses
  %i.ak = alloca [32 x i8], align 8               ; 3 uses
  %i.al = alloca [24 x i8], align 8               ; 4 uses
  call void @_RINvMs9_NtCsgFSQ9XOTBNe_3syn5parseNtB6_11ParseBuffer4callINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtB8_4attr9AttributeEEB8_(ptr nonnull sret([32 x i8]) align 8 %i.aj, ptr align 8 %1, ptr nonnull @_RNvMNtCsgFSQ9XOTBNe_3syn4attrNtB2_9Attribute11parse_outer)
  call void @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeENtNtB1l_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1l_(ptr nonnull sret([32 x i8]) align 8 %i.ak, ptr nonnull align 8 %i.aj) #14
  %i.am = load i64, ptr %i.ak, align 8
  %i.an = trunc nuw i64 %i.am to i1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  br i1 %i.an, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false)
  call void @_RNvXsq_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtCsgFSQ9XOTBNe_3syn4expr6ExprIfNtNtBO_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1i_EE13from_residualBO_(ptr sret([96 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr nonnull align 8 @211) #14
  br label %bb.bj

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false)
  invoke void @_RNvMNtCsbSS6DM8SDEO_5alloc3vecINtB2_3VecNtNtCsgFSQ9XOTBNe_3syn4expr6ExprIfE3newBG_(ptr nonnull sret([24 x i8]) align 8 %i.ai)
          to label %.preheader unwind label %.split.thread

.preheader:                                       ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.0.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 64 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 72 ; 9 uses
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 80 ; 5 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 88
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  br label %bb.e

bb.d:                                             ; preds = %.critedge37
  br i1 %.sroa.019.3, label %bb.ch, label %bb.cg

.split.thread:                                    ; preds = %.critedge35, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = extractvalue { ptr, i32 } %lpad.thr_comm, 0
  %i.as = extractvalue { ptr, i32 } %lpad.thr_comm, 1
  br label %bb.ch

.split:                                           ; preds = %bb.bi
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 0
  %i.au = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 1
  br label %bb.cg

bb.e:                                             ; preds = %.preheader, %bb.bt
  invoke void @_RINvMs9_NtCsgFSQ9XOTBNe_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token2IfEB8_(ptr nonnull sret([24 x i8]) align 8 %i.af, ptr align 8 %1)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread149.thread210:                             ; preds = %.thread70.loopexit.split-lp, %bb.n, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn32.ph = phi { ptr, i32 } [ %.pn3075, %.thread70.loopexit.split-lp ], [ %.pn2888, %bb.n ], [ %lpad.loopexit.split-lp256, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.sroa.19.1213 = extractvalue { ptr, i32 } %.pn32.ph, 1
  %.sroa.020.1214 = extractvalue { ptr, i32 } %.pn32.ph, 0
  br label %.critedge37

.thread149:                                       ; preds = %.thread109
  %.sroa.19.1 = extractvalue { ptr, i32 } %.pn26104, 1 ; 2 uses
  %.sroa.020.1 = extractvalue { ptr, i32 } %.pn26104, 0 ; 2 uses
  br i1 %.sroa.014.7102, label %bb.cd, label %.critedge37

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.e, %bb.f, %bb.i, %bb.j, %.invoke, %bb.bu
  %lpad.loopexit.split-lp256 = landingpad { ptr, i32 }
          cleanup
  br label %.thread149.thread210

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtCsgFSQ9XOTBNe_3syn5token2IfNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([24 x i8]) align 8 %i.ag, ptr nonnull align 8 %i.af)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.f
  %i.av = load i64, ptr %i.ag, align 8
  %.not = icmp eq i64 %i.av, -1
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false)
  br label %.invoke

.invoke:                                          ; preds = %bb.l, %bb.h
  %i.aw = phi ptr [ %i.b, %bb.h ], [ %i.c, %bb.l ]
  %i.ax = phi ptr [ @210, %bb.h ], [ @209, %bb.l ]
  invoke void @_RNvXsq_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtCsgFSQ9XOTBNe_3syn4expr6ExprIfNtNtBO_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1i_EE13from_residualBO_(ptr sret([96 x i8]) align 8 %0, ptr nonnull align 8 %i.aw, ptr nonnull align 8 %i.ax)
          to label %.critedge35 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %bb.g
  %i.ay = load i32, ptr %i.ap, align 8
  invoke void @_RINvMs9_NtCsgFSQ9XOTBNe_3syn5parseNtB6_11ParseBuffer4callNtNtB8_4expr4ExprEB8_(ptr nonnull sret([176 x i8]) align 8 %i.ac, ptr align 8 %1, ptr nonnull @_RNvMNtCsgFSQ9XOTBNe_3syn4exprNtB2_4Expr25parse_without_eager_brace)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtCsgFSQ9XOTBNe_3syn4expr4ExprNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([176 x i8]) align 8 %i.ad, ptr nonnull align 8 %i.ac)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  %i.az = load i64, ptr %i.ad, align 8
  %i.ba = icmp eq i64 %i.az, -1
  br i1 %i.ba, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 24, i1 false)
  br label %.invoke

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.ae, ptr noundef nonnull align 8 dereferenceable(176) %i.ad, i64 176, i1 false)
  invoke void @_RINvMs9_NtCsgFSQ9XOTBNe_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_4stmt5BlockEB8_(ptr nonnull sret([40 x i8]) align 8 %i.z, ptr align 8 %1)
          to label %bb.o unwind label %.thread70.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %.thread81
  br i1 %.sroa.04.186, label %.thread70.loopexit.split-lp, label %.thread149.thread210

.thread70.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.m, %bb.o, %bb.q
  %lpad.loopexit.split-lp259 = landingpad { ptr, i32 }
          cleanup
  br label %.thread70.loopexit.split-lp

bb.o:                                             ; preds = %bb.m
  invoke void @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtCsgFSQ9XOTBNe_3syn4stmt5BlockNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([40 x i8]) align 8 %i.aa, ptr nonnull align 8 %i.z)
          to label %bb.p unwind label %.thread70.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.o
  %i.bc = load i64, ptr %i.aa, align 8
  %i.bd = icmp eq i64 %i.bc, -1
  br i1 %i.bd, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.be, i64 24, i1 false)
  invoke void @_RNvXsq_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtCsgFSQ9XOTBNe_3syn4expr6ExprIfNtNtBO_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1i_EE13from_residualBO_(ptr sret([96 x i8]) align 8 %0, ptr nonnull align 8 %i.d, ptr nonnull align 8 @208)
          to label %bb.bu unwind label %.thread70.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, ptr noundef nonnull align 8 dereferenceable(40) %i.aa, i64 40, i1 false)
  invoke void @_RNvMNtCsbSS6DM8SDEO_5alloc3vecINtB2_3VecNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeE3newBG_(ptr nonnull sret([24 x i8]) align 8 %i.y)
          to label %bb.t unwind label %bb.s

.thread92.loopexit.thread:                        ; preds = %bb.ac, %bb.z, %bb.y, %bb.w
  %lpad.thr_comm222 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.sroa.19.1220227 = extractvalue { ptr, i32 } %lpad.thr_comm222, 1
  %.sroa.020.1221228 = extractvalue { ptr, i32 } %lpad.thr_comm222, 0
  br label %bb.cd

.thread92.loopexit:                               ; preds = %bb.bt
  %lpad.thr_comm.split-lp223 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.sroa.19.1220 = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp223, 1
  %.sroa.020.1221 = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp223, 0
  br label %.critedge37

.thread92.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ay, %bb.ab, %.thread121, %bb.ax
  %lpad.loopexit.split-lp252 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.sroa.19.1218 = extractvalue { ptr, i32 } %lpad.loopexit.split-lp252, 1
  %.sroa.020.1219 = extractvalue { ptr, i32 } %lpad.loopexit.split-lp252, 0
  br label %bb.cd

bb.s:                                             ; preds = %bb.r
  %lpad.thr_comm.split-lp91 = landingpad { ptr, i32 }
          cleanup
  br label %.thread81

bb.t:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.x, ptr noundef nonnull align 8 dereferenceable(176) %i.ae, i64 176, i1 false)
  %i.bf = invoke ptr @_RNvNtCsbSS6DM8SDEO_5alloc5boxed14box_new_uninitCsgFSQ9XOTBNe_3syn(i64 8, i64 176)
          to label %bb.w unwind label %bb.u       ; 2 uses

bb.u:                                             ; preds = %bb.t
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn4expr4ExprEBF_(ptr nonnull align 8 %i.x) #15
          to label %.body44 unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #17
  unreachable

.body44:                                          ; preds = %bb.u
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.y) #15
          to label %.thread81 unwind label %bb.bh

bb.w:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.bf, ptr noundef nonnull align 8 dereferenceable(176) %i.x, i64 176, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.ab, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ah, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0, i64 64, i1 false)
  store ptr %i.bf, ptr %.sroa.3.0..sroa_idx, align 8
  store ptr null, ptr %.sroa.51.0..sroa_idx, align 8
  store i32 %i.ay, ptr %.sroa.6.0..sroa_idx, align 8
  %i.bi = invoke zeroext i1 @_RINvMs9_NtCsgFSQ9XOTBNe_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token4ElseNtNtB8_9lookahead11TokenMarkerEEB8_(ptr align 8 %1)
          to label %bb.x unwind label %.thread92.loopexit.thread

bb.x:                                             ; preds = %bb.w
  br i1 %i.bi, label %bb.y, label %.loopexit174

.loopexit174:                                     ; preds = %bb.x, %bb.ax
  %i.bj = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  br label %bb.ay

bb.y:                                             ; preds = %bb.x
  invoke void @_RINvMs9_NtCsgFSQ9XOTBNe_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token4ElseEB8_(ptr nonnull sret([24 x i8]) align 8 %i.v, ptr align 8 %1)
          to label %bb.z unwind label %.thread92.loopexit.thread

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtCsgFSQ9XOTBNe_3syn5token4ElseNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([24 x i8]) align 8 %i.w, ptr nonnull align 8 %i.v)
          to label %bb.aa unwind label %.thread92.loopexit.thread

bb.aa:                                            ; preds = %bb.z
  %i.bl = load i64, ptr %i.w, align 8
  %.not21 = icmp eq i64 %i.bl, -1
  br i1 %.not21, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  invoke void @_RNvXsq_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtCsgFSQ9XOTBNe_3syn4expr6ExprIfNtNtBO_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1i_EE13from_residualBO_(ptr sret([96 x i8]) align 8 %0, ptr nonnull align 8 %i.e, ptr nonnull align 8 @207)
          to label %.thread130 unwind label %.thread92.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ac:                                            ; preds = %bb.aa
  %i.bm = load i32, ptr %i.aq, align 8            ; 4 uses
  invoke void @_RNvMs9_NtCsgFSQ9XOTBNe_3syn5parseNtB5_11ParseBuffer10lookahead1(ptr nonnull sret([56 x i8]) align 8 %i.u, ptr align 8 %1)
          to label %bb.ad unwind label %.thread92.loopexit.thread

bb.ad:                                            ; preds = %bb.ac
  %i.bn = invoke zeroext i1 @_RINvMNtCsgFSQ9XOTBNe_3syn9lookaheadNtB3_10Lookahead14peekINvNtB5_5token2IfNtB3_11TokenMarkerEEB5_(ptr nonnull align 8 %i.u)
          to label %bb.ae unwind label %.thread117.loopexit

.thread117.loopexit:                              ; preds = %bb.ad, %bb.bs
  %.sroa.014.8.ph.ph = phi i1 [ false, %bb.bs ], [ true, %bb.ad ]
  %lpad.loopexit175 = landingpad { ptr, i32 }
          cleanup
  br label %.thread109

.thread117.loopexit.split-lp:                     ; preds = %bb.al, %bb.bo, %bb.af
  %lpad.loopexit.split-lp176 = landingpad { ptr, i32 }
          cleanup
  br label %.thread109

.thread149.thread:                                ; preds = %bb.ak
  %lpad.thr_comm.split-lp116 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.sroa.19.1156 = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp116, 1
  %.sroa.020.1157 = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp116, 0
  br label %bb.cd

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.bn, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bo = invoke zeroext i1 @_RINvMNtCsgFSQ9XOTBNe_3syn9lookaheadNtB3_10Lookahead14peekINvNtB5_5token5BraceNtB3_11TokenMarkerEEB5_(ptr nonnull align 8 %i.u)
          to label %bb.aj unwind label %.thread117.loopexit.split-lp

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.f, ptr noundef nonnull align 8 dereferenceable(176) @206, i64 176, i1 false)
  %i.bp = invoke ptr @_RNvNtCsbSS6DM8SDEO_5alloc5boxed14box_new_uninitCsgFSQ9XOTBNe_3syn(i64 8, i64 176)
          to label %bb.bq unwind label %bb.ah     ; 3 uses

bb.ah:                                            ; preds = %bb.ag
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn4expr4ExprEBF_(ptr nonnull align 8 %i.f) #15
          to label %.thread109 unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.aj:                                            ; preds = %bb.af
  br i1 %i.bo, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.l, ptr noundef nonnull align 8 dereferenceable(56) %i.u, i64 56, i1 false)
  invoke void @_RNvMNtCsgFSQ9XOTBNe_3syn9lookaheadNtB2_10Lookahead15error(ptr nonnull sret([24 x i8]) align 8 %i.m, ptr nonnull align 8 %i.l)
          to label %bb.am unwind label %.thread149.thread

bb.al:                                            ; preds = %bb.aj
  invoke void @_RNvMNtCsbSS6DM8SDEO_5alloc3vecINtB2_3VecNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeE3newBG_(ptr nonnull sret([24 x i8]) align 8 %i.q)
          to label %bb.an unwind label %.thread117.loopexit.split-lp

bb.am:                                            ; preds = %bb.ak
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  br label %.thread130

bb.an:                                            ; preds = %bb.al
  %i.bt = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i8 -1, ptr %i.bt, align 8
  invoke void @_RINvMs9_NtCsgFSQ9XOTBNe_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_4stmt5BlockEB8_(ptr nonnull sret([40 x i8]) align 8 %i.n, ptr align 8 %1)
          to label %bb.ap unwind label %bb.ao

bb.ao:                                            ; preds = %bb.ap, %bb.an
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgFSQ9XOTBNe_3syn4expr5LabelEEB11_(ptr nonnull align 8 %i.p) #15
          to label %bb.bp unwind label %bb.bh

bb.ap:                                            ; preds = %bb.an
  invoke void @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtCsgFSQ9XOTBNe_3syn4stmt5BlockNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([40 x i8]) align 8 %i.o, ptr nonnull align 8 %i.n)
          to label %bb.aq unwind label %bb.ao

bb.aq:                                            ; preds = %bb.ap
  %i.bv = load i64, ptr %i.o, align 8
  %i.bw = icmp eq i64 %i.bv, -1
  br i1 %i.bw, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.bx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i64 24, i1 false)
  invoke void @_RNvXsq_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtCsgFSQ9XOTBNe_3syn4expr6ExprIfNtNtBO_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1i_EE13from_residualBO_(ptr sret([96 x i8]) align 8 %0, ptr nonnull align 8 %i.g, ptr nonnull align 8 @205)
          to label %bb.bl unwind label %bb.bk

bb.as:                                            ; preds = %bb.aq
  %i.by = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.by, ptr noundef nonnull align 8 dereferenceable(40) %i.o, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bz, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 40, i1 false)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ca, ptr noundef nonnull align 8 dereferenceable(104) %i.r, i64 104, i1 false)
  store i64 5, ptr %i.s, align 8
  %i.cb = invoke ptr @_RNvNtCsbSS6DM8SDEO_5alloc5boxed14box_new_uninitCsgFSQ9XOTBNe_3syn(i64 8, i64 176)
          to label %bb.av unwind label %bb.at     ; 3 uses

bb.at:                                            ; preds = %bb.as
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn4expr4ExprEBF_(ptr nonnull align 8 %i.s) #15
          to label %.thread109 unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.av:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.cb, ptr noundef nonnull align 8 dereferenceable(176) %i.s, i64 176, i1 false)
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsgFSQ9XOTBNe_3syn5token4ElseINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtB12_4expr4ExprEEEEB12_(ptr nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %bb.ax unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ce = landingpad { ptr, i32 }
          cleanup
  store i32 %i.bm, ptr %.sroa.4.0..sroa_idx, align 8
  store ptr %i.cb, ptr %.sroa.51.0..sroa_idx, align 8
  br label %.thread109

bb.ax:                                            ; preds = %bb.av
  store i32 %i.bm, ptr %.sroa.4.0..sroa_idx, align 8
  store ptr %i.cb, ptr %.sroa.51.0..sroa_idx, align 8
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn9lookahead10Lookahead1EBF_(ptr nonnull align 8 %i.u)
          to label %.loopexit174 unwind label %.thread92.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ay:                                            ; preds = %bb.bf, %.loopexit174
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtCsgFSQ9XOTBNe_3syn4expr6ExprIfE3popBI_(ptr nonnull sret([96 x i8]) align 8 %i.k, ptr nonnull align 8 %i.ai)
          to label %bb.az unwind label %.thread92.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.az:                                            ; preds = %bb.ay
  %i.cf = load i64, ptr %i.k, align 8
  %.not22 = icmp eq i64 %i.cf, -1
  br i1 %.not22, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.j, ptr noundef nonnull align 8 dereferenceable(96) %i.k, i64 96, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.bj, ptr noundef nonnull align 8 dereferenceable(96) %i.ah, i64 96, i1 false)
  store i64 15, ptr %i.i, align 8
  %i.cg = invoke align 8 ptr @_RNvMNtCshzWfHUSfYae_4core6optionINtB2_6OptionTNtNtCsgFSQ9XOTBNe_3syn5token4ElseINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtBM_4expr4ExprEEE6as_mutBM_(ptr nonnull align 8 %i.bk)
          to label %bb.bd unwind label %.loopexit.split-lp162.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bb:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false)
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.ah)
          to label %bb.bi unwind label %.thread

bb.bc:                                            ; preds = %_RNvMNtCshzWfHUSfYae_4core6optionINtB2_6OptionQTNtNtCsgFSQ9XOTBNe_3syn5token4ElseINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtBN_4expr4ExprEEE6unwrapBN_.exit
  %i.ch = landingpad { ptr, i32 }
          cleanup
  %i.ci = load ptr, ptr %i.cj, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.ci, ptr noundef nonnull align 8 dereferenceable(176) %i.i, i64 176, i1 false)
  br label %bb.bg

bb.bd:                                            ; preds = %bb.ba
  %.not.i = icmp eq ptr %i.cg, null
  br i1 %.not.i, label %bb.be, label %_RNvMNtCshzWfHUSfYae_4core6optionINtB2_6OptionQTNtNtCsgFSQ9XOTBNe_3syn5token4ElseINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtBN_4expr4ExprEEE6unwrapBN_.exit

bb.be:                                            ; preds = %bb.bd
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr nonnull align 8 @204) #18
          to label %.noexc unwind label %.loopexit.split-lp162.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.be
  unreachable

_RNvMNtCshzWfHUSfYae_4core6optionINtB2_6OptionQTNtNtCsgFSQ9XOTBNe_3syn5token4ElseINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtBN_4expr4ExprEEE6unwrapBN_.exit: ; preds = %bb.bd
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 3 uses
  %i.ck = load ptr, ptr %i.cj, align 8
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn4expr4ExprEBF_(ptr align 8 %i.ck)
          to label %bb.bf unwind label %bb.bc

bb.bf:                                            ; preds = %_RNvMNtCshzWfHUSfYae_4core6optionINtB2_6OptionQTNtNtCsgFSQ9XOTBNe_3syn5token4ElseINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtBN_4expr4ExprEEE6unwrapBN_.exit
  %i.cl = load ptr, ptr %i.cj, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.cl, ptr noundef nonnull align 8 dereferenceable(176) %i.i, i64 176, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ah, ptr noundef nonnull align 8 dereferenceable(96) %i.j, i64 96, i1 false)
  br label %bb.ay

bb.bg:                                            ; preds = %bb.bc, %.loopexit.split-lp162.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn125 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp162.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ch, %bb.bc ] ; 2 uses
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn4expr6ExprIfEBF_(ptr nonnull align 8 %i.j) #15
          to label %.thread64 unwind label %bb.bh

.thread64:                                        ; preds = %bb.bg
  %.sroa.19.168 = extractvalue { ptr, i32 } %.pn125, 1
  %.sroa.020.169 = extractvalue { ptr, i32 } %.pn125, 0
  br label %.critedge37

.loopexit.split-lp162.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ba, %bb.be
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn4expr4ExprEBF_(ptr nonnull align 8 %i.i) #15
          to label %bb.bg unwind label %bb.bh

bb.bh:                                            ; preds = %bb.ch, %.critedge37.thread, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.bv, %.critedge37, %.thread70.loopexit.split-lp, %.thread81, %.thread109, %bb.bp, %bb.bm, %bb.bk, %.loopexit.split-lp162.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bg, %bb.ao, %.body44
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #17
  unreachable

.thread:                                          ; preds = %bb.bb
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %.sroa.19.156 = extractvalue { ptr, i32 } %i.cn, 1
  %.sroa.020.157 = extractvalue { ptr, i32 } %i.cn, 0
  br label %bb.cd

bb.bi:                                            ; preds = %bb.bb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.ah, i64 96, i1 false)
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsgFSQ9XOTBNe_3syn4expr6ExprIfEEB1c_(ptr nonnull align 8 %i.ai)
          to label %bb.bj unwind label %.split

bb.bj:                                            ; preds = %bb.b, %bb.ca, %bb.bi
  ret void

bb.bk:                                            ; preds = %bb.ar
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgFSQ9XOTBNe_3syn4expr5LabelEEB11_(ptr nonnull align 8 %i.p) #15
          to label %bb.bm unwind label %bb.bh

bb.bl:                                            ; preds = %bb.ar
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgFSQ9XOTBNe_3syn4expr5LabelEEB11_(ptr nonnull align 8 %i.p)
          to label %bb.bo unwind label %bb.bn

bb.bm:                                            ; preds = %bb.bn, %bb.bk
  %.pn24 = phi { ptr, i32 } [ %i.cp, %bb.bn ], [ %i.co, %bb.bk ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.q) #15
          to label %.thread109 unwind label %bb.bh

bb.bn:                                            ; preds = %bb.bl
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bo:                                            ; preds = %bb.bl
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.q)
          to label %.thread121 unwind label %.thread117.loopexit.split-lp

.thread121:                                       ; preds = %bb.bo
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn9lookahead10Lookahead1EBF_(ptr nonnull align 8 %i.u)
          to label %.thread130 unwind label %.thread92.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bp:                                            ; preds = %bb.ao
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.q) #15
          to label %.thread109 unwind label %bb.bh

bb.bq:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.bp, ptr noundef nonnull align 8 dereferenceable(176) @206, i64 176, i1 false)
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsgFSQ9XOTBNe_3syn5token4ElseINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtB12_4expr4ExprEEEEB12_(ptr nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %bb.bs unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.cq = landingpad { ptr, i32 }
          cleanup
  store i32 %i.bm, ptr %.sroa.4.0..sroa_idx, align 8
  store ptr %i.bp, ptr %.sroa.51.0..sroa_idx, align 8
  br label %.thread109

bb.bs:                                            ; preds = %bb.bq
  store i32 %i.bm, ptr %.sroa.4.0..sroa_idx, align 8
  store ptr %i.bp, ptr %.sroa.51.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.t, ptr noundef nonnull align 8 dereferenceable(96) %i.ah, i64 96, i1 false)
  invoke void @_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsgFSQ9XOTBNe_3syn4expr6ExprIfE4pushBJ_(ptr nonnull align 8 %i.ai, ptr nonnull align 8 %i.t)
          to label %bb.bt unwind label %.thread117.loopexit

bb.bt:                                            ; preds = %bb.bs
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn9lookahead10Lookahead1EBF_(ptr nonnull align 8 %i.u)
          to label %bb.e unwind label %.thread92.loopexit

.thread109:                                       ; preds = %.thread117.loopexit, %.thread117.loopexit.split-lp, %bb.bp, %bb.aw, %bb.bm, %bb.br, %bb.at, %bb.ah
  %.pn26104 = phi { ptr, i32 } [ %i.cc, %bb.at ], [ %i.cq, %bb.br ], [ %i.bq, %bb.ah ], [ %i.bu, %bb.bp ], [ %i.ce, %bb.aw ], [ %.pn24, %bb.bm ], [ %lpad.loopexit175, %.thread117.loopexit ], [ %lpad.loopexit.split-lp176, %.thread117.loopexit.split-lp ] ; 2 uses
  %.sroa.014.7102 = phi i1 [ true, %bb.at ], [ true, %bb.br ], [ true, %bb.ah ], [ true, %bb.bp ], [ true, %bb.aw ], [ true, %bb.bm ], [ %.sroa.014.8.ph.ph, %.thread117.loopexit ], [ true, %.thread117.loopexit.split-lp ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn9lookahead10Lookahead1EBF_(ptr nonnull align 8 %i.u) #15
          to label %.thread149 unwind label %bb.bh

.thread81:                                        ; preds = %.body44, %bb.s
  %.pn2888 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp91, %bb.s ], [ %i.bg, %.body44 ] ; 2 uses
  %.sroa.04.186 = phi i1 [ true, %bb.s ], [ false, %.body44 ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn4stmt5BlockEBF_(ptr nonnull align 8 %i.ab) #15
          to label %bb.n unwind label %bb.bh

bb.bu:                                            ; preds = %bb.q
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn4expr4ExprEBF_(ptr nonnull align 8 %i.ae)
          to label %.critedge35 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread70.loopexit.split-lp:                      ; preds = %.thread70.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.n
  %.pn3075 = phi { ptr, i32 } [ %.pn2888, %bb.n ], [ %lpad.loopexit.split-lp259, %.thread70.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn4expr4ExprEBF_(ptr nonnull align 8 %i.ae) #15
          to label %.thread149.thread210 unwind label %bb.bh

.thread130:                                       ; preds = %bb.am, %.thread121, %bb.ab
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.ah)
          to label %bb.bw unwind label %bb.bv

bb.bv:                                            ; preds = %.thread130
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtCsgFSQ9XOTBNe_3syn4expr4ExprEEB1e_(ptr nonnull align 8 %.sroa.3.0..sroa_idx) #15
          to label %bb.cb unwind label %bb.bh

bb.bw:                                            ; preds = %.thread130
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtCsgFSQ9XOTBNe_3syn4expr4ExprEEB1e_(ptr nonnull align 8 %.sroa.3.0..sroa_idx)
          to label %.critedge unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

.critedge:                                        ; preds = %bb.bw
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn4stmt5BlockEBF_(ptr nonnull align 8 %i.ct)
          to label %.critedge34 unwind label %bb.by

bb.by:                                            ; preds = %.critedge
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.critedge35:                                      ; preds = %.invoke, %bb.bu, %.critedge34
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsgFSQ9XOTBNe_3syn4expr6ExprIfEEB1c_(ptr nonnull align 8 %i.ai)
          to label %bb.ca unwind label %.split.thread

.critedge34:                                      ; preds = %.critedge
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsgFSQ9XOTBNe_3syn5token4ElseINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtB12_4expr4ExprEEEEB12_(ptr nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.critedge35 unwind label %bb.bz

.critedge37:                                      ; preds = %.thread92.loopexit, %.thread149.thread210, %.thread64, %.thread149, %.critedge37.thread, %bb.cc, %bb.bz
  %.sroa.019.3 = phi i1 [ true, %bb.bz ], [ true, %bb.cc ], [ %.sroa.019.259, %.critedge37.thread ], [ true, %.thread64 ], [ true, %.thread149 ], [ true, %.thread149.thread210 ], [ true, %.thread92.loopexit ]
  %.sroa.020.9 = phi ptr [ %i.cw, %bb.bz ], [ %.sroa.020.8, %bb.cc ], [ %.sroa.020.163, %.critedge37.thread ], [ %.sroa.020.169, %.thread64 ], [ %.sroa.020.1, %.thread149 ], [ %.sroa.020.1214, %.thread149.thread210 ], [ %.sroa.020.1221, %.thread92.loopexit ] ; 2 uses
  %.sroa.19.9 = phi i32 [ %i.cx, %bb.bz ], [ %.sroa.19.8, %bb.cc ], [ %.sroa.19.161, %.critedge37.thread ], [ %.sroa.19.168, %.thread64 ], [ %.sroa.19.1, %.thread149 ], [ %.sroa.19.1213, %.thread149.thread210 ], [ %.sroa.19.1220, %.thread92.loopexit ] ; 2 uses
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsgFSQ9XOTBNe_3syn4expr6ExprIfEEB1c_(ptr nonnull align 8 %i.ai) #15
          to label %bb.d unwind label %bb.bh

bb.bz:                                            ; preds = %.critedge34
  %i.cv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cw = extractvalue { ptr, i32 } %i.cv, 0
  %i.cx = extractvalue { ptr, i32 } %i.cv, 1
  br label %.critedge37

bb.ca:                                            ; preds = %.critedge35
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.al)
  br label %bb.bj

bb.cb:                                            ; preds = %bb.bx, %bb.bv
  %.pn = phi { ptr, i32 } [ %i.cs, %bb.bx ], [ %i.cr, %bb.bv ]
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn4stmt5BlockEBF_(ptr nonnull align 8 %i.cy) #15
          to label %bb.cc unwind label %bb.bh

bb.cc:                                            ; preds = %bb.by, %bb.cb
  %.pn159 = phi { ptr, i32 } [ %i.cu, %bb.by ], [ %.pn, %bb.cb ] ; 2 uses
  %.sroa.19.8 = extractvalue { ptr, i32 } %.pn159, 1
  %.sroa.020.8 = extractvalue { ptr, i32 } %.pn159, 0
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsgFSQ9XOTBNe_3syn5token4ElseINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtB12_4expr4ExprEEEEB12_(ptr nonnull align 8 %.sroa.4.0..sroa_idx) #15
          to label %.critedge37 unwind label %bb.bh

bb.cd:                                            ; preds = %.thread92.loopexit.thread, %.thread92.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread149.thread, %.thread, %.thread149
  %.sroa.020.163 = phi ptr [ %.sroa.020.157, %.thread ], [ %.sroa.020.1, %.thread149 ], [ %.sroa.020.1157, %.thread149.thread ], [ %.sroa.020.1219, %.thread92.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.020.1221228, %.thread92.loopexit.thread ]
  %.sroa.19.161 = phi i32 [ %.sroa.19.156, %.thread ], [ %.sroa.19.1, %.thread149 ], [ %.sroa.19.1156, %.thread149.thread ], [ %.sroa.19.1218, %.thread92.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.19.1220227, %.thread92.loopexit.thread ]
  %.sroa.019.259 = phi i1 [ false, %.thread ], [ true, %.thread149 ], [ true, %.thread149.thread ], [ true, %.thread92.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ true, %.thread92.loopexit.thread ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.ah) #15
          to label %bb.ce unwind label %bb.bh

bb.ce:                                            ; preds = %bb.cd
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtCsgFSQ9XOTBNe_3syn4expr4ExprEEB1e_(ptr nonnull align 8 %.sroa.3.0..sroa_idx) #15
          to label %bb.cf unwind label %bb.bh

bb.cf:                                            ; preds = %bb.ce
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn4stmt5BlockEBF_(ptr nonnull align 8 %i.cz) #15
          to label %.critedge37.thread unwind label %bb.bh

.critedge37.thread:                               ; preds = %bb.cf
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsgFSQ9XOTBNe_3syn5token4ElseINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtB12_4expr4ExprEEEEB12_(ptr nonnull align 8 %.sroa.4.0..sroa_idx) #15
          to label %.critedge37 unwind label %bb.bh

bb.cg:                                            ; preds = %.split, %bb.ch, %bb.d
  %.sroa.19.049 = phi i32 [ %i.au, %.split ], [ %.sroa.19.050, %bb.ch ], [ %.sroa.19.9, %bb.d ]
  %.sroa.020.047 = phi ptr [ %i.at, %.split ], [ %.sroa.020.048, %bb.ch ], [ %.sroa.020.9, %bb.d ]
  %i.da = insertvalue { ptr, i32 } poison, ptr %.sroa.020.047, 0
  %i.db = insertvalue { ptr, i32 } %i.da, i32 %.sroa.19.049, 1
  resume { ptr, i32 } %i.db

bb.ch:                                            ; preds = %.split.thread, %bb.d
  %.sroa.19.050 = phi i32 [ %i.as, %.split.thread ], [ %.sroa.19.9, %bb.d ]
  %.sroa.020.048 = phi ptr [ %i.ar, %.split.thread ], [ %.sroa.020.9, %bb.d ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.al) #15
          to label %bb.cg unwind label %bb.bh
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs7_NtNtCsgFSQ9XOTBNe_3syn4expr8printingNtB7_11ExprClosureNtNtCslCbDOIcU2Dw_5quote9to_tokens8ToTokens9to_tokens(ptr align 8 %0, ptr align 8 %1) unnamed_addr #3 !guid !180 {
bb.a:
  %i.a = alloca [12 x i8], align 1                ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.a, i8 0, i64 12, i1 false)
  call void @_RNvNtNtCsgFSQ9XOTBNe_3syn4expr8printing18print_expr_closure(ptr align 8 %0, ptr align 8 %1, ptr nonnull align 1 %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsRNtNtCsgFSQ9XOTBNe_3syn4expr10ExprAssignNtB7_9PartialEq2eqBH_(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 !guid !181 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = load ptr, ptr %1, align 8                ; 3 uses
  %i.c = tail call zeroext i1 @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec10partial_eqINtB4_3VecNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBU_(ptr align 8 %i.a, ptr align 8 %i.b) #14
  br i1 %i.c, label %bb.b, label %_RNvXsH_NtNtCsgFSQ9XOTBNe_3syn3gen2eqNtNtB9_4expr10ExprAssignNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = tail call zeroext i1 @_RNvXsg_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxNtNtCsgFSQ9XOTBNe_3syn4expr4ExprENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBL_(ptr nonnull align 8 %i.d, ptr nonnull align 8 %i.e) #14
  br i1 %i.f, label %bb.c, label %_RNvXsH_NtNtCsgFSQ9XOTBNe_3syn3gen2eqNtNtB9_4expr10ExprAssignNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.i = tail call zeroext i1 @_RNvXsg_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxNtNtCsgFSQ9XOTBNe_3syn4expr4ExprENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBL_(ptr nonnull align 8 %i.g, ptr nonnull align 8 %i.h) #14
  br label %_RNvXsH_NtNtCsgFSQ9XOTBNe_3syn3gen2eqNtNtB9_4expr10ExprAssignNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

_RNvXsH_NtNtCsgFSQ9XOTBNe_3syn3gen2eqNtNtB9_4expr10ExprAssignNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0.i = phi i1 [ %i.i, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsRNtNtCsgFSQ9XOTBNe_3syn4expr10ExprBinaryNtB7_9PartialEq2eqBH_(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 !guid !182 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %i.b = load ptr, ptr %1, align 8                ; 4 uses
  %i.c = tail call zeroext i1 @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec10partial_eqINtB4_3VecNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBU_(ptr align 8 %i.a, ptr align 8 %i.b) #14
  br i1 %i.c, label %bb.b, label %_RNvXsN_NtNtCsgFSQ9XOTBNe_3syn3gen2eqNtNtB9_4expr10ExprBinaryNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = tail call zeroext i1 @_RNvXsg_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxNtNtCsgFSQ9XOTBNe_3syn4expr4ExprENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBL_(ptr nonnull align 8 %i.d, ptr nonnull align 8 %i.e) #14
  br i1 %i.f, label %bb.c, label %_RNvXsN_NtNtCsgFSQ9XOTBNe_3syn3gen2eqNtNtB9_4expr10ExprBinaryNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.i = tail call zeroext i1 @_RNvXsh_NtNtCsgFSQ9XOTBNe_3syn3gen2eqNtNtB9_2op5BinOpNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr nonnull align 4 %i.g, ptr nonnull align 4 %i.h)
  br i1 %i.i, label %bb.d, label %_RNvXsN_NtNtCsgFSQ9XOTBNe_3syn3gen2eqNtNtB9_4expr10ExprBinaryNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.l = tail call zeroext i1 @_RNvXsg_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxNtNtCsgFSQ9XOTBNe_3syn4expr4ExprENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBL_(ptr nonnull align 8 %i.j, ptr nonnull align 8 %i.k) #14
  br label %_RNvXsN_NtNtCsgFSQ9XOTBNe_3syn3gen2eqNtNtB9_4expr10ExprBinaryNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

_RNvXsN_NtNtCsgFSQ9XOTBNe_3syn3gen2eqNtNtB9_4expr10ExprBinaryNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.sroa.0.0.i = phi i1 [ %i.l, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RNvXs7_NtNtCshzWfHUSfYae_4core3cmp5implsRNtNtCsgFSQ9XOTBNe_3syn4expr10ExprRepeatNtB7_9PartialEq2eqBH_(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 !guid !183 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = load ptr, ptr %1, align 8                ; 3 uses
  %i.c = tail call zeroext i1 @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec10partial_eqINtB4_3VecNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBU_(ptr align 8 %i.a, ptr align 8 %i.b) #14
  br i1 %i.c, label %bb.b, label %_RNvXs1B_NtNtCsgFSQ9XOTBNe_3syn3gen2eqNtNtBa_4expr10ExprRepeatNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = tail call zeroext i1 @_RNvXsg_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxNtNtCsgFSQ9XOTBNe_3syn4expr4ExprENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBL_(ptr nonnull align 8 %i.d, ptr nonnull align 8 %i.e) #14
  br i1 %i.f, label %bb.c, label %_RNvXs1B_NtNtCsgFSQ9XOTBNe_3syn3gen2eqNtNtBa_4expr10ExprRepeatNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.b
end_hunk_0

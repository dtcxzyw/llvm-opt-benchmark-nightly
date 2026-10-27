Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/diesel_test_helper-0c4d4f35e9d85eea.diesel_test_helper.d71116cfe7592bf3-cgu.1?download=true
inline.NumInlined: 723
inline.NumDeleted: 245
begin_hunk_0_@_RINvNvNtNtCs50gxqRnCXtk_10proc_macro6bridge14selfless_reify31reify_to_extern_c_fn_hrt_bridge7wrapperNtNtB6_6buffer6BufferNCINvMsh_NtB6_6clientINtB24_6ClientTNtB8_11TokenStreamB2v_EB2v_E7expand2NvCsisNj56JYuPL_18diesel_test_helper4testE0EB37_:bb.a
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.cx, %bb.f, %.body39.i.i.i.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ej, %bb.cx ], [ %.pn27.i.i.i.i.i.i.i.i.i.i, %bb.f ], [ %.pn27.i.i.i.i.i.i.i.i.i.i, %.body39.i.i.i.i.i.i.i.i.i.i ]
  invoke void @_RNvXNvNtNtNtCs50gxqRnCXtk_10proc_macro6bridge6client5state3setNtB2_13RestoreOnDropNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aj)
          to label %.thread.i.i.i.i.i unwind label %bb.cy, !noalias !2752

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvNtNtNtCs50gxqRnCXtk_10proc_macro6bridge6client5state3set13RestoreOnDropECsisNj56JYuPL_18diesel_test_helper.exit6.i.i.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5error5ErrorECsisNj56JYuPL_18diesel_test_helper.exit.i.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs50gxqRnCXtk_10proc_macro11TokenStreamECsisNj56JYuPL_18diesel_test_helper.exit38.sink.split.i.i.i.i.i.i.i.i.i.i, %bb.co
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.dz, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5error5ErrorECsisNj56JYuPL_18diesel_test_helper.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.dd, %bb.co ], [ %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs50gxqRnCXtk_10proc_macro11TokenStreamECsisNj56JYuPL_18diesel_test_helper.exit38.sink.split.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !2752
  invoke void @_RNvXNvNtNtNtCs50gxqRnCXtk_10proc_macro6bridge6client5state3setNtB2_13RestoreOnDropNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aj)
          to label %bb.da unwind label %bb.cz, !noalias !2743

bb.cy:                                            ; preds = %.body.i.i.i.i.i.i
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #16, !noalias !2752
  unreachable

bb.cz:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvNtNtNtCs50gxqRnCXtk_10proc_macro6bridge6client5state3set13RestoreOnDropECsisNj56JYuPL_18diesel_test_helper.exit6.i.i.i.i.i.i
  %i.el = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.thread.i.i.i.i.i

bb.da:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvNtNtNtCs50gxqRnCXtk_10proc_macro6bridge6client5state3set13RestoreOnDropECsisNj56JYuPL_18diesel_test_helper.exit6.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !2752
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.al, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.511.0..sroa_idx.i.i.i.i.i, i64 40, i1 false), !noalias !2743
  call void @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop(ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.bb) #13, !noalias !2743, !inline_history !2675
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bb, ptr noundef nonnull align 8 dereferenceable(40) %i.al, i64 40, i1 false), !noalias !2743
  store i64 0, ptr %i.bf, align 8, !noalias !2743
  call void @llvm.experimental.noalias.scope.decl(metadata !2767)
  call void @llvm.experimental.noalias.scope.decl(metadata !2768)
  %i.em = load i64, ptr %.sroa.56.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !2769, !noalias !2743, !noundef !13
  %i.en = icmp eq i64 %i.em, 0
  br i1 %i.en, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2770
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %i.bb, i64 40, i1 false), !noalias !2743
  store ptr inttoptr (i64 1 to ptr), ptr %i.bb, align 8, !alias.scope !2769, !noalias !2743
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i8 0, i64 16, i1 false), !alias.scope !2769, !noalias !2743
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from7reserve, ptr %.sroa.67.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !2769, !noalias !2743
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop, ptr %.sroa.78.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !2769, !noalias !2743
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2770
  %i.eo = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8, !noalias !2770, !nonnull !13, !noundef !13
  call void %i.ep(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.g, ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.h, i64 noundef 1) #13, !noalias !2770, !inline_history !2680
  call void @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop(ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.bb) #13, !noalias !2743, !inline_history !2681
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bb, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false), !noalias !2743
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2770
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2770
  %.pre.i.i.i.i.i39.i.i = load i64, ptr %i.bf, align 8, !alias.scope !2769, !noalias !2743
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %i.eq = phi i64 [ 0, %bb.da ], [ %.pre.i.i.i.i.i39.i.i, %bb.db ] ; 2 uses
  %i.er = load ptr, ptr %i.bb, align 8, !alias.scope !2769, !noalias !2743, !noundef !13 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.eq
  store i8 0, ptr %i.es, align 1, !noalias !2770
  %i.et = add i64 %i.eq, 1                        ; 5 uses
  store i64 %i.et, ptr %i.bf, align 8, !alias.scope !2769, !noalias !2743
  call void @llvm.experimental.noalias.scope.decl(metadata !2771)
  %.not.i.i.i.i.i.i.i = icmp eq i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.df, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.experimental.noalias.scope.decl(metadata !2772)
  %i.eu = load i64, ptr %.sroa.56.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !2773, !noalias !2743, !noundef !13 ; 2 uses
  %i.ev = icmp eq i64 %i.et, %i.eu
  br i1 %i.ev, label %bb.de, label %bb.dh

bb.de:                                            ; preds = %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2774
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.bb, i64 40, i1 false), !noalias !2743
  store ptr inttoptr (i64 1 to ptr), ptr %i.bb, align 8, !alias.scope !2773, !noalias !2743
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i8 0, i64 16, i1 false), !alias.scope !2773, !noalias !2743
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from7reserve, ptr %.sroa.67.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !2773, !noalias !2743
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop, ptr %.sroa.78.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !2773, !noalias !2743
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2774
  %i.ew = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ex = load ptr, ptr %i.ew, align 8, !noalias !2774, !nonnull !13, !noundef !13
  call void %i.ex(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.e, ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.f, i64 noundef 1) #13, !noalias !2774, !inline_history !2686
  call void @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop(ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.bb) #13, !noalias !2743, !inline_history !2687
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bb, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false), !noalias !2743
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2774
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2774
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %i.bf, align 8, !alias.scope !2773, !noalias !2743
  %.pre.i5.i.i.i.i.i.i = load i64, ptr %.sroa.56.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !2775, !noalias !2743
  %.pre.i.i.i.i38.i.i = load ptr, ptr %i.bb, align 8, !alias.scope !2773, !noalias !2743
  br label %bb.dh

bb.df:                                            ; preds = %bb.dc
  call void @llvm.experimental.noalias.scope.decl(metadata !2776)
  %i.ey = load i64, ptr %.sroa.56.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !2777, !noalias !2743, !noundef !13
  %i.ez = icmp eq i64 %i.et, %i.ey
  br i1 %i.ez, label %bb.dg, label %_RNvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit7.i.i.i.i.i.i.i

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2778
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.bb, i64 40, i1 false), !noalias !2743
  store ptr inttoptr (i64 1 to ptr), ptr %i.bb, align 8, !alias.scope !2777, !noalias !2743
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i8 0, i64 16, i1 false), !alias.scope !2777, !noalias !2743
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from7reserve, ptr %.sroa.67.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !2777, !noalias !2743
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop, ptr %.sroa.78.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !2777, !noalias !2743
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2778
  %i.fa = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.fb = load ptr, ptr %i.fa, align 8, !noalias !2778, !nonnull !13, !noundef !13
  call void %i.fb(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.c, ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.d, i64 noundef 1) #13, !noalias !2778, !inline_history !2686
  call void @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop(ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.bb) #13, !noalias !2743, !inline_history !2687
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bb, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !noalias !2743
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2778
  %.pre.i6.i.i.i.i.i.i.i = load i64, ptr %i.bf, align 8, !alias.scope !2777, !noalias !2743
  %.pre3.i.i.i.i.i.i = load ptr, ptr %i.bb, align 8, !alias.scope !2777, !noalias !2743
  br label %_RNvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit7.i.i.i.i.i.i.i

_RNvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit7.i.i.i.i.i.i.i: ; preds = %bb.dg, %bb.df
  %i.fc = phi ptr [ %i.er, %bb.df ], [ %.pre3.i.i.i.i.i.i, %bb.dg ]
  %i.fd = phi i64 [ %i.et, %bb.df ], [ %.pre.i6.i.i.i.i.i.i.i, %bb.dg ] ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fd
  store i8 1, ptr %i.fe, align 1, !noalias !2778
  %i.ff = add i64 %i.fd, 1
  br label %bb.dm

bb.dh:                                            ; preds = %bb.de, %bb.dd
  %i.fg = phi ptr [ %i.er, %bb.dd ], [ %.pre.i.i.i.i38.i.i, %bb.de ] ; 2 uses
  %i.fh = phi i64 [ %i.eu, %bb.dd ], [ %.pre.i5.i.i.i.i.i.i, %bb.de ]
  %i.fi = phi i64 [ %i.et, %bb.dd ], [ %.pre.i.i.i.i.i.i.i.i, %bb.de ] ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fi
  store i8 0, ptr %i.fj, align 1, !noalias !2774
  %i.fk = add i64 %i.fi, 1                        ; 3 uses
  store i64 %i.fk, ptr %i.bf, align 8, !alias.scope !2773, !noalias !2743
  call void @llvm.experimental.noalias.scope.decl(metadata !2779)
  call void @llvm.experimental.noalias.scope.decl(metadata !2780)
  %i.fl = sub i64 %i.fh, %i.fk
  %i.fm = icmp ult i64 %i.fl, 4
  br i1 %i.fm, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2781
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.bb, i64 40, i1 false), !noalias !2743
  store ptr inttoptr (i64 1 to ptr), ptr %i.bb, align 8, !alias.scope !2775, !noalias !2743
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i8 0, i64 16, i1 false), !alias.scope !2775, !noalias !2743
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from7reserve, ptr %.sroa.67.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !2775, !noalias !2743
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop, ptr %.sroa.78.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !2775, !noalias !2743
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2781
  %i.fn = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8, !noalias !2781, !nonnull !13, !noundef !13
  call void %i.fo(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, i64 noundef 4) #13, !noalias !2781, !inline_history !2694
  call void @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop(ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.bb) #13, !noalias !2743, !inline_history !2695
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bb, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !noalias !2743
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2781
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2781
  %.pre.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bf, align 8, !alias.scope !2775, !noalias !2743
  %.pre1.i.i.i.i.i.i.i = load ptr, ptr %i.bb, align 8, !alias.scope !2775, !noalias !2743
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %i.fp = phi ptr [ %i.fg, %bb.dh ], [ %.pre1.i.i.i.i.i.i.i, %bb.di ]
  %i.fq = phi i64 [ %i.fk, %bb.dh ], [ %.pre.i.i.i.i.i.i.i.i.i, %bb.di ] ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fq
  store i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, ptr %i.fr, align 1, !noalias !2781
  %i.fs = add i64 %i.fq, 4
  br label %bb.dm

.thread.i.i.i.i.i:                                ; preds = %bb.cz, %.body.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.el, %bb.cz ], [ %eh.lpad-body.i.i.i.i.i.i, %.body.i.i.i.i.i.i ]
  %.sroa.3.0..sroa.511.0..sroa_idx.i.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  %.sroa.3.0.copyload.i.i.i = load ptr, ptr %.sroa.3.0..sroa.511.0..sroa_idx.i.i.sroa_idx.i.i.i, align 8, !noalias !2743, !nonnull !13, !noundef !13
  call void %.sroa.3.0.copyload.i.i.i(ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %.sroa.511.0..sroa_idx.i.i.i.i.i) #13, !noalias !2743, !inline_history !2696
  br label %.body49.i.i

bb.dk:                                            ; preds = %.invoke.i.i, %.invoke71.i.i, %.noexc.i.i, %bb.a
  %i.ft = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body49.i.i

.body49.i.i:                                      ; preds = %bb.dk, %.thread.i.i.i.i.i, %bb.d
  %eh.lpad-body50.i.i = phi { ptr, i32 } [ %i.ft, %bb.dk ], [ %eh.lpad-body.i.i.i.i.i, %.thread.i.i.i.i.i ], [ %i.bv, %bb.d ]
  %i.fu = extractvalue { ptr, i32 } %eh.lpad-body50.i.i, 0
  %i.fv = invoke { ptr, ptr } @_RNvNvNtCsgczF5crJ4sT_3std9panicking12catch_unwind7cleanup(ptr noundef %i.fu)
          to label %bb.dn unwind label %bb.dl, !noalias !2742 ; 2 uses

bb.dl:                                            ; preds = %.body49.i.i
  %i.fw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() #16, !noalias !2742
  unreachable

bb.dm:                                            ; preds = %bb.dj, %_RNvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit7.i.i.i.i.i.i.i
  %.sink.i.i.i.i.i.i.i = phi i64 [ %i.fs, %bb.dj ], [ %i.ff, %_RNvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit7.i.i.i.i.i.i.i ]
  store i64 %.sink.i.i.i.i.i.i.i, ptr %i.bf, align 8, !alias.scope !2782, !noalias !2743
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !2743
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.do

bb.dn:                                            ; preds = %.body49.i.i
  %i.fx = extractvalue { ptr, ptr } %i.fv, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fx) ]
  %i.fy = extractvalue { ptr, ptr } %i.fv, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fy) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !2742
  invoke void @_RNvXse_NtNtCs50gxqRnCXtk_10proc_macro6bridge3rpcNtB5_12PanicMessageINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB18_3any3AnyNtNtB18_6marker4SendEL_EE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ba, ptr noundef nonnull %i.fx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.fy)
          to label %bb.dq unwind label %bb.dp, !noalias !2742

bb.do:                                            ; preds = %_RNvXNvNtCs50gxqRnCXtk_10proc_macro6bridges4_1__INtNtCscI6d9CVNmLh_4core6result6ResultuNtNtB4_3rpc12PanicMessageEINtB1o_6EncodeuE6encodeCsisNj56JYuPL_18diesel_test_helper.exit.i.i, %bb.dm
  invoke void @_RNvMs0_NtNtCs50gxqRnCXtk_10proc_macro6bridge6symbolNtB5_6Symbol14invalidate_all()
          to label %bb.ei unwind label %bb.dp, !noalias !2742

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %i.fz = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.critedge.body

bb.dq:                                            ; preds = %bb.dn
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ba, align 8, !noalias !2742 ; 5 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.552.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.552.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i, i64 16, i1 false), !noalias !2742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !2742
  %i.ga = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 19 uses
  store i64 0, ptr %i.ga, align 8, !noalias !2742
  call void @llvm.experimental.noalias.scope.decl(metadata !2783)
  %.not.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, -1
  %i.gb = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 6 uses
  br i1 %.not.i.i.i, label %bb.dt, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  call void @llvm.experimental.noalias.scope.decl(metadata !2784)
  %i.gc = load i64, ptr %i.gb, align 8, !alias.scope !2785, !noalias !2742, !noundef !13
  %i.gd = icmp eq i64 %i.gc, 0
  br i1 %i.gd, label %bb.ds, label %bb.dv

bb.ds:                                            ; preds = %bb.dr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !2786
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ay, ptr noundef nonnull align 8 dereferenceable(40) %i.bb, i64 40, i1 false), !noalias !2787
  store ptr inttoptr (i64 1 to ptr), ptr %i.bb, align 8, !alias.scope !2785, !noalias !2742
  %.sroa.6.0..sroa_idx.i.i36.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ga, i8 0, i64 16, i1 false), !alias.scope !2785, !noalias !2742
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from7reserve, ptr %.sroa.6.0..sroa_idx.i.i36.i.i, align 8, !alias.scope !2785, !noalias !2742
  %.sroa.7.0..sroa_idx.i.i37.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop, ptr %.sroa.7.0..sroa_idx.i.i37.i.i, align 8, !alias.scope !2785, !noalias !2742
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !2786
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.gf = load ptr, ptr %i.ge, align 8, !noalias !2786, !nonnull !13, !noundef !13
  call void %i.gf(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ax, ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ay, i64 noundef 1) #13, !noalias !2786, !inline_history !2702
  call void @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop(ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.bb) #13, !noalias !2787, !inline_history !2703
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bb, ptr noundef nonnull align 8 dereferenceable(40) %i.ax, i64 40, i1 false), !noalias !2787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !2786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !2786
  %.pre.i.i.i.i = load i64, ptr %i.ga, align 8, !alias.scope !2785, !noalias !2742
  br label %bb.dv

bb.dt:                                            ; preds = %bb.dq
  call void @llvm.experimental.noalias.scope.decl(metadata !2788)
  %i.gg = load i64, ptr %i.gb, align 8, !alias.scope !2789, !noalias !2742, !noundef !13
  %i.gh = icmp eq i64 %i.gg, 0
  br i1 %i.gh, label %bb.du, label %_RNvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit7.i.i.i

bb.du:                                            ; preds = %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !2790
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aw, ptr noundef nonnull align 8 dereferenceable(40) %i.bb, i64 40, i1 false), !noalias !2787
  store ptr inttoptr (i64 1 to ptr), ptr %i.bb, align 8, !alias.scope !2789, !noalias !2742
  %.sroa.6.0..sroa_idx.i4.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ga, i8 0, i64 16, i1 false), !alias.scope !2789, !noalias !2742
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from7reserve, ptr %.sroa.6.0..sroa_idx.i4.i.i.i, align 8, !alias.scope !2789, !noalias !2742
  %.sroa.7.0..sroa_idx.i5.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop, ptr %.sroa.7.0..sroa_idx.i5.i.i.i, align 8, !alias.scope !2789, !noalias !2742
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !2790
  %i.gi = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.gj = load ptr, ptr %i.gi, align 8, !noalias !2790, !nonnull !13, !noundef !13
  call void %i.gj(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.av, ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.aw, i64 noundef 1) #13, !noalias !2790, !inline_history !2702
  call void @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop(ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.bb) #13, !noalias !2787, !inline_history !2703
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bb, ptr noundef nonnull align 8 dereferenceable(40) %i.av, i64 40, i1 false), !noalias !2787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !2790
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !2790
  %.pre.i6.i.i.i = load i64, ptr %i.ga, align 8, !alias.scope !2789, !noalias !2742
  br label %_RNvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit7.i.i.i

_RNvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit7.i.i.i: ; preds = %bb.du, %bb.dt
  %i.gk = phi i64 [ 0, %bb.dt ], [ %.pre.i6.i.i.i, %bb.du ] ; 2 uses
  %i.gl = load ptr, ptr %i.bb, align 8, !alias.scope !2789, !noalias !2742, !noundef !13
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gk
  store i8 0, ptr %i.gm, align 1, !noalias !2790
  %i.gn = add i64 %i.gk, 1
  store i64 %i.gn, ptr %i.ga, align 8, !alias.scope !2789, !noalias !2742
  br label %_RNvXNvNtCs50gxqRnCXtk_10proc_macro6bridges4_1__INtNtCscI6d9CVNmLh_4core6result6ResultuNtNtB4_3rpc12PanicMessageEINtB1o_6EncodeuE6encodeCsisNj56JYuPL_18diesel_test_helper.exit.i.i

bb.dv:                                            ; preds = %bb.ds, %bb.dr
  %i.go = phi i64 [ 0, %bb.dr ], [ %.pre.i.i.i.i, %bb.ds ] ; 2 uses
  %i.gp = load ptr, ptr %i.bb, align 8, !alias.scope !2785, !noalias !2742, !noundef !13 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.go
  store i8 1, ptr %i.gq, align 1, !noalias !2786
  %i.gr = add i64 %i.go, 1                        ; 5 uses
  store i64 %i.gr, ptr %i.ga, align 8, !alias.scope !2785, !noalias !2742
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !2791
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.az, align 8, !noalias !2792
  %.sroa.552.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.552.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.552.i.i, i64 16, i1 false), !noalias !2792
  call void @llvm.experimental.noalias.scope.decl(metadata !2793)
  call void @llvm.experimental.noalias.scope.decl(metadata !2794)
  %i.gs = icmp ne i64 %.sroa.0.0.copyload.i.i, -9223372036854775807
  call void @llvm.assume(i1 %i.gs)
  %i.gt = icmp eq i64 %.sroa.0.0.copyload.i.i, -9223372036854775806
  br i1 %i.gt, label %bb.ea, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %.sroa.0.0.ph.i.i.i.i = load ptr, ptr %.sroa.552.0..sroa_idx.i.i, align 8, !alias.scope !2793, !noalias !2791, !nonnull !13, !noundef !13
  %.sroa.6.0.ph.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %.sroa.6.0.ph.i.i.i.i = load i64, ptr %.sroa.6.0.ph.in.i.i.i.i, align 8, !alias.scope !2793, !noalias !2791, !noundef !13 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2795)
  %i.gu = load i64, ptr %i.gb, align 8, !alias.scope !2796, !noalias !2742, !noundef !13 ; 2 uses
  %i.gv = icmp eq i64 %i.gr, %i.gu
  br i1 %i.gv, label %bb.dx, label %_RNvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit.i.i.i.i.i

bb.dx:                                            ; preds = %bb.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !2797
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.au, ptr noundef nonnull align 8 dereferenceable(40) %i.bb, i64 40, i1 false), !noalias !2798
  store ptr inttoptr (i64 1 to ptr), ptr %i.bb, align 8, !alias.scope !2796, !noalias !2742
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ga, i8 0, i64 16, i1 false), !alias.scope !2796, !noalias !2742
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from7reserve, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !2796, !noalias !2742
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !2796, !noalias !2742
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !2797
  %i.gw = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.gx = load ptr, ptr %i.gw, align 8, !noalias !2797, !nonnull !13, !noundef !13
  call void %i.gx(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.at, ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.au, i64 noundef 1) #13, !noalias !2797, !inline_history !2714
  call void @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop(ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.bb) #13, !noalias !2798, !inline_history !2715
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bb, ptr noundef nonnull align 8 dereferenceable(40) %i.at, i64 40, i1 false), !noalias !2798
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !2797
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !2797
  %.pre.i.i.i.i.i.i = load i64, ptr %i.ga, align 8, !alias.scope !2796, !noalias !2742
  %.pre.i.i.i.i.i = load i64, ptr %i.gb, align 8, !alias.scope !2799, !noalias !2742
  %.pre.i.i.i = load ptr, ptr %i.bb, align 8, !alias.scope !2796, !noalias !2742
  br label %_RNvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit.i.i.i.i.i

_RNvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit.i.i.i.i.i: ; preds = %bb.dx, %bb.dw
  %i.gy = phi ptr [ %i.gp, %bb.dw ], [ %.pre.i.i.i, %bb.dx ] ; 2 uses
  %i.gz = phi i64 [ %i.gu, %bb.dw ], [ %.pre.i.i.i.i.i, %bb.dx ] ; 2 uses
  %i.ha = phi i64 [ %i.gr, %bb.dw ], [ %.pre.i.i.i.i.i.i, %bb.dx ] ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.ha
  store i8 0, ptr %i.hb, align 1, !noalias !2797
  %i.hc = add i64 %i.ha, 1                        ; 3 uses
  store i64 %i.hc, ptr %i.ga, align 8, !alias.scope !2796, !noalias !2742
  call void @llvm.experimental.noalias.scope.decl(metadata !2800)
  call void @llvm.experimental.noalias.scope.decl(metadata !2801)
  %i.hd = sub i64 %i.gz, %i.hc
  %i.he = icmp ult i64 %i.hd, 8
  br i1 %i.he, label %bb.dy, label %_RINvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB6_6Buffer17extend_from_arrayKj8_ECsisNj56JYuPL_18diesel_test_helper.exit.i.i.i.i.i.i

bb.dy:                                            ; preds = %_RNvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !2802
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.as, ptr noundef nonnull align 8 dereferenceable(40) %i.bb, i64 40, i1 false), !noalias !2803
  store ptr inttoptr (i64 1 to ptr), ptr %i.bb, align 8, !alias.scope !2799, !noalias !2742
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ga, i8 0, i64 16, i1 false), !alias.scope !2799, !noalias !2742
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from7reserve, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !2799, !noalias !2742
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !2799, !noalias !2742
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !2802
  %i.hf = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.hg = load ptr, ptr %i.hf, align 8, !noalias !2802, !nonnull !13, !noundef !13
  call void %i.hg(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ar, ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.as, i64 noundef 8) #13, !noalias !2802, !inline_history !2721
  call void @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop(ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.bb) #13, !noalias !2803, !inline_history !2722
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bb, ptr noundef nonnull align 8 dereferenceable(40) %i.ar, i64 40, i1 false), !noalias !2803
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !2802
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !2802
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.ga, align 8, !alias.scope !2799, !noalias !2742
  %.pre.i5.i.i.i.i.i = load i64, ptr %i.gb, align 8, !alias.scope !2804, !noalias !2742
  %.pre3.i.i.i.i.i = load ptr, ptr %i.bb, align 8, !alias.scope !2799, !noalias !2742
  br label %_RINvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB6_6Buffer17extend_from_arrayKj8_ECsisNj56JYuPL_18diesel_test_helper.exit.i.i.i.i.i.i

_RINvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB6_6Buffer17extend_from_arrayKj8_ECsisNj56JYuPL_18diesel_test_helper.exit.i.i.i.i.i.i: ; preds = %bb.dy, %_RNvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit.i.i.i.i.i
  %i.hh = phi ptr [ %i.gy, %_RNvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit.i.i.i.i.i ], [ %.pre3.i.i.i.i.i, %bb.dy ] ; 2 uses
  %i.hi = phi i64 [ %i.gz, %_RNvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit.i.i.i.i.i ], [ %.pre.i5.i.i.i.i.i, %bb.dy ]
  %i.hj = phi i64 [ %i.hc, %_RNvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i, %bb.dy ] ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hj
  store i64 %.sroa.6.0.ph.i.i.i.i, ptr %i.hk, align 1, !noalias !2802
  %i.hl = add i64 %i.hj, 8                        ; 3 uses
  store i64 %i.hl, ptr %i.ga, align 8, !alias.scope !2799, !noalias !2742
  call void @llvm.experimental.noalias.scope.decl(metadata !2805)
  %i.hm = sub i64 %i.hi, %i.hl
  %i.hn = icmp ugt i64 %.sroa.6.0.ph.i.i.i.i, %i.hm
  br i1 %i.hn, label %bb.dz, label %bb.ec

bb.dz:                                            ; preds = %_RINvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB6_6Buffer17extend_from_arrayKj8_ECsisNj56JYuPL_18diesel_test_helper.exit.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !2806
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aq, ptr noundef nonnull align 8 dereferenceable(40) %i.bb, i64 40, i1 false), !noalias !2807
  store ptr inttoptr (i64 1 to ptr), ptr %i.bb, align 8, !alias.scope !2804, !noalias !2742
  %.sroa.6.0..sroa_idx.i1.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ga, i8 0, i64 16, i1 false), !alias.scope !2804, !noalias !2742
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from7reserve, ptr %.sroa.6.0..sroa_idx.i1.i.i.i.i.i.i, align 8, !alias.scope !2804, !noalias !2742
  %.sroa.7.0..sroa_idx.i2.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop, ptr %.sroa.7.0..sroa_idx.i2.i.i.i.i.i.i, align 8, !alias.scope !2804, !noalias !2742
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !2806
  %i.ho = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.hp = load ptr, ptr %i.ho, align 8, !noalias !2806, !nonnull !13, !noundef !13
  call void %i.hp(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ap, ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.aq, i64 noundef range(i64 0, -9223372036854775808) %.sroa.6.0.ph.i.i.i.i) #13, !noalias !2806, !inline_history !2726
  call void @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop(ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.bb) #13, !noalias !2807, !inline_history !2722
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bb, ptr noundef nonnull align 8 dereferenceable(40) %i.ap, i64 40, i1 false), !noalias !2807
end_hunk_0

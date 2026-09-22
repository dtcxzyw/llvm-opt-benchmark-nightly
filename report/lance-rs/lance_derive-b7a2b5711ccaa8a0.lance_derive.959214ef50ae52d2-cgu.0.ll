Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_derive-b7a2b5711ccaa8a0.lance_derive.959214ef50ae52d2-cgu.0?download=true
inline.NumInlined: 1621
inline.NumDeleted: 596
begin_hunk_0_@_RINvNtNtCs50gxqRnCXtk_10proc_macro6bridge6client10run_clientNtB2_11TokenStreamINtNtCscI6d9CVNmLh_4core6option6OptionBW_ENCNCINvMsg_B2_INtB2_6ClientNtB6_11TokenStreamB2l_E7expand1NvCscQ9YKgepC2A_12lance_derive19derive_deep_size_ofE00EB2S_:bb.a
          to label %bb.kw unwind label %bb.kv, !noalias !3635

bb.ku:                                            ; preds = %.body.i.i.i.i
  %i.sj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28, !noalias !3635
  unreachable

bb.kv:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvNtNtNtCs50gxqRnCXtk_10proc_macro6bridge6client5state3set13RestoreOnDropECscQ9YKgepC2A_12lance_derive.exit8.i.i.i.i
  %i.sk = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.thread.i.i.i

bb.kw:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvNtNtNtCs50gxqRnCXtk_10proc_macro6bridge6client5state3set13RestoreOnDropECscQ9YKgepC2A_12lance_derive.exit8.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !3635
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bw, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.511.0..sroa_idx.i.i.i, i64 40, i1 false), !noalias !3635
  call void @llvm.experimental.noalias.scope.decl(metadata !3822)
  call void @llvm.experimental.noalias.scope.decl(metadata !3823)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3824
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.cm, i64 40, i1 false), !noalias !3635
  store ptr inttoptr (i64 1 to ptr), ptr %i.cm, align 8, !alias.scope !3825, !noalias !3635
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, i8 0, i64 16, i1 false), !alias.scope !3825, !noalias !3635
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from7reserve, ptr %.sroa.67.0..sroa_idx.i.i.i, align 8, !alias.scope !3825, !noalias !3635
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop, ptr %.sroa.78.0..sroa_idx.i.i.i, align 8, !alias.scope !3825, !noalias !3635
  %i.sl = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.sm = load ptr, ptr %i.sl, align 8, !noalias !3824, !nonnull !40, !noundef !40
  call void %i.sm(ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.i) #26, !noalias !3824, !inline_history !3575
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3824
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cm, ptr noundef nonnull align 8 dereferenceable(40) %i.bw, i64 40, i1 false), !noalias !3635
  store i64 0, ptr %i.ct, align 8, !noalias !3635
  call void @llvm.experimental.noalias.scope.decl(metadata !3826)
  call void @llvm.experimental.noalias.scope.decl(metadata !3827)
  %i.sn = load i64, ptr %.sroa.56.0..sroa_idx.i.i.i, align 8, !alias.scope !3828, !noalias !3635, !noundef !40
  %i.so = icmp eq i64 %i.sn, 0
  br i1 %i.so, label %bb.kx, label %bb.ky

bb.kx:                                            ; preds = %bb.kw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3829
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %i.cm, i64 40, i1 false), !noalias !3635
  store ptr inttoptr (i64 1 to ptr), ptr %i.cm, align 8, !alias.scope !3828, !noalias !3635
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, i8 0, i64 16, i1 false), !alias.scope !3828, !noalias !3635
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from7reserve, ptr %.sroa.67.0..sroa_idx.i.i.i, align 8, !alias.scope !3828, !noalias !3635
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop, ptr %.sroa.78.0..sroa_idx.i.i.i, align 8, !alias.scope !3828, !noalias !3635
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3829
  %i.sp = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.sq = load ptr, ptr %i.sp, align 8, !noalias !3829, !nonnull !40, !noundef !40
  call void %i.sq(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.g, ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.h, i64 noundef 1) #26, !noalias !3829, !inline_history !3580
  %.sroa.3.0.copyload.i.i.i = load ptr, ptr %.sroa.78.0..sroa_idx.i.i.i, align 8, !noalias !3635, !nonnull !40, !noundef !40
  call void %.sroa.3.0.copyload.i.i.i(ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.cm) #26, !noalias !3635, !inline_history !3581
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cm, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false), !noalias !3635
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3829
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3829
  %.pre.i.i.i.i.i43 = load i64, ptr %i.ct, align 8, !alias.scope !3828, !noalias !3635
  br label %bb.ky

bb.ky:                                            ; preds = %bb.kx, %bb.kw
  %i.sr = phi i64 [ 0, %bb.kw ], [ %.pre.i.i.i.i.i43, %bb.kx ] ; 2 uses
  %i.ss = load ptr, ptr %i.cm, align 8, !alias.scope !3828, !noalias !3635, !noundef !40 ; 3 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 %i.sr
  store i8 0, ptr %i.st, align 1, !noalias !3829
  %i.su = add i64 %i.sr, 1                        ; 5 uses
  store i64 %i.su, ptr %i.ct, align 8, !alias.scope !3828, !noalias !3635
  call void @llvm.experimental.noalias.scope.decl(metadata !3830)
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.0.0.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.lb, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  call void @llvm.experimental.noalias.scope.decl(metadata !3831)
  %i.sv = load i64, ptr %.sroa.56.0..sroa_idx.i.i.i, align 8, !alias.scope !3832, !noalias !3635, !noundef !40 ; 2 uses
  %i.sw = icmp eq i64 %i.su, %i.sv
  br i1 %i.sw, label %bb.la, label %bb.ld

bb.la:                                            ; preds = %bb.kz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3833
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.cm, i64 40, i1 false), !noalias !3635
  store ptr inttoptr (i64 1 to ptr), ptr %i.cm, align 8, !alias.scope !3832, !noalias !3635
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, i8 0, i64 16, i1 false), !alias.scope !3832, !noalias !3635
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from7reserve, ptr %.sroa.67.0..sroa_idx.i.i.i, align 8, !alias.scope !3832, !noalias !3635
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop, ptr %.sroa.78.0..sroa_idx.i.i.i, align 8, !alias.scope !3832, !noalias !3635
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3833
  %i.sx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.sy = load ptr, ptr %i.sx, align 8, !noalias !3833, !nonnull !40, !noundef !40
  call void %i.sy(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.e, ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.f, i64 noundef 1) #26, !noalias !3833, !inline_history !3586
  call void @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop(ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.cm) #26, !noalias !3635, !inline_history !3587
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cm, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false), !noalias !3635
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3833
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3833
  %.pre.i.i.i.i.i.i = load i64, ptr %i.ct, align 8, !alias.scope !3832, !noalias !3635
  %.pre.i5.i.i.i.i = load i64, ptr %.sroa.56.0..sroa_idx.i.i.i, align 8, !alias.scope !3834, !noalias !3635
  %.pre.i.i.i.i42 = load ptr, ptr %i.cm, align 8, !alias.scope !3832, !noalias !3635
  br label %bb.ld

bb.lb:                                            ; preds = %bb.ky
  call void @llvm.experimental.noalias.scope.decl(metadata !3835)
  %i.sz = load i64, ptr %.sroa.56.0..sroa_idx.i.i.i, align 8, !alias.scope !3836, !noalias !3635, !noundef !40
  %i.ta = icmp eq i64 %i.su, %i.sz
  br i1 %i.ta, label %bb.lc, label %_RNvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit7.i.i.i.i.i

bb.lc:                                            ; preds = %bb.lb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3837
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.cm, i64 40, i1 false), !noalias !3635
  store ptr inttoptr (i64 1 to ptr), ptr %i.cm, align 8, !alias.scope !3836, !noalias !3635
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, i8 0, i64 16, i1 false), !alias.scope !3836, !noalias !3635
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from7reserve, ptr %.sroa.67.0..sroa_idx.i.i.i, align 8, !alias.scope !3836, !noalias !3635
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop, ptr %.sroa.78.0..sroa_idx.i.i.i, align 8, !alias.scope !3836, !noalias !3635
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3837
  %i.tb = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.tc = load ptr, ptr %i.tb, align 8, !noalias !3837, !nonnull !40, !noundef !40
  call void %i.tc(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.c, ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.d, i64 noundef 1) #26, !noalias !3837, !inline_history !3586
  call void @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop(ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.cm) #26, !noalias !3635, !inline_history !3587
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cm, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !noalias !3635
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3837
  %.pre.i6.i.i.i.i.i = load i64, ptr %i.ct, align 8, !alias.scope !3836, !noalias !3635
  %.pre3.i.i.i.i = load ptr, ptr %i.cm, align 8, !alias.scope !3836, !noalias !3635
  br label %_RNvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit7.i.i.i.i.i

_RNvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit7.i.i.i.i.i: ; preds = %bb.lc, %bb.lb
  %i.td = phi ptr [ %i.ss, %bb.lb ], [ %.pre3.i.i.i.i, %bb.lc ]
  %i.te = phi i64 [ %i.su, %bb.lb ], [ %.pre.i6.i.i.i.i.i, %bb.lc ] ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %i.td, i64 %i.te
  store i8 1, ptr %i.tf, align 1, !noalias !3837
  %i.tg = add i64 %i.te, 1
  br label %bb.li

bb.ld:                                            ; preds = %bb.la, %bb.kz
  %i.th = phi ptr [ %i.ss, %bb.kz ], [ %.pre.i.i.i.i42, %bb.la ] ; 2 uses
  %i.ti = phi i64 [ %i.sv, %bb.kz ], [ %.pre.i5.i.i.i.i, %bb.la ]
  %i.tj = phi i64 [ %i.su, %bb.kz ], [ %.pre.i.i.i.i.i.i, %bb.la ] ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.th, i64 %i.tj
  store i8 0, ptr %i.tk, align 1, !noalias !3833
  %i.tl = add i64 %i.tj, 1                        ; 3 uses
  store i64 %i.tl, ptr %i.ct, align 8, !alias.scope !3832, !noalias !3635
  call void @llvm.experimental.noalias.scope.decl(metadata !3838)
  call void @llvm.experimental.noalias.scope.decl(metadata !3839)
  %i.tm = sub i64 %i.ti, %i.tl
  %i.tn = icmp ult i64 %i.tm, 4
  br i1 %i.tn, label %bb.le, label %bb.lf

bb.le:                                            ; preds = %bb.ld
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3840
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.cm, i64 40, i1 false), !noalias !3635
  store ptr inttoptr (i64 1 to ptr), ptr %i.cm, align 8, !alias.scope !3834, !noalias !3635
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, i8 0, i64 16, i1 false), !alias.scope !3834, !noalias !3635
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from7reserve, ptr %.sroa.67.0..sroa_idx.i.i.i, align 8, !alias.scope !3834, !noalias !3635
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop, ptr %.sroa.78.0..sroa_idx.i.i.i, align 8, !alias.scope !3834, !noalias !3635
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3840
  %i.to = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.tp = load ptr, ptr %i.to, align 8, !noalias !3840, !nonnull !40, !noundef !40
  call void %i.tp(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, i64 noundef 4) #26, !noalias !3840, !inline_history !3594
  call void @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop(ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.cm) #26, !noalias !3635, !inline_history !3595
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cm, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !noalias !3635
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3840
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3840
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.ct, align 8, !alias.scope !3834, !noalias !3635
  %.pre1.i.i.i.i.i = load ptr, ptr %i.cm, align 8, !alias.scope !3834, !noalias !3635
  br label %bb.lf

bb.lf:                                            ; preds = %bb.le, %bb.ld
  %i.tq = phi ptr [ %i.th, %bb.ld ], [ %.pre1.i.i.i.i.i, %bb.le ]
  %i.tr = phi i64 [ %i.tl, %bb.ld ], [ %.pre.i.i.i.i.i.i.i, %bb.le ] ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tq, i64 %i.tr
  store i32 %.sroa.0.0.i.i.i.i.i.i.i.i, ptr %i.ts, align 1, !noalias !3840
  %i.tt = add i64 %i.tr, 4
  br label %bb.li

.thread.i.i.i:                                    ; preds = %bb.kv, %.body.i.i.i.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.sk, %bb.kv ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ]
  %.sroa.3.0..sroa.511.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 56
  %.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa.511.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !3635, !nonnull !40, !noundef !40
  call void %.sroa.3.0.copyload.i(ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %.sroa.511.0..sroa_idx.i.i.i) #26, !noalias !3635, !inline_history !3596
  br label %.body

bb.lg:                                            ; preds = %.invoke268, %.invoke, %.noexc, %bb.a
  %i.tu = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %.thread.i.i.i, %bb.lg
  %eh.lpad-body = phi { ptr, i32 } [ %i.tu, %bb.lg ], [ %eh.lpad-body.i.i.i, %.thread.i.i.i ]
  %i.tv = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.tw = invoke { ptr, ptr } @_RNvNvNtCsgczF5crJ4sT_3std9panicking12catch_unwind7cleanup(ptr noundef %i.tv)
          to label %bb.lj unwind label %bb.lh     ; 2 uses

bb.lh:                                            ; preds = %.body
  %i.tx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() #28
  unreachable

bb.li:                                            ; preds = %bb.lf, %_RNvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit7.i.i.i.i.i
  %.sink.i.i.i.i.i = phi i64 [ %i.tt, %bb.lf ], [ %i.tg, %_RNvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit7.i.i.i.i.i ]
  store i64 %.sink.i.i.i.i.i, ptr %i.ct, align 8, !alias.scope !3841, !noalias !3635
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !3635
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  br label %_RNvXNvNtCs50gxqRnCXtk_10proc_macro6bridges4_1__INtNtCscI6d9CVNmLh_4core6result6ResultuNtNtB4_3rpc12PanicMessageEINtB1o_6EncodeuE6encodeCscQ9YKgepC2A_12lance_derive.exit

bb.lj:                                            ; preds = %.body
  %i.ty = extractvalue { ptr, ptr } %i.tw, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ty) ]
  %2 = extractvalue { ptr, ptr } %i.tw, 1         ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl)
  invoke void @_RNvXse_NtNtCs50gxqRnCXtk_10proc_macro6bridge3rpcNtB5_12PanicMessageINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB18_3any3AnyNtNtB18_6marker4SendEL_EE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cl, ptr noundef nonnull %i.ty, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
          to label %bb.lk unwind label %bb.lz

_RNvXNvNtCs50gxqRnCXtk_10proc_macro6bridges4_1__INtNtCscI6d9CVNmLh_4core6result6ResultuNtNtB4_3rpc12PanicMessageEINtB1o_6EncodeuE6encodeCscQ9YKgepC2A_12lance_derive.exit: ; preds = %_RNvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit8.i, %.thread.i.i, %bb.lw, %bb.lx, %bb.li
  invoke void @_RNvMs0_NtNtCs50gxqRnCXtk_10proc_macro6bridge6symbolNtB5_6Symbol14invalidate_all()
          to label %bb.ly unwind label %bb.lz

bb.lk:                                            ; preds = %bb.lj
  %.sroa.0.0.copyload = load i64, ptr %i.cl, align 8 ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %.sroa.5.sroa.4.0.copyload = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  %i.tz = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 19 uses
  store i64 0, ptr %i.tz, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !3842)
  %.not.i = icmp eq i64 %.sroa.0.0.copyload, -1
  %i.ua = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 6 uses
  br i1 %.not.i, label %bb.ln, label %bb.ll

bb.ll:                                            ; preds = %bb.lk
  call void @llvm.experimental.noalias.scope.decl(metadata !3843)
  %i.ub = load i64, ptr %i.ua, align 8, !alias.scope !3844, !noalias !3845, !noundef !40
  %i.uc = icmp eq i64 %i.ub, 0
  br i1 %i.uc, label %bb.lm, label %bb.lp

bb.lm:                                            ; preds = %bb.ll
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj), !noalias !3846
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cj, ptr noundef nonnull align 8 dereferenceable(40) %i.cm, i64 40, i1 false), !noalias !3845
  store ptr inttoptr (i64 1 to ptr), ptr %i.cm, align 8, !alias.scope !3844, !noalias !3845
  %.sroa.6.0..sroa_idx.i.i36 = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.tz, i8 0, i64 16, i1 false), !alias.scope !3844, !noalias !3845
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from7reserve, ptr %.sroa.6.0..sroa_idx.i.i36, align 8, !alias.scope !3844, !noalias !3845
  %.sroa.7.0..sroa_idx.i.i37 = getelementptr inbounds nuw i8, ptr %i.cm, i64 32 ; 2 uses
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop, ptr %.sroa.7.0..sroa_idx.i.i37, align 8, !alias.scope !3844, !noalias !3845
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci), !noalias !3846
  %i.ud = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.ue = load ptr, ptr %i.ud, align 8, !noalias !3846, !nonnull !40, !noundef !40
  call void %i.ue(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ci, ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.cj, i64 noundef 1) #26, !noalias !3846, !inline_history !3602
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx.i.i37, align 8, !noalias !3845, !nonnull !40, !noundef !40
  call void %.sroa.3.0.copyload(ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.cm) #26, !noalias !3845, !inline_history !3603
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cm, ptr noundef nonnull align 8 dereferenceable(40) %i.ci, i64 40, i1 false), !noalias !3845
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !noalias !3846
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !noalias !3846
  %.pre.i.i = load i64, ptr %i.tz, align 8, !alias.scope !3844, !noalias !3845
  br label %bb.lp

bb.ln:                                            ; preds = %bb.lk
  call void @llvm.experimental.noalias.scope.decl(metadata !3847)
  %i.uf = load i64, ptr %i.ua, align 8, !alias.scope !3848, !noalias !3845, !noundef !40
  %i.ug = icmp eq i64 %i.uf, 0
  br i1 %i.ug, label %bb.lo, label %_RNvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit8.i

bb.lo:                                            ; preds = %bb.ln
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch), !noalias !3849
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ch, ptr noundef nonnull align 8 dereferenceable(40) %i.cm, i64 40, i1 false), !noalias !3845
  store ptr inttoptr (i64 1 to ptr), ptr %i.cm, align 8, !alias.scope !3848, !noalias !3845
  %.sroa.6.0..sroa_idx.i5.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.tz, i8 0, i64 16, i1 false), !alias.scope !3848, !noalias !3845
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from7reserve, ptr %.sroa.6.0..sroa_idx.i5.i, align 8, !alias.scope !3848, !noalias !3845
  %.sroa.7.0..sroa_idx.i6.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 32 ; 2 uses
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop, ptr %.sroa.7.0..sroa_idx.i6.i, align 8, !alias.scope !3848, !noalias !3845
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg), !noalias !3849
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.ui = load ptr, ptr %i.uh, align 8, !noalias !3849, !nonnull !40, !noundef !40
  call void %i.ui(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.cg, ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ch, i64 noundef 1) #26, !noalias !3849, !inline_history !3602
  %.sroa.356.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx.i6.i, align 8, !noalias !3845, !nonnull !40, !noundef !40
  call void %.sroa.356.0.copyload(ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.cm) #26, !noalias !3845, !inline_history !3603
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cm, ptr noundef nonnull align 8 dereferenceable(40) %i.cg, i64 40, i1 false), !noalias !3845
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !noalias !3849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !noalias !3849
  %.pre.i7.i = load i64, ptr %i.tz, align 8, !alias.scope !3848, !noalias !3845
  br label %_RNvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit8.i

_RNvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit8.i: ; preds = %bb.lo, %bb.ln
  %i.uj = phi i64 [ 0, %bb.ln ], [ %.pre.i7.i, %bb.lo ] ; 2 uses
  %i.uk = load ptr, ptr %i.cm, align 8, !alias.scope !3848, !noalias !3845, !noundef !40
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 %i.uj
  store i8 0, ptr %i.ul, align 1, !noalias !3849
  %i.um = add i64 %i.uj, 1
  store i64 %i.um, ptr %i.tz, align 8, !alias.scope !3848, !noalias !3845
  br label %_RNvXNvNtCs50gxqRnCXtk_10proc_macro6bridges4_1__INtNtCscI6d9CVNmLh_4core6result6ResultuNtNtB4_3rpc12PanicMessageEINtB1o_6EncodeuE6encodeCscQ9YKgepC2A_12lance_derive.exit

bb.lp:                                            ; preds = %bb.lm, %bb.ll
  %i.un = phi i64 [ 0, %bb.ll ], [ %.pre.i.i, %bb.lm ] ; 2 uses
  %i.uo = load ptr, ptr %i.cm, align 8, !alias.scope !3844, !noalias !3845, !noundef !40 ; 3 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 %i.un
  store i8 1, ptr %i.up, align 1, !noalias !3846
  %i.uq = add i64 %i.un, 1                        ; 5 uses
  store i64 %i.uq, ptr %i.tz, align 8, !alias.scope !3844, !noalias !3845
  call void @llvm.experimental.noalias.scope.decl(metadata !3850)
  %i.ur = icmp ne i64 %.sroa.0.0.copyload, -9223372036854775807
  call void @llvm.assume(i1 %i.ur)
  %i.us = icmp eq i64 %.sroa.0.0.copyload, -9223372036854775806
  br i1 %i.us, label %bb.lu, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3851)
  %i.ut = load i64, ptr %i.ua, align 8, !alias.scope !3852, !noalias !3853, !noundef !40 ; 2 uses
  %i.uu = icmp eq i64 %i.uq, %i.ut
  br i1 %i.uu, label %bb.lr, label %_RNvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit.i.i.i

bb.lr:                                            ; preds = %bb.lq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !3854
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cf, ptr noundef nonnull align 8 dereferenceable(40) %i.cm, i64 40, i1 false), !noalias !3853
  store ptr inttoptr (i64 1 to ptr), ptr %i.cm, align 8, !alias.scope !3852, !noalias !3853
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.tz, i8 0, i64 16, i1 false), !alias.scope !3852, !noalias !3853
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from7reserve, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !3852, !noalias !3853
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !alias.scope !3852, !noalias !3853
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !3854
  %i.uv = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.uw = load ptr, ptr %i.uv, align 8, !noalias !3854, !nonnull !40, !noundef !40
  call void %i.uw(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ce, ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.cf, i64 noundef 1) #26, !noalias !3854, !inline_history !3614
  call void @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop(ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.cm) #26, !noalias !3853, !inline_history !3615
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cm, ptr noundef nonnull align 8 dereferenceable(40) %i.ce, i64 40, i1 false), !noalias !3853
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !3854
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !noalias !3854
  %.pre.i.i.i.i = load i64, ptr %i.tz, align 8, !alias.scope !3852, !noalias !3853
  %.pre.i.i.i = load i64, ptr %i.ua, align 8, !alias.scope !3855, !noalias !3856
  %.pre.i = load ptr, ptr %i.cm, align 8, !alias.scope !3852, !noalias !3853
  br label %_RNvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit.i.i.i

_RNvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit.i.i.i: ; preds = %bb.lr, %bb.lq
  %i.ux = phi ptr [ %i.uo, %bb.lq ], [ %.pre.i, %bb.lr ] ; 2 uses
  %i.uy = phi i64 [ %i.ut, %bb.lq ], [ %.pre.i.i.i, %bb.lr ] ; 2 uses
  %i.uz = phi i64 [ %i.uq, %bb.lq ], [ %.pre.i.i.i.i, %bb.lr ] ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %i.ux, i64 %i.uz
  store i8 0, ptr %i.va, align 1, !noalias !3854
  %i.vb = add i64 %i.uz, 1                        ; 3 uses
  store i64 %i.vb, ptr %i.tz, align 8, !alias.scope !3852, !noalias !3853
  call void @llvm.experimental.noalias.scope.decl(metadata !3857)
  call void @llvm.experimental.noalias.scope.decl(metadata !3858)
  %i.vc = sub i64 %i.uy, %i.vb
  %i.vd = icmp ult i64 %i.vc, 8
  br i1 %i.vd, label %bb.ls, label %_RINvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB6_6Buffer17extend_from_arrayKj8_ECscQ9YKgepC2A_12lance_derive.exit.i.i.i.i

bb.ls:                                            ; preds = %_RNvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !3859
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cd, ptr noundef nonnull align 8 dereferenceable(40) %i.cm, i64 40, i1 false), !noalias !3856
  store ptr inttoptr (i64 1 to ptr), ptr %i.cm, align 8, !alias.scope !3855, !noalias !3856
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.tz, i8 0, i64 16, i1 false), !alias.scope !3855, !noalias !3856
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from7reserve, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !3855, !noalias !3856
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !3855, !noalias !3856
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !noalias !3859
  %i.ve = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.vf = load ptr, ptr %i.ve, align 8, !noalias !3859, !nonnull !40, !noundef !40
  call void %i.vf(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.cc, ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.cd, i64 noundef 8) #26, !noalias !3859, !inline_history !3621
  call void @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop(ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.cm) #26, !noalias !3856, !inline_history !3622
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cm, ptr noundef nonnull align 8 dereferenceable(40) %i.cc, i64 40, i1 false), !noalias !3856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !3859
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !3859
  %.pre.i.i.i.i.i = load i64, ptr %i.tz, align 8, !alias.scope !3855, !noalias !3856
  %.pre.i5.i.i.i = load i64, ptr %i.ua, align 8, !alias.scope !3860, !noalias !3861
  %.pre3.i.i.i = load ptr, ptr %i.cm, align 8, !alias.scope !3855, !noalias !3856
  br label %_RINvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB6_6Buffer17extend_from_arrayKj8_ECscQ9YKgepC2A_12lance_derive.exit.i.i.i.i

_RINvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB6_6Buffer17extend_from_arrayKj8_ECscQ9YKgepC2A_12lance_derive.exit.i.i.i.i: ; preds = %bb.ls, %_RNvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit.i.i.i
  %i.vg = phi ptr [ %i.ux, %_RNvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit.i.i.i ], [ %.pre3.i.i.i, %bb.ls ] ; 2 uses
  %i.vh = phi i64 [ %i.uy, %_RNvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit.i.i.i ], [ %.pre.i5.i.i.i, %bb.ls ]
  %i.vi = phi i64 [ %i.vb, %_RNvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit.i.i.i ], [ %.pre.i.i.i.i.i, %bb.ls ] ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vg, i64 %i.vi
  store i64 %.sroa.5.sroa.4.0.copyload, ptr %i.vj, align 1, !noalias !3859
  %i.vk = add i64 %i.vi, 8                        ; 3 uses
  store i64 %i.vk, ptr %i.tz, align 8, !alias.scope !3855, !noalias !3856
  call void @llvm.experimental.noalias.scope.decl(metadata !3862)
  %i.vl = sub i64 %i.vh, %i.vk
  %i.vm = icmp ugt i64 %.sroa.5.sroa.4.0.copyload, %i.vl
  br i1 %i.vm, label %bb.lt, label %bb.lw

bb.lt:                                            ; preds = %_RINvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB6_6Buffer17extend_from_arrayKj8_ECscQ9YKgepC2A_12lance_derive.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !3863
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cb, ptr noundef nonnull align 8 dereferenceable(40) %i.cm, i64 40, i1 false), !noalias !3861
  store ptr inttoptr (i64 1 to ptr), ptr %i.cm, align 8, !alias.scope !3860, !noalias !3861
  %.sroa.6.0..sroa_idx.i1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.tz, i8 0, i64 16, i1 false), !alias.scope !3860, !noalias !3861
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from7reserve, ptr %.sroa.6.0..sroa_idx.i1.i.i.i.i, align 8, !alias.scope !3860, !noalias !3861
  %.sroa.7.0..sroa_idx.i2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop, ptr %.sroa.7.0..sroa_idx.i2.i.i.i.i, align 8, !alias.scope !3860, !noalias !3861
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !noalias !3863
  %i.vn = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.vo = load ptr, ptr %i.vn, align 8, !noalias !3863, !nonnull !40, !noundef !40
  call void %i.vo(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ca, ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.cb, i64 noundef range(i64 0, -9223372036854775808) %.sroa.5.sroa.4.0.copyload) #26, !noalias !3863, !inline_history !3626
  call void @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop(ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.cm) #26, !noalias !3861, !inline_history !3622
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cm, ptr noundef nonnull align 8 dereferenceable(40) %i.ca, i64 40, i1 false), !noalias !3861
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !3863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !3863
  %.pre.i3.i.i.i.i = load i64, ptr %i.tz, align 8, !alias.scope !3860, !noalias !3861
  %.pre1.i.i.i.i = load ptr, ptr %i.cm, align 8, !alias.scope !3860, !noalias !3861
  br label %bb.lw

bb.lu:                                            ; preds = %bb.lp
  call void @llvm.experimental.noalias.scope.decl(metadata !3864)
  call void @llvm.experimental.noalias.scope.decl(metadata !3865)
  %i.vp = load i64, ptr %i.ua, align 8, !alias.scope !3866, !noalias !3853, !noundef !40
  %i.vq = icmp eq i64 %i.uq, %i.vp
  br i1 %i.vq, label %bb.lv, label %.thread.i.i

bb.lv:                                            ; preds = %bb.lu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !3867
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bz, ptr noundef nonnull align 8 dereferenceable(40) %i.cm, i64 40, i1 false), !noalias !3853
  store ptr inttoptr (i64 1 to ptr), ptr %i.cm, align 8, !alias.scope !3866, !noalias !3853
  %.sroa.6.0..sroa_idx.i6.i.i.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.tz, i8 0, i64 16, i1 false), !alias.scope !3866, !noalias !3853
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from7reserve, ptr %.sroa.6.0..sroa_idx.i6.i.i.i, align 8, !alias.scope !3866, !noalias !3853
  %.sroa.7.0..sroa_idx.i7.i.i.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop, ptr %.sroa.7.0..sroa_idx.i7.i.i.i, align 8, !alias.scope !3866, !noalias !3853
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !3867
  %i.vr = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.vs = load ptr, ptr %i.vr, align 8, !noalias !3867, !nonnull !40, !noundef !40
  call void %i.vs(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.by, ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.bz, i64 noundef 1) #26, !noalias !3867, !inline_history !3614
  call void @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop(ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.cm) #26, !noalias !3853, !inline_history !3615
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cm, ptr noundef nonnull align 8 dereferenceable(40) %i.by, i64 40, i1 false), !noalias !3853
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !3867
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !3867
  %.pre.i8.i.i.i = load i64, ptr %i.tz, align 8, !alias.scope !3866, !noalias !3853
  %.pre7.i = load ptr, ptr %i.cm, align 8, !alias.scope !3866, !noalias !3853
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.lv, %bb.lu
  %i.vt = phi ptr [ %i.uo, %bb.lu ], [ %.pre7.i, %bb.lv ]
  %i.vu = phi i64 [ %i.uq, %bb.lu ], [ %.pre.i8.i.i.i, %bb.lv ] ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vt, i64 %i.vu
  store i8 1, ptr %i.vv, align 1, !noalias !3867
  %i.vw = add i64 %i.vu, 1
  store i64 %i.vw, ptr %i.tz, align 8, !alias.scope !3868, !noalias !3853
  br label %_RNvXNvNtCs50gxqRnCXtk_10proc_macro6bridges4_1__INtNtCscI6d9CVNmLh_4core6result6ResultuNtNtB4_3rpc12PanicMessageEINtB1o_6EncodeuE6encodeCscQ9YKgepC2A_12lance_derive.exit

bb.lw:                                            ; preds = %bb.lt, %_RINvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB6_6Buffer17extend_from_arrayKj8_ECscQ9YKgepC2A_12lance_derive.exit.i.i.i.i
  %i.vx = phi ptr [ %i.vg, %_RINvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB6_6Buffer17extend_from_arrayKj8_ECscQ9YKgepC2A_12lance_derive.exit.i.i.i.i ], [ %.pre1.i.i.i.i, %bb.lt ]
  %i.vy = phi i64 [ %i.vk, %_RINvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB6_6Buffer17extend_from_arrayKj8_ECscQ9YKgepC2A_12lance_derive.exit.i.i.i.i ], [ %.pre.i3.i.i.i.i, %bb.lt ] ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vx, i64 %i.vy
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.vz, ptr nonnull readonly align 1 %.sroa.5.sroa.0.0.copyload, i64 range(i64 0, -9223372036854775808) %.sroa.5.sroa.4.0.copyload, i1 false), !noalias !3869
  %i.wa = add i64 %i.vy, %.sroa.5.sroa.4.0.copyload
  store i64 %i.wa, ptr %i.tz, align 8, !alias.scope !3868, !noalias !3853
  %or.cond.i6.i.i = icmp slt i64 %.sroa.0.0.copyload, 1
  br i1 %or.cond.i6.i.i, label %_RNvXNvNtCs50gxqRnCXtk_10proc_macro6bridges4_1__INtNtCscI6d9CVNmLh_4core6result6ResultuNtNtB4_3rpc12PanicMessageEINtB1o_6EncodeuE6encodeCscQ9YKgepC2A_12lance_derive.exit, label %bb.lx

bb.lx:                                            ; preds = %bb.lw
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.0.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3870
  br label %_RNvXNvNtCs50gxqRnCXtk_10proc_macro6bridges4_1__INtNtCscI6d9CVNmLh_4core6result6ResultuNtNtB4_3rpc12PanicMessageEINtB1o_6EncodeuE6encodeCscQ9YKgepC2A_12lance_derive.exit

bb.ly:                                            ; preds = %_RNvXNvNtCs50gxqRnCXtk_10proc_macro6bridges4_1__INtNtCscI6d9CVNmLh_4core6result6ResultuNtNtB4_3rpc12PanicMessageEINtB1o_6EncodeuE6encodeCscQ9YKgepC2A_12lance_derive.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.cm, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  ret void

bb.lz:                                            ; preds = %bb.lj, %_RNvXNvNtCs50gxqRnCXtk_10proc_macro6bridges4_1__INtNtCscI6d9CVNmLh_4core6result6ResultuNtNtB4_3rpc12PanicMessageEINtB1o_6EncodeuE6encodeCscQ9YKgepC2A_12lance_derive.exit
  %i.wb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck), !noalias !3871
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ck, ptr noundef nonnull align 8 dereferenceable(40) %i.cm, i64 40, i1 false)
  %i.wc = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.wd = load ptr, ptr %i.wc, align 8, !noalias !3871, !nonnull !40, !noundef !40
  call void %i.wd(ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ck) #26, !noalias !3871, !inline_history !3633
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !noalias !3871
  resume { ptr, i32 } %i.wb
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECscQ9YKgepC2A_12lance_derive(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 8, 33) %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3874)
  %i.b = add i64 %2, %1                           ; 2 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !48, !alias.scope !3874, !noundef !40 ; 2 uses
  %i.e = shl nuw i64 %i.d, 1
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 range(i64 0, -1) %i.e)
  %.sroa.0.0.i14.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3874
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.f, align 8, !alias.scope !3874
  call fastcc void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner11finish_growCscQ9YKgepC2A_12lance_derive(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val13.i, i64 noundef %.sroa.0.0.i14.i, i64 noundef range(i64 8, 33) %3)
  %i.g = load i64, ptr %i.a, align 8, !range !60, !noalias !3874, !noundef !40
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.i, align 8, !range !3875, !noalias !3874, !noundef !40
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noalias !3874
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3874
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.l, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.j, %bb.c ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #31
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.i, align 8, !noalias !3874, !nonnull !40, !noundef !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3874
  store ptr %i.m, ptr %i.f, align 8, !alias.scope !3874
  %i.n = icmp sgt i64 %.sroa.0.0.i14.i, -1
  tail call void @llvm.assume(i1 %i.n)
  store i64 %.sroa.0.0.i14.i, ptr %0, align 8, !alias.scope !3874
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNvNtNtCs50gxqRnCXtk_10proc_macro6bridge14selfless_reify31reify_to_extern_c_fn_hrt_bridge7wrapperNtNtB6_6buffer6BufferNCINvMsg_NtB6_6clientINtB24_6ClientNtB8_11TokenStreamB2u_E7expand1NvCscQ9YKgepC2A_12lance_derive19derive_deep_size_ofE0EB31_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly byval([64 x i8]) align 8 captures(none) dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtNtCs50gxqRnCXtk_10proc_macro6bridge6client10run_clientNtB2_11TokenStreamINtNtCscI6d9CVNmLh_4core6option6OptionBW_ENCNCINvMsg_B2_INtB2_6ClientNtB6_11TokenStreamB2l_E7expand1NvCscQ9YKgepC2A_12lance_derive19derive_deep_size_ofE00EB2S_(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1)
          to label %_RNCINvMsg_NtNtCs50gxqRnCXtk_10proc_macro6bridge6clientINtB8_6ClientNtBc_11TokenStreamB13_E7expand1NvCscQ9YKgepC2A_12lance_derive19derive_deep_size_ofE0B1A_.exit unwind label %.critedge

_RNCINvMsg_NtNtCs50gxqRnCXtk_10proc_macro6bridge6clientINtB8_6ClientNtBc_11TokenStreamB13_E7expand1NvCscQ9YKgepC2A_12lance_derive19derive_deep_size_ofE0B1A_.exit: ; preds = %bb.a
  ret void

.critedge:                                        ; preds = %bb.a
  %lpad.critedge = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() #28
  unreachable
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner11finish_growCscQ9YKgepC2A_12lance_derive(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 8, 33) %2) unnamed_addr #4 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = icmp ugt i64 %i.b, 9223372036854775800
  %or.cond.not = or i1 %i.c, %i.d
  br i1 %or.cond.not, label %bb.f, label %bb.b, !prof !3876

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator4grow.exit

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %3 = mul nuw i64 %2, %.0.val                    ; 2 uses
  %i.f = icmp uge i64 %i.b, %3
  tail call void @llvm.assume(i1 %i.f)
  %i.g = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %3, i64 noundef 8, i64 noundef range(i64 0, 9223372036854775801) %i.b) #26
  br label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %i.b, 0
  br i1 %i.h, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26
  %i.i = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, 9) 8) #26
  br label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.g, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator4grow.exit ], [ %i.i, %bb.d ] ; 2 uses
  %i.j = icmp eq ptr %.pn8, null
  br i1 %i.j, label %bb.e, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread

bb.e:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 8, ptr %i.k, align 8
  br label %bb.f

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %.pn8, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit ], [ inttoptr (i64 8 to ptr), %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.l, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread
  %.sink12 = phi i64 [ 16, %bb.e ], [ 16, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread ], [ 8, %bb.a ]
  %.sink = phi i64 [ %i.b, %bb.e ], [ %i.b, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread ], [ 0, %bb.a ]
  %storemerge13 = phi i64 [ 1, %bb.e ], [ 0, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread ], [ 1, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %.sink12
  store i64 %.sink, ptr %i.m, align 8
  store i64 %storemerge13, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtCsb2PI9uRnNxu_3syn10punctuated4IterNtNtB11_4data7VariantENCNvCscQ9YKgepC2A_12lance_derive19derive_deep_size_of0ENtNtNtB9_6traits8iterator8Iterator4nextB20_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 13 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 13 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 10 uses
  %i.l = alloca [24 x i8], align 8                ; 10 uses
  %i.m = alloca [32 x i8], align 8                ; 8 uses
  %i.n = alloca [32 x i8], align 8                ; 8 uses
  %i.o = alloca [32 x i8], align 8                ; 4 uses
  %i.p = alloca [32 x i8], align 8                ; 8 uses
  %i.q = alloca [32 x i8], align 8                ; 4 uses
  %i.r = alloca [32 x i8], align 8                ; 11 uses
  %i.s = alloca [32 x i8], align 8                ; 8 uses
  %i.t = alloca [32 x i8], align 8                ; 8 uses
  %i.u = alloca [32 x i8], align 8                ; 4 uses
  %i.v = alloca [32 x i8], align 8                ; 8 uses
  %i.w = alloca [32 x i8], align 8                ; 4 uses
  %i.x = alloca [32 x i8], align 8                ; 11 uses
  %i.y = alloca [24 x i8], align 8                ; 7 uses
  %i.z = alloca [32 x i8], align 8                ; 10 uses
  %i.aa = alloca [32 x i8], align 8               ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val), "nonnull"(ptr %.8.val) ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !invariant.load !40, !nonnull !40
  %i.ad = tail call noundef align 8 ptr %i.ac(ptr noundef nonnull %.0.val), !inline_history !3877 ; 8 uses
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %bb.cy, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3975)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 264 ; 3 uses
  %i.af = load i64, ptr %i.ad, align 8, !range !69, !alias.scope !3975, !noalias !3976, !noundef !40
  switch i64 %i.af, label %default.unreachable [
    i64 0, label %bb.c
    i64 1, label %bb.j
    i64 2, label %bb.s
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3977)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.val.i.i = load ptr, ptr %i.ag, align 8, !alias.scope !3978, !noalias !3976, !nonnull !40, !noundef !40 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.val1.i.i = load i64, ptr %i.ah, align 8, !alias.scope !3978, !noalias !3976, !noundef !40 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !3979, !noalias !3976, !align !39, !noundef !40 ; 5 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !3980
  %i.ak = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 24, i64 noundef 8) #26, !noalias !3980 ; 12 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.d, label %_RNvMNtCsb2PI9uRnNxu_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4data5FieldNtNtB4_5token5CommaE4iterCscQ9YKgepC2A_12lance_derive.exit.i, !prof !80

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #31, !noalias !3980
  unreachable

_RNvMNtCsb2PI9uRnNxu_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4data5FieldNtNtB4_5token5CommaE4iterCscQ9YKgepC2A_12lance_derive.exit.i: ; preds = %bb.c
  %.idx.i = mul nuw nsw i64 %.val1.i.i, 320
  %i.am = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.idx.i ; 5 uses
  store ptr %.val.i.i, ptr %i.ak, align 8, !noalias !3981
  %.sroa.24.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  store ptr %i.am, ptr %.sroa.24.0..sroa_idx.i.i, align 8, !noalias !3981
  %.sroa.35.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 6 uses
  store ptr %i.aj, ptr %.sroa.35.0..sroa_idx.i.i, align 8, !noalias !3981
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !3982
  %i.an = icmp eq i64 %.val1.i.i, 0
  br i1 %i.an, label %_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscQ9YKgepC2A_12lance_derive.exit.i.i, label %_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscQ9YKgepC2A_12lance_derive.exit.thread.i.i

_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscQ9YKgepC2A_12lance_derive.exit.thread.i.i: ; preds = %_RNvMNtCsb2PI9uRnNxu_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4data5FieldNtNtB4_5token5CommaE4iterCscQ9YKgepC2A_12lance_derive.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 320 ; 2 uses
  store ptr %i.ao, ptr %i.ak, align 8, !alias.scope !3983, !noalias !3984
  %i.ap = icmp ne ptr %i.aj, null
  %i.aq = zext i1 %i.ap to i64
  br label %.noexc.i.i

_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscQ9YKgepC2A_12lance_derive.exit.i.i: ; preds = %_RNvMNtCsb2PI9uRnNxu_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4data5FieldNtNtB4_5token5CommaE4iterCscQ9YKgepC2A_12lance_derive.exit.i
  store ptr null, ptr %.sroa.35.0..sroa_idx.i.i, align 8, !alias.scope !3985, !noalias !3986
  %.not.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCsb2PI9uRnNxu_3syn10punctuated4IterNtNtB1e_4data5FieldENCNCNvCscQ9YKgepC2A_12lance_derive19derive_deep_size_of0s0_0EEB2d_.exit.i.i, label %.noexc.i.i

.noexc.i.i:                                       ; preds = %_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscQ9YKgepC2A_12lance_derive.exit.i.i, %_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscQ9YKgepC2A_12lance_derive.exit.thread.i.i
  %i.ar = phi ptr [ %i.aj, %_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscQ9YKgepC2A_12lance_derive.exit.thread.i.i ], [ null, %_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscQ9YKgepC2A_12lance_derive.exit.i.i ] ; 2 uses
  %.val.i.i.i = phi i64 [ %i.aq, %_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscQ9YKgepC2A_12lance_derive.exit.thread.i.i ], [ 0, %_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscQ9YKgepC2A_12lance_derive.exit.i.i ]
  %i.as = phi ptr [ %i.ao, %_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscQ9YKgepC2A_12lance_derive.exit.thread.i.i ], [ %.val.i.i, %_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscQ9YKgepC2A_12lance_derive.exit.i.i ] ; 4 uses
  %.pn19.i.i = phi ptr [ %.val.i.i, %_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscQ9YKgepC2A_12lance_derive.exit.thread.i.i ], [ %i.aj, %_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscQ9YKgepC2A_12lance_derive.exit.i.i ]
  %i.at = ptrtoint ptr %i.am to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub nuw i64 %i.at, %i.au
  %i.aw = udiv exact i64 %i.av, 320
  %i.ax = add nuw nsw i64 %i.aw, %.val.i.i.i
  %i.ay = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 3)
  %.sroa.0.0.i.i.i = add nuw nsw i64 %i.ay, 1     ; 3 uses
  %i.az = shl nuw nsw i64 %.sroa.0.0.i.i.i, 3     ; 2 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !3987
  %i.ba = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.az, i64 noundef range(i64 1, 9) 8) #26, !noalias !3987 ; 5 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.f, label %bb.g

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCsb2PI9uRnNxu_3syn10punctuated4IterNtNtB1e_4data5FieldENCNCNvCscQ9YKgepC2A_12lance_derive19derive_deep_size_of0s0_0EEB2d_.exit.i.i: ; preds = %_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscQ9YKgepC2A_12lance_derive.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3982
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ak, i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !3984
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecRINtNtCscI6d9CVNmLh_4core6option6OptionNtCs7xemmV0rX3c_11proc_macro25IdentEEINtB2_18SpecFromIterNestedB11_INtNtNtNtB17_4iter8adapters3map3MapINtNtCsb2PI9uRnNxu_3syn10punctuated4IterNtNtB3n_4data5FieldENCNCNvCscQ9YKgepC2A_12lance_derive19derive_deep_size_of0s0_0EE9from_iterB4m_.exit.i

bb.e:                                             ; preds = %bb.f
  %i.bc = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCsb2PI9uRnNxu_3syn10punctuated4IterNtNtB1e_4data5FieldENCNCNvCscQ9YKgepC2A_12lance_derive19derive_deep_size_of0s0_0EEB2d_(ptr nonnull %i.ak, ptr nonnull @23) #27, !noalias !3984
  br label %common.resume.i

bb.f:                                             ; preds = %.noexc.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.az) #31
          to label %.noexc17.i.i unwind label %bb.e, !noalias !3984

.noexc17.i.i:                                     ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %.noexc.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 288
  store ptr %i.bd, ptr %i.ba, align 8, !noalias !3984
  store i64 %.sroa.0.0.i.i.i, ptr %i.l, align 8, !noalias !3982
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  store ptr %i.ba, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !3982
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !3982
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3988)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3989)
  %i.be = icmp eq ptr %i.as, %i.am
  br i1 %i.be, label %_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscQ9YKgepC2A_12lance_derive.exit12.i.i, label %_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscQ9YKgepC2A_12lance_derive.exit12.thread.i.i

_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscQ9YKgepC2A_12lance_derive.exit12.thread.i.i: ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %i.as, i64 320 ; 2 uses
  store ptr %i.bf, ptr %i.ak, align 8, !alias.scope !3990, !noalias !3991
  br label %.lr.ph.i.i.preheader

_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscQ9YKgepC2A_12lance_derive.exit12.i.i: ; preds = %bb.g
  store ptr null, ptr %.sroa.35.0..sroa_idx.i.i, align 8, !alias.scope !3992, !noalias !3993
  %.not.i.i.i6.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i6.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscQ9YKgepC2A_12lance_derive.exit12.i.i, %_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscQ9YKgepC2A_12lance_derive.exit12.thread.i.i
  %.ph = phi ptr [ %i.am, %_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscQ9YKgepC2A_12lance_derive.exit12.i.i ], [ %i.bf, %_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscQ9YKgepC2A_12lance_derive.exit12.thread.i.i ]
  %.pn.i.i.ph = phi ptr [ %i.ar, %_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscQ9YKgepC2A_12lance_derive.exit12.i.i ], [ %i.as, %_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscQ9YKgepC2A_12lance_derive.exit12.thread.i.i ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscQ9YKgepC2A_12lance_derive.exit16.i.i
  %i.bg = phi ptr [ %i.cc, %_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscQ9YKgepC2A_12lance_derive.exit16.i.i ], [ %.ph, %.lr.ph.i.i.preheader ]
  %i.bh = phi ptr [ %i.by, %_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscQ9YKgepC2A_12lance_derive.exit16.i.i ], [ %i.am, %.lr.ph.i.i.preheader ]
  %i.bi = phi ptr [ %i.bu, %_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscQ9YKgepC2A_12lance_derive.exit16.i.i ], [ %i.ba, %.lr.ph.i.i.preheader ]
  %i.bj = phi i64 [ %i.bw, %_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscQ9YKgepC2A_12lance_derive.exit16.i.i ], [ 1, %.lr.ph.i.i.preheader ] ; 5 uses
  %.pn.i.i = phi ptr [ %.sroa.0.0.i1.i15.i.i, %_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscQ9YKgepC2A_12lance_derive.exit16.i.i ], [ %.pn.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 288
  %i.bl = icmp samesign ult i64 %i.bj, 1152921504606846976
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = load i64, ptr %i.l, align 8, !range !48, !alias.scope !3994, !noalias !3995, !noundef !40
  %i.bn = icmp eq i64 %i.bj, %i.bm
  br i1 %i.bn, label %.noexc.i.i.i.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecRINtNtCscI6d9CVNmLh_4core6option6OptionNtCs7xemmV0rX3c_11proc_macro25IdentEE7reserveCscQ9YKgepC2A_12lance_derive.exit.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %.lr.ph.i.i
  %i.bo = ptrtoint ptr %i.bh to i64
  %i.bp = ptrtoint ptr %i.bg to i64
  %i.bq = sub nuw i64 %i.bo, %i.bp
  %i.br = udiv exact i64 %i.bq, 320
  %.val.i13.i.i = load ptr, ptr %.sroa.35.0..sroa_idx.i.i, align 8, !alias.scope !3996, !noalias !3991, !align !39, !noundef !40
  %.not.i.i = icmp eq ptr %.val.i13.i.i, null
  %i.bs = select i1 %.not.i.i, i64 1, i64 2
  %i.bt = add nuw nsw i64 %i.bs, %i.br
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECscQ9YKgepC2A_12lance_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef %i.bj, i64 noundef range(i64 1, 0) %i.bt, i64 noundef 8)
          to label %.noexc.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecRINtNtCscI6d9CVNmLh_4core6option6OptionNtCs7xemmV0rX3c_11proc_macro25IdentEE7reserveCscQ9YKgepC2A_12lance_derive.exit.i.i_crit_edge.i.i unwind label %.body.i.i

.noexc.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecRINtNtCscI6d9CVNmLh_4core6option6OptionNtCs7xemmV0rX3c_11proc_macro25IdentEE7reserveCscQ9YKgepC2A_12lance_derive.exit.i.i_crit_edge.i.i: ; preds = %.noexc.i.i.i.i
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !3994, !noalias !3995
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecRINtNtCscI6d9CVNmLh_4core6option6OptionNtCs7xemmV0rX3c_11proc_macro25IdentEE7reserveCscQ9YKgepC2A_12lance_derive.exit.i.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecRINtNtCscI6d9CVNmLh_4core6option6OptionNtCs7xemmV0rX3c_11proc_macro25IdentEE7reserveCscQ9YKgepC2A_12lance_derive.exit.i.i.i.i: ; preds = %.noexc.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecRINtNtCscI6d9CVNmLh_4core6option6OptionNtCs7xemmV0rX3c_11proc_macro25IdentEE7reserveCscQ9YKgepC2A_12lance_derive.exit.i.i_crit_edge.i.i, %.lr.ph.i.i
  %i.bu = phi ptr [ %.pre.i.i, %.noexc.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecRINtNtCscI6d9CVNmLh_4core6option6OptionNtCs7xemmV0rX3c_11proc_macro25IdentEE7reserveCscQ9YKgepC2A_12lance_derive.exit.i.i_crit_edge.i.i ], [ %i.bi, %.lr.ph.i.i ] ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bj
  store ptr %i.bk, ptr %i.bv, align 8, !noalias !3991
  %i.bw = add nuw nsw i64 %i.bj, 1                ; 3 uses
  store i64 %i.bw, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !3994, !noalias !3995
  %i.bx = load ptr, ptr %i.ak, align 8, !alias.scope !3997, !noalias !3991, !nonnull !40, !noundef !40 ; 4 uses
  %i.by = load ptr, ptr %.sroa.24.0..sroa_idx.i.i, align 8, !alias.scope !3997, !noalias !3991, !nonnull !40, !noundef !40 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %bb.h, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterTNtNtCsb2PI9uRnNxu_3syn4data5FieldNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCscQ9YKgepC2A_12lance_derive.exit.i14.i.i

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterTNtNtCsb2PI9uRnNxu_3syn4data5FieldNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCscQ9YKgepC2A_12lance_derive.exit.i14.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecRINtNtCscI6d9CVNmLh_4core6option6OptionNtCs7xemmV0rX3c_11proc_macro25IdentEE7reserveCscQ9YKgepC2A_12lance_derive.exit.i.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 320 ; 2 uses
  store ptr %i.ca, ptr %i.ak, align 8, !alias.scope !3997, !noalias !3991
  br label %_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscQ9YKgepC2A_12lance_derive.exit16.i.i

bb.h:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecRINtNtCscI6d9CVNmLh_4core6option6OptionNtCs7xemmV0rX3c_11proc_macro25IdentEE7reserveCscQ9YKgepC2A_12lance_derive.exit.i.i.i.i
  %i.cb = load ptr, ptr %.sroa.35.0..sroa_idx.i.i, align 8, !alias.scope !3998, !noalias !3999, !align !39, !noundef !40
  store ptr null, ptr %.sroa.35.0..sroa_idx.i.i, align 8, !alias.scope !3998, !noalias !3999
  br label %_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscQ9YKgepC2A_12lance_derive.exit16.i.i

_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscQ9YKgepC2A_12lance_derive.exit16.i.i: ; preds = %bb.h, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterTNtNtCsb2PI9uRnNxu_3syn4data5FieldNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCscQ9YKgepC2A_12lance_derive.exit.i14.i.i
  %i.cc = phi ptr [ %i.bx, %bb.h ], [ %i.ca, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterTNtNtCsb2PI9uRnNxu_3syn4data5FieldNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCscQ9YKgepC2A_12lance_derive.exit.i14.i.i ]
  %.sroa.0.0.i1.i15.i.i = phi ptr [ %i.cb, %bb.h ], [ %i.bx, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterTNtNtCsb2PI9uRnNxu_3syn4data5FieldNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCscQ9YKgepC2A_12lance_derive.exit.i14.i.i ] ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i1.i15.i.i, null
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.loopexit.i, label %.lr.ph.i.i

.body.i.i:                                        ; preds = %.noexc.i.i.i.i
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCsb2PI9uRnNxu_3syn10punctuated4IterNtNtB1e_4data5FieldENCNCNvCscQ9YKgepC2A_12lance_derive19derive_deep_size_of0s0_0EEB2d_(ptr nonnull %i.ak, ptr nonnull readonly align 8 dereferenceable(104) @23) #27, !noalias !4000
  %.val14.i.i = load i64, ptr %i.l, align 8, !noalias !3982 ; 2 uses
  %i.ce = icmp eq i64 %.val14.i.i, 0
  br i1 %i.ce, label %common.resume.i, label %bb.i

bb.i:                                             ; preds = %.body.i.i
  %.val15.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !3982, !nonnull !40, !noundef !40
  %i.cf = shl nuw i64 %.val14.i.i, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val15.i.i, i64 noundef %i.cf, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !3984
  br label %common.resume.i

._crit_edge.i.loopexit.i:                         ; preds = %_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscQ9YKgepC2A_12lance_derive.exit16.i.i
  %.sroa.01.0.copyload.pre.i = load i64, ptr %i.l, align 8, !noalias !4001
  %.sroa.6.0.copyload.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !4001
  %i.cg = shl nuw nsw i64 %i.bw, 3
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.loopexit.i, %_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscQ9YKgepC2A_12lance_derive.exit12.i.i
  %.sroa.11.0.copyload.i = phi i64 [ %i.cg, %._crit_edge.i.loopexit.i ], [ 8, %_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscQ9YKgepC2A_12lance_derive.exit12.i.i ]
  %.sroa.6.0.copyload.i = phi ptr [ %.sroa.6.0.copyload.pre.i, %._crit_edge.i.loopexit.i ], [ %i.ba, %_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscQ9YKgepC2A_12lance_derive.exit12.i.i ]
  %.sroa.01.0.copyload.i = phi i64 [ %.sroa.01.0.copyload.pre.i, %._crit_edge.i.loopexit.i ], [ %.sroa.0.0.i.i.i, %_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4data5FieldNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscQ9YKgepC2A_12lance_derive.exit12.i.i ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ak, i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !3991
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3982
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecRINtNtCscI6d9CVNmLh_4core6option6OptionNtCs7xemmV0rX3c_11proc_macro25IdentEEINtB2_18SpecFromIterNestedB11_INtNtNtNtB17_4iter8adapters3map3MapINtNtCsb2PI9uRnNxu_3syn10punctuated4IterNtNtB3n_4data5FieldENCNCNvCscQ9YKgepC2A_12lance_derive19derive_deep_size_of0s0_0EE9from_iterB4m_.exit.i

common.resume.i:                                  ; preds = %bb.cs, %bb.bg, %bb.u, %bb.t, %.body.i28.i, %bb.i, %.body.i.i, %bb.e
  %common.resume.op.i = phi { ptr, i32 } [ %i.cd, %.body.i.i ], [ %eh.lpad-body.i.i.i.i.i.i.i, %.body.i28.i ], [ %i.bc, %bb.e ], [ %i.cd, %bb.i ], [ %i.ex, %bb.cs ], [ %.pn12.pn.i, %bb.bg ], [ %.pn17.pn.i, %bb.t ], [ %.pn17.pn.i, %bb.u ]
  resume { ptr, i32 } %common.resume.op.i

_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecRINtNtCscI6d9CVNmLh_4core6option6OptionNtCs7xemmV0rX3c_11proc_macro25IdentEEINtB2_18SpecFromIterNestedB11_INtNtNtNtB17_4iter8adapters3map3MapINtNtCsb2PI9uRnNxu_3syn10punctuated4IterNtNtB3n_4data5FieldENCNCNvCscQ9YKgepC2A_12lance_derive19derive_deep_size_of0s0_0EE9from_iterB4m_.exit.i: ; preds = %._crit_edge.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCsb2PI9uRnNxu_3syn10punctuated4IterNtNtB1e_4data5FieldENCNCNvCscQ9YKgepC2A_12lance_derive19derive_deep_size_of0s0_0EEB2d_.exit.i.i
  %.sroa.11.0.i = phi i64 [ 0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCsb2PI9uRnNxu_3syn10punctuated4IterNtNtB1e_4data5FieldENCNCNvCscQ9YKgepC2A_12lance_derive19derive_deep_size_of0s0_0EEB2d_.exit.i.i ], [ %.sroa.11.0.copyload.i, %._crit_edge.i.i ] ; 3 uses
  %.sroa.6.0.i = phi ptr [ inttoptr (i64 8 to ptr), %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCsb2PI9uRnNxu_3syn10punctuated4IterNtNtB1e_4data5FieldENCNCNvCscQ9YKgepC2A_12lance_derive19derive_deep_size_of0s0_0EEB2d_.exit.i.i ], [ %.sroa.6.0.copyload.i, %._crit_edge.i.i ] ; 8 uses
  %.sroa.01.0.i = phi i64 [ 0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCsb2PI9uRnNxu_3syn10punctuated4IterNtNtB1e_4data5FieldENCNCNvCscQ9YKgepC2A_12lance_derive19derive_deep_size_of0s0_0EEB2d_.exit.i.i ], [ %.sroa.01.0.copyload.i, %._crit_edge.i.i ] ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.6.0.i, i64 %.sroa.11.0.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !4001
  invoke void @_RNvMCs7xemmV0rX3c_11proc_macro2NtB2_11TokenStream3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.r)
          to label %bb.w unwind label %bb.v, !noalias !3976

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !4001
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.val.i = load i64, ptr %i.ci, align 8, !alias.scope !3975, !noalias !3976, !noundef !40 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %.val21.i = load ptr, ptr %i.cj, align 8, !alias.scope !3975, !noalias !3976, !align !39, !noundef !40
  %i.ck = icmp ult i64 %.val.i, 28823037615171175
  tail call void @llvm.assume(i1 %i.ck)
  %.not.i27.i = icmp ne ptr %.val21.i, null
  %..i.i = zext i1 %.not.i27.i to i64
  %i.cl = add nuw nsw i64 %.val.i, %..i.i         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !4002
  %i.cm = mul nuw nsw i64 %i.cl, 24               ; 2 uses
  %i.cn = icmp eq i64 %i.cl, 0
  br i1 %i.cn, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtCs7xemmV0rX3c_11proc_macro25IdentE7reserveCscQ9YKgepC2A_12lance_derive.exit.i.i.thread.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtCs7xemmV0rX3c_11proc_macro25IdentE7reserveCscQ9YKgepC2A_12lance_derive.exit.i.i.thread.i.i: ; preds = %bb.j
  store i64 0, ptr %i.k, align 8, !noalias !4002
  %i.co = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.co, align 8, !noalias !4002
  %i.cp = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  br label %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtCs7xemmV0rX3c_11proc_macro25IdentEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB2g_3ops5range5RangejENCNCNvCscQ9YKgepC2A_12lance_derive19derive_deep_size_of00EE9from_iterB3u_.exit.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i: ; preds = %bb.j
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !4003
  %i.cq = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.cm, i64 noundef range(i64 1, 9) 8) #26, !noalias !4003 ; 3 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %bb.k, label %.lr.ph.i.i.i.i.i.i.i

bb.k:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.cm) #31, !noalias !4004
  unreachable

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i
  store i64 %i.cl, ptr %i.k, align 8, !noalias !4002
  %i.cs = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.cq, ptr %i.cs, align 8, !noalias !4002
  %i.ct = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  store i64 0, ptr %i.ct, align 8, !noalias !4002
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4005)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4006)
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  br label %bb.m

bb.l:                                             ; preds = %bb.m
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body.i28.i

bb.m:                                             ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldjNtCs7xemmV0rX3c_11proc_macro25IdentuNCNCNvCscQ9YKgepC2A_12lance_derive19derive_deep_size_of00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB3v_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1v_EE0E0E0B1B_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.val7.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i ], [ %i.cv, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldjNtCs7xemmV0rX3c_11proc_macro25IdentuNCNCNvCscQ9YKgepC2A_12lance_derive19derive_deep_size_of00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB3v_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1v_EE0E0E0B1B_.exit.i.i.i.i.i.i.i ] ; 4 uses
  %i.cv = add nuw nsw i64 %.val7.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !4007
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4008
  store i64 %.val7.i.i.i.i.i.i.i, ptr %i.i, align 8, !noalias !4009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4009
  store ptr %i.i, ptr %i.g, align 8, !noalias !4009
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !4009
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull @1, ptr noundef nonnull %i.g)
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.l, !noalias !4010

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4009
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !noalias !4009 ; 4 uses
  %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !4009, !nonnull !40, !noundef !40 ; 3 uses
  %.sroa.8.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !4009
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4009
  %i.cw = invoke noundef i32 @_RNvMsi_Cs7xemmV0rX3c_11proc_macro2NtB5_4Span9call_site()
          to label %bb.p unwind label %bb.n, !noalias !4011

bb.n:                                             ; preds = %bb.p, %.noexc.i.i.i.i.i.i.i
  %i.cx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cy = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cy, label %.body.i28.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !4011
  br label %.body.i28.i

bb.p:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  invoke void @_RNvMsx_Cs7xemmV0rX3c_11proc_macro2NtB5_5Ident3new(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.8.0.copyload.i.i.i.i.i.i.i.i.i, i32 noundef %i.cw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3)
          to label %bb.q unwind label %bb.n, !noalias !4012

bb.q:                                             ; preds = %bb.p
  %i.cz = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cz, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldjNtCs7xemmV0rX3c_11proc_macro25IdentuNCNCNvCscQ9YKgepC2A_12lance_derive19derive_deep_size_of00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB3v_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1v_EE0E0E0B1B_.exit.i.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !4011
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldjNtCs7xemmV0rX3c_11proc_macro25IdentuNCNCNvCscQ9YKgepC2A_12lance_derive19derive_deep_size_of00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB3v_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1v_EE0E0E0B1B_.exit.i.i.i.i.i.i.i

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldjNtCs7xemmV0rX3c_11proc_macro25IdentuNCNCNvCscQ9YKgepC2A_12lance_derive19derive_deep_size_of00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB3v_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1v_EE0E0E0B1B_.exit.i.i.i.i.i.i.i: ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4008
  %i.da = getelementptr inbounds nuw [24 x i8], ptr %i.cq, i64 %.val7.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.da, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !4012
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4007
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.cv, %i.cl
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtCs7xemmV0rX3c_11proc_macro25IdentEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB2g_3ops5range5RangejENCNCNvCscQ9YKgepC2A_12lance_derive19derive_deep_size_of00EE9from_iterB3u_.exit.i, label %bb.m

.body.i28.i:                                      ; preds = %bb.o, %bb.n, %bb.l
  %eh.lpad-body.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.cu, %bb.l ], [ %i.cx, %bb.o ], [ %i.cx, %bb.n ]
  store i64 %.val7.i.i.i.i.i.i.i, ptr %i.ct, align 8, !alias.scope !4013, !noalias !4014
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtCs7xemmV0rX3c_11proc_macro25IdentEECscQ9YKgepC2A_12lance_derive(ptr noalias noundef align 8 dereferenceable(24) %i.k) #27, !noalias !4004
  br label %common.resume.i

_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtCs7xemmV0rX3c_11proc_macro25IdentEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB2g_3ops5range5RangejENCNCNvCscQ9YKgepC2A_12lance_derive19derive_deep_size_of00EE9from_iterB3u_.exit.i: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldjNtCs7xemmV0rX3c_11proc_macro25IdentuNCNCNvCscQ9YKgepC2A_12lance_derive19derive_deep_size_of00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB3v_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1v_EE0E0E0B1B_.exit.i.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtCs7xemmV0rX3c_11proc_macro25IdentE7reserveCscQ9YKgepC2A_12lance_derive.exit.i.i.thread.i.i
  %i.db = phi ptr [ %i.cp, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtCs7xemmV0rX3c_11proc_macro25IdentE7reserveCscQ9YKgepC2A_12lance_derive.exit.i.i.thread.i.i ], [ %i.ct, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldjNtCs7xemmV0rX3c_11proc_macro25IdentuNCNCNvCscQ9YKgepC2A_12lance_derive19derive_deep_size_of00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB3v_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1v_EE0E0E0B1B_.exit.i.i.i.i.i.i.i ]
  store i64 %i.cl, ptr %i.db, align 8, !alias.scope !4013, !noalias !4014
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !4001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !4002
  %i.dc = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !noalias !4001, !nonnull !40, !noundef !40 ; 6 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.df = load i64, ptr %i.de, align 8, !noalias !4001, !noundef !40 ; 4 uses
  %.idx39.i = mul nuw nsw i64 %i.df, 24
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 %.idx39.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !4001
  invoke void @_RNvMCs7xemmV0rX3c_11proc_macro2NtB2_11TokenStream3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.x)
          to label %bb.bi unwind label %bb.bh, !noalias !3976

bb.s:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !4001
  call void @_RNvMCs7xemmV0rX3c_11proc_macro2NtB2_11TokenStream3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.z), !noalias !3976
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private10push_ident(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z, ptr noalias noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 4)
          to label %bb.ct unwind label %bb.cs, !noalias !3976

bb.t:                                             ; preds = %bb.x, %bb.v
  %.pn17.pn.i = phi { ptr, i32 } [ %.pn17.i, %bb.x ], [ %i.di, %bb.v ] ; 2 uses
  %i.dh = icmp eq i64 %.sroa.01.0.i, 0
  br i1 %i.dh, label %common.resume.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.i) ]
  %1 = shl nuw i64 %.sroa.01.0.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.i, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !3976
  br label %common.resume.i

bb.v:                                             ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecRINtNtCscI6d9CVNmLh_4core6option6OptionNtCs7xemmV0rX3c_11proc_macro25IdentEEINtB2_18SpecFromIterNestedB11_INtNtNtNtB17_4iter8adapters3map3MapINtNtCsb2PI9uRnNxu_3syn10punctuated4IterNtNtB3n_4data5FieldENCNCNvCscQ9YKgepC2A_12lance_derive19derive_deep_size_of0s0_0EE9from_iterB4m_.exit.i
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.w:                                             ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecRINtNtCscI6d9CVNmLh_4core6option6OptionNtCs7xemmV0rX3c_11proc_macro25IdentEEINtB2_18SpecFromIterNestedB11_INtNtNtNtB17_4iter8adapters3map3MapINtNtCsb2PI9uRnNxu_3syn10punctuated4IterNtNtB3n_4data5FieldENCNCNvCscQ9YKgepC2A_12lance_derive19derive_deep_size_of0s0_0EE9from_iterB4m_.exit.i
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private10push_ident(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 4)
          to label %bb.z unwind label %bb.y, !noalias !3976

bb.x:                                             ; preds = %.body.i, %.loopexit9.i, %bb.y
  %.pn17.i = phi { ptr, i32 } [ %i.dj, %bb.y ], [ %.pn15.i, %.body.i ], [ %lpad.phi13.i, %.loopexit9.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro211TokenStreamECscQ9YKgepC2A_12lance_derive(ptr noalias noundef align 8 dereferenceable(32) %i.r) #27
          to label %bb.t unwind label %bb.bd, !noalias !3976

bb.y:                                             ; preds = %._crit_edge38.i, %bb.ah, %bb.ag, %._crit_edge35.i, %bb.ab, %bb.aa, %bb.z, %bb.w
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.z:                                             ; preds = %bb.w
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private11push_colon2(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %bb.aa unwind label %bb.y, !noalias !3976

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvXsq_NtCsj1iVQvtAHZj_5quote9to_tokensNtCs7xemmV0rX3c_11proc_macro25IdentNtB5_8ToTokens9to_tokens(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ae, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %bb.ab unwind label %bb.y, !noalias !3976

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !4001
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !4001
  invoke void @_RNvMCs7xemmV0rX3c_11proc_macro2NtB2_11TokenStream3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.p)
          to label %bb.ac unwind label %bb.y, !noalias !3976

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvXs0_NtCsj1iVQvtAHZj_5quote9___privateINtB5_11HasIteratorKb0_EINtNtNtCscI6d9CVNmLh_4core3ops3bit5BitOrIBD_Kb1_EE5bitor()
          to label %.preheader8.i unwind label %.loopexit.split-lp10.i, !noalias !3976

.preheader8.i:                                    ; preds = %bb.ac
  %i.dk = icmp samesign eq i64 %.sroa.11.0.i, 0   ; 2 uses
  br i1 %i.dk, label %._crit_edge35.i, label %bb.ad

bb.ad:                                            ; preds = %.preheader8.i
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.6.0.i, i64 8
  %.sroa.06.0.val.peel.pre.i = load ptr, ptr %.sroa.6.0.i, align 8, !noalias !3976 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.val.peel.pre.i, i64 16
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !range !45, !alias.scope !4015, !noalias !4016
  %.not.i.i29.peel.i = icmp eq i8 %.pre.i, -1
  br i1 %.not.i.i29.peel.i, label %_RNvXNtCsj1iVQvtAHZj_5quote9to_tokensRINtNtCscI6d9CVNmLh_4core6option6OptionNtCs7xemmV0rX3c_11proc_macro25IdentENtB2_8ToTokens9to_tokensCscQ9YKgepC2A_12lance_derive.exit.peel.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvXsq_NtCsj1iVQvtAHZj_5quote9to_tokensNtCs7xemmV0rX3c_11proc_macro25IdentNtB5_8ToTokens9to_tokens(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.06.0.val.peel.pre.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %_RNvXNtCsj1iVQvtAHZj_5quote9to_tokensRINtNtCscI6d9CVNmLh_4core6option6OptionNtCs7xemmV0rX3c_11proc_macro25IdentENtB2_8ToTokens9to_tokensCscQ9YKgepC2A_12lance_derive.exit.peel.i unwind label %.loopexit9.loopexit.split-lp.i, !noalias !3976

_RNvXNtCsj1iVQvtAHZj_5quote9to_tokensRINtNtCscI6d9CVNmLh_4core6option6OptionNtCs7xemmV0rX3c_11proc_macro25IdentENtB2_8ToTokens9to_tokensCscQ9YKgepC2A_12lance_derive.exit.peel.i: ; preds = %bb.ae, %bb.ad
  %i.dm = icmp samesign eq i64 %.sroa.11.0.i, 8
  br i1 %i.dm, label %._crit_edge35.i, label %.lr.ph34.peel.next.i

.loopexit9.loopexit.i:                            ; preds = %bb.af, %.lr.ph34.peel.next.i
  %lpad.loopexit51.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit9.i

.loopexit9.loopexit.split-lp.i:                   ; preds = %bb.ae
  %lpad.loopexit.split-lp52.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit9.i

.loopexit.split-lp10.i:                           ; preds = %bb.ac
  %lpad.loopexit.split-lp12.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit9.i

.loopexit9.i:                                     ; preds = %.loopexit.split-lp10.i, %.loopexit9.loopexit.split-lp.i, %.loopexit9.loopexit.i
  %lpad.phi13.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp12.i, %.loopexit.split-lp10.i ], [ %lpad.loopexit51.i, %.loopexit9.loopexit.i ], [ %lpad.loopexit.split-lp52.i, %.loopexit9.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro211TokenStreamECscQ9YKgepC2A_12lance_derive(ptr noalias noundef align 8 dereferenceable(32) %i.p) #27
          to label %bb.x unwind label %bb.bd, !noalias !3976

._crit_edge35.i:                                  ; preds = %_RNvXNtCsj1iVQvtAHZj_5quote9to_tokensRINtNtCscI6d9CVNmLh_4core6option6OptionNtCs7xemmV0rX3c_11proc_macro25IdentENtB2_8ToTokens9to_tokensCscQ9YKgepC2A_12lance_derive.exit.i, %_RNvXNtCsj1iVQvtAHZj_5quote9to_tokensRINtNtCscI6d9CVNmLh_4core6option6OptionNtCs7xemmV0rX3c_11proc_macro25IdentENtB2_8ToTokens9to_tokensCscQ9YKgepC2A_12lance_derive.exit.peel.i, %.preheader8.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false), !noalias !4001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !4001
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private10push_group(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.r, i8 noundef 1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.q)
          to label %bb.ag unwind label %bb.y, !noalias !3976

.lr.ph34.peel.next.i:                             ; preds = %_RNvXNtCsj1iVQvtAHZj_5quote9to_tokensRINtNtCscI6d9CVNmLh_4core6option6OptionNtCs7xemmV0rX3c_11proc_macro25IdentENtB2_8ToTokens9to_tokensCscQ9YKgepC2A_12lance_derive.exit.peel.i, %_RNvXNtCsj1iVQvtAHZj_5quote9to_tokensRINtNtCscI6d9CVNmLh_4core6option6OptionNtCs7xemmV0rX3c_11proc_macro25IdentENtB2_8ToTokens9to_tokensCscQ9YKgepC2A_12lance_derive.exit.i
  %.sroa.06.032.i = phi ptr [ %i.dn, %_RNvXNtCsj1iVQvtAHZj_5quote9to_tokensRINtNtCscI6d9CVNmLh_4core6option6OptionNtCs7xemmV0rX3c_11proc_macro25IdentENtB2_8ToTokens9to_tokensCscQ9YKgepC2A_12lance_derive.exit.i ], [ %i.dl, %_RNvXNtCsj1iVQvtAHZj_5quote9to_tokensRINtNtCscI6d9CVNmLh_4core6option6OptionNtCs7xemmV0rX3c_11proc_macro25IdentENtB2_8ToTokens9to_tokensCscQ9YKgepC2A_12lance_derive.exit.peel.i ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.06.032.i, i64 8 ; 2 uses
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private10push_comma(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %._crit_edge61.i unwind label %.loopexit9.loopexit.i, !noalias !3976

._crit_edge61.i:                                  ; preds = %.lr.ph34.peel.next.i
  %.sroa.06.0.val.i = load ptr, ptr %.sroa.06.032.i, align 8, !noalias !3976, !nonnull !40, !align !39, !noundef !40 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.06.0.val.i, i64 16
  %i.dp = load i8, ptr %i.do, align 8, !range !45, !alias.scope !4015, !noalias !4016, !noundef !40
  %.not.i.i29.i = icmp eq i8 %i.dp, -1
  br i1 %.not.i.i29.i, label %_RNvXNtCsj1iVQvtAHZj_5quote9to_tokensRINtNtCscI6d9CVNmLh_4core6option6OptionNtCs7xemmV0rX3c_11proc_macro25IdentENtB2_8ToTokens9to_tokensCscQ9YKgepC2A_12lance_derive.exit.i, label %bb.af

bb.af:                                            ; preds = %._crit_edge61.i
  invoke void @_RNvXsq_NtCsj1iVQvtAHZj_5quote9to_tokensNtCs7xemmV0rX3c_11proc_macro25IdentNtB5_8ToTokens9to_tokens(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.06.0.val.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %_RNvXNtCsj1iVQvtAHZj_5quote9to_tokensRINtNtCscI6d9CVNmLh_4core6option6OptionNtCs7xemmV0rX3c_11proc_macro25IdentENtB2_8ToTokens9to_tokensCscQ9YKgepC2A_12lance_derive.exit.i unwind label %.loopexit9.loopexit.i, !noalias !3976

_RNvXNtCsj1iVQvtAHZj_5quote9to_tokensRINtNtCscI6d9CVNmLh_4core6option6OptionNtCs7xemmV0rX3c_11proc_macro25IdentENtB2_8ToTokens9to_tokensCscQ9YKgepC2A_12lance_derive.exit.i: ; preds = %bb.af, %._crit_edge61.i
  %i.dq = icmp eq ptr %i.dn, %i.ch
  br i1 %i.dq, label %._crit_edge35.i, label %.lr.ph34.peel.next.i, !llvm.loop !3955

bb.ag:                                            ; preds = %._crit_edge35.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !4001
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private14push_fat_arrow(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %bb.ah unwind label %bb.y, !noalias !3976

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !4001
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !4001
  invoke void @_RNvMCs7xemmV0rX3c_11proc_macro2NtB2_11TokenStream3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.n)
          to label %bb.ai unwind label %bb.y, !noalias !3976

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private5parse(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.n, ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 1)
          to label %bb.aj unwind label %.loopexit.split-lp.i, !noalias !3976

.body.i:                                          ; preds = %bb.ba, %bb.ak, %.loopexit.split-lp.i, %.loopexit.i
  %.pn15.i = phi { ptr, i32 } [ %.pn.i30.i, %bb.ak ], [ %i.dx, %bb.ba ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro211TokenStreamECscQ9YKgepC2A_12lance_derive(ptr noalias noundef align 8 dereferenceable(32) %i.n) #27
          to label %bb.x unwind label %bb.bd, !noalias !3976

.loopexit.i:                                      ; preds = %bb.bc, %.lr.ph37.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.aj, %bb.ai
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvXs0_NtCsj1iVQvtAHZj_5quote9___privateINtB5_11HasIteratorKb0_EINtNtNtCscI6d9CVNmLh_4core3ops3bit5BitOrIBD_Kb1_EE5bitor()
          to label %.preheader.i unwind label %.loopexit.split-lp.i, !noalias !3976

.preheader.i:                                     ; preds = %bb.aj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !4001
  br i1 %i.dk, label %._crit_edge38.i, label %.lr.ph37.i

.lr.ph37.i:                                       ; preds = %.preheader.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsj1iVQvtAHZj_5quote9___private9RepInterpNtCs7xemmV0rX3c_11proc_macro211TokenStreamEECscQ9YKgepC2A_12lance_derive.exit34.i
  %.sroa.04.0736.i = phi ptr [ %i.dr, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsj1iVQvtAHZj_5quote9___private9RepInterpNtCs7xemmV0rX3c_11proc_macro211TokenStreamEECscQ9YKgepC2A_12lance_derive.exit34.i ], [ %.sroa.6.0.i, %.preheader.i ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.04.0736.i, i64 8 ; 2 uses
  %.val26.i = load ptr, ptr %.sroa.04.0736.i, align 8, !noalias !3976 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4017
  invoke void @_RNvMCs7xemmV0rX3c_11proc_macro2NtB2_11TokenStream3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f)
          to label %.noexc31.i unwind label %.loopexit.i, !noalias !3976

.noexc31.i:                                       ; preds = %.lr.ph37.i
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private10push_ident(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 10)
          to label %bb.am unwind label %bb.al, !noalias !4018

bb.ak:                                            ; preds = %bb.av, %bb.al
  %.pn.i30.i = phi { ptr, i32 } [ %i.ds, %bb.al ], [ %i.dv, %bb.av ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro211TokenStreamECscQ9YKgepC2A_12lance_derive(ptr noalias noundef align 8 dereferenceable(32) %i.f) #27
          to label %.body.i unwind label %bb.ay, !noalias !4018

bb.al:                                            ; preds = %bb.ax, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %.noexc31.i
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.am:                                            ; preds = %.noexc31.i
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private11push_colon2(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %bb.an unwind label %bb.al, !noalias !4018

bb.an:                                            ; preds = %bb.am
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private10push_ident(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 8)
          to label %bb.ao unwind label %bb.al, !noalias !4018

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private11push_colon2(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %bb.ap unwind label %bb.al, !noalias !4018

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private10push_ident(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 10)
          to label %bb.aq unwind label %bb.al, !noalias !4018

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private11push_colon2(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %bb.ar unwind label %bb.al, !noalias !4018

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private10push_ident(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 21)
          to label %bb.as unwind label %bb.al, !noalias !4018

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4017
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4017
  invoke void @_RNvMCs7xemmV0rX3c_11proc_macro2NtB2_11TokenStream3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d)
          to label %bb.at unwind label %bb.al, !noalias !4018

bb.at:                                            ; preds = %bb.as
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val26.i) ]
  %i.dt = getelementptr inbounds nuw i8, ptr %.val26.i, i64 16
  %i.du = load i8, ptr %i.dt, align 8, !range !45, !alias.scope !4019, !noalias !4020, !noundef !40
  %.not.i.i.i.i = icmp eq i8 %i.du, -1
  br i1 %.not.i.i.i.i, label %_RNvXNtCsj1iVQvtAHZj_5quote9to_tokensRINtNtCscI6d9CVNmLh_4core6option6OptionNtCs7xemmV0rX3c_11proc_macro25IdentENtB2_8ToTokens9to_tokensCscQ9YKgepC2A_12lance_derive.exit.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  invoke void @_RNvXsq_NtCsj1iVQvtAHZj_5quote9to_tokensNtCs7xemmV0rX3c_11proc_macro25IdentNtB5_8ToTokens9to_tokens(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val26.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %_RNvXNtCsj1iVQvtAHZj_5quote9to_tokensRINtNtCscI6d9CVNmLh_4core6option6OptionNtCs7xemmV0rX3c_11proc_macro25IdentENtB2_8ToTokens9to_tokensCscQ9YKgepC2A_12lance_derive.exit.i.i unwind label %bb.av, !noalias !4018

bb.av:                                            ; preds = %bb.aw, %_RNvXNtCsj1iVQvtAHZj_5quote9to_tokensRINtNtCscI6d9CVNmLh_4core6option6OptionNtCs7xemmV0rX3c_11proc_macro25IdentENtB2_8ToTokens9to_tokensCscQ9YKgepC2A_12lance_derive.exit.i.i, %bb.au
  %i.dv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro211TokenStreamECscQ9YKgepC2A_12lance_derive(ptr noalias noundef align 8 dereferenceable(32) %i.d) #27
          to label %bb.ak unwind label %bb.ay, !noalias !4018

_RNvXNtCsj1iVQvtAHZj_5quote9to_tokensRINtNtCscI6d9CVNmLh_4core6option6OptionNtCs7xemmV0rX3c_11proc_macro25IdentENtB2_8ToTokens9to_tokensCscQ9YKgepC2A_12lance_derive.exit.i.i: ; preds = %bb.au, %bb.at
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private10push_comma(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %bb.aw unwind label %bb.av, !noalias !4018

bb.aw:                                            ; preds = %_RNvXNtCsj1iVQvtAHZj_5quote9to_tokensRINtNtCscI6d9CVNmLh_4core6option6OptionNtCs7xemmV0rX3c_11proc_macro25IdentENtB2_8ToTokens9to_tokensCscQ9YKgepC2A_12lance_derive.exit.i.i
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private10push_ident(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 9)
          to label %bb.ax unwind label %bb.av, !noalias !4018

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !4017
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4017
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private10push_group(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f, i8 noundef 0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
          to label %bb.az unwind label %bb.al, !noalias !4018

bb.ay:                                            ; preds = %bb.av, %bb.ak
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28, !noalias !4018
  unreachable

._crit_edge38.i:                                  ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsj1iVQvtAHZj_5quote9___private9RepInterpNtCs7xemmV0rX3c_11proc_macro211TokenStreamEECscQ9YKgepC2A_12lance_derive.exit34.i, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !4001
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false), !noalias !4001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !4001
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private10push_group(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.r, i8 noundef 1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.o)
          to label %bb.be unwind label %bb.y, !noalias !3976

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4017
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !4001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4017
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private8push_add(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %bb.bb unwind label %bb.ba, !noalias !3976

bb.ba:                                            ; preds = %bb.bb, %bb.az
  %i.dx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro211TokenStreamECscQ9YKgepC2A_12lance_derive(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %.body.i unwind label %bb.bd, !noalias !3976

bb.bb:                                            ; preds = %bb.az
  invoke void @_RNvXsu_NtCsj1iVQvtAHZj_5quote9to_tokensNtCs7xemmV0rX3c_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.m, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %bb.bc unwind label %bb.ba, !noalias !3976

bb.bc:                                            ; preds = %bb.bb
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro211TokenStreamECscQ9YKgepC2A_12lance_derive(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsj1iVQvtAHZj_5quote9___private9RepInterpNtCs7xemmV0rX3c_11proc_macro211TokenStreamEECscQ9YKgepC2A_12lance_derive.exit34.i unwind label %.loopexit.i, !noalias !3976

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsj1iVQvtAHZj_5quote9___private9RepInterpNtCs7xemmV0rX3c_11proc_macro211TokenStreamEECscQ9YKgepC2A_12lance_derive.exit34.i: ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !4001
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !4001
  %i.dy = icmp eq ptr %i.dr, %i.ch
  br i1 %i.dy, label %._crit_edge38.i, label %.lr.ph37.i

bb.bd:                                            ; preds = %bb.cs, %bb.cm, %.body38.i, %.loopexit21.i, %bb.bj, %bb.ba, %.body.i, %.loopexit9.i, %bb.x
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28, !noalias !3976
  unreachable

bb.be:                                            ; preds = %._crit_edge38.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !4001
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false), !noalias !3975
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !4001
  %i.ea = icmp eq i64 %.sroa.01.0.i, 0
  br i1 %i.ea, label %_RNCNvCscQ9YKgepC2A_12lance_derive19derive_deep_size_of0B3_.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.eb = shl nuw i64 %.sroa.01.0.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.i, i64 noundef %i.eb, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !3976
  br label %_RNCNvCscQ9YKgepC2A_12lance_derive19derive_deep_size_of0B3_.exit

bb.bg:                                            ; preds = %bb.bj, %bb.bh
  %.pn12.pn.i = phi { ptr, i32 } [ %.pn12.i, %bb.bj ], [ %i.ec, %bb.bh ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtCs7xemmV0rX3c_11proc_macro25IdentEECscQ9YKgepC2A_12lance_derive(ptr noalias noundef align 8 dereferenceable(24) %i.y) #27, !noalias !3976
  br label %common.resume.i

bb.bh:                                            ; preds = %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtCs7xemmV0rX3c_11proc_macro25IdentEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB2g_3ops5range5RangejENCNCNvCscQ9YKgepC2A_12lance_derive19derive_deep_size_of00EE9from_iterB3u_.exit.i
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bi:                                            ; preds = %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtCs7xemmV0rX3c_11proc_macro25IdentEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB2g_3ops5range5RangejENCNCNvCscQ9YKgepC2A_12lance_derive19derive_deep_size_of00EE9from_iterB3u_.exit.i
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private10push_ident(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.x, ptr noalias noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 4)
          to label %bb.bl unwind label %bb.bk, !noalias !3976

bb.bj:                                            ; preds = %.body38.i, %.loopexit21.i, %bb.bk
  %.pn12.i = phi { ptr, i32 } [ %i.ed, %bb.bk ], [ %.pn.i, %.body38.i ], [ %lpad.phi25.i, %.loopexit21.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro211TokenStreamECscQ9YKgepC2A_12lance_derive(ptr noalias noundef align 8 dereferenceable(32) %i.x) #27
          to label %bb.bg unwind label %bb.bd, !noalias !3976

bb.bk:                                            ; preds = %._crit_edge.i, %bb.bt, %bb.bs, %.loopexit47.i, %bb.bn, %bb.bm, %bb.bl, %bb.bi
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bl:                                            ; preds = %bb.bi
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private11push_colon2(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.x)
          to label %bb.bm unwind label %bb.bk, !noalias !3976

bb.bm:                                            ; preds = %bb.bl
  invoke void @_RNvXsq_NtCsj1iVQvtAHZj_5quote9to_tokensNtCs7xemmV0rX3c_11proc_macro25IdentNtB5_8ToTokens9to_tokens(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ae, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.x)
          to label %bb.bn unwind label %bb.bk, !noalias !3976

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !4001
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !4001
  invoke void @_RNvMCs7xemmV0rX3c_11proc_macro2NtB2_11TokenStream3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.v)
          to label %bb.bo unwind label %bb.bk, !noalias !3976

bb.bo:                                            ; preds = %bb.bn
  invoke void @_RNvXs0_NtCsj1iVQvtAHZj_5quote9___privateINtB5_11HasIteratorKb0_EINtNtNtCscI6d9CVNmLh_4core3ops3bit5BitOrIBD_Kb1_EE5bitor()
          to label %.preheader20.preheader.i unwind label %.loopexit.split-lp22.i, !noalias !3976

.preheader20.preheader.i:                         ; preds = %bb.bo
  %i.ee = icmp eq i64 %i.df, 0                    ; 3 uses
  br i1 %i.ee, label %.loopexit47.i, label %bb.bp

bb.bp:                                            ; preds = %.preheader20.preheader.i
  invoke void @_RNvXsq_NtCsj1iVQvtAHZj_5quote9to_tokensNtCs7xemmV0rX3c_11proc_macro25IdentNtB5_8ToTokens9to_tokens(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dd, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %.preheader20.i.preheader unwind label %.loopexit21.loopexit.split-lp.i, !noalias !3976

.preheader20.i.preheader:                         ; preds = %bb.bp
  %i.ef = icmp eq i64 %i.df, 1
  br i1 %i.ef, label %.loopexit47.i, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader20.i.preheader
  %.sroa.04.0.i37 = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  br label %bb.bq
end_hunk_0

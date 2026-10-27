Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_test_macros-8ee6405a26b8ec54.lance_test_macros.45dbbaa69f934603-cgu.0?download=true
inline.NumInlined: 1500
inline.NumDeleted: 499
begin_hunk_0_@_RINvNvNtNtCs50gxqRnCXtk_10proc_macro6bridge14selfless_reify31reify_to_extern_c_fn_hrt_bridge7wrapperNtNtB6_6buffer6BufferNCINvMsh_NtB6_6clientINtB24_6ClientTNtB8_11TokenStreamB2v_EB2v_E7expand2NvCs5ZQXtie4Wk1_17lance_test_macros4testE0EB37_:bb.a
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.bh, %bb.bg, %bb.bf, %bb.ax
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ew, %bb.bh ], [ %.pn.ph.i.i.i.i.i.i.i.i.i.i, %bb.bf ], [ %lpad.thr_comm.split-lp.i.i.i.i.i.i.i.i.i.i, %bb.ax ], [ %.pn.ph.i.i.i.i.i.i.i.i.i.i, %bb.bg ]
  invoke void @_RNvXNvNtNtNtCs50gxqRnCXtk_10proc_macro6bridge6client5state3setNtB2_13RestoreOnDropNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.x)
          to label %.thread.i.i.i.i.i unwind label %bb.bi, !noalias !3466

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvNtNtNtCs50gxqRnCXtk_10proc_macro6bridge6client5state3set13RestoreOnDropECs5ZQXtie4Wk1_17lance_test_macros.exit8.i.i.i.i.i.i: ; preds = %bb.be, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn5error5ErrorECs5ZQXtie4Wk1_17lance_test_macros.exit.i.i.i.i.i.i.i.i.i.i, %.noexc4.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ef, %.noexc4.i.i.i.i.i.i ], [ %i.ei, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn5error5ErrorECs5ZQXtie4Wk1_17lance_test_macros.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.ei, %bb.be ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !3466
  invoke void @_RNvXNvNtNtNtCs50gxqRnCXtk_10proc_macro6bridge6client5state3setNtB2_13RestoreOnDropNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.x)
          to label %bb.bk unwind label %bb.bj, !noalias !3459

bb.bi:                                            ; preds = %.body.i.i.i.i.i.i
  %i.ex = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #26, !noalias !3466
  unreachable

bb.bj:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvNtNtNtCs50gxqRnCXtk_10proc_macro6bridge6client5state3set13RestoreOnDropECs5ZQXtie4Wk1_17lance_test_macros.exit8.i.i.i.i.i.i
  %i.ey = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.thread.i.i.i.i.i

bb.bk:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvNtNtNtCs50gxqRnCXtk_10proc_macro6bridge6client5state3set13RestoreOnDropECs5ZQXtie4Wk1_17lance_test_macros.exit8.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !3466
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.z, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.511.0..sroa_idx.i.i.i.i.i, i64 40, i1 false), !noalias !3459
  call void @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop(ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ao) #24, !noalias !3459, !inline_history !3403
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ao, ptr noundef nonnull align 8 dereferenceable(40) %i.z, i64 40, i1 false), !noalias !3459
  store i64 0, ptr %i.as, align 8, !noalias !3459
  call void @llvm.experimental.noalias.scope.decl(metadata !3502)
  call void @llvm.experimental.noalias.scope.decl(metadata !3503)
  %i.ez = load i64, ptr %.sroa.56.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !3504, !noalias !3459, !noundef !38
  %i.fa = icmp eq i64 %i.ez, 0
  br i1 %i.fa, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3505
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %i.ao, i64 40, i1 false), !noalias !3459
  store ptr inttoptr (i64 1 to ptr), ptr %i.ao, align 8, !alias.scope !3504, !noalias !3459
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 0, i64 16, i1 false), !alias.scope !3504, !noalias !3459
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from7reserve, ptr %.sroa.67.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !3504, !noalias !3459
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop, ptr %.sroa.78.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !3504, !noalias !3459
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3505
  %i.fb = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.fc = load ptr, ptr %i.fb, align 8, !noalias !3505, !nonnull !38, !noundef !38
  call void %i.fc(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.g, ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.h, i64 noundef 1) #24, !noalias !3505, !inline_history !3408
  call void @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop(ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ao) #24, !noalias !3459, !inline_history !3409
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ao, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false), !noalias !3459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3505
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3505
  %.pre.i.i.i.i.i43.i.i = load i64, ptr %i.as, align 8, !alias.scope !3504, !noalias !3459
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.fd = phi i64 [ 0, %bb.bk ], [ %.pre.i.i.i.i.i43.i.i, %bb.bl ] ; 2 uses
  %i.fe = load ptr, ptr %i.ao, align 8, !alias.scope !3504, !noalias !3459, !noundef !38 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.fd
  store i8 0, ptr %i.ff, align 1, !noalias !3505
  %i.fg = add i64 %i.fd, 1                        ; 5 uses
  store i64 %i.fg, ptr %i.as, align 8, !alias.scope !3504, !noalias !3459
  call void @llvm.experimental.noalias.scope.decl(metadata !3506)
  %.not.i.i.i.i.i.i.i = icmp eq i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.experimental.noalias.scope.decl(metadata !3507)
  %i.fh = load i64, ptr %.sroa.56.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !3508, !noalias !3459, !noundef !38 ; 2 uses
  %i.fi = icmp eq i64 %i.fg, %i.fh
  br i1 %i.fi, label %bb.bo, label %bb.br

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3509
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.ao, i64 40, i1 false), !noalias !3459
  store ptr inttoptr (i64 1 to ptr), ptr %i.ao, align 8, !alias.scope !3508, !noalias !3459
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 0, i64 16, i1 false), !alias.scope !3508, !noalias !3459
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from7reserve, ptr %.sroa.67.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !3508, !noalias !3459
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop, ptr %.sroa.78.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !3508, !noalias !3459
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3509
  %i.fj = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.fk = load ptr, ptr %i.fj, align 8, !noalias !3509, !nonnull !38, !noundef !38
  call void %i.fk(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.e, ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.f, i64 noundef 1) #24, !noalias !3509, !inline_history !3414
  call void @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop(ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ao) #24, !noalias !3459, !inline_history !3415
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ao, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false), !noalias !3459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3509
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3509
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %i.as, align 8, !alias.scope !3508, !noalias !3459
  %.pre.i5.i.i.i.i.i.i = load i64, ptr %.sroa.56.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !3510, !noalias !3459
  %.pre.i.i.i.i42.i.i = load ptr, ptr %i.ao, align 8, !alias.scope !3508, !noalias !3459
  br label %bb.br

bb.bp:                                            ; preds = %bb.bm
  call void @llvm.experimental.noalias.scope.decl(metadata !3511)
  %i.fl = load i64, ptr %.sroa.56.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !3512, !noalias !3459, !noundef !38
  %i.fm = icmp eq i64 %i.fg, %i.fl
  br i1 %i.fm, label %bb.bq, label %_RNvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit7.i.i.i.i.i.i.i

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3513
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.ao, i64 40, i1 false), !noalias !3459
  store ptr inttoptr (i64 1 to ptr), ptr %i.ao, align 8, !alias.scope !3512, !noalias !3459
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 0, i64 16, i1 false), !alias.scope !3512, !noalias !3459
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from7reserve, ptr %.sroa.67.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !3512, !noalias !3459
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop, ptr %.sroa.78.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !3512, !noalias !3459
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3513
  %i.fn = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8, !noalias !3513, !nonnull !38, !noundef !38
  call void %i.fo(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.c, ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.d, i64 noundef 1) #24, !noalias !3513, !inline_history !3414
  call void @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop(ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ao) #24, !noalias !3459, !inline_history !3415
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ao, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !noalias !3459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3513
  %.pre.i6.i.i.i.i.i.i.i = load i64, ptr %i.as, align 8, !alias.scope !3512, !noalias !3459
  %.pre3.i.i.i.i.i.i = load ptr, ptr %i.ao, align 8, !alias.scope !3512, !noalias !3459
  br label %_RNvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit7.i.i.i.i.i.i.i

_RNvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit7.i.i.i.i.i.i.i: ; preds = %bb.bq, %bb.bp
  %i.fp = phi ptr [ %i.fe, %bb.bp ], [ %.pre3.i.i.i.i.i.i, %bb.bq ]
  %i.fq = phi i64 [ %i.fg, %bb.bp ], [ %.pre.i6.i.i.i.i.i.i.i, %bb.bq ] ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fq
  store i8 1, ptr %i.fr, align 1, !noalias !3513
  %i.fs = add i64 %i.fq, 1
  br label %bb.bw

bb.br:                                            ; preds = %bb.bo, %bb.bn
  %i.ft = phi ptr [ %i.fe, %bb.bn ], [ %.pre.i.i.i.i42.i.i, %bb.bo ] ; 2 uses
  %i.fu = phi i64 [ %i.fh, %bb.bn ], [ %.pre.i5.i.i.i.i.i.i, %bb.bo ]
  %i.fv = phi i64 [ %i.fg, %bb.bn ], [ %.pre.i.i.i.i.i.i.i.i, %bb.bo ] ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fv
  store i8 0, ptr %i.fw, align 1, !noalias !3509
  %i.fx = add i64 %i.fv, 1                        ; 3 uses
  store i64 %i.fx, ptr %i.as, align 8, !alias.scope !3508, !noalias !3459
  call void @llvm.experimental.noalias.scope.decl(metadata !3514)
  call void @llvm.experimental.noalias.scope.decl(metadata !3515)
  %i.fy = sub i64 %i.fu, %i.fx
  %i.fz = icmp ult i64 %i.fy, 4
  br i1 %i.fz, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3516
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.ao, i64 40, i1 false), !noalias !3459
  store ptr inttoptr (i64 1 to ptr), ptr %i.ao, align 8, !alias.scope !3510, !noalias !3459
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 0, i64 16, i1 false), !alias.scope !3510, !noalias !3459
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from7reserve, ptr %.sroa.67.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !3510, !noalias !3459
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop, ptr %.sroa.78.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !3510, !noalias !3459
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3516
  %i.ga = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.gb = load ptr, ptr %i.ga, align 8, !noalias !3516, !nonnull !38, !noundef !38
  call void %i.gb(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, i64 noundef 4) #24, !noalias !3516, !inline_history !3422
  call void @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop(ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ao) #24, !noalias !3459, !inline_history !3423
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ao, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !noalias !3459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3516
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3516
  %.pre.i.i.i.i.i.i.i.i.i = load i64, ptr %i.as, align 8, !alias.scope !3510, !noalias !3459
  %.pre1.i.i.i.i.i.i.i = load ptr, ptr %i.ao, align 8, !alias.scope !3510, !noalias !3459
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.gc = phi ptr [ %i.ft, %bb.br ], [ %.pre1.i.i.i.i.i.i.i, %bb.bs ]
  %i.gd = phi i64 [ %i.fx, %bb.br ], [ %.pre.i.i.i.i.i.i.i.i.i, %bb.bs ] ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gd
  store i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, ptr %i.ge, align 1, !noalias !3516
  %i.gf = add i64 %i.gd, 4
  br label %bb.bw

.thread.i.i.i.i.i:                                ; preds = %bb.bj, %.body.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.ey, %bb.bj ], [ %eh.lpad-body.i.i.i.i.i.i, %.body.i.i.i.i.i.i ]
  %.sroa.3.0..sroa.511.0..sroa_idx.i.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %.sroa.3.0.copyload.i.i.i = load ptr, ptr %.sroa.3.0..sroa.511.0..sroa_idx.i.i.sroa_idx.i.i.i, align 8, !noalias !3459, !nonnull !38, !noundef !38
  call void %.sroa.3.0.copyload.i.i.i(ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %.sroa.511.0..sroa_idx.i.i.i.i.i) #24, !noalias !3459, !inline_history !3424
  br label %.body.i.i

bb.bu:                                            ; preds = %.invoke.i.i, %.invoke87.i.i, %.noexc.i.i, %bb.a
  %i.gg = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.bu, %.thread.i.i.i.i.i, %bb.d
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.gg, %bb.bu ], [ %eh.lpad-body.i.i.i.i.i, %.thread.i.i.i.i.i ], [ %i.bi, %bb.d ]
  %i.gh = extractvalue { ptr, i32 } %eh.lpad-body.i.i, 0
  %i.gi = invoke { ptr, ptr } @_RNvNvNtCsgczF5crJ4sT_3std9panicking12catch_unwind7cleanup(ptr noundef %i.gh)
          to label %bb.bx unwind label %bb.bv, !noalias !3458 ; 2 uses

bb.bv:                                            ; preds = %.body.i.i
  %i.gj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() #26, !noalias !3458
  unreachable

bb.bw:                                            ; preds = %bb.bt, %_RNvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit7.i.i.i.i.i.i.i
  %.sink.i.i.i.i.i.i.i = phi i64 [ %i.gf, %bb.bt ], [ %i.fs, %_RNvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit7.i.i.i.i.i.i.i ]
  store i64 %.sink.i.i.i.i.i.i.i, ptr %i.as, align 8, !alias.scope !3517, !noalias !3459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !3459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %_RNvXNvNtCs50gxqRnCXtk_10proc_macro6bridges4_1__INtNtCscI6d9CVNmLh_4core6result6ResultuNtNtB4_3rpc12PanicMessageEINtB1o_6EncodeuE6encodeCs5ZQXtie4Wk1_17lance_test_macros.exit.i.i

bb.bx:                                            ; preds = %.body.i.i
  %i.gk = extractvalue { ptr, ptr } %i.gi, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gk) ]
  %i.gl = extractvalue { ptr, ptr } %i.gi, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gl) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !3458
  invoke void @_RNvXse_NtNtCs50gxqRnCXtk_10proc_macro6bridge3rpcNtB5_12PanicMessageINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB18_3any3AnyNtNtB18_6marker4SendEL_EE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.an, ptr noundef nonnull %i.gk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.gl)
          to label %bb.by unwind label %.critedge.body, !noalias !3458

_RNvXNvNtCs50gxqRnCXtk_10proc_macro6bridges4_1__INtNtCscI6d9CVNmLh_4core6result6ResultuNtNtB4_3rpc12PanicMessageEINtB1o_6EncodeuE6encodeCs5ZQXtie4Wk1_17lance_test_macros.exit.i.i: ; preds = %bb.cl, %bb.ck, %.thread.i.i.i.i, %_RNvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit8.i.i.i, %bb.bw
  invoke void @_RNvMs0_NtNtCs50gxqRnCXtk_10proc_macro6bridge6symbolNtB5_6Symbol14invalidate_all()
          to label %bb.cm unwind label %.critedge.body, !noalias !3458

bb.by:                                            ; preds = %bb.bx
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.an, align 8, !noalias !3458 ; 5 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !3458 ; 3 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %.sroa.5.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !3458 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !3458
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 19 uses
  store i64 0, ptr %i.gm, align 8, !noalias !3458
  call void @llvm.experimental.noalias.scope.decl(metadata !3518)
  %.not.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, -1
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 6 uses
  br i1 %.not.i.i.i, label %bb.cb, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @llvm.experimental.noalias.scope.decl(metadata !3519)
  %i.go = load i64, ptr %i.gn, align 8, !alias.scope !3520, !noalias !3458, !noundef !38
  %i.gp = icmp eq i64 %i.go, 0
  br i1 %i.gp, label %bb.ca, label %bb.cd

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !3521
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.am, ptr noundef nonnull align 8 dereferenceable(40) %i.ao, i64 40, i1 false), !noalias !3522
  store ptr inttoptr (i64 1 to ptr), ptr %i.ao, align 8, !alias.scope !3520, !noalias !3458
  %.sroa.6.0..sroa_idx.i.i36.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gm, i8 0, i64 16, i1 false), !alias.scope !3520, !noalias !3458
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from7reserve, ptr %.sroa.6.0..sroa_idx.i.i36.i.i, align 8, !alias.scope !3520, !noalias !3458
  %.sroa.7.0..sroa_idx.i.i37.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop, ptr %.sroa.7.0..sroa_idx.i.i37.i.i, align 8, !alias.scope !3520, !noalias !3458
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !3521
  %i.gq = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.gr = load ptr, ptr %i.gq, align 8, !noalias !3521, !nonnull !38, !noundef !38
  call void %i.gr(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.al, ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.am, i64 noundef 1) #24, !noalias !3521, !inline_history !3430
  call void @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop(ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ao) #24, !noalias !3522, !inline_history !3431
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ao, ptr noundef nonnull align 8 dereferenceable(40) %i.al, i64 40, i1 false), !noalias !3522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !3521
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !3521
  %.pre.i.i.i.i = load i64, ptr %i.gm, align 8, !alias.scope !3520, !noalias !3458
  br label %bb.cd

bb.cb:                                            ; preds = %bb.by
  call void @llvm.experimental.noalias.scope.decl(metadata !3523)
  %i.gs = load i64, ptr %i.gn, align 8, !alias.scope !3524, !noalias !3458, !noundef !38
  %i.gt = icmp eq i64 %i.gs, 0
  br i1 %i.gt, label %bb.cc, label %_RNvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit8.i.i.i

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !3525
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ak, ptr noundef nonnull align 8 dereferenceable(40) %i.ao, i64 40, i1 false), !noalias !3522
  store ptr inttoptr (i64 1 to ptr), ptr %i.ao, align 8, !alias.scope !3524, !noalias !3458
  %.sroa.6.0..sroa_idx.i5.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gm, i8 0, i64 16, i1 false), !alias.scope !3524, !noalias !3458
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from7reserve, ptr %.sroa.6.0..sroa_idx.i5.i.i.i, align 8, !alias.scope !3524, !noalias !3458
  %.sroa.7.0..sroa_idx.i6.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop, ptr %.sroa.7.0..sroa_idx.i6.i.i.i, align 8, !alias.scope !3524, !noalias !3458
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !3525
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.gv = load ptr, ptr %i.gu, align 8, !noalias !3525, !nonnull !38, !noundef !38
  call void %i.gv(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.aj, ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ak, i64 noundef 1) #24, !noalias !3525, !inline_history !3430
  call void @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop(ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ao) #24, !noalias !3522, !inline_history !3431
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ao, ptr noundef nonnull align 8 dereferenceable(40) %i.aj, i64 40, i1 false), !noalias !3522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !3525
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !3525
  %.pre.i7.i.i.i = load i64, ptr %i.gm, align 8, !alias.scope !3524, !noalias !3458
  br label %_RNvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit8.i.i.i

_RNvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit8.i.i.i: ; preds = %bb.cc, %bb.cb
  %i.gw = phi i64 [ 0, %bb.cb ], [ %.pre.i7.i.i.i, %bb.cc ] ; 2 uses
  %i.gx = load ptr, ptr %i.ao, align 8, !alias.scope !3524, !noalias !3458, !noundef !38
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.gw
  store i8 0, ptr %i.gy, align 1, !noalias !3525
  %i.gz = add i64 %i.gw, 1
  store i64 %i.gz, ptr %i.gm, align 8, !alias.scope !3524, !noalias !3458
  br label %_RNvXNvNtCs50gxqRnCXtk_10proc_macro6bridges4_1__INtNtCscI6d9CVNmLh_4core6result6ResultuNtNtB4_3rpc12PanicMessageEINtB1o_6EncodeuE6encodeCs5ZQXtie4Wk1_17lance_test_macros.exit.i.i

bb.cd:                                            ; preds = %bb.ca, %bb.bz
  %i.ha = phi i64 [ 0, %bb.bz ], [ %.pre.i.i.i.i, %bb.ca ] ; 2 uses
  %i.hb = load ptr, ptr %i.ao, align 8, !alias.scope !3520, !noalias !3458, !noundef !38 ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.ha
  store i8 1, ptr %i.hc, align 1, !noalias !3521
  %i.hd = add i64 %i.ha, 1                        ; 5 uses
  store i64 %i.hd, ptr %i.gm, align 8, !alias.scope !3520, !noalias !3458
  call void @llvm.experimental.noalias.scope.decl(metadata !3526)
  %i.he = icmp ne i64 %.sroa.0.0.copyload.i.i, -9223372036854775807
  call void @llvm.assume(i1 %i.he)
  %i.hf = icmp eq i64 %.sroa.0.0.copyload.i.i, -9223372036854775806
  br i1 %i.hf, label %bb.ci, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3527)
  %i.hg = load i64, ptr %i.gn, align 8, !alias.scope !3528, !noalias !3458, !noundef !38 ; 2 uses
  %i.hh = icmp eq i64 %i.hd, %i.hg
  br i1 %i.hh, label %bb.cf, label %_RNvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit.i.i.i.i.i

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !3529
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ai, ptr noundef nonnull align 8 dereferenceable(40) %i.ao, i64 40, i1 false), !noalias !3530
  store ptr inttoptr (i64 1 to ptr), ptr %i.ao, align 8, !alias.scope !3528, !noalias !3458
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gm, i8 0, i64 16, i1 false), !alias.scope !3528, !noalias !3458
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from7reserve, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !3528, !noalias !3458
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !3528, !noalias !3458
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !3529
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.hj = load ptr, ptr %i.hi, align 8, !noalias !3529, !nonnull !38, !noundef !38
  call void %i.hj(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ah, ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ai, i64 noundef 1) #24, !noalias !3529, !inline_history !3442
  call void @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop(ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ao) #24, !noalias !3530, !inline_history !3443
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ao, ptr noundef nonnull align 8 dereferenceable(40) %i.ah, i64 40, i1 false), !noalias !3530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !3529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !3529
  %.pre.i.i.i.i.i.i = load i64, ptr %i.gm, align 8, !alias.scope !3528, !noalias !3458
  %.pre.i.i.i.i.i = load i64, ptr %i.gn, align 8, !alias.scope !3531, !noalias !3458
  %.pre.i.i.i = load ptr, ptr %i.ao, align 8, !alias.scope !3528, !noalias !3458
  br label %_RNvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit.i.i.i.i.i

_RNvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit.i.i.i.i.i: ; preds = %bb.cf, %bb.ce
  %i.hk = phi ptr [ %i.hb, %bb.ce ], [ %.pre.i.i.i, %bb.cf ] ; 2 uses
  %i.hl = phi i64 [ %i.hg, %bb.ce ], [ %.pre.i.i.i.i.i, %bb.cf ] ; 2 uses
  %i.hm = phi i64 [ %i.hd, %bb.ce ], [ %.pre.i.i.i.i.i.i, %bb.cf ] ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.hm
  store i8 0, ptr %i.hn, align 1, !noalias !3529
  %i.ho = add i64 %i.hm, 1                        ; 3 uses
  store i64 %i.ho, ptr %i.gm, align 8, !alias.scope !3528, !noalias !3458
  call void @llvm.experimental.noalias.scope.decl(metadata !3532)
  call void @llvm.experimental.noalias.scope.decl(metadata !3533)
  %i.hp = sub i64 %i.hl, %i.ho
  %i.hq = icmp ult i64 %i.hp, 8
  br i1 %i.hq, label %bb.cg, label %_RINvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB6_6Buffer17extend_from_arrayKj8_ECs5ZQXtie4Wk1_17lance_test_macros.exit.i.i.i.i.i.i

bb.cg:                                            ; preds = %_RNvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !3534
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ag, ptr noundef nonnull align 8 dereferenceable(40) %i.ao, i64 40, i1 false), !noalias !3535
  store ptr inttoptr (i64 1 to ptr), ptr %i.ao, align 8, !alias.scope !3531, !noalias !3458
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gm, i8 0, i64 16, i1 false), !alias.scope !3531, !noalias !3458
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from7reserve, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !3531, !noalias !3458
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !3531, !noalias !3458
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !3534
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.hs = load ptr, ptr %i.hr, align 8, !noalias !3534, !nonnull !38, !noundef !38
  call void %i.hs(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.af, ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ag, i64 noundef 8) #24, !noalias !3534, !inline_history !3449
  call void @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop(ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ao) #24, !noalias !3535, !inline_history !3450
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ao, ptr noundef nonnull align 8 dereferenceable(40) %i.af, i64 40, i1 false), !noalias !3535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !3534
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !3534
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.gm, align 8, !alias.scope !3531, !noalias !3458
  %.pre.i5.i.i.i.i.i = load i64, ptr %i.gn, align 8, !alias.scope !3536, !noalias !3458
  %.pre3.i.i.i.i.i = load ptr, ptr %i.ao, align 8, !alias.scope !3531, !noalias !3458
  br label %_RINvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB6_6Buffer17extend_from_arrayKj8_ECs5ZQXtie4Wk1_17lance_test_macros.exit.i.i.i.i.i.i

_RINvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB6_6Buffer17extend_from_arrayKj8_ECs5ZQXtie4Wk1_17lance_test_macros.exit.i.i.i.i.i.i: ; preds = %bb.cg, %_RNvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit.i.i.i.i.i
  %i.ht = phi ptr [ %i.hk, %_RNvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit.i.i.i.i.i ], [ %.pre3.i.i.i.i.i, %bb.cg ] ; 2 uses
  %i.hu = phi i64 [ %i.hl, %_RNvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit.i.i.i.i.i ], [ %.pre.i5.i.i.i.i.i, %bb.cg ]
  %i.hv = phi i64 [ %i.ho, %_RNvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i, %bb.cg ] ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.hv
  store i64 %.sroa.5.sroa.4.0.copyload.i.i, ptr %i.hw, align 1, !noalias !3534
  %i.hx = add i64 %i.hv, 8                        ; 3 uses
  store i64 %i.hx, ptr %i.gm, align 8, !alias.scope !3531, !noalias !3458
  call void @llvm.experimental.noalias.scope.decl(metadata !3537)
  %i.hy = sub i64 %i.hu, %i.hx
  %i.hz = icmp ugt i64 %.sroa.5.sroa.4.0.copyload.i.i, %i.hy
  br i1 %i.hz, label %bb.ch, label %bb.ck

bb.ch:                                            ; preds = %_RINvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB6_6Buffer17extend_from_arrayKj8_ECs5ZQXtie4Wk1_17lance_test_macros.exit.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !3538
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ae, ptr noundef nonnull align 8 dereferenceable(40) %i.ao, i64 40, i1 false), !noalias !3539
  store ptr inttoptr (i64 1 to ptr), ptr %i.ao, align 8, !alias.scope !3536, !noalias !3458
  %.sroa.6.0..sroa_idx.i1.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gm, i8 0, i64 16, i1 false), !alias.scope !3536, !noalias !3458
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from7reserve, ptr %.sroa.6.0..sroa_idx.i1.i.i.i.i.i.i, align 8, !alias.scope !3536, !noalias !3458
  %.sroa.7.0..sroa_idx.i2.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop, ptr %.sroa.7.0..sroa_idx.i2.i.i.i.i.i.i, align 8, !alias.scope !3536, !noalias !3458
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !3538
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ib = load ptr, ptr %i.ia, align 8, !noalias !3538, !nonnull !38, !noundef !38
  call void %i.ib(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ad, ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ae, i64 noundef range(i64 0, -9223372036854775808) %.sroa.5.sroa.4.0.copyload.i.i) #24, !noalias !3538, !inline_history !3454
  call void @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop(ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ao) #24, !noalias !3539, !inline_history !3450
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ao, ptr noundef nonnull align 8 dereferenceable(40) %i.ad, i64 40, i1 false), !noalias !3539
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !3538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !3538
  %.pre.i3.i.i.i.i.i.i = load i64, ptr %i.gm, align 8, !alias.scope !3536, !noalias !3458
  %.pre1.i.i.i.i.i.i = load ptr, ptr %i.ao, align 8, !alias.scope !3536, !noalias !3458
  br label %bb.ck

bb.ci:                                            ; preds = %bb.cd
  call void @llvm.experimental.noalias.scope.decl(metadata !3540)
  call void @llvm.experimental.noalias.scope.decl(metadata !3541)
  %i.ic = load i64, ptr %i.gn, align 8, !alias.scope !3542, !noalias !3458, !noundef !38
  %i.id = icmp eq i64 %i.hd, %i.ic
end_hunk_0
begin_hunk_1_@_RNvCs5ZQXtie4Wk1_17lance_test_macros14expand_wrapper:bb.a

bb.lz:                                            ; preds = %bb.lx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private10push_group(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.az, i8 noundef 1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.av)
          to label %bb.ma unwind label %bb.lb

bb.ma:                                            ; preds = %bb.lz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef nonnull align 8 dereferenceable(32) %i.az, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private10push_group(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bf, i8 noundef 1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ba)
          to label %bb.mb unwind label %bb.kl

bb.mb:                                            ; preds = %bb.ma
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private10push_ident(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bf, ptr noalias noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 3)
          to label %bb.mc unwind label %bb.kl

bb.mc:                                            ; preds = %bb.mb
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private10push_ident(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bf, ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 6)
          to label %bb.md unwind label %bb.kl

bb.md:                                            ; preds = %bb.mc
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private7push_eq(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bf)
          to label %bb.me unwind label %bb.kl

bb.me:                                            ; preds = %bb.md
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private10push_ident(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bf, ptr noalias noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 4)
          to label %bb.mf unwind label %bb.kl

bb.mf:                                            ; preds = %bb.me
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private11push_colon2(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bf)
          to label %bb.mg unwind label %bb.kl

bb.mg:                                            ; preds = %bb.mf
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private10push_ident(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bf, ptr noalias noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 4)
          to label %bb.mh unwind label %bb.kl

bb.mh:                                            ; preds = %bb.mg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  invoke void @_RNvMCs7xemmV0rX3c_11proc_macro2NtB2_11TokenStream3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.at)
          to label %bb.mi unwind label %bb.kl

bb.mi:                                            ; preds = %bb.mh
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private10push_group(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bf, i8 noundef 0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.at)
          to label %bb.mj unwind label %bb.kl

bb.mj:                                            ; preds = %bb.mi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private9push_semi(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bf)
          to label %bb.mk unwind label %bb.kl

bb.mk:                                            ; preds = %bb.mj
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private10push_ident(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bf, ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 9)
          to label %bb.ml unwind label %bb.kl

bb.ml:                                            ; preds = %bb.mk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  invoke void @_RNvMCs7xemmV0rX3c_11proc_macro2NtB2_11TokenStream3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ar)
          to label %bb.mm unwind label %bb.kl

.loopexit.split-lp107:                            ; preds = %.noexc56, %bb.mp, %bb.mo
  %lpad.loopexit.split-lp108 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro211TokenStreamECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(32) %i.ar) #25
          to label %bb.kk unwind label %bb.al

bb.mm:                                            ; preds = %bb.ml
  %i.fw = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.val.i43 = load ptr, ptr %i.fw, align 8, !alias.scope !3651, !nonnull !38, !noundef !38 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %.val1.i44 = load i64, ptr %i.fx, align 8, !alias.scope !3651, !noundef !38
  %i.fy = getelementptr inbounds nuw [40 x i8], ptr %.val.i43, i64 %.val1.i44 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.ga = load ptr, ptr %i.fz, align 8, !alias.scope !3652, !align !37, !noundef !38
  br label %_RNvXs_NtNtCsb2PI9uRnNxu_3syn10punctuated8printingINtB6_4PairRNtCs7xemmV0rX3c_11proc_macro211TokenStreamRNtNtB8_5token5CommaENtNtCsj1iVQvtAHZj_5quote9to_tokens8ToTokens9to_tokensCs5ZQXtie4Wk1_17lance_test_macros.exit.i.outer

_RNvXs_NtNtCsb2PI9uRnNxu_3syn10punctuated8printingINtB6_4PairRNtCs7xemmV0rX3c_11proc_macro211TokenStreamRNtNtB8_5token5CommaENtNtCsj1iVQvtAHZj_5quote9to_tokens8ToTokens9to_tokensCs5ZQXtie4Wk1_17lance_test_macros.exit.i.outer: ; preds = %bb.mo, %bb.mm
  %.sroa.4.0.i50.ph = phi ptr [ null, %bb.mo ], [ %i.ga, %bb.mm ] ; 2 uses
  %.sroa.0.0.i51.ph = phi ptr [ %i.fy, %bb.mo ], [ %.val.i43, %bb.mm ]
  br label %_RNvXs_NtNtCsb2PI9uRnNxu_3syn10punctuated8printingINtB6_4PairRNtCs7xemmV0rX3c_11proc_macro211TokenStreamRNtNtB8_5token5CommaENtNtCsj1iVQvtAHZj_5quote9to_tokens8ToTokens9to_tokensCs5ZQXtie4Wk1_17lance_test_macros.exit.i

_RNvXs_NtNtCsb2PI9uRnNxu_3syn10punctuated8printingINtB6_4PairRNtCs7xemmV0rX3c_11proc_macro211TokenStreamRNtNtB8_5token5CommaENtNtCsj1iVQvtAHZj_5quote9to_tokens8ToTokens9to_tokensCs5ZQXtie4Wk1_17lance_test_macros.exit.i: ; preds = %_RNvXs_NtNtCsb2PI9uRnNxu_3syn10punctuated8printingINtB6_4PairRNtCs7xemmV0rX3c_11proc_macro211TokenStreamRNtNtB8_5token5CommaENtNtCsj1iVQvtAHZj_5quote9to_tokens8ToTokens9to_tokensCs5ZQXtie4Wk1_17lance_test_macros.exit.i.outer, %.noexc56
  %.sroa.0.0.i51 = phi ptr [ %i.gd, %.noexc56 ], [ %.sroa.0.0.i51.ph, %_RNvXs_NtNtCsb2PI9uRnNxu_3syn10punctuated8printingINtB6_4PairRNtCs7xemmV0rX3c_11proc_macro211TokenStreamRNtNtB8_5token5CommaENtNtCsj1iVQvtAHZj_5quote9to_tokens8ToTokens9to_tokensCs5ZQXtie4Wk1_17lance_test_macros.exit.i.outer ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i51) ]
  %i.gb = icmp eq ptr %.sroa.0.0.i51, %i.fy
  br i1 %i.gb, label %bb.mn, label %bb.mp

bb.mn:                                            ; preds = %_RNvXs_NtNtCsb2PI9uRnNxu_3syn10punctuated8printingINtB6_4PairRNtCs7xemmV0rX3c_11proc_macro211TokenStreamRNtNtB8_5token5CommaENtNtCsj1iVQvtAHZj_5quote9to_tokens8ToTokens9to_tokensCs5ZQXtie4Wk1_17lance_test_macros.exit.i
  %.not.i.i.i.i.i54 = icmp eq ptr %.sroa.4.0.i50.ph, null
  br i1 %.not.i.i.i.i.i54, label %_RINvNvXNtCsj1iVQvtAHZj_5quote3extNtCs7xemmV0rX3c_11proc_macro211TokenStreamNtB5_14TokenStreamExt10append_all13do_append_allINtNtCsb2PI9uRnNxu_3syn10punctuated5PairsBv_NtNtB22_5token5CommaEECs5ZQXtie4Wk1_17lance_test_macros.exit, label %bb.mo

bb.mo:                                            ; preds = %bb.mn
  invoke void @_RNvXsu_NtCsj1iVQvtAHZj_5quote9to_tokensNtCs7xemmV0rX3c_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.4.0.i50.ph, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ar)
          to label %_RNvXs_NtNtCsb2PI9uRnNxu_3syn10punctuated8printingINtB6_4PairRNtCs7xemmV0rX3c_11proc_macro211TokenStreamRNtNtB8_5token5CommaENtNtCsj1iVQvtAHZj_5quote9to_tokens8ToTokens9to_tokensCs5ZQXtie4Wk1_17lance_test_macros.exit.i.outer unwind label %.loopexit.split-lp107

bb.mp:                                            ; preds = %_RNvXs_NtNtCsb2PI9uRnNxu_3syn10punctuated8printingINtB6_4PairRNtCs7xemmV0rX3c_11proc_macro211TokenStreamRNtNtB8_5token5CommaENtNtCsj1iVQvtAHZj_5quote9to_tokens8ToTokens9to_tokensCs5ZQXtie4Wk1_17lance_test_macros.exit.i
  invoke void @_RNvXsu_NtCsj1iVQvtAHZj_5quote9to_tokensNtCs7xemmV0rX3c_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i51, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ar)
          to label %.noexc56 unwind label %.loopexit.split-lp107

.noexc56:                                         ; preds = %bb.mp
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i51, i64 32
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i51, i64 40
  invoke void @_RNvXsas_NtCsb2PI9uRnNxu_3syn5tokenNtB6_5CommaNtNtCsj1iVQvtAHZj_5quote9to_tokens8ToTokens9to_tokens(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.gc, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ar)
          to label %_RNvXs_NtNtCsb2PI9uRnNxu_3syn10punctuated8printingINtB6_4PairRNtCs7xemmV0rX3c_11proc_macro211TokenStreamRNtNtB8_5token5CommaENtNtCsj1iVQvtAHZj_5quote9to_tokens8ToTokens9to_tokensCs5ZQXtie4Wk1_17lance_test_macros.exit.i unwind label %.loopexit.split-lp107

_RINvNvXNtCsj1iVQvtAHZj_5quote3extNtCs7xemmV0rX3c_11proc_macro211TokenStreamNtB5_14TokenStreamExt10append_all13do_append_allINtNtCsb2PI9uRnNxu_3syn10punctuated5PairsBv_NtNtB22_5token5CommaEECs5ZQXtie4Wk1_17lance_test_macros.exit: ; preds = %bb.mn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %i.ar, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private10push_group(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bf, i8 noundef 0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.as)
          to label %bb.mq unwind label %bb.kl

bb.mq:                                            ; preds = %_RINvNvXNtCsj1iVQvtAHZj_5quote3extNtCs7xemmV0rX3c_11proc_macro211TokenStreamNtB5_14TokenStreamExt10append_all13do_append_allINtNtCsb2PI9uRnNxu_3syn10punctuated5PairsBv_NtNtB22_5token5CommaEECs5ZQXtie4Wk1_17lance_test_macros.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  invoke void @_RNvXsu_NtCsj1iVQvtAHZj_5quote9to_tokensNtCs7xemmV0rX3c_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.br, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bf)
          to label %bb.mr unwind label %bb.kl

bb.mr:                                            ; preds = %bb.mq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private10push_group(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bl, i8 noundef 1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.bg)
          to label %bb.ms unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ms:                                            ; preds = %bb.mr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bl, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro211TokenStreamECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(32) %i.bm)
          to label %bb.mt unwind label %bb.jn

bb.mt:                                            ; preds = %bb.ms
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro211TokenStreamECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(32) %i.bo)
          to label %bb.mu unwind label %bb.aq

bb.mu:                                            ; preds = %bb.mt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsb2PI9uRnNxu_3syn10punctuated10PunctuatedNtCs7xemmV0rX3c_11proc_macro211TokenStreamNtNtBG_5token5CommaEECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(32) %i.bp)
          to label %bb.mv unwind label %bb.am

bb.mv:                                            ; preds = %bb.mu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro211TokenStreamECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(32) %i.br)
          to label %bb.mw unwind label %bb.e

bb.mw:                                            ; preds = %bb.mv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4item6ItemFnECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(352) %2)
          to label %bb.mz unwind label %bb.my

bb.mx:                                            ; preds = %bb.my, %bb.d
  %.pn18 = phi { ptr, i32 } [ %i.ge, %bb.my ], [ %.pn16, %bb.d ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro211TokenStreamECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(32) %1) #25
          to label %bb.na unwind label %bb.al

bb.my:                                            ; preds = %bb.mw
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.mx

bb.mz:                                            ; preds = %bb.mw
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro211TokenStreamECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(32) %1)
  ret void

bb.na:                                            ; preds = %bb.mx
  resume { ptr, i32 } %.pn18
}

; Function Attrs: cold noinline nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecTNtCs7xemmV0rX3c_11proc_macro211TokenStreamNtNtCsb2PI9uRnNxu_3syn5token5CommaEE8grow_oneCs5ZQXtie4Wk1_17lance_test_macros(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !46, !noundef !38
  %i.b = tail call fastcc { i64, i64 } @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(16) %0, i64 noundef %i.a) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0        ; 2 uses
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !78

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.b, 1
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %i.c, i64 %i.d) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs5ZQXtie4Wk1_17lance_test_macros(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef range(i64 0, -1) %1) unnamed_addr #3 {
bb.a:
  %i.a = mul nuw nsw i64 %1, 40                   ; 4 uses
  %or.cond.not = icmp ugt i64 %1, 230584300921369395
  br i1 %or.cond.not, label %bb.f, label %bb.b, !prof !3653

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %.0.val, 0
  br i1 %i.b, label %bb.c, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator4grow.exit

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %2 = mul nuw i64 %.0.val, 40
  %i.c = icmp uge i64 %1, %.0.val
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %2, i64 noundef 8, i64 noundef range(i64 0, 9223372036854775801) %i.a) #24
  br label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq i64 %1, 0
  br i1 %i.e, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24
  %i.f = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9223372036854775801) %i.a, i64 noundef 8) #24
  br label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.d, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator4grow.exit ], [ %i.f, %bb.d ] ; 2 uses
  %i.g = icmp eq ptr %.pn8, null
  br i1 %i.g, label %bb.e, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread

bb.e:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 8, ptr %i.h, align 8
  br label %bb.f

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %.pn8, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit ], [ inttoptr (i64 8 to ptr), %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.i, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread
  %.sink12 = phi i64 [ 16, %bb.e ], [ 16, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread ], [ 8, %bb.a ]
  %.sink = phi i64 [ %i.a, %bb.e ], [ %i.a, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread ], [ 0, %bb.a ]
  %storemerge13 = phi i64 [ 1, %bb.e ], [ 0, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread ], [ 1, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %.sink12
  store i64 %.sink, ptr %i.j, align 8
  store i64 %storemerge13, ptr %0, align 8
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs5ZQXtie4Wk1_17lance_test_macros(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = add nuw i64 %1, 1
  %i.c = load i64, ptr %0, align 8, !range !46, !noundef !38 ; 2 uses
  %i.d = shl nuw i64 %i.c, 1
  %.sroa.0.0.i = tail call noundef range(i64 0, -1) i64 @llvm.umax.i64(i64 range(i64 0, -1) %i.b, i64 range(i64 0, -1) %i.d)
  %.sroa.0.0.i14 = tail call noundef range(i64 0, -1) i64 @llvm.umax.i64(i64 range(i64 0, -1) %.sroa.0.0.i, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13 = load ptr, ptr %i.e, align 8
  call fastcc void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.c, ptr %.val13, i64 noundef %.sroa.0.0.i14)
  %i.f = load i64, ptr %i.a, align 8, !range !59, !noundef !38
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.c, label %bb.d

bb.b:                                             ; preds = %bb.c, %bb.d
  %.sroa.5.0 = phi i64 [ undef, %bb.d ], [ %i.m, %bb.c ]
  %.sroa.0.0 = phi i64 [ -1, %bb.d ], [ %i.k, %bb.c ]
  %i.i = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.j = insertvalue { i64, i64 } %i.i, i64 %.sroa.5.0, 1
  ret { i64, i64 } %i.j

bb.c:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8, !range !3654, !noundef !38
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load i64, ptr %i.l, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.h, align 8, !nonnull !38, !noundef !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.n, ptr %i.e, align 8
  %i.o = icmp sgt i64 %.sroa.0.0.i14, -1
  tail call void @llvm.assume(i1 %i.o)
  store i64 %.sroa.0.0.i14, ptr %0, align 8
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvXsA_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaEINtB5_9IterTraitBU_E9clone_boxCs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load <2 x ptr>, ptr %0, align 8, !alias.scope !3659
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2.i = load ptr, ptr %i.b, align 8, !alias.scope !3659, !align !37, !noundef !38
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !3660
  %i.c = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9223372036854775801) 24, i64 noundef 8) #24, !noalias !3660 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit, !prof !79

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #27, !noalias !3660
  unreachable

_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store <2 x ptr> %i.a, ptr %i.c, align 8
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.val2.i, ptr %.sroa.33.0..sroa_idx, align 8
  %i.e = insertvalue { ptr, ptr } poison, ptr %i.c, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr @66, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal noundef align 8 ptr @_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !3669, !nonnull !38, !noundef !38 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !3669, !nonnull !38, !noundef !38
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterTNtNtCsb2PI9uRnNxu_3syn4item5FnArgNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros.exit

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterTNtNtCsb2PI9uRnNxu_3syn4item5FnArgNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store ptr %i.e, ptr %0, align 8, !alias.scope !3669
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsb2PI9uRnNxu_3syn4item5FnArgE7or_elseNCNvXsw_NtBN_10punctuatedINtB1x_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECs5ZQXtie4Wk1_17lance_test_macros.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !3670, !align !37, !noundef !38
  store ptr null, ptr %i.f, align 8, !alias.scope !3670
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsb2PI9uRnNxu_3syn4item5FnArgE7or_elseNCNvXsw_NtBN_10punctuatedINtB1x_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECs5ZQXtie4Wk1_17lance_test_macros.exit

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsb2PI9uRnNxu_3syn4item5FnArgE7or_elseNCNvXsw_NtBN_10punctuatedINtB1x_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits8iterator8Iterator4nexts_0ECs5ZQXtie4Wk1_17lance_test_macros.exit: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterTNtNtCsb2PI9uRnNxu_3syn4item5FnArgNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros.exit, %bb.b
  %.sroa.0.0.i1 = phi ptr [ %i.g, %bb.b ], [ %i.a, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterTNtNtCsb2PI9uRnNxu_3syn4item5FnArgNtNtBU_5token5CommaEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros.exit ]
  ret ptr %.sroa.0.0.i1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal noundef align 8 ptr @_RNvXsx_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs5ZQXtie4Wk1_17lance_test_macros(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !3679, !align !37, !noundef !38 ; 2 uses
  store ptr null, ptr %i.a, align 8, !alias.scope !3679
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsb2PI9uRnNxu_3syn4item5FnArgE7or_elseNCNvXsx_NtBN_10punctuatedINtB1x_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECs5ZQXtie4Wk1_17lance_test_macros.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !3680, !nonnull !38, !noundef !38 ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !alias.scope !3680, !nonnull !38, !noundef !38
  %i.f = icmp eq ptr %i.e, %i.d
  br i1 %i.f, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsb2PI9uRnNxu_3syn4item5FnArgE7or_elseNCNvXsx_NtBN_10punctuatedINtB1x_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECs5ZQXtie4Wk1_17lance_test_macros.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -104 ; 2 uses
  store ptr %i.g, ptr %i.c, align 8, !alias.scope !3680
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsb2PI9uRnNxu_3syn4item5FnArgE7or_elseNCNvXsx_NtBN_10punctuatedINtB1x_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECs5ZQXtie4Wk1_17lance_test_macros.exit

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsb2PI9uRnNxu_3syn4item5FnArgE7or_elseNCNvXsx_NtBN_10punctuatedINtB1x_11PrivateIterBJ_NtNtBN_5token5CommaENtNtNtNtB5_4iter6traits12double_ended19DoubleEndedIterator9next_back0ECs5ZQXtie4Wk1_17lance_test_macros.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.b, %bb.a ], [ %i.g, %bb.c ], [ null, %bb.b ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i64 0, 177372539170284152) i64 @_RNvXsy_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits10exact_size17ExactSizeIterator3lenCs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !3683, !nonnull !38, !noundef !38
  %i.c = load ptr, ptr %0, align 8, !alias.scope !3683, !nonnull !38, !noundef !38
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 104
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.h, align 8, !align !37, !noundef !38
  %i.i = icmp ne ptr %.val, null
  %i.j = zext i1 %i.i to i64
  %i.k = add nuw nsw i64 %i.g, %i.j
  ret i64 %i.k
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvYINtNtCsb2PI9uRnNxu_3syn10punctuated11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits10exact_size17ExactSizeIterator8is_emptyCs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !3688, !nonnull !38, !noundef !38
  %i.c = load ptr, ptr %0, align 8, !alias.scope !3688, !nonnull !38, !noundef !38
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 104
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.h, align 8, !alias.scope !3689, !align !37, !noundef !38
  %i.i = icmp ne ptr %.val.i, null
  %i.j = zext i1 %i.i to i64
  %i.k = or i64 %i.g, %i.j
  %i.l = icmp eq i64 %i.k, 0
  ret i1 %i.l
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal noundef i64 @_RNvYINtNtCsb2PI9uRnNxu_3syn10punctuated11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs5ZQXtie4Wk1_17lance_test_macros(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

end_hunk_1

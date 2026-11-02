Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/storage-25fd2993824800e1.storage.c24d9f59ecb05c11-cgu.003?download=true
inline.NumInlined: 14484
inline.NumDeleted: 4641
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNCINvMNtNtCsjZG7hsAZr3B_5tokio2fs12open_optionsNtB5_11OpenOptions4openRNtNtCsG258MDvU3F_3std4path7PathBufE0CsgGgPqgSfnMH_7storage:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !18713
  store i8 1, ptr %i.bo, align 8, !noalias !18713
  br label %bb.ag

bb.ab:                                            ; preds = %bb.z
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultIBC_NtNtCsG258MDvU3F_3std2fs4FileNtNtNtB4_2io5error5ErrorENtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task5error9JoinErrorEECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #23
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std2fs4FileNtNtNtB4_2io5error5ErrorEEECsgGgPqgSfnMH_7storage.exit.i.i.i unwind label %bb.ac, !noalias !18714

bb.ac:                                            ; preds = %bb.ab, %bb.v
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !18714
  unreachable

bb.ad:                                            ; preds = %bb.t, %bb.s
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.ad, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std2fs4FileNtNtNtB4_2io5error5ErrorEEECsgGgPqgSfnMH_7storage.exit.i.i.i
  %i.ch = phi ptr [ %i.s, %bb.ad ], [ %i.be, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std2fs4FileNtNtNtB4_2io5error5ErrorEEECsgGgPqgSfnMH_7storage.exit.i.i.i ]
  %i.ci = phi ptr [ %i.r, %bb.ad ], [ %i.bf, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std2fs4FileNtNtNtB4_2io5error5ErrorEEECsgGgPqgSfnMH_7storage.exit.i.i.i ]
  %i.cj = phi ptr [ %.phi.trans.insert.i, %bb.ad ], [ %i.bg, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std2fs4FileNtNtNtB4_2io5error5ErrorEEECsgGgPqgSfnMH_7storage.exit.i.i.i ]
  %i.ck = phi ptr [ %i.ab, %bb.ad ], [ %i.bh, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std2fs4FileNtNtNtB4_2io5error5ErrorEEECsgGgPqgSfnMH_7storage.exit.i.i.i ]
  %i.cl = phi ptr [ %i.av, %bb.ad ], [ %i.bj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std2fs4FileNtNtNtB4_2io5error5ErrorEEECsgGgPqgSfnMH_7storage.exit.i.i.i ]
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.cg, %bb.ad ], [ %.pn10.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std2fs4FileNtNtNtB4_2io5error5ErrorEEECsgGgPqgSfnMH_7storage.exit.i.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtCsjZG7hsAZr3B_5tokio2fs8asyncifyNCNCNvMNtBG_12open_optionsNtB1l_11OpenOptions8std_open00NtNtCsG258MDvU3F_3std2fs4FileE0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.cl) #23
          to label %bb.j unwind label %bb.k, !noalias !18712

bb.ae:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std2fs4FileNtNtNtB4_2io5error5ErrorEEECsgGgPqgSfnMH_7storage.exit12.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.cm, align 8, !noalias !18713
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.3.0.copyload.i.i.i = load i32, ptr %.sroa.3.0..sroa_idx.i.i.i, align 4, !noalias !18713
  %.sroa.34.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.34.0.copyload.i.i.i = load ptr, ptr %.sroa.34.0..sroa_idx.i.i.i, align 8, !noalias !18713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !18713
  store i8 1, ptr %i.bo, align 8, !noalias !18713
  switch i32 %.sroa.0.0.copyload.i.i.i, label %bb.ag [
    i32 2, label %bb.ak
    i32 0, label %_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtCsG258MDvU3F_3std2fs4FileNtNtNtB7_2io5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsgGgPqgSfnMH_7storage.exit.i.i
  ]

_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtCsG258MDvU3F_3std2fs4FileNtNtNtB7_2io5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsgGgPqgSfnMH_7storage.exit.i.i: ; preds = %bb.ae
  invoke void @_RNvXs2_NtNtCsjZG7hsAZr3B_5tokio2fs4fileNtB5_4FileINtNtCskKLDkoKarTP_4core7convert4FromNtNtCsG258MDvU3F_3std2fs4FileE4from(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.e, i32 noundef range(i32 0, -1) %.sroa.3.0.copyload.i.i.i)
          to label %_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtCsG258MDvU3F_3std2fs4FileINtB5_4IntoNtNtNtCsjZG7hsAZr3B_5tokio2fs4file4FileE4intoCsgGgPqgSfnMH_7storage.exit.i.i unwind label %bb.af, !noalias !18712

_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtCsG258MDvU3F_3std2fs4FileINtB5_4IntoNtNtNtCsjZG7hsAZr3B_5tokio2fs4file4FileE4intoCsgGgPqgSfnMH_7storage.exit.i.i: ; preds = %_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtCsG258MDvU3F_3std2fs4FileNtNtNtB7_2io5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsgGgPqgSfnMH_7storage.exit.i.i
  %.sroa.026.0.copyload.i.i = load ptr, ptr %i.e, align 8, !noalias !18710
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.3.0.copyload.i.i = load ptr, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !18710
  %.sroa.430.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.430.i.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.430.0..sroa_idx.i.i, i64 88, i1 false), !noalias !18710
  br label %.thread

bb.af:                                            ; preds = %_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtCsG258MDvU3F_3std2fs4FileNtNtNtB7_2io5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsgGgPqgSfnMH_7storage.exit.i.i
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.ag:                                            ; preds = %bb.ae, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtCsjZG7hsAZr3B_5tokio2fs8asyncifyNCNCNvMNtBG_12open_optionsNtB1l_11OpenOptions8std_open00NtNtCsG258MDvU3F_3std2fs4FileE0ECsgGgPqgSfnMH_7storage.exit.thread.i.i
  %.sroa.34.016.i4246.i.i = phi ptr [ %i.cd, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtCsjZG7hsAZr3B_5tokio2fs8asyncifyNCNCNvMNtBG_12open_optionsNtB1l_11OpenOptions8std_open00NtNtCsG258MDvU3F_3std2fs4FileE0ECsgGgPqgSfnMH_7storage.exit.thread.i.i ], [ %.sroa.34.0.copyload.i.i.i, %bb.ae ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.34.016.i4246.i.i) ]
  br label %.thread

bb.ah:                                            ; preds = %bb.n, %bb.m
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ah, %bb.l
  %i.cp = phi ptr [ %i.s, %bb.ah ], [ %i.ar, %bb.l ]
  %i.cq = phi ptr [ %i.r, %bb.ah ], [ %i.as, %bb.l ]
  %i.cr = phi ptr [ %i.ab, %bb.ah ], [ %i.au, %bb.l ]
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.co, %bb.ah ], [ %.pn8.pn.pn.i.i, %bb.l ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsjZG7hsAZr3B_5tokio2fs12open_optionsNtBG_11OpenOptions8std_open0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.cr) #23
          to label %.body5.i unwind label %bb.ai, !noalias !18709

bb.ai:                                            ; preds = %.body.i
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !18709
  unreachable

bb.aj:                                            ; preds = %bb.f, %bb.e
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body5.i, %bb.aj
  %i.cu = phi ptr [ %i.r, %bb.aj ], [ %i.cq, %.body5.i ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.ct, %bb.aj ], [ %eh.lpad-body.i, %.body5.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsjZG7hsAZr3B_5tokio2fs12open_optionsNtBG_11OpenOptions10open_inner0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.cu) #23
          to label %.body7 unwind label %bb.am

bb.ak:                                            ; preds = %.thread.i.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !18710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !18710
  store i8 3, ptr %i.bm, align 8, !noalias !18710
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.430.i.i)
  store i8 3, ptr %i.bk, align 8, !noalias !18708
  br label %bb.al

.thread:                                          ; preds = %_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtCsG258MDvU3F_3std2fs4FileINtB5_4IntoNtNtNtCsjZG7hsAZr3B_5tokio2fs4file4FileE4intoCsgGgPqgSfnMH_7storage.exit.i.i, %bb.ag
  %.sroa.026.0.i.i = phi ptr [ null, %bb.ag ], [ %.sroa.026.0.copyload.i.i, %_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtCsG258MDvU3F_3std2fs4FileINtB5_4IntoNtNtNtCsjZG7hsAZr3B_5tokio2fs4file4FileE4intoCsgGgPqgSfnMH_7storage.exit.i.i ]
  %.sroa.3.0.i.i = phi ptr [ %.sroa.34.016.i4246.i.i, %bb.ag ], [ %.sroa.3.0.copyload.i.i, %_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtCsG258MDvU3F_3std2fs4FileINtB5_4IntoNtNtNtCsjZG7hsAZr3B_5tokio2fs4file4FileE4intoCsgGgPqgSfnMH_7storage.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !18710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !18710
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.026.0.i.i, ptr %i.cv, align 8, !alias.scope !18712
  %.sroa.3.0..sroa_idx28.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.3.0.i.i, ptr %.sroa.3.0..sroa_idx28.i.i, align 8, !alias.scope !18712
  %.sroa.430.0..sroa_idx31.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.430.0..sroa_idx31.i.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.430.i.i, i64 88, i1 false), !noalias !18715
  store i64 0, ptr %0, align 8, !alias.scope !18712
  store i8 1, ptr %i.bm, align 8, !noalias !18710
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.430.i.i)
  store i8 1, ptr %i.bk, align 8, !noalias !18708
  %i.cw = load i64, ptr %0, align 8, !range !28, !noundef !29
  %i.cx = trunc nuw i64 %i.cw to i1
  br i1 %i.cx, label %bb.al, label %common.ret

common.ret:                                       ; preds = %.thread, %bb.al
  %storemerge = phi i8 [ 3, %bb.al ], [ 1, %.thread ]
  store i8 %storemerge, ptr %i.g, align 8
  ret void

bb.al:                                            ; preds = %bb.ak, %.thread
  store i64 1, ptr %0, align 8
  br label %common.ret

bb.am:                                            ; preds = %.body
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvMNtNtCsjZG7hsAZr3B_5tokio2fs4fileNtB5_4File6createRNtNtCsG258MDvU3F_3std4path7PathBufE0CsgGgPqgSfnMH_7storage(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 177 ; 3 uses
  %i.b = load i8, ptr %i.a, align 1, !range !38, !noundef !29
  switch i8 %i.b, label %default.unreachable10 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable10:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !29, !align !35, !noundef !29
  store i128 79537652246452167413109620736, ptr %1, align 8, !alias.scope !18718
  store i8 0, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %1, ptr %i.f, align 8
  %.sroa.79.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.e, ptr %.sroa.79.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 160
  store i8 0, ptr %.sroa.9.0..sroa_idx, align 8
  br label %bb.e

.body:                                            ; preds = %bb.p, %bb.m, %bb.f
  %.pn4 = phi { ptr, i32 } [ %i.u, %bb.m ], [ %i.i, %bb.f ], [ %i.x, %bb.p ]
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 176
  store i8 0, ptr %i.g, align 8
  store i8 2, ptr %i.a, align 1
  resume { ptr, i32 } %.pn4

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #27
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #27
  unreachable

bb.e:                                             ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  invoke fastcc void @_RNCINvMNtNtCsjZG7hsAZr3B_5tokio2fs12open_optionsNtB5_11OpenOptions4openRNtNtCsG258MDvU3F_3std4path7PathBufE0CsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 captures(address) dereferenceable(112) %0, ptr noundef nonnull align 8 %i.h, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMNtNtCsjZG7hsAZr3B_5tokio2fs12open_optionsNtBH_11OpenOptions4openRNtNtCsG258MDvU3F_3std4path7PathBufE0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.h) #23
          to label %.body unwind label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.j = load i64, ptr %0, align 8, !range !28, !noundef !29
  %i.k = trunc nuw i64 %i.j to i1
  br i1 %i.k, label %3, label %bb.h

common.ret:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMNtNtCsjZG7hsAZr3B_5tokio2fs12open_optionsNtBH_11OpenOptions4openRNtNtCsG258MDvU3F_3std4path7PathBufE0ECsgGgPqgSfnMH_7storage.exit, %3
  %storemerge = phi i8 [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMNtNtCsjZG7hsAZr3B_5tokio2fs12open_optionsNtBH_11OpenOptions4openRNtNtCsG258MDvU3F_3std4path7PathBufE0ECsgGgPqgSfnMH_7storage.exit ], [ 3, %3 ]
  store i8 %storemerge, ptr %i.a, align 1
  ret void

3:                                                ; preds = %bb.g
  store i64 1, ptr %0, align 8
  br label %common.ret

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.m = load i8, ptr %i.l, align 8, !range !38, !noundef !29
  %cond.i = icmp eq i8 %i.m, 3
  br i1 %cond.i, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMNtNtCsjZG7hsAZr3B_5tokio2fs12open_optionsNtBH_11OpenOptions4openRNtNtCsG258MDvU3F_3std4path7PathBufE0ECsgGgPqgSfnMH_7storage.exit

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.o = load i8, ptr %i.n, align 8, !range !38, !noundef !29
  %cond.i.i = icmp eq i8 %i.o, 3
  br i1 %cond.i.i, label %bb.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMNtNtCsjZG7hsAZr3B_5tokio2fs12open_optionsNtBH_11OpenOptions4openRNtNtCsG258MDvU3F_3std4path7PathBufE0ECsgGgPqgSfnMH_7storage.exit

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.q = load i8, ptr %i.p, align 8, !range !38, !noundef !29
  %cond.i.i.i = icmp eq i8 %i.q, 3
  br i1 %cond.i.i.i, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMNtNtCsjZG7hsAZr3B_5tokio2fs12open_optionsNtBH_11OpenOptions4openRNtNtCsG258MDvU3F_3std4path7PathBufE0ECsgGgPqgSfnMH_7storage.exit

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.t = load i8, ptr %i.s, align 8, !range !38, !noundef !29
  switch i8 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMNtNtCsjZG7hsAZr3B_5tokio2fs12open_optionsNtBH_11OpenOptions4openRNtNtCsG258MDvU3F_3std4path7PathBufE0ECsgGgPqgSfnMH_7storage.exit [
    i8 0, label %bb.l
    i8 3, label %bb.o
  ]

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.r)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtCsjZG7hsAZr3B_5tokio2fs12open_optionsNtBI_11OpenOptions8std_open00ECsgGgPqgSfnMH_7storage.exit.i.i.i.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.r)
          to label %.body unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtCsjZG7hsAZr3B_5tokio2fs12open_optionsNtBI_11OpenOptions8std_open00ECsgGgPqgSfnMH_7storage.exit.i.i.i.i: ; preds = %bb.l
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.r)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMNtNtCsjZG7hsAZr3B_5tokio2fs12open_optionsNtBH_11OpenOptions4openRNtNtCsG258MDvU3F_3std4path7PathBufE0ECsgGgPqgSfnMH_7storage.exit unwind label %bb.p

bb.o:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 128
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultNtNtCsG258MDvU3F_3std2fs4FileNtNtNtB1a_2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMNtNtCsjZG7hsAZr3B_5tokio2fs12open_optionsNtBH_11OpenOptions4openRNtNtCsG258MDvU3F_3std4path7PathBufE0ECsgGgPqgSfnMH_7storage.exit unwind label %bb.p

bb.p:                                             ; preds = %bb.o, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtCsjZG7hsAZr3B_5tokio2fs12open_optionsNtBI_11OpenOptions8std_open00ECsgGgPqgSfnMH_7storage.exit.i.i.i.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMNtNtCsjZG7hsAZr3B_5tokio2fs12open_optionsNtBH_11OpenOptions4openRNtNtCsG258MDvU3F_3std4path7PathBufE0ECsgGgPqgSfnMH_7storage.exit: ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtCsjZG7hsAZr3B_5tokio2fs12open_optionsNtBI_11OpenOptions8std_open00ECsgGgPqgSfnMH_7storage.exit.i.i.i.i, %bb.o
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 176
  store i8 0, ptr %i.y, align 8
  br label %common.ret

bb.q:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB19_8LazyLockNtCsgi2f7M0R94N_6semver7VersionE5force0E0CsgGgPqgSfnMH_7storage(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !29, !align !35, !noundef !29 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !align !35, !noundef !29 ; 3 uses
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val = load i8, ptr %i.d, align 4, !range !52, !noundef !29
  %i.e = trunc nuw i8 %.val to i1
  br i1 %i.e, label %bb.c, label %_RNCNvMNtNtCsG258MDvU3F_3std4sync9lazy_lockINtB4_8LazyLockNtCsgi2f7M0R94N_6semver7VersionE5force0CsgGgPqgSfnMH_7storage.exit, !prof !31

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsG258MDvU3F_3std4sync9lazy_lock14panic_poisoned() #27
  unreachable

_RNCNvMNtNtCsG258MDvU3F_3std4sync9lazy_lockINtB4_8LazyLockNtCsgi2f7M0R94N_6semver7VersionE5force0CsgGgPqgSfnMH_7storage.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !nonnull !29, !noundef !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void %i.f(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a), !inline_history !18719
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #27
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCINvMs0_NtNtCsPYQCUnoTxQ_10collection10collection5cleanNtBa_10Collection29invalidate_clean_local_shardsAmj1_E0CsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [40 x i8], align 8                ; 9 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.3.i = alloca [16 x i8], align 8          ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  %i.f = alloca [8 x i8], align 8                 ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 3 uses
  %i.i = load i8, ptr %i.h, align 4, !range !38, !noundef !29
  switch i8 %i.i, label %default.unreachable27 [
    i8 0, label %.thread
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
  ]

default.unreachable27:                            ; preds = %bb.d, %bb.a
  unreachable

.thread:                                          ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8, !nonnull !29, !align !35, !noundef !29
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.02.0.copyload = load i32, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 488
  %.sroa.719.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.l, ptr %.sroa.719.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %.sroa.02.0.copyload, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 61
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 61
  br label %bb.f

.body15:                                          ; preds = %.body
  store i8 2, ptr %i.h, align 4
  resume { ptr, i32 } %eh.lpad-body

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #27
  unreachable

bb.d:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 61
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !range !38, !noalias !18735
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 61 ; 2 uses
  switch i8 %.pre, label %default.unreachable27 [
    i8 0, label %bb.f
    i8 1, label %bb.r
    i8 2, label %bb.s
    i8 3, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !18735
  br label %bb.t

bb.f:                                             ; preds = %.thread, %bb.d
  %i.q = phi ptr [ %i.n, %.thread ], [ %i.p, %bb.d ] ; 2 uses
  %i.r = phi ptr [ %i.m, %.thread ], [ %i.o, %bb.d ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !noalias !18735, !nonnull !29, !align !35, !noundef !29
  store i8 1, ptr %i.s, align 4, !noalias !18735
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.02.0.copyload.i = load i32, ptr %i.v, align 8, !noalias !18735
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !18735
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !18735
  %.val37.i = load ptr, ptr %i.u, align 8, !noalias !18735, !nonnull !29, !noundef !29
  %i.w = getelementptr inbounds nuw i8, ptr %.val37.i, i64 16 ; 4 uses
  %i.x = cmpxchg weak ptr %i.w, i64 0, i64 8 acquire monotonic, align 8, !noalias !18735
  %i.y = extractvalue { i64, i1 } %i.x, 1
  br i1 %i.y, label %_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock14lock_exclusive.exit.i.i, label %bb.g, !prof !56

bb.g:                                             ; preds = %bb.f
  %i.z = invoke noundef zeroext i1 @_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock19lock_exclusive_slow(ptr noundef nonnull align 8 %i.w, i64 undef, i32 noundef -1)
          to label %_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock14lock_exclusive.exit.i.i unwind label %bb.m, !noalias !18735 ; 0 uses

_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock14lock_exclusive.exit.i.i: ; preds = %bb.g, %bb.f
  %i.aa = ptrtoint ptr %i.w to i64                ; 2 uses
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16acquire_resource(i64 noundef %i.aa)
          to label %.noexc40.i unwind label %bb.m, !noalias !18735

.noexc40.i:                                       ; preds = %_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock14lock_exclusive.exit.i.i
  %i.ab = or disjoint i64 %i.aa, 1
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16acquire_resource(i64 noundef %i.ab)
          to label %bb.h unwind label %bb.m, !noalias !18735
end_hunk_0

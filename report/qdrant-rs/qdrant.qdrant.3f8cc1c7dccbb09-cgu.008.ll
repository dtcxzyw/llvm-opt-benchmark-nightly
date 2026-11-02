Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.008?download=true
inline.NumInlined: 9683
inline.NumDeleted: 3881
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumUnrolled: 59
begin_hunk_0_@_RNCINvMNtNtCsjZG7hsAZr3B_5tokio2fs12open_optionsNtB5_11OpenOptions4openRNtNtCsG258MDvU3F_3std4path7PathBufE0Csl8OoimOLbh_6qdrant:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9298
  store i8 1, ptr %i.bo, align 8, !noalias !9298
  br label %bb.ag

bb.ab:                                            ; preds = %bb.z
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultIBC_NtNtCsG258MDvU3F_3std2fs4FileNtNtNtB4_2io5error5ErrorENtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task5error9JoinErrorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std2fs4FileNtNtNtB4_2io5error5ErrorEEECsl8OoimOLbh_6qdrant.exit.i.i.i unwind label %bb.ac, !noalias !9299

bb.ac:                                            ; preds = %bb.ab, %bb.v
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !9299
  unreachable

bb.ad:                                            ; preds = %bb.t, %bb.s
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.ad, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std2fs4FileNtNtNtB4_2io5error5ErrorEEECsl8OoimOLbh_6qdrant.exit.i.i.i
  %i.ch = phi ptr [ %i.s, %bb.ad ], [ %i.be, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std2fs4FileNtNtNtB4_2io5error5ErrorEEECsl8OoimOLbh_6qdrant.exit.i.i.i ]
  %i.ci = phi ptr [ %i.r, %bb.ad ], [ %i.bf, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std2fs4FileNtNtNtB4_2io5error5ErrorEEECsl8OoimOLbh_6qdrant.exit.i.i.i ]
  %i.cj = phi ptr [ %.phi.trans.insert.i, %bb.ad ], [ %i.bg, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std2fs4FileNtNtNtB4_2io5error5ErrorEEECsl8OoimOLbh_6qdrant.exit.i.i.i ]
  %i.ck = phi ptr [ %i.ab, %bb.ad ], [ %i.bh, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std2fs4FileNtNtNtB4_2io5error5ErrorEEECsl8OoimOLbh_6qdrant.exit.i.i.i ]
  %i.cl = phi ptr [ %i.av, %bb.ad ], [ %i.bj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std2fs4FileNtNtNtB4_2io5error5ErrorEEECsl8OoimOLbh_6qdrant.exit.i.i.i ]
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.cg, %bb.ad ], [ %.pn10.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std2fs4FileNtNtNtB4_2io5error5ErrorEEECsl8OoimOLbh_6qdrant.exit.i.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtCsjZG7hsAZr3B_5tokio2fs8asyncifyNCNCNvMNtBG_12open_optionsNtB1l_11OpenOptions8std_open00NtNtCsG258MDvU3F_3std2fs4FileE0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.cl) #24
          to label %bb.j unwind label %bb.k, !noalias !9297

bb.ae:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std2fs4FileNtNtNtB4_2io5error5ErrorEEECsl8OoimOLbh_6qdrant.exit12.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.cm, align 8, !noalias !9298
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.3.0.copyload.i.i.i = load i32, ptr %.sroa.3.0..sroa_idx.i.i.i, align 4, !noalias !9298
  %.sroa.34.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.34.0.copyload.i.i.i = load ptr, ptr %.sroa.34.0..sroa_idx.i.i.i, align 8, !noalias !9298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9298
  store i8 1, ptr %i.bo, align 8, !noalias !9298
  switch i32 %.sroa.0.0.copyload.i.i.i, label %bb.ag [
    i32 2, label %bb.ak
    i32 0, label %_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtCsG258MDvU3F_3std2fs4FileNtNtNtB7_2io5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsl8OoimOLbh_6qdrant.exit.i.i
  ]

_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtCsG258MDvU3F_3std2fs4FileNtNtNtB7_2io5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.ae
  invoke void @_RNvXs2_NtNtCsjZG7hsAZr3B_5tokio2fs4fileNtB5_4FileINtNtCskKLDkoKarTP_4core7convert4FromNtNtCsG258MDvU3F_3std2fs4FileE4from(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.e, i32 noundef range(i32 0, -1) %.sroa.3.0.copyload.i.i.i)
          to label %_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtCsG258MDvU3F_3std2fs4FileINtB5_4IntoNtNtNtCsjZG7hsAZr3B_5tokio2fs4file4FileE4intoCsl8OoimOLbh_6qdrant.exit.i.i unwind label %bb.af, !noalias !9297

_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtCsG258MDvU3F_3std2fs4FileINtB5_4IntoNtNtNtCsjZG7hsAZr3B_5tokio2fs4file4FileE4intoCsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtCsG258MDvU3F_3std2fs4FileNtNtNtB7_2io5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsl8OoimOLbh_6qdrant.exit.i.i
  %.sroa.026.0.copyload.i.i = load ptr, ptr %i.e, align 8, !noalias !9295
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.3.0.copyload.i.i = load ptr, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !9295
  %.sroa.430.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.430.i.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.430.0..sroa_idx.i.i, i64 88, i1 false), !noalias !9295
  br label %.thread

bb.af:                                            ; preds = %_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtCsG258MDvU3F_3std2fs4FileNtNtNtB7_2io5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsl8OoimOLbh_6qdrant.exit.i.i
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.ag:                                            ; preds = %bb.ae, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtCsjZG7hsAZr3B_5tokio2fs8asyncifyNCNCNvMNtBG_12open_optionsNtB1l_11OpenOptions8std_open00NtNtCsG258MDvU3F_3std2fs4FileE0ECsl8OoimOLbh_6qdrant.exit.thread.i.i
  %.sroa.34.016.i4246.i.i = phi ptr [ %i.cd, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtCsjZG7hsAZr3B_5tokio2fs8asyncifyNCNCNvMNtBG_12open_optionsNtB1l_11OpenOptions8std_open00NtNtCsG258MDvU3F_3std2fs4FileE0ECsl8OoimOLbh_6qdrant.exit.thread.i.i ], [ %.sroa.34.0.copyload.i.i.i, %bb.ae ] ; 2 uses
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
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsjZG7hsAZr3B_5tokio2fs12open_optionsNtBG_11OpenOptions8std_open0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.cr) #24
          to label %.body5.i unwind label %bb.ai, !noalias !9294

bb.ai:                                            ; preds = %.body.i
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !9294
  unreachable

bb.aj:                                            ; preds = %bb.f, %bb.e
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body5.i, %bb.aj
  %i.cu = phi ptr [ %i.r, %bb.aj ], [ %i.cq, %.body5.i ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.ct, %bb.aj ], [ %eh.lpad-body.i, %.body5.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsjZG7hsAZr3B_5tokio2fs12open_optionsNtBG_11OpenOptions10open_inner0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.cu) #24
          to label %.body7 unwind label %bb.am

bb.ak:                                            ; preds = %.thread.i.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !9295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9295
  store i8 3, ptr %i.bm, align 8, !noalias !9295
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.430.i.i)
  store i8 3, ptr %i.bk, align 8, !noalias !9293
  br label %bb.al

.thread:                                          ; preds = %_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtCsG258MDvU3F_3std2fs4FileINtB5_4IntoNtNtNtCsjZG7hsAZr3B_5tokio2fs4file4FileE4intoCsl8OoimOLbh_6qdrant.exit.i.i, %bb.ag
  %.sroa.026.0.i.i = phi ptr [ null, %bb.ag ], [ %.sroa.026.0.copyload.i.i, %_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtCsG258MDvU3F_3std2fs4FileINtB5_4IntoNtNtNtCsjZG7hsAZr3B_5tokio2fs4file4FileE4intoCsl8OoimOLbh_6qdrant.exit.i.i ]
  %.sroa.3.0.i.i = phi ptr [ %.sroa.34.016.i4246.i.i, %bb.ag ], [ %.sroa.3.0.copyload.i.i, %_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtCsG258MDvU3F_3std2fs4FileINtB5_4IntoNtNtNtCsjZG7hsAZr3B_5tokio2fs4file4FileE4intoCsl8OoimOLbh_6qdrant.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !9295
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.026.0.i.i, ptr %i.cv, align 8, !alias.scope !9297
  %.sroa.3.0..sroa_idx28.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.3.0.i.i, ptr %.sroa.3.0..sroa_idx28.i.i, align 8, !alias.scope !9297
  %.sroa.430.0..sroa_idx31.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.430.0..sroa_idx31.i.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.430.i.i, i64 88, i1 false), !noalias !9300
  store i64 0, ptr %0, align 8, !alias.scope !9297
  store i8 1, ptr %i.bm, align 8, !noalias !9295
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.430.i.i)
  store i8 1, ptr %i.bk, align 8, !noalias !9293
  %i.cw = load i64, ptr %0, align 8, !range !23, !noundef !20
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
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvMNtNtCsjZG7hsAZr3B_5tokio2fs4fileNtB5_4File6createRNtNtCsG258MDvU3F_3std4path7PathBufE0Csl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 177 ; 3 uses
  %i.b = load i8, ptr %i.a, align 1, !range !46, !noundef !20
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
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !20, !align !19, !noundef !20
  store i128 79537652246452167413109620736, ptr %1, align 8, !alias.scope !9303
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
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #25
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #25
  unreachable

bb.e:                                             ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  invoke fastcc void @_RNCINvMNtNtCsjZG7hsAZr3B_5tokio2fs12open_optionsNtB5_11OpenOptions4openRNtNtCsG258MDvU3F_3std4path7PathBufE0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(112) %0, ptr noundef nonnull align 8 %i.h, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMNtNtCsjZG7hsAZr3B_5tokio2fs12open_optionsNtBH_11OpenOptions4openRNtNtCsG258MDvU3F_3std4path7PathBufE0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.h) #24
          to label %.body unwind label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.j = load i64, ptr %0, align 8, !range !23, !noundef !20
  %i.k = trunc nuw i64 %i.j to i1
  br i1 %i.k, label %common.ret, label %bb.h

common.ret:                                       ; preds = %bb.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMNtNtCsjZG7hsAZr3B_5tokio2fs12open_optionsNtBH_11OpenOptions4openRNtNtCsG258MDvU3F_3std4path7PathBufE0ECsl8OoimOLbh_6qdrant.exit
  %storemerge = phi i8 [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMNtNtCsjZG7hsAZr3B_5tokio2fs12open_optionsNtBH_11OpenOptions4openRNtNtCsG258MDvU3F_3std4path7PathBufE0ECsl8OoimOLbh_6qdrant.exit ], [ 3, %bb.g ]
  store i8 %storemerge, ptr %i.a, align 1
  ret void

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.m = load i8, ptr %i.l, align 8, !range !46, !noundef !20
  %cond.i = icmp eq i8 %i.m, 3
  br i1 %cond.i, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMNtNtCsjZG7hsAZr3B_5tokio2fs12open_optionsNtBH_11OpenOptions4openRNtNtCsG258MDvU3F_3std4path7PathBufE0ECsl8OoimOLbh_6qdrant.exit

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.o = load i8, ptr %i.n, align 8, !range !46, !noundef !20
  %cond.i.i = icmp eq i8 %i.o, 3
  br i1 %cond.i.i, label %bb.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMNtNtCsjZG7hsAZr3B_5tokio2fs12open_optionsNtBH_11OpenOptions4openRNtNtCsG258MDvU3F_3std4path7PathBufE0ECsl8OoimOLbh_6qdrant.exit

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.q = load i8, ptr %i.p, align 8, !range !46, !noundef !20
  %cond.i.i.i = icmp eq i8 %i.q, 3
  br i1 %cond.i.i.i, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMNtNtCsjZG7hsAZr3B_5tokio2fs12open_optionsNtBH_11OpenOptions4openRNtNtCsG258MDvU3F_3std4path7PathBufE0ECsl8OoimOLbh_6qdrant.exit

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.t = load i8, ptr %i.s, align 8, !range !46, !noundef !20
  switch i8 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMNtNtCsjZG7hsAZr3B_5tokio2fs12open_optionsNtBH_11OpenOptions4openRNtNtCsG258MDvU3F_3std4path7PathBufE0ECsl8OoimOLbh_6qdrant.exit [
    i8 0, label %bb.l
    i8 3, label %bb.o
  ]

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.r)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtCsjZG7hsAZr3B_5tokio2fs12open_optionsNtBI_11OpenOptions8std_open00ECsl8OoimOLbh_6qdrant.exit.i.i.i.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.r)
          to label %.body unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtCsjZG7hsAZr3B_5tokio2fs12open_optionsNtBI_11OpenOptions8std_open00ECsl8OoimOLbh_6qdrant.exit.i.i.i.i: ; preds = %bb.l
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.r)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMNtNtCsjZG7hsAZr3B_5tokio2fs12open_optionsNtBH_11OpenOptions4openRNtNtCsG258MDvU3F_3std4path7PathBufE0ECsl8OoimOLbh_6qdrant.exit unwind label %bb.p

bb.o:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 128
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultNtNtCsG258MDvU3F_3std2fs4FileNtNtNtB1a_2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMNtNtCsjZG7hsAZr3B_5tokio2fs12open_optionsNtBH_11OpenOptions4openRNtNtCsG258MDvU3F_3std4path7PathBufE0ECsl8OoimOLbh_6qdrant.exit unwind label %bb.p

bb.p:                                             ; preds = %bb.o, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtCsjZG7hsAZr3B_5tokio2fs12open_optionsNtBI_11OpenOptions8std_open00ECsl8OoimOLbh_6qdrant.exit.i.i.i.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMNtNtCsjZG7hsAZr3B_5tokio2fs12open_optionsNtBH_11OpenOptions4openRNtNtCsG258MDvU3F_3std4path7PathBufE0ECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtCsjZG7hsAZr3B_5tokio2fs12open_optionsNtBI_11OpenOptions8std_open00ECsl8OoimOLbh_6qdrant.exit.i.i.i.i, %bb.o
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 176
  store i8 0, ptr %i.y, align 8
  br label %common.ret

bb.q:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvMs_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant22points_internal_clientINtB7_20PointsInternalClientINtNtNtCsgOCJwUSa4vG_5tonic7service11interceptor18InterceptedServiceNtNtNtB1E_9transport7channel7ChannelNtNtBb_22transport_channel_pool15PoolInterceptorEE13clear_payloadINtNtB1E_7request7RequestNtB9_26ClearPayloadPointsInternalEE0Csl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(280) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.01.i.i.i.i = alloca [72 x i8], align 8   ; 6 uses
  %i.c = alloca [96 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [336 x i8], align 8               ; 14 uses
  %i.f = alloca [136 x i8], align 8               ; 7 uses
  %.sroa.5.i.i.i = alloca [120 x i8], align 8     ; 8 uses
  %i.g = alloca [136 x i8], align 8               ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [40 x i8], align 8                ; 9 uses
  %i.j = alloca [240 x i8], align 8               ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [496 x i8], align 8               ; 5 uses
  %i.m = alloca [120 x i8], align 8               ; 8 uses
  %i.n = alloca [368 x i8], align 8               ; 8 uses
  %.sroa.0122.sroa.6.i.i = alloca [256 x i8], align 8 ; 9 uses
  %i.o = alloca [96 x i8], align 8                ; 7 uses
  %.sroa.5121.i.i = alloca [80 x i8], align 8     ; 7 uses
  %i.p = alloca [96 x i8], align 8                ; 8 uses
  %.sroa.5102.i.i = alloca [160 x i8], align 8    ; 7 uses
  %i.q = alloca [176 x i8], align 8               ; 8 uses
  %.sroa.679.sroa.0.i.i = alloca [312 x i8], align 8 ; 8 uses
  %.sroa.874.sroa.6.sroa.0.i.i = alloca [312 x i8], align 8 ; 8 uses
  %i.r = alloca [232 x i8], align 8               ; 13 uses
  %i.s = alloca [368 x i8], align 8               ; 7 uses
  %i.t = alloca [360 x i8], align 8               ; 7 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [16 x i8], align 8                ; 7 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.572 = alloca [256 x i8], align 8         ; 2 uses
  %.sroa.1168 = alloca [256 x i8], align 8        ; 8 uses
  %i.y = alloca [32 x i8], align 8                ; 8 uses
  %i.z = alloca [32 x i8], align 8                ; 4 uses
  %.sroa.043 = alloca [16 x i8], align 8          ; 2 uses
  %.sroa.3 = alloca [7 x i8], align 1             ; 2 uses
  %i.aa = alloca [24 x i8], align 8               ; 9 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 3 uses
  %i.ac = load i8, ptr %i.ab, align 8, !range !44, !noundef !20
  switch i8 %i.ac, label %default.unreachable139 [
    i8 0, label %.thread
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
    i8 4, label %bb.ad
  ]

default.unreachable139:                           ; preds = %bb.ao, %bb.aj, %bb.ad, %bb.d, %bb.a
  unreachable

.thread:                                          ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 377
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 379
  store i8 0, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 378
  store i8 0, ptr %i.af, align 2
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !20, !align !19, !noundef !20 ; 2 uses
  store ptr %i.ai, ptr %i.ag, align 8
  store i8 1, ptr %i.ad, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 384
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.aj, ptr noundef nonnull align 8 dereferenceable(360) %1, i64 360, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 744
  store ptr %i.ai, ptr %i.ak, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 760
  store i8 0, ptr %.sroa.9.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 744
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 760
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #25
  unreachable

bb.d:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 760
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !46, !noalias !9373
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 744 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9374)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 760 ; 2 uses
  switch i8 %.pre, label %default.unreachable139 [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %._crit_edge.i
  ]

._crit_edge.i:                                    ; preds = %bb.d
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 752
  %.val.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !9373
  br label %bb.h

bb.e:                                             ; preds = %.thread, %bb.d
  %i.ap = phi ptr [ %i.am, %.thread ], [ %i.ao, %bb.d ]
  %i.aq = phi ptr [ %i.al, %.thread ], [ %i.an, %bb.d ] ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !9373, !nonnull !20, !align !19, !noundef !20
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 128 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 752
  store ptr %i.as, ptr %i.at, align 8, !noalias !9373
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @377) #25
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.d
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @377) #25
          to label %.noexc22 unwind label %bb.j

.noexc22:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.e, %._crit_edge.i
  %i.au = phi ptr [ %i.ao, %._crit_edge.i ], [ %i.ap, %bb.e ] ; 2 uses
  %i.av = phi ptr [ %i.an, %._crit_edge.i ], [ %i.aq, %bb.e ]
  %.val.i = phi ptr [ %.val.pre.i, %._crit_edge.i ], [ %i.as, %bb.e ]
  invoke void @_RNvXNtNtCsgOCJwUSa4vG_5tonic6client7serviceINtNtNtB6_7service11interceptor18InterceptedServiceNtNtNtB6_9transport7channel7ChannelNtNtNtCshMzyYDJGtjv_3api4grpc22transport_channel_pool15PoolInterceptorEINtB2_11GrpcServiceNtNtB6_4body4BodyE10poll_readyCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %.val.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
end_hunk_0

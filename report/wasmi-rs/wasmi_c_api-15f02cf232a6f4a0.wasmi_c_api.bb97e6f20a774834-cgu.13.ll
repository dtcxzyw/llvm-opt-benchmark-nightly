Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi_c_api-15f02cf232a6f4a0.wasmi_c_api.bb97e6f20a774834-cgu.13?download=true
inline.NumInlined: 187
inline.NumDeleted: 104
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi5error5ErrorECsg6ypMx2A1Am_11wasmi_c_api:bb.a
  br i1 %i.bc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCskhAzXzJZLSo_3wat5ErrorECsg6ypMx2A1Am_11wasmi_c_api.exit.i, label %bb.ae

bb.ae:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i.i.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsg6ypMx2A1Am_11wasmi_c_api.exit.i4.i.invoke.i.i.i unwind label %bb.af, !noalias !8, !inline_history !19

bb.af:                                            ; preds = %bb.ae
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %bb.ai unwind label %bb.ag, !noalias !8, !inline_history !19

bb.ag:                                            ; preds = %bb.af
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !8, !inline_history !19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsg6ypMx2A1Am_11wasmi_c_api.exit.i4.i.invoke.i.i.i: ; preds = %bb.ae, %bb.z
  %i.bf = phi ptr [ %i.as, %bb.z ], [ %i.ba, %bb.ae ]
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCskhAzXzJZLSo_3wat5ErrorECsg6ypMx2A1Am_11wasmi_c_api.exit.i unwind label %bb.ah, !noalias !8, !inline_history !19

bb.ah:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsg6ypMx2A1Am_11wasmi_c_api.exit.i4.i.invoke.i.i.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.af, %.body.i.i.i.i, %bb.aa, %bb.x, %bb.t
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.bg, %bb.ah ], [ %eh.lpad-body.i.i.i.i.i.i, %bb.t ], [ %i.aq, %bb.x ], [ %i.av, %bb.aa ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ], [ %i.bd, %bb.af ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i2, i64 noundef 48, i64 noundef 8) #12, !noalias !8, !inline_history !19
  br label %bb.cq

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCskhAzXzJZLSo_3wat5ErrorECsg6ypMx2A1Am_11wasmi_c_api.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsg6ypMx2A1Am_11wasmi_c_api.exit.i4.i.invoke.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i.i.i, %bb.y, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1VvpiNK3DOA_4wast5error5ErrorECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i.i.i
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i2, i64 noundef 48, i64 noundef 8) #12, !noalias !8, !inline_history !19
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECsg6ypMx2A1Am_11wasmi_c_api.exit

bb.aj:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43), !noalias !8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val1.i.i = load i64, ptr %i.bh, align 8, !alias.scope !46, !noalias !8, !noundef !5 ; 2 uses
  %i.bi = icmp eq i64 %.val1.i.i, 0
  br i1 %i.bi, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECsg6ypMx2A1Am_11wasmi_c_api.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val.i.i = load ptr, ptr %i.bj, align 8, !alias.scope !46, !noalias !8, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %.val1.i.i, i64 noundef 1) #12, !noalias !47, !inline_history !19
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECsg6ypMx2A1Am_11wasmi_c_api.exit

bb.al:                                            ; preds = %bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val1.i1 = load ptr, ptr %i.bk, align 8, !alias.scope !11, !noalias !8 ; 5 uses
  %i.bl = getelementptr i8, ptr %i.b, i64 16
  %.val2.i = load ptr, ptr %i.bl, align 8, !alias.scope !11, !noalias !8, !nonnull !5, !align !48, !noundef !5 ; 5 uses
  %i.bm = load ptr, ptr %.val2.i, align 8, !invariant.load !5, !noalias !8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i1) ], !noalias !8
  invoke void %i.bm(ptr noundef nonnull %.val1.i1)
          to label %bb.an unwind label %bb.ap, !noalias !8, !inline_history !19

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.bn = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !range !49, !invariant.load !5, !noalias !8 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECsg6ypMx2A1Am_11wasmi_c_api.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.bq = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !range !50, !invariant.load !5, !noalias !8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i1) ], !noalias !8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i1, i64 noundef range(i64 1, 0) %i.bo, i64 noundef range(i64 1, 536870913) %i.br) #12, !noalias !8, !inline_history !19
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECsg6ypMx2A1Am_11wasmi_c_api.exit

bb.ap:                                            ; preds = %bb.am
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !range !49, !invariant.load !5, !noalias !8 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %bb.cq, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.bw = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !range !50, !invariant.load !5, !noalias !8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i1, i64 noundef range(i64 1, 0) %i.bu, i64 noundef range(i64 1, 536870913) %i.bx) #12, !noalias !8, !inline_history !19
  br label %bb.cq

bb.ar:                                            ; preds = %bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi5error5ErrorECsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECsg6ypMx2A1Am_11wasmi_c_api.exit unwind label %bb.cp, !inline_history !19

bb.as:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51), !noalias !8
  %i.bz = add nsw i8 %i.c, -4
  %i.ca = icmp samesign ugt i8 %i.c, 3
  %narrow.i.i = select i1 %i.ca, i8 %i.bz, i8 2
  switch i8 %narrow.i.i, label %bb.at [
    i8 0, label %bb.aw
    i8 1, label %bb.az
  ]

bb.at:                                            ; preds = %bb.as
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54), !noalias !8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57), !noalias !8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.val1.i.i.i.i = load i64, ptr %i.cb, align 8, !alias.scope !60, !noalias !8, !noundef !5 ; 2 uses
  %i.cc = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.cc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.val.i.i.i4.i = load ptr, ptr %i.cd, align 8, !alias.scope !60, !noalias !8, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i4.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i, i64 noundef 1) #12, !noalias !61, !inline_history !19
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i.i: ; preds = %bb.au, %bb.at
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62), !noalias !8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %.val1.i4.i.i.i = load i64, ptr %i.ce, align 8, !alias.scope !65, !noalias !8, !noundef !5 ; 2 uses
  %i.cf = icmp eq i64 %.val1.i4.i.i.i, 0
  br i1 %i.cf, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i, label %bb.av

bb.av:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.val.i5.i.i.i = load ptr, ptr %i.cg, align 8, !alias.scope !65, !noalias !8, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i5.i.i.i, i64 noundef range(i64 1, 0) %.val1.i4.i.i.i, i64 noundef 1) #12, !noalias !66, !inline_history !19
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i

bb.aw:                                            ; preds = %bb.as
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67), !noalias !8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70), !noalias !8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val1.i.i3.i.i = load i64, ptr %i.ch, align 8, !alias.scope !73, !noalias !8, !noundef !5 ; 2 uses
  %i.ci = icmp eq i64 %.val1.i.i3.i.i, 0
  br i1 %i.ci, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit.i5.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val.i.i4.i.i = load ptr, ptr %i.cj, align 8, !alias.scope !73, !noalias !8, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i4.i.i, i64 noundef range(i64 1, 0) %.val1.i.i3.i.i, i64 noundef 1) #12, !noalias !74, !inline_history !19
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit.i5.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit.i5.i.i: ; preds = %bb.ax, %bb.aw
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75), !noalias !8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.val1.i4.i6.i.i = load i64, ptr %i.ck, align 8, !alias.scope !78, !noalias !8, !noundef !5 ; 2 uses
  %i.cl = icmp eq i64 %.val1.i4.i6.i.i, 0
  br i1 %i.cl, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECsg6ypMx2A1Am_11wasmi_c_api.exit, label %bb.ay

bb.ay:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit.i5.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.val.i5.i7.i.i = load ptr, ptr %i.cm, align 8, !alias.scope !78, !noalias !8, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i5.i7.i.i, i64 noundef range(i64 1, 0) %.val1.i4.i6.i.i, i64 noundef 1) #12, !noalias !79, !inline_history !19
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECsg6ypMx2A1Am_11wasmi_c_api.exit

bb.az:                                            ; preds = %bb.as
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80), !noalias !8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83), !noalias !8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.val1.i.i9.i.i = load i64, ptr %i.cn, align 8, !alias.scope !86, !noalias !8, !noundef !5 ; 2 uses
  %i.co = icmp eq i64 %.val1.i.i9.i.i, 0
  br i1 %i.co, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit.i11.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.val.i.i10.i.i = load ptr, ptr %i.cp, align 8, !alias.scope !86, !noalias !8, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i10.i.i, i64 noundef range(i64 1, 0) %.val1.i.i9.i.i, i64 noundef 1) #12, !noalias !87, !inline_history !19
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit.i11.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit.i11.i.i: ; preds = %bb.ba, %bb.az
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88), !noalias !8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %.val1.i4.i12.i.i = load i64, ptr %i.cq, align 8, !alias.scope !91, !noalias !8, !noundef !5 ; 2 uses
  %i.cr = icmp eq i64 %.val1.i4.i12.i.i, 0
  br i1 %i.cr, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameECsg6ypMx2A1Am_11wasmi_c_api.exit14.i.i, label %bb.bb

bb.bb:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit.i11.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.val.i5.i13.i.i = load ptr, ptr %i.cs, align 8, !alias.scope !91, !noalias !8, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i5.i13.i.i, i64 noundef range(i64 1, 0) %.val1.i4.i12.i.i, i64 noundef 1) #12, !noalias !92, !inline_history !19
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameECsg6ypMx2A1Am_11wasmi_c_api.exit14.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameECsg6ypMx2A1Am_11wasmi_c_api.exit14.i.i: ; preds = %bb.bb, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit.i11.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93), !noalias !8
  %i.cu = load i8, ptr %i.ct, align 8, !range !96, !alias.scope !97, !noalias !8, !noundef !5
  %i.cv = icmp eq i8 %i.cu, 3
  br i1 %i.cv, label %bb.bc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECsg6ypMx2A1Am_11wasmi_c_api.exit

bb.bc:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameECsg6ypMx2A1Am_11wasmi_c_api.exit14.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98), !noalias !8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101), !noalias !8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104), !noalias !8
  %i.cx = load i8, ptr %i.cw, align 8, !range !107, !alias.scope !108, !noalias !8, !noundef !5
  %1 = trunc nuw i8 %i.cx to i1
  br i1 %1, label %bb.bd, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECsg6ypMx2A1Am_11wasmi_c_api.exit

bb.bd:                                            ; preds = %bb.bc
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109), !noalias !8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112), !noalias !8
  %i.cz = load ptr, ptr %i.cy, align 8, !alias.scope !115, !noalias !8, !nonnull !5, !noundef !5
  %i.da = atomicrmw sub ptr %i.cz, i64 1 release, align 8, !noalias !116
  %i.db = icmp eq i64 %i.da, 1
  br i1 %i.db, label %.invoke, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECsg6ypMx2A1Am_11wasmi_c_api.exit

bb.be:                                            ; preds = %bb.bi
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !8, !inline_history !19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i: ; preds = %bb.av, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117), !noalias !8
  %i.dd = icmp eq i8 %i.c, 3
  br i1 %i.dd, label %bb.bf, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi8instance7exports10ExternTypeECsg6ypMx2A1Am_11wasmi_c_api.exit15.i.i

bb.bf:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120), !noalias !8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123), !noalias !8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126), !noalias !8
  %i.df = load i8, ptr %i.de, align 8, !range !107, !alias.scope !129, !noalias !8, !noundef !5
  %2 = trunc nuw i8 %i.df to i1
  br i1 %2, label %bb.bg, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi8instance7exports10ExternTypeECsg6ypMx2A1Am_11wasmi_c_api.exit15.i.i

bb.bg:                                            ; preds = %bb.bf
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130), !noalias !8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133), !noalias !8
  %i.dh = load ptr, ptr %i.dg, align 8, !alias.scope !136, !noalias !8, !nonnull !5, !noundef !5
  %i.di = atomicrmw sub ptr %i.dh, i64 1 release, align 8, !noalias !137
  %i.dj = icmp eq i64 %i.di, 1
  br i1 %i.dj, label %bb.bh, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi8instance7exports10ExternTypeECsg6ypMx2A1Am_11wasmi_c_api.exit15.i.i

bb.bh:                                            ; preds = %bb.bg
  fence acquire, !noalias !8
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.dg) #19
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi8instance7exports10ExternTypeECsg6ypMx2A1Am_11wasmi_c_api.exit15.i.i unwind label %bb.bi, !noalias !8, !inline_history !19

bb.bi:                                            ; preds = %bb.bh
  %i.dk = landingpad { ptr, i32 }
          cleanup
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi8instance7exports10ExternTypeECsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.dl) #18
          to label %bb.cq unwind label %bb.be, !noalias !8, !inline_history !19

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi8instance7exports10ExternTypeECsg6ypMx2A1Am_11wasmi_c_api.exit15.i.i: ; preds = %bb.bh, %bb.bg, %bb.bf, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138), !noalias !8
  %i.dn = load i8, ptr %i.dm, align 8, !range !96, !alias.scope !141, !noalias !8, !noundef !5
  %i.do = icmp eq i8 %i.dn, 3
  br i1 %i.do, label %bb.bj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECsg6ypMx2A1Am_11wasmi_c_api.exit

bb.bj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi8instance7exports10ExternTypeECsg6ypMx2A1Am_11wasmi_c_api.exit15.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142), !noalias !8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145), !noalias !8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148), !noalias !8
  %i.dq = load i8, ptr %i.dp, align 8, !range !107, !alias.scope !151, !noalias !8, !noundef !5
  %3 = trunc nuw i8 %i.dq to i1
  br i1 %3, label %bb.bk, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECsg6ypMx2A1Am_11wasmi_c_api.exit

bb.bk:                                            ; preds = %bb.bj
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152), !noalias !8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155), !noalias !8
  %i.ds = load ptr, ptr %i.dr, align 8, !alias.scope !158, !noalias !8, !nonnull !5, !noundef !5
  %i.dt = atomicrmw sub ptr %i.ds, i64 1 release, align 8, !noalias !159
  %i.du = icmp eq i64 %i.dt, 1
  br i1 %i.du, label %.invoke, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECsg6ypMx2A1Am_11wasmi_c_api.exit

bb.bl:                                            ; preds = %bb.a
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160), !noalias !8
  %i.dw = load i8, ptr %i.dv, align 8, !range !163, !alias.scope !164, !noalias !8, !noundef !5
  switch i8 %i.dw, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECsg6ypMx2A1Am_11wasmi_c_api.exit [
    i8 1, label %bb.bm
    i8 2, label %bb.bp
    i8 3, label %bb.bs
    i8 4, label %bb.bv
    i8 5, label %bb.by
  ]

bb.bm:                                            ; preds = %bb.bl
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165), !noalias !8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168), !noalias !8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.val1.i.i.i5.i = load i64, ptr %i.dx, align 8, !alias.scope !171, !noalias !8, !noundef !5 ; 2 uses
  %i.dy = icmp eq i64 %.val1.i.i.i5.i, 0
  br i1 %i.dy, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i7.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.val.i.i.i6.i = load ptr, ptr %i.dz, align 8, !alias.scope !171, !noalias !8, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i6.i, i64 noundef range(i64 1, 0) %.val1.i.i.i5.i, i64 noundef 1) #12, !noalias !172, !inline_history !19
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i7.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i7.i: ; preds = %bb.bn, %bb.bm
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173), !noalias !8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.val1.i4.i.i8.i = load i64, ptr %i.ea, align 8, !alias.scope !176, !noalias !8, !noundef !5 ; 2 uses
  %i.eb = icmp eq i64 %.val1.i4.i.i8.i, 0
  br i1 %i.eb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameECsg6ypMx2A1Am_11wasmi_c_api.exit.i10.i, label %bb.bo

bb.bo:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i7.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.val.i5.i.i9.i = load ptr, ptr %i.ec, align 8, !alias.scope !176, !noalias !8, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i5.i.i9.i, i64 noundef range(i64 1, 0) %.val1.i4.i.i8.i, i64 noundef 1) #12, !noalias !177, !inline_history !19
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameECsg6ypMx2A1Am_11wasmi_c_api.exit.i10.i

bb.bp:                                            ; preds = %bb.bl
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178), !noalias !8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181), !noalias !8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.val1.i.i4.i.i = load i64, ptr %i.ed, align 8, !alias.scope !184, !noalias !8, !noundef !5 ; 2 uses
  %i.ee = icmp eq i64 %.val1.i.i4.i.i, 0
  br i1 %i.ee, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit.i6.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ef = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val.i.i5.i.i = load ptr, ptr %i.ef, align 8, !alias.scope !184, !noalias !8, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i5.i.i, i64 noundef range(i64 1, 0) %.val1.i.i4.i.i, i64 noundef 1) #12, !noalias !185, !inline_history !19
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit.i6.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit.i6.i.i: ; preds = %bb.bq, %bb.bp
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186), !noalias !8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.val1.i4.i7.i.i = load i64, ptr %i.eg, align 8, !alias.scope !189, !noalias !8, !noundef !5 ; 2 uses
  %i.eh = icmp eq i64 %.val1.i4.i7.i.i, 0
  br i1 %i.eh, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECsg6ypMx2A1Am_11wasmi_c_api.exit, label %bb.br

bb.br:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit.i6.i.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.val.i5.i8.i.i = load ptr, ptr %i.ei, align 8, !alias.scope !189, !noalias !8, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i5.i8.i.i, i64 noundef range(i64 1, 0) %.val1.i4.i7.i.i, i64 noundef 1) #12, !noalias !190, !inline_history !19
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECsg6ypMx2A1Am_11wasmi_c_api.exit

bb.bs:                                            ; preds = %bb.bl
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191), !noalias !8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194), !noalias !8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.val1.i.i10.i.i = load i64, ptr %i.ej, align 8, !alias.scope !197, !noalias !8, !noundef !5 ; 2 uses
  %i.ek = icmp eq i64 %.val1.i.i10.i.i, 0
  br i1 %i.ek, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit.i12.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val.i.i11.i.i = load ptr, ptr %i.el, align 8, !alias.scope !197, !noalias !8, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i11.i.i, i64 noundef range(i64 1, 0) %.val1.i.i10.i.i, i64 noundef 1) #12, !noalias !198, !inline_history !19
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit.i12.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit.i12.i.i: ; preds = %bb.bt, %bb.bs
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199), !noalias !8
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.val1.i4.i13.i.i = load i64, ptr %i.em, align 8, !alias.scope !202, !noalias !8, !noundef !5 ; 2 uses
  %i.en = icmp eq i64 %.val1.i4.i13.i.i, 0
  br i1 %i.en, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameECsg6ypMx2A1Am_11wasmi_c_api.exit15.i.i, label %bb.bu

bb.bu:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit.i12.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.val.i5.i14.i.i = load ptr, ptr %i.eo, align 8, !alias.scope !202, !noalias !8, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i5.i14.i.i, i64 noundef range(i64 1, 0) %.val1.i4.i13.i.i, i64 noundef 1) #12, !noalias !203, !inline_history !19
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameECsg6ypMx2A1Am_11wasmi_c_api.exit15.i.i

bb.bv:                                            ; preds = %bb.bl
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204), !noalias !8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207), !noalias !8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.val1.i.i16.i.i = load i64, ptr %i.ep, align 8, !alias.scope !210, !noalias !8, !noundef !5 ; 2 uses
  %i.eq = icmp eq i64 %.val1.i.i16.i.i, 0
  br i1 %i.eq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit.i18.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val.i.i17.i.i = load ptr, ptr %i.er, align 8, !alias.scope !210, !noalias !8, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i17.i.i, i64 noundef range(i64 1, 0) %.val1.i.i16.i.i, i64 noundef 1) #12, !noalias !211, !inline_history !19
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit.i18.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit.i18.i.i: ; preds = %bb.bw, %bb.bv
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212), !noalias !8
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.val1.i4.i19.i.i = load i64, ptr %i.es, align 8, !alias.scope !215, !noalias !8, !noundef !5 ; 2 uses
  %i.et = icmp eq i64 %.val1.i4.i19.i.i, 0
  br i1 %i.et, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECsg6ypMx2A1Am_11wasmi_c_api.exit, label %bb.bx

bb.bx:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit.i18.i.i
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.val.i5.i20.i.i = load ptr, ptr %i.eu, align 8, !alias.scope !215, !noalias !8, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i5.i20.i.i, i64 noundef range(i64 1, 0) %.val1.i4.i19.i.i, i64 noundef 1) #12, !noalias !216, !inline_history !19
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECsg6ypMx2A1Am_11wasmi_c_api.exit

bb.by:                                            ; preds = %bb.bl
  tail call void @llvm.experimental.noalias.scope.decl(metadata !217), !noalias !8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !220), !noalias !8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.val1.i.i22.i.i = load i64, ptr %i.ev, align 8, !alias.scope !223, !noalias !8, !noundef !5 ; 2 uses
  %i.ew = icmp eq i64 %.val1.i.i22.i.i, 0
  br i1 %i.ew, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit.i24.i.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ex = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val.i.i23.i.i = load ptr, ptr %i.ex, align 8, !alias.scope !223, !noalias !8, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i23.i.i, i64 noundef range(i64 1, 0) %.val1.i.i22.i.i, i64 noundef 1) #12, !noalias !224, !inline_history !19
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit.i24.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit.i24.i.i: ; preds = %bb.bz, %bb.by
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225), !noalias !8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.val1.i4.i25.i.i = load i64, ptr %i.ey, align 8, !alias.scope !228, !noalias !8, !noundef !5 ; 2 uses
  %i.ez = icmp eq i64 %.val1.i4.i25.i.i, 0
  br i1 %i.ez, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECsg6ypMx2A1Am_11wasmi_c_api.exit, label %bb.ca

bb.ca:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit.i24.i.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.val.i5.i26.i.i = load ptr, ptr %i.fa, align 8, !alias.scope !228, !noalias !8, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i5.i26.i.i, i64 noundef range(i64 1, 0) %.val1.i4.i25.i.i, i64 noundef 1) #12, !noalias !229, !inline_history !19
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECsg6ypMx2A1Am_11wasmi_c_api.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameECsg6ypMx2A1Am_11wasmi_c_api.exit.i10.i: ; preds = %bb.bo, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i7.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230), !noalias !8
  %i.fc = load i8, ptr %i.fb, align 8, !range !96, !alias.scope !233, !noalias !8, !noundef !5
  %i.fd = icmp eq i8 %i.fc, 3
  br i1 %i.fd, label %bb.cb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECsg6ypMx2A1Am_11wasmi_c_api.exit

bb.cb:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameECsg6ypMx2A1Am_11wasmi_c_api.exit.i10.i
  %i.fe = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !234), !noalias !8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237), !noalias !8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240), !noalias !8
  %i.ff = load i8, ptr %i.fe, align 8, !range !107, !alias.scope !243, !noalias !8, !noundef !5
  %4 = trunc nuw i8 %i.ff to i1
  br i1 %4, label %bb.cc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECsg6ypMx2A1Am_11wasmi_c_api.exit

bb.cc:                                            ; preds = %bb.cb
  %i.fg = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244), !noalias !8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !247), !noalias !8
  %i.fh = load ptr, ptr %i.fg, align 8, !alias.scope !250, !noalias !8, !nonnull !5, !noundef !5
  %i.fi = atomicrmw sub ptr %i.fh, i64 1 release, align 8, !noalias !251
  %i.fj = icmp eq i64 %i.fi, 1
  br i1 %i.fj, label %.invoke, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECsg6ypMx2A1Am_11wasmi_c_api.exit

bb.cd:                                            ; preds = %bb.ch
  %i.fk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !8, !inline_history !19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameECsg6ypMx2A1Am_11wasmi_c_api.exit15.i.i: ; preds = %bb.bu, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit.i12.i.i
  %i.fl = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252), !noalias !8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !255), !noalias !8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258), !noalias !8
  %i.fm = load i8, ptr %i.fl, align 8, !range !107, !alias.scope !261, !noalias !8, !noundef !5
  %5 = trunc nuw i8 %i.fm to i1
  br i1 %5, label %bb.ce, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit29.i.i

bb.ce:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameECsg6ypMx2A1Am_11wasmi_c_api.exit15.i.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !262), !noalias !8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !265), !noalias !8
  %i.fo = load ptr, ptr %i.fn, align 8, !alias.scope !268, !noalias !8, !nonnull !5, !noundef !5
  %i.fp = atomicrmw sub ptr %i.fo, i64 1 release, align 8, !noalias !269
  %i.fq = icmp eq i64 %i.fp, 1
  br i1 %i.fq, label %bb.cf, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit29.i.i

bb.cf:                                            ; preds = %bb.ce
  fence acquire, !noalias !8
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.fn) #19
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit29.i.i unwind label %bb.ci, !noalias !8, !inline_history !19

bb.cg:                                            ; preds = %bb.ci
  %i.fr = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !270), !noalias !8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273), !noalias !8
  %i.fs = load ptr, ptr %i.fr, align 8, !alias.scope !276, !noalias !8, !nonnull !5, !noundef !5
  %i.ft = atomicrmw sub ptr %i.fs, i64 1 release, align 8, !noalias !283
  %i.fu = icmp eq i64 %i.ft, 1
  br i1 %i.fu, label %bb.ch, label %bb.cq

bb.ch:                                            ; preds = %bb.cg
  fence acquire, !noalias !8
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.fr) #19
          to label %bb.cq unwind label %bb.cd, !noalias !8, !inline_history !19

bb.ci:                                            ; preds = %bb.cf
  %i.fv = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284), !noalias !8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285), !noalias !8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !286), !noalias !8
  %i.fx = load i8, ptr %i.fw, align 8, !range !107, !alias.scope !287, !noalias !8, !noundef !5
  %6 = trunc nuw i8 %i.fx to i1
  br i1 %6, label %bb.cg, label %bb.cq

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit29.i.i: ; preds = %bb.cf, %bb.ce, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameECsg6ypMx2A1Am_11wasmi_c_api.exit15.i.i
  %i.fy = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288), !noalias !8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !291), !noalias !8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294), !noalias !8
  %i.fz = load i8, ptr %i.fy, align 8, !range !107, !alias.scope !297, !noalias !8, !noundef !5
  %7 = trunc nuw i8 %i.fz to i1
  br i1 %7, label %bb.cj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECsg6ypMx2A1Am_11wasmi_c_api.exit

bb.cj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit29.i.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !298), !noalias !8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !301), !noalias !8
  %i.gb = load ptr, ptr %i.ga, align 8, !alias.scope !304, !noalias !8, !nonnull !5, !noundef !5
  %i.gc = atomicrmw sub ptr %i.gb, i64 1 release, align 8, !noalias !305
  %i.gd = icmp eq i64 %i.gc, 1
  br i1 %i.gd, label %.invoke, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECsg6ypMx2A1Am_11wasmi_c_api.exit

.invoke:                                          ; preds = %bb.cj, %bb.cc, %bb.bk, %bb.bd
  %i.ge = phi ptr [ %i.fg, %bb.cc ], [ %i.dr, %bb.bk ], [ %i.cy, %bb.bd ], [ %i.ga, %bb.cj ]
  fence acquire, !noalias !8
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ge) #19
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECsg6ypMx2A1Am_11wasmi_c_api.exit unwind label %bb.cp, !inline_history !19

bb.ck:                                            ; preds = %bb.a
  %i.gf = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val3.i = load ptr, ptr %i.gf, align 8, !alias.scope !11, !noalias !8, !nonnull !5, !noundef !5 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.val3.i, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gg)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i.i12.i unwind label %bb.cl, !noalias !8, !inline_history !19

bb.cl:                                            ; preds = %bb.ck
  %i.gh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gg)
          to label %bb.co unwind label %bb.cm, !noalias !8, !inline_history !19

bb.cm:                                            ; preds = %bb.cl
  %i.gi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !8, !inline_history !19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i.i12.i: ; preds = %bb.ck
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gg)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs9FmeSmcCnTG_10wasmparser13binary_reader17BinaryReaderErrorECsg6ypMx2A1Am_11wasmi_c_api.exit.i unwind label %bb.cn, !noalias !8, !inline_history !19

bb.cn:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i.i12.i
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cl
  %eh.lpad-body.i.i11.i = phi { ptr, i32 } [ %i.gj, %bb.cn ], [ %i.gh, %bb.cl ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef 56, i64 noundef 8) #12, !noalias !8, !inline_history !19
  br label %bb.cq

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs9FmeSmcCnTG_10wasmparser13binary_reader17BinaryReaderErrorECsg6ypMx2A1Am_11wasmi_c_api.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i.i12.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef 56, i64 noundef 8) #12, !noalias !8, !inline_history !19
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECsg6ypMx2A1Am_11wasmi_c_api.exit

bb.cp:                                            ; preds = %.invoke, %bb.ar
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.ai, %bb.co, %bb.aq, %bb.ap, %bb.bi, %bb.ci, %bb.ch, %bb.cg
  %eh.lpad-body = phi { ptr, i32 } [ %i.gk, %bb.cp ], [ %eh.lpad-body.i.i.i, %bb.ai ], [ %eh.lpad-body.i.i11.i, %bb.co ], [ %i.bs, %bb.ap ], [ %i.dk, %bb.bi ], [ %i.bs, %bb.aq ], [ %i.fv, %bb.ci ], [ %i.fv, %bb.ch ], [ %i.fv, %bb.cg ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 112, i64 noundef 8) #12, !noalias !8
  resume { ptr, i32 } %eh.lpad-body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECsg6ypMx2A1Am_11wasmi_c_api.exit: ; preds = %.invoke, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs9FmeSmcCnTG_10wasmparser13binary_reader17BinaryReaderErrorECsg6ypMx2A1Am_11wasmi_c_api.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCskhAzXzJZLSo_3wat5ErrorECsg6ypMx2A1Am_11wasmi_c_api.exit.i, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.ak, %bb.aj, %bb.ao, %bb.an, %bb.ar, %bb.bk, %bb.bj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi8instance7exports10ExternTypeECsg6ypMx2A1Am_11wasmi_c_api.exit15.i.i, %bb.bd, %bb.bc, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameECsg6ypMx2A1Am_11wasmi_c_api.exit14.i.i, %bb.ay, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit.i5.i.i, %bb.cj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit29.i.i, %bb.cc, %bb.cb, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameECsg6ypMx2A1Am_11wasmi_c_api.exit.i10.i, %bb.ca, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit.i24.i.i, %bb.bx, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit.i18.i.i, %bb.br, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit.i6.i.i, %bb.bl
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 112, i64 noundef 8) #12, !noalias !8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameECsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !306)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load i64, ptr %i.a, align 8, !alias.scope !306, !noundef !5 ; 2 uses
  %i.b = icmp eq i64 %.val1.i, 0
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !306, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %.val1.i, i64 noundef 1) #12, !noalias !306
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit: ; preds = %bb.b, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !309)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i4 = load i64, ptr %i.c, align 8, !alias.scope !309, !noundef !5 ; 2 uses
  %i.d = icmp eq i64 %.val1.i4, 0
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit6, label %bb.c

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i5 = load ptr, ptr %i.e, align 8, !alias.scope !309, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i5, i64 noundef range(i64 1, 0) %.val1.i4, i64 noundef 1) #12, !noalias !309
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit6

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit6: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsg6ypMx2A1Am_11wasmi_c_api.exit, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi8instance7exports10ExternTypeECsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef align 8 dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !96, !noundef !5
  %i.b = icmp eq i8 %i.a, 3
  br i1 %i.b, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !318)
  %i.d = load i8, ptr %i.c, align 8, !range !107, !alias.scope !321, !noundef !5
  %1 = trunc nuw i8 %i.d to i1
  br i1 %1, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !322)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !325)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !328, !nonnull !5, !noundef !5
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !328
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e) #19
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types6memory17wasm_memorytype_tEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !329)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332)
  %i.a = load i8, ptr %0, align 8, !range !335, !alias.scope !336, !noundef !5 ; 2 uses
  %i.b = icmp samesign ult i8 %i.a, 2
  br i1 %i.b, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types6extern17wasm_externtype_tEBH_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346)
  %1 = trunc nuw i8 %i.a to i1
  br i1 %1, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !355, !nonnull !5, !noundef !5
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !355
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) #19
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXs8_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_tNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg6ypMx2A1Am_11wasmi_c_api3vec18wasm_valtype_vec_tEBF_.exit.i.i.i unwind label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXs8_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_tNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types4func9CFuncTypeEBH_.exit.i.i unwind label %bb.f

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg6ypMx2A1Am_11wasmi_c_api3vec18wasm_valtype_vec_tEBF_.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.pn.i.i.i = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.g, %bb.e ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_RNvXs8_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_tNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg6ypMx2A1Am_11wasmi_c_api3vec18wasm_valtype_vec_tEBF_.exit6.i.i.i unwind label %bb.g

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg6ypMx2A1Am_11wasmi_c_api3vec18wasm_valtype_vec_tEBF_.exit.i.i.i

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg6ypMx2A1Am_11wasmi_c_api3vec18wasm_valtype_vec_tEBF_.exit.i.i.i, %bb.e
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg6ypMx2A1Am_11wasmi_c_api3vec18wasm_valtype_vec_tEBF_.exit6.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg6ypMx2A1Am_11wasmi_c_api3vec18wasm_valtype_vec_tEBF_.exit.i.i.i
  resume { ptr, i32 } %.pn.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types4func9CFuncTypeEBH_.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_RNvXs8_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_tNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types6extern17wasm_externtype_tEBH_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types6extern17wasm_externtype_tEBH_.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types4func9CFuncTypeEBH_.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5state5StackECsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler4cell4CellENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler4cell4CellEECsg6ypMx2A1Am_11wasmi_c_api.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler4cell4CellENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler4cell4CellEECsg6ypMx2A1Am_11wasmi_c_api.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler4cell4CellENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5state10ValueStackECsg6ypMx2A1Am_11wasmi_c_api.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler4cell4CellEECsg6ypMx2A1Am_11wasmi_c_api.exit.i
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.b, %bb.b ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5state9CallStackECsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef align 8 dereferenceable(48) %0) #18
          to label %common.resume unwind label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5state10ValueStackECsg6ypMx2A1Am_11wasmi_c_api.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler4cell4CellEECsg6ypMx2A1Am_11wasmi_c_api.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5state5FrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5state9CallStackECsg6ypMx2A1Am_11wasmi_c_api.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5state10ValueStackECsg6ypMx2A1Am_11wasmi_c_api.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5state5FrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

common.resume:                                    ; preds = %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.e ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5state9CallStackECsg6ypMx2A1Am_11wasmi_c_api.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5state10ValueStackECsg6ypMx2A1Am_11wasmi_c_api.exit
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5state5FrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  ret void

bb.g:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5state9CallStackECsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5state5FrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5state5FrameEECsg6ypMx2A1Am_11wasmi_c_api.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5state5FrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5state5FrameEECsg6ypMx2A1Am_11wasmi_c_api.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5state5FrameEECsg6ypMx2A1Am_11wasmi_c_api.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5state5FrameEECsg6ypMx2A1Am_11wasmi_c_api.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5state5FrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtCsg6ypMx2A1Am_11wasmi_c_api3val10wasm_val_tNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalEBP_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8, !range !356, !noundef !5
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !357, !noundef !5 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c, !prof !358

bb.b:                                             ; preds = %.noexc
  %i.i = load i64, ptr %i.h, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #20
          to label %.noexc4 unwind label %bb.g

.noexc4:                                          ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.noexc
  %i.j = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5
  %i.k = icmp ule i64 %2, %i.g
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.g, ptr %i.c, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsg6ypMx2A1Am_11wasmi_c_api3val10wasm_val_tE11extend_withBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.b)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsg6ypMx2A1Am_11wasmi_c_api3val10wasm_val_tEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #18
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg6ypMx2A1Am_11wasmi_c_api3val10wasm_val_tEBF_.exit unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
end_hunk_0
begin_hunk_1_@wasm_memory_same:bb.a
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  unreachable
}

; Function Attrs: cold noreturn nounwind nonlazybind uwtable
define void @wasm_memory_set_host_info(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef readnone captures(none) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvNtNtCsG258MDvU3F_3std2io5stdio7__eprint(ptr noundef nonnull @116, ptr noundef nonnull inttoptr (i64 95 to ptr))
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.a = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #17
  unreachable

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @117, ptr noundef nonnull inttoptr (i64 85 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #20
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  unreachable
}

; Function Attrs: cold noreturn nounwind nonlazybind uwtable
define void @wasm_memory_set_host_info_with_finalizer(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvNtNtCsG258MDvU3F_3std2io5stdio7__eprint(ptr noundef nonnull @118, ptr noundef nonnull inttoptr (i64 125 to ptr))
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.a = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #17
  unreachable

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @119, ptr noundef nonnull inttoptr (i64 115 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #20
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef i32 @wasm_memory_size(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load <2 x i32>, ptr %i.d, align 4
  store <2 x i32> %i.e, ptr %i.b, align 8
  %i.f = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = invoke noundef i64 @_RINvMNtCsefoF4u9kbII_5wasmi6memoryNtB3_6Memory4sizeINtNtNtB5_5store7context12StoreContextuEECsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1688) %i.g)
          to label %bb.c unwind label %bb.b       ; 3 uses

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #17
  unreachable

bb.c:                                             ; preds = %bb.a
  store i64 %i.h, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = icmp ugt i64 %i.h, 4294967295
  br i1 %i.j, label %bb.e, label %bb.d, !prof !358

bb.d:                                             ; preds = %bb.c
  %i.k = trunc nuw i64 %i.h to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i32 %i.k

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.45.0..sroa_idx, align 8
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @120, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @121) #20
          to label %bb.f unwind label %bb.b

bb.f:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef nonnull align 8 ptr @wasm_memory_type(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [56 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load <2 x i32>, ptr %i.e, align 4
  store <2 x i32> %i.f, ptr %i.c, align 8
  %i.g = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  invoke void @_RINvMNtCsefoF4u9kbII_5wasmi6memoryNtB3_6Memory2tyINtNtNtB5_5store7context12StoreContextuEECsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1688) %i.h)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #17
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !544
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !548
  store i8 2, ptr %i.a, align 8, !noalias !544
  invoke void @_RNvMs_NtNtCsg6ypMx2A1Am_11wasmi_c_api5types6externNtB4_17wasm_externtype_t16from_extern_type(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !544
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #12, !noalias !549
  %i.k = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 12, 57) 56, i64 noundef range(i64 4, 9) 8) #12, !noalias !549 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %bb.h, !prof !358

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #20
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types6memory17wasm_memorytype_tEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.b) #18
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

.body:                                            ; preds = %bb.f
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #22
  unreachable

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef nonnull align 8 ptr @wasm_memorytype_as_externtype(ptr noalias nofree noundef readnone returned align 8 captures(ret: address, provenance) dereferenceable(56) %0) unnamed_addr #3 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef nonnull align 8 ptr @wasm_memorytype_as_externtype_const(ptr noalias nofree noundef readonly returned align 8 captures(ret: address, read_provenance) dereferenceable(56) %0) unnamed_addr #3 {
bb.a:
  ret ptr %0
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef nonnull align 8 ptr @wasm_memorytype_copy(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.7 = alloca [3 x i8], align 1             ; 3 uses
  %.sroa.8.sroa.0 = alloca [20 x i8], align 4     ; 4 uses
  %i.c = alloca [56 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = load i8, ptr %0, align 8, !range !335, !noundef !5 ; 3 uses
  %i.e = icmp samesign ugt i8 %i.d, 1
  %i.f = zext nneg i8 %i.d to i64
  %i.g = add nsw i64 %i.f, -1
  %i.h = select i1 %i.e, i64 %i.g, i64 0
  switch i64 %i.h, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.o
    i64 2, label %bb.p
    i64 3, label %bb.q
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !552)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !555
  %i.i = trunc nuw i8 %i.d to i1
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.k = load i16, ptr %i.j, align 2, !alias.scope !552, !noalias !557, !noundef !5 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !552, !noalias !557, !nonnull !5, !noundef !5 ; 2 uses
  %i.n = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !noalias !555
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.h, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !552, !noalias !557, !noundef !5
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.s = load i8, ptr %i.r, align 2, !alias.scope !552, !noalias !557, !noundef !5
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3
  %.sroa.05.0.copyload.i = load i8, ptr %i.t, align 1, !alias.scope !552, !noalias !557
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.46.0.copyload.i = load i32, ptr %.sroa.46.0..sroa_idx.i, align 4, !alias.scope !552, !noalias !557
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = zext i8 %.sroa.05.0.copyload.i to i16
  %.sroa.91.0.pre.i = load ptr, ptr %.sroa.57.0..sroa_idx.i, align 8, !alias.scope !552, !noalias !557
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.v = phi ptr [ %i.m, %bb.g ], [ %.sroa.91.0.pre.i, %bb.e ] ; 2 uses
  %.sroa.6.sroa.5.0.i = phi i16 [ %.sroa.6.sroa.5.0.extract.shift.i, %bb.g ], [ %i.u, %bb.e ]
  %.sroa.6.sroa.0.0.i = phi i8 [ %.sroa.6.sroa.0.0.extract.trunc.i, %bb.g ], [ %i.s, %bb.e ]
  %.sroa.9.0.i = phi i32 [ undef, %bb.g ], [ %.sroa.46.0.copyload.i, %bb.e ]
  %.sroa.5.0.i = phi i8 [ undef, %bb.g ], [ %i.q, %bb.e ]
  %.sroa.0.0.copyload9 = phi i8 [ 1, %bb.g ], [ 0, %bb.e ] ; 3 uses
  %.sroa.10.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.10.0.i = load i64, ptr %.sroa.10.0.in.i, align 8, !alias.scope !552, !noalias !557
  %.sroa.6.sroa.5.0.insert.shift.i = shl nuw i16 %.sroa.6.sroa.5.0.i, 8
  %.sroa.6.sroa.0.0.insert.ext.i = zext i8 %.sroa.6.sroa.0.0.i to i16
  %.sroa.6.sroa.0.0.insert.insert.i = or disjoint i16 %.sroa.6.sroa.5.0.insert.shift.i, %.sroa.6.sroa.0.0.insert.ext.i
  store i8 %.sroa.0.0.copyload9, ptr %i.b, align 8, !noalias !555
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  store i8 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx.i, align 1, !noalias !555
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i16 %.sroa.6.sroa.0.0.insert.insert.i, ptr %.sroa.53.0..sroa_idx.i, align 2, !noalias !555
  %.sroa.6.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  store i32 %.sroa.9.0.i, ptr %.sroa.6.0..sroa_idx4.i, align 4, !noalias !555
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.v, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !555
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.10.0.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !555
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !555
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = invoke { i64, ptr } @_RNvXs5_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_tNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.w)
          to label %bb.l unwind label %bb.k, !noalias !557 ; 2 uses

bb.g:                                             ; preds = %bb.d
  %.sroa.6.sroa.0.0.extract.trunc.i = trunc i16 %i.k to i8
  %.sroa.6.sroa.5.0.extract.shift.i = lshr i16 %i.k, 8
  br label %bb.f

bb.h:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg6ypMx2A1Am_11wasmi_c_api3vec18wasm_valtype_vec_tEBF_.exit.i: ; preds = %bb.m, %bb.k
  %1 = trunc nuw i8 %.sroa.0.0.copyload9 to i1
  br i1 %1, label %bb.i, label %.body7

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg6ypMx2A1Am_11wasmi_c_api3vec18wasm_valtype_vec_tEBF_.exit.i
  %i.y = atomicrmw sub ptr %i.v, i64 1 release, align 8, !noalias !558
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.j, label %.body7

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i) #19
          to label %.body7 unwind label %bb.n, !noalias !557

bb.k:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg6ypMx2A1Am_11wasmi_c_api3vec18wasm_valtype_vec_tEBF_.exit.i

bb.l:                                             ; preds = %bb.f
  %i.ab = extractvalue { i64, ptr } %i.x, 0       ; 2 uses
  %i.ac = extractvalue { i64, ptr } %i.x, 1       ; 2 uses
  store i64 %i.ab, ptr %i.a, align 8, !noalias !555
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ac, ptr %i.ad, align 8, !noalias !555
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = invoke { i64, ptr } @_RNvXs5_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_tNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ae)
          to label %bb.r unwind label %bb.m, !noalias !557 ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs8_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_tNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg6ypMx2A1Am_11wasmi_c_api3vec18wasm_valtype_vec_tEBF_.exit.i unwind label %bb.n, !noalias !557

bb.n:                                             ; preds = %bb.m, %bb.j
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !557
  unreachable

bb.o:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.7, ptr noundef nonnull align 1 dereferenceable(3) %i.ai, i64 3, i1 false)
  br label %bb.s

bb.p:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.422.0.copyload = load i64, ptr %.sroa.422.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx23, align 8
  %.sroa.624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.624.0.copyload = load i64, ptr %.sroa.624.0..sroa_idx, align 8
  %.sroa.8.sroa.0.4..sroa_idx14 = getelementptr inbounds nuw i8, ptr %.sroa.8.sroa.0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8.sroa.0.4..sroa_idx14, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false)
  br label %bb.s

bb.q:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.426.0.copyload = load i64, ptr %.sroa.426.0..sroa_idx, align 8
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.527.0.copyload = load ptr, ptr %.sroa.527.0..sroa_idx, align 8
  %.sroa.628.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.628.0.copyload = load i64, ptr %.sroa.628.0..sroa_idx, align 8
  %.sroa.729.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.729.0.copyload = load ptr, ptr %.sroa.729.0..sroa_idx, align 8
  %.sroa.8.sroa.0.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.8.sroa.0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8.sroa.0.4..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i64 16, i1 false)
  br label %bb.s

.body7:                                           ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg6ypMx2A1Am_11wasmi_c_api3vec18wasm_valtype_vec_tEBF_.exit.i, %bb.i, %bb.j
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #17
  unreachable

bb.r:                                             ; preds = %bb.l
  %i.al = extractvalue { i64, ptr } %i.af, 0
  %i.am = extractvalue { i64, ptr } %i.af, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.7, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4.0..sroa_idx.i, i64 3, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.8.sroa.0, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6.0..sroa_idx4.i, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !555
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %.sroa.8.sroa.9.0 = phi ptr [ %i.am, %bb.r ], [ undef, %bb.o ], [ undef, %bb.p ], [ %.sroa.729.0.copyload, %bb.q ]
  %.sroa.8.sroa.8.0 = phi i64 [ %i.al, %bb.r ], [ undef, %bb.o ], [ %.sroa.624.0.copyload, %bb.p ], [ %.sroa.628.0.copyload, %bb.q ]
  %.sroa.8.sroa.7.0 = phi ptr [ %i.ac, %bb.r ], [ undef, %bb.o ], [ %.sroa.5.0.copyload, %bb.p ], [ %.sroa.527.0.copyload, %bb.q ]
  %.sroa.8.sroa.6.0 = phi i64 [ %i.ab, %bb.r ], [ undef, %bb.o ], [ %.sroa.422.0.copyload, %bb.p ], [ %.sroa.426.0.copyload, %bb.q ]
  %.sroa.0.0 = phi i8 [ %.sroa.0.0.copyload9, %bb.r ], [ 2, %bb.o ], [ 3, %bb.p ], [ 4, %bb.q ]
  store i8 %.sroa.0.0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.7, i64 3, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.8.sroa.0, i64 20, i1 false)
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %.sroa.8.sroa.6.0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %.sroa.8.sroa.7.0, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %.sroa.8.sroa.8.0, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %.sroa.8.sroa.9.0, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #12, !noalias !569
  %i.an = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 12, 57) 56, i64 noundef range(i64 4, 9) 8) #12, !noalias !569 ; 3 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.t, label %bb.w, !prof !358

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #20
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.t
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types6memory17wasm_memorytype_tEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c) #18
          to label %.body unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

.body:                                            ; preds = %bb.u
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #22
  unreachable

bb.w:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.an, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %i.an
}

; Function Attrs: nounwind nonlazybind uwtable
define void @wasm_memorytype_delete(ptr noalias noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !572)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !575)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !578)
  %i.a = load i8, ptr %0, align 8, !range !335, !alias.scope !581, !noundef !5 ; 2 uses
  %i.b = icmp samesign ult i8 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !582)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !585)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !588)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !591)
  %1 = trunc nuw i8 %i.a to i1
  br i1 %1, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !594)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !597)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !600, !nonnull !5, !noundef !5
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !600
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) #19
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXs8_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_tNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg6ypMx2A1Am_11wasmi_c_api3vec18wasm_valtype_vec_tEBF_.exit.i.i.i.i.i unwind label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXs8_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_tNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types4func9CFuncTypeEBH_.exit.i.i.i.i unwind label %bb.f

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg6ypMx2A1Am_11wasmi_c_api3vec18wasm_valtype_vec_tEBF_.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_RNvXs8_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_tNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %.body unwind label %bb.g

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i.i.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg6ypMx2A1Am_11wasmi_c_api3vec18wasm_valtype_vec_tEBF_.exit.i.i.i.i.i

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg6ypMx2A1Am_11wasmi_c_api3vec18wasm_valtype_vec_tEBF_.exit.i.i.i.i.i, %bb.e
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types4func9CFuncTypeEBH_.exit.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_RNvXs8_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_tNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types4func9CFuncTypeEBH_.exit.i.i.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg6ypMx2A1Am_11wasmi_c_api3vec18wasm_valtype_vec_tEBF_.exit.i.i.i.i.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 56, i64 noundef 8) #12
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #22
  unreachable

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types4func9CFuncTypeEBH_.exit.i.i.i.i, %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 56, i64 noundef 8) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define noundef nonnull align 4 ptr @wasm_memorytype_limits(ptr noalias nofree noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(56) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  ret ptr %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef nonnull align 8 ptr @wasm_memorytype_new(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [56 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = load i32, ptr %0, align 4, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !noundef !5 ; 2 uses
  %i.g = icmp ne i32 %i.f, -1
  %. = zext i1 %i.g to i32
  invoke void @_RNvMNtNtCsefoF4u9kbII_5wasmi6memory2tyNtB2_10MemoryType3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, i32 noundef %i.d, i32 noundef %., i32 %i.f)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #17
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !601
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.c, i64 32, i1 false), !noalias !605
  store i8 2, ptr %i.a, align 8, !noalias !601
  invoke void @_RNvMs_NtNtCsg6ypMx2A1Am_11wasmi_c_api5types6externNtB4_17wasm_externtype_t16from_extern_type(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !601
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #12, !noalias !606
  %i.j = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 12, 57) 56, i64 noundef range(i64 4, 9) 8) #12, !noalias !606 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.e, label %bb.h, !prof !358

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #20
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types6memory17wasm_memorytype_tEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.b) #18
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

.body:                                            ; preds = %bb.f
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #22
  unreachable

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %i.j
}

; Function Attrs: nounwind nonlazybind uwtable
define void @wasm_val_copy(ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !609)
  %i.b = load i8, ptr %1, align 8, !range !359, !alias.scope !609, !noalias !612, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.c, align 8, !alias.scope !609, !noalias !612 ; 3 uses
  %switch.i = icmp ult i8 %i.b, 4
  %i.d = icmp eq i64 %.sroa.0.0.copyload.i, 0
  %or.cond.i = select i1 %switch.i, i1 true, i1 %i.d
  br i1 %or.cond.i, label %_RNvXs_NtCsg6ypMx2A1Am_11wasmi_c_api3valNtB4_10wasm_val_tNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.cast.i = inttoptr i64 %.sroa.0.0.copyload.i to ptr ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %.cast.i, i64 12, i1 false), !noalias !614
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #12, !noalias !614
  %i.e = tail call noundef align 4 dereferenceable_or_null(12) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 12, 57) 12, i64 noundef range(i64 4, 9) 4) #12, !noalias !614 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.d, !prof !358

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef 12) #20
          to label %.noexc.i unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg6ypMx2A1Am_11wasmi_c_api3val10wasm_val_tEBF_.exit.i, !noalias !614

.noexc.i:                                         ; preds = %bb.c
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg6ypMx2A1Am_11wasmi_c_api3val10wasm_val_tEBF_.exit.i: ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.cast.i, i64 noundef 12, i64 noundef 4) #12, !noalias !615
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #17
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.a, i64 12, i1 false), !noalias !614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = ptrtoint ptr %i.e to i64
  br label %_RNvXs_NtCsg6ypMx2A1Am_11wasmi_c_api3valNtB4_10wasm_val_tNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

_RNvXs_NtCsg6ypMx2A1Am_11wasmi_c_api3valNtB4_10wasm_val_tNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit: ; preds = %bb.d, %bb.a
  %.sroa.57.0.i = phi i64 [ %.sroa.0.0.copyload.i, %bb.a ], [ %i.h, %bb.d ]
  store i8 %i.b, ptr %0, align 8
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.57.0.i, ptr %.sroa.41.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @wasm_val_delete(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !618)
  %i.a = load i8, ptr %0, align 8, !range !359, !alias.scope !618, !noundef !5
  %switch.i = icmp ult i8 %i.a, 4
  br i1 %switch.i, label %_RNvXNtCsg6ypMx2A1Am_11wasmi_c_api3valNtB2_10wasm_val_tNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !618, !noundef !5 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_RNvXNtCsg6ypMx2A1Am_11wasmi_c_api3valNtB2_10wasm_val_tNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop.exit, label %bb.c
end_hunk_1

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi.wasmi.2e05a1d9f0df8596-cgu.08?download=true
inline.NumInlined: 284
inline.NumDeleted: 145
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi5error5ErrorECs3WYoaQ2jqaU_5wasmi:bb.a
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef align 8 dereferenceable(24) %i.az) #23
          to label %bb.ai unwind label %bb.ac, !noalias !145, !inline_history !156

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3WYoaQ2jqaU_5wasmi.exit.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3WYoaQ2jqaU_5wasmi.exit.i.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.val.i2, i64 24 ; 4 uses
  %i.bb = load i64, ptr %i.ba, align 8, !range !97, !alias.scope !180, !noalias !145, !noundef !5
  %i.bc = icmp eq i64 %i.bb, -1
  br i1 %i.bc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCskhAzXzJZLSo_3wat5ErrorECs3WYoaQ2jqaU_5wasmi.exit.i, label %bb.ae

bb.ae:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3WYoaQ2jqaU_5wasmi.exit.i.i.i.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs3WYoaQ2jqaU_5wasmi.exit.i3.i.invoke.i.i.i unwind label %bb.af, !noalias !145, !inline_history !156

bb.af:                                            ; preds = %bb.ae
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %bb.ai unwind label %bb.ag, !noalias !145, !inline_history !156

bb.ag:                                            ; preds = %bb.af
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !145, !inline_history !156
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs3WYoaQ2jqaU_5wasmi.exit.i3.i.invoke.i.i.i: ; preds = %bb.ae, %bb.z
  %i.bf = phi ptr [ %i.as, %bb.z ], [ %i.ba, %bb.ae ]
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCskhAzXzJZLSo_3wat5ErrorECs3WYoaQ2jqaU_5wasmi.exit.i unwind label %bb.ah, !noalias !145, !inline_history !156

bb.ah:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs3WYoaQ2jqaU_5wasmi.exit.i3.i.invoke.i.i.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.af, %.body.i.i.i.i, %bb.aa, %bb.x, %bb.t
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.bg, %bb.ah ], [ %eh.lpad-body.i.i.i.i.i.i, %bb.t ], [ %i.aq, %bb.x ], [ %i.av, %bb.aa ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ], [ %i.bd, %bb.af ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i2, i64 noundef 48, i64 noundef 8) #26, !noalias !145, !inline_history !156
  br label %bb.bx

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCskhAzXzJZLSo_3wat5ErrorECs3WYoaQ2jqaU_5wasmi.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs3WYoaQ2jqaU_5wasmi.exit.i3.i.invoke.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3WYoaQ2jqaU_5wasmi.exit.i.i.i.i, %bb.y, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1VvpiNK3DOA_4wast5error5ErrorECs3WYoaQ2jqaU_5wasmi.exit.i.i.i.i
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i2, i64 noundef 48, i64 noundef 8) #26, !noalias !145, !inline_history !156
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECs3WYoaQ2jqaU_5wasmi.exit

bb.aj:                                            ; preds = %bb.a
  %i.bh = getelementptr i8, ptr %i.b, i64 16
  %.val2.i = load i64, ptr %i.bh, align 8, !alias.scope !148, !noalias !145, !noundef !5 ; 2 uses
  %i.bi = icmp eq i64 %.val2.i, 0
  br i1 %i.bi, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECs3WYoaQ2jqaU_5wasmi.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.aj
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val1.i1 = load ptr, ptr %i.bj, align 8, !alias.scope !148, !noalias !145, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i1, i64 noundef %.val2.i, i64 noundef 1) #26, !noalias !145, !inline_history !156
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECs3WYoaQ2jqaU_5wasmi.exit

bb.ak:                                            ; preds = %bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val3.i = load ptr, ptr %i.bk, align 8, !alias.scope !148, !noalias !145 ; 5 uses
  %i.bl = getelementptr i8, ptr %i.b, i64 16
  %.val4.i = load ptr, ptr %i.bl, align 8, !alias.scope !148, !noalias !145, !nonnull !5, !align !6, !noundef !5 ; 5 uses
  %i.bm = load ptr, ptr %.val4.i, align 8, !invariant.load !5, !noalias !145 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3.i) ], !noalias !145
  invoke void %i.bm(ptr noundef nonnull %.val3.i)
          to label %bb.am unwind label %bb.an, !noalias !145, !inline_history !156

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.bn = getelementptr inbounds nuw i8, ptr %.val4.i, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !range !138, !invariant.load !5, !noalias !145 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECs3WYoaQ2jqaU_5wasmi.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i6.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i6.i: ; preds = %bb.am
  %i.bq = getelementptr inbounds nuw i8, ptr %.val4.i, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !range !139, !invariant.load !5, !noalias !145
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3.i) ], !noalias !145
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.bo, i64 noundef range(i64 1, 536870913) %i.br) #26, !noalias !145, !inline_history !156
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECs3WYoaQ2jqaU_5wasmi.exit

bb.an:                                            ; preds = %bb.al
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.val4.i, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !range !138, !invariant.load !5, !noalias !145 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %bb.bx, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.an
  %i.bw = getelementptr inbounds nuw i8, ptr %.val4.i, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !range !139, !invariant.load !5, !noalias !145
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.bu, i64 noundef range(i64 1, 536870913) %i.bx) #26, !noalias !145, !inline_history !156
  br label %bb.bx

bb.ao:                                            ; preds = %bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi5error5ErrorECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECs3WYoaQ2jqaU_5wasmi.exit unwind label %bb.bw, !inline_history !156

bb.ap:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183), !noalias !145
  %i.bz = add nsw i8 %i.c, -4
  %i.ca = icmp samesign ugt i8 %i.c, 3
  %narrow.i.i = select i1 %i.ca, i8 %i.bz, i8 2
  switch i8 %narrow.i.i, label %bb.aq [
    i8 0, label %bb.ar
    i8 1, label %bb.as
  ]

bb.aq:                                            ; preds = %bb.ap
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186), !noalias !145
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.val5.i.i.i = load i64, ptr %i.cb, align 8, !alias.scope !189, !noalias !145, !noundef !5 ; 2 uses
  %i.cc = icmp eq i64 %.val5.i.i.i, 0
  br i1 %i.cc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs3WYoaQ2jqaU_5wasmi.exit.i.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.aq
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.val4.i.i.i = load ptr, ptr %i.cd, align 8, !alias.scope !189, !noalias !145, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i, i64 noundef %.val5.i.i.i, i64 noundef 1) #26, !noalias !190, !inline_history !156
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs3WYoaQ2jqaU_5wasmi.exit.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs3WYoaQ2jqaU_5wasmi.exit.i.i.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.aq
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %.val1.i.i.i = load i64, ptr %i.ce, align 8, !alias.scope !189, !noalias !145, !noundef !5 ; 2 uses
  %i.cf = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.cf, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameECs3WYoaQ2jqaU_5wasmi.exit.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i8.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i8.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs3WYoaQ2jqaU_5wasmi.exit.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.val.i.i.i = load ptr, ptr %i.cg, align 8, !alias.scope !189, !noalias !145, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %.val1.i.i.i, i64 noundef 1) #26, !noalias !190, !inline_history !156
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameECs3WYoaQ2jqaU_5wasmi.exit.i.i

bb.ar:                                            ; preds = %bb.ap
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191), !noalias !145
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val5.i3.i.i = load i64, ptr %i.ch, align 8, !alias.scope !194, !noalias !145, !noundef !5 ; 2 uses
  %i.ci = icmp eq i64 %.val5.i3.i.i, 0
  br i1 %i.ci, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs3WYoaQ2jqaU_5wasmi.exit.i6.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i: ; preds = %bb.ar
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val4.i5.i.i = load ptr, ptr %i.cj, align 8, !alias.scope !194, !noalias !145, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i5.i.i, i64 noundef %.val5.i3.i.i, i64 noundef 1) #26, !noalias !195, !inline_history !156
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs3WYoaQ2jqaU_5wasmi.exit.i6.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs3WYoaQ2jqaU_5wasmi.exit.i6.i.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i, %bb.ar
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.val1.i7.i.i = load i64, ptr %i.ck, align 8, !alias.scope !194, !noalias !145, !noundef !5 ; 2 uses
  %i.cl = icmp eq i64 %.val1.i7.i.i, 0
  br i1 %i.cl, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECs3WYoaQ2jqaU_5wasmi.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i8.i8.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i8.i8.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs3WYoaQ2jqaU_5wasmi.exit.i6.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.val.i9.i.i = load ptr, ptr %i.cm, align 8, !alias.scope !194, !noalias !145, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i9.i.i, i64 noundef %.val1.i7.i.i, i64 noundef 1) #26, !noalias !195, !inline_history !156
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECs3WYoaQ2jqaU_5wasmi.exit

bb.as:                                            ; preds = %bb.ap
  tail call void @llvm.experimental.noalias.scope.decl(metadata !196), !noalias !145
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.val5.i11.i.i = load i64, ptr %i.cn, align 8, !alias.scope !199, !noalias !145, !noundef !5 ; 2 uses
  %i.co = icmp eq i64 %.val5.i11.i.i, 0
  br i1 %i.co, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs3WYoaQ2jqaU_5wasmi.exit.i14.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i12.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i12.i.i: ; preds = %bb.as
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.val4.i13.i.i = load ptr, ptr %i.cp, align 8, !alias.scope !199, !noalias !145, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i13.i.i, i64 noundef %.val5.i11.i.i, i64 noundef 1) #26, !noalias !200, !inline_history !156
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs3WYoaQ2jqaU_5wasmi.exit.i14.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs3WYoaQ2jqaU_5wasmi.exit.i14.i.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i12.i.i, %bb.as
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %.val1.i15.i.i = load i64, ptr %i.cq, align 8, !alias.scope !199, !noalias !145, !noundef !5 ; 2 uses
  %i.cr = icmp eq i64 %.val1.i15.i.i, 0
  br i1 %i.cr, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameECs3WYoaQ2jqaU_5wasmi.exit18.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i8.i16.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i8.i16.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs3WYoaQ2jqaU_5wasmi.exit.i14.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.val.i17.i.i = load ptr, ptr %i.cs, align 8, !alias.scope !199, !noalias !145, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i17.i.i, i64 noundef %.val1.i15.i.i, i64 noundef 1) #26, !noalias !200, !inline_history !156
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameECs3WYoaQ2jqaU_5wasmi.exit18.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameECs3WYoaQ2jqaU_5wasmi.exit18.i.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i8.i16.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs3WYoaQ2jqaU_5wasmi.exit.i14.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201), !noalias !145
  %i.cu = load i8, ptr %i.ct, align 8, !range !204, !alias.scope !205, !noalias !145, !noundef !5
  %i.cv = icmp eq i8 %i.cu, 3
  br i1 %i.cv, label %bb.at, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECs3WYoaQ2jqaU_5wasmi.exit

bb.at:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameECs3WYoaQ2jqaU_5wasmi.exit18.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206), !noalias !145
  tail call void @llvm.experimental.noalias.scope.decl(metadata !209), !noalias !145
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212), !noalias !145
  %i.cx = load i8, ptr %i.cw, align 8, !range !215, !alias.scope !216, !noalias !145, !noundef !5
  %1 = icmp eq i8 %i.cx, 0
  br i1 %1, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECs3WYoaQ2jqaU_5wasmi.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !217), !noalias !145
  tail call void @llvm.experimental.noalias.scope.decl(metadata !220), !noalias !145
  %i.cz = load ptr, ptr %i.cy, align 8, !alias.scope !223, !noalias !145, !nonnull !5, !noundef !5
  %i.da = atomicrmw sub ptr %i.cz, i64 1 release, align 8, !noalias !224
  %i.db = icmp eq i64 %i.da, 1
  br i1 %i.db, label %.invoke, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECs3WYoaQ2jqaU_5wasmi.exit

bb.av:                                            ; preds = %bb.az
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !145, !inline_history !156
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameECs3WYoaQ2jqaU_5wasmi.exit.i.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i8.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs3WYoaQ2jqaU_5wasmi.exit.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225), !noalias !145
  %i.dd = icmp eq i8 %i.c, 3
  br i1 %i.dd, label %bb.aw, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi8instance7exports10ExternTypeECs3WYoaQ2jqaU_5wasmi.exit19.i.i

bb.aw:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameECs3WYoaQ2jqaU_5wasmi.exit.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228), !noalias !145
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231), !noalias !145
  tail call void @llvm.experimental.noalias.scope.decl(metadata !234), !noalias !145
  %i.df = load i8, ptr %i.de, align 8, !range !215, !alias.scope !237, !noalias !145, !noundef !5
  %2 = icmp eq i8 %i.df, 0
  br i1 %2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi8instance7exports10ExternTypeECs3WYoaQ2jqaU_5wasmi.exit19.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238), !noalias !145
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241), !noalias !145
  %i.dh = load ptr, ptr %i.dg, align 8, !alias.scope !244, !noalias !145, !nonnull !5, !noundef !5
  %i.di = atomicrmw sub ptr %i.dh, i64 1 release, align 8, !noalias !245
  %i.dj = icmp eq i64 %i.di, 1
  br i1 %i.dj, label %bb.ay, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi8instance7exports10ExternTypeECs3WYoaQ2jqaU_5wasmi.exit19.i.i

bb.ay:                                            ; preds = %bb.ax
  fence acquire, !noalias !145
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.dg) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi8instance7exports10ExternTypeECs3WYoaQ2jqaU_5wasmi.exit19.i.i unwind label %bb.az, !noalias !145, !inline_history !156

bb.az:                                            ; preds = %bb.ay
  %i.dk = landingpad { ptr, i32 }
          cleanup
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi8instance7exports10ExternTypeECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef align 8 dereferenceable(40) %i.dl) #23
          to label %bb.bx unwind label %bb.av, !noalias !145, !inline_history !156

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi8instance7exports10ExternTypeECs3WYoaQ2jqaU_5wasmi.exit19.i.i: ; preds = %bb.ay, %bb.ax, %bb.aw, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameECs3WYoaQ2jqaU_5wasmi.exit.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246), !noalias !145
  %i.dn = load i8, ptr %i.dm, align 8, !range !204, !alias.scope !249, !noalias !145, !noundef !5
  %i.do = icmp eq i8 %i.dn, 3
  br i1 %i.do, label %bb.ba, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECs3WYoaQ2jqaU_5wasmi.exit

bb.ba:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi8instance7exports10ExternTypeECs3WYoaQ2jqaU_5wasmi.exit19.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250), !noalias !145
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253), !noalias !145
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256), !noalias !145
  %i.dq = load i8, ptr %i.dp, align 8, !range !215, !alias.scope !259, !noalias !145, !noundef !5
  %3 = icmp eq i8 %i.dq, 0
  br i1 %3, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECs3WYoaQ2jqaU_5wasmi.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260), !noalias !145
  tail call void @llvm.experimental.noalias.scope.decl(metadata !263), !noalias !145
  %i.ds = load ptr, ptr %i.dr, align 8, !alias.scope !266, !noalias !145, !nonnull !5, !noundef !5
  %i.dt = atomicrmw sub ptr %i.ds, i64 1 release, align 8, !noalias !267
  %i.du = icmp eq i64 %i.dt, 1
  br i1 %i.du, label %.invoke, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECs3WYoaQ2jqaU_5wasmi.exit

bb.bc:                                            ; preds = %bb.a
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268), !noalias !145
  %i.dw = load i8, ptr %i.dv, align 8, !range !271, !alias.scope !272, !noalias !145, !noundef !5
  switch i8 %i.dw, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECs3WYoaQ2jqaU_5wasmi.exit [
    i8 1, label %bb.bd
    i8 2, label %bb.be
    i8 3, label %bb.bf
    i8 4, label %bb.bg
    i8 5, label %bb.bh
  ]

bb.bd:                                            ; preds = %bb.bc
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273), !noalias !145
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.val5.i.i7.i = load i64, ptr %i.dx, align 8, !alias.scope !276, !noalias !145, !noundef !5 ; 2 uses
  %i.dy = icmp eq i64 %.val5.i.i7.i, 0
  br i1 %i.dy, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs3WYoaQ2jqaU_5wasmi.exit.i.i10.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i8.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i8.i: ; preds = %bb.bd
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.val4.i.i9.i = load ptr, ptr %i.dz, align 8, !alias.scope !276, !noalias !145, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i9.i, i64 noundef %.val5.i.i7.i, i64 noundef 1) #26, !noalias !277, !inline_history !156
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs3WYoaQ2jqaU_5wasmi.exit.i.i10.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs3WYoaQ2jqaU_5wasmi.exit.i.i10.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i8.i, %bb.bd
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.val1.i.i11.i = load i64, ptr %i.ea, align 8, !alias.scope !276, !noalias !145, !noundef !5 ; 2 uses
  %i.eb = icmp eq i64 %.val1.i.i11.i, 0
  br i1 %i.eb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameECs3WYoaQ2jqaU_5wasmi.exit.i14.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i8.i.i12.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i8.i.i12.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs3WYoaQ2jqaU_5wasmi.exit.i.i10.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.val.i.i13.i = load ptr, ptr %i.ec, align 8, !alias.scope !276, !noalias !145, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i13.i, i64 noundef %.val1.i.i11.i, i64 noundef 1) #26, !noalias !277, !inline_history !156
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameECs3WYoaQ2jqaU_5wasmi.exit.i14.i

bb.be:                                            ; preds = %bb.bc
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278), !noalias !145
  %i.ed = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.val5.i4.i.i = load i64, ptr %i.ed, align 8, !alias.scope !281, !noalias !145, !noundef !5 ; 2 uses
  %i.ee = icmp eq i64 %.val5.i4.i.i, 0
  br i1 %i.ee, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs3WYoaQ2jqaU_5wasmi.exit.i7.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i5.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i5.i.i: ; preds = %bb.be
  %i.ef = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val4.i6.i.i = load ptr, ptr %i.ef, align 8, !alias.scope !281, !noalias !145, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i6.i.i, i64 noundef %.val5.i4.i.i, i64 noundef 1) #26, !noalias !282, !inline_history !156
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs3WYoaQ2jqaU_5wasmi.exit.i7.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs3WYoaQ2jqaU_5wasmi.exit.i7.i.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i5.i.i, %bb.be
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.val1.i8.i.i = load i64, ptr %i.eg, align 8, !alias.scope !281, !noalias !145, !noundef !5 ; 2 uses
  %i.eh = icmp eq i64 %.val1.i8.i.i, 0
  br i1 %i.eh, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECs3WYoaQ2jqaU_5wasmi.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i8.i9.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i8.i9.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs3WYoaQ2jqaU_5wasmi.exit.i7.i.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.val.i10.i.i = load ptr, ptr %i.ei, align 8, !alias.scope !281, !noalias !145, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i10.i.i, i64 noundef %.val1.i8.i.i, i64 noundef 1) #26, !noalias !282, !inline_history !156
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECs3WYoaQ2jqaU_5wasmi.exit

bb.bf:                                            ; preds = %bb.bc
  tail call void @llvm.experimental.noalias.scope.decl(metadata !283), !noalias !145
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.val5.i12.i.i = load i64, ptr %i.ej, align 8, !alias.scope !286, !noalias !145, !noundef !5 ; 2 uses
  %i.ek = icmp eq i64 %.val5.i12.i.i, 0
  br i1 %i.ek, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs3WYoaQ2jqaU_5wasmi.exit.i15.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i13.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i13.i.i: ; preds = %bb.bf
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val4.i14.i.i = load ptr, ptr %i.el, align 8, !alias.scope !286, !noalias !145, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i14.i.i, i64 noundef %.val5.i12.i.i, i64 noundef 1) #26, !noalias !287, !inline_history !156
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs3WYoaQ2jqaU_5wasmi.exit.i15.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs3WYoaQ2jqaU_5wasmi.exit.i15.i.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i13.i.i, %bb.bf
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.val1.i16.i.i = load i64, ptr %i.em, align 8, !alias.scope !286, !noalias !145, !noundef !5 ; 2 uses
  %i.en = icmp eq i64 %.val1.i16.i.i, 0
  br i1 %i.en, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameECs3WYoaQ2jqaU_5wasmi.exit19.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i8.i17.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i8.i17.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs3WYoaQ2jqaU_5wasmi.exit.i15.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.val.i18.i.i = load ptr, ptr %i.eo, align 8, !alias.scope !286, !noalias !145, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i18.i.i, i64 noundef %.val1.i16.i.i, i64 noundef 1) #26, !noalias !287, !inline_history !156
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameECs3WYoaQ2jqaU_5wasmi.exit19.i.i

bb.bg:                                            ; preds = %bb.bc
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288), !noalias !145
  %i.ep = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.val5.i20.i.i = load i64, ptr %i.ep, align 8, !alias.scope !291, !noalias !145, !noundef !5 ; 2 uses
  %i.eq = icmp eq i64 %.val5.i20.i.i, 0
  br i1 %i.eq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs3WYoaQ2jqaU_5wasmi.exit.i23.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i21.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i21.i.i: ; preds = %bb.bg
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val4.i22.i.i = load ptr, ptr %i.er, align 8, !alias.scope !291, !noalias !145, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i22.i.i, i64 noundef %.val5.i20.i.i, i64 noundef 1) #26, !noalias !292, !inline_history !156
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs3WYoaQ2jqaU_5wasmi.exit.i23.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs3WYoaQ2jqaU_5wasmi.exit.i23.i.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i21.i.i, %bb.bg
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.val1.i24.i.i = load i64, ptr %i.es, align 8, !alias.scope !291, !noalias !145, !noundef !5 ; 2 uses
  %i.et = icmp eq i64 %.val1.i24.i.i, 0
  br i1 %i.et, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECs3WYoaQ2jqaU_5wasmi.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i8.i25.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i8.i25.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs3WYoaQ2jqaU_5wasmi.exit.i23.i.i
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.val.i26.i.i = load ptr, ptr %i.eu, align 8, !alias.scope !291, !noalias !145, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i26.i.i, i64 noundef %.val1.i24.i.i, i64 noundef 1) #26, !noalias !292, !inline_history !156
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECs3WYoaQ2jqaU_5wasmi.exit

bb.bh:                                            ; preds = %bb.bc
  tail call void @llvm.experimental.noalias.scope.decl(metadata !293), !noalias !145
  %i.ev = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.val5.i28.i.i = load i64, ptr %i.ev, align 8, !alias.scope !296, !noalias !145, !noundef !5 ; 2 uses
  %i.ew = icmp eq i64 %.val5.i28.i.i, 0
  br i1 %i.ew, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs3WYoaQ2jqaU_5wasmi.exit.i31.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i29.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i29.i.i: ; preds = %bb.bh
  %i.ex = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val4.i30.i.i = load ptr, ptr %i.ex, align 8, !alias.scope !296, !noalias !145, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i30.i.i, i64 noundef %.val5.i28.i.i, i64 noundef 1) #26, !noalias !297, !inline_history !156
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs3WYoaQ2jqaU_5wasmi.exit.i31.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs3WYoaQ2jqaU_5wasmi.exit.i31.i.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i29.i.i, %bb.bh
  %i.ey = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.val1.i32.i.i = load i64, ptr %i.ey, align 8, !alias.scope !296, !noalias !145, !noundef !5 ; 2 uses
  %i.ez = icmp eq i64 %.val1.i32.i.i, 0
  br i1 %i.ez, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECs3WYoaQ2jqaU_5wasmi.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i8.i33.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i8.i33.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs3WYoaQ2jqaU_5wasmi.exit.i31.i.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.val.i34.i.i = load ptr, ptr %i.fa, align 8, !alias.scope !296, !noalias !145, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i34.i.i, i64 noundef %.val1.i32.i.i, i64 noundef 1) #26, !noalias !297, !inline_history !156
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECs3WYoaQ2jqaU_5wasmi.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameECs3WYoaQ2jqaU_5wasmi.exit.i14.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i8.i.i12.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs3WYoaQ2jqaU_5wasmi.exit.i.i10.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !298), !noalias !145
  %i.fc = load i8, ptr %i.fb, align 8, !range !204, !alias.scope !301, !noalias !145, !noundef !5
  %i.fd = icmp eq i8 %i.fc, 3
  br i1 %i.fd, label %bb.bi, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECs3WYoaQ2jqaU_5wasmi.exit

bb.bi:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameECs3WYoaQ2jqaU_5wasmi.exit.i14.i
  %i.fe = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !302), !noalias !145
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305), !noalias !145
  tail call void @llvm.experimental.noalias.scope.decl(metadata !308), !noalias !145
  %i.ff = load i8, ptr %i.fe, align 8, !range !215, !alias.scope !311, !noalias !145, !noundef !5
  %4 = icmp eq i8 %i.ff, 0
  br i1 %4, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECs3WYoaQ2jqaU_5wasmi.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fg = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !312), !noalias !145
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315), !noalias !145
  %i.fh = load ptr, ptr %i.fg, align 8, !alias.scope !318, !noalias !145, !nonnull !5, !noundef !5
  %i.fi = atomicrmw sub ptr %i.fh, i64 1 release, align 8, !noalias !319
  %i.fj = icmp eq i64 %i.fi, 1
  br i1 %i.fj, label %.invoke, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECs3WYoaQ2jqaU_5wasmi.exit

bb.bk:                                            ; preds = %bb.bo
  %i.fk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !145, !inline_history !156
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameECs3WYoaQ2jqaU_5wasmi.exit19.i.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i8.i17.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs3WYoaQ2jqaU_5wasmi.exit.i15.i.i
  %i.fl = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !320), !noalias !145
  tail call void @llvm.experimental.noalias.scope.decl(metadata !323), !noalias !145
  tail call void @llvm.experimental.noalias.scope.decl(metadata !326), !noalias !145
  %i.fm = load i8, ptr %i.fl, align 8, !range !215, !alias.scope !329, !noalias !145, !noundef !5
  %5 = icmp eq i8 %i.fm, 0
  br i1 %5, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECs3WYoaQ2jqaU_5wasmi.exit37.i.i, label %bb.bl

bb.bl:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameECs3WYoaQ2jqaU_5wasmi.exit19.i.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !330), !noalias !145
  tail call void @llvm.experimental.noalias.scope.decl(metadata !333), !noalias !145
  %i.fo = load ptr, ptr %i.fn, align 8, !alias.scope !336, !noalias !145, !nonnull !5, !noundef !5
  %i.fp = atomicrmw sub ptr %i.fo, i64 1 release, align 8, !noalias !337
  %i.fq = icmp eq i64 %i.fp, 1
  br i1 %i.fq, label %bb.bm, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECs3WYoaQ2jqaU_5wasmi.exit37.i.i

bb.bm:                                            ; preds = %bb.bl
  fence acquire, !noalias !145
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.fn) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECs3WYoaQ2jqaU_5wasmi.exit37.i.i unwind label %bb.bp, !noalias !145, !inline_history !156

bb.bn:                                            ; preds = %bb.bp
  %i.fr = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338), !noalias !145
  tail call void @llvm.experimental.noalias.scope.decl(metadata !341), !noalias !145
  %i.fs = load ptr, ptr %i.fr, align 8, !alias.scope !344, !noalias !145, !nonnull !5, !noundef !5
  %i.ft = atomicrmw sub ptr %i.fs, i64 1 release, align 8, !noalias !351
  %i.fu = icmp eq i64 %i.ft, 1
  br i1 %i.fu, label %bb.bo, label %bb.bx

bb.bo:                                            ; preds = %bb.bn
  fence acquire, !noalias !145
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.fr) #25
          to label %bb.bx unwind label %bb.bk, !noalias !145, !inline_history !156

bb.bp:                                            ; preds = %bb.bm
  %i.fv = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352), !noalias !145
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353), !noalias !145
  tail call void @llvm.experimental.noalias.scope.decl(metadata !354), !noalias !145
  %i.fx = load i8, ptr %i.fw, align 8, !range !215, !alias.scope !355, !noalias !145, !noundef !5
  %6 = icmp eq i8 %i.fx, 0
  br i1 %6, label %bb.bx, label %bb.bn

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECs3WYoaQ2jqaU_5wasmi.exit37.i.i: ; preds = %bb.bm, %bb.bl, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameECs3WYoaQ2jqaU_5wasmi.exit19.i.i
  %i.fy = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356), !noalias !145
  tail call void @llvm.experimental.noalias.scope.decl(metadata !359), !noalias !145
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362), !noalias !145
  %i.fz = load i8, ptr %i.fy, align 8, !range !215, !alias.scope !365, !noalias !145, !noundef !5
  %7 = icmp eq i8 %i.fz, 0
  br i1 %7, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECs3WYoaQ2jqaU_5wasmi.exit, label %bb.bq

bb.bq:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECs3WYoaQ2jqaU_5wasmi.exit37.i.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !366), !noalias !145
  tail call void @llvm.experimental.noalias.scope.decl(metadata !369), !noalias !145
  %i.gb = load ptr, ptr %i.ga, align 8, !alias.scope !372, !noalias !145, !nonnull !5, !noundef !5
  %i.gc = atomicrmw sub ptr %i.gb, i64 1 release, align 8, !noalias !373
  %i.gd = icmp eq i64 %i.gc, 1
  br i1 %i.gd, label %.invoke, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECs3WYoaQ2jqaU_5wasmi.exit

.invoke:                                          ; preds = %bb.bq, %bb.bj, %bb.bb, %bb.au
  %i.ge = phi ptr [ %i.fg, %bb.bj ], [ %i.dr, %bb.bb ], [ %i.cy, %bb.au ], [ %i.ga, %bb.bq ]
  fence acquire, !noalias !145
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ge) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECs3WYoaQ2jqaU_5wasmi.exit unwind label %bb.bw, !inline_history !156

bb.br:                                            ; preds = %bb.a
  %i.gf = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val5.i = load ptr, ptr %i.gf, align 8, !alias.scope !148, !noalias !145, !nonnull !5, !noundef !5 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.val5.i, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gg)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3WYoaQ2jqaU_5wasmi.exit.i.i.i16.i unwind label %bb.bs, !noalias !145, !inline_history !156

bb.bs:                                            ; preds = %bb.br
  %i.gh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gg)
          to label %bb.bv unwind label %bb.bt, !noalias !145, !inline_history !156

bb.bt:                                            ; preds = %bb.bs
  %i.gi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !145, !inline_history !156
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3WYoaQ2jqaU_5wasmi.exit.i.i.i16.i: ; preds = %bb.br
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gg)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs9FmeSmcCnTG_10wasmparser13binary_reader17BinaryReaderErrorECs3WYoaQ2jqaU_5wasmi.exit.i unwind label %bb.bu, !noalias !145, !inline_history !156

bb.bu:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3WYoaQ2jqaU_5wasmi.exit.i.i.i16.i
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bs
  %eh.lpad-body.i.i15.i = phi { ptr, i32 } [ %i.gj, %bb.bu ], [ %i.gh, %bb.bs ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i, i64 noundef 56, i64 noundef 8) #26, !noalias !145, !inline_history !156
  br label %bb.bx

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs9FmeSmcCnTG_10wasmparser13binary_reader17BinaryReaderErrorECs3WYoaQ2jqaU_5wasmi.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3WYoaQ2jqaU_5wasmi.exit.i.i.i16.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i, i64 noundef 56, i64 noundef 8) #26, !noalias !145, !inline_history !156
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECs3WYoaQ2jqaU_5wasmi.exit

bb.bw:                                            ; preds = %.invoke, %bb.ao
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.ai, %bb.bv, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.an, %bb.az, %bb.bp, %bb.bo, %bb.bn
  %eh.lpad-body = phi { ptr, i32 } [ %i.gk, %bb.bw ], [ %eh.lpad-body.i.i.i, %bb.ai ], [ %eh.lpad-body.i.i15.i, %bb.bv ], [ %i.bs, %bb.an ], [ %i.dk, %bb.az ], [ %i.bs, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i ], [ %i.fv, %bb.bp ], [ %i.fv, %bb.bo ], [ %i.fv, %bb.bn ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 112, i64 noundef 8) #26, !noalias !145
  resume { ptr, i32 } %eh.lpad-body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEECs3WYoaQ2jqaU_5wasmi.exit: ; preds = %.invoke, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs9FmeSmcCnTG_10wasmparser13binary_reader17BinaryReaderErrorECs3WYoaQ2jqaU_5wasmi.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCskhAzXzJZLSo_3wat5ErrorECs3WYoaQ2jqaU_5wasmi.exit.i, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.aj, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i6.i, %bb.am, %bb.ao, %bb.bb, %bb.ba, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi8instance7exports10ExternTypeECs3WYoaQ2jqaU_5wasmi.exit19.i.i, %bb.au, %bb.at, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameECs3WYoaQ2jqaU_5wasmi.exit18.i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i8.i8.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs3WYoaQ2jqaU_5wasmi.exit.i6.i.i, %bb.bq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECs3WYoaQ2jqaU_5wasmi.exit37.i.i, %bb.bj, %bb.bi, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameECs3WYoaQ2jqaU_5wasmi.exit.i14.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i8.i33.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs3WYoaQ2jqaU_5wasmi.exit.i31.i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i8.i25.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs3WYoaQ2jqaU_5wasmi.exit.i23.i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i8.i9.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs3WYoaQ2jqaU_5wasmi.exit.i7.i.i, %bb.bc
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 112, i64 noundef 8) #26, !noalias !145
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3WYoaQ2jqaU_5wasmi.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs3WYoaQ2jqaU_5wasmi.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs3WYoaQ2jqaU_5wasmi.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3WYoaQ2jqaU_5wasmi.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = ptrtoint ptr %.val to i64                ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs3WYoaQ2jqaU_5wasmi.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs3WYoaQ2jqaU_5wasmi.exit
    i64 1, label %bb.c
  ], !prof !101

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %i.f = icmp ne i64 %i.e, 1095216660480
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.assume(i1 %i.f)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs3WYoaQ2jqaU_5wasmi.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !374
  store i8 3, ptr %i.a, align 8, !alias.scope !374
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs3WYoaQ2jqaU_5wasmi.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs3WYoaQ2jqaU_5wasmi.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi8instance7exports10ExternTypeECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !204, !noundef !5
  %i.b = icmp eq i8 %i.a, 3
  br i1 %i.b, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECs3WYoaQ2jqaU_5wasmi.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !377)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !383)
  %i.d = load i8, ptr %i.c, align 8, !range !215, !alias.scope !386, !noundef !5
  %1 = icmp eq i8 %i.d, 0
  br i1 %1, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECs3WYoaQ2jqaU_5wasmi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !387)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !390)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !393, !nonnull !5, !noundef !5
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !393
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECs3WYoaQ2jqaU_5wasmi.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e) #25
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECs3WYoaQ2jqaU_5wasmi.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECs3WYoaQ2jqaU_5wasmi.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsi0TlgjRRUlD_11wasi_common9snapshots9preview_15types5ErrorECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXs4_NtCscK5W4trzgIe_6anyhow5errorNtB7_5ErrorNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs3WYoaQ2jqaU_5wasmi(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #6 {
bb.a:
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.a = shl i64 %2, 3                            ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.a
  %scevgep5 = getelementptr i8, ptr %1, i64 %i.a
  %bound0 = icmp ult ptr %0, %scevgep5
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, -4                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !397)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.b, align 1, !alias.scope !399, !noalias !402
  %wide.load6 = load <2 x i64>, ptr %i.d, align 1, !alias.scope !399, !noalias !402
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %wide.load7 = load <2 x i64>, ptr %i.c, align 1, !alias.scope !402, !noalias !394
  %wide.load8 = load <2 x i64>, ptr %i.e, align 1, !alias.scope !402, !noalias !394
  store <2 x i64> %wide.load7, ptr %i.b, align 1, !alias.scope !399, !noalias !402
  store <2 x i64> %wide.load8, ptr %i.d, align 1, !alias.scope !399, !noalias !402
  store <2 x i64> %wide.load, ptr %i.c, align 1, !alias.scope !402, !noalias !394
  store <2 x i64> %wide.load6, ptr %i.e, align 1, !alias.scope !402, !noalias !394
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.f = icmp eq i64 %index.next, %n.vec
  br i1 %i.f, label %middle.block, label %vector.body, !llvm.loop !404

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.sroa.0.04.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.0.04.ph, 1
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.g = or disjoint i64 %.sroa.0.04.ph, 1
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04.ph ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04.ph ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !397)
  %.sroa.0.0.copyload.i.prol = load i64, ptr %i.h, align 1, !alias.scope !394, !noalias !397
  %.sroa.02.0.copyload.i.prol = load i64, ptr %i.i, align 1, !alias.scope !397, !noalias !394
  store i64 %.sroa.02.0.copyload.i.prol, ptr %i.h, align 1, !alias.scope !394, !noalias !397
  store i64 %.sroa.0.0.copyload.i.prol, ptr %i.i, align 1, !alias.scope !397, !noalias !394
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.04.unr = phi i64 [ %.sroa.0.04.ph, %scalar.ph.preheader ], [ %i.g, %scalar.ph.prol ]
  %i.j = icmp eq i64 %2, %.neg
  br i1 %i.j, label %.loopexit, label %scalar.ph

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  ret void

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.0.04 = phi i64 [ %i.n, %scalar.ph ], [ %.sroa.0.04.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.k = add nuw i64 %.sroa.0.04, 1               ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04 ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !397)
  %.sroa.0.0.copyload.i = load i64, ptr %i.l, align 1, !alias.scope !394, !noalias !397
  %.sroa.02.0.copyload.i = load i64, ptr %i.m, align 1, !alias.scope !397, !noalias !394
  store i64 %.sroa.02.0.copyload.i, ptr %i.l, align 1, !alias.scope !394, !noalias !397
  store i64 %.sroa.0.0.copyload.i, ptr %i.m, align 1, !alias.scope !397, !noalias !394
  %i.n = add nuw i64 %.sroa.0.04, 2               ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.k ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.k ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !409)
  %.sroa.0.0.copyload.i.1 = load i64, ptr %i.o, align 1, !alias.scope !407, !noalias !409
  %.sroa.02.0.copyload.i.1 = load i64, ptr %i.p, align 1, !alias.scope !409, !noalias !407
  store i64 %.sroa.02.0.copyload.i.1, ptr %i.o, align 1, !alias.scope !407, !noalias !409
  store i64 %.sroa.0.0.copyload.i.1, ptr %i.p, align 1, !alias.scope !409, !noalias !407
  %exitcond.not.1 = icmp eq i64 %i.n, %2
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !411
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCscK5W4trzgIe_6anyhow7contextINtNtCskKLDkoKarTP_4core6result6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtBD_2io5error5ErrorEINtB5_7ContextB1a_B1M_E12with_contextB1a_NCNvXNtNtCs3WYoaQ2jqaU_5wasmi8commands4wastNtB2V_11WastCommandNtB2X_7Command7execute0EB2Z_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load i64, ptr %1, align 8, !range !97, !noundef !5
  %i.e = icmp eq i64 %i.d, -1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.g, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !412
  store ptr %2, ptr %i.a, align 8, !noalias !412
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsG258MDvU3F_3std4path7PathBufNtB6_5Debug3fmtCs3WYoaQ2jqaU_5wasmi, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !412
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @54, ptr noundef nonnull %i.a)
          to label %bb.e unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !412
  %i.h = call fastcc noundef nonnull ptr @_RINvXNtNtCscK5W4trzgIe_6anyhow7context3extNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtB3_8StdError11ext_contextNtNtCsexYYUdYSQU6_5alloc6string6StringECs3WYoaQ2jqaU_5wasmi(ptr noundef nonnull %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.i, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.j

bb.g:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #23
          to label %bb.f unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCscK5W4trzgIe_6anyhow7contextINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCsG258MDvU3F_3std3net3tcp11TcpListenerNtNtNtBD_2io5error5ErrorEINtB5_7ContextB1a_B1S_E12with_contextNtNtCsexYYUdYSQU6_5alloc6string6StringNCNCNvMs0_NtNtCs3WYoaQ2jqaU_5wasmi8commands3runNtB3E_10RunCommand15preopen_sockets00EB3I_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load i32, ptr %1, align 8, !range !416, !noundef !5
  %i.e = trunc nuw i32 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.g, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !417
  store ptr %2, ptr %i.a, align 8, !noalias !417
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3net11socket_addr10SocketAddrNtB6_7Display3fmtCs3WYoaQ2jqaU_5wasmi, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !417
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @53, ptr noundef nonnull %i.a)
          to label %bb.e unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i32, ptr %i.h, align 4, !range !421, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.i, ptr %i.j, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %storemerge = phi i32 [ 0, %bb.c ], [ 1, %bb.e ]
  store i32 %storemerge, ptr %0, align 8
  ret void

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !417
  %i.k = call fastcc noundef nonnull ptr @_RINvXNtNtCscK5W4trzgIe_6anyhow7context3extNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtB3_8StdError11ext_contextNtNtCsexYYUdYSQU6_5alloc6string6StringECs3WYoaQ2jqaU_5wasmi(ptr noundef nonnull %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.l, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.m

bb.g:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #23
          to label %bb.f unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCscK5W4trzgIe_6anyhow7contextINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCshZ6DQpzuDsL_7cap_std2fs3dir3DirNtNtNtBD_2io5error5ErrorEINtB5_7ContextB1a_B1N_E12with_contextNtNtCsexYYUdYSQU6_5alloc6string6StringNCNCNvMs0_NtNtCs3WYoaQ2jqaU_5wasmi8commands3runNtB3z_10RunCommand12preopen_dirs00EB3D_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load i32, ptr %1, align 8, !range !416, !noundef !5
  %i.e = trunc nuw i32 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.g, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !422
  store ptr %2, ptr %i.a, align 8, !noalias !422
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsG258MDvU3F_3std4path7PathBufNtB6_5Debug3fmtCs3WYoaQ2jqaU_5wasmi, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !422
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @52, ptr noundef nonnull %i.a)
          to label %bb.e unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i32, ptr %i.h, align 4, !range !421, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.i, ptr %i.j, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %storemerge = phi i32 [ 0, %bb.c ], [ 1, %bb.e ]
  store i32 %storemerge, ptr %0, align 8
  ret void

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !422
  %i.k = call fastcc noundef nonnull ptr @_RINvXNtNtCscK5W4trzgIe_6anyhow7context3extNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtB3_8StdError11ext_contextNtNtCsexYYUdYSQU6_5alloc6string6StringECs3WYoaQ2jqaU_5wasmi(ptr noundef nonnull %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
end_hunk_0

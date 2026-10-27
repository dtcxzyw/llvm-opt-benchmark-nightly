Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi-f4c56b525af24363.wasmi.a5f598a5e97a06b2-cgu.12?download=true
inline.NumInlined: 803
inline.NumDeleted: 402
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEBF_:bb.a
  %.val3.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.am, align 8, !alias.scope !567, !noalias !549, !nonnull !7, !noundef !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !568
  br label %bb.y

bb.v:                                             ; preds = %bb.s
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ah, align 8, !alias.scope !566, !noalias !549 ; 2 uses
  %i.an = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.an, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1VvpiNK3DOA_4wast5error5ErrorECsefoF4u9kbII_5wasmi.exit.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 72
  %.val1.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ao, align 8, !alias.scope !567, !noalias !549, !nonnull !7, !noundef !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !569
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1VvpiNK3DOA_4wast5error5ErrorECsefoF4u9kbII_5wasmi.exit.i.i.i

bb.x:                                             ; preds = %.body2.i.i.i.i.i.i, %.body.i.i.i.i.i.i
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #40, !noalias !549
  unreachable

bb.y:                                             ; preds = %bb.u, %bb.t, %.body2.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i.i.i, %.body2.i.i.i.i.i.i ], [ %i.ak, %bb.t ], [ %i.ak, %bb.u ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef 96, i64 noundef 8) #34, !noalias !549
  br label %bb.ap

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1VvpiNK3DOA_4wast5error5ErrorECsefoF4u9kbII_5wasmi.exit.i.i.i: ; preds = %bb.w, %bb.v, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECsefoF4u9kbII_5wasmi.exit.i.i.i.i.i.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef 96, i64 noundef 8) #34, !noalias !549
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCskhAzXzJZLSo_3wat5ErrorECsefoF4u9kbII_5wasmi.exit

bb.z:                                             ; preds = %bb.b
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %.val2.i.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !549, !nonnull !7, !noundef !7 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !549
  %i.ar = ptrtoint ptr %.val2.i.i.i to i64        ; 2 uses
  %i.as = and i64 %i.ar, 3
  switch i64 %i.as, label %default.unreachable [
    i64 2, label %bb.ad
    i64 3, label %bb.aa
    i64 0, label %bb.ad
    i64 1, label %bb.ab
  ], !prof !570

default.unreachable:                              ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.at = icmp ult ptr %.val2.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.au = and i64 %i.ar, 1095216660480
  %i.av = icmp ne i64 %i.au, 1095216660480
  tail call void @llvm.assume(i1 %i.at)
  tail call void @llvm.assume(i1 %i.av)
  br label %bb.ad

bb.ab:                                            ; preds = %bb.z
  %i.aw = getelementptr i8, ptr %.val2.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aw) ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.aw, ptr %i.ax, align 8, !alias.scope !571, !noalias !549
  store i8 3, ptr %i.a, align 8, !alias.scope !571, !noalias !549
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ax)
          to label %bb.ad unwind label %bb.ac, !noalias !549

bb.ac:                                            ; preds = %bb.ab
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = getelementptr inbounds nuw i8, ptr %.val, i64 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECsefoF4u9kbII_5wasmi(ptr noalias nofree noundef align 8 dereferenceable(24) %i.az) #39
          to label %bb.ap unwind label %bb.aj

bb.ad:                                            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !549
  %i.ba = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 4 uses
  %i.bb = load i64, ptr %i.ba, align 8, !range !10, !alias.scope !572, !noundef !7
  %i.bc = icmp eq i64 %i.bb, -1
  br i1 %i.bc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCskhAzXzJZLSo_3wat5ErrorECsefoF4u9kbII_5wasmi.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %bb.ah unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i.i.i.i = load i64, ptr %i.ba, align 8, !alias.scope !573 ; 2 uses
  %i.be = icmp eq i64 %.val2.i.i.i.i.i.i.i.i, 0
  br i1 %i.be, label %bb.ap, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bf = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %.val3.i.i.i.i.i.i.i.i = load ptr, ptr %i.bf, align 8, !alias.scope !574, !nonnull !7, !noundef !7
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !575
  br label %bb.ap

bb.ah:                                            ; preds = %bb.ae
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.ba, align 8, !alias.scope !573 ; 2 uses
  %i.bg = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.bg, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCskhAzXzJZLSo_3wat5ErrorECsefoF4u9kbII_5wasmi.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bh = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.bh, align 8, !alias.scope !574, !nonnull !7, !noundef !7
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !576
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCskhAzXzJZLSo_3wat5ErrorECsefoF4u9kbII_5wasmi.exit

bb.aj:                                            ; preds = %.body.i.i.i, %bb.ac
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #40
  unreachable

.body.i.i.i:                                      ; preds = %bb.e, %bb.d
  %i.bj = getelementptr inbounds nuw i8, ptr %.val, i64 24
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECsefoF4u9kbII_5wasmi(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bj) #39
          to label %bb.ap unwind label %bb.aj

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsefoF4u9kbII_5wasmi.exit.i.i.i: ; preds = %bb.g, %bb.f
  %i.bk = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 4 uses
  %i.bl = load i64, ptr %i.bk, align 8, !range !10, !alias.scope !577, !noundef !7
  %i.bm = icmp eq i64 %i.bl, -1
  br i1 %i.bm, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCskhAzXzJZLSo_3wat5ErrorECsefoF4u9kbII_5wasmi.exit, label %bb.ak

bb.ak:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsefoF4u9kbII_5wasmi.exit.i.i.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bk)
          to label %bb.an unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i3.i.i.i = load i64, ptr %i.bk, align 8, !alias.scope !578 ; 2 uses
  %i.bo = icmp eq i64 %.val2.i.i.i.i.i3.i.i.i, 0
  br i1 %i.bo, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bp = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %.val3.i.i.i.i.i4.i.i.i = load ptr, ptr %i.bp, align 8, !alias.scope !579, !nonnull !7, !noundef !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i4.i.i.i, i64 noundef %.val2.i.i.i.i.i3.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !580
  br label %bb.ap

bb.an:                                            ; preds = %bb.ak
  %.val.i.i.i.i.i6.i.i.i = load i64, ptr %i.bk, align 8, !alias.scope !578 ; 2 uses
  %i.bq = icmp eq i64 %.val.i.i.i.i.i6.i.i.i, 0
  br i1 %i.bq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCskhAzXzJZLSo_3wat5ErrorECsefoF4u9kbII_5wasmi.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.br = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %.val1.i.i.i.i.i7.i.i.i = load ptr, ptr %i.br, align 8, !alias.scope !579, !nonnull !7, !noundef !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i7.i.i.i, i64 noundef %.val.i.i.i.i.i6.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !581
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCskhAzXzJZLSo_3wat5ErrorECsefoF4u9kbII_5wasmi.exit

common.resume:                                    ; preds = %bb.by, %bb.bz, %bb.ca, %bb.bi, %bb.au, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.ci, %bb.aw, %bb.ap
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i.i, %bb.ap ], [ %i.ha, %bb.ci ], [ %i.cl, %bb.aw ], [ %i.cd, %bb.au ], [ %i.dz, %bb.bi ], [ %i.cd, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i ], [ %i.gn, %bb.ca ], [ %i.gn, %bb.bz ], [ %i.gn, %bb.by ]
  resume { ptr, i32 } %common.resume.op

bb.ap:                                            ; preds = %bb.am, %bb.al, %.body.i.i.i, %bb.ag, %bb.af, %bb.ac, %bb.y
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.bn, %bb.al ], [ %eh.lpad-body.i.i.i.i.i, %bb.y ], [ %i.ay, %bb.ac ], [ %i.bd, %bb.af ], [ %i.bd, %bb.ag ], [ %i.k, %.body.i.i.i ], [ %i.bn, %bb.am ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 48, i64 noundef 8) #34
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCskhAzXzJZLSo_3wat5ErrorECsefoF4u9kbII_5wasmi.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1VvpiNK3DOA_4wast5error5ErrorECsefoF4u9kbII_5wasmi.exit.i.i.i, %bb.ad, %bb.ah, %bb.ai, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsefoF4u9kbII_5wasmi.exit.i.i.i, %bb.an, %bb.ao
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 48, i64 noundef 8) #34
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi.exit: ; preds = %bb.cc, %bb.cb, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeEBH_.exit37.i, %bb.bu, %bb.bt, %bb.bs, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameEBH_.exit.i13, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i6.i33.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi.exit.i31.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i6.i25.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi.exit.i23.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i6.i9.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi.exit.i7.i, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi8instance7exports10ExternTypeEBH_.exit19.i, %bb.bd, %bb.bc, %bb.bb, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameEBH_.exit18.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i6.i8.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi.exit.i6.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i4, %bb.at, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i, %bb.aq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs9FmeSmcCnTG_10wasmparser13binary_reader17BinaryReaderErrorECsefoF4u9kbII_5wasmi.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi5error5ErrorEBF_.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCskhAzXzJZLSo_3wat5ErrorECsefoF4u9kbII_5wasmi.exit, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  ret void

bb.aq:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !582)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.bs, align 8, !alias.scope !582, !noundef !7 ; 2 uses
  %i.bt = icmp eq i64 %.val1.i, 0
  br i1 %i.bt, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.aq
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.bu, align 8, !alias.scope !582, !nonnull !7, !noundef !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %.val1.i, i64 noundef 1) #34, !noalias !582
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi.exit

bb.ar:                                            ; preds = %bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.bv, align 8           ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2 = load ptr, ptr %i.bw, align 8, !nonnull !7, !align !12, !noundef !7 ; 5 uses
  %i.bx = load ptr, ptr %.val2, align 8, !invariant.load !7 ; 2 uses
  %.not.i = icmp eq ptr %i.bx, null
  br i1 %.not.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  invoke void %i.bx(ptr noundef nonnull %.val1)
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.by = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !range !13, !invariant.load !7 ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i4

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i4: ; preds = %bb.at
  %i.cb = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !range !583, !invariant.load !7
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.bz, i64 noundef range(i64 1, -9223372036854775807) %i.cc) #34
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi.exit

bb.au:                                            ; preds = %bb.as
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !range !13, !invariant.load !7 ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %common.resume, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.au
  %i.ch = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !range !583, !invariant.load !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.cf, i64 noundef range(i64 1, -9223372036854775807) %i.ci) #34
  br label %common.resume

bb.av:                                            ; preds = %bb.a
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !584)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !585)
  %i.ck = load ptr, ptr %i.cj, align 8, !alias.scope !586, !nonnull !7, !noundef !7 ; 3 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEBF_(ptr noalias nofree noundef align 8 dereferenceable(112) %i.ck)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi5error5ErrorEBF_.exit unwind label %bb.aw, !noalias !586, !inline_history !405

bb.aw:                                            ; preds = %bb.av
  %i.cl = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ck, i64 noundef 112, i64 noundef 8) #34, !noalias !586, !inline_history !406
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi5error5ErrorEBF_.exit: ; preds = %bb.av
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ck, i64 noundef 112, i64 noundef 8) #34, !noalias !586, !inline_history !406
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi.exit

bb.ax:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !587)
  %i.cm = add nsw i8 %i.b, -4
  %i.cn = icmp samesign ugt i8 %i.b, 3
  %narrow.i = select i1 %i.cn, i8 %i.cm, i8 2
  switch i8 %narrow.i, label %bb.ay [
    i8 0, label %bb.az
    i8 1, label %bb.ba
  ]

bb.ay:                                            ; preds = %bb.ax
  tail call void @llvm.experimental.noalias.scope.decl(metadata !588)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !589)
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val1.i.i.i = load i64, ptr %i.co, align 8, !alias.scope !590, !noundef !7 ; 2 uses
  %i.cp = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.cp, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi.exit.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.ay
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val.i.i.i5 = load ptr, ptr %i.cq, align 8, !alias.scope !590, !nonnull !7, !noundef !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i5, i64 noundef %.val1.i.i.i, i64 noundef 1) #34, !noalias !590
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi.exit.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi.exit.i.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.ay
  tail call void @llvm.experimental.noalias.scope.decl(metadata !591)
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val1.i5.i.i = load i64, ptr %i.cr, align 8, !alias.scope !592, !noundef !7 ; 2 uses
  %i.cs = icmp eq i64 %.val1.i5.i.i, 0
  br i1 %i.cs, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameEBH_.exit.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i6.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i6.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi.exit.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val.i7.i.i = load ptr, ptr %i.ct, align 8, !alias.scope !592, !nonnull !7, !noundef !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i7.i.i, i64 noundef %.val1.i5.i.i, i64 noundef 1) #34, !noalias !592
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameEBH_.exit.i

bb.az:                                            ; preds = %bb.ax
  tail call void @llvm.experimental.noalias.scope.decl(metadata !593)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !594)
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i3.i = load i64, ptr %i.cu, align 8, !alias.scope !595, !noundef !7 ; 2 uses
  %i.cv = icmp eq i64 %.val1.i.i3.i, 0
  br i1 %i.cv, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi.exit.i6.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i4.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i4.i: ; preds = %bb.az
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i5.i = load ptr, ptr %i.cw, align 8, !alias.scope !595, !nonnull !7, !noundef !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i5.i, i64 noundef %.val1.i.i3.i, i64 noundef 1) #34, !noalias !595
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi.exit.i6.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi.exit.i6.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i4.i, %bb.az
  tail call void @llvm.experimental.noalias.scope.decl(metadata !596)
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i5.i7.i = load i64, ptr %i.cx, align 8, !alias.scope !597, !noundef !7 ; 2 uses
  %i.cy = icmp eq i64 %.val1.i5.i7.i, 0
  br i1 %i.cy, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i6.i8.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i6.i8.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi.exit.i6.i
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i7.i9.i = load ptr, ptr %i.cz, align 8, !alias.scope !597, !nonnull !7, !noundef !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i7.i9.i, i64 noundef %.val1.i5.i7.i, i64 noundef 1) #34, !noalias !597
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi.exit

bb.ba:                                            ; preds = %bb.ax
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !599)
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val1.i.i11.i = load i64, ptr %i.da, align 8, !alias.scope !600, !noundef !7 ; 2 uses
  %i.db = icmp eq i64 %.val1.i.i11.i, 0
  br i1 %i.db, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi.exit.i14.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i12.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i12.i: ; preds = %bb.ba
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val.i.i13.i = load ptr, ptr %i.dc, align 8, !alias.scope !600, !nonnull !7, !noundef !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i13.i, i64 noundef %.val1.i.i11.i, i64 noundef 1) #34, !noalias !600
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi.exit.i14.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi.exit.i14.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i12.i, %bb.ba
  tail call void @llvm.experimental.noalias.scope.decl(metadata !601)
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val1.i5.i15.i = load i64, ptr %i.dd, align 8, !alias.scope !602, !noundef !7 ; 2 uses
  %i.de = icmp eq i64 %.val1.i5.i15.i, 0
  br i1 %i.de, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameEBH_.exit18.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i6.i16.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i6.i16.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi.exit.i14.i
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val.i7.i17.i = load ptr, ptr %i.df, align 8, !alias.scope !602, !nonnull !7, !noundef !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i7.i17.i, i64 noundef %.val1.i5.i15.i, i64 noundef 1) #34, !noalias !602
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameEBH_.exit18.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameEBH_.exit18.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i6.i16.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi.exit.i14.i
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !603)
  %i.dh = load i8, ptr %i.dg, align 8, !range !14, !alias.scope !604, !noundef !7
  %i.di = icmp eq i8 %i.dh, 3
  br i1 %i.di, label %bb.bb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi.exit

bb.bb:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameEBH_.exit18.i
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !605)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !606)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !607)
  %i.dk = load i8, ptr %i.dj, align 8, !range !8, !alias.scope !608, !noundef !7
  %i.dl = icmp eq i8 %i.dk, 0
  br i1 %i.dl, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !609)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !610)
  %i.dn = load ptr, ptr %i.dm, align 8, !alias.scope !611, !nonnull !7, !noundef !7
  %i.do = atomicrmw add ptr %i.dn, i64 -1 release, align 8, !noalias !611
  %i.dp = icmp eq i64 %i.do, 1
  br i1 %i.dp, label %bb.bd, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi.exit

bb.bd:                                            ; preds = %bb.bc
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.dm) #41
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi.exit

bb.be:                                            ; preds = %bb.bi
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #40
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameEBH_.exit.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i6.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !612)
  %i.dr = icmp eq i8 %i.b, 3
  br i1 %i.dr, label %bb.bf, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi8instance7exports10ExternTypeEBH_.exit19.i

bb.bf:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameEBH_.exit.i
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !613)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !614)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !615)
  %i.dt = load i8, ptr %i.ds, align 8, !range !8, !alias.scope !616, !noundef !7
  %i.du = icmp eq i8 %i.dt, 0
  br i1 %i.du, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi8instance7exports10ExternTypeEBH_.exit19.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !617)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !618)
  %i.dw = load ptr, ptr %i.dv, align 8, !alias.scope !619, !nonnull !7, !noundef !7
  %i.dx = atomicrmw add ptr %i.dw, i64 -1 release, align 8, !noalias !619
  %i.dy = icmp eq i64 %i.dx, 1
  br i1 %i.dy, label %bb.bh, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi8instance7exports10ExternTypeEBH_.exit19.i

bb.bh:                                            ; preds = %bb.bg
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.dv) #41
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi8instance7exports10ExternTypeEBH_.exit19.i unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.dz = landingpad { ptr, i32 }
          cleanup
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi8instance7exports10ExternTypeEBH_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.ea) #39
          to label %common.resume unwind label %bb.be

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi8instance7exports10ExternTypeEBH_.exit19.i: ; preds = %bb.bh, %bb.bg, %bb.bf, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameEBH_.exit.i
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !620)
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEENvNtNtNtCsefoF4u9kbII_5wasmi6engine10translator5utils21required_cells_for_tyENtNtNtBa_6traits8iterator8Iterator4foldjNCINvB6_8map_foldtjjNvYjINtNtBc_7convert4FromtE4fromNCINvXsK_NtB3M_5accumjNtB5l_3Sum3sumIBO_BN_B4G_EE0E0EB2B_:bb.a

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.m, %i.l
  %i.o = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEENtNtNtB9_6traits8iterator8Iterator4foldjNCINvNtB7_3map8map_foldB1s_tjNvNtNtNtCsefoF4u9kbII_5wasmi6engine10translator5utils21required_cells_for_tyNCIB2T_tjjNvYjINtNtBb_7convert4FromtE4fromNCINvXsK_NtB2g_5accumjNtB5m_3Sum3sumINtB2V_3MapIB5O_BP_B3j_EB4H_EE0E0E0EB3r_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.b, %middle.block
  %.sroa.04.0.i.i.ph = phi i64 [ 0, %bb.b ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.i.ph = phi i64 [ %2, %bb.b ], [ %i.o, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.04.0.i.i = phi i64 [ %i.t, %scalar.ph ], [ %.sroa.04.0.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.02.0.i.i = phi i64 [ %i.s, %scalar.ph ], [ %.sroa.02.0.i.i.ph, %scalar.ph.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0.i.i
  %.val.i.i = load i8, ptr %i.p, align 1, !range !21, !noundef !7
  %i.q = icmp eq i8 %.val.i.i, 4
  %i.r = select i1 %i.q, i64 2, i64 1
  %i.s = add i64 %i.r, %.sroa.02.0.i.i            ; 2 uses
  %i.t = add nuw i64 %.sroa.04.0.i.i, 1           ; 2 uses
  %i.u = icmp eq i64 %i.t, %i.d
  br i1 %i.u, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEENtNtNtB9_6traits8iterator8Iterator4foldjNCINvNtB7_3map8map_foldB1s_tjNvNtNtNtCsefoF4u9kbII_5wasmi6engine10translator5utils21required_cells_for_tyNCIB2T_tjjNvYjINtNtBb_7convert4FromtE4fromNCINvXsK_NtB2g_5accumjNtB5m_3Sum3sumINtB2V_3MapIB5O_BP_B3j_EB4H_EE0E0E0EB3r_.exit, label %scalar.ph, !llvm.loop !1239

_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEENtNtNtB9_6traits8iterator8Iterator4foldjNCINvNtB7_3map8map_foldB1s_tjNvNtNtNtCsefoF4u9kbII_5wasmi6engine10translator5utils21required_cells_for_tyNCIB2T_tjjNvYjINtNtBb_7convert4FromtE4fromNCINvXsK_NtB2g_5accumjNtB5m_3Sum3sumINtB2V_3MapIB5O_BP_B3j_EB4H_EE0E0E0EB3r_.exit: ; preds = %scalar.ph, %middle.block, %bb.a
  %.sroa.0.0.i.i = phi i64 [ %2, %bb.a ], [ %i.o, %middle.block ], [ %i.s, %scalar.ph ]
  ret i64 %.sroa.0.0.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB10_4core7exports6ExportENCNvMNtNtCsefoF4u9kbII_5wasmi6module6parserNtB2y_12ModuleParser15process_exports0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzNtNtB2C_5error5ErrorEEB3N_8try_folduNCINvNvB3N_12try_for_each4callTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtB2A_6export9ExternIdxEINtNtNtBc_3ops12control_flow11ControlFlowB6s_ENcNtB7u_5Break0E0B7u_E0IB7v_B7u_EEB2C_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1263)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1264
  call void @_RNvXs7_NtCs9FmeSmcCnTG_10wasmparser7readersINtB5_22SectionLimitedIntoIterNtNtNtB5_4core7exports6ExportENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1), !noalias !1263
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.c = load i8, ptr %i.b, align 4, !range !22, !noalias !1264, !noundef !7 ; 3 uses
  %.not.i = icmp eq i8 %i.c, -2
  br i1 %.not.i, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.011.0.copyload.i = load ptr, ptr %i.a, align 8, !noalias !1264, !nonnull !7, !noundef !7 ; 2 uses
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.512.0.copyload.i = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !noalias !1264 ; 9 uses
  %.sroa.613.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.613.0.copyload.i = load i32, ptr %.sroa.613.0..sroa_idx.i, align 8, !noalias !1264 ; 4 uses
  %i.d = icmp eq i8 %i.c, -1
  br i1 %i.d, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq i64 %.sroa.512.0.copyload.i, 0   ; 2 uses
  br i1 %i.e, label %bb.e, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i.i.i: ; preds = %bb.c
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !1265
  %i.f = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %.sroa.512.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !1265 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i.i.i
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef %.sroa.512.0.copyload.i) #42, !noalias !1266
  unreachable

bb.e:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i.i.i, %bb.c
  %.sroa.01.0.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.c ], [ %i.f, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i.i.i ] ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.01.0.i.i.i.i, ptr nonnull readonly align 1 %.sroa.011.0.copyload.i, i64 %.sroa.512.0.copyload.i, i1 false), !noalias !1266
  switch i8 %i.c, label %default.unreachable [
    i8 0, label %bb.n
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
    i8 4, label %bb.i
  ], !prof !23

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  br label %bb.n

bb.h:                                             ; preds = %bb.e
  br label %bb.n

bb.i:                                             ; preds = %bb.e
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @26, ptr noundef nonnull inttoptr (i64 123 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #38
          to label %.noexc.i.i.i unwind label %bb.j, !noalias !1266

.noexc.i.i.i:                                     ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.e, label %common.resume.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.j
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.01.0.i.i.i.i, i64 noundef %.sroa.512.0.copyload.i, i64 noundef 1) #34, !noalias !1267
  br label %common.resume.i.i

common.resume.i.i:                                ; preds = %.body.i.i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.j
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.k, %.body.i.i.i ], [ %i.h, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i ], [ %i.h, %bb.j ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.k:                                             ; preds = %bb.b
  %i.i = tail call fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCsefoF4u9kbII_5wasmi5errorNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtCs9FmeSmcCnTG_10wasmparser13binary_reader17BinaryReaderErrorE4from(ptr noalias noundef nonnull align 8 %.sroa.011.0.copyload.i) #37, !noalias !1266 ; 2 uses
  %.val.i.i.i = load ptr, ptr %3, align 8, !noalias !1268, !align !12, !noundef !7 ; 4 uses
  %i.j = icmp eq ptr %.val.i.i.i, null
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCsefoF4u9kbII_5wasmi5error5ErrorEEEB1o_.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %.val.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtCsefoF4u9kbII_5wasmi5error5ErrorEEB12_.exit.i.i.i.i unwind label %.body.i.i.i, !noalias !1269, !inline_history !0

.body.i.i.i:                                      ; preds = %bb.l
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef 112, i64 noundef 8) #34, !noalias !1269, !inline_history !1
  store ptr %i.i, ptr %3, align 8, !noalias !1268
  br label %common.resume.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtCsefoF4u9kbII_5wasmi5error5ErrorEEB12_.exit.i.i.i.i: ; preds = %bb.l
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef 112, i64 noundef 8) #34, !noalias !1269, !inline_history !1
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCsefoF4u9kbII_5wasmi5error5ErrorEEEB1o_.exit.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCsefoF4u9kbII_5wasmi5error5ErrorEEEB1o_.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtCsefoF4u9kbII_5wasmi5error5ErrorEEB12_.exit.i.i.i.i, %bb.k
  store ptr %i.i, ptr %3, align 8, !noalias !1268
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1264
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 -2, ptr %i.l, align 8, !alias.scope !1270
  br label %_RINvYINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB6_4core7exports6ExportENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters3map12map_try_foldINtNtB1G_6result6ResultB14_NtNtB8_13binary_reader17BinaryReaderErrorEIB3i_TINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENtNtB5b_5error5ErrorEuINtNtNtB1G_3ops12control_flow11ControlFlowIB6h_B4t_EENCNvMNtB59_6parserNtB7c_12ModuleParser15process_exports0NCINvXB2K_INtB2K_12GenericShuntINtB2I_3MapB3_B77_EIB3i_zB5U_EEB1y_8try_folduNCINvNvB1y_12try_for_each4callB4t_B6W_NcNtB6W_5Break0E0B6W_E0E0B6g_EB5b_.exit

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCsefoF4u9kbII_5wasmi5error5ErrorEEEB1o_.exit.i.i.i, %bb.h, %bb.g, %bb.f, %bb.e
  %.sroa.9.0.i = phi i32 [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCsefoF4u9kbII_5wasmi5error5ErrorEEEB1o_.exit.i.i.i ], [ %.sroa.613.0.copyload.i, %bb.h ], [ %.sroa.613.0.copyload.i, %bb.g ], [ %.sroa.613.0.copyload.i, %bb.f ], [ %.sroa.613.0.copyload.i, %bb.e ]
  %.sroa.56.0.i = phi i32 [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCsefoF4u9kbII_5wasmi5error5ErrorEEEB1o_.exit.i.i.i ], [ 3, %bb.h ], [ 2, %bb.g ], [ 1, %bb.f ], [ 0, %bb.e ]
  %.sroa.4.0.i = phi i64 [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCsefoF4u9kbII_5wasmi5error5ErrorEEEB1o_.exit.i.i.i ], [ %.sroa.512.0.copyload.i, %bb.h ], [ %.sroa.512.0.copyload.i, %bb.g ], [ %.sroa.512.0.copyload.i, %bb.f ], [ %.sroa.512.0.copyload.i, %bb.e ]
  %.sroa.05.0.i = phi ptr [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCsefoF4u9kbII_5wasmi5error5ErrorEEEB1o_.exit.i.i.i ], [ %.sroa.01.0.i.i.i.i, %bb.h ], [ %.sroa.01.0.i.i.i.i, %bb.g ], [ %.sroa.01.0.i.i.i.i, %bb.f ], [ %.sroa.01.0.i.i.i.i, %bb.e ]
  store ptr %.sroa.05.0.i, ptr %0, align 8, !alias.scope !1271
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0.i, ptr %.sroa.416.0..sroa_idx.i, align 8, !alias.scope !1271
  %.sroa.517.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.56.0.i, ptr %.sroa.517.0..sroa_idx.i, align 8, !alias.scope !1271
  %.sroa.618.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.9.0.i, ptr %.sroa.618.0..sroa_idx.i, align 4, !alias.scope !1271
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1264
  br label %_RINvYINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB6_4core7exports6ExportENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters3map12map_try_foldINtNtB1G_6result6ResultB14_NtNtB8_13binary_reader17BinaryReaderErrorEIB3i_TINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENtNtB5b_5error5ErrorEuINtNtNtB1G_3ops12control_flow11ControlFlowIB6h_B4t_EENCNvMNtB59_6parserNtB7c_12ModuleParser15process_exports0NCINvXB2K_INtB2K_12GenericShuntINtB2I_3MapB3_B77_EIB3i_zB5U_EEB1y_8try_folduNCINvNvB1y_12try_for_each4callB4t_B6W_NcNtB6W_5Break0E0B6W_E0E0B6g_EB5b_.exit

_RINvYINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB6_4core7exports6ExportENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters3map12map_try_foldINtNtB1G_6result6ResultB14_NtNtB8_13binary_reader17BinaryReaderErrorEIB3i_TINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENtNtB5b_5error5ErrorEuINtNtNtB1G_3ops12control_flow11ControlFlowIB6h_B4t_EENCNvMNtB59_6parserNtB7c_12ModuleParser15process_exports0NCINvXB2K_INtB2K_12GenericShuntINtB2I_3MapB3_B77_EIB3i_zB5U_EEB1y_8try_folduNCINvNvB1y_12try_for_each4callB4t_B6W_NcNtB6W_5Break0E0B6W_E0E0B6g_EB5b_.exit: ; preds = %bb.m, %bb.n
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB10_4core8elements7ElementENCNvMNtNtCsefoF4u9kbII_5wasmi6module6parserNtB2A_12ModuleParser15process_element0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzNtNtB2E_5error5ErrorEEB3P_8try_folduNCINvNvB3P_12try_for_each4callNtNtB2C_7element14ElementSegmentINtNtNtBc_3ops12control_flow11ControlFlowB6u_ENcNtB70_5Break0E0B70_E0IB71_B70_EEB2E_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 8 uses
  %.sroa.4.i = alloca [40 x i8], align 8          ; 5 uses
  %.sroa.8.i = alloca [7 x i8], align 1           ; 5 uses
  %i.b = alloca [120 x i8], align 8               ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1291)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1292
  call void @_RNvXs7_NtCs9FmeSmcCnTG_10wasmparser7readersINtB5_22SectionLimitedIntoIterNtNtNtB5_4core8elements7ElementENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1), !noalias !1291
  %i.c = load i32, ptr %i.b, align 8, !range !1293, !noalias !1292, !noundef !7 ; 2 uses
  %.not20.i = icmp eq i32 %i.c, -2
  br i1 %.not20.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 49
  %.sroa.63.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %.sroa.01.0.copyload = phi i32 [ %i.l, %bb.d ], [ %i.c, %.lr.ph.i ]
  %.sroa.53.0.copyload = load ptr, ptr %.sroa.53.0..sroa_idx, align 8, !noalias !1292 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1292
  %i.f = icmp eq i32 %.sroa.01.0.copyload, -1
  br i1 %i.f, label %_RNCNvMNtNtCsefoF4u9kbII_5wasmi6module6parserNtB4_12ModuleParser15process_element0B8_.exit.thread.i.i, label %_RNCNvMNtNtCsefoF4u9kbII_5wasmi6module6parserNtB4_12ModuleParser15process_element0B8_.exit.i.i

_RNCNvMNtNtCsefoF4u9kbII_5wasmi6module6parserNtB4_12ModuleParser15process_element0B8_.exit.thread.i.i: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.53.0.copyload) ]
  %i.g = tail call fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCsefoF4u9kbII_5wasmi5errorNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtCs9FmeSmcCnTG_10wasmparser13binary_reader17BinaryReaderErrorE4from(ptr noalias noundef nonnull align 8 %.sroa.53.0.copyload) #37, !noalias !1294
  br label %.loopexit.i

_RNCNvMNtNtCsefoF4u9kbII_5wasmi6module6parserNtB4_12ModuleParser15process_element0B8_.exit.i.i: ; preds = %bb.b
  call void @_RNvXs0_NtNtCsefoF4u9kbII_5wasmi6module7elementNtB5_14ElementSegmentINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core8elements7ElementE4from(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %i.b), !noalias !1291
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.a, align 8, !noalias !1295 ; 2 uses
  %.sroa.63.0.copyload.i.i.i = load i8, ptr %.sroa.63.0..sroa_idx.i.i.i, align 8, !noalias !1295 ; 3 uses
  %i.h = icmp eq i8 %.sroa.63.0.copyload.i.i.i, 2
  br i1 %i.h, label %.loopexit.i, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core8elements7ElementNtNtB1t_13binary_reader17BinaryReaderErrorEIB10_NtNtNtCsefoF4u9kbII_5wasmi6module7element14ElementSegmentNtNtB3f_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4r_B39_EENCNvMNtB3d_6parserNtB5l_12ModuleParser15process_element0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtB1r_22SectionLimitedIntoIterB1l_EB5g_EIB10_zB44_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7E_12try_for_each4callB39_B55_NcNtB55_5Break0E0B55_E0E0B3f_.exit.i

.loopexit.i:                                      ; preds = %_RNCNvMNtNtCsefoF4u9kbII_5wasmi6module6parserNtB4_12ModuleParser15process_element0B8_.exit.i.i, %_RNCNvMNtNtCsefoF4u9kbII_5wasmi6module6parserNtB4_12ModuleParser15process_element0B8_.exit.thread.i.i
  %.sroa.0.0.copyload.sink.i6.i.i = phi ptr [ %i.g, %_RNCNvMNtNtCsefoF4u9kbII_5wasmi6module6parserNtB4_12ModuleParser15process_element0B8_.exit.thread.i.i ], [ %.sroa.0.0.copyload.i.i.i, %_RNCNvMNtNtCsefoF4u9kbII_5wasmi6module6parserNtB4_12ModuleParser15process_element0B8_.exit.i.i ] ; 2 uses
  %.val.i.i.i = load ptr, ptr %3, align 8, !noalias !1296, !align !12, !noundef !7 ; 4 uses
  %i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %i.i, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core8elements7ElementNtNtB1t_13binary_reader17BinaryReaderErrorEIB10_NtNtNtCsefoF4u9kbII_5wasmi6module7element14ElementSegmentNtNtB3f_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4r_B39_EENCNvMNtB3d_6parserNtB5l_12ModuleParser15process_element0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtB1r_22SectionLimitedIntoIterB1l_EB5g_EIB10_zB44_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7E_12try_for_each4callB39_B55_NcNtB55_5Break0E0B55_E0E0B3f_.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %.loopexit.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %.val.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtCsefoF4u9kbII_5wasmi5error5ErrorEEB12_.exit.i.i.i.i unwind label %.body.i.i.i, !noalias !1297, !inline_history !0

.body.i.i.i:                                      ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef 112, i64 noundef 8) #34, !noalias !1297, !inline_history !1
  store ptr %.sroa.0.0.copyload.sink.i6.i.i, ptr %3, align 8, !noalias !1296
  resume { ptr, i32 } %i.j

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtCsefoF4u9kbII_5wasmi5error5ErrorEEB12_.exit.i.i.i.i: ; preds = %bb.c
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef 112, i64 noundef 8) #34, !noalias !1297, !inline_history !1
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core8elements7ElementNtNtB1t_13binary_reader17BinaryReaderErrorEIB10_NtNtNtCsefoF4u9kbII_5wasmi6module7element14ElementSegmentNtNtB3f_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4r_B39_EENCNvMNtB3d_6parserNtB5l_12ModuleParser15process_element0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtB1r_22SectionLimitedIntoIterB1l_EB5g_EIB10_zB44_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7E_12try_for_each4callB39_B55_NcNtB55_5Break0E0B55_E0E0B3f_.exit.thread.i

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core8elements7ElementNtNtB1t_13binary_reader17BinaryReaderErrorEIB10_NtNtNtCsefoF4u9kbII_5wasmi6module7element14ElementSegmentNtNtB3f_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4r_B39_EENCNvMNtB3d_6parserNtB5l_12ModuleParser15process_element0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtB1r_22SectionLimitedIntoIterB1l_EB5g_EIB10_zB44_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7E_12try_for_each4callB39_B55_NcNtB55_5Break0E0B55_E0E0B3f_.exit.thread.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtCsefoF4u9kbII_5wasmi5error5ErrorEEB12_.exit.i.i.i.i, %.loopexit.i
  store ptr %.sroa.0.0.copyload.sink.i6.i.i, ptr %3, align 8, !noalias !1296
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1292
  br label %.loopexit17.i

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core8elements7ElementNtNtB1t_13binary_reader17BinaryReaderErrorEIB10_NtNtNtCsefoF4u9kbII_5wasmi6module7element14ElementSegmentNtNtB3f_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4r_B39_EENCNvMNtB3d_6parserNtB5l_12ModuleParser15process_element0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtB1r_22SectionLimitedIntoIterB1l_EB5g_EIB10_zB44_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7E_12try_for_each4callB39_B55_NcNtB55_5Break0E0B55_E0E0B3f_.exit.i: ; preds = %_RNCNvMNtNtCsefoF4u9kbII_5wasmi6module6parserNtB4_12ModuleParser15process_element0B8_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false), !noalias !1298
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.i, ptr noundef nonnull align 1 dereferenceable(7) %i.e, i64 7, i1 false), !noalias !1298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1292
  %.not.i.i = icmp eq i8 %.sroa.63.0.copyload.i.i.i, -1
  br i1 %.not.i.i, label %bb.d, label %.loopexit17.i

._crit_edge.i:                                    ; preds = %bb.d, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1292
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 -1, ptr %i.k, align 8, !alias.scope !1299
  br label %_RINvYINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB6_4core8elements7ElementENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1G_8adapters3map12map_try_foldINtNtB1I_6result6ResultB14_NtNtB8_13binary_reader17BinaryReaderErrorEIB3k_NtNtNtCsefoF4u9kbII_5wasmi6module7element14ElementSegmentNtNtB4B_5error5ErrorEuINtNtNtB1I_3ops12control_flow11ControlFlowIB5N_B4v_EENCNvMNtB4z_6parserNtB6I_12ModuleParser15process_element0NCINvXB2M_INtB2M_12GenericShuntINtB2K_3MapB3_B6D_EIB3k_zB5q_EEB1A_8try_folduNCINvNvB1A_12try_for_each4callB4v_B6s_NcNtB6s_5Break0E0B6s_E0E0B5M_EB4B_.exit

.loopexit17.i:                                    ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core8elements7ElementNtNtB1t_13binary_reader17BinaryReaderErrorEIB10_NtNtNtCsefoF4u9kbII_5wasmi6module7element14ElementSegmentNtNtB3f_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4r_B39_EENCNvMNtB3d_6parserNtB5l_12ModuleParser15process_element0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtB1r_22SectionLimitedIntoIterB1l_EB5g_EIB10_zB44_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7E_12try_for_each4callB39_B55_NcNtB55_5Break0E0B55_E0E0B3f_.exit.i, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core8elements7ElementNtNtB1t_13binary_reader17BinaryReaderErrorEIB10_NtNtNtCsefoF4u9kbII_5wasmi6module7element14ElementSegmentNtNtB3f_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4r_B39_EENCNvMNtB3d_6parserNtB5l_12ModuleParser15process_element0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtB1r_22SectionLimitedIntoIterB1l_EB5g_EIB10_zB44_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7E_12try_for_each4callB39_B55_NcNtB55_5Break0E0B55_E0E0B3f_.exit.thread.i
  %.sroa.63.0.copyload.i.sink.i13.i = phi i8 [ 2, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core8elements7ElementNtNtB1t_13binary_reader17BinaryReaderErrorEIB10_NtNtNtCsefoF4u9kbII_5wasmi6module7element14ElementSegmentNtNtB3f_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4r_B39_EENCNvMNtB3d_6parserNtB5l_12ModuleParser15process_element0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtB1r_22SectionLimitedIntoIterB1l_EB5g_EIB10_zB44_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7E_12try_for_each4callB39_B55_NcNtB55_5Break0E0B55_E0E0B3f_.exit.thread.i ], [ %.sroa.63.0.copyload.i.i.i, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core8elements7ElementNtNtB1t_13binary_reader17BinaryReaderErrorEIB10_NtNtNtCsefoF4u9kbII_5wasmi6module7element14ElementSegmentNtNtB3f_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4r_B39_EENCNvMNtB3d_6parserNtB5l_12ModuleParser15process_element0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtB1r_22SectionLimitedIntoIterB1l_EB5g_EIB10_zB44_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7E_12try_for_each4callB39_B55_NcNtB55_5Break0E0B55_E0E0B3f_.exit.i ]
  %.sroa.04.012.i = phi ptr [ undef, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core8elements7ElementNtNtB1t_13binary_reader17BinaryReaderErrorEIB10_NtNtNtCsefoF4u9kbII_5wasmi6module7element14ElementSegmentNtNtB3f_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4r_B39_EENCNvMNtB3d_6parserNtB5l_12ModuleParser15process_element0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtB1r_22SectionLimitedIntoIterB1l_EB5g_EIB10_zB44_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7E_12try_for_each4callB39_B55_NcNtB55_5Break0E0B55_E0E0B3f_.exit.thread.i ], [ %.sroa.0.0.copyload.i.i.i, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core8elements7ElementNtNtB1t_13binary_reader17BinaryReaderErrorEIB10_NtNtNtCsefoF4u9kbII_5wasmi6module7element14ElementSegmentNtNtB3f_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4r_B39_EENCNvMNtB3d_6parserNtB5l_12ModuleParser15process_element0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtB1r_22SectionLimitedIntoIterB1l_EB5g_EIB10_zB44_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7E_12try_for_each4callB39_B55_NcNtB55_5Break0E0B55_E0E0B3f_.exit.i ]
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.47.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.i, i64 40, i1 false), !noalias !1300
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.i, i64 7, i1 false), !noalias !1300
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  store ptr %.sroa.04.012.i, ptr %0, align 8, !alias.scope !1301
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %.sroa.63.0.copyload.i.sink.i13.i, ptr %.sroa.58.0..sroa_idx.i, align 8, !alias.scope !1301
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1292
  br label %_RINvYINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB6_4core8elements7ElementENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1G_8adapters3map12map_try_foldINtNtB1I_6result6ResultB14_NtNtB8_13binary_reader17BinaryReaderErrorEIB3k_NtNtNtCsefoF4u9kbII_5wasmi6module7element14ElementSegmentNtNtB4B_5error5ErrorEuINtNtNtB1I_3ops12control_flow11ControlFlowIB5N_B4v_EENCNvMNtB4z_6parserNtB6I_12ModuleParser15process_element0NCINvXB2M_INtB2M_12GenericShuntINtB2K_3MapB3_B6D_EIB3k_zB5q_EEB1A_8try_folduNCINvNvB1A_12try_for_each4callB4v_B6s_NcNtB6s_5Break0E0B6s_E0E0B5M_EB4B_.exit

bb.d:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core8elements7ElementNtNtB1t_13binary_reader17BinaryReaderErrorEIB10_NtNtNtCsefoF4u9kbII_5wasmi6module7element14ElementSegmentNtNtB3f_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4r_B39_EENCNvMNtB3d_6parserNtB5l_12ModuleParser15process_element0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtB1r_22SectionLimitedIntoIterB1l_EB5g_EIB10_zB44_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7E_12try_for_each4callB39_B55_NcNtB55_5Break0E0B55_E0E0B3f_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1292
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1292
  call void @_RNvXs7_NtCs9FmeSmcCnTG_10wasmparser7readersINtB5_22SectionLimitedIntoIterNtNtNtB5_4core8elements7ElementENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1), !noalias !1291
  %i.l = load i32, ptr %i.b, align 8, !noalias !1292 ; 2 uses
  %.not.i = icmp eq i32 %i.l, -2
  br i1 %.not.i, label %._crit_edge.i, label %bb.b

_RINvYINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB6_4core8elements7ElementENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1G_8adapters3map12map_try_foldINtNtB1I_6result6ResultB14_NtNtB8_13binary_reader17BinaryReaderErrorEIB3k_NtNtNtCsefoF4u9kbII_5wasmi6module7element14ElementSegmentNtNtB4B_5error5ErrorEuINtNtNtB1I_3ops12control_flow11ControlFlowIB5N_B4v_EENCNvMNtB4z_6parserNtB6I_12ModuleParser15process_element0NCINvXB2M_INtB2M_12GenericShuntINtB2K_3MapB3_B6D_EIB3k_zB5q_EEB1A_8try_folduNCINvNvB1A_12try_for_each4callB4v_B6s_NcNtB6s_5Break0E0B6s_E0E0B5M_EB4B_.exit: ; preds = %._crit_edge.i, %.loopexit17.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core5types7ValTypeENCNvMs8_NtNtB1v_9validator9operatorsINtB2v_21OperatorValidatorTempNtNtB2x_4core18ValidatorResourcesE28check_func_type_same_resultss0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4y_8for_each4callNtNtCsexYYUdYSQU6_5alloc6string6StringNCINvMsk_NtB5F_3vecINtB6m_3VecB5B_E14extend_trustedBN_E0E0ECsefoF4u9kbII_5wasmi(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.d = icmp eq ptr %0, %1
  br i1 %i.d, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core5types7ValTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1W_8adapters3map8map_foldRBQ_NtNtCsexYYUdYSQU6_5alloc6string6StringuNCNvMs8_NtNtBY_9validator9operatorsINtB3Z_21OperatorValidatorTempNtNtB41_4core18ValidatorResourcesE28check_func_type_same_resultss0_0NCINvNvB1Q_8for_each4callB3e_NCINvMsk_NtB3i_3vecINtB6C_3VecB3e_E14extend_trustedINtB2G_3MapBF_B3R_EE0E0E0ECsefoF4u9kbII_5wasmi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %1 to i64
  %i.f = ptrtoint ptr %0 to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 2
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.k, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.l, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1314
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1314
  store ptr %i.i, ptr %i.b, align 8, !noalias !1315
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1315
  store ptr %i.b, ptr %i.a, align 8, !noalias !1315
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core5types7ValTypeNtB6_7Display3fmtCsefoF4u9kbII_5wasmi, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !1315
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @12, ptr noundef nonnull %i.a)
          to label %bb.d unwind label %bb.e, !noalias !1316

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1314
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !1317
  %i.k = add i64 %.val10.i, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1314
  %i.l = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.m = icmp eq i64 %i.l, %i.h
  br i1 %i.m, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core5types7ValTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1W_8adapters3map8map_foldRBQ_NtNtCsexYYUdYSQU6_5alloc6string6StringuNCNvMs8_NtNtBY_9validator9operatorsINtB3Z_21OperatorValidatorTempNtNtB41_4core18ValidatorResourcesE28check_func_type_same_resultss0_0NCINvNvB1Q_8for_each4callB3e_NCINvMsk_NtB3i_3vecINtB6C_3VecB3e_E14extend_trustedINtB2G_3MapBF_B3R_EE0E0E0ECsefoF4u9kbII_5wasmi.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1316
  resume { ptr, i32 } %i.n

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core5types7ValTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1W_8adapters3map8map_foldRBQ_NtNtCsexYYUdYSQU6_5alloc6string6StringuNCNvMs8_NtNtBY_9validator9operatorsINtB3Z_21OperatorValidatorTempNtNtB41_4core18ValidatorResourcesE28check_func_type_same_resultss0_0NCINvNvB1Q_8for_each4callB3e_NCINvMsk_NtB3i_3vecINtB6C_3VecB3e_E14extend_trustedINtB2G_3MapBF_B3R_EE0E0E0ECsefoF4u9kbII_5wasmi.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.k, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1316
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core5types7ValTypeENvNvXs2_NtNtCsefoF4u9kbII_5wasmi6module5utilsNtNtNtB2z_4func2ty8FuncTypeINtB2v_14FromWasmparserRNtB1p_8FuncTypeE15from_wasmparser18extract_value_typeENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4N_8for_each4callNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6H_3VecB5Q_E14extend_trustedBN_E0E0EB2z_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core5types7ValTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1W_8adapters3map8map_foldRBQ_NtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeuNvNvXs2_NtNtCsefoF4u9kbII_5wasmi6module5utilsNtNtNtB49_4func2ty8FuncTypeINtB45_14FromWasmparserRNtBS_8FuncTypeE15from_wasmparser18extract_value_typeNCINvNvB1Q_8for_each4callB3e_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6X_3VecB3e_E14extend_trustedINtB2G_3MapBF_B3X_EE0E0E0EB49_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 2
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.j, %bb.d ] ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.g = invoke noundef range(i8 0, 7) i8 @_RNvNvXs2_NtNtCsefoF4u9kbII_5wasmi6module5utilsNtNtNtBb_4func2ty8FuncTypeINtB7_14FromWasmparserRNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core5types8FuncTypeE15from_wasmparser18extract_value_type(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %i.f)
          to label %bb.d unwind label %bb.e, !noalias !1326

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload, i64 %.val10.i
  store i8 %i.g, ptr %i.h, align 1, !noalias !1327
  %i.i = add i64 %.val10.i, 1                     ; 2 uses
  %i.j = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.e
  br i1 %i.k, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core5types7ValTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1W_8adapters3map8map_foldRBQ_NtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeuNvNvXs2_NtNtCsefoF4u9kbII_5wasmi6module5utilsNtNtNtB49_4func2ty8FuncTypeINtB45_14FromWasmparserRNtBS_8FuncTypeE15from_wasmparser18extract_value_typeNCINvNvB1Q_8for_each4callB3e_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6X_3VecB3e_E14extend_trustedINtB2G_3MapBF_B3X_EE0E0E0EB49_.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1326
  resume { ptr, i32 } %i.l

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core5types7ValTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1W_8adapters3map8map_foldRBQ_NtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeuNvNvXs2_NtNtCsefoF4u9kbII_5wasmi6module5utilsNtNtNtB49_4func2ty8FuncTypeINtB45_14FromWasmparserRNtBS_8FuncTypeE15from_wasmparser18extract_value_typeNCINvNvB1Q_8for_each4callB3e_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6X_3VecB3e_E14extend_trustedINtB2G_3MapBF_B3X_EE0E0E0EB49_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.i, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1326
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameENcNtNtB1P_8Imported4Func0ENtNtNtBa_6traits8iterator8Iterator4folduQQQNCINvNvB32_8for_each4callB2G_NCINvMsk_B12_INtB12_3VecB48_E14extend_trustedINtNtB8_5chain5ChainIB4W_IB4W_BN_IBO_BX_NcNtB2G_5Table0EEIBO_BX_NcNtB2G_6Memory0EEIBO_BX_NcNtB2G_6Global0EEE0E0EB1R_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1U_8adapters3map8map_foldBX_NtB11_8ImporteduNcNtB3r_4Func0QQQNCINvNvB1O_8for_each4callB3r_NCINvMsk_B8_INtB8_3VecB3r_E14extend_trustedINtNtB2W_5chain5ChainIB59_IB59_INtB2U_3MapBI_B3H_EIB5E_BI_NcNtB3r_5Table0EEIB5E_BI_NcNtB3r_6Memory0EEIB5E_BI_NcNtB3r_6Global0EEE0E0E0EB13_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameENcNtNtB1P_8Imported5Table0ENtNtNtBa_6traits8iterator8Iterator4folduQQNCINvNvB33_8for_each4callB2G_NCINvMsk_B12_INtB12_3VecB48_E14extend_trustedINtNtB8_5chain5ChainIB4W_IB4W_IBO_BX_NcNtB2G_4Func0EBN_EIBO_BX_NcNtB2G_6Memory0EEIBO_BX_NcNtB2G_6Global0EEE0E0EB1R_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1U_8adapters3map8map_foldBX_NtB11_8ImporteduNcNtB3r_5Table0QQNCINvNvB1O_8for_each4callB3r_NCINvMsk_B8_INtB8_3VecB3r_E14extend_trustedINtNtB2W_5chain5ChainIB59_IB59_INtB2U_3MapBI_NcNtB3r_4Func0EIB5E_BI_B3H_EEIB5E_BI_NcNtB3r_6Memory0EEIB5E_BI_NcNtB3r_6Global0EEE0E0E0EB13_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameENcNtNtB1P_8Imported6Global0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB34_8for_each4callB2G_NCINvMsk_B12_INtB12_3VecB47_E14extend_trustedINtNtB8_5chain5ChainIB4V_IB4V_IBO_BX_NcNtB2G_4Func0EIBO_BX_NcNtB2G_5Table0EEIBO_BX_NcNtB2G_6Memory0EEBN_EE0E0EB1R_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1U_8adapters3map8map_foldBX_NtB11_8ImporteduNcNtB3r_6Global0NCINvNvB1O_8for_each4callB3r_NCINvMsk_B8_INtB8_3VecB3r_E14extend_trustedINtNtB2W_5chain5ChainIB58_IB58_INtB2U_3MapBI_NcNtB3r_4Func0EIB5D_BI_NcNtB3r_5Table0EEIB5D_BI_NcNtB3r_6Memory0EEIB5D_BI_B3H_EEE0E0E0EB13_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameENcNtNtB1P_8Imported6Memory0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB34_8for_each4callB2G_NCINvMsk_B12_INtB12_3VecB48_E14extend_trustedINtNtB8_5chain5ChainIB4W_IB4W_IBO_BX_NcNtB2G_4Func0EIBO_BX_NcNtB2G_5Table0EEBN_EIBO_BX_NcNtB2G_6Global0EEE0E0EB1R_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCsefoF4u9kbII_5wasmi6module6import10ImportNameENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1U_8adapters3map8map_foldBX_NtB11_8ImporteduNcNtB3r_6Memory0QNCINvNvB1O_8for_each4callB3r_NCINvMsk_B8_INtB8_3VecB3r_E14extend_trustedINtNtB2W_5chain5ChainIB59_IB59_INtB2U_3MapBI_NcNtB3r_4Func0EIB5E_BI_NcNtB3r_5Table0EEIB5E_BI_B3H_EEIB5E_BI_NcNtB3r_6Global0EEE0E0E0EB13_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs7_NtCs6kx5fqqPdgs_8wasmi_ir6encodeRINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZerolENtB6_6Encode6encodeNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func7encoder10EncodedOpsEB1S_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(40) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !7, !align !24, !noundef !7
  %.val = load i32, ptr %i.b, align 4, !range !25, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1331
  store i32 %.val, ptr %i.a, align 4, !noalias !1331
  call void @_RNvXsb_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func7encoderNtB5_10EncodedOpsNtNtCs6kx5fqqPdgs_8wasmi_ir6encode7Encoder11write_bytes(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1331
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs7_NtCs6kx5fqqPdgs_8wasmi_ir6encodeRINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeromENtB6_6Encode6encodeNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func7encoder10EncodedOpsEB1S_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(40) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !7, !align !24, !noundef !7
  %.val = load i32, ptr %i.b, align 4, !range !25, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1335
  store i32 %.val, ptr %i.a, align 4, !noalias !1335
  call void @_RNvXsb_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func7encoderNtB5_10EncodedOpsNtNtCs6kx5fqqPdgs_8wasmi_ir6encode7Encoder11write_bytes(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1335
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs7_NtCs6kx5fqqPdgs_8wasmi_ir6encodeRINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeroxENtB6_6Encode6encodeNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func7encoder10EncodedOpsEB1S_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(40) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !7, !align !12, !noundef !7
  %.val = load i64, ptr %i.b, align 8, !range !26, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1339
  store i64 %.val, ptr %i.a, align 8, !noalias !1339
  call void @_RNvXsb_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func7encoderNtB5_10EncodedOpsNtNtCs6kx5fqqPdgs_8wasmi_ir6encode7Encoder11write_bytes(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1339
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs7_NtCs6kx5fqqPdgs_8wasmi_ir6encodeRINtNtNtCskKLDkoKarTP_4core3num7nonzero7NonZeroyENtB6_6Encode6encodeNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func7encoder10EncodedOpsEB1S_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(40) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !7, !align !12, !noundef !7
  %.val = load i64, ptr %i.b, align 8, !range !26, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1343
  store i64 %.val, ptr %i.a, align 8, !noalias !1343
  call void @_RNvXsb_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func7encoderNtB5_10EncodedOpsNtNtCs6kx5fqqPdgs_8wasmi_ir6encode7Encoder11write_bytes(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1343
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden { i1, i8 } @_RINvXsh_NtCs6kx5fqqPdgs_8wasmi_ir6decodehNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %0) unnamed_addr #8 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1346)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !1346, !noundef !7 ; 2 uses
  %.sroa.0.0.copyload = load i8, ptr %i.a, align 1, !noalias !1346
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store ptr %i.b, ptr %0, align 8, !alias.scope !1346
  %i.c = insertvalue { i1, i8 } { i1 false, i8 undef }, i8 %.sroa.0.0.copyload, 1
  ret { i1, i8 } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden range(i32 512, -65023) i32 @_RINvXsi_NtCs6kx5fqqPdgs_8wasmi_ir6decodetNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %0) unnamed_addr #8 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1349)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !1349, !noundef !7 ; 2 uses
  %.sroa.0.0.copyload = load i16, ptr %i.a, align 1, !noalias !1349
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store ptr %i.b, ptr %0, align 8, !alias.scope !1349
  %.sroa.4.0.insert.ext = zext i16 %.sroa.0.0.copyload to i32
  %.sroa.4.0.insert.shift = shl nuw i32 %.sroa.4.0.insert.ext, 16
  %.sroa.3.0.insert.insert = or disjoint i32 %.sroa.4.0.insert.shift, 512
  ret i32 %.sroa.3.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden range(i64 512, -4294966783) i64 @_RINvXsj_NtCs6kx5fqqPdgs_8wasmi_ir6decodemNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %0) unnamed_addr #8 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1352)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !1352, !noundef !7 ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %i.a, align 1, !noalias !1352
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store ptr %i.b, ptr %0, align 8, !alias.scope !1352
  %.sroa.41.0.insert.ext = zext i32 %.sroa.0.0.copyload to i64
  %.sroa.41.0.insert.shift = shl nuw i64 %.sroa.41.0.insert.ext, 32
  %.sroa.3.0.insert.insert = or disjoint i64 %.sroa.41.0.insert.shift, 512
  ret i64 %.sroa.3.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXsk_NtCs6kx5fqqPdgs_8wasmi_ir6decodeyNtB6_6Decode6decodeNtNvMsd_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB14_2Ip6decode9IpDecoderEB1c_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1), (8, 16)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1355)
  %i.a = load ptr, ptr %1, align 8, !alias.scope !1355, !noundef !7 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 1, !noalias !1355
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %1, align 8, !alias.scope !1355
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.c, align 8
  store i8 0, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsk_NtCs6kx5fqqPdgs_8wasmi_ir6decodeyNtB6_6Decode6decodeRShECsefoF4u9kbII_5wasmi(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.b = call noundef i8 @_RNvXs0_NtCs6kx5fqqPdgs_8wasmi_ir6decodeRShNtB5_7Decoder10read_bytes(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, ptr noalias nofree noundef nonnull %i.a, i64 noundef 8) ; 2 uses
end_hunk_1
begin_hunk_2_@_RNCNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB7_12OperandStack3pop0Bh_:bb.a
  %.val = load ptr, ptr %i.b, align 8, !alias.scope !1384, !nonnull !7, !noundef !7 ; 3 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %.val)
          to label %bb.d unwind label %.body, !noalias !1385, !inline_history !0

.body:                                            ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 112, i64 noundef 8) #34, !noalias !1385, !inline_history !1
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #40
  unreachable

bb.c:                                             ; preds = %bb.a
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 112, i64 noundef 8) #34, !noalias !1385, !inline_history !1
  resume { ptr, i32 } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable
define noundef range(i8 0, 13) i8 @_RNvMNtCsefoF4u9kbII_5wasmi5errorNtB2_5Error12as_trap_code(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 5 uses
  %i.b = load i8, ptr %i.a, align 8, !range !11, !alias.scope !1388, !noundef !7 ; 3 uses
  %i.c = icmp ne i8 %i.b, 15
  tail call void @llvm.assume(i1 %i.c)
  %i.d = add nsw i8 %i.b, -6
  %i.e = icmp samesign ugt i8 %i.b, 5
  %narrow.i = select i1 %i.e, i8 %i.d, i8 9
  switch i8 %narrow.i, label %_RNvMs1_NtCsefoF4u9kbII_5wasmi5errorNtB5_9ErrorKind12as_trap_code.exit [
    i8 0, label %bb.b
    i8 5, label %bb.f
    i8 7, label %bb.c
    i8 8, label %bb.d
    i8 11, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.g = load i8, ptr %i.f, align 1, !range !27, !alias.scope !1388, !noundef !7
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !1389, !alias.scope !1388, !noundef !7
  switch i64 %i.i, label %_RNvMs1_NtCsefoF4u9kbII_5wasmi5errorNtB5_9ErrorKind12as_trap_code.exit [
    i64 1, label %bb.g
    i64 2, label %bb.g
    i64 8, label %bb.f
  ]

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !1390, !alias.scope !1388, !noundef !7
  %switch.tableidx = add nsw i64 %i.k, -4         ; 3 uses
  %i.l = icmp ult i64 %switch.tableidx, 7
  %switch.maskindex = trunc i64 %switch.tableidx to i8
  %switch.shifted = lshr i8 111, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.l, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %_RNvMs1_NtCsefoF4u9kbII_5wasmi5errorNtB5_9ErrorKind12as_trap_code.exit

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !17, !alias.scope !1388, !noundef !7
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.f, label %_RNvMs1_NtCsefoF4u9kbII_5wasmi5errorNtB5_9ErrorKind12as_trap_code.exit

switch.lookup:                                    ; preds = %bb.d
  %switch.cast = trunc nuw i64 %switch.tableidx to i56
  %switch.shiftamt = shl nuw nsw i56 %switch.cast, 3
  %switch.downshift = lshr i56 2824645422285571, %switch.shiftamt
  %switch.masked = trunc i56 %switch.downshift to i8
  br label %bb.f

bb.f:                                             ; preds = %switch.lookup, %bb.g, %bb.e, %bb.c, %bb.b, %bb.a
  %.sroa.01.0.i = phi i8 [ %i.g, %bb.b ], [ 10, %bb.c ], [ 2, %bb.g ], [ 10, %bb.a ], [ 10, %bb.e ], [ %switch.masked, %switch.lookup ]
  br label %_RNvMs1_NtCsefoF4u9kbII_5wasmi5errorNtB5_9ErrorKind12as_trap_code.exit

bb.g:                                             ; preds = %bb.c, %bb.c
  br label %bb.f

_RNvMs1_NtCsefoF4u9kbII_5wasmi5errorNtB5_9ErrorKind12as_trap_code.exit: ; preds = %bb.d, %bb.a, %bb.c, %bb.e, %bb.f
  %.sroa.0.0.i = phi i8 [ %.sroa.01.0.i, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.a ]
  ret i8 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define noalias noundef nonnull align 8 ptr @_RNvMNtCsefoF4u9kbII_5wasmi5errorNtB2_5Error9from_kind(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !1393
  %i.a = tail call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef 8) #34, !noalias !1393 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindE3newBI_.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #42
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %0) #39
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #40
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindE3newBI_.exit: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.a, ptr noundef nonnull align 8 dereferenceable(112) %0, i64 112, i1 false)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvMNtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB2_7CodeMap11alloc_funcs(ptr nofree noundef nonnull align 8 captures(none) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 6 uses
  %i.b = cmpxchg weak ptr %i.a, i8 0, i8 1 acquire monotonic, align 1
  %i.c = extractvalue { i8, i1 } %i.b, 1
  br i1 %i.c, label %_RNvMs3_NtNtCsfqhPXF3e39f_4spin5mutex4spinINtB5_9SpinMutexuE4lockCsefoF4u9kbII_5wasmi.exit, label %.preheader

.loopexit10:                                      ; preds = %.lr.ph, %.preheader
  %i.d = cmpxchg weak ptr %i.a, i8 0, i8 1 acquire monotonic, align 1
  %i.e = extractvalue { i8, i1 } %i.d, 1
  br i1 %i.e, label %_RNvMs3_NtNtCsfqhPXF3e39f_4spin5mutex4spinINtB5_9SpinMutexuE4lockCsefoF4u9kbII_5wasmi.exit, label %.preheader

.preheader:                                       ; preds = %bb.a, %.loopexit10
  %i.f = load atomic i8, ptr %i.a monotonic, align 8
  %.not.i11 = icmp eq i8 %i.f, 0
  br i1 %.not.i11, label %.loopexit10, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  tail call void @llvm.x86.sse2.pause()
  %i.g = load atomic i8, ptr %i.a monotonic, align 8
  %.not.i = icmp eq i8 %i.g, 0
  br i1 %.not.i, label %.loopexit10, label %.lr.ph

_RNvMs3_NtNtCsfqhPXF3e39f_4spin5mutex4spinINtB5_9SpinMutexuE4lockCsefoF4u9kbII_5wasmi.exit: ; preds = %.loopexit10, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.i = load atomic i64, ptr %i.h monotonic, align 8, !noalias !1408 ; 4 uses
  %i.j = add i64 %i.i, %1                         ; 5 uses
  %i.k = icmp uge i64 %i.j, %i.i
  %i.l = icmp ult i64 %i.j, 100000001
  %narrow.i = and i1 %i.k, %i.l
  br i1 %narrow.i, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %_RNvMs3_NtNtCsfqhPXF3e39f_4spin5mutex4spinINtB5_9SpinMutexuE4lockCsefoF4u9kbII_5wasmi.exit
  %i.m = add nuw nsw i64 %i.i, 31
  %i.n = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.m, i1 true) ; 2 uses
  %i.o = add nuw nsw i64 %i.j, 31
  %i.p = tail call range(i64 36, 65) i64 @llvm.ctlz.i64(i64 %i.o, i1 true) ; 2 uses
  %i.q = sub nuw nsw i64 59, %i.p
  %i.r = icmp samesign ult i64 %i.p, %i.n
  br i1 %i.r, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.s = sub nuw nsw i64 59, %i.n
  br label %.lr.ph.i

bb.c:                                             ; preds = %_RNvMs3_NtNtCsfqhPXF3e39f_4spin5mutex4spinINtB5_9SpinMutexuE4lockCsefoF4u9kbII_5wasmi.exit
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #38
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.c
  unreachable

._crit_edge.i:                                    ; preds = %.noexc7, %bb.b
  store atomic i64 %i.j, ptr %i.h release, align 8, !noalias !1408
  %i.t = trunc i64 %i.i to i32                    ; 2 uses
  %i.u = trunc nuw nsw i64 %i.j to i32            ; 2 uses
  %.not.i.i = icmp ugt i32 %i.t, %i.u
  br i1 %.not.i.i, label %bb.d, label %bb.e, !prof !9

bb.d:                                             ; preds = %._crit_edge.i
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #38
          to label %.noexc6 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc6:                                          ; preds = %bb.d
  unreachable

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.noexc7
  %.sroa.06.112.i = phi i64 [ %i.z, %.noexc7 ], [ %i.s, %.lr.ph.i.preheader ] ; 3 uses
  %i.v = add nuw i64 %.sroa.06.112.i, 5
  %i.w = and i64 %i.v, 63
  %i.x = shl nuw i64 1, %i.w
  %i.y = invoke { ptr, i64 } @_RINvXsb_NtNtCsexYYUdYSQU6_5alloc5boxed4iterINtB8_3BoxSNtNtNtCsefoF4u9kbII_5wasmi6engine8code_map9FuncEntryEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB1O_8adapters4take4TakeINtNtNtB1O_7sources11repeat_with10RepeatWithNvMsc_BS_BQ_6uninitEEEBW_(i64 noundef %i.x)
          to label %.noexc7 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc7:                                          ; preds = %.lr.ph.i
  %i.z = add nuw i64 %.sroa.06.112.i, 1           ; 2 uses
  %i.aa = extractvalue { ptr, i64 } %i.y, 0       ; 2 uses
  %2 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.06.112.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aa) ]
  store ptr %i.aa, ptr %2, align 8, !noalias !1408
  %exitcond.not.i = icmp eq i64 %i.z, %i.q
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.e:                                             ; preds = %._crit_edge.i
  store atomic i8 0, ptr %i.a release, align 8, !noalias !1409
  %i.ab = insertvalue { i32, i32 } poison, i32 %i.t, 0
  %i.ac = insertvalue { i32, i32 } %i.ab, i32 %i.u, 1
  ret { i32, i32 } %i.ac

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i, %bb.c, %bb.d
  %lpad.loopexit.split-lp17 = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.a release, align 8, !noalias !1410
  resume { ptr, i32 } %lpad.loopexit.split-lp17
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB2_7CodeMap21init_func_as_compiled(ptr nofree noundef nonnull align 8 captures(none) %0, i32 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 3 uses
  store i32 %1, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = load atomic i64, ptr %i.c acquire, align 8
  %i.e = load i32, ptr %i.b, align 4, !noundef !7
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %.not.i = icmp ugt i64 %i.d, %i.f
  br i1 %.not.i, label %bb.b, label %_RNvMs4_NtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB5_5Funcs10get_within.exit.thread, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.g = add nuw nsw i64 %i.f, 32                 ; 2 uses
  %i.h = tail call range(i64 31, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true) ; 2 uses
  %i.i = sub nuw nsw i64 58, %i.h
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !noundef !7 ; 2 uses
  %.not4.i = icmp eq ptr %i.k, null
  br i1 %.not4.i, label %bb.d, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.l = lshr exact i64 -9223372036854775808, %i.h ; 2 uses
  %i.m = sub nsw i64 %i.g, %i.l                   ; 2 uses
  %.not = icmp ult i64 %i.m, %i.l
  %i.n = getelementptr inbounds nuw [64 x i8], ptr %i.k, i64 %i.m ; 3 uses
  br i1 %.not, label %bb.e, label %_RNvMs4_NtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB5_5Funcs10get_within.exit.thread, !prof !28

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #38
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.o = load <2 x i64>, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 56 ; 2 uses
  %i.q = load atomic i8, ptr %i.p monotonic, align 1, !noalias !1421
  %.not.i9 = icmp eq i8 %i.q, 0
  br i1 %.not.i9, label %bb.j, label %bb.f, !prof !16

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @36, ptr noundef nonnull inttoptr (i64 67 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #42
          to label %bb.g unwind label %bb.h, !noalias !1421

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %i.s, label %.body, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.copyload, i64 noundef %.sroa.5.0.copyload, i64 noundef 1) #34, !noalias !1422
  br label %.body

_RNvMs4_NtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB5_5Funcs10get_within.exit.thread: ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs5_NtNtNtCsefoF4u9kbII_5wasmi6engine8code_map4spanNtB5_10EngineFuncNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.45.0..sroa_idx, align 8
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @13, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #42
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %_RNvMs4_NtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB5_5Funcs10get_within.exit.thread
  unreachable

bb.j:                                             ; preds = %bb.e
  store ptr %.sroa.0.0.copyload, ptr %i.n, align 8
  %.sroa.5.0..sroa.0.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store <2 x i64> %i.o, ptr %.sroa.5.0..sroa.0.0.i.sroa_idx, align 8
  store atomic i8 4, ptr %i.p release, align 8, !noalias !1423
  ret void

.body:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.k, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.h
  %eh.lpad-body15 = phi { ptr, i32 } [ %i.r, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i ], [ %i.r, %bb.h ], [ %i.t, %bb.k ], [ %i.t, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i ]
  resume { ptr, i32 } %eh.lpad-body15

bb.k:                                             ; preds = %bb.d, %_RNvMs4_NtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB5_5Funcs10get_within.exit.thread
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val8 = load i64, ptr %i.u, align 8, !alias.scope !1424, !noundef !7 ; 2 uses
  %i.v = icmp eq i64 %.val8, 0
  br i1 %i.v, label %.body, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.k
  %.val = load ptr, ptr %2, align 8, !nonnull !7, !noundef !7
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %.val8, i64 noundef 1) #34, !noalias !1425
  br label %.body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB2_7CodeMap23init_func_as_uncompiled(ptr nofree noundef nonnull align 8 captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %5, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 3 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [56 x i8], align 8                ; 9 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [4 x i8], align 4                 ; 3 uses
  store i32 %1, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.l = load atomic i64, ptr %i.k acquire, align 8
  %i.m = load i32, ptr %i.j, align 4, !noundef !7
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %.not.i = icmp ugt i64 %i.l, %i.n
  br i1 %.not.i, label %bb.b, label %_RNvMs4_NtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB5_5Funcs10get_within.exit.thread, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.o = add nuw nsw i64 %i.n, 32                 ; 2 uses
  %i.p = tail call range(i64 31, 65) i64 @llvm.ctlz.i64(i64 %i.o, i1 true) ; 2 uses
  %i.q = sub nuw nsw i64 58, %i.p
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !noundef !7 ; 2 uses
  %.not4.i = icmp eq ptr %i.s, null
  br i1 %.not4.i, label %bb.d, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.t = lshr exact i64 -9223372036854775808, %i.p ; 2 uses
  %i.u = sub nsw i64 %i.o, %i.t                   ; 2 uses
  %.not = icmp ult i64 %i.u, %i.t
  %i.v = getelementptr inbounds nuw [64 x i8], ptr %i.s, i64 %i.u ; 2 uses
  br i1 %.not, label %bb.e, label %_RNvMs4_NtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB5_5Funcs10get_within.exit.thread, !prof !28

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #38
          to label %.noexc unwind label %bb.ab

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.w = load ptr, ptr %5, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.x = atomicrmw add ptr %i.w, i64 1 monotonic, align 8
  %i.y = icmp slt i64 %i.x, 0
  br i1 %i.y, label %bb.u, label %bb.g

_RNvMs4_NtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB5_5Funcs10get_within.exit.thread: ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.j, ptr %i.i, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs5_NtNtNtCsefoF4u9kbII_5wasmi6engine8code_map4spanNtB5_10EngineFuncNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.45.0..sroa_idx, align 8
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @13, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #42
          to label %bb.f unwind label %bb.ab

bb.f:                                             ; preds = %_RNvMs4_NtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB5_5Funcs10get_within.exit.thread
  unreachable

bb.g:                                             ; preds = %bb.e
  %.sroa.0.0.copyload = load ptr, ptr %6, align 8 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1470)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.w, ptr %i.g, align 8, !noalias !1471
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1471
  %.not.i8 = icmp eq ptr %.sroa.0.0.copyload, null ; 2 uses
  br i1 %.not.i8, label %bb.o, label %bb.i

.body.i:                                          ; preds = %bb.s, %bb.r, %bb.q, %bb.l, %bb.k
  %.pn.i = phi { ptr, i32 } [ %i.af, %bb.k ], [ %i.ao, %bb.r ], [ %i.af, %bb.l ], [ %i.ao, %bb.s ], [ %i.ao, %bb.q ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1472)
  call void @llvm.experimental.noalias.scope.decl(metadata !1473)
  call void @llvm.experimental.noalias.scope.decl(metadata !1474)
  %i.z = load ptr, ptr %i.g, align 8, !alias.scope !1475, !noalias !1471, !nonnull !7, !noundef !7
  %i.aa = atomicrmw add ptr %i.z, i64 -1 release, align 8, !noalias !1476
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.h, label %.body.thread

bb.h:                                             ; preds = %.body.i
  fence acquire
end_hunk_2
begin_hunk_3_@_RNvMNtNtCsefoF4u9kbII_5wasmi6engine8code_mapNtB2_7CodeMap23init_func_as_uncompiled:bb.a
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack10push_block(ptr noalias nofree noundef align 8 dereferenceable(216) %0, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [12 x i8], align 4                ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.g = call noundef i16 @_RNvMNtNtCsefoF4u9kbII_5wasmi6engine10block_typeNtB2_9BlockType10len_params(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !1498, !noundef !7 ; 2 uses
  %i.j = icmp ult i64 %i.i, 288230376151711744
  call void @llvm.assume(i1 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 0, ptr %i.a, align 1, !noalias !1499
  call void @_RINvMNtNtCsefoF4u9kbII_5wasmi6engine10block_typeNtB3_9BlockType14func_type_withINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtNtNtB5_10translator4func5stack7control12BranchParamsNtNtB7_5error5ErrorENCNvMs0_B1V_NtB1V_5Stack13branch_params0EB7_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  %i.l = load i8, ptr %i.k, align 2, !range !22, !noundef !7 ; 2 uses
  %i.m = icmp eq i8 %i.l, -2
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.e, align 8, !nonnull !7, !align !12, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.o = zext i16 %i.g to i64
  %i.p = sub nsw i64 %i.i, %i.o
  %.sroa.09.0.copyload = load ptr, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.4.0.copyload = load i16, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 11
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.d, i64 11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.8.0..sroa_idx8, ptr noundef nonnull align 1 dereferenceable(5) %.sroa.6.0..sroa_idx, i64 5, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store ptr %.sroa.09.0.copyload, ptr %i.d, align 8
  %.sroa.7.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i16 %.sroa.4.0.copyload, ptr %.sroa.7.0..sroa_idx3, align 8
  %.sroa.75.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  store i8 %i.l, ptr %.sroa.75.0..sroa_idx6, align 2
  %i.q = load i64, ptr %0, align 8, !range !17, !noundef !7
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i64, ptr %i.r, align 8
  call void @_RNvMs6_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12ControlStack10push_block(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1, i64 noundef %i.p, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.d, i64 noundef %2, i64 noundef %i.q, i64 %i.s)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.n, %bb.b ], [ null, %bb.c ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack10push_local(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(216) %1, i32 noundef %2, i8 noundef range(i8 0, 7) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call fastcc void @_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack10push_local(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(112) %i.a, i32 noundef %2, i8 noundef %3) #37
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack11dealloc_reg(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(216) %1, i8 noundef range(i8 0, 7) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack11dealloc_reg(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.a, i8 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack11pop_control(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef align 8 dereferenceable(216) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [120 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs6_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12ControlStack3pop(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1)
  %i.b = load i64, ptr %i.a, align 8, !range !1500, !noundef !7
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %i.a, i64 120, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @16, ptr noundef nonnull inttoptr (i64 91 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #38
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack12branch_slots(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, i8 noundef range(i8 0, 4) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %2, align 8, !range !8, !noundef !7
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.d = load i16, ptr %i.c, align 2
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.f = load i8, ptr %i.e, align 1
  %i.g = zext i8 %i.f to i16
  %.sroa.0.0 = select i1 %i.b, i16 %i.d, i16 %i.g ; 2 uses
  %i.h = icmp eq i16 %.sroa.0.0, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 202
  %i.j = load i16, ptr %i.i, align 2, !noundef !7
  %i.k = zext i16 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 3
  br label %_RNvMs1_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operandNtB5_7Operand10temp_slots.exit

bb.c:                                             ; preds = %bb.a
  %i.m = zext i16 %.sroa.0.0 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.o = add nsw i64 %i.m, -1
  %i.p = tail call noundef i64 @_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack18depth_to_stack_pos(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.n, i64 noundef range(i64 0, 65535) %i.o), !noalias !1509
  %i.q = add i64 %i.p, -1                         ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !1510, !noundef !7 ; 2 uses
  %i.t = icmp ult i64 %i.q, %i.s
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !1510, !nonnull !7, !noundef !7
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %i.q ; 5 uses
  %.sroa.0.0.copyload.i = load i8, ptr %i.w, align 8, !noalias !1509
  %.sroa.84.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %.sroa.84.0.copyload.i = load i32, ptr %.sroa.84.0..sroa_idx.i, align 4, !noalias !1509 ; 4 uses
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.11.0.copyload.i = load i64, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !1509
  %.sroa.11.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.11.0.copyload.i to i32
  switch i8 %.sroa.0.0.copyload.i, label %default.unreachable26.i.i [
    i8 0, label %_RNvMs1_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operandNtB5_7Operand10temp_slots.exit
    i8 2, label %_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack3get.exit
    i8 1, label %_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack3get.exit.thread.thread61
  ]

default.unreachable26.i.i:                        ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.q, i64 noundef %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #38, !noalias !1509
  unreachable

_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack3get.exit: ; preds = %bb.d
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %.sroa.4.0.copyload.i = load i8, ptr %.sroa.4.0..sroa_idx.i, align 1, !noalias !1509
  %.sroa.4.0.copyload.i.fr = freeze i8 %.sroa.4.0.copyload.i ; 2 uses
  %i.x = icmp ugt i8 %.sroa.4.0.copyload.i.fr, 6
  br i1 %i.x, label %_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack3get.exit.thread, label %_RNvMs1_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operandNtB5_7Operand10temp_slots.exit

_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack3get.exit.thread: ; preds = %_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack3get.exit
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.13.0.copyload.i8 = load i32, ptr %.sroa.13.0..sroa_idx.i, align 8
  switch i8 %.sroa.4.0.copyload.i.fr, label %bb.f [
    i8 7, label %_RNvMs1_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operandNtB5_7Operand10temp_slots.exit
    i8 8, label %_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack3get.exit.thread.thread61
    i8 9, label %.thread
  ]

bb.f:                                             ; preds = %_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack3get.exit.thread
  unreachable

_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack3get.exit.thread.thread61: ; preds = %bb.d, %_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack3get.exit.thread
  %.sroa.8.sroa.8.02969.in = phi i32 [ %.sroa.13.0.copyload.i8, %_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack3get.exit.thread ], [ %.sroa.84.0.copyload.i, %bb.d ]
  br label %_RNvMs1_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operandNtB5_7Operand10temp_slots.exit

.thread:                                          ; preds = %_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack3get.exit.thread
  br label %_RNvMs1_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operandNtB5_7Operand10temp_slots.exit

_RNvMs1_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operandNtB5_7Operand10temp_slots.exit: ; preds = %bb.d, %.thread, %_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack3get.exit.thread.thread61, %_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack3get.exit.thread, %_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack3get.exit, %bb.b
  %.sroa.01.0 = phi i32 [ %i.l, %bb.b ], [ %.sroa.11.sroa.0.0.extract.trunc.i, %_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack3get.exit.thread ], [ %.sroa.8.sroa.8.02969.in, %_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack3get.exit.thread.thread61 ], [ %.sroa.84.0.copyload.i, %_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack3get.exit ], [ %.sroa.84.0.copyload.i, %.thread ], [ %.sroa.84.0.copyload.i, %bb.d ]
  %i.y = icmp eq i8 %3, 1
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RNvMs1_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operandNtB5_7Operand10temp_slots.exit
  %i.z = tail call { ptr, i64 } @_RNvMs0_NtNtCsefoF4u9kbII_5wasmi4func2tyNtB5_8FuncType6params(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
  br label %bb.i

bb.h:                                             ; preds = %_RNvMs1_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operandNtB5_7Operand10temp_slots.exit
  %i.aa = tail call { ptr, i64 } @_RNvMs0_NtNtCsefoF4u9kbII_5wasmi4func2tyNtB5_8FuncType7results(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i64 } [ %i.z, %bb.g ], [ %i.aa, %bb.h ] ; 2 uses
  %.sroa.02.0 = extractvalue { ptr, i64 } %.pn, 0 ; 3 uses
  %.sroa.3.0 = extractvalue { ptr, i64 } %.pn, 1  ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.0) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1511)
  %i.ab = icmp samesign eq i64 %.sroa.3.0, 0
  br i1 %i.ab, label %bb.k, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.i
  %min.iters.check = icmp ult i64 %.sroa.3.0, 4
  br i1 %min.iters.check, label %.preheader.i.preheader72, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.preheader
  %n.vec = and i64 %.sroa.3.0, -4                 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ai, %vector.body ]
  %vec.phi70 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aj, %vector.body ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  %wide.load = load <2 x i8>, ptr %i.ac, align 1, !alias.scope !1511
  %wide.load71 = load <2 x i8>, ptr %i.ad, align 1, !alias.scope !1511
  %i.ae = icmp eq <2 x i8> %wide.load, splat (i8 4)
  %i.af = icmp eq <2 x i8> %wide.load71, splat (i8 4)
  %i.ag = select <2 x i1> %i.ae, <2 x i64> splat (i64 2), <2 x i64> splat (i64 1)
  %i.ah = select <2 x i1> %i.af, <2 x i64> splat (i64 2), <2 x i64> splat (i64 1)
  %i.ai = add <2 x i64> %i.ag, %vec.phi           ; 2 uses
  %i.aj = add <2 x i64> %i.ah, %vec.phi70         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !1506

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.aj, %i.ai
  %i.al = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.sroa.3.0, %n.vec
  br i1 %cmp.n, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEENvNtNtNtCsefoF4u9kbII_5wasmi6engine10translator5utils21required_cells_for_tyENtNtNtBa_6traits8iterator8Iterator4foldjNCINvB6_8map_foldtjjNvYjINtNtBc_7convert4FromtE4fromNCINvXsK_NtB3M_5accumjNtB5l_3Sum3sumIBO_BN_B4G_EE0E0EB2B_.exit.i, label %.preheader.i.preheader72

.preheader.i.preheader72:                         ; preds = %.preheader.i.preheader, %middle.block
  %.sroa.04.0.i.i.i.i.ph = phi i64 [ 0, %.preheader.i.preheader ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.i.i.i.ph = phi i64 [ 0, %.preheader.i.preheader ], [ %i.al, %middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader72, %.preheader.i
  %.sroa.04.0.i.i.i.i = phi i64 [ %i.aq, %.preheader.i ], [ %.sroa.04.0.i.i.i.i.ph, %.preheader.i.preheader72 ] ; 2 uses
  %.sroa.02.0.i.i.i.i = phi i64 [ %i.ap, %.preheader.i ], [ %.sroa.02.0.i.i.i.i.ph, %.preheader.i.preheader72 ]
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 %.sroa.04.0.i.i.i.i
  %.val.i.i.i.i = load i8, ptr %i.am, align 1, !range !21, !alias.scope !1511, !noundef !7
  %i.an = icmp eq i8 %.val.i.i.i.i, 4
  %i.ao = select i1 %i.an, i64 2, i64 1
  %i.ap = add i64 %i.ao, %.sroa.02.0.i.i.i.i      ; 2 uses
  %i.aq = add nuw nsw i64 %.sroa.04.0.i.i.i.i, 1  ; 2 uses
  %i.ar = icmp eq i64 %i.aq, %.sroa.3.0
  br i1 %i.ar, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEENvNtNtNtCsefoF4u9kbII_5wasmi6engine10translator5utils21required_cells_for_tyENtNtNtBa_6traits8iterator8Iterator4foldjNCINvB6_8map_foldtjjNvYjINtNtBc_7convert4FromtE4fromNCINvXsK_NtB3M_5accumjNtB5l_3Sum3sumIBO_BN_B4G_EE0E0EB2B_.exit.i, label %.preheader.i, !llvm.loop !1507

_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEENvNtNtNtCsefoF4u9kbII_5wasmi6engine10translator5utils21required_cells_for_tyENtNtNtBa_6traits8iterator8Iterator4foldjNCINvB6_8map_foldtjjNvYjINtNtBc_7convert4FromtE4fromNCINvXsK_NtB3M_5accumjNtB5l_3Sum3sumIBO_BN_B4G_EE0E0EB2B_.exit.i: ; preds = %.preheader.i, %middle.block
  %.lcssa = phi i64 [ %i.al, %middle.block ], [ %i.ap, %.preheader.i ] ; 2 uses
  %i.as = icmp ugt i64 %.lcssa, 65535
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEENvNtNtNtCsefoF4u9kbII_5wasmi6engine10translator5utils21required_cells_for_tyENtNtNtBa_6traits8iterator8Iterator4foldjNCINvB6_8map_foldtjjNvYjINtNtBc_7convert4FromtE4fromNCINvXsK_NtB3M_5accumjNtB5l_3Sum3sumIBO_BN_B4G_EE0E0EB2B_.exit.i
  %i.at = tail call fastcc noundef nonnull align 8 ptr @_RNvXsc_NtCsefoF4u9kbII_5wasmi5errorNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtNtB7_6engine10translator5error16TranslationErrorE4from(i64 10) #37, !noalias !1512
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.at, ptr %i.au, align 8
  br label %bb.l

bb.k:                                             ; preds = %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEENvNtNtNtCsefoF4u9kbII_5wasmi6engine10translator5utils21required_cells_for_tyENtNtNtBa_6traits8iterator8Iterator4foldjNCINvB6_8map_foldtjjNvYjINtNtBc_7convert4FromtE4fromNCINvXsK_NtB3M_5accumjNtB5l_3Sum3sumIBO_BN_B4G_EE0E0EB2B_.exit.i, %bb.i
  %.sroa.0.0.i.i.i6.i = phi i64 [ %.lcssa, %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEENvNtNtNtCsefoF4u9kbII_5wasmi6engine10translator5utils21required_cells_for_tyENtNtNtBa_6traits8iterator8Iterator4foldjNCINvB6_8map_foldtjjNvYjINtNtBc_7convert4FromtE4fromNCINvXsK_NtB3M_5accumjNtB5l_3Sum3sumIBO_BN_B4G_EE0E0EB2B_.exit.i ], [ 0, %bb.i ]
  %i.av = trunc nuw i64 %.sroa.0.0.i.i.i6.i to i16
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.01.0, ptr %i.aw, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.av, ptr %i.ax, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %storemerge = phi i32 [ 0, %bb.k ], [ 1, %bb.j ]
  store i32 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack12peek_control(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs6_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12ControlStack3get(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, i64 noundef %1)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack12push_operand(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(216) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call fastcc void @_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack12push_operand(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(112) %i.a, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) #37
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack13branch_params(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) %1, ptr noalias nofree noundef readonly align 4 captures(address) dead_on_return dereferenceable(12) %2, i8 noundef range(i8 0, 4) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 2 uses
  store i8 %3, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 208
  call void @_RINvMNtNtCsefoF4u9kbII_5wasmi6engine10block_typeNtB3_9BlockType14func_type_withINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtNtNtB5_10translator4func5stack7control12BranchParamsNtNtB7_5error5ErrorENCNvMs0_B1V_NtB1V_5Stack13branch_params0EB7_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack15operand_to_temp(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(216) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1516)
  %i.c = tail call noundef i64 @_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack18depth_to_stack_pos(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.b, i64 noundef %2), !noalias !1516 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1517
  call void @_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack18operand_to_temp_at(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.b, i64 noundef %i.c), !noalias !1516
  %i.d = load i8, ptr %i.a, align 8, !range !1518, !noalias !1517, !noundef !7
  switch i8 %i.d, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.g = load i8, ptr %i.f, align 1, !range !21, !noalias !1517, !noundef !7
  %i.h = load <2 x i32>, ptr %i.e, align 4, !noalias !1517
  store <2 x i32> %i.h, ptr %0, align 8, !alias.scope !1516
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.g, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !1516
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %.sroa.64.0..sroa_idx.i, align 1, !alias.scope !1516
  br label %_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack15operand_to_temp.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.j = load i32, ptr %i.i, align 4, !noalias !1517, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.l = load i8, ptr %i.k, align 1, !range !21, !noalias !1517, !noundef !7
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.n = load i8, ptr %i.m, align 2, !range !8, !noalias !1517, !noundef !7
  store i64 %i.c, ptr %0, align 8, !alias.scope !1516
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.j, ptr %.sroa.47.0..sroa_idx.i, align 8, !alias.scope !1516
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %i.l, ptr %.sroa.58.0..sroa_idx.i, align 4, !alias.scope !1516
  %.sroa.69.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %i.n, ptr %.sroa.69.0..sroa_idx.i, align 1, !alias.scope !1516
  br label %_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack15operand_to_temp.exit

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.p = load i8, ptr %i.o, align 1, !range !21, !noalias !1517, !noundef !7
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.r = load i32, ptr %i.q, align 4, !noalias !1517, !noundef !7
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = load <2 x i64>, ptr %i.s, align 8, !noalias !1517
  store <2 x i64> %i.t, ptr %0, align 8, !alias.scope !1516
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.r, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1516
  br label %_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack15operand_to_temp.exit

_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack15operand_to_temp.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sink.i = phi i8 [ %i.p, %bb.d ], [ 8, %bb.c ], [ 7, %bb.b ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %.sink.i, ptr %i.u, align 4, !alias.scope !1516
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1517
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack15preserve_locals(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(216) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack15preserve_locals(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.a, i32 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack15push_func_block(ptr noalias nofree noundef align 8 dereferenceable(216) %0, ptr noalias nofree noundef readonly align 4 captures(address) dead_on_return dereferenceable(12) %1, i64 noundef %2, i64 noundef range(i64 0, 2) %3, i64 %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 4                 ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 202
  %i.f = load i16, ptr %i.e, align 2, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  call void @_RINvMNtNtCsefoF4u9kbII_5wasmi6engine10block_typeNtB3_9BlockType14func_type_withINtNtCskKLDkoKarTP_4core6result6ResulttNtNtB7_5error5ErrorENCNvMs0_NtNtNtB5_10translator4func5stackNtB2k_5Stack15push_func_block0EB7_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g)
  %i.h = load i16, ptr %i.d, align 8, !range !1519, !noundef !7
  %i.i = trunc nuw i16 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !7, !align !12, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.l = zext i16 %i.f to i32
  %i.m = shl nuw nsw i32 %i.l, 3
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.o = load i16, ptr %i.n, align 2, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %i.m, ptr %i.c, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i16 %i.o, ptr %i.p, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RINvMNtNtCsefoF4u9kbII_5wasmi6engine10block_typeNtB3_9BlockType14func_type_withINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtNtNtB5_10translator4func5stack7control12BranchParamsNtNtB7_5error5ErrorENCNvMs0_B1V_NtB1V_5Stack15push_func_blocks_0EB7_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.c)
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.r = load i8, ptr %i.q, align 2, !range !22, !noundef !7 ; 2 uses
  %i.s = icmp eq i8 %i.r, -2
  %i.t = load ptr, ptr %i.b, align 8              ; 2 uses
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0.copyload = load i16, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  %.sroa.8.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.8.0..sroa_idx11, ptr noundef nonnull align 1 dereferenceable(5) %.sroa.6.0..sroa_idx, i64 5, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.t, ptr %i.a, align 8
  %.sroa.75.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i16 %.sroa.4.0.copyload, ptr %.sroa.75.0..sroa_idx6, align 8
  %.sroa.78.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i8 %i.r, ptr %.sroa.78.0..sroa_idx9, align 2
  call void @_RNvMs6_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12ControlStack10push_block(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1, i64 noundef 0, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.a, i64 noundef %2, i64 noundef %3, i64 %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %.sroa.0.0 = phi ptr [ %i.k, %bb.b ], [ %i.t, %bb.d ], [ null, %bb.e ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack15register_locals(ptr noalias nofree noundef align 8 dereferenceable(216) %0, i64 noundef %1, i8 noundef range(i8 0, 7) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = tail call noundef align 8 ptr @_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack15register_locals(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.a, i64 noundef %1, i8 noundef %2)
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack16peek_control_mut(ptr noalias nofree noundef align 8 dereferenceable(216) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_RNvMs9_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12ControlStack14acquire_target(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %1)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack16push_unreachable(ptr noalias nofree noundef align 8 dereferenceable(216) %0, i8 noundef range(i8 0, 4) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs6_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12ControlStack16push_unreachable(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0, i8 noundef %1)
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack17branch_params_for(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(216) %1, i32 noundef %2, i16 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i8 noundef range(i8 0, 4) %5) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i8 %5, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { ptr, i64 } @_RNvMs0_NtNtCsefoF4u9kbII_5wasmi4func2tyNtB5_8FuncType6params(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) ; 2 uses
  %i.c = load i8, ptr %4, align 8, !range !8, !noundef !7
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call { ptr, i64 } @_RNvMs0_NtNtCsefoF4u9kbII_5wasmi4func2tyNtB5_8FuncType7results(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4)
  %i.f = tail call noundef i16 @_RNvMs0_NtNtCsefoF4u9kbII_5wasmi4func2tyNtB5_8FuncType11len_results(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.h = load i16, ptr %i.g, align 2, !noundef !7
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.j = load i8, ptr %i.i, align 1, !noundef !7
  %i.k = zext i8 %i.j to i16
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.01.0 = phi i16 [ %i.h, %bb.d ], [ %i.k, %bb.e ], [ %i.f, %bb.c ]
  %.pn = phi { ptr, i64 } [ %i.b, %bb.d ], [ %i.b, %bb.e ], [ %i.e, %bb.c ] ; 2 uses
  %.sroa.0.0 = extractvalue { ptr, i64 } %.pn, 0  ; 4 uses
  %.sroa.3.0 = extractvalue { ptr, i64 } %.pn, 1  ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1522)
  switch i64 %.sroa.3.0, label %bb.h [
    i64 0, label %_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack18branch_params_regs.exit
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.l = load i8, ptr %.sroa.0.0, align 1, !range !21, !alias.scope !1522, !noundef !7
  switch i8 %i.l, label %default.unreachable [
    i8 0, label %bb.j
    i8 1, label %bb.j
    i8 2, label %.thread
    i8 3, label %bb.i
    i8 4, label %_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack18branch_params_regs.exit
    i8 5, label %bb.j
    i8 6, label %bb.j
  ]

bb.h:                                             ; preds = %bb.f
  %i.m = icmp samesign ugt i64 %.sroa.3.0, 2
  br i1 %i.m, label %bb.l, label %bb.k

default.unreachable:                              ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  br label %.thread

bb.j:                                             ; preds = %bb.g, %bb.g, %bb.g, %bb.g
  br label %.thread

bb.k:                                             ; preds = %bb.h
  %i.n = icmp eq i64 %.sroa.3.0, 2
  tail call void @llvm.assume(i1 %i.n)
  %i.o = load i16, ptr %.sroa.0.0, align 1, !alias.scope !1522
  %i.p = tail call noundef i16 @_RINvMsm_NtCskKLDkoKarTP_4core5arrayANtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypej2_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitINtNtB8_6option6OptionNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7control7RegKindEENCINvMB1u_B1r_10wrap_mut_1By_NvMs2_B2w_B2u_3newE0EB2G_(i16 noundef %i.o), !noalias !1522 ; 3 uses
  %.sroa.476.0.extract.shift.i = lshr i16 %i.p, 8 ; 4 uses
  %.not.i = icmp eq i16 %.sroa.476.0.extract.shift.i, 255
  br i1 %.not.i, label %_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack18branch_params_regs.exit, label %bb.m

bb.l:                                             ; preds = %bb.h
  %i.q = getelementptr i8, ptr %.sroa.0.0, i64 %.sroa.3.0 ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 -3
  %i.s = load i16, ptr %i.r, align 1, !alias.scope !1522
  %i.t = zext i16 %i.s to i24
  %i.u = getelementptr i8, ptr %i.q, i64 -1
  %i.v = load i8, ptr %i.u, align 1, !range !21, !alias.scope !1522, !noundef !7
  %.sroa.077.2.insert.ext.i = zext nneg i8 %i.v to i24
  %.sroa.077.2.insert.shift.i = shl nuw nsw i24 %.sroa.077.2.insert.ext.i, 16
  %.sroa.077.2.insert.insert.i = or disjoint i24 %.sroa.077.2.insert.shift.i, %i.t
  %i.w = tail call i24 @_RINvMsm_NtCskKLDkoKarTP_4core5arrayANtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypej3_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitINtNtB8_6option6OptionNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7control7RegKindEENCINvMB1u_B1r_10wrap_mut_1By_NvMs2_B2w_B2u_3newE0EB2G_(i24 %.sroa.077.2.insert.insert.i), !noalias !1522
  %.fr = freeze i24 %i.w                          ; 5 uses
  %.sroa.078.0.extract.trunc.i = trunc i24 %.fr to i8
  %.sroa.078.1.extract.shift.i = lshr i24 %.fr, 8 ; 4 uses
  %.sroa.078.2.extract.shift.i = lshr i24 %.fr, 16 ; 9 uses
  %.sroa.078.2.extract.trunc.i = trunc nuw i24 %.sroa.078.2.extract.shift.i to i8 ; 3 uses
  %.not84.i = icmp eq i24 %.sroa.078.2.extract.shift.i, 255
  br i1 %.not84.i, label %_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack18branch_params_regs.exit, label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.x = and i16 %i.p, 255                        ; 2 uses
  %.not82.i = icmp eq i16 %i.x, 255
  br i1 %.not82.i, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not83.i = icmp eq i16 %.sroa.476.0.extract.shift.i, %i.x ; 2 uses
  %.sroa.065.0.insert.insert.i = tail call i16 @llvm.bswap.i16(i16 %i.p)
  %.sroa.5.1.i = select i1 %.not83.i, i16 %.sroa.476.0.extract.shift.i, i16 %.sroa.065.0.insert.insert.i
  %.sroa.019.1.i = select i1 %.not83.i, i8 3, i8 4
  br label %.thread

bb.o:                                             ; preds = %bb.l
  %.sroa.078.1.extract.trunc.i = trunc i24 %.sroa.078.1.extract.shift.i to i8
  %.not85.i = icmp eq i8 %.sroa.078.1.extract.trunc.i, -1
  br i1 %.not85.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not86.i = icmp eq i8 %.sroa.078.0.extract.trunc.i, -1
  %.sroa.078.1.extract.trunc.mask.i = and i24 %.sroa.078.1.extract.shift.i, 255 ; 2 uses
  %.not87.i = icmp eq i24 %.sroa.078.2.extract.shift.i, %.sroa.078.1.extract.trunc.mask.i ; 2 uses
  br i1 %.not86.i, label %bb.s, label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.y = trunc nuw nsw i24 %.sroa.078.2.extract.shift.i to i16
  br label %.thread

bb.r:                                             ; preds = %bb.p
  br i1 %.not87.i, label %bb.u, label %bb.t

bb.s:                                             ; preds = %bb.p
  br i1 %.not87.i, label %bb.w, label %bb.x

bb.t:                                             ; preds = %bb.r
  %.sroa.078.0.extract.trunc.mask.i = and i24 %.fr, 255 ; 2 uses
  %i.z = icmp eq i24 %.sroa.078.2.extract.shift.i, %.sroa.078.0.extract.trunc.mask.i
  %i.aa = icmp eq i24 %.sroa.078.1.extract.trunc.mask.i, %.sroa.078.0.extract.trunc.mask.i
  %or.cond.i = or i1 %i.z, %i.aa
  br i1 %or.cond.i, label %bb.v, label %bb.y

bb.u:                                             ; preds = %bb.r
  %i.ab = trunc nuw nsw i24 %.sroa.078.2.extract.shift.i to i16
  br label %.thread

bb.v:                                             ; preds = %bb.t
  %i.ac = trunc nuw i24 %.sroa.078.1.extract.shift.i to i16
  %.sroa.451.0.insert.ext.i = shl i16 %i.ac, 8
  %i.ad = trunc nuw nsw i24 %.sroa.078.2.extract.shift.i to i16
  %.sroa.050.0.insert.insert.i = or disjoint i16 %.sroa.451.0.insert.ext.i, %i.ad
  br label %.thread

bb.w:                                             ; preds = %bb.s
  %i.ae = trunc nuw nsw i24 %.sroa.078.2.extract.shift.i to i16
  br label %.thread

bb.x:                                             ; preds = %bb.s
  %i.af = trunc nuw i24 %.sroa.078.1.extract.shift.i to i16
  %.sroa.443.0.insert.ext.i = shl i16 %i.af, 8
  %i.ag = trunc nuw nsw i24 %.sroa.078.2.extract.shift.i to i16
  %.sroa.042.0.insert.insert.i = or disjoint i16 %.sroa.443.0.insert.ext.i, %i.ag
  br label %.thread

bb.y:                                             ; preds = %bb.t
  %trunc.i = trunc i24 %.fr to i16
  %.sroa.453.2.insert.insert.i = tail call i16 @llvm.bswap.i16(i16 %trunc.i) ; 2 uses
  %i.ah = icmp ugt i8 %.sroa.078.2.extract.trunc.i, 2
  br i1 %i.ah, label %.thread, label %_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack18branch_params_regs.exit

.thread:                                          ; preds = %bb.g, %bb.m, %bb.j, %bb.n, %bb.i, %bb.u, %bb.v, %bb.x, %bb.w, %bb.q, %bb.y
  %.sroa.0.2.i.ph26 = phi i8 [ %.sroa.078.2.extract.trunc.i, %bb.y ], [ 3, %bb.m ], [ 3, %bb.j ], [ %.sroa.019.1.i, %bb.n ], [ 3, %bb.q ], [ 3, %bb.i ], [ 3, %bb.u ], [ 4, %bb.v ], [ 4, %bb.x ], [ 3, %bb.w ], [ 3, %bb.g ] ; 4 uses
  %.sroa.12.2.i.ph24 = phi i16 [ %.sroa.453.2.insert.insert.i, %bb.y ], [ %.sroa.476.0.extract.shift.i, %bb.m ], [ 0, %bb.j ], [ %.sroa.5.1.i, %bb.n ], [ %i.y, %bb.q ], [ 2, %bb.i ], [ %i.ab, %bb.u ], [ %.sroa.050.0.insert.insert.i, %bb.v ], [ %.sroa.042.0.insert.insert.i, %bb.x ], [ %i.ae, %bb.w ], [ 1, %bb.g ] ; 3 uses
  switch i8 %.sroa.0.2.i.ph26, label %bb.z [
    i8 3, label %_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack18branch_params_regs.exit
    i8 4, label %bb.aa
    i8 5, label %bb.ab
  ]

_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack18branch_params_regs.exit: ; preds = %bb.y, %bb.l, %bb.k, %bb.g, %bb.f, %bb.aa, %bb.ab, %.thread
  %.sroa.0.2.i20 = phi i8 [ %.sroa.0.2.i.ph26, %.thread ], [ -1, %bb.f ], [ %.sroa.0.2.i.ph26, %bb.aa ], [ -1, %bb.k ], [ -1, %bb.g ], [ -1, %bb.l ], [ %.sroa.0.2.i.ph26, %bb.ab ], [ %.sroa.078.2.extract.trunc.i, %bb.y ]
  %.sroa.12.2.i18 = phi i16 [ %.sroa.12.2.i.ph24, %.thread ], [ undef, %bb.f ], [ %.sroa.12.2.i.ph24, %bb.aa ], [ 255, %bb.k ], [ undef, %bb.g ], [ undef, %bb.l ], [ %.sroa.12.2.i.ph24, %bb.ab ], [ %.sroa.453.2.insert.insert.i, %bb.y ]
  %.sroa.02.0.neg = phi i16 [ -1, %.thread ], [ 0, %bb.f ], [ -2, %bb.aa ], [ 0, %bb.k ], [ 0, %bb.g ], [ 0, %bb.l ], [ -3, %bb.ab ], [ -3, %bb.y ]
  %i.ai = add i16 %.sroa.02.0.neg, %.sroa.01.0
  store i32 %2, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 %3, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.ai, ptr %.sroa.57.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %.sroa.0.2.i20, ptr %.sroa.6.0..sroa_idx, align 2
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i16 %.sroa.12.2.i18, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx, align 1
  ret void

bb.z:                                             ; preds = %.thread
  unreachable

bb.aa:                                            ; preds = %.thread
  br label %_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack18branch_params_regs.exit

bb.ab:                                            ; preds = %.thread
  br label %_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack18branch_params_regs.exit
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack17preserve_all_regs(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 4 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(216) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @_RNvMs6_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack17preserve_all_regs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 4 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack18push_else_operands(ptr noalias nofree noundef align 8 dereferenceable(216) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(120) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [40 x i8], align 8                ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !29, !noundef !7
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.i = load i16, ptr %i.h, align 4, !noundef !7
  %i.j = zext i16 %i.i to i64                     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1525)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !1525, !noundef !7 ; 2 uses
  %i.m = icmp ult i64 %i.l, 288230376151711744
  tail call void @llvm.assume(i1 %i.m)
  %i.n = icmp samesign ugt i64 %i.l, %i.j
  br i1 %i.n, label %.lr.ph.i, label %_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack5trunc.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1525
end_hunk_3
begin_hunk_4_@_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack9push_loop:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1568
  store ptr %i.e, ptr %i.b, align 8, !noalias !1568
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.d, ptr %i.ah, align 8, !noalias !1568
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.y, ptr %i.ai, align 8, !noalias !1568
  %i.aj = call noundef align 8 ptr @_RINvMNtNtCsefoF4u9kbII_5wasmi6engine10block_typeNtB3_9BlockType14func_type_withINtNtCskKLDkoKarTP_4core6result6ResultuNtNtB7_5error5ErrorENCINvMs0_NtNtNtB5_10translator4func5stackNtB2l_5Stack18push_branch_paramsNtNtB2l_7control16LoopControlFrameE0EB7_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !1564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.d

bb.d:                                             ; preds = %_RINvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB6_5Stack18push_branch_paramsNtNtB6_7control16LoopControlFrameEBe_.exit, %bb.b
  %.sroa.0.0 = phi ptr [ %i.t, %bb.b ], [ %i.aj, %_RINvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB6_5Stack18push_branch_paramsNtNtB6_7control16LoopControlFrameEBe_.exit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvMs1_NtCsefoF4u9kbII_5wasmi5errorNtB5_9ErrorKind9into_host(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(112) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !11, !noundef !7 ; 2 uses
  %i.b = icmp ne i8 %i.a, 15
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp eq i8 %i.a, 9
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !7
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !7, !align !12
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.c ], [ %i.e, %bb.a ]
  %.sroa.3.0 = phi ptr [ undef, %bb.c ], [ %i.g, %bb.a ]
  %i.h = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.i = insertvalue { ptr, ptr } %i.h, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.i

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi5error9ErrorKindEBF_(ptr noalias nofree noundef align 8 dereferenceable(112) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine8code_map4spanNtB5_14EngineFuncSpan12get_or_panic(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(8) %0, i32 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.b, align 4
  %i.c = load i32, ptr %0, align 4, !noundef !7   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !noundef !7
  %i.f = sub i32 %i.e, %i.c
  %.not = icmp ult i32 %1, %i.f
  br i1 %.not, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.c, %1
  ret i32 %i.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @19, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #38
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = icmp eq i64 %4, 0                        ; 2 uses
  %i.c = load i64, ptr %0, align 8, !range !13    ; 3 uses
  %.sroa.05.0 = select i1 %i.b, i64 -1, i64 %i.c
  %i.d = sub i64 %.sroa.05.0, %1
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1573)
  br i1 %i.b, label %bb.f, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %2, %1                           ; 2 uses
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = shl nuw i64 %i.c, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.f, i64 %i.h)
  %i.i = icmp eq i64 %4, 1
  %i.j = icmp ult i64 %4, 1025
  %..i = select i1 %i.j, i64 4, i64 1
  %.sroa.08.0.i = select i1 %i.i, i64 8, i64 %..i
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1573
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.k, align 8, !alias.scope !1573
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.c, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !1573
  %i.l = load i64, ptr %i.a, align 8, !range !17, !noalias !1573, !noundef !7
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.m, label %bb.e, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsefoF4u9kbII_5wasmi.exit

bb.e:                                             ; preds = %bb.d
  %i.o = load i64, ptr %i.n, align 8, !range !18, !noalias !1573, !noundef !7
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noalias !1573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1573
  br label %bb.f

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsefoF4u9kbII_5wasmi.exit: ; preds = %bb.d
  %i.r = load ptr, ptr %i.n, align 8, !noalias !1573, !nonnull !7, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1573
  store ptr %i.r, ptr %i.k, align 8, !alias.scope !1573
  %i.s = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.s)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !1573
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsefoF4u9kbII_5wasmi.exit, %bb.c, %bb.e, %bb.b
  %.sroa.3.0 = phi i64 [ undef, %bb.b ], [ undef, %bb.c ], [ %i.q, %bb.e ], [ undef, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsefoF4u9kbII_5wasmi.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 0, %bb.b ], [ 0, %bb.c ], [ %i.o, %bb.e ], [ -1, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsefoF4u9kbII_5wasmi.exit ], [ -1, %bb.a ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1578)
  %i.b = icmp eq i64 %4, 0                        ; 2 uses
  %i.c = load i64, ptr %0, align 8, !alias.scope !1578 ; 2 uses
  %.sroa.05.0.i = select i1 %i.b, i64 -1, i64 %i.c
  %i.d = sub i64 %.sroa.05.0.i, %1
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1579)
  br i1 %i.b, label %bb.f, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %2, %1                           ; 4 uses
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1580
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val12.i.i = load ptr, ptr %i.h, align 8, !alias.scope !1580
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.c, ptr %.val12.i.i, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !1580
  %i.i = load i64, ptr %i.a, align 8, !range !17, !noalias !1580, !noundef !7
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.j, label %bb.e, label %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsefoF4u9kbII_5wasmi.exit.i

bb.e:                                             ; preds = %bb.d
  %i.l = load i64, ptr %i.k, align 8, !range !18, !noalias !1580, !noundef !7
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !1580
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1580
  br label %bb.f

_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsefoF4u9kbII_5wasmi.exit.i: ; preds = %bb.d
  %i.o = load ptr, ptr %i.k, align 8, !noalias !1580, !nonnull !7, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1580
  store ptr %i.o, ptr %i.h, align 8, !alias.scope !1580
  %i.p = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.p)
  store i64 %i.f, ptr %0, align 8, !alias.scope !1580
  br label %bb.g

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.e
  %.sroa.3.0.i.ph = phi i64 [ %i.n, %bb.e ], [ undef, %bb.c ], [ undef, %bb.b ]
  %.sroa.0.0.i.ph = phi i64 [ %i.l, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ]
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.3.0.i.ph) #42
  unreachable

bb.g:                                             ; preds = %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsefoF4u9kbII_5wasmi.exit.i, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %3) unnamed_addr #4 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val10 = load ptr, ptr %i.a, align 8           ; 3 uses
  %i.b = icmp eq i64 %3, 0
  %i.c = icmp eq i64 %.val, 0
  %or.cond.i = select i1 %i.b, i1 true, i1 %i.c
  br i1 %or.cond.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %4 = mul nuw i64 %.val, %3                      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit: ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) %2) #34
  %i.e = inttoptr i64 %2 to ptr
  store ptr %i.e, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit
  store i64 %1, ptr %0, align 8
  br label %bb.e

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit: ; preds = %bb.b
  %i.f = mul nuw i64 %3, %1                       ; 3 uses
  %i.g = icmp ule i64 %i.f, %4
  tail call void @llvm.assume(i1 %i.g)
  %i.h = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.val10, i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %i.f) #34 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit
  store ptr %i.h, ptr %i.a, align 8
  %i.j = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.j)
  br label %bb.c

bb.e:                                             ; preds = %bb.a, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit, %bb.c
  %.sroa.4.0 = phi i64 [ undef, %bb.c ], [ %i.f, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ -1, %bb.c ], [ %2, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit ], [ -1, %bb.a ]
  %i.k = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.l = insertvalue { i64, i64 } %i.k, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @_RNvMs2_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func6layoutNtB5_11StackLayout15register_locals(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i8 noundef range(i8 0, 7) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i8 %2, 4
  %. = select i1 %i.a, i16 2, i16 1               ; 2 uses
  %i.b = zext nneg i16 %. to i64
  %i.c = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %i.b) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  br i1 %i.d, label %.loopexit.sink.split, label %.split, !prof !9

.split:                                           ; preds = %bb.a
  %i.e = extractvalue { i64, i1 } %i.c, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i16, ptr %i.f, align 8, !noundef !7 ; 2 uses
  %i.h = zext i16 %i.g to i64                     ; 2 uses
  %i.i = add i64 %i.e, %i.h                       ; 2 uses
  %i.j = icmp uge i64 %i.i, %i.h
  %i.k = icmp ult i64 %i.i, 65536
  %narrow = and i1 %i.j, %i.k
  br i1 %narrow, label %.preheader, label %.loopexit.sink.split

.preheader:                                       ; preds = %.split
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %i.l, align 8, !alias.scope !1583
  %.pre22 = load i64, ptr %0, align 8, !range !13, !alias.scope !1583
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VectE8push_mutCsefoF4u9kbII_5wasmi.exit
  %i.n = phi i64 [ %.pre22, %.lr.ph ], [ %i.t, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VectE8push_mutCsefoF4u9kbII_5wasmi.exit ] ; 2 uses
  %i.o = phi i64 [ %.pre, %.lr.ph ], [ %i.w, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VectE8push_mutCsefoF4u9kbII_5wasmi.exit ] ; 3 uses
  %i.p = phi i16 [ %i.g, %.lr.ph ], [ %i.x, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VectE8push_mutCsefoF4u9kbII_5wasmi.exit ] ; 2 uses
  %.sroa.016.020 = phi i64 [ 0, %.lr.ph ], [ %i.q, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VectE8push_mutCsefoF4u9kbII_5wasmi.exit ]
  %i.q = add nuw i64 %.sroa.016.020, 1            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1583)
  %i.r = icmp eq i64 %i.o, %i.n
  br i1 %i.r, label %bb.c, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VectE8push_mutCsefoF4u9kbII_5wasmi.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVectE8grow_oneCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #41
  %.pre21 = load i64, ptr %0, align 8, !range !13, !alias.scope !1583
  %.pre23 = load i16, ptr %i.f, align 8
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VectE8push_mutCsefoF4u9kbII_5wasmi.exit

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VectE8push_mutCsefoF4u9kbII_5wasmi.exit: ; preds = %bb.b, %bb.c
  %i.s = phi i16 [ %i.p, %bb.b ], [ %.pre23, %bb.c ]
  %i.t = phi i64 [ %i.n, %bb.b ], [ %.pre21, %bb.c ]
  %i.u = load ptr, ptr %i.m, align 8, !alias.scope !1583, !nonnull !7, !noundef !7
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.o
  store i16 %i.p, ptr %i.v, align 2, !noalias !1583
  %i.w = add i64 %i.o, 1                          ; 2 uses
  store i64 %i.w, ptr %i.l, align 8, !alias.scope !1583
  %i.x = add i16 %i.s, %.                         ; 2 uses
  store i16 %i.x, ptr %i.f, align 8
  %exitcond.not = icmp eq i64 %i.q, %1
  br i1 %exitcond.not, label %.loopexit, label %bb.b

.loopexit.sink.split:                             ; preds = %.split, %bb.a
  %i.y = tail call fastcc noalias noundef nonnull align 8 ptr @_RNvXsc_NtCsefoF4u9kbII_5wasmi5errorNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtNtB7_6engine10translator5error16TranslationErrorE4from(i64 9) #37
  br label %.loopexit

.loopexit:                                        ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VectE8push_mutCsefoF4u9kbII_5wasmi.exit, %.loopexit.sink.split, %.preheader
  %.sroa.0.1 = phi ptr [ null, %.preheader ], [ %i.y, %.loopexit.sink.split ], [ null, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VectE8push_mutCsefoF4u9kbII_5wasmi.exit ]
  ret ptr %.sroa.0.1
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxNtNtNtCsefoF4u9kbII_5wasmi8instance6entity14InstanceEntityEE8grow_oneB1a_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !13, !noundef !7 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1586)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1586
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !1586
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 16), !noalias !1586
  %i.f = load i64, ptr %i.a, align 8, !range !17, !noalias !1586, !noundef !7
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !18, !noalias !1586, !noundef !7
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !1586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1586
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #42
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !1586, !nonnull !7, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1586
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !1586
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !1586
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs5zeGauAcNNa_10wasmi_core5typed11TypedRawValE8grow_oneCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !13, !noundef !7 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1589)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1589
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !1589
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 24), !noalias !1589
  %i.f = load i64, ptr %i.a, align 8, !range !17, !noalias !1589, !noundef !7
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !18, !noalias !1589, !noundef !7
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !1589
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1589
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #42
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !1589, !nonnull !7, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1589
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !1589
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !1589
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs5zeGauAcNNa_10wasmi_core6global10GlobalTypeE8grow_oneCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !13, !noundef !7 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1592)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1592
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !1592
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 1, i64 noundef 2), !noalias !1592
  %i.f = load i64, ptr %i.a, align 8, !range !17, !noalias !1592, !noundef !7
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !18, !noalias !1592, !noundef !7
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !1592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1592
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #42
  unreachable

end_hunk_4
begin_hunk_5_@_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5state5FrameE8grow_oneBW_:bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !1658, !nonnull !7, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1658
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !1658
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !1658
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5state5StackE8grow_oneBW_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !13, !noundef !7 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1661)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1661
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !1661
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 112), !noalias !1661
  %i.f = load i64, ptr %i.a, align 8, !range !17, !noalias !1661, !noundef !7
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !18, !noalias !1661, !noundef !7
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !1661
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1661
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #42
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !1661, !nonnull !7, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1661
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !1661
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !1661
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7control12ControlFrameE8grow_oneBY_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !13, !noundef !7 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1664)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1664
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !1664
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 120), !noalias !1664
  %i.f = load i64, ptr %i.a, align 8, !range !17, !noalias !1664, !noundef !7
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !18, !noalias !1664, !noundef !7
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !1664
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1664
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #42
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !1664, !nonnull !7, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1664
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !1664
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !1664
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operands12StackOperandE8grow_oneBY_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !13, !noundef !7 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1667)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1667
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !1667
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 32), !noalias !1667
  %i.f = load i64, ptr %i.a, align 8, !range !17, !noalias !1667, !noundef !7
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !18, !noalias !1667, !noundef !7
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !1667
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1667
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #42
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !1667, !nonnull !7, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1667
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !1667
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !1667
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !13, !noundef !7 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1670)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1670
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !1670
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 8), !noalias !1670
  %i.f = load i64, ptr %i.a, align 8, !range !17, !noalias !1670, !noundef !7
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !18, !noalias !1670, !noundef !7
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !1670
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1670
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #42
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !1670, !nonnull !7, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1670
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !1670
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !1670
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVectE8grow_oneCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !13, !noundef !7 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1673)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1673
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !1673
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 2, i64 noundef 2), !noalias !1673
  %i.f = load i64, ptr %i.a, align 8, !range !17, !noalias !1673, !noundef !7
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !18, !noalias !1673, !noundef !7
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !1673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1673
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #42
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !1673, !nonnull !7, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1673
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !1673
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !1673
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsefoF4u9kbII_5wasmi(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #13 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !30
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %4 = mul nuw i64 %3, %.0.val                    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.f = icmp uge i64 %i.b, %4
  tail call void @llvm.assume(i1 %i.f)
  %i.g = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #34
  br label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %i.b, 0
  br i1 %i.h, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.i = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34
  %i.j = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #34
  br label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.g, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit ], [ %i.j, %bb.d ] ; 2 uses
  %i.k = icmp eq ptr %.pn8, null
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.l, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.m, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.n, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsefoF4u9kbII_5wasmi(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 5 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !30
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %3 to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.i, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34
  br i1 %2, label %bb.g, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #34
  br label %bb.h

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.k = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #34
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %.pn9 = phi ptr [ %i.j, %bb.g ], [ %i.k, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.l = icmp eq ptr %.pn9, null
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.n, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.o = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pn9, ptr %i.q, align 8
  br label %bb.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack10push_local(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1, i32 noundef %2, i8 noundef range(i8 0, 7) %3) unnamed_addr #14 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = tail call noundef i64 @_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack14next_stack_pos(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %1) ; 2 uses
  %i.c = zext i32 %2 to i64                       ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load i64, ptr %i.d, align 8, !noundef !7 ; 2 uses
  %i.f = icmp ugt i64 %i.e, %i.c
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !7, !noundef !7
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.c ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !7 ; 3 uses
  store i64 %i.b, ptr %i.i, align 8
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.c, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #38
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvMs6_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack17update_prev_local(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1, i64 noundef %i.j, i64 noundef %i.b)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = icmp eq i8 %3, 4
  %. = select i1 %i.k, i16 2, i16 1
  call void @_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack16push_temp_offset(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1, i16 noundef %.)
  %i.l = load i32, ptr %i.a, align 8, !range !31, !noundef !7
  %i.m = trunc nuw i32 %i.l to i1
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !7, !align !12, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.p, align 8
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.r = load i32, ptr %i.q, align 4, !noundef !7 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1677)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !1677, !noundef !7 ; 3 uses
  %i.u = load i64, ptr %1, align 8, !range !13, !alias.scope !1677, !noundef !7
  %i.v = icmp eq i64 %i.t, %i.u
  br i1 %i.v, label %bb.h, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operands12StackOperandE8push_mutBR_.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operands12StackOperandE8grow_oneBY_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #41, !noalias !1678
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operands12StackOperandE8push_mutBR_.exit

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operands12StackOperandE8push_mutBR_.exit: ; preds = %bb.g, %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !1677, !nonnull !7, !noundef !7
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %i.t ; 6 uses
  store i8 0, ptr %i.y, align 8, !noalias !1677
  %.sroa.4.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  store i8 %3, ptr %.sroa.4.0..sroa_idx24, align 1, !noalias !1677
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i32 %i.r, ptr %.sroa.525.0..sroa_idx, align 4, !noalias !1677
  %.sroa.6.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i32 %2, ptr %.sroa.6.0..sroa_idx26, align 8, !noalias !1677
  %.sroa.727.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 0, ptr %.sroa.727.0..sroa_idx, align 8, !noalias !1677
  %.sroa.8.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i64 %i.j, ptr %.sroa.8.0..sroa_idx28, align 8, !noalias !1677
  %i.z = add i64 %i.t, 1
  store i64 %i.z, ptr %i.s, align 8, !alias.scope !1677
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !7
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.aa, align 8
  switch i8 %3, label %default.unreachable31 [
    i8 0, label %bb.k
    i8 1, label %bb.k
    i8 2, label %bb.i
    i8 3, label %bb.j
    i8 4, label %bb.m
    i8 5, label %bb.k
    i8 6, label %bb.k
end_hunk_5

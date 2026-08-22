Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/nellymoserenc?download=true
inline.NumInlined: 16
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@encode_frame:bb.a
  %.sroa.31.13.i = phi ptr [ %.sroa.31.4.i, %bb.au ], [ %.sroa.31.12.i, %bb.ay ]
  %.020.i.i100.i = phi i32 [ %.sroa.0.4.i, %bb.au ], [ 0, %bb.ay ]
  %.0.i.i101.i = phi i32 [ %.sroa.15.4.i, %bb.au ], [ %i.aah, %bb.ay ]
  %i.aai = sub nsw i32 %.0.i.i101.i, %i.aad
  br label %bb.az

bb.az:                                            ; preds = %bb.bf, %.preheader.1.i
  %indvars.iv183.1.i = phi i64 [ 0, %.preheader.1.i ], [ %indvars.iv.next184.1.i, %bb.bf ] ; 3 uses
  %.sroa.0.3158.1.i = phi i32 [ %.020.i.i100.i, %.preheader.1.i ], [ %.sroa.0.4.1.i, %bb.bf ] ; 2 uses
  %.sroa.15.3157.1.i = phi i32 [ %i.aai, %.preheader.1.i ], [ %.sroa.15.4.1.i, %bb.bf ] ; 6 uses
  %.sroa.31.3156.1.i = phi ptr [ %.sroa.31.13.i, %.preheader.1.i ], [ %.sroa.31.4.1.i, %bb.bf ] ; 6 uses
  %i.aaj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv183.1.i
  %i.aak = load i32, ptr %i.aaj, align 4, !tbaa !74 ; 5 uses
  %i.aal = icmp sgt i32 %i.aak, 0
  br i1 %i.aal, label %bb.ba, label %bb.bf

bb.ba:                                            ; preds = %bb.az
  %i.aam = shl nuw i32 1, %i.aak
  %i.aan = sext i32 %i.aam to i64
  %i.aao = getelementptr inbounds [4 x i8], ptr @ff_nelly_dequantization_table, i64 %i.aan
  %i.aap = getelementptr inbounds i8, ptr %i.aao, i64 -4
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv183.1.i
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 512
  %i.aas = load float, ptr %i.aar, align 4, !tbaa !29 ; 2 uses
  %i.aat = zext nneg i32 %i.aak to i64            ; 3 uses
  %i.aau = getelementptr inbounds nuw [4 x i8], ptr @quant_lut_mul, i64 %i.aat
  %i.aav = load float, ptr %i.aau, align 4, !tbaa !29
  %i.aaw = getelementptr inbounds nuw [4 x i8], ptr @quant_lut_add, i64 %i.aat
  %i.aax = load float, ptr %i.aaw, align 4, !tbaa !29
  %i.aay = call nsz float @llvm.fmuladd.f32(float %i.aas, float %i.aav, float %i.aax)
  %i.aaz = fptosi float %i.aay to i32             ; 2 uses
  %i.aba = getelementptr inbounds nuw i8, ptr @quant_lut_offset, i64 %i.aat ; 2 uses
  %i.abb = load i8, ptr %i.aba, align 1, !tbaa !63
  %i.abc = zext i8 %i.abb to i32                  ; 2 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aba, i64 1
  %i.abe = load i8, ptr %i.abd, align 1, !tbaa !63
  %i.abf = zext i8 %i.abe to i32
  %i.abg = add nsw i32 %i.abf, -1
  %i.abh = icmp slt i32 %i.aaz, %i.abc
  %..i.1.i = call i32 @llvm.smin.i32(i32 %i.abg, i32 %i.aaz)
  %.0.i.1.i = select i1 %i.abh, i32 %i.abc, i32 %..i.1.i
  %i.abi = sext i32 %.0.i.1.i to i64
  %i.abj = getelementptr inbounds i8, ptr @quant_lut, i64 %i.abi
  %i.abk = load i8, ptr %i.abj, align 1, !tbaa !63 ; 2 uses
  %i.abl = zext i8 %i.abk to i32
  %i.abm = zext i8 %i.abk to i64
  %i.abn = getelementptr inbounds nuw [4 x i8], ptr %i.aap, i64 %i.abm
  %i.abo = load <2 x float>, ptr %i.abn, align 4, !tbaa !29
  %i.abp = insertelement <2 x float> poison, float %i.aas, i64 0
  %i.abq = shufflevector <2 x float> %i.abp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abr = fsub nsz <2 x float> %i.abq, %i.abo
  %i.abs = call nsz <2 x float> @llvm.fabs.v2f32(<2 x float> %i.abr) ; 2 uses
  %i.abt = extractelement <2 x float> %i.abs, i64 0
  %i.abu = extractelement <2 x float> %i.abs, i64 1
  %i.abv = fcmp nsz ogt float %i.abt, %i.abu
  %i.abw = zext i1 %i.abv to i32
  %.072.1.i = add nuw nsw i32 %i.abl, %i.abw      ; 2 uses
  %i.abx = sub nsw i32 32, %.sroa.15.3157.1.i
  %i.aby = shl i32 %.072.1.i, %i.abx
  %i.abz = or i32 %i.aby, %.sroa.0.3158.1.i       ; 2 uses
  %.not.i.i95.1.i = icmp slt i32 %i.aak, %.sroa.15.3157.1.i
  br i1 %.not.i.i95.1.i, label %put_bits.exit98.1.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.aca = ptrtoint ptr %.sroa.31.3156.1.i to i64
  %i.acb = sub i64 %i.ut, %i.aca
  %i.acc = icmp ugt i64 %i.acb, 3
  br i1 %i.acc, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.4) #8
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  store i32 %i.abz, ptr %.sroa.31.3156.1.i, align 1, !tbaa !63
  %i.acd = getelementptr inbounds nuw i8, ptr %.sroa.31.3156.1.i, i64 4
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.sroa.31.10.1.i = phi ptr [ %i.acd, %bb.bd ], [ %.sroa.31.3156.1.i, %bb.bc ]
  %i.ace = lshr i32 %.072.1.i, %.sroa.15.3157.1.i
  %i.acf = add nsw i32 %.sroa.15.3157.1.i, 32
  br label %put_bits.exit98.1.i

put_bits.exit98.1.i:                              ; preds = %bb.be, %bb.ba
  %.sroa.31.11.1.i = phi ptr [ %.sroa.31.3156.1.i, %bb.ba ], [ %.sroa.31.10.1.i, %bb.be ]
  %.020.i.i96.1.i = phi i32 [ %i.abz, %bb.ba ], [ %i.ace, %bb.be ]
  %.0.i.i97.1.i = phi i32 [ %.sroa.15.3157.1.i, %bb.ba ], [ %i.acf, %bb.be ]
  %i.acg = sub nsw i32 %.0.i.i97.1.i, %i.aak
  br label %bb.bf

bb.bf:                                            ; preds = %put_bits.exit98.1.i, %bb.az
  %.sroa.31.4.1.i = phi ptr [ %.sroa.31.11.1.i, %put_bits.exit98.1.i ], [ %.sroa.31.3156.1.i, %bb.az ] ; 3 uses
  %.sroa.15.4.1.i = phi i32 [ %i.acg, %put_bits.exit98.1.i ], [ %.sroa.15.3157.1.i, %bb.az ] ; 3 uses
  %.sroa.0.4.1.i = phi i32 [ %.020.i.i96.1.i, %put_bits.exit98.1.i ], [ %.sroa.0.3158.1.i, %bb.az ] ; 2 uses
  %indvars.iv.next184.1.i = add nuw nsw i64 %indvars.iv183.1.i, 1 ; 2 uses
  %exitcond186.1.not.i = icmp eq i64 %indvars.iv.next184.1.i, 124
  br i1 %exitcond186.1.not.i, label %bb.bg, label %bb.az, !llvm.loop !86

bb.bg:                                            ; preds = %bb.bf
  %i.ach = icmp slt i32 %.sroa.15.4.1.i, 32
  br i1 %i.ach, label %.lr.ph.i104.i, label %encode_block.exit

.lr.ph.i104.i:                                    ; preds = %bb.bg, %bb.bi
  %.sroa.31.14.i = phi ptr [ %i.ack, %bb.bi ], [ %.sroa.31.4.1.i, %bb.bg ] ; 3 uses
  %.sroa.15.6.i = phi i32 [ %i.acm, %bb.bi ], [ %.sroa.15.4.1.i, %bb.bg ] ; 2 uses
  %.sroa.0.6.i = phi i32 [ %i.acl, %bb.bi ], [ %.sroa.0.4.1.i, %bb.bg ] ; 2 uses
  %i.aci = icmp ult ptr %.sroa.31.14.i, %i.cs
  br i1 %i.aci, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph.i104.i
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 160) #8
  call void @abort() #10
  unreachable

bb.bi:                                            ; preds = %.lr.ph.i104.i
  %i.acj = trunc i32 %.sroa.0.6.i to i8
  %i.ack = getelementptr inbounds nuw i8, ptr %.sroa.31.14.i, i64 1 ; 2 uses
  store i8 %i.acj, ptr %.sroa.31.14.i, align 1, !tbaa !63
  %i.acl = lshr i32 %.sroa.0.6.i, 8
  %i.acm = add nsw i32 %.sroa.15.6.i, 8
  %i.acn = icmp slt i32 %.sroa.15.6.i, 24
  br i1 %i.acn, label %.lr.ph.i104.i, label %encode_block.exit, !llvm.loop !87

encode_block.exit:                                ; preds = %bb.bi, %bb.bg
  %.sroa.31.15.i = phi ptr [ %.sroa.31.4.1.i, %bb.bg ], [ %i.ack, %bb.bi ] ; 2 uses
  %i.aco = sext i32 %i.ah to i64
  %i.acp = getelementptr inbounds i8, ptr %i.af, i64 %i.aco
  %i.acq = ptrtoint ptr %i.acp to i64
  %i.acr = ptrtoint ptr %.sroa.31.15.i to i64
  %i.acs = sub i64 %i.acq, %i.acr
  call void @llvm.memset.p0.i64(ptr align 1 %.sroa.31.15.i, i8 0, i64 %i.acs, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.act = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.acu = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.acv = load i32, ptr %i.acu, align 8, !tbaa !32
  %i.acw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.acx = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @ff_af_queue_remove(ptr noundef nonnull %i.act, i32 noundef %i.acv, ptr noundef nonnull %i.acw, ptr noundef nonnull %i.acx) #8
  store i32 1, ptr %3, align 4, !tbaa !74
  br label %bb.bj

bb.bj:                                            ; preds = %bb.h, %bb.f, %bb.a, %encode_block.exit
  %.0 = phi i32 [ 0, %encode_block.exit ], [ 0, %bb.a ], [ %i.aa, %bb.f ], [ %i.ac, %bb.h ]
  ret i32 %.0
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @encode_end(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  tail call void @av_tx_uninit(ptr noundef nonnull %i.c) #8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 3664
  tail call void @av_freep(ptr noundef nonnull %i.d) #8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 3672
  tail call void @av_freep(ptr noundef nonnull %i.e) #8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @ff_af_queue_close(ptr noundef nonnull %i.f) #8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @av_freep(ptr noundef nonnull %i.g) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @ff_af_queue_init(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @av_tx_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @avpriv_float_dsp_alloc(i32 noundef) local_unnamed_addr #3

declare noalias ptr @av_malloc(i64 noundef) local_unnamed_addr #3

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind optsize uwtable
define internal void @nellymoser_init_static() #0 {
bb.a:
  store float 1.000000e+00, ptr @pow_table, align 16, !tbaa !29
  store float f0x3F3504F3, ptr getelementptr inbounds nuw (i8, ptr @pow_table, i64 4096), align 16, !tbaa !29
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  tail call void @ff_init_ff_sine_windows(i32 noundef 7) #8
  ret void

bb.c:                                             ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ 1, %bb.a ], [ %indvars.iv.next, %bb.c ] ; 5 uses
  %i.a = trunc i64 %indvars.iv to i32
  %i.b = sub i32 0, %i.a
  %i.c = sitofp nsz i32 %i.b to double
  %i.d = fmul nnan nsz double %i.c, f0x3F40000000000000
  %i.e = tail call nsz double @llvm.exp2.f64(double %i.d) ; 3 uses
  %i.f = fptrunc nsz double %i.e to float
  %i.g = getelementptr inbounds nuw [4 x i8], ptr @pow_table, i64 %indvars.iv ; 2 uses
  store float %i.f, ptr %i.g, align 4, !tbaa !29
  %0 = sub nuw nsw i64 1024, %indvars.iv
  %1 = getelementptr inbounds nuw [4 x i8], ptr @pow_table, i64 %0
  %2 = fmul nnan nsz double %i.e, f0x3FE6A09E667F3BCD
  %i.h = fptrunc nsz double %2 to float
  %3 = getelementptr inbounds nuw i8, ptr %i.g, i64 4096
  %4 = insertelement <2 x double> poison, double %i.e, i64 0
  %5 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  %6 = fdiv nsz <2 x double> <double f0x3FE6A09E667F3BCD, double 5.000000e-01>, %5
  %7 = fptrunc <2 x double> %6 to <2 x float>     ; 2 uses
  %8 = extractelement <2 x float> %7, i64 0
  store float %8, ptr %1, align 4, !tbaa !29
  store float %i.h, ptr %3, align 4, !tbaa !29
  %9 = sub nuw nsw i64 2048, %indvars.iv
  %10 = getelementptr inbounds nuw [4 x i8], ptr @pow_table, i64 %9
  %11 = extractelement <2 x float> %7, i64 1
  store float %11, ptr %10, align 4, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 513
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !88
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.exp2.f64(double) #4

declare void @ff_init_ff_sine_windows(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare i32 @ff_af_queue_add(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_get_encode_buffer(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare void @ff_af_queue_remove(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log2.f64(double) #4

declare void @ff_nelly_get_sample_bits(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.lrint.i64.f32(float) #4

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

declare void @av_tx_uninit(ptr noundef) local_unnamed_addr #3

declare void @av_freep(ptr noundef) local_unnamed_addr #3

declare void @ff_af_queue_close(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { memory(none) }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 32}
!10 = !{!"AVCodecContext", !11, i64 0, !6, i64 8, !6, i64 12, !13, i64 16, !6, i64 24, !6, i64 28, !12, i64 32, !14, i64 40, !12, i64 48, !15, i64 56, !6, i64 64, !6, i64 68, !16, i64 72, !6, i64 80, !17, i64 84, !17, i64 92, !17, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !17, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !12, i64 184, !12, i64 192, !6, i64 200, !18, i64 204, !18, i64 208, !18, i64 212, !18, i64 216, !18, i64 220, !18, i64 224, !18, i64 228, !18, i64 232, !18, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !19, i64 288, !19, i64 296, !19, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !20, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !12, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !18, i64 428, !18, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !21, i64 456, !15, i64 464, !15, i64 472, !18, i64 480, !18, i64 484, !6, i64 488, !6, i64 492, !16, i64 496, !16, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !22, i64 536, !12, i64 544, !23, i64 552, !23, i64 560, !6, i64 568, !6, i64 572, !7, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !12, i64 672, !12, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !24, i64 728, !16, i64 736, !6, i64 744, !6, i64 748, !16, i64 752, !16, i64 760, !16, i64 768, !25, i64 776, !6, i64 784, !6, i64 788, !15, i64 792, !6, i64 800, !6, i64 804, !15, i64 808, !12, i64 816, !15, i64 824, !26, i64 832, !6, i64 840, !27, i64 848, !6, i64 856, !6, i64 860}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!14 = !{!"p1 _ZTS15AVCodecInternal", !12, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 omnipotent char", !12, i64 0}
!17 = !{!"AVRational", !6, i64 0, !6, i64 4}
!18 = !{!"float", !7, i64 0}
!19 = !{!"p1 short", !12, i64 0}
!20 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!21 = !{!"p1 _ZTS10RcOverride", !12, i64 0}
!22 = !{!"p1 _ZTS9AVHWAccel", !12, i64 0}
!23 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!24 = !{!"p1 _ZTS17AVCodecDescriptor", !12, i64 0}
!25 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!26 = !{!"p1 int", !12, i64 0}
!27 = !{!"p2 _ZTS15AVFrameSideData", !28, i64 0}
!28 = !{!"any p2 pointer", !12, i64 0}
!29 = !{!18, !18, i64 0}
!30 = !{!10, !6, i64 344}
!31 = !{!10, !6, i64 516}
!32 = !{!10, !6, i64 376}
!33 = !{!10, !6, i64 396}
!34 = !{!35, !36, i64 0}
!35 = !{!"NellyMoserEncodeContext", !36, i64 0, !6, i64 8, !37, i64 16, !38, i64 24, !12, i64 32, !39, i64 40, !7, i64 80, !7, i64 1104, !7, i64 2128, !41, i64 3664, !16, i64 3672}
!36 = !{!"p1 _ZTS14AVCodecContext", !12, i64 0}
!37 = !{!"p1 _ZTS17AVFloatDSPContext", !12, i64 0}
!38 = !{!"p1 _ZTS11AVTXContext", !12, i64 0}
!39 = !{!"AudioFrameQueue", !36, i64 0, !6, i64 8, !6, i64 12, !40, i64 16, !6, i64 24, !6, i64 28}
!40 = !{!"p1 _ZTS10AudioFrame", !12, i64 0}
!41 = !{!"p1 float", !12, i64 0}
!42 = !{!10, !6, i64 64}
!43 = !{!35, !37, i64 16}
!44 = !{!10, !6, i64 492}
!45 = !{!35, !41, i64 3664}
!46 = !{!35, !16, i64 3672}
!47 = !{!35, !6, i64 8}
!48 = !{!16, !16, i64 0}
!49 = !{!50, !6, i64 112}
!50 = !{!"AVFrame", !7, i64 0, !7, i64 64, !51, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !17, i64 124, !15, i64 136, !15, i64 144, !17, i64 152, !6, i64 160, !12, i64 168, !6, i64 176, !6, i64 180, !7, i64 184, !52, i64 248, !6, i64 256, !27, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !15, i64 304, !53, i64 312, !6, i64 320, !23, i64 328, !23, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !12, i64 376, !20, i64 384, !15, i64 408, !6, i64 416}
!51 = !{!"p2 omnipotent char", !28, i64 0}
!52 = !{!"p2 _ZTS11AVBufferRef", !28, i64 0}
!53 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!54 = !{!55, !16, i64 24}
!55 = !{!"AVPacket", !23, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !25, i64 48, !6, i64 56, !15, i64 64, !15, i64 72, !12, i64 80, !23, i64 88, !17, i64 96}
!56 = !{!55, !6, i64 32}
!57 = !{!58, !12, i64 0}
!58 = !{!"AVFloatDSPContext", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88}
!59 = distinct !{null, null}
!60 = !{!58, !12, i64 56}
!61 = !{!35, !12, i64 32}
!62 = !{!35, !38, i64 24}
!63 = !{!7, !7, i64 0}
!64 = distinct !{!64, !65}
!65 = !{!"llvm.loop.mustprogress"}
!66 = distinct !{!66, !65}
!67 = !{!68, !68, i64 0}
!68 = !{!"short", !7, i64 0}
!69 = distinct !{!69, !65}
!70 = distinct !{!70, !65}
!71 = distinct !{!71, !65}
!72 = distinct !{!72, !65}
!73 = distinct !{!73, !65}
!74 = !{!6, !6, i64 0}
!75 = distinct !{!75, !65}
!76 = !{!77}
!77 = distinct !{!77, !78}
!78 = distinct !{!78, !"LVerDomain"}
!79 = !{!80}
!80 = distinct !{!80, !78}
!81 = distinct !{!81, !65, !82, !83}
!82 = !{!"llvm.loop.isvectorized", i32 1}
!83 = !{!"llvm.loop.unroll.runtime.disable"}
!84 = distinct !{!84, !65, !82}
!85 = distinct !{!85, !65}
!86 = distinct !{!86, !65}
!87 = distinct !{!87, !65}
!88 = distinct !{!88, !65}
end_hunk_0

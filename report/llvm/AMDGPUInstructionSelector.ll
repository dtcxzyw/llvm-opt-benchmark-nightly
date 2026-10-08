Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AMDGPUInstructionSelector?download=true
inline.NumInlined: 11496
inline.NumDeleted: 3951
loop-unroll.NumCompletelyUnrolled: 118
loop-unroll.NumUnrolled: 118
begin_hunk_0_@_ZNK4llvm25AMDGPUInstructionSelector30computeAvailableModuleFeaturesEPKNS_12GCNSubtargetE:bb.a
  %i.aff = zext nneg i8 %i.afe to i64
  %spec.select407 = or i64 %i.aeu, %i.aff         ; 2 uses
  %i.afg = trunc nuw i8 %i.afd to i1
  br i1 %i.afg, label %bb.jh, label %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit233.thread338

_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit233.thread338: ; preds = %bb.jg, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit
  %i.afh = phi i64 [ %spec.select407, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit ], [ %i.aeu, %bb.jg ]
  %i.afi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.afj = or i64 %i.afh, 4294967296              ; 2 uses
  store i64 %i.afj, ptr %i.afi, align 8, !tbaa !203
  br label %bb.jh

bb.jh:                                            ; preds = %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit233.thread, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit233.thread338, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit
  %i.afk = phi i64 [ %i.aez, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit233.thread ], [ %i.afj, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit233.thread338 ], [ %spec.select407, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit ] ; 2 uses
  %i.afl = load i8, ptr %i.ce, align 1, !tbaa !205, !range !201, !noundef !202
  %i.afm = trunc nuw i8 %i.afl to i1
  br i1 %i.afm, label %bb.jj, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  %i.afn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.afo = or i64 %i.aeh, 549755813888            ; 2 uses
  store i64 %i.afo, ptr %i.afn, align 8, !tbaa !203
  br label %bb.jj

bb.jj:                                            ; preds = %bb.ji, %bb.jh
  %i.afp = phi i64 [ %i.afo, %bb.ji ], [ %i.aeh, %bb.jh ] ; 2 uses
  %i.afq = or i64 %i.afk, 17179869184
  %spec.select408 = select i1 %i.ru, i64 %i.afk, i64 %i.afq ; 3 uses
  %i.afr = getelementptr inbounds nuw i8, ptr %2, i64 712
  %i.afs = load i8, ptr %i.afr, align 8, !tbaa !721, !range !201, !noundef !202
  %i.aft = trunc nuw i8 %i.afs to i1
  br i1 %i.aft, label %bb.jl, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %i.afu = load i8, ptr %i.jm, align 1, !tbaa !211, !range !201, !noundef !202
  %i.afv = trunc nuw i8 %i.afu to i1
  br i1 %i.afv, label %bb.jl, label %bb.jm

bb.jl:                                            ; preds = %bb.jk, %bb.jj
  %i.afw = or i64 %i.aen, 2305843009213693952     ; 2 uses
  store i64 %i.afw, ptr %0, align 8, !tbaa !203
  br label %bb.jm

bb.jm:                                            ; preds = %bb.jl, %bb.jk
  %i.afx = phi i64 [ %i.afw, %bb.jl ], [ %i.aen, %bb.jk ] ; 2 uses
  %i.afy = load i8, ptr %i.au, align 2, !tbaa !629, !range !201, !noundef !202
  %i.afz = trunc nuw i8 %i.afy to i1
  br i1 %i.afz, label %bb.jo, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  %i.aga = or i64 %i.afx, 8589934592              ; 2 uses
  store i64 %i.aga, ptr %0, align 8, !tbaa !203
  br label %bb.jo

bb.jo:                                            ; preds = %bb.jn, %bb.jm
  %i.agb = phi i64 [ %i.aga, %bb.jn ], [ %i.afx, %bb.jm ]
  %i.agc = load i8, ptr %i.lq, align 4, !tbaa !673, !range !201, !noundef !202
  %i.agd = trunc nuw i8 %i.agc to i1
  br i1 %i.agd, label %bb.jq, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.age = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.agf = or i64 %i.afp, 8388608                 ; 2 uses
  store i64 %i.agf, ptr %i.age, align 8, !tbaa !203
  br label %bb.jq

bb.jq:                                            ; preds = %bb.jp, %bb.jo
  %i.agg = phi i64 [ %i.agf, %bb.jp ], [ %i.afp, %bb.jo ]
  %i.agh = getelementptr inbounds nuw i8, ptr %2, i64 384
  %i.agi = load i8, ptr %i.agh, align 8, !tbaa !225 ; 2 uses
  %i.agj = icmp ne i8 %i.agi, 5                   ; 5 uses
  br i1 %i.agj, label %bb.jr, label %.thread339

.thread339:                                       ; preds = %bb.jq
  %i.agk = or i64 %i.agb, 281474976710656
  store i64 %i.agk, ptr %0, align 8, !tbaa !203
  br label %bb.jt

bb.jr:                                            ; preds = %bb.jq
  %i.agl = icmp eq i8 %i.agi, 6
  br i1 %i.agl, label %bb.js, label %bb.jt

bb.js:                                            ; preds = %bb.jr
  %i.agm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.agn = or i64 %i.agg, 32768
  store i64 %i.agn, ptr %i.agm, align 8, !tbaa !203
  br label %bb.jt

bb.jt:                                            ; preds = %.thread339, %bb.js, %bb.jr
  %.not368 = phi i1 [ true, %.thread339 ], [ false, %bb.js ], [ true, %bb.jr ] ; 2 uses
  %i.ago = load i8, ptr %i.kt, align 4, !tbaa !669, !range !201, !noundef !202
  %i.agp = trunc nuw i8 %i.ago to i1              ; 2 uses
  br i1 %i.agp, label %bb.ju, label %bb.jv

bb.ju:                                            ; preds = %bb.jt
  %i.agq = getelementptr inbounds nuw i8, ptr %2, i64 900
  %i.agr = load i8, ptr %i.agq, align 4, !tbaa !722, !range !201, !noundef !202
  %i.ags = trunc nuw i8 %i.agr to i1
  br i1 %i.ags, label %.thread347.thread, label %.thread340

.thread340:                                       ; preds = %bb.ju
  %i.agt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.agu = or i64 %spec.select408, 2305843009213693952 ; 2 uses
  store i64 %i.agu, ptr %i.agt, align 8, !tbaa !203
  br label %bb.jx

bb.jv:                                            ; preds = %bb.jt
  %i.agv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.agw = or i64 %spec.select408, 2305843009213693952 ; 4 uses
  store i64 %i.agw, ptr %i.agv, align 8, !tbaa !203
  %i.agx = getelementptr inbounds nuw i8, ptr %2, i64 900
  %i.agy = load i8, ptr %i.agx, align 4, !tbaa !722, !range !201, !noundef !202 ; 2 uses
  %i.agz = trunc nuw i8 %i.agy to i1
  %.not = xor i1 %i.agz, true                     ; 2 uses
  %brmerge360 = or i1 %i.agj, %.not
  br i1 %brmerge360, label %bb.jw, label %.thread352

bb.jw:                                            ; preds = %bb.jv
  %brmerge363 = or i1 %.not368, %.not
  br i1 %brmerge363, label %bb.jx, label %.thread346

bb.jx:                                            ; preds = %.thread340, %bb.jw
  %i.aha = phi i64 [ %i.agw, %bb.jw ], [ %i.agu, %.thread340 ] ; 2 uses
  %i.ahb = phi i8 [ %i.agy, %bb.jw ], [ 0, %.thread340 ] ; 3 uses
  %i.ahc = trunc nuw i8 %i.ahb to i1
  %or.cond = or i1 %i.agj, %i.ahc
  br i1 %or.cond, label %bb.jy, label %bb.jz

bb.jy:                                            ; preds = %bb.jx
  %i.ahd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ahe = or i64 %i.aha, 1152921504606846976     ; 2 uses
  store i64 %i.ahe, ptr %i.ahd, align 8, !tbaa !203
  br label %bb.jz

bb.jz:                                            ; preds = %bb.jx, %bb.jy
  %i.ahf = phi i64 [ %i.ahe, %bb.jy ], [ %i.aha, %bb.jx ] ; 3 uses
  br i1 %i.agp, label %.thread347, label %.thread346

.thread346:                                       ; preds = %bb.jw, %bb.jz
  %i.ahg = phi i64 [ %i.agw, %bb.jw ], [ %i.ahf, %bb.jz ] ; 2 uses
  %i.ahh = phi i8 [ 1, %bb.jw ], [ %i.ahb, %bb.jz ] ; 2 uses
  %i.ahi = trunc nuw i8 %i.ahh to i1
  %.not364 = xor i1 %i.ahi, true
  %brmerge366 = or i1 %i.agj, %.not364
  br i1 %brmerge366, label %bb.ka, label %.thread352

.thread352:                                       ; preds = %bb.jv, %.thread346
  %i.ahj = phi i64 [ %i.ahg, %.thread346 ], [ %i.agw, %bb.jv ]
  %i.ahk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ahl = or i64 %i.ahj, 144115188075855872      ; 2 uses
  store i64 %i.ahl, ptr %i.ahk, align 8, !tbaa !203
  br label %bb.ka

bb.ka:                                            ; preds = %.thread346, %.thread352
  %i.ahm = phi i64 [ %i.ahl, %.thread352 ], [ %i.ahg, %.thread346 ] ; 2 uses
  %i.ahn = phi i8 [ 1, %.thread352 ], [ %i.ahh, %.thread346 ] ; 2 uses
  %i.aho = trunc nuw i8 %i.ahn to i1
  %.not367 = xor i1 %i.aho, true
  %brmerge369 = or i1 %.not368, %.not367
  br i1 %brmerge369, label %.thread351, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  %i.ahp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ahq = or i64 %i.ahm, 288230376151711744      ; 2 uses
  store i64 %i.ahq, ptr %i.ahp, align 8, !tbaa !203
  br label %.thread351

.thread347:                                       ; preds = %bb.jz
  %i.ahr = trunc nuw i8 %i.ahb to i1
  br i1 %i.ahr, label %.thread347.thread, label %.thread351

.thread347.thread:                                ; preds = %bb.ju, %.thread347
  %i.ahs = phi i64 [ %i.ahf, %.thread347 ], [ %spec.select408, %bb.ju ]
  %i.aht = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ahu = or i64 %i.ahs, 72057594037927936       ; 2 uses
  store i64 %i.ahu, ptr %i.aht, align 8, !tbaa !203
  br label %.thread351

.thread351:                                       ; preds = %bb.ka, %bb.kb, %.thread347.thread, %.thread347
  %i.ahv = phi i64 [ %i.ahm, %bb.ka ], [ %i.ahq, %bb.kb ], [ %i.ahu, %.thread347.thread ], [ %i.ahf, %.thread347 ]
  %i.ahw = phi i8 [ %i.ahn, %bb.ka ], [ 1, %bb.kb ], [ 1, %.thread347.thread ], [ 0, %.thread347 ]
  %i.ahx = trunc nuw i8 %i.ahw to i1
  %or.cond409 = select i1 %i.agj, i1 true, i1 %i.ahx
  br i1 %or.cond409, label %bb.kd, label %bb.kc

bb.kc:                                            ; preds = %.thread351
  %i.ahy = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ahz = or i64 %i.ahv, 576460752303423488
  store i64 %i.ahz, ptr %i.ahy, align 8, !tbaa !203
  br label %bb.kd

bb.kd:                                            ; preds = %bb.kc, %.thread351
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4llvm25AMDGPUInstructionSelector30setupGeneratedPerFunctionStateERNS_15MachineFunctionE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(1408) initializes((144, 168)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1065) %1) unnamed_addr #2 align 2 {
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %4 = load ptr, ptr %3, align 8, !tbaa !337, !noalias !725
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 144
  %.sroa.0.0.copyload.i.i = load i40, ptr %5, align 8, !noalias !725 ; 5 uses
  %6 = and i40 %.sroa.0.0.copyload.i.i, 4278190080
  %7 = icmp eq i40 %6, 16777216
  br i1 %7, label %_ZNK4llvm12DenormalModeneES0_.exit.i, label %_ZNK4llvm12DenormalModeneES0_.exit8.thread.i

_ZNK4llvm12DenormalModeneES0_.exit.i:             ; preds = %2
  %.sroa.417.0.extract.shift.mask.i = and i40 %.sroa.0.0.copyload.i.i, -4294967296
  %.not.i = icmp eq i40 %.sroa.417.0.extract.shift.mask.i, 4294967296
  %spec.select = select i1 %.not.i, i64 0, i64 8796093022208 ; 2 uses
  %8 = ashr i40 %.sroa.0.0.copyload.i.i, 32
  %9 = trunc nsw i40 %8 to i32
  %.not20.i = icmp eq i32 %9, 1
  br i1 %.not20.i, label %_ZNK4llvm12DenormalModeeqES0_.exit.thread.i, label %_ZNK4llvm12DenormalModeneES0_.exit8.thread.i

_ZNK4llvm12DenormalModeneES0_.exit8.thread.i:     ; preds = %_ZNK4llvm12DenormalModeneES0_.exit.i, %2
  %10 = phi i64 [ %spec.select, %_ZNK4llvm12DenormalModeneES0_.exit.i ], [ 8796093022208, %2 ]
  %11 = or disjoint i64 %10, 4398046511104
  br label %_ZNK4llvm12DenormalModeeqES0_.exit.thread.i

_ZNK4llvm12DenormalModeeqES0_.exit.thread.i:      ; preds = %_ZNK4llvm12DenormalModeneES0_.exit8.thread.i, %_ZNK4llvm12DenormalModeneES0_.exit.i
  %.sroa.5.0 = phi i64 [ %spec.select, %_ZNK4llvm12DenormalModeneES0_.exit.i ], [ %11, %_ZNK4llvm12DenormalModeneES0_.exit8.thread.i ] ; 2 uses
  %i.a = and i40 %.sroa.0.0.copyload.i.i, 16776960
  %or.cond.i = icmp eq i40 %i.a, 65792
  %spec.select4 = select i1 %or.cond.i, i64 281474976710656, i64 0
  %.sroa.0.0.extract.trunc.i = trunc i40 %.sroa.0.0.copyload.i.i to i1
  %12 = or i64 %.sroa.5.0, 137438953472
  %.sroa.5.2 = select i1 %.sroa.0.0.extract.trunc.i, i64 %.sroa.5.0, i64 %12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %spec.select4, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %.sroa.5.2, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !338
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZNK4llvm25AMDGPUInstructionSelector32computeAvailableFunctionFeaturesEPKNS_12GCNSubtargetEPKNS_15MachineFunctionE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::Bitset") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(1408) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !337
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %.sroa.0.0.copyload.i = load i40, ptr %i.c, align 8 ; 5 uses
  %i.d = and i40 %.sroa.0.0.copyload.i, 4278190080
  %4 = icmp eq i40 %i.d, 16777216
  br i1 %4, label %_ZNK4llvm12DenormalModeneES0_.exit, label %_ZNK4llvm12DenormalModeneES0_.exit8.thread

_ZNK4llvm12DenormalModeneES0_.exit:               ; preds = %bb.a
  %.sroa.417.0.extract.shift.mask = and i40 %.sroa.0.0.copyload.i, -4294967296
  %.not = icmp eq i40 %.sroa.417.0.extract.shift.mask, 4294967296
  br i1 %.not, label %_ZNK4llvm12DenormalModeneES0_.exit8, label %.thread18

.thread18:                                        ; preds = %_ZNK4llvm12DenormalModeneES0_.exit
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 8796093022208, ptr %5, align 8, !tbaa !203
  br label %_ZNK4llvm12DenormalModeneES0_.exit8

_ZNK4llvm12DenormalModeneES0_.exit8:              ; preds = %_ZNK4llvm12DenormalModeneES0_.exit, %.thread18
  %6 = phi i64 [ 0, %_ZNK4llvm12DenormalModeneES0_.exit ], [ 8796093022208, %.thread18 ] ; 2 uses
  %7 = ashr i40 %.sroa.0.0.copyload.i, 32
  %8 = trunc nsw i40 %7 to i32
  %.not20 = icmp eq i32 %8, 1
  br i1 %.not20, label %bb.b, label %_ZNK4llvm12DenormalModeneES0_.exit8.thread

_ZNK4llvm12DenormalModeneES0_.exit8.thread:       ; preds = %bb.a, %_ZNK4llvm12DenormalModeneES0_.exit8
  %9 = phi i64 [ %6, %_ZNK4llvm12DenormalModeneES0_.exit8 ], [ 8796093022208, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %10 = or i64 %9, 4398046511104                  ; 2 uses
  store i64 %10, ptr %i.e, align 8, !tbaa !203
  br label %bb.b

bb.b:                                             ; preds = %_ZNK4llvm12DenormalModeneES0_.exit8.thread, %_ZNK4llvm12DenormalModeneES0_.exit8
  %i.f = phi i64 [ %10, %_ZNK4llvm12DenormalModeneES0_.exit8.thread ], [ %6, %_ZNK4llvm12DenormalModeneES0_.exit8 ]
  %i.g = and i40 %.sroa.0.0.copyload.i, 16776960
  %or.cond = icmp eq i40 %i.g, 65792
  br i1 %or.cond, label %bb.c, label %_ZNK4llvm12DenormalModeeqES0_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 281474976710656, ptr %i.h, align 8, !tbaa !203
  br label %_ZNK4llvm12DenormalModeeqES0_.exit.thread

_ZNK4llvm12DenormalModeeqES0_.exit.thread:        ; preds = %bb.b, %bb.c
  %.sroa.0.0.extract.trunc = trunc i40 %.sroa.0.0.copyload.i to i1
  br i1 %.sroa.0.0.extract.trunc, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm12DenormalModeeqES0_.exit.thread
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %11 = or i64 %i.f, 137438953472
  store i64 %11, ptr %i.i, align 8, !tbaa !203
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK4llvm12DenormalModeeqES0_.exit.thread
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm25AMDGPUInstructionSelector16selectBUFSOffsetERNS_14MachineOperandE(ptr dead_on_unwind noalias writable sret(%"class.std::optional.239") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1408) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) #4 align 2 {
bb.a:
  %3 = alloca %"struct.llvm::MIPatternMatch::SpecificConstantMatch", align 8 ; 6 uses
  %4 = alloca %"class.llvm::SmallVector.245", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !338  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !377, !nonnull !202, !align !378
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 835
  %i.f = load i8, ptr %i.e, align 1, !tbaa !220, !range !201, !noundef !202
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %_ZSt10_ConstructISt8functionIFvRN4llvm19MachineInstrBuilderEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !379
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 64, ptr %i.j, align 8, !tbaa !381, !alias.scope !728
  store i64 0, ptr %3, align 8, !tbaa !338, !alias.scope !728
  %i.k = call noundef zeroext i1 @_ZN4llvm14MIPatternMatch21SpecificConstantMatch5matchERKNS_19MachineRegisterInfoENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(520) %i.i, i32 %i.b)
  %i.l = load i32, ptr %i.j, align 8, !tbaa !381
  %i.m = icmp ugt i32 %i.l, 64
  br i1 %i.m, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %3, align 8, !tbaa !338    ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZdaPv(ptr noundef nonnull %i.n) #25
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %spec.select = select i1 %i.k, i32 20, i32 %i.b
  br label %_ZSt10_ConstructISt8functionIFvRN4llvm19MachineInstrBuilderEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i

_ZSt10_ConstructISt8functionIFvRN4llvm19MachineInstrBuilderEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i: ; preds = %.critedge, %bb.a
  %.sroa.03.0 = phi i32 [ %i.b, %bb.a ], [ %spec.select, %.critedge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.p, ptr %4, align 8, !tbaa !382
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store i32 0, ptr %i.q, align 8, !tbaa !383
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 4, ptr %i.r, align 4, !tbaa !384
  call void @_ZN4llvm15SmallVectorImplISt8functionIFvRNS_19MachineInstrBuilderEEEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(144) %4, i64 noundef 1)
  %i.s = load i32, ptr %i.q, align 8, !tbaa !383
  %i.t = load ptr, ptr %4, align 8, !tbaa !382
  %i.u = zext i32 %i.s to i64
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %i.u ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i8 0, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i32 %.sroa.03.0, ptr %i.v, align 8, !tbaa !385
  store ptr @"_ZNSt17_Function_handlerIFvRN4llvm19MachineInstrBuilderEEZNKS0_25AMDGPUInstructionSelector16selectBUFSOffsetERNS0_14MachineOperandEE3$_0E9_M_invokeERKSt9_Any_dataS2_", ptr %i.w, align 8, !tbaa !388
  store ptr @"_ZNSt17_Function_handlerIFvRN4llvm19MachineInstrBuilderEEZNKS0_25AMDGPUInstructionSelector16selectBUFSOffsetERNS0_14MachineOperandEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation", ptr %i.x, align 8, !tbaa !389
  %.pre.i.i.i = load i32, ptr %i.q, align 8, !tbaa !383
  %i.y = add i32 %.pre.i.i.i, 1                   ; 2 uses
  store i32 %i.y, ptr %i.q, align 8, !tbaa !383
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.z, ptr %0, align 8, !tbaa !382
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.aa, align 8, !tbaa !383
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 4, ptr %i.ab, align 4, !tbaa !384
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt8optionalIN4llvm11SmallVectorISt8functionIFvRNS0_19MachineInstrBuilderEEELj4EEEEC2IS7_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS7_JSF_EESt14is_convertibleISF_S7_EEEbE4typeELb1EEEOSF_.exit.thread, label %_ZNSt8optionalIN4llvm11SmallVectorISt8functionIFvRNS0_19MachineInstrBuilderEEELj4EEEEC2IS7_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS7_JSF_EESt14is_convertibleISF_S7_EEEbE4typeELb1EEEOSF_.exit

_ZNSt8optionalIN4llvm11SmallVectorISt8functionIFvRNS0_19MachineInstrBuilderEEELj4EEEEC2IS7_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS7_JSF_EESt14is_convertibleISF_S7_EEEbE4typeELb1EEEOSF_.exit.thread: ; preds = %_ZSt10_ConstructISt8functionIFvRN4llvm19MachineInstrBuilderEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 1, ptr %i.ac, align 8, !tbaa !391
  %i.ad = load ptr, ptr %4, align 8, !tbaa !382
  br label %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRNS_19MachineInstrBuilderEEELb0EE13destroy_rangeEPS5_S7_.exit.i

_ZNSt8optionalIN4llvm11SmallVectorISt8functionIFvRNS0_19MachineInstrBuilderEEELj4EEEEC2IS7_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS7_JSF_EESt14is_convertibleISF_S7_EEEbE4typeELb1EEEOSF_.exit: ; preds = %_ZSt10_ConstructISt8functionIFvRN4llvm19MachineInstrBuilderEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i
  %i.ae = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplISt8functionIFvRNS_19MachineInstrBuilderEEEEaSEOS6_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(144) %4) ; 0 uses
  %.pre = load i32, ptr %i.q, align 8, !tbaa !383 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 1, ptr %i.af, align 8, !tbaa !391
  %i.ag = load ptr, ptr %4, align 8, !tbaa !382   ; 3 uses
  %.not4.i.i = icmp eq i32 %.pre, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRNS_19MachineInstrBuilderEEELb0EE13destroy_rangeEPS5_S7_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZNSt8optionalIN4llvm11SmallVectorISt8functionIFvRNS0_19MachineInstrBuilderEEELj4EEEEC2IS7_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS7_JSF_EESt14is_convertibleISF_S7_EEEbE4typeELb1EEEOSF_.exit
  %i.ah = zext i32 %.pre to i64
  %.idx.i = shl nuw nsw i64 %i.ah, 5
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.aj, %_ZNSt14_Function_baseD2Ev.exit.i.i ], [ %i.ai, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %.05.i.i, i64 -32 ; 4 uses
  %i.ak = getelementptr inbounds i8, ptr %.05.i.i, i64 -16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !389 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.am = call noundef zeroext i1 %i.al(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i32 noundef 3) #24, !inline_history !0 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i.i

_ZNSt14_Function_baseD2Ev.exit.i.i:               ; preds = %bb.e, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %i.ag, %i.aj
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRNS_19MachineInstrBuilderEEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !1

_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRNS_19MachineInstrBuilderEEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !382
  br label %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRNS_19MachineInstrBuilderEEELb0EE13destroy_rangeEPS5_S7_.exit.i

_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRNS_19MachineInstrBuilderEEELb0EE13destroy_rangeEPS5_S7_.exit.i: ; preds = %_ZNSt8optionalIN4llvm11SmallVectorISt8functionIFvRNS0_19MachineInstrBuilderEEELj4EEEEC2IS7_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS7_JSF_EESt14is_convertibleISF_S7_EEEbE4typeELb1EEEOSF_.exit.thread, %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRNS_19MachineInstrBuilderEEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i, %_ZNSt8optionalIN4llvm11SmallVectorISt8functionIFvRNS0_19MachineInstrBuilderEEELj4EEEEC2IS7_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS7_JSF_EESt14is_convertibleISF_S7_EEEbE4typeELb1EEEOSF_.exit
  %i.an = phi ptr [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRNS_19MachineInstrBuilderEEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i ], [ %i.ag, %_ZNSt8optionalIN4llvm11SmallVectorISt8functionIFvRNS0_19MachineInstrBuilderEEELj4EEEEC2IS7_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS7_JSF_EESt14is_convertibleISF_S7_EEEbE4typeELb1EEEOSF_.exit ], [ %i.ad, %_ZNSt8optionalIN4llvm11SmallVectorISt8functionIFvRNS0_19MachineInstrBuilderEEELj4EEEEC2IS7_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS7_JSF_EESt14is_convertibleISF_S7_EEEbE4typeELb1EEEOSF_.exit.thread ] ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.p
  br i1 %i.ao, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRNS_19MachineInstrBuilderEEELb0EE13destroy_rangeEPS5_S7_.exit.i
  call void @free(ptr noundef %i.an) #24
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRNS_19MachineInstrBuilderEEELb0EE13destroy_rangeEPS5_S7_.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm25AMDGPUInstructionSelector26selectDS128Bit8ByteAlignedERNS_14MachineOperandE(ptr dead_on_unwind noalias writable sret(%"class.std::optional.239") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1408) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) #4 align 2 {
bb.a:
  tail call void @_ZNK4llvm25AMDGPUInstructionSelector18selectDSReadWrite2ERNS_14MachineOperandEj(ptr dead_on_unwind writable sret(%"class.std::optional.239") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1408) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 8)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm25AMDGPUInstructionSelector20selectDS1Addr1OffsetERNS_14MachineOperandE(ptr dead_on_unwind noalias writable sret(%"class.std::optional.239") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1408) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) #4 align 2 {
_ZSt10_ConstructISt8functionIFvRN4llvm19MachineInstrBuilderEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i.1:
  %3 = alloca %"class.llvm::SmallVector.245", align 8 ; 12 uses
  %i.a = tail call i64 @_ZNK4llvm25AMDGPUInstructionSelector24selectDS1Addr1OffsetImplERNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(1408) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 2 uses
  %.sroa.05.0.extract.trunc = trunc i64 %i.a to i32
  %.sroa.46.0.extract.shift = lshr i64 %i.a, 32
  %.sroa.46.0.extract.trunc = trunc nuw nsw i64 %.sroa.46.0.extract.shift to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !382
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i32 0, ptr %i.c, align 8, !tbaa !383
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 4, ptr %i.d, align 4, !tbaa !384
  call void @_ZN4llvm15SmallVectorImplISt8functionIFvRNS_19MachineInstrBuilderEEEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(144) %3, i64 noundef 2)
  %i.e = load i32, ptr %i.c, align 8, !tbaa !383
  %i.f = load ptr, ptr %3, align 8, !tbaa !382
  %i.g = zext i32 %i.e to i64
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.g ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i8 0, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i32 %.sroa.05.0.extract.trunc, ptr %i.h, align 8, !tbaa !385
  store ptr @"_ZNSt17_Function_handlerIFvRN4llvm19MachineInstrBuilderEEZNKS0_25AMDGPUInstructionSelector20selectDS1Addr1OffsetERNS0_14MachineOperandEE3$_0E9_M_invokeERKSt9_Any_dataS2_", ptr %i.i, align 8, !tbaa !388
  store ptr @"_ZNSt17_Function_handlerIFvRN4llvm19MachineInstrBuilderEEZNKS0_25AMDGPUInstructionSelector20selectDS1Addr1OffsetERNS0_14MachineOperandEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation", ptr %i.j, align 8, !tbaa !389
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i8 0, i64 16, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store i32 %.sroa.46.0.extract.trunc, ptr %i.k, align 8, !tbaa !385
  store ptr @"_ZNSt17_Function_handlerIFvRN4llvm19MachineInstrBuilderEEZNKS0_25AMDGPUInstructionSelector20selectDS1Addr1OffsetERNS0_14MachineOperandEE3$_1E9_M_invokeERKSt9_Any_dataS2_", ptr %i.l, align 8, !tbaa !388
  store ptr @"_ZNSt17_Function_handlerIFvRN4llvm19MachineInstrBuilderEEZNKS0_25AMDGPUInstructionSelector20selectDS1Addr1OffsetERNS0_14MachineOperandEE3$_1E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation", ptr %i.m, align 8, !tbaa !389
  %.pre.i.i.i = load i32, ptr %i.c, align 8, !tbaa !383
  %i.n = add i32 %.pre.i.i.i, 2                   ; 2 uses
  store i32 %i.n, ptr %i.c, align 8, !tbaa !383
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.o, ptr %0, align 8, !tbaa !382
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.p, align 8, !tbaa !383
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 4, ptr %i.q, align 4, !tbaa !384
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt8optionalIN4llvm11SmallVectorISt8functionIFvRNS0_19MachineInstrBuilderEEELj4EEEEC2IS7_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS7_JSF_EESt14is_convertibleISF_S7_EEEbE4typeELb1EEEOSF_.exit.thread, label %_ZNSt8optionalIN4llvm11SmallVectorISt8functionIFvRNS0_19MachineInstrBuilderEEELj4EEEEC2IS7_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS7_JSF_EESt14is_convertibleISF_S7_EEEbE4typeELb1EEEOSF_.exit

_ZNSt8optionalIN4llvm11SmallVectorISt8functionIFvRNS0_19MachineInstrBuilderEEELj4EEEEC2IS7_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS7_JSF_EESt14is_convertibleISF_S7_EEEbE4typeELb1EEEOSF_.exit.thread: ; preds = %_ZSt10_ConstructISt8functionIFvRN4llvm19MachineInstrBuilderEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i.1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 1, ptr %i.r, align 8, !tbaa !391
  %i.s = load ptr, ptr %3, align 8, !tbaa !382
  br label %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRNS_19MachineInstrBuilderEEELb0EE13destroy_rangeEPS5_S7_.exit.i

_ZNSt8optionalIN4llvm11SmallVectorISt8functionIFvRNS0_19MachineInstrBuilderEEELj4EEEEC2IS7_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS7_JSF_EESt14is_convertibleISF_S7_EEEbE4typeELb1EEEOSF_.exit: ; preds = %_ZSt10_ConstructISt8functionIFvRN4llvm19MachineInstrBuilderEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i.1
  %i.t = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplISt8functionIFvRNS_19MachineInstrBuilderEEEEaSEOS6_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(144) %3) ; 0 uses
  %.pre7 = load i32, ptr %i.c, align 8, !tbaa !383 ; 2 uses
end_hunk_0

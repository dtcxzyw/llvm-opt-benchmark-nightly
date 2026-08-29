Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_demosaic?download=true
inline.NumInlined: 382
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 134
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 177
begin_hunk_0_@process:bb.a
  %i.olh = icmp ne i32 %i.oig, 2
  %.neg952.i = sext i1 %i.olh to i32
  %reass.sub.i = sub nsw i32 %.neg952.i, %i.oig
  %i.oli = sext i32 %i.olg to i64
  %i.olj = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.oli
  %i.olk = load ptr, ptr %i.olj, align 8, !tbaa !407, !noalias !408 ; 2 uses
  %i.oll = getelementptr [4 x i8], ptr %i.olk, i64 %i.oic
  %i.olm = getelementptr [4 x i8], ptr %i.oll, i64 %i.nmv ; 7 uses
  %i.oln = sext i32 %reass.sub.i to i64
  %i.olo = getelementptr [8 x i8], ptr %i.b, i64 %i.oln
  %i.olp = getelementptr i8, ptr %i.olo, i64 40
  %i.olq = load ptr, ptr %i.olp, align 8, !tbaa !407, !noalias !408 ; 2 uses
  %i.olr = getelementptr [4 x i8], ptr %i.olq, i64 %i.oic
  %i.ols = getelementptr [4 x i8], ptr %i.olr, i64 %i.nmv ; 7 uses
  br i1 %i.nmx, label %.lr.ph1101.i.preheader, label %._crit_edge1102.i

.lr.ph1101.i.preheader:                           ; preds = %bb.pu
  br i1 %min.iters.check4029, label %.lr.ph1101.i.preheader4629, label %vector.memcheck4009

vector.memcheck4009:                              ; preds = %.lr.ph1101.i.preheader
  %scevgep4010 = getelementptr i8, ptr %i.olk, i64 %i.ohy ; 2 uses
  %scevgep4016 = getelementptr i8, ptr %i.olq, i64 %i.ohy ; 2 uses
  %bound04017.a = icmp ult ptr %i.olm, %scevgep4015
  %bound14018.a = icmp ult ptr %scevgep4012.a, %scevgep4010
  %found.conflict4019.a = and i1 %bound04017.a, %bound14018.a
  %bound04020 = icmp ult ptr %i.olm, %scevgep4016
  %bound14021 = icmp ult ptr %i.ols, %scevgep4010
  %found.conflict4022 = and i1 %bound04020, %bound14021
  %conflict.rdx4023 = or i1 %found.conflict4019.a, %found.conflict4022
  %bound04024 = icmp ult ptr %scevgep4012.a, %scevgep4016
  %bound14025 = icmp ult ptr %i.ols, %scevgep4015
  %found.conflict4026 = and i1 %bound04024, %bound14025
  %conflict.rdx4027 = or i1 %conflict.rdx4023, %found.conflict4026
  br i1 %conflict.rdx4027, label %.lr.ph1101.i.preheader4629, label %vector.ph4030

vector.ph4030:                                    ; preds = %vector.memcheck4009
  %i.olt = getelementptr i8, ptr %i.ols, i64 %i.noh
  %i.olu = getelementptr i8, ptr %i.olm, i64 %i.noh
  %i.olv = getelementptr i8, ptr %gep1138.i, i64 %i.noh
  %i.olw = getelementptr i8, ptr %gep1136.i, i64 %i.noh
  %i.olx = getelementptr i8, ptr %gep1134.i, i64 %i.noh
  %i.oly = getelementptr i8, ptr %gep1132.i, i64 %i.noh
  %i.olz = getelementptr i8, ptr %gep.i561, i64 %i.noh
  br label %vector.body4032

vector.body4032:                                  ; preds = %vector.body4032, %vector.ph4030
  %index4033 = phi i64 [ 0, %vector.ph4030 ], [ %index.next4063, %vector.body4032 ] ; 2 uses
  %pointer.phi4034.a = phi ptr [ %i.olm, %vector.ph4030 ], [ %ptr.ind4064.a, %vector.body4032 ] ; 2 uses
  %pointer.phi4035 = phi ptr [ %gep1134.i, %vector.ph4030 ], [ %ptr.ind4065, %vector.body4032 ] ; 2 uses
  %pointer.phi4036 = phi ptr [ %gep1132.i, %vector.ph4030 ], [ %ptr.ind4066, %vector.body4032 ] ; 2 uses
  %pointer.phi4037 = phi ptr [ %gep.i561, %vector.ph4030 ], [ %ptr.ind4067, %vector.body4032 ] ; 2 uses
  %vector.gep4038.a = getelementptr i8, ptr %pointer.phi4037, <8 x i64> <i64 0, i64 8, i64 16, i64 24, i64 32, i64 40, i64 48, i64 56> ; 2 uses
  %vector.gep4039 = getelementptr i8, ptr %pointer.phi4036, <8 x i64> <i64 0, i64 8, i64 16, i64 24, i64 32, i64 40, i64 48, i64 56> ; 2 uses
  %vector.gep4040 = getelementptr i8, ptr %pointer.phi4035, <8 x i64> <i64 0, i64 8, i64 16, i64 24, i64 32, i64 40, i64 48, i64 56> ; 2 uses
  %vector.gep4041 = getelementptr i8, ptr %pointer.phi4034.a, <8 x i64> <i64 0, i64 8, i64 16, i64 24, i64 32, i64 40, i64 48, i64 56>
  %i.oma = extractelement <8 x ptr> %vector.gep4038.a, i64 0
  %i.omb = extractelement <8 x ptr> %vector.gep4039, i64 0
  %i.omc = extractelement <8 x ptr> %vector.gep4040, i64 0
  %i.omd = shl i64 %index4033, 3                  ; 3 uses
  %next.gep4042 = getelementptr i8, ptr %i.ols, i64 %i.omd
  %next.gep4043 = getelementptr i8, ptr %gep1138.i, i64 %i.omd ; 2 uses
  %next.gep4044 = getelementptr i8, ptr %gep1136.i, i64 %i.omd
  %wide.vec4045.a = load <16 x float>, ptr %i.omb, align 4, !tbaa !22, !alias.scope !454, !noalias !402 ; 2 uses
  %strided.vec4046.a = shufflevector <16 x float> %wide.vec4045.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec4047 = shufflevector <16 x float> %wide.vec4045.a, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %wide.vec4048 = load <16 x float>, ptr %next.gep4042, align 4, !tbaa !22, !alias.scope !457, !noalias !402
  %strided.vec4049 = shufflevector <16 x float> %wide.vec4048, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.ome = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4049, %strided.vec4046.a
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ome, <8 x ptr> align 4 %vector.gep4041, <8 x i1> splat (i1 true)), !tbaa !22, !alias.scope !459, !noalias !461
  %wide.vec4050 = load <16 x float>, ptr %i.oma, align 4, !tbaa !22, !alias.scope !454, !noalias !402
  %strided.vec4051.a = shufflevector <16 x float> %wide.vec4050, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.vec4052.a = load <16 x float>, ptr %next.gep4044, align 8, !tbaa !22, !alias.scope !454, !noalias !402 ; 2 uses
  %strided.vec4053.a = shufflevector <16 x float> %wide.vec4052.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec4054 = shufflevector <16 x float> %wide.vec4052.a, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec4055 = load <16 x float>, ptr %i.omc, align 4, !tbaa !22, !alias.scope !454, !noalias !402
  %strided.vec4056 = shufflevector <16 x float> %wide.vec4055, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.vec4057 = load <16 x float>, ptr %next.gep4043, align 8, !tbaa !22, !alias.scope !454, !noalias !402
  %strided.vec4058 = shufflevector <16 x float> %wide.vec4057, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.omf = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4051.a, %strided.vec4056
  %i.omg = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4053.a, %strided.vec4058
  %i.omh = fsub reassoc nsz arcp contract afn <8 x float> %i.omf, %i.omg
  %i.omi = fmul reassoc nsz arcp contract afn <8 x float> %i.omh, splat (float 5.000000e-01)
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.omi, <8 x ptr> align 4 %vector.gep4039, <8 x i1> splat (i1 true)), !tbaa !22, !alias.scope !454, !noalias !462
  %wide.gep4059 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep4038.a, i64 4
  %wide.gep4060 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep4040, i64 4
  %i.omj = getelementptr inbounds nuw i8, ptr %next.gep4043, i64 4
  %i.omk = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4054, %strided.vec4047
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.omk, <8 x ptr> align 4 %wide.gep4059, <8 x i1> splat (i1 true)), !tbaa !22, !alias.scope !454, !noalias !462
  %wide.vec4061 = load <16 x float>, ptr %i.omj, align 4, !tbaa !22, !alias.scope !454, !noalias !402
  %strided.vec4062 = shufflevector <16 x float> %wide.vec4061, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.oml = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4062, %strided.vec4047
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.oml, <8 x ptr> align 4 %wide.gep4060, <8 x i1> splat (i1 true)), !tbaa !22, !alias.scope !454, !noalias !462
  %index.next4063 = add nuw i64 %index4033, 8     ; 2 uses
  %ptr.ind4064.a = getelementptr i8, ptr %pointer.phi4034.a, i64 64
  %ptr.ind4065 = getelementptr i8, ptr %pointer.phi4035, i64 64
  %ptr.ind4066 = getelementptr i8, ptr %pointer.phi4036, i64 64
  %ptr.ind4067 = getelementptr i8, ptr %pointer.phi4037, i64 64
  %i.omm = icmp eq i64 %index.next4063, %n.vec4031
  br i1 %i.omm, label %.lr.ph1101.i.preheader4629, label %vector.body4032, !llvm.loop !463

.lr.ph1101.i.preheader4629:                       ; preds = %vector.body4032, %vector.memcheck4009, %.lr.ph1101.i.preheader
  %.08931099.i.ph = phi i32 [ %i.nmr, %vector.memcheck4009 ], [ %i.nmr, %.lr.ph1101.i.preheader ], [ %i.nog, %vector.body4032 ]
  %.08941098.i.ph = phi ptr [ %i.ols, %vector.memcheck4009 ], [ %i.ols, %.lr.ph1101.i.preheader ], [ %i.olt, %vector.body4032 ]
  %.08951097.i.ph = phi ptr [ %i.olm, %vector.memcheck4009 ], [ %i.olm, %.lr.ph1101.i.preheader ], [ %i.olu, %vector.body4032 ]
  %.19001096.i.ph = phi ptr [ %gep1138.i, %vector.memcheck4009 ], [ %gep1138.i, %.lr.ph1101.i.preheader ], [ %i.olv, %vector.body4032 ]
  %.19021095.i.ph = phi ptr [ %gep1136.i, %vector.memcheck4009 ], [ %gep1136.i, %.lr.ph1101.i.preheader ], [ %i.olw, %vector.body4032 ]
  %.19041094.i.ph = phi ptr [ %gep1134.i, %vector.memcheck4009 ], [ %gep1134.i, %.lr.ph1101.i.preheader ], [ %i.olx, %vector.body4032 ]
  %.19061093.i.ph = phi ptr [ %gep1132.i, %vector.memcheck4009 ], [ %gep1132.i, %.lr.ph1101.i.preheader ], [ %i.oly, %vector.body4032 ]
  %.19081092.i.ph = phi ptr [ %gep.i561, %vector.memcheck4009 ], [ %gep.i561, %.lr.ph1101.i.preheader ], [ %i.olz, %vector.body4032 ]
  br label %.lr.ph1101.i

.lr.ph1101.i:                                     ; preds = %.lr.ph1101.i.preheader4629, %.lr.ph1101.i
  %.08931099.i = phi i32 [ %i.onp, %.lr.ph1101.i ], [ %.08931099.i.ph, %.lr.ph1101.i.preheader4629 ]
  %.08941098.i = phi ptr [ %i.ono, %.lr.ph1101.i ], [ %.08941098.i.ph, %.lr.ph1101.i.preheader4629 ] ; 2 uses
  %.08951097.i = phi ptr [ %i.onn, %.lr.ph1101.i ], [ %.08951097.i.ph, %.lr.ph1101.i.preheader4629 ] ; 2 uses
  %.19001096.i = phi ptr [ %i.onm, %.lr.ph1101.i ], [ %.19001096.i.ph, %.lr.ph1101.i.preheader4629 ] ; 3 uses
  %.19021095.i = phi ptr [ %i.onl, %.lr.ph1101.i ], [ %.19021095.i.ph, %.lr.ph1101.i.preheader4629 ] ; 3 uses
  %.19041094.i = phi ptr [ %i.onk, %.lr.ph1101.i ], [ %.19041094.i.ph, %.lr.ph1101.i.preheader4629 ] ; 3 uses
  %.19061093.i = phi ptr [ %i.onj, %.lr.ph1101.i ], [ %.19061093.i.ph, %.lr.ph1101.i.preheader4629 ] ; 4 uses
  %.19081092.i = phi ptr [ %i.oni, %.lr.ph1101.i ], [ %.19081092.i.ph, %.lr.ph1101.i.preheader4629 ] ; 3 uses
  %i.omn = load float, ptr %.19061093.i, align 4, !tbaa !22, !noalias !402
  %i.omo = load float, ptr %.08941098.i, align 4, !tbaa !22, !noalias !402
  %i.omp = fadd reassoc nsz arcp contract afn float %i.omo, %i.omn
  store float %i.omp, ptr %.08951097.i, align 4, !tbaa !22, !noalias !402
  %i.omq = load float, ptr %.19081092.i, align 4, !tbaa !22, !noalias !402
  %i.omr = load float, ptr %.19021095.i, align 4, !tbaa !22, !noalias !402
  %i.oms = load float, ptr %.19041094.i, align 4, !tbaa !22, !noalias !402
  %i.omt = load float, ptr %.19001096.i, align 4, !tbaa !22, !noalias !402
  %i.omu = fadd reassoc nsz arcp contract afn float %i.omq, %i.oms
  %i.omv = fadd reassoc nsz arcp contract afn float %i.omr, %i.omt
  %i.omw = fsub reassoc nsz arcp contract afn float %i.omu, %i.omv
  %i.omx = fmul reassoc nsz arcp contract afn float %i.omw, 5.000000e-01
  store float %i.omx, ptr %.19061093.i, align 4, !tbaa !22, !noalias !402
  %i.omy = getelementptr inbounds nuw i8, ptr %.19081092.i, i64 4
  %i.omz = getelementptr inbounds nuw i8, ptr %.19061093.i, i64 4
  %i.ona = getelementptr inbounds nuw i8, ptr %.19041094.i, i64 4
  %i.onb = getelementptr inbounds nuw i8, ptr %.19021095.i, i64 4
  %i.onc = getelementptr inbounds nuw i8, ptr %.19001096.i, i64 4
  %i.ond = load float, ptr %i.omz, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.one = load float, ptr %i.onb, align 4, !tbaa !22, !noalias !402
  %i.onf = fadd reassoc nsz arcp contract afn float %i.one, %i.ond
  store float %i.onf, ptr %i.omy, align 4, !tbaa !22, !noalias !402
  %i.ong = load float, ptr %i.onc, align 4, !tbaa !22, !noalias !402
  %i.onh = fadd reassoc nsz arcp contract afn float %i.ong, %i.ond
  store float %i.onh, ptr %i.ona, align 4, !tbaa !22, !noalias !402
  %i.oni = getelementptr inbounds nuw i8, ptr %.19081092.i, i64 8 ; 2 uses
  %i.onj = getelementptr inbounds nuw i8, ptr %.19061093.i, i64 8 ; 2 uses
  %i.onk = getelementptr inbounds nuw i8, ptr %.19041094.i, i64 8 ; 2 uses
  %i.onl = getelementptr inbounds nuw i8, ptr %.19021095.i, i64 8 ; 2 uses
  %i.onm = getelementptr inbounds nuw i8, ptr %.19001096.i, i64 8 ; 2 uses
  %i.onn = getelementptr inbounds nuw i8, ptr %.08951097.i, i64 8 ; 2 uses
  %i.ono = getelementptr inbounds nuw i8, ptr %.08941098.i, i64 8 ; 2 uses
  %i.onp = add nuw nsw i32 %.08931099.i, 2        ; 3 uses
  %i.onq = icmp slt i32 %i.onp, %i.nmw
  br i1 %i.onq, label %.lr.ph1101.i, label %._crit_edge1102.i, !llvm.loop !464

._crit_edge1102.i:                                ; preds = %.lr.ph1101.i, %bb.pu
  %.1908.lcssa.i = phi ptr [ %gep.i561, %bb.pu ], [ %i.oni, %.lr.ph1101.i ]
  %.1906.lcssa.i = phi ptr [ %gep1132.i, %bb.pu ], [ %i.onj, %.lr.ph1101.i ] ; 2 uses
  %.1904.lcssa.i = phi ptr [ %gep1134.i, %bb.pu ], [ %i.onk, %.lr.ph1101.i ]
  %.1902.lcssa.i = phi ptr [ %gep1136.i, %bb.pu ], [ %i.onl, %.lr.ph1101.i ]
  %.1900.lcssa.i = phi ptr [ %gep1138.i, %bb.pu ], [ %i.onm, %.lr.ph1101.i ]
  %.0895.lcssa.i = phi ptr [ %i.olm, %bb.pu ], [ %i.onn, %.lr.ph1101.i ]
  %.0894.lcssa.i = phi ptr [ %i.ols, %bb.pu ], [ %i.ono, %.lr.ph1101.i ]
  %.0893.lcssa.i = phi i32 [ %i.nmr, %bb.pu ], [ %i.onp, %.lr.ph1101.i ]
  %i.onr = icmp slt i32 %.0893.lcssa.i, %i.nmt
  br i1 %i.onr, label %bb.pv, label %bb.pw

bb.pv:                                            ; preds = %._crit_edge1102.i
  %i.ons = load float, ptr %.1906.lcssa.i, align 4, !tbaa !22, !noalias !402
  %i.ont = load float, ptr %.0894.lcssa.i, align 4, !tbaa !22, !noalias !402
  %i.onu = fadd reassoc nsz arcp contract afn float %i.ont, %i.ons
  store float %i.onu, ptr %.0895.lcssa.i, align 4, !tbaa !22, !noalias !402
  %i.onv = load float, ptr %.1908.lcssa.i, align 4, !tbaa !22, !noalias !402
  %i.onw = load float, ptr %.1902.lcssa.i, align 4, !tbaa !22, !noalias !402
  %i.onx = load float, ptr %.1904.lcssa.i, align 4, !tbaa !22, !noalias !402
  %i.ony = load float, ptr %.1900.lcssa.i, align 4, !tbaa !22, !noalias !402
  %i.onz = fadd reassoc nsz arcp contract afn float %i.onv, %i.onx
  %i.ooa = fadd reassoc nsz arcp contract afn float %i.onw, %i.ony
  %i.oob = fsub reassoc nsz arcp contract afn float %i.onz, %i.ooa
  %i.ooc = fmul reassoc nsz arcp contract afn float %i.oob, 5.000000e-01
  store float %i.ooc, ptr %.1906.lcssa.i, align 4, !tbaa !22, !noalias !402
  br label %bb.pw

bb.pw:                                            ; preds = %bb.pv, %._crit_edge1102.i, %bb.pt, %._crit_edge1121.i
  %indvars.iv.next1283.i = add nuw nsw i64 %indvars.iv1282.i, 1 ; 2 uses
  %exitcond1140.not = icmp eq i64 %indvars.iv.next1283.i, %i.lwk
  %indvar.next3948 = add i64 %indvar3947, 1
  br i1 %exitcond1140.not, label %._crit_edge1130.i, label %.lr.ph1129.i

.preheader1020.i:                                 ; preds = %._crit_edge1142.i, %.preheader1021.i
  br i1 %i.lus, label %.lr.ph1167.i, label %._crit_edge1168.i

.lr.ph1167.i:                                     ; preds = %.preheader1020.i
  %i.ood = add nuw nsw i32 %i.nmr, 2              ; 3 uses
  %i.ooe = add nsw i32 %i.nmt, -2                 ; 4 uses
  %i.oof = sext i32 %i.ooe to i64                 ; 3 uses
  br i1 %i.lvz, label %.lr.ph1150.i.preheader.preheader, label %._crit_edge1168.i

.lr.ph1150.i.preheader.preheader:                 ; preds = %.lr.ph1167.i
  %i.oog = zext nneg i32 %i.nmr to i64            ; 2 uses
  %i.ooh = add nsw i32 %.neg.i554, 6
  %i.ooi = add i32 %i.ooh, %i.lyf                 ; 2 uses
  %i.ooj = sext i32 %i.ooi to i64
  %6 = add nsw i64 %i.ooj, 4611686018427387901
  %i.ook = zext nneg i32 %i.nmr to i64            ; 2 uses
  %7 = sext i32 %i.ooi to i64
  %8 = add nsw i64 %7, 4611686018427387901
  %i.ool = zext nneg i32 %i.nmr to i64            ; 2 uses
  %i.oom = add nsw i32 %.neg.i554, 6
  %i.oon = add i32 %i.oom, %i.lyf
  %i.ooo = sext i32 %i.oon to i64
  %9 = add nsw i64 %i.ooo, 4611686018427387901
  %i.oop = add i32 %.neg.i554, %i.lyf
  %i.ooq = add i32 %i.oop, 6
  %i.oor = sext i32 %i.ooq to i64
  %10 = add nsw i64 %i.oor, -3
  %i.oos = add i32 %.neg.i554, %i.lyf
  %i.oot = add i32 %i.oos, 6
  %i.oou = sext i32 %i.oot to i64
  %11 = add nsw i64 %i.oou, -3
  %i.oov = add i32 %.neg.i554, %i.lyf
  %i.oow = add i32 %i.oov, 6
  %i.oox = sext i32 %i.oow to i64
  %12 = add nsw i64 %i.oox, -3
  br label %.lr.ph1150.i.preheader

.preheader1016.i:                                 ; preds = %.preheader1016.i.preheader, %._crit_edge1142.i
  %indvars.iv1288.i = phi i64 [ %indvars.iv.next1289.i, %._crit_edge1142.i ], [ 4, %.preheader1016.i.preheader ] ; 3 uses
  %i.ooy = mul nuw nsw i64 %indvars.iv1288.i, 136 ; 5 uses
  %indvars.iv1288.tr.i = trunc i64 %indvars.iv1288.i to i32
  %i.ooz = shl i32 %indvars.iv1288.tr.i, 1
  %i.opa = and i32 %i.ooz, 14                     ; 5 uses
  br i1 %i.nsp, label %.epil.preheader4742, label %.preheader1016.i.new

.preheader1016.i.new:                             ; preds = %.preheader1016.i
  %i.opb = shl nuw nsw i32 %i.opa, 1
  %i.opc = lshr i32 %.fr1063, %i.opb
  %i.opd = and i32 %i.opc, 3
  %i.ope = zext nneg i32 %i.opd to i64
  %i.opf = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ope
  %i.opg = load ptr, ptr %i.opf, align 8, !tbaa !407, !noalias !408
  %i.oph = shl nuw nsw i32 %i.opa, 1
  %i.opi = or disjoint i32 %i.oph, 2
  %i.opj = lshr i32 %.fr1063, %i.opi
  %i.opk = and i32 %i.opj, 3
  %i.opl = zext nneg i32 %i.opk to i64
  %i.opm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.opl
  %i.opn = load ptr, ptr %i.opm, align 8, !tbaa !407, !noalias !408
  %i.opo = shl nuw nsw i32 %i.opa, 1
  %i.opp = lshr i32 %.fr1063, %i.opo
  %i.opq = and i32 %i.opp, 3
  %i.opr = zext nneg i32 %i.opq to i64
  %i.ops = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.opr
  %i.opt = load ptr, ptr %i.ops, align 8, !tbaa !407, !noalias !408
  %i.opu = shl nuw nsw i32 %i.opa, 1
  %i.opv = or disjoint i32 %i.opu, 2
  %i.opw = lshr i32 %.fr1063, %i.opv
  %i.opx = and i32 %i.opw, 3
  %i.opy = zext nneg i32 %i.opx to i64
  %i.opz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.opy
  %i.oqa = load ptr, ptr %i.opz, align 8, !tbaa !407, !noalias !408
  br label %bb.py

._crit_edge1142.i.unr-lcssa:                      ; preds = %bb.py
  br i1 %lcmp.mod4747.not, label %._crit_edge1142.i, label %.epil.preheader4742

.epil.preheader4742:                              ; preds = %._crit_edge1142.i.unr-lcssa, %.preheader1016.i
  %indvars.iv1285.i.epil.init = phi i64 [ 4, %.preheader1016.i ], [ %indvars.iv.next1286.i.3, %._crit_edge1142.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4748)
  br label %bb.px

bb.px:                                            ; preds = %bb.px, %.epil.preheader4742
  %indvars.iv1285.i.epil = phi i64 [ %indvars.iv1285.i.epil.init, %.epil.preheader4742 ], [ %indvars.iv.next1286.i.epil, %bb.px ] ; 3 uses
  %epil.iter4746 = phi i64 [ 0, %.epil.preheader4742 ], [ %epil.iter4746.next, %bb.px ]
  %i.oqb = add nuw nsw i64 %indvars.iv1285.i.epil, %i.ooy ; 2 uses
  %i.oqc = trunc nuw nsw i64 %indvars.iv1285.i.epil to i32
  %i.oqd = and i32 %i.oqc, 1
  %i.oqe = or disjoint i32 %i.oqd, %i.opa
  %i.oqf = shl nuw nsw i32 %i.oqe, 1
  %i.oqg = lshr i32 %.fr1063, %i.oqf
  %i.oqh = and i32 %i.oqg, 3
  %i.oqi = getelementptr inbounds nuw [4 x i8], ptr %i.lum, i64 %i.oqb
  %i.oqj = load float, ptr %i.oqi, align 4, !tbaa !22, !noalias !402
  %i.oqk = zext nneg i32 %i.oqh to i64
  %i.oql = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.oqk
  %i.oqm = load ptr, ptr %i.oql, align 8, !tbaa !407, !noalias !408
  %i.oqn = getelementptr inbounds nuw [4 x i8], ptr %i.oqm, i64 %i.oqb
  store float %i.oqj, ptr %i.oqn, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1286.i.epil = add nuw nsw i64 %indvars.iv1285.i.epil, 1
  %epil.iter4746.next = add i64 %epil.iter4746, 1 ; 2 uses
  %epil.iter4746.cmp.not = icmp eq i64 %epil.iter4746.next, %xtraiter4745
  br i1 %epil.iter4746.cmp.not, label %._crit_edge1142.i, label %bb.px, !llvm.loop !465

._crit_edge1142.i:                                ; preds = %bb.px, %._crit_edge1142.i.unr-lcssa
  %indvars.iv.next1289.i = add nuw nsw i64 %indvars.iv1288.i, 1 ; 2 uses
  %exitcond1146.not = icmp eq i64 %indvars.iv.next1289.i, %smax1145
  br i1 %exitcond1146.not, label %.preheader1020.i, label %.preheader1016.i

bb.py:                                            ; preds = %bb.py, %.preheader1016.i.new
  %indvars.iv1285.i = phi i64 [ 4, %.preheader1016.i.new ], [ %indvars.iv.next1286.i.3, %bb.py ] ; 5 uses
  %niter4750 = phi i64 [ 0, %.preheader1016.i.new ], [ %niter4750.next.3, %bb.py ]
  %i.oqo = add nuw nsw i64 %indvars.iv1285.i, %i.ooy ; 2 uses
  %i.oqp = getelementptr inbounds nuw [4 x i8], ptr %i.lum, i64 %i.oqo
  %i.oqq = load float, ptr %i.oqp, align 16, !tbaa !22, !noalias !402
  %i.oqr = getelementptr inbounds nuw [4 x i8], ptr %i.opg, i64 %i.oqo
  store float %i.oqq, ptr %i.oqr, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1286.i = or disjoint i64 %indvars.iv1285.i, 1
  %i.oqs = add nuw nsw i64 %indvars.iv.next1286.i, %i.ooy ; 2 uses
  %i.oqt = getelementptr inbounds nuw [4 x i8], ptr %i.lum, i64 %i.oqs
  %i.oqu = load float, ptr %i.oqt, align 4, !tbaa !22, !noalias !402
  %i.oqv = getelementptr inbounds nuw [4 x i8], ptr %i.opn, i64 %i.oqs
  store float %i.oqu, ptr %i.oqv, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1286.i.1 = or disjoint i64 %indvars.iv1285.i, 2
  %i.oqw = add nuw nsw i64 %indvars.iv.next1286.i.1, %i.ooy ; 2 uses
  %i.oqx = getelementptr inbounds nuw [4 x i8], ptr %i.lum, i64 %i.oqw
  %i.oqy = load float, ptr %i.oqx, align 8, !tbaa !22, !noalias !402
  %i.oqz = getelementptr inbounds nuw [4 x i8], ptr %i.opt, i64 %i.oqw
  store float %i.oqy, ptr %i.oqz, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1286.i.2 = or disjoint i64 %indvars.iv1285.i, 3
  %i.ora = add nuw nsw i64 %indvars.iv.next1286.i.2, %i.ooy ; 2 uses
  %i.orb = getelementptr inbounds nuw [4 x i8], ptr %i.lum, i64 %i.ora
  %i.orc = load float, ptr %i.orb, align 4, !tbaa !22, !noalias !402
  %i.ord = getelementptr inbounds nuw [4 x i8], ptr %i.oqa, i64 %i.ora
  store float %i.orc, ptr %i.ord, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1286.i.3 = add nuw nsw i64 %indvars.iv1285.i, 4 ; 2 uses
  %niter4750.next.3 = add i64 %niter4750, 4       ; 2 uses
  %niter4750.ncmp.3 = icmp eq i64 %niter4750.next.3, %unroll_iter4749
  br i1 %niter4750.ncmp.3, label %._crit_edge1142.i.unr-lcssa, label %bb.py

._crit_edge1168.i:                                ; preds = %._crit_edge1165.i.loopexit, %.lr.ph1167.i, %.preheader1020.i
  %i.ore = select i1 %i.nmq, i32 4, i32 8         ; 3 uses
  %i.orf = or disjoint i32 %i.ore, %i.lyb         ; 7 uses
  %.neg951.i = select i1 %i.nms, i32 -4, i32 -8   ; 2 uses
  %i.org = add nsw i32 %i.lyd, %.neg951.i         ; 3 uses
  br i1 %i.lwd, label %.lr.ph1182.i, label %._crit_edge1183.split.i

.lr.ph1182.i:                                     ; preds = %._crit_edge1168.i
  %i.orh = icmp slt i32 %i.orf, %i.org
  %i.ori = load ptr, ptr @lmmse_gamma_out, align 8, !noalias !408 ; 7 uses
  %i.orj = icmp eq ptr %i.ori, null
  br i1 %i.orh, label %.lr.ph1175.i.preheader, label %._crit_edge1183.split.i

.lr.ph1175.i.preheader:                           ; preds = %.lr.ph1182.i
  %reass.sub = sub nsw i32 %i.orf, %i.lyb
  %.reass1178.i = add nsw i32 %reass.sub, 4
  %i.ork = add i32 %.neg951.i, %i.lyd             ; 2 uses
  %i.orl = add i32 %i.ork, %i.lxw
  %i.orm = sub i32 %i.orl, %i.ore                 ; 2 uses
  %i.orn = zext i32 %i.orm to i64
  %i.oro = add nuw nsw i64 %i.orn, 1              ; 2 uses
  %min.iters.check3700 = icmp ult i32 %i.orm, 7
  %n.vec3702 = and i64 %i.oro, 8589934584         ; 5 uses
  %i.orp = trunc i64 %n.vec3702 to i32
  %i.orq = add i32 %i.orf, %i.orp
  %i.orr = shl nuw nsw i64 %n.vec3702, 2          ; 3 uses
  %i.ors = shl nuw nsw i64 %n.vec3702, 4
  %cmp.n3735 = icmp eq i64 %i.oro, %n.vec3702
  %i.ort = add i32 %i.ork, %i.lxx
  %i.oru = sub i32 %i.ort, %i.ore                 ; 2 uses
  %i.orv = zext i32 %i.oru to i64
  %i.orw = add nuw nsw i64 %i.orv, 1              ; 2 uses
  %min.iters.check3677 = icmp ult i32 %i.oru, 7
  %n.vec3679 = and i64 %i.orw, 8589934584         ; 5 uses
  %i.orx = trunc i64 %n.vec3679 to i32
  %i.ory = add i32 %i.orf, %i.orx
  %i.orz = shl nuw nsw i64 %n.vec3679, 2          ; 3 uses
  %i.osa = shl nuw nsw i64 %n.vec3679, 4
  %cmp.n3693 = icmp eq i64 %i.orw, %n.vec3679
  br label %.lr.ph1175.i

.lr.ph1150.i.preheader:                           ; preds = %.lr.ph1150.i.preheader.preheader, %._crit_edge1165.i.loopexit
  %.08901166.i = phi i32 [ %i.phm, %._crit_edge1165.i.loopexit ], [ 0, %.lr.ph1150.i.preheader.preheader ]
  br label %.lr.ph1150.i

.lr.ph1150.i:                                     ; preds = %.lr.ph1150.i.preheader, %._crit_edge1147.i
  %indvar3890 = phi i64 [ 0, %.lr.ph1150.i.preheader ], [ %indvar.next3891, %._crit_edge1147.i ] ; 2 uses
  %indvars.iv1294.i = phi i64 [ %i.lwf, %.lr.ph1150.i.preheader ], [ %indvars.iv.next1295.i, %._crit_edge1147.i ] ; 3 uses
  %i.osb = mul i64 %indvar3890, 544               ; 4 uses
  %scevgep3892.a = getelementptr i8, ptr %i.lww, i64 %i.osb
  %scevgep3894.a = getelementptr i8, ptr %i.lwy, i64 %i.osb
  %indvars.iv1294.tr.i = trunc i64 %indvars.iv1294.i to i32
  %i.osc = shl i32 %indvars.iv1294.tr.i, 1
  %i.osd = and i32 %i.osc, 14                     ; 2 uses
  %i.ose = shl nuw nsw i32 %i.osd, 1
  %i.osf = lshr i32 %.fr1063, %i.ose              ; 3 uses
  %i.osg = and i32 %i.osf, 1                      ; 2 uses
  %i.osh = or disjoint i32 %i.osg, %i.ood         ; 2 uses
  %i.osi = icmp slt i32 %i.osh, %i.ooe
  br i1 %i.osi, label %.lr.ph1146.i, label %._crit_edge1147.i

.lr.ph1146.i:                                     ; preds = %.lr.ph1150.i
  %i.osj = or disjoint i32 %i.osg, %i.osd
  %i.osk = shl nuw nsw i32 %i.osj, 1
  %i.osl = lshr i32 %.fr1063, %i.osk
  %i.osm = and i32 %i.osl, 3
  %i.osn = mul nuw nsw i64 %indvars.iv1294.i, 136 ; 2 uses
  %i.oso = getelementptr inbounds nuw [4 x i8], ptr %i.lui, i64 %i.osn ; 2 uses
  %i.osp = zext nneg i32 %i.osm to i64
  %i.osq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.osp
  %i.osr = load ptr, ptr %i.osq, align 8, !tbaa !407, !noalias !408 ; 3 uses
  %i.oss = getelementptr inbounds nuw [4 x i8], ptr %i.osr, i64 %i.osn ; 2 uses
  %i.ost = zext nneg i32 %i.osh to i64            ; 5 uses
  %i.osu = and i32 %i.osf, 1
  %13 = or disjoint i32 %i.nmr, %i.osu
  %14 = zext nneg i32 %13 to i64
  %i.osv = sub nsw i64 %10, %14                   ; 2 uses
  %i.osw = lshr i64 %i.osv, 1
  %i.osx = add nuw i64 %i.osw, 1                  ; 2 uses
  %min.iters.check3903 = icmp ult i64 %i.osv, 8
  br i1 %min.iters.check3903, label %scalar.ph3902.preheader, label %vector.memcheck3889

scalar.ph3902.preheader:                          ; preds = %vector.body3909, %vector.memcheck3889, %.lr.ph1146.i
  %indvars.iv1291.i.ph = phi i64 [ %i.ost, %vector.memcheck3889 ], [ %i.ost, %.lr.ph1146.i ], [ %i.ots, %vector.body3909 ]
  br label %scalar.ph3902

vector.memcheck3889:                              ; preds = %.lr.ph1146.i
  %i.osy = and i32 %i.osf, 1
  %i.osz = zext nneg i32 %i.osy to i64            ; 2 uses
  %i.ota = or disjoint i64 %i.ool, %i.osz
  %i.otb = shl nuw nsw i64 %i.ota, 2              ; 4 uses
  %scevgep3893.a = getelementptr i8, ptr %scevgep3892.a, i64 %i.otb
  %i.otc = or disjoint i64 %i.ool, %i.osz
  %i.otd = sub nsw i64 %9, %i.otc
  %i.ote = shl i64 %i.otd, 2
  %i.otf = and i64 %i.ote, -8                     ; 2 uses
  %i.otg = getelementptr i8, ptr %scevgep3894.a, i64 %i.otf
  %scevgep3896 = getelementptr i8, ptr %i.otg, i64 %i.otb
  %i.oth = getelementptr i8, ptr %i.osr, i64 %i.lwo
  %i.oti = getelementptr i8, ptr %i.oth, i64 8
  %i.otj = getelementptr i8, ptr %i.oti, i64 %i.osb
  %scevgep3897 = getelementptr i8, ptr %i.otj, i64 %i.otb
  %i.otk = getelementptr i8, ptr %i.osr, i64 %i.lwo
  %i.otl = getelementptr i8, ptr %i.otk, i64 2188
  %i.otm = getelementptr i8, ptr %i.otl, i64 %i.osb
  %i.otn = getelementptr i8, ptr %i.otm, i64 %i.otf
  %scevgep3898 = getelementptr i8, ptr %i.otn, i64 %i.otb
  %bound03899 = icmp ult ptr %scevgep3893.a, %scevgep3898
  %bound13900 = icmp ult ptr %scevgep3897, %scevgep3896
  %found.conflict3901 = and i1 %bound03899, %bound13900
  br i1 %found.conflict3901, label %scalar.ph3902.preheader, label %vector.ph3904

vector.ph3904:                                    ; preds = %vector.memcheck3889
  %i.oto = and i64 %i.osx, 3                      ; 2 uses
  %i.otp = icmp eq i64 %i.oto, 0
  %i.otq = select i1 %i.otp, i64 4, i64 %i.oto
  %n.vec3905 = sub i64 %i.osx, %i.otq             ; 2 uses
  %i.otr = shl i64 %n.vec3905, 1
  %i.ots = add i64 %i.otr, %i.ost
  %broadcast.splatinsert3906 = insertelement <4 x i64> poison, i64 %i.ost, i64 0
  %broadcast.splat3907 = shufflevector <4 x i64> %broadcast.splatinsert3906, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction3908 = add nuw nsw <4 x i64> %broadcast.splat3907, <i64 0, i64 2, i64 4, i64 6>
  %invariant.gep4871 = getelementptr [4 x i8], ptr %i.oss, i64 %i.ost
  br label %vector.body3909

vector.body3909:                                  ; preds = %vector.body3909, %vector.ph3904
  %index3910 = phi i64 [ 0, %vector.ph3904 ], [ %index.next3937, %vector.body3909 ] ; 2 uses
  %vec.ind3911 = phi <4 x i64> [ %induction3908, %vector.ph3904 ], [ %vec.ind.next3938, %vector.body3909 ] ; 2 uses
  %wide.gep3912 = getelementptr inbounds nuw [4 x i8], ptr %i.oso, <4 x i64> %vec.ind3911 ; 2 uses
  %i.ott = extractelement <4 x ptr> %wide.gep3912, i64 0 ; 4 uses
  %.idx4567 = shl nuw i64 %index3910, 3
  %gep4872 = getelementptr i8, ptr %invariant.gep4871, i64 %.idx4567 ; 7 uses
  %i.otu = getelementptr inbounds i8, ptr %gep4872, i64 -8
  %wide.vec3913 = load <8 x float>, ptr %i.otu, align 4, !tbaa !22, !alias.scope !466, !noalias !402
  %strided.vec3914.a = shufflevector <8 x float> %wide.vec3913, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.otv = getelementptr inbounds i8, ptr %gep4872, i64 -4
  %wide.vec3915.a = load <8 x float>, ptr %i.otv, align 4, !tbaa !22, !alias.scope !466, !noalias !402 ; 2 uses
  %strided.vec3916.a = shufflevector <8 x float> %wide.vec3915.a, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec3917 = shufflevector <8 x float> %wide.vec3915.a, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 5 uses
  %i.otw = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3914.a, %strided.vec3917
  %i.otx = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.otw)
  %i.oty = getelementptr inbounds nuw i8, ptr %i.ott, i64 4
  %wide.vec3918 = load <8 x float>, ptr %i.oty, align 4, !tbaa !22, !alias.scope !469, !noalias !402
  %strided.vec3919 = shufflevector <8 x float> %wide.vec3918, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.otz = getelementptr inbounds i8, ptr %i.ott, i64 -4
  %wide.vec3920 = load <8 x float>, ptr %i.otz, align 4, !tbaa !22, !alias.scope !469, !noalias !402
  %strided.vec3921.a = shufflevector <8 x float> %wide.vec3920, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.oua = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3919, %strided.vec3921.a
  %i.oub = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.oua)
  %i.ouc = fadd reassoc nsz arcp contract afn <4 x float> %i.oub, splat (float 1.000000e+00) ; 2 uses
  %i.oud = fadd reassoc nsz arcp contract afn <4 x float> %i.ouc, %i.otx
  %i.oue = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.oud ; 2 uses
  %i.ouf = getelementptr inbounds nuw i8, ptr %gep4872, i64 4
  %wide.vec3922.a = load <8 x float>, ptr %i.ouf, align 4, !tbaa !22, !alias.scope !466, !noalias !402 ; 2 uses
  %strided.vec3923.a = shufflevector <8 x float> %wide.vec3922.a, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec3924 = shufflevector <8 x float> %wide.vec3922.a, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.oug = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3924, %strided.vec3917
  %i.ouh = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.oug)
  %i.oui = fadd reassoc nsz arcp contract afn <4 x float> %i.ouc, %i.ouh
  %i.ouj = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.oui ; 2 uses
  %i.ouk = getelementptr inbounds i8, ptr %gep4872, i64 -1088
  %wide.vec3925 = load <8 x float>, ptr %i.ouk, align 4, !tbaa !22, !alias.scope !466, !noalias !402
  %strided.vec3926 = shufflevector <8 x float> %wide.vec3925, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.oul = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3926, %strided.vec3917
  %i.oum = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.oul)
  %i.oun = getelementptr inbounds nuw i8, ptr %i.ott, i64 544
  %wide.vec3927 = load <8 x float>, ptr %i.oun, align 4, !tbaa !22, !alias.scope !469, !noalias !402
  %strided.vec3928 = shufflevector <8 x float> %wide.vec3927, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.ouo = getelementptr inbounds i8, ptr %i.ott, i64 -544
  %wide.vec3929 = load <8 x float>, ptr %i.ouo, align 4, !tbaa !22, !alias.scope !469, !noalias !402
  %strided.vec3930 = shufflevector <8 x float> %wide.vec3929, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.oup = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3928, %strided.vec3930
  %i.ouq = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.oup)
  %i.our = fadd reassoc nsz arcp contract afn <4 x float> %i.ouq, splat (float 1.000000e+00) ; 2 uses
  %i.ous = fadd reassoc nsz arcp contract afn <4 x float> %i.our, %i.oum
  %i.out = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.ous ; 2 uses
  %i.ouu = getelementptr inbounds nuw i8, ptr %gep4872, i64 1088
  %wide.vec3931 = load <8 x float>, ptr %i.ouu, align 4, !tbaa !22, !alias.scope !466, !noalias !402
  %strided.vec3932 = shufflevector <8 x float> %wide.vec3931, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ouv = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3932, %strided.vec3917
  %i.ouw = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ouv)
  %i.oux = fadd reassoc nsz arcp contract afn <4 x float> %i.our, %i.ouw
  %i.ouy = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.oux ; 2 uses
  %i.ouz = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3921.a, %strided.vec3916.a
  %i.ova = fmul reassoc nsz arcp contract afn <4 x float> %i.ouz, %i.oue
  %i.ovb = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3919, %strided.vec3923.a
  %i.ovc = fmul reassoc nsz arcp contract afn <4 x float> %i.ovb, %i.ouj
  %i.ovd = fadd reassoc nsz arcp contract afn <4 x float> %i.ovc, %i.ova
  %i.ove = getelementptr inbounds i8, ptr %gep4872, i64 -544
  %wide.vec3933 = load <8 x float>, ptr %i.ove, align 4, !tbaa !22, !alias.scope !466, !noalias !402
  %strided.vec3934 = shufflevector <8 x float> %wide.vec3933, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ovf = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3930, %strided.vec3934
  %i.ovg = fmul reassoc nsz arcp contract afn <4 x float> %i.ovf, %i.out
  %i.ovh = fadd reassoc nsz arcp contract afn <4 x float> %i.ovd, %i.ovg
  %i.ovi = getelementptr inbounds nuw i8, ptr %gep4872, i64 544
  %wide.vec3935 = load <8 x float>, ptr %i.ovi, align 4, !tbaa !22, !alias.scope !466, !noalias !402
  %strided.vec3936 = shufflevector <8 x float> %wide.vec3935, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ovj = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3928, %strided.vec3936
  %i.ovk = fmul reassoc nsz arcp contract afn <4 x float> %i.ovj, %i.ouy
  %i.ovl = fadd reassoc nsz arcp contract afn <4 x float> %i.ovh, %i.ovk
  %i.ovm = fadd reassoc nsz arcp contract afn <4 x float> %i.ouj, %i.oue
  %i.ovn = fadd reassoc nsz arcp contract afn <4 x float> %i.ovm, %i.out
  %i.ovo = fadd reassoc nsz arcp contract afn <4 x float> %i.ovn, %i.ouy
  %i.ovp = fdiv reassoc nsz arcp contract afn <4 x float> %i.ovl, %i.ovo
  %i.ovq = fadd reassoc nsz arcp contract afn <4 x float> %i.ovp, %strided.vec3917
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.ovq, <4 x ptr> align 4 %wide.gep3912, <4 x i1> splat (i1 true)), !tbaa !22, !alias.scope !469, !noalias !471
  %index.next3937 = add nuw i64 %index3910, 4     ; 2 uses
  %vec.ind.next3938 = add nuw nsw <4 x i64> %vec.ind3911, splat (i64 8)
  %i.ovr = icmp eq i64 %index.next3937, %n.vec3905
  br i1 %i.ovr, label %scalar.ph3902.preheader, label %vector.body3909, !llvm.loop !472

._crit_edge1147.i:                                ; preds = %scalar.ph3902, %.lr.ph1150.i
  %indvars.iv.next1295.i = add nuw nsw i64 %indvars.iv1294.i, 1 ; 2 uses
  %exitcond1150.not = icmp eq i64 %indvars.iv.next1295.i, %i.lwm
  %indvar.next3891 = add i64 %indvar3890, 1
  br i1 %exitcond1150.not, label %.lr.ph1158.i, label %.lr.ph1150.i

scalar.ph3902:                                    ; preds = %scalar.ph3902.preheader, %scalar.ph3902
  %indvars.iv1291.i = phi i64 [ %indvars.iv.next1292.i, %scalar.ph3902 ], [ %indvars.iv1291.i.ph, %scalar.ph3902.preheader ] ; 3 uses
  %i.ovs = getelementptr inbounds nuw [4 x i8], ptr %i.oso, i64 %indvars.iv1291.i ; 5 uses
  %i.ovt = getelementptr inbounds nuw [4 x i8], ptr %i.oss, i64 %indvars.iv1291.i ; 9 uses
  %i.ovu = getelementptr inbounds i8, ptr %i.ovt, i64 -4
  %i.ovv = getelementptr inbounds nuw i8, ptr %i.ovt, i64 4
  %i.ovw = getelementptr inbounds nuw i8, ptr %i.ovs, i64 544
  %i.ovx = getelementptr inbounds i8, ptr %i.ovs, i64 -544
  %i.ovy = getelementptr inbounds i8, ptr %i.ovs, i64 -4
  %i.ovz = getelementptr inbounds nuw i8, ptr %i.ovs, i64 4
  %i.owa = load float, ptr %i.ovw, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.owb = load float, ptr %i.ovx, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.owc = load float, ptr %i.ovy, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.owd = load float, ptr %i.ovz, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.owe = fsub reassoc nsz arcp contract afn float %i.owa, %i.owb
  %i.owf = fsub reassoc nsz arcp contract afn float %i.owd, %i.owc
  %i.owg = insertelement <2 x float> poison, float %i.owf, i64 0
  %i.owh = insertelement <2 x float> %i.owg, float %i.owe, i64 1
  %i.owi = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.owh)
  %i.owj = shufflevector <2 x float> %i.owi, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.owk = fadd reassoc nsz arcp contract afn <4 x float> %i.owj, splat (float 1.000000e+00)
  %i.owl = getelementptr inbounds nuw i8, ptr %i.ovt, i64 544
  %i.owm = getelementptr inbounds i8, ptr %i.ovt, i64 -544
  %i.own = load float, ptr %i.ovv, align 4, !tbaa !22, !noalias !402
  %i.owo = load float, ptr %i.ovt, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.owp = load float, ptr %i.ovu, align 4, !tbaa !22, !noalias !402
  %i.owq = load float, ptr %i.owl, align 4, !tbaa !22, !noalias !402
  %i.owr = load float, ptr %i.owm, align 4, !tbaa !22, !noalias !402
  %i.ows = getelementptr inbounds nuw i8, ptr %i.ovt, i64 1088
  %i.owt = getelementptr inbounds i8, ptr %i.ovt, i64 -1088
  %i.owu = getelementptr inbounds i8, ptr %i.ovt, i64 -8
  %i.owv = getelementptr inbounds nuw i8, ptr %i.ovt, i64 8
  %i.oww = load float, ptr %i.ows, align 4, !tbaa !22, !noalias !402
  %i.owx = load float, ptr %i.owt, align 4, !tbaa !22, !noalias !402
  %i.owy = load float, ptr %i.owu, align 4, !tbaa !22, !noalias !402
  %i.owz = load float, ptr %i.owv, align 4, !tbaa !22, !noalias !402
  %i.oxa = insertelement <4 x float> poison, float %i.owz, i64 0
  %i.oxb = insertelement <4 x float> %i.oxa, float %i.owy, i64 1
  %i.oxc = insertelement <4 x float> %i.oxb, float %i.owx, i64 2
  %i.oxd = insertelement <4 x float> %i.oxc, float %i.oww, i64 3
  %i.oxe = insertelement <4 x float> poison, float %i.owo, i64 0
  %i.oxf = shufflevector <4 x float> %i.oxe, <4 x float> poison, <4 x i32> zeroinitializer
  %i.oxg = fsub reassoc nsz arcp contract afn <4 x float> %i.oxd, %i.oxf
  %i.oxh = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.oxg)
  %i.oxi = fadd reassoc nsz arcp contract afn <4 x float> %i.owk, %i.oxh
  %i.oxj = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.oxi ; 2 uses
  %i.oxk = fsub reassoc nsz arcp contract afn float %i.owa, %i.owq
  %i.oxl = fsub reassoc nsz arcp contract afn float %i.owb, %i.owr
  %i.oxm = fsub reassoc nsz arcp contract afn float %i.owc, %i.owp
  %i.oxn = fsub reassoc nsz arcp contract afn float %i.owd, %i.own
  %i.oxo = insertelement <4 x float> poison, float %i.oxn, i64 0
  %i.oxp = insertelement <4 x float> %i.oxo, float %i.oxm, i64 1
  %i.oxq = insertelement <4 x float> %i.oxp, float %i.oxl, i64 2
  %i.oxr = insertelement <4 x float> %i.oxq, float %i.oxk, i64 3
  %i.oxs = fmul reassoc nsz arcp contract afn <4 x float> %i.oxr, %i.oxj
  %i.oxt = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.oxs)
  %i.oxu = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.oxj)
  %i.oxv = fdiv reassoc nsz arcp contract afn float %i.oxt, %i.oxu
  %i.oxw = fadd reassoc nsz arcp contract afn float %i.oxv, %i.owo
  store float %i.oxw, ptr %i.ovs, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1292.i = add nuw nsw i64 %indvars.iv1291.i, 2 ; 2 uses
  %i.oxx = icmp slt i64 %indvars.iv.next1292.i, %i.oof
  br i1 %i.oxx, label %scalar.ph3902, label %._crit_edge1147.i, !llvm.loop !473

.lr.ph1158.i:                                     ; preds = %._crit_edge1147.i, %._crit_edge1156.i
  %indvar3803 = phi i64 [ %indvar.next3804, %._crit_edge1156.i ], [ 0, %._crit_edge1147.i ] ; 2 uses
  %indvars.iv1300.i = phi i64 [ %indvars.iv.next1301.i, %._crit_edge1156.i ], [ %i.lwf, %._crit_edge1147.i ] ; 3 uses
  %i.oxy = mul i64 %indvar3803, 544               ; 4 uses
  %i.oxz = add i64 %i.lwp, %i.oxy
  %i.oya = add i64 %i.lwq, %i.oxy
  %scevgep3810.a = getelementptr i8, ptr %i.lxa, i64 %i.oxy
  %scevgep3812 = getelementptr i8, ptr %i.lxc, i64 %i.oxy
  %indvars.iv1300.tr.i = trunc i64 %indvars.iv1300.i to i32
  %i.oyb = shl i32 %indvars.iv1300.tr.i, 1
  %i.oyc = and i32 %i.oyb, 14                     ; 2 uses
  %.tr.i972.i = shl nuw nsw i32 %i.oyc, 1
  %i.oyd = or disjoint i32 %.tr.i972.i, 2
  %i.oye = lshr i32 %.fr1063, %i.oyd              ; 3 uses
  %i.oyf = and i32 %i.oye, 1                      ; 2 uses
  %i.oyg = or disjoint i32 %i.oyf, %i.ood         ; 2 uses
  %i.oyh = icmp slt i32 %i.oyg, %i.ooe
  br i1 %i.oyh, label %.preheader.lr.ph.i559, label %._crit_edge1156.i

.preheader.lr.ph.i559:                            ; preds = %.lr.ph1158.i
  %i.oyi = or disjoint i32 %i.oyf, %i.oyc
  %i.oyj = shl nuw nsw i32 %i.oyi, 1
  %i.oyk = xor i32 %i.oyj, 2
  %i.oyl = lshr i32 %.fr1063, %i.oyk
  %i.oym = and i32 %i.oyl, 3                      ; 2 uses
  %i.oyn = mul nuw nsw i64 %indvars.iv1300.i, 136 ; 3 uses
  %i.oyo = getelementptr inbounds nuw [4 x i8], ptr %i.lui, i64 %i.oyn ; 2 uses
  %i.oyp = zext nneg i32 %i.oym to i64
  %i.oyq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.oyp
  %i.oyr = zext nneg i32 %i.oyg to i64            ; 5 uses
  %i.oys = load ptr, ptr %i.oyq, align 8, !tbaa !407, !noalias !408 ; 3 uses
  %i.oyt = getelementptr inbounds nuw [4 x i8], ptr %i.oys, i64 %i.oyn ; 2 uses
  %i.oyu = sub nsw i32 2, %i.oym
  %i.oyv = sext i32 %i.oyu to i64
  %i.oyw = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.oyv
  %i.oyx = load ptr, ptr %i.oyw, align 8, !tbaa !407, !noalias !408 ; 3 uses
  %i.oyy = getelementptr inbounds nuw [4 x i8], ptr %i.oyx, i64 %i.oyn ; 2 uses
  %i.oyz = and i32 %i.oye, 1
  %15 = or disjoint i32 %i.nmr, %i.oyz
  %16 = zext nneg i32 %15 to i64
  %i.oza = sub nsw i64 %11, %16                   ; 2 uses
  %i.ozb = lshr i64 %i.oza, 1
  %i.ozc = add nuw i64 %i.ozb, 1                  ; 2 uses
  %min.iters.check3826 = icmp ult i64 %i.oza, 8
  br i1 %min.iters.check3826, label %.preheader.i560.preheader, label %vector.memcheck3802

vector.memcheck3802:                              ; preds = %.preheader.lr.ph.i559
  %i.ozd = and i32 %i.oye, 1
  %i.oze = zext nneg i32 %i.ozd to i64            ; 2 uses
  %i.ozf = or disjoint i64 %i.ook, %i.oze
  %i.ozg = shl nuw nsw i64 %i.ozf, 2              ; 4 uses
  %i.ozh = add i64 %i.oxz, %i.ozg                 ; 2 uses
  %scevgep3805.a = getelementptr i8, ptr %i.oys, i64 %i.ozh ; 2 uses
  %i.ozi = or disjoint i64 %i.ook, %i.oze
  %i.ozj = sub nsw i64 %8, %i.ozi
  %i.ozk = shl i64 %i.ozj, 2
  %i.ozl = and i64 %i.ozk, -8                     ; 2 uses
  %i.ozm = add i64 %i.oya, %i.ozl
  %i.ozn = add i64 %i.ozm, %i.ozg                 ; 2 uses
  %scevgep3807.a = getelementptr i8, ptr %i.oys, i64 %i.ozn ; 2 uses
  %scevgep3808 = getelementptr i8, ptr %i.oyx, i64 %i.ozh ; 2 uses
  %scevgep3809.a = getelementptr i8, ptr %i.oyx, i64 %i.ozn ; 2 uses
  %scevgep3811.a = getelementptr i8, ptr %scevgep3810.a, i64 %i.ozg ; 2 uses
  %i.ozo = getelementptr i8, ptr %scevgep3812, i64 %i.ozl
  %scevgep3813 = getelementptr i8, ptr %i.ozo, i64 %i.ozg ; 2 uses
  %bound03814 = icmp ult ptr %scevgep3805.a, %scevgep3809.a
  %bound13815 = icmp ult ptr %scevgep3808, %scevgep3807.a
  %found.conflict3816 = and i1 %bound03814, %bound13815
  %bound03817 = icmp ult ptr %scevgep3805.a, %scevgep3813
  %bound13818 = icmp ult ptr %scevgep3811.a, %scevgep3807.a
  %found.conflict3819 = and i1 %bound03817, %bound13818
  %conflict.rdx3820 = or i1 %found.conflict3816, %found.conflict3819
  %bound03821 = icmp ult ptr %scevgep3808, %scevgep3813
  %bound13822 = icmp ult ptr %scevgep3811.a, %scevgep3809.a
  %found.conflict3823 = and i1 %bound03821, %bound13822
  %conflict.rdx3824 = or i1 %conflict.rdx3820, %found.conflict3823
  br i1 %conflict.rdx3824, label %.preheader.i560.preheader, label %vector.ph3827

vector.ph3827:                                    ; preds = %vector.memcheck3802
  %i.ozp = and i64 %i.ozc, 3                      ; 2 uses
  %i.ozq = icmp eq i64 %i.ozp, 0
  %i.ozr = select i1 %i.ozq, i64 4, i64 %i.ozp
  %n.vec3828 = sub i64 %i.ozc, %i.ozr             ; 2 uses
  %i.ozs = shl i64 %n.vec3828, 1
  %i.ozt = add i64 %i.ozs, %i.oyr
  %broadcast.splatinsert3829 = insertelement <4 x i64> poison, i64 %i.oyr, i64 0
  %broadcast.splat3830 = shufflevector <4 x i64> %broadcast.splatinsert3829, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction3831 = add nuw nsw <4 x i64> %broadcast.splat3830, <i64 0, i64 2, i64 4, i64 6>
  %invariant.gep4873 = getelementptr [4 x i8], ptr %i.oyo, i64 %i.oyr
  br label %vector.body3832

vector.body3832:                                  ; preds = %vector.body3832, %vector.ph3827
  %index3833 = phi i64 [ 0, %vector.ph3827 ], [ %index.next3885, %vector.body3832 ] ; 2 uses
  %vec.ind3834 = phi <4 x i64> [ %induction3831, %vector.ph3827 ], [ %vec.ind.next3886, %vector.body3832 ] ; 3 uses
  %.idx4569 = shl nuw i64 %index3833, 3
  %gep4874 = getelementptr i8, ptr %invariant.gep4873, i64 %.idx4569 ; 8 uses
  %i.ozu = getelementptr inbounds i8, ptr %gep4874, i64 -8 ; 2 uses
  %i.ozv = getelementptr inbounds i8, ptr %gep4874, i64 -1088 ; 2 uses
  %i.ozw = getelementptr inbounds nuw i8, ptr %gep4874, i64 1088 ; 2 uses
  %i.ozx = getelementptr inbounds i8, ptr %gep4874, i64 -4
  %i.ozy = getelementptr inbounds nuw i8, ptr %gep4874, i64 4 ; 2 uses
  %i.ozz = getelementptr inbounds i8, ptr %gep4874, i64 -544 ; 2 uses
  %i.paa = getelementptr inbounds nuw i8, ptr %gep4874, i64 544 ; 2 uses
  %wide.gep3835 = getelementptr inbounds nuw [4 x i8], ptr %i.oyt, <4 x i64> %vec.ind3834 ; 2 uses
  %i.pab = extractelement <4 x ptr> %wide.gep3835, i64 0 ; 4 uses
  %wide.vec3836.a = load <8 x float>, ptr %i.ozu, align 4, !tbaa !22, !alias.scope !474, !noalias !402
  %strided.vec3837.a = shufflevector <8 x float> %wide.vec3836.a, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec3838.a = load <8 x float>, ptr %gep4874, align 4, !tbaa !22, !alias.scope !474, !noalias !402
  %strided.vec3839.a = shufflevector <8 x float> %wide.vec3838.a, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 5 uses
  %i.pac = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3837.a, %strided.vec3839.a
  %i.pad = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pac)
  %i.pae = getelementptr inbounds nuw i8, ptr %i.pab, i64 4
  %wide.vec3840.a = load <8 x float>, ptr %i.pae, align 4, !tbaa !22, !alias.scope !477, !noalias !402
  %strided.vec3841.a = shufflevector <8 x float> %wide.vec3840.a, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.paf = getelementptr inbounds i8, ptr %i.pab, i64 -4
  %wide.vec3842.a = load <8 x float>, ptr %i.paf, align 4, !tbaa !22, !alias.scope !477, !noalias !402
  %strided.vec3843.a = shufflevector <8 x float> %wide.vec3842.a, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.pag = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3841.a, %strided.vec3843.a
  %i.pah = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pag)
  %i.pai = fadd reassoc nsz arcp contract afn <4 x float> %i.pah, splat (float 1.000000e+00) ; 2 uses
  %i.paj = fadd reassoc nsz arcp contract afn <4 x float> %i.pai, %i.pad
  %i.pak = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.paj ; 2 uses
  %wide.vec3844 = load <8 x float>, ptr %i.ozy, align 4, !tbaa !22, !alias.scope !474, !noalias !402 ; 2 uses
  %strided.vec3845 = shufflevector <8 x float> %wide.vec3844, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec3846.a = shufflevector <8 x float> %wide.vec3844, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.pal = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3846.a, %strided.vec3839.a
  %i.pam = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pal)
  %i.pan = fadd reassoc nsz arcp contract afn <4 x float> %i.pai, %i.pam
  %i.pao = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pan ; 2 uses
  %wide.vec3847.a = load <8 x float>, ptr %i.ozv, align 4, !tbaa !22, !alias.scope !474, !noalias !402
  %strided.vec3848.a = shufflevector <8 x float> %wide.vec3847.a, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pap = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3848.a, %strided.vec3839.a
  %i.paq = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pap)
  %i.par = getelementptr inbounds nuw i8, ptr %i.pab, i64 544
  %wide.vec3849.a = load <8 x float>, ptr %i.par, align 4, !tbaa !22, !alias.scope !477, !noalias !402
  %strided.vec3850.a = shufflevector <8 x float> %wide.vec3849.a, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.pas = getelementptr inbounds i8, ptr %i.pab, i64 -544
  %wide.vec3851.a = load <8 x float>, ptr %i.pas, align 4, !tbaa !22, !alias.scope !477, !noalias !402
  %strided.vec3852.a = shufflevector <8 x float> %wide.vec3851.a, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.pat = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3850.a, %strided.vec3852.a
  %i.pau = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pat)
  %i.pav = fadd reassoc nsz arcp contract afn <4 x float> %i.pau, splat (float 1.000000e+00) ; 2 uses
  %i.paw = fadd reassoc nsz arcp contract afn <4 x float> %i.pav, %i.paq
  %i.pax = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.paw ; 2 uses
  %wide.vec3853.a = load <8 x float>, ptr %i.ozw, align 4, !tbaa !22, !alias.scope !474, !noalias !402
  %strided.vec3854.a = shufflevector <8 x float> %wide.vec3853.a, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pay = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3854.a, %strided.vec3839.a
  %i.paz = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pay)
  %i.pba = fadd reassoc nsz arcp contract afn <4 x float> %i.pav, %i.paz
  %i.pbb = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pba ; 2 uses
  %wide.vec3855 = load <8 x float>, ptr %i.ozu, align 4, !tbaa !22, !alias.scope !474, !noalias !402 ; 2 uses
  %strided.vec3856 = shufflevector <8 x float> %wide.vec3855, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec3857.a = shufflevector <8 x float> %wide.vec3855, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.pbc = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3857.a, %strided.vec3843.a
  %i.pbd = fmul reassoc nsz arcp contract afn <4 x float> %i.pbc, %i.pak
  %i.pbe = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3845, %strided.vec3841.a
  %i.pbf = fmul reassoc nsz arcp contract afn <4 x float> %i.pbe, %i.pao
  %i.pbg = fadd reassoc nsz arcp contract afn <4 x float> %i.pbf, %i.pbd
  %wide.vec3858.a = load <8 x float>, ptr %i.ozz, align 4, !tbaa !22, !alias.scope !474, !noalias !402
  %strided.vec3859.a = shufflevector <8 x float> %wide.vec3858.a, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pbh = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3859.a, %strided.vec3852.a
  %i.pbi = fmul reassoc nsz arcp contract afn <4 x float> %i.pbh, %i.pax
  %i.pbj = fadd reassoc nsz arcp contract afn <4 x float> %i.pbg, %i.pbi
  %wide.vec3860 = load <8 x float>, ptr %i.paa, align 4, !tbaa !22, !alias.scope !474, !noalias !402
  %strided.vec3861 = shufflevector <8 x float> %wide.vec3860, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pbk = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3861, %strided.vec3850.a
  %i.pbl = fmul reassoc nsz arcp contract afn <4 x float> %i.pbk, %i.pbb
  %i.pbm = fadd reassoc nsz arcp contract afn <4 x float> %i.pbj, %i.pbl
  %i.pbn = fadd reassoc nsz arcp contract afn <4 x float> %i.pao, %i.pak
  %i.pbo = fadd reassoc nsz arcp contract afn <4 x float> %i.pbn, %i.pax
  %i.pbp = fadd reassoc nsz arcp contract afn <4 x float> %i.pbo, %i.pbb
  %i.pbq = fdiv reassoc nsz arcp contract afn <4 x float> %i.pbm, %i.pbp
  %i.pbr = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3839.a, %i.pbq
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.pbr, <4 x ptr> align 4 %wide.gep3835, <4 x i1> splat (i1 true)), !tbaa !22, !alias.scope !477, !noalias !479
  %wide.gep3862 = getelementptr inbounds nuw [4 x i8], ptr %i.oyy, <4 x i64> %vec.ind3834 ; 2 uses
  %i.pbs = extractelement <4 x ptr> %wide.gep3862, i64 0 ; 4 uses
  %wide.vec3863 = load <8 x float>, ptr %i.ozx, align 4, !tbaa !22, !alias.scope !474, !noalias !402 ; 2 uses
  %strided.vec3864 = shufflevector <8 x float> %wide.vec3863, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec3865.a = shufflevector <8 x float> %wide.vec3863, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 5 uses
  %i.pbt = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3856, %strided.vec3865.a
  %i.pbu = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pbt)
  %i.pbv = getelementptr inbounds nuw i8, ptr %i.pbs, i64 4
  %wide.vec3866.a = load <8 x float>, ptr %i.pbv, align 4, !tbaa !22, !alias.scope !481, !noalias !402
  %strided.vec3867.a = shufflevector <8 x float> %wide.vec3866.a, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.pbw = getelementptr inbounds i8, ptr %i.pbs, i64 -4
  %wide.vec3868.a = load <8 x float>, ptr %i.pbw, align 4, !tbaa !22, !alias.scope !481, !noalias !402
  %strided.vec3869.a = shufflevector <8 x float> %wide.vec3868.a, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.pbx = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3867.a, %strided.vec3869.a
  %i.pby = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pbx)
  %i.pbz = fadd reassoc nsz arcp contract afn <4 x float> %i.pby, splat (float 1.000000e+00) ; 2 uses
  %i.pca = fadd reassoc nsz arcp contract afn <4 x float> %i.pbz, %i.pbu
  %i.pcb = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pca ; 2 uses
  %wide.vec3870 = load <8 x float>, ptr %i.ozy, align 4, !tbaa !22, !alias.scope !474, !noalias !402 ; 2 uses
  %strided.vec3871 = shufflevector <8 x float> %wide.vec3870, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec3872.a = shufflevector <8 x float> %wide.vec3870, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.pcc = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3872.a, %strided.vec3865.a
  %i.pcd = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pcc)
  %i.pce = fadd reassoc nsz arcp contract afn <4 x float> %i.pbz, %i.pcd
  %i.pcf = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pce ; 2 uses
  %wide.vec3873.a = load <8 x float>, ptr %i.ozv, align 4, !tbaa !22, !alias.scope !474, !noalias !402
  %strided.vec3874.a = shufflevector <8 x float> %wide.vec3873.a, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pcg = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3874.a, %strided.vec3865.a
  %i.pch = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pcg)
  %i.pci = getelementptr inbounds nuw i8, ptr %i.pbs, i64 544
  %wide.vec3875.a = load <8 x float>, ptr %i.pci, align 4, !tbaa !22, !alias.scope !481, !noalias !402
  %strided.vec3876.a = shufflevector <8 x float> %wide.vec3875.a, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.pcj = getelementptr inbounds i8, ptr %i.pbs, i64 -544
  %wide.vec3877.a = load <8 x float>, ptr %i.pcj, align 4, !tbaa !22, !alias.scope !481, !noalias !402
  %strided.vec3878.a = shufflevector <8 x float> %wide.vec3877.a, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.pck = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3876.a, %strided.vec3878.a
  %i.pcl = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pck)
  %i.pcm = fadd reassoc nsz arcp contract afn <4 x float> %i.pcl, splat (float 1.000000e+00) ; 2 uses
  %i.pcn = fadd reassoc nsz arcp contract afn <4 x float> %i.pcm, %i.pch
  %i.pco = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pcn ; 2 uses
  %wide.vec3879.a = load <8 x float>, ptr %i.ozw, align 4, !tbaa !22, !alias.scope !474, !noalias !402
  %strided.vec3880.a = shufflevector <8 x float> %wide.vec3879.a, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pcp = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3880.a, %strided.vec3865.a
  %i.pcq = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pcp)
  %i.pcr = fadd reassoc nsz arcp contract afn <4 x float> %i.pcm, %i.pcq
  %i.pcs = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pcr ; 2 uses
  %i.pct = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3864, %strided.vec3869.a
  %i.pcu = fmul reassoc nsz arcp contract afn <4 x float> %i.pct, %i.pcb
  %i.pcv = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3871, %strided.vec3867.a
  %i.pcw = fmul reassoc nsz arcp contract afn <4 x float> %i.pcv, %i.pcf
  %i.pcx = fadd reassoc nsz arcp contract afn <4 x float> %i.pcw, %i.pcu
  %wide.vec3881.a = load <8 x float>, ptr %i.ozz, align 4, !tbaa !22, !alias.scope !474, !noalias !402
  %strided.vec3882.a = shufflevector <8 x float> %wide.vec3881.a, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pcy = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3882.a, %strided.vec3878.a
  %i.pcz = fmul reassoc nsz arcp contract afn <4 x float> %i.pcy, %i.pco
  %i.pda = fadd reassoc nsz arcp contract afn <4 x float> %i.pcx, %i.pcz
  %wide.vec3883 = load <8 x float>, ptr %i.paa, align 4, !tbaa !22, !alias.scope !474, !noalias !402
  %strided.vec3884 = shufflevector <8 x float> %wide.vec3883, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pdb = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3884, %strided.vec3876.a
  %i.pdc = fmul reassoc nsz arcp contract afn <4 x float> %i.pdb, %i.pcs
  %i.pdd = fadd reassoc nsz arcp contract afn <4 x float> %i.pda, %i.pdc
  %i.pde = fadd reassoc nsz arcp contract afn <4 x float> %i.pcf, %i.pcb
  %i.pdf = fadd reassoc nsz arcp contract afn <4 x float> %i.pde, %i.pco
  %i.pdg = fadd reassoc nsz arcp contract afn <4 x float> %i.pdf, %i.pcs
  %i.pdh = fdiv reassoc nsz arcp contract afn <4 x float> %i.pdd, %i.pdg
  %i.pdi = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3865.a, %i.pdh
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.pdi, <4 x ptr> align 4 %wide.gep3862, <4 x i1> splat (i1 true)), !tbaa !22, !alias.scope !481, !noalias !482
  %index.next3885 = add nuw i64 %index3833, 4     ; 2 uses
  %vec.ind.next3886 = add nuw nsw <4 x i64> %vec.ind3834, splat (i64 8)
  %i.pdj = icmp eq i64 %index.next3885, %n.vec3828
  br i1 %i.pdj, label %.preheader.i560.preheader, label %vector.body3832, !llvm.loop !483

.preheader.i560.preheader:                        ; preds = %vector.body3832, %vector.memcheck3802, %.preheader.lr.ph.i559
  %indvars.iv1297.i.ph = phi i64 [ %i.oyr, %vector.memcheck3802 ], [ %i.oyr, %.preheader.lr.ph.i559 ], [ %i.ozt, %vector.body3832 ]
  br label %.preheader.i560

.preheader.i560:                                  ; preds = %.preheader.i560.preheader, %.preheader.i560
  %indvars.iv1297.i = phi i64 [ %indvars.iv.next1298.i, %.preheader.i560 ], [ %indvars.iv1297.i.ph, %.preheader.i560.preheader ] ; 4 uses
  %i.pdk = getelementptr inbounds nuw [4 x i8], ptr %i.oyo, i64 %indvars.iv1297.i ; 10 uses
  %i.pdl = getelementptr inbounds i8, ptr %i.pdk, i64 -4 ; 2 uses
  %i.pdm = getelementptr inbounds nuw i8, ptr %i.pdk, i64 4 ; 2 uses
  %i.pdn = getelementptr inbounds nuw [4 x i8], ptr %i.oyt, i64 %indvars.iv1297.i ; 5 uses
  %i.pdo = getelementptr inbounds nuw i8, ptr %i.pdn, i64 544
  %i.pdp = getelementptr inbounds i8, ptr %i.pdn, i64 -544
  %i.pdq = getelementptr inbounds i8, ptr %i.pdn, i64 -4
  %i.pdr = getelementptr inbounds nuw i8, ptr %i.pdn, i64 4
  %i.pds = load float, ptr %i.pdo, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pdt = load float, ptr %i.pdp, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pdu = load float, ptr %i.pdq, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pdv = load float, ptr %i.pdr, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pdw = fsub reassoc nsz arcp contract afn float %i.pds, %i.pdt
  %i.pdx = fsub reassoc nsz arcp contract afn float %i.pdv, %i.pdu
  %i.pdy = insertelement <2 x float> poison, float %i.pdx, i64 0
  %i.pdz = insertelement <2 x float> %i.pdy, float %i.pdw, i64 1
  %i.pea = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.pdz)
  %i.peb = shufflevector <2 x float> %i.pea, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.pec = fadd reassoc nsz arcp contract afn <4 x float> %i.peb, splat (float 1.000000e+00)
  %i.ped = load float, ptr %i.pdm, align 4, !tbaa !22, !noalias !402
  %i.pee = load float, ptr %i.pdk, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pef = load float, ptr %i.pdl, align 4, !tbaa !22, !noalias !402
  %i.peg = insertelement <4 x float> poison, float %i.pee, i64 0
  %i.peh = shufflevector <4 x float> %i.peg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pei = fsub reassoc nsz arcp contract afn float %i.pef, %i.pdu
  %i.pej = fsub reassoc nsz arcp contract afn float %i.ped, %i.pdv
  %i.pek = insertelement <4 x float> poison, float %i.pej, i64 0
  %i.pel = insertelement <4 x float> %i.pek, float %i.pei, i64 1
  %i.pem = getelementptr inbounds nuw [4 x i8], ptr %i.oyy, i64 %indvars.iv1297.i ; 5 uses
  %i.pen = getelementptr inbounds nuw i8, ptr %i.pdk, i64 544 ; 2 uses
  %i.peo = getelementptr inbounds i8, ptr %i.pdk, i64 -544 ; 2 uses
  %i.pep = load float, ptr %i.pen, align 4, !tbaa !22, !noalias !402
  %i.peq = load float, ptr %i.peo, align 4, !tbaa !22, !noalias !402
  %i.per = fsub reassoc nsz arcp contract afn float %i.pep, %i.pds
  %i.pes = fsub reassoc nsz arcp contract afn float %i.peq, %i.pdt
  %i.pet = insertelement <4 x float> %i.pel, float %i.pes, i64 2
  %i.peu = insertelement <4 x float> %i.pet, float %i.per, i64 3
  %i.pev = getelementptr inbounds nuw i8, ptr %i.pem, i64 544
  %i.pew = getelementptr inbounds i8, ptr %i.pem, i64 -544
  %i.pex = getelementptr inbounds i8, ptr %i.pem, i64 -4
  %i.pey = getelementptr inbounds nuw i8, ptr %i.pem, i64 4
  %i.pez = getelementptr inbounds nuw i8, ptr %i.pdk, i64 1088 ; 2 uses
  %i.pfa = getelementptr inbounds i8, ptr %i.pdk, i64 -1088 ; 2 uses
  %i.pfb = getelementptr inbounds i8, ptr %i.pdk, i64 -8 ; 2 uses
  %i.pfc = getelementptr inbounds nuw i8, ptr %i.pdk, i64 8 ; 2 uses
  %i.pfd = load float, ptr %i.pez, align 4, !tbaa !22, !noalias !402
  %i.pfe = load float, ptr %i.pfb, align 4, !tbaa !22, !noalias !402
  %i.pff = load float, ptr %i.pfa, align 4, !tbaa !22, !noalias !402
  %i.pfg = load float, ptr %i.pfc, align 4, !tbaa !22, !noalias !402
  %i.pfh = insertelement <4 x float> poison, float %i.pfg, i64 0
  %i.pfi = insertelement <4 x float> %i.pfh, float %i.pfe, i64 1
  %i.pfj = insertelement <4 x float> %i.pfi, float %i.pff, i64 2
  %i.pfk = insertelement <4 x float> %i.pfj, float %i.pfd, i64 3
  %i.pfl = fsub reassoc nsz arcp contract afn <4 x float> %i.pfk, %i.peh
  %i.pfm = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pfl)
  %i.pfn = fadd reassoc nsz arcp contract afn <4 x float> %i.pec, %i.pfm
  %i.pfo = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pfn ; 2 uses
  %i.pfp = fmul reassoc nsz arcp contract afn <4 x float> %i.peu, %i.pfo
  %i.pfq = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.pfp)
  %i.pfr = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.pfo)
  %i.pfs = fdiv reassoc nsz arcp contract afn float %i.pfq, %i.pfr
  %i.pft = fsub reassoc nsz arcp contract afn float %i.pee, %i.pfs
  store float %i.pft, ptr %i.pdn, align 4, !tbaa !22, !noalias !402
  %i.pfu = load float, ptr %i.pev, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pfv = load float, ptr %i.pew, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pfw = load float, ptr %i.pex, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pfx = load float, ptr %i.pey, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pfy = fsub reassoc nsz arcp contract afn float %i.pfu, %i.pfv
  %i.pfz = fsub reassoc nsz arcp contract afn float %i.pfx, %i.pfw
  %i.pga = insertelement <2 x float> poison, float %i.pfz, i64 0
  %i.pgb = insertelement <2 x float> %i.pga, float %i.pfy, i64 1
  %i.pgc = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.pgb)
  %i.pgd = shufflevector <2 x float> %i.pgc, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.pge = fadd reassoc nsz arcp contract afn <4 x float> %i.pgd, splat (float 1.000000e+00)
  %i.pgf = load float, ptr %i.pdm, align 4, !tbaa !22, !noalias !402
  %i.pgg = load float, ptr %i.pdk, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pgh = load float, ptr %i.pdl, align 4, !tbaa !22, !noalias !402
  %i.pgi = load float, ptr %i.pen, align 4, !tbaa !22, !noalias !402
  %i.pgj = load float, ptr %i.peo, align 4, !tbaa !22, !noalias !402
  %i.pgk = load float, ptr %i.pez, align 4, !tbaa !22, !noalias !402
  %i.pgl = load float, ptr %i.pfa, align 4, !tbaa !22, !noalias !402
  %i.pgm = load float, ptr %i.pfb, align 4, !tbaa !22, !noalias !402
  %i.pgn = load float, ptr %i.pfc, align 4, !tbaa !22, !noalias !402
  %i.pgo = insertelement <4 x float> poison, float %i.pgn, i64 0
  %i.pgp = insertelement <4 x float> %i.pgo, float %i.pgm, i64 1
  %i.pgq = insertelement <4 x float> %i.pgp, float %i.pgl, i64 2
  %i.pgr = insertelement <4 x float> %i.pgq, float %i.pgk, i64 3
  %i.pgs = insertelement <4 x float> poison, float %i.pgg, i64 0
  %i.pgt = shufflevector <4 x float> %i.pgs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pgu = fsub reassoc nsz arcp contract afn <4 x float> %i.pgr, %i.pgt
  %i.pgv = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pgu)
  %i.pgw = fadd reassoc nsz arcp contract afn <4 x float> %i.pge, %i.pgv
  %i.pgx = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pgw ; 2 uses
  %i.pgy = fsub reassoc nsz arcp contract afn float %i.pgi, %i.pfu
  %i.pgz = fsub reassoc nsz arcp contract afn float %i.pgj, %i.pfv
  %i.pha = fsub reassoc nsz arcp contract afn float %i.pgh, %i.pfw
  %i.phb = fsub reassoc nsz arcp contract afn float %i.pgf, %i.pfx
  %i.phc = insertelement <4 x float> poison, float %i.phb, i64 0
  %i.phd = insertelement <4 x float> %i.phc, float %i.pha, i64 1
  %i.phe = insertelement <4 x float> %i.phd, float %i.pgz, i64 2
  %i.phf = insertelement <4 x float> %i.phe, float %i.pgy, i64 3
  %i.phg = fmul reassoc nsz arcp contract afn <4 x float> %i.phf, %i.pgx
  %i.phh = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.phg)
  %i.phi = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.pgx)
  %i.phj = fdiv reassoc nsz arcp contract afn float %i.phh, %i.phi
  %i.phk = fsub reassoc nsz arcp contract afn float %i.pgg, %i.phj
  store float %i.phk, ptr %i.pem, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1298.i = add nuw nsw i64 %indvars.iv1297.i, 2 ; 2 uses
  %i.phl = icmp slt i64 %indvars.iv.next1298.i, %i.oof
  br i1 %i.phl, label %.preheader.i560, label %._crit_edge1156.i, !llvm.loop !484

._crit_edge1156.i:                                ; preds = %.preheader.i560, %.lr.ph1158.i
  %indvars.iv.next1301.i = add nuw nsw i64 %indvars.iv1300.i, 1 ; 2 uses
  %exitcond1152.not = icmp eq i64 %indvars.iv.next1301.i, %i.lwm
  %indvar.next3804 = add i64 %indvar3803, 1
  br i1 %exitcond1152.not, label %.lr.ph1164.i, label %.lr.ph1158.i

._crit_edge1165.i.loopexit:                       ; preds = %._crit_edge1162.i
  %i.phm = add nuw nsw i32 %.08901166.i, 1        ; 2 uses
  %i.phn = icmp slt i32 %i.phm, %i.lup
  br i1 %i.phn, label %.lr.ph1150.i.preheader, label %._crit_edge1168.i

.lr.ph1164.i:                                     ; preds = %._crit_edge1156.i, %._crit_edge1162.i
  %indvar3742 = phi i64 [ %indvar.next3743, %._crit_edge1162.i ], [ 0, %._crit_edge1156.i ] ; 2 uses
  %indvars.iv1306.i = phi i64 [ %indvars.iv.next1307.i, %._crit_edge1162.i ], [ %i.lwf, %._crit_edge1156.i ] ; 3 uses
  %i.pho = mul i64 %indvar3742, 544               ; 6 uses
  %scevgep3749.a = getelementptr i8, ptr %i.lxe, i64 %i.pho
  %scevgep3751.a = getelementptr i8, ptr %i.lxg, i64 %i.pho
  %indvars.iv1306.tr.i = trunc i64 %indvars.iv1306.i to i32
  %i.php = shl i32 %indvars.iv1306.tr.i, 1
  %i.phq = and i32 %i.php, 14                     ; 2 uses
  %i.phr = shl nuw nsw i32 %i.phq, 1
  %i.phs = lshr i32 %.fr1063, %i.phr              ; 3 uses
  %i.pht = and i32 %i.phs, 1                      ; 2 uses
  %i.phu = or disjoint i32 %i.pht, %i.ood         ; 2 uses
  %i.phv = icmp slt i32 %i.phu, %i.ooe
  br i1 %i.phv, label %.lr.ph1161.i, label %._crit_edge1162.i

.lr.ph1161.i:                                     ; preds = %.lr.ph1164.i
  %i.phw = or disjoint i32 %i.pht, %i.phq
  %i.phx = shl nuw nsw i32 %i.phw, 1
  %i.phy = lshr i32 %.fr1063, %i.phx
  %i.phz = and i32 %i.phy, 3                      ; 2 uses
  %i.pia = sub nsw i32 2, %i.phz
  %i.pib = mul nuw nsw i64 %indvars.iv1306.i, 136 ; 3 uses
  %i.pic = getelementptr inbounds nuw [4 x i8], ptr %i.lui, i64 %i.pib ; 2 uses
  %i.pid = sext i32 %i.pia to i64
  %i.pie = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.pid
  %i.pif = load ptr, ptr %i.pie, align 8, !tbaa !407, !noalias !408 ; 3 uses
  %i.pig = getelementptr inbounds nuw [4 x i8], ptr %i.pif, i64 %i.pib ; 2 uses
  %i.pih = zext nneg i32 %i.phz to i64
  %i.pii = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.pih
  %i.pij = load ptr, ptr %i.pii, align 8, !tbaa !407, !noalias !408 ; 3 uses
  %i.pik = getelementptr inbounds nuw [4 x i8], ptr %i.pij, i64 %i.pib ; 2 uses
  %i.pil = zext nneg i32 %i.phu to i64            ; 5 uses
  %i.pim = and i32 %i.phs, 1
  %17 = or disjoint i32 %i.nmr, %i.pim
  %18 = zext nneg i32 %17 to i64
  %i.pin = sub nsw i64 %12, %18                   ; 2 uses
  %i.pio = lshr i64 %i.pin, 1
  %i.pip = add nuw i64 %i.pio, 1                  ; 2 uses
  %min.iters.check3761 = icmp ult i64 %i.pin, 8
  br i1 %min.iters.check3761, label %scalar.ph3760.preheader, label %vector.memcheck3741

scalar.ph3760.preheader:                          ; preds = %vector.body3767, %vector.memcheck3741, %.lr.ph1161.i
  %indvars.iv1303.i.ph = phi i64 [ %i.pil, %vector.memcheck3741 ], [ %i.pil, %.lr.ph1161.i ], [ %i.pjr, %vector.body3767 ]
  br label %scalar.ph3760

vector.memcheck3741:                              ; preds = %.lr.ph1161.i
  %i.piq = and i32 %i.phs, 1
  %i.pir = zext nneg i32 %i.piq to i64            ; 2 uses
  %i.pis = or disjoint i64 %i.oog, %i.pir
  %i.pit = shl nuw nsw i64 %i.pis, 2              ; 6 uses
  %i.piu = getelementptr i8, ptr %i.pif, i64 %i.lwn
  %i.piv = getelementptr i8, ptr %i.piu, i64 552
  %i.piw = getelementptr i8, ptr %i.piv, i64 %i.pho
  %scevgep3744 = getelementptr i8, ptr %i.piw, i64 %i.pit ; 2 uses
  %i.pix = or disjoint i64 %i.oog, %i.pir
  %i.piy = sub nsw i64 %6, %i.pix
  %i.piz = shl i64 %i.piy, 2
  %i.pja = and i64 %i.piz, -8                     ; 3 uses
  %i.pjb = getelementptr i8, ptr %i.pif, i64 %i.lwn
  %i.pjc = getelementptr i8, ptr %i.pjb, i64 1644
  %i.pjd = getelementptr i8, ptr %i.pjc, i64 %i.pho
  %i.pje = getelementptr i8, ptr %i.pjd, i64 %i.pja
  %scevgep3746.a = getelementptr i8, ptr %i.pje, i64 %i.pit ; 2 uses
  %i.pjf = getelementptr i8, ptr %i.pij, i64 %i.lwn
  %i.pjg = getelementptr i8, ptr %i.pjf, i64 8
  %i.pjh = getelementptr i8, ptr %i.pjg, i64 %i.pho
  %scevgep3747.a = getelementptr i8, ptr %i.pjh, i64 %i.pit
  %i.pji = getelementptr i8, ptr %i.pij, i64 %i.lwn
  %i.pjj = getelementptr i8, ptr %i.pji, i64 2188
  %i.pjk = getelementptr i8, ptr %i.pjj, i64 %i.pho
  %i.pjl = getelementptr i8, ptr %i.pjk, i64 %i.pja
  %scevgep3748 = getelementptr i8, ptr %i.pjl, i64 %i.pit
  %scevgep3750 = getelementptr i8, ptr %scevgep3749.a, i64 %i.pit
  %i.pjm = getelementptr i8, ptr %scevgep3751.a, i64 %i.pja
  %scevgep3752 = getelementptr i8, ptr %i.pjm, i64 %i.pit
  %bound03753 = icmp ult ptr %scevgep3744, %scevgep3748
  %bound13754 = icmp ult ptr %scevgep3747.a, %scevgep3746.a
  %found.conflict3755 = and i1 %bound03753, %bound13754
  %bound03756 = icmp ult ptr %scevgep3744, %scevgep3752
  %bound13757 = icmp ult ptr %scevgep3750, %scevgep3746.a
  %found.conflict3758 = and i1 %bound03756, %bound13757
  %conflict.rdx3759 = or i1 %found.conflict3755, %found.conflict3758
  br i1 %conflict.rdx3759, label %scalar.ph3760.preheader, label %vector.ph3762

vector.ph3762:                                    ; preds = %vector.memcheck3741
  %i.pjn = and i64 %i.pip, 3                      ; 2 uses
  %i.pjo = icmp eq i64 %i.pjn, 0
  %i.pjp = select i1 %i.pjo, i64 4, i64 %i.pjn
  %n.vec3763 = sub i64 %i.pip, %i.pjp             ; 2 uses
  %i.pjq = shl i64 %n.vec3763, 1
  %i.pjr = add i64 %i.pjq, %i.pil
  %broadcast.splatinsert3764 = insertelement <4 x i64> poison, i64 %i.pil, i64 0
  %broadcast.splat3765 = shufflevector <4 x i64> %broadcast.splatinsert3764, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction3766 = add nuw nsw <4 x i64> %broadcast.splat3765, <i64 0, i64 2, i64 4, i64 6>
  br label %vector.body3767

vector.body3767:                                  ; preds = %vector.body3767, %vector.ph3762
  %index3768 = phi i64 [ 0, %vector.ph3762 ], [ %index.next3798, %vector.body3767 ] ; 2 uses
  %vec.ind3769 = phi <4 x i64> [ %induction3766, %vector.ph3762 ], [ %vec.ind.next3799, %vector.body3767 ] ; 2 uses
  %i.pjs = shl nuw i64 %index3768, 1
  %i.pjt = add nuw i64 %i.pjs, %i.pil             ; 2 uses
  %i.pju = getelementptr inbounds nuw [4 x i8], ptr %i.pic, i64 %i.pjt ; 4 uses
  %wide.gep3770 = getelementptr inbounds nuw [4 x i8], ptr %i.pig, <4 x i64> %vec.ind3769 ; 2 uses
  %i.pjv = extractelement <4 x ptr> %wide.gep3770, i64 0 ; 4 uses
  %i.pjw = getelementptr inbounds nuw [4 x i8], ptr %i.pik, i64 %i.pjt ; 5 uses
  %i.pjx = getelementptr inbounds i8, ptr %i.pjw, i64 -8
  %wide.vec3771 = load <8 x float>, ptr %i.pjx, align 4, !tbaa !22, !alias.scope !485, !noalias !402
  %strided.vec3772 = shufflevector <8 x float> %wide.vec3771, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec3773 = load <8 x float>, ptr %i.pjw, align 4, !tbaa !22, !alias.scope !485, !noalias !402
  %strided.vec3774 = shufflevector <8 x float> %wide.vec3773, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 4 uses
  %i.pjy = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3772, %strided.vec3774
  %i.pjz = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pjy)
  %i.pka = getelementptr inbounds nuw i8, ptr %i.pju, i64 4
  %wide.vec3775 = load <8 x float>, ptr %i.pka, align 4, !tbaa !22, !alias.scope !488, !noalias !402
  %strided.vec3776 = shufflevector <8 x float> %wide.vec3775, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.pkb = getelementptr inbounds i8, ptr %i.pju, i64 -4
  %wide.vec3777 = load <8 x float>, ptr %i.pkb, align 4, !tbaa !22, !alias.scope !488, !noalias !402 ; 2 uses
  %strided.vec3778.a = shufflevector <8 x float> %wide.vec3777, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec3779 = shufflevector <8 x float> %wide.vec3777, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.pkc = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3776, %strided.vec3778.a
  %i.pkd = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pkc)
  %i.pke = fadd reassoc nsz arcp contract afn <4 x float> %i.pkd, splat (float 1.000000e+00) ; 2 uses
  %i.pkf = fadd reassoc nsz arcp contract afn <4 x float> %i.pke, %i.pjz
  %i.pkg = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pkf ; 2 uses
  %i.pkh = getelementptr inbounds nuw i8, ptr %i.pjw, i64 8
  %wide.vec3780 = load <8 x float>, ptr %i.pkh, align 4, !tbaa !22, !alias.scope !485, !noalias !402
  %strided.vec3781 = shufflevector <8 x float> %wide.vec3780, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pki = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3781, %strided.vec3774
  %i.pkj = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pki)
  %i.pkk = fadd reassoc nsz arcp contract afn <4 x float> %i.pke, %i.pkj
  %i.pkl = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pkk ; 2 uses
  %i.pkm = getelementptr inbounds i8, ptr %i.pjw, i64 -1088
  %wide.vec3782 = load <8 x float>, ptr %i.pkm, align 4, !tbaa !22, !alias.scope !485, !noalias !402
  %strided.vec3783 = shufflevector <8 x float> %wide.vec3782, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pkn = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3783, %strided.vec3774
  %i.pko = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pkn)
  %i.pkp = getelementptr inbounds nuw i8, ptr %i.pju, i64 544
  %wide.vec3784 = load <8 x float>, ptr %i.pkp, align 4, !tbaa !22, !alias.scope !488, !noalias !402
  %strided.vec3785 = shufflevector <8 x float> %wide.vec3784, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.pkq = getelementptr inbounds i8, ptr %i.pju, i64 -544
  %wide.vec3786 = load <8 x float>, ptr %i.pkq, align 4, !tbaa !22, !alias.scope !488, !noalias !402
  %strided.vec3787 = shufflevector <8 x float> %wide.vec3786, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.pkr = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3785, %strided.vec3787
  %i.pks = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pkr)
  %i.pkt = fadd reassoc nsz arcp contract afn <4 x float> %i.pks, splat (float 1.000000e+00) ; 2 uses
  %i.pku = fadd reassoc nsz arcp contract afn <4 x float> %i.pkt, %i.pko
  %i.pkv = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pku ; 2 uses
  %i.pkw = getelementptr inbounds nuw i8, ptr %i.pjw, i64 1088
  %wide.vec3788 = load <8 x float>, ptr %i.pkw, align 4, !tbaa !22, !alias.scope !485, !noalias !402
  %strided.vec3789 = shufflevector <8 x float> %wide.vec3788, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pkx = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3789, %strided.vec3774
  %i.pky = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pkx)
  %i.pkz = fadd reassoc nsz arcp contract afn <4 x float> %i.pkt, %i.pky
  %i.pla = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pkz ; 2 uses
  %i.plb = getelementptr inbounds i8, ptr %i.pjv, i64 -4
  %wide.vec3790 = load <8 x float>, ptr %i.plb, align 4, !tbaa !22, !alias.scope !490, !noalias !402
  %strided.vec3791 = shufflevector <8 x float> %wide.vec3790, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.plc = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3778.a, %strided.vec3791
  %i.pld = fmul reassoc nsz arcp contract afn <4 x float> %i.plc, %i.pkg
  %i.ple = getelementptr inbounds nuw i8, ptr %i.pjv, i64 4
  %wide.vec3792 = load <8 x float>, ptr %i.ple, align 4, !tbaa !22, !alias.scope !490, !noalias !402
  %strided.vec3793 = shufflevector <8 x float> %wide.vec3792, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.plf = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3776, %strided.vec3793
  %i.plg = fmul reassoc nsz arcp contract afn <4 x float> %i.plf, %i.pkl
  %i.plh = fadd reassoc nsz arcp contract afn <4 x float> %i.plg, %i.pld
  %i.pli = getelementptr inbounds i8, ptr %i.pjv, i64 -544
  %wide.vec3794 = load <8 x float>, ptr %i.pli, align 4, !tbaa !22, !alias.scope !490, !noalias !402
  %strided.vec3795 = shufflevector <8 x float> %wide.vec3794, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.plj = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3787, %strided.vec3795
  %i.plk = fmul reassoc nsz arcp contract afn <4 x float> %i.plj, %i.pkv
  %i.pll = fadd reassoc nsz arcp contract afn <4 x float> %i.plh, %i.plk
  %i.plm = getelementptr inbounds nuw i8, ptr %i.pjv, i64 544
  %wide.vec3796 = load <8 x float>, ptr %i.plm, align 4, !tbaa !22, !alias.scope !490, !noalias !402
  %strided.vec3797 = shufflevector <8 x float> %wide.vec3796, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pln = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3785, %strided.vec3797
  %i.plo = fmul reassoc nsz arcp contract afn <4 x float> %i.pln, %i.pla
  %i.plp = fadd reassoc nsz arcp contract afn <4 x float> %i.pll, %i.plo
  %i.plq = fadd reassoc nsz arcp contract afn <4 x float> %i.pkl, %i.pkg
  %i.plr = fadd reassoc nsz arcp contract afn <4 x float> %i.plq, %i.pkv
  %i.pls = fadd reassoc nsz arcp contract afn <4 x float> %i.plr, %i.pla
  %i.plt = fdiv reassoc nsz arcp contract afn <4 x float> %i.plp, %i.pls
  %i.plu = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3779, %i.plt
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.plu, <4 x ptr> align 4 %wide.gep3770, <4 x i1> splat (i1 true)), !tbaa !22, !alias.scope !490, !noalias !492
  %index.next3798 = add nuw i64 %index3768, 4     ; 2 uses
  %vec.ind.next3799 = add nuw nsw <4 x i64> %vec.ind3769, splat (i64 8)
  %i.plv = icmp eq i64 %index.next3798, %n.vec3763
  br i1 %i.plv, label %scalar.ph3760.preheader, label %vector.body3767, !llvm.loop !493

._crit_edge1162.i:                                ; preds = %scalar.ph3760, %.lr.ph1164.i
  %indvars.iv.next1307.i = add nuw nsw i64 %indvars.iv1306.i, 1 ; 2 uses
  %exitcond1154.not = icmp eq i64 %indvars.iv.next1307.i, %i.lwm
  %indvar.next3743 = add i64 %indvar3742, 1
  br i1 %exitcond1154.not, label %._crit_edge1165.i.loopexit, label %.lr.ph1164.i

scalar.ph3760:                                    ; preds = %scalar.ph3760.preheader, %scalar.ph3760
  %indvars.iv1303.i = phi i64 [ %indvars.iv.next1304.i, %scalar.ph3760 ], [ %indvars.iv1303.i.ph, %scalar.ph3760.preheader ] ; 4 uses
  %i.plw = getelementptr inbounds nuw [4 x i8], ptr %i.pic, i64 %indvars.iv1303.i ; 5 uses
  %i.plx = getelementptr inbounds nuw [4 x i8], ptr %i.pig, i64 %indvars.iv1303.i ; 5 uses
  %i.ply = getelementptr inbounds nuw [4 x i8], ptr %i.pik, i64 %indvars.iv1303.i ; 5 uses
  %i.plz = load float, ptr %i.plw, align 4, !tbaa !22, !noalias !402
  %i.pma = getelementptr inbounds nuw i8, ptr %i.plw, i64 544
  %i.pmb = getelementptr inbounds i8, ptr %i.plw, i64 -544
  %i.pmc = getelementptr inbounds i8, ptr %i.plw, i64 -4
  %i.pmd = getelementptr inbounds nuw i8, ptr %i.plw, i64 4
  %i.pme = load float, ptr %i.pma, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pmf = load float, ptr %i.pmb, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pmg = load float, ptr %i.pmc, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pmh = load float, ptr %i.pmd, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pmi = fsub reassoc nsz arcp contract afn float %i.pme, %i.pmf
  %i.pmj = fsub reassoc nsz arcp contract afn float %i.pmh, %i.pmg
  %i.pmk = insertelement <2 x float> poison, float %i.pmj, i64 0
  %i.pml = insertelement <2 x float> %i.pmk, float %i.pmi, i64 1
  %i.pmm = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.pml)
  %i.pmn = shufflevector <2 x float> %i.pmm, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.pmo = fadd reassoc nsz arcp contract afn <4 x float> %i.pmn, splat (float 1.000000e+00)
  %i.pmp = load float, ptr %i.ply, align 4, !tbaa !22, !noalias !402
  %i.pmq = getelementptr inbounds nuw i8, ptr %i.ply, i64 1088
  %i.pmr = getelementptr inbounds i8, ptr %i.ply, i64 -1088
  %i.pms = getelementptr inbounds i8, ptr %i.ply, i64 -8
  %i.pmt = getelementptr inbounds nuw i8, ptr %i.ply, i64 8
  %i.pmu = load float, ptr %i.pmq, align 4, !tbaa !22, !noalias !402
  %i.pmv = load float, ptr %i.pmr, align 4, !tbaa !22, !noalias !402
  %i.pmw = load float, ptr %i.pms, align 4, !tbaa !22, !noalias !402
  %i.pmx = load float, ptr %i.pmt, align 4, !tbaa !22, !noalias !402
  %i.pmy = insertelement <4 x float> poison, float %i.pmx, i64 0
  %i.pmz = insertelement <4 x float> %i.pmy, float %i.pmw, i64 1
  %i.pna = insertelement <4 x float> %i.pmz, float %i.pmv, i64 2
  %i.pnb = insertelement <4 x float> %i.pna, float %i.pmu, i64 3
  %i.pnc = insertelement <4 x float> poison, float %i.pmp, i64 0
  %i.pnd = shufflevector <4 x float> %i.pnc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pne = fsub reassoc nsz arcp contract afn <4 x float> %i.pnb, %i.pnd
  %i.pnf = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pne)
  %i.png = fadd reassoc nsz arcp contract afn <4 x float> %i.pmo, %i.pnf
  %i.pnh = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.png ; 2 uses
  %i.pni = getelementptr inbounds nuw i8, ptr %i.plx, i64 544
  %i.pnj = getelementptr inbounds i8, ptr %i.plx, i64 -544
  %i.pnk = getelementptr inbounds i8, ptr %i.plx, i64 -4
  %i.pnl = getelementptr inbounds nuw i8, ptr %i.plx, i64 4
  %i.pnm = load float, ptr %i.pni, align 4, !tbaa !22, !noalias !402
  %i.pnn = load float, ptr %i.pnj, align 4, !tbaa !22, !noalias !402
  %i.pno = load float, ptr %i.pnk, align 4, !tbaa !22, !noalias !402
  %i.pnp = load float, ptr %i.pnl, align 4, !tbaa !22, !noalias !402
  %i.pnq = fsub reassoc nsz arcp contract afn float %i.pme, %i.pnm
  %i.pnr = fsub reassoc nsz arcp contract afn float %i.pmf, %i.pnn
  %i.pns = fsub reassoc nsz arcp contract afn float %i.pmg, %i.pno
  %i.pnt = fsub reassoc nsz arcp contract afn float %i.pmh, %i.pnp
  %i.pnu = insertelement <4 x float> poison, float %i.pnt, i64 0
  %i.pnv = insertelement <4 x float> %i.pnu, float %i.pns, i64 1
  %i.pnw = insertelement <4 x float> %i.pnv, float %i.pnr, i64 2
  %i.pnx = insertelement <4 x float> %i.pnw, float %i.pnq, i64 3
  %i.pny = fmul reassoc nsz arcp contract afn <4 x float> %i.pnx, %i.pnh
  %i.pnz = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.pny)
  %i.poa = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.pnh)
  %i.pob = fdiv reassoc nsz arcp contract afn float %i.pnz, %i.poa
  %i.poc = fsub reassoc nsz arcp contract afn float %i.plz, %i.pob
  store float %i.poc, ptr %i.plx, align 4, !tbaa !22, !noalias !402
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_demosaic?download=true
inline.NumInlined: 382
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 134
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 177
begin_hunk_0_@process:bb.a
  %i.ooi = icmp ne i32 %i.olh, 2
  %.neg952.i = sext i1 %i.ooi to i32
  %reass.sub.i = sub nsw i32 %.neg952.i, %i.olh
  %i.ooj = sext i32 %i.ooh to i64
  %i.ook = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ooj
  %i.ool = load ptr, ptr %i.ook, align 8, !tbaa !407, !noalias !408 ; 2 uses
  %i.oom = getelementptr [4 x i8], ptr %i.ool, i64 %i.old
  %i.oon = getelementptr [4 x i8], ptr %i.oom, i64 %i.npw ; 7 uses
  %i.ooo = sext i32 %reass.sub.i to i64
  %i.oop = getelementptr [8 x i8], ptr %i.b, i64 %i.ooo
  %i.ooq = getelementptr i8, ptr %i.oop, i64 40
  %i.oor = load ptr, ptr %i.ooq, align 8, !tbaa !407, !noalias !408 ; 2 uses
  %i.oos = getelementptr [4 x i8], ptr %i.oor, i64 %i.old
  %i.oot = getelementptr [4 x i8], ptr %i.oos, i64 %i.npw ; 7 uses
  br i1 %i.npy, label %.lr.ph1094.i.preheader, label %._crit_edge1095.i

.lr.ph1094.i.preheader:                           ; preds = %bb.rc
  br i1 %min.iters.check4032, label %.lr.ph1094.i.preheader4642, label %vector.memcheck4012

vector.memcheck4012:                              ; preds = %.lr.ph1094.i.preheader
  %scevgep4013 = getelementptr i8, ptr %i.ool, i64 %i.okz ; 2 uses
  %scevgep4019 = getelementptr i8, ptr %i.oor, i64 %i.okz ; 2 uses
  %bound04020.a = icmp ult ptr %i.oon, %scevgep4018
  %bound14021.a = icmp ult ptr %scevgep4015.a, %scevgep4013
  %found.conflict4022.a = and i1 %bound04020.a, %bound14021.a
  %bound04023 = icmp ult ptr %i.oon, %scevgep4019
  %bound14024 = icmp ult ptr %i.oot, %scevgep4013
  %found.conflict4025 = and i1 %bound04023, %bound14024
  %conflict.rdx4026 = or i1 %found.conflict4022.a, %found.conflict4025
  %bound04027 = icmp ult ptr %scevgep4015.a, %scevgep4019
  %bound14028 = icmp ult ptr %i.oot, %scevgep4018
  %found.conflict4029 = and i1 %bound04027, %bound14028
  %conflict.rdx4030 = or i1 %conflict.rdx4026, %found.conflict4029
  br i1 %conflict.rdx4030, label %.lr.ph1094.i.preheader4642, label %vector.ph4033

vector.ph4033:                                    ; preds = %vector.memcheck4012
  %i.oou = getelementptr i8, ptr %i.oot, i64 %i.nri
  %i.oov = getelementptr i8, ptr %i.oon, i64 %i.nri
  %i.oow = getelementptr i8, ptr %gep1131.i, i64 %i.nri
  %i.oox = getelementptr i8, ptr %gep1129.i, i64 %i.nri
  %i.ooy = getelementptr i8, ptr %gep1127.i, i64 %i.nri
  %i.ooz = getelementptr i8, ptr %gep1125.i, i64 %i.nri
  %i.opa = getelementptr i8, ptr %gep.i561, i64 %i.nri
  br label %vector.body4035

vector.body4035:                                  ; preds = %vector.body4035, %vector.ph4033
  %index4036 = phi i64 [ 0, %vector.ph4033 ], [ %index.next4066, %vector.body4035 ] ; 2 uses
  %pointer.phi4037.a = phi ptr [ %i.oon, %vector.ph4033 ], [ %ptr.ind4067.a, %vector.body4035 ] ; 2 uses
  %pointer.phi4038 = phi ptr [ %gep1127.i, %vector.ph4033 ], [ %ptr.ind4068, %vector.body4035 ] ; 2 uses
  %pointer.phi4039 = phi ptr [ %gep1125.i, %vector.ph4033 ], [ %ptr.ind4069, %vector.body4035 ] ; 2 uses
  %pointer.phi4040 = phi ptr [ %gep.i561, %vector.ph4033 ], [ %ptr.ind4070, %vector.body4035 ] ; 2 uses
  %vector.gep4041.a = getelementptr i8, ptr %pointer.phi4040, <8 x i64> <i64 0, i64 8, i64 16, i64 24, i64 32, i64 40, i64 48, i64 56> ; 2 uses
  %vector.gep4042 = getelementptr i8, ptr %pointer.phi4039, <8 x i64> <i64 0, i64 8, i64 16, i64 24, i64 32, i64 40, i64 48, i64 56> ; 2 uses
  %vector.gep4043 = getelementptr i8, ptr %pointer.phi4038, <8 x i64> <i64 0, i64 8, i64 16, i64 24, i64 32, i64 40, i64 48, i64 56> ; 2 uses
  %vector.gep4044 = getelementptr i8, ptr %pointer.phi4037.a, <8 x i64> <i64 0, i64 8, i64 16, i64 24, i64 32, i64 40, i64 48, i64 56>
  %i.opb = extractelement <8 x ptr> %vector.gep4041.a, i64 0
  %i.opc = extractelement <8 x ptr> %vector.gep4042, i64 0
  %i.opd = extractelement <8 x ptr> %vector.gep4043, i64 0
  %i.ope = shl i64 %index4036, 3                  ; 3 uses
  %next.gep4045 = getelementptr i8, ptr %i.oot, i64 %i.ope
  %next.gep4046 = getelementptr i8, ptr %gep1131.i, i64 %i.ope ; 2 uses
  %next.gep4047 = getelementptr i8, ptr %gep1129.i, i64 %i.ope
  %wide.vec4048.a = load <16 x float>, ptr %i.opc, align 4, !tbaa !22, !alias.scope !454, !noalias !402 ; 2 uses
  %strided.vec4049.a = shufflevector <16 x float> %wide.vec4048.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec4050 = shufflevector <16 x float> %wide.vec4048.a, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %wide.vec4051 = load <16 x float>, ptr %next.gep4045, align 4, !tbaa !22, !alias.scope !457, !noalias !402
  %strided.vec4052 = shufflevector <16 x float> %wide.vec4051, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.opf = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4052, %strided.vec4049.a
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.opf, <8 x ptr> align 4 %vector.gep4044, <8 x i1> splat (i1 true)), !tbaa !22, !alias.scope !459, !noalias !461
  %wide.vec4053 = load <16 x float>, ptr %i.opb, align 4, !tbaa !22, !alias.scope !454, !noalias !402
  %strided.vec4054.a = shufflevector <16 x float> %wide.vec4053, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.vec4055.a = load <16 x float>, ptr %next.gep4047, align 8, !tbaa !22, !alias.scope !454, !noalias !402 ; 2 uses
  %strided.vec4056.a = shufflevector <16 x float> %wide.vec4055.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec4057 = shufflevector <16 x float> %wide.vec4055.a, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec4058 = load <16 x float>, ptr %i.opd, align 4, !tbaa !22, !alias.scope !454, !noalias !402
  %strided.vec4059 = shufflevector <16 x float> %wide.vec4058, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.vec4060 = load <16 x float>, ptr %next.gep4046, align 8, !tbaa !22, !alias.scope !454, !noalias !402
  %strided.vec4061 = shufflevector <16 x float> %wide.vec4060, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.opg = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4054.a, %strided.vec4059
  %i.oph = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4056.a, %strided.vec4061
  %i.opi = fsub reassoc nsz arcp contract afn <8 x float> %i.opg, %i.oph
  %i.opj = fmul reassoc nsz arcp contract afn <8 x float> %i.opi, splat (float 5.000000e-01)
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.opj, <8 x ptr> align 4 %vector.gep4042, <8 x i1> splat (i1 true)), !tbaa !22, !alias.scope !454, !noalias !462
  %wide.gep4062 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep4041.a, i64 4
  %wide.gep4063 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep4043, i64 4
  %i.opk = getelementptr inbounds nuw i8, ptr %next.gep4046, i64 4
  %i.opl = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4057, %strided.vec4050
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.opl, <8 x ptr> align 4 %wide.gep4062, <8 x i1> splat (i1 true)), !tbaa !22, !alias.scope !454, !noalias !462
  %wide.vec4064 = load <16 x float>, ptr %i.opk, align 4, !tbaa !22, !alias.scope !454, !noalias !402
  %strided.vec4065 = shufflevector <16 x float> %wide.vec4064, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.opm = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4065, %strided.vec4050
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.opm, <8 x ptr> align 4 %wide.gep4063, <8 x i1> splat (i1 true)), !tbaa !22, !alias.scope !454, !noalias !462
  %index.next4066 = add nuw i64 %index4036, 8     ; 2 uses
  %ptr.ind4067.a = getelementptr i8, ptr %pointer.phi4037.a, i64 64
  %ptr.ind4068 = getelementptr i8, ptr %pointer.phi4038, i64 64
  %ptr.ind4069 = getelementptr i8, ptr %pointer.phi4039, i64 64
  %ptr.ind4070 = getelementptr i8, ptr %pointer.phi4040, i64 64
  %i.opn = icmp eq i64 %index.next4066, %n.vec4034
  br i1 %i.opn, label %.lr.ph1094.i.preheader4642, label %vector.body4035, !llvm.loop !463

.lr.ph1094.i.preheader4642:                       ; preds = %vector.body4035, %vector.memcheck4012, %.lr.ph1094.i.preheader
  %.08931092.i.ph = phi i32 [ %i.nps, %vector.memcheck4012 ], [ %i.nps, %.lr.ph1094.i.preheader ], [ %i.nrh, %vector.body4035 ]
  %.08941091.i.ph = phi ptr [ %i.oot, %vector.memcheck4012 ], [ %i.oot, %.lr.ph1094.i.preheader ], [ %i.oou, %vector.body4035 ]
  %.08951090.i.ph = phi ptr [ %i.oon, %vector.memcheck4012 ], [ %i.oon, %.lr.ph1094.i.preheader ], [ %i.oov, %vector.body4035 ]
  %.19001089.i.ph = phi ptr [ %gep1131.i, %vector.memcheck4012 ], [ %gep1131.i, %.lr.ph1094.i.preheader ], [ %i.oow, %vector.body4035 ]
  %.19021088.i.ph = phi ptr [ %gep1129.i, %vector.memcheck4012 ], [ %gep1129.i, %.lr.ph1094.i.preheader ], [ %i.oox, %vector.body4035 ]
  %.19041087.i.ph = phi ptr [ %gep1127.i, %vector.memcheck4012 ], [ %gep1127.i, %.lr.ph1094.i.preheader ], [ %i.ooy, %vector.body4035 ]
  %.19061086.i.ph = phi ptr [ %gep1125.i, %vector.memcheck4012 ], [ %gep1125.i, %.lr.ph1094.i.preheader ], [ %i.ooz, %vector.body4035 ]
  %.19081085.i.ph = phi ptr [ %gep.i561, %vector.memcheck4012 ], [ %gep.i561, %.lr.ph1094.i.preheader ], [ %i.opa, %vector.body4035 ]
  br label %.lr.ph1094.i

.lr.ph1094.i:                                     ; preds = %.lr.ph1094.i.preheader4642, %.lr.ph1094.i
  %.08931092.i = phi i32 [ %i.oqq, %.lr.ph1094.i ], [ %.08931092.i.ph, %.lr.ph1094.i.preheader4642 ]
  %.08941091.i = phi ptr [ %i.oqp, %.lr.ph1094.i ], [ %.08941091.i.ph, %.lr.ph1094.i.preheader4642 ] ; 2 uses
  %.08951090.i = phi ptr [ %i.oqo, %.lr.ph1094.i ], [ %.08951090.i.ph, %.lr.ph1094.i.preheader4642 ] ; 2 uses
  %.19001089.i = phi ptr [ %i.oqn, %.lr.ph1094.i ], [ %.19001089.i.ph, %.lr.ph1094.i.preheader4642 ] ; 3 uses
  %.19021088.i = phi ptr [ %i.oqm, %.lr.ph1094.i ], [ %.19021088.i.ph, %.lr.ph1094.i.preheader4642 ] ; 3 uses
  %.19041087.i = phi ptr [ %i.oql, %.lr.ph1094.i ], [ %.19041087.i.ph, %.lr.ph1094.i.preheader4642 ] ; 3 uses
  %.19061086.i = phi ptr [ %i.oqk, %.lr.ph1094.i ], [ %.19061086.i.ph, %.lr.ph1094.i.preheader4642 ] ; 4 uses
  %.19081085.i = phi ptr [ %i.oqj, %.lr.ph1094.i ], [ %.19081085.i.ph, %.lr.ph1094.i.preheader4642 ] ; 3 uses
  %i.opo = load float, ptr %.19061086.i, align 4, !tbaa !22, !noalias !402
  %i.opp = load float, ptr %.08941091.i, align 4, !tbaa !22, !noalias !402
  %i.opq = fadd reassoc nsz arcp contract afn float %i.opp, %i.opo
  store float %i.opq, ptr %.08951090.i, align 4, !tbaa !22, !noalias !402
  %i.opr = load float, ptr %.19081085.i, align 4, !tbaa !22, !noalias !402
  %i.ops = load float, ptr %.19021088.i, align 4, !tbaa !22, !noalias !402
  %i.opt = load float, ptr %.19041087.i, align 4, !tbaa !22, !noalias !402
  %i.opu = load float, ptr %.19001089.i, align 4, !tbaa !22, !noalias !402
  %i.opv = fadd reassoc nsz arcp contract afn float %i.opr, %i.opt
  %i.opw = fadd reassoc nsz arcp contract afn float %i.ops, %i.opu
  %i.opx = fsub reassoc nsz arcp contract afn float %i.opv, %i.opw
  %i.opy = fmul reassoc nsz arcp contract afn float %i.opx, 5.000000e-01
  store float %i.opy, ptr %.19061086.i, align 4, !tbaa !22, !noalias !402
  %i.opz = getelementptr inbounds nuw i8, ptr %.19081085.i, i64 4
  %i.oqa = getelementptr inbounds nuw i8, ptr %.19061086.i, i64 4
  %i.oqb = getelementptr inbounds nuw i8, ptr %.19041087.i, i64 4
  %i.oqc = getelementptr inbounds nuw i8, ptr %.19021088.i, i64 4
  %i.oqd = getelementptr inbounds nuw i8, ptr %.19001089.i, i64 4
  %i.oqe = load float, ptr %i.oqa, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.oqf = load float, ptr %i.oqc, align 4, !tbaa !22, !noalias !402
  %i.oqg = fadd reassoc nsz arcp contract afn float %i.oqf, %i.oqe
  store float %i.oqg, ptr %i.opz, align 4, !tbaa !22, !noalias !402
  %i.oqh = load float, ptr %i.oqd, align 4, !tbaa !22, !noalias !402
  %i.oqi = fadd reassoc nsz arcp contract afn float %i.oqh, %i.oqe
  store float %i.oqi, ptr %i.oqb, align 4, !tbaa !22, !noalias !402
  %i.oqj = getelementptr inbounds nuw i8, ptr %.19081085.i, i64 8 ; 2 uses
  %i.oqk = getelementptr inbounds nuw i8, ptr %.19061086.i, i64 8 ; 2 uses
  %i.oql = getelementptr inbounds nuw i8, ptr %.19041087.i, i64 8 ; 2 uses
  %i.oqm = getelementptr inbounds nuw i8, ptr %.19021088.i, i64 8 ; 2 uses
  %i.oqn = getelementptr inbounds nuw i8, ptr %.19001089.i, i64 8 ; 2 uses
  %i.oqo = getelementptr inbounds nuw i8, ptr %.08951090.i, i64 8 ; 2 uses
  %i.oqp = getelementptr inbounds nuw i8, ptr %.08941091.i, i64 8 ; 2 uses
  %i.oqq = add nuw nsw i32 %.08931092.i, 2        ; 3 uses
  %i.oqr = icmp slt i32 %i.oqq, %i.npx
  br i1 %i.oqr, label %.lr.ph1094.i, label %._crit_edge1095.i, !llvm.loop !464

._crit_edge1095.i:                                ; preds = %.lr.ph1094.i, %bb.rc
  %.1908.lcssa.i = phi ptr [ %gep.i561, %bb.rc ], [ %i.oqj, %.lr.ph1094.i ]
  %.1906.lcssa.i = phi ptr [ %gep1125.i, %bb.rc ], [ %i.oqk, %.lr.ph1094.i ] ; 2 uses
  %.1904.lcssa.i = phi ptr [ %gep1127.i, %bb.rc ], [ %i.oql, %.lr.ph1094.i ]
  %.1902.lcssa.i = phi ptr [ %gep1129.i, %bb.rc ], [ %i.oqm, %.lr.ph1094.i ]
  %.1900.lcssa.i = phi ptr [ %gep1131.i, %bb.rc ], [ %i.oqn, %.lr.ph1094.i ]
  %.0895.lcssa.i = phi ptr [ %i.oon, %bb.rc ], [ %i.oqo, %.lr.ph1094.i ]
  %.0894.lcssa.i = phi ptr [ %i.oot, %bb.rc ], [ %i.oqp, %.lr.ph1094.i ]
  %.0893.lcssa.i = phi i32 [ %i.nps, %bb.rc ], [ %i.oqq, %.lr.ph1094.i ]
  %i.oqs = icmp slt i32 %.0893.lcssa.i, %i.npu
  br i1 %i.oqs, label %bb.rd, label %bb.re

bb.rd:                                            ; preds = %._crit_edge1095.i
  %i.oqt = load float, ptr %.1906.lcssa.i, align 4, !tbaa !22, !noalias !402
  %i.oqu = load float, ptr %.0894.lcssa.i, align 4, !tbaa !22, !noalias !402
  %i.oqv = fadd reassoc nsz arcp contract afn float %i.oqu, %i.oqt
  store float %i.oqv, ptr %.0895.lcssa.i, align 4, !tbaa !22, !noalias !402
  %i.oqw = load float, ptr %.1908.lcssa.i, align 4, !tbaa !22, !noalias !402
  %i.oqx = load float, ptr %.1902.lcssa.i, align 4, !tbaa !22, !noalias !402
  %i.oqy = load float, ptr %.1904.lcssa.i, align 4, !tbaa !22, !noalias !402
  %i.oqz = load float, ptr %.1900.lcssa.i, align 4, !tbaa !22, !noalias !402
  %i.ora = fadd reassoc nsz arcp contract afn float %i.oqw, %i.oqy
  %i.orb = fadd reassoc nsz arcp contract afn float %i.oqx, %i.oqz
  %i.orc = fsub reassoc nsz arcp contract afn float %i.ora, %i.orb
  %i.ord = fmul reassoc nsz arcp contract afn float %i.orc, 5.000000e-01
  store float %i.ord, ptr %.1906.lcssa.i, align 4, !tbaa !22, !noalias !402
  br label %bb.re

bb.re:                                            ; preds = %bb.rd, %._crit_edge1095.i, %bb.rb, %._crit_edge1114.i
  %indvars.iv.next1276.i = add nuw nsw i64 %indvars.iv1275.i, 1 ; 2 uses
  %exitcond1120.not = icmp eq i64 %indvars.iv.next1276.i, %i.lzf
  %indvar.next3951 = add i64 %indvar3950, 1
  br i1 %exitcond1120.not, label %._crit_edge1123.i, label %.lr.ph1122.i

.preheader1013.i:                                 ; preds = %._crit_edge1135.i, %.preheader1014.i
  br i1 %i.lxn, label %.lr.ph1160.i, label %._crit_edge1161.i

.lr.ph1160.i:                                     ; preds = %.preheader1013.i
  %i.ore = add nuw nsw i32 %i.nps, 2              ; 3 uses
  %i.orf = add nsw i32 %i.npu, -2                 ; 4 uses
  %i.org = sext i32 %i.orf to i64                 ; 3 uses
  br i1 %i.lyu, label %.lr.ph1143.i.preheader.preheader, label %._crit_edge1161.i

.lr.ph1143.i.preheader.preheader:                 ; preds = %.lr.ph1160.i
  %i.orh = zext nneg i32 %i.nps to i64            ; 2 uses
  %i.ori = add nsw i32 %.neg.i554, 6
  %i.orj = add i32 %i.ori, %i.mba                 ; 2 uses
  %i.ork = sext i32 %i.orj to i64
  %6 = add nsw i64 %i.ork, 4611686018427387901
  %i.orl = zext nneg i32 %i.nps to i64            ; 2 uses
  %7 = sext i32 %i.orj to i64
  %8 = add nsw i64 %7, 4611686018427387901
  %i.orm = zext nneg i32 %i.nps to i64            ; 2 uses
  %i.orn = add nsw i32 %.neg.i554, 6
  %i.oro = add i32 %i.orn, %i.mba
  %i.orp = sext i32 %i.oro to i64
  %9 = add nsw i64 %i.orp, 4611686018427387901
  %i.orq = add i32 %.neg.i554, %i.mba
  %i.orr = add i32 %i.orq, 6
  %i.ors = sext i32 %i.orr to i64
  %10 = add nsw i64 %i.ors, -3
  %i.ort = add i32 %.neg.i554, %i.mba
  %i.oru = add i32 %i.ort, 6
  %i.orv = sext i32 %i.oru to i64
  %11 = add nsw i64 %i.orv, -3
  %i.orw = add i32 %.neg.i554, %i.mba
  %i.orx = add i32 %i.orw, 6
  %i.ory = sext i32 %i.orx to i64
  %12 = add nsw i64 %i.ory, -3
  br label %.lr.ph1143.i.preheader

.preheader1009.i:                                 ; preds = %.preheader1009.i.preheader, %._crit_edge1135.i
  %indvars.iv1281.i = phi i64 [ %indvars.iv.next1282.i, %._crit_edge1135.i ], [ 4, %.preheader1009.i.preheader ] ; 3 uses
  %i.orz = mul nuw nsw i64 %indvars.iv1281.i, 136 ; 5 uses
  %indvars.iv1281.tr.i = trunc i64 %indvars.iv1281.i to i32
  %i.osa = shl i32 %indvars.iv1281.tr.i, 1
  %i.osb = and i32 %i.osa, 14                     ; 5 uses
  br i1 %i.nvq, label %.epil.preheader4755, label %.preheader1009.i.new

.preheader1009.i.new:                             ; preds = %.preheader1009.i
  %i.osc = shl nuw nsw i32 %i.osb, 1
  %i.osd = lshr i32 %.fr1043, %i.osc
  %i.ose = and i32 %i.osd, 3
  %i.osf = zext nneg i32 %i.ose to i64
  %i.osg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.osf
  %i.osh = load ptr, ptr %i.osg, align 8, !tbaa !407, !noalias !408
  %i.osi = shl nuw nsw i32 %i.osb, 1
  %i.osj = or disjoint i32 %i.osi, 2
  %i.osk = lshr i32 %.fr1043, %i.osj
  %i.osl = and i32 %i.osk, 3
  %i.osm = zext nneg i32 %i.osl to i64
  %i.osn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.osm
  %i.oso = load ptr, ptr %i.osn, align 8, !tbaa !407, !noalias !408
  %i.osp = shl nuw nsw i32 %i.osb, 1
  %i.osq = lshr i32 %.fr1043, %i.osp
  %i.osr = and i32 %i.osq, 3
  %i.oss = zext nneg i32 %i.osr to i64
  %i.ost = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.oss
  %i.osu = load ptr, ptr %i.ost, align 8, !tbaa !407, !noalias !408
  %i.osv = shl nuw nsw i32 %i.osb, 1
  %i.osw = or disjoint i32 %i.osv, 2
  %i.osx = lshr i32 %.fr1043, %i.osw
  %i.osy = and i32 %i.osx, 3
  %i.osz = zext nneg i32 %i.osy to i64
  %i.ota = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.osz
  %i.otb = load ptr, ptr %i.ota, align 8, !tbaa !407, !noalias !408
  br label %bb.rg

._crit_edge1135.i.unr-lcssa:                      ; preds = %bb.rg
  br i1 %lcmp.mod4760.not, label %._crit_edge1135.i, label %.epil.preheader4755

.epil.preheader4755:                              ; preds = %._crit_edge1135.i.unr-lcssa, %.preheader1009.i
  %indvars.iv1278.i.epil.init = phi i64 [ 4, %.preheader1009.i ], [ %indvars.iv.next1279.i.3, %._crit_edge1135.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4761)
  br label %bb.rf

bb.rf:                                            ; preds = %bb.rf, %.epil.preheader4755
  %indvars.iv1278.i.epil = phi i64 [ %indvars.iv1278.i.epil.init, %.epil.preheader4755 ], [ %indvars.iv.next1279.i.epil, %bb.rf ] ; 3 uses
  %epil.iter4759 = phi i64 [ 0, %.epil.preheader4755 ], [ %epil.iter4759.next, %bb.rf ]
  %i.otc = add nuw nsw i64 %indvars.iv1278.i.epil, %i.orz ; 2 uses
  %i.otd = trunc nuw nsw i64 %indvars.iv1278.i.epil to i32
  %i.ote = and i32 %i.otd, 1
  %i.otf = or disjoint i32 %i.ote, %i.osb
  %i.otg = shl nuw nsw i32 %i.otf, 1
  %i.oth = lshr i32 %.fr1043, %i.otg
  %i.oti = and i32 %i.oth, 3
  %i.otj = getelementptr inbounds nuw [4 x i8], ptr %i.lxh, i64 %i.otc
  %i.otk = load float, ptr %i.otj, align 4, !tbaa !22, !noalias !402
  %i.otl = zext nneg i32 %i.oti to i64
  %i.otm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.otl
  %i.otn = load ptr, ptr %i.otm, align 8, !tbaa !407, !noalias !408
  %i.oto = getelementptr inbounds nuw [4 x i8], ptr %i.otn, i64 %i.otc
  store float %i.otk, ptr %i.oto, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1279.i.epil = add nuw nsw i64 %indvars.iv1278.i.epil, 1
  %epil.iter4759.next = add i64 %epil.iter4759, 1 ; 2 uses
  %epil.iter4759.cmp.not = icmp eq i64 %epil.iter4759.next, %xtraiter4758
  br i1 %epil.iter4759.cmp.not, label %._crit_edge1135.i, label %bb.rf, !llvm.loop !465

._crit_edge1135.i:                                ; preds = %bb.rf, %._crit_edge1135.i.unr-lcssa
  %indvars.iv.next1282.i = add nuw nsw i64 %indvars.iv1281.i, 1 ; 2 uses
  %exitcond1126.not = icmp eq i64 %indvars.iv.next1282.i, %smax1125
  br i1 %exitcond1126.not, label %.preheader1013.i, label %.preheader1009.i

bb.rg:                                            ; preds = %bb.rg, %.preheader1009.i.new
  %indvars.iv1278.i = phi i64 [ 4, %.preheader1009.i.new ], [ %indvars.iv.next1279.i.3, %bb.rg ] ; 5 uses
  %niter4763 = phi i64 [ 0, %.preheader1009.i.new ], [ %niter4763.next.3, %bb.rg ]
  %i.otp = add nuw nsw i64 %indvars.iv1278.i, %i.orz ; 2 uses
  %i.otq = getelementptr inbounds nuw [4 x i8], ptr %i.lxh, i64 %i.otp
  %i.otr = load float, ptr %i.otq, align 16, !tbaa !22, !noalias !402
  %i.ots = getelementptr inbounds nuw [4 x i8], ptr %i.osh, i64 %i.otp
  store float %i.otr, ptr %i.ots, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1279.i = or disjoint i64 %indvars.iv1278.i, 1
  %i.ott = add nuw nsw i64 %indvars.iv.next1279.i, %i.orz ; 2 uses
  %i.otu = getelementptr inbounds nuw [4 x i8], ptr %i.lxh, i64 %i.ott
  %i.otv = load float, ptr %i.otu, align 4, !tbaa !22, !noalias !402
  %i.otw = getelementptr inbounds nuw [4 x i8], ptr %i.oso, i64 %i.ott
  store float %i.otv, ptr %i.otw, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1279.i.1 = or disjoint i64 %indvars.iv1278.i, 2
  %i.otx = add nuw nsw i64 %indvars.iv.next1279.i.1, %i.orz ; 2 uses
  %i.oty = getelementptr inbounds nuw [4 x i8], ptr %i.lxh, i64 %i.otx
  %i.otz = load float, ptr %i.oty, align 8, !tbaa !22, !noalias !402
  %i.oua = getelementptr inbounds nuw [4 x i8], ptr %i.osu, i64 %i.otx
  store float %i.otz, ptr %i.oua, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1279.i.2 = or disjoint i64 %indvars.iv1278.i, 3
  %i.oub = add nuw nsw i64 %indvars.iv.next1279.i.2, %i.orz ; 2 uses
  %i.ouc = getelementptr inbounds nuw [4 x i8], ptr %i.lxh, i64 %i.oub
  %i.oud = load float, ptr %i.ouc, align 4, !tbaa !22, !noalias !402
  %i.oue = getelementptr inbounds nuw [4 x i8], ptr %i.otb, i64 %i.oub
  store float %i.oud, ptr %i.oue, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1279.i.3 = add nuw nsw i64 %indvars.iv1278.i, 4 ; 2 uses
  %niter4763.next.3 = add i64 %niter4763, 4       ; 2 uses
  %niter4763.ncmp.3 = icmp eq i64 %niter4763.next.3, %unroll_iter4762
  br i1 %niter4763.ncmp.3, label %._crit_edge1135.i.unr-lcssa, label %bb.rg

._crit_edge1161.i:                                ; preds = %._crit_edge1158.i.loopexit, %.lr.ph1160.i, %.preheader1013.i
  %i.ouf = select i1 %i.npr, i32 4, i32 8         ; 3 uses
  %i.oug = or disjoint i32 %i.ouf, %i.maw         ; 7 uses
  %.neg951.i = select i1 %i.npt, i32 -4, i32 -8   ; 2 uses
  %i.ouh = add nsw i32 %i.may, %.neg951.i         ; 3 uses
  br i1 %i.lyy, label %.lr.ph1175.i, label %._crit_edge1176.split.i

.lr.ph1175.i:                                     ; preds = %._crit_edge1161.i
  %i.oui = icmp slt i32 %i.oug, %i.ouh
  %i.ouj = load ptr, ptr @lmmse_gamma_out, align 8, !noalias !408 ; 7 uses
  %i.ouk = icmp eq ptr %i.ouj, null
  br i1 %i.oui, label %.lr.ph1168.i.preheader, label %._crit_edge1176.split.i

.lr.ph1168.i.preheader:                           ; preds = %.lr.ph1175.i
  %reass.sub = sub nsw i32 %i.oug, %i.maw
  %.reass1171.i = add nsw i32 %reass.sub, 4
  %i.oul = add i32 %.neg951.i, %i.may             ; 2 uses
  %i.oum = add i32 %i.oul, %i.mas
  %i.oun = sub i32 %i.oum, %i.ouf                 ; 2 uses
  %i.ouo = zext i32 %i.oun to i64
  %i.oup = add nuw nsw i64 %i.ouo, 1              ; 2 uses
  %i.ouq = add i32 %i.oul, %i.mar
  %i.our = sub i32 %i.ouq, %i.ouf                 ; 2 uses
  %i.ous = zext i32 %i.our to i64
  %i.out = add nuw nsw i64 %i.ous, 1              ; 2 uses
  %min.iters.check3703 = icmp ult i32 %i.our, 7
  %n.vec3705 = and i64 %i.out, 8589934584         ; 5 uses
  %i.ouu = trunc i64 %n.vec3705 to i32
  %i.ouv = add i32 %i.oug, %i.ouu
  %i.ouw = shl nuw nsw i64 %n.vec3705, 2          ; 3 uses
  %i.oux = shl nuw nsw i64 %n.vec3705, 4
  %cmp.n3738 = icmp eq i64 %i.out, %n.vec3705
  %min.iters.check3680 = icmp ult i32 %i.oun, 7
  %n.vec3682 = and i64 %i.oup, 8589934584         ; 5 uses
  %i.ouy = trunc i64 %n.vec3682 to i32
  %i.ouz = add i32 %i.oug, %i.ouy
  %i.ova = shl nuw nsw i64 %n.vec3682, 2          ; 3 uses
  %i.ovb = shl nuw nsw i64 %n.vec3682, 4
  %cmp.n3696 = icmp eq i64 %i.oup, %n.vec3682
  br label %.lr.ph1168.i

.lr.ph1143.i.preheader:                           ; preds = %.lr.ph1143.i.preheader.preheader, %._crit_edge1158.i.loopexit
  %.08901159.i = phi i32 [ %i.pkn, %._crit_edge1158.i.loopexit ], [ 0, %.lr.ph1143.i.preheader.preheader ]
  br label %.lr.ph1143.i

.lr.ph1143.i:                                     ; preds = %.lr.ph1143.i.preheader, %._crit_edge1140.i
  %indvar3893 = phi i64 [ 0, %.lr.ph1143.i.preheader ], [ %indvar.next3894, %._crit_edge1140.i ] ; 2 uses
  %indvars.iv1287.i = phi i64 [ %i.lza, %.lr.ph1143.i.preheader ], [ %indvars.iv.next1288.i, %._crit_edge1140.i ] ; 3 uses
  %i.ovc = mul i64 %indvar3893, 544               ; 4 uses
  %scevgep3895.a = getelementptr i8, ptr %i.lzr, i64 %i.ovc
  %scevgep3897.a = getelementptr i8, ptr %i.lzt, i64 %i.ovc
  %indvars.iv1287.tr.i = trunc i64 %indvars.iv1287.i to i32
  %i.ovd = shl i32 %indvars.iv1287.tr.i, 1
  %i.ove = and i32 %i.ovd, 14                     ; 2 uses
  %i.ovf = shl nuw nsw i32 %i.ove, 1
  %i.ovg = lshr i32 %.fr1043, %i.ovf              ; 3 uses
  %i.ovh = and i32 %i.ovg, 1                      ; 2 uses
  %i.ovi = or disjoint i32 %i.ovh, %i.ore         ; 2 uses
  %i.ovj = icmp slt i32 %i.ovi, %i.orf
  br i1 %i.ovj, label %.lr.ph1139.i, label %._crit_edge1140.i

.lr.ph1139.i:                                     ; preds = %.lr.ph1143.i
  %i.ovk = or disjoint i32 %i.ovh, %i.ove
  %i.ovl = shl nuw nsw i32 %i.ovk, 1
  %i.ovm = lshr i32 %.fr1043, %i.ovl
  %i.ovn = and i32 %i.ovm, 3
  %i.ovo = mul nuw nsw i64 %indvars.iv1287.i, 136 ; 2 uses
  %i.ovp = getelementptr inbounds nuw [4 x i8], ptr %i.lxd, i64 %i.ovo ; 2 uses
  %i.ovq = zext nneg i32 %i.ovn to i64
  %i.ovr = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ovq
  %i.ovs = load ptr, ptr %i.ovr, align 8, !tbaa !407, !noalias !408 ; 3 uses
  %i.ovt = getelementptr inbounds nuw [4 x i8], ptr %i.ovs, i64 %i.ovo ; 2 uses
  %i.ovu = zext nneg i32 %i.ovi to i64            ; 5 uses
  %i.ovv = and i32 %i.ovg, 1
  %13 = or disjoint i32 %i.nps, %i.ovv
  %14 = zext nneg i32 %13 to i64
  %i.ovw = sub nsw i64 %10, %14                   ; 2 uses
  %i.ovx = lshr i64 %i.ovw, 1
  %i.ovy = add nuw i64 %i.ovx, 1                  ; 2 uses
  %min.iters.check3906 = icmp ult i64 %i.ovw, 8
  br i1 %min.iters.check3906, label %scalar.ph3905.preheader, label %vector.memcheck3892

scalar.ph3905.preheader:                          ; preds = %vector.body3912, %vector.memcheck3892, %.lr.ph1139.i
  %indvars.iv1284.i.ph = phi i64 [ %i.ovu, %vector.memcheck3892 ], [ %i.ovu, %.lr.ph1139.i ], [ %i.owt, %vector.body3912 ]
  br label %scalar.ph3905

vector.memcheck3892:                              ; preds = %.lr.ph1139.i
  %i.ovz = and i32 %i.ovg, 1
  %i.owa = zext nneg i32 %i.ovz to i64            ; 2 uses
  %i.owb = or disjoint i64 %i.orm, %i.owa
  %i.owc = shl nuw nsw i64 %i.owb, 2              ; 4 uses
  %scevgep3896.a = getelementptr i8, ptr %scevgep3895.a, i64 %i.owc
  %i.owd = or disjoint i64 %i.orm, %i.owa
  %i.owe = sub nsw i64 %9, %i.owd
  %i.owf = shl i64 %i.owe, 2
  %i.owg = and i64 %i.owf, -8                     ; 2 uses
  %i.owh = getelementptr i8, ptr %scevgep3897.a, i64 %i.owg
  %scevgep3899 = getelementptr i8, ptr %i.owh, i64 %i.owc
  %i.owi = getelementptr i8, ptr %i.ovs, i64 %i.lzj
  %i.owj = getelementptr i8, ptr %i.owi, i64 8
  %i.owk = getelementptr i8, ptr %i.owj, i64 %i.ovc
  %scevgep3900 = getelementptr i8, ptr %i.owk, i64 %i.owc
  %i.owl = getelementptr i8, ptr %i.ovs, i64 %i.lzj
  %i.owm = getelementptr i8, ptr %i.owl, i64 2188
  %i.own = getelementptr i8, ptr %i.owm, i64 %i.ovc
  %i.owo = getelementptr i8, ptr %i.own, i64 %i.owg
  %scevgep3901 = getelementptr i8, ptr %i.owo, i64 %i.owc
  %bound03902 = icmp ult ptr %scevgep3896.a, %scevgep3901
  %bound13903 = icmp ult ptr %scevgep3900, %scevgep3899
  %found.conflict3904 = and i1 %bound03902, %bound13903
  br i1 %found.conflict3904, label %scalar.ph3905.preheader, label %vector.ph3907

vector.ph3907:                                    ; preds = %vector.memcheck3892
  %i.owp = and i64 %i.ovy, 3                      ; 2 uses
  %i.owq = icmp eq i64 %i.owp, 0
  %i.owr = select i1 %i.owq, i64 4, i64 %i.owp
  %n.vec3908 = sub i64 %i.ovy, %i.owr             ; 2 uses
  %i.ows = shl i64 %n.vec3908, 1
  %i.owt = add i64 %i.ows, %i.ovu
  %broadcast.splatinsert3909 = insertelement <4 x i64> poison, i64 %i.ovu, i64 0
  %broadcast.splat3910 = shufflevector <4 x i64> %broadcast.splatinsert3909, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction3911 = add nuw nsw <4 x i64> %broadcast.splat3910, <i64 0, i64 2, i64 4, i64 6>
  %invariant.gep4887 = getelementptr [4 x i8], ptr %i.ovt, i64 %i.ovu
  br label %vector.body3912

vector.body3912:                                  ; preds = %vector.body3912, %vector.ph3907
  %index3913 = phi i64 [ 0, %vector.ph3907 ], [ %index.next3940, %vector.body3912 ] ; 2 uses
  %vec.ind3914 = phi <4 x i64> [ %induction3911, %vector.ph3907 ], [ %vec.ind.next3941, %vector.body3912 ] ; 2 uses
  %wide.gep3915 = getelementptr inbounds nuw [4 x i8], ptr %i.ovp, <4 x i64> %vec.ind3914 ; 2 uses
  %i.owu = extractelement <4 x ptr> %wide.gep3915, i64 0 ; 4 uses
  %.idx4576 = shl nuw i64 %index3913, 3
  %gep4888 = getelementptr i8, ptr %invariant.gep4887, i64 %.idx4576 ; 7 uses
  %i.owv = getelementptr inbounds i8, ptr %gep4888, i64 -8
  %wide.vec3916 = load <8 x float>, ptr %i.owv, align 4, !tbaa !22, !alias.scope !466, !noalias !402
  %strided.vec3917.a = shufflevector <8 x float> %wide.vec3916, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.oww = getelementptr inbounds i8, ptr %gep4888, i64 -4
  %wide.vec3918.a = load <8 x float>, ptr %i.oww, align 4, !tbaa !22, !alias.scope !466, !noalias !402 ; 2 uses
  %strided.vec3919.a = shufflevector <8 x float> %wide.vec3918.a, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec3920 = shufflevector <8 x float> %wide.vec3918.a, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 5 uses
  %i.owx = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3917.a, %strided.vec3920
  %i.owy = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.owx)
  %i.owz = getelementptr inbounds nuw i8, ptr %i.owu, i64 4
  %wide.vec3921 = load <8 x float>, ptr %i.owz, align 4, !tbaa !22, !alias.scope !469, !noalias !402
  %strided.vec3922 = shufflevector <8 x float> %wide.vec3921, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.oxa = getelementptr inbounds i8, ptr %i.owu, i64 -4
  %wide.vec3923 = load <8 x float>, ptr %i.oxa, align 4, !tbaa !22, !alias.scope !469, !noalias !402
  %strided.vec3924.a = shufflevector <8 x float> %wide.vec3923, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.oxb = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3922, %strided.vec3924.a
  %i.oxc = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.oxb)
  %i.oxd = fadd reassoc nsz arcp contract afn <4 x float> %i.oxc, splat (float 1.000000e+00) ; 2 uses
  %i.oxe = fadd reassoc nsz arcp contract afn <4 x float> %i.oxd, %i.owy
  %i.oxf = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.oxe ; 2 uses
  %i.oxg = getelementptr inbounds nuw i8, ptr %gep4888, i64 4
  %wide.vec3925.a = load <8 x float>, ptr %i.oxg, align 4, !tbaa !22, !alias.scope !466, !noalias !402 ; 2 uses
  %strided.vec3926.a = shufflevector <8 x float> %wide.vec3925.a, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec3927 = shufflevector <8 x float> %wide.vec3925.a, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.oxh = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3927, %strided.vec3920
  %i.oxi = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.oxh)
  %i.oxj = fadd reassoc nsz arcp contract afn <4 x float> %i.oxd, %i.oxi
  %i.oxk = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.oxj ; 2 uses
  %i.oxl = getelementptr inbounds i8, ptr %gep4888, i64 -1088
  %wide.vec3928 = load <8 x float>, ptr %i.oxl, align 4, !tbaa !22, !alias.scope !466, !noalias !402
  %strided.vec3929 = shufflevector <8 x float> %wide.vec3928, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.oxm = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3929, %strided.vec3920
  %i.oxn = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.oxm)
  %i.oxo = getelementptr inbounds nuw i8, ptr %i.owu, i64 544
  %wide.vec3930 = load <8 x float>, ptr %i.oxo, align 4, !tbaa !22, !alias.scope !469, !noalias !402
  %strided.vec3931 = shufflevector <8 x float> %wide.vec3930, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.oxp = getelementptr inbounds i8, ptr %i.owu, i64 -544
  %wide.vec3932 = load <8 x float>, ptr %i.oxp, align 4, !tbaa !22, !alias.scope !469, !noalias !402
  %strided.vec3933 = shufflevector <8 x float> %wide.vec3932, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.oxq = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3931, %strided.vec3933
  %i.oxr = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.oxq)
  %i.oxs = fadd reassoc nsz arcp contract afn <4 x float> %i.oxr, splat (float 1.000000e+00) ; 2 uses
  %i.oxt = fadd reassoc nsz arcp contract afn <4 x float> %i.oxs, %i.oxn
  %i.oxu = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.oxt ; 2 uses
  %i.oxv = getelementptr inbounds nuw i8, ptr %gep4888, i64 1088
  %wide.vec3934 = load <8 x float>, ptr %i.oxv, align 4, !tbaa !22, !alias.scope !466, !noalias !402
  %strided.vec3935 = shufflevector <8 x float> %wide.vec3934, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.oxw = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3935, %strided.vec3920
  %i.oxx = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.oxw)
  %i.oxy = fadd reassoc nsz arcp contract afn <4 x float> %i.oxs, %i.oxx
  %i.oxz = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.oxy ; 2 uses
  %i.oya = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3924.a, %strided.vec3919.a
  %i.oyb = fmul reassoc nsz arcp contract afn <4 x float> %i.oya, %i.oxf
  %i.oyc = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3922, %strided.vec3926.a
  %i.oyd = fmul reassoc nsz arcp contract afn <4 x float> %i.oyc, %i.oxk
  %i.oye = fadd reassoc nsz arcp contract afn <4 x float> %i.oyb, %i.oyd
  %i.oyf = getelementptr inbounds i8, ptr %gep4888, i64 -544
  %wide.vec3936 = load <8 x float>, ptr %i.oyf, align 4, !tbaa !22, !alias.scope !466, !noalias !402
  %strided.vec3937 = shufflevector <8 x float> %wide.vec3936, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.oyg = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3933, %strided.vec3937
  %i.oyh = fmul reassoc nsz arcp contract afn <4 x float> %i.oyg, %i.oxu
  %i.oyi = fadd reassoc nsz arcp contract afn <4 x float> %i.oye, %i.oyh
  %i.oyj = getelementptr inbounds nuw i8, ptr %gep4888, i64 544
  %wide.vec3938 = load <8 x float>, ptr %i.oyj, align 4, !tbaa !22, !alias.scope !466, !noalias !402
  %strided.vec3939 = shufflevector <8 x float> %wide.vec3938, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.oyk = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3931, %strided.vec3939
  %i.oyl = fmul reassoc nsz arcp contract afn <4 x float> %i.oyk, %i.oxz
  %i.oym = fadd reassoc nsz arcp contract afn <4 x float> %i.oyi, %i.oyl
  %i.oyn = fadd reassoc nsz arcp contract afn <4 x float> %i.oxk, %i.oxf
  %i.oyo = fadd reassoc nsz arcp contract afn <4 x float> %i.oyn, %i.oxu
  %i.oyp = fadd reassoc nsz arcp contract afn <4 x float> %i.oyo, %i.oxz
  %i.oyq = fdiv reassoc nsz arcp contract afn <4 x float> %i.oym, %i.oyp
  %i.oyr = fadd reassoc nsz arcp contract afn <4 x float> %i.oyq, %strided.vec3920
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.oyr, <4 x ptr> align 4 %wide.gep3915, <4 x i1> splat (i1 true)), !tbaa !22, !alias.scope !469, !noalias !471
  %index.next3940 = add nuw i64 %index3913, 4     ; 2 uses
  %vec.ind.next3941 = add nuw nsw <4 x i64> %vec.ind3914, splat (i64 8)
  %i.oys = icmp eq i64 %index.next3940, %n.vec3908
  br i1 %i.oys, label %scalar.ph3905.preheader, label %vector.body3912, !llvm.loop !472

._crit_edge1140.i:                                ; preds = %scalar.ph3905, %.lr.ph1143.i
  %indvars.iv.next1288.i = add nuw nsw i64 %indvars.iv1287.i, 1 ; 2 uses
  %exitcond1130.not = icmp eq i64 %indvars.iv.next1288.i, %i.lzh
  %indvar.next3894 = add i64 %indvar3893, 1
  br i1 %exitcond1130.not, label %.lr.ph1151.i, label %.lr.ph1143.i

scalar.ph3905:                                    ; preds = %scalar.ph3905.preheader, %scalar.ph3905
  %indvars.iv1284.i = phi i64 [ %indvars.iv.next1285.i, %scalar.ph3905 ], [ %indvars.iv1284.i.ph, %scalar.ph3905.preheader ] ; 3 uses
  %i.oyt = getelementptr inbounds nuw [4 x i8], ptr %i.ovp, i64 %indvars.iv1284.i ; 5 uses
  %i.oyu = getelementptr inbounds nuw [4 x i8], ptr %i.ovt, i64 %indvars.iv1284.i ; 9 uses
  %i.oyv = getelementptr inbounds i8, ptr %i.oyu, i64 -4
  %i.oyw = getelementptr inbounds nuw i8, ptr %i.oyu, i64 4
  %i.oyx = getelementptr inbounds nuw i8, ptr %i.oyt, i64 544
  %i.oyy = getelementptr inbounds i8, ptr %i.oyt, i64 -544
  %i.oyz = getelementptr inbounds nuw i8, ptr %i.oyt, i64 4
  %i.oza = getelementptr inbounds i8, ptr %i.oyt, i64 -4
  %i.ozb = load float, ptr %i.oyx, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.ozc = load float, ptr %i.oyy, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.ozd = load float, ptr %i.oyz, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.oze = load float, ptr %i.oza, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.ozf = fsub reassoc nsz arcp contract afn float %i.ozb, %i.ozc
  %i.ozg = fsub reassoc nsz arcp contract afn float %i.ozd, %i.oze
  %i.ozh = insertelement <2 x float> poison, float %i.ozg, i64 0
  %i.ozi = insertelement <2 x float> %i.ozh, float %i.ozf, i64 1
  %i.ozj = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ozi)
  %i.ozk = fadd reassoc nsz arcp contract afn <2 x float> %i.ozj, splat (float 1.000000e+00)
  %i.ozl = shufflevector <2 x float> %i.ozk, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ozm = getelementptr inbounds nuw i8, ptr %i.oyu, i64 544
  %i.ozn = getelementptr inbounds i8, ptr %i.oyu, i64 -544
  %i.ozo = load float, ptr %i.oyw, align 4, !tbaa !22, !noalias !402
  %i.ozp = load float, ptr %i.oyu, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.ozq = load float, ptr %i.oyv, align 4, !tbaa !22, !noalias !402
  %i.ozr = load float, ptr %i.ozm, align 4, !tbaa !22, !noalias !402
  %i.ozs = load float, ptr %i.ozn, align 4, !tbaa !22, !noalias !402
  %i.ozt = getelementptr inbounds nuw i8, ptr %i.oyu, i64 1088
  %i.ozu = getelementptr inbounds i8, ptr %i.oyu, i64 -1088
  %i.ozv = getelementptr inbounds nuw i8, ptr %i.oyu, i64 8
  %i.ozw = getelementptr inbounds i8, ptr %i.oyu, i64 -8
  %i.ozx = load float, ptr %i.ozt, align 4, !tbaa !22, !noalias !402
  %i.ozy = load float, ptr %i.ozu, align 4, !tbaa !22, !noalias !402
  %i.ozz = load float, ptr %i.ozv, align 4, !tbaa !22, !noalias !402
  %i.paa = load float, ptr %i.ozw, align 4, !tbaa !22, !noalias !402
  %i.pab = insertelement <4 x float> poison, float %i.paa, i64 0
  %i.pac = insertelement <4 x float> %i.pab, float %i.ozz, i64 1
  %i.pad = insertelement <4 x float> %i.pac, float %i.ozy, i64 2
  %i.pae = insertelement <4 x float> %i.pad, float %i.ozx, i64 3
  %i.paf = insertelement <4 x float> poison, float %i.ozp, i64 0
  %i.pag = shufflevector <4 x float> %i.paf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pah = fsub reassoc nsz arcp contract afn <4 x float> %i.pae, %i.pag
  %i.pai = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pah)
  %i.paj = fadd reassoc nsz arcp contract afn <4 x float> %i.ozl, %i.pai
  %i.pak = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.paj ; 2 uses
  %i.pal = fsub reassoc nsz arcp contract afn float %i.ozb, %i.ozr
  %i.pam = fsub reassoc nsz arcp contract afn float %i.ozc, %i.ozs
  %i.pan = fsub reassoc nsz arcp contract afn float %i.ozd, %i.ozo
  %i.pao = fsub reassoc nsz arcp contract afn float %i.oze, %i.ozq
  %i.pap = insertelement <4 x float> poison, float %i.pao, i64 0
  %i.paq = insertelement <4 x float> %i.pap, float %i.pan, i64 1
  %i.par = insertelement <4 x float> %i.paq, float %i.pam, i64 2
  %i.pas = insertelement <4 x float> %i.par, float %i.pal, i64 3
  %i.pat = fmul reassoc nsz arcp contract afn <4 x float> %i.pas, %i.pak
  %i.pau = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.pat)
  %i.pav = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.pak)
  %i.paw = fdiv reassoc nsz arcp contract afn float %i.pau, %i.pav
  %i.pax = fadd reassoc nsz arcp contract afn float %i.paw, %i.ozp
  store float %i.pax, ptr %i.oyt, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1285.i = add nuw nsw i64 %indvars.iv1284.i, 2 ; 2 uses
  %i.pay = icmp slt i64 %indvars.iv.next1285.i, %i.org
  br i1 %i.pay, label %scalar.ph3905, label %._crit_edge1140.i, !llvm.loop !473

.lr.ph1151.i:                                     ; preds = %._crit_edge1140.i, %._crit_edge1149.i
  %indvar3806 = phi i64 [ %indvar.next3807, %._crit_edge1149.i ], [ 0, %._crit_edge1140.i ] ; 2 uses
  %indvars.iv1293.i = phi i64 [ %indvars.iv.next1294.i, %._crit_edge1149.i ], [ %i.lza, %._crit_edge1140.i ] ; 3 uses
  %i.paz = mul i64 %indvar3806, 544               ; 4 uses
  %i.pba = add i64 %i.lzk, %i.paz
  %i.pbb = add i64 %i.lzl, %i.paz
  %scevgep3813.a = getelementptr i8, ptr %i.lzv, i64 %i.paz
  %scevgep3815 = getelementptr i8, ptr %i.lzx, i64 %i.paz
  %indvars.iv1293.tr.i = trunc i64 %indvars.iv1293.i to i32
  %i.pbc = shl i32 %indvars.iv1293.tr.i, 1
  %i.pbd = and i32 %i.pbc, 14                     ; 2 uses
  %.tr.i968.i = shl nuw nsw i32 %i.pbd, 1
  %i.pbe = or disjoint i32 %.tr.i968.i, 2
  %i.pbf = lshr i32 %.fr1043, %i.pbe              ; 3 uses
  %i.pbg = and i32 %i.pbf, 1                      ; 2 uses
  %i.pbh = or disjoint i32 %i.pbg, %i.ore         ; 2 uses
  %i.pbi = icmp slt i32 %i.pbh, %i.orf
  br i1 %i.pbi, label %.preheader.lr.ph.i559, label %._crit_edge1149.i

.preheader.lr.ph.i559:                            ; preds = %.lr.ph1151.i
  %i.pbj = or disjoint i32 %i.pbg, %i.pbd
  %i.pbk = shl nuw nsw i32 %i.pbj, 1
  %i.pbl = xor i32 %i.pbk, 2
  %i.pbm = lshr i32 %.fr1043, %i.pbl
  %i.pbn = and i32 %i.pbm, 3                      ; 2 uses
  %i.pbo = mul nuw nsw i64 %indvars.iv1293.i, 136 ; 3 uses
  %i.pbp = getelementptr inbounds nuw [4 x i8], ptr %i.lxd, i64 %i.pbo ; 2 uses
  %i.pbq = zext nneg i32 %i.pbn to i64
  %i.pbr = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.pbq
  %i.pbs = zext nneg i32 %i.pbh to i64            ; 5 uses
  %i.pbt = load ptr, ptr %i.pbr, align 8, !tbaa !407, !noalias !408 ; 3 uses
  %i.pbu = getelementptr inbounds nuw [4 x i8], ptr %i.pbt, i64 %i.pbo ; 2 uses
  %i.pbv = sub nsw i32 2, %i.pbn
  %i.pbw = sext i32 %i.pbv to i64
  %i.pbx = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.pbw
  %i.pby = load ptr, ptr %i.pbx, align 8, !tbaa !407, !noalias !408 ; 3 uses
  %i.pbz = getelementptr inbounds nuw [4 x i8], ptr %i.pby, i64 %i.pbo ; 2 uses
  %i.pca = and i32 %i.pbf, 1
  %15 = or disjoint i32 %i.nps, %i.pca
  %16 = zext nneg i32 %15 to i64
  %i.pcb = sub nsw i64 %11, %16                   ; 2 uses
  %i.pcc = lshr i64 %i.pcb, 1
  %i.pcd = add nuw i64 %i.pcc, 1                  ; 2 uses
  %min.iters.check3829 = icmp ult i64 %i.pcb, 8
  br i1 %min.iters.check3829, label %.preheader.i560.preheader, label %vector.memcheck3805

vector.memcheck3805:                              ; preds = %.preheader.lr.ph.i559
  %i.pce = and i32 %i.pbf, 1
  %i.pcf = zext nneg i32 %i.pce to i64            ; 2 uses
  %i.pcg = or disjoint i64 %i.orl, %i.pcf
  %i.pch = shl nuw nsw i64 %i.pcg, 2              ; 4 uses
  %i.pci = add i64 %i.pba, %i.pch                 ; 2 uses
  %scevgep3808.a = getelementptr i8, ptr %i.pbt, i64 %i.pci ; 2 uses
  %i.pcj = or disjoint i64 %i.orl, %i.pcf
  %i.pck = sub nsw i64 %8, %i.pcj
  %i.pcl = shl i64 %i.pck, 2
  %i.pcm = and i64 %i.pcl, -8                     ; 2 uses
  %i.pcn = add i64 %i.pbb, %i.pcm
  %i.pco = add i64 %i.pcn, %i.pch                 ; 2 uses
  %scevgep3810.a = getelementptr i8, ptr %i.pbt, i64 %i.pco ; 2 uses
  %scevgep3811 = getelementptr i8, ptr %i.pby, i64 %i.pci ; 2 uses
  %scevgep3812.a = getelementptr i8, ptr %i.pby, i64 %i.pco ; 2 uses
  %scevgep3814.a = getelementptr i8, ptr %scevgep3813.a, i64 %i.pch ; 2 uses
  %i.pcp = getelementptr i8, ptr %scevgep3815, i64 %i.pcm
  %scevgep3816 = getelementptr i8, ptr %i.pcp, i64 %i.pch ; 2 uses
  %bound03817 = icmp ult ptr %scevgep3808.a, %scevgep3812.a
  %bound13818 = icmp ult ptr %scevgep3811, %scevgep3810.a
  %found.conflict3819 = and i1 %bound03817, %bound13818
  %bound03820 = icmp ult ptr %scevgep3808.a, %scevgep3816
  %bound13821 = icmp ult ptr %scevgep3814.a, %scevgep3810.a
  %found.conflict3822 = and i1 %bound03820, %bound13821
  %conflict.rdx3823 = or i1 %found.conflict3819, %found.conflict3822
  %bound03824 = icmp ult ptr %scevgep3811, %scevgep3816
  %bound13825 = icmp ult ptr %scevgep3814.a, %scevgep3812.a
  %found.conflict3826 = and i1 %bound03824, %bound13825
  %conflict.rdx3827 = or i1 %conflict.rdx3823, %found.conflict3826
  br i1 %conflict.rdx3827, label %.preheader.i560.preheader, label %vector.ph3830

vector.ph3830:                                    ; preds = %vector.memcheck3805
  %i.pcq = and i64 %i.pcd, 3                      ; 2 uses
  %i.pcr = icmp eq i64 %i.pcq, 0
  %i.pcs = select i1 %i.pcr, i64 4, i64 %i.pcq
  %n.vec3831 = sub i64 %i.pcd, %i.pcs             ; 2 uses
  %i.pct = shl i64 %n.vec3831, 1
  %i.pcu = add i64 %i.pct, %i.pbs
  %broadcast.splatinsert3832 = insertelement <4 x i64> poison, i64 %i.pbs, i64 0
  %broadcast.splat3833 = shufflevector <4 x i64> %broadcast.splatinsert3832, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction3834 = add nuw nsw <4 x i64> %broadcast.splat3833, <i64 0, i64 2, i64 4, i64 6>
  %invariant.gep4889 = getelementptr [4 x i8], ptr %i.pbp, i64 %i.pbs
  br label %vector.body3835

vector.body3835:                                  ; preds = %vector.body3835, %vector.ph3830
  %index3836 = phi i64 [ 0, %vector.ph3830 ], [ %index.next3888, %vector.body3835 ] ; 2 uses
  %vec.ind3837 = phi <4 x i64> [ %induction3834, %vector.ph3830 ], [ %vec.ind.next3889, %vector.body3835 ] ; 3 uses
  %.idx4578 = shl nuw i64 %index3836, 3
  %gep4890 = getelementptr i8, ptr %invariant.gep4889, i64 %.idx4578 ; 8 uses
  %i.pcv = getelementptr inbounds i8, ptr %gep4890, i64 -8 ; 2 uses
  %i.pcw = getelementptr inbounds i8, ptr %gep4890, i64 -1088 ; 2 uses
  %i.pcx = getelementptr inbounds nuw i8, ptr %gep4890, i64 1088 ; 2 uses
  %i.pcy = getelementptr inbounds i8, ptr %gep4890, i64 -4
  %i.pcz = getelementptr inbounds nuw i8, ptr %gep4890, i64 4 ; 2 uses
  %i.pda = getelementptr inbounds i8, ptr %gep4890, i64 -544 ; 2 uses
  %i.pdb = getelementptr inbounds nuw i8, ptr %gep4890, i64 544 ; 2 uses
  %wide.gep3838 = getelementptr inbounds nuw [4 x i8], ptr %i.pbu, <4 x i64> %vec.ind3837 ; 2 uses
  %i.pdc = extractelement <4 x ptr> %wide.gep3838, i64 0 ; 4 uses
  %wide.vec3839.a = load <8 x float>, ptr %i.pcv, align 4, !tbaa !22, !alias.scope !474, !noalias !402
  %strided.vec3840.a = shufflevector <8 x float> %wide.vec3839.a, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec3841.a = load <8 x float>, ptr %gep4890, align 4, !tbaa !22, !alias.scope !474, !noalias !402
  %strided.vec3842.a = shufflevector <8 x float> %wide.vec3841.a, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 5 uses
  %i.pdd = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3840.a, %strided.vec3842.a
  %i.pde = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pdd)
  %i.pdf = getelementptr inbounds nuw i8, ptr %i.pdc, i64 4
  %wide.vec3843.a = load <8 x float>, ptr %i.pdf, align 4, !tbaa !22, !alias.scope !477, !noalias !402
  %strided.vec3844.a = shufflevector <8 x float> %wide.vec3843.a, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.pdg = getelementptr inbounds i8, ptr %i.pdc, i64 -4
  %wide.vec3845.a = load <8 x float>, ptr %i.pdg, align 4, !tbaa !22, !alias.scope !477, !noalias !402
  %strided.vec3846.a = shufflevector <8 x float> %wide.vec3845.a, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.pdh = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3844.a, %strided.vec3846.a
  %i.pdi = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pdh)
  %i.pdj = fadd reassoc nsz arcp contract afn <4 x float> %i.pdi, splat (float 1.000000e+00) ; 2 uses
  %i.pdk = fadd reassoc nsz arcp contract afn <4 x float> %i.pdj, %i.pde
  %i.pdl = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pdk ; 2 uses
  %wide.vec3847 = load <8 x float>, ptr %i.pcz, align 4, !tbaa !22, !alias.scope !474, !noalias !402 ; 2 uses
  %strided.vec3848 = shufflevector <8 x float> %wide.vec3847, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec3849.a = shufflevector <8 x float> %wide.vec3847, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.pdm = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3849.a, %strided.vec3842.a
  %i.pdn = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pdm)
  %i.pdo = fadd reassoc nsz arcp contract afn <4 x float> %i.pdj, %i.pdn
  %i.pdp = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pdo ; 2 uses
  %wide.vec3850.a = load <8 x float>, ptr %i.pcw, align 4, !tbaa !22, !alias.scope !474, !noalias !402
  %strided.vec3851.a = shufflevector <8 x float> %wide.vec3850.a, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pdq = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3851.a, %strided.vec3842.a
  %i.pdr = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pdq)
  %i.pds = getelementptr inbounds nuw i8, ptr %i.pdc, i64 544
  %wide.vec3852.a = load <8 x float>, ptr %i.pds, align 4, !tbaa !22, !alias.scope !477, !noalias !402
  %strided.vec3853.a = shufflevector <8 x float> %wide.vec3852.a, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.pdt = getelementptr inbounds i8, ptr %i.pdc, i64 -544
  %wide.vec3854.a = load <8 x float>, ptr %i.pdt, align 4, !tbaa !22, !alias.scope !477, !noalias !402
  %strided.vec3855.a = shufflevector <8 x float> %wide.vec3854.a, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.pdu = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3853.a, %strided.vec3855.a
  %i.pdv = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pdu)
  %i.pdw = fadd reassoc nsz arcp contract afn <4 x float> %i.pdv, splat (float 1.000000e+00) ; 2 uses
  %i.pdx = fadd reassoc nsz arcp contract afn <4 x float> %i.pdw, %i.pdr
  %i.pdy = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pdx ; 2 uses
  %wide.vec3856.a = load <8 x float>, ptr %i.pcx, align 4, !tbaa !22, !alias.scope !474, !noalias !402
  %strided.vec3857.a = shufflevector <8 x float> %wide.vec3856.a, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pdz = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3857.a, %strided.vec3842.a
  %i.pea = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pdz)
  %i.peb = fadd reassoc nsz arcp contract afn <4 x float> %i.pdw, %i.pea
  %i.pec = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.peb ; 2 uses
  %wide.vec3858 = load <8 x float>, ptr %i.pcv, align 4, !tbaa !22, !alias.scope !474, !noalias !402 ; 2 uses
  %strided.vec3859 = shufflevector <8 x float> %wide.vec3858, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec3860.a = shufflevector <8 x float> %wide.vec3858, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ped = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3860.a, %strided.vec3846.a
  %i.pee = fmul reassoc nsz arcp contract afn <4 x float> %i.ped, %i.pdl
  %i.pef = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3848, %strided.vec3844.a
  %i.peg = fmul reassoc nsz arcp contract afn <4 x float> %i.pef, %i.pdp
  %i.peh = fadd reassoc nsz arcp contract afn <4 x float> %i.pee, %i.peg
  %wide.vec3861.a = load <8 x float>, ptr %i.pda, align 4, !tbaa !22, !alias.scope !474, !noalias !402
  %strided.vec3862.a = shufflevector <8 x float> %wide.vec3861.a, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pei = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3862.a, %strided.vec3855.a
  %i.pej = fmul reassoc nsz arcp contract afn <4 x float> %i.pei, %i.pdy
  %i.pek = fadd reassoc nsz arcp contract afn <4 x float> %i.peh, %i.pej
  %wide.vec3863 = load <8 x float>, ptr %i.pdb, align 4, !tbaa !22, !alias.scope !474, !noalias !402
  %strided.vec3864 = shufflevector <8 x float> %wide.vec3863, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pel = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3864, %strided.vec3853.a
  %i.pem = fmul reassoc nsz arcp contract afn <4 x float> %i.pel, %i.pec
  %i.pen = fadd reassoc nsz arcp contract afn <4 x float> %i.pek, %i.pem
  %i.peo = fadd reassoc nsz arcp contract afn <4 x float> %i.pdp, %i.pdl
  %i.pep = fadd reassoc nsz arcp contract afn <4 x float> %i.peo, %i.pdy
  %i.peq = fadd reassoc nsz arcp contract afn <4 x float> %i.pep, %i.pec
  %i.per = fdiv reassoc nsz arcp contract afn <4 x float> %i.pen, %i.peq
  %i.pes = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3842.a, %i.per
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.pes, <4 x ptr> align 4 %wide.gep3838, <4 x i1> splat (i1 true)), !tbaa !22, !alias.scope !477, !noalias !479
  %wide.gep3865 = getelementptr inbounds nuw [4 x i8], ptr %i.pbz, <4 x i64> %vec.ind3837 ; 2 uses
  %i.pet = extractelement <4 x ptr> %wide.gep3865, i64 0 ; 4 uses
  %wide.vec3866 = load <8 x float>, ptr %i.pcy, align 4, !tbaa !22, !alias.scope !474, !noalias !402 ; 2 uses
  %strided.vec3867 = shufflevector <8 x float> %wide.vec3866, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec3868.a = shufflevector <8 x float> %wide.vec3866, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 5 uses
  %i.peu = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3859, %strided.vec3868.a
  %i.pev = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.peu)
  %i.pew = getelementptr inbounds nuw i8, ptr %i.pet, i64 4
  %wide.vec3869.a = load <8 x float>, ptr %i.pew, align 4, !tbaa !22, !alias.scope !481, !noalias !402
  %strided.vec3870.a = shufflevector <8 x float> %wide.vec3869.a, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.pex = getelementptr inbounds i8, ptr %i.pet, i64 -4
  %wide.vec3871.a = load <8 x float>, ptr %i.pex, align 4, !tbaa !22, !alias.scope !481, !noalias !402
  %strided.vec3872.a = shufflevector <8 x float> %wide.vec3871.a, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.pey = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3870.a, %strided.vec3872.a
  %i.pez = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pey)
  %i.pfa = fadd reassoc nsz arcp contract afn <4 x float> %i.pez, splat (float 1.000000e+00) ; 2 uses
  %i.pfb = fadd reassoc nsz arcp contract afn <4 x float> %i.pfa, %i.pev
  %i.pfc = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pfb ; 2 uses
  %wide.vec3873 = load <8 x float>, ptr %i.pcz, align 4, !tbaa !22, !alias.scope !474, !noalias !402 ; 2 uses
  %strided.vec3874 = shufflevector <8 x float> %wide.vec3873, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec3875.a = shufflevector <8 x float> %wide.vec3873, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.pfd = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3875.a, %strided.vec3868.a
  %i.pfe = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pfd)
  %i.pff = fadd reassoc nsz arcp contract afn <4 x float> %i.pfa, %i.pfe
  %i.pfg = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pff ; 2 uses
  %wide.vec3876.a = load <8 x float>, ptr %i.pcw, align 4, !tbaa !22, !alias.scope !474, !noalias !402
  %strided.vec3877.a = shufflevector <8 x float> %wide.vec3876.a, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pfh = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3877.a, %strided.vec3868.a
  %i.pfi = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pfh)
  %i.pfj = getelementptr inbounds nuw i8, ptr %i.pet, i64 544
  %wide.vec3878.a = load <8 x float>, ptr %i.pfj, align 4, !tbaa !22, !alias.scope !481, !noalias !402
  %strided.vec3879.a = shufflevector <8 x float> %wide.vec3878.a, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.pfk = getelementptr inbounds i8, ptr %i.pet, i64 -544
  %wide.vec3880.a = load <8 x float>, ptr %i.pfk, align 4, !tbaa !22, !alias.scope !481, !noalias !402
  %strided.vec3881.a = shufflevector <8 x float> %wide.vec3880.a, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.pfl = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3879.a, %strided.vec3881.a
  %i.pfm = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pfl)
  %i.pfn = fadd reassoc nsz arcp contract afn <4 x float> %i.pfm, splat (float 1.000000e+00) ; 2 uses
  %i.pfo = fadd reassoc nsz arcp contract afn <4 x float> %i.pfn, %i.pfi
  %i.pfp = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pfo ; 2 uses
  %wide.vec3882.a = load <8 x float>, ptr %i.pcx, align 4, !tbaa !22, !alias.scope !474, !noalias !402
  %strided.vec3883.a = shufflevector <8 x float> %wide.vec3882.a, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pfq = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3883.a, %strided.vec3868.a
  %i.pfr = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pfq)
  %i.pfs = fadd reassoc nsz arcp contract afn <4 x float> %i.pfn, %i.pfr
  %i.pft = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pfs ; 2 uses
  %i.pfu = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3867, %strided.vec3872.a
  %i.pfv = fmul reassoc nsz arcp contract afn <4 x float> %i.pfu, %i.pfc
  %i.pfw = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3874, %strided.vec3870.a
  %i.pfx = fmul reassoc nsz arcp contract afn <4 x float> %i.pfw, %i.pfg
  %i.pfy = fadd reassoc nsz arcp contract afn <4 x float> %i.pfv, %i.pfx
  %wide.vec3884.a = load <8 x float>, ptr %i.pda, align 4, !tbaa !22, !alias.scope !474, !noalias !402
  %strided.vec3885.a = shufflevector <8 x float> %wide.vec3884.a, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pfz = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3885.a, %strided.vec3881.a
  %i.pga = fmul reassoc nsz arcp contract afn <4 x float> %i.pfz, %i.pfp
  %i.pgb = fadd reassoc nsz arcp contract afn <4 x float> %i.pfy, %i.pga
  %wide.vec3886 = load <8 x float>, ptr %i.pdb, align 4, !tbaa !22, !alias.scope !474, !noalias !402
  %strided.vec3887 = shufflevector <8 x float> %wide.vec3886, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pgc = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3887, %strided.vec3879.a
  %i.pgd = fmul reassoc nsz arcp contract afn <4 x float> %i.pgc, %i.pft
  %i.pge = fadd reassoc nsz arcp contract afn <4 x float> %i.pgb, %i.pgd
  %i.pgf = fadd reassoc nsz arcp contract afn <4 x float> %i.pfg, %i.pfc
  %i.pgg = fadd reassoc nsz arcp contract afn <4 x float> %i.pgf, %i.pfp
  %i.pgh = fadd reassoc nsz arcp contract afn <4 x float> %i.pgg, %i.pft
  %i.pgi = fdiv reassoc nsz arcp contract afn <4 x float> %i.pge, %i.pgh
  %i.pgj = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3868.a, %i.pgi
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.pgj, <4 x ptr> align 4 %wide.gep3865, <4 x i1> splat (i1 true)), !tbaa !22, !alias.scope !481, !noalias !482
  %index.next3888 = add nuw i64 %index3836, 4     ; 2 uses
  %vec.ind.next3889 = add nuw nsw <4 x i64> %vec.ind3837, splat (i64 8)
  %i.pgk = icmp eq i64 %index.next3888, %n.vec3831
  br i1 %i.pgk, label %.preheader.i560.preheader, label %vector.body3835, !llvm.loop !483

.preheader.i560.preheader:                        ; preds = %vector.body3835, %vector.memcheck3805, %.preheader.lr.ph.i559
  %indvars.iv1290.i.ph = phi i64 [ %i.pbs, %vector.memcheck3805 ], [ %i.pbs, %.preheader.lr.ph.i559 ], [ %i.pcu, %vector.body3835 ]
  br label %.preheader.i560

.preheader.i560:                                  ; preds = %.preheader.i560.preheader, %.preheader.i560
  %indvars.iv1290.i = phi i64 [ %indvars.iv.next1291.i, %.preheader.i560 ], [ %indvars.iv1290.i.ph, %.preheader.i560.preheader ] ; 4 uses
  %i.pgl = getelementptr inbounds nuw [4 x i8], ptr %i.pbp, i64 %indvars.iv1290.i ; 10 uses
  %i.pgm = getelementptr inbounds i8, ptr %i.pgl, i64 -4 ; 2 uses
  %i.pgn = getelementptr inbounds nuw i8, ptr %i.pgl, i64 4 ; 2 uses
  %i.pgo = getelementptr inbounds nuw [4 x i8], ptr %i.pbu, i64 %indvars.iv1290.i ; 5 uses
  %i.pgp = getelementptr inbounds nuw i8, ptr %i.pgo, i64 544
  %i.pgq = getelementptr inbounds i8, ptr %i.pgo, i64 -544
  %i.pgr = getelementptr inbounds nuw i8, ptr %i.pgo, i64 4
  %i.pgs = getelementptr inbounds i8, ptr %i.pgo, i64 -4
  %i.pgt = load float, ptr %i.pgp, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pgu = load float, ptr %i.pgq, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pgv = load float, ptr %i.pgr, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pgw = load float, ptr %i.pgs, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pgx = fsub reassoc nsz arcp contract afn float %i.pgt, %i.pgu
  %i.pgy = fsub reassoc nsz arcp contract afn float %i.pgv, %i.pgw
  %i.pgz = insertelement <2 x float> poison, float %i.pgy, i64 0
  %i.pha = insertelement <2 x float> %i.pgz, float %i.pgx, i64 1
  %i.phb = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.pha)
  %i.phc = fadd reassoc nsz arcp contract afn <2 x float> %i.phb, splat (float 1.000000e+00)
  %i.phd = shufflevector <2 x float> %i.phc, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.phe = load float, ptr %i.pgn, align 4, !tbaa !22, !noalias !402
  %i.phf = load float, ptr %i.pgl, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.phg = load float, ptr %i.pgm, align 4, !tbaa !22, !noalias !402
  %i.phh = insertelement <4 x float> poison, float %i.phf, i64 0
  %i.phi = shufflevector <4 x float> %i.phh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.phj = fsub reassoc nsz arcp contract afn float %i.phe, %i.pgv
  %i.phk = fsub reassoc nsz arcp contract afn float %i.phg, %i.pgw
  %i.phl = insertelement <4 x float> poison, float %i.phk, i64 0
  %i.phm = insertelement <4 x float> %i.phl, float %i.phj, i64 1
  %i.phn = getelementptr inbounds nuw [4 x i8], ptr %i.pbz, i64 %indvars.iv1290.i ; 5 uses
  %i.pho = getelementptr inbounds nuw i8, ptr %i.pgl, i64 544 ; 2 uses
  %i.php = getelementptr inbounds i8, ptr %i.pgl, i64 -544 ; 2 uses
  %i.phq = load float, ptr %i.pho, align 4, !tbaa !22, !noalias !402
  %i.phr = load float, ptr %i.php, align 4, !tbaa !22, !noalias !402
  %i.phs = fsub reassoc nsz arcp contract afn float %i.phq, %i.pgt
  %i.pht = fsub reassoc nsz arcp contract afn float %i.phr, %i.pgu
  %i.phu = insertelement <4 x float> %i.phm, float %i.pht, i64 2
  %i.phv = insertelement <4 x float> %i.phu, float %i.phs, i64 3
  %i.phw = getelementptr inbounds nuw i8, ptr %i.phn, i64 544
  %i.phx = getelementptr inbounds i8, ptr %i.phn, i64 -544
  %i.phy = getelementptr inbounds nuw i8, ptr %i.phn, i64 4
  %i.phz = getelementptr inbounds i8, ptr %i.phn, i64 -4
  %i.pia = getelementptr inbounds nuw i8, ptr %i.pgl, i64 1088 ; 2 uses
  %i.pib = getelementptr inbounds i8, ptr %i.pgl, i64 -1088 ; 2 uses
  %i.pic = getelementptr inbounds nuw i8, ptr %i.pgl, i64 8 ; 2 uses
  %i.pid = getelementptr inbounds i8, ptr %i.pgl, i64 -8 ; 2 uses
  %i.pie = load float, ptr %i.pia, align 4, !tbaa !22, !noalias !402
  %i.pif = load float, ptr %i.pid, align 4, !tbaa !22, !noalias !402
  %i.pig = insertelement <4 x float> poison, float %i.pif, i64 0
  %i.pih = load float, ptr %i.pib, align 4, !tbaa !22, !noalias !402
  %i.pii = load float, ptr %i.pic, align 4, !tbaa !22, !noalias !402
  %i.pij = insertelement <4 x float> %i.pig, float %i.pii, i64 1
  %i.pik = insertelement <4 x float> %i.pij, float %i.pih, i64 2
  %i.pil = insertelement <4 x float> %i.pik, float %i.pie, i64 3
  %i.pim = fsub reassoc nsz arcp contract afn <4 x float> %i.pil, %i.phi
  %i.pin = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pim)
  %i.pio = fadd reassoc nsz arcp contract afn <4 x float> %i.phd, %i.pin
  %i.pip = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pio ; 2 uses
  %i.piq = fmul reassoc nsz arcp contract afn <4 x float> %i.phv, %i.pip
  %i.pir = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.piq)
  %i.pis = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.pip)
  %i.pit = fdiv reassoc nsz arcp contract afn float %i.pir, %i.pis
  %i.piu = fsub reassoc nsz arcp contract afn float %i.phf, %i.pit
  store float %i.piu, ptr %i.pgo, align 4, !tbaa !22, !noalias !402
  %i.piv = load float, ptr %i.phw, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.piw = load float, ptr %i.phx, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pix = load float, ptr %i.phy, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.piy = load float, ptr %i.phz, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.piz = fsub reassoc nsz arcp contract afn float %i.piv, %i.piw
  %i.pja = fsub reassoc nsz arcp contract afn float %i.pix, %i.piy
  %i.pjb = insertelement <2 x float> poison, float %i.pja, i64 0
  %i.pjc = insertelement <2 x float> %i.pjb, float %i.piz, i64 1
  %i.pjd = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.pjc)
  %i.pje = fadd reassoc nsz arcp contract afn <2 x float> %i.pjd, splat (float 1.000000e+00)
  %i.pjf = shufflevector <2 x float> %i.pje, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.pjg = load float, ptr %i.pgn, align 4, !tbaa !22, !noalias !402
  %i.pjh = load float, ptr %i.pgl, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pji = load float, ptr %i.pgm, align 4, !tbaa !22, !noalias !402
  %i.pjj = load float, ptr %i.pho, align 4, !tbaa !22, !noalias !402
  %i.pjk = load float, ptr %i.php, align 4, !tbaa !22, !noalias !402
  %i.pjl = load float, ptr %i.pia, align 4, !tbaa !22, !noalias !402
  %i.pjm = load float, ptr %i.pib, align 4, !tbaa !22, !noalias !402
  %i.pjn = load float, ptr %i.pic, align 4, !tbaa !22, !noalias !402
  %i.pjo = load float, ptr %i.pid, align 4, !tbaa !22, !noalias !402
  %i.pjp = insertelement <4 x float> poison, float %i.pjo, i64 0
  %i.pjq = insertelement <4 x float> %i.pjp, float %i.pjn, i64 1
  %i.pjr = insertelement <4 x float> %i.pjq, float %i.pjm, i64 2
  %i.pjs = insertelement <4 x float> %i.pjr, float %i.pjl, i64 3
  %i.pjt = insertelement <4 x float> poison, float %i.pjh, i64 0
  %i.pju = shufflevector <4 x float> %i.pjt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pjv = fsub reassoc nsz arcp contract afn <4 x float> %i.pjs, %i.pju
  %i.pjw = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pjv)
  %i.pjx = fadd reassoc nsz arcp contract afn <4 x float> %i.pjf, %i.pjw
  %i.pjy = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pjx ; 2 uses
  %i.pjz = fsub reassoc nsz arcp contract afn float %i.pjj, %i.piv
  %i.pka = fsub reassoc nsz arcp contract afn float %i.pjk, %i.piw
  %i.pkb = fsub reassoc nsz arcp contract afn float %i.pjg, %i.pix
  %i.pkc = fsub reassoc nsz arcp contract afn float %i.pji, %i.piy
  %i.pkd = insertelement <4 x float> poison, float %i.pkc, i64 0
  %i.pke = insertelement <4 x float> %i.pkd, float %i.pkb, i64 1
  %i.pkf = insertelement <4 x float> %i.pke, float %i.pka, i64 2
  %i.pkg = insertelement <4 x float> %i.pkf, float %i.pjz, i64 3
  %i.pkh = fmul reassoc nsz arcp contract afn <4 x float> %i.pkg, %i.pjy
  %i.pki = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.pkh)
  %i.pkj = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.pjy)
  %i.pkk = fdiv reassoc nsz arcp contract afn float %i.pki, %i.pkj
  %i.pkl = fsub reassoc nsz arcp contract afn float %i.pjh, %i.pkk
  store float %i.pkl, ptr %i.phn, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1291.i = add nuw nsw i64 %indvars.iv1290.i, 2 ; 2 uses
  %i.pkm = icmp slt i64 %indvars.iv.next1291.i, %i.org
  br i1 %i.pkm, label %.preheader.i560, label %._crit_edge1149.i, !llvm.loop !484

._crit_edge1149.i:                                ; preds = %.preheader.i560, %.lr.ph1151.i
  %indvars.iv.next1294.i = add nuw nsw i64 %indvars.iv1293.i, 1 ; 2 uses
  %exitcond1132.not = icmp eq i64 %indvars.iv.next1294.i, %i.lzh
  %indvar.next3807 = add i64 %indvar3806, 1
  br i1 %exitcond1132.not, label %.lr.ph1157.i, label %.lr.ph1151.i

._crit_edge1158.i.loopexit:                       ; preds = %._crit_edge1155.i
  %i.pkn = add nuw nsw i32 %.08901159.i, 1        ; 2 uses
  %i.pko = icmp slt i32 %i.pkn, %i.lxk
  br i1 %i.pko, label %.lr.ph1143.i.preheader, label %._crit_edge1161.i

.lr.ph1157.i:                                     ; preds = %._crit_edge1149.i, %._crit_edge1155.i
  %indvar3745 = phi i64 [ %indvar.next3746, %._crit_edge1155.i ], [ 0, %._crit_edge1149.i ] ; 2 uses
  %indvars.iv1299.i = phi i64 [ %indvars.iv.next1300.i, %._crit_edge1155.i ], [ %i.lza, %._crit_edge1149.i ] ; 3 uses
  %i.pkp = mul i64 %indvar3745, 544               ; 6 uses
  %scevgep3752.a = getelementptr i8, ptr %i.lzz, i64 %i.pkp
  %scevgep3754.a = getelementptr i8, ptr %i.mab, i64 %i.pkp
  %indvars.iv1299.tr.i = trunc i64 %indvars.iv1299.i to i32
  %i.pkq = shl i32 %indvars.iv1299.tr.i, 1
  %i.pkr = and i32 %i.pkq, 14                     ; 2 uses
  %i.pks = shl nuw nsw i32 %i.pkr, 1
  %i.pkt = lshr i32 %.fr1043, %i.pks              ; 3 uses
  %i.pku = and i32 %i.pkt, 1                      ; 2 uses
  %i.pkv = or disjoint i32 %i.pku, %i.ore         ; 2 uses
  %i.pkw = icmp slt i32 %i.pkv, %i.orf
  br i1 %i.pkw, label %.lr.ph1154.i, label %._crit_edge1155.i

.lr.ph1154.i:                                     ; preds = %.lr.ph1157.i
  %i.pkx = or disjoint i32 %i.pku, %i.pkr
  %i.pky = shl nuw nsw i32 %i.pkx, 1
  %i.pkz = lshr i32 %.fr1043, %i.pky
  %i.pla = and i32 %i.pkz, 3                      ; 2 uses
  %i.plb = sub nsw i32 2, %i.pla
  %i.plc = mul nuw nsw i64 %indvars.iv1299.i, 136 ; 3 uses
  %i.pld = getelementptr inbounds nuw [4 x i8], ptr %i.lxd, i64 %i.plc ; 2 uses
  %i.ple = sext i32 %i.plb to i64
  %i.plf = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ple
  %i.plg = load ptr, ptr %i.plf, align 8, !tbaa !407, !noalias !408 ; 3 uses
  %i.plh = getelementptr inbounds nuw [4 x i8], ptr %i.plg, i64 %i.plc ; 2 uses
  %i.pli = zext nneg i32 %i.pla to i64
  %i.plj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.pli
  %i.plk = load ptr, ptr %i.plj, align 8, !tbaa !407, !noalias !408 ; 3 uses
  %i.pll = getelementptr inbounds nuw [4 x i8], ptr %i.plk, i64 %i.plc ; 2 uses
  %i.plm = zext nneg i32 %i.pkv to i64            ; 5 uses
  %i.pln = and i32 %i.pkt, 1
  %17 = or disjoint i32 %i.nps, %i.pln
  %18 = zext nneg i32 %17 to i64
  %i.plo = sub nsw i64 %12, %18                   ; 2 uses
  %i.plp = lshr i64 %i.plo, 1
  %i.plq = add nuw i64 %i.plp, 1                  ; 2 uses
  %min.iters.check3764 = icmp ult i64 %i.plo, 8
  br i1 %min.iters.check3764, label %scalar.ph3763.preheader, label %vector.memcheck3744

scalar.ph3763.preheader:                          ; preds = %vector.body3770, %vector.memcheck3744, %.lr.ph1154.i
  %indvars.iv1296.i.ph = phi i64 [ %i.plm, %vector.memcheck3744 ], [ %i.plm, %.lr.ph1154.i ], [ %i.pms, %vector.body3770 ]
  br label %scalar.ph3763

vector.memcheck3744:                              ; preds = %.lr.ph1154.i
  %i.plr = and i32 %i.pkt, 1
  %i.pls = zext nneg i32 %i.plr to i64            ; 2 uses
  %i.plt = or disjoint i64 %i.orh, %i.pls
  %i.plu = shl nuw nsw i64 %i.plt, 2              ; 6 uses
  %i.plv = getelementptr i8, ptr %i.plg, i64 %i.lzi
  %i.plw = getelementptr i8, ptr %i.plv, i64 552
  %i.plx = getelementptr i8, ptr %i.plw, i64 %i.pkp
  %scevgep3747 = getelementptr i8, ptr %i.plx, i64 %i.plu ; 2 uses
  %i.ply = or disjoint i64 %i.orh, %i.pls
  %i.plz = sub nsw i64 %6, %i.ply
  %i.pma = shl i64 %i.plz, 2
  %i.pmb = and i64 %i.pma, -8                     ; 3 uses
  %i.pmc = getelementptr i8, ptr %i.plg, i64 %i.lzi
  %i.pmd = getelementptr i8, ptr %i.pmc, i64 1644
  %i.pme = getelementptr i8, ptr %i.pmd, i64 %i.pkp
  %i.pmf = getelementptr i8, ptr %i.pme, i64 %i.pmb
  %scevgep3749.a = getelementptr i8, ptr %i.pmf, i64 %i.plu ; 2 uses
  %i.pmg = getelementptr i8, ptr %i.plk, i64 %i.lzi
  %i.pmh = getelementptr i8, ptr %i.pmg, i64 8
  %i.pmi = getelementptr i8, ptr %i.pmh, i64 %i.pkp
  %scevgep3750.a = getelementptr i8, ptr %i.pmi, i64 %i.plu
  %i.pmj = getelementptr i8, ptr %i.plk, i64 %i.lzi
  %i.pmk = getelementptr i8, ptr %i.pmj, i64 2188
  %i.pml = getelementptr i8, ptr %i.pmk, i64 %i.pkp
  %i.pmm = getelementptr i8, ptr %i.pml, i64 %i.pmb
  %scevgep3751 = getelementptr i8, ptr %i.pmm, i64 %i.plu
  %scevgep3753 = getelementptr i8, ptr %scevgep3752.a, i64 %i.plu
  %i.pmn = getelementptr i8, ptr %scevgep3754.a, i64 %i.pmb
  %scevgep3755 = getelementptr i8, ptr %i.pmn, i64 %i.plu
  %bound03756 = icmp ult ptr %scevgep3747, %scevgep3751
  %bound13757 = icmp ult ptr %scevgep3750.a, %scevgep3749.a
  %found.conflict3758 = and i1 %bound03756, %bound13757
  %bound03759 = icmp ult ptr %scevgep3747, %scevgep3755
  %bound13760 = icmp ult ptr %scevgep3753, %scevgep3749.a
  %found.conflict3761 = and i1 %bound03759, %bound13760
  %conflict.rdx3762 = or i1 %found.conflict3758, %found.conflict3761
  br i1 %conflict.rdx3762, label %scalar.ph3763.preheader, label %vector.ph3765

vector.ph3765:                                    ; preds = %vector.memcheck3744
  %i.pmo = and i64 %i.plq, 3                      ; 2 uses
  %i.pmp = icmp eq i64 %i.pmo, 0
  %i.pmq = select i1 %i.pmp, i64 4, i64 %i.pmo
  %n.vec3766 = sub i64 %i.plq, %i.pmq             ; 2 uses
  %i.pmr = shl i64 %n.vec3766, 1
  %i.pms = add i64 %i.pmr, %i.plm
  %broadcast.splatinsert3767 = insertelement <4 x i64> poison, i64 %i.plm, i64 0
  %broadcast.splat3768 = shufflevector <4 x i64> %broadcast.splatinsert3767, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction3769 = add nuw nsw <4 x i64> %broadcast.splat3768, <i64 0, i64 2, i64 4, i64 6>
  br label %vector.body3770

vector.body3770:                                  ; preds = %vector.body3770, %vector.ph3765
  %index3771 = phi i64 [ 0, %vector.ph3765 ], [ %index.next3801, %vector.body3770 ] ; 2 uses
  %vec.ind3772 = phi <4 x i64> [ %induction3769, %vector.ph3765 ], [ %vec.ind.next3802, %vector.body3770 ] ; 2 uses
  %i.pmt = shl nuw i64 %index3771, 1
  %i.pmu = add nuw i64 %i.pmt, %i.plm             ; 2 uses
  %i.pmv = getelementptr inbounds nuw [4 x i8], ptr %i.pld, i64 %i.pmu ; 4 uses
  %wide.gep3773 = getelementptr inbounds nuw [4 x i8], ptr %i.plh, <4 x i64> %vec.ind3772 ; 2 uses
  %i.pmw = extractelement <4 x ptr> %wide.gep3773, i64 0 ; 4 uses
  %i.pmx = getelementptr inbounds nuw [4 x i8], ptr %i.pll, i64 %i.pmu ; 5 uses
  %i.pmy = getelementptr inbounds i8, ptr %i.pmx, i64 -8
  %wide.vec3774 = load <8 x float>, ptr %i.pmy, align 4, !tbaa !22, !alias.scope !485, !noalias !402
  %strided.vec3775 = shufflevector <8 x float> %wide.vec3774, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec3776 = load <8 x float>, ptr %i.pmx, align 4, !tbaa !22, !alias.scope !485, !noalias !402
  %strided.vec3777 = shufflevector <8 x float> %wide.vec3776, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 4 uses
  %i.pmz = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3775, %strided.vec3777
  %i.pna = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pmz)
  %i.pnb = getelementptr inbounds nuw i8, ptr %i.pmv, i64 4
  %wide.vec3778 = load <8 x float>, ptr %i.pnb, align 4, !tbaa !22, !alias.scope !488, !noalias !402
  %strided.vec3779 = shufflevector <8 x float> %wide.vec3778, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.pnc = getelementptr inbounds i8, ptr %i.pmv, i64 -4
  %wide.vec3780 = load <8 x float>, ptr %i.pnc, align 4, !tbaa !22, !alias.scope !488, !noalias !402 ; 2 uses
  %strided.vec3781.a = shufflevector <8 x float> %wide.vec3780, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec3782 = shufflevector <8 x float> %wide.vec3780, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.pnd = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3779, %strided.vec3781.a
  %i.pne = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pnd)
  %i.pnf = fadd reassoc nsz arcp contract afn <4 x float> %i.pne, splat (float 1.000000e+00) ; 2 uses
  %i.png = fadd reassoc nsz arcp contract afn <4 x float> %i.pnf, %i.pna
  %i.pnh = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.png ; 2 uses
  %i.pni = getelementptr inbounds nuw i8, ptr %i.pmx, i64 8
  %wide.vec3783 = load <8 x float>, ptr %i.pni, align 4, !tbaa !22, !alias.scope !485, !noalias !402
  %strided.vec3784 = shufflevector <8 x float> %wide.vec3783, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pnj = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3784, %strided.vec3777
  %i.pnk = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pnj)
  %i.pnl = fadd reassoc nsz arcp contract afn <4 x float> %i.pnf, %i.pnk
  %i.pnm = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pnl ; 2 uses
  %i.pnn = getelementptr inbounds i8, ptr %i.pmx, i64 -1088
  %wide.vec3785 = load <8 x float>, ptr %i.pnn, align 4, !tbaa !22, !alias.scope !485, !noalias !402
  %strided.vec3786 = shufflevector <8 x float> %wide.vec3785, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pno = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3786, %strided.vec3777
  %i.pnp = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pno)
  %i.pnq = getelementptr inbounds nuw i8, ptr %i.pmv, i64 544
  %wide.vec3787 = load <8 x float>, ptr %i.pnq, align 4, !tbaa !22, !alias.scope !488, !noalias !402
  %strided.vec3788 = shufflevector <8 x float> %wide.vec3787, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.pnr = getelementptr inbounds i8, ptr %i.pmv, i64 -544
  %wide.vec3789 = load <8 x float>, ptr %i.pnr, align 4, !tbaa !22, !alias.scope !488, !noalias !402
  %strided.vec3790 = shufflevector <8 x float> %wide.vec3789, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.pns = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3788, %strided.vec3790
  %i.pnt = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pns)
  %i.pnu = fadd reassoc nsz arcp contract afn <4 x float> %i.pnt, splat (float 1.000000e+00) ; 2 uses
  %i.pnv = fadd reassoc nsz arcp contract afn <4 x float> %i.pnu, %i.pnp
  %i.pnw = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pnv ; 2 uses
  %i.pnx = getelementptr inbounds nuw i8, ptr %i.pmx, i64 1088
  %wide.vec3791 = load <8 x float>, ptr %i.pnx, align 4, !tbaa !22, !alias.scope !485, !noalias !402
  %strided.vec3792 = shufflevector <8 x float> %wide.vec3791, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pny = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3792, %strided.vec3777
  %i.pnz = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pny)
  %i.poa = fadd reassoc nsz arcp contract afn <4 x float> %i.pnu, %i.pnz
  %i.pob = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.poa ; 2 uses
  %i.poc = getelementptr inbounds i8, ptr %i.pmw, i64 -4
  %wide.vec3793 = load <8 x float>, ptr %i.poc, align 4, !tbaa !22, !alias.scope !490, !noalias !402
  %strided.vec3794 = shufflevector <8 x float> %wide.vec3793, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pod = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3781.a, %strided.vec3794
  %i.poe = fmul reassoc nsz arcp contract afn <4 x float> %i.pod, %i.pnh
  %i.pof = getelementptr inbounds nuw i8, ptr %i.pmw, i64 4
  %wide.vec3795 = load <8 x float>, ptr %i.pof, align 4, !tbaa !22, !alias.scope !490, !noalias !402
  %strided.vec3796 = shufflevector <8 x float> %wide.vec3795, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pog = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3779, %strided.vec3796
  %i.poh = fmul reassoc nsz arcp contract afn <4 x float> %i.pog, %i.pnm
  %i.poi = fadd reassoc nsz arcp contract afn <4 x float> %i.poe, %i.poh
  %i.poj = getelementptr inbounds i8, ptr %i.pmw, i64 -544
  %wide.vec3797 = load <8 x float>, ptr %i.poj, align 4, !tbaa !22, !alias.scope !490, !noalias !402
  %strided.vec3798 = shufflevector <8 x float> %wide.vec3797, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pok = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3790, %strided.vec3798
  %i.pol = fmul reassoc nsz arcp contract afn <4 x float> %i.pok, %i.pnw
  %i.pom = fadd reassoc nsz arcp contract afn <4 x float> %i.poi, %i.pol
  %i.pon = getelementptr inbounds nuw i8, ptr %i.pmw, i64 544
  %wide.vec3799 = load <8 x float>, ptr %i.pon, align 4, !tbaa !22, !alias.scope !490, !noalias !402
  %strided.vec3800 = shufflevector <8 x float> %wide.vec3799, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.poo = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3788, %strided.vec3800
  %i.pop = fmul reassoc nsz arcp contract afn <4 x float> %i.poo, %i.pob
  %i.poq = fadd reassoc nsz arcp contract afn <4 x float> %i.pom, %i.pop
  %i.por = fadd reassoc nsz arcp contract afn <4 x float> %i.pnm, %i.pnh
  %i.pos = fadd reassoc nsz arcp contract afn <4 x float> %i.por, %i.pnw
  %i.pot = fadd reassoc nsz arcp contract afn <4 x float> %i.pos, %i.pob
  %i.pou = fdiv reassoc nsz arcp contract afn <4 x float> %i.poq, %i.pot
  %i.pov = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3782, %i.pou
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.pov, <4 x ptr> align 4 %wide.gep3773, <4 x i1> splat (i1 true)), !tbaa !22, !alias.scope !490, !noalias !492
  %index.next3801 = add nuw i64 %index3771, 4     ; 2 uses
  %vec.ind.next3802 = add nuw nsw <4 x i64> %vec.ind3772, splat (i64 8)
  %i.pow = icmp eq i64 %index.next3801, %n.vec3766
  br i1 %i.pow, label %scalar.ph3763.preheader, label %vector.body3770, !llvm.loop !493

._crit_edge1155.i:                                ; preds = %scalar.ph3763, %.lr.ph1157.i
  %indvars.iv.next1300.i = add nuw nsw i64 %indvars.iv1299.i, 1 ; 2 uses
  %exitcond1134.not = icmp eq i64 %indvars.iv.next1300.i, %i.lzh
  %indvar.next3746 = add i64 %indvar3745, 1
  br i1 %exitcond1134.not, label %._crit_edge1158.i.loopexit, label %.lr.ph1157.i

scalar.ph3763:                                    ; preds = %scalar.ph3763.preheader, %scalar.ph3763
  %indvars.iv1296.i = phi i64 [ %indvars.iv.next1297.i, %scalar.ph3763 ], [ %indvars.iv1296.i.ph, %scalar.ph3763.preheader ] ; 4 uses
  %i.pox = getelementptr inbounds nuw [4 x i8], ptr %i.pld, i64 %indvars.iv1296.i ; 5 uses
  %i.poy = getelementptr inbounds nuw [4 x i8], ptr %i.plh, i64 %indvars.iv1296.i ; 5 uses
  %i.poz = getelementptr inbounds nuw [4 x i8], ptr %i.pll, i64 %indvars.iv1296.i ; 5 uses
  %i.ppa = load float, ptr %i.pox, align 4, !tbaa !22, !noalias !402
  %i.ppb = getelementptr inbounds nuw i8, ptr %i.pox, i64 544
  %i.ppc = getelementptr inbounds i8, ptr %i.pox, i64 -544
  %i.ppd = getelementptr inbounds nuw i8, ptr %i.pox, i64 4
  %i.ppe = getelementptr inbounds i8, ptr %i.pox, i64 -4
  %i.ppf = load float, ptr %i.ppb, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.ppg = load float, ptr %i.ppc, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pph = load float, ptr %i.ppd, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.ppi = load float, ptr %i.ppe, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.ppj = fsub reassoc nsz arcp contract afn float %i.ppf, %i.ppg
  %i.ppk = fsub reassoc nsz arcp contract afn float %i.pph, %i.ppi
  %i.ppl = insertelement <2 x float> poison, float %i.ppk, i64 0
  %i.ppm = insertelement <2 x float> %i.ppl, float %i.ppj, i64 1
  %i.ppn = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ppm)
  %i.ppo = fadd reassoc nsz arcp contract afn <2 x float> %i.ppn, splat (float 1.000000e+00)
  %i.ppp = shufflevector <2 x float> %i.ppo, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ppq = load float, ptr %i.poz, align 4, !tbaa !22, !noalias !402
  %i.ppr = getelementptr inbounds nuw i8, ptr %i.poz, i64 1088
  %i.pps = getelementptr inbounds i8, ptr %i.poz, i64 -1088
  %i.ppt = getelementptr inbounds nuw i8, ptr %i.poz, i64 8
  %i.ppu = getelementptr inbounds i8, ptr %i.poz, i64 -8
  %i.ppv = load float, ptr %i.ppr, align 4, !tbaa !22, !noalias !402
  %i.ppw = load float, ptr %i.pps, align 4, !tbaa !22, !noalias !402
  %i.ppx = load float, ptr %i.ppt, align 4, !tbaa !22, !noalias !402
  %i.ppy = load float, ptr %i.ppu, align 4, !tbaa !22, !noalias !402
  %i.ppz = insertelement <4 x float> poison, float %i.ppy, i64 0
  %i.pqa = insertelement <4 x float> %i.ppz, float %i.ppx, i64 1
  %i.pqb = insertelement <4 x float> %i.pqa, float %i.ppw, i64 2
  %i.pqc = insertelement <4 x float> %i.pqb, float %i.ppv, i64 3
  %i.pqd = insertelement <4 x float> poison, float %i.ppq, i64 0
  %i.pqe = shufflevector <4 x float> %i.pqd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pqf = fsub reassoc nsz arcp contract afn <4 x float> %i.pqc, %i.pqe
  %i.pqg = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pqf)
  %i.pqh = fadd reassoc nsz arcp contract afn <4 x float> %i.ppp, %i.pqg
  %i.pqi = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pqh ; 2 uses
  %i.pqj = getelementptr inbounds nuw i8, ptr %i.poy, i64 544
  %i.pqk = getelementptr inbounds i8, ptr %i.poy, i64 -544
  %i.pql = getelementptr inbounds nuw i8, ptr %i.poy, i64 4
  %i.pqm = getelementptr inbounds i8, ptr %i.poy, i64 -4
  %i.pqn = load float, ptr %i.pqj, align 4, !tbaa !22, !noalias !402
  %i.pqo = load float, ptr %i.pqk, align 4, !tbaa !22, !noalias !402
  %i.pqp = load float, ptr %i.pql, align 4, !tbaa !22, !noalias !402
  %i.pqq = load float, ptr %i.pqm, align 4, !tbaa !22, !noalias !402
  %i.pqr = fsub reassoc nsz arcp contract afn float %i.ppf, %i.pqn
  %i.pqs = fsub reassoc nsz arcp contract afn float %i.ppg, %i.pqo
  %i.pqt = fsub reassoc nsz arcp contract afn float %i.pph, %i.pqp
  %i.pqu = fsub reassoc nsz arcp contract afn float %i.ppi, %i.pqq
  %i.pqv = insertelement <4 x float> poison, float %i.pqu, i64 0
  %i.pqw = insertelement <4 x float> %i.pqv, float %i.pqt, i64 1
  %i.pqx = insertelement <4 x float> %i.pqw, float %i.pqs, i64 2
  %i.pqy = insertelement <4 x float> %i.pqx, float %i.pqr, i64 3
  %i.pqz = fmul reassoc nsz arcp contract afn <4 x float> %i.pqy, %i.pqi
  %i.pra = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.pqz)
  %i.prb = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.pqi)
  %i.prc = fdiv reassoc nsz arcp contract afn float %i.pra, %i.prb
  %i.prd = fsub reassoc nsz arcp contract afn float %i.ppa, %i.prc
  store float %i.prd, ptr %i.poy, align 4, !tbaa !22, !noalias !402
end_hunk_0

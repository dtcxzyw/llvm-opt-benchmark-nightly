Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/magnoretinafilter?download=true
inline.NumInlined: 87
inline.NumDeleted: 23
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN2cv11bioinspired17MagnoRetinaFilter9runFilterERKSt8valarrayIfES5_:bb.a
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !74

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader24
  %.013.unr = phi i32 [ %.013.ph, %.lr.ph.preheader24 ], [ %i.by, %.lr.ph.prol ]
  %.0712.unr = phi ptr [ %.0712.ph, %.lr.ph.preheader24 ], [ %i.bu, %.lr.ph.prol ]
  %.0811.unr = phi ptr [ %.0811.ph, %.lr.ph.preheader24 ], [ %i.bs, %.lr.ph.prol ]
  %.0910.unr = phi ptr [ %.0910.ph, %.lr.ph.preheader24 ], [ %i.bx, %.lr.ph.prol ]
  %i.bz = sub i32 %.013.ph, %i.au
  %i.ca = icmp ugt i32 %i.bz, -4
  br i1 %i.ca, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %_ZN2cv11bioinspired17MagnoRetinaFilter23_amacrineCellsComputingEPKfS3_.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  ret ptr %i.cb

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.013 = phi i32 [ %i.da, %.lr.ph ], [ %.013.unr, %.lr.ph.prol.loopexit ]
  %.0712 = phi ptr [ %i.cw, %.lr.ph ], [ %.0712.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.0811 = phi ptr [ %i.cu, %.lr.ph ], [ %.0811.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.0910 = phi ptr [ %i.cz, %.lr.ph ], [ %.0910.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.0811, i64 4
  %i.cd = load float, ptr %.0811, align 4, !tbaa !24
  %i.ce = getelementptr inbounds nuw i8, ptr %.0712, i64 4
  %i.cf = load float, ptr %.0712, align 4, !tbaa !24
  %i.cg = fadd float %i.cd, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %.0910, i64 4
  store float %i.cg, ptr %.0910, align 4, !tbaa !24
  %i.ci = getelementptr inbounds nuw i8, ptr %.0811, i64 8
  %i.cj = load float, ptr %i.cc, align 4, !tbaa !24
  %i.ck = getelementptr inbounds nuw i8, ptr %.0712, i64 8
  %i.cl = load float, ptr %i.ce, align 4, !tbaa !24
  %i.cm = fadd float %i.cj, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %.0910, i64 8
  store float %i.cm, ptr %i.ch, align 4, !tbaa !24
  %i.co = getelementptr inbounds nuw i8, ptr %.0811, i64 12
  %i.cp = load float, ptr %i.ci, align 4, !tbaa !24
  %i.cq = getelementptr inbounds nuw i8, ptr %.0712, i64 12
  %i.cr = load float, ptr %i.ck, align 4, !tbaa !24
  %i.cs = fadd float %i.cp, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %.0910, i64 12
  store float %i.cs, ptr %i.cn, align 4, !tbaa !24
  %i.cu = getelementptr inbounds nuw i8, ptr %.0811, i64 16
  %i.cv = load float, ptr %i.co, align 4, !tbaa !24
  %i.cw = getelementptr inbounds nuw i8, ptr %.0712, i64 16
  %i.cx = load float, ptr %i.cq, align 4, !tbaa !24
  %i.cy = fadd float %i.cv, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %.0910, i64 16
  store float %i.cy, ptr %i.ct, align 4, !tbaa !24
  %i.da = add nuw i32 %.013, 4                    ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.da, %i.au
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !75
}

declare void @_ZN2cv11bioinspired17BasicRetinaFilter23_spatiotemporalLPfilterEPKfPfj(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN2cv11bioinspired17BasicRetinaFilter25_localLuminanceAdaptationEPfPKf(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @expf(float noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv11bioinspired17MagnoRetinaFilter31Parallel_amacrineCellsComputingD0Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %0) #12
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2cv11bioinspired17MagnoRetinaFilter31Parallel_amacrineCellsComputingclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !28     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !29   ; 3 uses
  %.not32 = icmp eq i32 %i.a, %i.c
  br i1 %.not32, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37   ; 2 uses
  %i.f = sext i32 %i.a to i64                     ; 7 uses
  %i.g = getelementptr [4 x i8], ptr %i.e, i64 %i.f ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !36   ; 2 uses
  %i.j = getelementptr [4 x i8], ptr %i.i, i64 %i.f ; 10 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !35   ; 2 uses
  %i.m = getelementptr [4 x i8], ptr %i.l, i64 %i.f ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !34   ; 2 uses
  %i.p = getelementptr [4 x i8], ptr %i.o, i64 %i.f ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !33   ; 2 uses
  %i.s = getelementptr [4 x i8], ptr %i.r, i64 %i.f ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !32   ; 2 uses
  %i.v = getelementptr [4 x i8], ptr %i.u, i64 %i.f ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 7 uses
  %i.x = xor i32 %i.a, -1
  %i.y = add i32 %i.c, %i.x                       ; 2 uses
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i32 %i.y, 23
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ab = add nsw i64 %i.f, %i.z
  %i.ac = shl nsw i64 %i.ab, 2
  %i.ad = add nsw i64 %i.ac, 4                    ; 6 uses
  %i.ae = getelementptr i8, ptr %i.i, i64 %i.ad   ; 6 uses
  %i.af = getelementptr i8, ptr %i.e, i64 %i.ad   ; 6 uses
  %i.ag = getelementptr i8, ptr %i.o, i64 %i.ad   ; 6 uses
  %i.ah = getelementptr i8, ptr %i.l, i64 %i.ad   ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 4 uses
  %i.aj = getelementptr i8, ptr %i.u, i64 %i.ad   ; 4 uses
  %i.ak = getelementptr i8, ptr %i.r, i64 %i.ad   ; 4 uses
  %bound0 = icmp ult ptr %i.j, %i.af
  %bound1 = icmp ult ptr %i.g, %i.ae
  %found.conflict = and i1 %bound0, %bound1
  %bound0114 = icmp ult ptr %i.j, %i.ag
  %bound1115 = icmp ult ptr %i.p, %i.ae
  %found.conflict116 = and i1 %bound0114, %bound1115
  %conflict.rdx = or i1 %found.conflict, %found.conflict116
  %bound0117 = icmp ult ptr %i.j, %i.ah
  %bound1118 = icmp ult ptr %i.m, %i.ae
  %found.conflict119 = and i1 %bound0117, %bound1118
  %conflict.rdx120 = or i1 %conflict.rdx, %found.conflict119
  %bound0121 = icmp ult ptr %i.j, %i.ai
  %bound1122 = icmp ult ptr %i.w, %i.ae
  %found.conflict123 = and i1 %bound0121, %bound1122
  %conflict.rdx124 = or i1 %conflict.rdx120, %found.conflict123
  %bound0125 = icmp ult ptr %i.j, %i.aj
  %bound1126 = icmp ult ptr %i.v, %i.ae
  %found.conflict127 = and i1 %bound0125, %bound1126
  %conflict.rdx128 = or i1 %conflict.rdx124, %found.conflict127
  %bound0129 = icmp ult ptr %i.j, %i.ak
  %bound1130 = icmp ult ptr %i.s, %i.ae
  %found.conflict131 = and i1 %bound0129, %bound1130
  %conflict.rdx132 = or i1 %conflict.rdx128, %found.conflict131
  %bound0133 = icmp ult ptr %i.g, %i.ag
  %bound1134 = icmp ult ptr %i.p, %i.af
  %found.conflict135 = and i1 %bound0133, %bound1134
  %conflict.rdx136 = or i1 %conflict.rdx132, %found.conflict135
  %bound0137 = icmp ult ptr %i.g, %i.ah
  %bound1138 = icmp ult ptr %i.m, %i.af
  %found.conflict139 = and i1 %bound0137, %bound1138
  %conflict.rdx140 = or i1 %conflict.rdx136, %found.conflict139
  %bound0141 = icmp ult ptr %i.g, %i.ai
  %bound1142 = icmp ult ptr %i.w, %i.af
  %found.conflict143 = and i1 %bound0141, %bound1142
  %conflict.rdx144 = or i1 %conflict.rdx140, %found.conflict143
  %bound0145 = icmp ult ptr %i.g, %i.aj
  %bound1146 = icmp ult ptr %i.v, %i.af
  %found.conflict147 = and i1 %bound0145, %bound1146
  %conflict.rdx148 = or i1 %conflict.rdx144, %found.conflict147
  %bound0149 = icmp ult ptr %i.g, %i.ak
  %bound1150 = icmp ult ptr %i.s, %i.af
  %found.conflict151 = and i1 %bound0149, %bound1150
  %conflict.rdx152 = or i1 %conflict.rdx148, %found.conflict151
  %bound0153 = icmp ult ptr %i.p, %i.ah
  %bound1154 = icmp ult ptr %i.m, %i.ag
  %found.conflict155 = and i1 %bound0153, %bound1154
  %conflict.rdx156 = or i1 %conflict.rdx152, %found.conflict155
  %bound0157 = icmp ult ptr %i.p, %i.ai
  %bound1158 = icmp ult ptr %i.w, %i.ag
  %found.conflict159 = and i1 %bound0157, %bound1158
  %conflict.rdx160 = or i1 %conflict.rdx156, %found.conflict159
  %bound0161 = icmp ult ptr %i.p, %i.aj
  %bound1162 = icmp ult ptr %i.v, %i.ag
  %found.conflict163 = and i1 %bound0161, %bound1162
  %conflict.rdx164 = or i1 %conflict.rdx160, %found.conflict163
  %bound0165 = icmp ult ptr %i.p, %i.ak
  %bound1166 = icmp ult ptr %i.s, %i.ag
  %found.conflict167 = and i1 %bound0165, %bound1166
  %conflict.rdx168 = or i1 %conflict.rdx164, %found.conflict167
  %bound0169 = icmp ult ptr %i.m, %i.ai
  %bound1170 = icmp ult ptr %i.w, %i.ah
  %found.conflict171 = and i1 %bound0169, %bound1170
  %conflict.rdx172 = or i1 %conflict.rdx168, %found.conflict171
  %bound0173 = icmp ult ptr %i.m, %i.aj
  %bound1174 = icmp ult ptr %i.v, %i.ah
  %found.conflict175 = and i1 %bound0173, %bound1174
  %conflict.rdx176 = or i1 %conflict.rdx172, %found.conflict175
  %bound0177 = icmp ult ptr %i.m, %i.ak
  %bound1178 = icmp ult ptr %i.s, %i.ah
  %found.conflict179 = and i1 %bound0177, %bound1178
  %conflict.rdx180 = or i1 %conflict.rdx176, %found.conflict179
  br i1 %conflict.rdx180, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 8589934588              ; 4 uses
  %i.al = shl nuw nsw i64 %n.vec, 2               ; 6 uses
  %i.am = getelementptr i8, ptr %i.v, i64 %i.al
  %i.an = getelementptr i8, ptr %i.s, i64 %i.al
  %i.ao = trunc i64 %n.vec to i32
  %i.ap = add i32 %i.a, %i.ao
  %i.aq = getelementptr i8, ptr %i.g, i64 %i.al
  %i.ar = getelementptr i8, ptr %i.j, i64 %i.al
  %i.as = getelementptr i8, ptr %i.m, i64 %i.al
  %i.at = getelementptr i8, ptr %i.p, i64 %i.al
  %i.au = load float, ptr %i.w, align 8, !tbaa !38, !alias.scope !87
  %broadcast.splatinsert191 = insertelement <4 x float> poison, float %i.au, i64 0
  %broadcast.splat192 = shufflevector <4 x float> %broadcast.splatinsert191, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 2                       ; 6 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.av ; 2 uses
  %next.gep181 = getelementptr i8, ptr %i.s, i64 %i.av ; 2 uses
  %next.gep182 = getelementptr i8, ptr %i.g, i64 %i.av ; 2 uses
  %next.gep183 = getelementptr i8, ptr %i.j, i64 %i.av ; 2 uses
  %next.gep184 = getelementptr i8, ptr %i.m, i64 %i.av ; 2 uses
  %next.gep185 = getelementptr i8, ptr %i.p, i64 %i.av ; 2 uses
  %wide.load = load <4 x float>, ptr %next.gep183, align 4, !tbaa !24, !alias.scope !88, !noalias !89
  %wide.load186 = load <4 x float>, ptr %next.gep, align 4, !tbaa !24, !alias.scope !90
  %i.aw = fadd <4 x float> %wide.load, %wide.load186
  %wide.load187 = load <4 x float>, ptr %next.gep185, align 4, !tbaa !24, !alias.scope !91, !noalias !92
  %i.ax = fsub <4 x float> %i.aw, %wide.load187
  %i.ay = fmul <4 x float> %broadcast.splat192, %i.ax ; 2 uses
  %i.az = fcmp ogt <4 x float> %i.ay, zeroinitializer
  %i.ba = uitofp <4 x i1> %i.az to <4 x float>
  %i.bb = fmul <4 x float> %i.ay, %i.ba
  store <4 x float> %i.bb, ptr %next.gep183, align 4, !tbaa !24, !alias.scope !88, !noalias !89
  %wide.load188 = load <4 x float>, ptr %next.gep182, align 4, !tbaa !24, !alias.scope !93, !noalias !94
  %wide.load189 = load <4 x float>, ptr %next.gep181, align 4, !tbaa !24, !alias.scope !95
  %i.bc = fadd <4 x float> %wide.load188, %wide.load189
  %wide.load190 = load <4 x float>, ptr %next.gep184, align 4, !tbaa !24, !alias.scope !96, !noalias !97
  %i.bd = fsub <4 x float> %i.bc, %wide.load190
  %i.be = fmul <4 x float> %broadcast.splat192, %i.bd ; 2 uses
  %i.bf = fcmp ogt <4 x float> %i.be, zeroinitializer
  %i.bg = uitofp <4 x i1> %i.bf to <4 x float>
  %i.bh = fmul <4 x float> %i.be, %i.bg
  store <4 x float> %i.bh, ptr %next.gep182, align 4, !tbaa !24, !alias.scope !93, !noalias !94
  %wide.load193 = load <4 x float>, ptr %next.gep, align 4, !tbaa !24, !alias.scope !90
  store <4 x float> %wide.load193, ptr %next.gep185, align 4, !tbaa !24, !alias.scope !91, !noalias !92
  %wide.load194 = load <4 x float>, ptr %next.gep181, align 4, !tbaa !24, !alias.scope !95
  store <4 x float> %wide.load194, ptr %next.gep184, align 4, !tbaa !24, !alias.scope !96, !noalias !97
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !85

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.039.ph = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph ], [ %i.am, %middle.block ]
  %.02638.ph = phi ptr [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph ], [ %i.an, %middle.block ]
  %.02737.ph = phi i32 [ %i.a, %vector.memcheck ], [ %i.a, %.lr.ph ], [ %i.ap, %middle.block ]
  %.02836.ph = phi ptr [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph ], [ %i.aq, %middle.block ]
  %.02935.ph = phi ptr [ %i.j, %vector.memcheck ], [ %i.j, %.lr.ph ], [ %i.ar, %middle.block ]
  %.03034.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph ], [ %i.as, %middle.block ]
  %.03133.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph ], [ %i.at, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.039 = phi ptr [ %i.cf, %scalar.ph ], [ %.039.ph, %scalar.ph.preheader ] ; 3 uses
  %.02638 = phi ptr [ %i.ci, %scalar.ph ], [ %.02638.ph, %scalar.ph.preheader ] ; 3 uses
  %.02737 = phi i32 [ %i.cl, %scalar.ph ], [ %.02737.ph, %scalar.ph.preheader ]
  %.02836 = phi ptr [ %i.ce, %scalar.ph ], [ %.02836.ph, %scalar.ph.preheader ] ; 3 uses
  %.02935 = phi ptr [ %i.bt, %scalar.ph ], [ %.02935.ph, %scalar.ph.preheader ] ; 3 uses
  %.03034 = phi ptr [ %i.ck, %scalar.ph ], [ %.03034.ph, %scalar.ph.preheader ] ; 3 uses
  %.03133 = phi ptr [ %i.ch, %scalar.ph ], [ %.03133.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bj = load float, ptr %i.w, align 8, !tbaa !38
  %i.bk = load float, ptr %.02935, align 4, !tbaa !24
  %i.bl = load float, ptr %.039, align 4, !tbaa !24
  %i.bm = fadd float %i.bk, %i.bl
  %i.bn = load float, ptr %.03133, align 4, !tbaa !24
  %i.bo = fsub float %i.bm, %i.bn
  %i.bp = fmul float %i.bj, %i.bo                 ; 2 uses
  %i.bq = fcmp ogt float %i.bp, 0.000000e+00
  %i.br = uitofp i1 %i.bq to float
  %i.bs = fmul float %i.bp, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %.02935, i64 4
  store float %i.bs, ptr %.02935, align 4, !tbaa !24
  %i.bu = load float, ptr %i.w, align 8, !tbaa !38
  %i.bv = load float, ptr %.02836, align 4, !tbaa !24
  %i.bw = load float, ptr %.02638, align 4, !tbaa !24
  %i.bx = fadd float %i.bv, %i.bw
  %i.by = load float, ptr %.03034, align 4, !tbaa !24
  %i.bz = fsub float %i.bx, %i.by
  %i.ca = fmul float %i.bu, %i.bz                 ; 2 uses
  %i.cb = fcmp ogt float %i.ca, 0.000000e+00
  %i.cc = uitofp i1 %i.cb to float
  %i.cd = fmul float %i.ca, %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %.02836, i64 4
  store float %i.cd, ptr %.02836, align 4, !tbaa !24
  %i.cf = getelementptr inbounds nuw i8, ptr %.039, i64 4
  %i.cg = load float, ptr %.039, align 4, !tbaa !24
  %i.ch = getelementptr inbounds nuw i8, ptr %.03133, i64 4
  store float %i.cg, ptr %.03133, align 4, !tbaa !24
  %i.ci = getelementptr inbounds nuw i8, ptr %.02638, i64 4
  %i.cj = load float, ptr %.02638, align 4, !tbaa !24
  %i.ck = getelementptr inbounds nuw i8, ptr %.03034, i64 4
  store float %i.cj, ptr %.03034, align 4, !tbaa !24
  %i.cl = add nsw i32 %.02737, 1                  ; 2 uses
  %.not = icmp eq i32 %i.cl, %i.c
  br i1 %.not, label %._crit_edge, label %scalar.ph, !llvm.loop !86
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { allocsize(0) }
attributes #12 = { nounwind }
attributes #13 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"vtable pointer", !3, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"long", !4, i64 0}
!11 = !{!"any pointer", !4, i64 0}
!12 = !{!"p1 float", !11, i64 0}
!13 = !{!"_ZTSSt8valarrayIfE", !10, i64 0, !12, i64 8}
!14 = !{!13, !10, i64 0}
!15 = !{!13, !12, i64 8}
!16 = !{!"_ZTSN2cv11bioinspired14TemplateBufferIfEE", !13, i64 8, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56}
!17 = !{!"float", !4, i64 0}
!18 = !{!"_ZTSN2cv11bioinspired17BasicRetinaFilterE", !16, i64 0, !13, i64 64, !5, i64 80, !5, i64 84, !13, i64 88, !13, i64 104, !13, i64 120, !17, i64 136, !17, i64 140, !17, i64 144, !17, i64 148, !17, i64 152, !17, i64 156, !17, i64 160, !17, i64 164}
!19 = !{!"p1 _ZTSN2cv11bioinspired14TemplateBufferIfEE", !11, i64 0}
!20 = !{!"p1 _ZTSSt8valarrayIfE", !11, i64 0}
!21 = !{!"_ZTSN2cv11bioinspired17MagnoRetinaFilterE", !18, i64 8, !13, i64 176, !13, i64 192, !13, i64 208, !13, i64 224, !13, i64 240, !13, i64 256, !13, i64 272, !13, i64 288, !19, i64 304, !20, i64 312, !17, i64 320}
!22 = !{!21, !19, i64 304}
!23 = !{!21, !20, i64 312}
!24 = !{!17, !17, i64 0}
!25 = !{!21, !17, i64 320}
!26 = !{!16, !10, i64 48}
!27 = !{!"_ZTSN2cv5RangeE", !5, i64 0, !5, i64 4}
!28 = !{!27, !5, i64 0}
!29 = !{!27, !5, i64 4}
!30 = !{!"_ZTSN2cv16ParallelLoopBodyE"}
!31 = !{!"_ZTSN2cv11bioinspired17MagnoRetinaFilter31Parallel_amacrineCellsComputingE", !30, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !17, i64 56}
!32 = !{!31, !12, i64 8}
!33 = !{!31, !12, i64 16}
!34 = !{!31, !12, i64 24}
!35 = !{!31, !12, i64 32}
!36 = !{!31, !12, i64 40}
!37 = !{!31, !12, i64 48}
!38 = !{!31, !17, i64 56}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"llvm.loop.isvectorized", i32 1}
!41 = !{!"llvm.loop.unroll.runtime.disable"}
!42 = distinct !{!42, i1 true, !"_ZSt15__valarray_fillIfEvPT_mRKS0_"}
!43 = distinct !{!43, !42, !"_ZSt15__valarray_fillIfEvPT_mRKS0_: argument 0"}
!44 = distinct !{!44, i1 true, !"_ZSt15__valarray_fillIfEvPT_mRKS0_"}
!45 = distinct !{!45, !44, !"_ZSt15__valarray_fillIfEvPT_mRKS0_: argument 0"}
!46 = distinct !{!46, i1 true, !"_ZSt15__valarray_fillIfEvPT_mRKS0_"}
!47 = distinct !{!47, !46, !"_ZSt15__valarray_fillIfEvPT_mRKS0_: argument 0"}
!48 = distinct !{!48, i1 true, !"_ZSt15__valarray_fillIfEvPT_mRKS0_"}
!49 = distinct !{!49, !48, !"_ZSt15__valarray_fillIfEvPT_mRKS0_: argument 0"}
!50 = distinct !{!50, i1 true, !"_ZSt15__valarray_fillIfEvPT_mRKS0_"}
!51 = distinct !{!51, !50, !"_ZSt15__valarray_fillIfEvPT_mRKS0_: argument 0"}
!52 = distinct !{!52, i1 true, !"_ZSt15__valarray_fillIfEvPT_mRKS0_"}
!53 = distinct !{!53, !52, !"_ZSt15__valarray_fillIfEvPT_mRKS0_: argument 0"}
!54 = distinct !{!54, i1 true, !"_ZSt15__valarray_fillIfEvPT_mRKS0_"}
!55 = distinct !{!55, !54, !"_ZSt15__valarray_fillIfEvPT_mRKS0_: argument 0"}
!56 = distinct !{!56, i1 true, !"_ZSt15__valarray_fillIfEvPT_mRKS0_"}
!57 = distinct !{!57, !56, !"_ZSt15__valarray_fillIfEvPT_mRKS0_: argument 0"}
!58 = distinct !{!58, i1 true, !"_ZSt15__valarray_fillIfEvPT_mRKS0_"}
!59 = distinct !{!59, !58, !"_ZSt15__valarray_fillIfEvPT_mRKS0_: argument 0"}
!60 = distinct !{!60, i1 true, !"_ZSt15__valarray_fillIfEvPT_mRKS0_"}
!61 = distinct !{!61, !60, !"_ZSt15__valarray_fillIfEvPT_mRKS0_: argument 0"}
!62 = !{!43}
!63 = !{!45}
!64 = !{!47}
!65 = !{!49}
!66 = !{!51}
!67 = !{!53}
!68 = !{!55}
!69 = !{!57}
!70 = !{!59}
!71 = !{!61}
!72 = !{ptr @_ZN2cv11bioinspired17MagnoRetinaFilterD2Ev}
!73 = distinct !{!73, !39, !40, !41}
!74 = distinct !{!74, !76}
!75 = distinct !{!75, !39, !40}
!76 = !{!"llvm.loop.unroll.disable"}
!77 = distinct !{!77, i1 false, !"LVerDomain"}
!78 = distinct !{!78, !77}
!79 = distinct !{!79, !77}
!80 = distinct !{!80, !77}
!81 = distinct !{!81, !77}
!82 = distinct !{!82, !77}
!83 = distinct !{!83, !77}
!84 = distinct !{!84, !77}
!85 = distinct !{!85, !39, !40, !41}
!86 = distinct !{!86, !39, !40}
!87 = !{!78}
end_hunk_0

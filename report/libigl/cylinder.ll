Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/cylinder?download=true
inline.NumInlined: 71
inline.NumDeleted: 52
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN3igl8cylinderIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEEEviiRNS1_15PlainObjectBaseIT_EERNS5_IT0_EE:_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit

.lr.ph78:                                         ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.j = uitofp nneg i32 %0 to double             ; 6 uses
  %i.k = icmp sgt i32 %1, 0
  %i.l = sitofp i32 %i.d to double                ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  br i1 %i.k, label %.lr.ph78.split.us, label %.lr.ph78.split.preheader

.lr.ph78.split.preheader:                         ; preds = %.lr.ph78
  %xtraiter = and i32 %0, 3                       ; 3 uses
  %i.n = icmp ult i32 %0, 4
  br i1 %i.n, label %.lr.ph78.split.epil.preheader, label %.lr.ph78.split.preheader.new

.lr.ph78.split.preheader.new:                     ; preds = %.lr.ph78.split.preheader
  %unroll_iter = and i32 %0, 2147483644
  br label %.lr.ph78.split

.lr.ph78.split.us:                                ; preds = %.lr.ph78
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load ptr, ptr %2, align 8, !tbaa !13     ; 9 uses
  %i.q = load i64, ptr %i.o, align 8, !tbaa !14   ; 5 uses
  %.idx.us = shl i64 %i.q, 4                      ; 5 uses
  %i.r = zext nneg i32 %0 to i64                  ; 4 uses
  %i.s = zext nneg i32 %0 to i64
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %i.t = fdiv double 0.000000e+00, %i.l
  %exitcond82.peel.not = icmp eq i32 %1, 1
  %scevgep = getelementptr i8, ptr %i.p, i64 8    ; 2 uses
  %i.u = shl nuw nsw i64 %i.r, 3                  ; 3 uses
  %i.v = shl nuw nsw i64 %wide.trip.count, 3      ; 5 uses
  %i.w = getelementptr i8, ptr %i.p, i64 %i.u
  %i.x = getelementptr i8, ptr %i.w, i64 %i.v
  %scevgep94 = getelementptr i8, ptr %i.x, i64 -8 ; 2 uses
  %i.y = shl i64 %i.q, 3                          ; 2 uses
  %i.z = getelementptr i8, ptr %i.p, i64 %i.y
  %scevgep95 = getelementptr i8, ptr %i.z, i64 8  ; 2 uses
  %i.aa = getelementptr i8, ptr %i.p, i64 %i.y
  %i.ab = getelementptr i8, ptr %i.aa, i64 %i.u
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.v
  %scevgep96 = getelementptr i8, ptr %i.ac, i64 -8 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.p, i64 %.idx.us
  %scevgep97 = getelementptr i8, ptr %i.ad, i64 8 ; 2 uses
  %i.ae = getelementptr i8, ptr %i.p, i64 %.idx.us
  %i.af = getelementptr i8, ptr %i.ae, i64 %i.u
  %i.ag = getelementptr i8, ptr %i.af, i64 %i.v
  %scevgep98 = getelementptr i8, ptr %i.ag, i64 -8 ; 2 uses
  %i.ah = add nsw i64 %i.v, -12                   ; 2 uses
  %i.ai = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %min.iters.check = icmp ugt i32 %1, 8
  %ident.check.not = icmp eq i32 %0, 1
  %or.cond = and i1 %min.iters.check, %ident.check.not
  %bound0 = icmp ult ptr %scevgep, %scevgep96
  %bound1 = icmp ult ptr %scevgep95, %scevgep94
  %found.conflict = and i1 %bound0, %bound1
  %bound0115 = icmp ult ptr %scevgep, %scevgep98
  %bound1116 = icmp ult ptr %scevgep97, %scevgep94
  %found.conflict117 = and i1 %bound0115, %bound1116
  %conflict.rdx = or i1 %found.conflict, %found.conflict117
  %bound0118 = icmp ult ptr %scevgep95, %scevgep98
  %bound1119 = icmp ult ptr %scevgep97, %scevgep96
  %found.conflict120 = and i1 %bound0118, %bound1119
  %conflict.rdx121 = or i1 %conflict.rdx, %found.conflict120
  %n.vec = and i64 %i.ai, -2                      ; 3 uses
  %i.aj = or i64 %i.ai, 1
  %i.ak = trunc nsw i64 %n.vec to i32
  %i.al = shl i32 %i.ak, 1
  %broadcast.splatinsert182 = insertelement <2 x double> poison, double %i.l, i64 0
  %broadcast.splat183 = shufflevector <2 x double> %broadcast.splatinsert182, <2 x double> poison, <2 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph78.split.us, %._crit_edge.us
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %._crit_edge.us ], [ 0, %.lr.ph78.split.us ] ; 8 uses
  %.07276.us = phi i32 [ %.2.us.lcssa, %._crit_edge.us ], [ 0, %.lr.ph78.split.us ] ; 6 uses
  %i.am = trunc nuw i64 %indvars.iv85 to i32
  %i.an = uitofp nneg i32 %i.am to double
  %i.ao = fmul nnan double %i.an, f0x401921FB54442D18
  %i.ap = fdiv double %i.ao, %i.j                 ; 2 uses
  %i.aq = tail call double @cos(double noundef %i.ap) #7 ; 3 uses
  %i.ar = tail call double @sin(double noundef %i.ap) #7 ; 3 uses
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 4 uses
  %i.as = getelementptr [8 x i8], ptr %i.p, i64 %indvars.iv85 ; 3 uses
  store double %i.aq, ptr %i.as, align 8, !tbaa !30
  %i.at = getelementptr [8 x i8], ptr %i.as, i64 %i.q
  store double %i.ar, ptr %i.at, align 8, !tbaa !30
  %i.au = getelementptr i8, ptr %i.as, i64 %.idx.us
  store double %i.t, ptr %i.au, align 8, !tbaa !30
  br i1 %exitcond82.peel.not, label %._crit_edge.us, label %.peel.next

.peel.next:                                       ; preds = %bb.a
  %i.av = load ptr, ptr %3, align 8, !tbaa !17    ; 9 uses
  %i.aw = icmp eq i64 %indvars.iv.next86, %i.r
  %i.ax = trunc nuw nsw i64 %indvars.iv.next86 to i32
  %iv.rem = select i1 %i.aw, i32 0, i32 %i.ax     ; 3 uses
  %i.ay = load i64, ptr %i.m, align 8, !tbaa !18  ; 6 uses
  %i.az = shl nsw i64 %i.ay, 1                    ; 3 uses
  br i1 %or.cond, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.peel.next
  %i.ba = sext i32 %.07276.us to i64              ; 2 uses
  %i.bb = shl nsw i64 %i.ba, 2                    ; 5 uses
  %scevgep99 = getelementptr i8, ptr %i.av, i64 %i.bb ; 5 uses
  %scevgep100 = getelementptr i8, ptr %i.av, i64 %i.ah ; 2 uses
  %scevgep101 = getelementptr i8, ptr %scevgep100, i64 %i.bb ; 5 uses
  %i.bc = add i64 %i.ay, %i.ba
  %i.bd = shl i64 %i.bc, 2                        ; 4 uses
  %scevgep102 = getelementptr i8, ptr %i.av, i64 %i.bd ; 5 uses
  %scevgep103 = getelementptr i8, ptr %scevgep100, i64 %i.bd ; 5 uses
  %i.be = shl i64 %i.ay, 3
  %i.bf = add i64 %i.be, %i.bb                    ; 4 uses
  %scevgep104 = getelementptr i8, ptr %i.av, i64 %i.bf ; 5 uses
  %scevgep105 = getelementptr i8, ptr %i.av, i64 %i.ah
  %scevgep106 = getelementptr i8, ptr %scevgep105, i64 %i.bf ; 5 uses
  %scevgep107 = getelementptr i8, ptr %i.av, i64 4 ; 3 uses
  %scevgep108 = getelementptr i8, ptr %scevgep107, i64 %i.bb ; 5 uses
  %i.bg = getelementptr i8, ptr %i.av, i64 %i.v
  %scevgep109 = getelementptr i8, ptr %i.bg, i64 -8 ; 3 uses
  %scevgep110 = getelementptr i8, ptr %scevgep109, i64 %i.bb ; 5 uses
  %scevgep111 = getelementptr i8, ptr %scevgep107, i64 %i.bd ; 5 uses
  %scevgep112 = getelementptr i8, ptr %scevgep109, i64 %i.bd ; 5 uses
  %scevgep113 = getelementptr i8, ptr %scevgep107, i64 %i.bf ; 5 uses
  %scevgep114 = getelementptr i8, ptr %scevgep109, i64 %i.bf ; 5 uses
  %bound0122 = icmp ult ptr %scevgep99, %scevgep103
  %bound1123 = icmp ult ptr %scevgep102, %scevgep101
  %found.conflict124 = and i1 %bound0122, %bound1123
  %conflict.rdx125 = or i1 %conflict.rdx121, %found.conflict124
  %bound0126 = icmp ult ptr %scevgep99, %scevgep106
  %bound1127 = icmp ult ptr %scevgep104, %scevgep101
  %found.conflict128 = and i1 %bound0126, %bound1127
  %conflict.rdx129 = or i1 %conflict.rdx125, %found.conflict128
  %bound0130 = icmp ult ptr %scevgep99, %scevgep110
  %bound1131 = icmp ult ptr %scevgep108, %scevgep101
  %found.conflict132 = and i1 %bound0130, %bound1131
  %conflict.rdx133 = or i1 %conflict.rdx129, %found.conflict132
  %bound0134 = icmp ult ptr %scevgep99, %scevgep112
  %bound1135 = icmp ult ptr %scevgep111, %scevgep101
  %found.conflict136 = and i1 %bound0134, %bound1135
  %conflict.rdx137 = or i1 %conflict.rdx133, %found.conflict136
  %bound0138 = icmp ult ptr %scevgep99, %scevgep114
  %bound1139 = icmp ult ptr %scevgep113, %scevgep101
  %found.conflict140 = and i1 %bound0138, %bound1139
  %conflict.rdx141 = or i1 %conflict.rdx137, %found.conflict140
  %bound0142 = icmp ult ptr %scevgep102, %scevgep106
  %bound1143 = icmp ult ptr %scevgep104, %scevgep103
  %found.conflict144 = and i1 %bound0142, %bound1143
  %conflict.rdx145 = or i1 %conflict.rdx141, %found.conflict144
  %bound0146 = icmp ult ptr %scevgep102, %scevgep110
  %bound1147 = icmp ult ptr %scevgep108, %scevgep103
  %found.conflict148 = and i1 %bound0146, %bound1147
  %conflict.rdx149 = or i1 %conflict.rdx145, %found.conflict148
  %bound0150 = icmp ult ptr %scevgep102, %scevgep112
  %bound1151 = icmp ult ptr %scevgep111, %scevgep103
  %found.conflict152 = and i1 %bound0150, %bound1151
  %conflict.rdx153 = or i1 %conflict.rdx149, %found.conflict152
  %bound0154 = icmp ult ptr %scevgep102, %scevgep114
  %bound1155 = icmp ult ptr %scevgep113, %scevgep103
  %found.conflict156 = and i1 %bound0154, %bound1155
  %conflict.rdx157 = or i1 %conflict.rdx153, %found.conflict156
  %bound0158 = icmp ult ptr %scevgep104, %scevgep110
  %bound1159 = icmp ult ptr %scevgep108, %scevgep106
  %found.conflict160 = and i1 %bound0158, %bound1159
  %conflict.rdx161 = or i1 %conflict.rdx157, %found.conflict160
  %bound0162 = icmp ult ptr %scevgep104, %scevgep112
  %bound1163 = icmp ult ptr %scevgep111, %scevgep106
  %found.conflict164 = and i1 %bound0162, %bound1163
  %conflict.rdx165 = or i1 %conflict.rdx161, %found.conflict164
  %bound0166 = icmp ult ptr %scevgep104, %scevgep114
  %bound1167 = icmp ult ptr %scevgep113, %scevgep106
  %found.conflict168 = and i1 %bound0166, %bound1167
  %conflict.rdx169 = or i1 %conflict.rdx165, %found.conflict168
  %bound0170 = icmp ult ptr %scevgep108, %scevgep112
  %bound1171 = icmp ult ptr %scevgep111, %scevgep110
  %found.conflict172 = and i1 %bound0170, %bound1171
  %conflict.rdx173 = or i1 %conflict.rdx169, %found.conflict172
  %bound0174 = icmp ult ptr %scevgep108, %scevgep114
  %bound1175 = icmp ult ptr %scevgep113, %scevgep110
  %found.conflict176 = and i1 %bound0174, %bound1175
  %conflict.rdx177 = or i1 %conflict.rdx173, %found.conflict176
  %bound0178 = icmp ult ptr %scevgep111, %scevgep114
  %bound1179 = icmp ult ptr %scevgep113, %scevgep112
  %found.conflict180 = and i1 %bound0178, %bound1179
  %conflict.rdx181 = or i1 %conflict.rdx177, %found.conflict180
  br i1 %conflict.rdx181, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bh = add i32 %.07276.us, %i.al               ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %iv.rem, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert184 = insertelement <2 x i64> poison, i64 %indvars.iv85, i64 0
  %broadcast.splat185 = shufflevector <2 x i64> %broadcast.splatinsert184, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert186 = insertelement <2 x double> poison, double %i.aq, i64 0
  %broadcast.splat187 = shufflevector <2 x double> %broadcast.splatinsert186, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert188 = insertelement <2 x double> poison, double %i.ar, i64 0
  %broadcast.splat189 = shufflevector <2 x double> %broadcast.splatinsert188, <2 x double> poison, <2 x i32> zeroinitializer
  %invariant.op = add i64 2, %indvars.iv85
  %invariant.op198 = add <2 x i64> splat (i64 -1), %broadcast.splat185
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.ind = phi <2 x i64> [ <i64 1, i64 2>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 4 uses
  %vec.ind190.a = phi <2 x i32> [ <i32 1, i32 2>, %vector.ph ], [ %vec.ind.next193, %vector.body ] ; 2 uses
  %i.bi = or disjoint i64 %index, 1
  %i.bj = trunc i64 %index to i32
  %i.bk = shl i32 %i.bj, 1
  %i.bl = add i32 %.07276.us, %i.bk
  %i.bm = uitofp nneg <2 x i32> %vec.ind190.a to <2 x double>
  %i.bn = fdiv <2 x double> %i.bm, %broadcast.splat183
  %i.bo = add nuw nsw i64 %i.bi, %indvars.iv85    ; 2 uses
  %.reass = add i64 %index, %invariant.op
  %i.bp = insertelement <2 x i64> poison, i64 %i.bo, i64 0
  %i.bq = insertelement <2 x i64> %i.bp, i64 %.reass, i64 1
  %i.br = getelementptr [8 x i8], ptr %i.p, i64 %i.bo ; 3 uses
  store <2 x double> %broadcast.splat187, ptr %i.br, align 8, !tbaa !30, !alias.scope !31, !noalias !32
  %i.bs = getelementptr [8 x i8], ptr %i.br, i64 %i.q
  store <2 x double> %broadcast.splat189, ptr %i.bs, align 8, !tbaa !30, !alias.scope !33, !noalias !34
  %i.bt = getelementptr i8, ptr %i.br, i64 %.idx.us
  store <2 x double> %i.bn, ptr %i.bt, align 8, !tbaa !30, !alias.scope !34
  %i.bu = add nsw <2 x i64> %vec.ind, splat (i64 -1)
  %.reass199 = add <2 x i64> %vec.ind, %invariant.op198
  %i.bv = sext i32 %i.bl to i64
  %i.bw = getelementptr [4 x i8], ptr %i.av, i64 %i.bv ; 3 uses
  %i.bx = trunc nsw <2 x i64> %.reass199 to <2 x i32>
  %i.by = getelementptr [4 x i8], ptr %i.bw, i64 %i.ay
  %i.bz = trunc <2 x i64> %i.bu to <2 x i32>
  %i.ca = add <2 x i32> %broadcast.splat, %i.bz   ; 2 uses
  %i.cb = getelementptr [4 x i8], ptr %i.bw, i64 %i.az
  %interleaved.vec = shufflevector <2 x i32> %i.bx, <2 x i32> %i.ca, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.bw, align 4, !tbaa !35
  %4 = trunc <2 x i64> %vec.ind to <2 x i32>
  %i.cc = add <2 x i32> %broadcast.splat, %4
  %interleaved.vec191 = shufflevector <2 x i32> %i.ca, <2 x i32> %i.cc, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec191, ptr %i.by, align 4, !tbaa !35
  %i.cd = shufflevector <2 x i64> %i.bq, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ce = trunc nuw <4 x i64> %i.cd to <4 x i32>
  %interleaved.vec192 = shufflevector <4 x i32> %i.ce, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec192, ptr %i.cb, align 4, !tbaa !35
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %vec.ind.next193 = add <2 x i32> %vec.ind190.a, splat (i32 2)
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.peel.next, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.peel.next ], [ %i.aj, %middle.block ]
  %.174.us.ph = phi i32 [ %.07276.us, %vector.memcheck ], [ %.07276.us, %.peel.next ], [ %i.bh, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %.174.us = phi i32 [ %i.de, %scalar.ph ], [ %.174.us.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cg = trunc nuw nsw i64 %indvars.iv to i32
  %i.ch = uitofp nneg i32 %i.cg to double
  %i.ci = fdiv double %i.ch, %i.l
  %i.cj = mul nuw nsw i64 %indvars.iv, %i.r       ; 2 uses
  %i.ck = add nuw nsw i64 %i.cj, %indvars.iv85    ; 2 uses
  %i.cl = getelementptr [8 x i8], ptr %i.p, i64 %i.ck ; 3 uses
  store double %i.aq, ptr %i.cl, align 8, !tbaa !30
  %i.cm = getelementptr [8 x i8], ptr %i.cl, i64 %i.q
  store double %i.ar, ptr %i.cm, align 8, !tbaa !30
  %i.cn = getelementptr i8, ptr %i.cl, i64 %.idx.us
  store double %i.ci, ptr %i.cn, align 8, !tbaa !30
  %i.co = add nsw i64 %indvars.iv, -1
  %i.cp = mul nuw nsw i64 %i.co, %i.s             ; 2 uses
  %i.cq = add nsw i64 %indvars.iv85, %i.cp
  %i.cr = sext i32 %.174.us to i64
  %i.cs = getelementptr [4 x i8], ptr %i.av, i64 %i.cr ; 4 uses
  %i.ct = trunc nsw i64 %i.cq to i32
  store i32 %i.ct, ptr %i.cs, align 4, !tbaa !35
  %i.cu = getelementptr [4 x i8], ptr %i.cs, i64 %i.ay
  %i.cv = trunc i64 %i.cp to i32
  %i.cw = add i32 %iv.rem, %i.cv                  ; 2 uses
  store i32 %i.cw, ptr %i.cu, align 4, !tbaa !35
  %i.cx = getelementptr [4 x i8], ptr %i.cs, i64 %i.az
  %i.cy = trunc nuw i64 %i.ck to i32              ; 2 uses
  store i32 %i.cy, ptr %i.cx, align 4, !tbaa !35
  %i.cz = getelementptr i8, ptr %i.cs, i64 4      ; 3 uses
  store i32 %i.cw, ptr %i.cz, align 4, !tbaa !35
  %i.da = getelementptr [4 x i8], ptr %i.cz, i64 %i.ay
  %i.db = trunc i64 %i.cj to i32
  %i.dc = add i32 %iv.rem, %i.db
  store i32 %i.dc, ptr %i.da, align 4, !tbaa !35
  %i.dd = getelementptr [4 x i8], ptr %i.cz, i64 %i.az
  store i32 %i.cy, ptr %i.dd, align 4, !tbaa !35
  %i.de = add nsw i32 %.174.us, 2                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond82.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond82.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !26

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block, %bb.a
  %.2.us.lcssa = phi i32 [ %.07276.us, %bb.a ], [ %i.bh, %middle.block ], [ %i.de, %scalar.ph ]
  %exitcond89.not = icmp eq i64 %indvars.iv.next86, %i.r
  br i1 %exitcond89.not, label %._crit_edge79, label %bb.a, !llvm.loop !27

._crit_edge79.loopexit195.unr-lcssa:              ; preds = %.lr.ph78.split
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge79, label %.lr.ph78.split.epil.preheader

.lr.ph78.split.epil.preheader:                    ; preds = %._crit_edge79.loopexit195.unr-lcssa, %.lr.ph78.split.preheader
  %.07177.epil.init = phi i32 [ 0, %.lr.ph78.split.preheader ], [ %i.ei, %._crit_edge79.loopexit195.unr-lcssa ]
  %lcmp.mod196 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod196)
  br label %.lr.ph78.split.epil

.lr.ph78.split.epil:                              ; preds = %.lr.ph78.split.epil, %.lr.ph78.split.epil.preheader
  %.07177.epil = phi i32 [ %i.dk, %.lr.ph78.split.epil ], [ %.07177.epil.init, %.lr.ph78.split.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph78.split.epil ], [ 0, %.lr.ph78.split.epil.preheader ]
  %i.df = uitofp nneg i32 %.07177.epil to double
  %i.dg = fmul nnan double %i.df, f0x401921FB54442D18
  %i.dh = fdiv double %i.dg, %i.j                 ; 2 uses
  %i.di = tail call double @cos(double noundef %i.dh) #7 ; 0 uses
  %i.dj = tail call double @sin(double noundef %i.dh) #7 ; 0 uses
  %i.dk = add nuw nsw i32 %.07177.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge79, label %.lr.ph78.split.epil, !llvm.loop !28

._crit_edge79:                                    ; preds = %._crit_edge79.loopexit195.unr-lcssa, %.lr.ph78.split.epil, %._crit_edge.us, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  ret void

.lr.ph78.split:                                   ; preds = %.lr.ph78.split, %.lr.ph78.split.preheader.new
  %.07177 = phi i32 [ 0, %.lr.ph78.split.preheader.new ], [ %i.ei, %.lr.ph78.split ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph78.split.preheader.new ], [ %niter.next.3, %.lr.ph78.split ]
  %i.dl = uitofp nneg i32 %.07177 to double
  %i.dm = fmul nnan double %i.dl, f0x401921FB54442D18
  %i.dn = fdiv double %i.dm, %i.j                 ; 2 uses
  %i.do = tail call double @cos(double noundef %i.dn) #7 ; 0 uses
  %i.dp = tail call double @sin(double noundef %i.dn) #7 ; 0 uses
  %i.dq = or disjoint i32 %.07177, 1
  %i.dr = uitofp nneg i32 %i.dq to double
  %i.ds = fmul nnan double %i.dr, f0x401921FB54442D18
  %i.dt = fdiv double %i.ds, %i.j                 ; 2 uses
  %i.du = tail call double @cos(double noundef %i.dt) #7 ; 0 uses
  %i.dv = tail call double @sin(double noundef %i.dt) #7 ; 0 uses
  %i.dw = or disjoint i32 %.07177, 2
  %i.dx = uitofp nneg i32 %i.dw to double
  %i.dy = fmul nnan double %i.dx, f0x401921FB54442D18
  %i.dz = fdiv double %i.dy, %i.j                 ; 2 uses
  %i.ea = tail call double @cos(double noundef %i.dz) #7 ; 0 uses
  %i.eb = tail call double @sin(double noundef %i.dz) #7 ; 0 uses
  %i.ec = or disjoint i32 %.07177, 3
  %i.ed = uitofp nneg i32 %i.ec to double
  %i.ee = fmul nnan double %i.ed, f0x401921FB54442D18
  %i.ef = fdiv double %i.ee, %i.j                 ; 2 uses
  %i.eg = tail call double @cos(double noundef %i.ef) #7 ; 0 uses
  %i.eh = tail call double @sin(double noundef %i.ef) #7 ; 0 uses
  %i.ei = add nuw nsw i32 %.07177, 4              ; 2 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge79.loopexit195.unr-lcssa, label %.lr.ph78.split, !llvm.loop !27
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !41
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !13
  tail call void @free(ptr noundef %i.f) #7
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 2305843009213693951
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #7 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !20
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #8
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 3
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #9 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #7 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !20
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #8
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !13
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !14
  store i64 %3, ptr %i.c, align 8, !tbaa !41
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #2

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !42
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.f) #7
end_hunk_0

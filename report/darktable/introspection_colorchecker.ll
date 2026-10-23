Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_colorchecker?download=true
inline.NumInlined: 70
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 63
begin_hunk_0_@commit_params:bb.a
  %wide.load1145.1 = load <4 x double>, ptr %i.ave, align 8, !tbaa !47
  %wide.load1146.1 = load <4 x double>, ptr %i.avf, align 8, !tbaa !47
  %wide.load1147.1 = load <4 x double>, ptr %i.avg, align 8, !tbaa !47
  %i.avh = fptrunc reassoc nsz arcp contract afn <4 x double> %wide.load1144.1 to <4 x float>
  %i.avi = fptrunc reassoc nsz arcp contract afn <4 x double> %wide.load1145.1 to <4 x float>
  %i.avj = fptrunc reassoc nsz arcp contract afn <4 x double> %wide.load1146.1 to <4 x float>
  %i.avk = fptrunc reassoc nsz arcp contract afn <4 x double> %wide.load1147.1 to <4 x float>
  %i.avl = getelementptr inbounds nuw i8, ptr %i.s, i64 1080
  %i.avm = getelementptr inbounds nuw i8, ptr %i.s, i64 1096
  %i.avn = getelementptr inbounds nuw i8, ptr %i.s, i64 1112
  %i.avo = getelementptr inbounds nuw i8, ptr %i.s, i64 1128
  store <4 x float> %i.avh, ptr %i.avl, align 4, !tbaa !12
  store <4 x float> %i.avi, ptr %i.avm, align 4, !tbaa !12
  store <4 x float> %i.avj, ptr %i.avn, align 4, !tbaa !12
  store <4 x float> %i.avk, ptr %i.avo, align 4, !tbaa !12
  %i.avp = icmp eq i64 %n.vec1141, 32
  br i1 %i.avp, label %middle.block1149, label %vector.body1142.2

vector.body1142.2:                                ; preds = %vector.body1142.1
  %i.avq = getelementptr inbounds nuw i8, ptr %i.wl, i64 256
  %i.avr = getelementptr inbounds nuw i8, ptr %i.wl, i64 288
  %i.avs = getelementptr inbounds nuw i8, ptr %i.wl, i64 320
  %i.avt = getelementptr inbounds nuw i8, ptr %i.wl, i64 352
  %wide.load1144.2 = load <4 x double>, ptr %i.avq, align 8, !tbaa !47
  %wide.load1145.2 = load <4 x double>, ptr %i.avr, align 8, !tbaa !47
  %wide.load1146.2 = load <4 x double>, ptr %i.avs, align 8, !tbaa !47
  %wide.load1147.2 = load <4 x double>, ptr %i.avt, align 8, !tbaa !47
  %i.avu = fptrunc reassoc nsz arcp contract afn <4 x double> %wide.load1144.2 to <4 x float>
  %i.avv = fptrunc reassoc nsz arcp contract afn <4 x double> %wide.load1145.2 to <4 x float>
  %i.avw = fptrunc reassoc nsz arcp contract afn <4 x double> %wide.load1146.2 to <4 x float>
  %i.avx = fptrunc reassoc nsz arcp contract afn <4 x double> %wide.load1147.2 to <4 x float>
  %i.avy = getelementptr inbounds nuw i8, ptr %i.s, i64 1144
  %i.avz = getelementptr inbounds nuw i8, ptr %i.s, i64 1160
  %i.awa = getelementptr inbounds nuw i8, ptr %i.s, i64 1176
  %i.awb = getelementptr inbounds nuw i8, ptr %i.s, i64 1192
  store <4 x float> %i.avu, ptr %i.avy, align 4, !tbaa !12
  store <4 x float> %i.avv, ptr %i.avz, align 4, !tbaa !12
  store <4 x float> %i.avw, ptr %i.awa, align 4, !tbaa !12
  store <4 x float> %i.avx, ptr %i.awb, align 4, !tbaa !12
  br label %middle.block1149

middle.block1149:                                 ; preds = %vector.body1142.2, %vector.body1142.1, %vector.ph1140
  %cmp.n1150 = icmp eq i64 %n.vec1141, %i.wh
  br i1 %cmp.n1150, label %.loopexit, label %vec.epilog.iter.check1154

vec.epilog.iter.check1154:                        ; preds = %middle.block1149
  %min.epilog.iters.check1155 = icmp eq i64 %i.aur, 0
  br i1 %min.epilog.iters.check1155, label %vec.epilog.scalar.ph1153.preheader, label %vec.epilog.ph1156, !prof !48

vec.epilog.ph1156:                                ; preds = %iter.check1152, %vec.epilog.iter.check1154
  %vec.epilog.resume.val1151 = phi i64 [ %n.vec1141, %vec.epilog.iter.check1154 ], [ 0, %iter.check1152 ]
  %n.vec1157 = and i64 %i.wh, 124                 ; 3 uses
  br label %vec.epilog.vector.body1158

vec.epilog.vector.body1158:                       ; preds = %vec.epilog.vector.body1158, %vec.epilog.ph1156
  %index1159 = phi i64 [ %vec.epilog.resume.val1151, %vec.epilog.ph1156 ], [ %index.next1161, %vec.epilog.vector.body1158 ] ; 3 uses
  %i.awc = getelementptr inbounds nuw [8 x i8], ptr %i.wl, i64 %index1159
  %wide.load1160 = load <4 x double>, ptr %i.awc, align 8, !tbaa !47
  %i.awd = fptrunc reassoc nsz arcp contract afn <4 x double> %wide.load1160 to <4 x float>
  %i.awe = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %index1159
  store <4 x float> %i.awd, ptr %i.awe, align 4, !tbaa !12
  %index.next1161 = add nuw i64 %index1159, 4     ; 2 uses
  %i.awf = icmp eq i64 %index.next1161, %n.vec1157
  br i1 %i.awf, label %vec.epilog.middle.block1162, label %vec.epilog.vector.body1158, !llvm.loop !181

vec.epilog.middle.block1162:                      ; preds = %vec.epilog.vector.body1158
  %cmp.n1163 = icmp eq i64 %n.vec1157, %i.wh
  br i1 %cmp.n1163, label %.loopexit, label %vec.epilog.scalar.ph1153.preheader

vec.epilog.scalar.ph1153.preheader:               ; preds = %vec.epilog.iter.check1154, %vec.epilog.middle.block1162
  %indvars.iv625.ph = phi i64 [ %n.vec1141, %vec.epilog.iter.check1154 ], [ %n.vec1157, %vec.epilog.middle.block1162 ]
  br label %vec.epilog.scalar.ph1153

vec.epilog.scalar.ph1153:                         ; preds = %vec.epilog.scalar.ph1153.preheader, %vec.epilog.scalar.ph1153
  %indvars.iv625 = phi i64 [ %indvars.iv.next626, %vec.epilog.scalar.ph1153 ], [ %indvars.iv625.ph, %vec.epilog.scalar.ph1153.preheader ] ; 3 uses
  %i.awg = getelementptr inbounds nuw [8 x i8], ptr %i.wl, i64 %indvars.iv625
  %i.awh = load double, ptr %i.awg, align 8, !tbaa !47
  %i.awi = fptrunc reassoc nsz arcp contract afn double %i.awh to float
  %i.awj = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv625
  store float %i.awi, ptr %i.awj, align 4, !tbaa !12
  %indvars.iv.next626 = add nuw nsw i64 %indvars.iv625, 1 ; 2 uses
  %exitcond629.not = icmp eq i64 %indvars.iv.next626, %i.wh
  br i1 %exitcond629.not, label %.loopexit, label %vec.epilog.scalar.ph1153, !llvm.loop !182

.loopexit:                                        ; preds = %vec.epilog.scalar.ph1153, %middle.block1149, %vec.epilog.middle.block1162, %._crit_edge
  tail call void @free(ptr noundef %i.aco) #23
  tail call void @free(ptr noundef %i.wl) #23
  tail call void @free(ptr noundef %i.wk) #23
  br label %bb.ad

bb.ad:                                            ; preds = %bb.m, %bb.k, %bb.f, %bb.d, %bb.p, %bb.i, %.loopexit, %bb.r, %bb.b, %.preheader512
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @gauss_solve(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef range(i32 2, 4) %2) unnamed_addr #11 {
bb.a:
  %i.a = shl nuw nsw i32 %2, 2
  %i.b = zext nneg i32 %i.a to i64
  %i.c = tail call noalias ptr @malloc(i64 noundef %i.b) #27 ; 4 uses
  %i.d = tail call fastcc i32 @gauss_make_triangular(ptr noundef nonnull %0, ptr noundef %i.c, i32 noundef %2) ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.f, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.e = add nsw i32 %2, -1                       ; 3 uses
  %i.f = zext nneg i32 %2 to i64                  ; 15 uses
  %wide.trip.count65.i = zext nneg i32 %i.e to i64 ; 5 uses
  %i.g = add nuw nsw i64 %i.f, 3
  %i.h = load i32, ptr %i.c, align 4, !tbaa !15
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [8 x i8], ptr %1, i64 %i.i ; 2 uses
  %i.k = load double, ptr %i.j, align 8, !tbaa !47 ; 2 uses
  %i.l = load double, ptr %1, align 8, !tbaa !47
  store double %i.l, ptr %i.j, align 8, !tbaa !47
  store double %i.k, ptr %1, align 8, !tbaa !47
  %xtraiter = and i64 %i.g, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.preheader.i.1:                             ; preds = %.lr.ph.i.prol.loopexit
  %i.m = and i64 %i.f, 1                          ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !15
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [8 x i8], ptr %1, i64 %i.p ; 2 uses
  %i.r = load double, ptr %i.q, align 8, !tbaa !47 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.t = load double, ptr %i.s, align 8, !tbaa !47
  store double %i.t, ptr %i.q, align 8, !tbaa !47
  store double %i.r, ptr %i.s, align 8, !tbaa !47
  %invariant.gep.i.1 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %lcmp.mod.1.not = icmp eq i64 %i.m, 0
  br i1 %lcmp.mod.1.not, label %.lr.ph.i.prol.loopexit.1, label %.lr.ph.i.prol.1

.lr.ph.i.prol.1:                                  ; preds = %.lr.ph.preheader.i.1, %.lr.ph.i.prol.1
  %indvars.iv59.i.prol.1 = phi i64 [ %indvars.iv.next60.i.prol.1, %.lr.ph.i.prol.1 ], [ 2, %.lr.ph.preheader.i.1 ] ; 3 uses
  %prol.iter.1 = phi i64 [ %prol.iter.next.1, %.lr.ph.i.prol.1 ], [ 0, %.lr.ph.preheader.i.1 ]
  %i.u = mul nuw nsw i64 %indvars.iv59.i.prol.1, %i.f
  %gep.i.prol.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.1, i64 %i.u
  %i.v = load double, ptr %gep.i.prol.1, align 8, !tbaa !47
  %i.w = fmul reassoc nsz arcp contract afn double %i.v, %i.r
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv59.i.prol.1 ; 2 uses
  %i.y = load double, ptr %i.x, align 8, !tbaa !47
  %i.z = fadd reassoc nsz arcp contract afn double %i.y, %i.w
  store double %i.z, ptr %i.x, align 8, !tbaa !47
  %indvars.iv.next60.i.prol.1 = add nuw nsw i64 %indvars.iv59.i.prol.1, 1 ; 2 uses
  %prol.iter.next.1 = add i64 %prol.iter.1, 1     ; 2 uses
  %prol.iter.cmp.1.not = icmp eq i64 %prol.iter.next.1, %i.m
  br i1 %prol.iter.cmp.1.not, label %.lr.ph.i.prol.loopexit.1, label %.lr.ph.i.prol.1, !llvm.loop !185

.lr.ph.i.prol.loopexit.1:                         ; preds = %.lr.ph.i.prol.1, %.lr.ph.preheader.i.1
  %indvars.iv59.i.unr.1 = phi i64 [ 2, %.lr.ph.preheader.i.1 ], [ %indvars.iv.next60.i.prol.1, %.lr.ph.i.prol.1 ]
  %i.aa = add nsw i32 %2, -3
  %i.ab = icmp ult i32 %i.aa, 3
  br i1 %i.ab, label %.lr.ph58.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i.prol.loopexit.1, %.lr.ph.i.1
  %indvars.iv59.i.1 = phi i64 [ %indvars.iv.next60.i.3.1, %.lr.ph.i.1 ], [ %indvars.iv59.i.unr.1, %.lr.ph.i.prol.loopexit.1 ] ; 6 uses
  %i.ac = mul nuw nsw i64 %indvars.iv59.i.1, %i.f
  %gep.i.112 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.1, i64 %i.ac
  %i.ad = load double, ptr %gep.i.112, align 8, !tbaa !47
  %i.ae = fmul reassoc nsz arcp contract afn double %i.ad, %i.r
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv59.i.1 ; 2 uses
  %i.ag = load double, ptr %i.af, align 8, !tbaa !47
  %i.ah = fadd reassoc nsz arcp contract afn double %i.ag, %i.ae
  store double %i.ah, ptr %i.af, align 8, !tbaa !47
  %indvars.iv.next60.i.113 = add nuw nsw i64 %indvars.iv59.i.1, 1 ; 2 uses
  %i.ai = mul nuw nsw i64 %indvars.iv.next60.i.113, %i.f
  %gep.i.1.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.1, i64 %i.ai
  %i.aj = load double, ptr %gep.i.1.1, align 8, !tbaa !47
  %i.ak = fmul reassoc nsz arcp contract afn double %i.aj, %i.r
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next60.i.113 ; 2 uses
  %i.am = load double, ptr %i.al, align 8, !tbaa !47
  %i.an = fadd reassoc nsz arcp contract afn double %i.am, %i.ak
  store double %i.an, ptr %i.al, align 8, !tbaa !47
  %indvars.iv.next60.i.1.1 = add nuw nsw i64 %indvars.iv59.i.1, 2 ; 2 uses
  %i.ao = mul nuw nsw i64 %indvars.iv.next60.i.1.1, %i.f
  %gep.i.2.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.1, i64 %i.ao
  %i.ap = load double, ptr %gep.i.2.1, align 8, !tbaa !47
  %i.aq = fmul reassoc nsz arcp contract afn double %i.ap, %i.r
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next60.i.1.1 ; 2 uses
  %i.as = load double, ptr %i.ar, align 8, !tbaa !47
  %i.at = fadd reassoc nsz arcp contract afn double %i.as, %i.aq
  store double %i.at, ptr %i.ar, align 8, !tbaa !47
  %indvars.iv.next60.i.2.1 = add nuw nsw i64 %indvars.iv59.i.1, 3 ; 2 uses
  %i.au = mul nuw nsw i64 %indvars.iv.next60.i.2.1, %i.f
  %gep.i.3.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.1, i64 %i.au
  %i.av = load double, ptr %gep.i.3.1, align 8, !tbaa !47
  %i.aw = fmul reassoc nsz arcp contract afn double %i.av, %i.r
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next60.i.2.1 ; 2 uses
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !47
  %i.az = fadd reassoc nsz arcp contract afn double %i.ay, %i.aw
  store double %i.az, ptr %i.ax, align 8, !tbaa !47
  %indvars.iv.next60.i.3.1 = add nuw nsw i64 %indvars.iv59.i.1, 4 ; 2 uses
  %exitcond.not.i.3.1 = icmp eq i64 %indvars.iv.next60.i.3.1, %i.f
  br i1 %exitcond.not.i.3.1, label %.lr.ph58.i, label %.lr.ph.i.1

.lr.ph58.i:                                       ; preds = %.lr.ph.i.prol.loopexit.1, %.lr.ph.i.1, %.lr.ph.i.prol.loopexit
  %i.ba = add nuw nsw i32 %2, 1
  %i.bb = zext nneg i32 %i.ba to i64              ; 2 uses
  %i.bc = mul nuw nsw i64 %wide.trip.count65.i, %i.bb
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bc
  %i.be = load double, ptr %i.bd, align 8, !tbaa !47
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %wide.trip.count65.i ; 2 uses
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !47
  %i.bh = fdiv reassoc nsz arcp contract afn double %i.bg, %i.be ; 2 uses
  store double %i.bh, ptr %i.bf, align 8, !tbaa !47
  %invariant.gep75.i = getelementptr [8 x i8], ptr %0, i64 %wide.trip.count65.i
  %lcmp.mod16 = icmp ne i32 %i.e, 0
  tail call void @llvm.assume(i1 %lcmp.mod16)
  br label %bb.b

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i, %.lr.ph.i.prol
  %indvars.iv59.i.prol = phi i64 [ %indvars.iv.next60.i.prol, %.lr.ph.i.prol ], [ 1, %.lr.ph.preheader.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.preheader.i ]
  %i.bi = mul nuw nsw i64 %indvars.iv59.i.prol, %i.f
  %gep.i.prol = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bi
  %i.bj = load double, ptr %gep.i.prol, align 8, !tbaa !47
  %i.bk = fmul reassoc nsz arcp contract afn double %i.bj, %i.k
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv59.i.prol ; 2 uses
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !47
  %i.bn = fadd reassoc nsz arcp contract afn double %i.bm, %i.bk
  store double %i.bn, ptr %i.bl, align 8, !tbaa !47
  %indvars.iv.next60.i.prol = add nuw nsw i64 %indvars.iv59.i.prol, 1
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !185

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %exitcond66.not.i = icmp eq i32 %i.e, 1
  br i1 %exitcond66.not.i, label %.lr.ph58.i, label %.lr.ph.preheader.i.1

bb.b:                                             ; preds = %bb.b, %.lr.ph58.i
  %indvars.iv67.i.epil = phi i64 [ 0, %.lr.ph58.i ], [ %indvars.iv.next68.i.epil, %bb.b ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph58.i ], [ %epil.iter.next, %bb.b ]
  %i.bo = mul nuw nsw i64 %indvars.iv67.i.epil, %i.f
  %gep76.i.epil = getelementptr [8 x i8], ptr %invariant.gep75.i, i64 %i.bo
  %i.bp = load double, ptr %gep76.i.epil, align 8, !tbaa !47
  %i.bq = fmul reassoc nsz arcp contract afn double %i.bp, %i.bh
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv67.i.epil ; 2 uses
  %i.bs = load double, ptr %i.br, align 8, !tbaa !47
  %i.bt = fsub reassoc nsz arcp contract afn double %i.bs, %i.bq
  store double %i.bt, ptr %i.br, align 8, !tbaa !47
  %indvars.iv.next68.i.epil = add nuw nsw i64 %indvars.iv67.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %wide.trip.count65.i
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.b, !llvm.loop !186

.epilog-lcssa:                                    ; preds = %bb.b
  %indvars.iv.next73.i = add nsw i64 %wide.trip.count65.i, -1 ; 5 uses
  %.not19 = icmp eq i32 %2, 2
  br i1 %.not19, label %gauss_solve_triangular.exit, label %bb.c

bb.c:                                             ; preds = %.epilog-lcssa
  %3 = mul nuw nsw i64 %indvars.iv.next73.i, %i.bb
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %3
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !47
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next73.i ; 2 uses
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !47
  %i.by = fdiv reassoc nsz arcp contract afn double %i.bx, %i.bv ; 6 uses
  store double %i.by, ptr %i.bw, align 8, !tbaa !47
  %invariant.gep75.i.1 = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.next73.i ; 5 uses
  %xtraiter14.1 = and i64 %indvars.iv.next73.i, 3 ; 3 uses
  %i.bz = add nsw i32 %2, -3
  %i.ca = icmp ult i32 %i.bz, 3
  br i1 %i.ca, label %.epil.preheader.1, label %.new.1

.new.1:                                           ; preds = %bb.c
  %unroll_iter.1 = and i64 %indvars.iv.next73.i, -4
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.new.1
  %indvars.iv67.i.1 = phi i64 [ 0, %.new.1 ], [ %indvars.iv.next68.i.3.1, %bb.d ] ; 6 uses
  %niter.1 = phi i64 [ 0, %.new.1 ], [ %niter.next.3.1, %bb.d ]
  %i.cb = mul nuw nsw i64 %indvars.iv67.i.1, %i.f
  %gep76.i.117 = getelementptr [8 x i8], ptr %invariant.gep75.i.1, i64 %i.cb
  %i.cc = load double, ptr %gep76.i.117, align 8, !tbaa !47
  %i.cd = fmul reassoc nsz arcp contract afn double %i.cc, %i.by
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv67.i.1 ; 2 uses
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !47
  %i.cg = fsub reassoc nsz arcp contract afn double %i.cf, %i.cd
  store double %i.cg, ptr %i.ce, align 8, !tbaa !47
  %indvars.iv.next68.i.118 = or disjoint i64 %indvars.iv67.i.1, 1 ; 2 uses
  %i.ch = mul nuw nsw i64 %indvars.iv.next68.i.118, %i.f
  %gep76.i.1.1 = getelementptr [8 x i8], ptr %invariant.gep75.i.1, i64 %i.ch
  %i.ci = load double, ptr %gep76.i.1.1, align 8, !tbaa !47
  %i.cj = fmul reassoc nsz arcp contract afn double %i.ci, %i.by
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next68.i.118 ; 2 uses
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !47
  %i.cm = fsub reassoc nsz arcp contract afn double %i.cl, %i.cj
  store double %i.cm, ptr %i.ck, align 8, !tbaa !47
  %indvars.iv.next68.i.1.1 = or disjoint i64 %indvars.iv67.i.1, 2 ; 2 uses
  %i.cn = mul nuw nsw i64 %indvars.iv.next68.i.1.1, %i.f
  %gep76.i.2.1 = getelementptr [8 x i8], ptr %invariant.gep75.i.1, i64 %i.cn
  %i.co = load double, ptr %gep76.i.2.1, align 8, !tbaa !47
  %i.cp = fmul reassoc nsz arcp contract afn double %i.co, %i.by
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next68.i.1.1 ; 2 uses
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !47
  %i.cs = fsub reassoc nsz arcp contract afn double %i.cr, %i.cp
  store double %i.cs, ptr %i.cq, align 8, !tbaa !47
  %indvars.iv.next68.i.2.1 = or disjoint i64 %indvars.iv67.i.1, 3 ; 2 uses
  %i.ct = mul nuw nsw i64 %indvars.iv.next68.i.2.1, %i.f
  %gep76.i.3.1 = getelementptr [8 x i8], ptr %invariant.gep75.i.1, i64 %i.ct
  %i.cu = load double, ptr %gep76.i.3.1, align 8, !tbaa !47
  %i.cv = fmul reassoc nsz arcp contract afn double %i.cu, %i.by
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next68.i.2.1 ; 2 uses
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !47
  %i.cy = fsub reassoc nsz arcp contract afn double %i.cx, %i.cv
  store double %i.cy, ptr %i.cw, align 8, !tbaa !47
  %indvars.iv.next68.i.3.1 = add nuw nsw i64 %indvars.iv67.i.1, 4 ; 2 uses
  %niter.next.3.1 = add i64 %niter.1, 4           ; 2 uses
  %niter.ncmp.3.1 = icmp eq i64 %niter.next.3.1, %unroll_iter.1
  br i1 %niter.ncmp.3.1, label %.unr-lcssa.1, label %bb.d

.unr-lcssa.1:                                     ; preds = %bb.d
  %lcmp.mod15.1.not = icmp eq i64 %xtraiter14.1, 0
  br i1 %lcmp.mod15.1.not, label %gauss_solve_triangular.exit, label %.epil.preheader.1

.epil.preheader.1:                                ; preds = %.unr-lcssa.1, %bb.c
  %indvars.iv67.i.epil.init.1 = phi i64 [ 0, %bb.c ], [ %indvars.iv.next68.i.3.1, %.unr-lcssa.1 ]
  %lcmp.mod16.1 = icmp ne i64 %xtraiter14.1, 0
  tail call void @llvm.assume(i1 %lcmp.mod16.1)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader.1
  %indvars.iv67.i.epil.1 = phi i64 [ %indvars.iv67.i.epil.init.1, %.epil.preheader.1 ], [ %indvars.iv.next68.i.epil.1, %bb.e ] ; 3 uses
  %epil.iter.1 = phi i64 [ 0, %.epil.preheader.1 ], [ %epil.iter.next.1, %bb.e ]
  %i.cz = mul nuw nsw i64 %indvars.iv67.i.epil.1, %i.f
  %gep76.i.epil.1 = getelementptr [8 x i8], ptr %invariant.gep75.i.1, i64 %i.cz
  %i.da = load double, ptr %gep76.i.epil.1, align 8, !tbaa !47
  %i.db = fmul reassoc nsz arcp contract afn double %i.da, %i.by
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv67.i.epil.1 ; 2 uses
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !47
  %i.de = fsub reassoc nsz arcp contract afn double %i.dd, %i.db
  store double %i.de, ptr %i.dc, align 8, !tbaa !47
  %indvars.iv.next68.i.epil.1 = add nuw nsw i64 %indvars.iv67.i.epil.1, 1
  %epil.iter.next.1 = add i64 %epil.iter.1, 1     ; 2 uses
  %epil.iter.cmp.1.not = icmp eq i64 %epil.iter.next.1, %xtraiter14.1
  br i1 %epil.iter.cmp.1.not, label %gauss_solve_triangular.exit, label %bb.e, !llvm.loop !186

gauss_solve_triangular.exit:                      ; preds = %.unr-lcssa.1, %bb.e, %.epilog-lcssa
  %i.df = load double, ptr %0, align 8, !tbaa !47
  %i.dg = load double, ptr %1, align 8, !tbaa !47
  %i.dh = fdiv reassoc nsz arcp contract afn double %i.dg, %i.df
  store double %i.dh, ptr %1, align 8, !tbaa !47
  br label %bb.f

bb.f:                                             ; preds = %gauss_solve_triangular.exit, %bb.a
  tail call void @free(ptr noundef %i.c) #23
  ret i32 %i.d
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 0, 2) i32 @gauss_make_triangular(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef range(i32 2, 54) %2) unnamed_addr #12 {
bb.a:
  %i.a = add nsw i32 %2, -1                       ; 2 uses
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.b
  store i32 %i.a, ptr %i.c, align 4, !tbaa !15
  %i.d = zext nneg i32 %2 to i64                  ; 25 uses
  %i.e = zext nneg i32 %2 to i64                  ; 8 uses
  %i.f = shl nuw nsw i64 %i.d, 3                  ; 4 uses
  %i.g = add nuw nsw i64 %i.f, 8                  ; 2 uses
  %i.h = mul nuw nsw i64 %i.d, %i.d
  %i.i = shl nuw nsw i64 %i.h, 3
  %scevgep167 = getelementptr i8, ptr %0, i64 %i.i ; 2 uses
  %i.j = add nsw i64 %i.f, -8
  %i.k = mul nsw i64 %i.j, %i.d
  %i.l = shl nuw nsw i64 %i.d, 3
  %i.m = shl nuw nsw i64 %i.d, 3                  ; 3 uses
  %scevgep195 = getelementptr i8, ptr %0, i64 %i.m
  %i.n = add nuw nsw i64 %i.m, 8
  %i.o = shl nuw nsw i64 %i.d, 3
  %i.p = add nsw i64 %i.e, -2
  %i.q = getelementptr i8, ptr %0, i64 %i.m
  %i.r = getelementptr i8, ptr %0, i64 %i.g
  %i.s = getelementptr i8, ptr %0, i64 %i.f
  %i.t = getelementptr i8, ptr %0, i64 %i.k
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %i.v = getelementptr i8, ptr %0, i64 %i.f
  br label %bb.b

.loopexit:                                        ; preds = %._crit_edge121, %.preheader111
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond151.not = icmp eq i64 %indvars.iv.next148, %i.d
  br i1 %exitcond151.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a, %.loopexit
  %indvars.iv147 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next148, %.loopexit ] ; 20 uses
  %indvars.iv = phi i64 [ 1, %bb.a ], [ %indvars.iv.next, %.loopexit ] ; 15 uses
  %i.w = xor i64 %indvars.iv147, -1
  %i.x = add nsw i64 %i.w, %i.e                   ; 2 uses
  %i.y = sub i64 %i.p, %indvars.iv147             ; 2 uses
  %i.z = shl nuw nsw i64 %indvars.iv147, 3
  %i.aa = getelementptr i8, ptr %0, i64 %i.z
  %scevgep193 = getelementptr i8, ptr %i.aa, i64 8
  %i.ab = mul i64 %i.n, %indvars.iv147
  %i.ac = getelementptr i8, ptr %0, i64 %i.ab
  %scevgep197 = getelementptr i8, ptr %i.ac, i64 8
  %i.ad = mul i64 %i.o, %indvars.iv147
  %scevgep198 = getelementptr i8, ptr %i.q, i64 %i.ad
  %i.ae = xor i64 %indvars.iv147, -1
  %i.af = add nsw i64 %i.ae, %i.d                 ; 10 uses
  %i.ag = mul i64 %i.g, %indvars.iv147            ; 3 uses
  %scevgep = getelementptr i8, ptr %i.r, i64 %i.ag ; 2 uses
  %scevgep168 = getelementptr i8, ptr %i.s, i64 %i.ag
  %i.ah = shl nuw nsw i64 %indvars.iv147, 3
  %scevgep169 = getelementptr i8, ptr %i.u, i64 %i.ah
  %i.ai = getelementptr i8, ptr %0, i64 %i.ag
  %scevgep170 = getelementptr i8, ptr %i.ai, i64 8
  %i.aj = mul i64 %i.l, %indvars.iv147
  %scevgep171 = getelementptr i8, ptr %i.v, i64 %i.aj
  %indvars149 = trunc i64 %indvars.iv147 to i32   ; 4 uses
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1 ; 3 uses
  %i.ak = icmp samesign ult i64 %indvars.iv.next148, %i.e ; 2 uses
  br i1 %i.ak, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv147 ; 5 uses
  %i.al = getelementptr [8 x i8], ptr %0, i64 %indvars.iv147 ; 5 uses
  %xtraiter = and i64 %i.x, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv124.prol = phi i64 [ %indvars.iv.next125.prol, %.lr.ph.prol ], [ %indvars.iv, %.lr.ph.preheader ] ; 3 uses
  %.0100112.prol = phi i32 [ %spec.select.prol, %.lr.ph.prol ], [ %indvars149, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.am = mul nuw nsw i64 %indvars.iv124.prol, %i.d
  %gep.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.am
  %i.an = load double, ptr %gep.prol, align 8, !tbaa !47
  %i.ao = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.an)
  %i.ap = mul nsw i32 %.0100112.prol, %2
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr [8 x i8], ptr %i.al, i64 %i.aq
  %i.as = load double, ptr %i.ar, align 8, !tbaa !47
  %i.at = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.as)
  %i.au = fcmp reassoc nsz arcp contract afn ogt double %i.ao, %i.at
  %i.av = trunc nuw nsw i64 %indvars.iv124.prol to i32
  %spec.select.prol = select i1 %i.au, i32 %i.av, i32 %.0100112.prol ; 3 uses
  %indvars.iv.next125.prol = add nuw nsw i64 %indvars.iv124.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !187

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %spec.select.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %spec.select.prol, %.lr.ph.prol ]
  %indvars.iv124.unr = phi i64 [ %indvars.iv, %.lr.ph.preheader ], [ %indvars.iv.next125.prol, %.lr.ph.prol ]
  %.0100112.unr = phi i32 [ %indvars149, %.lr.ph.preheader ], [ %spec.select.prol, %.lr.ph.prol ]
  %i.aw = icmp ult i64 %i.y, 3
  br i1 %i.aw, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.b
  %.0100.lcssa = phi i32 [ %indvars149, %bb.b ], [ %spec.select.lcssa.unr, %.lr.ph.prol.loopexit ], [ %spec.select.3, %.lr.ph ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv147
  store i32 %.0100.lcssa, ptr %i.ax, align 4, !tbaa !15
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_toneequal?download=true
inline.NumInlined: 273
inline.NumDeleted: 73
loop-unroll.NumCompletelyUnrolled: 48
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 53
begin_hunk_0_@process:bb.a
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %.0131.i, i64 %index
  %wide.load = load <8 x float>, ptr %i.ds, align 4, !tbaa !11, !alias.scope !150, !noalias !154
  %i.dt = tail call reassoc nsz arcp contract afn <8 x float> @llvm.log2.v8f32(<8 x float> %wide.load)
  %i.du = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.dt, <8 x float> zeroinitializer)
  %i.dv = tail call reassoc nnan nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.du, <8 x float> splat (float -8.000000e+00))
  %i.dw = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.dv, splat (float 1.000000e+04)
  %i.dx = fadd reassoc nsz arcp contract afn <8 x float> %i.dw, splat (float 8.000000e+04)
  %i.dy = tail call reassoc nsz arcp contract afn <8 x float> @llvm.round.v8f32(<8 x float> %i.dx)
  %i.dz = fptoui <8 x float> %i.dy to <8 x i32>
  %i.ea = zext <8 x i32> %i.dz to <8 x i64>
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %i.dr, <8 x i64> %i.ea
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !11, !noalias !155 ; 4 uses
  %i.eb = shl nuw i64 %index, 2                   ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.eb
  %wide.vec = load <32 x float>, ptr %i.ec, align 4, !tbaa !11, !alias.scope !156, !noalias !157 ; 4 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec6 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec7 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec8 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.ed = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, %wide.masked.gather
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.eb
  %i.ef = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec6, %wide.masked.gather
  %i.eg = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec7, %wide.masked.gather
  %i.eh = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec8, %wide.masked.gather
  %i.ei = shufflevector <8 x float> %i.ed, <8 x float> %i.ef, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ej = shufflevector <8 x float> %i.eg, <8 x float> %i.eh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.ei, <16 x float> %i.ej, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.ee, align 4, !tbaa !11, !alias.scope !158, !noalias !159
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ek = icmp eq i64 %index.next, %n.vec
  br i1 %i.ek, label %middle.block, label %vector.body, !llvm.loop !160

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dq, %n.vec
  br i1 %cmp.n, label %apply_toneequalizer.exit.i, label %.lr.ph.i.i.preheader9

.lr.ph.i.i.preheader9:                            ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.0182.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader9, %.lr.ph.i.i
  %.0182.i.i = phi i64 [ %i.fe, %.lr.ph.i.i ], [ %.0182.i.i.ph, %.lr.ph.i.i.preheader9 ] ; 3 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.0131.i, i64 %.0182.i.i
  %i.em = load float, ptr %i.el, align 4, !tbaa !11, !alias.scope !150, !noalias !154
  %i.en = tail call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.em)
  %i.eo = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.en, float 0.000000e+00)
  %i.ep = tail call reassoc nnan nsz arcp contract afn float @llvm.maxnum.f32(float %i.eo, float -8.000000e+00)
  %i.eq = fmul reassoc nnan nsz arcp contract afn float %i.ep, 1.000000e+04
  %i.er = fadd reassoc nsz arcp contract afn float %i.eq, 8.000000e+04
  %i.es = tail call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.er)
  %i.et = fptoui float %i.es to i32
  %i.eu = zext i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.eu
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !11, !noalias !155
  %i.ex = shl nuw i64 %.0182.i.i, 2               ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ex
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ex
  %i.fa = load <4 x float>, ptr %i.ey, align 4, !tbaa !11, !alias.scope !156, !noalias !157
  %i.fb = insertelement <4 x float> poison, float %i.ew, i64 0
  %i.fc = shufflevector <4 x float> %i.fb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fd = fmul reassoc nsz arcp contract afn <4 x float> %i.fa, %i.fc
  store <4 x float> %i.fd, ptr %i.ez, align 4, !tbaa !11, !alias.scope !158, !noalias !159
  %i.fe = add nuw i64 %.0182.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.fe, %i.dq
  br i1 %exitcond.not.i.i, label %apply_toneequalizer.exit.i, label %.lr.ph.i.i, !llvm.loop !161

apply_toneequalizer.exit.i:                       ; preds = %.lr.ph.i.i, %middle.block, %bb.ai, %bb.ah, %bb.ag
  br i1 %.not143.i, label %bb.aj, label %toneeq_process.exit

bb.aj:                                            ; preds = %apply_toneequalizer.exit.i
  tail call void @free(ptr noundef nonnull %.0131.i) #28, !noalias !73
  br label %toneeq_process.exit

toneeq_process.exit:                              ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.t, %apply_toneequalizer.exit.i, %bb.aj
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @modify_roi_in(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !56  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.d = load i32, ptr %i.c, align 4, !tbaa !162
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.f = load i32, ptr %i.e, align 16, !tbaa !163
  %. = tail call i32 @llvm.smax.i32(i32 %i.d, i32 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 320068
  %i.h = load float, ptr %i.g, align 4, !tbaa !164
  %i.i = sitofp reassoc nsz arcp contract afn i32 %. to float
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load float, ptr %i.j, align 4, !tbaa !166
  %i.l = fmul reassoc nsz arcp contract afn float %i.h, 5.000000e-01
  %i.m = fmul reassoc nsz arcp contract afn float %i.l, %i.i
  %i.n = fmul reassoc nsz arcp contract afn float %i.m, %i.k
  %i.o = fadd reassoc nsz arcp contract afn float %i.n, -5.000000e-01
  %i.p = fptosi float %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 320096
  store i32 %i.p, ptr %i.q, align 32, !tbaa !167
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable
define void @init_global(ptr nofree noundef writeonly captures(none) initializes((520, 528)) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call noalias ptr @malloc(i64 noundef 0) #29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr %i.a, ptr %i.b, align 8, !tbaa !168
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_global(ptr nofree noundef captures(none) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !168
  tail call void @free(ptr noundef %i.b) #28
  store ptr null, ptr %i.a, align 8, !tbaa !168
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define void @commit_params(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [9 x float], align 64             ; 13 uses
  %i.b = alloca [72 x float], align 64            ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !56  ; 13 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !74  ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !37
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 320108
  store i32 %i.i, ptr %i.j, align 4, !tbaa !169
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 320100
  %i.l = load <2 x i32>, ptr %i.g, align 4, !tbaa !29
  %i.m = shufflevector <2 x i32> %i.l, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.m, ptr %i.k, align 4, !tbaa !29
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.o = load float, ptr %i.n, align 4, !tbaa !41 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 320088 ; 2 uses
  store float %i.o, ptr %i.p, align 8, !tbaa !170
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.r = load float, ptr %i.q, align 4, !tbaa !42
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 320084
  store float %i.r, ptr %i.s, align 4, !tbaa !171
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.u = load float, ptr %i.t, align 4, !tbaa !49
  %i.v = fmul reassoc nsz arcp contract afn float %i.u, f0x3C23D70A
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 320068
  store float %i.v, ptr %i.w, align 4, !tbaa !164
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.y = load float, ptr %i.x, align 4, !tbaa !39
  %i.z = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 320072
  store float %i.z, ptr %i.aa, align 8, !tbaa !172
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !36
  %i.ad = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.ac)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 320076
  store float %i.ad, ptr %i.ae, align 4, !tbaa !173
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ag = load float, ptr %i.af, align 4, !tbaa !38
  %i.ah = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.ag)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 320080
  store float %i.ah, ptr %i.ai, align 16, !tbaa !174
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !88
  %i.al = load i32, ptr %i.ak, align 16, !tbaa !89
  %i.am = icmp ne i32 %i.al, 0
  %i.an = icmp ne ptr %i.f, null
  %or.cond = select i1 %i.am, i1 %i.an, i1 false
  br i1 %or.cond, label %bb.b, label %.preheader.i

bb.b:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 4 uses
  %i.ap = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.ao) #28 ; 0 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 2556 ; 2 uses
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !175
  %i.as = load float, ptr %i.n, align 4, !tbaa !41 ; 2 uses
  %i.at = fcmp reassoc nsz arcp contract afn une float %i.ar, %i.as
  br i1 %i.at, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 3016
  store i32 0, ptr %i.au, align 8, !tbaa !176
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store float %i.as, ptr %i.aq, align 4, !tbaa !175
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 3036
  store i32 0, ptr %i.av, align 4, !tbaa !177
  %i.aw = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ao) #28 ; 0 uses
  %i.ax = tail call fastcc i32 @update_curve_lut(ptr noundef nonnull %0) ; 0 uses
  %i.ay = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.ao) #28 ; 0 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.d, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.f, i64 32, i1 false), !tbaa !11, !alias.scope !178
  %i.az = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ao) #28 ; 0 uses
  br label %vector.ph

.preheader.i:                                     ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.ba = load float, ptr %1, align 4, !tbaa !182
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !183
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = load float, ptr %i.be, align 4, !tbaa !184
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !185
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !186
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !187
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.br = load float, ptr %i.bq, align 4, !tbaa !188
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !189
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !50
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bz = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.ba)
  store float %i.bz, ptr %i.a, align 64, !tbaa !11
  %i.ca = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.bc)
  store float %i.ca, ptr %i.bd, align 4, !tbaa !11
  %i.cb = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.bf)
  store float %i.cb, ptr %i.bg, align 8, !tbaa !11
  %i.cc = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.bi)
  store float %i.cc, ptr %i.bj, align 4, !tbaa !11
  %i.cd = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.bl)
  store float %i.cd, ptr %i.bm, align 16, !tbaa !11
  %i.ce = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.bo)
  store float %i.ce, ptr %i.bp, align 4, !tbaa !11
  %i.cf = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.br)
  store float %i.cf, ptr %i.bs, align 8, !tbaa !11
  %i.cg = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.bu)
  store float %i.cg, ptr %i.bv, align 4, !tbaa !11
  %i.ch = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.bx)
  store float %i.ch, ptr %i.by, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.ci = fmul reassoc nsz arcp contract afn float %i.o, %i.o
  %i.cj = insertelement <8 x float> poison, float %i.ci, i64 0
  %i.ck = shufflevector <8 x float> %i.cj, <8 x float> poison, <8 x i32> zeroinitializer ; 9 uses
  %i.cl = fdiv reassoc nsz arcp contract afn <8 x float> <float -0.000000e+00, float f0xBF272F04, float f0xC0272F04, float -5.877550e+00, float f0xC1272F04, float f0xC1829CBC, float f0xC1BC14E6, float -3.200000e+01>, %i.ck
  %i.cm = tail call reassoc nsz arcp contract afn <8 x float> @llvm.exp.v8f32(<8 x float> %i.cl)
  store <8 x float> %i.cm, ptr %i.b, align 64, !tbaa !11
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.co = fdiv reassoc nsz arcp contract afn <8 x float> <float -5.000000e-01, float f0xBC272EFB, float f0xBF539780, float f0xC03CBC13, float f0xC0CC14E6, float f0xC131CBC2, float f0xC1893978, float -2.450000e+01>, %i.ck
  %i.cp = tail call reassoc nsz arcp contract afn <8 x float> @llvm.exp.v8f32(<8 x float> %i.co)
  store <8 x float> %i.cp, ptr %i.cn, align 32, !tbaa !11
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.cr = fdiv reassoc nsz arcp contract afn <8 x float> <float -2.000000e+00, float -3.673470e-01, float f0xBD272EFB, float f0xBF829CBA, float f0xC0539782, float f0xC0DCBC14, float f0xC13CBC15, float -1.800000e+01>, %i.ck
  %i.cs = tail call reassoc nsz arcp contract afn <8 x float> @llvm.exp.v8f32(<8 x float> %i.cr)
  store <8 x float> %i.cs, ptr %i.cq, align 64, !tbaa !11
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.cu = fdiv reassoc nsz arcp contract afn <8 x float> <float -4.500000e+00, float f0xBFDCBC16, float f0xBE829CBF, float f0xBDBC14DA, float f0xBF9E0A72, float f0xC06BC14D, float f0xC0EE0A73, float -1.250000e+01>, %i.ck
  %i.cv = tail call reassoc nsz arcp contract afn <8 x float> @llvm.exp.v8f32(<8 x float> %i.cu)
  store <8 x float> %i.cv, ptr %i.ct, align 32, !tbaa !11
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.cx = fdiv reassoc nsz arcp contract afn <8 x float> <float -8.000000e+00, float f0xC0829CBC, float f0xBFBC14E8, float f0xBE272F0D, float f0xBE272F04, float f0xBFBC14E4, float f0xC0829CBC, float -8.000000e+00>, %i.ck
  %i.cy = tail call reassoc nsz arcp contract afn <8 x float> @llvm.exp.v8f32(<8 x float> %i.cx)
  store <8 x float> %i.cy, ptr %i.cw, align 64, !tbaa !11
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.da = fdiv reassoc nsz arcp contract afn <8 x float> <float -1.250000e+01, float f0xC0EE0A73, float f0xC06BC150, float f0xBF9E0A76, float f0xBDBC14E8, float f0xBE829CBA, float f0xBFDCBC14, float -4.500000e+00>, %i.ck
  %i.db = tail call reassoc nsz arcp contract afn <8 x float> @llvm.exp.v8f32(<8 x float> %i.da)
  store <8 x float> %i.db, ptr %i.cz, align 32, !tbaa !11
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.dd = fdiv reassoc nsz arcp contract afn <8 x float> <float -1.800000e+01, float f0xC13CBC15, float f0xC0DCBC16, float f0xC0539785, float f0xBF829CBC, float f0xBD272F0D, float f0xBEBC14E4, float -2.000000e+00>, %i.ck
  %i.de = tail call reassoc nsz arcp contract afn <8 x float> @llvm.exp.v8f32(<8 x float> %i.dd)
  store <8 x float> %i.de, ptr %i.dc, align 64, !tbaa !11
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.dg = fdiv reassoc nsz arcp contract afn <8 x float> <float -2.450000e+01, float f0xC1893978, float f0xC131CBC2, float f0xC0CC14E7, float f0xC03CBC15, float f0xBF539785, float f0xBC272F0D, float -5.000000e-01>, %i.ck
  %i.dh = tail call reassoc nsz arcp contract afn <8 x float> @llvm.exp.v8f32(<8 x float> %i.dg)
  store <8 x float> %i.dh, ptr %i.df, align 32, !tbaa !11
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.dj = fdiv reassoc nsz arcp contract afn <8 x float> <float -3.200000e+01, float f0xC1BC14E6, float f0xC1829CBC, float f0xC1272F06, float f0xC0BC14E6, float f0xC0272F06, float f0xBF272F06, float -0.000000e+00>, %i.ck
  %i.dk = tail call reassoc nsz arcp contract afn <8 x float> @llvm.exp.v8f32(<8 x float> %i.dj)
  store <8 x float> %i.dk, ptr %i.di, align 64, !tbaa !11
  %i.dl = call fastcc i32 @pseudo_solve(ptr noundef nonnull %i.b, ptr noundef %i.a, i32 noundef 1) ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.d, ptr noundef nonnull readonly align 64 dereferenceable(32) %i.a, i64 32, i1 false), !tbaa !11, !alias.scope !190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %vector.ph

vector.ph:                                        ; preds = %.preheader.i, %bb.d
  %i.dm = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.dn = load float, ptr %i.p, align 8, !tbaa !170 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !194)
  call void @llvm.experimental.noalias.scope.decl(metadata !197)
  %i.do = fmul reassoc nsz arcp contract afn float %i.dn, %i.dn
  %i.dp = load <8 x float>, ptr %i.d, align 16, !tbaa !11, !alias.scope !197, !noalias !194 ; 9 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.do, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 9 uses
  %broadcast.splat47 = shufflevector <8 x float> %i.dp, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat49 = shufflevector <8 x float> %i.dp, <8 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat51 = shufflevector <8 x float> %i.dp, <8 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat53 = shufflevector <8 x float> %i.dp, <8 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat55 = shufflevector <8 x float> %i.dp, <8 x float> poison, <8 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %broadcast.splat57 = shufflevector <8 x float> %i.dp, <8 x float> poison, <8 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %broadcast.splat59 = shufflevector <8 x float> %i.dp, <8 x float> poison, <8 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  %broadcast.splat61 = shufflevector <8 x float> %i.dp, <8 x float> poison, <8 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>
  %i.dq = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat
  %i.dr = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat
  %i.ds = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat
  %i.dt = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat
  %i.du = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat
  %i.dv = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat
  %i.dw = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat
  %i.dx = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.dy = uitofp nneg <8 x i32> %vec.ind to <8 x float> ; 2 uses
  %i.dz = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.dy, splat (float f0x38D1B717) ; 8 uses
  %i.ea = fadd reassoc nsz arcp contract afn <8 x float> %i.dz, splat (float -8.000000e+00) ; 2 uses
  %i.eb = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.dy, splat (float -5.000000e-05)
  %i.ec = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.eb, %i.dz
  %i.ed = fmul reassoc nsz arcp contract afn <8 x float> %i.ec, %i.dq
  %i.ee = call reassoc nsz arcp contract afn <8 x float> @llvm.exp.v8f32(<8 x float> %i.ed)
  %i.ef = fmul reassoc nsz arcp contract afn <8 x float> %i.ee, %broadcast.splat47
  %i.eg = fadd reassoc nsz arcp contract afn <8 x float> %i.dz, splat (float f0xBF924924) ; 2 uses
  %i.eh = fmul reassoc nsz arcp contract afn <8 x float> %i.eg, %i.eg
  %i.ei = fmul reassoc nsz arcp contract afn <8 x float> %i.eh, splat (float -5.000000e-01)
  %i.ej = fmul reassoc nsz arcp contract afn <8 x float> %i.ei, %i.dr
  %i.ek = call reassoc nsz arcp contract afn <8 x float> @llvm.exp.v8f32(<8 x float> %i.ej)
  %i.el = fmul reassoc nsz arcp contract afn <8 x float> %i.ek, %broadcast.splat49
  %i.em = fadd reassoc nsz arcp contract afn <8 x float> %i.ef, %i.el
  %i.en = fadd reassoc nsz arcp contract afn <8 x float> %i.dz, splat (float f0xC0124924) ; 2 uses
  %i.eo = fmul reassoc nsz arcp contract afn <8 x float> %i.en, %i.en
  %i.ep = fmul reassoc nsz arcp contract afn <8 x float> %i.eo, splat (float -5.000000e-01)
  %i.eq = fmul reassoc nsz arcp contract afn <8 x float> %i.ep, %i.ds
  %i.er = call reassoc nsz arcp contract afn <8 x float> @llvm.exp.v8f32(<8 x float> %i.eq)
  %i.es = fmul reassoc nsz arcp contract afn <8 x float> %i.er, %broadcast.splat51
  %i.et = fadd reassoc nsz arcp contract afn <8 x float> %i.es, %i.em
  %i.eu = fadd reassoc nsz arcp contract afn <8 x float> %i.dz, splat (float f0xC05B6DB6) ; 2 uses
  %i.ev = fmul reassoc nsz arcp contract afn <8 x float> %i.eu, %i.eu
  %i.ew = fmul reassoc nsz arcp contract afn <8 x float> %i.ev, splat (float -5.000000e-01)
  %i.ex = fmul reassoc nsz arcp contract afn <8 x float> %i.ew, %i.dt
  %i.ey = call reassoc nsz arcp contract afn <8 x float> @llvm.exp.v8f32(<8 x float> %i.ex)
  %i.ez = fmul reassoc nsz arcp contract afn <8 x float> %i.ey, %broadcast.splat53
  %i.fa = fadd reassoc nsz arcp contract afn <8 x float> %i.ez, %i.et
  %i.fb = fadd reassoc nsz arcp contract afn <8 x float> %i.dz, splat (float f0xC0924924) ; 2 uses
  %i.fc = fmul reassoc nsz arcp contract afn <8 x float> %i.fb, %i.fb
  %i.fd = fmul reassoc nsz arcp contract afn <8 x float> %i.fc, splat (float -5.000000e-01)
  %i.fe = fmul reassoc nsz arcp contract afn <8 x float> %i.fd, %i.du
  %i.ff = call reassoc nsz arcp contract afn <8 x float> @llvm.exp.v8f32(<8 x float> %i.fe)
  %i.fg = fmul reassoc nsz arcp contract afn <8 x float> %i.ff, %broadcast.splat55
  %i.fh = fadd reassoc nsz arcp contract afn <8 x float> %i.fg, %i.fa
  %i.fi = fadd reassoc nsz arcp contract afn <8 x float> %i.dz, splat (float f0xC0B6DB6E) ; 2 uses
  %i.fj = fmul reassoc nsz arcp contract afn <8 x float> %i.fi, %i.fi
  %i.fk = fmul reassoc nsz arcp contract afn <8 x float> %i.fj, splat (float -5.000000e-01)
  %i.fl = fmul reassoc nsz arcp contract afn <8 x float> %i.fk, %i.dv
  %i.fm = call reassoc nsz arcp contract afn <8 x float> @llvm.exp.v8f32(<8 x float> %i.fl)
  %i.fn = fmul reassoc nsz arcp contract afn <8 x float> %i.fm, %broadcast.splat57
  %i.fo = fadd reassoc nsz arcp contract afn <8 x float> %i.fn, %i.fh
  %i.fp = fadd reassoc nsz arcp contract afn <8 x float> %i.dz, splat (float f0xC0DB6DB7) ; 2 uses
  %i.fq = fmul reassoc nsz arcp contract afn <8 x float> %i.fp, %i.fp
  %i.fr = fmul reassoc nsz arcp contract afn <8 x float> %i.fq, splat (float -5.000000e-01)
  %i.fs = fmul reassoc nsz arcp contract afn <8 x float> %i.fr, %i.dw
  %i.ft = call reassoc nsz arcp contract afn <8 x float> @llvm.exp.v8f32(<8 x float> %i.fs)
  %i.fu = fmul reassoc nsz arcp contract afn <8 x float> %i.ft, %broadcast.splat59
  %i.fv = fadd reassoc nsz arcp contract afn <8 x float> %i.fu, %i.fo
  %i.fw = fmul reassoc nsz arcp contract afn <8 x float> %i.ea, %i.ea
  %i.fx = fmul reassoc nsz arcp contract afn <8 x float> %i.fw, splat (float -5.000000e-01)
  %i.fy = fmul reassoc nsz arcp contract afn <8 x float> %i.fx, %i.dx
  %i.fz = call reassoc nsz arcp contract afn <8 x float> @llvm.exp.v8f32(<8 x float> %i.fy)
  %i.ga = fmul reassoc nsz arcp contract afn <8 x float> %i.fz, %broadcast.splat61
  %i.gb = fadd reassoc nsz arcp contract afn <8 x float> %i.fv, %i.ga
  %i.gc = call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.gb, <8 x float> splat (float 4.000000e+00))
  %i.gd = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.gc, <8 x float> splat (float 2.500000e-01))
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %index
  store <8 x float> %i.gd, ptr %i.ge, align 4, !tbaa !11, !alias.scope !194, !noalias !197
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.gf = icmp eq i64 %index.next, 80000
  br i1 %i.gf, label %scalar.ph, label %vector.body, !llvm.loop !199

scalar.ph:                                        ; preds = %vector.body
  %i.gg = fdiv reassoc nsz arcp contract afn <8 x float> <float -3.200000e+01, float f0xC1BC14E6, float f0xC1829CBC, float f0xC1272F06, float f0xC0BC14E8, float f0xC0272F04, float f0xBF272F04, float -0.000000e+00>, %broadcast.splat
  %i.gh = call reassoc nsz arcp contract afn <8 x float> @llvm.exp.v8f32(<8 x float> %i.gg)
  %i.gi = fmul reassoc nsz arcp contract afn <8 x float> %i.gh, %i.dp
  %i.gj = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.gi)
  %i.gk = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.gj, float 4.000000e+00)
  %i.gl = call reassoc nsz arcp contract afn noundef float @llvm.maxnum.f32(float %i.gk, float 2.500000e-01)
  %i.gm = getelementptr inbounds nuw i8, ptr %i.d, i64 320064
  store float %i.gl, ptr %i.gm, align 16, !tbaa !11, !alias.scope !194, !noalias !197
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @update_curve_lut(ptr noundef %0) unnamed_addr #14 {
bb.a:
  %i.a = alloca [9 x float], align 64             ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !200  ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !74  ; 41 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.h = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.g) #28 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 3016 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !176
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %.preheader.i, label %bb.c

.preheader.i:                                     ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 2556
  %i.l = load float, ptr %i.k, align 4, !tbaa !175 ; 2 uses
  %i.m = fmul reassoc nsz arcp contract afn float %i.l, %i.l
  %i.n = insertelement <8 x float> poison, float %i.m, i64 0
  %i.o = shufflevector <8 x float> %i.n, <8 x float> poison, <8 x i32> zeroinitializer ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 1088
  %i.q = fdiv reassoc nsz arcp contract afn <8 x float> <float -0.000000e+00, float f0xBF272F04, float f0xC0272F04, float -5.877550e+00, float f0xC1272F04, float f0xC1829CBC, float f0xC1BC14E6, float -3.200000e+01>, %i.o
  %i.r = tail call reassoc nsz arcp contract afn <8 x float> @llvm.exp.v8f32(<8 x float> %i.q)
  store <8 x float> %i.r, ptr %i.p, align 8, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 1120
  %i.t = fdiv reassoc nsz arcp contract afn <8 x float> <float -5.000000e-01, float f0xBC272EFB, float f0xBF539780, float f0xC03CBC13, float f0xC0CC14E6, float f0xC131CBC2, float f0xC1893978, float -2.450000e+01>, %i.o
  %i.u = tail call reassoc nsz arcp contract afn <8 x float> @llvm.exp.v8f32(<8 x float> %i.t)
  store <8 x float> %i.u, ptr %i.s, align 8, !tbaa !11
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 1152
  %i.w = fdiv reassoc nsz arcp contract afn <8 x float> <float -2.000000e+00, float -3.673470e-01, float f0xBD272EFB, float f0xBF829CBA, float f0xC0539782, float f0xC0DCBC14, float f0xC13CBC15, float -1.800000e+01>, %i.o
  %i.x = tail call reassoc nsz arcp contract afn <8 x float> @llvm.exp.v8f32(<8 x float> %i.w)
  store <8 x float> %i.x, ptr %i.v, align 8, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 1184
  %i.z = fdiv reassoc nsz arcp contract afn <8 x float> <float -4.500000e+00, float f0xBFDCBC16, float f0xBE829CBF, float f0xBDBC14DA, float f0xBF9E0A72, float f0xC06BC14D, float f0xC0EE0A73, float -1.250000e+01>, %i.o
  %i.aa = tail call reassoc nsz arcp contract afn <8 x float> @llvm.exp.v8f32(<8 x float> %i.z)
  store <8 x float> %i.aa, ptr %i.y, align 8, !tbaa !11
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 1216
  %i.ac = fdiv reassoc nsz arcp contract afn <8 x float> <float -8.000000e+00, float f0xC0829CBC, float f0xBFBC14E8, float f0xBE272F0D, float f0xBE272F04, float f0xBFBC14E4, float f0xC0829CBC, float -8.000000e+00>, %i.o
  %i.ad = tail call reassoc nsz arcp contract afn <8 x float> @llvm.exp.v8f32(<8 x float> %i.ac)
  store <8 x float> %i.ad, ptr %i.ab, align 8, !tbaa !11
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 1248
  %i.af = fdiv reassoc nsz arcp contract afn <8 x float> <float -1.250000e+01, float f0xC0EE0A73, float f0xC06BC150, float f0xBF9E0A76, float f0xBDBC14E8, float f0xBE829CBA, float f0xBFDCBC14, float -4.500000e+00>, %i.o
  %i.ag = tail call reassoc nsz arcp contract afn <8 x float> @llvm.exp.v8f32(<8 x float> %i.af)
  store <8 x float> %i.ag, ptr %i.ae, align 8, !tbaa !11
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 1280
  %i.ai = fdiv reassoc nsz arcp contract afn <8 x float> <float -1.800000e+01, float f0xC13CBC15, float f0xC0DCBC16, float f0xC0539785, float f0xBF829CBC, float f0xBD272F0D, float f0xBEBC14E4, float -2.000000e+00>, %i.o
  %i.aj = tail call reassoc nsz arcp contract afn <8 x float> @llvm.exp.v8f32(<8 x float> %i.ai)
  store <8 x float> %i.aj, ptr %i.ah, align 8, !tbaa !11
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 1312
  %i.al = fdiv reassoc nsz arcp contract afn <8 x float> <float -2.450000e+01, float f0xC1893978, float f0xC131CBC2, float f0xC0CC14E7, float f0xC03CBC15, float f0xBF539785, float f0xBC272F0D, float -5.000000e-01>, %i.o
  %i.am = tail call reassoc nsz arcp contract afn <8 x float> @llvm.exp.v8f32(<8 x float> %i.al)
  store <8 x float> %i.am, ptr %i.ak, align 8, !tbaa !11
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 1344
  %i.ao = fdiv reassoc nsz arcp contract afn <8 x float> <float -3.200000e+01, float f0xC1BC14E6, float f0xC1829CBC, float f0xC1272F06, float f0xC0BC14E6, float f0xC0272F06, float f0xBF272F06, float -0.000000e+00>, %i.o
  %i.ap = tail call reassoc nsz arcp contract afn <8 x float> @llvm.exp.v8f32(<8 x float> %i.ao)
  store <8 x float> %i.ap, ptr %i.an, align 8, !tbaa !11
  store i32 1, ptr %i.i, align 8, !tbaa !176
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 3040
  store i32 0, ptr %i.aq, align 32, !tbaa !201
  br label %bb.c

bb.c:                                             ; preds = %.preheader.i, %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 3036 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !177
  %.not30 = icmp eq i32 %i.as, 0
  br i1 %.not30, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  %i.at = load float, ptr %i.c, align 4, !tbaa !182
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.av = load float, ptr %i.au, align 4, !tbaa !183
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !184
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.az = load float, ptr %i.ay, align 4, !tbaa !185
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !186
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !187
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.bf = load float, ptr %i.be, align 4, !tbaa !188
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !189
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !50
  %i.bk = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.at)
  %i.bl = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.av)
  %i.bm = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.ax)
  %i.bn = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.az)
  %i.bo = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.bb)
  %i.bp = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.bd)
  %i.bq = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.bf)
  %i.br = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.bh)
  %i.bs = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.bj)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.e, i64 2432
  store float %i.bk, ptr %i.bt, align 8, !tbaa !11, !alias.scope !202
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 2436
  store float %i.bl, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !11, !alias.scope !202
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 2440
  store float %i.bm, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !11, !alias.scope !202
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 2444
  store float %i.bn, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !11, !alias.scope !202
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 2448
  store float %i.bo, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !11, !alias.scope !202
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 2452
  store float %i.bp, ptr %.sroa.13.0..sroa_idx, align 4, !tbaa !11, !alias.scope !202
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 2456
  store float %i.bq, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !11, !alias.scope !202
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 2460
  store float %i.br, ptr %.sroa.17.0..sroa_idx, align 4, !tbaa !11, !alias.scope !202
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 2464
  store float %i.bs, ptr %.sroa.19.0..sroa_idx, align 8, !tbaa !11, !alias.scope !202
  store i32 1, ptr %i.ar, align 4, !tbaa !177
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 3040
  store i32 0, ptr %i.bu, align 32, !tbaa !201
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.e, i64 3040
  %.pre = load i32, ptr %.phi.trans.insert, align 32, !tbaa !201
  %i.bv = icmp eq i32 %.pre, 0
  br i1 %i.bv, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d, %.thread
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 3040
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 2432
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(36) %i.a, ptr noundef nonnull readonly align 4 dereferenceable(36) %i.bx, i64 36, i1 false), !tbaa !11, !alias.scope !206
  %i.by = getelementptr inbounds nuw i8, ptr %i.e, i64 1088
  %i.bz = call fastcc i32 @pseudo_solve(ptr noundef nonnull %i.by, ptr noundef %i.a, i32 noundef 0) ; 3 uses
  %.not33 = icmp eq i32 %i.bz, 0
  br i1 %.not33, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.e, ptr noundef nonnull readonly align 64 dereferenceable(32) %i.a, i64 32, i1 false), !tbaa !11, !alias.scope !210
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i32 %i.bz, ptr %i.bw, align 32, !tbaa !201
  %i.ca = getelementptr inbounds nuw i8, ptr %i.e, i64 3028
  store i32 0, ptr %i.ca, align 4, !tbaa !214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.0 = phi i32 [ 1, %bb.d ], [ %i.bz, %bb.g ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.e, i64 3028 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !214
  %.not34 = icmp eq i32 %i.cc, 0
  br i1 %.not34, label %vector.ph, label %bb.i

vector.ph:                                        ; preds = %bb.h
  %i.cd = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !11, !alias.scope !215
  %i.cg = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ch = load float, ptr %i.cg, align 8, !tbaa !11, !alias.scope !215
  %i.ci = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !11, !alias.scope !215
  %i.ck = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.cl = load float, ptr %i.ck, align 8, !tbaa !11, !alias.scope !215
  %i.cm = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !11, !alias.scope !215
  %i.co = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cp = load float, ptr %i.co, align 8, !tbaa !11, !alias.scope !215
  %i.cq = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !11, !alias.scope !215
  %i.cs = load float, ptr %i.e, align 8, !tbaa !11, !alias.scope !215
  %i.ct = getelementptr inbounds nuw i8, ptr %i.e, i64 2556
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !175 ; 2 uses
  %i.cv = fmul reassoc nsz arcp contract afn float %i.cu, %i.cu
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.cv, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 8 uses
  %broadcast.splatinsert42 = insertelement <8 x float> poison, float %i.cs, i64 0
  %broadcast.splat43 = shufflevector <8 x float> %broadcast.splatinsert42, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert44 = insertelement <8 x float> poison, float %i.cr, i64 0
  %broadcast.splat45 = shufflevector <8 x float> %broadcast.splatinsert44, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert46 = insertelement <8 x float> poison, float %i.cp, i64 0
  %broadcast.splat47 = shufflevector <8 x float> %broadcast.splatinsert46, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert48 = insertelement <8 x float> poison, float %i.cn, i64 0
  %broadcast.splat49 = shufflevector <8 x float> %broadcast.splatinsert48, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert50 = insertelement <8 x float> poison, float %i.cl, i64 0
  %broadcast.splat51 = shufflevector <8 x float> %broadcast.splatinsert50, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert52 = insertelement <8 x float> poison, float %i.cj, i64 0
  %broadcast.splat53 = shufflevector <8 x float> %broadcast.splatinsert52, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert54 = insertelement <8 x float> poison, float %i.ch, i64 0
  %broadcast.splat55 = shufflevector <8 x float> %broadcast.splatinsert54, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert56 = insertelement <8 x float> poison, float %i.cf, i64 0
  %broadcast.splat57 = shufflevector <8 x float> %broadcast.splatinsert56, <8 x float> poison, <8 x i32> zeroinitializer
  %i.cw = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat
  %i.cx = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat
  %i.cy = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat
  %i.cz = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat
  %i.da = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat
  %i.db = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat
  %i.dc = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat
  %i.dd = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.de = uitofp nneg <8 x i32> %vec.ind to <8 x float>
  %i.df = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.de, splat (float f0x3D008081)
  %i.dg = fadd reassoc nsz arcp contract afn <8 x float> %i.df, splat (float -8.000000e+00)
  %i.dh = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.dg, <8 x float> zeroinitializer)
  %i.di = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.dh, <8 x float> splat (float -8.000000e+00)) ; 9 uses
  %i.dj = fadd reassoc nsz arcp contract afn <8 x float> %i.di, splat (float 8.000000e+00) ; 2 uses
  %i.dk = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.dj, %i.dj
  %i.dl = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.dk, splat (float -5.000000e-01)
  %i.dm = fmul reassoc nsz arcp contract afn <8 x float> %i.dl, %i.cw
  %i.dn = tail call reassoc nsz arcp contract afn <8 x float> @llvm.exp.v8f32(<8 x float> %i.dm)
  %i.do = fmul reassoc nsz arcp contract afn <8 x float> %i.dn, %broadcast.splat43
  %i.dp = fadd reassoc nsz arcp contract afn <8 x float> %i.di, splat (float f0x40DB6DB7) ; 2 uses
  %i.dq = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.dp, %i.dp
  %i.dr = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.dq, splat (float -5.000000e-01)
  %i.ds = fmul reassoc nsz arcp contract afn <8 x float> %i.dr, %i.cx
  %i.dt = tail call reassoc nsz arcp contract afn <8 x float> @llvm.exp.v8f32(<8 x float> %i.ds)
  %i.du = fmul reassoc nsz arcp contract afn <8 x float> %i.dt, %broadcast.splat45
  %i.dv = fadd reassoc nsz arcp contract afn <8 x float> %i.do, %i.du
  %i.dw = fadd reassoc nsz arcp contract afn <8 x float> %i.di, splat (float f0x40B6DB6E) ; 2 uses
  %i.dx = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.dw, %i.dw
  %i.dy = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.dx, splat (float -5.000000e-01)
  %i.dz = fmul reassoc nsz arcp contract afn <8 x float> %i.dy, %i.cy
  %i.ea = tail call reassoc nsz arcp contract afn <8 x float> @llvm.exp.v8f32(<8 x float> %i.dz)
  %i.eb = fmul reassoc nsz arcp contract afn <8 x float> %i.ea, %broadcast.splat47
  %i.ec = fadd reassoc nsz arcp contract afn <8 x float> %i.eb, %i.dv
  %i.ed = fadd reassoc nsz arcp contract afn <8 x float> %i.di, splat (float f0x40924925) ; 2 uses
  %i.ee = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ed, %i.ed
  %i.ef = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ee, splat (float -5.000000e-01)
  %i.eg = fmul reassoc nsz arcp contract afn <8 x float> %i.ef, %i.cz
  %i.eh = tail call reassoc nsz arcp contract afn <8 x float> @llvm.exp.v8f32(<8 x float> %i.eg)
  %i.ei = fmul reassoc nsz arcp contract afn <8 x float> %i.eh, %broadcast.splat49
  %i.ej = fadd reassoc nsz arcp contract afn <8 x float> %i.ei, %i.ec
  %i.ek = fadd reassoc nsz arcp contract afn <8 x float> %i.di, splat (float f0x405B6DB7) ; 2 uses
  %i.el = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ek, %i.ek
  %i.em = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.el, splat (float -5.000000e-01)
  %i.en = fmul reassoc nsz arcp contract afn <8 x float> %i.em, %i.da
  %i.eo = tail call reassoc nsz arcp contract afn <8 x float> @llvm.exp.v8f32(<8 x float> %i.en)
  %i.ep = fmul reassoc nsz arcp contract afn <8 x float> %i.eo, %broadcast.splat51
  %i.eq = fadd reassoc nsz arcp contract afn <8 x float> %i.ep, %i.ej
  %i.er = fadd reassoc nsz arcp contract afn <8 x float> %i.di, splat (float f0x40124925) ; 2 uses
  %i.es = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.er, %i.er
  %i.et = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.es, splat (float -5.000000e-01)
  %i.eu = fmul reassoc nsz arcp contract afn <8 x float> %i.et, %i.db
  %i.ev = tail call reassoc nsz arcp contract afn <8 x float> @llvm.exp.v8f32(<8 x float> %i.eu)
  %i.ew = fmul reassoc nsz arcp contract afn <8 x float> %i.ev, %broadcast.splat53
  %i.ex = fadd reassoc nsz arcp contract afn <8 x float> %i.ew, %i.eq
  %i.ey = fadd reassoc nsz arcp contract afn <8 x float> %i.di, splat (float f0x3F924925) ; 2 uses
  %i.ez = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ey, %i.ey
  %i.fa = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ez, splat (float -5.000000e-01)
  %i.fb = fmul reassoc nsz arcp contract afn <8 x float> %i.fa, %i.dc
  %i.fc = tail call reassoc nsz arcp contract afn <8 x float> @llvm.exp.v8f32(<8 x float> %i.fb)
  %i.fd = fmul reassoc nsz arcp contract afn <8 x float> %i.fc, %broadcast.splat55
  %i.fe = fadd reassoc nsz arcp contract afn <8 x float> %i.fd, %i.ex
  %i.ff = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.di, %i.di
  %i.fg = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ff, splat (float -5.000000e-01)
  %i.fh = fmul reassoc nsz arcp contract afn <8 x float> %i.fg, %i.dd
  %i.fi = tail call reassoc nsz arcp contract afn <8 x float> @llvm.exp.v8f32(<8 x float> %i.fh)
  %i.fj = fmul reassoc nsz arcp contract afn <8 x float> %i.fi, %broadcast.splat57
  %i.fk = fadd reassoc nsz arcp contract afn <8 x float> %i.fe, %i.fj
  %i.fl = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.fk, <8 x float> splat (float 4.000000e+00))
  %i.fm = tail call reassoc nnan nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.fl, <8 x float> splat (float 2.500000e-01))
  %i.fn = tail call fast <8 x float> @llvm.log2.v8f32(<8 x float> %i.fm)
  %i.fo = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.fn, splat (float 2.500000e-01)
  %i.fp = fsub reassoc nsz arcp contract afn <8 x float> splat (float 5.000000e-01), %i.fo
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %index
  store <8 x float> %i.fp, ptr %i.fq, align 4, !tbaa !11
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.fr = icmp eq i64 %index.next, 256
  br i1 %i.fr, label %compute_lut_correction.exit, label %vector.body, !llvm.loop !218

compute_lut_correction.exit:                      ; preds = %vector.body
  store i32 1, ptr %i.cb, align 4, !tbaa !214
  br label %bb.i

bb.i:                                             ; preds = %compute_lut_correction.exit, %bb.h
  %i.fs = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.g) #28 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  %.028 = phi i32 [ %.0, %bb.i ], [ 0, %bb.a ]
  ret i32 %.028
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @pseudo_solve(ptr noalias nofree noundef readonly %0, ptr noalias nofree noundef nonnull captures(none) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #14 {
bb.a:
  %i.a = tail call ptr @dt_alloc_aligned(i64 noundef 256) #28 ; 15 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.a, i64 64) ]
  %i.b = tail call ptr @dt_alloc_aligned(i64 noundef 32) #28 ; 14 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.b, i64 64) ]
  %i.c = icmp ne ptr %i.a, null
  %i.d = icmp ne ptr %i.b, null
  %or.cond5 = select i1 %i.c, i1 %i.d, i1 false
  br i1 %or.cond5, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.a) #28
  tail call void @free(ptr noundef %i.b) #28
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !219
  %i.f = and i32 %i.e, 33554432
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.128) #28
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.129, i32 noundef 5) #28
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.g) #28
  br label %bb.bt

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260)
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.phi.trans.insert36.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %.phi.trans.insert39.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %.phi.trans.insert42.i = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %.phi.trans.insert45.i = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %.phi.trans.insert48.i = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %.phi.trans.insert51.i = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %.phi.trans.insert54.i = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  br label %.preheader28.i

.preheader28.i:                                   ; preds = %.preheader28.i, %bb.e
  %indvars.iv.i = phi i64 [ 1, %bb.e ], [ %indvars.iv.next.i, %.preheader28.i ] ; 2 uses
  %.02432.i = phi i64 [ 0, %bb.e ], [ %i.ab, %.preheader28.i ] ; 11 uses
  %.idx.i = shl nuw nsw i64 %.02432.i, 5
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx.i
  %.phi.trans.insert55.i = getelementptr inbounds nuw [4 x i8], ptr %.phi.trans.insert54.i, i64 %.02432.i
  %.pre56.i = load float, ptr %.phi.trans.insert55.i, align 4, !tbaa !11, !alias.scope !257, !noalias !260
end_hunk_0
begin_hunk_1_@fast_eigf_surface_blur:bb.a

middle.block180:                                  ; preds = %vector.body173
  br i1 %cmp.n181, label %eigf_blending.exit, label %.lr.ph.split.us.i157.preheader296

.lr.ph.split.us.i157.preheader296:                ; preds = %.lr.ph.split.us.i157.preheader, %middle.block180
  %.034.us.i.ph = phi i64 [ 0, %.lr.ph.split.us.i157.preheader ], [ %n.vec170, %middle.block180 ]
  br label %.lr.ph.split.us.i157

.lr.ph.split.us.i157:                             ; preds = %.lr.ph.split.us.i157.preheader296, %.lr.ph.split.us.i157
  %.034.us.i = phi i64 [ %i.aby, %.lr.ph.split.us.i157 ], [ %.034.us.i.ph, %.lr.ph.split.us.i157.preheader296 ] ; 3 uses
  %.idx.us.i158 = shl i64 %.034.us.i, 3
  %i.abl = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx.us.i158 ; 2 uses
  %i.abm = load float, ptr %i.abl, align 8, !tbaa !11, !alias.scope !660, !noalias !657 ; 3 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abl, i64 4
  %i.abo = load float, ptr %i.abn, align 4, !tbaa !11, !alias.scope !660, !noalias !657
  %i.abp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.034.us.i ; 2 uses
  %i.abq = load float, ptr %i.abp, align 4, !tbaa !11, !alias.scope !657, !noalias !660 ; 2 uses
  %i.abr = fmul reassoc nsz arcp contract afn float %i.abq, %i.abm
  %i.abs = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.abr, float f0x358637BD)
  %i.abt = fdiv reassoc nsz arcp contract afn float %i.abo, %i.abs ; 2 uses
  %i.abu = fadd reassoc nsz arcp contract afn float %i.abt, %4
  %reass.add175 = fsub reassoc nsz arcp contract afn float %i.abq, %i.abm
  %i.abv = fmul reassoc nsz arcp contract afn float %i.abt, %reass.add175
  %reass.mul176 = fdiv reassoc nsz arcp contract afn float %i.abv, %i.abu
  %i.abw = fadd reassoc nsz arcp contract afn float %reass.mul176, %i.abm
  %i.abx = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.abw, float f0x37800000)
  store float %i.abx, ptr %i.abp, align 4, !tbaa !11, !alias.scope !657, !noalias !660
  %i.aby = add nuw i64 %.034.us.i, 1              ; 2 uses
  %exitcond36.not.i = icmp eq i64 %i.aby, %i.p
  br i1 %exitcond36.not.i, label %eigf_blending.exit, label %.lr.ph.split.us.i157, !llvm.loop !664

.lr.ph.split.i153:                                ; preds = %.lr.ph.split.i153.preheader298, %.lr.ph.split.i153
  %.034.i = phi i64 [ %i.aco, %.lr.ph.split.i153 ], [ %.034.i.ph, %.lr.ph.split.i153.preheader298 ] ; 3 uses
  %.idx.i154 = shl i64 %.034.i, 3
  %i.abz = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx.i154 ; 2 uses
  %i.aca = load float, ptr %i.abz, align 8, !tbaa !11, !alias.scope !660, !noalias !657 ; 3 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abz, i64 4
  %i.acc = load float, ptr %i.acb, align 4, !tbaa !11, !alias.scope !660, !noalias !657
  %i.acd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.034.i ; 2 uses
  %i.ace = load float, ptr %i.acd, align 4, !tbaa !11, !alias.scope !657, !noalias !660 ; 3 uses
  %i.acf = fmul reassoc nsz arcp contract afn float %i.ace, %i.aca
  %i.acg = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.acf, float f0x358637BD)
  %i.ach = fdiv reassoc nsz arcp contract afn float %i.acc, %i.acg ; 2 uses
  %i.aci = fadd reassoc nsz arcp contract afn float %i.ach, %4
  %reass.add = fsub reassoc nsz arcp contract afn float %i.ace, %i.aca
  %i.acj = fmul reassoc nsz arcp contract afn float %i.ach, %reass.add
  %reass.mul = fdiv reassoc nsz arcp contract afn float %i.acj, %i.aci
  %i.ack = fadd reassoc nsz arcp contract afn float %reass.mul, %i.aca
  %i.acl = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ack, float f0x37800000)
  %i.acm = fmul reassoc nsz arcp contract afn float %i.acl, %i.ace
  %i.acn = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.acm)
  store float %i.acn, ptr %i.acd, align 4, !tbaa !11, !alias.scope !657, !noalias !660
  %i.aco = add nuw i64 %.034.i, 1                 ; 2 uses
  %exitcond.not.i155 = icmp eq i64 %i.aco, %i.p
  br i1 %exitcond.not.i155, label %eigf_blending.exit, label %.lr.ph.split.i153, !llvm.loop !665

eigf_blending.exit:                               ; preds = %.lr.ph.split.i153, %.lr.ph.split.us.i157, %.lr.ph.split.i, %.lr.ph.split.us.i, %middle.block196, %middle.block180, %middle.block36, %middle.block, %eigf_variance_analysis_no_mask.exit, %eigf_variance_analysis.exit
  %i.acp = add nuw nsw i32 %.089232, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.acp, %5
  br i1 %exitcond.not, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %eigf_blending.exit, %.preheader, %bb.b
  call void @free(ptr noundef %i.y) #28
  call void @free(ptr noundef %i.w) #28
  call void @free(ptr noundef %i.u) #28
  call void @free(ptr noundef %i.t) #28
  call void @free(ptr noundef %i.r) #28
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #2

declare void @dt_box_mean(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #2

declare void @dt_iop_image_copy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #2

declare ptr @dt_gaussian_init(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, float noundef, i32 noundef) local_unnamed_addr #6

declare void @dt_gaussian_blur_4c(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @dt_gaussian_free(ptr noundef) local_unnamed_addr #6

declare void @dt_gaussian_blur(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #2

declare void @gtk_widget_set_visible(ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @dt_iop_refresh_all(ptr noundef) local_unnamed_addr #6

declare i32 @dt_ioppr_get_iop_order(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @dt_dev_distort_backtransform_plus(ptr noundef, ptr noundef, double noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

declare i32 @dt_iop_canvas_not_sensitive(ptr noundef) local_unnamed_addr #6

declare void @dt_control_change_cursor(ptr noundef) local_unnamed_addr #6

declare i32 @gtk_accelerator_get_default_mod_mask() local_unnamed_addr #6

declare void @cairo_fill_preserve(ptr noundef) local_unnamed_addr #6

declare void @cairo_save(ptr noundef) local_unnamed_addr #6

declare void @cairo_clip(ptr noundef) local_unnamed_addr #6

declare void @cairo_restore(ptr noundef) local_unnamed_addr #6

declare void @cairo_set_source_rgba(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #6

declare void @dt_control_signal_disconnect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal void @_develop_distort_callback(ptr nofree readnone captures(none) %0, ptr noundef %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !74  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 3044 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !420
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !421
  %i.g = and i32 %i.f, 4
  %.not4.i = icmp eq i32 %i.g, 0
  br i1 %.not4.i, label %_unset_distort_signal.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !219
  %i.i = and i32 %i.h, 1048576
  %.not5.i = icmp eq i32 %i.i, 0
  br i1 %.not5.i, label %_unset_distort_signal.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.49, i32 noundef 2538, ptr noundef nonnull @__FUNCTION__._unset_distort_signal) #28, !inline_history !422
  br label %_unset_distort_signal.exit

_unset_distort_signal.exit:                       ; preds = %bb.c, %bb.d, %bb.e
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !423
  tail call void @dt_control_signal_disconnect(ptr noundef %i.j, ptr noundef nonnull @_develop_distort_callback, ptr noundef nonnull %1) #28, !inline_history !422
  store i32 0, ptr %i.d, align 4, !tbaa !420
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 672
  %i.l = load i32, ptr %i.k, align 16, !tbaa !357
  %.not5 = icmp eq i32 %i.l, 0
  br i1 %.not5, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_unset_distort_signal.exit
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !343
  tail call void @dt_dev_reprocess_preview(ptr noundef %i.m) #28
  br label %bb.g

bb.g:                                             ; preds = %_unset_distort_signal.exit, %bb.f, %bb.b, %bb.a
  ret void
}

declare void @dt_dev_reprocess_preview(ptr noundef) local_unnamed_addr #6

declare void @gtk_widget_get_allocation(ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @cairo_create(ptr noundef) local_unnamed_addr #6

declare ptr @gtk_widget_get_style_context(ptr noundef) local_unnamed_addr #6

declare void @gtk_render_background(ptr noundef, ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #6

declare void @cairo_translate(ptr noundef, double noundef, double noundef) local_unnamed_addr #6

declare ptr @cairo_pattern_create_linear(double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #6

declare void @cairo_set_source(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @cairo_pattern_destroy(ptr noundef) local_unnamed_addr #6

declare void @cairo_stroke_preserve(ptr noundef) local_unnamed_addr #6

declare ptr @cairo_image_surface_create(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @cairo_surface_set_device_scale(ptr noundef, double noundef, double noundef) local_unnamed_addr #6

declare void @cairo_pattern_add_color_stop_rgba(ptr noundef, double noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @update_histogram(ptr noundef %0) unnamed_addr #14 {
bb.a:
  %i.a = alloca [512 x i32], align 16             ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !74  ; 11 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.f = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.e) #28 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 3024 ; 2 uses
  %i.h = load i32, ptr %i.g, align 16, !tbaa !127
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 3020
  %i.j = load i32, ptr %i.i, align 4, !tbaa !126
  %.not17 = icmp eq i32 %i.j, 0
  br i1 %.not17, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 2544
  %i.l = load i64, ptr %i.k, align 16, !tbaa !141
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 2536
  %i.n = load i64, ptr %i.m, align 8, !tbaa !140
  %i.o = mul i64 %i.n, %i.l                       ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 2576
  %i.q = load ptr, ptr %i.p, align 16, !tbaa !142 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 1408 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 2480 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 2564
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 2568
  tail call void @llvm.experimental.noalias.scope.decl(metadata !666)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.r, i8 0, i64 1024, i1 false), !noalias !666
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28, !noalias !666
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.a, i8 0, i64 2048, i1 false), !noalias !666
  %.not83.i = icmp eq i64 %i.o, 0
  br i1 %.not83.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %xtraiter = and i64 %i.o, 1
  %i.v = icmp eq i64 %i.o, 1
  br i1 %i.v, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.o, -2
  br label %.lr.ph.i

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.06577.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.bj, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod25 = trunc i64 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod25)
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.06577.i.epil.init
  %i.x = load float, ptr %i.w, align 4, !tbaa !11, !alias.scope !666
  %i.y = tail call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.x)
  %i.z = fmul reassoc nsz arcp contract afn float %i.y, 3.200000e+01
  %i.aa = fadd reassoc nsz arcp contract afn float %i.z, 3.200000e+02
  %i.ab = fptosi float %i.aa to i32
  %narrow75.i.epil = tail call i32 @llvm.smax.i32(i32 %i.ab, i32 0)
  %i.ac = tail call i32 @llvm.umin.i32(i32 %narrow75.i.epil, i32 511)
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ad ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !29, !noalias !666
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !29, !noalias !666
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %bb.d
  %i.ah = uitofp reassoc nsz arcp contract afn i64 %i.o to float ; 2 uses
  %i.ai = fmul reassoc nnan nsz arcp contract afn float %i.ah, 5.000000e-02
  %i.aj = fptosi float %i.ai to i32               ; 8 uses
  %i.ak = fmul reassoc nnan nsz arcp contract afn float %i.ah, f0x3D4CCCD0
  %i.al = fptosi float %i.ak to i32               ; 2 uses
  br label %bb.e

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.06577.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.bj, %.lr.ph.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.06577.i
  %i.an = load float, ptr %i.am, align 4, !tbaa !11, !alias.scope !666
  %i.ao = tail call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.an)
  %i.ap = fmul reassoc nsz arcp contract afn float %i.ao, 3.200000e+01
  %i.aq = fadd reassoc nsz arcp contract afn float %i.ap, 3.200000e+02
  %i.ar = fptosi float %i.aq to i32
  %narrow75.i = tail call i32 @llvm.smax.i32(i32 %i.ar, i32 0)
  %i.as = tail call i32 @llvm.umin.i32(i32 %narrow75.i, i32 511)
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.at ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !29, !noalias !666
  %i.aw = add nsw i32 %i.av, 1
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !29, !noalias !666
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.06577.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.az = load float, ptr %i.ay, align 4, !tbaa !11, !alias.scope !666
  %i.ba = tail call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.az)
  %i.bb = fmul reassoc nsz arcp contract afn float %i.ba, 3.200000e+01
  %i.bc = fadd reassoc nsz arcp contract afn float %i.bb, 3.200000e+02
  %i.bd = fptosi float %i.bc to i32
  %narrow75.i.1 = tail call i32 @llvm.smax.i32(i32 %i.bd, i32 0)
  %i.be = tail call i32 @llvm.umin.i32(i32 %narrow75.i.1, i32 511)
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bf ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !29, !noalias !666
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !29, !noalias !666
  %i.bj = add nuw i64 %.06577.i, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i

bb.e:                                             ; preds = %bb.i, %._crit_edge.i
  %indvars.iv.i = phi i64 [ 0, %._crit_edge.i ], [ %indvars.iv.next.i.3, %bb.i ] ; 6 uses
  %.06378.i = phi i32 [ 0, %._crit_edge.i ], [ %i.by, %bb.i ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.bl = load i32, ptr %i.bk, align 16, !tbaa !29, !noalias !666
  %i.bm = add nsw i32 %i.bl, %.06378.i            ; 3 uses
  %i.bn = icmp uge i32 %.06378.i, %i.aj
  %.not.i = icmp slt i32 %i.bm, %i.aj
  %or.cond.i = select i1 %i.bn, i1 true, i1 %.not.i
  br i1 %or.cond.i, label %bb.f, label %.split.loop.exit88.i

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !29, !noalias !666
  %i.bq = add nsw i32 %i.bp, %i.bm                ; 3 uses
  %i.br = icmp uge i32 %i.bm, %i.aj
  %.not.i.1 = icmp slt i32 %i.bq, %i.aj
  %or.cond.i.1 = select i1 %i.br, i1 true, i1 %.not.i.1
  br i1 %or.cond.i.1, label %bb.g, label %.split.loop.exit88.i

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i.1
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !29, !noalias !666
  %i.bu = add nsw i32 %i.bt, %i.bq                ; 3 uses
  %i.bv = icmp uge i32 %i.bq, %i.aj
  %.not.i.2 = icmp slt i32 %i.bu, %i.aj
  %or.cond.i.2 = select i1 %i.bv, i1 true, i1 %.not.i.2
  br i1 %or.cond.i.2, label %bb.h, label %.split.loop.exit88.i

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i.2
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !29, !noalias !666
  %i.by = add nsw i32 %i.bx, %i.bu                ; 2 uses
  %i.bz = icmp uge i32 %i.bu, %i.aj
  %.not.i.3 = icmp slt i32 %i.by, %i.aj
  %or.cond.i.3 = select i1 %i.bz, i1 true, i1 %.not.i.3
  br i1 %or.cond.i.3, label %bb.i, label %.split.loop.exit88.i

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond85.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, 512
  br i1 %exitcond85.not.i.3, label %.split.loop.exit.i, label %bb.e

.split.loop.exit88.i:                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %indvars.iv.i.lcssa = phi i64 [ %indvars.iv.i, %bb.e ], [ %indvars.iv.next.i, %bb.f ], [ %indvars.iv.next.i.1, %bb.g ], [ %indvars.iv.next.i.2, %bb.h ]
  %i.ca = trunc nuw nsw i64 %indvars.iv.i.lcssa to i32
  %i.cb = uitofp nneg i32 %i.ca to double
  %i.cc = fmul reassoc nnan nsz arcp contract afn double %i.cb, f0x3FA0080402010080
  %i.cd = fadd reassoc nsz arcp contract afn double %i.cc, -1.000000e+01
  %i.ce = fptrunc reassoc nsz arcp contract afn double %i.cd to float
  br label %.split.loop.exit.i

.split.loop.exit.i:                               ; preds = %bb.i, %.split.loop.exit88.i
  %i.cf = phi float [ %i.ce, %.split.loop.exit88.i ], [ -1.000000e+01, %bb.i ] ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.split.loop.exit.i
  %.05581.i = phi i32 [ 511, %.split.loop.exit.i ], [ %3, %bb.j ] ; 4 uses
  %.16480.i = phi i32 [ 0, %.split.loop.exit.i ], [ %i.ci, %bb.j ] ; 2 uses
  %1 = zext nneg i32 %.05581.i to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %1
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !29, !noalias !666
  %i.ci = add nsw i32 %i.ch, %.16480.i            ; 2 uses
  %2 = icmp ult i32 %.16480.i, %i.al
  %.not71.i = icmp sge i32 %i.ci, %i.al
  %or.cond72.not92.i = select i1 %2, i1 %.not71.i, i1 false
  %3 = add nsw i32 %.05581.i, -1
  %.not87.i = icmp eq i32 %.05581.i, 0
  %or.cond90.i = or i1 %.not87.i, %or.cond72.not92.i
  br i1 %or.cond90.i, label %bb.k, label %bb.j

bb.k:                                             ; preds = %bb.j
  store float %i.cf, ptr %i.t, align 4, !tbaa !11, !noalias !666
  %i.cj = uitofp nneg i32 %.05581.i to float
  %i.ck = fpext fast float %i.cj to double
  %i.cl = fmul reassoc nnan nsz arcp contract afn double %i.ck, f0x3FA0080402010080
  %i.cm = fadd reassoc nsz arcp contract afn double %i.cl, -1.000000e+01
  %i.cn = fptrunc reassoc nsz arcp contract afn double %i.cm to float ; 2 uses
  store float %i.cn, ptr %i.u, align 8, !tbaa !11, !noalias !666
  %.promoted = load i32, ptr %i.s, align 16, !tbaa !29, !noalias !666
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %..i19 = phi i32 [ %.promoted, %bb.k ], [ %..i.1, %bb.l ]
  %.082.i = phi i64 [ 0, %bb.k ], [ %i.dr, %bb.l ] ; 4 uses
  %i.co = uitofp nneg i64 %.082.i to double
  %i.cp = fmul reassoc nnan nsz arcp contract afn double %i.co, f0x3FA0080402010080
  %i.cq = fadd reassoc nnan nsz arcp contract afn double %i.cp, -1.000000e+01
  %i.cr = fptrunc reassoc nnan nsz arcp contract afn double %i.cq to float
  %i.cs = fmul reassoc nnan nsz arcp contract afn float %i.cr, 3.200000e+01
  %i.ct = fadd reassoc nsz arcp contract afn float %i.cs, 2.560000e+02
  %i.cu = fptosi float %i.ct to i32
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.cu, i32 0)
  %i.cv = tail call i32 @llvm.umin.i32(i32 %narrow.i, i32 255)
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.082.i
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !29, !noalias !666
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.cw ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !29, !noalias !666
  %i.db = add nsw i32 %i.da, %i.cy                ; 2 uses
  store i32 %i.db, ptr %i.cz, align 4, !tbaa !29, !noalias !666
  %..i = tail call i32 @llvm.smax.i32(i32 %i.db, i32 %..i19)
  %i.dc = or disjoint i64 %.082.i, 1              ; 2 uses
  %i.dd = uitofp nneg i64 %i.dc to double
  %i.de = fmul reassoc nnan nsz arcp contract afn double %i.dd, f0x3FA0080402010080
  %i.df = fadd reassoc nnan nsz arcp contract afn double %i.de, -1.000000e+01
  %i.dg = fptrunc reassoc nnan nsz arcp contract afn double %i.df to float
  %i.dh = fmul reassoc nnan nsz arcp contract afn float %i.dg, 3.200000e+01
  %i.di = fadd reassoc nsz arcp contract afn float %i.dh, 2.560000e+02
  %i.dj = fptosi float %i.di to i32
  %narrow.i.1 = tail call i32 @llvm.smax.i32(i32 %i.dj, i32 0)
  %i.dk = tail call i32 @llvm.umin.i32(i32 %narrow.i.1, i32 255)
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dc
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !29, !noalias !666
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.dl ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !29, !noalias !666
  %i.dq = add nsw i32 %i.dp, %i.dn                ; 2 uses
  store i32 %i.dq, ptr %i.do, align 4, !tbaa !29, !noalias !666
  %..i.1 = tail call i32 @llvm.smax.i32(i32 %i.dq, i32 %..i) ; 2 uses
  %i.dr = add nuw nsw i64 %.082.i, 2              ; 2 uses
  %exitcond86.not.i.1 = icmp eq i64 %i.dr, 512
  br i1 %exitcond86.not.i.1, label %compute_log_histogram_and_stats.exit, label %bb.l

compute_log_histogram_and_stats.exit:             ; preds = %bb.l
  store i32 %..i.1, ptr %i.s, align 16, !tbaa !29, !noalias !666
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !666
  %i.ds = fadd reassoc nsz arcp contract afn float %i.cf, %i.cn
  %i.dt = fmul reassoc nsz arcp contract afn float %i.ds, 5.000000e-01
  %i.du = getelementptr inbounds nuw i8, ptr %i.c, i64 2560
  store float %i.dt, ptr %i.du, align 64, !tbaa !669
  store i32 1, ptr %i.g, align 16, !tbaa !127
  br label %bb.m

bb.m:                                             ; preds = %compute_log_histogram_and_stats.exit, %bb.c, %bb.b
  %i.dv = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.e) #28 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.m
  ret void
}

declare void @cairo_close_path(ptr noundef) local_unnamed_addr #6

declare void @dtgtk_cairo_paint_warning(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare void @cairo_set_source_surface(ptr noundef, ptr noundef, double noundef, double noundef) local_unnamed_addr #6

declare void @cairo_paint(ptr noundef) local_unnamed_addr #6

declare void @dt_iop_color_picker_reset(ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @dt_gui_ignore_scroll(ptr noundef) local_unnamed_addr #6

declare float @dt_bauhaus_slider_get(ptr noundef) local_unnamed_addr #6

declare void @dt_bauhaus_widget_set_quad_paint(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare void @dt_bauhaus_widget_set_quad_toggle(ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @dt_bauhaus_widget_set_quad_tooltip(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @dt_iop_refresh_center(ptr noundef) local_unnamed_addr #6

declare void @gtk_widget_set_hexpand(ptr noundef, i32 noundef) local_unnamed_addr #6

declare ptr @gtk_label_new(ptr noundef) local_unnamed_addr #6

declare void @g_object_set(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.maxnum.v8f32(<8 x float>, <8 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.sqrt.v8f32(<8 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.log2.v8f32(<8 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.minnum.v8f32(<8 x float>, <8 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.round.v8f32(<8 x float>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.exp.v8f32(<8 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <8 x float> @llvm.masked.load.v8f32.p0(ptr captures(none), <8 x i1>, <8 x float>) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v8f32.p0(<8 x float>, ptr captures(none), <8 x i1>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <2 x float> @llvm.masked.load.v2f32.p0(ptr captures(none), <2 x i1>, <2 x float>) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.exp.v2f32(<2 x float>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v2f32.p0(<2 x float>, ptr captures(none), <2 x i1>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.exp2.v8f32(<8 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fabs.v8f32(<8 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.exp2.v2f32(<2 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.pow.v8f32(<8 x float>, <8 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.floor.v8f32(<8 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4f32.v4p0(<4 x float>, <4 x ptr>, <4 x i1>) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8f32.v8p0(<8 x float>, <8 x ptr>, <8 x i1>) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v3f32.p0(<3 x float>, ptr captures(none), <3 x i1>) #9

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #22 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #23 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #28 = { nounwind }
attributes #29 = { nounwind allocsize(0) }
attributes #30 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"float", !9, i64 0}
!13 = distinct !{!13, !14, !15}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = distinct !{!16, !14, !15}
!17 = distinct !{!17, !15, !14}
!18 = distinct !{!18, !15, !14}
!19 = distinct !{!19, !14, !15}
!20 = distinct !{!20, !14, !15}
!21 = distinct !{!21, !15, !14}
!22 = distinct !{!22, !15, !14}
end_hunk_1

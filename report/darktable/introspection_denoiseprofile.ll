Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_denoiseprofile?download=true
inline.NumInlined: 157
inline.NumDeleted: 53
loop-unroll.NumCompletelyUnrolled: 79
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 83
begin_hunk_0_@process:bb.a
  %i.bag = call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.baf, <2 x float> %i.axg)
  %i.bah = insertelement <4 x float> poison, float %i.baa, i64 2
  %i.bai = shufflevector <2 x float> %i.azy, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.baj = shufflevector <4 x float> %i.bah, <4 x float> %i.bai, <4 x i32> <i32 poison, i32 poison, i32 2, i32 5>
  %i.bak = shufflevector <2 x float> %i.bag, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bal = shufflevector <4 x float> %i.bak, <4 x float> %i.baj, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bam = fmul reassoc nsz arcp contract afn <4 x float> %i.bal, splat (float 2.000000e+00)
  %i.ban = fmul reassoc nsz arcp contract afn <4 x float> %i.bam, %i.ayt
  %i.bao = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.azr
  store <4 x float> %i.ban, ptr %i.bao, align 16, !tbaa !34, !alias.scope !338, !nontemporal !312
  %i.bap = add nuw i64 %.04247.i.i38, 8           ; 2 uses
  %niter295.next.1 = add i64 %niter295, 2         ; 2 uses
  %niter295.ncmp.1.not = icmp eq i64 %niter295.next.1, %unroll_iter294
  br i1 %niter295.ncmp.1.not, label %precondition_v2.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i37

precondition_v2.exit.i.loopexit.unr-lcssa:        ; preds = %.lr.ph.i.i37
  %i.baq = and i64 %i.ayk, 4
  %lcmp.mod292.not.not = icmp eq i64 %i.baq, 0
  br i1 %lcmp.mod292.not.not, label %.lr.ph.i.i37.epil.preheader, label %precondition_v2.exit.i

.lr.ph.i.i37.epil.preheader:                      ; preds = %precondition_v2.exit.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i36
  %.04247.i.i38.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i36 ], [ %i.bap, %precondition_v2.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod293 = trunc i64 %i.aym to i1
  call void @llvm.assume(i1 %lcmp.mod293)
  %i.bar = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.04247.i.i38.epil.init ; 2 uses
  %i.bas = getelementptr inbounds nuw i8, ptr %i.bar, i64 8
  %i.bat = load <2 x float>, ptr %i.bas, align 4, !tbaa !12
  %i.bau = fdiv reassoc nsz arcp contract afn <2 x float> %i.bat, %i.axt
  %i.bav = fadd reassoc nsz arcp contract afn <2 x float> %i.bau, %i.ayj ; 2 uses
  %i.baw = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.bav, zeroinitializer
  %i.bax = select <2 x i1> %i.baw, <2 x float> %i.bav, <2 x float> zeroinitializer ; 2 uses
  %i.bay = extractelement <2 x float> %i.bax, i64 0
  %i.baz = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bay, float %i.axi)
  %i.bba = load <2 x float>, ptr %i.bar, align 4, !tbaa !12
  %i.bbb = fdiv reassoc nsz arcp contract afn <2 x float> %i.bba, %i.axu
  %i.bbc = fadd reassoc nsz arcp contract afn <2 x float> %i.bbb, %i.ayj ; 2 uses
  %i.bbd = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.bbc, zeroinitializer
  %i.bbe = select <2 x i1> %i.bbd, <2 x float> %i.bbc, <2 x float> zeroinitializer
  %i.bbf = call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.bbe, <2 x float> %i.axg)
  %i.bbg = insertelement <4 x float> poison, float %i.baz, i64 2
  %i.bbh = shufflevector <2 x float> %i.bax, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bbi = shufflevector <4 x float> %i.bbg, <4 x float> %i.bbh, <4 x i32> <i32 poison, i32 poison, i32 2, i32 5>
  %i.bbj = shufflevector <2 x float> %i.bbf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bbk = shufflevector <4 x float> %i.bbj, <4 x float> %i.bbi, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bbl = fmul reassoc nsz arcp contract afn <4 x float> %i.bbk, splat (float 2.000000e+00)
  %i.bbm = fdiv reassoc nsz arcp contract afn <4 x float> %i.bbl, %i.ayh
  %i.bbn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.04247.i.i38.epil.init
  store <4 x float> %i.bbm, ptr %i.bbn, align 16, !tbaa !34, !alias.scope !338, !nontemporal !312
  br label %precondition_v2.exit.i

precondition_v2.exit.i:                           ; preds = %.lr.ph.i.i37.epil.preheader, %precondition_v2.exit.i.loopexit.unr-lcssa, %compute_wb_factors.exit.i34
  call void @llvm.x86.sse.sfence()
  %i.bbo = load ptr, ptr %i.a, align 8, !tbaa !303
  call fastcc void @sum_rec(i64 noundef %i.avd, ptr noundef %i.bbo, ptr noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.bbp = uitofp reassoc nsz arcp contract afn i64 %i.avd to float
  %i.bbq = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bbr = load <4 x float>, ptr %3, align 4, !tbaa !12
  %i.bbs = insertelement <4 x float> poison, float %i.bbp, i64 0
  %i.bbt = shufflevector <4 x float> %i.bbs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bbu = fdiv reassoc nsz arcp contract afn <4 x float> %i.bbr, %i.bbt
  store <4 x float> %i.bbu, ptr %i.b, align 16, !tbaa !12
  %i.bbv = load ptr, ptr %i.a, align 8, !tbaa !303
  call fastcc void @variance_rec(i64 noundef %i.avd, ptr noundef %i.bbv, ptr noundef nonnull %3, ptr noundef %i.b)
  %i.bbw = add nsw i64 %i.avd, -1
  %i.bbx = uitofp reassoc nsz arcp contract afn i64 %i.bbw to float ; 2 uses
  %i.bby = load float, ptr %3, align 4, !tbaa !12
  %i.bbz = fdiv reassoc nsz arcp contract afn float %i.bby, %i.bbx
  %i.bca = load <2 x float>, ptr %i.bbq, align 4, !tbaa !12
  %i.bcb = insertelement <2 x float> poison, float %i.bbx, i64 0
  %i.bcc = shufflevector <2 x float> %i.bcb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bcd = fdiv reassoc nsz arcp contract afn <2 x float> %i.bca, %i.bcc ; 2 uses
  %i.bce = getelementptr inbounds nuw i8, ptr %i.auw, i64 2232
  store float %i.bbz, ptr %i.bce, align 8, !tbaa !144
  %i.bcf = getelementptr inbounds nuw i8, ptr %i.auw, i64 2248
  %i.bcg = extractelement <2 x float> %i.bcd, i64 0
  store float %i.bcg, ptr %i.bcf, align 8, !tbaa !145
  %i.bch = getelementptr inbounds nuw i8, ptr %i.auw, i64 2264
  %i.bci = extractelement <2 x float> %i.bcd, i64 1
  store float %i.bci, ptr %i.bch, align 8, !tbaa !146
  call void @dt_iop_image_copy(ptr noundef nonnull %3, ptr noundef %2, i64 noundef %i.avf) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %bb.bb

bb.bb:                                            ; preds = %precondition_v2.exit.i, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %process_nlmeans.exit

process_nlmeans.exit:                             ; preds = %bb.bb, %bb.aw, %bb.av, %bb.x, %bb.o, %bb.b
  ret void
}

declare void @eaw_dn_decompose(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, float noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @eaw_synthesize(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @init(ptr noundef %0) local_unnamed_addr #1 {
.preheader:
  tail call void @dt_iop_default_init(ptr noundef %0) #18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !73  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %gep.1.1 = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %gep.2.2 = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  %gep.3.3 = getelementptr inbounds nuw i8, ptr %i.b, i64 156
  %gep.4.4 = getelementptr inbounds nuw i8, ptr %i.b, i64 188
  %gep.5.5 = getelementptr inbounds nuw i8, ptr %i.b, i64 220
  store <8 x float> <float 0.000000e+00, float f0x3E2AAAAB, float f0x3EAAAAAB, float 5.000000e-01, float f0x3F2AAAAB, float f0x3F555556, float 1.000000e+00, float 0.000000e+00>, ptr %i.c, align 4, !tbaa !12
  store <8 x float> <float f0x3E2AAAAB, float f0x3EAAAAAB, float 5.000000e-01, float f0x3F2AAAAB, float f0x3F555556, float 1.000000e+00, float 0.000000e+00, float f0x3E2AAAAB>, ptr %gep.1.1, align 4, !tbaa !12
  store <8 x float> <float f0x3EAAAAAB, float 5.000000e-01, float f0x3F2AAAAB, float f0x3F555556, float 1.000000e+00, float 0.000000e+00, float f0x3E2AAAAB, float f0x3EAAAAAB>, ptr %gep.2.2, align 4, !tbaa !12
  store <8 x float> <float 5.000000e-01, float f0x3F2AAAAB, float f0x3F555556, float 1.000000e+00, float 0.000000e+00, float f0x3E2AAAAB, float f0x3EAAAAAB, float 5.000000e-01>, ptr %gep.3.3, align 4, !tbaa !12
  store <8 x float> <float f0x3F2AAAAB, float f0x3F555556, float 1.000000e+00, float 0.000000e+00, float f0x3E2AAAAB, float f0x3EAAAAAB, float 5.000000e-01, float f0x3F2AAAAB>, ptr %gep.4.4, align 4, !tbaa !12
  store <2 x float> <float f0x3F555556, float 1.000000e+00>, ptr %gep.5.5, align 4, !tbaa !12
  ret void
}

declare void @dt_iop_default_init(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @reload_defaults(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %1 = alloca %struct.dt_noiseprofile_t, align 16 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !138 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !73  ; 14 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  store <8 x float> <float 1.000000e+00, float 7.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e-01, float 1.000000e+00>, ptr %i.f, align 4, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i32 1, ptr %i.j, align 4, !tbaa !71
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 396
  store <4 x i32> splat (i32 1), ptr %i.k, align 4, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !30   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %i.o = getelementptr i8, ptr %i.m, i64 148
  %.val = load float, ptr %i.o, align 4, !tbaa !77
  %i.p = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %.val)
  %i.q = fptosi float %i.p to i32
  %i.r = icmp sgt i32 %i.q, 0
  %i.s = zext i1 %i.r to i32
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 412 ; 2 uses
  store i32 %i.s, ptr %i.t, align 4, !tbaa !80
  %i.u = tail call ptr @dt_noiseprofile_get_matching(ptr noundef nonnull %i.n) #18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i32 0, ptr %i.b, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.v = load i32, ptr %i.t, align 4, !tbaa !80
  call fastcc void @dt_iop_denoiseprofile_get_auto_profile(ptr dead_on_unwind noalias writable align 16 %1, ptr noundef %0, ptr noundef %i.u, ptr noundef nonnull %i.a, i64 noundef 512, ptr noundef nonnull %i.b, i32 noundef %i.v)
  %i.w = load i32, ptr %i.b, align 4, !tbaa !33
  %.not = icmp eq i32 %i.w, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  br i1 %.not, label %._crit_edge66, label %bb.b

._crit_edge66:                                    ; preds = %bb.a
  %.pre = load float, ptr %.phi.trans.insert, align 16, !tbaa !12
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  store float -1.000000e+00, ptr %.phi.trans.insert, align 16, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge66, %bb.b
  %i.x = phi float [ %.pre, %._crit_edge66 ], [ -1.000000e+00, %bb.b ]
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.z = load float, ptr %i.y, align 4, !tbaa !12 ; 5 uses
  %i.aa = fmul reassoc nsz arcp contract afn float %i.z, 3.000000e+05
  %reass.add.i = fadd reassoc nsz arcp contract afn float %i.aa, 1.500000e+04
  %reass.mul.i = fmul reassoc nsz arcp contract afn float %reass.add.i, %i.z
  %i.ab = fadd reassoc nsz arcp contract afn float %reass.mul.i, 1.000000e+00
  %i.ac = fptoui float %i.ab to i32
  %spec.select.i = call range(i32 0, 9) i32 @llvm.umin.i32(i32 %i.ac, i32 8)
  %i.ad = uitofp reassoc nsz arcp contract afn nneg i32 %spec.select.i to float
  store float %i.ad, ptr %i.f, align 4, !tbaa !88
  %i.ae = fmul reassoc nsz arcp contract afn float %i.z, 3.000000e+03 ; 2 uses
  %i.af = fcmp reassoc nsz arcp contract afn olt float %i.ae, 1.000000e+00
  %i.ag = select reassoc nsz arcp contract afn i1 %i.af, float %i.ae, float 1.000000e+00
  store float %i.ag, ptr %i.i, align 4, !tbaa !91
  %i.ah = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.z)
  %i.ai = fpext reassoc nsz arcp contract afn float %i.ah to double ; 2 uses
  %i.aj = fmul reassoc nsz arcp contract afn double %i.ai, 1.000000e-01
  %i.ak = fsub reassoc nsz arcp contract afn double f0x3FB99999A0000000, %i.aj ; 3 uses
  %i.al = fcmp reassoc nsz arcp contract afn ule double %i.ak, f0x3FE6666660000000 ; 2 uses
  %i.am = fcmp reassoc nsz arcp contract afn olt double %i.ak, f0x3FFCCCCCC0000000
  %spec.select.i60 = or i1 %i.al, %i.am
  %spec.select45.i = select i1 %i.al, double f0x3FE6666660000000, double %i.ak
  %spec.select4.i = fptrunc double %spec.select45.i to float
  %i.an = select i1 %spec.select.i60, float %spec.select4.i, float 1.800000e+00
  store float %i.an, ptr %i.g, align 4, !tbaa !339
  %i.ao = fmul reassoc nsz arcp contract afn double %i.ai, 5.000000e-01
  %i.ap = fadd reassoc nsz arcp contract afn double %i.ao, 5.000000e+00 ; 2 uses
  %i.aq = fcmp reassoc nsz arcp contract afn ogt double %i.ap, 0.000000e+00
  %i.ar = fptrunc reassoc nsz arcp contract afn double %i.ap to float
  %.neg.i = fneg reassoc nsz arcp contract afn float %i.ar
  %i.as = select reassoc nsz arcp contract afn i1 %i.aq, float %.neg.i, float -0.000000e+00
  store float %i.as, ptr %i.h, align 4, !tbaa !79
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  store float %i.x, ptr %i.at, align 4, !tbaa !12
  %i.aw = load float, ptr %i.au, align 16, !tbaa !12
  store float %i.aw, ptr %i.av, align 4, !tbaa !12
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  store float %i.z, ptr %i.ax, align 4, !tbaa !12
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.az = load float, ptr %i.ay, align 4, !tbaa !12
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store float %i.az, ptr %i.ba, align 4, !tbaa !12
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bc = load float, ptr %i.bb, align 8, !tbaa !12
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store float %i.bc, ptr %i.bd, align 4, !tbaa !12
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bf = load float, ptr %i.be, align 8, !tbaa !12
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  store float %i.bf, ptr %i.bg, align 4, !tbaa !12
  %.not57 = icmp eq ptr %i.d, null
  br i1 %.not57, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bh = load ptr, ptr %i.d, align 16, !tbaa !147
  call void @dt_bauhaus_combobox_clear(ptr noundef %i.bh) #18
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 160 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 16, !tbaa !148 ; 2 uses
  %.not58 = icmp eq ptr %i.bj, null
  br i1 %.not58, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @g_list_free_full(ptr noundef nonnull %i.bj, ptr noundef nonnull @dt_noiseprofile_free) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr %i.u, ptr %i.bi, align 16, !tbaa !148
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.bk, ptr noundef nonnull align 16 dereferenceable(64) %1, i64 64, i1 false), !tbaa.struct !35
  %i.bl = load ptr, ptr %i.d, align 16, !tbaa !147
  call void @dt_bauhaus_combobox_add(ptr noundef %i.bl, ptr noundef nonnull %i.a) #18
  %.062 = load ptr, ptr %i.bi, align 16, !tbaa !149 ; 2 uses
  %.not5963 = icmp eq ptr %.062, null
  br i1 %.not5963, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.f
  %i.bm = load ptr, ptr %i.d, align 16, !tbaa !147
  call void @dt_bauhaus_combobox_set(ptr noundef %i.bm, i32 noundef 0) #18
  call void @gui_update(ptr noundef nonnull %0)
  br label %bb.g

.lr.ph:                                           ; preds = %bb.f, %.lr.ph
  %.064 = phi ptr [ %.0, %.lr.ph ], [ %.062, %bb.f ] ; 2 uses
  %i.bn = load ptr, ptr %.064, align 8, !tbaa !66
  %i.bo = load ptr, ptr %i.d, align 16, !tbaa !147
  %i.bp = load ptr, ptr %i.bn, align 16, !tbaa !76
  call void @dt_bauhaus_combobox_add(ptr noundef %i.bo, ptr noundef %i.bp) #18
  %i.bq = getelementptr inbounds nuw i8, ptr %.064, i64 8
  %.0 = load ptr, ptr %i.bq, align 8, !tbaa !149  ; 2 uses
  %.not59 = icmp eq ptr %.0, null
  br i1 %.not59, label %._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %._crit_edge, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

declare ptr @dt_noiseprofile_get_matching(ptr noundef) local_unnamed_addr #5

declare void @dt_bauhaus_combobox_clear(ptr noundef) local_unnamed_addr #5

declare void @g_list_free_full(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @dt_noiseprofile_free(ptr noundef) #5

declare void @dt_bauhaus_combobox_add(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @dt_bauhaus_combobox_set(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @gui_update(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !138 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !150  ; 7 uses
  %i.e = load ptr, ptr %i.b, align 16, !tbaa !147
  tail call void @dt_bauhaus_combobox_set(ptr noundef %i.e, i32 noundef -1) #18
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %.04149 = load ptr, ptr %i.f, align 16, !tbaa !149 ; 2 uses
  %.not50 = icmp eq ptr %.04149, null
  br i1 %.not50, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 44 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.04152 = phi ptr [ %.04149, %.lr.ph ], [ %.041, %bb.d ] ; 2 uses
  %.04251 = phi i32 [ 1, %.lr.ph ], [ %i.an, %bb.d ] ; 2 uses
  %i.i = load ptr, ptr %.04152, align 8, !tbaa !66 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %i.k = load i64, ptr %i.j, align 1
  %i.l = load i64, ptr %i.g, align 1
  %i.m = xor i64 %i.k, %i.l
  %i.n = getelementptr i8, ptr %i.j, i64 8
  %i.o = getelementptr i8, ptr %i.g, i64 8
  %i.p = load i32, ptr %i.n, align 1
  %i.q = load i32, ptr %i.o, align 1
  %i.r = zext i32 %i.p to i64
  %i.s = zext i32 %i.q to i64
  %i.t = xor i64 %i.r, %i.s
  %i.u = or i64 %i.m, %i.t
  %i.v = icmp ne i64 %i.u, 0
  %i.w = zext i1 %i.v to i32
  %.not43 = icmp eq i32 %i.w, 0
  br i1 %.not43, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  %i.y = load i64, ptr %i.x, align 1
  %i.z = load i64, ptr %i.h, align 1
  %i.aa = xor i64 %i.y, %i.z
  %i.ab = getelementptr i8, ptr %i.x, i64 8
  %i.ac = getelementptr i8, ptr %i.h, i64 8
  %i.ad = load i32, ptr %i.ab, align 1
  %i.ae = load i32, ptr %i.ac, align 1
  %i.af = zext i32 %i.ad to i64
  %i.ag = zext i32 %i.ae to i64
  %i.ah = xor i64 %i.af, %i.ag
  %i.ai = or i64 %i.aa, %i.ah
  %i.aj = icmp ne i64 %i.ai, 0
  %i.ak = zext i1 %i.aj to i32
  %.not45 = icmp eq i32 %i.ak, 0
  br i1 %.not45, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.c
  %i.al = load ptr, ptr %i.b, align 16, !tbaa !147
  tail call void @dt_bauhaus_combobox_set(ptr noundef %i.al, i32 noundef %.04251) #18
  br label %.loopexit

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %.04152, i64 8
  %i.an = add nuw nsw i32 %.04251, 1
  %.041 = load ptr, ptr %i.am, align 8, !tbaa !149 ; 2 uses
  %.not = icmp eq ptr %.041, null
  br i1 %.not, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.d, %bb.a, %.critedge
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 2216
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !151
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 396
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !340
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.ap, i32 noundef %i.ar) #18
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !152
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 412
  %i.av = load i32, ptr %i.au, align 4, !tbaa !80
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.at, i32 noundef %i.av) #18
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 2280 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !153
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 400 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !154
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.ax, i32 noundef %i.az) #18
  %i.ba = load ptr, ptr %i.aw, align 8, !tbaa !153
  %i.bb = load i32, ptr %i.ay, align 4, !tbaa !154
  %.not46 = icmp eq i32 %i.bb, 0
  %i.bc = zext i1 %.not46 to i32
  tail call void @gtk_widget_set_visible(ptr noundef %i.ba, i32 noundef %i.bc) #18
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 2288 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 16, !tbaa !155
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 404 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !72
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.be, i32 noundef %i.bg) #18
  %i.bh = load ptr, ptr %i.bd, align 16, !tbaa !155
  %i.bi = load i32, ptr %i.bf, align 4, !tbaa !72
  %.not47 = icmp eq i32 %i.bi, 0
  %i.bj = zext i1 %.not47 to i32
  tail call void @gtk_widget_set_visible(ptr noundef %i.bh, i32 noundef %i.bj) #18
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !30
  %i.bm = getelementptr i8, ptr %i.bl, i64 148
  %.val = load float, ptr %i.bm, align 4, !tbaa !77
  %i.bn = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %.val)
  %i.bo = fptosi float %i.bn to i32
  %i.bp = load ptr, ptr %i.as, align 8, !tbaa !152
  %i.bq = icmp sgt i32 %i.bo, 0
  %i.br = zext i1 %i.bq to i32
  tail call void @gtk_widget_set_visible(ptr noundef %i.bp, i32 noundef %i.br) #18
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 408 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !75 ; 2 uses
  %i.bu = icmp eq i32 %i.bt, 1
  br i1 %i.bu, label %bb.e, label %thread-pre-split

bb.e:                                             ; preds = %.loopexit
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 676 ; 2 uses
end_hunk_0
begin_hunk_1_@init_global:bb.a
  store <8 x i32> splat (i32 -999), ptr %i.c, align 4, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i32 -999, ptr %i.d, align 4, !tbaa !342
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_global(ptr nofree noundef captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !162
  tail call void @free(ptr noundef %i.b) #18
  store ptr null, ptr %i.a, align 8, !tbaa !162
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define void @commit_params(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #1 {
bb.a:
  %4 = alloca %struct.dt_noiseprofile_t, align 16 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !87  ; 18 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load float, ptr %i.e, align 4, !tbaa !345
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store float %i.f, ptr %i.g, align 8, !tbaa !133
  %i.h = load <2 x float>, ptr %i.c, align 4, !tbaa !12
  store <2 x float> %i.h, ptr %i.d, align 4, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.j = load float, ptr %i.i, align 4, !tbaa !163
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store float %i.j, ptr %i.k, align 4, !tbaa !346
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 44 ; 2 uses
  %i.p = load float, ptr %i.l, align 4, !tbaa !12
  store float %i.p, ptr %i.m, align 8, !tbaa !12
  %i.q = load float, ptr %i.n, align 4, !tbaa !12
  store float %i.q, ptr %i.o, align 4, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.s = load float, ptr %i.r, align 4, !tbaa !12 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 2 uses
  store float %i.s, ptr %i.t, align 4, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.v = load float, ptr %i.u, align 4, !tbaa !12
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store float %i.v, ptr %i.w, align 8, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.y = load float, ptr %i.x, align 4, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store float %i.y, ptr %i.z, align 8, !tbaa !12
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !12
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 52 ; 2 uses
  store float %i.ab, ptr %i.ac, align 4, !tbaa !12
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !71 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i32 %i.ae, ptr %i.af, align 8, !tbaa !347
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !75
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 296
  store i32 %i.ah, ptr %i.ai, align 8, !tbaa !137
  %i.aj = load float, ptr %i.l, align 4, !tbaa !12
  %i.ak = fcmp reassoc nsz arcp contract afn oeq float %i.aj, -1.000000e+00
  br i1 %i.ak, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 412
  %i.am = load i32, ptr %i.al, align 4, !tbaa !80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !30, !noalias !348
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 112
  %i.aq = tail call ptr @dt_noiseprofile_get_matching(ptr noundef nonnull %i.ap) #18, !noalias !348 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %4, ptr noundef nonnull align 16 dereferenceable(64) @dt_noiseprofile_generic, i64 64, i1 false), !tbaa.struct !35
  %i.ar = load ptr, ptr %i.an, align 8, !tbaa !30, !noalias !348 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 132
  %i.at = load float, ptr %i.as, align 4, !tbaa !64, !noalias !348
  %i.au = fptosi float %i.at to i32               ; 2 uses
  %.not74.i = icmp eq i32 %i.am, 0
  br i1 %.not74.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.av = getelementptr i8, ptr %i.ar, i64 148
  %.val.i = load float, ptr %i.av, align 4, !tbaa !77, !noalias !348
  %i.aw = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %.val.i)
  %i.ax = fptosi float %i.aw to i32
  %..i.i = tail call range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.ax, i32 0)
  %i.ay = ashr i32 %i.au, %..i.i
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.061.i = phi i32 [ %i.ay, %bb.c ], [ %i.au, %bb.b ] ; 4 uses
  %.not7584.i = icmp eq ptr %i.aq, null
  br i1 %.not7584.i, label %dt_iop_denoiseprofile_get_auto_profile.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.i
  %.05886.i = phi ptr [ %i.bj, %bb.i ], [ %i.aq, %bb.d ] ; 2 uses
  %.05985.i = phi ptr [ %i.az, %bb.i ], [ null, %bb.d ] ; 3 uses
  %i.az = load ptr, ptr %.05886.i, align 8, !tbaa !66, !noalias !348 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !68, !noalias !348 ; 2 uses
  %i.bc = icmp eq i32 %i.bb, %.061.i
  br i1 %i.bc, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %4, ptr noundef nonnull align 16 dereferenceable(64) %i.az, i64 64, i1 false), !tbaa.struct !35
  br label %dt_iop_denoiseprofile_get_auto_profile.exit

bb.f:                                             ; preds = %.lr.ph.i
  %.not76.i = icmp eq ptr %.05985.i, null
  br i1 %.not76.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %.05985.i, i64 24
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !68, !noalias !348
  %i.bf = icmp slt i32 %i.be, %.061.i
  %i.bg = icmp sgt i32 %i.bb, %.061.i
  %or.cond.i = and i1 %i.bg, %i.bf
  br i1 %or.cond.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %.061.i, ptr %i.bh, align 8, !tbaa !68, !alias.scope !348
  call void @dt_noiseprofile_interpolate(ptr noundef nonnull %.05985.i, ptr noundef nonnull %i.az, ptr noundef nonnull align 16 %4) #18
  br label %dt_iop_denoiseprofile_get_auto_profile.exit

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %.05886.i, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !69, !noalias !348 ; 2 uses
  %.not75.i = icmp eq ptr %i.bj, null
  br i1 %.not75.i, label %dt_iop_denoiseprofile_get_auto_profile.exit, label %.lr.ph.i

dt_iop_denoiseprofile_get_auto_profile.exit:      ; preds = %bb.i, %bb.d, %bb.e, %bb.h
  call void @g_list_free_full(ptr noundef %i.aq, ptr noundef nonnull @dt_noiseprofile_free) #18
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bm = load float, ptr %i.bk, align 16, !tbaa !12
  store float %i.bm, ptr %i.m, align 8, !tbaa !12
  %i.bn = load float, ptr %i.bl, align 16, !tbaa !12
  store float %i.bn, ptr %i.o, align 4, !tbaa !12
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !12 ; 2 uses
  store float %i.bp, ptr %i.t, align 4, !tbaa !12
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.br = load float, ptr %i.bq, align 4, !tbaa !12
  store float %i.br, ptr %i.w, align 8, !tbaa !12
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bt = load float, ptr %i.bs, align 8, !tbaa !12
  store float %i.bt, ptr %i.z, align 8, !tbaa !12
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.bv = load float, ptr %i.bu, align 8, !tbaa !12
  store float %i.bv, ptr %i.ac, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %.pre = load i32, ptr %i.ad, align 4, !tbaa !71
  br label %bb.j

bb.j:                                             ; preds = %dt_iop_denoiseprofile_get_auto_profile.exit, %bb.a
  %i.bw = phi float [ %i.bp, %dt_iop_denoiseprofile_get_auto_profile.exit ], [ %i.s, %bb.a ]
  %i.bx = phi i32 [ %.pre, %dt_iop_denoiseprofile_get_auto_profile.exit ], [ %i.ae, %bb.a ]
  %.off = add i32 %i.bx, -3
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.by = load float, ptr %i.i, align 4, !tbaa !163
  %i.bz = fmul reassoc nsz arcp contract afn float %i.bw, %i.by ; 4 uses
  %i.ca = fmul reassoc nsz arcp contract afn float %i.bz, 3.000000e+05
  %reass.add.i = fadd reassoc nsz arcp contract afn float %i.ca, 1.500000e+04
  %reass.mul.i = fmul reassoc nsz arcp contract afn float %reass.add.i, %i.bz
  %i.cb = fadd reassoc nsz arcp contract afn float %reass.mul.i, 1.000000e+00
  %i.cc = fptoui float %i.cb to i32
  %spec.select.i = call range(i32 0, 9) i32 @llvm.umin.i32(i32 %i.cc, i32 8)
  %i.cd = uitofp reassoc nsz arcp contract afn nneg i32 %spec.select.i to float
  %i.ce = fmul reassoc nsz arcp contract afn float %i.bz, 3.000000e+03 ; 2 uses
  %i.cf = fcmp reassoc nsz arcp contract afn olt float %i.ce, 1.000000e+00
  %i.cg = select reassoc nsz arcp contract afn i1 %i.cf, float %i.ce, float 1.000000e+00
  %i.ch = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.bz)
  %i.ci = fpext reassoc nsz arcp contract afn float %i.ch to double ; 2 uses
  %i.cj = fmul reassoc nsz arcp contract afn double %i.ci, 1.000000e-01
  %i.ck = fsub reassoc nsz arcp contract afn double f0x3FB99999A0000000, %i.cj ; 3 uses
  %i.cl = fcmp reassoc nsz arcp contract afn ule double %i.ck, f0x3FE6666660000000 ; 2 uses
  %i.cm = fcmp reassoc nsz arcp contract afn olt double %i.ck, f0x3FFCCCCCC0000000
  %spec.select.i96 = or i1 %i.cl, %i.cm
  %spec.select45.i = select i1 %i.cl, double f0x3FE6666660000000, double %i.ck
  %spec.select4.i = fptrunc double %spec.select45.i to float
  %i.cn = select i1 %spec.select.i96, float %spec.select4.i, float 1.800000e+00
  %i.co = fmul reassoc nsz arcp contract afn double %i.ci, 5.000000e-01
  %i.cp = fadd reassoc nsz arcp contract afn double %i.co, 5.000000e+00 ; 2 uses
  %i.cq = fcmp reassoc nsz arcp contract afn ogt double %i.cp, 0.000000e+00
  %i.cr = fptrunc reassoc nsz arcp contract afn double %i.cp to float
  %.neg.i = fneg reassoc nsz arcp contract afn float %i.cr
  %i.cs = select reassoc nsz arcp contract afn i1 %i.cq, float %.neg.i, float -0.000000e+00
  %i.ct = insertelement <2 x float> poison, float %i.cn, i64 0
  %i.cu = insertelement <2 x float> %i.ct, float %i.cs, i64 1
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.cv = load float, ptr %1, align 4, !tbaa !88
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !91
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.cz = load <2 x float>, ptr %i.cy, align 4, !tbaa !12
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sink115 = phi float [ %i.cd, %bb.k ], [ %i.cv, %bb.l ]
  %.sink114 = phi float [ %i.cg, %bb.k ], [ %i.cx, %bb.l ]
  %i.da = phi <2 x float> [ %i.cu, %bb.k ], [ %i.cz, %bb.l ]
  store float %.sink115, ptr %i.b, align 8, !tbaa !93
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store float %.sink114, ptr %i.db, align 4, !tbaa !94
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store <2 x float> %i.da, ptr %i.dc, align 4, !tbaa !12
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 228
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  br label %dt_draw_curve_calc_values.exit

bb.n:                                             ; preds = %dt_draw_curve_calc_values.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 396
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 284
  %i.dj = load <2 x i32>, ptr %i.dh, align 4, !tbaa !33
  store <2 x i32> %i.dj, ptr %i.di, align 4, !tbaa !33
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 404
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !72
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 292
  store i32 %i.dl, ptr %i.dm, align 4, !tbaa !134
  ret void

dt_draw_curve_calc_values.exit:                   ; preds = %bb.m, %dt_draw_curve_calc_values.exit
  %indvars.iv = phi i64 [ 0, %bb.m ], [ %indvars.iv.next, %dt_draw_curve_calc_values.exit ] ; 5 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !164 ; 21 uses
  %i.dp = getelementptr inbounds nuw [28 x i8], ptr %i.de, i64 %indvars.iv ; 7 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 20 ; 2 uses
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !12
  %i.ds = fadd reassoc nsz arcp contract afn float %i.dr, -1.000000e+00
  %i.dt = getelementptr inbounds nuw [28 x i8], ptr %i.df, i64 %indvars.iv ; 8 uses
  %i.du = load float, ptr %i.dt, align 4, !tbaa !12
  %i.dv = getelementptr inbounds nuw i8, ptr %i.do, i64 24 ; 2 uses
  store float %i.ds, ptr %i.dv, align 8, !tbaa !166
  %i.dw = getelementptr inbounds nuw i8, ptr %i.do, i64 28
  store float %i.du, ptr %i.dw, align 4, !tbaa !167
  %i.dx = load float, ptr %i.dp, align 4, !tbaa !12
  %i.dy = load float, ptr %i.dt, align 4, !tbaa !12
  store float %i.dx, ptr %i.dv, align 8, !tbaa !166
  %i.dz = getelementptr inbounds nuw i8, ptr %i.do, i64 28
  store float %i.dy, ptr %i.dz, align 4, !tbaa !167
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dp, i64 4 ; 2 uses
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !12
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !12
  %i.ee = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  store float %i.eb, ptr %i.ee, align 8, !tbaa !166
  %i.ef = getelementptr inbounds nuw i8, ptr %i.do, i64 36
  store float %i.ed, ptr %i.ef, align 4, !tbaa !167
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !12
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !12
  %i.ek = getelementptr inbounds nuw i8, ptr %i.do, i64 40
  store float %i.eh, ptr %i.ek, align 8, !tbaa !166
  %i.el = getelementptr inbounds nuw i8, ptr %i.do, i64 44
  store float %i.ej, ptr %i.el, align 4, !tbaa !167
  %i.em = getelementptr inbounds nuw i8, ptr %i.dp, i64 12
  %i.en = load float, ptr %i.em, align 4, !tbaa !12
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dt, i64 12
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !12
  %i.eq = getelementptr inbounds nuw i8, ptr %i.do, i64 48
  store float %i.en, ptr %i.eq, align 8, !tbaa !166
  %i.er = getelementptr inbounds nuw i8, ptr %i.do, i64 52
  store float %i.ep, ptr %i.er, align 4, !tbaa !167
  %i.es = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.et = load float, ptr %i.es, align 4, !tbaa !12
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !12
  %i.ew = getelementptr inbounds nuw i8, ptr %i.do, i64 56
  store float %i.et, ptr %i.ew, align 8, !tbaa !166
  %i.ex = getelementptr inbounds nuw i8, ptr %i.do, i64 60
  store float %i.ev, ptr %i.ex, align 4, !tbaa !167
  %i.ey = load float, ptr %i.dq, align 4, !tbaa !12
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dt, i64 20
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !12
  %i.fb = getelementptr inbounds nuw i8, ptr %i.do, i64 64
  store float %i.ey, ptr %i.fb, align 8, !tbaa !166
  %i.fc = getelementptr inbounds nuw i8, ptr %i.do, i64 68
  store float %i.fa, ptr %i.fc, align 4, !tbaa !167
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !12
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dt, i64 24 ; 2 uses
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !12
  %i.fh = getelementptr inbounds nuw i8, ptr %i.do, i64 72
  store float %i.fe, ptr %i.fh, align 8, !tbaa !166
  %i.fi = getelementptr inbounds nuw i8, ptr %i.do, i64 76
  store float %i.fg, ptr %i.fi, align 4, !tbaa !167
  %i.fj = load float, ptr %i.ea, align 4, !tbaa !12
  %i.fk = fadd reassoc nsz arcp contract afn float %i.fj, 1.000000e+00
  %i.fl = load float, ptr %i.ff, align 4, !tbaa !12
  %i.fm = getelementptr inbounds nuw i8, ptr %i.do, i64 88
  store float %i.fk, ptr %i.fm, align 8, !tbaa !166
  %i.fn = getelementptr inbounds nuw i8, ptr %i.do, i64 92
  store float %i.fl, ptr %i.fn, align 4, !tbaa !167
  %i.fo = getelementptr inbounds nuw [28 x i8], ptr %i.dg, i64 %indvars.iv ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.do, i64 184 ; 2 uses
  store i32 7, ptr %i.fp, align 8, !tbaa !172
  %i.fq = getelementptr inbounds nuw i8, ptr %i.do, i64 188
  store i32 65536, ptr %i.fq, align 4, !tbaa !173
  %i.fr = call i32 @CurveDataSample(ptr noundef nonnull %i.do, ptr noundef nonnull %i.fp) #18 ; 0 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.do, i64 192
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !174 ; 3 uses
  %i.fu = load <4 x i16>, ptr %i.ft, align 2, !tbaa !175
  %i.fv = uitofp <4 x i16> %i.fu to <4 x float>
  %i.fw = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.fv, splat (float f0x37800000)
  store <4 x float> %i.fw, ptr %i.fo, align 4, !tbaa !12
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fz = load <2 x i16>, ptr %i.fx, align 2, !tbaa !175
  %i.ga = uitofp <2 x i16> %i.fz to <2 x float>
  %i.gb = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.ga, splat (float f0x37800000)
  store <2 x float> %i.gb, ptr %i.fy, align 4, !tbaa !12
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ft, i64 12
  %i.gd = load i16, ptr %i.gc, align 2, !tbaa !175
  %i.ge = uitofp i16 %i.gd to float
  %i.gf = fmul reassoc nnan nsz arcp contract afn float %i.ge, f0x37800000
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  store float %i.gf, ptr %i.gg, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond.not, label %bb.n, label %dt_draw_curve_calc_values.exit
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define void @init_pipe(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((16, 24)) %2) local_unnamed_addr #13 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(304) ptr @malloc(i64 noundef 304) #27 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !73  ; 84 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.a, ptr %i.d, align 16, !tbaa !87
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 228
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.h = tail call noalias dereferenceable_or_null(200) ptr @malloc(i64 noundef 200) #27 ; 21 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 184
  store i32 65536, ptr %i.i, align 8, !tbaa !172
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 188
  store i32 65536, ptr %i.j, align 4, !tbaa !173
  %i.k = tail call noalias dereferenceable_or_null(131072) ptr @malloc(i64 noundef 131072) #27
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 192
  store ptr %i.k, ptr %i.l, align 8, !tbaa !174
  store i32 1, ptr %i.h, align 8, !tbaa !176
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.n, align 4, !tbaa !12
  store ptr %i.h, ptr %i.g, align 8, !tbaa !164
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.p = load float, ptr %i.f, align 4, !tbaa !12
  %i.q = load float, ptr %i.e, align 4, !tbaa !12
  store float %i.p, ptr %i.o, align 8, !tbaa !166
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  store float %i.q, ptr %i.r, align 4, !tbaa !167
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.t = load float, ptr %i.s, align 4, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  %i.v = load float, ptr %i.u, align 4, !tbaa !12
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store float %i.t, ptr %i.w, align 8, !tbaa !166
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  store float %i.v, ptr %i.x, align 4, !tbaa !167
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  %i.z = load float, ptr %i.y, align 4, !tbaa !12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 236
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !12
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store float %i.z, ptr %i.ac, align 8, !tbaa !166
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  store float %i.ab, ptr %i.ad, align 4, !tbaa !167
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.af = load float, ptr %i.ae, align 4, !tbaa !12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !12
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store float %i.af, ptr %i.ai, align 8, !tbaa !166
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  store float %i.ah, ptr %i.aj, align 4, !tbaa !167
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  %i.al = load float, ptr %i.ak, align 4, !tbaa !12
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 244
  %i.an = load float, ptr %i.am, align 4, !tbaa !12
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store float %i.al, ptr %i.ao, align 8, !tbaa !166
end_hunk_1
begin_hunk_2_@gui_changed:bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.ab = load ptr, ptr %i.aa, align 16, !tbaa !184
  tail call void @gtk_widget_set_visible(ptr noundef %i.ab, i32 noundef 0) #18
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !181
  tail call void @gtk_widget_hide(ptr noundef %i.ad) #18
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !180
  tail call void @gtk_widget_hide(ptr noundef %i.af) #18
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %i.ah = load ptr, ptr %i.ag, align 16, !tbaa !179
  tail call void @gtk_widget_show_all(ptr noundef %i.ah) #18
  br label %bb.i

bb.g:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !181
  tail call void @gtk_widget_hide(ptr noundef %i.aj) #18
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !180
  tail call void @gtk_widget_hide(ptr noundef %i.al) #18
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %i.an = load ptr, ptr %i.am, align 16, !tbaa !179
  tail call void @gtk_widget_show_all(ptr noundef %i.an) #18
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %i.ap = load ptr, ptr %i.ao, align 16, !tbaa !179
  tail call void @gtk_widget_hide(ptr noundef %i.ap) #18
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !181
  tail call void @gtk_widget_hide(ptr noundef %i.ar) #18
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !180
  tail call void @gtk_widget_show_all(ptr noundef %i.at) #18
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  br i1 %.not, label %.critedge, label %.thread

.thread:                                          ; preds = %bb.b, %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !185
  %i.aw = icmp eq ptr %1, %i.av
  br i1 %i.aw, label %bb.j, label %.thread97

bb.j:                                             ; preds = %.thread
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !75
  %i.az = icmp eq i32 %i.ay, 0
  %spec.select102 = select i1 %i.az, i32 0, i32 4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 676
  store i32 %spec.select102, ptr %i.ba, align 4, !tbaa !156
  br i1 %.not, label %bb.m, label %.thread97

.thread97:                                        ; preds = %.thread, %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.bc = load ptr, ptr %i.bb, align 16, !tbaa !178
  %i.bd = icmp eq ptr %1, %i.bc
  br i1 %i.bd, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.thread97
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !185
  %i.bg = icmp eq ptr %1, %i.bf
  br i1 %i.bg, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 2288
  %i.bi = load ptr, ptr %i.bh, align 16, !tbaa !155
  %i.bj = icmp eq ptr %1, %i.bi
  br i1 %i.bj, label %bb.m, label %.thread98

.critedge:                                        ; preds = %bb.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !75
  %i.bm = icmp eq i32 %i.bl, 0
  %spec.select102.c = select i1 %i.bm, i32 0, i32 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 676
  store i32 %spec.select102.c, ptr %i.bn, align 4, !tbaa !156
  br label %bb.m

bb.m:                                             ; preds = %.critedge, %bb.l, %bb.k, %.thread97, %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 404
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !72
  %.not93 = icmp eq i32 %i.bp, 0
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 408 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !75 ; 2 uses
  %i.bs = icmp eq i32 %i.br, 1
  %or.cond = select i1 %.not93, i1 %i.bs, i1 false
  br i1 %or.cond, label %bb.n, label %._crit_edge

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.bq, align 4, !tbaa !75
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.m, %bb.n
  %i.bt = phi i32 [ 0, %bb.n ], [ %i.br, %bb.m ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  %i.bv = load ptr, ptr %i.bu, align 16, !tbaa !158
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  %i.bx = icmp eq i32 %i.bt, 0
  %i.by = zext i1 %i.bx to i32
  tail call void @gtk_widget_set_visible(ptr noundef %i.bv, i32 noundef %i.by) #18
  %i.bz = getelementptr inbounds nuw i8, ptr %i.e, i64 216
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !157
  %i.cb = load i32, ptr %i.bw, align 4, !tbaa !75
  %i.cc = icmp eq i32 %i.cb, 1
  %i.cd = zext i1 %i.cc to i32
  tail call void @gtk_widget_set_visible(ptr noundef %i.ca, i32 noundef %i.cd) #18
  br i1 %.not, label %bb.p, label %.thread98

.thread98:                                        ; preds = %bb.l, %._crit_edge
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.cf = load ptr, ptr %i.ce, align 16, !tbaa !186
  %i.cg = icmp eq ptr %1, %i.cf
  br i1 %i.cg, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.thread98
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !152
  %i.cj = icmp eq ptr %1, %i.ci
  br i1 %i.cj, label %bb.p, label %.thread99

bb.p:                                             ; preds = %bb.o, %.thread98, %._crit_edge
  %i.ck = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.cl = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !12
  %i.cn = load float, ptr %i.ck, align 4, !tbaa !12
  %i.co = fcmp reassoc nsz arcp contract afn oeq float %i.cn, -1.000000e+00
  br i1 %i.co, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cp = load ptr, ptr %i.e, align 16, !tbaa !147
  tail call void @dt_bauhaus_combobox_set(ptr noundef %i.cp, i32 noundef 0) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 412
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !80
  call fastcc void @dt_iop_denoiseprofile_get_auto_profile(ptr dead_on_unwind noalias writable align 16 %3, ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %i.a, i64 noundef 512, ptr noundef null, i32 noundef %i.cr)
  %i.cs = load ptr, ptr %i.e, align 16, !tbaa !147
  %i.ct = call i32 @dt_bauhaus_combobox_set_entry_label(ptr noundef %i.cs, i32 noundef 0, ptr noundef nonnull %i.a) #18 ; 0 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0 = phi nsz float [ %i.cv, %bb.q ], [ %i.cm, %bb.p ]
  %i.cw = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !71
  %.off = add i32 %i.cx, -3
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cy = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !163
  %i.da = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !182
  %i.dc = fmul reassoc nsz arcp contract afn float %i.cz, %.0 ; 4 uses
  %i.dd = fmul reassoc nsz arcp contract afn float %i.dc, 3.000000e+05
  %reass.add.i = fadd reassoc nsz arcp contract afn float %i.dd, 1.500000e+04
  %reass.mul.i = fmul reassoc nsz arcp contract afn float %reass.add.i, %i.dc
  %i.de = fadd reassoc nsz arcp contract afn float %reass.mul.i, 1.000000e+00
  %i.df = fptoui float %i.de to i32
  %spec.select.i = call range(i32 0, 9) i32 @llvm.umin.i32(i32 %i.df, i32 8)
  %i.dg = uitofp reassoc nsz arcp contract afn nneg i32 %spec.select.i to float
  call void @dt_bauhaus_slider_set(ptr noundef %i.db, float noundef %i.dg) #18
  %i.dh = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.di = load ptr, ptr %i.dh, align 16, !tbaa !184
  %i.dj = fmul reassoc nsz arcp contract afn float %i.dc, 3.000000e+03 ; 2 uses
  %i.dk = fcmp reassoc nsz arcp contract afn olt float %i.dj, 1.000000e+00
  %i.dl = select reassoc nsz arcp contract afn i1 %i.dk, float %i.dj, float 1.000000e+00
  call void @dt_bauhaus_slider_set(ptr noundef %i.di, float noundef %i.dl) #18
  %i.dm = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.dn = load ptr, ptr %i.dm, align 16, !tbaa !187
  %i.do = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.dc)
  %i.dp = fpext reassoc nsz arcp contract afn float %i.do to double ; 2 uses
  %i.dq = fmul reassoc nsz arcp contract afn double %i.dp, 1.000000e-01
  %i.dr = fsub reassoc nsz arcp contract afn double f0x3FB99999A0000000, %i.dq ; 3 uses
  %i.ds = fcmp reassoc nsz arcp contract afn ule double %i.dr, f0x3FE6666660000000 ; 2 uses
  %i.dt = fcmp reassoc nsz arcp contract afn olt double %i.dr, f0x3FFCCCCCC0000000
  %spec.select.i96 = or i1 %i.ds, %i.dt
  %spec.select45.i = select i1 %i.ds, double f0x3FE6666660000000, double %i.dr
  %spec.select4.i = fptrunc double %spec.select45.i to float
  %i.du = select i1 %spec.select.i96, float %spec.select4.i, float 1.800000e+00
  call void @dt_bauhaus_slider_set(ptr noundef %i.dn, float noundef %i.du) #18
  %i.dv = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !188
  %i.dx = fmul reassoc nsz arcp contract afn double %i.dp, 5.000000e-01
  %i.dy = fadd reassoc nsz arcp contract afn double %i.dx, 5.000000e+00 ; 2 uses
  %i.dz = fcmp reassoc nsz arcp contract afn ogt double %i.dy, 0.000000e+00
  %i.ea = fptrunc reassoc nsz arcp contract afn double %i.dy to float
  %.neg.i = fneg reassoc nsz arcp contract afn float %i.ea
  %i.eb = select reassoc nsz arcp contract afn i1 %i.dz, float %.neg.i, float -0.000000e+00
  call void @dt_bauhaus_slider_set(ptr noundef %i.dw, float noundef %i.eb) #18
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  br i1 %.not, label %bb.v, label %.thread99

.thread99:                                        ; preds = %bb.o, %bb.t
  %i.ec = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ed = load ptr, ptr %i.ec, align 16, !tbaa !178
  %i.ee = icmp eq ptr %1, %i.ed
  br i1 %i.ee, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.thread99
  %i.ef = getelementptr inbounds nuw i8, ptr %i.e, i64 2288
  %i.eg = load ptr, ptr %i.ef, align 16, !tbaa !155
  %i.eh = icmp eq ptr %1, %i.eg
  br i1 %i.eh, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u, %.thread99, %bb.t
  %i.ei = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !71 ; 3 uses
  %i.ek = icmp eq i32 %i.ej, 4
  %i.el = add i32 %i.ej, -3
  %spec.select = icmp ult i32 %i.el, 2            ; 2 uses
  %i.em = zext i1 %spec.select to i32
  %i.en = icmp eq i32 %i.ej, 1
  %i.eo = or i1 %i.en, %i.ek
  %i.ep = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.eq = load ptr, ptr %i.ep, align 16, !tbaa !186
  call void @gtk_widget_set_visible(ptr noundef %i.eq, i32 noundef %i.em) #18
  %i.er = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !185
  %i.et = getelementptr inbounds nuw i8, ptr %i.c, i64 404 ; 3 uses
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !72
  %i.ev = icmp ne i32 %i.eu, 0
  %i.ew = and i1 %i.eo, %i.ev
  %i.ex = zext i1 %i.ew to i32
  call void @gtk_widget_set_visible(ptr noundef %i.es, i32 noundef %i.ex) #18
  %i.ey = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.ez = load ptr, ptr %i.ey, align 16, !tbaa !187
  %i.fa = load i32, ptr %i.et, align 4, !tbaa !72
  %.not94 = icmp eq i32 %i.fa, 0
  %i.fb = xor i1 %spec.select, true
  %i.fc = zext i1 %i.fb to i32                    ; 2 uses
  %i.fd = select i1 %.not94, i32 0, i32 %i.fc
  call void @gtk_widget_set_visible(ptr noundef %i.ez, i32 noundef %i.fd) #18
  %i.fe = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !188
  %i.fg = load i32, ptr %i.et, align 4, !tbaa !72
  %.not95 = icmp eq i32 %i.fg, 0
  %i.fh = select i1 %.not95, i32 0, i32 %i.fc
  call void @gtk_widget_set_visible(ptr noundef %i.ff, i32 noundef %i.fh) #18
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  ret void
}

declare void @gtk_widget_hide(ptr noundef) local_unnamed_addr #5

declare void @gtk_widget_show_all(ptr noundef) local_unnamed_addr #5

declare void @gtk_widget_set_visible(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @dt_bauhaus_combobox_set_entry_label(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @dt_bauhaus_slider_set(ptr noundef, float noundef) local_unnamed_addr #5

declare void @gtk_toggle_button_set_active(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @gtk_notebook_set_current_page(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @gui_reset(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !138 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !150  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 408
  %i.f = load i32, ptr %i.e, align 4, !tbaa !75
  %i.g = icmp eq i32 %i.f, 1                      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 676
  %. = select i1 %i.g, i32 4, i32 0
  %.16 = select i1 %i.g, i64 216, i64 208
  store i32 %., ptr %i.h, align 4, !tbaa !156
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %.16
  %.sink = load ptr, ptr %i.i, align 8, !tbaa !189
  tail call void @gtk_notebook_set_current_page(ptr noundef %.sink, i32 noundef 0) #18
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 2280
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !153
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 400
  %i.m = load i32, ptr %i.l, align 4, !tbaa !154
  %.not = icmp eq i32 %i.m, 0
  %i.n = zext i1 %.not to i32
  tail call void @gtk_widget_set_visible(ptr noundef %i.k, i32 noundef %i.n) #18
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 2288
  %i.p = load ptr, ptr %i.o, align 16, !tbaa !155
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 404
  %i.r = load i32, ptr %i.q, align 4, !tbaa !72
  %.not13 = icmp eq i32 %i.r, 0
  %i.s = zext i1 %.not13 to i32
  tail call void @gtk_widget_set_visible(ptr noundef %i.p, i32 noundef %i.s) #18
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_init(ptr noundef initializes((704, 712), (824, 832)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 2 uses
  %i.b = alloca [1 x ptr], align 8                ; 2 uses
  %i.c = alloca [4 x ptr], align 16               ; 4 uses
  %i.d = alloca [5 x ptr], align 8                ; 6 uses
  %i.e = alloca [3 x ptr], align 8                ; 4 uses
  %i.f = alloca [3 x ptr], align 8                ; 4 uses
  %i.g = alloca [3 x ptr], align 8                ; 4 uses
  %i.h = alloca [2 x ptr], align 8                ; 3 uses
  %i.i = alloca [3 x ptr], align 16               ; 3 uses
  %i.j = alloca [2 x ptr], align 8                ; 3 uses
  %i.k = tail call ptr @dt_alloc_aligned(i64 noundef 2304) #18 ; 39 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_iop_gui_alloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(2304) %i.k, i8 0, i64 2304, i1 false)
  br label %_iop_gui_alloc.exit

_iop_gui_alloc.exit:                              ; preds = %bb.a, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %i.k, ptr %i.l, align 16, !tbaa !138
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.n = load ptr, ptr %i.m, align 16, !tbaa !73  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 160
  store ptr null, ptr %i.o, align 16, !tbaa !148
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 676 ; 2 uses
  store i32 0, ptr %i.p, align 4, !tbaa !156
  %i.q = tail call ptr @gtk_box_new(i32 noundef 1, i32 noundef 0) #18
  store ptr inttoptr (i64 -1 to ptr), ptr %i.a, align 8, !tbaa !78
  %i.r = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.23, i32 noundef 3584, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.q, ptr noundef nonnull %i.a) #18 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 5 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !349
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 168 ; 2 uses
  store ptr %i.r, ptr %i.t, align 8, !tbaa !181
  %i.u = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.24) #18 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 3 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !182
  call void @dt_bauhaus_slider_set_soft_range(ptr noundef %i.u, float noundef 0.000000e+00, float noundef 8.000000e+00) #18
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !182
  call void @dt_bauhaus_slider_set_digits(ptr noundef %i.w, i32 noundef 0) #18
  %i.x = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.25) #18 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  store ptr %i.x, ptr %i.y, align 16, !tbaa !183
  call void @dt_bauhaus_slider_set_digits(ptr noundef %i.x, i32 noundef 0) #18
  %i.z = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.26) #18 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 64 ; 2 uses
  store ptr %i.z, ptr %i.aa, align 16, !tbaa !184
  call void @dt_bauhaus_slider_set_soft_max(ptr noundef %i.z, float noundef 1.000000e+00) #18
  %i.ab = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.27) #18 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 72 ; 2 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !350
  call void @dt_bauhaus_slider_set_soft_max(ptr noundef %i.ab, float noundef 1.000000e+00) #18
  %i.ad = call ptr @gtk_box_new(i32 noundef 1, i32 noundef 0) #18
  store ptr inttoptr (i64 -1 to ptr), ptr %i.b, align 8, !tbaa !78
  %i.ae = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.23, i32 noundef 3596, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.ad, ptr noundef nonnull %i.b) #18 ; 2 uses
  store ptr %i.ae, ptr %i.s, align 8, !tbaa !349
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 176 ; 2 uses
  store ptr %i.ae, ptr %i.af, align 16, !tbaa !179
  %i.ag = call ptr @dt_bauhaus_combobox_from_params(ptr noundef %0, ptr noundef nonnull @.str.28) #18
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 88 ; 2 uses
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !185
  %i.ai = call ptr @gtk_notebook_new() #18        ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 208 ; 7 uses
  store ptr %i.ai, ptr %i.aj, align 16, !tbaa !158
  %i.ak = call ptr @dt_action_define_iop(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.29, ptr noundef %i.ai, ptr noundef nonnull @dt_action_def_tabs_rgb) #18 ; 0 uses
  %i.al = load ptr, ptr %i.aj, align 16, !tbaa !158
  %i.am = call ptr @dt_ui_notebook_page(ptr noundef %i.al, ptr noundef nonnull @.str.30, ptr noundef null) #18 ; 0 uses
  %i.an = load ptr, ptr %i.aj, align 16, !tbaa !158
  %i.ao = call ptr @dt_ui_notebook_page(ptr noundef %i.an, ptr noundef nonnull @.str.31, ptr noundef null) #18 ; 0 uses
  %i.ap = load ptr, ptr %i.aj, align 16, !tbaa !158
  %i.aq = call ptr @dt_ui_notebook_page(ptr noundef %i.ap, ptr noundef nonnull @.str.32, ptr noundef null) #18 ; 0 uses
  %i.ar = load ptr, ptr %i.aj, align 16, !tbaa !158
  %i.as = call ptr @dt_ui_notebook_page(ptr noundef %i.ar, ptr noundef nonnull @.str.33, ptr noundef null) #18 ; 0 uses
  %i.at = load ptr, ptr %i.aj, align 16, !tbaa !158
  %i.au = call i64 @g_signal_connect_data(ptr noundef %i.at, ptr noundef nonnull @.str.34, ptr noundef nonnull @denoiseprofile_tab_switch, ptr noundef %0, ptr noundef null, i32 noundef 0) #18 ; 0 uses
  %i.av = call ptr @gtk_notebook_new() #18        ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 216 ; 3 uses
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !157
  %i.ax = call ptr @dt_ui_notebook_page(ptr noundef %i.av, ptr noundef nonnull @.str.35, ptr noundef null) #18 ; 0 uses
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !157
  %i.az = call ptr @dt_ui_notebook_page(ptr noundef %i.ay, ptr noundef nonnull @.str.36, ptr noundef null) #18 ; 0 uses
  %i.ba = load ptr, ptr %i.aw, align 8, !tbaa !157
  %i.bb = call i64 @g_signal_connect_data(ptr noundef %i.ba, ptr noundef nonnull @.str.34, ptr noundef nonnull @denoiseprofile_tab_switch, ptr noundef %0, ptr noundef null, i32 noundef 0) #18 ; 0 uses
  %i.bc = load i32, ptr %i.p, align 4, !tbaa !156
  %i.bd = call noalias dereferenceable_or_null(200) ptr @malloc(i64 noundef 200) #27 ; 25 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 184
  store i32 65536, ptr %i.be, align 8, !tbaa !172
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 188
  store i32 65536, ptr %i.bf, align 4, !tbaa !173
  %i.bg = call noalias dereferenceable_or_null(131072) ptr @malloc(i64 noundef 131072) #27
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 192
end_hunk_2

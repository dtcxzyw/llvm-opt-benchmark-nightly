begin_hunk_0_@ff_tx_init_tab_65536_float:vector.ph
  %i.b = uitofp nneg <4 x i32> %vec.ind to <4 x double>
  %i.c = fmul nnan nsz <4 x double> %i.b, splat (double f0x3F1921FB54442D18)
  %i.d = tail call nsz <4 x double> @llvm.cos.v4f64(<4 x double> %i.c)
  %i.e = fptrunc nsz <4 x double> %i.d to <4 x float>
  store <4 x float> %i.e, ptr %next.gep, align 16, !tbaa !30
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 4)
  %i.f = icmp eq i64 %index.next, 16384
  br i1 %i.f, label %middle.block, label %vector.body, !llvm.loop !47

middle.block:                                     ; preds = %vector.body
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_65536_float, i64 65536), align 16, !tbaa !30
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_init_tab_131072_float() #5 {
vector.ph:
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.a = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr @ff_tx_tab_131072_float, i64 %i.a
  %i.b = uitofp nneg <4 x i32> %vec.ind to <4 x double>
  %i.c = fmul nnan nsz <4 x double> %i.b, splat (double f0x3F0921FB54442D18)
  %i.d = tail call nsz <4 x double> @llvm.cos.v4f64(<4 x double> %i.c)
  %i.e = fptrunc nsz <4 x double> %i.d to <4 x float>
  store <4 x float> %i.e, ptr %next.gep, align 16, !tbaa !30
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 4)
  %i.f = icmp eq i64 %index.next, 32768
  br i1 %i.f, label %middle.block, label %vector.body, !llvm.loop !48

middle.block:                                     ; preds = %vector.body
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_131072_float, i64 131072), align 16, !tbaa !30
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_init_tab_53_float() #6 {
bb.a:
  store <4 x float> <float 3.090170e-01, float 3.090170e-01, float 8.090170e-01, float 8.090170e-01>, ptr @ff_tx_tab_53_float, align 16, !tbaa !30
  store <4 x float> <float f0x3F737871, float f0x3F737871, float f0x3F167918, float f0x3F167918>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 16), align 16, !tbaa !30
  store <4 x float> <float f0x3F5DB3D7, float f0x3F5DB3D7, float 5.000000e-01, float -5.000000e-01>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 32), align 16, !tbaa !30
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_init_tab_9_float() #6 {
bb.a:
  store <4 x float> <float -5.000000e-01, float f0x3F5DB3D7, float f0x3F441B7D, float f0x3F248DBB>, ptr @ff_tx_tab_9_float, align 16, !tbaa !30
  store <4 x float> <float f0x3F7C1C5C, float f0x3E31D0D4, float f0x3F708FB2, float f0xBEAF1D42>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_9_float, i64 16), align 16, !tbaa !30
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_init_tab_7_float() #6 {
bb.a:
  store <4 x float> <float f0x3F1F9D07, float f0x3F48261C, float f0x3E63DC87, float f0x3F7994E0>, ptr @ff_tx_tab_7_float, align 16, !tbaa !30
  store <2 x float> <float f0x3F66A5E5, float f0x3EDE2602>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_float, i64 16), align 16, !tbaa !30
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @ff_tx_fft2_ns_float_c(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1, ptr nofree noundef readonly captures(none) %2, i64 %3) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load <2 x float>, ptr %2, align 4, !tbaa !30
  %i.c = shufflevector <2 x float> %i.b, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.d = load <2 x float>, ptr %i.a, align 4, !tbaa !30
  %i.e = shufflevector <2 x float> %i.d, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.f = fadd nsz <4 x float> %i.c, %i.e
  %i.g = fsub nsz <4 x float> %i.c, %i.e
  %i.h = shufflevector <4 x float> %i.f, <4 x float> %i.g, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.h, ptr %1, align 4, !tbaa !30
  ret void
}

; Function Attrs: cold nounwind optsize uwtable
define internal i32 @ff_tx_fft_sr_codelet_init_float_c(ptr noundef %0, ptr nofree readnone captures(none) %1, i64 %2, ptr noundef %3, i32 noundef %4, i32 %5, ptr nofree readnone captures(none) %6) #0 {
bb.a:
  tail call void @ff_tx_init_tabs_float(i32 noundef %4) #17
  %i.a = tail call i32 @ff_tx_gen_ptwo_revtab(ptr noundef %0, ptr noundef %3) #16
  ret i32 %i.a
}

declare i32 @ff_tx_gen_ptwo_revtab(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @ff_tx_fft4_ns_float_c(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, i64 %3) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.e = load <2 x float>, ptr %2, align 4, !tbaa !30
  %i.f = shufflevector <2 x float> %i.e, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.g = load <2 x float>, ptr %i.a, align 4, !tbaa !30
  %i.h = shufflevector <2 x float> %i.g, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.i = fadd nsz <4 x float> %i.f, %i.h
  %i.j = fsub nsz <4 x float> %i.f, %i.h
  %i.k = shufflevector <4 x float> %i.i, <4 x float> %i.j, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.l = load <2 x float>, ptr %i.b, align 4, !tbaa !30
  %i.m = load <3 x float>, ptr %i.d, align 4, !tbaa !30 ; 2 uses
  %i.n = shufflevector <3 x float> %i.m, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1> ; 2 uses
  %i.o = shufflevector <3 x float> %i.m, <3 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 2, i32 poison>
  %i.p = shufflevector <2 x float> %i.l, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.q = shufflevector <4 x float> %i.p, <4 x float> %i.o, <4 x i32> <i32 0, i32 1, i32 6, i32 0> ; 2 uses
  %i.r = fadd nsz <4 x float> %i.n, %i.q
  %i.s = fsub nsz <4 x float> %i.n, %i.q
  %i.t = shufflevector <4 x float> %i.r, <4 x float> %i.s, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.u = fsub nsz <4 x float> %i.k, %i.t
  store <4 x float> %i.u, ptr %i.c, align 4, !tbaa !30
  %i.v = fadd nsz <4 x float> %i.k, %i.t
  store <4 x float> %i.v, ptr %1, align 4, !tbaa !30
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_fft8_ns_float_c(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 64)) %1, ptr nofree noundef readonly captures(none) %2, i64 %3) #8 {
bb.a:
  %i.a = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_8_float, i64 4), align 4, !tbaa !30 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.p = fneg nsz float %i.a
  %i.q = load <2 x float>, ptr %2, align 4, !tbaa !30
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.s = load <2 x float>, ptr %i.b, align 4, !tbaa !30
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.u = fadd nsz <4 x float> %i.r, %i.t          ; 2 uses
  %i.v = fsub nsz <4 x float> %i.r, %i.t
  %i.w = shufflevector <4 x float> %i.u, <4 x float> %i.v, <4 x i32> <i32 0, i32 5, i32 6, i32 3> ; 3 uses
  %i.x = load <4 x float>, ptr %i.c, align 4, !tbaa !30 ; 3 uses
  %i.y = shufflevector <4 x float> %i.x, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.z = fadd nsz <4 x float> %i.x, %i.y          ; 2 uses
  %i.aa = fsub nsz <4 x float> %i.x, %i.y
  %i.ab = shufflevector <4 x float> %i.z, <4 x float> %i.aa, <4 x i32> <i32 3, i32 5, i32 6, i32 0> ; 3 uses
  %i.ac = fadd nsz <4 x float> %i.w, %i.ab        ; 3 uses
  %i.ad = fsub nsz <4 x float> %i.w, %i.ab        ; 2 uses
  %i.ae = shufflevector <4 x float> %i.ac, <4 x float> %i.ad, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.af = shufflevector <4 x float> %i.u, <4 x float> %i.ac, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ag = shufflevector <4 x float> %i.z, <4 x float> <float poison, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.ah = fadd nsz <4 x float> %i.af, %i.ag       ; 3 uses
  store <4 x float> %i.ah, ptr %1, align 4, !tbaa !30
  %i.ai = insertelement <2 x float> poison, float %i.a, i64 0 ; 2 uses
  %i.aj = insertelement <2 x float> %i.ai, float %i.p, i64 1
  %i.ak = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer
  %i.al = shufflevector <4 x float> %i.ae, <4 x float> %i.w, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.am = shufflevector <4 x float> %i.ab, <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 0, i32 1, i32 2>
  %i.an = fsub nsz <4 x float> %i.al, %i.am       ; 4 uses
  %i.ao = shufflevector <4 x float> %i.ad, <4 x float> %i.an, <4 x i32> <i32 3, i32 5, i32 6, i32 7>
  store <4 x float> %i.ao, ptr %i.d, align 4, !tbaa !30
  %i.ap = load <2 x float>, ptr %i.h, align 4, !tbaa !30 ; 3 uses
  %i.aq = load <2 x float>, ptr %i.i, align 4, !tbaa !30 ; 3 uses
  %foldExtExtBinop = fsub nsz <2 x float> %i.ap, %i.aq ; 2 uses
  %i.ar = extractelement <2 x float> %foldExtExtBinop, i64 0
  store float %i.ar, ptr %i.j, align 4, !tbaa !49
  %i.as = fadd nsz <2 x float> %i.ap, %i.aq       ; 2 uses
  %foldExtExtBinop114 = fsub nsz <2 x float> %i.ap, %i.aq
  %i.at = extractelement <2 x float> %foldExtExtBinop114, i64 1 ; 2 uses
  store float %i.at, ptr %i.k, align 4, !tbaa !51
  %i.au = load <2 x float>, ptr %i.l, align 4, !tbaa !30 ; 2 uses
  %i.av = load <2 x float>, ptr %i.m, align 4, !tbaa !30 ; 2 uses
  %i.aw = fadd nsz <2 x float> %i.au, %i.av       ; 2 uses
  %i.ax = fsub nsz <2 x float> %i.au, %i.av       ; 2 uses
  %i.ay = fmul nsz float %i.a, %i.at
  %i.az = extractelement <2 x float> %i.ax, i64 1
  %i.ba = fmul nsz float %i.a, %i.az              ; 2 uses
  %i.bb = fneg nsz float %i.ba
  %i.bc = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bd = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bf = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> %i.aj, <2 x float> %i.be) ; 3 uses
  %i.bg = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bh = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.bi = insertelement <2 x float> %i.bh, float %i.ba, i64 1
  %i.bj = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bg, <2 x float> %i.ak, <2 x float> %i.bi) ; 3 uses
  %i.bk = shufflevector <2 x float> %i.bf, <2 x float> %i.bj, <4 x i32> <i32 poison, i32 poison, i32 1, i32 2>
  %i.bl = shufflevector <2 x float> %i.as, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bm = shufflevector <4 x float> %i.bk, <4 x float> %i.bl, <4 x i32> <i32 5, i32 poison, i32 2, i32 3>
  %i.bn = shufflevector <2 x float> %i.aw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bo = shufflevector <4 x float> %i.bm, <4 x float> %i.bn, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.bp = shufflevector <2 x float> %i.bj, <2 x float> %i.bf, <4 x i32> <i32 poison, i32 poison, i32 1, i32 2>
  %i.bq = shufflevector <4 x float> %i.bp, <4 x float> %i.bn, <4 x i32> <i32 5, i32 poison, i32 2, i32 3>
  %i.br = shufflevector <4 x float> %i.bq, <4 x float> %i.bl, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.bs = fsub nsz <4 x float> %i.bo, %i.br       ; 4 uses
  %4 = fadd nsz <2 x float> %i.as, %i.aw
  %5 = fadd nsz <2 x float> %i.bf, %i.bj
  %6 = shufflevector <2 x float> %4, <2 x float> %5, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 3 uses
  %foldExtExtBinop116 = fadd nsz <4 x float> %i.ah, %6
  %i.bt = extractelement <4 x float> %foldExtExtBinop116, i64 0
  store float %i.bt, ptr %1, align 4, !tbaa !49
  %foldExtExtBinop118 = fadd nsz <4 x float> %i.an, %i.bs
  %i.bu = extractelement <4 x float> %foldExtExtBinop118, i64 3
  store float %i.bu, ptr %i.e, align 4, !tbaa !51
  %i.bv = fsub nsz <4 x float> %i.an, %i.bs
  store <4 x float> %i.bv, ptr %i.o, align 4, !tbaa !30
  %i.bw = shufflevector <4 x float> %i.an, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.bx = shufflevector <4 x float> %i.bs, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.by = fadd nsz <2 x float> %i.bw, %i.bx
  store <2 x float> %i.by, ptr %i.f, align 4, !tbaa !30
  %i.bz = shufflevector <4 x float> %i.ah, <4 x float> %i.ac, <4 x i32> <i32 0, i32 4, i32 5, i32 6>
  %i.ca = fsub nsz <4 x float> %i.bz, %6
  store <4 x float> %i.ca, ptr %i.n, align 4, !tbaa !30
  %i.cb = shufflevector <4 x float> %6, <4 x float> %i.bs, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  %i.cc = fadd nsz <4 x float> %i.ae, %i.cb
  store <4 x float> %i.cc, ptr %i.g, align 4, !tbaa !30
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_fft16_ns_float_c(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) initializes((0, 128)) %1, ptr nofree noundef readonly captures(none) %2, i64 %3) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 124 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.v = load <3 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_16_float, i64 4), align 4, !tbaa !30 ; 6 uses
  %i.w = shufflevector <3 x float> %i.v, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 2> ; 3 uses
  %i.x = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_16_float, i64 4), align 4, !tbaa !30
  tail call void @ff_tx_fft8_ns_float_c(ptr poison, ptr noundef %1, ptr noundef %2, i64 poison)
  %i.y = load <2 x float>, ptr %i.b, align 4, !tbaa !30
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.aa = load <2 x float>, ptr %i.c, align 4, !tbaa !30
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.ac = fadd nsz <4 x float> %i.z, %i.ab
  %i.ad = fsub nsz <4 x float> %i.z, %i.ab
  %i.ae = shufflevector <4 x float> %i.ac, <4 x float> %i.ad, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.af = load <2 x float>, ptr %i.d, align 4, !tbaa !30
  %i.ag = load <3 x float>, ptr %i.f, align 4, !tbaa !30 ; 2 uses
  %i.ah = shufflevector <3 x float> %i.ag, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1> ; 2 uses
  %i.ai = shufflevector <3 x float> %i.ag, <3 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 2, i32 poison>
  %i.aj = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ak = shufflevector <4 x float> %i.aj, <4 x float> %i.ai, <4 x i32> <i32 0, i32 1, i32 6, i32 0> ; 2 uses
  %i.al = fadd nsz <4 x float> %i.ah, %i.ak
  %i.am = fsub nsz <4 x float> %i.ah, %i.ak
  %i.an = shufflevector <4 x float> %i.al, <4 x float> %i.am, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.ao = fsub nsz <4 x float> %i.ae, %i.an       ; 2 uses
  store <4 x float> %i.ao, ptr %i.e, align 4, !tbaa !30
  %i.ap = fadd nsz <4 x float> %i.ae, %i.an       ; 5 uses
  store <4 x float> %i.ap, ptr %i.a, align 4, !tbaa !30
  %i.aq = load <2 x float>, ptr %i.l, align 4, !tbaa !30
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.as = load <2 x float>, ptr %i.m, align 4, !tbaa !30
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.au = fadd nsz <4 x float> %i.ar, %i.at
  %i.av = fsub nsz <4 x float> %i.ar, %i.at       ; 2 uses
  %i.aw = shufflevector <4 x float> %i.au, <4 x float> %i.av, <4 x i32> <i32 0, i32 5, i32 6, i32 3> ; 3 uses
  %i.ax = load <4 x float>, ptr %i.n, align 4, !tbaa !30 ; 3 uses
  %i.ay = shufflevector <4 x float> %i.ax, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.az = fadd nsz <4 x float> %i.ax, %i.ay
  %i.ba = fsub nsz <4 x float> %i.ax, %i.ay       ; 2 uses
  %i.bb = shufflevector <4 x float> %i.az, <4 x float> %i.ba, <4 x i32> <i32 0, i32 6, i32 5, i32 3> ; 3 uses
  %foldExtExtBinop = fadd nsz <4 x float> %i.aw, %i.bb ; 2 uses
  %i.bc = fsub nsz <4 x float> %i.aw, %i.bb       ; 4 uses
  %i.bd = extractelement <4 x float> %i.bc, i64 1
  store float %i.bd, ptr %i.p, align 4, !tbaa !51
  %i.be = extractelement <4 x float> %i.bc, i64 2
  store float %i.be, ptr %i.o, align 4, !tbaa !49
  %i.bf = shufflevector <4 x float> %i.av, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.bg = shufflevector <4 x float> %i.ba, <4 x float> poison, <2 x i32> <i32 2, i32 1>
  %i.bh = fadd nsz <2 x float> %i.bf, %i.bg       ; 2 uses
  %foldExtExtBinop213 = fadd nsz <4 x float> %i.aw, %i.bb ; 2 uses
  %i.bi = load float, ptr %i.e, align 4, !tbaa !49
  %shift = shufflevector <4 x float> %i.bc, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop215 = fmul nsz <4 x float> %i.w, %shift ; 2 uses
  %i.bj = extractelement <4 x float> %foldExtExtBinop215, i64 0
  %i.bk = fneg nsz float %i.bj
  %i.bl = load <2 x float>, ptr %i.g, align 4, !tbaa !30 ; 2 uses
  %i.bm = fneg nsz float %i.x                     ; 2 uses
  %i.bn = shufflevector <2 x float> %i.bl, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bo = shufflevector <4 x float> %i.ao, <4 x float> %i.bn, <4 x i32> <i32 1, i32 1, i32 5, i32 5>
  %i.bp = fmul nsz <4 x float> %i.w, %i.bo
  %i.bq = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.br = insertelement <2 x float> %i.bq, float %i.bi, i64 0
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.bt = shufflevector <3 x float> %i.v, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 0> ; 2 uses
  %i.bu = fneg nsz <4 x float> %i.w
  %i.bv = shufflevector <4 x float> %i.bt, <4 x float> %i.bu, <4 x i32> <i32 0, i32 4, i32 2, i32 poison>
  %i.bw = insertelement <4 x float> %i.bv, float %i.bm, i64 3
  %i.bx = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bs, <4 x float> %i.bw, <4 x float> %i.bp) ; 3 uses
  %i.by = load float, ptr %i.o, align 4, !tbaa !49
  %i.bz = load float, ptr %i.p, align 4, !tbaa !51 ; 2 uses
  %i.ca = fmul nsz float %i.bz, %i.bm
  %i.cb = extractelement <3 x float> %i.v, i64 2  ; 2 uses
  %i.cc = fmul nsz float %i.cb, %i.bz
  %i.cd = insertelement <4 x float> %i.bc, float %i.by, i64 1
  %i.ce = shufflevector <4 x float> %i.cd, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.cf = insertelement <4 x float> poison, float %i.bk, i64 0
  %i.cg = shufflevector <4 x float> %i.cf, <4 x float> %foldExtExtBinop215, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.ch = insertelement <4 x float> %i.cg, float %i.ca, i64 2
  %i.ci = insertelement <4 x float> %i.ch, float %i.cc, i64 3
  %i.cj = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ce, <4 x float> %i.bt, <4 x float> %i.ci) ; 3 uses
  %i.ck = load <4 x float>, ptr %i.t, align 4, !tbaa !30 ; 3 uses
  %i.cl = fadd nsz <4 x float> %i.bx, %i.cj       ; 3 uses
  %i.cm = load float, ptr %i.h, align 4, !tbaa !49
  %i.cn = load float, ptr %i.i, align 4, !tbaa !51
  %i.co = fneg nsz float %i.cb
  %i.cp = shufflevector <3 x float> %i.v, <3 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.cq = insertelement <2 x float> poison, float %i.cn, i64 0
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cs = fmul nsz <2 x float> %i.cp, %i.cr
  %i.ct = insertelement <2 x float> poison, float %i.cm, i64 0
  %i.cu = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cv = shufflevector <3 x float> %i.v, <3 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.cw = insertelement <2 x float> %i.cv, float %i.co, i64 1 ; 2 uses
  %i.cx = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cu, <2 x float> %i.cw, <2 x float> %i.cs) ; 3 uses
  %i.cy = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cz = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.da = fmul nsz <2 x float> %i.cy, %i.cz
  %i.db = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dc = shufflevector <3 x float> %i.v, <3 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.dd = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.db, <2 x float> %i.dc, <2 x float> %i.da) ; 3 uses
  %i.de = load <4 x float>, ptr %1, align 4, !tbaa !30 ; 3 uses
  %i.df = shufflevector <4 x float> %i.ap, <4 x float> %foldExtExtBinop213, <4 x i32> <i32 0, i32 7, i32 poison, i32 poison>
  %i.dg = shufflevector <2 x float> %i.cx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dh = shufflevector <4 x float> %i.df, <4 x float> %i.dg, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.di = shufflevector <4 x float> %foldExtExtBinop, <4 x float> %i.ap, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %i.dj = shufflevector <2 x float> %i.dd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dk = shufflevector <4 x float> %i.di, <4 x float> %i.dj, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dl = fadd nsz <4 x float> %i.dh, %i.dk       ; 3 uses
  %foldExtExtBinop217 = fsub nsz <4 x float> %i.de, %i.dl
  %i.dm = extractelement <4 x float> %foldExtExtBinop217, i64 0
  store float %i.dm, ptr %i.a, align 4, !tbaa !49
  %i.dn = load <4 x float>, ptr %i.s, align 4, !tbaa !30 ; 3 uses
  %i.do = shufflevector <2 x float> %i.cx, <2 x float> %i.dd, <4 x i32> <i32 poison, i32 poison, i32 1, i32 2>
  %i.dp = shufflevector <4 x float> %i.do, <4 x float> %i.ap, <4 x i32> <i32 5, i32 poison, i32 2, i32 3>
  %i.dq = shufflevector <4 x float> %i.dp, <4 x float> %foldExtExtBinop, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.dr = shufflevector <2 x float> %i.dd, <2 x float> %i.cx, <4 x i32> <i32 poison, i32 poison, i32 1, i32 2>
  %i.ds = shufflevector <4 x float> %i.dr, <4 x float> %foldExtExtBinop213, <4 x i32> <i32 7, i32 poison, i32 2, i32 3>
  %i.dt = shufflevector <4 x float> %i.ds, <4 x float> %i.ap, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.du = fsub nsz <4 x float> %i.dq, %i.dt       ; 3 uses
  %i.dv = fadd nsz <4 x float> %i.dn, %i.du
  store <4 x float> %i.dv, ptr %i.s, align 4, !tbaa !30
  %i.dw = shufflevector <4 x float> %i.de, <4 x float> %i.ck, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  %i.dx = shufflevector <4 x float> %i.dl, <4 x float> %i.cl, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  %i.dy = fsub nsz <4 x float> %i.dw, %i.dx
  store <4 x float> %i.dy, ptr %i.k, align 4, !tbaa !30
  %i.dz = fadd nsz <4 x float> %i.dl, %i.de
  store <4 x float> %i.dz, ptr %1, align 4, !tbaa !30
  %i.ea = load <4 x float>, ptr %i.u, align 4, !tbaa !30 ; 4 uses
  %i.eb = shufflevector <4 x float> %i.bx, <4 x float> %i.cj, <4 x i32> <i32 1, i32 4, i32 3, i32 6>
  %i.ec = shufflevector <4 x float> %i.cj, <4 x float> %i.bx, <4 x i32> <i32 1, i32 4, i32 3, i32 6>
  %i.ed = fsub nsz <4 x float> %i.eb, %i.ec       ; 4 uses
  %foldExtExtBinop219 = fsub nsz <4 x float> %i.ea, %i.ed
  %i.ee = extractelement <4 x float> %foldExtExtBinop219, i64 1
  store float %i.ee, ptr %i.q, align 4, !tbaa !51
  %i.ef = shufflevector <4 x float> %i.dn, <4 x float> %i.ea, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  %i.eg = shufflevector <4 x float> %i.du, <4 x float> %i.ed, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  %i.eh = fsub nsz <4 x float> %i.ef, %i.eg
  store <4 x float> %i.eh, ptr %i.r, align 4, !tbaa !30
  %i.ei = shufflevector <4 x float> %i.ea, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.ej = shufflevector <4 x float> %i.ed, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.ek = fsub nsz <2 x float> %i.ei, %i.ej
  store <2 x float> %i.ek, ptr %i.o, align 4, !tbaa !30
  %i.el = fadd nsz <4 x float> %i.ea, %i.ed
  store <4 x float> %i.el, ptr %i.u, align 4, !tbaa !30
  %i.em = shufflevector <4 x float> %i.ck, <4 x float> %i.dn, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  %i.en = shufflevector <4 x float> %i.cl, <4 x float> %i.du, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  %i.eo = fsub nsz <4 x float> %i.em, %i.en
  store <4 x float> %i.eo, ptr %i.j, align 4, !tbaa !30
  %i.ep = fadd nsz <4 x float> %i.ck, %i.cl
  store <4 x float> %i.ep, ptr %i.t, align 4, !tbaa !30
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_fft32_ns_float_c(ptr nofree readnone captures(none) %0, ptr noundef initializes((0, 128)) %1, ptr nofree noundef readonly captures(none) %2, i64 %3) #9 {
bb.a:
end_hunk_0

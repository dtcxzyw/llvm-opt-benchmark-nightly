inline.NumInlined: 21
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 32
begin_hunk_0_@ff_tx_init_tab_9_float:bb.a
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
  %i.bt = shufflevector <2 x float> %i.as, <2 x float> %i.bf, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bu = shufflevector <2 x float> %i.aw, <2 x float> %i.bj, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bv = fadd nsz <4 x float> %i.bt, %i.bu       ; 3 uses
  %foldExtExtBinop116 = fadd nsz <4 x float> %i.ah, %i.bv
  %i.bw = extractelement <4 x float> %foldExtExtBinop116, i64 0
  store float %i.bw, ptr %1, align 4, !tbaa !49
  %foldExtExtBinop118 = fadd nsz <4 x float> %i.an, %i.bs
  %i.bx = extractelement <4 x float> %foldExtExtBinop118, i64 3
  store float %i.bx, ptr %i.e, align 4, !tbaa !51
  %i.by = fsub nsz <4 x float> %i.an, %i.bs
  store <4 x float> %i.by, ptr %i.o, align 4, !tbaa !30
  %i.bz = shufflevector <4 x float> %i.an, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.ca = shufflevector <4 x float> %i.bs, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.cb = fadd nsz <2 x float> %i.bz, %i.ca
  store <2 x float> %i.cb, ptr %i.f, align 4, !tbaa !30
  %i.cc = shufflevector <4 x float> %i.ah, <4 x float> %i.ac, <4 x i32> <i32 0, i32 4, i32 5, i32 6>
  %i.cd = fsub nsz <4 x float> %i.cc, %i.bv
  store <4 x float> %i.cd, ptr %i.n, align 4, !tbaa !30
  %i.ce = shufflevector <4 x float> %i.bv, <4 x float> %i.bs, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  %i.cf = fadd nsz <4 x float> %i.ae, %i.ce
  store <4 x float> %i.cf, ptr %i.g, align 4, !tbaa !30
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
  %4 = fmul nsz float %i.bz, %i.bm
  %5 = extractelement <3 x float> %i.v, i64 2     ; 2 uses
  %6 = fmul nsz float %5, %i.bz
  %i.ca = insertelement <4 x float> %i.bc, float %i.by, i64 1
  %i.cb = shufflevector <4 x float> %i.ca, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.cc = insertelement <4 x float> poison, float %i.bk, i64 0
  %i.cd = shufflevector <4 x float> %i.cc, <4 x float> %foldExtExtBinop215, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %7 = insertelement <4 x float> %i.cd, float %4, i64 2
  %8 = insertelement <4 x float> %7, float %6, i64 3
  %i.ce = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cb, <4 x float> %i.bt, <4 x float> %8) ; 3 uses
  %i.cf = load <4 x float>, ptr %i.t, align 4, !tbaa !30 ; 3 uses
  %i.cg = fadd nsz <4 x float> %i.bx, %i.ce       ; 3 uses
  %i.ch = load float, ptr %i.h, align 4, !tbaa !49
  %i.ci = load float, ptr %i.i, align 4, !tbaa !51
  %9 = fneg nsz float %5
  %i.cj = shufflevector <3 x float> %i.v, <3 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.ck = insertelement <2 x float> poison, float %i.ci, i64 0
  %i.cl = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cm = fmul nsz <2 x float> %i.cj, %i.cl
  %i.cn = insertelement <2 x float> poison, float %i.ch, i64 0
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cp = shufflevector <3 x float> %i.v, <3 x float> poison, <2 x i32> <i32 0, i32 poison>
  %10 = insertelement <2 x float> %i.cp, float %9, i64 1 ; 2 uses
  %i.cq = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.co, <2 x float> %10, <2 x float> %i.cm) ; 3 uses
  %i.cr = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cs = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ct = fmul nsz <2 x float> %i.cr, %i.cs
  %i.cu = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %11 = shufflevector <3 x float> %i.v, <3 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.cv = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cu, <2 x float> %11, <2 x float> %i.ct) ; 3 uses
  %i.cw = load <4 x float>, ptr %1, align 4, !tbaa !30 ; 3 uses
  %i.cx = shufflevector <4 x float> %i.ap, <4 x float> %foldExtExtBinop213, <4 x i32> <i32 0, i32 7, i32 poison, i32 poison>
  %i.cy = shufflevector <2 x float> %i.cq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cz = shufflevector <4 x float> %i.cx, <4 x float> %i.cy, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.da = shufflevector <4 x float> %foldExtExtBinop, <4 x float> %i.ap, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %i.db = shufflevector <2 x float> %i.cv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dc = shufflevector <4 x float> %i.da, <4 x float> %i.db, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dd = fadd nsz <4 x float> %i.cz, %i.dc       ; 3 uses
  %foldExtExtBinop217 = fsub nsz <4 x float> %i.cw, %i.dd
  %i.de = extractelement <4 x float> %foldExtExtBinop217, i64 0
  store float %i.de, ptr %i.a, align 4, !tbaa !49
  %i.df = load <4 x float>, ptr %i.s, align 4, !tbaa !30 ; 3 uses
  %i.dg = shufflevector <2 x float> %i.cq, <2 x float> %i.cv, <4 x i32> <i32 poison, i32 poison, i32 1, i32 2>
  %i.dh = shufflevector <4 x float> %i.dg, <4 x float> %i.ap, <4 x i32> <i32 5, i32 poison, i32 2, i32 3>
  %i.di = shufflevector <4 x float> %i.dh, <4 x float> %foldExtExtBinop, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.dj = shufflevector <2 x float> %i.cv, <2 x float> %i.cq, <4 x i32> <i32 poison, i32 poison, i32 1, i32 2>
  %i.dk = shufflevector <4 x float> %i.dj, <4 x float> %foldExtExtBinop213, <4 x i32> <i32 7, i32 poison, i32 2, i32 3>
  %i.dl = shufflevector <4 x float> %i.dk, <4 x float> %i.ap, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.dm = fsub nsz <4 x float> %i.di, %i.dl       ; 3 uses
  %i.dn = fadd nsz <4 x float> %i.df, %i.dm
  store <4 x float> %i.dn, ptr %i.s, align 4, !tbaa !30
  %i.do = shufflevector <4 x float> %i.cw, <4 x float> %i.cf, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  %i.dp = shufflevector <4 x float> %i.dd, <4 x float> %i.cg, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  %i.dq = fsub nsz <4 x float> %i.do, %i.dp
  store <4 x float> %i.dq, ptr %i.k, align 4, !tbaa !30
  %i.dr = fadd nsz <4 x float> %i.dd, %i.cw
  store <4 x float> %i.dr, ptr %1, align 4, !tbaa !30
  %i.ds = load <4 x float>, ptr %i.u, align 4, !tbaa !30 ; 4 uses
  %i.dt = shufflevector <4 x float> %i.bx, <4 x float> %i.ce, <4 x i32> <i32 1, i32 4, i32 3, i32 6>
  %i.du = shufflevector <4 x float> %i.ce, <4 x float> %i.bx, <4 x i32> <i32 1, i32 4, i32 3, i32 6>
  %i.dv = fsub nsz <4 x float> %i.dt, %i.du       ; 4 uses
  %foldExtExtBinop219 = fsub nsz <4 x float> %i.ds, %i.dv
  %i.dw = extractelement <4 x float> %foldExtExtBinop219, i64 1
  store float %i.dw, ptr %i.q, align 4, !tbaa !51
  %i.dx = shufflevector <4 x float> %i.df, <4 x float> %i.ds, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  %i.dy = shufflevector <4 x float> %i.dm, <4 x float> %i.dv, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  %i.dz = fsub nsz <4 x float> %i.dx, %i.dy
  store <4 x float> %i.dz, ptr %i.r, align 4, !tbaa !30
  %i.ea = shufflevector <4 x float> %i.ds, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.eb = shufflevector <4 x float> %i.dv, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.ec = fsub nsz <2 x float> %i.ea, %i.eb
  store <2 x float> %i.ec, ptr %i.o, align 4, !tbaa !30
  %i.ed = fadd nsz <4 x float> %i.ds, %i.dv
  store <4 x float> %i.ed, ptr %i.u, align 4, !tbaa !30
  %i.ee = shufflevector <4 x float> %i.cf, <4 x float> %i.df, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  %i.ef = shufflevector <4 x float> %i.cg, <4 x float> %i.dm, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  %i.eg = fsub nsz <4 x float> %i.ee, %i.ef
  store <4 x float> %i.eg, ptr %i.j, align 4, !tbaa !30
  %i.eh = fadd nsz <4 x float> %i.cf, %i.cg
  store <4 x float> %i.eh, ptr %i.t, align 4, !tbaa !30
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_fft32_ns_float_c(ptr nofree readnone captures(none) %0, ptr noundef initializes((0, 128)) %1, ptr nofree noundef readonly captures(none) %2, i64 %3) #9 {
bb.a:
  tail call void @ff_tx_fft16_ns_float_c(ptr poison, ptr noundef %1, ptr noundef %2, i64 poison)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 128
  tail call void @ff_tx_fft8_ns_float_c(ptr poison, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 poison)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 192
  tail call void @ff_tx_fft8_ns_float_c(ptr poison, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_float_c(ptr noundef %1, ptr noundef nonnull @ff_tx_tab_32_float, i32 noundef 4)
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @ff_tx_fft_sr_combine_float_c(ptr nofree noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #10 {
bb.a:
  %i.a = shl nsw i32 %2, 1
  %i.b = sext i32 %i.a to i64                     ; 2 uses
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.b
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -28
  %i.f = mul nuw nsw i32 %2, 6
  %i.g = shl nsw i32 %2, 2
  %i.h = zext nneg i32 %i.g to i64
  %i.i = zext nneg i32 %i.f to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.0560 = phi i32 [ 0, %.lr.ph ], [ %i.nf, %bb.b ]
  %.0554559 = phi ptr [ %0, %.lr.ph ], [ %i.nc, %bb.b ] ; 13 uses
  %.0555558 = phi ptr [ %1, %.lr.ph ], [ %i.nd, %bb.b ] ; 9 uses
  %.0556557 = phi ptr [ %i.e, %.lr.ph ], [ %i.ne, %bb.b ] ; 9 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.0554559, i64 %i.h ; 17 uses
  %i.k = load float, ptr %i.j, align 4, !tbaa !49
  %i.l = load float, ptr %.0555558, align 4, !tbaa !30 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %i.n = load float, ptr %i.m, align 4, !tbaa !51
  %i.o = getelementptr inbounds nuw i8, ptr %.0556557, i64 28
  %i.p = load float, ptr %i.o, align 4, !tbaa !30 ; 3 uses
  %i.q = fneg nsz float %i.p
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.0554559, i64 %i.i ; 17 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !49
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.u = load float, ptr %i.t, align 4, !tbaa !51
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.0554559, i64 %i.b ; 9 uses
  %i.w = insertelement <2 x float> poison, float %i.p, i64 0
  %i.x = insertelement <2 x float> %i.w, float %i.l, i64 1
  %i.y = insertelement <2 x float> poison, float %i.n, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aa = fmul nsz <2 x float> %i.x, %i.z
  %i.ab = insertelement <2 x float> poison, float %i.k, i64 0
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ad = insertelement <2 x float> poison, float %i.l, i64 0
  %i.ae = insertelement <2 x float> %i.ad, float %i.q, i64 1 ; 2 uses
  %i.af = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %i.ae, <2 x float> %i.aa) ; 3 uses
  %i.ag = insertelement <2 x float> poison, float %i.u, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ai = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.aj = fmul nsz <2 x float> %i.ah, %i.ai
  %i.ak = insertelement <2 x float> poison, float %i.s, i64 0
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer
  %i.am = insertelement <2 x float> poison, float %i.l, i64 0
  %i.an = insertelement <2 x float> %i.am, float %i.p, i64 1
  %i.ao = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> %i.an, <2 x float> %i.aj) ; 3 uses
  %i.ap = load <2 x float>, ptr %.0554559, align 4, !tbaa !30 ; 3 uses
  %i.aq = fadd nsz <2 x float> %i.af, %i.ao       ; 3 uses
  %foldExtExtBinop = fsub nsz <2 x float> %i.ap, %i.aq
  %i.ar = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.as = load <2 x float>, ptr %i.v, align 4, !tbaa !30 ; 2 uses
  store float %i.ar, ptr %i.j, align 4, !tbaa !49
  %i.at = shufflevector <2 x float> %i.af, <2 x float> %i.ao, <2 x i32> <i32 1, i32 2>
  %i.au = shufflevector <2 x float> %i.ao, <2 x float> %i.af, <2 x i32> <i32 1, i32 2>
  %i.av = fsub nsz <2 x float> %i.at, %i.au       ; 2 uses
  %i.aw = fsub nsz <2 x float> %i.as, %i.av
  store <2 x float> %i.aw, ptr %i.r, align 4, !tbaa !30
  %i.ax = fadd nsz <2 x float> %i.as, %i.av
  store <2 x float> %i.ax, ptr %i.v, align 4, !tbaa !30
  %foldExtExtBinop562 = fsub nsz <2 x float> %i.ap, %i.aq
  %i.ay = extractelement <2 x float> %foldExtExtBinop562, i64 1
  store float %i.ay, ptr %i.m, align 4, !tbaa !51
  %i.az = fadd nsz <2 x float> %i.ap, %i.aq
  store <2 x float> %i.az, ptr %.0554559, align 4, !tbaa !30
  %i.ba = getelementptr i8, ptr %i.j, i64 16      ; 2 uses
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !49
  %i.bc = getelementptr inbounds nuw i8, ptr %.0555558, i64 8
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !30 ; 3 uses
  %i.be = getelementptr i8, ptr %i.j, i64 20      ; 2 uses
  %i.bf = load float, ptr %i.be, align 4, !tbaa !51
  %i.bg = getelementptr inbounds nuw i8, ptr %.0556557, i64 20
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !30 ; 3 uses
  %i.bi = fneg nsz float %i.bh
  %i.bj = getelementptr i8, ptr %i.r, i64 16      ; 2 uses
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !49
  %i.bl = getelementptr i8, ptr %i.r, i64 20
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !51
  %i.bn = getelementptr inbounds nuw i8, ptr %.0554559, i64 16 ; 2 uses
  %i.bo = getelementptr i8, ptr %i.v, i64 16      ; 2 uses
  %i.bp = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.bq = insertelement <2 x float> %i.bp, float %i.bd, i64 1
  %i.br = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bt = fmul nsz <2 x float> %i.bq, %i.bs
  %i.bu = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bw = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.bx = insertelement <2 x float> %i.bw, float %i.bi, i64 1 ; 2 uses
  %i.by = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> %i.bx, <2 x float> %i.bt) ; 3 uses
  %i.bz = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cc = fmul nsz <2 x float> %i.ca, %i.cb
  %i.cd = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cf = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.cg = insertelement <2 x float> %i.cf, float %i.bh, i64 1
  %i.ch = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> %i.cg, <2 x float> %i.cc) ; 3 uses
  %i.ci = load <2 x float>, ptr %i.bn, align 4, !tbaa !30 ; 3 uses
  %i.cj = fadd nsz <2 x float> %i.by, %i.ch       ; 3 uses
  %foldExtExtBinop564 = fsub nsz <2 x float> %i.ci, %i.cj
  %i.ck = extractelement <2 x float> %foldExtExtBinop564, i64 0
  %i.cl = load <2 x float>, ptr %i.bo, align 4, !tbaa !30 ; 2 uses
  store float %i.ck, ptr %i.ba, align 4, !tbaa !49
  %i.cm = shufflevector <2 x float> %i.by, <2 x float> %i.ch, <2 x i32> <i32 1, i32 2>
  %i.cn = shufflevector <2 x float> %i.ch, <2 x float> %i.by, <2 x i32> <i32 1, i32 2>
  %i.co = fsub nsz <2 x float> %i.cm, %i.cn       ; 2 uses
  %i.cp = fsub nsz <2 x float> %i.cl, %i.co
  store <2 x float> %i.cp, ptr %i.bj, align 4, !tbaa !30
  %i.cq = fadd nsz <2 x float> %i.cl, %i.co
  store <2 x float> %i.cq, ptr %i.bo, align 4, !tbaa !30
  %foldExtExtBinop566 = fsub nsz <2 x float> %i.ci, %i.cj
  %i.cr = extractelement <2 x float> %foldExtExtBinop566, i64 1
  store float %i.cr, ptr %i.be, align 4, !tbaa !51
  %i.cs = fadd nsz <2 x float> %i.ci, %i.cj
  store <2 x float> %i.cs, ptr %i.bn, align 4, !tbaa !30
  %i.ct = getelementptr i8, ptr %i.j, i64 32      ; 2 uses
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !49
  %i.cv = getelementptr inbounds nuw i8, ptr %.0555558, i64 16
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !30 ; 3 uses
  %i.cx = getelementptr i8, ptr %i.j, i64 36      ; 2 uses
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !51
end_hunk_0
begin_hunk_1_@ff_tx_mdct_pfa_15xM_inv_float_c:bb.a
  %i.ku = shufflevector <2 x float> %i.ks, <2 x float> %i.kr, <2 x i32> <i32 0, i32 3>
  %i.kv = fadd nsz <2 x float> %i.ee, %i.ku
  store <2 x float> %i.kv, ptr %i.dn, align 4, !tbaa !30
  %i.kw = fadd nsz <2 x float> %i.ee, %i.kt
  store <2 x float> %i.kw, ptr %i.do, align 4, !tbaa !30
  %i.kx = fadd nsz <2 x float> %i.ee, %i.ki
  store <2 x float> %i.kx, ptr %i.dp, align 4, !tbaa !30
  %i.ky = getelementptr inbounds nuw i8, ptr %.0133, i64 120 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.0105132, i64 60
  %i.la = add nuw nsw i32 %.0107130, 15           ; 2 uses
  %i.lb = icmp slt i32 %i.la, %i.e
  br i1 %i.lb, label %.preheader127, label %.preheader126.loopexit, !llvm.loop !117

bb.b:                                             ; preds = %.preheader127, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader127 ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %.0105132, i64 %indvars.iv
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !14 ; 2 uses
  %i.le = sub nsw i32 0, %i.ld
  %i.lf = sext i32 %i.le to i64
  %i.lg = mul nsw i64 %i.n, %i.lf
  %i.lh = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.lg
  %i.li = load float, ptr %i.lh, align 4, !tbaa !30
  %i.lj = sext i32 %i.ld to i64
  %i.lk = mul nsw i64 %i.n, %i.lj
  %i.ll = getelementptr inbounds [4 x i8], ptr %2, i64 %i.lk
  %i.lm = load float, ptr %i.ll, align 4, !tbaa !30
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %.0133, i64 %indvars.iv ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 4
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %i.lq = load float, ptr %i.lo, align 4, !tbaa !51
  %i.lr = load <2 x float>, ptr %i.ln, align 4, !tbaa !30 ; 2 uses
  %i.ls = fneg nsz float %i.lq
  %i.lt = insertelement <2 x float> poison, float %i.lm, i64 0
  %i.lu = shufflevector <2 x float> %i.lt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lv = shufflevector <2 x float> %i.lr, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.lw = insertelement <2 x float> %i.lv, float %i.ls, i64 0
  %i.lx = fmul nsz <2 x float> %i.lu, %i.lw
  %i.ly = insertelement <2 x float> poison, float %i.li, i64 0
  %i.lz = shufflevector <2 x float> %i.ly, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ma = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lz, <2 x float> %i.lr, <2 x float> %i.lx)
  store <2 x float> %i.ma, ptr %i.lp, align 8, !tbaa !30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 15
  br i1 %exitcond.not, label %fft15.exit, label %bb.b, !llvm.loop !118

.lr.ph:                                           ; preds = %.preheader126
  %i.mb = load ptr, ptr %i.ap, align 8, !tbaa !54 ; 2 uses
  %i.mc = zext nneg i32 %i.d to i64               ; 2 uses
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %.preheader126
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret void

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv145 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next146, %bb.c ] ; 3 uses
  %i.md = add nuw nsw i64 %indvars.iv145, %i.mc   ; 3 uses
  %i.me = xor i64 %indvars.iv145, -1
  %i.mf = add nsw i64 %i.mc, %i.me                ; 3 uses
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.md
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !14
  %i.mi = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.mf
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !14
  %i.mk = sext i32 %i.mj to i64
  %i.ml = getelementptr inbounds [8 x i8], ptr %i.mb, i64 %i.mk ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 4
  %i.mn = load float, ptr %i.mm, align 4, !tbaa !51 ; 2 uses
  %i.mo = load float, ptr %i.ml, align 4, !tbaa !49 ; 2 uses
  %i.mp = sext i32 %i.mh to i64
  %i.mq = getelementptr inbounds [8 x i8], ptr %i.mb, i64 %i.mp ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 4
  %i.ms = load float, ptr %i.mr, align 4, !tbaa !51 ; 2 uses
  %i.mt = load float, ptr %i.mq, align 4, !tbaa !49 ; 2 uses
  %i.mu = getelementptr inbounds [8 x i8], ptr %.0.lcssa, i64 %i.mf ; 3 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 4
  %i.mw = load float, ptr %i.mv, align 4, !tbaa !51 ; 2 uses
  %i.mx = load float, ptr %i.mu, align 4, !tbaa !49
  %i.my = fneg nsz float %i.mx
  %i.mz = fmul nsz float %i.mo, %i.my
  %i.na = tail call nsz float @llvm.fmuladd.f32(float %i.mn, float %i.mw, float %i.mz)
  %i.nb = getelementptr inbounds [8 x i8], ptr %1, i64 %i.mf ; 2 uses
  store float %i.na, ptr %i.nb, align 4, !tbaa !49
  %i.nc = load float, ptr %i.mu, align 4, !tbaa !49
  %i.nd = fmul nsz float %i.mo, %i.mw
  %i.ne = tail call nsz float @llvm.fmuladd.f32(float %i.mn, float %i.nc, float %i.nd)
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.md ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 4
  store float %i.ne, ptr %i.ng, align 4, !tbaa !51
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %.0.lcssa, i64 %i.md ; 3 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 4
  %i.nj = load float, ptr %i.ni, align 4, !tbaa !51 ; 2 uses
  %i.nk = load float, ptr %i.nh, align 4, !tbaa !49
  %i.nl = fneg nsz float %i.nk
  %i.nm = fmul nsz float %i.mt, %i.nl
  %i.nn = tail call nsz float @llvm.fmuladd.f32(float %i.ms, float %i.nj, float %i.nm)
  store float %i.nn, ptr %i.nf, align 4, !tbaa !49
  %i.no = load float, ptr %i.nh, align 4, !tbaa !49
  %i.np = fmul nsz float %i.mt, %i.nj
  %i.nq = tail call nsz float @llvm.fmuladd.f32(float %i.ms, float %i.no, float %i.np)
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nb, i64 4
  store float %i.nq, ptr %i.nr, align 4, !tbaa !51
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1 ; 2 uses
  %exitcond148.not = icmp eq i64 %indvars.iv.next146, %wide.trip.count
  br i1 %exitcond148.not, label %._crit_edge, label %bb.c, !llvm.loop !119
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ff_tx_mdct_naive_fwd_float_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load double, ptr %i.a, align 8, !tbaa !28
  %i.c = load i32, ptr %0, align 8, !tbaa !19     ; 5 uses
  %i.d = sitofp nsz i32 %i.c to double
  %i.e = fmul nnan nsz double %i.d, 4.000000e+00
  %i.f = fdiv nnan nsz double f0x400921FB54442D18, %i.e ; 2 uses
  %i.g = lshr i64 %3, 2
  %i.h = icmp sgt i32 %i.c, 0
  br i1 %i.h, label %.preheader.us.preheader, label %._crit_edge30

.preheader.us.preheader:                          ; preds = %bb.a
  %i.i = shl nuw i32 %i.c, 1
  %i.j = add nuw i32 %i.c, 1                      ; 2 uses
  %wide.trip.count36 = zext nneg i32 %i.c to i64
  %wide.trip.count = zext i32 %i.i to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv33 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next34, %._crit_edge.us ] ; 3 uses
  %indvars.iv33.tr = trunc i64 %indvars.iv33 to i32
  %i.k = shl i32 %indvars.iv33.tr, 1
  %i.l = or disjoint i32 %i.k, 1                  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader.us
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.1, %bb.b ] ; 4 uses
  %.02427.us = phi double [ 0.000000e+00, %.preheader.us ], [ %i.af, %bb.b ]
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.m = shl i32 %indvars.iv.tr, 1
  %i.n = add i32 %i.j, %i.m
  %i.o = mul nsw i32 %i.n, %i.l
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.q = load float, ptr %i.p, align 4, !tbaa !30
  %i.r = fpext nsz float %i.q to double
  %i.s = sitofp nsz i32 %i.o to double
  %i.t = fmul nsz double %i.f, %i.s
  %i.u = tail call nsz double @llvm.cos.f64(double %i.t)
  %i.v = tail call nsz double @llvm.fmuladd.f64(double %i.r, double %i.u, double %.02427.us)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %indvars.iv.tr.1 = trunc i64 %indvars.iv.next to i32
  %i.w = shl i32 %indvars.iv.tr.1, 1
  %i.x = add i32 %i.j, %i.w
  %i.y = mul nsw i32 %i.x, %i.l
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  %i.aa = load float, ptr %i.z, align 4, !tbaa !30
  %i.ab = fpext nsz float %i.aa to double
  %i.ac = sitofp nsz i32 %i.y to double
  %i.ad = fmul nsz double %i.f, %i.ac
  %i.ae = tail call nsz double @llvm.cos.f64(double %i.ad)
  %i.af = tail call nsz double @llvm.fmuladd.f64(double %i.ab, double %i.ae, double %i.v) ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge.us, label %bb.b, !llvm.loop !120

._crit_edge.us:                                   ; preds = %bb.b
  %i.ag = fmul nsz double %i.b, %i.af
  %i.ah = fptrunc nsz double %i.ag to float
  %i.ai = mul nuw nsw i64 %i.g, %indvars.iv33
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ai
  store float %i.ah, ptr %i.aj, align 4, !tbaa !30
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1 ; 2 uses
  %exitcond37.not = icmp eq i64 %indvars.iv.next34, %wide.trip.count36
  br i1 %exitcond37.not, label %._crit_edge30, label %.preheader.us, !llvm.loop !121

._crit_edge30:                                    ; preds = %._crit_edge.us, %bb.a
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @ff_tx_mdct_naive_init_float_c(ptr nofree noundef writeonly captures(none) initializes((140, 152)) %0, ptr nofree readnone captures(none) %1, i64 %2, ptr nofree readnone captures(none) %3, i32 %4, i32 %5, ptr nofree noundef readonly captures(none) %6) #13 {
bb.a:
  %i.a = load float, ptr %6, align 4, !tbaa !30   ; 2 uses
  %i.b = fpext nsz float %i.a to double
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  store double %i.b, ptr %i.c, align 8, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 140
  store float %i.a, ptr %i.d, align 4, !tbaa !87
  ret i32 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ff_tx_mdct_naive_inv_float_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load double, ptr %i.a, align 8, !tbaa !28 ; 2 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.d = ashr i32 %i.c, 1                         ; 3 uses
  %4 = and i32 %i.c, -2                           ; 3 uses
  %5 = sitofp nsz i32 %4 to double
  %6 = fmul nnan nsz double %5, 4.000000e+00
  %7 = fdiv nsz double f0x400921FB54442D18, %6    ; 2 uses
  %i.e = lshr i64 %3, 2
  %i.f = icmp sgt i32 %i.d, 0
  br i1 %i.f, label %.lr.ph.us.preheader, label %._crit_edge52

.lr.ph.us.preheader:                              ; preds = %bb.a
  %i.g = shl nuw nsw i32 %i.d, 2
  %i.h = mul nsw i32 %4, 3
  %invariant.op = or disjoint i32 %i.h, 1
  %i.i = zext nneg i32 %i.d to i64                ; 2 uses
  %wide.trip.count59 = zext nneg i32 %4 to i64
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.i
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv61 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next62, %._crit_edge.us ] ; 4 uses
  %i.j = shl nuw nsw i64 %indvars.iv61, 1         ; 2 uses
  %i.k = trunc nuw nsw i64 %i.j to i32
  %8 = xor i32 %i.k, -1
  %9 = add nsw i32 %i.g, %8
  %10 = sitofp nsz i32 %9 to double
  %11 = fmul nnan nsz double %7, %10
  %12 = trunc i64 %i.j to i32
  %13 = add i32 %invariant.op, %12
  %14 = sitofp nsz i32 %13 to double
  %15 = fmul nnan nsz double %7, %14
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %bb.b
  %indvars.iv56 = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next57, %bb.b ] ; 3 uses
  %.04147.us = phi double [ 0.000000e+00, %.lr.ph.us ], [ %20, %bb.b ]
  %.04345.us = phi double [ 0.000000e+00, %.lr.ph.us ], [ %21, %bb.b ]
  %indvars.iv56.tr = trunc i64 %indvars.iv56 to i32
  %i.l = shl i32 %indvars.iv56.tr, 1
  %i.m = or disjoint i32 %i.l, 1
  %i.n = uitofp nneg i32 %i.m to double           ; 2 uses
  %16 = fmul nnan nsz double %11, %i.n
  %17 = tail call nsz double @llvm.cos.f64(double %16)
  %18 = fmul nnan nsz double %15, %i.n
  %19 = tail call nsz double @llvm.cos.f64(double %18)
  %i.o = mul nuw nsw i64 %i.e, %indvars.iv56
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.o
  %i.q = load float, ptr %i.p, align 4, !tbaa !30
  %i.r = fpext nsz float %i.q to double           ; 2 uses
  %20 = tail call nsz double @llvm.fmuladd.f64(double %17, double %i.r, double %.04147.us) ; 2 uses
  %21 = tail call nsz double @llvm.fmuladd.f64(double %19, double %i.r, double %.04345.us) ; 2 uses
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1 ; 2 uses
  %exitcond60.not = icmp eq i64 %indvars.iv.next57, %wide.trip.count59
  br i1 %exitcond60.not, label %._crit_edge.us, label %bb.b, !llvm.loop !122

._crit_edge.us:                                   ; preds = %bb.b
  %i.s = fmul nsz double %i.b, %20
  %i.t = fptrunc nsz double %i.s to float
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv61
  store float %i.t, ptr %i.u, align 4, !tbaa !30
  %i.v = fneg nsz double %21
  %i.w = fmul nsz double %i.b, %i.v
  %i.x = fptrunc nsz double %i.w to float
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv61
  store float %i.x, ptr %gep, align 4, !tbaa !30
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 2 uses
  %exitcond66.not = icmp eq i64 %indvars.iv.next62, %i.i
  br i1 %exitcond66.not, label %._crit_edge52, label %.lr.ph.us, !llvm.loop !123

._crit_edge52:                                    ; preds = %._crit_edge.us, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_mdct_inv_full_float_c(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #3 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.b = shl i32 %i.a, 1                          ; 2 uses
  %i.c = ashr i32 %i.b, 2                         ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !55
  %i.h = sext i32 %i.c to i64
  %i.i = getelementptr inbounds [4 x i8], ptr %1, i64 %i.h
  tail call void %i.e(ptr noundef %i.g, ptr noundef %i.i, ptr noundef %2, i64 noundef %3) #16
  %i.j = lshr i64 %3, 2                           ; 4 uses
  %i.k = icmp sgt i32 %i.c, 0
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.l = and i32 %i.a, 2147483647
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %i.n = xor i64 %indvars.iv, -1                  ; 2 uses
  %i.o = add nsw i64 %i.m, %i.n
  %i.p = mul nsw i64 %i.j, %i.o
  %i.q = getelementptr inbounds [4 x i8], ptr %1, i64 %i.p
  %i.r = load float, ptr %i.q, align 4, !tbaa !30
  %i.s = fneg nsz float %i.r
  %i.t = mul nuw nsw i64 %i.j, %indvars.iv
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.t
  store float %i.s, ptr %i.u, align 4, !tbaa !30
  %i.v = add nuw nsw i64 %indvars.iv, %i.m
  %i.w = mul nuw nsw i64 %i.j, %i.v
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.w
  %i.y = load float, ptr %i.x, align 4, !tbaa !30
  %i.z = trunc nsw i64 %i.n to i32
  %i.aa = add i32 %i.b, %i.z
  %i.ab = sext i32 %i.aa to i64
  %i.ac = mul nsw i64 %i.j, %i.ab
  %i.ad = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ac
  store float %i.y, ptr %i.ad, align 4, !tbaa !30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !124
}

; Function Attrs: cold nounwind optsize uwtable
define internal i32 @ff_tx_mdct_inv_full_init_float_c(ptr noundef initializes((140, 152)) %0, ptr nofree readnone captures(none) %1, i64 noundef %2, ptr nofree readnone captures(none) %3, i32 noundef %4, i32 %5, ptr noundef %6) #0 {
bb.a:
  %i.a = load float, ptr %6, align 4, !tbaa !30   ; 2 uses
  %i.b = fpext nsz float %i.a to double
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  store double %i.b, ptr %i.c, align 8, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 140
  store float %i.a, ptr %i.d, align 4, !tbaa !87
  %i.e = and i64 %2, -5
  %i.f = tail call i32 @ff_tx_init_subtx(ptr noundef %0, i32 noundef 1, i64 noundef %i.e, ptr noundef null, i32 noundef %4, i32 noundef 1, ptr noundef nonnull %6) #16
  ret i32 %i.f
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_rdft_r2c_float_c(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 %3) #3 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.b = ashr i32 %i.a, 1                         ; 2 uses
  %i.c = ashr i32 %i.a, 2                         ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !29   ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.g = sext i32 %i.c to i64                     ; 2 uses
  %i.h = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !55
  tail call void %i.j(ptr noundef %i.l, ptr noundef %1, ptr noundef %2, i64 noundef 8) #16
  %i.m = load float, ptr %1, align 4, !tbaa !49   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 5 uses
  %i.o = load float, ptr %i.n, align 4, !tbaa !51 ; 2 uses
  %i.p = fadd nsz float %i.m, %i.o                ; 2 uses
  store float %i.p, ptr %1, align 4, !tbaa !49
  %i.q = fsub nsz float %i.m, %i.o                ; 2 uses
  store float %i.q, ptr %i.n, align 4, !tbaa !51
  %i.r = load float, ptr %i.e, align 4, !tbaa !30
  %i.s = fmul nsz float %i.p, %i.r
  store float %i.s, ptr %1, align 4, !tbaa !49
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.u = load float, ptr %i.t, align 4, !tbaa !30
  %i.v = fmul nsz float %i.q, %i.u
  store float %i.v, ptr %i.n, align 4, !tbaa !51
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.x = load float, ptr %i.w, align 4, !tbaa !30
  %i.y = getelementptr inbounds [8 x i8], ptr %1, i64 %i.g ; 3 uses
  %i.z = load float, ptr %i.y, align 4, !tbaa !49
  %i.aa = fmul nsz float %i.x, %i.z
  store float %i.aa, ptr %i.y, align 4, !tbaa !49
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !30
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !51
  %i.af = fmul nsz float %i.ac, %i.ae
  store float %i.af, ptr %i.ad, align 4, !tbaa !51
  %i.ag = icmp sgt i32 %i.c, 1
  br i1 %i.ag, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre = sext i32 %i.b to i64
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ak = sext i32 %i.b to i64                    ; 2 uses
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %i.ak, %bb.b ]
  %i.al = load float, ptr %i.n, align 4, !tbaa !51
  %i.am = getelementptr inbounds [8 x i8], ptr %1, i64 %.pre-phi
  %i.an = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.al, i64 0
  store <2 x float> %i.an, ptr %i.am, align 4, !tbaa !30
  store float 0.000000e+00, ptr %i.n, align 4, !tbaa !51
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 5 uses
  %i.ao = load float, ptr %i.ah, align 4, !tbaa !30
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.aq = sub nsw i64 %i.ak, %indvars.iv
  %i.ar = getelementptr inbounds [8 x i8], ptr %1, i64 %i.aq ; 3 uses
  %i.as = load float, ptr %i.ai, align 4, !tbaa !30
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.av = load <2 x float>, ptr %i.ap, align 4, !tbaa !30 ; 4 uses
  %i.aw = load <2 x float>, ptr %i.ar, align 4, !tbaa !30 ; 4 uses
  %foldExtExtBinop = fadd nsz <2 x float> %i.av, %i.aw
  %i.ax = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ay = fmul nsz float %i.ao, %i.ax             ; 2 uses
  %foldExtExtBinop93 = fsub nsz <2 x float> %i.av, %i.aw
  %i.az = extractelement <2 x float> %foldExtExtBinop93, i64 1
  %i.ba = fmul nsz float %i.as, %i.az             ; 2 uses
  %i.bb = load <2 x float>, ptr %i.aj, align 4, !tbaa !30
  %i.bc = fadd nsz <2 x float> %i.av, %i.aw
  %i.bd = fsub nsz <2 x float> %i.av, %i.aw
  %i.be = shufflevector <2 x float> %i.bc, <2 x float> %i.bd, <2 x i32> <i32 1, i32 2>
  %i.bf = fmul nsz <2 x float> %i.bb, %i.be       ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !30 ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !30 ; 2 uses
  %i.bk = fneg nsz float %i.bj
  %i.bl = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bm = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.bn = insertelement <2 x float> %i.bm, float %i.bh, i64 1
  %i.bo = fmul nsz <2 x float> %i.bl, %i.bn
  %i.bp = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bq = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.br = insertelement <2 x float> %i.bq, float %i.bj, i64 1
  %i.bs = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bp, <2 x float> %i.br, <2 x float> %i.bo) ; 2 uses
  %i.bt = extractelement <2 x float> %i.bs, i64 0 ; 2 uses
  %i.bu = fadd nsz float %i.ay, %i.bt
  store float %i.bu, ptr %i.ap, align 4, !tbaa !49
  %i.bv = extractelement <2 x float> %i.bs, i64 1 ; 2 uses
  %i.bw = fsub nsz float %i.bv, %i.ba
  store float %i.bw, ptr %i.at, align 4, !tbaa !51
  %i.bx = fsub nsz float %i.ay, %i.bt
  store float %i.bx, ptr %i.ar, align 4, !tbaa !49
  %i.by = fadd nsz float %i.ba, %i.bv
  store float %i.by, ptr %i.au, align 4, !tbaa !51
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !125
}

; Function Attrs: cold nounwind optsize uwtable
define internal i32 @ff_tx_rdft_init_float_c(ptr noundef initializes((140, 152)) %0, ptr nofree readnone captures(none) %1, i64 noundef %2, ptr nofree readnone captures(none) %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) #0 {
bb.a:
  %i.a = and i64 %2, 8
  %i.b = add nsw i32 %4, 3
  %i.c = ashr i32 %i.b, 2                         ; 5 uses
end_hunk_1
begin_hunk_2_@ff_tx_dctI_float_c:bb.a
  %i.q = mul nsw i64 %i.e, %i.p
  %i.r = getelementptr inbounds [4 x i8], ptr %2, i64 %i.q
  %i.s = load float, ptr %i.r, align 4, !tbaa !30
  %i.t = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.p
  store float %i.s, ptr %i.t, align 4, !tbaa !30
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !55
  tail call void %i.v(ptr noundef %i.x, ptr noundef %1, ptr noundef %i.d, i64 noundef 4) #16
  ret void

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.y = mul nuw nsw i64 %i.e, %indvars.iv
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.y
  %i.aa = load float, ptr %i.z, align 4, !tbaa !30 ; 2 uses
  %i.ab = sub nsw i64 %i.h, %indvars.iv
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ab
  store float %i.aa, ptr %i.ac, align 4, !tbaa !30
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  store float %i.aa, ptr %i.ad, align 4, !tbaa !30
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.ae = mul nuw nsw i64 %i.e, %indvars.iv.next
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ae
  %i.ag = load float, ptr %i.af, align 4, !tbaa !30 ; 2 uses
  %i.ah = sub nsw i64 %i.h, %indvars.iv.next
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ah
  store float %i.ag, ptr %i.ai, align 4, !tbaa !30
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next
  store float %i.ag, ptr %i.aj, align 4, !tbaa !30
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !161
}

; Function Attrs: cold nounwind optsize uwtable
define internal i32 @ff_tx_dcstI_init_float_c(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree readnone captures(none) %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6) #0 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = load float, ptr %6, align 4, !tbaa !30   ; 2 uses
  store float %i.b, ptr %i.a, align 4, !tbaa !30
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = shl nsw i32 %4, 1
  %i.d = load i32, ptr %0, align 8, !tbaa !19
  %i.e = shl nsw i32 %i.d, 1
  store i32 %i.e, ptr %0, align 8, !tbaa !19
  %i.f = fmul nsz float %i.b, 5.000000e-01
  store float %i.f, ptr %i.a, align 4, !tbaa !30
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.014 = phi i32 [ %i.c, %bb.b ], [ %4, %bb.a ]  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !162  ; 2 uses
  %i.i = icmp eq i32 %i.h, 12
  %i.j = select i1 %i.i, i64 8, i64 16
  %i.k = or i64 %i.j, %2
  %i.l = add nsw i32 %.014, -1
  %i.m = icmp eq i32 %i.h, 15
  %i.n = select i1 %i.m, i32 2, i32 0
  %i.o = add nsw i32 %i.l, %i.n
  %i.p = shl nsw i32 %i.o, 1
  %i.q = call i32 @ff_tx_init_subtx(ptr noundef %0, i32 noundef 6, i64 noundef %i.k, ptr noundef null, i32 noundef %i.p, i32 noundef 0, ptr noundef nonnull %i.a) #16 ; 2 uses
  %.not16 = icmp eq i32 %i.q, 0
  br i1 %.not16, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = shl i32 %.014, 1
  %i.s = add i32 %i.r, 2
  %i.t = sext i32 %i.s to i64
  %i.u = shl nsw i64 %i.t, 2
  %i.v = call noalias ptr @av_mallocz(i64 noundef %i.u) #16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.v, ptr %i.w, align 8, !tbaa !54
  %.not17 = icmp eq ptr %i.v, null
  %. = select i1 %.not17, i32 -12, i32 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ %., %bb.d ], [ %i.q, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_dstI_float_c(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.b = add i32 %i.a, 1                          ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !54   ; 9 uses
  %i.e = lshr i64 %3, 2                           ; 3 uses
  store float 0.000000e+00, ptr %i.d, align 4, !tbaa !30
  %.not25 = icmp slt i32 %i.a, 1
  br i1 %.not25, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = shl nuw nsw i32 %i.b, 1
  %i.g = zext nneg i32 %i.f to i64                ; 3 uses
  %wide.trip.count = zext i32 %i.b to i64
  %i.h = add nsw i64 %wide.trip.count, -1         ; 3 uses
  %xtraiter = and i64 %i.h, 1
  %i.i = icmp eq i32 %i.b, 2
  br i1 %i.i, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.h, -2
  br label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod28 = trunc i64 %i.h to i1
  tail call void @llvm.assume(i1 %lcmp.mod28)
  %i.j = add nsw i64 %indvars.iv.epil.init, -1
  %i.k = mul nuw nsw i64 %i.e, %i.j
  %i.l = getelementptr inbounds [4 x i8], ptr %2, i64 %i.k
  %i.m = load float, ptr %i.l, align 4, !tbaa !30 ; 2 uses
  %i.n = fneg nsz float %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.epil.init
  store float %i.n, ptr %i.o, align 4, !tbaa !30
  %i.p = sub nsw i64 %i.g, %indvars.iv.epil.init
  %i.q = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.p
  store float %i.m, ptr %i.q, align 4, !tbaa !30
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %i.r = sext i32 %i.b to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.r
  store float 0.000000e+00, ptr %i.s, align 4, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !10
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !55
  tail call void %i.u(ptr noundef %i.w, ptr noundef %1, ptr noundef nonnull %i.d, i64 noundef 4) #16
  ret void

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.x = add nsw i64 %indvars.iv, -1
  %i.y = mul nuw nsw i64 %i.e, %i.x
  %i.z = getelementptr inbounds [4 x i8], ptr %2, i64 %i.y
  %i.aa = load float, ptr %i.z, align 4, !tbaa !30 ; 2 uses
  %i.ab = fneg nsz float %i.aa
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  store float %i.ab, ptr %i.ac, align 4, !tbaa !30
  %i.ad = sub nsw i64 %i.g, %indvars.iv
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ad
  store float %i.aa, ptr %i.ae, align 4, !tbaa !30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.af = mul nuw nsw i64 %i.e, %indvars.iv
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.af
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !30 ; 2 uses
  %i.ai = fneg nsz float %i.ah
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next
  store float %i.ai, ptr %i.aj, align 4, !tbaa !30
  %i.ak = sub nsw i64 %i.g, %indvars.iv.next
  %i.al = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ak
  store float %i.ah, ptr %i.al, align 4, !tbaa !30
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !165
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.sincos.f64(double) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.cos.v4f64(<4 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #4

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { cold nofree norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { cold }

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
!9 = !{!"branch_weights", i32 1, i32 1048575}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!6, !6, i64 0}
!15 = distinct !{!15, !13}
!16 = !{!17, !11, i64 0}
!17 = !{!"FFTabInitData", !11, i64 0, !7, i64 8}
!18 = distinct !{!18, !13}
!19 = !{!20, !6, i64 0}
!20 = !{!"AVTXContext", !6, i64 0, !6, i64 4, !21, i64 8, !22, i64 16, !22, i64 24, !23, i64 32, !7, i64 40, !6, i64 72, !7, i64 80, !24, i64 112, !6, i64 120, !25, i64 128, !6, i64 136, !26, i64 140, !27, i64 144, !11, i64 152}
!21 = !{!"p1 int", !11, i64 0}
!22 = !{!"p1 _ZTS14AVComplexFloat", !11, i64 0}
!23 = !{!"p1 _ZTS11AVTXContext", !11, i64 0}
!24 = !{!"p1 _ZTS11FFTXCodelet", !11, i64 0}
!25 = !{!"long", !7, i64 0}
!26 = !{!"float", !7, i64 0}
!27 = !{!"double", !7, i64 0}
!28 = !{!20, !27, i64 144}
!29 = !{!20, !22, i64 16}
!30 = !{!26, !26, i64 0}
!31 = distinct !{!31, !13, !32, !33}
!32 = !{!"llvm.loop.isvectorized", i32 1}
!33 = !{!"llvm.loop.unroll.runtime.disable"}
!34 = distinct !{!34, !13, !33, !32}
!35 = distinct !{!35, !13}
!36 = distinct !{!36, !13, !32, !33}
!37 = distinct !{!37, !13, !32, !33}
!38 = distinct !{!38, !13, !32, !33}
!39 = distinct !{!39, !13, !32, !33}
!40 = distinct !{!40, !13, !32, !33}
!41 = distinct !{!41, !13, !32, !33}
!42 = distinct !{!42, !13, !32, !33}
!43 = distinct !{!43, !13, !32, !33}
!44 = distinct !{!44, !13, !32, !33}
!45 = distinct !{!45, !13, !32, !33}
!46 = distinct !{!46, !13, !32, !33}
!47 = distinct !{!47, !13, !32, !33}
!48 = distinct !{!48, !13, !32, !33}
!49 = !{!50, !26, i64 0}
!50 = !{!"AVComplexFloat", !26, i64 0, !26, i64 4}
!51 = !{!50, !26, i64 4}
!52 = distinct !{!52, !13}
!53 = !{!20, !25, i64 128}
!54 = !{!20, !22, i64 24}
!55 = !{!20, !23, i64 32}
!56 = !{!20, !21, i64 8}
!57 = distinct !{!57, !58}
!58 = !{!"llvm.loop.unroll.disable"}
!59 = distinct !{!59, !13}
!60 = !{!61, !6, i64 0}
!61 = !{!"FFTXCodeletOptions", !6, i64 0}
!62 = distinct !{!62, !13}
!63 = distinct !{!63, !13}
!64 = !{!22, !22, i64 0}
!65 = distinct !{!65, !13}
!66 = distinct !{!66, !58}
!67 = distinct !{!67, !13}
!68 = distinct !{!68, !13}
!69 = distinct !{!69, !58}
!70 = distinct !{!70, !13}
!71 = distinct !{!71, !13}
!72 = distinct !{!72, !13}
!73 = distinct !{!73, !13}
!74 = distinct !{!74, !13}
!75 = distinct !{!75, !13}
!76 = distinct !{!76, !58}
!77 = distinct !{!77, !13}
!78 = !{!20, !6, i64 4}
!79 = distinct !{!79, !13}
!80 = distinct !{!80, !13}
!81 = distinct !{!81, !13}
!82 = distinct !{!82, !13}
!83 = distinct !{!83, !13}
!84 = distinct !{!84, !13}
!85 = distinct !{!85, !13}
!86 = distinct !{!86, !13}
!87 = !{!20, !26, i64 140}
!88 = distinct !{!88, !13}
!89 = distinct !{!89, !13}
!90 = distinct !{!90, !13}
!91 = distinct !{!91, !13}
!92 = distinct !{!92, !13}
!93 = distinct !{!93, !13}
!94 = distinct !{!94, !13}
!95 = distinct !{!95, !13}
!96 = distinct !{!96, !13}
!97 = distinct !{!97, !13}
!98 = distinct !{!98, !13}
!99 = distinct !{!99, !13}
!100 = distinct !{!100, !13}
!101 = distinct !{!101, !13}
!102 = distinct !{!102, !13}
!103 = distinct !{!103, !13}
!104 = distinct !{!104, !13}
!105 = distinct !{!105, !13}
!106 = distinct !{!106, !13}
!107 = distinct !{!107, !13}
!108 = distinct !{!108, !13}
!109 = distinct !{!109, !13}
!110 = distinct !{!110, !13}
!111 = distinct !{!111, !13}
!112 = distinct !{!112, !13}
!113 = distinct !{!113, !13}
!114 = distinct !{!114, !13}
!115 = distinct !{!115, !13}
!116 = distinct !{!116, !13}
!117 = distinct !{!117, !13}
!118 = distinct !{!118, !13}
!119 = distinct !{!119, !13}
!120 = distinct !{!120, !13}
!121 = distinct !{!121, !13}
!122 = distinct !{!122, !13}
!123 = distinct !{!123, !13}
!124 = distinct !{!124, !13}
!125 = distinct !{!125, !13}
!126 = distinct !{!126, !13}
!127 = distinct !{!127, !13}
!128 = distinct !{!128, !13, !32, !33}
!129 = distinct !{!129, !58}
!130 = distinct !{!130, !13}
!131 = distinct !{!131, !13, !32}
!132 = distinct !{!132, !13, !32, !33}
!133 = distinct !{!133, !58}
!134 = distinct !{!134, !13}
!135 = distinct !{!135, !13, !32}
!136 = distinct !{!136, !13, !32, !33}
!137 = distinct !{!137, !58}
!138 = distinct !{!138, !13}
!139 = distinct !{!139, !13, !32}
!140 = distinct !{!140, !13, !32, !33}
!141 = distinct !{!141, !58}
!142 = distinct !{!142, !13}
!143 = distinct !{!143, !13, !32}
!144 = distinct !{!144, !13}
!145 = distinct !{!145, !13}
!146 = distinct !{!146, !13}
!147 = distinct !{!147, !13}
!148 = distinct !{!148, !13}
!149 = distinct !{!149, !13}
!150 = !{!151}
!151 = distinct !{!151, !152}
!152 = distinct !{!152, !"LVerDomain"}
!153 = !{!154, !155}
!154 = distinct !{!154, !152}
!155 = distinct !{!155, !152}
!156 = !{!155}
!157 = !{!154}
!158 = distinct !{!158, !13, !32, !33}
!159 = distinct !{!159, !13, !32}
!160 = distinct !{!160, !13}
!161 = distinct !{!161, !13}
!162 = !{!163, !6, i64 16}
!163 = !{!"FFTXCodelet", !164, i64 0, !11, i64 8, !6, i64 16, !25, i64 24, !7, i64 32, !6, i64 96, !6, i64 100, !6, i64 104, !11, i64 112, !11, i64 120, !6, i64 128, !6, i64 132}
!164 = !{!"p1 omnipotent char", !11, i64 0}
!165 = distinct !{!165, !13}
end_hunk_2

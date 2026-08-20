inline.NumInlined: 21
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 32
begin_hunk_0_@ff_tx_init_tab_8192_float:vector.ph
  %i.e = fptrunc nsz <4 x double> %i.d to <4 x float>
  store <4 x float> %i.e, ptr %next.gep, align 16, !tbaa !30
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 4)
  %i.f = icmp eq i64 %index.next, 2048
  br i1 %i.f, label %middle.block, label %vector.body, !llvm.loop !44

middle.block:                                     ; preds = %vector.body
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_8192_float, i64 8192), align 16, !tbaa !30
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_init_tab_16384_float() #5 {
vector.ph:
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.a = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr @ff_tx_tab_16384_float, i64 %i.a
  %i.b = uitofp nneg <4 x i32> %vec.ind to <4 x double>
  %i.c = fmul nnan nsz <4 x double> %i.b, splat (double f0x3F3921FB54442D18)
  %i.d = tail call nsz <4 x double> @llvm.cos.v4f64(<4 x double> %i.c)
  %i.e = fptrunc nsz <4 x double> %i.d to <4 x float>
  store <4 x float> %i.e, ptr %next.gep, align 16, !tbaa !30
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 4)
  %i.f = icmp eq i64 %index.next, 4096
  br i1 %i.f, label %middle.block, label %vector.body, !llvm.loop !45

middle.block:                                     ; preds = %vector.body
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_16384_float, i64 16384), align 16, !tbaa !30
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_init_tab_32768_float() #5 {
vector.ph:
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.a = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr @ff_tx_tab_32768_float, i64 %i.a
  %i.b = uitofp nneg <4 x i32> %vec.ind to <4 x double>
  %i.c = fmul nnan nsz <4 x double> %i.b, splat (double f0x3F2921FB54442D18)
  %i.d = tail call nsz <4 x double> @llvm.cos.v4f64(<4 x double> %i.c)
  %i.e = fptrunc nsz <4 x double> %i.d to <4 x float>
  store <4 x float> %i.e, ptr %next.gep, align 16, !tbaa !30
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 4)
  %i.f = icmp eq i64 %index.next, 8192
  br i1 %i.f, label %middle.block, label %vector.body, !llvm.loop !46

middle.block:                                     ; preds = %vector.body
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_32768_float, i64 32768), align 16, !tbaa !30
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_init_tab_65536_float() #5 {
vector.ph:
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.a = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr @ff_tx_tab_65536_float, i64 %i.a
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
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
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
  %i.u = fadd nsz <4 x float> %i.r, %i.t
  %i.v = fsub nsz <4 x float> %i.r, %i.t
  %i.w = shufflevector <4 x float> %i.u, <4 x float> %i.v, <4 x i32> <i32 0, i32 5, i32 6, i32 3> ; 4 uses
  %i.x = load <4 x float>, ptr %i.c, align 4, !tbaa !30 ; 3 uses
  %i.y = shufflevector <4 x float> %i.x, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.z = fadd nsz <4 x float> %i.x, %i.y
  %i.aa = fsub nsz <4 x float> %i.x, %i.y
  %i.ab = shufflevector <4 x float> %i.z, <4 x float> %i.aa, <4 x i32> <i32 3, i32 5, i32 6, i32 0> ; 4 uses
  %i.ac = fadd nsz <4 x float> %i.w, %i.ab        ; 4 uses
  %i.ad = fsub nsz <4 x float> %i.w, %i.ab        ; 2 uses
  %i.ae = shufflevector <4 x float> %i.ac, <4 x float> %i.ad, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %foldExtExtBinop = fadd nsz <4 x float> %i.w, %i.ab ; 2 uses
  %5 = extractelement <4 x float> %foldExtExtBinop, i64 3 ; 2 uses
  store float %5, ptr %1, align 4, !tbaa !49
  %6 = extractelement <4 x float> %i.ac, i64 2
  store float %6, ptr %4, align 4, !tbaa !51
  %7 = shufflevector <4 x float> %i.ac, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %7, ptr %i.g, align 4, !tbaa !30
  %i.af = insertelement <2 x float> poison, float %i.a, i64 0 ; 2 uses
  %i.ag = insertelement <2 x float> %i.af, float %i.p, i64 1
  %i.ah = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ai = shufflevector <4 x float> %i.ae, <4 x float> %i.w, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.aj = shufflevector <4 x float> %i.ab, <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 0, i32 1, i32 2>
  %i.ak = fsub nsz <4 x float> %i.ai, %i.aj       ; 4 uses
  %i.al = shufflevector <4 x float> %i.ad, <4 x float> %i.ak, <4 x i32> <i32 3, i32 5, i32 6, i32 7>
  store <4 x float> %i.al, ptr %i.d, align 4, !tbaa !30
  %i.am = load <2 x float>, ptr %i.h, align 4, !tbaa !30 ; 3 uses
  %i.an = load <2 x float>, ptr %i.i, align 4, !tbaa !30 ; 3 uses
  %foldExtExtBinop.a = fsub nsz <2 x float> %i.am, %i.an ; 2 uses
  %i.ao = extractelement <2 x float> %foldExtExtBinop.a, i64 0
  store float %i.ao, ptr %i.j, align 4, !tbaa !49
  %i.ap = fadd nsz <2 x float> %i.am, %i.an       ; 2 uses
  %foldExtExtBinop114 = fsub nsz <2 x float> %i.am, %i.an
  %i.aq = extractelement <2 x float> %foldExtExtBinop114, i64 1 ; 2 uses
  store float %i.aq, ptr %i.k, align 4, !tbaa !51
  %i.ar = load <2 x float>, ptr %i.l, align 4, !tbaa !30 ; 2 uses
  %i.as = load <2 x float>, ptr %i.m, align 4, !tbaa !30 ; 2 uses
  %i.at = fadd nsz <2 x float> %i.ar, %i.as       ; 2 uses
  %i.au = fsub nsz <2 x float> %i.ar, %i.as       ; 2 uses
  %i.av = fmul nsz float %i.a, %i.aq
  %i.aw = extractelement <2 x float> %i.au, i64 1
  %i.ax = fmul nsz float %i.a, %i.aw              ; 2 uses
  %i.ay = fneg nsz float %i.ax
  %i.az = shufflevector <2 x float> %foldExtExtBinop.a, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ba = insertelement <2 x float> poison, float %i.av, i64 0
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bc = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.az, <2 x float> %i.ag, <2 x float> %i.bb) ; 3 uses
  %i.bd = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %i.be = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.bf = insertelement <2 x float> %i.be, float %i.ax, i64 1
  %i.bg = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> %i.ah, <2 x float> %i.bf) ; 3 uses
  %i.bh = shufflevector <2 x float> %i.bc, <2 x float> %i.bg, <4 x i32> <i32 poison, i32 poison, i32 1, i32 2>
  %i.bi = shufflevector <2 x float> %i.ap, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bj = shufflevector <4 x float> %i.bh, <4 x float> %i.bi, <4 x i32> <i32 5, i32 poison, i32 2, i32 3>
  %i.bk = shufflevector <2 x float> %i.at, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bl = shufflevector <4 x float> %i.bj, <4 x float> %i.bk, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.bm = shufflevector <2 x float> %i.bg, <2 x float> %i.bc, <4 x i32> <i32 poison, i32 poison, i32 1, i32 2>
  %i.bn = shufflevector <4 x float> %i.bm, <4 x float> %i.bk, <4 x i32> <i32 5, i32 poison, i32 2, i32 3>
  %i.bo = shufflevector <4 x float> %i.bn, <4 x float> %i.bi, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.bp = fsub nsz <4 x float> %i.bl, %i.bo       ; 4 uses
  %i.bq = shufflevector <2 x float> %i.ap, <2 x float> %i.bc, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.br = shufflevector <2 x float> %i.at, <2 x float> %i.bg, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bs = fadd nsz <4 x float> %i.bq, %i.br       ; 3 uses
  %8 = extractelement <4 x float> %i.bs, i64 0
  %9 = fadd nsz float %5, %8
  store float %9, ptr %1, align 4, !tbaa !49
  %foldExtExtBinop118 = fadd nsz <4 x float> %i.ak, %i.bp
  %i.bt = extractelement <4 x float> %foldExtExtBinop118, i64 3
  store float %i.bt, ptr %i.e, align 4, !tbaa !51
  %i.bu = fsub nsz <4 x float> %i.ak, %i.bp
  store <4 x float> %i.bu, ptr %i.o, align 4, !tbaa !30
  %i.bv = shufflevector <4 x float> %i.ak, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.bw = shufflevector <4 x float> %i.bp, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.bx = fadd nsz <2 x float> %i.bv, %i.bw
  store <2 x float> %i.bx, ptr %i.f, align 4, !tbaa !30
  %10 = shufflevector <4 x float> %foldExtExtBinop, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.by = shufflevector <4 x float> %10, <4 x float> %i.ac, <4 x i32> <i32 0, i32 4, i32 5, i32 6>
  %i.bz = fsub nsz <4 x float> %i.by, %i.bs
  store <4 x float> %i.bz, ptr %i.n, align 4, !tbaa !30
  %i.ca = shufflevector <4 x float> %i.bs, <4 x float> %i.bp, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  %i.cb = fadd nsz <4 x float> %i.ae, %i.ca
  store <4 x float> %i.cb, ptr %i.g, align 4, !tbaa !30
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
  %i.v = load <3 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_16_float, i64 4), align 4, !tbaa !30 ; 5 uses
  %i.w = shufflevector <3 x float> %i.v, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 2> ; 4 uses
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
  %i.bz = load float, ptr %i.p, align 4, !tbaa !51
  %i.ca = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.cb = shufflevector <3 x float> %i.v, <3 x float> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.cc = insertelement <2 x float> %i.cb, float %i.bm, i64 0
  %i.cd = insertelement <4 x float> %i.bc, float %i.by, i64 1
  %i.ce = shufflevector <4 x float> %i.cd, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.cf = insertelement <4 x float> poison, float %i.bk, i64 0
  %i.cg = shufflevector <4 x float> %i.cf, <4 x float> %foldExtExtBinop215, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.ch = shufflevector <2 x float> %i.ca, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.ci = shufflevector <2 x float> %i.cc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cj = fmul nsz <4 x float> %i.ch, %i.ci
  %i.ck = shufflevector <4 x float> %i.cg, <4 x float> %i.cj, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cl = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ce, <4 x float> %i.bt, <4 x float> %i.ck) ; 3 uses
  %i.cm = load <4 x float>, ptr %i.t, align 4, !tbaa !30 ; 3 uses
  %i.cn = fadd nsz <4 x float> %i.bx, %i.cl       ; 3 uses
  %i.co = load float, ptr %i.h, align 4, !tbaa !49
  %i.cp = load float, ptr %i.i, align 4, !tbaa !51
  %i.cq = shufflevector <3 x float> %i.v, <3 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.cr = insertelement <2 x float> poison, float %i.cp, i64 0
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ct = fmul nsz <2 x float> %i.cq, %i.cs
  %i.cu = insertelement <2 x float> poison, float %i.co, i64 0
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cw = shufflevector <3 x float> %i.v, <3 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.cx = fneg nsz <4 x float> %i.w
  %i.cy = shufflevector <4 x float> %i.cx, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.cz = shufflevector <2 x float> %i.cw, <2 x float> %i.cy, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.da = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cv, <2 x float> %i.cz, <2 x float> %i.ct) ; 3 uses
  %i.db = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dc = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dd = fmul nsz <2 x float> %i.db, %i.dc
  %i.de = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.df = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.de, <2 x float> %i.cb, <2 x float> %i.dd) ; 3 uses
  %i.dg = load <4 x float>, ptr %1, align 4, !tbaa !30 ; 3 uses
  %i.dh = shufflevector <4 x float> %i.ap, <4 x float> %foldExtExtBinop213, <4 x i32> <i32 0, i32 7, i32 poison, i32 poison>
  %i.di = shufflevector <2 x float> %i.da, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dj = shufflevector <4 x float> %i.dh, <4 x float> %i.di, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dk = shufflevector <4 x float> %foldExtExtBinop, <4 x float> %i.ap, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %i.dl = shufflevector <2 x float> %i.df, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dm = shufflevector <4 x float> %i.dk, <4 x float> %i.dl, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dn = fadd nsz <4 x float> %i.dj, %i.dm       ; 3 uses
  %foldExtExtBinop217 = fsub nsz <4 x float> %i.dg, %i.dn
  %i.do = extractelement <4 x float> %foldExtExtBinop217, i64 0
  store float %i.do, ptr %i.a, align 4, !tbaa !49
  %i.dp = load <4 x float>, ptr %i.s, align 4, !tbaa !30 ; 3 uses
  %i.dq = shufflevector <2 x float> %i.da, <2 x float> %i.df, <4 x i32> <i32 poison, i32 poison, i32 1, i32 2>
  %i.dr = shufflevector <4 x float> %i.dq, <4 x float> %i.ap, <4 x i32> <i32 5, i32 poison, i32 2, i32 3>
  %i.ds = shufflevector <4 x float> %i.dr, <4 x float> %foldExtExtBinop, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.dt = shufflevector <2 x float> %i.df, <2 x float> %i.da, <4 x i32> <i32 poison, i32 poison, i32 1, i32 2>
  %i.du = shufflevector <4 x float> %i.dt, <4 x float> %foldExtExtBinop213, <4 x i32> <i32 7, i32 poison, i32 2, i32 3>
  %i.dv = shufflevector <4 x float> %i.du, <4 x float> %i.ap, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.dw = fsub nsz <4 x float> %i.ds, %i.dv       ; 3 uses
  %i.dx = fadd nsz <4 x float> %i.dp, %i.dw
  store <4 x float> %i.dx, ptr %i.s, align 4, !tbaa !30
  %i.dy = shufflevector <4 x float> %i.dg, <4 x float> %i.cm, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  %i.dz = shufflevector <4 x float> %i.dn, <4 x float> %i.cn, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  %i.ea = fsub nsz <4 x float> %i.dy, %i.dz
  store <4 x float> %i.ea, ptr %i.k, align 4, !tbaa !30
  %i.eb = fadd nsz <4 x float> %i.dn, %i.dg
  store <4 x float> %i.eb, ptr %1, align 4, !tbaa !30
  %i.ec = load <4 x float>, ptr %i.u, align 4, !tbaa !30 ; 4 uses
  %i.ed = shufflevector <4 x float> %i.bx, <4 x float> %i.cl, <4 x i32> <i32 1, i32 4, i32 3, i32 6>
  %i.ee = shufflevector <4 x float> %i.cl, <4 x float> %i.bx, <4 x i32> <i32 1, i32 4, i32 3, i32 6>
  %i.ef = fsub nsz <4 x float> %i.ed, %i.ee       ; 4 uses
  %foldExtExtBinop219 = fsub nsz <4 x float> %i.ec, %i.ef
  %i.eg = extractelement <4 x float> %foldExtExtBinop219, i64 1
  store float %i.eg, ptr %i.q, align 4, !tbaa !51
  %i.eh = shufflevector <4 x float> %i.dp, <4 x float> %i.ec, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  %i.ei = shufflevector <4 x float> %i.dw, <4 x float> %i.ef, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  %i.ej = fsub nsz <4 x float> %i.eh, %i.ei
  store <4 x float> %i.ej, ptr %i.r, align 4, !tbaa !30
  %i.ek = shufflevector <4 x float> %i.ec, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.el = shufflevector <4 x float> %i.ef, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.em = fsub nsz <2 x float> %i.ek, %i.el
  store <2 x float> %i.em, ptr %i.o, align 4, !tbaa !30
  %i.en = fadd nsz <4 x float> %i.ec, %i.ef
  store <4 x float> %i.en, ptr %i.u, align 4, !tbaa !30
  %i.eo = shufflevector <4 x float> %i.cm, <4 x float> %i.dp, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  %i.ep = shufflevector <4 x float> %i.cn, <4 x float> %i.dw, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  %i.eq = fsub nsz <4 x float> %i.eo, %i.ep
  store <4 x float> %i.eq, ptr %i.j, align 4, !tbaa !30
  %i.er = fadd nsz <4 x float> %i.cm, %i.cn
  store <4 x float> %i.er, ptr %i.t, align 4, !tbaa !30
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

end_hunk_0

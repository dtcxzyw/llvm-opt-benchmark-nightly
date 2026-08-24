Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/tx_double?download=true
inline.NumInlined: 21
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 33
begin_hunk_0_@ff_tx_init_tab_8192_double:vector.ph
  %i.c = fmul nnan nsz <2 x double> %i.b, splat (double f0x3F4921FB54442D18)
  %i.d = tail call nsz <2 x double> @llvm.cos.v2f64(<2 x double> %i.c)
  store <2 x double> %i.d, ptr %next.gep, align 16, !tbaa !30
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i32> %vec.ind, splat (i32 2)
  %i.e = icmp eq i64 %index.next, 2048
  br i1 %i.e, label %middle.block, label %vector.body, !llvm.loop !46

middle.block:                                     ; preds = %vector.body
  store double 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_8192_double, i64 16384), align 16, !tbaa !30
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_init_tab_16384_double() #5 {
vector.ph:
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.a = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr @ff_tx_tab_16384_double, i64 %i.a
  %i.b = uitofp nneg <2 x i32> %vec.ind to <2 x double>
  %i.c = fmul nnan nsz <2 x double> %i.b, splat (double f0x3F3921FB54442D18)
  %i.d = tail call nsz <2 x double> @llvm.cos.v2f64(<2 x double> %i.c)
  store <2 x double> %i.d, ptr %next.gep, align 16, !tbaa !30
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i32> %vec.ind, splat (i32 2)
  %i.e = icmp eq i64 %index.next, 4096
  br i1 %i.e, label %middle.block, label %vector.body, !llvm.loop !47

middle.block:                                     ; preds = %vector.body
  store double 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_16384_double, i64 32768), align 16, !tbaa !30
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_init_tab_32768_double() #5 {
vector.ph:
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.a = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr @ff_tx_tab_32768_double, i64 %i.a
  %i.b = uitofp nneg <2 x i32> %vec.ind to <2 x double>
  %i.c = fmul nnan nsz <2 x double> %i.b, splat (double f0x3F2921FB54442D18)
  %i.d = tail call nsz <2 x double> @llvm.cos.v2f64(<2 x double> %i.c)
  store <2 x double> %i.d, ptr %next.gep, align 16, !tbaa !30
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i32> %vec.ind, splat (i32 2)
  %i.e = icmp eq i64 %index.next, 8192
  br i1 %i.e, label %middle.block, label %vector.body, !llvm.loop !48

middle.block:                                     ; preds = %vector.body
  store double 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_32768_double, i64 65536), align 16, !tbaa !30
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_init_tab_65536_double() #5 {
vector.ph:
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.a = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr @ff_tx_tab_65536_double, i64 %i.a
  %i.b = uitofp nneg <2 x i32> %vec.ind to <2 x double>
  %i.c = fmul nnan nsz <2 x double> %i.b, splat (double f0x3F1921FB54442D18)
  %i.d = tail call nsz <2 x double> @llvm.cos.v2f64(<2 x double> %i.c)
  store <2 x double> %i.d, ptr %next.gep, align 16, !tbaa !30
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i32> %vec.ind, splat (i32 2)
  %i.e = icmp eq i64 %index.next, 16384
  br i1 %i.e, label %middle.block, label %vector.body, !llvm.loop !49

middle.block:                                     ; preds = %vector.body
  store double 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_65536_double, i64 131072), align 16, !tbaa !30
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_init_tab_131072_double() #5 {
vector.ph:
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.a = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr @ff_tx_tab_131072_double, i64 %i.a
  %i.b = uitofp nneg <2 x i32> %vec.ind to <2 x double>
  %i.c = fmul nnan nsz <2 x double> %i.b, splat (double f0x3F0921FB54442D18)
  %i.d = tail call nsz <2 x double> @llvm.cos.v2f64(<2 x double> %i.c)
  store <2 x double> %i.d, ptr %next.gep, align 16, !tbaa !30
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i32> %vec.ind, splat (i32 2)
  %i.e = icmp eq i64 %index.next, 32768
  br i1 %i.e, label %middle.block, label %vector.body, !llvm.loop !50

middle.block:                                     ; preds = %vector.body
  store double 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_131072_double, i64 262144), align 16, !tbaa !30
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_init_tab_53_double() #6 {
bb.a:
  store <2 x double> splat (double f0x3FD3C6EF372FE950), ptr @ff_tx_tab_53_double, align 16, !tbaa !30
  store <2 x double> splat (double f0x3FE9E3779B97F4A8), ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 16), align 16, !tbaa !30
  store <2 x double> splat (double f0x3FEE6F0E134454FF), ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 32), align 16, !tbaa !30
  store <2 x double> splat (double f0x3FE2CF2304755A5E), ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 48), align 16, !tbaa !30
  store <2 x double> splat (double f0x3FEBB67AE8584CAB), ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 64), align 16, !tbaa !30
  store <2 x double> <double f0x3FE0000000000001, double f0xBFE0000000000004>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 80), align 16, !tbaa !30
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_init_tab_9_double() #6 {
bb.a:
  store <2 x double> <double f0xBFDFFFFFFFFFFFFC, double f0x3FEBB67AE8584CAB>, ptr @ff_tx_tab_9_double, align 16, !tbaa !30
  store <2 x double> <double f0x3FE8836FA2CF5039, double f0x3FE491B7523C161C>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_9_double, i64 16), align 16, !tbaa !30
  store <2 x double> <double f0x3FEF838B8C811C17, double f0x3FC63A1A7E0B7389>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_9_double, i64 32), align 16, !tbaa !30
  store <2 x double> <double f0x3FEE11F642522D1B, double f0xBFD5E3A8748A0BF6>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_9_double, i64 48), align 16, !tbaa !30
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_init_tab_7_double() #6 {
bb.a:
  store <2 x double> <double f0x3FE3F3A0E28BEDD2, double f0x3FE904C37505DE4B>, ptr @ff_tx_tab_7_double, align 16, !tbaa !30
  store <2 x double> <double f0x3FCC7B90E3024582, double f0x3FEF329C0558E969>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_double, i64 16), align 16, !tbaa !30
  store <2 x double> <double f0x3FECD4BCA9CB5C71, double f0x3FDBC4C04D71ABC1>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_double, i64 32), align 16, !tbaa !30
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @ff_tx_fft2_ns_double_c(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, i64 %3) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load <2 x double>, ptr %2, align 8, !tbaa !30 ; 2 uses
  %i.c = load <2 x double>, ptr %i.a, align 8, !tbaa !30 ; 2 uses
  %i.d = fadd nsz <2 x double> %i.b, %i.c
  store <2 x double> %i.d, ptr %1, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = fsub nsz <2 x double> %i.b, %i.c
  store <2 x double> %i.f, ptr %i.e, align 8, !tbaa !30
  ret void
}

; Function Attrs: cold nounwind optsize uwtable
define internal i32 @ff_tx_fft_sr_codelet_init_double_c(ptr noundef %0, ptr nofree readnone captures(none) %1, i64 %2, ptr noundef %3, i32 noundef %4, i32 %5, ptr nofree readnone captures(none) %6) #0 {
bb.a:
  tail call void @ff_tx_init_tabs_double(i32 noundef %4) #17
  %i.a = tail call i32 @ff_tx_gen_ptwo_revtab(ptr noundef %0, ptr noundef %3) #16
  ret i32 %i.a
}

declare i32 @ff_tx_gen_ptwo_revtab(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @ff_tx_fft4_ns_double_c(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 64)) %1, ptr nofree noundef readonly captures(none) %2, i64 %3) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.e = load <2 x double>, ptr %2, align 8, !tbaa !30
  %i.f = shufflevector <2 x double> %i.e, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.g = load <2 x double>, ptr %i.a, align 8, !tbaa !30
  %i.h = shufflevector <2 x double> %i.g, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.i = fadd nsz <4 x double> %i.f, %i.h
  %i.j = fsub nsz <4 x double> %i.f, %i.h
  %i.k = shufflevector <4 x double> %i.i, <4 x double> %i.j, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.l = load <2 x double>, ptr %i.b, align 8, !tbaa !30
  %i.m = load <3 x double>, ptr %i.d, align 8, !tbaa !30 ; 2 uses
  %i.n = shufflevector <3 x double> %i.m, <3 x double> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1> ; 2 uses
  %i.o = shufflevector <3 x double> %i.m, <3 x double> poison, <4 x i32> <i32 poison, i32 poison, i32 2, i32 poison>
  %i.p = shufflevector <2 x double> %i.l, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.q = shufflevector <4 x double> %i.p, <4 x double> %i.o, <4 x i32> <i32 0, i32 1, i32 6, i32 0> ; 2 uses
  %i.r = fadd nsz <4 x double> %i.n, %i.q
  %i.s = fsub nsz <4 x double> %i.n, %i.q
  %i.t = shufflevector <4 x double> %i.r, <4 x double> %i.s, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.u = fsub nsz <4 x double> %i.k, %i.t
  store <4 x double> %i.u, ptr %i.c, align 8, !tbaa !30
  %i.v = fadd nsz <4 x double> %i.k, %i.t
  store <4 x double> %i.v, ptr %1, align 8, !tbaa !30
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_fft8_ns_double_c(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 128)) %1, ptr nofree noundef readonly captures(none) %2, i64 %3) #8 {
bb.a:
  %i.a = load double, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_8_double, i64 8), align 8, !tbaa !30 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.d = load double, ptr %i.c, align 8, !tbaa !51 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.h = load double, ptr %i.g, align 8, !tbaa !53 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ab = fneg nsz double %i.a
  %i.ac = load <2 x double>, ptr %2, align 8, !tbaa !30 ; 3 uses
  %i.ad = load <2 x double>, ptr %i.b, align 8, !tbaa !30 ; 3 uses
  %foldExtExtBinop = fadd nsz <2 x double> %i.ac, %i.ad
  %4 = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.ae = load <2 x double>, ptr %i.f, align 8, !tbaa !30 ; 3 uses
  %5 = extractelement <2 x double> %i.ae, i64 1
  %6 = fadd nsz double %5, %i.d                   ; 2 uses
  %7 = fsub nsz double %4, %6                     ; 3 uses
  store double %7, ptr %i.e, align 8, !tbaa !51
  %8 = fadd nsz double %4, %6                     ; 3 uses
  store double %8, ptr %1, align 8, !tbaa !51
  %i.af = fsub nsz <2 x double> %i.ac, %i.ad      ; 2 uses
  %foldExtExtBinop114 = fadd nsz <2 x double> %i.ac, %i.ad
  %9 = extractelement <2 x double> %foldExtExtBinop114, i64 1 ; 2 uses
  %i.ag = insertelement <2 x double> poison, double %i.h, i64 0
  %10 = insertelement <2 x double> %i.ag, double %i.d, i64 1
  %11 = fsub nsz <2 x double> %i.ae, %10          ; 2 uses
  %12 = extractelement <2 x double> %i.ae, i64 0
  %13 = fadd nsz double %12, %i.h                 ; 2 uses
  %i.ah = fadd nsz <2 x double> %11, %i.af        ; 3 uses
  store <2 x double> %i.ah, ptr %i.j, align 8, !tbaa !30
  %14 = fsub nsz double %9, %13                   ; 3 uses
  store double %14, ptr %i.k, align 8, !tbaa !53
  %15 = fadd nsz double %9, %13                   ; 3 uses
  store double %15, ptr %i.l, align 8, !tbaa !53
  %i.ai = insertelement <2 x double> poison, double %i.a, i64 0 ; 2 uses
  %i.aj = insertelement <2 x double> %i.ai, double %i.ab, i64 1
  %i.ak = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> zeroinitializer
  %i.al = fsub nsz <2 x double> %i.af, %11        ; 3 uses
  store <2 x double> %i.al, ptr %i.i, align 8, !tbaa !30
  %i.am = load double, ptr %i.m, align 8, !tbaa !51 ; 2 uses
  %i.an = load double, ptr %i.n, align 8, !tbaa !51 ; 2 uses
  %i.ao = fadd nsz double %i.am, %i.an            ; 2 uses
  %i.ap = fsub nsz double %i.am, %i.an            ; 2 uses
  store double %i.ap, ptr %i.o, align 8, !tbaa !51
  %i.aq = load double, ptr %i.p, align 8, !tbaa !53 ; 2 uses
  %i.ar = load double, ptr %i.q, align 8, !tbaa !53 ; 2 uses
  %i.as = fadd nsz double %i.aq, %i.ar            ; 2 uses
  %i.at = fsub nsz double %i.aq, %i.ar            ; 2 uses
  store double %i.at, ptr %i.r, align 8, !tbaa !53
  %i.au = load double, ptr %i.s, align 8, !tbaa !51 ; 2 uses
  %i.av = load double, ptr %i.t, align 8, !tbaa !51 ; 2 uses
  %i.aw = fadd nsz double %i.au, %i.av            ; 2 uses
  %i.ax = fsub nsz double %i.au, %i.av
  %i.ay = load double, ptr %i.v, align 8, !tbaa !53 ; 2 uses
  %i.az = load double, ptr %i.w, align 8, !tbaa !53 ; 2 uses
  %i.ba = fadd nsz double %i.ay, %i.az            ; 2 uses
  %i.bb = fsub nsz double %i.ay, %i.az
  %i.bc = fsub nsz double %i.aw, %i.ao            ; 2 uses
  %i.bd = fadd nsz double %i.ao, %i.aw            ; 2 uses
  %i.be = fsub nsz double %8, %i.bd
  store double %i.be, ptr %i.x, align 8, !tbaa !51
  %i.bf = fadd nsz double %8, %i.bd
  store double %i.bf, ptr %1, align 8, !tbaa !51
  %i.bg = fsub nsz double %14, %i.bc
  store double %i.bg, ptr %i.z, align 8, !tbaa !53
  %i.bh = fadd nsz double %14, %i.bc
  store double %i.bh, ptr %i.k, align 8, !tbaa !53
  %i.bi = fsub nsz double %i.as, %i.ba            ; 2 uses
  %i.bj = fadd nsz double %i.as, %i.ba            ; 2 uses
  %i.bk = fsub nsz double %7, %i.bi
  store double %i.bk, ptr %i.y, align 8, !tbaa !51
  %i.bl = fadd nsz double %7, %i.bi
  store double %i.bl, ptr %i.e, align 8, !tbaa !51
  %i.bm = fsub nsz double %15, %i.bj
  store double %i.bm, ptr %i.aa, align 8, !tbaa !53
  %i.bn = fadd nsz double %15, %i.bj
  store double %i.bn, ptr %i.l, align 8, !tbaa !53
  %i.bo = fmul nsz double %i.a, %i.at
  %i.bp = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.bq = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.br = insertelement <2 x double> poison, double %i.bo, i64 0
  %i.bs = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bt = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bq, <2 x double> %i.aj, <2 x double> %i.bs) ; 3 uses
  %i.bu = fmul nsz double %i.a, %i.bb             ; 2 uses
  %i.bv = fneg nsz double %i.bu
  %i.bw = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.bx = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.by = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.bz = insertelement <2 x double> %i.by, double %i.bu, i64 1
  %i.ca = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bx, <2 x double> %i.ak, <2 x double> %i.bz) ; 3 uses
  %i.cb = fadd nsz <2 x double> %i.bt, %i.ca      ; 2 uses
  %i.cc = shufflevector <2 x double> %i.bt, <2 x double> %i.ca, <2 x i32> <i32 1, i32 2>
  %i.cd = shufflevector <2 x double> %i.ca, <2 x double> %i.bt, <2 x i32> <i32 1, i32 2>
  %i.ce = fsub nsz <2 x double> %i.cc, %i.cd      ; 2 uses
  %i.cf = fsub nsz <2 x double> %i.al, %i.ce
  store <2 x double> %i.cf, ptr %i.u, align 8, !tbaa !30
  %i.cg = fadd nsz <2 x double> %i.al, %i.ce
  store <2 x double> %i.cg, ptr %i.i, align 8, !tbaa !30
  %i.ch = fsub nsz <2 x double> %i.ah, %i.cb
  store <2 x double> %i.ch, ptr %i.o, align 8, !tbaa !30
  %i.ci = fadd nsz <2 x double> %i.ah, %i.cb
  store <2 x double> %i.ci, ptr %i.j, align 8, !tbaa !30
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_fft16_ns_double_c(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) initializes((0, 256)) %1, ptr nofree noundef readonly captures(none) %2, i64 %3) #8 {
bb.a:
  %i.a = load double, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_16_double, i64 8), align 8, !tbaa !30 ; 4 uses
  %i.b = load double, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_16_double, i64 16), align 16, !tbaa !30 ; 4 uses
  %i.c = load double, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_16_double, i64 24), align 8, !tbaa !30 ; 4 uses
  tail call void @ff_tx_fft8_ns_double_c(ptr poison, ptr noundef %1, ptr noundef %2, i64 poison)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.p = load <2 x double>, ptr %i.e, align 8, !tbaa !30
  %i.q = shufflevector <2 x double> %i.p, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.r = load <2 x double>, ptr %i.f, align 8, !tbaa !30
  %i.s = shufflevector <2 x double> %i.r, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.t = fadd nsz <4 x double> %i.q, %i.s         ; 3 uses
  %i.u = fsub nsz <4 x double> %i.q, %i.s         ; 3 uses
  %i.v = shufflevector <4 x double> %i.t, <4 x double> %i.u, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.w = load <2 x double>, ptr %i.g, align 8, !tbaa !30
  %i.x = load <3 x double>, ptr %i.i, align 8, !tbaa !30 ; 2 uses
  %i.y = shufflevector <3 x double> %i.x, <3 x double> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1> ; 2 uses
  %i.z = shufflevector <3 x double> %i.x, <3 x double> poison, <4 x i32> <i32 poison, i32 poison, i32 2, i32 poison>
  %i.aa = shufflevector <2 x double> %i.w, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ab = shufflevector <4 x double> %i.aa, <4 x double> %i.z, <4 x i32> <i32 0, i32 1, i32 6, i32 0> ; 2 uses
  %i.ac = fadd nsz <4 x double> %i.y, %i.ab       ; 3 uses
  %i.ad = fsub nsz <4 x double> %i.y, %i.ab       ; 3 uses
  %i.ae = shufflevector <4 x double> %i.ac, <4 x double> %i.ad, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.af = shufflevector <4 x double> %i.t, <4 x double> %i.u, <2 x i32> <i32 0, i32 7>
  %i.ag = shufflevector <4 x double> %i.ac, <4 x double> %i.ad, <2 x i32> <i32 0, i32 7>
  %i.ah = fsub nsz <2 x double> %i.af, %i.ag      ; 2 uses
  %i.ai = extractelement <2 x double> %i.ah, i64 0
  store double %i.ai, ptr %i.h, align 8, !tbaa !51
  %i.aj = extractelement <2 x double> %i.ah, i64 1
  store double %i.aj, ptr %i.k, align 8, !tbaa !53
  %i.ak = shufflevector <4 x double> %i.t, <4 x double> %i.u, <2 x i32> <i32 1, i32 6>
  %i.al = shufflevector <4 x double> %i.ac, <4 x double> %i.ad, <2 x i32> <i32 1, i32 6>
  %i.am = fsub nsz <2 x double> %i.ak, %i.al      ; 2 uses
  store <2 x double> %i.am, ptr %i.n, align 8, !tbaa !30
  %i.an = fadd nsz <4 x double> %i.v, %i.ae       ; 3 uses
  store <4 x double> %i.an, ptr %i.d, align 8, !tbaa !30
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !51 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.as = load double, ptr %i.ar, align 8, !tbaa !51 ; 2 uses
  %i.at = fsub nsz double %i.aq, %i.as            ; 2 uses
  %i.au = fadd nsz double %i.aq, %i.as            ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.aw = load double, ptr %i.av, align 8, !tbaa !51 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !51 ; 2 uses
  %i.az = fsub nsz double %i.aw, %i.ay            ; 2 uses
  %i.ba = fadd nsz double %i.aw, %i.ay            ; 2 uses
  %i.bb = fsub nsz double %i.au, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.bd = fadd nsz double %i.au, %i.ba            ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.bf = load double, ptr %i.be, align 8, !tbaa !53 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !53 ; 2 uses
  %i.bi = fsub nsz double %i.bf, %i.bh            ; 2 uses
  %i.bj = fadd nsz double %i.bf, %i.bh            ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 232
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !53 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 248
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !53 ; 2 uses
  %i.bo = fsub nsz double %i.bl, %i.bn            ; 2 uses
  %i.bp = fadd nsz double %i.bl, %i.bn            ; 2 uses
  %i.bq = fsub nsz double %i.bi, %i.az
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  store double %i.bq, ptr %i.bs, align 8, !tbaa !53
  %i.bt = fadd nsz double %i.az, %i.bi
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.bv = fsub nsz double %i.at, %i.bo
  store double %i.bv, ptr %i.br, align 8, !tbaa !51
  %i.bw = fadd nsz double %i.at, %i.bo
  %i.bx = fsub nsz double %i.bj, %i.bp
  %i.by = fadd nsz double %i.bj, %i.bp            ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.ca = load double, ptr %1, align 8, !tbaa !51 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !53 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !51 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !53 ; 2 uses
  %i.ch = extractelement <4 x double> %i.an, i64 0 ; 2 uses
  %i.ci = fsub nsz double %i.bd, %i.ch            ; 2 uses
  %i.cj = fadd nsz double %i.ch, %i.bd            ; 2 uses
  %i.ck = fsub nsz double %i.ca, %i.cj
  store double %i.ck, ptr %i.d, align 8, !tbaa !51
  %i.cl = fadd nsz double %i.cj, %i.ca
  store double %i.cl, ptr %1, align 8, !tbaa !51
  %i.cm = fsub nsz double %i.cg, %i.ci
  store double %i.cm, ptr %i.bz, align 8, !tbaa !53
  %i.cn = fadd nsz double %i.ci, %i.cg
  store double %i.cn, ptr %i.cf, align 8, !tbaa !53
  %i.co = extractelement <4 x double> %i.an, i64 1 ; 2 uses
  %i.cp = fsub nsz double %i.co, %i.by            ; 2 uses
  %i.cq = fadd nsz double %i.by, %i.co            ; 2 uses
  %i.cr = fsub nsz double %i.ce, %i.cp
  store double %i.cr, ptr %i.ao, align 8, !tbaa !51
  %i.cs = fadd nsz double %i.cp, %i.ce
  store double %i.cs, ptr %i.cd, align 8, !tbaa !51
  %i.ct = fsub nsz double %i.cc, %i.cq
  store double %i.ct, ptr %i.o, align 8, !tbaa !53
  %i.cu = fadd nsz double %i.cq, %i.cc
  store double %i.cu, ptr %i.cb, align 8, !tbaa !53
  %i.cv = load double, ptr %i.h, align 8, !tbaa !51
  %i.cw = fneg nsz double %i.b
  %i.cx = extractelement <2 x double> %i.am, i64 0
  %i.cy = fmul nsz double %i.b, %i.cx
  %i.cz = fmul nsz double %i.b, %i.bx             ; 2 uses
  %i.da = fneg nsz double %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.dd = insertelement <2 x double> poison, double %i.cv, i64 0
  %i.de = shufflevector <2 x double> %i.dd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.df = insertelement <2 x double> poison, double %i.b, i64 0 ; 2 uses
  %i.dg = insertelement <2 x double> %i.df, double %i.cw, i64 1
  %i.dh = insertelement <2 x double> poison, double %i.cy, i64 0
  %i.di = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dj = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.de, <2 x double> %i.dg, <2 x double> %i.di) ; 3 uses
  %i.dk = insertelement <2 x double> poison, double %i.bb, i64 0
  %i.dl = shufflevector <2 x double> %i.dk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dm = shufflevector <2 x double> %i.df, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dn = insertelement <2 x double> poison, double %i.da, i64 0
  %i.do = insertelement <2 x double> %i.dn, double %i.cz, i64 1
  %i.dp = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dl, <2 x double> %i.dm, <2 x double> %i.do) ; 3 uses
  %i.dq = load <2 x double>, ptr %i.db, align 8, !tbaa !30 ; 2 uses
  %i.dr = fadd nsz <2 x double> %i.dj, %i.dp      ; 2 uses
  %i.ds = load <2 x double>, ptr %i.dc, align 8, !tbaa !30 ; 2 uses
  %i.dt = shufflevector <2 x double> %i.dj, <2 x double> %i.dp, <2 x i32> <i32 1, i32 2>
  %i.du = shufflevector <2 x double> %i.dp, <2 x double> %i.dj, <2 x i32> <i32 1, i32 2>
  %i.dv = fsub nsz <2 x double> %i.dt, %i.du      ; 2 uses
  %i.dw = fsub nsz <2 x double> %i.ds, %i.dv
  store <2 x double> %i.dw, ptr %i.bc, align 8, !tbaa !30
  %i.dx = fadd nsz <2 x double> %i.ds, %i.dv
  store <2 x double> %i.dx, ptr %i.dc, align 8, !tbaa !30
  %i.dy = fsub nsz <2 x double> %i.dq, %i.dr
  store <2 x double> %i.dy, ptr %i.h, align 8, !tbaa !30
  %i.dz = fadd nsz <2 x double> %i.dq, %i.dr
  store <2 x double> %i.dz, ptr %i.db, align 8, !tbaa !30
  %i.ea = load double, ptr %i.l, align 8, !tbaa !51
  %i.eb = load double, ptr %i.m, align 8, !tbaa !53
  %i.ec = fneg nsz double %i.c
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ef = insertelement <2 x double> poison, double %i.c, i64 0
  %i.eg = insertelement <2 x double> %i.ef, double %i.a, i64 1 ; 3 uses
  %i.eh = insertelement <2 x double> poison, double %i.eb, i64 0
  %i.ei = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ej = fmul nsz <2 x double> %i.eg, %i.ei
  %i.ek = insertelement <2 x double> poison, double %i.ea, i64 0
  %i.el = shufflevector <2 x double> %i.ek, <2 x double> poison, <2 x i32> zeroinitializer
  %i.em = insertelement <2 x double> poison, double %i.a, i64 0
  %i.en = insertelement <2 x double> %i.em, double %i.ec, i64 1 ; 2 uses
  %i.eo = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.el, <2 x double> %i.en, <2 x double> %i.ej) ; 3 uses
  %i.ep = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.eq = shufflevector <2 x double> %i.ep, <2 x double> poison, <2 x i32> zeroinitializer
  %i.er = fmul nsz <2 x double> %i.eq, %i.en
  %i.es = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.et = shufflevector <2 x double> %i.es, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eu = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.et, <2 x double> %i.eg, <2 x double> %i.er) ; 3 uses
  %i.ev = shufflevector <2 x double> %i.eu, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ew = load <2 x double>, ptr %i.ed, align 8, !tbaa !30 ; 2 uses
  %i.ex = fadd nsz <2 x double> %i.eo, %i.ev      ; 2 uses
  %i.ey = load <2 x double>, ptr %i.ee, align 8, !tbaa !30 ; 2 uses
  %i.ez = shufflevector <2 x double> %i.eo, <2 x double> %i.eu, <2 x i32> <i32 1, i32 3>
  %i.fa = shufflevector <2 x double> %i.eu, <2 x double> %i.eo, <2 x i32> <i32 0, i32 2>
  %i.fb = fsub nsz <2 x double> %i.ez, %i.fa      ; 2 uses
  %i.fc = fsub nsz <2 x double> %i.ey, %i.fb
  store <2 x double> %i.fc, ptr %i.bu, align 8, !tbaa !30
  %i.fd = fadd nsz <2 x double> %i.ey, %i.fb
  store <2 x double> %i.fd, ptr %i.ee, align 8, !tbaa !30
  %i.fe = fsub nsz <2 x double> %i.ew, %i.ex
  store <2 x double> %i.fe, ptr %i.l, align 8, !tbaa !30
  %i.ff = fadd nsz <2 x double> %i.ew, %i.ex
  store <2 x double> %i.ff, ptr %i.ed, align 8, !tbaa !30
  %i.fg = load double, ptr %i.j, align 8, !tbaa !51
  %i.fh = load double, ptr %i.k, align 8, !tbaa !53
  %i.fi = fneg nsz double %i.a
  %i.fj = load double, ptr %i.br, align 8, !tbaa !51
  %i.fk = load double, ptr %i.bs, align 8, !tbaa !53
end_hunk_0

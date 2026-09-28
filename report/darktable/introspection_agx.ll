Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_agx?download=true
inline.NumInlined: 178
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_apply_primaries_from_menu_callback:bb.a
  tail call void @dt_iop_gui_update(ptr noundef nonnull %1) #22
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !157
  tail call void @dt_dev_add_history_item(ptr noundef %i.ab, ptr noundef nonnull %1, i32 noundef 1) #22
  ret void
}

declare void @gtk_menu_shell_append(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_show_all(ptr noundef) local_unnamed_addr #3

declare void @dt_gui_menu_popup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gtk_widget_get_name(ptr noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set_feedback(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set_stop(ptr noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

declare float @dt_bauhaus_slider_get_soft_min(ptr noundef) local_unnamed_addr #3

declare float @dt_bauhaus_slider_get_soft_max(ptr noundef) local_unnamed_addr #3

declare float @dt_bauhaus_slider_get_hard_min(ptr noundef) local_unnamed_addr #3

declare float @dt_bauhaus_slider_get_hard_max(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc float @_luminance_from_profile(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #20 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 768
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 852
  %i.c = load i32, ptr %i.b, align 4, !tbaa !250
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 712
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.f = load i32, ptr %i.e, align 64, !tbaa !251 ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  %i.h = sitofp reassoc nsz arcp contract afn i32 %i.g to float ; 9 uses
  %i.i = add nsw i32 %i.f, -2
  %i.j = sitofp reassoc nsz arcp contract afn i32 %i.i to float ; 6 uses
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !252  ; 2 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !12
  %i.m = fcmp reassoc nsz arcp contract afn ult float %i.l, 0.000000e+00
  %i.n = load float, ptr %0, align 4, !tbaa !12   ; 4 uses
  br i1 %i.m, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = fcmp reassoc nsz arcp contract afn olt float %i.n, 1.000000e+00
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = fmul reassoc nsz arcp contract afn float %i.n, %i.h ; 3 uses
  %i.q = fcmp reassoc nsz arcp contract afn ogt float %i.p, 0.000000e+00
  %i.r = fcmp reassoc nsz arcp contract afn olt float %i.p, %i.h
  %..i.i.i = select reassoc nsz arcp contract afn i1 %i.r, float %i.p, float %i.h
  %i.s = select reassoc nsz arcp contract afn i1 %i.q, float %..i.i.i, float 0.000000e+00 ; 3 uses
  %i.t = fcmp reassoc nsz arcp contract afn olt float %i.s, %i.j
  %i.u = select reassoc nsz arcp contract afn i1 %i.t, float %i.s, float %i.j
  %i.v = fptosi float %i.u to i32                 ; 2 uses
  %i.w = sitofp reassoc nsz arcp contract afn i32 %i.v to float
  %i.x = fsub reassoc nnan nsz arcp contract afn float %i.s, %i.w
  %i.y = sext i32 %i.v to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.y ; 2 uses
  %i.aa = load float, ptr %i.z, align 4, !tbaa !12 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.z, i64 4
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !12
  %i.ad = fsub reassoc nsz arcp contract afn float %i.ac, %i.aa
  %i.ae = fmul reassoc nsz arcp contract afn float %i.ad, %i.x
  %i.af = fadd reassoc nsz arcp contract afn float %i.ae, %i.aa
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 772
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !12
  %i.ai = load float, ptr %i.a, align 64, !tbaa !12
  %i.aj = fmul reassoc nsz arcp contract afn float %i.ai, %i.n
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 776
  %i.al = load float, ptr %i.ak, align 8, !tbaa !12
  %i.am = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.aj, float %i.al)
  %i.an = fmul reassoc nsz arcp contract afn float %i.am, %i.ah
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %i.ao = phi reassoc nsz arcp contract afn float [ %i.an, %bb.e ], [ %i.af, %bb.d ], [ %i.n, %bb.b ]
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 720
  %i.aq = load ptr, ptr %i.ap, align 16, !tbaa !252 ; 2 uses
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !12
  %i.as = fcmp reassoc nsz arcp contract afn ult float %i.ar, 0.000000e+00
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.au = load float, ptr %i.at, align 4, !tbaa !12 ; 4 uses
  br i1 %i.as, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = fcmp reassoc nsz arcp contract afn olt float %i.au, 1.000000e+00
  br i1 %i.av, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 780
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 784
  %i.ay = load float, ptr %i.ax, align 16, !tbaa !12
  %i.az = load float, ptr %i.aw, align 4, !tbaa !12
  %i.ba = fmul reassoc nsz arcp contract afn float %i.az, %i.au
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 788
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !12
  %i.bd = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ba, float %i.bc)
  %i.be = fmul reassoc nsz arcp contract afn float %i.bd, %i.ay
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bf = fmul reassoc nsz arcp contract afn float %i.au, %i.h ; 3 uses
  %i.bg = fcmp reassoc nsz arcp contract afn ogt float %i.bf, 0.000000e+00
  %i.bh = fcmp reassoc nsz arcp contract afn olt float %i.bf, %i.h
  %..i.1.i.i = select reassoc nsz arcp contract afn i1 %i.bh, float %i.bf, float %i.h
  %i.bi = select reassoc nsz arcp contract afn i1 %i.bg, float %..i.1.i.i, float 0.000000e+00 ; 3 uses
  %i.bj = fcmp reassoc nsz arcp contract afn olt float %i.bi, %i.j
  %i.bk = select reassoc nsz arcp contract afn i1 %i.bj, float %i.bi, float %i.j
  %i.bl = fptosi float %i.bk to i32               ; 2 uses
  %i.bm = sitofp reassoc nsz arcp contract afn i32 %i.bl to float
  %i.bn = fsub reassoc nnan nsz arcp contract afn float %i.bi, %i.bm
  %i.bo = sext i32 %i.bl to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.bo ; 2 uses
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !12 ; 2 uses
  %i.br = getelementptr i8, ptr %i.bp, i64 4
  %i.bs = load float, ptr %i.br, align 4, !tbaa !12
  %i.bt = fsub reassoc nsz arcp contract afn float %i.bs, %i.bq
  %i.bu = fmul reassoc nsz arcp contract afn float %i.bt, %i.bn
  %i.bv = fadd reassoc nsz arcp contract afn float %i.bu, %i.bq
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f
  %i.bw = phi reassoc nsz arcp contract afn float [ %i.be, %bb.h ], [ %i.bv, %bb.i ], [ %i.au, %bb.f ]
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 728
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !252 ; 2 uses
  %i.bz = load float, ptr %i.by, align 4, !tbaa !12
  %i.ca = fcmp reassoc nsz arcp contract afn ult float %i.bz, 0.000000e+00
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !12 ; 4 uses
  br i1 %i.ca, label %dt_ioppr_apply_trc.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cd = fcmp reassoc nsz arcp contract afn olt float %i.cc, 1.000000e+00
  br i1 %i.cd, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 792
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 796
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !12
  %i.ch = load float, ptr %i.ce, align 8, !tbaa !12
  %i.ci = fmul reassoc nsz arcp contract afn float %i.ch, %i.cc
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 800
  %i.ck = load float, ptr %i.cj, align 32, !tbaa !12
  %i.cl = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ci, float %i.ck)
  %i.cm = fmul reassoc nsz arcp contract afn float %i.cl, %i.cg
  br label %dt_ioppr_apply_trc.exit.i

bb.m:                                             ; preds = %bb.k
  %i.cn = fmul reassoc nsz arcp contract afn float %i.cc, %i.h ; 3 uses
  %i.co = fcmp reassoc nsz arcp contract afn ogt float %i.cn, 0.000000e+00
  %i.cp = fcmp reassoc nsz arcp contract afn olt float %i.cn, %i.h
  %..i.2.i.i = select reassoc nsz arcp contract afn i1 %i.cp, float %i.cn, float %i.h
  %i.cq = select reassoc nsz arcp contract afn i1 %i.co, float %..i.2.i.i, float 0.000000e+00 ; 3 uses
  %i.cr = fcmp reassoc nsz arcp contract afn olt float %i.cq, %i.j
  %i.cs = select reassoc nsz arcp contract afn i1 %i.cr, float %i.cq, float %i.j
  %i.ct = fptosi float %i.cs to i32               ; 2 uses
  %i.cu = sitofp reassoc nsz arcp contract afn i32 %i.ct to float
  %i.cv = fsub reassoc nnan nsz arcp contract afn float %i.cq, %i.cu
  %i.cw = sext i32 %i.ct to i64
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.cw ; 2 uses
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !12 ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cx, i64 4
  %i.da = load float, ptr %i.cz, align 4, !tbaa !12
  %i.db = fsub reassoc nsz arcp contract afn float %i.da, %i.cy
  %i.dc = fmul reassoc nsz arcp contract afn float %i.db, %i.cv
  %i.dd = fadd reassoc nsz arcp contract afn float %i.dc, %i.cy
  br label %dt_ioppr_apply_trc.exit.i

dt_ioppr_apply_trc.exit.i:                        ; preds = %bb.m, %bb.l, %bb.j
  %i.de = phi reassoc nsz arcp contract afn float [ %i.cm, %bb.l ], [ %i.dd, %bb.m ], [ %i.cc, %bb.j ]
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 592
  %i.dg = load float, ptr %i.df, align 16, !tbaa !12
  %i.dh = fmul reassoc nsz arcp contract afn float %i.dg, %i.ao
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 596
  %i.dj = load float, ptr %i.di, align 4, !tbaa !12
  %i.dk = fmul reassoc nsz arcp contract afn float %i.dj, %i.bw
  %i.dl = fadd reassoc nsz arcp contract afn float %i.dk, %i.dh
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 600
  %i.dn = load float, ptr %i.dm, align 8, !tbaa !12
  %i.do = fmul reassoc nsz arcp contract afn float %i.dn, %i.de
  %i.dp = fadd reassoc nsz arcp contract afn float %i.dl, %i.do
  br label %dt_ioppr_get_rgb_matrix_luminance.exit

bb.n:                                             ; preds = %bb.a
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 592
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !12
  %i.ds = load float, ptr %0, align 4, !tbaa !12
  %i.dt = fmul reassoc nsz arcp contract afn float %i.ds, %i.dr
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 596
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 4
  %2 = load <2 x float>, ptr %i.du, align 4, !tbaa !12
  %3 = load <2 x float>, ptr %i.dv, align 4, !tbaa !12
  %4 = fmul reassoc nsz arcp contract afn <2 x float> %3, %2 ; 2 uses
  %5 = extractelement <2 x float> %4, i64 0
  %6 = fadd reassoc nsz arcp contract afn float %5, %i.dt
  %7 = extractelement <2 x float> %4, i64 1
  %i.dw = fadd reassoc nsz arcp contract afn float %6, %7
  br label %dt_ioppr_get_rgb_matrix_luminance.exit

dt_ioppr_get_rgb_matrix_luminance.exit:           ; preds = %dt_ioppr_apply_trc.exit.i, %bb.n
  %.0.i = phi nsz float [ %i.dp, %dt_ioppr_apply_trc.exit.i ], [ %i.dw, %bb.n ]
  ret float %.0.i
}

declare void @dt_bauhaus_widget_set_quad_paint(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @dtgtk_cairo_paint_warning(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <5 x float> @llvm.masked.load.v5f32.p0(ptr captures(none), <5 x i1>, <5 x float>) #21

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #22 = { nounwind }
attributes #23 = { nounwind allocsize(0,1) }
attributes #24 = { nounwind willreturn memory(none) }
attributes #25 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"float", !7, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"dt_iop_agx_params_t", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !8, i64 64, !11, i64 68, !11, i64 72, !8, i64 76, !8, i64 80, !11, i64 84, !11, i64 88, !11, i64 92, !11, i64 96, !11, i64 100, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !11, i64 128, !11, i64 132, !11, i64 136, !8, i64 140}
!14 = !{!13, !11, i64 72}
!15 = !{!13, !11, i64 60}
!16 = !{!13, !8, i64 76}
!17 = !{!13, !11, i64 108}
!18 = !{!"any pointer", !7, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!8, !8, i64 0}
!21 = !{!"p1 _ZTS8_GModule", !18, i64 0}
!22 = !{!"p1 int", !18, i64 0}
!23 = !{!"long", !7, i64 0}
!24 = !{!"dt_dev_histogram_stats_t", !8, i64 0, !23, i64 8, !8, i64 16, !8, i64 20}
!25 = !{!"p1 _ZTS12dt_develop_t", !18, i64 0}
!26 = !{!"dt_pthread_mutex_t", !7, i64 0}
!27 = !{!"p1 _ZTS25dt_develop_blend_params_t", !18, i64 0}
!28 = !{!"p1 _ZTS11_GHashTable", !18, i64 0}
!29 = !{!"", !28, i64 0, !28, i64 8}
!30 = !{!"p1 _ZTS15dt_iop_module_t", !18, i64 0}
!31 = !{!"", !30, i64 0, !8, i64 8}
!32 = !{!"", !29, i64 0, !31, i64 16}
!33 = !{!"p1 _ZTS10_GtkWidget", !18, i64 0}
!34 = !{!"p1 _ZTS7_GSList", !18, i64 0}
!35 = !{!"p1 _ZTS18dt_iop_module_so_t", !18, i64 0}
!36 = !{!"dt_iop_module_t", !8, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !18, i64 80, !18, i64 88, !18, i64 96, !18, i64 104, !18, i64 112, !18, i64 120, !18, i64 128, !18, i64 136, !18, i64 144, !18, i64 152, !18, i64 160, !18, i64 168, !18, i64 176, !18, i64 184, !18, i64 192, !18, i64 200, !18, i64 208, !18, i64 216, !18, i64 224, !18, i64 232, !18, i64 240, !18, i64 248, !18, i64 256, !18, i64 264, !18, i64 272, !18, i64 280, !18, i64 288, !18, i64 296, !18, i64 304, !18, i64 312, !18, i64 320, !18, i64 328, !18, i64 336, !18, i64 344, !18, i64 352, !18, i64 360, !18, i64 368, !18, i64 376, !18, i64 384, !18, i64 392, !18, i64 400, !18, i64 408, !18, i64 416, !18, i64 424, !18, i64 432, !18, i64 440, !21, i64 448, !7, i64 456, !8, i64 476, !8, i64 480, !8, i64 484, !8, i64 488, !8, i64 492, !8, i64 496, !8, i64 500, !8, i64 504, !7, i64 512, !7, i64 528, !7, i64 544, !7, i64 560, !7, i64 576, !7, i64 592, !22, i64 608, !24, i64 616, !7, i64 640, !8, i64 656, !8, i64 660, !25, i64 664, !8, i64 672, !8, i64 676, !18, i64 680, !18, i64 688, !8, i64 696, !18, i64 704, !26, i64 712, !18, i64 752, !18, i64 760, !27, i64 768, !27, i64 776, !18, i64 784, !32, i64 792, !33, i64 824, !33, i64 832, !33, i64 840, !33, i64 848, !33, i64 856, !33, i64 864, !33, i64 872, !8, i64 880, !33, i64 888, !33, i64 896, !33, i64 904, !34, i64 912, !34, i64 920, !33, i64 928, !33, i64 936, !8, i64 944, !35, i64 952, !8, i64 960, !7, i64 964, !8, i64 1092, !33, i64 1096, !18, i64 1104, !8, i64 1112}
!37 = !{!"p1 omnipotent char", !18, i64 0}
!38 = !{!"p1 _ZTS11dt_action_t", !18, i64 0}
!39 = !{!"dt_action_t", !8, i64 0, !37, i64 8, !37, i64 16, !18, i64 24, !38, i64 32, !38, i64 40}
!40 = !{!"dt_iop_module_so_t", !39, i64 0, !18, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !18, i64 80, !18, i64 88, !18, i64 96, !18, i64 104, !18, i64 112, !18, i64 120, !18, i64 128, !18, i64 136, !18, i64 144, !18, i64 152, !18, i64 160, !18, i64 168, !18, i64 176, !18, i64 184, !18, i64 192, !18, i64 200, !18, i64 208, !18, i64 216, !18, i64 224, !18, i64 232, !18, i64 240, !18, i64 248, !18, i64 256, !18, i64 264, !18, i64 272, !18, i64 280, !18, i64 288, !18, i64 296, !18, i64 304, !18, i64 312, !18, i64 320, !18, i64 328, !18, i64 336, !18, i64 344, !18, i64 352, !18, i64 360, !18, i64 368, !18, i64 376, !18, i64 384, !18, i64 392, !18, i64 400, !18, i64 408, !18, i64 416, !18, i64 424, !18, i64 432, !18, i64 440, !18, i64 448, !18, i64 456, !18, i64 464, !18, i64 472, !18, i64 480, !21, i64 488, !7, i64 496, !18, i64 520, !8, i64 528, !18, i64 536, !8, i64 544, !8, i64 548}
!41 = !{!40, !18, i64 48}
!42 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !18, i64 0}
!43 = !{!"p1 _ZTS18dt_histogram_roi_t", !18, i64 0}
!44 = !{!"dt_dev_histogram_collection_params_t", !43, i64 0, !8, i64 8}
!45 = !{!"dt_iop_roi_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !11, i64 16}
!46 = !{!"short", !7, i64 0}
!47 = !{!"", !46, i64 0, !46, i64 2}
!48 = !{!"", !8, i64 0, !7, i64 16}
!49 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 12, !47, i64 48, !48, i64 64, !7, i64 96, !8, i64 112}
!50 = !{!"p1 float", !18, i64 0}
!51 = !{!"dt_dev_distorted_mask_cache_t", !50, i64 0, !45, i64 8, !23, i64 32, !23, i64 40}
!52 = !{!"dt_dev_pixelpipe_iop_t", !30, i64 0, !42, i64 8, !18, i64 16, !18, i64 24, !8, i64 32, !8, i64 36, !44, i64 40, !22, i64 56, !24, i64 64, !7, i64 88, !11, i64 104, !8, i64 108, !8, i64 112, !23, i64 120, !8, i64 128, !8, i64 132, !45, i64 136, !45, i64 156, !45, i64 176, !45, i64 196, !8, i64 216, !8, i64 220, !49, i64 224, !49, i64 352, !7, i64 480, !8, i64 516, !28, i64 520, !51, i64 528, !51, i64 576}
!53 = !{!52, !18, i64 16}
!54 = !{!36, !25, i64 664}
!55 = !{!"tone_mapping_params_t", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !8, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !11, i64 76, !11, i64 80, !8, i64 84, !11, i64 88, !11, i64 92, !11, i64 96, !11, i64 100, !11, i64 104, !11, i64 108, !11, i64 112, !8, i64 116, !8, i64 120}
!56 = !{!"dt_codepath_t", !8, i64 0}
!57 = !{!"p1 _ZTS6_GList", !18, i64 0}
!58 = !{!"p1 _ZTS11_JsonParser", !18, i64 0}
!59 = !{!"p1 _ZTS9dt_conf_t", !18, i64 0}
!60 = !{!"p1 _ZTS8dt_lib_t", !18, i64 0}
!61 = !{!"p1 _ZTS17dt_view_manager_t", !18, i64 0}
!62 = !{!"p1 _ZTS12dt_control_t", !18, i64 0}
!63 = !{!"p1 _ZTS19dt_control_signal_t", !18, i64 0}
!64 = !{!"p1 _ZTS12dt_gui_gtk_t", !18, i64 0}
!65 = !{!"p1 _ZTS17dt_mipmap_cache_t", !18, i64 0}
!66 = !{!"p1 _ZTS16dt_image_cache_t", !18, i64 0}
!67 = !{!"p1 _ZTS12dt_bauhaus_t", !18, i64 0}
!68 = !{!"p1 _ZTS13dt_database_t", !18, i64 0}
!69 = !{!"p1 _ZTS14dt_pwstorage_t", !18, i64 0}
!70 = !{!"p1 _ZTS11dt_camctl_t", !18, i64 0}
!71 = !{!"p1 _ZTS15dt_collection_t", !18, i64 0}
!72 = !{!"p1 _ZTS14dt_selection_t", !18, i64 0}
!73 = !{!"p1 _ZTS11dt_points_t", !18, i64 0}
!74 = !{!"p1 _ZTS12dt_imageio_t", !18, i64 0}
!75 = !{!"p1 _ZTS11dt_opencl_t", !18, i64 0}
!76 = !{!"p1 _ZTS9dt_dbus_t", !18, i64 0}
!77 = !{!"p1 _ZTS9dt_undo_t", !18, i64 0}
!78 = !{!"p1 _ZTS16dt_colorspaces_t", !18, i64 0}
!79 = !{!"p1 _ZTS9dt_l10n_t", !18, i64 0}
!80 = !{!"p1 _ZTS9lua_State", !18, i64 0}
!81 = !{!"_Bool", !7, i64 0}
!82 = !{!"p1 _ZTS10_GMainLoop", !18, i64 0}
!83 = !{!"p1 _ZTS13_GMainContext", !18, i64 0}
!84 = !{!"p1 _ZTS12_GThreadPool", !18, i64 0}
!85 = !{!"p1 _ZTS12_GAsyncQueue", !18, i64 0}
!86 = !{!"", !80, i64 0, !26, i64 8, !7, i64 48, !81, i64 96, !81, i64 97, !82, i64 104, !83, i64 112, !84, i64 120, !85, i64 128, !85, i64 136, !85, i64 144}
!87 = !{!"double", !7, i64 0}
!88 = !{!"p1 _ZTS10_GTimeZone", !18, i64 0}
!89 = !{!"p1 _ZTS10_GDateTime", !18, i64 0}
!90 = !{!"dt_sys_resources_t", !23, i64 0, !23, i64 8, !22, i64 16, !22, i64 24, !8, i64 32}
!91 = !{!"dt_backthumb_t", !87, i64 0, !87, i64 8, !8, i64 16, !8, i64 20}
!92 = !{!"dt_gimp_t", !8, i64 0, !37, i64 8, !37, i64 16, !8, i64 24, !8, i64 28}
!93 = !{!"dt_splash_t", !33, i64 0, !33, i64 8, !33, i64 16, !33, i64 24, !8, i64 32}
!94 = !{!"darktable_t", !56, i64 0, !8, i64 4, !8, i64 8, !57, i64 16, !57, i64 24, !57, i64 32, !57, i64 40, !58, i64 48, !59, i64 56, !25, i64 64, !60, i64 72, !61, i64 80, !62, i64 88, !63, i64 96, !64, i64 104, !65, i64 112, !66, i64 120, !67, i64 128, !68, i64 136, !69, i64 144, !70, i64 152, !71, i64 160, !72, i64 168, !73, i64 176, !74, i64 184, !75, i64 192, !76, i64 200, !77, i64 208, !78, i64 216, !79, i64 224, !7, i64 232, !26, i64 2792, !26, i64 2832, !26, i64 2872, !26, i64 2912, !26, i64 2952, !26, i64 2992, !37, i64 3032, !37, i64 3040, !37, i64 3048, !37, i64 3056, !37, i64 3064, !37, i64 3072, !37, i64 3080, !37, i64 3088, !37, i64 3096, !37, i64 3104, !37, i64 3112, !37, i64 3120, !37, i64 3128, !86, i64 3136, !57, i64 3288, !87, i64 3296, !57, i64 3304, !8, i64 3312, !7, i64 3316, !8, i64 3512, !8, i64 3516, !88, i64 3520, !89, i64 3528, !90, i64 3536, !91, i64 3576, !92, i64 3600, !93, i64 3632, !8, i64 3672}
!95 = !{!55, !11, i64 8}
!96 = !{!55, !11, i64 0}
!97 = !{!55, !11, i64 32}
!98 = !{!55, !11, i64 24}
!99 = !{!55, !8, i64 44}
!100 = !{!55, !11, i64 48}
!101 = !{!55, !11, i64 52}
!102 = !{!55, !11, i64 40}
!103 = !{!55, !11, i64 56}
!104 = !{!55, !11, i64 28}
!105 = !{!55, !11, i64 36}
!106 = !{!55, !11, i64 72}
!107 = !{!55, !11, i64 60}
!108 = !{!55, !8, i64 84}
!109 = !{!55, !11, i64 64}
!110 = !{!55, !11, i64 88}
!111 = !{!55, !11, i64 92}
!112 = !{!55, !11, i64 80}
!113 = !{!55, !11, i64 68}
!114 = !{!55, !11, i64 76}
!115 = !{!55, !11, i64 104}
!116 = !{!55, !11, i64 12}
!117 = !{!36, !18, i64 704}
!118 = !{!36, !18, i64 680}
!119 = !{!94, !64, i64 104}
!120 = !{!"p1 _ZTS12_GtkNotebook", !18, i64 0}
!121 = !{!"p1 _ZTS15_GtkDrawingArea", !18, i64 0}
!122 = !{!"p1 _ZTS7_GtkBox", !18, i64 0}
!123 = !{!"_gui_collapsible_section_t", !122, i64 0, !37, i64 8, !33, i64 16, !33, i64 24, !33, i64 32, !122, i64 40, !38, i64 48}
!124 = !{!"dt_iop_basic_curve_controls_t", !33, i64 0, !33, i64 8, !33, i64 16, !33, i64 24, !33, i64 32}
!125 = !{!"_cairo_rectangle_int", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12}
!126 = !{!"_PangoRectangle", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12}
!127 = !{!"p1 _ZTS16_GtkStyleContext", !18, i64 0}
!128 = !{!"dt_iop_agx_gui_data_t", !120, i64 0, !33, i64 8, !33, i64 16, !121, i64 24, !123, i64 32, !123, i64 88, !123, i64 144, !33, i64 200, !33, i64 208, !33, i64 216, !33, i64 224, !33, i64 232, !33, i64 240, !33, i64 248, !33, i64 256, !33, i64 264, !124, i64 272, !125, i64 312, !126, i64 328, !127, i64 344, !33, i64 352, !33, i64 360, !33, i64 368, !33, i64 376, !33, i64 384}
!129 = !{!128, !33, i64 232}
!130 = !{!13, !11, i64 24}
!131 = !{!128, !33, i64 272}
!132 = !{!13, !11, i64 20}
!133 = !{!13, !11, i64 32}
!134 = !{!128, !33, i64 240}
!135 = !{!128, !33, i64 248}
!136 = !{!13, !11, i64 28}
!137 = !{!13, !8, i64 64}
!138 = !{!13, !11, i64 36}
!139 = !{!128, !33, i64 16}
!140 = !{!128, !33, i64 360}
!141 = !{!13, !8, i64 80}
!142 = !{!13, !8, i64 140}
!143 = !{!128, !33, i64 376}
!144 = !{!128, !33, i64 384}
!145 = !{!128, !33, i64 296}
!146 = !{!128, !33, i64 304}
!147 = !{!128, !121, i64 24}
!148 = !{!128, !33, i64 8}
!149 = !{!128, !33, i64 352}
!150 = !{!128, !33, i64 368}
!151 = !{!128, !33, i64 200}
end_hunk_0

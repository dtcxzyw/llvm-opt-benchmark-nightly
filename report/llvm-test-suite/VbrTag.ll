Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/VbrTag?download=true
inline.NumInlined: 8
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@PutVbrTag:bb.a
  %i.aq = tail call double @llvm.floor.f64(double %i.am)
  %i.ar = tail call double @llvm.floor.f64(double %i.an)
  %i.as = tail call double @llvm.floor.f64(double %i.ao)
  %i.at = fptosi double %i.ap to i32
  %i.au = fptosi double %i.aq to i32
  %i.av = fptosi double %i.ar to i32
  %i.aw = fptosi double %i.as to i32
  %i.ax = sext i32 %i.at to i64
  %i.ay = sext i32 %i.au to i64
  %i.az = sext i32 %i.av to i64
  %i.ba = sext i32 %i.aw to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.ax
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.ay
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.az
  %i.be = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.ba
  %i.bf = load i32, ptr %i.bb, align 4, !tbaa !7
  %i.bg = load i32, ptr %i.bc, align 4, !tbaa !7
  %i.bh = load i32, ptr %i.bd, align 4, !tbaa !7
  %i.bi = load i32, ptr %i.be, align 4, !tbaa !7
  %i.bj = insertelement <4 x i32> poison, i32 %i.bf, i64 0
  %i.bk = insertelement <4 x i32> %i.bj, i32 %i.bg, i64 1
  %i.bl = insertelement <4 x i32> %i.bk, i32 %i.bh, i64 2
  %i.bm = insertelement <4 x i32> %i.bl, i32 %i.bi, i64 3
  %i.bn = sitofp <4 x i32> %i.bm to <4 x float>
  %i.bo = fmul nnan <4 x float> %i.bn, splat (float 2.560000e+02)
  %i.bp = fdiv <4 x float> %i.bo, %broadcast.splat ; 2 uses
  %i.bq = fcmp ogt <4 x float> %i.bp, splat (float 2.550000e+02)
  %i.br = select <4 x i1> %i.bq, <4 x float> splat (float 2.550000e+02), <4 x float> %i.bp
  %i.bs = fptoui <4 x float> %i.br to <4 x i8>
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.y
  store <4 x i8> %i.bs, ptr %i.bt, align 1, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bu = icmp eq i64 %index.next, 96
  br i1 %i.bu, label %scalar.ph, label %vector.body, !llvm.loop !25

scalar.ph:                                        ; preds = %vector.body
  %i.bv = fmul nnan double %i.v, f0x3FEF0A3D70A3D70A
  %i.bw = tail call double @llvm.floor.f64(double %i.bv)
  %i.bx = fptosi double %i.bw to i32
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !7
  %i.cb = sitofp i32 %i.ca to float
  %i.cc = fmul nnan float %i.cb, 2.560000e+02
  %i.cd = fdiv float %i.cc, %i.x                  ; 2 uses
  %i.ce = fcmp ogt float %i.cd, 2.550000e+02
  %spec.store.select = select i1 %i.ce, float 2.550000e+02, float %i.cd
  %i.cf = fptoui float %spec.store.select to i8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 97
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !11
  %i.ch = fmul nnan double %i.v, f0x3FEF5C28F5C28F5C
  %i.ci = tail call double @llvm.floor.f64(double %i.ch)
  %i.cj = fptosi double %i.ci to i32
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !7
  %i.cn = sitofp i32 %i.cm to float
  %i.co = fmul nnan float %i.cn, 2.560000e+02
  %i.cp = fdiv float %i.co, %i.x                  ; 2 uses
  %i.cq = fcmp ogt float %i.cp, 2.550000e+02
  %spec.store.select.1 = select i1 %i.cq, float 2.550000e+02, float %i.cp
  %i.cr = fptoui float %spec.store.select.1 to i8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 98
  store i8 %i.cr, ptr %i.cs, align 2, !tbaa !11
  %i.ct = fmul nnan double %i.v, f0x3FEFAE147AE147AE
  %i.cu = tail call double @llvm.floor.f64(double %i.ct)
  %i.cv = fptosi double %i.cu to i32
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !7
  %i.cz = sitofp i32 %i.cy to float
  %i.da = fmul nnan float %i.cz, 2.560000e+02
  %i.db = fdiv float %i.da, %i.x                  ; 2 uses
  %i.dc = fcmp ogt float %i.db, 2.550000e+02
  %spec.store.select.2 = select i1 %i.dc, float 2.550000e+02, float %i.db
  %i.dd = fptoui float %spec.store.select.2 to i8
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 99
  store i8 %i.dd, ptr %i.de, align 1, !tbaa !11
  %i.df = load i32, ptr @nZeroStreamSize, align 4, !tbaa !7 ; 3 uses
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr i8, ptr @pbtStreamBuffer, i64 %i.dg ; 10 uses
  store <8 x i8> <i8 88, i8 105, i8 110, i8 103, i8 0, i8 0, i8 0, i8 15>, ptr %i.dh, align 1, !tbaa !11
  %i.di = getelementptr i8, ptr %i.dh, i64 8
  %i.dj = lshr i32 %i.u, 24
  %i.dk = trunc nuw i32 %i.dj to i8
  store i8 %i.dk, ptr %i.di, align 1, !tbaa !11
  %i.dl = lshr i32 %i.u, 16
  %i.dm = trunc i32 %i.dl to i8
  %i.dn = getelementptr i8, ptr %i.dh, i64 9
  store i8 %i.dm, ptr %i.dn, align 1, !tbaa !11
  %i.do = lshr i32 %i.u, 8
  %i.dp = trunc i32 %i.do to i8
  %i.dq = getelementptr i8, ptr %i.dh, i64 10
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !11
  %i.dr = trunc i32 %i.u to i8
  %i.ds = getelementptr i8, ptr %i.dh, i64 11
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !11
  %i.dt = getelementptr i8, ptr %i.dh, i64 12
  %i.du = lshr i64 %i.j, 24
  %i.dv = trunc i64 %i.du to i8
  store i8 %i.dv, ptr %i.dt, align 1, !tbaa !11
  %i.dw = lshr i64 %i.j, 16
  %i.dx = trunc i64 %i.dw to i8
  %i.dy = getelementptr i8, ptr %i.dh, i64 13
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !11
  %i.dz = lshr i64 %i.j, 8
  %i.ea = trunc i64 %i.dz to i8
  %i.eb = getelementptr i8, ptr %i.dh, i64 14
  store i8 %i.ea, ptr %i.eb, align 1, !tbaa !11
  %i.ec = trunc i64 %i.j to i8
  %i.ed = getelementptr i8, ptr %i.dh, i64 15
  store i8 %i.ec, ptr %i.ed, align 1, !tbaa !11
  %i.ee = getelementptr i8, ptr %i.dh, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(100) %i.ee, ptr noundef nonnull align 16 dereferenceable(100) %i.a, i64 100, i1 false)
  %i.ef = add i32 %i.df, 116
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds i8, ptr @pbtStreamBuffer, i64 %i.eg ; 4 uses
  %i.ei = lshr i32 %1, 24
  %i.ej = trunc nuw i32 %i.ei to i8
  store i8 %i.ej, ptr %i.eh, align 1, !tbaa !11
  %i.ek = lshr i32 %1, 16
  %i.el = trunc i32 %i.ek to i8
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 1
  store i8 %i.el, ptr %i.em, align 1, !tbaa !11
  %i.en = lshr i32 %1, 8
  %i.eo = trunc i32 %i.en to i8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eh, i64 2
  store i8 %i.eo, ptr %i.ep, align 1, !tbaa !11
  %i.eq = trunc i32 %1 to i8
  %i.er = getelementptr inbounds nuw i8, ptr %i.eh, i64 3
  store i8 %i.eq, ptr %i.er, align 1, !tbaa !11
  %i.es = add i32 %i.df, 120
  %i.et = tail call ptr @get_lame_version() #19
  %i.eu = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef %i.et) #19 ; 0 uses
  %i.ev = sext i32 %i.es to i64
  %i.ew = getelementptr inbounds i8, ptr @pbtStreamBuffer, i64 %i.ev
  %i.ex = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.ew, ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 20) #19 ; 0 uses
  %i.ey = load i32, ptr @TotalFrameSize, align 4, !tbaa !7
  %i.ez = sext i32 %i.ey to i64
  %i.fa = tail call i64 @fwrite(ptr noundef nonnull @pbtStreamBuffer, i64 noundef %i.ez, i64 noundef 1, ptr noundef nonnull %i.g)
  %.not = icmp eq i64 %i.fa, 1
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %scalar.ph
  %i.fb = tail call i32 @fclose(ptr noundef nonnull %i.g) ; 0 uses
  %i.fc = load ptr, ptr @pVbrFrames, align 8, !tbaa !10
  tail call void @free(ptr noundef %i.fc) #19
  store ptr null, ptr @pVbrFrames, align 8, !tbaa !10
  br label %bb.e

bb.e:                                             ; preds = %scalar.ph, %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.c ], [ -1, %scalar.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #11

declare ptr @get_lame_version() local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @SeekPoint(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, float noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = fcmp olt float %2, 0.000000e+00
  %spec.store.select = select i1 %i.a, float 0.000000e+00, float %2 ; 2 uses
  %i.b = fcmp ogt float %spec.store.select, 1.000000e+02
  %spec.store.select2 = select i1 %i.b, float 1.000000e+02, float %spec.store.select ; 2 uses
  %i.c = fptosi float %spec.store.select2 to i32  ; 2 uses
  %spec.store.select1 = tail call i32 @llvm.smin.i32(i32 %i.c, i32 99) ; 2 uses
  %3 = sext i32 %spec.store.select1 to i64
  %i.d = getelementptr inbounds i8, ptr %0, i64 %3 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !11
  %4 = icmp slt i32 %i.c, 99
  br i1 %4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.d, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !11
  %i.h = uitofp i8 %i.g to float
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi float [ %i.h, %bb.b ], [ 2.560000e+02, %bb.a ]
  %i.i = uitofp i8 %i.e to float                  ; 2 uses
  %i.j = fsub nnan float %.0, %i.i
  %5 = sitofp i32 %spec.store.select1 to float
  %i.k = fsub float %spec.store.select2, %5
  %i.l = tail call float @llvm.fmuladd.f32(float %i.j, float %i.k, float %i.i)
  %i.m = fmul float %i.l, 3.906250e-03
  %i.n = sitofp i32 %1 to float
  %i.o = fmul float %i.m, %i.n
  %i.p = fptosi float %i.o to i32
  ret i32 %i.p
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

attributes #0 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind allocsize(1) }
attributes #17 = { cold }
attributes #18 = { cold noreturn nounwind }
attributes #19 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!"p1 int", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!5, !5, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = distinct !{!14, !12, !13}
!15 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !5, i64 24}
!16 = !{!15, !6, i64 8}
!17 = !{!15, !6, i64 0}
!18 = !{!15, !6, i64 4}
!19 = !{!15, !6, i64 12}
!20 = !{!15, !6, i64 16}
!21 = !{!15, !6, i64 20}
!22 = distinct !{!22, !12}
!23 = !{!"p1 _ZTS8_IO_FILE", !8, i64 0}
!24 = !{!23, !23, i64 0}
!25 = distinct !{!25, !12, !13, !26}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0

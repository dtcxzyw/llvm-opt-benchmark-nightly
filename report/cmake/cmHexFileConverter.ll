Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmHexFileConverter?download=true
inline.NumInlined: 8
inline.NumDeleted: 5
begin_hunk_0_@_ZN18cmHexFileConverter10TryConvertERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_:bb.a
  br i1 %.not.us, label %.split55.us, label %.lr.ph, !llvm.loop !12

.lr.ph:                                           ; preds = %.split.us, %_ZL23ConvertMotorolaSrecLinePKcP8_IO_FILE.exit.us.thread77.a
  %i.z = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.g) #9 ; 2 uses
  %i.aa = trunc i64 %i.z to i32                   ; 2 uses
  %i.ab = add i64 %i.z, 4294967295
  %i.ac = and i64 %i.ab, 4294967295
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !9
  switch i8 %i.ae, label %bb.i [
    i8 10, label %bb.h
    i8 13, label %bb.h
  ]

bb.h:                                             ; preds = %.lr.ph, %.lr.ph
  %i.af = add i32 %i.aa, -1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph
  %.0.i.i.us = phi i32 [ %i.af, %bb.h ], [ %i.aa, %.lr.ph ] ; 2 uses
  %i.ag = add i32 %.0.i.i.us, -1                  ; 2 uses
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !9
  switch i8 %i.aj, label %_ZL11ChompStrlenPKc.exit.i.us [
    i8 10, label %bb.j
    i8 13, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  br label %_ZL11ChompStrlenPKc.exit.i.us

_ZL11ChompStrlenPKc.exit.i.us:                    ; preds = %bb.j, %bb.i
  %.1.i.i.us = phi i32 [ %i.ag, %bb.j ], [ %.0.i.i.us, %bb.i ] ; 3 uses
  %i.ak = add i32 %.1.i.i.us, -10
  %or.cond.i.us = icmp ult i32 %i.ak, 517
  %i.al = and i32 %.1.i.i.us, 1
  %.not.i.us = icmp eq i32 %i.al, 0
  %or.cond21.i.us = and i1 %or.cond.i.us, %.not.i.us
  %i.am = load i8, ptr %i.g, align 16
  %.not20.i.us = icmp eq i8 %i.am, 83
  %or.cond48.us = select i1 %or.cond21.i.us, i1 %.not20.i.us, i1 false
  br i1 %or.cond48.us, label %bb.k, label %_ZL23ConvertMotorolaSrecLinePKcP8_IO_FILE.exit.us59..split55.split.us_crit_edge

bb.k:                                             ; preds = %_ZL11ChompStrlenPKc.exit.i.us
  %i.an = load i8, ptr %i.t, align 1, !tbaa !9
  switch i8 %i.an, label %_ZL23ConvertMotorolaSrecLinePKcP8_IO_FILE.exit.us59..split55.split.us_crit_edge [
    i8 53, label %_ZL23ConvertMotorolaSrecLinePKcP8_IO_FILE.exit.us.thread77.a
    i8 55, label %_ZL23ConvertMotorolaSrecLinePKcP8_IO_FILE.exit.us.thread77.a
    i8 56, label %_ZL23ConvertMotorolaSrecLinePKcP8_IO_FILE.exit.us.thread77.a
    i8 57, label %_ZL23ConvertMotorolaSrecLinePKcP8_IO_FILE.exit.us.thread77.a
    i8 49, label %bb.n
    i8 50, label %bb.m
    i8 51, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.0.i.us = phi i32 [ 12, %bb.l ], [ 10, %bb.m ], [ 8, %bb.k ] ; 3 uses
  %i.ao = add nsw i32 %.1.i.i.us, -2              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i8 0, ptr %i.u, align 1, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  %i.ap = icmp samesign ult i32 %.0.i.us, %i.ao
  br i1 %i.ap, label %.lr.ph.i.i.us, label %_ZL23ConvertMotorolaSrecLinePKcP8_IO_FILE.exit.us

.lr.ph.i.i.us:                                    ; preds = %bb.n
  %i.aq = zext nneg i32 %.0.i.us to i64
  %i.ar = xor i32 %.0.i.us, -1
  %i.as = add nsw i32 %i.ao, %i.ar
  %i.at = lshr i32 %i.as, 1
  %i.au = add nuw i32 %i.at, 1
  %wide.trip.count.i.i.us = zext i32 %i.au to i64 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %.lr.ph.i.i.us
  %indvars.iv33.i.i.us = phi i64 [ 0, %.lr.ph.i.i.us ], [ %indvars.iv.next34.i.i.us, %bb.p ] ; 3 uses
  %indvars.iv.i.i.us = phi i64 [ %i.aq, %.lr.ph.i.i.us ], [ %indvars.iv.next.i.i.us, %bb.p ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i.i.us ; 2 uses
  %i.aw = load i8, ptr %i.av, align 2, !tbaa !9
  store i8 %i.aw, ptr %i.d, align 1, !tbaa !9
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !9
  store i8 %i.ay, ptr %i.v, align 1, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  store i32 0, ptr %i.f, align 4, !tbaa !14
  %i.az = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.f) #8
  %.not.i.i.us = icmp ne i32 %i.az, 1
  %i.ba = icmp samesign ugt i64 %indvars.iv33.i.i.us, 255
  %or.cond.i.i.us = select i1 %.not.i.i.us, i1 true, i1 %i.ba
  br i1 %or.cond.i.i.us, label %_ZL23ConvertMotorolaSrecLinePKcP8_IO_FILE.exit.us.thread79, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = load i32, ptr %i.f, align 4, !tbaa !14
  %i.bc = trunc i32 %i.bb to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv33.i.i.us
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !9
  %indvars.iv.next34.i.i.us = add nuw nsw i64 %indvars.iv33.i.i.us, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 2
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next34.i.i.us, %wide.trip.count.i.i.us
  br i1 %exitcond.not.i.i.us, label %_ZL23ConvertMotorolaSrecLinePKcP8_IO_FILE.exit.us, label %bb.o, !llvm.loop !13

_ZL23ConvertMotorolaSrecLinePKcP8_IO_FILE.exit.us.thread79: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %_ZL23ConvertMotorolaSrecLinePKcP8_IO_FILE.exit.us59..split55.split.us_crit_edge

_ZL23ConvertMotorolaSrecLinePKcP8_IO_FILE.exit.us: ; preds = %bb.p, %bb.n
  %.017.lcssa.i.i.us = phi i64 [ 0, %bb.n ], [ %wide.trip.count.i.i.us, %bb.p ] ; 2 uses
  %i.be = call i64 @fwrite(ptr noundef nonnull %i.e, i64 noundef 1, i64 noundef %.017.lcssa.i.i.us, ptr noundef nonnull %i.k)
  %i.bf = icmp eq i64 %i.be, %.017.lcssa.i.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br i1 %i.bf, label %_ZL23ConvertMotorolaSrecLinePKcP8_IO_FILE.exit.us.thread77.a, label %_ZL23ConvertMotorolaSrecLinePKcP8_IO_FILE.exit.us59..split55.split.us_crit_edge, !llvm.loop !12

.split.us56:                                      ; preds = %bb.g
  br i1 %.not.us63, label %.split55.us, label %.lr.ph66

_ZL23ConvertMotorolaSrecLinePKcP8_IO_FILE.exit.us59.thread83: ; preds = %bb.t, %bb.t, %bb.t, %bb.t, %_ZL23ConvertMotorolaSrecLinePKcP8_IO_FILE.exit.us59
  %i.bg = call ptr @fgets(ptr noundef nonnull %i.g, i32 noundef 1024, ptr noundef nonnull %i.j)
  %.not.us58 = icmp eq ptr %i.bg, null
  br i1 %.not.us58, label %.split55.us, label %.lr.ph66, !llvm.loop !12

.lr.ph66:                                         ; preds = %.split.us56, %_ZL23ConvertMotorolaSrecLinePKcP8_IO_FILE.exit.us59.thread83
  %i.bh = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.g) #9 ; 2 uses
  %i.bi = trunc i64 %i.bh to i32                  ; 2 uses
  %i.bj = add i64 %i.bh, 4294967295
  %i.bk = and i64 %i.bj, 4294967295
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !9
  switch i8 %i.bm, label %bb.r [
    i8 10, label %bb.q
    i8 13, label %bb.q
  ]

bb.q:                                             ; preds = %.lr.ph66, %.lr.ph66
  %i.bn = add i32 %i.bi, -1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph66
  %.0.i.i27.us = phi i32 [ %i.bn, %bb.q ], [ %i.bi, %.lr.ph66 ] ; 2 uses
  %i.bo = add i32 %.0.i.i27.us, -1                ; 2 uses
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !9
  switch i8 %i.br, label %_ZL11ChompStrlenPKc.exit.i28.us [
    i8 10, label %bb.s
    i8 13, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r, %bb.r
  br label %_ZL11ChompStrlenPKc.exit.i28.us

_ZL11ChompStrlenPKc.exit.i28.us:                  ; preds = %bb.s, %bb.r
  %.1.i.i29.us = phi i32 [ %i.bo, %bb.s ], [ %.0.i.i27.us, %bb.r ] ; 4 uses
  %i.bs = add i32 %.1.i.i29.us, -11
  %or.cond.i30.us = icmp ult i32 %i.bs, 513
  %i.bt = trunc i32 %.1.i.i29.us to i1
  %or.cond21.i31.not53.us = and i1 %or.cond.i30.us, %i.bt
  %i.bu = load i8, ptr %i.g, align 16
  %.not.i32.us = icmp eq i8 %i.bu, 58
  %or.cond49.us.a = select i1 %or.cond21.i31.not53.us, i1 %.not.i32.us, i1 false
  %i.bv = load i8, ptr %i.p, align 1
  %.not19.i.us = icmp eq i8 %i.bv, 48
  %or.cond51.us = select i1 %or.cond49.us.a, i1 %.not19.i.us, i1 false
  br i1 %or.cond51.us, label %bb.t, label %_ZL23ConvertMotorolaSrecLinePKcP8_IO_FILE.exit.us59..split55.split.us_crit_edge

bb.t:                                             ; preds = %_ZL11ChompStrlenPKc.exit.i28.us
  %i.bw = load i8, ptr %i.q, align 8, !tbaa !9
  switch i8 %i.bw, label %_ZL23ConvertMotorolaSrecLinePKcP8_IO_FILE.exit.us59..split55.split.us_crit_edge [
    i8 48, label %bb.u
    i8 49, label %bb.u
    i8 50, label %_ZL23ConvertMotorolaSrecLinePKcP8_IO_FILE.exit.us59.thread83
    i8 51, label %_ZL23ConvertMotorolaSrecLinePKcP8_IO_FILE.exit.us59.thread83
    i8 52, label %_ZL23ConvertMotorolaSrecLinePKcP8_IO_FILE.exit.us59.thread83
    i8 53, label %_ZL23ConvertMotorolaSrecLinePKcP8_IO_FILE.exit.us59.thread83
  ]

bb.u:                                             ; preds = %bb.t, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i8 0, ptr %i.r, align 1, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.bx = icmp samesign ugt i32 %.1.i.i29.us, 11
  br i1 %i.bx, label %.lr.ph.i.i38.us, label %_ZL23ConvertMotorolaSrecLinePKcP8_IO_FILE.exit.us59

.lr.ph.i.i38.us:                                  ; preds = %bb.u
  %i.by = add nsw i32 %.1.i.i29.us, -12
  %i.bz = lshr i32 %i.by, 1
  %i.ca = add nuw nsw i32 %i.bz, 1
  %wide.trip.count.i.i39.us = zext nneg i32 %i.ca to i64 ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %.lr.ph.i.i38.us
  %indvars.iv33.i.i40.us = phi i64 [ 0, %.lr.ph.i.i38.us ], [ %indvars.iv.next34.i.i44.us, %bb.w ] ; 2 uses
  %indvars.iv.i.i41.us = phi i64 [ 9, %.lr.ph.i.i38.us ], [ %indvars.iv.next.i.i45.us, %bb.w ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i.i41.us ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !9
  store i8 %i.cc, ptr %i.a, align 1, !tbaa !9
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !9
  store i8 %i.ce, ptr %i.s, align 1, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 0, ptr %i.c, align 4, !tbaa !14
  %i.cf = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.c) #8
  %.not.i.not.i.us = icmp eq i32 %i.cf, 1
  br i1 %.not.i.not.i.us, label %bb.w, label %_ZL23ConvertMotorolaSrecLinePKcP8_IO_FILE.exit.us59.thread85

bb.w:                                             ; preds = %bb.v
  %i.cg = load i32, ptr %i.c, align 4, !tbaa !14
  %i.ch = trunc i32 %i.cg to i8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv33.i.i40.us
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !9
  %indvars.iv.next34.i.i44.us = add nuw nsw i64 %indvars.iv33.i.i40.us, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  %indvars.iv.next.i.i45.us = add nuw nsw i64 %indvars.iv.i.i41.us, 2
  %exitcond.not.i.i46.us = icmp eq i64 %indvars.iv.next34.i.i44.us, %wide.trip.count.i.i39.us
  br i1 %exitcond.not.i.i46.us, label %_ZL23ConvertMotorolaSrecLinePKcP8_IO_FILE.exit.us59, label %bb.v, !llvm.loop !13

_ZL23ConvertMotorolaSrecLinePKcP8_IO_FILE.exit.us59.thread85: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %_ZL23ConvertMotorolaSrecLinePKcP8_IO_FILE.exit.us59..split55.split.us_crit_edge

_ZL23ConvertMotorolaSrecLinePKcP8_IO_FILE.exit.us59: ; preds = %bb.w, %bb.u
  %.017.lcssa.i.i35.us = phi i64 [ 0, %bb.u ], [ %wide.trip.count.i.i39.us, %bb.w ] ; 2 uses
  %i.cj = call i64 @fwrite(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef %.017.lcssa.i.i35.us, ptr noundef nonnull %i.k)
  %i.ck = icmp eq i64 %i.cj, %.017.lcssa.i.i35.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br i1 %i.ck, label %_ZL23ConvertMotorolaSrecLinePKcP8_IO_FILE.exit.us59.thread83, label %_ZL23ConvertMotorolaSrecLinePKcP8_IO_FILE.exit.us59..split55.split.us_crit_edge, !llvm.loop !12

_ZL23ConvertMotorolaSrecLinePKcP8_IO_FILE.exit.us59..split55.split.us_crit_edge: ; preds = %bb.t, %_ZL11ChompStrlenPKc.exit.i28.us, %_ZL23ConvertMotorolaSrecLinePKcP8_IO_FILE.exit.us59, %_ZL23ConvertMotorolaSrecLinePKcP8_IO_FILE.exit.us, %_ZL11ChompStrlenPKc.exit.i.us, %bb.k, %_ZL23ConvertMotorolaSrecLinePKcP8_IO_FILE.exit.us.thread79, %_ZL23ConvertMotorolaSrecLinePKcP8_IO_FILE.exit.us59.thread85
  br label %.split55.us, !llvm.loop !12

.split55.us:                                      ; preds = %_ZL23ConvertMotorolaSrecLinePKcP8_IO_FILE.exit.us59.thread83, %_ZL23ConvertMotorolaSrecLinePKcP8_IO_FILE.exit.us.thread77.a, %_ZL23ConvertMotorolaSrecLinePKcP8_IO_FILE.exit.us59..split55.split.us_crit_edge, %.split.us56, %.split.us
  %.us-phi = phi i1 [ false, %_ZL23ConvertMotorolaSrecLinePKcP8_IO_FILE.exit.us59..split55.split.us_crit_edge ], [ true, %_ZL23ConvertMotorolaSrecLinePKcP8_IO_FILE.exit.us.thread77.a ], [ false, %.split.us ], [ false, %.split.us56 ], [ true, %_ZL23ConvertMotorolaSrecLinePKcP8_IO_FILE.exit.us59.thread83 ]
  %i.cl = call i32 @fclose(ptr noundef nonnull %i.j) ; 0 uses
  %i.cm = call i32 @fclose(ptr noundef nonnull %i.k) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  br label %bb.x

bb.x:                                             ; preds = %.split55.us, %bb.f, %bb.e, %bb.a
  %.121 = phi i1 [ false, %bb.a ], [ %.us-phi, %.split55.us ], [ false, %bb.f ], [ false, %bb.e ]
  ret i1 %.121
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @__isoc23_sscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_cmHexFileConverter.cxx() #7 section ".text.startup" {
bb.a:
  tail call void @_ZN5cmsys18SystemToolsManagerC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZN5cmsysL26SystemToolsManagerInstanceE)
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5cmsys18SystemToolsManagerD1Ev, ptr nonnull @_ZN5cmsysL26SystemToolsManagerInstanceE, ptr nonnull @__dso_handle) #8 ; 0 uses
  ret void
}

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = !{!6, !6, i64 0}
end_hunk_0

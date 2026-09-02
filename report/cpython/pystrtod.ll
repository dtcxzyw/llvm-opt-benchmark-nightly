Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/pystrtod?download=true
inline.NumInlined: 5
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@PyOS_double_to_string:bb.a
  br label %.thread200.i

.thread200.i:                                     ; preds = %thread-pre-split.i, %bb.o
  %i.aa = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.y, %bb.o ] ; 2 uses
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !7
  %i.ae = and i32 %i.ad, 4
  %.not183.i = icmp eq i32 %i.ae, 0
  br i1 %.not183.i, label %bb.r, label %bb.ac

bb.r:                                             ; preds = %.thread200.i
  switch i8 %i.aa, label %bb.t [
    i8 110, label %bb.s
    i8 78, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r, %bb.r
  store i32 0, ptr %i.c, align 4, !tbaa !7
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.af = call ptr @PyMem_Malloc(i64 noundef 5) #10 ; 8 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ah = call ptr @PyErr_NoMemory() #10          ; 0 uses
  br label %bb.aw

bb.v:                                             ; preds = %bb.t
  %i.ai = load i32, ptr %i.c, align 4, !tbaa !7
  %i.aj = icmp eq i32 %i.ai, 1
  br i1 %i.aj, label %.sink.split.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not184.i = icmp eq i32 %i.e, 0
  br i1 %.not184.i, label %bb.x, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.w, %bb.v
  %.sink.i = phi i8 [ 45, %bb.v ], [ 43, %bb.w ]
  %i.ak = getelementptr i8, ptr %i.af, i64 1
  store i8 %.sink.i, ptr %i.af, align 1, !tbaa !11
  br label %bb.x

bb.x:                                             ; preds = %.sink.split.i, %bb.w
  %.0163.i = phi ptr [ %i.af, %bb.w ], [ %i.ak, %.sink.split.i ] ; 4 uses
  %i.al = load i8, ptr %i.n, align 1, !tbaa !11
  switch i8 %i.al, label %.unreachabledefault.i [
    i8 105, label %bb.y
    i8 73, label %bb.y
    i8 110, label %bb.aa
    i8 78, label %bb.aa
  ]

bb.y:                                             ; preds = %bb.x, %bb.x
  %i.am = load ptr, ptr %.3, align 8, !tbaa !12
  %i.an = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %.0163.i, ptr noundef nonnull dereferenceable(1) %i.am, i64 noundef 3) #10 ; 0 uses
  %i.ao = getelementptr i8, ptr %.0163.i, i64 3   ; 2 uses
  %.not186.i = icmp eq ptr %4, null
  br i1 %.not186.i, label %bb.au, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i32 1, ptr %4, align 4, !tbaa !7
  br label %bb.au

.unreachabledefault.i:                            ; preds = %bb.x
  unreachable

bb.aa:                                            ; preds = %bb.x, %bb.x
  %i.ap = getelementptr i8, ptr %.3, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !12
  %i.ar = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %.0163.i, ptr noundef nonnull dereferenceable(1) %i.aq, i64 noundef 3) #10 ; 0 uses
  %i.as = getelementptr i8, ptr %.0163.i, i64 3   ; 2 uses
  %.not185.i = icmp eq ptr %4, null
  br i1 %.not185.i, label %bb.au, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 2, ptr %4, align 4, !tbaa !7
  br label %bb.au

bb.ac:                                            ; preds = %.thread200.i, %bb.q
  %.not187.i = icmp eq ptr %4, null
  br i1 %.not187.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %4, align 4, !tbaa !7
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  switch i8 %.319, label %.unreachabledefault [
    i8 101, label %.thread242.i
    i8 102, label %.thread234.i
    i8 103, label %bb.af
    i8 114, label %bb.ah
  ]

.thread242.i:                                     ; preds = %bb.ae
  %i.at = sext i32 %.020 to i64
  br label %.thread40

.thread234.i:                                     ; preds = %bb.ae
  %i.au = sext i32 %.020 to i64
  %i.av = add nsw i64 %i.p, %i.au
  br label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.aw = icmp slt i32 %.fr263.i, -3
  br i1 %i.aw, label %.split246.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ax = shl nuw i32 %i.f, 30
  %sext = ashr exact i32 %i.ax, 31
  %i.ay = add i32 %.020, %sext
  %i.az = icmp sgt i32 %.fr263.i, %i.ay
  br i1 %i.az, label %.split246.i, label %.split246.thread.i

.split246.thread.i:                               ; preds = %bb.ag
  %.not189254.i = icmp eq i32 %i.g, 0
  %i.ba = sext i32 %.020 to i64
  %spec.select255.i = select i1 %.not189254.i, i64 %i.u, i64 %i.ba
  br label %bb.ai

.split246.i:                                      ; preds = %bb.ag, %bb.af
  %.not189.i = icmp eq i32 %i.g, 0
  %i.bb = sext i32 %.020 to i64
  %spec.select.i = select i1 %.not189.i, i64 %i.u, i64 %i.bb
  br label %.thread40

.unreachabledefault:                              ; preds = %bb.ae
  unreachable

bb.ah:                                            ; preds = %bb.ae
  %i.bc = add i32 %.fr263.i, 3
  %or.cond3.i = icmp ult i32 %i.bc, 20            ; 2 uses
  %spec.select256.i = select i1 %or.cond3.i, i64 %i.p, i64 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.split246.thread.i, %.thread234.i
  %.0240.i = phi i64 [ %i.u, %bb.ah ], [ %i.av, %.thread234.i ], [ %spec.select255.i, %.split246.thread.i ] ; 2 uses
  %.1161238.i = phi i1 [ %or.cond3.i, %bb.ah ], [ true, %.thread234.i ], [ true, %.split246.thread.i ] ; 3 uses
  %i.bd = phi i64 [ %spec.select256.i, %bb.ah ], [ %i.p, %.thread234.i ], [ %i.p, %.split246.thread.i ] ; 5 uses
  %i.be = icmp slt i64 %i.bd, 1                   ; 2 uses
  %i.bf = call i64 @llvm.smin.i64(i64 %i.bd, i64 1) ; 3 uses
  %i.bg = add nsw i64 %i.bf, -1                   ; 2 uses
  %i.bh = icmp ne i32 %i.f, 0
  %or.cond5.i = and i1 %i.bh, %.1161238.i
  br i1 %or.cond5.i, label %.thread, label %bb.aj

.thread:                                          ; preds = %bb.ai
  %i.bi = add nsw i64 %i.p, 1
  %i.bj = call i64 @llvm.smax.i64(i64 %.0240.i, i64 %i.bi)
  br label %bb.ak

.thread40:                                        ; preds = %.thread242.i, %.split246.i
  %.0240251.i.ph = phi i64 [ %spec.select.i, %.split246.i ], [ %i.at, %.thread242.i ]
  %i.bk = call i64 @llvm.smax.i64(i64 %.0240251.i.ph, i64 1)
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.bl = call i64 @llvm.smax.i64(i64 %.0240.i, i64 %i.bd)
  %spec.select43 = select i1 %.1161238.i, i64 3, i64 8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.thread, %.thread40
  %.1.i38 = phi i64 [ %i.bk, %.thread40 ], [ %i.bl, %bb.aj ], [ %i.bj, %.thread ] ; 2 uses
  %.1161238252.i36 = phi i1 [ false, %.thread40 ], [ %.1161238.i, %bb.aj ], [ true, %.thread ]
  %i.bm = phi i64 [ 1, %.thread40 ], [ %i.bd, %bb.aj ], [ %i.bd, %.thread ] ; 10 uses
  %i.bn = phi i1 [ false, %.thread40 ], [ %i.be, %bb.aj ], [ %i.be, %.thread ]
  %i.bo = phi i64 [ 1, %.thread40 ], [ %i.bf, %bb.aj ], [ %i.bf, %.thread ] ; 2 uses
  %i.bp = phi i64 [ 0, %.thread40 ], [ %i.bg, %bb.aj ], [ %i.bg, %.thread ]
  %i.bq = phi i64 [ 8, %.thread40 ], [ %spec.select43, %bb.aj ], [ 3, %.thread ]
  %i.br = add i32 %.fr263.i, -1
  %reass.sub = sub nsw i64 %i.bq, %i.bo
  %i.bs = add nuw nsw i64 %reass.sub, 1
  %i.bt = add i64 %i.bs, %.1.i38
  %i.bu = call ptr @PyMem_Malloc(i64 noundef %i.bt) #10 ; 6 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.bw = call ptr @PyErr_NoMemory() #10          ; 0 uses
  br label %bb.aw

bb.am:                                            ; preds = %bb.ak
  %i.bx = load i32, ptr %i.c, align 4, !tbaa !7
  %i.by = icmp eq i32 %i.bx, 1
  br i1 %i.by, label %.sink.split257.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.not191.i = icmp eq i32 %i.e, 0
  br i1 %.not191.i, label %bb.ao, label %.sink.split257.i

.sink.split257.i:                                 ; preds = %bb.an, %bb.am
  %.sink258.i = phi i8 [ 45, %bb.am ], [ 43, %bb.an ]
  %i.bz = getelementptr i8, ptr %i.bu, i64 1
  store i8 %.sink258.i, ptr %i.bu, align 1, !tbaa !11
  br label %bb.ao

bb.ao:                                            ; preds = %.sink.split257.i, %bb.an
  %.1164.i = phi ptr [ %i.bu, %bb.an ], [ %i.bz, %.sink.split257.i ] ; 3 uses
  br i1 %i.bn, label %.thread202.i, label %bb.ap

.thread202.i:                                     ; preds = %bb.ao
  %i.ca = sub nsw i64 %i.bm, %i.bp                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %.1164.i, i8 48, i64 %i.ca, i1 false)
  %i.cb = getelementptr i8, ptr %.1164.i, i64 %i.ca ; 2 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 1      ; 2 uses
  store i8 46, ptr %i.cb, align 1, !tbaa !11
  %i.cd = sub nsw i64 0, %i.bm                    ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.cc, i8 48, i64 %i.cd, i1 false)
  %i.ce = getelementptr i8, ptr %i.cc, i64 %i.cd  ; 2 uses
  %.not192204.i = icmp sgt i64 %i.bm, %i.u
  %i.cf = call ptr @strncpy(ptr noundef %i.ce, ptr noundef nonnull %i.n, i64 noundef %i.u) #10 ; 0 uses
  %i.cg = getelementptr i8, ptr %i.ce, i64 %i.u   ; 2 uses
  br i1 %.not192204.i, label %bb.ar, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.ch = sub nuw nsw i64 1, %i.bo
  %i.ci = getelementptr i8, ptr %.1164.i, i64 %i.ch ; 4 uses
  %.not192.i = icmp sgt i64 %i.bm, %i.u
  br i1 %.not192.i, label %bb.aq, label %.split.i

.split.i:                                         ; preds = %bb.ap
  %i.cj = call ptr @strncpy(ptr noundef %i.ci, ptr noundef nonnull %i.n, i64 noundef %i.bm) #10 ; 0 uses
  %i.ck = getelementptr i8, ptr %i.ci, i64 %i.bm  ; 2 uses
  %i.cl = getelementptr i8, ptr %i.ck, i64 1      ; 2 uses
  store i8 46, ptr %i.ck, align 1, !tbaa !11
  %i.cm = getelementptr i8, ptr %i.n, i64 %i.bm
  %i.cn = sub nuw nsw i64 %i.u, %i.bm             ; 2 uses
  %i.co = call ptr @strncpy(ptr noundef %i.cl, ptr noundef %i.cm, i64 noundef %i.cn) #10 ; 0 uses
  %i.cp = getelementptr i8, ptr %i.cl, i64 %i.cn
  br label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.cq = call ptr @strncpy(ptr noundef %i.ci, ptr noundef nonnull %i.n, i64 noundef %i.u) #10 ; 0 uses
  %i.cr = getelementptr i8, ptr %i.ci, i64 %i.u
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.thread202.i
  %.3209.i = phi ptr [ %i.cg, %.thread202.i ], [ %i.cr, %bb.aq ] ; 2 uses
  %i.cs = sub i64 %i.bm, %i.u                     ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %.3209.i, i8 48, i64 %i.cs, i1 false)
  %i.ct = getelementptr i8, ptr %.3209.i, i64 %i.cs ; 2 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 1
  store i8 46, ptr %i.ct, align 1, !tbaa !11
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.split.i, %.thread202.i
  %.sink262.i = phi i64 [ %i.bm, %bb.ar ], [ %i.u, %.split.i ], [ %i.u, %.thread202.i ]
  %.3210.sink260.i = phi ptr [ %i.cu, %bb.ar ], [ %i.cp, %.split.i ], [ %i.cg, %.thread202.i ] ; 2 uses
  %i.cv = sub i64 %.1.i38, %.sink262.i            ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %.3210.sink260.i, i8 48, i64 %i.cv, i1 false)
  %i.cw = getelementptr i8, ptr %.3210.sink260.i, i64 %i.cv ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cw, i64 -1     ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !11
  %i.cz = icmp ne i8 %i.cy, 46
  %i.da = icmp ne i32 %i.g, 0
  %or.cond7.i = or i1 %i.da, %i.cz
  %spec.select199.i = select i1 %or.cond7.i, ptr %i.cw, ptr %i.cx ; 3 uses
  br i1 %.1161238252.i36, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.db = getelementptr i8, ptr %.3, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !12
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !11
  %i.de = getelementptr i8, ptr %spec.select199.i, i64 1 ; 2 uses
  store i8 %i.dd, ptr %spec.select199.i, align 1, !tbaa !11
  %i.df = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.de, ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.br) #10
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr i8, ptr %i.de, i64 %i.dg
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ab, %bb.aa, %bb.z, %bb.y
  %.0165.ph.i = phi ptr [ %i.af, %bb.aa ], [ %i.af, %bb.ab ], [ %i.af, %bb.y ], [ %i.af, %bb.z ], [ %i.bu, %bb.as ], [ %i.bu, %bb.at ]
  %.6.ph.i = phi ptr [ %i.as, %bb.aa ], [ %i.as, %bb.ab ], [ %i.ao, %bb.y ], [ %i.ao, %bb.z ], [ %spec.select199.i, %bb.as ], [ %i.dh, %bb.at ]
  store i8 0, ptr %.6.ph.i, align 1, !tbaa !11
  br label %bb.aw

bb.av:                                            ; preds = %bb.l
  %i.di = call ptr @PyErr_NoMemory() #10          ; 0 uses
  br label %format_float_short.exit

bb.aw:                                            ; preds = %bb.au, %bb.al, %bb.u
  %.0165216.ph.i = phi ptr [ null, %bb.u ], [ null, %bb.al ], [ %.0165.ph.i, %bb.au ]
  call void @_Py_dg_freedtoa(ptr noundef nonnull %i.n) #10
  br label %format_float_short.exit

format_float_short.exit:                          ; preds = %bb.av, %bb.aw
  %.0165216222.i = phi ptr [ %.0165216.ph.i, %bb.aw ], [ null, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.ax

bb.ax:                                            ; preds = %format_float_short.exit, %bb.i, %bb.h
  %.015 = phi ptr [ null, %bb.i ], [ %.0165216222.i, %format_float_short.exit ], [ null, %bb.h ]
  ret ptr %.015
}

declare void @_PyErr_BadInternalCall(ptr noundef, i32 noundef) local_unnamed_addr #5

declare zeroext i16 @_Py_get_387controlword() local_unnamed_addr #5

declare void @_Py_set_387controlword(i16 noundef zeroext) local_unnamed_addr #5

declare double @_Py_dg_strtod(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @_Py_dg_dtoa(double noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #9

declare void @_Py_dg_freedtoa(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(none) }
attributes #12 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!9, !9, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 omnipotent char", !14, i64 0}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 _ZTS7_object", !14, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
end_hunk_0

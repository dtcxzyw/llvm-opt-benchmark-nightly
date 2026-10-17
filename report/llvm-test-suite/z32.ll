Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/z32?download=true
begin_hunk_0_@Next:bb.a
  %.07294 = phi i32 [ %i.v, %bb.e ], [ %i.q, %.critedge ] ; 4 uses
  %i.r = zext nneg i32 %.07294 to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !12
  %i.u = add i8 %i.t, -48
  %or.cond89 = icmp ult i8 %i.u, 10
  br i1 %or.cond89, label %bb.e, label %.critedge2

bb.e:                                             ; preds = %.lr.ph
  %i.v = add nsw i32 %.07294, -1
  %i.w = icmp sgt i32 %.07294, 0
  br i1 %i.w, label %.lr.ph, label %.critedge2, !llvm.loop !9

.critedge2:                                       ; preds = %.lr.ph, %bb.e, %.critedge
  %.072.lcssa = phi i32 [ %i.q, %.critedge ], [ -1, %bb.e ], [ %.07294, %.lr.ph ]
  %i.x = sext i32 %.072.lcssa to i64
  %i.y = getelementptr i8, ptr %i.e, i64 %i.x
  %i.z = getelementptr i8, ptr %i.y, i64 1        ; 2 uses
  %i.aa = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %i.z, ptr noundef nonnull @.str, ptr noundef nonnull %i.a) #6 ; 0 uses
  store i8 0, ptr %i.z, align 1, !tbaa !12
  %i.ab = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) %i.e) #6 ; 0 uses
  %i.ac = load i32, ptr %i.a, align 4, !tbaa !7
  %i.ad = add nsw i32 %i.ac, %1
  %i.ae = call ptr @StringInt(i32 noundef %i.ad) #6
  %i.af = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) %i.ae) #6 ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv120
  %i.ah = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) %i.ag) #6 ; 0 uses
  %i.ai = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #7
  %i.aj = icmp ugt i64 %i.ai, 511
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.critedge2
  %i.ak = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 32, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #6 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge2
  %i.al = load i8, ptr %i.c, align 8, !tbaa !12
  %i.am = zext i8 %i.al to i32
  %i.an = call ptr @MakeWord(i32 noundef %i.am, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #6 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = and i32 %i.ap, 4095
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 40 ; 7 uses
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = and i32 %i.as, -4096
  %i.au = or disjoint i32 %i.at, %i.aq            ; 2 uses
  store i32 %i.au, ptr %i.ar, align 8
  %i.av = load i32, ptr %i.ao, align 8
  %i.aw = and i32 %i.av, 4190208
  %i.ax = and i32 %i.au, -4190209
  %i.ay = or disjoint i32 %i.ax, %i.aw            ; 2 uses
  store i32 %i.ay, ptr %i.ar, align 8
  %i.az = load i32, ptr %i.ao, align 8
  %i.ba = and i32 %i.az, 4194304
  %i.bb = and i32 %i.ay, -4194305
  %i.bc = or disjoint i32 %i.bb, %i.ba            ; 2 uses
  store i32 %i.bc, ptr %i.ar, align 8
  %i.bd = load i32, ptr %i.ao, align 8
  %i.be = and i32 %i.bd, 528482304
  %i.bf = and i32 %i.bc, -528482305
  %i.bg = or disjoint i32 %i.bf, %i.be            ; 2 uses
  store i32 %i.bg, ptr %i.ar, align 8
  %i.bh = load i32, ptr %i.ao, align 8
  %i.bi = and i32 %i.bh, -2147483648
  %i.bj = and i32 %i.bg, 2147483647
  %i.bk = or disjoint i32 %i.bj, %i.bi            ; 2 uses
  store i32 %i.bk, ptr %i.ar, align 8
  %i.bl = load i32, ptr %i.ao, align 8
  %i.bm = and i32 %i.bl, 1610612736
  %i.bn = and i32 %i.bk, -1610612737
  %i.bo = or disjoint i32 %i.bn, %i.bm
  store i32 %i.bo, ptr %i.ar, align 8
  store ptr %i.an, ptr @xx_res, align 8, !tbaa !16
  store ptr %0, ptr @xx_hold, align 8, !tbaa !16
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !12 ; 6 uses
  %i.br = icmp eq ptr %i.bq, %0
  br i1 %i.br, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.bq, ptr @zz_res, align 8, !tbaa !16
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !12 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 3 uses
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !12
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  store ptr %i.bq, ptr %i.bv, align 8, !tbaa !12
  store ptr %0, ptr %i.bp, align 8, !tbaa !12
  store ptr %0, ptr %i.bs, align 8, !tbaa !12
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !12 ; 3 uses
  store ptr %i.bw, ptr @zz_tmp, align 8, !tbaa !16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !12 ; 2 uses
  store ptr %i.by, ptr %i.bu, align 8, !tbaa !12
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  store ptr %i.bq, ptr %i.bz, align 8, !tbaa !12
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !12
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store ptr %i.an, ptr %i.ca, align 8, !tbaa !12
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.h
  %.sink102 = phi ptr [ %i.bq, %bb.h ], [ null, %bb.g ]
  store ptr %.sink102, ptr @xx_tmp, align 8, !tbaa !16
  store ptr %0, ptr @zz_hold, align 8, !tbaa !16
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !12 ; 3 uses
  %i.cd = icmp eq ptr %i.cc, %0
  br i1 %i.cd, label %.thread110, label %bb.i

.thread110:                                       ; preds = %.thread
  store ptr null, ptr @xx_tmp, align 8, !tbaa !16
  store ptr %i.an, ptr @zz_res, align 8, !tbaa !16
  br label %bb.k

bb.i:                                             ; preds = %.thread
  store ptr %i.cc, ptr @zz_res, align 8, !tbaa !16
  %i.ce = load ptr, ptr %0, align 8, !tbaa !12
  store ptr %i.ce, ptr %i.cc, align 8, !tbaa !12
  %i.cf = load ptr, ptr @zz_res, align 8, !tbaa !16
  %i.cg = load ptr, ptr @zz_hold, align 8, !tbaa !16 ; 5 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !12
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr %i.cf, ptr %i.ci, align 8, !tbaa !12
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store ptr %i.cg, ptr %i.cj, align 8, !tbaa !12
  store ptr %i.cg, ptr %i.cg, align 8, !tbaa !12
  %i.ck = load ptr, ptr @zz_res, align 8, !tbaa !16 ; 5 uses
  %.pre.a = load ptr, ptr @xx_res, align 8, !tbaa !16 ; 3 uses
  store ptr %i.ck, ptr @xx_tmp, align 8, !tbaa !16
  store ptr %.pre.a, ptr @zz_res, align 8, !tbaa !16
  store ptr %i.ck, ptr @zz_hold, align 8, !tbaa !16
  %i.cl = icmp eq ptr %i.ck, null
  %i.cm = icmp eq ptr %.pre.a, null
  %or.cond7 = select i1 %i.cl, i1 true, i1 %i.cm
  br i1 %or.cond7, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cn = load ptr, ptr %i.ck, align 8, !tbaa !12
  store ptr %i.cn, ptr @zz_tmp, align 8, !tbaa !16
  %i.co = load ptr, ptr %.pre.a, align 8, !tbaa !12
  store ptr %i.co, ptr %i.ck, align 8, !tbaa !12
  %i.cp = load ptr, ptr @zz_hold, align 8, !tbaa !16
  %i.cq = load ptr, ptr @zz_res, align 8, !tbaa !16 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !12
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store ptr %i.cp, ptr %i.cs, align 8, !tbaa !12
  %i.ct = load ptr, ptr @zz_tmp, align 8, !tbaa !16 ; 2 uses
  store ptr %i.ct, ptr %i.cq, align 8, !tbaa !12
  %i.cu = load ptr, ptr @zz_res, align 8, !tbaa !16
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !12
  br label %bb.k

bb.k:                                             ; preds = %.thread110, %bb.j, %bb.i
  %i.cw = load ptr, ptr @xx_hold, align 8, !tbaa !16 ; 4 uses
  store ptr %i.cw, ptr @zz_hold, align 8, !tbaa !16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !12  ; 2 uses
  %.off = add i8 %i.cy, -11
  %switch = icmp ult i8 %.off, 2
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 33
  %i.da = zext i8 %i.cy to i64
  %i.db = getelementptr inbounds nuw i8, ptr @zz_lengths, i64 %i.da
  %.in.in = select i1 %switch, ptr %i.cz, ptr %i.db
  %.in = load i8, ptr %.in.in, align 1, !tbaa !12 ; 2 uses
  %i.dc = zext i8 %.in to i32
  store i32 %i.dc, ptr @zz_size, align 4, !tbaa !7
  %i.dd = zext i8 %.in to i64
  %i.de = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.dd
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !16
  store ptr %i.df, ptr %i.cw, align 8, !tbaa !12
  %i.dg = load ptr, ptr @zz_hold, align 8, !tbaa !16
  %i.dh = load i32, ptr @zz_size, align 4, !tbaa !7
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds [8 x i8], ptr @zz_free, i64 %i.di
  store ptr %i.dg, ptr %i.dj, align 8, !tbaa !16
  store i32 1, ptr %2, align 4, !tbaa !7
  br label %.critedge4

bb.l:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.dk = load ptr, ptr %0, align 8, !tbaa !12
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %.pn = phi ptr [ %i.dk, %bb.l ], [ %.074, %bb.m ]
  %.074.in = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  %.074 = load ptr, ptr %.074.in, align 8, !tbaa !12 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.074, i64 32
  %i.dm = load i8, ptr %i.dl, align 8, !tbaa !12
  %i.dn = icmp eq i8 %i.dm, 0
  br i1 %i.dn, label %bb.m, label %bb.n, !llvm.loop !10

bb.n:                                             ; preds = %bb.m
  %i.do = tail call ptr @Next(ptr noundef nonnull %.074, i32 noundef %1, ptr noundef %2) ; 0 uses
  br label %.critedge4

bb.o:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.dp = load ptr, ptr %0, align 8, !tbaa !12    ; 2 uses
  %.not118 = icmp eq ptr %i.dp, %0
  br i1 %.not118, label %.critedge4, label %.outer.split.preheader

.outer.split.preheader:                           ; preds = %bb.o
  %.pre = load i32, ptr %2, align 4, !tbaa !7
  br label %.outer.split

.outer.split:                                     ; preds = %.outer.split.preheader, %.outer
  %3 = phi i32 [ %i.dv, %.outer ], [ %.pre, %.outer.split.preheader ]
  %.073.ph95 = phi ptr [ %.1, %.outer ], [ %i.dp, %.outer.split.preheader ] ; 4 uses
  %.not87 = icmp eq i32 %3, 0
  br i1 %.not87, label %.preheader, label %.critedge4

.preheader:                                       ; preds = %.outer.split, %.preheader.backedge
  %.073.pn = phi ptr [ %.073.pn.be, %.preheader.backedge ], [ %.073.ph95, %.outer.split ]
  %.175.in = getelementptr inbounds nuw i8, ptr %.073.pn, i64 16
  %.175 = load ptr, ptr %.175.in, align 8, !tbaa !12 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.175, i64 32
  %i.dr = load i8, ptr %i.dq, align 8, !tbaa !12  ; 2 uses
  %i.ds = icmp eq i8 %i.dr, 0
  br i1 %i.ds, label %.preheader.backedge, label %bb.p

.preheader.backedge:                              ; preds = %.preheader, %bb.p
  %.073.pn.be = phi ptr [ %.175, %.preheader ], [ %.073.ph95, %bb.p ]
  br label %.preheader, !llvm.loop !11

bb.p:                                             ; preds = %.preheader
  %i.dt = add i8 %i.dr, -119
  %or.cond90 = icmp ult i8 %i.dt, 20
  br i1 %or.cond90, label %.preheader.backedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.du = tail call ptr @Next(ptr noundef nonnull %.175, i32 noundef %1, ptr noundef nonnull %2) ; 0 uses
  %i.dv = load i32, ptr %2, align 4, !tbaa !7     ; 2 uses
  %.not88 = icmp eq i32 %i.dv, 0
  br i1 %.not88, label %bb.r, label %.outer

bb.r:                                             ; preds = %bb.q
  %i.dw = load ptr, ptr %.073.ph95, align 8, !tbaa !12
  br label %.outer

.outer:                                           ; preds = %bb.r, %bb.q
  %.1 = phi ptr [ %.073.ph95, %bb.q ], [ %i.dw, %bb.r ] ; 2 uses
  %.not = icmp eq ptr %.1, %0
  br i1 %.not, label %.critedge4, label %.outer.split, !llvm.loop !11

bb.s:                                             ; preds = %bb.a
  %i.dx = zext i8 %i.d to i32
  %i.dy = load ptr, ptr @no_fpos, align 8, !tbaa !17
  %i.dz = tail call ptr @Image(i32 noundef %i.dx) #6
  %i.ea = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 3, ptr noundef nonnull @.str.2, i32 noundef 0, ptr noundef %i.dy, ptr noundef nonnull @.str.3, ptr noundef %i.dz) #6 ; 0 uses
  br label %.critedge4

.critedge4:                                       ; preds = %.outer.split, %.outer, %bb.c, %bb.b, %bb.o, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.s, %bb.n, %bb.k
  %.076 = phi ptr [ %0, %bb.s ], [ %0, %bb.b ], [ %i.an, %bb.k ], [ %0, %bb.a ], [ %0, %bb.a ], [ %0, %bb.a ], [ %0, %bb.a ], [ %0, %bb.a ], [ %0, %bb.a ], [ %0, %bb.a ], [ %0, %bb.a ], [ %0, %bb.a ], [ %0, %bb.a ], [ %0, %bb.a ], [ %0, %bb.a ], [ %0, %bb.a ], [ %0, %bb.a ], [ %0, %bb.a ], [ %0, %bb.n ], [ %0, %bb.o ], [ %0, %bb.c ], [ %0, %.outer ], [ %0, %.outer.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret ptr %.076
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none)) local_unnamed_addr #4

declare ptr @StringInt(i32 noundef) local_unnamed_addr #5

declare ptr @Error(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

declare ptr @MakeWord(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @Image(i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

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
!8 = distinct !{!8, !13}
!9 = distinct !{!9, !13}
!10 = distinct !{!10, !13}
!11 = distinct !{!11, !13}
!12 = !{!5, !5, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"any pointer", !5, i64 0}
!15 = !{!"p1 _ZTS3rec", !14, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!14, !14, i64 0}
end_hunk_0

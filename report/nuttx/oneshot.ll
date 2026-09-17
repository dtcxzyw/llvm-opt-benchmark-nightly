Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/oneshot?download=true
begin_hunk_0_@oneshot_register:bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(128) ptr @zalloc(i64 noundef 128) #11 ; 6 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @oneshot_callback, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.g = tail call i32 @nxmutex_init(ptr noundef nonnull %i.f) #12 ; 0 uses
  %i.h = tail call i32 @register_driver(ptr noundef nonnull %0, ptr noundef nonnull @g_oneshot_ops, i32 noundef 384, ptr noundef nonnull %i.c) #12 ; 3 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i32 @nxsem_destroy(ptr noundef nonnull %i.f) #12 ; 0 uses
  tail call void @free(ptr noundef nonnull %i.c) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.0 = phi i32 [ -12, %bb.c ], [ %i.h, %bb.e ], [ %i.h, %bb.d ]
  ret i32 %.0
}

; Function Attrs: noredzone noreturn optsize
declare dso_local void @__assert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone optsize allocsize(0)
declare dso_local noalias ptr @zalloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: noredzone nounwind optsize uwtable
define internal void @oneshot_callback(ptr nofree readnone captures(none) %0, ptr noundef %1) #3 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @__assert(ptr noundef nonnull @.str, i32 noundef 108, ptr noundef nonnull @.str.2) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.b = load i32, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = tail call i32 @nxsig_notification(i32 noundef %i.b, ptr noundef nonnull %i.c, i32 noundef 1, ptr noundef nonnull %i.d) #12 ; 0 uses
  ret void
}

; Function Attrs: noredzone optsize
declare dso_local i32 @nxmutex_init(ptr noundef) local_unnamed_addr #6

; Function Attrs: noredzone optsize
declare dso_local i32 @register_driver(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noredzone nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare dso_local void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: noredzone optsize
declare dso_local i32 @nxsig_notification(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse noredzone nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i64 @oneshot_read(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2) #8 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse noredzone nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i64 @oneshot_write(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2) #8 {
bb.a:
  ret i64 -1
}

; Function Attrs: noredzone nounwind optsize uwtable
define internal range(i32 -2147483648, 1) i32 @oneshot_ioctl(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i64 noundef %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8              ; 8 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @__assert(ptr noundef nonnull @.str, i32 noundef 169, ptr noundef nonnull @.str.2) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.f = tail call i32 @nxsem_wait(ptr noundef nonnull %i.e) #12 ; 2 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.r, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i32 %1, label %oneshot_current.exit [
    i32 5664, label %bb.e
    i32 5665, label %bb.h
    i32 5666, label %bb.n
    i32 5667, label %bb.p
  ]

bb.e:                                             ; preds = %bb.d
  %.not34 = icmp eq i64 %2, 0
  br i1 %.not34, label %bb.f, label %bb.g, !prof !7

bb.f:                                             ; preds = %bb.e
  tail call void @__assert(ptr noundef nonnull @.str, i32 noundef 192, ptr noundef nonnull @.str.3) #10
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.h = inttoptr i64 %2 to ptr                   ; 2 uses
  %i.i = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call i64 %i.l(ptr noundef nonnull %i.i) #12, !inline_history !8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.o = load i32, ptr %i.n, align 8
  %i.p = zext i32 %i.o to i64                     ; 3 uses
  %i.q = udiv i64 %i.m, %i.p
  store i64 %i.q, ptr %i.h, align 8
  %i.r = urem i64 %i.m, %i.p
  %i.s = mul nuw nsw i64 %i.r, 1000000000
  %i.t = udiv i64 %i.s, %i.p
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.t, ptr %i.u, align 8
  br label %oneshot_current.exit

bb.h:                                             ; preds = %bb.d
  %i.v = inttoptr i64 %2 to ptr                   ; 4 uses
  %.not33 = icmp eq i64 %2, 0
  br i1 %.not33, label %bb.i, label %bb.j, !prof !7

bb.i:                                             ; preds = %bb.h
  tail call void @__assert(ptr noundef nonnull @.str, i32 noundef 209, ptr noundef nonnull @.str.4) #10
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  %i.y = load i32, ptr %i.v, align 8              ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aa = tail call i32 @nxsched_getpid() #12
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.029 = phi i32 [ %i.aa, %bb.k ], [ %i.y, %bb.j ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  store i32 %.029, ptr %i.ab, align 8
  %i.ac = load ptr, ptr %i.d, align 8             ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = zext i32 %i.ae to i64                   ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.ah = load i64, ptr %i.ag, align 8            ; 2 uses
  %mul.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.af, i64 %i.ah)
  %mul.ov.i = extractvalue { i64, i1 } %mul.i, 1
  br i1 %mul.ov.i, label %bb.m, label %clkcnt_delta_time2cnt.exit, !prof !7

bb.m:                                             ; preds = %bb.l
  tail call void @__assert(ptr noundef nonnull @.str.5, i32 noundef 179, ptr noundef nonnull @.str.6) #10
  unreachable

clkcnt_delta_time2cnt.exit:                       ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.aj = mul i64 %i.ah, %i.af
  %i.ak = udiv i64 %i.aj, 1000000000
  %i.al = load i64, ptr %i.ai, align 8
  %i.am = mul i64 %i.al, %i.af
  %i.an = add i64 %i.am, %i.ak
  %i.ao = load ptr, ptr %i.ac, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull %i.ac, i64 noundef %i.an) #12, !inline_history !9
  br label %oneshot_current.exit

bb.n:                                             ; preds = %bb.d
  %i.ar = load ptr, ptr %i.d, align 8             ; 9 uses
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull %i.ar) #12, !inline_history !10
  %i.av = load ptr, ptr %i.ar, align 8
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call i64 %i.aw(ptr noundef nonnull %i.ar) #12, !inline_history !11 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.az = load i32, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.bd = load i8, ptr %i.bc, align 8
  %3 = tail call range(i64 0, -1) i64 @llvm.umulh.i64(i64 %i.ax, i64 %i.bb) ; 2 uses
  %i.be = sub i64 %i.ax, %3
  %i.bf = lshr i64 %i.be, 1
  %i.bg = add i64 %i.bf, %3
  %i.bh = zext nneg i8 %i.bd to i64
  %i.bi = lshr i64 %i.bg, %i.bh                   ; 2 uses
  %i.bj = zext i32 %i.az to i64                   ; 3 uses
  %i.bk = mul i64 %i.bi, %i.bj
  %i.bl = sub i64 %i.ax, %i.bk                    ; 3 uses
  %.not.i37 = icmp ugt i64 %i.bl, %i.bj
  br i1 %.not.i37, label %bb.o, label %oneshot_delta_cnt2nsec.exit38, !prof !7

bb.o:                                             ; preds = %bb.n
  tail call void @__assert(ptr noundef nonnull @.str.7, i32 noundef 335, ptr noundef nonnull @.str.10) #10
  unreachable

oneshot_delta_cnt2nsec.exit38:                    ; preds = %bb.n
  %i.bm = inttoptr i64 %2 to ptr                  ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ar, i64 28
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.bq = load i32, ptr %i.bp, align 8
  %i.br = zext i32 %i.bo to i64
  %i.bs = mul nuw i64 %i.bl, %i.br
  %i.bt = and i32 %i.bq, 255
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = lshr i64 %i.bs, %i.bu
  %i.bw = and i64 %i.bv, 4294967295               ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i64 %i.bw, ptr %i.bx, align 8
  store i64 %i.bi, ptr %i.bm, align 8
  %i.by = icmp samesign uge i64 %i.bl, %i.bj
  %i.bz = icmp samesign ugt i64 %i.bw, 999999999
  %or.cond = select i1 %i.by, i1 true, i1 %i.bz, !prof !12
  br i1 %or.cond, label %.critedge.i, label %oneshot_current.exit, !prof !12

.critedge.i:                                      ; preds = %oneshot_delta_cnt2nsec.exit38
  tail call void @__assert(ptr noundef nonnull @.str.7, i32 noundef 425, ptr noundef nonnull @.str.8) #10
  unreachable

bb.p:                                             ; preds = %bb.d
  %i.ca = load ptr, ptr %i.d, align 8             ; 7 uses
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = tail call i64 %i.cc(ptr noundef nonnull %i.ca) #12, !inline_history !11 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cf = load i32, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  %i.cj = load i8, ptr %i.ci, align 8
  %4 = tail call range(i64 0, -1) i64 @llvm.umulh.i64(i64 %i.cd, i64 %i.ch) ; 2 uses
  %i.ck = sub i64 %i.cd, %4
  %i.cl = lshr i64 %i.ck, 1
  %i.cm = add i64 %i.cl, %4
  %i.cn = zext nneg i8 %i.cj to i64
  %i.co = lshr i64 %i.cm, %i.cn                   ; 2 uses
  %i.cp = zext i32 %i.cf to i64                   ; 3 uses
  %i.cq = mul i64 %i.co, %i.cp
  %i.cr = sub i64 %i.cd, %i.cq                    ; 3 uses
  %.not.i = icmp ugt i64 %i.cr, %i.cp
  br i1 %.not.i, label %bb.q, label %oneshot_delta_cnt2nsec.exit, !prof !7

bb.q:                                             ; preds = %bb.p
  tail call void @__assert(ptr noundef nonnull @.str.7, i32 noundef 335, ptr noundef nonnull @.str.10) #10
  unreachable

oneshot_delta_cnt2nsec.exit:                      ; preds = %bb.p
  %i.cs = inttoptr i64 %2 to ptr                  ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ca, i64 28
  %i.cu = load i32, ptr %i.ct, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cw = load i32, ptr %i.cv, align 8
  %i.cx = zext i32 %i.cu to i64
  %i.cy = mul nuw i64 %i.cr, %i.cx
  %i.cz = and i32 %i.cw, 255
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = lshr i64 %i.cy, %i.da
  %i.dc = and i64 %i.db, 4294967295               ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i64 %i.dc, ptr %i.dd, align 8
  store i64 %i.co, ptr %i.cs, align 8
  %i.de = icmp samesign uge i64 %i.cr, %i.cp
  %i.df = icmp samesign ugt i64 %i.dc, 999999999
  %or.cond39 = select i1 %i.de, i1 true, i1 %i.df, !prof !12
  br i1 %or.cond39, label %.critedge.i35, label %oneshot_current.exit, !prof !12

.critedge.i35:                                    ; preds = %oneshot_delta_cnt2nsec.exit
  tail call void @__assert(ptr noundef nonnull @.str.7, i32 noundef 425, ptr noundef nonnull @.str.8) #10
  unreachable

oneshot_current.exit:                             ; preds = %oneshot_delta_cnt2nsec.exit, %oneshot_delta_cnt2nsec.exit38, %bb.d, %clkcnt_delta_time2cnt.exit, %bb.g
  %.030 = phi i32 [ 0, %oneshot_delta_cnt2nsec.exit38 ], [ 0, %bb.g ], [ 0, %clkcnt_delta_time2cnt.exit ], [ -25, %bb.d ], [ 0, %oneshot_delta_cnt2nsec.exit ]
  %i.dg = tail call i32 @nxsem_post(ptr noundef nonnull %i.e) #12 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.c, %oneshot_current.exit
  %.0 = phi i32 [ %.030, %oneshot_current.exit ], [ %i.f, %bb.c ]
  ret i32 %.0
}

; Function Attrs: noredzone optsize
declare dso_local i32 @nxsched_getpid() local_unnamed_addr #6

; Function Attrs: noredzone optsize
declare dso_local i32 @nxsem_wait(ptr noundef) local_unnamed_addr #6

; Function Attrs: noredzone optsize
declare dso_local i32 @nxsem_post(ptr noundef) local_unnamed_addr #6

; Function Attrs: noredzone optsize
declare dso_local i32 @nxsem_destroy(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umulh.i64(i64, i64) #9

attributes #0 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memcpy" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memset" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noredzone nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noredzone noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noredzone optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noredzone optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noredzone nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse noredzone nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { noredzone noreturn nounwind optsize }
attributes #11 = { noredzone nounwind optsize allocsize(0) }
attributes #12 = { noredzone nounwind optsize }
attributes #13 = { noredzone optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 1, !"Code Model", i32 4}
!3 = !{i32 1, !"Large Data Threshold", i64 0}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = distinct !{null}
!9 = distinct !{null}
!10 = distinct !{null}
!11 = distinct !{null}
!12 = !{!"branch_weights", i32 4001, i32 4000000}
end_hunk_0

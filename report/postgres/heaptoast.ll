inline.NumInlined: 46
inline.NumDeleted: 29
begin_hunk_0_@heap_fetch_toast_slice:bb.a
bb.l:                                             ; preds = %.split.i.i
  %i.br = load i32, ptr %i.bf, align 4
  %i.bs = zext i32 %i.br to i64
  br label %fastgetattr.exit

bb.m:                                             ; preds = %.split.i.i
  %i.bt = load i64, ptr %i.bf, align 8
  br label %fastgetattr.exit

bb.n:                                             ; preds = %.split.i.i, %bb.i
  %i.bu = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.bv = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.6, i32 noundef range(i32 -32768, 32768) %i.bj) #7 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.7, i32 noundef 123, ptr noundef nonnull @__func__.fetch_att) #7
  unreachable

bb.o:                                             ; preds = %bb.h
  %i.bw = ptrtoint ptr %i.bf to i64
  br label %fastgetattr.exit

bb.p:                                             ; preds = %bb.g
  %i.bx = call i64 @nocachegetattr(ptr noundef nonnull %i.au, i32 noundef 2, ptr noundef nonnull %i.d) #7
  br label %fastgetattr.exit

bb.q:                                             ; preds = %bb.f
  %i.by = getelementptr inbounds nuw i8, ptr %.val.i, i64 23
  %.val20.i = load i8, ptr %i.by, align 1
  %i.bz = and i8 %.val20.i, 2
  %.not.i.i = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i, label %fastgetattr.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ca = call i64 @nocachegetattr(ptr noundef nonnull %i.au, i32 noundef 2, ptr noundef %i.d) #7
  br label %fastgetattr.exit

fastgetattr.exit:                                 ; preds = %bb.q, %bb.j, %bb.k, %bb.l, %bb.m, %bb.o, %bb.p, %bb.r
  %.1.i = phi i64 [ %i.ca, %bb.r ], [ %i.bw, %bb.o ], [ %i.bx, %bb.p ], [ %i.bo, %bb.j ], [ %i.bq, %bb.k ], [ %i.bs, %bb.l ], [ %i.bt, %bb.m ], [ 0, %bb.q ] ; 2 uses
  %i.cb = trunc i64 %.1.i to i32                  ; 2 uses
  %.val.i98 = load ptr, ptr %i.av, align 8        ; 4 uses
  %i.cc = getelementptr i8, ptr %.val.i98, i64 20
  %.val.val.i99 = load i16, ptr %i.cc, align 4
  %i.cd = trunc i16 %.val.val.i99 to i1
  br i1 %i.cd, label %bb.ac, label %bb.s

bb.s:                                             ; preds = %fastgetattr.exit
  %i.ce = load i16, ptr %i.al, align 2            ; 2 uses
  %i.cf = icmp sgt i16 %i.ce, -1
  br i1 %i.cf, label %bb.t, label %bb.ab

bb.t:                                             ; preds = %bb.s
  %i.cg = zext nneg i16 %i.ce to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %.val.i98, i64 22
  %i.ci = load i8, ptr %i.ch, align 2
  %i.cj = zext i8 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %.val.i98, i64 %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cg ; 5 uses
  %i.cm = load i8, ptr %i.am, align 2, !range !4, !noundef !5
  %i.cn = trunc nuw i8 %i.cm to i1
  %i.co = load i16, ptr %i.an, align 2
  %i.cp = sext i16 %i.co to i32                   ; 3 uses
  br i1 %i.cn, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  %i.cq = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 range(i32 -32768, 32768) %i.cp)
  %i.cr = icmp eq i32 %i.cq, 1
  br i1 %i.cr, label %.split.i.i101, label %bb.z

.split.i.i101:                                    ; preds = %bb.u
  %i.cs = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 range(i32 -32768, 32768) %i.cp, i1 true)
  switch i32 %i.cs, label %bb.z [
    i32 0, label %bb.v
    i32 1, label %bb.w
    i32 2, label %bb.x
    i32 3, label %bb.y
  ]

bb.v:                                             ; preds = %.split.i.i101
  %i.ct = load i8, ptr %i.cl, align 1
  %i.cu = sext i8 %i.ct to i64
  br label %fastgetattr.exit104

bb.w:                                             ; preds = %.split.i.i101
  %i.cv = load i16, ptr %i.cl, align 2
  %i.cw = sext i16 %i.cv to i64
  br label %fastgetattr.exit104

bb.x:                                             ; preds = %.split.i.i101
  %i.cx = load i32, ptr %i.cl, align 4
  %i.cy = sext i32 %i.cx to i64
  br label %fastgetattr.exit104

bb.y:                                             ; preds = %.split.i.i101
  %i.cz = load i64, ptr %i.cl, align 8
  br label %fastgetattr.exit104

bb.z:                                             ; preds = %.split.i.i101, %bb.u
  %i.da = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.db = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.6, i32 noundef range(i32 -32768, 32768) %i.cp) #7 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.7, i32 noundef 123, ptr noundef nonnull @__func__.fetch_att) #7
  unreachable

bb.aa:                                            ; preds = %bb.t
  %i.dc = ptrtoint ptr %i.cl to i64
  br label %fastgetattr.exit104

bb.ab:                                            ; preds = %bb.s
  %i.dd = call i64 @nocachegetattr(ptr noundef nonnull %i.au, i32 noundef 3, ptr noundef nonnull %i.d) #7
  br label %fastgetattr.exit104

bb.ac:                                            ; preds = %fastgetattr.exit
  %i.de = getelementptr inbounds nuw i8, ptr %.val.i98, i64 23
  %.val20.i102 = load i8, ptr %i.de, align 1
  %i.df = and i8 %.val20.i102, 4
  %.not.i.i103 = icmp eq i8 %i.df, 0
  br i1 %.not.i.i103, label %fastgetattr.exit104, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dg = call i64 @nocachegetattr(ptr noundef nonnull %i.au, i32 noundef 3, ptr noundef %i.d) #7
  br label %fastgetattr.exit104

fastgetattr.exit104:                              ; preds = %bb.ac, %bb.v, %bb.w, %bb.x, %bb.y, %bb.aa, %bb.ab, %bb.ad
  %.1.i100 = phi i64 [ %i.dg, %bb.ad ], [ %i.dc, %bb.aa ], [ %i.dd, %bb.ab ], [ %i.cu, %bb.v ], [ %i.cw, %bb.w ], [ %i.cy, %bb.x ], [ %i.cz, %bb.y ], [ 0, %bb.ac ]
  %i.dh = inttoptr i64 %.1.i100 to ptr            ; 3 uses
  %.val = load i8, ptr %i.dh, align 1             ; 3 uses
  %i.di = and i8 %.val, 3
  %.not107 = icmp eq i8 %i.di, 0
  br i1 %.not107, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %fastgetattr.exit104
  %.val95 = load i32, ptr %i.dh, align 4
  %i.dj = lshr i32 %.val95, 2
  %i.dk = add nsw i32 %i.dj, -4
  br label %bb.ai

bb.af:                                            ; preds = %fastgetattr.exit104
  %i.dl = trunc i8 %.val to i1
  br i1 %i.dl, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dm = lshr i8 %.val, 1
  %i.dn = zext nneg i8 %i.dm to i32
  %i.do = add nsw i32 %i.dn, -1
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.dp = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %i.dt = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str, i32 noundef %1, ptr noundef nonnull %i.ds) #7 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 729, ptr noundef nonnull @__func__.heap_fetch_toast_slice) #7
  unreachable

bb.ai:                                            ; preds = %bb.ag, %bb.ae
  %i.du = phi i64 [ 1, %bb.ag ], [ 4, %bb.ae ]
  %.081 = phi i32 [ %i.do, %bb.ag ], [ %i.dk, %bb.ae ] ; 3 uses
  %.not93 = icmp eq i32 %.083125, %i.cb
  br i1 %.not93, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dv = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.dw = call i32 @errcode(i32 noundef 16779816) #7 ; 0 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %i.ea = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.2, i32 noundef %i.cb, i32 noundef %.083125, i32 noundef %1, ptr noundef nonnull %i.dz) #7 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 742, ptr noundef nonnull @__func__.heap_fetch_toast_slice) #7
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.eb = icmp sgt i32 %.083125, %i.s
  br i1 %i.eb, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ec = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.ed = call i32 @errcode(i32 noundef 16779816) #7 ; 0 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  %i.eh = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.3, i32 noundef %.083125, i32 noundef %i.m, i32 noundef %i.s, i32 noundef %1, ptr noundef nonnull %i.eg) #7 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 749, ptr noundef nonnull @__func__.heap_fetch_toast_slice) #7
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.ei = icmp slt i32 %.083125, %i.h
  %i.ej = select i1 %i.ei, i32 1996, i32 %i.ap    ; 2 uses
  %.not94 = icmp eq i32 %.081, %i.ej
  br i1 %.not94, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ek = add i32 %i.h, 1
  %i.el = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.em = call i32 @errcode(i32 noundef 16779816) #7 ; 0 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %i.eq = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.4, i32 noundef %.081, i32 noundef %i.ej, i32 noundef %.083125, i32 noundef %i.ek, i32 noundef %1, ptr noundef nonnull %i.ep) #7 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 758, ptr noundef nonnull @__func__.heap_fetch_toast_slice) #7
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.er = add nsw i32 %.081, -1
  %i.es = icmp eq i32 %.083125, %i.m
  %.079 = select i1 %i.es, i32 %i.aq, i32 0       ; 2 uses
  %i.et = icmp eq i32 %.083125, %i.s
  %.0 = select i1 %i.et, i32 %i.ar, i32 %i.er
  %7 = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.du
  %sext108 = shl i64 %.1.i, 32
  %i.eu = ashr exact i64 %sext108, 32
  %i.ev = mul nsw i64 %i.eu, 1996
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.ev
  %i.ew = zext nneg i32 %.079 to i64              ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %gep, i64 %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %7, i64 %i.ew
  %reass.sub = sub nsw i32 %.0, %.079
  %i.ez = add nsw i32 %reass.sub, 1
  %i.fa = sext i32 %i.ez to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ex, ptr nonnull align 1 %i.ey, i64 %i.fa, i1 false)
  %i.fb = add i32 %.083125, 1                     ; 2 uses
  %i.fc = call ptr @systable_getnext_ordered(ptr noundef %i.ag, i32 noundef 1) #7 ; 2 uses
  %.not = icmp eq ptr %i.fc, null
  br i1 %.not, label %._crit_edge, label %bb.f, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.ao, %bb.e
  %.083.lcssa = phi i32 [ %i.m, %bb.e ], [ %i.fb, %bb.ao ] ; 2 uses
  %i.fd = add i32 %i.s, 1
  %.not92 = icmp eq i32 %.083.lcssa, %i.fd
  br i1 %.not92, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge
  %i.fe = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.ff = call i32 @errcode(i32 noundef 16779816) #7 ; 0 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  %i.fj = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.5, i32 noundef %.083.lcssa, i32 noundef %1, ptr noundef nonnull %i.fi) #7 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 786, ptr noundef nonnull @__func__.heap_fetch_toast_slice) #7
  unreachable

bb.aq:                                            ; preds = %._crit_edge
  call void @systable_endscan_ordered(ptr noundef %i.ag) #7
  %i.fk = load ptr, ptr %i.a, align 8
  %i.fl = load i32, ptr %i.b, align 4
  call void @toast_close_indexes(ptr noundef %i.fk, i32 noundef %i.fl, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

declare i32 @toast_open_indexes(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ScanKeyInit(ptr noundef, i16 noundef signext, i16 noundef zeroext, i32 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @systable_beginscan_ordered(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @get_toast_snapshot() local_unnamed_addr #2

declare ptr @systable_getnext_ordered(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #2

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @errcode(i32 noundef) local_unnamed_addr #2

declare void @systable_endscan_ordered(ptr noundef) local_unnamed_addr #2

declare void @toast_close_indexes(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i64 @nocachegetattr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{i8 0, i8 2}
!5 = !{}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
end_hunk_0

inline.NumInlined: 2
begin_hunk_0_@md5_process:bb.a
  %i.sz = xor i32 %i.sy, %i.so
  %i.ta = add i32 %.0.sroa.phi586.sroa.speculated, -1120210379
  %i.tb = add i32 %i.ta, %i.ry
  %i.tc = add i32 %i.tb, %i.sz                    ; 2 uses
  %i.td = tail call i32 @llvm.fshl.i32(i32 %i.tc, i32 %i.tc, i32 10)
  %i.te = add i32 %i.td, %i.sw                    ; 4 uses
  %i.tf = xor i32 %i.so, -1
  %i.tg = or i32 %i.te, %i.tf
  %i.th = xor i32 %i.tg, %i.sw
  %i.ti = add i32 %i.k, 718787259
  %i.tj = add i32 %i.ti, %i.sg
  %i.tk = add i32 %i.tj, %i.th                    ; 2 uses
  %i.tl = tail call i32 @llvm.fshl.i32(i32 %i.tk, i32 %i.tk, i32 15)
  %i.tm = add i32 %i.tl, %i.te                    ; 3 uses
  %i.tn = xor i32 %i.sw, -1
  %i.to = or i32 %i.tm, %i.tn
  %i.tp = xor i32 %i.to, %i.te
  %i.tq = add i32 %.0.sroa.phi580.sroa.speculated, -343485551
  %i.tr = add i32 %i.tq, %i.so
  %i.ts = add i32 %i.tr, %i.tp                    ; 2 uses
  %i.tt = tail call i32 @llvm.fshl.i32(i32 %i.ts, i32 %i.ts, i32 21)
  %i.tu = add i32 %i.sw, %i.b
  store i32 %i.tu, ptr %i.a, align 4, !tbaa !6
  %i.tv = add i32 %i.tm, %i.d
  %i.tw = add i32 %i.tv, %i.tt
  store i32 %i.tw, ptr %i.c, align 4, !tbaa !6
  %i.tx = add i32 %i.tm, %i.f
  store i32 %i.tx, ptr %i.e, align 4, !tbaa !6
  %i.ty = add i32 %i.te, %i.h
  store i32 %i.ty, ptr %i.g, align 4, !tbaa !6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @rb_Digest_MD5_Finish(ptr noundef %0, ptr noundef writeonly captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 1                 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = load i32, ptr %0, align 4, !tbaa !6      ; 6 uses
  %i.c = trunc i32 %i.b to i8
  store i8 %i.c, ptr %i.a, align 1, !tbaa !12
  %i.d = lshr i32 %i.b, 8
  %i.e = trunc i32 %i.d to i8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.e, ptr %i.f, align 1, !tbaa !12
  %i.g = lshr i32 %i.b, 16
  %i.h = trunc i32 %i.g to i8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.h, ptr %i.i, align 1, !tbaa !12
  %i.j = lshr i32 %i.b, 24
  %i.k = trunc nuw i32 %i.j to i8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.k, ptr %i.l, align 1, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !6    ; 5 uses
  %i.o = trunc i32 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %i.o, ptr %i.p, align 1, !tbaa !12
  %i.q = lshr i32 %i.n, 8
  %i.r = trunc i32 %i.q to i8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.r, ptr %i.s, align 1, !tbaa !12
  %i.t = lshr i32 %i.n, 16
  %i.u = trunc i32 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %i.u, ptr %i.v, align 1, !tbaa !12
  %i.w = lshr i32 %i.n, 24
  %i.x = trunc nuw i32 %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %i.x, ptr %i.y, align 1, !tbaa !12
  %i.z = lshr i32 %i.b, 3                         ; 2 uses
  %i.aa = sub nsw i32 55, %i.z
  %i.ab = and i32 %i.aa, 63
  %i.ac = add nuw nsw i32 %i.ab, 1                ; 2 uses
  %i.ad = zext nneg i32 %i.ac to i64              ; 4 uses
  %i.ae = and i32 %i.z, 63                        ; 2 uses
  %i.af = zext nneg i32 %i.ae to i64              ; 4 uses
  %i.ag = shl nuw nsw i32 %i.ac, 3                ; 2 uses
  %i.ah = add i32 %i.ag, %i.b                     ; 2 uses
  store i32 %i.ah, ptr %0, align 4, !tbaa !6
  %i.ai = icmp ult i32 %i.ah, %i.ag
  br i1 %i.ai, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aj = add i32 %i.n, 1
  store i32 %i.aj, ptr %i.m, align 4, !tbaa !6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = add nuw nsw i64 %i.ad, %i.af
  %i.al = icmp samesign ugt i64 %i.ak, 64
  %i.am = sub nuw nsw i64 64, %i.af
  %i.an = select i1 %i.al, i64 %i.am, i64 %i.ad   ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.af
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ap, ptr noundef nonnull align 16 dereferenceable(1) @rb_Digest_MD5_Finish.pad, i64 %i.an, i1 false)
  %i.aq = add nuw nsw i64 %i.an, %i.af
  %i.ar = icmp samesign ugt i64 %i.aq, 63
  br i1 %i.ar, label %.thread.i, label %rb_Digest_MD5_Update.exit

.thread.i:                                        ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr @rb_Digest_MD5_Finish.pad, i64 %i.an
  %i.at = sub nsw i64 %i.ad, %i.an
  tail call fastcc void @md5_process(ptr noundef nonnull %0, ptr noundef nonnull %i.ao)
  br label %bb.e

bb.e:                                             ; preds = %.thread.i, %bb.c
  %.140.i = phi i64 [ %i.at, %.thread.i ], [ %i.ad, %bb.c ] ; 3 uses
  %.1.i = phi ptr [ %i.as, %.thread.i ], [ @rb_Digest_MD5_Finish.pad, %bb.c ] ; 2 uses
  %i.au = icmp ugt i64 %.140.i, 63
  br i1 %i.au, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %.248.i = phi ptr [ %i.av, %.lr.ph.i ], [ %.1.i, %bb.e ] ; 2 uses
  %.24147.i = phi i64 [ %i.aw, %.lr.ph.i ], [ %.140.i, %bb.e ]
  tail call fastcc void @md5_process(ptr noundef nonnull %0, ptr noundef %.248.i)
  %i.av = getelementptr inbounds nuw i8, ptr %.248.i, i64 64 ; 2 uses
  %i.aw = add i64 %.24147.i, -64                  ; 3 uses
  %i.ax = icmp ugt i64 %i.aw, 63
  br i1 %i.ax, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !10

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.e
  %.241.lcssa.i = phi i64 [ %.140.i, %bb.e ], [ %i.aw, %.lr.ph.i ] ; 2 uses
  %.2.lcssa.i = phi ptr [ %.1.i, %bb.e ], [ %i.av, %.lr.ph.i ]
  %.not44.i = icmp eq i64 %.241.lcssa.i, 0
  br i1 %.not44.i, label %rb_Digest_MD5_Update.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ay, ptr align 1 %.2.lcssa.i, i64 %.241.lcssa.i, i1 false)
  br label %rb_Digest_MD5_Update.exit

rb_Digest_MD5_Update.exit:                        ; preds = %bb.d, %._crit_edge.i, %bb.f
  %i.az = load i32, ptr %0, align 4, !tbaa !6     ; 3 uses
  %i.ba = lshr i32 %i.az, 3
  %i.bb = and i32 %i.ba, 63                       ; 3 uses
  %i.bc = zext nneg i32 %i.bb to i64              ; 3 uses
  %i.bd = load i32, ptr %i.m, align 4, !tbaa !6
  %i.be = add i32 %i.az, 64
  store i32 %i.be, ptr %0, align 4, !tbaa !6
  %i.bf = icmp ugt i32 %i.az, -65
  br i1 %i.bf, label %bb.g, label %bb.h

bb.g:                                             ; preds = %rb_Digest_MD5_Update.exit
  %i.bg = add i32 %i.bd, 1
  store i32 %i.bg, ptr %i.m, align 4, !tbaa !6
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %rb_Digest_MD5_Update.exit
  %.not.i15 = icmp eq i32 %i.bb, 0
  br i1 %.not.i15, label %._crit_edge.i19.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bh = icmp samesign ugt i32 %i.bb, 56
  %i.bi = sub nuw nsw i64 64, %i.bc
  %i.bj = select i1 %i.bh, i64 %i.bi, i64 8       ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bl, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 %i.bj, i1 false)
  %i.bm = add nuw nsw i64 %i.bj, %i.bc
  %i.bn = icmp samesign ugt i64 %i.bm, 63
  br i1 %i.bn, label %bb.j, label %rb_Digest_MD5_Update.exit26

bb.j:                                             ; preds = %bb.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bj ; 2 uses
  %i.bp = sub nsw i64 8, %i.bj                    ; 3 uses
  tail call fastcc void @md5_process(ptr noundef nonnull %0, ptr noundef nonnull %i.bk)
  %i.bq = icmp ugt i64 %i.bp, 63
  br i1 %i.bq, label %.lr.ph.i23, label %._crit_edge.i19

.lr.ph.i23:                                       ; preds = %bb.j, %.lr.ph.i23
  %.248.i24 = phi ptr [ %i.br, %.lr.ph.i23 ], [ %i.bo, %bb.j ] ; 2 uses
  %.24147.i25 = phi i64 [ %i.bs, %.lr.ph.i23 ], [ %i.bp, %bb.j ]
  call fastcc void @md5_process(ptr noundef nonnull %0, ptr noundef nonnull %.248.i24)
  %i.br = getelementptr inbounds nuw i8, ptr %.248.i24, i64 64 ; 2 uses
  %i.bs = add i64 %.24147.i25, -64                ; 3 uses
  %i.bt = icmp ugt i64 %i.bs, 63
  br i1 %i.bt, label %.lr.ph.i23, label %._crit_edge.i19, !llvm.loop !10

._crit_edge.i19:                                  ; preds = %.lr.ph.i23, %bb.j
  %.241.lcssa.i20 = phi i64 [ %i.bp, %bb.j ], [ %i.bs, %.lr.ph.i23 ] ; 2 uses
  %.2.lcssa.i21 = phi ptr [ %i.bo, %bb.j ], [ %i.br, %.lr.ph.i23 ]
  %.not44.i22 = icmp eq i64 %.241.lcssa.i20, 0
  br i1 %.not44.i22, label %rb_Digest_MD5_Update.exit26, label %._crit_edge.i19.thread

._crit_edge.i19.thread:                           ; preds = %bb.h, %._crit_edge.i19
  %.2.lcssa.i2133 = phi ptr [ %.2.lcssa.i21, %._crit_edge.i19 ], [ %i.a, %bb.h ]
  %.241.lcssa.i2032 = phi i64 [ %.241.lcssa.i20, %._crit_edge.i19 ], [ 8, %bb.h ]
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bu, ptr noundef nonnull align 1 dereferenceable(1) %.2.lcssa.i2133, i64 %.241.lcssa.i2032, i1 false)
  br label %rb_Digest_MD5_Update.exit26

rb_Digest_MD5_Update.exit26:                      ; preds = %bb.i, %._crit_edge.i19, %._crit_edge.i19.thread
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !6
  %i.bx = trunc i32 %i.bw to i8
  store i8 %i.bx, ptr %1, align 1, !tbaa !12
  %i.by = load i32, ptr %i.bv, align 4, !tbaa !6
  %i.bz = lshr i32 %i.by, 8
  %i.ca = trunc i32 %i.bz to i8
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !12
  %2 = load i32, ptr %i.bv, align 4, !tbaa !6
  %3 = lshr i32 %2, 16
  %i.cc = trunc i32 %3 to i8
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !12
  %4 = load i32, ptr %i.bv, align 4, !tbaa !6
  %5 = lshr i32 %4, 24
  %6 = trunc nuw i32 %5 to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %6, ptr %i.ce, align 1, !tbaa !12
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !6
  %i.ch = trunc i32 %i.cg to i8
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !12
  %i.cj = load i32, ptr %i.cf, align 4, !tbaa !6
  %i.ck = lshr i32 %i.cj, 8
  %i.cl = trunc i32 %i.ck to i8
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !12
  %7 = load i32, ptr %i.cf, align 4, !tbaa !6
  %8 = lshr i32 %7, 16
  %i.cn = trunc i32 %8 to i8
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !12
  %9 = load i32, ptr %i.cf, align 4, !tbaa !6
  %10 = lshr i32 %9, 24
  %11 = trunc nuw i32 %10 to i8
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 %11, ptr %i.cp, align 1, !tbaa !12
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !6
  %i.cs = trunc i32 %i.cr to i8
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !12
  %i.cu = load i32, ptr %i.cq, align 4, !tbaa !6
  %i.cv = lshr i32 %i.cu, 8
  %i.cw = trunc i32 %i.cv to i8
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !12
  %12 = load i32, ptr %i.cq, align 4, !tbaa !6
  %13 = lshr i32 %12, 16
  %i.cy = trunc i32 %13 to i8
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i8 %i.cy, ptr %i.cz, align 1, !tbaa !12
  %14 = load i32, ptr %i.cq, align 4, !tbaa !6
  %15 = lshr i32 %14, 24
  %16 = trunc nuw i32 %15 to i8
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 11
  store i8 %16, ptr %i.da, align 1, !tbaa !12
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !6
  %i.dd = trunc i32 %i.dc to i8
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i8 %i.dd, ptr %i.de, align 1, !tbaa !12
  %i.df = load i32, ptr %i.db, align 4, !tbaa !6
  %i.dg = lshr i32 %i.df, 8
  %i.dh = trunc i32 %i.dg to i8
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 13
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !12
  %17 = load i32, ptr %i.db, align 4, !tbaa !6
  %18 = lshr i32 %17, 16
  %i.dj = trunc i32 %18 to i8
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !12
  %19 = load i32, ptr %i.db, align 4, !tbaa !6
  %20 = lshr i32 %19, 24
  %21 = trunc nuw i32 %20 to i8
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 15
  store i8 %21, ptr %i.dl, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!8, !8, i64 0}
end_hunk_0

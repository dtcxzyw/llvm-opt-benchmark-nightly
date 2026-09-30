Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/lan9118?download=true
inline.NumInlined: 39
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@lan9118_receive:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 816 ; 2 uses
  %i.am = load i32, ptr %1, align 1
  %i.an = load i32, ptr %i.al, align 1
  %i.ao = xor i32 %i.am, %i.an
  %i.ap = getelementptr i8, ptr %1, i64 4
  %i.aq = getelementptr i8, ptr %i.al, i64 4
  %i.ar = load i16, ptr %i.ap, align 1
  %i.as = load i16, ptr %i.aq, align 1
  %i.at = zext i16 %i.ar to i32
  %i.au = zext i16 %i.as to i32
  %i.av = xor i32 %i.at, %i.au
  %i.aw = or i32 %i.ao, %i.av
  %i.ax = icmp ne i32 %i.aw, 0                    ; 2 uses
  %i.ay = zext i1 %i.ax to i32
  %i.az = and i32 %i.c, 131072
  %.not28.i = icmp eq i32 %i.az, 0
  br i1 %.not28.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = zext i1 %i.ax to i32
  br label %lan9118_filter.exit

bb.o:                                             ; preds = %bb.m
  %i.bb = icmp eq i32 %i.ay, 0
  %i.bc = zext i1 %i.bb to i32
  br label %lan9118_filter.exit

bb.p:                                             ; preds = %.critedge.i, %bb.l
  %i.bd = tail call i32 @net_crc32(ptr noundef nonnull %1, i32 noundef 6) #5 ; 2 uses
  %i.be = lshr i32 %i.bd, 26                      ; 2 uses
  %.not27.i = icmp sgt i32 %i.bd, -1
  br i1 %.not27.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 9392
  %i.bg = load i32, ptr %i.bf, align 16
  %i.bh = and i32 %i.be, 31
  %i.bi = lshr i32 %i.bg, %i.bh
  %i.bj = and i32 %i.bi, 1
  br label %lan9118_filter.exit

bb.r:                                             ; preds = %bb.p
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 9396
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = lshr i32 %i.bl, %i.be
  %i.bn = and i32 %i.bm, 1
  br label %lan9118_filter.exit

lan9118_filter.exit:                              ; preds = %bb.j, %bb.n, %bb.o, %bb.q, %bb.r
  %.0.i = phi i32 [ %i.bn, %bb.r ], [ %i.ae, %bb.j ], [ %i.bj, %bb.q ], [ %i.ba, %bb.n ], [ %i.bc, %bb.o ]
  %.not = icmp eq i32 %.0.i, 0
  br i1 %.not, label %bb.s, label %lan9118_filter.exit.thread

bb.s:                                             ; preds = %lan9118_filter.exit
  %i.bo = load i32, ptr %i.b, align 4
  %i.bp = icmp sgt i32 %i.bo, -1
  br i1 %i.bp, label %bb.af, label %lan9118_filter.exit.thread

lan9118_filter.exit.thread:                       ; preds = %.thread.i, %bb.c, %bb.s, %lan9118_filter.exit
  %.not108 = phi i1 [ false, %lan9118_filter.exit ], [ true, %bb.s ], [ false, %bb.c ], [ false, %.thread.i ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 9336
  %i.br = load i32, ptr %i.bq, align 8
  %i.bs = lshr i32 %i.br, 8
  %i.bt = and i32 %i.bs, 3                        ; 2 uses
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = add nuw nsw i64 %2, 3
  %i.bw = add nuw nsw i64 %i.bv, %i.bu
  %i.bx = lshr i64 %i.bw, 2
  %i.by = trunc nuw nsw i64 %i.bx to i32          ; 2 uses
  %i.bz = add nuw nsw i32 %i.by, 1
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 18204 ; 4 uses
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 18208 ; 10 uses
  %i.cd = load i32, ptr %i.cc, align 16
  %i.ce = sub i32 %i.cb, %i.cd
  %.not91 = icmp sgt i32 %i.ce, %i.by
  br i1 %.not91, label %.lr.ph, label %bb.af

.lr.ph:                                           ; preds = %lan9118_filter.exit.thread
  %i.cf = trunc nuw nsw i64 %2 to i32             ; 2 uses
  %i.cg = tail call i64 @crc32(i64 noundef -1, ptr noundef %1, i32 noundef %i.cf) #5
  %i.ch = trunc i64 %i.cg to i32
  %i.ci = tail call i32 @llvm.bswap.i32(i32 %i.ch) ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 18212
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 18216
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph
  %i.cl = phi i64 [ 0, %.lr.ph ], [ %.be, %.backedge.backedge ]
  %.078111 = phi i32 [ 0, %.lr.ph ], [ %.078111.be, %.backedge.backedge ]
  %.080110 = phi i32 [ %i.bt, %.lr.ph ], [ %.080110.be, %.backedge.backedge ]
  %.082109 = phi i32 [ 0, %.lr.ph ], [ %.082109.be, %.backedge.backedge ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1
  %i.co = zext i8 %i.cn to i32
  %i.cp = tail call i32 @llvm.fshl.i32(i32 %i.co, i32 %.078111, i32 24) ; 3 uses
  %i.cq = add nuw nsw i32 %.080110, 1             ; 3 uses
  %i.cr = icmp eq i32 %i.cq, 4
  br i1 %i.cr, label %.thread, label %bb.t

bb.t:                                             ; preds = %.backedge
  %i.cs = add i32 %.082109, 1                     ; 2 uses
  %i.ct = sext i32 %i.cs to i64                   ; 2 uses
  %i.cu = icmp ugt i64 %2, %i.ct
  br i1 %i.cu, label %.backedge.backedge, label %._crit_edge

.backedge.backedge:                               ; preds = %bb.t, %.thread
  %.be = phi i64 [ %i.ct, %bb.t ], [ %i.df, %.thread ]
  %.078111.be = phi i32 [ %i.cp, %bb.t ], [ 0, %.thread ]
  %.080110.be = phi i32 [ %i.cq, %bb.t ], [ 0, %.thread ]
  %.082109.be = phi i32 [ %i.cs, %bb.t ], [ %i.de, %.thread ]
  br label %.backedge, !llvm.loop !11

.thread:                                          ; preds = %.backedge
  %i.cv = load i32, ptr %i.cj, align 4
  %i.cw = load i32, ptr %i.cc, align 16
  %i.cx = add i32 %i.cw, %i.cv                    ; 2 uses
  %i.cy = load i32, ptr %i.ca, align 4            ; 2 uses
  %.not.i98 = icmp slt i32 %i.cx, %i.cy
  %i.cz = select i1 %.not.i98, i32 0, i32 %i.cy
  %spec.select.i = sub i32 %i.cx, %i.cz
  %i.da = sext i32 %spec.select.i to i64
  %i.db = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.da
  store i32 %i.cp, ptr %i.db, align 4
  %i.dc = load i32, ptr %i.cc, align 16
  %i.dd = add i32 %i.dc, 1
  store i32 %i.dd, ptr %i.cc, align 16
  %i.de = add i32 %.082109, 1                     ; 2 uses
  %i.df = sext i32 %i.de to i64                   ; 2 uses
  %i.dg = icmp ugt i64 %2, %i.df
  br i1 %i.dg, label %.backedge.backedge, label %bb.u

._crit_edge:                                      ; preds = %bb.t
  %i.dh = shl nuw nsw i32 %i.cq, 3                ; 2 uses
  %i.di = sub nuw nsw i32 32, %i.dh               ; 2 uses
  %i.dj = lshr i32 %i.cp, %i.di
  %i.dk = shl i32 %i.ci, %i.dh
  %i.dl = or disjoint i32 %i.dj, %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 18212 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4
  %i.do = load i32, ptr %i.cc, align 16
  %i.dp = add i32 %i.do, %i.dn                    ; 2 uses
  %i.dq = load i32, ptr %i.ca, align 4            ; 2 uses
  %.not.i99 = icmp slt i32 %i.dp, %i.dq
  %i.dr = select i1 %.not.i99, i32 0, i32 %i.dq
  %spec.select.i100 = sub i32 %i.dp, %i.dr
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 18216
  %i.dt = sext i32 %spec.select.i100 to i64
  %i.du = getelementptr inbounds [4 x i8], ptr %i.ds, i64 %i.dt
  store i32 %i.dl, ptr %i.du, align 4
  %i.dv = load i32, ptr %i.cc, align 16
  %i.dw = add i32 %i.dv, 1                        ; 2 uses
  store i32 %i.dw, ptr %i.cc, align 16
  %i.dx = lshr i32 %i.ci, %i.di
  %i.dy = load i32, ptr %i.dm, align 4
  %i.dz = add i32 %i.dy, %i.dw
  br label %bb.v

bb.u:                                             ; preds = %.thread
  %i.ea = getelementptr inbounds nuw i8, ptr %i.a, i64 18212
  %i.eb = load i32, ptr %i.ea, align 4
  %i.ec = load i32, ptr %i.cc, align 16
  %i.ed = add i32 %i.ec, %i.eb
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge
  %.sink138 = phi i32 [ %i.ed, %bb.u ], [ %i.dz, %._crit_edge ] ; 2 uses
  %.sink = phi i32 [ %i.ci, %bb.u ], [ %i.dx, %._crit_edge ]
  %i.ee = load i32, ptr %i.ca, align 4            ; 2 uses
  %.not.i103 = icmp slt i32 %.sink138, %i.ee
  %i.ef = select i1 %.not.i103, i32 0, i32 %i.ee
  %spec.select.i104 = sub i32 %.sink138, %i.ef
  %i.eg = getelementptr inbounds nuw i8, ptr %i.a, i64 18216
  %i.eh = sext i32 %spec.select.i104 to i64
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.eh
  store i32 %.sink, ptr %i.ei, align 4
  %storemerge.in = load i32, ptr %i.cc, align 16
  %storemerge = add i32 %storemerge.in, 1
  store i32 %storemerge, ptr %i.cc, align 16
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 14616
  %i.ek = load i32, ptr %i.ej, align 8
  %i.el = load i32, ptr %i.g, align 4
  %i.em = add i32 %i.el, %i.ek                    ; 2 uses
  %i.en = load i32, ptr %i.i, align 16            ; 2 uses
  %.not93 = icmp slt i32 %i.em, %i.en
  %i.eo = select i1 %.not93, i32 0, i32 %i.en
  %spec.select = sub i32 %i.em, %i.eo
  %i.ep = getelementptr inbounds nuw i8, ptr %i.a, i64 31664
  %i.eq = getelementptr inbounds nuw i8, ptr %i.a, i64 31660 ; 3 uses
  %i.er = load i32, ptr %i.eq, align 4
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds [4 x i8], ptr %i.ep, i64 %i.es
  store i32 %i.bz, ptr %i.et, align 4
  %i.eu = load i32, ptr %i.eq, align 4
  %i.ev = add i32 %i.eu, 1023
  %i.ew = and i32 %i.ev, 1023
  store i32 %i.ew, ptr %i.eq, align 4
  %i.ex = load i32, ptr %i.g, align 4
  %i.ey = add i32 %i.ex, 1
  store i32 %i.ey, ptr %i.g, align 4
  %i.ez = shl nuw nsw i32 %i.cf, 16
  %3 = add nuw nsw i32 %i.ez, 262144              ; 2 uses
  %i.fa = load i8, ptr %1, align 1                ; 2 uses
  %i.fb = icmp eq i8 %i.fa, -1
  br i1 %i.fb, label %bb.w, label %bb.ac

bb.w:                                             ; preds = %bb.v
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.fd = load i8, ptr %i.fc, align 1
  %i.fe = icmp eq i8 %i.fd, -1
  br i1 %i.fe, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %bb.w
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.fg = load i8, ptr %i.ff, align 1
  %i.fh = icmp eq i8 %i.fg, -1
  br i1 %i.fh, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.fj = load i8, ptr %i.fi, align 1
  %i.fk = icmp eq i8 %i.fj, -1
  br i1 %i.fk, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.fm = load i8, ptr %i.fl, align 1
  %i.fn = icmp eq i8 %i.fm, -1
  br i1 %i.fn, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.fp = load i8, ptr %i.fo, align 1
  %i.fq = icmp eq i8 %i.fp, -1
  br i1 %i.fq, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %4 = or disjoint i32 %3, 8192
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v
  %i.fr = and i8 %i.fa, 1
  %5 = zext nneg i8 %i.fr to i32
  %6 = shl nuw nsw i32 %5, 10
  %spec.select95 = or disjoint i32 %6, %3
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.0 = phi i32 [ %4, %bb.ab ], [ %spec.select95, %bb.ac ] ; 2 uses
  %i.fs = or i32 %.0, 1073741824
  %spec.select96 = select i1 %.not108, i32 %i.fs, i32 %.0
  %i.ft = getelementptr inbounds nuw i8, ptr %i.a, i64 14620
  %i.fu = sext i32 %spec.select to i64
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %i.fu
  store i32 %spec.select96, ptr %i.fv, align 4
  %i.fw = load i32, ptr %i.g, align 4
  %i.fx = getelementptr inbounds nuw i8, ptr %i.a, i64 9332
  %i.fy = load i32, ptr %i.fx, align 4
  %i.fz = and i32 %i.fy, 255
  %i.ga = icmp ugt i32 %i.fw, %i.fz
  %i.gb = getelementptr inbounds nuw i8, ptr %i.a, i64 9324 ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 4            ; 2 uses
  br i1 %i.ga, label %bb.ae, label %._crit_edge114

bb.ae:                                            ; preds = %bb.ad
  %i.gd = or i32 %i.gc, 8                         ; 2 uses
  store i32 %i.gd, ptr %i.gb, align 4
  br label %._crit_edge114

._crit_edge114:                                   ; preds = %bb.ad, %bb.ae
  %i.ge = phi i32 [ %i.gd, %bb.ae ], [ %i.gc, %bb.ad ]
  %i.gf = getelementptr inbounds nuw i8, ptr %i.a, i64 9328
  %i.gg = load i32, ptr %i.gf, align 16
  %i.gh = and i32 %i.gg, %i.ge
  %i.gi = icmp ne i32 %i.gh, 0                    ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.a, i64 9320 ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 8            ; 3 uses
  %i.gl = and i32 %i.gk, -4097
  %masksel.i = select i1 %i.gi, i32 4096, i32 0
  %.sink.i = or disjoint i32 %masksel.i, %i.gl
  store i32 %.sink.i, ptr %i.gj, align 8
  %i.gm = and i32 %i.gk, 256
  %i.gn = icmp ne i32 %i.gm, 0
  %narrow.i = and i1 %i.gi, %i.gn
  %i.go = and i32 %i.gk, 17
  %.not.i105 = icmp ne i32 %i.go, 17
  %.110.i = xor i1 %.not.i105, %narrow.i
  %.1.i = zext i1 %.110.i to i32
  %i.gp = getelementptr inbounds nuw i8, ptr %i.a, i64 9032
  %i.gq = load ptr, ptr %i.gp, align 8
  tail call void @qemu_set_irq(ptr noundef %i.gq, i32 noundef %.1.i) #5
  br label %bb.af

bb.af:                                            ; preds = %lan9118_filter.exit.thread, %bb.s, %bb.b, %bb.a, %._crit_edge114
  %.083 = phi i64 [ -1, %bb.b ], [ -1, %bb.a ], [ -1, %lan9118_filter.exit.thread ], [ %2, %bb.s ], [ %2, %._crit_edge114 ]
  ret i64 %.083
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @lan9118_set_link(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @qemu_get_nic_opaque(ptr noundef %0) #5
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.a, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, i32 noundef 189, ptr noundef nonnull @__func__.LAN9118) #5
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 9416
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp ne i32 %i.e, 0
  tail call void @lan9118_phy_update_link(ptr noundef nonnull %i.c, i1 noundef zeroext %i.f) #5
  ret void
}

declare ptr @qemu_get_nic_opaque(ptr noundef) local_unnamed_addr #1

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #2

declare i32 @net_crc32(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @lan9118_phy_update_link(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
end_hunk_0

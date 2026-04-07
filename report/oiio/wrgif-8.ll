begin_hunk_0_@finish_output_gif:bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  store i32 38, ptr %i.af, align 8, !tbaa !34
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !38
  tail call void %i.ag(ptr noundef nonnull %i.ad) #7
  br label %.thread.i

.thread.i:                                        ; preds = %bb.f, %bb.e
end_hunk_0
begin_hunk_1_@finish_output_gif:bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  store i32 38, ptr %i.aw, align 8, !tbaa !34
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !38
  tail call void %i.ax(ptr noundef nonnull %i.au) #7
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
end_hunk_1
begin_hunk_2_@put_LZW_pixel_rows:bb.a
.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 100 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 5 uses
end_hunk_2
begin_hunk_3_@put_LZW_pixel_rows:bb.a
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !61  ; 2 uses
  %i.ac = sext i32 %spec.select to i64            ; 4 uses
  %i.ad = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !74 ; 2 uses
  %i.af = icmp eq i16 %i.ae, 0
  br i1 %i.af, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @output(ptr noundef nonnull %1, i16 noundef signext %i.u)
  %i.ag = load i16, ptr %i.j, align 8, !tbaa !75  ; 3 uses
  %i.ah = icmp slt i16 %i.ag, 4096
  br i1 %i.ah, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ai = add nsw i16 %i.ag, 1
  store i16 %i.ai, ptr %i.j, align 8, !tbaa !75
  %i.aj = load ptr, ptr %i.h, align 8, !tbaa !61
  %i.ak = getelementptr inbounds [2 x i8], ptr %i.aj, i64 %i.ac
  store i16 %i.ag, ptr %i.ak, align 2, !tbaa !74
  %i.al = load ptr, ptr %i.i, align 8, !tbaa !63
  %i.am = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.ac
  store i32 %i.aa, ptr %i.am, align 4, !tbaa !4
end_hunk_3
begin_hunk_4_@put_LZW_pixel_rows:bb.a
bb.g:                                             ; preds = %bb.e
  %.val.i = load ptr, ptr %i.h, align 8, !tbaa !61
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(10006) %.val.i, i8 0, i64 10006, i1 false)
  %i.an = load i16, ptr %i.k, align 4, !tbaa !76  ; 2 uses
  %i.ao = add i16 %i.an, 2
  store i16 %i.ao, ptr %i.j, align 8, !tbaa !75
  tail call fastcc void @output(ptr noundef nonnull %1, i16 noundef signext %i.an)
  %i.ap = load i32, ptr %i.l, align 8, !tbaa !77  ; 2 uses
  store i32 %i.ap, ptr %i.m, align 8, !tbaa !78
  %notmask.i = shl nsw i32 -1, %i.ap
  %i.aq = trunc i32 %notmask.i to i16
  %i.ar = xor i16 %i.aq, -1
  store i16 %i.ar, ptr %i.n, align 4, !tbaa !79
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
end_hunk_4
begin_hunk_5_@put_LZW_pixel_rows:bb.a
  %spec.select70 = select i1 %i.ay, i32 %i.az, i32 %i.ax ; 2 uses
  %i.ba = sext i32 %spec.select70 to i64          ; 4 uses
  %i.bb = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %i.ba
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !74 ; 2 uses
  %i.bd = icmp eq i16 %i.bc, 0
  br i1 %i.bd, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @output(ptr noundef %1, i16 noundef signext %i.u)
  %i.be = load i16, ptr %i.j, align 8, !tbaa !75  ; 3 uses
  %i.bf = icmp slt i16 %i.be, 4096
  br i1 %i.bf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bg = add nsw i16 %i.be, 1
  store i16 %i.bg, ptr %i.j, align 8, !tbaa !75
  %i.bh = load ptr, ptr %i.h, align 8, !tbaa !61
  %i.bi = getelementptr inbounds [2 x i8], ptr %i.bh, i64 %i.ba
  store i16 %i.be, ptr %i.bi, align 2, !tbaa !74
  %i.bj = load ptr, ptr %i.i, align 8, !tbaa !63
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.ba
  store i32 %i.aa, ptr %i.bk, align 4, !tbaa !4
end_hunk_5
begin_hunk_6_@put_LZW_pixel_rows:bb.a
bb.o:                                             ; preds = %bb.m
  %.val.i71 = load ptr, ptr %i.h, align 8, !tbaa !61
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(10006) %.val.i71, i8 0, i64 10006, i1 false)
  %i.bl = load i16, ptr %i.k, align 4, !tbaa !76  ; 2 uses
  %i.bm = add i16 %i.bl, 2
  store i16 %i.bm, ptr %i.j, align 8, !tbaa !75
  tail call fastcc void @output(ptr noundef nonnull %1, i16 noundef signext %i.bl)
  %i.bn = load i32, ptr %i.l, align 8, !tbaa !77  ; 2 uses
  store i32 %i.bn, ptr %i.m, align 8, !tbaa !78
  %notmask.i72 = shl nsw i32 -1, %i.bn
  %i.bo = trunc i32 %notmask.i72 to i16
  %i.bp = xor i16 %i.bo, -1
  store i16 %i.bp, ptr %i.n, align 4, !tbaa !79
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
end_hunk_6
begin_hunk_7_@put_LZW_pixel_rows:bb.a
bb.s:                                             ; preds = %bb.p, %bb.r, %bb.j, %bb.h, %bb.c
  %i.bt = add i32 %.06377, -1                     ; 2 uses
  %.not = icmp eq i32 %i.bt, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !80

._crit_edge:                                      ; preds = %bb.s, %bb.a
  ret void
end_hunk_7
begin_hunk_8_@put_raw_pixel_rows:bb.a
.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 114 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 108 ; 2 uses
end_hunk_8
begin_hunk_9_@put_raw_pixel_rows:bb.a
  %i.j = load i8, ptr %.017, align 1, !tbaa !37
  %i.k = zext i8 %i.j to i16
  tail call fastcc void @output(ptr noundef nonnull %1, i16 noundef signext %i.k)
  %i.l = load i16, ptr %i.f, align 2, !tbaa !82   ; 2 uses
  %i.m = load i16, ptr %i.g, align 4, !tbaa !79
  %i.n = icmp slt i16 %i.l, %i.m
  br i1 %i.n, label %bb.c, label %bb.d

end_hunk_9
begin_hunk_10_@put_raw_pixel_rows:bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.p = load i16, ptr %i.h, align 4, !tbaa !76
  tail call fastcc void @output(ptr noundef nonnull %1, i16 noundef signext %i.p)
  %i.q = load i16, ptr %i.h, align 4, !tbaa !76
  %i.r = add i16 %i.q, 2
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %storemerge = phi i16 [ %i.r, %bb.d ], [ %i.o, %bb.c ]
  store i16 %storemerge, ptr %i.f, align 2, !tbaa !82
  %i.s = add i32 %.01416, -1                      ; 2 uses
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !83

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void
end_hunk_10
begin_hunk_11_@emit_header:bb.a
  %i.m = shl nuw i32 1, %.071                     ; 3 uses
  %i.n = icmp sgt i32 %1, %i.m
  %i.o = add nuw nsw i32 %.071, 1
  br i1 %i.n, label %bb.c, label %bb.d, !llvm.loop !84

bb.d:                                             ; preds = %bb.c
  %..071 = tail call i32 @llvm.umax.i32(i32 %.071, i32 2) ; 4 uses
end_hunk_11
begin_hunk_12_@emit_header:bb.a
  %i.al = tail call i32 @putc(i32 noundef %i.aj, ptr noundef %i.ak) ; 0 uses
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 140
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !85 ; 2 uses
  %i.ap = and i32 %i.ao, 255
  %i.aq = load ptr, ptr %i.p, align 8, !tbaa !72
  %i.ar = tail call i32 @putc(i32 noundef %i.ap, ptr noundef %i.aq) ; 0 uses
end_hunk_12
begin_hunk_13_@emit_header:bb.a
  %i.bv = tail call i32 @putc(i32 noundef %.sink92, ptr noundef %i.bu) ; 0 uses
  %i.bw = add nuw nsw i32 %.076.us, 1             ; 2 uses
  %exitcond83.not = icmp eq i32 %i.bw, %smax82
  br i1 %exitcond83.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !86

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.k ] ; 5 uses
end_hunk_13
begin_hunk_14_@emit_header:bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 64
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !52
  %i.cb = icmp eq i32 %i.ca, 2
  %i.cc = load ptr, ptr %2, align 8, !tbaa !73
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %indvars.iv
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !37
  %i.cf = zext i8 %i.ce to i32
end_hunk_14
begin_hunk_15_@emit_header:bb.a
  br i1 %i.cb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cj = load ptr, ptr %i.bh, align 8, !tbaa !73
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %indvars.iv
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !37
  %i.cm = zext i8 %i.cl to i32
  %i.cn = lshr i32 %i.cm, %i.e
  %i.co = load ptr, ptr %i.p, align 8, !tbaa !72
  %i.cp = tail call i32 @putc(i32 noundef %i.cn, ptr noundef %i.co) ; 0 uses
  %i.cq = load ptr, ptr %i.bi, align 8, !tbaa !73
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %indvars.iv
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !37
  %i.ct = zext i8 %i.cs to i32
end_hunk_15
begin_hunk_16_@emit_header:bb.a
  %i.dc = tail call i32 @putc(i32 noundef %.sink94, ptr noundef %i.db) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !86

._crit_edge:                                      ; preds = %bb.k, %bb.f, %bb.d
  %i.dd = load ptr, ptr %i.p, align 8, !tbaa !72
end_hunk_16
begin_hunk_17_@emit_header:bb.a
  %i.dw = tail call i32 @putc(i32 noundef %i.du, ptr noundef %i.dv) ; 0 uses
  %i.dx = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 140
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !85 ; 2 uses
  %i.ea = and i32 %i.dz, 255
  %i.eb = load ptr, ptr %i.p, align 8, !tbaa !72
  %i.ec = tail call i32 @putc(i32 noundef %i.ea, ptr noundef %i.eb) ; 0 uses
end_hunk_17
begin_hunk_18_@emit_header:bb.a
  %i.ek = tail call i32 @putc(i32 noundef %..071, ptr noundef %i.ej) ; 0 uses
  %i.el = add nuw nsw i32 %..071, 1               ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %i.el, ptr %i.em, align 8, !tbaa !77
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %i.el, ptr %i.en, align 8, !tbaa !78
  %notmask.i = shl nsw i32 -2, %..071
  %i.eo = trunc i32 %notmask.i to i16
  %i.ep = xor i16 %i.eo, -1
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i16 %i.ep, ptr %i.eq, align 4, !tbaa !79
  %i.er = shl nuw i32 1, %..071
  %i.es = trunc i32 %i.er to i16                  ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  store i16 %i.es, ptr %i.et, align 4, !tbaa !76
  %i.eu = add i16 %i.es, 1
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 110
  store i16 %i.eu, ptr %i.ev, align 2, !tbaa !68
  %i.ew = add i16 %i.es, 2                        ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i16 %i.ew, ptr %i.ex, align 8, !tbaa !75
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 114
  store i16 %i.ew, ptr %i.ey, align 2, !tbaa !82
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 1, ptr %i.ez, align 8, !tbaa !66
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 136
end_hunk_18
begin_hunk_19_@emit_header:bb.a

bb.l:                                             ; preds = %._crit_edge
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(10006) %i.fe, i8 0, i64 10006, i1 false)
  %.pre.i = load i16, ptr %i.et, align 4, !tbaa !76
  br label %compress_init.exit

compress_init.exit:                               ; preds = %._crit_edge, %bb.l
end_hunk_19
begin_hunk_20_@output:bb.a
  %i.i = or i32 %i.g, %i.h                        ; 2 uses
  store i32 %i.i, ptr %i.f, align 4, !tbaa !71
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !78
  %i.l = add nsw i32 %i.k, %i.c                   ; 2 uses
  store i32 %i.l, ptr %i.b, align 8, !tbaa !69
  %i.m = icmp sgt i32 %i.l, 7
end_hunk_20
begin_hunk_21_@output:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  store i32 38, ptr %i.ai, align 8, !tbaa !34
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !38
  tail call void %i.aj(ptr noundef nonnull %i.ag) #7
  br label %flush_packet.exit

flush_packet.exit:                                ; preds = %bb.c, %bb.d
end_hunk_21
begin_hunk_22_@output:bb.a
  %i.ao = add nsw i32 %i.an, -8
  store i32 %i.ao, ptr %i.b, align 8, !tbaa !69
  %i.ap = icmp sgt i32 %i.an, 15
  br i1 %i.ap, label %bb.b, label %._crit_edge, !llvm.loop !87

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ar = load i16, ptr %i.aq, align 8, !tbaa !75
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.at = load i16, ptr %i.as, align 4, !tbaa !79
  %i.au = icmp sgt i16 %i.ar, %i.at
  br i1 %i.au, label %.sink.split, label %bb.f

.sink.split:                                      ; preds = %._crit_edge
  %i.av = load i32, ptr %i.j, align 8, !tbaa !78
  %i.aw = add nsw i32 %i.av, 1                    ; 3 uses
  store i32 %i.aw, ptr %i.j, align 8, !tbaa !78
  %i.ax = icmp eq i32 %i.aw, 12
  %notmask = shl nsw i32 -1, %i.aw
  %i.ay = trunc i32 %notmask to i16
  %i.az = xor i16 %i.ay, -1
  %.sink = select i1 %i.ax, i16 4096, i16 %i.az
  store i16 %.sink, ptr %i.as, align 4, !tbaa !79
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %._crit_edge
end_hunk_22
begin_hunk_23_@llvm.smax.i32
!70 = !{!43, !5, i64 136}
!71 = !{!43, !5, i64 92}
!72 = !{!43, !45, i64 32}
!73 = !{!21, !21, i64 0}
!74 = !{!19, !19, i64 0}
!75 = !{!43, !19, i64 112}
!76 = !{!43, !19, i64 108}
!77 = !{!43, !5, i64 88}
!78 = !{!43, !5, i64 80}
!79 = !{!43, !19, i64 84}
!80 = distinct !{!80, !81}
!81 = !{!"llvm.loop.mustprogress"}
!82 = !{!43, !19, i64 114}
!83 = distinct !{!83, !81}
!84 = distinct !{!84, !81}
!85 = !{!9, !5, i64 140}
!86 = distinct !{!86, !81}
!87 = distinct !{!87, !81}
end_hunk_23

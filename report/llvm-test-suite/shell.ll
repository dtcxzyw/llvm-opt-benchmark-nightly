inline.NumInlined: 40
inline.NumDeleted: 14
begin_hunk_0_@sqlite3_exec
; Function Attrs: nofree nounwind uwtable
define internal noundef i32 @callback(ptr noundef %0, i32 noundef %1, ptr noundef readonly captures(address_is_null) %2, ptr noundef readonly captures(none) %3) #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11
  switch i32 %i.b, label %.loopexit [
    i32 0, label %bb.b
end_hunk_0
begin_hunk_1_@callback:bb.a
  br i1 %i.ab, label %.lr.ph364, label %.loopexit

.lr.ph364:                                        ; preds = %.preheader324
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.not287 = icmp eq ptr %2, null
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 868
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = add nsw i32 %1, -1
  %i.ai = zext nneg i32 %i.ah to i64
  %wide.trip.count431 = zext nneg i32 %1 to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph364, %bb.n
  %indvars.iv428 = phi i64 [ 0, %.lr.ph364 ], [ %indvars.iv.next429, %bb.n ] ; 8 uses
  %i.aj = icmp samesign ult i64 %indvars.iv428, 100 ; 2 uses
  br i1 %i.aj, label %bb.h, label %.thread

end_hunk_1
begin_hunk_2_@callback:bb.a

bb.n:                                             ; preds = %bb.m, %bb.l
  %indvars.iv.next429 = add nuw nsw i64 %indvars.iv428, 1 ; 2 uses
  %exitcond432.not = icmp eq i64 %indvars.iv.next429, %wide.trip.count431
  br i1 %exitcond432.not, label %._crit_edge365, label %bb.g, !llvm.loop !70

._crit_edge365:                                   ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !24
  %.not283.not = icmp eq i32 %i.bf, 0
end_hunk_2
begin_hunk_3_@callback:bb.a
  %i.bq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bn, ptr noundef nonnull @.str.142, i32 noundef %.0225, i32 noundef %.0225, ptr noundef nonnull @.str.143, ptr noundef nonnull %i.bp) #23 ; 0 uses
  %indvars.iv.next434 = add nuw nsw i64 %indvars.iv433, 1 ; 2 uses
  %exitcond437.not = icmp eq i64 %indvars.iv.next434, %wide.trip.count436
  br i1 %exitcond437.not, label %.loopexit323, label %bb.o, !llvm.loop !71

.loopexit323:                                     ; preds = %bb.q, %._crit_edge365, %bb.f
  %i.br = icmp ne ptr %2, null
end_hunk_3
begin_hunk_4_@callback:bb.a
  br i1 %or.cond377, label %.lr.ph369, label %.loopexit

.lr.ph369:                                        ; preds = %.loopexit323
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 868
  %i.bw = add nsw i32 %1, -1
  %i.bx = zext nneg i32 %i.bw to i64
  %wide.trip.count441 = zext nneg i32 %1 to i64
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph369, %._crit_edge454
  %indvars.iv438 = phi i64 [ 0, %.lr.ph369 ], [ %indvars.iv.next439, %._crit_edge454 ] ; 5 uses
  %i.by = icmp samesign ult i64 %indvars.iv438, 100
  br i1 %i.by, label %bb.s, label %bb.t

end_hunk_4
begin_hunk_5_@callback:bb.a
  %i.cl = select i1 %i.ck, ptr @.str.107, ptr @.str.114
  %i.cm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ci, ptr noundef nonnull @.str.142, i32 noundef %.1224, i32 noundef %.1224, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.cl) #23 ; 0 uses
  %indvars.iv.next439 = add nuw nsw i64 %indvars.iv438, 1 ; 2 uses
  %exitcond442.not = icmp eq i64 %indvars.iv.next439, %wide.trip.count441
  br i1 %exitcond442.not, label %.loopexit, label %bb.r, !llvm.loop !72

bb.w:                                             ; preds = %bb.a, %bb.a
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
end_hunk_5
begin_hunk_6_@callback:bb.a
  br i1 %or.cond378, label %.lr.ph360, label %.loopexit328

.lr.ph360:                                        ; preds = %bb.x
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cv = add nsw i32 %1, -1
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cx = zext nneg i32 %i.cv to i64
  %wide.trip.count421 = zext nneg i32 %1 to i64
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph360, %bb.y
  %indvars.iv418 = phi i64 [ 0, %.lr.ph360 ], [ %indvars.iv.next419, %bb.y ] ; 3 uses
  %i.cy = load ptr, ptr %i.cu, align 8, !tbaa !21
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv418
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !8
end_hunk_6
begin_hunk_7_@callback:bb.a
  %i.dc = select i1 %i.db, ptr @.str.107, ptr %i.cw
  %i.dd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cy, ptr noundef nonnull @.str.144, ptr noundef %i.da, ptr noundef nonnull %i.dc) #23 ; 0 uses
  %indvars.iv.next419 = add nuw nsw i64 %indvars.iv418, 1 ; 2 uses
  %exitcond422.not = icmp eq i64 %indvars.iv.next419, %wide.trip.count421
  br i1 %exitcond422.not, label %.loopexit328, label %bb.y, !llvm.loop !73

.loopexit328:                                     ; preds = %bb.y, %bb.x, %bb.w
  %i.de = icmp ne ptr %2, null
  %i.df = icmp sgt i32 %1, 0
  %or.cond379 = and i1 %i.de, %i.df
end_hunk_7
begin_hunk_8_@callback:bb.a
bb.ae:                                            ; preds = %bb.ac, %bb.ad, %bb.aa
  %indvars.iv.next424 = add nuw nsw i64 %indvars.iv423, 1 ; 2 uses
  %exitcond427.not = icmp eq i64 %indvars.iv.next424, %wide.trip.count426
  br i1 %exitcond427.not, label %.loopexit, label %bb.z, !llvm.loop !74

bb.af:                                            ; preds = %bb.a
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
end_hunk_8
begin_hunk_9_@callback:bb.a
  %i.ei = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ef, ptr noundef nonnull @.str.147, ptr noundef %i.eh) #23 ; 0 uses
  %indvars.iv.next409 = add nuw nsw i64 %indvars.iv408, 1 ; 2 uses
  %exitcond412.not = icmp eq i64 %indvars.iv.next409, %wide.trip.count411
  br i1 %exitcond412.not, label %._crit_edge354, label %.lr.ph353, !llvm.loop !75

._crit_edge354:                                   ; preds = %.lr.ph353, %bb.ah
  %i.ej = load ptr, ptr %i.eb, align 8, !tbaa !21
end_hunk_9
begin_hunk_10_@callback:bb.a
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.01928.i, i64 %indvars.iv.next.i
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !tbaa !16
  br label %bb.al, !llvm.loop !76

.critedge.i:                                      ; preds = %bb.al, %bb.al, %bb.al
  %i.fa = getelementptr inbounds nuw i8, ptr %.01928.i, i64 %indvars.iv.i ; 2 uses
end_hunk_10
begin_hunk_11_@callback:bb.a
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fa, i64 1 ; 2 uses
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !16  ; 2 uses
  %.not.i = icmp eq i8 %i.fh, 0
  br i1 %.not.i, label %output_html_string.exit.loopexit, label %.preheader.i, !llvm.loop !77

output_html_string.exit.loopexit:                 ; preds = %bb.ar, %bb.ao
  %.pre453 = load ptr, ptr %i.em, align 8, !tbaa !21
end_hunk_11
begin_hunk_12_@callback:bb.a
  %i.fj = tail call i64 @fwrite(ptr nonnull @.str.150, i64 6, i64 1, ptr %i.fi) ; 0 uses
  %indvars.iv.next414 = add nuw nsw i64 %indvars.iv413, 1 ; 2 uses
  %exitcond417.not = icmp eq i64 %indvars.iv.next414, %wide.trip.count416
  br i1 %exitcond417.not, label %._crit_edge358, label %bb.ak, !llvm.loop !78

._crit_edge358:                                   ; preds = %output_html_string.exit, %bb.aj
  %i.fk = load ptr, ptr %i.em, align 8, !tbaa !21
end_hunk_12
begin_hunk_13_@callback:bb.a
  %fputs276 = tail call i32 @fputs(ptr nonnull %i.fu, ptr %i.fy) ; 0 uses
  %indvars.iv.next399 = add nuw nsw i64 %indvars.iv398, 1 ; 2 uses
  %exitcond402.not = icmp eq i64 %indvars.iv.next399, %wide.trip.count401
  br i1 %exitcond402.not, label %._crit_edge347, label %bb.au, !llvm.loop !79

._crit_edge347:                                   ; preds = %bb.au, %.preheader330
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_13
begin_hunk_14_@callback:bb.a
  %fputs274 = tail call i32 @fputs(ptr nonnull %i.gf, ptr %i.gk) ; 0 uses
  %indvars.iv.next404 = add nuw nsw i64 %indvars.iv403, 1 ; 2 uses
  %exitcond407.not = icmp eq i64 %indvars.iv.next404, %wide.trip.count406
  br i1 %exitcond407.not, label %._crit_edge350, label %bb.aw, !llvm.loop !80

._crit_edge350:                                   ; preds = %bb.aw, %.preheader329
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_14
begin_hunk_15_@callback:bb.a
  tail call fastcc void @output_csv(ptr noundef nonnull %0, ptr noundef nonnull %spec.select298, i32 noundef %i.gz)
  %indvars.iv.next389 = add nuw nsw i64 %indvars.iv388, 1 ; 2 uses
  %exitcond392.not = icmp eq i64 %indvars.iv.next389, %wide.trip.count391
  br i1 %exitcond392.not, label %._crit_edge341, label %bb.az, !llvm.loop !81

._crit_edge341:                                   ; preds = %bb.az, %.preheader332
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_15
begin_hunk_16_@callback:bb.a
  tail call fastcc void @output_csv(ptr noundef nonnull %0, ptr noundef %i.hh, i32 noundef %i.hj)
  %indvars.iv.next394 = add nuw nsw i64 %indvars.iv393, 1 ; 2 uses
  %exitcond397.not = icmp eq i64 %indvars.iv.next394, %wide.trip.count396
  br i1 %exitcond397.not, label %._crit_edge344, label %bb.bb, !llvm.loop !82

._crit_edge344:                                   ; preds = %bb.bb, %.preheader331
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_16
begin_hunk_17_@callback:bb.a
  %i.il = load i16, ptr %i.ik, align 2, !tbaa !32
  %i.im = and i16 %i.il, 2048
  %.not35.i = icmp eq i16 %i.im, 0
  br i1 %.not35.i, label %bb.bi, label %.preheader3.i, !llvm.loop !83

bb.bi:                                            ; preds = %.preheader3.i
  %i.in = icmp eq i8 %i.ii, 46
end_hunk_17
begin_hunk_18_@callback:bb.a
  %i.iy = and i16 %i.ix, 2048
  %.not37.i = icmp eq i16 %i.iy, 0
  %i.iz = getelementptr inbounds nuw i8, ptr %.2.i, i64 1
  br i1 %.not37.i, label %.loopexit2.i, label %.preheader1.i, !llvm.loop !84

.loopexit2.i:                                     ; preds = %.preheader1.i, %bb.bi
  %i.ja = phi i8 [ %i.ii, %bb.bi ], [ %i.iu, %.preheader1.i ] ; 2 uses
end_hunk_18
begin_hunk_19_@callback:bb.a
  %i.jn = and i16 %i.jm, 2048
  %.not39.i = icmp eq i16 %i.jn, 0
  %i.jo = getelementptr inbounds nuw i8, ptr %.5.i, i64 1
  br i1 %.not39.i, label %isNumber.exit, label %.preheader.i301, !llvm.loop !85

isNumber.exit:                                    ; preds = %.preheader.i301, %.loopexit2.i
  %i.jp = phi i8 [ %i.ja, %.loopexit2.i ], [ %i.jj, %.preheader.i301 ]
end_hunk_19
begin_hunk_20_@callback:bb.a
bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.1.i304 = phi i32 [ %i.jy, %bb.br ], [ %.0.i303, %bb.bq ]
  %indvars.iv.next.i305 = add nuw nsw i64 %indvars.iv.i302, 1
  br label %bb.bq, !llvm.loop !86

bb.bt:                                            ; preds = %bb.bq
  %i.jz = icmp eq i32 %.0.i303, 0
end_hunk_20
begin_hunk_21_@callback:bb.a
  %indvars.iv.next47.i = add nuw nsw i64 %indvars.iv46.i, 1 ; 2 uses
  %.phi.trans.insert.i309 = getelementptr inbounds nuw i8, ptr %.03042.i, i64 %indvars.iv.next47.i
  %.pre.i310 = load i8, ptr %.phi.trans.insert.i309, align 1, !tbaa !16
  br label %bb.bw, !llvm.loop !87

.critedge.i307:                                   ; preds = %bb.bw, %bb.bw
  %i.ke = getelementptr inbounds nuw i8, ptr %.03042.i, i64 %indvars.iv46.i
end_hunk_21
begin_hunk_22_@callback:bb.a
  %.131.i = getelementptr inbounds nuw i8, ptr %.030.pn.i, i64 1 ; 2 uses
  %i.kk = load i8, ptr %.131.i, align 1, !tbaa !16 ; 2 uses
  %.not34.i = icmp eq i8 %i.kk, 0
  br i1 %.not34.i, label %.loopexit.i308, label %.preheader.i306, !llvm.loop !88

.loopexit.i308:                                   ; preds = %bb.cc, %bb.cb, %bb.bv
  %fputc37.i = tail call i32 @fputc(i32 39, ptr %i.jv) ; 0 uses
end_hunk_22
begin_hunk_23_@callback:bb.a
output_quoted_string.exit:                        ; preds = %.loopexit.i308, %bb.bu, %bb.bn, %bb.be
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !89

._crit_edge:                                      ; preds = %output_quoted_string.exit, %bb.bd
  %i.kl = load ptr, ptr %i.hn, align 8, !tbaa !21
  %i.km = tail call i64 @fwrite(ptr nonnull @.str.153, i64 3, i64 1, ptr %i.kl) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ae, %._crit_edge454, %bb.e, %.preheader324, %bb.d, %bb.b, %bb.bc, %bb.ba, %bb.av, %bb.ai, %.loopexit328, %.loopexit323, %._crit_edge, %._crit_edge344, %._crit_edge350, %._crit_edge358, %bb.a
  ret i32 0
}

end_hunk_23
begin_hunk_24_@process_input:bb.a

.critedge2.i:                                     ; preds = %bb.v, %bb.u
  %i.aq = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  br label %bb.u, !llvm.loop !90

bb.w:                                             ; preds = %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %.038.i, i64 1
end_hunk_24
begin_hunk_25_@process_input:bb.a

bb.z:                                             ; preds = %bb.y
  %i.aw = getelementptr inbounds nuw i8, ptr %.2.i, i64 1
  br label %bb.y, !llvm.loop !91

.loopexit.i.loopexit:                             ; preds = %bb.v
  %i.ax = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
end_hunk_25
begin_hunk_26_@process_input:bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %.3.i, i64 1 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !16  ; 2 uses
  %.not.i121 = icmp eq i8 %i.az, 0
  br i1 %.not.i121, label %_all_whitespace.exit, label %bb.q, !llvm.loop !92

_all_whitespace.exit:                             ; preds = %.loopexit.i, %bb.y, %bb.p
  br label %bb.b, !llvm.loop !93

_all_whitespace.exit.thread.loopexit229:          ; preds = %bb.o
  %.pre = load i8, ptr %.0.i, align 1, !tbaa !16
end_hunk_26
begin_hunk_27_@process_input:bb.a
  %i.bj = and i16 %i.bi, 8192
  %.not.i122 = icmp eq i16 %i.bj, 0
  %i.bk = getelementptr inbounds nuw i8, ptr %.011.i, i64 1 ; 4 uses
  br i1 %.not.i122, label %bb.ab, label %bb.aa, !llvm.loop !94

bb.ab:                                            ; preds = %bb.aa
  %i.bl = icmp eq i8 %i.bf, 47
end_hunk_27
begin_hunk_28_@process_input:bb.a

.critedge2.i.i:                                   ; preds = %bb.ah, %bb.ag
  %i.bz = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1
  br label %bb.ag, !llvm.loop !90

bb.ai:                                            ; preds = %bb.ad
  %i.ca = getelementptr inbounds nuw i8, ptr %.038.i.i, i64 1
end_hunk_28
begin_hunk_29_@process_input:bb.a

bb.al:                                            ; preds = %bb.ak
  %i.cf = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 1
  br label %bb.ak, !llvm.loop !91

.loopexit.i.i.loopexit:                           ; preds = %bb.ah
  %i.cg = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1
end_hunk_29
begin_hunk_30_@process_input:bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 1 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !16  ; 2 uses
  %.not.i.i = icmp eq i8 %i.ci, 0
  br i1 %.not.i.i, label %_is_command_terminator.exit.thread.thread, label %.lr.ph.i.i, !llvm.loop !92

_all_whitespace.exit.thread.i:                    ; preds = %bb.ai, %bb.ae, %bb.ad, %bb.ag, %bb.ab
  %i.cj = tail call ptr @__ctype_tolower_loc() #30
end_hunk_30
begin_hunk_31_@process_input:bb.a

.critedge2.i25.i:                                 ; preds = %bb.as, %bb.ar
  %i.di = getelementptr inbounds nuw i8, ptr %.1.i23.i, i64 1
  br label %bb.ar, !llvm.loop !90

bb.at:                                            ; preds = %bb.ao
  %i.dj = getelementptr inbounds nuw i8, ptr %.038.i16.i, i64 1
end_hunk_31
begin_hunk_32_@process_input:bb.a

bb.aw:                                            ; preds = %bb.av
  %i.do = getelementptr inbounds nuw i8, ptr %.2.i22.i, i64 1
  br label %bb.av, !llvm.loop !91

.loopexit.i18.i.loopexit:                         ; preds = %bb.as
  %i.dp = getelementptr inbounds nuw i8, ptr %.1.i23.i, i64 1
end_hunk_32
begin_hunk_33_@process_input:bb.a
  %i.dq = getelementptr inbounds nuw i8, ptr %.3.i19.i, i64 1 ; 2 uses
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !16  ; 2 uses
  %.not.i20.i = icmp eq i8 %i.dr, 0
  br i1 %.not.i20.i, label %_is_command_terminator.exit.thread.thread, label %.lr.ph.i15.i, !llvm.loop !92

bb.ax:                                            ; preds = %_all_whitespace.exit.thread
  %i.ds = call fastcc i32 @do_meta_command(ptr noundef %.0.i, ptr noundef %0) ; 2 uses
  switch i32 %i.ds, label %bb.ay [
    i32 2, label %.loopexit177
    i32 0, label %.outer171
  ], !llvm.loop !93

bb.ay:                                            ; preds = %bb.ax
  %i.dt = add nsw i32 %.088.ph173.ph, 1
  br label %.outer171.outer, !llvm.loop !93

_is_command_terminator.exit.thread:               ; preds = %bb.ao, %bb.at, %bb.ap, %bb.ar, %bb.am, %_all_whitespace.exit.thread.i
  br i1 %.not10.i, label %.preheader, label %bb.bd
end_hunk_33
begin_hunk_34_@process_input:bb.a
  %i.dw = getelementptr inbounds nuw i8, ptr %.0.i, i64 %indvars.iv.next
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !16  ; 2 uses
  %.not110 = icmp eq i8 %i.dx, 0
  br i1 %.not110, label %_contains_semicolon.exit.thread, label %bb.ba, !llvm.loop !95

bb.ba:                                            ; preds = %.lr.ph, %bb.az
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.az ]
end_hunk_34
begin_hunk_35_@process_input:bb.a
bb.bh:                                            ; preds = %.lr.ph.i124
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_contains_semicolon.exit.thread, label %.lr.ph.i124, !llvm.loop !96

.lr.ph.i124:                                      ; preds = %bb.bh, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.bh ] ; 2 uses
end_hunk_35
begin_hunk_36_@process_input:bb.a
bb.bk:                                            ; preds = %beginTimer.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.fp = call i32 @getrusage(i32 noundef 0, ptr noundef nonnull %2) #23 ; 0 uses
  %sBegin.val.i = load i64, ptr @sBegin, align 8, !tbaa !97
  %sBegin.val4.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @sBegin, i64 8), align 8, !tbaa !100
  %.val5.i = load i64, ptr %2, align 8, !tbaa !97
  %.val6.i = load i64, ptr %i.g, align 8, !tbaa !100
  %i.fq = sub i64 %.val6.i, %sBegin.val4.i
  %i.fr = sub nsw i64 %.val5.i, %sBegin.val.i
  %i.fs = mul nsw i64 %i.fr, 1000000
end_hunk_36
begin_hunk_37_@process_input:bb.a
  %i.fu = trunc i64 %i.ft to i32
  %i.fv = sitofp i32 %i.fu to double
  %i.fw = fmul nnan double %i.fv, 0x3EB0C6F7A0B5ED8D
  %.val.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @sBegin, i64 16), align 8, !tbaa !97
  %.val1.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @sBegin, i64 24), align 8, !tbaa !100
  %.val2.i = load i64, ptr %i.h, align 8, !tbaa !97
  %.val3.i = load i64, ptr %i.i, align 8, !tbaa !100
  %i.fx = sub i64 %.val3.i, %.val1.i
  %i.fy = sub nsw i64 %.val2.i, %.val.i
  %i.fz = mul nsw i64 %i.fy, 1000000
end_hunk_37
begin_hunk_38_@process_input:bb.a
  %.398 = phi ptr [ null, %bb.bs ], [ %.297.ph, %_contains_semicolon.exit ], [ null, %.preheader ], [ %.297.ph, %bb.bg ], [ %.297.ph, %bb.bh ], [ null, %bb.az ]
  %.394 = phi i32 [ 0, %bb.bs ], [ %.293.ph, %_contains_semicolon.exit ], [ %.091.ph172, %.preheader ], [ %.293.ph, %bb.bg ], [ %.293.ph, %bb.bh ], [ %.091.ph172, %bb.az ]
  %.3 = phi i32 [ %.290, %bb.bs ], [ %.088.ph173.ph, %_contains_semicolon.exit ], [ %.088.ph173.ph, %.preheader ], [ %.088.ph173.ph, %bb.bg ], [ %.088.ph173.ph, %bb.bh ], [ %.088.ph173.ph, %bb.az ]
  br label %.outer, !llvm.loop !93

.loopexit177:                                     ; preds = %bb.ax, %bb.j, %one_input_line.exit, %bb.c
  %.1 = phi ptr [ null, %one_input_line.exit ], [ %.0, %bb.c ], [ %.0.i, %bb.j ], [ %.0.i, %bb.ax ]
end_hunk_38
begin_hunk_39_@process_input:bb.a

.critedge2.i138:                                  ; preds = %bb.bz, %bb.by
  %i.hi = getelementptr inbounds nuw i8, ptr %.1.i136, i64 1
  br label %bb.by, !llvm.loop !90

bb.ca:                                            ; preds = %bb.bv
  %i.hj = getelementptr inbounds nuw i8, ptr %.038.i129, i64 1
end_hunk_39
begin_hunk_40_@process_input:bb.a

bb.cd:                                            ; preds = %bb.cc
  %i.ho = getelementptr inbounds nuw i8, ptr %.2.i135, i64 1
  br label %bb.cc, !llvm.loop !91

.loopexit.i131.loopexit:                          ; preds = %bb.bz
  %i.hp = getelementptr inbounds nuw i8, ptr %.1.i136, i64 1
end_hunk_40
begin_hunk_41_@process_input:bb.a
  %i.hq = getelementptr inbounds nuw i8, ptr %.3.i132, i64 1 ; 2 uses
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !16  ; 2 uses
  %.not.i133 = icmp eq i8 %i.hr, 0
  br i1 %.not.i133, label %_all_whitespace.exit140, label %bb.bu, !llvm.loop !92

.loopexit:                                        ; preds = %bb.ca, %bb.bw, %bb.bv, %bb.by
  %i.hs = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.166, ptr noundef nonnull %.095.ph) ; 0 uses
end_hunk_41
begin_hunk_42_@set_table_name:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  %i.u = load i8, ptr %i.t, align 1, !tbaa !16    ; 2 uses
  %.not51 = icmp eq i8 %i.u, 0
  br i1 %.not51, label %._crit_edge, label %.lr.ph, !llvm.loop !101

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  %.042.lcssa = phi i32 [ 0, %bb.d ], [ %i.s, %.lr.ph ]
end_hunk_42
begin_hunk_43_@set_table_name:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next71
  %i.am = load i8, ptr %i.al, align 1, !tbaa !16  ; 2 uses
  %.not53 = icmp eq i8 %i.am, 0
  br i1 %.not53, label %._crit_edge68, label %.lr.ph67, !llvm.loop !102

._crit_edge68:                                    ; preds = %bb.j, %bb.h
  %.4.lcssa = phi i32 [ %.3, %bb.h ], [ %.5, %bb.j ] ; 3 uses
end_hunk_43
begin_hunk_44_@run_table_dump_query:bb.a
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.l = call i32 @sqlite3_step(ptr noundef %i.k) #23
  %i.m = icmp eq i32 %i.l, 100
  br i1 %i.m, label %.lr.ph, label %._crit_edge, !llvm.loop !103

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !49
end_hunk_44
begin_hunk_45_@local_getline:bb.a
  br i1 %i.ab, label %.loopexit.loopexit, label %.preheader47.backedge

.preheader47.backedge:                            ; preds = %bb.j, %.preheader.preheader
  br label %.preheader47, !llvm.loop !104

.loopexit.loopexit:                               ; preds = %bb.j
  %i.ac = zext nneg i32 %i.t to i64
end_hunk_45
begin_hunk_46_@output_c_string:bb.a
  br label %.backedge

.backedge:                                        ; preds = %bb.d, %bb.f, %bb.i, %bb.h, %bb.e, %bb.c
  br label %bb.b, !llvm.loop !105

bb.e:                                             ; preds = %bb.b
  %i.i = tail call i32 @fputc(i32 noundef 92, ptr noundef %0) ; 0 uses
end_hunk_46
begin_hunk_47_@dump_callback:bb.a
  %i.bb = add <4 x i32> %vec.phi255, %i.az        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !106

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bb, %i.ba
end_hunk_47
begin_hunk_48_@dump_callback:bb.a
  %spec.select.i = add nsw i32 %.04657.i, %i.bh   ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !107

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %bb.o
  %.046.lcssa.i = phi i32 [ %i.ar, %bb.o ], [ %i.bd, %middle.block ], [ %spec.select.i, %.lr.ph.i ]
end_hunk_48
begin_hunk_49_@dump_callback:bb.a
  %indvars.iv.next67.i.1 = add nuw nsw i64 %indvars.iv66.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %appendText.exit76.loopexit.unr-lcssa, label %.lr.ph62.i, !llvm.loop !108

appendText.exit76.loopexit.unr-lcssa:             ; preds = %bb.s
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
end_hunk_49
begin_hunk_50_@dump_callback:bb.a
  %i.dk = add <4 x i32> %vec.phi265, %i.di        ; 2 uses
  %index.next268 = add nuw i64 %index263, 8       ; 2 uses
  %i.dl = icmp eq i64 %index.next268, %n.vec261
  br i1 %i.dl, label %middle.block269, label %vector.body262, !llvm.loop !109

middle.block269:                                  ; preds = %vector.body262
  %bin.rdx270 = add <4 x i32> %i.dk, %i.dj
end_hunk_50
begin_hunk_51_@dump_callback:bb.a
  %spec.select.i107 = add nuw nsw i32 %.04657.i106, %i.dq ; 2 uses
  %indvars.iv.next.i108 = add nuw nsw i64 %indvars.iv.i105, 1 ; 2 uses
  %exitcond.not.i109 = icmp eq i64 %indvars.iv.next.i108, %wide.trip.count.i103
  br i1 %exitcond.not.i109, label %._crit_edge.i88, label %.lr.ph.i104, !llvm.loop !110

._crit_edge.i88:                                  ; preds = %.lr.ph.i104, %middle.block269, %appendText.exit87
  %.046.lcssa.i89 = phi i32 [ %i.da, %appendText.exit87 ], [ %i.dm, %middle.block269 ], [ %spec.select.i107, %.lr.ph.i104 ]
end_hunk_51
begin_hunk_52_@dump_callback:bb.a
  %indvars.iv.next67.i100.1 = add nuw nsw i64 %indvars.iv66.i97, 2 ; 2 uses
  %niter342.next.1 = add i64 %niter342, 2         ; 2 uses
  %niter342.ncmp.1 = icmp eq i64 %niter342.next.1, %unroll_iter341
  br i1 %niter342.ncmp.1, label %appendText.exit110.unr-lcssa, label %.lr.ph62.i96, !llvm.loop !108

appendText.exit110.unr-lcssa:                     ; preds = %bb.aa
  %lcmp.mod338.not = icmp eq i64 %xtraiter337, 0
end_hunk_52
begin_hunk_53_@dump_callback:bb.a
  %i.fc = add <4 x i32> %vec.phi282, %i.fa        ; 2 uses
  %index.next285 = add nuw i64 %index280, 8       ; 2 uses
  %i.fd = icmp eq i64 %index.next285, %n.vec278
  br i1 %i.fd, label %middle.block286, label %vector.body279, !llvm.loop !111

middle.block286:                                  ; preds = %vector.body279
  %bin.rdx287 = add <4 x i32> %i.fc, %i.fb
end_hunk_53
begin_hunk_54_@dump_callback:bb.a
  %spec.select.i131 = add nsw i32 %.04657.i130, %i.fi ; 2 uses
  %indvars.iv.next.i132 = add nuw nsw i64 %indvars.iv.i129, 1 ; 2 uses
  %exitcond.not.i133 = icmp eq i64 %indvars.iv.next.i132, %wide.trip.count.i127
  br i1 %exitcond.not.i133, label %._crit_edge.i112, label %.lr.ph.i128, !llvm.loop !112

._crit_edge.i112:                                 ; preds = %.lr.ph.i128, %middle.block286, %bb.ae
  %.046.lcssa.i113 = phi i32 [ %i.es, %bb.ae ], [ %i.fe, %middle.block286 ], [ %spec.select.i131, %.lr.ph.i128 ]
end_hunk_54
begin_hunk_55_@dump_callback:bb.a
  %indvars.iv.next67.i124.1 = add nuw nsw i64 %indvars.iv66.i121, 2 ; 2 uses
  %niter348.next.1 = add i64 %niter348, 2         ; 2 uses
  %niter348.ncmp.1 = icmp eq i64 %niter348.next.1, %unroll_iter347
  br i1 %niter348.ncmp.1, label %._crit_edge63.i115.loopexit.unr-lcssa, label %.lr.ph62.i120, !llvm.loop !108

._crit_edge63.i115.loopexit.unr-lcssa:            ; preds = %bb.ai
  %lcmp.mod344.not = icmp eq i64 %xtraiter343, 0
end_hunk_55
begin_hunk_56_@dump_callback:bb.a
  %i.hx = add <4 x i32> %vec.phi299, %i.hv        ; 2 uses
  %index.next302 = add nuw i64 %index297, 8       ; 2 uses
  %i.hy = icmp eq i64 %index.next302, %n.vec295
  br i1 %i.hy, label %middle.block303, label %vector.body296, !llvm.loop !113

middle.block303:                                  ; preds = %vector.body296
  %bin.rdx304 = add <4 x i32> %i.hx, %i.hw
end_hunk_56
begin_hunk_57_@dump_callback:bb.a
  %spec.select.i167 = add nsw i32 %.04657.i166, %i.id ; 2 uses
  %indvars.iv.next.i168 = add nuw nsw i64 %indvars.iv.i165, 1 ; 2 uses
  %exitcond.not.i169 = icmp eq i64 %indvars.iv.next.i168, %wide.trip.count.i163
  br i1 %exitcond.not.i169, label %._crit_edge.i148, label %.lr.ph.i164, !llvm.loop !114

._crit_edge.i148:                                 ; preds = %.lr.ph.i164, %middle.block303, %bb.ao
  %.046.lcssa.i149 = phi i32 [ %i.hn, %bb.ao ], [ %i.hz, %middle.block303 ], [ %spec.select.i167, %.lr.ph.i164 ]
end_hunk_57
begin_hunk_58_@dump_callback:bb.a
  %indvars.iv.next67.i160.1 = add nuw nsw i64 %indvars.iv66.i157, 2 ; 2 uses
  %niter354.next.1 = add i64 %niter354, 2         ; 2 uses
  %niter354.ncmp.1 = icmp eq i64 %niter354.next.1, %unroll_iter353
  br i1 %niter354.ncmp.1, label %appendText.exit170.loopexit.unr-lcssa, label %.lr.ph62.i156, !llvm.loop !108

appendText.exit170.loopexit.unr-lcssa:            ; preds = %bb.as
  %lcmp.mod350.not = icmp eq i64 %xtraiter349, 0
end_hunk_58
begin_hunk_59_@dump_callback:bb.a
  %i.ld = add <4 x i32> %vec.phi316, %i.lb        ; 2 uses
  %index.next319 = add nuw i64 %index314, 8       ; 2 uses
  %i.le = icmp eq i64 %index.next319, %n.vec312
  br i1 %i.le, label %middle.block320, label %vector.body313, !llvm.loop !115

middle.block320:                                  ; preds = %vector.body313
  %bin.rdx321 = add <4 x i32> %i.ld, %i.lc
end_hunk_59
begin_hunk_60_@dump_callback:bb.a
  %spec.select.i209 = add nsw i32 %.04657.i208, %i.lj ; 2 uses
  %indvars.iv.next.i210 = add nuw nsw i64 %indvars.iv.i207, 1 ; 2 uses
  %exitcond.not.i211 = icmp eq i64 %indvars.iv.next.i210, %wide.trip.count.i205
  br i1 %exitcond.not.i211, label %._crit_edge.i190, label %.lr.ph.i206, !llvm.loop !116

._crit_edge.i190:                                 ; preds = %.lr.ph.i206, %middle.block320, %bb.ba
  %.046.lcssa.i191 = phi i32 [ %i.kt, %bb.ba ], [ %i.lf, %middle.block320 ], [ %spec.select.i209, %.lr.ph.i206 ]
end_hunk_60
begin_hunk_61_@dump_callback:bb.a
  %indvars.iv.next67.i202.1 = add nuw nsw i64 %indvars.iv66.i199, 2 ; 2 uses
  %niter360.next.1 = add i64 %niter360, 2         ; 2 uses
  %niter360.ncmp.1 = icmp eq i64 %niter360.next.1, %unroll_iter359
  br i1 %niter360.ncmp.1, label %._crit_edge63.i193.loopexit.unr-lcssa, label %.lr.ph62.i198, !llvm.loop !108

._crit_edge63.i193.loopexit.unr-lcssa:            ; preds = %bb.be
  %lcmp.mod356.not = icmp eq i64 %xtraiter355, 0
end_hunk_61
begin_hunk_62_@appendText:bb.a
  %i.q = add <4 x i32> %vec.phi76, %i.o           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !117

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.q, %i.p
end_hunk_62
begin_hunk_63_@appendText:bb.a
  %spec.select = add nsw i32 %.04657, %i.w        ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !118

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.d
  %.046.lcssa = phi i32 [ %i.g, %bb.d ], [ %i.s, %middle.block ], [ %spec.select, %.lr.ph ]
end_hunk_63
begin_hunk_64_@appendText:bb.a
  %indvars.iv.next67.1 = add nuw nsw i64 %indvars.iv66, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge63.loopexit.unr-lcssa, label %.lr.ph62, !llvm.loop !108

._crit_edge63.loopexit.unr-lcssa:                 ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
end_hunk_64
begin_hunk_65_@output_csv:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next50
  %i.r = load i8, ptr %i.q, align 1, !tbaa !16    ; 2 uses
  %.not.us = icmp eq i8 %i.r, 0
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !119

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 0, %.lr.ph ]
end_hunk_65
begin_hunk_66_@output_csv:bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !16   ; 2 uses
  %.not = icmp eq i8 %i.aa, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !119

.thread:                                          ; preds = %bb.g, %.lr.ph.split, %.lr.ph.split.us, %bb.d, %bb.c
  %i.ab = tail call i32 @putc(i32 noundef 34, ptr noundef %i.b) ; 0 uses
end_hunk_66
begin_hunk_67_@output_csv:bb.a
  %i.ag = sext i8 %i.af to i32
  %i.ah = tail call i32 @putc(i32 noundef %i.ag, ptr noundef %i.b) ; 0 uses
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  br label %bb.i, !llvm.loop !120

bb.l:                                             ; preds = %bb.i
  %i.ai = tail call i32 @putc(i32 noundef 34, ptr noundef %i.b) ; 0 uses
end_hunk_67
begin_hunk_68_@llvm.assume
!67 = distinct !{!67, !18}
!68 = distinct !{!68, !18}
!69 = distinct !{!69, !18}
!70 = distinct !{!70, !18}
!71 = distinct !{!71, !18}
!72 = distinct !{!72, !18}
!73 = distinct !{!73, !18}
!74 = distinct !{!74, !18}
!75 = distinct !{!75, !18}
!76 = distinct !{!76, !18}
!77 = distinct !{!77, !18}
end_hunk_68
begin_hunk_69_@llvm.assume
!94 = distinct !{!94, !18}
!95 = distinct !{!95, !18}
!96 = distinct !{!96, !18}
!97 = !{!98, !99, i64 0}
!98 = !{!"timeval", !99, i64 0, !99, i64 8}
!99 = !{!"long", !6, i64 0}
!100 = !{!98, !99, i64 8}
!101 = distinct !{!101, !18}
!102 = distinct !{!102, !18}
!103 = distinct !{!103, !18}
!104 = distinct !{!104, !18}
!105 = distinct !{!105, !18}
!106 = distinct !{!106, !18, !52, !53}
!107 = distinct !{!107, !18, !53, !52}
!108 = distinct !{!108, !18}
!109 = distinct !{!109, !18, !52, !53}
!110 = distinct !{!110, !18, !53, !52}
!111 = distinct !{!111, !18, !52, !53}
!112 = distinct !{!112, !18, !53, !52}
!113 = distinct !{!113, !18, !52, !53}
!114 = distinct !{!114, !18, !53, !52}
!115 = distinct !{!115, !18, !52, !53}
!116 = distinct !{!116, !18, !53, !52}
!117 = distinct !{!117, !18, !52, !53}
!118 = distinct !{!118, !18, !53, !52}
!119 = distinct !{!119, !18}
!120 = distinct !{!120, !18}
end_hunk_69

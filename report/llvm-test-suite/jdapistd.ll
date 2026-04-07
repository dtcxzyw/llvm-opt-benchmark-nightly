begin_hunk_0_@jpeg_start_decompress:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !51
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !52
  tail call void %i.ak(ptr noundef nonnull %0) #4, !inline_history !54
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 0, ptr %i.al, align 8, !tbaa !55
  store i32 204, ptr %i.a, align 4, !tbaa !8
  br label %.thread56

end_hunk_0
begin_hunk_1_@jpeg_start_decompress:bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 4 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !51
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !56
  %.not3237.i = icmp eq i32 %i.ap, 0
  br i1 %.not3237.i, label %._crit_edge.i, label %.preheader.lr.ph.i

end_hunk_1
begin_hunk_2_@jpeg_start_decompress:bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 536
  %.pre.pre.i = load i32, ptr %i.aq, align 8, !tbaa !55
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.backedge, %.preheader.lr.ph.i
  %i.au = phi i32 [ %.pre.pre.i, %.preheader.lr.ph.i ], [ %.be, %.preheader.i.backedge ] ; 3 uses
  %i.av = load i32, ptr %i.ar, align 4, !tbaa !57 ; 2 uses
  %i.aw = icmp ult i32 %i.au, %i.av
  br i1 %i.aw, label %bb.m, label %bb.p

end_hunk_2
begin_hunk_3_@jpeg_start_decompress:bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !42
  %i.bc = load ptr, ptr %i.ax, align 8, !tbaa !37
  tail call void %i.bc(ptr noundef nonnull %0) #4, !inline_history !54
  %.pre38.i = load i32, ptr %i.aq, align 8, !tbaa !55
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bd = phi i32 [ %.pre38.i, %bb.n ], [ %i.au, %bb.m ]
  %i.be = load ptr, ptr %i.at, align 8, !tbaa !58
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !59
  tail call void %i.bg(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %i.aq, i32 noundef 0) #4, !inline_history !54
  %i.bh = load i32, ptr %i.aq, align 8, !tbaa !55 ; 2 uses
  %.not35.i = icmp eq i32 %i.bh, %i.bd
  br i1 %.not35.i, label %output_pass_setup.exit, label %.preheader.i.backedge

.preheader.i.backedge:                            ; preds = %bb.o, %bb.p
  %.be = phi i32 [ %i.bh, %bb.o ], [ 0, %bb.p ]
  br label %.preheader.i, !llvm.loop !61

bb.p:                                             ; preds = %.preheader.i
  %i.bi = load ptr, ptr %i.am, align 8, !tbaa !51
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !63
  tail call void %i.bk(ptr noundef nonnull %0) #4, !inline_history !54
  %i.bl = load ptr, ptr %i.am, align 8, !tbaa !51
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !52
  tail call void %i.bm(ptr noundef nonnull %0) #4, !inline_history !54
  store i32 0, ptr %i.aq, align 8, !tbaa !55
  %i.bn = load ptr, ptr %i.am, align 8, !tbaa !51
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !56
  %.not32.i = icmp eq i32 %i.bp, 0
  br i1 %.not32.i, label %._crit_edge.i, label %.preheader.i.backedge

._crit_edge.i:                                    ; preds = %bb.p, %.thread56
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !64
  %.not33.i = icmp eq i32 %i.br, 0
  %i.bs = select i1 %.not33.i, i32 205, i32 206
  br label %output_pass_setup.exit.sink.split
end_hunk_3
begin_hunk_4_@jpeg_read_scanlines:bb.a

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !55   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.l = load i32, ptr %i.k, align 4, !tbaa !57   ; 2 uses
  %.not25 = icmp ult i32 %i.j, %i.l
  br i1 %.not25, label %bb.e, label %bb.d

end_hunk_4
begin_hunk_5_@jpeg_read_scanlines:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i32 119, ptr %i.n, align 8, !tbaa !47
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !65
  tail call void %i.p(ptr noundef nonnull %0, i32 noundef -1) #4
  br label %bb.h

end_hunk_5
begin_hunk_6_@jpeg_read_scanlines:bb.a
bb.g:                                             ; preds = %bb.f, %bb.e
  store i32 0, ptr %i.a, align 4, !tbaa !4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !58
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !59
  call void %i.aa(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef %2) #4
  %i.ab = load i32, ptr %i.a, align 4, !tbaa !4   ; 2 uses
  %i.ac = load i32, ptr %i.i, align 8, !tbaa !55
  %i.ad = add i32 %i.ac, %i.ab
  store i32 %i.ad, ptr %i.i, align 8, !tbaa !55
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
end_hunk_6
begin_hunk_7_@jpeg_read_raw_data:bb.a

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !55   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.k = load i32, ptr %i.j, align 4, !tbaa !57   ; 2 uses
  %.not33 = icmp ult i32 %i.i, %i.k
  br i1 %.not33, label %bb.e, label %bb.d

end_hunk_7
begin_hunk_8_@jpeg_read_raw_data:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store i32 119, ptr %i.m, align 8, !tbaa !47
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !65
  tail call void %i.o(ptr noundef nonnull %0, i32 noundef -1) #4
  br label %bb.k

end_hunk_8
begin_hunk_9_@jpeg_read_raw_data:bb.a

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.x = load i32, ptr %i.w, align 8, !tbaa !66
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.z = load i32, ptr %i.y, align 4, !tbaa !67
  %i.aa = mul nsw i32 %i.z, %i.x                  ; 3 uses
  %i.ab = icmp ult i32 %2, %i.aa
  br i1 %i.ab, label %bb.h, label %bb.i
end_hunk_9
begin_hunk_10_@jpeg_read_raw_data:bb.a

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !68
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !69
  %i.aj = tail call i32 %i.ai(ptr noundef nonnull %0, ptr noundef %1) #4
  %.not35 = icmp eq i32 %i.aj, 0
  br i1 %.not35, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = load i32, ptr %i.h, align 8, !tbaa !55
  %i.al = add i32 %i.ak, %i.aa
  store i32 %i.al, ptr %i.h, align 8, !tbaa !55
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.d
end_hunk_10
begin_hunk_11_@jpeg_start_output:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  %i.k = load i32, ptr %i.j, align 4, !tbaa !72
  %.not17 = icmp eq i32 %i.k, 0
  br i1 %.not17, label %bb.e, label %bb.d

end_hunk_11
begin_hunk_12_@jpeg_start_output:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !51
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !52
  tail call void %i.r(ptr noundef nonnull %0) #4, !inline_history !54
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 0, ptr %i.s, align 8, !tbaa !55
  store i32 204, ptr %i.a, align 4, !tbaa !8
  br label %bb.g

end_hunk_12
begin_hunk_13_@jpeg_start_output:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !51
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i32, ptr %i.v, align 8, !tbaa !56
  %.not3237.i = icmp eq i32 %i.w, 0
  br i1 %.not3237.i, label %._crit_edge.i, label %.preheader.lr.ph.i

end_hunk_13
begin_hunk_14_@jpeg_start_output:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 536
  %.pre.pre.i = load i32, ptr %i.x, align 8, !tbaa !55
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.backedge, %.preheader.lr.ph.i
  %i.ab = phi i32 [ %.pre.pre.i, %.preheader.lr.ph.i ], [ %.be, %.preheader.i.backedge ] ; 3 uses
  %i.ac = load i32, ptr %i.y, align 4, !tbaa !57  ; 2 uses
  %i.ad = icmp ult i32 %i.ab, %i.ac
  br i1 %i.ad, label %bb.h, label %bb.k

end_hunk_14
begin_hunk_15_@jpeg_start_output:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !42
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !37
  tail call void %i.aj(ptr noundef nonnull %0) #4, !inline_history !54
  %.pre38.i = load i32, ptr %i.x, align 8, !tbaa !55
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ak = phi i32 [ %.pre38.i, %bb.i ], [ %i.ab, %bb.h ]
  %i.al = load ptr, ptr %i.aa, align 8, !tbaa !58
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !59
  tail call void %i.an(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %i.x, i32 noundef 0) #4, !inline_history !54
  %i.ao = load i32, ptr %i.x, align 8, !tbaa !55  ; 2 uses
  %.not35.i = icmp eq i32 %i.ao, %i.ak
  br i1 %.not35.i, label %output_pass_setup.exit, label %.preheader.i.backedge

.preheader.i.backedge:                            ; preds = %bb.j, %bb.k
  %.be = phi i32 [ %i.ao, %bb.j ], [ 0, %bb.k ]
  br label %.preheader.i, !llvm.loop !61

bb.k:                                             ; preds = %.preheader.i
  %i.ap = load ptr, ptr %i.t, align 8, !tbaa !51
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !63
  tail call void %i.ar(ptr noundef nonnull %0) #4, !inline_history !54
  %i.as = load ptr, ptr %i.t, align 8, !tbaa !51
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !52
  tail call void %i.at(ptr noundef nonnull %0) #4, !inline_history !54
  store i32 0, ptr %i.x, align 8, !tbaa !55
  %i.au = load ptr, ptr %i.t, align 8, !tbaa !51
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !56
  %.not32.i = icmp eq i32 %i.aw, 0
  br i1 %.not32.i, label %._crit_edge.i, label %.preheader.i.backedge

._crit_edge.i:                                    ; preds = %bb.k, %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !64
  %.not33.i = icmp eq i32 %i.ay, 0
  %i.az = select i1 %.not33.i, i32 205, i32 206
  store i32 %i.az, ptr %i.a, align 4, !tbaa !8
end_hunk_15
begin_hunk_16_@jpeg_finish_output:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !63
  tail call void %i.h(ptr noundef nonnull %0) #4
  store i32 208, ptr %i.a, align 4, !tbaa !8
  br label %bb.e
end_hunk_16
begin_hunk_17_@jpeg_finish_output:bb.a
bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !33   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 36
  %i.u = load i32, ptr %i.t, align 4, !tbaa !72
  %.not21 = icmp eq i32 %i.u, 0
  br i1 %.not21, label %bb.h, label %.critedge

end_hunk_17
begin_hunk_18_@jpeg_finish_output:bb.a
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !40
  %i.w = tail call i32 %i.v(ptr noundef nonnull %0) #4
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %.loopexit, label %bb.f, !llvm.loop !73

.critedge:                                        ; preds = %bb.f, %bb.g
  store i32 207, ptr %i.a, align 4, !tbaa !8
end_hunk_18
begin_hunk_19_@llvm.smin.i32
!51 = !{!9, !21, i64 528}
!52 = !{!53, !11, i64 0}
!53 = !{!"jpeg_decomp_master", !11, i64 0, !11, i64 8, !5, i64 16}
!54 = distinct !{null}
!55 = !{!9, !5, i64 160}
!56 = !{!53, !5, i64 16}
!57 = !{!9, !5, i64 132}
!58 = !{!9, !22, i64 536}
!59 = !{!60, !11, i64 8}
!60 = !{!"jpeg_d_main_controller", !11, i64 0, !11, i64 8}
!61 = distinct !{!61, !62}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!53, !11, i64 8}
!64 = !{!9, !5, i64 84}
!65 = !{!48, !11, i64 8}
!66 = !{!9, !5, i64 392}
!67 = !{!9, !5, i64 396}
!68 = !{!9, !23, i64 544}
!69 = !{!70, !11, i64 24}
!70 = !{!"jpeg_d_coef_controller", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !71, i64 32}
!71 = !{!"p2 _ZTS20jvirt_barray_control", !17, i64 0}
!72 = !{!35, !5, i64 36}
!73 = distinct !{!73, !62}
end_hunk_19

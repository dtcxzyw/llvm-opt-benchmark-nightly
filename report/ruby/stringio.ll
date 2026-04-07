inline.NumInlined: 271
inline.NumDeleted: 53
begin_hunk_0_@strio_ungetc:bb.a
bb.l:                                             ; preds = %rb_num2int_inline.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !35
  %i.aq = call i32 %i.ap(i32 noundef %i.ai, ptr noundef nonnull %i.d, ptr noundef %i.ak) #16, !inline_history !38 ; 0 uses
  %i.ar = zext nneg i32 %i.al to i64
  call fastcc void @strio_unget_bytes(ptr noundef %i.f, ptr noundef nonnull %i.d, i64 noundef %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
end_hunk_0
begin_hunk_1_@strio_ungetc:bb.a
  %.0.i28 = phi ptr [ null, %bb.q ], [ %i.bn, %bb.s ], [ %i.bm, %bb.r ]
  call fastcc void @strio_unget_bytes(ptr noundef nonnull %i.f, ptr noundef %.0.i28, i64 noundef %i.bh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store ptr %i.a, ptr %i.b, align 8, !tbaa !39
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #16, !srcloc !41
  %i.bo = load ptr, ptr %i.b, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.bp = load volatile i64, ptr %i.bo, align 8, !tbaa !10 ; 0 uses
  br label %strio_unget_string.exit
end_hunk_1
begin_hunk_2_@strio_ungetbyte:bb.a
  %.0.i10 = phi ptr [ null, %bb.k ], [ %i.av, %bb.m ], [ %i.au, %bb.l ]
  call fastcc void @strio_unget_bytes(ptr noundef nonnull %i.f, ptr noundef %.0.i10, i64 noundef %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store ptr %i.a, ptr %i.b, align 8, !tbaa !39
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #16, !srcloc !41
  %i.aw = load ptr, ptr %i.b, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.ax = load volatile i64, ptr %i.aw, align 8, !tbaa !10 ; 0 uses
  br label %strio_unget_string.exit
end_hunk_2
begin_hunk_3_@strio_readlines:bb.a
  %i.v = call i64 @rb_ary_push(i64 noundef %i.r, i64 noundef %i.u) #16 ; 0 uses
  %i.w = call fastcc i64 @strio_getline(ptr noundef %3, ptr noundef %i.b) ; 2 uses
  %i.x = icmp eq i64 %i.w, 4
  br i1 %i.x, label %._crit_edge, label %.lr.ph, !llvm.loop !42

._crit_edge:                                      ; preds = %.lr.ph, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
end_hunk_3
begin_hunk_4_@strio_write_m:bb.a
  %i.e = tail call fastcc i64 @strio_write(i64 noundef %2, i64 noundef %i.d)
  %i.f = add nsw i64 %i.e, %.08                   ; 4 uses
  %i.g = icmp samesign ugt i32 %.047, 1
  br i1 %i.g, label %.lr.ph, label %._crit_edge, !llvm.loop !43

._crit_edge:                                      ; preds = %.lr.ph
  %i.h = add i64 %i.f, 4611686018427387904
end_hunk_4
begin_hunk_5_@strio_set_encoding:bb.a
  store i64 %i.w, ptr %i.c, align 8, !tbaa !10
  call void @rb_io_extract_modeenc(ptr noundef nonnull %i.c, ptr noundef null, i64 noundef 4, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %3) #16
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
end_hunk_5
begin_hunk_6_@strio_readchar:bb.a
  %i.a = tail call i64 @rb_intern2(ptr noundef nonnull @.str.37, i64 noundef 4) #16 ; 3 uses
  store i64 %i.a, ptr @strio_readchar.rbimpl_id, align 8, !tbaa !10
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !46

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.a
  %.lcssa.i = phi i64 [ %.pr.i, %bb.a ], [ %i.a, %.lr.ph.i ]
end_hunk_6
begin_hunk_7_@strio_readbyte:bb.a
  %i.a = tail call i64 @rb_intern2(ptr noundef nonnull @.str.40, i64 noundef 7) #16 ; 3 uses
  store i64 %i.a, ptr @strio_readbyte.rbimpl_id, align 8, !tbaa !10
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !46

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.a
  %.lcssa.i = phi i64 [ %.pr.i, %bb.a ], [ %i.a, %.lr.ph.i ]
end_hunk_7
begin_hunk_8_@strio_readline:bb.a
  %i.a = tail call i64 @rb_intern2(ptr noundef nonnull @.str.41, i64 noundef 4) #16 ; 3 uses
  store i64 %i.a, ptr @strio_readline.rbimpl_id, align 8, !tbaa !10
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !46

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.a
  %.lcssa.i = phi i64 [ %.pr.i, %bb.a ], [ %i.a, %.lr.ph.i ]
end_hunk_8
begin_hunk_9_@strio_sysread:bb.a
  %i.a = tail call i64 @rb_intern2(ptr noundef nonnull @.str.43, i64 noundef 4) #16 ; 3 uses
  store i64 %i.a, ptr @strio_sysread.rbimpl_id, align 8, !tbaa !10
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !46

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.a
  %.lcssa.i = phi i64 [ %.pr.i, %bb.a ], [ %i.a, %.lr.ph.i ]
end_hunk_9
begin_hunk_10_@strio_init:rb_scan_args_n_opt.exit
  br label %bb.u

bb.t:                                             ; preds = %bb.r, %rb_obj_write.exit
  %i.ba = load ptr, ptr %4, align 8, !tbaa !47
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
end_hunk_10
begin_hunk_11_@prepare_getline_args:rb_scan_args_n_opt.exit

bb.z:                                             ; preds = %bb.y
  %i.bh = getelementptr i8, ptr %i.bb, i64 20
  %.val.i = load i32, ptr %i.bh, align 4, !tbaa !48
  %.not.i35 = icmp eq i32 %.val.i, 1
  br i1 %.not.i35, label %rb_enc_asciicompat.exit, label %rb_enc_asciicompat.exit.thread

end_hunk_11
begin_hunk_12_@prepare_getline_args:rb_scan_args_n_opt.exit
bb.ab:                                            ; preds = %rb_enc_asciicompat.exit.thread
  %i.bn = load i64, ptr @rb_eArgError, align 8, !tbaa !10
  %i.bo = getelementptr i8, ptr %i.bb, i64 8
  %.val31 = load ptr, ptr %i.bo, align 8, !tbaa !49
  %i.bp = getelementptr i8, ptr %i.av, i64 8
  %.val = load ptr, ptr %i.bp, align 8, !tbaa !49
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bn, ptr noundef nonnull @.str.92, ptr noundef %.val31, ptr noundef %.val) #19
  unreachable

bb.ac:                                            ; preds = %bb.w, %bb.y, %rb_enc_asciicompat.exit, %bb.aa, %bb.s, %rb_num2long_inline.exit34
  %i.bq = phi i64 [ %.pre50, %bb.w ], [ %.pre, %bb.y ], [ %.pre, %rb_enc_asciicompat.exit ], [ %.pre49, %bb.aa ], [ 4, %bb.s ], [ %.pre51, %rb_num2long_inline.exit34 ]
  store i64 %i.bq, ptr %1, align 8, !tbaa !50
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.1, ptr %i.br, align 8, !tbaa !27
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
end_hunk_12
begin_hunk_13_@strio_getline:bb.a
  %i.a = alloca [256 x i64], align 16             ; 136 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !27   ; 3 uses
  %i.d = load i64, ptr %0, align 8, !tbaa !50     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23   ; 2 uses
  %.not = icmp eq ptr %i.f, null
end_hunk_13
begin_hunk_14_@strio_getline:bb.a
bb.t:                                             ; preds = %.preheader222
  %i.bl = getelementptr inbounds nuw i8, ptr %.0156, i64 1 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %.0152
  br i1 %i.bm, label %.thread, label %.preheader222, !llvm.loop !51

.lr.ph:                                           ; preds = %.preheader220, %bb.y
  %i.bn = phi ptr [ %i.ca, %bb.y ], [ %i.bh, %.preheader220 ] ; 3 uses
end_hunk_14
begin_hunk_15_@strio_getline:bb.a
  %i.cb = icmp ne ptr %i.ca, null
  %i.cc = icmp ne ptr %i.ca, %.0152
  %i.cd = select i1 %i.cb, i1 %i.cc, i1 false
  br i1 %i.cd, label %.lr.ph, label %.critedge2, !llvm.loop !52

bb.z:                                             ; preds = %bb.x, %bb.u
  %i.ce = getelementptr inbounds i8, ptr %i.bn, i64 -1
end_hunk_15
begin_hunk_16_@strio_getline:bb.a
.critedge:                                        ; preds = %bb.ab, %bb.ae
  %i.cr = phi i64 [ 1, %bb.ab ], [ 2, %bb.ae ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.2158, i64 %i.cr
  br label %bb.aa, !llvm.loop !53

.critedge2.loopexit:                              ; preds = %bb.ad, %bb.ac, %bb.ae
  %.pre = ptrtoint ptr %.2158 to i64
end_hunk_16
begin_hunk_17_@strio_getline:bb.a
RSTRING_PTR.exit202.us:                           ; preds = %.lr.ph233
  %bcmp.us = tail call i32 @bcmp(ptr nonnull %i.fm, ptr nonnull %i.fj, i64 %i.bc)
  %i.fl = icmp eq i32 %bcmp.us, 0
  br i1 %i.fl, label %.split.us, label %.lr.ph233, !llvm.loop !54

.lr.ph233:                                        ; preds = %.lr.ph229.split.us, %RSTRING_PTR.exit202.us
  %.3159228.us.pn = phi ptr [ %i.fm, %RSTRING_PTR.exit202.us ], [ %i.v, %.lr.ph229.split.us ]
  %i.fm = getelementptr inbounds nuw i8, ptr %.3159228.us.pn, i64 1 ; 3 uses
  %i.fn = getelementptr inbounds i8, ptr %i.fm, i64 %i.bc ; 2 uses
  %.not175.us = icmp ugt ptr %i.fn, %.0152
  br i1 %.not175.us, label %.loopexit, label %RSTRING_PTR.exit202.us, !llvm.loop !54

.lr.ph229.split:                                  ; preds = %.lr.ph229
  %i.fo = load ptr, ptr %i.fj, align 8, !tbaa !31 ; 2 uses
end_hunk_17
begin_hunk_18_@strio_getline:bb.a
  %i.fq = getelementptr inbounds nuw i8, ptr %.3159228.pn, i64 1 ; 3 uses
  %i.fr = getelementptr inbounds i8, ptr %i.fq, i64 %i.bc ; 2 uses
  %.not175 = icmp ugt ptr %i.fr, %.0152
  br i1 %.not175, label %.loopexit, label %RSTRING_PTR.exit202, !llvm.loop !54

RSTRING_PTR.exit202:                              ; preds = %.lr.ph231
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.fq, ptr %i.fo, i64 %i.bc)
  %i.fs = icmp eq i32 %bcmp, 0
  br i1 %i.fs, label %.split.us, label %.lr.ph231, !llvm.loop !54

.split.us:                                        ; preds = %RSTRING_PTR.exit202, %RSTRING_PTR.exit202.us, %.lr.ph229.split, %.lr.ph229.split.us
  %.us-phi = phi ptr [ %i.fn, %RSTRING_PTR.exit202.us ], [ %i.fg, %.lr.ph229.split.us ], [ %i.fg, %.lr.ph229.split ], [ %i.fr, %RSTRING_PTR.exit202 ]
end_hunk_18
begin_hunk_19_@strio_getline:bb.a
  %i.ld = add nsw i64 %i.ky, -1                   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !55

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %vector.ph
  %.unr = phi i64 [ %i.kw, %vector.ph ], [ %i.ld, %.lr.ph.i.prol ]
end_hunk_19
begin_hunk_20_@strio_getline:bb.a
  store i64 %i.lu, ptr %i.ly, align 8, !tbaa !10
  %i.lz = add nsw i64 %i.lf, -4                   ; 2 uses
  %.not.i205.3 = icmp eq i64 %i.lz, 0
  br i1 %.not.i205.3, label %bm_init_skip.exit, label %.lr.ph.i, !llvm.loop !57

bm_init_skip.exit:                                ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %i.ma = call fastcc i64 @bm_search(ptr noundef %i.fy, i64 noundef %i.bc, ptr noundef %i.v, i64 noundef %i.ex, ptr noundef %i.a) ; 2 uses
end_hunk_20
begin_hunk_21_@bm_search:bb.a
  %i.l = load i64, ptr %i.k, align 8, !tbaa !10
  %i.m = add nsw i64 %i.l, %.01925.us             ; 2 uses
  %i.n = icmp slt i64 %i.m, %3
  br i1 %i.n, label %.preheader.us, label %.loopexit, !llvm.loop !58

bb.c:                                             ; preds = %bb.b
  %i.o = add nsw i64 %.023.us, -1
  %i.p = add nsw i64 %.01822.us, -1
  %i.q = icmp sgt i64 %.01822.us, 0
  br i1 %i.q, label %bb.b, label %.loopexit.loopexit, !llvm.loop !59

.loopexit.loopexit:                               ; preds = %bb.c
  %reass.sub.le = sub i64 %.01925.us, %1
end_hunk_21
begin_hunk_22_@strio_write:bb.a

bb.ag:                                            ; preds = %RSTRING_PTR.exit, %bb.u, %RSTRING_PTR.exit70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store ptr %i.a, ptr %i.b, align 8, !tbaa !39
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #16, !srcloc !60
  %i.cy = load ptr, ptr %i.b, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.cz = load volatile i64, ptr %i.cy, align 8, !tbaa !10 ; 0 uses
  %i.da = load i64, ptr %i.bc, align 8, !tbaa !24
end_hunk_22
begin_hunk_23_@llvm.umin.i64
!35 = !{!36, !15, i64 48}
!36 = !{!"OnigEncodingTypeST", !15, i64 0, !37, i64 8, !7, i64 16, !7, i64 20, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !7, i64 128, !7, i64 132}
!37 = !{!"p1 omnipotent char", !15, i64 0}
!38 = distinct !{null}
!39 = !{!40, !40, i64 0}
!40 = !{!"p1 long", !15, i64 0}
!41 = !{i64 2150838662}
!42 = distinct !{!42, !30}
!43 = distinct !{!43, !30}
!44 = !{!45, !14, i64 8}
!45 = !{!"rb_io_encoding", !14, i64 0, !14, i64 8, !7, i64 16, !11, i64 24}
!46 = distinct !{!46, !30}
!47 = !{!45, !14, i64 0}
!48 = !{!36, !7, i64 20}
!49 = !{!36, !37, i64 8}
!50 = !{!28, !11, i64 0}
!51 = distinct !{!51, !30}
!52 = distinct !{!52, !30}
!53 = distinct !{!53, !30}
!54 = distinct !{!54, !30}
!55 = distinct !{!55, !56}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = distinct !{!57, !30}
!58 = distinct !{!58, !30}
!59 = distinct !{!59, !30}
!60 = !{i64 2150846558}
end_hunk_23

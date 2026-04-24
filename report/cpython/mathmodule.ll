inline.NumInlined: 174
inline.NumDeleted: 42
begin_hunk_0_@math_sumprod:bb.a
bb.r:                                             ; preds = %bb.q, %bb.o, %Py_DECREF.exit274.i.outer
  %.1103.i.peel = phi i8 [ %.0102.i.ph, %Py_DECREF.exit274.i.outer ], [ 1, %bb.q ], [ 1, %bb.o ] ; 9 uses
  %i.af = call ptr %i.z(ptr noundef nonnull %i.h) #17, !inline_history !40 ; 14 uses
  %i.ag = icmp eq ptr %i.af, null                 ; 3 uses
  br i1 %i.ag, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
end_hunk_0
begin_hunk_1_@math_sumprod:bb.a
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s, %bb.r
  %.1106.i.peel = phi i8 [ 0, %bb.r ], [ 1, %bb.u ], [ 1, %bb.s ]
  %.not236.i.peel = icmp eq i8 %.1103.i.peel, %.1106.i.peel
  br i1 %.not236.i.peel, label %bb.w, label %.loopexit125

end_hunk_1
begin_hunk_2_@math_sumprod:bb.a
  br i1 %.0108.i.ph, label %bb.x, label %Py_DECREF.exit278.i

bb.x:                                             ; preds = %bb.w
  br i1 %i.ag, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ak = getelementptr i8, ptr %i.aa, i64 8
end_hunk_2
begin_hunk_3_@math_sumprod:bb.a
bb.ak:                                            ; preds = %bb.aj, %bb.ah, %Py_DECREF.exit274.i
  %.1103.i = phi i8 [ %.0102.i, %Py_DECREF.exit274.i ], [ 1, %bb.aj ], [ 1, %bb.ah ] ; 8 uses
  %i.bw = call ptr %i.z(ptr noundef nonnull %i.h) #17, !inline_history !40 ; 13 uses
  %i.bx = icmp eq ptr %i.bw, null                 ; 4 uses
  br i1 %i.bx, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
end_hunk_3
begin_hunk_4_@math_sumprod:bb.a
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.al, %bb.ak
  %.1106.i = phi i8 [ 0, %bb.ak ], [ 1, %bb.an ], [ 1, %bb.al ]
  %.not236.i = icmp eq i8 %.1103.i, %.1106.i
  br i1 %.not236.i, label %bb.ap, label %.loopexit125

end_hunk_4
begin_hunk_5_@math_sumprod:bb.a
  br label %.loopexit.i

bb.ap:                                            ; preds = %bb.ao
  br i1 %i.bx, label %.loopexit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cd = getelementptr i8, ptr %i.br, i64 8
end_hunk_5
begin_hunk_6_@math_sumprod:bb.a
Py_DECREF.exit282.thread.i:                       ; preds = %_check_long_mult_overflow.exit.thread.i, %_check_long_mult_overflow.exit.i, %bb.as, %bb.ar, %_check_long_mult_overflow.exit.thread.i.peel, %_check_long_mult_overflow.exit.i.peel, %bb.aa, %bb.z
  %.1103.i.lcssa114 = phi i8 [ %.1103.i.peel, %bb.z ], [ %.1103.i.peel, %bb.aa ], [ %.1103.i.peel, %_check_long_mult_overflow.exit.i.peel ], [ %.1103.i.peel, %_check_long_mult_overflow.exit.thread.i.peel ], [ %.1103.i, %bb.ar ], [ %.1103.i, %bb.as ], [ %.1103.i, %_check_long_mult_overflow.exit.i ], [ %.1103.i, %_check_long_mult_overflow.exit.thread.i ]
  %.lcssa111 = phi ptr [ %i.af, %bb.z ], [ %i.af, %bb.aa ], [ %i.af, %_check_long_mult_overflow.exit.i.peel ], [ %i.af, %_check_long_mult_overflow.exit.thread.i.peel ], [ %i.bw, %bb.ar ], [ %i.bw, %bb.as ], [ %i.bw, %_check_long_mult_overflow.exit.i ], [ %i.bw, %_check_long_mult_overflow.exit.thread.i ]
  %.0123.i.lcssa102 = phi i64 [ %.0123.i.ph, %bb.z ], [ %.0123.i.ph, %bb.aa ], [ %.0123.i.ph, %_check_long_mult_overflow.exit.i.peel ], [ %.0123.i.ph, %_check_long_mult_overflow.exit.thread.i.peel ], [ %.0123.i, %bb.ar ], [ %.0123.i, %bb.as ], [ %.0123.i, %_check_long_mult_overflow.exit.i ], [ %.0123.i, %_check_long_mult_overflow.exit.thread.i ]
  %.0111.i.lcssa97 = phi i1 [ false, %bb.z ], [ false, %bb.aa ], [ false, %_check_long_mult_overflow.exit.i.peel ], [ false, %_check_long_mult_overflow.exit.thread.i.peel ], [ true, %bb.ar ], [ true, %bb.as ], [ true, %_check_long_mult_overflow.exit.i ], [ true, %_check_long_mult_overflow.exit.thread.i ]
  %.lcssa93 = phi ptr [ %i.aa, %bb.z ], [ %i.aa, %bb.aa ], [ %i.aa, %_check_long_mult_overflow.exit.i.peel ], [ %i.aa, %_check_long_mult_overflow.exit.thread.i.peel ], [ %i.br, %bb.ar ], [ %i.br, %bb.as ], [ %i.br, %_check_long_mult_overflow.exit.i ], [ %i.br, %_check_long_mult_overflow.exit.thread.i ]
end_hunk_6
begin_hunk_7_@math_sumprod:bb.a
  br label %Py_DECREF.exit274.i, !llvm.loop !41

.loopexit:                                        ; preds = %bb.x, %bb.y, %bb.aq, %bb.ap, %Py_DECREF.exit282.thread.i
  %.1103.i116 = phi i8 [ %.1103.i.lcssa114, %Py_DECREF.exit282.thread.i ], [ %.1103.i.peel, %bb.x ], [ %.1103.i.peel, %bb.y ], [ %.1103.i, %bb.aq ], [ %.1103.i, %bb.ap ] ; 4 uses
  %i.dk = phi ptr [ %.lcssa111, %Py_DECREF.exit282.thread.i ], [ %i.af, %bb.x ], [ %i.af, %bb.y ], [ %i.bw, %bb.aq ], [ %i.bw, %bb.ap ] ; 6 uses
  %i.dl = phi i1 [ false, %Py_DECREF.exit282.thread.i ], [ true, %bb.x ], [ false, %bb.y ], [ %i.bx, %bb.aq ], [ %i.bx, %bb.ap ] ; 4 uses
  %.0123.i103 = phi i64 [ %.0123.i.lcssa102, %Py_DECREF.exit282.thread.i ], [ %.0123.i.ph, %bb.x ], [ %.0123.i.ph, %bb.y ], [ %.0123.i, %bb.aq ], [ %.0123.i, %bb.ap ] ; 2 uses
  %.0111.i98 = phi i1 [ %.0111.i.lcssa97, %Py_DECREF.exit282.thread.i ], [ false, %bb.x ], [ false, %bb.y ], [ true, %bb.aq ], [ true, %bb.ap ]
  %i.dm = phi ptr [ %.lcssa93, %Py_DECREF.exit282.thread.i ], [ %i.aa, %bb.x ], [ %i.aa, %bb.y ], [ %i.br, %bb.aq ], [ %i.br, %bb.ap ] ; 6 uses
end_hunk_7
begin_hunk_8_@math_sumprod:bb.a
  br label %Py_DECREF.exit278.i

Py_DECREF.exit278.i:                              ; preds = %bb.w, %bb.bf, %bb.be, %Py_DECREF.exit280.i, %.loopexit
  %.1103.i115 = phi i8 [ %.1103.i116, %bb.bf ], [ %.1103.i116, %.loopexit ], [ %.1103.i116, %Py_DECREF.exit280.i ], [ %.1103.i116, %bb.be ], [ %.1103.i.peel, %bb.w ]
  %i.dy = phi ptr [ %i.dk, %bb.bf ], [ %i.dk, %.loopexit ], [ %i.dk, %Py_DECREF.exit280.i ], [ %i.dk, %bb.be ], [ %i.af, %bb.w ] ; 15 uses
  %i.dz = phi i1 [ %i.dl, %bb.bf ], [ %i.dl, %.loopexit ], [ %i.dl, %Py_DECREF.exit280.i ], [ %i.dl, %bb.be ], [ %i.ag, %bb.w ] ; 2 uses
  %i.ea = phi ptr [ %i.dm, %bb.bf ], [ %i.dm, %.loopexit ], [ %i.dm, %Py_DECREF.exit280.i ], [ %i.dm, %bb.be ], [ %i.aa, %bb.w ] ; 15 uses
  %i.eb = phi i1 [ %i.dn, %bb.bf ], [ %i.dn, %.loopexit ], [ %i.dn, %Py_DECREF.exit280.i ], [ %i.dn, %bb.be ], [ %i.ab, %bb.w ] ; 5 uses
  %.1181.i = phi ptr [ %i.dq, %bb.bf ], [ %.0180.i.ph, %.loopexit ], [ %i.dq, %Py_DECREF.exit280.i ], [ %i.dq, %bb.be ], [ %.0180.i.ph, %bb.w ] ; 11 uses
end_hunk_8
begin_hunk_9_@math_sumprod:bb.a
  br i1 %.0115.i.ph, label %bb.bg, label %Py_DECREF.exit270.i

bb.bg:                                            ; preds = %Py_DECREF.exit278.i
  br i1 %i.dz, label %Py_DECREF.exit274.thread.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ec = getelementptr i8, ptr %i.ea, i64 8
end_hunk_9
begin_hunk_10_@math_sumprod:bb.a
  %.sroa.01.4.i = phi double [ %.sroa.01.0.i.ph, %Py_DECREF.exit278.i ], [ %.sroa.01.0.i.ph, %Py_DECREF.exit274.thread.i ], [ 0.000000e+00, %Py_DECREF.exit272.i ], [ 0.000000e+00, %bb.cc ], [ 0.000000e+00, %bb.cd ] ; 3 uses
  %.2182.i = phi ptr [ %.1181.i, %Py_DECREF.exit278.i ], [ %.1181.i, %Py_DECREF.exit274.thread.i ], [ %i.gf, %Py_DECREF.exit272.i ], [ %i.gf, %bb.cc ], [ %i.gf, %bb.cd ] ; 9 uses
  %.4122.i = phi i1 [ %.0118.i.ph, %Py_DECREF.exit278.i ], [ false, %Py_DECREF.exit274.thread.i ], [ false, %Py_DECREF.exit272.i ], [ false, %bb.cc ], [ false, %bb.cd ] ; 3 uses
  br i1 %i.dz, label %bb.cr, label %bb.ce

bb.ce:                                            ; preds = %Py_DECREF.exit270.i
  %i.gn = call ptr @PyNumber_Multiply(ptr noundef %i.ea, ptr noundef nonnull %i.dy) #17 ; 6 uses
  %i.go = icmp eq ptr %i.gn, null
  br i1 %i.go, label %.loopexit.i, label %bb.cf

end_hunk_10
begin_hunk_11_@math_sumprod:bb.a
  br label %Py_DECREF.exit268.i

Py_DECREF.exit268.i:                              ; preds = %bb.ci, %bb.ch, %bb.cg
  br i1 %i.eb, label %bb.cm, label %bb.cj

bb.cj:                                            ; preds = %Py_DECREF.exit268.i
  %i.gu = load i32, ptr %i.ea, align 8, !tbaa !29 ; 2 uses
  %.not.i265.i = icmp sgt i32 %i.gu, -1
  br i1 %.not.i265.i, label %bb.ck, label %bb.cm

bb.ck:                                            ; preds = %bb.cj
  %i.gv = add nsw i32 %i.gu, -1                   ; 2 uses
  store i32 %i.gv, ptr %i.ea, align 8, !tbaa !29
  %i.gw = icmp eq i32 %i.gv, 0
  br i1 %i.gw, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  call void @_Py_Dealloc(ptr noundef nonnull %i.ea) #17
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck, %bb.cj, %Py_DECREF.exit268.i
  %i.gx = load i32, ptr %i.dy, align 8, !tbaa !29 ; 2 uses
  %.not.i263.i = icmp sgt i32 %i.gx, -1
  br i1 %.not.i263.i, label %bb.cn, label %Py_DECREF.exit264.i
end_hunk_11
begin_hunk_12_@math_sumprod:bb.a
  call void @_Py_Dealloc(ptr noundef nonnull %i.dy) #17
  br label %Py_DECREF.exit264.i

Py_DECREF.exit264.i:                              ; preds = %bb.co, %bb.cn, %bb.cm
  %i.ha = load i32, ptr %i.gn, align 8, !tbaa !29 ; 2 uses
  %.not.i261.i = icmp sgt i32 %i.ha, -1
  br i1 %.not.i261.i, label %bb.cp, label %Py_DECREF.exit274.i.outer.backedge
end_hunk_12

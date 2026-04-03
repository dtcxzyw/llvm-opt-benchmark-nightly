begin_hunk_0
inline.NumInlined: 6675
inline.NumDeleted: 333
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1
  br label %iseq_set_sequence.exit.thread

.loopexit.i.i:                                    ; preds = %.preheader.i.i, %bb.p, %bb.m, %bb.l, %.lr.ph166.i.i
  %.293.i.i = phi i32 [ %.091162.i.i, %bb.p ], [ %.091162.i.i, %bb.m ], [ %.091162.i.i, %.lr.ph166.i.i ], [ %.091162.i.i, %bb.l ], [ %i.x, %.preheader.i.i ]
  %.290.i.i = phi i32 [ %i.bn, %bb.p ], [ %.088163.i.i, %bb.m ], [ %.088163.i.i, %.lr.ph166.i.i ], [ %i.bh, %bb.l ], [ %i.s, %.preheader.i.i ]
  %.387.i.i = phi i32 [ %.084164.i.i, %bb.p ], [ %.084164.i.i, %bb.m ], [ %.084164.i.i, %.lr.ph166.i.i ], [ %.084164.i.i, %bb.l ], [ %spec.select.i.i, %.preheader.i.i ] ; 3 uses
  %i.bv = getelementptr i8, ptr %.198165.i.i, i64 8
  %.198.i.i = load ptr, ptr %i.bv, align 8, !tbaa !35 ; 2 uses
  %.not106.i.i = icmp eq ptr %.198.i.i, null
end_hunk_1
begin_hunk_2
  call void @rb_iseq_insns_info_encode_positions(ptr noundef nonnull %0) #38
  br label %iseq_set_sequence.exit.thread

iseq_set_sequence.exit.thread:                    ; preds = %bb.e, %.critedge114.i.i, %bb.k, %bb.q, %bb.ct, %bb.ce, %bb.g, %bb.dt, %bb.du, %ISEQ_COMPILE_DATA.exit
  %.0 = phi i32 [ 0, %ISEQ_COMPILE_DATA.exit ], [ 1, %bb.dt ], [ 1, %bb.du ], [ 0, %bb.g ], [ 0, %bb.ce ], [ 0, %bb.ct ], [ 0, %bb.q ], [ 0, %bb.k ], [ 0, %.critedge114.i.i ], [ 0, %bb.e ]
  ret i32 %.0
}

end_hunk_2
begin_hunk_3
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j, %bb.i, %bb.h, %bb.g
  %.235.i = phi i64 [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.i ], [ 3, %bb.l ], [ 0, %bb.j ]
  %.2.i = phi i32 [ %i.w, %bb.g ], [ %i.w, %bb.h ], [ %i.w, %bb.i ], [ %i.ag, %bb.l ], [ %i.w, %bb.j ] ; 3 uses
  %.not43.i = icmp eq i32 %.2.i, 0
  br i1 %.not43.i, label %._crit_edge.i.a, label %rbimpl_size_mul_or_raise.exit.i

end_hunk_3
begin_hunk_4
  store i64 %i.atx, ptr %i.auc, align 8, !tbaa !36
  br label %.critedge651

.critedge651:                                     ; preds = %bb.kf, %bb.km, %rb_obj_written.exit888, %bb.jc, %bb.jn, %bb.jm, %bb.jy, %bb.jz, %bb.jw, %bb.kc, %bb.kb, %bb.ka, %bb.jv, %ELEM_REMOVE.exit911, %bb.jo, %bb.jp, %bb.jq, %bb.js, %bb.jr, %bb.jl, %ELEM_REMOVE.exit907, %bb.ja, %bb.jf, %ELEM_REMOVE.exit903, %bb.je, %bb.jd, %bb.jj, %bb.jk, %bb.ji, %bb.jh, %bb.jg, %bb.ix, %bb.iy, %bb.iz, %bb.jb, %bb.jx, %bb.kd, %bb.ke, %bb.kl, %bb.kk, %bb.kn, %bb.ko, %bb.kp, %bb.bg, %replace_destination.exit698, %bb.bk, %bb.bl, %bb.al, %unref_destination.exit, %.thread1039, %bb.kg, %rb_obj_written.exit926, %vm_ci_flag.exit916, %bb.kj, %bb.ki, %bb.kh
  ret void
}

end_hunk_4
begin_hunk_5
iseq_compile_each.exit:                           ; preds = %.thread155
  %i.ec = call fastcc i32 @iseq_compile_each0(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef %i.d, i32 noundef %3)
  %.not88.not = icmp eq i32 %i.ec, 0
  br i1 %.not88.not, label %APPEND_LIST.exit138.thread, label %iseq_compile_each.exit.thread

APPEND_LIST.exit138.thread:                       ; preds = %iseq_compile_each.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  br label %bb.aj

iseq_compile_each.exit.thread:                    ; preds = %bb.q, %bb.s, %iseq_compile_each.exit
  %i.ed = load i32, ptr %i.ce, align 8, !tbaa !272
end_hunk_5
begin_hunk_6
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  br label %.thread

.thread:                                          ; preds = %APPEND_LIST.exit140, %APPEND_LIST.exit, %bb.p
  %.083154 = phi i64 [ 0, %APPEND_LIST.exit ], [ %i.dj, %bb.p ], [ %.083158, %APPEND_LIST.exit140 ]
  %.279 = phi ptr [ null, %APPEND_LIST.exit ], [ null, %bb.p ], [ %.077, %APPEND_LIST.exit140 ] ; 4 uses
  %i.gw = load i32, ptr %i.ce, align 8, !tbaa !272
  %.not92 = icmp eq i32 %i.gw, 0
  br i1 %.not92, label %bb.ah, label %bb.aa
end_hunk_6
begin_hunk_7
  store ptr %.279, ptr %i.ic, align 8, !tbaa !11
  br label %bb.aj

.critedge98:                                      ; preds = %iseq_compile_each.exit147
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  br label %bb.aj

bb.aj:                                            ; preds = %APPEND_LIST.exit138.thread, %bb.ah, %bb.ai, %.critedge98, %bb.i
  %.3 = phi i32 [ 0, %.critedge98 ], [ 0, %APPEND_LIST.exit138.thread ], [ 1, %bb.ah ], [ 0, %bb.i ], [ 1, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  ret i32 %.3
}
end_hunk_7
begin_hunk_8
  store ptr %i.ao, ptr %i.ik, align 8, !tbaa !11
  br label %.critedge109

.critedge109:                                     ; preds = %iseq_compile_each.exit168, %iseq_compile_each.exit, %new_label_body.exit158, %nd_line.exit139.a, %nd_line.exit177, %APPEND_LIST.exit, %iseq_compile_each.exit184
  %.6 = phi i32 [ 0, %iseq_compile_each.exit184 ], [ 1, %APPEND_LIST.exit ], [ 0, %nd_line.exit177 ], [ 0, %new_label_body.exit158 ], [ 0, %nd_line.exit139.a ], [ 0, %iseq_compile_each.exit ], [ 0, %iseq_compile_each.exit168 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  ret i32 %.6
}
end_hunk_8
begin_hunk_9
  %exitcond116.not = icmp eq i32 %i.bl, %indvars.iv114
  br i1 %exitcond116.not, label %compile_massign_opt.exit, label %nd_line.exit59, !llvm.loop !999

compile_massign_opt.exit.thread:                  ; preds = %.lr.ph86, %bb.e, %get_nd_vid.exit66, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  br label %bb.q

end_hunk_9
begin_hunk_10
bb.g:                                             ; preds = %bb.f
  %i.x = and i32 %3, 126                          ; 2 uses
  %or.cond = icmp eq i32 %i.x, 36
  %i.y = icmp eq i32 %3, 40                       ; 4 uses
  %or.cond3 = or i1 %i.y, %or.cond
  br i1 %or.cond3, label %bb.h, label %bb.s

end_hunk_10
begin_hunk_11
  %i.eq = trunc i64 %i.ep to i32
  br label %iseq_compile_each.exit.thread

iseq_compile_each.exit:                           ; preds = %private_recv_p.exit.thread
  %9 = call fastcc i32 @iseq_compile_each0(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %i.ei, i32 noundef 0)
  %10 = icmp ne i32 %9, 0                         ; 2 uses
  %brmerge.not = and i1 %10, %i.y
  br i1 %brmerge.not, label %.thread.a, label %11

iseq_compile_each.exit.thread:                    ; preds = %ISEQ_COMPILE_DATA.exit.i, %bb.q
  %.0.i174 = phi i32 [ %i.eq, %bb.q ], [ %i.em, %ISEQ_COMPILE_DATA.exit.i ]
  %i.er = call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %.0.i174, i32 noundef -1, i32 noundef 17, i32 noundef 0, ptr noundef null) ; 3 uses
end_hunk_11
begin_hunk_12
  %i.eu = getelementptr i8, ptr %i.es, i64 8
  store ptr %i.er, ptr %i.eu, align 8, !tbaa !35
  store ptr %i.er, ptr %i.d, align 8, !tbaa !11
  br i1 %i.y, label %.thread.a, label %bb.v

bb.r:                                             ; preds = %nd_line.exit171, %nd_line.exit
  br i1 %i.y, label %.thread.a, label %bb.v

.thread.a:                                        ; preds = %iseq_compile_each.exit.thread, %bb.r, %iseq_compile_each.exit
  %i.ev = call fastcc ptr @qcall_branch_start(ptr noundef %0, ptr noundef %7, ptr noundef %i.c, ptr noundef nonnull %2, ptr noundef %4)
  br label %bb.w

11:                                               ; preds = %iseq_compile_each.exit
  br i1 %10, label %bb.v, label %.critedge

bb.s:                                             ; preds = %bb.g
  %or.cond5 = icmp eq i32 %i.x, 38
end_hunk_12
begin_hunk_13
  store ptr %i.fb, ptr %i.d, align 8, !tbaa !11
  br label %bb.v

bb.v:                                             ; preds = %iseq_compile_each.exit.thread, %bb.r, %11, %bb.s, %nd_line.exit177, %bb.f
  %.not149 = icmp eq i32 %3, 39
  br i1 %.not149, label %bb.z, label %bb.w

end_hunk_13
begin_hunk_14
  store ptr %i.rc, ptr %i.rd, align 8, !tbaa !11
  br label %.critedge

.critedge:                                        ; preds = %bb.bh, %nd_line.exit272, %get_nd_args.exit, %11, %bb.e
  %.1 = phi i32 [ %i.w, %bb.e ], [ 0, %11 ], [ 0, %get_nd_args.exit ], [ 1, %nd_line.exit272 ], [ 1, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
end_hunk_14
begin_hunk_15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  br label %bb.be

bb.w:                                             ; preds = %bb.j, %bb.m, %bb.l, %bb.h, %bb.g
  %i.cw = getelementptr i8, ptr %i.ah, i64 32
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !932
  %i.cy = icmp eq ptr %i.cx, null
end_hunk_15
begin_hunk_16
  store i32 %i.bs, ptr %i.w, align 8, !tbaa !1082
  br label %.critedge

.critedge:                                        ; preds = %bb.k, %bb.l, %bb.m, %bb.r
  %i.bt = getelementptr i8, ptr %.02554, i64 48
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !934 ; 2 uses
  %.not31 = icmp eq ptr %i.bu, null
end_hunk_16
begin_hunk_17
  %i.y = getelementptr i8, ptr %.022.i.i.i.i, i64 16
  %i.z = getelementptr i8, ptr %.022.i.i.i.i, i64 8
  %i.aa = zext i32 %i.x to i64
  %i.ab = getelementptr i8, ptr %i.y, i64 %i.aa   ; 10 uses
  %i.ac = add i32 %i.x, 48
  store i32 %i.ac, ptr %i.z, align 8, !tbaa !7
  store i32 1, ptr %i.ab, align 8, !tbaa !192
end_hunk_17
begin_hunk_18
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !194
  %i.aj = getelementptr i8, ptr %i.ab, i64 24
  store i32 %i.ah, ptr %i.aj, align 8, !tbaa !95
  %i.ak = getelementptr i8, ptr %i.ab, i64 40     ; 2 uses
  %i.al = getelementptr i8, ptr %i.ab, i64 44     ; 2 uses
  %i.am = load i8, ptr %i.al, align 4
  %i.an = and i8 %i.am, -16
end_hunk_18
begin_hunk_19
  %i.ap = getelementptr i8, ptr %1, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1227
  tail call fastcc void @pm_compile_node(ptr noundef nonnull %0, ptr noundef %i.aq, ptr noundef %3, i1 noundef zeroext false, ptr noundef %5)
  br i1 %4, label %.critedge, label %bb.e

bb.e:                                             ; preds = %new_label_body.exit
  %i.ar = load i32, ptr %2, align 4, !tbaa !545
  %i.as = getelementptr i8, ptr %2, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !548
  %6 = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.ar, i32 noundef %i.at, i32 noundef 40, i32 noundef 0, ptr noundef null) ; 3 uses
  %7 = getelementptr i8, ptr %3, i64 24           ; 2 uses
  %i.au = load ptr, ptr %7, align 8, !tbaa !11    ; 2 uses
  %i.av = getelementptr i8, ptr %6, i64 16
  store ptr %i.au, ptr %i.av, align 8, !tbaa !34
  %i.aw = getelementptr i8, ptr %i.au, i64 8
  store ptr %6, ptr %i.aw, align 8, !tbaa !35
  store ptr %6, ptr %7, align 8, !tbaa !11
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %new_label_body.exit
  %8 = load i32, ptr %2, align 4, !tbaa !545
  %9 = getelementptr i8, ptr %2, i64 4            ; 2 uses
  %10 = load i32, ptr %9, align 4, !tbaa !548
  %i.ax = ptrtoint ptr %i.ab to i64
  %i.ay = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %8, i32 noundef %10, i32 noundef 74, i32 noundef 1, i64 noundef %i.ax) ; 3 uses
  %i.az = getelementptr i8, ptr %3, i64 24        ; 6 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !11 ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ay, i64 16
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !34
end_hunk_19
begin_hunk_20
  %i.bd = load i32, ptr %i.ak, align 8, !tbaa !272
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.ak, align 8, !tbaa !272
  br i1 %4, label %bb.f, label %11

11:                                               ; preds = %.critedge
  %12 = load i32, ptr %2, align 4, !tbaa !545
  %13 = load i32, ptr %9, align 4, !tbaa !548
  %14 = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %12, i32 noundef %13, i32 noundef 39, i32 noundef 0, ptr noundef null) ; 3 uses
  %15 = load ptr, ptr %i.az, align 8, !tbaa !11   ; 2 uses
  %16 = getelementptr i8, ptr %14, i64 16
  store ptr %15, ptr %16, align 8, !tbaa !34
  %17 = getelementptr i8, ptr %15, i64 8
  store ptr %14, ptr %17, align 8, !tbaa !35
  store ptr %14, ptr %i.az, align 8, !tbaa !11
  br label %bb.f

bb.f:                                             ; preds = %11, %.critedge
  %i.bf = getelementptr i8, ptr %1, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1229
  tail call fastcc void @pm_compile_node(ptr noundef nonnull %0, ptr noundef %i.bg, ptr noundef %3, i1 noundef zeroext %4, ptr noundef %5)
  %i.bh = load ptr, ptr %i.az, align 8, !tbaa !11 ; 2 uses
  %i.bi = getelementptr i8, ptr %i.ab, i64 16
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !34
  %i.bj = getelementptr i8, ptr %i.bh, i64 8
  store ptr %i.ab, ptr %i.bj, align 8, !tbaa !35
  store ptr %i.ab, ptr %i.az, align 8, !tbaa !11
  ret void
}

end_hunk_20

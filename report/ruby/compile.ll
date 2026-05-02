inline.NumInlined: 6675
inline.NumDeleted: 333
begin_hunk_0_@rb_iseq_build_from_ary:bb.a
  %.14052.i.i = phi ptr [ %i.agz, %._crit_edge.i.i ], [ null, %bb.gq ], [ null, %bb.gj ] ; 2 uses
  %.015.i.i.i = phi i32 [ %i.ahm, %._crit_edge.i.i ], [ %.037.i.i, %bb.gq ], [ 0, %bb.gj ] ; 3 uses
  %.0.i.i194.i = phi i32 [ %i.ahn, %._crit_edge.i.i ], [ %.035.i.i, %bb.gq ], [ 0, %bb.gj ] ; 3 uses
  %.in.i.i = and i32 %.015.i.i.i, 8291
  %7 = icmp ne i32 %.in.i.i, 0
  %i.aho = and i32 %.in.in.in.i.i, 16
  %.not.i195.i = icmp eq i32 %i.aho, 0
  %or.cond.i.i.i = select i1 %7, i1 true, i1 %.not.i195.i
  %i.ahp = or i32 %.015.i.i.i, 16
  %spec.select.i.i195.i = select i1 %or.cond.i.i.i, i32 %.015.i.i.i, i32 %i.ahp ; 3 uses
  %i.ahq = load ptr, ptr %i.ad, align 8, !tbaa !46
  %i.ahr = getelementptr i8, ptr %i.ahq, i64 260  ; 2 uses
  %i.ahs = load i32, ptr %i.ahr, align 4, !tbaa !110
end_hunk_0
begin_hunk_1_@new_callinfo:bb.a
  %.015 = phi i32 [ %i.a, %bb.b ], [ %3, %bb.a ]  ; 3 uses
  %.0 = phi i32 [ %i.c, %bb.b ], [ %2, %bb.a ]    ; 3 uses
  %i.d = and i32 %.015, 8291
  %6 = icmp ne i32 %i.d, 0
  %7 = trunc nuw i32 %5 to i1
  %or.cond = select i1 %6, i1 true, i1 %7
  %i.e = or i32 %.015, 16
  %spec.select = select i1 %or.cond, i32 %.015, i32 %i.e ; 3 uses
  %i.f = getelementptr i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !46
  %i.h = getelementptr i8, ptr %i.g, i64 260      ; 2 uses
end_hunk_1
begin_hunk_2_@compile_call:bb.a

iseq_compile_each.exit:                           ; preds = %private_recv_p.exit.thread
  %i.er = call fastcc i32 @iseq_compile_each0(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %i.ei, i32 noundef 0), !inline_history !174
  %9 = trunc nuw i32 %i.er to i1                  ; 2 uses
  %brmerge.not = and i1 %i.y, %9
  br i1 %brmerge.not, label %.thread.thread, label %bb.s

iseq_compile_each.exit.thread:                    ; preds = %ISEQ_COMPILE_DATA.exit.i, %bb.q
end_hunk_2
begin_hunk_3_@compile_super:ISEQ_COMPILE_DATA.exit198
  %i.jq = load i32, ptr %i.a, align 4, !tbaa !7   ; 2 uses
  %i.jr = load ptr, ptr %i.b, align 8, !tbaa !1058 ; 4 uses
  %i.js = icmp ne ptr %i.i, null
  %.not.i236 = icmp eq ptr %i.jr, null
  br i1 %.not.i236, label %bb.ah, label %bb.ag

end_hunk_3
begin_hunk_4_@compile_super:ISEQ_COMPILE_DATA.exit198
  %.015.i = phi i32 [ %i.jt, %bb.ag ], [ %i.jq, %APPEND_LIST.exit ] ; 3 uses
  %.0.i237 = phi i32 [ %i.jv, %bb.ag ], [ %.6, %APPEND_LIST.exit ] ; 3 uses
  %i.jw = and i32 %.015.i, 8291
  %6 = icmp ne i32 %i.jw, 0
  %or.cond.i = select i1 %6, i1 true, i1 %i.js
  %i.jx = or i32 %.015.i, 16
  %spec.select.i = select i1 %or.cond.i, i32 %.015.i, i32 %i.jx ; 3 uses
  %i.jy = load ptr, ptr %i.c, align 8, !tbaa !46
  %i.jz = getelementptr i8, ptr %i.jy, i64 260    ; 2 uses
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !110
end_hunk_4
begin_hunk_5_@compile_hash:bb.a
  %i.ad = getelementptr i8, ptr %1, i64 24        ; 52 uses
  %i.ae = getelementptr i8, ptr %2, i64 24        ; 25 uses
  %i.af = ptrtoint ptr %0 to i64
  %6 = trunc nuw i32 %3 to i1                     ; 2 uses
  br label %.backedge

.loopexit:                                        ; preds = %bb.ar, %rb_obj_written.exit
end_hunk_5
begin_hunk_6_@compile_hash:bb.a
.critedge281:                                     ; preds = %bb.ao, %bb.ap
  %i.ma = phi i1 [ %i.lu, %bb.ao ], [ %i.ly, %bb.ap ]
  %i.mb = phi i1 [ %i.lr, %bb.ao ], [ %i.lv, %bb.ap ]
  %or.cond7 = select i1 %i.ma, i1 %6, i1 false
  br i1 %or.cond7, label %iseq_compile_each.exit385, label %bb.aq

iseq_compile_each.exit385:                        ; preds = %.critedge281
end_hunk_6
begin_hunk_7_@compile_hash:bb.a
.thread458:                                       ; preds = %bb.ao, %bb.ap
  %i.ml = phi i1 [ %i.lv, %bb.ap ], [ %i.lr, %bb.ao ]
  %i.mm = phi i1 [ %i.ly, %bb.ap ], [ %i.lu, %bb.ao ]
  %or.cond9 = select i1 %i.mm, i1 %6, i1 false
  br i1 %or.cond9, label %iseq_compile_each.exit394, label %nd_line.exit397

iseq_compile_each.exit394:                        ; preds = %.thread458
end_hunk_7
begin_hunk_8_@new_insn_send:bb.a
  %i.al = tail call i64 @rb_fix2int(i64 noundef %6) #38
  %i.am = trunc i64 %i.al to i32                  ; 2 uses
  %i.an = icmp ne ptr %5, null                    ; 2 uses
  %.not.i = icmp eq ptr %7, null
  br i1 %.not.i, label %bb.h, label %bb.g

end_hunk_8
begin_hunk_9_@new_insn_send:bb.a
  %.015.i = phi i32 [ %i.ao, %bb.g ], [ %i.am, %compile_data_calloc2.exit ] ; 3 uses
  %.0.i = phi i32 [ %i.aq, %bb.g ], [ %i.ak, %compile_data_calloc2.exit ] ; 3 uses
  %i.ar = and i32 %.015.i, 8291
  %8 = icmp ne i32 %i.ar, 0
  %or.cond.i = or i1 %i.an, %8
  %i.as = or i32 %.015.i, 16
  %spec.select.i = select i1 %or.cond.i, i32 %.015.i, i32 %i.as ; 3 uses
  %i.at = getelementptr i8, ptr %0, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !46
  %i.av = getelementptr i8, ptr %i.au, i64 260    ; 2 uses
end_hunk_9
begin_hunk_10_@iseq_compile_pattern_each:nd_line.exit
  %i.cuh = getelementptr i8, ptr %2, i64 40
  %i.cui = load ptr, ptr %i.cuh, align 8, !tbaa !833
  %i.cuj = tail call fastcc i32 @iseq_compile_pattern_each(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %i.cui, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5, i1 noundef zeroext true, i32 noundef %7, i1 noundef zeroext %8)
  %.not1203 = trunc nuw i32 %i.cuj to i1
  br i1 %.not1203, label %bb.dq, label %.critedge1252

nd_line.exit2121:                                 ; preds = %nd_line.exit
  %i.cuk = lshr i64 %.pre, 15
end_hunk_10
begin_hunk_11_@pm_compile_forwarding_super_node:bb.a

APPEND_LIST.exit:                                 ; preds = %bb.aq, %bb.ar
  %i.od = icmp ne ptr %.0, null
  %i.oe = and i32 %.1, 8291
  %8 = icmp ne i32 %i.oe, 0
  %or.cond.i = select i1 %8, i1 true, i1 %i.od
  %i.of = or i32 %.1, 16
  %spec.select.i283 = select i1 %or.cond.i, i32 %.1, i32 %i.of ; 2 uses
  %i.og = load ptr, ptr %i.fj, align 8, !tbaa !46
  %i.oh = getelementptr i8, ptr %i.og, i64 260    ; 2 uses
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !110
end_hunk_11
begin_hunk_12_@pm_compile_super_node:bb.a
APPEND_LIST.exit._crit_edge:                      ; preds = %APPEND_LIST.exit, %bb.u
  %i.ho = load ptr, ptr %i.c, align 8, !tbaa !1058 ; 4 uses
  %i.hp = icmp ne ptr %.0154, null
  %.not.i123 = icmp eq ptr %i.ho, null
  br i1 %.not.i123, label %bb.ad, label %bb.ac

end_hunk_12
begin_hunk_13_@pm_compile_super_node:bb.a
  %.015.i124 = phi i32 [ %i.hq, %bb.ac ], [ %i.dg, %APPEND_LIST.exit._crit_edge ] ; 3 uses
  %.0.i125 = phi i32 [ %i.hs, %bb.ac ], [ %i.cy, %APPEND_LIST.exit._crit_edge ] ; 3 uses
  %i.ht = and i32 %.015.i124, 8291
  %8 = icmp ne i32 %i.ht, 0
  %or.cond.i126 = select i1 %8, i1 true, i1 %i.hp
  %i.hu = or i32 %.015.i124, 16
  %spec.select.i127 = select i1 %or.cond.i126, i32 %.015.i124, i32 %i.hu ; 3 uses
  %i.hv = getelementptr i8, ptr %0, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !46
  %i.hx = getelementptr i8, ptr %i.hw, i64 260    ; 2 uses
end_hunk_13

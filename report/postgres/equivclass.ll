Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/equivclass?download=true
inline.NumInlined: 132
inline.NumDeleted: 41
begin_hunk_0_@reconsider_outer_join_clause:bb.a
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 28
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = load ptr, ptr %i.bm, align 8            ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 4 ; 2 uses
  %.not.i112 = icmp eq ptr %i.cf, null
  br i1 %.not.i112, label %select_equality_operator.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ci = load i32, ptr %i.cg, align 4
  %i.cj = icmp sgt i32 %i.ci, 0
  br i1 %i.cj, label %.lr.ph44.i, label %select_equality_operator.exit.thread

.lr.ph44.i:                                       ; preds = %.lr.ph.i, %bb.n
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.n ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.ck = load ptr, ptr %i.ch, align 8
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv.i
  %i.cm = load i32, ptr %i.cl, align 8
  %i.cn = call i32 @get_opfamily_member_for_cmptype(i32 noundef %i.cm, i32 noundef %.074, i32 noundef %i.ce, i32 noundef 3) #10 ; 3 uses
  %.not22.i = icmp eq i32 %i.cn, 0
  br i1 %.not22.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.lr.ph44.i
  %i.co = load i32, ptr %i.br, align 4
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %select_equality_operator.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cq = call i32 @get_opcode(i32 noundef %i.cn) #10
  %i.cr = call zeroext i1 @get_func_leakproof(i32 noundef %i.cq) #10
  br i1 %i.cr, label %select_equality_operator.exit, label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph44.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cs = load i32, ptr %i.cg, align 4
  %i.ct = sext i32 %i.cs to i64
  %i.cu = icmp slt i64 %indvars.iv.next.i, %i.ct
  br i1 %i.cu, label %.lr.ph44.i, label %select_equality_operator.exit.thread

select_equality_operator.exit:                    ; preds = %bb.m, %bb.l
  %i.cv = load i32, ptr %i.bl, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = call ptr @bms_copy(ptr noundef %.073) #10
  %i.cz = load i32, ptr %i.bs, align 8
  %i.da = call ptr @build_implied_join_equality(ptr noundef %0, i32 noundef %i.cn, i32 noundef %i.cv, ptr noundef %.075, ptr noundef %i.cx, ptr noundef %i.cy, i32 noundef %i.cz) #10
  store ptr %i.da, ptr %i.c, align 8
  %i.db = load ptr, ptr %i.bt, align 8
  %.val100 = load ptr, ptr %i.bu, align 8         ; 3 uses
  %.not.i113 = icmp eq ptr %.val100, null
  br i1 %.not.i113, label %.critedge.i, label %.lr.ph.i114

.lr.ph.i114:                                      ; preds = %select_equality_operator.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %.val100, i64 4 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.val100, i64 16
  %i.de = load i32, ptr %i.dc, align 4
  %i.df = icmp sgt i32 %i.de, 0
  br i1 %i.df, label %.lr.ph4.i, label %.critedge.i

bb.o:                                             ; preds = %.lr.ph4.i
  %indvars.iv.next.i116 = add nuw nsw i64 %indvars.iv.i115, 1 ; 2 uses
  %i.dg = load i32, ptr %i.dc, align 4
  %i.dh = sext i32 %i.dg to i64
  %i.di = icmp slt i64 %indvars.iv.next.i116, %i.dh
  br i1 %i.di, label %.lr.ph4.i, label %.critedge.i

.lr.ph4.i:                                        ; preds = %.lr.ph.i114, %bb.o
  %indvars.iv.i115 = phi i64 [ %indvars.iv.next.i116, %bb.o ], [ 0, %.lr.ph.i114 ] ; 2 uses
  %i.dj = load ptr, ptr %i.dd, align 8
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv.i115
  %i.dl = load ptr, ptr %i.dk, align 8            ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = call zeroext i1 @bms_is_subset(ptr noundef %i.dn, ptr noundef %i.db) #10
  br i1 %i.do, label %find_join_domain.exit, label %bb.o

.critedge.i:                                      ; preds = %.lr.ph.i114, %select_equality_operator.exit, %bb.o
  %i.dp = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.dq = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.7) #10 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 2627, ptr noundef nonnull @__func__.find_join_domain) #10
  unreachable

find_join_domain.exit:                            ; preds = %.lr.ph4.i
  %i.dr = call zeroext i1 @process_equivalence(ptr noundef %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.dl)
  %spec.select = select i1 %i.dr, i1 true, i1 %.33785
  br label %select_equality_operator.exit.thread

select_equality_operator.exit.thread:             ; preds = %bb.n, %.lr.ph.i, %bb.k, %.lr.ph86, %find_join_domain.exit
  %.5 = phi i1 [ %spec.select, %find_join_domain.exit ], [ %.33785, %.lr.ph86 ], [ %.33785, %bb.k ], [ %.33785, %.lr.ph.i ], [ %.33785, %bb.n ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv5384, 1 ; 2 uses
  %i.ds = load i32, ptr %i.bp, align 4
  %i.dt = sext i32 %i.ds to i64
  %i.du = icmp slt i64 %indvars.iv.next54, %i.dt
  br i1 %i.du, label %.lr.ph86, label %.critedge

.critedge93:                                      ; preds = %bb.j, %bb.i, %.lr.ph, %.lr.ph83, %bb.f, %bb.h, %bb.g
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv5082, 1 ; 2 uses
  %i.dv = load i32, ptr %i.ac, align 4
  %i.dw = sext i32 %i.dv to i64
  %i.dx = icmp slt i64 %indvars.iv.next51, %i.dw
  br i1 %i.dx, label %.lr.ph83, label %.critedge

.critedge:                                        ; preds = %.critedge93, %select_equality_operator.exit.thread, %.lr.ph35, %.lr.ph39, %get_rightop.exit, %.critedge9.split
  %.271 = phi i1 [ false, %.lr.ph35 ], [ false, %.critedge9.split ], [ false, %get_rightop.exit ], [ false, %.lr.ph39 ], [ %.5, %select_equality_operator.exit.thread ], [ false, %.critedge93 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i1 %.271
}

declare ptr @makeBoolConst(i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare void @distribute_restrictinfo_to_rels(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @rebuild_eclass_attr_needed(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.critedge, label %.lr.ph32

.lr.ph32:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i32, ptr %i.c, align 4              ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph35, label %.critedge

.lr.ph35:                                         ; preds = %.lr.ph32, %.critedge29
  %i.g = phi i32 [ %i.ae, %.critedge29 ], [ %i.e, %.lr.ph32 ] ; 3 uses
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %.critedge29 ], [ 0, %.lr.ph32 ] ; 2 uses
  %i.h = load ptr, ptr %i.d, align 8
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv37
  %i.j = load ptr, ptr %i.i, align 8              ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %.critedge29, label %list_length.exit

list_length.exit:                                 ; preds = %.lr.ph35
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4
  %i.o = icmp sgt i32 %i.n, 1
  br i1 %i.o, label %bb.b, label %.critedge29

.critedge:                                        ; preds = %.critedge29, %.lr.ph32, %bb.a
  ret void

bb.b:                                             ; preds = %list_length.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.q = load i8, ptr %i.p, align 8, !range !6, !noundef !7
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %.critedge29, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.u = load ptr, ptr %i.s, align 8
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call ptr @pull_var_clause(ptr noundef %i.y, i32 noundef 26) #10 ; 2 uses
  %i.aa = load ptr, ptr %i.t, align 8
  tail call void @add_vars_to_attr_needed(ptr noundef %0, ptr noundef %i.z, ptr noundef %i.aa) #10
  tail call void @list_free(ptr noundef %i.z) #10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ab = load i32, ptr %i.m, align 4
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp slt i64 %indvars.iv.next, %i.ac
  br i1 %i.ad, label %bb.c, label %.critedge29.loopexit, !llvm.loop !26

.critedge29.loopexit:                             ; preds = %bb.c
  %.pre = load i32, ptr %i.c, align 4
  br label %.critedge29

.critedge29:                                      ; preds = %.critedge29.loopexit, %.lr.ph35, %bb.b, %list_length.exit
  %i.ae = phi i32 [ %.pre, %.critedge29.loopexit ], [ %i.g, %list_length.exit ], [ %i.g, %.lr.ph35 ], [ %i.g, %bb.b ] ; 2 uses
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1 ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = icmp slt i64 %indvars.iv.next38, %i.af
  br i1 %i.ag, label %.lr.ph35, label %.critedge
}

declare void @add_vars_to_attr_needed(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @exprs_known_equal(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.critedge50, label %.lr.ph65

.lr.ph65:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.not46 = icmp eq i32 %3, 0
  %i.e = load i32, ptr %i.c, align 4
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph76, label %.critedge50

.lr.ph76:                                         ; preds = %.lr.ph65, %.loopexit
  %indvars.iv6875 = phi i64 [ %indvars.iv.next69, %.loopexit ], [ 0, %.lr.ph65 ] ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv6875
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 73
  %i.k = load i8, ptr %i.j, align 1, !range !6, !noundef !7
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph76
  br i1 %.not46, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call zeroext i1 @list_member_oid(ptr noundef %i.n, i32 noundef %3) #10
  br i1 %i.o, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %.not47 = icmp eq ptr %i.q, null
  br i1 %.not47, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = load i32, ptr %i.r, align 4
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph63, label %.loopexit

bb.e:                                             ; preds = %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = load i32, ptr %i.r, align 4
  %i.w = sext i32 %i.v to i64
  %i.x = icmp slt i64 %indvars.iv.next, %i.w
  br i1 %i.x, label %.lr.ph63, label %.loopexit

.lr.ph63:                                         ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %.lr.ph ] ; 2 uses
  %.0335662 = phi i1 [ %.134, %bb.e ], [ false, %.lr.ph ]
  %.0325761 = phi i1 [ %.1, %bb.e ], [ false, %.lr.ph ] ; 2 uses
  %i.y = load ptr, ptr %i.s, align 8
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call zeroext i1 @equal(ptr noundef %1, ptr noundef %i.ac) #10
  br i1 %i.ad, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph63
  %i.ae = load ptr, ptr %i.ab, align 8
  %i.af = tail call zeroext i1 @equal(ptr noundef %2, ptr noundef %i.ae) #10
  %spec.select = select i1 %i.af, i1 true, i1 %.0325761
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph63
  %.134 = phi i1 [ %.0335662, %bb.f ], [ true, %.lr.ph63 ] ; 2 uses
  %.1 = phi i1 [ %spec.select, %bb.f ], [ %.0325761, %.lr.ph63 ] ; 2 uses
  %or.cond = select i1 %.134, i1 %.1, i1 false
  br i1 %or.cond, label %.critedge50, label %bb.e

.loopexit:                                        ; preds = %bb.e, %bb.d, %.lr.ph, %.lr.ph76, %bb.c
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv6875, 1 ; 2 uses
  %i.ag = load i32, ptr %i.c, align 4
  %i.ah = sext i32 %i.ag to i64
  %i.ai = icmp slt i64 %indvars.iv.next69, %i.ah
  br i1 %i.ai, label %.lr.ph76, label %.critedge50

.critedge50:                                      ; preds = %.loopexit, %bb.g, %.lr.ph65, %bb.a
  %.6 = phi i1 [ false, %bb.a ], [ false, %.lr.ph65 ], [ true, %bb.g ], [ false, %.loopexit ]
  ret i1 %.6
}

declare zeroext i1 @list_member_oid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @match_eclasses_to_foreign_key_col(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = sext i32 %2 to i64                       ; 5 uses
  %i.e = getelementptr inbounds [2 x i8], ptr %i.c, i64 %i.d
  %i.f = load i16, ptr %i.e, align 2
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i32, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.j = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.d
  %i.k = load i16, ptr %i.j, align 2
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.m = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.d
  %i.n = load i32, ptr %i.m, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = zext i32 %i.b to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = zext i32 %i.h to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 216
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 216
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call ptr @bms_intersect(ptr noundef %i.x, ptr noundef %i.z) #10 ; 2 uses
  %i.ab = tail call i32 @bms_next_member(ptr noundef %i.aa, i32 noundef -1) #10 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, -1
  br i1 %i.ac, label %.lr.ph115, label %.loopexit104

.lr.ph115:                                        ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 192
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph115, %.loopexit103
  %i.ae = phi i32 [ %i.ab, %.lr.ph115 ], [ %i.bs, %.loopexit103 ] ; 2 uses
  %.067114 = phi ptr [ null, %.lr.ph115 ], [ %.5, %.loopexit103 ] ; 6 uses
  %i.af = load ptr, ptr %i.ad, align 8
  %i.ag = getelementptr i8, ptr %i.af, i64 16
  %.val = load ptr, ptr %i.ag, align 8
  %i.ah = zext nneg i32 %i.ae to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8            ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 73
  %i.al = load i8, ptr %i.ak, align 1, !range !6, !noundef !7
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %.loopexit103, label %bb.c, !llvm.loop !27

bb.c:                                             ; preds = %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.ao = load ptr, ptr %i.an, align 8            ; 3 uses
  %.not = icmp eq ptr %i.ao, null
  br i1 %.not, label %.loopexit103, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = load i32, ptr %i.ap, align 4            ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph113, label %.loopexit103

.lr.ph113:                                        ; preds = %.lr.ph
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  %wide.trip.count = zext nneg i32 %i.aq to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph113, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph113 ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %.063106112 = phi ptr [ null, %.lr.ph113 ], [ %.265.ph, %.loopexit ] ; 4 uses
  %.060107111 = phi ptr [ null, %.lr.ph113 ], [ %.262.ph, %.loopexit ] ; 5 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv
  %i.av = load ptr, ptr %i.au, align 8            ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.pn = phi ptr [ %i.av, %bb.d ], [ %.0, %bb.f ]
  %.0.in = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %.0 = load ptr, ptr %.0.in, align 8             ; 6 uses
  %.not79 = icmp eq ptr %.0, null
  br i1 %.not79, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = load i32, ptr %.0, align 4
  switch i32 %i.aw, label %.loopexit [
    i32 27, label %bb.e
    i32 6, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.ay = load i32, ptr %i.ax, align 4            ; 2 uses
  %i.az = icmp eq i32 %i.ay, %i.b
  br i1 %i.az, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.bb = load i16, ptr %i.ba, align 8
  %i.bc = icmp eq i16 %i.bb, %i.f
  br i1 %i.bc, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bd = icmp eq i32 %i.ay, %i.h
  br i1 %i.bd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.bf = load i16, ptr %i.be, align 8
  %i.bg = icmp eq i16 %i.bf, %i.k
  %spec.select = select i1 %i.bg, ptr %i.av, ptr %.060107111
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.i
  %.164 = phi ptr [ %.063106112, %bb.i ], [ %i.av, %bb.h ], [ %.063106112, %bb.j ] ; 2 uses
  %.161 = phi ptr [ %.060107111, %bb.i ], [ %.060107111, %bb.h ], [ %spec.select, %bb.j ] ; 3 uses
  %i.bh = icmp ne ptr %.164, null
  %i.bi = icmp ne ptr %.161, null
  %or.cond = select i1 %i.bh, i1 %i.bi, i1 false
  br i1 %or.cond, label %.split.us, label %.loopexit

.split.us:                                        ; preds = %bb.k
  %i.bj = icmp eq ptr %.067114, null
  br i1 %i.bj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.split.us
  %i.bk = tail call ptr @get_mergejoin_opfamilies(i32 noundef %i.n) #10
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.split.us
  %.269 = phi ptr [ %i.bk, %bb.l ], [ %.067114, %.split.us ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = tail call zeroext i1 @equal(ptr noundef %.269, ptr noundef %i.bm) #10
  br i1 %i.bn, label %.thread, label %.loopexit103

.loopexit:                                        ; preds = %bb.f, %bb.e, %bb.k
  %.265.ph = phi ptr [ %.164, %bb.k ], [ %.063106112, %bb.e ], [ %.063106112, %bb.f ]
  %.262.ph = phi ptr [ %.161, %bb.k ], [ %.060107111, %bb.e ], [ %.060107111, %bb.f ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit103, label %bb.d

.thread:                                          ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.d
  store ptr %i.aj, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.d
  store ptr %.161, ptr %i.br, align 8
  br label %.loopexit104

.loopexit103:                                     ; preds = %.loopexit, %bb.c, %.lr.ph, %bb.m, %bb.b
  %.5 = phi ptr [ %.067114, %bb.b ], [ %.269, %bb.m ], [ %.067114, %bb.c ], [ %.067114, %.lr.ph ], [ %.067114, %.loopexit ]
  %i.bs = tail call i32 @bms_next_member(ptr noundef %i.aa, i32 noundef %i.ae) #10 ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, -1
  br i1 %i.bt, label %bb.b, label %.loopexit104

.loopexit104:                                     ; preds = %.loopexit103, %bb.a, %.thread
  %.575 = phi ptr [ %i.aj, %.thread ], [ null, %bb.a ], [ null, %.loopexit103 ]
  ret ptr %.575
}

declare ptr @bms_intersect(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @get_mergejoin_opfamilies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @find_derived_clause_for_ec_member(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @ec_search_derived_clause_for_ems(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef null)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @ec_search_derived_clause_for_ems(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.ECDerivesKey, align 8       ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %ec_build_derives_hash.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %.thread60, label %list_length.exit

list_length.exit:                                 ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = icmp sgt i32 %i.f, 31
end_hunk_0

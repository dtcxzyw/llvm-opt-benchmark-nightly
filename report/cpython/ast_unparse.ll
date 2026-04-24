inline.NumInlined: 168
inline.NumDeleted: 41
begin_hunk_0
@.str.63 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.64 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c" := \00", align 1
@switch.table.append_ast_expr = private unnamed_addr constant [4 x ptr] [ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], align 8
@switch.table.append_ast_expr.6 = private unnamed_addr constant [4 x i32] [i32 12, i32 4, i32 12, i32 12], align 4
@switch.table.append_ast_expr.7 = private unnamed_addr constant [10 x ptr] [ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.36, ptr @.str.49], align 8

; Function Attrs: nounwind uwtable
define hidden ptr @_PyAST_ExprAsUnicode(ptr noundef %0) local_unnamed_addr #0 {
end_hunk_0
begin_hunk_1_@append_ast_expr:bb.a
  %i.ab = getelementptr i8, ptr %1, i64 8
  %i.ac = getelementptr i8, ptr %1, i64 16
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !14
  switch i32 %i.ad, label %bb.m [
    i32 1, label %bb.n
    i32 2, label %3
    i32 3, label %4
    i32 4, label %5
    i32 5, label %6
    i32 6, label %7
    i32 8, label %8
    i32 9, label %9
    i32 10, label %10
    i32 11, label %11
    i32 12, label %12
    i32 13, label %13
    i32 7, label %14
  ]

3:                                                ; preds = %bb.l
  br label %bb.n

4:                                                ; preds = %bb.l
  br label %bb.n

5:                                                ; preds = %bb.l
  br label %bb.n

6:                                                ; preds = %bb.l
  br label %bb.n

7:                                                ; preds = %bb.l
  br label %bb.n

8:                                                ; preds = %bb.l
  br label %bb.n

9:                                                ; preds = %bb.l
  br label %bb.n

10:                                               ; preds = %bb.l
  br label %bb.n

11:                                               ; preds = %bb.l
  br label %bb.n

12:                                               ; preds = %bb.l
  br label %bb.n

13:                                               ; preds = %bb.l
  br label %bb.n

14:                                               ; preds = %bb.l
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ae = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !26
  tail call void @PyErr_SetString(ptr noundef %i.ae, ptr noundef nonnull @.str.19) #3, !inline_history !28
  br label %common.ret332

bb.n:                                             ; preds = %14, %13, %12, %11, %10, %9, %8, %7, %6, %5, %4, %3, %bb.l
  %.018.i = phi ptr [ @.str.18, %14 ], [ @.str.7, %3 ], [ @.str.8, %4 ], [ @.str.9, %5 ], [ @.str.10, %6 ], [ @.str.11, %7 ], [ @.str.12, %8 ], [ @.str.13, %9 ], [ @.str.14, %10 ], [ @.str.15, %11 ], [ @.str.16, %12 ], [ @.str.17, %13 ], [ @.str.6, %bb.l ]
  %.017.i = phi i32 [ 13, %14 ], [ 10, %3 ], [ 11, %4 ], [ 11, %5 ], [ 11, %6 ], [ 11, %7 ], [ 9, %8 ], [ 9, %9 ], [ 6, %10 ], [ 7, %11 ], [ 8, %12 ], [ 11, %13 ], [ 10, %bb.l ] ; 3 uses
  %.0.i74 = phi i1 [ true, %14 ], [ false, %3 ], [ false, %4 ], [ false, %5 ], [ false, %6 ], [ false, %7 ], [ false, %8 ], [ false, %9 ], [ false, %10 ], [ false, %11 ], [ false, %12 ], [ false, %13 ], [ false, %bb.l ] ; 2 uses
  %i.af = icmp samesign ugt i32 %2, %.017.i       ; 2 uses
  br i1 %i.af, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
end_hunk_1
begin_hunk_2_@append_ast_expr:bb.a

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ai = load ptr, ptr %i.ab, align 8, !tbaa !14
  %15 = zext i1 %.0.i74 to i32
  %i.aj = add nuw nsw i32 %.017.i, %15
  %i.ak = tail call fastcc i32 @append_ast_expr(ptr noundef nonnull %0, ptr noundef %i.ai, i32 noundef %i.aj), !inline_history !28
  %i.al = icmp eq i32 %i.ak, -1
  br i1 %i.al, label %common.ret332, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = tail call i32 @PyUnicodeWriter_WriteUTF8(ptr noundef nonnull %0, ptr noundef nonnull %.018.i, i64 noundef -1) #3
  %i.an = icmp eq i32 %i.am, -1
  br i1 %i.an, label %common.ret332, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ao = getelementptr i8, ptr %1, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !14
  %16 = xor i1 %.0.i74, true
  %17 = zext i1 %16 to i32
  %i.aq = add nuw nsw i32 %.017.i, %17
  %i.ar = tail call fastcc i32 @append_ast_expr(ptr noundef nonnull %0, ptr noundef %i.ap, i32 noundef %i.aq), !inline_history !28
  %i.as = icmp eq i32 %i.ar, -1
  br i1 %i.as, label %common.ret332, label %bb.s
end_hunk_2
begin_hunk_3_@append_ast_expr:bb.a

switch.lookup:                                    ; preds = %bb.u
  %i.az = zext nneg i32 %switch.tableidx.a to i64
  %switch.gep.a = getelementptr inbounds nuw [8 x i8], ptr @switch.table.append_ast_expr, i64 %i.az
  %switch.load.a = load ptr, ptr %switch.gep.a, align 8
  %i.ba = zext nneg i32 %switch.tableidx.a to i64
  %switch.gep319.a = getelementptr inbounds nuw [4 x i8], ptr @switch.table.append_ast_expr.6, i64 %i.ba
  %switch.load320.a = load i32, ptr %switch.gep319.a, align 4 ; 2 uses
  %i.bb = icmp samesign ugt i32 %2, %switch.load320.a ; 2 uses
  br i1 %i.bb, label %bb.w, label %bb.x
end_hunk_3
begin_hunk_4_@append_ast_expr:bb.a

switch.lookup322:                                 ; preds = %bb.dg
  %i.kc = zext nneg i32 %switch.tableidx321 to i64
  %switch.gep323.a = getelementptr inbounds nuw [8 x i8], ptr @switch.table.append_ast_expr.7, i64 %i.kc
  %switch.load324.a = load ptr, ptr %switch.gep323.a, align 8
  %i.kd = tail call i32 @PyUnicodeWriter_WriteUTF8(ptr noundef nonnull %0, ptr noundef nonnull %switch.load324.a, i64 noundef -1) #3
  %i.ke = icmp eq i32 %i.kd, -1
end_hunk_4
begin_hunk_5_@append_ast_args:bb.a
  %i.n = phi i64 [ %i.m, %bb.f ], [ 0, %bb.e ]
  %i.o = add i64 %i.i, %i.d                       ; 4 uses
  %invariant.op = sub i64 %i.n, %i.o              ; 3 uses
  %2 = icmp sgt i64 %i.o, 0
  br i1 %2, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.p = icmp sgt i64 %i.d, 0
end_hunk_5
begin_hunk_6_@append_ast_args:bb.a
  br i1 %exitcond.not, label %._crit_edge, label %.peel.next, !llvm.loop !90

._crit_edge:                                      ; preds = %bb.ah, %bb.t, %bb.g
  %.073.lcssa = phi i8 [ 1, %bb.g ], [ 0, %bb.t ], [ 0, %bb.ah ] ; 3 uses
  %i.cv = getelementptr i8, ptr %1, i64 16        ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !91
  %.not = icmp eq ptr %i.cw, null
end_hunk_6
begin_hunk_7_@append_ast_args:bb.a
  br i1 %i.db, label %.critedge, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %._crit_edge
  %3 = trunc nuw i8 %.073.lcssa to i1
  br i1 %3, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dc = tail call i32 @PyUnicodeWriter_WriteUTF8(ptr noundef nonnull %0, ptr noundef nonnull @.str.28, i64 noundef -1) #3
end_hunk_7
begin_hunk_8_@append_ast_args:bb.a
  br i1 %i.dq, label %append_ast_arg.exit.thread, label %.critedge

.critedge:                                        ; preds = %bb.ar, %bb.ap, %bb.ai, %bb.an, %bb.aj
  %.174 = phi i8 [ %.073.lcssa, %bb.ai ], [ 0, %bb.an ], [ %.073.lcssa, %bb.aj ], [ 0, %bb.ap ], [ 0, %bb.ar ]
  %i.dr = getelementptr i8, ptr %1, i64 24        ; 3 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !92 ; 3 uses
  %i.dt = icmp eq ptr %i.ds, null
end_hunk_8
begin_hunk_9_@append_ast_args:bb.a

bb.av:                                            ; preds = %bb.at, %bb.au
  %i.ea = phi i64 [ %i.dz, %bb.au ], [ 0, %bb.at ]
  %4 = trunc nuw i8 %.174 to i1                   ; 2 uses
  %invariant.op117 = sub i64 %i.ea, %i.dv         ; 3 uses
  %i.eb = icmp sgt i64 %i.dv, 0
  br i1 %i.eb, label %.lr.ph122.preheader, label %._crit_edge123

.lr.ph122.preheader:                              ; preds = %bb.av
  br i1 %4, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph122.preheader
  %i.ec = tail call i32 @PyUnicodeWriter_WriteUTF8(ptr noundef nonnull %0, ptr noundef nonnull @.str.28, i64 noundef -1) #3
end_hunk_9
begin_hunk_10_@append_ast_args:bb.a
  br i1 %exitcond127.not, label %._crit_edge123, label %.lr.ph122.peel.next, !llvm.loop !94

._crit_edge123:                                   ; preds = %.critedge98, %.critedge98.peel, %bb.av
  %.275.lcssa = phi i1 [ %4, %bb.av ], [ false, %.critedge98.peel ], [ false, %.critedge98 ]
  %i.ga = getelementptr i8, ptr %1, i64 40        ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !95
  %.not93 = icmp eq ptr %i.gb, null
end_hunk_10

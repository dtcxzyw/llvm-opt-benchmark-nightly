Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/frm_driver?download=true
inline.NumInlined: 101
inline.NumDeleted: 20
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdscr = external local_unnamed_addr global ptr, align 8
@form_driver.Generic_Methods = internal unnamed_addr constant [9 x ptr] [ptr @Page_Navigation, ptr @Inter_Field_Navigation, ptr null, ptr @Vertical_Scrolling, ptr @Horizontal_Scrolling, ptr @Field_Editing, ptr null, ptr null, ptr null], align 16
@bindings = internal unnamed_addr constant [57 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 512, [4 x i8] zeroinitializer, ptr @PN_Next_Page }, { i32, [4 x i8], ptr } { i32 513, [4 x i8] zeroinitializer, ptr @PN_Previous_Page }, { i32, [4 x i8], ptr } { i32 514, [4 x i8] zeroinitializer, ptr @PN_First_Page }, { i32, [4 x i8], ptr } { i32 515, [4 x i8] zeroinitializer, ptr @PN_Last_Page }, { i32, [4 x i8], ptr } { i32 66052, [4 x i8] zeroinitializer, ptr @FN_Next_Field }, { i32, [4 x i8], ptr } { i32 66053, [4 x i8] zeroinitializer, ptr @FN_Previous_Field }, { i32, [4 x i8], ptr } { i32 66054, [4 x i8] zeroinitializer, ptr @FN_First_Field }, { i32, [4 x i8], ptr } { i32 66055, [4 x i8] zeroinitializer, ptr @FN_Last_Field }, { i32, [4 x i8], ptr } { i32 66056, [4 x i8] zeroinitializer, ptr @FN_Sorted_Next_Field }, { i32, [4 x i8], ptr } { i32 66057, [4 x i8] zeroinitializer, ptr @FN_Sorted_Previous_Field }, { i32, [4 x i8], ptr } { i32 66058, [4 x i8] zeroinitializer, ptr @FN_Sorted_First_Field }, { i32, [4 x i8], ptr } { i32 66059, [4 x i8] zeroinitializer, ptr @FN_Sorted_Last_Field }, { i32, [4 x i8], ptr } { i32 66060, [4 x i8] zeroinitializer, ptr @FN_Left_Field }, { i32, [4 x i8], ptr } { i32 66061, [4 x i8] zeroinitializer, ptr @FN_Right_Field }, { i32, [4 x i8], ptr } { i32 66062, [4 x i8] zeroinitializer, ptr @FN_Up_Field }, { i32, [4 x i8], ptr } { i32 66063, [4 x i8] zeroinitializer, ptr @FN_Down_Field }, { i32, [4 x i8], ptr } { i32 131600, [4 x i8] zeroinitializer, ptr @IFN_Next_Character }, { i32, [4 x i8], ptr } { i32 131601, [4 x i8] zeroinitializer, ptr @IFN_Previous_Character }, { i32, [4 x i8], ptr } { i32 131602, [4 x i8] zeroinitializer, ptr @IFN_Next_Line }, { i32, [4 x i8], ptr } { i32 131603, [4 x i8] zeroinitializer, ptr @IFN_Previous_Line }, { i32, [4 x i8], ptr } { i32 131604, [4 x i8] zeroinitializer, ptr @IFN_Next_Word }, { i32, [4 x i8], ptr } { i32 131605, [4 x i8] zeroinitializer, ptr @IFN_Previous_Word }, { i32, [4 x i8], ptr } { i32 131606, [4 x i8] zeroinitializer, ptr @IFN_Beginning_Of_Field }, { i32, [4 x i8], ptr } { i32 131607, [4 x i8] zeroinitializer, ptr @IFN_End_Of_Field }, { i32, [4 x i8], ptr } { i32 131608, [4 x i8] zeroinitializer, ptr @IFN_Beginning_Of_Line }, { i32, [4 x i8], ptr } { i32 131609, [4 x i8] zeroinitializer, ptr @IFN_End_Of_Line }, { i32, [4 x i8], ptr } { i32 131610, [4 x i8] zeroinitializer, ptr @IFN_Left_Character }, { i32, [4 x i8], ptr } { i32 131611, [4 x i8] zeroinitializer, ptr @IFN_Right_Character }, { i32, [4 x i8], ptr } { i32 131612, [4 x i8] zeroinitializer, ptr @IFN_Up_Character }, { i32, [4 x i8], ptr } { i32 131613, [4 x i8] zeroinitializer, ptr @IFN_Down_Character }, { i32, [4 x i8], ptr } { i32 328222, [4 x i8] zeroinitializer, ptr @FE_New_Line }, { i32, [4 x i8], ptr } { i32 328223, [4 x i8] zeroinitializer, ptr @FE_Insert_Character }, { i32, [4 x i8], ptr } { i32 328224, [4 x i8] zeroinitializer, ptr @FE_Insert_Line }, { i32, [4 x i8], ptr } { i32 328225, [4 x i8] zeroinitializer, ptr @FE_Delete_Character }, { i32, [4 x i8], ptr } { i32 328226, [4 x i8] zeroinitializer, ptr @FE_Delete_Previous }, { i32, [4 x i8], ptr } { i32 328227, [4 x i8] zeroinitializer, ptr @FE_Delete_Line }, { i32, [4 x i8], ptr } { i32 328228, [4 x i8] zeroinitializer, ptr @FE_Delete_Word }, { i32, [4 x i8], ptr } { i32 328229, [4 x i8] zeroinitializer, ptr @FE_Clear_To_End_Of_Line }, { i32, [4 x i8], ptr } { i32 328230, [4 x i8] zeroinitializer, ptr @FE_Clear_To_End_Of_Form }, { i32, [4 x i8], ptr } { i32 328231, [4 x i8] zeroinitializer, ptr @FE_Clear_Field }, { i32, [4 x i8], ptr } { i32 393768, [4 x i8] zeroinitializer, ptr @EM_Overlay_Mode }, { i32, [4 x i8], ptr } { i32 393769, [4 x i8] zeroinitializer, ptr @EM_Insert_Mode }, { i32, [4 x i8], ptr } { i32 197162, [4 x i8] zeroinitializer, ptr @VSC_Scroll_Line_Forward }, { i32, [4 x i8], ptr } { i32 197163, [4 x i8] zeroinitializer, ptr @VSC_Scroll_Line_Backward }, { i32, [4 x i8], ptr } { i32 197164, [4 x i8] zeroinitializer, ptr @VSC_Scroll_Page_Forward }, { i32, [4 x i8], ptr } { i32 197165, [4 x i8] zeroinitializer, ptr @VSC_Scroll_Page_Backward }, { i32, [4 x i8], ptr } { i32 197166, [4 x i8] zeroinitializer, ptr @VSC_Scroll_Half_Page_Forward }, { i32, [4 x i8], ptr } { i32 197167, [4 x i8] zeroinitializer, ptr @VSC_Scroll_Half_Page_Backward }, { i32, [4 x i8], ptr } { i32 262704, [4 x i8] zeroinitializer, ptr @HSC_Scroll_Char_Forward }, { i32, [4 x i8], ptr } { i32 262705, [4 x i8] zeroinitializer, ptr @HSC_Scroll_Char_Backward }, { i32, [4 x i8], ptr } { i32 262706, [4 x i8] zeroinitializer, ptr @HSC_Horizontal_Line_Forward }, { i32, [4 x i8], ptr } { i32 262707, [4 x i8] zeroinitializer, ptr @HSC_Horizontal_Line_Backward }, { i32, [4 x i8], ptr } { i32 262708, [4 x i8] zeroinitializer, ptr @HSC_Horizontal_Half_Line_Forward }, { i32, [4 x i8], ptr } { i32 262709, [4 x i8] zeroinitializer, ptr @HSC_Horizontal_Half_Line_Backward }, { i32, [4 x i8], ptr } { i32 459318, [4 x i8] zeroinitializer, ptr @FV_Validation }, { i32, [4 x i8], ptr } { i32 524855, [4 x i8] zeroinitializer, ptr @CR_Next_Choice }, { i32, [4 x i8], ptr } { i32 524856, [4 x i8] zeroinitializer, ptr @CR_Previous_Choice }], align 16

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @_nc_Position_Form_Cursor(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %.not29 = icmp eq ptr %i.b, null
  br i1 %.not29, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17   ; 8 uses
  %.not30 = icmp eq ptr %i.d, null
  br i1 %.not30, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18   ; 2 uses
  %.not31 = icmp eq ptr %i.f, null
  br i1 %.not31, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19   ; 2 uses
  %.not32 = icmp eq ptr %i.h, null
  %i.i = load ptr, ptr @stdscr, align 8
  %spec.select = select i1 %.not32, ptr %i.i, ptr %i.h
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = phi ptr [ %spec.select, %bb.e ], [ %i.f, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !21
  %i.o = tail call i32 @wmove(ptr noundef nonnull %i.b, i32 noundef %i.l, i32 noundef %i.n) #14 ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.q = load i32, ptr %i.p, align 8, !tbaa !22
  %i.r = and i32 %i.q, 4
  %.not33 = icmp eq i32 %i.r, 0
  br i1 %.not33, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !27
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.v = load i16, ptr %i.u, align 2, !tbaa !28
  %i.w = sext i16 %i.v to i32
  %i.x = icmp sgt i32 %i.t, %i.w
  br i1 %i.x, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !29
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ab = load i16, ptr %i.aa, align 4, !tbaa !30
  %i.ac = sext i16 %i.ab to i32
  %i.ad = icmp sgt i32 %i.z, %i.ac
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !31
  %i.ag = sext i16 %i.af to i32
  %i.ah = load i32, ptr %i.k, align 8, !tbaa !20
  %i.ai = add nsw i32 %i.ah, %i.ag
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !32
  %i.al = sub i32 %i.ai, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.an = load i16, ptr %i.am, align 8, !tbaa !33
  %i.ao = sext i16 %i.an to i32
  %i.ap = load i32, ptr %i.m, align 4, !tbaa !21
  %i.aq = add nsw i32 %i.ap, %i.ao
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !34
  %i.at = sub i32 %i.aq, %i.as
  %i.au = tail call i32 @wmove(ptr noundef %i.j, i32 noundef %i.al, i32 noundef %i.at) #14 ; 0 uses
  br label %.sink.split

bb.j:                                             ; preds = %bb.h
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !9
  br label %.sink.split

.sink.split:                                      ; preds = %bb.j, %bb.i
  %.sink = phi ptr [ %i.j, %bb.i ], [ %i.av, %bb.j ]
  tail call void @wcursyncup(ptr noundef %.sink) #14
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ -1, %bb.b ], [ -2, %bb.a ], [ -1, %bb.c ], [ 0, %.sink.split ]
  ret i32 %.0
}

declare i32 @wmove(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @wcursyncup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @_nc_Refresh_Current_Field(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @__errno_location() #15
  store i32 -2, ptr %i.a, align 4, !tbaa !35
  br label %bb.ag

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 8 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9    ; 4 uses
  %.not114 = icmp eq ptr %i.c, null
  br i1 %.not114, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17   ; 19 uses
  %.not115 = icmp eq ptr %i.e, null
  br i1 %.not115, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = tail call ptr @__errno_location() #15
  store i32 -1, ptr %i.f, align 4, !tbaa !35
  br label %bb.ag

bb.f:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18   ; 2 uses
  %.not116 = icmp eq ptr %i.h, null
  br i1 %.not116, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19   ; 2 uses
  %.not117 = icmp eq ptr %i.j, null
  %i.k = load ptr, ptr @stdscr, align 8
  %spec.select = select i1 %.not117, ptr %i.k, ptr %i.j
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.l = phi ptr [ %spec.select, %bb.g ], [ %i.h, %bb.f ] ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.n = load i32, ptr %i.m, align 8, !tbaa !22
  %i.o = and i32 %i.n, 4
  %.not118 = icmp eq i32 %i.o, 0
  br i1 %.not118, label %bb.af, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.s = load i16, ptr %i.r, align 2, !tbaa !28
  %i.t = sext i16 %i.s to i32                     ; 7 uses
  %i.u = icmp sgt i32 %i.q, %i.t
  br i1 %i.u, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.w = load i32, ptr %i.v, align 8, !tbaa !29
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.y = load i16, ptr %i.x, align 4, !tbaa !30
  %i.z = sext i16 %i.y to i32
  %i.aa = icmp sgt i32 %i.w, %i.z
  br i1 %i.aa, label %.thread, label %.sink.split

bb.k:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !36
  %i.ad = add nsw i32 %i.ac, %i.t
  %i.ae = icmp eq i32 %i.ad, 1
  br i1 %i.ae, label %bb.l, label %bb.q

.thread:                                          ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !36
  %i.ah = add nsw i32 %i.ag, %i.t
  %i.ai = icmp eq i32 %i.ah, 1
  br i1 %i.ai, label %bb.l, label %bb.ad

bb.l:                                             ; preds = %.thread, %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !21 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !34 ; 3 uses
  %i.an = icmp slt i32 %i.ak, %i.am
  br i1 %i.an, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !34
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.pre143 = load i16, ptr %.phi.trans.insert, align 4, !tbaa !30
  %.pre145 = sext i16 %.pre143 to i32
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.ap = load i16, ptr %i.ao, align 4, !tbaa !30
  %i.aq = sext i16 %i.ap to i32                   ; 4 uses
  %i.ar = add nsw i32 %i.am, %i.aq
  %.not124 = icmp slt i32 %i.ak, %i.ar
  br i1 %.not124, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = add i32 %i.ak, 1
  %i.at = sub i32 %i.as, %i.aq                    ; 2 uses
  store i32 %i.at, ptr %i.al, align 4, !tbaa !34
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.m
  %.pre-phi = phi i32 [ %i.aq, %bb.n ], [ %i.aq, %bb.o ], [ %.pre145, %bb.m ]
  %i.au = phi i32 [ %i.am, %bb.n ], [ %i.at, %bb.o ], [ %i.ak, %bb.m ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !31
  %i.ax = sext i16 %i.aw to i32                   ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.az = load i16, ptr %i.ay, align 8, !tbaa !33
  %i.ba = sext i16 %i.az to i32                   ; 2 uses
  %i.bb = add nsw i32 %i.ba, -1
  %i.bc = add nsw i32 %i.bb, %.pre-phi
  %i.bd = tail call i32 @copywin(ptr noundef nonnull %i.c, ptr noundef %i.l, i32 noundef 0, i32 noundef %i.au, i32 noundef %i.ax, i32 noundef %i.ba, i32 noundef %i.ax, i32 noundef %i.bc, i32 noundef 0) #14 ; 0 uses
  br label %.sink.split

bb.q:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !32 ; 3 uses
  %i.bg = add i32 %i.bf, %i.t                     ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !20 ; 5 uses
  %i.bj = icmp slt i32 %i.bi, %i.bf
  %.pre.pre = load i16, ptr %i.e, align 8, !tbaa !37 ; 2 uses
  br i1 %i.bj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 %i.bi, ptr %i.be, align 8, !tbaa !32
  %i.bk = or i16 %.pre.pre, 2                     ; 2 uses
  store i16 %i.bk, ptr %i.e, align 8, !tbaa !37
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pre = phi i16 [ %i.bk, %bb.r ], [ %.pre.pre, %bb.q ] ; 2 uses
  %i.bl = phi i32 [ %i.bi, %bb.r ], [ %i.bf, %bb.q ]
  %.not119 = icmp slt i32 %i.bi, %i.bg
  br i1 %.not119, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %reass.sub = sub i32 %i.bi, %i.t
  %i.bm = add i32 %reass.sub, 1                   ; 2 uses
  store i32 %i.bm, ptr %i.be, align 8, !tbaa !32
  %i.bn = or i16 %.pre, 2                         ; 2 uses
  store i16 %i.bn, ptr %i.e, align 8, !tbaa !37
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bo = phi i32 [ %i.bm, %bb.t ], [ %i.bl, %bb.s ]
  %i.bp = phi i16 [ %i.bn, %bb.t ], [ %.pre, %bb.s ] ; 2 uses
  %.fr164 = freeze i32 %i.bo                      ; 7 uses
  %i.bq = and i16 %i.bp, 2
  %.not120 = icmp eq i16 %i.bq, 0
  br i1 %.not120, label %1, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.br = add nsw i32 %.fr164, %i.t
  %i.bs = and i16 %i.bp, -3
  store i16 %i.bs, ptr %i.e, align 8, !tbaa !37
  br label %.loopexit

1:                                                ; preds = %bb.u
  %2 = icmp slt i32 %.fr164, %i.bg
  br i1 %2, label %bb.w, label %._crit_edge

bb.w:                                             ; preds = %1
  %i.bt = icmp slt i32 %.fr164, 0
  br i1 %i.bt, label %.lr.ph.preheader, label %.lr.ph

.lr.ph.preheader:                                 ; preds = %bb.w
  %3 = tail call i32 @getmaxy(ptr noundef nonnull %i.c) #14 ; 0 uses
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.w, %bb.z
  %.098128 = phi i32 [ %i.bz, %bb.z ], [ %.fr164, %bb.w ] ; 6 uses
  %i.bu = load ptr, ptr %i.b, align 8, !tbaa !9   ; 2 uses
  %.not121 = icmp eq ptr %i.bu, null
  br i1 %.not121, label %._crit_edge, label %bb.x

bb.x:                                             ; preds = %.lr.ph
  %i.bv = tail call i32 @getmaxy(ptr noundef nonnull %i.bu) #14
  %i.bw = icmp sgt i32 %.098128, %i.bv
  br i1 %i.bw, label %._crit_edge, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bx = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.by = tail call zeroext i1 @is_linetouched(ptr noundef %i.bx, i32 noundef %.098128) #14
  br i1 %i.by, label %._crit_edge, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bz = add nuw nsw i32 %.098128, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.bz, %i.bg
  br i1 %exitcond.not, label %.sink.split, label %.lr.ph, !llvm.loop !38

._crit_edge:                                      ; preds = %bb.y, %bb.x, %.lr.ph, %.lr.ph.preheader, %1
  %.098.lcssa = phi i32 [ %.fr164, %1 ], [ %.fr164, %.lr.ph.preheader ], [ %.098128, %.lr.ph ], [ %.098128, %bb.x ], [ %.098128, %bb.y ] ; 5 uses
  %i.ca = icmp slt i32 %.098.lcssa, %i.bg
  br i1 %i.ca, label %.lr.ph137, label %.sink.split

.lr.ph137:                                        ; preds = %._crit_edge
  %i.cb = load ptr, ptr %i.b, align 8, !tbaa !9   ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %.loopexit, label %.lr.ph137.split

.lr.ph137.splitthread-pre-split:                  ; preds = %bb.ac
  %.pr = load ptr, ptr %i.b, align 8, !tbaa !9
  br label %.lr.ph137.split

.lr.ph137.split:                                  ; preds = %.lr.ph137, %.lr.ph137.splitthread-pre-split
  %i.cd = phi ptr [ %.pr, %.lr.ph137.splitthread-pre-split ], [ %i.cb, %.lr.ph137 ] ; 2 uses
  %.0135 = phi i32 [ %i.cj, %.lr.ph137.splitthread-pre-split ], [ %.098.lcssa, %.lr.ph137 ] ; 5 uses
  %.not122 = icmp eq ptr %i.cd, null
  br i1 %.not122, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph137.split
  %i.ce = tail call i32 @getmaxy(ptr noundef nonnull %i.cd) #14
  %i.cf = icmp sgt i32 %.0135, %i.ce
  %i.cg = icmp slt i32 %.0135, 0
  %or.cond3 = or i1 %i.cg, %i.cf
  br i1 %or.cond3, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ch = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.ci = tail call zeroext i1 @is_linetouched(ptr noundef %i.ch, i32 noundef %.0135) #14
  br i1 %i.ci, label %bb.ac, label %.loopexit

bb.ac:                                            ; preds = %.lr.ph137.split, %bb.aa, %bb.ab
  %i.cj = add i32 %.0135, 1                       ; 2 uses
  %exitcond142.not = icmp eq i32 %i.cj, %i.bg
  br i1 %exitcond142.not, label %.loopexit, label %.lr.ph137.splitthread-pre-split, !llvm.loop !40

bb.ad:                                            ; preds = %.thread
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !32 ; 2 uses
  %i.cm = add nsw i32 %i.cl, %i.t
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ac, %bb.ab, %.lr.ph137, %bb.v, %bb.ad
  %.199 = phi i32 [ %.fr164, %bb.v ], [ %i.cl, %bb.ad ], [ %.098.lcssa, %.lr.ph137 ], [ %.098.lcssa, %bb.ab ], [ %.098.lcssa, %bb.ac ] ; 3 uses
  %.1 = phi i32 [ %i.br, %bb.v ], [ %i.cm, %bb.ad ], [ %i.bg, %.lr.ph137 ], [ %i.bg, %bb.ac ], [ %.0135, %bb.ab ] ; 2 uses
  %.not123 = icmp eq i32 %.1, %.199
  br i1 %.not123, label %.sink.split, label %bb.ae

bb.ae:                                            ; preds = %.loopexit
  %i.cn = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.co = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !31
  %i.cq = sext i16 %i.cp to i32                   ; 2 uses
  %i.cr = add nsw i32 %.199, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !32 ; 2 uses
  %i.cu = sub i32 %i.cr, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cw = load i16, ptr %i.cv, align 8, !tbaa !33
  %i.cx = sext i16 %i.cw to i32                   ; 2 uses
  %i.cy = add nsw i32 %.1, %i.cq
  %i.cz = xor i32 %i.ct, -1
  %i.da = add i32 %i.cy, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.dc = load i16, ptr %i.db, align 4, !tbaa !30
  %i.dd = sext i16 %i.dc to i32
  %i.de = add nsw i32 %i.cx, -1
  %i.df = add nsw i32 %i.de, %i.dd
  %i.dg = tail call i32 @copywin(ptr noundef %i.cn, ptr noundef %i.l, i32 noundef %.199, i32 noundef 0, i32 noundef %i.cu, i32 noundef %i.cx, i32 noundef %i.da, i32 noundef %i.df, i32 noundef 0) #14 ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %bb.z, %bb.j, %bb.p, %bb.ae, %.loopexit, %._crit_edge
  %.sink = phi ptr [ %i.l, %bb.p ], [ %i.c, %bb.j ], [ %i.l, %._crit_edge ], [ %i.l, %.loopexit ], [ %i.l, %bb.ae ], [ %i.l, %bb.z ]
  tail call void @wsyncup(ptr noundef %.sink) #14
  br label %bb.af

bb.af:                                            ; preds = %.sink.split, %bb.h
  %i.dh = load ptr, ptr %i.b, align 8, !tbaa !9   ; 2 uses
  %i.di = tail call i32 @getmaxy(ptr noundef %i.dh) #14
  %i.dj = tail call i32 @wtouchln(ptr noundef %i.dh, i32 noundef 0, i32 noundef %i.di, i32 noundef 0) #14 ; 0 uses
  %i.dk = tail call i32 @_nc_Position_Form_Cursor(ptr noundef nonnull %0)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.e, %bb.b
  %.0100 = phi i32 [ %i.dk, %bb.af ], [ -1, %bb.e ], [ -2, %bb.b ]
  ret i32 %.0100
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #2

declare i32 @copywin(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @getmaxy(ptr noundef) local_unnamed_addr #1

declare zeroext i1 @is_linetouched(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @wsyncup(ptr noundef) local_unnamed_addr #1

declare i32 @wtouchln(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @_nc_Synchronize_Attributes(ptr nofree noundef captures(address) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 9 uses
  %.not49 = icmp eq ptr %i.b, null
  br i1 %.not49, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i16, ptr %i.b, align 8, !tbaa !43
  %i.d = and i16 %i.c, 1
  %.not50 = icmp eq i16 %i.d, 0
  br i1 %.not50, label %bb.q, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !22
  %i.g = and i32 %i.f, 1
  %.not51 = icmp eq i32 %i.g, 0
  br i1 %.not51, label %bb.q, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i16, ptr %i.h, align 8, !tbaa !44
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.k = load i16, ptr %i.j, align 4, !tbaa !45
  %i.l = icmp eq i16 %i.i, %i.k
  br i1 %i.l, label %bb.f, label %bb.q

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !17
  %i.o = icmp eq ptr %i.n, %0
  br i1 %i.o, label %bb.g, label %bb.p

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @Synchronize_Buffer(ptr noundef nonnull %i.b)
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 7 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.s = load i32, ptr %i.r, align 4, !tbaa !46
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.u = load i32, ptr %i.t, align 4, !tbaa !47
  %i.v = or i32 %i.u, %i.s
  tail call void @wbkgdset(ptr noundef %i.q, i32 noundef %i.v) #14
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !9
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = load i32, ptr %i.x, align 8, !tbaa !48
  %i.z = tail call i32 @wattrset(ptr noundef %i.w, i32 noundef %i.y) #14 ; 0 uses
  %i.aa = load ptr, ptr %i.p, align 8, !tbaa !9
  %i.ab = tail call i32 @werase(ptr noundef %i.aa) #14 ; 0 uses
  %i.ac = load i32, ptr %i.e, align 8, !tbaa !22  ; 2 uses
  %i.ad = and i32 %i.ac, 4
  %.not52 = icmp eq i32 %i.ad, 0
  br i1 %.not52, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !49
  %.not55 = icmp eq i16 %i.af, 0
  br i1 %.not55, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !28
  %i.ai = sext i16 %i.ah to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !36
  %i.al = add nsw i32 %i.ak, %i.ai
  %i.am = icmp eq i32 %i.al, 1
  br i1 %i.am, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !29
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aq = load i16, ptr %i.ap, align 4, !tbaa !30
  %i.ar = sext i16 %i.aq to i32
  %i.as = icmp ne i32 %i.ao, %i.ar
  %i.at = and i32 %i.ac, 512
  %.not56 = icmp eq i32 %i.at, 0
  %or.cond = or i1 %.not56, %i.as
  br i1 %or.cond, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = load ptr, ptr %i.p, align 8, !tbaa !9
  tail call fastcc void @Undo_Justification(ptr noundef %0, ptr noundef %i.au)
  br label %bb.q

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.av = load ptr, ptr %i.p, align 8, !tbaa !9
  tail call fastcc void @Buffer_To_Window(ptr noundef %0, ptr noundef %i.av)
  br label %bb.q

bb.m:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !18 ; 2 uses
  %.not53 = icmp eq ptr %i.ax, null
  br i1 %.not53, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !19 ; 2 uses
  %.not54 = icmp eq ptr %i.az, null
  %i.ba = load ptr, ptr @stdscr, align 8
  %spec.select = select i1 %.not54, ptr %i.ba, ptr %i.az
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bb = phi ptr [ %spec.select, %bb.n ], [ %i.ax, %bb.m ] ; 2 uses
  %i.bc = load ptr, ptr %i.p, align 8, !tbaa !9
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !31
  %i.bf = sext i16 %i.be to i32
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = load i16, ptr %i.bg, align 8, !tbaa !33
  %i.bi = sext i16 %i.bh to i32
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !28
  %i.bl = sext i16 %i.bk to i32
  %i.bm = add nsw i32 %i.bl, -1
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bo = load i16, ptr %i.bn, align 4, !tbaa !30
  %i.bp = sext i16 %i.bo to i32
  %i.bq = add nsw i32 %i.bp, -1
  %i.br = tail call i32 @copywin(ptr noundef %i.bc, ptr noundef %i.bb, i32 noundef 0, i32 noundef 0, i32 noundef %i.bf, i32 noundef %i.bi, i32 noundef %i.bm, i32 noundef %i.bq, i32 noundef 0) #14 ; 0 uses
  tail call void @wsyncup(ptr noundef %i.bb) #14
  %i.bs = load ptr, ptr %i.p, align 8, !tbaa !9
  tail call fastcc void @Buffer_To_Window(ptr noundef %0, ptr noundef %i.bs)
  %i.bt = load i16, ptr %0, align 8, !tbaa !37
  %i.bu = or i16 %i.bt, 2
  store i16 %i.bu, ptr %0, align 8, !tbaa !37
  %i.bv = tail call i32 @_nc_Refresh_Current_Field(ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.f
  %i.bw = tail call fastcc i32 @Display_Or_Erase_Field(ptr noundef nonnull %0, i1 noundef zeroext false)
  br label %bb.q

end_hunk_0

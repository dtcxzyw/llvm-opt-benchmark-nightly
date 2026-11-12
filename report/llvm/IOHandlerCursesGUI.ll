Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/IOHandlerCursesGUI?download=true
inline.NumInlined: 5524
inline.NumDeleted: 2178
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN12lldb_private6curses18FormWindowDelegate24WindowDelegateHandleCharERNS0_6WindowEi:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !328
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.ai, align 4, !tbaa !334
  br label %_ZN12lldb_private6curses18FormWindowDelegate13ExecuteActionERNS0_6WindowEi.exit

bb.i:                                             ; preds = %bb.a
  %i.aj = tail call noundef i32 @_ZN12lldb_private6curses18FormWindowDelegate10SelectNextEi(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef 9) ; 0 uses
  br label %_ZN12lldb_private6curses18FormWindowDelegate13ExecuteActionERNS0_6WindowEi.exit

bb.j:                                             ; preds = %bb.a
  %i.ak = tail call noundef i32 @_ZN12lldb_private6curses18FormWindowDelegate14SelectPreviousEi(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef 512) ; 0 uses
  br label %_ZN12lldb_private6curses18FormWindowDelegate13ExecuteActionERNS0_6WindowEi.exit

bb.k:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !148
  %i.an = tail call noundef zeroext i1 @_ZN12lldb_private6curses6Window15RemoveSubWindowEPS1_(ptr noundef nonnull align 8 dereferenceable(124) %i.am, ptr noundef nonnull %1) ; 0 uses
  br label %_ZN12lldb_private6curses18FormWindowDelegate13ExecuteActionERNS0_6WindowEi.exit

bb.l:                                             ; preds = %._crit_edge, %bb.b
  %i.ao = phi i32 [ %.pre, %._crit_edge ], [ %i.b, %bb.b ]
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %_ZN12lldb_private6curses12FormDelegate8GetFieldEj.exit, label %bb.m

_ZN12lldb_private6curses12FormDelegate8GetFieldEj.exit: ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !324 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !328
  %i.au = zext i32 %i.at to i64                   ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !332
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !333 ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 3
  %i.bd = icmp ugt i64 %i.bc, %i.au
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.au
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !435 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !78
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = tail call noundef i32 %i.bi(ptr noundef nonnull align 8 dereferenceable(9) %i.bf, i32 noundef %2) #28
  %.not = icmp eq i32 %i.bj, 1
  br i1 %.not, label %_ZN12lldb_private6curses18FormWindowDelegate13ExecuteActionERNS0_6WindowEi.exit, label %bb.m

bb.m:                                             ; preds = %_ZN12lldb_private6curses12FormDelegate8GetFieldEj.exit, %bb.l
  switch i32 %2, label %_ZN12lldb_private6curses18FormWindowDelegate13ExecuteActionERNS0_6WindowEi.exit [
    i32 258, label %bb.n
    i32 259, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.bk = tail call noundef i32 @_ZN12lldb_private6curses18FormWindowDelegate10SelectNextEi(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef 258) ; 0 uses
  br label %_ZN12lldb_private6curses18FormWindowDelegate13ExecuteActionERNS0_6WindowEi.exit

bb.o:                                             ; preds = %bb.m
  %i.bl = tail call noundef i32 @_ZN12lldb_private6curses18FormWindowDelegate14SelectPreviousEi(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef 259) ; 0 uses
  br label %_ZN12lldb_private6curses18FormWindowDelegate13ExecuteActionERNS0_6WindowEi.exit

_ZN12lldb_private6curses18FormWindowDelegate13ExecuteActionERNS0_6WindowEi.exit: ; preds = %bb.h, %_ZN12lldb_private6curses10FormAction7ExecuteERNS0_6WindowE.exit.i17, %bb.e, %_ZN12lldb_private6curses10FormAction7ExecuteERNS0_6WindowE.exit.i, %_ZN12lldb_private6curses12FormDelegate8GetFieldEj.exit, %bb.m, %bb.o, %bb.n, %bb.k, %bb.j, %bb.i
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12lldb_private6curses18FormWindowDelegate14DrawSubmitHintERNS0_7SurfaceEb(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !123
  %i.c = tail call noundef i32 @getmaxy(ptr noundef %i.b) #28
  %i.d = add nsw i32 %i.c, -1
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !123
  %i.f = tail call i32 @wmove(ptr noundef %i.e, i32 noundef %i.d, i32 noundef 2) #28 ; 0 uses
  br i1 %2, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !123
  %i.h = tail call i32 @wattr_on(ptr noundef %i.g, i32 noundef 2101504, ptr noundef null) #28 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !324
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !465
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !124
  tail call void (ptr, ptr, ...) @_ZN12lldb_private6curses7Surface6PrintfEPKcz(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.175, ptr noundef %i.m)
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !123
  %i.o = tail call i32 @wattr_off(ptr noundef %i.n, i32 noundef 2101504, ptr noundef null) #28 ; 0 uses
  br label %bb.c

.critedge:                                        ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !324
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !465
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !124
  tail call void (ptr, ptr, ...) @_ZN12lldb_private6curses7Surface6PrintfEPKcz(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.175, ptr noundef %i.t)
  br label %bb.c

bb.c:                                             ; preds = %.critedge, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12lldb_private6curses18FormWindowDelegate11DrawContentERNS0_7SurfaceE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %2 = alloca %"class.lldb_private::curses::Surface", align 8 ; 5 uses
  %3 = alloca %"class.lldb_private::curses::Surface", align 8 ; 5 uses
  tail call void @_ZN12lldb_private6curses18FormWindowDelegate15UpdateScrollingERNS0_7SurfaceE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !123
  %i.c = tail call noundef i32 @getmaxx(ptr noundef %i.b) #28 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !324  ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.g = load i64, ptr %i.f, align 8, !tbaa !85
  %.not.i.i = icmp eq i64 %i.g, 0
  %..i.i = select i1 %.not.i.i, i32 0, i32 2      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !332
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !333  ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 2 uses
  %i.o = lshr exact i64 %i.n, 3
  %i.p = trunc i64 %i.o to i32
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph.i, label %_ZN12lldb_private6curses18FormWindowDelegate16GetContentHeightEv.exit

.lr.ph.i:                                         ; preds = %bb.a, %_ZN12lldb_private6curses12FormDelegate8GetFieldEj.exit.thread.i
  %i.r = phi ptr [ %i.ag, %_ZN12lldb_private6curses12FormDelegate8GetFieldEj.exit.thread.i ], [ %i.e, %bb.a ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN12lldb_private6curses12FormDelegate8GetFieldEj.exit.thread.i ], [ 0, %bb.a ] ; 3 uses
  %i.s = phi i64 [ %i.an, %_ZN12lldb_private6curses12FormDelegate8GetFieldEj.exit.thread.i ], [ %i.n, %bb.a ]
  %i.t = phi ptr [ %i.ak, %_ZN12lldb_private6curses12FormDelegate8GetFieldEj.exit.thread.i ], [ %i.k, %bb.a ]
  %.0813.i = phi i32 [ %.1.i, %_ZN12lldb_private6curses12FormDelegate8GetFieldEj.exit.thread.i ], [ %..i.i, %bb.a ] ; 3 uses
  %i.u = ashr exact i64 %i.s, 3
  %i.v = icmp ugt i64 %i.u, %indvars.iv.i
  br i1 %i.v, label %_ZN12lldb_private6curses12FormDelegate8GetFieldEj.exit.i, label %_ZN12lldb_private6curses12FormDelegate8GetFieldEj.exit.thread.i

_ZN12lldb_private6curses12FormDelegate8GetFieldEj.exit.i: ; preds = %.lr.ph.i
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !435  ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i8, ptr %i.y, align 8, !tbaa !438, !range !305, !noundef !199
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %_ZN12lldb_private6curses12FormDelegate8GetFieldEj.exit11.i, label %_ZN12lldb_private6curses12FormDelegate8GetFieldEj.exit.thread.i

_ZN12lldb_private6curses12FormDelegate8GetFieldEj.exit11.i: ; preds = %_ZN12lldb_private6curses12FormDelegate8GetFieldEj.exit.i
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !78
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call noundef i32 %i.ad(ptr noundef nonnull align 8 dereferenceable(9) %i.x) #28, !inline_history !29
  %i.af = add nsw i32 %i.ae, %.0813.i
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !324
  br label %_ZN12lldb_private6curses12FormDelegate8GetFieldEj.exit.thread.i

_ZN12lldb_private6curses12FormDelegate8GetFieldEj.exit.thread.i: ; preds = %.lr.ph.i, %_ZN12lldb_private6curses12FormDelegate8GetFieldEj.exit11.i, %_ZN12lldb_private6curses12FormDelegate8GetFieldEj.exit.i
  %i.ag = phi ptr [ %.pre.i, %_ZN12lldb_private6curses12FormDelegate8GetFieldEj.exit11.i ], [ %i.r, %_ZN12lldb_private6curses12FormDelegate8GetFieldEj.exit.i ], [ %i.r, %.lr.ph.i ] ; 4 uses
  %.1.i = phi i32 [ %i.af, %_ZN12lldb_private6curses12FormDelegate8GetFieldEj.exit11.i ], [ %.0813.i, %_ZN12lldb_private6curses12FormDelegate8GetFieldEj.exit.i ], [ %.0813.i, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !332
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !333 ; 2 uses
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am                    ; 2 uses
  %i.ao = shl i64 %i.an, 29
  %i.ap = ashr i64 %i.ao, 32
  %i.aq = icmp slt i64 %indvars.iv.next.i, %i.ap
  br i1 %i.aq, label %.lr.ph.i, label %_ZN12lldb_private6curses18FormWindowDelegate16GetContentHeightEv.exit, !llvm.loop !30

_ZN12lldb_private6curses18FormWindowDelegate16GetContentHeightEv.exit: ; preds = %_ZN12lldb_private6curses12FormDelegate8GetFieldEj.exit.thread.i, %bb.a
  %.08.lcssa.i = phi i32 [ %..i.i, %bb.a ], [ %.1.i, %_ZN12lldb_private6curses12FormDelegate8GetFieldEj.exit.thread.i ]
  %.lcssa.i = phi ptr [ %i.e, %bb.a ], [ %i.ag, %_ZN12lldb_private6curses12FormDelegate8GetFieldEj.exit.thread.i ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !445
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !465
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = lshr exact i64 %i.ax, 6
  %i.az = trunc i64 %i.ay to i32
  %i.ba = icmp sgt i32 %i.az, 0
  %..i9.i = zext i1 %i.ba to i32
  %i.bb = add nsw i32 %.08.lcssa.i, %..i9.i
  %i.bc = tail call ptr @newpad(i32 noundef %i.bb, i32 noundef %i.c) #28 ; 7 uses
  %i.bd = tail call noundef i32 @getmaxx(ptr noundef %i.bc) #28 ; 2 uses
  %i.be = tail call noundef i32 @getmaxy(ptr noundef %i.bc) #28 ; 3 uses
  %i.bf = load ptr, ptr %i.d, align 8, !tbaa !324
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !85
  %.not.i = icmp eq i64 %i.bh, 0
  %..i = select i1 %.not.i, i32 0, i32 2          ; 4 uses
  %i.bi = icmp slt i32 %..i, %i.be                ; 2 uses
  %.sroa.7.8.insert.ext = zext i32 %i.bd to i64
  %i.bj = sub nuw nsw i32 %i.be, %..i
  %.sroa.7.12.insert.ext = zext nneg i32 %i.bj to i64
  %.sroa.7.12.insert.shift = shl nuw nsw i64 %.sroa.7.12.insert.ext, 32
  %.sroa.7.12.insert.insert = or disjoint i64 %.sroa.7.12.insert.shift, %.sroa.7.8.insert.ext
  %.sroa.7.0 = select i1 %i.bi, i64 %.sroa.7.12.insert.insert, i64 0 ; 2 uses
  %.sroa.035.sroa.6.0 = select i1 %i.bi, i32 %..i, i32 0
  %.sroa.5.12.insert.shift.pn.in.in = tail call i32 @llvm.smin.i32(i32 %..i, i32 %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.bk = tail call ptr @subpad(ptr noundef %i.bc, i32 noundef %.sroa.5.12.insert.shift.pn.in.in, i32 noundef %i.bd, i32 noundef 0, i32 noundef 0) #28
  store i32 1, ptr %2, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bk, ptr %i.bl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %.sroa.5.8.extract.trunc.i15 = trunc i64 %.sroa.7.0 to i32
  %.sroa.8.8.extract.shift.i16 = lshr i64 %.sroa.7.0, 32
  %.sroa.8.8.extract.trunc.i17 = trunc nuw nsw i64 %.sroa.8.8.extract.shift.i16 to i32
  %i.bm = tail call ptr @subpad(ptr noundef %i.bc, i32 noundef %.sroa.8.8.extract.trunc.i17, i32 noundef %.sroa.5.8.extract.trunc.i15, i32 noundef %.sroa.035.sroa.6.0, i32 noundef 0) #28
  store i32 1, ptr %3, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.bm, ptr %i.bn, align 8
  call void @_ZN12lldb_private6curses18FormWindowDelegate9DrawErrorERNS0_7SurfaceE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @_ZN12lldb_private6curses18FormWindowDelegate12DrawElementsERNS0_7SurfaceE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.bo = load ptr, ptr %i.a, align 8, !tbaa !123
  %i.bp = call noundef i32 @getmaxy(ptr noundef %i.bo) #28
  %i.bq = call noundef i32 @getmaxy(ptr noundef %i.bc) #28
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.bq, i32 %i.bp)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !329
  %i.bt = load ptr, ptr %i.a, align 8, !tbaa !123
  %i.bu = add i32 %.sroa.speculated, -1
  %i.bv = add i32 %i.c, -1
  %i.bw = call i32 @copywin(ptr noundef %i.bc, ptr noundef %i.bt, i32 noundef %i.bs, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %i.bu, i32 noundef %i.bv, i32 noundef 0) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.bx = call i32 @delwin(ptr noundef %i.bc) #28 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12lldb_private6curses18FormWindowDelegate15UpdateScrollingERNS0_7SurfaceE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = tail call i64 @_ZN12lldb_private6curses18FormWindowDelegate16GetScrollContextEv(ptr noundef nonnull align 8 dereferenceable(36) %0) ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.a to i32 ; 2 uses
  %.sroa.5.0.extract.shift = lshr i64 %i.a, 32
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !324  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load i64, ptr %i.d, align 8, !tbaa !85
  %.not.i.i = icmp eq i64 %i.e, 0
  %..i.i = select i1 %.not.i.i, i32 0, i32 2      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !332
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !333  ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = lshr exact i64 %i.l, 3
  %i.n = trunc i64 %i.m to i32
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph.i, label %_ZN12lldb_private6curses18FormWindowDelegate16GetContentHeightEv.exit

.lr.ph.i:                                         ; preds = %bb.a, %_ZN12lldb_private6curses12FormDelegate8GetFieldEj.exit.thread.i
  %i.p = phi ptr [ %i.ae, %_ZN12lldb_private6curses12FormDelegate8GetFieldEj.exit.thread.i ], [ %i.c, %bb.a ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN12lldb_private6curses12FormDelegate8GetFieldEj.exit.thread.i ], [ 0, %bb.a ] ; 3 uses
  %i.q = phi i64 [ %i.al, %_ZN12lldb_private6curses12FormDelegate8GetFieldEj.exit.thread.i ], [ %i.l, %bb.a ]
  %i.r = phi ptr [ %i.ai, %_ZN12lldb_private6curses12FormDelegate8GetFieldEj.exit.thread.i ], [ %i.i, %bb.a ]
  %.0813.i = phi i32 [ %.1.i, %_ZN12lldb_private6curses12FormDelegate8GetFieldEj.exit.thread.i ], [ %..i.i, %bb.a ] ; 3 uses
  %i.s = ashr exact i64 %i.q, 3
  %i.t = icmp ugt i64 %i.s, %indvars.iv.i
  br i1 %i.t, label %_ZN12lldb_private6curses12FormDelegate8GetFieldEj.exit.i, label %_ZN12lldb_private6curses12FormDelegate8GetFieldEj.exit.thread.i

_ZN12lldb_private6curses12FormDelegate8GetFieldEj.exit.i: ; preds = %.lr.ph.i
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !435  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i8, ptr %i.w, align 8, !tbaa !438, !range !305, !noundef !199
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %_ZN12lldb_private6curses12FormDelegate8GetFieldEj.exit11.i, label %_ZN12lldb_private6curses12FormDelegate8GetFieldEj.exit.thread.i

_ZN12lldb_private6curses12FormDelegate8GetFieldEj.exit11.i: ; preds = %_ZN12lldb_private6curses12FormDelegate8GetFieldEj.exit.i
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !78
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef i32 %i.ab(ptr noundef nonnull align 8 dereferenceable(9) %i.v) #28, !inline_history !29
  %i.ad = add nsw i32 %i.ac, %.0813.i
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !324
  br label %_ZN12lldb_private6curses12FormDelegate8GetFieldEj.exit.thread.i

_ZN12lldb_private6curses12FormDelegate8GetFieldEj.exit.thread.i: ; preds = %.lr.ph.i, %_ZN12lldb_private6curses12FormDelegate8GetFieldEj.exit11.i, %_ZN12lldb_private6curses12FormDelegate8GetFieldEj.exit.i
  %i.ae = phi ptr [ %.pre.i, %_ZN12lldb_private6curses12FormDelegate8GetFieldEj.exit11.i ], [ %i.p, %_ZN12lldb_private6curses12FormDelegate8GetFieldEj.exit.i ], [ %i.p, %.lr.ph.i ] ; 4 uses
  %.1.i = phi i32 [ %i.ad, %_ZN12lldb_private6curses12FormDelegate8GetFieldEj.exit11.i ], [ %.0813.i, %_ZN12lldb_private6curses12FormDelegate8GetFieldEj.exit.i ], [ %.0813.i, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !332
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !333 ; 2 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 2 uses
  %i.am = shl i64 %i.al, 29
  %i.an = ashr i64 %i.am, 32
  %i.ao = icmp slt i64 %indvars.iv.next.i, %i.an
  br i1 %i.ao, label %.lr.ph.i, label %_ZN12lldb_private6curses18FormWindowDelegate16GetContentHeightEv.exit, !llvm.loop !30

_ZN12lldb_private6curses18FormWindowDelegate16GetContentHeightEv.exit: ; preds = %_ZN12lldb_private6curses12FormDelegate8GetFieldEj.exit.thread.i, %bb.a
  %.08.lcssa.i = phi i32 [ %..i.i, %bb.a ], [ %.1.i, %_ZN12lldb_private6curses12FormDelegate8GetFieldEj.exit.thread.i ]
  %.lcssa.i = phi ptr [ %i.c, %bb.a ], [ %i.ae, %_ZN12lldb_private6curses12FormDelegate8GetFieldEj.exit.thread.i ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !445
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !465
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = lshr exact i64 %i.av, 6
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = icmp sgt i32 %i.ax, 0
  %..i9.i = zext i1 %i.ay to i32
  %i.az = add nsw i32 %.08.lcssa.i, %..i9.i       ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !123
  %i.bc = tail call noundef i32 @getmaxy(ptr noundef %i.bb) #28
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.bc, i32 %i.az) ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !329 ; 2 uses
  %i.bf = add nsw i32 %.sroa.speculated, %i.be    ; 2 uses
  %i.bg = icmp sgt i32 %i.bf, %i.az
  br i1 %i.bg, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN12lldb_private6curses18FormWindowDelegate16GetContentHeightEv.exit
  %i.bh = sub nsw i32 %i.az, %.sroa.speculated    ; 2 uses
  store i32 %i.bh, ptr %i.bd, align 8, !tbaa !329
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN12lldb_private6curses18FormWindowDelegate16GetContentHeightEv.exit
  %i.bi = phi i32 [ %i.bh, %bb.b ], [ %i.be, %_ZN12lldb_private6curses18FormWindowDelegate16GetContentHeightEv.exit ]
  %i.bj = icmp sgt i32 %i.bi, %.sroa.0.0.extract.trunc
  br i1 %i.bj, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not = icmp sgt i32 %i.bf, %.sroa.5.0.extract.trunc
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bk = add i32 %.sroa.5.0.extract.trunc, 1
  %i.bl = sub i32 %i.bk, %.sroa.speculated
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.e
  %.sink = phi i32 [ %i.bl, %bb.e ], [ %.sroa.0.0.extract.trunc, %bb.c ]
  store i32 %.sink, ptr %i.bd, align 8, !tbaa !329
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12lldb_private6curses18FormWindowDelegate9DrawErrorERNS0_7SurfaceE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !324
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load i64, ptr %i.c, align 8, !tbaa !85
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !123
  %i.g = tail call i32 @wmove(ptr noundef %i.f, i32 noundef 0, i32 noundef 0) #28 ; 0 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !123
  %i.i = tail call i32 @wattr_on(ptr noundef %i.h, i32 noundef 512, ptr noundef null) #28 ; 0 uses
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @acs_map, i64 384), align 4, !tbaa !119
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !123
  %i.l = tail call i32 @waddch(ptr noundef %i.k, i32 noundef %i.j) #28 ; 0 uses
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !123
  %i.n = tail call i32 @waddch(ptr noundef %i.m, i32 noundef 32) #28 ; 0 uses
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !324
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !124
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !123
  %i.s = tail call noundef i32 @getmaxx(ptr noundef %i.r) #28
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !123
  %i.u = tail call noundef i32 @getcurx(ptr noundef %i.t) #28
  %i.v = sub nsw i32 %i.s, %i.u                   ; 2 uses
  %i.w = icmp sgt i32 %i.v, 1
  br i1 %i.w, label %bb.c, label %_ZN12lldb_private6curses7Surface19PutCStringTruncatedEiPKci.exit

bb.c:                                             ; preds = %bb.b
  %i.x = add nsw i32 %i.v, -1
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !123
  %i.z = tail call i32 @waddnstr(ptr noundef %i.y, ptr noundef %i.q, i32 noundef %i.x) #28 ; 0 uses
  br label %_ZN12lldb_private6curses7Surface19PutCStringTruncatedEiPKci.exit

_ZN12lldb_private6curses7Surface19PutCStringTruncatedEiPKci.exit: ; preds = %bb.b, %bb.c
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !123
  %i.ab = tail call i32 @wattr_off(ptr noundef %i.aa, i32 noundef 512, ptr noundef null) #28 ; 0 uses
  %i.ac = load ptr, ptr %i.e, align 8, !tbaa !123
end_hunk_0

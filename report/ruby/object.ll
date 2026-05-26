inline.NumInlined: 440
inline.NumDeleted: 99
begin_hunk_0_@rb_obj_is_instance_of:bb.a
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %1 to ptr
  %i.f = load i64, ptr %i.e, align 8, !tbaa !28
  %i.g = trunc i64 %i.f to i32
  %i.h = and i32 %i.g, 31
  switch i32 %i.h, label %.thread.i [
    i32 3, label %class_or_module_required.exit
    i32 2, label %class_or_module_required.exit
    i32 28, label %class_or_module_required.exit
  ]

.thread.i:                                        ; preds = %bb.b, %bb.a
  %i.i = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.i, ptr noundef nonnull @.str.5) #22
  unreachable

class_or_module_required.exit:                    ; preds = %bb.b, %bb.b, %bb.b
  %i.j = icmp eq i64 %0, 0
  %i.k = and i64 %0, 7
  %i.l = icmp ne i64 %i.k, 0
  %i.m = or i1 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %class_or_module_required.exit
  %i.n = inttoptr i64 %0 to ptr
  %i.o = getelementptr i8, ptr %i.n, i64 8
  br label %rb_class_of.exit.i

bb.d:                                             ; preds = %class_or_module_required.exit
  switch i64 %0, label %bb.g [
    i64 0, label %rb_class_of.exit.i
    i64 4, label %bb.e
    i64 20, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  br label %rb_class_of.exit.i

bb.f:                                             ; preds = %bb.d
  br label %rb_class_of.exit.i

bb.g:                                             ; preds = %bb.d
  %i.p = trunc i64 %0 to i1
  br i1 %i.p, label %rb_class_of.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = and i64 %0, 254
  %i.r = icmp eq i64 %i.q, 12
  %spec.select.i.i = select i1 %i.r, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_class_of.exit.i

rb_class_of.exit.i:                               ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.0.in.i.i = phi ptr [ %i.o, %bb.c ], [ @rb_cNilClass, %bb.e ], [ @rb_cTrueClass, %bb.f ], [ @rb_cFalseClass, %bb.d ], [ @rb_cInteger, %bb.g ], [ %spec.select.i.i, %bb.h ]
  %.0.i.i = load i64, ptr %.0.in.i.i, align 8, !tbaa !11 ; 4 uses
  %.not.i = icmp eq i64 %.0.i.i, 0
  br i1 %.not.i, label %rb_obj_class.exit, label %bb.i

bb.i:                                             ; preds = %rb_class_of.exit.i
  %i.s = inttoptr i64 %.0.i.i to ptr
  %i.t = load i64, ptr %i.s, align 8, !tbaa !28
  %i.u = and i64 %i.t, 8220
  %.not3.i.i = icmp eq i64 %i.u, 0
  br i1 %.not3.i.i, label %rb_obj_class.exit, label %.lr.ph.i.i, !prof !29

.lr.ph.i.i:                                       ; preds = %bb.i, %.lr.ph.i.i
  %.04.i.i = phi i64 [ %i.x, %.lr.ph.i.i ], [ %.0.i.i, %bb.i ]
  %i.v = tail call fastcc ptr @RCLASS_EXT_READABLE(i64 noundef %.04.i.i)
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !30   ; 3 uses
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load i64, ptr %i.y, align 8, !tbaa !28
  %i.aa = and i64 %i.z, 8220
  %.not.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i, label %rb_obj_class.exit, label %.lr.ph.i.i, !prof !31, !llvm.loop !32

rb_obj_class.exit:                                ; preds = %.lr.ph.i.i, %rb_class_of.exit.i, %bb.i
  %.0.i = phi i64 [ 0, %rb_class_of.exit.i ], [ %.0.i.i, %bb.i ], [ %i.x, %.lr.ph.i.i ]
  %i.ab = icmp eq i64 %.0.i, %1
  %i.ac = select i1 %i.ab, i64 20, i64 0
  ret i64 %i.ac
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i64 0, 21) i64 @rb_obj_is_kind_of(i64 noundef %0, i64 noundef %1) #2 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr
  %i.f = getelementptr i8, ptr %i.e, i64 8
  br label %rb_class_of.exit

bb.c:                                             ; preds = %bb.a
  switch i64 %0, label %bb.f [
    i64 0, label %rb_class_of.exit
    i64 4, label %bb.d
    i64 20, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  br label %rb_class_of.exit

bb.e:                                             ; preds = %bb.c
  br label %rb_class_of.exit

bb.f:                                             ; preds = %bb.c
  %i.g = trunc i64 %0 to i1
  br i1 %i.g, label %rb_class_of.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = and i64 %0, 254
  %i.i = icmp eq i64 %i.h, 12
  %spec.select.i = select i1 %i.i, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_class_of.exit

rb_class_of.exit:                                 ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.in.i = phi ptr [ %i.f, %bb.b ], [ @rb_cNilClass, %bb.d ], [ @rb_cTrueClass, %bb.e ], [ @rb_cFalseClass, %bb.c ], [ @rb_cInteger, %bb.f ], [ %spec.select.i, %bb.g ]
  %.0.i30 = load i64, ptr %.0.in.i, align 8, !tbaa !11 ; 6 uses
  %i.j = icmp eq i64 %.0.i30, %1
  br i1 %i.j, label %class_search_class_ancestor.exit, label %bb.h

bb.h:                                             ; preds = %rb_class_of.exit
  %i.k = icmp eq i64 %1, 0
  %i.l = and i64 %1, 7
  %i.m = icmp ne i64 %i.l, 0
  %i.n = or i1 %i.k, %i.m
  br i1 %i.n, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit29, !prof !47

rbimpl_RB_TYPE_P_fastpath.exit29:                 ; preds = %bb.h
  %i.o = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !28
  %i.q = and i64 %i.p, 31
  switch i64 %i.q, label %rbimpl_RB_TYPE_P_fastpath.exit.thread [
    i64 2, label %bb.i
    i64 28, label %bb.k
    i64 3, label %bb.o
  ], !prof !55

bb.i:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit29
  %i.r = getelementptr i8, ptr %i.o, i64 146
  %i.s = load i16, ptr %i.r, align 2, !tbaa !56   ; 2 uses
  %i.t = inttoptr i64 %.0.i30 to ptr              ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 146
  %i.v = load i16, ptr %i.u, align 2, !tbaa !56
  %.not.i = icmp ugt i16 %i.v, %i.s
  br i1 %.not.i, label %bb.j, label %class_search_class_ancestor.exit

bb.j:                                             ; preds = %bb.i
  %i.w = zext i16 %i.s to i64
  %i.x = getelementptr i8, ptr %i.t, i64 88
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !57
  %i.z = getelementptr [8 x i8], ptr %i.y, i64 %i.w
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !11
  %i.ab = icmp eq i64 %i.aa, %1
  %i.ac = select i1 %i.ab, i64 20, i64 0
  br label %class_search_class_ancestor.exit

bb.k:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit29
  %i.ad = getelementptr i8, ptr %i.o, i64 136
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !34 ; 5 uses
  %i.af = icmp eq i64 %.0.i30, %i.ae
  br i1 %i.af, label %class_search_class_ancestor.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = icmp eq i64 %i.ae, 0
  %i.ah = and i64 %i.ae, 7
  %i.ai = icmp ne i64 %i.ah, 0
  %i.aj = or i1 %i.ag, %i.ai
  br i1 %i.aj, label %rbimpl_RB_TYPE_P_fastpath.exit25.thread, label %rbimpl_RB_TYPE_P_fastpath.exit25

rbimpl_RB_TYPE_P_fastpath.exit25:                 ; preds = %bb.l
  %i.ak = inttoptr i64 %i.ae to ptr               ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !28
  %i.am = and i64 %i.al, 31
  %i.an = icmp eq i64 %i.am, 2
  br i1 %i.an, label %bb.m, label %rbimpl_RB_TYPE_P_fastpath.exit25.thread

bb.m:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit25
  %i.ao = getelementptr i8, ptr %i.ak, i64 146
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !56 ; 2 uses
  %i.aq = inttoptr i64 %.0.i30 to ptr             ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 146
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !56
  %.not.i32 = icmp ugt i16 %i.as, %i.ap
  br i1 %.not.i32, label %bb.n, label %rbimpl_RB_TYPE_P_fastpath.exit25.thread

bb.n:                                             ; preds = %bb.m
  %i.at = zext i16 %i.ap to i64
  %i.au = getelementptr i8, ptr %i.aq, i64 88
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !57
  %i.aw = getelementptr [8 x i8], ptr %i.av, i64 %i.at
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !11
  %i.ay = icmp eq i64 %i.ax, %i.ae
  %cond.fr = freeze i1 %i.ay
  br i1 %cond.fr, label %class_search_class_ancestor.exit, label %rbimpl_RB_TYPE_P_fastpath.exit25.thread

rbimpl_RB_TYPE_P_fastpath.exit25.thread:          ; preds = %bb.m, %bb.n, %bb.l, %rbimpl_RB_TYPE_P_fastpath.exit25
  %i.az = tail call fastcc ptr @RCLASS_EXT_READABLE(i64 noundef %1)
  %i.ba = getelementptr i8, ptr %i.az, i64 96
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !58
  %i.bc = tail call fastcc i64 @class_search_ancestor(i64 noundef %.0.i30, i64 noundef %i.bb)
  %.not23 = icmp eq i64 %i.bc, 0
  %i.bd = select i1 %.not23, i64 0, i64 20
  br label %class_search_class_ancestor.exit

bb.o:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit29
  %i.be = tail call fastcc ptr @RCLASS_EXT_READABLE(i64 noundef %1)
  %i.bf = getelementptr i8, ptr %i.be, i64 96
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !58
  %i.bh = tail call fastcc i64 @class_search_ancestor(i64 noundef %.0.i30, i64 noundef %i.bg)
  %.not = icmp eq i64 %i.bh, 0
  %i.bi = select i1 %.not, i64 0, i64 20
  br label %class_search_class_ancestor.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit29, %bb.h
  %i.bj = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bj, ptr noundef nonnull @.str.5) #22
  unreachable

class_search_class_ancestor.exit:                 ; preds = %bb.n, %bb.j, %bb.i, %rbimpl_RB_TYPE_P_fastpath.exit25.thread, %bb.k, %rb_class_of.exit, %bb.o
  %.1 = phi i64 [ %i.bi, %bb.o ], [ 0, %bb.i ], [ 20, %rb_class_of.exit ], [ %i.bd, %rbimpl_RB_TYPE_P_fastpath.exit25.thread ], [ 20, %bb.k ], [ %i.ac, %bb.j ], [ 20, %bb.n ]
  ret i64 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @class_search_ancestor(i64 noundef %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %.not50 = icmp eq i64 %0, 0
  %i.d = icmp eq i64 %0, %1
  %or.cond51 = or i1 %.not50, %i.d
  br i1 %or.cond51, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = inttoptr i64 %1 to ptr                   ; 4 uses
  %i.f = getelementptr i8, ptr %i.e, i64 160      ; 2 uses
  %i.g = getelementptr i8, ptr %i.e, i64 24       ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %RCLASS_EXT_READABLE.exit49
  %.0852 = phi i64 [ %0, %.lr.ph ], [ %i.br, %RCLASS_EXT_READABLE.exit49 ] ; 2 uses
  %i.h = inttoptr i64 %.0852 to ptr               ; 14 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !28
  %i.j = and i64 %i.i, 65536
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i:          ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.h, i64 160      ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !59
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %bb.c

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i:   ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i, %bb.b
  %i.n = getelementptr i8, ptr %i.h, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.c:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i
  %i.o = call ptr @rb_current_box() #21           ; 3 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %.split.i, label %bb.d

.split.i:                                         ; preds = %bb.c
  %i.p = getelementptr i8, ptr %i.h, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %i.o, i64 128
  %i.r = load i8, ptr %i.q, align 8, !tbaa !62, !range !64, !noundef !65
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %.split7.i, label %bb.g

.split7.i:                                        ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.t = load i64, ptr %i.h, align 8, !tbaa !28
  %i.u = and i64 %i.t, 65536
  %.not.i.i.i10.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i.i10.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i

RCLASS_CLASSEXT_TBL.exit.i.i11.i:                 ; preds = %.split7.i
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !59   ; 2 uses
  %.not.i.i12.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i12.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.e

bb.e:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i
  %i.w = load i64, ptr %i.o, align 8, !tbaa !66
  %i.x = call i32 @rb_st_lookup(ptr noundef nonnull %i.v, i64 noundef %i.w, ptr noundef nonnull %i.c) #21
  %.not5.i.i13.i = icmp eq i32 %i.x, 0
  br i1 %.not5.i.i13.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = load i64, ptr %i.c, align 8, !tbaa !11
  %i.z = inttoptr i64 %i.y to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i

RCLASS_EXT_READABLE_LOOKUP.exit17.i:              ; preds = %bb.f, %bb.e, %RCLASS_CLASSEXT_TBL.exit.i.i11.i, %.split7.i
  %.0.i.i14.i = phi ptr [ %i.z, %bb.f ], [ null, %bb.e ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i ], [ null, %.split7.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  %.not.i15.i = icmp eq ptr %.0.i.i14.i, null
  %i.aa = getelementptr i8, ptr %i.h, i64 24
  %.0.i16.i = select i1 %.not.i15.i, ptr %i.aa, ptr %.0.i.i14.i
  br label %RCLASS_EXT_READABLE.exit

bb.g:                                             ; preds = %bb.d
  %i.ab = getelementptr i8, ptr %i.h, i64 24
  br label %RCLASS_EXT_READABLE.exit

RCLASS_EXT_READABLE.exit:                         ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, %.split.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i, %bb.g
  %.0.i = phi ptr [ %i.n, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i ], [ %i.ab, %bb.g ], [ %i.p, %.split.i ], [ %.0.i16.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i ]
  %i.ac = getelementptr i8, ptr %.0.i, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !67
  %i.ae = load i64, ptr %i.e, align 8, !tbaa !28
  %i.af = and i64 %i.ae, 65536
  %.not.i.i10 = icmp eq i64 %i.af, 0
  br i1 %.not.i.i10, label %RCLASS_EXT_READABLE.exit29, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i11

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i11:        ; preds = %RCLASS_EXT_READABLE.exit
  %i.ag = load ptr, ptr %i.f, align 8, !tbaa !59
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %RCLASS_EXT_READABLE.exit29, label %bb.h

bb.h:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i11
  %i.ai = call ptr @rb_current_box() #21          ; 3 uses
  %.not.i12 = icmp eq ptr %i.ai, null
  br i1 %.not.i12, label %RCLASS_EXT_READABLE.exit29, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr i8, ptr %i.ai, i64 128
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !62, !range !64, !noundef !65
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %.split7.i14, label %RCLASS_EXT_READABLE.exit29

.split7.i14:                                      ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.am = load i64, ptr %i.e, align 8, !tbaa !28
  %i.an = and i64 %i.am, 65536
  %.not.i.i.i10.i15 = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i10.i15, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i19, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i16

RCLASS_CLASSEXT_TBL.exit.i.i11.i16:               ; preds = %.split7.i14
  %i.ao = load ptr, ptr %i.f, align 8, !tbaa !59  ; 2 uses
  %.not.i.i12.i17 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i12.i17, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i19, label %bb.j

bb.j:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i16
  %i.ap = load i64, ptr %i.ai, align 8, !tbaa !66
  %i.aq = call i32 @rb_st_lookup(ptr noundef nonnull %i.ao, i64 noundef %i.ap, ptr noundef nonnull %i.b) #21
  %.not5.i.i13.i18 = icmp eq i32 %i.aq, 0
  br i1 %.not5.i.i13.i18, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i19, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = load i64, ptr %i.b, align 8, !tbaa !11
  %i.as = inttoptr i64 %i.ar to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i19

RCLASS_EXT_READABLE_LOOKUP.exit17.i19:            ; preds = %bb.k, %bb.j, %RCLASS_CLASSEXT_TBL.exit.i.i11.i16, %.split7.i14
  %.0.i.i14.i20 = phi ptr [ %i.as, %bb.k ], [ null, %bb.j ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i16 ], [ null, %.split7.i14 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %.not.i15.i21 = icmp eq ptr %.0.i.i14.i20, null
  %.0.i16.i22 = select i1 %.not.i15.i21, ptr %i.g, ptr %.0.i.i14.i20
  br label %RCLASS_EXT_READABLE.exit29

RCLASS_EXT_READABLE.exit29:                       ; preds = %bb.h, %bb.i, %RCLASS_EXT_READABLE.exit, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i11, %RCLASS_EXT_READABLE_LOOKUP.exit17.i19
  %.0.i13 = phi ptr [ %.0.i16.i22, %RCLASS_EXT_READABLE_LOOKUP.exit17.i19 ], [ %i.g, %bb.i ], [ %i.g, %RCLASS_EXT_READABLE.exit ], [ %i.g, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i11 ], [ %i.g, %bb.h ]
  %i.at = getelementptr i8, ptr %.0.i13, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !67
  %i.av = icmp eq ptr %i.ad, %i.au
  br i1 %i.av, label %._crit_edge, label %bb.l

bb.l:                                             ; preds = %RCLASS_EXT_READABLE.exit29
  %i.aw = load i64, ptr %i.h, align 8, !tbaa !28
  %i.ax = and i64 %i.aw, 65536
  %.not.i.i30 = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i30, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i48, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i31

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i31:        ; preds = %bb.l
  %i.ay = getelementptr i8, ptr %i.h, i64 160     ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !59
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i48, label %bb.m

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i48: ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i31, %bb.l
  %i.bb = getelementptr i8, ptr %i.h, i64 24
  br label %RCLASS_EXT_READABLE.exit49

bb.m:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i31
  %i.bc = call ptr @rb_current_box() #21          ; 3 uses
  %.not.i32 = icmp eq ptr %i.bc, null
  br i1 %.not.i32, label %.split.i43, label %bb.n

.split.i43:                                       ; preds = %bb.m
  %i.bd = getelementptr i8, ptr %i.h, i64 24
  br label %RCLASS_EXT_READABLE.exit49
end_hunk_0
begin_hunk_1_@InitVM_Object:bb.a
  tail call void @rb_define_method(i64 noundef %i.dn, ptr noundef nonnull @.str.114, ptr noundef nonnull @rb_mod_singleton_p, i32 noundef 0) #21
  %i.do = load i64, ptr @rb_cClass, align 8, !tbaa !11
  %i.dp = tail call i64 @rb_singleton_class(i64 noundef %i.do) #21
  tail call void @rb_define_method(i64 noundef %i.dp, ptr noundef nonnull @.str.93, ptr noundef nonnull @rb_class_alloc, i32 noundef 0) #21
  %i.dq = load i64, ptr @rb_cClass, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.dq, ptr noundef nonnull @.str.93, ptr noundef nonnull @rb_class_alloc, i32 noundef 0) #21
  %i.dr = load i64, ptr @rb_cClass, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.dr, ptr noundef nonnull @.str.80, ptr noundef nonnull @rb_class_new_instance_pass_kw, i32 noundef -1) #21
  %i.ds = load i64, ptr @rb_cClass, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.ds, ptr noundef nonnull @.str.23, ptr noundef nonnull @rb_class_initialize, i32 noundef -1) #21
  %i.dt = load i64, ptr @rb_cClass, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.dt, ptr noundef nonnull @.str.115, ptr noundef nonnull @rb_class_superclass, i32 noundef 0) #21
  %i.du = load i64, ptr @rb_cClass, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.du, ptr noundef nonnull @.str.116, ptr noundef nonnull @rb_class_subclasses, i32 noundef 0) #21
  %i.dv = load i64, ptr @rb_cClass, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.dv, ptr noundef nonnull @.str.117, ptr noundef nonnull @rb_class_attached_object, i32 noundef 0) #21
  %i.dw = load i64, ptr @rb_cClass, align 8, !tbaa !11
  tail call void @rb_define_alloc_func(i64 noundef %i.dw, ptr noundef nonnull @rb_class_s_alloc) #21
  %i.dx = load i64, ptr @rb_cClass, align 8, !tbaa !11
  tail call void @rb_undef_method(i64 noundef %i.dx, ptr noundef nonnull @.str.118) #21
  %i.dy = load i64, ptr @rb_cClass, align 8, !tbaa !11
  tail call void @rb_undef_method(i64 noundef %i.dy, ptr noundef nonnull @.str.119) #21
  %i.dz = load i64, ptr @rb_cClass, align 8, !tbaa !11
  tail call void @rb_undef_method(i64 noundef %i.dz, ptr noundef nonnull @.str.120) #21
  %i.ea = load i64, ptr @rb_cObject, align 8, !tbaa !11
  %i.eb = tail call i64 @rb_define_class(ptr noundef nonnull @.str.121, i64 noundef %i.ea) #21
  store i64 %i.eb, ptr @rb_cTrueClass, align 8, !tbaa !11
  %i.ec = tail call nonnull ptr @rb_usascii_encoding() #21
  %i.ed = tail call i64 @rb_fstring_enc_new(ptr noundef nonnull @.str.122, i64 noundef 4, ptr noundef nonnull %i.ec) #21 ; 2 uses
  store i64 %i.ed, ptr @rb_cTrueClass_to_s, align 8, !tbaa !11
  tail call void @rb_vm_register_global_object(i64 noundef %i.ed) #21
  %i.ee = load i64, ptr @rb_cTrueClass, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.ee, ptr noundef nonnull @.str.52, ptr noundef nonnull @rb_true_to_s, i32 noundef 0) #21
  %i.ef = load i64, ptr @rb_cTrueClass, align 8, !tbaa !11
  tail call void @rb_define_alias(i64 noundef %i.ef, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.52) #21
  %i.eg = load i64, ptr @rb_cTrueClass, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.eg, ptr noundef nonnull @.str.77, ptr noundef nonnull @true_and, i32 noundef 1) #21
  %i.eh = load i64, ptr @rb_cTrueClass, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.eh, ptr noundef nonnull @.str.78, ptr noundef nonnull @true_or, i32 noundef 1) #21
  %i.ei = load i64, ptr @rb_cTrueClass, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.ei, ptr noundef nonnull @.str.79, ptr noundef nonnull @true_xor, i32 noundef 1) #21
  %i.ej = load i64, ptr @rb_cTrueClass, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.ej, ptr noundef nonnull @.str.41, ptr noundef nonnull @rb_equal, i32 noundef 1) #21
  %i.ek = load i64, ptr @rb_cTrueClass, align 8, !tbaa !11
  tail call void @rb_undef_alloc_func(i64 noundef %i.ek) #21
  %i.el = load i64, ptr @rb_cTrueClass, align 8, !tbaa !11 ; 6 uses
  %i.em = icmp eq i64 %i.el, 0
  %i.en = and i64 %i.el, 7
  %i.eo = icmp ne i64 %i.en, 0
  %i.ep = or i1 %i.em, %i.eo
  br i1 %i.ep, label %bb.i, label %bb.h

bb.h:                                             ; preds = %rb_class_of.exit
  %i.eq = inttoptr i64 %i.el to ptr
  %i.er = getelementptr i8, ptr %i.eq, i64 8
  br label %rb_class_of.exit4

bb.i:                                             ; preds = %rb_class_of.exit
  switch i64 %i.el, label %bb.l [
    i64 0, label %rb_class_of.exit4
    i64 4, label %bb.j
    i64 20, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  br label %rb_class_of.exit4

bb.k:                                             ; preds = %bb.i
  br label %rb_class_of.exit4

bb.l:                                             ; preds = %bb.i
  %i.es = trunc i64 %i.el to i1
  br i1 %i.es, label %rb_class_of.exit4, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.et = and i64 %i.el, 254
  %i.eu = icmp eq i64 %i.et, 12
  %spec.select.i3 = select i1 %i.eu, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_class_of.exit4

rb_class_of.exit4:                                ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m
  %.0.in.i1 = phi ptr [ %i.er, %bb.h ], [ @rb_cNilClass, %bb.j ], [ @rb_cTrueClass, %bb.k ], [ @rb_cFalseClass, %bb.i ], [ @rb_cInteger, %bb.l ], [ %spec.select.i3, %bb.m ]
  %.0.i2 = load i64, ptr %.0.in.i1, align 8, !tbaa !11
  tail call void @rb_undef_method(i64 noundef %.0.i2, ptr noundef nonnull @.str.80) #21
  %i.ev = load i64, ptr @rb_cObject, align 8, !tbaa !11
  %i.ew = tail call i64 @rb_define_class(ptr noundef nonnull @.str.123, i64 noundef %i.ev) #21
  store i64 %i.ew, ptr @rb_cFalseClass, align 8, !tbaa !11
  %i.ex = tail call nonnull ptr @rb_usascii_encoding() #21
  %i.ey = tail call i64 @rb_fstring_enc_new(ptr noundef nonnull @.str.124, i64 noundef 5, ptr noundef nonnull %i.ex) #21 ; 2 uses
  store i64 %i.ey, ptr @rb_cFalseClass_to_s, align 8, !tbaa !11
  tail call void @rb_vm_register_global_object(i64 noundef %i.ey) #21
  %i.ez = load i64, ptr @rb_cFalseClass, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.ez, ptr noundef nonnull @.str.52, ptr noundef nonnull @rb_false_to_s, i32 noundef 0) #21
  %i.fa = load i64, ptr @rb_cFalseClass, align 8, !tbaa !11
  tail call void @rb_define_alias(i64 noundef %i.fa, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.52) #21
  %i.fb = load i64, ptr @rb_cFalseClass, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.fb, ptr noundef nonnull @.str.77, ptr noundef nonnull @false_and, i32 noundef 1) #21
  %i.fc = load i64, ptr @rb_cFalseClass, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.fc, ptr noundef nonnull @.str.78, ptr noundef nonnull @true_and, i32 noundef 1) #21
  %i.fd = load i64, ptr @rb_cFalseClass, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.fd, ptr noundef nonnull @.str.79, ptr noundef nonnull @true_and, i32 noundef 1) #21
  %i.fe = load i64, ptr @rb_cFalseClass, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.fe, ptr noundef nonnull @.str.41, ptr noundef nonnull @rb_equal, i32 noundef 1) #21
  %i.ff = load i64, ptr @rb_cFalseClass, align 8, !tbaa !11
  tail call void @rb_undef_alloc_func(i64 noundef %i.ff) #21
  %i.fg = load i64, ptr @rb_cFalseClass, align 8, !tbaa !11 ; 6 uses
  %i.fh = icmp eq i64 %i.fg, 0
  %i.fi = and i64 %i.fg, 7
  %i.fj = icmp ne i64 %i.fi, 0
  %i.fk = or i1 %i.fh, %i.fj
  br i1 %i.fk, label %bb.o, label %bb.n

bb.n:                                             ; preds = %rb_class_of.exit4
  %i.fl = inttoptr i64 %i.fg to ptr
  %i.fm = getelementptr i8, ptr %i.fl, i64 8
  br label %rb_class_of.exit8

bb.o:                                             ; preds = %rb_class_of.exit4
  switch i64 %i.fg, label %bb.r [
    i64 0, label %rb_class_of.exit8
    i64 4, label %bb.p
    i64 20, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  br label %rb_class_of.exit8

bb.q:                                             ; preds = %bb.o
  br label %rb_class_of.exit8

bb.r:                                             ; preds = %bb.o
  %i.fn = trunc i64 %i.fg to i1
  br i1 %i.fn, label %rb_class_of.exit8, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fo = and i64 %i.fg, 254
  %i.fp = icmp eq i64 %i.fo, 12
  %spec.select.i7 = select i1 %i.fp, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_class_of.exit8

rb_class_of.exit8:                                ; preds = %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s
  %.0.in.i5 = phi ptr [ %i.fm, %bb.n ], [ @rb_cNilClass, %bb.p ], [ @rb_cTrueClass, %bb.q ], [ @rb_cFalseClass, %bb.o ], [ @rb_cInteger, %bb.r ], [ %spec.select.i7, %bb.s ]
  %.0.i6 = load i64, ptr %.0.in.i5, align 8, !tbaa !11
  tail call void @rb_undef_method(i64 noundef %.0.i6, ptr noundef nonnull @.str.80) #21
  ret void
}

declare void @Init_class_hierarchy() local_unnamed_addr #4

declare extern_weak void @rb_define_private_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal noundef i64 @rb_obj_dummy0(i64 %0) #0 {
bb.a:
  ret i64 4
}

declare void @rb_define_alloc_func(i64 noundef, ptr noundef) local_unnamed_addr #4

declare extern_weak void @rb_define_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal noundef i64 @rb_obj_dummy1(i64 %0, i64 %1) #0 {
bb.a:
  ret i64 4
}

declare i64 @rb_define_module(ptr noundef) local_unnamed_addr #4

declare void @rb_include_module(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 21) i64 @rb_obj_not_match(i64 noundef %0, i64 noundef %1) #2 {
bb.a:
  %i.a = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %0, i64 noundef 143, i32 noundef 1, i64 noundef %1) #21
  %i.b = and i64 %i.a, -5
  %.not.i = icmp eq i64 %i.b, 0
  %i.c = select i1 %.not.i, i64 20, i64 0
  ret i64 %i.c
}

declare i64 @rb_obj_hash(i64 noundef) #4

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 1, 5) i64 @rb_obj_cmp(i64 noundef %0, i64 noundef %1) #2 {
bb.a:
  %i.a = icmp eq i64 %0, %1
  br i1 %i.a, label %rb_equal.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @rb_equal_opt(i64 noundef %0, i64 noundef %1) #21 ; 2 uses
  %i.c = icmp eq i64 %i.b, 36
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %0, i64 noundef 140, i32 noundef 1, i64 noundef %1) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi i64 [ %i.d, %bb.c ], [ %i.b, %bb.b ]
  %.0.i.fr = freeze i64 %.0.i
  %i.e = and i64 %.0.i.fr, -5
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %rb_equal.exit, label %rb_equal.exit.thread

rb_equal.exit.thread:                             ; preds = %bb.d, %bb.a
  br label %rb_equal.exit

rb_equal.exit:                                    ; preds = %bb.d, %rb_equal.exit.thread
  %i.f = phi i64 [ 1, %rb_equal.exit.thread ], [ 4, %bb.d ]
  ret i64 %i.f
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_obj_singleton_class(i64 noundef %0) #2 {
bb.a:
  %i.a = tail call i64 @rb_singleton_class(i64 noundef %0) #21
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal noundef i64 @rb_obj_itself(i64 noundef returned %0) #0 {
bb.a:
  ret i64 %0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_obj_init_clone(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef returned %2) #2 {
rb_scan_args_n_opt.exit:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = icmp sgt i32 %0, 0
  br i1 %i.b, label %bb.a, label %.thread

bb.a:                                             ; preds = %rb_scan_args_n_opt.exit
  %i.c = zext nneg i32 %0 to i64
  %i.d = getelementptr [8 x i8], ptr %1, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 -8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !11
  %i.g = tail call i32 @rb_keyword_given_p() #21
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %.thread10, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i64 @rb_hash_dup(i64 noundef %i.f) #21
  %i.i = add nsw i32 %0, -1                       ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %.thread, label %.thread10

.thread10:                                        ; preds = %bb.a, %bb.b
  %.1.i14 = phi i32 [ %i.i, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %.188.i13 = phi i64 [ %i.h, %bb.b ], [ 4, %bb.a ]
  %i.k = load i64, ptr %1, align 8, !tbaa !11
  store i64 %.188.i13, ptr %i.a, align 8, !tbaa !11
  %i.l = icmp eq i32 %.1.i14, 1
  br i1 %i.l, label %rb_scan_args_set.exit, label %.thread

.thread:                                          ; preds = %rb_scan_args_n_opt.exit, %.thread10, %bb.b
  %.1.i6 = phi i32 [ 0, %bb.b ], [ %.1.i14, %.thread10 ], [ %0, %rb_scan_args_n_opt.exit ]
  tail call void @rb_error_arity(i32 noundef %.1.i6, i32 noundef 1, i32 noundef 1) #22
  unreachable

rb_scan_args_set.exit:                            ; preds = %.thread10
  %.not9 = icmp eq i32 %0, 1
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %rb_scan_args_set.exit
  %i.m = call i64 @rb_get_freeze_opt(i32 noundef 1, ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %rb_scan_args_set.exit
  %i.n = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %2, i64 noundef 3201, i32 noundef 1, i64 noundef %i.k) #21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i64 %2
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_obj_inspect(i64 noundef %0) #2 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 5 uses
  %i.b = load i64, ptr @id_instance_variables_to_inspect, align 8, !tbaa !11
  %i.c = tail call i64 @rb_check_funcall(i64 noundef %0, i64 noundef %i.b, i32 noundef 0, ptr noundef null) #21 ; 7 uses
  switch i64 %i.c, label %bb.c [
    i64 36, label %bb.b
    i64 4, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.d = tail call i64 @rb_ivar_count(i64 noundef %0) #21
  br label %rb_array_len.exit

bb.c:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.c, 0
  %i.f = and i64 %i.c, 7
  %i.g = icmp ne i64 %i.f, 0
  %i.h = or i1 %i.e, %i.g
  br i1 %i.h, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.c
  %i.i = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !28   ; 3 uses
  %i.k = and i64 %i.j, 31
  %i.l = icmp eq i64 %i.k, 7
  br i1 %i.l, label %bb.d, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.m = and i64 %i.j, 8192
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = lshr i64 %i.j, 15
  %i.o = and i64 %i.n, 127
  br label %rb_array_len.exit

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %i.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !34
  br label %rb_array_len.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.c, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.r = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  %i.s = tail call i64 @rb_obj_class(i64 noundef %i.c)
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.r, ptr noundef nonnull @.str.167, i64 noundef %i.s) #22
  unreachable

rb_array_len.exit:                                ; preds = %bb.f, %bb.e, %bb.b
  %.016 = phi i64 [ 4, %bb.b ], [ %i.c, %bb.e ], [ %i.c, %bb.f ]
  %.015 = phi i64 [ %i.d, %bb.b ], [ %i.o, %bb.e ], [ %i.q, %bb.f ]
  %.not = icmp eq i64 %.015, 0
  %i.t = icmp eq i64 %0, 0
  %i.u = and i64 %0, 7
  %i.v = icmp ne i64 %i.u, 0
  %i.w = or i1 %i.t, %i.v                         ; 2 uses
  br i1 %.not, label %bb.n, label %bb.g

bb.g:                                             ; preds = %rb_array_len.exit
  br i1 %i.w, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = inttoptr i64 %0 to ptr
  %i.y = getelementptr i8, ptr %i.x, i64 8
  br label %rb_class_of.exit

bb.i:                                             ; preds = %bb.g
  switch i64 %0, label %bb.l [
    i64 0, label %rb_class_of.exit
    i64 4, label %bb.j
    i64 20, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  br label %rb_class_of.exit

bb.k:                                             ; preds = %bb.i
  br label %rb_class_of.exit

bb.l:                                             ; preds = %bb.i
  %i.z = trunc i64 %0 to i1
  br i1 %i.z, label %rb_class_of.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = and i64 %0, 254
  %i.ab = icmp eq i64 %i.aa, 12
  %spec.select.i = select i1 %i.ab, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_class_of.exit

rb_class_of.exit:                                 ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m
  %.0.in.i = phi ptr [ %i.y, %bb.h ], [ @rb_cNilClass, %bb.j ], [ @rb_cTrueClass, %bb.k ], [ @rb_cFalseClass, %bb.i ], [ @rb_cInteger, %bb.l ], [ %spec.select.i, %bb.m ]
  %.0.i18 = load i64, ptr %.0.in.i, align 8, !tbaa !11
  %i.ac = tail call i64 @rb_class_name(i64 noundef %.0.i18) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.ad = inttoptr i64 %0 to ptr
  %i.ae = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.168, i64 noundef %i.ac, ptr noundef %i.ad) #21
  store i64 %i.ae, ptr %i.a, align 16, !tbaa !11
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.016, ptr %i.af, align 8, !tbaa !11
  %i.ag = ptrtoint ptr %i.a to i64
  %i.ah = call i64 @rb_exec_recursive(ptr noundef nonnull @inspect_obj, i64 noundef %0, i64 noundef %i.ag) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.u

bb.n:                                             ; preds = %rb_array_len.exit
  br i1 %i.w, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = inttoptr i64 %0 to ptr
  %i.aj = getelementptr i8, ptr %i.ai, i64 8
  br label %rb_any_to_s.exit

bb.p:                                             ; preds = %bb.n
  switch i64 %0, label %bb.s [
    i64 0, label %rb_any_to_s.exit
    i64 4, label %bb.q
    i64 20, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  br label %rb_any_to_s.exit

bb.r:                                             ; preds = %bb.p
  br label %rb_any_to_s.exit
end_hunk_1

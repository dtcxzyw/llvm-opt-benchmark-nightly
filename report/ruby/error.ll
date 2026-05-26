inline.NumInlined: 575
inline.NumDeleted: 105
begin_hunk_0_@__fprintf_chk
declare i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define hidden ptr @rb_builtin_type_name(i32 noundef %0) local_unnamed_addr #13 {
bb.a:
  %i.a = icmp ugt i32 %0, 28
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64                  ; 2 uses
  %i.c = shl nuw nsw i64 1, %i.b
  %i.d = and i64 %i.c, 58785793
  %.not.not = icmp eq i64 %i.d, 0
  %i.e = getelementptr [10 x i8], ptr @builtin_types, i64 %i.b
  %spec.select = select i1 %.not.not, ptr %i.e, ptr null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %spec.select, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden ptr @rb_builtin_class_name(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 4
  br i1 %i.a, label %builtin_class_name.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = trunc i64 %0 to i1
  br i1 %i.b, label %builtin_class_name.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = and i64 %0, 254
  %i.d = icmp eq i64 %i.c, 12
  br i1 %i.d, label %builtin_class_name.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = icmp eq i64 %0, 0
  %i.f = and i64 %0, 6
  %i.g = icmp ne i64 %i.f, 0
  %i.h = or i1 %i.e, %i.g
  br i1 %i.h, label %RB_SYMBOL_P.exit.thread5.i, label %RB_SYMBOL_P.exit.i

RB_SYMBOL_P.exit.i:                               ; preds = %bb.d
  %i.i = inttoptr i64 %0 to ptr
  %i.j = load i64, ptr %i.i, align 8, !tbaa !11
  %i.k = and i64 %i.j, 31
  %i.l = icmp eq i64 %i.k, 20
  br i1 %i.l, label %builtin_class_name.exit.thread, label %RB_SYMBOL_P.exit.thread5.i

RB_SYMBOL_P.exit.thread5.i:                       ; preds = %RB_SYMBOL_P.exit.i, %bb.d
  %i.m = icmp eq i64 %0, 20
  %.str.279.mux = select i1 %i.m, ptr @.str.279, ptr @.str.280 ; 2 uses
  switch i64 %0, label %bb.e [
    i64 20, label %builtin_class_name.exit.thread
    i64 0, label %builtin_class_name.exit.thread
  ]

bb.e:                                             ; preds = %RB_SYMBOL_P.exit.thread5.i
  %i.n = tail call ptr @rb_obj_classname(i64 noundef %0) #32
  br label %builtin_class_name.exit.thread

builtin_class_name.exit.thread:                   ; preds = %RB_SYMBOL_P.exit.thread5.i, %RB_SYMBOL_P.exit.thread5.i, %bb.c, %RB_SYMBOL_P.exit.i, %bb.b, %bb.a, %bb.e
  %.0 = phi ptr [ %.str.279.mux, %RB_SYMBOL_P.exit.thread5.i ], [ %i.n, %bb.e ], [ @.str.276, %bb.a ], [ @.str.278, %bb.c ], [ @.str.278, %RB_SYMBOL_P.exit.i ], [ @.str.277, %bb.b ], [ %.str.279.mux, %RB_SYMBOL_P.exit.thread5.i ]
  ret ptr %.0
}

declare ptr @rb_obj_classname(i64 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind optsize sspstrong uwtable
define dso_local void @rb_check_type(i64 noundef %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq i64 %0, 36
  br i1 %i.a, label %bb.b, label %bb.c, !prof !41

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @rb_bug(ptr noundef @.str.14) #35
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = inttoptr i64 %0 to ptr
  %i.g = load i64, ptr %i.f, align 8, !tbaa !11
  %i.h = trunc i64 %i.g to i32
  %i.i = and i32 %i.h, 31
  br label %rb_type.exit

bb.e:                                             ; preds = %bb.c
  %i.j = tail call i64 @llvm.fshl.i64(i64 %0, i64 %0, i64 62) ; 3 uses
  %i.k = icmp ult i64 %i.j, 10
  %switch.maskindex = trunc i64 %i.j to i16
  %switch.shifted = lshr i16 547, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.k, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = trunc i64 %0 to i1
  br i1 %i.l, label %rb_type.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = and i64 %0, 254
  %i.n = icmp eq i64 %i.m, 12
  %spec.select.i = select i1 %i.n, i32 20, i32 4
  br label %rb_type.exit

switch.lookup:                                    ; preds = %bb.e
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.rb_type, i64 %i.j
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %rb_type.exit

rb_type.exit:                                     ; preds = %switch.lookup, %bb.d, %bb.f, %bb.g
  %.0.i = phi i32 [ %i.i, %bb.d ], [ %spec.select.i, %bb.g ], [ 21, %bb.f ], [ %switch.load, %switch.lookup ] ; 2 uses
  %.not = icmp eq i32 %.0.i, %1
  br i1 %.not, label %bb.h, label %.split

.split:                                           ; preds = %rb_type.exit
  tail call fastcc void @unexpected_type(i64 noundef %0, i32 noundef %.0.i, i32 noundef %1) #35
  unreachable

bb.h:                                             ; preds = %rb_type.exit
  %i.o = icmp eq i32 %1, 12
  br i1 %i.o, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.p = inttoptr i64 %0 to ptr
  %i.q = load i64, ptr %i.p, align 8, !tbaa !11
  %i.r = and i64 %i.q, 64
  %.not12 = icmp eq i64 %i.r, 0
  br i1 %.not12, label %bb.j, label %.split9

.split9:                                          ; preds = %bb.i
  tail call fastcc void @unexpected_type(i64 noundef %0, i32 noundef 12, i32 noundef 12) #35
  unreachable

bb.j:                                             ; preds = %bb.i, %bb.h
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 32) i32 @rb_type(i64 noundef %0) unnamed_addr #20 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr
  %i.f = load i64, ptr %i.e, align 8, !tbaa !11
  %i.g = trunc i64 %i.f to i32
  %i.h = and i32 %i.g, 31
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.i = tail call i64 @llvm.fshl.i64(i64 %0, i64 %0, i64 62) ; 3 uses
  %i.j = icmp ult i64 %i.i, 10
  %switch.maskindex = trunc i64 %i.i to i16
  %switch.shifted = lshr i16 547, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.j, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = trunc i64 %0 to i1
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = and i64 %0, 254
  %i.m = icmp eq i64 %i.l, 12
  %spec.select = select i1 %i.m, i32 20, i32 4
  br label %bb.f

switch.lookup:                                    ; preds = %bb.c
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.rb_type, i64 %i.i
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.f

bb.f:                                             ; preds = %switch.lookup, %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ %i.h, %bb.b ], [ %spec.select, %bb.e ], [ 21, %bb.d ], [ %switch.load, %switch.lookup ]
  ret i32 %.0
}

; Function Attrs: cold noreturn nounwind optsize sspstrong uwtable
define internal fastcc void @unexpected_type(i64 noundef %0, i32 noundef range(i32 0, 32) %1, i32 noundef %2) unnamed_addr #10 {
bb.a:
  %i.a = icmp ugt i32 %2, 28
  br i1 %i.a, label %rb_builtin_type_name.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %2 to i64                  ; 2 uses
  %i.c = shl nuw nsw i64 1, %i.b
  %i.d = and i64 %i.c, 58785793
  %.not.not.i = icmp ne i64 %i.d, 0
  %i.e = getelementptr [10 x i8], ptr @builtin_types, i64 %i.b ; 2 uses
  %.not = icmp eq ptr %i.e, null
  %or.cond = or i1 %.not, %.not.not.i
  br i1 %or.cond, label %rb_builtin_type_name.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call fastcc i64 @displaying_class_of(i64 noundef %0)
  %i.g = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.15, i64 noundef %i.f, ptr noundef nonnull %i.e) #32
  %i.h = load i64, ptr @rb_eTypeError, align 8, !tbaa !15
  br label %bb.d

rb_builtin_type_name.exit.thread:                 ; preds = %bb.b, %bb.a
  %i.i = load i64, ptr @rb_eFatal, align 8, !tbaa !15
  %i.j = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.282, i32 noundef %2, i32 noundef %1) #32
  br label %bb.d

bb.d:                                             ; preds = %rb_builtin_type_name.exit.thread, %bb.c
  %.012 = phi i64 [ %i.g, %bb.c ], [ %i.j, %rb_builtin_type_name.exit.thread ]
  %.0 = phi i64 [ %i.h, %bb.c ], [ %i.i, %rb_builtin_type_name.exit.thread ]
  %i.k = tail call i64 @rb_exc_new_str(i64 noundef %.0, i64 noundef %.012)
  tail call void @rb_exc_raise(i64 noundef %i.k) #36
  unreachable
}

; Function Attrs: cold noreturn nounwind optsize sspstrong uwtable
define dso_local void @rb_unexpected_type(i64 noundef %0, i32 noundef %1) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp eq i64 %0, 36
  br i1 %i.a, label %bb.b, label %bb.c, !prof !41

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @rb_bug(ptr noundef @.str.14) #35
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = tail call fastcc i32 @rb_type(i64 noundef %0) #34
  tail call fastcc void @unexpected_type(i64 noundef %0, i32 noundef %i.b, i32 noundef %1) #35
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @rb_typeddata_inherited_p(ptr noundef readonly captures(address) %0, ptr noundef readnone captures(address) %1) local_unnamed_addr #21 {
bb.a:
  %.not5 = icmp eq ptr %0, null
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.046 = phi ptr [ %i.c, %bb.b ], [ %0, %bb.a ]  ; 2 uses
  %i.a = icmp eq ptr %.046, %1
  br i1 %i.a, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.b = getelementptr i8, ptr %.046, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !46

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %.lr.ph ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @rb_typeddata_is_kind_of(i64 noundef %0, ptr noundef readnone captures(address) %1) local_unnamed_addr #21 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %rb_typeddata_inherited_p.exit, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !11
  %i.g = and i64 %i.f, 95
  %or.cond.not = icmp eq i64 %i.g, 76
  br i1 %or.cond.not, label %bb.b, label %rb_typeddata_inherited_p.exit

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !47
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %.not5.i = icmp eq i64 %i.j, 0
  br i1 %.not5.i, label %rb_typeddata_inherited_p.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.k = inttoptr i64 %i.j to ptr
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.c
  %.046.i = phi ptr [ %i.n, %bb.c ], [ %i.k, %.lr.ph.i.preheader ] ; 2 uses
  %i.l = icmp eq ptr %.046.i, %1
  br i1 %i.l, label %rb_typeddata_inherited_p.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.m = getelementptr i8, ptr %.046.i, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !42   ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %rb_typeddata_inherited_p.exit, label %.lr.ph.i, !llvm.loop !46

rb_typeddata_inherited_p.exit:                    ; preds = %.lr.ph.i, %bb.c, %bb.a, %bb.b, %rbimpl_RB_TYPE_P_fastpath.exit
  %.0 = phi i32 [ 0, %rbimpl_RB_TYPE_P_fastpath.exit ], [ 0, %bb.b ], [ 0, %bb.a ], [ 1, %.lr.ph.i ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 2) i32 @rb_typeddata_is_instance_of(i64 noundef %0, ptr noundef readnone captures(address) %1) local_unnamed_addr #22 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %rb_typeddata_is_instance_of_inline.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !11
  %i.g = and i64 %i.f, 95
  %or.cond.not.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i, label %bb.b, label %rb_typeddata_is_instance_of_inline.exit

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !47
  %i.j = and i64 %i.i, -2
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = icmp eq ptr %1, %i.k
  %i.m = zext i1 %i.l to i32
  br label %rb_typeddata_is_instance_of_inline.exit

rb_typeddata_is_instance_of_inline.exit:          ; preds = %bb.a, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.b
  %i.n = phi i32 [ 0, %bb.a ], [ %i.m, %bb.b ], [ 0, %rbimpl_RB_TYPE_P_fastpath.exit.i ]
  ret i32 %i.n
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @rb_check_typeddata(i64 noundef %0, ptr noundef readonly captures(address) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !11   ; 2 uses
  %i.g = and i64 %i.f, 31
  %i.h = icmp eq i64 %i.g, 12
  br i1 %i.h, label %bb.b, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.a, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.i = tail call fastcc i64 @displaying_class_of(i64 noundef %0)
  br label %bb.g

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.j = and i64 %i.f, 64
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = tail call fastcc i64 @displaying_class_of(i64 noundef %0)
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.e, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !47   ; 2 uses
  %i.n = and i64 %i.m, -2                         ; 2 uses
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %.not5.i = icmp eq i64 %i.n, 0
  br i1 %.not5.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.046.i = phi ptr [ %i.r, %bb.e ], [ %i.o, %bb.d ] ; 2 uses
  %i.p = icmp eq ptr %.046.i, %1
  br i1 %i.p, label %rb_typeddata_inherited_p.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.q = getelementptr i8, ptr %.046.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !42   ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !46

.loopexit:                                        ; preds = %bb.e, %bb.d
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !49
  %i.t = tail call i64 @rb_str_new_cstr(ptr noundef %i.s) #32
  br label %bb.g

rb_typeddata_inherited_p.exit:                    ; preds = %.lr.ph.i
  %i.u = trunc i64 %i.m to i1
  %i.v = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.u, label %RTYPEDDATA_GET_DATA.exit, label %bb.f

bb.f:                                             ; preds = %rb_typeddata_inherited_p.exit
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !50
  br label %RTYPEDDATA_GET_DATA.exit

RTYPEDDATA_GET_DATA.exit:                         ; preds = %rb_typeddata_inherited_p.exit, %bb.f
  %i.x = phi ptr [ %i.w, %bb.f ], [ %i.v, %rb_typeddata_inherited_p.exit ]
  ret ptr %i.x

bb.g:                                             ; preds = %bb.c, %.loopexit, %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %.0 = phi i64 [ %i.t, %.loopexit ], [ %i.k, %bb.c ], [ %i.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread ]
end_hunk_0

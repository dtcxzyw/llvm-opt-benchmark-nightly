inline.NumInlined: 364
inline.NumDeleted: 88
begin_hunk_0_@search_escape_basic:bb.a
.loopexit.split.loop.exit:                        ; preds = %.lr.ph.3
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 3
  br label %.loopexit

.loopexit.split.loop.exit30:                      ; preds = %.lr.ph.2
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  br label %.loopexit

.loopexit.split.loop.exit32:                      ; preds = %.lr.ph.1
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.prol, %.loopexit.split.loop.exit, %.loopexit.split.loop.exit30, %.loopexit.split.loop.exit32, %.lr.ph
  %.lcssa22 = phi ptr [ %i.q, %.lr.ph ], [ %i.x, %.loopexit.split.loop.exit32 ], [ %i.w, %.loopexit.split.loop.exit30 ], [ %i.v, %.loopexit.split.loop.exit ], [ %i.j, %.lr.ph.prol ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !77   ; 3 uses
  %i.aa = icmp ugt ptr %.lcssa22, %i.z
  br i1 %i.aa, label %bb.c, label %search_flush.exit7

bb.c:                                             ; preds = %.loopexit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !78
  %i.ad = ptrtoint ptr %.lcssa22 to i64
  %i.ae = ptrtoint ptr %i.z to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call fastcc void @fbuffer_append(ptr noundef %i.ac, ptr noundef %i.z, i64 noundef %i.af)
  %i.ag = load ptr, ptr %0, align 8, !tbaa !76
  store ptr %i.ag, ptr %i.y, align 8, !tbaa !77
  br label %search_flush.exit7

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 2 uses
  store ptr %i.ah, ptr %0, align 8, !tbaa !76
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !79
  %i.aj = zext i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr @escape_table_basic, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !79
  %.not.1 = icmp eq i8 %i.al, 0
  br i1 %.not.1, label %.lr.ph.2, label %.loopexit.split.loop.exit32, !prof !27

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 2 ; 2 uses
  store ptr %i.am, ptr %0, align 8, !tbaa !76
  %i.an = load i8, ptr %i.am, align 1, !tbaa !79
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr @escape_table_basic, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !79
  %.not.2 = icmp eq i8 %i.aq, 0
  br i1 %.not.2, label %.lr.ph.3, label %.loopexit.split.loop.exit30, !prof !27

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.ar = getelementptr inbounds nuw i8, ptr %i.q, i64 3 ; 2 uses
  store ptr %i.ar, ptr %0, align 8, !tbaa !76
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !79
  %i.at = zext i8 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr @escape_table_basic, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !79
  %.not.3 = icmp eq i8 %i.av, 0
  br i1 %.not.3, label %bb.d, label %.loopexit.split.loop.exit, !prof !27

bb.d:                                             ; preds = %.lr.ph.3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 3 uses
  store ptr %i.aw, ptr %0, align 8, !tbaa !76
  %exitcond.not.3 = icmp eq ptr %i.aw, %i.b
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %bb.d, %bb.a
  %.lcssa = phi ptr [ %.promoted, %bb.a ], [ %scevgep, %bb.d ], [ %scevgep, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !77 ; 3 uses
  %i.az = icmp ugt ptr %.lcssa, %i.ay
  br i1 %i.az, label %bb.e, label %search_flush.exit7

bb.e:                                             ; preds = %._crit_edge
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !78 ; 4 uses
  %i.bc = ptrtoint ptr %.lcssa to i64
  %i.bd = ptrtoint ptr %i.ay to i64
  %i.be = sub i64 %i.bc, %i.bd                    ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !59
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 4 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !81 ; 2 uses
  %i.bj = sub i64 %i.bg, %i.bi
  %i.bk = icmp ugt i64 %i.be, %i.bj
  br i1 %i.bk, label %bb.f, label %fbuffer_append_reserved.exit.i, !prof !71

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %i.bb, i64 noundef %i.be)
  %.pre.i = load i64, ptr %i.bh, align 8, !tbaa !81
  br label %fbuffer_append_reserved.exit.i

fbuffer_append_reserved.exit.i:                   ; preds = %bb.f, %bb.e
  %i.bl = phi i64 [ %i.bi, %bb.e ], [ %.pre.i, %bb.f ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !58
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bl
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bo, ptr readonly align 1 %i.ay, i64 %i.be, i1 false)
  %i.bp = load i64, ptr %i.bh, align 8, !tbaa !81
  %i.bq = add i64 %i.bp, %i.be
  store i64 %i.bq, ptr %i.bh, align 8, !tbaa !81
  %i.br = load ptr, ptr %0, align 8, !tbaa !76
  store ptr %i.br, ptr %i.ax, align 8, !tbaa !77
  br label %search_flush.exit7

search_flush.exit7:                               ; preds = %fbuffer_append_reserved.exit.i, %._crit_edge, %bb.c, %.loopexit
  %.0 = phi i8 [ 1, %bb.c ], [ 1, %.loopexit ], [ 0, %._crit_edge ], [ 0, %fbuffer_append_reserved.exit.i ]
  ret i8 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i64 @rb_data_typed_object_zalloc(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @State_mark(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !39
  tail call void @rb_gc_mark_movable(i64 noundef %i.a) #24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !42
  tail call void @rb_gc_mark_movable(i64 noundef %i.c) #24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !43
  tail call void @rb_gc_mark_movable(i64 noundef %i.e) #24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !44
  tail call void @rb_gc_mark_movable(i64 noundef %i.g) #24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !45
  tail call void @rb_gc_mark_movable(i64 noundef %i.i) #24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !46
  tail call void @rb_gc_mark_movable(i64 noundef %i.k) #24
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @State_free(ptr noundef %0) #0 {
bb.a:
  tail call void @ruby_xfree(ptr noundef %0) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i64 @State_memsize(ptr nofree readnone captures(none) %0) #7 {
bb.a:
  ret i64 88
}

; Function Attrs: nounwind uwtable
define internal void @State_compact(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !39
  %i.b = tail call i64 @rb_gc_location(i64 noundef %i.a) #24
  store i64 %i.b, ptr %0, align 8, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !42
  %i.e = tail call i64 @rb_gc_location(i64 noundef %i.d) #24
  store i64 %i.e, ptr %i.c, align 8, !tbaa !42
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !43
  %i.h = tail call i64 @rb_gc_location(i64 noundef %i.g) #24
  store i64 %i.h, ptr %i.f, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !44
  %i.k = tail call i64 @rb_gc_location(i64 noundef %i.j) #24
  store i64 %i.k, ptr %i.i, align 8, !tbaa !44
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !45
  %i.n = tail call i64 @rb_gc_location(i64 noundef %i.m) #24
  store i64 %i.n, ptr %i.l, align 8, !tbaa !45
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !46
  %i.q = tail call i64 @rb_gc_location(i64 noundef %i.p) #24
  store i64 %i.q, ptr %i.o, align 8, !tbaa !46
  ret void
}

declare void @rb_gc_mark_movable(i64 noundef) local_unnamed_addr #1

declare void @ruby_xfree(ptr noundef) local_unnamed_addr #1

declare i64 @rb_gc_location(i64 noundef) local_unnamed_addr #1

declare i64 @rb_obj_is_kind_of(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_funcall(i64 noundef, i64 noundef, i32 noundef, ...) local_unnamed_addr #1

declare i64 @rb_class_new_instance(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: cold
declare void @rb_warn(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @rb_error_frozen_object(i64 noundef) local_unnamed_addr #9

declare void @rb_str_modify(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

declare ptr @rb_check_typeddata(i64 noundef, ptr noundef) local_unnamed_addr #1

declare i64 @rb_hash_size_num(i64 noundef) local_unnamed_addr #1

declare void @rb_hash_foreach(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @configure_state_i(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = inttoptr i64 %2 to ptr                   ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 18 uses
  %i.c = load i64, ptr @sym_indent, align 8, !tbaa !10
  %i.d = icmp eq i64 %0, %i.c
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %1, -5
  %.not5.i = icmp eq i64 %i.e, 0
  br i1 %.not5.i, label %string_config.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = and i64 %1, 7
  %.not6.i = icmp eq i64 %i.f, 0
  br i1 %.not6.i, label %bb.d, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, !prof !22

bb.d:                                             ; preds = %bb.c
  %i.g = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !23
  %i.i = and i64 %i.h, 31
  %i.j = icmp eq i64 %i.i, 5
  br i1 %i.j, label %Check_Type.exit.i, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, !prof !33

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i:        ; preds = %bb.d, %bb.c
  tail call void @rb_unexpected_type(i64 noundef %1, i32 noundef 5) #28
  unreachable

Check_Type.exit.i:                                ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !40
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %string_config.exit, label %bb.e

bb.e:                                             ; preds = %Check_Type.exit.i
  %i.m = tail call i64 @rb_str_new_frozen(i64 noundef %1) #24
  br label %string_config.exit

string_config.exit:                               ; preds = %bb.b, %Check_Type.exit.i, %bb.e
  %.0.i = phi i64 [ %i.m, %bb.e ], [ 0, %Check_Type.exit.i ], [ 0, %bb.b ] ; 4 uses
  %i.n = getelementptr i8, ptr %i.a, i64 8
  %.val65 = load i64, ptr %i.n, align 8, !tbaa !37 ; 2 uses
  %i.o = and i64 %.val65, -5
  %.not.i66 = icmp eq i64 %i.o, 0
  store i64 %.0.i, ptr %i.b, align 8, !tbaa !10
  br i1 %.not.i66, label %state_write_value.exit, label %bb.f

bb.f:                                             ; preds = %string_config.exit
  %i.p = icmp eq i64 %.0.i, 0
  %i.q = and i64 %.0.i, 7
  %i.r = icmp ne i64 %i.q, 0
  %i.s = or i1 %i.p, %i.r
  br i1 %i.s, label %state_write_value.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @rb_gc_writebarrier(i64 noundef %.val65, i64 noundef %.0.i) #24
  br label %state_write_value.exit

bb.h:                                             ; preds = %bb.a
  %i.t = load i64, ptr @sym_space, align 8, !tbaa !10
  %i.u = icmp eq i64 %0, %i.t
  br i1 %i.u, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.w = and i64 %1, -5
  %.not5.i67 = icmp eq i64 %i.w, 0
  br i1 %.not5.i67, label %string_config.exit73, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = and i64 %1, 7
  %.not6.i68 = icmp eq i64 %i.x, 0
  br i1 %.not6.i68, label %bb.k, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i69, !prof !22

bb.k:                                             ; preds = %bb.j
  %i.y = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !23
  %i.aa = and i64 %i.z, 31
  %i.ab = icmp eq i64 %i.aa, 5
  br i1 %i.ab, label %Check_Type.exit.i70, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i69, !prof !33

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i69:      ; preds = %bb.k, %bb.j
  tail call void @rb_unexpected_type(i64 noundef %1, i32 noundef 5) #28
  unreachable

Check_Type.exit.i70:                              ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !40
  %.not.i71 = icmp eq i64 %i.ad, 0
  br i1 %.not.i71, label %string_config.exit73, label %bb.l

bb.l:                                             ; preds = %Check_Type.exit.i70
  %i.ae = tail call i64 @rb_str_new_frozen(i64 noundef %1) #24
  br label %string_config.exit73

string_config.exit73:                             ; preds = %bb.i, %Check_Type.exit.i70, %bb.l
  %.0.i72 = phi i64 [ %i.ae, %bb.l ], [ 0, %Check_Type.exit.i70 ], [ 0, %bb.i ] ; 4 uses
  %i.af = getelementptr i8, ptr %i.a, i64 8
  %.val64 = load i64, ptr %i.af, align 8, !tbaa !37 ; 2 uses
  %i.ag = and i64 %.val64, -5
  %.not.i74 = icmp eq i64 %i.ag, 0
  store i64 %.0.i72, ptr %i.v, align 8, !tbaa !10
  br i1 %.not.i74, label %state_write_value.exit, label %bb.m

bb.m:                                             ; preds = %string_config.exit73
  %i.ah = icmp eq i64 %.0.i72, 0
  %i.ai = and i64 %.0.i72, 7
  %i.aj = icmp ne i64 %i.ai, 0
  %i.ak = or i1 %i.ah, %i.aj
  br i1 %i.ak, label %state_write_value.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @rb_gc_writebarrier(i64 noundef %.val64, i64 noundef %.0.i72) #24
  br label %state_write_value.exit

bb.o:                                             ; preds = %bb.h
  %i.al = load i64, ptr @sym_space_before, align 8, !tbaa !10
  %i.am = icmp eq i64 %0, %i.al
  br i1 %i.am, label %bb.p, label %bb.v

bb.p:                                             ; preds = %bb.o
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ao = and i64 %1, -5
  %.not5.i76 = icmp eq i64 %i.ao, 0
  br i1 %.not5.i76, label %string_config.exit82, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ap = and i64 %1, 7
  %.not6.i77 = icmp eq i64 %i.ap, 0
  br i1 %.not6.i77, label %bb.r, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i78, !prof !22

bb.r:                                             ; preds = %bb.q
  %i.aq = inttoptr i64 %1 to ptr                  ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !23
  %i.as = and i64 %i.ar, 31
  %i.at = icmp eq i64 %i.as, 5
  br i1 %i.at, label %Check_Type.exit.i79, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i78, !prof !33

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i78:      ; preds = %bb.r, %bb.q
  tail call void @rb_unexpected_type(i64 noundef %1, i32 noundef 5) #28
  unreachable

Check_Type.exit.i79:                              ; preds = %bb.r
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !40
  %.not.i80 = icmp eq i64 %i.av, 0
  br i1 %.not.i80, label %string_config.exit82, label %bb.s

bb.s:                                             ; preds = %Check_Type.exit.i79
  %i.aw = tail call i64 @rb_str_new_frozen(i64 noundef %1) #24
  br label %string_config.exit82

string_config.exit82:                             ; preds = %bb.p, %Check_Type.exit.i79, %bb.s
  %.0.i81 = phi i64 [ %i.aw, %bb.s ], [ 0, %Check_Type.exit.i79 ], [ 0, %bb.p ] ; 4 uses
  %i.ax = getelementptr i8, ptr %i.a, i64 8
  %.val63 = load i64, ptr %i.ax, align 8, !tbaa !37 ; 2 uses
  %i.ay = and i64 %.val63, -5
  %.not.i83 = icmp eq i64 %i.ay, 0
  store i64 %.0.i81, ptr %i.an, align 8, !tbaa !10
  br i1 %.not.i83, label %state_write_value.exit, label %bb.t

bb.t:                                             ; preds = %string_config.exit82
  %i.az = icmp eq i64 %.0.i81, 0
  %i.ba = and i64 %.0.i81, 7
  %i.bb = icmp ne i64 %i.ba, 0
  %i.bc = or i1 %i.az, %i.bb
  br i1 %i.bc, label %state_write_value.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @rb_gc_writebarrier(i64 noundef %.val63, i64 noundef %.0.i81) #24
  br label %state_write_value.exit

bb.v:                                             ; preds = %bb.o
  %i.bd = load i64, ptr @sym_object_nl, align 8, !tbaa !10
  %i.be = icmp eq i64 %0, %i.bd
  br i1 %i.be, label %bb.w, label %bb.ac

bb.w:                                             ; preds = %bb.v
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bg = and i64 %1, -5
  %.not5.i85 = icmp eq i64 %i.bg, 0
  br i1 %.not5.i85, label %string_config.exit91, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bh = and i64 %1, 7
  %.not6.i86 = icmp eq i64 %i.bh, 0
  br i1 %.not6.i86, label %bb.y, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i87, !prof !22

bb.y:                                             ; preds = %bb.x
  %i.bi = inttoptr i64 %1 to ptr                  ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !23
  %i.bk = and i64 %i.bj, 31
end_hunk_0
begin_hunk_1_@configure_state_i:bb.a
  %i.cg = tail call i64 @rb_str_new_frozen(i64 noundef %1) #24
  br label %string_config.exit100

string_config.exit100:                            ; preds = %bb.ad, %Check_Type.exit.i97, %bb.ag
  %.0.i99 = phi i64 [ %i.cg, %bb.ag ], [ 0, %Check_Type.exit.i97 ], [ 0, %bb.ad ] ; 4 uses
  %i.ch = getelementptr i8, ptr %i.a, i64 8
  %.val61 = load i64, ptr %i.ch, align 8, !tbaa !37 ; 2 uses
  %i.ci = and i64 %.val61, -5
  %.not.i101 = icmp eq i64 %i.ci, 0
  store i64 %.0.i99, ptr %i.bx, align 8, !tbaa !10
  br i1 %.not.i101, label %state_write_value.exit, label %bb.ah

bb.ah:                                            ; preds = %string_config.exit100
  %i.cj = icmp eq i64 %.0.i99, 0
  %i.ck = and i64 %.0.i99, 7
  %i.cl = icmp ne i64 %i.ck, 0
  %i.cm = or i1 %i.cj, %i.cl
  br i1 %i.cm, label %state_write_value.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @rb_gc_writebarrier(i64 noundef %.val61, i64 noundef %.0.i99) #24
  br label %state_write_value.exit

bb.aj:                                            ; preds = %bb.ac
  %i.cn = load i64, ptr @sym_max_nesting, align 8, !tbaa !10
  %i.co = icmp eq i64 %0, %i.cn
  br i1 %i.co, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.cp = and i64 %1, -5
  %.not.i103 = icmp eq i64 %i.cp, 0
  %i.cq = ashr i64 %1, 1
  %spec.select.i = select i1 %.not.i103, i64 0, i64 %i.cq
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 %spec.select.i, ptr %i.cr, align 8, !tbaa !18
  br label %state_write_value.exit

bb.al:                                            ; preds = %bb.aj
  %i.cs = load i64, ptr @sym_allow_nan, align 8, !tbaa !10
  %i.ct = icmp eq i64 %0, %i.cs
  br i1 %i.ct, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.cu = and i64 %1, -5
  %i.cv = icmp ne i64 %i.cu, 0
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 77
  %i.cx = zext i1 %i.cv to i8
  store i8 %i.cx, ptr %i.cw, align 1, !tbaa !51
  br label %state_write_value.exit

bb.an:                                            ; preds = %bb.al
  %i.cy = load i64, ptr @sym_ascii_only, align 8, !tbaa !10
  %i.cz = icmp eq i64 %0, %i.cy
  br i1 %i.cz, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.da = and i64 %1, -5
  %i.db = icmp ne i64 %i.da, 0
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 78
  %i.dd = zext i1 %i.db to i8
  store i8 %i.dd, ptr %i.dc, align 2, !tbaa !52
  br label %state_write_value.exit

bb.ap:                                            ; preds = %bb.an
  %i.de = load i64, ptr @sym_depth, align 8, !tbaa !10
  %i.df = icmp eq i64 %0, %i.de
  br i1 %i.df, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.dg = and i64 %1, -5
  %.not.i104 = icmp eq i64 %i.dg, 0
  %i.dh = ashr i64 %1, 1
  %spec.select.i105 = select i1 %.not.i104, i64 0, i64 %i.dh
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %spec.select.i105, ptr %i.di, align 8, !tbaa !53
  br label %state_write_value.exit

bb.ar:                                            ; preds = %bb.ap
  %i.dj = load i64, ptr @sym_buffer_initial_length, align 8, !tbaa !10
  %i.dk = icmp eq i64 %0, %i.dj
  br i1 %i.dk, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.dl = trunc i64 %1 to i1
  br i1 %i.dl, label %Check_Type.exit.i107, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i106, !prof !33

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i106:     ; preds = %bb.as
  tail call void @rb_unexpected_type(i64 noundef %1, i32 noundef 21) #28
  unreachable

Check_Type.exit.i107:                             ; preds = %bb.as
  %i.dm = ashr i64 %1, 1                          ; 2 uses
  %i.dn = icmp sgt i64 %i.dm, 0
  br i1 %i.dn, label %bb.at, label %state_write_value.exit

bb.at:                                            ; preds = %Check_Type.exit.i107
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %i.dm, ptr %i.do, align 8, !tbaa !21
  br label %state_write_value.exit

bb.au:                                            ; preds = %bb.ar
  %i.dp = load i64, ptr @sym_script_safe, align 8, !tbaa !10
  %i.dq = icmp eq i64 %0, %i.dp
  br i1 %i.dq, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.dr = and i64 %1, -5
  %i.ds = icmp ne i64 %i.dr, 0
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 79
  %i.du = zext i1 %i.ds to i8
  store i8 %i.du, ptr %i.dt, align 1, !tbaa !47
  br label %state_write_value.exit

bb.aw:                                            ; preds = %bb.au
  %i.dv = load i64, ptr @sym_escape_slash, align 8, !tbaa !10
  %i.dw = icmp eq i64 %0, %i.dv
  br i1 %i.dw, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.dx = and i64 %1, -5
  %i.dy = icmp ne i64 %i.dx, 0
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 79
  %i.ea = zext i1 %i.dy to i8
  store i8 %i.ea, ptr %i.dz, align 1, !tbaa !47
  br label %state_write_value.exit

bb.ay:                                            ; preds = %bb.aw
  %i.eb = load i64, ptr @sym_strict, align 8, !tbaa !10
  %i.ec = icmp eq i64 %0, %i.eb
  br i1 %i.ec, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ed = and i64 %1, -5
  %i.ee = icmp ne i64 %i.ed, 0
  %i.ef = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.eg = zext i1 %i.ee to i8
  store i8 %i.eg, ptr %i.ef, align 8, !tbaa !50
  br label %state_write_value.exit

bb.ba:                                            ; preds = %bb.ay
  %i.eh = load i64, ptr @sym_allow_duplicate_key, align 8, !tbaa !10
  %i.ei = icmp eq i64 %0, %i.eh
  br i1 %i.ei, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.ej = and i64 %1, -5
  %.not115 = icmp eq i64 %i.ej, 0
  %i.ek = select i1 %.not115, i32 2, i32 1
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 %i.ek, ptr %i.el, align 8, !tbaa !68
  br label %state_write_value.exit

bb.bc:                                            ; preds = %bb.ba
  %i.em = load i64, ptr @sym_as_json, align 8, !tbaa !10
  %i.en = icmp eq i64 %0, %i.em
  br i1 %i.en, label %bb.bd, label %state_write_value.exit

bb.bd:                                            ; preds = %bb.bc
  %i.eo = and i64 %1, -5
  %.not114 = icmp eq i64 %i.eo, 0
  br i1 %.not114, label %.split, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ep = tail call i64 @rb_convert_type(i64 noundef %1, i32 noundef 12, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69) #24 ; 5 uses
  %.not = icmp eq i64 %i.ep, 0
  br i1 %.not, label %.split, label %.split58

.split:                                           ; preds = %bb.bd, %bb.be
  %i.eq = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i8 0, ptr %i.eq, align 4, !tbaa !85
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %i.er, align 8, !tbaa !10
  br label %state_write_value.exit

.split58:                                         ; preds = %bb.be
  %i.es = tail call i32 @rb_proc_arity(i64 noundef %i.ep) #24
  %i.et = icmp eq i32 %i.es, 1
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.ev = zext i1 %i.et to i8
  store i8 %i.ev, ptr %i.eu, align 4, !tbaa !85
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ex = getelementptr i8, ptr %i.a, i64 8
  %.val = load i64, ptr %i.ex, align 8, !tbaa !37 ; 2 uses
  %i.ey = and i64 %.val, -5
  %.not.i110 = icmp eq i64 %i.ey, 0
  store i64 %i.ep, ptr %i.ew, align 8, !tbaa !10
  %i.ez = and i64 %i.ep, 7
  %i.fa = icmp ne i64 %i.ez, 0
  %or.cond = or i1 %i.fa, %.not.i110
  br i1 %or.cond, label %state_write_value.exit, label %bb.bf

bb.bf:                                            ; preds = %.split58
  tail call void @rb_gc_writebarrier(i64 noundef %.val, i64 noundef %i.ep) #24
  br label %state_write_value.exit

state_write_value.exit:                           ; preds = %.split, %bb.bf, %.split58, %bb.at, %Check_Type.exit.i107, %bb.ai, %bb.ah, %string_config.exit100, %bb.ab, %bb.aa, %string_config.exit91, %bb.u, %bb.t, %string_config.exit82, %bb.n, %bb.m, %string_config.exit73, %bb.g, %bb.f, %string_config.exit, %bb.ak, %bb.ao, %bb.ax, %bb.bb, %bb.bc, %bb.az, %bb.av, %bb.aq, %bb.am
  ret i32 0
}

; Function Attrs: cold noreturn
declare void @rb_unexpected_type(i64 noundef, i32 noundef) local_unnamed_addr #11

declare i64 @rb_convert_type(i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @rb_proc_arity(i64 noundef) local_unnamed_addr #1

declare void @rb_gc_writebarrier(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_str_new_frozen(i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @rb_raise(i64 noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

declare i64 @rb_str_freeze(i64 noundef) local_unnamed_addr #1

declare i64 @rb_utf8_str_new_static(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @generate_json(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
.peel.begin:
  %i.a = alloca [2 x i64], align 16               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  switch i64 %2, label %bb.a [
    i64 4, label %.loopexit
    i64 0, label %.loopexit110
    i64 20, label %.loopexit111
  ]

bb.a:                                             ; preds = %.peel.begin
  %i.d = icmp eq i64 %2, 0
  %i.e = and i64 %2, 7
  %i.f = icmp ne i64 %i.e, 0
  %i.g = or i1 %i.d, %i.f
  br i1 %i.g, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = inttoptr i64 %2 to ptr                   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !86   ; 5 uses
  %i.k = load i64, ptr %i.h, align 8, !tbaa !23
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.l, 31
  switch i32 %i.m, label %bb.l [
    i32 10, label %.loopexit112
    i32 8, label %bb.h
    i32 7, label %bb.g
    i32 5, label %bb.e
    i32 20, label %.loopexit113
    i32 4, label %bb.d
    i32 9, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.n = load i64, ptr @cFragment, align 8, !tbaa !10
  %.not69.peel = icmp eq i64 %i.j, %i.n
  br i1 %.not69.peel, label %.loopexit114, label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.o = load i64, ptr @rb_cFloat, align 8, !tbaa !10
  %.not70.peel = icmp eq i64 %i.j, %i.o
  br i1 %.not70.peel, label %.loopexit115, label %bb.l

bb.e:                                             ; preds = %bb.b
  %i.p = load i64, ptr @rb_cString, align 8, !tbaa !10
  %.not71.peel = icmp eq i64 %i.j, %i.p
  br i1 %.not71.peel, label %bb.f, label %bb.l, !prof !38

bb.f:                                             ; preds = %bb.e
  %i.q = tail call i32 @rb_enc_str_coderange(i64 noundef %2) #24
  switch i32 %i.q, label %valid_json_string_p.exit.thread77.peel [
    i32 1048576, label %valid_json_string_p.exit.thread
    i32 2097152, label %valid_json_string_p.exit.peel
  ], !prof !87

valid_json_string_p.exit.peel:                    ; preds = %bb.f
  %i.r = load i64, ptr %i.h, align 8, !tbaa !23
  %i.s = trunc i64 %i.r to i32
  %i.t = lshr i32 %i.s, 22
  %i.u = and i32 %i.t, 127                        ; 2 uses
  %i.v = load i32, ptr @usascii_encindex, align 4, !tbaa !6
  %i.w = icmp eq i32 %i.u, %i.v
  %i.x = load i32, ptr @utf8_encindex, align 4
  %i.y = icmp eq i32 %i.u, %i.x
  %.0.i.i.peel = select i1 %i.w, i1 true, i1 %i.y
  br i1 %.0.i.i.peel, label %valid_json_string_p.exit.thread, label %valid_json_string_p.exit.thread77.peel, !prof !88

valid_json_string_p.exit.thread77.peel:           ; preds = %bb.f, %valid_json_string_p.exit.peel
  %i.z = tail call fastcc i64 @ensure_valid_encoding(ptr noundef %1, i64 noundef %2, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %.backedge.peel

bb.g:                                             ; preds = %bb.b
  %i.aa = load i64, ptr @rb_cArray, align 8, !tbaa !10
  %.not72.peel = icmp eq i64 %i.j, %i.aa
  br i1 %.not72.peel, label %.loopexit117, label %bb.l

bb.h:                                             ; preds = %bb.b
  %i.ab = load i64, ptr @rb_cHash, align 8, !tbaa !10
  %.not73.peel = icmp eq i64 %i.j, %i.ab
  br i1 %.not73.peel, label %.loopexit118, label %bb.l

bb.i:                                             ; preds = %bb.a
  %i.ac = trunc i64 %2 to i1
  br i1 %i.ac, label %.loopexit119, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = and i64 %2, 2
  %.not.peel = icmp eq i64 %i.ad, 0
  br i1 %.not.peel, label %bb.k, label %.loopexit120

bb.k:                                             ; preds = %bb.j
  %i.ae = and i64 %2, 252
  %i.af = icmp eq i64 %i.ae, 12
  br i1 %i.af, label %.loopexit121, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h, %bb.g, %bb.e, %bb.d, %bb.c, %bb.b
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !64  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !50, !range !48, !noundef !49
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.m, label %.loopexit122

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !46 ; 2 uses
  %i.am = and i64 %i.al, -5
  %.not124 = icmp eq i64 %i.am, 0
  br i1 %.not124, label %.loopexit123, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %2, ptr %i.a, align 16, !tbaa !10
  store i64 0, ptr %i.c, align 8, !tbaa !10
  %i.an = call i64 @rb_proc_call_with_block(i64 noundef %i.al, i32 noundef 2, ptr noundef nonnull %i.a, i64 noundef 4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %.backedge.peel

.backedge.peel:                                   ; preds = %valid_json_string_p.exit.thread77.peel, %bb.n
  %.0.be.peel = phi i64 [ %i.an, %bb.n ], [ %i.z, %valid_json_string_p.exit.thread77.peel ] ; 22 uses
  switch i64 %.0.be.peel, label %bb.r [
    i64 4, label %.loopexit
    i64 0, label %.loopexit110
    i64 20, label %.loopexit111
  ]

.loopexit:                                        ; preds = %.backedge.peel, %.peel.begin
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !59
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !81 ; 2 uses
  %i.as = sub i64 %i.ap, %i.ar
  %i.at = icmp ult i64 %i.as, 4
  br i1 %i.at, label %bb.o, label %generate_json_null.exit, !prof !71

bb.o:                                             ; preds = %.loopexit
  call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %0, i64 noundef 4)
  %.pre.i.i = load i64, ptr %i.aq, align 8, !tbaa !81
  br label %generate_json_null.exit

generate_json_null.exit:                          ; preds = %.loopexit, %bb.o
  %i.au = phi i64 [ %i.ar, %.loopexit ], [ %.pre.i.i, %bb.o ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !58
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.au
  store i32 1819047278, ptr %i.ax, align 1
  %i.ay = load i64, ptr %i.aq, align 8, !tbaa !81
  %i.az = add i64 %i.ay, 4
  store i64 %i.az, ptr %i.aq, align 8, !tbaa !81
  br label %generate_json_symbol.exit

.loopexit110:                                     ; preds = %.backedge.peel, %.peel.begin
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !59
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !81 ; 2 uses
  %i.be = sub i64 %i.bb, %i.bd
  %i.bf = icmp ult i64 %i.be, 5
  br i1 %i.bf, label %bb.p, label %generate_json_false.exit, !prof !71

bb.p:                                             ; preds = %.loopexit110
  call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %0, i64 noundef 5)
  %.pre.i.i74 = load i64, ptr %i.bc, align 8, !tbaa !81
  br label %generate_json_false.exit

generate_json_false.exit:                         ; preds = %.loopexit110, %bb.p
  %i.bg = phi i64 [ %i.bd, %.loopexit110 ], [ %.pre.i.i74, %bb.p ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !58
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.bj, ptr noundef nonnull readonly align 1 dereferenceable(5) @.str.76, i64 5, i1 false)
  %i.bk = load i64, ptr %i.bc, align 8, !tbaa !81
  %i.bl = add i64 %i.bk, 5
  store i64 %i.bl, ptr %i.bc, align 8, !tbaa !81
  br label %generate_json_symbol.exit

.loopexit111:                                     ; preds = %.backedge.peel, %.peel.begin
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !59
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !81 ; 2 uses
  %i.bq = sub i64 %i.bn, %i.bp
  %i.br = icmp ult i64 %i.bq, 4
  br i1 %i.br, label %bb.q, label %generate_json_true.exit, !prof !71

bb.q:                                             ; preds = %.loopexit111
  call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %0, i64 noundef 4)
  %.pre.i.i75 = load i64, ptr %i.bo, align 8, !tbaa !81
  br label %generate_json_true.exit

generate_json_true.exit:                          ; preds = %.loopexit111, %bb.q
  %i.bs = phi i64 [ %i.bp, %.loopexit111 ], [ %.pre.i.i75, %bb.q ]
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 32
end_hunk_1
begin_hunk_2_@generate_json_fixnum:bb.a
  store i16 %i.em, ptr %i.p, align 1
  %i.en = icmp samesign ult i64 %.0.i, 10000000000000
  %.neg177.i.i = sext i1 %i.en to i64
  %i.eo = getelementptr inbounds i8, ptr %i.p, i64 %.neg177.i.i ; 3 uses
  %i.ep = and i64 %i.ej, 4294967295
  %i.eq = mul nuw nsw i64 %i.ep, 100              ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 2
  %i.es = lshr i64 %i.eq, 32
  %i.et = getelementptr inbounds nuw [2 x i8], ptr @.str.79, i64 %i.es
  %i.eu = load i16, ptr %i.et, align 1
  store i16 %i.eu, ptr %i.er, align 1
  %i.ev = and i64 %i.eq, 4294967292
  %i.ew = mul nuw nsw i64 %i.ev, 100
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %i.ey = lshr i64 %i.ew, 32
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr @.str.79, i64 %i.ey
  %i.fa = load i16, ptr %i.ez, align 1
  store i16 %i.fa, ptr %i.ex, align 1
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eo, i64 6
  br label %bb.ab

bb.t:                                             ; preds = %bb.p
  %i.fc = icmp samesign ult i64 %.0.i, 10000000000000000
  br i1 %i.fc, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fd = mul nuw nsw i64 %i.dn, 281474977        ; 2 uses
  %i.fe = lshr i64 %i.fd, 16
  %i.ff = lshr i64 %i.fd, 48
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr @.str.78, i64 %i.ff
  %i.fh = load i16, ptr %i.fg, align 1
  store i16 %i.fh, ptr %i.p, align 1
  %i.fi = icmp samesign ult i64 %.0.i, 1000000000000000
  %.neg176.i.i = sext i1 %i.fi to i64
  %i.fj = getelementptr inbounds i8, ptr %i.p, i64 %.neg176.i.i ; 4 uses
  %i.fk = and i64 %i.fe, 4294967295
  %i.fl = mul nuw nsw i64 %i.fk, 100              ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 2
  %i.fn = lshr i64 %i.fl, 32
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr @.str.79, i64 %i.fn
  %i.fp = load i16, ptr %i.fo, align 1
  store i16 %i.fp, ptr %i.fm, align 1
  %i.fq = and i64 %i.fl, 4294967292
  %i.fr = mul nuw nsw i64 %i.fq, 100              ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  %i.ft = lshr i64 %i.fr, 32
  %i.fu = getelementptr inbounds nuw [2 x i8], ptr @.str.79, i64 %i.ft
  %i.fv = load i16, ptr %i.fu, align 1
  store i16 %i.fv, ptr %i.fs, align 1
  %i.fw = and i64 %i.fr, 4294967280
  %i.fx = mul nuw nsw i64 %i.fw, 100
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fj, i64 6
  %i.fz = lshr i64 %i.fx, 32
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr @.str.79, i64 %i.fz
  %i.gb = load i16, ptr %i.ga, align 1
  store i16 %i.gb, ptr %i.fy, align 1
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  br label %bb.ab

bb.v:                                             ; preds = %bb.t
  %i.gd = icmp samesign ult i64 %.0.i, 429496729600000000
  br i1 %i.gd, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ge = mul nuw nsw i64 %i.dn, 1441151881       ; 2 uses
  %i.gf = lshr i64 %i.ge, 57
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr @.str.78, i64 %i.gf
  %i.gh = load i16, ptr %i.gg, align 1
  store i16 %i.gh, ptr %i.p, align 1
  %i.gi = icmp samesign ult i64 %.0.i, 100000000000000000
  %.neg.i.i = sext i1 %i.gi to i64
  %i.gj = getelementptr inbounds i8, ptr %i.p, i64 %.neg.i.i ; 5 uses
  %i.gk = and i64 %i.ge, 144115188075855871
  %i.gl = mul nuw i64 %i.gk, 100                  ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 2
  %i.gn = lshr i64 %i.gl, 57
  %i.go = getelementptr inbounds nuw [2 x i8], ptr @.str.79, i64 %i.gn
  %i.gp = load i16, ptr %i.go, align 1
  store i16 %i.gp, ptr %i.gm, align 1
  %i.gq = and i64 %i.gl, 144115188075855868
  %i.gr = mul nuw i64 %i.gq, 100                  ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  %i.gt = lshr i64 %i.gr, 57
  %i.gu = getelementptr inbounds nuw [2 x i8], ptr @.str.79, i64 %i.gt
  %i.gv = load i16, ptr %i.gu, align 1
  store i16 %i.gv, ptr %i.gs, align 1
  %i.gw = and i64 %i.gr, 144115188075855856
  %i.gx = mul nuw i64 %i.gw, 100                  ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gj, i64 6
  %i.gz = lshr i64 %i.gx, 57
  %i.ha = getelementptr inbounds nuw [2 x i8], ptr @.str.79, i64 %i.gz
  %i.hb = load i16, ptr %i.ha, align 1
  store i16 %i.hb, ptr %i.gy, align 1
  %i.hc = and i64 %i.gx, 144115188075855808
  %i.hd = mul nuw i64 %i.hc, 100
  %i.he = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.hf = lshr i64 %i.hd, 57
  %i.hg = getelementptr inbounds nuw [2 x i8], ptr @.str.79, i64 %i.hf
  %i.hh = load i16, ptr %i.hg, align 1
  store i16 %i.hh, ptr %i.he, align 1
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gj, i64 10
  br label %bb.ab

bb.x:                                             ; preds = %bb.v
  %i.hj = urem i64 %i.dn, 100000000
  %i.hk = udiv i64 %.0.i, 10000000000000000       ; 2 uses
  %i.hl = icmp samesign ult i64 %.0.i, 1000000000000000000
  br i1 %i.hl, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.hm = getelementptr inbounds nuw [2 x i8], ptr @.str.79, i64 %i.hk
  %i.hn = load i16, ptr %i.hm, align 1
  store i16 %i.hn, ptr %i.p, align 1
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.ho = uitofp nneg i64 %i.hk to double
  %i.hp = fmul nnan double %i.ho, f0x41047AE947AE147B
  %i.hq = fptoui double %i.hp to i64              ; 2 uses
  %i.hr = lshr i64 %i.hq, 24
  %i.hs = getelementptr inbounds nuw [2 x i8], ptr @.str.78, i64 %i.hr
  %i.ht = load i16, ptr %i.hs, align 1
  store i16 %i.ht, ptr %i.p, align 1
  %i.hu = and i64 %i.hq, 16777215
  %i.hv = mul nuw nsw i64 %i.hu, 100
  %i.hw = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.hx = lshr i64 %i.hv, 24
  %i.hy = getelementptr inbounds nuw [2 x i8], ptr @.str.79, i64 %i.hx
  %i.hz = load i16, ptr %i.hy, align 1
  store i16 %i.hz, ptr %i.hw, align 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sink.i.i = phi i64 [ 3, %bb.z ], [ 2, %bb.y ]
  %i.ia = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sink.i.i ; 5 uses
  %i.ib = mul nuw nsw i64 %i.hj, 281474977
  %i.ic = lshr i64 %i.ib, 16
  %i.id = add nuw nsw i64 %i.ic, 1                ; 2 uses
  %i.ie = lshr i64 %i.id, 32
  %i.if = getelementptr inbounds nuw [2 x i8], ptr @.str.79, i64 %i.ie
  %i.ig = load i16, ptr %i.if, align 1
  store i16 %i.ig, ptr %i.ia, align 1
  %i.ih = and i64 %i.id, 4294967295
  %i.ii = mul nuw nsw i64 %i.ih, 100              ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ia, i64 2
  %i.ik = lshr i64 %i.ii, 32
  %i.il = getelementptr inbounds nuw [2 x i8], ptr @.str.79, i64 %i.ik
  %i.im = load i16, ptr %i.il, align 1
  store i16 %i.im, ptr %i.ij, align 1
  %i.in = and i64 %i.ii, 4294967292
  %i.io = mul nuw nsw i64 %i.in, 100              ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ia, i64 4
  %i.iq = lshr i64 %i.io, 32
  %i.ir = getelementptr inbounds nuw [2 x i8], ptr @.str.79, i64 %i.iq
  %i.is = load i16, ptr %i.ir, align 1
  store i16 %i.is, ptr %i.ip, align 1
  %i.it = and i64 %i.io, 4294967280
  %i.iu = mul nuw nsw i64 %i.it, 100
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ia, i64 6
  %i.iw = lshr i64 %i.iu, 32
  %i.ix = getelementptr inbounds nuw [2 x i8], ptr @.str.79, i64 %i.iw
  %i.iy = load i16, ptr %i.ix, align 1
  store i16 %i.iy, ptr %i.iv, align 1
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.w, %bb.u, %bb.s, %bb.r, %bb.o
  %.1.i.i = phi ptr [ %i.dr, %bb.o ], [ %i.ei, %bb.r ], [ %i.fb, %bb.s ], [ %i.gc, %bb.u ], [ %i.hi, %bb.w ], [ %i.iz, %bb.aa ] ; 5 uses
  %i.ja = mul nuw nsw i64 %i.dm, 281474977
  %i.jb = lshr i64 %i.ja, 16
  %i.jc = add nuw nsw i64 %i.jb, 1                ; 2 uses
  %i.jd = lshr i64 %i.jc, 32
  %i.je = getelementptr inbounds nuw [2 x i8], ptr @.str.79, i64 %i.jd
  %i.jf = load i16, ptr %i.je, align 1
  store i16 %i.jf, ptr %.1.i.i, align 1
  %i.jg = and i64 %i.jc, 4294967295
  %i.jh = mul nuw nsw i64 %i.jg, 100              ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 2
  %i.jj = lshr i64 %i.jh, 32
  %i.jk = getelementptr inbounds nuw [2 x i8], ptr @.str.79, i64 %i.jj
  %i.jl = load i16, ptr %i.jk, align 1
  store i16 %i.jl, ptr %i.ji, align 1
  %i.jm = and i64 %i.jh, 4294967292
  %i.jn = mul nuw nsw i64 %i.jm, 100              ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 4
  %i.jp = lshr i64 %i.jn, 32
  %i.jq = getelementptr inbounds nuw [2 x i8], ptr @.str.79, i64 %i.jp
  %i.jr = load i16, ptr %i.jq, align 1
  store i16 %i.jr, ptr %i.jo, align 1
  %i.js = and i64 %i.jn, 4294967280
  %i.jt = mul nuw nsw i64 %i.js, 100
  %i.ju = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 6
  %i.jv = lshr i64 %i.jt, 32
  %i.jw = getelementptr inbounds nuw [2 x i8], ptr @.str.79, i64 %i.jv
  %i.jx = load i16, ptr %i.jw, align 1
  store i16 %i.jx, ptr %i.ju, align 1
  %i.jy = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8
  br label %fbuffer_append_long.exit

fbuffer_append_long.exit:                         ; preds = %bb.e, %bb.h, %bb.i, %bb.l, %bb.m, %bb.ab
  %.0.i.i = phi ptr [ %i.u, %bb.e ], [ %i.al, %bb.h ], [ %i.be, %bb.i ], [ %i.cg, %bb.l ], [ %i.dl, %bb.m ], [ %i.jy, %bb.ab ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.i.i) ]
  %i.jz = load ptr, ptr %i.o, align 8, !tbaa !58
  %i.ka = ptrtoint ptr %.0.i.i to i64
  %i.kb = ptrtoint ptr %i.jz to i64
  %i.kc = sub i64 %i.ka, %i.kb
  store i64 %i.kc, ptr %i.d, align 8, !tbaa !81
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @generate_json_float(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca [18 x i8], align 16               ; 21 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca [2 x i64], align 16               ; 5 uses
  %i.d = tail call double @rb_float_value(i64 noundef %2) #30 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !64   ; 3 uses
  %i.g = tail call double @llvm.fabs.f64(double %i.d)
  %or.cond = fcmp ueq double %i.g, +inf
  br i1 %or.cond, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 77
  %i.i = load i8, ptr %i.h, align 1, !tbaa !51, !range !48, !noundef !49
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.l = load i8, ptr %i.k, align 8, !tbaa !50, !range !48, !noundef !49
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.o = load i64, ptr %i.n, align 8, !tbaa !46   ; 2 uses
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i64 %2, ptr %i.c, align 16, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !10
  %i.q = call i64 @rb_proc_call_with_block(i64 noundef %i.o, i32 noundef 2, ptr noundef nonnull %i.c, i64 noundef 4) #24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  %.not29 = icmp eq i64 %i.q, %2
  br i1 %.not29, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !67   ; 4 uses
  %i.u = add nsw i64 %i.t, 1
  store i64 %i.u, ptr %i.s, align 8, !tbaa !67
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.w = load i64, ptr %i.v, align 8, !tbaa !18   ; 2 uses
  %.not.i = icmp sge i64 %i.t, %i.w
  %i.x = icmp ne i64 %i.w, 0
  %spec.select.i = and i1 %.not.i, %i.x
  br i1 %spec.select.i, label %bb.g, label %increase_depth.exit, !prof !71

bb.g:                                             ; preds = %bb.f
  %i.y = load i64, ptr @eNestingError, align 8, !tbaa !10
  store i64 %i.t, ptr %i.s, align 8, !tbaa !67
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.y, ptr noundef nonnull @.str.80, i64 noundef %i.t) #27
  unreachable

increase_depth.exit:                              ; preds = %bb.f
  call void @generate_json(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %i.q)
  %i.z = load i64, ptr %i.s, align 8, !tbaa !67
  %i.aa = add nsw i64 %i.z, -1
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !67
  br label %bb.bl

.critedge:                                        ; preds = %bb.e, %bb.d, %bb.c
  %i.ab = load i64, ptr @i_to_s, align 8, !tbaa !10
  %i.ac = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %2, i64 noundef %i.ab, i32 noundef 0) #24
  call void (i64, ptr, ...) @raise_generator_error(i64 noundef %2, ptr noundef nonnull @.str.74, i64 noundef %i.ac) #29
  unreachable

bb.h:                                             ; preds = %bb.b
  %i.ad = load i64, ptr @i_to_s, align 8, !tbaa !10
  %i.ae = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %2, i64 noundef %i.ad, i32 noundef 0) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.ae, ptr %i.b, align 8, !tbaa !10
  %i.af = call ptr @rb_string_value_ptr(ptr noundef nonnull %i.b) #24
  %i.ag = load i64, ptr %i.b, align 8, !tbaa !10
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !40 ; 5 uses
  %.not.i.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i, label %fbuffer_append_str.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !59
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !81 ; 2 uses
  %i.ao = sub i64 %i.al, %i.an
  %i.ap = icmp ugt i64 %i.aj, %i.ao
  br i1 %i.ap, label %bb.j, label %fbuffer_append_reserved.exit.i.i, !prof !71

bb.j:                                             ; preds = %bb.i
  call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %0, i64 noundef %i.aj)
  %.pre.i.i = load i64, ptr %i.am, align 8, !tbaa !81
  br label %fbuffer_append_reserved.exit.i.i

fbuffer_append_reserved.exit.i.i:                 ; preds = %bb.j, %bb.i
  %i.aq = phi i64 [ %i.an, %bb.i ], [ %.pre.i.i, %bb.j ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !58
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.at, ptr readonly align 1 %i.af, i64 %i.aj, i1 false)
  %i.au = load i64, ptr %i.am, align 8, !tbaa !81
  %i.av = add i64 %i.au, %i.aj
  store i64 %i.av, ptr %i.am, align 8, !tbaa !81
  br label %fbuffer_append_str.exit

fbuffer_append_str.exit:                          ; preds = %bb.h, %fbuffer_append_reserved.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.bl

bb.k:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !59
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !81 ; 2 uses
  %i.ba = sub i64 %i.ax, %i.az
  %i.bb = icmp ult i64 %i.ba, 32
  br i1 %i.bb, label %bb.l, label %fbuffer_inc_capa.exit, !prof !71

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %0, i64 noundef 32)
  %.pre = load i64, ptr %i.ay, align 8, !tbaa !81
  br label %fbuffer_inc_capa.exit

fbuffer_inc_capa.exit:                            ; preds = %bb.k, %bb.l
  %i.bc = phi i64 [ %i.az, %bb.k ], [ %.pre, %bb.l ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !58
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bc ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.bg = bitcast double %i.d to i64              ; 4 uses
  %.not.i30 = icmp slt i64 %i.bg, 0               ; 2 uses
  br i1 %.not.i30, label %bb.m, label %bb.n

bb.m:                                             ; preds = %fbuffer_inc_capa.exit
  store i8 45, ptr %i.bf, align 1, !tbaa !79
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %fbuffer_inc_capa.exit
  %.016.i = phi i32 [ 1, %bb.m ], [ 0, %fbuffer_inc_capa.exit ] ; 2 uses
  %i.bh = zext nneg i32 %.016.i to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bh ; 25 uses
  %i.bj = fcmp oeq double %i.d, 0.000000e+00
  br i1 %i.bj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i8 48, ptr %i.bi, align 1, !tbaa !79
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  store i8 46, ptr %i.bk, align 1, !tbaa !79
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  store i8 48, ptr %i.bl, align 1, !tbaa !79
  br label %fpconv_dtoa.exit

bb.p:                                             ; preds = %bb.n
  %i.bm = and i64 %i.bg, 9218868437227405312
  %i.bn = icmp eq i64 %i.bm, 9218868437227405312
  %i.bo = and i64 %i.bg, 4503599627370495         ; 4 uses
  br i1 %i.bn, label %bb.q, label %filter_special.exit.i

bb.q:                                             ; preds = %bb.p
  %.not.i.i31 = icmp eq i64 %i.bo, 0
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 1 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 2 ; 2 uses
  br i1 %.not.i.i31, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 110, ptr %i.bi, align 1, !tbaa !79
  store i8 97, ptr %i.bp, align 1, !tbaa !79
  store i8 110, ptr %i.bq, align 1, !tbaa !79
  br label %fpconv_dtoa.exit

bb.s:                                             ; preds = %bb.q
  store i8 105, ptr %i.bi, align 1, !tbaa !79
  store i8 110, ptr %i.bp, align 1, !tbaa !79
  store i8 102, ptr %i.bq, align 1, !tbaa !79
  br label %fpconv_dtoa.exit

filter_special.exit.i:                            ; preds = %bb.p
  %i.br = lshr i64 %i.bg, 52
  %i.bs = trunc nuw nsw i64 %i.br to i32
  %i.bt = and i32 %i.bs, 2047                     ; 3 uses
  %.not.i.i.i = icmp eq i32 %i.bt, 0              ; 4 uses
  %i.bu = or disjoint i64 %i.bo, 4503599627370496 ; 2 uses
  %i.bv = add nsw i32 %i.bt, -1075
  %.sroa.0.0.i.i.i = select i1 %.not.i.i.i, i64 %i.bo, i64 %i.bu ; 3 uses
  %i.bw = shl nuw nsw i64 %.sroa.0.0.i.i.i, 1
  %i.bx = or disjoint i64 %i.bw, 1                ; 2 uses
end_hunk_2
begin_hunk_3_@raw_generate_json_string:bb.a
  %i.ch = icmp ult i64 %i.cg, 2
  br i1 %i.ch, label %bb.p, label %fbuffer_append.exit7.i, !prof !71

bb.p:                                             ; preds = %bb.o
  call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %i.cb, i64 noundef 2)
  %.pre.i6.i = load i64, ptr %i.ce, align 8, !tbaa !81
  br label %fbuffer_append.exit7.i

fbuffer_append.exit7.i:                           ; preds = %bb.p, %bb.o
  %i.ci = phi i64 [ %i.cf, %bb.o ], [ %.pre.i6.i, %bb.p ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !58
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.ci
  store i16 25180, ptr %i.cl, align 1
  %i.cm = load i64, ptr %i.ce, align 8, !tbaa !81
  %i.cn = add i64 %i.cm, 2
  store i64 %i.cn, ptr %i.ce, align 8, !tbaa !81
  br label %escape_UTF8_char_basic.exit.i

bb.q:                                             ; preds = %.lr.ph.i
  %i.co = load ptr, ptr %i.l, align 8, !tbaa !78  ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !59
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 16 ; 4 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !81 ; 2 uses
  %i.ct = sub i64 %i.cq, %i.cs
  %i.cu = icmp ult i64 %i.ct, 2
  br i1 %i.cu, label %bb.r, label %fbuffer_append.exit9.i, !prof !71

bb.r:                                             ; preds = %bb.q
  call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %i.co, i64 noundef 2)
  %.pre.i8.i = load i64, ptr %i.cr, align 8, !tbaa !81
  br label %fbuffer_append.exit9.i

fbuffer_append.exit9.i:                           ; preds = %bb.r, %bb.q
  %i.cv = phi i64 [ %i.cs, %bb.q ], [ %.pre.i8.i, %bb.r ]
  %i.cw = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !58
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cv
  store i16 26204, ptr %i.cy, align 1
  %i.cz = load i64, ptr %i.cr, align 8, !tbaa !81
  %i.da = add i64 %i.cz, 2
  store i64 %i.da, ptr %i.cr, align 8, !tbaa !81
  br label %escape_UTF8_char_basic.exit.i

bb.s:                                             ; preds = %.lr.ph.i
  %i.db = load ptr, ptr %i.l, align 8, !tbaa !78  ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !59
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 4 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !81 ; 2 uses
  %i.dg = sub i64 %i.dd, %i.df
  %i.dh = icmp ult i64 %i.dg, 2
  br i1 %i.dh, label %bb.t, label %fbuffer_append.exit11.i, !prof !71

bb.t:                                             ; preds = %bb.s
  call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %i.db, i64 noundef 2)
  %.pre.i10.i = load i64, ptr %i.de, align 8, !tbaa !81
  br label %fbuffer_append.exit11.i

fbuffer_append.exit11.i:                          ; preds = %bb.t, %bb.s
  %i.di = phi i64 [ %i.df, %bb.s ], [ %.pre.i10.i, %bb.t ]
  %i.dj = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !58
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.di
  store i16 28252, ptr %i.dl, align 1
  %i.dm = load i64, ptr %i.de, align 8, !tbaa !81
  %i.dn = add i64 %i.dm, 2
  store i64 %i.dn, ptr %i.de, align 8, !tbaa !81
  br label %escape_UTF8_char_basic.exit.i

bb.u:                                             ; preds = %.lr.ph.i
  %i.do = load ptr, ptr %i.l, align 8, !tbaa !78  ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !59
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 16 ; 4 uses
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !81 ; 2 uses
  %i.dt = sub i64 %i.dq, %i.ds
  %i.du = icmp ult i64 %i.dt, 2
  br i1 %i.du, label %bb.v, label %fbuffer_append.exit13.i, !prof !71

bb.v:                                             ; preds = %bb.u
  call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %i.do, i64 noundef 2)
  %.pre.i12.i = load i64, ptr %i.dr, align 8, !tbaa !81
  br label %fbuffer_append.exit13.i

fbuffer_append.exit13.i:                          ; preds = %bb.v, %bb.u
  %i.dv = phi i64 [ %i.ds, %bb.u ], [ %.pre.i12.i, %bb.v ]
  %i.dw = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !58
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dv
  store i16 29276, ptr %i.dy, align 1
  %i.dz = load i64, ptr %i.dr, align 8, !tbaa !81
  %i.ea = add i64 %i.dz, 2
  store i64 %i.ea, ptr %i.dr, align 8, !tbaa !81
  br label %escape_UTF8_char_basic.exit.i

bb.w:                                             ; preds = %.lr.ph.i
  %i.eb = load ptr, ptr %i.l, align 8, !tbaa !78  ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !59
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 16 ; 4 uses
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !81 ; 2 uses
  %i.eg = sub i64 %i.ed, %i.ef
  %i.eh = icmp ult i64 %i.eg, 2
  br i1 %i.eh, label %bb.x, label %fbuffer_append.exit15.i, !prof !71

bb.x:                                             ; preds = %bb.w
  call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %i.eb, i64 noundef 2)
  %.pre.i14.i = load i64, ptr %i.ee, align 8, !tbaa !81
  br label %fbuffer_append.exit15.i

fbuffer_append.exit15.i:                          ; preds = %bb.x, %bb.w
  %i.ei = phi i64 [ %i.ef, %bb.w ], [ %.pre.i14.i, %bb.x ]
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !58
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ei
  store i16 29788, ptr %i.el, align 1
  %i.em = load i64, ptr %i.ee, align 8, !tbaa !81
  %i.en = add i64 %i.em, 2
  store i64 %i.en, ptr %i.ee, align 8, !tbaa !81
  br label %escape_UTF8_char_basic.exit.i

bb.y:                                             ; preds = %.lr.ph.i
  %i.eo = zext i8 %i.an to i32                    ; 2 uses
  %i.ep = lshr i32 %i.eo, 4
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr @.str.95, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !tbaa !79
  %i.et = and i32 %i.eo, 15
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr @.str.95, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !79
  %i.ex = load ptr, ptr %i.l, align 8, !tbaa !78  ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !59
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 16 ; 4 uses
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !81 ; 2 uses
  %i.fc = sub i64 %i.ez, %i.fb
  %i.fd = icmp ult i64 %i.fc, 6
  br i1 %i.fd, label %bb.z, label %fbuffer_append.exit17.i, !prof !71

bb.z:                                             ; preds = %bb.y
  call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %i.ex, i64 noundef 6)
  %.pre.i16.i = load i64, ptr %i.fa, align 8, !tbaa !81
  br label %fbuffer_append.exit17.i

fbuffer_append.exit17.i:                          ; preds = %bb.z, %bb.y
  %i.fe = phi i64 [ %i.fb, %bb.y ], [ %.pre.i16.i, %bb.z ]
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ex, i64 32
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !58
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fe ; 3 uses
  store i32 808482140, ptr %i.fh, align 1
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  store i8 %i.es, ptr %.sroa.4.0..sroa_idx.i, align 1
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fh, i64 5
  store i8 %i.ew, ptr %.sroa.5.0..sroa_idx.i, align 1
  %i.fi = load i64, ptr %i.fa, align 8, !tbaa !81
  %i.fj = add i64 %i.fi, 6
  store i64 %i.fj, ptr %i.fa, align 8, !tbaa !81
  br label %escape_UTF8_char_basic.exit.i

escape_UTF8_char_basic.exit.i:                    ; preds = %fbuffer_append.exit17.i, %fbuffer_append.exit15.i, %fbuffer_append.exit13.i, %fbuffer_append.exit11.i, %fbuffer_append.exit9.i, %fbuffer_append.exit7.i, %fbuffer_append.exit5.i, %fbuffer_append.exit3.i, %fbuffer_append.exit.i
  %i.fk = load ptr, ptr %3, align 8, !tbaa !76
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 1 ; 2 uses
  store ptr %i.fl, ptr %3, align 8, !tbaa !76
  store ptr %i.fl, ptr %i.u, align 8, !tbaa !77
  %i.fm = load ptr, ptr @search_escape_basic_impl, align 8, !tbaa !12
  %i.fn = call zeroext i8 %i.fm(ptr noundef nonnull %3) #24, !callees !100, !inline_history !101
  %.not.i10 = icmp eq i8 %i.fn, 0
  br i1 %.not.i10, label %convert_UTF8_to_JSON.exit, label %.lr.ph.i

bb.aa:                                            ; preds = %RSTRING_PTR.exit
  tail call void (i64, ptr, ...) @raise_generator_error(i64 noundef %2, ptr noundef nonnull @.str.73) #29
  unreachable

convert_UTF8_to_JSON.exit:                        ; preds = %escape_UTF8_char_basic.exit.i, %bb.h, %bb.e, %bb.g
  %i.fo = load i64, ptr %i.a, align 8, !tbaa !59
  %i.fp = load i64, ptr %i.c, align 8, !tbaa !81  ; 2 uses
  %i.fq = icmp eq i64 %i.fo, %i.fp
  br i1 %i.fq, label %bb.ab, label %fbuffer_append_char.exit12, !prof !71

bb.ab:                                            ; preds = %convert_UTF8_to_JSON.exit
  call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %0, i64 noundef 1)
  %.pre.i11 = load i64, ptr %i.c, align 8, !tbaa !81
  br label %fbuffer_append_char.exit12

fbuffer_append_char.exit12:                       ; preds = %convert_UTF8_to_JSON.exit, %bb.ab
  %i.fr = phi i64 [ %i.fp, %convert_UTF8_to_JSON.exit ], [ %.pre.i11, %bb.ab ]
  %i.fs = load ptr, ptr %i.g, align 8, !tbaa !58
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fr
  store i8 34, ptr %i.ft, align 1, !tbaa !79
  %i.fu = load i64, ptr %i.c, align 8, !tbaa !81
  %i.fv = add i64 %i.fu, 1
  store i64 %i.fv, ptr %i.c, align 8, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void
}

; Function Attrs: noreturn nounwind uwtable
define internal void @raise_generator_error(i64 noundef %0, ptr noundef %1, ...) unnamed_addr #13 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.a = call i64 @rb_vsprintf(ptr noundef %1, ptr noundef nonnull %2) #24
  call void @llvm.va_end.p0(ptr nonnull %2)
  call fastcc void @raise_generator_error_str(i64 noundef %0, i64 noundef %i.a) #29
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i64 @ensure_valid_encoding(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #6 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 5 uses
  %i.b = tail call i32 @rb_enc_str_coderange(i64 noundef %1) #24
  switch i32 %i.b, label %valid_json_string_p.exit.thread31 [
    i32 1048576, label %valid_json_string_p.exit.thread
    i32 2097152, label %valid_json_string_p.exit
  ], !prof !87

valid_json_string_p.exit:                         ; preds = %bb.a
  %i.c = inttoptr i64 %1 to ptr
  %i.d = load i64, ptr %i.c, align 8, !tbaa !23
  %i.e = trunc i64 %i.d to i32
  %i.f = lshr i32 %i.e, 22
  %i.g = and i32 %i.f, 127                        ; 2 uses
  %i.h = load i32, ptr @usascii_encindex, align 4, !tbaa !6
  %i.i = icmp eq i32 %i.g, %i.h
  %i.j = load i32, ptr @utf8_encindex, align 4
  %i.k = icmp eq i32 %i.g, %i.j
  %.0.i.i = select i1 %i.i, i1 true, i1 %i.k
  br i1 %.0.i.i, label %valid_json_string_p.exit.thread, label %valid_json_string_p.exit.thread31, !prof !88

valid_json_string_p.exit.thread31:                ; preds = %bb.a, %valid_json_string_p.exit
  br i1 %2, label %bb.i, label %bb.b

bb.b:                                             ; preds = %valid_json_string_p.exit.thread31
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !64   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.o = load i8, ptr %i.n, align 8, !tbaa !50, !range !48, !noundef !49
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.r = load i64, ptr %i.q, align 8, !tbaa !46   ; 2 uses
  %i.s = and i64 %i.r, -5
  %.not38 = icmp eq i64 %i.s, 0
  br i1 %.not38, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %1, ptr %i.a, align 16, !tbaa !10
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.t, align 8, !tbaa !10
  %i.u = call i64 @rb_proc_call_with_block(i64 noundef %i.r, i32 noundef 2, ptr noundef nonnull %i.a, i64 noundef 4) #24 ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %.not.not = icmp eq i64 %i.u, %1
  br i1 %.not.not, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = icmp eq i64 %i.u, 0
  %i.w = and i64 %i.u, 7
  %i.x = icmp ne i64 %i.w, 0
  %i.y = or i1 %i.v, %i.x
  br i1 %i.y, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.e
  %i.z = inttoptr i64 %i.u to ptr
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !23
  %i.ab = and i64 %i.aa, 31
  %i.ac = icmp eq i64 %i.ab, 5
  br i1 %i.ac, label %bb.f, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.f:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.ad = call fastcc zeroext i1 @valid_json_string_p(i64 noundef %i.u)
  br i1 %i.ad, label %valid_json_string_p.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void (i64, ptr, ...) @raise_generator_error(i64 noundef %1, ptr noundef nonnull @.str.73) #29
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.e, %rbimpl_RB_TYPE_P_fastpath.exit
  br i1 %3, label %bb.h, label %valid_json_string_p.exit.thread

bb.h:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.ae = call fastcc i64 @rb_class_of(i64 noundef %i.u) #30
  call void (i64, ptr, ...) @raise_generator_error(i64 noundef %i.u, ptr noundef nonnull @.str.83, i64 noundef %i.ae) #29
  unreachable

bb.i:                                             ; preds = %bb.d, %bb.c, %bb.b, %valid_json_string_p.exit.thread31
  %i.af = inttoptr i64 %1 to ptr
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !23
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = lshr i32 %i.ah, 22
  %i.aj = and i32 %i.ai, 127
  %i.ak = load i32, ptr @binary_encindex, align 4, !tbaa !6
  %i.al = icmp eq i32 %i.aj, %i.ak
  br i1 %i.al, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.am = call i64 @rb_str_dup(i64 noundef %1) #24
  %i.an = load i32, ptr @utf8_encindex, align 4, !tbaa !6
  %i.ao = call i64 @rb_enc_associate_index(i64 noundef %i.am, i32 noundef %i.an) #24 ; 3 uses
  %i.ap = call i32 @rb_enc_str_coderange(i64 noundef %i.ao) #24
  switch i32 %i.ap, label %bb.l [
    i32 1048576, label %valid_json_string_p.exit.thread
    i32 2097152, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  call void (ptr, ...) @rb_warn(ptr noundef nonnull @.str.100) #26
  br label %valid_json_string_p.exit.thread

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.aq = call i64 @rb_rescue(ptr noundef nonnull @encode_json_string_try, i64 noundef %1, ptr noundef nonnull @encode_json_string_rescue, i64 noundef %1) #24
  br label %valid_json_string_p.exit.thread

valid_json_string_p.exit.thread:                  ; preds = %bb.j, %bb.k, %rbimpl_RB_TYPE_P_fastpath.exit.thread, %bb.f, %bb.a, %valid_json_string_p.exit, %bb.l
  %.3 = phi i64 [ %1, %bb.a ], [ %i.aq, %bb.l ], [ %i.u, %rbimpl_RB_TYPE_P_fastpath.exit.thread ], [ %1, %valid_json_string_p.exit ], [ %i.u, %bb.f ], [ %i.ao, %bb.k ], [ %i.ao, %bb.j ]
  ret i64 %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc void @generate_json_fragment(ptr nofree noundef captures(none) %0, i64 noundef range(i64 5, 4) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = tail call i64 @rb_struct_aref(i64 noundef range(i64 5, 4) %1, i64 noundef 1) #24 ; 5 uses
  %i.c = icmp eq i64 %i.b, 0
  %i.d = and i64 %i.b, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %bb.b, !prof !38

bb.b:                                             ; preds = %bb.a
  %i.g = inttoptr i64 %i.b to ptr
  %i.h = load i64, ptr %i.g, align 8, !tbaa !23
  %i.i = and i64 %i.h, 31
  %i.j = icmp eq i64 %i.i, 5
  br i1 %i.j, label %Check_Type.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, !prof !33

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %bb.b, %bb.a
  tail call void @rb_unexpected_type(i64 noundef %i.b, i32 noundef 5) #28
  unreachable

Check_Type.exit:                                  ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.b, ptr %i.a, align 8, !tbaa !10
  %i.k = call ptr @rb_string_value_ptr(ptr noundef nonnull %i.a) #24
  %i.l = load i64, ptr %i.a, align 8, !tbaa !10
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !40   ; 5 uses
  %.not.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i, label %fbuffer_append_str.exit, label %bb.c

bb.c:                                             ; preds = %Check_Type.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !59
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !81   ; 2 uses
  %i.t = sub i64 %i.q, %i.s
  %i.u = icmp ugt i64 %i.o, %i.t
  br i1 %i.u, label %bb.d, label %fbuffer_append_reserved.exit.i.i, !prof !71

bb.d:                                             ; preds = %bb.c
  call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %0, i64 noundef %i.o)
  %.pre.i.i = load i64, ptr %i.r, align 8, !tbaa !81
  br label %fbuffer_append_reserved.exit.i.i

fbuffer_append_reserved.exit.i.i:                 ; preds = %bb.d, %bb.c
  %i.v = phi i64 [ %i.s, %bb.c ], [ %.pre.i.i, %bb.d ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !58
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr readonly align 1 %i.k, i64 %i.o, i1 false)
  %i.z = load i64, ptr %i.r, align 8, !tbaa !81
  %i.aa = add i64 %i.z, %i.o
  store i64 %i.aa, ptr %i.r, align 8, !tbaa !81
  br label %fbuffer_append_str.exit

fbuffer_append_str.exit:                          ; preds = %Check_Type.exit, %fbuffer_append_reserved.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @rb_class_of(i64 noundef %0) unnamed_addr #14 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  switch i64 %0, label %bb.f [
    i64 0, label %bb.h
    i64 4, label %bb.d
    i64 20, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.g = trunc i64 %0 to i1
  br i1 %i.g, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = and i64 %0, 254
  %i.i = icmp eq i64 %i.h, 12
  %spec.select = select i1 %i.i, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.c, %bb.e, %bb.d, %bb.b
  %.0.in = phi ptr [ %i.f, %bb.b ], [ @rb_cNilClass, %bb.d ], [ @rb_cTrueClass, %bb.e ], [ @rb_cFalseClass, %bb.c ], [ @rb_cInteger, %bb.f ], [ %spec.select, %bb.g ]
  %.0 = load i64, ptr %.0.in, align 8, !tbaa !10
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @generate_json_fallback(ptr noundef %0, ptr nofree noundef captures(none) %1, i64 noundef range(i64 5, 4) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = load i64, ptr @i_to_json, align 8, !tbaa !10
  %i.c = tail call i32 @rb_respond_to(i64 noundef %2, i64 noundef %i.b) #24
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !63   ; 2 uses
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.d, !prof !71

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @vstate_spill(ptr noundef nonnull %1)
  %.pre.i = load i64, ptr %i.d, align 8, !tbaa !63
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = phi i64 [ %.pre.i, %bb.c ], [ %i.e, %bb.b ] ; 6 uses
  %i.g = icmp eq i64 %i.f, 0
  %i.h = and i64 %i.f, 7
  %i.i = icmp ne i64 %i.h, 0
  %i.j = or i1 %i.g, %i.i
  br i1 %i.j, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !38

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.d
  %i.k = inttoptr i64 %i.f to ptr                 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !23
  %i.m = and i64 %i.l, 95
  %or.cond.not.i.i = icmp eq i64 %i.m, 76
  br i1 %or.cond.not.i.i, label %bb.e, label %.critedge.i.i, !prof !26

bb.e:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !14   ; 2 uses
  %i.p = and i64 %i.o, -2                         ; 2 uses
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = trunc i64 %i.o to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  br i1 %i.r, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !17
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.f, %bb.e
  %i.u = phi ptr [ %i.t, %bb.f ], [ %i.s, %bb.e ] ; 2 uses
  %i.v = icmp eq i64 %i.p, ptrtoint (ptr @JSON_Generator_State_type to i64)
  br i1 %i.v, label %json_call_to_json.exit, label %.preheader.i.i, !prof !27

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.g
  %.016.i.i = phi ptr [ %i.x, %bb.g ], [ %i.q, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.g

bb.g:                                             ; preds = %.preheader.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !28   ; 2 uses
  %i.y = icmp eq ptr %i.x, @JSON_Generator_State_type
  br i1 %i.y, label %json_call_to_json.exit, label %.preheader.i.i

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.d
  %i.z = tail call ptr @rb_check_typeddata(i64 noundef %i.f, ptr noundef nonnull @JSON_Generator_State_type) #24
  %.pre7.i = load i64, ptr %i.d, align 8, !tbaa !63
  br label %json_call_to_json.exit

json_call_to_json.exit:                           ; preds = %bb.g, %RTYPEDDATA_GET_DATA.exit.i.i, %.critedge.i.i
  %i.aa = phi i64 [ %.pre7.i, %.critedge.i.i ], [ %i.f, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.f, %bb.g ]
  %.1.i.i = phi ptr [ %i.z, %.critedge.i.i ], [ %i.u, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.u, %bb.g ]
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !67
  %i.ad = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 56
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !53
  %i.ae = load i64, ptr @i_to_json, align 8, !tbaa !10
  %i.af = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef range(i64 5, 4) %2, i64 noundef %i.ae, i32 noundef 1, i64 noundef %i.aa) #24 ; 5 uses
  %i.ag = icmp eq i64 %i.af, 0
  %i.ah = and i64 %i.af, 7
  %i.ai = icmp ne i64 %i.ah, 0
  %i.aj = or i1 %i.ag, %i.ai
  br i1 %i.aj, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %bb.h, !prof !38

bb.h:                                             ; preds = %json_call_to_json.exit
  %i.ak = inttoptr i64 %i.af to ptr
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !23
  %i.am = and i64 %i.al, 31
  %i.an = icmp eq i64 %i.am, 5
  br i1 %i.an, label %Check_Type.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, !prof !33

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %bb.h, %json_call_to_json.exit
  tail call void @rb_unexpected_type(i64 noundef %i.af, i32 noundef 5) #28
  unreachable

Check_Type.exit:                                  ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.af, ptr %i.a, align 8, !tbaa !10
  %i.ao = call ptr @rb_string_value_ptr(ptr noundef nonnull %i.a) #24
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !10
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !40 ; 5 uses
  %.not.i.i10 = icmp eq i64 %i.as, 0
  br i1 %.not.i.i10, label %fbuffer_append_str.exit, label %bb.i

bb.i:                                             ; preds = %Check_Type.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.au = load i64, ptr %i.at, align 8, !tbaa !59
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !81 ; 2 uses
  %i.ax = sub i64 %i.au, %i.aw
  %i.ay = icmp ugt i64 %i.as, %i.ax
  br i1 %i.ay, label %bb.j, label %fbuffer_append_reserved.exit.i.i, !prof !71

bb.j:                                             ; preds = %bb.i
  call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %0, i64 noundef %i.as)
  %.pre.i.i = load i64, ptr %i.av, align 8, !tbaa !81
  br label %fbuffer_append_reserved.exit.i.i

fbuffer_append_reserved.exit.i.i:                 ; preds = %bb.j, %bb.i
  %i.az = phi i64 [ %i.aw, %bb.i ], [ %.pre.i.i, %bb.j ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !58
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.az
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bc, ptr readonly align 1 %i.ao, i64 %i.as, i1 false)
  %i.bd = load i64, ptr %i.av, align 8, !tbaa !81
  %i.be = add i64 %i.bd, %i.as
  store i64 %i.be, ptr %i.av, align 8, !tbaa !81
  br label %fbuffer_append_str.exit

fbuffer_append_str.exit:                          ; preds = %Check_Type.exit, %fbuffer_append_reserved.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.k:                                             ; preds = %bb.a
  %i.bf = load i64, ptr @i_to_s, align 8, !tbaa !10
  %i.bg = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %2, i64 noundef %i.bf, i32 noundef 0) #24 ; 5 uses
  %i.bh = icmp eq i64 %i.bg, 0
  %i.bi = and i64 %i.bg, 7
  %i.bj = icmp ne i64 %i.bi, 0
  %i.bk = or i1 %i.bh, %i.bj
  br i1 %i.bk, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i11, label %bb.l, !prof !38

bb.l:                                             ; preds = %bb.k
  %i.bl = inttoptr i64 %i.bg to ptr
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !23
  %i.bn = and i64 %i.bm, 31
  %i.bo = icmp eq i64 %i.bn, 5
  br i1 %i.bo, label %Check_Type.exit12, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i11, !prof !33

rbimpl_RB_TYPE_P_fastpath.exit.thread.i11:        ; preds = %bb.l, %bb.k
  tail call void @rb_unexpected_type(i64 noundef %i.bg, i32 noundef 5) #28
  unreachable

Check_Type.exit12:                                ; preds = %bb.l
  %i.bp = tail call fastcc i64 @ensure_valid_encoding(ptr noundef readonly %1, i64 noundef %i.bg, i1 noundef zeroext false, i1 noundef zeroext false)
  tail call fastcc void @raw_generate_json_string(ptr noundef %0, ptr noundef readonly %1, i64 noundef %i.bp)
  br label %bb.m

bb.m:                                             ; preds = %Check_Type.exit12, %fbuffer_append_str.exit
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @fbuffer_append(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #6 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !59
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !81   ; 2 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = icmp ugt i64 %2, %i.e
  br i1 %i.f, label %bb.c, label %fbuffer_append_reserved.exit, !prof !71

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %0, i64 noundef %2)
  %.pre = load i64, ptr %i.c, align 8, !tbaa !81
  br label %fbuffer_append_reserved.exit

fbuffer_append_reserved.exit:                     ; preds = %bb.b, %bb.c
  %i.g = phi i64 [ %i.d, %bb.b ], [ %.pre, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !58
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr readonly align 1 %1, i64 %2, i1 false)
  %i.k = load i64, ptr %i.c, align 8, !tbaa !81
  %i.l = add i64 %i.k, %2
  store i64 %i.l, ptr %i.c, align 8, !tbaa !81
  br label %bb.d

bb.d:                                             ; preds = %fbuffer_append_reserved.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @fbuffer_do_inc_capa(ptr nofree noundef captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !54
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !59
  %i.e = icmp ult i64 %i.d, 16383
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @fbuffer_realloc(ptr noundef nonnull %0, i64 noundef 16383)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call fastcc void @fbuffer_flush(ptr noundef nonnull %0)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = load i64, ptr %i.c, align 8, !tbaa !59
  %i.g = icmp ult i64 %1, %i.f
  br i1 %i.g, label %fbuffer_realloc.exit, label %bb.f, !prof !27

bb.f:                                             ; preds = %bb.e, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !58   ; 2 uses
  %.not17 = icmp eq ptr %i.i, null
  br i1 %.not17, label %bb.g, label %._crit_edge, !prof !71

._crit_edge:                                      ; preds = %bb.f
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !59
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !56
  %i.l = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.k, i64 noundef 1) #31 ; 2 uses
  store ptr %i.l, ptr %i.h, align 8, !tbaa !58
  %i.m = load i64, ptr %i.j, align 8, !tbaa !56   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.m, ptr %i.n, align 8, !tbaa !59
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g
  %i.o = phi ptr [ %i.i, %._crit_edge ], [ %i.l, %bb.g ] ; 2 uses
  %i.p = phi i64 [ %.pre, %._crit_edge ], [ %i.m, %bb.g ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !81
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.0 = phi i64 [ %i.p, %bb.h ], [ %i.v, %bb.i ]  ; 6 uses
  %i.t = sub i64 %.0, %i.s
  %i.u = icmp ugt i64 %1, %i.t
  %i.v = shl i64 %.0, 1
  br i1 %i.u, label %bb.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = icmp ugt i64 %.0, %i.p
  br i1 %i.w, label %bb.k, label %fbuffer_realloc.exit

bb.k:                                             ; preds = %bb.j
  %i.x = load i32, ptr %0, align 8, !tbaa !57
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.z = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %.0, i64 noundef 1) #31 ; 2 uses
  store ptr %i.z, ptr %i.h, align 8, !tbaa !58
  store i32 0, ptr %0, align 8, !tbaa !57
  %i.aa = load i64, ptr %i.r, align 8, !tbaa !81  ; 2 uses
  %.not.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i, label %ruby_nonempty_memcpy.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull readonly align 1 %i.o, i64 %i.aa, i1 false)
  br label %ruby_nonempty_memcpy.exit.i

bb.n:                                             ; preds = %bb.k
  %i.ab = tail call nonnull ptr @ruby_xrealloc2(ptr noundef nonnull %i.o, i64 noundef %.0, i64 noundef 1) #32
  store ptr %i.ab, ptr %i.h, align 8, !tbaa !58
  br label %ruby_nonempty_memcpy.exit.i

ruby_nonempty_memcpy.exit.i:                      ; preds = %bb.n, %bb.m, %bb.l
  store i64 %.0, ptr %i.q, align 8, !tbaa !59
  br label %fbuffer_realloc.exit

fbuffer_realloc.exit:                             ; preds = %ruby_nonempty_memcpy.exit.i, %bb.j, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @fbuffer_realloc(ptr nofree noundef captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !59
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 8, !tbaa !57
  %i.e = icmp eq i32 %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58   ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %1, i64 noundef 1) #31 ; 2 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !58
  store i32 0, ptr %0, align 8, !tbaa !57
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !81   ; 2 uses
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %ruby_nonempty_memcpy.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr readonly align 1 %i.g, i64 %i.j, i1 false)
  br label %ruby_nonempty_memcpy.exit

bb.e:                                             ; preds = %bb.b
  %i.k = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.g, i64 noundef %1, i64 noundef 1) #32
  store ptr %i.k, ptr %i.f, align 8, !tbaa !58
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %bb.d, %bb.c, %bb.e
  store i64 %1, ptr %i.a, align 8, !tbaa !59
  br label %bb.f

bb.f:                                             ; preds = %ruby_nonempty_memcpy.exit, %bb.a
  ret void
}

; Function Attrs: allocsize(0,1)
declare noalias nonnull ptr @ruby_xmalloc2(i64 noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: allocsize(1,2)
declare nonnull ptr @ruby_xrealloc2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare double @rb_float_value(i64 noundef) local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #18

; Function Attrs: nounwind uwtable
define internal fastcc void @fbuffer_append_str(ptr nofree noundef captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !10
  %i.b = call ptr @rb_string_value_ptr(ptr noundef nonnull %i.a) #24
  %i.c = load i64, ptr %i.a, align 8, !tbaa !10
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !40   ; 5 uses
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %fbuffer_append.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !59
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !81   ; 2 uses
  %i.k = sub i64 %i.h, %i.j
  %i.l = icmp ugt i64 %i.f, %i.k
  br i1 %i.l, label %bb.c, label %fbuffer_append_reserved.exit.i, !prof !71

bb.c:                                             ; preds = %bb.b
  call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %0, i64 noundef %i.f)
  %.pre.i = load i64, ptr %i.i, align 8, !tbaa !81
  br label %fbuffer_append_reserved.exit.i

fbuffer_append_reserved.exit.i:                   ; preds = %bb.c, %bb.b
  %i.m = phi i64 [ %i.j, %bb.b ], [ %.pre.i, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !58
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr readonly align 1 %i.b, i64 %i.f, i1 false)
  %i.q = load i64, ptr %i.i, align 8, !tbaa !81
  %i.r = add i64 %i.q, %i.f
  store i64 %i.r, ptr %i.i, align 8, !tbaa !81
  br label %fbuffer_append.exit

fbuffer_append.exit:                              ; preds = %bb.a, %fbuffer_append_reserved.exit.i
  ret void
}

declare ptr @rb_string_value_ptr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @generate_json_string(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call fastcc i64 @ensure_valid_encoding(ptr noundef %1, i64 noundef %2, i1 noundef zeroext false, i1 noundef zeroext false)
  tail call fastcc void @raw_generate_json_string(ptr noundef %0, ptr noundef %1, i64 noundef %i.a)
  ret void
}

declare i64 @rb_sym2str(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @json_object_i(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 5 uses
  %i.b = inttoptr i64 %2 to ptr                   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !94   ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !60   ; 15 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 7 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !64   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !67
  %i.j = icmp eq i64 %0, 0
  %i.k = and i64 %0, 7
  %i.l = icmp ne i64 %i.k, 0
  %i.m = or i1 %i.j, %i.l
  br i1 %i.m, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = inttoptr i64 %0 to ptr
  %i.o = load i64, ptr %i.n, align 8, !tbaa !23
  %i.p = trunc i64 %i.o to i32
  %i.q = and i32 %i.p, 31
  br label %rb_type.exit

bb.c:                                             ; preds = %bb.a
  %i.r = icmp ult i64 %0, 37
  %switch.shifted = lshr i64 68720525329, %0
  %switch.lobit = trunc i64 %switch.shifted to i1
  %or.cond102 = select i1 %i.r, i1 %switch.lobit, i1 false
  br i1 %or.cond102, label %switch.lookup, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = trunc i64 %0 to i1
  br i1 %i.s, label %rb_type.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = and i64 %0, 254
  %i.u = icmp eq i64 %i.t, 12
  %spec.select.i = select i1 %i.u, i32 20, i32 4
  br label %rb_type.exit

switch.lookup:                                    ; preds = %bb.c
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.json_object_i, i64 %0
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %rb_type.exit

rb_type.exit:                                     ; preds = %switch.lookup, %bb.b, %bb.d, %bb.e
  %.0.i = phi i32 [ %i.q, %bb.b ], [ %spec.select.i, %bb.e ], [ 21, %bb.d ], [ %switch.ext, %switch.lookup ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  %i.w = load i8, ptr %i.v, align 4, !tbaa !96, !range !48, !noundef !49
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %rb_type.exit
  store i8 0, ptr %i.v, align 4, !tbaa !96
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %.0.i, ptr %i.y, align 8, !tbaa !95
  br label %bb.i

bb.g:                                             ; preds = %rb_type.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !59
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !81 ; 2 uses
  %i.ad = icmp eq i64 %i.aa, %i.ac
  br i1 %i.ad, label %bb.h, label %fbuffer_append_char.exit, !prof !71

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %i.e, i64 noundef 1)
  %.pre.i = load i64, ptr %i.ab, align 8, !tbaa !81
  br label %fbuffer_append_char.exit

fbuffer_append_char.exit:                         ; preds = %bb.g, %bb.h
  %i.ae = phi i64 [ %i.ac, %bb.g ], [ %.pre.i, %bb.h ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !58
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  store i8 44, ptr %i.ah, align 1, !tbaa !79
  %i.ai = load i64, ptr %i.ab, align 8, !tbaa !81
  %i.aj = add i64 %i.ai, 1
  store i64 %i.aj, ptr %i.ab, align 8, !tbaa !81
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !64
  br label %bb.i

bb.i:                                             ; preds = %fbuffer_append_char.exit, %bb.f
  %i.ak = phi ptr [ %.pre, %fbuffer_append_char.exit ], [ %i.g, %bb.f ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load i64, ptr %i.al, align 8, !tbaa !44 ; 2 uses
  %.not61 = icmp eq i64 %i.am, 0
  br i1 %.not61, label %bb.k, label %bb.j, !prof !27

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @fbuffer_append_str(ptr noundef %i.e, i64 noundef %i.am)
  %.pre91 = load ptr, ptr %i.f, align 8, !tbaa !64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.an = phi ptr [ %.pre91, %bb.j ], [ %i.ak, %bb.i ]
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !39 ; 2 uses
  %.not62 = icmp eq i64 %i.ao, 0
  br i1 %.not62, label %.peel.begin, label %bb.l, !prof !27

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @fbuffer_append_str_repeat(ptr noundef %i.e, i64 noundef %i.ao, i64 noundef %i.i)
  br label %.peel.begin

.peel.begin:                                      ; preds = %bb.l, %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %trunc = trunc nuw i32 %.0.i to i8
  switch i8 %trunc, label %bb.m [
    i8 5, label %.loopexit
    i8 20, label %.loopexit88
  ]

bb.m:                                             ; preds = %.peel.begin
  %i.aq = load ptr, ptr %i.f, align 8, !tbaa !64  ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 80
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !50, !range !48, !noundef !49
  %i.at = trunc nuw i8 %i.as to i1                ; 2 uses
  br i1 %i.at, label %bb.n, label %.loopexit89

bb.n:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.av = load i64, ptr %i.au, align 8, !tbaa !46 ; 2 uses
  %i.aw = and i64 %i.av, -5
  %.not72.peel = icmp eq i64 %i.aw, 0
  br i1 %.not72.peel, label %.loopexit90, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %0, ptr %i.a, align 16, !tbaa !10
  store i64 20, ptr %i.ap, align 8, !tbaa !10
  %i.ax = call i64 @rb_proc_call_with_block(i64 noundef %i.av, i32 noundef 2, ptr noundef nonnull %i.a, i64 noundef 4) #24 ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.ay = icmp eq i64 %i.ax, 0
  %i.az = and i64 %i.ax, 7
  %i.ba = icmp ne i64 %i.az, 0
  %i.bb = or i1 %i.ay, %i.ba
  br i1 %i.bb, label %bb.p, label %rb_type.exit69.peel

bb.p:                                             ; preds = %bb.o
  switch i64 %i.ax, label %bb.q [
    i64 0, label %rb_type.exit69.peel.thread
end_hunk_3
begin_hunk_4_@json_object_i:bb.a

bb.r:                                             ; preds = %.loopexit
  call fastcc void @json_inspect_hash_with_mixed_keys(ptr noundef nonnull %i.b)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.loopexit
  %i.bj = inttoptr i64 %.058.lcssa to ptr
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !86
  %i.bm = load i64, ptr @rb_cString, align 8, !tbaa !10
  %i.bn = icmp eq i64 %i.bl, %i.bm
  br i1 %i.bn, label %bb.w, label %bb.t, !prof !27

bb.t:                                             ; preds = %bb.s
  %i.bo = call fastcc i64 @convert_string_subclass(i64 noundef %.058.lcssa)
  br label %bb.w

.loopexit88:                                      ; preds = %bb.q, %rb_type.exit69.peel, %.peel.begin
  %.058.lcssa84 = phi i64 [ %0, %.peel.begin ], [ %i.ax, %rb_type.exit69.peel ], [ %i.ax, %bb.q ]
  %.0.lcssa80 = phi i1 [ false, %.peel.begin ], [ true, %rb_type.exit69.peel ], [ true, %bb.q ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !95
  %.not63 = icmp eq i32 %i.bq, 20
  br i1 %.not63, label %bb.v, label %bb.u, !prof !27

bb.u:                                             ; preds = %.loopexit88
  call fastcc void @json_inspect_hash_with_mixed_keys(ptr noundef nonnull %i.b)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.loopexit88
  %i.br = call i64 @rb_sym2str(i64 noundef %.058.lcssa84) #24
  br label %bb.w

rb_type.exit69.peel.thread:                       ; preds = %bb.p, %bb.p, %bb.p, %bb.q, %bb.p, %rb_type.exit69.peel
  %i.bs = load ptr, ptr %i.f, align 8, !tbaa !64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 80
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !50, !range !48, !noundef !49
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %.loopexit90, label %.loopexit89

.loopexit90:                                      ; preds = %rb_type.exit69.peel.thread, %bb.n
  %.058.lcssa86 = phi i64 [ %0, %bb.n ], [ %i.ax, %rb_type.exit69.peel.thread ] ; 2 uses
  %i.bw = call fastcc i64 @rb_class_of(i64 noundef %.058.lcssa86) #30
  call void (i64, ptr, ...) @raise_generator_error(i64 noundef %.058.lcssa86, ptr noundef nonnull @.str.83, i64 noundef %i.bw) #29
  unreachable

.loopexit89:                                      ; preds = %rb_type.exit69.peel.thread, %bb.m
  %.058.lcssa85 = phi i64 [ %0, %bb.m ], [ %i.ax, %rb_type.exit69.peel.thread ]
  %i.bx = call i64 @rb_convert_type(i64 noundef %.058.lcssa85, i32 noundef 5, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.59) #24
  br label %bb.w

bb.w:                                             ; preds = %bb.s, %bb.t, %.loopexit89, %bb.v
  %.083 = phi i1 [ %i.at, %.loopexit89 ], [ %.0.lcssa80, %bb.v ], [ %.0.lcssa, %bb.t ], [ %.0.lcssa, %bb.s ]
  %.056 = phi i64 [ %i.bx, %.loopexit89 ], [ %i.br, %bb.v ], [ %i.bo, %bb.t ], [ %.058.lcssa, %bb.s ]
  %i.by = call fastcc i64 @ensure_valid_encoding(ptr noundef nonnull %i.d, i64 noundef %.056, i1 noundef zeroext %.083, i1 noundef zeroext true) ; 3 uses
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !86
  %i.cc = load i64, ptr @rb_cString, align 8, !tbaa !10
  %i.cd = icmp eq i64 %i.cb, %i.cc
  br i1 %i.cd, label %bb.x, label %bb.y, !prof !27

bb.x:                                             ; preds = %bb.w
  call fastcc void @raw_generate_json_string(ptr noundef %i.e, ptr noundef nonnull %i.d, i64 noundef %i.by)
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  call void @generate_json(ptr noundef %i.e, ptr noundef nonnull %i.d, i64 noundef %i.by)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !43
  %.not65 = icmp eq i64 %i.cf, 0
  br i1 %.not65, label %bb.ab, label %bb.aa, !prof !27

bb.aa:                                            ; preds = %bb.z
  %i.cg = load ptr, ptr %i.f, align 8, !tbaa !64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !43
  call fastcc void @fbuffer_append_str(ptr noundef %i.e, i64 noundef %i.ci)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.cj = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !59
  %i.cl = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !81 ; 2 uses
  %i.cn = icmp eq i64 %i.ck, %i.cm
  br i1 %i.cn, label %bb.ac, label %fbuffer_append_char.exit71, !prof !71

bb.ac:                                            ; preds = %bb.ab
  call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %i.e, i64 noundef 1)
  %.pre.i70 = load i64, ptr %i.cl, align 8, !tbaa !81
  br label %fbuffer_append_char.exit71

fbuffer_append_char.exit71:                       ; preds = %bb.ab, %bb.ac
  %i.co = phi i64 [ %i.cm, %bb.ab ], [ %.pre.i70, %bb.ac ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !58
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.co
  store i8 58, ptr %i.cr, align 1, !tbaa !79
  %i.cs = load i64, ptr %i.cl, align 8, !tbaa !81
  %i.ct = add i64 %i.cs, 1
  store i64 %i.ct, ptr %i.cl, align 8, !tbaa !81
  %i.cu = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !42
  %.not66 = icmp eq i64 %i.cv, 0
  br i1 %.not66, label %bb.ae, label %bb.ad, !prof !27

bb.ad:                                            ; preds = %fbuffer_append_char.exit71
  %i.cw = load ptr, ptr %i.f, align 8, !tbaa !64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !42
  call fastcc void @fbuffer_append_str(ptr noundef nonnull %i.e, i64 noundef %i.cy)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %fbuffer_append_char.exit71
  call void @generate_json(ptr noundef nonnull %i.e, ptr noundef nonnull %i.d, i64 noundef %1)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @fbuffer_append_str_repeat(ptr nofree noundef captures(none) %0, i64 noundef range(i64 1, 0) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !10
  %i.b = call ptr @rb_string_value_ptr(ptr noundef nonnull %i.a) #24 ; 3 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !10
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !40   ; 8 uses
  %i.g = mul i64 %i.f, %2                         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !59
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !81
  %i.l = sub i64 %i.i, %i.k
  %i.m = icmp ugt i64 %i.g, %i.l
  br i1 %i.m, label %bb.b, label %fbuffer_inc_capa.exit, !prof !71

bb.b:                                             ; preds = %bb.a
  call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %0, i64 noundef %i.g)
  br label %fbuffer_inc_capa.exit

fbuffer_inc_capa.exit:                            ; preds = %bb.a, %bb.b
  %.not7 = icmp eq i64 %2, 0
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %fbuffer_inc_capa.exit
  %.not.i.i = icmp eq i64 %i.f, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  br i1 %.not.i.i, label %._crit_edge, label %fbuffer_append_reserved.exit.preheader

fbuffer_append_reserved.exit.preheader:           ; preds = %.lr.ph
  %.pre = load i64, ptr %i.j, align 8, !tbaa !81  ; 2 uses
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %fbuffer_append_reserved.exit.prol.loopexit, label %fbuffer_append_reserved.exit.prol

fbuffer_append_reserved.exit.prol:                ; preds = %fbuffer_append_reserved.exit.preheader
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !58
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %.pre
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr readonly align 1 %i.b, i64 %i.f, i1 false)
  %i.q = load i64, ptr %i.j, align 8, !tbaa !81
  %i.r = add i64 %i.q, %i.f                       ; 2 uses
  store i64 %i.r, ptr %i.j, align 8, !tbaa !81
  %i.s = add nsw i64 %2, -1
  br label %fbuffer_append_reserved.exit.prol.loopexit

fbuffer_append_reserved.exit.prol.loopexit:       ; preds = %fbuffer_append_reserved.exit.prol, %fbuffer_append_reserved.exit.preheader
  %.unr = phi i64 [ %.pre, %fbuffer_append_reserved.exit.preheader ], [ %i.r, %fbuffer_append_reserved.exit.prol ]
  %.08.unr = phi i64 [ %2, %fbuffer_append_reserved.exit.preheader ], [ %i.s, %fbuffer_append_reserved.exit.prol ]
  %i.t = icmp eq i64 %2, 1
  br i1 %i.t, label %._crit_edge, label %fbuffer_append_reserved.exit

fbuffer_append_reserved.exit:                     ; preds = %fbuffer_append_reserved.exit.prol.loopexit, %fbuffer_append_reserved.exit
  %i.u = phi i64 [ %i.ac, %fbuffer_append_reserved.exit ], [ %.unr, %fbuffer_append_reserved.exit.prol.loopexit ]
  %.08 = phi i64 [ %i.ad, %fbuffer_append_reserved.exit ], [ %.08.unr, %fbuffer_append_reserved.exit.prol.loopexit ]
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !58
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr readonly align 1 %i.b, i64 %i.f, i1 false)
  %i.x = load i64, ptr %i.j, align 8, !tbaa !81
  %i.y = add i64 %i.x, %i.f                       ; 2 uses
  store i64 %i.y, ptr %i.j, align 8, !tbaa !81
  %i.z = load ptr, ptr %i.n, align 8, !tbaa !58
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr readonly align 1 %i.b, i64 %i.f, i1 false)
  %i.ab = load i64, ptr %i.j, align 8, !tbaa !81
  %i.ac = add i64 %i.ab, %i.f                     ; 2 uses
  store i64 %i.ac, ptr %i.j, align 8, !tbaa !81
  %i.ad = add i64 %.08, -2                        ; 2 uses
  %.not.1 = icmp eq i64 %i.ad, 0
  br i1 %.not.1, label %._crit_edge, label %fbuffer_append_reserved.exit

._crit_edge:                                      ; preds = %fbuffer_append_reserved.exit.prol.loopexit, %fbuffer_append_reserved.exit, %.lr.ph, %fbuffer_inc_capa.exit
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @json_inspect_hash_with_mixed_keys(ptr nofree noundef captures(none) %0) unnamed_addr #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 21 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !97, !range !48, !noundef !49
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 1, !tbaa !97
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !94
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !64
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.i = load i32, ptr %i.h, align 8, !tbaa !68   ; 2 uses
  %.not = icmp eq i32 %i.i, 1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = icmp eq i32 %i.i, 2
  %i.k = select i1 %i.j, i64 20, i64 0
  %i.l = load i64, ptr @mJSON, align 8, !tbaa !10
  %.pr.i = load i64, ptr @json_inspect_hash_with_mixed_keys.rbimpl_id, align 8, !tbaa !10 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.m = tail call i64 @rb_intern2(ptr noundef nonnull @.str.84, i64 noundef 18) #24 ; 3 uses
  store i64 %i.m, ptr @json_inspect_hash_with_mixed_keys.rbimpl_id, align 8, !tbaa !10
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.c
  %.lcssa.i = phi i64 [ %.pr.i, %bb.c ], [ %i.m, %.lr.ph.i ]
  %i.n = load i64, ptr %0, align 8, !tbaa !91
  %i.o = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.l, i64 noundef %.lcssa.i, i32 noundef 2, i64 noundef %i.n, i64 noundef %i.k) #24 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %rbimpl_intern_const.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 1, -7) i64 @convert_string_subclass(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @i_to_s, align 8, !tbaa !10
  %i.b = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %0, i64 noundef %i.a, i32 noundef 0) #24 ; 5 uses
  %i.c = icmp eq i64 %i.b, 0
  %i.d = and i64 %i.b, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit, !prof !38

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.a
  %i.g = inttoptr i64 %i.b to ptr
  %i.h = load i64, ptr %i.g, align 8, !tbaa !23
  %i.i = and i64 %i.h, 31
  %i.j = icmp eq i64 %i.i, 5
  br i1 %i.j, label %bb.b, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, !prof !24

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.a, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.k = tail call i64 @rb_obj_class(i64 noundef %0) #24 ; 2 uses
  %i.l = load i64, ptr @rb_eTypeError, align 8, !tbaa !10
  %i.m = tail call i64 @rb_obj_class(i64 noundef %i.b) #24
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.l, ptr noundef nonnull @.str.85, i64 noundef %i.k, ptr noundef nonnull @.str.53, i64 noundef %i.k, ptr noundef nonnull @.str.59, i64 noundef %i.m) #27
  unreachable

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  ret i64 %i.b
}

; Function Attrs: inlinehint nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc range(i64 1, 0) i64 @rbimpl_intern_const(ptr nofree noundef nonnull captures(none) %0, ptr noundef nonnull %1) unnamed_addr #20 {
bb.a:
  %.pr = load i64, ptr %0, align 8, !tbaa !10     ; 2 uses
  %.not4 = icmp eq i64 %.pr, 0
  br i1 %.not4, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30
  %i.b = tail call i64 @rb_intern2(ptr noundef nonnull %1, i64 noundef %i.a) #24 ; 3 uses
  store i64 %i.b, ptr %0, align 8, !tbaa !10
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.lcssa = phi i64 [ %.pr, %bb.a ], [ %i.b, %.lr.ph ]
  ret i64 %.lcssa
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #21

declare i64 @rb_intern2(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_obj_class(i64 noundef) local_unnamed_addr #1

declare i32 @rb_enc_str_coderange(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @convert_UTF8_to_ASCII_only_JSON(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72   ; 2 uses
  %.promoted.i24 = load ptr, ptr %0, align 8, !tbaa !76 ; 3 uses
  %i.c = icmp ult ptr %.promoted.i24, %i.b
  br i1 %i.c, label %.lr.ph.preheader.i.lr.ph, label %._crit_edge.i

.lr.ph.preheader.i.lr.ph:                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 12 uses
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.preheader.i.lr.ph, %full_escape_UTF8_char.exit
  %.promoted.i25 = phi ptr [ %.promoted.i24, %.lr.ph.preheader.i.lr.ph ], [ %i.lx, %full_escape_UTF8_char.exit ] ; 5 uses
  %i.f = phi ptr [ %i.b, %.lr.ph.preheader.i.lr.ph ], [ %i.ly, %full_escape_UTF8_char.exit ] ; 3 uses
  %i.g = ptrtoint ptr %i.f to i64
  %.promoted.i2593 = ptrtoint ptr %.promoted.i25 to i64
  %i.h = sub i64 %i.g, %.promoted.i2593
  %i.i = freeze i64 %i.h                          ; 2 uses
  %i.j = add i64 %i.i, -1
  %xtraiter = and i64 %i.i, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i, %bb.b
  %i.k = phi ptr [ %i.p, %bb.b ], [ %.promoted.i25, %.lr.ph.preheader.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.b ], [ 0, %.lr.ph.preheader.i ]
  %i.l = load i8, ptr %i.k, align 1, !tbaa !79
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !79    ; 2 uses
  %.not.not.i.prol = icmp eq i8 %i.o, 0
  br i1 %.not.not.i.prol, label %bb.b, label %.loopexit, !prof !27

bb.b:                                             ; preds = %.lr.ph.i.prol
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 3 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !76
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !102

.lr.ph.i.prol.loopexit:                           ; preds = %bb.b, %.lr.ph.preheader.i
  %.unr = phi ptr [ %.promoted.i25, %.lr.ph.preheader.i ], [ %i.p, %bb.b ]
  %i.q = icmp ult i64 %i.j, 3
  br i1 %i.q, label %._crit_edge.i.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.e
  %i.r = phi ptr [ %i.bh, %bb.e ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !79
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !79    ; 2 uses
  %.not.not.i = icmp eq i8 %i.v, 0
  br i1 %.not.not.i, label %.lr.ph.i.1, label %.loopexit, !prof !27

.loopexit.split.loop.exit:                        ; preds = %.lr.ph.i.3
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 3
  br label %.loopexit

.loopexit.split.loop.exit125:                     ; preds = %.lr.ph.i.2
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  br label %.loopexit

.loopexit.split.loop.exit128:                     ; preds = %.lr.ph.i.1
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.prol, %.loopexit.split.loop.exit, %.loopexit.split.loop.exit125, %.loopexit.split.loop.exit128, %.lr.ph.i
  %.lcssa82 = phi ptr [ %i.r, %.lr.ph.i ], [ %i.y, %.loopexit.split.loop.exit128 ], [ %i.x, %.loopexit.split.loop.exit125 ], [ %i.w, %.loopexit.split.loop.exit ], [ %i.k, %.lr.ph.i.prol ] ; 3 uses
  %.lcssa = phi i8 [ %i.v, %.lr.ph.i ], [ %i.aw, %.loopexit.split.loop.exit128 ], [ %i.bb, %.loopexit.split.loop.exit125 ], [ %i.bg, %.loopexit.split.loop.exit ], [ %i.o, %.lr.ph.i.prol ]
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !77   ; 3 uses
  %i.aa = icmp ugt ptr %.lcssa82, %i.z
  br i1 %i.aa, label %bb.c, label %search_ascii_only_escape.exit

bb.c:                                             ; preds = %.loopexit
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !78  ; 4 uses
  %i.ac = ptrtoint ptr %.lcssa82 to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !59
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 4 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !81 ; 2 uses
  %i.aj = sub i64 %i.ag, %i.ai
  %i.ak = icmp ugt i64 %i.ae, %i.aj
  br i1 %i.ak, label %bb.d, label %fbuffer_append_reserved.exit.i, !prof !71

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %i.ab, i64 noundef %i.ae)
  %.pre.i = load i64, ptr %i.ah, align 8, !tbaa !81
  br label %fbuffer_append_reserved.exit.i

fbuffer_append_reserved.exit.i:                   ; preds = %bb.d, %bb.c
  %i.al = phi i64 [ %i.ai, %bb.c ], [ %.pre.i, %bb.d ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !58
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ao, ptr readonly align 1 %i.z, i64 %i.ae, i1 false)
  %i.ap = load i64, ptr %i.ah, align 8, !tbaa !81
  %i.aq = add i64 %i.ap, %i.ae
  store i64 %i.aq, ptr %i.ah, align 8, !tbaa !81
  %i.ar = load ptr, ptr %0, align 8, !tbaa !76    ; 2 uses
  store ptr %i.ar, ptr %i.d, align 8, !tbaa !77
  br label %search_ascii_only_escape.exit

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 2 uses
  store ptr %i.as, ptr %0, align 8, !tbaa !76
  %i.at = load i8, ptr %i.as, align 1, !tbaa !79
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !79  ; 2 uses
  %.not.not.i.1 = icmp eq i8 %i.aw, 0
  br i1 %.not.not.i.1, label %.lr.ph.i.2, label %.loopexit.split.loop.exit128, !prof !27

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.r, i64 2 ; 2 uses
  store ptr %i.ax, ptr %0, align 8, !tbaa !76
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !79
  %i.az = zext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !79  ; 2 uses
  %.not.not.i.2 = icmp eq i8 %i.bb, 0
  br i1 %.not.not.i.2, label %.lr.ph.i.3, label %.loopexit.split.loop.exit125, !prof !27

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.bc = getelementptr inbounds nuw i8, ptr %i.r, i64 3 ; 2 uses
  store ptr %i.bc, ptr %0, align 8, !tbaa !76
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !79
  %i.be = zext i8 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !79  ; 2 uses
  %.not.not.i.3 = icmp eq i8 %i.bg, 0
  br i1 %.not.not.i.3, label %bb.e, label %.loopexit.split.loop.exit, !prof !27

bb.e:                                             ; preds = %.lr.ph.i.3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 3 uses
  store ptr %i.bh, ptr %0, align 8, !tbaa !76
  %exitcond.not.i.3 = icmp eq ptr %i.bh, %i.f
  br i1 %exitcond.not.i.3, label %._crit_edge.i.loopexit, label %.lr.ph.i

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i.prol.loopexit, %bb.e
  %.promoted23.i.le = ptrtoint ptr %.promoted.i25 to i64
  %i.bi = ptrtoint ptr %i.f to i64
  %i.bj = sub i64 %i.bi, %.promoted23.i.le
  %scevgep.i.le = getelementptr i8, ptr %.promoted.i25, i64 %i.bj
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %full_escape_UTF8_char.exit, %bb.a, %._crit_edge.i.loopexit
  %.lcssa.i = phi ptr [ %scevgep.i.le, %._crit_edge.i.loopexit ], [ %.promoted.i24, %bb.a ], [ %i.lx, %full_escape_UTF8_char.exit ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !77 ; 3 uses
  %i.bm = icmp ugt ptr %.lcssa.i, %i.bl
  br i1 %i.bm, label %bb.f, label %search_ascii_only_escape.exit.thread

bb.f:                                             ; preds = %._crit_edge.i
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !78 ; 4 uses
  %i.bp = ptrtoint ptr %.lcssa.i to i64
  %i.bq = ptrtoint ptr %i.bl to i64
  %i.br = sub i64 %i.bp, %i.bq                    ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !59
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 4 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !81 ; 2 uses
  %i.bw = sub i64 %i.bt, %i.bv
  %i.bx = icmp ugt i64 %i.br, %i.bw
  br i1 %i.bx, label %bb.g, label %fbuffer_append_reserved.exit.i.i, !prof !71

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %i.bo, i64 noundef %i.br)
  %.pre.i.i = load i64, ptr %i.bu, align 8, !tbaa !81
  br label %fbuffer_append_reserved.exit.i.i

fbuffer_append_reserved.exit.i.i:                 ; preds = %bb.g, %bb.f
  %i.by = phi i64 [ %i.bv, %bb.f ], [ %.pre.i.i, %bb.g ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !58
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.by
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cb, ptr readonly align 1 %i.bl, i64 %i.br, i1 false)
  %i.cc = load i64, ptr %i.bu, align 8, !tbaa !81
  %i.cd = add i64 %i.cc, %i.br
  store i64 %i.cd, ptr %i.bu, align 8, !tbaa !81
  %i.ce = load ptr, ptr %0, align 8, !tbaa !76
  store ptr %i.ce, ptr %i.bk, align 8, !tbaa !77
  br label %search_ascii_only_escape.exit.thread

search_ascii_only_escape.exit:                    ; preds = %.loopexit, %fbuffer_append_reserved.exit.i
  %i.cf = phi ptr [ %.lcssa82, %.loopexit ], [ %i.ar, %fbuffer_append_reserved.exit.i ] ; 6 uses
  %i.cg = and i8 %.lcssa, 7                       ; 5 uses
  %.not = icmp eq i8 %i.cg, 0
end_hunk_4
begin_hunk_5_@convert_UTF8_to_script_safe_JSON:bb.a
bb.v:                                             ; preds = %bb.u
  tail call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %i.dn, i64 noundef 2)
  %.pre.i27.i = load i64, ptr %i.dq, align 8, !tbaa !81
  br label %fbuffer_append.exit28.i

fbuffer_append.exit28.i:                          ; preds = %bb.v, %bb.u
  %i.du = phi i64 [ %i.dr, %bb.u ], [ %.pre.i27.i, %bb.v ]
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !58
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.du
  store i16 26204, ptr %i.dx, align 1
  %i.dy = load i64, ptr %i.dq, align 8, !tbaa !81
  %i.dz = add i64 %i.dy, 2
  store i64 %i.dz, ptr %i.dq, align 8, !tbaa !81
  br label %escape_UTF8_char.exit

bb.w:                                             ; preds = %bb.l
  %i.ea = load ptr, ptr %i.e, align 8, !tbaa !78  ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !59
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 4 uses
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !81 ; 2 uses
  %i.ef = sub i64 %i.ec, %i.ee
  %i.eg = icmp ult i64 %i.ef, 2
  br i1 %i.eg, label %bb.x, label %fbuffer_append.exit30.i, !prof !71

bb.x:                                             ; preds = %bb.w
  tail call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %i.ea, i64 noundef 2)
  %.pre.i29.i = load i64, ptr %i.ed, align 8, !tbaa !81
  br label %fbuffer_append.exit30.i

fbuffer_append.exit30.i:                          ; preds = %bb.x, %bb.w
  %i.eh = phi i64 [ %i.ee, %bb.w ], [ %.pre.i29.i, %bb.x ]
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !58
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.eh
  store i16 28252, ptr %i.ek, align 1
  %i.el = load i64, ptr %i.ed, align 8, !tbaa !81
  %i.em = add i64 %i.el, 2
  store i64 %i.em, ptr %i.ed, align 8, !tbaa !81
  br label %escape_UTF8_char.exit

bb.y:                                             ; preds = %bb.l
  %i.en = load ptr, ptr %i.e, align 8, !tbaa !78  ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !59
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 16 ; 4 uses
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !81 ; 2 uses
  %i.es = sub i64 %i.ep, %i.er
  %i.et = icmp ult i64 %i.es, 2
  br i1 %i.et, label %bb.z, label %fbuffer_append.exit32.i, !prof !71

bb.z:                                             ; preds = %bb.y
  tail call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %i.en, i64 noundef 2)
  %.pre.i31.i = load i64, ptr %i.eq, align 8, !tbaa !81
  br label %fbuffer_append.exit32.i

fbuffer_append.exit32.i:                          ; preds = %bb.z, %bb.y
  %i.eu = phi i64 [ %i.er, %bb.y ], [ %.pre.i31.i, %bb.z ]
  %i.ev = getelementptr inbounds nuw i8, ptr %i.en, i64 32
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !58
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.eu
  store i16 29276, ptr %i.ex, align 1
  %i.ey = load i64, ptr %i.eq, align 8, !tbaa !81
  %i.ez = add i64 %i.ey, 2
  store i64 %i.ez, ptr %i.eq, align 8, !tbaa !81
  br label %escape_UTF8_char.exit

bb.aa:                                            ; preds = %bb.l
  %i.fa = load ptr, ptr %i.e, align 8, !tbaa !78  ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !59
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 16 ; 4 uses
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !81 ; 2 uses
  %i.ff = sub i64 %i.fc, %i.fe
  %i.fg = icmp ult i64 %i.ff, 2
  br i1 %i.fg, label %bb.ab, label %fbuffer_append.exit34.i, !prof !71

bb.ab:                                            ; preds = %bb.aa
  tail call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %i.fa, i64 noundef 2)
  %.pre.i33.i = load i64, ptr %i.fd, align 8, !tbaa !81
  br label %fbuffer_append.exit34.i

fbuffer_append.exit34.i:                          ; preds = %bb.ab, %bb.aa
  %i.fh = phi i64 [ %i.fe, %bb.aa ], [ %.pre.i33.i, %bb.ab ]
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fa, i64 32
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !58
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fh
  store i16 29788, ptr %i.fk, align 1
  %i.fl = load i64, ptr %i.fd, align 8, !tbaa !81
  %i.fm = add i64 %i.fl, 2
  store i64 %i.fm, ptr %i.fd, align 8, !tbaa !81
  br label %escape_UTF8_char.exit

bb.ac:                                            ; preds = %bb.l
  %i.fn = zext i8 %i.bm to i32                    ; 2 uses
  %i.fo = lshr i32 %i.fn, 4
  %i.fp = zext nneg i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw i8, ptr @.str.95, i64 %i.fp
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !79
  %i.fs = and i32 %i.fn, 15
  %i.ft = zext nneg i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw i8, ptr @.str.95, i64 %i.ft
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !79
  %i.fw = load ptr, ptr %i.e, align 8, !tbaa !78  ; 4 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !59
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 16 ; 4 uses
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !81 ; 2 uses
  %i.gb = sub i64 %i.fy, %i.ga
  %i.gc = icmp ult i64 %i.gb, 6
  br i1 %i.gc, label %bb.ad, label %fbuffer_append.exit36.i, !prof !71

bb.ad:                                            ; preds = %bb.ac
  tail call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %i.fw, i64 noundef 6)
  %.pre.i35.i = load i64, ptr %i.fz, align 8, !tbaa !81
  br label %fbuffer_append.exit36.i

fbuffer_append.exit36.i:                          ; preds = %bb.ad, %bb.ac
  %i.gd = phi i64 [ %i.ga, %bb.ac ], [ %.pre.i35.i, %bb.ad ]
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fw, i64 32
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !58
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.gd ; 3 uses
  store i32 808482140, ptr %i.gg, align 1
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  store i8 %i.fr, ptr %.sroa.4.0..sroa_idx.i, align 1
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gg, i64 5
  store i8 %i.fv, ptr %.sroa.5.0..sroa_idx.i, align 1
  %i.gh = load i64, ptr %i.fz, align 8, !tbaa !81
  %i.gi = add i64 %i.gh, 6
  store i64 %i.gi, ptr %i.fz, align 8, !tbaa !81
  br label %escape_UTF8_char.exit

bb.ae:                                            ; preds = %search_script_safe_escape.exit
  %i.gj = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !79
  %i.gl = and i8 %i.gk, 1
  %.not.i2 = icmp eq i8 %i.gl, 0
  %i.gm = load ptr, ptr %i.e, align 8, !tbaa !78  ; 6 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !59
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 16 ; 7 uses
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !81 ; 3 uses
  %i.gr = sub i64 %i.go, %i.gq
  %i.gs = icmp ult i64 %i.gr, 6                   ; 2 uses
  br i1 %.not.i2, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  br i1 %i.gs, label %bb.ag, label %fbuffer_append.exit38.i, !prof !71

bb.ag:                                            ; preds = %bb.af
  tail call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %i.gm, i64 noundef 6)
  %.pre.i37.i = load i64, ptr %i.gp, align 8, !tbaa !81
  br label %fbuffer_append.exit38.i

fbuffer_append.exit38.i:                          ; preds = %bb.ag, %bb.af
  %i.gt = phi i64 [ %i.gq, %bb.af ], [ %.pre.i37.i, %bb.ag ]
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gm, i64 32
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !58
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.gt
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.gw, ptr noundef nonnull readonly align 1 dereferenceable(6) @.str.97, i64 6, i1 false)
  %i.gx = load i64, ptr %i.gp, align 8, !tbaa !81
  %i.gy = add i64 %i.gx, 6
  store i64 %i.gy, ptr %i.gp, align 8, !tbaa !81
  br label %escape_UTF8_char.exit

bb.ah:                                            ; preds = %bb.ae
  br i1 %i.gs, label %bb.ai, label %fbuffer_append.exit40.i, !prof !71

bb.ai:                                            ; preds = %bb.ah
  tail call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %i.gm, i64 noundef 6)
  %.pre.i39.i = load i64, ptr %i.gp, align 8, !tbaa !81
  br label %fbuffer_append.exit40.i

fbuffer_append.exit40.i:                          ; preds = %bb.ai, %bb.ah
  %i.gz = phi i64 [ %i.gq, %bb.ah ], [ %.pre.i39.i, %bb.ai ]
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gm, i64 32
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !58
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.gz
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.hc, ptr noundef nonnull readonly align 1 dereferenceable(6) @.str.98, i64 6, i1 false)
  %i.hd = load i64, ptr %i.gp, align 8, !tbaa !81
  %i.he = add i64 %i.hd, 6
  store i64 %i.he, ptr %i.gp, align 8, !tbaa !81
  br label %escape_UTF8_char.exit

escape_UTF8_char.exit:                            ; preds = %search_script_safe_escape.exit, %fbuffer_append.exit.i, %fbuffer_append.exit22.i, %fbuffer_append.exit24.i, %fbuffer_append.exit26.i, %fbuffer_append.exit28.i, %fbuffer_append.exit30.i, %fbuffer_append.exit32.i, %fbuffer_append.exit34.i, %fbuffer_append.exit36.i, %fbuffer_append.exit38.i, %fbuffer_append.exit40.i
  %i.hf = load ptr, ptr %0, align 8, !tbaa !76
  %i.hg = zext nneg i8 %i.bl to i64
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.hg ; 5 uses
  store ptr %i.hh, ptr %0, align 8, !tbaa !76
  store ptr %i.hh, ptr %i.d, align 8, !tbaa !77
  %i.hi = load ptr, ptr %i.a, align 8, !tbaa !72  ; 2 uses
  %i.hj = icmp ult ptr %i.hh, %i.hi
  br i1 %i.hj, label %.lr.ph.i.preheader, label %._crit_edge.i

search_script_safe_escape.exit.thread:            ; preds = %search_script_safe_escape.exit, %fbuffer_append_reserved.exit.i.i, %._crit_edge.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #22

declare i64 @rb_vsprintf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #22

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @raise_generator_error_str(i64 noundef %0, i64 noundef %1) unnamed_addr #13 {
bb.a:
  %i.a = load i32, ptr @utf8_encindex, align 4, !tbaa !6
  %i.b = tail call i64 @rb_enc_associate_index(i64 noundef %1, i32 noundef %i.a) #24 ; 0 uses
  %i.c = load i64, ptr @eGeneratorError, align 8, !tbaa !10
  %i.d = tail call i64 @rb_exc_new_str(i64 noundef %i.c, i64 noundef %1) #24 ; 2 uses
  %i.e = tail call fastcc i64 @rbimpl_intern_const(ptr noundef @raise_generator_error_str.rbimpl_id, ptr noundef @.str.99) #33
  %i.f = tail call i64 @rb_ivar_set(i64 noundef %i.d, i64 noundef %i.e, i64 noundef %0) #24 ; 0 uses
  tail call void @rb_exc_raise(i64 noundef %i.d) #27
  unreachable
}

declare i64 @rb_enc_associate_index(i64 noundef, i32 noundef) local_unnamed_addr #1

declare i64 @rb_exc_new_str(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_ivar_set(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @rb_exc_raise(i64 noundef) local_unnamed_addr #9

declare i64 @rb_str_dup(i64 noundef) local_unnamed_addr #1

declare i64 @rb_rescue(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i64 @encode_json_string_try(i64 noundef %0) #0 {
bb.a:
  %i.a = load i64, ptr @i_encode, align 8, !tbaa !10
  %i.b = load i64, ptr @Encoding_UTF_8, align 8, !tbaa !10
  %i.c = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %0, i64 noundef %i.a, i32 noundef 1, i64 noundef %i.b) #24
  ret i64 %i.c
}

; Function Attrs: noreturn nounwind uwtable
define internal noundef i64 @encode_json_string_rescue(i64 noundef %0, i64 noundef %1) #13 {
bb.a:
  %i.a = tail call fastcc i64 @rbimpl_intern_const(ptr noundef @encode_json_string_rescue.rbimpl_id, ptr noundef @.str.101) #33
  %i.b = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %1, i64 noundef %i.a, i32 noundef 0) #24
  tail call fastcc void @raise_generator_error_str(i64 noundef %0, i64 noundef %i.b) #29
  unreachable
}

declare i64 @rb_struct_aref(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_proc_call_with_block(i64 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @rb_respond_to(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @vstate_spill(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @cState, align 8, !tbaa !10
  %i.b = tail call i64 @rb_data_typed_object_zalloc(i64 noundef %i.a, i64 noundef 88, ptr noundef nonnull @JSON_Generator_State_type) #24 ; 11 uses
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !14   ; 2 uses
  %i.f = trunc i64 %i.e to i1                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 4 uses
  br i1 %i.f, label %cState_s_allocate.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17
  br label %cState_s_allocate.exit

cState_s_allocate.exit:                           ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.h, %bb.b ], [ %i.g, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store i64 100, ptr %i.j, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store i64 1024, ptr %i.k, align 8, !tbaa !21
  %i.l = icmp eq i64 %i.b, 0
  %i.m = and i64 %i.b, 7
  %i.n = icmp ne i64 %i.m, 0
  %i.o = or i1 %i.l, %i.n
  br i1 %i.o, label %.critedge.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !38

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %cState_s_allocate.exit
  %i.p = load i64, ptr %i.c, align 8, !tbaa !23
  %i.q = and i64 %i.p, 95
  %or.cond.not.i = icmp eq i64 %i.q, 76
  br i1 %or.cond.not.i, label %bb.c, label %.critedge.i, !prof !26

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.r = and i64 %i.e, -2                         ; 2 uses
  %i.s = inttoptr i64 %i.r to ptr
  br i1 %i.f, label %RTYPEDDATA_GET_DATA.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !17
  br label %RTYPEDDATA_GET_DATA.exit.i

RTYPEDDATA_GET_DATA.exit.i:                       ; preds = %bb.d, %bb.c
  %i.u = phi ptr [ %i.t, %bb.d ], [ %i.g, %bb.c ] ; 2 uses
  %i.v = icmp eq i64 %i.r, ptrtoint (ptr @JSON_Generator_State_type to i64)
  br i1 %i.v, label %rbimpl_check_typeddata.exit, label %.preheader.i, !prof !27

.preheader.i:                                     ; preds = %RTYPEDDATA_GET_DATA.exit.i, %bb.e
  %.016.i = phi ptr [ %i.x, %bb.e ], [ %i.s, %RTYPEDDATA_GET_DATA.exit.i ] ; 2 uses
  %.not.i = icmp eq ptr %.016.i, null
  br i1 %.not.i, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %.preheader.i
  %i.w = getelementptr inbounds nuw i8, ptr %.016.i, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !28   ; 2 uses
  %i.y = icmp eq ptr %i.x, @JSON_Generator_State_type
  br i1 %i.y, label %rbimpl_check_typeddata.exit, label %.preheader.i

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %cState_s_allocate.exit
  %i.z = tail call ptr @rb_check_typeddata(i64 noundef %i.b, ptr noundef nonnull @JSON_Generator_State_type) #24
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.e, %RTYPEDDATA_GET_DATA.exit.i, %.critedge.i
  %.1.i = phi ptr [ %i.z, %.critedge.i ], [ %i.u, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.u, %bb.e ] ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(88) %.1.i, ptr noundef nonnull readonly align 1 dereferenceable(88) %i.ab, i64 88, i1 false)
  store ptr %.1.i, ptr %i.aa, align 8, !tbaa !64
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.ac, align 8, !tbaa !63
  %i.ad = load i64, ptr %.1.i, align 8, !tbaa !39 ; 3 uses
  %i.ae = icmp eq i64 %i.ad, 0
  %i.af = and i64 %i.ad, 7
  %i.ag = icmp ne i64 %i.af, 0
  %i.ah = or i1 %i.ae, %i.ag
  br i1 %i.ah, label %rb_obj_written.exit, label %bb.f

bb.f:                                             ; preds = %rbimpl_check_typeddata.exit
  tail call void @rb_gc_writebarrier(i64 noundef %i.b, i64 noundef %i.ad) #24
  br label %rb_obj_written.exit

rb_obj_written.exit:                              ; preds = %rbimpl_check_typeddata.exit, %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %.1.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !42 ; 3 uses
  %i.ak = icmp eq i64 %i.aj, 0
  %i.al = and i64 %i.aj, 7
  %i.am = icmp ne i64 %i.al, 0
  %i.an = or i1 %i.ak, %i.am
  br i1 %i.an, label %rb_obj_written.exit18, label %bb.g

bb.g:                                             ; preds = %rb_obj_written.exit
  tail call void @rb_gc_writebarrier(i64 noundef %i.b, i64 noundef %i.aj) #24
  br label %rb_obj_written.exit18

rb_obj_written.exit18:                            ; preds = %rb_obj_written.exit, %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !43 ; 3 uses
  %i.aq = icmp eq i64 %i.ap, 0
  %i.ar = and i64 %i.ap, 7
  %i.as = icmp ne i64 %i.ar, 0
  %i.at = or i1 %i.aq, %i.as
  br i1 %i.at, label %rb_obj_written.exit19, label %bb.h

bb.h:                                             ; preds = %rb_obj_written.exit18
  tail call void @rb_gc_writebarrier(i64 noundef %i.b, i64 noundef %i.ap) #24
  br label %rb_obj_written.exit19

rb_obj_written.exit19:                            ; preds = %rb_obj_written.exit18, %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %.1.i, i64 24
  %i.av = load i64, ptr %i.au, align 8, !tbaa !44 ; 3 uses
  %i.aw = icmp eq i64 %i.av, 0
  %i.ax = and i64 %i.av, 7
  %i.ay = icmp ne i64 %i.ax, 0
  %i.az = or i1 %i.aw, %i.ay
  br i1 %i.az, label %rb_obj_written.exit20, label %bb.i

bb.i:                                             ; preds = %rb_obj_written.exit19
  tail call void @rb_gc_writebarrier(i64 noundef %i.b, i64 noundef %i.av) #24
  br label %rb_obj_written.exit20

rb_obj_written.exit20:                            ; preds = %rb_obj_written.exit19, %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.1.i, i64 32
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !45 ; 3 uses
  %i.bc = icmp eq i64 %i.bb, 0
  %i.bd = and i64 %i.bb, 7
  %i.be = icmp ne i64 %i.bd, 0
  %i.bf = or i1 %i.bc, %i.be
  br i1 %i.bf, label %rb_obj_written.exit21, label %bb.j

bb.j:                                             ; preds = %rb_obj_written.exit20
  tail call void @rb_gc_writebarrier(i64 noundef %i.b, i64 noundef %i.bb) #24
  br label %rb_obj_written.exit21

rb_obj_written.exit21:                            ; preds = %rb_obj_written.exit20, %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %.1.i, i64 40
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !46 ; 3 uses
  %i.bi = icmp eq i64 %i.bh, 0
  %i.bj = and i64 %i.bh, 7
  %i.bk = icmp ne i64 %i.bj, 0
  %i.bl = or i1 %i.bi, %i.bk
  br i1 %i.bl, label %rb_obj_written.exit22, label %bb.k

bb.k:                                             ; preds = %rb_obj_written.exit21
  tail call void @rb_gc_writebarrier(i64 noundef %i.b, i64 noundef %i.bh) #24
  br label %rb_obj_written.exit22

rb_obj_written.exit22:                            ; preds = %rb_obj_written.exit21, %bb.k
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @generate_json_integer(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = trunc i64 %2 to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @generate_json_fixnum(ptr noundef %0, i64 noundef %2)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = load i64, ptr @i_to_s, align 8, !tbaa !10
  %i.d = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %2, i64 noundef %i.c, i32 noundef 0) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.d, ptr %i.a, align 8, !tbaa !10
  %i.e = call ptr @rb_string_value_ptr(ptr noundef nonnull %i.a) #24
  %i.f = load i64, ptr %i.a, align 8, !tbaa !10
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !40   ; 5 uses
  %.not.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i, label %generate_json_bignum.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !59
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !81   ; 2 uses
  %i.n = sub i64 %i.k, %i.m
  %i.o = icmp ugt i64 %i.i, %i.n
  br i1 %i.o, label %bb.e, label %fbuffer_append_reserved.exit.i.i.i, !prof !71

bb.e:                                             ; preds = %bb.d
  call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %0, i64 noundef %i.i)
  %.pre.i.i.i = load i64, ptr %i.l, align 8, !tbaa !81
  br label %fbuffer_append_reserved.exit.i.i.i

fbuffer_append_reserved.exit.i.i.i:               ; preds = %bb.e, %bb.d
  %i.p = phi i64 [ %i.m, %bb.d ], [ %.pre.i.i.i, %bb.e ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !58
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr readonly align 1 %i.e, i64 %i.i, i1 false)
  %i.t = load i64, ptr %i.l, align 8, !tbaa !81
  %i.u = add i64 %i.t, %i.i
  store i64 %i.u, ptr %i.l, align 8, !tbaa !81
  br label %generate_json_bignum.exit

generate_json_bignum.exit:                        ; preds = %bb.c, %fbuffer_append_reserved.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %generate_json_bignum.exit, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { alwaysinline nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { allocsize(1,2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { inlinehint nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nounwind }
attributes #25 = { nounwind willreturn memory(none) }
attributes #26 = { cold nounwind }
attributes #27 = { noreturn nounwind }
attributes #28 = { cold noreturn nounwind }
attributes #29 = { noreturn }
attributes #30 = { nounwind willreturn memory(read) }
attributes #31 = { nounwind allocsize(0,1) }
attributes #32 = { nounwind allocsize(1,2) }
attributes #33 = { nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !8, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!15, !11, i64 24}
!15 = !{!"RTypedData", !16, i64 0, !11, i64 16, !11, i64 24, !13, i64 32}
!16 = !{!"RBasic", !11, i64 0, !11, i64 8}
!17 = !{!15, !13, i64 32}
!18 = !{!19, !11, i64 48}
!19 = !{!"JSON_Generator_StateStruct", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !7, i64 72, !20, i64 76, !20, i64 77, !20, i64 78, !20, i64 79, !20, i64 80}
!20 = !{!"_Bool", !8, i64 0}
!21 = !{!19, !11, i64 64}
!22 = !{!"branch_weights", i32 2146410443, i32 1073205}
!23 = !{!16, !11, i64 0}
!24 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!25 = !{!"branch_weights", i32 4001, i32 1}
!26 = !{!"branch_weights", i32 -100663296, i32 2097152}
!27 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!28 = !{!29, !32, i64 48}
!29 = !{!"rb_data_type_struct", !30, i64 0, !31, i64 8, !32, i64 48, !13, i64 56, !11, i64 64}
!30 = !{!"p1 omnipotent char", !13, i64 0}
!31 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !8, i64 32}
!32 = !{!"p1 _ZTS19rb_data_type_struct", !13, i64 0}
!33 = !{!"branch_weights", !"expected", i32 2146553444, i32 930204}
!34 = !{!35, !36, i64 0}
!35 = !{!"configure_state_data", !36, i64 0, !11, i64 8}
!36 = !{!"p1 _ZTS26JSON_Generator_StateStruct", !13, i64 0}
!37 = !{!35, !11, i64 8}
!38 = !{!"branch_weights", i32 1073205, i32 2146410443}
!39 = !{!19, !11, i64 0}
!40 = !{!41, !11, i64 16}
!41 = !{!"RString", !16, i64 0, !11, i64 16, !8, i64 24}
!42 = !{!19, !11, i64 8}
!43 = !{!19, !11, i64 16}
!44 = !{!19, !11, i64 24}
!45 = !{!19, !11, i64 32}
!46 = !{!19, !11, i64 40}
!47 = !{!19, !20, i64 79}
!48 = !{i8 0, i8 2}
!49 = !{}
!50 = !{!19, !20, i64 80}
!51 = !{!19, !20, i64 77}
!52 = !{!19, !20, i64 78}
!53 = !{!19, !11, i64 56}
!54 = !{!55, !11, i64 40}
!55 = !{!"FBufferStruct", !7, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !30, i64 32, !11, i64 40}
!56 = !{!55, !11, i64 8}
!57 = !{!55, !7, i64 0}
!58 = !{!55, !30, i64 32}
!59 = !{!55, !11, i64 24}
!60 = !{!61, !62, i64 0}
!61 = !{!"generate_json_data", !62, i64 0, !11, i64 8, !36, i64 16, !11, i64 24, !13, i64 32, !11, i64 40}
!62 = !{!"p1 _ZTS13FBufferStruct", !13, i64 0}
!63 = !{!61, !11, i64 8}
!64 = !{!61, !36, i64 16}
!65 = !{!61, !11, i64 24}
!66 = !{!61, !13, i64 32}
!67 = !{!61, !11, i64 40}
!68 = !{!19, !7, i64 72}
!69 = !{!70, !20, i64 48}
!70 = !{!"_search_state", !30, i64 0, !30, i64 8, !30, i64 16, !62, i64 24, !30, i64 32, !30, i64 40, !20, i64 48, !7, i64 52}
!71 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!72 = !{!70, !30, i64 8}
!73 = !{!30, !30, i64 0}
!74 = !{!70, !7, i64 52}
!75 = !{!70, !30, i64 32}
!76 = !{!70, !30, i64 0}
!77 = !{!70, !30, i64 16}
!78 = !{!70, !62, i64 24}
!79 = !{!8, !8, i64 0}
!80 = !{!70, !30, i64 40}
!81 = !{!55, !11, i64 16}
!82 = distinct !{!82, !83}
!83 = !{!"llvm.loop.unroll.disable"}
!84 = distinct !{!84, !83}
!85 = !{!19, !20, i64 76}
!86 = !{!16, !11, i64 8}
!87 = !{!"branch_weights", i32 1, i32 4002000, i32 2000}
!88 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!89 = !{!90, !7, i64 8}
!90 = !{!"Fp", !11, i64 0, !7, i64 8}
!91 = !{!92, !11, i64 0}
!92 = !{!"hash_foreach_arg", !11, i64 0, !93, i64 8, !7, i64 16, !20, i64 20, !20, i64 21}
!93 = !{!"p1 _ZTS18generate_json_data", !13, i64 0}
!94 = !{!92, !93, i64 8}
!95 = !{!92, !7, i64 16}
!96 = !{!92, !20, i64 20}
!97 = !{!92, !20, i64 21}
!98 = distinct !{!98, !99}
!99 = !{!"llvm.loop.peeled.count", i32 1}
!100 = !{ptr @search_escape_basic, ptr @search_escape_basic_sse2}
!101 = distinct !{null}
!102 = distinct !{!102, !83}
!103 = distinct !{!103, !83}
end_hunk_5

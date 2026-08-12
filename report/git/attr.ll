inline.NumInlined: 100
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@git_check_attr:bb.a
  %i.au = call i32 @index_name_pos(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.at) #22 ; 2 uses
  %i.av = icmp sgt i32 %i.au, -1
  br i1 %i.av, label %bb.n, label %compute_builtin_attr.exit

bb.n:                                             ; preds = %bb.m
  %i.aw = load ptr, ptr %0, align 8, !tbaa !88
  %i.ax = zext nneg i32 %i.au to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ax
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !101
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 52
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !28
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %canon_mode.exit.thread.i.i
  %.3.i.i = phi i32 [ %.122.i.i, %canon_mode.exit.thread.i.i ], [ %i.bb, %bb.n ] ; 7 uses
  %i.bc = load i32, ptr @interned_mode_string.mode_string, align 16, !tbaa !103
  %.not.i26.i.i = icmp eq i32 %i.bc, %.3.i.i
  br i1 %.not.i26.i.i, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = load i32, ptr getelementptr inbounds nuw (i8, ptr @interned_mode_string.mode_string, i64 12), align 4, !tbaa !103
  %.not.1.i.i.i = icmp eq i32 %i.bd, %.3.i.i
  br i1 %.not.1.i.i.i, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.be = load i32, ptr getelementptr inbounds nuw (i8, ptr @interned_mode_string.mode_string, i64 24), align 8, !tbaa !103
  %.not.2.i.i.i = icmp eq i32 %i.be, %.3.i.i
  br i1 %.not.2.i.i.i, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bf = load i32, ptr getelementptr inbounds nuw (i8, ptr @interned_mode_string.mode_string, i64 36), align 4, !tbaa !103
  %.not.3.i.i.i = icmp eq i32 %i.bf, %.3.i.i
  br i1 %.not.3.i.i.i, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = load i32, ptr getelementptr inbounds nuw (i8, ptr @interned_mode_string.mode_string, i64 48), align 16, !tbaa !103
  %.not.4.i.i.i = icmp eq i32 %i.bg, %.3.i.i
  br i1 %.not.4.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.4, i32 noundef 1267, ptr noundef nonnull @.str.43, i32 noundef %.3.i.i) #23
  unreachable

bb.u:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o
  %.lcssa.i.i.i = phi ptr [ @interned_mode_string.mode_string, %bb.o ], [ getelementptr inbounds nuw (i8, ptr @interned_mode_string.mode_string, i64 12), %bb.p ], [ getelementptr inbounds nuw (i8, ptr @interned_mode_string.mode_string, i64 24), %bb.q ], [ getelementptr inbounds nuw (i8, ptr @interned_mode_string.mode_string, i64 36), %bb.r ], [ getelementptr inbounds nuw (i8, ptr @interned_mode_string.mode_string, i64 48), %bb.s ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.lcssa.i.i.i, i64 4 ; 4 uses
  %i.bi = load i8, ptr %i.bh, align 4, !tbaa !12
  %.not11.i.i.i = icmp eq i8 %i.bi, 0
  br i1 %.not11.i.i.i, label %bb.v, label %compute_builtin_attr.exit

bb.v:                                             ; preds = %bb.u
  %i.bj = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bh, i64 noundef 7, ptr noundef nonnull @.str.42, i32 noundef %.3.i.i) #22 ; 0 uses
  br label %compute_builtin_attr.exit

compute_builtin_attr.exit:                        ; preds = %bb.v, %bb.u, %bb.m, %bb.e, %bb.b
  %.0 = phi ptr [ %i.o, %bb.b ], [ null, %bb.e ], [ null, %bb.m ], [ %i.bh, %bb.u ], [ %i.bh, %bb.v ]
  %i.bk = load ptr, ptr %i.d, align 8, !tbaa !57  ; 2 uses
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %indvars.iv
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %.0, ptr %i.bm, align 8, !tbaa !105
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bn = load i32, ptr %2, align 8, !tbaa !51
  %i.bo = sext i32 %i.bn to i64
  %i.bp = icmp slt i64 %indvars.iv.next, %i.bo
  br i1 %i.bp, label %bb.b, label %._crit_edge, !llvm.loop !106

._crit_edge:                                      ; preds = %compute_builtin_attr.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @default_attr_source() unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr @default_attr_source.has_attr_source, align 4, !tbaa !28 ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @default_attr_source_tree_object_name, align 8, !tbaa !32 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.c, label %.thread13.i

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @getenv(ptr noundef nonnull @.str.21) #22 ; 3 uses
  store ptr %i.d, ptr @default_attr_source_tree_object_name, align 8, !tbaa !32
  %i.e = icmp eq ptr %i.d, null                   ; 2 uses
  %i.f = load ptr, ptr @git_attr_tree, align 8    ; 3 uses
  %i.g = icmp ne ptr %i.f, null
  %or.cond.not.not7.i = select i1 %i.e, i1 %i.g, i1 false
  br i1 %or.cond.not.not7.i, label %.thread2.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.e, label %compute_default_attr_source.exit, label %.thread13.i

.thread13.i:                                      ; preds = %bb.d, %bb.b
  %i.h = phi ptr [ %i.d, %bb.d ], [ %i.c, %bb.b ]
  %i.i = load ptr, ptr @startup_info, align 8, !tbaa !107
  %i.j = load i32, ptr %i.i, align 8, !tbaa !109
  %.not8.i = icmp eq i32 %i.j, 0
  br i1 %.not8.i, label %bb.e, label %bb.f

.thread2.i:                                       ; preds = %bb.c
  store ptr %i.f, ptr @default_attr_source_tree_object_name, align 8, !tbaa !32
  %i.k = load ptr, ptr @startup_info, align 8, !tbaa !107
  %i.l = load i32, ptr %i.k, align 8, !tbaa !109
  %.not83.i = icmp eq i32 %i.l, 0
  br i1 %.not83.i, label %compute_default_attr_source.exit, label %bb.f

bb.e:                                             ; preds = %.thread13.i
  %i.m = tail call fastcc ptr @_(ptr noundef nonnull @.str.22)
  tail call void (ptr, ...) @die(ptr noundef %i.m) #23
  unreachable

bb.f:                                             ; preds = %.thread2.i, %.thread13.i
  %or.cond.not.not711.i = phi i1 [ true, %.thread2.i ], [ false, %.thread13.i ]
  %i.n = phi ptr [ %i.f, %.thread2.i ], [ %i.h, %.thread13.i ]
  %i.o = load ptr, ptr @the_repository, align 8, !tbaa !77
  %i.p = tail call i32 @repo_get_oid_treeish(ptr noundef %i.o, ptr noundef nonnull %i.n, ptr noundef nonnull @default_attr_source.attr_source) #22
  %.not12.i = icmp eq i32 %i.p, 0                 ; 2 uses
  %brmerge.i = or i1 %or.cond.not.not711.i, %.not12.i
  %.mux.i = zext i1 %.not12.i to i32
  br i1 %brmerge.i, label %compute_default_attr_source.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = tail call fastcc ptr @_(ptr noundef nonnull @.str.23)
  tail call void (ptr, ...) @die(ptr noundef %i.q) #23
  unreachable

compute_default_attr_source.exit:                 ; preds = %bb.d, %.thread2.i, %bb.f
  %.04.i = phi i32 [ 0, %bb.d ], [ %.mux.i, %bb.f ], [ 0, %.thread2.i ] ; 2 uses
  store i32 %.04.i, ptr @default_attr_source.has_attr_source, align 4, !tbaa !28
  br label %bb.h

bb.h:                                             ; preds = %compute_default_attr_source.exit, %bb.a
  %i.r = phi i32 [ %.04.i, %compute_default_attr_source.exit ], [ %i.a, %bb.a ]
  %.not = icmp eq i32 %i.r, 0
  %.default_attr_source.attr_source = select i1 %.not, ptr null, ptr @default_attr_source.attr_source
  ret ptr %.default_attr_source.attr_source
}

; Function Attrs: nounwind uwtable
define internal fastcc void @collect_some_attrs(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3) unnamed_addr #1 {
bb.a:
  %4 = alloca %struct.hashmap_iter, align 8       ; 5 uses
  %5 = alloca %struct.strbuf, align 8             ; 12 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.028 = phi ptr [ %2, %bb.a ], [ %i.d, %bb.d ]  ; 5 uses
  %.027 = phi ptr [ null, %bb.a ], [ %.1, %bb.d ] ; 5 uses
  %i.a = load i8, ptr %.028, align 1, !tbaa !12
  switch i8 %i.a, label %bb.d [
    i8 0, label %bb.e
    i8 47, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.028, i64 1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !12
  %.not32 = icmp eq i8 %i.c, 0
  %spec.select = select i1 %.not32, ptr %.027, ptr %.028
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi ptr [ %.027, %bb.b ], [ %spec.select, %bb.c ]
  %i.d = getelementptr inbounds nuw i8, ptr %.028, i64 1
  br label %bb.b, !llvm.loop !111

bb.e:                                             ; preds = %bb.b
  %i.e = ptrtoint ptr %2 to i64                   ; 3 uses
  %.not31 = icmp eq ptr %.027, null               ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.027, i64 1
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = sub i64 %i.g, %i.e
  %i.i = trunc i64 %i.h to i32
  %i.j = ptrtoint ptr %.027 to i64
  %i.k = sub i64 %i.j, %i.e
  %i.l = trunc i64 %i.k to i32
  %.029 = select i1 %.not31, i32 0, i32 %i.l      ; 2 uses
  %.0 = select i1 %.not31, i32 0, i32 %i.i        ; 2 uses
  %i.m = ptrtoint ptr %.028 to i64
  %i.n = sub i64 %i.m, %i.e                       ; 2 uses
  %i.o = trunc i64 %i.n to i32                    ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) @__const.read_attr_from_file.buf, i64 24, i1 false)
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !63   ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %.lr.ph.i.i.i, label %bootstrap_attr_stack.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.e
  %i.r = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 40) #22 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 28 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 4 uses
  %i.u = tail call ptr @parse_attr_line(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27, i32 noundef range(i32 -2147483647, -2147483648) 1, i32 noundef 1) ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %read_attr_from_array.exit.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.v = load i32, ptr %i.s, align 8, !tbaa !70   ; 3 uses
  %i.w = add i32 %i.v, 1                          ; 3 uses
  %i.x = zext i32 %i.v to i64                     ; 2 uses
  %i.y = icmp eq i32 %i.v, -1
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.4, i32 noundef 654, ptr noundef nonnull @.str.28) #23
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.z = load i32, ptr %i.t, align 4, !tbaa !112  ; 2 uses
  %6 = icmp ugt i32 %i.w, %i.z
  br i1 %6, label %st_mult.exit.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.h
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !71
  br label %bb.i

st_mult.exit.i.i.i.i:                             ; preds = %bb.h
  %i.aa = mul i32 %i.z, 3
  %i.ab = add i32 %i.aa, 48
  %i.ac = lshr i32 %i.ab, 1
  %..i.i.i.i = tail call i32 @llvm.umax.i32(i32 %i.ac, i32 %i.w) ; 2 uses
  store i32 %..i.i.i.i, ptr %i.t, align 4, !tbaa !112
  %i.ad = zext i32 %..i.i.i.i to i64
  %i.ae = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !71
  %i.af = shl nuw nsw i64 %i.ad, 3
  %i.ag = tail call ptr @xrealloc(ptr noundef %i.ae, i64 noundef %i.af) #22 ; 2 uses
  store ptr %i.ag, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !71
  %.pre28.i.i.i.i = load i32, ptr %i.s, align 8, !tbaa !70
  %.pre29.i.i.i.i = zext i32 %.pre28.i.i.i.i to i64
  br label %bb.i

bb.i:                                             ; preds = %st_mult.exit.i.i.i.i, %._crit_edge.i.i.i.i
  %.pre-phi.i.i.i.i = phi i64 [ %i.x, %._crit_edge.i.i.i.i ], [ %.pre29.i.i.i.i, %st_mult.exit.i.i.i.i ]
  %i.ah = phi ptr [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.ag, %st_mult.exit.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.pre-phi.i.i.i.i
  store i64 0, ptr %i.ai, align 8
  store i32 %i.w, ptr %i.s, align 8, !tbaa !70
  %i.aj = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !71
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.x
  store ptr %i.u, ptr %i.ak, align 8, !tbaa !72
  br label %read_attr_from_array.exit.i.i

read_attr_from_array.exit.i.i:                    ; preds = %bb.i, %.lr.ph.i.i.i
  %.not.i21.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i21.i.i, label %push_stack.exit.i.i, label %bb.j

bb.j:                                             ; preds = %read_attr_from_array.exit.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr null, ptr %i.al, align 8, !tbaa !69
  %i.am = load ptr, ptr %i.p, align 8, !tbaa !63
  store ptr %i.am, ptr %i.r, align 8, !tbaa !64
  store ptr %i.r, ptr %i.p, align 8, !tbaa !63
  br label %push_stack.exit.i.i

push_stack.exit.i.i:                              ; preds = %bb.j, %read_attr_from_array.exit.i.i
  %i.an = tail call i32 @git_env_bool(ptr noundef nonnull @.str.10, i32 noundef 0) #22
  %.not.i22.not.i.i = icmp eq i32 %i.an, 0
  br i1 %.not.i22.not.i.i, label %bb.k, label %push_stack.exit25.i.i

bb.k:                                             ; preds = %push_stack.exit.i.i
  %i.ao = load ptr, ptr @git_attr_system_file.system_wide, align 8, !tbaa !32 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i23.i.i, label %bb.l, label %git_attr_system_file.exit.i.i

bb.l:                                             ; preds = %bb.k
  %i.ap = tail call ptr @system_path(ptr noundef nonnull @.str.8) #22 ; 2 uses
  store ptr %i.ap, ptr @git_attr_system_file.system_wide, align 8, !tbaa !32
  br label %git_attr_system_file.exit.i.i

git_attr_system_file.exit.i.i:                    ; preds = %bb.l, %bb.k
  %i.aq = phi ptr [ %i.ap, %bb.l ], [ %i.ao, %bb.k ]
  %i.ar = tail call fastcc ptr @read_attr_from_file(ptr noundef %i.aq, i32 noundef 1) ; 4 uses
  %.not.i24.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i24.i.i, label %push_stack.exit25.i.i, label %bb.m

bb.m:                                             ; preds = %git_attr_system_file.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr null, ptr %i.as, align 8, !tbaa !69
  %i.at = load ptr, ptr %i.p, align 8, !tbaa !63
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !64
  store ptr %i.ar, ptr %i.p, align 8, !tbaa !63
  br label %push_stack.exit25.i.i

push_stack.exit25.i.i:                            ; preds = %bb.m, %git_attr_system_file.exit.i.i, %push_stack.exit.i.i
  %i.au = load ptr, ptr @the_repository, align 8, !tbaa !77
  %i.av = tail call ptr @repo_config_values(ptr noundef %i.au) #22 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !79
  %.not.i26.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i26.i.i, label %git_attr_global_file.exit.i.i, label %git_attr_global_file.exit.thread.i.i

git_attr_global_file.exit.i.i:                    ; preds = %push_stack.exit25.i.i
  %i.ax = tail call ptr @xdg_config_home(ptr noundef nonnull @.str.9) #22 ; 2 uses
  store ptr %i.ax, ptr %i.av, align 8, !tbaa !79
  %.not18.i.i = icmp eq ptr %i.ax, null
  br i1 %.not18.i.i, label %push_stack.exit30.i.i, label %git_attr_global_file.exit.thread.i.i

git_attr_global_file.exit.thread.i.i:             ; preds = %git_attr_global_file.exit.i.i, %push_stack.exit25.i.i
  %i.ay = load ptr, ptr @the_repository, align 8, !tbaa !77
  %i.az = tail call ptr @repo_config_values(ptr noundef %i.ay) #22 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !79 ; 2 uses
  %.not.i27.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i27.i.i, label %bb.n, label %git_attr_global_file.exit28.i.i

bb.n:                                             ; preds = %git_attr_global_file.exit.thread.i.i
  %i.bb = tail call ptr @xdg_config_home(ptr noundef nonnull @.str.9) #22 ; 2 uses
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !79
  br label %git_attr_global_file.exit28.i.i

git_attr_global_file.exit28.i.i:                  ; preds = %bb.n, %git_attr_global_file.exit.thread.i.i
  %i.bc = phi ptr [ %i.bb, %bb.n ], [ %i.ba, %git_attr_global_file.exit.thread.i.i ]
  %i.bd = tail call fastcc ptr @read_attr_from_file(ptr noundef %i.bc, i32 noundef 1) ; 4 uses
  %.not.i29.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i29.i.i, label %push_stack.exit30.i.i, label %bb.o

bb.o:                                             ; preds = %git_attr_global_file.exit28.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr null, ptr %i.be, align 8, !tbaa !69
  %i.bf = load ptr, ptr %i.p, align 8, !tbaa !63
  store ptr %i.bf, ptr %i.bd, align 8, !tbaa !64
  store ptr %i.bd, ptr %i.p, align 8, !tbaa !63
  br label %push_stack.exit30.i.i

push_stack.exit30.i.i:                            ; preds = %bb.o, %git_attr_global_file.exit28.i.i, %git_attr_global_file.exit.i.i
  %i.bg = tail call fastcc ptr @read_attr(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.26, i32 noundef 3) ; 5 uses
  %i.bh = tail call ptr @xstrdup(ptr noundef nonnull @.str.14) #22 ; 2 uses
  %.not.i31.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i31.i.i, label %push_stack.exit32.i.i, label %bb.p

bb.p:                                             ; preds = %push_stack.exit30.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !69
  %.not9.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not9.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i64 0, ptr %i.bj, align 8, !tbaa !113
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bk = load ptr, ptr %i.p, align 8, !tbaa !63
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !64
  store ptr %i.bg, ptr %i.p, align 8, !tbaa !63
  br label %push_stack.exit32.i.i

push_stack.exit32.i.i:                            ; preds = %bb.r, %push_stack.exit30.i.i
  %i.bl = load ptr, ptr @startup_info, align 8, !tbaa !107
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !109
  %.not19.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not19.i.i, label %.thread.i.i, label %bb.s

bb.s:                                             ; preds = %push_stack.exit32.i.i
  %i.bn = load ptr, ptr @git_path_info_attributes.ret, align 8, !tbaa !32 ; 2 uses
  %.not.i33.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i33.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bo = load ptr, ptr @the_repository, align 8, !tbaa !77
  %i.bp = tail call ptr (ptr, ptr, ...) @repo_git_path(ptr noundef %i.bo, ptr noundef nonnull @.str.33) #22 ; 2 uses
  store ptr %i.bp, ptr @git_path_info_attributes.ret, align 8, !tbaa !32
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bq = phi ptr [ %i.bp, %bb.t ], [ %i.bn, %bb.s ]
  %i.br = tail call fastcc ptr @read_attr_from_file(ptr noundef %i.bq, i32 noundef 1) ; 2 uses
  %.not20.i.i = icmp eq ptr %i.br, null
  br i1 %.not20.i.i, label %.thread.i.i, label %.thread39.i.i

.thread.i.i:                                      ; preds = %bb.u, %push_stack.exit32.i.i
  %i.bs = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 40) #22 ; 2 uses
  %.not.i34.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i34.i.i, label %.thread.i.bootstrap_attr_stack.exit_crit_edge.i, label %.thread39.i.i

.thread.i.bootstrap_attr_stack.exit_crit_edge.i:  ; preds = %.thread.i.i
  %.pre.i = load ptr, ptr %i.p, align 8, !tbaa !63
  br label %bootstrap_attr_stack.exit.i

.thread39.i.i:                                    ; preds = %.thread.i.i, %bb.u
  %.142.i.i = phi ptr [ %i.bs, %.thread.i.i ], [ %i.br, %bb.u ] ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.142.i.i, i64 8
  store ptr null, ptr %i.bt, align 8, !tbaa !69
  %i.bu = load ptr, ptr %i.p, align 8, !tbaa !63
  store ptr %i.bu, ptr %.142.i.i, align 8, !tbaa !64
  store ptr %.142.i.i, ptr %i.p, align 8, !tbaa !63
  br label %bootstrap_attr_stack.exit.i

bootstrap_attr_stack.exit.i:                      ; preds = %.thread39.i.i, %.thread.i.bootstrap_attr_stack.exit_crit_edge.i, %bb.e
  %i.bv = phi ptr [ %.pre.i, %.thread.i.bootstrap_attr_stack.exit_crit_edge.i ], [ %i.q, %bb.e ], [ %.142.i.i, %.thread39.i.i ] ; 4 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !64 ; 3 uses
  store ptr %i.bw, ptr %i.p, align 8, !tbaa !63
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !69 ; 2 uses
  %.not66.i = icmp eq ptr %i.by, null
  br i1 %.not66.i, label %.thread.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bootstrap_attr_stack.exit.i, %bb.y
  %i.bz = phi ptr [ %i.cm, %bb.y ], [ %i.by, %bootstrap_attr_stack.exit.i ]
  %i.ca = phi ptr [ %i.ck, %bb.y ], [ %i.bw, %bootstrap_attr_stack.exit.i ] ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !113 ; 2 uses
  %i.cd = trunc i64 %i.cc to i32                  ; 2 uses
  %.not50.i = icmp slt i32 %.029, %i.cd
  br i1 %.not50.i, label %bb.y, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i
  %sext.i = shl i64 %i.cc, 32
  %i.ce = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.cf = tail call i32 @strncmp(ptr noundef nonnull %i.bz, ptr noundef %2, i64 noundef %i.ce) #21
  %.not51.i = icmp eq i32 %i.cf, 0
  br i1 %.not51.i, label %bb.w, label %bb.y

end_hunk_0
begin_hunk_1_@strbuf_add

; Function Attrs: nounwind uwtable
define internal fastcc ptr @read_attr(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 2, 4) %3) unnamed_addr #1 {
bb.a:
  %4 = alloca %struct.object_id, align 4          ; 4 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i16, align 2                      ; 3 uses
  %i.d = load i32, ptr @direction, align 4, !tbaa !28
  %i.e = icmp eq i32 %i.d, 2
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call fastcc ptr @read_attr_from_index(ptr noundef %0, ptr noundef %2, i32 noundef %3)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !137
  %i.i = call i32 @get_tree_entry(ptr noundef %i.h, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %i.c) #22
  %.not13.i = icmp eq i32 %i.i, 0
  br i1 %.not13.i, label %bb.e, label %read_attr_from_blob.exit

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !137
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !138
  %i.m = call ptr @odb_read_object(ptr noundef %i.l, ptr noundef nonnull %4, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #22 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  %i.o = load i32, ptr %i.b, align 4
  %i.p = icmp ne i32 %i.o, 3
  %or.cond.i = select i1 %i.n, i1 true, i1 %i.p
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef %i.m) #22
  br label %read_attr_from_blob.exit

bb.g:                                             ; preds = %bb.e
  %i.q = load i64, ptr %i.a, align 8, !tbaa !37
  %i.r = call fastcc ptr @read_attr_from_buf(ptr noundef %i.m, i64 noundef %i.q, ptr noundef %2, i32 noundef range(i32 2, 4) %3)
  br label %read_attr_from_blob.exit

read_attr_from_blob.exit:                         ; preds = %bb.d, %bb.f, %bb.g
  %.0.i = phi ptr [ null, %bb.d ], [ null, %bb.f ], [ %i.r, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.n

bb.h:                                             ; preds = %bb.c
  %i.s = tail call i32 @is_bare_repository() #22
  %.not25 = icmp eq i32 %i.s, 0
  br i1 %.not25, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.t = load i32, ptr @direction, align 4, !tbaa !28
  switch i32 %i.t, label %.thread [
    i32 1, label %bb.j
    i32 0, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  %i.u = tail call fastcc ptr @read_attr_from_index(ptr noundef %0, ptr noundef %2, i32 noundef %3) ; 2 uses
  %.not27 = icmp eq ptr %i.u, null
  br i1 %.not27, label %bb.k, label %.thread32

bb.k:                                             ; preds = %bb.j
  %i.v = tail call fastcc ptr @read_attr_from_file(ptr noundef %2, i32 noundef %3)
  br label %bb.n

bb.l:                                             ; preds = %bb.i
  %i.w = tail call fastcc ptr @read_attr_from_file(ptr noundef %2, i32 noundef %3) ; 2 uses
  %.not26 = icmp eq ptr %i.w, null
  br i1 %.not26, label %bb.m, label %.thread32

bb.m:                                             ; preds = %bb.l
  %i.x = tail call fastcc ptr @read_attr_from_index(ptr noundef %0, ptr noundef %2, i32 noundef %3)
  br label %bb.n

bb.n:                                             ; preds = %read_attr_from_blob.exit, %bb.k, %bb.m, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ %.0.i, %read_attr_from_blob.exit ], [ %i.x, %bb.m ], [ %i.v, %bb.k ] ; 2 uses
  %.not28 = icmp eq ptr %.0, null
  br i1 %.not28, label %.thread, label %.thread32

.thread:                                          ; preds = %bb.i, %bb.h, %bb.n
  %i.y = call ptr @xcalloc(i64 noundef 1, i64 noundef 40) #22
  br label %.thread32

.thread32:                                        ; preds = %bb.l, %bb.j, %.thread, %bb.n
  %.1 = phi ptr [ %.0, %bb.n ], [ %i.y, %.thread ], [ %i.w, %bb.l ], [ %i.u, %bb.j ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @read_attr_from_file(ptr noundef %0, i32 noundef range(i32 1, 4) %1) unnamed_addr #1 {
bb.a:
  %2 = alloca %struct.strbuf, align 8             ; 9 uses
  %3 = alloca %struct.stat, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) @__const.read_attr_from_file.buf, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %.not = icmp samesign ult i32 %1, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @open_nofollow(ptr noundef %0, i32 noundef 0) #22
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call i32 (ptr, i32, ...) @open64(ptr noundef %0, i32 noundef 0) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.020 = phi i32 [ %i.a, %bb.b ], [ %i.b, %bb.c ] ; 3 uses
  %i.c = icmp slt i32 %.020, 0
  br i1 %i.c, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.d = tail call i32 @warn_on_fopen_errors(ptr noundef %0) #22 ; 0 uses
  br label %bb.v

bb.f:                                             ; preds = %bb.d
  %i.e = tail call ptr @xfdopen(i32 noundef %.020, ptr noundef nonnull @.str.30) #22 ; 6 uses
  %i.f = call i32 @fstat64(i32 noundef %.020, ptr noundef nonnull %3) #22
  %.not21 = icmp eq i32 %i.f, 0
  br i1 %.not21, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = load i32, ptr @git_gettext_enabled, align 4, !tbaa !28
  %.not4.i = icmp eq i32 %i.g, 0
  br i1 %.not4.i, label %_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.31, i32 noundef 5) #22
  br label %_.exit

_.exit:                                           ; preds = %bb.g, %bb.h
  %.0.i = phi ptr [ %i.h, %bb.h ], [ @.str.31, %bb.g ]
  tail call void (ptr, ...) @warning_errno(ptr noundef %.0.i, ptr noundef %0) #22
  %i.i = tail call i32 @fclose(ptr noundef %i.e)  ; 0 uses
  br label %bb.v

bb.i:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.k = load i64, ptr %i.j, align 8, !tbaa !157
  %i.l = icmp sgt i64 %i.k, 104857599
  br i1 %i.l, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.m = load i32, ptr @git_gettext_enabled, align 4, !tbaa !28
  %.not4.i24 = icmp eq i32 %i.m, 0
  br i1 %.not4.i24, label %_.exit26, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.n = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.32, i32 noundef 5) #22
  br label %_.exit26

_.exit26:                                         ; preds = %bb.j, %bb.k
  %.0.i25 = phi ptr [ %i.n, %bb.k ], [ @.str.32, %bb.j ]
  tail call void (ptr, ...) @warning(ptr noundef %.0.i25, ptr noundef %0) #22
  %i.o = tail call i32 @fclose(ptr noundef %i.e)  ; 0 uses
  br label %bb.v

bb.l:                                             ; preds = %bb.i
  %i.p = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 40) #22 ; 4 uses
  %i.q = call i32 @strbuf_getline(ptr noundef nonnull %2, ptr noundef %i.e) #22
  %.not2227 = icmp eq i32 %i.q, -1
  br i1 %.not2227, label %._crit_edge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 28 ; 4 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 8 uses
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !29
  %i.v = call zeroext i1 @starts_with(ptr noundef %i.u, ptr noundef nonnull @utf8_bom) #22
  br i1 %i.v, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.w = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @utf8_bom) #21
  call void @strbuf_remove(ptr noundef nonnull %2, i64 noundef 0, i64 noundef %i.w) #22
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !29
  %i.y = call ptr @parse_attr_line(ptr noundef %i.x, ptr noundef %0, i32 noundef range(i32 -2147483647, -2147483648) 1, i32 noundef range(i32 1, 4) %1) ; 2 uses
  %.not.i.peel = icmp eq ptr %i.y, null
  br i1 %.not.i.peel, label %handle_attr_line.exit.peel, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.z = load i32, ptr %i.s, align 8, !tbaa !70   ; 3 uses
  %i.aa = add i32 %i.z, 1                         ; 3 uses
  %i.ab = zext i32 %i.z to i64                    ; 2 uses
  %i.ac = icmp eq i32 %i.z, -1
  br i1 %i.ac, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ad = load i32, ptr %i.t, align 4, !tbaa !112 ; 2 uses
  %4 = icmp ugt i32 %i.aa, %i.ad
  br i1 %4, label %st_mult.exit.i.peel, label %._crit_edge.i.peel

._crit_edge.i.peel:                               ; preds = %bb.q
  %.pre.i.peel = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !71
  br label %bb.r

st_mult.exit.i.peel:                              ; preds = %bb.q
  %i.ae = mul i32 %i.ad, 3
  %i.af = add i32 %i.ae, 48
  %i.ag = lshr i32 %i.af, 1
  %..i.peel = call i32 @llvm.umax.i32(i32 %i.ag, i32 %i.aa) ; 2 uses
  store i32 %..i.peel, ptr %i.t, align 4, !tbaa !112
  %i.ah = zext i32 %..i.peel to i64
  %i.ai = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !71
  %i.aj = shl nuw nsw i64 %i.ah, 3
  %i.ak = call ptr @xrealloc(ptr noundef %i.ai, i64 noundef %i.aj) #22 ; 2 uses
  store ptr %i.ak, ptr %.phi.trans.insert.i, align 8, !tbaa !71
  %.pre28.i.peel = load i32, ptr %i.s, align 8, !tbaa !70
  %.pre29.i.peel = zext i32 %.pre28.i.peel to i64
  br label %bb.r

bb.r:                                             ; preds = %st_mult.exit.i.peel, %._crit_edge.i.peel
  %.pre-phi.i.peel = phi i64 [ %i.ab, %._crit_edge.i.peel ], [ %.pre29.i.peel, %st_mult.exit.i.peel ]
  %i.al = phi ptr [ %.pre.i.peel, %._crit_edge.i.peel ], [ %i.ak, %st_mult.exit.i.peel ]
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.pre-phi.i.peel
  store i64 0, ptr %i.am, align 8
  store i32 %i.aa, ptr %i.s, align 8, !tbaa !70
  %i.an = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !71
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ab
  store ptr %i.y, ptr %i.ao, align 8, !tbaa !72
  br label %handle_attr_line.exit.peel

handle_attr_line.exit.peel:                       ; preds = %bb.r, %bb.o
  %i.ap = call i32 @strbuf_getline(ptr noundef nonnull %2, ptr noundef %i.e) #22
  %.not22.peel = icmp eq i32 %i.ap, -1
  br i1 %.not22.peel, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %handle_attr_line.exit.peel, %handle_attr_line.exit
  %.028 = phi i32 [ %i.aq, %handle_attr_line.exit ], [ 1, %handle_attr_line.exit.peel ]
  %.pre = load ptr, ptr %i.r, align 8, !tbaa !29
  %i.aq = add nuw nsw i32 %.028, 1                ; 2 uses
  %i.ar = call ptr @parse_attr_line(ptr noundef %.pre, ptr noundef %0, i32 noundef range(i32 -2147483647, -2147483648) %i.aq, i32 noundef range(i32 1, 4) %1) ; 2 uses
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %handle_attr_line.exit, label %bb.s

bb.s:                                             ; preds = %.peel.next
  %i.as = load i32, ptr %i.s, align 8, !tbaa !70  ; 3 uses
  %i.at = add i32 %i.as, 1                        ; 3 uses
  %i.au = zext i32 %i.as to i64                   ; 2 uses
  %i.av = icmp eq i32 %i.as, -1
  br i1 %i.av, label %.loopexit, label %bb.t

.loopexit:                                        ; preds = %bb.s, %bb.p
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.4, i32 noundef 654, ptr noundef nonnull @.str.28) #23
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.aw = load i32, ptr %i.t, align 4, !tbaa !112 ; 2 uses
  %5 = icmp ugt i32 %i.at, %i.aw
  br i1 %5, label %st_mult.exit.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.t
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !71
  br label %bb.u

st_mult.exit.i:                                   ; preds = %bb.t
  %i.ax = mul i32 %i.aw, 3
  %i.ay = add i32 %i.ax, 48
  %i.az = lshr i32 %i.ay, 1
  %..i = call i32 @llvm.umax.i32(i32 %i.az, i32 %i.at) ; 2 uses
  store i32 %..i, ptr %i.t, align 4, !tbaa !112
  %i.ba = zext i32 %..i to i64
  %i.bb = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !71
  %i.bc = shl nuw nsw i64 %i.ba, 3
  %i.bd = call ptr @xrealloc(ptr noundef %i.bb, i64 noundef %i.bc) #22 ; 2 uses
  store ptr %i.bd, ptr %.phi.trans.insert.i, align 8, !tbaa !71
  %.pre28.i = load i32, ptr %i.s, align 8, !tbaa !70
  %.pre29.i = zext i32 %.pre28.i to i64
  br label %bb.u

bb.u:                                             ; preds = %st_mult.exit.i, %._crit_edge.i
  %.pre-phi.i = phi i64 [ %i.au, %._crit_edge.i ], [ %.pre29.i, %st_mult.exit.i ]
  %i.be = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.bd, %st_mult.exit.i ]
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.pre-phi.i
  store i64 0, ptr %i.bf, align 8
  store i32 %i.at, ptr %i.s, align 8, !tbaa !70
  %i.bg = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !71
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.au
  store ptr %i.ar, ptr %i.bh, align 8, !tbaa !72
  br label %handle_attr_line.exit

handle_attr_line.exit:                            ; preds = %.peel.next, %bb.u
  %i.bi = call i32 @strbuf_getline(ptr noundef nonnull %2, ptr noundef %i.e) #22
  %.not22 = icmp eq i32 %i.bi, -1
  br i1 %.not22, label %._crit_edge, label %.peel.next, !llvm.loop !158

._crit_edge:                                      ; preds = %handle_attr_line.exit, %handle_attr_line.exit.peel, %bb.l
  %i.bj = call i32 @fclose(ptr noundef %i.e)      ; 0 uses
  call void @strbuf_release(ptr noundef nonnull %2) #22
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge, %_.exit26, %_.exit, %bb.e
  %.019 = phi ptr [ null, %bb.e ], [ null, %_.exit ], [ null, %_.exit26 ], [ %i.p, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret ptr %.019
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

declare i32 @open_nofollow(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree
declare noundef i32 @open64(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #17

declare i32 @warn_on_fopen_errors(ptr noundef) local_unnamed_addr #4

declare ptr @xfdopen(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fstat64(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #12

declare void @warning_errno(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #12

declare i32 @strbuf_getline(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @strbuf_remove(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare ptr @repo_git_path(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

declare void @strbuf_grow(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc ptr @read_attr_from_index(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 2, 4) %2) unnamed_addr #1 {
bb.a:
  %3 = alloca %struct.object_id, align 4          ; 4 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i16, align 2                      ; 3 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @path_in_cone_mode_sparse_checkout(ptr noundef %1, ptr noundef nonnull %0) #22
  %.not36 = icmp eq i32 %i.e, 0
  br i1 %.not36, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #21
  %i.g = trunc i64 %i.f to i32
  %i.h = tail call i32 @index_name_pos_sparse(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %i.g) #22 ; 2 uses
  %i.i = icmp slt i32 %i.h, -1
  br i1 %i.i, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.j = sub nuw nsw i32 -2, %i.h
  %i.k = load ptr, ptr %0, align 8, !tbaa !88
  %i.l = zext nneg i32 %i.j to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !101  ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 52
  %i.p = load i32, ptr %i.o, align 4, !tbaa !28
  %i.q = icmp eq i32 %i.p, 16384
  br i1 %i.q, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 108
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.t = load i32, ptr %i.s, align 8, !tbaa !28
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %i.v = tail call i32 @strncmp(ptr noundef nonnull %i.r, ptr noundef nonnull %1, i64 noundef %i.u) #21
  %.not37 = icmp eq i32 %i.v, 0
  br i1 %.not37, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %i.u ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !137
  %i.aa = call i32 @get_tree_entry(ptr noundef %i.z, ptr noundef nonnull %i.x, ptr noundef nonnull %i.w, ptr noundef nonnull %3, ptr noundef nonnull %i.c) #22
  %.not13.i = icmp eq i32 %i.aa, 0
  br i1 %.not13.i, label %bb.g, label %read_attr_from_blob.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !137
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !138
  %i.ae = call ptr @odb_read_object(ptr noundef %i.ad, ptr noundef nonnull %3, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #22 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  %i.ag = load i32, ptr %i.b, align 4
  %i.ah = icmp ne i32 %i.ag, 3
  %or.cond.i = select i1 %i.af, i1 true, i1 %i.ah
  br i1 %or.cond.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef %i.ae) #22
  br label %read_attr_from_blob.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !37
  %i.aj = call fastcc ptr @read_attr_from_buf(ptr noundef %i.ae, i64 noundef %i.ai, ptr noundef nonnull %i.w, i32 noundef range(i32 2, 4) %2)
  br label %read_attr_from_blob.exit

read_attr_from_blob.exit:                         ; preds = %bb.f, %bb.h, %bb.i
  %.0.i = phi ptr [ null, %bb.f ], [ null, %bb.h ], [ %i.aj, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.k

.thread:                                          ; preds = %bb.c, %bb.b, %bb.e, %bb.d
  %i.ak = call ptr @read_blob_data_from_index(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.d) #22 ; 2 uses
  %.not38 = icmp eq ptr %i.ak, null
  br i1 %.not38, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.thread
  %i.al = load i64, ptr %i.d, align 8, !tbaa !37
  %i.am = call fastcc ptr @read_attr_from_buf(ptr noundef %i.ak, i64 noundef %i.al, ptr noundef %1, i32 noundef %2)
  br label %bb.k

bb.k:                                             ; preds = %read_attr_from_blob.exit, %bb.j, %.thread, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.am, %bb.j ], [ null, %.thread ], [ %.0.i, %read_attr_from_blob.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  ret ptr %.0
}

declare i32 @path_in_cone_mode_sparse_checkout(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @index_name_pos_sparse(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @read_blob_data_from_index(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc ptr @read_attr_from_buf(ptr noundef nonnull %0, i64 noundef %1, ptr noundef %2, i32 noundef range(i32 2, 4) %3) unnamed_addr #1 {
bb.a:
  %i.a = icmp ugt i64 %1, 104857599
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @git_gettext_enabled, align 4, !tbaa !28
  %.not4.i = icmp eq i32 %i.b, 0
  br i1 %.not4.i, label %_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 5) #22
  br label %_.exit

_.exit:                                           ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.c ], [ @.str.34, %bb.b ]
  tail call void (ptr, ...) @warning(ptr noundef %.0.i, ptr noundef %2) #22
  br label %._crit_edge

bb.d:                                             ; preds = %bb.a
  %i.d = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 40) #22 ; 5 uses
  %i.e = load i8, ptr %0, align 1, !tbaa !12
  %.not21 = icmp eq i8 %i.e, 0
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 28 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %handle_attr_line.exit
  %.01823 = phi ptr [ %0, %.lr.ph ], [ %i.ad, %handle_attr_line.exit ] ; 2 uses
  %.01922 = phi i32 [ 0, %.lr.ph ], [ %i.k, %handle_attr_line.exit ]
  %i.h = tail call ptr @strchrnul(ptr noundef nonnull %.01823, i32 noundef 10) #21 ; 3 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !12
  %i.j = icmp eq i8 %i.i, 10
  store i8 0, ptr %i.h, align 1, !tbaa !12
  %i.k = add nuw nsw i32 %.01922, 1               ; 2 uses
  %i.l = tail call ptr @parse_attr_line(ptr noundef nonnull %.01823, ptr noundef %2, i32 noundef range(i32 -2147483647, -2147483648) %i.k, i32 noundef range(i32 1, 4) %3) ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %handle_attr_line.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load i32, ptr %i.f, align 8, !tbaa !70   ; 3 uses
  %i.n = add i32 %i.m, 1                          ; 3 uses
  %i.o = zext i32 %i.m to i64                     ; 2 uses
  %i.p = icmp eq i32 %i.m, -1
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.4, i32 noundef 654, ptr noundef nonnull @.str.28) #23
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.q = load i32, ptr %i.g, align 4, !tbaa !112  ; 2 uses
  %4 = icmp ugt i32 %i.n, %i.q
  br i1 %4, label %st_mult.exit.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.h
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !71
  br label %bb.i

st_mult.exit.i:                                   ; preds = %bb.h
  %i.r = mul i32 %i.q, 3
  %i.s = add i32 %i.r, 48
  %i.t = lshr i32 %i.s, 1
  %..i = tail call i32 @llvm.umax.i32(i32 %i.t, i32 %i.n) ; 2 uses
  store i32 %..i, ptr %i.g, align 4, !tbaa !112
  %i.u = zext i32 %..i to i64
  %i.v = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !71
  %i.w = shl nuw nsw i64 %i.u, 3
  %i.x = tail call ptr @xrealloc(ptr noundef %i.v, i64 noundef %i.w) #22 ; 2 uses
  store ptr %i.x, ptr %.phi.trans.insert.i, align 8, !tbaa !71
  %.pre28.i = load i32, ptr %i.f, align 8, !tbaa !70
  %.pre29.i = zext i32 %.pre28.i to i64
  br label %bb.i

bb.i:                                             ; preds = %st_mult.exit.i, %._crit_edge.i
  %.pre-phi.i = phi i64 [ %i.o, %._crit_edge.i ], [ %.pre29.i, %st_mult.exit.i ]
  %i.y = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.x, %st_mult.exit.i ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.pre-phi.i
  store i64 0, ptr %i.z, align 8
  store i32 %i.n, ptr %i.f, align 8, !tbaa !70
  %i.aa = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !71
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.o
  store ptr %i.l, ptr %i.ab, align 8, !tbaa !72
  br label %handle_attr_line.exit

handle_attr_line.exit:                            ; preds = %bb.e, %bb.i
  %i.ac = zext i1 %i.j to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ac ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !12
  %.not = icmp eq i8 %i.ae, 0
  br i1 %.not, label %._crit_edge, label %bb.e, !llvm.loop !160

._crit_edge:                                      ; preds = %handle_attr_line.exit, %bb.d, %_.exit
  %.0 = phi ptr [ null, %_.exit ], [ %i.d, %bb.d ], [ %i.d, %handle_attr_line.exit ]
  tail call void @free(ptr noundef nonnull %0) #22
  ret ptr %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @strchrnul(ptr noundef, i32 noundef) local_unnamed_addr #18

declare i32 @get_tree_entry(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @odb_read_object(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @hashmap_iter_next(ptr noundef) local_unnamed_addr #4

declare void @hashmap_iter_init(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @match_basename(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @match_pathname(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @lstat64(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: noreturn
declare void @die_errno(ptr noundef, ...) local_unnamed_addr #8

declare i32 @index_name_pos(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @repo_resolve_gitlink_ref(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 2) i32 @attr_hash_entry_cmp(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3) #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !22
  %.not = icmp eq i64 %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.i = tail call i32 @strncmp(ptr noundef %i.f, ptr noundef %i.h, i64 noundef %i.b) #21
  %i.j = icmp ne i32 %i.i, 0
  %i.k = zext i1 %i.j to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = phi i32 [ 1, %bb.a ], [ %i.k, %bb.b ]
  ret i32 %i.l
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nounwind willreturn memory(read) }
attributes #22 = { nounwind }
attributes #23 = { noreturn nounwind }
attributes #24 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!10, !10, i64 0}
!13 = !{!14, !9, i64 8}
!14 = !{!"hashmap_entry", !15, i64 0, !9, i64 8}
!15 = !{!"p1 _ZTS13hashmap_entry", !16, i64 0}
!16 = !{!"any pointer", !10, i64 0}
!17 = !{!14, !15, i64 0}
!18 = !{!19, !20, i64 16}
!19 = !{!"attr_hash_entry", !14, i64 0, !20, i64 16, !21, i64 24, !16, i64 32}
!20 = !{!"p1 omnipotent char", !16, i64 0}
!21 = !{!"long", !10, i64 0}
!22 = !{!19, !21, i64 24}
!23 = !{!19, !16, i64 32}
!24 = !{!25, !9, i64 24}
!25 = !{!"hashmap", !26, i64 0, !16, i64 8, !16, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40}
!26 = !{!"p2 _ZTS13hashmap_entry", !27, i64 0}
!27 = !{!"any p2 pointer", !16, i64 0}
!28 = !{!9, !9, i64 0}
!29 = !{!30, !20, i64 16}
!30 = !{!"strbuf", !21, i64 0, !21, i64 8, !20, i64 16}
!31 = !{!30, !21, i64 8}
!32 = !{!20, !20, i64 0}
!33 = !{!34, !34, i64 0}
!34 = !{!"p1 _ZTS8_IO_FILE", !16, i64 0}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!21, !21, i64 0}
!38 = distinct !{!38, !36}
!39 = !{!40, !20, i64 8}
!40 = !{!"attr_state", !41, i64 0, !20, i64 8}
!41 = !{!"p1 _ZTS8git_attr", !16, i64 0}
!42 = !{!40, !41, i64 0}
!43 = !{!44, !21, i64 0}
!44 = !{!"check_vector", !21, i64 0, !21, i64 8, !45, i64 16, !10, i64 24}
!45 = !{!"p2 _ZTS10attr_check", !27, i64 0}
!46 = !{!44, !21, i64 8}
!47 = !{!44, !45, i64 16}
!48 = !{!49, !49, i64 0}
!49 = !{!"p1 _ZTS10attr_check", !16, i64 0}
!50 = distinct !{!50, !36}
!51 = !{!52, !9, i64 0}
!52 = !{!"attr_check", !9, i64 0, !9, i64 4, !53, i64 8, !9, i64 16, !54, i64 24, !55, i64 32}
!53 = !{!"p1 _ZTS15attr_check_item", !16, i64 0}
!54 = !{!"p1 _ZTS14all_attrs_item", !16, i64 0}
end_hunk_1

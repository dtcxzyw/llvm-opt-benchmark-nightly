Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/split-index?download=true
inline.NumInlined: 25
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@init_split_index:bb.a
  %.not5 = icmp eq i32 %i.d, 0
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call fastcc ptr @_()
  tail call void (ptr, ...) @die(ptr noundef %i.e) #12
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 88) #13 ; 3 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 84
  store i32 1, ptr %i.g, align 4, !tbaa !35
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.h = phi ptr [ %i.f, %bb.d ], [ %i.b, %bb.a ]
  ret ptr %i.h
}

; Function Attrs: noreturn
declare void @die(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @_() unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @git_gettext_enabled, align 4, !tbaa !36
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ @.str, %bb.a ]
  ret ptr %.0
}

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @read_link_extension(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !60   ; 2 uses
  %i.g = icmp ult i64 %2, %i.f
  br i1 %i.g, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !31   ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.c, label %init_split_index.exit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.k = load i32, ptr %i.j, align 4, !tbaa !32
  %.not5.i = icmp eq i32 %i.k, 0
  br i1 %.not5.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call fastcc ptr @_()
  tail call void (ptr, ...) @die(ptr noundef %i.l) #12
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 88) #13 ; 3 uses
  store ptr %i.m, ptr %i.h, align 8, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 84
  store i32 1, ptr %i.n, align 4, !tbaa !35
  %.pre = load i64, ptr %i.e, align 8, !tbaa !60
  br label %init_split_index.exit

init_split_index.exit:                            ; preds = %bb.b, %bb.e
  %i.o = phi i64 [ %.pre, %bb.e ], [ %i.f, %bb.b ]
  %i.p = phi ptr [ %i.m, %bb.e ], [ %i.i, %bb.b ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.p, ptr readonly align 1 %1, i64 %i.o, i1 false)
  %i.q = load i64, ptr %i.e, align 8, !tbaa !60   ; 3 uses
  %i.r = icmp ult i64 %i.q, 32
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %init_split_index.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q
  %i.t = sub nuw nsw i64 32, %i.q
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.s, i8 0, i64 %i.t, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %init_split_index.exit
  %.not.i.i = icmp eq ptr %i.d, @hash_algos
  br i1 %.not.i.i, label %oidread.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.1.i.i = icmp eq ptr %i.d, getelementptr inbounds nuw (i8, ptr @hash_algos, i64 112)
  br i1 %.not.1.i.i, label %oidread.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.2.i.i = icmp eq ptr %i.d, getelementptr inbounds nuw (i8, ptr @hash_algos, i64 224)
  %spec.select.i.i = select i1 %.not.2.i.i, i32 2, i32 0
  br label %oidread.exit

oidread.exit:                                     ; preds = %bb.g, %bb.h, %bb.i
  %.2.i.i = phi i32 [ %spec.select.i.i, %bb.i ], [ 0, %bb.g ], [ 1, %bb.h ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store i32 %.2.i.i, ptr %i.u, align 4, !tbaa !76
  %i.v = load i64, ptr %i.e, align 8, !tbaa !60   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %i.v ; 2 uses
  %i.x = sub i64 %2, %i.v                         ; 2 uses
  %.not = icmp eq i64 %2, %i.v
  br i1 %.not, label %bb.m, label %bb.j

bb.j:                                             ; preds = %oidread.exit
  %i.y = tail call ptr @ewah_new() #13            ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store ptr %i.y, ptr %i.z, align 8, !tbaa !61
  %i.aa = tail call i64 @ewah_read_mmap(ptr noundef %i.y, ptr noundef %i.w, i64 noundef %i.x) #13 ; 2 uses
  %i.ab = and i64 %i.aa, 2147483648
  %.not33 = icmp eq i64 %i.ab, 0
  br i1 %.not33, label %bb.k, label %.sink.split

bb.k:                                             ; preds = %bb.j
  %i.ac = and i64 %i.aa, 2147483647               ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ac
  %i.ae = sub i64 %i.x, %i.ac                     ; 2 uses
  %i.af = tail call ptr @ewah_new() #13           ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !62
  %i.ah = tail call i64 @ewah_read_mmap(ptr noundef %i.af, ptr noundef %i.ad, i64 noundef %i.ae) #13 ; 2 uses
  %i.ai = and i64 %i.ah, 2147483648
  %.not34 = icmp eq i64 %i.ai, 0
  br i1 %.not34, label %bb.l, label %.sink.split

bb.l:                                             ; preds = %bb.k
  %i.aj = and i64 %i.ah, 2147483647
  %.not35 = icmp eq i64 %i.aj, %i.ae
  br i1 %.not35, label %bb.m, label %.sink.split

.sink.split:                                      ; preds = %bb.l, %bb.k, %bb.j, %bb.a
  %.str.4.sink = phi ptr [ @.str.3, %bb.k ], [ @.str.2, %bb.j ], [ @.str.1, %bb.a ], [ @.str.4, %bb.l ]
  %i.ak = tail call i32 (ptr, ...) @error(ptr noundef nonnull %.str.4.sink) #13 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.l, %oidread.exit
  %.0 = phi i32 [ 0, %oidread.exit ], [ 0, %bb.l ], [ -1, %.sink.split ]
  ret i32 %.0
}

declare i32 @error(ptr noundef, ...) local_unnamed_addr #3

declare ptr @ewah_new() local_unnamed_addr #3

declare i64 @ewah_read_mmap(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @write_link_extension(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 448
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !60
  tail call void @strbuf_add(ptr noundef %0, ptr noundef %i.b, i64 noundef %i.h) #13
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !61   ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !62
  %.not10 = icmp eq ptr %i.l, null
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = tail call i32 @ewah_serialize_strbuf(ptr noundef %i.j, ptr noundef %0) #13 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !62
  %i.p = tail call i32 @ewah_serialize_strbuf(ptr noundef %i.o, ptr noundef %0) #13 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret i32 0
}

declare void @strbuf_add(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @ewah_serialize_strbuf(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @move_cache_to_base_index(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !63   ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !64   ; 2 uses
  %.not46 = icmp eq ptr %i.f, null
  br i1 %.not46, label %.thread70, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !64   ; 2 uses
  %.not47 = icmp eq ptr %i.h, null
  br i1 %.not47, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @xmalloc(i64 noundef 24) #13 ; 2 uses
  store ptr %i.i, ptr %i.g, align 8, !tbaa !64
  tail call void @mem_pool_init(ptr noundef %i.i, i64 noundef 0) #13
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !64
  %.pre55 = load ptr, ptr %i.a, align 8, !tbaa !31
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre55, i64 40
  %.pre56 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !63
  %.phi.trans.insert57 = getelementptr inbounds nuw i8, ptr %.pre56, i64 224
  %.pre58 = load ptr, ptr %.phi.trans.insert57, align 8, !tbaa !64
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.j = phi ptr [ %.pre58, %bb.d ], [ %i.f, %bb.c ]
  %i.k = phi ptr [ %.pre, %bb.d ], [ %i.h, %bb.c ]
  tail call void @mem_pool_combine(ptr noundef %i.k, ptr noundef %i.j) #13
  %.pr.pre = load ptr, ptr %i.c, align 8, !tbaa !63 ; 2 uses
  %.not48 = icmp eq ptr %.pr.pre, null
  br i1 %.not48, label %.thread, label %.thread70

.thread70:                                        ; preds = %bb.b, %bb.e
  %.pr73 = phi ptr [ %.pr.pre, %bb.e ], [ %i.d, %bb.b ]
  tail call void @release_index(ptr noundef nonnull %.pr73) #13
  %.pre60 = load ptr, ptr %i.c, align 8, !tbaa !63
  br label %bb.f

.thread:                                          ; preds = %bb.a, %bb.e
  %i.l = tail call ptr @xmalloc(i64 noundef 256) #13 ; 2 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !63
  br label %bb.f

bb.f:                                             ; preds = %.thread, %.thread70
  %i.m = phi ptr [ %i.l, %.thread ], [ %.pre60, %.thread70 ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !37
  tail call void @index_state_init(ptr noundef %i.m, ptr noundef %i.o) #13
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !78
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !63   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 %i.q, ptr %i.s, align 8, !tbaa !78
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load i64, ptr %i.u, align 8
  store i64 %i.v, ptr %i.t, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !65   ; 3 uses
  %1 = load ptr, ptr %i.c, align 8, !tbaa !63     ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !66   ; 2 uses
  %i.aa = icmp ugt i32 %i.x, %i.z
  br i1 %i.aa, label %st_mult.exit, label %bb.g

st_mult.exit:                                     ; preds = %bb.f
  %i.ab = mul i32 %i.z, 3
  %i.ac = add i32 %i.ab, 48
  %i.ad = lshr i32 %i.ac, 1
  %. = tail call i32 @llvm.umax.i32(i32 %i.ad, i32 %i.x) ; 2 uses
  store i32 %., ptr %i.y, align 8, !tbaa !66
  %i.ae = zext i32 %. to i64
  %i.af = load ptr, ptr %1, align 8, !tbaa !67
  %i.ag = shl nuw nsw i64 %i.ae, 3
  %i.ah = tail call ptr @xrealloc(ptr noundef %i.af, i64 noundef %i.ag) #13
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !63  ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !67
  %.pre61 = load i32, ptr %i.w, align 4, !tbaa !65
  br label %bb.g

bb.g:                                             ; preds = %st_mult.exit, %bb.f
  %i.aj = phi ptr [ %i.ai, %st_mult.exit ], [ %1, %bb.f ] ; 4 uses
  %i.ak = phi i32 [ %.pre61, %st_mult.exit ], [ %i.x, %bb.f ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !65
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 224
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !64
  store ptr null, ptr %i.am, align 8, !tbaa !64
  %i.ap = load i32, ptr %i.w, align 4, !tbaa !65  ; 2 uses
  %.not.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i, label %copy_array.exit, label %st_mult.exit.i

st_mult.exit.i:                                   ; preds = %bb.g
  %i.aq = zext i32 %i.ap to i64
  %i.ar = load ptr, ptr %0, align 8, !tbaa !67
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !67
  %i.at = shl nuw nsw i64 %i.aq, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr readonly align 1 %i.ar, i64 %i.at, i1 false)
  %.pre62 = load ptr, ptr %i.c, align 8, !tbaa !63 ; 2 uses
  %.phi.trans.insert63 = getelementptr inbounds nuw i8, ptr %.pre62, i64 12
  %.pre64 = load i32, ptr %.phi.trans.insert63, align 4, !tbaa !65
  br label %copy_array.exit

copy_array.exit:                                  ; preds = %bb.g, %st_mult.exit.i
  %i.au = phi i32 [ %i.ak, %bb.g ], [ %.pre64, %st_mult.exit.i ]
  %i.av = phi ptr [ %i.aj, %bb.g ], [ %.pre62, %st_mult.exit.i ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 12 ; 2 uses
  %.not.i49 = icmp eq i32 %i.au, 0
  br i1 %.not.i49, label %._crit_edge, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %copy_array.exit
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !67
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.h ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.i
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !69
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 68
  %i.bb = trunc nuw nsw i64 %indvars.iv.next.i to i32
  store i32 %i.bb, ptr %i.ba, align 4, !tbaa !36
  %i.bc = load i32, ptr %i.aw, align 4, !tbaa !65 ; 2 uses
  %i.bd = zext i32 %i.bc to i64
  %i.be = icmp samesign ult i64 %indvars.iv.next.i, %i.bd
  br i1 %i.be, label %bb.h, label %mark_base_index_entries.exit, !llvm.loop !0

mark_base_index_entries.exit:                     ; preds = %bb.h
  %i.bf = icmp eq i32 %i.bc, 0
  br i1 %i.bf, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %mark_base_index_entries.exit
  %i.bg = load ptr, ptr %i.av, align 8, !tbaa !67
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !69
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 56 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !36
  %i.bl = and i32 %i.bk, -134217729
  store i32 %i.bl, ptr %i.bj, align 8, !tbaa !36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bm = load i32, ptr %i.aw, align 4, !tbaa !65
  %i.bn = zext i32 %i.bm to i64
  %i.bo = icmp samesign ult i64 %indvars.iv.next, %i.bn
  br i1 %i.bo, label %bb.i, label %._crit_edge, !llvm.loop !77

._crit_edge:                                      ; preds = %bb.i, %copy_array.exit, %mark_base_index_entries.exit
  ret void
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare void @mem_pool_init(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @mem_pool_combine(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @release_index(ptr noundef) local_unnamed_addr #3

declare void @index_state_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @merge_base_index(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !63   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !65
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %mark_base_index_entries.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !67
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !69
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 68
  %i.k = trunc nuw nsw i64 %indvars.iv.next.i to i32
  store i32 %i.k, ptr %i.j, align 4, !tbaa !36
  %i.l = load i32, ptr %i.e, align 4, !tbaa !65   ; 2 uses
  %i.m = zext i32 %i.l to i64
  %i.n = icmp samesign ult i64 %indvars.iv.next.i, %i.m
  br i1 %i.n, label %bb.b, label %mark_base_index_entries.exit, !llvm.loop !0

mark_base_index_entries.exit:                     ; preds = %bb.b, %bb.a
  %i.o = phi i32 [ 0, %bb.a ], [ %i.l, %bb.b ]    ; 3 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !67
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 4 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !71
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !65
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 3 uses
  store i32 %i.s, ptr %i.t, align 8, !tbaa !72
  store i32 %i.o, ptr %i.r, align 4, !tbaa !65
  store ptr null, ptr %0, align 8, !tbaa !67
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.u, align 8, !tbaa !66
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %copy_array.exit, label %bb.c

bb.c:                                             ; preds = %mark_base_index_entries.exit
  %. = tail call i32 @llvm.umax.i32(i32 %i.o, i32 24) ; 2 uses
  store i32 %., ptr %i.u, align 8, !tbaa !66
  %i.v = zext i32 %. to i64
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call ptr @xrealloc(ptr noundef null, i64 noundef %i.w) #13 ; 2 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !67
  %.pre = load i32, ptr %i.r, align 4, !tbaa !65  ; 2 uses
  %.not.i53 = icmp eq i32 %.pre, 0
  br i1 %.not.i53, label %copy_array.exit, label %st_mult.exit.i

st_mult.exit.i:                                   ; preds = %bb.c
  %i.y = zext i32 %.pre to i64
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !63
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !67
  %i.ab = shl nuw nsw i64 %i.y, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr readonly align 1 %i.aa, i64 %i.ab, i1 false)
  br label %copy_array.exit

copy_array.exit:                                  ; preds = %mark_base_index_entries.exit, %bb.c, %st_mult.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 76 ; 2 uses
  store i32 0, ptr %i.ac, align 4, !tbaa !73
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  store i32 0, ptr %i.ad, align 8, !tbaa !74
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !62
  tail call void @ewah_each_bit(ptr noundef %i.af, ptr noundef nonnull @replace_entry, ptr noundef nonnull %0) #13
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !61
  tail call void @ewah_each_bit(ptr noundef %i.ah, ptr noundef nonnull @mark_entry_for_delete, ptr noundef nonnull %0) #13
  %i.ai = load i32, ptr %i.ac, align 4, !tbaa !73
  %.not51 = icmp eq i32 %i.ai, 0
  br i1 %.not51, label %bb.e, label %bb.d

bb.d:                                             ; preds = %copy_array.exit
  tail call void @remove_marked_cache_entries(ptr noundef nonnull %0, i32 noundef 0) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %copy_array.exit
  %i.aj = load i32, ptr %i.ad, align 8, !tbaa !74 ; 2 uses
  %i.ak = load i32, ptr %i.t, align 8, !tbaa !72
  %i.al = icmp ult i32 %i.aj, %i.ak
  br i1 %i.al, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.am = zext i32 %i.aj to i64
  %.pre59 = load ptr, ptr %i.q, align 8, !tbaa !71
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %i.an = phi ptr [ %.pre59, %.lr.ph.preheader ], [ %i.au, %bb.g ]
  %indvars.iv = phi i64 [ %i.am, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 4 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !69 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !36
  %.not52 = icmp eq i32 %i.ar, 0
  br i1 %.not52, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.as = trunc nuw i64 %indvars.iv to i32
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.5, i32 noundef %i.as) #12
  unreachable

bb.g:                                             ; preds = %.lr.ph
  %i.at = tail call i32 @add_index_entry(ptr noundef nonnull %0, ptr noundef nonnull %i.ap, i32 noundef 37) #13 ; 0 uses
  %i.au = load ptr, ptr %i.q, align 8, !tbaa !71  ; 2 uses
end_hunk_0

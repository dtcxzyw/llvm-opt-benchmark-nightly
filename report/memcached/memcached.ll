Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/memcached/original/memcached?download=true
inline.NumInlined: 142
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@resp_has_stack:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !83
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !102
  %i.e = icmp ne ptr %i.d, null
  ret i1 %i.e
}

; Function Attrs: nounwind uwtable
define dso_local void @out_string(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110  ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !103  ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @item_remove(ptr noundef nonnull %i.d) #33
  store ptr null, ptr %i.c, align 8, !tbaa !103
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !104  ; 2 uses
  %.not13.i = icmp eq ptr %i.f, null
  br i1 %.not13.i, label %resp_reset.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.f) #33
  store ptr null, ptr %i.e, align 8, !tbaa !104
  br label %resp_reset.exit

resp_reset.exit:                                  ; preds = %bb.c, %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 0, ptr %i.g, align 8, !tbaa !135
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 3 uses
  store i32 0, ptr %i.h, align 4, !tbaa !115
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.i, i8 0, i64 7, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 121
  %i.k = load i8, ptr %i.j, align 1, !tbaa !147, !range !66, !noundef !67
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.e, label %bb.k

bb.e:                                             ; preds = %resp_reset.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 118
  store i8 1, ptr %i.m, align 2, !tbaa !101
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !57
  %i.o = icmp sgt i32 %i.n, 1
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !60
  %i.s = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.16, i32 noundef %i.r, ptr noundef %1) #35 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !56   ; 2 uses
  %.not.i22 = icmp eq i32 %i.u, 1
  br i1 %.not.i22, label %conn_set_state.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !57
  %i.w = icmp sgt i32 %i.v, 2
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !60
  %i.aa = zext i32 %i.u to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr @__const.state_text.statenames, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !62
  %i.ad = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.x, ptr noundef nonnull @.str.15, i32 noundef %i.z, ptr noundef %i.ac, ptr noundef nonnull @.str.370) #35 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i32 1, ptr %i.t, align 8, !tbaa !56
  br label %conn_set_state.exit

bb.k:                                             ; preds = %resp_reset.exit
  %i.ae = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !57
  %i.af = icmp sgt i32 %i.ae, 1
  br i1 %i.af, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ag = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !60
  %i.aj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ag, ptr noundef nonnull @.str.17, i32 noundef %i.ai, ptr noundef %1) #35 ; 0 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  %.pre = load i8, ptr %.phi.trans.insert, align 4, !tbaa !136
  %.pre25 = load i32, ptr %i.h, align 4, !tbaa !115
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ak = phi i32 [ %.pre25, %bb.l ], [ 0, %bb.k ]
  %i.al = phi i8 [ %.pre, %bb.l ], [ 0, %bb.k ]   ; 2 uses
  %i.am = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #41 ; 2 uses
  %i.an = add i64 %i.am, -1023
  %i.ao = icmp ult i64 %i.an, -1025               ; 2 uses
  %spec.select = select i1 %i.ao, ptr @.str.18, ptr %1
  %spec.select21 = select i1 %i.ao, i64 33, i64 %i.am ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 164 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ap, ptr nonnull align 1 %spec.select, i64 %spec.select21, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %spec.select21
  store i16 2573, ptr %i.aq, align 1
  %i.ar = trunc i64 %spec.select21 to i32
  %i.as = add i32 %i.ar, 2                        ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.av = zext i8 %i.al to i64
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %i.av ; 2 uses
  store ptr %i.ap, ptr %i.aw, align 8, !tbaa !113
  %i.ax = sext i32 %i.as to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !114
  %i.az = add i8 %i.al, 1
  store i8 %i.az, ptr %i.at, align 4, !tbaa !136
  %i.ba = add nsw i32 %i.ak, %i.as
  store i32 %i.ba, ptr %i.h, align 4, !tbaa !115
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !56 ; 2 uses
  %.not.i23 = icmp eq i32 %i.bc, 1
  br i1 %.not.i23, label %conn_set_state.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !57
  %i.be = icmp sgt i32 %i.bd, 2
  br i1 %i.be, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bf = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !60
  %i.bi = zext i32 %i.bc to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr @__const.state_text.statenames, i64 %i.bi
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !62
  %i.bl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bf, ptr noundef nonnull @.str.15, i32 noundef %i.bh, ptr noundef %i.bk, ptr noundef nonnull @.str.370) #35 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  store i32 1, ptr %i.bb, align 8, !tbaa !56
  br label %conn_set_state.exit

conn_set_state.exit:                              ; preds = %bb.p, %bb.m, %bb.j, %bb.g
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nounwind uwtable
define dso_local void @out_errstring(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 121
  store i8 0, ptr %i.c, align 1, !tbaa !147
  tail call void @out_string(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @out_of_memory(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.b = load i32, ptr %i.a, align 4, !tbaa !73
  %i.c = icmp eq i32 %i.b, 4
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(14) @out_of_memory.error_prefix, i64 noundef 13) #41
  %.not = icmp eq i32 %i.d, 0
  %spec.select.idx = select i1 %.not, i64 13, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.idx
  tail call void @write_bin_error(ptr noundef nonnull %0, i32 noundef 130, ptr noundef nonnull %spec.select, i32 noundef 0) #33
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @out_string(ptr noundef nonnull %0, ptr noundef %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #17

declare void @write_bin_error(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @append_stats(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i16 %1, 0                        ; 3 uses
  %i.b = icmp ne i32 %3, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i16 %1 to i32
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 260
  %i.e = load i32, ptr %i.d, align 4, !tbaa !73
  %i.f = icmp eq i32 %i.e, 4
  %i.g = add i32 %3, %i.c                         ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 312 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 320 ; 5 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !266  ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 328 ; 7 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !267  ; 4 uses
  %i.m = sub i64 %i.j, %i.l                       ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !268  ; 5 uses
  %i.o = icmp eq ptr %i.n, null                   ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.p = zext i32 %i.g to i64
  %i.q = add nuw nsw i64 %i.p, 24                 ; 3 uses
  br i1 %i.o, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  br label %.lr.ph.i.preheader

bb.d:                                             ; preds = %bb.c
  %i.r = icmp ugt i64 %i.q, %i.m
  br i1 %i.r, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %.thread, %bb.d
  %.022.i51 = phi i64 [ 1024, %.thread ], [ %i.j, %bb.d ]
  %i.s = phi i64 [ 0, %.thread ], [ %i.l, %bb.d ] ; 2 uses
  %i.t = phi i64 [ 0, %.thread ], [ %i.j, %bb.d ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.12326.i = phi i64 [ %i.u, %.lr.ph.i ], [ %.022.i51, %.lr.ph.i.preheader ]
  %i.u = shl i64 %.12326.i, 1                     ; 4 uses
  %i.v = sub i64 %i.u, %i.s
  %i.w = icmp ugt i64 %i.q, %i.v
  br i1 %i.w, label %.lr.ph.i, label %._crit_edge.i.loopexit, !llvm.loop !265

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i
  %i.x = icmp eq i64 %i.u, %i.t
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.d
  %i.y = phi i64 [ %i.l, %bb.d ], [ %i.s, %._crit_edge.i.loopexit ]
  %.not.i = phi i1 [ true, %bb.d ], [ %i.x, %._crit_edge.i.loopexit ]
  %.123.lcssa.i = phi i64 [ %i.j, %bb.d ], [ %i.u, %._crit_edge.i.loopexit ] ; 2 uses
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i
  %i.z = tail call ptr @realloc(ptr noundef %i.n, i64 noundef %.123.lcssa.i) #38 ; 3 uses
  %.not25.not.i = icmp eq ptr %i.z, null
  br i1 %.not25.not.i, label %grow_stats_buf.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.z, ptr %i.h, align 8, !tbaa !268
  store i64 %.123.lcssa.i, ptr %i.i, align 8, !tbaa !266
  %.pre42 = load i64, ptr %i.k, align 8, !tbaa !267
  br label %bb.g

grow_stats_buf.exit:                              ; preds = %bb.e
  tail call void @STATS_LOCK() #33
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @stats, i64 24), align 8, !tbaa !76
  %i.ab = add i64 %i.aa, 1
  store i64 %i.ab, ptr getelementptr inbounds nuw (i8, ptr @stats, i64 24), align 8, !tbaa !76
  tail call void @STATS_UNLOCK() #33
  br label %.critedge

bb.g:                                             ; preds = %._crit_edge.i, %bb.f
  %i.ac = phi i64 [ %i.y, %._crit_edge.i ], [ %.pre42, %bb.f ]
  %i.ad = phi ptr [ %i.n, %._crit_edge.i ], [ %i.z, %bb.f ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ac ; 10 uses
  %rev.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %1)
  %i.af = tail call noundef i32 @llvm.bswap.i32(i32 %i.g)
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 380
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !269
  store i8 -127, ptr %i.ae, align 1
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  store i8 16, ptr %.sroa.4.0..sroa_idx.i, align 1
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  store i16 %rev.i.i, ptr %.sroa.5.0..sroa_idx.i, align 1
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store i8 0, ptr %.sroa.6.0..sroa_idx.i, align 1
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 5
  store i8 0, ptr %.sroa.7.0..sroa_idx.i, align 1
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 6
  store i16 0, ptr %.sroa.8.0..sroa_idx.i, align 1
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i32 %i.af, ptr %.sroa.9.0..sroa_idx.i, align 1
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 %i.ah, ptr %.sroa.10.0..sroa_idx.i, align 1
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 0, ptr %.sroa.11.0..sroa_idx.i, align 1
  br i1 %i.a, label %append_bin_stats.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  %i.aj = zext i16 %1 to i64                      ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ai, ptr readonly align 1 %0, i64 %i.aj, i1 false)
  %.not21.i = icmp eq i32 %3, 0
  br i1 %.not21.i, label %append_bin_stats.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aj
  %i.al = zext i32 %3 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ak, ptr readonly align 1 %2, i64 %i.al, i1 false)
  br label %append_bin_stats.exit

append_bin_stats.exit:                            ; preds = %bb.g, %bb.h, %bb.i
  %i.am = load i64, ptr %i.k, align 8, !tbaa !267
  %i.an = add i64 %i.am, %i.q
  store i64 %i.an, ptr %i.k, align 8, !tbaa !267
  br label %.critedge

bb.j:                                             ; preds = %bb.b
  %i.ao = add i32 %i.g, 10
  %i.ap = zext i32 %i.ao to i64                   ; 2 uses
  br i1 %i.o, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aq = phi i64 [ 0, %bb.k ], [ %i.j, %bb.j ]   ; 2 uses
  %i.ar = phi i64 [ 0, %bb.k ], [ %i.l, %bb.j ]   ; 2 uses
  %.022.i28 = phi i64 [ 1024, %bb.k ], [ %i.j, %bb.j ] ; 2 uses
  %.020.i29 = phi i64 [ 0, %bb.k ], [ %i.m, %bb.j ]
  %i.as = icmp ult i64 %.020.i29, %i.ap
  br i1 %i.as, label %.lr.ph.i35, label %._crit_edge.i30

.lr.ph.i35:                                       ; preds = %bb.l, %.lr.ph.i35
  %.12326.i36 = phi i64 [ %i.at, %.lr.ph.i35 ], [ %.022.i28, %bb.l ]
  %i.at = shl i64 %.12326.i36, 1                  ; 3 uses
  %i.au = sub i64 %i.at, %i.ar
  %i.av = icmp ult i64 %i.au, %i.ap
  br i1 %i.av, label %.lr.ph.i35, label %._crit_edge.i30, !llvm.loop !265

._crit_edge.i30:                                  ; preds = %.lr.ph.i35, %bb.l
  %.123.lcssa.i31 = phi i64 [ %.022.i28, %bb.l ], [ %i.at, %.lr.ph.i35 ] ; 4 uses
  %.not.i32 = icmp eq i64 %.123.lcssa.i31, %i.aq
  br i1 %.not.i32, label %bb.o, label %bb.m

bb.m:                                             ; preds = %._crit_edge.i30
  %i.aw = tail call ptr @realloc(ptr noundef %i.n, i64 noundef %.123.lcssa.i31) #38 ; 3 uses
  %.not25.not.i33 = icmp eq ptr %i.aw, null
  br i1 %.not25.not.i33, label %grow_stats_buf.exit37, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr %i.aw, ptr %i.h, align 8, !tbaa !268
  store i64 %.123.lcssa.i31, ptr %i.i, align 8, !tbaa !266
  %.pre = load i64, ptr %i.k, align 8, !tbaa !267
  br label %bb.o

grow_stats_buf.exit37:                            ; preds = %bb.m
  tail call void @STATS_LOCK() #33
  %i.ax = load i64, ptr getelementptr inbounds nuw (i8, ptr @stats, i64 24), align 8, !tbaa !76
  %i.ay = add i64 %i.ax, 1
  store i64 %i.ay, ptr getelementptr inbounds nuw (i8, ptr @stats, i64 24), align 8, !tbaa !76
  tail call void @STATS_UNLOCK() #33
  br label %.critedge

bb.o:                                             ; preds = %._crit_edge.i30, %bb.n
  %i.az = phi i64 [ %i.aq, %._crit_edge.i30 ], [ %.123.lcssa.i31, %bb.n ]
  %i.ba = phi i64 [ %i.ar, %._crit_edge.i30 ], [ %.pre, %bb.n ] ; 2 uses
  %i.bb = phi ptr [ %i.n, %._crit_edge.i30 ], [ %i.aw, %bb.n ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ba ; 3 uses
  %i.bd = xor i64 %i.ba, -1
  %i.be = add i64 %i.az, %i.bd
  %5 = icmp eq i32 %3, 0                          ; 2 uses
  %or.cond.i = and i1 %i.a, %5
  %sext.i = shl i64 %i.be, 32
  %i.bf = ashr exact i64 %sext.i, 32              ; 3 uses
  br i1 %or.cond.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bg = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.bc, i64 noundef %i.bf, ptr noundef nonnull @.str.384) #33
  br label %append_ascii_stats.exit

bb.q:                                             ; preds = %bb.o
  br i1 %5, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bh = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.bc, i64 noundef %i.bf, ptr noundef nonnull @.str.385, ptr noundef %0) #33
  br label %append_ascii_stats.exit

bb.s:                                             ; preds = %bb.q
  %i.bi = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.bc, i64 noundef %i.bf, ptr noundef nonnull @.str.386, ptr noundef %0, ptr noundef %2) #33
  br label %append_ascii_stats.exit

append_ascii_stats.exit:                          ; preds = %bb.p, %bb.r, %bb.s
  %.0.i = phi i32 [ %i.bg, %bb.p ], [ %i.bh, %bb.r ], [ %i.bi, %bb.s ]
  %i.bj = zext i32 %.0.i to i64
  %i.bk = load i64, ptr %i.k, align 8, !tbaa !267
  %i.bl = add i64 %i.bk, %i.bj
  store i64 %i.bl, ptr %i.k, align 8, !tbaa !267
  br label %.critedge

.critedge:                                        ; preds = %grow_stats_buf.exit37, %grow_stats_buf.exit, %append_ascii_stats.exit, %append_bin_stats.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 4) i32 @do_store_item(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5, i64 noundef %6, i1 noundef zeroext %7) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 38 ; 5 uses
  %i.c = load i16, ptr %i.b, align 2, !tbaa !88
  %i.d = shl i16 %i.c, 2
  %i.e = and i16 %i.d, 8
  %i.f = zext nneg i16 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 41 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !80
  %i.j = zext i8 %i.i to i64
  %i.k = tail call ptr @do_item_get(ptr noundef nonnull %i.g, i64 noundef %i.j, i32 noundef %3, ptr noundef %2, i1 noundef zeroext false) #33 ; 22 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i16, ptr %i.b, align 2, !tbaa !88   ; 3 uses
  %i.m = and i16 %i.l, 2
  %.not123 = icmp eq i16 %i.m, 0
  br i1 %.not123, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i64, ptr %i.a, align 8, !tbaa !80
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.o = phi i64 [ %i.n, %bb.c ], [ 0, %bb.b ]    ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 38 ; 3 uses
  %i.q = load i16, ptr %i.p, align 2, !tbaa !88   ; 2 uses
  %i.r = and i16 %i.q, 2
  %.not124 = icmp eq i16 %i.r, 0
  br i1 %.not124, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.t = load i64, ptr %i.s, align 8, !tbaa !80
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.u = phi i64 [ %i.t, %bb.e ], [ 0, %bb.d ]    ; 2 uses
  %.not171 = icmp eq i64 %i.o, 0
  br i1 %.not171, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = icmp eq i64 %i.o, %i.u
  br i1 %i.v, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = icmp ult i64 %i.o, %i.u
  %or.cond136 = select i1 %7, i1 %i.w, i1 false
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %or.cond = phi i1 [ true, %bb.h ], [ false, %bb.f ], [ false, %bb.g ]
  %i.x = phi i1 [ false, %bb.h ], [ false, %bb.f ], [ true, %bb.g ]
  %i.y = phi i1 [ %or.cond136, %bb.h ], [ false, %bb.f ], [ false, %bb.g ]
  switch i32 %1, label %.thread167 [
    i32 1, label %bb.j
    i32 6, label %bb.k
    i32 4, label %bb.w
    i32 5, label %bb.w
    i32 7, label %bb.w
    i32 8, label %bb.w
    i32 3, label %.thread
    i32 2, label %.thread
  ]

bb.j:                                             ; preds = %bb.i
  tail call void @do_item_update(ptr noundef nonnull %i.k) #33
  br label %.thread167

bb.k:                                             ; preds = %bb.i
  br i1 %i.x, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 360 ; 2 uses
  %i.aa = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.z) #33 ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !80
  %i.ad = and i8 %i.ac, 63
  %i.ae = zext nneg i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw [64 x i8], ptr %2, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 672 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !149
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !149
  %i.aj = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.z) #33 ; 0 uses
  br label %.thread

bb.m:                                             ; preds = %bb.k
  br i1 %i.y, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !16
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.al, ptr %i.am, align 4, !tbaa !16
  %i.an = or i16 %i.l, 2048
  store i16 %i.an, ptr %i.b, align 2, !tbaa !88
  %i.ao = load i16, ptr %i.p, align 2, !tbaa !88
  %i.ap = and i16 %i.ao, 512
  %.not131 = icmp eq i16 %i.ap, 0
  br i1 %.not131, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aq = or i16 %i.l, 2560
  store i16 %i.aq, ptr %i.b, align 2, !tbaa !88
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 360 ; 2 uses
  %i.as = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.ar) #33 ; 0 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.au = load i8, ptr %i.at, align 8, !tbaa !80
  %i.av = and i8 %i.au, 63
  %i.aw = zext nneg i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw [64 x i8], ptr %2, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 672 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !149
  %i.ba = add i64 %i.az, 1
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !149
  %i.bb = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ar) #33 ; 0 uses
  br label %.thread

bb.q:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 360 ; 2 uses
  %i.bd = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.bc) #33 ; 0 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.bf = load i8, ptr %i.be, align 8, !tbaa !80
  %i.bg = and i8 %i.bf, 63
  %i.bh = zext nneg i8 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [64 x i8], ptr %2, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 680 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !150
  %i.bl = add i64 %i.bk, 1
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !150
  %i.bm = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.bc) #33 ; 0 uses
  %i.bn = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !57
  %i.bo = icmp sgt i32 %i.bn, 1
  br i1 %i.bo, label %bb.r, label %.thread167

bb.r:                                             ; preds = %bb.q
  %i.bp = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.bq = load i16, ptr %i.p, align 2, !tbaa !88
  %i.br = and i16 %i.bq, 2
  %.not129 = icmp eq i16 %i.br, 0
  br i1 %.not129, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bs = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !80
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.bu = phi i64 [ %i.bt, %bb.s ], [ 0, %bb.r ]
  %i.bv = load i16, ptr %i.b, align 2, !tbaa !88
  %i.bw = and i16 %i.bv, 2
  %.not130 = icmp eq i16 %i.bw, 0
  br i1 %.not130, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bx = load i64, ptr %i.a, align 8, !tbaa !80
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.by = phi i64 [ %i.bx, %bb.u ], [ 0, %bb.t ]
  %i.bz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bp, ptr noundef nonnull @.str.20, i64 noundef %i.bu, i64 noundef %i.by) #35 ; 0 uses
  br label %.thread167

bb.w:                                             ; preds = %bb.i, %bb.i, %bb.i, %bb.i
  br i1 %or.cond, label %.thread167, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ca = zext i16 %i.q to i32                    ; 3 uses
  %i.cb = and i32 %i.ca, 128
  %.not125 = icmp eq i32 %i.cb, 0
  br i1 %.not125, label %bb.y, label %.thread167
end_hunk_0

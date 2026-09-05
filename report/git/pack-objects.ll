Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/pack-objects?download=true
inline.NumInlined: 363
inline.NumDeleted: 121
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@create_object_entry:bb.a
  %i.v = zext nneg i32 %i.u to i64
  %i.w = and i64 %i.q, -1024
  %i.x = or disjoint i64 %i.w, %i.v
  br label %oe_set_in_pack.exit

bb.i:                                             ; preds = %bb.g
  tail call void @oe_map_new_pack(ptr noundef nonnull @to_pack) #21
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @to_pack, i64 88), align 8, !tbaa !54
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @to_pack, i64 8), align 8, !tbaa !55
  %i.aa = ptrtoint ptr %i.a to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = sdiv exact i64 %i.ac, 12
  %i.ae = getelementptr inbounds i8, ptr %i.y, i64 %i.ad
  store ptr %5, ptr %i.ae, align 8, !tbaa !57
  %.pre.pre = load i64, ptr %i.e, align 8
  br label %oe_set_in_pack.exit

oe_set_in_pack.exit:                              ; preds = %bb.h, %bb.j
  %.pre = phi i64 [ %i.x, %bb.h ], [ %.pre.pre, %bb.j ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %6, ptr %i.af, align 8, !tbaa !63
  br label %bb.k

bb.k:                                             ; preds = %oe_set_in_pack.exit, %bb.e
  %i.ag = phi i64 [ %.pre, %oe_set_in_pack.exit ], [ %i.q, %bb.e ]
  %i.ah = shl nuw i32 %4, 31
  %i.ai = zext i32 %i.ah to i64
  %i.aj = and i64 %i.ag, -2147483649
  %i.ak = or disjoint i64 %i.aj, %i.ai
  store i64 %i.ak, ptr %i.e, align 8
  ret void
}

declare i32 @bitmap_walk_contains(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @want_object_in_pack_mtime(ptr noundef %0, i32 noundef range(i32 0, 2) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.pack_entry, align 8         ; 5 uses
  %i.a = icmp eq i32 %1, 0                        ; 2 uses
  %i.b = load i32, ptr @local, align 4
  %i.c = icmp ne i32 %i.b, 0
  %or.cond = select i1 %i.a, i1 %i.c, i1 false
  br i1 %or.cond, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @the_repository, align 8, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !45
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !105
  br label %bb.c

bb.c:                                             ; preds = %odb_source_files_downcast.exit, %bb.b
  %.069.in = phi ptr [ %i.h, %bb.b ], [ %.069, %odb_source_files_downcast.exit ]
  %.069 = load ptr, ptr %.069.in, align 8, !tbaa !90 ; 4 uses
  %.not = icmp eq ptr %.069, null
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.069, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !78   ; 2 uses
  %.not.i = icmp eq i32 %i.j, 1
  br i1 %.not.i, label %odb_source_files_downcast.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.167, i32 noundef 31, ptr noundef nonnull @.str.168, i32 noundef %i.j) #22
  unreachable

odb_source_files_downcast.exit:                   ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.069, i64 152
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !189  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !190
  %i.o = tail call i32 %i.n(ptr noundef %i.l, ptr noundef %0, ptr noundef null, i32 noundef 0) #21, !inline_history !4
  %.not86.not = icmp eq i32 %i.o, 0
  br i1 %.not86.not, label %.thread120, label %bb.c, !llvm.loop !403

.critedge:                                        ; preds = %bb.c, %bb.a
  %i.p = load ptr, ptr %2, align 8, !tbaa !57     ; 2 uses
  %.not87 = icmp eq ptr %i.p, null
  br i1 %.not87, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.q = tail call fastcc i32 @want_found_object(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.p, i32 noundef %4) ; 2 uses
  %.not88 = icmp eq i32 %i.q, -1
  br i1 %.not88, label %bb.g, label %.thread120

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %2, align 8, !tbaa !57
  store i64 0, ptr %3, align 8, !tbaa !46
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.critedge
  %i.r = load ptr, ptr @the_repository, align 8, !tbaa !19
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !45
  tail call void @odb_prepare_alternates(ptr noundef %i.t) #21
  %i.u = load ptr, ptr @the_repository, align 8, !tbaa !19
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !45
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.070142 = load ptr, ptr %i.x, align 8, !tbaa !76 ; 2 uses
  %.not89143 = icmp eq ptr %.070142, null
  br i1 %.not89143, label %._crit_edge150, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %want_object_in_pack_one.exit.thread
  %.070144 = phi ptr [ %.070142, %.lr.ph ], [ %.070, %want_object_in_pack_one.exit.thread ] ; 2 uses
  %i.z = call ptr @get_multi_pack_index(ptr noundef nonnull %.070144) #21 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %.not95 = icmp eq ptr %i.z, null
  br i1 %.not95, label %want_object_in_pack_one.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = call i32 @fill_midx_entry(ptr noundef nonnull %i.z, ptr noundef %0, ptr noundef nonnull %5) #21
  %.not96 = icmp eq i32 %i.aa, 0
  br i1 %.not96, label %want_object_in_pack_one.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !410 ; 5 uses
  %i.ac = load ptr, ptr %2, align 8, !tbaa !57
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ae = load i64, ptr %3, align 8, !tbaa !46
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.af = call i64 @find_pack_entry_one(ptr noundef %0, ptr noundef %i.ab) #21
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0.i = phi i64 [ %i.ae, %bb.l ], [ %i.af, %bb.m ] ; 2 uses
  %.not.i98 = icmp eq i64 %.0.i, 0
  br i1 %.not.i98, label %want_object_in_pack_one.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = load ptr, ptr %2, align 8, !tbaa !57
  %.not18.i = icmp eq ptr %i.ag, null
  br i1 %.not18.i, label %bb.p, label %want_object_in_pack_one.exit

bb.p:                                             ; preds = %bb.o
  %i.ah = call i32 @is_pack_valid(ptr noundef %i.ab) #21
  %.not19.i = icmp eq i32 %i.ah, 0
  br i1 %.not19.i, label %want_object_in_pack_one.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i64 %.0.i, ptr %3, align 8, !tbaa !46
  store ptr %i.ab, ptr %2, align 8, !tbaa !57
  br label %want_object_in_pack_one.exit

want_object_in_pack_one.exit:                     ; preds = %bb.o, %bb.q
  %i.ai = call fastcc i32 @want_found_object(ptr noundef %0, i32 noundef range(i32 0, 2) %1, ptr noundef %i.ab, i32 noundef %4) ; 2 uses
  %.not97 = icmp eq i32 %i.ai, -1
  br i1 %.not97, label %want_object_in_pack_one.exit.thread, label %.thread

.thread:                                          ; preds = %want_object_in_pack_one.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %.thread120

want_object_in_pack_one.exit.thread:              ; preds = %bb.n, %bb.p, %bb.i, %bb.j, %want_object_in_pack_one.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %.070 = load ptr, ptr %.070144, align 8, !tbaa !76 ; 2 uses
  %.not89 = icmp eq ptr %.070, null
  br i1 %.not89, label %._crit_edge, label %bb.i, !llvm.loop !404

._crit_edge:                                      ; preds = %want_object_in_pack_one.exit.thread
  %.pre = load ptr, ptr @the_repository, align 8, !tbaa !19
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre195 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !45
  %.phi.trans.insert196 = getelementptr inbounds nuw i8, ptr %.pre195, i64 16
  %.171145.pre = load ptr, ptr %.phi.trans.insert196, align 8, !tbaa !76 ; 3 uses
  %.not90146 = icmp eq ptr %.171145.pre, null
  br i1 %.not90146, label %._crit_edge150, label %.lr.ph149

.lr.ph149:                                        ; preds = %._crit_edge
  br i1 %i.a, label %.lr.ph149.split.us, label %.lr.ph149.split

.lr.ph149.split.us:                               ; preds = %.lr.ph149, %.loopexit.split.us162
  %.171147.us = phi ptr [ %.171.us, %.loopexit.split.us162 ], [ %.171145.pre, %.lr.ph149 ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.171147.us, i64 16
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !78 ; 2 uses
  %.not.i99.us = icmp eq i32 %i.ak, 1
  br i1 %.not.i99.us, label %odb_source_files_downcast.exit100.us, label %.split.us

odb_source_files_downcast.exit100.us:             ; preds = %.lr.ph149.split.us
  %i.al = getelementptr inbounds nuw i8, ptr %.171147.us, i64 160
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !82
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  br label %bb.r

bb.r:                                             ; preds = %want_object_in_pack_one.exit106.thread.us159, %odb_source_files_downcast.exit100.us
  %.072.in.us151 = phi ptr [ %i.an, %odb_source_files_downcast.exit100.us ], [ %.072.us152, %want_object_in_pack_one.exit106.thread.us159 ]
  %.072.us152 = load ptr, ptr %.072.in.us151, align 8, !tbaa !411 ; 3 uses
  %.not93.us153 = icmp eq ptr %.072.us152, null
  br i1 %.not93.us153, label %.loopexit.split.us162, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ao = getelementptr inbounds nuw i8, ptr %.072.us152, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !86 ; 6 uses
  %i.aq = load ptr, ptr %2, align 8, !tbaa !57
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.as = call i64 @find_pack_entry_one(ptr noundef %0, ptr noundef %i.ap) #21
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.at = load i64, ptr %3, align 8, !tbaa !46
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.0.i101.us154 = phi i64 [ %i.at, %bb.u ], [ %i.as, %bb.t ] ; 2 uses
  %.not.i102.us155 = icmp eq i64 %.0.i101.us154, 0
  br i1 %.not.i102.us155, label %want_object_in_pack_one.exit106.thread.us159, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.au = load ptr, ptr %2, align 8, !tbaa !57
  %.not18.i103.us156 = icmp eq ptr %i.au, null
  br i1 %.not18.i103.us156, label %bb.x, label %want_object_in_pack_one.exit106.us158

bb.x:                                             ; preds = %bb.w
  %i.av = call i32 @is_pack_valid(ptr noundef %i.ap) #21
  %.not19.i105.us157 = icmp eq i32 %i.av, 0
  br i1 %.not19.i105.us157, label %want_object_in_pack_one.exit106.thread.us159, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i64 %.0.i101.us154, ptr %3, align 8, !tbaa !46
  store ptr %i.ap, ptr %2, align 8, !tbaa !57
  br label %want_object_in_pack_one.exit106.us158

want_object_in_pack_one.exit106.us158:            ; preds = %bb.y, %bb.w
  %i.aw = call fastcc i32 @want_found_object(ptr noundef %0, i32 noundef range(i32 0, 2) 0, ptr noundef %i.ap, i32 noundef %4) ; 2 uses
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %.thread116, label %want_object_in_pack_one.exit106.thread.us159

want_object_in_pack_one.exit106.thread.us159:     ; preds = %want_object_in_pack_one.exit106.us158, %bb.x, %bb.v
  %.016.i104115.us160 = phi i32 [ %i.aw, %want_object_in_pack_one.exit106.us158 ], [ -1, %bb.x ], [ -1, %bb.v ]
  %.not94.us161 = icmp eq i32 %.016.i104115.us160, -1
  br i1 %.not94.us161, label %bb.r, label %.thread120, !llvm.loop !405

.loopexit.split.us162:                            ; preds = %bb.r
  %.171.us = load ptr, ptr %.171147.us, align 8, !tbaa !76 ; 2 uses
  %.not90.us = icmp eq ptr %.171.us, null
  br i1 %.not90.us, label %._crit_edge150, label %.lr.ph149.split.us, !llvm.loop !406

.lr.ph149.split:                                  ; preds = %.lr.ph149, %.loopexit.split.us
  %.171147 = phi ptr [ %.171, %.loopexit.split.us ], [ %.171145.pre, %.lr.ph149 ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.171147, i64 16
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !78 ; 2 uses
  %.not.i99 = icmp eq i32 %i.az, 1
  br i1 %.not.i99, label %odb_source_files_downcast.exit100, label %.split.us

.split.us:                                        ; preds = %.lr.ph149.split, %.lr.ph149.split.us
  %.us-phi164 = phi i32 [ %i.ak, %.lr.ph149.split.us ], [ %i.az, %.lr.ph149.split ]
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.167, i32 noundef 31, ptr noundef nonnull @.str.168, i32 noundef %.us-phi164) #22
  unreachable

odb_source_files_downcast.exit100:                ; preds = %.lr.ph149.split
  %i.ba = getelementptr inbounds nuw i8, ptr %.171147, i64 160
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !82
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  br label %bb.z

bb.z:                                             ; preds = %want_object_in_pack_one.exit106.thread.us, %odb_source_files_downcast.exit100
  %.072.in.us = phi ptr [ %i.bc, %odb_source_files_downcast.exit100 ], [ %.072.us, %want_object_in_pack_one.exit106.thread.us ]
  %.072.us = load ptr, ptr %.072.in.us, align 8, !tbaa !411 ; 3 uses
  %.not93.us = icmp eq ptr %.072.us, null
  br i1 %.not93.us, label %.loopexit.split.us, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bd = getelementptr inbounds nuw i8, ptr %.072.us, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !86 ; 5 uses
  %i.bf = load ptr, ptr %2, align 8, !tbaa !57
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bh = call i64 @find_pack_entry_one(ptr noundef %0, ptr noundef %i.be) #21
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.bi = load i64, ptr %3, align 8, !tbaa !46
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.0.i101.us = phi i64 [ %i.bi, %bb.ac ], [ %i.bh, %bb.ab ] ; 2 uses
  %.not.i102.us = icmp eq i64 %.0.i101.us, 0
  br i1 %.not.i102.us, label %want_object_in_pack_one.exit106.thread.us, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bj = load ptr, ptr %2, align 8, !tbaa !57
  %.not18.i103.us = icmp eq ptr %i.bj, null
  br i1 %.not18.i103.us, label %bb.af, label %want_object_in_pack_one.exit106.us

bb.af:                                            ; preds = %bb.ae
  %i.bk = call i32 @is_pack_valid(ptr noundef %i.be) #21
  %.not19.i105.us = icmp eq i32 %i.bk, 0
  br i1 %.not19.i105.us, label %want_object_in_pack_one.exit106.thread.us, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i64 %.0.i101.us, ptr %3, align 8, !tbaa !46
  store ptr %i.be, ptr %2, align 8, !tbaa !57
  br label %want_object_in_pack_one.exit106.us

want_object_in_pack_one.exit106.us:               ; preds = %bb.ag, %bb.ae
  %i.bl = call fastcc i32 @want_found_object(ptr noundef %0, i32 noundef range(i32 0, 2) 1, ptr noundef %i.be, i32 noundef %4)
  br label %want_object_in_pack_one.exit106.thread.us

want_object_in_pack_one.exit106.thread.us:        ; preds = %want_object_in_pack_one.exit106.us, %bb.af, %bb.ad
  %.016.i104115.us = phi i32 [ %i.bl, %want_object_in_pack_one.exit106.us ], [ -1, %bb.af ], [ -1, %bb.ad ] ; 2 uses
  %.not94.us = icmp eq i32 %.016.i104115.us, -1
  br i1 %.not94.us, label %bb.z, label %.thread120, !llvm.loop !405

.loopexit.split.us:                               ; preds = %bb.z
  %.171 = load ptr, ptr %.171147, align 8, !tbaa !76 ; 2 uses
  %.not90 = icmp eq ptr %.171, null
  br i1 %.not90, label %._crit_edge150, label %.lr.ph149.split, !llvm.loop !406

.thread116:                                       ; preds = %want_object_in_pack_one.exit106.us158
  %i.bm = getelementptr inbounds nuw i8, ptr %.171147.us, i64 160
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !82
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  call void @packfile_list_prepend(ptr noundef nonnull %i.bo, ptr noundef %i.ap) #21
  br label %.thread120

._crit_edge150:                                   ; preds = %.loopexit.split.us, %.loopexit.split.us162, %bb.h, %._crit_edge
  %i.bp = load i64, ptr getelementptr inbounds nuw (i8, ptr @uri_protocols, i64 8), align 8, !tbaa !74
  %.not91 = icmp eq i64 %i.bp, 0
  br i1 %.not91, label %.thread120, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge150
  %i.bq = call ptr @oidmap_get(ptr noundef nonnull @configured_exclusions, ptr noundef %0) #21 ; 2 uses
  %.not92 = icmp eq ptr %i.bq, null
  br i1 %.not92, label %.thread120, label %.preheader

.preheader:                                       ; preds = %bb.ah
  %i.br = load i64, ptr getelementptr inbounds nuw (i8, ptr @uri_protocols, i64 8), align 8, !tbaa !74 ; 2 uses
  %.not172 = icmp eq i64 %i.br, 0
  br i1 %.not172, label %.thread120, label %.lr.ph171

.lr.ph171:                                        ; preds = %.preheader
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !160
  %i.bu = load ptr, ptr @uri_protocols, align 8, !tbaa !87
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph171, %skip_prefix_impl.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph171 ], [ %indvars.iv.next, %skip_prefix_impl.exit ] ; 2 uses
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %indvars.iv
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !89
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ak, %bb.ai
  %.07.i = phi ptr [ %i.bt, %bb.ai ], [ %i.by, %bb.ak ] ; 3 uses
  %.06.i = phi ptr [ %i.bw, %bb.ai ], [ %i.ca, %bb.ak ] ; 2 uses
  %i.bx = load i8, ptr %.06.i, align 1, !tbaa !64 ; 2 uses
  %.not.i107 = icmp eq i8 %i.bx, 0
  br i1 %.not.i107, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.by = getelementptr inbounds nuw i8, ptr %.07.i, i64 1
  %i.bz = load i8, ptr %.07.i, align 1, !tbaa !64
  %i.ca = getelementptr inbounds nuw i8, ptr %.06.i, i64 1
  %i.cb = icmp eq i8 %i.bz, %i.bx
  br i1 %i.cb, label %bb.aj, label %skip_prefix_impl.exit, !llvm.loop !407

bb.al:                                            ; preds = %bb.aj
  %i.cc = load i8, ptr %.07.i, align 1, !tbaa !64
  %i.cd = icmp eq i8 %i.cc, 58
  br i1 %i.cd, label %bb.am, label %skip_prefix_impl.exit

skip_prefix_impl.exit:                            ; preds = %bb.ak, %bb.al
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.br
  br i1 %exitcond.not, label %.thread120, label %bb.ai, !llvm.loop !408

bb.am:                                            ; preds = %bb.al
  %i.ce = call i32 @oidset_insert(ptr noundef nonnull @excluded_by_config, ptr noundef %0) #21 ; 0 uses
  br label %.thread120

.thread120:                                       ; preds = %odb_source_files_downcast.exit, %want_object_in_pack_one.exit106.thread.us, %want_object_in_pack_one.exit106.thread.us159, %skip_prefix_impl.exit, %.preheader, %bb.ah, %.thread116, %._crit_edge150, %bb.am, %.thread, %bb.f
  %.11 = phi i32 [ %i.q, %bb.f ], [ %i.ai, %.thread ], [ 1, %._crit_edge150 ], [ 1, %.preheader ], [ 0, %bb.am ], [ %.016.i104115.us, %want_object_in_pack_one.exit106.thread.us ], [ 1, %.thread116 ], [ 1, %bb.ah ], [ 0, %want_object_in_pack_one.exit106.thread.us159 ], [ 1, %skip_prefix_impl.exit ], [ 0, %odb_source_files_downcast.exit ]
  ret i32 %.11
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 2) i32 @want_found_object(ptr noundef %0, i32 noundef range(i32 0, 2) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %.thread
end_hunk_0

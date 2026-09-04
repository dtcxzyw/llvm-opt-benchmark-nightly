Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/loose?download=true
inline.NumInlined: 48
inline.NumDeleted: 21
begin_hunk_0_@repo_write_loose_object_map:bb.a
  call void @strbuf_release(ptr noundef nonnull %3) #14
  br label %should_use_loose_object_map.exit.thread

should_use_loose_object_map.exit.thread:          ; preds = %should_use_loose_object_map.exit.thread.sink.split, %odb_source_files_downcast.exit, %should_use_loose_object_map.exit
  %.022 = phi i32 [ 0, %odb_source_files_downcast.exit ], [ 0, %should_use_loose_object_map.exit ], [ %.022.ph, %should_use_loose_object_map.exit.thread.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret i32 %.022
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @repo_common_path_replace(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i64 @write_in_full(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @strbuf_addf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @oid_to_hex(ptr noundef) local_unnamed_addr #2

declare void @strbuf_release(ptr noundef) local_unnamed_addr #2

declare i32 @commit_lock_file(ptr noundef) local_unnamed_addr #2

declare i32 @error_errno(ptr noundef, ...) local_unnamed_addr #2

declare i32 @rollback_lock_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @repo_add_loose_object_map(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.lock_file, align 8          ; 4 uses
  %4 = alloca %struct.stat, align 8               ; 4 uses
  %5 = alloca %struct.strbuf, align 8             ; 7 uses
  %6 = alloca %struct.strbuf, align 8             ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !93   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 456
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !44
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %should_use_loose_object_map.exit.thread, label %should_use_loose_object_map.exit

should_use_loose_object_map.exit:                 ; preds = %bb.a
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !45
  %.not12 = icmp eq ptr %i.f, null
  br i1 %.not12, label %should_use_loose_object_map.exit.thread, label %bb.b

bb.b:                                             ; preds = %should_use_loose_object_map.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !57   ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15
  %i.j = tail call fastcc i32 @insert_oid_pair(ptr noundef %i.i, ptr noundef readonly %1, ptr noundef %2)
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !16
  %i.m = tail call fastcc i32 @insert_oid_pair(ptr noundef %i.l, ptr noundef %2, ptr noundef readonly %1)
  %i.n = or i32 %i.m, %i.j
  %.not.i9 = icmp eq i32 %i.n, 0
  br i1 %.not.i9, label %should_use_loose_object_map.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !58
  tail call void @oidtree_insert(ptr noundef %i.p, ptr noundef %2, ptr noundef null) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) @__const.write_one_object.path, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) @__const.write_one_object.path, i64 24, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !94
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %6, ptr noundef nonnull @.str.13, ptr noundef %i.r) #14
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !65
  %i.u = call i32 @hold_lock_file_for_update_timeout_mode(ptr noundef nonnull %3, ptr noundef %i.t, i32 noundef 1, i64 noundef -1, i32 noundef 438) #14 ; 0 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !65
  %i.w = call i32 (ptr, i32, ...) @open64(ptr noundef %i.v, i32 noundef 1089, i32 noundef 438) #14 ; 6 uses
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = call i32 @fstat64(i32 noundef %i.w, ptr noundef nonnull %4) #14
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !97
  %.not.i10 = icmp eq i64 %i.ab, 0
  br i1 %.not.i10, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = call i64 @write_in_full(i32 noundef %i.w, ptr noundef nonnull @.str.8, i64 noundef 19) #14
  %i.ad = icmp slt i64 %i.ac, 0
  br i1 %i.ad, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ae = call ptr @oid_to_hex(ptr noundef %1) #14
  %i.af = call ptr @oid_to_hex(ptr noundef %2) #14
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef %i.ae, ptr noundef %i.af) #14
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !65
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !68
  %i.ak = call i64 @write_in_full(i32 noundef %i.w, ptr noundef %i.ah, i64 noundef %i.aj) #14
  %i.al = icmp slt i64 %i.ak, 0
  br i1 %i.al, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = call i32 @close(i32 noundef %i.w) #14
  %.not11.i = icmp eq i32 %i.am, 0
  br i1 %.not11.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !92
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !93
  %i.ap = load ptr, ptr %i.s, align 8, !tbaa !65
  %i.aq = call i32 @adjust_shared_perm(ptr noundef %i.ao, ptr noundef %i.ap) #14 ; 0 uses
  br label %write_one_object.exit

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.d, %bb.c
  %i.ar = load i32, ptr @git_gettext_enabled, align 4, !tbaa !66
  %.not4.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not4.i.i, label %_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #14
  br label %_.exit.i

_.exit.i:                                         ; preds = %bb.k, %bb.j
  %.0.i.i = phi ptr [ %i.as, %bb.k ], [ @.str.3, %bb.j ]
  %i.at = load ptr, ptr %i.s, align 8, !tbaa !65
  %i.au = call i32 (ptr, ...) @error_errno(ptr noundef %.0.i.i, ptr noundef %i.at) #14 ; 0 uses
  %i.av = call i32 @close(i32 noundef %i.w) #14   ; 0 uses
  br label %write_one_object.exit

write_one_object.exit:                            ; preds = %bb.i, %_.exit.i
  %.0.i = phi i32 [ -1, %_.exit.i ], [ 0, %bb.i ]
  %i.aw = call i32 @rollback_lock_file(ptr noundef nonnull %3) #14 ; 0 uses
  call void @strbuf_release(ptr noundef nonnull %5) #14
  call void @strbuf_release(ptr noundef nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %should_use_loose_object_map.exit.thread

should_use_loose_object_map.exit.thread:          ; preds = %bb.b, %bb.a, %should_use_loose_object_map.exit, %write_one_object.exit
  %.0 = phi i32 [ %.0.i, %write_one_object.exit ], [ 0, %should_use_loose_object_map.exit ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @repo_loose_object_map_oid(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.object_id, align 8          ; 5 uses
  %5 = alloca %struct.object_id, align 8          ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.01833 = load ptr, ptr %i.c, align 8, !tbaa !48 ; 2 uses
  %.not34 = icmp eq ptr %.01833, null
  br i1 %.not34, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 456
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %.01835 = phi ptr [ %.01833, %.lr.ph ], [ %.018, %bb.j ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.01835, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !50   ; 2 uses
  %.not.i = icmp eq i32 %i.f, 1
  br i1 %.not.i, label %odb_source_files_downcast.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.4, i32 noundef 31, ptr noundef nonnull @.str.5, i32 noundef %i.f) #15
  unreachable

odb_source_files_downcast.exit:                   ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.01835, i64 152
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 192
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !57   ; 2 uses
  %.not22 = icmp eq ptr %i.j, null
  br i1 %.not22, label %bb.j, label %bb.d

bb.d:                                             ; preds = %odb_source_files_downcast.exit
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !44
  %i.l = icmp eq ptr %2, %i.k
  %.in.idx = select i1 %i.l, i64 0, i64 8
  %.in = getelementptr inbounds nuw i8, ptr %i.j, i64 %.in.idx
  %i.m = load ptr, ptr %.in, align 8, !tbaa !100  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 4 dereferenceable(36) %1, i64 36, i1 false)
  %i.n = load i32, ptr %i.m, align 8, !tbaa !79   ; 4 uses
  %.not.i23 = icmp eq i32 %i.n, 0
  br i1 %.not.i23, label %kh_get_oid_map.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add i32 %i.n, -1                         ; 2 uses
  %.val.i = load i32, ptr %5, align 8
  %i.p = and i32 %.val.i, %i.o                    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !80
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  br label %bb.f

bb.f:                                             ; preds = %.critedge2.i, %bb.e
  %.026.i = phi i32 [ %i.p, %bb.e ], [ %i.as, %.critedge2.i ] ; 5 uses
  %.0.i = phi i32 [ 0, %bb.e ], [ %i.aq, %.critedge2.i ]
  %i.t = lshr i32 %.026.i, 4
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !66   ; 2 uses
  %i.x = shl i32 %.026.i, 1
  %i.y = and i32 %i.x, 30                         ; 2 uses
  %i.z = lshr i32 %i.w, %i.y                      ; 2 uses
  %i.aa = and i32 %i.z, 2
  %.not30.i = icmp eq i32 %i.aa, 0
  br i1 %.not30.i, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %bb.f
  %i.ab = and i32 %i.z, 1
  %.not31.i = icmp eq i32 %i.ab, 0
  br i1 %.not31.i, label %bb.h, label %.critedge2.i

bb.h:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %i.s, align 8, !tbaa !81
  %i.ad = zext i32 %.026.i to i64
  %i.ae = getelementptr inbounds nuw [36 x i8], ptr %i.ac, i64 %i.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 4 dereferenceable(36) %i.ae, i64 36, i1 false), !tbaa.struct !84
  %i.af = load i128, ptr %4, align 8
  %i.ag = load i128, ptr %5, align 8
  %i.ah = xor i128 %i.af, %i.ag
  %i.ai = getelementptr i8, ptr %4, i64 16
  %i.aj = getelementptr i8, ptr %5, i64 16
  %i.ak = load i128, ptr %i.ai, align 8
  %i.al = load i128, ptr %i.aj, align 8
  %i.am = xor i128 %i.ak, %i.al
  %i.an = or i128 %i.ah, %i.am
  %i.ao = icmp ne i128 %i.an, 0
  %i.ap = zext i1 %i.ao to i32
  %.not.i.i.not.i = icmp eq i32 %i.ap, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br i1 %.not.i.i.not.i, label %.critedge.i, label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.h, %bb.g
  %i.aq = add i32 %.0.i, 1                        ; 2 uses
  %i.ar = add i32 %i.aq, %.026.i
  %i.as = and i32 %i.ar, %i.o                     ; 2 uses
  %i.at = icmp eq i32 %i.as, %i.p
  br i1 %i.at, label %kh_get_oid_map.exit.thread, label %bb.f, !llvm.loop !98

kh_get_oid_map.exit.thread:                       ; preds = %.critedge2.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.j

.critedge.i:                                      ; preds = %bb.f, %bb.h
  %i.au = shl nuw i32 3, %i.y
  %i.av = and i32 %i.au, %i.w
  %.not33.i = icmp eq i32 %i.av, 0
  %spec.select.i = select i1 %.not33.i, i32 %.026.i, i32 %i.n ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %6 = icmp ult i32 %spec.select.i, %i.n
  br i1 %6, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.critedge.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !82
  %i.ay = zext i32 %spec.select.i to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !83 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %3, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.ba, i64 32, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !86
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !86
  br label %.loopexit

bb.j:                                             ; preds = %odb_source_files_downcast.exit, %.critedge.i, %kh_get_oid_map.exit.thread
  %.018 = load ptr, ptr %.01835, align 8, !tbaa !48 ; 2 uses
  %.not = icmp eq ptr %.018, null
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !99

.loopexit:                                        ; preds = %bb.j, %bb.a, %bb.i
  %.2 = phi i32 [ 0, %bb.i ], [ -1, %bb.a ], [ -1, %bb.j ]
  ret i32 %.2
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @loose_object_map_clear(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18     ; 6 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.f, label %.preheader31

.preheader31:                                     ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !79   ; 2 uses
  %.not2532 = icmp eq i32 %i.c, 0
  br i1 %.not2532, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %bb.c, %.preheader31
  %i.d = phi ptr [ %i.b, %.preheader31 ], [ %i.z, %bb.c ]
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16   ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !79   ; 2 uses
  %.not2634 = icmp eq i32 %i.g, 0
  br i1 %.not2634, label %kh_destroy_oid_map.exit, label %.lr.ph36

.lr.ph:                                           ; preds = %.preheader31, %bb.c
  %i.h = phi i32 [ %i.y, %bb.c ], [ %i.c, %.preheader31 ]
  %i.i = phi ptr [ %i.z, %bb.c ], [ %i.b, %.preheader31 ] ; 3 uses
  %.02333 = phi i32 [ %i.aa, %bb.c ], [ 0, %.preheader31 ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !80
  %i.l = lshr i32 %.02333, 4
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !66
  %i.p = shl i32 %.02333, 1
  %i.q = and i32 %i.p, 30
  %i.r = shl nuw i32 3, %i.q
  %i.s = and i32 %i.o, %i.r
  %.not28 = icmp eq i32 %i.s, 0
  br i1 %.not28, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !82
  %i.v = zext i32 %.02333 to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !83
  tail call void @free(ptr noundef %i.x) #14
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !15  ; 2 uses
  %.pre37 = load i32, ptr %.pre, align 8, !tbaa !79
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.y = phi i32 [ %i.h, %.lr.ph ], [ %.pre37, %bb.b ] ; 2 uses
  %i.z = phi ptr [ %i.i, %.lr.ph ], [ %.pre, %bb.b ] ; 2 uses
  %i.aa = add i32 %.02333, 1                      ; 2 uses
  %.not25 = icmp eq i32 %i.aa, %i.y
  br i1 %.not25, label %.preheader, label %.lr.ph, !llvm.loop !101

.lr.ph36:                                         ; preds = %.preheader, %bb.e
  %i.ab = phi i32 [ %i.as, %bb.e ], [ %i.g, %.preheader ]
  %i.ac = phi ptr [ %i.at, %bb.e ], [ %i.f, %.preheader ] ; 3 uses
  %.035 = phi i32 [ %i.au, %bb.e ], [ 0, %.preheader ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !80
  %i.af = lshr i32 %.035, 4
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !66
  %i.aj = shl i32 %.035, 1
  %i.ak = and i32 %i.aj, 30
  %i.al = shl nuw i32 3, %i.ak
  %i.am = and i32 %i.ai, %i.al
  %.not27 = icmp eq i32 %i.am, 0
  br i1 %.not27, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph36
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !82
  %i.ap = zext i32 %.035 to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !83
  tail call void @free(ptr noundef %i.ar) #14
  %.pre38 = load ptr, ptr %i.e, align 8, !tbaa !16 ; 2 uses
  %.pre39 = load i32, ptr %.pre38, align 8, !tbaa !79
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph36, %bb.d
  %i.as = phi i32 [ %i.ab, %.lr.ph36 ], [ %.pre39, %bb.d ] ; 2 uses
  %i.at = phi ptr [ %i.ac, %.lr.ph36 ], [ %.pre38, %bb.d ] ; 2 uses
  %i.au = add i32 %.035, 1                        ; 2 uses
  %.not26 = icmp eq i32 %i.au, %i.as
  br i1 %.not26, label %._crit_edge, label %.lr.ph36, !llvm.loop !102

._crit_edge:                                      ; preds = %bb.e
  %.pre40 = load ptr, ptr %i.a, align 8, !tbaa !15 ; 2 uses
  %.not.i = icmp eq ptr %.pre40, null
  br i1 %.not.i, label %kh_destroy_oid_map.exit.thread, label %kh_destroy_oid_map.exit

kh_destroy_oid_map.exit:                          ; preds = %.preheader, %._crit_edge
  %i.av = phi ptr [ %.pre40, %._crit_edge ], [ %i.d, %.preheader ] ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !80
  tail call void @free(ptr noundef %i.ax) #14
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !81
  tail call void @free(ptr noundef %i.az) #14
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !82
  tail call void @free(ptr noundef %i.bb) #14
  tail call void @free(ptr noundef nonnull %i.av) #14
  %.pre41 = load ptr, ptr %i.e, align 8, !tbaa !16 ; 2 uses
  %.not.i29 = icmp eq ptr %.pre41, null
  br i1 %.not.i29, label %kh_destroy_oid_map.exit30, label %kh_destroy_oid_map.exit.thread

kh_destroy_oid_map.exit.thread:                   ; preds = %._crit_edge, %kh_destroy_oid_map.exit
  %i.bc = phi ptr [ %.pre41, %kh_destroy_oid_map.exit ], [ %i.at, %._crit_edge ] ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !80
  tail call void @free(ptr noundef %i.be) #14
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !81
  tail call void @free(ptr noundef %i.bg) #14
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !82
  tail call void @free(ptr noundef %i.bi) #14
  tail call void @free(ptr noundef nonnull %i.bc) #14
  br label %kh_destroy_oid_map.exit30

kh_destroy_oid_map.exit30:                        ; preds = %kh_destroy_oid_map.exit, %kh_destroy_oid_map.exit.thread
  tail call void @free(ptr noundef nonnull %i.a) #14
  store ptr null, ptr %0, align 8, !tbaa !18
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %kh_destroy_oid_map.exit30
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @BUG_fl(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

declare void @oidtree_init(ptr noundef) local_unnamed_addr #2

declare ptr @git_fopen(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #6

declare i32 @strbuf_getwholeline(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

declare i32 @strbuf_getline_lf(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @parse_oid_hex_algop_impl(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hold_lock_file_for_update_timeout_mode(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @insert_oid_pair(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %.sroa.7.i = alloca [32 x i8], align 4          ; 6 uses
  %.sroa.4.i = alloca [32 x i8], align 4          ; 4 uses
  %3 = alloca %struct.object_id, align 8          ; 5 uses
  %4 = alloca %struct.object_id, align 8          ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 4 dereferenceable(36) %1, i64 36, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !106
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !107
  %.not.i = icmp ult i32 %i.b, %i.d
  %.pre = load i32, ptr %0, align 8, !tbaa !79    ; 4 uses
  br i1 %.not.i, label %kh_resize_oid_map.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !108  ; 2 uses
  %i.g = shl i32 %i.f, 1
  %i.h = icmp ugt i32 %.pre, %i.g
  %..i = select i1 %i.h, i32 -1, i32 1
  %i.i = add i32 %.pre, -1
end_hunk_0

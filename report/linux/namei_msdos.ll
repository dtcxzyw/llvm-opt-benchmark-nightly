Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/namei_msdos?download=true
inline.NumInlined: 62
inline.NumDeleted: 9
begin_hunk_0_@msdos_format_name:bb.a
  %i.ba = sub i64 %i.az, %i.h
  %i.bb = icmp slt i64 %i.ba, 8
  %i.bc = select i1 %i.ay, i1 %i.bb, i1 false
  br i1 %i.bc, label %.peel.next, label %._crit_edge.loopexit, !llvm.loop !19

._crit_edge.loopexit:                             ; preds = %switch.early.test, %bb.m
  %.0118.lcssa.ph = phi ptr [ %i.ax, %bb.m ], [ %.0118180, %switch.early.test ]
  %.0.lcssa.ph = phi i1 [ %i.ap, %bb.m ], [ %.0181, %switch.early.test ]
  %i.bd = add i32 %.1130178, -2
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.i
  %.1124179.lcssa234 = phi ptr [ %.0123, %bb.i ], [ %.1124179, %._crit_edge.loopexit ]
  %.1130178.lcssa233 = phi i32 [ -1, %bb.i ], [ %i.bd, %._crit_edge.loopexit ]
  %.lcssa232 = phi ptr [ %i.k, %bb.i ], [ %i.af, %._crit_edge.loopexit ] ; 3 uses
  %.lcssa230 = phi i32 [ 0, %bb.i ], [ %i.ah, %._crit_edge.loopexit ] ; 4 uses
  %.0118.lcssa = phi ptr [ %i.ae, %bb.i ], [ %.0118.lcssa.ph, %._crit_edge.loopexit ] ; 6 uses
  %.0.lcssa = phi i1 [ %i.w, %bb.i ], [ %.0.lcssa.ph, %._crit_edge.loopexit ]
  %.1117 = phi i8 [ %spec.store.select.peel, %bb.i ], [ %.fr, %._crit_edge.loopexit ] ; 2 uses
  br i1 %.0.lcssa, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %._crit_edge
  %i.be = load i8, ptr %i.i, align 2
  %i.bf = icmp eq i8 %i.be, 115
  %i.bg = icmp ne i32 %.lcssa230, 0
  %or.cond19 = and i1 %i.bg, %i.bf
  %i.bh = icmp ne i8 %.1117, 46
  %or.cond22 = and i1 %i.bh, %or.cond19
  br i1 %or.cond22, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bi = getelementptr i8, ptr %.1124179.lcssa234, i64 2
  %i.bj = load i8, ptr %.lcssa232, align 1
  %.not142 = icmp eq i8 %i.bj, 46
  br i1 %.not142, label %.critedge.preheader, label %.loopexit

bb.p:                                             ; preds = %bb.n
  %.not143194 = icmp eq i8 %.1117, 46
  br i1 %.not143194, label %.critedge.preheader, label %.lr.ph198.preheader

.lr.ph198.preheader:                              ; preds = %bb.p
  %.not144308 = icmp eq i32 %.lcssa230, 0
  br i1 %.not144308, label %.critedge.thread, label %.lr.ph311

.critedge.preheader:                              ; preds = %.lr.ph311, %bb.o, %bb.p
  %.4133.lcssa = phi i32 [ %.lcssa230, %bb.p ], [ %.1130178.lcssa233, %bb.o ], [ %i.bp, %.lr.ph311 ] ; 3 uses
  %.4127.lcssa = phi ptr [ %.lcssa232, %bb.p ], [ %i.bi, %bb.o ], [ %i.bq, %.lr.ph311 ]
  %i.bk = ptrtoint ptr %.0118.lcssa to i64        ; 2 uses
  %i.bl = sub i64 %i.bk, %i.h                     ; 2 uses
  %i.bm = icmp slt i64 %i.bl, 8
  br i1 %i.bm, label %.critedge.preheader216, label %.preheader

.critedge.preheader216:                           ; preds = %.critedge.preheader
  %i.bn = add i64 %i.h, 8
  %i.bo = sub i64 %i.bn, %i.bk                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %.0118.lcssa, i8 32, i64 %i.bo, i1 false)
  %scevgep = getelementptr i8, ptr %.0118.lcssa, i64 %i.bo ; 2 uses
  %.pre = ptrtoint ptr %scevgep to i64
  %.pre236 = sub i64 %.pre, %i.h
  br label %.preheader

.lr.ph198:                                        ; preds = %.lr.ph311
  %.not144 = icmp eq i32 %i.bp, 0
  br i1 %.not144, label %.critedge.thread, label %.lr.ph311, !llvm.loop !20

.lr.ph311:                                        ; preds = %.lr.ph198.preheader, %.lr.ph198
  %.4133195310 = phi i32 [ %i.bp, %.lr.ph198 ], [ %.lcssa230, %.lr.ph198.preheader ]
  %.4127196309 = phi ptr [ %i.bq, %.lr.ph198 ], [ %.lcssa232, %.lr.ph198.preheader ] ; 2 uses
  %i.bp = add i32 %.4133195310, -1                ; 3 uses
  %i.bq = getelementptr i8, ptr %.4127196309, i64 1 ; 2 uses
  %i.br = load i8, ptr %.4127196309, align 1
  %.not143 = icmp eq i8 %i.br, 46
  br i1 %.not143, label %.critedge.preheader, label %.lr.ph198, !llvm.loop !20

.preheader:                                       ; preds = %.critedge.preheader216, %.critedge.preheader
  %.pre-phi237 = phi i64 [ %.pre236, %.critedge.preheader216 ], [ %i.bl, %.critedge.preheader ]
  %.1119.lcssa = phi ptr [ %scevgep, %.critedge.preheader216 ], [ %.0118.lcssa, %.critedge.preheader ] ; 2 uses
  %i.bs = icmp sgt i32 %.4133.lcssa, 0
  %i.bt = icmp slt i64 %.pre-phi237, 11
  %i.bu = select i1 %i.bs, i1 %i.bt, i1 false
  br i1 %i.bu, label %.lr.ph208, label %.loopexit159.thread

.lr.ph208:                                        ; preds = %.preheader, %bb.v
  %.1207 = phi i1 [ %i.cg, %bb.v ], [ true, %.preheader ]
  %.2120206 = phi ptr [ %.3121, %bb.v ], [ %.1119.lcssa, %.preheader ] ; 3 uses
  %.5128205 = phi ptr [ %i.bv, %bb.v ], [ %.4127.lcssa, %.preheader ] ; 2 uses
  %.6204 = phi i32 [ %i.bx, %bb.v ], [ %.4133.lcssa, %.preheader ] ; 2 uses
  %i.bv = getelementptr i8, ptr %.5128205, i64 1
  %i.bw = load i8, ptr %.5128205, align 1
  %.fr157 = freeze i8 %i.bw                       ; 8 uses
  %i.bx = add nsw i32 %.6204, -1                  ; 2 uses
  %i.by = load i8, ptr %i.i, align 2              ; 2 uses
  %.not145 = icmp eq i8 %i.by, 114
  br i1 %.not145, label %.thread155, label %bb.q

bb.q:                                             ; preds = %.lr.ph208
  %i.bz = zext i8 %.fr157 to i32                  ; 2 uses
  %i.ca = tail call ptr @strchr(ptr noundef @bad_chars, i32 noundef %i.bz) #11
  %.not146 = icmp eq ptr %i.ca, null
  br i1 %.not146, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %bb.q
  %i.cb = icmp eq i8 %i.by, 115
  br i1 %i.cb, label %bb.s, label %.thread155

bb.s:                                             ; preds = %bb.r
  %i.cc = tail call ptr @strchr(ptr noundef @bad_if_strict, i32 noundef %i.bz) #11
  %.not147 = icmp eq ptr %i.cc, null
  br i1 %.not147, label %.thread155, label %.loopexit

.thread155:                                       ; preds = %.lr.ph208, %bb.s, %bb.r
  %i.cd = phi i1 [ false, %bb.r ], [ true, %bb.s ], [ false, %.lr.ph208 ] ; 2 uses
  %i.ce = icmp ult i8 %.fr157, 32
  br i1 %i.ce, label %.loopexit, label %switch.early.test149

switch.early.test149:                             ; preds = %.thread155
  switch i8 %.fr157, label %bb.u [
    i8 92, label %.loopexit
    i8 58, label %.loopexit
    i8 46, label %bb.t
  ]

bb.t:                                             ; preds = %switch.early.test149
  br i1 %i.cd, label %.loopexit, label %.loopexit159

bb.u:                                             ; preds = %switch.early.test149
  %i.cf = add i8 %.fr157, -65
  %or.cond31 = icmp ult i8 %i.cf, 26
  %brmerge.not = and i1 %or.cond31, %i.cd
  br i1 %brmerge.not, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cg = icmp ne i8 %.fr157, 32                  ; 2 uses
  %i.ch = load i16, ptr %i.j, align 8
  %i.ci = and i16 %i.ch, 512
  %i.cj = icmp eq i16 %i.ci, 0
  %i.ck = add i8 %.fr157, -97
  %i.cl = icmp ult i8 %i.ck, 26
  %or.cond37 = and i1 %i.cl, %i.cj
  %i.cm = add nsw i8 %.fr157, -32
  %storemerge = select i1 %or.cond37, i8 %i.cm, i8 %.fr157
  %.3121 = getelementptr i8, ptr %.2120206, i64 1 ; 3 uses
  store i8 %storemerge, ptr %.2120206, align 1
  %i.cn = icmp samesign ugt i32 %.6204, 1
  %i.co = ptrtoint ptr %.3121 to i64
  %i.cp = sub i64 %i.co, %i.h
  %i.cq = icmp slt i64 %i.cp, 11
  %i.cr = select i1 %i.cn, i1 %i.cq, i1 false
  br i1 %i.cr, label %.lr.ph208, label %.loopexit159, !llvm.loop !21

.loopexit159:                                     ; preds = %bb.v, %bb.t
  %.2120167 = phi ptr [ %.2120206, %bb.t ], [ %.3121, %bb.v ]
  %.1164 = phi i1 [ %.1207, %bb.t ], [ %i.cg, %bb.v ]
  br i1 %.1164, label %.loopexit159.thread, label %.loopexit

.loopexit159.thread:                              ; preds = %.preheader, %.loopexit159
  %.7265 = phi i32 [ %i.bx, %.loopexit159 ], [ %.4133.lcssa, %.preheader ]
  %.2120167264 = phi ptr [ %.2120167, %.loopexit159 ], [ %.1119.lcssa, %.preheader ]
  %i.cs = load i8, ptr %i.i, align 2
  %i.ct = icmp eq i8 %i.cs, 115
  %i.cu = icmp ne i32 %.7265, 0
  %or.cond39 = select i1 %i.ct, i1 %i.cu, i1 false
  br i1 %or.cond39, label %.loopexit, label %.critedge.thread

.critedge.thread:                                 ; preds = %.lr.ph198, %.lr.ph198.preheader, %.loopexit159.thread
  %.4 = phi ptr [ %.2120167264, %.loopexit159.thread ], [ %.0118.lcssa, %.lr.ph198.preheader ], [ %.0118.lcssa, %.lr.ph198 ] ; 2 uses
  %i.cv = ptrtoint ptr %.4 to i64                 ; 2 uses
  %i.cw = sub i64 %i.cv, %i.h
  %i.cx = icmp slt i64 %i.cw, 11
  br i1 %i.cx, label %.lr.ph213.preheader, label %.loopexit

.lr.ph213.preheader:                              ; preds = %.critedge.thread
  %i.cy = add i64 %i.h, 11
  %i.cz = sub i64 %i.cy, %i.cv
  tail call void @llvm.memset.p0.i64(ptr align 1 %.4, i8 32, i64 %i.cz, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.thread150, %bb.l, %bb.j, %.thread246, %switch.early.test, %switch.early.test, %bb.u, %switch.early.test149, %switch.early.test149, %.thread155, %bb.s, %bb.q, %.thread, %bb.h, %bb.e, %bb.g, %.thread150.peel, %switch.early.test.peel, %switch.early.test.peel, %.lr.ph213.preheader, %bb.d, %.critedge.thread, %.loopexit159.thread, %.loopexit159, %bb.t, %bb.o, %._crit_edge, %bb.b
  %.0122 = phi i32 [ -22, %bb.b ], [ -22, %bb.t ], [ 0, %.critedge.thread ], [ -22, %bb.e ], [ -22, %.loopexit159 ], [ -22, %._crit_edge ], [ -22, %bb.o ], [ -22, %.loopexit159.thread ], [ -22, %bb.d ], [ 0, %.lr.ph213.preheader ], [ -22, %switch.early.test.peel ], [ -22, %switch.early.test.peel ], [ -22, %.thread150.peel ], [ -22, %.thread ], [ -22, %bb.g ], [ -22, %bb.h ], [ -22, %bb.u ], [ -22, %bb.q ], [ -22, %bb.s ], [ -22, %.thread155 ], [ -22, %switch.early.test149 ], [ -22, %switch.early.test149 ], [ -22, %switch.early.test ], [ -22, %switch.early.test ], [ -22, %.thread246 ], [ -22, %bb.j ], [ -22, %bb.l ], [ -22, %.thread150 ]
  ret i32 %.0122
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @fat_scan(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local { i64, i64 } @current_time(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @msdos_add_entry(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 0, 2) %2, i32 noundef range(i32 0, 2) %3, i32 noundef range(i32 0, -2147483648) %4, ptr noundef %5, ptr noundef %6) unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %7 = alloca %struct.msdos_dir_entry, align 4    ; 13 uses
  %i.a = alloca i16, align 2                      ; 5 uses
  %i.b = alloca i16, align 2                      ; 5 uses
  %i.c = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 864
  %.val = load ptr, ptr %i.e, align 32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i16 0, ptr %i.a, align 2, !annotation !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i16 0, ptr %i.b, align 2, !annotation !10
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.f, i8 0, i64 19, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(11) %7, ptr noundef align 1 dereferenceable(11) %1, i64 11, i1 false)
  %.not = icmp eq i32 %2, 0
  %i.g = select i1 %.not, i8 32, i8 16            ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 11
  %.not18 = icmp eq i32 %3, 0
  %i.i = or disjoint i8 %i.g, 2
  %spec.select = select i1 %.not18, i8 %i.g, i8 %i.i
  store i8 %spec.select, ptr %i.h, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i8 0, ptr %i.j, align 4
  call void @fat_time_unix2fat(ptr noundef %.val, ptr noundef %5, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null) #11
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.k, i8 0, i64 7, i1 false)
  %i.l = load i16, ptr %i.a, align 2
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 22
  store i16 %i.l, ptr %i.m, align 2
  %i.n = load i16, ptr %i.b, align 2
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i16 %i.n, ptr %i.o, align 4
  %i.p = trunc i32 %4 to i16
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 26
  store i16 %i.p, ptr %i.q, align 2
  %i.r = lshr i32 %4, 16
  %i.s = trunc nuw nsw i32 %i.r to i16
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i16 %i.s, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i32 0, ptr %i.u, align 4
  %i.v = call i32 @fat_add_entries(ptr noundef %0, ptr noundef nonnull %7, i32 noundef 1, ptr noundef %6) #11 ; 2 uses
  %.not19 = icmp eq i32 %i.v, 0
  br i1 %.not19, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @fat_truncate_time(ptr noundef %0, ptr noundef %5, i32 noundef 2) #11
  %i.w = load ptr, ptr %i.c, align 8
  %i.x = getelementptr i8, ptr %i.w, i64 80
  %i.y = load i64, ptr %i.x, align 16
  %i.z = and i64 %i.y, 144
  %.not20 = icmp eq i64 %i.z, 0
  br i1 %.not20, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr i8, ptr %0, i64 4
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = and i32 %i.ab, 65
  %.not21 = icmp eq i32 %i.ac, 0
  br i1 %.not21, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ad = call i32 @fat_sync_inode(ptr noundef %0) #11 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @__mark_inode_dirty(ptr noundef %0, i32 noundef 112) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  ret i32 %i.v
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @fat_truncate_time(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @fat_flush_inodes(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @fat_time_unix2fat(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @fat_add_entries(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @fat_sync_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @fat_remove_entries(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @clear_nlink(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @fat_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @fat_alloc_new_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @fat_free_clusters(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @fat_dir_empty(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drop_nlink(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @__fat_fs_error(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @fat_get_dotdot_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @fat_attach(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mmb_mark_buffer_dirty(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @sync_dirty_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @inode_maybe_inc_iversion(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern nofree noredzone nounwind null_pointer_is_valid sspstrong memory(readwrite, inaccessiblemem: read, target_mem: read)
define internal noundef i32 @msdos_hash(ptr noundef %0, ptr nofree noundef captures(none) %1) #8 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [11 x i8], align 1                ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 864
  %.val = load ptr, ptr %i.d, align 32
  %i.e = getelementptr i8, ptr %.val, i64 160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.a, i8 0, i64 11, i1 false), !annotation !10
  %i.f = getelementptr i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %1, i64 4
  %i.i = load i32, ptr %i.h, align 4
  %i.j = call fastcc i32 @msdos_format_name(ptr noundef %i.g, i32 noundef %i.i, ptr noundef nonnull %i.a, ptr noundef %i.e) #13, !srcloc !24
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = call i32 @full_name_hash(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 11) #15
  store i32 %i.k, ptr %1, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none)
define internal i32 @msdos_cmp(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #5 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [11 x i8], align 1                ; 6 uses
  %i.b = alloca [11 x i8], align 1                ; 6 uses
  %i.c = getelementptr i8, ptr %0, i64 104
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 864
  %.val = load ptr, ptr %i.e, align 32
  %i.f = getelementptr i8, ptr %.val, i64 160     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.a, i8 0, i64 11, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.b, i8 0, i64 11, i1 false), !annotation !10
  %i.g = getelementptr i8, ptr %3, i64 8          ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %3, i64 4          ; 2 uses
  %i.j = load i32, ptr %i.i, align 4
  %i.k = call fastcc i32 @msdos_format_name(ptr noundef %i.h, i32 noundef %i.j, ptr noundef nonnull %i.a, ptr noundef %i.f) #13, !srcloc !25
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = call fastcc i32 @msdos_format_name(ptr noundef %2, i32 noundef %1, ptr noundef nonnull %i.b, ptr noundef %i.f) #13, !srcloc !26
  %.not15 = icmp eq i32 %i.l, 0
  br i1 %.not15, label %loadbb, label %bb.c

res_block:                                        ; preds = %loadbb17, %loadbb
  %phi.src1 = phi i64 [ %i.q, %loadbb ], [ %i.x, %loadbb17 ]
  %phi.src2 = phi i64 [ %i.r, %loadbb ], [ %i.y, %loadbb17 ]
  %i.m = icmp ult i64 %phi.src1, %phi.src2
  %i.n = select i1 %i.m, i32 -1, i32 1
  br label %endblock

loadbb:                                           ; preds = %bb.b
  %i.o = load i64, ptr %i.a, align 1
  %i.p = load i64, ptr %i.b, align 1
  %i.q = call i64 @llvm.bswap.i64(i64 %i.o)       ; 2 uses
  %i.r = call i64 @llvm.bswap.i64(i64 %i.p)       ; 2 uses
  %i.s = icmp eq i64 %i.q, %i.r
  br i1 %i.s, label %loadbb17, label %res_block

loadbb17:                                         ; preds = %loadbb
  %i.t = getelementptr i8, ptr %i.a, i64 3
  %i.u = getelementptr i8, ptr %i.b, i64 3
  %i.v = load i64, ptr %i.t, align 1
  %i.w = load i64, ptr %i.u, align 1
  %i.x = call i64 @llvm.bswap.i64(i64 %i.v)       ; 2 uses
  %i.y = call i64 @llvm.bswap.i64(i64 %i.w)       ; 2 uses
  %i.z = icmp eq i64 %i.x, %i.y
  br i1 %i.z, label %endblock, label %res_block

endblock:                                         ; preds = %loadbb17, %res_block, %bb.c, %bb.d
  %.0 = phi i32 [ %i.ae, %bb.d ], [ 1, %bb.c ], [ 0, %loadbb17 ], [ %i.n, %res_block ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/delta-islands?download=true
inline.NumInlined: 79
inline.NumDeleted: 40
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@resolve_tree_islands:bb.a

set_island_marks.exit:                            ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.af, %bb.ad, %bb.t, %bb.s
  %i.ij = call i32 @tree_entry(ptr noundef nonnull %7, ptr noundef nonnull %8) #15
  %.not52 = icmp eq i32 %i.ij, 0
  br i1 %.not52, label %._crit_edge89, label %bb.s

._crit_edge89:                                    ; preds = %set_island_marks.exit, %bb.r
  call void @free_tree_buffer(ptr noundef nonnull %i.bx) #15
  %i.ik = add nuw nsw i64 %indvars.iv108, 1
  call void @display_progress(ptr noundef %i.ad, i64 noundef %i.ik) #15
  %.pre = load ptr, ptr @island_marks, align 8, !tbaa !18
  br label %bb.ag

bb.ag:                                            ; preds = %kh_get_oid_map.exit.thread, %kh_get_oid_map.exit, %._crit_edge89
  %i.il = phi ptr [ %i.ag, %kh_get_oid_map.exit.thread ], [ %i.ag, %kh_get_oid_map.exit ], [ %.pre, %._crit_edge89 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1 ; 2 uses
  %exitcond112.not = icmp eq i64 %indvars.iv.next109, %wide.trip.count111
  br i1 %exitcond112.not, label %._crit_edge93, label %bb.j, !llvm.loop !80

._crit_edge93:                                    ; preds = %bb.ag, %bb.i
  %i.im = load i32, ptr @git_gettext_enabled, align 4, !tbaa !25
  %.not4.i.i = icmp eq i32 %i.im, 0
  br i1 %.not4.i.i, label %stop_progress.exit, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge93
  %i.in = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #15
  br label %stop_progress.exit

stop_progress.exit:                               ; preds = %._crit_edge93, %bb.ah
  %.0.i.i = phi ptr [ %i.in, %bb.ah ], [ @.str.5, %._crit_edge93 ]
  call void @stop_progress_msg(ptr noundef nonnull %i.a, ptr noundef %.0.i.i) #15
  call void @free(ptr noundef %i.g) #15
  br label %bb.ai

bb.ai:                                            ; preds = %bb.a, %stop_progress.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @tree_depth_compare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !43
  %i.e = sub i32 %i.b, %i.d
  ret i32 %i.e
}

declare ptr @start_progress(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @_(ptr noundef %0) unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !27
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @git_gettext_enabled, align 4, !tbaa !25
  %.not4 = icmp eq i32 %i.b, 0
  br i1 %.not4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %0, i32 noundef 5) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ %i.c, %bb.c ], [ @.str.4, %bb.a ], [ %0, %bb.b ]
  ret ptr %.0
}

declare ptr @lookup_tree(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @die(ptr noundef, ...) local_unnamed_addr #6

declare ptr @oid_to_hex(ptr noundef) local_unnamed_addr #3

declare void @init_tree_desc(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @tree_entry(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @lookup_object(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @free_tree_buffer(ptr noundef) local_unnamed_addr #3

declare void @display_progress(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @load_delta_islands(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.object_id, align 8          ; 5 uses
  %3 = alloca %struct.object_id, align 8          ; 9 uses
  %4 = alloca %struct.object_id, align 8          ; 5 uses
  %5 = alloca %struct.object_id, align 8          ; 9 uses
  %6 = alloca %struct.island_load_data, align 8   ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  %i.a = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 40) #15
  store ptr %i.a, ptr @island_marks, align 8, !tbaa !18
  call void @repo_config(ptr noundef %0, ptr noundef nonnull @island_config_callback, ptr noundef nonnull %6) #15
  %i.b = call ptr @xcalloc(i64 noundef 1, i64 noundef 40) #15
  store ptr %i.b, ptr %6, align 8, !tbaa !55
  %i.c = call ptr @get_main_ref_store(ptr noundef %0) #15
  %i.d = call i32 @refs_for_each_ref(ptr noundef %i.c, ptr noundef nonnull @find_island_for_ref, ptr noundef nonnull %6) #15 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !56
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %free_config_regexes.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.05.i = phi i64 [ 0, %.lr.ph.i ], [ %i.j, %bb.b ] ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !57
  %i.i = getelementptr inbounds nuw [64 x i8], ptr %i.h, i64 %.05.i
  call void @regfree(ptr noundef %i.i) #15
  %i.j = add nuw i64 %.05.i, 1                    ; 2 uses
  %i.k = load i64, ptr %i.e, align 8, !tbaa !56
  %i.l = icmp ult i64 %i.j, %i.k
  br i1 %i.l, label %bb.b, label %free_config_regexes.exit, !llvm.loop !92

free_config_regexes.exit:                         ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !57
  call void @free(ptr noundef %i.n) #15
  %i.o = load ptr, ptr %6, align 8, !tbaa !55     ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !60   ; 4 uses
  %i.r = zext i32 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = call ptr @xmalloc(i64 noundef %i.s) #15  ; 6 uses
  %i.u = load i32, ptr %i.o, align 8, !tbaa !61   ; 5 uses
  %.not87.i = icmp eq i32 %i.u, 0                 ; 2 uses
  br i1 %.not87.i, label %.preheader68.i, label %.lr.ph.i3

.lr.ph.i3:                                        ; preds = %free_config_regexes.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !62
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.y = zext i32 %i.u to i64
  br label %bb.c

.preheader68.i:                                   ; preds = %bb.e, %free_config_regexes.exit
  %i.z = icmp ugt i32 %i.q, 1
  br i1 %i.z, label %.preheader.i, label %._crit_edge.i

bb.c:                                             ; preds = %bb.e, %.lr.ph.i3
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i3 ], [ %indvars.iv.next.i, %bb.e ] ; 4 uses
  %.04588.i = phi i32 [ 0, %.lr.ph.i3 ], [ %.1.i, %bb.e ] ; 3 uses
  %i.aa = trunc nuw i64 %indvars.iv.i to i32
  %i.ab = lshr i64 %indvars.iv.i, 4
  %i.ac = and i64 %i.ab, 268435455
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !25
  %i.af = shl i32 %i.aa, 1
  %i.ag = and i32 %i.af, 30
  %i.ah = shl nuw i32 3, %i.ag
  %i.ai = and i32 %i.ah, %i.ae
  %.not55.i = icmp eq i32 %i.ai, 0
  br i1 %.not55.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aj = load ptr, ptr %i.x, align 8, !tbaa !63
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !31
  %i.am = add i32 %.04588.i, 1
  %i.an = zext i32 %.04588.i to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.an
  store ptr %i.al, ptr %i.ao, align 8, !tbaa !101
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1.i = phi i32 [ %.04588.i, %bb.c ], [ %i.am, %bb.d ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i4 = icmp eq i64 %indvars.iv.next.i, %i.y
  br i1 %.not.i4, label %.preheader68.i, label %bb.c, !llvm.loop !93

.loopexit.i:                                      ; preds = %bb.j
  %indvars.iv.next122.i = add nuw nsw i64 %indvars.iv121.i, 1 ; 2 uses
  %i.ap = zext i32 %.149.i to i64
  %i.aq = icmp samesign ult i64 %indvars.iv.next122.i, %i.ap
  %indvars.iv.next127.i = add nuw nsw i64 %indvars.iv126.i, 1
  br i1 %i.aq, label %.preheader.i, label %._crit_edge.i, !llvm.loop !94

.preheader.i:                                     ; preds = %.preheader68.i, %.loopexit.i
  %indvars.iv126.i = phi i64 [ %indvars.iv.next127.i, %.loopexit.i ], [ 0, %.preheader68.i ] ; 2 uses
  %indvars.iv121.i = phi i64 [ %indvars.iv.next122.i, %.loopexit.i ], [ 1, %.preheader68.i ] ; 3 uses
  %.05092.i = phi i32 [ %.149.i, %.loopexit.i ], [ %i.q, %.preheader68.i ]
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv126.i
  %i.as = zext i32 %.05092.i to i64
  %i.at = trunc nuw i64 %indvars.iv121.i to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %.preheader.i
  %indvars.iv123.i = phi i64 [ %indvars.iv121.i, %.preheader.i ], [ %indvars.iv.next124.i, %bb.j ] ; 3 uses
  %.04890.i = phi i32 [ %i.at, %.preheader.i ], [ %.149.i, %bb.j ] ; 3 uses
  %7 = load ptr, ptr %i.ar, align 8, !tbaa !101
  %i.au = load i64, ptr %7, align 8, !tbaa !66
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv123.i
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !101 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !66
  %i.ay = icmp eq i64 %i.au, %i.ax
  br i1 %i.ay, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.az = zext i32 %.04890.i to i64               ; 2 uses
  %.not54.i = icmp eq i64 %indvars.iv123.i, %i.az
  br i1 %.not54.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.az
  store ptr %i.aw, ptr %i.ba, align 8, !tbaa !101
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bb = add i32 %.04890.i, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %.149.i = phi i32 [ %.04890.i, %bb.f ], [ %i.bb, %bb.i ] ; 4 uses
  %indvars.iv.next124.i = add nuw nsw i64 %indvars.iv123.i, 1 ; 2 uses
  %i.bc = icmp samesign ult i64 %indvars.iv.next124.i, %i.as
  br i1 %i.bc, label %bb.f, label %.loopexit.i, !llvm.loop !95

._crit_edge.i:                                    ; preds = %.loopexit.i, %.preheader68.i
  %.050.lcssa.i = phi i32 [ %i.q, %.preheader68.i ], [ %.149.i, %.loopexit.i ] ; 3 uses
  %i.bd = lshr i32 %.050.lcssa.i, 5
  %i.be = add nuw nsw i32 %i.bd, 1
  store i32 %i.be, ptr @island_bitmap_size, align 4, !tbaa !25
  %i.bf = load ptr, ptr @core_island_name, align 8, !tbaa !67 ; 4 uses
  %.not.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i, label %get_core_island.exit.i, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i
  br i1 %.not87.i, label %kh_get_str.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bg = add i32 %i.u, -1                        ; 2 uses
  %i.bh = load i8, ptr %i.bf, align 1, !tbaa !27  ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.bh, 0
  br i1 %.not.i.i.i.i, label %__ac_X31_hash_string.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bi = sext i8 %i.bh to i32                    ; 2 uses
  %.0813.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 1 ; 2 uses
  %i.bj = load i8, ptr %.0813.i.i.i.i, align 1, !tbaa !27 ; 2 uses
  %.not1214.i.i.i.i = icmp eq i8 %i.bj, 0
  br i1 %.not1214.i.i.i.i, label %__ac_X31_hash_string.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.m, %.lr.ph.i.i.i.i
  %i.bk = phi i8 [ %i.bo, %.lr.ph.i.i.i.i ], [ %i.bj, %bb.m ]
  %.0816.i.i.i.i = phi ptr [ %.08.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.0813.i.i.i.i, %bb.m ]
  %.015.i.i.i.i = phi i32 [ %i.bn, %.lr.ph.i.i.i.i ], [ %i.bi, %bb.m ]
  %i.bl = mul i32 %.015.i.i.i.i, 31
  %i.bm = sext i8 %i.bk to i32
  %i.bn = add i32 %i.bl, %i.bm                    ; 2 uses
  %.08.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0816.i.i.i.i, i64 1 ; 2 uses
  %i.bo = load i8, ptr %.08.i.i.i.i, align 1, !tbaa !27 ; 2 uses
  %.not12.i.i.i.i = icmp eq i8 %i.bo, 0
  br i1 %.not12.i.i.i.i, label %__ac_X31_hash_string.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

__ac_X31_hash_string.exit.i.i.i:                  ; preds = %.lr.ph.i.i.i.i, %bb.m, %bb.l
  %.1.i.i.i.i = phi i32 [ 0, %bb.l ], [ %i.bi, %bb.m ], [ %i.bn, %.lr.ph.i.i.i.i ]
  %i.bp = and i32 %.1.i.i.i.i, %i.bg              ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !62
  %i.bs = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  br label %bb.n

bb.n:                                             ; preds = %.critedge2.i.i.i, %__ac_X31_hash_string.exit.i.i.i
  %.028.i.i.i = phi i32 [ %i.bp, %__ac_X31_hash_string.exit.i.i.i ], [ %i.cj, %.critedge2.i.i.i ] ; 5 uses
  %.0.i.i.i = phi i32 [ 0, %__ac_X31_hash_string.exit.i.i.i ], [ %i.ch, %.critedge2.i.i.i ]
  %i.bt = lshr i32 %.028.i.i.i, 4
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !25 ; 2 uses
  %i.bx = shl i32 %.028.i.i.i, 1
  %i.by = and i32 %i.bx, 30                       ; 2 uses
  %i.bz = lshr i32 %i.bw, %i.by                   ; 2 uses
  %i.ca = and i32 %i.bz, 2
  %.not32.i.i.i = icmp eq i32 %i.ca, 0
  br i1 %.not32.i.i.i, label %bb.o, label %.critedge.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.cb = and i32 %i.bz, 1
  %.not33.i.i.i = icmp eq i32 %i.cb, 0
  br i1 %.not33.i.i.i, label %bb.p, label %.critedge2.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.cc = load ptr, ptr %i.bs, align 8, !tbaa !68
  %i.cd = zext i32 %.028.i.i.i to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cd
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !67
  %i.cg = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cf, ptr noundef nonnull readonly dereferenceable(1) %i.bf) #17
  %.not34.i.i.i = icmp eq i32 %i.cg, 0
  br i1 %.not34.i.i.i, label %.critedge.i.i.i, label %.critedge2.i.i.i

.critedge2.i.i.i:                                 ; preds = %bb.p, %bb.o
  %i.ch = add i32 %.0.i.i.i, 1                    ; 2 uses
  %i.ci = add i32 %i.ch, %.028.i.i.i
  %i.cj = and i32 %i.ci, %i.bg                    ; 2 uses
  %i.ck = icmp eq i32 %i.cj, %i.bp
  br i1 %i.ck, label %get_core_island.exit.i, label %bb.n, !llvm.loop !96

.critedge.i.i.i:                                  ; preds = %bb.p, %bb.n
  %i.cl = shl nuw i32 3, %i.by
  %i.cm = and i32 %i.cl, %i.bw
  %.not35.i.i.i = icmp eq i32 %i.cm, 0
  %spec.select.i.i.i = select i1 %.not35.i.i.i, i32 %.028.i.i.i, i32 %i.u
  br label %kh_get_str.exit.i.i

kh_get_str.exit.i.i:                              ; preds = %.critedge.i.i.i, %bb.k
  %.1.i.i.i = phi i32 [ %spec.select.i.i.i, %.critedge.i.i.i ], [ 0, %bb.k ] ; 2 uses
  %i.cn = icmp ult i32 %.1.i.i.i, %i.u
  br i1 %i.cn, label %bb.q, label %get_core_island.exit.i

bb.q:                                             ; preds = %kh_get_str.exit.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !63
  %i.cq = zext i32 %.1.i.i.i to i64
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.cq
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !31
  br label %get_core_island.exit.i

get_core_island.exit.i:                           ; preds = %.critedge2.i.i.i, %bb.q, %kh_get_str.exit.i.i, %._crit_edge.i
  %.1.i.i = phi ptr [ %i.cs, %bb.q ], [ null, %._crit_edge.i ], [ null, %kh_get_str.exit.i.i ], [ null, %.critedge2.i.i.i ] ; 2 uses
  %.not102.i = icmp eq i32 %.050.lcssa.i, 0
  br i1 %.not102.i, label %deduplicate_islands.exit, label %.lr.ph100.i

.lr.ph100.i:                                      ; preds = %get_core_island.exit.i
  %.not53.i = icmp eq ptr %.1.i.i, null
  %wide.trip.count.i = zext i32 %.050.lcssa.i to i64
  br label %bb.r

bb.r:                                             ; preds = %mark_remote_island_1.exit.i, %.lr.ph100.i
  %indvars.iv131.i = phi i64 [ 0, %.lr.ph100.i ], [ %indvars.iv.next132.i, %mark_remote_island_1.exit.i ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv131.i
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !101 ; 3 uses
  br i1 %.not53.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !66
  %i.cw = load i64, ptr %.1.i.i, align 8, !tbaa !66
  %i.cx = icmp ne i64 %i.cv, %i.cw
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.not.i57.i = phi i1 [ true, %bb.r ], [ %i.cx, %bb.s ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !102
  %.not46.i.i = icmp eq i64 %i.cz, 0
  br i1 %.not46.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.t
  %i.da = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  br label %bb.u

bb.u:                                             ; preds = %.critedge.i.i, %.lr.ph.i.i
  %i.db = phi i64 [ 0, %.lr.ph.i.i ], [ %i.mi, %.critedge.i.i ]
  %.02045.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.mh, %.critedge.i.i ]
  %i.dc = load ptr, ptr %i.da, align 8, !tbaa !103
  %i.dd = getelementptr inbounds nuw [36 x i8], ptr %i.dc, i64 %i.db
  %i.de = call ptr @parse_object(ptr noundef %0, ptr noundef %i.dd) #15 ; 5 uses
  %.not24.i.i = icmp eq ptr %i.de, null
  br i1 %.not24.i.i, label %.critedge.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.df = load ptr, ptr @island_marks, align 8, !tbaa !18 ; 12 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull readonly align 4 dereferenceable(36) %i.dg, i64 36, i1 false)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !46
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !47
  %.not.i62.i = icmp ult i32 %i.di, %i.dk
  br i1 %.not.i62.i, label %bb.w, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.v
  %i.dl = load i32, ptr %i.df, align 8, !tbaa !23 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !48
  %i.do = shl i32 %i.dn, 1
  %i.dp = icmp ugt i32 %i.dl, %i.do
  %..i.i = select i1 %i.dp, i32 -1, i32 1
  %i.dq = add i32 %..i.i, %i.dl
  call fastcc void @kh_resize_oid_map(ptr noundef nonnull %i.df, i32 noundef %i.dq)
  br label %bb.w

bb.w:                                             ; preds = %.sink.split.i.i, %bb.v
  %i.dr = load i32, ptr %i.df, align 8, !tbaa !23 ; 5 uses
  %i.ds = add i32 %i.dr, -1                       ; 2 uses
  %.val.i.i = load i32, ptr %3, align 8
  %i.dt = and i32 %.val.i.i, %i.ds                ; 6 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.df, i64 16 ; 3 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !24 ; 3 uses
  %i.dw = lshr i32 %i.dt, 4
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !25
  %i.ea = shl i32 %i.dt, 1
  %i.eb = and i32 %i.ea, 30
  %i.ec = shl nuw i32 2, %i.eb
  %i.ed = and i32 %i.ec, %i.dz
  %.not78.i.i = icmp eq i32 %i.ed, 0
  br i1 %.not78.i.i, label %.preheader.i.i, label %bb.aa

.preheader.i.i:                                   ; preds = %bb.w
  %i.ee = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  br label %bb.x

bb.x:                                             ; preds = %.critedge2.i.i, %.preheader.i.i
  %.069.i.i = phi i32 [ %i.fg, %.critedge2.i.i ], [ %i.dt, %.preheader.i.i ] ; 6 uses
  %.068.i.i = phi i32 [ %spec.select.i.i, %.critedge2.i.i ], [ %i.dr, %.preheader.i.i ] ; 2 uses
  %.0.i.i = phi i32 [ %i.fe, %.critedge2.i.i ], [ 0, %.preheader.i.i ]
  %i.ef = lshr i32 %.069.i.i, 4
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %i.eg
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !25 ; 3 uses
end_hunk_0

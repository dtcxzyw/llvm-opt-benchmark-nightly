inline.NumInlined: 154
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_view_map_draw_other_locations:bb.a
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.l = tail call i32 @osm_gps_map_polygon_remove(ptr noundef %i.j, ptr noundef nonnull %i.g) #23 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr null, ptr %i.f, align 8, !tbaa !188
  br label %_view_map_remove_location.exit

_view_map_remove_location.exit:                   ; preds = %bb.b, %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %.04055, i64 8
  %.040 = load ptr, ptr %i.m, align 8, !tbaa !149 ; 2 uses
  %.not = icmp eq ptr %.040, null
  br i1 %.not, label %._crit_edge, label %bb.b

bb.g:                                             ; preds = %._crit_edge
  %i.n = tail call ptr @dt_map_location_get_locations_on_map(ptr noundef %1) #23 ; 3 uses
  %.not4456 = icmp eq ptr %i.n, null
  br i1 %.not4456, label %._crit_edge60, label %.lr.ph59

.lr.ph59:                                         ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 232
  br label %bb.h

._crit_edge60:                                    ; preds = %bb.q, %bb.g
  tail call void @g_list_free_full(ptr noundef %i.n, ptr noundef nonnull @g_free) #23
  br label %bb.r

bb.h:                                             ; preds = %.lr.ph59, %bb.q
  %.03957 = phi ptr [ %i.n, %.lr.ph59 ], [ %i.ap, %bb.q ] ; 3 uses
  %i.q = load ptr, ptr %.03957, align 8, !tbaa !150 ; 11 uses
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !113  ; 3 uses
  %i.s = load i32, ptr %i.q, align 8, !tbaa !165
  %.not16.i = icmp eq ptr %i.r, null
  br i1 %.not16.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %bb.i
  %.01017.i = phi ptr [ %i.w, %bb.i ], [ %i.r, %bb.h ] ; 2 uses
  %i.t = load ptr, ptr %.01017.i, align 8, !tbaa !150 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !165
  %.not13.i = icmp eq i32 %i.u, %i.s
  br i1 %.not13.i, label %_others_location.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.v = getelementptr inbounds nuw i8, ptr %.01017.i, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !190  ; 2 uses
  %.not.i50 = icmp eq ptr %i.w, null
  br i1 %.not.i50, label %.loopexit, label %.lr.ph.i

.loopexit:                                        ; preds = %bb.i, %bb.h
  %i.x = tail call ptr @g_list_append(ptr noundef %i.r, ptr noundef nonnull %i.q) #23
  store ptr %i.x, ptr %i.b, align 8, !tbaa !113
  store ptr null, ptr %.03957, align 8, !tbaa !150
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.z = load i32, ptr %i.y, align 8, !tbaa !189
  %i.aa = icmp eq i32 %i.z, 2
  br i1 %i.aa, label %bb.j, label %_others_location.exit

bb.j:                                             ; preds = %.loopexit
  %i.ab = load i32, ptr %i.q, align 8, !tbaa !165
  %i.ac = load i32, ptr %i.a, align 8, !tbaa !110
  %i.ad = icmp eq i32 %i.ab, %i.ac
  br i1 %i.ad, label %bb.k, label %._crit_edge62

._crit_edge62:                                    ; preds = %bb.j
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !222
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ae = load ptr, ptr %i.o, align 8, !tbaa !280 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !222
  %i.ag = load i32, ptr %i.p, align 8, !tbaa !281
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  store i32 %i.ag, ptr %i.ah, align 8, !tbaa !282
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge62, %bb.k
  %i.ai = phi ptr [ %.pre, %._crit_edge62 ], [ %i.ae, %bb.k ]
  %.not46 = icmp eq ptr %i.ai, null
  br i1 %.not46, label %bb.m, label %_others_location.exit

bb.m:                                             ; preds = %bb.l
  tail call void @dt_map_location_get_polygons(ptr noundef nonnull %i.q) #23
  br label %_others_location.exit

_others_location.exit:                            ; preds = %.lr.ph.i, %.loopexit, %bb.m, %bb.l
  %.0 = phi ptr [ %i.q, %.loopexit ], [ %i.q, %bb.l ], [ %i.q, %bb.m ], [ %i.t, %.lr.ph.i ] ; 3 uses
  %i.aj = load i32, ptr %i.a, align 8, !tbaa !110 ; 2 uses
  %.not47 = icmp eq i32 %i.aj, 0
  br i1 %.not47, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_others_location.exit
  %i.ak = load i32, ptr %.0, align 8, !tbaa !165
  %.not48 = icmp eq i32 %i.aj, %i.ak
  br i1 %.not48, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n, %_others_location.exit
  %i.al = getelementptr inbounds nuw i8, ptr %.0, i64 72 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !188
  %.not49 = icmp eq ptr %i.am, null
  br i1 %.not49, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.an = tail call fastcc ptr @_view_map_draw_location(ptr noundef nonnull %0, ptr noundef nonnull %.0, i32 noundef 0)
  store ptr %i.an, ptr %i.al, align 8, !tbaa !188
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %.03957, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !190 ; 2 uses
  %.not44 = icmp eq ptr %i.ap, null
  br i1 %.not44, label %._crit_edge60, label %bb.h

bb.r:                                             ; preds = %._crit_edge60, %._crit_edge
  ret void
}

declare void @osm_gps_map_get_bbox(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

declare void @osm_gps_map_point_get_degrees(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @getrusage(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_add_expand_cluster(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #13 {
bb.a:
  %i.a = icmp sgt i32 %3, -1
  br i1 %i.a, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @db.1, align 8, !tbaa !261
  %i.c = zext i32 %0 to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !264
  %i.f = zext i32 %1 to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f
  %.05492 = load i32, ptr %i.g, align 4, !tbaa !135 ; 2 uses
  %.not93 = icmp eq i32 %.05492, -1
  br i1 %.not93, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.h = load ptr, ptr @db.0, align 8, !tbaa !249
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.05494 = phi i32 [ %.05492, %.lr.ph ], [ %.054, %bb.c ]
  %i.i = zext i32 %.05494 to i64
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %i.h, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  store i32 %2, ptr %i.k, align 4, !tbaa !170
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.054 = load i32, ptr %i.l, align 4, !tbaa !135 ; 2 uses
  %.not = icmp eq i32 %.054, -1
  br i1 %.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %i.m = icmp eq i32 %3, 0
  br i1 %i.m, label %.loopexit, label %.thread

.thread:                                          ; preds = %bb.a, %._crit_edge
  %i.n = icmp eq i32 %3, -1
  %spec.store.select = select i1 %i.n, i32 1, i32 %3 ; 4 uses
  %.not62 = icmp eq i32 %0, 0
  br i1 %.not62, label %.loopexit91, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.o = load ptr, ptr @db.1, align 8, !tbaa !261 ; 2 uses
  %i.p = add i32 %0, -1                           ; 2 uses
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !264
  %.not63 = icmp eq ptr %i.s, null
  br i1 %.not63, label %.loopexit91, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = tail call i32 @llvm.usub.sat.i32(i32 %1, i32 1) ; 2 uses
  %i.u = add i32 %1, 2                            ; 2 uses
  %i.v = add nuw nsw i32 %i.t, 1                  ; 2 uses
  %i.w = load i32, ptr @db.4, align 8, !tbaa !262 ; 2 uses
  %i.x = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %i.u)
  %i.y = icmp ult i32 %i.v, %i.x
  br i1 %i.y, label %.lr.ph97.split.preheader, label %.loopexit91

.lr.ph97.split.preheader:                         ; preds = %bb.e
  %i.z = add nsw i32 %spec.store.select, -1
  %i.aa = zext i32 %i.v to i64
  %4 = zext i32 %i.t to i64
  br label %.lr.ph97.split

.lr.ph97.split:                                   ; preds = %.lr.ph97.split.preheader, %_not_clustered.exit.thread
  %i.ab = phi i32 [ %i.w, %.lr.ph97.split.preheader ], [ %i.ap, %_not_clustered.exit.thread ] ; 3 uses
  %i.ac = phi ptr [ %i.o, %.lr.ph97.split.preheader ], [ %i.aq, %_not_clustered.exit.thread ] ; 4 uses
  %indvars.iv.a = phi i64 [ %4, %.lr.ph97.split.preheader ], [ %indvars.iv.next104, %_not_clustered.exit.thread ] ; 3 uses
  %indvars.iv = phi i64 [ %i.aa, %.lr.ph97.split.preheader ], [ %indvars.iv.next, %_not_clustered.exit.thread ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.q
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !264 ; 2 uses
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %_not_clustered.exit.thread, label %bb.f

bb.f:                                             ; preds = %.lr.ph97.split
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.a ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !271
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %_not_clustered.exit.thread, label %_not_clustered.exit

_not_clustered.exit:                              ; preds = %bb.f
  %i.aj = load ptr, ptr @db.0, align 8, !tbaa !249
  %i.ak = load i32, ptr %i.af, align 4, !tbaa !266
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [40 x i8], ptr %i.aj, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 28
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !170
  %.not70 = icmp sgt i32 %i.ao, -1
  br i1 %.not70, label %_not_clustered.exit.thread, label %bb.g

bb.g:                                             ; preds = %_not_clustered.exit
  %5 = trunc nuw i64 %indvars.iv.a to i32
  tail call fastcc void @_add_expand_cluster(i32 noundef %i.p, i32 noundef %5, i32 noundef %2, i32 noundef %i.z)
  %.pre = load ptr, ptr @db.1, align 8, !tbaa !261
  %.pre108 = load i32, ptr @db.4, align 8, !tbaa !262
  br label %_not_clustered.exit.thread

_not_clustered.exit.thread:                       ; preds = %.lr.ph97.split, %bb.f, %_not_clustered.exit, %bb.g
  %i.ap = phi i32 [ %i.ab, %.lr.ph97.split ], [ %i.ab, %bb.f ], [ %i.ab, %_not_clustered.exit ], [ %.pre108, %bb.g ] ; 2 uses
  %i.aq = phi ptr [ %i.ac, %.lr.ph97.split ], [ %i.ac, %bb.f ], [ %i.ac, %_not_clustered.exit ], [ %.pre, %bb.g ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ar = tail call i32 @llvm.umin.i32(i32 %i.ap, i32 %i.u)
  %i.as = zext i32 %i.ar to i64
  %i.at = icmp samesign ult i64 %indvars.iv.next, %i.as
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv.a, 1
  br i1 %i.at, label %.lr.ph97.split, label %.loopexit91, !llvm.loop !283

.loopexit91:                                      ; preds = %_not_clustered.exit.thread, %bb.e, %bb.d, %.thread
  %.not65 = icmp eq i32 %1, 0
  br i1 %.not65, label %_not_clustered.exit74.thread, label %bb.h

bb.h:                                             ; preds = %.loopexit91
  %i.au = add i32 %1, -1                          ; 2 uses
  %i.av = load ptr, ptr @db.1, align 8, !tbaa !261
  %i.aw = zext i32 %0 to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !264 ; 2 uses
  %.not.i71 = icmp eq ptr %i.ay, null
  br i1 %.not.i71, label %_not_clustered.exit74.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = zext i32 %i.au to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !271
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %_not_clustered.exit74.thread, label %_not_clustered.exit74

_not_clustered.exit74:                            ; preds = %bb.i
  %i.be = load ptr, ptr @db.0, align 8, !tbaa !249
  %i.bf = load i32, ptr %i.ba, align 4, !tbaa !266
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [40 x i8], ptr %i.be, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 28
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !170
  %.not66 = icmp sgt i32 %i.bj, -1
  br i1 %.not66, label %_not_clustered.exit74.thread, label %bb.j

bb.j:                                             ; preds = %_not_clustered.exit74
  %i.bk = add nsw i32 %spec.store.select, -1
  tail call fastcc void @_add_expand_cluster(i32 noundef %0, i32 noundef %i.au, i32 noundef %2, i32 noundef %i.bk)
  br label %_not_clustered.exit74.thread

_not_clustered.exit74.thread:                     ; preds = %bb.h, %bb.i, %bb.j, %_not_clustered.exit74, %.loopexit91
  %i.bl = add i32 %1, 1                           ; 3 uses
  %i.bm = load i32, ptr @db.4, align 8, !tbaa !262
  %i.bn = icmp ult i32 %i.bl, %i.bm
  br i1 %i.bn, label %bb.k, label %_not_clustered.exit78.thread

bb.k:                                             ; preds = %_not_clustered.exit74.thread
  %i.bo = load ptr, ptr @db.1, align 8, !tbaa !261
  %i.bp = zext i32 %0 to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bp
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !264 ; 2 uses
  %.not.i75 = icmp eq ptr %i.br, null
  br i1 %.not.i75, label %_not_clustered.exit78.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bs = zext i32 %i.bl to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bs ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !271
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %_not_clustered.exit78.thread, label %_not_clustered.exit78

_not_clustered.exit78:                            ; preds = %bb.l
  %i.bx = load ptr, ptr @db.0, align 8, !tbaa !249
  %i.by = load i32, ptr %i.bt, align 4, !tbaa !266
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [40 x i8], ptr %i.bx, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 28
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !170
  %.not67 = icmp sgt i32 %i.cc, -1
  br i1 %.not67, label %_not_clustered.exit78.thread, label %bb.m

bb.m:                                             ; preds = %_not_clustered.exit78
  %i.cd = add nsw i32 %spec.store.select, -1
  tail call fastcc void @_add_expand_cluster(i32 noundef %0, i32 noundef %i.bl, i32 noundef %2, i32 noundef %i.cd)
  br label %_not_clustered.exit78.thread

_not_clustered.exit78.thread:                     ; preds = %bb.k, %bb.l, %bb.m, %_not_clustered.exit78, %_not_clustered.exit74.thread
  %i.ce = add i32 %0, 1                           ; 3 uses
  %i.cf = load i32, ptr @db.3, align 4, !tbaa !263
  %i.cg = icmp ult i32 %i.ce, %i.cf
  br i1 %i.cg, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %_not_clustered.exit78.thread
  %i.ch = load ptr, ptr @db.1, align 8, !tbaa !261 ; 2 uses
  %i.ci = zext i32 %i.ce to i64                   ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.ci
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !264
  %.not68 = icmp eq ptr %i.ck, null
  br i1 %.not68, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cl = tail call i32 @llvm.usub.sat.i32(i32 %1, i32 1) ; 2 uses
  %i.cm = add i32 %1, 2                           ; 2 uses
  %i.cn = add nuw nsw i32 %i.cl, 1                ; 2 uses
  %i.co = load i32, ptr @db.4, align 8, !tbaa !262 ; 2 uses
  %i.cp = tail call i32 @llvm.umin.i32(i32 %i.co, i32 %i.cm)
  %i.cq = icmp ult i32 %i.cn, %i.cp
  br i1 %i.cq, label %.lr.ph100.split.preheader, label %.loopexit

.lr.ph100.split.preheader:                        ; preds = %bb.o
  %i.cr = add nsw i32 %spec.store.select, -1
  %i.cs = zext i32 %i.cn to i64
  %6 = zext i32 %i.cl to i64
  br label %.lr.ph100.split

.lr.ph100.split:                                  ; preds = %.lr.ph100.split.preheader, %_not_clustered.exit82.thread
  %i.ct = phi i32 [ %i.co, %.lr.ph100.split.preheader ], [ %i.dh, %_not_clustered.exit82.thread ] ; 3 uses
  %i.cu = phi ptr [ %i.ch, %.lr.ph100.split.preheader ], [ %i.di, %_not_clustered.exit82.thread ] ; 4 uses
  %indvars.iv104 = phi i64 [ %6, %.lr.ph100.split.preheader ], [ %indvars.iv.next111, %_not_clustered.exit82.thread ] ; 3 uses
  %indvars.iv108 = phi i64 [ %i.cs, %.lr.ph100.split.preheader ], [ %indvars.iv.next105, %_not_clustered.exit82.thread ]
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.ci
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !264 ; 2 uses
  %.not.i79 = icmp eq ptr %i.cw, null
  br i1 %.not.i79, label %_not_clustered.exit82.thread, label %bb.p

bb.p:                                             ; preds = %.lr.ph100.split
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv104 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !271
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %_not_clustered.exit82.thread, label %_not_clustered.exit82

_not_clustered.exit82:                            ; preds = %bb.p
  %i.db = load ptr, ptr @db.0, align 8, !tbaa !249
  %i.dc = load i32, ptr %i.cx, align 4, !tbaa !266
  %i.dd = zext i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [40 x i8], ptr %i.db, i64 %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 28
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !170
  %.not69 = icmp sgt i32 %i.dg, -1
  br i1 %.not69, label %_not_clustered.exit82.thread, label %bb.q

bb.q:                                             ; preds = %_not_clustered.exit82
  %7 = trunc nuw i64 %indvars.iv104 to i32
  tail call fastcc void @_add_expand_cluster(i32 noundef %i.ce, i32 noundef %7, i32 noundef %2, i32 noundef %i.cr)
  %.pre109 = load ptr, ptr @db.1, align 8, !tbaa !261
  %.pre111 = load i32, ptr @db.4, align 8, !tbaa !262
  br label %_not_clustered.exit82.thread

_not_clustered.exit82.thread:                     ; preds = %.lr.ph100.split, %bb.p, %_not_clustered.exit82, %bb.q
  %i.dh = phi i32 [ %i.ct, %.lr.ph100.split ], [ %i.ct, %bb.p ], [ %i.ct, %_not_clustered.exit82 ], [ %.pre111, %bb.q ] ; 2 uses
  %i.di = phi ptr [ %i.cu, %.lr.ph100.split ], [ %i.cu, %bb.p ], [ %i.cu, %_not_clustered.exit82 ], [ %.pre109, %bb.q ]
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv108, 1 ; 2 uses
  %i.dj = tail call i32 @llvm.umin.i32(i32 %i.dh, i32 %i.cm)
  %i.dk = zext i32 %i.dj to i64
  %i.dl = icmp samesign ult i64 %indvars.iv.next105, %i.dk
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv104, 1
  br i1 %i.dl, label %.lr.ph100.split, label %.loopexit, !llvm.loop !284

.loopexit:                                        ; preds = %_not_clustered.exit82.thread, %bb.o, %._crit_edge, %bb.n, %_not_clustered.exit78.thread
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #14

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @_view_map_draw_image(ptr nofree noundef captures(address_is_null) %0, i32 noundef range(i32 0, 2) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 304 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !132  ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i32, ptr %i.e, align 8, !tbaa !285
  %.not28 = icmp eq i32 %i.f, %2
  br i1 %.not28, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !117
  %i.i = tail call i32 @osm_gps_map_image_remove(ptr noundef %i.h, ptr noundef nonnull %i.d) #23 ; 0 uses
  store ptr null, ptr %i.c, align 8, !tbaa !132
  %.val.pre = load ptr, ptr %i.a, align 8, !tbaa !11
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.c
  %.val = phi ptr [ %.val.pre, %bb.c ], [ %i.b, %bb.a ]
  %i.j = load i32, ptr %0, align 8, !tbaa !166
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.n = load i32, ptr %i.m, align 4, !tbaa !167
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !276
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.r = load i32, ptr %i.q, align 4, !tbaa !277
  %.not30 = icmp eq i32 %i.r, 0
  %i.s = select i1 %.not30, i32 170, i32 -18
  %i.t = tail call fastcc ptr @_draw_image(i32 noundef %i.j, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, i32 noundef %i.n, i32 noundef %i.p, i32 noundef %i.s, i32 noundef %1, i32 noundef %2, ptr %.val) ; 3 uses
  %.not31 = icmp eq ptr %i.t, null
  br i1 %.not31, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %2, ptr %i.u, align 8, !tbaa !285
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !117
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load <2 x double>, ptr %i.x, align 8, !tbaa !142
  %i.z = fptrunc <2 x double> %i.y to <2 x float> ; 2 uses
  %i.aa = extractelement <2 x float> %i.z, i64 0
  %i.ab = extractelement <2 x float> %i.z, i64 1
  %i.ac = tail call ptr @osm_gps_map_image_add_with_alignment(ptr noundef %i.w, float noundef %i.aa, float noundef %i.ab, ptr noundef nonnull %i.t, float noundef 0.000000e+00, float noundef 1.000000e+00) #23
  store ptr %i.ac, ptr %i.c, align 8, !tbaa !132
  tail call void @g_object_unref(ptr noundef nonnull %i.t) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %.thread
  %.1 = phi i32 [ 1, %.thread ], [ 0, %bb.d ], [ 0, %bb.b ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_draw_image(i32 noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, i32 noundef %3, i32 noundef %4, i32 noundef range(i32 -16777063, 171) %5, i32 noundef range(i32 0, 2) %6, i32 noundef %7, ptr nofree readonly captures(none) %.304.val) unnamed_addr #1 {
bb.a:
  %8 = alloca %struct.dt_mipmap_buffer_t, align 8 ; 8 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !96
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1432
  %i.g = load double, ptr %i.f, align 8, !tbaa !97 ; 3 uses
  %i.h = fmul reassoc nsz arcp contract afn double %i.g, 1.280000e+02
  %i.i = fptosi double %i.h to i32                ; 6 uses
  %i.j = fmul reassoc nsz arcp contract afn double %i.g, 2.000000e+00
  %i.k = fptrunc reassoc nsz arcp contract afn double %i.j to float ; 5 uses
  %i.l = fmul reassoc nsz arcp contract afn double %i.g, 1.300000e+01
  %i.m = fptrunc reassoc nsz arcp contract afn double %i.l to float ; 4 uses
  switch i32 %7, label %.thread.thread [
    i32 0, label %bb.b
    i32 1, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  %i.n = tail call i32 @dt_mipmap_cache_get_matching_size(i32 noundef %i.i, i32 noundef %i.i) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %.not124 = icmp eq i32 %6, 0
  %i.o = select i1 %.not124, i32 0, i32 3
  call void @dt_mipmap_cache_get_with_caller(ptr noundef nonnull %8, i32 noundef %0, i32 noundef %i.n, i32 noundef %i.o, i8 noundef signext 114, ptr noundef nonnull @.str.27, i32 noundef 1249) #23
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !286
  %i.r = icmp ne ptr %i.q, null
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.t = load i32, ptr %i.s, align 8              ; 3 uses
  %i.u = icmp sgt i32 %i.t, 0
  %or.cond = select i1 %i.r, i1 %i.u, i1 false
  br i1 %or.cond, label %.preheader, label %.thread16

.preheader:                                       ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  %i.w = zext nneg i32 %i.t to i64
  %i.x = shl nuw nsw i64 %i.w, 2
  %i.y = load i32, ptr %i.v, align 4, !tbaa !289  ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = mul i64 %i.x, %i.z
  %.not28 = icmp eq i64 %i.aa, 0
  br i1 %.not28, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.lcssa25 = phi i32 [ %i.t, %.preheader ], [ %i.ae, %.lr.ph ] ; 5 uses
  %.lcssa = phi i32 [ %i.y, %.preheader ], [ %i.ah, %.lr.ph ] ; 4 uses
  %i.ab = icmp slt i32 %.lcssa25, %.lcssa
  br i1 %i.ab, label %bb.c, label %bb.d

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 3, %.preheader ] ; 2 uses
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !286
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %indvars.iv
  store i8 -1, ptr %i.ad, align 1, !tbaa !115
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.ae = load i32, ptr %i.s, align 8, !tbaa !290 ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = shl nsw i64 %i.af, 2
  %i.ah = load i32, ptr %i.v, align 4, !tbaa !289 ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = mul i64 %i.ag, %i.ai
  %i.ak = icmp ugt i64 %i.aj, %indvars.iv.next
  br i1 %i.ak, label %.lr.ph, label %._crit_edge

bb.c:                                             ; preds = %._crit_edge
  %i.al = mul nsw i32 %.lcssa25, %i.i
  %i.am = sdiv i32 %i.al, %.lcssa
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.an = mul nsw i32 %.lcssa, %i.i
  %i.ao = sdiv i32 %i.an, %.lcssa25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.090 = phi i32 [ %i.am, %bb.c ], [ %i.i, %bb.d ] ; 4 uses
  %.089 = phi i32 [ %i.i, %bb.c ], [ %i.ao, %bb.d ] ; 4 uses
  %i.ap = load ptr, ptr %i.p, align 8, !tbaa !286
  %i.aq = shl nsw i32 %.lcssa25, 2
  %i.ar = call ptr @gdk_pixbuf_new_from_data(ptr noundef %i.ap, i32 noundef 0, i32 noundef 1, i32 noundef 8, i32 noundef %.lcssa25, i32 noundef %.lcssa, i32 noundef %i.aq, ptr noundef null, ptr noundef null) #23 ; 3 uses
  call void @dt_mipmap_cache_release_with_caller(ptr noundef nonnull %8, ptr noundef nonnull @.str.27, i32 noundef 1268) #23
  %.not125 = icmp eq ptr %i.ar, null
  br i1 %.not125, label %.thread16, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = sitofp reassoc nsz arcp contract afn i32 %.090 to float
  %i.at = fmul reassoc nsz arcp contract afn float %i.k, 2.000000e+00 ; 2 uses
  %i.au = fadd reassoc nsz arcp contract afn float %i.at, %i.as
  %i.av = fptosi float %i.au to i32               ; 2 uses
  %i.aw = sitofp reassoc nsz arcp contract afn i32 %.089 to float
  %i.ax = fadd reassoc nsz arcp contract afn float %i.at, %i.aw ; 2 uses
  %i.ay = fadd reassoc nsz arcp contract afn float %i.ax, %i.m
  %i.az = fptosi float %i.ay to i32
  %i.ba = call ptr @gdk_pixbuf_new(i32 noundef 0, i32 noundef 1, i32 noundef 8, i32 noundef %i.av, i32 noundef %i.az) #23 ; 6 uses
  %.not126 = icmp eq ptr %i.ba, null
  br i1 %.not126, label %bb.t, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @gdk_pixbuf_fill(ptr noundef nonnull %i.ba, i32 noundef %5) #23
  %i.bb = fptosi float %i.k to i32                ; 3 uses
  %i.bc = fpext reassoc nsz arcp contract afn float %i.k to double ; 3 uses
  %i.bd = sitofp reassoc nsz arcp contract afn i32 %.090 to double
  %i.be = sitofp reassoc nsz arcp contract afn i32 %.089 to double ; 2 uses
  %i.bf = load <2 x i32>, ptr %i.s, align 8, !tbaa !135
  %i.bg = sitofp <2 x i32> %i.bf to <2 x double>
  %i.bh = insertelement <2 x double> poison, double %i.bd, i64 0
  %i.bi = insertelement <2 x double> %i.bh, double %i.be, i64 1
  %i.bj = fdiv reassoc nsz arcp contract afn <2 x double> %i.bi, %i.bg ; 2 uses
  %i.bk = extractelement <2 x double> %i.bj, i64 0
  %i.bl = extractelement <2 x double> %i.bj, i64 1
  call void @gdk_pixbuf_scale(ptr noundef nonnull %i.ar, ptr noundef nonnull %i.ba, i32 noundef %i.bb, i32 noundef %i.bb, i32 noundef %.090, i32 noundef %.089, double noundef %i.bc, double noundef %i.bc, double noundef %i.bk, double noundef %i.bl, i32 noundef 3) #23
  %i.bm = getelementptr inbounds nuw i8, ptr %.304.val, i64 56
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !104
  %i.bo = fptosi float %i.m to i32
  %i.bp = fptosi float %i.ax to i32
  call void @gdk_pixbuf_copy_area(ptr noundef %i.bn, i32 noundef 0, i32 noundef 0, i32 noundef %i.av, i32 noundef %i.bo, ptr noundef nonnull %i.ba, i32 noundef 0, i32 noundef %i.bp) #23
  %.not127 = icmp eq i32 %3, 0
  br i1 %.not127, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.bq = call fastcc ptr @_view_map_images_count(i32 noundef %3, i32 noundef %4, ptr noundef %i.b, ptr noundef %i.a) ; 2 uses
  %i.br = load double, ptr %i.b, align 8, !tbaa !142
  %i.bs = fptosi double %i.br to i32
  %i.bt = load double, ptr %i.a, align 8, !tbaa !142 ; 2 uses
end_hunk_0

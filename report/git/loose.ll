inline.NumInlined: 48
inline.NumDeleted: 21
begin_hunk_0_@repo_loose_object_map_oid:bb.a

kh_get_oid_map.exit:                              ; preds = %bb.d, %.critedge.i
  %.1.i = phi i32 [ %spec.select.i, %.critedge.i ], [ 0, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.aw = icmp ult i32 %.1.i, %i.n
  br i1 %i.aw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %kh_get_oid_map.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !86
  %i.az = zext i32 %.1.i to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !87 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %3, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.bb, i64 32, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !98
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !98
  br label %.loopexit

bb.j:                                             ; preds = %odb_source_files_downcast.exit, %kh_get_oid_map.exit, %kh_get_oid_map.exit.thread
  %.019 = load ptr, ptr %.01935, align 8, !tbaa !47 ; 2 uses
  %.not = icmp eq ptr %.019, null
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !100

.loopexit:                                        ; preds = %bb.j, %bb.a, %bb.i
  %.2 = phi i32 [ 0, %bb.i ], [ -1, %bb.a ], [ -1, %bb.j ]
  ret i32 %.2
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @loose_object_map_clear(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17     ; 6 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.f, label %.preheader31

.preheader31:                                     ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !81   ; 2 uses
  %.not2532 = icmp eq i32 %i.c, 0
  br i1 %.not2532, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %bb.c, %.preheader31
  %i.d = phi ptr [ %i.b, %.preheader31 ], [ %i.z, %bb.c ]
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16   ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !81   ; 2 uses
  %.not2634 = icmp eq i32 %i.g, 0
  br i1 %.not2634, label %kh_destroy_oid_map.exit, label %.lr.ph36

.lr.ph:                                           ; preds = %.preheader31, %bb.c
  %i.h = phi i32 [ %i.y, %bb.c ], [ %i.c, %.preheader31 ]
  %i.i = phi ptr [ %i.z, %bb.c ], [ %i.b, %.preheader31 ] ; 3 uses
  %.02333 = phi i32 [ %i.aa, %bb.c ], [ 0, %.preheader31 ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !84
  %i.l = lshr i32 %.02333, 4
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !67
  %i.p = shl i32 %.02333, 1
  %i.q = and i32 %i.p, 30
  %i.r = shl nuw i32 3, %i.q
  %i.s = and i32 %i.o, %i.r
  %.not28 = icmp eq i32 %i.s, 0
  br i1 %.not28, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !86
  %i.v = zext i32 %.02333 to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !87
  tail call void @free(ptr noundef %i.x) #14
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !12  ; 2 uses
  %.pre37 = load i32, ptr %.pre, align 8, !tbaa !81
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
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !84
  %i.af = lshr i32 %.035, 4
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !67
  %i.aj = shl i32 %.035, 1
  %i.ak = and i32 %i.aj, 30
  %i.al = shl nuw i32 3, %i.ak
  %i.am = and i32 %i.ai, %i.al
  %.not27 = icmp eq i32 %i.am, 0
  br i1 %.not27, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph36
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !86
  %i.ap = zext i32 %.035 to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !87
  tail call void @free(ptr noundef %i.ar) #14
  %.pre38 = load ptr, ptr %i.e, align 8, !tbaa !16 ; 2 uses
  %.pre39 = load i32, ptr %.pre38, align 8, !tbaa !81
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph36, %bb.d
  %i.as = phi i32 [ %i.ab, %.lr.ph36 ], [ %.pre39, %bb.d ] ; 2 uses
  %i.at = phi ptr [ %i.ac, %.lr.ph36 ], [ %.pre38, %bb.d ] ; 2 uses
  %i.au = add i32 %.035, 1                        ; 2 uses
  %.not26 = icmp eq i32 %i.au, %i.as
  br i1 %.not26, label %._crit_edge, label %.lr.ph36, !llvm.loop !102

._crit_edge:                                      ; preds = %bb.e
  %.pre40 = load ptr, ptr %i.a, align 8, !tbaa !12 ; 2 uses
  %.not.i = icmp eq ptr %.pre40, null
  br i1 %.not.i, label %kh_destroy_oid_map.exit.thread, label %kh_destroy_oid_map.exit

kh_destroy_oid_map.exit:                          ; preds = %.preheader, %._crit_edge
  %i.av = phi ptr [ %.pre40, %._crit_edge ], [ %i.d, %.preheader ] ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !84
  tail call void @free(ptr noundef %i.ax) #14
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !85
  tail call void @free(ptr noundef %i.az) #14
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !86
  tail call void @free(ptr noundef %i.bb) #14
  tail call void @free(ptr noundef nonnull %i.av) #14
  %.pre41 = load ptr, ptr %i.e, align 8, !tbaa !16 ; 2 uses
  %.not.i29 = icmp eq ptr %.pre41, null
  br i1 %.not.i29, label %kh_destroy_oid_map.exit30, label %kh_destroy_oid_map.exit.thread

kh_destroy_oid_map.exit.thread:                   ; preds = %._crit_edge, %kh_destroy_oid_map.exit
  %i.bc = phi ptr [ %.pre41, %kh_destroy_oid_map.exit ], [ %i.at, %._crit_edge ] ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !84
  tail call void @free(ptr noundef %i.be) #14
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !85
  tail call void @free(ptr noundef %i.bg) #14
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !86
  tail call void @free(ptr noundef %i.bi) #14
  tail call void @free(ptr noundef nonnull %i.bc) #14
  br label %kh_destroy_oid_map.exit30

kh_destroy_oid_map.exit30:                        ; preds = %kh_destroy_oid_map.exit, %kh_destroy_oid_map.exit.thread
  tail call void @free(ptr noundef nonnull %i.a) #14
  store ptr null, ptr %0, align 8, !tbaa !17
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
  %i.b = load i32, ptr %i.a, align 8, !tbaa !103
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !104
  %.not.i = icmp ult i32 %i.b, %i.d
  %.pre = load i32, ptr %0, align 8, !tbaa !81    ; 4 uses
  br i1 %.not.i, label %kh_resize_oid_map.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !105  ; 2 uses
  %i.g = shl i32 %i.f, 1
  %i.h = icmp ugt i32 %.pre, %i.g
  %..i = select i1 %i.h, i32 -1, i32 1
  %i.i = add i32 %.pre, -1
  %i.j = add i32 %i.i, %..i                       ; 2 uses
  %i.k = lshr i32 %i.j, 1
  %i.l = or i32 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i32 %i.l, 2
  %i.n = or i32 %i.m, %i.l                        ; 2 uses
  %i.o = lshr i32 %i.n, 4
  %i.p = or i32 %i.o, %i.n                        ; 2 uses
  %i.q = lshr i32 %i.p, 8
  %i.r = or i32 %i.q, %i.p                        ; 2 uses
  %i.s = lshr i32 %i.r, 16
  %i.t = or i32 %i.s, %i.r
  %i.u = add i32 %i.t, 1                          ; 2 uses
  %spec.store.select.i = tail call i32 @llvm.umax.i32(i32 %i.u, i32 4) ; 9 uses
  %i.v = uitofp i32 %spec.store.select.i to double
  %i.w = tail call double @llvm.fmuladd.f64(double %i.v, double 7.700000e-01, double 5.000000e-01)
  %i.x = fptoui double %i.w to i32                ; 2 uses
  %.not.not.i = icmp ult i32 %i.f, %i.x
  br i1 %.not.not.i, label %bb.b, label %kh_resize_oid_map.exit

bb.b:                                             ; preds = %.sink.split.i
  %i.y = icmp ult i32 %i.u, 16
  %i.z = lshr i32 %spec.store.select.i, 2
  %i.aa = and i32 %i.z, 1073741820
  %i.ab = select i1 %i.y, i32 4, i32 %i.aa
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = tail call ptr @xmalloc(i64 noundef %i.ac) #14 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ad, i8 -86, i64 %i.ac, i1 false)
  %i.ae = load i32, ptr %0, align 8, !tbaa !81    ; 2 uses
  %i.af = icmp ult i32 %i.ae, %spec.store.select.i
  br i1 %i.af, label %bb.c, label %.lr.ph131.i

bb.c:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !85
  %i.ai = zext i32 %spec.store.select.i to i64    ; 2 uses
  %i.aj = mul nuw nsw i64 %i.ai, 36
  %i.ak = tail call ptr @xrealloc(ptr noundef %i.ah, i64 noundef %i.aj) #14
  store ptr %i.ak, ptr %i.ag, align 8, !tbaa !85
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !86
  %i.an = shl nuw nsw i64 %i.ai, 3
  %i.ao = tail call ptr @xrealloc(ptr noundef %i.am, i64 noundef %i.an) #14
  store ptr %i.ao, ptr %i.al, align 8, !tbaa !86
  %.pre.i9 = load i32, ptr %0, align 8, !tbaa !81 ; 2 uses
  %.not128.i = icmp eq i32 %.pre.i9, 0
  br i1 %.not128.i, label %._crit_edge132.thread.i, label %.lr.ph131.i

.lr.ph131.i:                                      ; preds = %bb.c, %bb.b
  %i.ap = phi i32 [ %.pre.i9, %bb.c ], [ %i.ae, %bb.b ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.as = add i32 %spec.store.select.i, -1        ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.i, %.lr.ph131.i
  %i.au = phi i32 [ %i.ap, %.lr.ph131.i ], [ %i.df, %bb.i ]
  %.1129.i = phi i32 [ 0, %.lr.ph131.i ], [ %i.dg, %bb.i ] ; 4 uses
  %i.av = load ptr, ptr %i.aq, align 8, !tbaa !84 ; 2 uses
  %i.aw = lshr i32 %.1129.i, 4
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.ax ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !67 ; 2 uses
  %i.ba = shl i32 %.1129.i, 1
  %i.bb = and i32 %i.ba, 30                       ; 2 uses
  %i.bc = shl nuw i32 3, %i.bb
  %i.bd = and i32 %i.bc, %i.az
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  %i.bf = load ptr, ptr %i.ar, align 8, !tbaa !85
  %i.bg = zext i32 %.1129.i to i64                ; 2 uses
  %i.bh = getelementptr inbounds nuw [36 x i8], ptr %i.bf, i64 %i.bg ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.bh, align 4
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.7.i, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.7.0..sroa_idx.i, i64 32, i1 false), !tbaa.struct !106
  %i.bi = load ptr, ptr %i.at, align 8, !tbaa !86
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bg
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !87
  %i.bl = shl nuw nsw i32 1, %i.bb
  %i.bm = or i32 %i.bl, %i.az
  store i32 %i.bm, ptr %i.ay, align 4, !tbaa !67
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %i.bn = phi ptr [ %i.av, %bb.e ], [ %i.cw, %bb.h ]
  %.sroa.0.0.i = phi i32 [ %.sroa.0.0.copyload.i, %bb.e ], [ %.sroa.0109.0.copyload.i, %bb.h ] ; 3 uses
  %.098.i = phi ptr [ %i.bk, %bb.e ], [ %i.cu, %bb.h ] ; 2 uses
  %.095119.i = and i32 %.sroa.0.0.i, %i.as        ; 4 uses
  %i.bo = lshr i32 %.095119.i, 4
  %i.bp = zext nneg i32 %i.bo to i64              ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !67 ; 2 uses
  %i.bs = shl i32 %.095119.i, 1
  %i.bt = and i32 %i.bs, 30                       ; 2 uses
  %i.bu = shl nuw i32 2, %i.bt                    ; 2 uses
  %i.bv = and i32 %i.bu, %i.br
  %.not102120.i = icmp eq i32 %i.bv, 0
  br i1 %.not102120.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %.095122.i = phi i32 [ %.095.i, %.lr.ph.i ], [ %.095119.i, %bb.f ]
  %.094121.i = phi i32 [ %i.bw, %.lr.ph.i ], [ 0, %bb.f ]
  %i.bw = add i32 %.094121.i, 1                   ; 2 uses
  %i.bx = add i32 %i.bw, %.095122.i
  %.095.i = and i32 %i.bx, %i.as                  ; 4 uses
  %i.by = lshr i32 %.095.i, 4
  %i.bz = zext nneg i32 %i.by to i64              ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !67 ; 2 uses
  %i.cc = shl i32 %.095.i, 1
  %i.cd = and i32 %i.cc, 30                       ; 2 uses
  %i.ce = shl nuw i32 2, %i.cd                    ; 2 uses
  %i.cf = and i32 %i.ce, %i.cb
  %.not102.i = icmp eq i32 %i.cf, 0
  br i1 %.not102.i, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !107

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.lcssa118.i = phi i64 [ %i.bp, %bb.f ], [ %i.bz, %.lr.ph.i ] ; 3 uses
  %.095.lcssa.i = phi i32 [ %.095119.i, %bb.f ], [ %.095.i, %.lr.ph.i ] ; 3 uses
  %.lcssa114.i = phi i32 [ %i.br, %bb.f ], [ %i.cb, %.lr.ph.i ]
  %.lcssa113.i = phi i32 [ %i.bt, %bb.f ], [ %i.cd, %.lr.ph.i ] ; 2 uses
  %.lcssa.i = phi i32 [ %i.bu, %bb.f ], [ %i.ce, %.lr.ph.i ]
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.lcssa118.i
  %i.ch = xor i32 %.lcssa.i, -1
  %i.ci = and i32 %.lcssa114.i, %i.ch
  store i32 %i.ci, ptr %i.cg, align 4, !tbaa !67
  %i.cj = load i32, ptr %0, align 8, !tbaa !81
  %i.ck = icmp ult i32 %.095.lcssa.i, %i.cj
  br i1 %i.ck, label %bb.g, label %._crit_edge._crit_edge.i

._crit_edge._crit_edge.i:                         ; preds = %._crit_edge.i
  %.pre140.i = load ptr, ptr %i.ar, align 8, !tbaa !85
  br label %split.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.lcssa118.i
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !67
  %i.cn = shl nuw i32 3, %.lcssa113.i
  %i.co = and i32 %i.cm, %i.cn
  %i.cp = icmp eq i32 %i.co, 0
  %.pre141.i = load ptr, ptr %i.ar, align 8, !tbaa !85 ; 2 uses
  br i1 %i.cp, label %bb.h, label %split.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  %i.cq = zext i32 %.095.lcssa.i to i64           ; 2 uses
  %i.cr = getelementptr inbounds nuw [36 x i8], ptr %.pre141.i, i64 %i.cq ; 3 uses
  %.sroa.0109.0.copyload.i = load i32, ptr %i.cr, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.4.i, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.4.0..sroa_idx.i, i64 32, i1 false), !tbaa.struct !106
  store i32 %.sroa.0.0.i, ptr %i.cr, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.7.i, i64 32, i1 false), !tbaa.struct !106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.7.i, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.4.i, i64 32, i1 false), !tbaa.struct !106
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  %i.cs = load ptr, ptr %i.at, align 8, !tbaa !86
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cq ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !87
  store ptr %.098.i, ptr %i.ct, align 8, !tbaa !87
  %i.cv = shl nuw nsw i32 1, %.lcssa113.i
  %i.cw = load ptr, ptr %i.aq, align 8, !tbaa !84 ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %.lcssa118.i ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !67
  %i.cz = or i32 %i.cy, %i.cv
  store i32 %i.cz, ptr %i.cx, align 4, !tbaa !67
  br label %bb.f

split.i:                                          ; preds = %bb.g, %._crit_edge._crit_edge.i
  %i.da = phi ptr [ %.pre140.i, %._crit_edge._crit_edge.i ], [ %.pre141.i, %bb.g ]
  %i.db = zext i32 %.095.lcssa.i to i64           ; 2 uses
  %i.dc = getelementptr inbounds nuw [36 x i8], ptr %i.da, i64 %i.db ; 2 uses
  store i32 %.sroa.0.0.i, ptr %i.dc, align 4
  %.sroa.7.0..sroa_idx108.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.7.0..sroa_idx108.i, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.7.i, i64 32, i1 false), !tbaa.struct !106
  %i.dd = load ptr, ptr %i.at, align 8, !tbaa !86
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.db
  store ptr %.098.i, ptr %i.de, align 8, !tbaa !87
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  %.pre142.i = load i32, ptr %0, align 8, !tbaa !81
  br label %bb.i

bb.i:                                             ; preds = %split.i, %bb.d
  %i.df = phi i32 [ %i.au, %bb.d ], [ %.pre142.i, %split.i ] ; 3 uses
  %i.dg = add i32 %.1129.i, 1                     ; 2 uses
  %.not.i8 = icmp eq i32 %i.dg, %i.df
  br i1 %.not.i8, label %._crit_edge132.i, label %bb.d, !llvm.loop !108

._crit_edge132.i:                                 ; preds = %bb.i
  %i.dh = icmp ugt i32 %i.df, %spec.store.select.i
  br i1 %i.dh, label %bb.j, label %._crit_edge132.thread.i

bb.j:                                             ; preds = %._crit_edge132.i
  %i.di = load ptr, ptr %i.ar, align 8, !tbaa !85
  %i.dj = zext i32 %spec.store.select.i to i64    ; 2 uses
  %i.dk = mul nuw nsw i64 %i.dj, 36
  %i.dl = tail call ptr @xrealloc(ptr noundef %i.di, i64 noundef %i.dk) #14
  store ptr %i.dl, ptr %i.ar, align 8, !tbaa !85
  %i.dm = load ptr, ptr %i.at, align 8, !tbaa !86
  %i.dn = shl nuw nsw i64 %i.dj, 3
  %i.do = tail call ptr @xrealloc(ptr noundef %i.dm, i64 noundef %i.dn) #14
  store ptr %i.do, ptr %i.at, align 8, !tbaa !86
  br label %._crit_edge132.thread.i

._crit_edge132.thread.i:                          ; preds = %bb.j, %._crit_edge132.i, %bb.c
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !84
  tail call void @free(ptr noundef %i.dq) #14
  store ptr %i.ad, ptr %i.dp, align 8, !tbaa !84
  store i32 %spec.store.select.i, ptr %0, align 8, !tbaa !81
  %i.dr = load i32, ptr %i.e, align 4, !tbaa !105
  store i32 %i.dr, ptr %i.a, align 8, !tbaa !103
  store i32 %i.x, ptr %i.c, align 4, !tbaa !104
  br label %kh_resize_oid_map.exit

kh_resize_oid_map.exit:                           ; preds = %._crit_edge132.thread.i, %.sink.split.i, %bb.a
  %i.ds = phi i32 [ %spec.store.select.i, %._crit_edge132.thread.i ], [ %.pre, %.sink.split.i ], [ %.pre, %bb.a ] ; 5 uses
  %i.dt = add i32 %i.ds, -1                       ; 2 uses
  %.val.i = load i32, ptr %4, align 8
  %i.du = and i32 %.val.i, %i.dt                  ; 6 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !84 ; 3 uses
  %i.dx = lshr i32 %i.du, 4
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.dy
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !67
  %i.eb = shl i32 %i.du, 1
  %i.ec = and i32 %i.eb, 30
  %i.ed = shl nuw i32 2, %i.ec
  %i.ee = and i32 %i.ed, %i.ea
  %.not78.i = icmp eq i32 %i.ee, 0
  br i1 %.not78.i, label %.preheader.i, label %bb.n

.preheader.i:                                     ; preds = %kh_resize_oid_map.exit
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.k

bb.k:                                             ; preds = %.critedge2.i, %.preheader.i
  %.071.i = phi i32 [ %spec.select.i, %.critedge2.i ], [ %i.ds, %.preheader.i ] ; 2 uses
  %.069.i = phi i32 [ %i.fh, %.critedge2.i ], [ %i.du, %.preheader.i ] ; 6 uses
  %.0.i = phi i32 [ %i.ff, %.critedge2.i ], [ 0, %.preheader.i ]
  %i.eg = lshr i32 %.069.i, 4
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !67 ; 3 uses
  %i.ek = shl i32 %.069.i, 1
  %i.el = and i32 %i.ek, 30                       ; 3 uses
  %i.em = lshr i32 %i.ej, %i.el                   ; 2 uses
  %i.en = and i32 %i.em, 2
  %.not79.i = icmp eq i32 %i.en, 0
  br i1 %.not79.i, label %bb.l, label %.critedge.thread.loopexit.i

bb.l:                                             ; preds = %bb.k
  %i.eo = and i32 %i.em, 1
  %.not80.i = icmp eq i32 %i.eo, 0
  br i1 %.not80.i, label %bb.m, label %.critedge2.i

bb.m:                                             ; preds = %bb.l
  %i.ep = load ptr, ptr %i.ef, align 8, !tbaa !85
  %i.eq = zext i32 %.069.i to i64
  %i.er = getelementptr inbounds nuw [36 x i8], ptr %i.ep, i64 %i.eq
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 4 dereferenceable(36) %i.er, i64 36, i1 false), !tbaa.struct !96
  %i.es = load i128, ptr %3, align 8
  %i.et = load i128, ptr %4, align 8
  %i.eu = xor i128 %i.es, %i.et
  %i.ev = getelementptr i8, ptr %3, i64 16
  %i.ew = getelementptr i8, ptr %4, i64 16
  %i.ex = load i128, ptr %i.ev, align 8
  %i.ey = load i128, ptr %i.ew, align 8
  %i.ez = xor i128 %i.ex, %i.ey
  %i.fa = or i128 %i.eu, %i.ez
  %i.fb = icmp ne i128 %i.fa, 0
  %i.fc = zext i1 %i.fb to i32
  %.not.i.i.not.i = icmp eq i32 %i.fc, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br i1 %.not.i.i.not.i, label %.critedge.thread.loopexit.i, label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.m, %bb.l
  %i.fd = shl nuw nsw i32 1, %i.el
  %i.fe = and i32 %i.fd, %i.ej
  %.not82.i = icmp eq i32 %i.fe, 0
  %spec.select.i = select i1 %.not82.i, i32 %.071.i, i32 %.069.i ; 3 uses
  %i.ff = add i32 %.0.i, 1                        ; 2 uses
  %i.fg = add i32 %i.ff, %.069.i
  %i.fh = and i32 %i.fg, %i.dt                    ; 2 uses
  %i.fi = icmp eq i32 %i.fh, %i.du
  br i1 %i.fi, label %.critedge.i, label %bb.k, !llvm.loop !109

.critedge.i:                                      ; preds = %.critedge2.i
  %i.fj = icmp eq i32 %spec.select.i, %i.ds
  br i1 %i.fj, label %.critedge.thread.i, label %bb.n

.critedge.thread.loopexit.i:                      ; preds = %bb.m, %bb.k
  %.pre.i = shl nuw i32 2, %i.el
  %.pre101.i = and i32 %.pre.i, %i.ej
  %i.fk = icmp eq i32 %.pre101.i, 0
  br label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %.critedge.thread.loopexit.i, %.critedge.i
  %.pre-phi102.i = phi i1 [ %i.fk, %.critedge.thread.loopexit.i ], [ true, %.critedge.i ]
  %.17092.i = phi i32 [ %.069.i, %.critedge.thread.loopexit.i ], [ %i.du, %.critedge.i ]
  %.291.i = phi i32 [ %.071.i, %.critedge.thread.loopexit.i ], [ %i.ds, %.critedge.i ] ; 2 uses
  %.not84.i = icmp eq i32 %.291.i, %i.ds
  %or.cond.i = select i1 %.pre-phi102.i, i1 true, i1 %.not84.i
  %spec.select87.i = select i1 %or.cond.i, i32 %.17092.i, i32 %.291.i
  br label %bb.n

bb.n:                                             ; preds = %.critedge.thread.i, %.critedge.i, %kh_resize_oid_map.exit
  %.1.i = phi i32 [ %spec.select.i, %.critedge.i ], [ %i.du, %kh_resize_oid_map.exit ], [ %spec.select87.i, %.critedge.thread.i ] ; 4 uses
  %i.fl = lshr i32 %.1.i, 4
  %i.fm = zext nneg i32 %i.fl to i64              ; 3 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.fm
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !67
  %i.fp = shl i32 %.1.i, 1
  %i.fq = and i32 %i.fp, 30                       ; 3 uses
  %i.fr = lshr i32 %i.fo, %i.fq                   ; 2 uses
  %i.fs = and i32 %i.fr, 2
  %.not85.i = icmp eq i32 %i.fs, 0
  br i1 %.not85.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !85
  %i.fv = zext i32 %.1.i to i64                   ; 2 uses
  %i.fw = getelementptr inbounds nuw [36 x i8], ptr %i.fu, i64 %i.fv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.fw, ptr noundef nonnull readonly align 8 dereferenceable(36) %4, i64 36, i1 false), !tbaa.struct !96
  %i.fx = shl nuw i32 3, %i.fq
  %i.fy = xor i32 %i.fx, -1
  %i.fz = load ptr, ptr %i.dv, align 8, !tbaa !84
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %i.fm ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !67
  %i.gc = and i32 %i.gb, %i.fy
  store i32 %i.gc, ptr %i.ga, align 4, !tbaa !67
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ge = load <2 x i32>, ptr %i.gd, align 4, !tbaa !67
  %i.gf = add <2 x i32> %i.ge, splat (i32 1)
  store <2 x i32> %i.gf, ptr %i.gd, align 4, !tbaa !67
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.gg = and i32 %i.fr, 1
  %.not86.i = icmp eq i32 %i.gg, 0
  br i1 %.not86.i, label %kh_put_oid_map.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !85
  %i.gj = zext i32 %.1.i to i64                   ; 2 uses
  %i.gk = getelementptr inbounds nuw [36 x i8], ptr %i.gi, i64 %i.gj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.gk, ptr noundef nonnull readonly align 8 dereferenceable(36) %4, i64 36, i1 false), !tbaa.struct !96
  %i.gl = shl nuw i32 3, %i.fq
  %i.gm = xor i32 %i.gl, -1
  %i.gn = load ptr, ptr %i.dv, align 8, !tbaa !84
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %i.fm ; 2 uses
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !67
  %i.gq = and i32 %i.gp, %i.gm
  store i32 %i.gq, ptr %i.go, align 4, !tbaa !67
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !105
  %i.gt = add i32 %i.gs, 1
  store i32 %i.gt, ptr %i.gr, align 4, !tbaa !105
  br label %bb.r

kh_put_oid_map.exit:                              ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.o
  %.pre-phi = phi i64 [ %i.gj, %bb.q ], [ %i.fv, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.gu = tail call ptr @xmalloc(i64 noundef 36) #14 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.gu, ptr noundef nonnull readonly align 4 dereferenceable(32) %2, i64 32, i1 false)
  %i.gv = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !98
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gu, i64 32
  store i32 %i.gw, ptr %i.gx, align 4, !tbaa !98
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !86
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %.pre-phi
  store ptr %i.gu, ptr %i.ha, align 8, !tbaa !87
  br label %bb.s

bb.s:                                             ; preds = %kh_put_oid_map.exit, %bb.r
  %.0 = phi i32 [ 1, %bb.r ], [ 0, %kh_put_oid_map.exit ]
  ret i32 %.0
}

declare void @oidtree_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare noundef i32 @open64(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @fstat64(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #13

declare i32 @close(i32 noundef) local_unnamed_addr #2

declare i32 @adjust_shared_perm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind willreturn memory(none) }
attributes #17 = { nounwind willreturn memory(read) }

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
!12 = !{!13, !14, i64 0}
!13 = !{!"loose_object_map", !14, i64 0, !14, i64 8}
!14 = !{!"p1 _ZTS10kh_oid_map", !15, i64 0}
!15 = !{!"any pointer", !10, i64 0}
!16 = !{!13, !14, i64 8}
!17 = !{!18, !18, i64 0}
!18 = !{!"p1 _ZTS16loose_object_map", !15, i64 0}
!19 = !{!20, !39, i64 456}
!20 = !{!"repository", !21, i64 0, !21, i64 8, !22, i64 16, !23, i64 24, !24, i64 32, !25, i64 40, !26, i64 48, !26, i64 112, !31, i64 176, !21, i64 232, !21, i64 240, !21, i64 248, !25, i64 256, !25, i64 257, !21, i64 264, !32, i64 272, !35, i64 416, !36, i64 424, !37, i64 432, !38, i64 440, !39, i64 448, !39, i64 456, !40, i64 464, !9, i64 512, !21, i64 520, !9, i64 528, !9, i64 532, !41, i64 536, !9, i64 544, !26, i64 552, !42, i64 616, !21, i64 656, !44, i64 664, !9, i64 672, !9, i64 676, !9, i64 680, !9, i64 684, !9, i64 688, !25, i64 689, !25, i64 690}
!21 = !{!"p1 omnipotent char", !15, i64 0}
!22 = !{!"p1 _ZTS15object_database", !15, i64 0}
!23 = !{!"p1 _ZTS18parsed_object_pool", !15, i64 0}
!24 = !{!"p1 _ZTS9ref_store", !15, i64 0}
!25 = !{!"_Bool", !10, i64 0}
!26 = !{!"strmap", !27, i64 0, !30, i64 48, !9, i64 56}
!27 = !{!"hashmap", !28, i64 0, !15, i64 8, !15, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40}
!28 = !{!"p2 _ZTS13hashmap_entry", !29, i64 0}
!29 = !{!"any p2 pointer", !15, i64 0}
!30 = !{!"p1 _ZTS8mem_pool", !15, i64 0}
!31 = !{!"repo_path_cache", !21, i64 0, !21, i64 8, !21, i64 16, !21, i64 24, !21, i64 32, !21, i64 40, !21, i64 48}
!32 = !{!"repo_settings", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !33, i64 56, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80, !9, i64 84, !9, i64 88, !9, i64 92, !34, i64 96, !34, i64 104, !34, i64 112, !34, i64 120, !9, i64 128, !21, i64 136}
!33 = !{!"p1 _ZTS18fsmonitor_settings", !15, i64 0}
!34 = !{!"long", !10, i64 0}
!35 = !{!"p1 _ZTS10config_set", !15, i64 0}
!36 = !{!"p1 _ZTS15submodule_cache", !15, i64 0}
!37 = !{!"p1 _ZTS11index_state", !15, i64 0}
!38 = !{!"p1 _ZTS12remote_state", !15, i64 0}
!39 = !{!"p1 _ZTS13git_hash_algo", !15, i64 0}
!40 = !{!"repo_config_values", !21, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44}
!41 = !{!"p1 _ZTS6strmap", !15, i64 0}
!42 = !{!"string_list", !43, i64 0, !34, i64 8, !34, i64 16, !9, i64 24, !15, i64 32}
!43 = !{!"p1 _ZTS16string_list_item", !15, i64 0}
!44 = !{!"p1 _ZTS22promisor_remote_config", !15, i64 0}
!45 = !{!20, !21, i64 0}
!46 = !{!20, !22, i64 16}
!47 = !{!48, !48, i64 0}
!48 = !{!"p1 _ZTS10odb_source", !15, i64 0}
!49 = !{!50, !9, i64 16}
!50 = !{!"odb_source", !48, i64 0, !22, i64 8, !9, i64 16, !25, i64 20, !9, i64 24, !21, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !15, i64 128, !15, i64 136, !15, i64 144}
!51 = !{!52, !53, i64 152}
!52 = !{!"odb_source_files", !50, i64 0, !53, i64 152, !54, i64 160}
!53 = !{!"p1 _ZTS16odb_source_loose", !15, i64 0}
!54 = !{!"p1 _ZTS14packfile_store", !15, i64 0}
!55 = !{!56, !18, i64 192}
!56 = !{!"odb_source_loose", !50, i64 0, !10, i64 152, !57, i64 184, !18, i64 192}
!57 = !{!"p1 _ZTS7oidtree", !15, i64 0}
!58 = !{!56, !57, i64 184}
!59 = !{!20, !39, i64 448}
!60 = !{!61, !62, i64 80}
!61 = !{!"git_hash_algo", !21, i64 0, !9, i64 8, !34, i64 16, !34, i64 24, !34, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !62, i64 80, !62, i64 88, !62, i64 96, !39, i64 104}
!62 = !{!"p1 _ZTS9object_id", !15, i64 0}
!63 = !{!61, !62, i64 88}
!64 = !{!61, !62, i64 96}
!65 = !{!66, !21, i64 16}
!66 = !{!"strbuf", !34, i64 0, !34, i64 8, !21, i64 16}
!67 = !{!9, !9, i64 0}
!68 = !{!21, !21, i64 0}
!69 = !{!10, !10, i64 0}
!70 = !{!66, !34, i64 8}
!71 = distinct !{!71, !72}
!72 = !{!"llvm.loop.mustprogress"}
!73 = !{!74, !48, i64 16}
!74 = !{!"object_database", !75, i64 0, !76, i64 8, !48, i64 16, !77, i64 24, !78, i64 32, !9, i64 40, !21, i64 48, !79, i64 56, !9, i64 104, !10, i64 112, !80, i64 152, !9, i64 160, !48, i64 168, !34, i64 176, !9, i64 184, !9, i64 188, !42, i64 192}
!75 = !{!"p1 _ZTS10repository", !15, i64 0}
!76 = !{!"p1 _ZTS15odb_transaction", !15, i64 0}
!77 = !{!"p2 _ZTS10odb_source", !29, i64 0}
!78 = !{!"p1 _ZTS15kh_odb_path_map", !15, i64 0}
!79 = !{!"oidmap", !27, i64 0}
!80 = !{!"p1 _ZTS12commit_graph", !15, i64 0}
!81 = !{!82, !9, i64 0}
!82 = !{!"kh_oid_map", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !83, i64 16, !62, i64 24, !29, i64 32}
!83 = !{!"p1 int", !15, i64 0}
!84 = !{!82, !83, i64 16}
!85 = !{!82, !62, i64 24}
!86 = !{!82, !29, i64 32}
!87 = !{!15, !15, i64 0}
!88 = distinct !{!88, !72}
!89 = !{!56, !22, i64 8}
!90 = !{!74, !75, i64 0}
!91 = !{!56, !21, i64 32}
!92 = !{!93, !34, i64 48}
!93 = !{!"stat", !34, i64 0, !34, i64 8, !34, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !34, i64 40, !34, i64 48, !34, i64 56, !34, i64 64, !94, i64 72, !94, i64 88, !94, i64 104, !10, i64 120}
!94 = !{!"timespec", !34, i64 0, !34, i64 8}
!95 = !{!14, !14, i64 0}
!96 = !{i64 0, i64 32, !69, i64 32, i64 4, !67}
!97 = distinct !{!97, !72}
!98 = !{!99, !9, i64 32}
!99 = !{!"object_id", !10, i64 0, !9, i64 32}
!100 = distinct !{!100, !72}
!101 = distinct !{!101, !72}
!102 = distinct !{!102, !72}
!103 = !{!82, !9, i64 8}
!104 = !{!82, !9, i64 12}
!105 = !{!82, !9, i64 4}
!106 = !{i64 0, i64 28, !69, i64 28, i64 4, !67}
!107 = distinct !{!107, !72}
!108 = distinct !{!108, !72}
!109 = distinct !{!109, !72}
end_hunk_0

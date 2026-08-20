inline.NumInlined: 127
inline.NumDeleted: 36
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@hwloc_export_obj_userdata_base64:bb.a
  call void %i.x(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull @.str.141) #26, !inline_history !236
  br i1 %.not25, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !95
  call void %i.z(ptr noundef nonnull %6, ptr noundef nonnull @.str.20, ptr noundef nonnull %3) #26, !inline_history !236
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aa = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.87, i64 noundef %5) #26 ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !95
  call void %i.ac(ptr noundef nonnull %6, ptr noundef nonnull @.str.93, ptr noundef nonnull %i.a) #26, !inline_history !236
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !95
  call void %i.ad(ptr noundef nonnull %6, ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.21) #26, !inline_history !236
  %.not12.i = icmp eq i64 %i.p, 0
  br i1 %.not12.i, label %hwloc__export_obj_userdata.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !237
  call void %i.af(ptr noundef nonnull %6, ptr noundef nonnull %i.r, i64 noundef %i.p) #26, !inline_history !236
  br label %hwloc__export_obj_userdata.exit

hwloc__export_obj_userdata.exit:                  ; preds = %bb.n, %bb.o
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !63
  call void %i.ah(ptr noundef nonnull %6, ptr noundef nonnull @.str.141) #26, !inline_history !236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @free(ptr noundef nonnull %i.r) #26
  br label %bb.p

bb.p:                                             ; preds = %hwloc__export_obj_userdata.exit, %bb.i, %hwloc__xml_export_check_buffer.exit, %bb.b
  %.0 = phi i32 [ -1, %hwloc__xml_export_check_buffer.exit ], [ 0, %hwloc__export_obj_userdata.exit ], [ -1, %bb.i ], [ -1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #14

declare i32 @hwloc_encode_to_base64(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @hwloc_topology_set_userdata_import_callback(ptr nofree noundef writeonly captures(none) initializes((688, 696)) %0, ptr noundef %1) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 688
  store ptr %1, ptr %i.a, align 8, !tbaa !238
  ret void
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nounwind
declare i64 @__isoc23_strtoull(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @hwloc_get_obj_by_depth(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @hwloc_bitmap_weight(ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @hwloc_obj_type_string(i32 noundef) local_unnamed_addr #10

declare i32 @hwloc_obj_type_is_normal(i32 noundef) local_unnamed_addr #7

declare i32 @hwloc_bitmap_asprintf(ptr noundef, ptr noundef) local_unnamed_addr #7

declare noalias ptr @hwloc_bitmap_dup(ptr noundef) local_unnamed_addr #7

declare i32 @hwloc_bitmap_and(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @hwloc_bitmap_free(ptr noundef) local_unnamed_addr #7

declare i32 @hwloc_hide_errors() local_unnamed_addr #7

declare i32 @hwloc_get_type_depth(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @hwloc_get_nbobjs_by_depth(ptr noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define internal fastcc void @hwloc___xml_v2export_distances(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [255 x i8], align 16              ; 6 uses
  %2 = alloca %struct.hwloc__xml_export_state_s, align 8 ; 19 uses
  %i.b = alloca [255 x i8], align 16              ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %3 = alloca %struct.hwloc__xml_export_state_s, align 8 ; 9 uses
  %i.d = alloca [255 x i8], align 16              ; 4 uses
  %i.e = alloca [16 x i8], align 16               ; 4 uses
  %4 = alloca %struct.hwloc__xml_export_state_s, align 8 ; 9 uses
  %i.f = alloca [255 x i8], align 16              ; 4 uses
  %i.g = alloca [16 x i8], align 16               ; 4 uses
  %5 = alloca %struct.hwloc__xml_export_state_s, align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !188  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !67
  %.not = icmp eq ptr %i.k, null
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !56   ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void %i.m(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull @.str.85) #26
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void %i.m(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull @.str.86) #26
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !95
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !189
  %i.r = call ptr @hwloc_obj_type_string(i32 noundef %i.q) #31
  call void %i.o(ptr noundef nonnull %2, ptr noundef nonnull @.str.9, ptr noundef %i.r) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.i) #26 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !95
  call void %i.u(ptr noundef nonnull %2, ptr noundef nonnull @.str.81, ptr noundef nonnull %i.a) #26
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.w = load i64, ptr %i.v, align 8, !tbaa !190
  %i.x = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.87, i64 noundef %i.w) #26 ; 0 uses
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !95
  call void %i.y(ptr noundef nonnull %2, ptr noundef nonnull @.str.61, ptr noundef nonnull %i.a) #26
  %i.z = load ptr, ptr %1, align 8, !tbaa !239    ; 2 uses
  %.not83 = icmp eq ptr %i.z, null
  br i1 %.not83, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !95
  call void %i.aa(ptr noundef nonnull %2, ptr noundef nonnull @.str.20, ptr noundef nonnull %i.z) #26
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ab = load ptr, ptr %i.j, align 8, !tbaa !67
  %.not84 = icmp eq ptr %i.ab, null
  br i1 %.not84, label %bb.g, label %.critedge.preheader

.critedge.preheader:                              ; preds = %bb.g, %bb.f
  %.not101 = icmp eq i32 %i.i, 0
  br i1 %.not101, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge.preheader
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 32
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr %i.t, align 8, !tbaa !95
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !189 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 3
  %i.al = icmp eq i32 %i.aj, 13
  %i.am = or i1 %i.ak, %i.al
  %i.an = select i1 %i.am, ptr @.str.89, ptr @.str.90
  call void %i.ah(ptr noundef nonnull %2, ptr noundef nonnull @.str.88, ptr noundef nonnull %i.an) #26
  %.pr = load ptr, ptr %i.j, align 8, !tbaa !67
  %i.ao = icmp eq ptr %.pr, null
  br i1 %i.ao, label %.preheader, label %.critedge.preheader

.preheader:                                       ; preds = %bb.g
  %.not102 = icmp eq i32 %i.i, 0
  br i1 %.not102, label %.loopexit, label %.lr.ph96

.lr.ph96:                                         ; preds = %.preheader
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 32
  br label %bb.j

bb.h:                                             ; preds = %.lr.ph, %.critedge
  %.07592 = phi i32 [ 0, %.lr.ph ], [ %i.bg, %.critedge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.au = load ptr, ptr %i.ac, align 8, !tbaa !56
  call void %i.au(ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull @.str.91) #26
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.i
  %indvars.iv = phi i64 [ 0, %bb.h ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %.07490 = phi i64 [ 0, %bb.h ], [ %i.bf, %bb.i ] ; 2 uses
  %6 = trunc nuw nsw i64 %indvars.iv to i32
  %7 = add i32 %.07592, %6
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 %.07490
  %i.aw = load ptr, ptr %i.ad, align 8, !tbaa !191
  %8 = zext i32 %7 to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !55 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !50
  %i.ba = call ptr @hwloc_obj_type_string(i32 noundef %i.az) #31
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 240
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !177
  %i.bd = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.av, ptr noundef nonnull dereferenceable(1) @.str.92, ptr noundef %i.ba, i64 noundef %i.bc) #26
  %i.be = sext i32 %i.bd to i64
  %i.bf = add i64 %.07490, %i.be                  ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.bg = add i32 %.07592, %indvars               ; 2 uses
  %i.bh = icmp ult i32 %i.bg, %i.i                ; 2 uses
  %i.bi = icmp samesign ult i64 %indvars.iv, 9
  %i.bj = select i1 %i.bh, i1 %i.bi, i1 false
  br i1 %i.bj, label %bb.i, label %.critedge, !llvm.loop !240

.critedge:                                        ; preds = %bb.i
  %i.bk = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) @.str.87, i64 noundef %i.bf) #26 ; 0 uses
  %i.bl = load ptr, ptr %i.ae, align 8, !tbaa !95
  call void %i.bl(ptr noundef nonnull %3, ptr noundef nonnull @.str.93, ptr noundef nonnull %i.c) #26
  %i.bm = load ptr, ptr %i.af, align 8, !tbaa !237
  call void %i.bm(ptr noundef nonnull %3, ptr noundef nonnull %i.b, i64 noundef %i.bf) #26
  %i.bn = load ptr, ptr %i.ag, align 8, !tbaa !63
  call void %i.bn(ptr noundef nonnull %3, ptr noundef nonnull @.str.91) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br i1 %i.bh, label %bb.h, label %.loopexit, !llvm.loop !241

bb.j:                                             ; preds = %.lr.ph96, %bb.l
  %.07295 = phi i32 [ 0, %.lr.ph96 ], [ %i.bw, %bb.l ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.bo = load ptr, ptr %i.ap, align 8, !tbaa !56
  call void %i.bo(ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull @.str.91) #26
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.k
  %indvars.iv111 = phi i64 [ 0, %bb.j ], [ %indvars.iv.next112, %bb.k ] ; 3 uses
  %.07193 = phi i64 [ 0, %bb.j ], [ %i.bv, %bb.k ] ; 2 uses
  %9 = trunc nuw nsw i64 %indvars.iv111 to i32
  %10 = add i32 %.07295, %9
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 %.07193
  %i.bq = load ptr, ptr %i.aq, align 8, !tbaa !242
  %11 = zext i32 %10 to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %11
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !201
  %i.bt = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.bp, ptr noundef nonnull dereferenceable(1) @.str.94, i64 noundef %i.bs) #26
  %i.bu = sext i32 %i.bt to i64
  %i.bv = add i64 %.07193, %i.bu                  ; 3 uses
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %indvars113 = trunc nuw nsw i64 %indvars.iv.next112 to i32
  %i.bw = add i32 %.07295, %indvars113            ; 2 uses
  %i.bx = icmp ult i32 %i.bw, %i.i                ; 2 uses
  %i.by = icmp samesign ult i64 %indvars.iv111, 9
  %i.bz = select i1 %i.bx, i1 %i.by, i1 false
  br i1 %i.bz, label %bb.k, label %bb.l, !llvm.loop !243

bb.l:                                             ; preds = %bb.k
  %i.ca = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(1) @.str.87, i64 noundef %i.bv) #26 ; 0 uses
  %i.cb = load ptr, ptr %i.ar, align 8, !tbaa !95
  call void %i.cb(ptr noundef nonnull %4, ptr noundef nonnull @.str.93, ptr noundef nonnull %i.e) #26
  %i.cc = load ptr, ptr %i.as, align 8, !tbaa !237
  call void %i.cc(ptr noundef nonnull %4, ptr noundef nonnull %i.d, i64 noundef %i.bv) #26
  %i.cd = load ptr, ptr %i.at, align 8, !tbaa !63
  call void %i.cd(ptr noundef nonnull %4, ptr noundef nonnull @.str.91) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  br i1 %i.bx, label %bb.j, label %.loopexit, !llvm.loop !244

.loopexit:                                        ; preds = %.critedge, %bb.l, %.critedge.preheader, %.preheader
  %i.ce = mul i32 %i.i, %i.i                      ; 2 uses
  %.not103 = icmp eq i32 %i.ce, 0
  br i1 %.not103, label %._crit_edge, label %.lr.ph100

.lr.ph100:                                        ; preds = %.loopexit
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 32
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph100, %bb.o
  %.06999 = phi i32 [ 0, %.lr.ph100 ], [ %i.cs, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.ck = load ptr, ptr %i.cf, align 8, !tbaa !56
  call void %i.ck(ptr noundef nonnull %2, ptr noundef nonnull %5, ptr noundef nonnull @.str.95) #26
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.n
  %indvars.iv115 = phi i64 [ 0, %bb.m ], [ %indvars.iv.next116, %bb.n ] ; 3 uses
  %.06897 = phi i64 [ 0, %bb.m ], [ %i.cr, %bb.n ] ; 2 uses
  %12 = trunc nuw nsw i64 %indvars.iv115 to i32
  %13 = add i32 %.06999, %12
  %i.cl = getelementptr inbounds nuw i8, ptr %i.f, i64 %.06897
  %i.cm = load ptr, ptr %i.cg, align 8, !tbaa !200
  %14 = zext i32 %13 to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %14
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !201
  %i.cp = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.cl, ptr noundef nonnull dereferenceable(1) @.str.94, i64 noundef %i.co) #26
  %i.cq = sext i32 %i.cp to i64
  %i.cr = add i64 %.06897, %i.cq                  ; 3 uses
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %indvars117 = trunc nuw nsw i64 %indvars.iv.next116 to i32
  %i.cs = add i32 %.06999, %indvars117            ; 2 uses
  %i.ct = icmp ult i32 %i.cs, %i.ce               ; 2 uses
  %i.cu = icmp samesign ult i64 %indvars.iv115, 9
  %i.cv = select i1 %i.ct, i1 %i.cu, i1 false
  br i1 %i.cv, label %bb.n, label %bb.o, !llvm.loop !245

bb.o:                                             ; preds = %bb.n
  %i.cw = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(1) @.str.87, i64 noundef %i.cr) #26 ; 0 uses
  %i.cx = load ptr, ptr %i.ch, align 8, !tbaa !95
  call void %i.cx(ptr noundef nonnull %5, ptr noundef nonnull @.str.93, ptr noundef nonnull %i.g) #26
  %i.cy = load ptr, ptr %i.ci, align 8, !tbaa !237
  call void %i.cy(ptr noundef nonnull %5, ptr noundef nonnull %i.f, i64 noundef %i.cr) #26
  %i.cz = load ptr, ptr %i.cj, align 8, !tbaa !63
  call void %i.cz(ptr noundef nonnull %5, ptr noundef nonnull @.str.95) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  br i1 %i.ct, label %bb.m, label %._crit_edge, !llvm.loop !246

._crit_edge:                                      ; preds = %bb.o, %.loopexit
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !63
  %i.dc = load ptr, ptr %i.j, align 8, !tbaa !67
  %.not86 = icmp eq ptr %i.dc, null
  %i.dd = select i1 %.not86, ptr @.str.86, ptr @.str.85
  call void %i.db(ptr noundef nonnull %2, ptr noundef nonnull %i.dd) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define internal ptr @hwloc_xml_component_instantiate(ptr noundef %0, ptr noundef %1, i32 %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
bb.a:
  %i.a = ptrtoint ptr %5 to i64
  %i.b = trunc i64 %i.a to i32                    ; 3 uses
  %i.c = load ptr, ptr @hwloc_nolibxml_callbacks, align 8, !tbaa !13
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 3625, ptr noundef nonnull @__PRETTY_FUNCTION__.hwloc_xml_component_instantiate) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = icmp ne ptr %3, null
  %i.e = icmp ne ptr %4, null
  %or.cond = or i1 %i.d, %i.e
  br i1 %or.cond, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @getenv(ptr noundef nonnull @.str.144) #26 ; 2 uses
  %.not50 = icmp eq ptr %i.f, null
  br i1 %.not50, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = tail call ptr @__errno_location() #31
  store i32 22, ptr %i.g, align 4, !tbaa !12
  br label %.critedge57

bb.f:                                             ; preds = %bb.d, %bb.c
  %.042 = phi ptr [ %3, %bb.c ], [ %i.f, %bb.d ]  ; 6 uses
  %i.h = tail call ptr @hwloc_backend_alloc(ptr noundef %0, ptr noundef %1) #26 ; 9 uses
  %.not51 = icmp eq ptr %i.h, null
  br i1 %.not51, label %.critedge57, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = tail call noalias dereferenceable_or_null(136) ptr @malloc(i64 noundef 136) #29 ; 7 uses
  %.not52 = icmp eq ptr %i.i, null
  br i1 %.not52, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.j = tail call ptr @__errno_location() #31
  store i32 12, ptr %i.j, align 4, !tbaa !12
  br label %bb.r

bb.i:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store ptr %i.i, ptr %i.k, align 8, !tbaa !247
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  store ptr @hwloc_look_xml, ptr %i.l, align 8, !tbaa !251
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store ptr @hwloc_xml_backend_disable, ptr %i.m, align 8, !tbaa !252
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store i32 0, ptr %i.n, align 8, !tbaa !253
  %.not53 = icmp eq ptr %.042, null
  br i1 %.not53, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %.042, i32 noundef 47) #27 ; 2 uses
  %.not54 = icmp eq ptr %i.o, null
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %spec.select = select i1 %.not54, ptr %.042, ptr %i.p
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.041 = phi ptr [ @.str.145, %bb.i ], [ %spec.select, %bb.j ]
  %i.q = tail call noalias ptr @strdup(ptr noundef nonnull %.041) #26
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 72 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !35
  %.b.i = load i1, ptr @hwloc_nolibxml_import.checked, align 4
  br i1 %.b.i, label %hwloc_nolibxml_import.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = tail call ptr @getenv(ptr noundef nonnull @.str.32) #26 ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %bb.m, label %.sink.split.i

bb.m:                                             ; preds = %bb.l
  %i.t = tail call ptr @getenv(ptr noundef nonnull @.str.33) #26 ; 2 uses
  %.not5.i = icmp eq ptr %i.t, null
  br i1 %.not5.i, label %bb.n, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.m, %bb.l
  %.sink.i = phi ptr [ %i.s, %bb.l ], [ %i.t, %bb.m ]
  %i.u = tail call i64 @__isoc23_strtol(ptr noundef nonnull %.sink.i, ptr noundef null, i32 noundef 10) #26
  %i.v = and i64 %i.u, 4294967295
  %.not6.i = icmp eq i64 %i.v, 0
  %i.w = zext i1 %.not6.i to i32
  store i32 %i.w, ptr @hwloc_nolibxml_import.nolibxml, align 4, !tbaa !12
  br label %bb.n

bb.n:                                             ; preds = %.sink.split.i, %bb.m
  store i1 true, ptr @hwloc_nolibxml_import.checked, align 4
  br label %hwloc_nolibxml_import.exit

hwloc_nolibxml_import.exit:                       ; preds = %bb.k, %bb.n
  %.pr = load ptr, ptr @hwloc_libxml_callbacks, align 8, !tbaa !13 ; 3 uses
  %.not5558 = icmp eq ptr %.pr, null
  br i1 %.not5558, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %hwloc_nolibxml_import.exit
  %i.x = load i32, ptr @hwloc_nolibxml_import.nolibxml, align 4, !tbaa !12
  %.fr62 = freeze i32 %i.x
  %.not63 = icmp eq i32 %.fr62, 0
  br i1 %.not63, label %.lr.ph.split.us.split.us, label %.lr.ph.split.split.us

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph
  %i.y = load ptr, ptr %.pr, align 8, !tbaa !254
  %i.z = tail call i32 %i.y(ptr noundef nonnull %i.i, ptr noundef %.042, ptr noundef %4, i32 noundef %i.b) #26
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %bb.o, label %.critedge57

bb.o:                                             ; preds = %.lr.ph.split.us.split.us
  %i.ab = tail call ptr @__errno_location() #31
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !12
  %i.ad = icmp eq i32 %i.ac, 38
  br i1 %i.ad, label %._crit_edge.sink.split, label %.critedge

.lr.ph.split.split.us:                            ; preds = %.lr.ph
  %i.ae = load ptr, ptr @hwloc_nolibxml_callbacks, align 8, !tbaa !13
  %.not64 = icmp eq ptr %i.ae, null
  br i1 %.not64, label %bb.p, label %._crit_edge

bb.p:                                             ; preds = %.lr.ph.split.split.us
  %i.af = load ptr, ptr %.pr, align 8, !tbaa !254
  %i.ag = tail call i32 %i.af(ptr noundef nonnull %i.i, ptr noundef %.042, ptr noundef %4, i32 noundef %i.b) #26
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %bb.q, label %.critedge57

bb.q:                                             ; preds = %bb.p
  %i.ai = tail call ptr @__errno_location() #31
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !12
  %i.ak = icmp eq i32 %i.aj, 38
  br i1 %i.ak, label %._crit_edge.sink.split, label %.critedge

._crit_edge.sink.split:                           ; preds = %bb.q, %bb.o
  store ptr null, ptr @hwloc_libxml_callbacks, align 8, !tbaa !13
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.sink.split, %.lr.ph.split.split.us, %hwloc_nolibxml_import.exit
  %i.al = load ptr, ptr @hwloc_nolibxml_callbacks, align 8, !tbaa !13
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !254
  %i.an = tail call i32 %i.am(ptr noundef nonnull %i.i, ptr noundef %.042, ptr noundef %4, i32 noundef %i.b) #26
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %.critedge, label %.critedge57

.critedge:                                        ; preds = %bb.o, %bb.q, %._crit_edge
  %i.ap = load ptr, ptr %i.r, align 8, !tbaa !35
  tail call void @free(ptr noundef %i.ap) #26
  tail call void @free(ptr noundef nonnull %i.i) #26
  br label %bb.r

bb.r:                                             ; preds = %.critedge, %bb.h
  tail call void @free(ptr noundef nonnull %i.h) #26
  br label %.critedge57

.critedge57:                                      ; preds = %.lr.ph.split.us.split.us, %bb.p, %bb.e, %bb.r, %bb.f, %._crit_edge
  %.043 = phi ptr [ %i.h, %._crit_edge ], [ null, %bb.e ], [ null, %bb.f ], [ null, %bb.r ], [ %i.h, %bb.p ], [ %i.h, %.lr.ph.split.us.split.us ]
  ret ptr %.043
}
end_hunk_0

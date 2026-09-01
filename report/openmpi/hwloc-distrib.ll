Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/hwloc-distrib?download=true
inline.NumInlined: 14
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@main:bb.a
.lr.ph470.split.us.split:                         ; preds = %.lr.ph470.split.us, %.lr.ph470.split.us.split
  %i.jj = phi i64 [ %i.jq, %.lr.ph470.split.us.split ], [ 0, %.lr.ph470.split.us ]
  %.1131468.us = phi i32 [ %i.jp, %.lr.ph470.split.us.split ], [ 0, %.lr.ph470.split.us ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  store ptr null, ptr %i.f, align 8, !tbaa !12
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.jj
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !30 ; 2 uses
  %i.jm = call i32 @hwloc_bitmap_taskset_asprintf(ptr noundef nonnull %i.f, ptr noundef %i.jl) #20 ; 0 uses
  %i.jn = load ptr, ptr %i.f, align 8, !tbaa !12
  %puts.us = call i32 @puts(ptr nonnull dereferenceable(1) %i.jn) ; 0 uses
  %i.jo = load ptr, ptr %i.f, align 8, !tbaa !12
  call void @free(ptr noundef %i.jo) #20
  call void @hwloc_bitmap_free(ptr noundef %i.jl) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  %i.jp = add i32 %.1131468.us, 1                 ; 2 uses
  %i.jq = zext i32 %i.jp to i64                   ; 2 uses
  %i.jr = icmp samesign ugt i64 %.0153.lcssa.ph, %i.jq
  br i1 %i.jr, label %.lr.ph470.split.us.split, label %._crit_edge471, !llvm.loop !32

.lr.ph470.split:                                  ; preds = %.lr.ph470, %bb.dz
  %i.js = phi i64 [ %i.kd, %bb.dz ], [ 0, %.lr.ph470 ]
  %.1131468 = phi i32 [ %i.kc, %bb.dz ], [ 0, %.lr.ph470 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  store ptr null, ptr %i.f, align 8, !tbaa !12
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.js
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !30 ; 6 uses
  br i1 %.not172, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %.lr.ph470.split
  %i.jv = call i32 @hwloc_bitmap_last(ptr noundef %i.ju) #21
  %i.jw = call i32 @hwloc_bitmap_only(ptr noundef %i.ju, i32 noundef %i.jv) #20 ; 0 uses
  br label %bb.dw

bb.dv:                                            ; preds = %.lr.ph470.split
  %i.jx = call i32 @hwloc_bitmap_singlify(ptr noundef %i.ju) #20 ; 0 uses
  br label %bb.dw

bb.dw:                                            ; preds = %bb.du, %bb.dv
  br i1 %i.eo, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.jy = call i32 @hwloc_bitmap_taskset_asprintf(ptr noundef nonnull %i.f, ptr noundef %i.ju) #20 ; 0 uses
  br label %bb.dz

bb.dy:                                            ; preds = %bb.dw
  %i.jz = call i32 @hwloc_bitmap_asprintf(ptr noundef nonnull %i.f, ptr noundef %i.ju) #20 ; 0 uses
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %i.ka = load ptr, ptr %i.f, align 8, !tbaa !12
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) %i.ka) ; 0 uses
  %i.kb = load ptr, ptr %i.f, align 8, !tbaa !12
  call void @free(ptr noundef %i.kb) #20
  call void @hwloc_bitmap_free(ptr noundef %i.ju) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  %i.kc = add i32 %.1131468, 1                    ; 2 uses
  %i.kd = zext i32 %i.kc to i64                   ; 2 uses
  %i.ke = icmp samesign ugt i64 %.0153.lcssa.ph, %i.kd
  br i1 %i.ke, label %.lr.ph470.split, label %._crit_edge471, !llvm.loop !32

.thread:                                          ; preds = %hwloc_utils_enable_input_format.exit, %bb.di, %bb.dp, %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %bb.ea

._crit_edge471:                                   ; preds = %bb.dz, %.lr.ph470.split.us.split, %.lr.ph470.split.us.split.us, %._crit_edge467
  call void @free(ptr noundef %i.iu) #20
  call void @free(ptr noundef %i.ew) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  %i.kf = load ptr, ptr %i.b, align 8, !tbaa !17
  call void @hwloc_topology_destroy(ptr noundef %i.kf) #20
  br label %bb.ea

bb.ea:                                            ; preds = %.thread, %._crit_edge471, %.tail._crit_edge.thread, %bb.br, %bb.bp, %bb.j
  %.1 = phi i32 [ 1, %bb.bp ], [ 1, %.thread ], [ 0, %bb.j ], [ 1, %bb.br ], [ 1, %.tail._crit_edge.thread ], [ 0, %._crit_edge471 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @putenv(ptr noundef) local_unnamed_addr #6

declare i32 @hwloc_topology_init(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

declare i32 @hwloc_type_sscanf(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

declare i32 @hwloc_topology_set_type_filter(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #9

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i64 @hwloc_utils_parse_restrict_flags(ptr noundef %0) unnamed_addr #10 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = call i64 @__isoc23_strtoul(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 0) #20
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %.not.i = icmp eq ptr %i.c, %0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.c, align 1, !tbaa !33
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %sext.i = shl i64 %i.b, 32
  %i.f = ashr exact i64 %sext.i, 32
  br label %hwloc_utils_parse_flags.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.g = load i8, ptr %0, align 1, !tbaa !33      ; 2 uses
  %.not7813.i = icmp eq i8 %i.g, 0
  br i1 %.not7813.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.h = tail call ptr @__ctype_toupper_loc() #27
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %i.i = phi i8 [ %i.g, %.lr.ph.i ], [ %i.r, %bb.e ]
  %.07014.i = phi i64 [ 0, %.lr.ph.i ], [ %i.p, %bb.e ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %.07014.i
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !34
  %i.l = sext i8 %i.i to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !19
  %i.o = trunc i32 %i.n to i8
  store i8 %i.o, ptr %i.j, align 1, !tbaa !33
  %i.p = add i64 %.07014.i, 1                     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !33    ; 2 uses
  %.not78.i = icmp eq i8 %i.r, 0
  br i1 %.not78.i, label %._crit_edge.i, label %bb.e, !llvm.loop !36

._crit_edge.i:                                    ; preds = %bb.e, %bb.d
  %i.s = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.85) #21
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %hwloc_utils_parse_flags.exit, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %bb.v
  %.06424.i = phi ptr [ %i.bp, %bb.v ], [ %0, %._crit_edge.i ] ; 2 uses
  %.06723.i = phi i64 [ %.us-phi22.i, %bb.v ], [ 0, %._crit_edge.i ] ; 9 uses
  %i.u = call i64 @strspn(ptr noundef nonnull %.06424.i, ptr noundef nonnull @.str.86) #21
  %i.v = getelementptr inbounds nuw i8, ptr %.06424.i, i64 %i.u ; 22 uses
  %i.w = call i64 @strcspn(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.87) #21 ; 2 uses
  %.not80.i = icmp eq i64 %i.w, 0
  br i1 %.not80.i, label %hwloc_utils_parse_flags.exit, label %bb.f

bb.f:                                             ; preds = %.preheader.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w ; 3 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !33
  %.not81.i = icmp eq i8 %i.y, 0
  br i1 %.not81.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr %i.x, align 1, !tbaa !33
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %storemerge.i = phi ptr [ %i.z, %bb.g ], [ null, %bb.f ]
  store ptr %storemerge.i, ptr %i.a, align 8, !tbaa !12
  %i.aa = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.v, i32 noundef 36) #21 ; 2 uses
  %.not82.not.i = icmp eq ptr %i.aa, null
  br i1 %.not82.not.i, label %.split.us.preheader.i, label %.split.i

.split.us.preheader.i:                            ; preds = %bb.h
  %i.ab = call ptr @strstr(ptr noundef nonnull dereferenceable(1) @.str.79, ptr noundef nonnull dereferenceable(1) %i.v) #21
  %.not83.us.i = icmp eq ptr %i.ab, null
  br i1 %.not83.us.i, label %.split.us.1.i, label %.split.us.1.thread.i

.split.i:                                         ; preds = %bb.h
  store i8 0, ptr %i.aa, align 1, !tbaa !33
  %i.ac = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.v) #21
  %i.ad = sub i64 0, %i.ac                        ; 7 uses
  %i.ae = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @.str.79, i64 34), i64 %i.ad
  %i.af = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.v, ptr noundef nonnull dereferenceable(1) %i.ae) #21
  %.not84.not.i = icmp eq i32 %i.af, 0            ; 4 uses
  %i.ag = zext i1 %.not84.not.i to i64
  %.269.i = or i64 %.06723.i, %i.ag               ; 3 uses
  %i.ah = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @.str.80, i64 29), i64 %i.ad
  %i.ai = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.v, ptr noundef nonnull dereferenceable(1) %i.ah) #21
  %.not84.1.i = icmp eq i32 %i.ai, 0
  br i1 %.not84.1.i, label %bb.l, label %bb.m

.split.us.1.i:                                    ; preds = %.split.us.preheader.i
  %i.aj = call ptr @strstr(ptr noundef nonnull dereferenceable(1) @.str.80, ptr noundef nonnull dereferenceable(1) %i.v) #21
  %.not83.us.1.i = icmp eq ptr %i.aj, null
  br i1 %.not83.us.1.i, label %.split.us.2.i.thread, label %bb.i

.split.us.1.thread.i:                             ; preds = %.split.us.preheader.i
  %i.ak = or i64 %.06723.i, 1
  %i.al = call ptr @strstr(ptr noundef nonnull dereferenceable(1) @.str.80, ptr noundef nonnull dereferenceable(1) %i.v) #21
  %.not83.us.138.i = icmp eq ptr %i.al, null
  br i1 %.not83.us.138.i, label %.split.us.2.i, label %.split19.us.i

bb.i:                                             ; preds = %.split.us.1.i
  %i.am = or i64 %.06723.i, 8
  br label %.split.us.2.i

.split.us.2.i:                                    ; preds = %bb.i, %.split.us.1.thread.i
  %.269.us.1.i = phi i64 [ %i.ak, %.split.us.1.thread.i ], [ %i.am, %bb.i ]
  %i.an = call ptr @strstr(ptr noundef nonnull dereferenceable(1) @.str.81, ptr noundef nonnull dereferenceable(1) %i.v) #21
  %.not83.us.2.i = icmp eq ptr %i.an, null
  br i1 %.not83.us.2.i, label %.split.us.3.i, label %.split19.us.i

.split.us.2.i.thread:                             ; preds = %.split.us.1.i
  %i.ao = call ptr @strstr(ptr noundef nonnull dereferenceable(1) @.str.81, ptr noundef nonnull dereferenceable(1) %i.v) #21
  %.not83.us.2.i4 = icmp eq ptr %i.ao, null
  br i1 %.not83.us.2.i4, label %.split.us.3.i.thread, label %bb.j

bb.j:                                             ; preds = %.split.us.2.i.thread
  %i.ap = or i64 %.06723.i, 16
  br label %.split.us.3.i

.split.us.3.i:                                    ; preds = %bb.j, %.split.us.2.i
  %.269.us.2.i = phi i64 [ %.269.us.1.i, %.split.us.2.i ], [ %i.ap, %bb.j ]
  %i.aq = call ptr @strstr(ptr noundef nonnull dereferenceable(1) @.str.82, ptr noundef nonnull dereferenceable(1) %i.v) #21
  %.not83.us.3.i = icmp eq ptr %i.aq, null
  br i1 %.not83.us.3.i, label %.split.us.4.i, label %.split19.us.i

.split.us.3.i.thread:                             ; preds = %.split.us.2.i.thread
  %i.ar = call ptr @strstr(ptr noundef nonnull dereferenceable(1) @.str.82, ptr noundef nonnull dereferenceable(1) %i.v) #21
  %.not83.us.3.i21 = icmp eq ptr %i.ar, null
  br i1 %.not83.us.3.i21, label %.split.us.4.i.thread, label %bb.k

bb.k:                                             ; preds = %.split.us.3.i.thread
  %i.as = or i64 %.06723.i, 2
  br label %.split.us.4.i

.split.us.4.i:                                    ; preds = %bb.k, %.split.us.3.i
  %.269.us.3.i = phi i64 [ %.269.us.2.i, %.split.us.3.i ], [ %i.as, %bb.k ]
  %i.at = call ptr @strstr(ptr noundef nonnull dereferenceable(1) @.str.83, ptr noundef nonnull dereferenceable(1) %i.v) #21
  %.not83.us.4.i = icmp eq ptr %i.at, null
  br i1 %.not83.us.4.i, label %.split21.us.i, label %.split19.us.i

.split.us.4.i.thread:                             ; preds = %.split.us.3.i.thread
  %i.au = call ptr @strstr(ptr noundef nonnull dereferenceable(1) @.str.83, ptr noundef nonnull dereferenceable(1) %i.v) #21
  %.not83.us.4.i29 = icmp eq ptr %i.au, null
  %i.av = or i64 %.06723.i, 4
  %spec.select = select i1 %.not83.us.4.i29, i64 %.06723.i, i64 %i.av
  br label %.split21.us.i

.split19.us.i:                                    ; preds = %.thread47, %.thread37, %.split.us.4.i, %.split.us.3.i, %.split.us.2.i, %bb.s, %bb.q, %bb.n, %bb.l, %.split.us.1.thread.i
  %i.aw = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ax = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aw, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.84, ptr noundef nonnull %i.v) #22 ; 0 uses
  call fastcc void @hwloc_utils_parsing_flag_error(ptr noundef nonnull readonly @__const.hwloc_utils_parse_restrict_flags.possible_flags)
  br label %hwloc_utils_parse_flags.exit

bb.l:                                             ; preds = %.split.i
  br i1 %.not84.not.i, label %.split19.us.i, label %.thread37

bb.m:                                             ; preds = %.split.i
  %i.ay = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @.str.81, i64 34), i64 %i.ad
  %i.az = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.v, ptr noundef nonnull dereferenceable(1) %i.ay) #21
  %.not84.2.i = icmp eq i32 %i.az, 0
  %1 = xor i1 %.not84.not.i, true
  br i1 %.not84.2.i, label %bb.n, label %bb.p

.thread37:                                        ; preds = %bb.l
  %i.ba = or i64 %.269.i, 8
  %i.bb = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @.str.81, i64 34), i64 %i.ad
  %i.bc = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.v, ptr noundef nonnull dereferenceable(1) %i.bb) #21
  %.not84.2.i40 = icmp eq i32 %i.bc, 0
  br i1 %.not84.2.i40, label %.split19.us.i, label %bb.p

bb.n:                                             ; preds = %bb.m
  br i1 %.not84.not.i, label %.split19.us.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bd = or i64 %.269.i, 16
  br label %bb.p

bb.p:                                             ; preds = %.thread37, %bb.o, %bb.m
  %.269.2.i = phi i64 [ %.269.i, %bb.m ], [ %i.bd, %bb.o ], [ %i.ba, %.thread37 ] ; 3 uses
  %.1.2.i = phi i1 [ %1, %bb.m ], [ false, %bb.o ], [ false, %.thread37 ] ; 2 uses
  %i.be = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @.str.82, i64 30), i64 %i.ad
  %i.bf = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.v, ptr noundef nonnull dereferenceable(1) %i.be) #21
  %.not84.3.i = icmp eq i32 %i.bf, 0
  br i1 %.not84.3.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  br i1 %.1.2.i, label %.thread47, label %.split19.us.i

bb.r:                                             ; preds = %bb.p
  %i.bg = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @.str.83, i64 28), i64 %i.ad
  %i.bh = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.v, ptr noundef nonnull dereferenceable(1) %i.bg) #21
  %.not84.4.i = icmp eq i32 %i.bh, 0
  br i1 %.not84.4.i, label %bb.s, label %.split21.us.i

.thread47:                                        ; preds = %bb.q
  %i.bi = or i64 %.269.2.i, 2
  %i.bj = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @.str.83, i64 28), i64 %i.ad
  %i.bk = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.v, ptr noundef nonnull dereferenceable(1) %i.bj) #21
  %.not84.4.i50 = icmp eq i32 %i.bk, 0
  br i1 %.not84.4.i50, label %.split19.us.i, label %.split21.us.i

bb.s:                                             ; preds = %bb.r
  br i1 %.1.2.i, label %bb.t, label %.split19.us.i

bb.t:                                             ; preds = %bb.s
  %i.bl = or i64 %.269.2.i, 4
  br label %.split21.us.i

.split21.us.i:                                    ; preds = %.split.us.4.i.thread, %.thread47, %bb.t, %bb.r, %.split.us.4.i
  %.us-phi22.i = phi i64 [ %i.bi, %.thread47 ], [ %.269.us.3.i, %.split.us.4.i ], [ %.269.2.i, %bb.r ], [ %i.bl, %bb.t ], [ %spec.select, %.split.us.4.i.thread ] ; 3 uses
  %i.bm = icmp eq i64 %.06723.i, %.us-phi22.i
  br i1 %i.bm, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.split21.us.i
  %i.bn = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.bo = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bn, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.84, ptr noundef nonnull %i.v) #22 ; 0 uses
  call fastcc void @hwloc_utils_parsing_flag_error(ptr noundef nonnull readonly @__const.hwloc_utils_parse_restrict_flags.possible_flags)
  br label %hwloc_utils_parse_flags.exit

bb.v:                                             ; preds = %.split21.us.i
  %i.bp = load ptr, ptr %i.a, align 8, !tbaa !12  ; 2 uses
  %.not79.i = icmp eq ptr %i.bp, null
  br i1 %.not79.i, label %hwloc_utils_parse_flags.exit, label %.preheader.i

hwloc_utils_parse_flags.exit:                     ; preds = %.preheader.i, %bb.v, %bb.c, %._crit_edge.i, %.split19.us.i, %bb.u
  %.2.i = phi i64 [ %i.f, %bb.c ], [ 0, %._crit_edge.i ], [ -1, %.split19.us.i ], [ -1, %bb.u ], [ %.06723.i, %.preheader.i ], [ %.us-phi22.i, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i64 %.2.i
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #12

declare i32 @hwloc_topology_set_flags(ptr noundef, i64 noundef) local_unnamed_addr #7

declare i32 @hwloc_topology_load(ptr noundef) local_unnamed_addr #7

declare noalias ptr @hwloc_bitmap_alloc() local_unnamed_addr #7

declare i32 @hwloc_bitmap_sscanf(ptr noundef, ptr noundef) local_unnamed_addr #7

declare i32 @hwloc_topology_restrict(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: cold nofree nounwind
declare void @perror(ptr noundef readonly captures(none)) local_unnamed_addr #13

declare void @hwloc_bitmap_free(ptr noundef) local_unnamed_addr #7

declare i32 @hwloc_type_sscanf_as_depth(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @hwloc_get_nbobjs_by_depth(ptr noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @hwloc_get_obj_by_depth(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @hwloc_distrib(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3, i32 noundef %4, i64 noundef range(i64 0, 2) %5) unnamed_addr #10 {
bb.a:
  %.not16 = icmp eq i32 %1, 0
  br i1 %.not16, label %._crit_edge15, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %1 to i64
  br label %.lr.ph

.lr.ph14:                                         ; preds = %.lr.ph
  %.not = icmp eq i64 %5, 0
  %i.a = add i32 %i.g, -1                         ; 2 uses
  br label %bb.b

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.0653 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.g, %.lr.ph ]
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.f = tail call i32 @hwloc_bitmap_weight(ptr noundef %i.e) #21
  %i.g = add i32 %i.f, %.0653                     ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph14, label %.lr.ph, !llvm.loop !43

bb.b:                                             ; preds = %.lr.ph14, %bb.j
  %.06013 = phi ptr [ %2, %.lr.ph14 ], [ %.1, %bb.j ] ; 5 uses
  %.06112 = phi i32 [ 0, %.lr.ph14 ], [ %.162, %bb.j ] ; 3 uses
  %.06311 = phi i32 [ 0, %.lr.ph14 ], [ %.164, %bb.j ] ; 3 uses
  %.16710 = phi i32 [ 0, %.lr.ph14 ], [ %i.aw, %bb.j ] ; 3 uses
  %i.h = xor i32 %.16710, -1
  %i.i = add i32 %1, %i.h
  %i.j = select i1 %.not, i32 %.16710, i32 %i.i
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !27   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 184
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !37   ; 3 uses
  %i.p = load i32, ptr %i.m, align 8, !tbaa !44
  %i.q = tail call i32 @hwloc_obj_type_is_normal(i32 noundef %i.p) #20
  %.not754 = icmp eq i32 %i.q, 0
  br i1 %.not754, label %.lr.ph6, label %._crit_edge

.lr.ph6:                                          ; preds = %bb.b, %.lr.ph6
  %.0595 = phi ptr [ %i.s, %.lr.ph6 ], [ %i.m, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %.0595, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !45   ; 3 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !44
  %i.u = tail call i32 @hwloc_obj_type_is_normal(i32 noundef %i.t) #20
  %.not75 = icmp eq i32 %i.u, 0
  br i1 %.not75, label %.lr.ph6, label %._crit_edge, !llvm.loop !46

._crit_edge:                                      ; preds = %.lr.ph6, %bb.b
  %.059.lcssa = phi ptr [ %i.m, %bb.b ], [ %i.s, %.lr.ph6 ] ; 3 uses
  %i.v = tail call i32 @hwloc_bitmap_weight(ptr noundef %i.o) #21 ; 2 uses
  %.not76 = icmp eq i32 %i.v, 0
  br i1 %.not76, label %bb.j, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.w = add i32 %i.v, %.06112                    ; 2 uses
  %i.x = mul i32 %i.w, %3
  %i.y = add i32 %i.a, %i.x
  %i.z = udiv i32 %i.y, %i.g                      ; 2 uses
  %i.aa = mul i32 %.06112, %3
  %i.ab = add i32 %i.a, %i.aa
  %i.ac = udiv i32 %i.ab, %i.g                    ; 2 uses
  %i.ad = sub i32 %i.z, %i.ac                     ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.059.lcssa, i64 104
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !47 ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0
  %i.ah = icmp ult i32 %i.ad, 2
  %or.cond = select i1 %i.ag, i1 true, i1 %i.ah
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %.059.lcssa, i64 48
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !48
  %.not77 = icmp slt i32 %i.aj, %4
  br i1 %.not77, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not78 = icmp eq i32 %i.z, %i.ac
  br i1 %.not78, label %bb.f, label %.lr.ph9.preheader

.lr.ph9.preheader:                                ; preds = %bb.e
  %i.ak = zext i32 %i.ad to i64
  br label %.lr.ph9

.lr.ph9:                                          ; preds = %.lr.ph9.preheader, %.lr.ph9
  %indvars.iv20 = phi i64 [ 0, %.lr.ph9.preheader ], [ %indvars.iv.next21, %.lr.ph9 ] ; 2 uses
  %i.al = tail call noalias ptr @hwloc_bitmap_dup(ptr noundef %i.o) #20
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.06013, i64 %indvars.iv20
  store ptr %i.al, ptr %i.am, align 8, !tbaa !30
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1 ; 2 uses
  %i.an = icmp samesign ult i64 %indvars.iv.next21, %i.ak
  br i1 %i.an, label %.lr.ph9, label %.loopexit, !llvm.loop !49

bb.f:                                             ; preds = %bb.e
  %.not79 = icmp eq i32 %.06311, 0
  br i1 %.not79, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.122, i32 noundef 940, ptr noundef nonnull @__PRETTY_FUNCTION__.hwloc_distrib) #24
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds i8, ptr %.06013, i64 -8
end_hunk_0

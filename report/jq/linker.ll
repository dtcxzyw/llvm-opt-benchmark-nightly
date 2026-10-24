Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jq/original/linker?download=true
inline.NumInlined: 14
inline.NumDeleted: 5
begin_hunk_0_@process_dependencies:bb.a

.preheader:                                       ; preds = %bb.m
  %i.dt = load i64, ptr %i.i, align 8, !tbaa !19
  %.not235 = icmp eq i64 %i.dt, 0
  br i1 %.not235, label %._crit_edge.thread, label %.lr.ph

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %i.du = call fastcc i32 @load_library(ptr noundef %0, i64 %i.dj, ptr %i.dk, i32 noundef %i.ad, i32 noundef %spec.select, i32 noundef %.0187, ptr noundef %.0185, ptr noundef %7, ptr noundef %6)
  %i.dv = add nsw i32 %i.du, %.0174229            ; 2 uses
  %i.dw = icmp eq i32 %i.dv, 0
  br i1 %i.dw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dx = load ptr, ptr %7, align 8               ; 2 uses
  %i.dy = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.dz = tail call { ptr, ptr } @block_bind_library(ptr %i.dx, ptr %i.dy, ptr %.sroa.0126.0230, ptr %.sroa.11.0231, i32 noundef 128, ptr noundef %.0185) #11 ; 2 uses
  %i.ea = extractvalue { ptr, ptr } %i.dz, 0
  %i.eb = extractvalue { ptr, ptr } %i.dz, 1
  %i.ec = tail call { ptr, ptr } @block_bind_library(ptr %i.dx, ptr %i.dy, ptr %i.ea, ptr %i.eb, i32 noundef 128, ptr noundef null) #11 ; 2 uses
  %i.ed = extractvalue { ptr, ptr } %i.ec, 0
  %i.ee = extractvalue { ptr, ptr } %i.ec, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.0126.1 = phi ptr [ %i.ed, %bb.o ], [ %.sroa.0126.0230, %bb.n ]
  %.sroa.11.1 = phi ptr [ %i.ee, %bb.o ], [ %.sroa.11.0231, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %.thread

.lr.ph:                                           ; preds = %.preheader, %bb.q
  %.0180225 = phi i64 [ %i.el, %bb.q ], [ 0, %.preheader ] ; 3 uses
  %i.ef = load ptr, ptr %6, align 8, !tbaa !20
  %i.eg = getelementptr inbounds nuw [32 x i8], ptr %i.ef, i64 %.0180225
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !24
  %i.ei = tail call ptr @jv_string_value(i64 %i.dj, ptr %i.dk) #11
  %i.ej = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.eh, ptr noundef nonnull dereferenceable(1) %i.ei) #13
  %i.ek = icmp eq i32 %i.ej, 0
  %.pre.pre = load i64, ptr %i.i, align 8, !tbaa !19 ; 2 uses
  br i1 %i.ek, label %._crit_edge, label %bb.q

bb.q:                                             ; preds = %.lr.ph
  %i.el = add nuw i64 %.0180225, 1                ; 3 uses
  %i.em = icmp ult i64 %i.el, %.pre.pre
  br i1 %i.em, label %.lr.ph, label %._crit_edge, !llvm.loop !34

._crit_edge:                                      ; preds = %bb.q, %.lr.ph
  %.0180.lcssa.ph = phi i64 [ %i.el, %bb.q ], [ %.0180225, %.lr.ph ] ; 3 uses
  %i.en = icmp ult i64 %.0180.lcssa.ph, %.pre.pre
  br i1 %i.en, label %bb.r, label %._crit_edge.thread

bb.r:                                             ; preds = %._crit_edge
  %i.eo = load ptr, ptr %6, align 8, !tbaa !20
  %i.ep = getelementptr inbounds nuw [32 x i8], ptr %i.eo, i64 %.0180.lcssa.ph
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !25
  %.not191 = icmp eq i32 %i.er, 0
  br i1 %.not191, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  tail call void @jv_free(i64 %i.dj, ptr %i.dk) #11
  %i.es = load ptr, ptr %6, align 8, !tbaa !20
  %i.et = getelementptr inbounds nuw [32 x i8], ptr %i.es, i64 %.0180.lcssa.ph ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8
  %i.ey = tail call { ptr, ptr } @block_bind_library(ptr %i.ev, ptr %i.ex, ptr %.sroa.0126.0230, ptr %.sroa.11.0231, i32 noundef 128, ptr noundef %.0185) #11 ; 2 uses
  %i.ez = extractvalue { ptr, ptr } %i.ey, 0
  %i.fa = extractvalue { ptr, ptr } %i.ey, 1
  br label %.thread

._crit_edge.thread:                               ; preds = %.preheader, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %i.fb = tail call { ptr, ptr } @gen_noop() #11  ; 0 uses
  %i.fc = call fastcc i32 @load_library(ptr noundef %0, i64 %i.dj, ptr %i.dk, i32 noundef %i.ad, i32 noundef %spec.select, i32 noundef %.0187, ptr noundef %.0185, ptr noundef %8, ptr noundef %6)
  %i.fd = add nsw i32 %i.fc, %.0174229            ; 2 uses
  %i.fe = icmp eq i32 %i.fd, 0
  br i1 %i.fe, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge.thread
  %i.ff = load ptr, ptr %8, align 8
  %i.fg = load ptr, ptr %i.j, align 8
  %i.fh = tail call { ptr, ptr } @block_bind_library(ptr %i.ff, ptr %i.fg, ptr %.sroa.0126.0230, ptr %.sroa.11.0231, i32 noundef 128, ptr noundef %.0185) #11 ; 2 uses
  %i.fi = extractvalue { ptr, ptr } %i.fh, 0
  %i.fj = extractvalue { ptr, ptr } %i.fh, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.thread
  %.sroa.0126.2 = phi ptr [ %i.fi, %bb.t ], [ %.sroa.0126.0230, %._crit_edge.thread ]
  %.sroa.11.2 = phi ptr [ %i.fj, %bb.t ], [ %.sroa.11.0231, %._crit_edge.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  br label %.thread

.thread:                                          ; preds = %bb.s, %bb.u, %bb.p
  %.3177 = phi i32 [ %i.dv, %bb.p ], [ %i.fd, %bb.u ], [ %.0174229, %bb.s ]
  %.sroa.0126.5 = phi ptr [ %.sroa.0126.1, %bb.p ], [ %.sroa.0126.2, %bb.u ], [ %i.ez, %bb.s ]
  %.sroa.11.5 = phi ptr [ %.sroa.11.1, %bb.p ], [ %.sroa.11.2, %bb.u ], [ %i.fa, %bb.s ]
  tail call void @jv_free(i64 %i.bs, ptr %i.bt) #11
  br label %bb.v

bb.v:                                             ; preds = %.thread, %bb.l
  %.4178 = phi i32 [ %.3177, %.thread ], [ %.0174229, %bb.l ] ; 2 uses
  %.sroa.0126.6 = phi ptr [ %.sroa.0126.5, %.thread ], [ %.sroa.0126.0230, %bb.l ]
  %.sroa.11.6 = phi ptr [ %.sroa.11.5, %.thread ], [ %.sroa.11.0231, %bb.l ]
  %i.fk = icmp slt i32 %.0181228, 2
  br i1 %i.fk, label %.thread207, label %bb.b

bb.w:                                             ; preds = %bb.r
  %i.fl = tail call ptr @jv_string_value(i64 %i.dj, ptr %i.dk) #11
  %i.fm = tail call { i64, ptr } (ptr, ...) @jv_string_fmt(ptr noundef nonnull @.str.33, ptr noundef %i.fl) #11 ; 2 uses
  %i.fn = extractvalue { i64, ptr } %i.fm, 0
  %i.fo = extractvalue { i64, ptr } %i.fm, 1
  tail call void @jq_report_error(ptr noundef %0, i64 %i.fn, ptr %i.fo) #11
  tail call void @jv_free(i64 %i.dj, ptr %i.dk) #11
  tail call void @jv_free(i64 %i.bs, ptr %i.bt) #11
  tail call void @jv_free(i64 %i.b, ptr %i.c) #11
  tail call void @jv_free(i64 %1, ptr %2) #11
  tail call void @jv_free(i64 %3, ptr %4) #11
  br label %bb.x

.thread207:                                       ; preds = %bb.v, %bb.a
  %.0174.lcssa = phi i32 [ 0, %bb.a ], [ %.4178, %bb.v ]
  tail call void @jv_free(i64 %3, ptr %4) #11
  tail call void @jv_free(i64 %1, ptr %2) #11
  tail call void @jv_free(i64 %i.b, ptr %i.c) #11
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.thread210, %.thread207
  %.5 = phi i32 [ %.0174.lcssa, %.thread207 ], [ 1, %bb.w ], [ 1, %.thread210 ]
  ret i32 %.5
}

declare { i64, ptr } @jq_get_prog_origin(ptr noundef) local_unnamed_addr #2

declare { ptr, ptr } @gen_noop() local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

declare i32 @block_is_const(ptr, ptr) local_unnamed_addr #2

declare { ptr, ptr } @block_drop_unreferenced(ptr, ptr) local_unnamed_addr #2

declare { i64, ptr } @jv_invalid_with_msg(i64, ptr) local_unnamed_addr #2

declare { i64, ptr } @jv_string_fmt(ptr noundef, ...) local_unnamed_addr #2

declare { i64, ptr } @jv_array_get(i64, ptr, i32 noundef) local_unnamed_addr #2

declare i32 @jv_array_length(i64, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

declare { i64, ptr } @jq_realpath(i64, ptr) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

declare { i64, ptr } @jv_invalid_get_msg(i64, ptr) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

declare { i64, ptr } @jv_array() local_unnamed_addr #2

declare { i64, ptr } @expand_path(i64, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #5

declare { i64, ptr } @jv_array_append(i64, ptr, i64, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

declare { i64, ptr } @jv_string_split(i64, ptr, i64, ptr) local_unnamed_addr #2

declare i32 @jv_equal(i64, ptr, i64, ptr) local_unnamed_addr #2

declare { i64, ptr } @jv_object_get(i64, ptr, i64, ptr) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @load_library(ptr noundef %0, i64 %1, ptr %2, i32 noundef range(i32 0, 2) %3, i32 noundef range(i32 0, 2) %4, i32 noundef range(i32 0, 2) %5, ptr noundef %6, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 16)) %7, ptr nofree noundef nonnull captures(none) %8) unnamed_addr #0 {
bb.a:
  %9 = alloca %struct.block, align 8              ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  %i.a = icmp eq i32 %3, 0                        ; 2 uses
  %i.b = icmp ne i32 %4, 0
  %or.cond = or i1 %i.a, %i.b
  %i.c = tail call ptr @jv_string_value(i64 %1, ptr %2) #11
  %. = zext i1 %or.cond to i32
  %10 = tail call { i64, ptr } @jv_load_file(ptr noundef %i.c, i32 noundef %.) #11 ; 2 uses
  %.sroa.14.0 = extractvalue { i64, ptr } %10, 1  ; 10 uses
  %.sroa.035.0 = extractvalue { i64, ptr } %10, 0 ; 10 uses
  %11 = tail call i32 @jv_get_kind(i64 %.sroa.035.0, ptr %.sroa.14.0) #11
  %.not106 = icmp eq i32 %11, 0
  br i1 %.not106, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { ptr, ptr } @gen_noop() #11   ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0
  %i.f = extractvalue { ptr, ptr } %i.d, 1
  store ptr %i.e, ptr %9, align 8, !tbaa !15
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.f, ptr %.sroa.423.0..sroa_idx, align 8, !tbaa !15
  %.not101 = icmp eq i32 %5, 0
  br i1 %.not101, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.g = tail call { i64, ptr } @jv_copy(i64 %.sroa.035.0, ptr %.sroa.14.0) #11 ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.g, 0
  %i.i = extractvalue { i64, ptr } %i.g, 1
  %i.j = tail call i32 @jv_invalid_has_msg(i64 %i.h, ptr %i.i) #11
  %.not102 = icmp eq i32 %i.j, 0
  br i1 %.not102, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call { i64, ptr } @jv_invalid_get_msg(i64 %.sroa.035.0, ptr %.sroa.14.0) #11
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.l = tail call { i64, ptr } @jv_string(ptr noundef nonnull @.str.34) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn103 = phi { i64, ptr } [ %i.k, %bb.d ], [ %i.l, %bb.e ] ; 2 uses
  %.sroa.14.1 = extractvalue { i64, ptr } %.pn103, 1 ; 2 uses
  %.sroa.035.1 = extractvalue { i64, ptr } %.pn103, 0 ; 2 uses
  %i.m = tail call ptr @jv_string_value(i64 %1, ptr %2) #11
  %i.n = tail call ptr @jv_string_value(i64 %.sroa.035.1, ptr %.sroa.14.1) #11
  %i.o = tail call { i64, ptr } (ptr, ...) @jv_string_fmt(ptr noundef nonnull @.str.35, ptr noundef %i.m, ptr noundef %i.n) #11 ; 2 uses
  %i.p = extractvalue { i64, ptr } %i.o, 0
  %i.q = extractvalue { i64, ptr } %i.o, 1
  tail call void @jq_report_error(ptr noundef %0, i64 %i.p, ptr %i.q) #11
  br label %bb.k

bb.g:                                             ; preds = %bb.a
  br i1 %i.a, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = tail call { i64, ptr } @jv_copy(i64 %.sroa.035.0, ptr %.sroa.14.0) #11 ; 2 uses
  %i.s = extractvalue { i64, ptr } %i.r, 0
  %i.t = extractvalue { i64, ptr } %i.r, 1
  %i.u = tail call { ptr, ptr } @gen_const_global(i64 %i.s, ptr %i.t, ptr noundef %6) #11 ; 2 uses
  %i.v = extractvalue { ptr, ptr } %i.u, 0
  %i.w = extractvalue { ptr, ptr } %i.u, 1
  store ptr %i.v, ptr %9, align 8, !tbaa !15
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.w, ptr %.sroa.413.0..sroa_idx, align 8, !tbaa !15
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !19   ; 2 uses
  %i.z = add i64 %i.y, 1                          ; 2 uses
  store i64 %i.z, ptr %i.x, align 8, !tbaa !19
  %i.aa = load ptr, ptr %8, align 8, !tbaa !20
  %i.ab = shl i64 %i.z, 5
  %i.ac = tail call ptr @jv_mem_realloc(ptr noundef %i.aa, i64 noundef %i.ab) #11
  store ptr %i.ac, ptr %8, align 8, !tbaa !20
  %i.ad = tail call ptr @jv_string_value(i64 %1, ptr %2) #11
  %i.ae = tail call noalias ptr @strdup(ptr noundef %i.ad) #11
  %i.af = load ptr, ptr %8, align 8, !tbaa !20
  %i.ag = shl i64 %i.y, 32
  %i.ah = ashr exact i64 %i.ag, 32                ; 2 uses
  %i.ai = getelementptr inbounds [32 x i8], ptr %i.af, i64 %i.ah ; 2 uses
  store ptr %i.ae, ptr %i.ai, align 8, !tbaa !24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !35
  %i.ak = load ptr, ptr %8, align 8, !tbaa !20
  %i.al = getelementptr inbounds [32 x i8], ptr %i.ak, i64 %i.ah
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i32 0, ptr %i.am, align 8, !tbaa !25
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.an = tail call ptr @jv_string_value(i64 %1, ptr %2) #11
  %i.ao = tail call ptr @jv_string_value(i64 %.sroa.035.0, ptr %.sroa.14.0) #11
  %i.ap = tail call { i64, ptr } @jv_copy(i64 %.sroa.035.0, ptr %.sroa.14.0) #11 ; 2 uses
  %i.aq = extractvalue { i64, ptr } %i.ap, 0
  %i.ar = extractvalue { i64, ptr } %i.ap, 1
  %i.as = tail call i32 @jv_string_length_bytes(i64 %i.aq, ptr %i.ar) #11
  %i.at = tail call ptr @locfile_init(ptr noundef %0, ptr noundef %i.an, ptr noundef %i.ao, i32 noundef %i.as) #11 ; 2 uses
  %i.au = call i32 @jq_parse_library(ptr noundef %i.at, ptr noundef nonnull %9) #11 ; 2 uses
  call void @locfile_free(ptr noundef %i.at) #11
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !19 ; 2 uses
  %i.ay = add i64 %i.ax, 1                        ; 2 uses
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !19
  %i.az = load ptr, ptr %8, align 8, !tbaa !20
  %i.ba = shl i64 %i.ay, 5
  %i.bb = call ptr @jv_mem_realloc(ptr noundef %i.az, i64 noundef %i.ba) #11
  store ptr %i.bb, ptr %8, align 8, !tbaa !20
  %i.bc = call ptr @jv_string_value(i64 %1, ptr %2) #11
  %i.bd = call noalias ptr @strdup(ptr noundef %i.bc) #11
  %i.be = load ptr, ptr %8, align 8, !tbaa !20
  %i.bf = shl i64 %i.ax, 32
  %i.bg = ashr exact i64 %i.bf, 32                ; 4 uses
  %i.bh = getelementptr inbounds [32 x i8], ptr %i.be, i64 %i.bg ; 3 uses
  store ptr %i.bd, ptr %i.bh, align 8, !tbaa !24
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = call { ptr, ptr } @gen_noop() #11       ; 2 uses
  %i.bk = extractvalue { ptr, ptr } %i.bj, 0
  %i.bl = extractvalue { ptr, ptr } %i.bj, 1
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !15
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store ptr %i.bl, ptr %.sroa.47.0..sroa_idx, align 8, !tbaa !15
  %i.bm = load ptr, ptr %8, align 8, !tbaa !20
  %i.bn = getelementptr inbounds [32 x i8], ptr %i.bm, i64 %i.bg
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store i32 1, ptr %i.bo, align 8, !tbaa !25
  %i.bp = call ptr @jv_string_value(i64 %1, ptr %2) #11
  %i.bq = call noalias ptr @strdup(ptr noundef %i.bp) #11 ; 2 uses
  %i.br = call { i64, ptr } @jq_get_jq_origin(ptr noundef %0) #11 ; 2 uses
  %i.bs = extractvalue { i64, ptr } %i.br, 0
  %i.bt = extractvalue { i64, ptr } %i.br, 1
  %i.bu = call ptr @dirname(ptr noundef %i.bq) #11
  %i.bv = call { i64, ptr } @jv_string(ptr noundef %i.bu) #11 ; 2 uses
  %i.bw = extractvalue { i64, ptr } %i.bv, 0
  %i.bx = extractvalue { i64, ptr } %i.bv, 1
  %i.by = call fastcc i32 @process_dependencies(ptr noundef %0, i64 %i.bs, ptr %i.bt, i64 %i.bw, ptr %i.bx, ptr noundef %9, ptr noundef %8)
  call void @free(ptr noundef %i.bq) #11
  %i.bz = load ptr, ptr %9, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = call { ptr, ptr } @block_bind_self(ptr %i.bz, ptr %i.cb, i32 noundef 128) #11 ; 2 uses
  %i.cd = extractvalue { ptr, ptr } %i.cc, 0
  %i.ce = extractvalue { ptr, ptr } %i.cc, 1
  store ptr %i.cd, ptr %9, align 8, !tbaa !15
  store ptr %i.ce, ptr %i.ca, align 8, !tbaa !15
  %i.cf = load ptr, ptr %8, align 8, !tbaa !20
  %i.cg = getelementptr inbounds [32 x i8], ptr %i.cf, i64 %i.bg
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !35
  %i.ci = load ptr, ptr %8, align 8, !tbaa !20
  %i.cj = getelementptr inbounds [32 x i8], ptr %i.ci, i64 %i.bg
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  store i32 0, ptr %i.ck, align 8, !tbaa !25
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j, %bb.i, %bb.b, %bb.f
  %.sroa.035.2 = phi i64 [ %.sroa.035.0, %bb.h ], [ %.sroa.035.0, %bb.j ], [ %.sroa.035.0, %bb.i ], [ %.sroa.035.0, %bb.b ], [ %.sroa.035.1, %bb.f ]
  %.sroa.14.2 = phi ptr [ %.sroa.14.0, %bb.h ], [ %.sroa.14.0, %bb.j ], [ %.sroa.14.0, %bb.i ], [ %.sroa.14.0, %bb.b ], [ %.sroa.14.1, %bb.f ]
  %.0 = phi i32 [ 0, %bb.h ], [ %i.by, %bb.j ], [ %i.au, %bb.i ], [ 0, %bb.b ], [ 1, %bb.f ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !35
  call void @jv_free(i64 %1, ptr %2) #11
  call void @jv_free(i64 %.sroa.035.2, ptr %.sroa.14.2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  ret i32 %.0
}

declare { ptr, ptr } @block_bind_library(ptr, ptr, ptr, ptr, i32 noundef, ptr noundef) local_unnamed_addr #2

declare { i64, ptr } @jv_array_concat(i64, ptr, i64, ptr) local_unnamed_addr #2

declare i32 @jv_invalid_has_msg(i64, ptr) local_unnamed_addr #2

declare { ptr, ptr } @gen_const_global(i64, ptr, ptr noundef) local_unnamed_addr #2

declare ptr @jv_mem_realloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #9

; Function Attrs: nounwind
declare ptr @dirname(ptr noundef) local_unnamed_addr #10

declare { ptr, ptr } @block_bind_self(ptr, ptr, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!"p1 _ZTS4inst", !13, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"p1 _ZTS9lib_entry", !13, i64 0}
!17 = !{!"long", !8, i64 0}
!18 = !{!"lib_loading_state", !16, i64 0, !17, i64 8}
!19 = !{!18, !17, i64 8}
!20 = !{!18, !16, i64 0}
!21 = !{!"p1 omnipotent char", !13, i64 0}
!22 = !{!"block", !14, i64 0, !14, i64 8}
!23 = !{!"lib_entry", !21, i64 0, !22, i64 8, !9, i64 24}
!24 = !{!23, !21, i64 0}
!25 = !{!23, !9, i64 24}
!26 = distinct !{!26, !12}
!27 = distinct !{!27, !12}
!28 = !{!8, !8, i64 0}
!29 = !{!9, !9, i64 0}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.peeled.count", i32 1}
!32 = distinct !{!32, !12}
!33 = distinct !{!33, !12}
!34 = distinct !{!34, !12}
!35 = !{i64 0, i64 8, !15, i64 8, i64 8, !15}
end_hunk_0

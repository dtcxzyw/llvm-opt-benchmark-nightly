Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jq/original/linker?download=true
inline.NumInlined: 14
inline.NumDeleted: 5
begin_hunk_0_@process_dependencies:bb.a
  %i.n = extractvalue { i64, ptr } %i.m, 0
  %i.o = extractvalue { i64, ptr } %i.m, 1
  %i.p = tail call { i64, ptr } @jv_array_get(i64 %i.n, ptr %i.o, i32 noundef %i.l) #11 ; 2 uses
  %i.q = extractvalue { i64, ptr } %i.p, 0        ; 6 uses
  %i.r = extractvalue { i64, ptr } %i.p, 1        ; 6 uses
  %i.s = tail call { i64, ptr } @jv_copy(i64 %i.q, ptr %i.r) #11 ; 2 uses
  %i.t = extractvalue { i64, ptr } %i.s, 0
  %i.u = extractvalue { i64, ptr } %i.s, 1
  %i.v = tail call { i64, ptr } @jv_string(ptr noundef nonnull @.str.26) #11 ; 2 uses
  %i.w = extractvalue { i64, ptr } %i.v, 0
  %i.x = extractvalue { i64, ptr } %i.v, 1
  %i.y = tail call { i64, ptr } @jv_object_get(i64 %i.t, ptr %i.u, i64 %i.w, ptr %i.x) #11 ; 2 uses
  %i.z = extractvalue { i64, ptr } %i.y, 0
  %i.aa = extractvalue { i64, ptr } %i.y, 1
  %i.ab = tail call i32 @jv_get_kind(i64 %i.z, ptr %i.aa) #11
  %i.ac = icmp eq i32 %i.ab, 3                    ; 3 uses
  %i.ad = zext i1 %i.ac to i32                    ; 2 uses
  %i.ae = tail call { i64, ptr } @jv_copy(i64 %i.q, ptr %i.r) #11 ; 2 uses
  %i.af = extractvalue { i64, ptr } %i.ae, 0
  %i.ag = extractvalue { i64, ptr } %i.ae, 1
  %i.ah = tail call { i64, ptr } @jv_string(ptr noundef nonnull @.str.27) #11 ; 2 uses
  %i.ai = extractvalue { i64, ptr } %i.ah, 0
  %i.aj = extractvalue { i64, ptr } %i.ah, 1
  %i.ak = tail call { i64, ptr } @jv_object_get(i64 %i.af, ptr %i.ag, i64 %i.ai, ptr %i.aj) #11 ; 2 uses
  %i.al = extractvalue { i64, ptr } %i.ak, 0      ; 2 uses
  %i.am = extractvalue { i64, ptr } %i.ak, 1      ; 2 uses
  %i.an = tail call i32 @jv_get_kind(i64 %i.al, ptr %i.am) #11
  %i.ao = icmp eq i32 %i.an, 3
  %spec.select = zext i1 %i.ao to i32             ; 2 uses
  %i.ap = tail call { i64, ptr } @jv_copy(i64 %i.q, ptr %i.r) #11 ; 2 uses
  %i.aq = extractvalue { i64, ptr } %i.ap, 0
  %i.ar = extractvalue { i64, ptr } %i.ap, 1
  %i.as = tail call { i64, ptr } @jv_string(ptr noundef nonnull @.str.5) #11 ; 2 uses
  %i.at = extractvalue { i64, ptr } %i.as, 0
  %i.au = extractvalue { i64, ptr } %i.as, 1
  %i.av = tail call { i64, ptr } @jv_object_get(i64 %i.aq, ptr %i.ar, i64 %i.at, ptr %i.au) #11 ; 2 uses
  %i.aw = extractvalue { i64, ptr } %i.av, 0
  %i.ax = extractvalue { i64, ptr } %i.av, 1
  %i.ay = tail call i32 @jv_get_kind(i64 %i.aw, ptr %i.ax) #11
  %.not190 = icmp eq i32 %i.ay, 3                 ; 2 uses
  %.0187 = zext i1 %.not190 to i32                ; 2 uses
  tail call void @jv_free(i64 %i.al, ptr %i.am) #11
  %i.az = tail call { i64, ptr } @jv_copy(i64 %i.q, ptr %i.r) #11 ; 2 uses
  %i.ba = extractvalue { i64, ptr } %i.az, 0
  %i.bb = extractvalue { i64, ptr } %i.az, 1
  %i.bc = tail call { i64, ptr } @jv_string(ptr noundef nonnull @.str.28) #11 ; 2 uses
  %i.bd = extractvalue { i64, ptr } %i.bc, 0
  %i.be = extractvalue { i64, ptr } %i.bc, 1
  %i.bf = tail call { i64, ptr } @jv_object_get(i64 %i.ba, ptr %i.bb, i64 %i.bd, ptr %i.be) #11 ; 2 uses
  %i.bg = extractvalue { i64, ptr } %i.bf, 0
  %i.bh = extractvalue { i64, ptr } %i.bf, 1
  %i.bi = tail call fastcc { i64, ptr } @validate_relpath(i64 %i.bg, ptr %i.bh) ; 2 uses
  %i.bj = extractvalue { i64, ptr } %i.bi, 0
  %i.bk = extractvalue { i64, ptr } %i.bi, 1
  %i.bl = tail call { i64, ptr } @jv_copy(i64 %i.q, ptr %i.r) #11 ; 2 uses
  %i.bm = extractvalue { i64, ptr } %i.bl, 0
  %i.bn = extractvalue { i64, ptr } %i.bl, 1
  %i.bo = tail call { i64, ptr } @jv_string(ptr noundef nonnull @.str.29) #11 ; 2 uses
  %i.bp = extractvalue { i64, ptr } %i.bo, 0
  %i.bq = extractvalue { i64, ptr } %i.bo, 1
  %i.br = tail call { i64, ptr } @jv_object_get(i64 %i.bm, ptr %i.bn, i64 %i.bp, ptr %i.bq) #11 ; 2 uses
  %i.bs = extractvalue { i64, ptr } %i.br, 0      ; 7 uses
  %i.bt = extractvalue { i64, ptr } %i.br, 1      ; 7 uses
  %i.bu = tail call i32 @jv_get_kind(i64 %i.bs, ptr %i.bt) #11
  %.not211 = icmp eq i32 %i.bu, 0
  br i1 %.not211, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bv = tail call i32 @jv_get_kind(i64 %i.bs, ptr %i.bt) #11
  %i.bw = icmp eq i32 %i.bv, 5
  br i1 %i.bw, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.15, i32 noundef 274, ptr noundef nonnull @__PRETTY_FUNCTION__.process_dependencies) #12
  unreachable

bb.e:                                             ; preds = %bb.b, %bb.c
  %i.bx = tail call i32 @jv_get_kind(i64 %i.bs, ptr %i.bt) #11
  %i.by = icmp eq i32 %i.bx, 5
  br i1 %i.by, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bz = tail call ptr @jv_string_value(i64 %i.bs, ptr %i.bt) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0185 = phi ptr [ %i.bz, %bb.f ], [ null, %bb.e ] ; 5 uses
  %i.ca = tail call { i64, ptr } @jv_string(ptr noundef nonnull @.str.6) #11 ; 2 uses
  %i.cb = extractvalue { i64, ptr } %i.ca, 0
  %i.cc = extractvalue { i64, ptr } %i.ca, 1
  %i.cd = tail call { i64, ptr } @jv_object_get(i64 %i.q, ptr %i.r, i64 %i.cb, ptr %i.cc) #11 ; 3 uses
  %i.ce = extractvalue { i64, ptr } %i.cd, 0      ; 4 uses
  %i.cf = extractvalue { i64, ptr } %i.cd, 1      ; 4 uses
  %i.cg = tail call i32 @jv_get_kind(i64 %i.ce, ptr %i.cf) #11
  %.not18.i = icmp eq i32 %i.cg, 0
  br i1 %.not18.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @jv_free(i64 %i.ce, ptr %i.cf) #11
  %i.ch = tail call { i64, ptr } @jv_array() #11  ; 2 uses
  %i.ci = extractvalue { i64, ptr } %i.ch, 0
  %i.cj = extractvalue { i64, ptr } %i.ch, 1
  %i.ck = tail call { i64, ptr } @jv_string(ptr noundef nonnull @.str.16) #11 ; 2 uses
  %i.cl = extractvalue { i64, ptr } %i.ck, 0
  %i.cm = extractvalue { i64, ptr } %i.ck, 1
  %i.cn = tail call { i64, ptr } @jv_array_append(i64 %i.ci, ptr %i.cj, i64 %i.cl, ptr %i.cm) #11 ; 2 uses
  %i.co = extractvalue { i64, ptr } %i.cn, 0
  %i.cp = extractvalue { i64, ptr } %i.cn, 1
  %i.cq = tail call { i64, ptr } @jq_get_lib_dirs(ptr noundef %0) #11 ; 2 uses
  %i.cr = extractvalue { i64, ptr } %i.cq, 0
  %i.cs = extractvalue { i64, ptr } %i.cq, 1
  %i.ct = tail call { i64, ptr } @jv_array_concat(i64 %i.co, ptr %i.cp, i64 %i.cr, ptr %i.cs) #11
  br label %default_search.exit

bb.i:                                             ; preds = %bb.g
  %i.cu = tail call i32 @jv_get_kind(i64 %i.ce, ptr %i.cf) #11
  %.not17.i = icmp eq i32 %i.cu, 6
  br i1 %.not17.i, label %default_search.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cv = tail call { i64, ptr } @jv_array() #11  ; 2 uses
  %i.cw = extractvalue { i64, ptr } %i.cv, 0
  %i.cx = extractvalue { i64, ptr } %i.cv, 1
  %i.cy = tail call { i64, ptr } @jv_array_append(i64 %i.cw, ptr %i.cx, i64 %i.ce, ptr %i.cf) #11
  br label %default_search.exit

default_search.exit:                              ; preds = %bb.i, %bb.h, %bb.j
  %.fca.1.insert.merged.i = phi { i64, ptr } [ %i.cy, %bb.j ], [ %i.ct, %bb.h ], [ %i.cd, %bb.i ] ; 2 uses
  %i.cz = extractvalue { i64, ptr } %.fca.1.insert.merged.i, 0
  %i.da = extractvalue { i64, ptr } %.fca.1.insert.merged.i, 1
  %i.db = select i1 %i.ac, ptr @.str.31, ptr @.str
  %i.dc = tail call { i64, ptr } @jv_copy(i64 %1, ptr %2) #11 ; 2 uses
  %i.dd = extractvalue { i64, ptr } %i.dc, 0
  %i.de = extractvalue { i64, ptr } %i.dc, 1
  %i.df = tail call { i64, ptr } @jv_copy(i64 %3, ptr %4) #11 ; 2 uses
  %i.dg = extractvalue { i64, ptr } %i.df, 0
  %i.dh = extractvalue { i64, ptr } %i.df, 1
  %i.di = tail call fastcc { i64, ptr } @find_lib(i64 %i.bj, ptr %i.bk, i64 %i.cz, ptr %i.da, ptr noundef nonnull %i.db, i64 %i.dd, ptr %i.de, i64 %i.dg, ptr %i.dh) ; 2 uses
  %i.dj = extractvalue { i64, ptr } %i.di, 0      ; 9 uses
  %i.dk = extractvalue { i64, ptr } %i.di, 1      ; 9 uses
  %i.dl = tail call i32 @jv_get_kind(i64 %i.dj, ptr %i.dk) #11
  %.not = icmp eq i32 %i.dl, 0
  br i1 %.not, label %bb.k, label %bb.m

bb.k:                                             ; preds = %default_search.exit
  tail call void @jv_free(i64 %i.bs, ptr %i.bt) #11
  br i1 %.not190, label %bb.l, label %.thread210

bb.l:                                             ; preds = %bb.k
  tail call void @jv_free(i64 %i.dj, ptr %i.dk) #11
  br label %bb.v, !llvm.loop !33

.thread210:                                       ; preds = %bb.k
  %i.dm = tail call { i64, ptr } @jv_invalid_get_msg(i64 %i.dj, ptr %i.dk) #11 ; 2 uses
  %i.dn = extractvalue { i64, ptr } %i.dm, 0      ; 2 uses
  %i.do = extractvalue { i64, ptr } %i.dm, 1      ; 2 uses
  %i.dp = tail call ptr @jv_string_value(i64 %i.dn, ptr %i.do) #11
  %i.dq = tail call { i64, ptr } (ptr, ...) @jv_string_fmt(ptr noundef nonnull @.str.32, ptr noundef %i.dp) #11 ; 2 uses
  %i.dr = extractvalue { i64, ptr } %i.dq, 0
  %i.ds = extractvalue { i64, ptr } %i.dq, 1
  tail call void @jq_report_error(ptr noundef %0, i64 %i.dr, ptr %i.ds) #11
  tail call void @jv_free(i64 %i.dn, ptr %i.do) #11
  tail call void @jv_free(i64 %i.b, ptr %i.c) #11
  tail call void @jv_free(i64 %1, ptr %2) #11
  tail call void @jv_free(i64 %3, ptr %4) #11
  br label %bb.x

bb.m:                                             ; preds = %default_search.exit
  br i1 %i.ac, label %bb.n, label %.preheader

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
  %.0180225 = phi i64 [ %i.el, %bb.q ], [ 0, %.preheader ] ; 5 uses
  %i.ef = load ptr, ptr %6, align 8, !tbaa !20
  %i.eg = getelementptr inbounds nuw [32 x i8], ptr %i.ef, i64 %.0180225
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !24
  %i.ei = tail call ptr @jv_string_value(i64 %i.dj, ptr %i.dk) #11
  %i.ej = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.eh, ptr noundef nonnull dereferenceable(1) %i.ei) #13
  %i.ek = icmp eq i32 %i.ej, 0
  %.pre.pre = load i64, ptr %i.i, align 8, !tbaa !19 ; 2 uses
  br i1 %i.ek, label %._crit_edge, label %bb.q

bb.q:                                             ; preds = %.lr.ph
  %i.el = add nuw i64 %.0180225, 1                ; 2 uses
  %i.em = icmp ult i64 %i.el, %.pre.pre
  br i1 %i.em, label %.lr.ph, label %._crit_edge.thread, !llvm.loop !34

._crit_edge:                                      ; preds = %.lr.ph
  %i.en = icmp ult i64 %.0180225, %.pre.pre
  br i1 %i.en, label %bb.r, label %._crit_edge.thread

bb.r:                                             ; preds = %._crit_edge
  %i.eo = load ptr, ptr %6, align 8, !tbaa !20
  %i.ep = getelementptr inbounds nuw [32 x i8], ptr %i.eo, i64 %.0180225
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !25
  %.not191 = icmp eq i32 %i.er, 0
  br i1 %.not191, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  tail call void @jv_free(i64 %i.dj, ptr %i.dk) #11
  %i.es = load ptr, ptr %6, align 8, !tbaa !20
  %i.et = getelementptr inbounds nuw [32 x i8], ptr %i.es, i64 %.0180225 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8
  %i.ey = tail call { ptr, ptr } @block_bind_library(ptr %i.ev, ptr %i.ex, ptr %.sroa.0126.0230, ptr %.sroa.11.0231, i32 noundef 128, ptr noundef %.0185) #11 ; 2 uses
  %i.ez = extractvalue { ptr, ptr } %i.ey, 0
  %i.fa = extractvalue { ptr, ptr } %i.ey, 1
  br label %.thread

._crit_edge.thread:                               ; preds = %bb.q, %.preheader, %._crit_edge
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
  %i.d = tail call { i64, ptr } @jv_load_file(ptr noundef %i.c, i32 noundef %.) #11 ; 2 uses
  %.sroa.14.0 = extractvalue { i64, ptr } %i.d, 1 ; 10 uses
  %.sroa.035.0 = extractvalue { i64, ptr } %i.d, 0 ; 10 uses
  %i.e = tail call i32 @jv_get_kind(i64 %.sroa.035.0, ptr %.sroa.14.0) #11
  %.not107 = icmp eq i32 %i.e, 0
  br i1 %.not107, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = tail call { ptr, ptr } @gen_noop() #11   ; 2 uses
  %i.g = extractvalue { ptr, ptr } %i.f, 0
  %i.h = extractvalue { ptr, ptr } %i.f, 1
  store ptr %i.g, ptr %9, align 8, !tbaa !15
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.h, ptr %.sroa.423.0..sroa_idx, align 8, !tbaa !15
  %.not101 = icmp eq i32 %5, 0
  br i1 %.not101, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.i = tail call { i64, ptr } @jv_copy(i64 %.sroa.035.0, ptr %.sroa.14.0) #11 ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.i, 0
  %i.k = extractvalue { i64, ptr } %i.i, 1
  %i.l = tail call i32 @jv_invalid_has_msg(i64 %i.j, ptr %i.k) #11
  %.not102 = icmp eq i32 %i.l, 0
  br i1 %.not102, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call { i64, ptr } @jv_invalid_get_msg(i64 %.sroa.035.0, ptr %.sroa.14.0) #11
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = tail call { i64, ptr } @jv_string(ptr noundef nonnull @.str.34) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn103 = phi { i64, ptr } [ %i.m, %bb.d ], [ %i.n, %bb.e ] ; 2 uses
  %.sroa.14.1 = extractvalue { i64, ptr } %.pn103, 1 ; 2 uses
  %.sroa.035.1 = extractvalue { i64, ptr } %.pn103, 0 ; 2 uses
  %i.o = tail call ptr @jv_string_value(i64 %1, ptr %2) #11
  %i.p = tail call ptr @jv_string_value(i64 %.sroa.035.1, ptr %.sroa.14.1) #11
  %i.q = tail call { i64, ptr } (ptr, ...) @jv_string_fmt(ptr noundef nonnull @.str.35, ptr noundef %i.o, ptr noundef %i.p) #11 ; 2 uses
  %i.r = extractvalue { i64, ptr } %i.q, 0
  %i.s = extractvalue { i64, ptr } %i.q, 1
  tail call void @jq_report_error(ptr noundef %0, i64 %i.r, ptr %i.s) #11
  br label %bb.k

bb.g:                                             ; preds = %bb.a
  br i1 %i.a, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = tail call { i64, ptr } @jv_copy(i64 %.sroa.035.0, ptr %.sroa.14.0) #11 ; 2 uses
  %i.u = extractvalue { i64, ptr } %i.t, 0
  %i.v = extractvalue { i64, ptr } %i.t, 1
  %i.w = tail call { ptr, ptr } @gen_const_global(i64 %i.u, ptr %i.v, ptr noundef %6) #11 ; 2 uses
  %i.x = extractvalue { ptr, ptr } %i.w, 0
  %i.y = extractvalue { ptr, ptr } %i.w, 1
  store ptr %i.x, ptr %9, align 8, !tbaa !15
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.y, ptr %.sroa.413.0..sroa_idx, align 8, !tbaa !15
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !19  ; 2 uses
  %i.ab = add i64 %i.aa, 1                        ; 2 uses
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !19
  %i.ac = load ptr, ptr %8, align 8, !tbaa !20
  %i.ad = shl i64 %i.ab, 5
  %i.ae = tail call ptr @jv_mem_realloc(ptr noundef %i.ac, i64 noundef %i.ad) #11
  store ptr %i.ae, ptr %8, align 8, !tbaa !20
  %i.af = tail call ptr @jv_string_value(i64 %1, ptr %2) #11
  %i.ag = tail call noalias ptr @strdup(ptr noundef %i.af) #11
  %i.ah = load ptr, ptr %8, align 8, !tbaa !20
  %sext106 = shl i64 %i.aa, 32
  %i.ai = ashr exact i64 %sext106, 32             ; 2 uses
end_hunk_0

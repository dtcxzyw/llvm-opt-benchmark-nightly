Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jq/original/execute?download=true
inline.NumInlined: 149
inline.NumDeleted: 21
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@frame_push:bb.a
  %i.bx = getelementptr inbounds i8, ptr %.val, i64 %i.bw ; 3 uses
  %i.by = zext i16 %.val35 to i32                 ; 3 uses
  %i.bz = and i32 %i.by, 4096
  %.not.i = icmp eq i32 %i.bz, 0
  br i1 %.not.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %frame_get_level.exit.i
  %i.ca = and i32 %i.by, 61439                    ; 2 uses
  %i.cb = load ptr, ptr %i.bx, align 8, !tbaa !39 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 56
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !58
  %i.ce = icmp slt i32 %i.ca, %i.cd
  br i1 %i.ce, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.1, i32 noundef 116, ptr noundef nonnull @__PRETTY_FUNCTION__.make_closure) #16
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !59
  %i.ch = zext nneg i32 %i.ca to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ch
  br label %make_closure.exit

bb.i:                                             ; preds = %frame_get_level.exit.i
  %i.cj = load ptr, ptr %i.bx, align 8, !tbaa !39
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !48
  %i.cm = icmp sgt i32 %i.cl, %i.by
  br i1 %i.cm, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.1, i32 noundef 125, ptr noundef nonnull @__PRETTY_FUNCTION__.make_closure) #16
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.co = zext i16 %.val35 to i64
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.cn, i64 %i.co ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %.sroa.3.0.copyload.i = load i32, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !26
  br label %make_closure.exit

make_closure.exit:                                ; preds = %bb.h, %bb.k
  %.sroa.0.0.in.i = phi ptr [ %i.ci, %bb.h ], [ %i.cp, %bb.k ]
  %.sroa.3.0.i = phi i32 [ %.0.lcssa.i.i, %bb.h ], [ %.sroa.3.0.copyload.i, %bb.k ]
  %.sroa.0.0.i = load ptr, ptr %.sroa.0.0.in.i, align 8, !tbaa !39
  store ptr %.sroa.0.0.i, ptr %.02941, align 8, !tbaa !39
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.02941, i64 8
  store i32 %.sroa.3.0.i, ptr %.sroa.43.0..sroa_idx, align 8, !tbaa !26
  %i.cq = getelementptr inbounds nuw i8, ptr %.02941, i64 16 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !92

._crit_edge:                                      ; preds = %.lr.ph44, %.preheader
  store i32 %i.k, ptr %i.b, align 8, !tbaa !28
  ret ptr %i.aj

.lr.ph44:                                         ; preds = %.preheader, %.lr.ph44
  %.043 = phi i32 [ %i.cv, %.lr.ph44 ], [ 0, %.preheader ]
  %.142 = phi ptr [ %i.cu, %.lr.ph44 ], [ %.029.lcssa, %.preheader ] ; 3 uses
  %i.cr = tail call { i64, ptr } @jv_invalid() #15 ; 2 uses
  %i.cs = extractvalue { i64, ptr } %i.cr, 0
  %i.ct = extractvalue { i64, ptr } %i.cr, 1
  store i64 %i.cs, ptr %.142, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.142, i64 8
  store ptr %i.ct, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !27
  %i.cu = getelementptr inbounds nuw i8, ptr %.142, i64 16
  %i.cv = add nuw nsw i32 %.043, 1                ; 2 uses
  %i.cw = load i32, ptr %i.d, align 4, !tbaa !47
  %i.cx = icmp slt i32 %i.cv, %i.cw
  br i1 %i.cx, label %.lr.ph44, label %._crit_edge, !llvm.loop !93
}

; Function Attrs: nounwind uwtable
define dso_local { i64, ptr } @jq_format_error(i64 %0, ptr %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @jv_get_kind(i64 %0, ptr %1) #15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %tailrecurse.backedge
  %.tr4758 = phi ptr [ %.tr47.be, %tailrecurse.backedge ], [ %1, %bb.a ] ; 8 uses
  %.tr57 = phi i64 [ %.tr.be, %tailrecurse.backedge ], [ %0, %bb.a ] ; 8 uses
  %i.c = tail call i32 @jv_get_kind(i64 %.tr57, ptr %.tr4758) #15
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.e = tail call { i64, ptr } @jv_copy(i64 %.tr57, ptr %.tr4758) #15 ; 2 uses
  %i.f = extractvalue { i64, ptr } %i.e, 0
  %i.g = extractvalue { i64, ptr } %i.e, 1
  %i.h = tail call i32 @jv_invalid_has_msg(i64 %i.f, ptr %i.g) #15
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %tailrecurse.backedge, %bb.b, %bb.a
  %.tr.lcssa = phi i64 [ %0, %bb.a ], [ %.tr57, %bb.b ], [ %.tr.be, %tailrecurse.backedge ]
  %.tr47.lcssa = phi ptr [ %1, %bb.a ], [ %.tr4758, %bb.b ], [ %.tr47.be, %tailrecurse.backedge ]
  tail call void @jv_free(i64 %.tr.lcssa, ptr %.tr47.lcssa) #15
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !25
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.30, i64 25, i64 1, ptr %i.i) #17 ; 0 uses
  %i.j = tail call { i64, ptr } @jv_null() #15
  br label %bb.o

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.k = tail call i32 @jv_get_kind(i64 %.tr57, ptr %.tr4758) #15
  %i.l = icmp eq i32 %i.k, 5
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = insertvalue { i64, ptr } poison, i64 %.tr57, 0
  %i.n = insertvalue { i64, ptr } %i.m, ptr %.tr4758, 1
  br label %bb.o

bb.e:                                             ; preds = %bb.c
  %i.o = tail call i32 @jv_get_kind(i64 %.tr57, ptr %.tr4758) #15
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = tail call { i64, ptr } @jv_invalid_get_msg(i64 %.tr57, ptr %.tr4758) #15 ; 2 uses
  %i.r = extractvalue { i64, ptr } %i.q, 0
  %i.s = extractvalue { i64, ptr } %i.q, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.08.0 = phi i64 [ %i.r, %bb.f ], [ %.tr57, %bb.e ] ; 8 uses
  %.sroa.23.0 = phi ptr [ %i.s, %bb.f ], [ %.tr4758, %bb.e ] ; 8 uses
  %i.t = tail call i32 @jv_get_kind(i64 %.sroa.08.0, ptr %.sroa.23.0) #15
  %i.u = icmp eq i32 %i.t, 1
  br i1 %i.u, label %tailrecurse.backedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = tail call i32 @jv_get_kind(i64 %.sroa.08.0, ptr %.sroa.23.0) #15
  %.not46 = icmp eq i32 %i.v, 0
  br i1 %.not46, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = tail call i32 @jv_get_kind(i64 %.sroa.08.0, ptr %.sroa.23.0) #15
  %i.x = icmp eq i32 %i.w, 5
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = tail call ptr @jv_string_value(i64 %.sroa.08.0, ptr %.sroa.23.0) #15
  %i.z = tail call { i64, ptr } (ptr, ...) @jv_string_fmt(ptr noundef nonnull @.str.31, ptr noundef %i.y) #15
  tail call void @jv_free(i64 %.sroa.08.0, ptr %.sroa.23.0) #15
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  %i.aa = tail call { i64, ptr } @jv_dump_string(i64 %.sroa.08.0, ptr %.sroa.23.0, i32 noundef 16) #15 ; 2 uses
  %i.ab = extractvalue { i64, ptr } %i.aa, 0      ; 4 uses
  %i.ac = extractvalue { i64, ptr } %i.aa, 1      ; 4 uses
  %i.ad = tail call i32 @jv_get_kind(i64 %i.ab, ptr %i.ac) #15
  %i.ae = icmp eq i32 %i.ad, 5
  br i1 %i.ae, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.af = tail call ptr @jv_string_value(i64 %i.ab, ptr %i.ac) #15
  %i.ag = tail call { i64, ptr } (ptr, ...) @jv_string_fmt(ptr noundef nonnull @.str.31, ptr noundef %i.af) #15
  tail call void @jv_free(i64 %i.ab, ptr %i.ac) #15
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  tail call void @jv_free(i64 %i.ab, ptr %i.ac) #15
  %i.ah = tail call { i64, ptr } @jv_null() #15   ; 2 uses
  %i.ai = extractvalue { i64, ptr } %i.ah, 0
  %i.aj = extractvalue { i64, ptr } %i.ah, 1
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %bb.m, %bb.n, %bb.g
  %.tr.be = phi i64 [ %i.an, %bb.n ], [ %i.ai, %bb.m ], [ %.sroa.08.0, %bb.g ] ; 3 uses
  %.tr47.be = phi ptr [ %i.ao, %bb.n ], [ %i.aj, %bb.m ], [ %.sroa.23.0, %bb.g ] ; 3 uses
  %i.ak = tail call i32 @jv_get_kind(i64 %.tr.be, ptr %.tr47.be) #15
  %i.al = icmp eq i32 %i.ak, 1
  br i1 %i.al, label %._crit_edge, label %.lr.ph

bb.n:                                             ; preds = %bb.h
  %i.am = tail call { i64, ptr } @jv_invalid_get_msg(i64 %.sroa.08.0, ptr %.sroa.23.0) #15 ; 2 uses
  %i.an = extractvalue { i64, ptr } %i.am, 0
  %i.ao = extractvalue { i64, ptr } %i.am, 1
  br label %tailrecurse.backedge

bb.o:                                             ; preds = %bb.l, %bb.j, %bb.d, %._crit_edge
  %.fca.1.insert.merged = phi { i64, ptr } [ %i.j, %._crit_edge ], [ %i.n, %bb.d ], [ %i.ag, %bb.l ], [ %i.z, %bb.j ]
  ret { i64, ptr } %.fca.1.insert.merged
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

declare ptr @jv_string_value(i64, ptr) local_unnamed_addr #3

declare { i64, ptr } @jv_dump_string(i64, ptr, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @jq_init() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @jv_mem_alloc_unguarded(i64 noundef 240) #15 ; 24 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.c, align 8, !tbaa !60
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 132
  store i32 0, ptr %i.d, align 4, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr null, ptr %i.e, align 8, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i32 8, ptr %i.f, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.i = tail call { i64, ptr } @jv_null() #15    ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.i, 0
  %i.k = extractvalue { i64, ptr } %i.i, 1
  store i64 %i.j, ptr %i.h, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.k, ptr %.sroa.410.0..sroa_idx, align 8, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i32 0, ptr %i.l, align 8, !tbaa !54
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.n = tail call { i64, ptr } @jv_invalid() #15 ; 2 uses
  %i.o = extractvalue { i64, ptr } %i.n, 0
  %i.p = extractvalue { i64, ptr } %i.n, 1
  store i64 %i.o, ptr %i.m, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store ptr %i.p, ptr %.sroa.48.0..sroa_idx, align 8, !tbaa !27
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.r = tail call { i64, ptr } @jv_invalid() #15 ; 2 uses
  %i.s = extractvalue { i64, ptr } %i.r, 0
  %i.t = extractvalue { i64, ptr } %i.r, 1
  store i64 %i.s, ptr %i.q, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store ptr %i.t, ptr %.sroa.46.0..sroa_idx, align 8, !tbaa !27
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.u, i8 0, i64 48, i1 false)
  store ptr @default_err_cb, ptr %i.v, align 8, !tbaa !49
  %i.w = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.w, ptr %i.x, align 8, !tbaa !50
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.z = tail call { i64, ptr } @jv_object() #15  ; 2 uses
  %i.aa = extractvalue { i64, ptr } %i.z, 0
  %i.ab = extractvalue { i64, ptr } %i.z, 1
  store i64 %i.aa, ptr %i.y, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store ptr %i.ab, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !27
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.ad = tail call { i64, ptr } @jv_null() #15   ; 2 uses
  %i.ae = extractvalue { i64, ptr } %i.ad, 0
  %i.af = extractvalue { i64, ptr } %i.ad, 1
  store i64 %i.ae, ptr %i.ac, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr %i.af, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !27
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.ah = tail call { i64, ptr } @jv_null() #15   ; 2 uses
  %i.ai = extractvalue { i64, ptr } %i.ah, 0
  %i.aj = extractvalue { i64, ptr } %i.ah, 1
  store i64 %i.ai, ptr %i.ag, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr %i.aj, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

declare ptr @jv_mem_alloc_unguarded(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @default_err_cb(ptr nofree noundef captures(none) %0, i64 %1, ptr %2) #0 {
bb.a:
  %i.a = tail call { i64, ptr } @jq_format_error(i64 %1, ptr %2) ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0        ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.a, 1        ; 2 uses
  %i.d = tail call ptr @jv_string_value(i64 %i.b, ptr %i.c) #15
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.53, ptr noundef %i.d) #15 ; 0 uses
  tail call void @jv_free(i64 %i.b, ptr %i.c) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @jq_set_error_cb(ptr nofree noundef writeonly captures(none) initializes((24, 40)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %1, null                     ; 2 uses
  %i.b = load ptr, ptr @stderr, align 8
  %spec.select = select i1 %i.a, ptr @default_err_cb, ptr %1
  %spec.select8 = select i1 %i.a, ptr %i.b, ptr %2
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %spec.select, ptr %i.c, align 8, !tbaa !49
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %spec.select8, ptr %i.d, align 8, !tbaa !50
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @jq_get_error_cb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49
  store ptr %i.b, ptr %1, align 8, !tbaa !61
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50
  store ptr %i.d, ptr %2, align 8, !tbaa !61
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @jq_set_nomem_handler(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call void @jv_nomem_handler(ptr noundef %1, ptr noundef %2) #15
  store ptr %1, ptr %0, align 8, !tbaa !51
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !52
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @jq_start(ptr nofree noundef captures(none) %0, i64 %1, ptr %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52
  tail call void @jv_nomem_handler(ptr noundef %i.a, ptr noundef %i.c) #15
  tail call fastcc void @jq_reset(ptr noundef nonnull %0)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !60
  %i.f = tail call fastcc ptr @frame_push(ptr noundef nonnull %0, ptr %i.e, i32 -1, ptr noundef null, i32 noundef 0) ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr null, ptr %i.h, align 8, !tbaa !40
  tail call void @stack_push(ptr noundef nonnull %0, i64 %1, ptr %2)
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !60
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !45
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.l = load i32, ptr %i.k, align 4, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load i32, ptr %i.m, align 8, !tbaa !28
  %.sroa.2.0.insert.ext.i = zext i32 %i.n to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.l to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  tail call void @stack_save(ptr noundef nonnull %0, ptr noundef %i.j, i64 %.sroa.0.0.insert.insert.i)
  %i.o = and i32 %3, 3
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 %i.o, ptr %i.p, align 4, !tbaa !55
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 1, ptr %i.q, align 8, !tbaa !53
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @jq_reset(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.a = tail call ptr @stack_restore(ptr noundef %0)
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !94

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.c = load i32, ptr %i.b, align 4, !tbaa !20
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.1, i32 noundef 306, ptr noundef nonnull @__PRETTY_FUNCTION__.jq_reset) #16
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load i32, ptr %i.e, align 8, !tbaa !29
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.1, i32 noundef 307, ptr noundef nonnull @__PRETTY_FUNCTION__.jq_reset) #16
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load i32, ptr %i.h, align 8, !tbaa !28
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.1, i32 noundef 308, ptr noundef nonnull @__PRETTY_FUNCTION__.jq_reset) #16
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !21
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, i32 noundef 65, ptr noundef nonnull @__PRETTY_FUNCTION__.stack_reset) #16
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !23   ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %stack_reset.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load i32, ptr %i.p, align 8, !tbaa !22
  %i.r = sub i32 8, %i.q
  %i.s = sext i32 %i.r to i64
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds i8, ptr %i.o, i64 %i.t
  tail call void @free(ptr noundef %i.u) #15
  br label %stack_reset.exit

stack_reset.exit:                                 ; preds = %bb.k, %bb.l
  store ptr null, ptr %i.k, align 8, !tbaa !23
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 8, ptr %i.v, align 8, !tbaa !22
  store i32 0, ptr %i.l, align 4, !tbaa !21
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8
  tail call void @jv_free(i64 %i.x, ptr %i.z) #15
  %i.aa = tail call { i64, ptr } @jv_null() #15   ; 2 uses
  %i.ab = extractvalue { i64, ptr } %i.aa, 0
  %i.ac = extractvalue { i64, ptr } %i.aa, 1
  store i64 %i.ab, ptr %i.w, align 8
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !27
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 0, ptr %i.ad, align 8, !tbaa !54
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void @jv_free(i64 %i.af, ptr %i.ah) #15
  %i.ai = tail call { i64, ptr } @jv_invalid() #15 ; 2 uses
  %i.aj = extractvalue { i64, ptr } %i.ai, 0
  %i.ak = extractvalue { i64, ptr } %i.ai, 1
  store i64 %i.aj, ptr %i.ae, align 8
  store ptr %i.ak, ptr %i.ag, align 8, !tbaa !27
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void @jv_free(i64 %i.am, ptr %i.ao) #15
  %i.ap = tail call { i64, ptr } @jv_invalid() #15 ; 2 uses
  %i.aq = extractvalue { i64, ptr } %i.ap, 0
  %i.ar = extractvalue { i64, ptr } %i.ap, 1
  store i64 %i.aq, ptr %i.al, align 8
  store ptr %i.ar, ptr %i.an, align 8, !tbaa !27
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.at = load i64, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = tail call i32 @jv_get_kind(i64 %i.at, ptr %i.av) #15
  %.not26 = icmp eq i32 %i.aw, 0
  br i1 %.not26, label %bb.n, label %bb.m

bb.m:                                             ; preds = %stack_reset.exit
  %i.ax = load i64, ptr %i.as, align 8
  %i.ay = load ptr, ptr %i.au, align 8
  tail call void @jv_free(i64 %i.ax, ptr %i.ay) #15
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %stack_reset.exit
  %i.az = tail call { i64, ptr } @jv_null() #15   ; 2 uses
  %i.ba = extractvalue { i64, ptr } %i.az, 0
  %i.bb = extractvalue { i64, ptr } %i.az, 1
  store i64 %i.ba, ptr %i.as, align 8
  store ptr %i.bb, ptr %i.au, align 8, !tbaa !27
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8
  tail call void @jv_free(i64 %i.bd, ptr %i.bf) #15
  %i.bg = tail call { i64, ptr } @jv_null() #15   ; 2 uses
  %i.bh = extractvalue { i64, ptr } %i.bg, 0
  %i.bi = extractvalue { i64, ptr } %i.bg, 1
  store i64 %i.bh, ptr %i.bc, align 8
  store ptr %i.bi, ptr %i.be, align 8, !tbaa !27
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 0, ptr %i.bj, align 8, !tbaa !33
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @jq_teardown(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !96     ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !96
  tail call fastcc void @jq_reset(ptr noundef nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !60
  tail call void @bytecode_free(ptr noundef %i.d) #15
  store ptr null, ptr %i.c, align 8, !tbaa !60
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.h = load ptr, ptr %i.g, align 8
  tail call void @jv_free(i64 %i.f, ptr %i.h) #15
  tail call void @jv_mem_free(ptr noundef nonnull %i.a) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare void @bytecode_free(ptr noundef) local_unnamed_addr #3

declare void @jv_mem_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @jq_compile_args(ptr noundef %0, ptr noundef %1, i64 %2, ptr %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.block, align 8              ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52
  tail call void @jv_nomem_handler(ptr noundef %i.a, ptr noundef %i.c) #15
  %i.d = tail call i32 @jv_get_kind(i64 %2, ptr %3) #15
  %i.e = icmp eq i32 %i.d, 6
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @jv_get_kind(i64 %2, ptr %3) #15
  %i.g = icmp eq i32 %i.f, 7
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.1, i32 noundef 1234, ptr noundef nonnull @__PRETTY_FUNCTION__.jq_compile_args) #16
  unreachable

bb.d:                                             ; preds = %bb.a, %bb.b
  %i.h = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18
  %i.i = trunc i64 %i.h to i32
  %i.j = tail call ptr @locfile_init(ptr noundef nonnull %0, ptr noundef nonnull @.str.33, ptr noundef nonnull %1, i32 noundef %i.i) #15 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  tail call fastcc void @jq_reset(ptr noundef nonnull %0)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !60   ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @bytecode_free(ptr noundef nonnull %i.l) #15
  store ptr null, ptr %i.k, align 8, !tbaa !60
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = call i32 @load_program(ptr noundef nonnull %0, ptr noundef %i.j, ptr noundef nonnull %4) #15 ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.g, label %.thread.sink.split

bb.g:                                             ; preds = %bb.f
  %i.o = call i32 @builtins_bind(ptr noundef nonnull %0, ptr noundef nonnull %4) #15 ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.h, label %.thread.sink.split

bb.h:                                             ; preds = %bb.g
  %i.q = call i32 @jv_get_kind(i64 %2, ptr %3) #15
  %i.r = icmp eq i32 %i.q, 7
  br i1 %i.r, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = call i32 @jv_get_kind(i64 %2, ptr %3) #15
  %i.t = icmp eq i32 %i.s, 6
  br i1 %i.t, label %.preheader.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @__assert_fail(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.1, i32 noundef 1220, ptr noundef nonnull @__PRETTY_FUNCTION__.args2obj) #16
  unreachable

.preheader.i:                                     ; preds = %bb.i
  %i.u = call { i64, ptr } @jv_object() #15       ; 2 uses
  %i.v = extractvalue { i64, ptr } %i.u, 0        ; 2 uses
  %i.w = extractvalue { i64, ptr } %i.u, 1        ; 2 uses
  %i.x = call { i64, ptr } @jv_string(ptr noundef nonnull @.str.61) #15 ; 2 uses
  %i.y = extractvalue { i64, ptr } %i.x, 0        ; 2 uses
  %i.z = extractvalue { i64, ptr } %i.x, 1        ; 2 uses
  %i.aa = call { i64, ptr } @jv_string(ptr noundef nonnull @.str.62) #15 ; 2 uses
  %i.ab = extractvalue { i64, ptr } %i.aa, 0      ; 2 uses
  %i.ac = extractvalue { i64, ptr } %i.aa, 1      ; 2 uses
  %i.ad = call { i64, ptr } @jv_copy(i64 %2, ptr %3) #15 ; 2 uses
  %i.ae = extractvalue { i64, ptr } %i.ad, 0
  %i.af = extractvalue { i64, ptr } %i.ad, 1
  %i.ag = call i32 @jv_array_length(i64 %i.ae, ptr %i.af) #15 ; 2 uses
  %.not4550.i = icmp sgt i32 %i.ag, 0
  br i1 %.not4550.i, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i, %.preheader.i
  %.sroa.040.0.lcssa.i = phi i64 [ %i.v, %.preheader.i ], [ %i.bd, %.lr.ph.i ]
  %.sroa.542.0.lcssa.i = phi ptr [ %i.w, %.preheader.i ], [ %i.be, %.lr.ph.i ]
  call void @jv_free(i64 %2, ptr %3) #15
  call void @jv_free(i64 %i.y, ptr %i.z) #15
  call void @jv_free(i64 %i.ab, ptr %i.ac) #15
  br label %bb.k

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.sroa.542.153.i = phi ptr [ %i.be, %.lr.ph.i ], [ %i.w, %.preheader.i ]
  %.sroa.040.152.i = phi i64 [ %i.bd, %.lr.ph.i ], [ %i.v, %.preheader.i ]
  %.151.i = phi i32 [ %i.bf, %.lr.ph.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.ah = call { i64, ptr } @jv_copy(i64 %2, ptr %3) #15 ; 2 uses
  %i.ai = extractvalue { i64, ptr } %i.ah, 0
  %i.aj = extractvalue { i64, ptr } %i.ah, 1
  %i.ak = call { i64, ptr } @jv_array_get(i64 %i.ai, ptr %i.aj, i32 noundef %.151.i) #15 ; 2 uses
  %i.al = extractvalue { i64, ptr } %i.ak, 0      ; 2 uses
  %i.am = extractvalue { i64, ptr } %i.ak, 1      ; 2 uses
  %i.an = call { i64, ptr } @jv_copy(i64 %i.al, ptr %i.am) #15 ; 2 uses
  %i.ao = extractvalue { i64, ptr } %i.an, 0
  %i.ap = extractvalue { i64, ptr } %i.an, 1
  %i.aq = call { i64, ptr } @jv_copy(i64 %i.y, ptr %i.z) #15 ; 2 uses
  %i.ar = extractvalue { i64, ptr } %i.aq, 0
  %i.as = extractvalue { i64, ptr } %i.aq, 1
  %i.at = call { i64, ptr } @jv_object_get(i64 %i.ao, ptr %i.ap, i64 %i.ar, ptr %i.as) #15 ; 2 uses
end_hunk_0

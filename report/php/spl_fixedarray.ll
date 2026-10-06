Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/spl_fixedarray?download=true
inline.NumInlined: 52
inline.NumDeleted: 14
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@zim_SplFixedArray___unserialize:bb.a
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !43
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.166 = phi ptr [ %.06577, %bb.e ], [ %i.ag, %bb.f ] ; 3 uses
  %.1 = phi ptr [ %i.ad, %bb.e ], [ %i.ae, %bb.f ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.06279, i64 8 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !16
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %bb.p, label %bb.h, !prof !37

bb.h:                                             ; preds = %bb.g
  %i.ak = icmp eq ptr %.166, null
  br i1 %i.ak, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.al = load i32, ptr %i.ah, align 8            ; 3 uses
  %i.am = and i32 %i.al, 65280
  %.not74 = icmp eq i32 %i.am, 0
  br i1 %.not74, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = and i32 %i.al, 255
  %i.ao = icmp eq i32 %i.an, 10
  br i1 %i.ao, label %bb.k, label %.sink.split, !prof !37

bb.k:                                             ; preds = %bb.j
  %i.ap = load ptr, ptr %.06279, align 8, !tbaa !16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.as = load i32, ptr %i.ar, align 8            ; 2 uses
  %i.at = and i32 %i.as, 65280
  %.not75 = icmp eq i32 %i.at, 0
  br i1 %.not75, label %bb.l, label %.sink.split

.sink.split:                                      ; preds = %bb.j, %bb.k
  %.sink92 = phi i32 [ %i.as, %bb.k ], [ %i.al, %bb.j ]
  %.sink.in = phi ptr [ %i.aq, %bb.k ], [ %.06279, %bb.j ] ; 2 uses
  %i.au = and i32 %.sink92, 65280
  %i.av = icmp ne i32 %i.au, 0
  call void @llvm.assume(i1 %i.av)
  %.sink = load ptr, ptr %.sink.in, align 8, !tbaa !16 ; 2 uses
  %i.aw = load i32, ptr %.sink, align 4, !tbaa !39
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr %.sink, align 4, !tbaa !39
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.i, %bb.k
  %.0 = phi ptr [ %.06279, %bb.i ], [ %i.aq, %bb.k ], [ %.sink.in, %.sink.split ] ; 2 uses
  %i.ay = load ptr, ptr %i.r, align 8, !tbaa !38
  %i.az = load i64, ptr %i.d, align 8, !tbaa !33
  %i.ba = getelementptr inbounds [16 x i8], ptr %i.ay, i64 %i.az ; 2 uses
  %i.bb = load ptr, ptr %.0, align 8, !tbaa !16
  %i.bc = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !16
  store ptr %i.bb, ptr %i.ba, align 8, !tbaa !16
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !16
  %i.bf = load i64, ptr %i.d, align 8, !tbaa !33
  %i.bg = add nsw i64 %i.bf, 1
  store i64 %i.bg, ptr %i.d, align 8, !tbaa !33
  br label %bb.p

bb.m:                                             ; preds = %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %.06279, i64 9
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !16
  %.not73 = icmp eq i8 %i.bi, 0
  br i1 %.not73, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = load ptr, ptr %.06279, align 8, !tbaa !16 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !39
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !39
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bm = load ptr, ptr %2, align 8, !tbaa !16
  %i.bn = call ptr @zend_hash_add(ptr noundef %i.bm, ptr noundef nonnull %.166, ptr noundef nonnull %.06279) #12 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.l, %bb.o, %bb.g
  %i.bo = add i32 %.06180, -1                     ; 2 uses
  %.not69 = icmp eq i32 %i.bo, 0
  br i1 %.not69, label %._crit_edge, label %.lr.ph, !llvm.loop !108

._crit_edge:                                      ; preds = %bb.p
  %.pre = load i64, ptr %i.d, align 8, !tbaa !33  ; 3 uses
  %.not70 = icmp eq i64 %.pre, %i.n
  br i1 %.not70, label %bb.s, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  %.not71 = icmp eq i64 %.pre, 0
  br i1 %.not71, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bp = load ptr, ptr %i.r, align 8, !tbaa !38
  %i.bq = shl i64 %.pre, 4
  %i.br = call ptr @_erealloc(ptr noundef %i.bp, i64 noundef %i.bq) #13
  br label %.sink.split88

.thread:                                          ; preds = %bb.d, %bb.q
  %i.bs = load ptr, ptr %i.r, align 8, !tbaa !38
  call void @_efree(ptr noundef %i.bs) #12
  br label %.sink.split88

.sink.split88:                                    ; preds = %.thread, %bb.r
  %.sink89 = phi ptr [ %i.br, %bb.r ], [ null, %.thread ]
  store ptr %.sink89, ptr %i.r, align 8, !tbaa !38
  br label %bb.s

bb.s:                                             ; preds = %.sink.split88, %._crit_edge
  %i.bt = load ptr, ptr %2, align 8, !tbaa !16
  call void @object_properties_load(ptr noundef nonnull %i.c, ptr noundef %i.bt) #12
  call void @zval_ptr_dtor(ptr noundef nonnull %2) #12
  br label %bb.t

bb.t:                                             ; preds = %spl_fixedarray_init_non_empty_struct.exit.thread, %bb.b, %bb.s, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

declare ptr @zend_hash_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: allocsize(1)
declare ptr @_erealloc(ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_efree(ptr noundef) local_unnamed_addr #2

declare void @object_properties_load(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @zval_ptr_dtor(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @zim_SplFixedArray_count(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.critedge, label %bb.b, !prof !25

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_none_error() #12
  br label %bb.c

.critedge:                                        ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !33
  store i64 %i.f, ptr %1, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 4, ptr %i.g, align 8, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.critedge
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zim_SplFixedArray_toArray(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.critedge, label %bb.b, !prof !25

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_none_error() #12
  br label %bb.g

.critedge:                                        ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -32 ; 3 uses
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -24 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.h = load i64, ptr %i.e, align 8, !tbaa !21
  %i.i = trunc i64 %i.h to i32
  %i.j = tail call ptr @_zend_new_array(i32 noundef %i.i) #12 ; 7 uses
  store ptr %i.j, ptr %1, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 775, ptr %i.k, align 8, !tbaa !16
  tail call void @zend_hash_real_init_packed(ptr noundef %i.j) #12
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !36   ; 4 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = load i64, ptr %i.e, align 8, !tbaa !33
  %i.p = icmp sgt i64 %i.o, 0
  br i1 %i.p, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.n
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.e
  %.pre = load i32, ptr %i.l, align 8, !tbaa !36
  %.pre53.a = zext i32 %i.ag to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.pre-phi = phi i64 [ %.pre53.a, %._crit_edge.loopexit ], [ %i.n, %bb.c ]
  %i.t = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.m, %bb.c ]
  %.046.lcssa = phi i32 [ %i.ag, %._crit_edge.loopexit ], [ %i.m, %bb.c ] ; 2 uses
  %i.u = sub i32 %.046.lcssa, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 28 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !35
  %i.x = add i32 %i.u, %i.w
  store i32 %i.x, ptr %i.v, align 4, !tbaa !35
  store i32 %.046.lcssa, ptr %i.l, align 8, !tbaa !36
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i64 %.pre-phi, ptr %i.y, align 8, !tbaa !111
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  store i32 0, ptr %i.z, align 4, !tbaa !112
  br label %bb.g

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %.052 = phi i64 [ %i.ao, %bb.e ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.04651 = phi i32 [ %i.ag, %bb.e ], [ %i.m, %.lr.ph.preheader ]
  %.04750 = phi ptr [ %i.af, %bb.e ], [ %i.s, %.lr.ph.preheader ] ; 3 uses
  %2 = load ptr, ptr %i.f, align 8, !tbaa !38
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.052 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !16
  store ptr %i.ab, ptr %.04750, align 8, !tbaa !16
  %i.ae = getelementptr inbounds nuw i8, ptr %.04750, i64 8
  store i32 %i.ad, ptr %i.ae, align 8, !tbaa !16
  %i.af = getelementptr inbounds nuw i8, ptr %.04750, i64 16
  %i.ag = add i32 %.04651, 1                      ; 3 uses
  %i.ah = load ptr, ptr %i.f, align 8, !tbaa !38
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %.052 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 9
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !16
  %.not49 = icmp eq i8 %i.ak, 0
  br i1 %.not49, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !16 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !39
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr %i.al, align 4, !tbaa !39
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.ao = add nuw nsw i64 %.052, 1                ; 2 uses
  %i.ap = load i64, ptr %i.e, align 8, !tbaa !33
  %i.aq = icmp slt i64 %i.ao, %i.ap
  br i1 %i.aq, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !110

bb.f:                                             ; preds = %.critedge
  store ptr @zend_empty_array, ptr %1, align 8, !tbaa !16
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 7, ptr %i.ar, align 8, !tbaa !16
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %._crit_edge, %bb.f
  ret void
}

declare void @zend_hash_real_init_packed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @zim_SplFixedArray_fromArray(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i8 1, ptr %i.b, align 1, !tbaa !118
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !16
  %i.e = call i32 (i32, ptr, ...) @zend_parse_parameters(i32 noundef %i.d, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #12
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.j = load i32, ptr %i.i, align 4, !tbaa !35   ; 3 uses
  %i.k = icmp sgt i32 %i.j, 0
  %i.l = load i8, ptr %i.b, align 1, !range !119
  %i.m = trunc nuw i8 %i.l to i1                  ; 2 uses
  %or.cond = select i1 %i.k, i1 %i.m, i1 false
  br i1 %or.cond, label %bb.c, label %bb.s

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !16
  %i.p = and i32 %i.o, 4
  %.not116 = icmp eq i32 %i.p, 0
  br i1 %.not116, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !16   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !36   ; 2 uses
  %i.u = zext i32 %i.t to i64
  %.idx = shl nuw nsw i64 %i.u, 5
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx
  %.not117147 = icmp eq i32 %i.t, 0
  br i1 %.not117147, label %.lr.ph.preheader.i.i, label %.lr.ph150

.lr.ph150:                                        ; preds = %bb.d, %bb.g
  %.099149 = phi i64 [ %.2101.ph, %bb.g ], [ 0, %bb.d ] ; 2 uses
  %.0110148 = phi ptr [ %i.af, %bb.g ], [ %i.r, %bb.d ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0110148, i64 8
  %i.x = load i8, ptr %i.w, align 8, !tbaa !16
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.g, label %bb.e, !prof !37

bb.e:                                             ; preds = %.lr.ph150
  %i.z = getelementptr inbounds nuw i8, ptr %.0110148, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !46  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0110148, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !43
  %i.ad = icmp ne ptr %i.ac, null
  %i.ae = icmp slt i64 %i.aa, 0
  %or.cond4 = select i1 %i.ad, i1 true, i1 %i.ae
  br i1 %or.cond4, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %spec.select = call i64 @llvm.umax.i64(i64 %i.aa, i64 %.099149)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph150
  %.2101.ph = phi i64 [ %.099149, %.lr.ph150 ], [ %spec.select, %bb.f ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0110148, i64 32 ; 2 uses
  %.not117 = icmp eq ptr %i.af, %i.v
  br i1 %.not117, label %._crit_edge, label %.lr.ph150, !llvm.loop !113

bb.h:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr @spl_ce_InvalidArgumentException, align 8, !tbaa !47
  %i.ah = call ptr (ptr, i64, ptr, ...) @zend_throw_exception_ex(ptr noundef %i.ag, i64 noundef 0, ptr noundef nonnull @.str.4) #12 ; 0 uses
  br label %.critedge

._crit_edge:                                      ; preds = %bb.g
  %i.ai = add nuw nsw i64 %.2101.ph, 1
  %i.aj = icmp ugt i64 %.2101.ph, 9223372036854775806
  br i1 %i.aj, label %bb.i, label %.lr.ph.preheader.i.i

bb.i:                                             ; preds = %._crit_edge
  %i.ak = load ptr, ptr @spl_ce_InvalidArgumentException, align 8, !tbaa !47
  %i.al = call ptr (ptr, i64, ptr, ...) @zend_throw_exception_ex(ptr noundef %i.ak, i64 noundef 0, ptr noundef nonnull @.str.5) #12 ; 0 uses
  br label %.critedge

bb.j:                                             ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.an = load i32, ptr %i.am, align 8, !tbaa !36 ; 2 uses
  %i.ao = zext i32 %i.an to i64
  %.not139 = icmp eq i32 %i.an, 0
  br i1 %.not139, label %.loopexit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.d, %._crit_edge, %bb.j
  %.0102138 = phi i64 [ %i.ao, %bb.j ], [ %i.ai, %._crit_edge ], [ 1, %bb.d ] ; 6 uses
  %i.ap = call noalias ptr @_safe_emalloc(i64 noundef range(i64 0, -9223372036854775808) %.0102138, i64 noundef 16, i64 noundef 0) #12 ; 6 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %.0102138
  %i.ar = add i64 %.0102138, 1152921504606846975
  %i.as = and i64 %i.ar, 1152921504606846975
  %xtraiter185 = and i64 %.0102138, 7             ; 2 uses
  %lcmp.mod186.not = icmp eq i64 %xtraiter185, 0
  br i1 %lcmp.mod186.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i.prol
  %.02.i.i.prol = phi ptr [ %i.at, %.lr.ph.i.i.prol ], [ %i.ap, %.lr.ph.preheader.i.i ] ; 2 uses
  %prol.iter187 = phi i64 [ %prol.iter187.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.preheader.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.02.i.i.prol, i64 16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.02.i.i.prol, i64 8
  store i32 1, ptr %i.au, align 8, !tbaa !16
  %prol.iter187.next = add i64 %prol.iter187, 1   ; 2 uses
  %prol.iter187.cmp.not = icmp eq i64 %prol.iter187.next, %xtraiter185
  br i1 %prol.iter187.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !114

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %.02.i.i.unr = phi ptr [ %i.ap, %.lr.ph.preheader.i.i ], [ %i.at, %.lr.ph.i.i.prol ]
  %i.av = icmp samesign ult i64 %i.as, 7
  br i1 %i.av, label %spl_fixedarray_init.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.02.i.i = phi ptr [ %i.bd, %.lr.ph.i.i ], [ %.02.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.02.i.i, i64 8
  store i32 1, ptr %i.aw, align 8, !tbaa !16
  %i.ax = getelementptr inbounds nuw i8, ptr %.02.i.i, i64 24
  store i32 1, ptr %i.ax, align 8, !tbaa !16
  %i.ay = getelementptr inbounds nuw i8, ptr %.02.i.i, i64 40
  store i32 1, ptr %i.ay, align 8, !tbaa !16
  %i.az = getelementptr inbounds nuw i8, ptr %.02.i.i, i64 56
  store i32 1, ptr %i.az, align 8, !tbaa !16
  %i.ba = getelementptr inbounds nuw i8, ptr %.02.i.i, i64 72
  store i32 1, ptr %i.ba, align 8, !tbaa !16
  %i.bb = getelementptr inbounds nuw i8, ptr %.02.i.i, i64 88
  store i32 1, ptr %i.bb, align 8, !tbaa !16
  %i.bc = getelementptr inbounds nuw i8, ptr %.02.i.i, i64 104
  store i32 1, ptr %i.bc, align 8, !tbaa !16
  %i.bd = getelementptr inbounds nuw i8, ptr %.02.i.i, i64 128 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02.i.i, i64 120
  store i32 1, ptr %i.be, align 8, !tbaa !16
  %.not.i5.i.7 = icmp eq ptr %i.bd, %i.aq
  br i1 %.not.i5.i.7, label %spl_fixedarray_init.exit, label %.lr.ph.i.i, !llvm.loop !0

spl_fixedarray_init.exit:                         ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !45
  %.pre157 = load ptr, ptr %.pre, align 8, !tbaa !16 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre157, i64 24
  %.pre158 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !36 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.pre157, i64 8
  %.not118151 = icmp eq i32 %.pre158, 0
  br i1 %.not118151, label %.loopexit, label %.lr.ph155.preheader

.lr.ph155.preheader:                              ; preds = %spl_fixedarray_init.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %.pre157, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !16
  br label %.lr.ph155

.lr.ph155:                                        ; preds = %.lr.ph155.preheader, %bb.r
  %.0104154 = phi i32 [ %i.cl, %bb.r ], [ %.pre158, %.lr.ph155.preheader ]
  %.0105153 = phi ptr [ %.1106, %bb.r ], [ %i.bh, %.lr.ph155.preheader ] ; 7 uses
  %.0107152 = phi i32 [ %.1108, %bb.r ], [ 0, %.lr.ph155.preheader ] ; 3 uses
  %i.bi = load i32, ptr %i.bf, align 8, !tbaa !16
  %i.bj = and i32 %i.bi, 4
  %.not119 = icmp eq i32 %i.bj, 0
  br i1 %.not119, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph155
  %i.bk = getelementptr inbounds nuw i8, ptr %.0105153, i64 16
  %i.bl = zext i32 %.0107152 to i64
  %i.bm = add i32 %.0107152, 1
  br label %bb.m

end_hunk_0

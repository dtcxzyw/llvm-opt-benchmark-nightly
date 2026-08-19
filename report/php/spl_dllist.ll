inline.NumInlined: 64
inline.NumDeleted: 17
begin_hunk_0_@zend_lazy_object_get_properties

declare ptr @rebuild_object_properties_internal(ptr noundef) local_unnamed_addr #2

declare ptr @zend_hash_index_update(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @zend_register_internal_class_with_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @zend_class_implements(ptr noundef, i32 noundef, ...) local_unnamed_addr #2

declare ptr @zend_declare_typed_class_constant(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef byval(%struct.zend_type) align 8) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc noundef nonnull ptr @spl_dllist_object_new_ex(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !119
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !120
  %i.e = lshr i32 %i.d, 30
  %.lobit.i = and i32 %i.e, 1
  %i.f = xor i32 %.lobit.i, 1
  %i.g = sub nsw i32 %i.b, %i.f
  %i.h = sext i32 %i.g to i64
  %i.i = shl nsw i64 %i.h, 4
  %i.j = add nsw i64 %i.i, 128
  %i.k = tail call noalias ptr @_emalloc(i64 noundef %i.j) #14 ; 18 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(72) %i.k, i8 0, i64 72, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72 ; 3 uses
  tail call void @zend_object_std_init(ptr noundef nonnull %i.l, ptr noundef %0) #12
  tail call void @object_properties_init(ptr noundef nonnull %i.l, ptr noundef %0) #12
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 20 ; 7 uses
  store i32 0, ptr %i.m, align 4, !tbaa !43
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i32 0, ptr %i.n, align 8, !tbaa !52
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds i8, ptr %1, i64 -72 ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %1, i64 -8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !121
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store ptr %i.q, ptr %i.r, align 8, !tbaa !121
  %.not73 = icmp eq i32 %2, 0
  br i1 %.not73, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = tail call noalias noundef ptr @_emalloc_24() #12 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.s, i8 0, i64 20, i1 false)
  store ptr %i.s, ptr %i.k, align 8, !tbaa !13
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !13
  %.val = load ptr, ptr %i.t, align 8, !tbaa !33  ; 2 uses
  %.not1.i = icmp eq ptr %.val, null
  br i1 %.not1.i, label %spl_ptr_llist_copy.exit.thread, label %.lr.ph.i

spl_ptr_llist_copy.exit.thread:                   ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr null, ptr %i.u, align 8, !tbaa !51
  br label %.thread118

.lr.ph.i:                                         ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %spl_ptr_llist_push.exit.i, %.lr.ph.i
  %.02.i = phi ptr [ %.val, %.lr.ph.i ], [ %i.y, %spl_ptr_llist_push.exit.i ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.02.i, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !31   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.02.i, i64 16
  %i.aa = tail call noalias ptr @_emalloc_32() #12 ; 8 uses
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !26  ; 3 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !28
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr null, ptr %i.ac, align 8, !tbaa !31
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !12  ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.02.i, i64 24
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !12 ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !12
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i32 %i.ag, ptr %i.ah, align 8, !tbaa !12
  %i.ai = and i32 %i.ag, 65280
  %.not.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = load i32, ptr %i.ae, align 4, !tbaa !32
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ae, align 4, !tbaa !32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 28
  store i32 1, ptr %i.al, align 4, !tbaa !12
  %.not21.i.i = icmp eq ptr %i.ab, null
  br i1 %.not21.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.aa, ptr %i.am, align 8, !tbaa !31
  br label %spl_ptr_llist_push.exit.i

bb.h:                                             ; preds = %bb.f
  store ptr %i.aa, ptr %i.s, align 8, !tbaa !33
  br label %spl_ptr_llist_push.exit.i

spl_ptr_llist_push.exit.i:                        ; preds = %bb.h, %bb.g
  store ptr %i.aa, ptr %i.v, align 8, !tbaa !26
  %i.an = load i32, ptr %i.w, align 8, !tbaa !34
  %i.ao = add nsw i32 %i.an, 1
  store i32 %i.ao, ptr %i.w, align 8, !tbaa !34
  %.not.i93 = icmp eq ptr %i.y, null
  br i1 %.not.i93, label %spl_ptr_llist_copy.exit, label %bb.d, !llvm.loop !122

spl_ptr_llist_copy.exit:                          ; preds = %spl_ptr_llist_push.exit.i
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !13
  %.pre102 = load ptr, ptr %.pre, align 8, !tbaa !33 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.pre102, ptr %i.ap, align 8, !tbaa !51
  %.not75 = icmp eq ptr %.pre102, null
  br i1 %.not75, label %bb.l, label %bb.i

bb.i:                                             ; preds = %spl_ptr_llist_copy.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %.pre102, i64 28 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !12
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !12
  br label %bb.l

bb.j:                                             ; preds = %bb.b
  %i.at = load ptr, ptr %i.o, align 8, !tbaa !13  ; 2 uses
  store ptr %i.at, ptr %i.k, align 8, !tbaa !13
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !33 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.au, ptr %i.av, align 8, !tbaa !51
  %.not74 = icmp eq ptr %i.au, null
  br i1 %.not74, label %.thread118, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 28 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !12
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !12
  br label %.thread118

.thread:                                          ; preds = %bb.a
  %i.az = tail call noalias noundef ptr @_emalloc_24() #12 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.az, i8 0, i64 20, i1 false)
  store ptr %i.az, ptr %i.k, align 8, !tbaa !13
  %i.ba = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr null, ptr %i.ba, align 8, !tbaa !51
  br label %.lr.ph

.thread118:                                       ; preds = %bb.k, %bb.j, %spl_ptr_llist_copy.exit.thread
  %i.bb = getelementptr inbounds i8, ptr %1, i64 -52
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !43
  store i32 %i.bc, ptr %i.m, align 4, !tbaa !43
  br label %.lr.ph

bb.l:                                             ; preds = %bb.i, %spl_ptr_llist_copy.exit
  %i.bd = getelementptr inbounds i8, ptr %1, i64 -52
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !43
  store i32 %i.be, ptr %i.m, align 4, !tbaa !43
  %.not7694 = icmp eq ptr %0, null
  br i1 %.not7694, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.thread118, %.thread, %bb.l
  %i.bf = load ptr, ptr @spl_ce_SplStack, align 8, !tbaa !36 ; 2 uses
  %i.bg = load ptr, ptr @spl_ce_SplQueue, align 8 ; 2 uses
  %i.bh = load ptr, ptr @spl_ce_SplDoublyLinkedList, align 8, !tbaa !36 ; 2 uses
  %i.bi = icmp eq ptr %0, %i.bf
  br i1 %i.bi, label %.sink.split, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.bj = icmp eq ptr %0, %i.bg
  br i1 %i.bj, label %.sink.split, label %bb.n

.sink.split:                                      ; preds = %.lr.ph, %bb.m
  %.sink125 = phi i32 [ 4, %bb.m ], [ 6, %.lr.ph ]
  %i.bk = load i32, ptr %i.m, align 4, !tbaa !43
  %i.bl = or i32 %i.bk, %.sink125
  store i32 %i.bl, ptr %i.m, align 4, !tbaa !43
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.m
  %i.bm = icmp eq ptr %0, %i.bh
  br i1 %i.bm, label %._crit_edge.thread, label %bb.o

._crit_edge.thread:                               ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  br label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !12 ; 2 uses
  %.not76.peel = icmp eq ptr %i.bo, null
  br i1 %.not76.peel, label %._crit_edge.thread121, label %.peel.next

._crit_edge.thread121:                            ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr null) ]
  br label %._crit_edge.thread121.a

.peel.next:                                       ; preds = %bb.o, %bb.r
  %.06795 = phi ptr [ %i.bv, %bb.r ], [ %i.bo, %bb.o ] ; 5 uses
  %i.bp = icmp eq ptr %.06795, %i.bf
  br i1 %i.bp, label %.sink.split126, label %bb.p

bb.p:                                             ; preds = %.peel.next
  %i.bq = icmp eq ptr %.06795, %i.bg
  br i1 %i.bq, label %.sink.split126, label %bb.q

.sink.split126:                                   ; preds = %bb.p, %.peel.next
  %.sink128 = phi i32 [ 6, %.peel.next ], [ 4, %bb.p ]
  %i.br = load i32, ptr %i.m, align 4, !tbaa !43
  %i.bs = or i32 %i.br, %.sink128
  store i32 %i.bs, ptr %i.m, align 4, !tbaa !43
  br label %bb.q

bb.q:                                             ; preds = %.sink.split126, %bb.p
  %i.bt = icmp eq ptr %.06795, %i.bh
  br i1 %i.bt, label %._crit_edge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bu = getelementptr inbounds nuw i8, ptr %.06795, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !12 ; 2 uses
  %.not76 = icmp eq ptr %i.bv, null
  br i1 %.not76, label %._crit_edge, label %.peel.next, !llvm.loop !123

._crit_edge:                                      ; preds = %bb.r, %bb.q
  %.067.lcssa = phi ptr [ null, %bb.r ], [ %.06795, %bb.q ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.067.lcssa) ]
  br label %._crit_edge.thread121.a

._crit_edge.thread121.a:                          ; preds = %._crit_edge, %._crit_edge.thread121
  %.067.lcssa123 = phi ptr [ null, %._crit_edge.thread121 ], [ %.067.lcssa, %._crit_edge ] ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.bx = tail call ptr @zend_hash_str_find(ptr noundef nonnull %i.bw, ptr noundef nonnull @.str.66, i64 noundef 9) #12 ; 2 uses
  %.not.i88 = icmp eq ptr %i.bx, null
  br i1 %.not.i88, label %zend_hash_str_find_ptr.exit90, label %bb.s

bb.s:                                             ; preds = %._crit_edge.thread121.a
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !12, !nonnull !50, !noundef !50
  br label %zend_hash_str_find_ptr.exit90

zend_hash_str_find_ptr.exit90:                    ; preds = %._crit_edge.thread121.a, %bb.s
  %.0.i89 = phi ptr [ %i.by, %bb.s ], [ null, %._crit_edge.thread121.a ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  store ptr %.0.i89, ptr %i.bz, align 8, !tbaa !125
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i89, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !12
  %i.cc = icmp eq ptr %i.cb, %.067.lcssa123
  %spec.store.select = select i1 %i.cc, ptr null, ptr %.0.i89
  store ptr %spec.store.select, ptr %i.bz, align 8
  %i.cd = tail call ptr @zend_hash_str_find(ptr noundef nonnull %i.bw, ptr noundef nonnull @.str.67, i64 noundef 9) #12 ; 2 uses
  %.not.i85 = icmp eq ptr %i.cd, null
  br i1 %.not.i85, label %zend_hash_str_find_ptr.exit87, label %bb.t

bb.t:                                             ; preds = %zend_hash_str_find_ptr.exit90
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !12, !nonnull !50, !noundef !50
  br label %zend_hash_str_find_ptr.exit87

zend_hash_str_find_ptr.exit87:                    ; preds = %zend_hash_str_find_ptr.exit90, %bb.t
  %.0.i86 = phi ptr [ %i.ce, %bb.t ], [ null, %zend_hash_str_find_ptr.exit90 ] ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  store ptr %.0.i86, ptr %i.cf, align 8, !tbaa !126
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i86, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !12
  %i.ci = icmp eq ptr %i.ch, %.067.lcssa123
  %spec.store.select80 = select i1 %i.ci, ptr null, ptr %.0.i86
  store ptr %spec.store.select80, ptr %i.cf, align 8
  %i.cj = tail call ptr @zend_hash_str_find(ptr noundef nonnull %i.bw, ptr noundef nonnull @.str.68, i64 noundef 12) #12 ; 2 uses
  %.not.i82 = icmp eq ptr %i.cj, null
  br i1 %.not.i82, label %zend_hash_str_find_ptr.exit84, label %bb.u

bb.u:                                             ; preds = %zend_hash_str_find_ptr.exit87
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !12, !nonnull !50, !noundef !50
  br label %zend_hash_str_find_ptr.exit84

zend_hash_str_find_ptr.exit84:                    ; preds = %zend_hash_str_find_ptr.exit87, %bb.u
  %.0.i83 = phi ptr [ %i.ck, %bb.u ], [ null, %zend_hash_str_find_ptr.exit87 ] ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 2 uses
  store ptr %.0.i83, ptr %i.cl, align 8, !tbaa !127
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i83, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !12
  %i.co = icmp eq ptr %i.cn, %.067.lcssa123
  %spec.store.select78 = select i1 %i.co, ptr null, ptr %.0.i83
  store ptr %spec.store.select78, ptr %i.cl, align 8
  %i.cp = tail call ptr @zend_hash_str_find(ptr noundef nonnull %i.bw, ptr noundef nonnull @.str.69, i64 noundef 11) #12 ; 2 uses
  %.not.i = icmp eq ptr %i.cp, null
  br i1 %.not.i, label %zend_hash_str_find_ptr.exit, label %bb.v

bb.v:                                             ; preds = %zend_hash_str_find_ptr.exit84
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !12, !nonnull !50, !noundef !50
  br label %zend_hash_str_find_ptr.exit

zend_hash_str_find_ptr.exit:                      ; preds = %zend_hash_str_find_ptr.exit84, %bb.v
  %.0.i = phi ptr [ %i.cq, %bb.v ], [ null, %zend_hash_str_find_ptr.exit84 ] ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 2 uses
  store ptr %.0.i, ptr %i.cr, align 8, !tbaa !128
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !12
  %i.cu = icmp eq ptr %i.ct, %.067.lcssa123
  %spec.store.select81 = select i1 %i.cu, ptr null, ptr %.0.i
  store ptr %spec.store.select81, ptr %i.cr, align 8
  %i.cv = load ptr, ptr @zend_known_strings, align 8, !tbaa !129
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 600
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !64
  %i.cy = tail call ptr @zend_hash_find(ptr noundef nonnull %i.bw, ptr noundef %i.cx) #12 ; 2 uses
  %.not.i91 = icmp eq ptr %i.cy, null
  br i1 %.not.i91, label %zend_hash_find_ptr.exit, label %bb.w

bb.w:                                             ; preds = %zend_hash_str_find_ptr.exit
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !12, !nonnull !50, !noundef !50
  br label %zend_hash_find_ptr.exit

zend_hash_find_ptr.exit:                          ; preds = %zend_hash_str_find_ptr.exit, %bb.w
  %.0.i92 = phi ptr [ %i.cz, %bb.w ], [ null, %zend_hash_str_find_ptr.exit ] ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.k, i64 56 ; 2 uses
  store ptr %.0.i92, ptr %i.da, align 8, !tbaa !38
  %i.db = getelementptr inbounds nuw i8, ptr %.0.i92, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !12
  %i.dd = icmp eq ptr %i.dc, %.067.lcssa123
  %spec.store.select79 = select i1 %i.dd, ptr null, ptr %.0.i92
  store ptr %spec.store.select79, ptr %i.da, align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %._crit_edge.thread, %zend_hash_find_ptr.exit
  ret ptr %i.l
}

declare void @zend_object_std_init(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @object_properties_init(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @zend_hash_str_find(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @zend_hash_find(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @zend_throw_error(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @zend_iterator_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @spl_dllist_it_dtor(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !12
  %i.e = add i32 %i.d, -1                         ; 2 uses
  store i32 %i.e, ptr %i.c, align 4, !tbaa !12
  %.not5 = icmp eq i32 %i.e, 0
  br i1 %.not5, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !110
  tail call void @_efree(ptr noundef %i.f) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @zval_ptr_dtor(ptr noundef nonnull %i.g) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 1) i32 @spl_dllist_it_valid(ptr nofree noundef readonly captures(none) %0) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110
  %.not = icmp eq ptr %i.b, null
  %i.c = sext i1 %.not to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal ptr @spl_dllist_it_get_current_data(ptr nofree noundef readonly captures(none) %0) #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load i8, ptr %i.e, align 8, !tbaa !12
  %i.g = icmp eq i8 %i.f, 0
  %spec.select = select i1 %i.g, ptr null, ptr %i.d
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %spec.select, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @spl_dllist_it_get_current_key(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 12)) %1) #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i32, ptr %i.a, align 8, !tbaa !131
  %i.c = sext i32 %i.b to i64
  store i64 %i.c, ptr %1, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 4, ptr %i.d, align 8, !tbaa !12
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @spl_dllist_it_move_forward(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -72
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.h = load i32, ptr %i.g, align 4, !tbaa !132
  tail call fastcc void @spl_dllist_it_helper_move_forward(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef %i.f, i32 noundef %i.h)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @spl_dllist_it_rewind(ptr nofree noundef captures(none) initializes((96, 100)) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.h = load i32, ptr %i.g, align 4, !tbaa !132
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !44   ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 28 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !12
  %i.l = add i32 %i.k, -1                         ; 2 uses
  store i32 %i.l, ptr %i.j, align 4, !tbaa !12
  %.not13.i = icmp eq i32 %i.l, 0
  br i1 %.not13.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !44
  tail call void @_efree(ptr noundef %i.m) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.n = and i32 %i.h, 2
  %.not14.i = icmp eq i32 %i.n, 0
  br i1 %.not14.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !34
  %i.q = add nsw i32 %i.p, -1
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink.i = phi i32 [ %i.q, %bb.e ], [ 0, %bb.d ]
  %storemerge.in.i = phi ptr [ %i.r, %bb.e ], [ %i.d, %bb.d ]
  store i32 %.sink.i, ptr %i.f, align 8, !tbaa !53
  %storemerge.i = load ptr, ptr %storemerge.in.i, align 8, !tbaa !44 ; 3 uses
  store ptr %storemerge.i, ptr %i.e, align 8, !tbaa !44
  %.not15.i = icmp eq ptr %storemerge.i, null
  br i1 %.not15.i, label %spl_dllist_it_helper_rewind.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 28 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !12
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 4, !tbaa !12
  br label %spl_dllist_it_helper_rewind.exit

spl_dllist_it_helper_rewind.exit:                 ; preds = %bb.f, %bb.g
  ret void
}

declare void @zend_objects_clone_members(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @zend_get_gc_buffer_create() local_unnamed_addr #2

declare void @zend_get_gc_buffer_grow(ptr noundef) local_unnamed_addr #2

declare void @zend_object_std_dtor(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(1) }
attributes #14 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
end_hunk_0

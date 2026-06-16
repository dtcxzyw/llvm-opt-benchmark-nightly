inline.NumInlined: 253
inline.NumDeleted: 55
begin_hunk_0_@name_add:bb.a

bb.h:                                             ; preds = %bb.f, %.lr.ph.i
  store ptr %i.t, ptr %i.m, align 8, !tbaa !49
  %i.y = getelementptr i8, ptr %i.t, i64 %i.f
  %i.z = ptrtoint ptr %i.m to i64
  %i.aa = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #26 ; 4 uses
  store ptr %i.t, ptr %i.aa, align 8, !tbaa !17
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  store ptr %i.y, ptr %i.ab, align 8, !tbaa !14
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = call i32 @rb_st_insert(ptr noundef %.063, i64 noundef %i.ac, i64 noundef %i.z) #25
  %.not.i74 = icmp eq i32 %i.ad, 0
  br i1 %.not.i74, label %.thread93, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef nonnull %i.aa) #25
  br label %.thread93

.thread93:                                        ; preds = %bb.h, %bb.i
  %i.ae = getelementptr i8, ptr %i.m, i64 8
  store i64 %i.f, ptr %i.ae, align 8, !tbaa !41
  %i.af = getelementptr i8, ptr %i.m, i64 20
  store i32 0, ptr %i.af, align 4, !tbaa !44
  %i.ag = getelementptr i8, ptr %i.m, i64 32
  store ptr null, ptr %i.ag, align 8, !tbaa !46
  %i.ah = getelementptr i8, ptr %i.m, i64 16
  store i32 1, ptr %i.ah, align 8, !tbaa !43
  br label %bb.n

bb.j:                                             ; preds = %name_find.exit
  %.phi.trans.insert = getelementptr i8, ptr %.pre.i, i64 16
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !43 ; 4 uses
  %i.ai = getelementptr i8, ptr %.pre.i, i64 16   ; 3 uses
  %i.aj = icmp sgt i32 %.pre, 0
  br i1 %i.aj, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr i8, ptr %4, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !98
  %i.am = getelementptr i8, ptr %i.al, i64 8
  %i.an = load i32, ptr %i.am, align 4, !tbaa !60
  %i.ao = and i32 %i.an, 256
  %.not = icmp eq i32 %i.ao, 0
  br i1 %.not, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr i8, ptr %4, i64 56
  store ptr %1, ptr %i.ap, align 8, !tbaa !95
  %i.aq = getelementptr i8, ptr %4, i64 64
  store ptr %2, ptr %i.aq, align 8, !tbaa !96
  br label %.critedge

bb.m:                                             ; preds = %bb.j
  %i.ar = add nsw i32 %.pre, 1                    ; 2 uses
  store i32 %i.ar, ptr %i.ai, align 8, !tbaa !43
  %i.as = icmp eq i32 %.pre, 0
  br i1 %i.as, label %bb.n, label %.thread76

bb.n:                                             ; preds = %.thread93, %bb.m
  %.0649295 = phi ptr [ %i.m, %.thread93 ], [ %.pre.i, %bb.m ]
  %i.at = getelementptr i8, ptr %.0649295, i64 24
  store i32 %3, ptr %i.at, align 8, !tbaa !45
  br label %.critedge

bb.o:                                             ; preds = %bb.k
  %i.au = add nuw i32 %.pre, 1                    ; 3 uses
  store i32 %i.au, ptr %i.ai, align 8, !tbaa !43
  %i.av = icmp eq i32 %i.au, 2
  br i1 %i.av, label %bb.p, label %.thread76

bb.p:                                             ; preds = %bb.o
  %i.aw = call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #26 ; 4 uses
  %i.ax = getelementptr i8, ptr %.pre.i, i64 32
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !46
  %i.ay = icmp eq ptr %i.aw, null
  br i1 %i.ay, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.az = getelementptr i8, ptr %.pre.i, i64 20
  store i32 8, ptr %i.az, align 4, !tbaa !44
  %i.ba = getelementptr i8, ptr %.pre.i, i64 24
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !45
  store i32 %i.bb, ptr %i.aw, align 4, !tbaa !7
  %i.bc = getelementptr i8, ptr %i.aw, i64 4
  store i32 %3, ptr %i.bc, align 4, !tbaa !7
  br label %.critedge

.thread76:                                        ; preds = %bb.m, %bb.o
  %i.bd = phi i32 [ %i.au, %bb.o ], [ %i.ar, %bb.m ] ; 2 uses
  %i.be = getelementptr i8, ptr %.pre.i, i64 20   ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !44 ; 2 uses
  %i.bg = icmp sgt i32 %i.bd, %i.bf
  br i1 %i.bg, label %bb.r, label %.thread76._crit_edge

.thread76._crit_edge:                             ; preds = %.thread76
  %.phi.trans.insert77 = getelementptr i8, ptr %.pre.i, i64 32
  %.pre78 = load ptr, ptr %.phi.trans.insert77, align 8, !tbaa !46
  br label %bb.t

bb.r:                                             ; preds = %.thread76
  %i.bh = shl i32 %i.bf, 1                        ; 2 uses
  %i.bi = getelementptr i8, ptr %.pre.i, i64 32   ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !46
  %i.bk = sext i32 %i.bh to i64
  %i.bl = shl nsw i64 %i.bk, 2
  %i.bm = call ptr @realloc(ptr noundef %i.bj, i64 noundef %i.bl) #27 ; 3 uses
  %.not72 = icmp eq ptr %i.bm, null
  br i1 %.not72, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %i.bm, ptr %i.bi, align 8, !tbaa !46
  store i32 %i.bh, ptr %i.be, align 4, !tbaa !44
  %.pre79 = load i32, ptr %i.ai, align 8, !tbaa !43
  br label %bb.t

bb.t:                                             ; preds = %.thread76._crit_edge, %bb.s
  %i.bn = phi i32 [ %i.bd, %.thread76._crit_edge ], [ %.pre79, %bb.s ]
  %i.bo = phi ptr [ %.pre78, %.thread76._crit_edge ], [ %i.bm, %bb.s ]
  %i.bp = add i32 %i.bn, -1
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr [4 x i8], ptr %i.bo, i64 %i.bq
  store i32 %3, ptr %i.br, align 4, !tbaa !7
  br label %.critedge

.critedge:                                        ; preds = %bb.r, %bb.n, %bb.t, %bb.q, %bb.p, %bb.d, %bb.a, %bb.l, %bb.g
  %.1 = phi i32 [ -219, %bb.l ], [ -214, %bb.a ], [ -5, %bb.g ], [ 0, %bb.n ], [ -5, %bb.d ], [ -5, %bb.r ], [ -5, %bb.p ], [ 0, %bb.q ], [ 0, %bb.t ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree nounwind sspstrong willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef ptr @node_new_option(i32 noundef %0) unnamed_addr #14 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 7 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %node_new_enclose.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  store <4 x i32> <i32 6, i32 0, i32 2, i32 0>, ptr %i.a, align 1
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %i.d = getelementptr i8, ptr %i.a, i64 24
  store ptr null, ptr %i.d, align 8, !tbaa !13
  %i.e = getelementptr i8, ptr %i.a, i64 20
  store i32 -1, ptr %i.e, align 4, !tbaa !13
  %i.f = getelementptr i8, ptr %i.a, i64 52
  store i32 0, ptr %i.f, align 4, !tbaa !13
  store i32 %0, ptr %i.c, align 8, !tbaa !13
  br label %node_new_enclose.exit.thread

node_new_enclose.exit.thread:                     ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef ptr @node_new_str_raw(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #12 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 10 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %node_new_str.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.a, align 1
  %i.c = getelementptr i8, ptr %i.a, i64 28
  store i32 0, ptr %i.c, align 4, !tbaa !13
  %i.d = getelementptr i8, ptr %i.a, i64 24       ; 3 uses
  store i32 0, ptr %i.d, align 8, !tbaa !13
  %i.e = getelementptr i8, ptr %i.a, i64 32       ; 2 uses
  %i.f = getelementptr i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.f, align 8, !tbaa !13
  %i.g = getelementptr i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.g, align 8, !tbaa !13
  %i.h = tail call i32 @onig_node_str_cat(ptr noundef nonnull %i.a, ptr noundef nonnull %0, ptr noundef %1)
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %node_new_str.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @onig_node_free(ptr noundef nonnull %i.a)
  br label %node_new_str.exit.thread

node_new_str.exit:                                ; preds = %bb.b
  %i.i = load i32, ptr %i.d, align 8, !tbaa !13
  %i.j = or i32 %i.i, 1
  store i32 %i.j, ptr %i.d, align 8, !tbaa !13
  br label %node_new_str.exit.thread

node_new_str.exit.thread:                         ; preds = %bb.c, %bb.a, %node_new_str.exit
  %.0.i7 = phi ptr [ %i.a, %node_new_str.exit ], [ null, %bb.a ], [ null, %bb.c ]
  ret ptr %.0.i7
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @bitset_set_range(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #5 {
bb.a:
  %i.a = icmp sle i32 %2, %3
  %i.b = icmp slt i32 %2, 256
  %i.c = and i1 %i.a, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 16
  %i.e = getelementptr i8, ptr %0, i64 180        ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %CC_DUP_WARN.exit
  %.014 = phi i32 [ %2, %.lr.ph ], [ %i.aa, %CC_DUP_WARN.exit ] ; 4 uses
  %i.f = sdiv i32 %.014, 32
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr [4 x i8], ptr %1, i64 %i.g ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !7
  %i.j = and i32 %.014, 31
  %i.k = shl nuw i32 1, %i.j                      ; 2 uses
  %i.l = and i32 %i.i, %i.k
  %.not = icmp eq i32 %i.l, 0
  %i.m = load ptr, ptr @onig_warn, align 8
  %i.n = icmp eq ptr %i.m, @onig_null_warn
  %or.cond = select i1 %.not, i1 true, i1 %i.n
  br i1 %or.cond, label %CC_DUP_WARN.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = tail call ptr @rb_ruby_verbose_ptr() #25
  %i.p = load i64, ptr %i.o, align 8, !tbaa !57
  %i.q = and i64 %i.p, -5
  %.not5.i = icmp eq i64 %i.q, 0
  br i1 %.not5.i, label %CC_DUP_WARN.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !98
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 4, !tbaa !60
  %i.u = and i32 %i.t, 67108864
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %CC_DUP_WARN.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load i32, ptr %i.e, align 4, !tbaa !137  ; 2 uses
  %i.w = and i32 %i.v, 67108864
  %.not4.i = icmp eq i32 %i.w, 0
  br i1 %.not4.i, label %bb.f, label %CC_DUP_WARN.exit

bb.f:                                             ; preds = %bb.e
  %i.x = or disjoint i32 %i.v, 67108864
  store i32 %i.x, ptr %i.e, align 4, !tbaa !137
  tail call void (ptr, ptr, ...) @onig_syntax_warn(ptr noundef nonnull %0, ptr noundef nonnull @.str.7)
  br label %CC_DUP_WARN.exit

CC_DUP_WARN.exit:                                 ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.y = load i32, ptr %i.h, align 4, !tbaa !7
  %i.z = or i32 %i.y, %i.k
  store i32 %i.z, ptr %i.h, align 4, !tbaa !7
  %i.aa = add nsw i32 %.014, 1                    ; 2 uses
  %4 = icmp sle i32 %i.aa, %3
  %i.ab = icmp slt i32 %.014, 255
  %5 = and i1 %4, %i.ab
  br i1 %5, label %bb.b, label %._crit_edge, !llvm.loop !180

._crit_edge:                                      ; preds = %CC_DUP_WARN.exit, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @add_code_range_to_buf0(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #5 {
bb.a:
  %i.a = icmp ugt i32 %2, %3                      ; 2 uses
  %spec.select = select i1 %i.a, i32 %3, i32 %2   ; 7 uses
  %spec.select352 = select i1 %i.a, i32 %2, i32 %3 ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !138    ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #26 ; 8 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !138
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.critedge228, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @onig_bbuf_init(ptr noundef nonnull %i.d, i64 noundef 20) #25 ; 2 uses
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.d, label %.critedge228

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %i.d, i64 12       ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !181  ; 2 uses
  %i.i = icmp ult i32 %i.h, 4
  br i1 %i.i, label %.preheader.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !66
  br label %bb.g

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %i.j = phi i32 [ %i.k, %.preheader.i ], [ %i.h, %bb.d ] ; 2 uses
  %i.k = shl nuw nsw i32 %i.j, 1                  ; 3 uses
  %i.l = icmp samesign ult i32 %i.j, 2
  br i1 %i.l, label %.preheader.i, label %bb.e, !llvm.loop !182

bb.e:                                             ; preds = %.preheader.i
  store i32 %i.k, ptr %i.g, align 4, !tbaa !181
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !66
  %i.n = zext nneg i32 %i.k to i64
  %i.o = tail call ptr @realloc(ptr noundef %i.m, i64 noundef %i.n) #27 ; 3 uses
  %.not28.i = icmp eq ptr %i.o, null
  br i1 %.not28.i, label %.critedge228, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.o, ptr %i.d, align 8, !tbaa !66
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.p = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.o, %bb.f ]
  store i32 0, ptr %i.p, align 1
  %i.q = getelementptr i8, ptr %i.d, i64 8        ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !183
  %i.s = icmp ult i32 %i.r, 4
  br i1 %i.s, label %bb.h, label %._crit_edge.thread

bb.h:                                             ; preds = %bb.g
  store i32 4, ptr %i.q, align 8, !tbaa !183
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.h, %bb.g
  %i.t = load ptr, ptr %0, align 8, !tbaa !138    ; 2 uses
  %.pre = load ptr, ptr %i.t, align 8, !tbaa !66
  %i.u = getelementptr i8, ptr %.pre, i64 4
  br label %._crit_edge261

bb.i:                                             ; preds = %bb.a
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !66   ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !7    ; 7 uses
  %i.x = getelementptr i8, ptr %i.v, i64 4        ; 4 uses
  %i.y = icmp eq i32 %spec.select, 0
  %.not270 = icmp eq i32 %i.w, 0
  %.not = select i1 %i.y, i1 true, i1 %.not270
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.z = add i32 %spec.select, -1
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.j
  %.0169256 = phi i32 [ 0, %.lr.ph ], [ %.1170, %bb.j ] ; 2 uses
  %.0173255 = phi i32 [ %i.w, %.lr.ph ], [ %.1174, %bb.j ] ; 2 uses
  %i.aa = add i32 %.0169256, %.0173255            ; 2 uses
  %i.ab = lshr i32 %i.aa, 1                       ; 2 uses
  %i.ac = or i32 %i.aa, 1
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr [4 x i8], ptr %i.x, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !7
  %i.ag = icmp ugt i32 %i.z, %i.af                ; 2 uses
  %i.ah = add nuw i32 %i.ab, 1
  %.1174 = select i1 %i.ag, i32 %.0173255, i32 %i.ab ; 2 uses
  %.1170 = select i1 %i.ag, i32 %i.ah, i32 %.0169256 ; 3 uses
  %i.ai = icmp ult i32 %.1170, %.1174
  br i1 %i.ai, label %bb.j, label %._crit_edge, !llvm.loop !184

._crit_edge:                                      ; preds = %bb.j, %bb.i
  %.0169.lcssa = phi i32 [ 0, %bb.i ], [ %.1170, %bb.j ] ; 3 uses
  %i.aj = icmp eq i32 %spec.select352, -1
  %i.ak = select i1 %i.aj, i32 %i.w, i32 %.0169.lcssa ; 3 uses
  %i.al = icmp ult i32 %i.ak, %i.w
  br i1 %i.al, label %.lr.ph260, label %._crit_edge261

.lr.ph260:                                        ; preds = %._crit_edge
  %i.am = add i32 %spec.select352, 1
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph260, %bb.k
  %.0171258 = phi i32 [ %i.ak, %.lr.ph260 ], [ %.1172, %bb.k ] ; 2 uses
  %.2175257 = phi i32 [ %i.w, %.lr.ph260 ], [ %.3176, %bb.k ] ; 2 uses
  %i.an = add i32 %.0171258, %.2175257            ; 2 uses
  %i.ao = lshr i32 %i.an, 1                       ; 2 uses
  %i.ap = and i32 %i.an, -2
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr [4 x i8], ptr %i.x, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !7
  %.not224 = icmp ult i32 %i.am, %i.as            ; 2 uses
  %i.at = add nuw i32 %i.ao, 1
  %.3176 = select i1 %.not224, i32 %i.ao, i32 %.2175257 ; 2 uses
  %.1172 = select i1 %.not224, i32 %.0171258, i32 %i.at ; 3 uses
  %i.au = icmp ult i32 %.1172, %.3176
  br i1 %i.au, label %bb.k, label %._crit_edge261, !llvm.loop !185

._crit_edge261:                                   ; preds = %bb.k, %._crit_edge.thread, %._crit_edge
  %.0169.lcssa328 = phi i32 [ %.0169.lcssa, %._crit_edge ], [ 0, %._crit_edge.thread ], [ %.0169.lcssa, %bb.k ] ; 3 uses
  %storemerge320327 = phi i32 [ %i.w, %._crit_edge ], [ 0, %._crit_edge.thread ], [ %i.w, %bb.k ] ; 3 uses
  %.0177321326 = phi ptr [ %i.b, %._crit_edge ], [ %i.t, %._crit_edge.thread ], [ %i.b, %bb.k ] ; 20 uses
  %i.av = phi ptr [ %i.x, %._crit_edge ], [ %i.u, %._crit_edge.thread ], [ %i.x, %bb.k ] ; 4 uses
  %.0171.lcssa = phi i32 [ %i.ak, %._crit_edge ], [ 0, %._crit_edge.thread ], [ %.1172, %bb.k ] ; 7 uses
  %i.aw = add nuw i32 %.0169.lcssa328, 1          ; 4 uses
  %i.ax = sub i32 %i.aw, %.0171.lcssa             ; 3 uses
  %i.ay = add i32 %i.ax, %storemerge320327        ; 2 uses
  %i.az = icmp ugt i32 %i.ay, 10000
  br i1 %i.az, label %.critedge228, label %bb.l

bb.l:                                             ; preds = %._crit_edge261
  %.not212 = icmp eq i32 %i.ax, 1
  br i1 %.not212, label %.thread242, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not213 = icmp eq i32 %4, 0
  %.pre280 = shl i32 %.0169.lcssa328, 1           ; 3 uses
  br i1 %.not213, label %CC_DUP_WARN.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = or disjoint i32 %.pre280, 1
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr [4 x i8], ptr %i.av, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !7  ; 2 uses
  %.not214 = icmp ugt i32 %spec.select, %i.bd
  br i1 %.not214, label %CC_DUP_WARN.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = zext i32 %.pre280 to i64
  %i.bf = getelementptr [4 x i8], ptr %i.av, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !7
  %.not215 = icmp ugt i32 %i.bg, %spec.select
  %.not216 = icmp ugt i32 %i.bd, %spec.select352
  %or.cond = and i1 %.not216, %.not215
  %i.bh = load ptr, ptr @onig_warn, align 8
  %i.bi = icmp eq ptr %i.bh, @onig_null_warn
  %or.cond245 = select i1 %or.cond, i1 true, i1 %i.bi
  br i1 %or.cond245, label %CC_DUP_WARN.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = tail call ptr @rb_ruby_verbose_ptr() #25
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !57
  %i.bl = and i64 %i.bk, -5
  %.not5.i = icmp eq i64 %i.bl, 0
  br i1 %.not5.i, label %CC_DUP_WARN.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bm = getelementptr i8, ptr %1, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !98
  %i.bo = getelementptr i8, ptr %i.bn, i64 8
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !60
  %i.bq = and i32 %i.bp, 67108864
  %.not.i238 = icmp eq i32 %i.bq, 0
  br i1 %.not.i238, label %CC_DUP_WARN.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = getelementptr i8, ptr %1, i64 180       ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !137 ; 2 uses
  %i.bt = and i32 %i.bs, 67108864
  %.not4.i = icmp eq i32 %i.bt, 0
  br i1 %.not4.i, label %bb.s, label %CC_DUP_WARN.exit

bb.s:                                             ; preds = %bb.r
  %i.bu = or disjoint i32 %i.bs, 67108864
  store i32 %i.bu, ptr %i.br, align 4, !tbaa !137
  tail call void (ptr, ptr, ...) @onig_syntax_warn(ptr noundef nonnull %1, ptr noundef nonnull @.str.7)
  br label %CC_DUP_WARN.exit

CC_DUP_WARN.exit:                                 ; preds = %bb.m, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  %i.bv = zext i32 %.pre280 to i64
end_hunk_0
begin_hunk_1_@create_node_from_array:bb.a
  %i.g = icmp eq i32 %0, 0
  %i.h = zext i32 %indvars.iv to i64              ; 2 uses
  br i1 %i.g, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.c
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %bb.c ], [ %i.h, %.lr.ph ] ; 4 uses
  %.02227.us = phi ptr [ %i.o, %bb.c ], [ null, %.lr.ph ] ; 2 uses
  %i.i = getelementptr [8 x i8], ptr %2, i64 %indvars.iv44 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !90
  %i.k = tail call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 5 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %node_new_list.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.us
  store i32 8, ptr %i.k, align 1
  %i.m = getelementptr i8, ptr %i.k, i64 8
  store ptr %i.j, ptr %i.m, align 8, !tbaa !13
  %i.n = getelementptr i8, ptr %i.k, i64 16
  store ptr %.02227.us, ptr %i.n, align 8, !tbaa !13
  store ptr %i.k, ptr %1, align 8, !tbaa !90
  store ptr null, ptr %i.i, align 8, !tbaa !90
  %i.o = load ptr, ptr %1, align 8, !tbaa !90
  %indvars.iv.next45 = add nsw i64 %indvars.iv44, -1
  %i.p = icmp sgt i64 %indvars.iv44, 0
  br i1 %i.p, label %.lr.ph.split.us, label %.loopexit, !llvm.loop !140

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.d
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %bb.d ], [ %i.h, %.lr.ph ] ; 4 uses
  %.02227 = phi ptr [ %i.w, %bb.d ], [ null, %.lr.ph ] ; 2 uses
  %i.q = getelementptr [8 x i8], ptr %2, i64 %indvars.iv40 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !90
  %i.s = tail call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 5 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %node_new_list.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split
  store i32 9, ptr %i.s, align 1
  %i.u = getelementptr i8, ptr %i.s, i64 8
  store ptr %i.r, ptr %i.u, align 8, !tbaa !13
  %i.v = getelementptr i8, ptr %i.s, i64 16
  store ptr %.02227, ptr %i.v, align 8, !tbaa !13
  store ptr %i.s, ptr %1, align 8, !tbaa !90
  store ptr null, ptr %i.q, align 8, !tbaa !90
  %i.w = load ptr, ptr %1, align 8, !tbaa !90
  %indvars.iv.next41 = add nsw i64 %indvars.iv40, -1
  %i.x = icmp sgt i64 %indvars.iv40, 0
  br i1 %i.x, label %.lr.ph.split, label %.loopexit, !llvm.loop !140

node_new_list.exit:                               ; preds = %.lr.ph.split, %.lr.ph.split.us
  %.us-phi = phi ptr [ %.02227.us, %.lr.ph.split.us ], [ %.02227, %.lr.ph.split ]
  %.us-phi28.in = phi i64 [ %indvars.iv44, %.lr.ph.split.us ], [ %indvars.iv40, %.lr.ph.split ] ; 2 uses
  store ptr null, ptr %1, align 8, !tbaa !90
  %i.y = and i64 %.us-phi28.in, 2147483648
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.lr.ph32.preheader, label %._crit_edge

.lr.ph32.preheader:                               ; preds = %node_new_list.exit
  %i.aa = and i64 %.us-phi28.in, 2147483647
  br label %.lr.ph32

.lr.ph32:                                         ; preds = %.lr.ph32.preheader, %.lr.ph32
  %indvars.iv47 = phi i64 [ %i.aa, %.lr.ph32.preheader ], [ %indvars.iv.next48, %.lr.ph32 ] ; 3 uses
  %i.ab = getelementptr [8 x i8], ptr %2, i64 %indvars.iv47 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !90
  tail call void @onig_node_free(ptr noundef %i.ac)
  %indvars.iv.next48 = add nsw i64 %indvars.iv47, -1
  store ptr null, ptr %i.ab, align 8, !tbaa !90
  %.not58 = icmp eq i64 %indvars.iv47, 0
  br i1 %.not58, label %._crit_edge, label %.lr.ph32, !llvm.loop !141

._crit_edge:                                      ; preds = %.lr.ph32, %node_new_list.exit
  tail call void @onig_node_free(ptr noundef %.us-phi)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.c, %.preheader, %._crit_edge
  %.023 = phi i32 [ -5, %._crit_edge ], [ 0, %.preheader ], [ 0, %bb.c ], [ 0, %bb.d ]
  ret i32 %.023
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @not_code_range_buf(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef nonnull captures(none) initializes((0, 8)) %2, ptr nofree noundef captures(none) %3) unnamed_addr #5 {
bb.a:
  store ptr null, ptr %2, align 8, !tbaa !138
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.b = getelementptr i8, ptr %0, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !47
  %i.d = icmp sgt i32 %i.c, 1
  %i.e = select i1 %i.d, i32 0, i32 128
  br label %.thread.sink.split

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !66     ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !7    ; 2 uses
  %i.h = getelementptr i8, ptr %i.f, i64 4
  %i.i = icmp slt i32 %i.g, 1
  br i1 %i.i, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %0, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !47
  %i.l = icmp sgt i32 %i.k, 1
  %i.m = select i1 %i.l, i32 0, i32 128
  %wide.trip.count = zext nneg i32 %i.g to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.h
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %.03350 = phi i32 [ %i.m, %bb.d ], [ %i.w, %bb.h ] ; 2 uses
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.n = shl i32 %indvars.iv.tr, 1
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr [4 x i8], ptr %i.h, i64 %i.o ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !7
  %i.r = getelementptr i8, ptr %i.p, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !7    ; 2 uses
  %i.t = add i32 %i.q, -1                         ; 2 uses
  %.not = icmp ugt i32 %.03350, %i.t
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %2, ptr noundef %3, i32 noundef %.03350, i32 noundef %i.t, i32 noundef 1) ; 2 uses
  %.not44 = icmp eq i32 %i.u, 0
  br i1 %.not44, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = icmp eq i32 %i.s, -1
  br i1 %i.v, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = add nuw i32 %i.s, 1                      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread.sink.split, label %bb.e, !llvm.loop !194

.thread.sink.split:                               ; preds = %bb.h, %bb.b
  %.lcssa.sink = phi i32 [ %i.e, %bb.b ], [ %i.w, %bb.h ]
  %i.x = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %2, ptr noundef %3, i32 noundef %.lcssa.sink, i32 noundef -1, i32 noundef 1)
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.f, %.thread.sink.split
  %.032 = phi i32 [ %i.x, %.thread.sink.split ], [ 0, %bb.g ], [ %i.u, %bb.f ]
  ret i32 %.032
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #21

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @add_ctype_to_cc_by_range(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %4, align 4, !tbaa !7      ; 6 uses
  %i.b = icmp eq i32 %1, 0
  %i.c = icmp sgt i32 %i.a, 0                     ; 3 uses
  br i1 %i.b, label %.preheader, label %.preheader144

.preheader144:                                    ; preds = %bb.a
  br i1 %i.c, label %.preheader142.lr.ph, label %.preheader140

.preheader142.lr.ph:                              ; preds = %.preheader144
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = getelementptr i8, ptr %2, i64 16
  %i.f = getelementptr i8, ptr %2, i64 180        ; 2 uses
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %.preheader142

.preheader:                                       ; preds = %bb.a
  br i1 %i.c, label %.lr.ph171, label %.loopexit

.lr.ph171:                                        ; preds = %.preheader
  %i.g = getelementptr i8, ptr %0, i64 8
  %i.h = getelementptr i8, ptr %2, i64 16
  %i.i = getelementptr i8, ptr %2, i64 180        ; 2 uses
  %wide.trip.count203 = zext nneg i32 %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph171, %._crit_edge168
  %indvars.iv200 = phi i64 [ 0, %.lr.ph171 ], [ %indvars.iv.next201, %._crit_edge168 ] ; 4 uses
  %sext220.a = shl i64 %indvars.iv200, 33
  %i.j = ashr exact i64 %sext220.a, 30
  %i.k = getelementptr i8, ptr %4, i64 %i.j       ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !7    ; 4 uses
  %indvars.iv200.tr = trunc i64 %indvars.iv200 to i32
  %i.n = shl i32 %indvars.iv200.tr, 1
  %i.o = add i32 %i.n, 2
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr [4 x i8], ptr %4, i64 %i.p ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !7    ; 2 uses
  %.not119164 = icmp ugt i32 %i.m, %i.r
  br i1 %.not119164, label %._crit_edge168, label %.lr.ph167.preheader

.lr.ph167.preheader:                              ; preds = %bb.b
  %umax198 = tail call i32 @llvm.umax.i32(i32 %i.m, i32 %3) ; 3 uses
  %exitcond199.not14.not = icmp ult i32 %i.m, %3
  br i1 %exitcond199.not14.not, label %.lr.ph16, label %.lr.ph167.preheader._crit_edge

.lr.ph167:                                        ; preds = %CC_DUP_WARN.exit
  %exitcond199.not = icmp eq i32 %5, %umax198
  br i1 %exitcond199.not, label %.lr.ph167.preheader._crit_edge, label %.lr.ph16, !llvm.loop !195

.lr.ph167.preheader._crit_edge:                   ; preds = %.lr.ph167.preheader, %.lr.ph167
  %.lcssa = phi i32 [ %i.au, %.lr.ph167 ], [ %i.r, %.lr.ph167.preheader ]
  %i.s = getelementptr i8, ptr %i.k, i64 4
  %i.t = trunc nuw nsw i64 %indvars.iv200 to i32  ; 2 uses
  %i.u = load i32, ptr %i.s, align 4, !tbaa !7
  %i.v = icmp ugt i32 %umax198, %i.u
  br i1 %i.v, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.lr.ph167.preheader._crit_edge
  %i.w = getelementptr i8, ptr %0, i64 40
  %i.x = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef %i.w, ptr noundef %2, i32 noundef %umax198, i32 noundef %.lcssa, i32 noundef 1) ; 2 uses
  %.not122 = icmp eq i32 %i.x, 0
  br i1 %.not122, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.y = add i32 %i.t, 1
  br label %.loopexit

.lr.ph16:                                         ; preds = %.lr.ph167.preheader, %.lr.ph167
  %.010416515 = phi i32 [ %5, %.lr.ph167 ], [ %i.m, %.lr.ph167.preheader ] ; 3 uses
  %i.z = sdiv i32 %.010416515, 32
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr [4 x i8], ptr %i.g, i64 %i.aa ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !7
  %i.ad = and i32 %.010416515, 31
  %i.ae = shl nuw i32 1, %i.ad                    ; 2 uses
  %i.af = and i32 %i.ac, %i.ae
  %.not121 = icmp eq i32 %i.af, 0
  %i.ag = load ptr, ptr @onig_warn, align 8
  %i.ah = icmp eq ptr %i.ag, @onig_null_warn
  %or.cond = select i1 %.not121, i1 true, i1 %i.ah
  br i1 %or.cond, label %CC_DUP_WARN.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph16
  %i.ai = tail call ptr @rb_ruby_verbose_ptr() #25
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !57
  %i.ak = and i64 %i.aj, -5
  %.not5.i = icmp eq i64 %i.ak, 0
  br i1 %.not5.i, label %CC_DUP_WARN.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !98
  %i.am = getelementptr i8, ptr %i.al, i64 8
  %i.an = load i32, ptr %i.am, align 4, !tbaa !60
  %i.ao = and i32 %i.an, 67108864
  %.not.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i, label %CC_DUP_WARN.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = load i32, ptr %i.i, align 4, !tbaa !137 ; 2 uses
  %i.aq = and i32 %i.ap, 67108864
  %.not4.i = icmp eq i32 %i.aq, 0
  br i1 %.not4.i, label %bb.h, label %CC_DUP_WARN.exit

bb.h:                                             ; preds = %bb.g
  %i.ar = or disjoint i32 %i.ap, 67108864
  store i32 %i.ar, ptr %i.i, align 4, !tbaa !137
  tail call void (ptr, ptr, ...) @onig_syntax_warn(ptr noundef nonnull %2, ptr noundef nonnull @.str.7)
  br label %CC_DUP_WARN.exit

CC_DUP_WARN.exit:                                 ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %.lr.ph16
  %i.as = load i32, ptr %i.ab, align 4, !tbaa !7
  %i.at = or i32 %i.as, %i.ae
  store i32 %i.at, ptr %i.ab, align 4, !tbaa !7
  %5 = add i32 %.010416515, 1                     ; 3 uses
  %i.au = load i32, ptr %i.q, align 4, !tbaa !7   ; 2 uses
  %.not119 = icmp ugt i32 %5, %i.au
  br i1 %.not119, label %._crit_edge168, label %.lr.ph167, !llvm.loop !195

._crit_edge168:                                   ; preds = %CC_DUP_WARN.exit, %bb.b
  %indvars.iv.next201 = add nuw nsw i64 %indvars.iv200, 1 ; 2 uses
  %exitcond204.not = icmp eq i64 %indvars.iv.next201, %wide.trip.count203
  br i1 %exitcond204.not, label %.thread, label %bb.b, !llvm.loop !196

.loopexit:                                        ; preds = %.preheader, %.lr.ph167.preheader._crit_edge, %bb.d
  %.1107 = phi i32 [ %i.y, %bb.d ], [ %i.t, %.lr.ph167.preheader._crit_edge ], [ 0, %.preheader ] ; 2 uses
  %i.av = getelementptr i8, ptr %0, i64 40
  %i.aw = icmp slt i32 %.1107, %i.a
  br i1 %i.aw, label %.lr.ph175.preheader, label %.thread

.lr.ph175.preheader:                              ; preds = %.loopexit
  %i.ax = zext i32 %.1107 to i64
  br label %.lr.ph175

bb.i:                                             ; preds = %.lr.ph175
  %indvars.iv.next206 = add i64 %indvars.iv205, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next206 to i32
  %exitcond208.not = icmp eq i32 %i.a, %lftr.wideiv
  br i1 %exitcond208.not, label %.thread, label %.lr.ph175, !llvm.loop !197

.lr.ph175:                                        ; preds = %.lr.ph175.preheader, %bb.i
  %indvars.iv205 = phi i64 [ %i.ax, %.lr.ph175.preheader ], [ %indvars.iv.next206, %bb.i ] ; 2 uses
  %i.ay = trunc i64 %indvars.iv205 to i32
  %i.az = shl i32 %i.ay, 1                        ; 2 uses
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr [4 x i8], ptr %4, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.bb, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !7
  %i.be = add i32 %i.az, 2
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr [4 x i8], ptr %4, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !7
  %i.bi = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef %i.av, ptr noundef %2, i32 noundef %i.bd, i32 noundef %i.bh, i32 noundef 1) ; 2 uses
  %.not123 = icmp eq i32 %i.bi, 0
  br i1 %.not123, label %bb.i, label %.thread

.preheader142:                                    ; preds = %.preheader142.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.preheader142.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %.0155 = phi i32 [ 0, %.preheader142.lr.ph ], [ %i.cv, %._crit_edge ] ; 4 uses
  %sext = shl i64 %indvars.iv, 33
  %i.bj = ashr exact i64 %sext, 30
  %i.bk = getelementptr i8, ptr %4, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 4      ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !7
  %i.bn = icmp ult i32 %.0155, %i.bm
  br i1 %i.bn, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader142
  %umax = tail call i32 @llvm.umax.i32(i32 %.0155, i32 %3)
  %exitcond.not11.not = icmp ult i32 %.0155, %3
  br i1 %exitcond.not11.not, label %.lr.ph13, label %.loopexit141

.preheader140:                                    ; preds = %._crit_edge, %.preheader144
  %.0.lcssa = phi i32 [ 0, %.preheader144 ], [ %i.cv, %._crit_edge ] ; 2 uses
  %i.bo = icmp ult i32 %.0.lcssa, %3
  br i1 %i.bo, label %.lr.ph157, label %.loopexit141

.lr.ph157:                                        ; preds = %.preheader140
  %i.bp = getelementptr i8, ptr %0, i64 8
  %i.bq = getelementptr i8, ptr %2, i64 16
  %i.br = getelementptr i8, ptr %2, i64 180       ; 2 uses
  br label %bb.n

.lr.ph:                                           ; preds = %CC_DUP_WARN.exit127
  %exitcond.not = icmp eq i32 %i.cn, %umax
  br i1 %exitcond.not, label %.loopexit141, label %.lr.ph13, !llvm.loop !198

.lr.ph13:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.110515312 = phi i32 [ %i.cn, %.lr.ph ], [ %.0155, %.lr.ph.preheader ] ; 3 uses
  %i.bs = sdiv i32 %.110515312, 32
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr [4 x i8], ptr %i.d, i64 %i.bt ; 3 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !7
  %i.bw = and i32 %.110515312, 31
  %i.bx = shl nuw i32 1, %i.bw                    ; 2 uses
  %i.by = and i32 %i.bv, %i.bx
  %.not116 = icmp eq i32 %i.by, 0
  %i.bz = load ptr, ptr @onig_warn, align 8
  %i.ca = icmp eq ptr %i.bz, @onig_null_warn
  %or.cond136 = select i1 %.not116, i1 true, i1 %i.ca
  br i1 %or.cond136, label %CC_DUP_WARN.exit127, label %bb.j

bb.j:                                             ; preds = %.lr.ph13
  %i.cb = tail call ptr @rb_ruby_verbose_ptr() #25
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !57
  %i.cd = and i64 %i.cc, -5
  %.not5.i124 = icmp eq i64 %i.cd, 0
  br i1 %.not5.i124, label %CC_DUP_WARN.exit127, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ce = load ptr, ptr %i.e, align 8, !tbaa !98
  %i.cf = getelementptr i8, ptr %i.ce, i64 8
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !60
  %i.ch = and i32 %i.cg, 67108864
  %.not.i125 = icmp eq i32 %i.ch, 0
  br i1 %.not.i125, label %CC_DUP_WARN.exit127, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ci = load i32, ptr %i.f, align 4, !tbaa !137 ; 2 uses
  %i.cj = and i32 %i.ci, 67108864
  %.not4.i126 = icmp eq i32 %i.cj, 0
  br i1 %.not4.i126, label %bb.m, label %CC_DUP_WARN.exit127

bb.m:                                             ; preds = %bb.l
  %i.ck = or disjoint i32 %i.ci, 67108864
  store i32 %i.ck, ptr %i.f, align 4, !tbaa !137
  tail call void (ptr, ptr, ...) @onig_syntax_warn(ptr noundef nonnull %2, ptr noundef nonnull @.str.7)
  br label %CC_DUP_WARN.exit127

CC_DUP_WARN.exit127:                              ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %.lr.ph13
  %i.cl = load i32, ptr %i.bu, align 4, !tbaa !7
  %i.cm = or i32 %i.cl, %i.bx
  store i32 %i.cm, ptr %i.bu, align 4, !tbaa !7
  %i.cn = add nuw i32 %.110515312, 1              ; 3 uses
  %i.co = load i32, ptr %i.bl, align 4, !tbaa !7
  %i.cp = icmp ult i32 %i.cn, %i.co
  br i1 %i.cp, label %.lr.ph, label %._crit_edge, !llvm.loop !198

._crit_edge:                                      ; preds = %CC_DUP_WARN.exit127, %.preheader142
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.cq = shl i32 %indvars.iv.tr, 1
  %i.cr = add i32 %i.cq, 2
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr [4 x i8], ptr %4, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !7
  %i.cv = add i32 %i.cu, 1                        ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond191.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond191.not, label %.preheader140, label %.preheader142, !llvm.loop !199

bb.n:                                             ; preds = %.lr.ph157, %CC_DUP_WARN.exit131
  %.2156 = phi i32 [ %.0.lcssa, %.lr.ph157 ], [ %i.dr, %CC_DUP_WARN.exit131 ] ; 3 uses
  %i.cw = sdiv i32 %.2156, 32
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr [4 x i8], ptr %i.bp, i64 %i.cx ; 3 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !7
  %i.da = and i32 %.2156, 31
  %i.db = shl nuw i32 1, %i.da                    ; 2 uses
  %i.dc = and i32 %i.cz, %i.db
  %.not = icmp eq i32 %i.dc, 0
  %i.dd = load ptr, ptr @onig_warn, align 8
  %i.de = icmp eq ptr %i.dd, @onig_null_warn
  %or.cond138 = select i1 %.not, i1 true, i1 %i.de
  br i1 %or.cond138, label %CC_DUP_WARN.exit131, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.df = tail call ptr @rb_ruby_verbose_ptr() #25
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !57
  %i.dh = and i64 %i.dg, -5
  %.not5.i128 = icmp eq i64 %i.dh, 0
  br i1 %.not5.i128, label %CC_DUP_WARN.exit131, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.di = load ptr, ptr %i.bq, align 8, !tbaa !98
  %i.dj = getelementptr i8, ptr %i.di, i64 8
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !60
  %i.dl = and i32 %i.dk, 67108864
  %.not.i129 = icmp eq i32 %i.dl, 0
  br i1 %.not.i129, label %CC_DUP_WARN.exit131, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dm = load i32, ptr %i.br, align 4, !tbaa !137 ; 2 uses
  %i.dn = and i32 %i.dm, 67108864
  %.not4.i130 = icmp eq i32 %i.dn, 0
  br i1 %.not4.i130, label %bb.r, label %CC_DUP_WARN.exit131

bb.r:                                             ; preds = %bb.q
  %i.do = or disjoint i32 %i.dm, 67108864
  store i32 %i.do, ptr %i.br, align 4, !tbaa !137
  tail call void (ptr, ptr, ...) @onig_syntax_warn(ptr noundef nonnull %2, ptr noundef nonnull @.str.7)
  br label %CC_DUP_WARN.exit131

CC_DUP_WARN.exit131:                              ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  %i.dp = load i32, ptr %i.cy, align 4, !tbaa !7
  %i.dq = or i32 %i.dp, %i.db
  store i32 %i.dq, ptr %i.cy, align 4, !tbaa !7
  %i.dr = add i32 %.2156, 1                       ; 2 uses
  %exitcond192.not = icmp eq i32 %i.dr, %3
  br i1 %exitcond192.not, label %.loopexit141, label %bb.n, !llvm.loop !200

.loopexit141:                                     ; preds = %.lr.ph.preheader, %.lr.ph, %CC_DUP_WARN.exit131, %.preheader140
  br i1 %i.c, label %.lr.ph161, label %._crit_edge162

.lr.ph161:                                        ; preds = %.loopexit141
  %i.ds = getelementptr i8, ptr %0, i64 40
  %wide.trip.count196 = zext nneg i32 %i.a to i64
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph161, %bb.u
  %indvars.iv193 = phi i64 [ 0, %.lr.ph161 ], [ %indvars.iv.next194, %bb.u ] ; 3 uses
  %.1159 = phi i32 [ %3, %.lr.ph161 ], [ %i.ef, %bb.u ] ; 2 uses
  %sext219 = shl i64 %indvars.iv193, 33
  %i.dt = ashr exact i64 %sext219, 30
  %i.du = getelementptr i8, ptr %4, i64 %i.dt
  %i.dv = getelementptr i8, ptr %i.du, i64 4
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !7  ; 2 uses
  %i.dx = icmp ult i32 %.1159, %i.dw
  br i1 %i.dx, label %bb.t, label %bb.u
end_hunk_1
begin_hunk_2_@i_apply_case_fold:bb.a
bb.d:                                             ; preds = %bb.c
  %.not75 = icmp eq i32 %i.o, 0
  %i.s = zext i1 %.not75 to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.a, %bb.d, %bb.c
  %.066 = phi i32 [ %i.o, %bb.c ], [ 0, %bb.a ], [ %i.s, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %i.t = icmp eq i32 %2, 1
  br i1 %i.t, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr i8, ptr %i.b, i64 8        ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !97
  %i.w = tail call i32 @onig_is_code_in_cc(ptr noundef %i.v, i32 noundef %0, ptr noundef %i.d) #25
  %cond80 = icmp eq i32 %i.w, 0
  %i.x = getelementptr i8, ptr %i.d, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !145
  %i.z = trunc i32 %i.y to i1                     ; 2 uses
  br i1 %cond80, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.old2.not = icmp eq i32 %.066, 0
  %or.cond89 = select i1 %i.z, i1 true, i1 %.old2.not
  br i1 %or.cond89, label %.thread, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.aa = icmp ne i32 %.066, 0
  %or.cond = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %or.cond, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ab = load i32, ptr %1, align 4, !tbaa !7     ; 5 uses
  %i.ac = load ptr, ptr %i.u, align 8, !tbaa !97  ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 16
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !70
  %i.af = icmp eq i32 %i.ae, 1
  br i1 %i.af, label %is_singlebyte_range.exit.thread, label %is_singlebyte_range.exit

is_singlebyte_range.exit:                         ; preds = %bb.i
  %i.ag = getelementptr i8, ptr %i.ac, i64 20
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !47
  %i.ai = icmp slt i32 %i.ah, 2
  %i.aj = icmp ult i32 %i.ab, 128
  %spec.select.i = and i1 %i.aj, %i.ai
  br i1 %spec.select.i, label %is_singlebyte_range.exit.thread, label %bb.j

is_singlebyte_range.exit.thread:                  ; preds = %bb.i, %is_singlebyte_range.exit
  %i.ak = and i32 %i.ab, 31
  %i.al = shl nuw i32 1, %i.ak
  %i.am = sdiv i32 %i.ab, 32
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr [4 x i8], ptr %i.g, i64 %i.an ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !7
  %i.aq = or i32 %i.ap, %i.al
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !7
  br label %.thread

bb.j:                                             ; preds = %is_singlebyte_range.exit
  %i.ar = getelementptr i8, ptr %i.d, i64 40
  %i.as = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef %i.ar, ptr noundef nonnull %i.b, i32 noundef %i.ab, i32 noundef %i.ab, i32 noundef 0) ; 2 uses
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %bb.s, label %.thread

.thread:                                          ; preds = %bb.h, %is_singlebyte_range.exit.thread, %bb.j, %bb.g
  br label %bb.s

bb.k:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.au = getelementptr i8, ptr %i.b, i64 8       ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !97
  %i.aw = tail call i32 @onig_is_code_in_cc(ptr noundef %i.av, i32 noundef %0, ptr noundef %i.d) #25
  %.not76 = icmp eq i32 %i.aw, 0
  br i1 %.not76, label %.thread86, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr i8, ptr %i.d, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !145
  %i.az = and i32 %i.ay, 1
  %.not77 = icmp eq i32 %i.az, 0
  br i1 %.not77, label %.preheader, label %.thread86

.preheader:                                       ; preds = %bb.l
  %i.ba = icmp sgt i32 %2, 0
  br i1 %i.ba, label %bb.m, label %._crit_edge

bb.m:                                             ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %2 to i64
  %i.bb = load ptr, ptr %i.au, align 8, !tbaa !97 ; 2 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !130
  %i.be = load i32, ptr %1, align 4, !tbaa !7
  %i.bf = call i32 %i.bd(i32 noundef %i.be, ptr noundef nonnull %i.a, ptr noundef %i.bb) #25
  %i.bg = call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 12 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %onig_node_new_str.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = sext i32 %i.bf to i64
  %i.bj = getelementptr i8, ptr %i.a, i64 %i.bi
  store i32 0, ptr %i.bg, align 1
  %i.bk = getelementptr i8, ptr %i.bg, i64 28
  store i32 0, ptr %i.bk, align 4, !tbaa !13
  %i.bl = getelementptr i8, ptr %i.bg, i64 24     ; 3 uses
  store i32 0, ptr %i.bl, align 8, !tbaa !13
  %i.bm = getelementptr i8, ptr %i.bg, i64 32     ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bg, i64 8
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !13
  %i.bo = getelementptr i8, ptr %i.bg, i64 16
  store ptr %i.bm, ptr %i.bo, align 8, !tbaa !13
  %i.bp = call i32 @onig_node_str_cat(ptr noundef nonnull %i.bg, ptr noundef nonnull %i.a, ptr noundef %i.bj)
  %.not.i.i.peel = icmp eq i32 %i.bp, 0
  br i1 %.not.i.i.peel, label %.lr.ph.peel.next, label %bb.o

.lr.ph.peel.next:                                 ; preds = %bb.n
  %i.bq = load i32, ptr %i.bl, align 8, !tbaa !13
  %i.br = or i32 %i.bq, 2
  store i32 %i.br, ptr %i.bl, align 8, !tbaa !13
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @onig_node_free(ptr noundef nonnull %i.bg)
  br label %onig_node_new_str.exit.thread

bb.p:                                             ; preds = %bb.q, %.lr.ph.peel.next
  %indvars.iv = phi i64 [ 1, %.lr.ph.peel.next ], [ %indvars.iv.next, %bb.q ] ; 2 uses
  %i.bs = load ptr, ptr %i.au, align 8, !tbaa !97 ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 48
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !130
  %i.bv = getelementptr [4 x i8], ptr %1, i64 %indvars.iv
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !7
  %i.bx = call i32 %i.bu(i32 noundef %i.bw, ptr noundef nonnull %i.a, ptr noundef %i.bs) #25
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr i8, ptr %i.a, i64 %i.by
  %i.ca = call i32 @onig_node_str_cat(ptr noundef nonnull %i.bg, ptr noundef nonnull %i.a, ptr noundef %i.bz) ; 2 uses
  %i.cb = icmp slt i32 %i.ca, 0
  br i1 %i.cb, label %.loopexit, label %bb.q

.loopexit:                                        ; preds = %bb.p
  call void @onig_node_free(ptr noundef nonnull %i.bg)
  br label %onig_node_new_str.exit.thread

bb.q:                                             ; preds = %bb.p
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.p, !llvm.loop !208

._crit_edge:                                      ; preds = %bb.q, %.preheader
  %.0.lcssa = phi ptr [ null, %.preheader ], [ %i.bg, %bb.q ]
  %i.cc = call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 5 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %onig_node_new_alt.exit.thread, label %bb.r

onig_node_new_alt.exit.thread:                    ; preds = %._crit_edge
  %i.ce = getelementptr i8, ptr %3, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !152
  store ptr null, ptr %i.cf, align 8, !tbaa !90
  br label %onig_node_new_str.exit.thread

bb.r:                                             ; preds = %._crit_edge
  store i32 9, ptr %i.cc, align 1
  %i.cg = getelementptr i8, ptr %i.cc, i64 8
  store ptr %.0.lcssa, ptr %i.cg, align 8, !tbaa !13
  %i.ch = getelementptr i8, ptr %i.cc, i64 16     ; 2 uses
  store ptr null, ptr %i.ch, align 8, !tbaa !13
  %i.ci = getelementptr i8, ptr %3, i64 32        ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !152
  store ptr %i.cc, ptr %i.cj, align 8, !tbaa !90
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !152
  br label %.thread86

.thread86:                                        ; preds = %bb.r, %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.s

onig_node_new_str.exit.thread:                    ; preds = %bb.m, %bb.o, %onig_node_new_alt.exit.thread, %.loopexit
  %.164 = phi i32 [ -5, %onig_node_new_alt.exit.thread ], [ %i.ca, %.loopexit ], [ -5, %bb.o ], [ -5, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.s

bb.s:                                             ; preds = %.thread, %.thread86, %onig_node_new_str.exit.thread, %bb.j
  %.2 = phi i32 [ %i.as, %bb.j ], [ %.164, %onig_node_new_str.exit.thread ], [ 0, %.thread86 ], [ 0, %.thread ]
  ret i32 %.2
}

declare i32 @onig_is_code_in_cc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

declare ptr @onigenc_get_prev_char_head(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind sspstrong memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind sspstrong willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind sspstrong willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind sspstrong memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn }
attributes #19 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nounwind }
attributes #26 = { nounwind allocsize(0) }
attributes #27 = { nounwind allocsize(1) }
attributes #28 = { cold nounwind }
attributes #29 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !9, i64 0}
!13 = !{!9, !9, i64 0}
!14 = !{!15, !16, i64 8}
!15 = !{!"", !16, i64 0, !16, i64 8}
!16 = !{!"p1 omnipotent char", !12, i64 0}
!17 = !{!15, !16, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = distinct !{!20, !19}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.unroll.disable"}
!23 = !{!24, !12, i64 88}
!24 = !{!"re_pattern_buffer", !16, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !12, i64 64, !25, i64 72, !12, i64 80, !12, i64 88, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !26, i64 112, !26, i64 120, !8, i64 128, !16, i64 136, !16, i64 144, !9, i64 152, !27, i64 408, !27, i64 416, !26, i64 424, !26, i64 432, !26, i64 440, !28, i64 448}
!25 = !{!"p1 _ZTS18OnigEncodingTypeST", !12, i64 0}
!26 = !{!"long", !9, i64 0}
!27 = !{!"p1 int", !12, i64 0}
!28 = !{!"p1 _ZTS17re_pattern_buffer", !12, i64 0}
!29 = !{!30, !26, i64 16}
!30 = !{!"st_table", !9, i64 0, !9, i64 1, !9, i64 2, !8, i64 4, !31, i64 8, !26, i64 16, !32, i64 24, !26, i64 32, !26, i64 40, !33, i64 48}
!31 = !{!"p1 _ZTS12st_hash_type", !12, i64 0}
!32 = !{!"p1 long", !12, i64 0}
!33 = !{!"p1 _ZTS14st_table_entry", !12, i64 0}
!34 = !{!35, !8, i64 24}
!35 = !{!"", !12, i64 0, !28, i64 8, !12, i64 16, !8, i64 24, !25, i64 32}
!36 = !{!35, !12, i64 0}
!37 = !{!35, !28, i64 8}
!38 = !{!35, !12, i64 16}
!39 = !{!24, !25, i64 72}
!40 = !{!35, !25, i64 32}
!41 = !{!42, !26, i64 8}
!42 = !{!"", !16, i64 0, !26, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !27, i64 32}
!43 = !{!42, !8, i64 16}
!44 = !{!42, !8, i64 20}
!45 = !{!42, !8, i64 24}
!46 = !{!42, !27, i64 32}
!47 = !{!48, !8, i64 20}
!48 = !{!"OnigEncodingTypeST", !12, i64 0, !16, i64 8, !8, i64 16, !8, i64 20, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !8, i64 128, !8, i64 132}
!49 = !{!42, !16, i64 0}
!50 = !{!51, !8, i64 0}
!51 = !{!"", !8, i64 0}
!52 = distinct !{!52, !19}
!53 = !{!27, !27, i64 0}
!54 = !{!55, !32, i64 8}
!55 = !{!"re_registers", !8, i64 0, !8, i64 4, !32, i64 8, !32, i64 16}
!56 = distinct !{!56, !19}
!57 = !{!26, !26, i64 0}
!58 = !{!24, !8, i64 56}
!59 = !{!24, !12, i64 80}
!60 = !{!61, !8, i64 8}
!61 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !62, i64 16}
!62 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20}
!63 = !{!64, !65, i64 40}
!64 = !{!"", !51, i64 0, !8, i64 4, !9, i64 8, !65, i64 40}
!65 = !{!"p1 _ZTS5_BBuf", !12, i64 0}
!66 = !{!67, !16, i64 0}
!67 = !{!"_BBuf", !16, i64 0, !8, i64 8, !8, i64 12}
!68 = distinct !{!68, !19}
!69 = !{!16, !16, i64 0}
!70 = !{!48, !8, i64 16}
!71 = !{!48, !12, i64 32}
!72 = !{!48, !12, i64 88}
!73 = distinct !{!73, !19}
!74 = !{!75, !8, i64 24}
!75 = !{!"", !51, i64 0, !8, i64 4, !76, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !76, i64 32, !76, i64 40, !8, i64 48}
!76 = !{!"p1 _ZTS5_Node", !12, i64 0}
!77 = !{!75, !8, i64 16}
!78 = !{!75, !8, i64 20}
!79 = !{i64 0, i64 56, !13}
!80 = !{!75, !76, i64 8}
!81 = !{!82, !8, i64 0}
!82 = !{!"", !8, i64 0, !8, i64 4, !25, i64 8, !12, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !28, i64 72, !12, i64 80, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !9, i64 104, !83, i64 168, !8, i64 176, !8, i64 180, !16, i64 184, !8, i64 192}
!83 = !{!"p2 _ZTS5_Node", !84, i64 0}
!84 = !{!"any p2 pointer", !12, i64 0}
!85 = !{!24, !8, i64 96}
!86 = !{!82, !8, i64 4}
!87 = !{!82, !16, i64 40}
!88 = !{!82, !16, i64 48}
!89 = !{!82, !28, i64 72}
!90 = !{!76, !76, i64 0}
!91 = !{!82, !8, i64 88}
!92 = !{!82, !8, i64 92}
!93 = !{!82, !83, i64 168}
!94 = !{!24, !8, i64 16}
!95 = !{!82, !16, i64 56}
!96 = !{!82, !16, i64 64}
!97 = !{!82, !25, i64 8}
!98 = !{!82, !12, i64 16}
!99 = !{!100, !8, i64 0}
!100 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !16, i64 16, !9, i64 24}
!101 = !{!100, !8, i64 8}
!102 = !{!100, !16, i64 16}
!103 = !{!61, !8, i64 16}
!104 = !{!61, !8, i64 4}
!105 = !{!100, !8, i64 4}
!106 = !{!61, !8, i64 0}
!107 = !{!61, !8, i64 20}
!108 = !{!61, !8, i64 24}
!109 = !{!61, !8, i64 28}
!110 = !{!61, !8, i64 32}
!111 = !{!61, !8, i64 36}
!112 = distinct !{!112, !19}
!113 = !{!82, !8, i64 176}
!114 = distinct !{!114, !19}
!115 = !{ptr @onig_scan_unsigned_number}
!116 = distinct !{!116, !19}
!117 = distinct !{!117, !19}
!118 = distinct !{null}
!119 = distinct !{!119, !19}
!120 = distinct !{null, ptr @onig_scan_unsigned_number}
!121 = distinct !{!121, !19}
!122 = !{!82, !16, i64 184}
!123 = !{!82, !8, i64 192}
!124 = distinct !{!124, !19}
!125 = distinct !{!125, !19}
!126 = distinct !{!126, !19}
!127 = distinct !{!127, !19}
!128 = distinct !{null}
!129 = !{!82, !8, i64 96}
!130 = !{!48, !12, i64 48}
!131 = distinct !{null}
!132 = !{!48, !8, i64 132}
!133 = distinct !{null}
!134 = !{!48, !12, i64 80}
!135 = distinct !{null, null}
!136 = distinct !{null, ptr @add_property_to_cc, null}
!137 = !{!82, !8, i64 180}
!138 = !{!65, !65, i64 0}
!139 = distinct !{!139, !19}
!140 = distinct !{!140, !19}
!141 = distinct !{!141, !19}
!142 = distinct !{null}
!143 = distinct !{null}
!144 = distinct !{!144, !19}
!145 = !{!64, !8, i64 4}
!146 = distinct !{null, null}
!147 = !{!148, !12, i64 0}
!148 = !{!"", !12, i64 0, !12, i64 8, !12, i64 16, !76, i64 24, !83, i64 32}
!149 = !{!148, !12, i64 8}
!150 = !{!148, !12, i64 16}
!151 = !{!148, !76, i64 24}
!152 = !{!148, !83, i64 32}
!153 = !{!48, !12, i64 64}
!154 = distinct !{null, ptr @cclass_case_fold}
!155 = distinct !{!155, !19}
!156 = !{!157, !16, i64 16}
!157 = !{!"", !51, i64 0, !16, i64 8, !16, i64 16, !8, i64 24, !8, i64 28, !9, i64 32}
!158 = !{!157, !16, i64 8}
end_hunk_2

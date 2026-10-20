Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/regparse?download=true
inline.NumInlined: 253
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 11
begin_hunk_0_@name_add:bb.a

bb.h:                                             ; preds = %bb.f, %.lr.ph.i
  store ptr %i.t, ptr %i.m, align 8, !tbaa !53
  %i.y = getelementptr i8, ptr %i.t, i64 %i.f
  %i.z = ptrtoint ptr %i.m to i64
  %i.aa = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #26 ; 4 uses
  store ptr %i.t, ptr %i.aa, align 8, !tbaa !25
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  store ptr %i.y, ptr %i.ab, align 8, !tbaa !24
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = call i32 @rb_st_insert(ptr noundef %.062, i64 noundef %i.ac, i64 noundef %i.z) #25
  %.not.i75 = icmp eq i32 %i.ad, 0
  br i1 %.not.i75, label %.thread94, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef nonnull %i.aa) #25
  br label %.thread94

.thread94:                                        ; preds = %bb.h, %bb.i
  %i.ae = getelementptr i8, ptr %i.m, i64 8
  store i64 %i.f, ptr %i.ae, align 8, !tbaa !46
  %i.af = getelementptr i8, ptr %i.m, i64 20
  store i32 0, ptr %i.af, align 4, !tbaa !48
  %i.ag = getelementptr i8, ptr %i.m, i64 32
  store ptr null, ptr %i.ag, align 8, !tbaa !50
  %i.ah = getelementptr i8, ptr %i.m, i64 16
  store i32 1, ptr %i.ah, align 8, !tbaa !47
  br label %bb.n

bb.j:                                             ; preds = %name_find.exit
  %.phi.trans.insert = getelementptr i8, ptr %.pre.i, i64 16
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !47 ; 4 uses
  %i.ai = getelementptr i8, ptr %.pre.i, i64 16   ; 3 uses
  %i.aj = icmp sgt i32 %.pre, 0
  br i1 %i.aj, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr i8, ptr %4, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !91
  %i.am = getelementptr i8, ptr %i.al, i64 8
  %i.an = load i32, ptr %i.am, align 4, !tbaa !60
  %i.ao = and i32 %i.an, 256
  %.not = icmp eq i32 %i.ao, 0
  br i1 %.not, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr i8, ptr %4, i64 56
  store ptr %1, ptr %i.ap, align 8, !tbaa !88
  %i.aq = getelementptr i8, ptr %4, i64 64
  store ptr %2, ptr %i.aq, align 8, !tbaa !89
  br label %.critedge

bb.m:                                             ; preds = %bb.j
  %i.ar = add nsw i32 %.pre, 1                    ; 2 uses
  store i32 %i.ar, ptr %i.ai, align 8, !tbaa !47
  %i.as = icmp eq i32 %.pre, 0
  br i1 %i.as, label %bb.n, label %.thread77

bb.n:                                             ; preds = %.thread94, %bb.m
  %.0639396 = phi ptr [ %i.m, %.thread94 ], [ %.pre.i, %bb.m ]
  %i.at = getelementptr i8, ptr %.0639396, i64 24
  store i32 %3, ptr %i.at, align 8, !tbaa !49
  br label %.critedge

bb.o:                                             ; preds = %bb.k
  %i.au = add nuw i32 %.pre, 1                    ; 3 uses
  store i32 %i.au, ptr %i.ai, align 8, !tbaa !47
  %i.av = icmp eq i32 %i.au, 2
  br i1 %i.av, label %bb.p, label %.thread77

bb.p:                                             ; preds = %bb.o
  %i.aw = call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #26 ; 4 uses
  %i.ax = getelementptr i8, ptr %.pre.i, i64 32
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !50
  %i.ay = icmp eq ptr %i.aw, null
  br i1 %i.ay, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.az = getelementptr i8, ptr %.pre.i, i64 20
  store i32 8, ptr %i.az, align 4, !tbaa !48
  %i.ba = getelementptr i8, ptr %.pre.i, i64 24
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !49
  store i32 %i.bb, ptr %i.aw, align 4, !tbaa !18
  %i.bc = getelementptr i8, ptr %i.aw, i64 4
  store i32 %3, ptr %i.bc, align 4, !tbaa !18
  br label %.critedge

.thread77:                                        ; preds = %bb.m, %bb.o
  %i.bd = phi i32 [ %i.au, %bb.o ], [ %i.ar, %bb.m ] ; 2 uses
  %i.be = getelementptr i8, ptr %.pre.i, i64 20   ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !48 ; 2 uses
  %i.bg = icmp sgt i32 %i.bd, %i.bf
  br i1 %i.bg, label %bb.r, label %.thread77._crit_edge

.thread77._crit_edge:                             ; preds = %.thread77
  %.phi.trans.insert78 = getelementptr i8, ptr %.pre.i, i64 32
  %.pre79 = load ptr, ptr %.phi.trans.insert78, align 8, !tbaa !50
  br label %bb.t

bb.r:                                             ; preds = %.thread77
  %i.bh = shl i32 %i.bf, 1                        ; 2 uses
  %i.bi = getelementptr i8, ptr %.pre.i, i64 32   ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !50
  %i.bk = sext i32 %i.bh to i64
  %i.bl = shl nsw i64 %i.bk, 2
  %i.bm = call ptr @realloc(ptr noundef %i.bj, i64 noundef %i.bl) #27 ; 3 uses
  %.not73 = icmp eq ptr %i.bm, null
  br i1 %.not73, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %i.bm, ptr %i.bi, align 8, !tbaa !50
  store i32 %i.bh, ptr %i.be, align 4, !tbaa !48
  %.pre80 = load i32, ptr %i.ai, align 8, !tbaa !47
  br label %bb.t

bb.t:                                             ; preds = %.thread77._crit_edge, %bb.s
  %i.bn = phi i32 [ %i.bd, %.thread77._crit_edge ], [ %.pre80, %bb.s ]
  %i.bo = phi ptr [ %.pre79, %.thread77._crit_edge ], [ %i.bm, %bb.s ]
  %i.bp = add i32 %i.bn, -1
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr [4 x i8], ptr %i.bo, i64 %i.bq
  store i32 %3, ptr %i.br, align 4, !tbaa !18
  br label %.critedge

.critedge:                                        ; preds = %bb.r, %bb.n, %bb.t, %bb.q, %bb.p, %bb.d, %bb.a, %bb.l, %bb.g
  %.1 = phi i32 [ -219, %bb.l ], [ -214, %bb.a ], [ -5, %bb.g ], [ 0, %bb.n ], [ -5, %bb.d ], [ -5, %bb.r ], [ -5, %bb.p ], [ 0, %bb.q ], [ 0, %bb.t ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree nounwind sspstrong willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noalias noundef ptr @node_new_option(i32 noundef %0) unnamed_addr #14 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 7 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %node_new_enclose.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  store <4 x i32> <i32 6, i32 0, i32 2, i32 0>, ptr %i.a, align 1
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %i.d = getelementptr i8, ptr %i.a, i64 24
  store ptr null, ptr %i.d, align 8, !tbaa !21
  %i.e = getelementptr i8, ptr %i.a, i64 20
  store i32 -1, ptr %i.e, align 4, !tbaa !21
  %i.f = getelementptr i8, ptr %i.a, i64 52
  store i32 0, ptr %i.f, align 4, !tbaa !21
  store i32 %0, ptr %i.c, align 8, !tbaa !21
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
  store i32 0, ptr %i.c, align 4, !tbaa !21
  %i.d = getelementptr i8, ptr %i.a, i64 24       ; 3 uses
  store i32 0, ptr %i.d, align 8, !tbaa !21
  %i.e = getelementptr i8, ptr %i.a, i64 32       ; 2 uses
  %i.f = getelementptr i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.f, align 8, !tbaa !21
  %i.g = getelementptr i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.g, align 8, !tbaa !21
  %i.h = tail call i32 @onig_node_str_cat(ptr noundef nonnull %i.a, ptr noundef nonnull %0, ptr noundef %1)
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %node_new_str.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @onig_node_free(ptr noundef nonnull %i.a)
  br label %node_new_str.exit.thread

node_new_str.exit:                                ; preds = %bb.b
  %i.i = load i32, ptr %i.d, align 8, !tbaa !21
  %i.j = or i32 %i.i, 1
  store i32 %i.j, ptr %i.d, align 8, !tbaa !21
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
  %i.i = load i32, ptr %i.h, align 4, !tbaa !18
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
  %i.p = load i64, ptr %i.o, align 8, !tbaa !56
  %i.q = and i64 %i.p, -5
  %.not5.i = icmp eq i64 %i.q, 0
  br i1 %.not5.i, label %CC_DUP_WARN.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !91
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 4, !tbaa !60
  %i.u = and i32 %i.t, 67108864
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %CC_DUP_WARN.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load i32, ptr %i.e, align 4, !tbaa !104  ; 2 uses
  %i.w = and i32 %i.v, 67108864
  %.not4.i = icmp eq i32 %i.w, 0
  br i1 %.not4.i, label %bb.f, label %CC_DUP_WARN.exit

bb.f:                                             ; preds = %bb.e
  %i.x = or disjoint i32 %i.v, 67108864
  store i32 %i.x, ptr %i.e, align 4, !tbaa !104
  tail call void (ptr, ptr, ...) @onig_syntax_warn(ptr noundef nonnull %0, ptr noundef nonnull @.str.7)
  br label %CC_DUP_WARN.exit

CC_DUP_WARN.exit:                                 ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.y = load i32, ptr %i.h, align 4, !tbaa !18
  %i.z = or i32 %i.y, %i.k
  store i32 %i.z, ptr %i.h, align 4, !tbaa !18
  %i.aa = add nsw i32 %.014, 1                    ; 2 uses
  %4 = icmp sle i32 %i.aa, %3
  %i.ab = icmp slt i32 %.014, 255
  %5 = and i1 %4, %i.ab
  br i1 %5, label %bb.b, label %._crit_edge, !llvm.loop !4

._crit_edge:                                      ; preds = %CC_DUP_WARN.exit, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @add_code_range_to_buf0(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #5 {
bb.a:
  %i.a = icmp ugt i32 %2, %3                      ; 2 uses
  %spec.select = select i1 %i.a, i32 %3, i32 %2   ; 7 uses
  %spec.select356 = select i1 %i.a, i32 %2, i32 %3 ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !105    ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #26 ; 8 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !105
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.critedge230, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @onig_bbuf_init(ptr noundef nonnull %i.d, i64 noundef 20) #25 ; 2 uses
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.d, label %.critedge230

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %i.d, i64 12       ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !115  ; 2 uses
  %i.i = icmp ult i32 %i.h, 4
  br i1 %i.i, label %.preheader.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !65
  br label %bb.g

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %i.j = phi i32 [ %i.k, %.preheader.i ], [ %i.h, %bb.d ] ; 2 uses
  %i.k = shl nuw nsw i32 %i.j, 1                  ; 3 uses
  %i.l = icmp samesign ult i32 %i.j, 2
  br i1 %i.l, label %.preheader.i, label %bb.e, !llvm.loop !186

bb.e:                                             ; preds = %.preheader.i
  store i32 %i.k, ptr %i.g, align 4, !tbaa !115
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !65
  %i.n = zext nneg i32 %i.k to i64
  %i.o = tail call ptr @realloc(ptr noundef %i.m, i64 noundef %i.n) #27 ; 3 uses
  %.not29.i = icmp eq ptr %i.o, null
  br i1 %.not29.i, label %.critedge230, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.o, ptr %i.d, align 8, !tbaa !65
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.p = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.o, %bb.f ]
  store i32 0, ptr %i.p, align 1
  %i.q = getelementptr i8, ptr %i.d, i64 8        ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !116
  %i.s = icmp ult i32 %i.r, 4
  br i1 %i.s, label %bb.h, label %._crit_edge.thread

bb.h:                                             ; preds = %bb.g
  store i32 4, ptr %i.q, align 8, !tbaa !116
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.h, %bb.g
  %i.t = load ptr, ptr %0, align 8, !tbaa !105    ; 2 uses
  %.pre = load ptr, ptr %i.t, align 8, !tbaa !65
  %i.u = getelementptr i8, ptr %.pre, i64 4
  br label %._crit_edge263

bb.i:                                             ; preds = %bb.a
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !65   ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !18   ; 7 uses
  %i.x = getelementptr i8, ptr %i.v, i64 4        ; 4 uses
  %i.y = icmp eq i32 %spec.select, 0
  %.not272 = icmp eq i32 %i.w, 0
  %.not = select i1 %i.y, i1 true, i1 %.not272
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.z = add i32 %spec.select, -1
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.j
  %.0171258 = phi i32 [ %i.w, %.lr.ph ], [ %.1172, %bb.j ] ; 2 uses
  %.0177257 = phi i32 [ 0, %.lr.ph ], [ %.1178, %bb.j ] ; 2 uses
  %i.aa = add i32 %.0171258, %.0177257            ; 2 uses
  %i.ab = lshr i32 %i.aa, 1                       ; 2 uses
  %i.ac = or i32 %i.aa, 1
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr [4 x i8], ptr %i.x, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !18
  %i.ag = icmp ugt i32 %i.z, %i.af                ; 2 uses
  %i.ah = add nuw i32 %i.ab, 1
  %.1178 = select i1 %i.ag, i32 %i.ah, i32 %.0177257 ; 3 uses
  %.1172 = select i1 %i.ag, i32 %.0171258, i32 %i.ab ; 2 uses
  %i.ai = icmp ult i32 %.1178, %.1172
  br i1 %i.ai, label %bb.j, label %._crit_edge, !llvm.loop !187

._crit_edge:                                      ; preds = %bb.j, %bb.i
  %.0177.lcssa = phi i32 [ 0, %bb.i ], [ %.1178, %bb.j ] ; 3 uses
  %i.aj = icmp eq i32 %spec.select356, -1
  %i.ak = select i1 %i.aj, i32 %i.w, i32 %.0177.lcssa ; 3 uses
  %i.al = icmp ult i32 %i.ak, %i.w
  br i1 %i.al, label %.lr.ph262, label %._crit_edge263

.lr.ph262:                                        ; preds = %._crit_edge
  %i.am = add i32 %spec.select356, 1
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph262, %bb.k
  %.2173260 = phi i32 [ %i.w, %.lr.ph262 ], [ %.3174, %bb.k ] ; 2 uses
  %.0175259 = phi i32 [ %i.ak, %.lr.ph262 ], [ %.1176, %bb.k ] ; 2 uses
  %i.an = add i32 %.2173260, %.0175259            ; 2 uses
  %i.ao = lshr i32 %i.an, 1                       ; 2 uses
  %i.ap = and i32 %i.an, -2
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr [4 x i8], ptr %i.x, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !18
  %.not226 = icmp ult i32 %i.am, %i.as            ; 2 uses
  %i.at = add nuw i32 %i.ao, 1
  %.1176 = select i1 %.not226, i32 %.0175259, i32 %i.at ; 3 uses
  %.3174 = select i1 %.not226, i32 %i.ao, i32 %.2173260 ; 2 uses
  %i.au = icmp ult i32 %.1176, %.3174
  br i1 %i.au, label %bb.k, label %._crit_edge263, !llvm.loop !188

._crit_edge263:                                   ; preds = %bb.k, %._crit_edge.thread, %._crit_edge
  %.0177.lcssa331 = phi i32 [ %.0177.lcssa, %._crit_edge ], [ 0, %._crit_edge.thread ], [ %.0177.lcssa, %bb.k ] ; 3 uses
  %storemerge323330 = phi i32 [ %i.w, %._crit_edge ], [ 0, %._crit_edge.thread ], [ %i.w, %bb.k ] ; 3 uses
  %.0170324329 = phi ptr [ %i.b, %._crit_edge ], [ %i.t, %._crit_edge.thread ], [ %i.b, %bb.k ] ; 20 uses
  %i.av = phi ptr [ %i.x, %._crit_edge ], [ %i.u, %._crit_edge.thread ], [ %i.x, %bb.k ] ; 4 uses
  %.0175.lcssa = phi i32 [ %i.ak, %._crit_edge ], [ 0, %._crit_edge.thread ], [ %.1176, %bb.k ] ; 7 uses
  %i.aw = add nuw i32 %.0177.lcssa331, 1          ; 4 uses
  %i.ax = sub i32 %i.aw, %.0175.lcssa             ; 3 uses
  %i.ay = add i32 %i.ax, %storemerge323330        ; 2 uses
  %i.az = icmp ugt i32 %i.ay, 10000
  br i1 %i.az, label %.critedge230, label %bb.l

bb.l:                                             ; preds = %._crit_edge263
  %.not214 = icmp eq i32 %i.ax, 1
  br i1 %.not214, label %.thread244, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not215 = icmp eq i32 %4, 0
  %.pre282 = shl i32 %.0177.lcssa331, 1           ; 3 uses
  br i1 %.not215, label %CC_DUP_WARN.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = or disjoint i32 %.pre282, 1
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr [4 x i8], ptr %i.av, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !18 ; 2 uses
  %.not216 = icmp ugt i32 %spec.select, %i.bd
  br i1 %.not216, label %CC_DUP_WARN.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = zext i32 %.pre282 to i64
  %i.bf = getelementptr [4 x i8], ptr %i.av, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !18
  %.not217 = icmp ugt i32 %i.bg, %spec.select
  %.not218 = icmp ugt i32 %i.bd, %spec.select356
  %or.cond = and i1 %.not218, %.not217
  %i.bh = load ptr, ptr @onig_warn, align 8
  %i.bi = icmp eq ptr %i.bh, @onig_null_warn
  %or.cond247 = select i1 %or.cond, i1 true, i1 %i.bi
  br i1 %or.cond247, label %CC_DUP_WARN.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = tail call ptr @rb_ruby_verbose_ptr() #25
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !56
  %i.bl = and i64 %i.bk, -5
  %.not5.i = icmp eq i64 %i.bl, 0
  br i1 %.not5.i, label %CC_DUP_WARN.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bm = getelementptr i8, ptr %1, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !91
  %i.bo = getelementptr i8, ptr %i.bn, i64 8
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !60
  %i.bq = and i32 %i.bp, 67108864
  %.not.i240 = icmp eq i32 %i.bq, 0
  br i1 %.not.i240, label %CC_DUP_WARN.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = getelementptr i8, ptr %1, i64 180       ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !104 ; 2 uses
  %i.bt = and i32 %i.bs, 67108864
  %.not4.i = icmp eq i32 %i.bt, 0
  br i1 %.not4.i, label %bb.s, label %CC_DUP_WARN.exit

bb.s:                                             ; preds = %bb.r
  %i.bu = or disjoint i32 %i.bs, 67108864
  store i32 %i.bu, ptr %i.br, align 4, !tbaa !104
  tail call void (ptr, ptr, ...) @onig_syntax_warn(ptr noundef nonnull %1, ptr noundef nonnull @.str.7)
  br label %CC_DUP_WARN.exit

CC_DUP_WARN.exit:                                 ; preds = %bb.m, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  %i.bv = zext i32 %.pre282 to i64
end_hunk_0
begin_hunk_1_@create_node_from_array:bb.a
  %i.g = icmp eq i32 %0, 0
  %i.h = zext i32 %indvars.iv to i64              ; 2 uses
  br i1 %i.g, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.c
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %bb.c ], [ %i.h, %.lr.ph ] ; 4 uses
  %.02227.us = phi ptr [ %i.o, %bb.c ], [ null, %.lr.ph ] ; 2 uses
  %i.i = getelementptr [8 x i8], ptr %2, i64 %indvars.iv44 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !84
  %i.k = tail call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 5 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %node_new_list.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.us
  store i32 8, ptr %i.k, align 1
  %i.m = getelementptr i8, ptr %i.k, i64 8
  store ptr %i.j, ptr %i.m, align 8, !tbaa !21
  %i.n = getelementptr i8, ptr %i.k, i64 16
  store ptr %.02227.us, ptr %i.n, align 8, !tbaa !21
  store ptr %i.k, ptr %1, align 8, !tbaa !84
  store ptr null, ptr %i.i, align 8, !tbaa !84
  %i.o = load ptr, ptr %1, align 8, !tbaa !84
  %indvars.iv.next45 = add nsw i64 %indvars.iv44, -1
  %i.p = icmp sgt i64 %indvars.iv44, 0
  br i1 %i.p, label %.lr.ph.split.us, label %.loopexit, !llvm.loop !2

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.d
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %bb.d ], [ %i.h, %.lr.ph ] ; 4 uses
  %.02227 = phi ptr [ %i.w, %bb.d ], [ null, %.lr.ph ] ; 2 uses
  %i.q = getelementptr [8 x i8], ptr %2, i64 %indvars.iv40 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !84
  %i.s = tail call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 5 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %node_new_list.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split
  store i32 9, ptr %i.s, align 1
  %i.u = getelementptr i8, ptr %i.s, i64 8
  store ptr %i.r, ptr %i.u, align 8, !tbaa !21
  %i.v = getelementptr i8, ptr %i.s, i64 16
  store ptr %.02227, ptr %i.v, align 8, !tbaa !21
  store ptr %i.s, ptr %1, align 8, !tbaa !84
  store ptr null, ptr %i.q, align 8, !tbaa !84
  %i.w = load ptr, ptr %1, align 8, !tbaa !84
  %indvars.iv.next41 = add nsw i64 %indvars.iv40, -1
  %i.x = icmp sgt i64 %indvars.iv40, 0
  br i1 %i.x, label %.lr.ph.split, label %.loopexit, !llvm.loop !2

node_new_list.exit:                               ; preds = %.lr.ph.split, %.lr.ph.split.us
  %.us-phi = phi ptr [ %.02227.us, %.lr.ph.split.us ], [ %.02227, %.lr.ph.split ]
  %.us-phi28.in = phi i64 [ %indvars.iv44, %.lr.ph.split.us ], [ %indvars.iv40, %.lr.ph.split ] ; 2 uses
  store ptr null, ptr %1, align 8, !tbaa !84
  %i.y = and i64 %.us-phi28.in, 2147483648
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.lr.ph32.preheader, label %._crit_edge

.lr.ph32.preheader:                               ; preds = %node_new_list.exit
  %i.aa = and i64 %.us-phi28.in, 2147483647
  br label %.lr.ph32

.lr.ph32:                                         ; preds = %.lr.ph32.preheader, %.lr.ph32
  %indvars.iv47 = phi i64 [ %i.aa, %.lr.ph32.preheader ], [ %indvars.iv.next48, %.lr.ph32 ] ; 3 uses
  %i.ab = getelementptr [8 x i8], ptr %2, i64 %indvars.iv47 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !84
  tail call void @onig_node_free(ptr noundef %i.ac)
  %indvars.iv.next48 = add nsw i64 %indvars.iv47, -1
  store ptr null, ptr %i.ab, align 8, !tbaa !84
  %.not58 = icmp eq i64 %indvars.iv47, 0
  br i1 %.not58, label %._crit_edge, label %.lr.ph32, !llvm.loop !3

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
  store ptr null, ptr %2, align 8, !tbaa !105
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.b = getelementptr i8, ptr %0, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !52
  %i.d = icmp sgt i32 %i.c, 1
  %i.e = select i1 %i.d, i32 0, i32 128
  br label %.thread.sink.split

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !65     ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !18   ; 2 uses
  %i.h = getelementptr i8, ptr %i.f, i64 4
  %i.i = icmp slt i32 %i.g, 1
  br i1 %i.i, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %0, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !52
  %i.l = icmp sgt i32 %i.k, 1
  %i.m = select i1 %i.l, i32 0, i32 128
  %wide.trip.count = zext nneg i32 %i.g to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.h
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %.03250 = phi i32 [ %i.m, %bb.d ], [ %i.w, %bb.h ] ; 2 uses
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.n = shl nuw i32 %indvars.iv.tr, 1
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr [4 x i8], ptr %i.h, i64 %i.o ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !18
  %i.r = getelementptr i8, ptr %i.p, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !18   ; 2 uses
  %i.t = add i32 %i.q, -1                         ; 2 uses
  %.not = icmp ugt i32 %.03250, %i.t
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %2, ptr noundef %3, i32 noundef %.03250, i32 noundef %i.t, i32 noundef 1) ; 2 uses
  %.not44 = icmp eq i32 %i.u, 0
  br i1 %.not44, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = icmp eq i32 %i.s, -1
  br i1 %i.v, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = add nuw i32 %i.s, 1                      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread.sink.split, label %bb.e, !llvm.loop !5

.thread.sink.split:                               ; preds = %bb.h, %bb.b
  %.lcssa.sink = phi i32 [ %i.e, %bb.b ], [ %i.w, %bb.h ]
  %i.x = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %2, ptr noundef %3, i32 noundef %.lcssa.sink, i32 noundef -1, i32 noundef 1)
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.f, %.thread.sink.split
  %.036 = phi i32 [ %i.x, %.thread.sink.split ], [ 0, %bb.g ], [ %i.u, %bb.f ]
  ret i32 %.036
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #21

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @add_ctype_to_cc_by_range(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %4, align 4, !tbaa !18     ; 6 uses
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
  %i.j = shl i64 %indvars.iv200, 33
  %i.k = ashr exact i64 %i.j, 30
  %i.l = getelementptr i8, ptr %4, i64 %i.k       ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !18   ; 4 uses
  %indvars.iv200.tr = trunc i64 %indvars.iv200 to i32
  %i.o = shl i32 %indvars.iv200.tr, 1
  %i.p = add i32 %i.o, 2
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr [4 x i8], ptr %4, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !18   ; 2 uses
  %.not119164 = icmp ugt i32 %i.n, %i.s
  br i1 %.not119164, label %._crit_edge168, label %.lr.ph167.preheader

.lr.ph167.preheader:                              ; preds = %bb.b
  %umax198 = tail call i32 @llvm.umax.i32(i32 %i.n, i32 %3) ; 3 uses
  %exitcond199.not14.not = icmp ult i32 %i.n, %3
  br i1 %exitcond199.not14.not, label %.lr.ph16, label %.lr.ph167.preheader._crit_edge

.lr.ph167:                                        ; preds = %CC_DUP_WARN.exit
  %exitcond199.not = icmp eq i32 %5, %umax198
  br i1 %exitcond199.not, label %.lr.ph167.preheader._crit_edge, label %.lr.ph16, !llvm.loop !197

.lr.ph167.preheader._crit_edge:                   ; preds = %.lr.ph167.preheader, %.lr.ph167
  %.lcssa = phi i32 [ %i.av, %.lr.ph167 ], [ %i.s, %.lr.ph167.preheader ]
  %i.t = getelementptr i8, ptr %i.l, i64 4
  %i.u = trunc nuw nsw i64 %indvars.iv200 to i32  ; 2 uses
  %i.v = load i32, ptr %i.t, align 4, !tbaa !18
  %i.w = icmp ugt i32 %umax198, %i.v
  br i1 %i.w, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.lr.ph167.preheader._crit_edge
  %i.x = getelementptr i8, ptr %0, i64 40
  %i.y = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef %i.x, ptr noundef %2, i32 noundef %umax198, i32 noundef %.lcssa, i32 noundef 1) ; 2 uses
  %.not122 = icmp eq i32 %i.y, 0
  br i1 %.not122, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.z = add i32 %i.u, 1
  br label %.loopexit

.lr.ph16:                                         ; preds = %.lr.ph167.preheader, %.lr.ph167
  %.010216515 = phi i32 [ %5, %.lr.ph167 ], [ %i.n, %.lr.ph167.preheader ] ; 3 uses
  %i.aa = sdiv i32 %.010216515, 32
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr [4 x i8], ptr %i.g, i64 %i.ab ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !18
  %i.ae = and i32 %.010216515, 31
  %i.af = shl nuw i32 1, %i.ae                    ; 2 uses
  %i.ag = and i32 %i.ad, %i.af
  %.not121 = icmp eq i32 %i.ag, 0
  %i.ah = load ptr, ptr @onig_warn, align 8
  %i.ai = icmp eq ptr %i.ah, @onig_null_warn
  %or.cond = select i1 %.not121, i1 true, i1 %i.ai
  br i1 %or.cond, label %CC_DUP_WARN.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph16
  %i.aj = tail call ptr @rb_ruby_verbose_ptr() #25
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !56
  %i.al = and i64 %i.ak, -5
  %.not5.i = icmp eq i64 %i.al, 0
  br i1 %.not5.i, label %CC_DUP_WARN.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !91
  %i.an = getelementptr i8, ptr %i.am, i64 8
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !60
  %i.ap = and i32 %i.ao, 67108864
  %.not.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i, label %CC_DUP_WARN.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = load i32, ptr %i.i, align 4, !tbaa !104 ; 2 uses
  %i.ar = and i32 %i.aq, 67108864
  %.not4.i = icmp eq i32 %i.ar, 0
  br i1 %.not4.i, label %bb.h, label %CC_DUP_WARN.exit

bb.h:                                             ; preds = %bb.g
  %i.as = or disjoint i32 %i.aq, 67108864
  store i32 %i.as, ptr %i.i, align 4, !tbaa !104
  tail call void (ptr, ptr, ...) @onig_syntax_warn(ptr noundef nonnull %2, ptr noundef nonnull @.str.7)
  br label %CC_DUP_WARN.exit

CC_DUP_WARN.exit:                                 ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %.lr.ph16
  %i.at = load i32, ptr %i.ac, align 4, !tbaa !18
  %i.au = or i32 %i.at, %i.af
  store i32 %i.au, ptr %i.ac, align 4, !tbaa !18
  %5 = add i32 %.010216515, 1                     ; 3 uses
  %i.av = load i32, ptr %i.r, align 4, !tbaa !18  ; 2 uses
  %.not119 = icmp ugt i32 %5, %i.av
  br i1 %.not119, label %._crit_edge168, label %.lr.ph167, !llvm.loop !197

._crit_edge168:                                   ; preds = %CC_DUP_WARN.exit, %bb.b
  %indvars.iv.next201 = add nuw nsw i64 %indvars.iv200, 1 ; 2 uses
  %exitcond204.not = icmp eq i64 %indvars.iv.next201, %wide.trip.count203
  br i1 %exitcond204.not, label %.thread, label %bb.b, !llvm.loop !198

.loopexit:                                        ; preds = %.preheader, %.lr.ph167.preheader._crit_edge, %bb.d
  %.1105 = phi i32 [ %i.z, %bb.d ], [ %i.u, %.lr.ph167.preheader._crit_edge ], [ 0, %.preheader ] ; 2 uses
  %i.aw = getelementptr i8, ptr %0, i64 40
  %i.ax = icmp slt i32 %.1105, %i.a
  br i1 %i.ax, label %.lr.ph175.preheader, label %.thread

.lr.ph175.preheader:                              ; preds = %.loopexit
  %i.ay = zext i32 %.1105 to i64
  br label %.lr.ph175

bb.i:                                             ; preds = %.lr.ph175
  %indvars.iv.next206 = add i64 %indvars.iv205, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next206 to i32
  %exitcond208.not = icmp eq i32 %i.a, %lftr.wideiv
  br i1 %exitcond208.not, label %.thread, label %.lr.ph175, !llvm.loop !199

.lr.ph175:                                        ; preds = %.lr.ph175.preheader, %bb.i
  %indvars.iv205 = phi i64 [ %i.ay, %.lr.ph175.preheader ], [ %indvars.iv.next206, %bb.i ] ; 2 uses
  %i.az = trunc i64 %indvars.iv205 to i32
  %i.ba = shl i32 %i.az, 1                        ; 2 uses
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr [4 x i8], ptr %4, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.bc, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !18
  %i.bf = add i32 %i.ba, 2
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr [4 x i8], ptr %4, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !18
  %i.bj = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef %i.aw, ptr noundef %2, i32 noundef %i.be, i32 noundef %i.bi, i32 noundef 1) ; 2 uses
  %.not123 = icmp eq i32 %i.bj, 0
  br i1 %.not123, label %bb.i, label %.thread

.preheader142:                                    ; preds = %.preheader142.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.preheader142.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %.0155 = phi i32 [ 0, %.preheader142.lr.ph ], [ %i.cx, %._crit_edge ] ; 4 uses
  %i.bk = shl i64 %indvars.iv, 33
  %i.bl = ashr exact i64 %i.bk, 30
  %i.bm = getelementptr i8, ptr %4, i64 %i.bl
  %i.bn = getelementptr i8, ptr %i.bm, i64 4      ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !18
  %i.bp = icmp ult i32 %.0155, %i.bo
  br i1 %i.bp, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader142
  %umax = tail call i32 @llvm.umax.i32(i32 %.0155, i32 %3)
  %exitcond.not11.not = icmp ult i32 %.0155, %3
  br i1 %exitcond.not11.not, label %.lr.ph13, label %.loopexit141

.preheader140:                                    ; preds = %._crit_edge, %.preheader144
  %.0.lcssa = phi i32 [ 0, %.preheader144 ], [ %i.cx, %._crit_edge ] ; 2 uses
  %i.bq = icmp ult i32 %.0.lcssa, %3
  br i1 %i.bq, label %.lr.ph157, label %.loopexit141

.lr.ph157:                                        ; preds = %.preheader140
  %i.br = getelementptr i8, ptr %0, i64 8
  %i.bs = getelementptr i8, ptr %2, i64 16
  %i.bt = getelementptr i8, ptr %2, i64 180       ; 2 uses
  br label %bb.n

.lr.ph:                                           ; preds = %CC_DUP_WARN.exit127
  %exitcond.not = icmp eq i32 %i.cp, %umax
  br i1 %exitcond.not, label %.loopexit141, label %.lr.ph13, !llvm.loop !200

.lr.ph13:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.110315312 = phi i32 [ %i.cp, %.lr.ph ], [ %.0155, %.lr.ph.preheader ] ; 3 uses
  %i.bu = sdiv i32 %.110315312, 32
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr [4 x i8], ptr %i.d, i64 %i.bv ; 3 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !18
  %i.by = and i32 %.110315312, 31
  %i.bz = shl nuw i32 1, %i.by                    ; 2 uses
  %i.ca = and i32 %i.bx, %i.bz
  %.not116 = icmp eq i32 %i.ca, 0
  %i.cb = load ptr, ptr @onig_warn, align 8
  %i.cc = icmp eq ptr %i.cb, @onig_null_warn
  %or.cond136 = select i1 %.not116, i1 true, i1 %i.cc
  br i1 %or.cond136, label %CC_DUP_WARN.exit127, label %bb.j

bb.j:                                             ; preds = %.lr.ph13
  %i.cd = tail call ptr @rb_ruby_verbose_ptr() #25
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !56
  %i.cf = and i64 %i.ce, -5
  %.not5.i124 = icmp eq i64 %i.cf, 0
  br i1 %.not5.i124, label %CC_DUP_WARN.exit127, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cg = load ptr, ptr %i.e, align 8, !tbaa !91
  %i.ch = getelementptr i8, ptr %i.cg, i64 8
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !60
  %i.cj = and i32 %i.ci, 67108864
  %.not.i125 = icmp eq i32 %i.cj, 0
  br i1 %.not.i125, label %CC_DUP_WARN.exit127, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ck = load i32, ptr %i.f, align 4, !tbaa !104 ; 2 uses
  %i.cl = and i32 %i.ck, 67108864
  %.not4.i126 = icmp eq i32 %i.cl, 0
  br i1 %.not4.i126, label %bb.m, label %CC_DUP_WARN.exit127

bb.m:                                             ; preds = %bb.l
  %i.cm = or disjoint i32 %i.ck, 67108864
  store i32 %i.cm, ptr %i.f, align 4, !tbaa !104
  tail call void (ptr, ptr, ...) @onig_syntax_warn(ptr noundef nonnull %2, ptr noundef nonnull @.str.7)
  br label %CC_DUP_WARN.exit127

CC_DUP_WARN.exit127:                              ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %.lr.ph13
  %i.cn = load i32, ptr %i.bw, align 4, !tbaa !18
  %i.co = or i32 %i.cn, %i.bz
  store i32 %i.co, ptr %i.bw, align 4, !tbaa !18
  %i.cp = add nuw i32 %.110315312, 1              ; 3 uses
  %i.cq = load i32, ptr %i.bn, align 4, !tbaa !18
  %i.cr = icmp ult i32 %i.cp, %i.cq
  br i1 %i.cr, label %.lr.ph, label %._crit_edge, !llvm.loop !200

._crit_edge:                                      ; preds = %CC_DUP_WARN.exit127, %.preheader142
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.cs = shl i32 %indvars.iv.tr, 1
  %i.ct = add i32 %i.cs, 2
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr [4 x i8], ptr %4, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !18
  %i.cx = add i32 %i.cw, 1                        ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond191.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond191.not, label %.preheader140, label %.preheader142, !llvm.loop !201

bb.n:                                             ; preds = %.lr.ph157, %CC_DUP_WARN.exit131
  %.2156 = phi i32 [ %.0.lcssa, %.lr.ph157 ], [ %i.dt, %CC_DUP_WARN.exit131 ] ; 3 uses
  %i.cy = sdiv i32 %.2156, 32
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr [4 x i8], ptr %i.br, i64 %i.cz ; 3 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !18
  %i.dc = and i32 %.2156, 31
  %i.dd = shl nuw i32 1, %i.dc                    ; 2 uses
  %i.de = and i32 %i.db, %i.dd
  %.not = icmp eq i32 %i.de, 0
  %i.df = load ptr, ptr @onig_warn, align 8
  %i.dg = icmp eq ptr %i.df, @onig_null_warn
  %or.cond138 = select i1 %.not, i1 true, i1 %i.dg
  br i1 %or.cond138, label %CC_DUP_WARN.exit131, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dh = tail call ptr @rb_ruby_verbose_ptr() #25
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !56
  %i.dj = and i64 %i.di, -5
  %.not5.i128 = icmp eq i64 %i.dj, 0
  br i1 %.not5.i128, label %CC_DUP_WARN.exit131, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dk = load ptr, ptr %i.bs, align 8, !tbaa !91
  %i.dl = getelementptr i8, ptr %i.dk, i64 8
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !60
  %i.dn = and i32 %i.dm, 67108864
  %.not.i129 = icmp eq i32 %i.dn, 0
  br i1 %.not.i129, label %CC_DUP_WARN.exit131, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.do = load i32, ptr %i.bt, align 4, !tbaa !104 ; 2 uses
  %i.dp = and i32 %i.do, 67108864
  %.not4.i130 = icmp eq i32 %i.dp, 0
  br i1 %.not4.i130, label %bb.r, label %CC_DUP_WARN.exit131

bb.r:                                             ; preds = %bb.q
  %i.dq = or disjoint i32 %i.do, 67108864
  store i32 %i.dq, ptr %i.bt, align 4, !tbaa !104
  tail call void (ptr, ptr, ...) @onig_syntax_warn(ptr noundef nonnull %2, ptr noundef nonnull @.str.7)
  br label %CC_DUP_WARN.exit131

CC_DUP_WARN.exit131:                              ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  %i.dr = load i32, ptr %i.da, align 4, !tbaa !18
  %i.ds = or i32 %i.dr, %i.dd
  store i32 %i.ds, ptr %i.da, align 4, !tbaa !18
  %i.dt = add i32 %.2156, 1                       ; 2 uses
  %exitcond192.not = icmp eq i32 %i.dt, %3
  br i1 %exitcond192.not, label %.loopexit141, label %bb.n, !llvm.loop !202

.loopexit141:                                     ; preds = %.lr.ph.preheader, %.lr.ph, %CC_DUP_WARN.exit131, %.preheader140
  br i1 %i.c, label %.lr.ph161, label %._crit_edge162

.lr.ph161:                                        ; preds = %.loopexit141
  %i.du = getelementptr i8, ptr %0, i64 40
  %wide.trip.count196 = zext nneg i32 %i.a to i64
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph161, %bb.u
  %indvars.iv193 = phi i64 [ 0, %.lr.ph161 ], [ %indvars.iv.next194, %bb.u ] ; 3 uses
  %.1159 = phi i32 [ %3, %.lr.ph161 ], [ %i.ei, %bb.u ] ; 2 uses
  %i.dv = shl i64 %indvars.iv193, 33
  %i.dw = ashr exact i64 %i.dv, 30
  %i.dx = getelementptr i8, ptr %4, i64 %i.dw
  %i.dy = getelementptr i8, ptr %i.dx, i64 4
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !18 ; 2 uses
  %i.ea = icmp ult i32 %.1159, %i.dz
  br i1 %i.ea, label %bb.t, label %bb.u
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
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !90
  %i.w = tail call i32 @onig_is_code_in_cc(ptr noundef %i.v, i32 noundef %0, ptr noundef %i.d) #25
  %cond80 = icmp eq i32 %i.w, 0
  %i.x = getelementptr i8, ptr %i.d, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !106
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
  %i.ab = load i32, ptr %1, align 4, !tbaa !18    ; 5 uses
  %i.ac = load ptr, ptr %i.u, align 8, !tbaa !90  ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 16
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !67
  %i.af = icmp eq i32 %i.ae, 1
  br i1 %i.af, label %is_singlebyte_range.exit.thread, label %is_singlebyte_range.exit

is_singlebyte_range.exit:                         ; preds = %bb.i
  %i.ag = getelementptr i8, ptr %i.ac, i64 20
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !52
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
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !18
  %i.aq = or i32 %i.ap, %i.al
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !18
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
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !90
  %i.aw = tail call i32 @onig_is_code_in_cc(ptr noundef %i.av, i32 noundef %0, ptr noundef %i.d) #25
  %.not76 = icmp eq i32 %i.aw, 0
  br i1 %.not76, label %.thread86, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr i8, ptr %i.d, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !106
  %i.az = and i32 %i.ay, 1
  %.not77 = icmp eq i32 %i.az, 0
  br i1 %.not77, label %.preheader, label %.thread86

.preheader:                                       ; preds = %bb.l
  %i.ba = icmp sgt i32 %2, 0
  br i1 %i.ba, label %bb.m, label %._crit_edge

bb.m:                                             ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %2 to i64
  %i.bb = load ptr, ptr %i.au, align 8, !tbaa !90 ; 2 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !102
  %i.be = load i32, ptr %1, align 4, !tbaa !18
  %i.bf = call i32 %i.bd(i32 noundef %i.be, ptr noundef nonnull %i.a, ptr noundef %i.bb) #25
  %i.bg = call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 12 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %onig_node_new_str.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = sext i32 %i.bf to i64
  %i.bj = getelementptr i8, ptr %i.a, i64 %i.bi
  store i32 0, ptr %i.bg, align 1
  %i.bk = getelementptr i8, ptr %i.bg, i64 28
  store i32 0, ptr %i.bk, align 4, !tbaa !21
  %i.bl = getelementptr i8, ptr %i.bg, i64 24     ; 3 uses
  store i32 0, ptr %i.bl, align 8, !tbaa !21
  %i.bm = getelementptr i8, ptr %i.bg, i64 32     ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bg, i64 8
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !21
  %i.bo = getelementptr i8, ptr %i.bg, i64 16
  store ptr %i.bm, ptr %i.bo, align 8, !tbaa !21
  %i.bp = call i32 @onig_node_str_cat(ptr noundef nonnull %i.bg, ptr noundef nonnull %i.a, ptr noundef %i.bj)
  %.not.i.i.peel = icmp eq i32 %i.bp, 0
  br i1 %.not.i.i.peel, label %.lr.ph.peel.next, label %bb.o

.lr.ph.peel.next:                                 ; preds = %bb.n
  %i.bq = load i32, ptr %i.bl, align 8, !tbaa !21
  %i.br = or i32 %i.bq, 2
  store i32 %i.br, ptr %i.bl, align 8, !tbaa !21
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @onig_node_free(ptr noundef nonnull %i.bg)
  br label %onig_node_new_str.exit.thread

bb.p:                                             ; preds = %bb.q, %.lr.ph.peel.next
  %indvars.iv = phi i64 [ 1, %.lr.ph.peel.next ], [ %indvars.iv.next, %bb.q ] ; 2 uses
  %i.bs = load ptr, ptr %i.au, align 8, !tbaa !90 ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 48
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !102
  %i.bv = getelementptr [4 x i8], ptr %1, i64 %indvars.iv
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !18
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
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !112
  store ptr null, ptr %i.cf, align 8, !tbaa !84
  br label %onig_node_new_str.exit.thread

bb.r:                                             ; preds = %._crit_edge
  store i32 9, ptr %i.cc, align 1
  %i.cg = getelementptr i8, ptr %i.cc, i64 8
  store ptr %.0.lcssa, ptr %i.cg, align 8, !tbaa !21
  %i.ch = getelementptr i8, ptr %i.cc, i64 16     ; 2 uses
  store ptr null, ptr %i.ch, align 8, !tbaa !21
  %i.ci = getelementptr i8, ptr %3, i64 32        ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !112
  store ptr %i.cc, ptr %i.cj, align 8, !tbaa !84
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !112
  br label %.thread86

.thread86:                                        ; preds = %bb.r, %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.s

onig_node_new_str.exit.thread:                    ; preds = %bb.m, %bb.o, %onig_node_new_alt.exit.thread, %.loopexit
  %.168 = phi i32 [ -5, %onig_node_new_alt.exit.thread ], [ %i.ca, %.loopexit ], [ -5, %bb.o ], [ -5, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.s

bb.s:                                             ; preds = %.thread, %.thread86, %onig_node_new_str.exit.thread, %bb.j
  %.2 = phi i32 [ %i.as, %bb.j ], [ %.168, %onig_node_new_str.exit.thread ], [ 0, %.thread86 ], [ 0, %.thread ]
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

!llvm.module.flags = !{!8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}
!llvm.errno.tbaa = !{!18}

!0 = distinct !{!0, !26}
!1 = distinct !{!1, !26}
!2 = distinct !{!2, !26}
!3 = distinct !{!3, !26}
!4 = distinct !{!4, !26}
!5 = distinct !{!5, !26}
!6 = distinct !{!6, !26}
!7 = distinct !{!7, !26}
!8 = !{i32 7, !"Dwarf Version", i32 5}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 8, !"PIC Level", i32 2}
!11 = !{i32 7, !"PIE Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 2}
!13 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!14 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!15 = !{!"Simple C/C++ TBAA"}
!16 = !{!"omnipotent char", !15, i64 0}
!17 = !{!"int", !16, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"any pointer", !16, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!16, !16, i64 0}
!22 = !{!"p1 omnipotent char", !19, i64 0}
!23 = !{!"", !22, i64 0, !22, i64 8}
!24 = !{!23, !22, i64 8}
!25 = !{!23, !22, i64 0}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!"p1 _ZTS18OnigEncodingTypeST", !19, i64 0}
!28 = !{!"long", !16, i64 0}
!29 = !{!"p1 int", !19, i64 0}
!30 = !{!"p1 _ZTS17re_pattern_buffer", !19, i64 0}
!31 = !{!"re_pattern_buffer", !22, i64 0, !17, i64 8, !17, i64 12, !17, i64 16, !17, i64 20, !17, i64 24, !17, i64 28, !17, i64 32, !17, i64 36, !17, i64 40, !17, i64 44, !17, i64 48, !17, i64 52, !17, i64 56, !19, i64 64, !27, i64 72, !19, i64 80, !19, i64 88, !17, i64 96, !17, i64 100, !17, i64 104, !17, i64 108, !28, i64 112, !28, i64 120, !17, i64 128, !22, i64 136, !22, i64 144, !16, i64 152, !29, i64 408, !29, i64 416, !28, i64 424, !28, i64 432, !28, i64 440, !30, i64 448}
!32 = !{!31, !19, i64 88}
!33 = !{!"p1 _ZTS12st_hash_type", !19, i64 0}
!34 = !{!"p1 long", !19, i64 0}
!35 = !{!"p1 _ZTS14st_table_entry", !19, i64 0}
!36 = !{!"st_table", !16, i64 0, !16, i64 1, !16, i64 2, !17, i64 4, !33, i64 8, !28, i64 16, !34, i64 24, !28, i64 32, !28, i64 40, !35, i64 48}
!37 = !{!36, !28, i64 16}
!38 = !{!"", !19, i64 0, !30, i64 8, !19, i64 16, !17, i64 24, !27, i64 32}
!39 = !{!38, !17, i64 24}
!40 = !{!38, !19, i64 0}
!41 = !{!38, !30, i64 8}
!42 = !{!38, !19, i64 16}
!43 = !{!31, !27, i64 72}
!44 = !{!38, !27, i64 32}
!45 = !{!"", !22, i64 0, !28, i64 8, !17, i64 16, !17, i64 20, !17, i64 24, !29, i64 32}
!46 = !{!45, !28, i64 8}
!47 = !{!45, !17, i64 16}
!48 = !{!45, !17, i64 20}
!49 = !{!45, !17, i64 24}
!50 = !{!45, !29, i64 32}
!51 = !{!"OnigEncodingTypeST", !19, i64 0, !22, i64 8, !17, i64 16, !17, i64 20, !19, i64 24, !19, i64 32, !19, i64 40, !19, i64 48, !19, i64 56, !19, i64 64, !19, i64 72, !19, i64 80, !19, i64 88, !19, i64 96, !19, i64 104, !19, i64 112, !19, i64 120, !17, i64 128, !17, i64 132}
!52 = !{!51, !17, i64 20}
!53 = !{!45, !22, i64 0}
!54 = !{!"", !17, i64 0}
!55 = !{!29, !29, i64 0}
!56 = !{!28, !28, i64 0}
!57 = !{!31, !17, i64 56}
!58 = !{!"", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !17, i64 16, !17, i64 20}
!59 = !{!"", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !58, i64 16}
!60 = !{!59, !17, i64 8}
!61 = !{!"p1 _ZTS5_BBuf", !19, i64 0}
!62 = !{!"", !54, i64 0, !17, i64 4, !16, i64 8, !61, i64 40}
!63 = !{!62, !61, i64 40}
!64 = !{!"_BBuf", !22, i64 0, !17, i64 8, !17, i64 12}
!65 = !{!64, !22, i64 0}
!66 = !{!22, !22, i64 0}
!67 = !{!51, !17, i64 16}
!68 = !{!51, !19, i64 32}
!69 = !{!51, !19, i64 88}
!70 = !{!"p1 _ZTS5_Node", !19, i64 0}
!71 = !{!"", !54, i64 0, !17, i64 4, !70, i64 8, !17, i64 16, !17, i64 20, !17, i64 24, !17, i64 28, !70, i64 32, !70, i64 40, !17, i64 48}
!72 = !{!71, !17, i64 24}
!73 = !{!71, !17, i64 16}
!74 = !{!71, !17, i64 20}
!75 = !{!71, !70, i64 8}
!76 = !{!"any p2 pointer", !19, i64 0}
!77 = !{!"p2 _ZTS5_Node", !76, i64 0}
!78 = !{!"", !17, i64 0, !17, i64 4, !27, i64 8, !19, i64 16, !17, i64 24, !17, i64 28, !17, i64 32, !17, i64 36, !22, i64 40, !22, i64 48, !22, i64 56, !22, i64 64, !30, i64 72, !19, i64 80, !17, i64 88, !17, i64 92, !17, i64 96, !17, i64 100, !16, i64 104, !77, i64 168, !17, i64 176, !17, i64 180, !22, i64 184, !17, i64 192}
!79 = !{!78, !17, i64 0}
!80 = !{!78, !17, i64 4}
!81 = !{!78, !22, i64 40}
!82 = !{!78, !22, i64 48}
!83 = !{!78, !30, i64 72}
!84 = !{!70, !70, i64 0}
!85 = !{!78, !17, i64 88}
!86 = !{!78, !17, i64 92}
!87 = !{!78, !77, i64 168}
!88 = !{!78, !22, i64 56}
!89 = !{!78, !22, i64 64}
!90 = !{!78, !27, i64 8}
!91 = !{!78, !19, i64 16}
!92 = !{!"", !17, i64 0, !17, i64 4, !17, i64 8, !22, i64 16, !16, i64 24}
!93 = !{!92, !17, i64 0}
!94 = !{!92, !17, i64 8}
!95 = !{!92, !22, i64 16}
!96 = !{!59, !17, i64 16}
!97 = !{!59, !17, i64 4}
!98 = !{!92, !17, i64 4}
!99 = !{!59, !17, i64 0}
!100 = !{!78, !17, i64 176}
!101 = !{ptr @onig_scan_unsigned_number}
!102 = !{!51, !19, i64 48}
!103 = !{!51, !19, i64 80}
!104 = !{!78, !17, i64 180}
!105 = !{!61, !61, i64 0}
!106 = !{!62, !17, i64 4}
!107 = !{!"", !19, i64 0, !19, i64 8, !19, i64 16, !70, i64 24, !77, i64 32}
!108 = !{!107, !19, i64 0}
!109 = !{!107, !19, i64 8}
!110 = !{!107, !19, i64 16}
!111 = !{!107, !70, i64 24}
!112 = !{!107, !77, i64 32}
!113 = !{!51, !19, i64 64}
!114 = !{!51, !19, i64 40}
!115 = !{!64, !17, i64 12}
!116 = !{!64, !17, i64 8}
!117 = distinct !{!117, !26}
!118 = distinct !{!118, !26}
!119 = distinct !{!119, !120}
!120 = !{!"llvm.loop.unroll.disable"}
!121 = distinct !{!121, !26}
!122 = !{!54, !17, i64 0}
!123 = distinct !{!123, !26}
!124 = !{!"re_registers", !17, i64 0, !17, i64 4, !34, i64 8, !34, i64 16}
!125 = !{!124, !34, i64 8}
!126 = !{!31, !19, i64 80}
!127 = distinct !{!127, !26}
!128 = !{i64 0, i64 56, !21}
!129 = !{!31, !17, i64 96}
!130 = !{!31, !17, i64 16}
!131 = distinct !{!131, !26}
!132 = !{!59, !17, i64 20}
!133 = !{!59, !17, i64 24}
!134 = !{!59, !17, i64 28}
!135 = !{!59, !17, i64 32}
!136 = !{!59, !17, i64 36}
!137 = distinct !{!137, !26}
!138 = distinct !{!138, !26}
!139 = distinct !{!139, !26}
!140 = distinct !{null}
!141 = distinct !{!141, !26}
!142 = distinct !{null, ptr @onig_scan_unsigned_number}
!143 = distinct !{!143, !26}
!144 = !{!78, !22, i64 184}
!145 = !{!78, !17, i64 192}
!146 = distinct !{!146, !26}
!147 = distinct !{!147, !26}
!148 = distinct !{!148, !26}
!149 = distinct !{!149, !26}
!150 = distinct !{null}
!151 = distinct !{null}
!152 = distinct !{null}
!153 = distinct !{null, null}
!154 = distinct !{null, ptr @add_property_to_cc, null}
!155 = distinct !{null}
!156 = distinct !{null}
!157 = distinct !{!157, !26}
!158 = distinct !{null, null}
end_hunk_2

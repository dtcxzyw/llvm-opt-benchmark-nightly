Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/var_unserializer?download=true
inline.NumInlined: 19
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@var_tmp_var:bb.a
tmp_var.exit:                                     ; preds = %bb.a, %bb.b, %bb.i
  %.028.i = phi ptr [ %i.v, %bb.i ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.028.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @var_replace(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(address) %1, ptr noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %1, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %._crit_edge
  %.013 = phi ptr [ %i.b, %bb.a ], [ %i.z, %._crit_edge ] ; 3 uses
  %i.c = load i64, ptr %.013, align 8, !tbaa !51  ; 5 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %.013, i64 16 ; 5 uses
  %min.iters.check = icmp ult i64 %i.c, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.c, 9223372036854775804      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue22, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue22 ] ; 5 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load = load <2 x ptr>, ptr %i.f, align 8, !tbaa !101
  %wide.load16 = load <2 x ptr>, ptr %i.g, align 8, !tbaa !101
  %i.h = icmp eq <2 x ptr> %wide.load, %broadcast.splat ; 2 uses
  %i.i = icmp eq <2 x ptr> %wide.load16, %broadcast.splat ; 2 uses
  %i.j = extractelement <2 x i1> %i.h, i64 0
  br i1 %i.j, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store ptr %2, ptr %i.f, align 8, !tbaa !101
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.k = extractelement <2 x i1> %i.h, i64 1
  br i1 %i.k, label %pred.store.if17, label %pred.store.continue18

pred.store.if17:                                  ; preds = %pred.store.continue
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %2, ptr %i.m, align 8, !tbaa !101
  br label %pred.store.continue18

pred.store.continue18:                            ; preds = %pred.store.if17, %pred.store.continue
  %i.n = extractelement <2 x i1> %i.i, i64 0
  br i1 %i.n, label %pred.store.if19, label %pred.store.continue20

pred.store.if19:                                  ; preds = %pred.store.continue18
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %2, ptr %i.p, align 8, !tbaa !101
  br label %pred.store.continue20

pred.store.continue20:                            ; preds = %pred.store.if19, %pred.store.continue18
  %i.q = extractelement <2 x i1> %i.i, i64 1
  br i1 %i.q, label %pred.store.if21, label %pred.store.continue22

pred.store.if21:                                  ; preds = %pred.store.continue20
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %2, ptr %i.s, align 8, !tbaa !101
  br label %pred.store.continue22

pred.store.continue22:                            ; preds = %pred.store.if21, %pred.store.continue20
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !131

middle.block:                                     ; preds = %pred.store.continue22
  %cmp.n = icmp eq i64 %i.c, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.01112.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.c
  %.01112 = phi i64 [ %i.x, %bb.c ], [ %.01112.ph, %scalar.ph.preheader ] ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.01112 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !101
  %i.w = icmp eq ptr %i.v, %1
  br i1 %i.w, label %bb.b, label %bb.c

bb.b:                                             ; preds = %scalar.ph
  store ptr %2, ptr %i.u, align 8, !tbaa !101
  br label %bb.c

bb.c:                                             ; preds = %scalar.ph, %bb.b
  %i.x = add nuw nsw i64 %.01112, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.x, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !132

._crit_edge:                                      ; preds = %bb.c, %middle.block, %.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %.013, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !49   ; 2 uses
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %bb.d, label %.preheader, !llvm.loop !133

bb.d:                                             ; preds = %._crit_edge
  ret void
}

declare void @_efree_large(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @zend_call_function(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @zval_ptr_dtor(ptr noundef) local_unnamed_addr #3

declare void @zend_hash_destroy(ptr noundef) local_unnamed_addr #3

declare void @_efree_56(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @php_var_unserialize(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !47
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.c = tail call fastcc i32 @php_var_unserialize_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3)
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !51   ; 3 uses
  %i.e = tail call fastcc i32 @php_var_unserialize_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3) ; 3 uses
  %.not19.not = icmp eq i32 %i.e, 0
  br i1 %.not19.not, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.b
  %i.f = load i64, ptr %i.b, align 8, !tbaa !51   ; 2 uses
  %i.g = icmp slt i64 %i.d, %i.f
  br i1 %i.g, label %.lr.ph.peel, label %._crit_edge.peel

.lr.ph.peel:                                      ; preds = %.preheader.preheader
  %i.h = getelementptr i8, ptr %i.b, i64 16
  %i.i = shl i64 %i.d, 3
  %scevgep.peel = getelementptr i8, ptr %i.h, i64 %i.i
  %i.j = sub i64 %i.f, %i.d
  %i.k = shl i64 %i.j, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.peel, i8 0, i64 %i.k, i1 false), !tbaa !101
  br label %._crit_edge.peel

._crit_edge.peel:                                 ; preds = %.lr.ph.peel, %.preheader.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !49   ; 2 uses
  %.not20.peel = icmp eq ptr %i.m, null
  br i1 %.not20.peel, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %._crit_edge.peel, %._crit_edge
  %.01724 = phi ptr [ %i.s, %._crit_edge ], [ %i.m, %._crit_edge.peel ] ; 3 uses
  %i.n = load i64, ptr %.01724, align 8, !tbaa !51 ; 2 uses
  %i.o = icmp sgt i64 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.p = getelementptr i8, ptr %.01724, i64 16
  %i.q = shl i64 %i.n, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.q, i1 false), !tbaa !101
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %.01724, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !49   ; 2 uses
  %.not20 = icmp eq ptr %i.s, null
  br i1 %.not20, label %.loopexit, label %.preheader, !llvm.loop !136

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge.peel, %.thread, %bb.b
  %i.t = phi i32 [ %i.c, %.thread ], [ %i.e, %bb.b ], [ 0, %._crit_edge.peel ], [ %i.e, %._crit_edge ]
  ret i32 %i.t
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @php_var_unserialize_internal(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct._zval_struct, align 8       ; 18 uses
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %5 = alloca %struct._zval_struct, align 8       ; 8 uses
  %6 = alloca %struct._zval_struct, align 8       ; 4 uses
  %7 = alloca [1 x %struct._zval_struct], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.c = load ptr, ptr %1, align 8, !tbaa !102    ; 38 uses
  %.not = icmp ult ptr %i.c, %2
  br i1 %.not, label %bb.b, label %zend_string_release_ex.exit

bb.b:                                             ; preds = %bb.a
  %.not590 = icmp eq ptr %3, null                 ; 7 uses
  %.pre926 = load i8, ptr %i.c, align 1, !tbaa !52 ; 2 uses
  br i1 %.not590, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not591 = icmp eq i8 %.pre926, 82
  br i1 %.not591, label %.thread1006, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr %3, align 8, !tbaa !47
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43   ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !51   ; 2 uses
  %i.g = icmp eq i64 %i.f, 1018
  br i1 %i.g, label %bb.e, label %var_push.exit

bb.e:                                             ; preds = %bb.d
  %i.h = tail call noalias dereferenceable_or_null(8160) ptr @_emalloc_large(i64 noundef 8160) #14 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.i = load ptr, ptr %3, align 8, !tbaa !47     ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.h, ptr %i.k, align 8, !tbaa !49
  store ptr %i.h, ptr %i.i, align 8, !tbaa !43
  br label %var_push.exit

var_push.exit:                                    ; preds = %bb.d, %bb.e
  %i.l = phi i64 [ 0, %bb.e ], [ %i.f, %bb.d ]    ; 2 uses
  %.0.i712 = phi ptr [ %i.h, %bb.e ], [ %i.e, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i712, i64 16
  %i.n = add nsw i64 %i.l, 1
  store i64 %i.n, ptr %.0.i712, align 8, !tbaa !51
  %i.o = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.l
  store ptr %0, ptr %i.o, align 8, !tbaa !101
  %.pre = load i8, ptr %i.c, align 1, !tbaa !52
  br label %bb.f

bb.f:                                             ; preds = %var_push.exit, %bb.b
  %8 = phi i8 [ %.pre, %var_push.exit ], [ %.pre926, %bb.b ] ; 2 uses
  %i.p = ptrtoint ptr %2 to i64                   ; 6 uses
  switch i8 %8, label %zend_string_release_ex.exit [
    i8 67, label %bb.g
    i8 79, label %bb.g
    i8 69, label %bb.h
    i8 78, label %bb.i
    i8 82, label %.thread1006
    i8 83, label %bb.j
    i8 97, label %bb.k
    i8 98, label %bb.l
    i8 100, label %bb.m
    i8 105, label %bb.n
    i8 114, label %bb.o
    i8 115, label %bb.p
    i8 125, label %bb.q
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !52
  %i.s = icmp eq i8 %i.r, 58
  br i1 %i.s, label %bb.r, label %zend_string_release_ex.exit

bb.h:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !52
  %i.v = icmp eq i8 %i.u, 58
  br i1 %i.v, label %bb.s, label %zend_string_release_ex.exit

bb.i:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !52
  %i.y = icmp eq i8 %i.x, 59
  br i1 %i.y, label %bb.t, label %zend_string_release_ex.exit

.thread1006:                                      ; preds = %bb.c, %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !52
  %i.ab = icmp eq i8 %i.aa, 58
  br i1 %i.ab, label %bb.u, label %zend_string_release_ex.exit

bb.j:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !52
  %i.ae = icmp eq i8 %i.ad, 58
  br i1 %i.ae, label %bb.v, label %zend_string_release_ex.exit

bb.k:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !52
  %i.ah = icmp eq i8 %i.ag, 58
  br i1 %i.ah, label %bb.w, label %zend_string_release_ex.exit

bb.l:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !52
  %i.ak = icmp eq i8 %i.aj, 58
  br i1 %i.ak, label %bb.x, label %zend_string_release_ex.exit

bb.m:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !52
  %i.an = icmp eq i8 %i.am, 58
  br i1 %i.an, label %bb.aa, label %zend_string_release_ex.exit

bb.n:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !52
  %i.aq = icmp eq i8 %i.ap, 58
  br i1 %i.aq, label %bb.ai, label %zend_string_release_ex.exit

bb.o:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !52
  %i.at = icmp eq i8 %i.as, 58
  br i1 %i.at, label %bb.am, label %zend_string_release_ex.exit

bb.p:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !52
  %i.aw = icmp eq i8 %i.av, 58
  br i1 %i.aw, label %bb.an, label %zend_string_release_ex.exit

bb.q:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str) #15
  br label %zend_string_release_ex.exit

bb.r:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 4 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !52  ; 2 uses
  %i.az = add i8 %i.ay, -58
  %.not623 = icmp ult i8 %i.az, -10
  br i1 %.not623, label %zend_string_release_ex.exit, label %.preheader

bb.s:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 4 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !52  ; 2 uses
  %i.bc = add i8 %i.bb, -48
  %or.cond12 = icmp ult i8 %i.bc, 10
  br i1 %or.cond12, label %.preheader794, label %zend_string_release_ex.exit

bb.t:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store ptr %i.bd, ptr %1, align 8, !tbaa !102
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.be, align 8, !tbaa !52
  br label %zend_string_release_ex.exit

bb.u:                                             ; preds = %.thread1006
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 4 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !52
  %i.bh = add i8 %i.bg, -48
  %or.cond15 = icmp ult i8 %i.bh, 10
  br i1 %or.cond15, label %.preheader795, label %zend_string_release_ex.exit

bb.v:                                             ; preds = %bb.j
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 4 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !52  ; 2 uses
  %i.bk = add i8 %i.bj, -48
  %or.cond18 = icmp ult i8 %i.bk, 10
  br i1 %or.cond18, label %.preheader797, label %zend_string_release_ex.exit

bb.w:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 3 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !52
  %i.bn = add i8 %i.bm, -48
  %or.cond21 = icmp ult i8 %i.bn, 10
  br i1 %or.cond21, label %.preheader800, label %zend_string_release_ex.exit

bb.x:                                             ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !52  ; 3 uses
  %i.bq = icmp ult i8 %i.bp, 48
  br i1 %i.bq, label %zend_string_release_ex.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.br = icmp eq i8 %i.bp, 48
  br i1 %i.br, label %bb.ax, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bs = icmp ult i8 %i.bp, 50
  br i1 %i.bs, label %bb.ay, label %zend_string_release_ex.exit

bb.aa:                                            ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 7 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !52  ; 8 uses
  %i.bv = icmp ult i8 %i.bu, 48
  br i1 %i.bv, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.bw = icmp samesign ult i8 %i.bu, 45
  br i1 %i.bw, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bx = icmp eq i8 %i.bu, 43
  br i1 %i.bx, label %bb.az, label %zend_string_release_ex.exit

bb.ad:                                            ; preds = %bb.ab
  switch i8 %i.bu, label %bb.bf [
    i8 45, label %bb.bb
    i8 47, label %zend_string_release_ex.exit
  ]

bb.ae:                                            ; preds = %bb.aa
  %i.by = icmp ult i8 %i.bu, 74
  br i1 %i.by, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.bz = icmp samesign ult i8 %i.bu, 58
  br i1 %i.bz, label %.preheader806.preheader, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.not598 = icmp eq i8 %i.bu, 73
  br i1 %.not598, label %bb.bm, label %zend_string_release_ex.exit

bb.ah:                                            ; preds = %bb.ae
  %i.ca = icmp eq i8 %i.bu, 78
  br i1 %i.ca, label %bb.bn, label %zend_string_release_ex.exit

bb.ai:                                            ; preds = %bb.n
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 3 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !52  ; 4 uses
  %i.cd = icmp ult i8 %i.cc, 45
  br i1 %i.cd, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ce = icmp eq i8 %i.cc, 43
  br i1 %i.ce, label %bb.bo, label %zend_string_release_ex.exit

bb.ak:                                            ; preds = %bb.ai
  %i.cf = icmp eq i8 %i.cc, 45
  br i1 %i.cf, label %bb.bo, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cg = add i8 %i.cc, -48
  %or.cond24 = icmp ult i8 %i.cg, 10
  br i1 %or.cond24, label %.preheader808.preheader, label %zend_string_release_ex.exit

bb.am:                                            ; preds = %bb.o
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 4 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !52
  %i.cj = add i8 %i.ci, -48
end_hunk_0
begin_hunk_1_@php_var_unserialize_internal:bb.a
  %i.hl = add i32 %i.hk, 1
  store i32 %i.hl, ptr %i.hg, align 4, !tbaa !61
  br label %zend_string_release_ex.exit

bb.ch:                                            ; preds = %bb.au
  %i.hm = getelementptr inbounds nuw i8, ptr %i.de, i64 2
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !52
  %i.ho = icmp eq i8 %i.hn, 34
  br i1 %i.ho, label %.lr.ph.i739.preheader, label %zend_string_release_ex.exit

bb.ci:                                            ; preds = %bb.aw
  %i.hp = getelementptr inbounds nuw i8, ptr %i.dk, i64 2
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !52
  %i.hr = icmp eq i8 %i.hq, 123
  br i1 %i.hr, label %bb.il, label %zend_string_release_ex.exit

bb.cj:                                            ; preds = %bb.ax
  %i.hs = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store ptr %i.hs, ptr %1, align 8, !tbaa !102
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %i.ht, align 8, !tbaa !52
  br label %zend_string_release_ex.exit

bb.ck:                                            ; preds = %bb.ay
  %i.hu = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store ptr %i.hu, ptr %1, align 8, !tbaa !102
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 3, ptr %i.hv, align 8, !tbaa !52
  br label %zend_string_release_ex.exit

.preheader804:                                    ; preds = %.preheader804.preheader, %bb.cm
  %i.hw = phi ptr [ %i.hx, %bb.cm ], [ %.ph1172, %.preheader804.preheader ]
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 1 ; 5 uses
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !52  ; 7 uses
  %i.hz = icmp ult i8 %i.hy, 60
  br i1 %i.hz, label %bb.cl, label %bb.co

bb.cl:                                            ; preds = %.preheader804
  %i.ia = icmp samesign ult i8 %i.hy, 48
  br i1 %i.ia, label %zend_string_release_ex.exit, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ib = icmp samesign ult i8 %i.hy, 58
  br i1 %i.ib, label %.preheader804, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %.not607 = icmp eq i8 %i.hy, 59
  br i1 %.not607, label %bb.cr, label %zend_string_release_ex.exit

bb.co:                                            ; preds = %.preheader804
  %i.ic = icmp ult i8 %i.hy, 70
  br i1 %i.ic, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %.not606 = icmp eq i8 %i.hy, 69
  br i1 %.not606, label %bb.cs, label %zend_string_release_ex.exit

bb.cq:                                            ; preds = %bb.co
  %i.id = icmp eq i8 %i.hy, 101
  br i1 %i.id, label %bb.cs, label %zend_string_release_ex.exit

bb.cr:                                            ; preds = %bb.bk, %bb.jp, %bb.cn
  %i.ie = phi ptr [ %i.ek, %bb.bk ], [ %i.ace, %bb.jp ], [ %i.hx, %bb.cn ]
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 1
  store ptr %i.if, ptr %1, align 8, !tbaa !102
  %i.ig = tail call double @zend_strtod(ptr noundef nonnull %i.bt, ptr noundef null) #15
  store double %i.ig, ptr %0, align 8, !tbaa !52
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 5, ptr %i.ih, align 8, !tbaa !52
  br label %zend_string_release_ex.exit

bb.cs:                                            ; preds = %bb.bk, %bb.cq, %bb.cp, %bb.bl
  %i.ii = phi ptr [ %i.ek, %bb.bk ], [ %i.hx, %bb.cq ], [ %i.hx, %bb.cp ], [ %i.ek, %bb.bl ] ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 1 ; 2 uses
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !52  ; 4 uses
  %i.il = icmp ult i8 %i.ik, 45
  br i1 %i.il, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.im = icmp eq i8 %i.ik, 43
  br i1 %i.im, label %bb.jn, label %zend_string_release_ex.exit

bb.cu:                                            ; preds = %bb.cs
  %i.in = icmp eq i8 %i.ik, 45
  br i1 %i.in, label %bb.jn, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.io = add i8 %i.ik, -48
  %or.cond48 = icmp ult i8 %i.io, 10
  br i1 %or.cond48, label %.preheader802.preheader, label %zend_string_release_ex.exit

bb.cw:                                            ; preds = %bb.bm
  %i.ip = getelementptr inbounds nuw i8, ptr %i.eq, i64 2 ; 2 uses
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !52
  %i.ir = icmp eq i8 %i.iq, 70
  br i1 %i.ir, label %bb.jq, label %zend_string_release_ex.exit

bb.cx:                                            ; preds = %bb.bn
  %i.is = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.it = load i8, ptr %i.is, align 1, !tbaa !52
  %i.iu = icmp eq i8 %i.it, 78
  br i1 %i.iu, label %bb.jq, label %zend_string_release_ex.exit

bb.cy:                                            ; preds = %bb.bq
  %i.iv = getelementptr inbounds nuw i8, ptr %i.fa, i64 2
  store ptr %i.iv, ptr %1, align 8, !tbaa !102
  %i.iw = tail call fastcc i64 @parse_iv(ptr noundef nonnull %i.cb)
  store i64 %i.iw, ptr %0, align 8, !tbaa !52
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 4, ptr %i.ix, align 8, !tbaa !52
  br label %zend_string_release_ex.exit

bb.cz:                                            ; preds = %bb.bs
  %i.iy = getelementptr inbounds nuw i8, ptr %i.fg, i64 2
  store ptr %i.iy, ptr %1, align 8, !tbaa !102
  br i1 %.not590, label %zend_string_release_ex.exit, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.iz = load i8, ptr %i.ch, align 1, !tbaa !52  ; 2 uses
  %i.ja = add i8 %i.iz, -48
  %or.cond10.i714 = icmp ult i8 %i.ja, 10
  br i1 %or.cond10.i714, label %.lr.ph.i716, label %zend_string_release_ex.exit

.lr.ph.i716:                                      ; preds = %bb.da, %.lr.ph.i716
  %i.jb = phi i8 [ %i.jh, %.lr.ph.i716 ], [ %i.iz, %bb.da ]
  %.012.i717 = phi i64 [ %i.jf, %.lr.ph.i716 ], [ 0, %bb.da ]
  %.0811.i718 = phi ptr [ %i.jg, %.lr.ph.i716 ], [ %i.ch, %bb.da ]
  %i.jc = zext nneg i8 %i.jb to i64
  %i.jd = mul i64 %.012.i717, 10
  %i.je = add nsw i64 %i.jc, -48
  %i.jf = add i64 %i.je, %i.jd                    ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.0811.i718, i64 1 ; 2 uses
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !52  ; 2 uses
  %i.ji = add i8 %i.jh, -48
  %or.cond.i719 = icmp ult i8 %i.ji, 10
  br i1 %or.cond.i719, label %.lr.ph.i716, label %parse_uiv.exit720

parse_uiv.exit720:                                ; preds = %.lr.ph.i716
  %i.jj = icmp eq i64 %i.jf, 0
  br i1 %i.jj, label %zend_string_release_ex.exit, label %bb.db

bb.db:                                            ; preds = %parse_uiv.exit720
  %i.jk = add i64 %i.jf, -1
  %.val = load ptr, ptr %3, align 8, !tbaa !47
  %i.jl = tail call fastcc ptr @var_access(ptr %.val, i64 noundef %i.jk) ; 5 uses
  %i.jm = icmp eq ptr %i.jl, null
  %i.jn = icmp eq ptr %i.jl, %0
  %or.cond647 = or i1 %i.jm, %i.jn
  br i1 %or.cond647, label %zend_string_release_ex.exit, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jp = load i8, ptr %i.jo, align 8, !tbaa !52  ; 2 uses
  %i.jq = icmp eq i8 %i.jp, 10
  br i1 %i.jq, label %bb.dd, label %bb.de, !prof !96

bb.dd:                                            ; preds = %bb.dc
  %i.jr = load ptr, ptr %i.jl, align 8, !tbaa !52 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  %.pre927 = load i8, ptr %.phi.trans.insert, align 8, !tbaa !52
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %i.jt = phi i8 [ %.pre927, %bb.dd ], [ %i.jp, %bb.dc ]
  %.0525 = phi ptr [ %i.js, %bb.dd ], [ %i.jl, %bb.dc ] ; 2 uses
  %.not596 = icmp eq i8 %i.jt, 8
  br i1 %.not596, label %bb.df, label %zend_string_release_ex.exit

bb.df:                                            ; preds = %bb.de
  %i.ju = getelementptr inbounds nuw i8, ptr %.0525, i64 8
  %i.jv = load ptr, ptr %.0525, align 8, !tbaa !52 ; 3 uses
  %i.jw = load i32, ptr %i.ju, align 8, !tbaa !52 ; 2 uses
  store ptr %i.jv, ptr %0, align 8, !tbaa !52
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.jw, ptr %i.jx, align 8, !tbaa !52
  %i.jy = and i32 %i.jw, 65280
  %.not597 = icmp eq i32 %i.jy, 0
  br i1 %.not597, label %zend_string_release_ex.exit, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.jz = load i32, ptr %i.jv, align 4, !tbaa !61
  %i.ka = add i32 %i.jz, 1
  store i32 %i.ka, ptr %i.jv, align 4, !tbaa !61
  br label %zend_string_release_ex.exit

bb.dh:                                            ; preds = %bb.bu
  %i.kb = getelementptr inbounds nuw i8, ptr %i.fm, i64 2
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !52
  %i.kd = icmp eq i8 %i.kc, 34
  br i1 %i.kd, label %.lr.ph.i752.preheader, label %zend_string_release_ex.exit

bb.di:                                            ; preds = %bb.bv
  %i.ke = getelementptr inbounds nuw i8, ptr %i.cn, i64 3 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  br i1 %.not590, label %zend_string_release_ex.exit694, label %.lr.ph.i723.preheader

.lr.ph.i723.preheader:                            ; preds = %bb.di
  %i.kf = icmp eq i8 %8, 67
  br label %.lr.ph.i723

.lr.ph.i723:                                      ; preds = %.lr.ph.i723.preheader, %.lr.ph.i723
  %i.kg = phi i8 [ %i.km, %.lr.ph.i723 ], [ %i.ay, %.lr.ph.i723.preheader ]
  %.012.i724 = phi i64 [ %i.kk, %.lr.ph.i723 ], [ 0, %.lr.ph.i723.preheader ]
  %.0811.i725 = phi ptr [ %i.kl, %.lr.ph.i723 ], [ %i.ax, %.lr.ph.i723.preheader ]
  %i.kh = zext nneg i8 %i.kg to i64
  %i.ki = mul i64 %.012.i724, 10
  %i.kj = add nsw i64 %i.kh, -48
  %i.kk = add i64 %i.kj, %i.ki                    ; 4 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.0811.i725, i64 1 ; 2 uses
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !52  ; 2 uses
  %i.kn = add i8 %i.km, -48
  %or.cond.i726 = icmp ult i8 %i.kn, 10
  br i1 %or.cond.i726, label %.lr.ph.i723, label %parse_uiv.exit727

parse_uiv.exit727:                                ; preds = %.lr.ph.i723
  %i.ko = ptrtoint ptr %i.ke to i64
  %i.kp = sub i64 %i.p, %i.ko
  %i.kq = add i64 %i.kk, -1
  %or.cond.not = icmp ult i64 %i.kq, %i.kp
  br i1 %or.cond.not, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %parse_uiv.exit727
  store ptr %i.ax, ptr %1, align 8, !tbaa !102
  br label %zend_string_release_ex.exit694

bb.dk:                                            ; preds = %parse_uiv.exit727
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ke, i64 %i.kk ; 8 uses
  store ptr %i.kr, ptr %i.b, align 8, !tbaa !102
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !52
  %.not625 = icmp eq i8 %i.ks, 34
  br i1 %.not625, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  store ptr %i.kr, ptr %1, align 8, !tbaa !102
  br label %zend_string_release_ex.exit694

bb.dm:                                            ; preds = %bb.dk
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kr, i64 1 ; 2 uses
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !52
  %.not626 = icmp eq i8 %i.ku, 58
  br i1 %.not626, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  store ptr %i.kt, ptr %1, align 8, !tbaa !102
  br label %zend_string_release_ex.exit694

bb.do:                                            ; preds = %bb.dm
  %i.kv = load i8, ptr %i.ke, align 1, !tbaa !52
  switch i8 %i.kv, label %bb.dp [
    i8 0, label %zend_string_release_ex.exit694
    i8 92, label %zend_string_release_ex.exit694
  ]

bb.dp:                                            ; preds = %bb.do
  %i.kw = load ptr, ptr @zend_string_init_interned, align 8, !tbaa !138
  %i.kx = tail call ptr %i.kw(ptr noundef nonnull %i.ke, i64 noundef %i.kk, i1 noundef zeroext false) #15 ; 62 uses
  %i.ky = load ptr, ptr %3, align 8, !tbaa !47
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 24
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !98
  %.not627 = icmp eq ptr %i.la, null
  br i1 %.not627, label %bb.dq, label %.thread759

bb.dq:                                            ; preds = %bb.dp
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kx, i64 4
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !52
  %i.ld = and i32 %i.lc, 32
  %.not628 = icmp eq i32 %i.ld, 0
  br i1 %.not628, label %.thread759, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.le = load i32, ptr %i.kx, align 4, !tbaa !61 ; 2 uses
  %i.lf = add i32 %i.le, -1
  %i.lg = lshr i32 %i.lf, 3
  %i.lh = zext nneg i32 %i.lg to i64
  %i.li = load i64, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 528), align 8, !tbaa !152
  %i.lj = icmp ugt i64 %i.li, %i.lh
  br i1 %i.lj, label %bb.ds, label %.thread759, !prof !95

bb.ds:                                            ; preds = %bb.dr
  %i.lk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 512), align 8, !tbaa !153
  %i.ll = zext i32 %i.le to i64
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.ll
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !103 ; 2 uses
  %.not629 = icmp eq ptr %i.ln, null
  br i1 %.not629, label %.thread759, label %bb.fg

.thread759:                                       ; preds = %bb.dr, %bb.ds, %bb.dq, %bb.dp
  %i.lo = tail call ptr @zend_string_tolower_ex(ptr noundef %i.kx, i1 noundef zeroext false) #15 ; 23 uses
  %.val711 = load ptr, ptr %3, align 8, !tbaa !47
  %i.lp = getelementptr i8, ptr %.val711, i64 24
  %.val711.val = load ptr, ptr %i.lp, align 8, !tbaa !98 ; 3 uses
  %i.lq = icmp eq ptr %.val711.val, null
  br i1 %i.lq, label %.thread766, label %bb.dt

bb.dt:                                            ; preds = %.thread759
  %i.lr = getelementptr inbounds nuw i8, ptr %.val711.val, i64 28
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !104
  %.not.i728 = icmp eq i32 %i.ls, 0
  br i1 %.not.i728, label %unserialize_allowed_class.exit.thread, label %unserialize_allowed_class.exit

unserialize_allowed_class.exit:                   ; preds = %bb.dt
  %i.lt = tail call ptr @zend_hash_find(ptr noundef nonnull %.val711.val, ptr noundef %i.lo) #15
  %.not788 = icmp eq ptr %i.lt, null
  br i1 %.not788, label %unserialize_allowed_class.exit.thread, label %unserialize_allowed_class.exit.thread763

unserialize_allowed_class.exit.thread:            ; preds = %bb.dt, %unserialize_allowed_class.exit
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lo, i64 4
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !52
  %i.lw = and i32 %i.lv, 64
  %.not.i695 = icmp eq i32 %i.lw, 0
  br i1 %.not.i695, label %bb.du, label %zend_string_release_ex.exit696

bb.du:                                            ; preds = %unserialize_allowed_class.exit.thread
  %i.lx = load i32, ptr %i.lo, align 4, !tbaa !61 ; 2 uses
  %i.ly = icmp ne i32 %i.lx, 0
  tail call void @llvm.assume(i1 %i.ly)
  %i.lz = add i32 %i.lx, -1                       ; 2 uses
  store i32 %i.lz, ptr %i.lo, align 4, !tbaa !61
  %i.ma = icmp eq i32 %i.lz, 0
  br i1 %i.ma, label %bb.dv, label %zend_string_release_ex.exit696

bb.dv:                                            ; preds = %bb.du
  tail call void @_efree(ptr noundef nonnull %i.lo) #15
  br label %zend_string_release_ex.exit696

zend_string_release_ex.exit696:                   ; preds = %unserialize_allowed_class.exit.thread, %bb.du, %bb.dv
  %i.mb = tail call zeroext i1 @zend_is_valid_class_name(ptr noundef %i.kx) #15
  br i1 %i.mb, label %bb.dz, label %bb.dw

bb.dw:                                            ; preds = %zend_string_release_ex.exit696
  %i.mc = getelementptr inbounds nuw i8, ptr %i.kx, i64 4
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !52
  %i.me = and i32 %i.md, 64
  %.not.i693 = icmp eq i32 %i.me, 0
  br i1 %.not.i693, label %bb.dx, label %zend_string_release_ex.exit694

bb.dx:                                            ; preds = %bb.dw
  %i.mf = load i32, ptr %i.kx, align 4, !tbaa !61 ; 2 uses
  %i.mg = icmp ne i32 %i.mf, 0
  tail call void @llvm.assume(i1 %i.mg)
  %i.mh = add i32 %i.mf, -1                       ; 2 uses
  store i32 %i.mh, ptr %i.kx, align 4, !tbaa !61
  %i.mi = icmp eq i32 %i.mh, 0
  br i1 %i.mi, label %bb.dy, label %zend_string_release_ex.exit694

bb.dy:                                            ; preds = %bb.dx
  tail call void @_efree(ptr noundef nonnull %i.kx) #15
  br label %zend_string_release_ex.exit694

bb.dz:                                            ; preds = %zend_string_release_ex.exit696
  %i.mj = load ptr, ptr @php_ce_incomplete_class, align 8, !tbaa !103
  br label %bb.fg

unserialize_allowed_class.exit.thread763:         ; preds = %unserialize_allowed_class.exit
  %.pre940 = load ptr, ptr %3, align 8, !tbaa !47
  %.phi.trans.insert941 = getelementptr inbounds nuw i8, ptr %.pre940, i64 24
  %.pre942 = load ptr, ptr %.phi.trans.insert941, align 8, !tbaa !98
  %i.mk = icmp eq ptr %.pre942, null
  br i1 %i.mk, label %.thread766, label %bb.ea

bb.ea:                                            ; preds = %unserialize_allowed_class.exit.thread763
  %i.ml = getelementptr inbounds nuw i8, ptr %i.kx, i64 4
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !52
  %i.mn = and i32 %i.mm, 32
  %.not632 = icmp eq i32 %i.mn, 0
  br i1 %.not632, label %.thread766, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.mo = load i32, ptr %i.kx, align 4, !tbaa !61 ; 2 uses
  %i.mp = add i32 %i.mo, -1
  %i.mq = lshr i32 %i.mp, 3
  %i.mr = zext nneg i32 %i.mq to i64
  %i.ms = load i64, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 528), align 8, !tbaa !152
  %i.mt = icmp ugt i64 %i.ms, %i.mr
  br i1 %i.mt, label %bb.ec, label %.thread766, !prof !95

bb.ec:                                            ; preds = %bb.eb
  %i.mu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 512), align 8, !tbaa !153
  %i.mv = zext i32 %i.mo to i64
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mu, i64 %i.mv
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !103 ; 4 uses
  %.not633 = icmp eq ptr %i.mx, null
  br i1 %.not633, label %.thread766, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.my = getelementptr inbounds nuw i8, ptr %i.lo, i64 4
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !52
  %i.na = and i32 %i.mz, 64
  %.not.i691 = icmp eq i32 %i.na, 0
  br i1 %.not.i691, label %bb.ee, label %bb.fg

bb.ee:                                            ; preds = %bb.ed
  %i.nb = load i32, ptr %i.lo, align 4, !tbaa !61 ; 2 uses
  %i.nc = icmp ne i32 %i.nb, 0
  tail call void @llvm.assume(i1 %i.nc)
  %i.nd = add i32 %i.nb, -1                       ; 2 uses
  store i32 %i.nd, ptr %i.lo, align 4, !tbaa !61
  %i.ne = icmp eq i32 %i.nd, 0
end_hunk_1

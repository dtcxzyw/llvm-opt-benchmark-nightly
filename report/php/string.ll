Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/string?download=true
inline.NumInlined: 35
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 28
begin_hunk_0_@zflf_strtr_3:bb.a
bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ab = phi i8 [ %.pre77, %bb.g ], [ %i.y, %bb.f ]
  %i.ac = icmp eq i8 %i.ab, 6
  br i1 %i.ac, label %.sink.split79, label %zend_parse_arg_str_ex.exit63, !prof !34

zend_parse_arg_str_ex.exit63:                     ; preds = %bb.h
  %i.ad = call zeroext i1 @zend_flf_parse_arg_str_slow(ptr noundef nonnull %5, ptr noundef nonnull %i.b, i32 noundef 2) #26
  br i1 %i.ad, label %bb.j, label %bb.i

bb.i:                                             ; preds = %zend_parse_arg_str_ex.exit63
  call void @zend_wrong_parameter_type_error(i32 noundef 2, i32 noundef 4, ptr noundef nonnull %5) #26
  br label %bb.r

.sink.split79:                                    ; preds = %bb.h, %bb.e
  %.sink81 = phi ptr [ %2, %bb.e ], [ %5, %bb.h ] ; 2 uses
  %i.ae = load ptr, ptr %.sink81, align 8, !tbaa !32
  store ptr %i.ae, ptr %i.b, align 8, !tbaa !36
  br label %bb.j

bb.j:                                             ; preds = %.sink.split79, %zend_parse_arg_str_ex.exit63
  %.053 = phi ptr [ %5, %zend_parse_arg_str_ex.exit63 ], [ %.sink81, %.sink.split79 ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !32
  %i.ah = icmp eq i8 %i.ag, 6
  br i1 %i.ah, label %.sink.split82, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = load ptr, ptr %3, align 8, !tbaa !32    ; 3 uses
  %i.aj = load i32, ptr %i.af, align 8, !tbaa !32 ; 3 uses
  store ptr %i.ai, ptr %6, align 8, !tbaa !32
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 %i.aj, ptr %i.ak, align 8, !tbaa !32
  %i.al = and i32 %i.aj, 65280
  %.not60 = icmp eq i32 %i.al, 0
  %i.am = trunc i32 %i.aj to i8
  br i1 %.not60, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = load i32, ptr %i.ai, align 4, !tbaa !42
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr %i.ai, align 4, !tbaa !42
  %.pre78 = load i8, ptr %i.ak, align 8, !tbaa !32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ap = phi i8 [ %.pre78, %bb.l ], [ %i.am, %bb.k ]
  %i.aq = icmp eq i8 %i.ap, 6
  br i1 %i.aq, label %.sink.split82, label %zend_parse_arg_str_ex.exit, !prof !34

zend_parse_arg_str_ex.exit:                       ; preds = %bb.m
  %i.ar = call zeroext i1 @zend_flf_parse_arg_str_slow(ptr noundef nonnull %6, ptr noundef nonnull %i.c, i32 noundef 3) #26
  br i1 %i.ar, label %bb.o, label %bb.n

bb.n:                                             ; preds = %zend_parse_arg_str_ex.exit
  call void @zend_wrong_parameter_type_error(i32 noundef 3, i32 noundef 4, ptr noundef nonnull %6) #26
  br label %bb.r

.sink.split82:                                    ; preds = %bb.m, %bb.j
  %.sink84 = phi ptr [ %3, %bb.j ], [ %6, %bb.m ] ; 2 uses
  %i.as = load ptr, ptr %.sink84, align 8, !tbaa !32
  store ptr %i.as, ptr %i.c, align 8, !tbaa !36
  br label %bb.o

bb.o:                                             ; preds = %.sink.split82, %zend_parse_arg_str_ex.exit
  %.055 = phi ptr [ %6, %zend_parse_arg_str_ex.exit ], [ %.sink84, %.sink.split82 ] ; 2 uses
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !36  ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !41
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ax = load ptr, ptr @zend_empty_string, align 8, !tbaa !36
  store ptr %i.ax, ptr %0, align 8, !tbaa !32
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 6, ptr %i.ay, align 8, !tbaa !32
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.az = load ptr, ptr %i.b, align 8, !tbaa !36  ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.c, align 8, !tbaa !36  ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !41
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !41
  %. = call i64 @llvm.umin.i64(i64 %i.be, i64 %i.bg)
  %i.bh = call fastcc ptr @php_strtr_ex(ptr noundef nonnull %i.at, ptr noundef nonnull %i.ba, ptr noundef nonnull %i.bc, i64 noundef %.) ; 2 uses
  store ptr %i.bh, ptr %0, align 8, !tbaa !32
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !32
  %i.bk = and i32 %i.bj, 64
  %.not61 = icmp eq i32 %i.bk, 0
  %i.bl = select i1 %.not61, i32 262, i32 6
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.bl, ptr %i.bm, align 8, !tbaa !32
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.n, %bb.i
  %.156 = phi ptr [ %.055, %bb.p ], [ %.055, %bb.q ], [ %6, %bb.n ], [ %3, %bb.i ] ; 2 uses
  %.154 = phi ptr [ %.053, %bb.p ], [ %.053, %bb.q ], [ %.053, %bb.n ], [ %5, %bb.i ] ; 2 uses
  %i.bn = icmp eq ptr %.0, %4
  br i1 %i.bn, label %bb.s, label %bb.t, !prof !37

bb.s:                                             ; preds = %.thread, %bb.r
  %.176 = phi ptr [ %4, %.thread ], [ %.0, %bb.r ]
  %.15475 = phi ptr [ %2, %.thread ], [ %.154, %bb.r ]
  %.15673 = phi ptr [ %3, %.thread ], [ %.156, %bb.r ]
  call void @zval_ptr_dtor(ptr noundef nonnull %.176) #26
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.15474 = phi ptr [ %.15475, %bb.s ], [ %.154, %bb.r ] ; 2 uses
  %.15672 = phi ptr [ %.15673, %bb.s ], [ %.156, %bb.r ] ; 2 uses
  %i.bo = icmp eq ptr %.15474, %5
  br i1 %i.bo, label %bb.u, label %bb.v, !prof !45

bb.u:                                             ; preds = %bb.t
  call void @zval_ptr_dtor(ptr noundef %.15474) #26
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bp = icmp eq ptr %.15672, %6
  br i1 %i.bp, label %bb.w, label %bb.x, !prof !45

bb.w:                                             ; preds = %bb.v
  call void @zval_ptr_dtor(ptr noundef %.15672) #26
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zif_strrev(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !32
  %cond = icmp eq i32 %i.c, 1
  br i1 %cond, label %bb.b, label %.thread69, !prof !33

.thread69:                                        ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 1, i32 noundef 1) #26
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i8, ptr %i.e, align 8, !tbaa !32
  %i.g = icmp eq i8 %i.f, 6
  br i1 %i.g, label %.split79.thread, label %zend_parse_arg_str_ex.exit, !prof !34

.split79.thread:                                  ; preds = %bb.b
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !32   ; 2 uses
  store ptr %i.h, ptr %i.a, align 8, !tbaa !36
  br label %.critedge

zend_parse_arg_str_ex.exit:                       ; preds = %bb.b
  %i.i = call zeroext i1 @zend_parse_arg_str_slow(ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, i32 noundef 1) #26
  %cond.fr59 = freeze i1 %i.i
  br i1 %cond.fr59, label %zend_parse_arg_str_ex.exit..critedge_crit_edge, label %bb.c, !prof !37

zend_parse_arg_str_ex.exit..critedge_crit_edge:   ; preds = %zend_parse_arg_str_ex.exit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !36
  br label %.critedge

bb.c:                                             ; preds = %zend_parse_arg_str_ex.exit, %.thread69
  %.04578 = phi i32 [ 1, %.thread69 ], [ 9, %zend_parse_arg_str_ex.exit ]
  %.04677 = phi i32 [ 0, %.thread69 ], [ 4, %zend_parse_arg_str_ex.exit ]
  %.04776 = phi ptr [ null, %.thread69 ], [ %i.d, %zend_parse_arg_str_ex.exit ]
  %.04875 = phi i32 [ 0, %.thread69 ], [ 1, %zend_parse_arg_str_ex.exit ]
  call void @zend_wrong_parameter_error(i32 noundef %.04578, i32 noundef %.04875, ptr noundef null, i32 noundef %.04677, ptr noundef %.04776) #26
  br label %bb.d

.critedge:                                        ; preds = %zend_parse_arg_str_ex.exit..critedge_crit_edge, %.split79.thread
  %i.j = phi ptr [ %.pre, %zend_parse_arg_str_ex.exit..critedge_crit_edge ], [ %i.h, %.split79.thread ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !41   ; 2 uses
  %i.m = and i64 %i.l, -8
  %i.n = add i64 %i.m, 32
  %i.o = call noalias ptr @_emalloc(i64 noundef %i.n) #27 ; 7 uses
  store i32 1, ptr %i.o, align 4, !tbaa !42
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 22, ptr %i.p, align 4, !tbaa !32
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 0, ptr %i.q, align 8, !tbaa !43
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.l, ptr %i.r, align 8, !tbaa !41
  %i.s = getelementptr i8, ptr %i.o, i64 24       ; 8 uses
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !36   ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !41   ; 10 uses
  %.not5281 = icmp slt i64 %i.v, 1
  br i1 %.not5281, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %.critedge
  %.add53 = add nuw nsw i64 %i.v, 23              ; 6 uses
  %min.iters.check = icmp ult i64 %i.v, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.w = add nuw i64 %i.v, 24                     ; 2 uses
  %scevgep.a = getelementptr i8, ptr %i.o, i64 %i.w
  %scevgep84 = getelementptr i8, ptr %i.t, i64 24
  %scevgep85 = getelementptr i8, ptr %i.t, i64 %i.w
  %bound0 = icmp ult ptr %i.s, %scevgep85
  %bound1 = icmp ult ptr %scevgep84, %scevgep.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check86 = icmp ult i64 %i.v, 32
  br i1 %min.iters.check86, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.x = and i64 %i.v, 24
  %n.vec = and i64 %i.v, 9223372036854775776      ; 5 uses
  %i.y = sub nsw i64 %.add53, %n.vec
  %i.z = getelementptr i8, ptr %i.s, i64 %n.vec   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aa = sub i64 %.add53, %index
  %next.gep = getelementptr i8, ptr %i.s, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -15
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 -31
  %wide.load = load <16 x i8>, ptr %i.ac, align 1, !tbaa !32, !alias.scope !225
  %wide.load87 = load <16 x i8>, ptr %i.ad, align 1, !tbaa !32, !alias.scope !225
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse88 = shufflevector <16 x i8> %wide.load87, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %reverse, ptr %next.gep, align 1, !tbaa !32, !alias.scope !226, !noalias !225
  store <16 x i8> %reverse88, ptr %i.ae, align 1, !tbaa !32, !alias.scope !226, !noalias !225
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !222

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.x, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !94

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec90 = and i64 %i.v, 9223372036854775800    ; 4 uses
  %i.ag = sub nsw i64 %.add53, %n.vec90
  %i.ah = getelementptr i8, ptr %i.s, i64 %n.vec90 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index91 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next95, %vec.epilog.vector.body ] ; 3 uses
  %i.ai = sub i64 %.add53, %index91
  %next.gep92 = getelementptr i8, ptr %i.s, i64 %index91
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ai
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -7
  %wide.load93 = load <8 x i8>, ptr %i.ak, align 1, !tbaa !32, !alias.scope !225
  %reverse94 = shufflevector <8 x i8> %wide.load93, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse94, ptr %next.gep92, align 1, !tbaa !32, !alias.scope !226, !noalias !225
  %index.next95 = add nuw i64 %index91, 8         ; 2 uses
  %i.al = icmp eq i64 %index.next95, %n.vec90
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !223

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n96 = icmp eq i64 %i.v, %n.vec90
  br i1 %cmp.n96, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0.idx83.ph = phi i64 [ %.add53, %iter.check ], [ %.add53, %vector.memcheck ], [ %i.y, %vec.epilog.iter.check ], [ %i.ag, %vec.epilog.middle.block ]
  %.04982.ph = phi ptr [ %i.s, %iter.check ], [ %i.s, %vector.memcheck ], [ %i.z, %vec.epilog.iter.check ], [ %i.ah, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0.idx83 = phi i64 [ %.0.add, %.lr.ph ], [ %.0.idx83.ph, %.lr.ph.preheader ] ; 3 uses
  %.04982 = phi ptr [ %i.an, %.lr.ph ], [ %.04982.ph, %.lr.ph.preheader ] ; 2 uses
  %.0.ptr = getelementptr inbounds nuw i8, ptr %i.t, i64 %.0.idx83
  %.0.add = add nsw i64 %.0.idx83, -1
  %i.am = load i8, ptr %.0.ptr, align 1, !tbaa !32
  %i.an = getelementptr inbounds nuw i8, ptr %.04982, i64 1 ; 2 uses
  store i8 %i.am, ptr %.04982, align 1, !tbaa !32
  %.not52 = icmp samesign ult i64 %.0.idx83, 25
  br i1 %.not52, label %._crit_edge, label %.lr.ph, !llvm.loop !224

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %.critedge
  %.049.lcssa = phi ptr [ %i.s, %.critedge ], [ %i.ah, %vec.epilog.middle.block ], [ %i.z, %middle.block ], [ %i.an, %.lr.ph ]
  store i8 0, ptr %.049.lcssa, align 1, !tbaa !32
  store ptr %i.o, ptr %1, align 8, !tbaa !32
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 262, ptr %i.ao, align 8, !tbaa !32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zif_similar_text(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !32   ; 2 uses
  %i.e = icmp ugt i32 %i.d, 2                     ; 2 uses
  %i.f = and i32 %i.d, -2
  %or.cond.not = icmp eq i32 %i.f, 2
  br i1 %or.cond.not, label %bb.c, label %bb.b, !prof !33

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 2, i32 noundef 3) #26
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load i8, ptr %i.h, align 8, !tbaa !32
  %i.j = icmp eq i8 %i.i, 6
  br i1 %i.j, label %zend_parse_arg_str_ex.exit.thread, label %zend_parse_arg_str_ex.exit, !prof !34

zend_parse_arg_str_ex.exit.thread:                ; preds = %bb.c
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !32
  store ptr %i.k, ptr %i.a, align 8, !tbaa !36
  br label %bb.d

zend_parse_arg_str_ex.exit:                       ; preds = %bb.c
  %i.l = call zeroext i1 @zend_parse_arg_str_slow(ptr noundef nonnull %i.g, ptr noundef nonnull %i.a, i32 noundef 1) #26
  br i1 %i.l, label %bb.d, label %bb.e, !prof !37

bb.d:                                             ; preds = %zend_parse_arg_str_ex.exit.thread, %zend_parse_arg_str_ex.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.o = load i8, ptr %i.n, align 8, !tbaa !32
  %i.p = icmp eq i8 %i.o, 6
  br i1 %i.p, label %zend_parse_arg_str_ex.exit101.thread, label %zend_parse_arg_str_ex.exit101, !prof !34

zend_parse_arg_str_ex.exit101.thread:             ; preds = %bb.d
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !32   ; 2 uses
  store ptr %i.q, ptr %i.b, align 8, !tbaa !36
  br label %.critedge

zend_parse_arg_str_ex.exit101:                    ; preds = %bb.d
  %i.r = call zeroext i1 @zend_parse_arg_str_slow(ptr noundef nonnull %i.m, ptr noundef nonnull %i.b, i32 noundef 2) #26
  br i1 %i.r, label %zend_parse_arg_str_ex.exit101..critedge_crit_edge, label %bb.e, !prof !37

zend_parse_arg_str_ex.exit101..critedge_crit_edge: ; preds = %zend_parse_arg_str_ex.exit101
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !36
  br label %.critedge

.critedge:                                        ; preds = %zend_parse_arg_str_ex.exit101..critedge_crit_edge, %zend_parse_arg_str_ex.exit101.thread
  %i.s = phi ptr [ %.pre, %zend_parse_arg_str_ex.exit101..critedge_crit_edge ], [ %i.q, %zend_parse_arg_str_ex.exit101.thread ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !41   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !41   ; 3 uses
  %i.z = sub i64 0, %i.y
  %i.aa = icmp eq i64 %i.w, %i.z
  br i1 %i.aa, label %bb.f, label %bb.k

bb.e:                                             ; preds = %bb.b, %zend_parse_arg_str_ex.exit, %zend_parse_arg_str_ex.exit101
  %.095 = phi i32 [ 0, %bb.b ], [ 2, %zend_parse_arg_str_ex.exit101 ], [ 1, %zend_parse_arg_str_ex.exit ]
  %.094 = phi ptr [ null, %bb.b ], [ %i.m, %zend_parse_arg_str_ex.exit101 ], [ %i.g, %zend_parse_arg_str_ex.exit ]
  %.093 = phi i32 [ 0, %bb.b ], [ 4, %zend_parse_arg_str_ex.exit101 ], [ 4, %zend_parse_arg_str_ex.exit ]
  %.092 = phi i32 [ 1, %bb.b ], [ 9, %zend_parse_arg_str_ex.exit101 ], [ 9, %zend_parse_arg_str_ex.exit ]
  call void @zend_wrong_parameter_error(i32 noundef %.092, i32 noundef %.095, ptr noundef null, i32 noundef %.093, ptr noundef %.094) #26
  br label %bb.p

bb.f:                                             ; preds = %.critedge
  br i1 %i.e, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %i.t, align 8, !tbaa !32  ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !32
  %.not98 = icmp eq ptr %i.ad, null
  br i1 %.not98, label %bb.i, label %bb.h, !prof !34

bb.h:                                             ; preds = %bb.g
  %i.ae = call i32 @zend_try_assign_typed_ref_double(ptr noundef nonnull %i.ab, double noundef 0.000000e+00) #26 ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  call void @zval_ptr_safe_dtor(ptr noundef nonnull %i.af) #26
  store double 0.000000e+00, ptr %i.af, align 8, !tbaa !32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i32 5, ptr %i.ag, align 8, !tbaa !32
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.f
  store i64 0, ptr %1, align 8, !tbaa !32
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 4, ptr %i.ah, align 8, !tbaa !32
  br label %bb.p

bb.k:                                             ; preds = %.critedge
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.ak = call fastcc i64 @php_similar_char(ptr noundef nonnull %i.ai, i64 noundef %i.w, ptr noundef nonnull %i.aj, i64 noundef %i.y) ; 3 uses
  br i1 %i.e, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.al = load ptr, ptr %i.t, align 8, !tbaa !32  ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !32
  %.not97 = icmp eq ptr %i.an, null
  br i1 %.not97, label %bb.n, label %bb.m, !prof !34

bb.m:                                             ; preds = %bb.l
  %i.ao = uitofp i64 %i.ak to double
  %i.ap = fmul nnan double %i.ao, 2.000000e+02
  %i.aq = add i64 %i.y, %i.w
  %i.ar = uitofp i64 %i.aq to double
  %i.as = fdiv double %i.ap, %i.ar
  %i.at = call i32 @zend_try_assign_typed_ref_double(ptr noundef nonnull %i.al, double noundef %i.as) #26 ; 0 uses
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  call void @zval_ptr_safe_dtor(ptr noundef nonnull %i.au) #26
  %i.av = uitofp i64 %i.ak to double
  %i.aw = fmul nnan double %i.av, 2.000000e+02
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !41
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !41
  %i.bd = add i64 %i.bc, %i.az
  %i.be = uitofp i64 %i.bd to double
  %i.bf = fdiv double %i.aw, %i.be
  store double %i.bf, ptr %i.au, align 8, !tbaa !32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i32 5, ptr %i.bg, align 8, !tbaa !32
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.k
  store i64 %i.ak, ptr %1, align 8, !tbaa !32
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 4, ptr %i.bh, align 8, !tbaa !32
  br label %bb.p

bb.p:                                             ; preds = %bb.e, %bb.o, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

declare i32 @zend_try_assign_typed_ref_double(ptr noundef, double noundef) local_unnamed_addr #3

declare void @zval_ptr_safe_dtor(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind memory(argmem: read) uwtable
define internal fastcc i64 @php_similar_char(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #15 {
bb.a:
  %.not.i56 = icmp eq i64 %1, 0
  br i1 %.not.i56, label %php_similar_str.exit.thread, label %.preheader41.lr.ph.i.preheader

.preheader41.lr.ph.i.preheader:                   ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %1
  br label %.preheader41.lr.ph.i
end_hunk_0

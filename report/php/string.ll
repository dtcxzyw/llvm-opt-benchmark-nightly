Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/string?download=true
inline.NumInlined: 35
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 28
begin_hunk_0_@zif_str_rot13:bb.a
  %i.al = add <16 x i8> %i.ab, splat (i8 -65)
  %i.am = icmp ult <16 x i8> %i.al, splat (i8 13) ; 2 uses
  %i.an = bitcast <16 x i1> %i.am to i16
  %.not88.i = icmp eq i16 %i.an, 0
  %.inner90 = select <16 x i1> %i.am, <16 x i8> splat (i8 13), <16 x i8> zeroinitializer
  %i.ao = bitcast <16 x i8> %.inner90 to <2 x i64>
  %i.ap = select i1 %.not88.i, <2 x i64> zeroinitializer, <2 x i64> %i.ao
  %.2.i = or <2 x i64> %.1.i, %i.ap
  %i.aq = add <16 x i8> %i.ab, splat (i8 -78)
  %i.ar = icmp ult <16 x i8> %i.aq, splat (i8 13) ; 2 uses
  %i.as = bitcast <16 x i1> %i.ar to i16
  %.not89.i = icmp eq i16 %i.as, 0
  %.inner91 = select <16 x i1> %i.ar, <16 x i8> splat (i8 -13), <16 x i8> zeroinitializer
  %i.at = bitcast <16 x i8> %.inner91 to <2 x i64>
  %i.au = select i1 %.not89.i, <2 x i64> zeroinitializer, <2 x i64> %i.at
  %.3.i = or <2 x i64> %.2.i, %i.au
  %i.av = bitcast <2 x i64> %.3.i to <16 x i8>
  %i.aw = add <16 x i8> %i.ab, %i.av
  store <16 x i8> %i.aw, ptr %.075.i, align 1, !tbaa !32
  %i.ax = getelementptr inbounds nuw i8, ptr %.079.i, i64 16 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.075.i, i64 16 ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.z, %i.az
  %i.bb = icmp sgt i64 %i.ba, 15
  br i1 %i.bb, label %.preheader.i, label %.loopexit.i, !llvm.loop !304

.loopexit.i:                                      ; preds = %.preheader.i, %zend_string_alloc.exit.i
  %.180.i = phi ptr [ %i.v, %zend_string_alloc.exit.i ], [ %i.ax, %.preheader.i ] ; 8 uses
  %.176.i = phi ptr [ %i.y, %zend_string_alloc.exit.i ], [ %i.ay, %.preheader.i ] ; 7 uses
  %i.bc = icmp ult ptr %.180.i, %i.x
  br i1 %i.bc, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %.loopexit.i
  %.176.i73 = ptrtoaddr ptr %.176.i to i64
  %.18098.i = ptrtoaddr ptr %.180.i to i64        ; 2 uses
  %i.bd = add i64 %i.k, 24
  %i.be = add i64 %i.bd, %i.w
  %i.bf = sub i64 %i.be, %.18098.i                ; 8 uses
  %scevgep.i = getelementptr i8, ptr %.180.i, i64 %i.bf
  %min.iters.check = icmp ult i64 %i.bf, 8
  %i.bg = sub i64 %.18098.i, %.176.i73
  %diff.check = icmp ugt i64 %i.bg, -16
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check74 = icmp ult i64 %i.bf, 16
  br i1 %min.iters.check74, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bh = and i64 %i.bf, 8
  %n.vec = and i64 %i.bf, -16                     ; 5 uses
  %i.bi = getelementptr i8, ptr %.176.i, i64 %n.vec ; 2 uses
  %i.bj = getelementptr i8, ptr %.180.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.176.i, i64 %index
  %next.gep75 = getelementptr i8, ptr %.180.i, i64 %index
  %wide.load = load <16 x i8>, ptr %next.gep75, align 1, !tbaa !32
  %i.bk = freeze <16 x i8> %wide.load             ; 7 uses
  %i.bl = add <16 x i8> %i.bk, splat (i8 -123)
  %i.bm = icmp ult <16 x i8> %i.bl, splat (i8 -26)
  %i.bn = add <16 x i8> %i.bk, splat (i8 -91)
  %i.bo = icmp ult <16 x i8> %i.bn, splat (i8 -26)
  %i.bp = icmp ult <16 x i8> %i.bk, splat (i8 78)
  %i.bq = select <16 x i1> %i.bp, <16 x i8> splat (i8 -52), <16 x i8> splat (i8 -78)
  %i.br = add nuw <16 x i8> %i.bk, splat (i8 65)
  %i.bs = add <16 x i8> %i.br, %i.bq
  %i.bt = icmp ult <16 x i8> %i.bk, splat (i8 110)
  %i.bu = select <16 x i1> %i.bt, <16 x i8> splat (i8 -84), <16 x i8> splat (i8 -110)
  %i.bv = add nuw <16 x i8> %i.bk, splat (i8 97)
  %i.bw = add <16 x i8> %i.bv, %i.bu
  %predphi = select <16 x i1> %i.bo, <16 x i8> %i.bk, <16 x i8> %i.bs
  %predphi76 = select <16 x i1> %i.bm, <16 x i8> %predphi, <16 x i8> %i.bw
  store <16 x i8> %predphi76, ptr %next.gep, align 1, !tbaa !32
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !305

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bf, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.bh, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !308

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec78 = and i64 %i.bf, -8                    ; 4 uses
  %i.by = getelementptr i8, ptr %.176.i, i64 %n.vec78 ; 2 uses
  %i.bz = getelementptr i8, ptr %.180.i, i64 %n.vec78
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index79 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next85, %vec.epilog.vector.body ] ; 3 uses
  %next.gep80 = getelementptr i8, ptr %.176.i, i64 %index79
  %next.gep81 = getelementptr i8, ptr %.180.i, i64 %index79
  %wide.load82 = load <8 x i8>, ptr %next.gep81, align 1, !tbaa !32
  %i.ca = freeze <8 x i8> %wide.load82            ; 7 uses
  %i.cb = add <8 x i8> %i.ca, splat (i8 -123)
  %i.cc = icmp ult <8 x i8> %i.cb, splat (i8 -26)
  %i.cd = add <8 x i8> %i.ca, splat (i8 -91)
  %i.ce = icmp ult <8 x i8> %i.cd, splat (i8 -26)
  %i.cf = icmp ult <8 x i8> %i.ca, splat (i8 78)
  %i.cg = select <8 x i1> %i.cf, <8 x i8> splat (i8 -52), <8 x i8> splat (i8 -78)
  %i.ch = add nuw <8 x i8> %i.ca, splat (i8 65)
  %i.ci = add <8 x i8> %i.ch, %i.cg
  %i.cj = icmp ult <8 x i8> %i.ca, splat (i8 110)
  %i.ck = select <8 x i1> %i.cj, <8 x i8> splat (i8 -84), <8 x i8> splat (i8 -110)
  %i.cl = add nuw <8 x i8> %i.ca, splat (i8 97)
  %i.cm = add <8 x i8> %i.cl, %i.ck
  %predphi83 = select <8 x i1> %i.ce, <8 x i8> %i.ca, <8 x i8> %i.ci
  %predphi84 = select <8 x i1> %i.cc, <8 x i8> %predphi83, <8 x i8> %i.cm
  store <8 x i8> %predphi84, ptr %next.gep80, align 1, !tbaa !32
  %index.next85 = add nuw i64 %index79, 8         ; 2 uses
  %i.cn = icmp eq i64 %index.next85, %n.vec78
  br i1 %i.cn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !306

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n86 = icmp eq i64 %i.bf, %n.vec78
  br i1 %cmp.n86, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.27796.i.ph = phi ptr [ %.176.i, %iter.check ], [ %i.bi, %vec.epilog.iter.check ], [ %i.by, %vec.epilog.middle.block ]
  %.28195.i.ph = phi ptr [ %.180.i, %iter.check ], [ %i.bj, %vec.epilog.iter.check ], [ %i.bz, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.h
  %.27796.i = phi ptr [ %.378.i, %bb.h ], [ %.27796.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.28195.i = phi ptr [ %.382.i, %bb.h ], [ %.28195.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.co = load i8, ptr %.28195.i, align 1, !tbaa !32
  %.fr.i = freeze i8 %i.co                        ; 7 uses
  %i.cp = add i8 %.fr.i, -97
  %or.cond.i = icmp ult i8 %i.cp, 26
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %.cmp.i = icmp samesign ult i8 %.fr.i, 110
  %.v102.i = select i1 %.cmp.i, i8 -84, i8 -110
  %i.cq = add nuw i8 %.fr.i, 97
  %i.cr = add i8 %i.cq, %.v102.i
  br label %bb.h

bb.f:                                             ; preds = %.lr.ph.i
  %i.cs = add i8 %.fr.i, -65
  %or.cond90.i = icmp ult i8 %i.cs, 26
  br i1 %or.cond90.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.cmp93.i = icmp samesign ult i8 %.fr.i, 78
  %.v.i = select i1 %.cmp93.i, i8 -52, i8 -78
  %i.ct = add nuw i8 %.fr.i, 65
  %i.cu = add i8 %i.ct, %.v.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.sink.i = phi i8 [ %i.cu, %bb.g ], [ %i.cr, %bb.e ], [ %.fr.i, %bb.f ]
  store i8 %.sink.i, ptr %.27796.i, align 1, !tbaa !32
  %.378.i = getelementptr inbounds nuw i8, ptr %.27796.i, i64 1 ; 2 uses
  %.382.i = getelementptr inbounds nuw i8, ptr %.28195.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %.382.i, %scevgep.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !307

._crit_edge.i:                                    ; preds = %bb.h, %middle.block, %vec.epilog.middle.block, %.loopexit.i
  %.277.lcssa.i = phi ptr [ %.176.i, %.loopexit.i ], [ %i.by, %vec.epilog.middle.block ], [ %i.bi, %middle.block ], [ %.378.i, %bb.h ]
  store i8 0, ptr %.277.lcssa.i, align 1, !tbaa !32
  br label %php_str_rot13.exit

php_str_rot13.exit:                               ; preds = %bb.d, %._crit_edge.i
  %.083.i = phi ptr [ %i.o, %bb.d ], [ %i.r, %._crit_edge.i ] ; 2 uses
  store ptr %.083.i, ptr %1, align 8, !tbaa !32
  %i.cv = getelementptr inbounds nuw i8, ptr %.083.i, i64 4
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !32
  %i.cx = and i32 %i.cw, 64
  %.not42 = icmp eq i32 %i.cx, 0
  %i.cy = select i1 %.not42, i32 262, i32 6
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.cy, ptr %i.cz, align 8, !tbaa !32
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %php_str_rot13.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @php_binary_string_shuffle(ptr nofree readonly captures(none) %0, ptr %1, ptr nofree noundef captures(none) %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i64 %3, 2
  br i1 %i.a, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = add nsw i64 %3, -1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %i.d = phi i64 [ %i.c, %.lr.ph.preheader ], [ %i.l, %bb.d ] ; 4 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !124
  %i.f = tail call i64 %i.e(ptr noundef %1, i64 noundef 0, i64 noundef %i.d) #26 ; 2 uses
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !121
  %.not22 = icmp eq ptr %i.g, null                ; 3 uses
  br i1 %.not22, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.lr.ph
  %.not23 = icmp eq i64 %i.f, %i.d
  br i1 %.not23, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.d ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !32
  %i.j = getelementptr inbounds i8, ptr %2, i64 %i.f ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !32
  store i8 %i.k, ptr %i.h, align 1, !tbaa !32
  store i8 %i.i, ptr %i.j, align 1, !tbaa !32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = add nsw i64 %i.d, -1                     ; 2 uses
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !16

.loopexit:                                        ; preds = %bb.d, %.lr.ph, %bb.a
  %.018 = phi i1 [ true, %bb.a ], [ %.not22, %.lr.ph ], [ %.not22, %bb.d ]
  ret i1 %.018
}

; Function Attrs: nounwind uwtable
define hidden void @zif_str_shuffle(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !32
  %cond = icmp eq i32 %i.c, 1
  br i1 %cond, label %bb.b, label %.thread56, !prof !33

.thread56:                                        ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 1, i32 noundef 1) #26
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i8, ptr %i.e, align 8, !tbaa !32
  %i.g = icmp eq i8 %i.f, 6
  br i1 %i.g, label %.split66.thread, label %zend_parse_arg_str_ex.exit, !prof !34

.split66.thread:                                  ; preds = %bb.b
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !32   ; 2 uses
  store ptr %i.h, ptr %i.a, align 8, !tbaa !36
  br label %.critedge

zend_parse_arg_str_ex.exit:                       ; preds = %bb.b
  %i.i = call zeroext i1 @zend_parse_arg_str_slow(ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, i32 noundef 1) #26
  %cond.fr46 = freeze i1 %i.i
  br i1 %cond.fr46, label %zend_parse_arg_str_ex.exit..critedge_crit_edge, label %bb.c, !prof !37

zend_parse_arg_str_ex.exit..critedge_crit_edge:   ; preds = %zend_parse_arg_str_ex.exit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !36
  br label %.critedge

bb.c:                                             ; preds = %zend_parse_arg_str_ex.exit, %.thread56
  %.03865 = phi i32 [ 1, %.thread56 ], [ 9, %zend_parse_arg_str_ex.exit ]
  %.03964 = phi i32 [ 0, %.thread56 ], [ 4, %zend_parse_arg_str_ex.exit ]
  %.04063 = phi ptr [ null, %.thread56 ], [ %i.d, %zend_parse_arg_str_ex.exit ]
  %.04162 = phi i32 [ 0, %.thread56 ], [ 1, %zend_parse_arg_str_ex.exit ]
  call void @zend_wrong_parameter_error(i32 noundef %.03865, i32 noundef %.04162, ptr noundef null, i32 noundef %.03964, ptr noundef %.04063) #26
  br label %php_binary_string_shuffle.exit

.critedge:                                        ; preds = %zend_parse_arg_str_ex.exit..critedge_crit_edge, %.split66.thread
  %i.j = phi ptr [ %.pre, %zend_parse_arg_str_ex.exit..critedge_crit_edge ], [ %i.h, %.split66.thread ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !41   ; 5 uses
  %i.n = and i64 %i.m, -8
  %i.o = add i64 %i.n, 32
  %i.p = call noalias ptr @_emalloc(i64 noundef %i.o) #27 ; 6 uses
  store i32 1, ptr %i.p, align 4, !tbaa !42
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i32 22, ptr %i.q, align 4, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %i.m, ptr %i.s, align 8, !tbaa !41
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %i.k, i64 %i.m, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.m
  store i8 0, ptr %i.u, align 1, !tbaa !32
  store ptr %i.p, ptr %1, align 8, !tbaa !32
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 262, ptr %i.v, align 8, !tbaa !32
  %i.w = icmp ugt i64 %i.m, 1
  br i1 %i.w, label %bb.d, label %php_binary_string_shuffle.exit

bb.d:                                             ; preds = %.critedge
  %i.x = call ptr @php_random_default_algo() #26
  %i.y = call ptr @php_random_default_status() #26
  %i.z = load ptr, ptr %1, align 8, !tbaa !32     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !41 ; 2 uses
  %i.ad = icmp slt i64 %i.ac, 2
  br i1 %i.ad, label %php_binary_string_shuffle.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.af = add nsw i64 %i.ac, -1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.preheader.i
  %i.ag = phi i64 [ %i.af, %.lr.ph.preheader.i ], [ %i.ao, %bb.g ] ; 4 uses
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !124
  %i.ai = call i64 %i.ah(ptr noundef %i.y, i64 noundef 0, i64 noundef %i.ag) #26, !inline_history !309 ; 2 uses
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !121
  %.not22.i = icmp eq ptr %i.aj, null
  br i1 %.not22.i, label %bb.e, label %php_binary_string_shuffle.exit

bb.e:                                             ; preds = %.lr.ph.i
  %.not23.i = icmp eq i64 %i.ai, %i.ag
  br i1 %.not23.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ag ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !32
  %i.am = getelementptr inbounds i8, ptr %i.aa, i64 %i.ai ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !32
  store i8 %i.an, ptr %i.ak, align 1, !tbaa !32
  store i8 %i.al, ptr %i.am, align 1, !tbaa !32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ao = add nsw i64 %i.ag, -1                   ; 2 uses
  %.not.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i, label %php_binary_string_shuffle.exit, label %.lr.ph.i, !llvm.loop !16

php_binary_string_shuffle.exit:                   ; preds = %bb.g, %.lr.ph.i, %bb.d, %bb.c, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zif_str_word_count(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %i.c = alloca [256 x i8], align 16              ; 9 uses
  %i.d = alloca i64, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  store i64 0, ptr %i.d, align 8, !tbaa !46
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !32   ; 3 uses
  %i.g = add i32 %i.f, -4
  %or.cond127 = icmp ult i32 %i.g, -3
  br i1 %or.cond127, label %bb.b, label %bb.c, !prof !47

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 1, i32 noundef 3) #26
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = load i8, ptr %i.i, align 8, !tbaa !32
  %i.k = icmp eq i8 %i.j, 6
  br i1 %i.k, label %zend_parse_arg_str_ex.exit.thread, label %zend_parse_arg_str_ex.exit, !prof !34

zend_parse_arg_str_ex.exit.thread:                ; preds = %bb.c
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !32
  store ptr %i.l, ptr %i.b, align 8, !tbaa !36
  br label %bb.d

zend_parse_arg_str_ex.exit:                       ; preds = %bb.c
  %i.m = call zeroext i1 @zend_parse_arg_str_slow(ptr noundef nonnull %i.h, ptr noundef nonnull %i.b, i32 noundef 1) #26
  br i1 %i.m, label %bb.d, label %.thread, !prof !37

bb.d:                                             ; preds = %zend_parse_arg_str_ex.exit.thread, %zend_parse_arg_str_ex.exit
  %i.n = icmp eq i32 %i.f, 1
  br i1 %i.n, label %.critedge131, label %bb.e, !prof !45

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.q = load i8, ptr %i.p, align 8, !tbaa !32
  %i.r = icmp eq i8 %i.q, 4
  br i1 %i.r, label %zend_parse_arg_long_ex.exit.thread, label %zend_parse_arg_long_ex.exit, !prof !34

zend_parse_arg_long_ex.exit.thread:               ; preds = %bb.e
  %i.s = load i64, ptr %i.o, align 8, !tbaa !32
  store i64 %i.s, ptr %i.d, align 8, !tbaa !46
  br label %bb.f

zend_parse_arg_long_ex.exit:                      ; preds = %bb.e
  %i.t = call zeroext i1 @zend_parse_arg_long_slow(ptr noundef nonnull %i.o, ptr noundef nonnull %i.d, i32 noundef 2) #26
  br i1 %i.t, label %bb.f, label %.thread, !prof !37

bb.f:                                             ; preds = %zend_parse_arg_long_ex.exit.thread, %zend_parse_arg_long_ex.exit
  %.not = icmp eq i32 %i.f, 3
  br i1 %.not, label %bb.g, label %.critedge131, !prof !34

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.w = load i8, ptr %i.v, align 8, !tbaa !32
  switch i8 %i.w, label %zend_parse_arg_str_ex.exit.i [
    i8 6, label %bb.h
    i8 1, label %zend_parse_arg_str_ex.exit.i.thread
  ], !prof !48

bb.h:                                             ; preds = %bb.g
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !32
  br label %zend_parse_arg_str_ex.exit.i.thread

zend_parse_arg_str_ex.exit.i:                     ; preds = %bb.g
  %i.y = call zeroext i1 @zend_parse_arg_str_slow(ptr noundef nonnull %i.u, ptr noundef nonnull %i.a, i32 noundef range(i32 1, 0) 3) #26
  br i1 %i.y, label %thread-pre-split, label %bb.j

thread-pre-split:                                 ; preds = %zend_parse_arg_str_ex.exit.i
  %.pr = load ptr, ptr %i.a, align 8
  br label %zend_parse_arg_str_ex.exit.i.thread

zend_parse_arg_str_ex.exit.i.thread:              ; preds = %bb.h, %bb.g, %thread-pre-split
  %i.z = phi ptr [ %.pr, %thread-pre-split ], [ %i.x, %bb.h ], [ null, %bb.g ] ; 3 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %.thread163, label %bb.i, !prof !312

bb.i:                                             ; preds = %zend_parse_arg_str_ex.exit.i.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !41
  br label %.thread163

.thread163:                                       ; preds = %zend_parse_arg_str_ex.exit.i.thread, %bb.i
  %.3.ph = phi ptr [ null, %zend_parse_arg_str_ex.exit.i.thread ], [ %i.aa, %bb.i ]
  %.2142.ph = phi i64 [ 0, %zend_parse_arg_str_ex.exit.i.thread ], [ %i.ac, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %.critedge131

bb.j:                                             ; preds = %zend_parse_arg_str_ex.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %.thread

.thread:                                          ; preds = %zend_parse_arg_str_ex.exit, %zend_parse_arg_long_ex.exit, %bb.b, %bb.j
  %.0112161 = phi i32 [ 9, %bb.j ], [ 9, %zend_parse_arg_str_ex.exit ], [ 9, %zend_parse_arg_long_ex.exit ], [ 1, %bb.b ]
  %.0113160 = phi i32 [ 5, %bb.j ], [ 4, %zend_parse_arg_str_ex.exit ], [ 0, %zend_parse_arg_long_ex.exit ], [ 0, %bb.b ]
  %.0114159 = phi ptr [ %i.u, %bb.j ], [ %i.h, %zend_parse_arg_str_ex.exit ], [ %i.o, %zend_parse_arg_long_ex.exit ], [ null, %bb.b ]
  %.0115158 = phi i32 [ 3, %bb.j ], [ 1, %zend_parse_arg_str_ex.exit ], [ 2, %zend_parse_arg_long_ex.exit ], [ 0, %bb.b ]
  call void @zend_wrong_parameter_error(i32 noundef %.0112161, i32 noundef %.0115158, ptr noundef null, i32 noundef %.0113160, ptr noundef %.0114159) #26
  br label %bb.ba

.critedge131:                                     ; preds = %.thread163, %bb.d, %bb.f
  %.1144 = phi ptr [ %.3.ph, %.thread163 ], [ null, %bb.d ], [ null, %bb.f ] ; 7 uses
  %.1141 = phi i64 [ %.2142.ph, %.thread163 ], [ 0, %bb.d ], [ 0, %bb.f ] ; 2 uses
  %i.ad = load i64, ptr %i.d, align 8, !tbaa !46
  switch i64 %i.ad, label %bb.n [
    i64 1, label %bb.k
    i64 2, label %bb.k
    i64 0, label %bb.l
  ]

bb.k:                                             ; preds = %.critedge131, %.critedge131
  %i.ae = call ptr @_zend_new_array_0() #26
  store ptr %i.ae, ptr %1, align 8, !tbaa !32
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 775, ptr %i.af, align 8, !tbaa !32
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !36  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !41
  %.not121 = icmp eq i64 %i.ai, 0
  br i1 %.not121, label %bb.ba, label %bb.o

bb.l:                                             ; preds = %.critedge131
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !36  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !41
  %.not120 = icmp eq i64 %i.al, 0
  br i1 %.not120, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  store i64 0, ptr %1, align 8, !tbaa !32
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 4, ptr %i.am, align 8, !tbaa !32
  br label %bb.ba

bb.n:                                             ; preds = %.critedge131
  call void (i32, ptr, ...) @zend_argument_value_error(i32 noundef 2, ptr noundef nonnull @.str.46) #26
  br label %bb.ba

bb.o:                                             ; preds = %bb.l, %bb.k
  %i.an = phi ptr [ %i.aj, %bb.l ], [ %i.ag, %bb.k ] ; 2 uses
  %.not122 = icmp eq ptr %.1144, null             ; 2 uses
  br i1 %.not122, label %php_charmask.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.c, i8 0, i64 256, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %.1144, i64 %.1141 ; 4 uses
  %.not43.i = icmp eq i64 %.1141, 0
  br i1 %.not43.i, label %php_charmask.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.p, %bb.ae
  %.03141.i = phi ptr [ %i.bp, %bb.ae ], [ %.1144, %bb.p ] ; 13 uses
  %i.ap = load i8, ptr %.03141.i, align 1, !tbaa !32 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.03141.i, i64 3 ; 3 uses
  %i.ar = icmp ult ptr %i.aq, %i.ao
  br i1 %i.ar, label %bb.q, label %bb.u

bb.q:                                             ; preds = %.lr.ph.i
  %i.as = getelementptr inbounds nuw i8, ptr %.03141.i, i64 1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !32
end_hunk_0

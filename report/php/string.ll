Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/string?download=true
inline.NumInlined: 35
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_php_str_replace_common:bb.a

bb.o:                                             ; preds = %bb.g, %bb.m, %bb.n
  %.174 = phi i64 [ %.07389, %bb.g ], [ %i.ak, %bb.n ], [ %i.ak, %bb.m ] ; 2 uses
  %i.ao = add i32 %.06593, -1                     ; 2 uses
  %.not77 = icmp eq i32 %i.ao, 0
  br i1 %.not77, label %.loopexit, label %.lr.ph, !llvm.loop !229

bb.p:                                             ; preds = %bb.c
  %i.ap = tail call fastcc i64 @php_str_replace_in_subject(ptr noundef %2, ptr noundef %1, ptr noundef %4, ptr noundef %3, ptr noundef %6, ptr noundef %0, i1 noundef zeroext %8)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.o, %bb.d, %bb.p
  %.2 = phi i64 [ %i.ap, %bb.p ], [ 0, %bb.d ], [ %.174, %bb.o ] ; 2 uses
  %.not78 = icmp eq ptr %7, null
  br i1 %.not78, label %bb.t, label %bb.q

bb.q:                                             ; preds = %.loopexit
  %i.aq = load ptr, ptr %7, align 8, !tbaa !16    ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !16
  %.not79 = icmp eq ptr %i.as, null
  br i1 %.not79, label %bb.s, label %bb.r, !prof !18

bb.r:                                             ; preds = %bb.q
  %i.at = call i32 @zend_try_assign_typed_ref_long(ptr noundef nonnull %i.aq, i64 noundef %.2) #26 ; 0 uses
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  call void @zval_ptr_safe_dtor(ptr noundef nonnull %i.au) #26
  store i64 %.2, ptr %i.au, align 8, !tbaa !16
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i32 4, ptr %i.av, align 8, !tbaa !16
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %.loopexit, %bb.s, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zif_str_ireplace(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @php_str_replace_common(ptr noundef %0, ptr noundef %1, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zif_hebrev(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 0, ptr %i.b, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !16   ; 2 uses
  %i.e = add i32 %i.d, -3
  %or.cond263 = icmp ult i32 %i.e, -2
  br i1 %or.cond263, label %bb.b, label %bb.c, !prof !33

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 1, i32 noundef 2) #26
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load i8, ptr %i.g, align 8, !tbaa !16
  %i.i = icmp eq i8 %i.h, 6
  br i1 %i.i, label %zend_parse_arg_str_ex.exit.i.thread, label %zend_parse_arg_str_ex.exit.i, !prof !18

zend_parse_arg_str_ex.exit.i:                     ; preds = %bb.c
  %i.j = call zeroext i1 @zend_parse_arg_str_slow(ptr noundef nonnull %i.f, ptr noundef nonnull %i.a, i32 noundef range(i32 1, 0) 1) #26
  br i1 %i.j, label %zend_parse_arg_str_ex.exit.i.thread, label %zend_parse_arg_string.exit, !prof !52

zend_parse_arg_string.exit:                       ; preds = %zend_parse_arg_str_ex.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %.thread

zend_parse_arg_str_ex.exit.i.thread:              ; preds = %zend_parse_arg_str_ex.exit.i, %bb.c
  %.in = phi ptr [ %i.f, %bb.c ], [ %i.a, %zend_parse_arg_str_ex.exit.i ]
  %i.k = load ptr, ptr %.in, align 8              ; 5 uses
  %i.l = ptrtoaddr ptr %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !22
  %.fr = freeze i64 %i.o                          ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.p = icmp eq i32 %i.d, 1
  br i1 %i.p, label %.critedge266, label %bb.d, !prof !30

bb.d:                                             ; preds = %zend_parse_arg_str_ex.exit.i.thread
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.s = load i8, ptr %i.r, align 8, !tbaa !16
  %i.t = icmp eq i8 %i.s, 4
  br i1 %i.t, label %.thread312, label %zend_parse_arg_long_ex.exit, !prof !18

.thread312:                                       ; preds = %bb.d
  %i.u = load i64, ptr %i.q, align 8, !tbaa !16
  store i64 %i.u, ptr %i.b, align 8, !tbaa !32
  br label %.critedge266

zend_parse_arg_long_ex.exit:                      ; preds = %bb.d
  %i.v = call zeroext i1 @zend_parse_arg_long_slow(ptr noundef nonnull %i.q, ptr noundef nonnull %i.b, i32 noundef 2) #26
  br i1 %i.v, label %.critedge266, label %.thread, !prof !45

.thread:                                          ; preds = %zend_parse_arg_long_ex.exit, %zend_parse_arg_string.exit, %bb.b
  %.0206311 = phi i32 [ 9, %zend_parse_arg_long_ex.exit ], [ 1, %bb.b ], [ 9, %zend_parse_arg_string.exit ]
  %.0207310 = phi i32 [ 0, %zend_parse_arg_long_ex.exit ], [ 0, %bb.b ], [ 4, %zend_parse_arg_string.exit ]
  %.0208309 = phi ptr [ %i.q, %zend_parse_arg_long_ex.exit ], [ null, %bb.b ], [ %i.f, %zend_parse_arg_string.exit ]
  %.0209308 = phi i32 [ 2, %zend_parse_arg_long_ex.exit ], [ 0, %bb.b ], [ 1, %zend_parse_arg_string.exit ]
  call void @zend_wrong_parameter_error(i32 noundef %.0206311, i32 noundef %.0209308, ptr noundef null, i32 noundef %.0207310, ptr noundef %.0208309) #26
  br label %bb.af

.critedge266:                                     ; preds = %zend_parse_arg_long_ex.exit, %.thread312, %zend_parse_arg_str_ex.exit.i.thread
  %i.w = icmp eq i64 %.fr, 0
  br i1 %i.w, label %bb.e, label %select.unfold.preheader

bb.e:                                             ; preds = %.critedge266
  %i.x = load ptr, ptr @zend_empty_string, align 8, !tbaa !19
  store ptr %i.x, ptr %1, align 8, !tbaa !16
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 6, ptr %i.y, align 8, !tbaa !16
  br label %bb.af

select.unfold.preheader:                          ; preds = %.critedge266
  %i.z = add i64 %.fr, 1
  %i.aa = call noalias ptr @_emalloc(i64 noundef %i.z) #27 ; 13 uses
  %i.ab = ptrtoaddr ptr %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.fr ; 2 uses
  store i8 0, ptr %i.ac, align 1, !tbaa !16
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -1
  %i.ae = load i8, ptr %i.m, align 8, !tbaa !16
  %i.af = add i8 %i.ae, 32
  %or.cond267 = icmp ult i8 %i.af, 27
  %i.ag = add i64 %.fr, -1                        ; 4 uses
  %spec.select = select i1 %or.cond267, i64 2, i64 1
  %scevgep484 = getelementptr i8, ptr %i.k, i64 24
  %scevgep486 = getelementptr i8, ptr %i.k, i64 23
  %i.ah = add i64 %i.l, 24
  br label %select.unfold

select.unfold:                                    ; preds = %select.unfold.preheader, %.loopexit
  %.0228 = phi i64 [ %.4232, %.loopexit ], [ 0, %select.unfold.preheader ] ; 4 uses
  %.1226 = phi i64 [ %.2227, %.loopexit ], [ %spec.select, %select.unfold.preheader ]
  %.0204 = phi i64 [ %.pre-phi, %.loopexit ], [ 0, %select.unfold.preheader ] ; 14 uses
  %.0199 = phi ptr [ %.4203, %.loopexit ], [ %i.m, %select.unfold.preheader ] ; 2 uses
  %.0 = phi ptr [ %.3, %.loopexit ], [ %i.ad, %select.unfold.preheader ] ; 30 uses
  %.0545 = ptrtoaddr ptr %.0 to i64
  %i.ai = icmp eq i64 %.1226, 2
  br i1 %i.ai, label %.preheader334, label %.preheader336

.preheader334:                                    ; preds = %select.unfold, %bb.i
  %indvar = phi i64 [ %indvar.next, %bb.i ], [ 0, %select.unfold ] ; 3 uses
  %.1229 = phi i64 [ %i.au, %bb.i ], [ %.0228, %select.unfold ] ; 7 uses
  %.1200 = phi ptr [ %i.aj, %bb.i ], [ %.0199, %select.unfold ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.1200, i64 1 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !16  ; 4 uses
  %i.al = add i8 %i.ak, 32
  %or.cond268 = icmp ult i8 %i.al, 27
  br i1 %or.cond268, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.preheader334
  switch i8 %i.ak, label %bb.g [
    i8 32, label %bb.h
    i8 9, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.am = tail call ptr @__ctype_b_loc() #31
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !198
  %i.ao = zext i8 %i.ak to i64
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !200
  %i.ar = and i16 %i.aq, 4
  %.not255 = icmp ne i16 %i.ar, 0
  %i.as = icmp eq i8 %i.ak, 10
  %or.cond269 = or i1 %i.as, %.not255
  %i.at = icmp ult i64 %.1229, %i.ag
  %or.cond324 = select i1 %or.cond269, i1 %i.at, i1 false
  br i1 %or.cond324, label %bb.i, label %.critedge

bb.h:                                             ; preds = %bb.f, %bb.f, %.preheader334
  %.old323 = icmp ult i64 %.1229, %i.ag
  br i1 %.old323, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.au = add nuw i64 %.1229, 1
  %indvar.next = add i64 %indvar, 1
  br label %.preheader334, !llvm.loop !230

.critedge:                                        ; preds = %bb.g, %bb.h
  %i.av = add i64 %.1229, 1                       ; 5 uses
  %.0221348 = add i64 %.0204, 1                   ; 4 uses
  %.not256349 = icmp ugt i64 %.0221348, %i.av
  br i1 %.not256349, label %.loopexit, label %.lr.ph353.preheader

.lr.ph353.preheader:                              ; preds = %.critedge
  %2 = xor i64 %.0204, -1
  %i.aw = add i64 %.0228, 2
  %i.ax = add i64 %i.aw, %indvar
  %i.ay = add i64 %.0204, 2
  %umax488 = call i64 @llvm.umax.i64(i64 %i.ax, i64 %i.ay)
  %i.az = add i64 %umax488, %2                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.az, 16
  br i1 %min.iters.check, label %.lr.ph353.preheader617, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph353.preheader
  %scevgep = getelementptr i8, ptr %.0, i64 2
  %scevgep481 = getelementptr i8, ptr %scevgep, i64 %.0204
  %i.ba = add i64 %.0228, 2
  %i.bb = add i64 %i.ba, %indvar
  %i.bc = add i64 %.0204, 2
  %umax = call i64 @llvm.umax.i64(i64 %i.bb, i64 %i.bc) ; 2 uses
  %i.bd = sub i64 0, %umax
  %scevgep482 = getelementptr i8, ptr %scevgep481, i64 %i.bd
  %scevgep483 = getelementptr i8, ptr %.0, i64 1
  %scevgep485 = getelementptr i8, ptr %scevgep484, i64 %.0204
  %scevgep487 = getelementptr i8, ptr %scevgep486, i64 %umax
  %bound0 = icmp ult ptr %scevgep482, %scevgep487
  %bound1 = icmp ult ptr %scevgep485, %scevgep483
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph353.preheader617, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.az, -16                     ; 5 uses
  %i.be = add i64 %.0221348, %n.vec
  %i.bf = sub i64 0, %n.vec
  %i.bg = getelementptr i8, ptr %.0, i64 %i.bf    ; 2 uses
  %i.bh = add i64 %.0204, %n.vec
  %i.bi = getelementptr i8, ptr %i.m, i64 %.0204
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue541, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue541 ] ; 18 uses
  %i.bj = sub i64 0, %index
  %i.bk = xor i64 %index, -1
  %i.bl = sub nuw nsw i64 -2, %index
  %i.bm = sub nuw nsw i64 -3, %index
  %i.bn = sub nuw nsw i64 -4, %index
  %i.bo = sub nuw nsw i64 -5, %index
  %i.bp = sub nuw nsw i64 -6, %index
  %i.bq = sub nuw nsw i64 -7, %index
  %i.br = sub nuw nsw i64 -8, %index
  %i.bs = sub nuw nsw i64 -9, %index
  %i.bt = sub nuw nsw i64 -10, %index
  %i.bu = sub nuw nsw i64 -11, %index
  %i.bv = sub nuw nsw i64 -12, %index
  %i.bw = sub nuw nsw i64 -13, %index
  %i.bx = sub nuw nsw i64 -14, %index
  %i.by = sub nuw nsw i64 -15, %index
  %next.gep = getelementptr i8, ptr %.0, i64 %i.bj ; 2 uses
  %next.gep489.a = getelementptr i8, ptr %.0, i64 %i.bk
  %next.gep490.a = getelementptr i8, ptr %.0, i64 %i.bl
  %next.gep491.a = getelementptr i8, ptr %.0, i64 %i.bm
  %next.gep492.a = getelementptr i8, ptr %.0, i64 %i.bn
  %next.gep493.a = getelementptr i8, ptr %.0, i64 %i.bo
  %next.gep494.a = getelementptr i8, ptr %.0, i64 %i.bp
  %next.gep495.a = getelementptr i8, ptr %.0, i64 %i.bq
  %next.gep496.a = getelementptr i8, ptr %.0, i64 %i.br
  %next.gep497.a = getelementptr i8, ptr %.0, i64 %i.bs
  %next.gep498.a = getelementptr i8, ptr %.0, i64 %i.bt
  %next.gep499.a = getelementptr i8, ptr %.0, i64 %i.bu
  %next.gep500.a = getelementptr i8, ptr %.0, i64 %i.bv
  %next.gep501.a = getelementptr i8, ptr %.0, i64 %i.bw
  %next.gep502.a = getelementptr i8, ptr %.0, i64 %i.bx
  %next.gep503 = getelementptr i8, ptr %.0, i64 %i.by
  %i.bz = getelementptr i8, ptr %i.bi, i64 %index
  %wide.load = load <16 x i8>, ptr %i.bz, align 1, !tbaa !16, !alias.scope !231 ; 11 uses
  %i.ca = getelementptr i8, ptr %next.gep, i64 -15
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse, ptr %i.ca, align 1, !tbaa !16, !alias.scope !234, !noalias !231
  %i.cb = icmp eq <16 x i8> %wide.load, splat (i8 41)
  %i.cc = icmp eq <16 x i8> %wide.load, splat (i8 91) ; 2 uses
  %i.cd = icmp eq <16 x i8> %wide.load, splat (i8 93) ; 2 uses
  %i.ce = icmp eq <16 x i8> %wide.load, splat (i8 123) ; 2 uses
  %i.cf = icmp eq <16 x i8> %wide.load, splat (i8 125) ; 2 uses
  %i.cg = icmp eq <16 x i8> %wide.load, splat (i8 60) ; 2 uses
  %i.ch = icmp eq <16 x i8> %wide.load, splat (i8 62) ; 2 uses
  %i.ci = icmp eq <16 x i8> %wide.load, splat (i8 92) ; 2 uses
  %i.cj = icmp eq <16 x i8> %wide.load, splat (i8 47) ; 2 uses
  %i.ck = and <16 x i8> %wide.load, splat (i8 -2)
  %i.cl = icmp eq <16 x i8> %i.ck, splat (i8 40)
  %i.cm = or <16 x i1> %i.cl, %i.cc
  %i.cn = or <16 x i1> %i.cm, %i.cd
  %i.co = or <16 x i1> %i.cn, %i.ce
  %i.cp = or <16 x i1> %i.co, %i.cf
  %i.cq = or <16 x i1> %i.cp, %i.cg
  %i.cr = or <16 x i1> %i.cq, %i.ch
  %i.cs = or <16 x i1> %i.cr, %i.ci
  %i.ct = or <16 x i1> %i.cs, %i.cj               ; 16 uses
  %predphi = select <16 x i1> %i.cb, <16 x i8> splat (i8 40), <16 x i8> splat (i8 41)
  %predphi504.a = select <16 x i1> %i.cc, <16 x i8> splat (i8 93), <16 x i8> %predphi
  %predphi505.a = select <16 x i1> %i.cd, <16 x i8> splat (i8 91), <16 x i8> %predphi504.a
  %predphi506.a = select <16 x i1> %i.ce, <16 x i8> splat (i8 125), <16 x i8> %predphi505.a
  %predphi507.a = select <16 x i1> %i.cf, <16 x i8> splat (i8 123), <16 x i8> %predphi506.a
  %predphi508.a = select <16 x i1> %i.cg, <16 x i8> splat (i8 62), <16 x i8> %predphi507.a
  %predphi509.a = select <16 x i1> %i.ch, <16 x i8> splat (i8 60), <16 x i8> %predphi508.a
  %predphi510.a = select <16 x i1> %i.ci, <16 x i8> splat (i8 47), <16 x i8> %predphi509.a
  %predphi511 = select <16 x i1> %i.cj, <16 x i8> splat (i8 92), <16 x i8> %predphi510.a ; 16 uses
  %i.cu = extractelement <16 x i1> %i.ct, i64 0
  br i1 %i.cu, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.cv = extractelement <16 x i8> %predphi511, i64 0
  store i8 %i.cv, ptr %next.gep, align 1, !tbaa !16, !alias.scope !234, !noalias !231
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.cw = extractelement <16 x i1> %i.ct, i64 1
  br i1 %i.cw, label %pred.store.if512, label %pred.store.continue513

pred.store.if512:                                 ; preds = %pred.store.continue
  %i.cx = extractelement <16 x i8> %predphi511, i64 1
  store i8 %i.cx, ptr %next.gep489.a, align 1, !tbaa !16, !alias.scope !234, !noalias !231
  br label %pred.store.continue513

pred.store.continue513:                           ; preds = %pred.store.if512, %pred.store.continue
  %i.cy = extractelement <16 x i1> %i.ct, i64 2
  br i1 %i.cy, label %pred.store.if514, label %pred.store.continue515

pred.store.if514:                                 ; preds = %pred.store.continue513
  %i.cz = extractelement <16 x i8> %predphi511, i64 2
  store i8 %i.cz, ptr %next.gep490.a, align 1, !tbaa !16, !alias.scope !234, !noalias !231
  br label %pred.store.continue515

pred.store.continue515:                           ; preds = %pred.store.if514, %pred.store.continue513
  %i.da = extractelement <16 x i1> %i.ct, i64 3
  br i1 %i.da, label %pred.store.if516, label %pred.store.continue517

pred.store.if516:                                 ; preds = %pred.store.continue515
  %i.db = extractelement <16 x i8> %predphi511, i64 3
  store i8 %i.db, ptr %next.gep491.a, align 1, !tbaa !16, !alias.scope !234, !noalias !231
  br label %pred.store.continue517

pred.store.continue517:                           ; preds = %pred.store.if516, %pred.store.continue515
  %i.dc = extractelement <16 x i1> %i.ct, i64 4
  br i1 %i.dc, label %pred.store.if518, label %pred.store.continue519

pred.store.if518:                                 ; preds = %pred.store.continue517
  %i.dd = extractelement <16 x i8> %predphi511, i64 4
  store i8 %i.dd, ptr %next.gep492.a, align 1, !tbaa !16, !alias.scope !234, !noalias !231
  br label %pred.store.continue519

pred.store.continue519:                           ; preds = %pred.store.if518, %pred.store.continue517
  %i.de = extractelement <16 x i1> %i.ct, i64 5
  br i1 %i.de, label %pred.store.if520, label %pred.store.continue521

pred.store.if520:                                 ; preds = %pred.store.continue519
  %i.df = extractelement <16 x i8> %predphi511, i64 5
  store i8 %i.df, ptr %next.gep493.a, align 1, !tbaa !16, !alias.scope !234, !noalias !231
  br label %pred.store.continue521

pred.store.continue521:                           ; preds = %pred.store.if520, %pred.store.continue519
  %i.dg = extractelement <16 x i1> %i.ct, i64 6
  br i1 %i.dg, label %pred.store.if522, label %pred.store.continue523

pred.store.if522:                                 ; preds = %pred.store.continue521
  %i.dh = extractelement <16 x i8> %predphi511, i64 6
  store i8 %i.dh, ptr %next.gep494.a, align 1, !tbaa !16, !alias.scope !234, !noalias !231
  br label %pred.store.continue523

pred.store.continue523:                           ; preds = %pred.store.if522, %pred.store.continue521
  %i.di = extractelement <16 x i1> %i.ct, i64 7
  br i1 %i.di, label %pred.store.if524, label %pred.store.continue525

pred.store.if524:                                 ; preds = %pred.store.continue523
  %i.dj = extractelement <16 x i8> %predphi511, i64 7
  store i8 %i.dj, ptr %next.gep495.a, align 1, !tbaa !16, !alias.scope !234, !noalias !231
  br label %pred.store.continue525

pred.store.continue525:                           ; preds = %pred.store.if524, %pred.store.continue523
  %i.dk = extractelement <16 x i1> %i.ct, i64 8
  br i1 %i.dk, label %pred.store.if526, label %pred.store.continue527

pred.store.if526:                                 ; preds = %pred.store.continue525
  %i.dl = extractelement <16 x i8> %predphi511, i64 8
  store i8 %i.dl, ptr %next.gep496.a, align 1, !tbaa !16, !alias.scope !234, !noalias !231
  br label %pred.store.continue527

pred.store.continue527:                           ; preds = %pred.store.if526, %pred.store.continue525
  %i.dm = extractelement <16 x i1> %i.ct, i64 9
  br i1 %i.dm, label %pred.store.if528, label %pred.store.continue529

pred.store.if528:                                 ; preds = %pred.store.continue527
  %i.dn = extractelement <16 x i8> %predphi511, i64 9
  store i8 %i.dn, ptr %next.gep497.a, align 1, !tbaa !16, !alias.scope !234, !noalias !231
  br label %pred.store.continue529

pred.store.continue529:                           ; preds = %pred.store.if528, %pred.store.continue527
  %i.do = extractelement <16 x i1> %i.ct, i64 10
  br i1 %i.do, label %pred.store.if530, label %pred.store.continue531

pred.store.if530:                                 ; preds = %pred.store.continue529
  %i.dp = extractelement <16 x i8> %predphi511, i64 10
  store i8 %i.dp, ptr %next.gep498.a, align 1, !tbaa !16, !alias.scope !234, !noalias !231
  br label %pred.store.continue531

pred.store.continue531:                           ; preds = %pred.store.if530, %pred.store.continue529
  %i.dq = extractelement <16 x i1> %i.ct, i64 11
  br i1 %i.dq, label %pred.store.if532, label %pred.store.continue533

pred.store.if532:                                 ; preds = %pred.store.continue531
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/sat_solver?download=true
inline.NumInlined: 5240
inline.NumDeleted: 1637
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 101
loop-unroll.NumUnrolled: 119
begin_hunk_0_@_ZNK3sat6solver14display_statusERSo:bb.a
  %.077.lcssa = phi i32 [ 0, %_ZNK6vectorIS_IN3sat7watchedELb1EjELb1EjE3endEv.exit ], [ 0, %bb.a ], [ %.178.lcssa, %._crit_edge ]
  %.0.lcssa = phi i32 [ 0, %_ZNK6vectorIS_IN3sat7watchedELb1EjELb1EjE3endEv.exit ], [ 0, %bb.a ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3280 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !291  ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.critedge.a, label %_ZNK3sat6solver8num_varsEv.exit.lr.ph

_ZNK3sat6solver8num_varsEv.exit.lr.ph:            ; preds = %.preheader
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !250  ; 3 uses
  %.not134 = icmp eq i32 %i.m, 0
  br i1 %.not134, label %.critedge.a, label %.lr.ph118

.lr.ph118:                                        ; preds = %_ZNK3sat6solver8num_varsEv.exit.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3312
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !300  ; 2 uses
  %wide.trip.count = zext i32 %i.m to i64         ; 3 uses
  %min.iters.check = icmp ult i32 %i.m, 8
  br i1 %min.iters.check, label %_ZNK3sat6solver8num_varsEv.exit.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph118
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.t, %vector.body ]
  %vec.phi159 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.u, %vector.body ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %wide.load = load <4 x i8>, ptr %i.p, align 1, !tbaa !301
  %wide.load160 = load <4 x i8>, ptr %i.q, align 1, !tbaa !301
  %i.r = zext nneg <4 x i8> %wide.load to <4 x i32>
  %i.s = zext nneg <4 x i8> %wide.load160 to <4 x i32>
  %i.t = add <4 x i32> %vec.phi, %i.r             ; 2 uses
  %i.u = add <4 x i32> %vec.phi159, %i.s          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !873

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.u, %i.t
  %i.w = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.critedge.loopexit, label %_ZNK3sat6solver8num_varsEv.exit.preheader

_ZNK3sat6solver8num_varsEv.exit.preheader:        ; preds = %.lr.ph118, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph118 ], [ %n.vec, %middle.block ]
  %.074111117.ph = phi i32 [ 0, %.lr.ph118 ], [ %i.w, %middle.block ]
  br label %_ZNK3sat6solver8num_varsEv.exit

.lr.ph107:                                        ; preds = %_ZNK6vectorIS_IN3sat7watchedELb1EjELb1EjE3endEv.exit, %._crit_edge
  %.0106 = phi i32 [ %.1.lcssa, %._crit_edge ], [ 0, %_ZNK6vectorIS_IN3sat7watchedELb1EjELb1EjE3endEv.exit ] ; 7 uses
  %.077105 = phi i32 [ %.178.lcssa, %._crit_edge ], [ 0, %_ZNK6vectorIS_IN3sat7watchedELb1EjELb1EjE3endEv.exit ] ; 7 uses
  %.080104 = phi ptr [ %i.at, %._crit_edge ], [ %i.b, %_ZNK6vectorIS_IN3sat7watchedELb1EjELb1EjE3endEv.exit ] ; 2 uses
  %.081103 = phi i32 [ %i.x, %._crit_edge ], [ 0, %_ZNK6vectorIS_IN3sat7watchedELb1EjELb1EjE3endEv.exit ] ; 2 uses
  %.082102 = phi i32 [ %.183.lcssa, %._crit_edge ], [ 0, %_ZNK6vectorIS_IN3sat7watchedELb1EjELb1EjE3endEv.exit ] ; 7 uses
  %i.x = add nuw i32 %.081103, 1
  %i.y = xor i32 %.081103, 1                      ; 3 uses
  %i.z = load ptr, ptr %.080104, align 8, !tbaa !294 ; 7 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %._crit_edge, label %_ZNK6vectorIN3sat7watchedELb1EjE3endEv.exit

_ZNK6vectorIN3sat7watchedELb1EjE3endEv.exit:      ; preds = %.lr.ph107
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 -4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !250 ; 2 uses
  %i.ad = zext i32 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 4                ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  %.not8794 = icmp eq i32 %i.ac, 0
  br i1 %.not8794, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNK6vectorIN3sat7watchedELb1EjE3endEv.exit
  %i.ag = add nsw i64 %i.ae, -16                  ; 2 uses
  %i.ah = and i64 %i.ag, 16
  %lcmp.mod.not.not = icmp eq i64 %i.ah, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !323
  %i.ak = and i32 %i.aj, 3
  switch i32 %i.ak, label %.lr.ph.prol.loopexit.unr-lcssa [
    i32 0, label %bb.c
    i32 2, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph.prol
  %i.al = add i32 %.077105, 1
  br label %.lr.ph.prol.loopexit.unr-lcssa

bb.c:                                             ; preds = %.lr.ph.prol
  %i.am = load i64, ptr %i.z, align 8, !tbaa !324
  %i.an = trunc i64 %i.am to i32
  %i.ao = icmp ult i32 %i.y, %i.an
  br i1 %i.ao, label %bb.d, label %.lr.ph.prol.loopexit.unr-lcssa

bb.d:                                             ; preds = %bb.c
  %i.ap = add i32 %.082102, 2
  %i.aq = add i32 %.0106, 1
  br label %.lr.ph.prol.loopexit.unr-lcssa

.lr.ph.prol.loopexit.unr-lcssa:                   ; preds = %bb.d, %bb.c, %bb.b, %.lr.ph.prol
  %.284.prol = phi i32 [ %.082102, %.lr.ph.prol ], [ %i.ap, %bb.d ], [ %.082102, %bb.c ], [ %.082102, %bb.b ] ; 2 uses
  %.279.prol = phi i32 [ %.077105, %.lr.ph.prol ], [ %.077105, %bb.d ], [ %.077105, %bb.c ], [ %i.al, %bb.b ] ; 2 uses
  %.2.prol = phi i32 [ %.0106, %.lr.ph.prol ], [ %i.aq, %bb.d ], [ %.0106, %bb.c ], [ %.0106, %bb.b ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol.loopexit.unr-lcssa, %.lr.ph.preheader
  %.284.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %.284.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.279.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %.279.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.2.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %.2.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.198.unr = phi i32 [ %.0106, %.lr.ph.preheader ], [ %.2.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.07697.unr = phi ptr [ %i.z, %.lr.ph.preheader ], [ %i.ar, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.17896.unr = phi i32 [ %.077105, %.lr.ph.preheader ], [ %.279.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.18395.unr = phi i32 [ %.082102, %.lr.ph.preheader ], [ %.284.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %i.as = icmp eq i64 %i.ag, 0
  br i1 %i.as, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %bb.k, %.lr.ph107, %_ZNK6vectorIN3sat7watchedELb1EjE3endEv.exit
  %.183.lcssa = phi i32 [ %.082102, %_ZNK6vectorIN3sat7watchedELb1EjE3endEv.exit ], [ %.082102, %.lr.ph107 ], [ %.284.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.284.1, %bb.k ] ; 2 uses
  %.178.lcssa = phi i32 [ %.077105, %_ZNK6vectorIN3sat7watchedELb1EjE3endEv.exit ], [ %.077105, %.lr.ph107 ], [ %.279.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.279.1, %bb.k ] ; 2 uses
  %.1.lcssa = phi i32 [ %.0106, %_ZNK6vectorIN3sat7watchedELb1EjE3endEv.exit ], [ %.0106, %.lr.ph107 ], [ %.2.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.2.1, %bb.k ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.080104, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.at, %i.h
  br i1 %.not, label %.preheader, label %.lr.ph107

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %bb.k
  %.198 = phi i32 [ %.2.1, %bb.k ], [ %.198.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.07697 = phi ptr [ %i.bn, %bb.k ], [ %.07697.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.17896 = phi i32 [ %.279.1, %bb.k ], [ %.17896.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.18395 = phi i32 [ %.284.1, %bb.k ], [ %.18395.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.07697, i64 8
  %i.av = load i32, ptr %i.au, align 8, !tbaa !323
  %i.aw = and i32 %i.av, 3
  switch i32 %i.aw, label %.lr.ph.1 [
    i32 0, label %bb.e
    i32 2, label %bb.g
  ]

bb.e:                                             ; preds = %.lr.ph
  %i.ax = load i64, ptr %.07697, align 8, !tbaa !324
  %i.ay = trunc i64 %i.ax to i32
  %i.az = icmp ult i32 %i.y, %i.ay
  br i1 %i.az, label %bb.f, label %.lr.ph.1

bb.f:                                             ; preds = %bb.e
  %i.ba = add i32 %.18395, 2
  %i.bb = add i32 %.198, 1
  br label %.lr.ph.1

bb.g:                                             ; preds = %.lr.ph
  %i.bc = add i32 %.17896, 1
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.e, %bb.f, %bb.g
  %.284 = phi i32 [ %.18395, %.lr.ph ], [ %i.ba, %bb.f ], [ %.18395, %bb.e ], [ %.18395, %bb.g ] ; 4 uses
  %.279 = phi i32 [ %.17896, %.lr.ph ], [ %.17896, %bb.f ], [ %.17896, %bb.e ], [ %i.bc, %bb.g ] ; 4 uses
  %.2 = phi i32 [ %.198, %.lr.ph ], [ %i.bb, %bb.f ], [ %.198, %bb.e ], [ %.198, %bb.g ] ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.07697, i64 24
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !323
  %i.bf = and i32 %i.be, 3
  switch i32 %i.bf, label %bb.k [
    i32 0, label %bb.i
    i32 2, label %bb.h
  ]

bb.h:                                             ; preds = %.lr.ph.1
  %i.bg = add i32 %.279, 1
  br label %bb.k

bb.i:                                             ; preds = %.lr.ph.1
  %i.bh = getelementptr inbounds nuw i8, ptr %.07697, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !324
  %i.bj = trunc i64 %i.bi to i32
  %i.bk = icmp ult i32 %i.y, %i.bj
  br i1 %i.bk, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bl = add i32 %.284, 2
  %i.bm = add i32 %.2, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %.lr.ph.1
  %.284.1 = phi i32 [ %.284, %.lr.ph.1 ], [ %i.bl, %bb.j ], [ %.284, %bb.i ], [ %.284, %bb.h ] ; 2 uses
  %.279.1 = phi i32 [ %.279, %.lr.ph.1 ], [ %.279, %bb.j ], [ %.279, %bb.i ], [ %i.bg, %bb.h ] ; 2 uses
  %.2.1 = phi i32 [ %.2, %.lr.ph.1 ], [ %i.bm, %bb.j ], [ %.2, %bb.i ], [ %.2, %bb.h ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.07697, i64 32 ; 2 uses
  %.not87.1 = icmp eq ptr %i.bn, %i.af
  br i1 %.not87.1, label %._crit_edge, label %.lr.ph

.critedge.loopexit:                               ; preds = %_ZNK3sat6solver8num_varsEv.exit, %middle.block
  %spec.select.lcssa = phi i32 [ %i.w, %middle.block ], [ %spec.select, %_ZNK3sat6solver8num_varsEv.exit ]
  %i.bo = zext i32 %spec.select.lcssa to i64
  br label %.critedge.a

.critedge.a:                                      ; preds = %.critedge.loopexit, %_ZNK3sat6solver8num_varsEv.exit.lr.ph, %.preheader
  %.074.lcssa = phi i64 [ 0, %.preheader ], [ 0, %_ZNK3sat6solver8num_varsEv.exit.lr.ph ], [ %i.bo, %.critedge.loopexit ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 3208
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 3216
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !312 ; 4 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %._crit_edge126, label %_ZNK6vectorIPN3sat6clauseELb0EjE3endEv.exit

_ZNK3sat6solver8num_varsEv.exit:                  ; preds = %_ZNK3sat6solver8num_varsEv.exit.preheader, %_ZNK3sat6solver8num_varsEv.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK3sat6solver8num_varsEv.exit ], [ %indvars.iv.ph, %_ZNK3sat6solver8num_varsEv.exit.preheader ] ; 2 uses
  %.074111117 = phi i32 [ %spec.select, %_ZNK3sat6solver8num_varsEv.exit ], [ %.074111117.ph, %_ZNK3sat6solver8num_varsEv.exit.preheader ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.o, i64 %indvars.iv
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !301, !range !315, !noundef !316
  %i.bu = zext nneg i8 %i.bt to i32
  %spec.select = add i32 %.074111117, %i.bu       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge.loopexit, label %_ZNK3sat6solver8num_varsEv.exit, !llvm.loop !874

bb.l:                                             ; preds = %._crit_edge126.1
  %i.bv = getelementptr inbounds i8, ptr %i.hh, i64 -4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !250
  %i.bx = zext i32 %i.bw to i64
  br label %_ZNK3sat6solver8num_varsEv.exit91

_ZNK3sat6solver8num_varsEv.exit91:                ; preds = %._crit_edge126.1, %bb.l
  %.0.i.i90 = phi i64 [ %i.bx, %bb.l ], [ 0, %._crit_edge126.1 ]
  %i.by = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.0.i.i90)
  %i.bz = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.by, ptr noundef nonnull @.str.11, i64 noundef 1) ; 0 uses
  %i.ca = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.93, i64 noundef 19) ; 0 uses
  %i.cb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.074.lcssa)
  %i.cc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, ptr noundef nonnull @.str.11, i64 noundef 1) ; 0 uses
  %i.cd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.94, i64 noundef 19) ; 0 uses
  %i.ce = zext i32 %.4.lcssa.1 to i64
  %i.cf = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.ce)
  %i.cg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, ptr noundef nonnull @.str.11, i64 noundef 1) ; 0 uses
  %i.ch = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.95, i64 noundef 19) ; 0 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 3784
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !267 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit, label %bb.m

bb.m:                                             ; preds = %_ZNK3sat6solver8num_varsEv.exit91
  %i.cl = getelementptr inbounds i8, ptr %i.cj, i64 -4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !250
  %i.cn = zext i32 %i.cm to i64
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit:     ; preds = %_ZNK3sat6solver8num_varsEv.exit91, %bb.m
  %.0.i = phi i64 [ %i.cn, %bb.m ], [ 0, %_ZNK3sat6solver8num_varsEv.exit91 ]
  %i.co = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.0.i)
  %i.cp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.co, ptr noundef nonnull @.str.11, i64 noundef 1) ; 0 uses
  %i.cq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.96, i64 noundef 19) ; 0 uses
  %i.cr = zext i32 %.0.lcssa to i64
  %i.cs = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.cr)
  %i.ct = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cs, ptr noundef nonnull @.str.11, i64 noundef 1) ; 0 uses
  %i.cu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.97, i64 noundef 19) ; 0 uses
  %i.cv = zext i32 %.171.lcssa.1 to i64
  %i.cw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.cv)
  %i.cx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cw, ptr noundef nonnull @.str.11, i64 noundef 1) ; 0 uses
  %i.cy = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.98, i64 noundef 19) ; 0 uses
  %i.cz = zext i32 %.168.lcssa.1 to i64
  %i.da = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.cz)
  %i.db = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.da, ptr noundef nonnull @.str.11, i64 noundef 1) ; 0 uses
  %i.dc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.99, i64 noundef 19) ; 0 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 476
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !341
  %i.df = zext i32 %i.de to i64
  %i.dg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.df)
  %i.dh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dg, ptr noundef nonnull @.str.11, i64 noundef 1) ; 0 uses
  %i.di = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.100, i64 noundef 19) ; 0 uses
  %i.dj = icmp eq i32 %i.gv, 0
  %i.dk = uitofp i32 %.4.lcssa.1 to double
  %i.dl = uitofp i32 %i.gv to double
  %i.dm = fdiv double %i.dk, %i.dl
  %i.dn = select i1 %i.dj, double 0.000000e+00, double %i.dm
  %i.do = uitofp i64 %i.gw to double
  %i.dp = fmul nnan double %i.do, f0x3EB0000000000000
  %i.dq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.dn)
  %i.dr = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dq, ptr noundef nonnull @.str.11, i64 noundef 1) ; 0 uses
  %i.ds = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.101, i64 noundef 19) ; 0 uses
  %i.dt = load ptr, ptr %1, align 8, !tbaa !87
  %i.du = getelementptr i8, ptr %i.dt, i64 -24    ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8
  %i.dw = getelementptr inbounds i8, ptr %1, i64 %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24 ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !531
  %i.dz = and i32 %i.dy, -261
  %i.ea = or disjoint i32 %i.dz, 4
  store i32 %i.ea, ptr %i.dx, align 8, !tbaa !532
  %i.eb = load i64, ptr %i.du, align 8
  %i.ec = getelementptr inbounds i8, ptr %1, i64 %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store i64 2, ptr %i.ed, align 8, !tbaa !513
  %i.ee = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.dp) ; 4 uses
  %i.ef = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ee, ptr noundef nonnull @.str.63, i64 noundef 1) ; 0 uses
  %i.eg = load ptr, ptr %i.ee, align 8, !tbaa !87
  %i.eh = getelementptr i8, ptr %i.eg, i64 -24
  %i.ei = load i64, ptr %i.eh, align 8
  %i.ej = getelementptr inbounds i8, ptr %i.ee, i64 %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 240
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !881 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.el, null
  br i1 %.not.i.i.i, label %bb.n, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.n:                                             ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit
  tail call void @_ZSt16__throw_bad_castv() #39
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 56
  %i.en = load i8, ptr %i.em, align 8, !tbaa !886
  %.not.i1.i.i = icmp eq i8 %i.en, 0
  br i1 %.not.i1.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 67
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !262
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.p:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.el)
  %i.eq = load ptr, ptr %i.el, align 8, !tbaa !87
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 48
  %i.es = load ptr, ptr %i.er, align 8
  %i.et = tail call noundef signext i8 %i.es(ptr noundef nonnull align 8 dereferenceable(570) %i.el, i8 noundef signext 10), !inline_history !875
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.o, %bb.p
  %.0.i.i.i = phi i8 [ %i.ep, %bb.o ], [ %i.et, %bb.p ]
  %i.eu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ee, i8 noundef signext %.0.i.i.i)
  %i.ev = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.eu) ; 0 uses
  ret void

_ZNK6vectorIPN3sat6clauseELb0EjE3endEv.exit:      ; preds = %.critedge.a
  %i.ew = getelementptr inbounds i8, ptr %i.bq, i64 -4
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !250 ; 2 uses
  %.not86120 = icmp eq i32 %i.ex, 0
  br i1 %.not86120, label %._crit_edge126, label %.lr.ph125.preheader

.lr.ph125.preheader:                              ; preds = %_ZNK6vectorIPN3sat6clauseELb0EjE3endEv.exit
  %i.ey = zext i32 %i.ex to i64
  %i.ez = add nuw nsw i64 %i.ey, 2305843009213693951 ; 2 uses
  %i.fa = and i64 %i.ez, 2305843009213693951      ; 2 uses
  %i.fb = add nuw nsw i64 %i.fa, 1                ; 2 uses
  %i.fc = icmp eq i64 %i.fa, 0
  br i1 %i.fc, label %.lr.ph125.epil.preheader, label %.lr.ph125.preheader.new

.lr.ph125.preheader.new:                          ; preds = %.lr.ph125.preheader
  %unroll_iter = and i64 %i.fb, 4611686018427387902
  br label %.lr.ph125

._crit_edge126.loopexit.unr-lcssa:                ; preds = %.lr.ph125
  %i.fd = and i64 %i.ez, 1
  %lcmp.mod166.not.not = icmp eq i64 %i.fd, 0
  br i1 %lcmp.mod166.not.not, label %.lr.ph125.epil.preheader, label %._crit_edge126

.lr.ph125.epil.preheader:                         ; preds = %._crit_edge126.loopexit.unr-lcssa, %.lr.ph125.preheader
  %.065124.epil.init = phi ptr [ %i.bq, %.lr.ph125.preheader ], [ %i.hy, %._crit_edge126.loopexit.unr-lcssa ]
  %.168123.epil.init = phi i32 [ 0, %.lr.ph125.preheader ], [ %.269.1177, %._crit_edge126.loopexit.unr-lcssa ]
  %.171122.epil.init = phi i32 [ 0, %.lr.ph125.preheader ], [ %.272.1175, %._crit_edge126.loopexit.unr-lcssa ]
  %.4121.epil.init = phi i32 [ %.082.lcssa, %.lr.ph125.preheader ], [ %i.hx, %._crit_edge126.loopexit.unr-lcssa ]
  %lcmp.mod170 = trunc i64 %i.fb to i1
  tail call void @llvm.assume(i1 %lcmp.mod170)
  %i.fe = load ptr, ptr %.065124.epil.init, align 8, !tbaa !314
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !326 ; 2 uses
  %i.fh = icmp eq i32 %i.fg, 3                    ; 2 uses
  %i.fi = zext i1 %i.fh to i32
  %.272.epil = add i32 %.171122.epil.init, %i.fi
  %not..epil = xor i1 %i.fh, true
  %i.fj = zext i1 %not..epil to i32
  %.269.epil = add i32 %.168123.epil.init, %i.fj
  %i.fk = add i32 %i.fg, %.4121.epil.init
  br label %._crit_edge126

._crit_edge126:                                   ; preds = %.lr.ph125.epil.preheader, %._crit_edge126.loopexit.unr-lcssa, %.critedge.a, %_ZNK6vectorIPN3sat6clauseELb0EjE3endEv.exit
  %.4.lcssa = phi i32 [ %.082.lcssa, %_ZNK6vectorIPN3sat6clauseELb0EjE3endEv.exit ], [ %.082.lcssa, %.critedge.a ], [ %i.hx, %._crit_edge126.loopexit.unr-lcssa ], [ %i.fk, %.lr.ph125.epil.preheader ] ; 4 uses
  %.171.lcssa = phi i32 [ 0, %_ZNK6vectorIPN3sat6clauseELb0EjE3endEv.exit ], [ 0, %.critedge.a ], [ %.272.1175, %._crit_edge126.loopexit.unr-lcssa ], [ %.272.epil, %.lr.ph125.epil.preheader ] ; 4 uses
  %.168.lcssa = phi i32 [ 0, %_ZNK6vectorIPN3sat6clauseELb0EjE3endEv.exit ], [ 0, %.critedge.a ], [ %.269.1177, %._crit_edge126.loopexit.unr-lcssa ], [ %.269.epil, %.lr.ph125.epil.preheader ] ; 4 uses
  %i.fl = load ptr, ptr %2, align 8, !tbaa !312   ; 6 uses
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %._crit_edge126.1, label %_ZNK6vectorIPN3sat6clauseELb0EjE3endEv.exit.1

_ZNK6vectorIPN3sat6clauseELb0EjE3endEv.exit.1:    ; preds = %._crit_edge126
  %i.fn = getelementptr inbounds i8, ptr %i.fl, i64 -4
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !250 ; 2 uses
  %i.fp = zext i32 %i.fo to i64
  %i.fq = shl nuw nsw i64 %i.fp, 3                ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fq
  %.not86120.1 = icmp eq i32 %i.fo, 0
  br i1 %.not86120.1, label %._crit_edge126.1, label %.lr.ph125.1.preheader

.lr.ph125.1.preheader:                            ; preds = %_ZNK6vectorIPN3sat6clauseELb0EjE3endEv.exit.1
  %i.fs = add nsw i64 %i.fq, -8                   ; 2 uses
  %i.ft = and i64 %i.fs, 8
  %lcmp.mod181.not.not = icmp eq i64 %i.ft, 0
  br i1 %lcmp.mod181.not.not, label %.lr.ph125.1.prol, label %.lr.ph125.1.prol.loopexit

.lr.ph125.1.prol:                                 ; preds = %.lr.ph125.1.preheader
  %i.fu = load ptr, ptr %i.fl, align 8, !tbaa !314
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 4
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !326 ; 2 uses
  %i.fx = icmp eq i32 %i.fw, 3                    ; 2 uses
  %i.fy = zext i1 %i.fx to i32
  %.272.1.prol = add i32 %.171.lcssa, %i.fy       ; 2 uses
  %not..1.prol = xor i1 %i.fx, true
  %i.fz = zext i1 %not..1.prol to i32
  %.269.1.prol = add i32 %.168.lcssa, %i.fz       ; 2 uses
  %i.ga = add i32 %i.fw, %.4.lcssa                ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  br label %.lr.ph125.1.prol.loopexit

.lr.ph125.1.prol.loopexit:                        ; preds = %.lr.ph125.1.prol, %.lr.ph125.1.preheader
  %.272.1.lcssa.unr = phi i32 [ poison, %.lr.ph125.1.preheader ], [ %.272.1.prol, %.lr.ph125.1.prol ]
  %.269.1.lcssa.unr = phi i32 [ poison, %.lr.ph125.1.preheader ], [ %.269.1.prol, %.lr.ph125.1.prol ]
  %.lcssa.unr = phi i32 [ poison, %.lr.ph125.1.preheader ], [ %i.ga, %.lr.ph125.1.prol ]
  %.065124.1.unr = phi ptr [ %i.fl, %.lr.ph125.1.preheader ], [ %i.gb, %.lr.ph125.1.prol ]
  %.168123.1.unr = phi i32 [ %.168.lcssa, %.lr.ph125.1.preheader ], [ %.269.1.prol, %.lr.ph125.1.prol ]
  %.171122.1.unr = phi i32 [ %.171.lcssa, %.lr.ph125.1.preheader ], [ %.272.1.prol, %.lr.ph125.1.prol ]
  %.4121.1.unr = phi i32 [ %.4.lcssa, %.lr.ph125.1.preheader ], [ %i.ga, %.lr.ph125.1.prol ]
  %i.gc = icmp eq i64 %i.fs, 0
  br i1 %i.gc, label %._crit_edge126.1, label %.lr.ph125.1

.lr.ph125.1:                                      ; preds = %.lr.ph125.1.prol.loopexit, %.lr.ph125.1
  %.065124.1 = phi ptr [ %i.gs, %.lr.ph125.1 ], [ %.065124.1.unr, %.lr.ph125.1.prol.loopexit ] ; 3 uses
  %.168123.1 = phi i32 [ %.269.1.1, %.lr.ph125.1 ], [ %.168123.1.unr, %.lr.ph125.1.prol.loopexit ]
  %.171122.1 = phi i32 [ %.272.1.1, %.lr.ph125.1 ], [ %.171122.1.unr, %.lr.ph125.1.prol.loopexit ]
  %.4121.1 = phi i32 [ %i.gr, %.lr.ph125.1 ], [ %.4121.1.unr, %.lr.ph125.1.prol.loopexit ]
  %i.gd = load ptr, ptr %.065124.1, align 8, !tbaa !314
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !326 ; 2 uses
  %i.gg = icmp eq i32 %i.gf, 3                    ; 2 uses
  %i.gh = zext i1 %i.gg to i32
  %.272.1 = add i32 %.171122.1, %i.gh
  %not..1 = xor i1 %i.gg, true
  %i.gi = zext i1 %not..1 to i32
  %.269.1 = add i32 %.168123.1, %i.gi
  %i.gj = add i32 %i.gf, %.4121.1
  %i.gk = getelementptr inbounds nuw i8, ptr %.065124.1, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !314
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 4
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !326 ; 2 uses
  %i.go = icmp eq i32 %i.gn, 3                    ; 2 uses
  %i.gp = zext i1 %i.go to i32
  %.272.1.1 = add i32 %.272.1, %i.gp              ; 2 uses
  %not..1.1 = xor i1 %i.go, true
  %i.gq = zext i1 %not..1.1 to i32
  %.269.1.1 = add i32 %.269.1, %i.gq              ; 2 uses
  %i.gr = add i32 %i.gn, %i.gj                    ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.065124.1, i64 16 ; 2 uses
  %.not86.1.1 = icmp eq ptr %i.gs, %i.fr
  br i1 %.not86.1.1, label %._crit_edge126.1, label %.lr.ph125.1

._crit_edge126.1:                                 ; preds = %.lr.ph125.1.prol.loopexit, %.lr.ph125.1, %._crit_edge126, %_ZNK6vectorIPN3sat6clauseELb0EjE3endEv.exit.1
  %.4.lcssa.1 = phi i32 [ %.4.lcssa, %_ZNK6vectorIPN3sat6clauseELb0EjE3endEv.exit.1 ], [ %.4.lcssa, %._crit_edge126 ], [ %.lcssa.unr, %.lr.ph125.1.prol.loopexit ], [ %i.gr, %.lr.ph125.1 ] ; 2 uses
  %.171.lcssa.1 = phi i32 [ %.171.lcssa, %_ZNK6vectorIPN3sat6clauseELb0EjE3endEv.exit.1 ], [ %.171.lcssa, %._crit_edge126 ], [ %.272.1.lcssa.unr, %.lr.ph125.1.prol.loopexit ], [ %.272.1.1, %.lr.ph125.1 ] ; 2 uses
  %.168.lcssa.1 = phi i32 [ %.168.lcssa, %_ZNK6vectorIPN3sat6clauseELb0EjE3endEv.exit.1 ], [ %.168.lcssa, %._crit_edge126 ], [ %.269.1.lcssa.unr, %.lr.ph125.1.prol.loopexit ], [ %.269.1.1, %.lr.ph125.1 ] ; 2 uses
  %i.gt = add i32 %.0.lcssa, %.077.lcssa
  %i.gu = add i32 %i.gt, %.171.lcssa.1
  %i.gv = add i32 %i.gu, %.168.lcssa.1            ; 2 uses
  %i.gw = tail call noundef i64 @_ZN6memory19get_allocation_sizeEv()
  %i.gx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.88, i64 noundef 12) ; 0 uses
  %i.gy = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.89, i64 noundef 19) ; 0 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 3168
  %i.ha = load i8, ptr %i.gz, align 8, !tbaa !242, !range !315, !noundef !316
  %i.hb = trunc nuw i8 %i.ha to i1                ; 2 uses
  %i.hc = select i1 %i.hb, ptr @.str.90, ptr @.str.91
  %i.hd = select i1 %i.hb, i64 4, i64 5
  %i.he = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.hc, i64 noundef %i.hd) ; 0 uses
  %i.hf = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.11, i64 noundef 1) ; 0 uses
  %i.hg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.92, i64 noundef 19) ; 0 uses
  %i.hh = load ptr, ptr %i.i, align 8, !tbaa !291 ; 2 uses
  %i.hi = icmp eq ptr %i.hh, null
  br i1 %i.hi, label %_ZNK3sat6solver8num_varsEv.exit91, label %bb.l

.lr.ph125:                                        ; preds = %.lr.ph125, %.lr.ph125.preheader.new
  %.065124 = phi ptr [ %i.bq, %.lr.ph125.preheader.new ], [ %i.hy, %.lr.ph125 ] ; 3 uses
  %.168123 = phi i32 [ 0, %.lr.ph125.preheader.new ], [ %.269.1177, %.lr.ph125 ]
  %.171122 = phi i32 [ 0, %.lr.ph125.preheader.new ], [ %.272.1175, %.lr.ph125 ]
  %.4121 = phi i32 [ %.082.lcssa, %.lr.ph125.preheader.new ], [ %i.hx, %.lr.ph125 ]
  %niter = phi i64 [ 0, %.lr.ph125.preheader.new ], [ %niter.next.1, %.lr.ph125 ]
  %i.hj = load ptr, ptr %.065124, align 8, !tbaa !314
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 4
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !326 ; 2 uses
  %i.hm = icmp eq i32 %i.hl, 3                    ; 2 uses
  %i.hn = zext i1 %i.hm to i32
  %.272 = add i32 %.171122, %i.hn
  %not. = xor i1 %i.hm, true
  %i.ho = zext i1 %not. to i32
  %.269 = add i32 %.168123, %i.ho
  %i.hp = add i32 %i.hl, %.4121
  %i.hq = getelementptr inbounds nuw i8, ptr %.065124, i64 8
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !314
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 4
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !326 ; 2 uses
  %i.hu = icmp eq i32 %i.ht, 3                    ; 2 uses
  %i.hv = zext i1 %i.hu to i32
  %.272.1175 = add i32 %.272, %i.hv               ; 3 uses
  %not..1176 = xor i1 %i.hu, true
  %i.hw = zext i1 %not..1176 to i32
  %.269.1177 = add i32 %.269, %i.hw               ; 3 uses
  %i.hx = add i32 %i.ht, %i.hp                    ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.065124, i64 16 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge126.loopexit.unr-lcssa, label %.lr.ph125
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZN3sat6solver13restart_levelEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(4264) %0, i1 noundef zeroext %1) local_unnamed_addr #11 align 2 {
bb.a:
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 3612
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !256 ; 6 uses
  %.phi.trans.insert12 = getelementptr inbounds nuw i8, ptr %0, i64 3616
  %.pre13 = load i32, ptr %.phi.trans.insert12, align 8, !tbaa !257 ; 6 uses
  br i1 %1, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq i32 %.pre, %.pre13
  br i1 %i.a, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %i.b = phi i32 [ %.pre, %bb.b ], [ %.pre13, %bb.a ]
  %i.c = sub i32 %.pre, %i.b
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.d = icmp ult i32 %.pre13, %.pre
  br i1 %i.d, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3856
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3784
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3592
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !253
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !250
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3584
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !310
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !267
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !339, !nonnull !316, !align !321
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !289  ; 2 uses
  %i.p = zext i32 %i.j to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !250
  %i.s = zext i32 %.pre13 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ %i.s, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.t = getelementptr inbounds nuw [12 x i8], ptr %i.l, i64 %indvars.iv
  %i.u = load i32, ptr %i.t, align 4, !tbaa !336
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.v
  %.sroa.0.0.copyload.i = load i32, ptr %i.w, align 4, !tbaa !250
  %i.x = lshr i32 %.sroa.0.0.copyload.i, 1
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !250
  %i.ab = icmp ugt i32 %i.aa, %i.r
  br i1 %i.ab, label %bb.e, label %.critedge.loopexit.split.loop.exit15

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %.pre, %lftr.wideiv
  br i1 %exitcond.not, label %.critedge, label %bb.d, !llvm.loop !28

.critedge.loopexit.split.loop.exit15:             ; preds = %bb.d
  %i.ac = trunc nuw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %.critedge.loopexit.split.loop.exit15, %bb.c
  %.0.lcssa = phi i32 [ %.pre13, %bb.c ], [ %i.ac, %.critedge.loopexit.split.loop.exit15 ], [ %.pre, %bb.e ]
  %i.ad = sub nuw i32 %.0.lcssa, %.pre13
  br label %bb.f

bb.f:                                             ; preds = %.critedge, %._crit_edge
  %.07 = phi i32 [ %i.c, %._crit_edge ], [ %i.ad, %.critedge ]
  ret i32 %.07
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/jdcolor-12?download=true
inline.NumInlined: 2
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 20
begin_hunk_0_@gray_rgb_convert:bb.a
  br i1 %lcmp.mod.not, label %..loopexit_crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %..loopexit_crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %..loopexit_crit_edge.unr-lcssa ]
  %.01318.epil.init = phi ptr [ %i.r, %.lr.ph ], [ %i.ao, %..loopexit_crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod25)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 2 uses
  %.01318.epil = phi ptr [ %.01318.epil.init, %.epil.preheader ], [ %i.j, %bb.b ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv.epil
  %i.g = load i16, ptr %i.f, align 2, !tbaa !54   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.01318.epil, i64 4
  store i16 %i.g, ptr %i.h, align 2, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %.01318.epil, i64 2
  store i16 %i.g, ptr %i.i, align 2, !tbaa !54
  store i16 %i.g, ptr %.01318.epil, align 2, !tbaa !54
  %i.j = getelementptr inbounds nuw i8, ptr %.01318.epil, i64 6
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %..loopexit_crit_edge, label %bb.b, !llvm.loop !119

..loopexit_crit_edge:                             ; preds = %bb.b, %..loopexit_crit_edge.unr-lcssa
  %i.k = add nsw i32 %.in, -1
  %i.l = add i32 %.01620, 1
  %i.m = getelementptr inbounds nuw i8, ptr %.01521, i64 8
  %i.n = icmp sgt i32 %.in, 1
  br i1 %i.n, label %.lr.ph, label %._crit_edge.split, !llvm.loop !120

.lr.ph:                                           ; preds = %.lr.ph.preheader, %..loopexit_crit_edge
  %.in = phi i32 [ %i.k, %..loopexit_crit_edge ], [ %4, %.lr.ph.preheader ] ; 2 uses
  %.01521 = phi ptr [ %i.m, %..loopexit_crit_edge ], [ %3, %.lr.ph.preheader ] ; 2 uses
  %.01620 = phi i32 [ %i.l, %..loopexit_crit_edge ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %i.o = zext i32 %.01620 to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !56   ; 5 uses
  %i.r = load ptr, ptr %.01521, align 8, !tbaa !56 ; 2 uses
  br i1 %i.e, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.new ], [ 0, %.lr.ph ] ; 5 uses
  %.01318 = phi ptr [ %i.ao, %.lr.ph.new ], [ %i.r, %.lr.ph ] ; 13 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.new ], [ 0, %.lr.ph ]
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv
  %i.t = load i16, ptr %i.s, align 2, !tbaa !54   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.01318, i64 4
  store i16 %i.t, ptr %i.u, align 2, !tbaa !54
  %i.v = getelementptr inbounds nuw i8, ptr %.01318, i64 2
  store i16 %i.t, ptr %i.v, align 2, !tbaa !54
  store i16 %i.t, ptr %.01318, align 2, !tbaa !54
  %i.w = getelementptr inbounds nuw i8, ptr %.01318, i64 6
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.z = load i16, ptr %i.y, align 2, !tbaa !54   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.01318, i64 10
  store i16 %i.z, ptr %i.aa, align 2, !tbaa !54
  %i.ab = getelementptr inbounds nuw i8, ptr %.01318, i64 8
  store i16 %i.z, ptr %i.ab, align 2, !tbaa !54
  store i16 %i.z, ptr %i.w, align 2, !tbaa !54
  %i.ac = getelementptr inbounds nuw i8, ptr %.01318, i64 12
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !54 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.01318, i64 16
  store i16 %i.af, ptr %i.ag, align 2, !tbaa !54
  %i.ah = getelementptr inbounds nuw i8, ptr %.01318, i64 14
  store i16 %i.af, ptr %i.ah, align 2, !tbaa !54
  store i16 %i.af, ptr %i.ac, align 2, !tbaa !54
  %i.ai = getelementptr inbounds nuw i8, ptr %.01318, i64 18
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 6
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !54 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.01318, i64 22
  store i16 %i.al, ptr %i.am, align 2, !tbaa !54
  %i.an = getelementptr inbounds nuw i8, ptr %.01318, i64 20
  store i16 %i.al, ptr %i.an, align 2, !tbaa !54
  store i16 %i.al, ptr %i.ai, align 2, !tbaa !54
  %i.ao = getelementptr inbounds nuw i8, ptr %.01318, i64 24 ; 2 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %..loopexit_crit_edge.unr-lcssa, label %.lr.ph.new, !llvm.loop !121

._crit_edge.split:                                ; preds = %..loopexit_crit_edge, %.lr.ph22, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @null_convert(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !41   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load i32, ptr %i.c, align 8, !tbaa !52   ; 9 uses
  %i.e = icmp sgt i32 %4, 0                       ; 3 uses
  switch i32 %i.b, label %.preheader86 [
    i32 3, label %.preheader88
    i32 4, label %.preheader91
  ]

.preheader91:                                     ; preds = %bb.a
  br i1 %i.e, label %.lr.ph97, label %.loopexit

.lr.ph97:                                         ; preds = %.preheader91
  %i.f = load ptr, ptr %1, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !51
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !51
  %.not114 = icmp eq i32 %i.d, 0
  br i1 %.not114, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph97
  %wide.trip.count = zext i32 %i.d to i64         ; 7 uses
  %i.m = shl nuw nsw i64 %wide.trip.count, 1      ; 4 uses
  %i.n = shl nuw nsw i64 %wide.trip.count, 3
  %min.iters.check = icmp ult i32 %i.d, 16
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 4 uses
  %i.o = shl nuw nsw i64 %n.vec, 3
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.p = add nsw i64 %wide.trip.count, -1
  br label %.lr.ph

.preheader88:                                     ; preds = %bb.a
  br i1 %i.e, label %.lr.ph103, label %.loopexit

.lr.ph103:                                        ; preds = %.preheader88
  %i.q = load ptr, ptr %1, align 8, !tbaa !51
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !51
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !51
  %.not115 = icmp eq i32 %i.d, 0
  br i1 %.not115, label %.loopexit, label %.lr.ph100.preheader

.lr.ph100.preheader:                              ; preds = %.lr.ph103
  %wide.trip.count125 = zext i32 %i.d to i64      ; 7 uses
  %i.v = shl nuw nsw i64 %wide.trip.count125, 1   ; 3 uses
  %i.w = mul nuw nsw i64 %wide.trip.count125, 6
  %min.iters.check191 = icmp ult i32 %i.d, 8
  %n.vec205 = and i64 %wide.trip.count125, 4294967288 ; 4 uses
  %i.x = mul nuw nsw i64 %n.vec205, 6
  %cmp.n215 = icmp eq i64 %n.vec205, %wide.trip.count125
  %xtraiter220 = and i64 %wide.trip.count125, 1
  %lcmp.mod221.not = icmp eq i64 %xtraiter220, 0
  %i.y = add nsw i64 %wide.trip.count125, -1
  br label %.lr.ph100

.preheader86:                                     ; preds = %bb.a
  br i1 %i.e, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader86
  %i.z = icmp slt i32 %i.b, 1
  %.not117 = icmp eq i32 %i.d, 0
  %i.aa = sext i32 %i.b to i64                    ; 5 uses
  %brmerge = select i1 %i.z, i1 true, i1 %.not117
  br i1 %brmerge, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count135 = zext nneg i32 %i.b to i64
  %wide.trip.count130 = zext i32 %i.d to i64      ; 2 uses
  %xtraiter222 = and i64 %wide.trip.count130, 3   ; 3 uses
  %i.ab = add i32 %i.d, -1
  %i.ac = icmp ult i32 %i.ab, 3
  %unroll_iter = and i64 %wide.trip.count130, 4294967292
  %lcmp.mod223.not = icmp eq i64 %xtraiter222, 0
  %lcmp.mod224 = icmp ne i64 %xtraiter222, 0
  br label %.preheader

..loopexit87_crit_edge:                           ; preds = %scalar.ph190.prol.loopexit, %scalar.ph190, %middle.block214
  %i.ad = add nsw i32 %.in116, -1
  %i.ae = add i32 %.079101, 1
  %i.af = getelementptr inbounds nuw i8, ptr %.076102, i64 8
  %i.ag = icmp sgt i32 %.in116, 1
  br i1 %i.ag, label %.lr.ph100, label %.loopexit, !llvm.loop !122

.lr.ph100:                                        ; preds = %.lr.ph100.preheader, %..loopexit87_crit_edge
  %.in116 = phi i32 [ %i.ad, %..loopexit87_crit_edge ], [ %4, %.lr.ph100.preheader ] ; 2 uses
  %.076102 = phi ptr [ %i.af, %..loopexit87_crit_edge ], [ %3, %.lr.ph100.preheader ] ; 2 uses
  %.079101 = phi i32 [ %i.ae, %..loopexit87_crit_edge ], [ %2, %.lr.ph100.preheader ] ; 2 uses
  %i.ah = zext i32 %.079101 to i64                ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !56 ; 6 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ah
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !56 ; 6 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ah
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !56 ; 6 uses
  %i.ao = load ptr, ptr %.076102, align 8, !tbaa !56 ; 8 uses
  br i1 %min.iters.check191, label %scalar.ph190.preheader, label %vector.memcheck192

vector.memcheck192:                               ; preds = %.lr.ph100
  %i.ap = getelementptr i8, ptr %i.ao, i64 %i.w   ; 3 uses
  %i.aq = getelementptr i8, ptr %i.aj, i64 %i.v
  %bound0193 = icmp ult ptr %i.ao, %i.aq
  %bound0193.a = icmp ult ptr %i.aj, %i.ap
  %found.conflict195 = and i1 %bound0193, %bound0193.a
  %5 = getelementptr i8, ptr %i.al, i64 %i.v
  %bound0196 = icmp ult ptr %i.ao, %5
  %bound1197 = icmp ult ptr %i.al, %i.ap
  %found.conflict198 = and i1 %bound0196, %bound1197
  %conflict.rdx199 = or i1 %found.conflict195, %found.conflict198
  %6 = getelementptr i8, ptr %i.an, i64 %i.v
  %bound0200 = icmp ult ptr %i.ao, %6
  %bound1201 = icmp ult ptr %i.an, %i.ap
  %found.conflict202 = and i1 %bound0200, %bound1201
  %conflict.rdx203 = or i1 %conflict.rdx199, %found.conflict202
  br i1 %conflict.rdx203, label %scalar.ph190.preheader, label %vector.ph204

vector.ph204:                                     ; preds = %vector.memcheck192
  %i.ar = getelementptr i8, ptr %i.ao, i64 %i.x
  br label %vector.body206

vector.body206:                                   ; preds = %vector.body206, %vector.ph204
  %index207 = phi i64 [ 0, %vector.ph204 ], [ %index.next213, %vector.body206 ] ; 5 uses
  %i.as = mul i64 %index207, 6
  %next.gep208 = getelementptr i8, ptr %i.ao, i64 %i.as
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %index207
  %wide.load209 = load <8 x i16>, ptr %i.at, align 2, !tbaa !54, !alias.scope !143
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %index207
  %wide.load210 = load <8 x i16>, ptr %i.au, align 2, !tbaa !54, !alias.scope !144
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %index207
  %wide.load211 = load <8 x i16>, ptr %i.av, align 2, !tbaa !54, !alias.scope !145
  %i.aw = shufflevector <8 x i16> %wide.load209, <8 x i16> %wide.load210, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ax = shufflevector <8 x i16> %wide.load211, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec212 = shufflevector <16 x i16> %i.aw, <16 x i16> %i.ax, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x i16> %interleaved.vec212, ptr %next.gep208, align 2, !tbaa !54, !alias.scope !146, !noalias !147
  %index.next213 = add nuw i64 %index207, 8       ; 2 uses
  %i.ay = icmp eq i64 %index.next213, %n.vec205
  br i1 %i.ay, label %middle.block214, label %vector.body206, !llvm.loop !128

middle.block214:                                  ; preds = %vector.body206
  br i1 %cmp.n215, label %..loopexit87_crit_edge, label %scalar.ph190.preheader

scalar.ph190.preheader:                           ; preds = %vector.memcheck192, %.lr.ph100, %middle.block214
  %indvars.iv122.ph = phi i64 [ 0, %vector.memcheck192 ], [ 0, %.lr.ph100 ], [ %n.vec205, %middle.block214 ] ; 6 uses
  %.07098.ph = phi ptr [ %i.ao, %vector.memcheck192 ], [ %i.ao, %.lr.ph100 ], [ %i.ar, %middle.block214 ] ; 5 uses
  br i1 %lcmp.mod221.not, label %scalar.ph190.prol.loopexit, label %scalar.ph190.prol

scalar.ph190.prol:                                ; preds = %scalar.ph190.preheader
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %indvars.iv122.ph
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !54
  %i.bb = getelementptr inbounds nuw i8, ptr %.07098.ph, i64 2
  store i16 %i.ba, ptr %.07098.ph, align 2, !tbaa !54
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %indvars.iv122.ph
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !54
  %i.be = getelementptr inbounds nuw i8, ptr %.07098.ph, i64 4
  store i16 %i.bd, ptr %i.bb, align 2, !tbaa !54
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %indvars.iv122.ph
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !54
  %i.bh = getelementptr inbounds nuw i8, ptr %.07098.ph, i64 6
  store i16 %i.bg, ptr %i.be, align 2, !tbaa !54
  %indvars.iv.next123.prol = or disjoint i64 %indvars.iv122.ph, 1
  br label %scalar.ph190.prol.loopexit

scalar.ph190.prol.loopexit:                       ; preds = %scalar.ph190.prol, %scalar.ph190.preheader
  %indvars.iv122.unr = phi i64 [ %indvars.iv122.ph, %scalar.ph190.preheader ], [ %indvars.iv.next123.prol, %scalar.ph190.prol ]
  %.07098.unr = phi ptr [ %.07098.ph, %scalar.ph190.preheader ], [ %i.bh, %scalar.ph190.prol ]
  %i.bi = icmp eq i64 %indvars.iv122.ph, %i.y
  br i1 %i.bi, label %..loopexit87_crit_edge, label %scalar.ph190

scalar.ph190:                                     ; preds = %scalar.ph190.prol.loopexit, %scalar.ph190
  %indvars.iv122 = phi i64 [ %indvars.iv.next123.1, %scalar.ph190 ], [ %indvars.iv122.unr, %scalar.ph190.prol.loopexit ] ; 5 uses
  %.07098 = phi ptr [ %i.ca, %scalar.ph190 ], [ %.07098.unr, %scalar.ph190.prol.loopexit ] ; 7 uses
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %indvars.iv122
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !54
  %i.bl = getelementptr inbounds nuw i8, ptr %.07098, i64 2
  store i16 %i.bk, ptr %.07098, align 2, !tbaa !54
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %indvars.iv122
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !54
  %i.bo = getelementptr inbounds nuw i8, ptr %.07098, i64 4
  store i16 %i.bn, ptr %i.bl, align 2, !tbaa !54
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %indvars.iv122
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !54
  %i.br = getelementptr inbounds nuw i8, ptr %.07098, i64 6
  store i16 %i.bq, ptr %i.bo, align 2, !tbaa !54
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 3 uses
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %indvars.iv.next123
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !54
  %i.bu = getelementptr inbounds nuw i8, ptr %.07098, i64 8
  store i16 %i.bt, ptr %i.br, align 2, !tbaa !54
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %indvars.iv.next123
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !54
  %i.bx = getelementptr inbounds nuw i8, ptr %.07098, i64 10
  store i16 %i.bw, ptr %i.bu, align 2, !tbaa !54
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %indvars.iv.next123
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !54
  %i.ca = getelementptr inbounds nuw i8, ptr %.07098, i64 12
  store i16 %i.bz, ptr %i.bx, align 2, !tbaa !54
  %indvars.iv.next123.1 = add nuw nsw i64 %indvars.iv122, 2 ; 2 uses
  %exitcond126.not.1 = icmp eq i64 %indvars.iv.next123.1, %wide.trip.count125
  br i1 %exitcond126.not.1, label %..loopexit87_crit_edge, label %scalar.ph190, !llvm.loop !129

..loopexit90_crit_edge:                           ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.cb = add nsw i32 %.in, -1
  %i.cc = add i32 %.18095, 1
  %i.cd = getelementptr inbounds nuw i8, ptr %.17796, i64 8
  %i.ce = icmp sgt i32 %.in, 1
  br i1 %i.ce, label %.lr.ph, label %.loopexit, !llvm.loop !130

.lr.ph:                                           ; preds = %.lr.ph.preheader, %..loopexit90_crit_edge
  %.in = phi i32 [ %i.cb, %..loopexit90_crit_edge ], [ %4, %.lr.ph.preheader ] ; 2 uses
  %.17796 = phi ptr [ %i.cd, %..loopexit90_crit_edge ], [ %3, %.lr.ph.preheader ] ; 2 uses
  %.18095 = phi i32 [ %i.cc, %..loopexit90_crit_edge ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %i.cf = zext i32 %.18095 to i64                 ; 4 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.cf
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !56 ; 6 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.cf
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !56 ; 6 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.cf
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !56 ; 6 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.cf
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !56 ; 6 uses
  %i.co = load ptr, ptr %.17796, align 8, !tbaa !56 ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.cp = getelementptr i8, ptr %i.co, i64 %i.n
  %i.cq = getelementptr i8, ptr %i.ch, i64 %i.m
  %i.cr = getelementptr i8, ptr %i.cj, i64 %i.m
  %i.cs = getelementptr i8, ptr %i.cl, i64 %i.m
  %i.ct = getelementptr i8, ptr %i.cn, i64 %i.m
  %i.cu = insertelement <4 x ptr> poison, ptr %i.co, i64 0
  %i.cv = shufflevector <4 x ptr> %i.cu, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cw = insertelement <4 x ptr> poison, ptr %i.cq, i64 0
  %i.cx = insertelement <4 x ptr> %i.cw, ptr %i.cr, i64 1
  %i.cy = insertelement <4 x ptr> %i.cx, ptr %i.cs, i64 2
  %i.cz = insertelement <4 x ptr> %i.cy, ptr %i.ct, i64 3
  %i.da = icmp ult <4 x ptr> %i.cv, %i.cz
  %i.db = insertelement <4 x ptr> poison, ptr %i.ch, i64 0
  %i.dc = insertelement <4 x ptr> %i.db, ptr %i.cj, i64 1
  %i.dd = insertelement <4 x ptr> %i.dc, ptr %i.cl, i64 2
  %i.de = insertelement <4 x ptr> %i.dd, ptr %i.cn, i64 3
  %i.df = insertelement <4 x ptr> poison, ptr %i.cp, i64 0
  %i.dg = shufflevector <4 x ptr> %i.df, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.dh = icmp ult <4 x ptr> %i.de, %i.dg
  %i.di = and <4 x i1> %i.da, %i.dh
  %i.dj = bitcast <4 x i1> %i.di to i4
  %.not = icmp eq i4 %i.dj, 0
  br i1 %.not, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %vector.memcheck
  %i.dk = getelementptr i8, ptr %i.co, i64 %i.o
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.dl = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.co, i64 %i.dl
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.ch, i64 %index
  %wide.load = load <8 x i16>, ptr %i.dm, align 2, !tbaa !54, !alias.scope !148
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.cj, i64 %index
  %wide.load171 = load <8 x i16>, ptr %i.dn, align 2, !tbaa !54, !alias.scope !149
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %index
  %wide.load172 = load <8 x i16>, ptr %i.do, align 2, !tbaa !54, !alias.scope !150
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %index
  %wide.load173 = load <8 x i16>, ptr %i.dp, align 2, !tbaa !54, !alias.scope !151
  %i.dq = shufflevector <8 x i16> %wide.load, <8 x i16> %wide.load171, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dr = shufflevector <8 x i16> %wide.load172, <8 x i16> %wide.load173, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x i16> %i.dq, <16 x i16> %i.dr, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x i16> %interleaved.vec, ptr %next.gep, align 2, !tbaa !54, !alias.scope !152, !noalias !153
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ds = icmp eq i64 %index.next, %n.vec
  br i1 %i.ds, label %middle.block, label %vector.body, !llvm.loop !137

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit90_crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 7 uses
  %.17193.ph = phi ptr [ %i.co, %vector.memcheck ], [ %i.co, %.lr.ph ], [ %i.dk, %middle.block ] ; 6 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.ch, i64 %indvars.iv.ph
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !54
  %i.dv = getelementptr inbounds nuw i8, ptr %.17193.ph, i64 2
  store i16 %i.du, ptr %.17193.ph, align 2, !tbaa !54
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.cj, i64 %indvars.iv.ph
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !54
  %i.dy = getelementptr inbounds nuw i8, ptr %.17193.ph, i64 4
  store i16 %i.dx, ptr %i.dv, align 2, !tbaa !54
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %indvars.iv.ph
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !54
  %i.eb = getelementptr inbounds nuw i8, ptr %.17193.ph, i64 6
  store i16 %i.ea, ptr %i.dy, align 2, !tbaa !54
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %indvars.iv.ph
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !54
  %i.ee = getelementptr inbounds nuw i8, ptr %.17193.ph, i64 8
  store i16 %i.ed, ptr %i.eb, align 2, !tbaa !54
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.17193.unr = phi ptr [ %.17193.ph, %scalar.ph.preheader ], [ %i.ee, %scalar.ph.prol ]
  %i.ef = icmp eq i64 %indvars.iv.ph, %i.p
  br i1 %i.ef, label %..loopexit90_crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %.17193 = phi ptr [ %i.fd, %scalar.ph ], [ %.17193.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %i.ch, i64 %indvars.iv
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !54
  %i.ei = getelementptr inbounds nuw i8, ptr %.17193, i64 2
  store i16 %i.eh, ptr %.17193, align 2, !tbaa !54
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %i.cj, i64 %indvars.iv
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !54
  %i.el = getelementptr inbounds nuw i8, ptr %.17193, i64 4
  store i16 %i.ek, ptr %i.ei, align 2, !tbaa !54
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %indvars.iv
  %i.en = load i16, ptr %i.em, align 2, !tbaa !54
  %i.eo = getelementptr inbounds nuw i8, ptr %.17193, i64 6
  store i16 %i.en, ptr %i.el, align 2, !tbaa !54
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %indvars.iv
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !54
  %i.er = getelementptr inbounds nuw i8, ptr %.17193, i64 8
  store i16 %i.eq, ptr %i.eo, align 2, !tbaa !54
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %i.ch, i64 %indvars.iv.next
  %i.et = load i16, ptr %i.es, align 2, !tbaa !54
  %i.eu = getelementptr inbounds nuw i8, ptr %.17193, i64 10
  store i16 %i.et, ptr %i.er, align 2, !tbaa !54
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %i.cj, i64 %indvars.iv.next
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !54
  %i.ex = getelementptr inbounds nuw i8, ptr %.17193, i64 12
  store i16 %i.ew, ptr %i.eu, align 2, !tbaa !54
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %indvars.iv.next
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !54
  %i.fa = getelementptr inbounds nuw i8, ptr %.17193, i64 14
  store i16 %i.ez, ptr %i.ex, align 2, !tbaa !54
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %indvars.iv.next
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !54
  %i.fd = getelementptr inbounds nuw i8, ptr %.17193, i64 16
  store i16 %i.fc, ptr %i.fa, align 2, !tbaa !54
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %..loopexit90_crit_edge, label %scalar.ph, !llvm.loop !138

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge109
  %.in118 = phi i32 [ %i.gh, %._crit_edge109 ], [ %4, %.preheader.preheader ] ; 2 uses
  %.278111 = phi ptr [ %i.gi, %._crit_edge109 ], [ %3, %.preheader.preheader ] ; 2 uses
  %.281110 = phi i32 [ %i.gj, %._crit_edge109 ], [ %2, %.preheader.preheader ] ; 2 uses
  %i.fe = zext i32 %.281110 to i64
  %i.ff = load ptr, ptr %.278111, align 8, !tbaa !56 ; 2 uses
  br label %.lr.ph106

.lr.ph106:                                        ; preds = %.preheader, %._crit_edge
  %indvars.iv132 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next133, %._crit_edge ] ; 7 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv132
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !51
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %i.fe
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !56 ; 5 uses
  br i1 %i.ac, label %.epil.preheader, label %.lr.ph106.new

.lr.ph106.new:                                    ; preds = %.lr.ph106, %.lr.ph106.new
  %indvars.iv127 = phi i64 [ %indvars.iv.next128.3, %.lr.ph106.new ], [ 0, %.lr.ph106 ] ; 5 uses
  %.272104 = phi ptr [ %i.gc, %.lr.ph106.new ], [ %i.ff, %.lr.ph106 ] ; 2 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph106.new ], [ 0, %.lr.ph106 ]
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %i.fj, i64 %indvars.iv127
  %i.fl = load i16, ptr %i.fk, align 2, !tbaa !54
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %.272104, i64 %indvars.iv132
  store i16 %i.fl, ptr %i.fm, align 2, !tbaa !54
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %.272104, i64 %i.aa ; 2 uses
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %i.fj, i64 %indvars.iv127
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 2
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !54
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr %i.fn, i64 %indvars.iv132
  store i16 %i.fq, ptr %i.fr, align 2, !tbaa !54
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %i.fn, i64 %i.aa ; 2 uses
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %i.fj, i64 %indvars.iv127
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  %i.fv = load i16, ptr %i.fu, align 2, !tbaa !54
  %i.fw = getelementptr inbounds nuw [2 x i8], ptr %i.fs, i64 %indvars.iv132
  store i16 %i.fv, ptr %i.fw, align 2, !tbaa !54
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %i.fs, i64 %i.aa ; 2 uses
  %i.fy = getelementptr inbounds nuw [2 x i8], ptr %i.fj, i64 %indvars.iv127
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 6
  %i.ga = load i16, ptr %i.fz, align 2, !tbaa !54
  %i.gb = getelementptr inbounds nuw [2 x i8], ptr %i.fx, i64 %indvars.iv132
  store i16 %i.ga, ptr %i.gb, align 2, !tbaa !54
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %i.fx, i64 %i.aa ; 2 uses
  %indvars.iv.next128.3 = add nuw nsw i64 %indvars.iv127, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph106.new, !llvm.loop !139

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph106.new
  br i1 %lcmp.mod223.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph106
  %indvars.iv127.epil.init = phi i64 [ 0, %.lr.ph106 ], [ %indvars.iv.next128.3, %._crit_edge.unr-lcssa ]
  %.272104.epil.init = phi ptr [ %i.ff, %.lr.ph106 ], [ %i.gc, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod224)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv127.epil = phi i64 [ %indvars.iv127.epil.init, %.epil.preheader ], [ %indvars.iv.next128.epil, %bb.b ] ; 2 uses
  %.272104.epil = phi ptr [ %.272104.epil.init, %.epil.preheader ], [ %i.gg, %bb.b ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %i.fj, i64 %indvars.iv127.epil
  %i.ge = load i16, ptr %i.gd, align 2, !tbaa !54
  %i.gf = getelementptr inbounds nuw [2 x i8], ptr %.272104.epil, i64 %indvars.iv132
  store i16 %i.ge, ptr %i.gf, align 2, !tbaa !54
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %.272104.epil, i64 %i.aa
  %indvars.iv.next128.epil = add nuw nsw i64 %indvars.iv127.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter222
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !140

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.unr-lcssa
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1 ; 2 uses
  %exitcond136.not = icmp eq i64 %indvars.iv.next133, %wide.trip.count135
  br i1 %exitcond136.not, label %._crit_edge109, label %.lr.ph106, !llvm.loop !141

._crit_edge109:                                   ; preds = %._crit_edge
  %i.gh = add nsw i32 %.in118, -1
  %i.gi = getelementptr inbounds nuw i8, ptr %.278111, i64 8
  %i.gj = add i32 %.281110, 1
  %i.gk = icmp sgt i32 %.in118, 1
  br i1 %i.gk, label %.preheader, label %.loopexit, !llvm.loop !142

.loopexit:                                        ; preds = %..loopexit90_crit_edge, %..loopexit87_crit_edge, %._crit_edge109, %.preheader.lr.ph, %.preheader91, %.lr.ph97, %.preheader88, %.lr.ph103, %.preheader86
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @rgb_extrgb_convert(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load i32, ptr %i.a, align 8, !tbaa !52   ; 3 uses
  %i.c = icmp sgt i32 %4, 0
  br i1 %i.c, label %.lr.ph31, label %._crit_edge.split

.lr.ph31:                                         ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph31
  %wide.trip.count = zext i32 %i.b to i64         ; 7 uses
  %i.i = shl nuw nsw i64 %wide.trip.count, 1      ; 3 uses
  %i.j = mul nuw nsw i64 %wide.trip.count, 6
  %min.iters.check = icmp ult i32 %i.b, 8
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 4 uses
  %i.k = mul nuw nsw i64 %n.vec, 6
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.l = add nsw i64 %wide.trip.count, -1
  br label %.lr.ph

..loopexit_crit_edge:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.m = add nsw i32 %.in, -1
  %i.n = add i32 %.02529, 1
  %i.o = getelementptr inbounds nuw i8, ptr %.02430, i64 8
  %i.p = icmp sgt i32 %.in, 1
  br i1 %i.p, label %.lr.ph, label %._crit_edge.split, !llvm.loop !154

.lr.ph:                                           ; preds = %.lr.ph.preheader, %..loopexit_crit_edge
  %.in = phi i32 [ %i.m, %..loopexit_crit_edge ], [ %4, %.lr.ph.preheader ] ; 2 uses
  %.02430 = phi ptr [ %i.o, %..loopexit_crit_edge ], [ %3, %.lr.ph.preheader ] ; 2 uses
  %.02529 = phi i32 [ %i.n, %..loopexit_crit_edge ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %i.q = zext i32 %.02529 to i64                  ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !56   ; 6 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.q
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !56   ; 6 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.q
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !56   ; 6 uses
  %i.x = load ptr, ptr %.02430, align 8, !tbaa !56 ; 8 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.y = getelementptr i8, ptr %i.x, i64 %i.j     ; 3 uses
  %i.z = getelementptr i8, ptr %i.s, i64 %i.i
  %bound0 = icmp ult ptr %i.x, %i.z
  %bound0.a = icmp ult ptr %i.s, %i.y
  %found.conflict = and i1 %bound0, %bound0.a
  %5 = getelementptr i8, ptr %i.u, i64 %i.i
  %bound044 = icmp ult ptr %i.x, %5
  %bound145 = icmp ult ptr %i.u, %i.y
  %found.conflict46 = and i1 %bound044, %bound145
  %conflict.rdx = or i1 %found.conflict, %found.conflict46
  %6 = getelementptr i8, ptr %i.w, i64 %i.i
  %bound047 = icmp ult ptr %i.x, %6
  %bound148 = icmp ult ptr %i.w, %i.y
  %found.conflict49 = and i1 %bound047, %bound148
  %conflict.rdx50 = or i1 %conflict.rdx, %found.conflict49
  br i1 %conflict.rdx50, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.aa = getelementptr i8, ptr %i.x, i64 %i.k
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.ab = mul i64 %index, 6
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.ab
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %index
  %wide.load = load <8 x i16>, ptr %i.ac, align 2, !tbaa !54, !alias.scope !162
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %index
  %wide.load51 = load <8 x i16>, ptr %i.ad, align 2, !tbaa !54, !alias.scope !163
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %index
  %wide.load52 = load <8 x i16>, ptr %i.ae, align 2, !tbaa !54, !alias.scope !164
  %i.af = shufflevector <8 x i16> %wide.load, <8 x i16> %wide.load51, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ag = shufflevector <8 x i16> %wide.load52, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <16 x i16> %i.af, <16 x i16> %i.ag, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x i16> %interleaved.vec, ptr %next.gep, align 2, !tbaa !54, !alias.scope !165, !noalias !166
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !160

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 6 uses
  %.02227.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph ], [ %i.aa, %middle.block ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv.ph
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !54
  store i16 %i.aj, ptr %.02227.ph, align 2, !tbaa !54
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %indvars.iv.ph
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !54
  %i.am = getelementptr inbounds nuw i8, ptr %.02227.ph, i64 2
  store i16 %i.al, ptr %i.am, align 2, !tbaa !54
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %indvars.iv.ph
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !54
  %i.ap = getelementptr inbounds nuw i8, ptr %.02227.ph, i64 4
  store i16 %i.ao, ptr %i.ap, align 2, !tbaa !54
  %i.aq = getelementptr inbounds nuw i8, ptr %.02227.ph, i64 6
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.02227.unr = phi ptr [ %.02227.ph, %scalar.ph.preheader ], [ %i.aq, %scalar.ph.prol ]
  %i.ar = icmp eq i64 %indvars.iv.ph, %i.l
  br i1 %i.ar, label %..loopexit_crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.02227 = phi ptr [ %i.bj, %scalar.ph ], [ %.02227.unr, %scalar.ph.prol.loopexit ] ; 7 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv
  %i.at = load i16, ptr %i.as, align 2, !tbaa !54
  store i16 %i.at, ptr %.02227, align 2, !tbaa !54
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %indvars.iv
  %i.av = load i16, ptr %i.au, align 2, !tbaa !54
  %i.aw = getelementptr inbounds nuw i8, ptr %.02227, i64 2
  store i16 %i.av, ptr %i.aw, align 2, !tbaa !54
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %indvars.iv
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !54
  %i.az = getelementptr inbounds nuw i8, ptr %.02227, i64 4
  store i16 %i.ay, ptr %i.az, align 2, !tbaa !54
  %i.ba = getelementptr inbounds nuw i8, ptr %.02227, i64 6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv.next
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !54
  store i16 %i.bc, ptr %i.ba, align 2, !tbaa !54
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %indvars.iv.next
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !54
  %i.bf = getelementptr inbounds nuw i8, ptr %.02227, i64 8
  store i16 %i.be, ptr %i.bf, align 2, !tbaa !54
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %indvars.iv.next
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !54
  %i.bi = getelementptr inbounds nuw i8, ptr %.02227, i64 10
  store i16 %i.bh, ptr %i.bi, align 2, !tbaa !54
  %i.bj = getelementptr inbounds nuw i8, ptr %.02227, i64 12
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %..loopexit_crit_edge, label %scalar.ph, !llvm.loop !161

._crit_edge.split:                                ; preds = %..loopexit_crit_edge, %.lr.ph31, %bb.a
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @rgb_extrgbx_convert(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load i32, ptr %i.a, align 8, !tbaa !52   ; 4 uses
  %i.c = icmp sgt i32 %4, 0
  br i1 %i.c, label %.lr.ph32, label %._crit_edge.split

.lr.ph32:                                         ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph32
  %wide.trip.count = zext i32 %i.b to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.i = icmp eq i32 %i.b, 1
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod35 = trunc i32 %i.b to i1
  br label %.lr.ph

..loopexit_crit_edge.unr-lcssa:                   ; preds = %.lr.ph.new
  br i1 %lcmp.mod.not, label %..loopexit_crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %..loopexit_crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %..loopexit_crit_edge.unr-lcssa ] ; 3 uses
  %.02328.epil.init = phi ptr [ %i.ad, %.lr.ph ], [ %i.ax, %..loopexit_crit_edge.unr-lcssa ] ; 4 uses
  tail call void @llvm.assume(i1 %lcmp.mod35)
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %indvars.iv.epil.init
  %i.k = load i16, ptr %i.j, align 2, !tbaa !54
  store i16 %i.k, ptr %.02328.epil.init, align 2, !tbaa !54
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %indvars.iv.epil.init
  %i.m = load i16, ptr %i.l, align 2, !tbaa !54
  %i.n = getelementptr inbounds nuw i8, ptr %.02328.epil.init, i64 2
  store i16 %i.m, ptr %i.n, align 2, !tbaa !54
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %indvars.iv.epil.init
  %i.p = load i16, ptr %i.o, align 2, !tbaa !54
  %i.q = getelementptr inbounds nuw i8, ptr %.02328.epil.init, i64 4
  store i16 %i.p, ptr %i.q, align 2, !tbaa !54
  %i.r = getelementptr inbounds nuw i8, ptr %.02328.epil.init, i64 6
  store i16 4095, ptr %i.r, align 2, !tbaa !54
  br label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %..loopexit_crit_edge.unr-lcssa, %.epil.preheader
  %i.s = add nsw i32 %.in, -1
  %i.t = add i32 %.02630, 1
  %i.u = getelementptr inbounds nuw i8, ptr %.02531, i64 8
  %i.v = icmp sgt i32 %.in, 1
  br i1 %i.v, label %.lr.ph, label %._crit_edge.split, !llvm.loop !167

.lr.ph:                                           ; preds = %.lr.ph.preheader, %..loopexit_crit_edge
  %.in = phi i32 [ %i.s, %..loopexit_crit_edge ], [ %4, %.lr.ph.preheader ] ; 2 uses
  %.02531 = phi ptr [ %i.u, %..loopexit_crit_edge ], [ %3, %.lr.ph.preheader ] ; 2 uses
  %.02630 = phi i32 [ %i.t, %..loopexit_crit_edge ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %i.w = zext i32 %.02630 to i64                  ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !56   ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.w
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !56  ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.w
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !56 ; 3 uses
  %i.ad = load ptr, ptr %.02531, align 8, !tbaa !56 ; 2 uses
  br i1 %i.i, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ 0, %.lr.ph ] ; 5 uses
  %.02328 = phi ptr [ %i.ax, %.lr.ph.new ], [ %i.ad, %.lr.ph ] ; 9 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.new ], [ 0, %.lr.ph ]
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %indvars.iv
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !54
  store i16 %i.af, ptr %.02328, align 2, !tbaa !54
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %indvars.iv
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !54
  %i.ai = getelementptr inbounds nuw i8, ptr %.02328, i64 2
  store i16 %i.ah, ptr %i.ai, align 2, !tbaa !54
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %indvars.iv
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !54
  %i.al = getelementptr inbounds nuw i8, ptr %.02328, i64 4
  store i16 %i.ak, ptr %i.al, align 2, !tbaa !54
  %i.am = getelementptr inbounds nuw i8, ptr %.02328, i64 6
  store i16 4095, ptr %i.am, align 2, !tbaa !54
  %i.an = getelementptr inbounds nuw i8, ptr %.02328, i64 8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %indvars.iv.next
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !54
  store i16 %i.ap, ptr %i.an, align 2, !tbaa !54
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %indvars.iv.next
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !54
  %i.as = getelementptr inbounds nuw i8, ptr %.02328, i64 10
  store i16 %i.ar, ptr %i.as, align 2, !tbaa !54
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %indvars.iv.next
  %i.au = load i16, ptr %i.at, align 2, !tbaa !54
  %i.av = getelementptr inbounds nuw i8, ptr %.02328, i64 12
  store i16 %i.au, ptr %i.av, align 2, !tbaa !54
  %i.aw = getelementptr inbounds nuw i8, ptr %.02328, i64 14
  store i16 4095, ptr %i.aw, align 2, !tbaa !54
  %i.ax = getelementptr inbounds nuw i8, ptr %.02328, i64 16 ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..loopexit_crit_edge.unr-lcssa, label %.lr.ph.new, !llvm.loop !168

._crit_edge.split:                                ; preds = %..loopexit_crit_edge, %.lr.ph32, %bb.a
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @rgb_extbgr_convert(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load i32, ptr %i.a, align 8, !tbaa !52   ; 3 uses
  %i.c = icmp sgt i32 %4, 0
  br i1 %i.c, label %.lr.ph31, label %._crit_edge.split

.lr.ph31:                                         ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph31
  %wide.trip.count = zext i32 %i.b to i64         ; 7 uses
  %i.i = shl nuw nsw i64 %wide.trip.count, 1      ; 3 uses
  %i.j = mul nuw nsw i64 %wide.trip.count, 6
  %min.iters.check = icmp ult i32 %i.b, 8
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 4 uses
  %i.k = mul nuw nsw i64 %n.vec, 6
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.l = add nsw i64 %wide.trip.count, -1
  br label %.lr.ph

..loopexit_crit_edge:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.m = add nsw i32 %.in, -1
  %i.n = add i32 %.02529, 1
  %i.o = getelementptr inbounds nuw i8, ptr %.02430, i64 8
  %i.p = icmp sgt i32 %.in, 1
  br i1 %i.p, label %.lr.ph, label %._crit_edge.split, !llvm.loop !169

.lr.ph:                                           ; preds = %.lr.ph.preheader, %..loopexit_crit_edge
  %.in = phi i32 [ %i.m, %..loopexit_crit_edge ], [ %4, %.lr.ph.preheader ] ; 2 uses
  %.02430 = phi ptr [ %i.o, %..loopexit_crit_edge ], [ %3, %.lr.ph.preheader ] ; 2 uses
  %.02529 = phi i32 [ %i.n, %..loopexit_crit_edge ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %i.q = zext i32 %.02529 to i64                  ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !56   ; 6 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.q
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !56   ; 6 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.q
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !56   ; 6 uses
  %i.x = load ptr, ptr %.02430, align 8, !tbaa !56 ; 8 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.y = getelementptr i8, ptr %i.x, i64 %i.j     ; 3 uses
  %i.z = getelementptr i8, ptr %i.s, i64 %i.i
  %bound0 = icmp ult ptr %i.x, %i.z
  %bound0.a = icmp ult ptr %i.s, %i.y
  %found.conflict = and i1 %bound0, %bound0.a
  %5 = getelementptr i8, ptr %i.u, i64 %i.i
  %bound044 = icmp ult ptr %i.x, %5
  %bound145 = icmp ult ptr %i.u, %i.y
  %found.conflict46 = and i1 %bound044, %bound145
  %conflict.rdx = or i1 %found.conflict, %found.conflict46
  %6 = getelementptr i8, ptr %i.w, i64 %i.i
  %bound047 = icmp ult ptr %i.x, %6
  %bound148 = icmp ult ptr %i.w, %i.y
  %found.conflict49 = and i1 %bound047, %bound148
  %conflict.rdx50 = or i1 %conflict.rdx, %found.conflict49
  br i1 %conflict.rdx50, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.aa = getelementptr i8, ptr %i.x, i64 %i.k
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.ab = mul i64 %index, 6
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.ab
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %index
  %wide.load = load <8 x i16>, ptr %i.ac, align 2, !tbaa !54, !alias.scope !177
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %index
  %wide.load51 = load <8 x i16>, ptr %i.ad, align 2, !tbaa !54, !alias.scope !178
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %index
  %wide.load52 = load <8 x i16>, ptr %i.ae, align 2, !tbaa !54, !alias.scope !179
  %i.af = shufflevector <8 x i16> %wide.load52, <8 x i16> %wide.load51, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ag = shufflevector <8 x i16> %wide.load, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <16 x i16> %i.af, <16 x i16> %i.ag, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x i16> %interleaved.vec, ptr %next.gep, align 2, !tbaa !54, !alias.scope !180, !noalias !181
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !175

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 6 uses
  %.02227.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph ], [ %i.aa, %middle.block ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv.ph
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !54
  %i.ak = getelementptr inbounds nuw i8, ptr %.02227.ph, i64 4
  store i16 %i.aj, ptr %i.ak, align 2, !tbaa !54
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %indvars.iv.ph
  %i.am = load i16, ptr %i.al, align 2, !tbaa !54
  %i.an = getelementptr inbounds nuw i8, ptr %.02227.ph, i64 2
  store i16 %i.am, ptr %i.an, align 2, !tbaa !54
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %indvars.iv.ph
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !54
  store i16 %i.ap, ptr %.02227.ph, align 2, !tbaa !54
  %i.aq = getelementptr inbounds nuw i8, ptr %.02227.ph, i64 6
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.02227.unr = phi ptr [ %.02227.ph, %scalar.ph.preheader ], [ %i.aq, %scalar.ph.prol ]
  %i.ar = icmp eq i64 %indvars.iv.ph, %i.l
  br i1 %i.ar, label %..loopexit_crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.02227 = phi ptr [ %i.bj, %scalar.ph ], [ %.02227.unr, %scalar.ph.prol.loopexit ] ; 7 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv
  %i.at = load i16, ptr %i.as, align 2, !tbaa !54
  %i.au = getelementptr inbounds nuw i8, ptr %.02227, i64 4
  store i16 %i.at, ptr %i.au, align 2, !tbaa !54
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %indvars.iv
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !54
  %i.ax = getelementptr inbounds nuw i8, ptr %.02227, i64 2
  store i16 %i.aw, ptr %i.ax, align 2, !tbaa !54
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %indvars.iv
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !54
  store i16 %i.az, ptr %.02227, align 2, !tbaa !54
  %i.ba = getelementptr inbounds nuw i8, ptr %.02227, i64 6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv.next
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !54
  %i.bd = getelementptr inbounds nuw i8, ptr %.02227, i64 10
  store i16 %i.bc, ptr %i.bd, align 2, !tbaa !54
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %indvars.iv.next
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !54
  %i.bg = getelementptr inbounds nuw i8, ptr %.02227, i64 8
  store i16 %i.bf, ptr %i.bg, align 2, !tbaa !54
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %indvars.iv.next
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !54
  store i16 %i.bi, ptr %i.ba, align 2, !tbaa !54
  %i.bj = getelementptr inbounds nuw i8, ptr %.02227, i64 12
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %..loopexit_crit_edge, label %scalar.ph, !llvm.loop !176

._crit_edge.split:                                ; preds = %..loopexit_crit_edge, %.lr.ph31, %bb.a
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @rgb_extbgrx_convert(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load i32, ptr %i.a, align 8, !tbaa !52   ; 4 uses
  %i.c = icmp sgt i32 %4, 0
  br i1 %i.c, label %.lr.ph32, label %._crit_edge.split

.lr.ph32:                                         ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph32
  %wide.trip.count = zext i32 %i.b to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.i = icmp eq i32 %i.b, 1
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod35 = trunc i32 %i.b to i1
  br label %.lr.ph

..loopexit_crit_edge.unr-lcssa:                   ; preds = %.lr.ph.new
  br i1 %lcmp.mod.not, label %..loopexit_crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %..loopexit_crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %..loopexit_crit_edge.unr-lcssa ] ; 3 uses
  %.02328.epil.init = phi ptr [ %i.ad, %.lr.ph ], [ %i.ax, %..loopexit_crit_edge.unr-lcssa ] ; 4 uses
  tail call void @llvm.assume(i1 %lcmp.mod35)
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %indvars.iv.epil.init
  %i.k = load i16, ptr %i.j, align 2, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %.02328.epil.init, i64 4
  store i16 %i.k, ptr %i.l, align 2, !tbaa !54
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %indvars.iv.epil.init
  %i.n = load i16, ptr %i.m, align 2, !tbaa !54
  %i.o = getelementptr inbounds nuw i8, ptr %.02328.epil.init, i64 2
  store i16 %i.n, ptr %i.o, align 2, !tbaa !54
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %indvars.iv.epil.init
  %i.q = load i16, ptr %i.p, align 2, !tbaa !54
  store i16 %i.q, ptr %.02328.epil.init, align 2, !tbaa !54
  %i.r = getelementptr inbounds nuw i8, ptr %.02328.epil.init, i64 6
  store i16 4095, ptr %i.r, align 2, !tbaa !54
  br label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %..loopexit_crit_edge.unr-lcssa, %.epil.preheader
  %i.s = add nsw i32 %.in, -1
  %i.t = add i32 %.02630, 1
  %i.u = getelementptr inbounds nuw i8, ptr %.02531, i64 8
  %i.v = icmp sgt i32 %.in, 1
  br i1 %i.v, label %.lr.ph, label %._crit_edge.split, !llvm.loop !182

.lr.ph:                                           ; preds = %.lr.ph.preheader, %..loopexit_crit_edge
  %.in = phi i32 [ %i.s, %..loopexit_crit_edge ], [ %4, %.lr.ph.preheader ] ; 2 uses
  %.02531 = phi ptr [ %i.u, %..loopexit_crit_edge ], [ %3, %.lr.ph.preheader ] ; 2 uses
  %.02630 = phi i32 [ %i.t, %..loopexit_crit_edge ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %i.w = zext i32 %.02630 to i64                  ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !56   ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.w
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !56  ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.w
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !56 ; 3 uses
  %i.ad = load ptr, ptr %.02531, align 8, !tbaa !56 ; 2 uses
  br i1 %i.i, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ 0, %.lr.ph ] ; 5 uses
  %.02328 = phi ptr [ %i.ax, %.lr.ph.new ], [ %i.ad, %.lr.ph ] ; 9 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.new ], [ 0, %.lr.ph ]
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %indvars.iv
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !54
  %i.ag = getelementptr inbounds nuw i8, ptr %.02328, i64 4
  store i16 %i.af, ptr %i.ag, align 2, !tbaa !54
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %indvars.iv
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !54
  %i.aj = getelementptr inbounds nuw i8, ptr %.02328, i64 2
  store i16 %i.ai, ptr %i.aj, align 2, !tbaa !54
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %indvars.iv
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !54
  store i16 %i.al, ptr %.02328, align 2, !tbaa !54
  %i.am = getelementptr inbounds nuw i8, ptr %.02328, i64 6
  store i16 4095, ptr %i.am, align 2, !tbaa !54
  %i.an = getelementptr inbounds nuw i8, ptr %.02328, i64 8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %indvars.iv.next
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !54
  %i.aq = getelementptr inbounds nuw i8, ptr %.02328, i64 12
  store i16 %i.ap, ptr %i.aq, align 2, !tbaa !54
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %indvars.iv.next
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !54
  %i.at = getelementptr inbounds nuw i8, ptr %.02328, i64 10
  store i16 %i.as, ptr %i.at, align 2, !tbaa !54
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %indvars.iv.next
  %i.av = load i16, ptr %i.au, align 2, !tbaa !54
  store i16 %i.av, ptr %i.an, align 2, !tbaa !54
  %i.aw = getelementptr inbounds nuw i8, ptr %.02328, i64 14
  store i16 4095, ptr %i.aw, align 2, !tbaa !54
  %i.ax = getelementptr inbounds nuw i8, ptr %.02328, i64 16 ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..loopexit_crit_edge.unr-lcssa, label %.lr.ph.new, !llvm.loop !183
end_hunk_0
begin_hunk_1_@rgb_extxbgr_convert:bb.a
  store i16 %i.af, ptr %i.ag, align 2, !tbaa !54
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %indvars.iv
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !54
  %i.aj = getelementptr inbounds nuw i8, ptr %.02328, i64 4
  store i16 %i.ai, ptr %i.aj, align 2, !tbaa !54
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %indvars.iv
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !54
  %i.am = getelementptr inbounds nuw i8, ptr %.02328, i64 2
  store i16 %i.al, ptr %i.am, align 2, !tbaa !54
  store i16 4095, ptr %.02328, align 2, !tbaa !54
  %i.an = getelementptr inbounds nuw i8, ptr %.02328, i64 8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %indvars.iv.next
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !54
  %i.aq = getelementptr inbounds nuw i8, ptr %.02328, i64 14
  store i16 %i.ap, ptr %i.aq, align 2, !tbaa !54
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %indvars.iv.next
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !54
  %i.at = getelementptr inbounds nuw i8, ptr %.02328, i64 12
  store i16 %i.as, ptr %i.at, align 2, !tbaa !54
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %indvars.iv.next
  %i.av = load i16, ptr %i.au, align 2, !tbaa !54
  %i.aw = getelementptr inbounds nuw i8, ptr %.02328, i64 10
  store i16 %i.av, ptr %i.aw, align 2, !tbaa !54
  store i16 4095, ptr %i.an, align 2, !tbaa !54
  %i.ax = getelementptr inbounds nuw i8, ptr %.02328, i64 16 ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..loopexit_crit_edge.unr-lcssa, label %.lr.ph.new, !llvm.loop !185

._crit_edge.split:                                ; preds = %..loopexit_crit_edge, %.lr.ph32, %bb.a
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @rgb_extxrgb_convert(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load i32, ptr %i.a, align 8, !tbaa !52   ; 4 uses
  %i.c = icmp sgt i32 %4, 0
  br i1 %i.c, label %.lr.ph32, label %._crit_edge.split

.lr.ph32:                                         ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph32
  %wide.trip.count = zext i32 %i.b to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.i = icmp eq i32 %i.b, 1
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod35 = trunc i32 %i.b to i1
  br label %.lr.ph

..loopexit_crit_edge.unr-lcssa:                   ; preds = %.lr.ph.new
  br i1 %lcmp.mod.not, label %..loopexit_crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %..loopexit_crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %..loopexit_crit_edge.unr-lcssa ] ; 3 uses
  %.02328.epil.init = phi ptr [ %i.ad, %.lr.ph ], [ %i.ax, %..loopexit_crit_edge.unr-lcssa ] ; 4 uses
  tail call void @llvm.assume(i1 %lcmp.mod35)
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %indvars.iv.epil.init
  %i.k = load i16, ptr %i.j, align 2, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %.02328.epil.init, i64 2
  store i16 %i.k, ptr %i.l, align 2, !tbaa !54
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %indvars.iv.epil.init
  %i.n = load i16, ptr %i.m, align 2, !tbaa !54
  %i.o = getelementptr inbounds nuw i8, ptr %.02328.epil.init, i64 4
  store i16 %i.n, ptr %i.o, align 2, !tbaa !54
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %indvars.iv.epil.init
  %i.q = load i16, ptr %i.p, align 2, !tbaa !54
  %i.r = getelementptr inbounds nuw i8, ptr %.02328.epil.init, i64 6
  store i16 %i.q, ptr %i.r, align 2, !tbaa !54
  store i16 4095, ptr %.02328.epil.init, align 2, !tbaa !54
  br label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %..loopexit_crit_edge.unr-lcssa, %.epil.preheader
  %i.s = add nsw i32 %.in, -1
  %i.t = add i32 %.02630, 1
  %i.u = getelementptr inbounds nuw i8, ptr %.02531, i64 8
  %i.v = icmp sgt i32 %.in, 1
  br i1 %i.v, label %.lr.ph, label %._crit_edge.split, !llvm.loop !186

.lr.ph:                                           ; preds = %.lr.ph.preheader, %..loopexit_crit_edge
  %.in = phi i32 [ %i.s, %..loopexit_crit_edge ], [ %4, %.lr.ph.preheader ] ; 2 uses
  %.02531 = phi ptr [ %i.u, %..loopexit_crit_edge ], [ %3, %.lr.ph.preheader ] ; 2 uses
  %.02630 = phi i32 [ %i.t, %..loopexit_crit_edge ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %i.w = zext i32 %.02630 to i64                  ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !56   ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.w
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !56  ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.w
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !56 ; 3 uses
  %i.ad = load ptr, ptr %.02531, align 8, !tbaa !56 ; 2 uses
  br i1 %i.i, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ 0, %.lr.ph ] ; 5 uses
  %.02328 = phi ptr [ %i.ax, %.lr.ph.new ], [ %i.ad, %.lr.ph ] ; 9 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.new ], [ 0, %.lr.ph ]
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %indvars.iv
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !54
  %i.ag = getelementptr inbounds nuw i8, ptr %.02328, i64 2
  store i16 %i.af, ptr %i.ag, align 2, !tbaa !54
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %indvars.iv
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !54
  %i.aj = getelementptr inbounds nuw i8, ptr %.02328, i64 4
  store i16 %i.ai, ptr %i.aj, align 2, !tbaa !54
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %indvars.iv
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !54
  %i.am = getelementptr inbounds nuw i8, ptr %.02328, i64 6
  store i16 %i.al, ptr %i.am, align 2, !tbaa !54
  store i16 4095, ptr %.02328, align 2, !tbaa !54
  %i.an = getelementptr inbounds nuw i8, ptr %.02328, i64 8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %indvars.iv.next
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !54
  %i.aq = getelementptr inbounds nuw i8, ptr %.02328, i64 10
  store i16 %i.ap, ptr %i.aq, align 2, !tbaa !54
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %indvars.iv.next
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !54
  %i.at = getelementptr inbounds nuw i8, ptr %.02328, i64 12
  store i16 %i.as, ptr %i.at, align 2, !tbaa !54
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %indvars.iv.next
  %i.av = load i16, ptr %i.au, align 2, !tbaa !54
  %i.aw = getelementptr inbounds nuw i8, ptr %.02328, i64 14
  store i16 %i.av, ptr %i.aw, align 2, !tbaa !54
  store i16 4095, ptr %i.an, align 2, !tbaa !54
  %i.ax = getelementptr inbounds nuw i8, ptr %.02328, i64 16 ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..loopexit_crit_edge.unr-lcssa, label %.lr.ph.new, !llvm.loop !187

._crit_edge.split:                                ; preds = %..loopexit_crit_edge, %.lr.ph32, %bb.a
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @rgb_rgb_convert(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load i32, ptr %i.a, align 8, !tbaa !52   ; 3 uses
  %i.c = icmp sgt i32 %4, 0
  br i1 %i.c, label %.lr.ph31, label %._crit_edge.split

.lr.ph31:                                         ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph31
  %wide.trip.count = zext i32 %i.b to i64         ; 7 uses
  %i.i = shl nuw nsw i64 %wide.trip.count, 1      ; 3 uses
  %i.j = mul nuw nsw i64 %wide.trip.count, 6
  %min.iters.check = icmp ult i32 %i.b, 8
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 4 uses
  %i.k = mul nuw nsw i64 %n.vec, 6
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.l = add nsw i64 %wide.trip.count, -1
  br label %.lr.ph

..loopexit_crit_edge:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.m = add nsw i32 %.in, -1
  %i.n = add i32 %.02529, 1
  %i.o = getelementptr inbounds nuw i8, ptr %.02430, i64 8
  %i.p = icmp sgt i32 %.in, 1
  br i1 %i.p, label %.lr.ph, label %._crit_edge.split, !llvm.loop !188

.lr.ph:                                           ; preds = %.lr.ph.preheader, %..loopexit_crit_edge
  %.in = phi i32 [ %i.m, %..loopexit_crit_edge ], [ %4, %.lr.ph.preheader ] ; 2 uses
  %.02430 = phi ptr [ %i.o, %..loopexit_crit_edge ], [ %3, %.lr.ph.preheader ] ; 2 uses
  %.02529 = phi i32 [ %i.n, %..loopexit_crit_edge ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %i.q = zext i32 %.02529 to i64                  ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !56   ; 6 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.q
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !56   ; 6 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.q
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !56   ; 6 uses
  %i.x = load ptr, ptr %.02430, align 8, !tbaa !56 ; 8 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.y = getelementptr i8, ptr %i.x, i64 %i.j     ; 3 uses
  %i.z = getelementptr i8, ptr %i.s, i64 %i.i
  %bound0 = icmp ult ptr %i.x, %i.z
  %bound0.a = icmp ult ptr %i.s, %i.y
  %found.conflict = and i1 %bound0, %bound0.a
  %5 = getelementptr i8, ptr %i.u, i64 %i.i
  %bound044 = icmp ult ptr %i.x, %5
  %bound145 = icmp ult ptr %i.u, %i.y
  %found.conflict46 = and i1 %bound044, %bound145
  %conflict.rdx = or i1 %found.conflict, %found.conflict46
  %6 = getelementptr i8, ptr %i.w, i64 %i.i
  %bound047 = icmp ult ptr %i.x, %6
  %bound148 = icmp ult ptr %i.w, %i.y
  %found.conflict49 = and i1 %bound047, %bound148
  %conflict.rdx50 = or i1 %conflict.rdx, %found.conflict49
  br i1 %conflict.rdx50, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.aa = getelementptr i8, ptr %i.x, i64 %i.k
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.ab = mul i64 %index, 6
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.ab
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %index
  %wide.load = load <8 x i16>, ptr %i.ac, align 2, !tbaa !54, !alias.scope !196
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %index
  %wide.load51 = load <8 x i16>, ptr %i.ad, align 2, !tbaa !54, !alias.scope !197
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %index
  %wide.load52 = load <8 x i16>, ptr %i.ae, align 2, !tbaa !54, !alias.scope !198
  %i.af = shufflevector <8 x i16> %wide.load, <8 x i16> %wide.load51, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ag = shufflevector <8 x i16> %wide.load52, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <16 x i16> %i.af, <16 x i16> %i.ag, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x i16> %interleaved.vec, ptr %next.gep, align 2, !tbaa !54, !alias.scope !199, !noalias !200
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !194

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 6 uses
  %.02227.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph ], [ %i.aa, %middle.block ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv.ph
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !54
  store i16 %i.aj, ptr %.02227.ph, align 2, !tbaa !54
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %indvars.iv.ph
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !54
  %i.am = getelementptr inbounds nuw i8, ptr %.02227.ph, i64 2
  store i16 %i.al, ptr %i.am, align 2, !tbaa !54
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %indvars.iv.ph
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !54
  %i.ap = getelementptr inbounds nuw i8, ptr %.02227.ph, i64 4
  store i16 %i.ao, ptr %i.ap, align 2, !tbaa !54
  %i.aq = getelementptr inbounds nuw i8, ptr %.02227.ph, i64 6
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.02227.unr = phi ptr [ %.02227.ph, %scalar.ph.preheader ], [ %i.aq, %scalar.ph.prol ]
  %i.ar = icmp eq i64 %indvars.iv.ph, %i.l
  br i1 %i.ar, label %..loopexit_crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.02227 = phi ptr [ %i.bj, %scalar.ph ], [ %.02227.unr, %scalar.ph.prol.loopexit ] ; 7 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv
  %i.at = load i16, ptr %i.as, align 2, !tbaa !54
  store i16 %i.at, ptr %.02227, align 2, !tbaa !54
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %indvars.iv
  %i.av = load i16, ptr %i.au, align 2, !tbaa !54
  %i.aw = getelementptr inbounds nuw i8, ptr %.02227, i64 2
  store i16 %i.av, ptr %i.aw, align 2, !tbaa !54
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %indvars.iv
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !54
  %i.az = getelementptr inbounds nuw i8, ptr %.02227, i64 4
  store i16 %i.ay, ptr %i.az, align 2, !tbaa !54
  %i.ba = getelementptr inbounds nuw i8, ptr %.02227, i64 6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv.next
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !54
  store i16 %i.bc, ptr %i.ba, align 2, !tbaa !54
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %indvars.iv.next
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !54
  %i.bf = getelementptr inbounds nuw i8, ptr %.02227, i64 8
  store i16 %i.be, ptr %i.bf, align 2, !tbaa !54
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %indvars.iv.next
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !54
  %i.bi = getelementptr inbounds nuw i8, ptr %.02227, i64 10
  store i16 %i.bh, ptr %i.bi, align 2, !tbaa !54
  %i.bj = getelementptr inbounds nuw i8, ptr %.02227, i64 12
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %..loopexit_crit_edge, label %scalar.ph, !llvm.loop !195

._crit_edge.split:                                ; preds = %..loopexit_crit_edge, %.lr.ph31, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ycc_rgb565_convert(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57   ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !44   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !45   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !46   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !47   ; 4 uses
  %i.m = icmp sgt i32 %4, 0
  br i1 %i.m, label %.lr.ph21, label %ycc_rgb565_convert_le.exit

.lr.ph21:                                         ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.o = load i32, ptr %i.n, align 8, !tbaa !52
  %i.p = load ptr, ptr %1, align 8, !tbaa !51
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !51
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !51
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph21, %bb.f
  %.in = phi i32 [ %4, %.lr.ph21 ], [ %i.u, %bb.f ] ; 2 uses
  %.0.i19 = phi i32 [ %i.o, %.lr.ph21 ], [ %.1.i, %bb.f ] ; 2 uses
  %.0120.i18 = phi ptr [ %3, %.lr.ph21 ], [ %i.ad, %bb.f ] ; 2 uses
  %.0121.i17 = phi i32 [ %2, %.lr.ph21 ], [ %i.ac, %bb.f ] ; 2 uses
  %i.u = add nsw i32 %.in, -1
  %i.v = zext i32 %.0121.i17 to i64               ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !56   ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.v
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !56   ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.v
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !56 ; 3 uses
  %i.ac = add i32 %.0121.i17, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %.0120.i18, i64 8
  %i.ae = load ptr, ptr %.0120.i18, align 8, !tbaa !56 ; 4 uses
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = and i64 %i.af, 3
  %.not.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.ai = load i16, ptr %i.x, align 2, !tbaa !54
  %i.aj = sext i16 %i.ai to i32                   ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  %i.al = load i16, ptr %i.z, align 2, !tbaa !54
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %i.an = load i16, ptr %i.ab, align 2, !tbaa !54
  %i.ao = sext i16 %i.an to i64                   ; 2 uses
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !43
  %i.ar = add nsw i32 %i.aq, %i.aj
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.as
  %i.au = load i16, ptr %i.at, align 2, !tbaa !54
  %i.av = sext i16 %i.au to i32
  %i.aw = sext i16 %i.al to i64                   ; 2 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !48
  %i.az = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ao
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !48
  %i.bb = add nsw i64 %i.ba, %i.ay
  %i.bc = lshr i64 %i.bb, 16
  %i.bd = trunc i64 %i.bc to i32
  %i.be = add nsw i32 %i.bd, %i.aj
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.bf
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !54
  %i.bi = sext i16 %i.bh to i32
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.aw
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !43
  %i.bl = add nsw i32 %i.bk, %i.aj
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.bm
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !54
  %i.bp = sext i16 %i.bo to i32
  %i.bq = shl nsw i32 %i.av, 8
  %i.br = and i32 %i.bq, 63488
  %i.bs = shl nsw i32 %i.bi, 3
  %i.bt = and i32 %i.bs, 2016
  %i.bu = or disjoint i32 %i.bt, %i.br
  %i.bv = lshr i32 %i.bp, 3
  %i.bw = or i32 %i.bu, %i.bv
  %i.bx = trunc i32 %i.bw to i16
  store i16 %i.bx, ptr %i.ae, align 2, !tbaa !54
  %i.by = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.bz = add i32 %.0.i19, -1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0117.i = phi ptr [ %i.by, %bb.c ], [ %i.ae, %bb.b ] ; 2 uses
  %.0115.i = phi ptr [ %i.ah, %bb.c ], [ %i.x, %bb.b ] ; 2 uses
  %.0113.i = phi ptr [ %i.ak, %bb.c ], [ %i.z, %bb.b ] ; 2 uses
  %.0111.i = phi ptr [ %i.am, %bb.c ], [ %i.ab, %bb.b ] ; 2 uses
  %.1.i = phi i32 [ %i.bz, %bb.c ], [ %.0.i19, %bb.b ] ; 3 uses
  %i.ca = lshr i32 %.1.i, 1                       ; 2 uses
  %.not = icmp eq i32 %i.ca, 0
end_hunk_1

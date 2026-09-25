Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/iterator_enc?download=true
inline.NumInlined: 22
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 28
begin_hunk_0_@VP8IteratorImport:bb.a
vec.epilog.ph290:                                 ; preds = %vector.main.loop.iter.check273, %vec.epilog.iter.check288
  %vec.epilog.resume.val285 = phi i64 [ %n.vec276, %vec.epilog.iter.check288 ], [ 0, %vector.main.loop.iter.check273 ]
  %n.vec291 = and i64 %wide.trip.count.i170, 2147483644 ; 4 uses
  %i.ov = getelementptr i8, ptr %i.ok, i64 %n.vec291
  br label %vec.epilog.vector.body292

vec.epilog.vector.body292:                        ; preds = %vec.epilog.vector.body292, %vec.epilog.ph290
  %index293 = phi i64 [ %vec.epilog.resume.val285, %vec.epilog.ph290 ], [ %index.next296, %vec.epilog.vector.body292 ] ; 3 uses
  %next.gep294 = getelementptr i8, ptr %i.ok, i64 %index293
  %wide.load295 = load <4 x i8>, ptr %next.gep294, align 1, !tbaa !44
  %i.ow = getelementptr inbounds nuw i8, ptr %i.mq, i64 %index293
  store <4 x i8> %wide.load295, ptr %i.ow, align 1, !tbaa !44
  %index.next296 = add nuw i64 %index293, 4       ; 2 uses
  %i.ox = icmp eq i64 %index.next296, %n.vec291
  br i1 %i.ox, label %vec.epilog.middle.block297, label %vec.epilog.vector.body292, !llvm.loop !97

vec.epilog.middle.block297:                       ; preds = %vec.epilog.vector.body292
  %cmp.n298 = icmp eq i64 %n.vec291, %wide.trip.count.i170
  br i1 %cmp.n298, label %.preheader.i175, label %vec.epilog.scalar.ph287.preheader

vec.epilog.scalar.ph287.preheader:                ; preds = %iter.check286, %vector.memcheck270, %vec.epilog.iter.check288, %vec.epilog.middle.block297
  %indvars.iv.i171.ph = phi i64 [ 0, %iter.check286 ], [ 0, %vector.memcheck270 ], [ %n.vec276, %vec.epilog.iter.check288 ], [ %n.vec291, %vec.epilog.middle.block297 ] ; 3 uses
  %.01415.i172.ph = phi ptr [ %i.ok, %iter.check286 ], [ %i.ok, %vector.memcheck270 ], [ %i.oq, %vec.epilog.iter.check288 ], [ %i.ov, %vec.epilog.middle.block297 ] ; 2 uses
  %xtraiter379 = and i64 %wide.trip.count.i170, 3 ; 2 uses
  %lcmp.mod380.not = icmp eq i64 %xtraiter379, 0
  br i1 %lcmp.mod380.not, label %vec.epilog.scalar.ph287.prol.loopexit, label %vec.epilog.scalar.ph287.prol

vec.epilog.scalar.ph287.prol:                     ; preds = %vec.epilog.scalar.ph287.preheader, %vec.epilog.scalar.ph287.prol
  %indvars.iv.i171.prol = phi i64 [ %indvars.iv.next.i173.prol, %vec.epilog.scalar.ph287.prol ], [ %indvars.iv.i171.ph, %vec.epilog.scalar.ph287.preheader ] ; 2 uses
  %.01415.i172.prol = phi ptr [ %i.pa, %vec.epilog.scalar.ph287.prol ], [ %.01415.i172.ph, %vec.epilog.scalar.ph287.preheader ] ; 2 uses
  %prol.iter381 = phi i64 [ %prol.iter381.next, %vec.epilog.scalar.ph287.prol ], [ 0, %vec.epilog.scalar.ph287.preheader ]
  %i.oy = load i8, ptr %.01415.i172.prol, align 1, !tbaa !44
  %i.oz = getelementptr inbounds nuw i8, ptr %i.mq, i64 %indvars.iv.i171.prol
  store i8 %i.oy, ptr %i.oz, align 1, !tbaa !44
  %indvars.iv.next.i173.prol = add nuw nsw i64 %indvars.iv.i171.prol, 1 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %.01415.i172.prol, i64 1 ; 2 uses
  %prol.iter381.next = add i64 %prol.iter381, 1   ; 2 uses
  %prol.iter381.cmp.not = icmp eq i64 %prol.iter381.next, %xtraiter379
  br i1 %prol.iter381.cmp.not, label %vec.epilog.scalar.ph287.prol.loopexit, label %vec.epilog.scalar.ph287.prol, !llvm.loop !98

vec.epilog.scalar.ph287.prol.loopexit:            ; preds = %vec.epilog.scalar.ph287.prol, %vec.epilog.scalar.ph287.preheader
  %indvars.iv.i171.unr = phi i64 [ %indvars.iv.i171.ph, %vec.epilog.scalar.ph287.preheader ], [ %indvars.iv.next.i173.prol, %vec.epilog.scalar.ph287.prol ]
  %.01415.i172.unr = phi ptr [ %.01415.i172.ph, %vec.epilog.scalar.ph287.preheader ], [ %i.pa, %vec.epilog.scalar.ph287.prol ]
  %i.pb = sub nsw i64 %indvars.iv.i171.ph, %wide.trip.count.i170
  %i.pc = icmp ugt i64 %i.pb, -4
  br i1 %i.pc, label %.preheader.i175, label %vec.epilog.scalar.ph287

.preheader.i175:                                  ; preds = %vec.epilog.scalar.ph287.prol.loopexit, %vec.epilog.scalar.ph287, %vec.epilog.middle.block297, %middle.block283
  %i.pd = icmp samesign ult i32 %i.aq, 8
  br i1 %i.pd, label %.lr.ph18.i163..lr.ph.i183_crit_edge, label %.lr.ph.i183

.lr.ph18.i163..lr.ph.i183_crit_edge:              ; preds = %.preheader.i175
  %i.pe = zext nneg i32 %i.aq to i64
  %i.pf = getelementptr i8, ptr %i.mq, i64 %i.pe
  %i.pg = getelementptr i8, ptr %i.pf, i64 -1
  %i.ph = zext nneg i32 %i.aq to i64              ; 2 uses
  %.pre.i165239 = load i8, ptr %i.pg, align 1, !tbaa !44
  %i.pi = getelementptr i8, ptr %1, i64 %i.ph
  %scevgep217240 = getelementptr i8, ptr %i.pi, i64 16
  %i.pj = sub nuw nsw i64 8, %i.ph
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep217240, i8 %.pre.i165239, i64 %i.pj, i1 false), !tbaa !44
  %.pre223 = zext nneg i32 %i.aq to i64
  br label %.lr.ph.i183

.lr.ph18.i163..lr.ph18.i177_crit_edge:            ; preds = %ImportLine.exit162
  %i.pk = sext i32 %i.aq to i64                   ; 2 uses
  %i.pl = getelementptr i8, ptr %i.mq, i64 %i.pk
  %i.pm = getelementptr i8, ptr %i.pl, i64 -1
  %.pre.i165 = load i8, ptr %i.pm, align 1, !tbaa !44
  %scevgep217 = getelementptr i8, ptr %1, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %scevgep217, i8 %.pre.i165, i64 8, i1 false), !tbaa !44
  br label %.lr.ph18.i177

vec.epilog.scalar.ph287:                          ; preds = %vec.epilog.scalar.ph287.prol.loopexit, %vec.epilog.scalar.ph287
  %indvars.iv.i171 = phi i64 [ %indvars.iv.next.i173.3, %vec.epilog.scalar.ph287 ], [ %indvars.iv.i171.unr, %vec.epilog.scalar.ph287.prol.loopexit ] ; 5 uses
  %.01415.i172 = phi ptr [ %i.qb, %vec.epilog.scalar.ph287 ], [ %.01415.i172.unr, %vec.epilog.scalar.ph287.prol.loopexit ] ; 5 uses
  %i.pn = load i8, ptr %.01415.i172, align 1, !tbaa !44
  %i.po = getelementptr inbounds nuw i8, ptr %i.mq, i64 %indvars.iv.i171
  store i8 %i.pn, ptr %i.po, align 1, !tbaa !44
  %i.pp = getelementptr inbounds nuw i8, ptr %.01415.i172, i64 1
  %i.pq = load i8, ptr %i.pp, align 1, !tbaa !44
  %i.pr = getelementptr inbounds nuw i8, ptr %i.mq, i64 %indvars.iv.i171
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 1
  store i8 %i.pq, ptr %i.ps, align 1, !tbaa !44
  %i.pt = getelementptr inbounds nuw i8, ptr %.01415.i172, i64 2
  %i.pu = load i8, ptr %i.pt, align 1, !tbaa !44
  %i.pv = getelementptr inbounds nuw i8, ptr %i.mq, i64 %indvars.iv.i171
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 2
  store i8 %i.pu, ptr %i.pw, align 1, !tbaa !44
  %i.px = getelementptr inbounds nuw i8, ptr %.01415.i172, i64 3
  %i.py = load i8, ptr %i.px, align 1, !tbaa !44
  %i.pz = getelementptr inbounds nuw i8, ptr %i.mq, i64 %indvars.iv.i171
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 3
  store i8 %i.py, ptr %i.qa, align 1, !tbaa !44
  %indvars.iv.next.i173.3 = add nuw nsw i64 %indvars.iv.i171, 4 ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %.01415.i172, i64 4
  %exitcond.not.i174.3 = icmp eq i64 %indvars.iv.next.i173.3, %wide.trip.count.i170
  br i1 %exitcond.not.i174.3, label %.preheader.i175, label %vec.epilog.scalar.ph287, !llvm.loop !99

.lr.ph.i183:                                      ; preds = %.preheader.i175, %.lr.ph18.i163..lr.ph.i183_crit_edge
  %wide.trip.count.i184.pre-phi = phi i64 [ %.pre223, %.lr.ph18.i163..lr.ph.i183_crit_edge ], [ 8, %.preheader.i175 ] ; 3 uses
  %.pn197.in = load i32, ptr %i.v, align 4, !tbaa !62
  %.pn197 = sext i32 %.pn197.in to i64
  %.pn = sub nsw i64 0, %.pn197
  %i.qc = getelementptr inbounds i8, ptr %i.ae, i64 %.pn ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.qe = add nsw i64 %wide.trip.count.i184.pre-phi, -1
  %xtraiter383 = and i64 %wide.trip.count.i184.pre-phi, 3 ; 3 uses
  %i.qf = icmp ult i64 %i.qe, 3
  br i1 %i.qf, label %.epil.preheader382, label %.lr.ph.i183.new

.lr.ph.i183.new:                                  ; preds = %.lr.ph.i183
  %unroll_iter387 = and i64 %wide.trip.count.i184.pre-phi, 2147483644
  br label %bb.r

.preheader.i189.unr-lcssa:                        ; preds = %bb.r
  %lcmp.mod385.not = icmp eq i64 %xtraiter383, 0
  br i1 %lcmp.mod385.not, label %.preheader.i189, label %.epil.preheader382

.epil.preheader382:                               ; preds = %.preheader.i189.unr-lcssa, %.lr.ph.i183
  %indvars.iv.i185.epil.init = phi i64 [ 0, %.lr.ph.i183 ], [ %indvars.iv.next.i187.3, %.preheader.i189.unr-lcssa ]
  %.01415.i186.epil.init = phi ptr [ %i.qc, %.lr.ph.i183 ], [ %i.rd, %.preheader.i189.unr-lcssa ]
  %lcmp.mod386 = icmp ne i64 %xtraiter383, 0
  tail call void @llvm.assume(i1 %lcmp.mod386)
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader382
  %indvars.iv.i185.epil = phi i64 [ %indvars.iv.i185.epil.init, %.epil.preheader382 ], [ %indvars.iv.next.i187.epil, %bb.q ] ; 2 uses
  %.01415.i186.epil = phi ptr [ %.01415.i186.epil.init, %.epil.preheader382 ], [ %i.qi, %bb.q ] ; 2 uses
  %epil.iter384 = phi i64 [ 0, %.epil.preheader382 ], [ %epil.iter384.next, %bb.q ]
  %i.qg = load i8, ptr %.01415.i186.epil, align 1, !tbaa !44
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qd, i64 %indvars.iv.i185.epil
  store i8 %i.qg, ptr %i.qh, align 1, !tbaa !44
  %indvars.iv.next.i187.epil = add nuw nsw i64 %indvars.iv.i185.epil, 1
  %i.qi = getelementptr inbounds nuw i8, ptr %.01415.i186.epil, i64 1
  %epil.iter384.next = add i64 %epil.iter384, 1   ; 2 uses
  %epil.iter384.cmp.not = icmp eq i64 %epil.iter384.next, %xtraiter383
  br i1 %epil.iter384.cmp.not, label %.preheader.i189, label %bb.q, !llvm.loop !100

.preheader.i189:                                  ; preds = %bb.q, %.preheader.i189.unr-lcssa
  %i.qj = icmp samesign ult i32 %i.aq, 8
  br i1 %i.qj, label %.preheader.i189..lr.ph18.i177_crit_edge, label %ImportLine.exit190

.preheader.i189..lr.ph18.i177_crit_edge:          ; preds = %.preheader.i189
  %.pre224 = zext nneg i32 %i.aq to i64
  %i.qk = zext nneg i32 %i.aq to i64
  br label %.lr.ph18.i177

.lr.ph18.i177:                                    ; preds = %.preheader.i189..lr.ph18.i177_crit_edge, %.lr.ph18.i163..lr.ph18.i177_crit_edge
  %.pre-phi225 = phi i64 [ %.pre224, %.preheader.i189..lr.ph18.i177_crit_edge ], [ %i.pk, %.lr.ph18.i163..lr.ph18.i177_crit_edge ]
  %.0.lcssa27.i178 = phi i64 [ %i.qk, %.preheader.i189..lr.ph18.i177_crit_edge ], [ 0, %.lr.ph18.i163..lr.ph18.i177_crit_edge ] ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.qm = getelementptr i8, ptr %i.ql, i64 %.pre-phi225
  %i.qn = getelementptr i8, ptr %i.qm, i64 -1
  %.pre.i179 = load i8, ptr %i.qn, align 1, !tbaa !44
  %scevgep218 = getelementptr nuw i8, ptr %i.ql, i64 %.0.lcssa27.i178
  %i.qo = sub nuw nsw i64 8, %.0.lcssa27.i178
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %scevgep218, i8 %.pre.i179, i64 %i.qo, i1 false), !tbaa !44
  br label %ImportLine.exit190

bb.r:                                             ; preds = %bb.r, %.lr.ph.i183.new
  %indvars.iv.i185 = phi i64 [ 0, %.lr.ph.i183.new ], [ %indvars.iv.next.i187.3, %bb.r ] ; 5 uses
  %.01415.i186 = phi ptr [ %i.qc, %.lr.ph.i183.new ], [ %i.rd, %bb.r ] ; 5 uses
  %niter388 = phi i64 [ 0, %.lr.ph.i183.new ], [ %niter388.next.3, %bb.r ]
  %i.qp = load i8, ptr %.01415.i186, align 1, !tbaa !44
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qd, i64 %indvars.iv.i185
  store i8 %i.qp, ptr %i.qq, align 1, !tbaa !44
  %i.qr = getelementptr inbounds nuw i8, ptr %.01415.i186, i64 1
  %i.qs = load i8, ptr %i.qr, align 1, !tbaa !44
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qd, i64 %indvars.iv.i185
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 1
  store i8 %i.qs, ptr %i.qu, align 1, !tbaa !44
  %i.qv = getelementptr inbounds nuw i8, ptr %.01415.i186, i64 2
  %i.qw = load i8, ptr %i.qv, align 1, !tbaa !44
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qd, i64 %indvars.iv.i185
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 2
  store i8 %i.qw, ptr %i.qy, align 1, !tbaa !44
  %i.qz = getelementptr inbounds nuw i8, ptr %.01415.i186, i64 3
  %i.ra = load i8, ptr %i.qz, align 1, !tbaa !44
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qd, i64 %indvars.iv.i185
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 3
  store i8 %i.ra, ptr %i.rc, align 1, !tbaa !44
  %indvars.iv.next.i187.3 = add nuw nsw i64 %indvars.iv.i185, 4 ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %.01415.i186, i64 4 ; 2 uses
  %niter388.next.3 = add i64 %niter388, 4         ; 2 uses
  %niter388.ncmp.3 = icmp eq i64 %niter388.next.3, %unroll_iter387
  br i1 %niter388.ncmp.3, label %.preheader.i189.unr-lcssa, label %bb.r, !llvm.loop !90

ImportLine.exit190:                               ; preds = %.lr.ph18.i177, %.preheader.i189, %bb.o, %ImportBlock.exit117
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @VP8IteratorExport(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !108
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load i32, ptr %i.d, align 4, !tbaa !111
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %ExportBlock.exit52, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %0, align 8, !tbaa !17     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !18   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !52   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !56   ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !61
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 44 ; 3 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !62
  %i.s = mul nsw i32 %i.r, %i.h
  %i.t = add nsw i32 %i.s, %i.f
  %i.u = shl nsw i32 %i.t, 3
  %i.v = sext i32 %i.u to i64                     ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.p, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !63
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %i.v
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !64
  %i.ac = shl nsw i32 %i.f, 4
  %i.ad = sub nsw i32 %i.ab, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !65
  %i.ag = shl nsw i32 %i.h, 4
  %i.ah = sub nsw i32 %i.af, %i.ag                ; 3 uses
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %i.ad, i32 16) ; 2 uses
  %spec.store.select1 = tail call i32 @llvm.smin.i32(i32 %i.ah, i32 16) ; 4 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph.i, label %ExportBlock.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !59
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.am = load i32, ptr %i.al, align 8, !tbaa !60 ; 2 uses
  %i.an = mul nsw i32 %i.am, %i.h
  %i.ao = add nsw i32 %i.an, %i.f
  %i.ap = shl nsw i32 %i.ao, 4
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds i8, ptr %i.ak, i64 %i.aq ; 2 uses
  %i.as = sext i32 %spec.store.select to i64      ; 5 uses
  %i.at = sext i32 %i.am to i64                   ; 5 uses
  %xtraiter = and i32 %spec.store.select1, 3      ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %.010.i.prol = phi i32 [ %1, %.prol.preheader ], [ %spec.store.select1, %.lr.ph.i ]
  %.069.i.prol = phi ptr [ %3, %.prol.preheader ], [ %i.j, %.lr.ph.i ] ; 2 uses
  %.078.i.prol = phi ptr [ %2, %.prol.preheader ], [ %i.ar, %.lr.ph.i ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %1 = add nsw i32 %.010.i.prol, -1               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.078.i.prol, ptr align 1 %.069.i.prol, i64 %i.as, i1 false)
  %2 = getelementptr inbounds i8, ptr %.078.i.prol, i64 %i.at ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %.069.i.prol, i64 32 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !105

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %.010.i.unr = phi i32 [ %spec.store.select1, %.lr.ph.i ], [ %1, %.prol.preheader ]
  %.069.i.unr = phi ptr [ %i.j, %.lr.ph.i ], [ %3, %.prol.preheader ]
  %.078.i.unr = phi ptr [ %i.ar, %.lr.ph.i ], [ %2, %.prol.preheader ]
  %4 = icmp slt i32 %i.ah, 4
  br i1 %4, label %ExportBlock.exit, label %bb.c

bb.c:                                             ; preds = %.prol.loopexit, %bb.c
  %.010.i = phi i32 [ %i.au, %bb.c ], [ %.010.i.unr, %.prol.loopexit ] ; 2 uses
  %.069.i = phi ptr [ %i.aw, %bb.c ], [ %.069.i.unr, %.prol.loopexit ] ; 5 uses
  %.078.i = phi ptr [ %i.av, %bb.c ], [ %.078.i.unr, %.prol.loopexit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.078.i, ptr align 1 %.069.i, i64 %i.as, i1 false)
  %5 = getelementptr inbounds i8, ptr %.078.i, i64 %i.at ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %.069.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr nonnull align 1 %6, i64 %i.as, i1 false)
  %7 = getelementptr inbounds i8, ptr %5, i64 %i.at ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %.069.i, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr nonnull align 1 %8, i64 %i.as, i1 false)
  %9 = getelementptr inbounds i8, ptr %7, i64 %i.at ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %.069.i, i64 96
  %i.au = add nsw i32 %.010.i, -4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr nonnull align 1 %10, i64 %i.as, i1 false)
  %i.av = getelementptr inbounds i8, ptr %9, i64 %i.at
  %i.aw = getelementptr inbounds nuw i8, ptr %.069.i, i64 128
  %11 = icmp sgt i32 %.010.i, 4
  br i1 %11, label %bb.c, label %ExportBlock.exit, !llvm.loop !106

ExportBlock.exit:                                 ; preds = %.prol.loopexit, %bb.c, %bb.b
  %i.ax = add nsw i32 %spec.store.select1, 1
  %i.ay = ashr i32 %i.ax, 1                       ; 6 uses
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %.lr.ph.i43, label %ExportBlock.exit52

.lr.ph.i43:                                       ; preds = %ExportBlock.exit
  %i.ba = add nsw i32 %spec.store.select, 1
  %i.bb = ashr i32 %i.ba, 1
  %i.bc = load i32, ptr %i.q, align 4, !tbaa !62
  %i.bd = sext i32 %i.bb to i64                   ; 6 uses
  %i.be = sext i32 %i.bc to i64                   ; 5 uses
  %xtraiter.a = and i32 %i.ay, 3                  ; 2 uses
  %lcmp.mod.not.a = icmp eq i32 %xtraiter.a, 0
  br i1 %lcmp.mod.not.a, label %.prol.loopexit.a, label %.prol.preheader.a

.prol.preheader.a:                                ; preds = %.lr.ph.i43, %.prol.preheader.a
  %.010.i44.prol = phi i32 [ %i.bf, %.prol.preheader.a ], [ %i.ay, %.lr.ph.i43 ]
  %.069.i45.prol = phi ptr [ %i.bh, %.prol.preheader.a ], [ %i.k, %.lr.ph.i43 ] ; 2 uses
  %.078.i46.prol = phi ptr [ %i.bg, %.prol.preheader.a ], [ %i.w, %.lr.ph.i43 ] ; 2 uses
  %prol.iter.a = phi i32 [ %prol.iter.next.a, %.prol.preheader.a ], [ 0, %.lr.ph.i43 ]
  %i.bf = add nsw i32 %.010.i44.prol, -1          ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.078.i46.prol, ptr nonnull align 1 %.069.i45.prol, i64 %i.bd, i1 false)
  %i.bg = getelementptr inbounds i8, ptr %.078.i46.prol, i64 %i.be ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.069.i45.prol, i64 32 ; 2 uses
  %prol.iter.next.a = add i32 %prol.iter.a, 1     ; 2 uses
  %prol.iter.cmp.not.a = icmp eq i32 %prol.iter.next.a, %xtraiter.a
  br i1 %prol.iter.cmp.not.a, label %.prol.loopexit.a, label %.prol.preheader.a, !llvm.loop !107

.prol.loopexit.a:                                 ; preds = %.prol.preheader.a, %.lr.ph.i43
  %.010.i44.unr = phi i32 [ %i.ay, %.lr.ph.i43 ], [ %i.bf, %.prol.preheader.a ]
  %.069.i45.unr = phi ptr [ %i.k, %.lr.ph.i43 ], [ %i.bh, %.prol.preheader.a ]
  %.078.i46.unr = phi ptr [ %i.w, %.lr.ph.i43 ], [ %i.bg, %.prol.preheader.a ]
  %i.bi = icmp ult i32 %i.ay, 4
  br i1 %i.bi, label %.lr.ph.i48, label %.lr.ph.i43.new

.lr.ph.i43.new:                                   ; preds = %.prol.loopexit.a, %.lr.ph.i43.new
  %.010.i44 = phi i32 [ %i.bp, %.lr.ph.i43.new ], [ %.010.i44.unr, %.prol.loopexit.a ] ; 2 uses
  %.069.i45 = phi ptr [ %i.br, %.lr.ph.i43.new ], [ %.069.i45.unr, %.prol.loopexit.a ] ; 5 uses
  %.078.i46 = phi ptr [ %i.bq, %.lr.ph.i43.new ], [ %.078.i46.unr, %.prol.loopexit.a ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.078.i46, ptr nonnull align 1 %.069.i45, i64 %i.bd, i1 false)
  %i.bj = getelementptr inbounds i8, ptr %.078.i46, i64 %i.be ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.069.i45, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bj, ptr nonnull align 1 %i.bk, i64 %i.bd, i1 false)
  %i.bl = getelementptr inbounds i8, ptr %i.bj, i64 %i.be ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.069.i45, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bl, ptr nonnull align 1 %i.bm, i64 %i.bd, i1 false)
  %i.bn = getelementptr inbounds i8, ptr %i.bl, i64 %i.be ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.069.i45, i64 96
  %i.bp = add nsw i32 %.010.i44, -4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bn, ptr nonnull align 1 %i.bo, i64 %i.bd, i1 false)
  %i.bq = getelementptr inbounds i8, ptr %i.bn, i64 %i.be
  %i.br = getelementptr inbounds nuw i8, ptr %.069.i45, i64 128
  %i.bs = icmp sgt i32 %.010.i44, 4
  br i1 %i.bs, label %.lr.ph.i43.new, label %.lr.ph.i48, !llvm.loop !106

.lr.ph.i48:                                       ; preds = %.lr.ph.i43.new, %.prol.loopexit.a
  %i.bt = load i32, ptr %i.q, align 4, !tbaa !62
  %i.bu = sext i32 %i.bt to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i48
  %.010.i49 = phi i32 [ %i.ay, %.lr.ph.i48 ], [ %i.bv, %bb.d ] ; 2 uses
  %.069.i50 = phi ptr [ %i.l, %.lr.ph.i48 ], [ %i.bx, %bb.d ] ; 2 uses
  %.078.i51 = phi ptr [ %i.z, %.lr.ph.i48 ], [ %i.bw, %bb.d ] ; 2 uses
  %i.bv = add nsw i32 %.010.i49, -1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.078.i51, ptr nonnull align 1 %.069.i50, i64 %i.bd, i1 false)
  %i.bw = getelementptr inbounds i8, ptr %.078.i51, i64 %i.bu
  %i.bx = getelementptr inbounds nuw i8, ptr %.069.i50, i64 32
  %i.by = icmp samesign ugt i32 %.010.i49, 1
  br i1 %i.by, label %bb.d, label %ExportBlock.exit52, !llvm.loop !106

ExportBlock.exit52:                               ; preds = %bb.d, %ExportBlock.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @VP8IteratorNzToBytes(ptr nofree noundef captures(none) initializes((132, 200)) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !47   ; 9 uses
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !47   ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.h = lshr i32 %i.c, 12
  %.lobit = and i32 %i.h, 1
  store i32 %.lobit, ptr %i.f, align 4, !tbaa !47
  %i.i = lshr i32 %i.c, 13
  %.lobit37 = and i32 %i.i, 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %.lobit37, ptr %i.j, align 8, !tbaa !47
  %i.k = lshr i32 %i.c, 14
  %.lobit38 = and i32 %i.k, 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 %.lobit38, ptr %i.l, align 4, !tbaa !47
  %i.m = lshr i32 %i.c, 15
  %.lobit39 = and i32 %i.m, 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 %.lobit39, ptr %i.n, align 8, !tbaa !47
  %i.o = lshr i32 %i.c, 18
  %.lobit40 = and i32 %i.o, 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i32 %.lobit40, ptr %i.p, align 4, !tbaa !47
  %i.q = lshr i32 %i.c, 19
  %.lobit41 = and i32 %i.q, 1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 %.lobit41, ptr %i.r, align 8, !tbaa !47
  %i.s = lshr i32 %i.c, 22
  %.lobit42 = and i32 %i.s, 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 %.lobit42, ptr %i.t, align 4, !tbaa !47
  %i.u = lshr i32 %i.c, 23
  %.lobit43 = and i32 %i.u, 1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 %.lobit43, ptr %i.v, align 8, !tbaa !47
  %i.w = lshr i32 %i.c, 24
  %.lobit44 = and i32 %i.w, 1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i32 %.lobit44, ptr %i.x, align 4, !tbaa !47
  %i.y = lshr i32 %i.e, 3
  %.lobit45 = and i32 %i.y, 1
  store i32 %.lobit45, ptr %i.g, align 8, !tbaa !47
  %i.z = lshr i32 %i.e, 7
  %.lobit46 = and i32 %i.z, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i32 %.lobit46, ptr %i.aa, align 4, !tbaa !47
  %i.ab = lshr i32 %i.e, 11
  %.lobit47 = and i32 %i.ab, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 %.lobit47, ptr %i.ac, align 8, !tbaa !47
  %i.ad = lshr i32 %i.e, 15
  %.lobit48 = and i32 %i.ad, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i32 %.lobit48, ptr %i.ae, align 4, !tbaa !47
  %i.af = lshr i32 %i.e, 17
  %.lobit49 = and i32 %i.af, 1
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 %.lobit49, ptr %i.ag, align 8, !tbaa !47
  %i.ah = lshr i32 %i.e, 19
  %.lobit50 = and i32 %i.ah, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 %.lobit50, ptr %i.ai, align 4, !tbaa !47
  %i.aj = lshr i32 %i.e, 21
  %.lobit51 = and i32 %i.aj, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 %.lobit51, ptr %i.ak, align 8, !tbaa !47
  %i.al = lshr i32 %i.e, 23
  %.lobit52 = and i32 %i.al, 1
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i32 %.lobit52, ptr %i.am, align 4, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @VP8IteratorBytesToNz(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.b = load <12 x i32>, ptr %i.a, align 4, !tbaa !47
  %i.c = shl <12 x i32> %i.b, <i32 12, i32 13, i32 14, i32 15, i32 18, i32 19, i32 22, i32 23, i32 24, i32 3, i32 7, i32 11>
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.e = load i32, ptr %i.d, align 4, !tbaa !47
  %i.f = shl i32 %i.e, 17
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.h = load i32, ptr %i.g, align 4, !tbaa !47
  %i.i = shl i32 %i.h, 21
  %i.j = tail call i32 @llvm.vector.reduce.or.v12i32(<12 x i32> %i.c)
  %op.rdx = or i32 %i.j, %i.f
  %op.rdx25 = or i32 %op.rdx, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !38
  store i32 %op.rdx25, ptr %i.l, align 4, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @VP8IteratorSaveBoundary(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !52   ; 34 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.i = load i32, ptr %i.h, align 8, !tbaa !40
  %i.j = add nsw i32 %i.i, -1
  %i.k = icmp slt i32 %i.c, %i.j
  br i1 %i.k, label %.preheader34, label %bb.b

.preheader34:                                     ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 17 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 15
  %i.n = load i8, ptr %i.m, align 1, !tbaa !44
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !46
  store i8 %i.n, ptr %i.o, align 1, !tbaa !44
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 47
  %i.q = load i8, ptr %i.p, align 1, !tbaa !44
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !46
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  store i8 %i.q, ptr %i.s, align 1, !tbaa !44
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 79
  %i.u = load i8, ptr %i.t, align 1, !tbaa !44
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !46
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  store i8 %i.u, ptr %i.w, align 1, !tbaa !44
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 111
  %i.y = load i8, ptr %i.x, align 1, !tbaa !44
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !46
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 3
  store i8 %i.y, ptr %i.aa, align 1, !tbaa !44
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 143
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !44
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !46
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store i8 %i.ac, ptr %i.ae, align 1, !tbaa !44
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 175
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !44
  %i.ah = load ptr, ptr %i.l, align 8, !tbaa !46
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 5
  store i8 %i.ag, ptr %i.ai, align 1, !tbaa !44
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 207
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !44
  %i.al = load ptr, ptr %i.l, align 8, !tbaa !46
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 6
  store i8 %i.ak, ptr %i.am, align 1, !tbaa !44
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 239
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !44
  %i.ap = load ptr, ptr %i.l, align 8, !tbaa !46
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 7
  store i8 %i.ao, ptr %i.aq, align 1, !tbaa !44
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 271
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !44
  %i.at = load ptr, ptr %i.l, align 8, !tbaa !46
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i8 %i.as, ptr %i.au, align 1, !tbaa !44
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 303
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !44
  %i.ax = load ptr, ptr %i.l, align 8, !tbaa !46
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 9
  store i8 %i.aw, ptr %i.ay, align 1, !tbaa !44
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 335
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !44
  %i.bb = load ptr, ptr %i.l, align 8, !tbaa !46
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 10
  store i8 %i.ba, ptr %i.bc, align 1, !tbaa !44
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 367
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !44
  %i.bf = load ptr, ptr %i.l, align 8, !tbaa !46
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 11
  store i8 %i.be, ptr %i.bg, align 1, !tbaa !44
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 399
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !44
  %i.bj = load ptr, ptr %i.l, align 8, !tbaa !46
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i8 %i.bi, ptr %i.bk, align 1, !tbaa !44
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 431
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !44
  %i.bn = load ptr, ptr %i.l, align 8, !tbaa !46
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 13
  store i8 %i.bm, ptr %i.bo, align 1, !tbaa !44
  %i.bp = getelementptr inbounds nuw i8, ptr %i.g, i64 463
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !44
  %i.br = load ptr, ptr %i.l, align 8, !tbaa !46
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 14
  store i8 %i.bq, ptr %i.bs, align 1, !tbaa !44
  %i.bt = getelementptr inbounds nuw i8, ptr %i.g, i64 495
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !44
  %i.bv = load ptr, ptr %i.l, align 8, !tbaa !46
end_hunk_0
begin_hunk_1_@VP8IteratorStartI4:.preheader31
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.av = load i8, ptr %i.au, align 1, !tbaa !44
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 93
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !44
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !44
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 94
  store i8 %i.ay, ptr %i.az, align 2, !tbaa !44
  %i.ba = load i8, ptr %i.h, align 1, !tbaa !44
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 95
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !44
  %i.bc = getelementptr inbounds i8, ptr %i.h, i64 -1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !44
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 %i.bd, ptr %i.be, align 8, !tbaa !44
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !68 ; 20 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !44
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 97
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !44
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !44
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 98
  store i8 %i.bk, ptr %i.bl, align 2, !tbaa !44
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !44
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 99
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !44
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 3
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !44
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i8 %i.bq, ptr %i.br, align 4, !tbaa !44
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !44
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 101
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !44
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bg, i64 5
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !44
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 102
  store i8 %i.bw, ptr %i.bx, align 2, !tbaa !44
  %i.by = getelementptr inbounds nuw i8, ptr %i.bg, i64 6
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !44
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 103
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !44
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bg, i64 7
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !44
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 %i.cc, ptr %i.cd, align 8, !tbaa !44
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !44
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 105
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !44
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bg, i64 9
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !44
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 106
  store i8 %i.ci, ptr %i.cj, align 2, !tbaa !44
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bg, i64 10
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !44
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 107
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !44
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bg, i64 11
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !44
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i8 %i.co, ptr %i.cp, align 4, !tbaa !44
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !44
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 109
  store i8 %i.cr, ptr %i.cs, align 1, !tbaa !44
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bg, i64 13
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !44
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 110
  store i8 %i.cu, ptr %i.cv, align 2, !tbaa !44
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bg, i64 14
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !44
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 111
  store i8 %i.cx, ptr %i.cy, align 1, !tbaa !44
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bg, i64 15
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !44  ; 5 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 %i.da, ptr %i.db, align 8, !tbaa !44
  %i.dc = load i32, ptr %0, align 8, !tbaa !17
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !40
  %i.df = add nsw i32 %i.de, -1
  %i.dg = icmp slt i32 %i.dc, %i.df
  br i1 %i.dg, label %.preheader, label %.preheader29

.preheader29:                                     ; preds = %.preheader31
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 113
  store i8 %i.da, ptr %i.dh, align 1, !tbaa !44
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 114
  store i8 %i.da, ptr %i.di, align 2, !tbaa !44
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 115
  store i8 %i.da, ptr %i.dj, align 1, !tbaa !44
  br label %.loopexit

.preheader:                                       ; preds = %.preheader31
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !44
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 113
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !44
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bg, i64 17
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !44
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 114
  store i8 %i.do, ptr %i.dp, align 2, !tbaa !44
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bg, i64 18
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !44
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 115
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !44
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bg, i64 19
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !44
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader29, %.preheader
  %.sink = phi i8 [ %i.da, %.preheader29 ], [ %i.du, %.preheader ]
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i8 %.sink, ptr %i.dv, align 4, !tbaa !44
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !38 ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !47 ; 9 uses
  %i.dz = getelementptr inbounds i8, ptr %i.dx, i64 -4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !47 ; 8 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ed = lshr i32 %i.dy, 12
  %.lobit.i = and i32 %i.ed, 1
  store i32 %.lobit.i, ptr %i.eb, align 4, !tbaa !47
  %i.ee = lshr i32 %i.dy, 13
  %.lobit37.i = and i32 %i.ee, 1
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %.lobit37.i, ptr %i.ef, align 8, !tbaa !47
  %i.eg = lshr i32 %i.dy, 14
  %.lobit38.i = and i32 %i.eg, 1
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 %.lobit38.i, ptr %i.eh, align 4, !tbaa !47
  %i.ei = lshr i32 %i.dy, 15
  %.lobit39.i = and i32 %i.ei, 1
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 %.lobit39.i, ptr %i.ej, align 8, !tbaa !47
  %i.ek = lshr i32 %i.dy, 18
  %.lobit40.i = and i32 %i.ek, 1
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i32 %.lobit40.i, ptr %i.el, align 4, !tbaa !47
  %i.em = lshr i32 %i.dy, 19
  %.lobit41.i = and i32 %i.em, 1
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 %.lobit41.i, ptr %i.en, align 8, !tbaa !47
  %i.eo = lshr i32 %i.dy, 22
  %.lobit42.i = and i32 %i.eo, 1
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 %.lobit42.i, ptr %i.ep, align 4, !tbaa !47
  %i.eq = lshr i32 %i.dy, 23
  %.lobit43.i = and i32 %i.eq, 1
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 %.lobit43.i, ptr %i.er, align 8, !tbaa !47
  %i.es = lshr i32 %i.dy, 24
  %.lobit44.i = and i32 %i.es, 1
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i32 %.lobit44.i, ptr %i.et, align 4, !tbaa !47
  %i.eu = lshr i32 %i.ea, 3
  %.lobit45.i = and i32 %i.eu, 1
  store i32 %.lobit45.i, ptr %i.ec, align 8, !tbaa !47
  %i.ev = lshr i32 %i.ea, 7
  %.lobit46.i = and i32 %i.ev, 1
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i32 %.lobit46.i, ptr %i.ew, align 4, !tbaa !47
  %i.ex = lshr i32 %i.ea, 11
  %.lobit47.i = and i32 %i.ex, 1
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 %.lobit47.i, ptr %i.ey, align 8, !tbaa !47
  %i.ez = lshr i32 %i.ea, 15
  %.lobit48.i = and i32 %i.ez, 1
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i32 %.lobit48.i, ptr %i.fa, align 4, !tbaa !47
  %i.fb = lshr i32 %i.ea, 17
  %.lobit49.i = and i32 %i.fb, 1
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 %.lobit49.i, ptr %i.fc, align 8, !tbaa !47
  %i.fd = lshr i32 %i.ea, 19
  %.lobit50.i = and i32 %i.fd, 1
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 %.lobit50.i, ptr %i.fe, align 4, !tbaa !47
  %i.ff = lshr i32 %i.ea, 21
  %.lobit51.i = and i32 %i.ff, 1
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 %.lobit51.i, ptr %i.fg, align 8, !tbaa !47
  %i.fh = lshr i32 %i.ea, 23
  %.lobit52.i = and i32 %i.fh, 1
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i32 %.lobit52.i, ptr %i.fi, align 4, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 2) i32 @VP8IteratorRotateI4(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !70
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [2 x i8], ptr @VP8Scan, i64 %i.c
  %i.e = load i16, ptr %i.d, align 2, !tbaa !113
  %i.f = zext i16 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.f ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !71   ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.k = load i8, ptr %i.j, align 1, !tbaa !44
  %i.l = getelementptr i8, ptr %i.i, i64 -4
  store i8 %i.k, ptr %i.l, align 1, !tbaa !44
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 97
  %i.n = load i8, ptr %i.m, align 1, !tbaa !44
  %i.o = getelementptr i8, ptr %i.i, i64 -3
  store i8 %i.n, ptr %i.o, align 1, !tbaa !44
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 98
  %i.q = load i8, ptr %i.p, align 1, !tbaa !44
  %i.r = getelementptr i8, ptr %i.i, i64 -2
  store i8 %i.q, ptr %i.r, align 1, !tbaa !44
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 99
  %i.t = load i8, ptr %i.s, align 1, !tbaa !44
  %i.u = getelementptr i8, ptr %i.i, i64 -1
  store i8 %i.t, ptr %i.u, align 1, !tbaa !44
  %i.v = load i32, ptr %i.a, align 8, !tbaa !70
  %i.w = and i32 %i.v, 3
  %.not = icmp eq i32 %i.w, 3
  br i1 %.not, label %.preheader.preheader, label %.preheader29.preheader

.preheader29.preheader:                           ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %i.y = getelementptr i8, ptr %i.i, i64 2
  %i.z = getelementptr i8, ptr %i.i, i64 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 67
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !44
  store i8 %i.ab, ptr %i.i, align 1, !tbaa !44
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 35
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !44
  store i8 %i.ad, ptr %i.z, align 1, !tbaa !44
  %i.ae = load i8, ptr %i.x, align 1, !tbaa !44
  store i8 %i.ae, ptr %i.y, align 1, !tbaa !44
  br label %.loopexit

.preheader.preheader:                             ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %i.i, i64 4
  %i.af = load i32, ptr %scevgep, align 1, !tbaa !44
  store i32 %i.af, ptr %i.i, align 1, !tbaa !44
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader29.preheader, %.preheader.preheader
  %i.ag = load i32, ptr %i.a, align 8, !tbaa !70
  %i.ah = add nsw i32 %i.ag, 1                    ; 3 uses
  store i32 %i.ah, ptr %i.a, align 8, !tbaa !70
  %i.ai = icmp eq i32 %i.ah, 16
  br i1 %i.ai, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.loopexit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ak = sext i32 %i.ah to i64
  %i.al = getelementptr inbounds i8, ptr @VP8TopLeftI4, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !44
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.an
  store ptr %i.ao, ptr %i.h, align 8, !tbaa !71
  br label %bb.c

bb.c:                                             ; preds = %.loopexit, %bb.b
  %.027 = phi i32 [ 1, %bb.b ], [ 0, %.loopexit ]
  ret i32 %.027
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v12i32(<12 x i32>) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"p1 _ZTS10VP8Encoder", !8, i64 0}
!11 = !{!"p1 _ZTS12VP8BitWriter", !8, i64 0}
!12 = !{!"p1 int", !8, i64 0}
!13 = !{!"long", !4, i64 0}
!14 = !{!"p1 double", !8, i64 0}
!15 = !{!"", !5, i64 0, !5, i64 4, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !10, i64 40, !8, i64 48, !11, i64 56, !9, i64 64, !12, i64 72, !4, i64 80, !9, i64 120, !5, i64 128, !4, i64 132, !4, i64 168, !4, i64 208, !13, i64 304, !13, i64 312, !14, i64 320, !5, i64 328, !5, i64 332, !5, i64 336, !5, i64 340, !4, i64 344, !9, i64 352, !9, i64 360, !9, i64 368, !9, i64 376, !9, i64 384, !9, i64 392, !4, i64 400, !4, i64 488}
!16 = !{!15, !10, i64 40}
!17 = !{!15, !5, i64 0}
!18 = !{!15, !5, i64 4}
!19 = !{!"p1 _ZTS10WebPConfig", !8, i64 0}
!20 = !{!"p1 _ZTS11WebPPicture", !8, i64 0}
!21 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!22 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8}
!23 = !{!"VP8BitWriter", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !9, i64 16, !13, i64 24, !13, i64 32, !5, i64 40}
!24 = !{!"p1 _ZTS9VP8Tokens", !8, i64 0}
!25 = !{!"any p2 pointer", !8, i64 0}
!26 = !{!"p2 _ZTS9VP8Tokens", !25, i64 0}
!27 = !{!"p1 short", !8, i64 0}
!28 = !{!"", !24, i64 0, !26, i64 8, !27, i64 16, !5, i64 24, !5, i64 28, !5, i64 32}
!29 = !{!"", !8, i64 0, !5, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !5, i64 40}
!30 = !{!"", !4, i64 0, !4, i64 3, !4, i64 4, !4, i64 1060, !4, i64 5284, !4, i64 18344, !5, i64 19880, !5, i64 19884, !5, i64 19888}
!31 = !{!"VP8Encoder", !19, i64 0, !20, i64 8, !21, i64 16, !22, i64 32, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !23, i64 64, !4, i64 112, !28, i64 496, !5, i64 536, !5, i64 540, !9, i64 544, !5, i64 552, !29, i64 560, !4, i64 608, !5, i64 3584, !5, i64 3588, !5, i64 3592, !5, i64 3596, !5, i64 3600, !5, i64 3604, !5, i64 3608, !5, i64 3612, !30, i64 3616, !4, i64 23512, !13, i64 23544, !5, i64 23552, !4, i64 23556, !4, i64 23604, !5, i64 23616, !5, i64 23620, !5, i64 23624, !5, i64 23628, !5, i64 23632, !5, i64 23636, !5, i64 23640, !8, i64 23648, !9, i64 23656, !12, i64 23664, !9, i64 23672, !9, i64 23680, !14, i64 23688, !9, i64 23696}
!32 = !{!31, !5, i64 60}
!33 = !{!15, !11, i64 56}
!34 = !{!31, !9, i64 23656}
!35 = !{!31, !5, i64 56}
!36 = !{!15, !9, i64 64}
!37 = !{!31, !12, i64 23664}
!38 = !{!15, !12, i64 72}
!39 = !{!31, !8, i64 23648}
!40 = !{!31, !5, i64 48}
!41 = !{!15, !8, i64 48}
!42 = !{!9, !9, i64 0}
!43 = !{!15, !9, i64 376}
!44 = !{!4, !4, i64 0}
!45 = !{!15, !9, i64 368}
!46 = !{!15, !9, i64 360}
!47 = !{!5, !5, i64 0}
!48 = !{!15, !9, i64 352}
!49 = !{!15, !5, i64 336}
!50 = !{!15, !5, i64 332}
!51 = !{!15, !9, i64 8}
!52 = !{!15, !9, i64 16}
!53 = !{!15, !5, i64 340}
!54 = !{!8, !8, i64 0}
!55 = !{!31, !5, i64 52}
!56 = !{!31, !20, i64 8}
!57 = !{!"p1 _ZTS12WebPAuxStats", !8, i64 0}
!58 = !{!"WebPPicture", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !9, i64 16, !9, i64 24, !9, i64 32, !5, i64 40, !5, i64 44, !9, i64 48, !5, i64 56, !4, i64 60, !12, i64 72, !5, i64 80, !4, i64 84, !8, i64 96, !8, i64 104, !5, i64 112, !9, i64 120, !57, i64 128, !5, i64 136, !8, i64 144, !8, i64 152, !4, i64 160, !9, i64 176, !9, i64 184, !4, i64 192, !8, i64 224, !8, i64 232, !4, i64 240}
!59 = !{!58, !9, i64 16}
!60 = !{!58, !5, i64 40}
!61 = !{!58, !9, i64 24}
!62 = !{!58, !5, i64 44}
!63 = !{!58, !9, i64 32}
!64 = !{!58, !5, i64 8}
!65 = !{!58, !5, i64 12}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{!"llvm.loop.unroll.disable"}
!68 = !{!15, !9, i64 384}
!69 = !{!15, !9, i64 392}
!70 = !{!15, !5, i64 128}
!71 = !{!15, !9, i64 120}
!72 = !{!15, !9, i64 24}
!73 = !{!15, !9, i64 32}
!74 = !{!31, !14, i64 23688}
!75 = !{!15, !14, i64 320}
!76 = !{!31, !5, i64 536}
!77 = !{!31, !9, i64 23696}
!78 = !{!31, !9, i64 23672}
!79 = !{!15, !5, i64 328}
!80 = !{!58, !8, i64 144}
!81 = distinct !{!81, !66}
!82 = distinct !{!82, !67}
!83 = distinct !{!83, !67}
!84 = distinct !{!84, !66}
!85 = distinct !{!85, !67}
!86 = distinct !{!86, !67}
!87 = distinct !{!87, !67}
!88 = distinct !{!88, !67}
!89 = distinct !{!89, !67}
!90 = distinct !{!90, !66}
!91 = distinct !{!91, !67}
!92 = distinct !{!92, !67}
!93 = distinct !{!93, !66, !102, !103}
!94 = distinct !{!94, !67}
!95 = distinct !{!95, !66, !102}
!96 = distinct !{!96, !66, !102, !103}
!97 = distinct !{!97, !66, !102, !103}
!98 = distinct !{!98, !67}
!99 = distinct !{!99, !66, !102}
!100 = distinct !{!100, !67}
!101 = !{!"branch_weights", i32 4, i32 12}
!102 = !{!"llvm.loop.isvectorized", i32 1}
!103 = !{!"llvm.loop.unroll.runtime.disable"}
!104 = !{!"branch_weights", i32 4, i32 28}
!105 = distinct !{!105, !67}
!106 = distinct !{!106, !66}
!107 = distinct !{!107, !67}
!108 = !{!31, !19, i64 0}
!109 = !{!"float", !4, i64 0}
!110 = !{!"WebPConfig", !5, i64 0, !109, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !109, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112}
!111 = !{!110, !5, i64 64}
!112 = !{!"short", !4, i64 0}
!113 = !{!112, !112, i64 0}
end_hunk_1

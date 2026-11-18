Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/bcm?download=true
inline.NumInlined: 5611
inline.NumDeleted: 1017
loop-unroll.NumCompletelyUnrolled: 187
loop-unroll.NumRuntimeUnrolled: 127
loop-unroll.NumUnrolled: 367
begin_hunk_0_@CRYPTO_cbc128_encrypt:bb.a
iter.check116:                                    ; preds = %.preheader50.prol.loopexit, %.preheader50, %vec.epilog.middle.block
  %i.bl = sub nuw nsw i64 16, %.047.lcssa74       ; 2 uses
  %min.iters.check102 = icmp ugt i64 %.047.lcssa74, 8
  %i.bm = sub i64 %.0.lcssa7786, %.045.lcssa7588
  %diff.check104 = icmp ugt i64 %i.bm, -32
  %or.cond = select i1 %min.iters.check102, i1 true, i1 %diff.check104
  br i1 %or.cond, label %.lr.ph61.preheader, label %vec.epilog.ph120

vec.epilog.ph120:                                 ; preds = %iter.check116
  %n.vec122 = and i64 %i.bl, 24                   ; 3 uses
  %i.bn = add nuw nsw i64 %.047.lcssa74, %n.vec122
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.lcssa77, i64 %.047.lcssa74
  %wide.load125 = load <8 x i8>, ptr %i.bo, align 1, !tbaa !82
  %i.bp = getelementptr inbounds nuw i8, ptr %.045.lcssa75, i64 %.047.lcssa74
  store <8 x i8> %wide.load125, ptr %i.bp, align 1, !tbaa !82
  %i.bq = icmp eq i64 %n.vec122, 8
  br i1 %i.bq, label %vec.epilog.middle.block127, label %vec.epilog.vector.body123.1

vec.epilog.vector.body123.1:                      ; preds = %vec.epilog.ph120
  %i.br = add nuw nsw i64 %.047.lcssa74, 8        ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.lcssa77, i64 %i.br
  %wide.load125.1 = load <8 x i8>, ptr %i.bs, align 1, !tbaa !82
  %i.bt = getelementptr inbounds nuw i8, ptr %.045.lcssa75, i64 %i.br
  store <8 x i8> %wide.load125.1, ptr %i.bt, align 1, !tbaa !82
  br label %vec.epilog.middle.block127

vec.epilog.middle.block127:                       ; preds = %vec.epilog.vector.body123.1, %vec.epilog.ph120
  %cmp.n128 = icmp eq i64 %i.bl, %n.vec122
  br i1 %cmp.n128, label %._crit_edge62, label %.lr.ph61.preheader

.lr.ph61.preheader:                               ; preds = %iter.check116, %vec.epilog.middle.block127
  %.14260.ph = phi i64 [ %.047.lcssa74, %iter.check116 ], [ %i.bn, %vec.epilog.middle.block127 ] ; 4 uses
  %i.bu = sub i64 0, %.14260.ph
  %xtraiter132 = and i64 %i.bu, 3                 ; 2 uses
  %lcmp.mod133.not = icmp eq i64 %xtraiter132, 0
  br i1 %lcmp.mod133.not, label %.lr.ph61.prol.loopexit, label %.lr.ph61.prol

.lr.ph61.prol:                                    ; preds = %.lr.ph61.preheader, %.lr.ph61.prol
  %.14260.prol = phi i64 [ %i.by, %.lr.ph61.prol ], [ %.14260.ph, %.lr.ph61.preheader ] ; 3 uses
  %prol.iter134 = phi i64 [ %prol.iter134.next, %.lr.ph61.prol ], [ 0, %.lr.ph61.preheader ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.lcssa77, i64 %.14260.prol
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !82
  %i.bx = getelementptr inbounds nuw i8, ptr %.045.lcssa75, i64 %.14260.prol
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !82
  %i.by = add i64 %.14260.prol, 1                 ; 2 uses
  %prol.iter134.next = add i64 %prol.iter134, 1   ; 2 uses
  %prol.iter134.cmp.not = icmp eq i64 %prol.iter134.next, %xtraiter132
  br i1 %prol.iter134.cmp.not, label %.lr.ph61.prol.loopexit, label %.lr.ph61.prol, !llvm.loop !401

.lr.ph61.prol.loopexit:                           ; preds = %.lr.ph61.prol, %.lr.ph61.preheader
  %.14260.unr = phi i64 [ %.14260.ph, %.lr.ph61.preheader ], [ %i.by, %.lr.ph61.prol ]
  %i.bz = add i64 %.14260.ph, -13
  %i.ca = icmp ult i64 %i.bz, 3
  br i1 %i.ca, label %._crit_edge62, label %.lr.ph61

.lr.ph61:                                         ; preds = %.lr.ph61.prol.loopexit, %.lr.ph61
  %.14260 = phi i64 [ %i.cq, %.lr.ph61 ], [ %.14260.unr, %.lr.ph61.prol.loopexit ] ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.lcssa77, i64 %.14260
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !82
  %i.cd = getelementptr inbounds nuw i8, ptr %.045.lcssa75, i64 %.14260
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !82
  %i.ce = add i64 %.14260, 1                      ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.lcssa77, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !82
  %i.ch = getelementptr inbounds nuw i8, ptr %.045.lcssa75, i64 %i.ce
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !82
  %i.ci = add i64 %.14260, 2                      ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.lcssa77, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !82
  %i.cl = getelementptr inbounds nuw i8, ptr %.045.lcssa75, i64 %i.ci
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !82
  %i.cm = add i64 %.14260, 3                      ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.lcssa77, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !82
  %i.cp = getelementptr inbounds nuw i8, ptr %.045.lcssa75, i64 %i.cm
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !82
  %i.cq = add i64 %.14260, 4                      ; 2 uses
  %exitcond67.not.3 = icmp eq i64 %i.cq, 16
  br i1 %exitcond67.not.3, label %._crit_edge62, label %.lr.ph61, !llvm.loop !402

._crit_edge62:                                    ; preds = %.lr.ph61.prol.loopexit, %.lr.ph61, %vec.epilog.middle.block127
  tail call void %5(ptr noundef nonnull %.045.lcssa75, ptr noundef nonnull %.045.lcssa75, ptr noundef %3) #36
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge62, %._crit_edge
  %.2 = phi ptr [ %.045.lcssa75, %._crit_edge62 ], [ %.04553, %._crit_edge ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %4, ptr noundef nonnull readonly align 1 dereferenceable(16) %.2, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @CRYPTO_cbc128_decrypt(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #5 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64
  %i.b = alloca [16 x i8], align 16               ; 14 uses
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.d = icmp ugt ptr %0, inttoptr (i64 31 to ptr)
  %i.e = ptrtoint ptr %1 to i64
  %i.f = ptrtoint ptr %0 to i64
  %i.g = add i64 %i.f, -32
  %.not = icmp uge i64 %i.g, %i.e
  %or.cond.not94 = and i1 %i.d, %.not
  %i.h = icmp ult ptr %0, %1
  %or.cond90 = or i1 %i.h, %or.cond.not94
  %i.i = icmp ugt i64 %2, 15                      ; 2 uses
  br i1 %or.cond90, label %.preheader95, label %.preheader96

.preheader96:                                     ; preds = %bb.b
  br i1 %i.i, label %.lr.ph.preheader, label %iter.check

.lr.ph.preheader:                                 ; preds = %.preheader96
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %.lr.ph

.preheader95:                                     ; preds = %bb.b
  br i1 %i.i, label %.lr.ph108, label %._crit_edge

.lr.ph108:                                        ; preds = %.preheader95, %.lr.ph108
  %.070107 = phi ptr [ %i.q, %.lr.ph108 ], [ %0, %.preheader95 ] ; 4 uses
  %.071106 = phi ptr [ %.070107, %.lr.ph108 ], [ %4, %.preheader95 ] ; 2 uses
  %.075105 = phi ptr [ %i.r, %.lr.ph108 ], [ %1, %.preheader95 ] ; 5 uses
  %.080104 = phi i64 [ %i.p, %.lr.ph108 ], [ %2, %.preheader95 ]
  tail call void %5(ptr noundef %.070107, ptr noundef %.075105, ptr noundef %3) #36
  %.0.copyload.i.i = load i64, ptr %.075105, align 1
  %.0.copyload.i7.i = load i64, ptr %.071106, align 1
  %i.l = xor i64 %.0.copyload.i7.i, %.0.copyload.i.i
  store i64 %i.l, ptr %.075105, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %.075105, i64 8 ; 2 uses
  %.0.copyload.i.1.i = load i64, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %.071106, i64 8
  %.0.copyload.i7.1.i = load i64, ptr %i.n, align 1
  %i.o = xor i64 %.0.copyload.i7.1.i, %.0.copyload.i.1.i
  store i64 %i.o, ptr %i.m, align 1
  %i.p = add i64 %.080104, -16                    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.070107, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.075105, i64 16 ; 2 uses
  %i.s = icmp ugt i64 %i.p, 15
  br i1 %i.s, label %.lr.ph108, label %._crit_edge, !llvm.loop !403

._crit_edge:                                      ; preds = %.lr.ph108, %.preheader95
  %.080.lcssa = phi i64 [ %2, %.preheader95 ], [ %i.p, %.lr.ph108 ]
  %.075.lcssa = phi ptr [ %1, %.preheader95 ], [ %i.r, %.lr.ph108 ]
  %.071.lcssa = phi ptr [ %4, %.preheader95 ], [ %.070107, %.lr.ph108 ]
  %.070.lcssa = phi ptr [ %0, %.preheader95 ], [ %i.q, %.lr.ph108 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %4, ptr noundef nonnull readonly align 1 dereferenceable(16) %.071.lcssa, i64 16, i1 false)
  br label %.loopexit97

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.1101 = phi ptr [ %i.y, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 4 uses
  %.176100 = phi ptr [ %i.z, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 3 uses
  %.18199 = phi i64 [ %i.x, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  call void %5(ptr noundef %.1101, ptr noundef nonnull %i.b, ptr noundef %3) #36
  %.0.copyload.i = load i64, ptr %.1101, align 1
  %.0.copyload.i91 = load i64, ptr %i.b, align 16
  %.0.copyload.i92 = load i64, ptr %4, align 1
  %i.t = xor i64 %.0.copyload.i92, %.0.copyload.i91
  store i64 %i.t, ptr %.176100, align 1
  store i64 %.0.copyload.i, ptr %4, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %.1101, i64 8
  %.0.copyload.i.1 = load i64, ptr %i.u, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %.176100, i64 8
  %.0.copyload.i91.1 = load i64, ptr %i.j, align 8
  %.0.copyload.i92.1 = load i64, ptr %i.k, align 1
  %i.w = xor i64 %.0.copyload.i92.1, %.0.copyload.i91.1
  store i64 %i.w, ptr %i.v, align 1
  store i64 %.0.copyload.i.1, ptr %i.k, align 1
  %i.x = add i64 %.18199, -16                     ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.1101, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.176100, i64 16 ; 2 uses
  %i.aa = icmp ugt i64 %i.x, 15
  br i1 %i.aa, label %.lr.ph, label %.loopexit97, !llvm.loop !404

.loopexit97:                                      ; preds = %.lr.ph, %._crit_edge
  %.282 = phi i64 [ %.080.lcssa, %._crit_edge ], [ %i.x, %.lr.ph ] ; 2 uses
  %.277 = phi ptr [ %.075.lcssa, %._crit_edge ], [ %i.z, %.lr.ph ]
  %.2 = phi ptr [ %.070.lcssa, %._crit_edge ], [ %i.y, %.lr.ph ]
  %.not87 = icmp eq i64 %.282, 0
  br i1 %.not87, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.preheader96, %.loopexit97
  %.2134 = phi ptr [ %.2, %.loopexit97 ], [ %0, %.preheader96 ] ; 17 uses
  %.277133 = phi ptr [ %.277, %.loopexit97 ], [ %1, %.preheader96 ] ; 9 uses
  %.282132 = phi i64 [ %.282, %.loopexit97 ], [ %2, %.preheader96 ] ; 21 uses
  %.2134195 = ptrtoaddr ptr %.2134 to i64
  call void %5(ptr noundef %.2134, ptr noundef nonnull %i.b, ptr noundef %3) #36
  %i.ab = sub nuw nsw i64 17, %.282132            ; 4 uses
  %min.iters.check = icmp ult i64 %.282132, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ac = getelementptr i8, ptr %.277133, i64 %.282132 ; 3 uses
  %i.ad = getelementptr i8, ptr %4, i64 %.282132  ; 3 uses
  %bound0 = icmp ult ptr %.277133, %i.ad
  %bound0.a = icmp ult ptr %4, %i.ac
  %found.conflict = and i1 %bound0, %bound0.a
  %6 = getelementptr i8, ptr %.2134, i64 %.282132 ; 2 uses
  %bound0163 = icmp ult ptr %.277133, %6
  %bound1164 = icmp ult ptr %.2134, %i.ac
  %found.conflict165 = and i1 %bound0163, %bound1164
  %conflict.rdx = or i1 %found.conflict, %found.conflict165
  %7 = getelementptr i8, ptr %i.b, i64 %.282132   ; 2 uses
  %bound0166 = icmp ult ptr %.277133, %7
  %bound1167 = icmp ult ptr %i.b, %i.ac
  %found.conflict168 = and i1 %bound0166, %bound1167
  %conflict.rdx169 = or i1 %conflict.rdx, %found.conflict168
  %bound0170 = icmp ult ptr %4, %6
  %bound1171 = icmp ult ptr %.2134, %i.ad
  %found.conflict172 = and i1 %bound0170, %bound1171
  %conflict.rdx173 = or i1 %conflict.rdx169, %found.conflict172
  %bound0174 = icmp ult ptr %4, %7
  %bound1175 = icmp ult ptr %i.b, %i.ad
  %found.conflict176 = and i1 %bound0174, %bound1175
  %conflict.rdx177 = or i1 %conflict.rdx173, %found.conflict176
  br i1 %conflict.rdx177, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check178 = icmp ult i64 %.282132, 32
  br i1 %min.iters.check178, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ae = and i64 %.282132, 28
  %n.vec = and i64 %.282132, -32                  ; 5 uses
  %i.af = or disjoint i64 %i.ab, %n.vec           ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.2134, i64 %index ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load = load <16 x i8>, ptr %i.ag, align 1, !tbaa !82, !alias.scope !417
  %wide.load179 = load <16 x i8>, ptr %i.ah, align 1, !tbaa !82, !alias.scope !417
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %wide.load180 = load <16 x i8>, ptr %i.ai, align 16, !tbaa !82, !alias.scope !418
  %wide.load181 = load <16 x i8>, ptr %i.aj, align 16, !tbaa !82, !alias.scope !418
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 %index ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %wide.load182 = load <16 x i8>, ptr %i.ak, align 1, !tbaa !82, !alias.scope !419, !noalias !420
  %wide.load183 = load <16 x i8>, ptr %i.al, align 1, !tbaa !82, !alias.scope !419, !noalias !420
  %i.am = xor <16 x i8> %wide.load182, %wide.load180
  %i.an = xor <16 x i8> %wide.load183, %wide.load181
  %i.ao = getelementptr inbounds nuw i8, ptr %.277133, i64 %index ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store <16 x i8> %i.am, ptr %i.ao, align 1, !tbaa !82, !alias.scope !421, !noalias !422
  store <16 x i8> %i.an, ptr %i.ap, align 1, !tbaa !82, !alias.scope !421, !noalias !422
  store <16 x i8> %wide.load, ptr %i.ak, align 1, !tbaa !82, !alias.scope !419, !noalias !420
  store <16 x i8> %wide.load179, ptr %i.al, align 1, !tbaa !82, !alias.scope !419, !noalias !420
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !410

middle.block:                                     ; preds = %vector.body
  %ind.escape = add i64 %i.af, -1
  %cmp.n = icmp eq i64 %.282132, %n.vec
  br i1 %cmp.n, label %iter.check209, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ae, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !91

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec184 = and i64 %.282132, -4                ; 4 uses
  %i.ar = add i64 %i.ab, %n.vec184                ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index185 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next189, %vec.epilog.vector.body ] ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.2134, i64 %index185
  %wide.load186 = load <4 x i8>, ptr %i.as, align 1, !tbaa !82, !alias.scope !417
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 %index185
  %wide.load187 = load <4 x i8>, ptr %i.at, align 4, !tbaa !82, !alias.scope !418
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 %index185 ; 2 uses
  %wide.load188 = load <4 x i8>, ptr %i.au, align 1, !tbaa !82, !alias.scope !419, !noalias !420
  %i.av = xor <4 x i8> %wide.load188, %wide.load187
  %i.aw = getelementptr inbounds nuw i8, ptr %.277133, i64 %index185
  store <4 x i8> %i.av, ptr %i.aw, align 1, !tbaa !82, !alias.scope !421, !noalias !422
  store <4 x i8> %wide.load186, ptr %i.au, align 1, !tbaa !82, !alias.scope !419, !noalias !420
  %index.next189 = add nuw i64 %index185, 4       ; 2 uses
  %i.ax = icmp eq i64 %index.next189, %n.vec184
  br i1 %i.ax, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !411

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %ind.escape190 = add i64 %i.ar, -1
  %cmp.n191 = icmp eq i64 %.282132, %n.vec184
  br i1 %cmp.n191, label %iter.check209, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.ab, %iter.check ], [ %i.ab, %vector.memcheck ], [ %i.af, %vec.epilog.iter.check ], [ %i.ar, %vec.epilog.middle.block ] ; 3 uses
  %.173113.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec184, %vec.epilog.middle.block ] ; 7 uses
  %.neg = or disjoint i64 %.173113.ph, 1
  %xtraiter = and i64 %.282132, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.ay = getelementptr inbounds nuw i8, ptr %.2134, i64 %.173113.ph
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !82
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 %.173113.ph
  %i.bb = load i8, ptr %i.ba, align 4, !tbaa !82
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 %.173113.ph ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !82
  %i.be = xor i8 %i.bd, %i.bb
  %i.bf = getelementptr inbounds nuw i8, ptr %.277133, i64 %.173113.ph
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !82
  store i8 %i.az, ptr %i.bc, align 1, !tbaa !82
  %i.bg = or disjoint i64 %.173113.ph, 1
  %indvars.iv.next.prol = add i64 %indvars.iv.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %.173113.unr = phi i64 [ %.173113.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bg, %vec.epilog.scalar.ph.prol ]
  %i.bh = icmp eq i64 %.282132, %.neg
  br i1 %i.bh, label %iter.check209, label %vec.epilog.scalar.ph

iter.check209.loopexit.unr-lcssa:                 ; preds = %vec.epilog.scalar.ph
  %indvars.iv.next = add i64 %indvars.iv, 1
  br label %iter.check209

iter.check209:                                    ; preds = %iter.check209.loopexit.unr-lcssa, %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.middle.block, %middle.block
  %indvars.iv.lcssa = phi i64 [ %ind.escape190, %vec.epilog.middle.block ], [ %ind.escape, %middle.block ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.prol.loopexit ], [ %indvars.iv.next, %iter.check209.loopexit.unr-lcssa ] ; 3 uses
  %i.bi = sub i64 16, %.282132                    ; 7 uses
  %min.iters.check196 = icmp ult i64 %i.bi, 8
  %i.bj = sub i64 %.2134195, %i.a
  %diff.check = icmp ugt i64 %i.bj, -32
  %or.cond = or i1 %min.iters.check196, %diff.check
  br i1 %or.cond, label %.lr.ph115.preheader, label %vector.main.loop.iter.check198

vector.main.loop.iter.check198:                   ; preds = %iter.check209
  %min.iters.check199 = icmp ult i64 %i.bi, 32
  br i1 %min.iters.check199, label %vec.epilog.ph213, label %vector.ph200

vector.ph200:                                     ; preds = %vector.main.loop.iter.check198
  %i.bk = and i64 %i.bi, 24
  %n.vec201 = and i64 %i.bi, -32                  ; 4 uses
  %i.bl = add i64 %.282132, %n.vec201
  br label %vector.body202

vector.body202:                                   ; preds = %vector.ph200, %vector.body202
  %index203 = phi i64 [ 0, %vector.ph200 ], [ %index.next206, %vector.body202 ] ; 2 uses
  %i.bm = add nuw i64 %.282132, %index203         ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.2134, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %wide.load204 = load <16 x i8>, ptr %i.bn, align 1, !tbaa !82
  %wide.load205 = load <16 x i8>, ptr %i.bo, align 1, !tbaa !82
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 %i.bm ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store <16 x i8> %wide.load204, ptr %i.bp, align 1, !tbaa !82
  store <16 x i8> %wide.load205, ptr %i.bq, align 1, !tbaa !82
  %index.next206 = add nuw i64 %index203, 32      ; 2 uses
  %i.br = icmp eq i64 %index.next206, %n.vec201
  br i1 %i.br, label %middle.block207, label %vector.body202, !llvm.loop !412

middle.block207:                                  ; preds = %vector.body202
  %cmp.n208 = icmp eq i64 %i.bi, %n.vec201
  br i1 %cmp.n208, label %.loopexit, label %vec.epilog.iter.check210

vec.epilog.iter.check210:                         ; preds = %middle.block207
  %min.epilog.iters.check212 = icmp eq i64 %i.bk, 0
  br i1 %min.epilog.iters.check212, label %.lr.ph115.preheader, label %vec.epilog.ph213, !prof !92

vec.epilog.ph213:                                 ; preds = %vector.main.loop.iter.check198, %vec.epilog.iter.check210
  %vec.epilog.resume.val214 = phi i64 [ %n.vec201, %vec.epilog.iter.check210 ], [ 0, %vector.main.loop.iter.check198 ]
  %n.vec215 = and i64 %i.bi, -8                   ; 3 uses
  %i.bs = add i64 %.282132, %n.vec215
  br label %vec.epilog.vector.body216

vec.epilog.vector.body216:                        ; preds = %vec.epilog.vector.body216, %vec.epilog.ph213
  %index217 = phi i64 [ %vec.epilog.resume.val214, %vec.epilog.ph213 ], [ %index.next219, %vec.epilog.vector.body216 ] ; 2 uses
  %i.bt = add nuw i64 %.282132, %index217         ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.2134, i64 %i.bt
  %wide.load218 = load <8 x i8>, ptr %i.bu, align 1, !tbaa !82
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 %i.bt
  store <8 x i8> %wide.load218, ptr %i.bv, align 1, !tbaa !82
  %index.next219 = add nuw i64 %index217, 8       ; 2 uses
  %i.bw = icmp eq i64 %index.next219, %n.vec215
  br i1 %i.bw, label %vec.epilog.middle.block220, label %vec.epilog.vector.body216, !llvm.loop !413

vec.epilog.middle.block220:                       ; preds = %vec.epilog.vector.body216
  %cmp.n221 = icmp eq i64 %i.bi, %n.vec215
  br i1 %cmp.n221, label %.loopexit, label %.lr.ph115.preheader

.lr.ph115.preheader:                              ; preds = %iter.check209, %vec.epilog.iter.check210, %vec.epilog.middle.block220
  %.274114.ph = phi i64 [ %.282132, %iter.check209 ], [ %i.bl, %vec.epilog.iter.check210 ], [ %i.bs, %vec.epilog.middle.block220 ] ; 4 uses
  %i.bx = sub i64 %indvars.iv.lcssa, %.274114.ph
  %xtraiter229 = and i64 %i.bx, 3                 ; 2 uses
  %lcmp.mod230.not = icmp eq i64 %xtraiter229, 0
  br i1 %lcmp.mod230.not, label %.lr.ph115.prol.loopexit, label %.lr.ph115.prol

.lr.ph115.prol:                                   ; preds = %.lr.ph115.preheader, %.lr.ph115.prol
  %.274114.prol = phi i64 [ %i.cb, %.lr.ph115.prol ], [ %.274114.ph, %.lr.ph115.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph115.prol ], [ 0, %.lr.ph115.preheader ]
  %i.by = getelementptr inbounds nuw i8, ptr %.2134, i64 %.274114.prol
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !82
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 %.274114.prol
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !82
  %i.cb = add nuw nsw i64 %.274114.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter229
  br i1 %prol.iter.cmp.not, label %.lr.ph115.prol.loopexit, label %.lr.ph115.prol, !llvm.loop !414
end_hunk_0
begin_hunk_1_@CRYPTO_cbc128_decrypt:bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 2 uses
  %.173113 = phi i64 [ %i.cv, %vec.epilog.scalar.ph ], [ %.173113.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.2134, i64 %.173113
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !82
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 %.173113
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !82
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 %.173113 ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !82
  %i.ck = xor i8 %i.cj, %i.ch
  %i.cl = getelementptr inbounds nuw i8, ptr %.277133, i64 %.173113
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !82
  store i8 %i.cf, ptr %i.ci, align 1, !tbaa !82
  %i.cm = add nuw nsw i64 %.173113, 1             ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.2134, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !82
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cm
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !82
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 %i.cm ; 2 uses
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !82
  %i.ct = xor i8 %i.cs, %i.cq
  %i.cu = getelementptr inbounds nuw i8, ptr %.277133, i64 %i.cm
  store i8 %i.ct, ptr %i.cu, align 1, !tbaa !82
  store i8 %i.co, ptr %i.cr, align 1, !tbaa !82
  %i.cv = add nuw nsw i64 %.173113, 2             ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.cv, %.282132
  %indvars.iv.next.1 = add i64 %indvars.iv, 2
  br i1 %exitcond.not.1, label %iter.check209.loopexit.unr-lcssa, label %vec.epilog.scalar.ph, !llvm.loop !415

.lr.ph115:                                        ; preds = %.lr.ph115.prol.loopexit, %.lr.ph115
  %.274114 = phi i64 [ %i.dl, %.lr.ph115 ], [ %.274114.unr, %.lr.ph115.prol.loopexit ] ; 6 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.2134, i64 %.274114
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !82
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 %.274114
  store i8 %i.cx, ptr %i.cy, align 1, !tbaa !82
  %i.cz = add nuw nsw i64 %.274114, 1             ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.2134, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !82
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 %i.cz
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !82
  %i.dd = add nuw nsw i64 %.274114, 2             ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.2134, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !82
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 %i.dd
  store i8 %i.df, ptr %i.dg, align 1, !tbaa !82
  %i.dh = add nuw nsw i64 %.274114, 3             ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.2134, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !82
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 %i.dh
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !82
  %i.dl = add nuw nsw i64 %.274114, 4             ; 2 uses
  %exitcond123.not.3 = icmp eq i64 %i.dl, %indvars.iv.lcssa
  br i1 %exitcond123.not.3, label %.loopexit, label %.lr.ph115, !llvm.loop !416

.loopexit:                                        ; preds = %.lr.ph115.prol.loopexit, %.lr.ph115, %middle.block207, %vec.epilog.middle.block220, %.loopexit97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %.loopexit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @CRYPTO_cfb128_encrypt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef captures(none) %5, i32 noundef %6, ptr nofree noundef readonly captures(none) %7) local_unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %5, align 4, !tbaa !84     ; 5 uses
  %.not = icmp eq i32 %6, 0
  %i.b = icmp ne i32 %i.a, 0
  %i.c = icmp ne i64 %2, 0
  %i.d = and i1 %i.b, %i.c                        ; 2 uses
  br i1 %.not, label %.preheader114, label %.preheader117

.preheader117:                                    ; preds = %bb.a
  br i1 %i.d, label %.lr.ph, label %.preheader116

.preheader114:                                    ; preds = %bb.a
  br i1 %i.d, label %.lr.ph143, label %.preheader

.preheader116:                                    ; preds = %.lr.ph, %.preheader117
  %.0101.lcssa = phi i32 [ %i.a, %.preheader117 ], [ %i.ae, %.lr.ph ] ; 4 uses
  %.097.lcssa = phi i64 [ %2, %.preheader117 ], [ %i.ac, %.lr.ph ] ; 3 uses
  %.093.lcssa = phi ptr [ %1, %.preheader117 ], [ %i.ab, %.lr.ph ] ; 4 uses
  %.0.lcssa = phi ptr [ %0, %.preheader117 ], [ %i.v, %.lr.ph ] ; 4 uses
  %i.e = icmp ugt i64 %.097.lcssa, 15
  br i1 %i.e, label %.lr.ph131.peel, label %._crit_edge132

.lr.ph131.peel:                                   ; preds = %.preheader116
  tail call void %7(ptr noundef %4, ptr noundef %4, ptr noundef %3) #36
  %i.f = icmp ult i32 %.0101.lcssa, 16
  br i1 %i.f, label %.lr.ph126.peel, label %._crit_edge.peel

.lr.ph126.peel:                                   ; preds = %.lr.ph131.peel
  %i.g = zext nneg i32 %.0101.lcssa to i64        ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 %i.g ; 2 uses
  %.0.copyload.i.peel = load i64, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 %i.g
  %.0.copyload.i111.peel = load i64, ptr %i.i, align 1
  %i.j = xor i64 %.0.copyload.i111.peel, %.0.copyload.i.peel ; 2 uses
  store i64 %i.j, ptr %i.h, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %.093.lcssa, i64 %i.g
  store i64 %i.j, ptr %i.k, align 1
  %i.l = icmp ult i32 %.0101.lcssa, 8
  br i1 %i.l, label %.lr.ph126.1.peel, label %._crit_edge.peel

.lr.ph126.1.peel:                                 ; preds = %.lr.ph126.peel
  %indvars.iv.next.peel = add nuw nsw i64 %i.g, 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.next.peel ; 2 uses
  %.0.copyload.i.1.peel = load i64, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 %indvars.iv.next.peel
  %.0.copyload.i111.1.peel = load i64, ptr %i.n, align 1
  %i.o = xor i64 %.0.copyload.i111.1.peel, %.0.copyload.i.1.peel ; 2 uses
  store i64 %i.o, ptr %i.m, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %.093.lcssa, i64 %indvars.iv.next.peel
  store i64 %i.o, ptr %i.p, align 1
  br label %._crit_edge.peel

._crit_edge.peel:                                 ; preds = %.lr.ph126.peel, %.lr.ph126.1.peel, %.lr.ph131.peel
  %i.q = add i64 %.097.lcssa, -16                 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.093.lcssa, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 16 ; 2 uses
  %i.t = icmp ugt i64 %i.q, 15
  br i1 %i.t, label %.lr.ph131.preheader.peel.newph, label %._crit_edge132

.lr.ph131.preheader.peel.newph:                   ; preds = %._crit_edge.peel
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %.lr.ph131

.lr.ph:                                           ; preds = %.preheader117, %.lr.ph
  %.0121 = phi ptr [ %i.v, %.lr.ph ], [ %0, %.preheader117 ] ; 2 uses
  %.093120 = phi ptr [ %i.ab, %.lr.ph ], [ %1, %.preheader117 ] ; 2 uses
  %.097119 = phi i64 [ %i.ac, %.lr.ph ], [ %2, %.preheader117 ]
  %.0101118 = phi i32 [ %i.ae, %.lr.ph ], [ %i.a, %.preheader117 ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0121, i64 1 ; 2 uses
  %i.w = load i8, ptr %.0121, align 1, !tbaa !82
  %i.x = zext i32 %.0101118 to i64
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 %i.x ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !82
  %i.aa = xor i8 %i.z, %i.w                       ; 2 uses
  store i8 %i.aa, ptr %i.y, align 1, !tbaa !82
  %i.ab = getelementptr inbounds nuw i8, ptr %.093120, i64 1 ; 2 uses
  store i8 %i.aa, ptr %.093120, align 1, !tbaa !82
  %i.ac = add i64 %.097119, -1                    ; 3 uses
  %i.ad = add i32 %.0101118, 1
  %i.ae = and i32 %i.ad, 15                       ; 3 uses
  %i.af = icmp ne i32 %i.ae, 0
  %i.ag = icmp ne i64 %i.ac, 0
  %i.ah = select i1 %i.af, i1 %i.ag, i1 false
  br i1 %i.ah, label %.lr.ph, label %.preheader116, !llvm.loop !5

.lr.ph131:                                        ; preds = %.lr.ph131.preheader.peel.newph, %.lr.ph131
  %.1130 = phi ptr [ %i.ao, %.lr.ph131 ], [ %i.s, %.lr.ph131.preheader.peel.newph ] ; 3 uses
  %.194129 = phi ptr [ %i.an, %.lr.ph131 ], [ %i.r, %.lr.ph131.preheader.peel.newph ] ; 3 uses
  %.198128 = phi i64 [ %i.am, %.lr.ph131 ], [ %i.q, %.lr.ph131.preheader.peel.newph ]
  tail call void %7(ptr noundef %4, ptr noundef %4, ptr noundef %3) #36
  %.0.copyload.i = load i64, ptr %4, align 1
  %.0.copyload.i111 = load i64, ptr %.1130, align 1
  %i.ai = xor i64 %.0.copyload.i111, %.0.copyload.i ; 2 uses
  store i64 %i.ai, ptr %4, align 1
  store i64 %i.ai, ptr %.194129, align 1
  %.0.copyload.i.1 = load i64, ptr %i.u, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %.1130, i64 8
  %.0.copyload.i111.1 = load i64, ptr %i.aj, align 1
  %i.ak = xor i64 %.0.copyload.i111.1, %.0.copyload.i.1 ; 2 uses
  store i64 %i.ak, ptr %i.u, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %.194129, i64 8
  store i64 %i.ak, ptr %i.al, align 1
  %i.am = add i64 %.198128, -16                   ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.194129, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.1130, i64 16 ; 2 uses
  %i.ap = icmp ugt i64 %i.am, 15
  br i1 %i.ap, label %.lr.ph131, label %._crit_edge132, !llvm.loop !423

._crit_edge132:                                   ; preds = %._crit_edge.peel, %.lr.ph131, %.preheader116
  %.1102.lcssa = phi i32 [ %.0101.lcssa, %.preheader116 ], [ 0, %.lr.ph131 ], [ 0, %._crit_edge.peel ] ; 8 uses
  %.198.lcssa = phi i64 [ %.097.lcssa, %.preheader116 ], [ %i.q, %._crit_edge.peel ], [ %i.am, %.lr.ph131 ] ; 10 uses
  %.194.lcssa = phi ptr [ %.093.lcssa, %.preheader116 ], [ %i.r, %._crit_edge.peel ], [ %i.an, %.lr.ph131 ] ; 6 uses
  %.1.lcssa = phi ptr [ %.0.lcssa, %.preheader116 ], [ %i.s, %._crit_edge.peel ], [ %i.ao, %.lr.ph131 ] ; 6 uses
  %.not109 = icmp eq i64 %.198.lcssa, 0
  br i1 %.not109, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %._crit_edge132
  tail call void %7(ptr noundef %4, ptr noundef %4, ptr noundef %3) #36
  %min.iters.check = icmp samesign ult i64 %.198.lcssa, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.aq = add nsw i64 %.198.lcssa, -1             ; 2 uses
  %i.ar = trunc i64 %i.aq to i32
  %i.as = xor i32 %.1102.lcssa, -1
  %i.at = icmp ult i32 %i.as, %i.ar
  %i.au = icmp ugt i64 %i.aq, 4294967295
  %i.av = or i1 %i.at, %i.au
  br i1 %i.av, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.aw = zext i32 %.1102.lcssa to i64            ; 4 uses
  %i.ax = getelementptr i8, ptr %4, i64 %i.aw     ; 2 uses
  %i.ay = add nuw nsw i64 %.198.lcssa, %i.aw      ; 3 uses
  %i.az = getelementptr i8, ptr %4, i64 %i.ay     ; 2 uses
  %i.ba = getelementptr i8, ptr %.194.lcssa, i64 %i.aw ; 2 uses
  %i.bb = getelementptr i8, ptr %.194.lcssa, i64 %i.ay ; 2 uses
  %bound0 = icmp ult ptr %i.ax, %i.bb
  %bound1 = icmp ult ptr %i.ba, %i.az
  %found.conflict = and i1 %bound0, %bound1
  %8 = getelementptr i8, ptr %.1.lcssa, i64 %i.aw ; 2 uses
  %9 = getelementptr i8, ptr %.1.lcssa, i64 %i.ay ; 2 uses
  %bound0234 = icmp ult ptr %i.ax, %9
  %bound1235 = icmp ult ptr %8, %i.az
  %found.conflict236 = and i1 %bound0234, %bound1235
  %conflict.rdx = or i1 %found.conflict, %found.conflict236
  %bound0237 = icmp ult ptr %i.ba, %9
  %bound1238 = icmp ult ptr %8, %i.bb
  %found.conflict239 = and i1 %bound0237, %bound1238
  %conflict.rdx240 = or i1 %conflict.rdx, %found.conflict239
  br i1 %conflict.rdx240, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %n.vec245 = and i64 %.198.lcssa, 12             ; 3 uses
  %i.bc = and i64 %.198.lcssa, 3
  %i.bd = trunc nuw nsw i64 %n.vec245 to i32
  %i.be = add i32 %.1102.lcssa, %i.bd             ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index246 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next249, %vec.epilog.vector.body ] ; 2 uses
  %i.bf = trunc i64 %index246 to i32
  %i.bg = add i32 %.1102.lcssa, %i.bf
  %i.bh = zext i32 %i.bg to i64                   ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 %i.bh
  %wide.load247 = load <4 x i8>, ptr %i.bi, align 1, !tbaa !82, !alias.scope !437
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 %i.bh ; 2 uses
  %wide.load248 = load <4 x i8>, ptr %i.bj, align 1, !tbaa !82, !alias.scope !438, !noalias !439
  %i.bk = xor <4 x i8> %wide.load248, %wide.load247 ; 2 uses
  store <4 x i8> %i.bk, ptr %i.bj, align 1, !tbaa !82, !alias.scope !438, !noalias !439
  %i.bl = getelementptr inbounds nuw i8, ptr %.194.lcssa, i64 %i.bh
  store <4 x i8> %i.bk, ptr %i.bl, align 1, !tbaa !82, !alias.scope !440, !noalias !437
  %index.next249 = add nuw i64 %index246, 4       ; 2 uses
  %i.bm = icmp eq i64 %index.next249, %n.vec245
  br i1 %i.bm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !428

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n250 = icmp eq i64 %.198.lcssa, %n.vec245
  br i1 %cmp.n250, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.middle.block
  %.299138.ph = phi i64 [ %.198.lcssa, %vector.scevcheck ], [ %.198.lcssa, %vector.memcheck ], [ %.198.lcssa, %iter.check ], [ %i.bc, %vec.epilog.middle.block ] ; 4 uses
  %.3104137.ph = phi i32 [ %.1102.lcssa, %vector.scevcheck ], [ %.1102.lcssa, %vector.memcheck ], [ %.1102.lcssa, %iter.check ], [ %i.be, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.299138.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.bn = add nsw i64 %.299138.ph, -1
  %i.bo = zext i32 %.3104137.ph to i64            ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !82
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 %i.bo ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !82
  %i.bt = xor i8 %i.bs, %i.bq                     ; 2 uses
  store i8 %i.bt, ptr %i.br, align 1, !tbaa !82
  %i.bu = getelementptr inbounds nuw i8, ptr %.194.lcssa, i64 %i.bo
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !82
  %i.bv = add i32 %.3104137.ph, 1                 ; 2 uses
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa320.unr = phi i32 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.bv, %vec.epilog.scalar.ph.prol ]
  %.299138.unr = phi i64 [ %.299138.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bn, %vec.epilog.scalar.ph.prol ]
  %.3104137.unr = phi i32 [ %.3104137.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bv, %vec.epilog.scalar.ph.prol ]
  %i.bw = icmp eq i64 %.299138.ph, 1
  br i1 %i.bw, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.299138 = phi i64 [ %i.cf, %vec.epilog.scalar.ph ], [ %.299138.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %.3104137 = phi i32 [ %i.cn, %vec.epilog.scalar.ph ], [ %.3104137.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %i.bx = zext i32 %.3104137 to i64               ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !82
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 %i.bx ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !82
  %i.cc = xor i8 %i.cb, %i.bz                     ; 2 uses
  store i8 %i.cc, ptr %i.ca, align 1, !tbaa !82
  %i.cd = getelementptr inbounds nuw i8, ptr %.194.lcssa, i64 %i.bx
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !82
  %i.ce = add i32 %.3104137, 1
  %i.cf = add nsw i64 %.299138, -2                ; 2 uses
  %i.cg = zext i32 %i.ce to i64                   ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !82
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 %i.cg ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !82
  %i.cl = xor i8 %i.ck, %i.ci                     ; 2 uses
  store i8 %i.cl, ptr %i.cj, align 1, !tbaa !82
  %i.cm = getelementptr inbounds nuw i8, ptr %.194.lcssa, i64 %i.cg
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !82
  %i.cn = add i32 %.3104137, 2                    ; 2 uses
  %.not110.1 = icmp eq i64 %i.cf, 0
  br i1 %.not110.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !429

.preheader:                                       ; preds = %.lr.ph143, %.preheader114
  %.5106.lcssa = phi i32 [ %i.a, %.preheader114 ], [ %i.do, %.lr.ph143 ] ; 4 uses
  %.3100.lcssa = phi i64 [ %2, %.preheader114 ], [ %i.dm, %.lr.ph143 ] ; 3 uses
  %.295.lcssa = phi ptr [ %1, %.preheader114 ], [ %i.dl, %.lr.ph143 ] ; 4 uses
  %.2.lcssa = phi ptr [ %0, %.preheader114 ], [ %i.di, %.lr.ph143 ] ; 4 uses
  %i.co = icmp ugt i64 %.3100.lcssa, 15
  br i1 %i.co, label %.lr.ph156.peel, label %._crit_edge157

.lr.ph156.peel:                                   ; preds = %.preheader
  tail call void %7(ptr noundef %4, ptr noundef %4, ptr noundef %3) #36
  %i.cp = icmp ult i32 %.5106.lcssa, 16
  br i1 %i.cp, label %.lr.ph150.peel, label %._crit_edge151.peel

.lr.ph150.peel:                                   ; preds = %.lr.ph156.peel
  %i.cq = zext nneg i32 %.5106.lcssa to i64       ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 %i.cq
  %.0.copyload.i112.peel = load i64, ptr %i.cr, align 1 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.295.lcssa, i64 %i.cq
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 %i.cq ; 2 uses
  %.0.copyload.i113.peel = load i64, ptr %i.ct, align 1
  %i.cu = xor i64 %.0.copyload.i113.peel, %.0.copyload.i112.peel
  store i64 %i.cu, ptr %i.cs, align 1
  store i64 %.0.copyload.i112.peel, ptr %i.ct, align 1
  %i.cv = icmp ult i32 %.5106.lcssa, 8
  br i1 %i.cv, label %.lr.ph150.1.peel, label %._crit_edge151.peel

.lr.ph150.1.peel:                                 ; preds = %.lr.ph150.peel
  %indvars.iv.next182.peel = add nuw nsw i64 %i.cq, 8 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 %indvars.iv.next182.peel
  %.0.copyload.i112.1.peel = load i64, ptr %i.cw, align 1 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.295.lcssa, i64 %indvars.iv.next182.peel
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.next182.peel ; 2 uses
  %.0.copyload.i113.1.peel = load i64, ptr %i.cy, align 1
  %i.cz = xor i64 %.0.copyload.i113.1.peel, %.0.copyload.i112.1.peel
  store i64 %i.cz, ptr %i.cx, align 1
  store i64 %.0.copyload.i112.1.peel, ptr %i.cy, align 1
  br label %._crit_edge151.peel

._crit_edge151.peel:                              ; preds = %.lr.ph150.peel, %.lr.ph150.1.peel, %.lr.ph156.peel
  %i.da = add i64 %.3100.lcssa, -16               ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.295.lcssa, i64 16 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 16 ; 2 uses
  %i.dd = icmp ugt i64 %i.da, 15
  br i1 %i.dd, label %.lr.ph156.preheader.peel.newph, label %._crit_edge157

.lr.ph156.preheader.peel.newph:                   ; preds = %._crit_edge151.peel
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %.lr.ph156

.lr.ph143:                                        ; preds = %.preheader114, %.lr.ph143
  %.2142 = phi ptr [ %i.di, %.lr.ph143 ], [ %0, %.preheader114 ] ; 2 uses
  %.295141 = phi ptr [ %i.dl, %.lr.ph143 ], [ %1, %.preheader114 ] ; 2 uses
  %.3100140 = phi i64 [ %i.dm, %.lr.ph143 ], [ %2, %.preheader114 ]
  %.5106139 = phi i32 [ %i.do, %.lr.ph143 ], [ %i.a, %.preheader114 ] ; 2 uses
  %i.df = zext i32 %.5106139 to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 %i.df ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !82
  %i.di = getelementptr inbounds nuw i8, ptr %.2142, i64 1 ; 2 uses
  %i.dj = load i8, ptr %.2142, align 1, !tbaa !82 ; 2 uses
  %i.dk = xor i8 %i.dj, %i.dh
  %i.dl = getelementptr inbounds nuw i8, ptr %.295141, i64 1 ; 2 uses
  store i8 %i.dk, ptr %.295141, align 1, !tbaa !82
  store i8 %i.dj, ptr %i.dg, align 1, !tbaa !82
  %i.dm = add i64 %.3100140, -1                   ; 3 uses
  %i.dn = add i32 %.5106139, 1
  %i.do = and i32 %i.dn, 15                       ; 3 uses
  %i.dp = icmp ne i32 %i.do, 0
  %i.dq = icmp ne i64 %i.dm, 0
  %i.dr = select i1 %i.dp, i1 %i.dq, i1 false
  br i1 %i.dr, label %.lr.ph143, label %.preheader, !llvm.loop !6

.lr.ph156:                                        ; preds = %.lr.ph156.preheader.peel.newph, %.lr.ph156
  %.3155 = phi ptr [ %i.dy, %.lr.ph156 ], [ %i.dc, %.lr.ph156.preheader.peel.newph ] ; 3 uses
  %.396154 = phi ptr [ %i.dx, %.lr.ph156 ], [ %i.db, %.lr.ph156.preheader.peel.newph ] ; 3 uses
  %.4153 = phi i64 [ %i.dw, %.lr.ph156 ], [ %i.da, %.lr.ph156.preheader.peel.newph ]
  tail call void %7(ptr noundef %4, ptr noundef %4, ptr noundef %3) #36
  %.0.copyload.i112 = load i64, ptr %.3155, align 1 ; 2 uses
  %.0.copyload.i113 = load i64, ptr %4, align 1
  %i.ds = xor i64 %.0.copyload.i113, %.0.copyload.i112
  store i64 %i.ds, ptr %.396154, align 1
  store i64 %.0.copyload.i112, ptr %4, align 1
  %i.dt = getelementptr inbounds nuw i8, ptr %.3155, i64 8
  %.0.copyload.i112.1 = load i64, ptr %i.dt, align 1 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.396154, i64 8
  %.0.copyload.i113.1 = load i64, ptr %i.de, align 1
  %i.dv = xor i64 %.0.copyload.i113.1, %.0.copyload.i112.1
  store i64 %i.dv, ptr %i.du, align 1
  store i64 %.0.copyload.i112.1, ptr %i.de, align 1
  %i.dw = add i64 %.4153, -16                     ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.396154, i64 16 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.3155, i64 16 ; 2 uses
  %i.dz = icmp ugt i64 %i.dw, 15
  br i1 %i.dz, label %.lr.ph156, label %._crit_edge157, !llvm.loop !430

._crit_edge157:                                   ; preds = %._crit_edge151.peel, %.lr.ph156, %.preheader
  %.6.lcssa = phi i32 [ %.5106.lcssa, %.preheader ], [ 0, %.lr.ph156 ], [ 0, %._crit_edge151.peel ] ; 8 uses
  %.4.lcssa = phi i64 [ %.3100.lcssa, %.preheader ], [ %i.da, %._crit_edge151.peel ], [ %i.dw, %.lr.ph156 ] ; 10 uses
  %.396.lcssa = phi ptr [ %.295.lcssa, %.preheader ], [ %i.db, %._crit_edge151.peel ], [ %i.dx, %.lr.ph156 ] ; 6 uses
  %.3.lcssa = phi ptr [ %.2.lcssa, %.preheader ], [ %i.dc, %._crit_edge151.peel ], [ %i.dy, %.lr.ph156 ] ; 6 uses
  %.not107 = icmp eq i64 %.4.lcssa, 0
  br i1 %.not107, label %.loopexit, label %iter.check296

iter.check296:                                    ; preds = %._crit_edge157
  tail call void %7(ptr noundef %4, ptr noundef %4, ptr noundef %3) #36
  %min.iters.check270 = icmp samesign ult i64 %.4.lcssa, 4
  br i1 %min.iters.check270, label %vec.epilog.scalar.ph298.preheader, label %vector.scevcheck252

vector.scevcheck252:                              ; preds = %iter.check296
  %i.ea = add nsw i64 %.4.lcssa, -1               ; 2 uses
  %i.eb = trunc i64 %i.ea to i32
  %i.ec = xor i32 %.6.lcssa, -1
  %i.ed = icmp ult i32 %i.ec, %i.eb
  %i.ee = icmp ugt i64 %i.ea, 4294967295
  %i.ef = or i1 %i.ed, %i.ee
  br i1 %i.ef, label %vec.epilog.scalar.ph298.preheader, label %vector.memcheck271

vector.memcheck271:                               ; preds = %vector.scevcheck252
  %i.eg = zext i32 %.6.lcssa to i64               ; 4 uses
  %i.eh = getelementptr i8, ptr %.396.lcssa, i64 %i.eg ; 2 uses
  %i.ei = add nuw nsw i64 %.4.lcssa, %i.eg        ; 3 uses
  %i.ej = getelementptr i8, ptr %.396.lcssa, i64 %i.ei ; 2 uses
  %i.ek = getelementptr i8, ptr %4, i64 %i.eg     ; 2 uses
  %i.el = getelementptr i8, ptr %4, i64 %i.ei     ; 2 uses
  %bound0272 = icmp ult ptr %i.eh, %i.el
  %bound1273 = icmp ult ptr %i.ek, %i.ej
  %found.conflict274 = and i1 %bound0272, %bound1273
  %10 = getelementptr i8, ptr %.3.lcssa, i64 %i.eg ; 2 uses
  %11 = getelementptr i8, ptr %.3.lcssa, i64 %i.ei ; 2 uses
  %bound0275 = icmp ult ptr %i.eh, %11
  %bound1276 = icmp ult ptr %10, %i.ej
  %found.conflict277 = and i1 %bound0275, %bound1276
  %conflict.rdx278 = or i1 %found.conflict274, %found.conflict277
  %bound0279 = icmp ult ptr %i.ek, %11
  %bound1280 = icmp ult ptr %10, %i.el
  %found.conflict281 = and i1 %bound0279, %bound1280
  %conflict.rdx282 = or i1 %conflict.rdx278, %found.conflict281
  br i1 %conflict.rdx282, label %vec.epilog.scalar.ph298.preheader, label %vec.epilog.ph300

vec.epilog.ph300:                                 ; preds = %vector.memcheck271
  %n.vec302 = and i64 %.4.lcssa, 12               ; 3 uses
  %i.em = and i64 %.4.lcssa, 3
  %i.en = trunc nuw nsw i64 %n.vec302 to i32
  %i.eo = add i32 %.6.lcssa, %i.en                ; 2 uses
  br label %vec.epilog.vector.body303

vec.epilog.vector.body303:                        ; preds = %vec.epilog.vector.body303, %vec.epilog.ph300
  %index304 = phi i64 [ 0, %vec.epilog.ph300 ], [ %index.next307, %vec.epilog.vector.body303 ] ; 2 uses
  %i.ep = trunc i64 %index304 to i32
  %i.eq = add i32 %.6.lcssa, %i.ep
  %i.er = zext i32 %i.eq to i64                   ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 %i.er ; 2 uses
  %wide.load305 = load <4 x i8>, ptr %i.es, align 1, !tbaa !82, !alias.scope !441, !noalias !442
  %i.et = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 %i.er
  %wide.load306 = load <4 x i8>, ptr %i.et, align 1, !tbaa !82, !alias.scope !442 ; 2 uses
  %i.eu = xor <4 x i8> %wide.load306, %wide.load305
  %i.ev = getelementptr inbounds nuw i8, ptr %.396.lcssa, i64 %i.er
  store <4 x i8> %i.eu, ptr %i.ev, align 1, !tbaa !82, !alias.scope !443, !noalias !444
  store <4 x i8> %wide.load306, ptr %i.es, align 1, !tbaa !82, !alias.scope !441, !noalias !442
  %index.next307 = add nuw i64 %index304, 4       ; 2 uses
  %i.ew = icmp eq i64 %index.next307, %n.vec302
  br i1 %i.ew, label %vec.epilog.middle.block308, label %vec.epilog.vector.body303, !llvm.loop !435

vec.epilog.middle.block308:                       ; preds = %vec.epilog.vector.body303
  %cmp.n309 = icmp eq i64 %.4.lcssa, %n.vec302
  br i1 %cmp.n309, label %.loopexit, label %vec.epilog.scalar.ph298.preheader

vec.epilog.scalar.ph298.preheader:                ; preds = %iter.check296, %vector.scevcheck252, %vector.memcheck271, %vec.epilog.middle.block308
  %.5163.ph = phi i64 [ %.4.lcssa, %vector.scevcheck252 ], [ %.4.lcssa, %vector.memcheck271 ], [ %.4.lcssa, %iter.check296 ], [ %i.em, %vec.epilog.middle.block308 ] ; 4 uses
  %.8162.ph = phi i32 [ %.6.lcssa, %vector.scevcheck252 ], [ %.6.lcssa, %vector.memcheck271 ], [ %.6.lcssa, %iter.check296 ], [ %i.eo, %vec.epilog.middle.block308 ] ; 3 uses
  %xtraiter330 = and i64 %.5163.ph, 1
  %lcmp.mod331.not = icmp eq i64 %xtraiter330, 0
  br i1 %lcmp.mod331.not, label %vec.epilog.scalar.ph298.prol.loopexit, label %vec.epilog.scalar.ph298.prol

vec.epilog.scalar.ph298.prol:                     ; preds = %vec.epilog.scalar.ph298.preheader
  %i.ex = add nsw i64 %.5163.ph, -1
  %i.ey = zext i32 %.8162.ph to i64               ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 %i.ey ; 2 uses
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !82
  %i.fb = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 %i.ey
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !82  ; 2 uses
  %i.fd = xor i8 %i.fc, %i.fa
  %i.fe = getelementptr inbounds nuw i8, ptr %.396.lcssa, i64 %i.ey
  store i8 %i.fd, ptr %i.fe, align 1, !tbaa !82
  store i8 %i.fc, ptr %i.ez, align 1, !tbaa !82
  %i.ff = add i32 %.8162.ph, 1                    ; 2 uses
  br label %vec.epilog.scalar.ph298.prol.loopexit

vec.epilog.scalar.ph298.prol.loopexit:            ; preds = %vec.epilog.scalar.ph298.prol, %vec.epilog.scalar.ph298.preheader
  %.lcssa.unr = phi i32 [ poison, %vec.epilog.scalar.ph298.preheader ], [ %i.ff, %vec.epilog.scalar.ph298.prol ]
  %.5163.unr = phi i64 [ %.5163.ph, %vec.epilog.scalar.ph298.preheader ], [ %i.ex, %vec.epilog.scalar.ph298.prol ]
  %.8162.unr = phi i32 [ %.8162.ph, %vec.epilog.scalar.ph298.preheader ], [ %i.ff, %vec.epilog.scalar.ph298.prol ]
  %i.fg = icmp eq i64 %.5163.ph, 1
  br i1 %i.fg, label %.loopexit, label %vec.epilog.scalar.ph298

vec.epilog.scalar.ph298:                          ; preds = %vec.epilog.scalar.ph298.prol.loopexit, %vec.epilog.scalar.ph298
  %.5163 = phi i64 [ %i.fp, %vec.epilog.scalar.ph298 ], [ %.5163.unr, %vec.epilog.scalar.ph298.prol.loopexit ]
  %.8162 = phi i32 [ %i.fx, %vec.epilog.scalar.ph298 ], [ %.8162.unr, %vec.epilog.scalar.ph298.prol.loopexit ] ; 3 uses
  %i.fh = zext i32 %.8162 to i64                  ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %4, i64 %i.fh ; 2 uses
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !82
  %i.fk = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 %i.fh
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !82  ; 2 uses
  %i.fm = xor i8 %i.fl, %i.fj
  %i.fn = getelementptr inbounds nuw i8, ptr %.396.lcssa, i64 %i.fh
  store i8 %i.fm, ptr %i.fn, align 1, !tbaa !82
  store i8 %i.fl, ptr %i.fi, align 1, !tbaa !82
  %i.fo = add i32 %.8162, 1
  %i.fp = add nsw i64 %.5163, -2                  ; 2 uses
  %i.fq = zext i32 %i.fo to i64                   ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 %i.fq ; 2 uses
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !82
  %i.ft = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 %i.fq
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !82  ; 2 uses
  %i.fv = xor i8 %i.fu, %i.fs
  %i.fw = getelementptr inbounds nuw i8, ptr %.396.lcssa, i64 %i.fq
  store i8 %i.fv, ptr %i.fw, align 1, !tbaa !82
  store i8 %i.fu, ptr %i.fr, align 1, !tbaa !82
  %i.fx = add i32 %.8162, 2                       ; 2 uses
  %.not108.1 = icmp eq i64 %i.fp, 0
  br i1 %.not108.1, label %.loopexit, label %vec.epilog.scalar.ph298, !llvm.loop !436

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.scalar.ph298.prol.loopexit, %vec.epilog.scalar.ph298, %vec.epilog.middle.block, %vec.epilog.middle.block308, %._crit_edge157, %._crit_edge132
  %storemerge = phi i32 [ %.1102.lcssa, %._crit_edge132 ], [ %i.fx, %vec.epilog.scalar.ph298 ], [ %.6.lcssa, %._crit_edge157 ], [ %i.eo, %vec.epilog.middle.block308 ], [ %i.be, %vec.epilog.middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph298.prol.loopexit ], [ %.lcssa320.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.cn, %vec.epilog.scalar.ph ]
  store i32 %storemerge, ptr %5, align 4, !tbaa !84
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @CRYPTO_cfb128_1_encrypt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readnone captures(none) %5, i32 noundef %6, ptr nofree noundef readonly captures(none) %7) local_unnamed_addr #5 {
bb.a:
  %.not33 = icmp eq i64 %2, 0
  br i1 %.not33, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not.i = icmp eq i32 %6, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.032 = phi i64 [ 0, %.lr.ph ], [ %i.z, %bb.b ] ; 3 uses
  %i.a = lshr i64 %.032, 3                        ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1, !tbaa !82
  %i.d = zext i8 %i.c to i32
  %i.e = trunc i64 %.032 to i32
  %i.f = and i32 %i.e, 7                          ; 3 uses
  %i.g = lshr exact i32 128, %i.f
  %i.h = and i32 %i.g, %i.d
  %.not = icmp eq i32 %i.h, 0
  %i.i = select i1 %.not, i8 0, i8 -128           ; 2 uses
  %i.j = load <16 x i8>, ptr %4, align 1          ; 2 uses
  tail call void %7(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef %3) #36, !inline_history !7
  %i.k = load i8, ptr %4, align 1, !tbaa !82
  %i.l = xor i8 %i.k, %i.i                        ; 2 uses
  %..i = select i1 %.not.i, i8 %i.i, i8 %i.l
  %i.m = insertelement <16 x i8> poison, i8 %..i, i64 0
  %i.n = shufflevector <16 x i8> %i.j, <16 x i8> %i.m, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.o = tail call <16 x i8> @llvm.fshl.v16i8(<16 x i8> %i.j, <16 x i8> %i.n, <16 x i8> splat (i8 1))
  store <16 x i8> %i.o, ptr %4, align 1, !tbaa !82
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.a ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !82
  %i.r = zext i8 %i.q to i32
  %i.s = ashr i32 -129, %i.f
  %i.t = and i32 %i.s, %i.r
  %i.u = and i8 %i.l, -128
  %i.v = zext i8 %i.u to i32
  %i.w = lshr exact i32 %i.v, %i.f
  %i.x = or i32 %i.t, %i.w
  %i.y = trunc nuw i32 %i.x to i8
  store i8 %i.y, ptr %i.p, align 1, !tbaa !82
  %i.z = add nuw i64 %.032, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.z, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !445

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @CRYPTO_cfb128_8_encrypt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readnone captures(none) %5, i32 noundef %6, ptr nofree noundef readonly captures(none) %7) local_unnamed_addr #5 {
bb.a:
  %.sroa.0 = alloca [16 x i8], align 16           ; 7 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not.i = icmp eq i32 %6, 0
  %.sroa.0.1..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1 ; 2 uses
  %.sroa.4.1..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 15 ; 2 uses
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.010.us = phi i64 [ %i.f, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.010.us
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.010.us
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 1 dereferenceable(16) %4, i64 16, i1 false)
  tail call void %7(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef %3) #36, !inline_history !7
  %i.c = load i8, ptr %i.a, align 1, !tbaa !82    ; 2 uses
  %i.d = load i8, ptr %4, align 1, !tbaa !82
  %i.e = xor i8 %i.d, %i.c
  store i8 %i.e, ptr %i.b, align 1, !tbaa !82
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %4, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.0.1..sroa_idx, i64 15, i1 false)
  store i8 %i.c, ptr %.sroa.4.1..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %i.f = add nuw i64 %.010.us, 1                  ; 2 uses
  %exitcond12.not = icmp eq i64 %i.f, %2
  br i1 %exitcond12.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !446

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %.010 = phi i64 [ %i.l, %.lr.ph.split ], [ 0, %.lr.ph ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %.010
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %.010
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 1 dereferenceable(16) %4, i64 16, i1 false)
  tail call void %7(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef %3) #36, !inline_history !7
  %i.i = load i8, ptr %i.g, align 1, !tbaa !82
  %i.j = load i8, ptr %4, align 1, !tbaa !82
  %i.k = xor i8 %i.j, %i.i                        ; 2 uses
  store i8 %i.k, ptr %i.h, align 1, !tbaa !82
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %4, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.0.1..sroa_idx, i64 15, i1 false)
  store i8 %i.k, ptr %.sroa.4.1..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %i.l = add nuw i64 %.010, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.l, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !446

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %bb.a
  ret void
end_hunk_1
begin_hunk_2_@CRYPTO_gcm128_encrypt:bb.a
  %i.bg = tail call noundef i64 @llvm.bswap.i64(i64 %i.bf)
  store i64 %i.bg, ptr %i.t, align 8
  %i.bh = tail call noundef i64 @llvm.bswap.i64(i64 %i.ba)
  store i64 %i.bh, ptr %i.u, align 8
  store i32 0, ptr %i.r, align 4, !tbaa !107
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !108 ; 3 uses
  %.not108 = icmp eq i32 %i.bj, 0
  br i1 %.not108, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.d
  %.not136 = icmp eq i64 %4, 0
  br i1 %.not136, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.090119 = phi i32 [ %i.bj, %.lr.ph ], [ %i.by, %bb.e ] ; 2 uses
  %.092118 = phi i64 [ %4, %.lr.ph ], [ %i.bw, %bb.e ]
  %.096117 = phi ptr [ %3, %.lr.ph ], [ %i.bs, %bb.e ] ; 2 uses
  %.0100116 = phi ptr [ %2, %.lr.ph ], [ %i.bm, %bb.e ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0100116, i64 1 ; 2 uses
  %i.bn = load i8, ptr %.0100116, align 1, !tbaa !82
  %i.bo = zext i32 %.090119 to i64                ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !82
  %i.br = xor i8 %i.bq, %i.bn                     ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.096117, i64 1 ; 2 uses
  store i8 %i.br, ptr %.096117, align 1, !tbaa !82
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bo ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !82
  %i.bv = xor i8 %i.bu, %i.br
  store i8 %i.bv, ptr %i.bt, align 1, !tbaa !82
  %i.bw = add nsw i64 %.092118, -1                ; 3 uses
  %i.bx = add i32 %.090119, 1
  %i.by = and i32 %i.bx, 15                       ; 4 uses
  %i.bz = icmp ne i32 %i.by, 0
  %i.ca = icmp ne i64 %i.bw, 0
  %i.cb = select i1 %i.bz, i1 %i.ca, i1 false
  br i1 %i.cb, label %bb.e, label %._crit_edge, !llvm.loop !471

._crit_edge:                                      ; preds = %bb.e
  %i.cc = icmp eq i32 %i.by, 0
  br i1 %i.cc, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %._crit_edge
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %.0.copyload.i.i112 = load i64, ptr %i.ce, align 8
  %i.cf = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i112) ; 2 uses
  %.0.copyload.i6.i113 = load i64, ptr %i.cd, align 8
  %i.cg = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i6.i113) ; 2 uses
  %.val.i114 = load i64, ptr %0, align 8, !tbaa !97 ; 2 uses
  %i.ch = getelementptr i8, ptr %0, i64 8
  %.val5.i115 = load i64, ptr %i.ch, align 8, !tbaa !96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call fastcc void @_ZL14gcm_mul64_nohwPmS_mm(ptr noundef %i.a, ptr noundef %i.b, i64 noundef %i.cf, i64 noundef %.val5.i115)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  call fastcc void @_ZL14gcm_mul64_nohwPmS_mm(ptr noundef %i.c, ptr noundef %i.d, i64 noundef %i.cg, i64 noundef %.val.i114)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #36
  %i.ci = xor i64 %i.cg, %i.cf
  %i.cj = xor i64 %.val5.i115, %.val.i114
  call fastcc void @_ZL14gcm_mul64_nohwPmS_mm(ptr noundef %i.e, ptr noundef %i.f, i64 noundef %i.ci, i64 noundef %i.cj)
  %i.ck = load i64, ptr %i.a, align 8, !tbaa !98  ; 8 uses
  %i.cl = load i64, ptr %i.c, align 8, !tbaa !98  ; 2 uses
  %i.cm = load i64, ptr %i.e, align 8, !tbaa !98
  %i.cn = load i64, ptr %i.b, align 8, !tbaa !98  ; 2 uses
  %i.co = load i64, ptr %i.d, align 8, !tbaa !98  ; 2 uses
  %i.cp = load i64, ptr %i.f, align 8, !tbaa !98
  %i.cq = shl i64 %i.ck, 63
  %i.cr = shl i64 %i.ck, 62
  %i.cs = shl i64 %i.ck, 57
  %i.ct = xor i64 %i.cq, %i.cr
  %i.cu = xor i64 %i.ct, %i.cs
  %i.cv = xor i64 %i.cu, %i.cm
  %i.cw = xor i64 %i.cv, %i.ck
  %i.cx = xor i64 %i.cw, %i.cl
  %i.cy = xor i64 %i.cx, %i.cn                    ; 7 uses
  %i.cz = tail call i64 @llvm.fshl.i64(i64 %i.cy, i64 %i.ck, i64 63)
  %i.da = lshr i64 %i.cy, 1
  %i.db = tail call i64 @llvm.fshl.i64(i64 %i.cy, i64 %i.ck, i64 62)
  %i.dc = lshr i64 %i.cy, 2
  %i.dd = tail call i64 @llvm.fshl.i64(i64 %i.cy, i64 %i.ck, i64 57)
  %i.de = xor i64 %i.cp, %i.cz
  %i.df = xor i64 %i.de, %i.db
  %i.dg = xor i64 %i.df, %i.dd
  %i.dh = xor i64 %i.dg, %i.ck
  %i.di = xor i64 %i.dh, %i.cl
  %i.dj = xor i64 %i.di, %i.cn
  %i.dk = xor i64 %i.dj, %i.co
  %i.dl = lshr i64 %i.cy, 7
  %i.dm = xor i64 %i.da, %i.dc
  %i.dn = xor i64 %i.dm, %i.dl
  %i.do = xor i64 %i.dn, %i.co
  %i.dp = xor i64 %i.do, %i.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.dq = tail call noundef i64 @llvm.bswap.i64(i64 %i.dp)
  store i64 %i.dq, ptr %i.cd, align 8
  %i.dr = tail call noundef i64 @llvm.bswap.i64(i64 %i.dk)
  store i64 %i.dr, ptr %i.ce, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.1101 = phi ptr [ %i.bm, %bb.f ], [ %2, %bb.d ] ; 2 uses
  %.197 = phi ptr [ %i.bs, %bb.f ], [ %3, %bb.d ] ; 2 uses
  %.193 = phi i64 [ %i.bw, %bb.f ], [ %4, %bb.d ] ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %.0.copyload.i = load i32, ptr %i.ds, align 4
  %i.dt = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i) ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !101 ; 2 uses
  %i.dw = icmp ugt i64 %.193, 3071
  br i1 %i.dw, label %.lr.ph128, label %._crit_edge129

.lr.ph128:                                        ; preds = %bb.g
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph128, %bb.h
  %.088126 = phi i32 [ %i.dt, %.lr.ph128 ], [ %i.dz, %bb.h ]
  %.294125 = phi i64 [ %.193, %.lr.ph128 ], [ %i.ed, %bb.h ]
  %.298124 = phi ptr [ %.197, %.lr.ph128 ], [ %i.eb, %bb.h ] ; 3 uses
  %.2102123 = phi ptr [ %.1101, %.lr.ph128 ], [ %i.ec, %bb.h ] ; 2 uses
  tail call void %i.dv(ptr noundef %.2102123, ptr noundef %.298124, i64 noundef 192, ptr noundef nonnull %i.dx, ptr noundef nonnull %1) #36
  %i.dz = add i32 %.088126, 192                   ; 3 uses
  %i.ea = tail call noundef i32 @llvm.bswap.i32(i32 %i.dz)
  store i32 %i.ea, ptr %i.ds, align 4
  tail call void @gcm_ghash_nohw(ptr noundef nonnull %i.dy, ptr noundef nonnull %0, ptr noundef %.298124, i64 noundef 3072)
  %i.eb = getelementptr inbounds nuw i8, ptr %.298124, i64 3072 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.2102123, i64 3072 ; 2 uses
  %i.ed = add nsw i64 %.294125, -3072             ; 3 uses
  %i.ee = icmp ugt i64 %i.ed, 3071
  br i1 %i.ee, label %bb.h, label %._crit_edge129, !llvm.loop !472

._crit_edge129:                                   ; preds = %bb.h, %bb.g
  %.2102.lcssa = phi ptr [ %.1101, %bb.g ], [ %i.ec, %bb.h ] ; 4 uses
  %.298.lcssa = phi ptr [ %.197, %bb.g ], [ %i.eb, %bb.h ] ; 5 uses
  %.294.lcssa = phi i64 [ %.193, %bb.g ], [ %i.ed, %bb.h ] ; 4 uses
  %.088.lcssa = phi i32 [ %i.dt, %bb.g ], [ %i.dz, %bb.h ] ; 2 uses
  %i.ef = and i64 %.294.lcssa, 4080               ; 5 uses
  %.not109 = icmp eq i64 %i.ef, 0
  br i1 %.not109, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge129
  %i.eg = lshr i64 %.294.lcssa, 4                 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void %i.dv(ptr noundef %.2102.lcssa, ptr noundef %.298.lcssa, i64 noundef %i.eg, ptr noundef nonnull %i.eh, ptr noundef nonnull %1) #36
  %i.ei = trunc nuw nsw i64 %i.eg to i32
  %i.ej = add i32 %.088.lcssa, %i.ei              ; 2 uses
  %i.ek = tail call noundef i32 @llvm.bswap.i32(i32 %i.ej)
  store i32 %i.ek, ptr %i.ds, align 4
  %i.el = getelementptr i8, ptr %.2102.lcssa, i64 %i.ef
  %i.em = and i64 %.294.lcssa, 15
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @gcm_ghash_nohw(ptr noundef nonnull %i.en, ptr noundef nonnull %0, ptr noundef %.298.lcssa, i64 noundef %i.ef)
  %i.eo = getelementptr i8, ptr %.298.lcssa, i64 %i.ef
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge129
  %.3103 = phi ptr [ %i.el, %bb.i ], [ %.2102.lcssa, %._crit_edge129 ] ; 7 uses
  %.399 = phi ptr [ %i.eo, %bb.i ], [ %.298.lcssa, %._crit_edge129 ] ; 7 uses
  %.395 = phi i64 [ %i.em, %bb.i ], [ %.294.lcssa, %._crit_edge129 ] ; 14 uses
  %.189 = phi i32 [ %i.ej, %bb.i ], [ %.088.lcssa, %._crit_edge129 ]
  %.not110 = icmp eq i64 %.395, 0
  br i1 %.not110, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.j
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !102
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void %i.eq(ptr noundef nonnull %1, ptr noundef nonnull %i.er, ptr noundef nonnull %i.es) #36
  %i.et = add i32 %.189, 1
  %i.eu = tail call noundef i32 @llvm.bswap.i32(i32 %i.et)
  store i32 %i.eu, ptr %i.ds, align 4
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 5 uses
  %i.ew = add i64 %.395, -4294967297
  %or.cond197 = icmp ult i64 %i.ew, -4294967293
  br i1 %or.cond197, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ex = add nuw nsw i64 %.395, %i.ef            ; 2 uses
  %i.ey = getelementptr i8, ptr %.298.lcssa, i64 %i.ex ; 2 uses
  %i.ez = getelementptr i8, ptr %1, i64 %.395
  %i.fa = getelementptr i8, ptr %i.ez, i64 64     ; 2 uses
  %bound0 = icmp ult ptr %.399, %i.fa
  %bound0.a = icmp ult ptr %i.er, %i.ey
  %found.conflict = and i1 %bound0, %bound0.a
  %5 = getelementptr i8, ptr %.2102.lcssa, i64 %i.ex ; 2 uses
  %bound0178 = icmp ult ptr %.399, %5
  %bound1179 = icmp ult ptr %.3103, %i.ey
  %found.conflict180 = and i1 %bound0178, %bound1179
  %conflict.rdx = or i1 %found.conflict, %found.conflict180
  %bound0181 = icmp ult ptr %i.er, %5
  %bound1182 = icmp ult ptr %.3103, %i.fa
  %found.conflict183 = and i1 %bound0181, %bound1182
  %conflict.rdx184 = or i1 %conflict.rdx, %found.conflict183
  br i1 %conflict.rdx184, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check185 = icmp ult i64 %.395, 16
  br i1 %min.iters.check185, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fb = and i64 %.395, 12
  %n.vec = and i64 %.395, 8589934576              ; 4 uses
  %i.fc = trunc i64 %n.vec to i32                 ; 2 uses
  %i.fd = and i64 %.395, 15
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fe = and i64 %index, 4294967280              ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.3103, i64 %i.fe
  %wide.load = load <16 x i8>, ptr %i.ff, align 1, !tbaa !82, !alias.scope !480
  %i.fg = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.fe
  %wide.load186 = load <16 x i8>, ptr %i.fg, align 1, !tbaa !82, !alias.scope !481, !noalias !480
  %i.fh = xor <16 x i8> %wide.load186, %wide.load ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.399, i64 %i.fe
  store <16 x i8> %i.fh, ptr %i.fi, align 1, !tbaa !82, !alias.scope !482, !noalias !483
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.fe ; 2 uses
  %wide.load187 = load <16 x i8>, ptr %i.fj, align 1, !tbaa !82, !alias.scope !481, !noalias !480
  %i.fk = xor <16 x i8> %wide.load187, %i.fh
  store <16 x i8> %i.fk, ptr %i.fj, align 1, !tbaa !82, !alias.scope !481, !noalias !480
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.fl = icmp eq i64 %index.next, %n.vec
  br i1 %i.fl, label %middle.block, label %vector.body, !llvm.loop !477

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.395, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.fb, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !109

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec188 = and i64 %.395, 8589934588           ; 3 uses
  %i.fm = trunc i64 %n.vec188 to i32              ; 2 uses
  %i.fn = and i64 %.395, 3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index189 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next193, %vec.epilog.vector.body ] ; 2 uses
  %i.fo = and i64 %index189, 4294967292           ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.3103, i64 %i.fo
  %wide.load190 = load <4 x i8>, ptr %i.fp, align 1, !tbaa !82, !alias.scope !480
  %i.fq = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.fo
  %wide.load191 = load <4 x i8>, ptr %i.fq, align 1, !tbaa !82, !alias.scope !481, !noalias !480
  %i.fr = xor <4 x i8> %wide.load191, %wide.load190 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.399, i64 %i.fo
  store <4 x i8> %i.fr, ptr %i.fs, align 1, !tbaa !82, !alias.scope !482, !noalias !483
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.fo ; 2 uses
  %wide.load192 = load <4 x i8>, ptr %i.ft, align 1, !tbaa !82, !alias.scope !481, !noalias !480
  %i.fu = xor <4 x i8> %wide.load192, %i.fr
  store <4 x i8> %i.fu, ptr %i.ft, align 1, !tbaa !82, !alias.scope !481, !noalias !480
  %index.next193 = add nuw i64 %index189, 4       ; 2 uses
  %i.fv = icmp eq i64 %index.next193, %n.vec188
  br i1 %i.fv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !478

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n194 = icmp eq i64 %.395, %n.vec188
  br i1 %cmp.n194, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2135.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.fc, %vec.epilog.iter.check ], [ %i.fm, %vec.epilog.middle.block ] ; 3 uses
  %.4134.ph = phi i64 [ %.395, %iter.check ], [ %.395, %vector.memcheck ], [ %i.fd, %vec.epilog.iter.check ], [ %i.fn, %vec.epilog.middle.block ] ; 4 uses
  %xtraiter = and i64 %.4134.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.fw = add nsw i64 %.4134.ph, -1
  %i.fx = zext i32 %.2135.ph to i64               ; 4 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.3103, i64 %i.fx
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !82
  %i.ga = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.fx
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !82
  %i.gc = xor i8 %i.gb, %i.fz                     ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.399, i64 %i.fx
  store i8 %i.gc, ptr %i.gd, align 1, !tbaa !82
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.fx ; 2 uses
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !82
  %i.gg = xor i8 %i.gf, %i.gc
  store i8 %i.gg, ptr %i.ge, align 1, !tbaa !82
  %i.gh = add i32 %.2135.ph, 1                    ; 2 uses
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i32 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.gh, %vec.epilog.scalar.ph.prol ]
  %.2135.unr = phi i32 [ %.2135.ph, %vec.epilog.scalar.ph.preheader ], [ %i.gh, %vec.epilog.scalar.ph.prol ]
  %.4134.unr = phi i64 [ %.4134.ph, %vec.epilog.scalar.ph.preheader ], [ %i.fw, %vec.epilog.scalar.ph.prol ]
  %i.gi = icmp eq i64 %.4134.ph, 1
  br i1 %i.gi, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.2135 = phi i32 [ %i.hf, %vec.epilog.scalar.ph ], [ %.2135.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %.4134 = phi i64 [ %i.gu, %vec.epilog.scalar.ph ], [ %.4134.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %i.gj = zext i32 %.2135 to i64                  ; 4 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.3103, i64 %i.gj
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !82
  %i.gm = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.gj
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !82
  %i.go = xor i8 %i.gn, %i.gl                     ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.399, i64 %i.gj
  store i8 %i.go, ptr %i.gp, align 1, !tbaa !82
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.gj ; 2 uses
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !82
  %i.gs = xor i8 %i.gr, %i.go
  store i8 %i.gs, ptr %i.gq, align 1, !tbaa !82
  %i.gt = add i32 %.2135, 1
  %i.gu = add i64 %.4134, -2                      ; 2 uses
  %i.gv = zext i32 %i.gt to i64                   ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.3103, i64 %i.gv
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !82
  %i.gy = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.gv
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !82
  %i.ha = xor i8 %i.gz, %i.gx                     ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.399, i64 %i.gv
  store i8 %i.ha, ptr %i.hb, align 1, !tbaa !82
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.gv ; 2 uses
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !82
  %i.he = xor i8 %i.hd, %i.ha
  store i8 %i.he, ptr %i.hc, align 1, !tbaa !82
  %i.hf = add i32 %.2135, 2                       ; 2 uses
  %.not111.1 = icmp eq i64 %i.gu, 0
  br i1 %.not111.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !479

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader, %bb.j, %._crit_edge
  %storemerge = phi i32 [ %i.by, %._crit_edge ], [ 0, %bb.j ], [ %i.bj, %.preheader ], [ %i.fm, %vec.epilog.middle.block ], [ %i.fc, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.hf, %vec.epilog.scalar.ph ]
  store i32 %storemerge, ptr %i.bi, align 8, !tbaa !108
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %.loopexit
  %.1 = phi i32 [ 1, %.loopexit ], [ 0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @CRYPTO_gcm128_decrypt(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %i.j = alloca i64, align 8                      ; 4 uses
  %i.k = alloca i64, align 8                      ; 4 uses
  %i.l = alloca i64, align 8                      ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !105
  %i.o = add i64 %i.n, %4                         ; 3 uses
  %i.p = icmp ugt i64 %i.o, 68719476704
  %i.q = icmp ult i64 %i.o, %4
  %or.cond = or i1 %i.p, %i.q
  br i1 %or.cond, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.o, ptr %i.m, align 8, !tbaa !105
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !107
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %.0.copyload.i.i = load i64, ptr %i.u, align 8
  %i.v = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i) ; 2 uses
  %.0.copyload.i6.i = load i64, ptr %i.t, align 8
  %i.w = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i6.i) ; 2 uses
  %.val.i = load i64, ptr %0, align 8, !tbaa !97  ; 2 uses
  %i.x = getelementptr i8, ptr %0, i64 8
  %.val5.i = load i64, ptr %i.x, align 8, !tbaa !96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #36
  call fastcc void @_ZL14gcm_mul64_nohwPmS_mm(ptr noundef %i.g, ptr noundef %i.h, i64 noundef %i.v, i64 noundef %.val5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #36
  call fastcc void @_ZL14gcm_mul64_nohwPmS_mm(ptr noundef %i.i, ptr noundef %i.j, i64 noundef %i.w, i64 noundef %.val.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #36
  %i.y = xor i64 %i.w, %i.v
  %i.z = xor i64 %.val5.i, %.val.i
end_hunk_2
begin_hunk_3_@CRYPTO_gcm128_decrypt:bb.a
  %i.bg = tail call noundef i64 @llvm.bswap.i64(i64 %i.bf)
  store i64 %i.bg, ptr %i.t, align 8
  %i.bh = tail call noundef i64 @llvm.bswap.i64(i64 %i.ba)
  store i64 %i.bh, ptr %i.u, align 8
  store i32 0, ptr %i.r, align 4, !tbaa !107
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !108 ; 3 uses
  %.not112 = icmp eq i32 %i.bj, 0
  br i1 %.not112, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.d
  %.not140 = icmp eq i64 %4, 0
  br i1 %.not140, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.092123 = phi ptr [ %2, %.lr.ph ], [ %i.bm, %bb.e ] ; 2 uses
  %.096122 = phi ptr [ %3, %.lr.ph ], [ %i.bs, %bb.e ] ; 2 uses
  %.0100121 = phi i32 [ %i.bj, %.lr.ph ], [ %i.by, %bb.e ] ; 2 uses
  %.0104120 = phi i64 [ %4, %.lr.ph ], [ %i.bw, %bb.e ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.092123, i64 1 ; 2 uses
  %i.bn = load i8, ptr %.092123, align 1, !tbaa !82 ; 2 uses
  %i.bo = zext i32 %.0100121 to i64               ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !82
  %i.br = xor i8 %i.bq, %i.bn
  %i.bs = getelementptr inbounds nuw i8, ptr %.096122, i64 1 ; 2 uses
  store i8 %i.br, ptr %.096122, align 1, !tbaa !82
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bo ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !82
  %i.bv = xor i8 %i.bu, %i.bn
  store i8 %i.bv, ptr %i.bt, align 1, !tbaa !82
  %i.bw = add nsw i64 %.0104120, -1               ; 3 uses
  %i.bx = add i32 %.0100121, 1
  %i.by = and i32 %i.bx, 15                       ; 4 uses
  %i.bz = icmp ne i32 %i.by, 0
  %i.ca = icmp ne i64 %i.bw, 0
  %i.cb = select i1 %i.bz, i1 %i.ca, i1 false
  br i1 %i.cb, label %bb.e, label %._crit_edge, !llvm.loop !484

._crit_edge:                                      ; preds = %bb.e
  %i.cc = icmp eq i32 %i.by, 0
  br i1 %i.cc, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %._crit_edge
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %.0.copyload.i.i116 = load i64, ptr %i.ce, align 8
  %i.cf = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i116) ; 2 uses
  %.0.copyload.i6.i117 = load i64, ptr %i.cd, align 8
  %i.cg = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i6.i117) ; 2 uses
  %.val.i118 = load i64, ptr %0, align 8, !tbaa !97 ; 2 uses
  %i.ch = getelementptr i8, ptr %0, i64 8
  %.val5.i119 = load i64, ptr %i.ch, align 8, !tbaa !96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call fastcc void @_ZL14gcm_mul64_nohwPmS_mm(ptr noundef %i.a, ptr noundef %i.b, i64 noundef %i.cf, i64 noundef %.val5.i119)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  call fastcc void @_ZL14gcm_mul64_nohwPmS_mm(ptr noundef %i.c, ptr noundef %i.d, i64 noundef %i.cg, i64 noundef %.val.i118)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #36
  %i.ci = xor i64 %i.cg, %i.cf
  %i.cj = xor i64 %.val5.i119, %.val.i118
  call fastcc void @_ZL14gcm_mul64_nohwPmS_mm(ptr noundef %i.e, ptr noundef %i.f, i64 noundef %i.ci, i64 noundef %i.cj)
  %i.ck = load i64, ptr %i.a, align 8, !tbaa !98  ; 8 uses
  %i.cl = load i64, ptr %i.c, align 8, !tbaa !98  ; 2 uses
  %i.cm = load i64, ptr %i.e, align 8, !tbaa !98
  %i.cn = load i64, ptr %i.b, align 8, !tbaa !98  ; 2 uses
  %i.co = load i64, ptr %i.d, align 8, !tbaa !98  ; 2 uses
  %i.cp = load i64, ptr %i.f, align 8, !tbaa !98
  %i.cq = shl i64 %i.ck, 63
  %i.cr = shl i64 %i.ck, 62
  %i.cs = shl i64 %i.ck, 57
  %i.ct = xor i64 %i.cq, %i.cr
  %i.cu = xor i64 %i.ct, %i.cs
  %i.cv = xor i64 %i.cu, %i.cm
  %i.cw = xor i64 %i.cv, %i.ck
  %i.cx = xor i64 %i.cw, %i.cl
  %i.cy = xor i64 %i.cx, %i.cn                    ; 7 uses
  %i.cz = tail call i64 @llvm.fshl.i64(i64 %i.cy, i64 %i.ck, i64 63)
  %i.da = lshr i64 %i.cy, 1
  %i.db = tail call i64 @llvm.fshl.i64(i64 %i.cy, i64 %i.ck, i64 62)
  %i.dc = lshr i64 %i.cy, 2
  %i.dd = tail call i64 @llvm.fshl.i64(i64 %i.cy, i64 %i.ck, i64 57)
  %i.de = xor i64 %i.cp, %i.cz
  %i.df = xor i64 %i.de, %i.db
  %i.dg = xor i64 %i.df, %i.dd
  %i.dh = xor i64 %i.dg, %i.ck
  %i.di = xor i64 %i.dh, %i.cl
  %i.dj = xor i64 %i.di, %i.cn
  %i.dk = xor i64 %i.dj, %i.co
  %i.dl = lshr i64 %i.cy, 7
  %i.dm = xor i64 %i.da, %i.dc
  %i.dn = xor i64 %i.dm, %i.dl
  %i.do = xor i64 %i.dn, %i.co
  %i.dp = xor i64 %i.do, %i.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.dq = tail call noundef i64 @llvm.bswap.i64(i64 %i.dp)
  store i64 %i.dq, ptr %i.cd, align 8
  %i.dr = tail call noundef i64 @llvm.bswap.i64(i64 %i.dk)
  store i64 %i.dr, ptr %i.ce, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.1105 = phi i64 [ %i.bw, %bb.f ], [ %4, %bb.d ] ; 3 uses
  %.197 = phi ptr [ %i.bs, %bb.f ], [ %3, %bb.d ] ; 2 uses
  %.193 = phi ptr [ %i.bm, %bb.f ], [ %2, %bb.d ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %.0.copyload.i = load i32, ptr %i.ds, align 4
  %i.dt = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i) ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !101 ; 2 uses
  %i.dw = icmp ugt i64 %.1105, 3071
  br i1 %i.dw, label %.lr.ph132, label %._crit_edge133

.lr.ph132:                                        ; preds = %bb.g
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 272
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph132, %bb.h
  %.2130 = phi ptr [ %.193, %.lr.ph132 ], [ %i.ec, %bb.h ] ; 3 uses
  %.094129 = phi i32 [ %i.dt, %.lr.ph132 ], [ %i.dz, %bb.h ]
  %.298128 = phi ptr [ %.197, %.lr.ph132 ], [ %i.eb, %bb.h ] ; 2 uses
  %.2106127 = phi i64 [ %.1105, %.lr.ph132 ], [ %i.ed, %bb.h ]
  tail call void @gcm_ghash_nohw(ptr noundef nonnull %i.dx, ptr noundef nonnull %0, ptr noundef %.2130, i64 noundef 3072)
  tail call void %i.dv(ptr noundef %.2130, ptr noundef %.298128, i64 noundef 192, ptr noundef nonnull %i.dy, ptr noundef nonnull %1) #36
  %i.dz = add i32 %.094129, 192                   ; 3 uses
  %i.ea = tail call noundef i32 @llvm.bswap.i32(i32 %i.dz)
  store i32 %i.ea, ptr %i.ds, align 4
  %i.eb = getelementptr inbounds nuw i8, ptr %.298128, i64 3072 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.2130, i64 3072 ; 2 uses
  %i.ed = add nsw i64 %.2106127, -3072            ; 3 uses
  %i.ee = icmp ugt i64 %i.ed, 3071
  br i1 %i.ee, label %bb.h, label %._crit_edge133, !llvm.loop !485

._crit_edge133:                                   ; preds = %bb.h, %bb.g
  %.2106.lcssa = phi i64 [ %.1105, %bb.g ], [ %i.ed, %bb.h ] ; 4 uses
  %.298.lcssa = phi ptr [ %.197, %bb.g ], [ %i.eb, %bb.h ] ; 4 uses
  %.094.lcssa = phi i32 [ %i.dt, %bb.g ], [ %i.dz, %bb.h ] ; 2 uses
  %.2.lcssa = phi ptr [ %.193, %bb.g ], [ %i.ec, %bb.h ] ; 5 uses
  %i.ef = and i64 %.2106.lcssa, 4080              ; 5 uses
  %.not113 = icmp eq i64 %i.ef, 0
  br i1 %.not113, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge133
  %i.eg = lshr i64 %.2106.lcssa, 4                ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @gcm_ghash_nohw(ptr noundef nonnull %i.eh, ptr noundef nonnull %0, ptr noundef %.2.lcssa, i64 noundef %i.ef)
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void %i.dv(ptr noundef %.2.lcssa, ptr noundef %.298.lcssa, i64 noundef %i.eg, ptr noundef nonnull %i.ei, ptr noundef nonnull %1) #36
  %i.ej = trunc nuw nsw i64 %i.eg to i32
  %i.ek = add i32 %.094.lcssa, %i.ej              ; 2 uses
  %i.el = tail call noundef i32 @llvm.bswap.i32(i32 %i.ek)
  store i32 %i.el, ptr %i.ds, align 4
  %i.em = getelementptr i8, ptr %.298.lcssa, i64 %i.ef
  %i.en = getelementptr i8, ptr %.2.lcssa, i64 %i.ef
  %i.eo = and i64 %.2106.lcssa, 15
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge133
  %.3107 = phi i64 [ %i.eo, %bb.i ], [ %.2106.lcssa, %._crit_edge133 ] ; 14 uses
  %.399 = phi ptr [ %i.em, %bb.i ], [ %.298.lcssa, %._crit_edge133 ] ; 7 uses
  %.195 = phi i32 [ %i.ek, %bb.i ], [ %.094.lcssa, %._crit_edge133 ]
  %.3 = phi ptr [ %i.en, %bb.i ], [ %.2.lcssa, %._crit_edge133 ] ; 7 uses
  %.not114 = icmp eq i64 %.3107, 0
  br i1 %.not114, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.j
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !102
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void %i.eq(ptr noundef nonnull %1, ptr noundef nonnull %i.er, ptr noundef nonnull %i.es) #36
  %i.et = add i32 %.195, 1
  %i.eu = tail call noundef i32 @llvm.bswap.i32(i32 %i.et)
  store i32 %i.eu, ptr %i.ds, align 4
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 5 uses
  %i.ew = add i64 %.3107, -4294967297
  %or.cond204 = icmp ult i64 %i.ew, -4294967293
  br i1 %or.cond204, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ex = getelementptr i8, ptr %1, i64 %.3107
  %i.ey = getelementptr i8, ptr %i.ex, i64 64     ; 2 uses
  %i.ez = add nuw nsw i64 %.3107, %i.ef           ; 2 uses
  %i.fa = getelementptr i8, ptr %.298.lcssa, i64 %i.ez ; 2 uses
  %bound0 = icmp ult ptr %i.er, %i.fa
  %bound0.a = icmp ult ptr %.399, %i.ey
  %found.conflict = and i1 %bound0, %bound0.a
  %5 = getelementptr i8, ptr %.2.lcssa, i64 %i.ez ; 2 uses
  %bound0182 = icmp ult ptr %i.er, %5
  %bound1183 = icmp ult ptr %.3, %i.ey
  %found.conflict184 = and i1 %bound0182, %bound1183
  %conflict.rdx = or i1 %found.conflict, %found.conflict184
  %bound0185 = icmp ult ptr %.399, %5
  %bound1186 = icmp ult ptr %.3, %i.fa
  %found.conflict187 = and i1 %bound0185, %bound1186
  %conflict.rdx188 = or i1 %conflict.rdx, %found.conflict187
  br i1 %conflict.rdx188, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check189 = icmp ult i64 %.3107, 32
  br i1 %min.iters.check189, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fb = and i64 %.3107, 28
  %n.vec = and i64 %.3107, 8589934560             ; 4 uses
  %i.fc = trunc i64 %n.vec to i32                 ; 2 uses
  %i.fd = and i64 %.3107, 31
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fe = and i64 %index, 4294967264              ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.3, i64 %i.fe ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %wide.load = load <16 x i8>, ptr %i.ff, align 1, !tbaa !82, !alias.scope !493 ; 2 uses
  %wide.load190 = load <16 x i8>, ptr %i.fg, align 1, !tbaa !82, !alias.scope !493 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.fe ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16 ; 2 uses
  %wide.load191 = load <16 x i8>, ptr %i.fh, align 1, !tbaa !82, !alias.scope !494, !noalias !495
  %wide.load192 = load <16 x i8>, ptr %i.fi, align 1, !tbaa !82, !alias.scope !494, !noalias !495
  %i.fj = xor <16 x i8> %wide.load191, %wide.load
  %i.fk = xor <16 x i8> %wide.load192, %wide.load190
  store <16 x i8> %i.fj, ptr %i.fh, align 1, !tbaa !82, !alias.scope !494, !noalias !495
  store <16 x i8> %i.fk, ptr %i.fi, align 1, !tbaa !82, !alias.scope !494, !noalias !495
  %i.fl = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.fe ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %wide.load193 = load <16 x i8>, ptr %i.fl, align 1, !tbaa !82, !alias.scope !494, !noalias !495
  %wide.load194 = load <16 x i8>, ptr %i.fm, align 1, !tbaa !82, !alias.scope !494, !noalias !495
  %i.fn = xor <16 x i8> %wide.load193, %wide.load
  %i.fo = xor <16 x i8> %wide.load194, %wide.load190
  %i.fp = getelementptr inbounds nuw i8, ptr %.399, i64 %i.fe ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  store <16 x i8> %i.fn, ptr %i.fp, align 1, !tbaa !82, !alias.scope !496, !noalias !493
  store <16 x i8> %i.fo, ptr %i.fq, align 1, !tbaa !82, !alias.scope !496, !noalias !493
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fr = icmp eq i64 %index.next, %n.vec
  br i1 %i.fr, label %middle.block, label %vector.body, !llvm.loop !490

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.3107, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.fb, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !91

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec195 = and i64 %.3107, 8589934588          ; 3 uses
  %i.fs = trunc i64 %n.vec195 to i32              ; 2 uses
  %i.ft = and i64 %.3107, 3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index196 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next200, %vec.epilog.vector.body ] ; 2 uses
  %i.fu = and i64 %index196, 4294967292           ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.3, i64 %i.fu
  %wide.load197 = load <4 x i8>, ptr %i.fv, align 1, !tbaa !82, !alias.scope !493 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.fu ; 2 uses
  %wide.load198 = load <4 x i8>, ptr %i.fw, align 1, !tbaa !82, !alias.scope !494, !noalias !495
  %i.fx = xor <4 x i8> %wide.load198, %wide.load197
  store <4 x i8> %i.fx, ptr %i.fw, align 1, !tbaa !82, !alias.scope !494, !noalias !495
  %i.fy = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.fu
  %wide.load199 = load <4 x i8>, ptr %i.fy, align 1, !tbaa !82, !alias.scope !494, !noalias !495
  %i.fz = xor <4 x i8> %wide.load199, %wide.load197
  %i.ga = getelementptr inbounds nuw i8, ptr %.399, i64 %i.fu
  store <4 x i8> %i.fz, ptr %i.ga, align 1, !tbaa !82, !alias.scope !496, !noalias !493
  %index.next200 = add nuw i64 %index196, 4       ; 2 uses
  %i.gb = icmp eq i64 %index.next200, %n.vec195
  br i1 %i.gb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !491

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n201 = icmp eq i64 %.3107, %n.vec195
  br i1 %cmp.n201, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2102139.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.fc, %vec.epilog.iter.check ], [ %i.fs, %vec.epilog.middle.block ] ; 3 uses
  %.4138.ph = phi i64 [ %.3107, %iter.check ], [ %.3107, %vector.memcheck ], [ %i.fd, %vec.epilog.iter.check ], [ %i.ft, %vec.epilog.middle.block ] ; 4 uses
  %xtraiter = and i64 %.4138.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.gc = add nsw i64 %.4138.ph, -1
  %i.gd = zext i32 %.2102139.ph to i64            ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.3, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !82  ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.gd ; 2 uses
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !82
  %i.gi = xor i8 %i.gh, %i.gf
  store i8 %i.gi, ptr %i.gg, align 1, !tbaa !82
  %i.gj = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.gd
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !82
  %i.gl = xor i8 %i.gk, %i.gf
  %i.gm = getelementptr inbounds nuw i8, ptr %.399, i64 %i.gd
  store i8 %i.gl, ptr %i.gm, align 1, !tbaa !82
  %i.gn = add i32 %.2102139.ph, 1                 ; 2 uses
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i32 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.gn, %vec.epilog.scalar.ph.prol ]
  %.2102139.unr = phi i32 [ %.2102139.ph, %vec.epilog.scalar.ph.preheader ], [ %i.gn, %vec.epilog.scalar.ph.prol ]
  %.4138.unr = phi i64 [ %.4138.ph, %vec.epilog.scalar.ph.preheader ], [ %i.gc, %vec.epilog.scalar.ph.prol ]
  %i.go = icmp eq i64 %.4138.ph, 1
  br i1 %i.go, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.2102139 = phi i32 [ %i.hl, %vec.epilog.scalar.ph ], [ %.2102139.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %.4138 = phi i64 [ %i.ha, %vec.epilog.scalar.ph ], [ %.4138.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %i.gp = zext i32 %.2102139 to i64               ; 4 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.3, i64 %i.gp
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !82  ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.gp ; 2 uses
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !82
  %i.gu = xor i8 %i.gt, %i.gr
  store i8 %i.gu, ptr %i.gs, align 1, !tbaa !82
  %i.gv = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.gp
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !82
  %i.gx = xor i8 %i.gw, %i.gr
  %i.gy = getelementptr inbounds nuw i8, ptr %.399, i64 %i.gp
  store i8 %i.gx, ptr %i.gy, align 1, !tbaa !82
  %i.gz = add i32 %.2102139, 1
  %i.ha = add i64 %.4138, -2                      ; 2 uses
  %i.hb = zext i32 %i.gz to i64                   ; 4 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.3, i64 %i.hb
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !82  ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.hb ; 2 uses
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !82
  %i.hg = xor i8 %i.hf, %i.hd
  store i8 %i.hg, ptr %i.he, align 1, !tbaa !82
  %i.hh = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.hb
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !82
  %i.hj = xor i8 %i.hi, %i.hd
  %i.hk = getelementptr inbounds nuw i8, ptr %.399, i64 %i.hb
  store i8 %i.hj, ptr %i.hk, align 1, !tbaa !82
  %i.hl = add i32 %.2102139, 2                    ; 2 uses
  %.not115.1 = icmp eq i64 %i.ha, 0
  br i1 %.not115.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !492

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader, %bb.j, %._crit_edge
  %storemerge = phi i32 [ %i.by, %._crit_edge ], [ 0, %bb.j ], [ %i.bj, %.preheader ], [ %i.fs, %vec.epilog.middle.block ], [ %i.fc, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.hl, %vec.epilog.scalar.ph ]
  store i32 %storemerge, ptr %i.bi, align 8, !tbaa !108
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %.loopexit
  %.1 = phi i32 [ 1, %.loopexit ], [ 0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @CRYPTO_gcm128_finish(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %i.j = alloca i64, align 8                      ; 4 uses
  %i.k = alloca i64, align 8                      ; 4 uses
  %i.l = alloca i64, align 8                      ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.n = load i32, ptr %i.m, align 8, !tbaa !108
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.p = load i32, ptr %i.o, align 4, !tbaa !107
  %.not21 = icmp eq i32 %i.p, 0
  br i1 %.not21, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.0.copyload.i.i22.pre = load i64, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert32 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.0.copyload.i.1.i.pre = load i64, ptr %.phi.trans.insert32, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.0.copyload.i.i = load i64, ptr %i.r, align 8
  %i.s = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i) ; 2 uses
  %.0.copyload.i6.i = load i64, ptr %i.q, align 8
end_hunk_3
begin_hunk_4_@CRYPTO_ofb128_encrypt:bb.a
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader ], [ 0, %bb.b ] ; 4 uses
  %.not = icmp eq i64 %.139.lcssa, 0
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  tail call void %6(ptr noundef %4, ptr noundef %4, ptr noundef %3) #36
  %xtraiter = and i64 %.139.lcssa, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.c
  %i.ab = add nsw i64 %.139.lcssa, -1
  %i.ac = zext i32 %.1.lcssa to i64               ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.135.lcssa, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !82
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 %i.ac
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !82
  %i.ah = xor i8 %i.ag, %i.ae
  %i.ai = getelementptr inbounds nuw i8, ptr %.137.lcssa, i64 %i.ac
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !82
  %i.aj = add i32 %.1.lcssa, 1                    ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.c
  %.lcssa.unr = phi i32 [ poison, %bb.c ], [ %i.aj, %.prol.loopexit.unr-lcssa ]
  %.258.unr = phi i32 [ %.1.lcssa, %bb.c ], [ %i.aj, %.prol.loopexit.unr-lcssa ]
  %.24057.unr = phi i64 [ %.139.lcssa, %bb.c ], [ %i.ab, %.prol.loopexit.unr-lcssa ]
  %i.ak = icmp eq i64 %.139.lcssa, 1
  br i1 %i.ak, label %.loopexit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.258 = phi i32 [ %i.bb, %.new ], [ %.258.unr, %.prol.loopexit ] ; 3 uses
  %.24057 = phi i64 [ %i.at, %.new ], [ %.24057.unr, %.prol.loopexit ]
  %i.al = zext i32 %.258 to i64                   ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.135.lcssa, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !82
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 %i.al
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !82
  %i.aq = xor i8 %i.ap, %i.an
  %i.ar = getelementptr inbounds nuw i8, ptr %.137.lcssa, i64 %i.al
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !82
  %i.as = add i32 %.258, 1
  %i.at = add nsw i64 %.24057, -2                 ; 2 uses
  %i.au = zext i32 %i.as to i64                   ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.135.lcssa, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !82
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 %i.au
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !82
  %i.az = xor i8 %i.ay, %i.aw
  %i.ba = getelementptr inbounds nuw i8, ptr %.137.lcssa, i64 %i.au
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !82
  %i.bb = add i32 %.258, 2                        ; 2 uses
  %.not41.1 = icmp eq i64 %i.at, 0
  br i1 %.not41.1, label %.loopexit, label %.new, !llvm.loop !10

.loopexit:                                        ; preds = %.prol.loopexit, %.new, %._crit_edge
  %.3 = phi i32 [ %.1.lcssa, %._crit_edge ], [ %.lcssa.unr, %.prol.loopexit ], [ %i.bb, %.new ]
  store i32 %.3, ptr %5, align 4, !tbaa !84
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @AES_cfb128_encrypt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %5, align 4, !tbaa !84     ; 5 uses
  %.not.i = icmp eq i32 %6, 0
  %i.b = icmp ne i32 %i.a, 0
  %i.c = icmp ne i64 %2, 0
  %i.d = and i1 %i.c, %i.b                        ; 2 uses
  br i1 %.not.i, label %.preheader114.i, label %.preheader117.i

.preheader117.i:                                  ; preds = %bb.a
  br i1 %i.d, label %.lr.ph.i, label %.preheader116.i

.preheader114.i:                                  ; preds = %bb.a
  br i1 %i.d, label %.lr.ph143.i, label %.preheader.i

.preheader116.i:                                  ; preds = %.lr.ph.i, %.preheader117.i
  %.0101.lcssa.i = phi i32 [ %i.a, %.preheader117.i ], [ %i.ae, %.lr.ph.i ] ; 4 uses
  %.097.lcssa.i = phi i64 [ %2, %.preheader117.i ], [ %i.ac, %.lr.ph.i ] ; 3 uses
  %.093.lcssa.i = phi ptr [ %1, %.preheader117.i ], [ %i.ab, %.lr.ph.i ] ; 4 uses
  %.0.lcssa.i = phi ptr [ %0, %.preheader117.i ], [ %i.v, %.lr.ph.i ] ; 4 uses
  %i.e = icmp ugt i64 %.097.lcssa.i, 15
  br i1 %i.e, label %.lr.ph131.i.peel, label %._crit_edge132.i

.lr.ph131.i.peel:                                 ; preds = %.preheader116.i
  tail call void @aes_nohw_encrypt(ptr noundef readonly %4, ptr noundef %4, ptr noundef readonly %3)
  %i.f = icmp ult i32 %.0101.lcssa.i, 16
  br i1 %i.f, label %.lr.ph126.i.peel, label %._crit_edge.i.peel

.lr.ph126.i.peel:                                 ; preds = %.lr.ph131.i.peel
  %i.g = zext nneg i32 %.0101.lcssa.i to i64      ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 %i.g ; 2 uses
  %.0.copyload.i.i.peel = load i64, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 %i.g
  %.0.copyload.i111.i.peel = load i64, ptr %i.i, align 1
  %i.j = xor i64 %.0.copyload.i111.i.peel, %.0.copyload.i.i.peel ; 2 uses
  store i64 %i.j, ptr %i.h, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %.093.lcssa.i, i64 %i.g
  store i64 %i.j, ptr %i.k, align 1
  %i.l = icmp ult i32 %.0101.lcssa.i, 8
  br i1 %i.l, label %.lr.ph126.i.1.peel, label %._crit_edge.i.peel

.lr.ph126.i.1.peel:                               ; preds = %.lr.ph126.i.peel
  %indvars.iv.next.i.peel = add nuw nsw i64 %i.g, 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.next.i.peel ; 2 uses
  %.0.copyload.i.i.1.peel = load i64, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 %indvars.iv.next.i.peel
  %.0.copyload.i111.i.1.peel = load i64, ptr %i.n, align 1
  %i.o = xor i64 %.0.copyload.i111.i.1.peel, %.0.copyload.i.i.1.peel ; 2 uses
  store i64 %i.o, ptr %i.m, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %.093.lcssa.i, i64 %indvars.iv.next.i.peel
  store i64 %i.o, ptr %i.p, align 1
  br label %._crit_edge.i.peel

._crit_edge.i.peel:                               ; preds = %.lr.ph126.i.peel, %.lr.ph126.i.1.peel, %.lr.ph131.i.peel
  %i.q = add i64 %.097.lcssa.i, -16               ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.093.lcssa.i, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 16 ; 2 uses
  %i.t = icmp ugt i64 %i.q, 15
  br i1 %i.t, label %.lr.ph131.i.preheader.peel.newph, label %._crit_edge132.i

.lr.ph131.i.preheader.peel.newph:                 ; preds = %._crit_edge.i.peel
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %.lr.ph131.i

.lr.ph.i:                                         ; preds = %.preheader117.i, %.lr.ph.i
  %.0121.i = phi ptr [ %i.v, %.lr.ph.i ], [ %0, %.preheader117.i ] ; 2 uses
  %.093120.i = phi ptr [ %i.ab, %.lr.ph.i ], [ %1, %.preheader117.i ] ; 2 uses
  %.097119.i = phi i64 [ %i.ac, %.lr.ph.i ], [ %2, %.preheader117.i ]
  %.0101118.i = phi i32 [ %i.ae, %.lr.ph.i ], [ %i.a, %.preheader117.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0121.i, i64 1 ; 2 uses
  %i.w = load i8, ptr %.0121.i, align 1, !tbaa !82
  %i.x = zext i32 %.0101118.i to i64
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 %i.x ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !82
  %i.aa = xor i8 %i.z, %i.w                       ; 2 uses
  store i8 %i.aa, ptr %i.y, align 1, !tbaa !82
  %i.ab = getelementptr inbounds nuw i8, ptr %.093120.i, i64 1 ; 2 uses
  store i8 %i.aa, ptr %.093120.i, align 1, !tbaa !82
  %i.ac = add i64 %.097119.i, -1                  ; 3 uses
  %i.ad = add i32 %.0101118.i, 1
  %i.ae = and i32 %i.ad, 15                       ; 3 uses
  %i.af = icmp ne i32 %i.ae, 0
  %i.ag = icmp ne i64 %i.ac, 0
  %i.ah = select i1 %i.af, i1 %i.ag, i1 false
  br i1 %i.ah, label %.lr.ph.i, label %.preheader116.i, !llvm.loop !5

.lr.ph131.i:                                      ; preds = %.lr.ph131.i.preheader.peel.newph, %.lr.ph131.i
  %.1130.i = phi ptr [ %i.ao, %.lr.ph131.i ], [ %i.s, %.lr.ph131.i.preheader.peel.newph ] ; 3 uses
  %.194129.i = phi ptr [ %i.an, %.lr.ph131.i ], [ %i.r, %.lr.ph131.i.preheader.peel.newph ] ; 3 uses
  %.198128.i = phi i64 [ %i.am, %.lr.ph131.i ], [ %i.q, %.lr.ph131.i.preheader.peel.newph ]
  tail call void @aes_nohw_encrypt(ptr noundef readonly %4, ptr noundef %4, ptr noundef readonly %3)
  %.0.copyload.i.i = load i64, ptr %4, align 1
  %.0.copyload.i111.i = load i64, ptr %.1130.i, align 1
  %i.ai = xor i64 %.0.copyload.i111.i, %.0.copyload.i.i ; 2 uses
  store i64 %i.ai, ptr %4, align 1
  store i64 %i.ai, ptr %.194129.i, align 1
  %.0.copyload.i.i.1 = load i64, ptr %i.u, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %.1130.i, i64 8
  %.0.copyload.i111.i.1 = load i64, ptr %i.aj, align 1
  %i.ak = xor i64 %.0.copyload.i111.i.1, %.0.copyload.i.i.1 ; 2 uses
  store i64 %i.ak, ptr %i.u, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %.194129.i, i64 8
  store i64 %i.ak, ptr %i.al, align 1
  %i.am = add i64 %.198128.i, -16                 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.194129.i, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.1130.i, i64 16 ; 2 uses
  %i.ap = icmp ugt i64 %i.am, 15
  br i1 %i.ap, label %.lr.ph131.i, label %._crit_edge132.i, !llvm.loop !501

._crit_edge132.i:                                 ; preds = %._crit_edge.i.peel, %.lr.ph131.i, %.preheader116.i
  %.1102.lcssa.i = phi i32 [ %.0101.lcssa.i, %.preheader116.i ], [ 0, %.lr.ph131.i ], [ 0, %._crit_edge.i.peel ] ; 8 uses
  %.198.lcssa.i = phi i64 [ %.097.lcssa.i, %.preheader116.i ], [ %i.q, %._crit_edge.i.peel ], [ %i.am, %.lr.ph131.i ] ; 10 uses
  %.194.lcssa.i = phi ptr [ %.093.lcssa.i, %.preheader116.i ], [ %i.r, %._crit_edge.i.peel ], [ %i.an, %.lr.ph131.i ] ; 6 uses
  %.1.lcssa.i = phi ptr [ %.0.lcssa.i, %.preheader116.i ], [ %i.s, %._crit_edge.i.peel ], [ %i.ao, %.lr.ph131.i ] ; 6 uses
  %.not109.i = icmp eq i64 %.198.lcssa.i, 0
  br i1 %.not109.i, label %CRYPTO_cfb128_encrypt.exit, label %iter.check

iter.check:                                       ; preds = %._crit_edge132.i
  tail call void @aes_nohw_encrypt(ptr noundef readonly %4, ptr noundef %4, ptr noundef readonly %3)
  %min.iters.check = icmp samesign ult i64 %.198.lcssa.i, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.aq = add nsw i64 %.198.lcssa.i, -1           ; 2 uses
  %i.ar = trunc i64 %i.aq to i32
  %i.as = xor i32 %.1102.lcssa.i, -1
  %i.at = icmp ult i32 %i.as, %i.ar
  %i.au = icmp ugt i64 %i.aq, 4294967295
  %i.av = or i1 %i.at, %i.au
  br i1 %i.av, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.aw = zext i32 %.1102.lcssa.i to i64          ; 4 uses
  %i.ax = getelementptr i8, ptr %4, i64 %i.aw     ; 2 uses
  %i.ay = add nuw nsw i64 %.198.lcssa.i, %i.aw    ; 3 uses
  %i.az = getelementptr i8, ptr %4, i64 %i.ay     ; 2 uses
  %i.ba = getelementptr i8, ptr %.194.lcssa.i, i64 %i.aw ; 2 uses
  %i.bb = getelementptr i8, ptr %.194.lcssa.i, i64 %i.ay ; 2 uses
  %bound0 = icmp ult ptr %i.ax, %i.bb
  %bound1 = icmp ult ptr %i.ba, %i.az
  %found.conflict = and i1 %bound0, %bound1
  %7 = getelementptr i8, ptr %.1.lcssa.i, i64 %i.aw ; 2 uses
  %8 = getelementptr i8, ptr %.1.lcssa.i, i64 %i.ay ; 2 uses
  %bound090 = icmp ult ptr %i.ax, %8
  %bound191 = icmp ult ptr %7, %i.az
  %found.conflict92 = and i1 %bound090, %bound191
  %conflict.rdx = or i1 %found.conflict, %found.conflict92
  %bound093 = icmp ult ptr %i.ba, %8
  %bound194 = icmp ult ptr %7, %i.bb
  %found.conflict95 = and i1 %bound093, %bound194
  %conflict.rdx96 = or i1 %conflict.rdx, %found.conflict95
  br i1 %conflict.rdx96, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %n.vec101 = and i64 %.198.lcssa.i, 12           ; 3 uses
  %i.bc = and i64 %.198.lcssa.i, 3
  %i.bd = trunc nuw nsw i64 %n.vec101 to i32
  %i.be = add i32 %.1102.lcssa.i, %i.bd           ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index102 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next105, %vec.epilog.vector.body ] ; 2 uses
  %i.bf = trunc i64 %index102 to i32
  %i.bg = add i32 %.1102.lcssa.i, %i.bf
  %i.bh = zext i32 %i.bg to i64                   ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 %i.bh
  %wide.load103 = load <4 x i8>, ptr %i.bi, align 1, !tbaa !82, !alias.scope !515
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 %i.bh ; 2 uses
  %wide.load104 = load <4 x i8>, ptr %i.bj, align 1, !tbaa !82, !alias.scope !516, !noalias !517
  %i.bk = xor <4 x i8> %wide.load104, %wide.load103 ; 2 uses
  store <4 x i8> %i.bk, ptr %i.bj, align 1, !tbaa !82, !alias.scope !516, !noalias !517
  %i.bl = getelementptr inbounds nuw i8, ptr %.194.lcssa.i, i64 %i.bh
  store <4 x i8> %i.bk, ptr %i.bl, align 1, !tbaa !82, !alias.scope !518, !noalias !515
  %index.next105 = add nuw i64 %index102, 4       ; 2 uses
  %i.bm = icmp eq i64 %index.next105, %n.vec101
  br i1 %i.bm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !506

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n106 = icmp eq i64 %.198.lcssa.i, %n.vec101
  br i1 %cmp.n106, label %CRYPTO_cfb128_encrypt.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.middle.block
  %.299138.i.ph = phi i64 [ %.198.lcssa.i, %vector.scevcheck ], [ %.198.lcssa.i, %vector.memcheck ], [ %.198.lcssa.i, %iter.check ], [ %i.bc, %vec.epilog.middle.block ] ; 4 uses
  %.3104137.i.ph = phi i32 [ %.1102.lcssa.i, %vector.scevcheck ], [ %.1102.lcssa.i, %vector.memcheck ], [ %.1102.lcssa.i, %iter.check ], [ %i.be, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.299138.i.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.bn = add nsw i64 %.299138.i.ph, -1
  %i.bo = zext i32 %.3104137.i.ph to i64          ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !82
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 %i.bo ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !82
  %i.bt = xor i8 %i.bs, %i.bq                     ; 2 uses
  store i8 %i.bt, ptr %i.br, align 1, !tbaa !82
  %i.bu = getelementptr inbounds nuw i8, ptr %.194.lcssa.i, i64 %i.bo
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !82
  %i.bv = add i32 %.3104137.i.ph, 1               ; 2 uses
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa176.unr = phi i32 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.bv, %vec.epilog.scalar.ph.prol ]
  %.299138.i.unr = phi i64 [ %.299138.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bn, %vec.epilog.scalar.ph.prol ]
  %.3104137.i.unr = phi i32 [ %.3104137.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bv, %vec.epilog.scalar.ph.prol ]
  %i.bw = icmp eq i64 %.299138.i.ph, 1
  br i1 %i.bw, label %CRYPTO_cfb128_encrypt.exit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.299138.i = phi i64 [ %i.cf, %vec.epilog.scalar.ph ], [ %.299138.i.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %.3104137.i = phi i32 [ %i.cn, %vec.epilog.scalar.ph ], [ %.3104137.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %i.bx = zext i32 %.3104137.i to i64             ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !82
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 %i.bx ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !82
  %i.cc = xor i8 %i.cb, %i.bz                     ; 2 uses
  store i8 %i.cc, ptr %i.ca, align 1, !tbaa !82
  %i.cd = getelementptr inbounds nuw i8, ptr %.194.lcssa.i, i64 %i.bx
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !82
  %i.ce = add i32 %.3104137.i, 1
  %i.cf = add nsw i64 %.299138.i, -2              ; 2 uses
  %i.cg = zext i32 %i.ce to i64                   ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !82
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 %i.cg ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !82
  %i.cl = xor i8 %i.ck, %i.ci                     ; 2 uses
  store i8 %i.cl, ptr %i.cj, align 1, !tbaa !82
  %i.cm = getelementptr inbounds nuw i8, ptr %.194.lcssa.i, i64 %i.cg
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !82
  %i.cn = add i32 %.3104137.i, 2                  ; 2 uses
  %.not110.i.1 = icmp eq i64 %i.cf, 0
  br i1 %.not110.i.1, label %CRYPTO_cfb128_encrypt.exit, label %vec.epilog.scalar.ph, !llvm.loop !507

.preheader.i:                                     ; preds = %.lr.ph143.i, %.preheader114.i
  %.5106.lcssa.i = phi i32 [ %i.a, %.preheader114.i ], [ %i.do, %.lr.ph143.i ] ; 4 uses
  %.3100.lcssa.i = phi i64 [ %2, %.preheader114.i ], [ %i.dm, %.lr.ph143.i ] ; 3 uses
  %.295.lcssa.i = phi ptr [ %1, %.preheader114.i ], [ %i.dl, %.lr.ph143.i ] ; 4 uses
  %.2.lcssa.i = phi ptr [ %0, %.preheader114.i ], [ %i.di, %.lr.ph143.i ] ; 4 uses
  %i.co = icmp ugt i64 %.3100.lcssa.i, 15
  br i1 %i.co, label %.lr.ph156.i.peel, label %._crit_edge157.i

.lr.ph156.i.peel:                                 ; preds = %.preheader.i
  tail call void @aes_nohw_encrypt(ptr noundef readonly %4, ptr noundef %4, ptr noundef readonly %3)
  %i.cp = icmp ult i32 %.5106.lcssa.i, 16
  br i1 %i.cp, label %.lr.ph150.i.peel, label %._crit_edge151.i.peel

.lr.ph150.i.peel:                                 ; preds = %.lr.ph156.i.peel
  %i.cq = zext nneg i32 %.5106.lcssa.i to i64     ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.2.lcssa.i, i64 %i.cq
  %.0.copyload.i112.i.peel = load i64, ptr %i.cr, align 1 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.295.lcssa.i, i64 %i.cq
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 %i.cq ; 2 uses
  %.0.copyload.i113.i.peel = load i64, ptr %i.ct, align 1
  %i.cu = xor i64 %.0.copyload.i113.i.peel, %.0.copyload.i112.i.peel
  store i64 %i.cu, ptr %i.cs, align 1
  store i64 %.0.copyload.i112.i.peel, ptr %i.ct, align 1
  %i.cv = icmp ult i32 %.5106.lcssa.i, 8
  br i1 %i.cv, label %.lr.ph150.i.1.peel, label %._crit_edge151.i.peel

.lr.ph150.i.1.peel:                               ; preds = %.lr.ph150.i.peel
  %indvars.iv.next182.i.peel = add nuw nsw i64 %i.cq, 8 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.2.lcssa.i, i64 %indvars.iv.next182.i.peel
  %.0.copyload.i112.i.1.peel = load i64, ptr %i.cw, align 1 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.295.lcssa.i, i64 %indvars.iv.next182.i.peel
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.next182.i.peel ; 2 uses
  %.0.copyload.i113.i.1.peel = load i64, ptr %i.cy, align 1
  %i.cz = xor i64 %.0.copyload.i113.i.1.peel, %.0.copyload.i112.i.1.peel
  store i64 %i.cz, ptr %i.cx, align 1
  store i64 %.0.copyload.i112.i.1.peel, ptr %i.cy, align 1
  br label %._crit_edge151.i.peel

._crit_edge151.i.peel:                            ; preds = %.lr.ph150.i.peel, %.lr.ph150.i.1.peel, %.lr.ph156.i.peel
  %i.da = add i64 %.3100.lcssa.i, -16             ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.295.lcssa.i, i64 16 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.2.lcssa.i, i64 16 ; 2 uses
  %i.dd = icmp ugt i64 %i.da, 15
  br i1 %i.dd, label %.lr.ph156.i.preheader.peel.newph, label %._crit_edge157.i

.lr.ph156.i.preheader.peel.newph:                 ; preds = %._crit_edge151.i.peel
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %.lr.ph156.i

.lr.ph143.i:                                      ; preds = %.preheader114.i, %.lr.ph143.i
  %.2142.i = phi ptr [ %i.di, %.lr.ph143.i ], [ %0, %.preheader114.i ] ; 2 uses
  %.295141.i = phi ptr [ %i.dl, %.lr.ph143.i ], [ %1, %.preheader114.i ] ; 2 uses
  %.3100140.i = phi i64 [ %i.dm, %.lr.ph143.i ], [ %2, %.preheader114.i ]
  %.5106139.i = phi i32 [ %i.do, %.lr.ph143.i ], [ %i.a, %.preheader114.i ] ; 2 uses
  %i.df = zext i32 %.5106139.i to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 %i.df ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !82
  %i.di = getelementptr inbounds nuw i8, ptr %.2142.i, i64 1 ; 2 uses
  %i.dj = load i8, ptr %.2142.i, align 1, !tbaa !82 ; 2 uses
  %i.dk = xor i8 %i.dj, %i.dh
  %i.dl = getelementptr inbounds nuw i8, ptr %.295141.i, i64 1 ; 2 uses
  store i8 %i.dk, ptr %.295141.i, align 1, !tbaa !82
  store i8 %i.dj, ptr %i.dg, align 1, !tbaa !82
  %i.dm = add i64 %.3100140.i, -1                 ; 3 uses
  %i.dn = add i32 %.5106139.i, 1
  %i.do = and i32 %i.dn, 15                       ; 3 uses
  %i.dp = icmp ne i32 %i.do, 0
  %i.dq = icmp ne i64 %i.dm, 0
  %i.dr = select i1 %i.dp, i1 %i.dq, i1 false
  br i1 %i.dr, label %.lr.ph143.i, label %.preheader.i, !llvm.loop !6

.lr.ph156.i:                                      ; preds = %.lr.ph156.i.preheader.peel.newph, %.lr.ph156.i
  %.3155.i = phi ptr [ %i.dy, %.lr.ph156.i ], [ %i.dc, %.lr.ph156.i.preheader.peel.newph ] ; 3 uses
  %.396154.i = phi ptr [ %i.dx, %.lr.ph156.i ], [ %i.db, %.lr.ph156.i.preheader.peel.newph ] ; 3 uses
  %.4153.i = phi i64 [ %i.dw, %.lr.ph156.i ], [ %i.da, %.lr.ph156.i.preheader.peel.newph ]
  tail call void @aes_nohw_encrypt(ptr noundef readonly %4, ptr noundef %4, ptr noundef readonly %3)
  %.0.copyload.i112.i = load i64, ptr %.3155.i, align 1 ; 2 uses
  %.0.copyload.i113.i = load i64, ptr %4, align 1
  %i.ds = xor i64 %.0.copyload.i113.i, %.0.copyload.i112.i
  store i64 %i.ds, ptr %.396154.i, align 1
  store i64 %.0.copyload.i112.i, ptr %4, align 1
  %i.dt = getelementptr inbounds nuw i8, ptr %.3155.i, i64 8
  %.0.copyload.i112.i.1 = load i64, ptr %i.dt, align 1 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.396154.i, i64 8
  %.0.copyload.i113.i.1 = load i64, ptr %i.de, align 1
  %i.dv = xor i64 %.0.copyload.i113.i.1, %.0.copyload.i112.i.1
  store i64 %i.dv, ptr %i.du, align 1
  store i64 %.0.copyload.i112.i.1, ptr %i.de, align 1
  %i.dw = add i64 %.4153.i, -16                   ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.396154.i, i64 16 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.3155.i, i64 16 ; 2 uses
  %i.dz = icmp ugt i64 %i.dw, 15
  br i1 %i.dz, label %.lr.ph156.i, label %._crit_edge157.i, !llvm.loop !508

._crit_edge157.i:                                 ; preds = %._crit_edge151.i.peel, %.lr.ph156.i, %.preheader.i
  %.6.lcssa.i = phi i32 [ %.5106.lcssa.i, %.preheader.i ], [ 0, %.lr.ph156.i ], [ 0, %._crit_edge151.i.peel ] ; 8 uses
  %.4.lcssa.i = phi i64 [ %.3100.lcssa.i, %.preheader.i ], [ %i.da, %._crit_edge151.i.peel ], [ %i.dw, %.lr.ph156.i ] ; 10 uses
  %.396.lcssa.i = phi ptr [ %.295.lcssa.i, %.preheader.i ], [ %i.db, %._crit_edge151.i.peel ], [ %i.dx, %.lr.ph156.i ] ; 6 uses
  %.3.lcssa.i = phi ptr [ %.2.lcssa.i, %.preheader.i ], [ %i.dc, %._crit_edge151.i.peel ], [ %i.dy, %.lr.ph156.i ] ; 6 uses
  %.not107.i = icmp eq i64 %.4.lcssa.i, 0
  br i1 %.not107.i, label %CRYPTO_cfb128_encrypt.exit, label %iter.check152

iter.check152:                                    ; preds = %._crit_edge157.i
  tail call void @aes_nohw_encrypt(ptr noundef readonly %4, ptr noundef %4, ptr noundef readonly %3)
  %min.iters.check126 = icmp samesign ult i64 %.4.lcssa.i, 4
  br i1 %min.iters.check126, label %vec.epilog.scalar.ph154.preheader, label %vector.scevcheck108

vector.scevcheck108:                              ; preds = %iter.check152
  %i.ea = add nsw i64 %.4.lcssa.i, -1             ; 2 uses
  %i.eb = trunc i64 %i.ea to i32
  %i.ec = xor i32 %.6.lcssa.i, -1
  %i.ed = icmp ult i32 %i.ec, %i.eb
  %i.ee = icmp ugt i64 %i.ea, 4294967295
  %i.ef = or i1 %i.ed, %i.ee
  br i1 %i.ef, label %vec.epilog.scalar.ph154.preheader, label %vector.memcheck127

vector.memcheck127:                               ; preds = %vector.scevcheck108
  %i.eg = zext i32 %.6.lcssa.i to i64             ; 4 uses
  %i.eh = getelementptr i8, ptr %.396.lcssa.i, i64 %i.eg ; 2 uses
  %i.ei = add nuw nsw i64 %.4.lcssa.i, %i.eg      ; 3 uses
  %i.ej = getelementptr i8, ptr %.396.lcssa.i, i64 %i.ei ; 2 uses
  %i.ek = getelementptr i8, ptr %4, i64 %i.eg     ; 2 uses
  %i.el = getelementptr i8, ptr %4, i64 %i.ei     ; 2 uses
  %bound0128 = icmp ult ptr %i.eh, %i.el
  %bound1129 = icmp ult ptr %i.ek, %i.ej
  %found.conflict130 = and i1 %bound0128, %bound1129
  %9 = getelementptr i8, ptr %.3.lcssa.i, i64 %i.eg ; 2 uses
  %10 = getelementptr i8, ptr %.3.lcssa.i, i64 %i.ei ; 2 uses
  %bound0131 = icmp ult ptr %i.eh, %10
  %bound1132 = icmp ult ptr %9, %i.ej
  %found.conflict133 = and i1 %bound0131, %bound1132
  %conflict.rdx134 = or i1 %found.conflict130, %found.conflict133
  %bound0135 = icmp ult ptr %i.ek, %10
  %bound1136 = icmp ult ptr %9, %i.el
  %found.conflict137 = and i1 %bound0135, %bound1136
  %conflict.rdx138 = or i1 %conflict.rdx134, %found.conflict137
  br i1 %conflict.rdx138, label %vec.epilog.scalar.ph154.preheader, label %vec.epilog.ph156

vec.epilog.ph156:                                 ; preds = %vector.memcheck127
  %n.vec158 = and i64 %.4.lcssa.i, 12             ; 3 uses
  %i.em = and i64 %.4.lcssa.i, 3
  %i.en = trunc nuw nsw i64 %n.vec158 to i32
  %i.eo = add i32 %.6.lcssa.i, %i.en              ; 2 uses
  br label %vec.epilog.vector.body159

vec.epilog.vector.body159:                        ; preds = %vec.epilog.vector.body159, %vec.epilog.ph156
  %index160 = phi i64 [ 0, %vec.epilog.ph156 ], [ %index.next163, %vec.epilog.vector.body159 ] ; 2 uses
  %i.ep = trunc i64 %index160 to i32
  %i.eq = add i32 %.6.lcssa.i, %i.ep
  %i.er = zext i32 %i.eq to i64                   ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 %i.er ; 2 uses
  %wide.load161 = load <4 x i8>, ptr %i.es, align 1, !tbaa !82, !alias.scope !519, !noalias !520
  %i.et = getelementptr inbounds nuw i8, ptr %.3.lcssa.i, i64 %i.er
  %wide.load162 = load <4 x i8>, ptr %i.et, align 1, !tbaa !82, !alias.scope !520 ; 2 uses
  %i.eu = xor <4 x i8> %wide.load162, %wide.load161
  %i.ev = getelementptr inbounds nuw i8, ptr %.396.lcssa.i, i64 %i.er
  store <4 x i8> %i.eu, ptr %i.ev, align 1, !tbaa !82, !alias.scope !521, !noalias !522
  store <4 x i8> %wide.load162, ptr %i.es, align 1, !tbaa !82, !alias.scope !519, !noalias !520
  %index.next163 = add nuw i64 %index160, 4       ; 2 uses
  %i.ew = icmp eq i64 %index.next163, %n.vec158
  br i1 %i.ew, label %vec.epilog.middle.block164, label %vec.epilog.vector.body159, !llvm.loop !513

vec.epilog.middle.block164:                       ; preds = %vec.epilog.vector.body159
  %cmp.n165 = icmp eq i64 %.4.lcssa.i, %n.vec158
  br i1 %cmp.n165, label %CRYPTO_cfb128_encrypt.exit, label %vec.epilog.scalar.ph154.preheader

vec.epilog.scalar.ph154.preheader:                ; preds = %iter.check152, %vector.scevcheck108, %vector.memcheck127, %vec.epilog.middle.block164
  %.5163.i.ph = phi i64 [ %.4.lcssa.i, %vector.scevcheck108 ], [ %.4.lcssa.i, %vector.memcheck127 ], [ %.4.lcssa.i, %iter.check152 ], [ %i.em, %vec.epilog.middle.block164 ] ; 4 uses
  %.8162.i.ph = phi i32 [ %.6.lcssa.i, %vector.scevcheck108 ], [ %.6.lcssa.i, %vector.memcheck127 ], [ %.6.lcssa.i, %iter.check152 ], [ %i.eo, %vec.epilog.middle.block164 ] ; 3 uses
  %xtraiter186 = and i64 %.5163.i.ph, 1
  %lcmp.mod187.not = icmp eq i64 %xtraiter186, 0
  br i1 %lcmp.mod187.not, label %vec.epilog.scalar.ph154.prol.loopexit, label %vec.epilog.scalar.ph154.prol

vec.epilog.scalar.ph154.prol:                     ; preds = %vec.epilog.scalar.ph154.preheader
  %i.ex = add nsw i64 %.5163.i.ph, -1
  %i.ey = zext i32 %.8162.i.ph to i64             ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 %i.ey ; 2 uses
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !82
  %i.fb = getelementptr inbounds nuw i8, ptr %.3.lcssa.i, i64 %i.ey
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !82  ; 2 uses
  %i.fd = xor i8 %i.fc, %i.fa
  %i.fe = getelementptr inbounds nuw i8, ptr %.396.lcssa.i, i64 %i.ey
  store i8 %i.fd, ptr %i.fe, align 1, !tbaa !82
  store i8 %i.fc, ptr %i.ez, align 1, !tbaa !82
  %i.ff = add i32 %.8162.i.ph, 1                  ; 2 uses
  br label %vec.epilog.scalar.ph154.prol.loopexit

vec.epilog.scalar.ph154.prol.loopexit:            ; preds = %vec.epilog.scalar.ph154.prol, %vec.epilog.scalar.ph154.preheader
  %.lcssa.unr = phi i32 [ poison, %vec.epilog.scalar.ph154.preheader ], [ %i.ff, %vec.epilog.scalar.ph154.prol ]
  %.5163.i.unr = phi i64 [ %.5163.i.ph, %vec.epilog.scalar.ph154.preheader ], [ %i.ex, %vec.epilog.scalar.ph154.prol ]
  %.8162.i.unr = phi i32 [ %.8162.i.ph, %vec.epilog.scalar.ph154.preheader ], [ %i.ff, %vec.epilog.scalar.ph154.prol ]
  %i.fg = icmp eq i64 %.5163.i.ph, 1
  br i1 %i.fg, label %CRYPTO_cfb128_encrypt.exit, label %vec.epilog.scalar.ph154

vec.epilog.scalar.ph154:                          ; preds = %vec.epilog.scalar.ph154.prol.loopexit, %vec.epilog.scalar.ph154
  %.5163.i = phi i64 [ %i.fp, %vec.epilog.scalar.ph154 ], [ %.5163.i.unr, %vec.epilog.scalar.ph154.prol.loopexit ]
  %.8162.i = phi i32 [ %i.fx, %vec.epilog.scalar.ph154 ], [ %.8162.i.unr, %vec.epilog.scalar.ph154.prol.loopexit ] ; 3 uses
  %i.fh = zext i32 %.8162.i to i64                ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %4, i64 %i.fh ; 2 uses
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !82
  %i.fk = getelementptr inbounds nuw i8, ptr %.3.lcssa.i, i64 %i.fh
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !82  ; 2 uses
  %i.fm = xor i8 %i.fl, %i.fj
  %i.fn = getelementptr inbounds nuw i8, ptr %.396.lcssa.i, i64 %i.fh
  store i8 %i.fm, ptr %i.fn, align 1, !tbaa !82
  store i8 %i.fl, ptr %i.fi, align 1, !tbaa !82
  %i.fo = add i32 %.8162.i, 1
  %i.fp = add nsw i64 %.5163.i, -2                ; 2 uses
  %i.fq = zext i32 %i.fo to i64                   ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 %i.fq ; 2 uses
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !82
  %i.ft = getelementptr inbounds nuw i8, ptr %.3.lcssa.i, i64 %i.fq
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !82  ; 2 uses
  %i.fv = xor i8 %i.fu, %i.fs
  %i.fw = getelementptr inbounds nuw i8, ptr %.396.lcssa.i, i64 %i.fq
  store i8 %i.fv, ptr %i.fw, align 1, !tbaa !82
  store i8 %i.fu, ptr %i.fr, align 1, !tbaa !82
  %i.fx = add i32 %.8162.i, 2                     ; 2 uses
  %.not108.i.1 = icmp eq i64 %i.fp, 0
  br i1 %.not108.i.1, label %CRYPTO_cfb128_encrypt.exit, label %vec.epilog.scalar.ph154, !llvm.loop !514

CRYPTO_cfb128_encrypt.exit:                       ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.scalar.ph154.prol.loopexit, %vec.epilog.scalar.ph154, %vec.epilog.middle.block, %vec.epilog.middle.block164, %._crit_edge132.i, %._crit_edge157.i
  %storemerge.i = phi i32 [ %.1102.lcssa.i, %._crit_edge132.i ], [ %i.fx, %vec.epilog.scalar.ph154 ], [ %.6.lcssa.i, %._crit_edge157.i ], [ %i.eo, %vec.epilog.middle.block164 ], [ %i.be, %vec.epilog.middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph154.prol.loopexit ], [ %.lcssa176.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.cn, %vec.epilog.scalar.ph ]
  store i32 %storemerge.i, ptr %5, align 4, !tbaa !84
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @BN_add(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !113  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !113
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not25 = icmp eq i32 %i.b, 0                   ; 2 uses
  %spec.select = select i1 %.not25, ptr %1, ptr %2 ; 4 uses
  %spec.select28 = select i1 %.not25, ptr %2, ptr %1 ; 4 uses
  %i.e = load ptr, ptr %spec.select, align 8, !tbaa !114 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %spec.select, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !115  ; 3 uses
  %i.h = sext i32 %i.g to i64                     ; 7 uses
  %i.i = load ptr, ptr %spec.select28, align 8, !tbaa !114 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %spec.select28, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !115  ; 3 uses
  %i.l = sext i32 %i.k to i64                     ; 7 uses
  %i.m = icmp ult i32 %i.g, %i.k
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %i.l) ; 2 uses
  %.not.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %i.o = trunc i64 %i.am to i32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.b
  %.043.lcssa.i.i = phi i32 [ 0, %bb.b ], [ %i.o, %._crit_edge.loopexit.i.i ] ; 3 uses
  br i1 %i.m, label %.preheader.i.i.preheader, label %bb.c

.preheader.i.i.preheader:                         ; preds = %._crit_edge.i.i
  %i.p = sub nsw i64 %i.l, %i.h                   ; 3 uses
  %min.iters.check82 = icmp ult i64 %i.p, 4
  br i1 %min.iters.check82, label %.preheader.i.i.preheader98, label %vector.ph83

vector.ph83:                                      ; preds = %.preheader.i.i.preheader
  %n.vec84 = and i64 %i.p, -4                     ; 3 uses
  %i.q = add nsw i64 %n.vec84, %i.h
  %invariant.gep114 = getelementptr [8 x i8], ptr %i.i, i64 %i.h
  br label %vector.body85

vector.body85:                                    ; preds = %vector.body85, %vector.ph83
  %index86 = phi i64 [ 0, %vector.ph83 ], [ %index.next91, %vector.body85 ] ; 2 uses
  %vec.phi87 = phi <2 x i64> [ zeroinitializer, %vector.ph83 ], [ %i.s, %vector.body85 ]
  %vec.phi88 = phi <2 x i64> [ zeroinitializer, %vector.ph83 ], [ %i.t, %vector.body85 ]
  %gep115 = getelementptr [8 x i8], ptr %invariant.gep114, i64 %index86 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %gep115, i64 16
  %wide.load89 = load <2 x i64>, ptr %gep115, align 8, !tbaa !98
  %wide.load90 = load <2 x i64>, ptr %i.r, align 8, !tbaa !98
  %i.s = or <2 x i64> %wide.load89, %vec.phi87    ; 2 uses
  %i.t = or <2 x i64> %wide.load90, %vec.phi88    ; 2 uses
  %index.next91 = add nuw i64 %index86, 4         ; 2 uses
  %i.u = icmp eq i64 %index.next91, %n.vec84
  br i1 %i.u, label %middle.block92, label %vector.body85, !llvm.loop !523

middle.block92:                                   ; preds = %vector.body85
  %bin.rdx93 = or <2 x i64> %i.t, %i.s
  %i.v = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx93) ; 2 uses
  %cmp.n94 = icmp eq i64 %i.p, %n.vec84
  br i1 %cmp.n94, label %.loopexit, label %.preheader.i.i.preheader98

.preheader.i.i.preheader98:                       ; preds = %.preheader.i.i.preheader, %middle.block92
  %.04157.i.i.ph = phi i64 [ %i.h, %.preheader.i.i.preheader ], [ %i.q, %middle.block92 ]
  %.04256.i.i.ph = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.v, %middle.block92 ]
  br label %.preheader.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.04353.i.i = phi i64 [ %i.am, %.lr.ph.i.i ], [ 0, %bb.b ]
  %.04452.i.i = phi i64 [ %i.an, %.lr.ph.i.i ], [ 0, %bb.b ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.04452.i.i
  %i.x = load i64, ptr %i.w, align 8, !tbaa !98   ; 5 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.04452.i.i
  %i.z = load i64, ptr %i.y, align 8, !tbaa !98   ; 3 uses
  %i.aa = icmp eq i64 %i.x, %i.z
  %.neg.i.i.i.i.i = sext i1 %i.aa to i64
  %i.ab = xor i64 %i.z, %i.x
  %i.ac = sub i64 %i.x, %i.z
  %i.ad = xor i64 %i.ac, %i.x
  %i.ae = or i64 %i.ad, %i.ab
  %i.af = xor i64 %i.ae, %i.x
  %.neg.i.i.i.i = ashr i64 %i.af, 63
  %i.ag = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i) #38, !srcloc !110
  %i.ah = or i64 %i.ag, 1
  %i.ai = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i) #38, !srcloc !110 ; 2 uses
  %i.aj = and i64 %i.ai, %.04353.i.i
  %i.ak = xor i64 %i.ai, -1
  %i.al = and i64 %i.ah, %i.ak
  %i.am = or disjoint i64 %i.aj, %i.al            ; 2 uses
  %i.an = add nuw i64 %.04452.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.an, %i.n
  br i1 %exitcond.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !11

.loopexit:                                        ; preds = %.preheader.i.i, %middle.block92
  %.lcssa = phi i64 [ %i.v, %middle.block92 ], [ %i.av, %.preheader.i.i ]
  %i.ao = icmp eq i64 %.lcssa, 0
  %.neg.i.i49.i.i = sext i1 %i.ao to i64
end_hunk_4

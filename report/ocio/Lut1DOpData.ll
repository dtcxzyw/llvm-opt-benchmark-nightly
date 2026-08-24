Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/Lut1DOpData?download=true
inline.NumInlined: 736
inline.NumDeleted: 318
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN16OpenColorIO_v2_511Lut1DOpData5scaleEf:bb.a
  store <4 x float> %i.m, ptr %i.k, align 4, !tbaa !18
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !164

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %_ZN16OpenColorIO_v2_56ArrayTIfE5scaleEf.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.07.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.07.i = phi i64 [ %i.r, %.lr.ph.i ], [ %.07.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.07.i ; 2 uses
  %i.p = load float, ptr %i.o, align 4, !tbaa !18
  %i.q = fmul float %1, %i.p
  store float %i.q, ptr %i.o, align 4, !tbaa !18
  %i.r = add nuw i64 %.07.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.r, %i.i
  br i1 %exitcond.not.i, label %_ZN16OpenColorIO_v2_56ArrayTIfE5scaleEf.exit, label %.lr.ph.i, !llvm.loop !165

_ZN16OpenColorIO_v2_56ArrayTIfE5scaleEf.exit:     ; preds = %.lr.ph.i, %middle.block, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_511Lut1DOpData21initializeFromForwardEv(ptr noundef nonnull align 8 dereferenceable(364) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i64 %i.d(ptr noundef nonnull align 8 dereferenceable(48) %i.a) ; 2 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i64 %i.h(ptr noundef nonnull align 8 dereferenceable(48) %i.a) ; 3 uses
  %.not224 = icmp eq i64 %i.i, 0
  br i1 %.not224, label %._crit_edge223.thread, label %.lr.ph222

.lr.ph222:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.k = add i64 %i.e, -1                         ; 4 uses
  %i.l = mul i64 %i.k, 3
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.n = load i32, ptr %i.m, align 8, !tbaa !79
  %i.o = trunc i32 %i.n to i1                     ; 3 uses
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !14   ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.r = mul i64 %i.e, 3                          ; 2 uses
  %.not186244 = icmp eq i64 %i.k, 0
  br label %bb.b

._crit_edge223:                                   ; preds = %.critedge2
  %i.s = icmp eq i64 %i.i, 1
  br i1 %i.s, label %bb.v, label %._crit_edge223.thread

bb.b:                                             ; preds = %.lr.ph222, %.critedge2
  %.0181220 = phi i64 [ 0, %.lr.ph222 ], [ %i.cj, %.critedge2 ] ; 7 uses
  %i.t = add i64 %.0181220, %i.l                  ; 2 uses
  %i.u = add i64 %.0181220, 46080
  %.0179 = select i1 %i.o, i64 %i.u, i64 %i.t
  %i.v = getelementptr [4 x i8], ptr %i.p, i64 %.0181220 ; 17 uses
  %i.w = load float, ptr %i.v, align 4, !tbaa !18 ; 4 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.0179
  %i.y = load float, ptr %i.x, align 4, !tbaa !18
  %i.z = fcmp olt float %i.w, %i.y                ; 4 uses
  %i.aa = getelementptr inbounds nuw [40 x i8], ptr %i.q, i64 %.0181220 ; 5 uses
  %i.ab = zext i1 %i.z to i8
  store i8 %i.ab, ptr %i.aa, align 8, !tbaa !82
  %.0174200 = add i64 %.0181220, 3                ; 4 uses
  br i1 %i.o, label %.preheader, label %.preheader195

.preheader195:                                    ; preds = %bb.b
  %i.ac = icmp ult i64 %.0174200, %i.r
  br i1 %i.ac, label %.lr.ph, label %.loopexit.thread

.preheader:                                       ; preds = %bb.b
  %.not184201 = icmp ugt i64 %.0174200, 95232
  br i1 %.not184201, label %._crit_edge, label %.lr.ph204

.lr.ph:                                           ; preds = %.preheader195, %bb.d
  %.0176199 = phi i64 [ %.0176, %bb.d ], [ %.0174200, %.preheader195 ] ; 2 uses
  %.0177198 = phi float [ %.1178, %bb.d ], [ %i.w, %.preheader195 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.0176199 ; 2 uses
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !18 ; 2 uses
  %i.af = fcmp ule float %i.ae, %.0177198
  %.not = xor i1 %i.z, %i.af
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  store float %.0177198, ptr %i.ad, align 4, !tbaa !18
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %.1178 = phi float [ %.0177198, %bb.c ], [ %i.ae, %.lr.ph ]
  %.0176 = add i64 %.0176199, 3                   ; 2 uses
  %i.ag = icmp ult i64 %.0176, %i.r
  br i1 %i.ag, label %.lr.ph, label %.loopexit, !llvm.loop !166

._crit_edge.loopexit:                             ; preds = %bb.f
  %.pre = load float, ptr %i.v, align 4, !tbaa !18
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.ah = phi float [ %.pre, %._crit_edge.loopexit ], [ %i.w, %.preheader ]
  %i.ai = add i64 %.0181220, 98304                ; 2 uses
  %.not185205 = icmp ugt i64 %i.ai, 193536
  br i1 %.not185205, label %.loopexit, label %.lr.ph209

.lr.ph204:                                        ; preds = %.preheader, %bb.f
  %.0174203 = phi i64 [ %.0174, %bb.f ], [ %.0174200, %.preheader ] ; 3 uses
  %.0175202 = phi float [ %.1, %bb.f ], [ %i.w, %.preheader ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.0174203 ; 2 uses
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !18 ; 2 uses
  %i.al = fcmp ule float %i.ak, %.0175202
  %.not189 = xor i1 %i.z, %i.al
  br i1 %.not189, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph204
  store float %.0175202, ptr %i.aj, align 4, !tbaa !18
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph204, %bb.e
  %.1 = phi float [ %.0175202, %bb.e ], [ %i.ak, %.lr.ph204 ]
  %.0174 = add nuw nsw i64 %.0174203, 3
  %.not184 = icmp ugt i64 %.0174203, 95229
  br i1 %.not184, label %._crit_edge.loopexit, label %.lr.ph204, !llvm.loop !167

.lr.ph209:                                        ; preds = %._crit_edge, %bb.h
  %.0173207 = phi i64 [ %i.ap, %bb.h ], [ %i.ai, %._crit_edge ] ; 3 uses
  %.2206 = phi float [ %.3, %bb.h ], [ %i.ah, %._crit_edge ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.0173207 ; 2 uses
  %i.an = load float, ptr %i.am, align 4, !tbaa !18 ; 2 uses
  %i.ao = fcmp ogt float %i.an, %.2206
  %.not188 = xor i1 %i.z, %i.ao
  br i1 %.not188, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph209
  store float %.2206, ptr %i.am, align 4, !tbaa !18
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph209, %bb.g
  %.3 = phi float [ %.2206, %bb.g ], [ %i.an, %.lr.ph209 ]
  %i.ap = add nuw nsw i64 %.0173207, 3
  %.not185 = icmp ugt i64 %.0173207, 193533
  br i1 %.not185, label %.loopexit, label %.lr.ph209, !llvm.loop !168

.loopexit:                                        ; preds = %bb.d, %bb.h, %._crit_edge
  br i1 %i.o, label %bb.k, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.preheader195, %.loopexit
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.t
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !18
  br i1 %.not186244, label %.critedge, label %.lr.ph246

bb.i:                                             ; preds = %.lr.ph246
  %.not186 = icmp eq i64 %i.as, 0
  br i1 %.not186, label %.critedge, label %.lr.ph246, !llvm.loop !169

.lr.ph246:                                        ; preds = %.loopexit.thread, %bb.i
  %.0172245 = phi i64 [ %i.as, %bb.i ], [ %i.k, %.loopexit.thread ] ; 2 uses
  %i.as = add i64 %.0172245, -1                   ; 4 uses
  %.idx = mul i64 %i.as, 12
  %gep = getelementptr i8, ptr %i.v, i64 %.idx
  %i.at = load float, ptr %gep, align 4, !tbaa !18
  %i.au = fcmp oeq float %i.at, %i.ar
  br i1 %i.au, label %bb.i, label %..critedge_crit_edge247, !llvm.loop !169

..critedge_crit_edge247:                          ; preds = %.lr.ph246
  br label %.critedge, !llvm.loop !169

.critedge:                                        ; preds = %bb.i, %..critedge_crit_edge247, %.loopexit.thread
  %.0172.lcssa = phi i64 [ %i.k, %.loopexit.thread ], [ %.0172245, %..critedge_crit_edge247 ], [ %i.as, %bb.i ] ; 7 uses
  %i.av = load float, ptr %i.v, align 4, !tbaa !18
  %exitcond.not249 = icmp eq i64 %.0172.lcssa, 0
  br i1 %exitcond.not249, label %.critedge2, label %.lr.ph251

bb.j:                                             ; preds = %.lr.ph251
  %exitcond.not = icmp eq i64 %i.aw, %.0172.lcssa
  br i1 %exitcond.not, label %.critedge2, label %.lr.ph251, !llvm.loop !170

.lr.ph251:                                        ; preds = %.critedge, %bb.j
  %.0171250 = phi i64 [ %i.aw, %bb.j ], [ 0, %.critedge ] ; 2 uses
  %i.aw = add i64 %.0171250, 1                    ; 3 uses
  %.idx190 = mul i64 %i.aw, 12
  %gep211 = getelementptr i8, ptr %i.v, i64 %.idx190
  %i.ax = load float, ptr %gep211, align 4, !tbaa !18
  %i.ay = fcmp oeq float %i.ax, %i.av
  br i1 %i.ay, label %bb.j, label %..critedge2.loopexit240_crit_edge253, !llvm.loop !170

bb.k:                                             ; preds = %.loopexit
  %i.az = getelementptr i8, ptr %i.v, i64 380916
  %i.ba = load float, ptr %i.az, align 4, !tbaa !18 ; 3 uses
  br label %bb.o

bb.l:                                             ; preds = %bb.o
  %i.bb = add nsw i64 %.0170255, -2               ; 2 uses
  %.idx191.1 = mul nsw i64 %i.bb, 12
  %gep213.1 = getelementptr i8, ptr %i.v, i64 %.idx191.1
  %i.bc = load float, ptr %gep213.1, align 4, !tbaa !18
  %i.bd = fcmp oeq float %i.bc, %i.ba
  br i1 %i.bd, label %bb.m, label %.critedge4, !llvm.loop !171

bb.m:                                             ; preds = %bb.l
  %i.be = add nsw i64 %.0170255, -3               ; 4 uses
  %.idx191.2 = mul nsw i64 %i.be, 12
  %gep213.2 = getelementptr i8, ptr %i.v, i64 %.idx191.2
  %i.bf = load float, ptr %gep213.2, align 4, !tbaa !18
  %i.bg = fcmp oeq float %i.bf, %i.ba
  br i1 %i.bg, label %bb.n, label %.critedge4, !llvm.loop !171

bb.n:                                             ; preds = %bb.m
  %.not187.2 = icmp eq i64 %i.be, 0
  br i1 %.not187.2, label %.critedge4, label %bb.o, !llvm.loop !171

bb.o:                                             ; preds = %bb.n, %bb.k
  %.0170255 = phi i64 [ 31743, %bb.k ], [ %i.be, %bb.n ] ; 4 uses
  %i.bh = add nsw i64 %.0170255, -1               ; 2 uses
  %.idx191 = mul nsw i64 %i.bh, 12
  %gep213 = getelementptr i8, ptr %i.v, i64 %.idx191
  %i.bi = load float, ptr %gep213, align 4, !tbaa !18
  %i.bj = fcmp oeq float %i.bi, %i.ba
  br i1 %i.bj, label %bb.l, label %.critedge4, !llvm.loop !171

.critedge4:                                       ; preds = %bb.n, %bb.m, %bb.l, %bb.o
  %.0170.lcssa = phi i64 [ %i.be, %bb.n ], [ %.0170255, %bb.o ], [ %i.bh, %bb.l ], [ %i.bb, %bb.m ] ; 5 uses
  %i.bk = load float, ptr %i.v, align 4, !tbaa !18
  %exitcond228.not256 = icmp eq i64 %.0170.lcssa, 0
  br i1 %exitcond228.not256, label %.critedge6, label %.lr.ph258

bb.p:                                             ; preds = %.lr.ph258
  %exitcond228.not = icmp eq i64 %i.bl, %.0170.lcssa
  br i1 %exitcond228.not, label %.critedge6, label %.lr.ph258, !llvm.loop !172

.lr.ph258:                                        ; preds = %.critedge4, %bb.p
  %.0169257 = phi i64 [ %i.bl, %bb.p ], [ 0, %.critedge4 ] ; 2 uses
  %i.bl = add nuw nsw i64 %.0169257, 1            ; 3 uses
  %.idx192 = mul nuw nsw i64 %i.bl, 12
  %gep215 = getelementptr i8, ptr %i.v, i64 %.idx192
  %i.bm = load float, ptr %gep215, align 4, !tbaa !18
  %i.bn = fcmp oeq float %i.bm, %i.bk
  br i1 %i.bn, label %bb.p, label %..critedge6_crit_edge260, !llvm.loop !172

..critedge6_crit_edge260:                         ; preds = %.lr.ph258
  br label %.critedge6, !llvm.loop !172

.critedge6:                                       ; preds = %bb.p, %..critedge6_crit_edge260, %.critedge4
  %.0169.lcssa = phi i64 [ %.0170.lcssa, %.critedge4 ], [ %.0169257, %..critedge6_crit_edge260 ], [ %.0170.lcssa, %bb.p ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 %.0169.lcssa, ptr %i.bo, align 8, !tbaa !173
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 %.0170.lcssa, ptr %i.bp, align 8, !tbaa !174
  %i.bq = getelementptr i8, ptr %i.v, i64 774132
  %i.br = load float, ptr %i.bq, align 4, !tbaa !18 ; 3 uses
  br label %bb.t

bb.q:                                             ; preds = %bb.t
  %i.bs = add nsw i64 %.0168262, -2               ; 3 uses
  %.idx193.1 = mul nuw nsw i64 %i.bs, 12
  %gep217.1 = getelementptr i8, ptr %i.v, i64 %.idx193.1
  %i.bt = load float, ptr %gep217.1, align 4, !tbaa !18
  %i.bu = fcmp oeq float %i.bt, %i.br
  br i1 %i.bu, label %bb.r, label %.critedge8, !llvm.loop !175

bb.r:                                             ; preds = %bb.q
  %i.bv = add nsw i64 %.0168262, -3               ; 3 uses
  %.idx193.2 = mul nuw nsw i64 %i.bv, 12
  %gep217.2 = getelementptr i8, ptr %i.v, i64 %.idx193.2
  %i.bw = load float, ptr %gep217.2, align 4, !tbaa !18
  %i.bx = fcmp oeq float %i.bw, %i.br
  br i1 %i.bx, label %bb.s, label %.critedge8, !llvm.loop !175

bb.s:                                             ; preds = %bb.r
  %i.by = icmp sgt i64 %.0168262, 32771
  br i1 %i.by, label %bb.t, label %.critedge8, !llvm.loop !175

bb.t:                                             ; preds = %bb.s, %.critedge6
  %.0168262 = phi i64 [ 64511, %.critedge6 ], [ %i.bv, %bb.s ] ; 6 uses
  %i.bz = add nsw i64 %.0168262, -1               ; 3 uses
  %.idx193 = mul nuw nsw i64 %i.bz, 12
  %gep217 = getelementptr i8, ptr %i.v, i64 %.idx193
  %i.ca = load float, ptr %gep217, align 4, !tbaa !18
  %i.cb = fcmp oeq float %i.ca, %i.br
  br i1 %i.cb, label %bb.q, label %.critedge8, !llvm.loop !175

.critedge8:                                       ; preds = %bb.s, %bb.r, %bb.q, %bb.t
  %.0168.lcssa243 = phi i64 [ %i.bv, %bb.s ], [ %.0168262, %bb.t ], [ %i.bz, %bb.q ], [ %i.bs, %bb.r ] ; 4 uses
  %.0168.lcssa = phi i64 [ 32768, %bb.s ], [ %.0168262, %bb.t ], [ %i.bz, %bb.q ], [ %i.bs, %bb.r ] ; 3 uses
  %i.cc = getelementptr i8, ptr %i.v, i64 393216
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !18
  %exitcond230.not263 = icmp eq i64 %.0168.lcssa243, 32768
  br i1 %exitcond230.not263, label %.critedge2, label %.lr.ph265

bb.u:                                             ; preds = %.lr.ph265
  %exitcond230.not = icmp eq i64 %i.ce, %.0168.lcssa243
  br i1 %exitcond230.not, label %.critedge2, label %.lr.ph265, !llvm.loop !176

.lr.ph265:                                        ; preds = %.critedge8, %bb.u
  %.0264 = phi i64 [ %i.ce, %bb.u ], [ 32768, %.critedge8 ] ; 2 uses
  %i.ce = add nuw nsw i64 %.0264, 1               ; 3 uses
  %.idx194 = mul nuw nsw i64 %i.ce, 12
  %gep219 = getelementptr i8, ptr %i.v, i64 %.idx194
  %i.cf = load float, ptr %gep219, align 4, !tbaa !18
  %i.cg = fcmp oeq float %i.cf, %i.cd
  br i1 %i.cg, label %bb.u, label %..critedge2.loopexit_crit_edge267, !llvm.loop !176

..critedge2.loopexit_crit_edge267:                ; preds = %.lr.ph265
  br label %.critedge2, !llvm.loop !176

..critedge2.loopexit240_crit_edge253:             ; preds = %.lr.ph251
  br label %.critedge2, !llvm.loop !170

.critedge2:                                       ; preds = %bb.j, %bb.u, %.critedge, %..critedge2.loopexit240_crit_edge253, %.critedge8, %..critedge2.loopexit_crit_edge267
  %.sink239 = phi i64 [ 24, %.critedge8 ], [ 8, %.critedge ], [ 24, %..critedge2.loopexit_crit_edge267 ], [ 24, %bb.u ], [ 8, %..critedge2.loopexit240_crit_edge253 ], [ 8, %bb.j ]
  %.0.lcssa.sink = phi i64 [ %.0168.lcssa243, %.critedge8 ], [ %.0172.lcssa, %.critedge ], [ %.0264, %..critedge2.loopexit_crit_edge267 ], [ %.0168.lcssa243, %bb.u ], [ %.0171250, %..critedge2.loopexit240_crit_edge253 ], [ %.0172.lcssa, %bb.j ]
  %.sink238 = phi i64 [ 32, %.critedge8 ], [ 16, %.critedge ], [ 32, %..critedge2.loopexit_crit_edge267 ], [ 32, %bb.u ], [ 16, %..critedge2.loopexit240_crit_edge253 ], [ 16, %bb.j ]
  %.0168.lcssa.sink = phi i64 [ %.0168.lcssa, %.critedge8 ], [ %.0172.lcssa, %.critedge ], [ %.0168.lcssa, %..critedge2.loopexit_crit_edge267 ], [ %.0168.lcssa, %bb.u ], [ %.0172.lcssa, %..critedge2.loopexit240_crit_edge253 ], [ %.0172.lcssa, %bb.j ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sink239
  store i64 %.0.lcssa.sink, ptr %i.ch, align 8, !tbaa !104
  %i.ci = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sink238
  store i64 %.0168.lcssa.sink, ptr %i.ci, align 8, !tbaa !104
  %i.cj = add nuw i64 %.0181220, 1                ; 2 uses
  %exitcond231.not = icmp eq i64 %i.cj, %i.i
  br i1 %exitcond231.not, label %._crit_edge223, label %bb.b, !llvm.loop !177

bb.v:                                             ; preds = %._crit_edge223
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 280
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cl, ptr noundef nonnull align 8 dereferenceable(40) %i.ck, i64 40, i1 false), !tbaa.struct !178
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 320
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cm, ptr noundef nonnull align 8 dereferenceable(40) %i.ck, i64 40, i1 false)
  br label %._crit_edge223.thread

._crit_edge223.thread:                            ; preds = %bb.a, %bb.v, %._crit_edge223
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN16OpenColorIO_v2_5eqERKNS_11Lut1DOpDataES2_(ptr noundef nonnull align 8 dereferenceable(364) %0, ptr noundef nonnull align 8 dereferenceable(364) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(364) %0, ptr noundef nonnull align 8 dereferenceable(168) %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_56ArrayTIfE14setDoubleValueEmd(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1, double noundef %2) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = fptrunc double %2 to float
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %1
  store float %i.a, ptr %i.d, align 4, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef double @_ZN16OpenColorIO_v2_56ArrayTIfE14getDoubleValueEm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %1
  %i.d = load float, ptr %i.c, align 4, !tbaa !18
  %i.e = fpext float %i.d to double
  ret double %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK16OpenColorIO_v2_56ArrayTIfE21getNumColorComponentsEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !50
  ret i64 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK16OpenColorIO_v2_56ArrayTIfE8validateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 9 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull @.str.23)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.f) #26
  br label %bb.o

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !52
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !14
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 2
  %i.p = load ptr, ptr %0, align 8, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef i64 %i.r(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.not = icmp eq i64 %i.o, %i.s
  br i1 %.not, label %bb.n, label %bb.f
end_hunk_0

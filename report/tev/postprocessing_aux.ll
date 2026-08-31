Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/postprocessing_aux?download=true
inline.NumInlined: 12
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN6LibRaw16blend_highlightsEv:bb.a
  %i.iu = fptoui float %i.it to i16
  %i.iv = load i16, ptr %i.ae, align 2, !tbaa !176
  %i.iw = zext i16 %i.iv to i32
  %i.ix = mul nuw nsw i32 %.080150, %i.iw
  %i.iy = add nuw nsw i32 %i.ix, %.079148
  %i.iz = zext nneg i32 %i.iy to i64
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %i.iz
  %i.jb = getelementptr inbounds nuw [2 x i8], ptr %i.ja, i64 %indvars.iv200.epil.init
  store i16 %i.iu, ptr %i.jb, align 2, !tbaa !107
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %.loopexit.loopexit.unr-lcssa, %.epil.preheader313
  %.pre207 = load i16, ptr %i.ae, align 2, !tbaa !176
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader95, %._crit_edge.thread, %.loopexit.loopexit, %._crit_edge
  %i.jc = phi i16 [ %.pre207, %.loopexit.loopexit ], [ %i.bj, %.preheader95 ], [ %i.bj, %._crit_edge ], [ %i.bj, %._crit_edge.thread ] ; 4 uses
  %i.jd = add nuw nsw i32 %.079148, 1             ; 2 uses
  %i.je = zext i16 %i.jc to i32                   ; 2 uses
  %i.jf = icmp samesign ult i32 %i.jd, %i.je
  br i1 %i.jf, label %.preheader98, label %._crit_edge149.loopexit, !llvm.loop !209

._crit_edge149.loopexit:                          ; preds = %.loopexit
  %.pre208 = load i16, ptr %i.ac, align 4, !tbaa !175
  br label %._crit_edge149

._crit_edge149:                                   ; preds = %._crit_edge149.loopexit, %.preheader99
  %i.jg = phi i16 [ %.pre208, %._crit_edge149.loopexit ], [ %i.bf, %.preheader99 ] ; 2 uses
  %i.jh = phi i16 [ %i.jc, %._crit_edge149.loopexit ], [ %i.bg, %.preheader99 ]
  %i.ji = phi i16 [ %i.jc, %._crit_edge149.loopexit ], [ 0, %.preheader99 ]
  %i.jj = add nuw nsw i32 %.080150, 1             ; 2 uses
  %i.jk = zext i16 %i.jg to i32
  %i.jl = icmp samesign ult i32 %i.jj, %i.jk
  br i1 %i.jl, label %.preheader99, label %._crit_edge151, !llvm.loop !210

._crit_edge151:                                   ; preds = %._crit_edge149, %.preheader100
  %i.jm = load ptr, ptr %i.h, align 8, !tbaa !183 ; 2 uses
  %.not92 = icmp eq ptr %i.jm, null
  br i1 %.not92, label %bb.k, label %bb.i

bb.i:                                             ; preds = %._crit_edge151
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 768272
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !184
  %i.jp = tail call noundef i32 %i.jm(ptr noundef %i.jo, i32 noundef 16384, i32 noundef 1, i32 noundef 2)
  %.not93 = icmp eq i32 %i.jp, 0
  br i1 %.not93, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.jq = tail call ptr @__cxa_allocate_exception(i64 4) #11 ; 2 uses
  store i32 6, ptr %i.jq, align 16, !tbaa !185
  tail call void @__cxa_throw(ptr nonnull %i.jq, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #12
  unreachable

bb.k:                                             ; preds = %._crit_edge151, %bb.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw18recover_highlightsEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 5384
  %i.d = load i32, ptr %i.c, align 8, !tbaa !211
  %i.e = sub nsw i32 4, %i.d
  %ldexpf = tail call float @ldexpf(float 1.000000e+00, i32 %i.e) ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 540 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !104  ; 6 uses
  %.not282 = icmp eq i32 %i.g, 0
  br i1 %.not282, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 153268 ; 2 uses
  %wide.trip.count = zext i32 %i.g to i64         ; 4 uses
  %min.iters.check = icmp ult i32 %i.g, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %wide.load = load <4 x float>, ptr %i.i, align 4, !tbaa !8
  %wide.load462 = load <4 x float>, ptr %i.j, align 4, !tbaa !8
  %i.k = fmul <4 x float> %wide.load, splat (float 3.200000e+04)
  %i.l = fmul <4 x float> %wide.load462, splat (float 3.200000e+04)
  %i.m = fptosi <4 x float> %i.k to <4 x i32>
  %i.n = fptosi <4 x float> %i.l to <4 x i32>
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store <4 x i32> %i.m, ptr %i.o, align 16, !tbaa !103
  store <4 x i32> %i.n, ptr %i.p, align 16, !tbaa !103
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !212

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph213.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.lr.ph213.preheader:                              ; preds = %scalar.ph, %middle.block
  %wide.trip.count297 = zext i32 %i.g to i64
  br label %.lr.ph213

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.s = load float, ptr %i.r, align 4, !tbaa !8
  %i.t = fmul float %i.s, 3.200000e+04
  %i.u = fptosi float %i.t to i32
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %i.u, ptr %i.v, align 4, !tbaa !103
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph213.preheader, label %scalar.ph, !llvm.loop !213

bb.b:                                             ; preds = %.lr.ph213
  %indvars.iv.next295 = add nuw nsw i64 %indvars.iv294, 1 ; 2 uses
  %exitcond298.not = icmp eq i64 %indvars.iv.next295, %wide.trip.count297
  br i1 %exitcond298.not, label %.preheader207, label %.lr.ph213, !llvm.loop !214

.preheader207:                                    ; preds = %bb.b
  %.not456 = icmp eq i32 %i.g, 1
  br i1 %.not456, label %._crit_edge, label %.lr.ph216

.lr.ph216:                                        ; preds = %.preheader207
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 153268 ; 4 uses
  %.pre = load float, ptr %i.w, align 4, !tbaa !8 ; 2 uses
  %i.x = add nsw i64 %wide.trip.count, -1         ; 3 uses
  %xtraiter = and i64 %i.x, 1
  %i.y = icmp eq i32 %i.g, 2
  br i1 %i.y, label %.epil.preheader, label %.lr.ph216.new

.lr.ph216.new:                                    ; preds = %.lr.ph216
  %unroll_iter = and i64 %i.x, -2
  br label %bb.c

.lr.ph213:                                        ; preds = %.lr.ph213.preheader, %bb.b
  %indvars.iv294 = phi i64 [ 0, %.lr.ph213.preheader ], [ %indvars.iv.next295, %bb.b ] ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv294
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !103
  %i.ab = icmp slt i32 %i.aa, 1
  br i1 %i.ab, label %.loopexit209, label %bb.b

bb.c:                                             ; preds = %bb.c, %.lr.ph216.new
  %i.ac = phi float [ %.pre, %.lr.ph216.new ], [ %i.am, %bb.c ] ; 2 uses
  %indvars.iv299 = phi i64 [ 1, %.lr.ph216.new ], [ %indvars.iv.next300.1, %bb.c ] ; 4 uses
  %.0156214 = phi i32 [ 0, %.lr.ph216.new ], [ %spec.select.1, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph216.new ], [ %niter.next.1, %bb.c ]
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv299
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !8 ; 2 uses
  %i.af = fcmp olt float %i.ac, %i.ae             ; 2 uses
  %i.ag = trunc nuw i64 %indvars.iv299 to i32
  %spec.select = select i1 %i.af, i32 %i.ag, i32 %.0156214
  %indvars.iv.next300 = add nuw nsw i64 %indvars.iv299, 1 ; 2 uses
  %i.ah = select i1 %i.af, float %i.ae, float %i.ac ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next300
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !8 ; 2 uses
  %i.ak = fcmp olt float %i.ah, %i.aj             ; 2 uses
  %i.al = trunc nuw i64 %indvars.iv.next300 to i32
  %spec.select.1 = select i1 %i.ak, i32 %i.al, i32 %spec.select ; 3 uses
  %indvars.iv.next300.1 = add nuw nsw i64 %indvars.iv299, 2 ; 2 uses
  %i.am = select i1 %i.ak, float %i.aj, float %i.ah ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !215

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph216
  %.epil.init = phi float [ %.pre, %.lr.ph216 ], [ %i.am, %._crit_edge.loopexit.unr-lcssa ]
  %indvars.iv299.epil.init = phi i64 [ 1, %.lr.ph216 ], [ %indvars.iv.next300.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.0156214.epil.init = phi i32 [ 0, %.lr.ph216 ], [ %spec.select.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod530 = trunc i64 %i.x to i1
  tail call void @llvm.assume(i1 %lcmp.mod530)
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv299.epil.init
  %i.ao = load float, ptr %i.an, align 4, !tbaa !8
  %i.ap = fcmp olt float %.epil.init, %i.ao
  %i.aq = trunc nuw i64 %indvars.iv299.epil.init to i32
  %spec.select.epil = select i1 %i.ap, i32 %i.aq, i32 %.0156214.epil.init
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.epil.preheader
  %spec.select.lcssa = phi i32 [ %spec.select.1, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select.epil, %.epil.preheader ]
  %i.ar = zext i32 %spec.select.lcssa to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %._crit_edge.loopexit, %.preheader207
  %.0156.lcssa = phi i64 [ 0, %.preheader207 ], [ %i.ar, %._crit_edge.loopexit ], [ 0, %bb.a ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.at = load i16, ptr %i.as, align 4, !tbaa !175
  %i.au = zext i16 %i.at to i32
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 381668 ; 4 uses
  %i.aw = load i16, ptr %i.av, align 4, !tbaa !179
  %i.ax = zext nneg i16 %i.aw to i32
  %i.ay = sub nsw i32 2, %i.ax                    ; 2 uses
  %i.az = lshr i32 %i.au, %i.ay                   ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 3 uses
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !176
  %i.bc = zext i16 %i.bb to i32
  %i.bd = lshr i32 %i.bc, %i.ay                   ; 9 uses
  %i.be = zext nneg i32 %i.az to i64              ; 6 uses
  %i.bf = shl nuw nsw i32 %i.bd, 2
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.be, i64 noundef %i.bg) ; 28 uses
  %i.bi = load i32, ptr %i.f, align 4, !tbaa !104 ; 2 uses
  %.not284 = icmp eq i32 %i.bi, 0
  br i1 %.not284, label %._crit_edge279, label %.lr.ph278

.lr.ph278:                                        ; preds = %._crit_edge
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 768264
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 768272
  %i.bl = mul nuw i32 %i.az, %i.bd                ; 4 uses
  %i.bm = zext i32 %i.bl to i64                   ; 7 uses
  %i.bn = shl nuw nsw i64 %i.bm, 2
  %.not285 = icmp eq i32 %i.az, 0                 ; 3 uses
  %.not286 = icmp eq i32 %i.bd, 0                 ; 3 uses
  %i.bo = fdiv float 3.200000e+01, %ldexpf
  %i.bp = fptosi float %i.bo to i32               ; 2 uses
  %i.bq = icmp sgt i32 %i.bl, 0                   ; 2 uses
  %i.br = zext nneg i32 %i.bd to i64              ; 14 uses
  %brmerge = or i1 %.not285, %.not286
  %min.iters.check509 = icmp samesign ult i32 %i.bd, 8
  %n.vec511 = and i64 %i.br, 65528                ; 3 uses
  %cmp.n516 = icmp eq i64 %n.vec511, %i.br
  %.not199460 = icmp eq i32 %i.bp, 0
  %min.iters.check490 = icmp ult i32 %i.bl, 20
  %n.vec492 = and i64 %i.bm, 2147483644           ; 3 uses
  %cmp.n506 = icmp eq i64 %n.vec492, %i.bm
  %min.iters.check464 = icmp ult i32 %i.bl, 8
  %n.vec466 = and i64 %i.bm, 2147483640           ; 3 uses
  %cmp.n487 = icmp eq i64 %n.vec466, %i.bm
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph278, %.loopexit
  %indvars.iv369 = phi i64 [ 0, %.lr.ph278 ], [ %indvars.iv.next370, %.loopexit ] ; 7 uses
  %i.bs = phi i32 [ %i.bi, %.lr.ph278 ], [ %i.lm, %.loopexit ]
  %.not = icmp eq i64 %indvars.iv369, %.0156.lcssa
  br i1 %.not, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bt = load ptr, ptr %i.bj, align 8, !tbaa !183 ; 2 uses
  %.not197 = icmp eq ptr %i.bt, null
  br i1 %.not197, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bu = load ptr, ptr %i.bk, align 8, !tbaa !184
  %i.bv = trunc nuw i64 %indvars.iv369 to i32
  %i.bw = add i32 %i.bv, -1
  %i.bx = add nsw i32 %i.bs, -1
  %i.by = tail call noundef i32 %i.bt(ptr noundef %i.bu, i32 noundef 16384, i32 noundef %i.bw, i32 noundef %i.bx)
  %.not198 = icmp eq i32 %i.by, 0
  br i1 %.not198, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bz = tail call ptr @__cxa_allocate_exception(i64 4) #11 ; 2 uses
  store i32 6, ptr %i.bz, align 16, !tbaa !185
  tail call void @__cxa_throw(ptr nonnull %i.bz, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #12
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.e
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bh, i8 0, i64 %i.bn, i1 false)
  br i1 %.not285, label %._crit_edge247.split, label %.preheader205.lr.ph

.preheader205.lr.ph:                              ; preds = %bb.h
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv369
  br i1 %.not286, label %._crit_edge247.split, label %.preheader205.lr.ph.split

.preheader205.lr.ph.split:                        ; preds = %.preheader205.lr.ph
  %i.cb = load i16, ptr %i.av, align 4, !tbaa !179 ; 2 uses
  %i.cc = zext nneg i16 %i.cb to i32
  %i.cd = lshr i32 4, %i.cc                       ; 5 uses
  %i.ce = mul nuw nsw i32 %i.cd, %i.cd
  %i.cf = icmp ugt i16 %i.cb, 2
  %i.cg = zext nneg i32 %i.cd to i64              ; 7 uses
  br label %.preheader205

.preheader205:                                    ; preds = %.preheader205.lr.ph.split, %._crit_edge242
  %indvars.iv330 = phi i64 [ 0, %.preheader205.lr.ph.split ], [ %indvars.iv.next331, %._crit_edge242 ] ; 3 uses
  %indvars.iv318 = phi i32 [ %i.cd, %.preheader205.lr.ph.split ], [ %indvars.iv.next319, %._crit_edge242 ] ; 2 uses
  %i.ch = mul nuw nsw i64 %indvars.iv330, %i.cg   ; 2 uses
  %indvars.iv.next331 = add nuw nsw i64 %indvars.iv330, 1 ; 3 uses
  %i.ci = mul nuw nsw i64 %indvars.iv.next331, %i.cg
  %i.cj = icmp samesign ult i64 %i.ch, %i.ci
  %i.ck = mul nuw nsw i64 %indvars.iv330, %i.br   ; 2 uses
  br i1 %i.cj, label %.lr.ph233.us.preheader, label %.lr.ph241.split

.lr.ph233.us.preheader:                           ; preds = %.preheader205
  %i.cl = trunc nuw nsw i64 %i.ch to i32
  %invariant.gep446 = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.ck
  br label %.lr.ph233.us

.lr.ph233.us:                                     ; preds = %.lr.ph233.us.preheader, %bb.j
  %indvars.iv323 = phi i64 [ 0, %.lr.ph233.us.preheader ], [ %indvars.iv.next324, %bb.j ] ; 3 uses
  %indvars.iv321 = phi i64 [ %i.cg, %.lr.ph233.us.preheader ], [ %indvars.iv.next322, %bb.j ] ; 2 uses
  %indvars.iv309 = phi i64 [ 0, %.lr.ph233.us.preheader ], [ %indvars.iv.next310, %bb.j ] ; 2 uses
  %i.cm = mul nuw nsw i64 %indvars.iv323, %i.cg
  %indvars.iv.next324 = add nuw nsw i64 %indvars.iv323, 1 ; 3 uses
  %i.cn = mul nuw nsw i64 %indvars.iv.next324, %i.cg
  %i.co = icmp samesign ult i64 %i.cm, %i.cn
  br i1 %i.co, label %.lr.ph233.split.us.us, label %._crit_edge234.us

bb.i:                                             ; preds = %._crit_edge234.us
  %i.cp = extractelement <2 x float> %i.cs, i64 0
  %i.cq = extractelement <2 x float> %i.cs, i64 1
  %i.cr = fdiv float %i.cp, %i.cq
  %gep447 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep446, i64 %indvars.iv323
  store float %i.cr, ptr %gep447, align 4, !tbaa !8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge234.us
  %indvars.iv.next310 = add nuw nsw i64 %indvars.iv309, %i.cg
  %indvars.iv.next322 = add nuw nsw i64 %indvars.iv321, %i.cg
  %exitcond329.not = icmp eq i64 %indvars.iv.next324, %i.br
  br i1 %exitcond329.not, label %._crit_edge242, label %.lr.ph233.us, !llvm.loop !216

._crit_edge234.us:                                ; preds = %._crit_edge224.us.us, %.lr.ph233.us
  %.us-phi239.us = phi i32 [ 0, %.lr.ph233.us ], [ %.2175.us.us, %._crit_edge224.us.us ]
  %i.cs = phi <2 x float> [ zeroinitializer, %.lr.ph233.us ], [ %3, %._crit_edge224.us.us ] ; 2 uses
  %i.ct = icmp eq i32 %.us-phi239.us, %i.ce
  br i1 %i.ct, label %bb.i, label %bb.j

.lr.ph233.split.us.us:                            ; preds = %.lr.ph233.us
  %i.cu = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.cv = load i16, ptr %i.ba, align 2, !tbaa !176
  %i.cw = zext i16 %i.cv to i32
  %i.cx = load i32, ptr %i.ca, align 4, !tbaa !103
  br label %.lr.ph223.us.us

.lr.ph223.us.us:                                  ; preds = %._crit_edge224.us.us, %.lr.ph233.split.us.us
  %.0160231.us.us = phi i32 [ %i.cl, %.lr.ph233.split.us.us ], [ %i.dq, %._crit_edge224.us.us ] ; 2 uses
  %.0173230.us.us = phi i32 [ 0, %.lr.ph233.split.us.us ], [ %.2175.us.us, %._crit_edge224.us.us ]
  %i.cy = phi <2 x float> [ zeroinitializer, %.lr.ph233.split.us.us ], [ %3, %._crit_edge224.us.us ]
  %i.cz = mul i32 %.0160231.us.us, %i.cw
  br label %bb.k

bb.k:                                             ; preds = %bb.n, %.lr.ph223.us.us
  %indvars.iv311 = phi i64 [ %indvars.iv.next312, %bb.n ], [ %indvars.iv309, %.lr.ph223.us.us ] ; 2 uses
  %.1174220.us.us = phi i32 [ %.2175.us.us, %bb.n ], [ %.0173230.us.us, %.lr.ph223.us.us ] ; 3 uses
  %1 = phi <2 x float> [ %3, %bb.n ], [ %i.cy, %.lr.ph223.us.us ] ; 3 uses
  %2 = trunc nuw nsw i64 %indvars.iv311 to i32
  %i.da = add i32 %i.cz, %2
  %i.db = zext i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.db ; 2 uses
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.dc, i64 %indvars.iv369
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !107 ; 2 uses
  %i.df = zext i16 %i.de to i32
  %i.dg = sdiv i32 %i.df, %i.cx
  %i.dh = icmp eq i32 %i.dg, 1
  br i1 %i.dh, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %i.dc, i64 %.0156.lcssa
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !107 ; 2 uses
  %i.dk = icmp ugt i16 %i.dj, 24000
  br i1 %i.dk, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dl = insertelement <2 x i16> poison, i16 %i.de, i64 0
  %i.dm = insertelement <2 x i16> %i.dl, i16 %i.dj, i64 1
  %i.dn = uitofp <2 x i16> %i.dm to <2 x float>
  %i.do = fadd <2 x float> %1, %i.dn
  %i.dp = add nsw i32 %.1174220.us.us, 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.2175.us.us = phi i32 [ %i.dp, %bb.m ], [ %.1174220.us.us, %bb.l ], [ %.1174220.us.us, %bb.k ] ; 3 uses
  %3 = phi <2 x float> [ %i.do, %bb.m ], [ %1, %bb.l ], [ %1, %bb.k ] ; 3 uses
  %indvars.iv.next312 = add nuw nsw i64 %indvars.iv311, 1 ; 2 uses
  %exitcond317.not.a = icmp eq i64 %indvars.iv.next312, %indvars.iv321
  br i1 %exitcond317.not.a, label %._crit_edge224.us.us, label %bb.k, !llvm.loop !217

._crit_edge224.us.us:                             ; preds = %bb.n
  %i.dq = add nuw nsw i32 %.0160231.us.us, 1      ; 2 uses
  %exitcond320.not = icmp eq i32 %i.dq, %indvars.iv318
  br i1 %exitcond320.not, label %._crit_edge234.us, label %.lr.ph223.us.us, !llvm.loop !218

.lr.ph241.split:                                  ; preds = %.preheader205
  br i1 %i.cf, label %.lr.ph241.split.split.preheader, label %._crit_edge242

.lr.ph241.split.split.preheader:                  ; preds = %.lr.ph241.split
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.ck ; 2 uses
  br i1 %min.iters.check509, label %.lr.ph241.split.split.preheader520, label %vector.body512

vector.body512:                                   ; preds = %.lr.ph241.split.split.preheader, %vector.body512
  %index513 = phi i64 [ %index.next514, %vector.body512 ], [ 0, %.lr.ph241.split.split.preheader ] ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index513 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store <4 x float> splat (float +qnan), ptr %i.dr, align 4, !tbaa !8
  store <4 x float> splat (float +qnan), ptr %i.ds, align 4, !tbaa !8
  %index.next514 = add nuw i64 %index513, 8       ; 2 uses
  %i.dt = icmp eq i64 %index.next514, %n.vec511
  br i1 %i.dt, label %middle.block515, label %vector.body512, !llvm.loop !219

middle.block515:                                  ; preds = %vector.body512
  br i1 %cmp.n516, label %._crit_edge242, label %.lr.ph241.split.split.preheader520

.lr.ph241.split.split.preheader520:               ; preds = %.lr.ph241.split.split.preheader, %middle.block515
  %indvars.iv304.ph = phi i64 [ 0, %.lr.ph241.split.split.preheader ], [ %n.vec511, %middle.block515 ]
  br label %.lr.ph241.split.split

.lr.ph241.split.split:                            ; preds = %.lr.ph241.split.split.preheader520, %.lr.ph241.split.split
  %indvars.iv304 = phi i64 [ %indvars.iv.next305, %.lr.ph241.split.split ], [ %indvars.iv304.ph, %.lr.ph241.split.split.preheader520 ] ; 2 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv304
  store float +qnan, ptr %gep, align 4, !tbaa !8
  %indvars.iv.next305 = add nuw nsw i64 %indvars.iv304, 1 ; 2 uses
  %exitcond308.not = icmp eq i64 %indvars.iv.next305, %i.br
  br i1 %exitcond308.not, label %._crit_edge242, label %.lr.ph241.split.split, !llvm.loop !220

._crit_edge242:                                   ; preds = %.lr.ph241.split.split, %bb.j, %middle.block515, %.lr.ph241.split
  %indvars.iv.next319 = add nuw nsw i32 %indvars.iv318, %i.cd
  %exitcond334.not = icmp eq i64 %indvars.iv.next331, %i.be
  br i1 %exitcond334.not, label %._crit_edge247.split, label %.preheader205, !llvm.loop !221

._crit_edge247.split:                             ; preds = %._crit_edge242, %.preheader205.lr.ph, %bb.h
  br i1 %.not199460, label %._crit_edge461, label %.preheader204

bb.o:                                             ; preds = %._crit_edge258
  %.not199 = icmp eq i32 %i.du, 0
  br i1 %.not199, label %._crit_edge461, label %.preheader204, !llvm.loop !222

.preheader204:                                    ; preds = %._crit_edge247.split, %bb.o
  %.in = phi i32 [ %i.du, %bb.o ], [ %i.bp, %._crit_edge247.split ]
  %i.du = add nsw i32 %.in, -1                    ; 2 uses
  br i1 %brmerge, label %.preheader203, label %.preheader201

.preheader203:                                    ; preds = %._crit_edge253, %.preheader204
  br i1 %i.bq, label %.lr.ph257.preheader, label %.preheader206

.lr.ph257.preheader:                              ; preds = %.preheader203
  br i1 %min.iters.check490, label %.lr.ph257.preheader519, label %vector.body493

vector.body493:                                   ; preds = %.lr.ph257.preheader, %pred.store.continue503
  %index494 = phi i64 [ %index.next504, %pred.store.continue503 ], [ 0, %.lr.ph257.preheader ] ; 5 uses
  %vec.phi = phi <4 x i32> [ %i.es, %pred.store.continue503 ], [ zeroinitializer, %.lr.ph257.preheader ]
  %i.dv = phi <4 x i1> [ %i.er, %pred.store.continue503 ], [ zeroinitializer, %.lr.ph257.preheader ]
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %index494 ; 2 uses
  %wide.load495 = load <4 x float>, ptr %i.dw, align 4, !tbaa !8
  %wide.load495.fr = freeze <4 x float> %wide.load495 ; 5 uses
  %i.dx = fcmp olt <4 x float> %wide.load495.fr, zeroinitializer ; 6 uses
  %i.dy = extractelement <4 x i1> %i.dx, i64 0
  br i1 %i.dy, label %pred.store.if496, label %pred.store.continue497

pred.store.if496:                                 ; preds = %vector.body493
  %i.dz = extractelement <4 x float> %wide.load495.fr, i64 0
  %i.ea = fneg float %i.dz
  store float %i.ea, ptr %i.dw, align 4, !tbaa !8
  br label %pred.store.continue497

pred.store.continue497:                           ; preds = %pred.store.if496, %vector.body493
  %i.eb = extractelement <4 x i1> %i.dx, i64 1
  br i1 %i.eb, label %pred.store.if498, label %pred.store.continue499

pred.store.if498:                                 ; preds = %pred.store.continue497
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %index494
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %i.ee = extractelement <4 x float> %wide.load495.fr, i64 1
  %i.ef = fneg float %i.ee
  store float %i.ef, ptr %i.ed, align 4, !tbaa !8
  br label %pred.store.continue499

pred.store.continue499:                           ; preds = %pred.store.if498, %pred.store.continue497
  %i.eg = extractelement <4 x i1> %i.dx, i64 2
  br i1 %i.eg, label %pred.store.if500, label %pred.store.continue501

pred.store.if500:                                 ; preds = %pred.store.continue499
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %index494
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = extractelement <4 x float> %wide.load495.fr, i64 2
  %i.ek = fneg float %i.ej
  store float %i.ek, ptr %i.ei, align 4, !tbaa !8
  br label %pred.store.continue501

pred.store.continue501:                           ; preds = %pred.store.if500, %pred.store.continue499
  %i.el = extractelement <4 x i1> %i.dx, i64 3
  br i1 %i.el, label %pred.store.if502, label %pred.store.continue503

pred.store.if502:                                 ; preds = %pred.store.continue501
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %index494
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 12
  %i.eo = extractelement <4 x float> %wide.load495.fr, i64 3
  %i.ep = fneg float %i.eo
  store float %i.ep, ptr %i.en, align 4, !tbaa !8
  br label %pred.store.continue503

pred.store.continue503:                           ; preds = %pred.store.if502, %pred.store.continue501
  %i.eq = bitcast <4 x i1> %i.dx to i4
  %.not518 = icmp eq i4 %i.eq, 0                  ; 2 uses
  %i.er = select i1 %.not518, <4 x i1> %i.dv, <4 x i1> %i.dx ; 2 uses
  %i.es = select i1 %.not518, <4 x i32> %vec.phi, <4 x i32> splat (i32 1) ; 2 uses
  %index.next504 = add nuw i64 %index494, 4       ; 2 uses
  %i.et = icmp eq i64 %index.next504, %n.vec492
  br i1 %i.et, label %middle.block505, label %vector.body493, !llvm.loop !223

middle.block505:                                  ; preds = %pred.store.continue503
  %i.eu = tail call i32 @llvm.experimental.vector.extract.last.active.v4i32(<4 x i32> %i.es, <4 x i1> %i.er, i32 0) ; 2 uses
  br i1 %cmp.n506, label %._crit_edge258, label %.lr.ph257.preheader519

.lr.ph257.preheader519:                           ; preds = %.lr.ph257.preheader, %middle.block505
  %indvars.iv349.ph = phi i64 [ 0, %.lr.ph257.preheader ], [ %n.vec492, %middle.block505 ]
  %.0170255.ph = phi i32 [ 0, %.lr.ph257.preheader ], [ %i.eu, %middle.block505 ]
  br label %.lr.ph257

.preheader201:                                    ; preds = %.preheader204, %._crit_edge253
  %indvars.iv344 = phi i64 [ %indvars.iv.next345, %._crit_edge253 ], [ 0, %.preheader204 ] ; 5 uses
  %i.ev = mul nuw nsw i64 %indvars.iv344, %i.br   ; 3 uses
  %invariant.gep448 = getelementptr [4 x i8], ptr %i.bh, i64 %i.ev
  %i.ew = trunc i64 %indvars.iv344 to i32
  %i.ex = add i32 %i.ew, -1                       ; 4 uses
  %i.ey = icmp ult i32 %i.ex, %i.az               ; 2 uses
  %i.ez = mul nuw i32 %i.ex, %i.bd
  %i.fa = mul nuw i32 %i.ex, %i.bd
  %i.fb = zext i32 %i.fa to i64
  %invariant.gep450 = getelementptr [4 x i8], ptr %i.bh, i64 %i.fb
  %i.fc = mul nuw i32 %i.ex, %i.bd
  %i.fd = zext i32 %i.fc to i64
  %invariant.gep452 = getelementptr [4 x i8], ptr %i.bh, i64 %i.fd
  %i.fe = add nuw nsw i64 %indvars.iv344, 1       ; 2 uses
  %i.ff = icmp samesign ult i64 %i.fe, %i.be
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.ev
  %i.fh = add nuw nsw i64 %indvars.iv344, 1       ; 4 uses
  %i.fi = icmp samesign ult i64 %i.fh, %i.be
  %i.fj = mul nuw nsw i64 %i.fh, %i.br
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.fj
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.ev
  br label %bb.p

bb.p:                                             ; preds = %.preheader201, %bb.aa
  %indvars.iv339 = phi i64 [ 0, %.preheader201 ], [ %indvars.iv.next340.pre-phi, %bb.aa ] ; 7 uses
  %gep449 = getelementptr [4 x i8], ptr %invariant.gep448, i64 %indvars.iv339 ; 2 uses
  %i.fm = load float, ptr %gep449, align 4, !tbaa !8
  %i.fn = fcmp une float %i.fm, 0.000000e+00
  br i1 %i.fn, label %._crit_edge381, label %.preheader.preheader

._crit_edge381:                                   ; preds = %bb.p
  %.pre382 = add nuw nsw i64 %indvars.iv339, 1
  br label %bb.aa

.preheader.preheader:                             ; preds = %bb.p
  %i.fo = trunc i64 %indvars.iv339 to i32
  %i.fp = add i32 %i.fo, -1                       ; 4 uses
  %i.fq = icmp ult i32 %i.fp, %i.bd               ; 3 uses
  %or.cond = and i1 %i.ey, %i.fq
  br i1 %or.cond, label %bb.q, label %.preheader.1

bb.q:                                             ; preds = %.preheader.preheader
  %i.fr = add nuw i32 %i.ez, %i.fp
  %i.fs = zext i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.fs
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !8 ; 2 uses
  %i.fv = fcmp ogt float %i.fu, 0.000000e+00
  br i1 %i.fv, label %bb.r, label %.preheader.1

bb.r:                                             ; preds = %bb.q
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader, %bb.q, %bb.r
  %.4184 = phi float [ %i.fu, %bb.r ], [ 0.000000e+00, %bb.q ], [ 0.000000e+00, %.preheader.preheader ] ; 4 uses
  %.4 = phi i32 [ 1, %bb.r ], [ 0, %bb.q ], [ 0, %.preheader.preheader ] ; 4 uses
  br i1 %i.ey, label %.preheader.2, label %.preheader.2.thread

.preheader.2.thread:                              ; preds = %.preheader.1
  %i.fw = add nuw nsw i64 %indvars.iv339, 1       ; 3 uses
  %i.fx = icmp samesign ult i64 %i.fw, %i.br
  br i1 %i.fx, label %.preheader.4, label %.preheader.4.thread

.preheader.2:                                     ; preds = %.preheader.1
  %gep451 = getelementptr [4 x i8], ptr %invariant.gep450, i64 %indvars.iv339
  %i.fy = load float, ptr %gep451, align 4, !tbaa !8 ; 2 uses
  %i.fz = fcmp ogt float %i.fy, 0.000000e+00      ; 2 uses
  %i.ga = tail call float @llvm.fmuladd.f32(float %i.fy, float 2.000000e+00, float %.4184)
  %i.gb = or disjoint i32 %.4, 2
  %.4184.1 = select i1 %i.fz, float %i.ga, float %.4184 ; 3 uses
  %.4.1 = select i1 %i.fz, i32 %i.gb, i32 %.4     ; 3 uses
  %i.gc = add nuw nsw i64 %indvars.iv339, 1       ; 5 uses
  %i.gd = icmp samesign ult i64 %i.gc, %i.br
  br i1 %i.gd, label %bb.s, label %.preheader.4.thread

bb.s:                                             ; preds = %.preheader.2
  %gep453 = getelementptr [4 x i8], ptr %invariant.gep452, i64 %i.gc
  %i.ge = load float, ptr %gep453, align 4, !tbaa !8 ; 2 uses
  %i.gf = fcmp ogt float %i.ge, 0.000000e+00
  br i1 %i.gf, label %.split, label %.preheader.4

.split:                                           ; preds = %bb.s
  %i.gg = fadd float %i.ge, %.4184.1
  %i.gh = add nuw nsw i32 %.4.1, 1
  br label %.preheader.4

.preheader.4:                                     ; preds = %bb.s, %.split, %.preheader.2.thread
  %.4.2423 = phi i32 [ %i.gh, %.split ], [ %.4, %.preheader.2.thread ], [ %.4.1, %bb.s ] ; 2 uses
  %.4184.2422 = phi float [ %i.gg, %.split ], [ %.4184, %.preheader.2.thread ], [ %.4184.1, %bb.s ] ; 2 uses
  %i.gi = phi i64 [ %i.gc, %.split ], [ %i.fw, %.preheader.2.thread ], [ %i.gc, %bb.s ] ; 5 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.gi
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !8 ; 2 uses
  %i.gl = fcmp ogt float %i.gk, 0.000000e+00      ; 2 uses
  %i.gm = tail call float @llvm.fmuladd.f32(float %i.gk, float 2.000000e+00, float %.4184.2422)
  %i.gn = add nuw nsw i32 %.4.2423, 2
  %.4184.3 = select i1 %i.gl, float %i.gm, float %.4184.2422 ; 3 uses
  %.4.3 = select i1 %i.gl, i32 %i.gn, i32 %.4.2423 ; 3 uses
  br i1 %i.fi, label %bb.t, label %.preheader.7

.preheader.4.thread:                              ; preds = %.preheader.2, %.preheader.2.thread
  %.ph = phi i64 [ %i.fw, %.preheader.2.thread ], [ %i.gc, %.preheader.2 ] ; 2 uses
  %.4184.3.ph = phi float [ %.4184, %.preheader.2.thread ], [ %.4184.1, %.preheader.2 ] ; 2 uses
  %.4.3.ph = phi i32 [ %.4, %.preheader.2.thread ], [ %.4.1, %.preheader.2 ] ; 2 uses
  br i1 %i.ff, label %.preheader.6, label %.preheader.7

bb.t:                                             ; preds = %.preheader.4
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %i.gi
  %i.gp = load float, ptr %i.go, align 4, !tbaa !8 ; 2 uses
  %i.gq = fcmp ogt float %i.gp, 0.000000e+00
  br i1 %i.gq, label %.split429, label %.preheader.6

.split429:                                        ; preds = %bb.t
  %i.gr = fadd float %i.gp, %.4184.3
  %i.gs = add nuw nsw i32 %.4.3, 1
  br label %.preheader.6

.preheader.6:                                     ; preds = %bb.t, %.split429, %.preheader.4.thread
  %.4.4433 = phi i32 [ %i.gs, %.split429 ], [ %.4.3.ph, %.preheader.4.thread ], [ %.4.3, %bb.t ] ; 2 uses
  %.4184.4432 = phi float [ %i.gr, %.split429 ], [ %.4184.3.ph, %.preheader.4.thread ], [ %.4184.3, %bb.t ] ; 2 uses
  %i.gt = phi i64 [ %i.gi, %.split429 ], [ %.ph, %.preheader.4.thread ], [ %i.gi, %bb.t ] ; 3 uses
  %i.gu = phi i64 [ %i.fh, %.split429 ], [ %i.fe, %.preheader.4.thread ], [ %i.fh, %bb.t ] ; 2 uses
  %i.gv = mul nuw nsw i64 %i.gu, %i.br
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.gv
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %indvars.iv339
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !8 ; 2 uses
  %i.gz = fcmp ogt float %i.gy, 0.000000e+00      ; 2 uses
  %i.ha = tail call float @llvm.fmuladd.f32(float %i.gy, float 2.000000e+00, float %.4184.4432)
  %i.hb = add nuw nsw i32 %.4.4433, 2
  %.4184.5 = select i1 %i.gz, float %i.ha, float %.4184.4432 ; 3 uses
  %.4.5 = select i1 %i.gz, i32 %i.hb, i32 %.4.4433 ; 3 uses
  br i1 %i.fq, label %bb.u, label %.preheader.7

bb.u:                                             ; preds = %.preheader.6
  %i.hc = mul nuw nsw i64 %i.gu, %i.br
  %i.hd = zext nneg i32 %i.fp to i64
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.hc
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %i.hd
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !8 ; 2 uses
  %i.hh = fcmp ogt float %i.hg, 0.000000e+00
  br i1 %i.hh, label %bb.v, label %.preheader.7

bb.v:                                             ; preds = %bb.u
  %i.hi = fadd float %i.hg, %.4184.5
  %i.hj = add nuw nsw i32 %.4.5, 1
  br label %.preheader.7

.preheader.7:                                     ; preds = %.preheader.4, %.preheader.4.thread, %bb.v, %bb.u, %.preheader.6
  %i.hk = phi i64 [ %i.gt, %bb.v ], [ %i.gt, %bb.u ], [ %i.gt, %.preheader.6 ], [ %.ph, %.preheader.4.thread ], [ %i.gi, %.preheader.4 ] ; 2 uses
  %.4184.6 = phi float [ %i.hi, %bb.v ], [ %.4184.5, %bb.u ], [ %.4184.5, %.preheader.6 ], [ %.4184.3.ph, %.preheader.4.thread ], [ %.4184.3, %.preheader.4 ] ; 3 uses
  %.4.6 = phi i32 [ %i.hj, %bb.v ], [ %.4.5, %bb.u ], [ %.4.5, %.preheader.6 ], [ %.4.3.ph, %.preheader.4.thread ], [ %.4.3, %.preheader.4 ] ; 3 uses
  br i1 %i.fq, label %bb.w, label %bb.y

bb.w:                                             ; preds = %.preheader.7
  %i.hl = zext nneg i32 %i.fp to i64
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.hl
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !8 ; 2 uses
  %i.ho = fcmp ogt float %i.hn, 0.000000e+00
  br i1 %i.ho, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.hp = tail call float @llvm.fmuladd.f32(float %i.hn, float 2.000000e+00, float %.4184.6)
  %i.hq = add nuw nsw i32 %.4.6, 2
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %.preheader.7
  %.4184.7 = phi float [ %i.hp, %bb.x ], [ %.4184.6, %bb.w ], [ %.4184.6, %.preheader.7 ]
  %.4.7 = phi i32 [ %i.hq, %bb.x ], [ %.4.6, %bb.w ], [ %.4.6, %.preheader.7 ] ; 2 uses
  %i.hr = icmp samesign ugt i32 %.4.7, 3
  br i1 %i.hr, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.hs = fadd float %ldexpf, %.4184.7
  %i.ht = fneg float %i.hs
  %i.hu = uitofp nneg i32 %.4.7 to float
  %i.hv = fadd float %ldexpf, %i.hu
  %i.hw = fdiv float %i.ht, %i.hv
  store float %i.hw, ptr %gep449, align 4, !tbaa !8
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge381, %bb.y, %bb.z
  %indvars.iv.next340.pre-phi = phi i64 [ %.pre382, %._crit_edge381 ], [ %i.hk, %bb.y ], [ %i.hk, %bb.z ] ; 2 uses
  %exitcond343.not = icmp eq i64 %indvars.iv.next340.pre-phi, %i.br
  br i1 %exitcond343.not, label %._crit_edge253, label %bb.p, !llvm.loop !224

._crit_edge253:                                   ; preds = %bb.aa
  %indvars.iv.next345 = add nuw nsw i64 %indvars.iv344, 1 ; 2 uses
  %exitcond348.not = icmp eq i64 %indvars.iv.next345, %i.be
  br i1 %exitcond348.not, label %.preheader203, label %.preheader201, !llvm.loop !225

.lr.ph257:                                        ; preds = %.lr.ph257.preheader519, %bb.ac
  %indvars.iv349 = phi i64 [ %indvars.iv.next350, %bb.ac ], [ %indvars.iv349.ph, %.lr.ph257.preheader519 ] ; 2 uses
  %.0170255 = phi i32 [ %.1171, %bb.ac ], [ %.0170255.ph, %.lr.ph257.preheader519 ]
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv349 ; 2 uses
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !8 ; 2 uses
  %i.hz = fcmp olt float %i.hy, 0.000000e+00
  br i1 %i.hz, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph257
  %i.ia = fneg float %i.hy
  store float %i.ia, ptr %i.hx, align 4, !tbaa !8
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph257, %bb.ab
  %.1171 = phi i32 [ 1, %bb.ab ], [ %.0170255, %.lr.ph257 ] ; 2 uses
  %indvars.iv.next350 = add nuw nsw i64 %indvars.iv349, 1 ; 2 uses
  %exitcond353.not = icmp eq i64 %indvars.iv.next350, %i.bm
  br i1 %exitcond353.not, label %._crit_edge258, label %.lr.ph257, !llvm.loop !226

._crit_edge258:                                   ; preds = %bb.ac, %middle.block505
  %.1171.lcssa = phi i32 [ %i.eu, %middle.block505 ], [ %.1171, %bb.ac ]
  %i.ib = icmp eq i32 %.1171.lcssa, 0
  br i1 %i.ib, label %._crit_edge258._crit_edge, label %bb.o, !llvm.loop !222

._crit_edge258._crit_edge:                        ; preds = %._crit_edge258
  br label %._crit_edge461, !llvm.loop !222

._crit_edge461:                                   ; preds = %bb.o, %._crit_edge258._crit_edge, %._crit_edge247.split
  br i1 %i.bq, label %.lr.ph262.preheader, label %.preheader206

.lr.ph262.preheader:                              ; preds = %._crit_edge461
  br i1 %min.iters.check464, label %.lr.ph262.preheader522, label %vector.body467

vector.body467:                                   ; preds = %.lr.ph262.preheader, %pred.store.continue484
  %index468 = phi i64 [ %index.next485, %pred.store.continue484 ], [ 0, %.lr.ph262.preheader ] ; 9 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %index468 ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %wide.load469 = load <4 x float>, ptr %i.ic, align 4, !tbaa !8
  %wide.load470 = load <4 x float>, ptr %i.id, align 4, !tbaa !8
  %i.ie = fcmp oeq <4 x float> %wide.load469, zeroinitializer ; 4 uses
  %i.if = fcmp oeq <4 x float> %wide.load470, zeroinitializer ; 4 uses
  %i.ig = extractelement <4 x i1> %i.ie, i64 0
  br i1 %i.ig, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body467
  store float 1.000000e+00, ptr %i.ic, align 4, !tbaa !8
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body467
  %i.ih = extractelement <4 x i1> %i.ie, i64 1
  br i1 %i.ih, label %pred.store.if471, label %pred.store.continue472

pred.store.if471:                                 ; preds = %pred.store.continue
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %index468
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 4
  store float 1.000000e+00, ptr %i.ij, align 4, !tbaa !8
  br label %pred.store.continue472

pred.store.continue472:                           ; preds = %pred.store.if471, %pred.store.continue
  %i.ik = extractelement <4 x i1> %i.ie, i64 2
  br i1 %i.ik, label %pred.store.if473, label %pred.store.continue474

pred.store.if473:                                 ; preds = %pred.store.continue472
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %index468
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  store float 1.000000e+00, ptr %i.im, align 4, !tbaa !8
  br label %pred.store.continue474

pred.store.continue474:                           ; preds = %pred.store.if473, %pred.store.continue472
  %i.in = extractelement <4 x i1> %i.ie, i64 3
  br i1 %i.in, label %pred.store.if475, label %pred.store.continue476

pred.store.if475:                                 ; preds = %pred.store.continue474
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %index468
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 12
  store float 1.000000e+00, ptr %i.ip, align 4, !tbaa !8
  br label %pred.store.continue476

pred.store.continue476:                           ; preds = %pred.store.if475, %pred.store.continue474
  %i.iq = extractelement <4 x i1> %i.if, i64 0
  br i1 %i.iq, label %pred.store.if477, label %pred.store.continue478

pred.store.if477:                                 ; preds = %pred.store.continue476
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %index468
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  store float 1.000000e+00, ptr %i.is, align 4, !tbaa !8
  br label %pred.store.continue478

pred.store.continue478:                           ; preds = %pred.store.if477, %pred.store.continue476
  %i.it = extractelement <4 x i1> %i.if, i64 1
  br i1 %i.it, label %pred.store.if479, label %pred.store.continue480

pred.store.if479:                                 ; preds = %pred.store.continue478
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %index468
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 20
  store float 1.000000e+00, ptr %i.iv, align 4, !tbaa !8
  br label %pred.store.continue480

pred.store.continue480:                           ; preds = %pred.store.if479, %pred.store.continue478
  %i.iw = extractelement <4 x i1> %i.if, i64 2
  br i1 %i.iw, label %pred.store.if481, label %pred.store.continue482

pred.store.if481:                                 ; preds = %pred.store.continue480
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %index468
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 24
  store float 1.000000e+00, ptr %i.iy, align 4, !tbaa !8
  br label %pred.store.continue482

pred.store.continue482:                           ; preds = %pred.store.if481, %pred.store.continue480
  %i.iz = extractelement <4 x i1> %i.if, i64 3
  br i1 %i.iz, label %pred.store.if483, label %pred.store.continue484

pred.store.if483:                                 ; preds = %pred.store.continue482
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %index468
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 28
  store float 1.000000e+00, ptr %i.jb, align 4, !tbaa !8
  br label %pred.store.continue484

pred.store.continue484:                           ; preds = %pred.store.if483, %pred.store.continue482
  %index.next485 = add nuw i64 %index468, 8       ; 2 uses
  %i.jc = icmp eq i64 %index.next485, %n.vec466
  br i1 %i.jc, label %middle.block486, label %vector.body467, !llvm.loop !227

middle.block486:                                  ; preds = %pred.store.continue484
  br i1 %cmp.n487, label %.preheader206, label %.lr.ph262.preheader522

.lr.ph262.preheader522:                           ; preds = %.lr.ph262.preheader, %middle.block486
  %indvars.iv354.ph = phi i64 [ 0, %.lr.ph262.preheader ], [ %n.vec466, %middle.block486 ]
  br label %.lr.ph262

.preheader206:                                    ; preds = %.preheader203, %bb.ae, %middle.block486, %._crit_edge461
  br i1 %.not285, label %.loopexit, label %.preheader202.lr.ph

.preheader202.lr.ph:                              ; preds = %.preheader206
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv369
  br i1 %.not286, label %.loopexit, label %.preheader202.preheader

.preheader202.preheader:                          ; preds = %.preheader202.lr.ph
  %.pre372.pre = load i16, ptr %i.av, align 4, !tbaa !179
  br label %.preheader202

.lr.ph262:                                        ; preds = %.lr.ph262.preheader522, %bb.ae
  %indvars.iv354 = phi i64 [ %indvars.iv.next355, %bb.ae ], [ %indvars.iv354.ph, %.lr.ph262.preheader522 ] ; 2 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv354 ; 2 uses
  %i.jf = load float, ptr %i.je, align 4, !tbaa !8
  %i.jg = fcmp oeq float %i.jf, 0.000000e+00
  br i1 %i.jg, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph262
  store float 1.000000e+00, ptr %i.je, align 4, !tbaa !8
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph262, %bb.ad
  %indvars.iv.next355 = add nuw nsw i64 %indvars.iv354, 1 ; 2 uses
  %exitcond358.not = icmp eq i64 %indvars.iv.next355, %i.bm
  br i1 %exitcond358.not, label %.preheader206, label %.lr.ph262, !llvm.loop !228

.preheader202:                                    ; preds = %.preheader202.preheader, %._crit_edge273
  %.pre372 = phi i16 [ %.pre372.pre, %.preheader202.preheader ], [ %.pre372374, %._crit_edge273 ] ; 3 uses
  %indvars.iv364 = phi i64 [ 0, %.preheader202.preheader ], [ %indvars.iv.next365, %._crit_edge273 ] ; 3 uses
  %indvars366 = trunc i64 %indvars.iv364 to i32   ; 2 uses
  %indvars.iv.next365 = add nuw nsw i64 %indvars.iv364, 1 ; 2 uses
  %i.jh = add nuw nsw i32 %indvars366, 1          ; 2 uses
  %i.ji = mul nuw nsw i64 %indvars.iv364, %i.br
  %invariant.gep454 = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.ji
  br label %bb.af

bb.af:                                            ; preds = %.preheader202, %._crit_edge270
  %.pre372379 = phi i16 [ %.pre372, %.preheader202 ], [ %.pre372374, %._crit_edge270 ] ; 2 uses
  %i.jj = phi i16 [ %.pre372, %.preheader202 ], [ %i.lk, %._crit_edge270 ] ; 2 uses
  %i.jk = phi i16 [ %.pre372, %.preheader202 ], [ %i.ll, %._crit_edge270 ] ; 3 uses
  %indvars.iv359 = phi i64 [ 0, %.preheader202 ], [ %indvars.iv.next360, %._crit_edge270 ] ; 3 uses
  %indvars361 = trunc i64 %indvars.iv359 to i32   ; 2 uses
  %i.jl = zext nneg i16 %i.jk to i32
  %i.jm = lshr i32 4, %i.jl                       ; 3 uses
  %i.jn = mul i32 %i.jm, %indvars366              ; 2 uses
  %i.jo = mul i32 %i.jm, %i.jh
  %i.jp = icmp ult i32 %i.jn, %i.jo
  br i1 %i.jp, label %.lr.ph269, label %._crit_edge270

.lr.ph269:                                        ; preds = %bb.af
  %i.jq = add nuw nsw i32 %indvars361, 1          ; 2 uses
  %gep455 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep454, i64 %indvars.iv359
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph269, %._crit_edge266
  %.pre372378 = phi i16 [ %.pre372379, %.lr.ph269 ], [ %.pre372375, %._crit_edge266 ] ; 2 uses
  %i.jr = phi i16 [ %i.jj, %.lr.ph269 ], [ %i.le, %._crit_edge266 ] ; 2 uses
  %i.js = phi i16 [ %i.jk, %.lr.ph269 ], [ %i.le, %._crit_edge266 ] ; 2 uses
  %i.jt = phi i32 [ %i.jm, %.lr.ph269 ], [ %i.lh, %._crit_edge266 ]
  %.1161267 = phi i32 [ %i.jn, %.lr.ph269 ], [ %i.lf, %._crit_edge266 ] ; 2 uses
  %i.ju = mul i32 %i.jt, %indvars361              ; 2 uses
  %i.jv = zext nneg i16 %i.js to i32
  %i.jw = lshr i32 4, %i.jv
  %i.jx = mul i32 %i.jw, %i.jq
  %i.jy = icmp ult i32 %i.ju, %i.jx
  br i1 %i.jy, label %.lr.ph265, label %._crit_edge266

.lr.ph265:                                        ; preds = %bb.ag
  %i.jz = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.ka = load i32, ptr %i.jd, align 4, !tbaa !103
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph265, %bb.ak
  %.pre372377 = phi i16 [ %.pre372378, %.lr.ph265 ], [ %.pre372376, %bb.ak ] ; 2 uses
  %i.kb = phi i16 [ %i.jr, %.lr.ph265 ], [ %i.kx, %bb.ak ] ; 2 uses
  %i.kc = phi i16 [ %i.js, %.lr.ph265 ], [ %i.ky, %bb.ak ] ; 2 uses
  %.1159263 = phi i32 [ %i.ju, %.lr.ph265 ], [ %i.kz, %bb.ak ] ; 2 uses
  %i.kd = load i16, ptr %i.ba, align 2, !tbaa !176
  %i.ke = zext i16 %i.kd to i32
  %i.kf = mul i32 %.1161267, %i.ke
  %i.kg = add i32 %i.kf, %.1159263
  %i.kh = zext i32 %i.kg to i64
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %i.kh ; 2 uses
  %i.kj = getelementptr inbounds nuw [2 x i8], ptr %i.ki, i64 %indvars.iv369 ; 2 uses
  %i.kk = load i16, ptr %i.kj, align 2, !tbaa !107
  %i.kl = zext i16 %i.kk to i32                   ; 2 uses
  %i.km = sdiv i32 %i.kl, %i.ka
  %i.kn = icmp sgt i32 %i.km, 1
  br i1 %i.kn, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.ko = getelementptr inbounds nuw [2 x i8], ptr %i.ki, i64 %.0156.lcssa
  %i.kp = load i16, ptr %i.ko, align 2, !tbaa !107
  %i.kq = uitofp i16 %i.kp to float
  %i.kr = load float, ptr %gep455, align 4, !tbaa !8
  %i.ks = fmul float %i.kr, %i.kq
  %i.kt = fptosi float %i.ks to i32               ; 2 uses
  %i.ku = icmp slt i32 %i.kl, %i.kt
  br i1 %i.ku, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.kv = tail call i32 @llvm.umin.i32(i32 %i.kt, i32 65535)
  %i.kw = trunc nuw i32 %i.kv to i16
  store i16 %i.kw, ptr %i.kj, align 2, !tbaa !107
  %.pre373 = load i16, ptr %i.av, align 4, !tbaa !179 ; 3 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ah, %bb.aj, %bb.ai
  %.pre372376 = phi i16 [ %.pre372377, %bb.ah ], [ %.pre373, %bb.aj ], [ %.pre372377, %bb.ai ] ; 2 uses
  %i.kx = phi i16 [ %i.kb, %bb.ah ], [ %.pre373, %bb.aj ], [ %i.kb, %bb.ai ] ; 2 uses
  %i.ky = phi i16 [ %i.kc, %bb.ah ], [ %.pre373, %bb.aj ], [ %i.kc, %bb.ai ] ; 2 uses
  %i.kz = add nuw nsw i32 %.1159263, 1            ; 2 uses
  %i.la = zext nneg i16 %i.ky to i32
  %i.lb = lshr i32 4, %i.la
  %i.lc = mul i32 %i.lb, %i.jq
  %i.ld = icmp samesign ult i32 %i.kz, %i.lc
  br i1 %i.ld, label %bb.ah, label %._crit_edge266, !llvm.loop !229

._crit_edge266:                                   ; preds = %bb.ak, %bb.ag
  %.pre372375 = phi i16 [ %.pre372378, %bb.ag ], [ %.pre372376, %bb.ak ] ; 2 uses
  %i.le = phi i16 [ %i.jr, %bb.ag ], [ %i.kx, %bb.ak ] ; 5 uses
  %i.lf = add nuw nsw i32 %.1161267, 1            ; 2 uses
  %i.lg = zext nneg i16 %i.le to i32
  %i.lh = lshr i32 4, %i.lg                       ; 2 uses
  %i.li = mul i32 %i.lh, %i.jh
  %i.lj = icmp samesign ult i32 %i.lf, %i.li
  br i1 %i.lj, label %bb.ag, label %._crit_edge270, !llvm.loop !230

._crit_edge270:                                   ; preds = %._crit_edge266, %bb.af
  %.pre372374 = phi i16 [ %.pre372379, %bb.af ], [ %.pre372375, %._crit_edge266 ] ; 2 uses
  %i.lk = phi i16 [ %i.jj, %bb.af ], [ %i.le, %._crit_edge266 ]
  %i.ll = phi i16 [ %i.jk, %bb.af ], [ %i.le, %._crit_edge266 ]
  %indvars.iv.next360 = add nuw nsw i64 %indvars.iv359, 1 ; 2 uses
  %exitcond363.not = icmp eq i64 %indvars.iv.next360, %i.br
  br i1 %exitcond363.not, label %._crit_edge273, label %bb.af, !llvm.loop !231

._crit_edge273:                                   ; preds = %._crit_edge270
  %exitcond368.not = icmp eq i64 %indvars.iv.next365, %i.be
  br i1 %exitcond368.not, label %.loopexit, label %.preheader202, !llvm.loop !232

.loopexit:                                        ; preds = %._crit_edge273, %.preheader206, %.preheader202.lr.ph, %bb.d
  %indvars.iv.next370 = add nuw nsw i64 %indvars.iv369, 1 ; 2 uses
  %i.lm = load i32, ptr %i.f, align 4, !tbaa !104 ; 2 uses
  %i.ln = zext i32 %i.lm to i64
  %i.lo = icmp samesign ult i64 %indvars.iv.next370, %i.ln
  br i1 %i.lo, label %bb.d, label %._crit_edge279, !llvm.loop !233

._crit_edge279:                                   ; preds = %.loopexit, %._crit_edge
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.bh)
  br label %.loopexit209

.loopexit209:                                     ; preds = %.lr.ph213, %._crit_edge279
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

declare noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @ldexpf(float, i32) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.experimental.vector.extract.last.active.v4i32(<4 x i32>, <4 x i1>, i32) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(errnomem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !6, i64 0}
!10 = !{!11}
!11 = distinct !{!11, !12}
!12 = distinct !{!12, !"LVerDomain"}
!13 = !{!14}
!14 = distinct !{!14, !12}
!15 = !{!16}
!16 = distinct !{!16, !12}
!17 = !{!14, !11}
!18 = distinct !{!18, !19, !20, !21}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = distinct !{!22, !19, !20, !21}
!23 = distinct !{!23, !19, !20}
!24 = !{!25}
!25 = distinct !{!25, !26}
!26 = distinct !{!26, !"LVerDomain"}
!27 = !{!28}
!28 = distinct !{!28, !26}
!29 = !{!30}
!30 = distinct !{!30, !26}
!31 = !{!32}
!32 = distinct !{!32, !26}
!33 = !{!30, !28, !25}
!34 = distinct !{!34, !19, !20, !21}
!35 = distinct !{!35, !19, !20}
!36 = distinct !{!36, !19, !20}
!37 = !{!38, !43, i64 30}
!38 = !{!"_ZTS6LibRaw", !39, i64 8, !85, i64 381584, !86, i64 381592, !6, i64 384344, !96, i64 433496, !96, i64 433504, !6, i64 433512, !97, i64 768232, !98, i64 768248, !6, i64 768400, !6, i64 768416, !6, i64 768432, !41, i64 768448, !41, i64 768456, !41, i64 768464, !77, i64 768472, !41, i64 768480, !41, i64 768488, !41, i64 768496, !41, i64 768504}
!39 = !{!"_ZTS13libraw_data_t", !40, i64 0, !42, i64 8, !45, i64 192, !47, i64 632, !52, i64 1928, !68, i64 5088, !69, i64 5232, !70, i64 5536, !5, i64 5584, !5, i64 5588, !73, i64 5592, !76, i64 192680, !79, i64 193480, !81, i64 193504, !82, i64 193768, !41, i64 381568}
!40 = !{!"p1 short", !41, i64 0}
!41 = !{!"any pointer", !6, i64 0}
!42 = !{!"_ZTS20libraw_image_sizes_t", !43, i64 0, !43, i64 2, !43, i64 4, !43, i64 6, !43, i64 8, !43, i64 10, !43, i64 12, !43, i64 14, !5, i64 16, !44, i64 24, !5, i64 32, !6, i64 36, !43, i64 164, !6, i64 166}
!43 = !{!"short", !6, i64 0}
!44 = !{!"double", !6, i64 0}
!45 = !{!"_ZTS16libraw_iparams_t", !6, i64 0, !6, i64 4, !6, i64 68, !6, i64 132, !6, i64 196, !6, i64 260, !5, i64 324, !5, i64 328, !5, i64 332, !5, i64 336, !5, i64 340, !5, i64 344, !6, i64 348, !6, i64 384, !6, i64 420, !5, i64 428, !46, i64 432}
!46 = !{!"p1 omnipotent char", !41, i64 0}
!47 = !{!"_ZTS17libraw_lensinfo_t", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !6, i64 20, !6, i64 148, !6, i64 276, !6, i64 404, !43, i64 532, !48, i64 536, !49, i64 544, !50, i64 560}
!48 = !{!"_ZTS18libraw_nikonlens_t", !9, i64 0, !6, i64 4, !6, i64 5, !6, i64 6, !6, i64 7}
!49 = !{!"_ZTS16libraw_dnglens_t", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12}
!50 = !{!"_ZTS24libraw_makernotes_lens_t", !51, i64 0, !6, i64 8, !43, i64 136, !43, i64 138, !51, i64 144, !43, i64 152, !43, i64 154, !6, i64 156, !43, i64 220, !6, i64 222, !6, i64 238, !9, i64 256, !9, i64 260, !9, i64 264, !9, i64 268, !9, i64 272, !9, i64 276, !9, i64 280, !9, i64 284, !9, i64 288, !9, i64 292, !9, i64 296, !9, i64 300, !9, i64 304, !9, i64 308, !9, i64 312, !51, i64 320, !6, i64 328, !51, i64 456, !6, i64 464, !51, i64 592, !6, i64 600, !43, i64 728, !9, i64 732}
!51 = !{!"long long", !6, i64 0}
!52 = !{!"_ZTS19libraw_makernotes_t", !53, i64 0, !55, i64 168, !57, i64 464, !58, i64 848, !59, i64 1200, !60, i64 1664, !61, i64 1848, !62, i64 2092, !63, i64 2160, !64, i64 2196, !65, i64 2648, !66, i64 2720, !67, i64 2856}
!53 = !{!"_ZTS25libraw_canon_makernotes_t", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !6, i64 16, !5, i64 32, !6, i64 36, !43, i64 52, !43, i64 54, !6, i64 56, !43, i64 58, !43, i64 60, !43, i64 62, !43, i64 64, !43, i64 66, !43, i64 68, !43, i64 70, !43, i64 72, !43, i64 74, !43, i64 76, !43, i64 78, !43, i64 80, !43, i64 82, !5, i64 84, !9, i64 88, !43, i64 92, !43, i64 94, !43, i64 96, !43, i64 98, !5, i64 100, !43, i64 104, !5, i64 108, !5, i64 112, !43, i64 116, !5, i64 120, !54, i64 124, !54, i64 132, !54, i64 140, !54, i64 148, !54, i64 156, !6, i64 164}
!54 = !{!"_ZTS13libraw_area_t", !43, i64 0, !43, i64 2, !43, i64 4, !43, i64 6}
!55 = !{!"_ZTS25libraw_nikon_makernotes_t", !44, i64 0, !43, i64 8, !43, i64 10, !6, i64 12, !6, i64 19, !6, i64 20, !6, i64 21, !6, i64 34, !6, i64 54, !6, i64 58, !6, i64 62, !6, i64 66, !6, i64 67, !6, i64 68, !6, i64 69, !6, i64 70, !6, i64 71, !6, i64 73, !6, i64 74, !6, i64 75, !6, i64 76, !6, i64 77, !6, i64 78, !6, i64 82, !6, i64 86, !43, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !6, i64 112, !6, i64 144, !6, i64 145, !6, i64 146, !5, i64 148, !5, i64 152, !5, i64 156, !6, i64 160, !6, i64 162, !43, i64 170, !56, i64 172, !43, i64 180, !43, i64 182, !43, i64 184, !5, i64 188, !6, i64 192, !6, i64 212, !5, i64 232, !6, i64 236, !5, i64 248, !46, i64 256, !43, i64 264, !43, i64 266, !6, i64 268, !43, i64 270, !44, i64 272, !44, i64 280, !44, i64 288}
!56 = !{!"_ZTS30libraw_sensor_highspeed_crop_t", !43, i64 0, !43, i64 2, !43, i64 4, !43, i64 6}
!57 = !{!"_ZTS30libraw_hasselblad_makernotes_t", !5, i64 0, !44, i64 8, !6, i64 16, !6, i64 24, !6, i64 88, !5, i64 152, !5, i64 156, !5, i64 160, !5, i64 164, !6, i64 168, !6, i64 200, !5, i64 264, !6, i64 268, !6, i64 276, !6, i64 288}
!58 = !{!"_ZTS18libraw_fuji_info_t", !9, i64 0, !43, i64 4, !43, i64 6, !43, i64 8, !43, i64 10, !43, i64 12, !43, i64 14, !43, i64 16, !43, i64 18, !6, i64 20, !6, i64 53, !9, i64 88, !43, i64 92, !43, i64 94, !6, i64 96, !43, i64 100, !5, i64 104, !5, i64 108, !43, i64 112, !6, i64 114, !43, i64 120, !43, i64 122, !43, i64 124, !43, i64 126, !43, i64 128, !5, i64 132, !43, i64 136, !6, i64 138, !6, i64 151, !6, i64 156, !5, i64 164, !43, i64 168, !5, i64 172, !43, i64 176, !6, i64 178, !6, i64 196, !5, i64 324, !5, i64 328, !5, i64 332, !6, i64 336, !5, i64 344}
!59 = !{!"_ZTS27libraw_olympus_makernotes_t", !6, i64 0, !43, i64 6, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !6, i64 64, !6, i64 72, !43, i64 82, !6, i64 84, !43, i64 88, !43, i64 90, !6, i64 92, !6, i64 352, !43, i64 392, !6, i64 394, !6, i64 396, !6, i64 404, !43, i64 416, !43, i64 418, !43, i64 420, !43, i64 422, !44, i64 424, !6, i64 432, !6, i64 440, !6, i64 448, !5, i64 452, !43, i64 456, !43, i64 458}
!60 = !{!"_ZTS18libraw_sony_info_t", !43, i64 0, !6, i64 2, !6, i64 3, !5, i64 4, !6, i64 8, !5, i64 12, !6, i64 16, !6, i64 17, !43, i64 18, !6, i64 20, !6, i64 24, !6, i64 25, !43, i64 26, !6, i64 28, !6, i64 38, !6, i64 39, !6, i64 40, !43, i64 48, !6, i64 50, !6, i64 51, !6, i64 52, !43, i64 54, !5, i64 56, !43, i64 60, !6, i64 62, !43, i64 66, !43, i64 68, !43, i64 70, !43, i64 72, !43, i64 74, !43, i64 76, !43, i64 78, !5, i64 80, !9, i64 84, !43, i64 88, !5, i64 92, !5, i64 96, !43, i64 100, !6, i64 102, !5, i64 124, !43, i64 128, !5, i64 132, !6, i64 136, !6, i64 137, !43, i64 138, !43, i64 140, !43, i64 142, !43, i64 144, !43, i64 146, !43, i64 148, !43, i64 150, !43, i64 152, !43, i64 154, !5, i64 156, !43, i64 160, !6, i64 162, !9, i64 180}
!61 = !{!"_ZTS25libraw_kodak_makernotes_t", !43, i64 0, !43, i64 2, !43, i64 4, !43, i64 6, !43, i64 8, !43, i64 10, !6, i64 12, !6, i64 48, !6, i64 84, !6, i64 120, !6, i64 156, !6, i64 192, !43, i64 228, !43, i64 230, !43, i64 232, !43, i64 234, !9, i64 236, !9, i64 240}
!62 = !{!"_ZTS29libraw_panasonic_makernotes_t", !43, i64 0, !43, i64 2, !6, i64 4, !5, i64 36, !9, i64 40, !6, i64 44, !43, i64 56, !43, i64 58, !5, i64 60, !5, i64 64}
!63 = !{!"_ZTS26libraw_pentax_makernotes_t", !6, i64 0, !6, i64 4, !6, i64 8, !43, i64 12, !5, i64 16, !5, i64 20, !43, i64 24, !6, i64 26, !43, i64 30, !6, i64 32, !6, i64 33, !43, i64 34}
!64 = !{!"_ZTS22libraw_p1_makernotes_t", !6, i64 0, !6, i64 64, !6, i64 128, !6, i64 384}
!65 = !{!"_ZTS25libraw_ricoh_makernotes_t", !43, i64 0, !6, i64 4, !6, i64 12, !43, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !43, i64 40, !43, i64 42, !43, i64 44, !43, i64 46, !43, i64 48, !43, i64 50, !44, i64 56, !44, i64 64}
!66 = !{!"_ZTS27libraw_samsung_makernotes_t", !6, i64 0, !6, i64 16, !6, i64 32, !6, i64 40, !44, i64 88, !5, i64 96, !6, i64 100}
!67 = !{!"_ZTS24libraw_metadata_common_t", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !43, i64 64, !6, i64 66, !9, i64 196, !6, i64 200, !5, i64 296}
!68 = !{!"_ZTS21libraw_shootinginfo_t", !43, i64 0, !43, i64 2, !43, i64 4, !43, i64 6, !43, i64 8, !43, i64 10, !43, i64 12, !6, i64 14, !6, i64 78}
!69 = !{!"_ZTS22libraw_output_params_t", !6, i64 0, !6, i64 16, !6, i64 32, !6, i64 64, !6, i64 112, !9, i64 128, !9, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !5, i64 148, !5, i64 152, !5, i64 156, !5, i64 160, !46, i64 168, !46, i64 176, !46, i64 184, !46, i64 192, !5, i64 200, !5, i64 204, !5, i64 208, !5, i64 212, !5, i64 216, !5, i64 220, !6, i64 224, !5, i64 240, !5, i64 244, !9, i64 248, !9, i64 252, !5, i64 256, !5, i64 260, !5, i64 264, !5, i64 268, !5, i64 272, !5, i64 276, !5, i64 280, !5, i64 284, !9, i64 288, !9, i64 292, !5, i64 296, !5, i64 300}
!70 = !{!"_ZTS26libraw_raw_unpack_params_t", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !9, i64 28, !6, i64 32, !71, i64 40}
!71 = !{!"p2 omnipotent char", !72, i64 0}
!72 = !{!"any p2 pointer", !41, i64 0}
!73 = !{!"_ZTS18libraw_colordata_t", !6, i64 0, !6, i64 131072, !5, i64 147488, !5, i64 147492, !5, i64 147496, !6, i64 147500, !9, i64 147516, !9, i64 147520, !6, i64 147524, !6, i64 147652, !6, i64 147668, !6, i64 147684, !6, i64 147732, !6, i64 147780, !6, i64 147828, !74, i64 147876, !9, i64 147912, !9, i64 147916, !6, i64 147920, !6, i64 147984, !6, i64 148048, !6, i64 148112, !6, i64 148176, !6, i64 148193, !41, i64 148264, !5, i64 148272, !6, i64 148276, !6, i64 148308, !75, i64 148648, !6, i64 181624, !6, i64 185720, !5, i64 187000, !6, i64 187004, !5, i64 187076, !5, i64 187080}
!74 = !{!"_ZTS5ph1_t", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !9, i64 32}
!75 = !{!"_ZTS19libraw_dng_levels_t", !5, i64 0, !6, i64 4, !5, i64 16420, !6, i64 16424, !9, i64 32840, !6, i64 32844, !6, i64 32860, !6, i64 32868, !5, i64 32884, !6, i64 32888, !6, i64 32904, !9, i64 32920, !9, i64 32924, !6, i64 32928}
!76 = !{!"_ZTS17libraw_imgother_t", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !77, i64 16, !5, i64 24, !6, i64 28, !78, i64 156, !6, i64 204, !6, i64 716, !6, i64 780}
!77 = !{!"long", !6, i64 0}
!78 = !{!"_ZTS17libraw_gps_info_t", !6, i64 0, !6, i64 12, !6, i64 24, !9, i64 36, !6, i64 40, !6, i64 41, !6, i64 42, !6, i64 43, !6, i64 44}
!79 = !{!"_ZTS18libraw_thumbnail_t", !80, i64 0, !43, i64 4, !43, i64 6, !5, i64 8, !5, i64 12, !46, i64 16}
!80 = !{!"_ZTS24LibRaw_thumbnail_formats", !6, i64 0}
!81 = !{!"_ZTS23libraw_thumbnail_list_t", !5, i64 0, !6, i64 8}
!82 = !{!"_ZTS16libraw_rawdata_t", !41, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !83, i64 32, !83, i64 40, !83, i64 48, !40, i64 56, !40, i64 64, !45, i64 72, !42, i64 512, !84, i64 696, !73, i64 712}
!83 = !{!"p1 float", !41, i64 0}
!84 = !{!"_ZTS31libraw_internal_output_params_t", !5, i64 0, !5, i64 4, !5, i64 8, !43, i64 12, !43, i64 14}
!85 = !{!"p1 _ZTS10LibRaw_TLS", !41, i64 0}
!86 = !{!"_ZTS22libraw_internal_data_t", !87, i64 0, !84, i64 64, !90, i64 80, !92, i64 96, !93, i64 136}
!87 = !{!"_ZTS15internal_data_t", !88, i64 0, !89, i64 8, !5, i64 16, !46, i64 24, !51, i64 32, !51, i64 40, !6, i64 48}
!88 = !{!"p1 _ZTS26LibRaw_abstract_datastream", !41, i64 0}
!89 = !{!"p1 _ZTS8_IO_FILE", !41, i64 0}
!90 = !{!"_ZTS13output_data_t", !91, i64 0, !91, i64 8}
!91 = !{!"p1 int", !41, i64 0}
!92 = !{!"_ZTS15identify_data_t", !5, i64 0, !51, i64 8, !51, i64 16, !5, i64 24, !5, i64 28, !5, i64 32}
!93 = !{!"_ZTS15unpacker_data_t", !43, i64 0, !6, i64 2, !6, i64 10, !5, i64 16, !51, i64 24, !51, i64 32, !51, i64 40, !51, i64 48, !51, i64 56, !51, i64 64, !51, i64 72, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !94, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !51, i64 144, !5, i64 152, !5, i64 156, !5, i64 160, !5, i64 164, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !5, i64 184, !95, i64 192, !6, i64 440, !5, i64 2488, !5, i64 2492, !43, i64 2496, !43, i64 2498, !5, i64 2500, !5, i64 2504, !5, i64 2508, !5, i64 2512, !5, i64 2516, !5, i64 2520, !5, i64 2524, !6, i64 2528, !43, i64 2608}
!94 = !{!"_ZTS33LibRaw_internal_thumbnail_formats", !6, i64 0}
!95 = !{!"_ZTS12pana8_tags_t", !6, i64 0, !6, i64 24, !43, i64 36, !6, i64 38, !6, i64 46, !6, i64 80, !6, i64 114, !43, i64 148, !43, i64 150, !6, i64 152, !6, i64 192, !6, i64 204, !6, i64 224, !6, i64 234}
!96 = !{!"p1 _ZTS6decode", !41, i64 0}
!97 = !{!"_ZTS13libraw_memmgr", !72, i64 0, !5, i64 8}
!98 = !{!"_ZTS18libraw_callbacks_t", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !41, i64 80, !41, i64 88, !41, i64 96, !41, i64 104, !41, i64 112, !41, i64 120, !41, i64 128, !41, i64 136, !41, i64 144}
!99 = !{!38, !43, i64 28}
!100 = !{!38, !5, i64 153096}
!101 = distinct !{!101, !19}
!102 = !{!38, !5, i64 153088}
!103 = !{!5, !5, i64 0}
!104 = !{!38, !5, i64 540}
!105 = !{!38, !5, i64 544}
!106 = !{!38, !40, i64 8}
!107 = !{!43, !43, i64 0}
!108 = distinct !{!108, !19}
!109 = distinct !{!109, !19, !20, !21}
!110 = !{!111}
!111 = distinct !{!111, !112}
!112 = distinct !{!112, !"LVerDomain"}
!113 = !{!114}
!114 = distinct !{!114, !112}
!115 = !{!116}
!116 = distinct !{!116, !112}
!117 = !{!118}
!118 = distinct !{!118, !112}
!119 = !{!111, !114, !116}
!120 = distinct !{!120, !19, !20, !21}
!121 = distinct !{!121, !19, !20, !21}
!122 = distinct !{!122, !19, !20}
!123 = !{!124}
!124 = distinct !{!124, !125}
!125 = distinct !{!125, !"LVerDomain"}
!126 = !{!127}
!127 = distinct !{!127, !125}
!128 = !{!129}
!129 = distinct !{!129, !125}
!130 = !{!131}
!131 = distinct !{!131, !125}
!132 = !{!124, !127, !129}
!133 = distinct !{!133, !19, !20, !21}
!134 = distinct !{!134, !19, !20}
!135 = distinct !{!135, !19, !20}
!136 = distinct !{!136, !19, !20, !21}
!137 = distinct !{!137, !138}
!138 = !{!"llvm.loop.unroll.disable"}
!139 = distinct !{!139, !19, !20}
!140 = distinct !{!140, !19}
!141 = !{!142}
!142 = distinct !{!142, !143}
!143 = distinct !{!143, !"LVerDomain"}
!144 = !{!145}
!145 = distinct !{!145, !143}
!146 = !{!147}
!147 = distinct !{!147, !143}
!148 = !{!149}
!149 = distinct !{!149, !143}
!150 = !{!142, !145, !147}
!151 = distinct !{!151, !19, !20, !21}
!152 = distinct !{!152, !19, !20, !21}
!153 = distinct !{!153, !19, !20}
!154 = !{!155}
!155 = distinct !{!155, !156}
!156 = distinct !{!156, !"LVerDomain"}
!157 = !{!158}
!158 = distinct !{!158, !156}
!159 = !{!160}
!160 = distinct !{!160, !156}
!161 = !{!162}
!162 = distinct !{!162, !156}
!163 = !{!155, !158, !160}
!164 = distinct !{!164, !19, !20, !21}
!165 = distinct !{!165, !19, !20}
!166 = distinct !{!166, !19, !20}
!167 = distinct !{!167, !19, !20, !21}
!168 = distinct !{!168, !19, !20}
!169 = distinct !{!169, !19}
!170 = !{!38, !9, i64 5372}
!171 = distinct !{!171, !19}
!172 = distinct !{!172, !19}
!173 = distinct !{!173, !19, !21, !20}
!174 = distinct !{!174, !19}
!175 = !{!38, !43, i64 20}
!176 = !{!38, !43, i64 22}
!177 = distinct !{!177, !19}
!178 = distinct !{!178, !19}
!179 = !{!38, !43, i64 381668}
!180 = distinct !{!180, !19}
!181 = distinct !{!181, !19}
!182 = !{!38, !5, i64 5484}
!183 = !{!38, !41, i64 768264}
!184 = !{!38, !41, i64 768272}
!185 = !{!186, !186, i64 0}
!186 = !{!"_ZTS17LibRaw_exceptions", !6, i64 0}
!187 = distinct !{!187, !19}
!188 = distinct !{!188, !19}
!189 = !{!6, !6, i64 0}
!190 = distinct !{!190, !19}
!191 = distinct !{!191, !19}
!192 = distinct !{!192, !19}
!193 = distinct !{!193, !19, !20, !21}
!194 = distinct !{!194, !19, !21, !20}
!195 = distinct !{!195, !19}
!196 = distinct !{!196, !19, !20, !21}
!197 = distinct !{!197, !19, !21, !20}
!198 = distinct !{!198, !19}
!199 = distinct !{!199, !19}
!200 = distinct !{!200, !19}
!201 = distinct !{!201, !138}
!202 = distinct !{!202, !138}
!203 = distinct !{!203, !19, !20, !21}
!204 = distinct !{!204, !19}
!205 = distinct !{!205, !138}
!206 = distinct !{!206, !19}
!207 = distinct !{!207, !19, !21, !20}
!208 = distinct !{!208, !19}
!209 = distinct !{!209, !19}
!210 = distinct !{!210, !19}
!211 = !{!38, !5, i64 5384}
!212 = distinct !{!212, !19, !20, !21}
!213 = distinct !{!213, !19, !21, !20}
!214 = distinct !{!214, !19}
!215 = distinct !{!215, !19}
!216 = distinct !{!216, !19}
!217 = distinct !{!217, !19}
!218 = distinct !{!218, !19}
!219 = distinct !{!219, !19, !20, !21}
!220 = distinct !{!220, !19, !21, !20}
!221 = distinct !{!221, !19}
!222 = distinct !{!222, !19}
!223 = distinct !{!223, !19, !20, !21}
!224 = distinct !{!224, !19}
!225 = distinct !{!225, !19}
!226 = distinct !{!226, !19, !21, !20}
!227 = distinct !{!227, !19, !20, !21}
!228 = distinct !{!228, !19, !21, !20}
!229 = distinct !{!229, !19}
!230 = distinct !{!230, !19}
!231 = distinct !{!231, !19}
!232 = distinct !{!232, !19}
!233 = distinct !{!233, !19}
end_hunk_0

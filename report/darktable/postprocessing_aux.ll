inline.NumInlined: 12
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN6LibRaw13hat_transformEPfS0_iii:bb.a
  %i.go = fadd reassoc nsz arcp contract afn <8 x float> %i.gf, %wide.load182
  %i.gp = trunc nsw i64 %i.fx to i32
  %i.gq = add i32 %5, %i.gp
  %i.gr = sub i32 %.neg52, %i.gq
  %i.gs = sext i32 %i.gr to i64
  %i.gt = getelementptr inbounds [4 x i8], ptr %2, i64 %i.gs ; 4 uses
  %i.gu = getelementptr inbounds i8, ptr %i.gt, i64 -28
  %i.gv = getelementptr inbounds i8, ptr %i.gt, i64 -60
  %i.gw = getelementptr inbounds i8, ptr %i.gt, i64 -92
  %i.gx = getelementptr inbounds i8, ptr %i.gt, i64 -124
  %wide.load183 = load <8 x float>, ptr %i.gu, align 4, !tbaa !11, !alias.scope !36
  %wide.load184 = load <8 x float>, ptr %i.gv, align 4, !tbaa !11, !alias.scope !36
  %wide.load185 = load <8 x float>, ptr %i.gw, align 4, !tbaa !11, !alias.scope !36
  %wide.load186 = load <8 x float>, ptr %i.gx, align 4, !tbaa !11, !alias.scope !36
  %reverse187 = shufflevector <8 x float> %wide.load183, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse188 = shufflevector <8 x float> %wide.load184, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse189 = shufflevector <8 x float> %wide.load185, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse190 = shufflevector <8 x float> %wide.load186, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.gy = fadd reassoc nsz arcp contract afn <8 x float> %i.gl, %reverse187
  %i.gz = fadd reassoc nsz arcp contract afn <8 x float> %i.gm, %reverse188
  %i.ha = fadd reassoc nsz arcp contract afn <8 x float> %i.gn, %reverse189
  %i.hb = fadd reassoc nsz arcp contract afn <8 x float> %i.go, %reverse190
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fx ; 4 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 32
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 64
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 96
  store <8 x float> %i.gy, ptr %i.hc, align 4, !tbaa !11, !alias.scope !38, !noalias !40
  store <8 x float> %i.gz, ptr %i.hd, align 4, !tbaa !11, !alias.scope !38, !noalias !40
  store <8 x float> %i.ha, ptr %i.he, align 4, !tbaa !11, !alias.scope !38, !noalias !40
  store <8 x float> %i.hb, ptr %i.hf, align 4, !tbaa !11, !alias.scope !38, !noalias !40
  %index.next191 = add nuw i64 %index174, 32      ; 2 uses
  %i.hg = icmp eq i64 %index.next191, %n.vec172
  br i1 %i.hg, label %middle.block192, label %vector.body173, !llvm.loop !41

middle.block192:                                  ; preds = %vector.body173
  %cmp.n193 = icmp eq i64 %i.eu, %n.vec172
  br i1 %cmp.n193, label %._crit_edge, label %vec.epilog.iter.check198

vec.epilog.iter.check198:                         ; preds = %middle.block192
  %min.epilog.iters.check199 = icmp eq i64 %i.fv, 0
  br i1 %min.epilog.iters.check199, label %vec.epilog.scalar.ph197.preheader, label %vec.epilog.ph200, !prof !25

vec.epilog.ph200:                                 ; preds = %vector.main.loop.iter.check169, %vec.epilog.iter.check198
  %vec.epilog.resume.val194 = phi i64 [ %n.vec172, %vec.epilog.iter.check198 ], [ 0, %vector.main.loop.iter.check169 ]
  %n.vec201 = and i64 %i.eu, -8                   ; 3 uses
  %i.hh = add nsw i64 %n.vec201, %i.er
  br label %vec.epilog.vector.body202

vec.epilog.vector.body202:                        ; preds = %vec.epilog.vector.body202, %vec.epilog.ph200
  %index203 = phi i64 [ %vec.epilog.resume.val194, %vec.epilog.ph200 ], [ %index.next208, %vec.epilog.vector.body202 ] ; 2 uses
  %i.hi = add i64 %index203, %i.er                ; 4 uses
  %i.hj = getelementptr inbounds [4 x i8], ptr %2, i64 %i.hi
  %wide.load204 = load <8 x float>, ptr %i.hj, align 4, !tbaa !11, !alias.scope !31
  %i.hk = fmul reassoc nsz arcp contract afn <8 x float> %wide.load204, splat (float 2.000000e+00)
  %i.hl = sub nsw i64 %i.hi, %i.et
  %i.hm = getelementptr inbounds [4 x i8], ptr %2, i64 %i.hl
  %wide.load205 = load <8 x float>, ptr %i.hm, align 4, !tbaa !11, !alias.scope !34
  %i.hn = fadd reassoc nsz arcp contract afn <8 x float> %i.hk, %wide.load205
  %i.ho = trunc nsw i64 %i.hi to i32
  %i.hp = add i32 %5, %i.ho
  %i.hq = sub i32 %.neg52, %i.hp
  %i.hr = sext i32 %i.hq to i64
  %i.hs = getelementptr inbounds [4 x i8], ptr %2, i64 %i.hr
  %i.ht = getelementptr inbounds i8, ptr %i.hs, i64 -28
  %wide.load206 = load <8 x float>, ptr %i.ht, align 4, !tbaa !11, !alias.scope !36
  %reverse207 = shufflevector <8 x float> %wide.load206, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.hu = fadd reassoc nsz arcp contract afn <8 x float> %i.hn, %reverse207
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.hi
  store <8 x float> %i.hu, ptr %i.hv, align 4, !tbaa !11, !alias.scope !38, !noalias !40
  %index.next208 = add nuw i64 %index203, 8       ; 2 uses
  %i.hw = icmp eq i64 %index.next208, %n.vec201
  br i1 %i.hw, label %vec.epilog.middle.block209, label %vec.epilog.vector.body202, !llvm.loop !42

vec.epilog.middle.block209:                       ; preds = %vec.epilog.vector.body202
  %cmp.n210 = icmp eq i64 %i.eu, %n.vec201
  br i1 %cmp.n210, label %._crit_edge, label %vec.epilog.scalar.ph197.preheader

vec.epilog.scalar.ph197.preheader:                ; preds = %vector.memcheck148, %vector.scevcheck146, %iter.check196, %vec.epilog.iter.check198, %vec.epilog.middle.block209
  %indvars.iv69.ph = phi i64 [ %i.er, %iter.check196 ], [ %i.er, %vector.scevcheck146 ], [ %i.er, %vector.memcheck148 ], [ %i.fw, %vec.epilog.iter.check198 ], [ %i.hh, %vec.epilog.middle.block209 ] ; 8 uses
  %i.hx = sub i64 %wide.trip.count72, %indvars.iv69.ph
  %xtraiter214 = and i64 %i.hx, 1
  %lcmp.mod215.not = icmp eq i64 %xtraiter214, 0
  br i1 %lcmp.mod215.not, label %vec.epilog.scalar.ph197.prol.loopexit, label %vec.epilog.scalar.ph197.prol

vec.epilog.scalar.ph197.prol:                     ; preds = %vec.epilog.scalar.ph197.preheader
  %i.hy = mul nsw i64 %indvars.iv69.ph, %i.es
  %i.hz = getelementptr inbounds [4 x i8], ptr %2, i64 %i.hy
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !11
  %i.ib = fmul reassoc nsz arcp contract afn float %i.ia, 2.000000e+00
  %i.ic = sub nsw i64 %indvars.iv69.ph, %i.et
  %i.id = mul nsw i64 %i.ic, %i.es
  %i.ie = getelementptr inbounds [4 x i8], ptr %2, i64 %i.id
  %i.if = load float, ptr %i.ie, align 4, !tbaa !11
  %i.ig = fadd reassoc nsz arcp contract afn float %i.ib, %i.if
  %i.ih = trunc nsw i64 %indvars.iv69.ph to i32
  %i.ii = add i32 %5, %i.ih
  %i.ij = sub i32 %.neg52, %i.ii
  %i.ik = mul nsw i32 %i.ij, %3
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr inbounds [4 x i8], ptr %2, i64 %i.il
  %i.in = load float, ptr %i.im, align 4, !tbaa !11
  %i.io = fadd reassoc nsz arcp contract afn float %i.ig, %i.in
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv69.ph
  store float %i.io, ptr %i.ip, align 4, !tbaa !11
  %indvars.iv.next70.prol = add nsw i64 %indvars.iv69.ph, 1
  br label %vec.epilog.scalar.ph197.prol.loopexit

vec.epilog.scalar.ph197.prol.loopexit:            ; preds = %vec.epilog.scalar.ph197.prol, %vec.epilog.scalar.ph197.preheader
  %indvars.iv69.unr = phi i64 [ %indvars.iv69.ph, %vec.epilog.scalar.ph197.preheader ], [ %indvars.iv.next70.prol, %vec.epilog.scalar.ph197.prol ]
  %i.iq = add nsw i64 %wide.trip.count72, -1
  %i.ir = icmp eq i64 %indvars.iv69.ph, %i.iq
  br i1 %i.ir, label %._crit_edge, label %vec.epilog.scalar.ph197

.lr.ph56:                                         ; preds = %.lr.ph56.preheader, %.lr.ph56
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %.lr.ph56 ], [ %indvars.iv64.ph, %.lr.ph56.preheader ] ; 4 uses
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %.lr.ph56 ], [ %indvars.iv62.ph, %.lr.ph56.preheader ] ; 2 uses
  %i.is = mul nsw i64 %indvars.iv64, %i.bs
  %i.it = getelementptr inbounds [4 x i8], ptr %2, i64 %i.is
  %i.iu = load float, ptr %i.it, align 4, !tbaa !11
  %i.iv = fmul reassoc nsz arcp contract afn float %i.iu, 2.000000e+00
  %i.iw = sub nsw i64 %indvars.iv64, %i.bp
  %i.ix = mul nsw i64 %i.iw, %i.bs
  %i.iy = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ix
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !11
  %i.ja = fadd reassoc nsz arcp contract afn float %i.iv, %i.iz
  %i.jb = mul nsw i64 %indvars.iv62, %i.bs
  %i.jc = getelementptr inbounds [4 x i8], ptr %2, i64 %i.jb
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !11
  %i.je = fadd reassoc nsz arcp contract afn float %i.ja, %i.jd
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv64
  store float %i.je, ptr %i.jf, align 4, !tbaa !11
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 3 uses
  %i.jg = icmp slt i64 %indvars.iv.next65, %invariant.op
  %indvars.iv.next63 = add nsw i64 %indvars.iv62, 1
  br i1 %i.jg, label %.lr.ph56, label %.preheader.loopexit, !llvm.loop !43

vec.epilog.scalar.ph197:                          ; preds = %vec.epilog.scalar.ph197.prol.loopexit, %vec.epilog.scalar.ph197
  %indvars.iv69 = phi i64 [ %indvars.iv.next70.1, %vec.epilog.scalar.ph197 ], [ %indvars.iv69.unr, %vec.epilog.scalar.ph197.prol.loopexit ] ; 6 uses
  %i.jh = mul nsw i64 %indvars.iv69, %i.es
  %i.ji = getelementptr inbounds [4 x i8], ptr %2, i64 %i.jh
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !11
  %i.jk = fmul reassoc nsz arcp contract afn float %i.jj, 2.000000e+00
  %i.jl = sub nsw i64 %indvars.iv69, %i.et
  %i.jm = mul nsw i64 %i.jl, %i.es
  %i.jn = getelementptr inbounds [4 x i8], ptr %2, i64 %i.jm
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !11
  %i.jp = fadd reassoc nsz arcp contract afn float %i.jk, %i.jo
  %i.jq = trunc nsw i64 %indvars.iv69 to i32
  %i.jr = add i32 %5, %i.jq
  %i.js = sub i32 %.neg52, %i.jr
  %i.jt = mul nsw i32 %i.js, %3
  %i.ju = sext i32 %i.jt to i64
  %i.jv = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ju
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !11
  %i.jx = fadd reassoc nsz arcp contract afn float %i.jp, %i.jw
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv69
  store float %i.jx, ptr %i.jy, align 4, !tbaa !11
  %indvars.iv.next70 = add nsw i64 %indvars.iv69, 1 ; 4 uses
  %i.jz = mul nsw i64 %indvars.iv.next70, %i.es
  %i.ka = getelementptr inbounds [4 x i8], ptr %2, i64 %i.jz
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !11
  %i.kc = fmul reassoc nsz arcp contract afn float %i.kb, 2.000000e+00
  %i.kd = sub nsw i64 %indvars.iv.next70, %i.et
  %i.ke = mul nsw i64 %i.kd, %i.es
  %i.kf = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ke
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !11
  %i.kh = fadd reassoc nsz arcp contract afn float %i.kc, %i.kg
  %i.ki = trunc nsw i64 %indvars.iv.next70 to i32
  %i.kj = add i32 %5, %i.ki
  %i.kk = sub i32 %.neg52, %i.kj
  %i.kl = mul nsw i32 %i.kk, %3
  %i.km = sext i32 %i.kl to i64
  %i.kn = getelementptr inbounds [4 x i8], ptr %2, i64 %i.km
  %i.ko = load float, ptr %i.kn, align 4, !tbaa !11
  %i.kp = fadd reassoc nsz arcp contract afn float %i.kh, %i.ko
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next70
  store float %i.kp, ptr %i.kq, align 4, !tbaa !11
  %indvars.iv.next70.1 = add nsw i64 %indvars.iv69, 2 ; 2 uses
  %exitcond73.not.1 = icmp eq i64 %indvars.iv.next70.1, %wide.trip.count72
  br i1 %exitcond73.not.1, label %._crit_edge, label %vec.epilog.scalar.ph197, !llvm.loop !44

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph197.prol.loopexit, %vec.epilog.scalar.ph197, %middle.block192, %vec.epilog.middle.block209, %.preheader
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw15wavelet_denoiseEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca [2 x float], align 8              ; 4 uses
  %i.b = alloca [2 x i32], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 30 ; 4 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !45   ; 3 uses
  %i.f = icmp ult i16 %i.e, 65
  br i1 %i.f, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.h = load i16, ptr %i.g, align 4, !tbaa !107  ; 3 uses
  %i.i = icmp ult i16 %i.h, 65
  br i1 %i.i, label %bb.ad, label %.preheader300

.preheader300:                                    ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 153096 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !108  ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.preheader300
  %.0231 = phi i32 [ %i.n, %bb.c ], [ 1, %.preheader300 ] ; 3 uses
  %i.l = shl i32 %i.k, %.0231
  %i.m = icmp ult i32 %i.l, 65536
  %i.n = add nuw nsw i32 %.0231, 1
  br i1 %i.m, label %bb.c, label %bb.d, !llvm.loop !109

bb.d:                                             ; preds = %bb.c
  %i.o = add nsw i32 %.0231, -1                   ; 6 uses
  %i.p = shl i32 %i.k, %i.o
  store i32 %i.p, ptr %i.j, align 8, !tbaa !108
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 153088 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !110
  %i.s = shl i32 %i.r, %i.o
  store i32 %i.s, ptr %i.q, align 8, !tbaa !110
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136672 ; 4 uses
  %i.u = load <4 x i32>, ptr %i.t, align 8, !tbaa !111
  %i.v = insertelement <4 x i32> poison, i32 %i.o, i64 0
  %i.w = shufflevector <4 x i32> %i.v, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.x = shl <4 x i32> %i.u, %i.w
  store <4 x i32> %i.x, ptr %i.t, align 8, !tbaa !111
  %i.y = zext i16 %i.h to i32                     ; 2 uses
  %i.z = zext i16 %i.e to i32                     ; 2 uses
  %i.aa = mul nuw nsw i32 %i.y, %i.z              ; 9 uses
  %i.ab = icmp samesign ult i32 %i.aa, 357892096
  %i.ac = mul i32 %i.aa, 3                        ; 2 uses
  br i1 %i.ab, label %bb.e, label %._crit_edge412

bb.e:                                             ; preds = %bb.d
  %i.ad = add nuw nsw i32 %i.z, 128
  %i.ae = add nuw nsw i32 %i.ad, %i.y
  %i.af = add nuw nsw i32 %i.ae, %i.ac
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 2
  %i.ai = tail call noundef ptr @_ZN6LibRaw6mallocEm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.ah)
  br label %._crit_edge412

._crit_edge412:                                   ; preds = %bb.d, %bb.e
  %.0233 = phi ptr [ %i.ai, %bb.e ], [ null, %bb.d ] ; 60 uses
  %i.aj = zext i32 %i.ac to i64                   ; 9 uses
  %i.ak = getelementptr [4 x i8], ptr %.0233, i64 %i.aj ; 52 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.am = load i32, ptr %i.al, align 4, !tbaa !112 ; 3 uses
  %i.an = icmp ne i32 %i.am, 3                    ; 2 uses
  br i1 %i.an, label %bb.f, label %.thread

.thread:                                          ; preds = %._crit_edge412
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !113
  %.not = icmp eq i32 %i.ap, 0
  %spec.select = select i1 %.not, i32 3, i32 4
  br label %.preheader299.lr.ph

bb.f:                                             ; preds = %._crit_edge412
  %i.aq = icmp sgt i32 %i.am, 0
  br i1 %i.aq, label %.preheader299.lr.ph, label %.loopexit293

.preheader299.lr.ph:                              ; preds = %.thread, %bb.f
  %.0218431 = phi i32 [ %spec.select, %.thread ], [ %i.am, %bb.f ]
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !114
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 5372
  %wide.trip.count388 = zext nneg i32 %.0218431 to i64
  %wide.trip.count = zext nneg i32 %i.aa to i64   ; 16 uses
  %1 = zext i16 %i.h to i64
  %2 = zext i16 %i.e to i64
  %3 = mul nuw nsw i64 %1, %2
  %i.at = shl nuw nsw i64 %3, 2                   ; 2 uses
  %scevgep = getelementptr i8, ptr %.0233, i64 %i.at ; 3 uses
  %scevgep454 = getelementptr i8, ptr %.0233, i64 %i.at
  %i.au = mul nsw i64 %i.aj, -4                   ; 2 uses
  %i.av = shl nuw nsw i64 %i.aj, 2                ; 6 uses
  %scevgep534 = getelementptr i8, ptr %.0233, i64 %i.av
  %scevgep649 = getelementptr i8, ptr %.0233, i64 %i.av
  %scevgep651 = getelementptr i8, ptr %.0233, i64 -4
  %scevgep654 = getelementptr i8, ptr %.0233, i64 4
  %scevgep659 = getelementptr i8, ptr %.0233, i64 -4
  %scevgep750 = getelementptr i8, ptr %.0233, i64 %i.av
  %scevgep863 = getelementptr i8, ptr %.0233, i64 %i.av
  %scevgep867 = getelementptr i8, ptr %.0233, i64 4
  %scevgep869 = getelementptr i8, ptr %.0233, i64 4
  %min.iters.check931 = icmp samesign ult i32 %i.aa, 5
  %min.iters.check933 = icmp samesign ult i32 %i.aa, 33
  %i.aw = and i64 %wide.trip.count, 31            ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  %i.ay = select i1 %i.ax, i64 32, i64 %i.aw      ; 2 uses
  %n.vec935 = sub nsw i64 %wide.trip.count, %i.ay ; 3 uses
  %broadcast.splatinsert936 = insertelement <8 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat937 = shufflevector <8 x i32> %broadcast.splatinsert936, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %min.epilog.iters.check952 = icmp samesign ult i64 %i.ay, 5
  %i.az = and i64 %wide.trip.count, 3             ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  %i.bb = select i1 %i.ba, i64 4, i64 %i.az
  %n.vec954 = sub nsw i64 %wide.trip.count, %i.bb ; 2 uses
  %broadcast.splatinsert955 = insertelement <4 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat956 = shufflevector <4 x i32> %broadcast.splatinsert955, <4 x i32> poison, <4 x i32> zeroinitializer
  %invariant.op1026 = add i64 %i.au, -1
  %invariant.op1024 = add i64 %i.au, -1
  %min.iters.check464 = icmp samesign ult i32 %i.aa, 4
  %min.iters.check465 = icmp samesign ult i32 %i.aa, 16
  %i.bc = and i64 %wide.trip.count, 12
  %n.vec467 = and i64 %wide.trip.count, 2147483632 ; 4 uses
  %cmp.n484 = icmp eq i64 %n.vec467, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.bc, 0
  %n.vec485 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n499 = icmp eq i64 %n.vec485, %wide.trip.count
  %xtraiter997 = and i64 %wide.trip.count, 1
  %lcmp.mod998.not = icmp eq i64 %xtraiter997, 0
  %i.bd = add nsw i64 %wide.trip.count, -1
  %min.iters.check = icmp samesign ult i32 %i.aa, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %iter.check949

iter.check949:                                    ; preds = %.preheader299.lr.ph, %.loopexit965
  %indvars.iv385 = phi i64 [ 0, %.preheader299.lr.ph ], [ %indvars.iv.next386, %.loopexit965 ] ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv385 ; 8 uses
  br i1 %min.iters.check931, label %vec.epilog.scalar.ph950.preheader, label %vector.main.loop.iter.check932

vector.main.loop.iter.check932:                   ; preds = %iter.check949
  br i1 %min.iters.check933, label %vec.epilog.ph953, label %vector.body938

vector.body938:                                   ; preds = %vector.main.loop.iter.check932, %vector.body938
  %index939 = phi i64 [ %index.next946, %vector.body938 ], [ 0, %vector.main.loop.iter.check932 ] ; 6 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index939
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index939
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index939
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 128
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index939
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 192
  %wide.vec = load <32 x i16>, ptr %i.be, align 2, !tbaa !115
  %strided.vec = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec940 = load <32 x i16>, ptr %i.bg, align 2, !tbaa !115
  %strided.vec941 = shufflevector <32 x i16> %wide.vec940, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec942 = load <32 x i16>, ptr %i.bi, align 2, !tbaa !115
  %strided.vec943 = shufflevector <32 x i16> %wide.vec942, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec944 = load <32 x i16>, ptr %i.bk, align 2, !tbaa !115
  %strided.vec945 = shufflevector <32 x i16> %wide.vec944, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.bl = zext <8 x i16> %strided.vec to <8 x i32>
  %i.bm = zext <8 x i16> %strided.vec941 to <8 x i32>
  %i.bn = zext <8 x i16> %strided.vec943 to <8 x i32>
  %i.bo = zext <8 x i16> %strided.vec945 to <8 x i32>
  %i.bp = shl <8 x i32> %i.bl, %broadcast.splat937
  %i.bq = shl <8 x i32> %i.bm, %broadcast.splat937
  %i.br = shl <8 x i32> %i.bn, %broadcast.splat937
  %i.bs = shl <8 x i32> %i.bo, %broadcast.splat937
  %i.bt = sitofp reassoc nsz arcp contract afn <8 x i32> %i.bp to <8 x float>
  %i.bu = sitofp reassoc nsz arcp contract afn <8 x i32> %i.bq to <8 x float>
  %i.bv = sitofp reassoc nsz arcp contract afn <8 x i32> %i.br to <8 x float>
  %i.bw = sitofp reassoc nsz arcp contract afn <8 x i32> %i.bs to <8 x float>
  %i.bx = tail call reassoc ninf nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.bt)
  %i.by = tail call reassoc ninf nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.bu)
  %i.bz = tail call reassoc ninf nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.bv)
  %i.ca = tail call reassoc ninf nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.bw)
  %i.cb = fmul reassoc nsz arcp contract afn <8 x float> %i.bx, splat (float 2.560000e+02)
  %i.cc = fmul reassoc nsz arcp contract afn <8 x float> %i.by, splat (float 2.560000e+02)
  %i.cd = fmul reassoc nsz arcp contract afn <8 x float> %i.bz, splat (float 2.560000e+02)
  %i.ce = fmul reassoc nsz arcp contract afn <8 x float> %i.ca, splat (float 2.560000e+02)
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.0233, i64 %index939 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 96
  store <8 x float> %i.cb, ptr %i.cf, align 4, !tbaa !11
  store <8 x float> %i.cc, ptr %i.cg, align 4, !tbaa !11
  store <8 x float> %i.cd, ptr %i.ch, align 4, !tbaa !11
  store <8 x float> %i.ce, ptr %i.ci, align 4, !tbaa !11
  %index.next946 = add nuw i64 %index939, 32      ; 2 uses
  %i.cj = icmp eq i64 %index.next946, %n.vec935
  br i1 %i.cj, label %vec.epilog.iter.check951, label %vector.body938, !llvm.loop !116

vec.epilog.iter.check951:                         ; preds = %vector.body938
  br i1 %min.epilog.iters.check952, label %vec.epilog.scalar.ph950.preheader, label %vec.epilog.ph953, !prof !117

vec.epilog.scalar.ph950.preheader:                ; preds = %vec.epilog.vector.body957, %iter.check949, %vec.epilog.iter.check951
  %indvars.iv.ph = phi i64 [ 0, %iter.check949 ], [ %n.vec935, %vec.epilog.iter.check951 ], [ %n.vec954, %vec.epilog.vector.body957 ]
  br label %vec.epilog.scalar.ph950

vec.epilog.ph953:                                 ; preds = %vector.main.loop.iter.check932, %vec.epilog.iter.check951
  %vec.epilog.resume.val948 = phi i64 [ %n.vec935, %vec.epilog.iter.check951 ], [ 0, %vector.main.loop.iter.check932 ]
  br label %vec.epilog.vector.body957

vec.epilog.vector.body957:                        ; preds = %vec.epilog.vector.body957, %vec.epilog.ph953
  %index958 = phi i64 [ %vec.epilog.resume.val948, %vec.epilog.ph953 ], [ %index.next961, %vec.epilog.vector.body957 ] ; 3 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index958
  %wide.vec959 = load <16 x i16>, ptr %i.ck, align 2, !tbaa !115
  %strided.vec960 = shufflevector <16 x i16> %wide.vec959, <16 x i16> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.cl = zext <4 x i16> %strided.vec960 to <4 x i32>
  %i.cm = shl <4 x i32> %i.cl, %broadcast.splat956
  %i.cn = sitofp reassoc nsz arcp contract afn <4 x i32> %i.cm to <4 x float>
  %i.co = tail call reassoc ninf nsz arcp contract afn <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.cn)
  %i.cp = fmul reassoc nsz arcp contract afn <4 x float> %i.co, splat (float 2.560000e+02)
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.0233, i64 %index958
  store <4 x float> %i.cp, ptr %i.cq, align 4, !tbaa !11
  %index.next961 = add nuw i64 %index958, 4       ; 2 uses
  %i.cr = icmp eq i64 %index.next961, %n.vec954
  br i1 %i.cr, label %vec.epilog.scalar.ph950.preheader, label %vec.epilog.vector.body957, !llvm.loop !118

.preheader298:                                    ; preds = %vec.epilog.scalar.ph950
  %i.cs = load i16, ptr %i.g, align 4, !tbaa !107 ; 7 uses
  %i.ct = zext i16 %i.cs to i32                   ; 3 uses
  %.not343 = icmp eq i16 %i.cs, 0                 ; 2 uses
  %i.cu = load i16, ptr %i.d, align 2, !tbaa !45  ; 12 uses
  %i.cv = zext i16 %i.cu to i32                   ; 6 uses
  %.not344 = icmp eq i16 %i.cu, 0                 ; 2 uses
  %i.cw = zext i16 %i.cu to i64                   ; 34 uses
  %i.cx = zext i16 %i.cs to i64                   ; 2 uses
  %i.cy = shl nuw nsw i32 %i.ct, 1                ; 3 uses
  %invariant.op = add nsw i32 %i.cy, -2           ; 5 uses
  %i.cz = zext i16 %i.cu to i64                   ; 10 uses
  %i.da = shl nuw nsw i32 %i.cv, 1                ; 3 uses
  %wide.trip.count359 = zext i16 %i.cs to i64     ; 16 uses
  %i.db = add nsw i32 %i.da, -2                   ; 5 uses
  %wide.trip.count354 = zext i16 %i.cu to i64
  %wide.trip.count369 = zext i16 %i.cu to i64
  %wide.trip.count364 = zext i16 %i.cs to i64
  %i.dc = add nsw i64 %wide.trip.count359, -1     ; 2 uses
  %i.dd = add nsw i32 %i.cy, -2
  %i.de = add nuw nsw i64 %i.aj, %wide.trip.count359
  %i.df = shl nuw nsw i64 %i.de, 2
  %scevgep536 = getelementptr i8, ptr %.0233, i64 %i.df ; 3 uses
  %i.dg = shl nuw nsw i64 %wide.trip.count359, 2  ; 3 uses
  %i.dh = add nsw i32 %i.cy, -2
  %i.di = shl nuw nsw i64 %i.cw, 2                ; 3 uses
  %scevgep652 = getelementptr i8, ptr %scevgep651, i64 %i.di
  %scevgep656 = getelementptr i8, ptr %.0233, i64 %i.di
  %scevgep660 = getelementptr i8, ptr %scevgep659, i64 %i.di
  %i.dj = shl nuw nsw i64 %i.cw, 2
  %i.dk = add nsw i32 %i.da, -2
  %i.dl = add nuw nsw i64 %i.aj, %i.cw
  %i.dm = shl nuw nsw i64 %i.dl, 2
  %scevgep752 = getelementptr i8, ptr %.0233, i64 %i.dm ; 3 uses
  %i.dn = shl nuw nsw i64 %i.cw, 2
  %i.do = shl nuw nsw i64 %i.cw, 2                ; 3 uses
  %i.dp = add nsw i32 %i.da, -2
  %i.dq = mul nsw i64 %i.cw, -4
  %i.dr = shl nuw nsw i64 %wide.trip.count359, 2
  %i.ds = add nsw i64 %i.dr, -4
  %i.dt = mul nsw i64 %i.ds, %i.cw                ; 3 uses
  %scevgep865 = getelementptr i8, ptr %.0233, i64 %i.dt
  %scevgep865.a = getelementptr i8, ptr %scevgep869, i64 %i.dt
  %scevgep870 = getelementptr i8, ptr %.0233, i64 %i.dt
  %scevgep873 = getelementptr i8, ptr %.0233, i64 %i.do
  %i.du = add nsw i64 %i.cz, -1
  %min.iters.check720 = icmp ult i16 %i.cu, 4
  %min.iters.check722 = icmp ult i16 %i.cu, 32
  %i.dv = and i64 %i.cw, 28
  %n.vec724 = and i64 %i.cw, 65504                ; 4 uses
  %cmp.n733 = icmp eq i64 %n.vec724, %i.cw
  %min.epilog.iters.check738 = icmp eq i64 %i.dv, 0
  %n.vec740 = and i64 %i.cw, 65532                ; 3 uses
  %cmp.n746 = icmp eq i64 %n.vec740, %i.cw
  %4 = getelementptr i8, ptr %.0233, i64 %i.dg
  %ident.check647.not = icmp eq i16 %i.cu, 1
  %ident.check603.not = icmp eq i16 %i.cu, 1
  %ident.check532 = icmp ne i16 %i.cu, 1
  %i.dw = add nsw i64 %wide.trip.count359, -1
  %min.iters.check503 = icmp ult i16 %i.cs, 4
  %ident.check = icmp ne i16 %i.cu, 1
  %i.dx = trunc nsw i64 %i.dc to i32
  %i.dy = icmp ugt i64 %i.dc, 4294967295
  %invariant.op1022 = or i1 %i.dy, %ident.check
  %min.iters.check505 = icmp ult i16 %i.cs, 32
  %i.dz = and i64 %wide.trip.count359, 28
  %n.vec507 = and i64 %wide.trip.count359, 65504  ; 4 uses
  %cmp.n516 = icmp eq i64 %n.vec507, %wide.trip.count359
  %min.epilog.iters.check521 = icmp eq i64 %i.dz, 0
  %n.vec523 = and i64 %wide.trip.count359, 65532  ; 3 uses
  %cmp.n529 = icmp eq i64 %n.vec523, %wide.trip.count359
  %xtraiter994 = and i64 %wide.trip.count359, 3   ; 2 uses
  %lcmp.mod995.not = icmp eq i64 %xtraiter994, 0
  br label %bb.g

vec.epilog.scalar.ph950:                          ; preds = %vec.epilog.scalar.ph950.preheader, %vec.epilog.scalar.ph950
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph950 ], [ %indvars.iv.ph, %vec.epilog.scalar.ph950.preheader ] ; 3 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ea = load i16, ptr %gep, align 2, !tbaa !115
  %i.eb = zext i16 %i.ea to i32
  %i.ec = shl i32 %i.eb, %i.o
  %i.ed = sitofp reassoc nsz arcp contract afn i32 %i.ec to float
  %i.ee = tail call reassoc ninf nsz arcp contract afn float @llvm.sqrt.f32(float %i.ed)
  %i.ef = fmul reassoc nsz arcp contract afn float %i.ee, 2.560000e+02
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %.0233, i64 %indvars.iv
  store float %i.ef, ptr %i.eg, align 4, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader298, label %vec.epilog.scalar.ph950, !llvm.loop !119

.preheader297:                                    ; preds = %.loopexit964
  %invariant.gep443 = getelementptr [4 x i8], ptr %.0233, i64 %i.agv ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader297, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader297 ] ; 4 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %.0233, i64 %index
  %wide.load = load <8 x float>, ptr %i.eh, align 4, !tbaa !11
  %i.ei = getelementptr [4 x i8], ptr %invariant.gep443, i64 %index
  %wide.load452 = load <8 x float>, ptr %i.ei, align 4, !tbaa !11
  %i.ej = fadd reassoc nsz arcp contract afn <8 x float> %wide.load452, %wide.load ; 2 uses
  %i.ek = fmul reassoc nsz arcp contract afn <8 x float> %i.ej, %i.ej
  %i.el = fmul reassoc nsz arcp contract afn <8 x float> %i.ek, splat (float f0x37800000)
  %i.em = fptosi <8 x float> %i.el to <8 x i32>
  %i.en = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.em, <8 x i32> zeroinitializer)
  %i.eo = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.en, <8 x i32> splat (i32 65535))
  %i.ep = trunc nuw <8 x i32> %i.eo to <8 x i16>
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index
  %i.er = shufflevector <8 x i16> %i.ep, <8 x i16> poison, <29 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 4, i32 poison, i32 poison, i32 poison, i32 5, i32 poison, i32 poison, i32 poison, i32 6, i32 poison, i32 poison, i32 poison, i32 7>
  tail call void @llvm.masked.store.v29i16.p0(<29 x i16> %i.er, ptr align 2 %i.eq, <29 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true>), !tbaa !115
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.es = icmp eq i64 %index.next, %n.vec
  br i1 %i.es, label %middle.block, label %vector.body, !llvm.loop !120

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit965, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader297, %middle.block
  %indvars.iv380.ph = phi i64 [ 0, %.preheader297 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

bb.g:                                             ; preds = %.preheader298, %.loopexit964
  %indvars.iv376 = phi i64 [ 0, %.preheader298 ], [ %indvars.iv.next377, %.loopexit964 ] ; 10 uses
  %.0229322 = phi i32 [ 0, %.preheader298 ], [ %i.ev, %.loopexit964 ] ; 3 uses
  %i.et = trunc nuw nsw i64 %indvars.iv376 to i32 ; 5 uses
  %i.eu = and i32 %i.et, 1
  %i.ev = shl nuw i32 %i.aa, %i.eu                ; 7 uses
  br i1 %.not343, label %.preheader296, label %.lr.ph312

.lr.ph312:                                        ; preds = %bb.g
  %i.ew = zext i32 %.0229322 to i64               ; 5 uses
  %i.ex = getelementptr [4 x i8], ptr %.0233, i64 %i.ew ; 2 uses
  %i.ey = shl nuw nsw i32 1, %i.et                ; 9 uses
  %i.ez = zext nneg i32 %i.ey to i64              ; 32 uses
  %i.fa = shl nuw nsw i32 2, %i.et
  %i.fb = icmp samesign ult i32 %i.fa, %i.cv
  %i.fc = shl nuw nsw i64 %i.ez, 1                ; 6 uses
  %invariant.op.i = sub nsw i64 %i.cw, %i.ez      ; 2 uses
  %i.fd = sext i32 %i.ev to i64                   ; 2 uses
  %invariant.gep437 = getelementptr [4 x i8], ptr %.0233, i64 %i.fd
  %i.fe = shl nsw i64 %i.fd, 2
  %i.ff = shl nuw nsw i64 %i.ew, 2                ; 6 uses
  %5 = shl nuw nsw i64 %i.ez, 2                   ; 4 uses
  %6 = sub nsw i64 %i.ff, %5
  %7 = add nuw nsw i64 %i.do, %i.ff
  %i.fg = sub nsw i64 %7, %5
  %reass.sub = sub nsw i64 %i.ff, %i.do
  %i.fh = shl nuw nsw i64 %i.ew, 2                ; 4 uses
  %i.fi = sub nsw i64 %i.av, %i.fh
  %i.fj = add nuw nsw i64 %i.aj, %i.ez
  %i.fk = sub nsw i64 %i.fj, %i.ew
  %i.fl = shl nsw i64 %i.fk, 2
  %i.fm = add nuw nsw i64 %i.ew, %i.ez
  %i.fn = sub nsw i64 %i.aj, %i.fm
  %i.fo = shl nsw i64 %i.fn, 2
  %i.fp = add nuw nsw i64 %i.ez, 1
  %smax825 = tail call i64 @llvm.smax.i64(i64 %invariant.op.i, i64 %i.fp)
  %i.fq = sub nsw i64 %smax825, %i.ez             ; 7 uses
  %scevgep864 = getelementptr i8, ptr %scevgep863, i64 %5 ; 3 uses
  %i.fr = add nuw nsw i64 %5, %i.fh               ; 3 uses
  %scevgep866 = getelementptr i8, ptr %scevgep865, i64 %i.fr
  %scevgep868 = getelementptr i8, ptr %scevgep867, i64 %i.fh
  %scevgep871 = getelementptr i8, ptr %scevgep865.a, i64 %i.fr
  %scevgep872 = getelementptr i8, ptr %.0233, i64 %i.fr
  %i.fs = shl nuw nsw i64 %i.ez, 3
  %i.ft = getelementptr i8, ptr %scevgep870, i64 %i.fs
  %scevgep874 = getelementptr i8, ptr %i.ft, i64 %i.fh
  %i.fu = getelementptr i8, ptr %.0233, i64 %i.ff
  %i.fv = getelementptr i8, ptr %scevgep873, i64 %i.ff
  %i.fw = getelementptr i8, ptr %.0233, i64 %6
  %i.fx = getelementptr i8, ptr %.0233, i64 %i.fg
  %i.fy = getelementptr i8, ptr %.0233, i64 %reass.sub
  %i.fz = getelementptr i8, ptr %i.fy, i64 4
  %i.ga = getelementptr i8, ptr %.0233, i64 %i.ff
  %i.gb = getelementptr i8, ptr %i.ga, i64 4
  %min.iters.check887 = icmp samesign ult i64 %indvars.iv376, 3
  %bound0875 = icmp ult ptr %i.ak, %scevgep866
  %bound1876 = icmp ult ptr %i.ex, %scevgep864
  %found.conflict877 = and i1 %bound0875, %bound1876
  %bound0878 = icmp ult ptr %i.ak, %scevgep871
  %bound1879 = icmp ult ptr %scevgep868, %scevgep864
  %found.conflict880 = and i1 %bound0878, %bound1879
  %conflict.rdx881 = or i1 %found.conflict877, %found.conflict880
  %bound0882 = icmp ult ptr %i.ak, %scevgep874
  %bound1883 = icmp ult ptr %scevgep872, %scevgep864
  %found.conflict884 = and i1 %bound0882, %bound1883
  %conflict.rdx885 = or i1 %conflict.rdx881, %found.conflict884
  %min.iters.check889 = icmp samesign ult i64 %indvars.iv376, 5
  %n.vec891 = and i64 %i.ez, 2147483616
  %n.vec919 = and i64 %i.ez, 248
  %xtraiter = and i64 %i.ez, 3                    ; 3 uses
  %i.gc = icmp samesign ult i64 %indvars.iv376, 2
  %unroll_iter = and i64 %i.ez, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod980 = icmp ne i64 %xtraiter, 0
  %min.iters.check827 = icmp ult i64 %i.fq, 4
  %invariant.op1005 = add i64 %i.fi, -1
  %invariant.op1006 = add i64 %i.fl, -1
  %invariant.op1008 = add i64 %i.fo, -1
  %min.iters.check829 = icmp ult i64 %i.fq, 16
  %i.gd = and i64 %i.fq, 12
  %n.vec831 = and i64 %i.fq, -16                  ; 5 uses
  %i.ge = add i64 %n.vec831, %i.ez                ; 2 uses
  %i.gf = add i64 %i.fc, %n.vec831
  %cmp.n842 = icmp eq i64 %i.fq, %n.vec831
  %min.epilog.iters.check849 = icmp eq i64 %i.gd, 0
  %n.vec851 = and i64 %i.fq, -4                   ; 4 uses
  %i.gg = add i64 %n.vec851, %i.ez                ; 2 uses
  %i.gh = add i64 %i.fc, %n.vec851
  %cmp.n859 = icmp eq i64 %i.fq, %n.vec851
  %invariant.op1010.reass = add i64 %i.fe, %invariant.op1026
  br label %iter.check914

.preheader296:                                    ; preds = %._crit_edge, %bb.g
  br i1 %.not344, label %iter.check, label %.lr.ph318

.lr.ph318:                                        ; preds = %.preheader296
  %i.gi = zext i32 %i.ev to i64                   ; 5 uses
  %i.gj = getelementptr [4 x i8], ptr %.0233, i64 %i.gi ; 2 uses
  %i.gk = shl nuw nsw i32 1, %i.et                ; 9 uses
  %i.gl = zext nneg i32 %i.gk to i64              ; 34 uses
  %i.gm = shl nuw nsw i32 2, %i.et
  %i.gn = icmp samesign ult i32 %i.gm, %i.ct
  %i.go = shl nuw nsw i64 %i.gl, 1                ; 6 uses
  %invariant.op.i269 = sub nsw i64 %i.cx, %i.gl   ; 2 uses
  %i.gp = shl nuw nsw i64 %i.gi, 2                ; 6 uses
  %8 = shl nuw nsw i64 %i.gl, 2                   ; 5 uses
  %9 = sub nsw i64 %i.gp, %8
  %10 = add nuw nsw i64 %i.dg, %i.gp
  %i.gq = sub nsw i64 %10, %8
  %reass.sub966 = sub nsw i64 %i.gp, %i.dg
  %i.gr = shl nuw nsw i64 %i.gi, 2                ; 5 uses
  %i.gs = sub nsw i64 %i.av, %i.gr
  %i.gt = add nuw nsw i64 %i.aj, %i.gl
  %i.gu = sub nsw i64 %i.gt, %i.gi
  %i.gv = shl nsw i64 %i.gu, 2
  %i.gw = add nuw nsw i64 %i.gi, %i.gl
  %i.gx = sub nsw i64 %i.aj, %i.gw
  %i.gy = shl nsw i64 %i.gx, 2
  %i.gz = add nuw nsw i64 %i.gl, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %invariant.op.i269, i64 %i.gz)
  %i.ha = sub nsw i64 %smax, %i.gl                ; 7 uses
  %scevgep650 = getelementptr i8, ptr %scevgep649, i64 %8 ; 3 uses
  %i.hb = getelementptr i8, ptr %scevgep652, i64 %8
  %scevgep653 = getelementptr i8, ptr %i.hb, i64 %i.gr
  %scevgep655 = getelementptr i8, ptr %scevgep654, i64 %i.gr
  %i.hc = add nuw nsw i64 %i.gr, %8               ; 2 uses
  %scevgep657 = getelementptr i8, ptr %scevgep656, i64 %i.hc
  %scevgep658 = getelementptr i8, ptr %.0233, i64 %i.hc
  %i.hd = shl nuw nsw i64 %i.gl, 3
  %i.he = getelementptr i8, ptr %scevgep660, i64 %i.hd
  %scevgep661 = getelementptr i8, ptr %i.he, i64 %i.gr
  %i.hf = getelementptr i8, ptr %.0233, i64 %i.gp
  %i.hg = getelementptr i8, ptr %4, i64 %i.gp
  %i.hh = getelementptr i8, ptr %.0233, i64 %9
  %i.hi = getelementptr i8, ptr %.0233, i64 %i.gq
  %i.hj = getelementptr i8, ptr %.0233, i64 %reass.sub966
  %i.hk = getelementptr i8, ptr %i.hj, i64 4
  %i.hl = getelementptr i8, ptr %.0233, i64 %i.gp
  %i.hm = getelementptr i8, ptr %i.hl, i64 4
  %min.iters.check674 = icmp samesign ugt i64 %indvars.iv376, 2
  %or.cond967 = select i1 %min.iters.check674, i1 %ident.check647.not, i1 false
  %bound0662 = icmp ult ptr %i.ak, %scevgep653
  %bound1663 = icmp ult ptr %i.gj, %scevgep650
  %found.conflict664 = and i1 %bound0662, %bound1663
  %bound0665 = icmp ult ptr %i.ak, %scevgep657
  %bound1666 = icmp ult ptr %scevgep655, %scevgep650
  %found.conflict667 = and i1 %bound0665, %bound1666
  %conflict.rdx668 = or i1 %found.conflict664, %found.conflict667
  %bound0669 = icmp ult ptr %i.ak, %scevgep661
  %bound1670 = icmp ult ptr %scevgep658, %scevgep650
  %found.conflict671 = and i1 %bound0669, %bound1670
  %conflict.rdx672 = or i1 %conflict.rdx668, %found.conflict671
  %min.iters.check676 = icmp samesign ult i64 %indvars.iv376, 5
  %n.vec678 = and i64 %i.gl, 2147483616
  %n.vec706 = and i64 %i.gl, 248
  %xtraiter985 = and i64 %i.gl, 1
  %i.hn = icmp eq i64 %indvars.iv376, 0
  %unroll_iter989 = and i64 %i.gl, 2147483646
  %lcmp.mod987.not = icmp eq i64 %xtraiter985, 0
  %lcmp.mod988 = icmp eq i64 %indvars.iv376, 0
  %min.iters.check611 = icmp ugt i64 %i.ha, 3
  %or.cond968 = select i1 %min.iters.check611, i1 %ident.check603.not, i1 false
  %invariant.op1016 = add i64 %i.gs, -1
  %invariant.op1018 = add i64 %i.gv, -1
  %invariant.op1020 = add i64 %i.gy, -1
  %min.iters.check613 = icmp ult i64 %i.ha, 16
  %i.ho = and i64 %i.ha, 12
  %n.vec615 = and i64 %i.ha, -16                  ; 5 uses
  %i.hp = add i64 %n.vec615, %i.gl                ; 2 uses
  %i.hq = add i64 %i.go, %n.vec615
  %cmp.n626 = icmp eq i64 %i.ha, %n.vec615
  %min.epilog.iters.check633 = icmp eq i64 %i.ho, 0
  %n.vec635 = and i64 %i.ha, -4                   ; 4 uses
  %i.hr = add i64 %n.vec635, %i.gl                ; 2 uses
  %i.hs = add i64 %i.go, %n.vec635
  %cmp.n643 = icmp eq i64 %i.ha, %n.vec635
  br label %iter.check701

iter.check914:                                    ; preds = %.lr.ph312, %._crit_edge
  %indvars.iv356 = phi i64 [ 0, %.lr.ph312 ], [ %indvars.iv.next357, %._crit_edge ] ; 5 uses
  %i.ht = mul i64 %i.dq, %indvars.iv356           ; 3 uses
  %i.hu = mul i64 %i.dn, %indvars.iv356           ; 6 uses
  %scevgep753 = getelementptr i8, ptr %i.fu, i64 %i.hu
  %scevgep755 = getelementptr i8, ptr %i.fv, i64 %i.hu
  %scevgep756 = getelementptr i8, ptr %i.fw, i64 %i.hu
  %scevgep758 = getelementptr i8, ptr %i.fx, i64 %i.hu
  %scevgep759 = getelementptr i8, ptr %i.fz, i64 %i.hu
  %scevgep761 = getelementptr i8, ptr %i.gb, i64 %i.hu
  %i.hv = mul i64 %i.dj, %indvars.iv356
  %i.hw = mul nuw nsw i64 %indvars.iv356, %i.cz   ; 2 uses
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.hw ; 39 uses
  %invariant.gep307 = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %i.ez ; 7 uses
  %brmerge1027 = select i1 %min.iters.check887, i1 true, i1 %conflict.rdx885
  br i1 %brmerge1027, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check888

.lr.ph.i.preheader:                               ; preds = %iter.check914
  br i1 %i.gc, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

vector.main.loop.iter.check888:                   ; preds = %iter.check914
  br i1 %min.iters.check889, label %vec.epilog.vector.body920, label %vector.body892

vector.body892:                                   ; preds = %vector.main.loop.iter.check888, %vector.body892
  %index893 = phi i64 [ %index.next910, %vector.body892 ], [ 0, %vector.main.loop.iter.check888 ] ; 5 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %index893 ; 4 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 32
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 64
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hy, i64 96
  %wide.load894 = load <8 x float>, ptr %i.hy, align 4, !tbaa !11, !alias.scope !121
  %wide.load895 = load <8 x float>, ptr %i.hz, align 4, !tbaa !11, !alias.scope !121
  %wide.load896 = load <8 x float>, ptr %i.ia, align 4, !tbaa !11, !alias.scope !121
  %wide.load897 = load <8 x float>, ptr %i.ib, align 4, !tbaa !11, !alias.scope !121
  %i.ic = fmul reassoc nsz arcp contract afn <8 x float> %wide.load894, splat (float 2.000000e+00)
  %i.id = fmul reassoc nsz arcp contract afn <8 x float> %wide.load895, splat (float 2.000000e+00)
  %i.ie = fmul reassoc nsz arcp contract afn <8 x float> %wide.load896, splat (float 2.000000e+00)
  %i.if = fmul reassoc nsz arcp contract afn <8 x float> %wide.load897, splat (float 2.000000e+00)
  %i.ig = sub nsw i64 %i.ez, %index893
  %i.ih = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.ig ; 4 uses
  %i.ii = getelementptr inbounds i8, ptr %i.ih, i64 -28
  %i.ij = getelementptr inbounds i8, ptr %i.ih, i64 -60
  %i.ik = getelementptr inbounds i8, ptr %i.ih, i64 -92
  %i.il = getelementptr inbounds i8, ptr %i.ih, i64 -124
  %wide.load898 = load <8 x float>, ptr %i.ii, align 4, !tbaa !11, !alias.scope !124
  %wide.load899 = load <8 x float>, ptr %i.ij, align 4, !tbaa !11, !alias.scope !124
  %wide.load900 = load <8 x float>, ptr %i.ik, align 4, !tbaa !11, !alias.scope !124
  %wide.load901 = load <8 x float>, ptr %i.il, align 4, !tbaa !11, !alias.scope !124
  %reverse902 = shufflevector <8 x float> %wide.load898, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse903 = shufflevector <8 x float> %wide.load899, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse904 = shufflevector <8 x float> %wide.load900, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse905 = shufflevector <8 x float> %wide.load901, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.im = fadd reassoc nsz arcp contract afn <8 x float> %i.ic, %reverse902
  %i.in = fadd reassoc nsz arcp contract afn <8 x float> %i.id, %reverse903
  %i.io = fadd reassoc nsz arcp contract afn <8 x float> %i.ie, %reverse904
  %i.ip = fadd reassoc nsz arcp contract afn <8 x float> %i.if, %reverse905
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep307, i64 %index893 ; 4 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 32
  %i.is = getelementptr inbounds nuw i8, ptr %i.iq, i64 64
  %i.it = getelementptr inbounds nuw i8, ptr %i.iq, i64 96
  %wide.load906 = load <8 x float>, ptr %i.iq, align 4, !tbaa !11, !alias.scope !126
  %wide.load907 = load <8 x float>, ptr %i.ir, align 4, !tbaa !11, !alias.scope !126
  %wide.load908 = load <8 x float>, ptr %i.is, align 4, !tbaa !11, !alias.scope !126
  %wide.load909 = load <8 x float>, ptr %i.it, align 4, !tbaa !11, !alias.scope !126
  %i.iu = fadd reassoc nsz arcp contract afn <8 x float> %i.im, %wide.load906
  %i.iv = fadd reassoc nsz arcp contract afn <8 x float> %i.in, %wide.load907
  %i.iw = fadd reassoc nsz arcp contract afn <8 x float> %i.io, %wide.load908
  %i.ix = fadd reassoc nsz arcp contract afn <8 x float> %i.ip, %wide.load909
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %index893 ; 4 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 32
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 64
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iy, i64 96
  store <8 x float> %i.iu, ptr %i.iy, align 4, !tbaa !11, !alias.scope !128, !noalias !130
  store <8 x float> %i.iv, ptr %i.iz, align 4, !tbaa !11, !alias.scope !128, !noalias !130
  store <8 x float> %i.iw, ptr %i.ja, align 4, !tbaa !11, !alias.scope !128, !noalias !130
  store <8 x float> %i.ix, ptr %i.jb, align 4, !tbaa !11, !alias.scope !128, !noalias !130
  %index.next910 = add nuw i64 %index893, 32      ; 2 uses
  %i.jc = icmp eq i64 %index.next910, %n.vec891
  br i1 %i.jc, label %.preheader53.i, label %vector.body892, !llvm.loop !131

vec.epilog.vector.body920:                        ; preds = %vector.main.loop.iter.check888, %vec.epilog.vector.body920
  %index921 = phi i64 [ %index.next926, %vec.epilog.vector.body920 ], [ 0, %vector.main.loop.iter.check888 ] ; 5 uses
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %index921
  %wide.load922 = load <8 x float>, ptr %i.jd, align 4, !tbaa !11, !alias.scope !121
  %i.je = fmul reassoc nsz arcp contract afn <8 x float> %wide.load922, splat (float 2.000000e+00)
  %i.jf = sub nsw i64 %i.ez, %index921
  %i.jg = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.jf
  %i.jh = getelementptr inbounds i8, ptr %i.jg, i64 -28
  %wide.load923 = load <8 x float>, ptr %i.jh, align 4, !tbaa !11, !alias.scope !124
  %reverse924 = shufflevector <8 x float> %wide.load923, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ji = fadd reassoc nsz arcp contract afn <8 x float> %i.je, %reverse924
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep307, i64 %index921
  %wide.load925 = load <8 x float>, ptr %i.jj, align 4, !tbaa !11, !alias.scope !126
  %i.jk = fadd reassoc nsz arcp contract afn <8 x float> %i.ji, %wide.load925
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %index921
  store <8 x float> %i.jk, ptr %i.jl, align 4, !tbaa !11, !alias.scope !128, !noalias !130
  %index.next926 = add nuw i64 %index921, 8       ; 2 uses
  %i.jm = icmp eq i64 %index.next926, %n.vec919
  br i1 %i.jm, label %.preheader53.i, label %vec.epilog.vector.body920, !llvm.loop !132

.preheader53.i.loopexit.unr-lcssa:                ; preds = %.lr.ph.i
  br i1 %lcmp.mod.not, label %.preheader53.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader53.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.3, %.preheader53.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod980)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ], [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ] ; 5 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv.i.epil
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !11
  %i.jp = fmul reassoc nsz arcp contract afn float %i.jo, 2.000000e+00
  %i.jq = sub nsw i64 %i.ez, %indvars.iv.i.epil
  %i.jr = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.jq
  %i.js = load float, ptr %i.jr, align 4, !tbaa !11
  %i.jt = fadd reassoc nsz arcp contract afn float %i.jp, %i.js
  %gep308.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep307, i64 %indvars.iv.i.epil
  %i.ju = load float, ptr %gep308.epil, align 4, !tbaa !11
  %i.jv = fadd reassoc nsz arcp contract afn float %i.jt, %i.ju
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.i.epil
  store float %i.jv, ptr %i.jw, align 4, !tbaa !11
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader53.i, label %.lr.ph.i.epil, !llvm.loop !133

.preheader53.i:                                   ; preds = %vector.body892, %vec.epilog.vector.body920, %.preheader53.i.loopexit.unr-lcssa, %.lr.ph.i.epil
  br i1 %i.fb, label %iter.check846, label %.preheader.i

iter.check846:                                    ; preds = %.preheader53.i
  br i1 %min.iters.check827, label %.lr.ph56.i.preheader, label %vector.memcheck819

vector.memcheck819:                               ; preds = %iter.check846
  %.reass = add i64 %i.ht, %invariant.op1005
  %diff.check820 = icmp ult i64 %.reass, 63
  %.reass1007 = add i64 %i.ht, %invariant.op1006
  %diff.check821 = icmp ult i64 %.reass1007, 63
  %conflict.rdx822 = or i1 %diff.check820, %diff.check821
  %.reass1009 = add i64 %i.ht, %invariant.op1008
  %diff.check823 = icmp ult i64 %.reass1009, 63
  %conflict.rdx824 = or i1 %conflict.rdx822, %diff.check823
  br i1 %conflict.rdx824, label %.lr.ph56.i.preheader, label %vector.main.loop.iter.check828

vector.main.loop.iter.check828:                   ; preds = %vector.memcheck819
  br i1 %min.iters.check829, label %vec.epilog.ph850, label %vector.ph830

vector.ph830:                                     ; preds = %vector.main.loop.iter.check828
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %i.fc
  br label %vector.body832

vector.body832:                                   ; preds = %vector.body832, %vector.ph830
  %index833 = phi i64 [ 0, %vector.ph830 ], [ %index.next840, %vector.body832 ] ; 4 uses
  %i.jy = add nuw i64 %index833, %i.ez            ; 2 uses
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %i.jy ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 32
end_hunk_0
begin_hunk_1_@_ZN6LibRaw18recover_highlightsEv:bb.a
  %i.jm = mul nuw nsw i64 %i.jl, %i.dm
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.jm
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %indvars.iv339
  %i.jp = load float, ptr %i.jo, align 4, !tbaa !11 ; 2 uses
  %i.jq = fcmp reassoc nsz arcp contract afn ogt float %i.jp, 0.000000e+00 ; 2 uses
  %i.jr = fmul reassoc nnan nsz arcp contract afn float %i.jp, 2.000000e+00
  %i.js = fadd reassoc nsz arcp contract afn float %i.jr, %.4184.4432
  %i.jt = add nuw nsw i32 %.4.4433, 2
  %.4184.5 = select nsz i1 %i.jq, float %i.js, float %.4184.4432 ; 3 uses
  %.4.5 = select i1 %i.jq, i32 %i.jt, i32 %.4.4433 ; 3 uses
  br i1 %i.if, label %bb.aa, label %.preheader.7

bb.aa:                                            ; preds = %.preheader.6
  %i.ju = mul nuw nsw i64 %i.jl, %i.dm
  %i.jv = zext nneg i32 %i.ie to i64
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.ju
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %i.jv
  %i.jy = load float, ptr %i.jx, align 4, !tbaa !11 ; 2 uses
  %i.jz = fcmp reassoc nsz arcp contract afn ogt float %i.jy, 0.000000e+00
  br i1 %i.jz, label %bb.ab, label %.preheader.7

bb.ab:                                            ; preds = %bb.aa
  %i.ka = fadd reassoc nsz arcp contract afn float %i.jy, %.4184.5
  %i.kb = add nuw nsw i32 %.4.5, 1
  br label %.preheader.7

.preheader.7:                                     ; preds = %.preheader.4, %.preheader.4.thread, %bb.ab, %bb.aa, %.preheader.6
  %i.kc = phi i64 [ %i.jk, %bb.ab ], [ %i.jk, %bb.aa ], [ %i.jk, %.preheader.6 ], [ %.ph, %.preheader.4.thread ], [ %i.iy, %.preheader.4 ] ; 2 uses
  %.4184.6 = phi nsz float [ %i.ka, %bb.ab ], [ %.4184.5, %bb.aa ], [ %.4184.5, %.preheader.6 ], [ %.4184.3.ph, %.preheader.4.thread ], [ %.4184.3, %.preheader.4 ] ; 3 uses
  %.4.6 = phi i32 [ %i.kb, %bb.ab ], [ %.4.5, %bb.aa ], [ %.4.5, %.preheader.6 ], [ %.4.3.ph, %.preheader.4.thread ], [ %.4.3, %.preheader.4 ] ; 3 uses
  br i1 %i.if, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %.preheader.7
  %i.kd = zext nneg i32 %i.ie to i64
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %i.kd
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !11 ; 2 uses
  %i.kg = fcmp reassoc nsz arcp contract afn ogt float %i.kf, 0.000000e+00
  br i1 %i.kg, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.kh = fmul reassoc nnan nsz arcp contract afn float %i.kf, 2.000000e+00
  %i.ki = fadd reassoc nsz arcp contract afn float %i.kh, %.4184.6
  %i.kj = add nuw nsw i32 %.4.6, 2
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %.preheader.7
  %.4184.7 = phi nsz float [ %i.ki, %bb.ad ], [ %.4184.6, %bb.ac ], [ %.4184.6, %.preheader.7 ]
  %.4.7 = phi i32 [ %i.kj, %bb.ad ], [ %.4.6, %bb.ac ], [ %.4.6, %.preheader.7 ] ; 2 uses
  %i.kk = icmp samesign ugt i32 %.4.7, 3
  br i1 %i.kk, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.kl = fadd reassoc nsz arcp contract afn float %.4184.7, %exp2
  %i.km = fneg reassoc nsz arcp contract afn float %i.kl
  %i.kn = uitofp nneg i32 %.4.7 to float
  %i.ko = fadd reassoc nsz arcp contract afn float %exp2, %i.kn
  %i.kp = fdiv reassoc nsz arcp contract afn float %i.km, %i.ko
  store float %i.kp, ptr %gep449, align 4, !tbaa !11
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge381, %bb.ae, %bb.af
  %indvars.iv.next340.pre-phi = phi i64 [ %.pre382, %._crit_edge381 ], [ %i.kc, %bb.ae ], [ %i.kc, %bb.af ] ; 2 uses
  %exitcond343.not = icmp eq i64 %indvars.iv.next340.pre-phi, %i.dm
  br i1 %exitcond343.not, label %._crit_edge253, label %bb.v, !llvm.loop !268

._crit_edge253:                                   ; preds = %bb.ag
  %indvars.iv.next345 = add nuw nsw i64 %indvars.iv344, 1 ; 2 uses
  %exitcond348.not = icmp eq i64 %indvars.iv.next345, %i.cz
  br i1 %exitcond348.not, label %.preheader203, label %.preheader201, !llvm.loop !269

.lr.ph257:                                        ; preds = %.lr.ph257.preheader534, %bb.ai
  %indvars.iv349 = phi i64 [ %indvars.iv.next350, %bb.ai ], [ %indvars.iv349.ph, %.lr.ph257.preheader534 ] ; 2 uses
  %.0170255 = phi i32 [ %.1171, %bb.ai ], [ %.0170255.ph, %.lr.ph257.preheader534 ]
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv349 ; 2 uses
  %i.kr = load float, ptr %i.kq, align 4, !tbaa !11 ; 2 uses
  %i.ks = fcmp reassoc nsz arcp contract afn olt float %i.kr, 0.000000e+00
  br i1 %i.ks, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.lr.ph257
  %i.kt = fneg reassoc nsz arcp contract afn float %i.kr
  store float %i.kt, ptr %i.kq, align 4, !tbaa !11
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph257, %bb.ah
  %.1171 = phi i32 [ 1, %bb.ah ], [ %.0170255, %.lr.ph257 ] ; 2 uses
  %indvars.iv.next350 = add nuw nsw i64 %indvars.iv349, 1 ; 2 uses
  %exitcond353.not = icmp eq i64 %indvars.iv.next350, %i.dh
  br i1 %exitcond353.not, label %._crit_edge258, label %.lr.ph257, !llvm.loop !270

._crit_edge258:                                   ; preds = %bb.ai, %middle.block506
  %.1171.lcssa = phi i32 [ %i.hj, %middle.block506 ], [ %.1171, %bb.ai ]
  %i.ku = icmp eq i32 %.1171.lcssa, 0
  br i1 %i.ku, label %._crit_edge258._crit_edge, label %bb.u, !llvm.loop !266

._crit_edge258._crit_edge:                        ; preds = %._crit_edge258
  br label %._crit_edge461, !llvm.loop !266

._crit_edge461:                                   ; preds = %bb.u, %._crit_edge258._crit_edge, %._crit_edge247.split
  br i1 %i.dl, label %iter.check486, label %.preheader206

iter.check486:                                    ; preds = %._crit_edge461
  br i1 %min.iters.check471, label %.lr.ph262.preheader, label %vector.main.loop.iter.check472

vector.main.loop.iter.check472:                   ; preds = %iter.check486
  br i1 %min.iters.check473, label %vec.epilog.ph490, label %vector.body476

vector.body476:                                   ; preds = %vector.main.loop.iter.check472, %vector.body476
  %index477 = phi i64 [ %index.next482, %vector.body476 ], [ 0, %vector.main.loop.iter.check472 ] ; 2 uses
  %i.kv = getelementptr [4 x i8], ptr %i.dc, i64 %index477 ; 5 uses
  %i.kw = getelementptr i8, ptr %i.kv, i64 32     ; 2 uses
  %i.kx = getelementptr i8, ptr %i.kv, i64 64     ; 2 uses
  %i.ky = getelementptr i8, ptr %i.kv, i64 96     ; 2 uses
  %wide.load478 = load <8 x float>, ptr %i.kv, align 4, !tbaa !11
  %wide.load479 = load <8 x float>, ptr %i.kw, align 4, !tbaa !11
  %wide.load480 = load <8 x float>, ptr %i.kx, align 4, !tbaa !11
  %wide.load481 = load <8 x float>, ptr %i.ky, align 4, !tbaa !11
  %i.kz = fcmp reassoc nsz arcp contract afn oeq <8 x float> %wide.load478, zeroinitializer
  %i.la = fcmp reassoc nsz arcp contract afn oeq <8 x float> %wide.load479, zeroinitializer
  %i.lb = fcmp reassoc nsz arcp contract afn oeq <8 x float> %wide.load480, zeroinitializer
  %i.lc = fcmp reassoc nsz arcp contract afn oeq <8 x float> %wide.load481, zeroinitializer
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> splat (float 1.000000e+00), ptr align 4 %i.kv, <8 x i1> %i.kz), !tbaa !11
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> splat (float 1.000000e+00), ptr align 4 %i.kw, <8 x i1> %i.la), !tbaa !11
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> splat (float 1.000000e+00), ptr align 4 %i.kx, <8 x i1> %i.lb), !tbaa !11
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> splat (float 1.000000e+00), ptr align 4 %i.ky, <8 x i1> %i.lc), !tbaa !11
  %index.next482 = add nuw i64 %index477, 32      ; 2 uses
  %i.ld = icmp eq i64 %index.next482, %n.vec475
  br i1 %i.ld, label %middle.block483, label %vector.body476, !llvm.loop !271

middle.block483:                                  ; preds = %vector.body476
  br i1 %cmp.n484, label %.preheader206, label %vec.epilog.iter.check488

vec.epilog.iter.check488:                         ; preds = %middle.block483
  br i1 %min.epilog.iters.check489, label %.lr.ph262.preheader, label %vec.epilog.ph490, !prof !117

vec.epilog.ph490:                                 ; preds = %vector.main.loop.iter.check472, %vec.epilog.iter.check488
  %vec.epilog.resume.val485 = phi i64 [ %n.vec475, %vec.epilog.iter.check488 ], [ 0, %vector.main.loop.iter.check472 ]
  br label %vec.epilog.vector.body492

vec.epilog.vector.body492:                        ; preds = %vec.epilog.vector.body492, %vec.epilog.ph490
  %index493 = phi i64 [ %vec.epilog.resume.val485, %vec.epilog.ph490 ], [ %index.next495, %vec.epilog.vector.body492 ] ; 2 uses
  %i.le = getelementptr [4 x i8], ptr %i.dc, i64 %index493 ; 2 uses
  %wide.load494 = load <4 x float>, ptr %i.le, align 4, !tbaa !11
  %i.lf = fcmp reassoc nsz arcp contract afn oeq <4 x float> %wide.load494, zeroinitializer
  tail call void @llvm.masked.store.v4f32.p0(<4 x float> splat (float 1.000000e+00), ptr align 4 %i.le, <4 x i1> %i.lf), !tbaa !11
  %index.next495 = add nuw i64 %index493, 4       ; 2 uses
  %i.lg = icmp eq i64 %index.next495, %n.vec491
  br i1 %i.lg, label %vec.epilog.middle.block496, label %vec.epilog.vector.body492, !llvm.loop !272

vec.epilog.middle.block496:                       ; preds = %vec.epilog.vector.body492
  br i1 %cmp.n497, label %.preheader206, label %.lr.ph262.preheader

.lr.ph262.preheader:                              ; preds = %iter.check486, %vec.epilog.iter.check488, %vec.epilog.middle.block496
  %indvars.iv354.ph = phi i64 [ 0, %iter.check486 ], [ %n.vec475, %vec.epilog.iter.check488 ], [ %n.vec491, %vec.epilog.middle.block496 ]
  br label %.lr.ph262

.preheader206:                                    ; preds = %.preheader203, %bb.ak, %middle.block483, %vec.epilog.middle.block496, %._crit_edge461
  br i1 %.not285, label %.loopexit, label %.preheader202.lr.ph

.preheader202.lr.ph:                              ; preds = %.preheader206
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv369
  br i1 %.not286, label %.loopexit, label %.preheader202.preheader

.preheader202.preheader:                          ; preds = %.preheader202.lr.ph
  %.pre372.pre = load i16, ptr %i.cq, align 4, !tbaa !210
  br label %.preheader202

.lr.ph262:                                        ; preds = %.lr.ph262.preheader, %bb.ak
  %indvars.iv354 = phi i64 [ %indvars.iv.next355, %bb.ak ], [ %indvars.iv354.ph, %.lr.ph262.preheader ] ; 2 uses
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv354 ; 2 uses
  %i.lj = load float, ptr %i.li, align 4, !tbaa !11
  %i.lk = fcmp reassoc nsz arcp contract afn oeq float %i.lj, 0.000000e+00
  br i1 %i.lk, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.lr.ph262
  store float 1.000000e+00, ptr %i.li, align 4, !tbaa !11
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph262, %bb.aj
  %indvars.iv.next355 = add nuw nsw i64 %indvars.iv354, 1 ; 2 uses
  %exitcond358.not = icmp eq i64 %indvars.iv.next355, %i.dh
  br i1 %exitcond358.not, label %.preheader206, label %.lr.ph262, !llvm.loop !273

.preheader202:                                    ; preds = %.preheader202.preheader, %._crit_edge273
  %.pre372 = phi i16 [ %.pre372.pre, %.preheader202.preheader ], [ %.pre372374, %._crit_edge273 ] ; 3 uses
  %indvars.iv364 = phi i64 [ 0, %.preheader202.preheader ], [ %indvars.iv.next365, %._crit_edge273 ] ; 3 uses
  %indvars366 = trunc i64 %indvars.iv364 to i32   ; 2 uses
  %indvars.iv.next365 = add nuw nsw i64 %indvars.iv364, 1 ; 2 uses
  %i.ll = add nuw nsw i32 %indvars366, 1          ; 2 uses
  %i.lm = mul nuw nsw i64 %indvars.iv364, %i.dm
  %invariant.gep454 = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.lm
  br label %bb.al

bb.al:                                            ; preds = %.preheader202, %._crit_edge270
  %.pre372379 = phi i16 [ %.pre372, %.preheader202 ], [ %.pre372374, %._crit_edge270 ] ; 2 uses
  %i.ln = phi i16 [ %.pre372, %.preheader202 ], [ %i.no, %._crit_edge270 ] ; 2 uses
  %i.lo = phi i16 [ %.pre372, %.preheader202 ], [ %i.np, %._crit_edge270 ] ; 3 uses
  %indvars.iv359 = phi i64 [ 0, %.preheader202 ], [ %indvars.iv.next360, %._crit_edge270 ] ; 3 uses
  %indvars361 = trunc i64 %indvars.iv359 to i32   ; 2 uses
  %i.lp = zext nneg i16 %i.lo to i32
  %i.lq = lshr i32 4, %i.lp                       ; 3 uses
  %i.lr = mul nuw nsw i32 %i.lq, %indvars366      ; 2 uses
  %i.ls = mul nuw nsw i32 %i.lq, %i.ll
  %i.lt = icmp ult i32 %i.lr, %i.ls
  br i1 %i.lt, label %.lr.ph269, label %._crit_edge270

.lr.ph269:                                        ; preds = %bb.al
  %i.lu = add nuw nsw i32 %indvars361, 1          ; 2 uses
  %gep455 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep454, i64 %indvars.iv359
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph269, %._crit_edge266
  %.pre372378 = phi i16 [ %.pre372379, %.lr.ph269 ], [ %.pre372375, %._crit_edge266 ] ; 2 uses
  %i.lv = phi i16 [ %i.ln, %.lr.ph269 ], [ %i.ni, %._crit_edge266 ] ; 2 uses
  %i.lw = phi i16 [ %i.lo, %.lr.ph269 ], [ %i.ni, %._crit_edge266 ] ; 2 uses
  %i.lx = phi i32 [ %i.lq, %.lr.ph269 ], [ %i.nl, %._crit_edge266 ]
  %.1161267 = phi i32 [ %i.lr, %.lr.ph269 ], [ %i.nj, %._crit_edge266 ] ; 2 uses
  %i.ly = mul nuw nsw i32 %i.lx, %indvars361      ; 2 uses
  %i.lz = zext nneg i16 %i.lw to i32
  %i.ma = lshr i32 4, %i.lz
  %i.mb = mul nuw nsw i32 %i.ma, %i.lu
  %i.mc = icmp ult i32 %i.ly, %i.mb
  br i1 %i.mc, label %.lr.ph265, label %._crit_edge266

.lr.ph265:                                        ; preds = %bb.am
  %i.md = load ptr, ptr %i.b, align 8, !tbaa !114
  %i.me = load i32, ptr %i.lh, align 4, !tbaa !111
  br label %bb.an

bb.an:                                            ; preds = %.lr.ph265, %bb.aq
  %.pre372377 = phi i16 [ %.pre372378, %.lr.ph265 ], [ %.pre372376, %bb.aq ] ; 2 uses
  %i.mf = phi i16 [ %i.lv, %.lr.ph265 ], [ %i.nb, %bb.aq ] ; 2 uses
  %i.mg = phi i16 [ %i.lw, %.lr.ph265 ], [ %i.nc, %bb.aq ] ; 2 uses
  %.1159263 = phi i32 [ %i.ly, %.lr.ph265 ], [ %i.nd, %bb.aq ] ; 2 uses
  %i.mh = load i16, ptr %i.cv, align 2, !tbaa !207
  %i.mi = zext i16 %i.mh to i32
  %i.mj = mul i32 %.1161267, %i.mi
  %i.mk = add i32 %i.mj, %.1159263
  %i.ml = zext i32 %i.mk to i64
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.md, i64 %i.ml ; 2 uses
  %i.mn = getelementptr inbounds nuw [2 x i8], ptr %i.mm, i64 %indvars.iv369 ; 2 uses
  %i.mo = load i16, ptr %i.mn, align 2, !tbaa !115
  %i.mp = zext i16 %i.mo to i32                   ; 2 uses
  %i.mq = sdiv i32 %i.mp, %i.me
  %i.mr = icmp sgt i32 %i.mq, 1
  br i1 %i.mr, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.ms = getelementptr inbounds nuw [2 x i8], ptr %i.mm, i64 %.0156.lcssa
  %i.mt = load i16, ptr %i.ms, align 2, !tbaa !115
  %i.mu = uitofp i16 %i.mt to float
  %i.mv = load float, ptr %gep455, align 4, !tbaa !11
  %i.mw = fmul reassoc nsz arcp contract afn float %i.mv, %i.mu
  %i.mx = fptosi float %i.mw to i32               ; 2 uses
  %i.my = icmp slt i32 %i.mp, %i.mx
  br i1 %i.my, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.mz = tail call i32 @llvm.umin.i32(i32 %i.mx, i32 65535)
  %i.na = trunc nuw i32 %i.mz to i16
  store i16 %i.na, ptr %i.mn, align 2, !tbaa !115
  %.pre373 = load i16, ptr %i.cq, align 4, !tbaa !210 ; 3 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.an, %bb.ap, %bb.ao
  %.pre372376 = phi i16 [ %.pre372377, %bb.an ], [ %.pre373, %bb.ap ], [ %.pre372377, %bb.ao ] ; 2 uses
  %i.nb = phi i16 [ %i.mf, %bb.an ], [ %.pre373, %bb.ap ], [ %i.mf, %bb.ao ] ; 2 uses
  %i.nc = phi i16 [ %i.mg, %bb.an ], [ %.pre373, %bb.ap ], [ %i.mg, %bb.ao ] ; 2 uses
  %i.nd = add nuw nsw i32 %.1159263, 1            ; 2 uses
  %i.ne = zext nneg i16 %i.nc to i32
  %i.nf = lshr i32 4, %i.ne
  %i.ng = mul nuw nsw i32 %i.nf, %i.lu
  %i.nh = icmp samesign ult i32 %i.nd, %i.ng
  br i1 %i.nh, label %bb.an, label %._crit_edge266, !llvm.loop !274

._crit_edge266:                                   ; preds = %bb.aq, %bb.am
  %.pre372375 = phi i16 [ %.pre372378, %bb.am ], [ %.pre372376, %bb.aq ] ; 2 uses
  %i.ni = phi i16 [ %i.lv, %bb.am ], [ %i.nb, %bb.aq ] ; 5 uses
  %i.nj = add nuw nsw i32 %.1161267, 1            ; 2 uses
  %i.nk = zext nneg i16 %i.ni to i32
  %i.nl = lshr i32 4, %i.nk                       ; 2 uses
  %i.nm = mul nuw nsw i32 %i.nl, %i.ll
  %i.nn = icmp samesign ult i32 %i.nj, %i.nm
  br i1 %i.nn, label %bb.am, label %._crit_edge270, !llvm.loop !275

._crit_edge270:                                   ; preds = %._crit_edge266, %bb.al
  %.pre372374 = phi i16 [ %.pre372379, %bb.al ], [ %.pre372375, %._crit_edge266 ] ; 2 uses
  %i.no = phi i16 [ %i.ln, %bb.al ], [ %i.ni, %._crit_edge266 ]
  %i.np = phi i16 [ %i.lo, %bb.al ], [ %i.ni, %._crit_edge266 ]
  %indvars.iv.next360 = add nuw nsw i64 %indvars.iv359, 1 ; 2 uses
  %exitcond363.not = icmp eq i64 %indvars.iv.next360, %i.dm
  br i1 %exitcond363.not, label %._crit_edge273, label %bb.al, !llvm.loop !276

._crit_edge273:                                   ; preds = %._crit_edge270
  %exitcond368.not = icmp eq i64 %indvars.iv.next365, %i.cz
  br i1 %exitcond368.not, label %.loopexit, label %.preheader202, !llvm.loop !277

.loopexit:                                        ; preds = %._crit_edge273, %.preheader206, %.preheader202.lr.ph, %bb.e
  %indvars.iv.next370 = add nuw nsw i64 %indvars.iv369, 1 ; 2 uses
  %i.nq = load i32, ptr %i.f, align 4, !tbaa !112 ; 2 uses
  %i.nr = zext i32 %i.nq to i64
  %i.ns = icmp samesign ult i64 %indvars.iv.next370, %i.nr
  br i1 %i.ns, label %bb.e, label %._crit_edge279, !llvm.loop !278

._crit_edge279:                                   ; preds = %.loopexit, %._crit_edge
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.dc)
  br label %.loopexit209

.loopexit209:                                     ; preds = %.lr.ph213, %._crit_edge279
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

declare noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ldexp.f32.i32(float, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.umin.v8i32(<8 x i32>, <8 x i32>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <8 x float> @llvm.masked.load.v8f32.p0(ptr captures(none), <8 x i1>, <8 x float>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v8f32.p0(<8 x float>, ptr captures(none), <8 x i1>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x float> @llvm.masked.load.v4f32.p0(ptr captures(none), <4 x i1>, <4 x float>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v4f32.p0(<4 x float>, ptr captures(none), <4 x i1>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.sqrt.v8f32(<8 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v29i16.p0(<29 x i16>, ptr captures(none), <29 x i1>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v8i32(<8 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.experimental.vector.extract.last.active.v8i32(<8 x i32>, <8 x i1>, i32) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { cold noreturn }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"float", !9, i64 0}
!13 = !{!14}
!14 = distinct !{!14, !15}
!15 = distinct !{!15, !"LVerDomain"}
!16 = !{!17}
!17 = distinct !{!17, !15}
!18 = !{!19}
!19 = distinct !{!19, !15}
!20 = !{!17, !14}
!21 = distinct !{!21, !22, !23, !24}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"llvm.loop.isvectorized", i32 1}
!24 = !{!"llvm.loop.unroll.runtime.disable"}
!25 = !{!"branch_weights", i32 8, i32 24}
!26 = distinct !{!26, !22, !23, !24}
!27 = distinct !{!27, !22, !23, !24}
!28 = !{!"branch_weights", i32 4, i32 12}
!29 = distinct !{!29, !22, !23, !24}
!30 = distinct !{!30, !22, !23}
!31 = !{!32}
!32 = distinct !{!32, !33}
!33 = distinct !{!33, !"LVerDomain"}
!34 = !{!35}
!35 = distinct !{!35, !33}
!36 = !{!37}
!37 = distinct !{!37, !33}
!38 = !{!39}
!39 = distinct !{!39, !33}
!40 = !{!37, !35, !32}
!41 = distinct !{!41, !22, !23, !24}
!42 = distinct !{!42, !22, !23, !24}
!43 = distinct !{!43, !22, !23}
!44 = distinct !{!44, !22, !23}
!45 = !{!46, !51, i64 30}
!46 = !{!"_ZTS6LibRaw", !47, i64 8, !93, i64 381584, !94, i64 381592, !9, i64 384344, !104, i64 433496, !104, i64 433504, !9, i64 433512, !105, i64 768232, !106, i64 768248, !9, i64 768400, !9, i64 768416, !9, i64 768432, !49, i64 768448, !49, i64 768456, !49, i64 768464, !85, i64 768472, !49, i64 768480, !49, i64 768488, !49, i64 768496, !49, i64 768504}
!47 = !{!"_ZTS13libraw_data_t", !48, i64 0, !50, i64 8, !53, i64 192, !55, i64 632, !60, i64 1928, !76, i64 5088, !77, i64 5232, !78, i64 5536, !8, i64 5584, !8, i64 5588, !81, i64 5592, !84, i64 192680, !87, i64 193480, !89, i64 193504, !90, i64 193768, !49, i64 381568}
!48 = !{!"p1 short", !49, i64 0}
!49 = !{!"any pointer", !9, i64 0}
!50 = !{!"_ZTS20libraw_image_sizes_t", !51, i64 0, !51, i64 2, !51, i64 4, !51, i64 6, !51, i64 8, !51, i64 10, !51, i64 12, !51, i64 14, !8, i64 16, !52, i64 24, !8, i64 32, !9, i64 36, !51, i64 164, !9, i64 166}
!51 = !{!"short", !9, i64 0}
!52 = !{!"double", !9, i64 0}
!53 = !{!"_ZTS16libraw_iparams_t", !9, i64 0, !9, i64 4, !9, i64 68, !9, i64 132, !9, i64 196, !9, i64 260, !8, i64 324, !8, i64 328, !8, i64 332, !8, i64 336, !8, i64 340, !8, i64 344, !9, i64 348, !9, i64 384, !9, i64 420, !8, i64 428, !54, i64 432}
!54 = !{!"p1 omnipotent char", !49, i64 0}
!55 = !{!"_ZTS17libraw_lensinfo_t", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !9, i64 20, !9, i64 148, !9, i64 276, !9, i64 404, !51, i64 532, !56, i64 536, !57, i64 544, !58, i64 560}
!56 = !{!"_ZTS18libraw_nikonlens_t", !12, i64 0, !9, i64 4, !9, i64 5, !9, i64 6, !9, i64 7}
!57 = !{!"_ZTS16libraw_dnglens_t", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12}
!58 = !{!"_ZTS24libraw_makernotes_lens_t", !59, i64 0, !9, i64 8, !51, i64 136, !51, i64 138, !59, i64 144, !51, i64 152, !51, i64 154, !9, i64 156, !51, i64 220, !9, i64 222, !9, i64 238, !12, i64 256, !12, i64 260, !12, i64 264, !12, i64 268, !12, i64 272, !12, i64 276, !12, i64 280, !12, i64 284, !12, i64 288, !12, i64 292, !12, i64 296, !12, i64 300, !12, i64 304, !12, i64 308, !12, i64 312, !59, i64 320, !9, i64 328, !59, i64 456, !9, i64 464, !59, i64 592, !9, i64 600, !51, i64 728, !12, i64 732}
!59 = !{!"long long", !9, i64 0}
!60 = !{!"_ZTS19libraw_makernotes_t", !61, i64 0, !63, i64 168, !65, i64 464, !66, i64 848, !67, i64 1200, !68, i64 1664, !69, i64 1848, !70, i64 2092, !71, i64 2160, !72, i64 2196, !73, i64 2648, !74, i64 2720, !75, i64 2856}
!61 = !{!"_ZTS25libraw_canon_makernotes_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !9, i64 16, !8, i64 32, !9, i64 36, !51, i64 52, !51, i64 54, !9, i64 56, !51, i64 58, !51, i64 60, !51, i64 62, !51, i64 64, !51, i64 66, !51, i64 68, !51, i64 70, !51, i64 72, !51, i64 74, !51, i64 76, !51, i64 78, !51, i64 80, !51, i64 82, !8, i64 84, !12, i64 88, !51, i64 92, !51, i64 94, !51, i64 96, !51, i64 98, !8, i64 100, !51, i64 104, !8, i64 108, !8, i64 112, !51, i64 116, !8, i64 120, !62, i64 124, !62, i64 132, !62, i64 140, !62, i64 148, !62, i64 156, !9, i64 164}
!62 = !{!"_ZTS13libraw_area_t", !51, i64 0, !51, i64 2, !51, i64 4, !51, i64 6}
!63 = !{!"_ZTS25libraw_nikon_makernotes_t", !52, i64 0, !51, i64 8, !51, i64 10, !9, i64 12, !9, i64 19, !9, i64 20, !9, i64 21, !9, i64 34, !9, i64 54, !9, i64 58, !9, i64 62, !9, i64 66, !9, i64 67, !9, i64 68, !9, i64 69, !9, i64 70, !9, i64 71, !9, i64 73, !9, i64 74, !9, i64 75, !9, i64 76, !9, i64 77, !9, i64 78, !9, i64 82, !9, i64 86, !51, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !9, i64 112, !9, i64 144, !9, i64 145, !9, i64 146, !8, i64 148, !8, i64 152, !8, i64 156, !9, i64 160, !9, i64 162, !51, i64 170, !64, i64 172, !51, i64 180, !51, i64 182, !51, i64 184, !8, i64 188, !9, i64 192, !9, i64 212, !8, i64 232, !9, i64 236, !8, i64 248, !54, i64 256, !51, i64 264, !51, i64 266, !9, i64 268, !51, i64 270, !52, i64 272, !52, i64 280, !52, i64 288}
!64 = !{!"_ZTS30libraw_sensor_highspeed_crop_t", !51, i64 0, !51, i64 2, !51, i64 4, !51, i64 6}
!65 = !{!"_ZTS30libraw_hasselblad_makernotes_t", !8, i64 0, !52, i64 8, !9, i64 16, !9, i64 24, !9, i64 88, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !9, i64 168, !9, i64 200, !8, i64 264, !9, i64 268, !9, i64 276, !9, i64 288}
!66 = !{!"_ZTS18libraw_fuji_info_t", !12, i64 0, !51, i64 4, !51, i64 6, !51, i64 8, !51, i64 10, !51, i64 12, !51, i64 14, !51, i64 16, !51, i64 18, !9, i64 20, !9, i64 53, !12, i64 88, !51, i64 92, !51, i64 94, !9, i64 96, !51, i64 100, !8, i64 104, !8, i64 108, !51, i64 112, !9, i64 114, !51, i64 120, !51, i64 122, !51, i64 124, !51, i64 126, !51, i64 128, !8, i64 132, !51, i64 136, !9, i64 138, !9, i64 151, !9, i64 156, !8, i64 164, !51, i64 168, !8, i64 172, !51, i64 176, !9, i64 178, !9, i64 196, !8, i64 324, !8, i64 328, !8, i64 332, !9, i64 336, !8, i64 344}
!67 = !{!"_ZTS27libraw_olympus_makernotes_t", !9, i64 0, !51, i64 6, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !9, i64 64, !9, i64 72, !51, i64 82, !9, i64 84, !51, i64 88, !51, i64 90, !9, i64 92, !9, i64 352, !51, i64 392, !9, i64 394, !9, i64 396, !9, i64 404, !51, i64 416, !51, i64 418, !51, i64 420, !51, i64 422, !52, i64 424, !9, i64 432, !9, i64 440, !9, i64 448, !8, i64 452, !51, i64 456, !51, i64 458}
!68 = !{!"_ZTS18libraw_sony_info_t", !51, i64 0, !9, i64 2, !9, i64 3, !8, i64 4, !9, i64 8, !8, i64 12, !9, i64 16, !9, i64 17, !51, i64 18, !9, i64 20, !9, i64 24, !9, i64 25, !51, i64 26, !9, i64 28, !9, i64 38, !9, i64 39, !9, i64 40, !51, i64 48, !9, i64 50, !9, i64 51, !9, i64 52, !51, i64 54, !8, i64 56, !51, i64 60, !9, i64 62, !51, i64 66, !51, i64 68, !51, i64 70, !51, i64 72, !51, i64 74, !51, i64 76, !51, i64 78, !8, i64 80, !12, i64 84, !51, i64 88, !8, i64 92, !8, i64 96, !51, i64 100, !9, i64 102, !8, i64 124, !51, i64 128, !8, i64 132, !9, i64 136, !9, i64 137, !51, i64 138, !51, i64 140, !51, i64 142, !51, i64 144, !51, i64 146, !51, i64 148, !51, i64 150, !51, i64 152, !51, i64 154, !8, i64 156, !51, i64 160, !9, i64 162, !12, i64 180}
!69 = !{!"_ZTS25libraw_kodak_makernotes_t", !51, i64 0, !51, i64 2, !51, i64 4, !51, i64 6, !51, i64 8, !51, i64 10, !9, i64 12, !9, i64 48, !9, i64 84, !9, i64 120, !9, i64 156, !9, i64 192, !51, i64 228, !51, i64 230, !51, i64 232, !51, i64 234, !12, i64 236, !12, i64 240}
!70 = !{!"_ZTS29libraw_panasonic_makernotes_t", !51, i64 0, !51, i64 2, !9, i64 4, !8, i64 36, !12, i64 40, !9, i64 44, !51, i64 56, !51, i64 58, !8, i64 60, !8, i64 64}
!71 = !{!"_ZTS26libraw_pentax_makernotes_t", !9, i64 0, !9, i64 4, !9, i64 8, !51, i64 12, !8, i64 16, !8, i64 20, !51, i64 24, !9, i64 26, !51, i64 30, !9, i64 32, !9, i64 33, !51, i64 34}
!72 = !{!"_ZTS22libraw_p1_makernotes_t", !9, i64 0, !9, i64 64, !9, i64 128, !9, i64 384}
!73 = !{!"_ZTS25libraw_ricoh_makernotes_t", !51, i64 0, !9, i64 4, !9, i64 12, !51, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !51, i64 40, !51, i64 42, !51, i64 44, !51, i64 46, !51, i64 48, !51, i64 50, !52, i64 56, !52, i64 64}
!74 = !{!"_ZTS27libraw_samsung_makernotes_t", !9, i64 0, !9, i64 16, !9, i64 32, !9, i64 40, !52, i64 88, !8, i64 96, !9, i64 100}
!75 = !{!"_ZTS24libraw_metadata_common_t", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !51, i64 64, !9, i64 66, !12, i64 196, !9, i64 200, !8, i64 296}
!76 = !{!"_ZTS21libraw_shootinginfo_t", !51, i64 0, !51, i64 2, !51, i64 4, !51, i64 6, !51, i64 8, !51, i64 10, !51, i64 12, !9, i64 14, !9, i64 78}
!77 = !{!"_ZTS22libraw_output_params_t", !9, i64 0, !9, i64 16, !9, i64 32, !9, i64 64, !9, i64 112, !12, i64 128, !12, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !8, i64 160, !54, i64 168, !54, i64 176, !54, i64 184, !54, i64 192, !8, i64 200, !8, i64 204, !8, i64 208, !8, i64 212, !8, i64 216, !8, i64 220, !9, i64 224, !8, i64 240, !8, i64 244, !12, i64 248, !12, i64 252, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !12, i64 288, !12, i64 292, !8, i64 296, !8, i64 300}
!78 = !{!"_ZTS26libraw_raw_unpack_params_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !12, i64 28, !9, i64 32, !79, i64 40}
!79 = !{!"p2 omnipotent char", !80, i64 0}
!80 = !{!"any p2 pointer", !49, i64 0}
end_hunk_1

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/postprocessing_aux?download=true
inline.NumInlined: 12
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN6LibRaw13hat_transformEPfS0_iii:bb.a
vec.epilog.iter.check198:                         ; preds = %middle.block192
  %min.epilog.iters.check199 = icmp eq i64 %i.fv, 0
  br i1 %min.epilog.iters.check199, label %vec.epilog.scalar.ph197.preheader, label %vec.epilog.ph200, !prof !16

vec.epilog.ph200:                                 ; preds = %vector.main.loop.iter.check169, %vec.epilog.iter.check198
  %vec.epilog.resume.val194 = phi i64 [ %n.vec172, %vec.epilog.iter.check198 ], [ 0, %vector.main.loop.iter.check169 ]
  %n.vec201 = and i64 %i.eu, -8                   ; 3 uses
  %i.hh = add nsw i64 %n.vec201, %i.er
  br label %vec.epilog.vector.body202

vec.epilog.vector.body202:                        ; preds = %vec.epilog.vector.body202, %vec.epilog.ph200
  %index203 = phi i64 [ %vec.epilog.resume.val194, %vec.epilog.ph200 ], [ %index.next208, %vec.epilog.vector.body202 ] ; 2 uses
  %i.hi = add nuw i64 %index203, %i.er            ; 4 uses
  %i.hj = getelementptr inbounds [4 x i8], ptr %2, i64 %i.hi
  %wide.load204 = load <8 x float>, ptr %i.hj, align 4, !tbaa !12, !alias.scope !114
  %i.hk = fmul reassoc nsz arcp contract afn <8 x float> %wide.load204, splat (float 2.000000e+00)
  %i.hl = sub nsw i64 %i.hi, %i.et
  %i.hm = getelementptr inbounds [4 x i8], ptr %2, i64 %i.hl
  %wide.load205 = load <8 x float>, ptr %i.hm, align 4, !tbaa !12, !alias.scope !115
  %i.hn = fadd reassoc nsz arcp contract afn <8 x float> %i.hk, %wide.load205
  %i.ho = trunc nsw i64 %i.hi to i32
  %i.hp = add i32 %5, %i.ho
  %i.hq = sub i32 %.neg52, %i.hp
  %i.hr = sext i32 %i.hq to i64
  %i.hs = getelementptr inbounds [4 x i8], ptr %2, i64 %i.hr
  %i.ht = getelementptr inbounds i8, ptr %i.hs, i64 -28
  %wide.load206 = load <8 x float>, ptr %i.ht, align 4, !tbaa !12, !alias.scope !116
  %reverse207 = shufflevector <8 x float> %wide.load206, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.hu = fadd reassoc nsz arcp contract afn <8 x float> %i.hn, %reverse207
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.hi
  store <8 x float> %i.hu, ptr %i.hv, align 4, !tbaa !12, !alias.scope !117, !noalias !118
  %index.next208 = add nuw i64 %index203, 8       ; 2 uses
  %i.hw = icmp eq i64 %index.next208, %n.vec201
  br i1 %i.hw, label %vec.epilog.middle.block209, label %vec.epilog.vector.body202, !llvm.loop !107

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
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !12
  %i.ib = fmul reassoc nsz arcp contract afn float %i.ia, 2.000000e+00
  %i.ic = sub nsw i64 %indvars.iv69.ph, %i.et
  %i.id = mul nsw i64 %i.ic, %i.es
  %i.ie = getelementptr inbounds [4 x i8], ptr %2, i64 %i.id
  %i.if = load float, ptr %i.ie, align 4, !tbaa !12
  %i.ig = fadd reassoc nsz arcp contract afn float %i.ib, %i.if
  %i.ih = trunc nsw i64 %indvars.iv69.ph to i32
  %i.ii = add i32 %5, %i.ih
  %i.ij = sub i32 %.neg52, %i.ii
  %i.ik = mul nsw i32 %i.ij, %3
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr inbounds [4 x i8], ptr %2, i64 %i.il
  %i.in = load float, ptr %i.im, align 4, !tbaa !12
  %i.io = fadd reassoc nsz arcp contract afn float %i.ig, %i.in
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv69.ph
  store float %i.io, ptr %i.ip, align 4, !tbaa !12
  %indvars.iv.next70.prol = add nuw nsw i64 %indvars.iv69.ph, 1
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
  %i.iu = load float, ptr %i.it, align 4, !tbaa !12
  %i.iv = fmul reassoc nsz arcp contract afn float %i.iu, 2.000000e+00
  %i.iw = sub nsw i64 %indvars.iv64, %i.bp
  %i.ix = mul nsw i64 %i.iw, %i.bs
  %i.iy = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ix
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !12
  %i.ja = fadd reassoc nsz arcp contract afn float %i.iv, %i.iz
  %i.jb = mul nsw i64 %indvars.iv62, %i.bs
  %i.jc = getelementptr inbounds [4 x i8], ptr %2, i64 %i.jb
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !12
  %i.je = fadd reassoc nsz arcp contract afn float %i.ja, %i.jd
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv64
  store float %i.je, ptr %i.jf, align 4, !tbaa !12
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 3 uses
  %i.jg = icmp slt i64 %indvars.iv.next65, %invariant.op
  %indvars.iv.next63 = add nsw i64 %indvars.iv62, 1
  br i1 %i.jg, label %.lr.ph56, label %.preheader.loopexit, !llvm.loop !108

vec.epilog.scalar.ph197:                          ; preds = %vec.epilog.scalar.ph197.prol.loopexit, %vec.epilog.scalar.ph197
  %indvars.iv69 = phi i64 [ %indvars.iv.next70.1, %vec.epilog.scalar.ph197 ], [ %indvars.iv69.unr, %vec.epilog.scalar.ph197.prol.loopexit ] ; 6 uses
  %i.jh = mul nsw i64 %indvars.iv69, %i.es
  %i.ji = getelementptr inbounds [4 x i8], ptr %2, i64 %i.jh
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !12
  %i.jk = fmul reassoc nsz arcp contract afn float %i.jj, 2.000000e+00
  %i.jl = sub nsw i64 %indvars.iv69, %i.et
  %i.jm = mul nsw i64 %i.jl, %i.es
  %i.jn = getelementptr inbounds [4 x i8], ptr %2, i64 %i.jm
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !12
  %i.jp = fadd reassoc nsz arcp contract afn float %i.jk, %i.jo
  %i.jq = trunc nsw i64 %indvars.iv69 to i32
  %i.jr = add i32 %5, %i.jq
  %i.js = sub i32 %.neg52, %i.jr
  %i.jt = mul nsw i32 %i.js, %3
  %i.ju = sext i32 %i.jt to i64
  %i.jv = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ju
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !12
  %i.jx = fadd reassoc nsz arcp contract afn float %i.jp, %i.jw
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv69
  store float %i.jx, ptr %i.jy, align 4, !tbaa !12
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 4 uses
  %i.jz = mul nsw i64 %indvars.iv.next70, %i.es
  %i.ka = getelementptr inbounds [4 x i8], ptr %2, i64 %i.jz
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !12
  %i.kc = fmul reassoc nsz arcp contract afn float %i.kb, 2.000000e+00
  %i.kd = sub nsw i64 %indvars.iv.next70, %i.et
  %i.ke = mul nsw i64 %i.kd, %i.es
  %i.kf = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ke
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !12
  %i.kh = fadd reassoc nsz arcp contract afn float %i.kc, %i.kg
  %i.ki = trunc nsw i64 %indvars.iv.next70 to i32
  %i.kj = add i32 %5, %i.ki
  %i.kk = sub i32 %.neg52, %i.kj
  %i.kl = mul nsw i32 %i.kk, %3
  %i.km = sext i32 %i.kl to i64
  %i.kn = getelementptr inbounds [4 x i8], ptr %2, i64 %i.km
  %i.ko = load float, ptr %i.kn, align 4, !tbaa !12
  %i.kp = fadd reassoc nsz arcp contract afn float %i.kh, %i.ko
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next70
  store float %i.kp, ptr %i.kq, align 4, !tbaa !12
  %indvars.iv.next70.1 = add nuw nsw i64 %indvars.iv69, 2 ; 2 uses
  %exitcond73.not.1 = icmp eq i64 %indvars.iv.next70.1, %wide.trip.count72
  br i1 %exitcond73.not.1, label %._crit_edge, label %vec.epilog.scalar.ph197, !llvm.loop !109

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
  %i.e = load i16, ptr %i.d, align 2, !tbaa !187  ; 2 uses
  %i.f = icmp ult i16 %i.e, 65
  br i1 %i.f, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.h = load i16, ptr %i.g, align 4, !tbaa !188  ; 2 uses
  %i.i = icmp ult i16 %i.h, 65
  br i1 %i.i, label %bb.n, label %.preheader296

.preheader296:                                    ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 153096 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !189  ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.preheader296
  %.0231 = phi i32 [ %i.n, %bb.c ], [ 1, %.preheader296 ] ; 3 uses
  %i.l = shl i32 %i.k, %.0231
  %i.m = icmp ult i32 %i.l, 65536
  %i.n = add nuw nsw i32 %.0231, 1
  br i1 %i.m, label %bb.c, label %bb.d, !llvm.loop !119

bb.d:                                             ; preds = %bb.c
  %i.o = add nsw i32 %.0231, -1                   ; 6 uses
  %i.p = shl i32 %i.k, %i.o
  store i32 %i.p, ptr %i.j, align 8, !tbaa !189
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 153088 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !190
  %i.s = shl i32 %i.r, %i.o
  store i32 %i.s, ptr %i.q, align 8, !tbaa !190
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136672 ; 4 uses
  %i.u = load <4 x i32>, ptr %i.t, align 8, !tbaa !79
  %i.v = insertelement <4 x i32> poison, i32 %i.o, i64 0
  %i.w = shufflevector <4 x i32> %i.v, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.x = shl <4 x i32> %i.u, %i.w
  store <4 x i32> %i.x, ptr %i.t, align 8, !tbaa !79
  %i.y = zext i16 %i.h to i32                     ; 2 uses
  %i.z = zext i16 %i.e to i32                     ; 2 uses
  %i.aa = mul nuw nsw i32 %i.y, %i.z              ; 4 uses
  %i.ab = icmp samesign ult i32 %i.aa, 357892096
  %i.ac = mul i32 %i.aa, 3                        ; 2 uses
  br i1 %i.ab, label %bb.e, label %._crit_edge408

bb.e:                                             ; preds = %bb.d
  %i.ad = add nuw nsw i32 %i.z, 128
  %i.ae = add nuw nsw i32 %i.ad, %i.y
  %i.af = add nuw nsw i32 %i.ae, %i.ac
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 2
  %i.ai = tail call noundef ptr @_ZN6LibRaw6mallocEm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.ah)
  br label %._crit_edge408

._crit_edge408:                                   ; preds = %bb.d, %bb.e
  %.0233 = phi ptr [ %i.ai, %bb.e ], [ null, %bb.d ] ; 58 uses
  %i.aj = zext i32 %i.ac to i64                   ; 9 uses
  %i.ak = getelementptr [4 x i8], ptr %.0233, i64 %i.aj ; 52 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.am = load i32, ptr %i.al, align 4, !tbaa !80 ; 3 uses
  %i.an = icmp ne i32 %i.am, 3                    ; 2 uses
  br i1 %i.an, label %bb.f, label %.thread

.thread:                                          ; preds = %._crit_edge408
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !191
  %.not = icmp eq i32 %i.ap, 0
  %spec.select = select i1 %.not, i32 3, i32 4
  br label %.preheader295.lr.ph

bb.f:                                             ; preds = %._crit_edge408
  %i.aq = icmp sgt i32 %i.am, 0
  br i1 %i.aq, label %.preheader295.lr.ph, label %.loopexit289

.preheader295.lr.ph:                              ; preds = %.thread, %bb.f
  %.0218424 = phi i32 [ %spec.select, %.thread ], [ %i.am, %bb.f ]
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 5372
  %wide.trip.count384 = zext nneg i32 %.0218424 to i64
  %wide.trip.count = zext nneg i32 %i.aa to i64   ; 17 uses
  %i.at = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %scevgep = getelementptr i8, ptr %.0233, i64 %i.at ; 3 uses
  %scevgep448 = getelementptr i8, ptr %.0233, i64 %i.at
  %i.au = mul nsw i64 %i.aj, -4                   ; 2 uses
  %i.av = shl nuw nsw i64 %i.aj, 2                ; 6 uses
  %scevgep523.a = getelementptr i8, ptr %.0233, i64 %i.av
  %scevgep637.a = getelementptr i8, ptr %.0233, i64 %i.av
  %scevgep639.a = getelementptr i8, ptr %.0233, i64 -4
  %scevgep642.a = getelementptr i8, ptr %.0233, i64 4
  %scevgep647 = getelementptr i8, ptr %.0233, i64 -4
  %scevgep738.a = getelementptr i8, ptr %.0233, i64 %i.av
  %scevgep850.a = getelementptr i8, ptr %.0233, i64 %i.av
  %scevgep854.a = getelementptr i8, ptr %.0233, i64 4
  %scevgep856.a = getelementptr i8, ptr %.0233, i64 4
  %i.aw = and i64 %wide.trip.count, 31            ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  %i.ay = select i1 %i.ax, i64 32, i64 %i.aw      ; 2 uses
  %n.vec922 = sub nsw i64 %wide.trip.count, %i.ay ; 3 uses
  %broadcast.splatinsert923 = insertelement <8 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat924 = shufflevector <8 x i32> %broadcast.splatinsert923, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %min.epilog.iters.check939 = icmp samesign ult i64 %i.ay, 5
  %i.az = and i64 %wide.trip.count, 3             ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  %i.bb = select i1 %i.ba, i64 4, i64 %i.az
  %n.vec941 = sub nsw i64 %wide.trip.count, %i.bb ; 2 uses
  %broadcast.splatinsert942 = insertelement <4 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat943 = shufflevector <4 x i32> %broadcast.splatinsert942, <4 x i32> poison, <4 x i32> zeroinitializer
  %invariant.op1013 = add i64 %i.au, -1
  %invariant.op1011 = add i64 %i.au, -1
  %i.bc = and i64 %wide.trip.count, 12
  %n.vec461 = and i64 %wide.trip.count, 2147483632 ; 4 uses
  %cmp.n475 = icmp eq i64 %n.vec461, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.bc, 0
  %n.vec476 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n488 = icmp eq i64 %n.vec476, %wide.trip.count
  %xtraiter984 = and i64 %wide.trip.count, 1
  %lcmp.mod985.not = icmp eq i64 %xtraiter984, 0
  %i.bd = add nsw i64 %wide.trip.count, -1
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %iter.check936

iter.check936:                                    ; preds = %.preheader295.lr.ph, %.loopexit952
  %indvars.iv381 = phi i64 [ 0, %.preheader295.lr.ph ], [ %indvars.iv.next382, %.loopexit952 ] ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv381 ; 8 uses
  br label %vector.body925

vector.body925:                                   ; preds = %vector.body925, %iter.check936
  %index926 = phi i64 [ 0, %iter.check936 ], [ %index.next933, %vector.body925 ] ; 6 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index926
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index926
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index926
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 128
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index926
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 192
  %wide.vec = load <32 x i16>, ptr %i.be, align 2, !tbaa !82
  %strided.vec = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec927 = load <32 x i16>, ptr %i.bg, align 2, !tbaa !82
  %strided.vec928 = shufflevector <32 x i16> %wide.vec927, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec929 = load <32 x i16>, ptr %i.bi, align 2, !tbaa !82
  %strided.vec930 = shufflevector <32 x i16> %wide.vec929, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec931 = load <32 x i16>, ptr %i.bk, align 2, !tbaa !82
  %strided.vec932 = shufflevector <32 x i16> %wide.vec931, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.bl = zext <8 x i16> %strided.vec to <8 x i32>
  %i.bm = zext <8 x i16> %strided.vec928 to <8 x i32>
  %i.bn = zext <8 x i16> %strided.vec930 to <8 x i32>
  %i.bo = zext <8 x i16> %strided.vec932 to <8 x i32>
  %i.bp = shl <8 x i32> %i.bl, %broadcast.splat924
  %i.bq = shl <8 x i32> %i.bm, %broadcast.splat924
  %i.br = shl <8 x i32> %i.bn, %broadcast.splat924
  %i.bs = shl <8 x i32> %i.bo, %broadcast.splat924
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
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.0233, i64 %index926 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 96
  store <8 x float> %i.cb, ptr %i.cf, align 4, !tbaa !12
  store <8 x float> %i.cc, ptr %i.cg, align 4, !tbaa !12
  store <8 x float> %i.cd, ptr %i.ch, align 4, !tbaa !12
  store <8 x float> %i.ce, ptr %i.ci, align 4, !tbaa !12
  %index.next933 = add nuw i64 %index926, 32      ; 2 uses
  %i.cj = icmp eq i64 %index.next933, %n.vec922
  br i1 %i.cj, label %vec.epilog.iter.check938, label %vector.body925, !llvm.loop !120

vec.epilog.iter.check938:                         ; preds = %vector.body925
  br i1 %min.epilog.iters.check939, label %vec.epilog.ph940, label %vec.epilog.vector.body944, !prof !83

vec.epilog.ph940:                                 ; preds = %vec.epilog.vector.body944, %vec.epilog.iter.check938
  %vec.epilog.resume.val935 = phi i64 [ %n.vec922, %vec.epilog.iter.check938 ], [ %n.vec941, %vec.epilog.vector.body944 ]
  br label %vec.epilog.scalar.ph937

vec.epilog.vector.body944:                        ; preds = %vec.epilog.iter.check938, %vec.epilog.vector.body944
  %index945 = phi i64 [ %index.next948, %vec.epilog.vector.body944 ], [ %n.vec922, %vec.epilog.iter.check938 ] ; 3 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index945
  %wide.vec946 = load <16 x i16>, ptr %i.ck, align 2, !tbaa !82
  %strided.vec947 = shufflevector <16 x i16> %wide.vec946, <16 x i16> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.cl = zext <4 x i16> %strided.vec947 to <4 x i32>
  %i.cm = shl <4 x i32> %i.cl, %broadcast.splat943
  %i.cn = sitofp reassoc nsz arcp contract afn <4 x i32> %i.cm to <4 x float>
  %i.co = tail call reassoc ninf nsz arcp contract afn <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.cn)
  %i.cp = fmul reassoc nsz arcp contract afn <4 x float> %i.co, splat (float 2.560000e+02)
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.0233, i64 %index945
  store <4 x float> %i.cp, ptr %i.cq, align 4, !tbaa !12
  %index.next948 = add nuw i64 %index945, 4       ; 2 uses
  %i.cr = icmp eq i64 %index.next948, %n.vec941
  br i1 %i.cr, label %vec.epilog.ph940, label %vec.epilog.vector.body944, !llvm.loop !121

.preheader294:                                    ; preds = %vec.epilog.scalar.ph937
  %i.cs = load i16, ptr %i.g, align 4, !tbaa !188 ; 7 uses
  %i.ct = zext i16 %i.cs to i32                   ; 3 uses
  %.not339 = icmp eq i16 %i.cs, 0                 ; 2 uses
  %i.cu = load i16, ptr %i.d, align 2, !tbaa !187 ; 12 uses
  %i.cv = zext i16 %i.cu to i32                   ; 6 uses
  %.not340 = icmp eq i16 %i.cu, 0                 ; 2 uses
  %i.cw = zext i16 %i.cu to i64                   ; 34 uses
  %i.cx = zext i16 %i.cs to i64                   ; 2 uses
  %i.cy = shl nuw nsw i32 %i.ct, 1                ; 3 uses
  %invariant.op = add nsw i32 %i.cy, -2           ; 5 uses
  %i.cz = zext i16 %i.cu to i64                   ; 10 uses
  %i.da = shl nuw nsw i32 %i.cv, 1                ; 3 uses
  %wide.trip.count355 = zext i16 %i.cs to i64     ; 16 uses
  %i.db = add nsw i32 %i.da, -2                   ; 5 uses
  %wide.trip.count350 = zext i16 %i.cu to i64
  %wide.trip.count365 = zext i16 %i.cu to i64
  %wide.trip.count360 = zext i16 %i.cs to i64
  %i.dc = add nsw i64 %wide.trip.count355, -1     ; 2 uses
  %i.dd = add nsw i32 %i.cy, -2
  %i.de = add nuw nsw i64 %i.aj, %wide.trip.count355
  %i.df = shl nuw nsw i64 %i.de, 2
  %scevgep525.a = getelementptr i8, ptr %.0233, i64 %i.df ; 3 uses
  %i.dg = shl nuw nsw i64 %wide.trip.count355, 2  ; 2 uses
  %i.dh = add nsw i32 %i.cy, -2
  %i.di = shl nuw nsw i64 %i.cw, 2                ; 3 uses
  %scevgep640.a = getelementptr i8, ptr %scevgep639.a, i64 %i.di
  %scevgep644.a = getelementptr i8, ptr %.0233, i64 %i.di
  %scevgep648 = getelementptr i8, ptr %scevgep647, i64 %i.di
  %i.dj = shl nuw nsw i64 %i.cw, 2
  %i.dk = add nsw i32 %i.da, -2
  %i.dl = add nuw nsw i64 %i.aj, %i.cw
  %i.dm = shl nuw nsw i64 %i.dl, 2
  %scevgep740.a = getelementptr i8, ptr %.0233, i64 %i.dm ; 3 uses
  %i.dn = shl nuw nsw i64 %i.cw, 2                ; 2 uses
  %i.do = shl nuw nsw i64 %i.cw, 2
  %i.dp = add nsw i32 %i.da, -2
  %i.dq = mul nsw i64 %i.cw, -4
  %i.dr = shl nuw nsw i64 %wide.trip.count355, 2
  %i.ds = add nsw i64 %i.dr, -4
  %i.dt = mul nsw i64 %i.ds, %i.cw                ; 3 uses
  %scevgep852 = getelementptr i8, ptr %.0233, i64 %i.dt
  %scevgep857.a = getelementptr i8, ptr %scevgep856.a, i64 %i.dt
  %scevgep860 = getelementptr i8, ptr %.0233, i64 %i.dt
  %i.du = add nsw i64 %i.cz, -1
  %min.iters.check708 = icmp ult i16 %i.cu, 4
  %min.iters.check710 = icmp ult i16 %i.cu, 32
  %i.dv = and i64 %i.cw, 28
  %n.vec712 = and i64 %i.cw, 65504                ; 4 uses
  %cmp.n721 = icmp eq i64 %n.vec712, %i.cw
  %min.epilog.iters.check726 = icmp eq i64 %i.dv, 0
  %n.vec728 = and i64 %i.cw, 65532                ; 3 uses
  %cmp.n734 = icmp eq i64 %n.vec728, %i.cw
  %ident.check635.not = icmp eq i16 %i.cu, 1
  %ident.check591.not = icmp eq i16 %i.cu, 1
  %ident.check521 = icmp ne i16 %i.cu, 1
  %i.dw = add nsw i64 %wide.trip.count355, -1
  %min.iters.check492 = icmp ult i16 %i.cs, 4
  %ident.check = icmp ne i16 %i.cu, 1
  %i.dx = trunc nsw i64 %i.dc to i32
  %i.dy = icmp ugt i64 %i.dc, 4294967295
  %invariant.op1009 = or i1 %i.dy, %ident.check
  %min.iters.check494 = icmp ult i16 %i.cs, 32
  %i.dz = and i64 %wide.trip.count355, 28
  %n.vec496 = and i64 %wide.trip.count355, 65504  ; 4 uses
  %cmp.n505 = icmp eq i64 %n.vec496, %wide.trip.count355
  %min.epilog.iters.check510 = icmp eq i64 %i.dz, 0
  %n.vec512 = and i64 %wide.trip.count355, 65532  ; 3 uses
  %cmp.n518 = icmp eq i64 %n.vec512, %wide.trip.count355
  %xtraiter981 = and i64 %wide.trip.count355, 3   ; 2 uses
  %lcmp.mod982.not = icmp eq i64 %xtraiter981, 0
  br label %bb.g

vec.epilog.scalar.ph937:                          ; preds = %vec.epilog.ph940, %vec.epilog.scalar.ph937
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph937 ], [ %vec.epilog.resume.val935, %vec.epilog.ph940 ] ; 3 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ea = load i16, ptr %gep, align 2, !tbaa !82
  %i.eb = zext i16 %i.ea to i32
  %i.ec = shl i32 %i.eb, %i.o
  %i.ed = sitofp reassoc nsz arcp contract afn i32 %i.ec to float
  %i.ee = tail call reassoc ninf nsz arcp contract afn float @llvm.sqrt.f32(float %i.ed)
  %i.ef = fmul reassoc nsz arcp contract afn float %i.ee, 2.560000e+02
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %.0233, i64 %indvars.iv
  store float %i.ef, ptr %i.eg, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader294, label %vec.epilog.scalar.ph937, !llvm.loop !122

.preheader293:                                    ; preds = %.loopexit951
  %invariant.gep436 = getelementptr [4 x i8], ptr %.0233, i64 %6 ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader293
  %index = phi i64 [ 0, %.preheader293 ], [ %index.next, %vector.body ] ; 4 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %.0233, i64 %index
  %wide.load = load <8 x float>, ptr %i.eh, align 4, !tbaa !12
  %i.ei = getelementptr [4 x i8], ptr %invariant.gep436, i64 %index
  %wide.load446 = load <8 x float>, ptr %i.ei, align 4, !tbaa !12
  %i.ej = fadd reassoc nsz arcp contract afn <8 x float> %wide.load446, %wide.load ; 2 uses
  %i.ek = fmul reassoc nsz arcp contract afn <8 x float> %i.ej, %i.ej
  %i.el = fmul reassoc nsz arcp contract afn <8 x float> %i.ek, splat (float f0x37800000)
  %i.em = fptosi <8 x float> %i.el to <8 x i32>
  %i.en = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.em, <8 x i32> splat (i32 65535))
  %i.eo = trunc nuw <8 x i32> %i.en to <8 x i16>
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index
  %i.eq = shufflevector <8 x i16> %i.eo, <8 x i16> poison, <29 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 4, i32 poison, i32 poison, i32 poison, i32 5, i32 poison, i32 poison, i32 poison, i32 6, i32 poison, i32 poison, i32 poison, i32 7>
  tail call void @llvm.masked.store.v29i16.p0(<29 x i16> %i.eq, ptr align 2 %i.ep, <29 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true>), !tbaa !82
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.er = icmp eq i64 %index.next, %n.vec
  br i1 %i.er, label %middle.block, label %vector.body, !llvm.loop !123

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit952, label %scalar.ph

bb.g:                                             ; preds = %.preheader294, %.loopexit951
  %indvars.iv372 = phi i64 [ 0, %.preheader294 ], [ %indvars.iv.next373, %.loopexit951 ] ; 10 uses
  %.0229318 = phi i32 [ 0, %.preheader294 ], [ %i.eu, %.loopexit951 ] ; 3 uses
  %i.es = trunc nuw nsw i64 %indvars.iv372 to i32 ; 5 uses
  %i.et = and i32 %i.es, 1
  %i.eu = shl nuw i32 %i.aa, %i.et                ; 6 uses
  br i1 %.not339, label %.preheader292, label %.lr.ph308

.lr.ph308:                                        ; preds = %bb.g
  %i.ev = zext i32 %.0229318 to i64               ; 5 uses
  %i.ew = getelementptr [4 x i8], ptr %.0233, i64 %i.ev ; 2 uses
  %i.ex = shl nuw nsw i32 1, %i.es                ; 9 uses
  %i.ey = zext nneg i32 %i.ex to i64              ; 32 uses
  %i.ez = shl nuw nsw i32 2, %i.es
  %i.fa = icmp samesign ult i32 %i.ez, %i.cv
  %i.fb = shl nuw nsw i64 %i.ey, 1                ; 6 uses
  %invariant.op.i = sub nsw i64 %i.cw, %i.ey      ; 2 uses
  %i.fc = sext i32 %i.eu to i64                   ; 2 uses
  %invariant.gep430 = getelementptr [4 x i8], ptr %.0233, i64 %i.fc
  %i.fd = shl nsw i64 %i.fc, 2
  %i.fe = shl nuw nsw i64 %i.ev, 2                ; 4 uses
  %i.ff = add nuw nsw i64 %i.dn, %i.fe            ; 2 uses
  %i.fg = shl nuw nsw i64 %i.ey, 2                ; 4 uses
  %i.fh = sub nsw i64 %i.fe, %i.fg
  %i.fi = sub nsw i64 %i.ff, %i.fg
  %reass.sub = sub nsw i64 %i.fe, %i.dn
  %i.fj = shl nuw nsw i64 %i.ev, 2                ; 4 uses
  %i.fk = sub nsw i64 %i.av, %i.fj
  %i.fl = add nuw nsw i64 %i.aj, %i.ey
  %i.fm = sub nsw i64 %i.fl, %i.ev
  %i.fn = shl nsw i64 %i.fm, 2
  %i.fo = add nuw nsw i64 %i.ev, %i.ey
  %i.fp = sub nsw i64 %i.aj, %i.fo
  %i.fq = shl nsw i64 %i.fp, 2
  %i.fr = add nuw nsw i64 %i.ey, 1
  %smax812 = tail call i64 @llvm.smax.i64(i64 %invariant.op.i, i64 %i.fr)
  %i.fs = sub nsw i64 %smax812, %i.ey             ; 7 uses
  %scevgep851.a = getelementptr i8, ptr %scevgep850.a, i64 %i.fg ; 3 uses
  %i.ft = add nuw nsw i64 %i.fg, %i.fj            ; 3 uses
  %scevgep853 = getelementptr i8, ptr %scevgep852, i64 %i.ft
  %scevgep855.a = getelementptr i8, ptr %scevgep854.a, i64 %i.fj
  %scevgep858 = getelementptr i8, ptr %scevgep857.a, i64 %i.ft
  %scevgep859 = getelementptr i8, ptr %.0233, i64 %i.ft
  %i.fu = shl nuw nsw i64 %i.ey, 3
  %i.fv = getelementptr i8, ptr %scevgep860, i64 %i.fu
  %scevgep861 = getelementptr i8, ptr %i.fv, i64 %i.fj
  %i.fw = getelementptr i8, ptr %.0233, i64 %i.ff
  %i.fx = getelementptr i8, ptr %.0233, i64 %i.fh
  %i.fy = getelementptr i8, ptr %.0233, i64 %i.fi
  %i.fz = getelementptr i8, ptr %.0233, i64 %reass.sub
  %i.ga = getelementptr i8, ptr %i.fz, i64 4
  %i.gb = getelementptr i8, ptr %.0233, i64 %i.fe
  %i.gc = getelementptr i8, ptr %i.gb, i64 4
  %min.iters.check874 = icmp samesign ult i64 %indvars.iv372, 3
  %bound0862 = icmp ult ptr %i.ak, %scevgep853
  %bound1863 = icmp ult ptr %i.ew, %scevgep851.a
  %found.conflict864 = and i1 %bound0862, %bound1863
  %bound0865.a = icmp ult ptr %i.ak, %scevgep858
  %bound1866.a = icmp ult ptr %scevgep855.a, %scevgep851.a
  %found.conflict867.a = and i1 %bound0865.a, %bound1866.a
  %conflict.rdx868.a = or i1 %found.conflict864, %found.conflict867.a
  %bound0869 = icmp ult ptr %i.ak, %scevgep861
  %bound1870 = icmp ult ptr %scevgep859, %scevgep851.a
  %found.conflict871 = and i1 %bound0869, %bound1870
  %conflict.rdx872 = or i1 %conflict.rdx868.a, %found.conflict871
  %min.iters.check876 = icmp samesign ult i64 %indvars.iv372, 5
  %n.vec878 = and i64 %i.ey, 2147483616
  %n.vec906 = and i64 %i.ey, 248
  %xtraiter = and i64 %i.ey, 3                    ; 3 uses
  %i.gd = icmp samesign ult i64 %indvars.iv372, 2
  %unroll_iter = and i64 %i.ey, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod967 = icmp ne i64 %xtraiter, 0
  %min.iters.check814 = icmp ult i64 %i.fs, 4
  %invariant.op992 = add i64 %i.fk, -1
  %invariant.op993 = add i64 %i.fn, -1
  %invariant.op995 = add i64 %i.fq, -1
  %min.iters.check816 = icmp ult i64 %i.fs, 16
  %i.ge = and i64 %i.fs, 12
  %n.vec818 = and i64 %i.fs, -16                  ; 5 uses
  %i.gf = add i64 %n.vec818, %i.ey                ; 2 uses
  %i.gg = add i64 %i.fb, %n.vec818
  %cmp.n829 = icmp eq i64 %i.fs, %n.vec818
  %min.epilog.iters.check836 = icmp eq i64 %i.ge, 0
  %n.vec838 = and i64 %i.fs, -4                   ; 4 uses
  %i.gh = add i64 %n.vec838, %i.ey                ; 2 uses
  %i.gi = add i64 %i.fb, %n.vec838
  %cmp.n846 = icmp eq i64 %i.fs, %n.vec838
  %invariant.op997.reass = add i64 %i.fd, %invariant.op1013
  br label %iter.check901

.preheader292:                                    ; preds = %._crit_edge, %bb.g
  br i1 %.not340, label %vector.memcheck, label %.lr.ph314

.lr.ph314:                                        ; preds = %.preheader292
  %i.gj = zext i32 %i.eu to i64                   ; 5 uses
  %i.gk = getelementptr [4 x i8], ptr %.0233, i64 %i.gj ; 2 uses
  %i.gl = shl nuw nsw i32 1, %i.es                ; 9 uses
  %i.gm = zext nneg i32 %i.gl to i64              ; 34 uses
  %i.gn = shl nuw nsw i32 2, %i.es
  %i.go = icmp samesign ult i32 %i.gn, %i.ct
  %i.gp = shl nuw nsw i64 %i.gm, 1                ; 6 uses
  %invariant.op.i266 = sub nsw i64 %i.cx, %i.gm   ; 2 uses
  %i.gq = shl nuw nsw i64 %i.gj, 2                ; 4 uses
  %i.gr = add nuw nsw i64 %i.dg, %i.gq            ; 2 uses
  %i.gs = shl nuw nsw i64 %i.gm, 2                ; 5 uses
  %i.gt = sub nsw i64 %i.gq, %i.gs
  %i.gu = sub nsw i64 %i.gr, %i.gs
  %reass.sub953 = sub nsw i64 %i.gq, %i.dg
  %i.gv = shl nuw nsw i64 %i.gj, 2                ; 5 uses
  %i.gw = sub nsw i64 %i.av, %i.gv
  %i.gx = add nuw nsw i64 %i.aj, %i.gm
  %i.gy = sub nsw i64 %i.gx, %i.gj
  %i.gz = shl nsw i64 %i.gy, 2
  %i.ha = add nuw nsw i64 %i.gj, %i.gm
  %i.hb = sub nsw i64 %i.aj, %i.ha
  %i.hc = shl nsw i64 %i.hb, 2
  %i.hd = add nuw nsw i64 %i.gm, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %invariant.op.i266, i64 %i.hd)
  %i.he = sub nsw i64 %smax, %i.gm                ; 7 uses
  %scevgep638 = getelementptr i8, ptr %scevgep637.a, i64 %i.gs ; 3 uses
  %i.hf = getelementptr i8, ptr %scevgep640.a, i64 %i.gs
  %scevgep641.a = getelementptr i8, ptr %i.hf, i64 %i.gv
  %scevgep643 = getelementptr i8, ptr %scevgep642.a, i64 %i.gv
  %i.hg = add nuw nsw i64 %i.gv, %i.gs            ; 2 uses
  %scevgep645.a = getelementptr i8, ptr %scevgep644.a, i64 %i.hg
  %scevgep646 = getelementptr i8, ptr %.0233, i64 %i.hg
  %i.hh = shl nuw nsw i64 %i.gm, 3
  %i.hi = getelementptr i8, ptr %scevgep648, i64 %i.hh
  %scevgep649 = getelementptr i8, ptr %i.hi, i64 %i.gv
  %i.hj = getelementptr i8, ptr %.0233, i64 %i.gr
  %i.hk = getelementptr i8, ptr %.0233, i64 %i.gt
  %i.hl = getelementptr i8, ptr %.0233, i64 %i.gu
  %i.hm = getelementptr i8, ptr %.0233, i64 %reass.sub953
  %i.hn = getelementptr i8, ptr %i.hm, i64 4
  %i.ho = getelementptr i8, ptr %.0233, i64 %i.gq
  %i.hp = getelementptr i8, ptr %i.ho, i64 4
  %min.iters.check662 = icmp samesign ugt i64 %indvars.iv372, 2
  %or.cond954 = select i1 %min.iters.check662, i1 %ident.check635.not, i1 false
  %bound0650 = icmp ult ptr %i.ak, %scevgep641.a
  %bound1651 = icmp ult ptr %i.gk, %scevgep638
  %found.conflict652 = and i1 %bound0650, %bound1651
  %bound0653.a = icmp ult ptr %i.ak, %scevgep645.a
  %bound1654.a = icmp ult ptr %scevgep643, %scevgep638
  %found.conflict655.a = and i1 %bound0653.a, %bound1654.a
  %conflict.rdx656.a = or i1 %found.conflict652, %found.conflict655.a
  %bound0657 = icmp ult ptr %i.ak, %scevgep649
  %bound1658 = icmp ult ptr %scevgep646, %scevgep638
  %found.conflict659 = and i1 %bound0657, %bound1658
  %conflict.rdx660 = or i1 %conflict.rdx656.a, %found.conflict659
  %min.iters.check664 = icmp samesign ult i64 %indvars.iv372, 5
  %n.vec666 = and i64 %i.gm, 2147483616
  %n.vec694 = and i64 %i.gm, 248
  %xtraiter972.a = and i64 %i.gm, 1
  %i.hq = icmp eq i64 %indvars.iv372, 0
  %unroll_iter976 = and i64 %i.gm, 2147483646
  %lcmp.mod974.not = icmp eq i64 %xtraiter972.a, 0
  %lcmp.mod975 = icmp eq i64 %indvars.iv372, 0
  %min.iters.check599 = icmp ugt i64 %i.he, 3
  %or.cond955 = select i1 %min.iters.check599, i1 %ident.check591.not, i1 false
  %invariant.op1003 = add i64 %i.gw, -1
  %invariant.op1005 = add i64 %i.gz, -1
  %invariant.op1007 = add i64 %i.hc, -1
  %min.iters.check601 = icmp ult i64 %i.he, 16
  %i.hr = and i64 %i.he, 12
  %n.vec603 = and i64 %i.he, -16                  ; 5 uses
  %i.hs = add i64 %n.vec603, %i.gm                ; 2 uses
  %i.ht = add i64 %i.gp, %n.vec603
  %cmp.n614 = icmp eq i64 %i.he, %n.vec603
  %min.epilog.iters.check621 = icmp eq i64 %i.hr, 0
  %n.vec623 = and i64 %i.he, -4                   ; 4 uses
  %i.hu = add i64 %n.vec623, %i.gm                ; 2 uses
  %i.hv = add i64 %i.gp, %n.vec623
  %cmp.n631 = icmp eq i64 %i.he, %n.vec623
  br label %iter.check689

iter.check901:                                    ; preds = %.lr.ph308, %._crit_edge
  %indvars.iv352 = phi i64 [ 0, %.lr.ph308 ], [ %indvars.iv.next353, %._crit_edge ] ; 5 uses
  %i.hw = mul i64 %i.dq, %indvars.iv352           ; 3 uses
  %i.hx = mul i64 %i.do, %indvars.iv352           ; 5 uses
  %scevgep742.a = getelementptr i8, ptr %i.fw, i64 %i.hx
  %scevgep743.a = getelementptr i8, ptr %i.fx, i64 %i.hx
  %scevgep745.a = getelementptr i8, ptr %i.fy, i64 %i.hx
  %scevgep746 = getelementptr i8, ptr %i.ga, i64 %i.hx
  %scevgep748 = getelementptr i8, ptr %i.gc, i64 %i.hx
  %i.hy = mul i64 %i.dj, %indvars.iv352
  %i.hz = mul nuw nsw i64 %indvars.iv352, %i.cz   ; 2 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.hz ; 40 uses
  %invariant.gep303 = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %i.ey ; 7 uses
  %brmerge1014 = select i1 %min.iters.check874, i1 true, i1 %conflict.rdx872
  br i1 %brmerge1014, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check875

.lr.ph.i.preheader:                               ; preds = %iter.check901
  br i1 %i.gd, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

vector.main.loop.iter.check875:                   ; preds = %iter.check901
  br i1 %min.iters.check876, label %vec.epilog.vector.body907, label %vector.body879

vector.body879:                                   ; preds = %vector.main.loop.iter.check875, %vector.body879
  %index880 = phi i64 [ %index.next897, %vector.body879 ], [ 0, %vector.main.loop.iter.check875 ] ; 5 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %index880 ; 4 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 32
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 64
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 96
  %wide.load881.a = load <8 x float>, ptr %i.ib, align 4, !tbaa !12, !alias.scope !192
  %wide.load882.a = load <8 x float>, ptr %i.ic, align 4, !tbaa !12, !alias.scope !192
  %wide.load883.a = load <8 x float>, ptr %i.id, align 4, !tbaa !12, !alias.scope !192
  %wide.load884.a = load <8 x float>, ptr %i.ie, align 4, !tbaa !12, !alias.scope !192
  %i.if = fmul reassoc nsz arcp contract afn <8 x float> %wide.load881.a, splat (float 2.000000e+00)
  %i.ig = fmul reassoc nsz arcp contract afn <8 x float> %wide.load882.a, splat (float 2.000000e+00)
  %i.ih = fmul reassoc nsz arcp contract afn <8 x float> %wide.load883.a, splat (float 2.000000e+00)
  %i.ii = fmul reassoc nsz arcp contract afn <8 x float> %wide.load884.a, splat (float 2.000000e+00)
  %i.ij = sub nuw nsw i64 %i.ey, %index880
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %i.ij ; 4 uses
  %i.il = getelementptr inbounds i8, ptr %i.ik, i64 -28
  %i.im = getelementptr inbounds i8, ptr %i.ik, i64 -60
  %i.in = getelementptr inbounds i8, ptr %i.ik, i64 -92
  %i.io = getelementptr inbounds i8, ptr %i.ik, i64 -124
  %wide.load885 = load <8 x float>, ptr %i.il, align 4, !tbaa !12, !alias.scope !193
  %wide.load886 = load <8 x float>, ptr %i.im, align 4, !tbaa !12, !alias.scope !193
  %wide.load887 = load <8 x float>, ptr %i.in, align 4, !tbaa !12, !alias.scope !193
  %wide.load888 = load <8 x float>, ptr %i.io, align 4, !tbaa !12, !alias.scope !193
  %reverse889 = shufflevector <8 x float> %wide.load885, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse890 = shufflevector <8 x float> %wide.load886, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse891 = shufflevector <8 x float> %wide.load887, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse892 = shufflevector <8 x float> %wide.load888, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ip = fadd reassoc nsz arcp contract afn <8 x float> %i.if, %reverse889
  %i.iq = fadd reassoc nsz arcp contract afn <8 x float> %i.ig, %reverse890
  %i.ir = fadd reassoc nsz arcp contract afn <8 x float> %i.ih, %reverse891
  %i.is = fadd reassoc nsz arcp contract afn <8 x float> %i.ii, %reverse892
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep303, i64 %index880 ; 4 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 32
  %i.iv = getelementptr inbounds nuw i8, ptr %i.it, i64 64
  %i.iw = getelementptr inbounds nuw i8, ptr %i.it, i64 96
  %wide.load893 = load <8 x float>, ptr %i.it, align 4, !tbaa !12, !alias.scope !194
  %wide.load894 = load <8 x float>, ptr %i.iu, align 4, !tbaa !12, !alias.scope !194
  %wide.load895 = load <8 x float>, ptr %i.iv, align 4, !tbaa !12, !alias.scope !194
  %wide.load896 = load <8 x float>, ptr %i.iw, align 4, !tbaa !12, !alias.scope !194
  %i.ix = fadd reassoc nsz arcp contract afn <8 x float> %i.ip, %wide.load893
  %i.iy = fadd reassoc nsz arcp contract afn <8 x float> %i.iq, %wide.load894
  %i.iz = fadd reassoc nsz arcp contract afn <8 x float> %i.ir, %wide.load895
  %i.ja = fadd reassoc nsz arcp contract afn <8 x float> %i.is, %wide.load896
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %index880 ; 4 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 32
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jb, i64 64
  %i.je = getelementptr inbounds nuw i8, ptr %i.jb, i64 96
  store <8 x float> %i.ix, ptr %i.jb, align 4, !tbaa !12, !alias.scope !195, !noalias !196
  store <8 x float> %i.iy, ptr %i.jc, align 4, !tbaa !12, !alias.scope !195, !noalias !196
  store <8 x float> %i.iz, ptr %i.jd, align 4, !tbaa !12, !alias.scope !195, !noalias !196
  store <8 x float> %i.ja, ptr %i.je, align 4, !tbaa !12, !alias.scope !195, !noalias !196
  %index.next897 = add nuw i64 %index880, 32      ; 2 uses
  %i.jf = icmp eq i64 %index.next897, %n.vec878
  br i1 %i.jf, label %.preheader53.i, label %vector.body879, !llvm.loop !129

vec.epilog.vector.body907:                        ; preds = %vector.main.loop.iter.check875, %vec.epilog.vector.body907
  %index908 = phi i64 [ %index.next913, %vec.epilog.vector.body907 ], [ 0, %vector.main.loop.iter.check875 ] ; 5 uses
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %index908
  %wide.load909 = load <8 x float>, ptr %i.jg, align 4, !tbaa !12, !alias.scope !192
  %i.jh = fmul reassoc nsz arcp contract afn <8 x float> %wide.load909, splat (float 2.000000e+00)
  %i.ji = sub nuw nsw i64 %i.ey, %index908
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %i.ji
  %i.jk = getelementptr inbounds i8, ptr %i.jj, i64 -28
  %wide.load910 = load <8 x float>, ptr %i.jk, align 4, !tbaa !12, !alias.scope !193
  %reverse911 = shufflevector <8 x float> %wide.load910, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.jl = fadd reassoc nsz arcp contract afn <8 x float> %i.jh, %reverse911
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep303, i64 %index908
  %wide.load912 = load <8 x float>, ptr %i.jm, align 4, !tbaa !12, !alias.scope !194
  %i.jn = fadd reassoc nsz arcp contract afn <8 x float> %i.jl, %wide.load912
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %index908
  store <8 x float> %i.jn, ptr %i.jo, align 4, !tbaa !12, !alias.scope !195, !noalias !196
  %index.next913 = add nuw i64 %index908, 8       ; 2 uses
  %i.jp = icmp eq i64 %index.next913, %n.vec906
  br i1 %i.jp, label %.preheader53.i, label %vec.epilog.vector.body907, !llvm.loop !130

.preheader53.i.loopexit.unr-lcssa:                ; preds = %.lr.ph.i
  br i1 %lcmp.mod.not, label %.preheader53.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader53.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.3, %.preheader53.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod967)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ], [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ] ; 5 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %indvars.iv.i.epil
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !12
  %i.js = fmul reassoc nsz arcp contract afn float %i.jr, 2.000000e+00
  %i.jt = sub nuw nsw i64 %i.ey, %indvars.iv.i.epil
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %i.jt
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !12
  %i.jw = fadd reassoc nsz arcp contract afn float %i.js, %i.jv
  %gep304.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep303, i64 %indvars.iv.i.epil
end_hunk_0
begin_hunk_1_@_ZN6LibRaw15wavelet_denoiseEv:bb.a
  %i.acp = icmp slt i64 %indvars.iv.next65.i270, %invariant.op.i266
  %indvars.iv.next63.i271 = add nuw nsw i64 %indvars.iv62.i269, 1
  br i1 %i.acp, label %.lr.ph56.i267, label %.preheader.loopexit.i272, !llvm.loop !166

vec.epilog.scalar.ph575:                          ; preds = %vec.epilog.scalar.ph575.prol.loopexit, %vec.epilog.scalar.ph575
  %indvars.iv69.i262 = phi i64 [ %indvars.iv.next70.i263.1, %vec.epilog.scalar.ph575 ], [ %indvars.iv69.i262.unr, %vec.epilog.scalar.ph575.prol.loopexit ] ; 6 uses
  %i.acq = mul nsw i64 %indvars.iv69.i262, %i.cw
  %i.acr = getelementptr inbounds [4 x i8], ptr %i.uc, i64 %i.acq
  %i.acs = load float, ptr %i.acr, align 4, !tbaa !12
  %i.act = fmul reassoc nsz arcp contract afn float %i.acs, 2.000000e+00
  %i.acu = sub nsw i64 %indvars.iv69.i262, %i.gm
  %i.acv = mul nsw i64 %i.acu, %i.cw
  %i.acw = getelementptr inbounds [4 x i8], ptr %i.uc, i64 %i.acv
  %i.acx = load float, ptr %i.acw, align 4, !tbaa !12
  %i.acy = fadd reassoc nsz arcp contract afn float %i.act, %i.acx
  %i.acz = trunc nsw i64 %indvars.iv69.i262 to i32
  %i.ada = add i32 %i.gl, %i.acz
  %i.adb = sub i32 %invariant.op, %i.ada
  %i.adc = mul nsw i32 %i.adb, %i.cv
  %i.add = sext i32 %i.adc to i64
  %i.ade = getelementptr inbounds [4 x i8], ptr %i.uc, i64 %i.add
  %i.adf = load float, ptr %i.ade, align 4, !tbaa !12
  %i.adg = fadd reassoc nsz arcp contract afn float %i.acy, %i.adf
  %i.adh = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv69.i262
  store float %i.adg, ptr %i.adh, align 4, !tbaa !12
  %indvars.iv.next70.i263 = add nuw nsw i64 %indvars.iv69.i262, 1 ; 4 uses
  %i.adi = mul nsw i64 %indvars.iv.next70.i263, %i.cw
  %i.adj = getelementptr inbounds [4 x i8], ptr %i.uc, i64 %i.adi
  %i.adk = load float, ptr %i.adj, align 4, !tbaa !12
  %i.adl = fmul reassoc nsz arcp contract afn float %i.adk, 2.000000e+00
  %i.adm = sub nsw i64 %indvars.iv.next70.i263, %i.gm
  %i.adn = mul nsw i64 %i.adm, %i.cw
  %i.ado = getelementptr inbounds [4 x i8], ptr %i.uc, i64 %i.adn
  %i.adp = load float, ptr %i.ado, align 4, !tbaa !12
  %i.adq = fadd reassoc nsz arcp contract afn float %i.adl, %i.adp
  %i.adr = trunc nsw i64 %indvars.iv.next70.i263 to i32
  %i.ads = add i32 %i.gl, %i.adr
  %i.adt = sub i32 %invariant.op, %i.ads
  %i.adu = mul nsw i32 %i.adt, %i.cv
  %i.adv = sext i32 %i.adu to i64
  %i.adw = getelementptr inbounds [4 x i8], ptr %i.uc, i64 %i.adv
  %i.adx = load float, ptr %i.adw, align 4, !tbaa !12
  %i.ady = fadd reassoc nsz arcp contract afn float %i.adq, %i.adx
  %i.adz = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next70.i263
  store float %i.ady, ptr %i.adz, align 4, !tbaa !12
  %indvars.iv.next70.i263.1 = add nuw nsw i64 %indvars.iv69.i262, 2 ; 2 uses
  %exitcond73.not.i264.1 = icmp eq i64 %indvars.iv.next70.i263.1, %i.cx
  br i1 %exitcond73.not.i264.1, label %_ZN6LibRaw13hat_transformEPfS0_iii.exit278, label %vec.epilog.scalar.ph575, !llvm.loop !167

_ZN6LibRaw13hat_transformEPfS0_iii.exit278:       ; preds = %vec.epilog.scalar.ph575.prol.loopexit, %vec.epilog.scalar.ph575, %middle.block570, %vec.epilog.middle.block587, %.preheader.i257
  br i1 %.not339, label %._crit_edge312, label %iter.check507

iter.check507:                                    ; preds = %_ZN6LibRaw13hat_transformEPfS0_iii.exit278
  %i.aea = trunc nuw nsw i64 %indvars.iv362 to i32
  %i.aeb = add i32 %i.eu, %i.aea                  ; 9 uses
  br i1 %min.iters.check492, label %vec.epilog.scalar.ph508.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check507
  %i.aec = add i32 %i.aeb, %i.dx
  %i.aed = icmp slt i32 %i.aec, %i.aeb
  %.reass1010 = or i1 %i.aed, %invariant.op1009
  %.reass1012 = add i64 %i.ub, %invariant.op1011
  %diff.check = icmp ult i64 %.reass1012, 127
  %or.cond956 = select i1 %.reass1010, i1 true, i1 %diff.check
  br i1 %or.cond956, label %vec.epilog.scalar.ph508.preheader, label %vector.main.loop.iter.check493

vector.main.loop.iter.check493:                   ; preds = %vector.scevcheck
  br i1 %min.iters.check494, label %vec.epilog.ph511, label %vector.body497

vector.body497:                                   ; preds = %vector.main.loop.iter.check493, %vector.body497
  %index498 = phi i64 [ %index.next503, %vector.body497 ], [ 0, %vector.main.loop.iter.check493 ] ; 3 uses
  %i.aee = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %index498 ; 4 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aee, i64 32
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aee, i64 64
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aee, i64 96
  %wide.load499 = load <8 x float>, ptr %i.aee, align 4, !tbaa !12
  %wide.load500 = load <8 x float>, ptr %i.aef, align 4, !tbaa !12
  %wide.load501 = load <8 x float>, ptr %i.aeg, align 4, !tbaa !12
  %wide.load502 = load <8 x float>, ptr %i.aeh, align 4, !tbaa !12
  %i.aei = fmul reassoc nsz arcp contract afn <8 x float> %wide.load499, splat (float 2.500000e-01)
  %i.aej = fmul reassoc nsz arcp contract afn <8 x float> %wide.load500, splat (float 2.500000e-01)
  %i.aek = fmul reassoc nsz arcp contract afn <8 x float> %wide.load501, splat (float 2.500000e-01)
  %i.ael = fmul reassoc nsz arcp contract afn <8 x float> %wide.load502, splat (float 2.500000e-01)
  %i.aem = trunc nuw nsw i64 %index498 to i32
  %i.aen = add i32 %i.aeb, %i.aem
  %i.aeo = sext i32 %i.aen to i64
  %i.aep = getelementptr inbounds [4 x i8], ptr %.0233, i64 %i.aeo ; 4 uses
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aep, i64 32
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aep, i64 64
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aep, i64 96
  store <8 x float> %i.aei, ptr %i.aep, align 4, !tbaa !12
  store <8 x float> %i.aej, ptr %i.aeq, align 4, !tbaa !12
  store <8 x float> %i.aek, ptr %i.aer, align 4, !tbaa !12
  store <8 x float> %i.ael, ptr %i.aes, align 4, !tbaa !12
  %index.next503 = add nuw i64 %index498, 32      ; 2 uses
  %i.aet = icmp eq i64 %index.next503, %n.vec496
  br i1 %i.aet, label %middle.block504, label %vector.body497, !llvm.loop !168

middle.block504:                                  ; preds = %vector.body497
  br i1 %cmp.n505, label %._crit_edge312, label %vec.epilog.iter.check509

vec.epilog.iter.check509:                         ; preds = %middle.block504
  br i1 %min.epilog.iters.check510, label %vec.epilog.scalar.ph508.preheader, label %vec.epilog.ph511, !prof !83

vec.epilog.ph511:                                 ; preds = %vector.main.loop.iter.check493, %vec.epilog.iter.check509
  %vec.epilog.resume.val506 = phi i64 [ %n.vec496, %vec.epilog.iter.check509 ], [ 0, %vector.main.loop.iter.check493 ]
  br label %vec.epilog.vector.body513

vec.epilog.vector.body513:                        ; preds = %vec.epilog.vector.body513, %vec.epilog.ph511
  %index514 = phi i64 [ %vec.epilog.resume.val506, %vec.epilog.ph511 ], [ %index.next516, %vec.epilog.vector.body513 ] ; 3 uses
  %i.aeu = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %index514
  %wide.load515 = load <4 x float>, ptr %i.aeu, align 4, !tbaa !12
  %i.aev = fmul reassoc nsz arcp contract afn <4 x float> %wide.load515, splat (float 2.500000e-01)
  %i.aew = trunc nuw nsw i64 %index514 to i32
  %i.aex = add i32 %i.aeb, %i.aew
  %i.aey = sext i32 %i.aex to i64
  %i.aez = getelementptr inbounds [4 x i8], ptr %.0233, i64 %i.aey
  store <4 x float> %i.aev, ptr %i.aez, align 4, !tbaa !12
  %index.next516 = add nuw i64 %index514, 4       ; 2 uses
  %i.afa = icmp eq i64 %index.next516, %n.vec512
  br i1 %i.afa, label %vec.epilog.middle.block517, label %vec.epilog.vector.body513, !llvm.loop !169

vec.epilog.middle.block517:                       ; preds = %vec.epilog.vector.body513
  br i1 %cmp.n518, label %._crit_edge312, label %vec.epilog.scalar.ph508.preheader

vec.epilog.scalar.ph508.preheader:                ; preds = %vector.scevcheck, %iter.check507, %vec.epilog.iter.check509, %vec.epilog.middle.block517
  %indvars.iv357.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %iter.check507 ], [ %n.vec496, %vec.epilog.iter.check509 ], [ %n.vec512, %vec.epilog.middle.block517 ] ; 3 uses
  br i1 %lcmp.mod982.not, label %vec.epilog.scalar.ph508.prol.loopexit, label %vec.epilog.scalar.ph508.prol

vec.epilog.scalar.ph508.prol:                     ; preds = %vec.epilog.scalar.ph508.preheader, %vec.epilog.scalar.ph508.prol
  %indvars.iv357.prol = phi i64 [ %indvars.iv.next358.prol, %vec.epilog.scalar.ph508.prol ], [ %indvars.iv357.ph, %vec.epilog.scalar.ph508.preheader ] ; 3 uses
  %prol.iter983 = phi i64 [ %prol.iter983.next, %vec.epilog.scalar.ph508.prol ], [ 0, %vec.epilog.scalar.ph508.preheader ]
  %i.afb = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv357.prol
  %i.afc = load float, ptr %i.afb, align 4, !tbaa !12
  %i.afd = fmul reassoc nsz arcp contract afn float %i.afc, 2.500000e-01
  %i.afe = mul nuw nsw i64 %indvars.iv357.prol, %i.cz
  %i.aff = trunc nuw nsw i64 %i.afe to i32
  %i.afg = add i32 %i.aeb, %i.aff
  %i.afh = sext i32 %i.afg to i64
  %i.afi = getelementptr inbounds [4 x i8], ptr %.0233, i64 %i.afh
  store float %i.afd, ptr %i.afi, align 4, !tbaa !12
  %indvars.iv.next358.prol = add nuw nsw i64 %indvars.iv357.prol, 1 ; 2 uses
  %prol.iter983.next = add i64 %prol.iter983, 1   ; 2 uses
  %prol.iter983.cmp.not = icmp eq i64 %prol.iter983.next, %xtraiter981
  br i1 %prol.iter983.cmp.not, label %vec.epilog.scalar.ph508.prol.loopexit, label %vec.epilog.scalar.ph508.prol, !llvm.loop !170

vec.epilog.scalar.ph508.prol.loopexit:            ; preds = %vec.epilog.scalar.ph508.prol, %vec.epilog.scalar.ph508.preheader
  %indvars.iv357.unr = phi i64 [ %indvars.iv357.ph, %vec.epilog.scalar.ph508.preheader ], [ %indvars.iv.next358.prol, %vec.epilog.scalar.ph508.prol ]
  %i.afj = sub nsw i64 %indvars.iv357.ph, %wide.trip.count355
  %i.afk = icmp ugt i64 %i.afj, -4
  br i1 %i.afk, label %._crit_edge312, label %vec.epilog.scalar.ph508

vec.epilog.scalar.ph508:                          ; preds = %vec.epilog.scalar.ph508.prol.loopexit, %vec.epilog.scalar.ph508
  %indvars.iv357 = phi i64 [ %indvars.iv.next358.3, %vec.epilog.scalar.ph508 ], [ %indvars.iv357.unr, %vec.epilog.scalar.ph508.prol.loopexit ] ; 6 uses
  %i.afl = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv357
  %i.afm = load float, ptr %i.afl, align 4, !tbaa !12
  %i.afn = fmul reassoc nsz arcp contract afn float %i.afm, 2.500000e-01
  %i.afo = mul nuw nsw i64 %indvars.iv357, %i.cz
  %i.afp = trunc nuw nsw i64 %i.afo to i32
  %i.afq = add i32 %i.aeb, %i.afp
  %i.afr = sext i32 %i.afq to i64
  %i.afs = getelementptr inbounds [4 x i8], ptr %.0233, i64 %i.afr
  store float %i.afn, ptr %i.afs, align 4, !tbaa !12
  %indvars.iv.next358 = add nuw nsw i64 %indvars.iv357, 1 ; 2 uses
  %i.aft = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next358
  %i.afu = load float, ptr %i.aft, align 4, !tbaa !12
  %i.afv = fmul reassoc nsz arcp contract afn float %i.afu, 2.500000e-01
  %i.afw = mul nuw nsw i64 %indvars.iv.next358, %i.cz
  %i.afx = trunc nuw nsw i64 %i.afw to i32
  %i.afy = add i32 %i.aeb, %i.afx
  %i.afz = sext i32 %i.afy to i64
  %i.aga = getelementptr inbounds [4 x i8], ptr %.0233, i64 %i.afz
  store float %i.afv, ptr %i.aga, align 4, !tbaa !12
  %indvars.iv.next358.1 = add nuw nsw i64 %indvars.iv357, 2 ; 2 uses
  %i.agb = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next358.1
  %i.agc = load float, ptr %i.agb, align 4, !tbaa !12
  %i.agd = fmul reassoc nsz arcp contract afn float %i.agc, 2.500000e-01
  %i.age = mul nuw nsw i64 %indvars.iv.next358.1, %i.cz
  %i.agf = trunc nuw nsw i64 %i.age to i32
  %i.agg = add i32 %i.aeb, %i.agf
  %i.agh = sext i32 %i.agg to i64
  %i.agi = getelementptr inbounds [4 x i8], ptr %.0233, i64 %i.agh
  store float %i.agd, ptr %i.agi, align 4, !tbaa !12
  %indvars.iv.next358.2 = add nuw nsw i64 %indvars.iv357, 3 ; 2 uses
  %i.agj = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next358.2
  %i.agk = load float, ptr %i.agj, align 4, !tbaa !12
  %i.agl = fmul reassoc nsz arcp contract afn float %i.agk, 2.500000e-01
  %i.agm = mul nuw nsw i64 %indvars.iv.next358.2, %i.cz
  %i.agn = trunc nuw nsw i64 %i.agm to i32
  %i.ago = add i32 %i.aeb, %i.agn
  %i.agp = sext i32 %i.ago to i64
  %i.agq = getelementptr inbounds [4 x i8], ptr %.0233, i64 %i.agp
  store float %i.agl, ptr %i.agq, align 4, !tbaa !12
  %indvars.iv.next358.3 = add nuw nsw i64 %indvars.iv357, 4 ; 2 uses
  %exitcond361.not.3 = icmp eq i64 %indvars.iv.next358.3, %wide.trip.count360
  br i1 %exitcond361.not.3, label %._crit_edge312, label %vec.epilog.scalar.ph508, !llvm.loop !171

._crit_edge312:                                   ; preds = %vec.epilog.scalar.ph508.prol.loopexit, %vec.epilog.scalar.ph508, %middle.block504, %vec.epilog.middle.block517, %_ZN6LibRaw13hat_transformEPfS0_iii.exit278
  %indvars.iv.next363 = add nuw nsw i64 %indvars.iv362, 1 ; 2 uses
  %exitcond366.not = icmp eq i64 %indvars.iv.next363, %wide.trip.count365
  br i1 %exitcond366.not, label %vector.memcheck, label %iter.check689, !llvm.loop !172

vector.memcheck:                                  ; preds = %._crit_edge312, %.preheader292
  %1 = load float, ptr %i.as, align 4, !tbaa !212
  %2 = getelementptr inbounds nuw [4 x i8], ptr @_ZZN6LibRaw15wavelet_denoiseEvE5noise, i64 %indvars.iv372
  %3 = load float, ptr %2, align 4, !tbaa !12
  %4 = fmul reassoc nsz arcp contract afn float %3, %1 ; 12 uses
  %5 = fneg reassoc nsz arcp contract afn float %4 ; 5 uses
  %.not254 = icmp ne i32 %.0229318, 0             ; 5 uses
  %6 = sext i32 %i.eu to i64                      ; 3 uses
  %7 = sext i32 %.0229318 to i64                  ; 2 uses
  %invariant.gep432 = getelementptr [4 x i8], ptr %.0233, i64 %6 ; 7 uses
  %invariant.gep434 = getelementptr [4 x i8], ptr %.0233, i64 %7 ; 7 uses
  %i.agr = shl nsw i64 %7, 2
  %scevgep447 = getelementptr i8, ptr %scevgep, i64 %i.agr ; 2 uses
  %i.ags = shl nsw i64 %6, 2
  %scevgep449 = getelementptr i8, ptr %scevgep448, i64 %i.ags ; 2 uses
  %bound0 = icmp ult ptr %invariant.gep434, %scevgep
  %bound1 = icmp ult ptr %.0233, %scevgep447
  %found.conflict = and i1 %bound0, %bound1
  %bound0450 = icmp ult ptr %invariant.gep434, %scevgep449
  %bound1451 = icmp ult ptr %invariant.gep432, %scevgep447
  %found.conflict452 = and i1 %bound0450, %bound1451
  %conflict.rdx = or i1 %found.conflict, %found.conflict452
  %bound0453 = icmp ult ptr %.0233, %scevgep449
  %bound1454 = icmp ult ptr %invariant.gep432, %scevgep
  %found.conflict455 = and i1 %bound0453, %bound1454
  %conflict.rdx456 = or i1 %conflict.rdx, %found.conflict455
  br i1 %conflict.rdx456, label %vec.epilog.scalar.ph.preheader, label %vector.ph460

vector.ph460:                                     ; preds = %vector.memcheck
  %i.agt = insertelement <8 x i1> poison, i1 %.not254, i64 0
  %i.agu = shufflevector <8 x i1> %i.agt, <8 x i1> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert462.a = insertelement <8 x float> poison, float %4, i64 0
  %broadcast.splat463.a = shufflevector <8 x float> %broadcast.splatinsert462.a, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %broadcast.splatinsert464 = insertelement <8 x float> poison, float %5, i64 0
  %broadcast.splat465 = shufflevector <8 x float> %broadcast.splatinsert464, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body466

vector.body466:                                   ; preds = %vector.body466, %vector.ph460
  %index467 = phi i64 [ 0, %vector.ph460 ], [ %index.next473, %vector.body466 ] ; 4 uses
  %i.agv = getelementptr [4 x i8], ptr %invariant.gep432, i64 %index467 ; 2 uses
  %i.agw = getelementptr i8, ptr %i.agv, i64 32
  %wide.load468.a = load <8 x float>, ptr %i.agv, align 4, !tbaa !12, !alias.scope !213
  %wide.load469.a = load <8 x float>, ptr %i.agw, align 4, !tbaa !12, !alias.scope !213
  %i.agx = getelementptr [4 x i8], ptr %invariant.gep434, i64 %index467 ; 3 uses
  %i.agy = getelementptr i8, ptr %i.agx, i64 32   ; 2 uses
  %wide.load470 = load <8 x float>, ptr %i.agx, align 4, !tbaa !12, !alias.scope !214, !noalias !215
  %wide.load471 = load <8 x float>, ptr %i.agy, align 4, !tbaa !12, !alias.scope !214, !noalias !215
  %i.agz = fsub reassoc nsz arcp contract afn <8 x float> %wide.load470, %wide.load468.a ; 4 uses
  %i.aha = fsub reassoc nsz arcp contract afn <8 x float> %wide.load471, %wide.load469.a ; 4 uses
  %i.ahb = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.agz, %broadcast.splat465
  %i.ahc = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.aha, %broadcast.splat465
  %i.ahd = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.agz, %broadcast.splat463.a
  %i.ahe = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.aha, %broadcast.splat463.a
  %i.ahf = fsub reassoc nsz arcp contract afn <8 x float> %i.agz, %broadcast.splat463.a
  %i.ahg = fsub reassoc nsz arcp contract afn <8 x float> %i.aha, %broadcast.splat463.a
  %i.ahh = select <8 x i1> %i.ahd, <8 x float> %i.ahf, <8 x float> zeroinitializer
  %i.ahi = select <8 x i1> %i.ahe, <8 x float> %i.ahg, <8 x float> zeroinitializer
  %i.ahj = fadd reassoc nsz arcp contract afn <8 x float> %i.agz, %broadcast.splat463.a
  %i.ahk = fadd reassoc nsz arcp contract afn <8 x float> %i.aha, %broadcast.splat463.a
  %i.ahl = select <8 x i1> %i.ahb, <8 x float> %i.ahj, <8 x float> %i.ahh ; 2 uses
  %i.ahm = select <8 x i1> %i.ahc, <8 x float> %i.ahk, <8 x float> %i.ahi ; 2 uses
  store <8 x float> %i.ahl, ptr %i.agx, align 4, !tbaa !12, !alias.scope !214, !noalias !215
  store <8 x float> %i.ahm, ptr %i.agy, align 4, !tbaa !12, !alias.scope !214, !noalias !215
  %i.ahn = getelementptr [4 x i8], ptr %.0233, i64 %index467 ; 3 uses
  %i.aho = getelementptr i8, ptr %i.ahn, i64 32   ; 2 uses
  %wide.masked.load = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.ahn, <8 x i1> %i.agu, <8 x float> poison), !tbaa !12, !alias.scope !216, !noalias !213
  %wide.masked.load472 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.aho, <8 x i1> %i.agu, <8 x float> poison), !tbaa !12, !alias.scope !216, !noalias !213
  %i.ahp = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.load, %i.ahl
  %i.ahq = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.load472, %i.ahm
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %i.ahp, ptr align 4 %i.ahn, <8 x i1> %i.agu), !tbaa !12, !alias.scope !216, !noalias !213
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %i.ahq, ptr align 4 %i.aho, <8 x i1> %i.agu), !tbaa !12, !alias.scope !216, !noalias !213
  %index.next473 = add nuw i64 %index467, 16      ; 2 uses
  %i.ahr = icmp eq i64 %index.next473, %n.vec461
  br i1 %i.ahr, label %middle.block474, label %vector.body466, !llvm.loop !177

middle.block474:                                  ; preds = %vector.body466
  br i1 %cmp.n475, label %.loopexit951, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block474
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !17

vec.epilog.ph:                                    ; preds = %vec.epilog.iter.check
  %i.ahs = insertelement <4 x i1> poison, i1 %.not254, i64 0
  %i.aht = shufflevector <4 x i1> %i.ahs, <4 x i1> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert479.a = insertelement <4 x float> poison, float %4, i64 0
  %broadcast.splat480.a = shufflevector <4 x float> %broadcast.splatinsert479.a, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert481 = insertelement <4 x float> poison, float %5, i64 0
  %broadcast.splat482 = shufflevector <4 x float> %broadcast.splatinsert481, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index483 = phi i64 [ %n.vec461, %vec.epilog.ph ], [ %index.next487, %vec.epilog.vector.body ] ; 4 uses
  %i.ahu = getelementptr [4 x i8], ptr %invariant.gep432, i64 %index483
  %wide.load484 = load <4 x float>, ptr %i.ahu, align 4, !tbaa !12, !alias.scope !213
  %i.ahv = getelementptr [4 x i8], ptr %invariant.gep434, i64 %index483 ; 2 uses
  %wide.load485 = load <4 x float>, ptr %i.ahv, align 4, !tbaa !12, !alias.scope !214, !noalias !215
  %i.ahw = fsub reassoc nsz arcp contract afn <4 x float> %wide.load485, %wide.load484 ; 4 uses
  %i.ahx = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.ahw, %broadcast.splat482
  %i.ahy = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.ahw, %broadcast.splat480.a
  %i.ahz = fsub reassoc nsz arcp contract afn <4 x float> %i.ahw, %broadcast.splat480.a
  %i.aia = select <4 x i1> %i.ahy, <4 x float> %i.ahz, <4 x float> zeroinitializer
  %i.aib = fadd reassoc nsz arcp contract afn <4 x float> %i.ahw, %broadcast.splat480.a
  %i.aic = select <4 x i1> %i.ahx, <4 x float> %i.aib, <4 x float> %i.aia ; 2 uses
  store <4 x float> %i.aic, ptr %i.ahv, align 4, !tbaa !12, !alias.scope !214, !noalias !215
  %i.aid = getelementptr [4 x i8], ptr %.0233, i64 %index483 ; 2 uses
  %wide.masked.load486 = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.aid, <4 x i1> %i.aht, <4 x float> poison), !tbaa !12, !alias.scope !216, !noalias !213
  %i.aie = fadd reassoc nsz arcp contract afn <4 x float> %wide.masked.load486, %i.aic
  tail call void @llvm.masked.store.v4f32.p0(<4 x float> %i.aie, ptr align 4 %i.aid, <4 x i1> %i.aht), !tbaa !12, !alias.scope !216, !noalias !213
  %index.next487 = add nuw i64 %index483, 4       ; 2 uses
  %i.aif = icmp eq i64 %index.next487, %n.vec476
  br i1 %i.aif, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !178

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n488, label %.loopexit951, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv367.ph = phi i64 [ 0, %vector.memcheck ], [ %n.vec461, %vec.epilog.iter.check ], [ %n.vec476, %vec.epilog.middle.block ] ; 6 uses
  br i1 %lcmp.mod985.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %gep433.prol = getelementptr [4 x i8], ptr %invariant.gep432, i64 %indvars.iv367.ph
  %i.aig = load float, ptr %gep433.prol, align 4, !tbaa !12
  %gep435.prol = getelementptr [4 x i8], ptr %invariant.gep434, i64 %indvars.iv367.ph ; 2 uses
  %i.aih = load float, ptr %gep435.prol, align 4, !tbaa !12
  %i.aii = fsub reassoc nsz arcp contract afn float %i.aih, %i.aig ; 4 uses
  %i.aij = fcmp reassoc nsz arcp contract afn olt float %i.aii, %5
  %i.aik = fcmp reassoc nsz arcp contract afn ogt float %i.aii, %4
  %i.ail = fsub reassoc nsz arcp contract afn float %i.aii, %4
  %spec.select442.prol = select i1 %i.aik, float %i.ail, float 0.000000e+00
  %i.aim = fadd reassoc nsz arcp contract afn float %i.aii, %4
  %.sink.prol = select i1 %i.aij, float %i.aim, float %spec.select442.prol ; 2 uses
  store float %.sink.prol, ptr %gep435.prol, align 4, !tbaa !12
  br i1 %.not254, label %bb.h, label %vec.epilog.scalar.ph.prol.loopexit.unr-lcssa

bb.h:                                             ; preds = %vec.epilog.scalar.ph.prol
  %i.ain = getelementptr inbounds nuw [4 x i8], ptr %.0233, i64 %indvars.iv367.ph ; 2 uses
  %i.aio = load float, ptr %i.ain, align 4, !tbaa !12
  %i.aip = fadd reassoc nsz arcp contract afn float %i.aio, %.sink.prol
  store float %i.aip, ptr %i.ain, align 4, !tbaa !12
  br label %vec.epilog.scalar.ph.prol.loopexit.unr-lcssa

vec.epilog.scalar.ph.prol.loopexit.unr-lcssa:     ; preds = %bb.h, %vec.epilog.scalar.ph.prol
  %indvars.iv.next368.prol = or disjoint i64 %indvars.iv367.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol.loopexit.unr-lcssa, %vec.epilog.scalar.ph.preheader
  %indvars.iv367.unr = phi i64 [ %indvars.iv367.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next368.prol, %vec.epilog.scalar.ph.prol.loopexit.unr-lcssa ]
  %i.aiq = icmp eq i64 %indvars.iv367.ph, %i.bd
  br i1 %i.aiq, label %.loopexit951, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %bb.k
  %indvars.iv367 = phi i64 [ %indvars.iv.next368.1, %bb.k ], [ %indvars.iv367.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %gep433 = getelementptr [4 x i8], ptr %invariant.gep432, i64 %indvars.iv367
  %i.air = load float, ptr %gep433, align 4, !tbaa !12
  %gep435 = getelementptr [4 x i8], ptr %invariant.gep434, i64 %indvars.iv367 ; 2 uses
  %i.ais = load float, ptr %gep435, align 4, !tbaa !12
  %i.ait = fsub reassoc nsz arcp contract afn float %i.ais, %i.air ; 4 uses
  %i.aiu = fcmp reassoc nsz arcp contract afn olt float %i.ait, %5
  %i.aiv = fcmp reassoc nsz arcp contract afn ogt float %i.ait, %4
  %i.aiw = fsub reassoc nsz arcp contract afn float %i.ait, %4
  %spec.select442 = select i1 %i.aiv, float %i.aiw, float 0.000000e+00
  %i.aix = fadd reassoc nsz arcp contract afn float %i.ait, %4
  %.sink = select i1 %i.aiu, float %i.aix, float %spec.select442 ; 2 uses
  store float %.sink, ptr %gep435, align 4, !tbaa !12
  br i1 %.not254, label %bb.i, label %vec.epilog.scalar.ph.1

bb.i:                                             ; preds = %vec.epilog.scalar.ph
  %i.aiy = getelementptr inbounds nuw [4 x i8], ptr %.0233, i64 %indvars.iv367 ; 2 uses
  %i.aiz = load float, ptr %i.aiy, align 4, !tbaa !12
  %i.aja = fadd reassoc nsz arcp contract afn float %i.aiz, %.sink
  store float %i.aja, ptr %i.aiy, align 4, !tbaa !12
  br label %vec.epilog.scalar.ph.1

vec.epilog.scalar.ph.1:                           ; preds = %vec.epilog.scalar.ph, %bb.i
  %indvars.iv.next368 = add nuw nsw i64 %indvars.iv367, 1 ; 3 uses
  %gep433.1 = getelementptr [4 x i8], ptr %invariant.gep432, i64 %indvars.iv.next368
  %i.ajb = load float, ptr %gep433.1, align 4, !tbaa !12
  %gep435.1 = getelementptr [4 x i8], ptr %invariant.gep434, i64 %indvars.iv.next368 ; 2 uses
  %i.ajc = load float, ptr %gep435.1, align 4, !tbaa !12
  %i.ajd = fsub reassoc nsz arcp contract afn float %i.ajc, %i.ajb ; 4 uses
  %i.aje = fcmp reassoc nsz arcp contract afn olt float %i.ajd, %5
  %i.ajf = fcmp reassoc nsz arcp contract afn ogt float %i.ajd, %4
  %i.ajg = fsub reassoc nsz arcp contract afn float %i.ajd, %4
  %spec.select442.1 = select i1 %i.ajf, float %i.ajg, float 0.000000e+00
  %i.ajh = fadd reassoc nsz arcp contract afn float %i.ajd, %4
  %.sink.1 = select i1 %i.aje, float %i.ajh, float %spec.select442.1 ; 2 uses
  store float %.sink.1, ptr %gep435.1, align 4, !tbaa !12
  br i1 %.not254, label %bb.j, label %bb.k

bb.j:                                             ; preds = %vec.epilog.scalar.ph.1
  %i.aji = getelementptr inbounds nuw [4 x i8], ptr %.0233, i64 %indvars.iv.next368 ; 2 uses
  %i.ajj = load float, ptr %i.aji, align 4, !tbaa !12
  %i.ajk = fadd reassoc nsz arcp contract afn float %i.ajj, %.sink.1
  store float %i.ajk, ptr %i.aji, align 4, !tbaa !12
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %vec.epilog.scalar.ph.1
  %indvars.iv.next368.1 = add nuw nsw i64 %indvars.iv367, 2 ; 2 uses
  %exitcond371.not.1 = icmp eq i64 %indvars.iv.next368.1, %wide.trip.count
  br i1 %exitcond371.not.1, label %.loopexit951, label %vec.epilog.scalar.ph, !llvm.loop !179

.loopexit951:                                     ; preds = %vec.epilog.scalar.ph.prol.loopexit, %bb.k, %vec.epilog.middle.block, %middle.block474
  %indvars.iv.next373 = add nuw nsw i64 %indvars.iv372, 1 ; 2 uses
  %exitcond375.not = icmp eq i64 %indvars.iv.next373, 5
  br i1 %exitcond375.not, label %.preheader293, label %bb.g, !llvm.loop !180

scalar.ph:                                        ; preds = %middle.block, %scalar.ph
  %indvars.iv376 = phi i64 [ %indvars.iv.next377, %scalar.ph ], [ %n.vec, %middle.block ] ; 4 uses
  %i.ajl = getelementptr inbounds nuw [4 x i8], ptr %.0233, i64 %indvars.iv376
  %i.ajm = load float, ptr %i.ajl, align 4, !tbaa !12
  %gep437 = getelementptr [4 x i8], ptr %invariant.gep436, i64 %indvars.iv376
  %i.ajn = load float, ptr %gep437, align 4, !tbaa !12
  %i.ajo = fadd reassoc nsz arcp contract afn float %i.ajn, %i.ajm ; 2 uses
  %i.ajp = fmul reassoc nsz arcp contract afn float %i.ajo, %i.ajo
  %i.ajq = fmul reassoc nsz arcp contract afn float %i.ajp, f0x37800000
  %i.ajr = fptosi float %i.ajq to i32
  %i.ajs = tail call i32 @llvm.umin.i32(i32 %i.ajr, i32 65535)
  %i.ajt = trunc nuw i32 %i.ajs to i16
  %gep320 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv376
  store i16 %i.ajt, ptr %gep320, align 2, !tbaa !82
  %indvars.iv.next377 = add nuw nsw i64 %indvars.iv376, 1 ; 2 uses
  %exitcond380.not = icmp eq i64 %indvars.iv.next377, %wide.trip.count
  br i1 %exitcond380.not, label %.loopexit952, label %scalar.ph, !llvm.loop !181

.loopexit952:                                     ; preds = %scalar.ph, %middle.block
  %indvars.iv.next382 = add nuw nsw i64 %indvars.iv381, 1 ; 2 uses
  %exitcond385.not = icmp eq i64 %indvars.iv.next382, %wide.trip.count384
  br i1 %exitcond385.not, label %._crit_edge323, label %iter.check936, !llvm.loop !182

._crit_edge323:                                   ; preds = %.loopexit952
  %i.aju = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ajv = load i32, ptr %i.aju, align 8, !tbaa !191 ; 8 uses
  %.not252 = icmp eq i32 %i.ajv, 0
  %brmerge = or i1 %i.an, %.not252
  br i1 %brmerge, label %.loopexit289, label %.preheader291

.preheader291:                                    ; preds = %._crit_edge323
  %i.ajw = getelementptr inbounds nuw i8, ptr %0, i64 153268 ; 3 uses
  %i.ajx = lshr i32 %i.ajv, 4
  %i.ajy = and i32 %i.ajx, 2                      ; 2 uses
  %i.ajz = zext nneg i32 %i.ajy to i64
  %i.aka = getelementptr inbounds nuw [4 x i8], ptr %i.ajw, i64 %i.ajz
  %i.akb = getelementptr inbounds nuw i8, ptr %i.aka, i64 4
  %i.akc = load float, ptr %i.akb, align 8, !tbaa !12 ; 2 uses
  %i.akd = and i32 %i.ajv, 2
  %i.ake = or disjoint i32 %i.akd, 1
  %i.akf = zext nneg i32 %i.ake to i64            ; 2 uses
  %i.akg = getelementptr inbounds nuw [4 x i8], ptr %i.ajw, i64 %i.akf
  %i.akh = load float, ptr %i.akg, align 8, !tbaa !12
  %i.aki = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.akf
  %i.akj = load i32, ptr %i.aki, align 4, !tbaa !79
  store i32 %i.akj, ptr %i.b, align 4, !tbaa !79
  %i.akk = lshr i32 %i.ajv, 8
  %i.akl = and i32 %i.akk, 2
  %i.akm = zext nneg i32 %i.akl to i64
  %i.akn = getelementptr inbounds nuw [4 x i8], ptr %i.ajw, i64 %i.akm
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akn, i64 4
  %i.akp = load float, ptr %i.ako, align 8, !tbaa !12
  %i.akq = insertelement <2 x float> poison, float %i.akc, i64 0
  %i.akr = insertelement <2 x float> %i.akq, float %i.akp, i64 1
  %i.aks = fmul reassoc nsz arcp contract afn <2 x float> %i.akr, splat (float 1.250000e-01)
  %i.akt = insertelement <2 x float> poison, float %i.akh, i64 0
  %i.aku = insertelement <2 x float> %i.akt, float %i.akc, i64 1
  %i.akv = fdiv reassoc nsz arcp contract afn <2 x float> %i.aks, %i.aku
  store <2 x float> %i.akv, ptr %i.a, align 8, !tbaa !12
  %i.akw = zext nneg i32 %i.ajy to i64
  %i.akx = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.akw
  %i.aky = getelementptr inbounds nuw i8, ptr %i.akx, i64 4
  %i.akz = load i32, ptr %i.aky, align 4, !tbaa !79
  %i.ala = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.akz, ptr %i.ala, align 4, !tbaa !79
  %i.alb = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 3 uses
  %i.alc = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ald = load i16, ptr %i.alc, align 4, !tbaa !85
  %i.ale = icmp ugt i16 %i.ald, 2
  br i1 %i.ale, label %.preheader.lr.ph, label %.loopexit289

.preheader.lr.ph:                                 ; preds = %.preheader291
  %i.alf = load i16, ptr %i.alb, align 2, !tbaa !86 ; 2 uses
  %i.alg = zext i16 %i.alf to i64                 ; 2 uses
  %.idx = shl nuw nsw i64 %i.alg, 2
  %i.alh = getelementptr inbounds nuw i8, ptr %.0233, i64 %.idx
  %i.ali = getelementptr inbounds nuw [2 x i8], ptr %.0233, i64 %i.alg
  %i.alj = getelementptr inbounds nuw i8, ptr %0, i64 381668 ; 2 uses
  %i.alk = getelementptr inbounds nuw i8, ptr %0, i64 5372
  %i.all = load float, ptr %i.alk, align 4, !tbaa !212
  %i.alm = fmul reassoc nsz arcp contract afn float %i.all, f0x3B000000 ; 4 uses
  %i.aln = fneg reassoc nsz arcp contract afn float %i.alm
  br label %.preheader

.loopexit287:                                     ; preds = %bb.m, %._crit_edge333
  %i.alo = phi i16 [ %i.ane, %._crit_edge333 ], [ %i.aql, %bb.m ]
  %i.alp = load i16, ptr %i.alc, align 4, !tbaa !85
  %i.alq = zext i16 %i.alp to i32
  %i.alr = add nsw i32 %i.alq, -1
  %i.als = icmp slt i32 %.pre409, %i.alr
  br i1 %i.als, label %.preheader, label %.loopexit289, !llvm.loop !183

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit287
  %i.alt = phi i16 [ %i.alf, %.preheader.lr.ph ], [ %i.alo, %.loopexit287 ] ; 3 uses
  %.sroa.10.0 = phi ptr [ %i.alh, %.preheader.lr.ph ], [ %.sroa.10.2, %.loopexit287 ] ; 2 uses
  %.sroa.6.0 = phi ptr [ %i.ali, %.preheader.lr.ph ], [ %.sroa.6.2, %.loopexit287 ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.0233, %.preheader.lr.ph ], [ %.sroa.0.2, %.loopexit287 ] ; 2 uses
  %.0338 = phi i32 [ -1, %.preheader.lr.ph ], [ %.1.lcssa, %.loopexit287 ] ; 3 uses
  %.3226337 = phi i32 [ 1, %.preheader.lr.ph ], [ %.pre409, %.loopexit287 ] ; 6 uses
  %.not253330 = icmp sgt i32 %.0338, %.3226337
  %.pre409 = add nuw i32 %.3226337, 1             ; 3 uses
  br i1 %.not253330, label %._crit_edge333, label %.lr.ph332

.loopexit:                                        ; preds = %bb.l, %.lr.ph332
  %i.alu = phi i16 [ %i.alw, %.lr.ph332 ], [ %i.anb, %bb.l ] ; 2 uses
  %i.alv = phi i16 [ %i.alx, %.lr.ph332 ], [ %i.anb, %bb.l ]
  %exitcond400.not = icmp eq i32 %.1331, %.3226337
  br i1 %exitcond400.not, label %._crit_edge333, label %.lr.ph332, !llvm.loop !184

.lr.ph332:                                        ; preds = %.preheader, %.loopexit
  %i.alw = phi i16 [ %i.alu, %.loopexit ], [ %i.alt, %.preheader ]
  %i.alx = phi i16 [ %i.alv, %.loopexit ], [ %i.alt, %.preheader ] ; 2 uses
  %.sroa.10.1 = phi ptr [ %.sroa.0.1, %.loopexit ], [ %.sroa.10.0, %.preheader ] ; 2 uses
  %.sroa.6.1 = phi ptr [ %.sroa.10.1, %.loopexit ], [ %.sroa.6.0, %.preheader ] ; 2 uses
  %.sroa.0.1 = phi ptr [ %.sroa.6.1, %.loopexit ], [ %.sroa.0.0, %.preheader ] ; 3 uses
  %.1331 = phi i32 [ %i.aly, %.loopexit ], [ %.0338, %.preheader ] ; 2 uses
  %i.aly = add nsw i32 %.1331, 1                  ; 3 uses
  %i.alz = shl i32 %i.aly, 1
  %i.ama = and i32 %i.alz, 14                     ; 2 uses
  %i.amb = shl nuw nsw i32 %i.ama, 1
  %i.amc = or disjoint i32 %i.amb, 2
  %i.amd = lshr i32 %i.ajv, %i.amc                ; 2 uses
  %i.ame = and i32 %i.amd, 1                      ; 2 uses
  %i.amf = zext i16 %i.alx to i32
  %i.amg = icmp samesign ult i32 %i.ame, %i.amf
  br i1 %i.amg, label %.lr.ph329, label %.loopexit

.lr.ph329:                                        ; preds = %.lr.ph332
  %i.amh = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.ami = and i32 %i.amd, 1
  %i.amj = zext nneg i32 %i.ami to i64
  %i.amk = or disjoint i32 %i.ame, %i.ama
  %i.aml = shl nuw nsw i32 %i.amk, 1
  %i.amm = lshr i32 %i.ajv, %i.aml
  %i.amn = and i32 %i.amm, 3
  %i.amo = zext nneg i32 %i.amn to i64
  %invariant.gep438 = getelementptr [2 x i8], ptr %i.amh, i64 %i.amo
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph329, %bb.l
  %indvars.iv397 = phi i64 [ %i.amj, %.lr.ph329 ], [ %indvars.iv.next398, %bb.l ] ; 3 uses
  %i.amp = load i16, ptr %i.alj, align 4, !tbaa !87
  %i.amq = zext i16 %i.amp to i32                 ; 2 uses
  %i.amr = ashr i32 %i.aly, %i.amq
  %i.ams = load i16, ptr %i.d, align 2, !tbaa !187
  %i.amt = zext i16 %i.ams to i32
  %i.amu = mul nsw i32 %i.amr, %i.amt
  %i.amv = trunc nuw nsw i64 %indvars.iv397 to i32
  %i.amw = lshr i32 %i.amv, %i.amq
  %i.amx = add nsw i32 %i.amu, %i.amw
  %i.amy = sext i32 %i.amx to i64
  %gep439 = getelementptr [8 x i8], ptr %invariant.gep438, i64 %i.amy
  %i.amz = load i16, ptr %gep439, align 2, !tbaa !82
  %i.ana = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.1, i64 %indvars.iv397
  store i16 %i.amz, ptr %i.ana, align 2, !tbaa !82
  %indvars.iv.next398 = add nuw nsw i64 %indvars.iv397, 2 ; 2 uses
  %i.anb = load i16, ptr %i.alb, align 2, !tbaa !86 ; 3 uses
  %i.anc = zext i16 %i.anb to i64
  %i.and = icmp samesign ult i64 %indvars.iv.next398, %i.anc
  br i1 %i.and, label %bb.l, label %.loopexit, !llvm.loop !185

._crit_edge333:                                   ; preds = %.loopexit, %.preheader
  %i.ane = phi i16 [ %i.alt, %.preheader ], [ %i.alu, %.loopexit ] ; 2 uses
  %.sroa.10.2 = phi ptr [ %.sroa.10.0, %.preheader ], [ %.sroa.0.1, %.loopexit ] ; 3 uses
  %.sroa.6.2 = phi ptr [ %.sroa.6.0, %.preheader ], [ %.sroa.10.1, %.loopexit ] ; 2 uses
  %.sroa.0.2 = phi ptr [ %.sroa.0.0, %.preheader ], [ %.sroa.6.1, %.loopexit ] ; 3 uses
  %.1.lcssa = phi i32 [ %.0338, %.preheader ], [ %.pre409, %.loopexit ]
  %i.anf = shl nuw nsw i32 %.3226337, 1
  %i.ang = and i32 %i.anf, 14                     ; 2 uses
  %i.anh = shl nuw nsw i32 %i.ang, 1
  %i.ani = lshr i32 %i.ajv, %i.anh                ; 3 uses
  %i.anj = and i32 %i.ani, 1
  %i.ank = add nuw nsw i32 %i.anj, 1
  %i.anl = zext i16 %i.ane to i32
  %i.anm = add nsw i32 %i.anl, -1
  %i.ann = icmp slt i32 %i.ank, %i.anm
  br i1 %i.ann, label %.lr.ph336, label %.loopexit287

.lr.ph336:                                        ; preds = %._crit_edge333
  %i.ano = and i32 %.3226337, 1                   ; 2 uses
  %i.anp = xor i32 %i.ano, 1
  %i.anq = zext nneg i32 %i.anp to i64
  %i.anr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.anq
  %i.ans = load i32, ptr %i.anr, align 4, !tbaa !79
  %i.ant = zext nneg i32 %i.ano to i64            ; 2 uses
  %i.anu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ant
  %i.anv = load float, ptr %i.anu, align 4, !tbaa !12
  %i.anw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ant
  %i.anx = load i32, ptr %i.anw, align 4, !tbaa !79
  %i.any = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.anz = and i32 %i.ani, 1
  %i.aoa = and i32 %i.ani, 1
  %narrow = add nuw nsw i32 %i.aoa, 1
  %i.aob = zext nneg i32 %narrow to i64
  %i.aoc = shl i32 %i.ans, 2
  %i.aod = or disjoint i32 %i.anz, %i.ang
  %i.aoe = shl nuw nsw i32 %i.aod, 1
  %i.aof = xor i32 %i.aoe, 2
  %i.aog = lshr i32 %i.ajv, %i.aof
  %i.aoh = and i32 %i.aog, 3
  %i.aoi = zext nneg i32 %i.aoh to i64
  %invariant.gep440 = getelementptr inbounds nuw [2 x i8], ptr %i.any, i64 %i.aoi
end_hunk_1

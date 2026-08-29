Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deconvolution_x86_avx512?download=true
inline.NumInlined: 20
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 115
begin_hunk_0_@_ZNK4ncnn24Deconvolution_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.3:bb.a
  %i.ey = sext i32 %i.k to i64
  %i.ez = add nsw i32 %i.j, 1
  %i.fa = zext nneg i32 %i.an to i64              ; 5 uses
  %min.iters.check = icmp ult i32 %i.an, 8
  %min.iters.check175 = icmp ult i32 %i.an, 64
  %i.fb = and i64 %i.fa, 56
  %n.vec = and i64 %i.fa, 2147483584              ; 5 uses
  %i.fc = trunc nuw nsw i64 %n.vec to i32
  %i.fd = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %n.vec, %i.fa
  %min.epilog.iters.check = icmp eq i64 %i.fb, 0
  %n.vec177 = and i64 %i.fa, 2147483640           ; 4 uses
  %i.fe = trunc nuw nsw i64 %n.vec177 to i32
  %i.ff = shl nuw nsw i64 %n.vec177, 2
  %cmp.n183 = icmp eq i64 %n.vec177, %i.fa
  br label %iter.check

.noexc44.us108.us.preheader:                      ; preds = %.noexc44.lr.ph.split.split.split.us
  %i.fg = zext nneg i32 %i.an to i64
  %i.fh = shl nuw nsw i64 %i.fg, 2                ; 9 uses
  %i.fi = sext i32 %i.k to i64                    ; 2 uses
  %i.fj = add nsw i32 %i.j, 1
  %i.fk = add i32 %i.j, 1
  %i.fl = sub i32 %i.fk, %i.k
  %i.fm = sub i32 %i.j, %i.k
  %xtraiter = and i32 %i.fl, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.noexc44.us108.us.prol.loopexit, label %.noexc44.us108.us.prol

.noexc44.us108.us.prol:                           ; preds = %.noexc44.us108.us.preheader, %.noexc44.us108.us.prol
  %indvars.iv127.prol = phi i64 [ %indvars.iv.next128.prol, %.noexc44.us108.us.prol ], [ %i.fi, %.noexc44.us108.us.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.noexc44.us108.us.prol ], [ 0, %.noexc44.us108.us.preheader ]
  %.reass87.us110.us.prol = mul i64 %factor.op.mul86, %indvars.iv127.prol
  %i.fn = getelementptr i8, ptr %i.s, i64 %.reass87.us110.us.prol
  call void @llvm.memset.p0.i64(ptr align 4 %i.fn, i8 0, i64 %i.fh, i1 false), !tbaa !39
  %indvars.iv.next128.prol = add nsw i64 %indvars.iv127.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.noexc44.us108.us.prol.loopexit, label %.noexc44.us108.us.prol, !llvm.loop !1271

.noexc44.us108.us.prol.loopexit:                  ; preds = %.noexc44.us108.us.prol, %.noexc44.us108.us.preheader
  %indvars.iv127.unr = phi i64 [ %i.fi, %.noexc44.us108.us.preheader ], [ %indvars.iv.next128.prol, %.noexc44.us108.us.prol ]
  %i.fo = icmp ult i32 %i.fm, 7
  br i1 %i.fo, label %._crit_edge, label %.noexc44.us108.us

.noexc44.us108.us:                                ; preds = %.noexc44.us108.us.prol.loopexit, %.noexc44.us108.us
  %indvars.iv127 = phi i64 [ %indvars.iv.next128.7, %.noexc44.us108.us ], [ %indvars.iv127.unr, %.noexc44.us108.us.prol.loopexit ] ; 9 uses
  %.reass87.us110.us = mul i64 %factor.op.mul86, %indvars.iv127
  %i.fp = getelementptr i8, ptr %i.s, i64 %.reass87.us110.us
  call void @llvm.memset.p0.i64(ptr align 4 %i.fp, i8 0, i64 %i.fh, i1 false), !tbaa !39
  %indvars.iv.next128 = add nsw i64 %indvars.iv127, 1
  %.reass87.us110.us.1 = mul i64 %factor.op.mul86, %indvars.iv.next128
  %i.fq = getelementptr i8, ptr %i.s, i64 %.reass87.us110.us.1
  call void @llvm.memset.p0.i64(ptr align 4 %i.fq, i8 0, i64 %i.fh, i1 false), !tbaa !39
  %indvars.iv.next128.1 = add nsw i64 %indvars.iv127, 2
  %.reass87.us110.us.2 = mul i64 %factor.op.mul86, %indvars.iv.next128.1
  %i.fr = getelementptr i8, ptr %i.s, i64 %.reass87.us110.us.2
  call void @llvm.memset.p0.i64(ptr align 4 %i.fr, i8 0, i64 %i.fh, i1 false), !tbaa !39
  %indvars.iv.next128.2 = add nsw i64 %indvars.iv127, 3
  %.reass87.us110.us.3 = mul i64 %factor.op.mul86, %indvars.iv.next128.2
  %i.fs = getelementptr i8, ptr %i.s, i64 %.reass87.us110.us.3
  call void @llvm.memset.p0.i64(ptr align 4 %i.fs, i8 0, i64 %i.fh, i1 false), !tbaa !39
  %indvars.iv.next128.3 = add nsw i64 %indvars.iv127, 4
  %.reass87.us110.us.4 = mul i64 %factor.op.mul86, %indvars.iv.next128.3
  %i.ft = getelementptr i8, ptr %i.s, i64 %.reass87.us110.us.4
  call void @llvm.memset.p0.i64(ptr align 4 %i.ft, i8 0, i64 %i.fh, i1 false), !tbaa !39
  %indvars.iv.next128.4 = add nsw i64 %indvars.iv127, 5
  %.reass87.us110.us.5 = mul i64 %factor.op.mul86, %indvars.iv.next128.4
  %i.fu = getelementptr i8, ptr %i.s, i64 %.reass87.us110.us.5
  call void @llvm.memset.p0.i64(ptr align 4 %i.fu, i8 0, i64 %i.fh, i1 false), !tbaa !39
  %indvars.iv.next128.5 = add nsw i64 %indvars.iv127, 6
  %.reass87.us110.us.6 = mul i64 %factor.op.mul86, %indvars.iv.next128.5
  %i.fv = getelementptr i8, ptr %i.s, i64 %.reass87.us110.us.6
  call void @llvm.memset.p0.i64(ptr align 4 %i.fv, i8 0, i64 %i.fh, i1 false), !tbaa !39
  %indvars.iv.next128.6 = add nsw i64 %indvars.iv127, 7
  %.reass87.us110.us.7 = mul i64 %factor.op.mul86, %indvars.iv.next128.6
  %i.fw = getelementptr i8, ptr %i.s, i64 %.reass87.us110.us.7
  call void @llvm.memset.p0.i64(ptr align 4 %i.fw, i8 0, i64 %i.fh, i1 false), !tbaa !39
  %indvars.iv.next128.7 = add nsw i64 %indvars.iv127, 8 ; 2 uses
  %lftr.wideiv130.7 = trunc i64 %indvars.iv.next128.7 to i32
  %exitcond131.not.7 = icmp eq i32 %i.fj, %lftr.wideiv130.7
  br i1 %exitcond131.not.7, label %._crit_edge, label %.noexc44.us108.us

iter.check:                                       ; preds = %.noexc44.us108.preheader, %._ZN4ncnn3Mat4fillEf.exit.preheader_crit_edge.us117
  %indvars.iv = phi i64 [ %i.ey, %.noexc44.us108.preheader ], [ %indvars.iv.next, %._ZN4ncnn3Mat4fillEf.exit.preheader_crit_edge.us117 ] ; 3 uses
  %.reass87.us110 = mul i64 %factor.op.mul86, %indvars.iv
  %i.fx = getelementptr inbounds nuw i8, ptr %i.s, i64 %.reass87.us110 ; 5 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !39 ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check175, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ga = getelementptr i8, ptr %i.fx, i64 %i.fd
  %broadcast.splatinsert = insertelement <16 x float> poison, float %i.fz, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gb = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.fx, i64 %i.gb ; 4 uses
  %i.gc = getelementptr i8, ptr %next.gep, i64 64
  %i.gd = getelementptr i8, ptr %next.gep, i64 128
  %i.ge = getelementptr i8, ptr %next.gep, i64 192
  store <16 x float> %broadcast.splat, ptr %next.gep, align 4, !tbaa !39
  store <16 x float> %broadcast.splat, ptr %i.gc, align 4, !tbaa !39
  store <16 x float> %broadcast.splat, ptr %i.gd, align 4, !tbaa !39
  store <16 x float> %broadcast.splat, ptr %i.ge, align 4, !tbaa !39
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.gf = icmp eq i64 %index.next, %n.vec
  br i1 %i.gf, label %middle.block, label %vector.body, !llvm.loop !1272

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._ZN4ncnn3Mat4fillEf.exit.preheader_crit_edge.us117, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !86

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.gg = getelementptr i8, ptr %i.fx, i64 %i.ff
  %broadcast.splatinsert178 = insertelement <8 x float> poison, float %i.fz, i64 0
  %broadcast.splat179 = shufflevector <8 x float> %broadcast.splatinsert178, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index180 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next182, %vec.epilog.vector.body ] ; 2 uses
  %i.gh = shl i64 %index180, 2
  %next.gep181 = getelementptr i8, ptr %i.fx, i64 %i.gh
  store <8 x float> %broadcast.splat179, ptr %next.gep181, align 4, !tbaa !39
  %index.next182 = add nuw i64 %index180, 8       ; 2 uses
  %i.gi = icmp eq i64 %index.next182, %n.vec177
  br i1 %i.gi, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1273

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n183, label %._ZN4ncnn3Mat4fillEf.exit.preheader_crit_edge.us117, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0.i55.us112.ph = phi i32 [ 0, %iter.check ], [ %i.fc, %vec.epilog.iter.check ], [ %i.fe, %vec.epilog.middle.block ]
  %.05.i54.us113.ph = phi ptr [ %i.fx, %iter.check ], [ %i.ga, %vec.epilog.iter.check ], [ %i.gg, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.0.i55.us112 = phi i32 [ %i.gk, %vec.epilog.scalar.ph ], [ %.0.i55.us112.ph, %vec.epilog.scalar.ph.preheader ]
  %.05.i54.us113 = phi ptr [ %i.gj, %vec.epilog.scalar.ph ], [ %.05.i54.us113.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.05.i54.us113, i64 4
  store float %i.fz, ptr %.05.i54.us113, align 4, !tbaa !39
  %i.gk = add nuw nsw i32 %.0.i55.us112, 1        ; 2 uses
  %exitcond.not = icmp eq i32 %i.gk, %i.an
  br i1 %exitcond.not, label %._ZN4ncnn3Mat4fillEf.exit.preheader_crit_edge.us117, label %vec.epilog.scalar.ph, !llvm.loop !1274

._ZN4ncnn3Mat4fillEf.exit.preheader_crit_edge.us117: ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond126.not = icmp eq i32 %i.ez, %lftr.wideiv
  br i1 %exitcond126.not, label %._crit_edge, label %iter.check

._crit_edge:                                      ; preds = %._ZN4ncnn3Mat4fillEf.exit.preheader_crit_edge.us117, %.noexc44.us108.us.prol.loopexit, %.noexc44.us108.us, %.noexc44.us98.prol.loopexit, %.noexc44.us98, %_ZN4ncnn3Mat4fillEf.exit._ZN4ncnn3MatD2Ev.exit_crit_edge.split.us, %.noexc44.lr.ph.split.split, %.noexc44.lr.ph.split.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4ncnnL20deconvolution_packedERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, ptr noundef nonnull align 8 dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %12) unnamed_addr #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 22 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 22 uses
  %i.d = alloca i32, align 4                      ; 22 uses
  %i.e = alloca i32, align 4                      ; 22 uses
  %i.f = alloca i32, align 4                      ; 22 uses
  %i.g = alloca i32, align 4                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %i.i = alloca i32, align 4                      ; 24 uses
  %i.j = alloca i32, align 4                      ; 24 uses
  %i.k = alloca i32, align 4                      ; 8 uses
  %i.l = alloca ptr, align 8                      ; 8 uses
  %i.m = alloca i32, align 4                      ; 8 uses
  %i.n = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 %4, ptr %i.a, align 4, !tbaa !78
  store i32 %5, ptr %i.b, align 4, !tbaa !78
  store i32 %6, ptr %i.c, align 4, !tbaa !78
  store i32 %7, ptr %i.d, align 4, !tbaa !78
  store i32 %8, ptr %i.e, align 4, !tbaa !78
  store i32 %9, ptr %i.f, align 4, !tbaa !78
  store i32 %10, ptr %i.g, align 4, !tbaa !78
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !77   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.r = load i32, ptr %i.q, align 8, !tbaa !79
  %i.s = mul nsw i32 %i.r, %i.p                   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #9
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 5 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !20
  %i.v = sext i32 %i.p to i64
  %i.w = mul i64 %i.u, %i.v
  store i64 %i.w, ptr %i.h, align 8, !tbaa !1275
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #9
  %i.x = add nsw i32 %4, -1
  %i.y = mul nsw i32 %6, %i.x
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.i, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #9
  %i.aa = add nsw i32 %5, -1
  %i.ab = mul nsw i32 %7, %i.aa
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %i.j, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #9
  %i.ad = mul nsw i32 %5, %4
  store i32 %i.ad, ptr %i.k, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #9
  %i.ae = load ptr, ptr %3, align 8, !tbaa !18
  store ptr %i.ae, ptr %i.l, align 8, !tbaa !1276
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #9
  %i.af = sdiv i32 %i.s, 16
  store i32 %i.af, ptr %i.m, align 4, !tbaa !78
  %i.ag = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !1225
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.n, i32 %i.ah)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 17, ptr nonnull @_ZN4ncnnL20deconvolution_packedERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined, ptr nonnull %i.m, ptr nonnull %0, ptr nonnull %1, ptr nonnull %i.l, ptr nonnull %2, ptr nonnull %i.b, ptr nonnull %i.d, ptr nonnull %i.j, ptr nonnull %i.f, ptr nonnull %i.a, ptr nonnull %i.c, ptr nonnull %i.i, ptr nonnull %i.e, ptr nonnull %i.k, ptr nonnull %i.g, ptr nonnull %11, ptr nonnull %i.h)
  %i.ai = load i32, ptr %i.m, align 4, !tbaa !78
  %i.aj = shl nsw i32 %i.ai, 4                    ; 3 uses
  %i.ak = sub nsw i32 %i.s, %i.aj                 ; 2 uses
  %i.al = sdiv i32 %i.ak, 8                       ; 3 uses
  store i32 %i.al, ptr %i.m, align 4, !tbaa !78
  %i.am = icmp sgt i32 %i.ak, 7
  br i1 %i.am, label %_ZN4ncnn3MatD2Ev.exit2274.lr.ph, label %._crit_edge6760

_ZN4ncnn3MatD2Ev.exit2274.lr.ph:                  ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 13 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 12 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %i.ay = sext i32 %i.aj to i64
  %wide.trip.count7804 = zext nneg i32 %i.al to i64
  br label %_ZN4ncnn3MatD2Ev.exit2274

._crit_edge6760:                                  ; preds = %._crit_edge6758.split, %bb.a
  %i.az = shl nsw i32 %i.al, 3
  %i.ba = add nsw i32 %i.az, %i.aj                ; 3 uses
  %i.bb = sub nsw i32 %i.s, %i.ba                 ; 2 uses
  %i.bc = sdiv i32 %i.bb, 4                       ; 3 uses
  store i32 %i.bc, ptr %i.m, align 4, !tbaa !78
  %i.bd = icmp sgt i32 %i.bb, 3
  br i1 %i.bd, label %_ZN4ncnn3MatD2Ev.exit2230.lr.ph, label %._crit_edge7053

_ZN4ncnn3MatD2Ev.exit2230.lr.ph:                  ; preds = %._crit_edge6760
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 13 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 12 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %i.bp = sext i32 %i.ba to i64
  %wide.trip.count7891 = zext nneg i32 %i.bc to i64
  br label %_ZN4ncnn3MatD2Ev.exit2230

_ZN4ncnn3MatD2Ev.exit2274:                        ; preds = %_ZN4ncnn3MatD2Ev.exit2274.lr.ph, %._crit_edge6758.split
  %indvars.iv7801 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit2274.lr.ph ], [ %indvars.iv.next7802, %._crit_edge6758.split ] ; 2 uses
  %i.bq = load i32, ptr %i.an, align 8, !tbaa !77
  %.fr = freeze i32 %i.bq                         ; 8 uses
  %i.br = load i32, ptr %i.ao, align 8, !tbaa !79
  %i.bs = mul i32 %i.br, %.fr                     ; 15 uses
  %i.bt = load i32, ptr %i.ap, align 4, !tbaa !58 ; 6 uses
  %i.bu = load i32, ptr %i.aq, align 8, !tbaa !1193 ; 5 uses
  %i.bv = load i32, ptr %i.ar, align 4, !tbaa !58 ; 2 uses
  %i.bw = load i32, ptr %i.as, align 8, !tbaa !1193 ; 2 uses
  %i.bx = load i32, ptr %i.o, align 8, !tbaa !77  ; 2 uses
  %i.by = icmp sgt i32 %i.bw, 0
  br i1 %i.by, label %.preheader6474.lr.ph, label %._crit_edge6758.split

.preheader6474.lr.ph:                             ; preds = %_ZN4ncnn3MatD2Ev.exit2274
  %i.bz = shl nuw nsw i64 %indvars.iv7801, 3
  %i.ca = add nsw i64 %i.bz, %i.ay                ; 2 uses
  %i.cb = trunc nsw i64 %i.ca to i32              ; 3 uses
  %i.cc = icmp sgt i32 %i.bv, 0
  %i.cd = load ptr, ptr %i.l, align 8             ; 2 uses
  %.not2121 = icmp eq ptr %i.cd, null
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.ca
  %i.cf = sdiv i32 %i.cb, 16
  %i.cg = srem i32 %i.cb, 16
  %i.ch = ashr exact i32 %i.cg, 3
  %i.ci = add nsw i32 %i.ch, %i.cf
  %i.cj = sext i32 %i.ci to i64
  %i.ck = icmp sgt i32 %i.bs, 15
  %i.cl = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %.fr)
  %i.cm = icmp eq i32 %i.cl, 1
  %i.cn = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.fr, i1 true)
  %i.co = icmp eq i32 %.fr, 1
  %i.cp = load i32, ptr %i.g, align 4
  br i1 %i.cc, label %.preheader6474.preheader, label %._crit_edge6758.split

.preheader6474.preheader:                         ; preds = %.preheader6474.lr.ph
  %i.cq = load ptr, ptr %1, align 8, !tbaa !18, !noalias !1278
  %i.cr = load i64, ptr %i.t, align 8, !tbaa !20, !noalias !1278
  %i.cs = sdiv i32 %i.cb, %i.bx
  %i.ct = sext i32 %i.cs to i64
  %i.cu = mul i64 %i.cr, %i.ct
  %i.cv = load i64, ptr %i.at, align 8, !tbaa !59, !noalias !1278
  %i.cw = mul i64 %i.cu, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cw
  %i.cy = add i32 %i.bs, -16                      ; 3 uses
  %i.cz = lshr i32 %i.cy, 2
  %i.da = and i32 %i.cz, 1073741820
  %narrow = add nuw nsw i32 %i.da, 4
  %i.db = zext nneg i32 %narrow to i64
  %i.dc = and i32 %i.cy, -16
  %i.dd = add i32 %i.dc, 16
  %i.de = sext i32 %i.bs to i64
  %i.df = and i32 %i.cy, -16
  %i.dg = add i32 %i.df, 16
  %invariant.op8364 = add nsw i64 %i.de, -15
  br label %.preheader6474

.preheader6474:                                   ; preds = %.preheader6474.preheader, %._crit_edge
  %.018066757 = phi ptr [ %.4, %._crit_edge ], [ %i.cx, %.preheader6474.preheader ]
  %.018076756 = phi i32 [ %.neg6398, %._crit_edge ], [ 0, %.preheader6474.preheader ]
  %i.dh = load i32, ptr %i.b, align 4             ; 6 uses
  %i.di = icmp sgt i32 %i.dh, 0                   ; 5 uses
  %.neg6398 = add nuw nsw i32 %.018076756, 1      ; 7 uses
  %i.dj = load i32, ptr %i.k, align 4             ; 5 uses
  %i.dk = shl i32 %i.dj, 7
  %i.dl = sext i32 %i.dk to i64                   ; 2 uses
  %i.dm = shl i32 %i.dj, 6
  %i.dn = sext i32 %i.dm to i64                   ; 2 uses
  %i.do = shl i32 %i.dj, 5
  %i.dp = sext i32 %i.do to i64                   ; 2 uses
  %i.dq = shl i32 %i.dj, 4
  %i.dr = sext i32 %i.dq to i64                   ; 3 uses
  %i.ds = shl nsw i32 %i.dj, 3
  %i.dt = sext i32 %i.ds to i64
  %i.du = load i64, ptr %i.h, align 8             ; 8 uses
  %.idx2122 = shl i64 %i.du, 3
  %.idx2123 = mul i64 %i.du, 12
  %.idx2124 = shl i64 %i.du, 4
  %.idx2125 = mul i64 %i.du, 20
  %.idx2126 = mul i64 %i.du, 24
  %.idx2127 = mul i64 %i.du, 28
  %i.dv = mul nsw i64 %i.db, %i.dl
  %wide.trip.count7730 = zext nneg i32 %i.dh to i64
  %wide.trip.count7744 = zext nneg i32 %i.dh to i64
  %wide.trip.count7764 = zext nneg i32 %i.dh to i64
  %wide.trip.count7781 = zext nneg i32 %i.dh to i64
  %wide.trip.count7794 = zext nneg i32 %i.dh to i64
  br label %bb.b

._crit_edge6758.split:                            ; preds = %._crit_edge, %.preheader6474.lr.ph, %_ZN4ncnn3MatD2Ev.exit2274
  %indvars.iv.next7802 = add nuw nsw i64 %indvars.iv7801, 1 ; 2 uses
  %exitcond7805.not = icmp eq i64 %indvars.iv.next7802, %wide.trip.count7804
  br i1 %exitcond7805.not, label %._crit_edge6760, label %_ZN4ncnn3MatD2Ev.exit2274, !llvm.loop !1281

._crit_edge:                                      ; preds = %.thread6283
  %exitcond7800.not = icmp eq i32 %.neg6398, %i.bw
  br i1 %exitcond7800.not, label %._crit_edge6758.split, label %.preheader6474, !llvm.loop !1282

bb.b:                                             ; preds = %.preheader6474, %.thread6283
  %.16755 = phi ptr [ %.018066757, %.preheader6474 ], [ %.4, %.thread6283 ] ; 15 uses
  %.018086754 = phi i32 [ 0, %.preheader6474 ], [ %i.bca, %.thread6283 ] ; 6 uses
  br i1 %.not2121, label %_ZN4ncnn3MatD2Ev.exit2273, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.dw = load <8 x float>, ptr %i.ce, align 1, !tbaa !1223
  br label %_ZN4ncnn3MatD2Ev.exit2273

_ZN4ncnn3MatD2Ev.exit2273:                        ; preds = %bb.c, %bb.b
  %.06074 = phi nsz <8 x float> [ zeroinitializer, %bb.b ], [ %i.dw, %bb.c ] ; 3 uses
  %i.dx = load ptr, ptr %2, align 8, !tbaa !18, !noalias !1283 ; 2 uses
  %i.dy = load i64, ptr %i.au, align 8, !tbaa !20, !noalias !1283
  %i.dz = mul i64 %i.dy, %i.cj
  %i.ea = load i64, ptr %i.av, align 8, !tbaa !59, !noalias !1283
  %i.eb = mul i64 %i.dz, %i.ea                    ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.eb ; 2 uses
  br i1 %i.ck, label %.preheader6469.lr.ph, label %.preheader6473

.preheader6469.lr.ph:                             ; preds = %_ZN4ncnn3MatD2Ev.exit2273
  %i.ed = load i32, ptr %i.j, align 4
  %invariant.op6497 = sub i32 %.neg6398, %i.ed
  %i.ee = load i32, ptr %i.f, align 4             ; 2 uses
  %i.ef = load i32, ptr %i.a, align 4
end_hunk_0
begin_hunk_1_@_ZN4ncnnL20deconvolution_packedERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a
.preheader6418.us.us.us:                          ; preds = %bb.cj
  %i.ecw = mul nuw nsw i64 %indvars.iv7980, %i.ebf
  %i.ecx = sext i32 %i.ebp to i64
  br label %bb.ck

._crit_edge7287.split.us.us.us:                   ; preds = %..loopexit6419_crit_edge.us.us.us
  %i.ecy = getelementptr inbounds [4 x i8], ptr %.418707298.us.us, i64 %i.dhm
  %indvars.iv.next7986 = add nuw nsw i64 %indvars.iv7985, 1 ; 2 uses
  %i.ecz = trunc nuw i64 %indvars.iv.next7986 to i32
  %i.eda = icmp sgt i32 %i.bck, %i.ecz
  br i1 %i.eda, label %.preheader6428.us.us, label %._crit_edge7301, !llvm.loop !1459

._crit_edge7301:                                  ; preds = %._crit_edge7287.split.us.us.us, %.preheader6428.lr.ph, %.preheader6433
  %i.edb = phi i32 [ %i.eau, %.preheader6433 ], [ %i.eau, %.preheader6428.lr.ph ], [ %i.ecu, %._crit_edge7287.split.us.us.us ] ; 3 uses
  %i.edc = phi <2 x float> [ %i.eav, %.preheader6433 ], [ %i.eav, %.preheader6428.lr.ph ], [ %i.ecv, %._crit_edge7287.split.us.us.us ] ; 12 uses
  switch i32 %i.dgx, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3144 [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3145.thread6295
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3145.thread6298
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3145.thread6292
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3145.thread6301
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3145.thread6304
    i32 6, label %bb.cn
  ]

_ZL13activation_ssfiRKN4ncnn3MatE.exit3145.thread6295: ; preds = %._crit_edge7301
  %i.edd = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.edc, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3144

_ZL13activation_ssfiRKN4ncnn3MatE.exit3145.thread6298: ; preds = %._crit_edge7301
  %i.ede = load ptr, ptr %11, align 8, !tbaa !18
  %i.edf = load float, ptr %i.ede, align 4, !tbaa !39
  %i.edg = fcmp fast ogt <2 x float> %i.edc, zeroinitializer
  %i.edh = insertelement <2 x float> poison, float %i.edf, i64 0
  %i.edi = shufflevector <2 x float> %i.edh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.edj = select <2 x i1> %i.edg, <2 x float> splat (float 1.000000e+00), <2 x float> %i.edi
  %i.edk = fmul fast <2 x float> %i.edj, %i.edc
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3144

_ZL13activation_ssfiRKN4ncnn3MatE.exit3145.thread6292: ; preds = %._crit_edge7301
  %i.edl = load ptr, ptr %11, align 8, !tbaa !18  ; 2 uses
  %i.edm = load float, ptr %i.edl, align 4, !tbaa !39 ; 2 uses
  %i.edn = getelementptr inbounds nuw i8, ptr %i.edl, i64 4
  %i.edo = load float, ptr %i.edn, align 4, !tbaa !39 ; 3 uses
  %i.edp = extractelement <2 x float> %i.edc, i64 0
  %spec.select = call nnan ninf nsz float @llvm.maxnum.f32(float %i.edp, float %i.edm) ; 2 uses
  %i.edq = fcmp fast ogt float %spec.select, %i.edo
  %.160646294 = select i1 %i.edq, float %i.edo, float %spec.select
  %i.edr = extractelement <2 x float> %i.edc, i64 1
  %.06065 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.edr, float %i.edm)
  %spec.select6319 = call nnan ninf nsz float @llvm.minnum.f32(float %.06065, float %i.edo)
  %i.eds = insertelement <2 x float> poison, float %.160646294, i64 0
  %i.edt = insertelement <2 x float> %i.eds, float %spec.select6319, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3144

_ZL13activation_ssfiRKN4ncnn3MatE.exit3145.thread6301: ; preds = %._crit_edge7301
  %i.edu = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.edc, <2 x float> splat (float f0x42B0C0A5))
  %i.edv = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.edu, <2 x float> splat (float f0xC2B0C0A5))
  %i.edw = fneg fast <2 x float> %i.edv
  %i.edx = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.edw)
  %i.edy = fadd fast <2 x float> %i.edx, splat (float 1.000000e+00)
  %i.edz = fdiv fast <2 x float> splat (float 1.000000e+00), %i.edy
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3144

_ZL13activation_ssfiRKN4ncnn3MatE.exit3145.thread6304: ; preds = %._crit_edge7301
  %i.eea = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.edc)
  %i.eeb = fadd fast <2 x float> %i.eea, splat (float 1.000000e+00)
  %i.eec = call fast <2 x float> @llvm.log.v2f32(<2 x float> %i.eeb)
  %i.eed = call fast <2 x float> @llvm.tanh.v2f32(<2 x float> %i.eec)
  %i.eee = fmul fast <2 x float> %i.eed, %i.edc
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3144

bb.cn:                                            ; preds = %._crit_edge7301
  %i.eef = load ptr, ptr %11, align 8, !tbaa !18  ; 2 uses
  %i.eeg = load float, ptr %i.eef, align 4, !tbaa !39 ; 5 uses
  %i.eeh = getelementptr inbounds nuw i8, ptr %i.eef, i64 4
  %i.eei = load float, ptr %i.eeh, align 4, !tbaa !39 ; 3 uses
  %i.eej = fneg fast float %i.eei
  %i.eek = fdiv fast float %i.eej, %i.eeg         ; 4 uses
  %i.eel = extractelement <2 x float> %i.edc, i64 0 ; 5 uses
  %i.eem = fcmp fast olt float %i.eel, %i.eek
  br i1 %i.eem, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3145.thread, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.een = fdiv fast float 1.000000e+00, %i.eeg
  %i.eeo = fadd fast float %i.eek, %i.een
  %i.eep = fcmp fast ogt float %i.eel, %i.eeo
  br i1 %i.eep, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3145.thread, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.eeq = fmul fast float %i.eeg, %i.eel
  %i.eer = fadd fast float %i.eeq, %i.eei
  %i.ees = fmul fast float %i.eer, %i.eel
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3145.thread

_ZL13activation_ssfiRKN4ncnn3MatE.exit3145.thread: ; preds = %bb.cp, %bb.co, %bb.cn
  %.160646288 = phi float [ %i.ees, %bb.cp ], [ 0.000000e+00, %bb.cn ], [ %i.eel, %bb.co ] ; 2 uses
  %i.eet = extractelement <2 x float> %i.edc, i64 1 ; 4 uses
  %i.eeu = fcmp fast olt float %i.eet, %i.eek
  %i.eev = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.160646288, i64 0 ; 2 uses
  br i1 %i.eeu, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3144, label %bb.cq

bb.cq:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit3145.thread
  %i.eew = fdiv fast float 1.000000e+00, %i.eeg
  %i.eex = fadd fast float %i.eek, %i.eew
  %i.eey = fcmp fast ogt float %i.eet, %i.eex
  %i.eez = insertelement <2 x float> %i.edc, float %.160646288, i64 0
  br i1 %i.eey, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3144, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.efa = fmul fast float %i.eeg, %i.eet
  %i.efb = fadd fast float %i.efa, %i.eei
  %i.efc = fmul fast float %i.efb, %i.eet
  %i.efd = insertelement <2 x float> %i.eev, float %i.efc, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3144

_ZL13activation_ssfiRKN4ncnn3MatE.exit3144:       ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit3145.thread6292, %._crit_edge7301, %_ZL13activation_ssfiRKN4ncnn3MatE.exit3145.thread, %_ZL13activation_ssfiRKN4ncnn3MatE.exit3145.thread6295, %_ZL13activation_ssfiRKN4ncnn3MatE.exit3145.thread6298, %_ZL13activation_ssfiRKN4ncnn3MatE.exit3145.thread6301, %_ZL13activation_ssfiRKN4ncnn3MatE.exit3145.thread6304, %bb.cq, %bb.cr
  %i.efe = phi <2 x float> [ %i.eev, %_ZL13activation_ssfiRKN4ncnn3MatE.exit3145.thread ], [ %i.edd, %_ZL13activation_ssfiRKN4ncnn3MatE.exit3145.thread6295 ], [ %i.edk, %_ZL13activation_ssfiRKN4ncnn3MatE.exit3145.thread6298 ], [ %i.edc, %._crit_edge7301 ], [ %i.edt, %_ZL13activation_ssfiRKN4ncnn3MatE.exit3145.thread6292 ], [ %i.edz, %_ZL13activation_ssfiRKN4ncnn3MatE.exit3145.thread6301 ], [ %i.eee, %_ZL13activation_ssfiRKN4ncnn3MatE.exit3145.thread6304 ], [ %i.efd, %bb.cr ], [ %i.eez, %bb.cq ] ; 2 uses
  %i.eff = extractelement <2 x float> %i.efe, i64 0
  store float %i.eff, ptr %.119087315, align 4, !tbaa !39
  %i.efg = extractelement <2 x float> %i.efe, i64 1
  store float %i.efg, ptr %.119067316, align 4, !tbaa !39
  %i.efh = getelementptr inbounds nuw i8, ptr %.119087315, i64 4 ; 2 uses
  %i.efi = getelementptr inbounds nuw i8, ptr %.119067316, i64 4 ; 2 uses
  %i.efj = add nuw nsw i32 %.019037317, 1         ; 2 uses
  %exitcond7988.not = icmp eq i32 %i.efj, %i.bcq
  br i1 %exitcond7988.not, label %._crit_edge7318, label %bb.bp, !llvm.loop !1460

._crit_edge7558.split:                            ; preds = %._crit_edge7556, %_ZN4ncnn3MatD2Ev.exit2167.lr.ph, %._crit_edge7326.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #9
  ret void

_ZN4ncnn3MatD2Ev.exit2167:                        ; preds = %_ZN4ncnn3MatD2Ev.exit2167.lr.ph.split.split, %._crit_edge7556
  %i.efk = phi i32 [ %i.des, %_ZN4ncnn3MatD2Ev.exit2167.lr.ph.split.split ], [ %i.ezv, %._crit_edge7556 ]
  %indvars.iv8092 = phi i64 [ %i.dfy, %_ZN4ncnn3MatD2Ev.exit2167.lr.ph.split.split ], [ %indvars.iv.next8093, %._crit_edge7556 ] ; 4 uses
  %.reass7560 = mul i64 %factor.op.mul7559, %indvars.iv8092
  %i.efl = getelementptr inbounds nuw i8, ptr %i.dez, i64 %.reass7560
  %i.efm = load ptr, ptr %i.l, align 8            ; 2 uses
  %.not = icmp eq ptr %i.efm, null
  %i.efn = getelementptr inbounds [4 x i8], ptr %i.efm, i64 %indvars.iv8092
  %i.efo = trunc nsw i64 %indvars.iv8092 to i32   ; 2 uses
  %i.efp = sdiv i32 %i.efo, 16
  %i.efq = insertelement <4 x i32> poison, i32 %i.efo, i64 0
  %i.efr = shufflevector <4 x i32> %i.efq, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.efs = srem <4 x i32> %i.efr, <i32 16, i32 8, i32 4, i32 2> ; 4 uses
  %i.eft = bitcast <4 x i32> %i.efs to <16 x i8>
  %.lhs.trunc6311 = extractelement <16 x i8> %i.eft, i64 0
  %i.efu = sdiv i8 %.lhs.trunc6311, 8
  %.sext6312 = sext i8 %i.efu to i32
  %i.efv = bitcast <4 x i32> %i.efs to <16 x i8>
  %.lhs.trunc6313 = extractelement <16 x i8> %i.efv, i64 4
  %i.efw = sdiv i8 %.lhs.trunc6313, 4
  %.sext6314 = sext i8 %i.efw to i32
  %i.efx = bitcast <4 x i32> %i.efs to <16 x i8>
  %.lhs.trunc6315 = extractelement <16 x i8> %i.efx, i64 8
  %i.efy = sdiv i8 %.lhs.trunc6315, 2
  %.sext6316 = sext i8 %i.efy to i32
  %i.efz = extractelement <4 x i32> %i.efs, i64 3
  %i.ega = add nsw i32 %i.efz, %i.efp
  %i.egb = add nsw i32 %i.ega, %.sext6312
  %i.egc = add nsw i32 %i.egb, %.sext6314
  %i.egd = add nsw i32 %i.egc, %.sext6316
  %i.ege = sext i32 %i.egd to i64
  %i.egf = load i32, ptr %i.g, align 4
  %.reass7563 = mul i64 %factor.op.mul7562, %i.ege
  %i.egg = getelementptr i8, ptr %i.dfo, i64 %.reass7563 ; 3 uses
  br label %.preheader6416

.preheader6416:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit2167, %._crit_edge7552
  %i.egh = phi i32 [ %i.efk, %_ZN4ncnn3MatD2Ev.exit2167 ], [ %i.ezv, %._crit_edge7552 ]
  %.018387555 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit2167 ], [ %.neg6338, %._crit_edge7552 ]
  %.018397554 = phi ptr [ %i.efl, %_ZN4ncnn3MatD2Ev.exit2167 ], [ %i.fbc, %._crit_edge7552 ]
  %i.egi = load i32, ptr %i.b, align 4            ; 6 uses
  %i.egj = icmp sgt i32 %i.egi, 0                 ; 5 uses
  %.neg6338 = add nuw nsw i32 %.018387555, 1      ; 7 uses
  %i.egk = load i32, ptr %i.k, align 4            ; 5 uses
  %i.egl = shl i32 %i.egk, 4
  %i.egm = sext i32 %i.egl to i64                 ; 2 uses
  %i.egn = shl i32 %i.egk, 3
  %i.ego = sext i32 %i.egn to i64                 ; 2 uses
  %i.egp = shl i32 %i.egk, 2
  %i.egq = sext i32 %i.egp to i64                 ; 3 uses
  %i.egr = shl i32 %i.egk, 1
  %i.egs = sext i32 %i.egr to i64                 ; 2 uses
  %i.egt = sext i32 %i.egk to i64
  %i.egu = mul nsw i64 %i.dfu, %i.egm
  %scevgep7996 = getelementptr i8, ptr %i.egg, i64 %i.egu
  %wide.trip.count8009 = zext nneg i32 %i.egi to i64
  %wide.trip.count8028 = zext nneg i32 %i.egi to i64
  %wide.trip.count8054 = zext nneg i32 %i.egi to i64
  %wide.trip.count8072 = zext nneg i32 %i.egi to i64
  %wide.trip.count8085 = zext nneg i32 %i.egi to i64
  br label %bb.cs

._crit_edge7556:                                  ; preds = %._crit_edge7552
  %indvars.iv.next8093 = add nsw i64 %indvars.iv8092, 1 ; 2 uses
  %13 = icmp slt i64 %indvars.iv.next8093, %i.dfz
  br i1 %13, label %_ZN4ncnn3MatD2Ev.exit2167, label %._crit_edge7558.split, !llvm.loop !1461

._crit_edge7552:                                  ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %exitcond8091.not = icmp eq i32 %.neg6338, %i.dey
  br i1 %exitcond8091.not, label %._crit_edge7556, label %.preheader6416, !llvm.loop !1462

bb.cs:                                            ; preds = %.preheader6416, %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %i.egv = phi i32 [ %i.egh, %.preheader6416 ], [ %i.ezv, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 3 uses
  %.018377551 = phi i32 [ 0, %.preheader6416 ], [ %i.fbd, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 6 uses
  %.118407550 = phi ptr [ %.018397554, %.preheader6416 ], [ %i.fbc, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 2 uses
  br i1 %.not, label %_ZN4ncnn3MatD2Ev.exit2166, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.egw = load float, ptr %i.efn, align 4, !tbaa !39
  br label %_ZN4ncnn3MatD2Ev.exit2166

_ZN4ncnn3MatD2Ev.exit2166:                        ; preds = %bb.ct, %bb.cs
  %.01832 = phi nsz float [ %i.egw, %bb.ct ], [ 0.000000e+00, %bb.cs ]
  br i1 %i.dff, label %.preheader6414.lr.ph, label %._crit_edge7367

.preheader6414.lr.ph:                             ; preds = %_ZN4ncnn3MatD2Ev.exit2166
  %i.egx = load i32, ptr %i.j, align 4
  %invariant.op7351 = sub i32 %.neg6338, %i.egx
  %i.egy = load i32, ptr %i.f, align 4            ; 2 uses
  %i.egz = load i32, ptr %i.a, align 4
  %.fr7591 = freeze i32 %i.egz                    ; 2 uses
  %i.eha = icmp sgt i32 %.fr7591, 0
  %i.ehb = load i32, ptr %i.i, align 4
  %.neg6340 = add nuw nsw i32 %.018377551, 1
  %invariant.op7342 = sub i32 %.neg6340, %i.ehb
  %i.ehc = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.egj, label %.preheader6414.us.preheader, label %._crit_edge7367

.preheader6414.us.preheader:                      ; preds = %.preheader6414.lr.ph
  %i.ehd = load i32, ptr %i.c, align 4
  %i.ehe = load i32, ptr %i.d, align 4
  %i.ehf = zext i32 %.fr7591 to i64               ; 2 uses
  br label %.preheader6414.us

.preheader6414.us:                                ; preds = %.preheader6414.us.preheader, %._crit_edge7349.us
  %i.ehg = phi i32 [ %i.egv, %.preheader6414.us.preheader ], [ %i.ehr, %._crit_edge7349.us ] ; 2 uses
  %indvars.iv8011 = phi i64 [ 0, %.preheader6414.us.preheader ], [ %indvars.iv.next8012, %._crit_edge7349.us ] ; 5 uses
  %.018277363.us = phi ptr [ %i.egg, %.preheader6414.us.preheader ], [ %i.ehs, %._crit_edge7349.us ] ; 2 uses
  %.061507362.us = phi <16 x float> [ zeroinitializer, %.preheader6414.us.preheader ], [ %.us-phi7360.us, %._crit_edge7349.us ] ; 2 uses
  %i.ehh = lshr exact i64 %indvars.iv8011, 4
  %i.ehi = lshr exact i64 %indvars.iv8011, 3      ; 3 uses
  %i.ehj = or disjoint i64 %i.ehi, 1              ; 2 uses
  %i.ehk = lshr exact i64 %indvars.iv8011, 2      ; 4 uses
  %i.ehl = or disjoint i64 %i.ehk, 1
  %i.ehm = or disjoint i64 %i.ehk, 2
  %i.ehn = or disjoint i64 %i.ehk, 3
  br i1 %i.eha, label %.lr.ph7348.split.us.us.preheader, label %._crit_edge7349.us

.lr.ph7348.split.us.us.preheader:                 ; preds = %.preheader6414.us
  %i.eho = insertelement <16 x i64> poison, i64 %indvars.iv8011, i64 0
  %i.ehp = shufflevector <16 x i64> %i.eho, <16 x i64> poison, <16 x i32> zeroinitializer
  %i.ehq = or disjoint <16 x i64> %i.ehp, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  br label %.lr.ph7348.split.us.us

._crit_edge7349.us:                               ; preds = %..loopexit6409_crit_edge.us.us, %.preheader6414.us
  %i.ehr = phi i32 [ %i.ehg, %.preheader6414.us ], [ %i.eia, %..loopexit6409_crit_edge.us.us ] ; 2 uses
  %.us-phi7360.us = phi <16 x float> [ %.061507362.us, %.preheader6414.us ], [ %.76157.us.us, %..loopexit6409_crit_edge.us.us ] ; 2 uses
  %i.ehs = getelementptr inbounds [4 x i8], ptr %.018277363.us, i64 %i.egm ; 2 uses
  %indvars.iv.next8012 = add nuw nsw i64 %indvars.iv8011, 16 ; 3 uses
  %i.eht = icmp slt i64 %indvars.iv.next8012, %invariant.op8367
  br i1 %i.eht, label %.preheader6414.us, label %._crit_edge7367.loopexit, !llvm.loop !1463

.lr.ph7348.split.us.us:                           ; preds = %.lr.ph7348.split.us.us.preheader, %..loopexit6409_crit_edge.us.us
  %i.ehu = phi i32 [ %i.ehg, %.lr.ph7348.split.us.us.preheader ], [ %i.eia, %..loopexit6409_crit_edge.us.us ] ; 4 uses
  %indvars.iv8006 = phi i64 [ 0, %.lr.ph7348.split.us.us.preheader ], [ %indvars.iv.next8007, %..loopexit6409_crit_edge.us.us ] ; 3 uses
  %.161517346.us.us = phi <16 x float> [ %.061507362.us, %.lr.ph7348.split.us.us.preheader ], [ %.76157.us.us, %..loopexit6409_crit_edge.us.us ] ; 4 uses
  %i.ehv = trunc i64 %indvars.iv8006 to i32
  %i.ehw = mul i32 %i.ehe, %i.ehv
  %.reass7352.us.us = add i32 %i.ehw, %invariant.op7351 ; 3 uses
  %i.ehx = icmp slt i32 %.reass7352.us.us, 0
  br i1 %i.ehx, label %..loopexit6409_crit_edge.us.us, label %bb.cu

bb.cu:                                            ; preds = %.lr.ph7348.split.us.us
  %i.ehy = srem i32 %.reass7352.us.us, %i.egy
  %i.ehz = sdiv i32 %.reass7352.us.us, %i.egy     ; 2 uses
  %.not2074.us.us = icmp eq i32 %i.ehy, 0
  %.not2075.us.us = icmp slt i32 %i.ehz, %i.deu
  %or.cond8635 = select i1 %.not2074.us.us, i1 %.not2075.us.us, i1 false
  br i1 %or.cond8635, label %.preheader6408.us.us, label %..loopexit6409_crit_edge.us.us

..loopexit6409_crit_edge.us.us:                   ; preds = %bb.cw, %.preheader6408.us.us, %bb.cu, %.lr.ph7348.split.us.us
  %i.eia = phi i32 [ %i.ehu, %.lr.ph7348.split.us.us ], [ %i.ehu, %bb.cu ], [ %i.ehu, %.preheader6408.us.us ], [ %i.emf, %bb.cw ] ; 2 uses
  %.76157.us.us = phi nsz <16 x float> [ %.161517346.us.us, %.lr.ph7348.split.us.us ], [ %.161517346.us.us, %bb.cu ], [ %.161517346.us.us, %.preheader6408.us.us ], [ %.66156.us.us.us, %bb.cw ] ; 2 uses
  %indvars.iv.next8007 = add nuw nsw i64 %indvars.iv8006, 1 ; 2 uses
  %exitcond8010.not = icmp eq i64 %indvars.iv.next8007, %wide.trip.count8009
  br i1 %exitcond8010.not, label %._crit_edge7349.us, label %.lr.ph7348.split.us.us, !llvm.loop !1464

.preheader6408.us.us:                             ; preds = %bb.cu
  %i.eib = mul nuw nsw i64 %indvars.iv8006, %i.ehf
  %i.eic = sext i32 %i.ehz to i64                 ; 4 uses
  br i1 %i.dfh, label %.lr.ph.split.us.us.us7378, label %..loopexit6409_crit_edge.us.us

.lr.ph.split.us.us.us7378:                        ; preds = %.preheader6408.us.us, %bb.cw
  %i.eid = phi i32 [ %i.emf, %bb.cw ], [ %i.ehu, %.preheader6408.us.us ] ; 3 uses
  %indvars.iv8001 = phi i64 [ %indvars.iv.next8002, %bb.cw ], [ 0, %.preheader6408.us.us ] ; 3 uses
  %.261527339.us.us.us = phi <16 x float> [ %.66156.us.us.us, %bb.cw ], [ %.161517346.us.us, %.preheader6408.us.us ] ; 7 uses
  %i.eie = trunc i64 %indvars.iv8001 to i32
  %i.eif = mul i32 %i.ehd, %i.eie
  %.reass7343.us.us.us = add i32 %i.eif, %invariant.op7342 ; 3 uses
  %i.eig = icmp slt i32 %.reass7343.us.us.us, 0
  br i1 %i.eig, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %.lr.ph.split.us.us.us7378
  %i.eih = srem i32 %.reass7343.us.us.us, %i.ehc
  %i.eii = sdiv i32 %.reass7343.us.us.us, %i.ehc  ; 6 uses
  %.not2076.us.us.us = icmp eq i32 %i.eih, 0
  %.not2077.us.us.us = icmp slt i32 %i.eii, %i.des
  %or.cond8636 = select i1 %.not2076.us.us.us, i1 %.not2077.us.us.us, i1 false
  br i1 %or.cond8636, label %.split2150.us.us.us, label %bb.cw

.split2150.us.us.us:                              ; preds = %bb.cv
  %i.eij = add nuw nsw i64 %i.eib, %indvars.iv8001
  %i.eik = shl i64 %i.eij, 4
  %i.eil = and i64 %i.eik, 4294967280
  %i.eim = getelementptr inbounds nuw [4 x i8], ptr %.018277363.us, i64 %i.eil ; 4 uses
  switch i32 %i.dfi, label %bb.cw [
    i32 4, label %_ZN4ncnn3MatD2Ev.exit2165.us.us.us
    i32 3, label %_ZN4ncnn3MatD2Ev.exit2164.us.us.us
    i32 2, label %.split2150.us.us.us._ZN4ncnn3MatD2Ev.exit2162.us.us.us_crit_edge
    i32 0, label %.split2150.us.us.us._ZN4ncnn3MatD2Ev.exit2158.us.us.us_crit_edge
  ]

.split2150.us.us.us._ZN4ncnn3MatD2Ev.exit2158.us.us.us_crit_edge: ; preds = %.split2150.us.us.us
  %.pre8153.a = load i32, ptr %i.der, align 4, !tbaa !58, !noalias !1465 ; 2 uses
  %.pre8154.a = load ptr, ptr %0, align 8, !tbaa !18, !noalias !1465
  %.pre8155 = load i64, ptr %i.dfj, align 8, !tbaa !20, !noalias !1465
  %.pre8156 = load i64, ptr %i.dfk, align 8, !tbaa !59, !noalias !1465 ; 2 uses
  %.pre8157 = load <16 x float>, ptr %i.eim, align 64, !tbaa !1223
  %.pre8169.a = sext i32 %.pre8153.a to i64
  %.pre8171 = mul nsw i64 %.pre8169.a, %i.eic
  %.pre8173 = mul i64 %.pre8171, %.pre8156
  br label %_ZN4ncnn3MatD2Ev.exit2158.us.us.us

.split2150.us.us.us._ZN4ncnn3MatD2Ev.exit2162.us.us.us_crit_edge: ; preds = %.split2150.us.us.us
  %.pre8148.a = load i32, ptr %i.der, align 4, !tbaa !58, !noalias !1468 ; 2 uses
  %.pre8149.a = load ptr, ptr %0, align 8, !tbaa !18, !noalias !1468
  %.pre8150 = load i64, ptr %i.dfj, align 8, !tbaa !20, !noalias !1468
  %.pre8151 = load i64, ptr %i.dfk, align 8, !tbaa !59, !noalias !1468 ; 2 uses
  %.pre8152 = load <16 x float>, ptr %i.eim, align 64, !tbaa !1223
  %.pre8163.a = sext i32 %.pre8148.a to i64
  %.pre8165 = mul nsw i64 %.pre8163.a, %i.eic
  %.pre8167 = mul i64 %.pre8165, %.pre8151
  br label %_ZN4ncnn3MatD2Ev.exit2162.us.us.us

_ZN4ncnn3MatD2Ev.exit2165.us.us.us:               ; preds = %.split2150.us.us.us
  %i.ein = load i32, ptr %i.der, align 4, !tbaa !58, !noalias !1471 ; 5 uses
  %i.eio = load ptr, ptr %0, align 8, !tbaa !18, !noalias !1471 ; 5 uses
  %i.eip = load i64, ptr %i.dfj, align 8, !tbaa !20, !noalias !1471 ; 5 uses
  %i.eiq = mul i64 %i.eip, %i.ehh
  %i.eir = load i64, ptr %i.dfk, align 8, !tbaa !59, !noalias !1471 ; 6 uses
  %i.eis = mul i64 %i.eiq, %i.eir
  %i.eit = getelementptr inbounds nuw i8, ptr %i.eio, i64 %i.eis
  %i.eiu = sext i32 %i.ein to i64
  %i.eiv = mul nsw i64 %i.eiu, %i.eic
  %i.eiw = mul i64 %i.eiv, %i.eir                 ; 5 uses
  %i.eix = getelementptr inbounds nuw i8, ptr %i.eit, i64 %i.eiw
  %i.eiy = shl nsw i32 %i.eii, 4
  %i.eiz = sext i32 %i.eiy to i64
  %i.eja = getelementptr inbounds [4 x i8], ptr %i.eix, i64 %i.eiz
  %i.ejb = load <16 x float>, ptr %i.eja, align 64, !tbaa !1223
  %i.ejc = load <16 x float>, ptr %i.eim, align 64, !tbaa !1223 ; 4 uses
  %i.ejd = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ejb, <16 x float> nofpclass(nan inf) %i.ejc, <16 x float> nofpclass(nan inf) %.261527339.us.us.us) ; 4 uses
  switch i32 %.fr7590, label %bb.cw [
    i32 8, label %_ZN4ncnn3MatD2Ev.exit2164.us.us.us.thread
    i32 4, label %_ZN4ncnn3MatD2Ev.exit2162.us.us.us
    i32 1, label %_ZN4ncnn3MatD2Ev.exit2158.us.us.us
  ]

_ZN4ncnn3MatD2Ev.exit2164.us.us.us.thread:        ; preds = %_ZN4ncnn3MatD2Ev.exit2165.us.us.us
  %i.eje = mul i64 %i.eip, %i.ehi
  %i.ejf = mul i64 %i.eje, %i.eir
  %i.ejg = getelementptr inbounds nuw i8, ptr %i.eio, i64 %i.ejf
  %i.ejh = getelementptr inbounds nuw i8, ptr %i.ejg, i64 %i.eiw
  %i.eji = shl nsw i32 %i.eii, 3
  %i.ejj = sext i32 %i.eji to i64                 ; 2 uses
  %i.ejk = getelementptr inbounds [4 x i8], ptr %i.ejh, i64 %i.ejj
  %i.ejl = mul i64 %i.eip, %i.ehj
  %i.ejm = mul i64 %i.ejl, %i.eir
  %i.ejn = getelementptr inbounds nuw i8, ptr %i.eio, i64 %i.ejm
  %i.ejo = getelementptr inbounds nuw i8, ptr %i.ejn, i64 %i.eiw
  %i.ejp = getelementptr inbounds [4 x i8], ptr %i.ejo, i64 %i.ejj
  %i.ejq = load <8 x float>, ptr %i.ejk, align 32, !tbaa !1223
  %i.ejr = load <8 x float>, ptr %i.ejp, align 32, !tbaa !1223
  %i.ejs = shufflevector <8 x float> %i.ejq, <8 x float> %i.ejr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ejt = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ejs, <16 x float> nofpclass(nan inf) %i.ejc, <16 x float> nofpclass(nan inf) %i.ejd)
  br label %bb.cw

_ZN4ncnn3MatD2Ev.exit2164.us.us.us:               ; preds = %.split2150.us.us.us
  %.pre8143 = load i32, ptr %i.der, align 4, !tbaa !58, !noalias !1474 ; 4 uses
  %.pre8144 = load ptr, ptr %0, align 8, !tbaa !18, !noalias !1474 ; 4 uses
  %.pre8145 = load i64, ptr %i.dfj, align 8, !tbaa !20, !noalias !1474 ; 4 uses
  %.pre8146 = load i64, ptr %i.dfk, align 8, !tbaa !59, !noalias !1474 ; 5 uses
  %.pre8147 = load <16 x float>, ptr %i.eim, align 64, !tbaa !1223 ; 3 uses
  %.pre8158 = sext i32 %.pre8143 to i64
  %.pre8159 = mul nsw i64 %.pre8158, %i.eic
  %.pre8161 = mul i64 %.pre8159, %.pre8146        ; 4 uses
end_hunk_1
begin_hunk_2_@_ZN4ncnnL43deconvolution_transform_kernel_packed_bf16sERKNS_3MatERS0_iiii:bb.a
bb.bb:                                            ; preds = %._crit_edge2344
  %i.dmx = atomicrmw add ptr %i.dmw, i32 -1 acq_rel, align 4
  %i.dmy = icmp eq i32 %i.dmx, 1
  br i1 %i.dmy, label %bb.bc, label %_ZN4ncnn3MatD2Ev.exit934

bb.bc:                                            ; preds = %bb.bb
  %i.dmz = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.dna = load ptr, ptr %i.dmz, align 8, !tbaa !17 ; 3 uses
  %.not3.i1082 = icmp eq ptr %i.dna, null
  %i.dnb = load ptr, ptr %7, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i1082, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.dnc = load ptr, ptr %i.dna, align 8, !tbaa !9
  %i.dnd = getelementptr inbounds nuw i8, ptr %i.dnc, i64 24
  %i.dne = load ptr, ptr %i.dnd, align 8
  invoke void %i.dne(ptr noundef nonnull align 8 dereferenceable(8) %i.dna, ptr noundef %i.dnb)
          to label %_ZN4ncnn3MatD2Ev.exit934 unwind label %bb.bg, !inline_history !19

bb.be:                                            ; preds = %bb.bc
  %.not.i1102 = icmp eq ptr %i.dnb, null
  br i1 %.not.i1102, label %_ZN4ncnn3MatD2Ev.exit934, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @free(ptr noundef nonnull %i.dnb) #9
  br label %_ZN4ncnn3MatD2Ev.exit934

bb.bg:                                            ; preds = %bb.bd
  %i.dnf = landingpad { ptr, i32 }
          catch ptr null
  %i.dng = extractvalue { ptr, i32 } %i.dnf, 0
  call void @__clang_call_terminate(ptr %i.dng) #23
  unreachable

_ZN4ncnn3MatD2Ev.exit934:                         ; preds = %bb.bb, %._crit_edge2344, %bb.bd, %bb.be, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  %i.dnh = load ptr, ptr %i.e, align 8, !tbaa !11 ; 2 uses
  %.not.i1085 = icmp eq ptr %i.dnh, null
  br i1 %.not.i1085, label %_ZN4ncnn3MatD2Ev.exit933, label %bb.bh

bb.bh:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit934
  %i.dni = atomicrmw add ptr %i.dnh, i32 -1 acq_rel, align 4
  %i.dnj = icmp eq i32 %i.dni, 1
  br i1 %i.dnj, label %bb.bi, label %_ZN4ncnn3MatD2Ev.exit933

bb.bi:                                            ; preds = %bb.bh
  %i.dnk = load ptr, ptr %i.f, align 8, !tbaa !17 ; 3 uses
  %.not3.i1086 = icmp eq ptr %i.dnk, null
  %i.dnl = load ptr, ptr %6, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i1086, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.dnm = load ptr, ptr %i.dnk, align 8, !tbaa !9
  %i.dnn = getelementptr inbounds nuw i8, ptr %i.dnm, i64 24
  %i.dno = load ptr, ptr %i.dnn, align 8
  invoke void %i.dno(ptr noundef nonnull align 8 dereferenceable(8) %i.dnk, ptr noundef %i.dnl)
          to label %_ZN4ncnn3MatD2Ev.exit933 unwind label %bb.bm, !inline_history !19

bb.bk:                                            ; preds = %bb.bi
  %.not.i1100 = icmp eq ptr %i.dnl, null
  br i1 %.not.i1100, label %_ZN4ncnn3MatD2Ev.exit933, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @free(ptr noundef nonnull %i.dnl) #9
  br label %_ZN4ncnn3MatD2Ev.exit933

bb.bm:                                            ; preds = %bb.bj
  %i.dnp = landingpad { ptr, i32 }
          catch ptr null
  %i.dnq = extractvalue { ptr, i32 } %i.dnp, 0
  call void @__clang_call_terminate(ptr %i.dnq) #23
  unreachable

_ZN4ncnn3MatD2Ev.exit933:                         ; preds = %bb.bh, %_ZN4ncnn3MatD2Ev.exit934, %bb.bj, %bb.bk, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %bb.bn

bb.bn:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit933, %bb.b
  ret void

bb.bo:                                            ; preds = %bb.h
  %i.dnr = atomicrmw add ptr %i.cd, i32 -1 acq_rel, align 4
  %i.dns = icmp eq i32 %i.dnr, 1
  br i1 %i.dns, label %bb.bp, label %_ZN4ncnn3MatD2Ev.exit932

bb.bp:                                            ; preds = %bb.bo
  %i.dnt = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.dnu = load ptr, ptr %i.dnt, align 8, !tbaa !17 ; 3 uses
  %.not3.i1090 = icmp eq ptr %i.dnu, null
  %i.dnv = load ptr, ptr %7, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i1090, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.dnw = load ptr, ptr %i.dnu, align 8, !tbaa !9
  %i.dnx = getelementptr inbounds nuw i8, ptr %i.dnw, i64 24
  %i.dny = load ptr, ptr %i.dnx, align 8
  invoke void %i.dny(ptr noundef nonnull align 8 dereferenceable(8) %i.dnu, ptr noundef %i.dnv)
          to label %_ZN4ncnn3MatD2Ev.exit932 unwind label %bb.bt, !inline_history !19

bb.br:                                            ; preds = %bb.bp
  %.not.i1098 = icmp eq ptr %i.dnv, null
  br i1 %.not.i1098, label %_ZN4ncnn3MatD2Ev.exit932, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @free(ptr noundef nonnull %i.dnv) #9
  br label %_ZN4ncnn3MatD2Ev.exit932

bb.bt:                                            ; preds = %bb.bq
  %i.dnz = landingpad { ptr, i32 }
          catch ptr null
  %i.doa = extractvalue { ptr, i32 } %i.dnz, 0
  call void @__clang_call_terminate(ptr %i.doa) #23
  unreachable

_ZN4ncnn3MatD2Ev.exit932:                         ; preds = %bb.bs, %bb.br, %bb.bq, %bb.h, %bb.bo, %bb.g
  %.pn926.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ca, %bb.g ], [ %i.cb, %bb.bo ], [ %i.cb, %bb.h ], [ %i.cb, %bb.bq ], [ %i.cb, %bb.br ], [ %i.cb, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  %i.dob = load ptr, ptr %i.e, align 8, !tbaa !11 ; 2 uses
  %.not.i1093 = icmp eq ptr %i.dob, null
  br i1 %.not.i1093, label %_ZN4ncnn3MatD2Ev.exit, label %bb.bu

bb.bu:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit932
  %i.doc = atomicrmw add ptr %i.dob, i32 -1 acq_rel, align 4
  %i.dod = icmp eq i32 %i.doc, 1
  br i1 %i.dod, label %bb.bv, label %_ZN4ncnn3MatD2Ev.exit

bb.bv:                                            ; preds = %bb.bu
  %i.doe = load ptr, ptr %i.f, align 8, !tbaa !17 ; 3 uses
  %.not3.i1094 = icmp eq ptr %i.doe, null
  %i.dof = load ptr, ptr %6, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i1094, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.dog = load ptr, ptr %i.doe, align 8, !tbaa !9
  %i.doh = getelementptr inbounds nuw i8, ptr %i.dog, i64 24
  %i.doi = load ptr, ptr %i.doh, align 8
  invoke void %i.doi(ptr noundef nonnull align 8 dereferenceable(8) %i.doe, ptr noundef %i.dof)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.bz, !inline_history !19

bb.bx:                                            ; preds = %bb.bv
  %.not.i1097 = icmp eq ptr %i.dof, null
  br i1 %.not.i1097, label %_ZN4ncnn3MatD2Ev.exit, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @free(ptr noundef nonnull %i.dof) #9
  br label %_ZN4ncnn3MatD2Ev.exit

bb.bz:                                            ; preds = %bb.bw
  %i.doj = landingpad { ptr, i32 }
          catch ptr null
  %i.dok = extractvalue { ptr, i32 } %i.doj, 0
  call void @__clang_call_terminate(ptr %i.dok) #23
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.bu, %_ZN4ncnn3MatD2Ev.exit932, %bb.bw, %bb.bx, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  resume { ptr, i32 } %.pn926.pn.pn.pn.pn
}

declare noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_bf16Ev() local_unnamed_addr #1

declare void @_ZN4ncnn54deconvolution_transform_kernel_packed_bf16s_avx512bf16ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, ptr noundef nonnull align 8 dereferenceable(72) %11, ptr noundef nonnull align 8 dereferenceable(64) %12) unnamed_addr #17 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 22 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 22 uses
  %i.d = alloca i32, align 4                      ; 22 uses
  %i.e = alloca i32, align 4                      ; 22 uses
  %i.f = alloca i32, align 4                      ; 22 uses
  %i.g = alloca i32, align 4                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 7 uses
  %i.i = alloca i32, align 4                      ; 24 uses
  %i.j = alloca i32, align 4                      ; 24 uses
  %i.k = alloca i32, align 4                      ; 8 uses
  %i.l = alloca ptr, align 8                      ; 8 uses
  %i.m = alloca i32, align 4                      ; 8 uses
  %i.n = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 %4, ptr %i.a, align 4, !tbaa !78
  store i32 %5, ptr %i.b, align 4, !tbaa !78
  store i32 %6, ptr %i.c, align 4, !tbaa !78
  store i32 %7, ptr %i.d, align 4, !tbaa !78
  store i32 %8, ptr %i.e, align 4, !tbaa !78
  store i32 %9, ptr %i.f, align 4, !tbaa !78
  store i32 %10, ptr %i.g, align 4, !tbaa !78
  %i.o = tail call noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_bf16Ev()
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4ncnn37deconvolution_packed_bf16s_avx512bf16ERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, ptr noundef nonnull align 8 dereferenceable(72) %11, ptr noundef nonnull align 8 dereferenceable(64) %12)
  br label %bb.ea

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !77   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.s = load i32, ptr %i.r, align 8, !tbaa !79
  %i.t = mul nsw i32 %i.s, %i.q                   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #9
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 5 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !20
  %i.w = sext i32 %i.q to i64
  %i.x = mul i64 %i.v, %i.w
  store i64 %i.x, ptr %i.h, align 8, !tbaa !1275
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #9
  %i.y = add nsw i32 %4, -1
  %i.z = mul nsw i32 %i.y, %6
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.i, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #9
  %i.ab = add nsw i32 %5, -1
  %i.ac = mul nsw i32 %i.ab, %7
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.j, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #9
  %i.ae = mul nsw i32 %5, %4
  store i32 %i.ae, ptr %i.k, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #9
  %i.af = load ptr, ptr %3, align 8, !tbaa !18
  store ptr %i.af, ptr %i.l, align 8, !tbaa !1276
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #9
  %i.ag = sdiv i32 %i.t, 16
  store i32 %i.ag, ptr %i.m, align 4, !tbaa !78
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !1225
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.n, i32 %i.ai)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 17, ptr nonnull @_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined, ptr nonnull %i.m, ptr nonnull %0, ptr nonnull %1, ptr nonnull %i.l, ptr nonnull %2, ptr nonnull %i.b, ptr nonnull %i.d, ptr nonnull %i.j, ptr nonnull %i.f, ptr nonnull %i.a, ptr nonnull %i.c, ptr nonnull %i.i, ptr nonnull %i.e, ptr nonnull %i.k, ptr nonnull %i.g, ptr nonnull %11, ptr nonnull %i.h)
  %i.aj = load i32, ptr %i.m, align 4, !tbaa !78
  %i.ak = shl nsw i32 %i.aj, 4                    ; 3 uses
  %i.al = sub nsw i32 %i.t, %i.ak                 ; 2 uses
  %i.am = sdiv i32 %i.al, 8                       ; 3 uses
  store i32 %i.am, ptr %i.m, align 4, !tbaa !78
  %i.an = icmp sgt i32 %i.al, 7
  br i1 %i.an, label %_ZN4ncnn3MatD2Ev.exit2344.lr.ph, label %._crit_edge7356

_ZN4ncnn3MatD2Ev.exit2344.lr.ph:                  ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 13 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 12 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %i.az = sext i32 %i.ak to i64
  %wide.trip.count8400 = zext nneg i32 %i.am to i64
  br label %_ZN4ncnn3MatD2Ev.exit2344

._crit_edge7356:                                  ; preds = %._crit_edge7354.split, %bb.c
  %i.ba = shl nsw i32 %i.am, 3
  %i.bb = add nsw i32 %i.ba, %i.ak                ; 3 uses
  %i.bc = sub nsw i32 %i.t, %i.bb                 ; 2 uses
  %i.bd = sdiv i32 %i.bc, 4                       ; 3 uses
  store i32 %i.bd, ptr %i.m, align 4, !tbaa !78
  %i.be = icmp sgt i32 %i.bc, 3
  br i1 %i.be, label %_ZN4ncnn3MatD2Ev.exit2284.lr.ph, label %._crit_edge7649

_ZN4ncnn3MatD2Ev.exit2284.lr.ph:                  ; preds = %._crit_edge7356
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 13 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 12 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %i.bq = sext i32 %i.bb to i64
  %wide.trip.count8487 = zext nneg i32 %i.bd to i64
  br label %_ZN4ncnn3MatD2Ev.exit2284

_ZN4ncnn3MatD2Ev.exit2344:                        ; preds = %_ZN4ncnn3MatD2Ev.exit2344.lr.ph, %._crit_edge7354.split
  %indvars.iv8397 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit2344.lr.ph ], [ %indvars.iv.next8398, %._crit_edge7354.split ] ; 2 uses
  %i.br = load i32, ptr %i.ao, align 8, !tbaa !77
  %.fr = freeze i32 %i.br                         ; 8 uses
  %i.bs = load i32, ptr %i.ap, align 8, !tbaa !79
  %i.bt = mul i32 %i.bs, %.fr                     ; 15 uses
  %i.bu = load i32, ptr %i.aq, align 4, !tbaa !58 ; 6 uses
  %i.bv = load i32, ptr %i.ar, align 8, !tbaa !1193 ; 5 uses
  %i.bw = load i32, ptr %i.as, align 4, !tbaa !58 ; 2 uses
  %i.bx = load i32, ptr %i.at, align 8, !tbaa !1193 ; 2 uses
  %i.by = load i32, ptr %i.p, align 8, !tbaa !77  ; 2 uses
  %i.bz = icmp sgt i32 %i.bx, 0
  br i1 %i.bz, label %.preheader7070.lr.ph, label %._crit_edge7354.split

.preheader7070.lr.ph:                             ; preds = %_ZN4ncnn3MatD2Ev.exit2344
  %i.ca = shl nuw nsw i64 %indvars.iv8397, 3
  %i.cb = add nsw i64 %i.ca, %i.az                ; 2 uses
  %i.cc = trunc nsw i64 %i.cb to i32              ; 3 uses
  %i.cd = icmp sgt i32 %i.bw, 0
  %i.ce = sdiv i32 %i.cc, 16
  %i.cf = srem i32 %i.cc, 16
  %i.cg = ashr exact i32 %i.cf, 3
  %i.ch = add nsw i32 %i.cg, %i.ce
  %i.ci = sext i32 %i.ch to i64
  %i.cj = icmp sgt i32 %i.bt, 15
  %i.ck = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %.fr)
  %i.cl = icmp eq i32 %i.ck, 1
  %i.cm = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.fr, i1 true)
  %i.cn = icmp eq i32 %.fr, 1
  %i.co = load i32, ptr %i.g, align 4
  br i1 %i.cd, label %.preheader7070.preheader, label %._crit_edge7354.split

.preheader7070.preheader:                         ; preds = %.preheader7070.lr.ph
  %i.cp = load ptr, ptr %1, align 8, !tbaa !18, !noalias !1676
  %i.cq = load i64, ptr %i.u, align 8, !tbaa !20, !noalias !1676
  %i.cr = sdiv i32 %i.cc, %i.by
  %i.cs = sext i32 %i.cr to i64
  %i.ct = mul i64 %i.cq, %i.cs
  %i.cu = load i64, ptr %i.au, align 8, !tbaa !59, !noalias !1676
  %i.cv = mul i64 %i.ct, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cv
  %i.cx = add i32 %i.bt, -16                      ; 3 uses
  %i.cy = lshr i32 %i.cx, 3
  %i.cz = and i32 %i.cy, 536870910
  %narrow = add nuw nsw i32 %i.cz, 2
  %i.da = zext nneg i32 %narrow to i64
  %i.db = and i32 %i.cx, -16
  %i.dc = add i32 %i.db, 16
  %i.dd = sext i32 %i.bt to i64
  %i.de = and i32 %i.cx, -16
  %i.df = add i32 %i.de, 16
  %invariant.op9055 = add nsw i64 %i.dd, -15
  br label %.preheader7070

.preheader7070:                                   ; preds = %.preheader7070.preheader, %._crit_edge
  %.018147353 = phi ptr [ %.4, %._crit_edge ], [ %i.cw, %.preheader7070.preheader ]
  %.018157352 = phi i32 [ %.neg6994, %._crit_edge ], [ 0, %.preheader7070.preheader ]
  %i.dg = load i32, ptr %i.b, align 4             ; 6 uses
  %i.dh = icmp sgt i32 %i.dg, 0                   ; 5 uses
  %.neg6994 = add nuw nsw i32 %.018157352, 1      ; 7 uses
  %i.di = load i32, ptr %i.k, align 4             ; 5 uses
  %i.dj = shl i32 %i.di, 7
  %i.dk = sext i32 %i.dj to i64                   ; 2 uses
  %i.dl = shl i32 %i.di, 6
  %i.dm = sext i32 %i.dl to i64                   ; 2 uses
  %i.dn = shl i32 %i.di, 5
  %i.do = sext i32 %i.dn to i64                   ; 2 uses
  %i.dp = shl i32 %i.di, 4
  %i.dq = sext i32 %i.dp to i64                   ; 3 uses
  %i.dr = shl nsw i32 %i.di, 3
  %i.ds = sext i32 %i.dr to i64
  %i.dt = mul nsw i64 %i.da, %i.dk
  %wide.trip.count8326 = zext nneg i32 %i.dg to i64
  %wide.trip.count8340 = zext nneg i32 %i.dg to i64
  %wide.trip.count8360 = zext nneg i32 %i.dg to i64
  %wide.trip.count8377 = zext nneg i32 %i.dg to i64
  %wide.trip.count8390 = zext nneg i32 %i.dg to i64
  br label %bb.d

._crit_edge7354.split:                            ; preds = %._crit_edge, %.preheader7070.lr.ph, %_ZN4ncnn3MatD2Ev.exit2344
  %indvars.iv.next8398 = add nuw nsw i64 %indvars.iv8397, 1 ; 2 uses
  %exitcond8401.not = icmp eq i64 %indvars.iv.next8398, %wide.trip.count8400
  br i1 %exitcond8401.not, label %._crit_edge7356, label %_ZN4ncnn3MatD2Ev.exit2344, !llvm.loop !1679

._crit_edge:                                      ; preds = %.thread6878
  %exitcond8396.not = icmp eq i32 %.neg6994, %i.bx
  br i1 %exitcond8396.not, label %._crit_edge7354.split, label %.preheader7070, !llvm.loop !1680

bb.d:                                             ; preds = %.preheader7070, %.thread6878
  %.17351 = phi ptr [ %.018147353, %.preheader7070 ], [ %.4, %.thread6878 ] ; 15 uses
  %.018167350 = phi i32 [ 0, %.preheader7070 ], [ %i.bxv, %.thread6878 ] ; 6 uses
  %i.du = load ptr, ptr %i.l, align 8, !tbaa !1276 ; 2 uses
  %.not2160 = icmp eq ptr %i.du, null
  br i1 %.not2160, label %_ZN4ncnn3MatD2Ev.exit2343, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.cb
  %i.dw = load <8 x float>, ptr %i.dv, align 1, !tbaa !1223
  br label %_ZN4ncnn3MatD2Ev.exit2343

_ZN4ncnn3MatD2Ev.exit2343:                        ; preds = %bb.e, %bb.d
  %.06670 = phi nsz <8 x float> [ zeroinitializer, %bb.d ], [ %i.dw, %bb.e ] ; 3 uses
  %i.dx = load ptr, ptr %2, align 8, !tbaa !18, !noalias !1681 ; 2 uses
  %i.dy = load i64, ptr %i.av, align 8, !tbaa !20, !noalias !1681
  %i.dz = mul i64 %i.dy, %i.ci
  %i.ea = load i64, ptr %i.aw, align 8, !tbaa !59, !noalias !1681
  %i.eb = mul i64 %i.dz, %i.ea                    ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.eb ; 2 uses
  br i1 %i.cj, label %.preheader7065.lr.ph, label %.preheader7069

.preheader7065.lr.ph:                             ; preds = %_ZN4ncnn3MatD2Ev.exit2343
  %i.ed = load i32, ptr %i.j, align 4
  %invariant.op7093 = sub i32 %.neg6994, %i.ed
  %i.ee = load i32, ptr %i.f, align 4             ; 2 uses
  %i.ef = load i32, ptr %i.a, align 4
  %.fr8166 = freeze i32 %i.ef                     ; 2 uses
  %i.eg = icmp sgt i32 %.fr8166, 0
  %i.eh = load i32, ptr %i.i, align 4
  %.neg6996 = add nuw nsw i32 %.018167350, 1
  %invariant.op = sub i32 %.neg6996, %i.eh
  %i.ei = load i32, ptr %i.e, align 4             ; 2 uses
  br i1 %i.dh, label %.preheader7065.us.preheader, label %.preheader7065.preheader
end_hunk_2
begin_hunk_3_@_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a
.preheader7014.us.us.us:                          ; preds = %bb.cl
  %i.fyq = mul nuw nsw i64 %indvars.iv8576, %i.fwy
  %i.fyr = sext i32 %i.fxg to i64
  br label %bb.cm

._crit_edge7883.split.us.us.us:                   ; preds = %..loopexit7015_crit_edge.us.us.us
  %i.fys = getelementptr inbounds [2 x i8], ptr %.419047894.us.us, i64 %i.exs
  %indvars.iv.next8582 = add nuw nsw i64 %indvars.iv8581, 1 ; 2 uses
  %i.fyt = trunc nuw i64 %indvars.iv.next8582 to i32
  %i.fyu = icmp sgt i32 %i.byf, %i.fyt
  br i1 %i.fyu, label %.preheader7024.us.us, label %._crit_edge7897, !llvm.loop !1857

._crit_edge7897:                                  ; preds = %._crit_edge7883.split.us.us.us, %.preheader7024.lr.ph, %.preheader7029
  %i.fyv = phi <2 x float> [ %i.fwo, %.preheader7029 ], [ %i.fwo, %.preheader7024.lr.ph ], [ %i.fyp, %._crit_edge7883.split.us.us.us ] ; 12 uses
  switch i32 %i.exe, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3310 [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread6890
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread6893
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread6887
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread6896
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread6899
    i32 6, label %bb.cp
  ]

_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread6890: ; preds = %._crit_edge7897
  %i.fyw = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.fyv, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3310

_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread6893: ; preds = %._crit_edge7897
  %i.fyx = load ptr, ptr %11, align 8, !tbaa !18
  %i.fyy = load float, ptr %i.fyx, align 4, !tbaa !39
  %i.fyz = fcmp fast ogt <2 x float> %i.fyv, zeroinitializer
  %i.fza = insertelement <2 x float> poison, float %i.fyy, i64 0
  %i.fzb = shufflevector <2 x float> %i.fza, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fzc = select <2 x i1> %i.fyz, <2 x float> splat (float 1.000000e+00), <2 x float> %i.fzb
  %i.fzd = fmul fast <2 x float> %i.fzc, %i.fyv
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3310

_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread6887: ; preds = %._crit_edge7897
  %i.fze = load ptr, ptr %11, align 8, !tbaa !18  ; 2 uses
  %i.fzf = load float, ptr %i.fze, align 4, !tbaa !39 ; 2 uses
  %i.fzg = getelementptr inbounds nuw i8, ptr %i.fze, i64 4
  %i.fzh = load float, ptr %i.fzg, align 4, !tbaa !39 ; 3 uses
  %i.fzi = extractelement <2 x float> %i.fyv, i64 0
  %spec.select = call nnan ninf nsz float @llvm.maxnum.f32(float %i.fzi, float %i.fzf) ; 2 uses
  %i.fzj = fcmp fast ogt float %spec.select, %i.fzh
  %.166656889 = select i1 %i.fzj, float %i.fzh, float %spec.select
  %i.fzk = extractelement <2 x float> %i.fyv, i64 1
  %.06666 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.fzk, float %i.fzf)
  %spec.select6914 = call nnan ninf nsz float @llvm.minnum.f32(float %.06666, float %i.fzh)
  %i.fzl = insertelement <2 x float> poison, float %.166656889, i64 0
  %i.fzm = insertelement <2 x float> %i.fzl, float %spec.select6914, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3310

_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread6896: ; preds = %._crit_edge7897
  %i.fzn = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.fyv, <2 x float> splat (float f0x42B0C0A5))
  %i.fzo = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.fzn, <2 x float> splat (float f0xC2B0C0A5))
  %i.fzp = fneg fast <2 x float> %i.fzo
  %i.fzq = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.fzp)
  %i.fzr = fadd fast <2 x float> %i.fzq, splat (float 1.000000e+00)
  %i.fzs = fdiv fast <2 x float> splat (float 1.000000e+00), %i.fzr
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3310

_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread6899: ; preds = %._crit_edge7897
  %i.fzt = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.fyv)
  %i.fzu = fadd fast <2 x float> %i.fzt, splat (float 1.000000e+00)
  %i.fzv = call fast <2 x float> @llvm.log.v2f32(<2 x float> %i.fzu)
  %i.fzw = call fast <2 x float> @llvm.tanh.v2f32(<2 x float> %i.fzv)
  %i.fzx = fmul fast <2 x float> %i.fzw, %i.fyv
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3310

bb.cp:                                            ; preds = %._crit_edge7897
  %i.fzy = load ptr, ptr %11, align 8, !tbaa !18  ; 2 uses
  %i.fzz = load float, ptr %i.fzy, align 4, !tbaa !39 ; 5 uses
  %i.gaa = getelementptr inbounds nuw i8, ptr %i.fzy, i64 4
  %i.gab = load float, ptr %i.gaa, align 4, !tbaa !39 ; 3 uses
  %i.gac = fneg fast float %i.gab
  %i.gad = fdiv fast float %i.gac, %i.fzz         ; 4 uses
  %i.gae = extractelement <2 x float> %i.fyv, i64 0 ; 5 uses
  %i.gaf = fcmp fast olt float %i.gae, %i.gad
  br i1 %i.gaf, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.gag = fdiv fast float 1.000000e+00, %i.fzz
  %i.gah = fadd fast float %i.gad, %i.gag
  %i.gai = fcmp fast ogt float %i.gae, %i.gah
  br i1 %i.gai, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.gaj = fmul fast float %i.fzz, %i.gae
  %i.gak = fadd fast float %i.gaj, %i.gab
  %i.gal = fmul fast float %i.gak, %i.gae
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread

_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread: ; preds = %bb.cr, %bb.cq, %bb.cp
  %.166656883 = phi float [ %i.gal, %bb.cr ], [ 0.000000e+00, %bb.cp ], [ %i.gae, %bb.cq ] ; 2 uses
  %i.gam = extractelement <2 x float> %i.fyv, i64 1 ; 4 uses
  %i.gan = fcmp fast olt float %i.gam, %i.gad
  %i.gao = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.166656883, i64 0 ; 2 uses
  br i1 %i.gan, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3310, label %bb.cs

bb.cs:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread
  %i.gap = fdiv fast float 1.000000e+00, %i.fzz
  %i.gaq = fadd fast float %i.gad, %i.gap
  %i.gar = fcmp fast ogt float %i.gam, %i.gaq
  %i.gas = insertelement <2 x float> %i.fyv, float %.166656883, i64 0
  br i1 %i.gar, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3310, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.gat = fmul fast float %i.fzz, %i.gam
  %i.gau = fadd fast float %i.gat, %i.gab
  %i.gav = fmul fast float %i.gau, %i.gam
  %i.gaw = insertelement <2 x float> %i.gao, float %i.gav, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3310

_ZL13activation_ssfiRKN4ncnn3MatE.exit3310:       ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread6887, %._crit_edge7897, %_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread, %_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread6890, %_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread6893, %_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread6896, %_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread6899, %bb.cs, %bb.ct
  %i.gax = phi <2 x float> [ %i.gao, %_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread ], [ %i.fyw, %_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread6890 ], [ %i.fzd, %_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread6893 ], [ %i.fyv, %._crit_edge7897 ], [ %i.fzm, %_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread6887 ], [ %i.fzs, %_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread6896 ], [ %i.fzx, %_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread6899 ], [ %i.gaw, %bb.ct ], [ %i.gas, %bb.cs ]
  %i.gay = bitcast <2 x float> %i.gax to <2 x i32>
  %i.gaz = lshr <2 x i32> %i.gay, splat (i32 16)
  %i.gba = trunc nuw <2 x i32> %i.gaz to <2 x i16> ; 2 uses
  %i.gbb = extractelement <2 x i16> %i.gba, i64 0
  store i16 %i.gbb, ptr %.119427911, align 2, !tbaa !1588
  %i.gbc = extractelement <2 x i16> %i.gba, i64 1
  store i16 %i.gbc, ptr %.119407912, align 2, !tbaa !1588
  %i.gbd = getelementptr inbounds nuw i8, ptr %.119427911, i64 2 ; 2 uses
  %i.gbe = getelementptr inbounds nuw i8, ptr %.119407912, i64 2 ; 2 uses
  %i.gbf = add nuw nsw i32 %.019377913, 1         ; 2 uses
  %exitcond8584.not = icmp eq i32 %i.gbf, %i.byl
  br i1 %exitcond8584.not, label %._crit_edge7914, label %bb.br, !llvm.loop !1858

._crit_edge8154.split:                            ; preds = %._crit_edge8152, %_ZN4ncnn3MatD2Ev.exit2221.lr.ph, %._crit_edge7922.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #9
  br label %bb.ea

_ZN4ncnn3MatD2Ev.exit2221:                        ; preds = %_ZN4ncnn3MatD2Ev.exit2221.lr.ph.split.split, %._crit_edge8152
  %indvars.iv8688 = phi i64 [ %i.ewg, %_ZN4ncnn3MatD2Ev.exit2221.lr.ph.split.split ], [ %indvars.iv.next8689, %._crit_edge8152 ] ; 4 uses
  %.reass8156 = mul i64 %factor.op.mul8155, %indvars.iv8688
  %i.gbg = getelementptr inbounds nuw i8, ptr %i.evh, i64 %.reass8156
  %i.gbh = load ptr, ptr %i.l, align 8            ; 2 uses
  %.not2096 = icmp eq ptr %i.gbh, null
  %i.gbi = getelementptr inbounds [4 x i8], ptr %i.gbh, i64 %indvars.iv8688
  %i.gbj = trunc nsw i64 %indvars.iv8688 to i32   ; 2 uses
  %i.gbk = sdiv i32 %i.gbj, 16
  %i.gbl = insertelement <4 x i32> poison, i32 %i.gbj, i64 0
  %i.gbm = shufflevector <4 x i32> %i.gbl, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.gbn = srem <4 x i32> %i.gbm, <i32 16, i32 8, i32 4, i32 2> ; 4 uses
  %i.gbo = bitcast <4 x i32> %i.gbn to <16 x i8>
  %.lhs.trunc6906 = extractelement <16 x i8> %i.gbo, i64 0
  %i.gbp = sdiv i8 %.lhs.trunc6906, 8
  %.sext6907 = sext i8 %i.gbp to i32
  %i.gbq = bitcast <4 x i32> %i.gbn to <16 x i8>
  %.lhs.trunc6908 = extractelement <16 x i8> %i.gbq, i64 4
  %i.gbr = sdiv i8 %.lhs.trunc6908, 4
  %.sext6909 = sext i8 %i.gbr to i32
  %i.gbs = bitcast <4 x i32> %i.gbn to <16 x i8>
  %.lhs.trunc6910 = extractelement <16 x i8> %i.gbs, i64 8
  %i.gbt = sdiv i8 %.lhs.trunc6910, 2
  %.sext6911 = sext i8 %i.gbt to i32
  %i.gbu = extractelement <4 x i32> %i.gbn, i64 3
  %i.gbv = add nsw i32 %i.gbu, %i.gbk
  %i.gbw = add nsw i32 %i.gbv, %.sext6907
  %i.gbx = add nsw i32 %i.gbw, %.sext6909
  %i.gby = add nsw i32 %i.gbx, %.sext6911
  %i.gbz = sext i32 %i.gby to i64
  %i.gca = load i32, ptr %i.g, align 4
  %.reass8159 = mul i64 %factor.op.mul8158, %i.gbz
  %i.gcb = getelementptr i8, ptr %i.evw, i64 %.reass8159 ; 3 uses
  br label %.preheader7012

.preheader7012:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit2221, %._crit_edge8148
  %.018758151 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit2221 ], [ %.neg6934, %._crit_edge8148 ]
  %.018768150 = phi ptr [ %i.gbg, %_ZN4ncnn3MatD2Ev.exit2221 ], [ %i.hbh, %._crit_edge8148 ]
  %i.gcc = load i32, ptr %i.b, align 4            ; 6 uses
  %i.gcd = icmp sgt i32 %i.gcc, 0                 ; 5 uses
  %.neg6934 = add nuw nsw i32 %.018758151, 1      ; 7 uses
  %i.gce = load i32, ptr %i.k, align 4            ; 5 uses
  %i.gcf = shl i32 %i.gce, 4
  %i.gcg = sext i32 %i.gcf to i64                 ; 2 uses
  %i.gch = shl i32 %i.gce, 3
  %i.gci = sext i32 %i.gch to i64                 ; 2 uses
  %i.gcj = shl i32 %i.gce, 2
  %i.gck = sext i32 %i.gcj to i64                 ; 3 uses
  %i.gcl = shl i32 %i.gce, 1
  %i.gcm = sext i32 %i.gcl to i64                 ; 2 uses
  %i.gcn = sext i32 %i.gce to i64
  %i.gco = mul nsw i64 %i.ewc, %i.gcg
  %scevgep8592 = getelementptr i8, ptr %i.gcb, i64 %i.gco
  %wide.trip.count8605 = zext nneg i32 %i.gcc to i64
  %wide.trip.count8624 = zext nneg i32 %i.gcc to i64
  %wide.trip.count8650 = zext nneg i32 %i.gcc to i64
  %wide.trip.count8668 = zext nneg i32 %i.gcc to i64
  %wide.trip.count8681 = zext nneg i32 %i.gcc to i64
  br label %bb.cu

._crit_edge8152:                                  ; preds = %._crit_edge8148
  %indvars.iv.next8689 = add nsw i64 %indvars.iv8688, 1 ; 2 uses
  %13 = icmp slt i64 %indvars.iv.next8689, %i.ewh
  br i1 %13, label %_ZN4ncnn3MatD2Ev.exit2221, label %._crit_edge8154.split, !llvm.loop !1859

._crit_edge8148:                                  ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %exitcond8687.not = icmp eq i32 %.neg6934, %i.evg
  br i1 %exitcond8687.not, label %._crit_edge8152, label %.preheader7012, !llvm.loop !1860

bb.cu:                                            ; preds = %.preheader7012, %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %.018748147 = phi i32 [ 0, %.preheader7012 ], [ %i.hbi, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 6 uses
  %.118778146 = phi ptr [ %.018768150, %.preheader7012 ], [ %i.hbh, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 2 uses
  br i1 %.not2096, label %_ZN4ncnn3MatD2Ev.exit2220, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.gcp = load float, ptr %i.gbi, align 4, !tbaa !39
  br label %_ZN4ncnn3MatD2Ev.exit2220

_ZN4ncnn3MatD2Ev.exit2220:                        ; preds = %bb.cv, %bb.cu
  %.01859 = phi nsz float [ %i.gcp, %bb.cv ], [ 0.000000e+00, %bb.cu ]
  br i1 %i.evn, label %.preheader7010.lr.ph, label %._crit_edge7963

.preheader7010.lr.ph:                             ; preds = %_ZN4ncnn3MatD2Ev.exit2220
  %i.gcq = load i32, ptr %i.j, align 4
  %invariant.op7947 = sub i32 %.neg6934, %i.gcq
  %i.gcr = load i32, ptr %i.f, align 4            ; 2 uses
  %i.gcs = load i32, ptr %i.a, align 4
  %.fr8187 = freeze i32 %i.gcs                    ; 2 uses
  %i.gct = icmp sgt i32 %.fr8187, 0
  %i.gcu = load i32, ptr %i.i, align 4
  %.neg6936 = add nuw nsw i32 %.018748147, 1
  %invariant.op7938 = sub i32 %.neg6936, %i.gcu
  %i.gcv = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.gcd, label %.preheader7010.us.preheader, label %._crit_edge7963

.preheader7010.us.preheader:                      ; preds = %.preheader7010.lr.ph
  %i.gcw = load i32, ptr %i.c, align 4
  %i.gcx = load i32, ptr %i.d, align 4
  %i.gcy = zext i32 %.fr8187 to i64               ; 2 uses
  br label %.preheader7010.us

.preheader7010.us:                                ; preds = %.preheader7010.us.preheader, %._crit_edge7945.us
  %indvars.iv8607 = phi i64 [ 0, %.preheader7010.us.preheader ], [ %indvars.iv.next8608, %._crit_edge7945.us ] ; 20 uses
  %.018547959.us = phi ptr [ %i.gcb, %.preheader7010.us.preheader ], [ %i.gdv, %._crit_edge7945.us ] ; 2 uses
  %.067457958.us = phi <16 x float> [ zeroinitializer, %.preheader7010.us.preheader ], [ %.us-phi7956.us, %._crit_edge7945.us ] ; 2 uses
  %i.gcz = lshr exact i64 %indvars.iv8607, 4
  %i.gda = lshr exact i64 %indvars.iv8607, 3      ; 2 uses
  %i.gdb = or disjoint i64 %i.gda, 1
  %i.gdc = lshr exact i64 %indvars.iv8607, 2      ; 4 uses
  %i.gdd = or disjoint i64 %i.gdc, 1
  %i.gde = or disjoint i64 %i.gdc, 2
  %i.gdf = or disjoint i64 %i.gdc, 3
  br i1 %i.gct, label %.lr.ph7944.split.us.us.preheader, label %._crit_edge7945.us

.lr.ph7944.split.us.us.preheader:                 ; preds = %.preheader7010.us
  %i.gdg = or disjoint i64 %indvars.iv8607, 1
  %i.gdh = or disjoint i64 %indvars.iv8607, 2
  %i.gdi = or disjoint i64 %indvars.iv8607, 3
  %i.gdj = or disjoint i64 %indvars.iv8607, 4
  %i.gdk = or disjoint i64 %indvars.iv8607, 5
  %i.gdl = or disjoint i64 %indvars.iv8607, 6
  %i.gdm = or disjoint i64 %indvars.iv8607, 7
  %i.gdn = or disjoint i64 %indvars.iv8607, 8
  %i.gdo = or disjoint i64 %indvars.iv8607, 9
  %i.gdp = or disjoint i64 %indvars.iv8607, 10
  %i.gdq = or disjoint i64 %indvars.iv8607, 11
  %i.gdr = or disjoint i64 %indvars.iv8607, 12
  %i.gds = or disjoint i64 %indvars.iv8607, 13
  %i.gdt = or disjoint i64 %indvars.iv8607, 14
  %i.gdu = or disjoint i64 %indvars.iv8607, 15
  br label %.lr.ph7944.split.us.us

._crit_edge7945.us:                               ; preds = %..loopexit7005_crit_edge.us.us, %.preheader7010.us
  %.us-phi7956.us = phi <16 x float> [ %.067457958.us, %.preheader7010.us ], [ %.76752.us.us, %..loopexit7005_crit_edge.us.us ] ; 2 uses
  %i.gdv = getelementptr inbounds [2 x i8], ptr %.018547959.us, i64 %i.gcg ; 2 uses
  %indvars.iv.next8608 = add nuw nsw i64 %indvars.iv8607, 16 ; 3 uses
  %i.gdw = icmp slt i64 %indvars.iv.next8608, %invariant.op9058
  br i1 %i.gdw, label %.preheader7010.us, label %._crit_edge7963.loopexit, !llvm.loop !1861

.lr.ph7944.split.us.us:                           ; preds = %.lr.ph7944.split.us.us.preheader, %..loopexit7005_crit_edge.us.us
  %indvars.iv8602 = phi i64 [ 0, %.lr.ph7944.split.us.us.preheader ], [ %indvars.iv.next8603, %..loopexit7005_crit_edge.us.us ] ; 3 uses
  %.167467942.us.us = phi <16 x float> [ %.067457958.us, %.lr.ph7944.split.us.us.preheader ], [ %.76752.us.us, %..loopexit7005_crit_edge.us.us ] ; 4 uses
  %i.gdx = trunc i64 %indvars.iv8602 to i32
  %i.gdy = mul i32 %i.gcx, %i.gdx
  %.reass7948.us.us = add i32 %i.gdy, %invariant.op7947 ; 3 uses
  %i.gdz = icmp slt i32 %.reass7948.us.us, 0
  br i1 %i.gdz, label %..loopexit7005_crit_edge.us.us, label %bb.cw

bb.cw:                                            ; preds = %.lr.ph7944.split.us.us
  %i.gea = srem i32 %.reass7948.us.us, %i.gcr
  %i.geb = sdiv i32 %.reass7948.us.us, %i.gcr     ; 2 uses
  %.not2113.us.us = icmp eq i32 %i.gea, 0
  %.not2114.us.us = icmp slt i32 %i.geb, %i.evc
  %or.cond9378 = select i1 %.not2113.us.us, i1 %.not2114.us.us, i1 false
  br i1 %or.cond9378, label %.preheader7004.us.us, label %..loopexit7005_crit_edge.us.us

..loopexit7005_crit_edge.us.us:                   ; preds = %bb.cy, %.preheader7004.us.us, %bb.cw, %.lr.ph7944.split.us.us
  %.76752.us.us = phi nsz <16 x float> [ %.167467942.us.us, %.lr.ph7944.split.us.us ], [ %.167467942.us.us, %bb.cw ], [ %.167467942.us.us, %.preheader7004.us.us ], [ %.66751.us.us.us, %bb.cy ] ; 2 uses
  %indvars.iv.next8603 = add nuw nsw i64 %indvars.iv8602, 1 ; 2 uses
  %exitcond8606.not = icmp eq i64 %indvars.iv.next8603, %wide.trip.count8605
  br i1 %exitcond8606.not, label %._crit_edge7945.us, label %.lr.ph7944.split.us.us, !llvm.loop !1862

.preheader7004.us.us:                             ; preds = %bb.cw
  %i.gec = mul nuw nsw i64 %indvars.iv8602, %i.gcy
  %i.ged = sext i32 %i.geb to i64                 ; 4 uses
  br i1 %i.evp, label %.lr.ph.split.us.us.us7974, label %..loopexit7005_crit_edge.us.us

.lr.ph.split.us.us.us7974:                        ; preds = %.preheader7004.us.us, %bb.cy
  %indvars.iv8597 = phi i64 [ %indvars.iv.next8598, %bb.cy ], [ 0, %.preheader7004.us.us ] ; 3 uses
  %.267477935.us.us.us = phi <16 x float> [ %.66751.us.us.us, %bb.cy ], [ %.167467942.us.us, %.preheader7004.us.us ] ; 7 uses
  %i.gee = trunc i64 %indvars.iv8597 to i32
  %i.gef = mul i32 %i.gcw, %i.gee
  %.reass7939.us.us.us = add i32 %i.gef, %invariant.op7938 ; 3 uses
  %i.geg = icmp slt i32 %.reass7939.us.us.us, 0
  br i1 %i.geg, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %.lr.ph.split.us.us.us7974
  %i.geh = srem i32 %.reass7939.us.us.us, %i.gcv
  %i.gei = sdiv i32 %.reass7939.us.us.us, %i.gcv  ; 5 uses
  %.not2115.us.us.us = icmp eq i32 %i.geh, 0
  %.not2116.us.us.us = icmp slt i32 %i.gei, %i.eva
  %or.cond9379 = select i1 %.not2115.us.us.us, i1 %.not2116.us.us.us, i1 false
  br i1 %or.cond9379, label %.split2204.us.us.us, label %bb.cy

.split2204.us.us.us:                              ; preds = %bb.cx
  %i.gej = add nuw nsw i64 %i.gec, %indvars.iv8597
  %i.gek = shl i64 %i.gej, 4
  %i.gel = and i64 %i.gek, 4294967280
  %i.gem = getelementptr inbounds nuw [2 x i8], ptr %.018547959.us, i64 %i.gel ; 4 uses
  switch i32 %i.evq, label %bb.cy [
    i32 4, label %_ZN4ncnn3MatD2Ev.exit2219.us.us.us
    i32 3, label %.split2204.us.us.us._ZN4ncnn3MatD2Ev.exit2218.us.us.us_crit_edge
    i32 2, label %.split2204.us.us.us._ZN4ncnn3MatD2Ev.exit2216.us.us.us_crit_edge
    i32 0, label %.split2204.us.us.us._ZN4ncnn3MatD2Ev.exit2212.us.us.us_crit_edge
  ]

.split2204.us.us.us._ZN4ncnn3MatD2Ev.exit2212.us.us.us_crit_edge: ; preds = %.split2204.us.us.us
  %.pre8728.a = load i32, ptr %i.euz, align 4, !tbaa !58, !noalias !1863
  %.pre8729.a = load ptr, ptr %0, align 8, !tbaa !18, !noalias !1863
  %.pre8730 = load i64, ptr %i.evr, align 8, !tbaa !20, !noalias !1863
  %.pre8731 = load i64, ptr %i.evs, align 8, !tbaa !59, !noalias !1863 ; 2 uses
  %.pre8791.a = sext i32 %.pre8728.a to i64
  %.pre8793 = mul nsw i64 %.pre8791.a, %i.ged
  %.pre8795 = mul i64 %.pre8793, %.pre8731
  br label %_ZN4ncnn3MatD2Ev.exit2212.us.us.us

.split2204.us.us.us._ZN4ncnn3MatD2Ev.exit2216.us.us.us_crit_edge: ; preds = %.split2204.us.us.us
  %.pre8723.a = load i32, ptr %i.euz, align 4, !tbaa !58, !noalias !1866
  %.pre8724.a = load ptr, ptr %0, align 8, !tbaa !18, !noalias !1866
  %.pre8725 = load i64, ptr %i.evr, align 8, !tbaa !20, !noalias !1866
  %.pre8726 = load i64, ptr %i.evs, align 8, !tbaa !59, !noalias !1866 ; 2 uses
  %.pre8727 = load <16 x i16>, ptr %i.gem, align 32, !tbaa !1223 ; 2 uses
  %.pre8761.a = sext i32 %.pre8723.a to i64
  %.pre8763 = mul nsw i64 %.pre8761.a, %i.ged
  %.pre8765 = mul i64 %.pre8763, %.pre8726
  %.pre8767 = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %.pre8727, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %.pre8771 = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %.pre8727, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.gen = shufflevector <16 x i16> %.pre8767, <16 x i16> %.pre8771, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.geo = shufflevector <16 x i16> %.pre8767, <16 x i16> %.pre8771, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.gep = bitcast <16 x i16> %i.gen to <8 x i32>
  %.pre8783 = bitcast <16 x i16> %i.geo to <8 x i32>
  %.pre8787 = shufflevector <8 x i32> %i.gep, <8 x i32> %.pre8783, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %.pre8789 = bitcast <16 x i32> %.pre8787 to <16 x float>
  br label %_ZN4ncnn3MatD2Ev.exit2216.us.us.us

.split2204.us.us.us._ZN4ncnn3MatD2Ev.exit2218.us.us.us_crit_edge: ; preds = %.split2204.us.us.us
  %.pre8718 = load i32, ptr %i.euz, align 4, !tbaa !58, !noalias !1869
  %.pre8719 = load ptr, ptr %0, align 8, !tbaa !18, !noalias !1869
  %.pre8720 = load i64, ptr %i.evr, align 8, !tbaa !20, !noalias !1869
  %.pre8721 = load i64, ptr %i.evs, align 8, !tbaa !59, !noalias !1869 ; 2 uses
  %.pre8722 = load <16 x i16>, ptr %i.gem, align 32, !tbaa !1223 ; 2 uses
  %.pre8732 = sext i32 %.pre8718 to i64
  %.pre8733 = mul nsw i64 %.pre8732, %i.ged
  %.pre8735 = mul i64 %.pre8733, %.pre8721
  %.pre8737 = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %.pre8722, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %.pre8741 = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %.pre8722, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.geq = shufflevector <16 x i16> %.pre8737, <16 x i16> %.pre8741, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ger = shufflevector <16 x i16> %.pre8737, <16 x i16> %.pre8741, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ges = bitcast <16 x i16> %i.geq to <8 x i32>
  %.pre8753 = bitcast <16 x i16> %i.ger to <8 x i32>
  %.pre8757 = shufflevector <8 x i32> %i.ges, <8 x i32> %.pre8753, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %.pre8759 = bitcast <16 x i32> %.pre8757 to <16 x float>
  br label %_ZN4ncnn3MatD2Ev.exit2218.us.us.us

_ZN4ncnn3MatD2Ev.exit2219.us.us.us:               ; preds = %.split2204.us.us.us
  %i.get = load i32, ptr %i.euz, align 4, !tbaa !58, !noalias !1872
  %i.geu = load ptr, ptr %0, align 8, !tbaa !18, !noalias !1872 ; 4 uses
  %i.gev = load i64, ptr %i.evr, align 8, !tbaa !20, !noalias !1872 ; 4 uses
  %i.gew = mul i64 %i.gev, %i.gcz
  %i.gex = load i64, ptr %i.evs, align 8, !tbaa !59, !noalias !1872 ; 5 uses
  %i.gey = mul i64 %i.gew, %i.gex
  %i.gez = getelementptr inbounds nuw i8, ptr %i.geu, i64 %i.gey
  %i.gfa = sext i32 %i.get to i64
  %i.gfb = mul nsw i64 %i.gfa, %i.ged
  %i.gfc = mul i64 %i.gfb, %i.gex                 ; 4 uses
  %i.gfd = getelementptr inbounds nuw i8, ptr %i.gez, i64 %i.gfc
  %i.gfe = shl nsw i32 %i.gei, 4
  %i.gff = sext i32 %i.gfe to i64
  %i.gfg = getelementptr inbounds [2 x i8], ptr %i.gfd, i64 %i.gff
  %i.gfh = load <16 x i16>, ptr %i.gfg, align 32, !tbaa !1223 ; 2 uses
  %i.gfi = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.gfh, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.gfj = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.gfh, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.gfk = shufflevector <16 x i16> %i.gfi, <16 x i16> %i.gfj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.gfl = shufflevector <16 x i16> %i.gfi, <16 x i16> %i.gfj, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
end_hunk_3

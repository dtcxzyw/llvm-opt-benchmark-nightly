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
  br i1 %i.am, label %_ZN4ncnn3MatD2Ev.exit2274.lr.ph, label %._crit_edge6757

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
  %wide.trip.count7801 = zext nneg i32 %i.al to i64
  br label %_ZN4ncnn3MatD2Ev.exit2274

._crit_edge6757:                                  ; preds = %._crit_edge6755.split, %bb.a
  %i.az = shl nsw i32 %i.al, 3
  %i.ba = add nsw i32 %i.az, %i.aj                ; 3 uses
  %i.bb = sub nsw i32 %i.s, %i.ba                 ; 2 uses
  %i.bc = sdiv i32 %i.bb, 4                       ; 3 uses
  store i32 %i.bc, ptr %i.m, align 4, !tbaa !78
  %i.bd = icmp sgt i32 %i.bb, 3
  br i1 %i.bd, label %_ZN4ncnn3MatD2Ev.exit2230.lr.ph, label %._crit_edge7050

_ZN4ncnn3MatD2Ev.exit2230.lr.ph:                  ; preds = %._crit_edge6757
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
  %wide.trip.count7888 = zext nneg i32 %i.bc to i64
  br label %_ZN4ncnn3MatD2Ev.exit2230

_ZN4ncnn3MatD2Ev.exit2274:                        ; preds = %_ZN4ncnn3MatD2Ev.exit2274.lr.ph, %._crit_edge6755.split
  %indvars.iv7798 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit2274.lr.ph ], [ %indvars.iv.next7799, %._crit_edge6755.split ] ; 2 uses
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
  br i1 %i.by, label %.preheader6471.lr.ph, label %._crit_edge6755.split

.preheader6471.lr.ph:                             ; preds = %_ZN4ncnn3MatD2Ev.exit2274
  %i.bz = shl nuw nsw i64 %indvars.iv7798, 3
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
  br i1 %i.cc, label %.preheader6471.preheader, label %._crit_edge6755.split

.preheader6471.preheader:                         ; preds = %.preheader6471.lr.ph
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
  %invariant.op8363 = add nsw i64 %i.de, -15
  br label %.preheader6471

.preheader6471:                                   ; preds = %.preheader6471.preheader, %._crit_edge
  %.018066754 = phi ptr [ %.4, %._crit_edge ], [ %i.cx, %.preheader6471.preheader ]
  %.018076753 = phi i32 [ %.neg6395, %._crit_edge ], [ 0, %.preheader6471.preheader ]
  %i.dh = load i32, ptr %i.b, align 4             ; 6 uses
  %i.di = icmp sgt i32 %i.dh, 0                   ; 5 uses
  %.neg6395 = add nuw nsw i32 %.018076753, 1      ; 7 uses
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
  %wide.trip.count7727 = zext nneg i32 %i.dh to i64
  %wide.trip.count7741 = zext nneg i32 %i.dh to i64
  %wide.trip.count7761 = zext nneg i32 %i.dh to i64
  %wide.trip.count7778 = zext nneg i32 %i.dh to i64
  %wide.trip.count7791 = zext nneg i32 %i.dh to i64
  br label %bb.b

._crit_edge6755.split:                            ; preds = %._crit_edge, %.preheader6471.lr.ph, %_ZN4ncnn3MatD2Ev.exit2274
  %indvars.iv.next7799 = add nuw nsw i64 %indvars.iv7798, 1 ; 2 uses
  %exitcond7802.not = icmp eq i64 %indvars.iv.next7799, %wide.trip.count7801
  br i1 %exitcond7802.not, label %._crit_edge6757, label %_ZN4ncnn3MatD2Ev.exit2274, !llvm.loop !1281

._crit_edge:                                      ; preds = %.thread6283
  %exitcond7797.not = icmp eq i32 %.neg6395, %i.bw
  br i1 %exitcond7797.not, label %._crit_edge6755.split, label %.preheader6471, !llvm.loop !1282

bb.b:                                             ; preds = %.preheader6471, %.thread6283
  %.16752 = phi ptr [ %.018066754, %.preheader6471 ], [ %.4, %.thread6283 ] ; 15 uses
  %.018086751 = phi i32 [ 0, %.preheader6471 ], [ %i.bca, %.thread6283 ] ; 6 uses
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
  br i1 %i.ck, label %.preheader6466.lr.ph, label %.preheader6470

.preheader6466.lr.ph:                             ; preds = %_ZN4ncnn3MatD2Ev.exit2273
  %i.ed = load i32, ptr %i.j, align 4
  %invariant.op6494 = sub i32 %.neg6395, %i.ed
  %i.ee = load i32, ptr %i.f, align 4             ; 2 uses
  %i.ef = load i32, ptr %i.a, align 4
end_hunk_0
begin_hunk_1_@_ZN4ncnnL20deconvolution_packedERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a

._crit_edge7284.split.us.us.us:                   ; preds = %..loopexit6416_crit_edge.us.us.us
  %i.ecy = getelementptr inbounds [4 x i8], ptr %.418707295.us.us, i64 %i.dhm
  %indvars.iv.next7983 = add nuw nsw i64 %indvars.iv7982, 1 ; 2 uses
  %i.ecz = trunc nuw i64 %indvars.iv.next7983 to i32
  %i.eda = icmp sgt i32 %i.bck, %i.ecz
  br i1 %i.eda, label %.preheader6425.us.us, label %._crit_edge7298, !llvm.loop !1459

._crit_edge7298:                                  ; preds = %._crit_edge7284.split.us.us.us, %.preheader6425.lr.ph, %.preheader6430
  %i.edb = phi i32 [ %i.eau, %.preheader6430 ], [ %i.eau, %.preheader6425.lr.ph ], [ %i.ecu, %._crit_edge7284.split.us.us.us ] ; 3 uses
  %i.edc = phi <2 x float> [ %i.eav, %.preheader6430 ], [ %i.eav, %.preheader6425.lr.ph ], [ %i.ecv, %._crit_edge7284.split.us.us.us ] ; 11 uses
  switch i32 %i.dgx, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3144 [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3145.thread6295
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3145.thread6298
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3145.thread6292
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3145.thread6301
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3145.thread6304
    i32 6, label %bb.cn
  ]

_ZL13activation_ssfiRKN4ncnn3MatE.exit3145.thread6295: ; preds = %._crit_edge7298
  %i.edd = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.edc, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3144

_ZL13activation_ssfiRKN4ncnn3MatE.exit3145.thread6298: ; preds = %._crit_edge7298
  %i.ede = load ptr, ptr %11, align 8, !tbaa !18
  %i.edf = load float, ptr %i.ede, align 4, !tbaa !39
  %i.edg = fcmp fast ogt <2 x float> %i.edc, zeroinitializer
  %i.edh = insertelement <2 x float> poison, float %i.edf, i64 0
  %i.edi = shufflevector <2 x float> %i.edh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.edj = select <2 x i1> %i.edg, <2 x float> splat (float 1.000000e+00), <2 x float> %i.edi
  %i.edk = fmul fast <2 x float> %i.edj, %i.edc
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3144

_ZL13activation_ssfiRKN4ncnn3MatE.exit3145.thread6292: ; preds = %._crit_edge7298
  %i.edl = load ptr, ptr %11, align 8, !tbaa !18  ; 2 uses
  %i.edm = load float, ptr %i.edl, align 4, !tbaa !39
  %i.edn = getelementptr inbounds nuw i8, ptr %i.edl, i64 4
  %i.edo = load float, ptr %i.edn, align 4, !tbaa !39 ; 3 uses
  %i.edp = insertelement <2 x float> poison, float %i.edm, i64 0
  %i.edq = shufflevector <2 x float> %i.edp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.edr = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.edc, <2 x float> %i.edq) ; 3 uses
  %i.eds = insertelement <2 x float> poison, float %i.edo, i64 0
  %i.edt = shufflevector <2 x float> %i.eds, <2 x float> poison, <2 x i32> zeroinitializer
  %i.edu = fcmp fast ogt <2 x float> %i.edr, %i.edt ; 2 uses
  %i.edv = extractelement <2 x i1> %i.edu, i64 0
  %i.edw = extractelement <2 x float> %i.edr, i64 0
  %.160646294 = select i1 %i.edv, float %i.edo, float %i.edw
  %i.edx = insertelement <2 x float> %i.edr, float %.160646294, i64 0 ; 2 uses
  %i.edy = extractelement <2 x i1> %i.edu, i64 1
  %i.edz = insertelement <2 x float> %i.edx, float %i.edo, i64 1
  %spec.select = select i1 %i.edy, <2 x float> %i.edz, <2 x float> %i.edx
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3144

_ZL13activation_ssfiRKN4ncnn3MatE.exit3145.thread6301: ; preds = %._crit_edge7298
  %i.eea = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.edc, <2 x float> splat (float f0x42B0C0A5))
  %i.eeb = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.eea, <2 x float> splat (float f0xC2B0C0A5))
  %i.eec = fneg fast <2 x float> %i.eeb
  %i.eed = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.eec)
  %i.eee = fadd fast <2 x float> %i.eed, splat (float 1.000000e+00)
  %i.eef = fdiv fast <2 x float> splat (float 1.000000e+00), %i.eee
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3144

_ZL13activation_ssfiRKN4ncnn3MatE.exit3145.thread6304: ; preds = %._crit_edge7298
  %i.eeg = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.edc)
  %i.eeh = fadd fast <2 x float> %i.eeg, splat (float 1.000000e+00)
  %i.eei = call fast <2 x float> @llvm.log.v2f32(<2 x float> %i.eeh)
  %i.eej = call fast <2 x float> @llvm.tanh.v2f32(<2 x float> %i.eei)
  %i.eek = fmul fast <2 x float> %i.eej, %i.edc
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3144

bb.cn:                                            ; preds = %._crit_edge7298
  %i.eel = load ptr, ptr %11, align 8, !tbaa !18  ; 2 uses
  %i.eem = load float, ptr %i.eel, align 4, !tbaa !39 ; 5 uses
  %i.een = getelementptr inbounds nuw i8, ptr %i.eel, i64 4
  %i.eeo = load float, ptr %i.een, align 4, !tbaa !39 ; 3 uses
  %i.eep = fneg fast float %i.eeo
  %i.eeq = fdiv fast float %i.eep, %i.eem         ; 4 uses
  %i.eer = extractelement <2 x float> %i.edc, i64 0 ; 5 uses
  %i.ees = fcmp fast olt float %i.eer, %i.eeq
  br i1 %i.ees, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3145.thread, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.eet = fdiv fast float 1.000000e+00, %i.eem
  %i.eeu = fadd fast float %i.eeq, %i.eet
  %i.eev = fcmp fast ogt float %i.eer, %i.eeu
  br i1 %i.eev, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3145.thread, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.eew = fmul fast float %i.eem, %i.eer
  %i.eex = fadd fast float %i.eew, %i.eeo
  %i.eey = fmul fast float %i.eex, %i.eer
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3145.thread

_ZL13activation_ssfiRKN4ncnn3MatE.exit3145.thread: ; preds = %bb.cp, %bb.co, %bb.cn
  %.160646288 = phi float [ %i.eey, %bb.cp ], [ 0.000000e+00, %bb.cn ], [ %i.eer, %bb.co ] ; 2 uses
  %i.eez = extractelement <2 x float> %i.edc, i64 1 ; 4 uses
  %i.efa = fcmp fast olt float %i.eez, %i.eeq
  %i.efb = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.160646288, i64 0 ; 2 uses
  br i1 %i.efa, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3144, label %bb.cq

bb.cq:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit3145.thread
  %i.efc = fdiv fast float 1.000000e+00, %i.eem
  %i.efd = fadd fast float %i.eeq, %i.efc
  %i.efe = fcmp fast ogt float %i.eez, %i.efd
  %i.eff = insertelement <2 x float> %i.edc, float %.160646288, i64 0
  br i1 %i.efe, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3144, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.efg = fmul fast float %i.eem, %i.eez
  %i.efh = fadd fast float %i.efg, %i.eeo
  %i.efi = fmul fast float %i.efh, %i.eez
  %i.efj = insertelement <2 x float> %i.efb, float %i.efi, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3144

_ZL13activation_ssfiRKN4ncnn3MatE.exit3144:       ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit3145.thread6292, %._crit_edge7298, %_ZL13activation_ssfiRKN4ncnn3MatE.exit3145.thread, %_ZL13activation_ssfiRKN4ncnn3MatE.exit3145.thread6295, %_ZL13activation_ssfiRKN4ncnn3MatE.exit3145.thread6298, %_ZL13activation_ssfiRKN4ncnn3MatE.exit3145.thread6301, %_ZL13activation_ssfiRKN4ncnn3MatE.exit3145.thread6304, %bb.cq, %bb.cr
  %i.efk = phi <2 x float> [ %i.efb, %_ZL13activation_ssfiRKN4ncnn3MatE.exit3145.thread ], [ %i.edd, %_ZL13activation_ssfiRKN4ncnn3MatE.exit3145.thread6295 ], [ %i.edk, %_ZL13activation_ssfiRKN4ncnn3MatE.exit3145.thread6298 ], [ %i.edc, %._crit_edge7298 ], [ %spec.select, %_ZL13activation_ssfiRKN4ncnn3MatE.exit3145.thread6292 ], [ %i.eef, %_ZL13activation_ssfiRKN4ncnn3MatE.exit3145.thread6301 ], [ %i.eek, %_ZL13activation_ssfiRKN4ncnn3MatE.exit3145.thread6304 ], [ %i.efj, %bb.cr ], [ %i.eff, %bb.cq ] ; 2 uses
  %i.efl = extractelement <2 x float> %i.efk, i64 0
  store float %i.efl, ptr %.119087312, align 4, !tbaa !39
  %i.efm = extractelement <2 x float> %i.efk, i64 1
  store float %i.efm, ptr %.119067313, align 4, !tbaa !39
  %i.efn = getelementptr inbounds nuw i8, ptr %.119087312, i64 4 ; 2 uses
  %i.efo = getelementptr inbounds nuw i8, ptr %.119067313, i64 4 ; 2 uses
  %i.efp = add nuw nsw i32 %.019037314, 1         ; 2 uses
  %exitcond7985.not = icmp eq i32 %i.efp, %i.bcq
  br i1 %exitcond7985.not, label %._crit_edge7315, label %bb.bp, !llvm.loop !1460

._crit_edge7555.split:                            ; preds = %._crit_edge7553, %_ZN4ncnn3MatD2Ev.exit2167.lr.ph, %._crit_edge7323.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #9
  ret void

_ZN4ncnn3MatD2Ev.exit2167:                        ; preds = %_ZN4ncnn3MatD2Ev.exit2167.lr.ph.split.split, %._crit_edge7553
  %i.efq = phi i32 [ %i.des, %_ZN4ncnn3MatD2Ev.exit2167.lr.ph.split.split ], [ %i.fab, %._crit_edge7553 ]
  %indvars.iv8089 = phi i64 [ %i.dfy, %_ZN4ncnn3MatD2Ev.exit2167.lr.ph.split.split ], [ %indvars.iv.next8090, %._crit_edge7553 ] ; 4 uses
  %.reass7557 = mul i64 %factor.op.mul7556, %indvars.iv8089
  %i.efr = getelementptr inbounds nuw i8, ptr %i.dez, i64 %.reass7557
  %i.efs = load ptr, ptr %i.l, align 8            ; 2 uses
  %.not = icmp eq ptr %i.efs, null
  %i.eft = getelementptr inbounds [4 x i8], ptr %i.efs, i64 %indvars.iv8089
  %i.efu = trunc nsw i64 %indvars.iv8089 to i32   ; 2 uses
  %i.efv = sdiv i32 %i.efu, 16
  %i.efw = insertelement <4 x i32> poison, i32 %i.efu, i64 0
  %i.efx = shufflevector <4 x i32> %i.efw, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.efy = srem <4 x i32> %i.efx, <i32 16, i32 8, i32 4, i32 2> ; 4 uses
  %i.efz = bitcast <4 x i32> %i.efy to <16 x i8>
  %.lhs.trunc6311 = extractelement <16 x i8> %i.efz, i64 0
  %i.ega = sdiv i8 %.lhs.trunc6311, 8
  %.sext6312 = sext i8 %i.ega to i32
  %i.egb = bitcast <4 x i32> %i.efy to <16 x i8>
  %.lhs.trunc6313 = extractelement <16 x i8> %i.egb, i64 4
  %i.egc = sdiv i8 %.lhs.trunc6313, 4
  %.sext6314 = sext i8 %i.egc to i32
  %i.egd = bitcast <4 x i32> %i.efy to <16 x i8>
  %.lhs.trunc6315 = extractelement <16 x i8> %i.egd, i64 8
  %i.ege = sdiv i8 %.lhs.trunc6315, 2
  %.sext6316 = sext i8 %i.ege to i32
  %i.egf = extractelement <4 x i32> %i.efy, i64 3
  %i.egg = add nsw i32 %i.egf, %i.efv
  %i.egh = add nsw i32 %i.egg, %.sext6312
  %i.egi = add nsw i32 %i.egh, %.sext6314
  %i.egj = add nsw i32 %i.egi, %.sext6316
  %i.egk = sext i32 %i.egj to i64
  %i.egl = load i32, ptr %i.g, align 4
  %.reass7560 = mul i64 %factor.op.mul7559, %i.egk
  %i.egm = getelementptr i8, ptr %i.dfo, i64 %.reass7560 ; 3 uses
  br label %.preheader6413

.preheader6413:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit2167, %._crit_edge7549
  %i.egn = phi i32 [ %i.efq, %_ZN4ncnn3MatD2Ev.exit2167 ], [ %i.fab, %._crit_edge7549 ]
  %.018387552 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit2167 ], [ %.neg6335, %._crit_edge7549 ]
  %.018397551 = phi ptr [ %i.efr, %_ZN4ncnn3MatD2Ev.exit2167 ], [ %i.fbj, %._crit_edge7549 ]
  %i.ego = load i32, ptr %i.b, align 4            ; 6 uses
  %i.egp = icmp sgt i32 %i.ego, 0                 ; 5 uses
  %.neg6335 = add nuw nsw i32 %.018387552, 1      ; 7 uses
  %i.egq = load i32, ptr %i.k, align 4            ; 5 uses
  %i.egr = shl i32 %i.egq, 4
  %i.egs = sext i32 %i.egr to i64                 ; 2 uses
  %i.egt = shl i32 %i.egq, 3
  %i.egu = sext i32 %i.egt to i64                 ; 2 uses
  %i.egv = shl i32 %i.egq, 2
  %i.egw = sext i32 %i.egv to i64                 ; 3 uses
  %i.egx = shl i32 %i.egq, 1
  %i.egy = sext i32 %i.egx to i64                 ; 2 uses
  %i.egz = sext i32 %i.egq to i64
  %i.eha = mul nsw i64 %i.dfu, %i.egs
  %scevgep7993 = getelementptr i8, ptr %i.egm, i64 %i.eha
  %wide.trip.count8006 = zext nneg i32 %i.ego to i64
  %wide.trip.count8025 = zext nneg i32 %i.ego to i64
  %wide.trip.count8051 = zext nneg i32 %i.ego to i64
  %wide.trip.count8069 = zext nneg i32 %i.ego to i64
  %wide.trip.count8082 = zext nneg i32 %i.ego to i64
  br label %bb.cs

._crit_edge7553:                                  ; preds = %._crit_edge7549
  %indvars.iv.next8090 = add nsw i64 %indvars.iv8089, 1 ; 2 uses
  %13 = icmp slt i64 %indvars.iv.next8090, %i.dfz
  br i1 %13, label %_ZN4ncnn3MatD2Ev.exit2167, label %._crit_edge7555.split, !llvm.loop !1461

._crit_edge7549:                                  ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %exitcond8088.not = icmp eq i32 %.neg6335, %i.dey
  br i1 %exitcond8088.not, label %._crit_edge7553, label %.preheader6413, !llvm.loop !1462

bb.cs:                                            ; preds = %.preheader6413, %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %i.ehb = phi i32 [ %i.egn, %.preheader6413 ], [ %i.fab, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 3 uses
  %.018377548 = phi i32 [ 0, %.preheader6413 ], [ %i.fbk, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 6 uses
  %.118407547 = phi ptr [ %.018397551, %.preheader6413 ], [ %i.fbj, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 2 uses
  br i1 %.not, label %_ZN4ncnn3MatD2Ev.exit2166, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ehc = load float, ptr %i.eft, align 4, !tbaa !39
  br label %_ZN4ncnn3MatD2Ev.exit2166

_ZN4ncnn3MatD2Ev.exit2166:                        ; preds = %bb.ct, %bb.cs
  %.01832 = phi nsz float [ %i.ehc, %bb.ct ], [ 0.000000e+00, %bb.cs ]
  br i1 %i.dff, label %.preheader6411.lr.ph, label %._crit_edge7364

.preheader6411.lr.ph:                             ; preds = %_ZN4ncnn3MatD2Ev.exit2166
  %i.ehd = load i32, ptr %i.j, align 4
  %invariant.op7348 = sub i32 %.neg6335, %i.ehd
  %i.ehe = load i32, ptr %i.f, align 4            ; 2 uses
  %i.ehf = load i32, ptr %i.a, align 4
  %.fr7588 = freeze i32 %i.ehf                    ; 2 uses
  %i.ehg = icmp sgt i32 %.fr7588, 0
  %i.ehh = load i32, ptr %i.i, align 4
  %.neg6337 = add nuw nsw i32 %.018377548, 1
  %invariant.op7339 = sub i32 %.neg6337, %i.ehh
  %i.ehi = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.egp, label %.preheader6411.us.preheader, label %._crit_edge7364

.preheader6411.us.preheader:                      ; preds = %.preheader6411.lr.ph
  %i.ehj = load i32, ptr %i.c, align 4
  %i.ehk = load i32, ptr %i.d, align 4
  %i.ehl = zext i32 %.fr7588 to i64               ; 2 uses
  br label %.preheader6411.us

.preheader6411.us:                                ; preds = %.preheader6411.us.preheader, %._crit_edge7346.us
  %i.ehm = phi i32 [ %i.ehb, %.preheader6411.us.preheader ], [ %i.ehx, %._crit_edge7346.us ] ; 2 uses
  %indvars.iv8008 = phi i64 [ 0, %.preheader6411.us.preheader ], [ %indvars.iv.next8009, %._crit_edge7346.us ] ; 5 uses
  %.018277360.us = phi ptr [ %i.egm, %.preheader6411.us.preheader ], [ %i.ehy, %._crit_edge7346.us ] ; 2 uses
  %.061507359.us = phi <16 x float> [ zeroinitializer, %.preheader6411.us.preheader ], [ %.us-phi7357.us, %._crit_edge7346.us ] ; 2 uses
  %i.ehn = lshr exact i64 %indvars.iv8008, 4
  %i.eho = lshr exact i64 %indvars.iv8008, 3      ; 3 uses
  %i.ehp = or disjoint i64 %i.eho, 1              ; 2 uses
  %i.ehq = lshr exact i64 %indvars.iv8008, 2      ; 4 uses
  %i.ehr = or disjoint i64 %i.ehq, 1
  %i.ehs = or disjoint i64 %i.ehq, 2
  %i.eht = or disjoint i64 %i.ehq, 3
  br i1 %i.ehg, label %.lr.ph7345.split.us.us.preheader, label %._crit_edge7346.us

.lr.ph7345.split.us.us.preheader:                 ; preds = %.preheader6411.us
  %i.ehu = insertelement <16 x i64> poison, i64 %indvars.iv8008, i64 0
  %i.ehv = shufflevector <16 x i64> %i.ehu, <16 x i64> poison, <16 x i32> zeroinitializer
  %i.ehw = or disjoint <16 x i64> %i.ehv, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  br label %.lr.ph7345.split.us.us

._crit_edge7346.us:                               ; preds = %..loopexit6406_crit_edge.us.us, %.preheader6411.us
  %i.ehx = phi i32 [ %i.ehm, %.preheader6411.us ], [ %i.eig, %..loopexit6406_crit_edge.us.us ] ; 2 uses
  %.us-phi7357.us = phi <16 x float> [ %.061507359.us, %.preheader6411.us ], [ %.76157.us.us, %..loopexit6406_crit_edge.us.us ] ; 2 uses
  %i.ehy = getelementptr inbounds [4 x i8], ptr %.018277360.us, i64 %i.egs ; 2 uses
  %indvars.iv.next8009 = add nuw nsw i64 %indvars.iv8008, 16 ; 3 uses
  %i.ehz = icmp slt i64 %indvars.iv.next8009, %invariant.op8366
  br i1 %i.ehz, label %.preheader6411.us, label %._crit_edge7364.loopexit, !llvm.loop !1463

.lr.ph7345.split.us.us:                           ; preds = %.lr.ph7345.split.us.us.preheader, %..loopexit6406_crit_edge.us.us
  %i.eia = phi i32 [ %i.ehm, %.lr.ph7345.split.us.us.preheader ], [ %i.eig, %..loopexit6406_crit_edge.us.us ] ; 4 uses
  %indvars.iv8003 = phi i64 [ 0, %.lr.ph7345.split.us.us.preheader ], [ %indvars.iv.next8004, %..loopexit6406_crit_edge.us.us ] ; 3 uses
  %.161517343.us.us = phi <16 x float> [ %.061507359.us, %.lr.ph7345.split.us.us.preheader ], [ %.76157.us.us, %..loopexit6406_crit_edge.us.us ] ; 4 uses
  %i.eib = trunc i64 %indvars.iv8003 to i32
  %i.eic = mul i32 %i.ehk, %i.eib
  %.reass7349.us.us = add i32 %i.eic, %invariant.op7348 ; 3 uses
  %i.eid = icmp slt i32 %.reass7349.us.us, 0
  br i1 %i.eid, label %..loopexit6406_crit_edge.us.us, label %bb.cu

bb.cu:                                            ; preds = %.lr.ph7345.split.us.us
  %i.eie = srem i32 %.reass7349.us.us, %i.ehe
  %i.eif = sdiv i32 %.reass7349.us.us, %i.ehe     ; 2 uses
  %.not2074.us.us = icmp eq i32 %i.eie, 0
  %.not2075.us.us = icmp slt i32 %i.eif, %i.deu
  %or.cond8634 = select i1 %.not2074.us.us, i1 %.not2075.us.us, i1 false
  br i1 %or.cond8634, label %.preheader6405.us.us, label %..loopexit6406_crit_edge.us.us

..loopexit6406_crit_edge.us.us:                   ; preds = %bb.cw, %.preheader6405.us.us, %bb.cu, %.lr.ph7345.split.us.us
  %i.eig = phi i32 [ %i.eia, %.lr.ph7345.split.us.us ], [ %i.eia, %bb.cu ], [ %i.eia, %.preheader6405.us.us ], [ %i.eml, %bb.cw ] ; 2 uses
  %.76157.us.us = phi nsz <16 x float> [ %.161517343.us.us, %.lr.ph7345.split.us.us ], [ %.161517343.us.us, %bb.cu ], [ %.161517343.us.us, %.preheader6405.us.us ], [ %.66156.us.us.us, %bb.cw ] ; 2 uses
  %indvars.iv.next8004 = add nuw nsw i64 %indvars.iv8003, 1 ; 2 uses
  %exitcond8007.not = icmp eq i64 %indvars.iv.next8004, %wide.trip.count8006
  br i1 %exitcond8007.not, label %._crit_edge7346.us, label %.lr.ph7345.split.us.us, !llvm.loop !1464

.preheader6405.us.us:                             ; preds = %bb.cu
  %i.eih = mul nuw nsw i64 %indvars.iv8003, %i.ehl
  %i.eii = sext i32 %i.eif to i64                 ; 4 uses
  br i1 %i.dfh, label %.lr.ph.split.us.us.us7375, label %..loopexit6406_crit_edge.us.us

.lr.ph.split.us.us.us7375:                        ; preds = %.preheader6405.us.us, %bb.cw
  %i.eij = phi i32 [ %i.eml, %bb.cw ], [ %i.eia, %.preheader6405.us.us ] ; 3 uses
  %indvars.iv7998 = phi i64 [ %indvars.iv.next7999, %bb.cw ], [ 0, %.preheader6405.us.us ] ; 3 uses
  %.261527336.us.us.us = phi <16 x float> [ %.66156.us.us.us, %bb.cw ], [ %.161517343.us.us, %.preheader6405.us.us ] ; 7 uses
  %i.eik = trunc i64 %indvars.iv7998 to i32
  %i.eil = mul i32 %i.ehj, %i.eik
  %.reass7340.us.us.us = add i32 %i.eil, %invariant.op7339 ; 3 uses
  %i.eim = icmp slt i32 %.reass7340.us.us.us, 0
  br i1 %i.eim, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %.lr.ph.split.us.us.us7375
  %i.ein = srem i32 %.reass7340.us.us.us, %i.ehi
  %i.eio = sdiv i32 %.reass7340.us.us.us, %i.ehi  ; 6 uses
  %.not2076.us.us.us = icmp eq i32 %i.ein, 0
  %.not2077.us.us.us = icmp slt i32 %i.eio, %i.des
  %or.cond8635 = select i1 %.not2076.us.us.us, i1 %.not2077.us.us.us, i1 false
  br i1 %or.cond8635, label %.split2150.us.us.us, label %bb.cw

.split2150.us.us.us:                              ; preds = %bb.cv
  %i.eip = add nuw nsw i64 %i.eih, %indvars.iv7998
  %i.eiq = shl i64 %i.eip, 4
  %i.eir = and i64 %i.eiq, 4294967280
  %i.eis = getelementptr inbounds nuw [4 x i8], ptr %.018277360.us, i64 %i.eir ; 4 uses
  switch i32 %i.dfi, label %bb.cw [
    i32 4, label %_ZN4ncnn3MatD2Ev.exit2165.us.us.us
    i32 3, label %_ZN4ncnn3MatD2Ev.exit2164.us.us.us
    i32 2, label %.split2150.us.us.us._ZN4ncnn3MatD2Ev.exit2162.us.us.us_crit_edge
    i32 0, label %.split2150.us.us.us._ZN4ncnn3MatD2Ev.exit2158.us.us.us_crit_edge
  ]

.split2150.us.us.us._ZN4ncnn3MatD2Ev.exit2158.us.us.us_crit_edge: ; preds = %.split2150.us.us.us
  %.pre8150.a = load i32, ptr %i.der, align 4, !tbaa !58, !noalias !1465 ; 2 uses
  %.pre8151.a = load ptr, ptr %0, align 8, !tbaa !18, !noalias !1465
  %.pre8152 = load i64, ptr %i.dfj, align 8, !tbaa !20, !noalias !1465
  %.pre8153 = load i64, ptr %i.dfk, align 8, !tbaa !59, !noalias !1465 ; 2 uses
  %.pre8154 = load <16 x float>, ptr %i.eis, align 64, !tbaa !1223
  %.pre8166.a = sext i32 %.pre8150.a to i64
  %.pre8168 = mul nsw i64 %.pre8166.a, %i.eii
  %.pre8170 = mul i64 %.pre8168, %.pre8153
  br label %_ZN4ncnn3MatD2Ev.exit2158.us.us.us

.split2150.us.us.us._ZN4ncnn3MatD2Ev.exit2162.us.us.us_crit_edge: ; preds = %.split2150.us.us.us
  %.pre8145.a = load i32, ptr %i.der, align 4, !tbaa !58, !noalias !1468 ; 2 uses
  %.pre8146.a = load ptr, ptr %0, align 8, !tbaa !18, !noalias !1468
  %.pre8147 = load i64, ptr %i.dfj, align 8, !tbaa !20, !noalias !1468
  %.pre8148 = load i64, ptr %i.dfk, align 8, !tbaa !59, !noalias !1468 ; 2 uses
  %.pre8149 = load <16 x float>, ptr %i.eis, align 64, !tbaa !1223
  %.pre8160.a = sext i32 %.pre8145.a to i64
  %.pre8162 = mul nsw i64 %.pre8160.a, %i.eii
  %.pre8164 = mul i64 %.pre8162, %.pre8148
  br label %_ZN4ncnn3MatD2Ev.exit2162.us.us.us

_ZN4ncnn3MatD2Ev.exit2165.us.us.us:               ; preds = %.split2150.us.us.us
  %i.eit = load i32, ptr %i.der, align 4, !tbaa !58, !noalias !1471 ; 5 uses
  %i.eiu = load ptr, ptr %0, align 8, !tbaa !18, !noalias !1471 ; 5 uses
  %i.eiv = load i64, ptr %i.dfj, align 8, !tbaa !20, !noalias !1471 ; 5 uses
  %i.eiw = mul i64 %i.eiv, %i.ehn
  %i.eix = load i64, ptr %i.dfk, align 8, !tbaa !59, !noalias !1471 ; 6 uses
  %i.eiy = mul i64 %i.eiw, %i.eix
  %i.eiz = getelementptr inbounds nuw i8, ptr %i.eiu, i64 %i.eiy
  %i.eja = sext i32 %i.eit to i64
  %i.ejb = mul nsw i64 %i.eja, %i.eii
  %i.ejc = mul i64 %i.ejb, %i.eix                 ; 5 uses
  %i.ejd = getelementptr inbounds nuw i8, ptr %i.eiz, i64 %i.ejc
  %i.eje = shl nsw i32 %i.eio, 4
  %i.ejf = sext i32 %i.eje to i64
  %i.ejg = getelementptr inbounds [4 x i8], ptr %i.ejd, i64 %i.ejf
  %i.ejh = load <16 x float>, ptr %i.ejg, align 64, !tbaa !1223
  %i.eji = load <16 x float>, ptr %i.eis, align 64, !tbaa !1223 ; 4 uses
  %i.ejj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ejh, <16 x float> nofpclass(nan inf) %i.eji, <16 x float> nofpclass(nan inf) %.261527336.us.us.us) ; 4 uses
  switch i32 %.fr7587, label %bb.cw [
    i32 8, label %_ZN4ncnn3MatD2Ev.exit2164.us.us.us.thread
    i32 4, label %_ZN4ncnn3MatD2Ev.exit2162.us.us.us
    i32 1, label %_ZN4ncnn3MatD2Ev.exit2158.us.us.us
  ]

_ZN4ncnn3MatD2Ev.exit2164.us.us.us.thread:        ; preds = %_ZN4ncnn3MatD2Ev.exit2165.us.us.us
  %i.ejk = mul i64 %i.eiv, %i.eho
  %i.ejl = mul i64 %i.ejk, %i.eix
  %i.ejm = getelementptr inbounds nuw i8, ptr %i.eiu, i64 %i.ejl
  %i.ejn = getelementptr inbounds nuw i8, ptr %i.ejm, i64 %i.ejc
  %i.ejo = shl nsw i32 %i.eio, 3
  %i.ejp = sext i32 %i.ejo to i64                 ; 2 uses
  %i.ejq = getelementptr inbounds [4 x i8], ptr %i.ejn, i64 %i.ejp
  %i.ejr = mul i64 %i.eiv, %i.ehp
  %i.ejs = mul i64 %i.ejr, %i.eix
  %i.ejt = getelementptr inbounds nuw i8, ptr %i.eiu, i64 %i.ejs
  %i.eju = getelementptr inbounds nuw i8, ptr %i.ejt, i64 %i.ejc
  %i.ejv = getelementptr inbounds [4 x i8], ptr %i.eju, i64 %i.ejp
  %i.ejw = load <8 x float>, ptr %i.ejq, align 32, !tbaa !1223
  %i.ejx = load <8 x float>, ptr %i.ejv, align 32, !tbaa !1223
  %i.ejy = shufflevector <8 x float> %i.ejw, <8 x float> %i.ejx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ejz = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ejy, <16 x float> nofpclass(nan inf) %i.eji, <16 x float> nofpclass(nan inf) %i.ejj)
  br label %bb.cw

_ZN4ncnn3MatD2Ev.exit2164.us.us.us:               ; preds = %.split2150.us.us.us
  %.pre8140 = load i32, ptr %i.der, align 4, !tbaa !58, !noalias !1474 ; 4 uses
  %.pre8141 = load ptr, ptr %0, align 8, !tbaa !18, !noalias !1474 ; 4 uses
  %.pre8142 = load i64, ptr %i.dfj, align 8, !tbaa !20, !noalias !1474 ; 4 uses
  %.pre8143 = load i64, ptr %i.dfk, align 8, !tbaa !59, !noalias !1474 ; 5 uses
  %.pre8144 = load <16 x float>, ptr %i.eis, align 64, !tbaa !1223 ; 3 uses
  %.pre8155 = sext i32 %.pre8140 to i64
  %.pre8156 = mul nsw i64 %.pre8155, %i.eii
  %.pre8158 = mul i64 %.pre8156, %.pre8143        ; 4 uses
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
  br label %bb.eb

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
  br i1 %i.an, label %_ZN4ncnn3MatD2Ev.exit2344.lr.ph, label %._crit_edge7353

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
  %wide.trip.count8397 = zext nneg i32 %i.am to i64
  br label %_ZN4ncnn3MatD2Ev.exit2344

._crit_edge7353:                                  ; preds = %._crit_edge7351.split, %bb.c
  %i.ba = shl nsw i32 %i.am, 3
  %i.bb = add nsw i32 %i.ba, %i.ak                ; 3 uses
  %i.bc = sub nsw i32 %i.t, %i.bb                 ; 2 uses
  %i.bd = sdiv i32 %i.bc, 4                       ; 3 uses
  store i32 %i.bd, ptr %i.m, align 4, !tbaa !78
  %i.be = icmp sgt i32 %i.bc, 3
  br i1 %i.be, label %_ZN4ncnn3MatD2Ev.exit2284.lr.ph, label %._crit_edge7646

_ZN4ncnn3MatD2Ev.exit2284.lr.ph:                  ; preds = %._crit_edge7353
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
  %wide.trip.count8484 = zext nneg i32 %i.bd to i64
  br label %_ZN4ncnn3MatD2Ev.exit2284

_ZN4ncnn3MatD2Ev.exit2344:                        ; preds = %_ZN4ncnn3MatD2Ev.exit2344.lr.ph, %._crit_edge7351.split
  %indvars.iv8394 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit2344.lr.ph ], [ %indvars.iv.next8395, %._crit_edge7351.split ] ; 2 uses
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
  br i1 %i.bz, label %.preheader7067.lr.ph, label %._crit_edge7351.split

.preheader7067.lr.ph:                             ; preds = %_ZN4ncnn3MatD2Ev.exit2344
  %i.ca = shl nuw nsw i64 %indvars.iv8394, 3
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
  br i1 %i.cd, label %.preheader7067.preheader, label %._crit_edge7351.split

.preheader7067.preheader:                         ; preds = %.preheader7067.lr.ph
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
  %invariant.op9054 = add nsw i64 %i.dd, -15
  br label %.preheader7067

.preheader7067:                                   ; preds = %.preheader7067.preheader, %._crit_edge
  %.018147350 = phi ptr [ %.4, %._crit_edge ], [ %i.cw, %.preheader7067.preheader ]
  %.018157349 = phi i32 [ %.neg6991, %._crit_edge ], [ 0, %.preheader7067.preheader ]
  %i.dg = load i32, ptr %i.b, align 4             ; 6 uses
  %i.dh = icmp sgt i32 %i.dg, 0                   ; 5 uses
  %.neg6991 = add nuw nsw i32 %.018157349, 1      ; 7 uses
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
  %wide.trip.count8323 = zext nneg i32 %i.dg to i64
  %wide.trip.count8337 = zext nneg i32 %i.dg to i64
  %wide.trip.count8357 = zext nneg i32 %i.dg to i64
  %wide.trip.count8374 = zext nneg i32 %i.dg to i64
  %wide.trip.count8387 = zext nneg i32 %i.dg to i64
  br label %bb.d

._crit_edge7351.split:                            ; preds = %._crit_edge, %.preheader7067.lr.ph, %_ZN4ncnn3MatD2Ev.exit2344
  %indvars.iv.next8395 = add nuw nsw i64 %indvars.iv8394, 1 ; 2 uses
  %exitcond8398.not = icmp eq i64 %indvars.iv.next8395, %wide.trip.count8397
  br i1 %exitcond8398.not, label %._crit_edge7353, label %_ZN4ncnn3MatD2Ev.exit2344, !llvm.loop !1679

._crit_edge:                                      ; preds = %.thread6878
  %exitcond8393.not = icmp eq i32 %.neg6991, %i.bx
  br i1 %exitcond8393.not, label %._crit_edge7351.split, label %.preheader7067, !llvm.loop !1680

bb.d:                                             ; preds = %.preheader7067, %.thread6878
  %.17348 = phi ptr [ %.018147350, %.preheader7067 ], [ %.4, %.thread6878 ] ; 15 uses
  %.018167347 = phi i32 [ 0, %.preheader7067 ], [ %i.bxv, %.thread6878 ] ; 6 uses
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
  br i1 %i.cj, label %.preheader7062.lr.ph, label %.preheader7066

.preheader7062.lr.ph:                             ; preds = %_ZN4ncnn3MatD2Ev.exit2343
  %i.ed = load i32, ptr %i.j, align 4
  %invariant.op7090 = sub i32 %.neg6991, %i.ed
  %i.ee = load i32, ptr %i.f, align 4             ; 2 uses
  %i.ef = load i32, ptr %i.a, align 4
  %.fr8163 = freeze i32 %i.ef                     ; 2 uses
  %i.eg = icmp sgt i32 %.fr8163, 0
  %i.eh = load i32, ptr %i.i, align 4
  %.neg6993 = add nuw nsw i32 %.018167347, 1
  %invariant.op = sub i32 %.neg6993, %i.eh
  %i.ei = load i32, ptr %i.e, align 4             ; 2 uses
  br i1 %i.dh, label %.preheader7062.us.preheader, label %.preheader7062.preheader
end_hunk_2
begin_hunk_3_@_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a

._crit_edge7880.split.us.us.us:                   ; preds = %..loopexit7012_crit_edge.us.us.us
  %i.fys = getelementptr inbounds [2 x i8], ptr %.419047891.us.us, i64 %i.exs
  %indvars.iv.next8579 = add nuw nsw i64 %indvars.iv8578, 1 ; 2 uses
  %i.fyt = trunc nuw i64 %indvars.iv.next8579 to i32
  %i.fyu = icmp sgt i32 %i.byf, %i.fyt
  br i1 %i.fyu, label %.preheader7021.us.us, label %._crit_edge7894, !llvm.loop !1857

._crit_edge7894:                                  ; preds = %._crit_edge7880.split.us.us.us, %.preheader7021.lr.ph, %.preheader7026
  %i.fyv = phi <2 x float> [ %i.fwo, %.preheader7026 ], [ %i.fwo, %.preheader7021.lr.ph ], [ %i.fyp, %._crit_edge7880.split.us.us.us ] ; 11 uses
  switch i32 %i.exe, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3310 [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread6890
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread6893
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread6887
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread6896
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread6899
    i32 6, label %bb.cp
  ]

_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread6890: ; preds = %._crit_edge7894
  %i.fyw = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.fyv, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3310

_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread6893: ; preds = %._crit_edge7894
  %i.fyx = load ptr, ptr %11, align 8, !tbaa !18
  %i.fyy = load float, ptr %i.fyx, align 4, !tbaa !39
  %i.fyz = fcmp fast ogt <2 x float> %i.fyv, zeroinitializer
  %i.fza = insertelement <2 x float> poison, float %i.fyy, i64 0
  %i.fzb = shufflevector <2 x float> %i.fza, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fzc = select <2 x i1> %i.fyz, <2 x float> splat (float 1.000000e+00), <2 x float> %i.fzb
  %i.fzd = fmul fast <2 x float> %i.fzc, %i.fyv
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3310

_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread6887: ; preds = %._crit_edge7894
  %i.fze = load ptr, ptr %11, align 8, !tbaa !18  ; 2 uses
  %i.fzf = load float, ptr %i.fze, align 4, !tbaa !39
  %i.fzg = getelementptr inbounds nuw i8, ptr %i.fze, i64 4
  %i.fzh = load float, ptr %i.fzg, align 4, !tbaa !39 ; 3 uses
  %i.fzi = insertelement <2 x float> poison, float %i.fzf, i64 0
  %i.fzj = shufflevector <2 x float> %i.fzi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fzk = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.fyv, <2 x float> %i.fzj) ; 3 uses
  %i.fzl = insertelement <2 x float> poison, float %i.fzh, i64 0
  %i.fzm = shufflevector <2 x float> %i.fzl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fzn = fcmp fast ogt <2 x float> %i.fzk, %i.fzm ; 2 uses
  %i.fzo = extractelement <2 x i1> %i.fzn, i64 0
  %i.fzp = extractelement <2 x float> %i.fzk, i64 0
  %.166656889 = select i1 %i.fzo, float %i.fzh, float %i.fzp
  %i.fzq = insertelement <2 x float> %i.fzk, float %.166656889, i64 0 ; 2 uses
  %i.fzr = extractelement <2 x i1> %i.fzn, i64 1
  %i.fzs = insertelement <2 x float> %i.fzq, float %i.fzh, i64 1
  %spec.select = select i1 %i.fzr, <2 x float> %i.fzs, <2 x float> %i.fzq
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3310

_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread6896: ; preds = %._crit_edge7894
  %i.fzt = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.fyv, <2 x float> splat (float f0x42B0C0A5))
  %i.fzu = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.fzt, <2 x float> splat (float f0xC2B0C0A5))
  %i.fzv = fneg fast <2 x float> %i.fzu
  %i.fzw = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.fzv)
  %i.fzx = fadd fast <2 x float> %i.fzw, splat (float 1.000000e+00)
  %i.fzy = fdiv fast <2 x float> splat (float 1.000000e+00), %i.fzx
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3310

_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread6899: ; preds = %._crit_edge7894
  %i.fzz = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.fyv)
  %i.gaa = fadd fast <2 x float> %i.fzz, splat (float 1.000000e+00)
  %i.gab = call fast <2 x float> @llvm.log.v2f32(<2 x float> %i.gaa)
  %i.gac = call fast <2 x float> @llvm.tanh.v2f32(<2 x float> %i.gab)
  %i.gad = fmul fast <2 x float> %i.gac, %i.fyv
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3310

bb.cp:                                            ; preds = %._crit_edge7894
  %i.gae = load ptr, ptr %11, align 8, !tbaa !18  ; 2 uses
  %i.gaf = load float, ptr %i.gae, align 4, !tbaa !39 ; 5 uses
  %i.gag = getelementptr inbounds nuw i8, ptr %i.gae, i64 4
  %i.gah = load float, ptr %i.gag, align 4, !tbaa !39 ; 3 uses
  %i.gai = fneg fast float %i.gah
  %i.gaj = fdiv fast float %i.gai, %i.gaf         ; 4 uses
  %i.gak = extractelement <2 x float> %i.fyv, i64 0 ; 5 uses
  %i.gal = fcmp fast olt float %i.gak, %i.gaj
  br i1 %i.gal, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.gam = fdiv fast float 1.000000e+00, %i.gaf
  %i.gan = fadd fast float %i.gaj, %i.gam
  %i.gao = fcmp fast ogt float %i.gak, %i.gan
  br i1 %i.gao, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.gap = fmul fast float %i.gaf, %i.gak
  %i.gaq = fadd fast float %i.gap, %i.gah
  %i.gar = fmul fast float %i.gaq, %i.gak
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread

_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread: ; preds = %bb.cr, %bb.cq, %bb.cp
  %.166656883 = phi float [ %i.gar, %bb.cr ], [ 0.000000e+00, %bb.cp ], [ %i.gak, %bb.cq ] ; 2 uses
  %i.gas = extractelement <2 x float> %i.fyv, i64 1 ; 4 uses
  %i.gat = fcmp fast olt float %i.gas, %i.gaj
  %i.gau = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.166656883, i64 0 ; 2 uses
  br i1 %i.gat, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3310, label %bb.cs

bb.cs:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread
  %i.gav = fdiv fast float 1.000000e+00, %i.gaf
  %i.gaw = fadd fast float %i.gaj, %i.gav
  %i.gax = fcmp fast ogt float %i.gas, %i.gaw
  %i.gay = insertelement <2 x float> %i.fyv, float %.166656883, i64 0
  br i1 %i.gax, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3310, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.gaz = fmul fast float %i.gaf, %i.gas
  %i.gba = fadd fast float %i.gaz, %i.gah
  %i.gbb = fmul fast float %i.gba, %i.gas
  %i.gbc = insertelement <2 x float> %i.gau, float %i.gbb, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit3310

_ZL13activation_ssfiRKN4ncnn3MatE.exit3310:       ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread6887, %._crit_edge7894, %_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread, %_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread6890, %_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread6893, %_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread6896, %_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread6899, %bb.cs, %bb.ct
  %i.gbd = phi <2 x float> [ %i.gau, %_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread ], [ %i.fyw, %_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread6890 ], [ %i.fzd, %_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread6893 ], [ %i.fyv, %._crit_edge7894 ], [ %spec.select, %_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread6887 ], [ %i.fzy, %_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread6896 ], [ %i.gad, %_ZL13activation_ssfiRKN4ncnn3MatE.exit3311.thread6899 ], [ %i.gbc, %bb.ct ], [ %i.gay, %bb.cs ]
  %i.gbe = bitcast <2 x float> %i.gbd to <2 x i32>
  %i.gbf = lshr <2 x i32> %i.gbe, splat (i32 16)
  %i.gbg = trunc nuw <2 x i32> %i.gbf to <2 x i16> ; 2 uses
  %i.gbh = extractelement <2 x i16> %i.gbg, i64 0
  store i16 %i.gbh, ptr %.119427908, align 2, !tbaa !1588
  %i.gbi = extractelement <2 x i16> %i.gbg, i64 1
  store i16 %i.gbi, ptr %.119407909, align 2, !tbaa !1588
  %i.gbj = getelementptr inbounds nuw i8, ptr %.119427908, i64 2 ; 2 uses
  %i.gbk = getelementptr inbounds nuw i8, ptr %.119407909, i64 2 ; 2 uses
  %i.gbl = add nuw nsw i32 %.019377910, 1         ; 2 uses
  %exitcond8581.not = icmp eq i32 %i.gbl, %i.byl
  br i1 %exitcond8581.not, label %._crit_edge7911, label %bb.br, !llvm.loop !1858

._crit_edge8151.split:                            ; preds = %._crit_edge8149, %_ZN4ncnn3MatD2Ev.exit2221.lr.ph, %._crit_edge7919.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #9
  br label %bb.eb

_ZN4ncnn3MatD2Ev.exit2221:                        ; preds = %_ZN4ncnn3MatD2Ev.exit2221.lr.ph.split.split, %._crit_edge8149
  %indvars.iv8685 = phi i64 [ %i.ewg, %_ZN4ncnn3MatD2Ev.exit2221.lr.ph.split.split ], [ %indvars.iv.next8686, %._crit_edge8149 ] ; 4 uses
  %.reass8153 = mul i64 %factor.op.mul8152, %indvars.iv8685
  %i.gbm = getelementptr inbounds nuw i8, ptr %i.evh, i64 %.reass8153
  %i.gbn = load ptr, ptr %i.l, align 8            ; 2 uses
  %.not2096 = icmp eq ptr %i.gbn, null
  %i.gbo = getelementptr inbounds [4 x i8], ptr %i.gbn, i64 %indvars.iv8685
  %i.gbp = trunc nsw i64 %indvars.iv8685 to i32   ; 2 uses
  %i.gbq = sdiv i32 %i.gbp, 16
  %i.gbr = insertelement <4 x i32> poison, i32 %i.gbp, i64 0
  %i.gbs = shufflevector <4 x i32> %i.gbr, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.gbt = srem <4 x i32> %i.gbs, <i32 16, i32 8, i32 4, i32 2> ; 4 uses
  %i.gbu = bitcast <4 x i32> %i.gbt to <16 x i8>
  %.lhs.trunc6906 = extractelement <16 x i8> %i.gbu, i64 0
  %i.gbv = sdiv i8 %.lhs.trunc6906, 8
  %.sext6907 = sext i8 %i.gbv to i32
  %i.gbw = bitcast <4 x i32> %i.gbt to <16 x i8>
  %.lhs.trunc6908 = extractelement <16 x i8> %i.gbw, i64 4
  %i.gbx = sdiv i8 %.lhs.trunc6908, 4
  %.sext6909 = sext i8 %i.gbx to i32
  %i.gby = bitcast <4 x i32> %i.gbt to <16 x i8>
  %.lhs.trunc6910 = extractelement <16 x i8> %i.gby, i64 8
  %i.gbz = sdiv i8 %.lhs.trunc6910, 2
  %.sext6911 = sext i8 %i.gbz to i32
  %i.gca = extractelement <4 x i32> %i.gbt, i64 3
  %i.gcb = add nsw i32 %i.gca, %i.gbq
  %i.gcc = add nsw i32 %i.gcb, %.sext6907
  %i.gcd = add nsw i32 %i.gcc, %.sext6909
  %i.gce = add nsw i32 %i.gcd, %.sext6911
  %i.gcf = sext i32 %i.gce to i64
  %i.gcg = load i32, ptr %i.g, align 4
  %.reass8156 = mul i64 %factor.op.mul8155, %i.gcf
  %i.gch = getelementptr i8, ptr %i.evw, i64 %.reass8156 ; 3 uses
  br label %.preheader7009

.preheader7009:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit2221, %._crit_edge8145
  %.018758148 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit2221 ], [ %.neg6931, %._crit_edge8145 ]
  %.018768147 = phi ptr [ %i.gbm, %_ZN4ncnn3MatD2Ev.exit2221 ], [ %i.hbo, %._crit_edge8145 ]
  %i.gci = load i32, ptr %i.b, align 4            ; 6 uses
  %i.gcj = icmp sgt i32 %i.gci, 0                 ; 5 uses
  %.neg6931 = add nuw nsw i32 %.018758148, 1      ; 7 uses
  %i.gck = load i32, ptr %i.k, align 4            ; 5 uses
  %i.gcl = shl i32 %i.gck, 4
  %i.gcm = sext i32 %i.gcl to i64                 ; 2 uses
  %i.gcn = shl i32 %i.gck, 3
  %i.gco = sext i32 %i.gcn to i64                 ; 2 uses
  %i.gcp = shl i32 %i.gck, 2
  %i.gcq = sext i32 %i.gcp to i64                 ; 3 uses
  %i.gcr = shl i32 %i.gck, 1
  %i.gcs = sext i32 %i.gcr to i64                 ; 2 uses
  %i.gct = sext i32 %i.gck to i64
  %i.gcu = mul nsw i64 %i.ewc, %i.gcm
  %scevgep8589 = getelementptr i8, ptr %i.gch, i64 %i.gcu
  %wide.trip.count8602 = zext nneg i32 %i.gci to i64
  %wide.trip.count8621 = zext nneg i32 %i.gci to i64
  %wide.trip.count8647 = zext nneg i32 %i.gci to i64
  %wide.trip.count8665 = zext nneg i32 %i.gci to i64
  %wide.trip.count8678 = zext nneg i32 %i.gci to i64
  br label %bb.cu

._crit_edge8149:                                  ; preds = %._crit_edge8145
  %indvars.iv.next8686 = add nsw i64 %indvars.iv8685, 1 ; 2 uses
  %13 = icmp slt i64 %indvars.iv.next8686, %i.ewh
  br i1 %13, label %_ZN4ncnn3MatD2Ev.exit2221, label %._crit_edge8151.split, !llvm.loop !1859

._crit_edge8145:                                  ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %exitcond8684.not = icmp eq i32 %.neg6931, %i.evg
  br i1 %exitcond8684.not, label %._crit_edge8149, label %.preheader7009, !llvm.loop !1860

bb.cu:                                            ; preds = %.preheader7009, %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %.018748144 = phi i32 [ 0, %.preheader7009 ], [ %i.hbp, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 6 uses
  %.118778143 = phi ptr [ %.018768147, %.preheader7009 ], [ %i.hbo, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 2 uses
  br i1 %.not2096, label %_ZN4ncnn3MatD2Ev.exit2220, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.gcv = load float, ptr %i.gbo, align 4, !tbaa !39
  br label %_ZN4ncnn3MatD2Ev.exit2220

_ZN4ncnn3MatD2Ev.exit2220:                        ; preds = %bb.cv, %bb.cu
  %.01859 = phi nsz float [ %i.gcv, %bb.cv ], [ 0.000000e+00, %bb.cu ]
  br i1 %i.evn, label %.preheader7007.lr.ph, label %._crit_edge7960

.preheader7007.lr.ph:                             ; preds = %_ZN4ncnn3MatD2Ev.exit2220
  %i.gcw = load i32, ptr %i.j, align 4
  %invariant.op7944 = sub i32 %.neg6931, %i.gcw
  %i.gcx = load i32, ptr %i.f, align 4            ; 2 uses
  %i.gcy = load i32, ptr %i.a, align 4
  %.fr8184 = freeze i32 %i.gcy                    ; 2 uses
  %i.gcz = icmp sgt i32 %.fr8184, 0
  %i.gda = load i32, ptr %i.i, align 4
  %.neg6933 = add nuw nsw i32 %.018748144, 1
  %invariant.op7935 = sub i32 %.neg6933, %i.gda
  %i.gdb = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.gcj, label %.preheader7007.us.preheader, label %._crit_edge7960

.preheader7007.us.preheader:                      ; preds = %.preheader7007.lr.ph
  %i.gdc = load i32, ptr %i.c, align 4
  %i.gdd = load i32, ptr %i.d, align 4
  %i.gde = zext i32 %.fr8184 to i64               ; 2 uses
  br label %.preheader7007.us

.preheader7007.us:                                ; preds = %.preheader7007.us.preheader, %._crit_edge7942.us
  %indvars.iv8604 = phi i64 [ 0, %.preheader7007.us.preheader ], [ %indvars.iv.next8605, %._crit_edge7942.us ] ; 20 uses
  %.018547956.us = phi ptr [ %i.gch, %.preheader7007.us.preheader ], [ %i.geb, %._crit_edge7942.us ] ; 2 uses
  %.067457955.us = phi <16 x float> [ zeroinitializer, %.preheader7007.us.preheader ], [ %.us-phi7953.us, %._crit_edge7942.us ] ; 2 uses
  %i.gdf = lshr exact i64 %indvars.iv8604, 4
  %i.gdg = lshr exact i64 %indvars.iv8604, 3      ; 2 uses
  %i.gdh = or disjoint i64 %i.gdg, 1
  %i.gdi = lshr exact i64 %indvars.iv8604, 2      ; 4 uses
  %i.gdj = or disjoint i64 %i.gdi, 1
  %i.gdk = or disjoint i64 %i.gdi, 2
  %i.gdl = or disjoint i64 %i.gdi, 3
  br i1 %i.gcz, label %.lr.ph7941.split.us.us.preheader, label %._crit_edge7942.us

.lr.ph7941.split.us.us.preheader:                 ; preds = %.preheader7007.us
  %i.gdm = or disjoint i64 %indvars.iv8604, 1
  %i.gdn = or disjoint i64 %indvars.iv8604, 2
  %i.gdo = or disjoint i64 %indvars.iv8604, 3
  %i.gdp = or disjoint i64 %indvars.iv8604, 4
  %i.gdq = or disjoint i64 %indvars.iv8604, 5
  %i.gdr = or disjoint i64 %indvars.iv8604, 6
  %i.gds = or disjoint i64 %indvars.iv8604, 7
  %i.gdt = or disjoint i64 %indvars.iv8604, 8
  %i.gdu = or disjoint i64 %indvars.iv8604, 9
  %i.gdv = or disjoint i64 %indvars.iv8604, 10
  %i.gdw = or disjoint i64 %indvars.iv8604, 11
  %i.gdx = or disjoint i64 %indvars.iv8604, 12
  %i.gdy = or disjoint i64 %indvars.iv8604, 13
  %i.gdz = or disjoint i64 %indvars.iv8604, 14
  %i.gea = or disjoint i64 %indvars.iv8604, 15
  br label %.lr.ph7941.split.us.us

._crit_edge7942.us:                               ; preds = %..loopexit7002_crit_edge.us.us, %.preheader7007.us
  %.us-phi7953.us = phi <16 x float> [ %.067457955.us, %.preheader7007.us ], [ %.76752.us.us, %..loopexit7002_crit_edge.us.us ] ; 2 uses
  %i.geb = getelementptr inbounds [2 x i8], ptr %.018547956.us, i64 %i.gcm ; 2 uses
  %indvars.iv.next8605 = add nuw nsw i64 %indvars.iv8604, 16 ; 3 uses
  %i.gec = icmp slt i64 %indvars.iv.next8605, %invariant.op9057
  br i1 %i.gec, label %.preheader7007.us, label %._crit_edge7960.loopexit, !llvm.loop !1861

.lr.ph7941.split.us.us:                           ; preds = %.lr.ph7941.split.us.us.preheader, %..loopexit7002_crit_edge.us.us
  %indvars.iv8599 = phi i64 [ 0, %.lr.ph7941.split.us.us.preheader ], [ %indvars.iv.next8600, %..loopexit7002_crit_edge.us.us ] ; 3 uses
  %.167467939.us.us = phi <16 x float> [ %.067457955.us, %.lr.ph7941.split.us.us.preheader ], [ %.76752.us.us, %..loopexit7002_crit_edge.us.us ] ; 4 uses
  %i.ged = trunc i64 %indvars.iv8599 to i32
  %i.gee = mul i32 %i.gdd, %i.ged
  %.reass7945.us.us = add i32 %i.gee, %invariant.op7944 ; 3 uses
  %i.gef = icmp slt i32 %.reass7945.us.us, 0
  br i1 %i.gef, label %..loopexit7002_crit_edge.us.us, label %bb.cw

bb.cw:                                            ; preds = %.lr.ph7941.split.us.us
  %i.geg = srem i32 %.reass7945.us.us, %i.gcx
  %i.geh = sdiv i32 %.reass7945.us.us, %i.gcx     ; 2 uses
  %.not2113.us.us = icmp eq i32 %i.geg, 0
  %.not2114.us.us = icmp slt i32 %i.geh, %i.evc
  %or.cond9377 = select i1 %.not2113.us.us, i1 %.not2114.us.us, i1 false
  br i1 %or.cond9377, label %.preheader7001.us.us, label %..loopexit7002_crit_edge.us.us

..loopexit7002_crit_edge.us.us:                   ; preds = %bb.cy, %.preheader7001.us.us, %bb.cw, %.lr.ph7941.split.us.us
  %.76752.us.us = phi nsz <16 x float> [ %.167467939.us.us, %.lr.ph7941.split.us.us ], [ %.167467939.us.us, %bb.cw ], [ %.167467939.us.us, %.preheader7001.us.us ], [ %.66751.us.us.us, %bb.cy ] ; 2 uses
  %indvars.iv.next8600 = add nuw nsw i64 %indvars.iv8599, 1 ; 2 uses
  %exitcond8603.not = icmp eq i64 %indvars.iv.next8600, %wide.trip.count8602
  br i1 %exitcond8603.not, label %._crit_edge7942.us, label %.lr.ph7941.split.us.us, !llvm.loop !1862

.preheader7001.us.us:                             ; preds = %bb.cw
  %i.gei = mul nuw nsw i64 %indvars.iv8599, %i.gde
  %i.gej = sext i32 %i.geh to i64                 ; 4 uses
  br i1 %i.evp, label %.lr.ph.split.us.us.us7971, label %..loopexit7002_crit_edge.us.us

.lr.ph.split.us.us.us7971:                        ; preds = %.preheader7001.us.us, %bb.cy
  %indvars.iv8594 = phi i64 [ %indvars.iv.next8595, %bb.cy ], [ 0, %.preheader7001.us.us ] ; 3 uses
  %.267477932.us.us.us = phi <16 x float> [ %.66751.us.us.us, %bb.cy ], [ %.167467939.us.us, %.preheader7001.us.us ] ; 7 uses
  %i.gek = trunc i64 %indvars.iv8594 to i32
  %i.gel = mul i32 %i.gdc, %i.gek
  %.reass7936.us.us.us = add i32 %i.gel, %invariant.op7935 ; 3 uses
  %i.gem = icmp slt i32 %.reass7936.us.us.us, 0
  br i1 %i.gem, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %.lr.ph.split.us.us.us7971
  %i.gen = srem i32 %.reass7936.us.us.us, %i.gdb
  %i.geo = sdiv i32 %.reass7936.us.us.us, %i.gdb  ; 5 uses
  %.not2115.us.us.us = icmp eq i32 %i.gen, 0
  %.not2116.us.us.us = icmp slt i32 %i.geo, %i.eva
  %or.cond9378 = select i1 %.not2115.us.us.us, i1 %.not2116.us.us.us, i1 false
  br i1 %or.cond9378, label %.split2204.us.us.us, label %bb.cy

.split2204.us.us.us:                              ; preds = %bb.cx
  %i.gep = add nuw nsw i64 %i.gei, %indvars.iv8594
  %i.geq = shl i64 %i.gep, 4
  %i.ger = and i64 %i.geq, 4294967280
  %i.ges = getelementptr inbounds nuw [2 x i8], ptr %.018547956.us, i64 %i.ger ; 4 uses
  switch i32 %i.evq, label %bb.cy [
    i32 4, label %_ZN4ncnn3MatD2Ev.exit2219.us.us.us
    i32 3, label %.split2204.us.us.us._ZN4ncnn3MatD2Ev.exit2218.us.us.us_crit_edge
    i32 2, label %.split2204.us.us.us._ZN4ncnn3MatD2Ev.exit2216.us.us.us_crit_edge
    i32 0, label %.split2204.us.us.us._ZN4ncnn3MatD2Ev.exit2212.us.us.us_crit_edge
  ]

.split2204.us.us.us._ZN4ncnn3MatD2Ev.exit2212.us.us.us_crit_edge: ; preds = %.split2204.us.us.us
  %.pre8725.a = load i32, ptr %i.euz, align 4, !tbaa !58, !noalias !1863
  %.pre8726.a = load ptr, ptr %0, align 8, !tbaa !18, !noalias !1863
  %.pre8727 = load i64, ptr %i.evr, align 8, !tbaa !20, !noalias !1863
  %.pre8728 = load i64, ptr %i.evs, align 8, !tbaa !59, !noalias !1863 ; 2 uses
  %.pre8788.a = sext i32 %.pre8725.a to i64
  %.pre8790 = mul nsw i64 %.pre8788.a, %i.gej
  %.pre8792 = mul i64 %.pre8790, %.pre8728
  br label %_ZN4ncnn3MatD2Ev.exit2212.us.us.us

.split2204.us.us.us._ZN4ncnn3MatD2Ev.exit2216.us.us.us_crit_edge: ; preds = %.split2204.us.us.us
  %.pre8720.a = load i32, ptr %i.euz, align 4, !tbaa !58, !noalias !1866
  %.pre8721.a = load ptr, ptr %0, align 8, !tbaa !18, !noalias !1866
  %.pre8722 = load i64, ptr %i.evr, align 8, !tbaa !20, !noalias !1866
  %.pre8723 = load i64, ptr %i.evs, align 8, !tbaa !59, !noalias !1866 ; 2 uses
  %.pre8724 = load <16 x i16>, ptr %i.ges, align 32, !tbaa !1223 ; 2 uses
  %.pre8758.a = sext i32 %.pre8720.a to i64
  %.pre8760 = mul nsw i64 %.pre8758.a, %i.gej
  %.pre8762 = mul i64 %.pre8760, %.pre8723
  %.pre8764 = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %.pre8724, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %.pre8768 = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %.pre8724, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.get = shufflevector <16 x i16> %.pre8764, <16 x i16> %.pre8768, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.geu = shufflevector <16 x i16> %.pre8764, <16 x i16> %.pre8768, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.gev = bitcast <16 x i16> %i.get to <8 x i32>
  %.pre8780 = bitcast <16 x i16> %i.geu to <8 x i32>
  %.pre8784 = shufflevector <8 x i32> %i.gev, <8 x i32> %.pre8780, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %.pre8786 = bitcast <16 x i32> %.pre8784 to <16 x float>
  br label %_ZN4ncnn3MatD2Ev.exit2216.us.us.us

.split2204.us.us.us._ZN4ncnn3MatD2Ev.exit2218.us.us.us_crit_edge: ; preds = %.split2204.us.us.us
  %.pre8715 = load i32, ptr %i.euz, align 4, !tbaa !58, !noalias !1869
  %.pre8716 = load ptr, ptr %0, align 8, !tbaa !18, !noalias !1869
  %.pre8717 = load i64, ptr %i.evr, align 8, !tbaa !20, !noalias !1869
  %.pre8718 = load i64, ptr %i.evs, align 8, !tbaa !59, !noalias !1869 ; 2 uses
  %.pre8719 = load <16 x i16>, ptr %i.ges, align 32, !tbaa !1223 ; 2 uses
  %.pre8729 = sext i32 %.pre8715 to i64
  %.pre8730 = mul nsw i64 %.pre8729, %i.gej
  %.pre8732 = mul i64 %.pre8730, %.pre8718
  %.pre8734 = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %.pre8719, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %.pre8738 = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %.pre8719, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.gew = shufflevector <16 x i16> %.pre8734, <16 x i16> %.pre8738, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.gex = shufflevector <16 x i16> %.pre8734, <16 x i16> %.pre8738, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.gey = bitcast <16 x i16> %i.gew to <8 x i32>
  %.pre8750 = bitcast <16 x i16> %i.gex to <8 x i32>
  %.pre8754 = shufflevector <8 x i32> %i.gey, <8 x i32> %.pre8750, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %.pre8756 = bitcast <16 x i32> %.pre8754 to <16 x float>
  br label %_ZN4ncnn3MatD2Ev.exit2218.us.us.us

_ZN4ncnn3MatD2Ev.exit2219.us.us.us:               ; preds = %.split2204.us.us.us
  %i.gez = load i32, ptr %i.euz, align 4, !tbaa !58, !noalias !1872
  %i.gfa = load ptr, ptr %0, align 8, !tbaa !18, !noalias !1872 ; 4 uses
  %i.gfb = load i64, ptr %i.evr, align 8, !tbaa !20, !noalias !1872 ; 4 uses
  %i.gfc = mul i64 %i.gfb, %i.gdf
  %i.gfd = load i64, ptr %i.evs, align 8, !tbaa !59, !noalias !1872 ; 5 uses
  %i.gfe = mul i64 %i.gfc, %i.gfd
  %i.gff = getelementptr inbounds nuw i8, ptr %i.gfa, i64 %i.gfe
  %i.gfg = sext i32 %i.gez to i64
  %i.gfh = mul nsw i64 %i.gfg, %i.gej
  %i.gfi = mul i64 %i.gfh, %i.gfd                 ; 4 uses
  %i.gfj = getelementptr inbounds nuw i8, ptr %i.gff, i64 %i.gfi
  %i.gfk = shl nsw i32 %i.geo, 4
  %i.gfl = sext i32 %i.gfk to i64
  %i.gfm = getelementptr inbounds [2 x i8], ptr %i.gfj, i64 %i.gfl
  %i.gfn = load <16 x i16>, ptr %i.gfm, align 32, !tbaa !1223 ; 2 uses
  %i.gfo = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.gfn, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.gfp = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.gfn, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.gfq = shufflevector <16 x i16> %i.gfo, <16 x i16> %i.gfp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.gfr = shufflevector <16 x i16> %i.gfo, <16 x i16> %i.gfp, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
end_hunk_3

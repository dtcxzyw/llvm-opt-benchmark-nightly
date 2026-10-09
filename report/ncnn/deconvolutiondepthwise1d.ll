Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deconvolutiondepthwise1d?download=true
inline.NumInlined: 8
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4ncnnL24deconvolutiondepthwise1dERKNS_3MatERS0_S2_S2_iiiiiS2_RKNS_6OptionE.omp_outlined:bb.a
.lr.ph87.split.split:                             ; preds = %.lr.ph87.split
  br i1 %i.aa, label %.lr.ph87.split.split.split.us, label %._crit_edge88

.lr.ph87.split.split.split.us:                    ; preds = %.lr.ph87.split.split
  br i1 %.not54, label %.lr.ph.us111.us.preheader, label %.lr.ph87.split.split.split.us.split

.lr.ph.us111.us.preheader:                        ; preds = %.lr.ph87.split.split.split.us
  %i.iu = zext nneg i32 %i.m to i64
  %i.iv = shl nuw nsw i64 %i.iu, 2                ; 9 uses
  %i.iw = sext i32 %i.k to i64                    ; 2 uses
  %i.ix = add nsw i32 %i.j, 1
  %i.iy = add i32 %i.j, 1
  %i.iz = sub i32 %i.iy, %i.k
  %i.ja = sub i32 %i.j, %i.k
  %xtraiter305 = and i32 %i.iz, 7                 ; 2 uses
  %lcmp.mod306.not = icmp eq i32 %xtraiter305, 0
  br i1 %lcmp.mod306.not, label %.lr.ph.us111.us.prol.loopexit, label %.lr.ph.us111.us.prol

.lr.ph.us111.us.prol:                             ; preds = %.lr.ph.us111.us.preheader, %.lr.ph.us111.us.prol
  %indvars.iv134.prol = phi i64 [ %indvars.iv.next135.prol, %.lr.ph.us111.us.prol ], [ %i.iw, %.lr.ph.us111.us.preheader ] ; 2 uses
  %prol.iter307 = phi i32 [ %prol.iter307.next, %.lr.ph.us111.us.prol ], [ 0, %.lr.ph.us111.us.preheader ]
  %.reass.us110.us.prol = mul i64 %factor.op.mul, %indvars.iv134.prol
  %i.jb = getelementptr i8, ptr %i.n, i64 %.reass.us110.us.prol
  call void @llvm.memset.p0.i64(ptr align 4 %i.jb, i8 0, i64 %i.iv, i1 false), !tbaa !61
  %indvars.iv.next135.prol = add nsw i64 %indvars.iv134.prol, 1 ; 2 uses
  %prol.iter307.next = add i32 %prol.iter307, 1   ; 2 uses
  %prol.iter307.cmp.not = icmp eq i32 %prol.iter307.next, %xtraiter305
  br i1 %prol.iter307.cmp.not, label %.lr.ph.us111.us.prol.loopexit, label %.lr.ph.us111.us.prol, !llvm.loop !105

.lr.ph.us111.us.prol.loopexit:                    ; preds = %.lr.ph.us111.us.prol, %.lr.ph.us111.us.preheader
  %indvars.iv134.unr = phi i64 [ %i.iw, %.lr.ph.us111.us.preheader ], [ %indvars.iv.next135.prol, %.lr.ph.us111.us.prol ]
  %i.jc = icmp ult i32 %i.ja, 7
  br i1 %i.jc, label %._crit_edge88, label %.lr.ph.us111.us

.lr.ph.us111.us:                                  ; preds = %.lr.ph.us111.us.prol.loopexit, %.lr.ph.us111.us
  %indvars.iv134 = phi i64 [ %indvars.iv.next135.7, %.lr.ph.us111.us ], [ %indvars.iv134.unr, %.lr.ph.us111.us.prol.loopexit ] ; 9 uses
  %.reass.us110.us = mul i64 %factor.op.mul, %indvars.iv134
  %i.jd = getelementptr i8, ptr %i.n, i64 %.reass.us110.us
  call void @llvm.memset.p0.i64(ptr align 4 %i.jd, i8 0, i64 %i.iv, i1 false), !tbaa !61
  %indvars.iv.next135 = add nsw i64 %indvars.iv134, 1
  %.reass.us110.us.1 = mul i64 %factor.op.mul, %indvars.iv.next135
  %i.je = getelementptr i8, ptr %i.n, i64 %.reass.us110.us.1
  call void @llvm.memset.p0.i64(ptr align 4 %i.je, i8 0, i64 %i.iv, i1 false), !tbaa !61
  %indvars.iv.next135.1 = add nsw i64 %indvars.iv134, 2
  %.reass.us110.us.2 = mul i64 %factor.op.mul, %indvars.iv.next135.1
  %i.jf = getelementptr i8, ptr %i.n, i64 %.reass.us110.us.2
  call void @llvm.memset.p0.i64(ptr align 4 %i.jf, i8 0, i64 %i.iv, i1 false), !tbaa !61
  %indvars.iv.next135.2 = add nsw i64 %indvars.iv134, 3
  %.reass.us110.us.3 = mul i64 %factor.op.mul, %indvars.iv.next135.2
  %i.jg = getelementptr i8, ptr %i.n, i64 %.reass.us110.us.3
  call void @llvm.memset.p0.i64(ptr align 4 %i.jg, i8 0, i64 %i.iv, i1 false), !tbaa !61
  %indvars.iv.next135.3 = add nsw i64 %indvars.iv134, 4
  %.reass.us110.us.4 = mul i64 %factor.op.mul, %indvars.iv.next135.3
  %i.jh = getelementptr i8, ptr %i.n, i64 %.reass.us110.us.4
  call void @llvm.memset.p0.i64(ptr align 4 %i.jh, i8 0, i64 %i.iv, i1 false), !tbaa !61
  %indvars.iv.next135.4 = add nsw i64 %indvars.iv134, 5
  %.reass.us110.us.5 = mul i64 %factor.op.mul, %indvars.iv.next135.4
  %i.ji = getelementptr i8, ptr %i.n, i64 %.reass.us110.us.5
  call void @llvm.memset.p0.i64(ptr align 4 %i.ji, i8 0, i64 %i.iv, i1 false), !tbaa !61
  %indvars.iv.next135.5 = add nsw i64 %indvars.iv134, 6
  %.reass.us110.us.6 = mul i64 %factor.op.mul, %indvars.iv.next135.5
  %i.jj = getelementptr i8, ptr %i.n, i64 %.reass.us110.us.6
  call void @llvm.memset.p0.i64(ptr align 4 %i.jj, i8 0, i64 %i.iv, i1 false), !tbaa !61
  %indvars.iv.next135.6 = add nsw i64 %indvars.iv134, 7
  %.reass.us110.us.7 = mul i64 %factor.op.mul, %indvars.iv.next135.6
  %i.jk = getelementptr i8, ptr %i.n, i64 %.reass.us110.us.7
  call void @llvm.memset.p0.i64(ptr align 4 %i.jk, i8 0, i64 %i.iv, i1 false), !tbaa !61
  %indvars.iv.next135.7 = add nsw i64 %indvars.iv134, 8 ; 2 uses
  %lftr.wideiv137.7 = trunc i64 %indvars.iv.next135.7 to i32
  %exitcond138.not.7 = icmp eq i32 %i.ix, %lftr.wideiv137.7
  br i1 %exitcond138.not.7, label %._crit_edge88, label %.lr.ph.us111.us

.lr.ph87.split.split.split.us.split:              ; preds = %.lr.ph87.split.split.split.us
  %i.jl = load ptr, ptr %8, align 8, !tbaa !20
  %i.jm = sext i32 %i.k to i64
  %i.jn = add nsw i32 %i.j, 1
  %i.jo = zext nneg i32 %i.m to i64               ; 2 uses
  %min.iters.check240 = icmp ult i32 %i.m, 8
  %n.vec242 = and i64 %i.jo, 2147483640           ; 4 uses
  %i.jp = trunc nuw nsw i64 %n.vec242 to i32
  %i.jq = shl nuw nsw i64 %n.vec242, 2
  %cmp.n250 = icmp eq i64 %n.vec242, %i.jo
  br label %.lr.ph.us111

.lr.ph.us111:                                     ; preds = %._ZN4ncnn3Mat4fillEf.exit.preheader_crit_edge.us114, %.lr.ph87.split.split.split.us.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %._ZN4ncnn3Mat4fillEf.exit.preheader_crit_edge.us114 ], [ %i.jm, %.lr.ph87.split.split.split.us.split ] ; 3 uses
  %.reass.us110 = mul i64 %factor.op.mul, %indvars.iv
  %i.jr = getelementptr inbounds nuw i8, ptr %i.n, i64 %.reass.us110 ; 3 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %indvars.iv
  %i.jt = load float, ptr %i.js, align 4, !tbaa !61 ; 2 uses
  br i1 %min.iters.check240, label %scalar.ph239.preheader, label %vector.ph241

vector.ph241:                                     ; preds = %.lr.ph.us111
  %i.ju = getelementptr i8, ptr %i.jr, i64 %i.jq
  %broadcast.splatinsert243 = insertelement <4 x float> poison, float %i.jt, i64 0
  %broadcast.splat244 = shufflevector <4 x float> %broadcast.splatinsert243, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body245

vector.body245:                                   ; preds = %vector.body245, %vector.ph241
  %index246 = phi i64 [ 0, %vector.ph241 ], [ %index.next248, %vector.body245 ] ; 2 uses
  %i.jv = shl i64 %index246, 2
  %next.gep247 = getelementptr i8, ptr %i.jr, i64 %i.jv ; 2 uses
  %i.jw = getelementptr i8, ptr %next.gep247, i64 16
  store <4 x float> %broadcast.splat244, ptr %next.gep247, align 4, !tbaa !61
  store <4 x float> %broadcast.splat244, ptr %i.jw, align 4, !tbaa !61
  %index.next248 = add nuw i64 %index246, 8       ; 2 uses
  %i.jx = icmp eq i64 %index.next248, %n.vec242
  br i1 %i.jx, label %middle.block249, label %vector.body245, !llvm.loop !106

middle.block249:                                  ; preds = %vector.body245
  br i1 %cmp.n250, label %._ZN4ncnn3Mat4fillEf.exit.preheader_crit_edge.us114, label %scalar.ph239.preheader

scalar.ph239.preheader:                           ; preds = %.lr.ph.us111, %middle.block249
  %.0.i77.us112.ph = phi i32 [ 0, %.lr.ph.us111 ], [ %i.jp, %middle.block249 ]
  %.05.i76.us113.ph = phi ptr [ %i.jr, %.lr.ph.us111 ], [ %i.ju, %middle.block249 ]
  br label %scalar.ph239

scalar.ph239:                                     ; preds = %scalar.ph239.preheader, %scalar.ph239
  %.0.i77.us112 = phi i32 [ %i.jz, %scalar.ph239 ], [ %.0.i77.us112.ph, %scalar.ph239.preheader ]
  %.05.i76.us113 = phi ptr [ %i.jy, %scalar.ph239 ], [ %.05.i76.us113.ph, %scalar.ph239.preheader ] ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.05.i76.us113, i64 4
  store float %i.jt, ptr %.05.i76.us113, align 4, !tbaa !61
  %i.jz = add nuw nsw i32 %.0.i77.us112, 1        ; 2 uses
  %exitcond.not = icmp eq i32 %i.jz, %i.m
  br i1 %exitcond.not, label %._ZN4ncnn3Mat4fillEf.exit.preheader_crit_edge.us114, label %scalar.ph239, !llvm.loop !107

._ZN4ncnn3Mat4fillEf.exit.preheader_crit_edge.us114: ; preds = %scalar.ph239, %middle.block249
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond133.not = icmp eq i32 %i.jn, %lftr.wideiv
  br i1 %exitcond133.not, label %._crit_edge88, label %.lr.ph.us111

._crit_edge88:                                    ; preds = %_ZN4ncnn3Mat4fillEf.exit..preheader_crit_edge.us105.us, %._ZN4ncnn3Mat4fillEf.exit.preheader_crit_edge.us97.us122, %.lr.ph.us94.us119.us.prol.loopexit, %.lr.ph.us94.us119.us, %._ZN4ncnn3Mat4fillEf.exit.preheader_crit_edge.us114, %.lr.ph.us111.us.prol.loopexit, %.lr.ph.us111.us, %._ZN4ncnn3MatD2Ev.exit_crit_edge.us, %.lr.ph87.split.split, %.lr.ph87.split.split.us.split, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge88, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #10

; Function Attrs: nounwind
declare !callback !67 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #10

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL24deconvolutiondepthwise1dERKNS_3MatERS0_S2_S2_iiiiiS2_RKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %15, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %16) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !52     ; 2 uses
  %i.f = load i32, ptr %3, align 4, !tbaa !52     ; 2 uses
  %i.g = sext i32 %i.f to i64                     ; 4 uses
  %i.h = icmp sgt i32 %i.e, 0
  %i.i = icmp sgt i32 %i.f, 0
  %or.cond = select i1 %i.h, i1 %i.i, i1 false
  br i1 %or.cond, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.j = zext nneg i32 %i.e to i64
  %i.k = mul nuw nsw i64 %i.g, %i.j
  %i.l = add nsw i64 %i.k, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i64 0, ptr %i.a, align 8, !tbaa !125
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i64 %i.l, ptr %i.b, align 8, !tbaa !125
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i64 1, ptr %i.c, align 8, !tbaa !125
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !52
  %i.m = load i32, ptr %0, align 4, !tbaa !52     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.m, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.n = load i64, ptr %i.b, align 8, !tbaa !125
  %i.o = call i64 @llvm.smin.i64(i64 %i.n, i64 %i.l) ; 3 uses
  store i64 %i.o, ptr %i.b, align 8, !tbaa !125
  %i.p = load i64, ptr %i.a, align 8, !tbaa !125  ; 2 uses
  %.not110 = icmp sgt i64 %i.p, %i.o
  br i1 %.not110, label %._crit_edge114, label %.lr.ph113

.lr.ph113:                                        ; preds = %bb.b
  %i.q = load i32, ptr %3, align 4, !tbaa !52     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.s = load i32, ptr %i.r, align 4, !tbaa !57, !noalias !126 ; 5 uses
  %i.t = load ptr, ptr %4, align 8, !tbaa !20, !noalias !126 ; 2 uses
  %i.u = sext i32 %i.s to i64
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !50, !noalias !126
  %i.x = mul i64 %i.w, %i.u
  %i.y = load ptr, ptr %5, align 8, !tbaa !20     ; 2 uses
  %i.z = load i32, ptr %6, align 4, !tbaa !52     ; 5 uses
  %i.aa = load i32, ptr %7, align 4, !tbaa !52    ; 4 uses
  %i.ab = mul i32 %i.aa, %i.z                     ; 2 uses
  %factor.op.mul115 = mul i32 %i.q, %i.ab
  %i.ac = load i32, ptr %8, align 4, !tbaa !52
  %.not74 = icmp eq i32 %i.ac, 0
  %i.ad = icmp sgt i32 %i.s, 0
  %i.ae = load i32, ptr %10, align 4, !tbaa !52   ; 2 uses
  %i.af = icmp sgt i32 %i.ae, 0
  %i.ag = icmp sgt i32 %i.aa, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 44
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.aj = icmp sgt i32 %i.z, 0
  %i.ak = sext i32 %i.z to i64                    ; 2 uses
  %i.al = load i32, ptr %14, align 4, !tbaa !52   ; 2 uses
  %i.am = icmp sgt i32 %i.al, 0
  %wide.trip.count127 = zext nneg i32 %i.ae to i64
  %wide.trip.count122 = zext i32 %i.aa to i64     ; 2 uses
  %wide.trip.count = zext i32 %i.z to i64         ; 7 uses
  %wide.trip.count132 = zext nneg i32 %i.al to i64
  %i.an = shl nuw nsw i64 %wide.trip.count, 2
  %i.ao = add nuw nsw i64 %wide.trip.count122, 4611686018427387903
  %i.ap = mul i64 %i.ao, %i.ak
  %i.aq = add i64 %i.ap, %wide.trip.count
  %i.ar = shl i64 %i.aq, 2
  %scevgep147.a = getelementptr i8, ptr %i.y, i64 %i.ar
  %i.as = zext nneg i32 %i.s to i64               ; 2 uses
  %min.iters.check153 = icmp ult i32 %i.s, 8
  %n.vec155 = and i64 %i.as, 2147483640           ; 4 uses
  %i.at = trunc nuw nsw i64 %n.vec155 to i32
  %i.au = shl nuw nsw i64 %n.vec155, 2
  %cmp.n162 = icmp eq i64 %n.vec155, %i.as
  %i.av = getelementptr i8, ptr %i.t, i64 %i.an
  %min.iters.check = icmp ugt i32 %i.z, 7
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.aw = add nsw i64 %wide.trip.count, -1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph113, %_ZN4ncnn3MatD2Ev.exit
  %.071111 = phi i64 [ %i.p, %.lr.ph113 ], [ %i.dv, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.ax = sdiv i64 %.071111, %i.g                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32                  ; 3 uses
  %i.az = mul i64 %i.ax, %i.g                     ; 0 uses
  %.recomposed = srem i64 %.071111, %i.g
  %i.ba = trunc i64 %.recomposed to i32           ; 2 uses
  %i.bb = mul i32 %i.q, %i.ay
  %i.bc = add i32 %i.bb, %i.ba
  %i.bd = sext i32 %i.bc to i64                   ; 2 uses
  %i.be = mul i64 %i.x, %i.bd                     ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.be ; 5 uses
  %.reass116 = mul i32 %factor.op.mul115, %i.ay
  %i.bg = sext i32 %.reass116 to i64              ; 2 uses
  %i.bh = getelementptr [4 x i8], ptr %i.y, i64 %i.bg
  br i1 %.not74, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bi = load ptr, ptr %9, align 8, !tbaa !20
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bd
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !61
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.bl = phi fast float [ %i.bk, %bb.d ], [ 0.000000e+00, %bb.c ] ; 2 uses
  br i1 %i.ad, label %.lr.ph.preheader, label %_ZN4ncnn3Mat4fillEf.exit.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  br i1 %min.iters.check153, label %.lr.ph.preheader166, label %vector.ph154

vector.ph154:                                     ; preds = %.lr.ph.preheader
  %i.bm = getelementptr i8, ptr %i.bf, i64 %i.au
  %broadcast.splatinsert156 = insertelement <4 x float> poison, float %i.bl, i64 0
  %broadcast.splat157 = shufflevector <4 x float> %broadcast.splatinsert156, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body158

vector.body158:                                   ; preds = %vector.body158, %vector.ph154
  %index159 = phi i64 [ 0, %vector.ph154 ], [ %index.next160, %vector.body158 ] ; 2 uses
  %i.bn = shl i64 %index159, 2
  %next.gep = getelementptr i8, ptr %i.bf, i64 %i.bn ; 2 uses
  %i.bo = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> %broadcast.splat157, ptr %next.gep, align 4, !tbaa !61
  store <4 x float> %broadcast.splat157, ptr %i.bo, align 4, !tbaa !61
  %index.next160 = add nuw i64 %index159, 8       ; 2 uses
  %i.bp = icmp eq i64 %index.next160, %n.vec155
  br i1 %i.bp, label %middle.block161, label %vector.body158, !llvm.loop !115

middle.block161:                                  ; preds = %vector.body158
  br i1 %cmp.n162, label %_ZN4ncnn3Mat4fillEf.exit.preheader, label %.lr.ph.preheader166

.lr.ph.preheader166:                              ; preds = %.lr.ph.preheader, %middle.block161
  %.0.i97.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.at, %middle.block161 ]
  %.05.i96.ph = phi ptr [ %i.bf, %.lr.ph.preheader ], [ %i.bm, %middle.block161 ]
  br label %.lr.ph

_ZN4ncnn3Mat4fillEf.exit.preheader:               ; preds = %.lr.ph, %middle.block161, %bb.e
  br i1 %i.af, label %.lr.ph106, label %.preheader

.lr.ph106:                                        ; preds = %_ZN4ncnn3Mat4fillEf.exit.preheader
  %i.bq = load i32, ptr %11, align 4, !tbaa !52
  %i.br = mul i32 %i.ab, %i.ba
  %i.bs = sext i32 %i.br to i64                   ; 2 uses
  %i.bt = getelementptr [4 x i8], ptr %i.bh, i64 %i.bs ; 2 uses
  %i.bu = mul nsw i32 %i.aa, %i.ay
  br i1 %i.ag, label %.lr.ph106.split, label %.preheader

.lr.ph106.split:                                  ; preds = %.lr.ph106
  %i.bv = load ptr, ptr %12, align 8, !tbaa !20
  %i.bw = load i32, ptr %i.ah, align 4, !tbaa !57
  %i.bx = sext i32 %i.bw to i64
  %i.by = load i64, ptr %i.ai, align 8, !tbaa !50
  %factor.op.mul = mul i64 %i.by, %i.bx
  br i1 %i.aj, label %.lr.ph106.split.split, label %.preheader

.lr.ph106.split.split:                            ; preds = %.lr.ph106.split
  %i.bz = load i32, ptr %13, align 4, !tbaa !52   ; 2 uses
  %i.ca = sext i32 %i.bz to i64                   ; 3 uses
  %i.cb = sext i32 %i.bu to i64
  %i.cc = sext i32 %i.bq to i64                   ; 2 uses
  %i.cd = shl nsw i64 %i.cc, 2
  %i.ce = add nsw i64 %i.bg, %i.bs
  %i.cf = shl nsw i64 %i.ce, 2
  %scevgep148 = getelementptr i8, ptr %scevgep147.a, i64 %i.cf
  %i.cg = getelementptr i8, ptr %i.av, i64 %i.be
  %ident.check.not = icmp eq i32 %i.bz, 1
  %or.cond165 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br label %.lr.ph103

.lr.ph:                                           ; preds = %.lr.ph.preheader166, %.lr.ph
  %.0.i97 = phi i32 [ %i.ci, %.lr.ph ], [ %.0.i97.ph, %.lr.ph.preheader166 ]
  %.05.i96 = phi ptr [ %i.ch, %.lr.ph ], [ %.05.i96.ph, %.lr.ph.preheader166 ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.05.i96, i64 4
  store float %i.bl, ptr %.05.i96, align 4, !tbaa !61
  %i.ci = add nuw nsw i32 %.0.i97, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ci, %i.s
  br i1 %exitcond.not, label %_ZN4ncnn3Mat4fillEf.exit.preheader, label %.lr.ph, !llvm.loop !116

.preheader:                                       ; preds = %._crit_edge104, %.lr.ph106, %.lr.ph106.split, %_ZN4ncnn3Mat4fillEf.exit.preheader
  br i1 %i.am, label %.lr.ph109, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph109:                                        ; preds = %.preheader
  %i.cj = load i32, ptr %15, align 4, !tbaa !52
  br label %bb.f

.lr.ph103:                                        ; preds = %.lr.ph106.split.split, %._crit_edge104
  %indvars.iv124 = phi i64 [ 0, %.lr.ph106.split.split ], [ %indvars.iv.next125, %._crit_edge104 ] ; 4 uses
  %i.ck = mul i64 %i.cd, %indvars.iv124
  %scevgep = getelementptr i8, ptr %i.cg, i64 %i.ck
  %i.cl = mul nsw i64 %indvars.iv124, %i.cc
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.cl ; 5 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.bv, i64 %indvars.iv124
  %bound0 = icmp ult ptr %i.cm, %scevgep148
  %bound1 = icmp ult ptr %i.bt, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br label %.lr.ph99

._crit_edge104:                                   ; preds = %._crit_edge
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %exitcond128.not = icmp eq i64 %indvars.iv.next125, %wide.trip.count127
  br i1 %exitcond128.not, label %.preheader, label %.lr.ph103, !llvm.loop !117

.lr.ph99:                                         ; preds = %.lr.ph103, %._crit_edge
  %indvars.iv119 = phi i64 [ 0, %.lr.ph103 ], [ %indvars.iv.next120, %._crit_edge ] ; 2 uses
  %.069100 = phi ptr [ %i.bt, %.lr.ph103 ], [ %i.dg, %._crit_edge ] ; 5 uses
  %i.cn = add nsw i64 %indvars.iv119, %i.cb
  %.reass = mul i64 %factor.op.mul, %i.cn
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.reass
  %i.co = load float, ptr %gep, align 4, !tbaa !61 ; 4 uses
  %or.cond165.not = xor i1 %or.cond165, true
  %brmerge = select i1 %or.cond165.not, i1 true, i1 %found.conflict
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph99
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.co, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.069100, i64 %index ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %wide.load = load <4 x float>, ptr %i.cp, align 4, !tbaa !61, !alias.scope !127
  %wide.load149.a = load <4 x float>, ptr %i.cq, align 4, !tbaa !61, !alias.scope !127
  %i.cr = fmul fast <4 x float> %wide.load, %broadcast.splat
  %i.cs = fmul fast <4 x float> %wide.load149.a, %broadcast.splat
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %index ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16 ; 2 uses
  %wide.load150.a = load <4 x float>, ptr %i.ct, align 4, !tbaa !61, !alias.scope !128, !noalias !127
  %wide.load151 = load <4 x float>, ptr %i.cu, align 4, !tbaa !61, !alias.scope !128, !noalias !127
  %i.cv = fadd fast <4 x float> %wide.load150.a, %i.cr
  %i.cw = fadd fast <4 x float> %wide.load151, %i.cs
  store <4 x float> %i.cv, ptr %i.ct, align 4, !tbaa !61, !alias.scope !128, !noalias !127
  store <4 x float> %i.cw, ptr %i.cu, align 4, !tbaa !61, !alias.scope !128, !noalias !127
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cx = icmp eq i64 %index.next, %n.vec
  br i1 %i.cx, label %middle.block, label %vector.body, !llvm.loop !121

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph99, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph99 ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %.069100, i64 %indvars.iv.ph
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !61
  %i.da = fmul fast float %i.cz, %i.co
  %i.db = mul nsw i64 %indvars.iv.ph, %i.ca
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %i.db ; 2 uses
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !61
  %i.de = fadd fast float %i.dd, %i.da
  store float %i.de, ptr %i.dc, align 4, !tbaa !61
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.df = icmp eq i64 %indvars.iv.ph, %i.aw
  br i1 %i.df, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %.069100, i64 %i.ak
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %exitcond123.not = icmp eq i64 %indvars.iv.next120, %wide.trip.count122
  br i1 %exitcond123.not, label %._crit_edge104, label %.lr.ph99, !llvm.loop !122

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.069100, i64 %indvars.iv
  %i.di = load float, ptr %i.dh, align 4, !tbaa !61
  %i.dj = fmul fast float %i.di, %i.co
  %i.dk = mul nsw i64 %indvars.iv, %i.ca
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %i.dk ; 2 uses
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !61
  %i.dn = fadd fast float %i.dm, %i.dj
  store float %i.dn, ptr %i.dl, align 4, !tbaa !61
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.069100, i64 %indvars.iv.next
  %i.dp = load float, ptr %i.do, align 4, !tbaa !61
  %i.dq = fmul fast float %i.dp, %i.co
  %i.dr = mul nsw i64 %indvars.iv.next, %i.ca
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %i.dr ; 2 uses
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !61
  %i.du = fadd fast float %i.dt, %i.dq
  store float %i.du, ptr %i.ds, align 4, !tbaa !61
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond118.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond118.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !123

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit, %.preheader
  %i.dv = add i64 %.071111, 1
  %exitcond134.not = icmp eq i64 %.071111, %i.o
  br i1 %exitcond134.not, label %._crit_edge114, label %bb.c

bb.f:                                             ; preds = %.lr.ph109, %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %indvars.iv129 = phi i64 [ 0, %.lr.ph109 ], [ %indvars.iv.next130, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv129 ; 2 uses
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !61 ; 13 uses
  switch i32 %i.cj, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit [
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.i
    i32 4, label %bb.k
    i32 5, label %bb.l
    i32 6, label %bb.m
  ]

bb.g:                                             ; preds = %bb.f
  %i.dy = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %i.dx, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.h:                                             ; preds = %bb.f
  %i.dz = load ptr, ptr %16, align 8, !tbaa !20
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !61
  %i.eb = fcmp fast ogt float %i.dx, 0.000000e+00
  %i.ec = select fast i1 %i.eb, float 1.000000e+00, float %i.ea
  %i.ed = fmul fast float %i.ec, %i.dx
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.i:                                             ; preds = %bb.f
  %i.ee = load ptr, ptr %16, align 8, !tbaa !20   ; 2 uses
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !61
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !61 ; 2 uses
  %.095 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.dx, float %i.ef) ; 2 uses
  %i.ei = fcmp fast ogt float %.095, %i.eh
  br i1 %i.ei, label %bb.j, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.j:                                             ; preds = %bb.i
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.k:                                             ; preds = %bb.f
  %.sroa.speculated86 = call nnan ninf nsz float @llvm.minnum.f32(float %i.dx, float f0x42B0C0A5)
  %.sroa.speculated = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated86, float f0xC2B0C0A5)
  %i.ej = fneg fast float %.sroa.speculated
  %i.ek = call fast float @llvm.exp.f32(float %i.ej)
  %i.el = fadd fast float %i.ek, 1.000000e+00
  %i.em = fdiv fast float 1.000000e+00, %i.el
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.l:                                             ; preds = %bb.f
  %i.en = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.dx)
  %i.eo = fadd fast float %i.en, 1.000000e+00
  %i.ep = call fast float @llvm.log.f32(float %i.eo)
  %i.eq = call fast float @llvm.tanh.f32(float %i.ep)
  %i.er = fmul fast float %i.eq, %i.dx
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.m:                                             ; preds = %bb.f
  %i.es = load ptr, ptr %16, align 8, !tbaa !20   ; 2 uses
  %i.et = load float, ptr %i.es, align 4, !tbaa !61 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !61 ; 2 uses
  %i.ew = fneg fast float %i.ev
  %i.ex = fdiv fast float %i.ew, %i.et            ; 2 uses
  %i.ey = fcmp fast olt float %i.dx, %i.ex
  br i1 %i.ey, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ez = fdiv fast float 1.000000e+00, %i.et
  %i.fa = fadd fast float %i.ex, %i.ez
  %i.fb = fcmp fast ogt float %i.dx, %i.fa
  br i1 %i.fb, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fc = fmul fast float %i.et, %i.dx
  %i.fd = fadd fast float %i.fc, %i.ev
  %i.fe = fmul fast float %i.fd, %i.dx
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit:           ; preds = %bb.o, %bb.n, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.m
  %.1 = phi nsz float [ %i.dx, %bb.f ], [ %i.dy, %bb.g ], [ %i.ed, %bb.h ], [ %i.eh, %bb.j ], [ %.095, %bb.i ], [ %i.em, %bb.k ], [ %i.er, %bb.l ], [ %i.fe, %bb.o ], [ %i.dx, %bb.n ], [ 0.000000e+00, %bb.m ]
  store float %.1, ptr %i.dw, align 4, !tbaa !61
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1 ; 2 uses
  %exitcond133.not = icmp eq i64 %indvars.iv.next130, %wide.trip.count132
  br i1 %exitcond133.not, label %_ZN4ncnn3MatD2Ev.exit, label %bb.f, !llvm.loop !124

._crit_edge114:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge114, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_8(ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i64) local_unnamed_addr #10

end_hunk_0

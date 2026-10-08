Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/sdpa?download=true
inline.NumInlined: 33
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNK4ncnn4SDPA12forward_int8ERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.3:bb.a
  store i32 %i.g, ptr %i.b, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !41
  %i.h = load i32, ptr %0, align 4, !tbaa !41     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !41
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !41
  %i.k = load i32, ptr %i.a, align 4, !tbaa !41   ; 2 uses
  %.not75 = icmp sgt i32 %i.k, %i.j
  br i1 %.not75, label %._crit_edge, label %.noexc21.lr.ph

.noexc21.lr.ph:                                   ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.s = sext i32 %i.k to i64
  br label %.noexc21

.noexc21:                                         ; preds = %.noexc21.lr.ph, %.noexc21
  %indvars.iv = phi i64 [ %i.s, %.noexc21.lr.ph ], [ %indvars.iv.next, %.noexc21 ] ; 5 uses
  %i.t = load ptr, ptr %3, align 8, !tbaa !49, !noalias !137
  %i.u = load i64, ptr %i.l, align 8, !tbaa !43, !noalias !137
  %i.v = mul i64 %i.u, %indvars.iv
  %i.w = load i64, ptr %i.m, align 8, !tbaa !38, !noalias !137
  %i.x = mul i64 %i.v, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.x
  %i.z = load ptr, ptr %4, align 8, !tbaa !49, !noalias !138
  %i.aa = load i64, ptr %i.n, align 8, !tbaa !43, !noalias !138
  %i.ab = mul i64 %i.aa, %indvars.iv
  %i.ac = load i64, ptr %i.o, align 8, !tbaa !38, !noalias !138
  %i.ad = mul i64 %i.ab, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ad
  %i.af = load i32, ptr %i.p, align 4, !tbaa !44, !noalias !139
  %i.ag = load ptr, ptr %5, align 8, !tbaa !49, !noalias !139
  %i.ah = load i64, ptr %i.q, align 8, !tbaa !43, !noalias !139
  %i.ai = mul i64 %i.ah, %indvars.iv
  %i.aj = load i64, ptr %i.r, align 8, !tbaa !38, !noalias !139 ; 2 uses
  %i.ak = mul i64 %i.ai, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ak ; 2 uses
  %i.am = sext i32 %i.af to i64
  %i.an = load i32, ptr %6, align 4, !tbaa !41
  %i.ao = load i32, ptr %7, align 4, !tbaa !41
  %i.ap = mul nsw i32 %i.ao, %i.an
  %i.aq = sext i32 %i.ap to i64
  %i.ar = shl nsw i64 %i.aq, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.al, ptr align 1 %i.y, i64 %i.ar, i1 false)
  %i.as = load i32, ptr %7, align 4, !tbaa !41
  %i.at = sext i32 %i.as to i64
  %i.au = mul i64 %i.aj, %i.am
  %i.av = mul i64 %i.au, %i.at
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.av
  %i.ax = load i32, ptr %6, align 4, !tbaa !41
  %i.ay = load i32, ptr %8, align 4, !tbaa !41
  %i.az = mul nsw i32 %i.ay, %i.ax
  %i.ba = sext i32 %i.az to i64
  %i.bb = shl nsw i64 %i.ba, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.aw, ptr align 1 %i.ae, i64 %i.bb, i1 false)
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.bc = load i32, ptr %i.b, align 4, !tbaa !41
  %i.bd = sext i32 %i.bc to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.bd
  br i1 %.not.not, label %.noexc21, label %._crit_edge

._crit_edge:                                      ; preds = %.noexc21, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn4SDPA12forward_int8ERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.4(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %15, ptr nofree noundef readonly captures(none) %16, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %17, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %18, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %19, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %20) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !41     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !41
  %i.h = load i32, ptr %0, align 4, !tbaa !41     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !41
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !41
  %i.k = load i32, ptr %i.a, align 4, !tbaa !41   ; 2 uses
  %.not594 = icmp sgt i32 %i.k, %i.j
  br i1 %.not594, label %._crit_edge596, label %.noexc125.lr.ph

.noexc125.lr.ph:                                  ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 44
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %16, i64 208
  %i.al = getelementptr inbounds nuw i8, ptr %17, i64 56
  %i.am = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %17, i64 44 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %17, i64 64
  %i.ar = getelementptr inbounds nuw i8, ptr %18, i64 44
  %i.as = getelementptr inbounds nuw i8, ptr %18, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %18, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %19, i64 44
  %i.aw = getelementptr inbounds nuw i8, ptr %19, i64 48
  %i.ax = getelementptr inbounds nuw i8, ptr %19, i64 64
  %i.ay = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.az = sext i32 %i.k to i64
  br label %.noexc125

.noexc125:                                        ; preds = %.noexc125.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %indvars.iv669 = phi i64 [ %i.az, %.noexc125.lr.ph ], [ %indvars.iv.next670, %_ZN4ncnn3MatD2Ev.exit ] ; 7 uses
  %i.ba = load i32, ptr %i.l, align 4, !tbaa !44, !noalias !222
  %i.bb = load ptr, ptr %3, align 8, !tbaa !49, !noalias !222 ; 2 uses
  %i.bc = load i64, ptr %i.m, align 8, !tbaa !43, !noalias !222 ; 2 uses
  %i.bd = mul i64 %i.bc, %indvars.iv669
  %i.be = load i64, ptr %i.n, align 8, !tbaa !38, !noalias !222 ; 4 uses
  %i.bf = mul i64 %i.bd, %i.be
  %i.bg = getelementptr i8, ptr %i.bb, i64 %i.bf  ; 3 uses
  %i.bh = sext i32 %i.ba to i64                   ; 3 uses
  %i.bi = load i32, ptr %5, align 4, !tbaa !41
  %i.bj = trunc nsw i64 %indvars.iv669 to i32
  %i.bk = sdiv i32 %i.bj, %i.bi
  %i.bl = load i32, ptr %i.o, align 4, !tbaa !44, !noalias !223
  %i.bm = load ptr, ptr %4, align 8, !tbaa !49, !noalias !223 ; 2 uses
  %i.bn = load i64, ptr %i.p, align 8, !tbaa !43, !noalias !223 ; 2 uses
  %i.bo = sext i32 %i.bk to i64                   ; 4 uses
  %i.bp = mul i64 %i.bn, %i.bo
  %i.bq = load i64, ptr %i.q, align 8, !tbaa !38, !noalias !223 ; 4 uses
  %i.br = mul i64 %i.bp, %i.bq
  %i.bs = getelementptr i8, ptr %i.bm, i64 %i.br  ; 3 uses
  %i.bt = sext i32 %i.bl to i64                   ; 3 uses
  %i.bu = load i32, ptr %i.r, align 4, !tbaa !44, !noalias !224
  %i.bv = load ptr, ptr %6, align 8, !tbaa !49, !noalias !224 ; 2 uses
  %i.bw = load i64, ptr %i.s, align 8, !tbaa !43, !noalias !224 ; 2 uses
  %i.bx = mul i64 %i.bw, %i.bo
  %i.by = load i64, ptr %i.t, align 8, !tbaa !38, !noalias !224 ; 4 uses
  %i.bz = mul i64 %i.bx, %i.by
  %i.ca = getelementptr i8, ptr %i.bv, i64 %i.bz  ; 3 uses
  %i.cb = sext i32 %i.bu to i64                   ; 3 uses
  %i.cc = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc140 unwind label %bb.o

.noexc140:                                        ; preds = %.noexc125
  %i.cd = load i32, ptr %i.u, align 4, !tbaa !44, !noalias !225
  %i.ce = load ptr, ptr %7, align 8, !tbaa !49, !noalias !225 ; 3 uses
  %i.cf = load i64, ptr %i.v, align 8, !tbaa !43, !noalias !225 ; 3 uses
  %i.cg = sext i32 %i.cc to i64                   ; 3 uses
  %i.ch = mul i64 %i.cf, %i.cg
  %i.ci = load i64, ptr %i.w, align 8, !tbaa !38, !noalias !225 ; 9 uses
  %i.cj = mul i64 %i.ch, %i.ci
  %i.ck = getelementptr i8, ptr %i.ce, i64 %i.cj  ; 7 uses
  %i.cl = sext i32 %i.cd to i64                   ; 8 uses
  %i.cm = load i32, ptr %i.x, align 4, !tbaa !44, !noalias !226
  %i.cn = load ptr, ptr %8, align 8, !tbaa !49, !noalias !226
  %i.co = load i64, ptr %i.y, align 8, !tbaa !43, !noalias !226
  %i.cp = mul i64 %i.co, %indvars.iv669
  %i.cq = load i64, ptr %i.z, align 8, !tbaa !38, !noalias !226 ; 2 uses
  %i.cr = mul i64 %i.cp, %i.cq
  %i.cs = getelementptr i8, ptr %i.cn, i64 %i.cr
  %i.ct = sext i32 %i.cm to i64
  %i.cu = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc136 unwind label %bb.o

.noexc136:                                        ; preds = %.noexc140
  %i.cv = load i32, ptr %i.aa, align 4, !tbaa !44, !noalias !227 ; 6 uses
  %i.cw = load i32, ptr %i.ab, align 8, !tbaa !45, !noalias !227 ; 3 uses
  %i.cx = load ptr, ptr %9, align 8, !tbaa !49, !noalias !227 ; 2 uses
  %i.cy = load i64, ptr %i.ac, align 8, !tbaa !43, !noalias !227 ; 2 uses
  %i.cz = sext i32 %i.cu to i64                   ; 2 uses
  %i.da = mul i64 %i.cy, %i.cz
  %i.db = load i64, ptr %i.ad, align 8, !tbaa !38, !noalias !227 ; 5 uses
  %i.dc = mul i64 %i.da, %i.db
  %i.dd = getelementptr i8, ptr %i.cx, i64 %i.dc  ; 3 uses
  %i.de = sext i32 %i.cv to i64                   ; 7 uses
  %i.df = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc134 unwind label %bb.o

.noexc134:                                        ; preds = %.noexc136
  %i.dg = load ptr, ptr %10, align 8, !tbaa !49, !noalias !228
  %i.dh = load i64, ptr %i.ae, align 8, !tbaa !43, !noalias !228
  %i.di = sext i32 %i.df to i64
  %i.dj = mul i64 %i.dh, %i.di
  %i.dk = load i64, ptr %i.af, align 8, !tbaa !38, !noalias !228
  %i.dl = mul i64 %i.dj, %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dl ; 5 uses
  %i.dn = icmp sgt i32 %i.cw, 0
  br i1 %i.dn, label %.lr.ph7.i, label %_ZN4ncnnL25dynamic_quantize_2d_per_hERKNS_3MatERS0_S3_.exit

.lr.ph7.i:                                        ; preds = %.noexc134
  %factor.op.mul.i = mul i64 %i.be, %i.bh         ; 2 uses
  %i.do = icmp sgt i32 %i.cv, 0
  %wide.trip.count23.i = zext nneg i32 %i.cw to i64 ; 6 uses
  br i1 %i.do, label %.lr.ph.us.preheader.i, label %.lr.ph7.split.i.preheader

.lr.ph7.split.i.preheader:                        ; preds = %.lr.ph7.i
  %min.iters.check937 = icmp ult i32 %i.cw, 8
  br i1 %min.iters.check937, label %.lr.ph7.split.i.preheader951, label %vector.ph938

vector.ph938:                                     ; preds = %.lr.ph7.split.i.preheader
  %n.vec939 = and i64 %wide.trip.count23.i, 2147483640 ; 3 uses
  br label %vector.body940

vector.body940:                                   ; preds = %vector.body940, %vector.ph938
  %index941 = phi i64 [ 0, %vector.ph938 ], [ %index.next942, %vector.body940 ] ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %index941 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %i.dp, align 4, !tbaa !46
  store <4 x float> splat (float 1.000000e+00), ptr %i.dq, align 4, !tbaa !46
  %index.next942 = add nuw i64 %index941, 8       ; 2 uses
  %i.dr = icmp eq i64 %index.next942, %n.vec939
  br i1 %i.dr, label %middle.block943, label %vector.body940, !llvm.loop !154

middle.block943:                                  ; preds = %vector.body940
  %cmp.n944 = icmp eq i64 %n.vec939, %wide.trip.count23.i
  br i1 %cmp.n944, label %_ZN4ncnnL25dynamic_quantize_2d_per_hERKNS_3MatERS0_S3_.exit, label %.lr.ph7.split.i.preheader951

.lr.ph7.split.i.preheader951:                     ; preds = %.lr.ph7.split.i.preheader, %middle.block943
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph7.split.i.preheader ], [ %n.vec939, %middle.block943 ]
  br label %.lr.ph7.split.i

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph7.i
  %wide.trip.count18.i = zext nneg i32 %i.cv to i64 ; 6 uses
  %min.iters.check920 = icmp ult i32 %i.cv, 8
  %n.vec922 = and i64 %wide.trip.count18.i, 2147483640 ; 3 uses
  %cmp.n933 = icmp eq i64 %n.vec922, %wide.trip.count18.i
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge.us.i, %.lr.ph.us.preheader.i
  %indvars.iv20.i = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next21.i, %._crit_edge.us.i ] ; 3 uses
  %.reass.us.i = mul i64 %factor.op.mul.i, %indvars.iv20.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.reass.us.i ; 2 uses
  br i1 %min.iters.check920, label %scalar.ph919.preheader, label %vector.body923

vector.body923:                                   ; preds = %.lr.ph.us.i, %vector.body923
  %index924 = phi i64 [ %index.next929, %vector.body923 ], [ 0, %.lr.ph.us.i ] ; 2 uses
  %vec.phi925 = phi <4 x float> [ %i.dx, %vector.body923 ], [ zeroinitializer, %.lr.ph.us.i ]
  %vec.phi926 = phi <4 x float> [ %i.dy, %vector.body923 ], [ zeroinitializer, %.lr.ph.us.i ]
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %index924 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %wide.load927 = load <4 x float>, ptr %i.dt, align 4, !tbaa !46
  %wide.load928 = load <4 x float>, ptr %i.du, align 4, !tbaa !46
  %i.dv = call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load927)
  %i.dw = call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load928)
  %i.dx = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi925, <4 x float> %i.dv) ; 2 uses
  %i.dy = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi926, <4 x float> %i.dw) ; 2 uses
  %index.next929 = add nuw i64 %index924, 8       ; 2 uses
  %i.dz = icmp eq i64 %index.next929, %n.vec922
  br i1 %i.dz, label %middle.block930, label %vector.body923, !llvm.loop !155

middle.block930:                                  ; preds = %vector.body923
  %rdx.minmax.select932 = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.dx, <4 x float> %i.dy)
  %i.ea = call nnan ninf nsz float @llvm.vector.reduce.fmax.v4f32(<4 x float> %rdx.minmax.select932) ; 2 uses
  br i1 %cmp.n933, label %._crit_edge.us.i, label %scalar.ph919.preheader

scalar.ph919.preheader:                           ; preds = %.lr.ph.us.i, %middle.block930
  %indvars.iv15.i.ph = phi i64 [ 0, %.lr.ph.us.i ], [ %n.vec922, %middle.block930 ]
  %.023.us.i.ph = phi float [ 0.000000e+00, %.lr.ph.us.i ], [ %i.ea, %middle.block930 ]
  br label %scalar.ph919

scalar.ph919:                                     ; preds = %scalar.ph919.preheader, %scalar.ph919
  %indvars.iv15.i = phi i64 [ %indvars.iv.next16.i, %scalar.ph919 ], [ %indvars.iv15.i.ph, %scalar.ph919.preheader ] ; 2 uses
  %.023.us.i = phi float [ %.sroa.speculated.us.i, %scalar.ph919 ], [ %.023.us.i.ph, %scalar.ph919.preheader ]
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %indvars.iv15.i
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !46
  %i.ed = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.ec)
  %.sroa.speculated.us.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.023.us.i, float %i.ed) ; 2 uses
  %indvars.iv.next16.i = add nuw nsw i64 %indvars.iv15.i, 1 ; 2 uses
  %exitcond19.not.i = icmp eq i64 %indvars.iv.next16.i, %wide.trip.count18.i
  br i1 %exitcond19.not.i, label %._crit_edge.us.i, label %scalar.ph919, !llvm.loop !156

._crit_edge.us.i:                                 ; preds = %scalar.ph919, %middle.block930
  %.sroa.speculated.us.i.lcssa = phi float [ %i.ea, %middle.block930 ], [ %.sroa.speculated.us.i, %scalar.ph919 ] ; 2 uses
  %i.ee = fcmp fast oeq float %.sroa.speculated.us.i.lcssa, 0.000000e+00
  %i.ef = fdiv fast float 1.270000e+02, %.sroa.speculated.us.i.lcssa
  %i.eg = select fast i1 %i.ee, float 1.000000e+00, float %i.ef
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv20.i
  store float %i.eg, ptr %i.eh, align 4, !tbaa !46
  %indvars.iv.next21.i = add nuw nsw i64 %indvars.iv20.i, 1 ; 2 uses
  %exitcond24.not.i = icmp eq i64 %indvars.iv.next21.i, %wide.trip.count23.i
  br i1 %exitcond24.not.i, label %.lr.ph10.split.i.preheader, label %.lr.ph.us.i, !llvm.loop !157

.lr.ph10.split.i.preheader:                       ; preds = %._crit_edge.us.i
  %i.ei = mul i64 %i.db, %wide.trip.count18.i
  %i.ej = mul i64 %i.cy, %i.cz
  %i.ek = add nsw i64 %wide.trip.count23.i, -1    ; 2 uses
  %i.el = mul nsw i64 %i.ek, %wide.trip.count18.i
  %i.em = add i64 %i.ej, %i.el
  %i.en = mul i64 %i.db, %i.em
  %i.eo = getelementptr i8, ptr %i.cx, i64 %i.en
  %scevgep899 = getelementptr i8, ptr %i.eo, i64 %i.de
  %i.ep = mul i64 %i.db, %wide.trip.count18.i
  %i.eq = mul i64 %i.bc, %indvars.iv669
  %i.er = mul nsw i64 %i.ek, %i.bh
  %i.es = add i64 %i.eq, %i.er
  %i.et = mul i64 %i.be, %i.es
  %i.eu = shl nuw nsw i64 %i.de, 2
  %i.ev = getelementptr i8, ptr %i.bb, i64 %i.et
  %scevgep900 = getelementptr i8, ptr %i.ev, i64 %i.eu
  %i.ew = mul i64 %i.be, %i.bh
  %min.iters.check907 = icmp ult i32 %i.cv, 4
  %bound0901 = icmp ult ptr %i.dd, %scevgep900
  %bound1902 = icmp ult ptr %i.bg, %scevgep899
  %found.conflict903 = and i1 %bound0901, %bound1902
  %i.ex = or i64 %i.ew, %i.ep
  %i.ey = icmp slt i64 %i.ex, 0
  %i.ez = or i1 %found.conflict903, %i.ey
  %n.vec909 = and i64 %i.de, 2147483644           ; 3 uses
  %cmp.n917 = icmp eq i64 %n.vec909, %i.de
  %i.fa = and i32 %i.cv, 1
  %lcmp.mod.not = icmp eq i32 %i.fa, 0
  %i.fb = add nsw i64 %i.de, -1
  br label %.lr.ph10.split.i

.lr.ph7.split.i:                                  ; preds = %.lr.ph7.split.i.preheader951, %.lr.ph7.split.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph7.split.i ], [ %indvars.iv.i.ph, %.lr.ph7.split.i.preheader951 ] ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv.i
  store float 1.000000e+00, ptr %i.fc, align 4, !tbaa !46
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count23.i
  br i1 %exitcond.not.i, label %_ZN4ncnnL25dynamic_quantize_2d_per_hERKNS_3MatERS0_S3_.exit, label %.lr.ph7.split.i, !llvm.loop !158

.lr.ph10.split.i:                                 ; preds = %.lr.ph10.split.i.preheader, %._crit_edge.i
  %indvars.iv28.i = phi i64 [ %indvars.iv.next29.i, %._crit_edge.i ], [ 0, %.lr.ph10.split.i.preheader ] ; 4 uses
  %i.fd = mul i64 %factor.op.mul.i, %indvars.iv28.i
  %i.fe = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.fd ; 4 uses
  %i.ff = mul i64 %i.ei, %indvars.iv28.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.ff ; 4 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv28.i
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !46 ; 4 uses
  %brmerge = select i1 %min.iters.check907, i1 true, i1 %i.ez
  br i1 %brmerge, label %.lr.ph.i.preheader, label %vector.ph908

vector.ph908:                                     ; preds = %.lr.ph10.split.i
  %broadcast.splatinsert910 = insertelement <4 x float> poison, float %i.fi, i64 0
  %broadcast.splat911 = shufflevector <4 x float> %broadcast.splatinsert910, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body912

vector.body912:                                   ; preds = %vector.body912, %vector.ph908
  %index913 = phi i64 [ 0, %vector.ph908 ], [ %index.next915, %vector.body912 ] ; 3 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %index913
  %wide.load914 = load <4 x float>, ptr %i.fj, align 4, !tbaa !46, !alias.scope !229
  %i.fk = fmul fast <4 x float> %wide.load914, %broadcast.splat911
  %i.fl = call fast <4 x float> @llvm.round.v4f32(<4 x float> %i.fk)
  %i.fm = fptosi <4 x float> %i.fl to <4 x i32>
  %i.fn = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fm, <4 x i32> splat (i32 -127))
  %i.fo = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.fn, <4 x i32> splat (i32 127))
  %i.fp = trunc nsw <4 x i32> %i.fo to <4 x i8>
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fg, i64 %index913
  store <4 x i8> %i.fp, ptr %i.fq, align 1, !tbaa !230, !alias.scope !231, !noalias !229
  %index.next915 = add nuw i64 %index913, 4       ; 2 uses
  %i.fr = icmp eq i64 %index.next915, %n.vec909
  br i1 %i.fr, label %middle.block916, label %vector.body912, !llvm.loop !162

middle.block916:                                  ; preds = %vector.body912
  br i1 %cmp.n917, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph10.split.i, %middle.block916
  %indvars.iv25.i.ph = phi i64 [ %n.vec909, %middle.block916 ], [ 0, %.lr.ph10.split.i ] ; 5 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol
end_hunk_0
begin_hunk_1_@_ZNK4ncnn4SDPA12forward_int8ERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.4:bb.a
  %min.iters.check709 = icmp ult i32 %i.tt, 8
  %n.vec711 = and i64 %wide.trip.count.i297, 2147483640 ; 3 uses
  %cmp.n721 = icmp eq i64 %n.vec711, %wide.trip.count.i297
  br label %.lr.ph.us.i298

.lr.ph.us.i298:                                   ; preds = %._crit_edge.us.i307, %.lr.ph.us.preheader.i295
  %indvars.iv46.i299 = phi i64 [ 0, %.lr.ph.us.preheader.i295 ], [ %indvars.iv.next47.i308, %._crit_edge.us.i307 ] ; 2 uses
  %.02932.us.i300 = phi float [ 0.000000e+00, %.lr.ph.us.preheader.i295 ], [ %.sroa.speculated.us.i304.lcssa, %._crit_edge.us.i307 ] ; 2 uses
  %.reass.us.i301 = mul i64 %factor.op.mul.i280, %indvars.iv46.i299
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.reass.us.i301 ; 2 uses
  br i1 %min.iters.check709, label %scalar.ph708.preheader, label %vector.ph710

vector.ph710:                                     ; preds = %.lr.ph.us.i298
  %broadcast.splatinsert712 = insertelement <4 x float> poison, float %.02932.us.i300, i64 0
  %broadcast.splat713 = shufflevector <4 x float> %broadcast.splatinsert712, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body714

vector.body714:                                   ; preds = %vector.body714, %vector.ph710
  %index715 = phi i64 [ 0, %vector.ph710 ], [ %index.next719, %vector.body714 ] ; 2 uses
  %vec.phi = phi <4 x float> [ %broadcast.splat713, %vector.ph710 ], [ %i.uk, %vector.body714 ]
  %vec.phi716 = phi <4 x float> [ %broadcast.splat713, %vector.ph710 ], [ %i.ul, %vector.body714 ]
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %i.uf, i64 %index715 ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 16
  %wide.load717 = load <4 x float>, ptr %i.ug, align 4, !tbaa !46
  %wide.load718 = load <4 x float>, ptr %i.uh, align 4, !tbaa !46
  %i.ui = call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load717)
  %i.uj = call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load718)
  %i.uk = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi, <4 x float> %i.ui) ; 2 uses
  %i.ul = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi716, <4 x float> %i.uj) ; 2 uses
  %index.next719 = add nuw i64 %index715, 8       ; 2 uses
  %i.um = icmp eq i64 %index.next719, %n.vec711
  br i1 %i.um, label %middle.block720, label %vector.body714, !llvm.loop !211

middle.block720:                                  ; preds = %vector.body714
  %rdx.minmax.select = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.uk, <4 x float> %i.ul)
  %i.un = call nnan ninf nsz float @llvm.vector.reduce.fmax.v4f32(<4 x float> %rdx.minmax.select) ; 2 uses
  br i1 %cmp.n721, label %._crit_edge.us.i307, label %scalar.ph708.preheader

scalar.ph708.preheader:                           ; preds = %.lr.ph.us.i298, %middle.block720
  %indvars.iv.i302.ph = phi i64 [ 0, %.lr.ph.us.i298 ], [ %n.vec711, %middle.block720 ]
  %.130.us.i303.ph = phi float [ %.02932.us.i300, %.lr.ph.us.i298 ], [ %i.un, %middle.block720 ]
  br label %scalar.ph708

scalar.ph708:                                     ; preds = %scalar.ph708.preheader, %scalar.ph708
  %indvars.iv.i302 = phi i64 [ %indvars.iv.next.i305, %scalar.ph708 ], [ %indvars.iv.i302.ph, %scalar.ph708.preheader ] ; 2 uses
  %.130.us.i303 = phi float [ %.sroa.speculated.us.i304, %scalar.ph708 ], [ %.130.us.i303.ph, %scalar.ph708.preheader ]
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %i.uf, i64 %indvars.iv.i302
  %i.up = load float, ptr %i.uo, align 4, !tbaa !46
  %i.uq = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.up)
  %.sroa.speculated.us.i304 = call nnan ninf nsz float @llvm.maxnum.f32(float %.130.us.i303, float %i.uq) ; 2 uses
  %indvars.iv.next.i305 = add nuw nsw i64 %indvars.iv.i302, 1 ; 2 uses
  %exitcond.not.i306 = icmp eq i64 %indvars.iv.next.i305, %wide.trip.count.i297
  br i1 %exitcond.not.i306, label %._crit_edge.us.i307, label %scalar.ph708, !llvm.loop !212

._crit_edge.us.i307:                              ; preds = %scalar.ph708, %middle.block720
  %.sroa.speculated.us.i304.lcssa = phi float [ %i.un, %middle.block720 ], [ %.sroa.speculated.us.i304, %scalar.ph708 ] ; 3 uses
  %indvars.iv.next47.i308 = add nuw nsw i64 %indvars.iv46.i299, 1 ; 2 uses
  %exitcond50.not.i309 = icmp eq i64 %indvars.iv.next47.i308, %wide.trip.count49.i296
  br i1 %exitcond50.not.i309, label %.lr.ph41.i282, label %.lr.ph.us.i298, !llvm.loop !169

.lr.ph41.i282:                                    ; preds = %._crit_edge.us.i307
  %i.ur = fcmp fast oeq float %.sroa.speculated.us.i304.lcssa, 0.000000e+00
  %i.us = fdiv fast float 1.270000e+02, %.sroa.speculated.us.i304.lcssa
  %i.ut = select fast i1 %i.ur, float 1.000000e+00, float %i.us ; 5 uses
  %i.uu = mul i64 %i.tz, %wide.trip.count.i297
  %i.uv = mul i64 %i.tw, %i.tx
  %i.uw = add nsw i64 %wide.trip.count49.i296, -1 ; 2 uses
  %i.ux = mul nsw i64 %i.uw, %wide.trip.count.i297
  %i.uy = add i64 %i.uv, %i.ux
  %i.uz = mul i64 %i.tz, %i.uy
  %i.va = getelementptr i8, ptr %i.tv, i64 %i.uz
  %scevgep705 = getelementptr i8, ptr %i.va, i64 %i.uc
  %i.vb = mul i64 %i.tz, %wide.trip.count.i297
  %i.vc = mul i64 %i.bw, %i.bo
  %i.vd = mul nsw i64 %i.uw, %i.cb
  %i.ve = add i64 %i.vc, %i.vd
  %i.vf = mul i64 %i.by, %i.ve
  %i.vg = shl nuw nsw i64 %i.uc, 2
  %i.vh = getelementptr i8, ptr %i.bv, i64 %i.vf
  %scevgep706 = getelementptr i8, ptr %i.vh, i64 %i.vg
  %i.vi = mul i64 %i.by, %i.cb
  %min.iters.check = icmp ult i32 %i.tt, 4
  %bound0 = icmp ult ptr %i.ub, %scevgep706
  %bound1 = icmp ult ptr %i.ca, %scevgep705
  %found.conflict = and i1 %bound0, %bound1
  %i.vj = or i64 %i.vi, %i.vb
  %i.vk = icmp slt i64 %i.vj, 0
  %i.vl = or i1 %found.conflict, %i.vk
  %n.vec = and i64 %i.uc, 2147483644              ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ut, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %i.uc
  %i.vm = and i32 %i.tt, 1
  %lcmp.mod983.not = icmp eq i32 %i.vm, 0
  %i.vn = add nsw i64 %i.uc, -1
  br label %.lr.ph41.split.i283

.lr.ph41.split.i283:                              ; preds = %.lr.ph41.i282, %._crit_edge.i285
  %indvars.iv54.i284 = phi i64 [ %indvars.iv.next55.i286, %._crit_edge.i285 ], [ 0, %.lr.ph41.i282 ] ; 3 uses
  %i.vo = mul i64 %factor.op.mul.i280, %indvars.iv54.i284
  %i.vp = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.vo ; 4 uses
  %i.vq = mul i64 %i.uu, %indvars.iv54.i284
  %i.vr = getelementptr inbounds nuw i8, ptr %i.ub, i64 %i.vq ; 4 uses
  %brmerge1015 = select i1 %min.iters.check, i1 true, i1 %i.vl
  br i1 %brmerge1015, label %.lr.ph.i287.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph41.split.i283, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph41.split.i283 ] ; 3 uses
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %i.vp, i64 %index
  %wide.load = load <4 x float>, ptr %i.vs, align 4, !tbaa !46, !alias.scope !244
  %i.vt = fmul fast <4 x float> %wide.load, %broadcast.splat
  %i.vu = call fast <4 x float> @llvm.round.v4f32(<4 x float> %i.vt)
  %i.vv = fptosi <4 x float> %i.vu to <4 x i32>
  %i.vw = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.vv, <4 x i32> splat (i32 -127))
  %i.vx = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.vw, <4 x i32> splat (i32 127))
  %i.vy = trunc nsw <4 x i32> %i.vx to <4 x i8>
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vr, i64 %index
  store <4 x i8> %i.vy, ptr %i.vz, align 1, !tbaa !230, !alias.scope !245, !noalias !244
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.wa = icmp eq i64 %index.next, %n.vec
  br i1 %i.wa, label %middle.block, label %vector.body, !llvm.loop !216

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i285, label %.lr.ph.i287.preheader

.lr.ph.i287.preheader:                            ; preds = %.lr.ph41.split.i283, %middle.block
  %indvars.iv51.i288.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph41.split.i283 ] ; 5 uses
  br i1 %lcmp.mod983.not, label %.lr.ph.i287.prol.loopexit, label %.lr.ph.i287.prol

.lr.ph.i287.prol:                                 ; preds = %.lr.ph.i287.preheader
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %i.vp, i64 %indvars.iv51.i288.ph
  %i.wc = load float, ptr %i.wb, align 4, !tbaa !46
  %i.wd = fmul fast float %i.wc, %i.ut
  %i.we = call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.wd)
  %i.wf = fptosi float %i.we to i32
  %spec.select5.i.i289.prol = call i32 @llvm.smax.i32(i32 %i.wf, i32 -127)
  %.06.i.i290.prol = call i32 @llvm.smin.i32(i32 %spec.select5.i.i289.prol, i32 127)
  %.0.i.i291.prol = trunc nsw i32 %.06.i.i290.prol to i8
  %i.wg = getelementptr inbounds nuw i8, ptr %i.vr, i64 %indvars.iv51.i288.ph
  store i8 %.0.i.i291.prol, ptr %i.wg, align 1, !tbaa !230
  %indvars.iv.next52.i292.prol = or disjoint i64 %indvars.iv51.i288.ph, 1
  br label %.lr.ph.i287.prol.loopexit

.lr.ph.i287.prol.loopexit:                        ; preds = %.lr.ph.i287.prol, %.lr.ph.i287.preheader
  %indvars.iv51.i288.unr = phi i64 [ %indvars.iv51.i288.ph, %.lr.ph.i287.preheader ], [ %indvars.iv.next52.i292.prol, %.lr.ph.i287.prol ]
  %i.wh = icmp eq i64 %indvars.iv51.i288.ph, %i.vn
  br i1 %i.wh, label %._crit_edge.i285, label %.lr.ph.i287

._crit_edge.i285:                                 ; preds = %.lr.ph.i287.prol.loopexit, %.lr.ph.i287, %middle.block
  %indvars.iv.next55.i286 = add nuw nsw i64 %indvars.iv54.i284, 1 ; 2 uses
  %exitcond652.not = icmp eq i64 %indvars.iv.next55.i286, %wide.trip.count49.i296
  br i1 %exitcond652.not, label %_ZN4ncnnL19dynamic_quantize_2dERKNS_3MatERS0_Rf.exit311, label %.lr.ph41.split.i283, !llvm.loop !174

.lr.ph.i287:                                      ; preds = %.lr.ph.i287.prol.loopexit, %.lr.ph.i287
  %indvars.iv51.i288 = phi i64 [ %indvars.iv.next52.i292.1, %.lr.ph.i287 ], [ %indvars.iv51.i288.unr, %.lr.ph.i287.prol.loopexit ] ; 4 uses
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %i.vp, i64 %indvars.iv51.i288
  %i.wj = load float, ptr %i.wi, align 4, !tbaa !46
  %i.wk = fmul fast float %i.wj, %i.ut
  %i.wl = call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.wk)
  %i.wm = fptosi float %i.wl to i32
  %spec.select5.i.i289 = call i32 @llvm.smax.i32(i32 %i.wm, i32 -127)
  %.06.i.i290 = call i32 @llvm.smin.i32(i32 %spec.select5.i.i289, i32 127)
  %.0.i.i291 = trunc nsw i32 %.06.i.i290 to i8
  %i.wn = getelementptr inbounds nuw i8, ptr %i.vr, i64 %indvars.iv51.i288
  store i8 %.0.i.i291, ptr %i.wn, align 1, !tbaa !230
  %indvars.iv.next52.i292 = add nuw nsw i64 %indvars.iv51.i288, 1 ; 2 uses
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %i.vp, i64 %indvars.iv.next52.i292
  %i.wp = load float, ptr %i.wo, align 4, !tbaa !46
  %i.wq = fmul fast float %i.wp, %i.ut
  %i.wr = call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.wq)
  %i.ws = fptosi float %i.wr to i32
  %spec.select5.i.i289.1 = call i32 @llvm.smax.i32(i32 %i.ws, i32 -127)
  %.06.i.i290.1 = call i32 @llvm.smin.i32(i32 %spec.select5.i.i289.1, i32 127)
  %.0.i.i291.1 = trunc nsw i32 %.06.i.i290.1 to i8
  %i.wt = getelementptr inbounds nuw i8, ptr %i.vr, i64 %indvars.iv.next52.i292
  store i8 %.0.i.i291.1, ptr %i.wt, align 1, !tbaa !230
  %indvars.iv.next52.i292.1 = add nuw nsw i64 %indvars.iv51.i288, 2 ; 2 uses
  %exitcond651.not.1 = icmp eq i64 %indvars.iv.next52.i292.1, %i.uc
  br i1 %exitcond651.not.1, label %._crit_edge.i285, label %.lr.ph.i287, !llvm.loop !217

_ZN4ncnnL19dynamic_quantize_2dERKNS_3MatERS0_Rf.exit311: ; preds = %._crit_edge.i285, %.lr.ph35.i279, %.noexc127
  %.1 = phi nsz float [ 1.000000e+00, %.noexc127 ], [ 1.000000e+00, %.lr.ph35.i279 ], [ %i.ut, %._crit_edge.i285 ]
  %i.wu = load i32, ptr %12, align 4, !tbaa !41   ; 2 uses
  %i.wv = icmp sgt i32 %i.wu, 0
  br i1 %i.wv, label %.lr.ph593, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph593:                                        ; preds = %_ZN4ncnnL19dynamic_quantize_2dERKNS_3MatERS0_Rf.exit311
  %i.ww = mul i64 %i.qi, %i.ql
  %i.wx = mul i64 %i.cq, %i.ct
  %i.wy = load i32, ptr %20, align 4, !tbaa !41   ; 2 uses
  %i.wz = icmp sgt i32 %i.wy, 0
  %i.xa = mul i64 %i.tz, %i.uc                    ; 5 uses
  br i1 %i.wz, label %.lr.ph593.split, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph593.split:                                  ; preds = %.lr.ph593
  %i.xb = load i32, ptr %13, align 4, !tbaa !41   ; 3 uses
  %i.xc = icmp sgt i32 %i.xb, 0
  %i.xd = zext nneg i32 %i.wy to i64              ; 2 uses
  %i.xe = shl nuw nsw i64 %i.xd, 2
  %wide.trip.count667 = zext nneg i32 %i.wu to i64
  %wide.trip.count659 = zext i32 %i.xb to i64     ; 2 uses
  %xtraiter985 = and i64 %wide.trip.count659, 3   ; 3 uses
  %i.xf = icmp ult i32 %i.xb, 4
  %unroll_iter = and i64 %wide.trip.count659, 2147483644
  %lcmp.mod986.not = icmp eq i64 %xtraiter985, 0
  %lcmp.mod988 = icmp ne i64 %xtraiter985, 0
  br label %.preheader.lr.ph

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge591, %.lr.ph593, %_ZN4ncnnL19dynamic_quantize_2dERKNS_3MatERS0_Rf.exit311
  %indvars.iv.next670 = add nsw i64 %indvars.iv669, 1
  %i.xg = load i32, ptr %i.b, align 4, !tbaa !41
  %i.xh = sext i32 %i.xg to i64
  %.not.not = icmp slt i64 %indvars.iv669, %i.xh
  br i1 %.not.not, label %.noexc125, label %._crit_edge596

.preheader.lr.ph:                                 ; preds = %.lr.ph593.split, %._crit_edge591
  %indvar = phi i64 [ 0, %.lr.ph593.split ], [ %indvar.next, %._crit_edge591 ] ; 4 uses
  %i.xi = mul i64 %i.ww, %indvar
  %21 = getelementptr inbounds nuw i8, ptr %i.qk, i64 %i.xi ; 5 uses
  %22 = mul i64 %i.wx, %indvar
  %i.xj = getelementptr i8, ptr %i.cs, i64 %22    ; 2 uses
  br i1 %i.xc, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  call void @llvm.memset.p0.i64(ptr align 4 %i.xj, i8 0, i64 %i.xe, i1 false), !tbaa !46
  br label %._crit_edge591

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %i.qt, i64 %indvar
  %i.xl = load float, ptr %i.xk, align 4, !tbaa !46
  %i.xm = fmul fast float %i.xl, %.1
  %i.xn = fdiv fast float 1.000000e+00, %i.xm
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge588.us
  %indvars.iv661 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next662, %._crit_edge588.us ] ; 3 uses
  %invariant.gep.us = getelementptr i8, ptr %i.ub, i64 %indvars.iv661 ; 5 uses
  br i1 %i.xf, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv656 = phi i64 [ %indvars.iv.next657.3, %.preheader.us.new ], [ 0, %.preheader.us ] ; 6 uses
  %.0110585.us = phi i32 [ %i.yt, %.preheader.us.new ], [ 0, %.preheader.us ]
  %niter = phi i64 [ %niter.next.3, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.xo = getelementptr inbounds nuw i8, ptr %21, i64 %indvars.iv656
  %i.xp = load i8, ptr %i.xo, align 1, !tbaa !230
  %i.xq = sext i8 %i.xp to i32
  %i.xr = mul i64 %i.xa, %indvars.iv656
  %gep.us = getelementptr i8, ptr %invariant.gep.us, i64 %i.xr
  %i.xs = load i8, ptr %gep.us, align 1, !tbaa !230
  %i.xt = sext i8 %i.xs to i32
  %i.xu = mul nsw i32 %i.xt, %i.xq
  %i.xv = add nsw i32 %i.xu, %.0110585.us
  %indvars.iv.next657 = or disjoint i64 %indvars.iv656, 1 ; 2 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %21, i64 %indvars.iv.next657
  %i.xx = load i8, ptr %i.xw, align 1, !tbaa !230
  %i.xy = sext i8 %i.xx to i32
  %i.xz = mul i64 %i.xa, %indvars.iv.next657
  %gep.us.1 = getelementptr i8, ptr %invariant.gep.us, i64 %i.xz
  %i.ya = load i8, ptr %gep.us.1, align 1, !tbaa !230
  %i.yb = sext i8 %i.ya to i32
  %i.yc = mul nsw i32 %i.yb, %i.xy
  %i.yd = add nsw i32 %i.yc, %i.xv
  %indvars.iv.next657.1 = or disjoint i64 %indvars.iv656, 2 ; 2 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %21, i64 %indvars.iv.next657.1
  %i.yf = load i8, ptr %i.ye, align 1, !tbaa !230
  %i.yg = sext i8 %i.yf to i32
  %i.yh = mul i64 %i.xa, %indvars.iv.next657.1
  %gep.us.2 = getelementptr i8, ptr %invariant.gep.us, i64 %i.yh
  %i.yi = load i8, ptr %gep.us.2, align 1, !tbaa !230
  %i.yj = sext i8 %i.yi to i32
  %i.yk = mul nsw i32 %i.yj, %i.yg
  %i.yl = add nsw i32 %i.yk, %i.yd
  %indvars.iv.next657.2 = or disjoint i64 %indvars.iv656, 3 ; 2 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %21, i64 %indvars.iv.next657.2
  %i.yn = load i8, ptr %i.ym, align 1, !tbaa !230
  %i.yo = sext i8 %i.yn to i32
  %i.yp = mul i64 %i.xa, %indvars.iv.next657.2
  %gep.us.3 = getelementptr i8, ptr %invariant.gep.us, i64 %i.yp
  %i.yq = load i8, ptr %gep.us.3, align 1, !tbaa !230
  %i.yr = sext i8 %i.yq to i32
  %i.ys = mul nsw i32 %i.yr, %i.yo
  %i.yt = add nsw i32 %i.ys, %i.yl                ; 3 uses
  %indvars.iv.next657.3 = add nuw nsw i64 %indvars.iv656, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge588.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !218

._crit_edge588.us.unr-lcssa:                      ; preds = %.preheader.us.new
  br i1 %lcmp.mod986.not, label %._crit_edge588.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge588.us.unr-lcssa, %.preheader.us
  %indvars.iv656.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next657.3, %._crit_edge588.us.unr-lcssa ]
  %.0110585.us.epil.init = phi i32 [ 0, %.preheader.us ], [ %i.yt, %._crit_edge588.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod988)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader
  %indvars.iv656.epil = phi i64 [ %indvars.iv656.epil.init, %.epil.preheader ], [ %indvars.iv.next657.epil, %bb.m ] ; 3 uses
  %.0110585.us.epil = phi i32 [ %.0110585.us.epil.init, %.epil.preheader ], [ %i.zb, %bb.m ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.m ]
  %i.yu = getelementptr inbounds nuw i8, ptr %21, i64 %indvars.iv656.epil
  %i.yv = load i8, ptr %i.yu, align 1, !tbaa !230
  %i.yw = sext i8 %i.yv to i32
  %i.yx = mul i64 %i.xa, %indvars.iv656.epil
  %gep.us.epil = getelementptr i8, ptr %invariant.gep.us, i64 %i.yx
  %i.yy = load i8, ptr %gep.us.epil, align 1, !tbaa !230
  %i.yz = sext i8 %i.yy to i32
  %i.za = mul nsw i32 %i.yz, %i.yw
  %i.zb = add nsw i32 %i.za, %.0110585.us.epil    ; 2 uses
  %indvars.iv.next657.epil = add nuw nsw i64 %indvars.iv656.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter985
  br i1 %epil.iter.cmp.not, label %._crit_edge588.us, label %bb.m, !llvm.loop !219

._crit_edge588.us:                                ; preds = %bb.m, %._crit_edge588.us.unr-lcssa
  %.lcssa974 = phi i32 [ %i.yt, %._crit_edge588.us.unr-lcssa ], [ %i.zb, %bb.m ]
  %i.zc = sitofp fast i32 %.lcssa974 to float
  %i.zd = fmul fast float %i.zc, %i.xn
  %i.ze = getelementptr inbounds nuw [4 x i8], ptr %i.xj, i64 %indvars.iv661
  store float %i.zd, ptr %i.ze, align 4, !tbaa !46
  %indvars.iv.next662 = add nuw nsw i64 %indvars.iv661, 1 ; 2 uses
  %exitcond665.not = icmp eq i64 %indvars.iv.next662, %i.xd
  br i1 %exitcond665.not, label %._crit_edge591, label %.preheader.us, !llvm.loop !220

._crit_edge591:                                   ; preds = %._crit_edge588.us, %.preheader.preheader
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %exitcond668.not = icmp eq i64 %indvar.next, %wide.trip.count667
  br i1 %exitcond668.not, label %_ZN4ncnn3MatD2Ev.exit, label %.preheader.lr.ph, !llvm.loop !221

._crit_edge596:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge596, %bb.a
  ret void

bb.o:                                             ; preds = %_ZN4ncnnL25dynamic_quantize_2d_per_hERKNS_3MatERS0_S3_.exit277, %.noexc130, %._crit_edge584, %_ZN4ncnnL25dynamic_quantize_2d_per_hERKNS_3MatERS0_S3_.exit, %.noexc136, %.noexc140, %.noexc125
  %i.zf = landingpad { ptr, i32 }
          catch ptr null
  %i.zg = extractvalue { ptr, i32 } %i.zf, 0
  call void @__clang_call_terminate(ptr %i.zg) #15
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.exp.v4f32(<4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmax.v4f32(<4 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.round.v4f32(<4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #9

attributes #0 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { builtin nounwind }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{null}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"bool", !6, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0, !14, i64 8, !6, i64 16}
!16 = !{!"p1 int", !11, i64 0}
!17 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !16, i64 0, !16, i64 8, !16, i64 16}
!18 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !17, i64 0}
!19 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !18, i64 0}
!20 = !{!"_ZTSSt6vectorIiSaIiEE", !19, i64 0}
!21 = !{!"p1 _ZTSN4ncnn3MatE", !11, i64 0}
!22 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !21, i64 0, !21, i64 8, !21, i64 16}
!23 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !22, i64 0}
!24 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !23, i64 0}
!25 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !24, i64 0}
!26 = !{!"_ZTSN4ncnn5LayerE", !10, i64 8, !10, i64 9, !10, i64 10, !10, i64 11, !10, i64 12, !10, i64 13, !10, i64 14, !10, i64 15, !10, i64 16, !10, i64 17, !10, i64 18, !10, i64 19, !10, i64 20, !10, i64 21, !10, i64 22, !10, i64 23, !10, i64 24, !10, i64 25, !10, i64 26, !10, i64 27, !7, i64 28, !11, i64 32, !7, i64 40, !15, i64 48, !15, i64 80, !20, i64 112, !20, i64 136, !25, i64 160, !25, i64 184}
!27 = !{!"float", !6, i64 0}
!28 = !{!"_ZTSN4ncnn4SDPAE", !26, i64 0, !7, i64 208, !27, i64 212, !7, i64 216, !7, i64 220}
!29 = !{!28, !7, i64 208}
!30 = !{!28, !27, i64 212}
!31 = !{!28, !7, i64 216}
!32 = !{!28, !7, i64 220}
!33 = !{!22, !21, i64 0}
!34 = !{!"p1 _ZTSN4ncnn9AllocatorE", !11, i64 0}
!35 = !{!"_ZTSN4ncnn3MatE", !11, i64 0, !16, i64 8, !14, i64 16, !7, i64 24, !34, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !14, i64 64}
!36 = !{!35, !16, i64 8}
!37 = !{!11, !11, i64 0}
!38 = !{!35, !14, i64 16}
!39 = !{!35, !7, i64 24}
!40 = !{!35, !34, i64 32}
!41 = !{!7, !7, i64 0}
!42 = !{!35, !7, i64 56}
!43 = !{!35, !14, i64 64}
!44 = !{!35, !7, i64 44}
!45 = !{!35, !7, i64 48}
!46 = !{!27, !27, i64 0}
!47 = !{!"_ZTSN4ncnn6OptionE", !10, i64 0, !10, i64 1, !10, i64 2, !10, i64 3, !7, i64 4, !34, i64 8, !34, i64 16, !7, i64 24, !10, i64 28, !10, i64 29, !10, i64 30, !10, i64 31, !10, i64 32, !10, i64 33, !10, i64 34, !10, i64 35, !10, i64 36, !10, i64 37, !10, i64 38, !10, i64 39, !7, i64 40, !10, i64 44, !10, i64 45, !10, i64 46, !10, i64 47, !6, i64 48, !10, i64 49, !10, i64 50, !10, i64 51, !10, i64 52, !10, i64 53, !10, i64 54, !10, i64 55, !10, i64 56, !10, i64 57, !10, i64 58, !10, i64 59, !10, i64 60, !10, i64 61, !10, i64 62, !10, i64 63}
!48 = !{!47, !34, i64 8}
!49 = !{!35, !11, i64 0}
!50 = !{!47, !7, i64 4}
!51 = !{!47, !34, i64 16}
!52 = !{!"vtable pointer", !5, i64 0}
!53 = !{!52, !52, i64 0}
!54 = !{i64 2, i64 -1, i64 -1, i1 true}
!55 = !{!54}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"llvm.loop.isvectorized", i32 1}
!58 = !{!"llvm.loop.unroll.runtime.disable"}
!59 = !{!"llvm.loop.unroll.disable"}
!60 = distinct !{!60, i1 false, !"_ZNK4ncnn3Mat7channelEi"}
!61 = distinct !{!61, !60, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!62 = distinct !{!62, i1 false, !"_ZNK4ncnn3Mat7channelEi"}
!63 = distinct !{!63, !62, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!64 = distinct !{!64, i1 false, !"_ZN4ncnn3Mat7channelEi"}
!65 = distinct !{!65, !64, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!66 = !{!61}
!67 = !{!63}
!68 = !{!65}
!69 = distinct !{!69, i1 false, !"_ZNK4ncnn3Mat7channelEi"}
!70 = distinct !{!70, !69, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!71 = distinct !{!71, i1 false, !"_ZNK4ncnn3Mat7channelEi"}
!72 = distinct !{!72, !71, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!73 = distinct !{!73, i1 false, !"_ZN4ncnn3Mat7channelEi"}
!74 = distinct !{!74, !73, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!75 = !{!70}
!76 = !{!72}
!77 = !{!74}
!78 = distinct !{!78, i1 false, !"_ZNK4ncnn3Mat7channelEi"}
!79 = distinct !{!79, !78, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!80 = distinct !{!80, i1 false, !"_ZN4ncnn3Mat7channelEi"}
end_hunk_1

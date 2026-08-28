Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/interp_x86_fma?download=true
inline.NumInlined: 103
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN4ncnnL12cubic_coeffsEiiPiPfi:bb.a
  %.not89 = icmp slt i32 %.1, %i.k
  br i1 %.not89, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = fsub fast float 1.000000e+00, %i.bc
  br label %.sink.split101

.sink.split101:                                   ; preds = %bb.i, %.thread91
  %.sink104 = phi float [ %i.be, %.thread91 ], [ %i.bf, %bb.i ]
  %.sink103 = phi float [ %i.az, %.thread91 ], [ %i.bc, %bb.i ]
  %.sink102 = phi float [ %i.bc, %.thread91 ], [ 0.000000e+00, %bb.i ]
  store float %.sink104, ptr %i.au, align 4, !tbaa !70
  store float %.sink103, ptr %i.aq, align 4, !tbaa !70
  store float %.sink102, ptr %i.ak, align 4, !tbaa !70
  store float 0.000000e+00, ptr %i.w, align 4, !tbaa !70
  br label %bb.j

bb.j:                                             ; preds = %.sink.split101, %bb.h
  %.3 = phi i32 [ %.1, %bb.h ], [ %i.l, %.sink.split101 ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store i32 %.3, ptr %i.bg, align 4, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !126
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn14Interp_x86_fma7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.5(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !25
  %i.h = load i32, ptr %0, align 4, !tbaa !25     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !25
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !25
  %i.k = load i32, ptr %i.a, align 4, !tbaa !25   ; 2 uses
  %.not123 = icmp sgt i32 %i.k, %i.j
  br i1 %.not123, label %._crit_edge127, label %.lr.ph126

.lr.ph126:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load i32, ptr %6, align 4, !tbaa !25     ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph126.split.preheader, label %._crit_edge127

.lr.ph126.split.preheader:                        ; preds = %.lr.ph126
  %i.r = sext i32 %i.k to i64
  %i.s = add nsw i32 %i.j, 1
  br label %.lr.ph126.split

.lr.ph126.split:                                  ; preds = %.lr.ph126.split.preheader, %._crit_edge122
  %i.t = phi i32 [ %i.p, %.lr.ph126.split.preheader ], [ %i.am, %._crit_edge122 ] ; 2 uses
  %indvars.iv142 = phi i64 [ %i.r, %.lr.ph126.split.preheader ], [ %indvars.iv.next143, %._crit_edge122 ] ; 3 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !45     ; 2 uses
  %i.v = load i32, ptr %i.l, align 4, !tbaa !26
  %i.w = sext i32 %i.v to i64
  %i.x = mul i64 %indvars.iv142, %i.w
  %i.y = load i64, ptr %i.m, align 8, !tbaa !29
  %i.z = mul i64 %i.x, %i.y                       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.z
  %i.ab = icmp sgt i32 %i.t, 0
  br i1 %i.ab, label %.lr.ph121.preheader, label %._crit_edge122

.lr.ph121.preheader:                              ; preds = %.lr.ph126.split
  %i.ac = ptrtoaddr ptr %i.u to i64
  %i.ad = load ptr, ptr %5, align 8, !tbaa !72
  %i.ae = load ptr, ptr %4, align 8, !tbaa !45
  %i.af = load i32, ptr %i.n, align 4, !tbaa !26
  %i.ag = sext i32 %i.af to i64
  %i.ah = mul nsw i64 %indvars.iv142, %i.ag
  %i.ai = load i64, ptr %i.o, align 8, !tbaa !29
  %i.aj = mul i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj
  %.pre = load i32, ptr %8, align 4, !tbaa !25
  %i.al = add i64 %i.z, %i.ac                     ; 2 uses
  br label %.lr.ph121

._crit_edge122:                                   ; preds = %._crit_edge116, %.lr.ph126.split
  %i.am = phi i32 [ %i.t, %.lr.ph126.split ], [ %i.fq, %._crit_edge116 ]
  %indvars.iv.next143 = add nsw i64 %indvars.iv142, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next143 to i32
  %exitcond145.not = icmp eq i32 %i.s, %lftr.wideiv
  br i1 %exitcond145.not, label %._crit_edge127, label %.lr.ph126.split, !llvm.loop !127

.lr.ph121:                                        ; preds = %.lr.ph121.preheader, %._crit_edge116
  %i.an = phi i32 [ %.pre, %.lr.ph121.preheader ], [ %i.cu, %._crit_edge116 ] ; 4 uses
  %indvars.iv139 = phi i64 [ 0, %.lr.ph121.preheader ], [ %indvars.iv.next140, %._crit_edge116 ] ; 2 uses
  %.084118 = phi ptr [ %i.ad, %.lr.ph121.preheader ], [ %i.fo, %._crit_edge116 ] ; 5 uses
  %.085117 = phi ptr [ %i.ak, %.lr.ph121.preheader ], [ %i.fp, %._crit_edge116 ] ; 6 uses
  %.085117162 = ptrtoaddr ptr %.085117 to i64     ; 2 uses
  %i.ao = load ptr, ptr %7, align 8, !tbaa !71
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv139
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !25
  %i.ar = mul i32 %i.an, %i.aq
  %i.as = sext i32 %i.ar to i64                   ; 4 uses
  %i.at = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.as ; 8 uses
  %i.au = load float, ptr %.084118, align 4, !tbaa !70 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.084118, i64 4
  %i.aw = load float, ptr %i.av, align 4, !tbaa !70 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.084118, i64 8
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !70 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.084118, i64 12
  %i.ba = load float, ptr %i.az, align 4, !tbaa !70 ; 4 uses
  %i.bb = insertelement <8 x float> poison, float %i.au, i64 0
  %i.bc = shufflevector <8 x float> %i.bb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bd = insertelement <8 x float> poison, float %i.aw, i64 0
  %i.be = shufflevector <8 x float> %i.bd, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bf = insertelement <8 x float> poison, float %i.ay, i64 0
  %i.bg = shufflevector <8 x float> %i.bf, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bh = insertelement <8 x float> poison, float %i.ba, i64 0
  %i.bi = shufflevector <8 x float> %i.bh, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bj = icmp sgt i32 %i.an, 7
  br i1 %i.bj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph121, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph121 ] ; 3 uses
  %i.bk = phi i32 [ %i.cd, %.lr.ph ], [ %i.an, %.lr.ph121 ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv ; 4 uses
  %i.bm = sext i32 %i.bk to i64                   ; 2 uses
  %i.bn = sub nsw i64 0, %i.bm
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bn
  %i.bp = load <8 x float>, ptr %i.bo, align 32, !tbaa !17
  %i.bq = load <8 x float>, ptr %i.bl, align 32, !tbaa !17
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bm
  %i.bs = load <8 x float>, ptr %i.br, align 32, !tbaa !17
  %i.bt = shl nsw i32 %i.bk, 1
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bu
  %i.bw = load <8 x float>, ptr %i.bv, align 32, !tbaa !17
  %i.bx = fmul fast <8 x float> %i.bp, %i.bc
  %i.by = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bq, <8 x float> nofpclass(nan inf) %i.be, <8 x float> nofpclass(nan inf) %i.bx)
  %i.bz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bs, <8 x float> nofpclass(nan inf) %i.bg, <8 x float> nofpclass(nan inf) %i.by)
  %i.ca = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bw, <8 x float> nofpclass(nan inf) %i.bi, <8 x float> nofpclass(nan inf) %i.bz)
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.085117, i64 %indvars.iv
  store <8 x float> %i.ca, ptr %i.cb, align 32, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 3 uses
  %i.cc = or disjoint i64 %indvars.iv.next, 7
  %i.cd = load i32, ptr %8, align 4, !tbaa !25    ; 3 uses
  %i.ce = sext i32 %i.cd to i64
  %i.cf = icmp slt i64 %i.cc, %i.ce
  br i1 %i.cf, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !128

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.cg = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph121
  %i.ch = phi i32 [ %i.an, %.lr.ph121 ], [ %i.cd, %._crit_edge.loopexit ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %.lr.ph121 ], [ %i.cg, %._crit_edge.loopexit ] ; 3 uses
  %i.ci = insertelement <4 x float> poison, float %i.au, i64 0
  %i.cj = shufflevector <4 x float> %i.ci, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ck = insertelement <4 x float> poison, float %i.aw, i64 0
  %i.cl = shufflevector <4 x float> %i.ck, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cm = insertelement <4 x float> poison, float %i.ay, i64 0
  %i.cn = shufflevector <4 x float> %i.cm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.co = insertelement <4 x float> poison, float %i.ba, i64 0
  %i.cp = shufflevector <4 x float> %i.co, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cq = or disjoint i32 %.0.lcssa, 3
  %i.cr = icmp slt i32 %i.cq, %i.ch
  br i1 %i.cr, label %.lr.ph111.preheader, label %.preheader

.lr.ph111.preheader:                              ; preds = %._crit_edge
  %i.cs = zext nneg i32 %.0.lcssa to i64
  br label %.lr.ph111

.preheader.loopexit:                              ; preds = %.lr.ph111
  %i.ct = trunc nuw nsw i64 %indvars.iv.next134 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %._crit_edge
  %i.cu = phi i32 [ %i.ch, %._crit_edge ], [ %i.ew, %.preheader.loopexit ] ; 6 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %._crit_edge ], [ %i.ct, %.preheader.loopexit ] ; 2 uses
  %i.cv = icmp slt i32 %.1.lcssa, %i.cu
  br i1 %i.cv, label %.lr.ph115, label %.preheader.._crit_edge116_crit_edge

.preheader.._crit_edge116_crit_edge:              ; preds = %.preheader
  %.pre146 = sext i32 %i.cu to i64
  br label %._crit_edge116

.lr.ph115:                                        ; preds = %.preheader
  %i.cw = shl nuw nsw i32 %i.cu, 1
  %i.cx = zext i32 %.1.lcssa to i64               ; 5 uses
  %i.cy = sext i32 %i.cu to i64                   ; 7 uses
  %9 = zext nneg i32 %i.cw to i64                 ; 2 uses
  %wide.trip.count = zext i32 %i.cu to i64        ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.at, i64 %i.cy ; 2 uses
  %invariant.gep158 = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %9 ; 2 uses
  %i.cz = sub nsw i64 %wide.trip.count, %i.cx     ; 3 uses
  %min.iters.check = icmp ult i64 %i.cz, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph115
  %i.da = sub i64 %.085117162, %i.al              ; 2 uses
  %i.db = add nsw i64 %i.as, %9
  %i.dc = shl nsw i64 %i.db, 2
  %i.dd = sub i64 %i.dc, %i.da
  %diff.check = icmp ugt i64 %i.dd, -32
  %i.de = add nsw i64 %i.cy, %i.as
  %i.df = shl nsw i64 %i.de, 2
  %i.dg = sub i64 %i.df, %i.da
  %diff.check163 = icmp ugt i64 %i.dg, -32
  %conflict.rdx = or i1 %diff.check, %diff.check163
  %i.dh = sub i64 %.085117162, %i.al              ; 2 uses
  %i.di = shl nsw i64 %i.as, 2                    ; 2 uses
  %i.dj = sub i64 %i.di, %i.dh
  %diff.check164 = icmp ugt i64 %i.dj, -32
  %conflict.rdx165 = or i1 %conflict.rdx, %diff.check164
  %i.dk = shl nsw i64 %i.cy, 2
  %i.dl = add i64 %i.dh, %i.dk
  %i.dm = sub i64 %i.di, %i.dl
  %diff.check166 = icmp ugt i64 %i.dm, -32
  %conflict.rdx167 = or i1 %conflict.rdx165, %diff.check166
  br i1 %conflict.rdx167, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cz, -8                      ; 3 uses
  %i.dn = add nsw i64 %n.vec, %i.cx
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.au, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert168 = insertelement <8 x float> poison, float %i.aw, i64 0
  %broadcast.splat169 = shufflevector <8 x float> %broadcast.splatinsert168, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert170 = insertelement <8 x float> poison, float %i.ay, i64 0
  %broadcast.splat171 = shufflevector <8 x float> %broadcast.splatinsert170, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert172 = insertelement <8 x float> poison, float %i.ba, i64 0
  %broadcast.splat173 = shufflevector <8 x float> %broadcast.splatinsert172, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.do = add nuw i64 %index, %i.cx               ; 5 uses
  %i.dp = sub nsw i64 %i.do, %i.cy
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.dp
  %wide.load = load <8 x float>, ptr %i.dq, align 4, !tbaa !70
  %i.dr = fmul fast <8 x float> %wide.load, %broadcast.splat
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.do
  %wide.load174 = load <8 x float>, ptr %i.ds, align 4, !tbaa !70
  %i.dt = fmul fast <8 x float> %wide.load174, %broadcast.splat169
  %i.du = fadd fast <8 x float> %i.dt, %i.dr
  %i.dv = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.do
  %wide.load175 = load <8 x float>, ptr %i.dv, align 4, !tbaa !70
  %i.dw = fmul fast <8 x float> %wide.load175, %broadcast.splat171
  %i.dx = fadd fast <8 x float> %i.du, %i.dw
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep158, i64 %i.do
  %wide.load176 = load <8 x float>, ptr %i.dy, align 4, !tbaa !70
  %i.dz = fmul fast <8 x float> %wide.load176, %broadcast.splat173
  %i.ea = fadd fast <8 x float> %i.dx, %i.dz
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %.085117, i64 %i.do
  store <8 x float> %i.ea, ptr %i.eb, align 4, !tbaa !70
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ec = icmp eq i64 %index.next, %n.vec
  br i1 %i.ec, label %middle.block, label %vector.body, !llvm.loop !129

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cz, %n.vec
  br i1 %cmp.n, label %._crit_edge116, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph115, %middle.block
  %indvars.iv136.ph = phi i64 [ %i.cx, %vector.memcheck ], [ %i.cx, %.lr.ph115 ], [ %i.dn, %middle.block ]
  br label %scalar.ph

.lr.ph111:                                        ; preds = %.lr.ph111.preheader, %.lr.ph111
  %indvars.iv133 = phi i64 [ %i.cs, %.lr.ph111.preheader ], [ %indvars.iv.next134, %.lr.ph111 ] ; 3 uses
  %i.ed = phi i32 [ %i.ch, %.lr.ph111.preheader ], [ %i.ew, %.lr.ph111 ] ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv133 ; 4 uses
  %i.ef = sext i32 %i.ed to i64                   ; 2 uses
  %i.eg = sub nsw i64 0, %i.ef
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.eg
  %i.ei = load <4 x float>, ptr %i.eh, align 16, !tbaa !17
  %i.ej = load <4 x float>, ptr %i.ee, align 16, !tbaa !17
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.ef
  %i.el = load <4 x float>, ptr %i.ek, align 16, !tbaa !17
  %i.em = shl nsw i32 %i.ed, 1
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.en
  %i.ep = load <4 x float>, ptr %i.eo, align 16, !tbaa !17
  %i.eq = fmul fast <4 x float> %i.ei, %i.cj
  %i.er = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ej, <4 x float> nofpclass(nan inf) %i.cl, <4 x float> nofpclass(nan inf) %i.eq)
  %i.es = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.el, <4 x float> nofpclass(nan inf) %i.cn, <4 x float> nofpclass(nan inf) %i.er)
  %i.et = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ep, <4 x float> nofpclass(nan inf) %i.cp, <4 x float> nofpclass(nan inf) %i.es)
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.085117, i64 %indvars.iv133
  store <4 x float> %i.et, ptr %i.eu, align 16, !tbaa !17
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 4 ; 3 uses
  %i.ev = or disjoint i64 %indvars.iv.next134, 3
  %i.ew = load i32, ptr %8, align 4, !tbaa !25    ; 3 uses
  %i.ex = sext i32 %i.ew to i64
  %i.ey = icmp slt i64 %i.ev, %i.ex
  br i1 %i.ey, label %.lr.ph111, label %.preheader.loopexit, !llvm.loop !130

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv136 = phi i64 [ %indvars.iv.next137, %scalar.ph ], [ %indvars.iv136.ph, %scalar.ph.preheader ] ; 6 uses
  %i.ez = sub nsw i64 %indvars.iv136, %i.cy
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.ez
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !70
  %i.fc = fmul fast float %i.fb, %i.au
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv136
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !70
  %i.ff = fmul fast float %i.fe, %i.aw
  %i.fg = fadd fast float %i.ff, %i.fc
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv136
  %i.fh = load float, ptr %gep, align 4, !tbaa !70
  %i.fi = fmul fast float %i.fh, %i.ay
  %i.fj = fadd fast float %i.fg, %i.fi
  %gep159 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep158, i64 %indvars.iv136
  %i.fk = load float, ptr %gep159, align 4, !tbaa !70
  %i.fl = fmul fast float %i.fk, %i.ba
  %i.fm = fadd fast float %i.fj, %i.fl
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %.085117, i64 %indvars.iv136
  store float %i.fm, ptr %i.fn, align 4, !tbaa !70
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next137, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge116, label %scalar.ph, !llvm.loop !131

._crit_edge116:                                   ; preds = %scalar.ph, %middle.block, %.preheader.._crit_edge116_crit_edge
  %.pre-phi = phi i64 [ %.pre146, %.preheader.._crit_edge116_crit_edge ], [ %i.cy, %middle.block ], [ %i.cy, %scalar.ph ]
  %i.fo = getelementptr inbounds nuw i8, ptr %.084118, i64 16
  %i.fp = getelementptr inbounds [4 x i8], ptr %.085117, i64 %.pre-phi
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1 ; 2 uses
  %i.fq = load i32, ptr %6, align 4, !tbaa !25    ; 2 uses
  %i.fr = sext i32 %i.fq to i64
  %i.fs = icmp slt i64 %indvars.iv.next140, %i.fr
  br i1 %i.fs, label %.lr.ph121, label %._crit_edge122, !llvm.loop !132

._crit_edge127:                                   ; preds = %._crit_edge122, %.lr.ph126, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge127, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn14Interp_x86_fma7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.6(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11) #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !25
  %i.h = load i32, ptr %0, align 4, !tbaa !25     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !25
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !25
  %i.k = load i32, ptr %i.a, align 4, !tbaa !25   ; 2 uses
  %.not85 = icmp sgt i32 %i.k, %i.j
  br i1 %.not85, label %._crit_edge87, label %_ZNK4ncnn3Mat7channelEi.exit.lr.ph

_ZNK4ncnn3Mat7channelEi.exit.lr.ph:               ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.r = load i32, ptr %5, align 4, !tbaa !25     ; 3 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %_ZNK4ncnn3Mat7channelEi.exit.preheader, label %._crit_edge87

_ZNK4ncnn3Mat7channelEi.exit.preheader:           ; preds = %_ZNK4ncnn3Mat7channelEi.exit.lr.ph
  %i.t = sext i32 %i.k to i64
  br label %_ZNK4ncnn3Mat7channelEi.exit

_ZNK4ncnn3Mat7channelEi.exit:                     ; preds = %_ZNK4ncnn3Mat7channelEi.exit.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.u = phi i32 [ %i.j, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.as, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %i.v = phi i32 [ %i.r, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.at, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.w = phi i32 [ %i.r, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.au, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv91 = phi i64 [ %i.t, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %indvars.iv.next92, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.x = load ptr, ptr %3, align 8, !tbaa !45, !noalias !133
  %i.y = load i64, ptr %i.m, align 8, !tbaa !34, !noalias !133
  %i.z = mul i64 %i.y, %indvars.iv91
  %i.aa = load i64, ptr %i.n, align 8, !tbaa !29, !noalias !133 ; 2 uses
  %i.ab = mul i64 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ab
  %i.ad = load ptr, ptr %4, align 8, !tbaa !45, !noalias !136
  %i.ae = load i64, ptr %i.p, align 8, !tbaa !34, !noalias !136
  %i.af = mul i64 %i.ae, %indvars.iv91
  %i.ag = load i64, ptr %i.q, align 8, !tbaa !29, !noalias !136 ; 2 uses
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ah
  %i.aj = icmp sgt i32 %i.w, 0
  br i1 %i.aj, label %.lr.ph84, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph84:                                         ; preds = %_ZNK4ncnn3Mat7channelEi.exit
  %i.ak = load i32, ptr %i.o, align 4, !tbaa !26, !noalias !136
  %i.al = sext i32 %i.ak to i64
  %i.am = load i32, ptr %i.l, align 4, !tbaa !26, !noalias !133
  %i.an = sext i32 %i.am to i64
  %i.ao = mul i64 %i.aa, %i.an
  %i.ap = mul i64 %i.ag, %i.al
  %i.aq = load i32, ptr %8, align 4, !tbaa !25    ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph84.split, label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit.loopexit:                   ; preds = %._crit_edge
  %.pre95 = load i32, ptr %i.b, align 4, !tbaa !25
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.lr.ph84, %_ZN4ncnn3MatD2Ev.exit.loopexit, %_ZNK4ncnn3Mat7channelEi.exit
  %i.as = phi i32 [ %i.u, %_ZNK4ncnn3Mat7channelEi.exit ], [ %.pre95, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.u, %.lr.ph84 ] ; 2 uses
  %i.at = phi i32 [ %i.v, %_ZNK4ncnn3Mat7channelEi.exit ], [ %i.bl, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.v, %.lr.ph84 ]
  %i.au = phi i32 [ %i.w, %_ZNK4ncnn3Mat7channelEi.exit ], [ %i.bl, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.w, %.lr.ph84 ]
  %indvars.iv.next92 = add nsw i64 %indvars.iv91, 1
  %i.av = sext i32 %i.as to i64
  %.not.not = icmp slt i64 %indvars.iv91, %i.av
  br i1 %.not.not, label %_ZNK4ncnn3Mat7channelEi.exit, label %._crit_edge87, !llvm.loop !139

.lr.ph84.split:                                   ; preds = %.lr.ph84, %._crit_edge
  %i.aw = phi i32 [ %i.bl, %._crit_edge ], [ %i.v, %.lr.ph84 ]
  %i.ax = phi i32 [ %i.bm, %._crit_edge ], [ %i.aq, %.lr.ph84 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %.lr.ph84 ] ; 3 uses
  %i.ay = trunc nuw nsw i64 %indvars.iv to i32
  %i.az = uitofp nneg i32 %i.ay to float
  %i.ba = load float, ptr %6, align 4, !tbaa !70
  %i.bb = fmul fast float %i.ba, %i.az
  %i.bc = fptosi float %i.bb to i32
  %i.bd = load i32, ptr %7, align 4, !tbaa !25
  %i.be = add nsw i32 %i.bd, -1
  %.sroa.speculated51 = call i32 @llvm.smin.i32(i32 %i.be, i32 %i.bc)
  %i.bf = sext i32 %.sroa.speculated51 to i64
  %i.bg = mul i64 %i.ao, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bg
  %i.bi = icmp sgt i32 %i.ax, 0
  br i1 %i.bi, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph84.split
  %i.bj = mul i64 %i.ap, %indvars.iv
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bj
  %.pre = load i32, ptr %11, align 4, !tbaa !25
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre94 = load i32, ptr %5, align 4, !tbaa !25
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph84.split
  %i.bl = phi i32 [ %.pre94, %._crit_edge.loopexit ], [ %i.aw, %.lr.ph84.split ] ; 4 uses
  %i.bm = phi i32 [ %i.cf, %._crit_edge.loopexit ], [ %i.ax, %.lr.ph84.split ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bn = sext i32 %i.bl to i64
  %i.bo = icmp slt i64 %indvars.iv.next, %i.bn
  br i1 %i.bo, label %.lr.ph84.split, label %_ZN4ncnn3MatD2Ev.exit.loopexit, !llvm.loop !140

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.bp = phi i32 [ %i.cb, %.lr.ph ], [ %.pre, %.lr.ph.preheader ] ; 2 uses
  %.03682 = phi i32 [ %i.ce, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.03781 = phi ptr [ %i.cd, %.lr.ph ], [ %i.bk, %.lr.ph.preheader ] ; 2 uses
  %i.bq = uitofp nneg i32 %.03682 to float
  %i.br = load float, ptr %9, align 4, !tbaa !70
  %i.bs = fmul fast float %i.br, %i.bq
  %i.bt = fptosi float %i.bs to i32
  %i.bu = load i32, ptr %10, align 4, !tbaa !25
  %i.bv = add nsw i32 %i.bu, -1
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.bv, i32 %i.bt)
  %i.bw = mul nsw i32 %.sroa.speculated, %i.bp
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.bx
  %i.bz = sext i32 %i.bp to i64
  %i.ca = shl nsw i64 %i.bz, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.03781, ptr align 4 %i.by, i64 %i.ca, i1 false)
  %i.cb = load i32, ptr %11, align 4, !tbaa !25   ; 2 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %.03781, i64 %i.cc
  %i.ce = add nuw nsw i32 %.03682, 1              ; 2 uses
  %i.cf = load i32, ptr %8, align 4, !tbaa !25    ; 2 uses
  %i.cg = icmp slt i32 %i.ce, %i.cf
  br i1 %i.cg, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !141

._crit_edge87:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit, %_ZNK4ncnn3Mat7channelEi.exit.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge87, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn14Interp_x86_fma7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.7(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.10:bb.a
  %i.gd = icmp slt i64 %indvars.iv.next113, %i.gc
  br i1 %i.gd, label %.lr.ph94, label %._crit_edge95, !llvm.loop !227

._crit_edge100:                                   ; preds = %._crit_edge95, %.lr.ph99, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge100, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.11(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !25
  %i.h = load i32, ptr %0, align 4, !tbaa !25     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !25
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !25
  %i.k = load i32, ptr %i.a, align 4, !tbaa !25   ; 2 uses
  %.not135 = icmp sgt i32 %i.k, %i.j
  br i1 %.not135, label %._crit_edge139, label %.lr.ph138

.lr.ph138:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load i32, ptr %6, align 4, !tbaa !25     ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph138.split.preheader, label %._crit_edge139

.lr.ph138.split.preheader:                        ; preds = %.lr.ph138
  %i.r = sext i32 %i.k to i64
  %i.s = add nsw i32 %i.j, 1
  br label %.lr.ph138.split

.lr.ph138.split:                                  ; preds = %.lr.ph138.split.preheader, %._crit_edge134
  %i.t = phi i32 [ %i.p, %.lr.ph138.split.preheader ], [ %i.am, %._crit_edge134 ] ; 2 uses
  %indvars.iv154 = phi i64 [ %i.r, %.lr.ph138.split.preheader ], [ %indvars.iv.next155, %._crit_edge134 ] ; 3 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !45     ; 2 uses
  %i.v = load i32, ptr %i.l, align 4, !tbaa !26
  %i.w = sext i32 %i.v to i64
  %i.x = mul i64 %indvars.iv154, %i.w
  %i.y = load i64, ptr %i.m, align 8, !tbaa !29
  %i.z = mul i64 %i.x, %i.y                       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.z
  %i.ab = icmp sgt i32 %i.t, 0
  br i1 %i.ab, label %.lr.ph133.preheader, label %._crit_edge134

.lr.ph133.preheader:                              ; preds = %.lr.ph138.split
  %i.ac = ptrtoaddr ptr %i.u to i64
  %i.ad = load ptr, ptr %5, align 8, !tbaa !72
  %i.ae = load ptr, ptr %4, align 8, !tbaa !45
  %i.af = load i32, ptr %i.n, align 4, !tbaa !26
  %i.ag = sext i32 %i.af to i64
  %i.ah = mul nsw i64 %indvars.iv154, %i.ag
  %i.ai = load i64, ptr %i.o, align 8, !tbaa !29
  %i.aj = mul i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj
  %.pre = load i32, ptr %8, align 4, !tbaa !25
  %i.al = add i64 %i.z, %i.ac                     ; 2 uses
  br label %.lr.ph133

._crit_edge134:                                   ; preds = %._crit_edge, %.lr.ph138.split
  %i.am = phi i32 [ %i.t, %.lr.ph138.split ], [ %i.iw, %._crit_edge ]
  %indvars.iv.next155 = add nsw i64 %indvars.iv154, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next155 to i32
  %exitcond157.not = icmp eq i32 %i.s, %lftr.wideiv
  br i1 %exitcond157.not, label %._crit_edge139, label %.lr.ph138.split, !llvm.loop !228

.lr.ph133:                                        ; preds = %.lr.ph133.preheader, %._crit_edge
  %i.an = phi i32 [ %.pre, %.lr.ph133.preheader ], [ %i.dc, %._crit_edge ] ; 4 uses
  %indvars.iv151 = phi i64 [ 0, %.lr.ph133.preheader ], [ %indvars.iv.next152, %._crit_edge ] ; 2 uses
  %.084130 = phi ptr [ %i.ad, %.lr.ph133.preheader ], [ %i.iu, %._crit_edge ] ; 2 uses
  %.085129 = phi ptr [ %i.ak, %.lr.ph133.preheader ], [ %i.iv, %._crit_edge ] ; 7 uses
  %.085129175 = ptrtoaddr ptr %.085129 to i64     ; 2 uses
  %i.ao = load ptr, ptr %7, align 8, !tbaa !71
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv151
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !25
  %i.ar = mul i32 %i.an, %i.aq
  %i.as = sext i32 %i.ar to i64                   ; 4 uses
  %i.at = getelementptr inbounds [2 x i8], ptr %i.aa, i64 %i.as ; 10 uses
  %i.au = load <4 x float>, ptr %.084130, align 4, !tbaa !70 ; 17 uses
  %i.av = icmp sgt i32 %i.an, 7
  br i1 %i.av, label %.lr.ph, label %.preheader121

.lr.ph:                                           ; preds = %.lr.ph133
  %i.aw = shufflevector <4 x float> %i.au, <4 x float> poison, <8 x i32> zeroinitializer
  %i.ax = shufflevector <4 x float> %i.au, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ay = shufflevector <4 x float> %i.au, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.az = shufflevector <4 x float> %i.au, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  br label %bb.c

.preheader121.loopexit:                           ; preds = %bb.c
  %i.ba = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.preheader121

.preheader121:                                    ; preds = %.preheader121.loopexit, %.lr.ph133
  %i.bb = phi i32 [ %i.an, %.lr.ph133 ], [ %i.cy, %.preheader121.loopexit ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %.lr.ph133 ], [ %i.ba, %.preheader121.loopexit ] ; 3 uses
  %i.bc = or disjoint i32 %.0.lcssa, 3
  %i.bd = icmp slt i32 %i.bc, %i.bb
  br i1 %i.bd, label %.lr.ph124, label %.preheader

.lr.ph124:                                        ; preds = %.preheader121
  %i.be = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bf = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bg = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bh = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.bi = zext nneg i32 %.0.lcssa to i64
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.bj = phi i32 [ %i.an, %.lr.ph ], [ %i.cy, %bb.c ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv ; 4 uses
  %i.bl = sext i32 %i.bj to i64                   ; 2 uses
  %i.bm = sub nsw i64 0, %i.bl
  %i.bn = getelementptr inbounds [2 x i8], ptr %i.bk, i64 %i.bm
  %i.bo = load <8 x i16>, ptr %i.bn, align 1, !tbaa !17 ; 2 uses
  %i.bp = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bo, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bq = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.bo, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.br = shufflevector <8 x i16> %i.bp, <8 x i16> %i.bq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bs = bitcast <16 x i16> %i.br to <8 x float>
  %i.bt = load <8 x i16>, ptr %i.bk, align 1, !tbaa !17 ; 2 uses
  %i.bu = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bv = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.bt, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bw = shufflevector <8 x i16> %i.bu, <8 x i16> %i.bv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bx = bitcast <16 x i16> %i.bw to <8 x float>
  %i.by = getelementptr inbounds [2 x i8], ptr %i.bk, i64 %i.bl
  %i.bz = load <8 x i16>, ptr %i.by, align 1, !tbaa !17 ; 2 uses
  %i.ca = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cb = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.bz, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.cc = shufflevector <8 x i16> %i.ca, <8 x i16> %i.cb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cd = bitcast <16 x i16> %i.cc to <8 x float>
  %i.ce = shl nsw i32 %i.bj, 1
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [2 x i8], ptr %i.bk, i64 %i.cf
  %i.ch = load <8 x i16>, ptr %i.cg, align 1, !tbaa !17 ; 2 uses
  %i.ci = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ch, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cj = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ch, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ck = shufflevector <8 x i16> %i.ci, <8 x i16> %i.cj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cl = bitcast <16 x i16> %i.ck to <8 x float>
  %i.cm = fmul fast <8 x float> %i.aw, %i.bs
  %i.cn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bx, <8 x float> nofpclass(nan inf) %i.ax, <8 x float> nofpclass(nan inf) %i.cm)
  %i.co = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cd, <8 x float> nofpclass(nan inf) %i.ay, <8 x float> nofpclass(nan inf) %i.cn)
  %i.cp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cl, <8 x float> nofpclass(nan inf) %i.az, <8 x float> nofpclass(nan inf) %i.co)
  %i.cq = bitcast <8 x float> %i.cp to <8 x i32>  ; 2 uses
  %i.cr = shufflevector <8 x i32> %i.cq, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cs = shufflevector <8 x i32> %i.cq, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ct = lshr <4 x i32> %i.cr, splat (i32 16)
  %i.cu = lshr <4 x i32> %i.cs, splat (i32 16)
  %i.cv = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ct, <4 x i32> %i.cu)
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %.085129, i64 %indvars.iv
  store <8 x i16> %i.cv, ptr %i.cw, align 1, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 3 uses
  %i.cx = or disjoint i64 %indvars.iv.next, 7
  %i.cy = load i32, ptr %8, align 4, !tbaa !25    ; 3 uses
  %i.cz = sext i32 %i.cy to i64
  %i.da = icmp slt i64 %i.cx, %i.cz
  br i1 %i.da, label %bb.c, label %.preheader121.loopexit, !llvm.loop !229

.preheader.loopexit:                              ; preds = %bb.d
  %i.db = trunc nuw nsw i64 %indvars.iv.next146 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader121
  %i.dc = phi i32 [ %i.bb, %.preheader121 ], [ %i.ht, %.preheader.loopexit ] ; 6 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader121 ], [ %i.db, %.preheader.loopexit ] ; 2 uses
  %i.dd = icmp slt i32 %.1.lcssa, %i.dc
  br i1 %i.dd, label %iter.check, label %.preheader.._crit_edge_crit_edge

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %.pre158 = sext i32 %i.dc to i64
  br label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.de = shl nuw nsw i32 %i.dc, 1
  %i.df = zext i32 %.1.lcssa to i64               ; 7 uses
  %i.dg = sext i32 %i.dc to i64                   ; 9 uses
  %9 = zext nneg i32 %i.de to i64                 ; 2 uses
  %wide.trip.count = zext i32 %i.dc to i64        ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.at, i64 %i.dg ; 3 uses
  %invariant.gep171 = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %9 ; 3 uses
  %i.dh = sub nsw i64 %wide.trip.count, %i.df     ; 7 uses
  %min.iters.check = icmp ult i64 %i.dh, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.di = sub i64 %.085129175, %i.al              ; 2 uses
  %i.dj = add nsw i64 %i.as, %9
  %i.dk = shl nsw i64 %i.dj, 1
  %i.dl = sub i64 %i.dk, %i.di
  %diff.check = icmp ugt i64 %i.dl, -32
  %i.dm = add nsw i64 %i.dg, %i.as
  %i.dn = shl nsw i64 %i.dm, 1
  %i.do = sub i64 %i.dn, %i.di
  %diff.check176 = icmp ugt i64 %i.do, -32
  %conflict.rdx = or i1 %diff.check, %diff.check176
  %i.dp = sub i64 %.085129175, %i.al              ; 2 uses
  %i.dq = shl nsw i64 %i.as, 1                    ; 2 uses
  %i.dr = sub i64 %i.dq, %i.dp
  %diff.check177 = icmp ugt i64 %i.dr, -32
  %conflict.rdx178 = or i1 %conflict.rdx, %diff.check177
  %i.ds = shl nsw i64 %i.dg, 1
  %i.dt = add i64 %i.dp, %i.ds
  %i.du = sub i64 %i.dq, %i.dt
  %diff.check179 = icmp ugt i64 %i.du, -32
  %conflict.rdx180 = or i1 %conflict.rdx178, %diff.check179
  br i1 %conflict.rdx180, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check181 = icmp ult i64 %i.dh, 16
  br i1 %min.iters.check181, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dv = and i64 %i.dh, 12
  %n.vec = and i64 %i.dh, -16                     ; 4 uses
  %i.dw = add nsw i64 %n.vec, %i.df
  %broadcast.splat = shufflevector <4 x float> %i.au, <4 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splat183 = shufflevector <4 x float> %i.au, <4 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat185 = shufflevector <4 x float> %i.au, <4 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat187 = shufflevector <4 x float> %i.au, <4 x float> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dx = add nuw i64 %index, %i.df               ; 5 uses
  %i.dy = sub nsw i64 %i.dx, %i.dg
  %i.dz = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.dy
  %wide.load = load <16 x i16>, ptr %i.dz, align 2, !tbaa !220
  %i.ea = zext <16 x i16> %wide.load to <16 x i32>
  %i.eb = shl nuw <16 x i32> %i.ea, splat (i32 16)
  %i.ec = bitcast <16 x i32> %i.eb to <16 x float>
  %i.ed = fmul fast <16 x float> %broadcast.splat, %i.ec
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.dx
  %wide.load188 = load <16 x i16>, ptr %i.ee, align 2, !tbaa !220
  %i.ef = zext <16 x i16> %wide.load188 to <16 x i32>
  %i.eg = shl nuw <16 x i32> %i.ef, splat (i32 16)
  %i.eh = bitcast <16 x i32> %i.eg to <16 x float>
  %i.ei = fmul fast <16 x float> %broadcast.splat183, %i.eh
  %i.ej = fadd fast <16 x float> %i.ei, %i.ed
  %i.ek = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.dx
  %wide.load189 = load <16 x i16>, ptr %i.ek, align 2, !tbaa !220
  %i.el = zext <16 x i16> %wide.load189 to <16 x i32>
  %i.em = shl nuw <16 x i32> %i.el, splat (i32 16)
  %i.en = bitcast <16 x i32> %i.em to <16 x float>
  %i.eo = fmul fast <16 x float> %broadcast.splat185, %i.en
  %i.ep = fadd fast <16 x float> %i.ej, %i.eo
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep171, i64 %i.dx
  %wide.load190 = load <16 x i16>, ptr %i.eq, align 2, !tbaa !220
  %i.er = zext <16 x i16> %wide.load190 to <16 x i32>
  %i.es = shl nuw <16 x i32> %i.er, splat (i32 16)
  %i.et = bitcast <16 x i32> %i.es to <16 x float>
  %i.eu = fmul fast <16 x float> %broadcast.splat187, %i.et
  %i.ev = fadd fast <16 x float> %i.ep, %i.eu
  %i.ew = bitcast <16 x float> %i.ev to <16 x i32>
  %i.ex = lshr <16 x i32> %i.ew, splat (i32 16)
  %i.ey = trunc nuw <16 x i32> %i.ex to <16 x i16>
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %.085129, i64 %i.dx
  store <16 x i16> %i.ey, ptr %i.ez, align 2, !tbaa !220
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.fa = icmp eq i64 %index.next, %n.vec
  br i1 %i.fa, label %middle.block, label %vector.body, !llvm.loop !230

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dh, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dv, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !223

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec191 = and i64 %i.dh, -4                   ; 3 uses
  %i.fb = add nsw i64 %n.vec191, %i.df
  %broadcast.splat193 = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat195 = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat197 = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat199 = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index200 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next205, %vec.epilog.vector.body ] ; 2 uses
  %i.fc = add nuw i64 %index200, %i.df            ; 5 uses
  %i.fd = sub nsw i64 %i.fc, %i.dg
  %i.fe = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.fd
  %wide.load201 = load <4 x i16>, ptr %i.fe, align 2, !tbaa !220
  %i.ff = zext <4 x i16> %wide.load201 to <4 x i32>
  %i.fg = shl nuw <4 x i32> %i.ff, splat (i32 16)
  %i.fh = bitcast <4 x i32> %i.fg to <4 x float>
  %i.fi = fmul fast <4 x float> %broadcast.splat193, %i.fh
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.fc
  %wide.load202 = load <4 x i16>, ptr %i.fj, align 2, !tbaa !220
  %i.fk = zext <4 x i16> %wide.load202 to <4 x i32>
  %i.fl = shl nuw <4 x i32> %i.fk, splat (i32 16)
  %i.fm = bitcast <4 x i32> %i.fl to <4 x float>
  %i.fn = fmul fast <4 x float> %broadcast.splat195, %i.fm
  %i.fo = fadd fast <4 x float> %i.fn, %i.fi
  %i.fp = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.fc
  %wide.load203 = load <4 x i16>, ptr %i.fp, align 2, !tbaa !220
  %i.fq = zext <4 x i16> %wide.load203 to <4 x i32>
  %i.fr = shl nuw <4 x i32> %i.fq, splat (i32 16)
  %i.fs = bitcast <4 x i32> %i.fr to <4 x float>
  %i.ft = fmul fast <4 x float> %broadcast.splat197, %i.fs
  %i.fu = fadd fast <4 x float> %i.fo, %i.ft
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep171, i64 %i.fc
  %wide.load204 = load <4 x i16>, ptr %i.fv, align 2, !tbaa !220
  %i.fw = zext <4 x i16> %wide.load204 to <4 x i32>
  %i.fx = shl nuw <4 x i32> %i.fw, splat (i32 16)
  %i.fy = bitcast <4 x i32> %i.fx to <4 x float>
  %i.fz = fmul fast <4 x float> %broadcast.splat199, %i.fy
  %i.ga = fadd fast <4 x float> %i.fu, %i.fz
  %i.gb = bitcast <4 x float> %i.ga to <4 x i32>
  %i.gc = lshr <4 x i32> %i.gb, splat (i32 16)
  %i.gd = trunc nuw <4 x i32> %i.gc to <4 x i16>
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr %.085129, i64 %i.fc
  store <4 x i16> %i.gd, ptr %i.ge, align 2, !tbaa !220
  %index.next205 = add nuw i64 %index200, 4       ; 2 uses
  %i.gf = icmp eq i64 %index.next205, %n.vec191
  br i1 %i.gf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !231

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n206 = icmp eq i64 %i.dh, %n.vec191
  br i1 %cmp.n206, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv148.ph = phi i64 [ %i.df, %iter.check ], [ %i.df, %vector.memcheck ], [ %i.dw, %vec.epilog.iter.check ], [ %i.fb, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

bb.d:                                             ; preds = %.lr.ph124, %bb.d
  %indvars.iv145 = phi i64 [ %i.bi, %.lr.ph124 ], [ %indvars.iv.next146, %bb.d ] ; 3 uses
  %i.gg = phi i32 [ %i.bb, %.lr.ph124 ], [ %i.ht, %bb.d ] ; 2 uses
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv145 ; 4 uses
  %i.gi = sext i32 %i.gg to i64                   ; 2 uses
  %i.gj = sub nsw i64 0, %i.gi
  %i.gk = getelementptr inbounds [2 x i8], ptr %i.gh, i64 %i.gj
  %i.gl = load i64, ptr %i.gk, align 1, !tbaa !17
  %i.gm = insertelement <2 x i64> poison, i64 %i.gl, i64 0
  %i.gn = bitcast <2 x i64> %i.gm to <8 x i16>
  %i.go = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gp = bitcast <8 x i16> %i.go to <4 x float>
  %i.gq = load i64, ptr %i.gh, align 1, !tbaa !17
  %i.gr = insertelement <2 x i64> poison, i64 %i.gq, i64 0
  %i.gs = bitcast <2 x i64> %i.gr to <8 x i16>
  %i.gt = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gs, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gu = bitcast <8 x i16> %i.gt to <4 x float>
  %i.gv = getelementptr inbounds [2 x i8], ptr %i.gh, i64 %i.gi
  %i.gw = load i64, ptr %i.gv, align 1, !tbaa !17
  %i.gx = insertelement <2 x i64> poison, i64 %i.gw, i64 0
  %i.gy = bitcast <2 x i64> %i.gx to <8 x i16>
  %i.gz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ha = bitcast <8 x i16> %i.gz to <4 x float>
  %i.hb = shl nsw i32 %i.gg, 1
  %i.hc = sext i32 %i.hb to i64
  %i.hd = getelementptr inbounds [2 x i8], ptr %i.gh, i64 %i.hc
  %i.he = load i64, ptr %i.hd, align 1, !tbaa !17
  %i.hf = insertelement <2 x i64> poison, i64 %i.he, i64 0
  %i.hg = bitcast <2 x i64> %i.hf to <8 x i16>
  %i.hh = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.hg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.hi = bitcast <8 x i16> %i.hh to <4 x float>
  %i.hj = fmul fast <4 x float> %i.be, %i.gp
  %i.hk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gu, <4 x float> nofpclass(nan inf) %i.bf, <4 x float> nofpclass(nan inf) %i.hj)
  %i.hl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ha, <4 x float> nofpclass(nan inf) %i.bg, <4 x float> nofpclass(nan inf) %i.hk)
  %i.hm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hi, <4 x float> nofpclass(nan inf) %i.bh, <4 x float> nofpclass(nan inf) %i.hl)
  %i.hn = bitcast <4 x float> %i.hm to <4 x i32>
  %i.ho = lshr <4 x i32> %i.hn, splat (i32 16)
  %i.hp = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ho, <4 x i32> poison)
  %i.hq = bitcast <8 x i16> %i.hp to <2 x i64>
  %i.hr = getelementptr inbounds nuw [2 x i8], ptr %.085129, i64 %indvars.iv145
  %i.hs = extractelement <2 x i64> %i.hq, i64 0
  store i64 %i.hs, ptr %i.hr, align 1, !tbaa !17
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 4 ; 3 uses
  %i.ht = load i32, ptr %8, align 4, !tbaa !25    ; 3 uses
  %i.hu = trunc i64 %indvars.iv.next146 to i32
  %i.hv = or i32 %i.hu, 3
  %i.hw = icmp slt i32 %i.hv, %i.ht
  br i1 %i.hw, label %bb.d, label %.preheader.loopexit, !llvm.loop !232

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv148 = phi i64 [ %indvars.iv.next149, %vec.epilog.scalar.ph ], [ %indvars.iv148.ph, %vec.epilog.scalar.ph.preheader ] ; 6 uses
  %i.hx = sub nsw i64 %indvars.iv148, %i.dg
  %i.hy = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.hx
  %i.hz = load i16, ptr %i.hy, align 2, !tbaa !220
  %i.ia = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv148
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !220
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv148
  %i.ic = load i16, ptr %gep, align 2, !tbaa !220
  %gep172 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep171, i64 %indvars.iv148
  %i.id = load i16, ptr %gep172, align 2, !tbaa !220
  %i.ie = zext i16 %i.id to i32
  %i.if = zext i16 %i.ic to i32
  %i.ig = zext i16 %i.hz to i32
  %i.ih = zext i16 %i.ib to i32
  %i.ii = insertelement <4 x i32> poison, i32 %i.ig, i64 0
  %i.ij = insertelement <4 x i32> %i.ii, i32 %i.ih, i64 1
  %i.ik = insertelement <4 x i32> %i.ij, i32 %i.if, i64 2
  %i.il = insertelement <4 x i32> %i.ik, i32 %i.ie, i64 3
  %i.im = shl nuw <4 x i32> %i.il, splat (i32 16)
  %i.in = bitcast <4 x i32> %i.im to <4 x float>
  %i.io = fmul fast <4 x float> %i.au, %i.in
  %i.ip = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.io)
  %i.iq = bitcast float %i.ip to i32
  %i.ir = lshr i32 %i.iq, 16
  %i.is = trunc nuw i32 %i.ir to i16
  %i.it = getelementptr inbounds nuw [2 x i8], ptr %.085129, i64 %indvars.iv148
  store i16 %i.is, ptr %i.it, align 2, !tbaa !220
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next149, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !233

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre158, %.preheader.._crit_edge_crit_edge ], [ %i.dg, %middle.block ], [ %i.dg, %vec.epilog.middle.block ], [ %i.dg, %vec.epilog.scalar.ph ]
  %i.iu = getelementptr inbounds nuw i8, ptr %.084130, i64 16
  %i.iv = getelementptr inbounds [2 x i8], ptr %.085129, i64 %.pre-phi
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %i.iw = load i32, ptr %6, align 4, !tbaa !25    ; 2 uses
  %i.ix = sext i32 %i.iw to i64
  %i.iy = icmp slt i64 %indvars.iv.next152, %i.ix
  br i1 %i.iy, label %.lr.ph133, label %._crit_edge134, !llvm.loop !234

._crit_edge139:                                   ; preds = %._crit_edge134, %.lr.ph138, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge139, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.12(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11) #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !25
  %i.h = load i32, ptr %0, align 4, !tbaa !25     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !25
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !25
  %i.k = load i32, ptr %i.a, align 4, !tbaa !25   ; 2 uses
  %.not85 = icmp sgt i32 %i.k, %i.j
  br i1 %.not85, label %._crit_edge87, label %_ZNK4ncnn3Mat7channelEi.exit.lr.ph

_ZNK4ncnn3Mat7channelEi.exit.lr.ph:               ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.r = load i32, ptr %5, align 4, !tbaa !25     ; 3 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %_ZNK4ncnn3Mat7channelEi.exit.preheader, label %._crit_edge87

_ZNK4ncnn3Mat7channelEi.exit.preheader:           ; preds = %_ZNK4ncnn3Mat7channelEi.exit.lr.ph
  %i.t = sext i32 %i.k to i64
  br label %_ZNK4ncnn3Mat7channelEi.exit

_ZNK4ncnn3Mat7channelEi.exit:                     ; preds = %_ZNK4ncnn3Mat7channelEi.exit.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.u = phi i32 [ %i.j, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.as, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %i.v = phi i32 [ %i.r, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.at, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.w = phi i32 [ %i.r, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.au, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv91 = phi i64 [ %i.t, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %indvars.iv.next92, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.x = load ptr, ptr %3, align 8, !tbaa !45, !noalias !235
  %i.y = load i64, ptr %i.m, align 8, !tbaa !34, !noalias !235
  %i.z = mul i64 %i.y, %indvars.iv91
  %i.aa = load i64, ptr %i.n, align 8, !tbaa !29, !noalias !235 ; 2 uses
  %i.ab = mul i64 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ab
  %i.ad = load ptr, ptr %4, align 8, !tbaa !45, !noalias !238
  %i.ae = load i64, ptr %i.p, align 8, !tbaa !34, !noalias !238
  %i.af = mul i64 %i.ae, %indvars.iv91
  %i.ag = load i64, ptr %i.q, align 8, !tbaa !29, !noalias !238 ; 2 uses
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ah
  %i.aj = icmp sgt i32 %i.w, 0
  br i1 %i.aj, label %.lr.ph84, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph84:                                         ; preds = %_ZNK4ncnn3Mat7channelEi.exit
  %i.ak = load i32, ptr %i.o, align 4, !tbaa !26, !noalias !238
  %i.al = sext i32 %i.ak to i64
  %i.am = load i32, ptr %i.l, align 4, !tbaa !26, !noalias !235
  %i.an = sext i32 %i.am to i64
  %i.ao = mul i64 %i.aa, %i.an
  %i.ap = mul i64 %i.ag, %i.al
  %i.aq = load i32, ptr %8, align 4, !tbaa !25    ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph84.split, label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit.loopexit:                   ; preds = %._crit_edge
  %.pre95 = load i32, ptr %i.b, align 4, !tbaa !25
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.lr.ph84, %_ZN4ncnn3MatD2Ev.exit.loopexit, %_ZNK4ncnn3Mat7channelEi.exit
  %i.as = phi i32 [ %i.u, %_ZNK4ncnn3Mat7channelEi.exit ], [ %.pre95, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.u, %.lr.ph84 ] ; 2 uses
  %i.at = phi i32 [ %i.v, %_ZNK4ncnn3Mat7channelEi.exit ], [ %i.bl, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.v, %.lr.ph84 ]
  %i.au = phi i32 [ %i.w, %_ZNK4ncnn3Mat7channelEi.exit ], [ %i.bl, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.w, %.lr.ph84 ]
  %indvars.iv.next92 = add nsw i64 %indvars.iv91, 1
  %i.av = sext i32 %i.as to i64
  %.not.not = icmp slt i64 %indvars.iv91, %i.av
  br i1 %.not.not, label %_ZNK4ncnn3Mat7channelEi.exit, label %._crit_edge87, !llvm.loop !241

.lr.ph84.split:                                   ; preds = %.lr.ph84, %._crit_edge
  %i.aw = phi i32 [ %i.bl, %._crit_edge ], [ %i.v, %.lr.ph84 ]
  %i.ax = phi i32 [ %i.bm, %._crit_edge ], [ %i.aq, %.lr.ph84 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %.lr.ph84 ] ; 3 uses
  %i.ay = trunc nuw nsw i64 %indvars.iv to i32
  %i.az = uitofp nneg i32 %i.ay to float
  %i.ba = load float, ptr %6, align 4, !tbaa !70
  %i.bb = fmul fast float %i.ba, %i.az
  %i.bc = fptosi float %i.bb to i32
  %i.bd = load i32, ptr %7, align 4, !tbaa !25
  %i.be = add nsw i32 %i.bd, -1
  %.sroa.speculated51 = call i32 @llvm.smin.i32(i32 %i.be, i32 %i.bc)
  %i.bf = sext i32 %.sroa.speculated51 to i64
  %i.bg = mul i64 %i.ao, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bg
  %i.bi = icmp sgt i32 %i.ax, 0
  br i1 %i.bi, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph84.split
  %i.bj = mul i64 %i.ap, %indvars.iv
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bj
  %.pre = load i32, ptr %11, align 4, !tbaa !25
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre94 = load i32, ptr %5, align 4, !tbaa !25
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph84.split
  %i.bl = phi i32 [ %.pre94, %._crit_edge.loopexit ], [ %i.aw, %.lr.ph84.split ] ; 4 uses
  %i.bm = phi i32 [ %i.cf, %._crit_edge.loopexit ], [ %i.ax, %.lr.ph84.split ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bn = sext i32 %i.bl to i64
  %i.bo = icmp slt i64 %indvars.iv.next, %i.bn
  br i1 %i.bo, label %.lr.ph84.split, label %_ZN4ncnn3MatD2Ev.exit.loopexit, !llvm.loop !242

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.bp = phi i32 [ %i.cb, %.lr.ph ], [ %.pre, %.lr.ph.preheader ] ; 2 uses
  %.03682 = phi i32 [ %i.ce, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.03781 = phi ptr [ %i.cd, %.lr.ph ], [ %i.bk, %.lr.ph.preheader ] ; 2 uses
  %i.bq = uitofp nneg i32 %.03682 to float
  %i.br = load float, ptr %9, align 4, !tbaa !70
  %i.bs = fmul fast float %i.br, %i.bq
  %i.bt = fptosi float %i.bs to i32
  %i.bu = load i32, ptr %10, align 4, !tbaa !25
  %i.bv = add nsw i32 %i.bu, -1
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.bv, i32 %i.bt)
  %i.bw = mul nsw i32 %.sroa.speculated, %i.bp
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [2 x i8], ptr %i.bh, i64 %i.bx
  %i.bz = sext i32 %i.bp to i64
  %i.ca = shl nsw i64 %i.bz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.03781, ptr align 2 %i.by, i64 %i.ca, i1 false)
  %i.cb = load i32, ptr %11, align 4, !tbaa !25   ; 2 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [2 x i8], ptr %.03781, i64 %i.cc
  %i.ce = add nuw nsw i32 %.03682, 1              ; 2 uses
  %i.cf = load i32, ptr %8, align 4, !tbaa !25    ; 2 uses
  %i.cg = icmp slt i32 %i.ce, %i.cf
  br i1 %i.cg, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !243

._crit_edge87:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit, %_ZNK4ncnn3Mat7channelEi.exit.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
end_hunk_1

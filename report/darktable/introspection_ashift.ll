Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_ashift?download=true
inline.NumInlined: 378
inline.NumDeleted: 101
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 78
begin_hunk_0_@ri_inc:bb.a
  %i.cm = select reassoc nsz arcp contract afn i1 %i.cl, double %i.cj, double %i.ck ; 2 uses
  %i.cn = fcmp reassoc nsz arcp contract afn olt double %i.cm, f0x0010000000000000
  %spec.store.select.i.i66 = select i1 %i.cn, double f0x0010000000000000, double %i.cm
  %i.co = fdiv reassoc nsz arcp contract afn double %i.ci, %spec.store.select.i.i66
  %i.cp = fcmp reassoc nsz arcp contract afn ole double %i.co, f0x3D19000000000000 ; 2 uses
  %i.cq = fcmp reassoc nsz arcp contract afn olt double %i.cb, %i.cc
  %or.cond3138.i67 = and i1 %i.cq, %i.cp
  br i1 %or.cond3138.i67, label %inter_hi.exit, label %double_equal.exit35.i68

double_equal.exit35.i68:                          ; preds = %double_equal.exit.thread.i65, %double_equal.exit.i72
  %.0.i34.i69 = phi i1 [ true, %double_equal.exit.i72 ], [ %i.cp, %double_equal.exit.thread.i65 ]
  %i.cr = fcmp reassoc nsz arcp contract afn ogt double %i.cb, %i.cc
  %or.cond32.i70 = and i1 %i.cr, %.0.i34.i69
  br i1 %or.cond32.i70, label %inter_hi.exit, label %bb.o

bb.o:                                             ; preds = %double_equal.exit35.i68
  %i.cs = fsub reassoc nsz arcp contract afn double %i.aa, %i.ca
  %i.ct = fsub reassoc nsz arcp contract afn double %i.cc, %i.cb
  %i.cu = fmul reassoc nsz arcp contract afn double %i.ct, %i.cs
  %i.cv = fsub reassoc nsz arcp contract afn double %i.by, %i.ca
  %i.cw = fdiv reassoc nsz arcp contract afn double %i.cu, %i.cv
  %i.cx = fadd reassoc nsz arcp contract afn double %i.cw, %i.cb
  br label %inter_hi.exit

bb.p:                                             ; preds = %inter_low.exit
  %i.cy = load double, ptr %i.v, align 8, !tbaa !166 ; 6 uses
  %i.cz = load double, ptr %i.q, align 8, !tbaa !166 ; 6 uses
  %i.da = fcmp reassoc nsz arcp contract afn ogt double %i.by, %i.f
  br i1 %i.da, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.181) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.db = fcmp reassoc nsz arcp contract afn oeq double %i.by, %i.f
  br i1 %i.db, label %double_equal.exit.i82, label %double_equal.exit.thread.i75

double_equal.exit.i82:                            ; preds = %bb.r
  %i.dc = fcmp reassoc nsz arcp contract afn olt double %i.cy, %i.cz
  br i1 %i.dc, label %inter_hi.exit, label %double_equal.exit35.i78

double_equal.exit.thread.i75:                     ; preds = %bb.r
  %i.dd = fsub reassoc nsz arcp contract afn double %i.by, %i.f
  %i.de = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.dd)
  %i.df = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.by) ; 2 uses
  %i.dg = fcmp reassoc nsz arcp contract afn ogt double %i.df, %i.r
  %i.dh = select reassoc nsz arcp contract afn i1 %i.dg, double %i.df, double %i.r ; 2 uses
  %i.di = fcmp reassoc nsz arcp contract afn olt double %i.dh, f0x0010000000000000
  %spec.store.select.i.i76 = select i1 %i.di, double f0x0010000000000000, double %i.dh
  %i.dj = fdiv reassoc nsz arcp contract afn double %i.de, %spec.store.select.i.i76
  %i.dk = fcmp reassoc nsz arcp contract afn ole double %i.dj, f0x3D19000000000000 ; 2 uses
  %i.dl = fcmp reassoc nsz arcp contract afn olt double %i.cy, %i.cz
  %or.cond3138.i77 = and i1 %i.dk, %i.dl
  br i1 %or.cond3138.i77, label %inter_hi.exit, label %double_equal.exit35.i78

double_equal.exit35.i78:                          ; preds = %double_equal.exit.thread.i75, %double_equal.exit.i82
  %.0.i34.i79 = phi i1 [ true, %double_equal.exit.i82 ], [ %i.dk, %double_equal.exit.thread.i75 ]
  %i.dm = fcmp reassoc nsz arcp contract afn ogt double %i.cy, %i.cz
  %or.cond32.i80 = and i1 %i.dm, %.0.i34.i79
  br i1 %or.cond32.i80, label %inter_hi.exit, label %bb.s

bb.s:                                             ; preds = %double_equal.exit35.i78
  %i.dn = fsub reassoc nsz arcp contract afn double %i.aa, %i.by
  %i.do = fsub reassoc nsz arcp contract afn double %i.cz, %i.cy
  %i.dp = fmul reassoc nsz arcp contract afn double %i.do, %i.dn
  %i.dq = fsub reassoc nsz arcp contract afn double %i.f, %i.by
  %i.dr = fdiv reassoc nsz arcp contract afn double %i.dp, %i.dq
  %i.ds = fadd reassoc nsz arcp contract afn double %i.dr, %i.cy
  br label %inter_hi.exit

inter_hi.exit:                                    ; preds = %bb.s, %double_equal.exit35.i78, %double_equal.exit.thread.i75, %double_equal.exit.i82, %bb.o, %double_equal.exit35.i68, %double_equal.exit.thread.i65, %double_equal.exit.i72
  %storemerge = phi double [ %i.cc, %double_equal.exit.thread.i65 ], [ %i.cx, %bb.o ], [ %i.cc, %double_equal.exit.i72 ], [ %i.cb, %double_equal.exit35.i68 ], [ %i.ds, %bb.s ], [ %i.cz, %double_equal.exit.i82 ], [ %i.cy, %double_equal.exit35.i78 ], [ %i.cz, %double_equal.exit.thread.i75 ] ; 2 uses
  store double %storemerge, ptr %i.l, align 8, !tbaa !583
  %i.dt = tail call reassoc nsz arcp contract afn double @llvm.ceil.f64(double %i.bx)
  %i.du = fptosi double %i.dt to i32              ; 2 uses
  store i32 %i.du, ptr %i.k, align 4, !tbaa !315
  %i.dv = sitofp reassoc nsz arcp contract afn i32 %i.du to double
  %i.dw = fcmp reassoc nsz arcp contract afn olt double %storemerge, %i.dv
  br i1 %i.dw, label %ri_end.exit50, label %.critedge

.critedge:                                        ; preds = %ri_end.exit50, %ri_end.exit51, %inter_hi.exit, %ri_end.exit._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sinh.f64(double) #11

; Function Attrs: nounwind uwtable
define internal fastcc void @ransac(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2, i32 noundef range(i32 3, -2147483648) %3, float noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) unnamed_addr #5 {
bb.a:
  %i.a = zext nneg i32 %3 to i64                  ; 4 uses
  %i.b = shl nuw nsw i64 %i.a, 2                  ; 8 uses
  %i.c = tail call noalias ptr @malloc(i64 noundef %i.b) #33 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.c, ptr noundef nonnull align 4 dereferenceable(1) %1, i64 %i.b, i1 false)
  %i.d = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.b) #36 ; 3 uses
  %i.e = icmp samesign ugt i32 %3, 5              ; 2 uses
  br i1 %i.e, label %iter.check, label %vector.body

vector.body:                                      ; preds = %bb.a
  %broadcast.splatinsert195 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat196 = shufflevector <4 x i32> %broadcast.splatinsert195, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.f = add nsw <4 x i32> %broadcast.splat196, <i32 0, i32 -1, i32 -2, i32 -3>
  %trip.count.minus.1 = add nsw i32 %3, -2
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %trip.count.minus.1, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %.not = icmp ult <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
  %i.g = select <4 x i1> %.not, <4 x i32> splat (i32 1), <4 x i32> %i.f
  %i.h = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %i.g)
  %i.i = add nsw i32 %i.h, 250
  br label %iter.check

iter.check:                                       ; preds = %bb.a, %vector.body
  %i.j = phi i32 [ %i.i, %vector.body ], [ 650, %bb.a ] ; 2 uses
  %i.k = add nuw i32 %3, 1
  %i.l = zext i32 %i.k to i64                     ; 7 uses
  %i.m = shl nuw nsw i64 %i.l, 2
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #33 ; 7 uses
  %min.iters.check = icmp samesign ult i32 %3, 7
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check199 = icmp samesign ult i32 %3, 31
  br i1 %min.iters.check199, label %vec.epilog.ph, label %vector.ph200

vector.ph200:                                     ; preds = %vector.main.loop.iter.check
  %i.o = and i64 %i.l, 24
  %n.vec201 = and i64 %i.l, 4294967264            ; 4 uses
  br label %vector.body202

vector.body202:                                   ; preds = %vector.ph200, %vector.body202
  %index203 = phi i64 [ 0, %vector.ph200 ], [ %index.next205, %vector.body202 ] ; 2 uses
  %vec.ind204 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph200 ], [ %vec.ind.next206, %vector.body202 ] ; 5 uses
  %step.add = add <8 x i32> %vec.ind204, splat (i32 8)
  %step.add.2 = add <8 x i32> %vec.ind204, splat (i32 16)
  %step.add.3 = add <8 x i32> %vec.ind204, splat (i32 24)
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index203 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  store <8 x i32> %vec.ind204, ptr %i.p, align 4, !tbaa !17
  store <8 x i32> %step.add, ptr %i.q, align 4, !tbaa !17
  store <8 x i32> %step.add.2, ptr %i.r, align 4, !tbaa !17
  store <8 x i32> %step.add.3, ptr %i.s, align 4, !tbaa !17
  %index.next205 = add nuw i64 %index203, 32      ; 2 uses
  %vec.ind.next206 = add <8 x i32> %vec.ind204, splat (i32 32)
  %i.t = icmp eq i64 %index.next205, %n.vec201
  br i1 %i.t, label %middle.block207, label %vector.body202, !llvm.loop !585

middle.block207:                                  ; preds = %vector.body202
  %cmp.n = icmp eq i64 %n.vec201, %i.l
  br i1 %cmp.n, label %.loopexit310, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block207
  %min.epilog.iters.check = icmp eq i64 %i.o, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !229

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec201, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec208 = and i64 %i.l, 4294967288            ; 3 uses
  %i.u = trunc nuw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert209 = insertelement <8 x i32> poison, i32 %i.u, i64 0
  %broadcast.splat210 = shufflevector <8 x i32> %broadcast.splatinsert209, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = or disjoint <8 x i32> %broadcast.splat210, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index211 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next213, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind212 = phi <8 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next214, %vec.epilog.vector.body ] ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index211
  store <8 x i32> %vec.ind212, ptr %i.v, align 4, !tbaa !17
  %index.next213 = add nuw i64 %index211, 8       ; 2 uses
  %vec.ind.next214 = add <8 x i32> %vec.ind212, splat (i32 8)
  %i.w = icmp eq i64 %index.next213, %n.vec208
  br i1 %i.w, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !586

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n215 = icmp eq i64 %n.vec208, %i.l
  br i1 %cmp.n215, label %.loopexit310, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec201, %vec.epilog.iter.check ], [ %n.vec208, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.loopexit310:                                     ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block207
  %i.x = tail call noalias ptr @malloc(i64 noundef %i.b) #33 ; 7 uses
  %i.y = icmp sgt i32 %i.j, 0
  br i1 %i.y, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.loopexit310
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ab = sitofp reassoc nsz arcp contract afn i32 %5 to float
  %i.ac = sitofp reassoc nsz arcp contract afn i32 %7 to float
  %i.ad = sitofp reassoc nsz arcp contract afn i32 %6 to float
  %i.ae = sitofp reassoc nsz arcp contract afn i32 %8 to float
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ag = uitofp nneg i32 %3 to float             ; 5 uses
  %i.ah = fdiv reassoc nsz arcp contract afn float 3.300000e-01, %i.ag ; 3 uses
  %i.ai = add nsw i64 %i.a, -2                    ; 7 uses
  %min.iters.check216 = icmp ult i64 %i.ai, 4
  %min.iters.check218 = icmp ult i64 %i.ai, 16
  %i.aj = and i64 %i.ai, 12
  %n.vec220 = and i64 %i.ai, -16                  ; 4 uses
  %i.ak = or disjoint i64 %n.vec220, 2
  %broadcast.splatinsert229 = insertelement <8 x float> poison, float %4, i64 0
  %broadcast.splat230 = shufflevector <8 x float> %broadcast.splatinsert229, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert231 = insertelement <8 x float> poison, float %i.ag, i64 0
  %broadcast.splat232 = shufflevector <8 x float> %broadcast.splatinsert231, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert233 = insertelement <8 x float> poison, float %i.ah, i64 0
  %broadcast.splat234 = shufflevector <8 x float> %broadcast.splatinsert233, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.al = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat230
  %i.am = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat230
  %i.an = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat230
  %i.ao = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat230
  %cmp.n264 = icmp eq i64 %i.ai, %n.vec220
  %min.epilog.iters.check271 = icmp eq i64 %i.aj, 0
  %n.vec273 = and i64 %i.ai, -4                   ; 3 uses
  %i.ap = or disjoint i64 %n.vec273, 2
  %broadcast.splatinsert282 = insertelement <4 x float> poison, float %4, i64 0
  %broadcast.splat283 = shufflevector <4 x float> %broadcast.splatinsert282, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert284 = insertelement <4 x float> poison, float %i.ag, i64 0
  %broadcast.splat285 = shufflevector <4 x float> %broadcast.splatinsert284, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert286 = insertelement <4 x float> poison, float %i.ah, i64 0
  %broadcast.splat287 = shufflevector <4 x float> %broadcast.splatinsert286, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aq = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %broadcast.splat283
  %i.ar = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %broadcast.splat283
  %cmp.n306 = icmp eq i64 %i.ai, %n.vec273
  %i.as = insertelement <2 x float> poison, float %4, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.at
  br label %bb.b

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv
  %i.aw = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.l
  br i1 %exitcond.not, label %.loopexit310, label %vec.epilog.scalar.ph, !llvm.loop !587

._crit_edge:                                      ; preds = %bb.s, %.loopexit310
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(1) %i.c, i64 %i.b, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(1) %i.d, i64 %i.b, i1 false)
  tail call void @free(ptr noundef %i.x) #34
  tail call void @free(ptr noundef %i.n) #34
  tail call void @free(ptr noundef %i.d) #34
  tail call void @free(ptr noundef %i.c) #34
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.s
  %.0104172 = phi i32 [ 0, %.lr.ph ], [ %i.jt, %bb.s ] ; 3 uses
  %.0106171 = phi i32 [ 0, %.lr.ph ], [ %.2, %bb.s ] ; 3 uses
  %.0108170 = phi i32 [ 0, %.lr.ph ], [ %.4, %bb.s ] ; 5 uses
  %.0111169 = phi float [ 1.000000e+00, %.lr.ph ], [ %.1112, %bb.s ] ; 6 uses
  %.0113168 = phi float [ f0x3C23D70A, %.lr.ph ], [ %.2115, %bb.s ] ; 10 uses
  %.0116167 = phi float [ 0.000000e+00, %.lr.ph ], [ %.1117, %bb.s ] ; 4 uses
  %.0141166 = phi i32 [ 1, %.lr.ph ], [ %.1142, %bb.s ] ; 5 uses
  %i.ax = icmp samesign ult i32 %.0104172, 250    ; 2 uses
  %or.cond = select i1 %i.e, i1 true, i1 %i.ax
  br i1 %or.cond, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b, %.preheader
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader ], [ 0, %bb.b ] ; 3 uses
  %i.ay = tail call i32 @rand() #34
  %i.az = trunc i64 %indvars.iv.i to i32          ; 2 uses
  %i.ba = sub i32 %3, %i.az
  %i.bb = srem i32 %i.ay, %i.ba
  %i.bc = add nsw i32 %i.bb, %i.az
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bd ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i ; 2 uses
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !17
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !17
  store i32 %i.bh, ptr %i.be, align 4, !tbaa !17
  store i32 %i.bg, ptr %i.bf, align 4, !tbaa !17
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.a
  br i1 %exitcond.not.i, label %shuffle.exit, label %.preheader

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp slt i32 %.0141166, %3
  br i1 %.not.i, label %bb.d, label %shuffle.exit

bb.d:                                             ; preds = %bb.c
  %i.bi = sext i32 %.0141166 to i64               ; 2 uses
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.bi ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !17
  %i.bl = add nsw i32 %i.bk, -1                   ; 2 uses
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !17
  %i.bm = and i32 %.0141166, -2147483647
  %i.bn = icmp eq i32 %i.bm, 1
  %narrow = select i1 %i.bn, i32 %i.bl, i32 0
  %spec.select = sext i32 %narrow to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %1, i64 %spec.select ; 2 uses
  %i.bp = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bi ; 2 uses
  %i.bq = load i32, ptr %i.bo, align 4, !tbaa !17
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !17
  store i32 %i.br, ptr %i.bo, align 4, !tbaa !17
  store i32 %i.bq, ptr %i.bp, align 4, !tbaa !17
  %i.bs = load i32, ptr %i.z, align 4, !tbaa !17
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %.lr.ph.i, label %shuffle.exit

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %indvars.iv178 = phi i64 [ %indvars.iv.next179, %.lr.ph.i ], [ 1, %bb.d ] ; 2 uses
  %i.bu = phi ptr [ %i.bw, %.lr.ph.i ], [ %i.z, %bb.d ]
  %i.bv = trunc nuw nsw i64 %indvars.iv178 to i32
  store i32 %i.bv, ptr %i.bu, align 4, !tbaa !17
  %indvars.iv.next179 = add nuw nsw i64 %indvars.iv178, 1 ; 3 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next179 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !17
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %.lr.ph.i, label %shuffle.exit.loopexit175

shuffle.exit.loopexit175:                         ; preds = %.lr.ph.i
  %i.bz = trunc nuw nsw i64 %indvars.iv.next179 to i32
  br label %shuffle.exit

shuffle.exit:                                     ; preds = %.preheader, %shuffle.exit.loopexit175, %bb.d, %bb.c
  %.1142 = phi i32 [ %.0141166, %bb.c ], [ %i.bz, %shuffle.exit.loopexit175 ], [ 1, %bb.d ], [ %.0141166, %.preheader ]
  %i.ca = load i32, ptr %1, align 4, !tbaa !17
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [64 x i8], ptr %0, i64 %i.cb ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  %i.ce = load i32, ptr %i.aa, align 4, !tbaa !17
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [64 x i8], ptr %0, i64 %i.cf ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 52
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !15 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 56
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !15 ; 2 uses
  %i.cm = fmul reassoc nsz arcp contract afn float %i.cl, %i.cj
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cc, i64 56
  %i.co = load float, ptr %i.cn, align 4, !tbaa !15 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cg, i64 52
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !15 ; 2 uses
  %i.cr = fmul reassoc nsz arcp contract afn float %i.cq, %i.co
  %i.cs = fsub reassoc nsz arcp contract afn float %i.cm, %i.cr ; 3 uses
  %i.ct = load float, ptr %i.ch, align 4, !tbaa !15 ; 2 uses
  %i.cu = fmul reassoc nsz arcp contract afn float %i.ct, %i.co
  %i.cv = load float, ptr %i.cd, align 4, !tbaa !15 ; 2 uses
  %i.cw = fmul reassoc nsz arcp contract afn float %i.cv, %i.cl
  %i.cx = fsub reassoc nsz arcp contract afn float %i.cu, %i.cw ; 3 uses
  %i.cy = fmul reassoc nsz arcp contract afn float %i.cv, %i.cq
  %i.cz = fmul reassoc nsz arcp contract afn float %i.ct, %i.cj
  %i.da = fsub reassoc nsz arcp contract afn float %i.cy, %i.cz ; 3 uses
  %i.db = fmul reassoc nsz arcp contract afn float %i.cs, %i.cs
  %i.dc = fmul reassoc nsz arcp contract afn float %i.cx, %i.cx
  %i.dd = fadd reassoc nsz arcp contract afn float %i.dc, %i.db
  %i.de = fmul reassoc nsz arcp contract afn float %i.da, %i.da
  %i.df = fadd reassoc nsz arcp contract afn float %i.dd, %i.de ; 2 uses
  %i.dg = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.df)
  %i.dh = fcmp reassoc nsz arcp contract afn ogt float %i.df, 0.000000e+00
  %i.di = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.dg
  %i.dj = select reassoc nsz arcp contract afn i1 %i.dh, float %i.di, float 1.000000e+00 ; 3 uses
  %i.dk = fmul reassoc nsz arcp contract afn float %i.dj, %i.cs ; 5 uses
  %i.dl = fmul reassoc nsz arcp contract afn float %i.dj, %i.cx ; 5 uses
  %i.dm = fmul reassoc nsz arcp contract afn float %i.dj, %i.da ; 7 uses
  %i.dn = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dk)
  %i.do = fcmp reassoc nsz arcp contract afn uge float %i.dn, 1.000000e-10
  %i.dp = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dl)
  %i.dq = fcmp reassoc nsz arcp contract afn uge float %i.dp, 1.000000e-10
  %or.cond147.not174 = select i1 %i.do, i1 true, i1 %i.dq
  %i.dr = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dm)
  %i.ds = fcmp reassoc nsz arcp contract afn uge float %i.dr, 1.000000e-10
  %or.cond149 = select i1 %or.cond147.not174, i1 true, i1 %i.ds
  br i1 %or.cond149, label %vec3isnull.exit.thread, label %bb.j

vec3isnull.exit.thread:                           ; preds = %shuffle.exit
  %i.dt = fcmp reassoc nsz arcp contract afn ueq float %i.dm, 0.000000e+00
  br i1 %i.dt, label %iter.check268, label %bb.e

bb.e:                                             ; preds = %vec3isnull.exit.thread
  %i.du = fdiv reassoc nsz arcp contract afn float %i.dk, %i.dm ; 2 uses
  %i.dv = fcmp reassoc nsz arcp contract afn ult float %i.du, %i.ab
  br i1 %i.dv, label %iter.check268, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dw = fdiv reassoc nsz arcp contract afn float %i.dl, %i.dm ; 2 uses
  %i.dx = fcmp reassoc nsz arcp contract afn ult float %i.dw, %i.ac
  %i.dy = fcmp reassoc nsz arcp contract afn ugt float %i.du, %i.ad
  %or.cond125 = or i1 %i.dx, %i.dy
  %i.dz = fcmp reassoc nsz arcp contract afn ugt float %i.dw, %i.ae
  %or.cond127 = or i1 %i.dz, %or.cond125
  br i1 %or.cond127, label %iter.check268, label %bb.j

iter.check268:                                    ; preds = %bb.f, %bb.e, %vec3isnull.exit.thread
  %i.ea = fmul reassoc nsz arcp contract afn float %i.dk, %i.dk
  %i.eb = fmul reassoc nsz arcp contract afn float %i.dl, %i.dl
  %i.ec = fadd reassoc nsz arcp contract afn float %i.eb, %i.ea
  %i.ed = fmul reassoc nsz arcp contract afn float %i.dm, %i.dm
  %i.ee = fadd reassoc nsz arcp contract afn float %i.ec, %i.ed ; 2 uses
  %i.ef = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.ee)
  %i.eg = fcmp reassoc nsz arcp contract afn ogt float %i.ee, 0.000000e+00
  %i.eh = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ef
  %i.ei = select reassoc nsz arcp contract afn i1 %i.eg, float %i.eh, float 1.000000e+00 ; 3 uses
  store i32 1, ptr %i.x, align 4, !tbaa !17
  store i32 1, ptr %i.af, align 4, !tbaa !17
  %factor.op.fmul = fmul reassoc nsz arcp contract afn float %i.dm, %i.ei ; 3 uses
end_hunk_0

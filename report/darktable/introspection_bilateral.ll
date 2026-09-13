Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_bilateral?download=true
inline.NumInlined: 94
inline.NumDeleted: 50
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 40
begin_hunk_0_@dt_module_dt_version
define noundef i32 @dt_module_dt_version() local_unnamed_addr #0 {
bb.a:
  ret i32 25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @dt_module_mod_version() local_unnamed_addr #0 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define ptr @name() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @gettext(ptr noundef nonnull @.str) #17
  ret ptr %i.a
}

; Function Attrs: nounwind
declare ptr @gettext(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define ptr @aliases() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @gettext(ptr noundef nonnull @.str.1) #17
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_group() local_unnamed_addr #0 {
bb.a:
  ret i32 40
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @flags() local_unnamed_addr #0 {
bb.a:
  ret i32 18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_colorspace(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  ret i32 2
}

; Function Attrs: mustprogress uwtable
define ptr @description(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @gettext(ptr noundef nonnull @.str.2) #17
  %i.b = tail call ptr @gettext(ptr noundef nonnull @.str.3) #17
  %i.c = tail call ptr @gettext(ptr noundef nonnull @.str.4) #17
  %i.d = tail call ptr @gettext(ptr noundef nonnull @.str.5) #17
  %i.e = tail call ptr @gettext(ptr noundef nonnull @.str.4) #17
  %i.f = tail call ptr @dt_iop_set_description(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e)
  ret ptr %i.f
}

declare ptr @dt_iop_set_description(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @process(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [196 x float], align 16           ; 3 uses
  %6 = alloca %class.PermutohedralLattice, align 8 ; 10 uses
  %i.b = alloca [5 x float], align 16             ; 8 uses
  %i.c = alloca [4 x float], align 16             ; 7 uses
  %i.d = alloca [4 x float], align 16             ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.f = load i32, ptr %i.e, align 4, !tbaa !151
  %i.g = tail call i32 @dt_iop_have_required_input_format(i32 noundef 4, ptr noundef %0, i32 noundef %i.f, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !32   ; 7 uses
  %i.j = sext i32 %i.i to i64                     ; 10 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 4 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !33   ; 3 uses
  %i.m = sext i32 %i.l to i64                     ; 5 uses
  %i.n = mul nsw i64 %i.m, %i.j                   ; 4 uses
  %i.o = icmp ugt i64 %i.n, 2147483647
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = tail call ptr @gettext(ptr noundef nonnull @.str.6) #17
  %i.q = tail call ptr @gettext(ptr noundef nonnull @.str.7) #17
  tail call void @dt_iop_set_module_trouble_message(ptr noundef %0, ptr noundef %i.p, ptr noundef %i.q, ptr noundef nonnull @.str.8)
  %i.r = load i32, ptr %i.h, align 4, !tbaa !32
  %i.s = sext i32 %i.r to i64
  %i.t = load i32, ptr %i.k, align 4, !tbaa !33
  %i.u = sext i32 %i.t to i64
  %i.v = shl nsw i64 %i.s, 2
  %i.w = mul i64 %i.v, %i.u
  tail call void @dt_iop_image_copy(ptr noundef %3, ptr noundef %2, i64 noundef %i.w)
  br label %bb.s

bb.d:                                             ; preds = %bb.b
  tail call void @dt_iop_set_module_trouble_message(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef null)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load ptr, ptr %i.x, align 16, !tbaa !34  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aa = load float, ptr %i.z, align 4, !tbaa !35
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ac = load float, ptr %i.ab, align 8, !tbaa !36
  %i.ad = load <2 x float>, ptr %i.y, align 4, !tbaa !37
  %i.ae = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ag = fmul reassoc nsz arcp contract afn <2 x float> %i.ad, %i.af
  %i.ah = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aj = fdiv reassoc nsz arcp contract afn <2 x float> %i.ag, %i.ai ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.al = load float, ptr %i.ak, align 4, !tbaa !37 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.an = load <2 x float>, ptr %i.am, align 4, !tbaa !37 ; 4 uses
  %i.ao = extractelement <2 x float> %i.aj, i64 0
  %i.ap = extractelement <2 x float> %i.aj, i64 1
  %i.aq = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ao, float %i.ap) ; 2 uses
  %i.ar = fcmp reassoc nsz arcp contract afn olt float %i.aq, 1.000000e-01
  br i1 %i.ar, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.as = load i32, ptr %i.h, align 4, !tbaa !32
  %i.at = sext i32 %i.as to i64
  %i.au = load i32, ptr %i.k, align 4, !tbaa !33
  %i.av = sext i32 %i.au to i64
  %i.aw = shl nsw i64 %i.at, 2
  %i.ax = mul i64 %i.aw, %i.av
  tail call void @dt_iop_image_copy(ptr noundef %3, ptr noundef %2, i64 noundef %i.ax)
  br label %bb.s

bb.f:                                             ; preds = %bb.d
  %i.ay = fmul reassoc nsz arcp contract afn float %i.aq, 3.000000e+00
  %i.az = fadd reassoc nsz arcp contract afn float %i.ay, 1.000000e+00
  %i.ba = fptosi float %i.az to i32               ; 4 uses
  %i.bb = load i32, ptr %i.h, align 4, !tbaa !32  ; 2 uses
  %i.bc = load i32, ptr %i.k, align 4, !tbaa !33  ; 2 uses
  %. = tail call i32 @llvm.smin.i32(i32 %i.bb, i32 %i.bc)
  %i.bd = shl nuw nsw i32 %i.ba, 1
  %i.be = sub nsw i32 %., %i.bd                   ; 3 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.be, i32 %i.ba) ; 16 uses
  %i.bf = icmp slt i32 %spec.select, 1
  br i1 %i.bf, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !152
  %i.bi = getelementptr i8, ptr %i.bh, i64 644
  %.val = load i32, ptr %i.bi, align 4, !tbaa !181
  %i.bj = and i32 %.val, 8
  %i.bk = icmp samesign ult i32 %spec.select, 7   ; 2 uses
  %i.bl = icmp ne i32 %i.bj, 0
  %or.cond = and i1 %i.bk, %i.bl
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bm = sext i32 %i.bb to i64
  %i.bn = sext i32 %i.bc to i64
  %i.bo = shl nsw i64 %i.bm, 2
  %i.bp = mul i64 %i.bo, %i.bn
  tail call void @dt_iop_image_copy(ptr noundef %3, ptr noundef %2, i64 noundef %i.bp)
  br label %bb.s

bb.i:                                             ; preds = %bb.g
  br i1 %i.bk, label %.preheader273.lr.ph, label %.preheader276.preheader

.preheader276.preheader:                          ; preds = %bb.i
  %i.bq = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.aj ; 2 uses
  %i.br = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bs = insertelement <2 x float> %i.br, float %i.al, i64 0
  %i.bt = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.bs ; 3 uses
  %i.bu = extractelement <2 x float> %i.an, i64 1
  %i.bv = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.bu ; 2 uses
  %i.bw = uitofp reassoc nsz arcp contract afn i64 %i.m to float
  %i.bx = uitofp reassoc nsz arcp contract afn i64 %i.j to float
  %i.by = fmul reassoc nnan nsz arcp contract afn float %i.bw, %i.bx
  %i.bz = extractelement <2 x float> %i.bq, i64 0 ; 2 uses
  %i.ca = fmul reassoc nsz arcp contract afn float %i.by, %i.bz
  %i.cb = extractelement <2 x float> %i.bq, i64 1 ; 2 uses
  %i.cc = fmul reassoc nsz arcp contract afn float %i.ca, %i.cb
  %i.cd = extractelement <2 x float> %i.bt, i64 0
  %i.ce = fmul reassoc nsz arcp contract afn float %i.cc, %i.cd
  %i.cf = extractelement <2 x float> %i.bt, i64 1
  %i.cg = fmul reassoc nsz arcp contract afn float %i.ce, %i.cf
  %i.ch = fmul reassoc nsz arcp contract afn float %i.cg, %i.bv
  %i.ci = fptoui float %i.ch to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @_ZN20PermutohedralLatticeILi5ELi4EEC2Emmm(ptr noundef nonnull align 8 dereferenceable(48) %6, i64 noundef %i.n, i64 noundef 1, i64 noundef %i.ci)
  %.not333 = icmp eq i32 %i.l, 0
  br i1 %.not333, label %._crit_edge283.split, label %.lr.ph282

.preheader273.lr.ph:                              ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.cj = shl nuw nsw i32 %spec.select, 1
  %i.ck = or disjoint i32 %i.cj, 1                ; 4 uses
  %i.cl = mul nuw nsw i32 %i.ck, %spec.select
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cm
  %i.co = zext nneg i32 %spec.select to i64       ; 7 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.co ; 3 uses
  %i.cq = fmul reassoc nsz arcp contract afn float %i.al, %i.al
  %i.cr = fmul reassoc nsz arcp contract afn <2 x float> %i.an, %i.an
  %i.cs = sub nsw i32 0, %spec.select             ; 3 uses
  %foldExtExtBinop = fmul reassoc nsz arcp contract afn <2 x float> %i.aj, %i.aj ; 3 uses
  %i.ct = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.cu = sext i32 %i.cs to i64                   ; 8 uses
  %i.cv = add nuw nsw i32 %spec.select, 1         ; 2 uses
  %i.cw = zext nneg i32 %i.ck to i64
  %smin = tail call i32 @llvm.smin.i32(i32 %i.ba, i32 %i.be)
  %i.cx = add i32 %spec.select, %smin             ; 3 uses
  %i.cy = zext i32 %i.cx to i64
  %i.cz = add nuw nsw i64 %i.cy, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.cx, 3
  %min.iters.check439 = icmp ult i32 %i.cx, 31
  %i.da = and i64 %i.cz, 28
  %n.vec = and i64 %i.cz, 8589934560              ; 4 uses
  %i.db = add nsw i64 %n.vec, %i.cu               ; 2 uses
  %broadcast.splat441 = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert442 = insertelement <8 x i64> poison, i64 %i.cu, i64 0
  %broadcast.splat443 = shufflevector <8 x i64> %broadcast.splatinsert442, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nsw <8 x i64> %broadcast.splat443, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %i.dc = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat441
  %i.dd = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat441
  %i.de = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat441
  %i.df = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat441
  %cmp.n = icmp eq i64 %i.cz, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.da, 0
  %n.vec449 = and i64 %i.cz, 8589934588           ; 3 uses
  %i.dg = add nsw i64 %n.vec449, %i.cu
  %broadcast.splat453 = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <4 x i32> zeroinitializer
  %i.dh = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %broadcast.splat453
  %cmp.n462 = icmp eq i64 %i.cz, %n.vec449
  %i.di = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ct
  br label %iter.check

iter.check:                                       ; preds = %.preheader273.lr.ph, %._crit_edge292
  %indvars.iv349 = phi i64 [ %i.cu, %.preheader273.lr.ph ], [ %indvars.iv.next350, %._crit_edge292 ] ; 4 uses
  %.0233295 = phi float [ 0.000000e+00, %.preheader273.lr.ph ], [ %.lcssa438, %._crit_edge292 ] ; 3 uses
  %i.dj = mul nsw i64 %indvars.iv349, %indvars.iv349 ; 3 uses
  %i.dk = mul nsw i64 %indvars.iv349, %i.cw
  %invariant.gep = getelementptr [4 x i8], ptr %i.cp, i64 %i.dk ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check439, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dl = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.0233295, i64 0
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.dj, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.gep520 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.cu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 6 uses
  %vec.phi = phi <8 x float> [ %i.dl, %vector.ph ], [ %i.ev, %vector.body ]
  %vec.phi444.a = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.ew, %vector.body ]
  %vec.phi445.a = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.ex, %vector.body ]
  %vec.phi446 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.ey, %vector.body ]
  %step.add = add nsw <8 x i64> %vec.ind, splat (i64 8) ; 2 uses
  %step.add.2 = add nsw <8 x i64> %vec.ind, splat (i64 16) ; 2 uses
  %step.add.3 = add nsw <8 x i64> %vec.ind, splat (i64 24) ; 2 uses
  %i.dm = mul nsw <8 x i64> %vec.ind, %vec.ind
  %i.dn = mul nsw <8 x i64> %step.add, %step.add
  %i.do = mul nsw <8 x i64> %step.add.2, %step.add.2
  %i.dp = mul nsw <8 x i64> %step.add.3, %step.add.3
  %i.dq = add nuw nsw <8 x i64> %broadcast.splat, %i.dm
  %i.dr = add nuw nsw <8 x i64> %broadcast.splat, %i.dn
  %i.ds = add nuw nsw <8 x i64> %broadcast.splat, %i.do
  %i.dt = add nuw nsw <8 x i64> %broadcast.splat, %i.dp
  %i.du = trunc <8 x i64> %i.dq to <8 x i32>
  %i.dv = trunc <8 x i64> %i.dr to <8 x i32>
  %i.dw = trunc <8 x i64> %i.ds to <8 x i32>
  %i.dx = trunc <8 x i64> %i.dt to <8 x i32>
  %i.dy = sub <8 x i32> zeroinitializer, %i.du
  %i.dz = sub <8 x i32> zeroinitializer, %i.dv
  %i.ea = sub <8 x i32> zeroinitializer, %i.dw
  %i.eb = sub <8 x i32> zeroinitializer, %i.dx
  %i.ec = sitofp reassoc nsz arcp contract afn <8 x i32> %i.dy to <8 x float>
  %i.ed = sitofp reassoc nsz arcp contract afn <8 x i32> %i.dz to <8 x float>
  %i.ee = sitofp reassoc nsz arcp contract afn <8 x i32> %i.ea to <8 x float>
  %i.ef = sitofp reassoc nsz arcp contract afn <8 x i32> %i.eb to <8 x float>
  %i.eg = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ec, splat (float 5.000000e-01)
  %i.eh = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ed, splat (float 5.000000e-01)
  %i.ei = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ee, splat (float 5.000000e-01)
  %i.ej = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ef, splat (float 5.000000e-01)
  %i.ek = fmul reassoc nsz arcp contract afn <8 x float> %i.eg, %i.dc
  %i.el = fmul reassoc nsz arcp contract afn <8 x float> %i.eh, %i.dd
  %i.em = fmul reassoc nsz arcp contract afn <8 x float> %i.ei, %i.de
  %i.en = fmul reassoc nsz arcp contract afn <8 x float> %i.ej, %i.df
  %i.eo = tail call reassoc nsz arcp contract afn <8 x float> @llvm.exp.v8f32(<8 x float> %i.ek) ; 2 uses
  %i.ep = tail call reassoc nsz arcp contract afn <8 x float> @llvm.exp.v8f32(<8 x float> %i.el) ; 2 uses
  %i.eq = tail call reassoc nsz arcp contract afn <8 x float> @llvm.exp.v8f32(<8 x float> %i.em) ; 2 uses
  %i.er = tail call reassoc nsz arcp contract afn <8 x float> @llvm.exp.v8f32(<8 x float> %i.en) ; 2 uses
  %gep521 = getelementptr [4 x i8], ptr %invariant.gep520, i64 %index ; 4 uses
  %i.es = getelementptr i8, ptr %gep521, i64 32
  %i.et = getelementptr i8, ptr %gep521, i64 64
  %i.eu = getelementptr i8, ptr %gep521, i64 96
  store <8 x float> %i.eo, ptr %gep521, align 4, !tbaa !37
  store <8 x float> %i.ep, ptr %i.es, align 4, !tbaa !37
  store <8 x float> %i.eq, ptr %i.et, align 4, !tbaa !37
  store <8 x float> %i.er, ptr %i.eu, align 4, !tbaa !37
  %i.ev = fadd reassoc nsz arcp contract afn <8 x float> %i.eo, %vec.phi ; 2 uses
  %i.ew = fadd reassoc nsz arcp contract afn <8 x float> %i.ep, %vec.phi444.a ; 2 uses
  %i.ex = fadd reassoc nsz arcp contract afn <8 x float> %i.eq, %vec.phi445.a ; 2 uses
  %i.ey = fadd reassoc nsz arcp contract afn <8 x float> %i.er, %vec.phi446 ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add nsw <8 x i64> %vec.ind, splat (i64 32)
  %i.ez = icmp eq i64 %index.next, %n.vec
  br i1 %i.ez, label %middle.block, label %vector.body, !llvm.loop !120

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd reassoc nsz arcp contract afn <8 x float> %i.ew, %i.ev
  %bin.rdx447.a = fadd reassoc nsz arcp contract afn <8 x float> %i.ex, %bin.rdx
  %bin.rdx448 = fadd reassoc nsz arcp contract afn <8 x float> %i.ey, %bin.rdx447.a
  %i.fa = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx448) ; 3 uses
  br i1 %cmp.n, label %._crit_edge292, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !182

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i64 [ %i.db, %vec.epilog.iter.check ], [ %i.cu, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.fa, %vec.epilog.iter.check ], [ %.0233295, %vector.main.loop.iter.check ]
  %i.fb = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx, i64 0
  %broadcast.splatinsert450 = insertelement <4 x i64> poison, i64 %i.dj, i64 0
  %broadcast.splat451 = shufflevector <4 x i64> %broadcast.splatinsert450, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert454 = insertelement <4 x i64> poison, i64 %bc.resume.val, i64 0
  %broadcast.splat455 = shufflevector <4 x i64> %broadcast.splatinsert454, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction456 = add nsw <4 x i64> %broadcast.splat455, <i64 0, i64 1, i64 2, i64 3>
  %invariant.gep522 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.cu
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index457 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next460, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind458 = phi <4 x i64> [ %induction456, %vec.epilog.ph ], [ %vec.ind.next461, %vec.epilog.vector.body ] ; 3 uses
  %vec.phi459 = phi <4 x float> [ %i.fb, %vec.epilog.ph ], [ %i.fk, %vec.epilog.vector.body ]
  %i.fc = mul nsw <4 x i64> %vec.ind458, %vec.ind458
  %i.fd = add nuw nsw <4 x i64> %broadcast.splat451, %i.fc
  %i.fe = trunc <4 x i64> %i.fd to <4 x i32>
  %i.ff = sub <4 x i32> zeroinitializer, %i.fe
  %i.fg = sitofp reassoc nsz arcp contract afn <4 x i32> %i.ff to <4 x float>
  %i.fh = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.fg, splat (float 5.000000e-01)
  %i.fi = fmul reassoc nsz arcp contract afn <4 x float> %i.fh, %i.dh
  %i.fj = tail call reassoc nsz arcp contract afn <4 x float> @llvm.exp.v4f32(<4 x float> %i.fi) ; 2 uses
  %gep523 = getelementptr [4 x i8], ptr %invariant.gep522, i64 %index457
  store <4 x float> %i.fj, ptr %gep523, align 4, !tbaa !37
  %i.fk = fadd reassoc nsz arcp contract afn <4 x float> %i.fj, %vec.phi459 ; 2 uses
  %index.next460 = add nuw i64 %index457, 4       ; 2 uses
  %vec.ind.next461 = add nsw <4 x i64> %vec.ind458, splat (i64 4)
  %i.fl = icmp eq i64 %index.next460, %n.vec449
  br i1 %i.fl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !121

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.fm = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.fk) ; 2 uses
  br i1 %cmp.n462, label %._crit_edge292, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.cu, %iter.check ], [ %i.db, %vec.epilog.iter.check ], [ %i.dg, %vec.epilog.middle.block ]
  %.1234289.ph = phi float [ %.0233295, %iter.check ], [ %i.fa, %vec.epilog.iter.check ], [ %i.fm, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.preheader271.lr.ph:                              ; preds = %._crit_edge292
  %i.fn = sext i32 %i.cs to i64                   ; 6 uses
  %i.fo = add nuw nsw i32 %spec.select, 1         ; 2 uses
  %i.fp = zext nneg i32 %i.ck to i64
  %smin465 = tail call i32 @llvm.smin.i32(i32 %i.ba, i32 %i.be)
  %i.fq = add i32 %spec.select, %smin465          ; 3 uses
  %i.fr = zext i32 %i.fq to i64
  %i.fs = add nuw nsw i64 %i.fr, 1                ; 5 uses
  %min.iters.check466 = icmp ult i32 %i.fq, 3
  %min.iters.check468 = icmp ult i32 %i.fq, 31
  %i.ft = and i64 %i.fs, 28
  %n.vec470 = and i64 %i.fs, 8589934560           ; 4 uses
  %i.fu = add nsw i64 %n.vec470, %i.fn
  %broadcast.splatinsert471 = insertelement <8 x float> poison, float %.lcssa438, i64 0
  %broadcast.splat472 = shufflevector <8 x float> %broadcast.splatinsert471, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.fv = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat472
  %i.fw = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat472
  %i.fx = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat472
  %i.fy = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat472
  %cmp.n480 = icmp eq i64 %i.fs, %n.vec470
  %min.epilog.iters.check486 = icmp eq i64 %i.ft, 0
  %n.vec488 = and i64 %i.fs, 8589934588           ; 3 uses
  %i.fz = add nsw i64 %n.vec488, %i.fn
  %broadcast.splatinsert489 = insertelement <4 x float> poison, float %.lcssa438, i64 0
  %broadcast.splat490 = shufflevector <4 x float> %broadcast.splatinsert489, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ga = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %broadcast.splat490
  %cmp.n496 = icmp eq i64 %i.fs, %n.vec488
  %i.gb = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %.lcssa438
  br label %iter.check483

._crit_edge292:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa438 = phi float [ %i.fm, %vec.epilog.middle.block ], [ %i.fa, %middle.block ], [ %i.gk, %vec.epilog.scalar.ph ] ; 4 uses
  %indvars.iv.next350 = add nsw i64 %indvars.iv349, 1 ; 2 uses
  %lftr.wideiv352 = trunc i64 %indvars.iv.next350 to i32
  %exitcond353.not = icmp eq i32 %i.cv, %lftr.wideiv352
  br i1 %exitcond353.not, label %.preheader271.lr.ph, label %iter.check, !llvm.loop !122

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %.1234289 = phi float [ %i.gk, %vec.epilog.scalar.ph ], [ %.1234289.ph, %vec.epilog.scalar.ph.preheader ]
  %i.gc = mul nsw i64 %indvars.iv, %indvars.iv
  %i.gd = add nuw nsw i64 %i.dj, %i.gc
  %i.ge = trunc i64 %i.gd to i32
  %i.gf = sub i32 0, %i.ge
  %i.gg = sitofp reassoc nsz arcp contract afn i32 %i.gf to float
  %i.gh = fmul reassoc nnan nsz arcp contract afn float %i.gg, 5.000000e-01
  %i.gi = fmul reassoc nsz arcp contract afn float %i.gh, %i.di
  %i.gj = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.gi) ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store float %i.gj, ptr %gep, align 4, !tbaa !37
  %i.gk = fadd reassoc nsz arcp contract afn float %i.gj, %.1234289 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond348.not = icmp eq i32 %i.cv, %lftr.wideiv
  br i1 %exitcond348.not, label %._crit_edge292, label %vec.epilog.scalar.ph, !llvm.loop !123

iter.check483:                                    ; preds = %.preheader271.lr.ph, %._crit_edge301
  %indvars.iv359 = phi i64 [ %i.fn, %.preheader271.lr.ph ], [ %indvars.iv.next360, %._crit_edge301 ] ; 2 uses
  %i.gl = mul nsw i64 %indvars.iv359, %i.fp
  %invariant.gep429 = getelementptr [4 x i8], ptr %i.cp, i64 %i.gl ; 3 uses
  br i1 %min.iters.check466, label %vec.epilog.scalar.ph484.preheader, label %vector.main.loop.iter.check467

vector.main.loop.iter.check467:                   ; preds = %iter.check483
  br i1 %min.iters.check468, label %vec.epilog.ph487, label %vector.ph469

vector.ph469:                                     ; preds = %vector.main.loop.iter.check467
  %invariant.gep524 = getelementptr [4 x i8], ptr %invariant.gep429, i64 %i.fn
  br label %vector.body473

vector.body473:                                   ; preds = %vector.body473, %vector.ph469
  %index474 = phi i64 [ 0, %vector.ph469 ], [ %index.next478, %vector.body473 ] ; 2 uses
  %gep525 = getelementptr [4 x i8], ptr %invariant.gep524, i64 %index474 ; 5 uses
  %i.gm = getelementptr i8, ptr %gep525, i64 32   ; 2 uses
  %i.gn = getelementptr i8, ptr %gep525, i64 64   ; 2 uses
  %i.go = getelementptr i8, ptr %gep525, i64 96   ; 2 uses
  %wide.load = load <8 x float>, ptr %gep525, align 4, !tbaa !37
  %wide.load475.a = load <8 x float>, ptr %i.gm, align 4, !tbaa !37
  %wide.load476.a = load <8 x float>, ptr %i.gn, align 4, !tbaa !37
  %wide.load477 = load <8 x float>, ptr %i.go, align 4, !tbaa !37
  %i.gp = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, %i.fv
  %i.gq = fmul reassoc nsz arcp contract afn <8 x float> %wide.load475.a, %i.fw
  %i.gr = fmul reassoc nsz arcp contract afn <8 x float> %wide.load476.a, %i.fx
  %i.gs = fmul reassoc nsz arcp contract afn <8 x float> %wide.load477, %i.fy
  store <8 x float> %i.gp, ptr %gep525, align 4, !tbaa !37
  store <8 x float> %i.gq, ptr %i.gm, align 4, !tbaa !37
  store <8 x float> %i.gr, ptr %i.gn, align 4, !tbaa !37
  store <8 x float> %i.gs, ptr %i.go, align 4, !tbaa !37
  %index.next478 = add nuw i64 %index474, 32      ; 2 uses
  %i.gt = icmp eq i64 %index.next478, %n.vec470
  br i1 %i.gt, label %middle.block479, label %vector.body473, !llvm.loop !124

middle.block479:                                  ; preds = %vector.body473
  br i1 %cmp.n480, label %._crit_edge301, label %vec.epilog.iter.check485

vec.epilog.iter.check485:                         ; preds = %middle.block479
  br i1 %min.epilog.iters.check486, label %vec.epilog.scalar.ph484.preheader, label %vec.epilog.ph487, !prof !182

vec.epilog.ph487:                                 ; preds = %vector.main.loop.iter.check467, %vec.epilog.iter.check485
  %vec.epilog.resume.val481 = phi i64 [ %n.vec470, %vec.epilog.iter.check485 ], [ 0, %vector.main.loop.iter.check467 ]
  %invariant.gep526 = getelementptr [4 x i8], ptr %invariant.gep429, i64 %i.fn
  br label %vec.epilog.vector.body491

vec.epilog.vector.body491:                        ; preds = %vec.epilog.vector.body491, %vec.epilog.ph487
  %index492 = phi i64 [ %vec.epilog.resume.val481, %vec.epilog.ph487 ], [ %index.next494, %vec.epilog.vector.body491 ] ; 2 uses
  %gep527 = getelementptr [4 x i8], ptr %invariant.gep526, i64 %index492 ; 2 uses
  %wide.load493 = load <4 x float>, ptr %gep527, align 4, !tbaa !37
  %i.gu = fmul reassoc nsz arcp contract afn <4 x float> %wide.load493, %i.ga
  store <4 x float> %i.gu, ptr %gep527, align 4, !tbaa !37
  %index.next494 = add nuw i64 %index492, 4       ; 2 uses
  %i.gv = icmp eq i64 %index.next494, %n.vec488
  br i1 %i.gv, label %vec.epilog.middle.block495, label %vec.epilog.vector.body491, !llvm.loop !125

vec.epilog.middle.block495:                       ; preds = %vec.epilog.vector.body491
  br i1 %cmp.n496, label %._crit_edge301, label %vec.epilog.scalar.ph484.preheader

vec.epilog.scalar.ph484.preheader:                ; preds = %iter.check483, %vec.epilog.iter.check485, %vec.epilog.middle.block495
  %indvars.iv354.ph = phi i64 [ %i.fn, %iter.check483 ], [ %i.fu, %vec.epilog.iter.check485 ], [ %i.fz, %vec.epilog.middle.block495 ]
  br label %vec.epilog.scalar.ph484

.preheader270:                                    ; preds = %._crit_edge301
  %.not336 = icmp eq i32 %i.l, 0
  br i1 %.not336, label %._crit_edge332, label %.lr.ph331

.lr.ph331:                                        ; preds = %.preheader270
  %i.gw = shl nsw i64 %i.j, 2
  %i.gx = sub nsw i64 %i.m, %i.co
  %.not337 = icmp eq i32 %i.i, 0
  %i.gy = sub nsw i64 %i.j, %i.co                 ; 3 uses
  %i.gz = icmp ugt i64 %i.gy, %i.co
  %i.ha = sext i32 %i.cs to i64                   ; 3 uses
  %i.hb = zext nneg i32 %i.ck to i64
  %.not338 = icmp ugt i32 %spec.select, %i.i
  %smax368 = tail call i64 @llvm.smax.i64(i64 %i.ha, i64 %i.co) ; 2 uses
  %xtraiter = and i64 %i.j, 7
  %i.hc = icmp ult i32 %i.i, 8
  %unroll_iter = and i64 %i.j, -8
  %i.hd = and i32 %i.i, 7
  %lcmp.mod.not = icmp eq i32 %i.hd, 0
  %i.he = and i32 %i.i, 7
  %lcmp.mod509 = icmp ne i32 %i.he, 0
  %exitcond365.not = icmp eq i32 %spec.select, 1
  %exitcond365.not.1 = icmp eq i32 %spec.select, 2
  %exitcond365.not.2 = icmp eq i32 %spec.select, 3
  %exitcond365.not.3 = icmp eq i32 %spec.select, 4
  %exitcond365.not.4 = icmp eq i32 %spec.select, 5
  %i.hf = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.cq
  %i.hg = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.cr
  br label %bb.j

._crit_edge301:                                   ; preds = %vec.epilog.scalar.ph484, %vec.epilog.middle.block495, %middle.block479
  %indvars.iv.next360 = add nsw i64 %indvars.iv359, 1 ; 2 uses
  %lftr.wideiv362 = trunc i64 %indvars.iv.next360 to i32
  %exitcond363.not = icmp eq i32 %i.fo, %lftr.wideiv362
  br i1 %exitcond363.not, label %.preheader270, label %iter.check483, !llvm.loop !126

vec.epilog.scalar.ph484:                          ; preds = %vec.epilog.scalar.ph484.preheader, %vec.epilog.scalar.ph484
  %indvars.iv354 = phi i64 [ %indvars.iv.next355, %vec.epilog.scalar.ph484 ], [ %indvars.iv354.ph, %vec.epilog.scalar.ph484.preheader ] ; 2 uses
  %gep430 = getelementptr [4 x i8], ptr %invariant.gep429, i64 %indvars.iv354 ; 2 uses
  %i.hh = load float, ptr %gep430, align 4, !tbaa !37
  %i.hi = fmul reassoc nsz arcp contract afn float %i.hh, %i.gb
  store float %i.hi, ptr %gep430, align 4, !tbaa !37
  %indvars.iv.next355 = add nsw i64 %indvars.iv354, 1 ; 2 uses
  %lftr.wideiv357 = trunc i64 %indvars.iv.next355 to i32
  %exitcond358.not = icmp eq i32 %i.fo, %lftr.wideiv357
  br i1 %exitcond358.not, label %._crit_edge301, label %vec.epilog.scalar.ph484, !llvm.loop !127

._crit_edge332:                                   ; preds = %.loopexit, %.preheader270
  tail call void @llvm.x86.sse.sfence()
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.s

bb.j:                                             ; preds = %.lr.ph331, %.loopexit
  %.0228330 = phi i64 [ 0, %.lr.ph331 ], [ %i.lc, %.loopexit ] ; 4 uses
  %i.hj = mul i64 %i.gw, %.0228330                ; 2 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.hj ; 16 uses
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.hj ; 17 uses
  %i.hm = icmp uge i64 %.0228330, %i.co
  %.not250 = icmp ult i64 %.0228330, %i.gx
  %or.cond260 = select i1 %i.hm, i1 %.not250, i1 false
  br i1 %or.cond260, label %.preheader267, label %.preheader268

.preheader268:                                    ; preds = %bb.j
  br i1 %.not337, label %.loopexit, label %.lr.ph305.preheader

.lr.ph305.preheader:                              ; preds = %.preheader268
  br i1 %i.hc, label %.lr.ph305.epil.preheader, label %.lr.ph305

.lr.ph305:                                        ; preds = %.lr.ph305.preheader, %.lr.ph305
  %.0225304 = phi i64 [ %i.is, %.lr.ph305 ], [ 0, %.lr.ph305.preheader ] ; 9 uses
  %niter = phi i64 [ %niter.next.7, %.lr.ph305 ], [ 0, %.lr.ph305.preheader ]
  %i.hn = shl i64 %.0225304, 2                    ; 2 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.hn
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.hn
  %.val263 = load <4 x float>, ptr %i.hp, align 16, !tbaa !46
  store <4 x float> %.val263, ptr %i.ho, align 16, !tbaa !46, !alias.scope !183, !nontemporal !184
  %i.hq = shl i64 %.0225304, 2
  %i.hr = or disjoint i64 %i.hq, 4                ; 2 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.hr
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.hr
  %.val263.1 = load <4 x float>, ptr %i.ht, align 16, !tbaa !46
  store <4 x float> %.val263.1, ptr %i.hs, align 16, !tbaa !46, !alias.scope !183, !nontemporal !184
  %i.hu = shl i64 %.0225304, 2
  %i.hv = or disjoint i64 %i.hu, 8                ; 2 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.hv
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.hv
  %.val263.2 = load <4 x float>, ptr %i.hx, align 16, !tbaa !46
  store <4 x float> %.val263.2, ptr %i.hw, align 16, !tbaa !46, !alias.scope !183, !nontemporal !184
  %i.hy = shl i64 %.0225304, 2
  %i.hz = or disjoint i64 %i.hy, 12               ; 2 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.hz
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.hz
  %.val263.3 = load <4 x float>, ptr %i.ib, align 16, !tbaa !46
  store <4 x float> %.val263.3, ptr %i.ia, align 16, !tbaa !46, !alias.scope !183, !nontemporal !184
  %i.ic = shl i64 %.0225304, 2
  %i.id = or disjoint i64 %i.ic, 16               ; 2 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.id
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.id
  %.val263.4 = load <4 x float>, ptr %i.if, align 16, !tbaa !46
  store <4 x float> %.val263.4, ptr %i.ie, align 16, !tbaa !46, !alias.scope !183, !nontemporal !184
  %i.ig = shl i64 %.0225304, 2
  %i.ih = or disjoint i64 %i.ig, 20               ; 2 uses
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.ih
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.ih
  %.val263.5 = load <4 x float>, ptr %i.ij, align 16, !tbaa !46
  store <4 x float> %.val263.5, ptr %i.ii, align 16, !tbaa !46, !alias.scope !183, !nontemporal !184
  %i.ik = shl i64 %.0225304, 2
  %i.il = or disjoint i64 %i.ik, 24               ; 2 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.il
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.il
  %.val263.6 = load <4 x float>, ptr %i.in, align 16, !tbaa !46
  store <4 x float> %.val263.6, ptr %i.im, align 16, !tbaa !46, !alias.scope !183, !nontemporal !184
  %i.io = shl i64 %.0225304, 2
  %i.ip = or disjoint i64 %i.io, 28               ; 2 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.ip
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.ip
  %.val263.7 = load <4 x float>, ptr %i.ir, align 16, !tbaa !46
  store <4 x float> %.val263.7, ptr %i.iq, align 16, !tbaa !46, !alias.scope !183, !nontemporal !184
  %i.is = add nuw i64 %.0225304, 8                ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.loopexit499.unr-lcssa, label %.lr.ph305, !llvm.loop !130

.preheader266:                                    ; preds = %.preheader267.5, %.preheader267.4, %.preheader267.3, %.preheader267.2, %.preheader267.1, %.preheader267
  %.lcssa = phi ptr [ %i.it, %.preheader267 ], [ %i.iv, %.preheader267.1 ], [ %i.ix, %.preheader267.2 ], [ %i.iz, %.preheader267.3 ], [ %i.jb, %.preheader267.4 ], [ %i.jd, %.preheader267.5 ] ; 2 uses
  br i1 %i.gz, label %.preheader.preheader, label %.preheader265

.preheader267:                                    ; preds = %bb.j
  %.0226.val = load <4 x float>, ptr %i.hk, align 16, !tbaa !46
  store <4 x float> %.0226.val, ptr %i.hl, align 16, !tbaa !46, !alias.scope !185, !nontemporal !184
  %i.it = getelementptr inbounds nuw i8, ptr %i.hk, i64 16 ; 2 uses
  br i1 %exitcond365.not, label %.preheader266, label %.preheader267.1

.preheader267.1:                                  ; preds = %.preheader267
  %i.iu = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  %.0226.val.1 = load <4 x float>, ptr %i.it, align 16, !tbaa !46
  store <4 x float> %.0226.val.1, ptr %i.iu, align 16, !tbaa !46, !alias.scope !185, !nontemporal !184
  %i.iv = getelementptr inbounds nuw i8, ptr %i.hk, i64 32 ; 2 uses
  br i1 %exitcond365.not.1, label %.preheader266, label %.preheader267.2

.preheader267.2:                                  ; preds = %.preheader267.1
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hl, i64 32
  %.0226.val.2 = load <4 x float>, ptr %i.iv, align 16, !tbaa !46
  store <4 x float> %.0226.val.2, ptr %i.iw, align 16, !tbaa !46, !alias.scope !185, !nontemporal !184
  %i.ix = getelementptr inbounds nuw i8, ptr %i.hk, i64 48 ; 2 uses
  br i1 %exitcond365.not.2, label %.preheader266, label %.preheader267.3

.preheader267.3:                                  ; preds = %.preheader267.2
  %i.iy = getelementptr inbounds nuw i8, ptr %i.hl, i64 48
  %.0226.val.3 = load <4 x float>, ptr %i.ix, align 16, !tbaa !46
  store <4 x float> %.0226.val.3, ptr %i.iy, align 16, !tbaa !46, !alias.scope !185, !nontemporal !184
  %i.iz = getelementptr inbounds nuw i8, ptr %i.hk, i64 64 ; 2 uses
  br i1 %exitcond365.not.3, label %.preheader266, label %.preheader267.4

.preheader267.4:                                  ; preds = %.preheader267.3
  %i.ja = getelementptr inbounds nuw i8, ptr %i.hl, i64 64
  %.0226.val.4 = load <4 x float>, ptr %i.iz, align 16, !tbaa !46
  store <4 x float> %.0226.val.4, ptr %i.ja, align 16, !tbaa !46, !alias.scope !185, !nontemporal !184
  %i.jb = getelementptr inbounds nuw i8, ptr %i.hk, i64 80 ; 2 uses
  br i1 %exitcond365.not.4, label %.preheader266, label %.preheader267.5

.preheader267.5:                                  ; preds = %.preheader267.4
  %i.jc = getelementptr inbounds nuw i8, ptr %i.hl, i64 80
  %.0226.val.5 = load <4 x float>, ptr %i.jb, align 16, !tbaa !46
  store <4 x float> %.0226.val.5, ptr %i.jc, align 16, !tbaa !46, !alias.scope !185, !nontemporal !184
  %i.jd = getelementptr inbounds nuw i8, ptr %i.hk, i64 96
  br label %.preheader266

.preheader265:                                    ; preds = %.preheader264, %.preheader266
  %.1227.lcssa = phi ptr [ %.lcssa, %.preheader266 ], [ %i.jk, %.preheader264 ]
  br i1 %.not338, label %.loopexit, label %.lr.ph329

.preheader.preheader:                             ; preds = %.preheader266, %.preheader264
  %.0223323 = phi i64 [ %i.jj, %.preheader264 ], [ %i.co, %.preheader266 ] ; 2 uses
  %.1227322 = phi ptr [ %i.jk, %.preheader264 ], [ %.lcssa, %.preheader266 ] ; 4 uses
  %.sroa.0374.0.copyload = load float, ptr %.1227322, align 4, !tbaa !37, !alias.scope !186
  %.sroa.4375.0..1227322.sroa_idx = getelementptr inbounds nuw i8, ptr %.1227322, i64 4
  %i.je = load <2 x float>, ptr %.sroa.4375.0..1227322.sroa_idx, align 4, !tbaa !37, !alias.scope !186
  br label %.preheader

.preheader264:                                    ; preds = %._crit_edge314
  %i.jf = insertelement <4 x float> poison, float %i.ks, i64 0
  %i.jg = shufflevector <4 x float> %i.jf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jh = fdiv reassoc nsz arcp contract afn <4 x float> %i.kr, %i.jg
  %.idx253 = shl i64 %.0223323, 4
  %i.ji = getelementptr inbounds nuw i8, ptr %i.hl, i64 %.idx253
  store <4 x float> %i.jh, ptr %i.ji, align 16, !tbaa !46, !alias.scope !187, !nontemporal !184
  %i.jj = add nuw i64 %.0223323, 1                ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.1227322, i64 16 ; 2 uses
  %exitcond372.not.a = icmp eq i64 %i.jj, %i.gy
  br i1 %exitcond372.not.a, label %.preheader265, label %.preheader.preheader, !llvm.loop !138

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge314
  %.sroa.0377.1 = phi nsz <4 x float> [ zeroinitializer, %.preheader.preheader ], [ %i.kr, %._crit_edge314 ]
  %.0221318 = phi i64 [ %i.ha, %.preheader.preheader ], [ %i.jo, %._crit_edge314 ] ; 4 uses
  %.0222317 = phi float [ 0.000000e+00, %.preheader.preheader ], [ %i.ks, %._crit_edge314 ]
  %i.jl = mul i64 %.0221318, %i.j
  %i.jm = mul nsw i64 %.0221318, %i.hb
  %i.jn = getelementptr [4 x i8], ptr %i.cp, i64 %i.jm
  br label %bb.k

._crit_edge314:                                   ; preds = %bb.k
  %i.jo = add nsw i64 %.0221318, 1
  %exitcond370.not = icmp eq i64 %.0221318, %smax368
  br i1 %exitcond370.not, label %.preheader264, label %.preheader, !llvm.loop !139

bb.k:                                             ; preds = %.preheader, %bb.k
  %.sroa.0377.2 = phi nsz <4 x float> [ %.sroa.0377.1, %.preheader ], [ %i.kr, %bb.k ]
  %.0220312 = phi i64 [ %i.ha, %.preheader ], [ %i.kt, %bb.k ] ; 4 uses
  %.1311 = phi float [ %.0222317, %.preheader ], [ %i.ks, %bb.k ]
  %i.jp = add i64 %.0220312, %i.jl
  %.idx255 = shl i64 %i.jp, 4
  %i.jq = getelementptr inbounds nuw i8, ptr %.1227322, i64 %.idx255 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 4
  %i.js = getelementptr [4 x i8], ptr %i.jn, i64 %.0220312
  %i.jt = load float, ptr %i.js, align 4, !tbaa !37
  %i.ju = load <4 x float>, ptr %i.jq, align 4, !tbaa !37 ; 3 uses
  %i.jv = load float, ptr %i.jr, align 4, !tbaa !37
  %i.jw = extractelement <4 x float> %i.ju, i64 0
  %i.jx = fsub reassoc nsz arcp contract afn float %.sroa.0374.0.copyload, %i.jw ; 2 uses
  %i.jy = fmul reassoc nsz arcp contract afn float %i.jx, %i.jx
  %i.jz = fmul reassoc nsz arcp contract afn float %i.jy, 5.000000e-01
  %i.ka = fmul reassoc nsz arcp contract afn float %i.jz, %i.hf
  %i.kb = shufflevector <4 x float> %i.ju, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.kc = insertelement <2 x float> %i.kb, float %i.jv, i64 0
  %i.kd = fsub reassoc nsz arcp contract afn <2 x float> %i.je, %i.kc ; 2 uses
  %i.ke = fmul reassoc nsz arcp contract afn <2 x float> %i.kd, %i.kd
  %i.kf = fmul reassoc nsz arcp contract afn <2 x float> %i.ke, splat (float 5.000000e-01)
  %i.kg = fmul reassoc nsz arcp contract afn <2 x float> %i.kf, %i.hg ; 2 uses
  %i.kh = extractelement <2 x float> %i.kg, i64 0
  %i.ki = fadd reassoc nsz arcp contract afn float %i.kh, %i.ka
  %i.kj = extractelement <2 x float> %i.kg, i64 1
  %i.kk = fadd reassoc nsz arcp contract afn float %i.ki, %i.kj
  %i.kl = fneg reassoc nsz arcp contract afn float %i.kk
  %i.km = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.kl)
  %i.kn = fmul reassoc nsz arcp contract afn float %i.km, %i.jt ; 2 uses
  %i.ko = insertelement <4 x float> poison, float %i.kn, i64 0
  %i.kp = shufflevector <4 x float> %i.ko, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kq = fmul reassoc nsz arcp contract afn <4 x float> %i.ju, %i.kp
  %i.kr = fadd reassoc nsz arcp contract afn <4 x float> %.sroa.0377.2, %i.kq ; 3 uses
  %i.ks = fadd reassoc nsz arcp contract afn float %i.kn, %.1311 ; 3 uses
  %i.kt = add nsw i64 %.0220312, 1
  %exitcond369.not = icmp eq i64 %.0220312, %smax368
  br i1 %exitcond369.not, label %._crit_edge314, label %bb.k, !llvm.loop !140

.lr.ph329:                                        ; preds = %.preheader265, %.lr.ph329
  %.0216328 = phi i64 [ %i.kv, %.lr.ph329 ], [ %i.gy, %.preheader265 ] ; 2 uses
  %.2327 = phi ptr [ %i.kw, %.lr.ph329 ], [ %.1227.lcssa, %.preheader265 ] ; 2 uses
  %.idx251 = shl i64 %.0216328, 4
  %i.ku = getelementptr inbounds nuw i8, ptr %i.hl, i64 %.idx251
  %.2.val = load <4 x float>, ptr %.2327, align 16, !tbaa !46
  store <4 x float> %.2.val, ptr %i.ku, align 16, !tbaa !46, !alias.scope !188, !nontemporal !184
  %i.kv = add nuw i64 %.0216328, 1                ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.2327, i64 16
  %i.kx = icmp ult i64 %i.kv, %i.j
  br i1 %i.kx, label %.lr.ph329, label %.loopexit, !llvm.loop !143

.loopexit.loopexit499.unr-lcssa:                  ; preds = %.lr.ph305
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph305.epil.preheader

.lr.ph305.epil.preheader:                         ; preds = %.loopexit.loopexit499.unr-lcssa, %.lr.ph305.preheader
  %.0225304.epil.init = phi i64 [ 0, %.lr.ph305.preheader ], [ %i.is, %.loopexit.loopexit499.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod509)
  br label %.lr.ph305.epil

.lr.ph305.epil:                                   ; preds = %.lr.ph305.epil, %.lr.ph305.epil.preheader
  %.0225304.epil = phi i64 [ %i.lb, %.lr.ph305.epil ], [ %.0225304.epil.init, %.lr.ph305.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph305.epil ], [ 0, %.lr.ph305.epil.preheader ]
  %i.ky = shl i64 %.0225304.epil, 2               ; 2 uses
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.ky
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.ky
  %.val263.epil = load <4 x float>, ptr %i.la, align 16, !tbaa !46
  store <4 x float> %.val263.epil, ptr %i.kz, align 16, !tbaa !46, !alias.scope !183, !nontemporal !184
  %i.lb = add nuw i64 %.0225304.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph305.epil, !llvm.loop !144

.loopexit:                                        ; preds = %.loopexit.loopexit499.unr-lcssa, %.lr.ph305.epil, %.lr.ph329, %.preheader268, %.preheader265
  %i.lc = add nuw i64 %.0228330, 1                ; 2 uses
  %exitcond373.not = icmp eq i64 %i.lc, %i.m
  br i1 %exitcond373.not, label %._crit_edge332, label %bb.j, !llvm.loop !145

.lr.ph282:                                        ; preds = %.preheader276.preheader
  %.not334 = icmp eq i32 %i.i, 0
  %i.ld = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.le = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.lf = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.lg = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.lh = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  br i1 %.not334, label %._crit_edge283.split, label %.lr.ph

._crit_edge283.split:                             ; preds = %._crit_edge, %.lr.ph282, %.preheader276.preheader
  invoke void @_ZN20PermutohedralLatticeILi5ELi4EE19merge_splat_threadsEv(ptr noundef nonnull align 8 dereferenceable(48) %6)
          to label %bb.o unwind label %bb.p

.lr.ph:                                           ; preds = %.lr.ph282, %._crit_edge
  %.0214280 = phi i64 [ %i.lm, %._crit_edge ], [ 0, %.lr.ph282 ] ; 3 uses
  %i.li = mul i64 %.0214280, %i.j                 ; 2 uses
  %.idx246 = shl i64 %i.li, 4
  %i.lj = getelementptr inbounds nuw i8, ptr %2, i64 %.idx246
  %i.lk = uitofp reassoc nsz arcp contract afn i64 %.0214280 to float
  %i.ll = fmul reassoc nsz arcp contract afn float %i.cb, %i.lk
  br label %bb.l

._crit_edge:                                      ; preds = %bb.m
  %i.lm = add nuw i64 %.0214280, 1                ; 2 uses
  %exitcond344.not = icmp eq i64 %i.lm, %i.m
  br i1 %exitcond344.not, label %._crit_edge283.split, label %.lr.ph, !llvm.loop !146

bb.l:                                             ; preds = %.lr.ph, %bb.m
  %.0210279 = phi i64 [ 0, %.lr.ph ], [ %i.lw, %bb.m ] ; 3 uses
  %.0213278 = phi ptr [ %i.lj, %.lr.ph ], [ %i.lv, %bb.m ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.ln = uitofp reassoc nsz arcp contract afn i64 %.0210279 to float
  %i.lo = fmul reassoc nsz arcp contract afn float %i.bz, %i.ln
  store float %i.lo, ptr %i.b, align 16, !tbaa !37
  store float %i.ll, ptr %i.ld, align 4, !tbaa !37
  %i.lp = load <2 x float>, ptr %.0213278, align 4, !tbaa !37 ; 2 uses
  %i.lq = fmul reassoc nsz arcp contract afn <2 x float> %i.lp, %i.bt
  store <2 x float> %i.lq, ptr %i.le, align 8, !tbaa !37
  %i.lr = getelementptr inbounds nuw i8, ptr %.0213278, i64 8
  %i.ls = load float, ptr %i.lr, align 4, !tbaa !37 ; 2 uses
  %i.lt = fmul reassoc nsz arcp contract afn float %i.ls, %i.bv
  store float %i.lt, ptr %i.lf, align 16, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store <2 x float> %i.lp, ptr %i.c, align 16, !tbaa !37
  store float %i.ls, ptr %i.lg, align 8, !tbaa !37
  store float 1.000000e+00, ptr %i.lh, align 4, !tbaa !37
  %i.lu = add i64 %.0210279, %i.li
  invoke void @_ZNK20PermutohedralLatticeILi5ELi4EE5splatEPfS1_mi(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i64 noundef %i.lu, i32 noundef 0)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.lv = getelementptr inbounds nuw i8, ptr %.0213278, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.lw = add nuw i64 %.0210279, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.lw, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %bb.l, !llvm.loop !147

bb.n:                                             ; preds = %bb.l
  %i.lx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.r

bb.o:                                             ; preds = %._crit_edge283.split
  invoke void @_ZNK20PermutohedralLatticeILi5ELi4EE4blurEv(ptr noundef nonnull align 8 dereferenceable(48) %6)
          to label %.preheader275 unwind label %bb.p

.preheader275:                                    ; preds = %bb.o
  %.not335 = icmp eq i64 %i.n, 0
  br i1 %.not335, label %._crit_edge287, label %.lr.ph286

._crit_edge287:                                   ; preds = %.preheader274.preheader, %.preheader275
  call void @llvm.x86.sse.sfence()
  call void @_ZN20PermutohedralLatticeILi5ELi4EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.s

bb.p:                                             ; preds = %bb.o, %._crit_edge283.split
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.lr.ph286:                                        ; preds = %.preheader275, %.preheader274.preheader
  %.0209285 = phi i64 [ %i.md, %.preheader274.preheader ], [ 0, %.preheader275 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  invoke void @_ZNK20PermutohedralLatticeILi5ELi4EE5sliceEPfm(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull %i.d, i64 noundef %.0209285)
          to label %.preheader274.preheader unwind label %bb.q

.preheader274.preheader:                          ; preds = %.lr.ph286
  %i.lz = load <4 x float>, ptr %i.d, align 16, !tbaa !37 ; 2 uses
  %i.ma = shufflevector <4 x float> %i.lz, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.mb = fdiv reassoc nsz arcp contract afn <4 x float> %i.lz, %i.ma ; 2 uses
  store <4 x float> %i.mb, ptr %i.d, align 16, !tbaa !37
  %.idx = shl nuw nsw i64 %.0209285, 4
  %i.mc = getelementptr inbounds nuw i8, ptr %3, i64 %.idx
  store <4 x float> %i.mb, ptr %i.mc, align 16, !tbaa !46, !alias.scope !190, !nontemporal !184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  %i.md = add nuw i64 %.0209285, 1                ; 2 uses
  %exitcond346.not = icmp eq i64 %i.md, %i.n
  br i1 %exitcond346.not, label %._crit_edge287, label %.lr.ph286, !llvm.loop !150

bb.q:                                             ; preds = %.lr.ph286
  %i.me = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.n
  %.pn = phi { ptr, i32 } [ %i.lx, %bb.n ], [ %i.me, %bb.q ], [ %i.ly, %bb.p ]
  call void @_ZN20PermutohedralLatticeILi5ELi4EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  resume { ptr, i32 } %.pn

bb.s:                                             ; preds = %bb.e, %._crit_edge332, %._crit_edge287, %bb.h, %bb.c, %bb.a
  ret void
}

declare i32 @dt_iop_have_required_input_format(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

declare void @dt_iop_set_module_trouble_message(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN20PermutohedralLatticeILi5ELi4EEC2Emmm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.5:
  store i64 %1, ptr %0, align 8, !tbaa !50
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !51
  %i.b = tail call noalias noundef nonnull dereferenceable(20) ptr @_Znam(i64 noundef 20) #22 ; 3 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znam(i64 noundef 144) #22 ; 7 uses
  %i.d = load i64, ptr %0, align 8, !tbaa !50
  %i.e = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.d, i64 52) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  %i.g = extractvalue { i64, i1 } %i.e, 0
  %i.h = select i1 %i.f, i64 -1, i64 %i.g
  %i.i = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #22
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.i, ptr %i.j, align 8, !tbaa !52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.c, i8 0, i64 24, i1 false), !tbaa !53
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 -5, i32 2, i32 2>, ptr %i.k, align 4, !tbaa !53
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store <8 x i32> <i32 2, i32 2, i32 -4, i32 -4, i32 3, i32 3, i32 3, i32 -3>, ptr %i.l, align 4, !tbaa !53
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 88
end_hunk_0
begin_hunk_1_@_ZN22HashTablePermutohedralILi5ELi4EE9growExactEm:bb.a
  %i.af = icmp eq i64 %i.ad, 1
  br i1 %i.af, label %_ZSt4copyIPN22HashTablePermutohedralILi5ELi4EE3KeyES3_ET0_T_S5_S4_.exit.thread, label %_ZSt4copyIPN22HashTablePermutohedralILi5ELi4EE3KeyES3_ET0_T_S5_S4_.exit

_ZSt4copyIPN22HashTablePermutohedralILi5ELi4EE3KeyES3_ET0_T_S5_S4_.exit.thread: ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %i.ab, ptr noundef nonnull align 4 dereferenceable(14) %i.ac, i64 14, i1 false), !tbaa.struct !73
  br label %bb.j

_ZSt4copyIPN22HashTablePermutohedralILi5ELi4EE3KeyES3_ET0_T_S5_S4_.exit: ; preds = %bb.h, %bb.i
  %i.ag = icmp eq ptr %i.ac, null
  br i1 %i.ag, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZSt4copyIPN22HashTablePermutohedralILi5ELi4EE3KeyES3_ET0_T_S5_S4_.exit.thread, %_ZSt4copyIPN22HashTablePermutohedralILi5ELi4EE3KeyES3_ET0_T_S5_S4_.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.ac) #23
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZSt4copyIPN22HashTablePermutohedralILi5ELi4EE3KeyES3_ET0_T_S5_S4_.exit
  store ptr %i.ab, ptr %0, align 8, !tbaa !69
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !60  ; 3 uses
  %i.ai = icmp ugt i64 %i.ah, 4611686018427387903
  %i.aj = shl i64 %i.ah, 2                        ; 2 uses
  %i.ak = select i1 %i.ai, i64 -1, i64 %i.aj
  %i.al = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ak) #22 ; 11 uses
  %i.am = icmp eq i64 %i.ah, 0
  br i1 %i.am, label %.loopexit, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.k
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.al, i8 -1, i64 %i.aj, i1 false), !tbaa !75
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.k
  %.not38 = icmp eq i64 %i.b, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !68 ; 5 uses
  br i1 %.not38, label %._crit_edge37, label %.lr.ph36

.lr.ph36:                                         ; preds = %.loopexit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %xtraiter = and i64 %i.b, 1
  %i.ao = icmp eq i64 %i.b, 1
  br i1 %i.ao, label %.epil.preheader, label %.lr.ph36.new

.lr.ph36.new:                                     ; preds = %.lr.ph36
  %unroll_iter = and i64 %i.b, -2
  br label %bb.l

._crit_edge37:                                    ; preds = %.loopexit
  %i.ap = icmp eq ptr %.pre, null
  br i1 %i.ap, label %bb.r, label %._crit_edge37.thread

bb.l:                                             ; preds = %bb.p, %.lr.ph36.new
  %.01834 = phi i64 [ 0, %.lr.ph36.new ], [ %i.bz, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph36.new ], [ %niter.next.1, %bb.p ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %.01834
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !75 ; 3 uses
  %i.as = icmp eq i32 %i.ar, -1
  br i1 %i.as, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = load ptr, ptr %0, align 8, !tbaa !69
  %i.au = sext i32 %i.ar to i64
  %i.av = getelementptr inbounds [16 x i8], ptr %i.at, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !67
  %i.ax = zext i32 %i.aw to i64
  %i.ay = load i64, ptr %i.an, align 8, !tbaa !61 ; 2 uses
  %i.az = and i64 %i.ay, %i.ax                    ; 3 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !75
  %.not29 = icmp eq i32 %i.bb, -1
  br i1 %.not29, label %._crit_edge33, label %.lr.ph32

.lr.ph32:                                         ; preds = %bb.m, %.lr.ph32
  %.030 = phi i64 [ %i.bd, %.lr.ph32 ], [ %i.az, %bb.m ]
  %i.bc = add i64 %.030, 1
  %i.bd = and i64 %i.bc, %i.ay                    ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !75
  %.not = icmp eq i32 %i.bf, -1
  br i1 %.not, label %._crit_edge33, label %.lr.ph32, !llvm.loop !239

._crit_edge33:                                    ; preds = %.lr.ph32, %bb.m
  %.0.lcssa = phi i64 [ %i.az, %bb.m ], [ %i.bd, %.lr.ph32 ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.0.lcssa
  store i32 %i.ar, ptr %i.bg, align 4, !tbaa !53
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %._crit_edge33
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %.01834
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !75 ; 3 uses
  %i.bk = icmp eq i32 %i.bj, -1
  br i1 %i.bk, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bl = load ptr, ptr %0, align 8, !tbaa !69
  %i.bm = sext i32 %i.bj to i64
  %i.bn = getelementptr inbounds [16 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !67
  %i.bp = zext i32 %i.bo to i64
  %i.bq = load i64, ptr %i.an, align 8, !tbaa !61 ; 2 uses
  %i.br = and i64 %i.bq, %i.bp                    ; 3 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !75
  %.not29.1 = icmp eq i32 %i.bt, -1
  br i1 %.not29.1, label %._crit_edge33.1, label %.lr.ph32.1

.lr.ph32.1:                                       ; preds = %bb.o, %.lr.ph32.1
  %.030.1 = phi i64 [ %i.bv, %.lr.ph32.1 ], [ %i.br, %bb.o ]
  %i.bu = add i64 %.030.1, 1
  %i.bv = and i64 %i.bu, %i.bq                    ; 3 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !75
  %.not.1 = icmp eq i32 %i.bx, -1
  br i1 %.not.1, label %._crit_edge33.1, label %.lr.ph32.1, !llvm.loop !239

._crit_edge33.1:                                  ; preds = %.lr.ph32.1, %bb.o
  %.0.lcssa.1 = phi i64 [ %i.br, %bb.o ], [ %i.bv, %.lr.ph32.1 ]
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.0.lcssa.1
  store i32 %i.bj, ptr %i.by, align 4, !tbaa !53
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge33.1, %bb.n
  %i.bz = add nuw i64 %.01834, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge37.thread.loopexit.unr-lcssa, label %bb.l, !llvm.loop !240

._crit_edge37.thread.loopexit.unr-lcssa:          ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge37.thread, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge37.thread.loopexit.unr-lcssa, %.lr.ph36
  %.01834.epil.init = phi i64 [ 0, %.lr.ph36 ], [ %i.bz, %._crit_edge37.thread.loopexit.unr-lcssa ]
  %lcmp.mod56 = trunc i64 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod56)
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %.01834.epil.init
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !75 ; 3 uses
  %i.cc = icmp eq i32 %i.cb, -1
  br i1 %i.cc, label %._crit_edge37.thread, label %bb.q

bb.q:                                             ; preds = %.epil.preheader
  %i.cd = load ptr, ptr %0, align 8, !tbaa !69
  %i.ce = sext i32 %i.cb to i64
  %i.cf = getelementptr inbounds [16 x i8], ptr %i.cd, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !67
  %i.ch = zext i32 %i.cg to i64
  %i.ci = load i64, ptr %i.an, align 8, !tbaa !61 ; 2 uses
  %i.cj = and i64 %i.ci, %i.ch                    ; 3 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !75
  %.not29.epil = icmp eq i32 %i.cl, -1
  br i1 %.not29.epil, label %._crit_edge33.epil, label %.lr.ph32.epil

.lr.ph32.epil:                                    ; preds = %bb.q, %.lr.ph32.epil
  %.030.epil = phi i64 [ %i.cn, %.lr.ph32.epil ], [ %i.cj, %bb.q ]
  %i.cm = add i64 %.030.epil, 1
  %i.cn = and i64 %i.cm, %i.ci                    ; 3 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !75
  %.not.epil = icmp eq i32 %i.cp, -1
  br i1 %.not.epil, label %._crit_edge33.epil, label %.lr.ph32.epil, !llvm.loop !239

._crit_edge33.epil:                               ; preds = %.lr.ph32.epil, %bb.q
  %.0.lcssa.epil = phi i64 [ %i.cj, %bb.q ], [ %i.cn, %.lr.ph32.epil ]
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.0.lcssa.epil
  store i32 %i.cb, ptr %i.cq, align 4, !tbaa !53
  br label %._crit_edge37.thread

._crit_edge37.thread:                             ; preds = %._crit_edge37.thread.loopexit.unr-lcssa, %._crit_edge33.epil, %.epil.preheader, %._crit_edge37
  tail call void @_ZdaPv(ptr noundef nonnull %.pre) #23
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge37.thread, %._crit_edge37
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.al, ptr %i.cr, align 8, !tbaa !68
  %i.cs = load i64, ptr %i.a, align 8, !tbaa !60
  %i.ct = shl i64 %i.cs, 2
  %i.cu = load i64, ptr %i.l, align 8, !tbaa !71
  %i.cv = shl i64 %i.cu, 5
  %i.cw = add i64 %i.cv, %i.ct
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !78
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.exp.v8f32(<8 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.exp.v4f32(<4 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.ceil.v2f32(<2 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr>, <4 x i1>, <4 x i32>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.ceil.v4f32(<4 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.floor.v4f32(<4 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr>, <4 x i1>, <4 x i64>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v4i64(<4 x i64>) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { nounwind }
attributes #18 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #22 = { builtin allocsize(0) }
attributes #23 = { builtin nounwind }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !43}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 _ZTS15dt_iop_module_t", !12, i64 0}
!14 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !12, i64 0}
!15 = !{!"_ZTS22dt_dev_request_flags_t", !8, i64 0}
!16 = !{!"p1 _ZTS18dt_histogram_roi_t", !12, i64 0}
!17 = !{!"_ZTS36dt_dev_histogram_collection_params_t", !16, i64 0, !9, i64 8}
!18 = !{!"p1 int", !12, i64 0}
!19 = !{!"long", !8, i64 0}
!20 = !{!"_ZTS24dt_dev_histogram_stats_t", !9, i64 0, !19, i64 8, !9, i64 16, !9, i64 20}
!21 = !{!"float", !8, i64 0}
!22 = !{!"_ZTS12dt_iop_roi_t", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !21, i64 16}
!23 = !{!"_ZTS20dt_iop_buffer_type_t", !8, i64 0}
!24 = !{!"short", !8, i64 0}
!25 = !{!"_ZTSN19dt_iop_buffer_dsc_tUt_E", !24, i64 0, !24, i64 2}
!26 = !{!"_ZTSN19dt_iop_buffer_dsc_tUt0_E", !9, i64 0, !8, i64 16}
!27 = !{!"_ZTS19dt_iop_buffer_dsc_t", !9, i64 0, !23, i64 4, !9, i64 8, !8, i64 12, !25, i64 48, !26, i64 64, !8, i64 96, !9, i64 112}
!28 = !{!"p1 _ZTS11_GHashTable", !12, i64 0}
!29 = !{!"p1 float", !12, i64 0}
!30 = !{!"_ZTS29dt_dev_distorted_mask_cache_t", !29, i64 0, !22, i64 8, !19, i64 32, !19, i64 40}
!31 = !{!"_ZTS22dt_dev_pixelpipe_iop_t", !13, i64 0, !14, i64 8, !12, i64 16, !12, i64 24, !9, i64 32, !15, i64 36, !17, i64 40, !18, i64 56, !20, i64 64, !8, i64 88, !21, i64 104, !9, i64 108, !9, i64 112, !19, i64 120, !9, i64 128, !9, i64 132, !22, i64 136, !22, i64 156, !22, i64 176, !22, i64 196, !9, i64 216, !9, i64 220, !27, i64 224, !27, i64 352, !8, i64 480, !9, i64 516, !28, i64 520, !30, i64 528, !30, i64 576}
!32 = !{!22, !9, i64 8}
!33 = !{!22, !9, i64 12}
!34 = !{!31, !12, i64 16}
!35 = !{!22, !21, i64 16}
!36 = !{!31, !21, i64 104}
!37 = !{!21, !21, i64 0}
!38 = !{!"p1 _ZTS6_GList", !12, i64 0}
!39 = !{!"p1 omnipotent char", !12, i64 0}
!40 = !{!"_ZTS18dt_pthread_mutex_t", !8, i64 0}
!41 = !{!"_ZTS31dt_dev_pixelpipe_display_mask_t", !8, i64 0}
!42 = !{!"double", !8, i64 0}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!"llvm.loop.isvectorized", i32 1}
!45 = !{!"llvm.loop.unroll.runtime.disable"}
!46 = !{!8, !8, i64 0}
!47 = !{!"p1 _ZTSN20PermutohedralLatticeILi5ELi4EE11ReplayEntryE", !12, i64 0}
!48 = !{!"p1 _ZTS22HashTablePermutohedralILi5ELi4EE", !12, i64 0}
!49 = !{!"_ZTS20PermutohedralLatticeILi5ELi4EE", !19, i64 0, !19, i64 8, !29, i64 16, !18, i64 24, !47, i64 32, !48, i64 40}
!50 = !{!49, !19, i64 0}
!51 = !{!49, !19, i64 8}
!52 = !{!49, !47, i64 32}
!53 = !{!9, !9, i64 0}
!54 = !{!49, !18, i64 24}
!55 = !{!49, !29, i64 16}
!56 = !{!"p1 _ZTSN22HashTablePermutohedralILi5ELi4EE3KeyE", !12, i64 0}
!57 = !{!"p1 _ZTS27HashTablePermutohedralValueILi4EE", !12, i64 0}
!58 = !{!"p1 _ZTSN22HashTablePermutohedralILi5ELi4EE5EntryE", !12, i64 0}
!59 = !{!"_ZTS22HashTablePermutohedralILi5ELi4EE", !56, i64 0, !57, i64 8, !58, i64 16, !19, i64 24, !19, i64 32, !19, i64 40, !19, i64 48, !19, i64 56, !19, i64 64, !19, i64 72}
!60 = !{!59, !19, i64 24}
!61 = !{!59, !19, i64 48}
!62 = !{!49, !48, i64 40}
!63 = !{!"_ZTSN20PermutohedralLatticeILi5ELi4EE11ReplayEntryE", !9, i64 0, !8, i64 4, !8, i64 28}
!64 = !{!63, !9, i64 0}
!65 = !{!24, !24, i64 0}
!66 = !{!"_ZTSN22HashTablePermutohedralILi5ELi4EE3KeyE", !9, i64 0, !8, i64 4}
!67 = !{!66, !9, i64 0}
!68 = !{!59, !58, i64 16}
!69 = !{!59, !56, i64 0}
!70 = !{!59, !19, i64 32}
!71 = !{!59, !19, i64 40}
!72 = !{!59, !19, i64 72}
!73 = !{i64 0, i64 4, !53, i64 4, i64 10, !46}
!74 = !{!"_ZTSN22HashTablePermutohedralILi5ELi4EE5EntryE", !9, i64 0}
!75 = !{!74, !9, i64 0}
!76 = !{!59, !57, i64 8}
!77 = !{!59, !19, i64 56}
!78 = !{!59, !19, i64 64}
!79 = !{!"_ZTS13dt_codepath_t", !9, i64 0}
!80 = !{!"p1 _ZTS11_JsonParser", !12, i64 0}
!81 = !{!"p1 _ZTS9dt_conf_t", !12, i64 0}
!82 = !{!"p1 _ZTS12dt_develop_t", !12, i64 0}
!83 = !{!"p1 _ZTS8dt_lib_t", !12, i64 0}
!84 = !{!"p1 _ZTS17dt_view_manager_t", !12, i64 0}
!85 = !{!"p1 _ZTS12dt_control_t", !12, i64 0}
!86 = !{!"p1 _ZTS19dt_control_signal_t", !12, i64 0}
!87 = !{!"p1 _ZTS12dt_gui_gtk_t", !12, i64 0}
!88 = !{!"p1 _ZTS17dt_mipmap_cache_t", !12, i64 0}
!89 = !{!"p1 _ZTS16dt_image_cache_t", !12, i64 0}
!90 = !{!"p1 _ZTS12dt_bauhaus_t", !12, i64 0}
!91 = !{!"p1 _ZTS13dt_database_t", !12, i64 0}
!92 = !{!"p1 _ZTS14dt_pwstorage_t", !12, i64 0}
!93 = !{!"p1 _ZTS11dt_camctl_t", !12, i64 0}
!94 = !{!"p1 _ZTS15dt_collection_t", !12, i64 0}
!95 = !{!"p1 _ZTS14dt_selection_t", !12, i64 0}
!96 = !{!"p1 _ZTS11dt_points_t", !12, i64 0}
!97 = !{!"p1 _ZTS12dt_imageio_t", !12, i64 0}
!98 = !{!"p1 _ZTS11dt_opencl_t", !12, i64 0}
!99 = !{!"p1 _ZTS9dt_dbus_t", !12, i64 0}
!100 = !{!"p1 _ZTS9dt_undo_t", !12, i64 0}
!101 = !{!"p1 _ZTS16dt_colorspaces_t", !12, i64 0}
!102 = !{!"p1 _ZTS9dt_l10n_t", !12, i64 0}
!103 = !{!"p1 _ZTS9lua_State", !12, i64 0}
!104 = !{!"bool", !8, i64 0}
!105 = !{!"p1 _ZTS10_GMainLoop", !12, i64 0}
!106 = !{!"p1 _ZTS13_GMainContext", !12, i64 0}
!107 = !{!"p1 _ZTS12_GThreadPool", !12, i64 0}
!108 = !{!"p1 _ZTS12_GAsyncQueue", !12, i64 0}
!109 = !{!"_ZTS14dt_lua_state_t", !103, i64 0, !40, i64 8, !8, i64 48, !104, i64 96, !104, i64 97, !105, i64 104, !106, i64 112, !107, i64 120, !108, i64 128, !108, i64 136, !108, i64 144}
!110 = !{!"p1 _ZTS10_GTimeZone", !12, i64 0}
!111 = !{!"p1 _ZTS10_GDateTime", !12, i64 0}
!112 = !{!"_ZTS18dt_sys_resources_t", !19, i64 0, !19, i64 8, !18, i64 16, !18, i64 24, !9, i64 32}
!113 = !{!"_ZTS14dt_backthumb_t", !42, i64 0, !42, i64 8, !9, i64 16, !9, i64 20}
!114 = !{!"_ZTS9dt_gimp_t", !9, i64 0, !39, i64 8, !39, i64 16, !9, i64 24, !9, i64 28}
!115 = !{!"p1 _ZTS10_GtkWidget", !12, i64 0}
!116 = !{!"_ZTS11dt_splash_t", !115, i64 0, !115, i64 8, !115, i64 16, !115, i64 24, !9, i64 32}
!117 = !{!"_ZTS11darktable_t", !79, i64 0, !9, i64 4, !9, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !80, i64 48, !81, i64 56, !82, i64 64, !83, i64 72, !84, i64 80, !85, i64 88, !86, i64 96, !87, i64 104, !88, i64 112, !89, i64 120, !90, i64 128, !91, i64 136, !92, i64 144, !93, i64 152, !94, i64 160, !95, i64 168, !96, i64 176, !97, i64 184, !98, i64 192, !99, i64 200, !100, i64 208, !101, i64 216, !102, i64 224, !8, i64 232, !40, i64 2792, !40, i64 2832, !40, i64 2872, !40, i64 2912, !40, i64 2952, !40, i64 2992, !39, i64 3032, !39, i64 3040, !39, i64 3048, !39, i64 3056, !39, i64 3064, !39, i64 3072, !39, i64 3080, !39, i64 3088, !39, i64 3096, !39, i64 3104, !39, i64 3112, !39, i64 3120, !39, i64 3128, !109, i64 3136, !38, i64 3288, !42, i64 3296, !38, i64 3304, !9, i64 3312, !8, i64 3316, !9, i64 3512, !9, i64 3516, !110, i64 3520, !111, i64 3528, !112, i64 3536, !113, i64 3576, !114, i64 3600, !116, i64 3632, !9, i64 3672}
!118 = !{!117, !9, i64 8}
!119 = !{i64 0, i64 16, !46}
!120 = distinct !{!120, !43, !44, !45}
!121 = distinct !{!121, !43, !44, !45}
!122 = distinct !{!122, !43}
!123 = distinct !{!123, !43, !45, !44}
!124 = distinct !{!124, !43, !44, !45}
!125 = distinct !{!125, !43, !44, !45}
!126 = distinct !{!126, !43}
!127 = distinct !{!127, !43, !45, !44}
!128 = distinct !{!128, !"_ZL22copy_pixel_nontemporalPfPKf"}
!129 = distinct !{!129, !128, !"_ZL22copy_pixel_nontemporalPfPKf: argument 0"}
!130 = distinct !{!130, !43}
!131 = distinct !{!131, !"_ZL22copy_pixel_nontemporalPfPKf"}
!132 = distinct !{!132, !131, !"_ZL22copy_pixel_nontemporalPfPKf: argument 0"}
!133 = distinct !{!133, !"_ZL10copy_pixelPfPKf"}
end_hunk_1

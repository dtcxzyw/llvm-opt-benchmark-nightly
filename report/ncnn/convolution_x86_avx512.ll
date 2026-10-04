Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_avx512?download=true
inline.NumInlined: 389
inline.NumDeleted: 86
loop-unroll.NumCompletelyUnrolled: 154
loop-unroll.NumRuntimeUnrolled: 222
loop-unroll.NumUnrolled: 376
begin_hunk_0_@_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE:bb.a
  %bc.resume.val11225 = phi i32 [ %i.bg, %vec.epilog.iter.check ], [ %.027467909, %vector.main.loop.iter.check ]
  %i.bp = add nsw i64 %n.vec11226, %i.bd
  %i.bq = add i32 %.027467909, %i.ba              ; 2 uses
  %broadcast.splatinsert11229 = insertelement <8 x i32> poison, i32 %bc.resume.val11225, i64 0
  %broadcast.splat11230 = shufflevector <8 x i32> %broadcast.splatinsert11229, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction11233 = add nsw <8 x i32> %broadcast.splat11230, %i.bb
  %invariant.gep12452 = getelementptr [4 x i8], ptr %.sroa.07489.0, i64 %i.bd
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11236 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next11238, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind11237 = phi <8 x i32> [ %induction11233, %vec.epilog.ph ], [ %vec.ind.next11239, %vec.epilog.vector.body ] ; 2 uses
  %i.br = mul nsw <8 x i32> %broadcast.splat11228, %vec.ind11237
  %gep12453 = getelementptr [4 x i8], ptr %invariant.gep12452, i64 %index11236
  store <8 x i32> %i.br, ptr %gep12453, align 4, !tbaa !66
  %index.next11238 = add nuw i64 %index11236, 8   ; 2 uses
  %vec.ind.next11239 = add nsw <8 x i32> %vec.ind11237, %broadcast.splat11235
  %i.bs = icmp eq i64 %index.next11238, %n.vec11226
  br i1 %i.bs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1687

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n11240, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.bd, %iter.check ], [ %i.bf, %vec.epilog.iter.check ], [ %i.bp, %vec.epilog.middle.block ]
  %.127477905.ph = phi i32 [ %.027467909, %iter.check ], [ %i.bg, %vec.epilog.iter.check ], [ %i.bq, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge7911.split:                            ; preds = %._crit_edge, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  %i.bt = sdiv i32 %i.ae, 16
  store i32 %i.bt, ptr %i.h, align 4, !tbaa !66
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !46
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.i, i32 %i.bv)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 11, ptr nonnull @_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE.omp_outlined, ptr nonnull %i.h, ptr nonnull %1, ptr nonnull %0, ptr nonnull %i.c, ptr nonnull %i.e, ptr nonnull %2, ptr nonnull %i.d, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull %i.f, ptr nonnull %i.g)
  %i.bw = load i32, ptr %i.h, align 4, !tbaa !66
  %i.bx = shl nsw i32 %i.bw, 4                    ; 3 uses
  %i.by = sub nsw i32 %i.ae, %i.bx                ; 2 uses
  %i.bz = sdiv i32 %i.by, 8                       ; 2 uses
  store i32 %i.bz, ptr %i.h, align 4, !tbaa !66
  %i.ca = icmp sgt i32 %i.by, 7
  br i1 %i.ca, label %_ZN4ncnn3MatD2Ev.exit3674.lr.ph, label %._crit_edge8319

_ZN4ncnn3MatD2Ev.exit3674.lr.ph:                  ; preds = %._crit_edge7911.split
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  br label %_ZN4ncnn3MatD2Ev.exit3674

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa11219 = phi i32 [ %i.bq, %vec.epilog.middle.block ], [ %i.bg, %middle.block ], [ %i.ck, %vec.epilog.scalar.ph ]
  %i.cg = add nsw i32 %i.aq, %.lcssa11219
  %i.ch = add nuw nsw i32 %.027487908, 1          ; 2 uses
  %exitcond10036.not = icmp eq i32 %i.ch, %4
  br i1 %exitcond10036.not, label %._crit_edge7911.split, label %iter.check, !llvm.loop !1688

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.127477905 = phi i32 [ %i.ck, %vec.epilog.scalar.ph ], [ %.127477905.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ci = mul nsw i32 %i.o, %.127477905
  %i.cj = getelementptr inbounds [4 x i8], ptr %.sroa.07489.0, i64 %indvars.iv
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !66
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ck = add nsw i32 %.127477905, %5             ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.be, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !1689

._crit_edge8319:                                  ; preds = %._crit_edge8317, %._crit_edge7911.split
  %.lcssa7903 = phi i32 [ %i.bz, %._crit_edge7911.split ], [ %i.bid, %._crit_edge8317 ]
  %i.cl = shl nsw i32 %.lcssa7903, 3
  %i.cm = add nsw i32 %i.cl, %i.bx                ; 3 uses
  %i.cn = sub nsw i32 %i.ae, %i.cm                ; 2 uses
  %i.co = sdiv i32 %i.cn, 4                       ; 2 uses
  store i32 %i.co, ptr %i.h, align 4, !tbaa !66
  %i.cp = icmp sgt i32 %i.cn, 3
  br i1 %i.cp, label %_ZN4ncnn3MatD2Ev.exit3642.lr.ph, label %._crit_edge8737

_ZN4ncnn3MatD2Ev.exit3642.lr.ph:                  ; preds = %._crit_edge8319
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  br label %_ZN4ncnn3MatD2Ev.exit3642

_ZN4ncnn3MatD2Ev.exit3674:                        ; preds = %_ZN4ncnn3MatD2Ev.exit3674.lr.ph, %._crit_edge8317
  %.027738318 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit3674.lr.ph ], [ %i.bic, %._crit_edge8317 ] ; 2 uses
  %i.cv = shl nuw nsw i32 %.027738318, 3
  %i.cw = add nsw i32 %i.cv, %i.bx                ; 7 uses
  %i.cx = load i32, ptr %i.w, align 4, !tbaa !74  ; 5 uses
  %i.cy = load i32, ptr %i.y, align 8, !tbaa !75
  %i.cz = load i64, ptr %i.s, align 8, !tbaa !23
  %i.da = load i32, ptr %i.c, align 4, !tbaa !66
  %i.db = sext i32 %i.da to i64
  %i.dc = mul i64 %i.cz, %i.db                    ; 19 uses
  %i.dd = load i64, ptr %i.cb, align 8, !tbaa !23 ; 2 uses
  %i.de = load i32, ptr %i.e, align 4, !tbaa !66  ; 2 uses
  %i.df = sext i32 %i.de to i64
  %i.dg = mul i64 %i.dd, %i.df                    ; 6 uses
  %i.dh = sdiv i32 %i.cw, %i.de
  %i.di = load ptr, ptr %1, align 8, !tbaa !22, !noalias !1946
  %i.dj = sext i32 %i.dh to i64
  %i.dk = mul i64 %i.dd, %i.dj
  %i.dl = load i64, ptr %i.cc, align 8, !tbaa !64, !noalias !1946
  %i.dm = mul i64 %i.dk, %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dm ; 2 uses
  %i.do = mul nsw i32 %i.cy, %i.cx                ; 6 uses
  %i.dp = icmp sgt i32 %i.do, 3
  br i1 %i.dp, label %.noexc3545.lr.ph, label %.preheader7792

.noexc3545.lr.ph:                                 ; preds = %_ZN4ncnn3MatD2Ev.exit3674
  %i.dq = sdiv i32 %i.cw, 16
  %i.dr = srem i32 %i.cw, 16
  %i.ds = ashr exact i32 %i.dr, 3
  %i.dt = add nsw i32 %i.ds, %i.dq
  %i.du = sext i32 %i.dt to i64
  %i.dv = trunc i64 %i.dc to i32                  ; 2 uses
  %i.dw = insertelement <16 x i32> poison, i32 %i.dv, i64 0
  %i.dx = shufflevector <16 x i32> %i.dw, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.dy = mul <16 x i32> %i.dx, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.dz = insertelement <8 x i32> poison, i32 %i.dv, i64 0
  %i.ea = shufflevector <8 x i32> %i.dz, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.eb = mul <8 x i32> %i.ea, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.ec = trunc i64 %i.dg to i32
  %i.ed = insertelement <8 x i32> poison, i32 %i.ec, i64 0
  %i.ee = shufflevector <8 x i32> %i.ed, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ef = mul <8 x i32> %i.ee, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %.pre10630 = load i32, ptr %i.d, align 4, !tbaa !66
  %i.eg = insertelement <4 x i32> poison, i32 %i.cx, i64 0
  %i.eh = shufflevector <4 x i32> %i.eg, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %.noexc3545

.preheader7792:                                   ; preds = %.thread7722, %_ZN4ncnn3MatD2Ev.exit3674
  %.02789.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit3674 ], [ %i.abi, %.thread7722 ] ; 3 uses
  %.02777.lcssa = phi ptr [ %i.dn, %_ZN4ncnn3MatD2Ev.exit3674 ], [ %.32780, %.thread7722 ] ; 2 uses
  %i.ei = or disjoint i32 %.02789.lcssa, 1        ; 2 uses
  %i.ej = icmp slt i32 %i.ei, %i.do
  br i1 %i.ej, label %.noexc3511.lr.ph, label %.preheader7791

.noexc3511.lr.ph:                                 ; preds = %.preheader7792
  %i.ek = sdiv i32 %i.cw, 16
  %i.el = srem i32 %i.cw, 16
  %i.em = ashr exact i32 %i.el, 3
  %i.en = add nsw i32 %i.em, %i.ek
  %i.eo = sext i32 %i.en to i64
  %i.ep = trunc i64 %i.dc to i32                  ; 2 uses
  %i.eq = insertelement <16 x i32> poison, i32 %i.ep, i64 0
  %i.er = shufflevector <16 x i32> %i.eq, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.es = mul <16 x i32> %i.er, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.et = insertelement <8 x i32> poison, i32 %i.ep, i64 0
  %i.eu = shufflevector <8 x i32> %i.et, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ev = mul <8 x i32> %i.eu, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.ew = trunc i64 %i.dg to i32
  %i.ex = insertelement <8 x i32> poison, i32 %i.ew, i64 0
  %i.ey = shufflevector <8 x i32> %i.ex, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ez = mul <8 x i32> %i.ey, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %.pre10634 = load i32, ptr %i.d, align 4, !tbaa !66
  %i.fa = insertelement <2 x i32> poison, i32 %i.cx, i64 0
  %i.fb = shufflevector <2 x i32> %i.fa, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %.noexc3511

.noexc3545:                                       ; preds = %.noexc3545.lr.ph, %.thread7722
  %i.fc = phi i32 [ %.pre10630, %.noexc3545.lr.ph ], [ %i.abh, %.thread7722 ] ; 4 uses
  %.027778092 = phi ptr [ %i.dn, %.noexc3545.lr.ph ], [ %.32780, %.thread7722 ] ; 17 uses
  %.027898091 = phi i32 [ 0, %.noexc3545.lr.ph ], [ %i.abi, %.thread7722 ] ; 4 uses
  %i.fd = insertelement <2 x i32> poison, i32 %.027898091, i64 0
  %i.fe = or disjoint i32 %.027898091, 1
  %i.ff = insertelement <4 x i32> poison, i32 %.027898091, i64 0
  %i.fg = insertelement <4 x i32> %i.ff, i32 %i.fe, i64 1
  %i.fh = shufflevector <2 x i32> %i.fd, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.fi = or disjoint <4 x i32> %i.fh, <i32 2, i32 3, i32 poison, i32 poison>
  %i.fj = shufflevector <4 x i32> %i.fg, <4 x i32> %i.fi, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %.frozen = freeze <4 x i32> %i.fj               ; 2 uses
  %.frozen12454 = freeze <4 x i32> %i.eh          ; 2 uses
  %i.fk = sdiv <4 x i32> %.frozen, %.frozen12454  ; 5 uses
  %i.fl = mul <4 x i32> %i.fk, %.frozen12454
  %.decomposed = sub <4 x i32> %.frozen, %i.fl    ; 4 uses
  %i.fm = load ptr, ptr %2, align 8, !tbaa !22, !noalias !1947
  %i.fn = load i64, ptr %i.cd, align 8, !tbaa !23, !noalias !1947
  %i.fo = mul i64 %i.fn, %i.du
  %i.fp = load i64, ptr %i.ce, align 8, !tbaa !64, !noalias !1947
  %i.fq = mul i64 %i.fo, %i.fp
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fq ; 2 uses
  %i.fs = icmp sgt i32 %i.fc, 15
  br i1 %i.fs, label %.noexc3543.lr.ph, label %._crit_edge7930

.noexc3543.lr.ph:                                 ; preds = %.noexc3545
  %i.ft = load i32, ptr %i.c, align 4, !tbaa !66  ; 3 uses
  %i.fu = load i32, ptr %i.l, align 4, !tbaa !74, !noalias !1948
  %i.fv = load ptr, ptr %0, align 8, !tbaa !22, !noalias !1948 ; 4 uses
  %i.fw = load i64, ptr %i.s, align 8, !tbaa !23, !noalias !1948
  %i.fx = load i64, ptr %i.cf, align 8, !tbaa !64, !noalias !1948 ; 2 uses
  %factor.op.mul = mul i64 %i.fw, %i.fx
  %i.fy = sext i32 %i.fu to i64
  %i.fz = load i32, ptr %i.b, align 4, !tbaa !66
  %i.ga = mul i64 %i.fx, %i.fy
  %i.gb = load i32, ptr %i.a, align 4, !tbaa !66  ; 4 uses
  %i.gc = insertelement <4 x i32> poison, i32 %i.fz, i64 0
  %i.gd = shufflevector <4 x i32> %i.gc, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ge = mul nsw <4 x i32> %i.gd, %i.fk
  %i.gf = sext <4 x i32> %i.ge to <4 x i64>
  %i.gg = insertelement <4 x i64> poison, i64 %i.ga, i64 0
  %i.gh = shufflevector <4 x i64> %i.gg, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.gi = mul <4 x i64> %i.gh, %i.gf              ; 4 uses
  %i.gj = extractelement <4 x i64> %i.gi, i64 0
  %invariant.gep = getelementptr i8, ptr %i.fv, i64 %i.gj
  %i.gk = extractelement <4 x i64> %i.gi, i64 1
  %invariant.gep7941 = getelementptr i8, ptr %i.fv, i64 %i.gk
  %i.gl = extractelement <4 x i64> %i.gi, i64 2
  %invariant.gep7946 = getelementptr i8, ptr %i.fv, i64 %i.gl
  %i.gm = extractelement <4 x i64> %i.gi, i64 3
  %invariant.gep7951 = getelementptr i8, ptr %i.fv, i64 %i.gm
  %i.gn = insertelement <4 x i32> poison, i32 %i.ft, i64 0
  %10 = shufflevector <4 x i32> %i.gn, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.go = mul <4 x i32> %10, %.decomposed         ; 4 uses
  %11 = extractelement <4 x i32> %i.go, i64 0
  %12 = mul i32 %11, %i.gb
  %13 = sext i32 %12 to i64
  %14 = extractelement <4 x i32> %i.go, i64 1
  %15 = mul i32 %14, %i.gb
  %i.gp = sext i32 %15 to i64
  %i.gq = extractelement <4 x i32> %i.go, i64 2
  %16 = mul i32 %i.gq, %i.gb
  %i.gr = sext i32 %16 to i64
  %invariant.gep7937 = getelementptr i8, ptr %invariant.gep, i64 %13
  %invariant.gep7942 = getelementptr i8, ptr %invariant.gep7941, i64 %i.gp
  %invariant.gep7947 = getelementptr i8, ptr %invariant.gep7946, i64 %i.gr
  %i.gs = extractelement <4 x i32> %i.go, i64 3
  %17 = mul i32 %i.gs, %i.gb
  %i.gt = sext i32 %17 to i64
  %invariant.gep7952 = getelementptr i8, ptr %invariant.gep7951, i64 %i.gt
  %i.gu = load i32, ptr %i.f, align 4, !tbaa !66  ; 3 uses
  %i.gv = icmp sgt i32 %i.gu, 0
  %i.gw = load ptr, ptr %i.g, align 8
  %i.gx = add i32 %i.gu, -1
  %i.gy = zext i32 %i.gx to i64
  %i.gz = shl nuw nsw i64 %i.gy, 7
  %wide.trip.count = zext nneg i32 %i.gu to i64
  br label %.noexc3543

.noexc3543:                                       ; preds = %.noexc3543.lr.ph, %._crit_edge7918
  %.028197929 = phi ptr [ %i.fr, %.noexc3543.lr.ph ], [ %.12820.lcssa, %._crit_edge7918 ] ; 3 uses
  %.028497928 = phi i32 [ 0, %.noexc3543.lr.ph ], [ %i.hk, %._crit_edge7918 ] ; 2 uses
  %i.ha = phi <16 x i32> [ zeroinitializer, %.noexc3543.lr.ph ], [ %i.hj, %._crit_edge7918 ] ; 2 uses
  %i.hb = phi <16 x i32> [ zeroinitializer, %.noexc3543.lr.ph ], [ %i.hi, %._crit_edge7918 ] ; 2 uses
  %i.hc = phi <16 x i32> [ zeroinitializer, %.noexc3543.lr.ph ], [ %i.hh, %._crit_edge7918 ] ; 2 uses
  %i.hd = phi <16 x i32> [ zeroinitializer, %.noexc3543.lr.ph ], [ %i.hg, %._crit_edge7918 ] ; 2 uses
  %i.he = sdiv i32 %.028497928, %i.ft
  %i.hf = sext i32 %i.he to i64
  %.reass = mul i64 %factor.op.mul, %i.hf         ; 4 uses
  %gep7938 = getelementptr i8, ptr %invariant.gep7937, i64 %.reass
  %gep7943 = getelementptr i8, ptr %invariant.gep7942, i64 %.reass
  %gep7948 = getelementptr i8, ptr %invariant.gep7947, i64 %.reass
  %gep7953 = getelementptr i8, ptr %invariant.gep7952, i64 %.reass
  br i1 %i.gv, label %.lr.ph, label %._crit_edge7918

._crit_edge7918.loopexit:                         ; preds = %bb.i
  %scevgep = getelementptr i8, ptr %.028197929, i64 128
  %scevgep10039 = getelementptr i8, ptr %scevgep, i64 %i.gz
  br label %._crit_edge7918

._crit_edge7918:                                  ; preds = %._crit_edge7918.loopexit, %.noexc3543
  %i.hg = phi <16 x i32> [ %i.hd, %.noexc3543 ], [ %i.mu, %._crit_edge7918.loopexit ] ; 2 uses
  %i.hh = phi <16 x i32> [ %i.hc, %.noexc3543 ], [ %i.mq, %._crit_edge7918.loopexit ] ; 2 uses
  %i.hi = phi <16 x i32> [ %i.hb, %.noexc3543 ], [ %i.mm, %._crit_edge7918.loopexit ] ; 2 uses
  %i.hj = phi <16 x i32> [ %i.ha, %.noexc3543 ], [ %i.mi, %._crit_edge7918.loopexit ] ; 2 uses
  %.12820.lcssa = phi ptr [ %.028197929, %.noexc3543 ], [ %scevgep10039, %._crit_edge7918.loopexit ] ; 2 uses
  %i.hk = add nuw nsw i32 %.028497928, 16         ; 2 uses
  %i.hl = or disjoint i32 %i.hk, 15
  %i.hm = icmp slt i32 %i.hl, %i.fc
  br i1 %i.hm, label %.noexc3543, label %._crit_edge7930.loopexit, !llvm.loop !1696

.lr.ph:                                           ; preds = %.noexc3543, %bb.i
  %indvars.iv10037 = phi i64 [ %indvars.iv.next10038, %bb.i ], [ 0, %.noexc3543 ] ; 2 uses
  %.128207917 = phi ptr [ %i.mv, %bb.i ], [ %.028197929, %.noexc3543 ] ; 3 uses
  %.175317915 = phi <16 x i32> [ %i.mi, %bb.i ], [ %i.ha, %.noexc3543 ]
  %.175337914 = phi <16 x i32> [ %i.mm, %bb.i ], [ %i.hb, %.noexc3543 ]
  %.175357913 = phi <16 x i32> [ %i.mq, %bb.i ], [ %i.hc, %.noexc3543 ]
  %.175377912 = phi <16 x i32> [ %i.mu, %bb.i ], [ %i.hd, %.noexc3543 ]
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %indvars.iv10037
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !66
  %i.hp = sext i32 %i.ho to i64                   ; 4 uses
  %i.hq = getelementptr inbounds i8, ptr %gep7938, i64 %i.hp ; 4 uses
  %i.hr = getelementptr inbounds i8, ptr %gep7943, i64 %i.hp ; 4 uses
  %i.hs = getelementptr inbounds i8, ptr %gep7948, i64 %i.hp ; 4 uses
  %i.ht = getelementptr inbounds i8, ptr %gep7953, i64 %i.hp ; 4 uses
  switch i32 %i.ft, label %bb.h [
    i32 16, label %bb.f
    i32 8, label %bb.g
  ]

bb.f:                                             ; preds = %.lr.ph
  %i.hu = load <2 x i64>, ptr %i.hq, align 16, !tbaa !85
  %i.hv = load <2 x i64>, ptr %i.hr, align 16, !tbaa !85
  %i.hw = load <2 x i64>, ptr %i.hs, align 16, !tbaa !85
  %i.hx = load <2 x i64>, ptr %i.ht, align 16, !tbaa !85
  br label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.hy = load i64, ptr %i.hq, align 1, !tbaa !85
  %i.hz = insertelement <2 x i64> poison, i64 %i.hy, i64 0
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.dc
  %i.ib = load i64, ptr %i.ia, align 1, !tbaa !85
  %i.ic = load i64, ptr %i.hr, align 1, !tbaa !85
  %i.id = insertelement <2 x i64> poison, i64 %i.ic, i64 0
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hr, i64 %i.dc
  %i.if = load i64, ptr %i.ie, align 1, !tbaa !85
  %i.ig = load i64, ptr %i.hs, align 1, !tbaa !85
  %i.ih = insertelement <2 x i64> poison, i64 %i.ig, i64 0
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.dc
  %i.ij = load i64, ptr %i.ii, align 1, !tbaa !85
  %i.ik = load i64, ptr %i.ht, align 1, !tbaa !85
  %i.il = insertelement <2 x i64> poison, i64 %i.ik, i64 0
  %i.im = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.dc
  %i.in = load i64, ptr %i.im, align 1, !tbaa !85
  %i.io = insertelement <2 x i64> %i.hz, i64 %i.ib, i64 1
  %i.ip = insertelement <2 x i64> %i.id, i64 %i.if, i64 1
  %i.iq = insertelement <2 x i64> %i.ih, i64 %i.ij, i64 1
  %i.ir = insertelement <2 x i64> %i.il, i64 %i.in, i64 1
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph
  %i.is = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.hq, <16 x i32> %i.dy, <16 x i1> splat (i1 true), i32 1)
  %i.it = trunc <16 x i32> %i.is to <16 x i8>
  %i.iu = bitcast <16 x i8> %i.it to <2 x i64>
  %i.iv = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.hr, <16 x i32> %i.dy, <16 x i1> splat (i1 true), i32 1)
  %i.iw = trunc <16 x i32> %i.iv to <16 x i8>
  %i.ix = bitcast <16 x i8> %i.iw to <2 x i64>
  %i.iy = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.hs, <16 x i32> %i.dy, <16 x i1> splat (i1 true), i32 1)
  %i.iz = trunc <16 x i32> %i.iy to <16 x i8>
  %i.ja = bitcast <16 x i8> %i.iz to <2 x i64>
  %i.jb = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.ht, <16 x i32> %i.dy, <16 x i1> splat (i1 true), i32 1)
  %i.jc = trunc <16 x i32> %i.jb to <16 x i8>
  %i.jd = bitcast <16 x i8> %i.jc to <2 x i64>
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.02891 = phi <2 x i64> [ %i.hx, %bb.f ], [ %i.ir, %bb.g ], [ %i.jd, %bb.h ]
  %.02890 = phi <2 x i64> [ %i.hw, %bb.f ], [ %i.iq, %bb.g ], [ %i.ja, %bb.h ]
  %.02858 = phi <2 x i64> [ %i.hv, %bb.f ], [ %i.ip, %bb.g ], [ %i.ix, %bb.h ]
  %.02857 = phi <2 x i64> [ %i.hu, %bb.f ], [ %i.io, %bb.g ], [ %i.iu, %bb.h ]
  %i.je = bitcast <2 x i64> %.02857 to <16 x i8>
  %i.jf = sext <16 x i8> %i.je to <16 x i16>
  %i.jg = bitcast <2 x i64> %.02858 to <16 x i8>
  %i.jh = sext <16 x i8> %i.jg to <16 x i16>
  %i.ji = bitcast <2 x i64> %.02890 to <16 x i8>
  %i.jj = sext <16 x i8> %i.ji to <16 x i16>
  %i.jk = bitcast <2 x i64> %.02891 to <16 x i8>
  %i.jl = sext <16 x i8> %i.jk to <16 x i16>
  %i.jm = load <8 x i64>, ptr %.128207917, align 64, !tbaa !85 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.128207917, i64 64
  %i.jo = load <8 x i64>, ptr %i.jn, align 64, !tbaa !85 ; 2 uses
  %i.jp = bitcast <8 x i64> %i.jm to <64 x i8>
  %i.jq = shufflevector <64 x i8> %i.jp, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.jr = sext <32 x i8> %i.jq to <32 x i16>      ; 4 uses
  %i.js = bitcast <8 x i64> %i.jm to <64 x i8>
  %i.jt = shufflevector <64 x i8> %i.js, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.ju = sext <32 x i8> %i.jt to <32 x i16>      ; 4 uses
  %i.jv = bitcast <8 x i64> %i.jo to <64 x i8>
  %i.jw = shufflevector <64 x i8> %i.jv, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.jx = sext <32 x i8> %i.jw to <32 x i16>      ; 4 uses
  %i.jy = bitcast <8 x i64> %i.jo to <64 x i8>
  %i.jz = shufflevector <64 x i8> %i.jy, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.ka = sext <32 x i8> %i.jz to <32 x i16>      ; 4 uses
  %i.kb = shufflevector <16 x i16> %i.jf, <16 x i16> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.kc = shufflevector <16 x i16> %i.jh, <16 x i16> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.kd = shufflevector <16 x i16> %i.jj, <16 x i16> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ke = shufflevector <16 x i16> %i.jl, <16 x i16> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.kf = bitcast <32 x i16> %i.kb to <16 x i32>  ; 4 uses
  %i.kg = bitcast <32 x i16> %i.kc to <16 x i32>  ; 4 uses
  %i.kh = bitcast <32 x i16> %i.kd to <16 x i32>  ; 4 uses
  %i.ki = bitcast <32 x i16> %i.ke to <16 x i32>  ; 4 uses
  %i.kj = shufflevector <16 x i32> %i.kf, <16 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.kk = bitcast <16 x i32> %i.kj to <32 x i16>
  %i.kl = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.kk, <32 x i16> %i.jr)
  %i.km = add <16 x i32> %i.kl, %.175317915
  %i.kn = shufflevector <16 x i32> %i.kg, <16 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ko = bitcast <16 x i32> %i.kn to <32 x i16>
  %i.kp = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.ko, <32 x i16> %i.jr)
  %i.kq = add <16 x i32> %i.kp, %.175337914
  %i.kr = shufflevector <16 x i32> %i.kh, <16 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ks = bitcast <16 x i32> %i.kr to <32 x i16>
  %i.kt = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.ks, <32 x i16> %i.jr)
  %i.ku = add <16 x i32> %i.kt, %.175357913
  %i.kv = shufflevector <16 x i32> %i.ki, <16 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.kw = bitcast <16 x i32> %i.kv to <32 x i16>
  %i.kx = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.kw, <32 x i16> %i.jr)
  %i.ky = add <16 x i32> %i.kx, %.175377912
  %i.kz = shufflevector <16 x i32> %i.kf, <16 x i32> poison, <16 x i32> <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9>
  %i.la = bitcast <16 x i32> %i.kz to <32 x i16>
  %i.lb = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.la, <32 x i16> %i.ju)
  %i.lc = add <16 x i32> %i.km, %i.lb
  %i.ld = shufflevector <16 x i32> %i.kg, <16 x i32> poison, <16 x i32> <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9>
  %i.le = bitcast <16 x i32> %i.ld to <32 x i16>
  %i.lf = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.le, <32 x i16> %i.ju)
  %i.lg = add <16 x i32> %i.kq, %i.lf
  %i.lh = shufflevector <16 x i32> %i.kh, <16 x i32> poison, <16 x i32> <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9>
  %i.li = bitcast <16 x i32> %i.lh to <32 x i16>
  %i.lj = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.li, <32 x i16> %i.ju)
  %i.lk = add <16 x i32> %i.ku, %i.lj
  %i.ll = shufflevector <16 x i32> %i.ki, <16 x i32> poison, <16 x i32> <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9>
  %i.lm = bitcast <16 x i32> %i.ll to <32 x i16>
  %i.ln = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.lm, <32 x i16> %i.ju)
  %i.lo = add <16 x i32> %i.ky, %i.ln
  %i.lp = shufflevector <16 x i32> %i.kf, <16 x i32> poison, <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %i.lq = bitcast <16 x i32> %i.lp to <32 x i16>
  %i.lr = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.lq, <32 x i16> %i.jx)
  %i.ls = add <16 x i32> %i.lc, %i.lr
  %i.lt = shufflevector <16 x i32> %i.kg, <16 x i32> poison, <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %i.lu = bitcast <16 x i32> %i.lt to <32 x i16>
  %i.lv = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.lu, <32 x i16> %i.jx)
  %i.lw = add <16 x i32> %i.lg, %i.lv
  %i.lx = shufflevector <16 x i32> %i.kh, <16 x i32> poison, <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %i.ly = bitcast <16 x i32> %i.lx to <32 x i16>
  %i.lz = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.ly, <32 x i16> %i.jx)
  %i.ma = add <16 x i32> %i.lk, %i.lz
  %i.mb = shufflevector <16 x i32> %i.ki, <16 x i32> poison, <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %i.mc = bitcast <16 x i32> %i.mb to <32 x i16>
  %i.md = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.mc, <32 x i16> %i.jx)
  %i.me = add <16 x i32> %i.lo, %i.md
  %i.mf = shufflevector <16 x i32> %i.kf, <16 x i32> poison, <16 x i32> <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13>
  %i.mg = bitcast <16 x i32> %i.mf to <32 x i16>
  %i.mh = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.mg, <32 x i16> %i.ka)
  %i.mi = add <16 x i32> %i.ls, %i.mh             ; 2 uses
  %i.mj = shufflevector <16 x i32> %i.kg, <16 x i32> poison, <16 x i32> <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13>
  %i.mk = bitcast <16 x i32> %i.mj to <32 x i16>
  %i.ml = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.mk, <32 x i16> %i.ka)
  %i.mm = add <16 x i32> %i.lw, %i.ml             ; 2 uses
  %i.mn = shufflevector <16 x i32> %i.kh, <16 x i32> poison, <16 x i32> <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13>
  %i.mo = bitcast <16 x i32> %i.mn to <32 x i16>
  %i.mp = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.mo, <32 x i16> %i.ka)
  %i.mq = add <16 x i32> %i.ma, %i.mp             ; 2 uses
  %i.mr = shufflevector <16 x i32> %i.ki, <16 x i32> poison, <16 x i32> <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13>
  %i.ms = bitcast <16 x i32> %i.mr to <32 x i16>
  %i.mt = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.ms, <32 x i16> %i.ka)
  %i.mu = add <16 x i32> %i.me, %i.mt             ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.128207917, i64 128
  %indvars.iv.next10038 = add nuw nsw i64 %indvars.iv10037, 1 ; 2 uses
  %exitcond10041.not = icmp eq i64 %indvars.iv.next10038, %wide.trip.count
  br i1 %exitcond10041.not, label %._crit_edge7918.loopexit, label %.lr.ph, !llvm.loop !1697

._crit_edge7930.loopexit:                         ; preds = %._crit_edge7918
  %i.mw = and i32 %i.fc, 2147483632
  %.pre10631 = load i32, ptr %i.d, align 4, !tbaa !66
  br label %._crit_edge7930

._crit_edge7930:                                  ; preds = %._crit_edge7930.loopexit, %.noexc3545
  %i.mx = phi i32 [ %i.fc, %.noexc3545 ], [ %.pre10631, %._crit_edge7930.loopexit ] ; 3 uses
  %i.my = phi <16 x i32> [ zeroinitializer, %.noexc3545 ], [ %i.hg, %._crit_edge7930.loopexit ] ; 2 uses
  %i.mz = phi <16 x i32> [ zeroinitializer, %.noexc3545 ], [ %i.hh, %._crit_edge7930.loopexit ] ; 2 uses
  %i.na = phi <16 x i32> [ zeroinitializer, %.noexc3545 ], [ %i.hi, %._crit_edge7930.loopexit ] ; 2 uses
  %i.nb = phi <16 x i32> [ zeroinitializer, %.noexc3545 ], [ %i.hj, %._crit_edge7930.loopexit ] ; 2 uses
  %.02849.lcssa = phi i32 [ 0, %.noexc3545 ], [ %i.mw, %._crit_edge7930.loopexit ] ; 3 uses
  %.02819.lcssa = phi ptr [ %i.fr, %.noexc3545 ], [ %.12820.lcssa, %._crit_edge7930.loopexit ] ; 2 uses
  %i.nc = shufflevector <16 x i32> %i.nb, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.nd = shufflevector <16 x i32> %i.nb, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ne = add <8 x i32> %i.nc, %i.nd
  %i.nf = bitcast <8 x i32> %i.ne to <4 x i64>    ; 2 uses
  %i.ng = shufflevector <16 x i32> %i.na, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.nh = shufflevector <16 x i32> %i.na, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ni = add <8 x i32> %i.ng, %i.nh
  %i.nj = bitcast <8 x i32> %i.ni to <4 x i64>    ; 2 uses
  %i.nk = shufflevector <16 x i32> %i.mz, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.nl = shufflevector <16 x i32> %i.mz, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.nm = add <8 x i32> %i.nk, %i.nl
  %i.nn = bitcast <8 x i32> %i.nm to <4 x i64>    ; 2 uses
  %i.no = shufflevector <16 x i32> %i.my, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.np = shufflevector <16 x i32> %i.my, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.nq = add <8 x i32> %i.no, %i.np
  %i.nr = bitcast <8 x i32> %i.nq to <4 x i64>    ; 2 uses
  %i.ns = or disjoint i32 %.02849.lcssa, 7
  %i.nt = icmp slt i32 %i.ns, %i.mx
  br i1 %i.nt, label %.noexc3535.lr.ph, label %.preheader7790

.noexc3535.lr.ph:                                 ; preds = %._crit_edge7930
  %i.nu = load i32, ptr %i.c, align 4, !tbaa !66  ; 3 uses
  %i.nv = load i32, ptr %i.l, align 4, !tbaa !74, !noalias !1949
  %i.nw = load ptr, ptr %0, align 8, !tbaa !22, !noalias !1949 ; 4 uses
  %i.nx = load i64, ptr %i.s, align 8, !tbaa !23, !noalias !1949
  %i.ny = load i64, ptr %i.cf, align 8, !tbaa !64, !noalias !1949 ; 2 uses
  %factor.op.mul7979 = mul i64 %i.nx, %i.ny
  %i.nz = sext i32 %i.nv to i64
  %i.oa = load i32, ptr %i.b, align 4, !tbaa !66
  %i.ob = mul i64 %i.ny, %i.nz
  %i.oc = load i32, ptr %i.a, align 4, !tbaa !66  ; 4 uses
  %i.od = insertelement <4 x i32> poison, i32 %i.oa, i64 0
  %i.oe = shufflevector <4 x i32> %i.od, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.of = mul nsw <4 x i32> %i.oe, %i.fk
  %i.og = sext <4 x i32> %i.of to <4 x i64>
  %i.oh = insertelement <4 x i64> poison, i64 %i.ob, i64 0
  %i.oi = shufflevector <4 x i64> %i.oh, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.oj = mul <4 x i64> %i.oi, %i.og              ; 4 uses
  %i.ok = extractelement <4 x i64> %i.oj, i64 0
  %invariant.gep7981 = getelementptr i8, ptr %i.nw, i64 %i.ok
  %i.ol = extractelement <4 x i64> %i.oj, i64 1
  %invariant.gep7986 = getelementptr i8, ptr %i.nw, i64 %i.ol
  %i.om = extractelement <4 x i64> %i.oj, i64 2
  %invariant.gep7991 = getelementptr i8, ptr %i.nw, i64 %i.om
  %i.on = extractelement <4 x i64> %i.oj, i64 3
  %invariant.gep7996 = getelementptr i8, ptr %i.nw, i64 %i.on
  %i.oo = insertelement <4 x i32> poison, i32 %i.nu, i64 0
  %18 = shufflevector <4 x i32> %i.oo, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.op = mul <4 x i32> %18, %.decomposed         ; 4 uses
  %19 = extractelement <4 x i32> %i.op, i64 0
  %20 = mul i32 %19, %i.oc
  %21 = sext i32 %20 to i64
  %22 = extractelement <4 x i32> %i.op, i64 1
  %23 = mul i32 %22, %i.oc
  %i.oq = sext i32 %23 to i64
  %i.or = extractelement <4 x i32> %i.op, i64 2
  %24 = mul i32 %i.or, %i.oc
  %i.os = sext i32 %24 to i64
  %invariant.gep7982 = getelementptr i8, ptr %invariant.gep7981, i64 %21
  %invariant.gep7987 = getelementptr i8, ptr %invariant.gep7986, i64 %i.oq
  %invariant.gep7992 = getelementptr i8, ptr %invariant.gep7991, i64 %i.os
  %i.ot = extractelement <4 x i32> %i.op, i64 3
  %25 = mul i32 %i.ot, %i.oc
  %i.ou = sext i32 %25 to i64
  %invariant.gep7997 = getelementptr i8, ptr %invariant.gep7996, i64 %i.ou
  %i.ov = load i32, ptr %i.f, align 4, !tbaa !66  ; 3 uses
  %i.ow = icmp sgt i32 %i.ov, 0
  %i.ox = load ptr, ptr %i.g, align 8
  %i.oy = icmp eq i32 %i.nu, 8
  %i.oz = add i32 %i.ov, -1
  %i.pa = zext i32 %i.oz to i64
  %i.pb = shl nuw nsw i64 %i.pa, 6
  %wide.trip.count10047 = zext nneg i32 %i.ov to i64
  br label %.noexc3535

.preheader7790.loopexit:                          ; preds = %._crit_edge7961
  %.pre10632 = load i32, ptr %i.d, align 4, !tbaa !66
  br label %.preheader7790

.preheader7790:                                   ; preds = %.preheader7790.loopexit, %._crit_edge7930
  %i.pc = phi i32 [ %i.mx, %._crit_edge7930 ], [ %.pre10632, %.preheader7790.loopexit ] ; 7 uses
  %.07515.lcssa = phi <4 x i64> [ %i.nr, %._crit_edge7930 ], [ %.17516.lcssa, %.preheader7790.loopexit ] ; 2 uses
  %.07509.lcssa = phi <4 x i64> [ %i.nn, %._crit_edge7930 ], [ %.17510.lcssa, %.preheader7790.loopexit ] ; 2 uses
  %.07503.lcssa = phi <4 x i64> [ %i.nj, %._crit_edge7930 ], [ %.17504.lcssa, %.preheader7790.loopexit ] ; 2 uses
  %.07497.lcssa = phi <4 x i64> [ %i.nf, %._crit_edge7930 ], [ %.17498.lcssa, %.preheader7790.loopexit ] ; 2 uses
  %.12850.lcssa = phi i32 [ %.02849.lcssa, %._crit_edge7930 ], [ %i.ra, %.preheader7790.loopexit ] ; 3 uses
  %.22821.lcssa = phi ptr [ %.02819.lcssa, %._crit_edge7930 ], [ %.32822.lcssa, %.preheader7790.loopexit ] ; 2 uses
  %i.pd = or disjoint i32 %.12850.lcssa, 1
  %i.pe = icmp slt i32 %i.pd, %i.pc
  br i1 %i.pe, label %.noexc3527.lr.ph, label %.preheader7789

.noexc3527.lr.ph:                                 ; preds = %.preheader7790
  %i.pf = load i32, ptr %i.l, align 4, !tbaa !74, !noalias !1950
  %i.pg = load ptr, ptr %0, align 8, !tbaa !22, !noalias !1950 ; 4 uses
  %i.ph = load i64, ptr %i.s, align 8, !tbaa !23, !noalias !1950
  %i.pi = load i64, ptr %i.cf, align 8, !tbaa !64, !noalias !1950 ; 2 uses
  %factor.op.mul8024 = mul i64 %i.ph, %i.pi
  %i.pj = sext i32 %i.pf to i64
  %i.pk = load i32, ptr %i.b, align 4, !tbaa !66
  %i.pl = mul i64 %i.pi, %i.pj
  %i.pm = load i32, ptr %i.a, align 4, !tbaa !66
  %i.pn = insertelement <4 x i32> poison, i32 %i.pk, i64 0
  %i.po = shufflevector <4 x i32> %i.pn, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.pp = mul nsw <4 x i32> %i.po, %i.fk
  %i.pq = sext <4 x i32> %i.pp to <4 x i64>
  %i.pr = insertelement <4 x i64> poison, i64 %i.pl, i64 0
  %i.ps = shufflevector <4 x i64> %i.pr, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.pt = mul <4 x i64> %i.ps, %i.pq              ; 4 uses
  %i.pu = extractelement <4 x i64> %i.pt, i64 0
  %invariant.gep8026 = getelementptr i8, ptr %i.pg, i64 %i.pu
  %i.pv = extractelement <4 x i64> %i.pt, i64 1
  %invariant.gep8031 = getelementptr i8, ptr %i.pg, i64 %i.pv
  %i.pw = extractelement <4 x i64> %i.pt, i64 2
  %invariant.gep8036 = getelementptr i8, ptr %i.pg, i64 %i.pw
  %i.px = extractelement <4 x i64> %i.pt, i64 3
  %invariant.gep8041 = getelementptr i8, ptr %i.pg, i64 %i.px
  %i.py = insertelement <4 x i32> poison, i32 %i.pm, i64 0
  %i.pz = shufflevector <4 x i32> %i.py, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.qa = mul nsw <4 x i32> %i.pz, %.decomposed   ; 4 uses
  %i.qb = extractelement <4 x i32> %i.qa, i64 0
  %i.qc = sext i32 %i.qb to i64
  %i.qd = extractelement <4 x i32> %i.qa, i64 1
  %i.qe = sext i32 %i.qd to i64
  %i.qf = extractelement <4 x i32> %i.qa, i64 2
  %i.qg = sext i32 %i.qf to i64
  %invariant.gep8027 = getelementptr i8, ptr %invariant.gep8026, i64 %i.qc
  %invariant.gep8032 = getelementptr i8, ptr %invariant.gep8031, i64 %i.qe
  %invariant.gep8037 = getelementptr i8, ptr %invariant.gep8036, i64 %i.qg
  %i.qh = extractelement <4 x i32> %i.qa, i64 3
  %i.qi = sext i32 %i.qh to i64
  %invariant.gep8042 = getelementptr i8, ptr %invariant.gep8041, i64 %i.qi
  %i.qj = load i32, ptr %i.f, align 4, !tbaa !66  ; 3 uses
  %i.qk = icmp sgt i32 %i.qj, 0
  %i.ql = load ptr, ptr %i.g, align 8
  %i.qm = add i32 %i.qj, -1
  %i.qn = zext nneg i32 %i.qm to i64
  %i.qo = shl nuw nsw i64 %i.qn, 4
  %i.qp = zext nneg i32 %.12850.lcssa to i64
  %wide.trip.count10054 = zext nneg i32 %i.qj to i64
  br label %.noexc3527

.noexc3535:                                       ; preds = %.noexc3535.lr.ph, %._crit_edge7961
  %.228217972 = phi ptr [ %.02819.lcssa, %.noexc3535.lr.ph ], [ %.32822.lcssa, %._crit_edge7961 ] ; 3 uses
  %.128507971 = phi i32 [ %.02849.lcssa, %.noexc3535.lr.ph ], [ %i.ra, %._crit_edge7961 ] ; 2 uses
  %.074977970 = phi <4 x i64> [ %i.nf, %.noexc3535.lr.ph ], [ %.17498.lcssa, %._crit_edge7961 ] ; 2 uses
  %.075037969 = phi <4 x i64> [ %i.nj, %.noexc3535.lr.ph ], [ %.17504.lcssa, %._crit_edge7961 ] ; 2 uses
  %.075097968 = phi <4 x i64> [ %i.nn, %.noexc3535.lr.ph ], [ %.17510.lcssa, %._crit_edge7961 ] ; 2 uses
  %.075157967 = phi <4 x i64> [ %i.nr, %.noexc3535.lr.ph ], [ %.17516.lcssa, %._crit_edge7961 ] ; 2 uses
  %i.qq = sdiv i32 %.128507971, %i.nu
  %i.qr = sext i32 %i.qq to i64
  %.reass7980 = mul i64 %factor.op.mul7979, %i.qr ; 4 uses
  %gep7983 = getelementptr i8, ptr %invariant.gep7982, i64 %.reass7980
  %gep7988 = getelementptr i8, ptr %invariant.gep7987, i64 %.reass7980
  %gep7993 = getelementptr i8, ptr %invariant.gep7992, i64 %.reass7980
  %gep7998 = getelementptr i8, ptr %invariant.gep7997, i64 %.reass7980
  br i1 %i.ow, label %.lr.ph7960.preheader, label %._crit_edge7961

.lr.ph7960.preheader:                             ; preds = %.noexc3535
  %i.qs = bitcast <4 x i64> %.074977970 to <8 x i32>
  %i.qt = bitcast <4 x i64> %.075037969 to <8 x i32>
  %i.qu = bitcast <4 x i64> %.075097968 to <8 x i32>
  %i.qv = bitcast <4 x i64> %.075157967 to <8 x i32>
  br label %.lr.ph7960

._crit_edge7961.loopexit:                         ; preds = %bb.l
  %i.qw = bitcast <8 x i32> %i.uk to <4 x i64>
  %i.qx = bitcast <8 x i32> %i.uh to <4 x i64>
  %i.qy = bitcast <8 x i32> %i.ue to <4 x i64>
  %i.qz = bitcast <8 x i32> %i.ub to <4 x i64>
  %scevgep10044 = getelementptr i8, ptr %.228217972, i64 64
  %scevgep10045 = getelementptr i8, ptr %scevgep10044, i64 %i.pb
  br label %._crit_edge7961

._crit_edge7961:                                  ; preds = %._crit_edge7961.loopexit, %.noexc3535
  %.17516.lcssa = phi <4 x i64> [ %.075157967, %.noexc3535 ], [ %i.qw, %._crit_edge7961.loopexit ] ; 2 uses
  %.17510.lcssa = phi <4 x i64> [ %.075097968, %.noexc3535 ], [ %i.qx, %._crit_edge7961.loopexit ] ; 2 uses
  %.17504.lcssa = phi <4 x i64> [ %.075037969, %.noexc3535 ], [ %i.qy, %._crit_edge7961.loopexit ] ; 2 uses
  %.17498.lcssa = phi <4 x i64> [ %.074977970, %.noexc3535 ], [ %i.qz, %._crit_edge7961.loopexit ] ; 2 uses
  %.32822.lcssa = phi ptr [ %.228217972, %.noexc3535 ], [ %scevgep10045, %._crit_edge7961.loopexit ] ; 2 uses
  %i.ra = add nuw nsw i32 %.128507971, 8          ; 3 uses
  %i.rb = or disjoint i32 %i.ra, 7
  %i.rc = icmp slt i32 %i.rb, %i.mx
  br i1 %i.rc, label %.noexc3535, label %.preheader7790.loopexit, !llvm.loop !1702

.lr.ph7960:                                       ; preds = %.lr.ph7960.preheader, %bb.l
  %indvars.iv10042 = phi i64 [ 0, %.lr.ph7960.preheader ], [ %indvars.iv.next10043, %bb.l ] ; 2 uses
  %.328227959 = phi ptr [ %.228217972, %.lr.ph7960.preheader ], [ %i.ul, %bb.l ] ; 3 uses
  %.174987957 = phi <8 x i32> [ %i.qs, %.lr.ph7960.preheader ], [ %i.ub, %bb.l ]
  %.175047956 = phi <8 x i32> [ %i.qt, %.lr.ph7960.preheader ], [ %i.ue, %bb.l ]
  %.175107955 = phi <8 x i32> [ %i.qu, %.lr.ph7960.preheader ], [ %i.uh, %bb.l ]
  %.175167954 = phi <8 x i32> [ %i.qv, %.lr.ph7960.preheader ], [ %i.uk, %bb.l ]
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %indvars.iv10042
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !66
  %i.rf = sext i32 %i.re to i64                   ; 4 uses
  %i.rg = getelementptr inbounds i8, ptr %gep7983, i64 %i.rf ; 2 uses
  %i.rh = getelementptr inbounds i8, ptr %gep7988, i64 %i.rf ; 2 uses
  %i.ri = getelementptr inbounds i8, ptr %gep7993, i64 %i.rf ; 2 uses
  %i.rj = getelementptr inbounds i8, ptr %gep7998, i64 %i.rf ; 2 uses
  br i1 %i.oy, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph7960
  %i.rk = load <8 x i8>, ptr %i.rg, align 1, !tbaa !85
  %i.rl = load <8 x i8>, ptr %i.rh, align 1, !tbaa !85
  %i.rm = load <8 x i8>, ptr %i.ri, align 1, !tbaa !85
  %i.rn = load <8 x i8>, ptr %i.rj, align 1, !tbaa !85
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph7960
  %i.ro = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.rg, <8 x i32> %i.eb, <8 x i32> splat (i32 -1), i8 1)
  %i.rp = trunc <8 x i32> %i.ro to <8 x i8>
  %i.rq = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.rh, <8 x i32> %i.eb, <8 x i32> splat (i32 -1), i8 1)
  %i.rr = trunc <8 x i32> %i.rq to <8 x i8>
  %i.rs = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.ri, <8 x i32> %i.eb, <8 x i32> splat (i32 -1), i8 1)
  %i.rt = trunc <8 x i32> %i.rs to <8 x i8>
  %i.ru = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.rj, <8 x i32> %i.eb, <8 x i32> splat (i32 -1), i8 1)
  %i.rv = trunc <8 x i32> %i.ru to <8 x i8>
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.07603 = phi <8 x i8> [ %i.rm, %bb.j ], [ %i.rt, %bb.k ]
  %.07602 = phi <8 x i8> [ %i.rl, %bb.j ], [ %i.rr, %bb.k ]
  %.07601 = phi <8 x i8> [ %i.rk, %bb.j ], [ %i.rp, %bb.k ]
  %storemerge3277 = phi <8 x i8> [ %i.rn, %bb.j ], [ %i.rv, %bb.k ]
  %i.rw = sext <8 x i8> %.07601 to <8 x i16>      ; 4 uses
  %i.rx = sext <8 x i8> %.07602 to <8 x i16>      ; 4 uses
  %i.ry = sext <8 x i8> %.07603 to <8 x i16>      ; 4 uses
  %i.rz = sext <8 x i8> %storemerge3277 to <8 x i16> ; 4 uses
  %i.sa = load <4 x i64>, ptr %.328227959, align 32, !tbaa !85 ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %.328227959, i64 32
  %i.sc = load <4 x i64>, ptr %i.sb, align 32, !tbaa !85 ; 2 uses
  %i.sd = bitcast <4 x i64> %i.sa to <32 x i8>
  %i.se = shufflevector <32 x i8> %i.sd, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.sf = sext <16 x i8> %i.se to <16 x i16>      ; 4 uses
  %i.sg = bitcast <4 x i64> %i.sa to <32 x i8>
  %i.sh = shufflevector <32 x i8> %i.sg, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.si = sext <16 x i8> %i.sh to <16 x i16>      ; 4 uses
  %i.sj = bitcast <4 x i64> %i.sc to <32 x i8>
  %i.sk = shufflevector <32 x i8> %i.sj, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.sl = sext <16 x i8> %i.sk to <16 x i16>      ; 4 uses
  %i.sm = bitcast <4 x i64> %i.sc to <32 x i8>
  %i.sn = shufflevector <32 x i8> %i.sm, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.so = sext <16 x i8> %i.sn to <16 x i16>      ; 4 uses
  %i.sp = shufflevector <8 x i16> %i.rw, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.sq = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.sp, <16 x i16> %i.sf)
  %i.sr = add <8 x i32> %i.sq, %.174987957
  %i.ss = shufflevector <8 x i16> %i.rx, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.st = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.ss, <16 x i16> %i.sf)
  %i.su = add <8 x i32> %i.st, %.175047956
  %i.sv = shufflevector <8 x i16> %i.ry, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.sw = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.sv, <16 x i16> %i.sf)
  %i.sx = add <8 x i32> %i.sw, %.175107955
  %i.sy = shufflevector <8 x i16> %i.rz, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.sz = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.sy, <16 x i16> %i.sf)
  %i.ta = add <8 x i32> %i.sz, %.175167954
  %i.tb = shufflevector <8 x i16> %i.rw, <8 x i16> poison, <16 x i32> <i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3>
  %i.tc = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.tb, <16 x i16> %i.si)
  %i.td = add <8 x i32> %i.sr, %i.tc
  %i.te = shufflevector <8 x i16> %i.rx, <8 x i16> poison, <16 x i32> <i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3>
  %i.tf = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.te, <16 x i16> %i.si)
  %i.tg = add <8 x i32> %i.su, %i.tf
  %i.th = shufflevector <8 x i16> %i.ry, <8 x i16> poison, <16 x i32> <i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3>
  %i.ti = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.th, <16 x i16> %i.si)
  %i.tj = add <8 x i32> %i.sx, %i.ti
  %i.tk = shufflevector <8 x i16> %i.rz, <8 x i16> poison, <16 x i32> <i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3>
end_hunk_0
begin_hunk_1_@_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE:bb.a
  br label %._crit_edge8301.us

._crit_edge8301.us:                               ; preds = %._crit_edge8301.us.unr-lcssa, %.epil.preheader12020
  %.lcssa12015 = phi <8 x i32> [ %i.bhc, %._crit_edge8301.us.unr-lcssa ], [ %i.bhq, %.epil.preheader12020 ] ; 2 uses
  %scevgep10143 = getelementptr i8, ptr %.630238305.us, i64 8
  %scevgep10144 = getelementptr i8, ptr %scevgep10143, i64 %i.bfx
  %indvars.iv.next10149 = add nuw nsw i64 %indvars.iv10148, 1 ; 2 uses
  %i.bhr = trunc nuw i64 %indvars.iv.next10149 to i32
  %i.bhs = icmp sgt i32 %i.ats, %i.bhr
  br i1 %i.bhs, label %.noexc3485.us, label %._crit_edge8307, !llvm.loop !1747

._crit_edge8307:                                  ; preds = %._crit_edge8301.us, %.noexc3485.lr.ph, %.preheader7786
  %.47694.lcssa.in = phi <8 x i32> [ %.27692.lcssa.in, %.preheader7786 ], [ %.27692.lcssa.in, %.noexc3485.lr.ph ], [ %.lcssa12015, %._crit_edge8301.us ] ; 3 uses
  %i.bht = load i32, ptr %i.e, align 4, !tbaa !66
  switch i32 %i.bht, label %.thread7732 [
    i32 8, label %.thread7729
    i32 4, label %bb.ac
    i32 1, label %bb.ad
  ]

.thread7729:                                      ; preds = %._crit_edge8307
  store <8 x i32> %.47694.lcssa.in, ptr %.827858316, align 32, !tbaa !85
  %i.bhu = getelementptr inbounds nuw i8, ptr %.827858316, i64 32
  br label %.thread7732

bb.ac:                                            ; preds = %._crit_edge8307
  %.47694.lcssa = bitcast <8 x i32> %.47694.lcssa.in to <4 x i64> ; 2 uses
  %i.bhv = shufflevector <4 x i64> %.47694.lcssa, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.bhv, ptr %.827858316, align 16, !tbaa !85
  %i.bhw = getelementptr inbounds nuw [4 x i8], ptr %.827858316, i64 %i.dg
  %i.bhx = shufflevector <4 x i64> %.47694.lcssa, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.bhx, ptr %i.bhw, align 16, !tbaa !85
  %i.bhy = getelementptr inbounds nuw i8, ptr %.827858316, i64 16
  br label %.thread7732

bb.ad:                                            ; preds = %._crit_edge8307
  call void @llvm.x86.avx512.mask.scattersiv8.si(ptr %.827858316, <8 x i1> splat (i1 true), <8 x i32> %i.acb, <8 x i32> %.47694.lcssa.in, i32 4)
  %i.bhz = getelementptr inbounds nuw i8, ptr %.827858316, i64 4
  %.pre10635 = load i32, ptr %i.d, align 4, !tbaa !66
  br label %.thread7732

.thread7732:                                      ; preds = %._crit_edge8307, %bb.ac, %.thread7729, %bb.ad
  %i.bia = phi i32 [ %.pre10635, %bb.ad ], [ %i.ats, %._crit_edge8307 ], [ %i.ats, %.thread7729 ], [ %i.ats, %bb.ac ]
  %.112788 = phi ptr [ %i.bhz, %bb.ad ], [ %.827858316, %._crit_edge8307 ], [ %i.bhu, %.thread7729 ], [ %i.bhy, %bb.ac ]
  %i.bib = add i32 %.227918315, 1                 ; 2 uses
  %exitcond10151.not = icmp eq i32 %i.bib, %i.do
  br i1 %exitcond10151.not, label %._crit_edge8317, label %.noexc3493, !llvm.loop !1748

._crit_edge8317:                                  ; preds = %.thread7732, %.preheader7791
  %i.bic = add nuw nsw i32 %.027738318, 1         ; 2 uses
  %i.bid = load i32, ptr %i.h, align 4, !tbaa !66 ; 2 uses
  %i.bie = icmp slt i32 %i.bic, %i.bid
  br i1 %i.bie, label %_ZN4ncnn3MatD2Ev.exit3674, label %._crit_edge8319, !llvm.loop !1749

._crit_edge8737:                                  ; preds = %._crit_edge8735, %._crit_edge8319
  %.lcssa7869 = phi i32 [ %i.co, %._crit_edge8319 ], [ %i.dol, %._crit_edge8735 ]
  %i.bif = shl nsw i32 %.lcssa7869, 2
  %i.big = add nsw i32 %i.bif, %i.cm              ; 3 uses
  %i.bih = sub nsw i32 %i.ae, %i.big              ; 2 uses
  %i.bii = sdiv i32 %i.bih, 2                     ; 2 uses
  store i32 %i.bii, ptr %i.h, align 4, !tbaa !66
  %i.bij = icmp sgt i32 %i.bih, 1
  br i1 %i.bij, label %_ZN4ncnn3MatD2Ev.exit3610.lr.ph, label %._crit_edge9220

_ZN4ncnn3MatD2Ev.exit3610.lr.ph:                  ; preds = %._crit_edge8737
  %i.bik = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bil = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bim = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.bin = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.bio = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %i.bip = sext i32 %i.big to i64
  br label %_ZN4ncnn3MatD2Ev.exit3610

_ZN4ncnn3MatD2Ev.exit3642:                        ; preds = %_ZN4ncnn3MatD2Ev.exit3642.lr.ph, %._crit_edge8735
  %.030078736 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit3642.lr.ph ], [ %i.dok, %._crit_edge8735 ] ; 2 uses
  %i.biq = shl nuw nsw i32 %.030078736, 2
  %i.bir = add nsw i32 %i.biq, %i.cm              ; 7 uses
  %i.bis = load i32, ptr %i.w, align 4, !tbaa !74 ; 5 uses
  %i.bit = load i32, ptr %i.y, align 8, !tbaa !75
  %i.biu = load i64, ptr %i.s, align 8, !tbaa !23
  %i.biv = load i32, ptr %i.c, align 4, !tbaa !66
  %i.biw = sext i32 %i.biv to i64
  %i.bix = mul i64 %i.biu, %i.biw                 ; 19 uses
  %i.biy = load i64, ptr %i.cq, align 8, !tbaa !23 ; 2 uses
  %i.biz = load i32, ptr %i.e, align 4, !tbaa !66 ; 2 uses
  %i.bja = zext i32 %i.biz to i64
  %i.bjb = mul i64 %i.biy, %i.bja                 ; 3 uses
  %i.bjc = sdiv i32 %i.bir, %i.biz
  %i.bjd = load ptr, ptr %1, align 8, !tbaa !22, !noalias !1962
  %i.bje = sext i32 %i.bjc to i64
  %i.bjf = mul i64 %i.biy, %i.bje
  %i.bjg = load i64, ptr %i.cr, align 8, !tbaa !64, !noalias !1962
  %i.bjh = mul i64 %i.bjf, %i.bjg
  %i.bji = getelementptr inbounds nuw i8, ptr %i.bjd, i64 %i.bjh ; 2 uses
  %i.bjj = mul nsw i32 %i.bit, %i.bis             ; 6 uses
  %i.bjk = icmp sgt i32 %i.bjj, 3
  br i1 %i.bjk, label %.noexc3483.lr.ph, label %.preheader7785

.noexc3483.lr.ph:                                 ; preds = %_ZN4ncnn3MatD2Ev.exit3642
  %i.bjl = sdiv i32 %i.bir, 16
  %i.bjm = insertelement <2 x i32> poison, i32 %i.bir, i64 0
  %i.bjn = shufflevector <2 x i32> %i.bjm, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bjo = srem <2 x i32> %i.bjn, <i32 16, i32 8> ; 2 uses
  %i.bjp = bitcast <2 x i32> %i.bjo to <8 x i8>
  %.lhs.trunc = extractelement <8 x i8> %i.bjp, i64 0
  %i.bjq = sdiv i8 %.lhs.trunc, 8
  %.sext = sext i8 %i.bjq to i32
  %i.bjr = extractelement <2 x i32> %i.bjo, i64 1
  %i.bjs = ashr exact i32 %i.bjr, 2
  %i.bjt = add nsw i32 %i.bjs, %i.bjl
  %i.bju = add nsw i32 %i.bjt, %.sext
  %i.bjv = sext i32 %i.bju to i64
  %i.bjw = trunc i64 %i.bix to i32                ; 2 uses
  %i.bjx = insertelement <16 x i32> poison, i32 %i.bjw, i64 0
  %i.bjy = shufflevector <16 x i32> %i.bjx, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.bjz = mul <16 x i32> %i.bjy, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.bka = insertelement <8 x i32> poison, i32 %i.bjw, i64 0
  %i.bkb = shufflevector <8 x i32> %i.bka, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.bkc = mul <8 x i32> %i.bkb, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.bkd = trunc i64 %i.bjb to i32
  %i.bke = insertelement <4 x i32> poison, i32 %i.bkd, i64 0
  %i.bkf = shufflevector <4 x i32> %i.bke, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bkg = mul <4 x i32> %i.bkf, <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %.pre10638 = load i32, ptr %i.d, align 4, !tbaa !66
  %i.bkh = insertelement <4 x i32> poison, i32 %i.bis, i64 0
  %i.bki = shufflevector <4 x i32> %i.bkh, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %.noexc3483

.preheader7785:                                   ; preds = %bb.ak, %_ZN4ncnn3MatD2Ev.exit3642
  %.02998.lcssa = phi ptr [ %i.bji, %_ZN4ncnn3MatD2Ev.exit3642 ], [ %.23000, %bb.ak ] ; 2 uses
  %.02995.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit3642 ], [ %i.cie, %bb.ak ] ; 3 uses
  %i.bkj = or disjoint i32 %.02995.lcssa, 1       ; 2 uses
  %i.bkk = icmp slt i32 %i.bkj, %i.bjj
  br i1 %i.bkk, label %.noexc3449.lr.ph, label %.preheader7784

.noexc3449.lr.ph:                                 ; preds = %.preheader7785
  %i.bkl = sdiv i32 %i.bir, 16
  %i.bkm = insertelement <2 x i32> poison, i32 %i.bir, i64 0
  %i.bkn = shufflevector <2 x i32> %i.bkm, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bko = srem <2 x i32> %i.bkn, <i32 16, i32 8> ; 2 uses
  %i.bkp = bitcast <2 x i32> %i.bko to <8 x i8>
  %.lhs.trunc7738 = extractelement <8 x i8> %i.bkp, i64 0
  %i.bkq = sdiv i8 %.lhs.trunc7738, 8
  %.sext7739 = sext i8 %i.bkq to i32
  %i.bkr = extractelement <2 x i32> %i.bko, i64 1
  %i.bks = ashr exact i32 %i.bkr, 2
  %i.bkt = add nsw i32 %i.bks, %i.bkl
  %i.bku = add nsw i32 %i.bkt, %.sext7739
  %i.bkv = sext i32 %i.bku to i64
  %i.bkw = trunc i64 %i.bix to i32                ; 2 uses
  %i.bkx = insertelement <16 x i32> poison, i32 %i.bkw, i64 0
  %i.bky = shufflevector <16 x i32> %i.bkx, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.bkz = mul <16 x i32> %i.bky, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.bla = insertelement <8 x i32> poison, i32 %i.bkw, i64 0
  %i.blb = shufflevector <8 x i32> %i.bla, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.blc = mul <8 x i32> %i.blb, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.bld = trunc i64 %i.bjb to i32
  %i.ble = insertelement <4 x i32> poison, i32 %i.bld, i64 0
  %i.blf = shufflevector <4 x i32> %i.ble, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.blg = mul <4 x i32> %i.blf, <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %.pre10642 = load i32, ptr %i.d, align 4, !tbaa !66
  %i.blh = insertelement <2 x i32> poison, i32 %i.bis, i64 0
  %i.bli = shufflevector <2 x i32> %i.blh, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %.noexc3449

.noexc3483:                                       ; preds = %.noexc3483.lr.ph, %bb.ak
  %i.blj = phi i32 [ %.pre10638, %.noexc3483.lr.ph ], [ %i.cid, %bb.ak ] ; 4 uses
  %.029958496 = phi i32 [ 0, %.noexc3483.lr.ph ], [ %i.cie, %bb.ak ] ; 4 uses
  %.029988495 = phi ptr [ %i.bji, %.noexc3483.lr.ph ], [ %.23000, %bb.ak ] ; 11 uses
  %i.blk = insertelement <2 x i32> poison, i32 %.029958496, i64 0
  %i.bll = or disjoint i32 %.029958496, 1
  %i.blm = insertelement <4 x i32> poison, i32 %.029958496, i64 0
  %i.bln = insertelement <4 x i32> %i.blm, i32 %i.bll, i64 1
  %i.blo = shufflevector <2 x i32> %i.blk, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.blp = or disjoint <4 x i32> %i.blo, <i32 2, i32 3, i32 poison, i32 poison>
  %i.blq = shufflevector <4 x i32> %i.bln, <4 x i32> %i.blp, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %.frozen12458 = freeze <4 x i32> %i.blq         ; 2 uses
  %.frozen12459 = freeze <4 x i32> %i.bki         ; 2 uses
  %i.blr = sdiv <4 x i32> %.frozen12458, %.frozen12459 ; 5 uses
  %i.bls = mul <4 x i32> %i.blr, %.frozen12459
  %.decomposed12460 = sub <4 x i32> %.frozen12458, %i.bls ; 4 uses
  %i.blt = load ptr, ptr %2, align 8, !tbaa !22, !noalias !1963
  %i.blu = load i64, ptr %i.cs, align 8, !tbaa !23, !noalias !1963
  %i.blv = mul i64 %i.blu, %i.bjv
  %i.blw = load i64, ptr %i.ct, align 8, !tbaa !64, !noalias !1963
  %i.blx = mul i64 %i.blv, %i.blw
  %i.bly = getelementptr inbounds nuw i8, ptr %i.blt, i64 %i.blx ; 2 uses
  %i.blz = icmp sgt i32 %i.blj, 15
  br i1 %i.blz, label %.noexc3481.lr.ph, label %._crit_edge8340

.noexc3481.lr.ph:                                 ; preds = %.noexc3483
  %i.bma = load i32, ptr %i.c, align 4, !tbaa !66 ; 3 uses
  %i.bmb = load i32, ptr %i.l, align 4, !tbaa !74, !noalias !1964
  %i.bmc = load ptr, ptr %0, align 8, !tbaa !22, !noalias !1964 ; 4 uses
  %i.bmd = load i64, ptr %i.s, align 8, !tbaa !23, !noalias !1964
  %i.bme = load i64, ptr %i.cu, align 8, !tbaa !64, !noalias !1964 ; 2 uses
  %factor.op.mul8347 = mul i64 %i.bmd, %i.bme
  %i.bmf = sext i32 %i.bmb to i64
  %i.bmg = load i32, ptr %i.b, align 4, !tbaa !66
  %i.bmh = mul i64 %i.bme, %i.bmf
  %i.bmi = load i32, ptr %i.a, align 4, !tbaa !66 ; 4 uses
  %i.bmj = insertelement <4 x i32> poison, i32 %i.bmg, i64 0
  %i.bmk = shufflevector <4 x i32> %i.bmj, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bml = mul nsw <4 x i32> %i.bmk, %i.blr
  %i.bmm = sext <4 x i32> %i.bml to <4 x i64>
  %i.bmn = insertelement <4 x i64> poison, i64 %i.bmh, i64 0
  %i.bmo = shufflevector <4 x i64> %i.bmn, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.bmp = mul <4 x i64> %i.bmo, %i.bmm           ; 4 uses
  %i.bmq = extractelement <4 x i64> %i.bmp, i64 0
  %invariant.gep8349 = getelementptr i8, ptr %i.bmc, i64 %i.bmq
  %i.bmr = extractelement <4 x i64> %i.bmp, i64 1
  %invariant.gep8354 = getelementptr i8, ptr %i.bmc, i64 %i.bmr
  %i.bms = extractelement <4 x i64> %i.bmp, i64 2
  %invariant.gep8359 = getelementptr i8, ptr %i.bmc, i64 %i.bms
  %i.bmt = extractelement <4 x i64> %i.bmp, i64 3
  %invariant.gep8364 = getelementptr i8, ptr %i.bmc, i64 %i.bmt
  %i.bmu = insertelement <4 x i32> poison, i32 %i.bma, i64 0
  %26 = shufflevector <4 x i32> %i.bmu, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bmv = mul <4 x i32> %26, %.decomposed12460   ; 4 uses
  %27 = extractelement <4 x i32> %i.bmv, i64 0
  %28 = mul i32 %27, %i.bmi
  %29 = sext i32 %28 to i64
  %30 = extractelement <4 x i32> %i.bmv, i64 1
  %31 = mul i32 %30, %i.bmi
  %i.bmw = sext i32 %31 to i64
  %i.bmx = extractelement <4 x i32> %i.bmv, i64 2
  %32 = mul i32 %i.bmx, %i.bmi
  %i.bmy = sext i32 %32 to i64
  %invariant.gep8350 = getelementptr i8, ptr %invariant.gep8349, i64 %29
  %invariant.gep8355 = getelementptr i8, ptr %invariant.gep8354, i64 %i.bmw
  %invariant.gep8360 = getelementptr i8, ptr %invariant.gep8359, i64 %i.bmy
  %i.bmz = extractelement <4 x i32> %i.bmv, i64 3
  %33 = mul i32 %i.bmz, %i.bmi
  %i.bna = sext i32 %33 to i64
  %invariant.gep8365 = getelementptr i8, ptr %invariant.gep8364, i64 %i.bna
  %i.bnb = load i32, ptr %i.f, align 4, !tbaa !66 ; 3 uses
  %i.bnc = icmp sgt i32 %i.bnb, 0
  %i.bnd = load ptr, ptr %i.g, align 8
  %i.bne = add i32 %i.bnb, -1
  %i.bnf = zext i32 %i.bne to i64
  %i.bng = shl nuw nsw i64 %i.bnf, 6
  %wide.trip.count10157 = zext nneg i32 %i.bnb to i64
  br label %.noexc3481

.noexc3481:                                       ; preds = %.noexc3481.lr.ph, %._crit_edge8328
  %.029838339 = phi i32 [ 0, %.noexc3481.lr.ph ], [ %i.bnr, %._crit_edge8328 ] ; 2 uses
  %.029878338 = phi ptr [ %i.bly, %.noexc3481.lr.ph ], [ %.12988.lcssa, %._crit_edge8328 ] ; 3 uses
  %i.bnh = phi <16 x i32> [ zeroinitializer, %.noexc3481.lr.ph ], [ %i.bnq, %._crit_edge8328 ] ; 2 uses
  %i.bni = phi <16 x i32> [ zeroinitializer, %.noexc3481.lr.ph ], [ %i.bnp, %._crit_edge8328 ] ; 2 uses
  %i.bnj = phi <16 x i32> [ zeroinitializer, %.noexc3481.lr.ph ], [ %i.bno, %._crit_edge8328 ] ; 2 uses
  %i.bnk = phi <16 x i32> [ zeroinitializer, %.noexc3481.lr.ph ], [ %i.bnn, %._crit_edge8328 ] ; 2 uses
  %i.bnl = sdiv i32 %.029838339, %i.bma
  %i.bnm = sext i32 %i.bnl to i64
  %.reass8348 = mul i64 %factor.op.mul8347, %i.bnm ; 4 uses
  %gep8351 = getelementptr i8, ptr %invariant.gep8350, i64 %.reass8348
  %gep8356 = getelementptr i8, ptr %invariant.gep8355, i64 %.reass8348
  %gep8361 = getelementptr i8, ptr %invariant.gep8360, i64 %.reass8348
  %gep8366 = getelementptr i8, ptr %invariant.gep8365, i64 %.reass8348
  br i1 %i.bnc, label %.lr.ph8327, label %._crit_edge8328

._crit_edge8328.loopexit:                         ; preds = %bb.ah
  %scevgep10154 = getelementptr i8, ptr %.029878338, i64 64
  %scevgep10155 = getelementptr i8, ptr %scevgep10154, i64 %i.bng
  br label %._crit_edge8328

._crit_edge8328:                                  ; preds = %._crit_edge8328.loopexit, %.noexc3481
  %i.bnn = phi <16 x i32> [ %i.bnk, %.noexc3481 ], [ %i.brb, %._crit_edge8328.loopexit ] ; 2 uses
  %i.bno = phi <16 x i32> [ %i.bnj, %.noexc3481 ], [ %i.brf, %._crit_edge8328.loopexit ] ; 2 uses
  %i.bnp = phi <16 x i32> [ %i.bni, %.noexc3481 ], [ %i.brj, %._crit_edge8328.loopexit ] ; 2 uses
  %i.bnq = phi <16 x i32> [ %i.bnh, %.noexc3481 ], [ %i.brn, %._crit_edge8328.loopexit ] ; 2 uses
  %.12988.lcssa = phi ptr [ %.029878338, %.noexc3481 ], [ %scevgep10155, %._crit_edge8328.loopexit ] ; 2 uses
  %i.bnr = add nuw nsw i32 %.029838339, 16        ; 2 uses
  %i.bns = or disjoint i32 %i.bnr, 15
  %i.bnt = icmp slt i32 %i.bns, %i.blj
  br i1 %i.bnt, label %.noexc3481, label %._crit_edge8340.loopexit, !llvm.loop !1756

.lr.ph8327:                                       ; preds = %.noexc3481, %bb.ah
  %indvars.iv10152 = phi i64 [ %indvars.iv.next10153, %bb.ah ], [ 0, %.noexc3481 ] ; 2 uses
  %.129888325 = phi ptr [ %i.bro, %bb.ah ], [ %.029878338, %.noexc3481 ] ; 2 uses
  %.176538324 = phi <16 x i32> [ %i.brn, %bb.ah ], [ %i.bnh, %.noexc3481 ]
  %.176558323 = phi <16 x i32> [ %i.brj, %bb.ah ], [ %i.bni, %.noexc3481 ]
  %.176578322 = phi <16 x i32> [ %i.brf, %bb.ah ], [ %i.bnj, %.noexc3481 ]
  %.176598321 = phi <16 x i32> [ %i.brb, %bb.ah ], [ %i.bnk, %.noexc3481 ]
  %i.bnu = getelementptr inbounds nuw [4 x i8], ptr %i.bnd, i64 %indvars.iv10152
  %i.bnv = load i32, ptr %i.bnu, align 4, !tbaa !66
  %i.bnw = sext i32 %i.bnv to i64                 ; 4 uses
  %i.bnx = getelementptr inbounds i8, ptr %gep8351, i64 %i.bnw ; 4 uses
  %i.bny = getelementptr inbounds i8, ptr %gep8356, i64 %i.bnw ; 4 uses
  %i.bnz = getelementptr inbounds i8, ptr %gep8361, i64 %i.bnw ; 4 uses
  %i.boa = getelementptr inbounds i8, ptr %gep8366, i64 %i.bnw ; 4 uses
  switch i32 %i.bma, label %bb.ag [
    i32 16, label %bb.ae
    i32 8, label %bb.af
  ]

bb.ae:                                            ; preds = %.lr.ph8327
  %i.bob = load <2 x i64>, ptr %i.bnx, align 16, !tbaa !85
  %i.boc = load <2 x i64>, ptr %i.bny, align 16, !tbaa !85
  %i.bod = load <2 x i64>, ptr %i.bnz, align 16, !tbaa !85
  %i.boe = load <2 x i64>, ptr %i.boa, align 16, !tbaa !85
  br label %bb.ah

bb.af:                                            ; preds = %.lr.ph8327
  %i.bof = load i64, ptr %i.bnx, align 1, !tbaa !85
  %i.bog = insertelement <2 x i64> poison, i64 %i.bof, i64 0
  %i.boh = getelementptr inbounds nuw i8, ptr %i.bnx, i64 %i.bix
  %i.boi = load i64, ptr %i.boh, align 1, !tbaa !85
  %i.boj = load i64, ptr %i.bny, align 1, !tbaa !85
  %i.bok = insertelement <2 x i64> poison, i64 %i.boj, i64 0
  %i.bol = getelementptr inbounds nuw i8, ptr %i.bny, i64 %i.bix
  %i.bom = load i64, ptr %i.bol, align 1, !tbaa !85
  %i.bon = load i64, ptr %i.bnz, align 1, !tbaa !85
  %i.boo = insertelement <2 x i64> poison, i64 %i.bon, i64 0
  %i.bop = getelementptr inbounds nuw i8, ptr %i.bnz, i64 %i.bix
  %i.boq = load i64, ptr %i.bop, align 1, !tbaa !85
  %i.bor = load i64, ptr %i.boa, align 1, !tbaa !85
  %i.bos = insertelement <2 x i64> poison, i64 %i.bor, i64 0
  %i.bot = getelementptr inbounds nuw i8, ptr %i.boa, i64 %i.bix
  %i.bou = load i64, ptr %i.bot, align 1, !tbaa !85
  %i.bov = insertelement <2 x i64> %i.bog, i64 %i.boi, i64 1
  %i.bow = insertelement <2 x i64> %i.bok, i64 %i.bom, i64 1
  %i.box = insertelement <2 x i64> %i.boo, i64 %i.boq, i64 1
  %i.boy = insertelement <2 x i64> %i.bos, i64 %i.bou, i64 1
  br label %bb.ah

bb.ag:                                            ; preds = %.lr.ph8327
  %i.boz = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.bnx, <16 x i32> %i.bjz, <16 x i1> splat (i1 true), i32 1)
  %i.bpa = trunc <16 x i32> %i.boz to <16 x i8>
  %i.bpb = bitcast <16 x i8> %i.bpa to <2 x i64>
  %i.bpc = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.bny, <16 x i32> %i.bjz, <16 x i1> splat (i1 true), i32 1)
  %i.bpd = trunc <16 x i32> %i.bpc to <16 x i8>
  %i.bpe = bitcast <16 x i8> %i.bpd to <2 x i64>
  %i.bpf = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.bnz, <16 x i32> %i.bjz, <16 x i1> splat (i1 true), i32 1)
  %i.bpg = trunc <16 x i32> %i.bpf to <16 x i8>
  %i.bph = bitcast <16 x i8> %i.bpg to <2 x i64>
  %i.bpi = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.boa, <16 x i32> %i.bjz, <16 x i1> splat (i1 true), i32 1)
  %i.bpj = trunc <16 x i32> %i.bpi to <16 x i8>
  %i.bpk = bitcast <16 x i8> %i.bpj to <2 x i64>
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  %.02981 = phi <2 x i64> [ %i.bob, %bb.ae ], [ %i.bov, %bb.af ], [ %i.bpb, %bb.ag ]
  %.02980 = phi <2 x i64> [ %i.boc, %bb.ae ], [ %i.bow, %bb.af ], [ %i.bpe, %bb.ag ]
  %.02979 = phi <2 x i64> [ %i.bod, %bb.ae ], [ %i.box, %bb.af ], [ %i.bph, %bb.ag ]
  %.02978 = phi <2 x i64> [ %i.boe, %bb.ae ], [ %i.boy, %bb.af ], [ %i.bpk, %bb.ag ]
  %i.bpl = bitcast <2 x i64> %.02981 to <16 x i8>
  %i.bpm = sext <16 x i8> %i.bpl to <16 x i16>
  %i.bpn = bitcast <2 x i64> %.02980 to <16 x i8>
  %i.bpo = sext <16 x i8> %i.bpn to <16 x i16>
  %i.bpp = bitcast <2 x i64> %.02979 to <16 x i8>
  %i.bpq = sext <16 x i8> %i.bpp to <16 x i16>
  %i.bpr = bitcast <2 x i64> %.02978 to <16 x i8>
  %i.bps = sext <16 x i8> %i.bpr to <16 x i16>
  %i.bpt = load <8 x i64>, ptr %.129888325, align 64, !tbaa !85 ; 2 uses
  %i.bpu = bitcast <8 x i64> %i.bpt to <64 x i8>
  %i.bpv = shufflevector <64 x i8> %i.bpu, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bpw = sext <32 x i8> %i.bpv to <32 x i16>    ; 4 uses
  %i.bpx = bitcast <8 x i64> %i.bpt to <64 x i8>
  %i.bpy = shufflevector <64 x i8> %i.bpx, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.bpz = sext <32 x i8> %i.bpy to <32 x i16>    ; 4 uses
  %i.bqa = bitcast <16 x i16> %i.bpm to <8 x i32>
  %i.bqb = bitcast <16 x i16> %i.bpo to <8 x i32>
  %i.bqc = bitcast <16 x i16> %i.bpq to <8 x i32>
  %i.bqd = bitcast <16 x i16> %i.bps to <8 x i32>
  %i.bqe = shufflevector <8 x i32> %i.bqa, <8 x i32> poison, <16 x i32> <i32 0, i32 2, i32 poison, i32 poison, i32 4, i32 6, i32 poison, i32 poison, i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison> ; 2 uses
  %i.bqf = shufflevector <8 x i32> %i.bqb, <8 x i32> poison, <16 x i32> <i32 0, i32 2, i32 poison, i32 poison, i32 4, i32 6, i32 poison, i32 poison, i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison> ; 2 uses
  %i.bqg = shufflevector <8 x i32> %i.bqc, <8 x i32> poison, <16 x i32> <i32 0, i32 2, i32 poison, i32 poison, i32 4, i32 6, i32 poison, i32 poison, i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison> ; 2 uses
  %i.bqh = shufflevector <8 x i32> %i.bqd, <8 x i32> poison, <16 x i32> <i32 0, i32 2, i32 poison, i32 poison, i32 4, i32 6, i32 poison, i32 poison, i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison> ; 2 uses
  %i.bqi = shufflevector <16 x i32> %i.bqe, <16 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 1, i32 1, i32 1, i32 1, i32 9, i32 9, i32 9, i32 9>
  %i.bqj = bitcast <16 x i32> %i.bqi to <32 x i16>
  %i.bqk = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.bqj, <32 x i16> %i.bpw)
  %i.bql = add <16 x i32> %i.bqk, %.176598321
  %i.bqm = shufflevector <16 x i32> %i.bqf, <16 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 1, i32 1, i32 1, i32 1, i32 9, i32 9, i32 9, i32 9>
  %i.bqn = bitcast <16 x i32> %i.bqm to <32 x i16>
  %i.bqo = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.bqn, <32 x i16> %i.bpw)
  %i.bqp = add <16 x i32> %i.bqo, %.176578322
  %i.bqq = shufflevector <16 x i32> %i.bqg, <16 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 1, i32 1, i32 1, i32 1, i32 9, i32 9, i32 9, i32 9>
  %i.bqr = bitcast <16 x i32> %i.bqq to <32 x i16>
  %i.bqs = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.bqr, <32 x i16> %i.bpw)
  %i.bqt = add <16 x i32> %i.bqs, %.176558323
  %i.bqu = shufflevector <16 x i32> %i.bqh, <16 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 1, i32 1, i32 1, i32 1, i32 9, i32 9, i32 9, i32 9>
  %i.bqv = bitcast <16 x i32> %i.bqu to <32 x i16>
  %i.bqw = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.bqv, <32 x i16> %i.bpw)
  %i.bqx = add <16 x i32> %i.bqw, %.176538324
  %i.bqy = shufflevector <16 x i32> %i.bqe, <16 x i32> poison, <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 12, i32 12, i32 12, i32 12, i32 5, i32 5, i32 5, i32 5, i32 13, i32 13, i32 13, i32 13>
  %i.bqz = bitcast <16 x i32> %i.bqy to <32 x i16>
  %i.bra = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.bqz, <32 x i16> %i.bpz)
  %i.brb = add <16 x i32> %i.bql, %i.bra          ; 2 uses
  %i.brc = shufflevector <16 x i32> %i.bqf, <16 x i32> poison, <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 12, i32 12, i32 12, i32 12, i32 5, i32 5, i32 5, i32 5, i32 13, i32 13, i32 13, i32 13>
  %i.brd = bitcast <16 x i32> %i.brc to <32 x i16>
  %i.bre = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.brd, <32 x i16> %i.bpz)
  %i.brf = add <16 x i32> %i.bqp, %i.bre          ; 2 uses
  %i.brg = shufflevector <16 x i32> %i.bqg, <16 x i32> poison, <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 12, i32 12, i32 12, i32 12, i32 5, i32 5, i32 5, i32 5, i32 13, i32 13, i32 13, i32 13>
  %i.brh = bitcast <16 x i32> %i.brg to <32 x i16>
  %i.bri = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.brh, <32 x i16> %i.bpz)
  %i.brj = add <16 x i32> %i.bqt, %i.bri          ; 2 uses
  %i.brk = shufflevector <16 x i32> %i.bqh, <16 x i32> poison, <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 12, i32 12, i32 12, i32 12, i32 5, i32 5, i32 5, i32 5, i32 13, i32 13, i32 13, i32 13>
  %i.brl = bitcast <16 x i32> %i.brk to <32 x i16>
  %i.brm = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.brl, <32 x i16> %i.bpz)
  %i.brn = add <16 x i32> %i.bqx, %i.brm          ; 2 uses
  %i.bro = getelementptr inbounds nuw i8, ptr %.129888325, i64 64
  %indvars.iv.next10153 = add nuw nsw i64 %indvars.iv10152, 1 ; 2 uses
  %exitcond10158.not = icmp eq i64 %indvars.iv.next10153, %wide.trip.count10157
  br i1 %exitcond10158.not, label %._crit_edge8328.loopexit, label %.lr.ph8327, !llvm.loop !1757

._crit_edge8340.loopexit:                         ; preds = %._crit_edge8328
  %i.brp = and i32 %i.blj, 2147483632
  %.pre10639 = load i32, ptr %i.d, align 4, !tbaa !66
  br label %._crit_edge8340

._crit_edge8340:                                  ; preds = %._crit_edge8340.loopexit, %.noexc3483
  %i.brq = phi i32 [ %i.blj, %.noexc3483 ], [ %.pre10639, %._crit_edge8340.loopexit ] ; 3 uses
  %i.brr = phi <16 x i32> [ zeroinitializer, %.noexc3483 ], [ %i.bnn, %._crit_edge8340.loopexit ] ; 2 uses
  %i.brs = phi <16 x i32> [ zeroinitializer, %.noexc3483 ], [ %i.bno, %._crit_edge8340.loopexit ] ; 2 uses
  %i.brt = phi <16 x i32> [ zeroinitializer, %.noexc3483 ], [ %i.bnp, %._crit_edge8340.loopexit ] ; 2 uses
  %i.bru = phi <16 x i32> [ zeroinitializer, %.noexc3483 ], [ %i.bnq, %._crit_edge8340.loopexit ] ; 2 uses
  %.02987.lcssa = phi ptr [ %i.bly, %.noexc3483 ], [ %.12988.lcssa, %._crit_edge8340.loopexit ] ; 2 uses
  %.02983.lcssa = phi i32 [ 0, %.noexc3483 ], [ %i.brp, %._crit_edge8340.loopexit ] ; 3 uses
  %i.brv = shufflevector <16 x i32> %i.brr, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.brw = shufflevector <16 x i32> %i.brr, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.brx = add <8 x i32> %i.brv, %i.brw           ; 2 uses
  %i.bry = shufflevector <16 x i32> %i.brs, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.brz = shufflevector <16 x i32> %i.brs, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bsa = add <8 x i32> %i.bry, %i.brz           ; 2 uses
  %i.bsb = shufflevector <16 x i32> %i.brt, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bsc = shufflevector <16 x i32> %i.brt, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bsd = add <8 x i32> %i.bsb, %i.bsc           ; 2 uses
  %i.bse = shufflevector <16 x i32> %i.bru, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bsf = shufflevector <16 x i32> %i.bru, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bsg = add <8 x i32> %i.bse, %i.bsf           ; 2 uses
  %i.bsh = shufflevector <8 x i32> %i.brx, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bsi = shufflevector <8 x i32> %i.brx, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bsj = shufflevector <8 x i32> %i.bsa, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bsk = shufflevector <8 x i32> %i.bsa, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bsl = shufflevector <8 x i32> %i.bsd, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bsm = shufflevector <8 x i32> %i.bsd, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bsn = shufflevector <8 x i32> %i.bsg, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bso = shufflevector <8 x i32> %i.bsg, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bsp = or disjoint i32 %.02983.lcssa, 7
  %i.bsq = icmp slt i32 %i.bsp, %i.brq
  br i1 %i.bsq, label %.noexc3473.lr.ph, label %._crit_edge8391

.noexc3473.lr.ph:                                 ; preds = %._crit_edge8340
  %i.bsr = load i32, ptr %i.c, align 4, !tbaa !66 ; 3 uses
  %i.bss = load i32, ptr %i.l, align 4, !tbaa !74, !noalias !1965
  %i.bst = load ptr, ptr %0, align 8, !tbaa !22, !noalias !1965 ; 4 uses
  %i.bsu = load i64, ptr %i.s, align 8, !tbaa !23, !noalias !1965
  %i.bsv = load i64, ptr %i.cu, align 8, !tbaa !64, !noalias !1965 ; 2 uses
  %factor.op.mul8398 = mul i64 %i.bsu, %i.bsv
  %i.bsw = sext i32 %i.bss to i64
  %i.bsx = load i32, ptr %i.b, align 4, !tbaa !66
  %i.bsy = mul i64 %i.bsv, %i.bsw
  %i.bsz = load i32, ptr %i.a, align 4, !tbaa !66 ; 4 uses
  %i.bta = insertelement <4 x i32> poison, i32 %i.bsx, i64 0
  %i.btb = shufflevector <4 x i32> %i.bta, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.btc = mul nsw <4 x i32> %i.btb, %i.blr
  %i.btd = sext <4 x i32> %i.btc to <4 x i64>
  %i.bte = insertelement <4 x i64> poison, i64 %i.bsy, i64 0
  %i.btf = shufflevector <4 x i64> %i.bte, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.btg = mul <4 x i64> %i.btf, %i.btd           ; 4 uses
  %i.bth = extractelement <4 x i64> %i.btg, i64 0
  %invariant.gep8400 = getelementptr i8, ptr %i.bst, i64 %i.bth
  %i.bti = extractelement <4 x i64> %i.btg, i64 1
  %invariant.gep8405 = getelementptr i8, ptr %i.bst, i64 %i.bti
  %i.btj = extractelement <4 x i64> %i.btg, i64 2
  %invariant.gep8410 = getelementptr i8, ptr %i.bst, i64 %i.btj
  %i.btk = extractelement <4 x i64> %i.btg, i64 3
  %invariant.gep8415 = getelementptr i8, ptr %i.bst, i64 %i.btk
  %i.btl = insertelement <4 x i32> poison, i32 %i.bsr, i64 0
  %34 = shufflevector <4 x i32> %i.btl, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.btm = mul <4 x i32> %34, %.decomposed12460   ; 4 uses
  %35 = extractelement <4 x i32> %i.btm, i64 0
  %36 = mul i32 %35, %i.bsz
  %37 = sext i32 %36 to i64
  %38 = extractelement <4 x i32> %i.btm, i64 1
  %39 = mul i32 %38, %i.bsz
  %i.btn = sext i32 %39 to i64
  %i.bto = extractelement <4 x i32> %i.btm, i64 2
  %40 = mul i32 %i.bto, %i.bsz
  %i.btp = sext i32 %40 to i64
  %invariant.gep8401 = getelementptr i8, ptr %invariant.gep8400, i64 %37
  %invariant.gep8406 = getelementptr i8, ptr %invariant.gep8405, i64 %i.btn
  %invariant.gep8411 = getelementptr i8, ptr %invariant.gep8410, i64 %i.btp
  %i.btq = extractelement <4 x i32> %i.btm, i64 3
  %41 = mul i32 %i.btq, %i.bsz
  %i.btr = sext i32 %41 to i64
  %invariant.gep8416 = getelementptr i8, ptr %invariant.gep8415, i64 %i.btr
  %i.bts = load i32, ptr %i.f, align 4, !tbaa !66 ; 4 uses
  %i.btt = icmp sgt i32 %i.bts, 0
  %i.btu = load ptr, ptr %i.g, align 8            ; 2 uses
  %i.btv = icmp eq i32 %i.bsr, 8
  %i.btw = add i32 %i.bts, -1
  %i.btx = zext i32 %i.btw to i64
  %i.bty = shl nuw nsw i64 %i.btx, 5              ; 2 uses
  %wide.trip.count10164 = zext nneg i32 %i.bts to i64
  %wide.trip.count10171 = zext nneg i32 %i.bts to i64
  br label %.noexc3473

.noexc3473:                                       ; preds = %.noexc3473.lr.ph, %._crit_edge8374
  %.129848390 = phi i32 [ %.02983.lcssa, %.noexc3473.lr.ph ], [ %i.bwu, %._crit_edge8374 ] ; 2 uses
  %.229898389 = phi ptr [ %.02987.lcssa, %.noexc3473.lr.ph ], [ %.32990.lcssa, %._crit_edge8374 ] ; 5 uses
  %i.btz = phi <8 x i32> [ zeroinitializer, %.noexc3473.lr.ph ], [ %i.bwt, %._crit_edge8374 ] ; 3 uses
  %i.bua = phi <8 x i32> [ zeroinitializer, %.noexc3473.lr.ph ], [ %i.bws, %._crit_edge8374 ] ; 3 uses
  %i.bub = phi <8 x i32> [ zeroinitializer, %.noexc3473.lr.ph ], [ %i.bwr, %._crit_edge8374 ] ; 3 uses
  %i.buc = phi <8 x i32> [ zeroinitializer, %.noexc3473.lr.ph ], [ %i.bwq, %._crit_edge8374 ] ; 3 uses
  %i.bud = sdiv i32 %.129848390, %i.bsr
  %i.bue = sext i32 %i.bud to i64
  %.reass8399 = mul i64 %factor.op.mul8398, %i.bue ; 4 uses
  %gep8402 = getelementptr i8, ptr %invariant.gep8401, i64 %.reass8399 ; 2 uses
  %gep8407 = getelementptr i8, ptr %invariant.gep8406, i64 %.reass8399 ; 2 uses
  %gep8412 = getelementptr i8, ptr %invariant.gep8411, i64 %.reass8399 ; 2 uses
  %gep8417 = getelementptr i8, ptr %invariant.gep8416, i64 %.reass8399 ; 2 uses
  br i1 %i.btt, label %.lr.ph8373, label %._crit_edge8374

.lr.ph8373:                                       ; preds = %.noexc3473
  br i1 %i.btv, label %.lr.ph8373.split.us, label %.lr.ph8373.split

.lr.ph8373.split.us:                              ; preds = %.lr.ph8373, %.lr.ph8373.split.us
  %indvars.iv10166 = phi i64 [ %indvars.iv.next10167, %.lr.ph8373.split.us ], [ 0, %.lr.ph8373 ] ; 2 uses
  %.329908371.us = phi ptr [ %i.bwp, %.lr.ph8373.split.us ], [ %.229898389, %.lr.ph8373 ] ; 2 uses
  %.176458370.us = phi <8 x i32> [ %i.bwo, %.lr.ph8373.split.us ], [ %i.btz, %.lr.ph8373 ]
  %.176478369.us = phi <8 x i32> [ %i.bwk, %.lr.ph8373.split.us ], [ %i.bua, %.lr.ph8373 ]
  %.176498368.us = phi <8 x i32> [ %i.bwg, %.lr.ph8373.split.us ], [ %i.bub, %.lr.ph8373 ]
  %.176518367.us = phi <8 x i32> [ %i.bwc, %.lr.ph8373.split.us ], [ %i.buc, %.lr.ph8373 ]
  %i.buf = getelementptr inbounds nuw [4 x i8], ptr %i.btu, i64 %indvars.iv10166
  %i.bug = load i32, ptr %i.buf, align 4, !tbaa !66
  %i.buh = sext i32 %i.bug to i64                 ; 4 uses
  %i.bui = getelementptr inbounds i8, ptr %gep8402, i64 %i.buh
  %i.buj = getelementptr inbounds i8, ptr %gep8407, i64 %i.buh
  %i.buk = getelementptr inbounds i8, ptr %gep8412, i64 %i.buh
  %i.bul = getelementptr inbounds i8, ptr %gep8417, i64 %i.buh
  %i.bum = load <8 x i8>, ptr %i.bui, align 1, !tbaa !85
  %i.bun = load <8 x i8>, ptr %i.buj, align 1, !tbaa !85
  %i.buo = load <8 x i8>, ptr %i.buk, align 1, !tbaa !85
  %i.bup = load <8 x i8>, ptr %i.bul, align 1, !tbaa !85
  %i.buq = sext <8 x i8> %i.bum to <8 x i16>      ; 2 uses
  %i.bur = sext <8 x i8> %i.bun to <8 x i16>      ; 2 uses
  %i.bus = sext <8 x i8> %i.buo to <8 x i16>      ; 2 uses
  %i.but = sext <8 x i8> %i.bup to <8 x i16>      ; 2 uses
  %i.buu = load <4 x i64>, ptr %.329908371.us, align 32, !tbaa !85 ; 2 uses
  %i.buv = bitcast <4 x i64> %i.buu to <32 x i8>
  %i.buw = shufflevector <32 x i8> %i.buv, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bux = sext <16 x i8> %i.buw to <16 x i16>    ; 4 uses
  %i.buy = bitcast <4 x i64> %i.buu to <32 x i8>
  %i.buz = shufflevector <32 x i8> %i.buy, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bva = sext <16 x i8> %i.buz to <16 x i16>    ; 4 uses
  %i.bvb = bitcast <8 x i16> %i.buq to <4 x i32>  ; 2 uses
  %i.bvc = bitcast <8 x i16> %i.bur to <4 x i32>  ; 2 uses
  %i.bvd = bitcast <8 x i16> %i.bus to <4 x i32>  ; 2 uses
  %i.bve = bitcast <8 x i16> %i.but to <4 x i32>  ; 2 uses
  %i.bvf = bitcast <8 x i16> %i.buq to <4 x i32>  ; 2 uses
  %i.bvg = shufflevector <4 x i32> %i.bvf, <4 x i32> %i.bvb, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 5, i32 5, i32 5, i32 5>
  %i.bvh = bitcast <8 x i32> %i.bvg to <16 x i16>
  %i.bvi = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.bvh, <16 x i16> %i.bux)
  %i.bvj = add <8 x i32> %i.bvi, %.176518367.us
  %i.bvk = bitcast <8 x i16> %i.bur to <4 x i32>  ; 2 uses
  %i.bvl = shufflevector <4 x i32> %i.bvk, <4 x i32> %i.bvc, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 5, i32 5, i32 5, i32 5>
  %i.bvm = bitcast <8 x i32> %i.bvl to <16 x i16>
  %i.bvn = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.bvm, <16 x i16> %i.bux)
  %i.bvo = add <8 x i32> %i.bvn, %.176498368.us
  %i.bvp = bitcast <8 x i16> %i.bus to <4 x i32>  ; 2 uses
  %i.bvq = shufflevector <4 x i32> %i.bvp, <4 x i32> %i.bvd, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 5, i32 5, i32 5, i32 5>
  %i.bvr = bitcast <8 x i32> %i.bvq to <16 x i16>
  %i.bvs = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.bvr, <16 x i16> %i.bux)
  %i.bvt = add <8 x i32> %i.bvs, %.176478369.us
  %i.bvu = bitcast <8 x i16> %i.but to <4 x i32>  ; 2 uses
  %i.bvv = shufflevector <4 x i32> %i.bvu, <4 x i32> %i.bve, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 5, i32 5, i32 5, i32 5>
  %i.bvw = bitcast <8 x i32> %i.bvv to <16 x i16>
  %i.bvx = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.bvw, <16 x i16> %i.bux)
  %i.bvy = add <8 x i32> %i.bvx, %.176458370.us
  %i.bvz = shufflevector <4 x i32> %i.bvf, <4 x i32> %i.bvb, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 7, i32 7, i32 7, i32 7>
  %i.bwa = bitcast <8 x i32> %i.bvz to <16 x i16>
  %i.bwb = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.bwa, <16 x i16> %i.bva)
  %i.bwc = add <8 x i32> %i.bvj, %i.bwb           ; 2 uses
  %i.bwd = shufflevector <4 x i32> %i.bvk, <4 x i32> %i.bvc, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 7, i32 7, i32 7, i32 7>
  %i.bwe = bitcast <8 x i32> %i.bwd to <16 x i16>
  %i.bwf = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.bwe, <16 x i16> %i.bva)
  %i.bwg = add <8 x i32> %i.bvo, %i.bwf           ; 2 uses
  %i.bwh = shufflevector <4 x i32> %i.bvp, <4 x i32> %i.bvd, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 7, i32 7, i32 7, i32 7>
  %i.bwi = bitcast <8 x i32> %i.bwh to <16 x i16>
  %i.bwj = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.bwi, <16 x i16> %i.bva)
  %i.bwk = add <8 x i32> %i.bvt, %i.bwj           ; 2 uses
  %i.bwl = shufflevector <4 x i32> %i.bvu, <4 x i32> %i.bve, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 7, i32 7, i32 7, i32 7>
  %i.bwm = bitcast <8 x i32> %i.bwl to <16 x i16>
  %i.bwn = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.bwm, <16 x i16> %i.bva)
  %i.bwo = add <8 x i32> %i.bvy, %i.bwn           ; 2 uses
  %i.bwp = getelementptr inbounds nuw i8, ptr %.329908371.us, i64 32
  %indvars.iv.next10167 = add nuw nsw i64 %indvars.iv10166, 1 ; 2 uses
  %exitcond10172.not = icmp eq i64 %indvars.iv.next10167, %wide.trip.count10171
  br i1 %exitcond10172.not, label %._crit_edge8374.loopexit, label %.lr.ph8373.split.us, !llvm.loop !1760

._crit_edge8374.loopexit:                         ; preds = %.lr.ph8373.split.us
  %scevgep10168 = getelementptr i8, ptr %.229898389, i64 32
  %scevgep10169 = getelementptr i8, ptr %scevgep10168, i64 %i.bty
  br label %._crit_edge8374

._crit_edge8374.loopexit9686:                     ; preds = %.lr.ph8373.split
  %scevgep10161 = getelementptr i8, ptr %.229898389, i64 32
  %scevgep10162 = getelementptr i8, ptr %scevgep10161, i64 %i.bty
  br label %._crit_edge8374

._crit_edge8374:                                  ; preds = %._crit_edge8374.loopexit9686, %._crit_edge8374.loopexit, %.noexc3473
  %i.bwq = phi <8 x i32> [ %i.buc, %.noexc3473 ], [ %i.bwc, %._crit_edge8374.loopexit ], [ %i.byy, %._crit_edge8374.loopexit9686 ] ; 2 uses
  %i.bwr = phi <8 x i32> [ %i.bub, %.noexc3473 ], [ %i.bwg, %._crit_edge8374.loopexit ], [ %i.bzc, %._crit_edge8374.loopexit9686 ] ; 2 uses
  %i.bws = phi <8 x i32> [ %i.bua, %.noexc3473 ], [ %i.bwk, %._crit_edge8374.loopexit ], [ %i.bzg, %._crit_edge8374.loopexit9686 ] ; 2 uses
  %i.bwt = phi <8 x i32> [ %i.btz, %.noexc3473 ], [ %i.bwo, %._crit_edge8374.loopexit ], [ %i.bzk, %._crit_edge8374.loopexit9686 ] ; 2 uses
  %.32990.lcssa = phi ptr [ %.229898389, %.noexc3473 ], [ %scevgep10169, %._crit_edge8374.loopexit ], [ %scevgep10162, %._crit_edge8374.loopexit9686 ] ; 2 uses
  %i.bwu = add nuw nsw i32 %.129848390, 8         ; 3 uses
  %i.bwv = or disjoint i32 %i.bwu, 7
  %i.bww = icmp slt i32 %i.bwv, %i.brq
  br i1 %i.bww, label %.noexc3473, label %._crit_edge8391.loopexit, !llvm.loop !1761

.lr.ph8373.split:                                 ; preds = %.lr.ph8373, %.lr.ph8373.split
  %indvars.iv10159 = phi i64 [ %indvars.iv.next10160, %.lr.ph8373.split ], [ 0, %.lr.ph8373 ] ; 2 uses
  %.329908371 = phi ptr [ %i.bzl, %.lr.ph8373.split ], [ %.229898389, %.lr.ph8373 ] ; 2 uses
  %.176458370 = phi <8 x i32> [ %i.bzk, %.lr.ph8373.split ], [ %i.btz, %.lr.ph8373 ]
  %.176478369 = phi <8 x i32> [ %i.bzg, %.lr.ph8373.split ], [ %i.bua, %.lr.ph8373 ]
  %.176498368 = phi <8 x i32> [ %i.bzc, %.lr.ph8373.split ], [ %i.bub, %.lr.ph8373 ]
  %.176518367 = phi <8 x i32> [ %i.byy, %.lr.ph8373.split ], [ %i.buc, %.lr.ph8373 ]
  %i.bwx = getelementptr inbounds nuw [4 x i8], ptr %i.btu, i64 %indvars.iv10159
  %i.bwy = load i32, ptr %i.bwx, align 4, !tbaa !66
  %i.bwz = sext i32 %i.bwy to i64                 ; 4 uses
  %i.bxa = getelementptr inbounds i8, ptr %gep8402, i64 %i.bwz
  %i.bxb = getelementptr inbounds i8, ptr %gep8407, i64 %i.bwz
  %i.bxc = getelementptr inbounds i8, ptr %gep8412, i64 %i.bwz
  %i.bxd = getelementptr inbounds i8, ptr %gep8417, i64 %i.bwz
  %i.bxe = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.bxa, <8 x i32> %i.bkc, <8 x i32> splat (i32 -1), i8 1)
  %i.bxf = trunc <8 x i32> %i.bxe to <8 x i8>
  %i.bxg = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.bxb, <8 x i32> %i.bkc, <8 x i32> splat (i32 -1), i8 1)
  %i.bxh = trunc <8 x i32> %i.bxg to <8 x i8>
  %i.bxi = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.bxc, <8 x i32> %i.bkc, <8 x i32> splat (i32 -1), i8 1)
  %i.bxj = trunc <8 x i32> %i.bxi to <8 x i8>
  %i.bxk = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.bxd, <8 x i32> %i.bkc, <8 x i32> splat (i32 -1), i8 1)
  %i.bxl = trunc <8 x i32> %i.bxk to <8 x i8>
  %i.bxm = sext <8 x i8> %i.bxf to <8 x i16>      ; 2 uses
  %i.bxn = sext <8 x i8> %i.bxh to <8 x i16>      ; 2 uses
  %i.bxo = sext <8 x i8> %i.bxj to <8 x i16>      ; 2 uses
  %i.bxp = sext <8 x i8> %i.bxl to <8 x i16>      ; 2 uses
  %i.bxq = load <4 x i64>, ptr %.329908371, align 32, !tbaa !85 ; 2 uses
  %i.bxr = bitcast <4 x i64> %i.bxq to <32 x i8>
  %i.bxs = shufflevector <32 x i8> %i.bxr, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bxt = sext <16 x i8> %i.bxs to <16 x i16>    ; 4 uses
  %i.bxu = bitcast <4 x i64> %i.bxq to <32 x i8>
  %i.bxv = shufflevector <32 x i8> %i.bxu, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bxw = sext <16 x i8> %i.bxv to <16 x i16>    ; 4 uses
  %i.bxx = bitcast <8 x i16> %i.bxm to <4 x i32>  ; 2 uses
  %i.bxy = bitcast <8 x i16> %i.bxn to <4 x i32>  ; 2 uses
  %i.bxz = bitcast <8 x i16> %i.bxo to <4 x i32>  ; 2 uses
  %i.bya = bitcast <8 x i16> %i.bxp to <4 x i32>  ; 2 uses
  %i.byb = bitcast <8 x i16> %i.bxm to <4 x i32>  ; 2 uses
  %i.byc = shufflevector <4 x i32> %i.byb, <4 x i32> %i.bxx, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 5, i32 5, i32 5, i32 5>
  %i.byd = bitcast <8 x i32> %i.byc to <16 x i16>
  %i.bye = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.byd, <16 x i16> %i.bxt)
  %i.byf = add <8 x i32> %i.bye, %.176518367
  %i.byg = bitcast <8 x i16> %i.bxn to <4 x i32>  ; 2 uses
  %i.byh = shufflevector <4 x i32> %i.byg, <4 x i32> %i.bxy, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 5, i32 5, i32 5, i32 5>
  %i.byi = bitcast <8 x i32> %i.byh to <16 x i16>
  %i.byj = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.byi, <16 x i16> %i.bxt)
  %i.byk = add <8 x i32> %i.byj, %.176498368
  %i.byl = bitcast <8 x i16> %i.bxo to <4 x i32>  ; 2 uses
  %i.bym = shufflevector <4 x i32> %i.byl, <4 x i32> %i.bxz, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 5, i32 5, i32 5, i32 5>
  %i.byn = bitcast <8 x i32> %i.bym to <16 x i16>
  %i.byo = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.byn, <16 x i16> %i.bxt)
  %i.byp = add <8 x i32> %i.byo, %.176478369
  %i.byq = bitcast <8 x i16> %i.bxp to <4 x i32>  ; 2 uses
  %i.byr = shufflevector <4 x i32> %i.byq, <4 x i32> %i.bya, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 5, i32 5, i32 5, i32 5>
  %i.bys = bitcast <8 x i32> %i.byr to <16 x i16>
  %i.byt = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.bys, <16 x i16> %i.bxt)
  %i.byu = add <8 x i32> %i.byt, %.176458370
  %i.byv = shufflevector <4 x i32> %i.byb, <4 x i32> %i.bxx, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 7, i32 7, i32 7, i32 7>
  %i.byw = bitcast <8 x i32> %i.byv to <16 x i16>
  %i.byx = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.byw, <16 x i16> %i.bxw)
  %i.byy = add <8 x i32> %i.byf, %i.byx           ; 2 uses
  %i.byz = shufflevector <4 x i32> %i.byg, <4 x i32> %i.bxy, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 7, i32 7, i32 7, i32 7>
  %i.bza = bitcast <8 x i32> %i.byz to <16 x i16>
  %i.bzb = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.bza, <16 x i16> %i.bxw)
  %i.bzc = add <8 x i32> %i.byk, %i.bzb           ; 2 uses
  %i.bzd = shufflevector <4 x i32> %i.byl, <4 x i32> %i.bxz, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 7, i32 7, i32 7, i32 7>
  %i.bze = bitcast <8 x i32> %i.bzd to <16 x i16>
  %i.bzf = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.bze, <16 x i16> %i.bxw)
  %i.bzg = add <8 x i32> %i.byp, %i.bzf           ; 2 uses
  %i.bzh = shufflevector <4 x i32> %i.byq, <4 x i32> %i.bya, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 7, i32 7, i32 7, i32 7>
  %i.bzi = bitcast <8 x i32> %i.bzh to <16 x i16>
  %i.bzj = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.bzi, <16 x i16> %i.bxw)
  %i.bzk = add <8 x i32> %i.byu, %i.bzj           ; 2 uses
  %i.bzl = getelementptr inbounds nuw i8, ptr %.329908371, i64 32
end_hunk_1
begin_hunk_2_@_ZN4ncnnL28convolution_im2col_gemm_int8ERKNS_3MatERS0_S2_iiiiiiiRKNS_6OptionE.omp_outlined.14:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.bs

bb.bs:                                            ; preds = %._crit_edge172, %bb.a
  ret void

.loopexit:                                        ; preds = %.noexc
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bt

.loopexit.split-lp:                               ; preds = %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bt

bb.bt:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bnl = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.bnl) #36
  unreachable
}

declare void @_ZN4ncnn45convolution_im2col_input_tile_int8_avx512vnniERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn46convolution_im2col_input_tile_int8_avxvnniint8ERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn42convolution_im2col_input_tile_int8_avxvnniERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i64> @llvm.x86.avx512.mask.gather.dpq.512(<8 x i64>, ptr, <8 x i32>, <8 x i1>, i32 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x i64> @llvm.x86.avx2.gather.d.q.256(<4 x i64>, ptr, <4 x i32>, <4 x i64>, i8 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.psrl.d.512(<16 x i32>, <4 x i32>) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx2.psrl.d(<8 x i32>, <4 x i32>) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32>, <4 x i32>) #22

declare void @_ZN4ncnn23Gemm_x86_avx512_utility28gemm_transB_packed_tile_int8ERKNS_3MatES3_RS1_iiiiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn34convolution_packed_int8_avx512vnniERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare void @_ZN4ncnn31convolution_packed_int8_avxvnniERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %12) #15 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !66     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.ax

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !66
  %i.h = load i32, ptr %0, align 4, !tbaa !66     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !66
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !66
  %i.k = load i32, ptr %i.a, align 4, !tbaa !66   ; 2 uses
  %.not2579 = icmp sgt i32 %i.k, %i.j
  br i1 %.not2579, label %._crit_edge2581, label %_ZN4ncnn3MatD2Ev.exit889.lr.ph

_ZN4ncnn3MatD2Ev.exit889.lr.ph:                   ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 13 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 12 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 12 uses
  %i.u = sext i32 %i.k to i64
  br label %_ZN4ncnn3MatD2Ev.exit889

_ZN4ncnn3MatD2Ev.exit889:                         ; preds = %_ZN4ncnn3MatD2Ev.exit889.lr.ph, %._crit_edge2578
  %indvars.iv2776 = phi i64 [ %i.u, %_ZN4ncnn3MatD2Ev.exit889.lr.ph ], [ %indvars.iv.next2777, %._crit_edge2578 ] ; 6 uses
  %i.v = load i32, ptr %i.l, align 4, !tbaa !74   ; 5 uses
  %i.w = load i32, ptr %i.m, align 8, !tbaa !75
  %i.x = load i64, ptr %i.n, align 8, !tbaa !23
  %i.y = load i32, ptr %5, align 4, !tbaa !66
  %i.z = sext i32 %i.y to i64
  %i.aa = mul i64 %i.x, %i.z                      ; 19 uses
  %i.ab = load i64, ptr %i.o, align 8, !tbaa !23  ; 2 uses
  %i.ac = load i32, ptr %6, align 4, !tbaa !66    ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = mul i64 %i.ab, %i.ad                    ; 15 uses
  %indvars.iv2776.tr = trunc nsw i64 %indvars.iv2776 to i32
  %i.af = shl nsw i32 %indvars.iv2776.tr, 4
  %i.ag = sdiv i32 %i.af, %i.ac
  %i.ah = load ptr, ptr %3, align 8, !tbaa !22, !noalias !2508
  %i.ai = sext i32 %i.ag to i64
  %i.aj = mul i64 %i.ab, %i.ai
  %i.ak = load i64, ptr %i.p, align 8, !tbaa !64, !noalias !2508
  %i.al = mul i64 %i.aj, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.al ; 2 uses
  %i.an = mul nsw i32 %i.w, %i.v                  ; 6 uses
  %i.ao = icmp sgt i32 %i.an, 3
  br i1 %i.ao, label %.noexc857.lr.ph, label %.preheader2146

.noexc857.lr.ph:                                  ; preds = %_ZN4ncnn3MatD2Ev.exit889
  %i.ap = trunc i64 %i.aa to i32                  ; 2 uses
  %i.aq = insertelement <16 x i32> poison, i32 %i.ap, i64 0
  %i.ar = shufflevector <16 x i32> %i.aq, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.as = mul <16 x i32> %i.ar, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.at = insertelement <8 x i32> poison, i32 %i.ap, i64 0
  %i.au = shufflevector <8 x i32> %i.at, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.av = mul <8 x i32> %i.au, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %.idx797 = shl i64 %i.ae, 3
  %.idx798 = mul i64 %i.ae, 12
  %i.aw = trunc i64 %i.ae to i32
  %i.ax = insertelement <16 x i32> poison, i32 %i.aw, i64 0
  %i.ay = shufflevector <16 x i32> %i.ax, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.az = mul <16 x i32> %i.ay, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.ba = insertelement <4 x i32> poison, i32 %i.v, i64 0
  %i.bb = shufflevector <4 x i32> %i.ba, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %.noexc857

.preheader2146:                                   ; preds = %bb.u, %_ZN4ncnn3MatD2Ev.exit889
  %.0769.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit889 ], [ %i.abn, %bb.u ] ; 3 uses
  %.0761.lcssa = phi ptr [ %i.am, %_ZN4ncnn3MatD2Ev.exit889 ], [ %.4765, %bb.u ] ; 2 uses
  %i.bc = or disjoint i32 %.0769.lcssa, 1         ; 2 uses
  %i.bd = icmp slt i32 %i.bc, %i.an
  br i1 %i.bd, label %.noexc823.lr.ph, label %.preheader2145

.noexc823.lr.ph:                                  ; preds = %.preheader2146
  %i.be = trunc i64 %i.aa to i32                  ; 2 uses
  %i.bf = insertelement <16 x i32> poison, i32 %i.be, i64 0
  %i.bg = shufflevector <16 x i32> %i.bf, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.bh = mul <16 x i32> %i.bg, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.bi = insertelement <8 x i32> poison, i32 %i.be, i64 0
  %i.bj = shufflevector <8 x i32> %i.bi, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.bk = mul <8 x i32> %i.bj, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %.idx795 = shl i64 %i.ae, 3
  %.idx796 = mul i64 %i.ae, 12
  %i.bl = trunc i64 %i.ae to i32
  %i.bm = insertelement <16 x i32> poison, i32 %i.bl, i64 0
  %i.bn = shufflevector <16 x i32> %i.bm, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.bo = mul <16 x i32> %i.bn, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.bp = insertelement <2 x i32> poison, i32 %i.v, i64 0
  %i.bq = shufflevector <2 x i32> %i.bp, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %.noexc823

.noexc857:                                        ; preds = %.noexc857.lr.ph, %bb.u
  %.07612368 = phi ptr [ %i.am, %.noexc857.lr.ph ], [ %.4765, %bb.u ] ; 6 uses
  %.07692367 = phi i32 [ 0, %.noexc857.lr.ph ], [ %i.abn, %bb.u ] ; 4 uses
  %i.br = insertelement <2 x i32> poison, i32 %.07692367, i64 0
  %i.bs = or disjoint i32 %.07692367, 1
  %i.bt = insertelement <4 x i32> poison, i32 %.07692367, i64 0
  %i.bu = insertelement <4 x i32> %i.bt, i32 %i.bs, i64 1
  %i.bv = shufflevector <2 x i32> %i.br, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.bw = or disjoint <4 x i32> %i.bv, <i32 2, i32 3, i32 poison, i32 poison>
  %i.bx = shufflevector <4 x i32> %i.bu, <4 x i32> %i.bw, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %.frozen = freeze <4 x i32> %i.bx               ; 2 uses
  %.frozen3038 = freeze <4 x i32> %i.bb           ; 2 uses
  %i.by = sdiv <4 x i32> %.frozen, %.frozen3038   ; 5 uses
  %i.bz = mul <4 x i32> %i.by, %.frozen3038
  %.decomposed = sub <4 x i32> %.frozen, %i.bz    ; 4 uses
  %i.ca = load ptr, ptr %7, align 8, !tbaa !22, !noalias !2509
  %i.cb = load i64, ptr %i.q, align 8, !tbaa !23, !noalias !2509
  %i.cc = mul i64 %i.cb, %indvars.iv2776
  %i.cd = load i64, ptr %i.r, align 8, !tbaa !64, !noalias !2509
  %i.ce = mul i64 %i.cc, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.ce ; 2 uses
  %i.cg = load i32, ptr %8, align 4, !tbaa !66    ; 4 uses
  %i.ch = icmp sgt i32 %i.cg, 15
  br i1 %i.ch, label %.noexc855.lr.ph, label %.preheader2144

.noexc855.lr.ph:                                  ; preds = %.noexc857
  %i.ci = load i32, ptr %5, align 4, !tbaa !66    ; 2 uses
  %i.cj = load i32, ptr %i.s, align 4, !tbaa !74, !noalias !2510
  %i.ck = load ptr, ptr %4, align 8, !tbaa !22, !noalias !2510 ; 4 uses
  %i.cl = load i64, ptr %i.n, align 8, !tbaa !23, !noalias !2510
  %i.cm = load i64, ptr %i.t, align 8, !tbaa !64, !noalias !2510 ; 2 uses
  %factor.op.mul = mul i64 %i.cl, %i.cm
  %i.cn = sext i32 %i.cj to i64
  %i.co = load i32, ptr %9, align 4, !tbaa !66
  %i.cp = mul i64 %i.cm, %i.cn
  %i.cq = load i32, ptr %10, align 4, !tbaa !66   ; 4 uses
  %i.cr = insertelement <4 x i32> poison, i32 %i.co, i64 0
  %i.cs = shufflevector <4 x i32> %i.cr, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ct = mul nsw <4 x i32> %i.cs, %i.by
  %i.cu = sext <4 x i32> %i.ct to <4 x i64>
  %i.cv = insertelement <4 x i64> poison, i64 %i.cp, i64 0
  %i.cw = shufflevector <4 x i64> %i.cv, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.cx = mul <4 x i64> %i.cw, %i.cu              ; 4 uses
  %i.cy = extractelement <4 x i64> %i.cx, i64 0
  %invariant.gep = getelementptr i8, ptr %i.ck, i64 %i.cy
  %i.cz = extractelement <4 x i64> %i.cx, i64 1
  %invariant.gep2241 = getelementptr i8, ptr %i.ck, i64 %i.cz
  %i.da = extractelement <4 x i64> %i.cx, i64 2
  %invariant.gep2246 = getelementptr i8, ptr %i.ck, i64 %i.da
  %i.db = extractelement <4 x i64> %i.cx, i64 3
  %invariant.gep2251 = getelementptr i8, ptr %i.ck, i64 %i.db
  %i.dc = insertelement <4 x i32> poison, i32 %i.ci, i64 0
  %13 = shufflevector <4 x i32> %i.dc, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.dd = mul <4 x i32> %13, %.decomposed         ; 4 uses
  %14 = extractelement <4 x i32> %i.dd, i64 0
  %15 = mul i32 %14, %i.cq
  %16 = sext i32 %15 to i64
  %17 = extractelement <4 x i32> %i.dd, i64 1
  %18 = mul i32 %17, %i.cq
  %i.de = sext i32 %18 to i64
  %i.df = extractelement <4 x i32> %i.dd, i64 2
  %19 = mul i32 %i.df, %i.cq
  %i.dg = sext i32 %19 to i64
  %invariant.gep2237 = getelementptr i8, ptr %invariant.gep, i64 %16
  %invariant.gep2242 = getelementptr i8, ptr %invariant.gep2241, i64 %i.de
  %invariant.gep2247 = getelementptr i8, ptr %invariant.gep2246, i64 %i.dg
  %i.dh = extractelement <4 x i32> %i.dd, i64 3
  %20 = mul i32 %i.dh, %i.cq
  %i.di = sext i32 %20 to i64
  %invariant.gep2252 = getelementptr i8, ptr %invariant.gep2251, i64 %i.di
  %i.dj = load i32, ptr %11, align 4, !tbaa !66   ; 3 uses
  %i.dk = icmp sgt i32 %i.dj, 0
  %i.dl = add i32 %i.dj, -1
  %i.dm = zext i32 %i.dl to i64
  %i.dn = shl nuw nsw i64 %i.dm, 8
  %wide.trip.count = zext nneg i32 %i.dj to i64
  br label %.noexc855

.preheader2144.loopexit:                          ; preds = %._crit_edge
  %i.do = and i32 %i.cg, 2147483632
  %.pre = load i32, ptr %8, align 4, !tbaa !66
  br label %.preheader2144

.preheader2144:                                   ; preds = %.preheader2144.loopexit, %.noexc857
  %i.dp = phi i32 [ %i.cg, %.noexc857 ], [ %.pre, %.preheader2144.loopexit ] ; 6 uses
  %.lcssa2153 = phi <16 x i32> [ zeroinitializer, %.noexc857 ], [ %.lcssa2149, %.preheader2144.loopexit ] ; 2 uses
  %.lcssa2152 = phi <16 x i32> [ zeroinitializer, %.noexc857 ], [ %.lcssa2148, %.preheader2144.loopexit ] ; 2 uses
  %.lcssa2151 = phi <16 x i32> [ zeroinitializer, %.noexc857 ], [ %.lcssa2147, %.preheader2144.loopexit ] ; 2 uses
  %.lcssa2150 = phi <16 x i32> [ zeroinitializer, %.noexc857 ], [ %.lcssa, %.preheader2144.loopexit ] ; 2 uses
  %.0781.lcssa = phi ptr [ %i.cf, %.noexc857 ], [ %.1782.lcssa, %.preheader2144.loopexit ] ; 2 uses
  %.0777.lcssa = phi i32 [ 0, %.noexc857 ], [ %i.do, %.preheader2144.loopexit ] ; 3 uses
  %i.dq = or disjoint i32 %.0777.lcssa, 7
  %i.dr = icmp slt i32 %i.dq, %i.dp
  br i1 %i.dr, label %.noexc847.lr.ph, label %.preheader2143

.noexc847.lr.ph:                                  ; preds = %.preheader2144
  %i.ds = load i32, ptr %5, align 4, !tbaa !66    ; 3 uses
  %i.dt = load i32, ptr %i.s, align 4, !tbaa !74, !noalias !2511
  %i.du = load ptr, ptr %4, align 8, !tbaa !22, !noalias !2511 ; 4 uses
  %i.dv = load i64, ptr %i.n, align 8, !tbaa !23, !noalias !2511
  %i.dw = load i64, ptr %i.t, align 8, !tbaa !64, !noalias !2511 ; 2 uses
  %factor.op.mul2271 = mul i64 %i.dv, %i.dw
  %i.dx = sext i32 %i.dt to i64
  %i.dy = load i32, ptr %9, align 4, !tbaa !66
  %i.dz = mul i64 %i.dw, %i.dx
  %i.ea = load i32, ptr %10, align 4, !tbaa !66   ; 4 uses
  %i.eb = insertelement <4 x i32> poison, i32 %i.dy, i64 0
  %i.ec = shufflevector <4 x i32> %i.eb, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ed = mul nsw <4 x i32> %i.ec, %i.by
  %i.ee = sext <4 x i32> %i.ed to <4 x i64>
  %i.ef = insertelement <4 x i64> poison, i64 %i.dz, i64 0
  %i.eg = shufflevector <4 x i64> %i.ef, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.eh = mul <4 x i64> %i.eg, %i.ee              ; 4 uses
  %i.ei = extractelement <4 x i64> %i.eh, i64 0
  %invariant.gep2273 = getelementptr i8, ptr %i.du, i64 %i.ei
  %i.ej = extractelement <4 x i64> %i.eh, i64 1
  %invariant.gep2278 = getelementptr i8, ptr %i.du, i64 %i.ej
  %i.ek = extractelement <4 x i64> %i.eh, i64 2
  %invariant.gep2283 = getelementptr i8, ptr %i.du, i64 %i.ek
  %i.el = extractelement <4 x i64> %i.eh, i64 3
  %invariant.gep2288 = getelementptr i8, ptr %i.du, i64 %i.el
  %i.em = insertelement <4 x i32> poison, i32 %i.ds, i64 0
  %21 = shufflevector <4 x i32> %i.em, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.en = mul <4 x i32> %21, %.decomposed         ; 4 uses
  %22 = extractelement <4 x i32> %i.en, i64 0
  %23 = mul i32 %22, %i.ea
  %24 = sext i32 %23 to i64
  %25 = extractelement <4 x i32> %i.en, i64 1
  %26 = mul i32 %25, %i.ea
  %i.eo = sext i32 %26 to i64
  %i.ep = extractelement <4 x i32> %i.en, i64 2
  %27 = mul i32 %i.ep, %i.ea
  %i.eq = sext i32 %27 to i64
  %invariant.gep2274 = getelementptr i8, ptr %invariant.gep2273, i64 %24
  %invariant.gep2279 = getelementptr i8, ptr %invariant.gep2278, i64 %i.eo
  %invariant.gep2284 = getelementptr i8, ptr %invariant.gep2283, i64 %i.eq
  %i.er = extractelement <4 x i32> %i.en, i64 3
  %28 = mul i32 %i.er, %i.ea
  %i.es = sext i32 %28 to i64
  %invariant.gep2289 = getelementptr i8, ptr %invariant.gep2288, i64 %i.es
  %i.et = load i32, ptr %11, align 4, !tbaa !66   ; 3 uses
  %i.eu = icmp sgt i32 %i.et, 0
  %i.ev = add i32 %i.et, -1
  %i.ew = zext i32 %i.ev to i64
  %i.ex = shl nuw nsw i64 %i.ew, 7
  %i.ey = icmp eq i32 %i.ds, 8
  %wide.trip.count2671 = zext nneg i32 %i.et to i64
  br label %.noexc847

.noexc855:                                        ; preds = %.noexc855.lr.ph, %._crit_edge
  %.07772230 = phi i32 [ 0, %.noexc855.lr.ph ], [ %i.fh, %._crit_edge ] ; 2 uses
  %.07812229 = phi ptr [ %i.cf, %.noexc855.lr.ph ], [ %.1782.lcssa, %._crit_edge ] ; 3 uses
  %i.ez = phi <16 x i32> [ zeroinitializer, %.noexc855.lr.ph ], [ %.lcssa, %._crit_edge ] ; 2 uses
  %i.fa = phi <16 x i32> [ zeroinitializer, %.noexc855.lr.ph ], [ %.lcssa2147, %._crit_edge ] ; 2 uses
  %i.fb = phi <16 x i32> [ zeroinitializer, %.noexc855.lr.ph ], [ %.lcssa2148, %._crit_edge ] ; 2 uses
  %i.fc = phi <16 x i32> [ zeroinitializer, %.noexc855.lr.ph ], [ %.lcssa2149, %._crit_edge ] ; 2 uses
  %i.fd = sdiv i32 %.07772230, %i.ci
  %i.fe = sext i32 %i.fd to i64
  %.reass = mul i64 %factor.op.mul, %i.fe         ; 4 uses
  %gep2238 = getelementptr i8, ptr %invariant.gep2237, i64 %.reass
  %gep2243 = getelementptr i8, ptr %invariant.gep2242, i64 %.reass
  %gep2248 = getelementptr i8, ptr %invariant.gep2247, i64 %.reass
  %gep2253 = getelementptr i8, ptr %invariant.gep2252, i64 %.reass
  br i1 %i.dk, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc855
  %i.ff = load ptr, ptr %12, align 8, !tbaa !97
  %i.fg = load i32, ptr %5, align 4, !tbaa !66
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %bb.g
  %scevgep = getelementptr i8, ptr %.07812229, i64 256
  %scevgep2664 = getelementptr i8, ptr %scevgep, i64 %i.dn
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.noexc855
  %.lcssa2149 = phi <16 x i32> [ %i.fc, %.noexc855 ], [ %i.nx, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa2148 = phi <16 x i32> [ %i.fb, %.noexc855 ], [ %i.nt, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa2147 = phi <16 x i32> [ %i.fa, %.noexc855 ], [ %i.np, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa = phi <16 x i32> [ %i.ez, %.noexc855 ], [ %i.nl, %._crit_edge.loopexit ] ; 2 uses
  %.1782.lcssa = phi ptr [ %.07812229, %.noexc855 ], [ %scevgep2664, %._crit_edge.loopexit ] ; 2 uses
  %i.fh = add nuw nsw i32 %.07772230, 16          ; 2 uses
  %i.fi = or disjoint i32 %i.fh, 15
  %i.fj = icmp slt i32 %i.fi, %i.cg
  br i1 %i.fj, label %.noexc855, label %.preheader2144.loopexit, !llvm.loop !2457

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.17822223 = phi ptr [ %.07812229, %.lr.ph ], [ %i.ny, %bb.g ] ; 5 uses
  %i.fk = phi <16 x i32> [ %i.ez, %.lr.ph ], [ %i.nl, %bb.g ]
  %i.fl = phi <16 x i32> [ %i.fa, %.lr.ph ], [ %i.np, %bb.g ]
  %i.fm = phi <16 x i32> [ %i.fb, %.lr.ph ], [ %i.nt, %bb.g ]
  %i.fn = phi <16 x i32> [ %i.fc, %.lr.ph ], [ %i.nx, %bb.g ]
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !66
  %i.fq = sext i32 %i.fp to i64                   ; 4 uses
  %i.fr = getelementptr inbounds i8, ptr %gep2238, i64 %i.fq ; 4 uses
  %i.fs = getelementptr inbounds i8, ptr %gep2243, i64 %i.fq ; 4 uses
  %i.ft = getelementptr inbounds i8, ptr %gep2248, i64 %i.fq ; 4 uses
  %i.fu = getelementptr inbounds i8, ptr %gep2253, i64 %i.fq ; 4 uses
  switch i32 %i.fg, label %bb.f [
    i32 16, label %bb.d
    i32 8, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.fv = load <2 x i64>, ptr %i.fr, align 16, !tbaa !85
  %i.fw = load <2 x i64>, ptr %i.fs, align 16, !tbaa !85
  %i.fx = load <2 x i64>, ptr %i.ft, align 16, !tbaa !85
  %i.fy = load <2 x i64>, ptr %i.fu, align 16, !tbaa !85
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.fz = load i64, ptr %i.fr, align 1, !tbaa !85
  %i.ga = insertelement <2 x i64> poison, i64 %i.fz, i64 0
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.aa
  %i.gc = load i64, ptr %i.gb, align 1, !tbaa !85
  %i.gd = load i64, ptr %i.fs, align 1, !tbaa !85
  %i.ge = insertelement <2 x i64> poison, i64 %i.gd, i64 0
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.aa
  %i.gg = load i64, ptr %i.gf, align 1, !tbaa !85
  %i.gh = load i64, ptr %i.ft, align 1, !tbaa !85
  %i.gi = insertelement <2 x i64> poison, i64 %i.gh, i64 0
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.aa
  %i.gk = load i64, ptr %i.gj, align 1, !tbaa !85
  %i.gl = load i64, ptr %i.fu, align 1, !tbaa !85
  %i.gm = insertelement <2 x i64> poison, i64 %i.gl, i64 0
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.aa
  %i.go = load i64, ptr %i.gn, align 1, !tbaa !85
  %i.gp = insertelement <2 x i64> %i.ga, i64 %i.gc, i64 1
  %i.gq = insertelement <2 x i64> %i.ge, i64 %i.gg, i64 1
  %i.gr = insertelement <2 x i64> %i.gi, i64 %i.gk, i64 1
  %i.gs = insertelement <2 x i64> %i.gm, i64 %i.go, i64 1
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.gt = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.fr, <16 x i32> %i.as, <16 x i1> splat (i1 true), i32 1)
  %i.gu = trunc <16 x i32> %i.gt to <16 x i8>
  %i.gv = bitcast <16 x i8> %i.gu to <2 x i64>
  %i.gw = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.fs, <16 x i32> %i.as, <16 x i1> splat (i1 true), i32 1)
  %i.gx = trunc <16 x i32> %i.gw to <16 x i8>
  %i.gy = bitcast <16 x i8> %i.gx to <2 x i64>
  %i.gz = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.ft, <16 x i32> %i.as, <16 x i1> splat (i1 true), i32 1)
  %i.ha = trunc <16 x i32> %i.gz to <16 x i8>
  %i.hb = bitcast <16 x i8> %i.ha to <2 x i64>
  %i.hc = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr %i.fu, <16 x i32> %i.as, <16 x i1> splat (i1 true), i32 1)
  %i.hd = trunc <16 x i32> %i.hc to <16 x i8>
  %i.he = bitcast <16 x i8> %i.hd to <2 x i64>
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.0775 = phi <2 x i64> [ %i.fv, %bb.d ], [ %i.gp, %bb.e ], [ %i.gv, %bb.f ]
  %.0774 = phi <2 x i64> [ %i.fw, %bb.d ], [ %i.gq, %bb.e ], [ %i.gy, %bb.f ]
  %.0773 = phi <2 x i64> [ %i.fx, %bb.d ], [ %i.gr, %bb.e ], [ %i.hb, %bb.f ]
  %.0772 = phi <2 x i64> [ %i.fy, %bb.d ], [ %i.gs, %bb.e ], [ %i.he, %bb.f ]
  %i.hf = bitcast <2 x i64> %.0775 to <16 x i8>
  %i.hg = sext <16 x i8> %i.hf to <16 x i16>      ; 2 uses
  %i.hh = bitcast <2 x i64> %.0774 to <16 x i8>
  %i.hi = sext <16 x i8> %i.hh to <16 x i16>      ; 2 uses
  %i.hj = bitcast <2 x i64> %.0773 to <16 x i8>
  %i.hk = sext <16 x i8> %i.hj to <16 x i16>      ; 2 uses
  %i.hl = bitcast <2 x i64> %.0772 to <16 x i8>
  %i.hm = sext <16 x i8> %i.hl to <16 x i16>      ; 2 uses
  %i.hn = load <8 x i64>, ptr %.17822223, align 64, !tbaa !85 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.17822223, i64 64
  %i.hp = load <8 x i64>, ptr %i.ho, align 64, !tbaa !85 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.17822223, i64 128
  %i.hr = load <8 x i64>, ptr %i.hq, align 64, !tbaa !85 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.17822223, i64 192
  %i.ht = load <8 x i64>, ptr %i.hs, align 64, !tbaa !85 ; 2 uses
  %i.hu = bitcast <8 x i64> %i.hn to <64 x i8>
  %i.hv = shufflevector <64 x i8> %i.hu, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.hw = sext <32 x i8> %i.hv to <32 x i16>      ; 4 uses
  %i.hx = bitcast <8 x i64> %i.hn to <64 x i8>
  %i.hy = shufflevector <64 x i8> %i.hx, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.hz = sext <32 x i8> %i.hy to <32 x i16>      ; 4 uses
  %i.ia = bitcast <8 x i64> %i.hp to <64 x i8>
  %i.ib = shufflevector <64 x i8> %i.ia, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ic = sext <32 x i8> %i.ib to <32 x i16>      ; 4 uses
  %i.id = bitcast <8 x i64> %i.hp to <64 x i8>
  %i.ie = shufflevector <64 x i8> %i.id, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.if = sext <32 x i8> %i.ie to <32 x i16>      ; 4 uses
  %i.ig = bitcast <8 x i64> %i.hr to <64 x i8>
  %i.ih = shufflevector <64 x i8> %i.ig, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ii = sext <32 x i8> %i.ih to <32 x i16>      ; 4 uses
  %i.ij = bitcast <8 x i64> %i.hr to <64 x i8>
  %i.ik = shufflevector <64 x i8> %i.ij, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.il = sext <32 x i8> %i.ik to <32 x i16>      ; 4 uses
  %i.im = bitcast <8 x i64> %i.ht to <64 x i8>
  %i.in = shufflevector <64 x i8> %i.im, <64 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.io = sext <32 x i8> %i.in to <32 x i16>      ; 4 uses
  %i.ip = bitcast <8 x i64> %i.ht to <64 x i8>
  %i.iq = shufflevector <64 x i8> %i.ip, <64 x i8> poison, <32 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.ir = sext <32 x i8> %i.iq to <32 x i16>      ; 4 uses
  %i.is = bitcast <16 x i16> %i.hg to <8 x i32>   ; 4 uses
  %i.it = bitcast <16 x i16> %i.hg to <8 x i32>   ; 4 uses
  %i.iu = bitcast <16 x i16> %i.hi to <8 x i32>   ; 4 uses
  %i.iv = bitcast <16 x i16> %i.hi to <8 x i32>   ; 4 uses
  %i.iw = bitcast <16 x i16> %i.hk to <8 x i32>   ; 4 uses
  %i.ix = bitcast <16 x i16> %i.hk to <8 x i32>   ; 4 uses
  %i.iy = bitcast <16 x i16> %i.hm to <8 x i32>   ; 4 uses
  %i.iz = bitcast <16 x i16> %i.hm to <8 x i32>   ; 4 uses
  %i.ja = shufflevector <8 x i32> %i.is, <8 x i32> poison, <16 x i32> zeroinitializer
  %i.jb = bitcast <16 x i32> %i.ja to <32 x i16>
  %i.jc = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.jb, <32 x i16> %i.hw)
  %i.jd = add <16 x i32> %i.jc, %i.fk
  %i.je = shufflevector <8 x i32> %i.iu, <8 x i32> poison, <16 x i32> zeroinitializer
  %i.jf = bitcast <16 x i32> %i.je to <32 x i16>
  %i.jg = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.jf, <32 x i16> %i.hw)
  %i.jh = add <16 x i32> %i.jg, %i.fl
  %i.ji = shufflevector <8 x i32> %i.iw, <8 x i32> poison, <16 x i32> zeroinitializer
  %i.jj = bitcast <16 x i32> %i.ji to <32 x i16>
  %i.jk = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.jj, <32 x i16> %i.hw)
  %i.jl = add <16 x i32> %i.jk, %i.fm
  %i.jm = shufflevector <8 x i32> %i.iy, <8 x i32> poison, <16 x i32> zeroinitializer
  %i.jn = bitcast <16 x i32> %i.jm to <32 x i16>
  %i.jo = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.jn, <32 x i16> %i.hw)
  %i.jp = add <16 x i32> %i.jo, %i.fn
  %i.jq = shufflevector <8 x i32> %i.is, <8 x i32> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.jr = bitcast <16 x i32> %i.jq to <32 x i16>
  %i.js = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.jr, <32 x i16> %i.hz)
  %i.jt = add <16 x i32> %i.jd, %i.js
  %i.ju = shufflevector <8 x i32> %i.iu, <8 x i32> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.jv = bitcast <16 x i32> %i.ju to <32 x i16>
  %i.jw = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.jv, <32 x i16> %i.hz)
  %i.jx = add <16 x i32> %i.jh, %i.jw
  %i.jy = shufflevector <8 x i32> %i.iw, <8 x i32> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.jz = bitcast <16 x i32> %i.jy to <32 x i16>
  %i.ka = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.jz, <32 x i16> %i.hz)
  %i.kb = add <16 x i32> %i.jl, %i.ka
  %i.kc = shufflevector <8 x i32> %i.iy, <8 x i32> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.kd = bitcast <16 x i32> %i.kc to <32 x i16>
  %i.ke = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.kd, <32 x i16> %i.hz)
  %i.kf = add <16 x i32> %i.jp, %i.ke
  %i.kg = shufflevector <8 x i32> %i.is, <8 x i32> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.kh = bitcast <16 x i32> %i.kg to <32 x i16>
  %i.ki = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.kh, <32 x i16> %i.ic)
  %i.kj = add <16 x i32> %i.jt, %i.ki
  %i.kk = shufflevector <8 x i32> %i.iu, <8 x i32> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
end_hunk_2

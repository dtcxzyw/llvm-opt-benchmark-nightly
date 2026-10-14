Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86_fma?download=true
inline.NumInlined: 233
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 134
loop-unroll.NumUnrolled: 138
begin_hunk_0_@_ZN4ncnn12Gemm_x86_fma15create_pipelineERKNS_6OptionE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #9
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.o
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !60
  %.not39 = icmp eq i32 %i.dz, 0
  br i1 %.not39, label %bb.br, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !61
  %.not40 = icmp eq i32 %i.eb, -1
  br i1 %.not40, label %bb.br, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 8 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !22 ; 2 uses
  %.not.i73 = icmp eq ptr %i.ef, null
  br i1 %.not.i73, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eg = atomicrmw add ptr %i.ef, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !22 ; 2 uses
  %.not.i.i74 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i74, label %_ZN4ncnn3MataSERKS0_.exit78, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ej = atomicrmw add ptr %i.ei, i32 -1 acq_rel, align 4
  %i.ek = icmp eq i32 %i.ej, 1
  br i1 %i.ek, label %bb.ae, label %_ZN4ncnn3MataSERKS0_.exit78

bb.ae:                                            ; preds = %bb.ad
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !23 ; 3 uses
  %.not3.i.i75 = icmp eq ptr %i.em, null
  %i.en = load ptr, ptr %i.ed, align 8, !tbaa !24 ; 3 uses
  br i1 %.not3.i.i75, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eo = load ptr, ptr %i.em, align 8, !tbaa !16
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(8) %i.em, ptr noundef %i.en), !inline_history !1
  br label %_ZN4ncnn3MataSERKS0_.exit78

bb.ag:                                            ; preds = %bb.ae
  %.not.i18.i76 = icmp eq ptr %i.en, null
  br i1 %.not.i18.i76, label %_ZN4ncnn3MataSERKS0_.exit78, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @free(ptr noundef nonnull %i.en) #9
  br label %_ZN4ncnn3MataSERKS0_.exit78

_ZN4ncnn3MataSERKS0_.exit78:                      ; preds = %bb.ag, %bb.ah, %bb.ac, %bb.ad, %bb.af
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 4 uses
  %i.ew = load <2 x ptr>, ptr %i.ec, align 8, !tbaa !62
  store <2 x ptr> %i.ew, ptr %i.ed, align 8, !tbaa !62
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !63
  store i64 %i.ey, ptr %i.er, align 8, !tbaa !63
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !64
  store i32 %i.fa, ptr %i.es, align 8, !tbaa !64
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !23
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 3 uses
  store ptr %i.fc, ptr %i.fd, align 8, !tbaa !23
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.ff = load <4 x i32>, ptr %i.fe, align 8, !tbaa !50
  store <4 x i32> %i.ff, ptr %i.et, align 8, !tbaa !50
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !56
  store i32 %i.fh, ptr %i.eu, align 8, !tbaa !56
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !25
  store i64 %i.fj, ptr %i.ev, align 8, !tbaa !25
  %i.fk = load i32, ptr %i.ea, align 8, !tbaa !61
  %i.fl = icmp eq i32 %i.fk, 3
  br i1 %i.fl, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %_ZN4ncnn3MataSERKS0_.exit78
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 39
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !65, !range !46, !noundef !47
  %i.fo = trunc nuw i8 %i.fn to i1
  br i1 %i.fo, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !49 ; 2 uses
  %i.fr = and i32 %i.fq, 7
  %i.fs = icmp eq i32 %i.fr, 0
  %i.ft = and i32 %i.fq, 3
  %i.fu = icmp eq i32 %i.ft, 0
  %i.fv = select i1 %i.fu, i32 4, i32 1
  %i.fw = select i1 %i.fs, i32 8, i32 %i.fv
  call void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %i.ec, ptr noundef nonnull align 8 dereferenceable(72) %i.ed, i32 noundef %i.fw, ptr noundef nonnull align 8 dereferenceable(64) %1)
  %i.fx = load ptr, ptr %i.ed, align 8, !tbaa !24
  %i.fy = icmp eq ptr %i.fx, null
  br i1 %i.fy, label %_ZNK4ncnn3Mat5emptyEv.exit68.thread, label %_ZNK4ncnn3Mat5emptyEv.exit68

_ZNK4ncnn3Mat5emptyEv.exit68:                     ; preds = %bb.aj
  %i.fz = load i64, ptr %i.ev, align 8, !tbaa !25
  %i.ga = load i32, ptr %i.eu, align 8, !tbaa !56
  %i.gb = sext i32 %i.ga to i64
  %i.gc = mul i64 %i.fz, %i.gb
  %.not81 = icmp eq i64 %i.gc, 0
  br i1 %.not81, label %_ZNK4ncnn3Mat5emptyEv.exit68.thread, label %bb.ak

bb.ak:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit68, %bb.ai, %_ZN4ncnn3MataSERKS0_.exit78
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 9 uses
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !66
  %i.gf = fcmp fast une float %i.ge, 1.000000e+00
  br i1 %i.gf, label %bb.al, label %bb.bk

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.gg = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.gi = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.gj = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.gl = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  store i64 0, ptr %i.gm, align 16, !tbaa !25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.gj, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat11create_likeERKS0_PNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %i.ed, ptr noundef null)
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.gn = load ptr, ptr %2, align 16, !tbaa !24   ; 11 uses
  %i.go = icmp eq ptr %i.gn, null
  br i1 %i.go, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.am
  %i.gp = load i64, ptr %i.gm, align 16, !tbaa !25
  %i.gq = load i32, ptr %i.gl, align 8, !tbaa !56
  %i.gr = sext i32 %i.gq to i64
  %i.gs = mul i64 %i.gp, %i.gr
  %i.gt = icmp eq i64 %i.gs, 0
  br i1 %i.gt, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.ao:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  %i.gv = load i64, ptr %i.ev, align 8, !tbaa !25
  %i.gw = load i32, ptr %i.eu, align 8, !tbaa !56
  %i.gx = load i32, ptr %i.es, align 8, !tbaa !120
  %i.gy = trunc i64 %i.gv to i32
  %i.gz = mul i32 %i.gw, %i.gy
  %i.ha = mul i32 %i.gz, %i.gx                    ; 4 uses
  %i.hb = icmp sgt i32 %i.ha, 0
  br i1 %i.hb, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.ao
  %i.hc = load ptr, ptr %i.ed, align 8, !tbaa !24 ; 9 uses
  %wide.trip.count = zext nneg i32 %i.ha to i64   ; 9 uses
  %min.iters.check = icmp ult i32 %i.ha, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.hd = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %i.he = getelementptr i8, ptr %i.gn, i64 %i.hd  ; 2 uses
  %i.hf = getelementptr i8, ptr %i.hc, i64 %i.hd
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 216
  %bound0 = icmp ult ptr %i.gn, %i.hf
  %bound1 = icmp ult ptr %i.hc, %i.he
  %found.conflict = and i1 %bound0, %bound1
  %bound0113 = icmp ult ptr %i.gn, %i.hg
  %bound1114 = icmp ult ptr %i.gd, %i.he
  %found.conflict115 = and i1 %bound0113, %bound1114
  %conflict.rdx = or i1 %found.conflict, %found.conflict115
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check116 = icmp ult i32 %i.ha, 32
  br i1 %min.iters.check116, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.hh = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %3 = load <4 x float>, ptr %i.gd, align 4
  %broadcast.splat = shufflevector <4 x float> %3, <4 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %index ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 32
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 64
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hi, i64 96
  %wide.load = load <8 x float>, ptr %i.hi, align 4, !tbaa !68, !alias.scope !121
  %wide.load117 = load <8 x float>, ptr %i.hj, align 4, !tbaa !68, !alias.scope !121
  %wide.load118 = load <8 x float>, ptr %i.hk, align 4, !tbaa !68, !alias.scope !121
  %wide.load119 = load <8 x float>, ptr %i.hl, align 4, !tbaa !68, !alias.scope !121
  %i.hm = fmul fast <8 x float> %broadcast.splat, %wide.load
  %i.hn = fmul fast <8 x float> %broadcast.splat, %wide.load117
  %i.ho = fmul fast <8 x float> %broadcast.splat, %wide.load118
  %i.hp = fmul fast <8 x float> %broadcast.splat, %wide.load119
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %index ; 4 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 32
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 64
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 96
  store <8 x float> %i.hm, ptr %i.hq, align 4, !tbaa !68, !alias.scope !122, !noalias !123
  store <8 x float> %i.hn, ptr %i.hr, align 4, !tbaa !68, !alias.scope !122, !noalias !123
  store <8 x float> %i.ho, ptr %i.hs, align 4, !tbaa !68, !alias.scope !122, !noalias !123
  store <8 x float> %i.hp, ptr %i.ht, align 4, !tbaa !68, !alias.scope !122, !noalias !123
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.hu = icmp eq i64 %index.next, %n.vec
  br i1 %i.hu, label %middle.block, label %vector.body, !llvm.loop !116

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.hh, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !72

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec120 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %4 = load <4 x float>, ptr %i.gd, align 4
  %broadcast.splat124 = shufflevector <4 x float> %4, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index121 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next125, %vec.epilog.vector.body ] ; 3 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %index121
  %wide.load122 = load <4 x float>, ptr %i.hv, align 4, !tbaa !68, !alias.scope !121
  %i.hw = fmul fast <4 x float> %broadcast.splat124, %wide.load122
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %index121
  store <4 x float> %i.hw, ptr %i.hx, align 4, !tbaa !68, !alias.scope !122, !noalias !123
  %index.next125 = add nuw i64 %index121, 4       ; 2 uses
  %i.hy = icmp eq i64 %index.next125, %n.vec120
  br i1 %i.hy, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !117

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n126 = icmp eq i64 %n.vec120, %wide.trip.count
  br i1 %cmp.n126, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec120, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv.prol
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !68
  %i.ib = load float, ptr %i.gd, align 4, !tbaa !66
  %i.ic = fmul fast float %i.ib, %i.ia
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv.prol
  store float %i.ic, ptr %i.id, align 4, !tbaa !68
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !118

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.ie = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.if = icmp ugt i64 %i.ie, -4
  br i1 %i.if, label %._crit_edge, label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.ao
  %i.ig = load ptr, ptr %i.gg, align 8, !tbaa !22 ; 2 uses
  %.not.i71 = icmp eq ptr %i.ig, null
  br i1 %.not.i71, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge
  %i.ih = atomicrmw add ptr %i.ig, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %._crit_edge
  %i.ii = load ptr, ptr %i.eh, align 8, !tbaa !22 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ii, null
  br i1 %.not.i.i, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ij = atomicrmw add ptr %i.ii, i32 -1 acq_rel, align 4
  %i.ik = icmp eq i32 %i.ij, 1
  br i1 %i.ik, label %bb.as, label %_ZN4ncnn3MataSERKS0_.exit

bb.as:                                            ; preds = %bb.ar
  %i.il = load ptr, ptr %i.fd, align 8, !tbaa !23 ; 3 uses
  %.not3.i.i = icmp eq ptr %i.il, null
  %i.im = load ptr, ptr %i.ed, align 8, !tbaa !24 ; 3 uses
  br i1 %.not3.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.in = load ptr, ptr %i.il, align 8, !tbaa !16
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 24
  %i.ip = load ptr, ptr %i.io, align 8
  invoke void %i.ip(ptr noundef nonnull align 8 dereferenceable(8) %i.il, ptr noundef %i.im)
          to label %_ZN4ncnn3MataSERKS0_.exit unwind label %bb.aw, !inline_history !2

bb.au:                                            ; preds = %bb.as
  %.not.i18.i = icmp eq ptr %i.im, null
  br i1 %.not.i18.i, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @free(ptr noundef nonnull %i.im) #9
  br label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MataSERKS0_.exit:                        ; preds = %bb.au, %bb.av, %bb.at, %bb.aq, %bb.ar
  %i.iq = load <2 x ptr>, ptr %2, align 16, !tbaa !62
  store <2 x ptr> %i.iq, ptr %i.ed, align 8, !tbaa !62
  %i.ir = load i64, ptr %i.gh, align 16, !tbaa !63
  store i64 %i.ir, ptr %i.er, align 8, !tbaa !63
  %i.is = load i32, ptr %i.gi, align 8, !tbaa !64
  store i32 %i.is, ptr %i.es, align 8, !tbaa !64
  %i.it = load ptr, ptr %i.gj, align 16, !tbaa !23
  store ptr %i.it, ptr %i.fd, align 8, !tbaa !23
  %i.iu = load <4 x i32>, ptr %i.gk, align 8, !tbaa !50
  store <4 x i32> %i.iu, ptr %i.et, align 8, !tbaa !50
  %i.iv = load i32, ptr %i.gl, align 8, !tbaa !56
  store i32 %i.iv, ptr %i.eu, align 8, !tbaa !56
  %i.iw = load i64, ptr %i.gm, align 16, !tbaa !25
  store i64 %i.iw, ptr %i.ev, align 8, !tbaa !25
  br label %_ZNK4ncnn3Mat5emptyEv.exit.thread

bb.aw:                                            ; preds = %bb.at
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !68
  %i.ja = load float, ptr %i.gd, align 4, !tbaa !66
  %i.jb = fmul fast float %i.ja, %i.iz
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv
  store float %i.jb, ptr %i.jc, align 4, !tbaa !68
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv.next
  %i.je = load float, ptr %i.jd, align 4, !tbaa !68
  %i.jf = load float, ptr %i.gd, align 4, !tbaa !66
  %i.jg = fmul fast float %i.jf, %i.je
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv.next
  store float %i.jg, ptr %i.jh, align 4, !tbaa !68
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv.next.1
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !68
  %i.jk = load float, ptr %i.gd, align 4, !tbaa !66
  %i.jl = fmul fast float %i.jk, %i.jj
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv.next.1
  store float %i.jl, ptr %i.jm, align 4, !tbaa !68
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv.next.2
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !68
  %i.jp = load float, ptr %i.gd, align 4, !tbaa !66
  %i.jq = fmul fast float %i.jp, %i.jo
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv.next.2
  store float %i.jq, ptr %i.jr, align 4, !tbaa !68
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !119

_ZNK4ncnn3Mat5emptyEv.exit.thread:                ; preds = %bb.am, %_ZN4ncnn3MataSERKS0_.exit, %_ZNK4ncnn3Mat5emptyEv.exit
  %i.js = phi i1 [ false, %_ZNK4ncnn3Mat5emptyEv.exit ], [ true, %_ZN4ncnn3MataSERKS0_.exit ], [ false, %bb.am ]
  %i.jt = load ptr, ptr %i.gg, align 8, !tbaa !22 ; 2 uses
  %.not.i = icmp eq ptr %i.jt, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit45, label %bb.ax

bb.ax:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit.thread
  %i.ju = atomicrmw add ptr %i.jt, i32 -1 acq_rel, align 4
  %i.jv = icmp eq i32 %i.ju, 1
  br i1 %i.jv, label %bb.ay, label %_ZN4ncnn3MatD2Ev.exit45

bb.ay:                                            ; preds = %bb.ax
  %i.jw = load ptr, ptr %i.gj, align 16, !tbaa !23 ; 3 uses
  %.not3.i = icmp eq ptr %i.jw, null
  %i.jx = load ptr, ptr %2, align 16, !tbaa !24   ; 3 uses
  br i1 %.not3.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jy = load ptr, ptr %i.jw, align 8, !tbaa !16
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 24
  %i.ka = load ptr, ptr %i.jz, align 8
  invoke void %i.ka(ptr noundef nonnull align 8 dereferenceable(8) %i.jw, ptr noundef %i.jx)
          to label %_ZN4ncnn3MatD2Ev.exit45 unwind label %bb.bc, !inline_history !0

bb.ba:                                            ; preds = %bb.ay
  %.not.i66 = icmp eq ptr %i.jx, null
  br i1 %.not.i66, label %_ZN4ncnn3MatD2Ev.exit45, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @free(ptr noundef nonnull %i.jx) #9
  br label %_ZN4ncnn3MatD2Ev.exit45

bb.bc:                                            ; preds = %bb.az
  %i.kb = landingpad { ptr, i32 }
          catch ptr null
  %i.kc = extractvalue { ptr, i32 } %i.kb, 0
  call void @__clang_call_terminate(ptr %i.kc) #26
  unreachable

_ZN4ncnn3MatD2Ev.exit45:                          ; preds = %bb.ax, %_ZNK4ncnn3Mat5emptyEv.exit.thread, %bb.az, %bb.ba, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br i1 %i.js, label %bb.bk, label %_ZNK4ncnn3Mat5emptyEv.exit68.thread

bb.bd:                                            ; preds = %bb.aw, %bb.an
  %.pn = phi { ptr, i32 } [ %i.ix, %bb.aw ], [ %i.gu, %bb.an ]
  %i.kd = load ptr, ptr %i.gg, align 8, !tbaa !22 ; 2 uses
  %.not.i46 = icmp eq ptr %i.kd, null
  br i1 %.not.i46, label %_ZN4ncnn3MatD2Ev.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ke = atomicrmw add ptr %i.kd, i32 -1 acq_rel, align 4
  %i.kf = icmp eq i32 %i.ke, 1
  br i1 %i.kf, label %bb.bf, label %_ZN4ncnn3MatD2Ev.exit

bb.bf:                                            ; preds = %bb.be
  %i.kg = load ptr, ptr %i.gj, align 16, !tbaa !23 ; 3 uses
  %.not3.i47 = icmp eq ptr %i.kg, null
  %i.kh = load ptr, ptr %2, align 16, !tbaa !24   ; 3 uses
  br i1 %.not3.i47, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ki = load ptr, ptr %i.kg, align 8, !tbaa !16
end_hunk_0
begin_hunk_1_@_ZNK4ncnn12Gemm_x86_fma7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
  br i1 %i.kg, label %bb.cq, label %_ZN4ncnn3MatD2Ev.exit229

bb.cq:                                            ; preds = %bb.cp
  %.not3.i251 = icmp eq ptr %.sroa.31373.0538722, null
  br i1 %.not3.i251, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.kh = load ptr, ptr %.sroa.31373.0538722, align 8, !tbaa !16
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 24
  %i.kj = load ptr, ptr %i.ki, align 8
  invoke void %i.kj(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.31373.0538722, ptr noundef %.sroa.0.0542718)
          to label %_ZN4ncnn3MatD2Ev.exit229 unwind label %bb.ct, !inline_history !0

bb.cs:                                            ; preds = %bb.cq
  %.not.i289 = icmp eq ptr %.sroa.0.0542718, null
  br i1 %.not.i289, label %_ZN4ncnn3MatD2Ev.exit229, label %_ZN4ncnn3MatD2Ev.exit229.sink.split

bb.ct:                                            ; preds = %bb.cr
  %i.kk = landingpad { ptr, i32 }
          catch ptr null
  %i.kl = extractvalue { ptr, i32 } %i.kk, 0
  tail call void @__clang_call_terminate(ptr %i.kl) #26
  unreachable

bb.cu:                                            ; preds = %bb.cm
  %i.km = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.kn = atomicrmw add ptr %i.ji, i32 -1 acq_rel, align 4
  %i.ko = icmp eq i32 %i.kn, 1
  br i1 %i.ko, label %bb.cv, label %_ZN4ncnn3MatD2Ev.exit228

bb.cv:                                            ; preds = %bb.cu
  %.not3.i255 = icmp eq ptr %i.jo, null
  br i1 %.not3.i255, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.kp = load ptr, ptr %i.jo, align 8, !tbaa !16
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 24
  %i.kr = load ptr, ptr %i.kq, align 8
  invoke void %i.kr(ptr noundef nonnull align 8 dereferenceable(8) %i.jo, ptr noundef %i.jg)
          to label %_ZN4ncnn3MatD2Ev.exit228 unwind label %bb.cz, !inline_history !0

bb.cx:                                            ; preds = %bb.cv
  %.not.i287 = icmp eq ptr %i.jg, null
  br i1 %.not.i287, label %_ZN4ncnn3MatD2Ev.exit228, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  tail call void @free(ptr noundef nonnull %i.jg) #9
  br label %_ZN4ncnn3MatD2Ev.exit228

bb.cz:                                            ; preds = %bb.cw
  %i.ks = landingpad { ptr, i32 }
          catch ptr null
  %i.kt = extractvalue { ptr, i32 } %i.ks, 0
  tail call void @__clang_call_terminate(ptr %i.kt) #26
  unreachable

_ZN4ncnn3MatD2Ev.exit229.sink.split:              ; preds = %bb.cs, %bb.ca, %bb.bh, %bb.ap
  %.sroa.0.0542718.sink = phi ptr [ %.sroa.0377.0518693, %bb.ca ], [ %.sroa.0400.0494668, %bb.bh ], [ %.sroa.0423.0463649, %bb.ap ], [ %.sroa.0.0542718, %bb.cs ]
  tail call void @free(ptr noundef nonnull %.sroa.0.0542718.sink) #9
  br label %_ZN4ncnn3MatD2Ev.exit229

_ZN4ncnn3MatD2Ev.exit229:                         ; preds = %_ZN4ncnn3MatD2Ev.exit229.sink.split, %bb.cs, %bb.cr, %_ZN4ncnn3Mat6addrefEv.exit349.thread.thread, %bb.cp, %bb.ca, %bb.bz, %_ZN4ncnn3Mat6addrefEv.exit347.thread.thread, %bb.bx, %bb.bh, %bb.bg, %_ZN4ncnn3Mat6addrefEv.exit345.thread.thread, %bb.be, %bb.ap, %bb.ao, %_ZN4ncnn3Mat6addrefEv.exit.thread.thread, %bb.am
  %i.ku = load ptr, ptr %7, align 16, !tbaa !24
  %i.kv = icmp eq ptr %i.ku, null
  br i1 %i.kv, label %_ZNK4ncnn3Mat5emptyEv.exit304.thread, label %_ZNK4ncnn3Mat5emptyEv.exit304

_ZNK4ncnn3Mat5emptyEv.exit304:                    ; preds = %_ZN4ncnn3MatD2Ev.exit229
  %i.kw = load i64, ptr %i.dc, align 16, !tbaa !25
  %i.kx = load i32, ptr %i.db, align 8, !tbaa !56
  %i.ky = sext i32 %i.kx to i64
  %i.kz = mul i64 %i.kw, %i.ky
  %i.la = icmp eq i64 %i.kz, 0
  br i1 %i.la, label %_ZNK4ncnn3Mat5emptyEv.exit304.thread, label %bb.da

bb.da:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit304
  %i.lb = load i32, ptr %i.cy, align 8, !tbaa !76 ; 2 uses
  %i.lc = icmp eq i32 %i.lb, 1
  %i.ld = load i32, ptr %i.cz, align 4            ; 3 uses
  br i1 %i.lc, label %.thread729, label %bb.db

.thread729:                                       ; preds = %bb.da
  %i.le = load i32, ptr %i.cw, align 8, !tbaa !64
  %i.lf = mul nsw i32 %i.le, %i.ld                ; 2 uses
  %i.lg = icmp eq i32 %i.lf, %.0155
  %spec.select = zext i1 %i.lg to i32
  %i.lh = icmp eq i32 %i.lf, %.0154
  %spec.select209 = select i1 %i.lh, i32 4, i32 %spec.select
  br label %bb.df

bb.db:                                            ; preds = %bb.da
  %i.li = icmp eq i32 %i.ld, 1
  %i.lj = icmp eq i32 %i.lb, 2                    ; 2 uses
  %or.cond7 = select i1 %i.lj, i1 %i.li, i1 false
  br i1 %or.cond7, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.lk = load i32, ptr %i.da, align 16, !tbaa !79
  %i.ll = load i32, ptr %i.cw, align 8, !tbaa !64
  %i.lm = mul nsw i32 %i.ll, %i.lk
  %i.ln = icmp eq i32 %i.lm, %.0155
  %spec.select210 = select i1 %i.ln, i32 2, i32 0
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %i.lo = phi i1 [ %i.lj, %bb.db ], [ true, %bb.dc ]
  %.3150 = phi i32 [ 0, %bb.db ], [ %spec.select210, %bb.dc ] ; 2 uses
  %i.lp = icmp eq i32 %i.ld, %.0154
  %or.cond212 = select i1 %i.lo, i1 %i.lp, i1 false
  br i1 %or.cond212, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.lq = load i32, ptr %i.da, align 16, !tbaa !79
  %i.lr = load i32, ptr %i.cw, align 8, !tbaa !64
  %i.ls = mul nsw i32 %i.lr, %i.lq                ; 2 uses
  %i.lt = icmp eq i32 %i.ls, %.0155
  %spec.select213 = select i1 %i.lt, i32 3, i32 %.3150
  %i.lu = icmp eq i32 %i.ls, 1
  %spec.select216 = select i1 %i.lu, i32 4, i32 %spec.select213
  br label %bb.df

bb.df:                                            ; preds = %.thread729, %bb.dd, %bb.de
  %.5152 = phi i32 [ %spec.select216, %bb.de ], [ %.3150, %bb.dd ], [ %spec.select209, %.thread729 ] ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 9 uses
  %i.lw = load float, ptr %i.lv, align 4, !tbaa !66
  %i.lx = fcmp fast une float %i.lw, 1.000000e+00
  br i1 %i.lx, label %bb.dg, label %_ZNK4ncnn3Mat5emptyEv.exit304.thread

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  %i.ly = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ma = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.mb = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 5 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.md = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 3 uses
  store i64 0, ptr %i.me, align 16, !tbaa !25
  %i.mf = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %8, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.mb, i8 0, i64 28, i1 false)
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !80
  invoke void @_ZN4ncnn3Mat11create_likeERKS0_PNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef %i.mg)
          to label %bb.dh unwind label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.mh = load ptr, ptr %8, align 16, !tbaa !24   ; 11 uses
  %i.mi = icmp eq ptr %i.mh, null
  br i1 %i.mi, label %.critedge, label %_ZNK4ncnn3Mat5emptyEv.exit303

_ZNK4ncnn3Mat5emptyEv.exit303:                    ; preds = %bb.dh
  %i.mj = load i64, ptr %i.me, align 16, !tbaa !25
  %i.mk = load i32, ptr %i.md, align 8, !tbaa !56
  %i.ml = sext i32 %i.mk to i64
  %i.mm = mul i64 %i.mj, %i.ml
  %i.mn = icmp eq i64 %i.mm, 0
  br i1 %i.mn, label %.critedge, label %bb.dj

bb.di:                                            ; preds = %bb.dg
  %i.mo = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.dj:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit303
  %i.mp = load i64, ptr %i.dc, align 16, !tbaa !25
  %i.mq = load i32, ptr %i.db, align 8, !tbaa !56
  %i.mr = load i32, ptr %i.cw, align 8, !tbaa !64
  %i.ms = trunc i64 %i.mp to i32
  %i.mt = mul i32 %i.mq, %i.ms
  %i.mu = mul i32 %i.mt, %i.mr                    ; 4 uses
  %i.mv = icmp sgt i32 %i.mu, 0
  br i1 %i.mv, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.dj
  %i.mw = load ptr, ptr %7, align 16, !tbaa !24   ; 9 uses
  %wide.trip.count = zext nneg i32 %i.mu to i64   ; 9 uses
  %min.iters.check = icmp ult i32 %i.mu, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.mx = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %i.my = getelementptr i8, ptr %i.mh, i64 %i.mx  ; 2 uses
  %i.mz = getelementptr i8, ptr %i.mw, i64 %i.mx
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 216
  %bound0 = icmp ult ptr %i.mh, %i.mz
  %bound1 = icmp ult ptr %i.mw, %i.my
  %found.conflict = and i1 %bound0, %bound1
  %bound0738 = icmp ult ptr %i.mh, %i.na
  %bound1739 = icmp ult ptr %i.lv, %i.my
  %found.conflict740 = and i1 %bound0738, %bound1739
  %conflict.rdx = or i1 %found.conflict, %found.conflict740
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check741 = icmp ult i32 %i.mu, 32
  br i1 %min.iters.check741, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.nb = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %9 = load <4 x float>, ptr %i.lv, align 4
  %broadcast.splat = shufflevector <4 x float> %9, <4 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %index ; 4 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 32
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nc, i64 64
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nc, i64 96
  %wide.load = load <8 x float>, ptr %i.nc, align 4, !tbaa !68, !alias.scope !133
  %wide.load742 = load <8 x float>, ptr %i.nd, align 4, !tbaa !68, !alias.scope !133
  %wide.load743 = load <8 x float>, ptr %i.ne, align 4, !tbaa !68, !alias.scope !133
  %wide.load744 = load <8 x float>, ptr %i.nf, align 4, !tbaa !68, !alias.scope !133
  %i.ng = fmul fast <8 x float> %broadcast.splat, %wide.load
  %i.nh = fmul fast <8 x float> %broadcast.splat, %wide.load742
  %i.ni = fmul fast <8 x float> %broadcast.splat, %wide.load743
  %i.nj = fmul fast <8 x float> %broadcast.splat, %wide.load744
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %index ; 4 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 32
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nk, i64 64
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nk, i64 96
  store <8 x float> %i.ng, ptr %i.nk, align 4, !tbaa !68, !alias.scope !134, !noalias !135
  store <8 x float> %i.nh, ptr %i.nl, align 4, !tbaa !68, !alias.scope !134, !noalias !135
  store <8 x float> %i.ni, ptr %i.nm, align 4, !tbaa !68, !alias.scope !134, !noalias !135
  store <8 x float> %i.nj, ptr %i.nn, align 4, !tbaa !68, !alias.scope !134, !noalias !135
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.no = icmp eq i64 %index.next, %n.vec
  br i1 %i.no, label %middle.block, label %vector.body, !llvm.loop !128

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.nb, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !72

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec745 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %10 = load <4 x float>, ptr %i.lv, align 4
  %broadcast.splat749 = shufflevector <4 x float> %10, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index746 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next750, %vec.epilog.vector.body ] ; 3 uses
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %index746
  %wide.load747 = load <4 x float>, ptr %i.np, align 4, !tbaa !68, !alias.scope !133
  %i.nq = fmul fast <4 x float> %broadcast.splat749, %wide.load747
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %index746
  store <4 x float> %i.nq, ptr %i.nr, align 4, !tbaa !68, !alias.scope !134, !noalias !135
  %index.next750 = add nuw i64 %index746, 4       ; 2 uses
  %i.ns = icmp eq i64 %index.next750, %n.vec745
  br i1 %i.ns, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !129

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n751 = icmp eq i64 %n.vec745, %wide.trip.count
  br i1 %cmp.n751, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec745, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %indvars.iv.prol
  %i.nu = load float, ptr %i.nt, align 4, !tbaa !68
  %i.nv = load float, ptr %i.lv, align 4, !tbaa !66
  %i.nw = fmul fast float %i.nv, %i.nu
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %indvars.iv.prol
  store float %i.nw, ptr %i.nx, align 4, !tbaa !68
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !130

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.ny = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.nz = icmp ugt i64 %i.ny, -4
  br i1 %i.nz, label %._crit_edge, label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.dj
  %i.oa = load ptr, ptr %i.ly, align 8, !tbaa !22 ; 2 uses
  %.not.i305 = icmp eq ptr %i.oa, null
  br i1 %.not.i305, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %._crit_edge
  %i.ob = atomicrmw add ptr %i.oa, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %._crit_edge
  %i.oc = load ptr, ptr %i.cu, align 8, !tbaa !22 ; 2 uses
  %.not.i.i = icmp eq ptr %i.oc, null
  br i1 %.not.i.i, label %bb.dr, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.od = atomicrmw add ptr %i.oc, i32 -1 acq_rel, align 4
  %i.oe = icmp eq i32 %i.od, 1
  br i1 %i.oe, label %bb.dn, label %bb.dr

bb.dn:                                            ; preds = %bb.dm
  %i.of = load ptr, ptr %i.cx, align 16, !tbaa !23 ; 3 uses
  %.not3.i.i = icmp eq ptr %i.of, null
  %i.og = load ptr, ptr %7, align 16, !tbaa !24   ; 3 uses
  br i1 %.not3.i.i, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.oh = load ptr, ptr %i.of, align 8, !tbaa !16
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 24
  %i.oj = load ptr, ptr %i.oi, align 8
  invoke void %i.oj(ptr noundef nonnull align 8 dereferenceable(8) %i.of, ptr noundef %i.og)
          to label %bb.dr unwind label %bb.dy, !inline_history !2

bb.dp:                                            ; preds = %bb.dn
  %.not.i18.i = icmp eq ptr %i.og, null
  br i1 %.not.i18.i, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  call void @free(ptr noundef nonnull %i.og) #9
  br label %bb.dr

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %indvars.iv
  %i.ol = load float, ptr %i.ok, align 4, !tbaa !68
  %i.om = load float, ptr %i.lv, align 4, !tbaa !66
  %i.on = fmul fast float %i.om, %i.ol
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %indvars.iv
  store float %i.on, ptr %i.oo, align 4, !tbaa !68
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %indvars.iv.next
  %i.oq = load float, ptr %i.op, align 4, !tbaa !68
  %i.or = load float, ptr %i.lv, align 4, !tbaa !66
  %i.os = fmul fast float %i.or, %i.oq
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %indvars.iv.next
  store float %i.os, ptr %i.ot, align 4, !tbaa !68
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %indvars.iv.next.1
  %i.ov = load float, ptr %i.ou, align 4, !tbaa !68
  %i.ow = load float, ptr %i.lv, align 4, !tbaa !66
  %i.ox = fmul fast float %i.ow, %i.ov
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %indvars.iv.next.1
  store float %i.ox, ptr %i.oy, align 4, !tbaa !68
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %indvars.iv.next.2
  %i.pa = load float, ptr %i.oz, align 4, !tbaa !68
  %i.pb = load float, ptr %i.lv, align 4, !tbaa !66
  %i.pc = fmul fast float %i.pb, %i.pa
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %indvars.iv.next.2
  store float %i.pc, ptr %i.pd, align 4, !tbaa !68
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !131

bb.dr:                                            ; preds = %bb.dm, %bb.dl, %bb.do, %bb.dq, %bb.dp
  %i.pe = load ptr, ptr %i.ly, align 8, !tbaa !22 ; 2 uses
  %i.pf = load <2 x ptr>, ptr %8, align 16, !tbaa !62
  store <2 x ptr> %i.pf, ptr %7, align 16, !tbaa !62
  %i.pg = load i64, ptr %i.lz, align 16, !tbaa !63
  store i64 %i.pg, ptr %i.cv, align 16, !tbaa !63
  %i.ph = load i32, ptr %i.ma, align 8, !tbaa !64
  store i32 %i.ph, ptr %i.cw, align 8, !tbaa !64
  %i.pi = load ptr, ptr %i.mb, align 16, !tbaa !23
  store ptr %i.pi, ptr %i.cx, align 16, !tbaa !23
  %i.pj = load <4 x i32>, ptr %i.mc, align 8, !tbaa !50
  store <4 x i32> %i.pj, ptr %i.cy, align 8, !tbaa !50
  %i.pk = load i32, ptr %i.md, align 8, !tbaa !56
  store i32 %i.pk, ptr %i.db, align 8, !tbaa !56
  %i.pl = load i64, ptr %i.me, align 16, !tbaa !25
  store i64 %i.pl, ptr %i.dc, align 16, !tbaa !25
  %.not.i258 = icmp eq ptr %i.pe, null
  br i1 %.not.i258, label %_ZN4ncnn3MatD2Ev.exit221, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.pm = atomicrmw add ptr %i.pe, i32 -1 acq_rel, align 4
  %i.pn = icmp eq i32 %i.pm, 1
  br i1 %i.pn, label %bb.dt, label %_ZN4ncnn3MatD2Ev.exit221

bb.dt:                                            ; preds = %bb.ds
  %i.po = load ptr, ptr %i.mb, align 16, !tbaa !23 ; 3 uses
  %.not3.i259 = icmp eq ptr %i.po, null
  %i.pp = load ptr, ptr %8, align 16, !tbaa !24   ; 3 uses
  br i1 %.not3.i259, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.pq = load ptr, ptr %i.po, align 8, !tbaa !16
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 24
  %i.ps = load ptr, ptr %i.pr, align 8
  invoke void %i.ps(ptr noundef nonnull align 8 dereferenceable(8) %i.po, ptr noundef %i.pp)
          to label %_ZN4ncnn3MatD2Ev.exit221 unwind label %bb.dx, !inline_history !0

bb.dv:                                            ; preds = %bb.dt
  %.not.i285 = icmp eq ptr %i.pp, null
  br i1 %.not.i285, label %_ZN4ncnn3MatD2Ev.exit221, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  call void @free(ptr noundef nonnull %i.pp) #9
  br label %_ZN4ncnn3MatD2Ev.exit221

bb.dx:                                            ; preds = %bb.du
  %i.pt = landingpad { ptr, i32 }
          catch ptr null
  %i.pu = extractvalue { ptr, i32 } %i.pt, 0
  call void @__clang_call_terminate(ptr %i.pu) #26
  unreachable

_ZN4ncnn3MatD2Ev.exit221:                         ; preds = %bb.ds, %bb.dr, %bb.du, %bb.dv, %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  br label %_ZNK4ncnn3Mat5emptyEv.exit304.thread

bb.dy:                                            ; preds = %bb.do
  %i.pv = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.di
  %.pn190 = phi { ptr, i32 } [ %i.pv, %bb.dy ], [ %i.mo, %bb.di ]
  %i.pw = load ptr, ptr %i.ly, align 8, !tbaa !22 ; 2 uses
  %.not.i262 = icmp eq ptr %i.pw, null
  br i1 %.not.i262, label %_ZN4ncnn3MatD2Ev.exit220, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.px = atomicrmw add ptr %i.pw, i32 -1 acq_rel, align 4
  %i.py = icmp eq i32 %i.px, 1
  br i1 %i.py, label %bb.eb, label %_ZN4ncnn3MatD2Ev.exit220

bb.eb:                                            ; preds = %bb.ea
  %i.pz = load ptr, ptr %i.mb, align 16, !tbaa !23 ; 3 uses
  %.not3.i263 = icmp eq ptr %i.pz, null
  %i.qa = load ptr, ptr %8, align 16, !tbaa !24   ; 3 uses
  br i1 %.not3.i263, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.qb = load ptr, ptr %i.pz, align 8, !tbaa !16
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 24
  %i.qd = load ptr, ptr %i.qc, align 8
  invoke void %i.qd(ptr noundef nonnull align 8 dereferenceable(8) %i.pz, ptr noundef %i.qa)
          to label %_ZN4ncnn3MatD2Ev.exit220 unwind label %bb.ef, !inline_history !0
end_hunk_1
begin_hunk_2_@_ZN4ncnnL30transpose_pack_A_tile_quantizeERKNS_3MatERS0_iiiiS2_:bb.a
  %i.sm = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.sk)
  %i.sn = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.sl)
  %i.so = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.sm, <4 x i32> %i.sn)
  %i.sp = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.so, <8 x i16> splat (i16 -127))
  %i.sq = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.sp, <8 x i16> splat (i16 127))
  %i.sr = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.sq, <8 x i16> poison)
  %i.ss = bitcast <16 x i8> %i.sr to <2 x i64>
  %i.st = extractelement <2 x i64> %i.ss, i64 0
  store i64 %i.st, ptr %.12724.i, align 8, !tbaa !109
  %i.su = getelementptr inbounds nuw i8, ptr %.12724.i, i64 8 ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %.4490723.i, i64 %.idx520.i ; 2 uses
  %i.sw = add nuw nsw i32 %.0506722.i, 2          ; 2 uses
  %i.sx = or disjoint i32 %i.sw, 1
  %i.sy = icmp slt i32 %i.sx, %5
  br i1 %i.sy, label %.lr.ph725.i, label %.preheader665.i, !llvm.loop !892

.lr.ph732.i:                                      ; preds = %.lr.ph732.i.prol.loopexit, %.lr.ph732.i
  %.13731.i = phi ptr [ %i.tx, %.lr.ph732.i ], [ %.13731.i.unr, %.lr.ph732.i.prol.loopexit ] ; 3 uses
  %.5491730.i = phi ptr [ %i.ty, %.lr.ph732.i ], [ %.5491730.i.unr, %.lr.ph732.i.prol.loopexit ] ; 2 uses
  %.1507729.i = phi i32 [ %i.tz, %.lr.ph732.i ], [ %.1507729.i.unr, %.lr.ph732.i.prol.loopexit ]
  %i.sz = load <4 x float>, ptr %.5491730.i, align 1, !tbaa !89
  %i.ta = fmul fast <4 x float> %i.sz, %i.rk      ; 2 uses
  %i.tb = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ta)
  %i.tc = fadd fast <4 x float> %i.tb, %i.ta
  %i.td = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.tc)
  %i.te = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.td, <4 x i32> poison)
  %i.tf = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.te, <8 x i16> <i16 -127, i16 -127, i16 -127, i16 -127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.tg = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.tf, <8 x i16> <i16 127, i16 127, i16 127, i16 127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.th = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.tg, <8 x i16> poison)
  %i.ti = bitcast <16 x i8> %i.th to <4 x i32>
  %i.tj = extractelement <4 x i32> %i.ti, i64 0
  store i32 %i.tj, ptr %.13731.i, align 4, !tbaa !50
  %i.tk = getelementptr inbounds nuw i8, ptr %.13731.i, i64 4
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %.5491730.i, i64 %i.n ; 2 uses
  %i.tm = load <4 x float>, ptr %i.tl, align 1, !tbaa !89
  %i.tn = fmul fast <4 x float> %i.tm, %i.rk      ; 2 uses
  %i.to = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.tn)
  %i.tp = fadd fast <4 x float> %i.to, %i.tn
  %i.tq = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.tp)
  %i.tr = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.tq, <4 x i32> poison)
  %i.ts = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.tr, <8 x i16> <i16 -127, i16 -127, i16 -127, i16 -127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.tt = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ts, <8 x i16> <i16 127, i16 127, i16 127, i16 127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.tu = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.tt, <8 x i16> poison)
  %i.tv = bitcast <16 x i8> %i.tu to <4 x i32>
  %i.tw = extractelement <4 x i32> %i.tv, i64 0
  store i32 %i.tw, ptr %i.tk, align 4, !tbaa !50
  %i.tx = getelementptr inbounds nuw i8, ptr %.13731.i, i64 8 ; 2 uses
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.tl, i64 %i.n
  %i.tz = add nuw nsw i32 %.1507729.i, 2          ; 2 uses
  %exitcond845.not.i.1 = icmp eq i32 %i.tz, %5
  br i1 %exitcond845.not.i.1, label %.loopexit666.i, label %.lr.ph732.i, !llvm.loop !893

.loopexit666.i:                                   ; preds = %.lr.ph732.i.prol.loopexit, %.lr.ph732.i, %.lr.ph719.i, %.lr.ph713.i, %.preheader665.i, %bb.m, %bb.l, %bb.k
  %.14.i = phi ptr [ %.7735.i, %bb.k ], [ %.12.lcssa.i, %.preheader665.i ], [ %i.oy, %.lr.ph713.i ], [ %i.rc, %.lr.ph719.i ], [ %.7735.i, %bb.m ], [ %.7735.i, %bb.l ], [ %.lcssa170.unr, %.lr.ph732.i.prol.loopexit ], [ %i.tx, %.lr.ph732.i ] ; 2 uses
  %indvars.iv.next847.i = add nuw nsw i64 %indvars.iv846.i, 4 ; 3 uses
  %i.ua = icmp slt i64 %indvars.iv.next847.i, %invariant.op.i
  br i1 %i.ua, label %bb.k, label %.preheader664.loopexit.i, !llvm.loop !894

.preheader657.loopexit.i:                         ; preds = %.loopexit660.i
  %i.ub = trunc nuw nsw i64 %indvars.iv.next851.i to i32
  br label %.preheader657.i

.preheader657.i:                                  ; preds = %.preheader657.loopexit.i, %.preheader664.i
  %.2466.lcssa.i = phi i32 [ %.1465.lcssa.i, %.preheader664.i ], [ %i.ub, %.preheader657.loopexit.i ] ; 2 uses
  %.15.lcssa.i = phi ptr [ %.7.lcssa.i, %.preheader664.i ], [ %.23.i, %.preheader657.loopexit.i ]
  %i.uc = icmp slt i32 %.2466.lcssa.i, %3
  br i1 %i.uc, label %.lr.ph801.i, label %_ZN4ncnnL34transpose_pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit

.lr.ph801.i:                                      ; preds = %.preheader657.i
  %i.ud = sext i32 %4 to i64
  %i.ue = mul i64 %i.n, %i.ud
  %i.uf = icmp sgt i32 %5, 7
  %.idx513.i = shl i64 %i.n, 5
  %i.ug = icmp sgt i32 %5, 3                      ; 2 uses
  %.idx512.i = shl i64 %i.n, 4                    ; 2 uses
  %.idx.i = shl i64 %i.n, 3
  %.idx510.i = mul i64 %i.n, 12
  %i.uh = and i32 %5, -4
  %i.ui = sext i32 %.2466.lcssa.i to i64
  %i.uj = sext i32 %2 to i64
  %i.uk = sext i32 %i.e to i64
  %wide.trip.count.i = sext i32 %3 to i64
  %xtraiter181 = and i32 %5, 1
  %lcmp.mod182.not = icmp eq i32 %xtraiter181, 0
  br label %bb.s

bb.o:                                             ; preds = %.loopexit660.i, %.lr.ph772.i
  %indvars.iv850.i = phi i64 [ %i.ly, %.lr.ph772.i ], [ %indvars.iv.next851.i, %.loopexit660.i ] ; 2 uses
  %.15771.i = phi ptr [ %.7.lcssa.i, %.lr.ph772.i ], [ %.23.i, %.loopexit660.i ] ; 7 uses
  %i.ul = load ptr, ptr %0, align 8, !tbaa !24
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %i.ul, i64 %i.lu
  %i.un = add nsw i64 %indvars.iv850.i, %i.ma     ; 4 uses
  %i.uo = mul nsw i64 %i.un, %i.mb
  %i.up = getelementptr inbounds [4 x i8], ptr %i.um, i64 %i.uo ; 4 uses
  switch i32 %i.e, label %.loopexit660.i [
    i32 8, label %bb.p
    i32 4, label %bb.q
    i32 1, label %bb.r
  ]

bb.p:                                             ; preds = %bb.o
  %i.uq = load ptr, ptr %6, align 8, !tbaa !24
  %i.ur = getelementptr [4 x i8], ptr %i.uq, i64 %i.un ; 2 uses
  %i.us = load float, ptr %i.ur, align 4, !tbaa !68
  %i.ut = insertelement <8 x float> poison, float %i.us, i64 0
  %i.uu = shufflevector <8 x float> %i.ut, <8 x float> poison, <8 x i32> zeroinitializer
  %i.uv = getelementptr i8, ptr %i.ur, i64 4
  %i.uw = load float, ptr %i.uv, align 4, !tbaa !68
  %i.ux = insertelement <8 x float> poison, float %i.uw, i64 0
  %i.uy = shufflevector <8 x float> %i.ux, <8 x float> poison, <8 x i32> zeroinitializer
  br i1 %i.lv, label %.lr.ph742.i, label %.loopexit660.i

.lr.ph742.i:                                      ; preds = %bb.p, %.lr.ph742.i
  %.16741.i = phi ptr [ %i.vx, %.lr.ph742.i ], [ %.15771.i, %bb.p ] ; 2 uses
  %.0497740.i = phi i32 [ %i.vz, %.lr.ph742.i ], [ 0, %bb.p ]
  %.0498739.i = phi ptr [ %i.vy, %.lr.ph742.i ], [ %i.up, %bb.p ] ; 3 uses
  %i.uz = load <8 x float>, ptr %.0498739.i, align 32, !tbaa !89
  %i.va = getelementptr inbounds nuw i8, ptr %.0498739.i, i64 32
  %i.vb = load <8 x float>, ptr %i.va, align 32, !tbaa !89
  %i.vc = fmul fast <8 x float> %i.uz, %i.uu      ; 2 uses
  %i.vd = fmul fast <8 x float> %i.vb, %i.uy      ; 2 uses
  %i.ve = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.vc)
  %i.vf = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.vd)
  %i.vg = fadd fast <8 x float> %i.ve, %i.vc
  %i.vh = fadd fast <8 x float> %i.vf, %i.vd
  %i.vi = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.vg) ; 2 uses
  %i.vj = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.vh) ; 2 uses
  %i.vk = shufflevector <8 x i32> %i.vi, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.vl = shufflevector <8 x i32> %i.vi, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.vm = shufflevector <8 x i32> %i.vj, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.vn = shufflevector <8 x i32> %i.vj, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.vo = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.vk, <4 x i32> %i.vl)
  %i.vp = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.vm, <4 x i32> %i.vn)
  %i.vq = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.vo, <8 x i16> splat (i16 -127))
  %i.vr = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.vq, <8 x i16> splat (i16 127))
  %i.vs = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.vp, <8 x i16> splat (i16 -127))
  %i.vt = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.vs, <8 x i16> splat (i16 127))
  %i.vu = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.vr, <8 x i16> %i.vt)
  %i.vv = bitcast <16 x i8> %i.vu to <8 x i16>
  %i.vw = shufflevector <8 x i16> %i.vv, <8 x i16> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %i.vw, ptr %.16741.i, align 16, !tbaa !89
  %i.vx = getelementptr inbounds nuw i8, ptr %.16741.i, i64 16 ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %.0498739.i, i64 %.idx519.i
  %i.vz = add nuw nsw i32 %.0497740.i, 8          ; 2 uses
  %i.wa = or disjoint i32 %i.vz, 7
  %i.wb = icmp slt i32 %i.wa, %5
  br i1 %i.wb, label %.lr.ph742.i, label %.loopexit660.i, !llvm.loop !895

bb.q:                                             ; preds = %bb.o
  %i.wc = load ptr, ptr %6, align 8, !tbaa !24
  %i.wd = getelementptr [4 x i8], ptr %i.wc, i64 %i.un ; 2 uses
  %i.we = load float, ptr %i.wd, align 4, !tbaa !68
  %i.wf = insertelement <4 x float> poison, float %i.we, i64 0 ; 2 uses
  %i.wg = getelementptr i8, ptr %i.wd, i64 4
  %i.wh = load float, ptr %i.wg, align 4, !tbaa !68
  %i.wi = insertelement <4 x float> poison, float %i.wh, i64 0 ; 2 uses
  br i1 %i.lw, label %.lr.ph748.i.preheader, label %.loopexit660.i

.lr.ph748.i.preheader:                            ; preds = %bb.q
  %i.wj = shufflevector <4 x float> %i.wf, <4 x float> %i.wi, <4 x i32> <i32 0, i32 0, i32 4, i32 4>
  %i.wk = shufflevector <4 x float> %i.wf, <4 x float> %i.wi, <4 x i32> <i32 0, i32 0, i32 4, i32 4>
  br label %.lr.ph748.i

.lr.ph748.i:                                      ; preds = %.lr.ph748.i.preheader, %.lr.ph748.i
  %.18747.i = phi ptr [ %i.xe, %.lr.ph748.i ], [ %.15771.i, %.lr.ph748.i.preheader ] ; 2 uses
  %.0496746.i = phi i32 [ %i.xg, %.lr.ph748.i ], [ 0, %.lr.ph748.i.preheader ]
  %.2500745.i = phi ptr [ %i.xf, %.lr.ph748.i ], [ %i.up, %.lr.ph748.i.preheader ] ; 3 uses
  %i.wl = load <4 x float>, ptr %.2500745.i, align 16, !tbaa !89 ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %.2500745.i, i64 16
  %i.wn = load <4 x float>, ptr %i.wm, align 16, !tbaa !89 ; 2 uses
  %i.wo = shufflevector <4 x float> %i.wl, <4 x float> %i.wn, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.wp = fmul fast <4 x float> %i.wo, %i.wj      ; 2 uses
  %i.wq = shufflevector <4 x float> %i.wl, <4 x float> %i.wn, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.wr = fmul fast <4 x float> %i.wq, %i.wk      ; 2 uses
  %i.ws = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.wp)
  %i.wt = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.wr)
  %i.wu = fadd fast <4 x float> %i.ws, %i.wp
  %i.wv = fadd fast <4 x float> %i.wt, %i.wr
  %i.ww = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.wu)
  %i.wx = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.wv)
  %i.wy = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ww, <4 x i32> %i.wx)
  %i.wz = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.wy, <8 x i16> splat (i16 -127))
  %i.xa = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.wz, <8 x i16> splat (i16 127))
  %i.xb = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.xa, <8 x i16> poison)
  %i.xc = bitcast <16 x i8> %i.xb to <2 x i64>
  %i.xd = extractelement <2 x i64> %i.xc, i64 0
  store i64 %i.xd, ptr %.18747.i, align 8, !tbaa !109
  %i.xe = getelementptr inbounds nuw i8, ptr %.18747.i, i64 8 ; 2 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %.2500745.i, i64 %.idx518.i
  %i.xg = add nuw nsw i32 %.0496746.i, 4          ; 2 uses
  %i.xh = or disjoint i32 %i.xg, 3
  %i.xi = icmp slt i32 %i.xh, %5
  br i1 %i.xi, label %.lr.ph748.i, label %.loopexit660.i, !llvm.loop !896

bb.r:                                             ; preds = %bb.o
  %i.xj = load ptr, ptr %6, align 8, !tbaa !24
  %i.xk = getelementptr [4 x i8], ptr %i.xj, i64 %i.un ; 2 uses
  %i.xl = load float, ptr %i.xk, align 4, !tbaa !68 ; 2 uses
  %i.xm = getelementptr i8, ptr %i.xk, i64 4
  %i.xn = load float, ptr %i.xm, align 4, !tbaa !68 ; 2 uses
  %i.xo = insertelement <4 x float> poison, float %i.xl, i64 0 ; 2 uses
  %7 = shufflevector <4 x float> %i.xo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xp = insertelement <4 x float> poison, float %i.xn, i64 0 ; 2 uses
  %8 = shufflevector <4 x float> %i.xp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xq = shufflevector <4 x float> %i.xo, <4 x float> %i.xp, <4 x i32> <i32 0, i32 0, i32 4, i32 4>
  br i1 %i.lw, label %.lr.ph754.i, label %.preheader661.i

.preheader661.i:                                  ; preds = %.lr.ph754.i, %bb.r
  %.4502.lcssa.i = phi ptr [ %i.up, %bb.r ], [ %i.yz, %.lr.ph754.i ] ; 2 uses
  %.0492.lcssa.i = phi i32 [ 0, %bb.r ], [ %i.lx, %.lr.ph754.i ] ; 3 uses
  %.20.lcssa.i = phi ptr [ %.15771.i, %bb.r ], [ %i.yy, %.lr.ph754.i ] ; 2 uses
  %i.xr = or disjoint i32 %.0492.lcssa.i, 1
  %i.xs = icmp slt i32 %i.xr, %5
  br i1 %i.xs, label %.lr.ph761.i, label %.preheader659.i

.lr.ph754.i:                                      ; preds = %bb.r, %.lr.ph754.i
  %.20753.i = phi ptr [ %i.yy, %.lr.ph754.i ], [ %.15771.i, %bb.r ] ; 2 uses
  %.0492752.i = phi i32 [ %i.za, %.lr.ph754.i ], [ 0, %bb.r ]
  %.4502751.i = phi ptr [ %i.yz, %.lr.ph754.i ], [ %i.up, %bb.r ] ; 5 uses
  %i.xt = load i64, ptr %.4502751.i, align 1, !tbaa !89
  %i.xu = insertelement <2 x i64> poison, i64 %i.xt, i64 0
  %i.xv = bitcast <2 x i64> %i.xu to <4 x float>
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %.4502751.i, i64 %i.n
  %i.xx = load i64, ptr %i.xw, align 1, !tbaa !89
  %i.xy = insertelement <2 x i64> poison, i64 %i.xx, i64 0
  %i.xz = bitcast <2 x i64> %i.xy to <4 x float>
  %i.ya = getelementptr inbounds nuw i8, ptr %.4502751.i, i64 %.idx515.i
  %i.yb = load i64, ptr %i.ya, align 1, !tbaa !89
  %i.yc = insertelement <2 x i64> poison, i64 %i.yb, i64 0
  %i.yd = bitcast <2 x i64> %i.yc to <4 x float>
  %i.ye = getelementptr inbounds nuw i8, ptr %.4502751.i, i64 %.idx516.i
  %i.yf = load i64, ptr %i.ye, align 1, !tbaa !89
  %i.yg = insertelement <2 x i64> poison, i64 %i.yf, i64 0
  %i.yh = bitcast <2 x i64> %i.yg to <4 x float>
  %i.yi = shufflevector <4 x float> %i.xv, <4 x float> %i.xz, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.yj = shufflevector <4 x float> %i.yd, <4 x float> %i.yh, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %9 = shufflevector <4 x float> %i.yi, <4 x float> %i.yj, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %10 = shufflevector <4 x float> %i.yi, <4 x float> %i.yj, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.yk = fmul fast <4 x float> %7, %9            ; 2 uses
  %i.yl = fmul fast <4 x float> %8, %10           ; 2 uses
  %11 = shufflevector <4 x float> %i.yk, <4 x float> %i.yl, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %12 = shufflevector <4 x float> %i.yk, <4 x float> %i.yl, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.ym = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %11)
  %i.yn = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %12)
  %i.yo = fadd fast <4 x float> %i.ym, %11
  %i.yp = fadd fast <4 x float> %i.yn, %12
  %i.yq = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.yo)
  %i.yr = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.yp)
  %i.ys = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.yq, <4 x i32> %i.yr)
  %i.yt = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ys, <8 x i16> splat (i16 -127))
  %i.yu = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.yt, <8 x i16> splat (i16 127))
  %i.yv = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.yu, <8 x i16> poison)
  %i.yw = bitcast <16 x i8> %i.yv to <2 x i64>
  %i.yx = extractelement <2 x i64> %i.yw, i64 0
  store i64 %i.yx, ptr %.20753.i, align 8, !tbaa !109
  %i.yy = getelementptr inbounds nuw i8, ptr %.20753.i, i64 8 ; 2 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %.4502751.i, i64 %.idx518.i ; 2 uses
  %i.za = add nuw nsw i32 %.0492752.i, 4          ; 2 uses
  %i.zb = or disjoint i32 %i.za, 3
  %i.zc = icmp slt i32 %i.zb, %5
  br i1 %i.zc, label %.lr.ph754.i, label %.preheader661.i, !llvm.loop !897

.preheader659.i:                                  ; preds = %.lr.ph761.i, %.preheader661.i
  %.5503.lcssa.i = phi ptr [ %.4502.lcssa.i, %.preheader661.i ], [ %i.zx, %.lr.ph761.i ]
  %.1493.lcssa.i = phi i32 [ %.0492.lcssa.i, %.preheader661.i ], [ %i.zy, %.lr.ph761.i ] ; 2 uses
  %.21.lcssa.i = phi ptr [ %.20.lcssa.i, %.preheader661.i ], [ %i.zw, %.lr.ph761.i ] ; 2 uses
  %i.zd = icmp slt i32 %.1493.lcssa.i, %5
  br i1 %i.zd, label %.lr.ph768.i, label %.loopexit660.i

.lr.ph761.i:                                      ; preds = %.preheader661.i, %.lr.ph761.i
  %.21760.i = phi ptr [ %i.zw, %.lr.ph761.i ], [ %.20.lcssa.i, %.preheader661.i ] ; 2 uses
  %.1493759.i = phi i32 [ %i.zy, %.lr.ph761.i ], [ %.0492.lcssa.i, %.preheader661.i ]
  %.5503758.i = phi ptr [ %i.zx, %.lr.ph761.i ], [ %.4502.lcssa.i, %.preheader661.i ] ; 3 uses
  %i.ze = load i64, ptr %.5503758.i, align 1, !tbaa !89
  %i.zf = insertelement <2 x i64> poison, i64 %i.ze, i64 0
  %i.zg = bitcast <2 x i64> %i.zf to <4 x float>
  %i.zh = getelementptr inbounds nuw [4 x i8], ptr %.5503758.i, i64 %i.n
  %i.zi = load i64, ptr %i.zh, align 1, !tbaa !89
  %i.zj = insertelement <2 x i64> poison, i64 %i.zi, i64 0
  %i.zk = bitcast <2 x i64> %i.zj to <4 x float>
  %i.zl = shufflevector <4 x float> %i.zg, <4 x float> %i.zk, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.zm = fmul fast <4 x float> %i.zl, %i.xq      ; 2 uses
  %i.zn = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.zm)
  %i.zo = fadd fast <4 x float> %i.zn, %i.zm
  %i.zp = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.zo)
  %i.zq = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.zp, <4 x i32> poison)
  %i.zr = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.zq, <8 x i16> <i16 -127, i16 -127, i16 -127, i16 -127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.zs = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.zr, <8 x i16> <i16 127, i16 127, i16 127, i16 127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.zt = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.zs, <8 x i16> poison)
  %i.zu = bitcast <16 x i8> %i.zt to <4 x i32>
  %i.zv = extractelement <4 x i32> %i.zu, i64 0
  store i32 %i.zv, ptr %.21760.i, align 4, !tbaa !50
  %i.zw = getelementptr inbounds nuw i8, ptr %.21760.i, i64 4 ; 2 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %.5503758.i, i64 %.idx515.i ; 2 uses
  %i.zy = add nuw nsw i32 %.1493759.i, 2          ; 3 uses
  %i.zz = or disjoint i32 %i.zy, 1
  %i.aaa = icmp slt i32 %i.zz, %5
  br i1 %i.aaa, label %.lr.ph761.i, label %.preheader659.i, !llvm.loop !898

.lr.ph768.i:                                      ; preds = %.preheader659.i, %.lr.ph768.i
  %.22767.i = phi ptr [ %i.aal, %.lr.ph768.i ], [ %.21.lcssa.i, %.preheader659.i ] ; 3 uses
  %.2494766.i = phi i32 [ %i.aan, %.lr.ph768.i ], [ %.1493.lcssa.i, %.preheader659.i ]
  %.6504765.i = phi ptr [ %i.aam, %.lr.ph768.i ], [ %.5503.lcssa.i, %.preheader659.i ] ; 3 uses
  %i.aab = load float, ptr %.6504765.i, align 4, !tbaa !68
  %i.aac = fmul fast float %i.aab, %i.xl
  %i.aad = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.aac)
  %i.aae = fptosi float %i.aad to i32
  %spec.select.i528651.i = tail call i32 @llvm.smax.i32(i32 %i.aae, i32 -127)
  %.0.i529652.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i528651.i, i32 127)
  %.0.i529.i = trunc nsw i32 %.0.i529652.i to i8
  store i8 %.0.i529.i, ptr %.22767.i, align 1, !tbaa !89
  %i.aaf = getelementptr inbounds nuw i8, ptr %.6504765.i, i64 4
  %i.aag = load float, ptr %i.aaf, align 4, !tbaa !68
  %i.aah = fmul fast float %i.aag, %i.xn
  %i.aai = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.aah)
  %i.aaj = fptosi float %i.aai to i32
  %spec.select.i526653.i = tail call i32 @llvm.smax.i32(i32 %i.aaj, i32 -127)
  %.0.i527654.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i526653.i, i32 127)
  %.0.i527.i = trunc nsw i32 %.0.i527654.i to i8
  %i.aak = getelementptr inbounds nuw i8, ptr %.22767.i, i64 1
  store i8 %.0.i527.i, ptr %i.aak, align 1, !tbaa !89
  %i.aal = getelementptr inbounds nuw i8, ptr %.22767.i, i64 2 ; 2 uses
  %i.aam = getelementptr inbounds nuw [4 x i8], ptr %.6504765.i, i64 %i.n
  %i.aan = add nuw nsw i32 %.2494766.i, 1         ; 2 uses
  %exitcond849.not.i = icmp eq i32 %i.aan, %5
  br i1 %exitcond849.not.i, label %.loopexit660.i, label %.lr.ph768.i, !llvm.loop !899

.loopexit660.i:                                   ; preds = %.lr.ph768.i, %.lr.ph748.i, %.lr.ph742.i, %.preheader659.i, %bb.q, %bb.p, %bb.o
  %.23.i = phi ptr [ %.15771.i, %bb.o ], [ %.21.lcssa.i, %.preheader659.i ], [ %i.vx, %.lr.ph742.i ], [ %i.xe, %.lr.ph748.i ], [ %.15771.i, %bb.q ], [ %.15771.i, %bb.p ], [ %i.aal, %.lr.ph768.i ] ; 2 uses
  %indvars.iv.next851.i = add nuw nsw i64 %indvars.iv850.i, 2 ; 3 uses
  %i.aao = icmp slt i64 %indvars.iv.next851.i, %invariant.op916.i
  br i1 %i.aao, label %bb.o, label %.preheader657.loopexit.i, !llvm.loop !900

bb.s:                                             ; preds = %.loopexit.i, %.lr.ph801.i
  %indvars.iv854.i = phi i64 [ %i.ui, %.lr.ph801.i ], [ %indvars.iv.next855.i, %.loopexit.i ] ; 2 uses
  %.24800.i = phi ptr [ %.15.lcssa.i, %.lr.ph801.i ], [ %.31.i, %.loopexit.i ] ; 7 uses
  %i.aap = load ptr, ptr %0, align 8, !tbaa !24
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %i.aap, i64 %i.ue
  %i.aar = add nsw i64 %indvars.iv854.i, %i.uj    ; 2 uses
  %i.aas = mul nsw i64 %i.aar, %i.uk
  %i.aat = getelementptr inbounds [4 x i8], ptr %i.aaq, i64 %i.aas ; 4 uses
  %i.aau = load ptr, ptr %6, align 8, !tbaa !24
  %i.aav = getelementptr inbounds nuw [4 x i8], ptr %i.aau, i64 %i.aar
  %i.aaw = load float, ptr %i.aav, align 4, !tbaa !68 ; 6 uses
  switch i32 %i.e, label %.loopexit.i [
    i32 8, label %bb.t
    i32 4, label %bb.u
    i32 1, label %bb.v
  ]

bb.t:                                             ; preds = %bb.s
  %i.aax = insertelement <8 x float> poison, float %i.aaw, i64 0
  %i.aay = shufflevector <8 x float> %i.aax, <8 x float> poison, <8 x i32> zeroinitializer
  br i1 %i.uf, label %.lr.ph778.i, label %.loopexit.i

.lr.ph778.i:                                      ; preds = %bb.t, %.lr.ph778.i
  %.25777.i = phi ptr [ %i.abm, %.lr.ph778.i ], [ %.24800.i, %bb.t ] ; 2 uses
  %.0457776.i = phi i32 [ %i.abo, %.lr.ph778.i ], [ 0, %bb.t ]
  %.0458775.i = phi ptr [ %i.abn, %.lr.ph778.i ], [ %i.aat, %bb.t ] ; 2 uses
  %i.aaz = load <8 x float>, ptr %.0458775.i, align 32, !tbaa !89
  %i.aba = fmul fast <8 x float> %i.aaz, %i.aay   ; 2 uses
  %i.abb = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.aba)
  %i.abc = fadd fast <8 x float> %i.abb, %i.aba
  %i.abd = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.abc) ; 2 uses
  %i.abe = shufflevector <8 x i32> %i.abd, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.abf = shufflevector <8 x i32> %i.abd, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.abg = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.abe, <4 x i32> %i.abf)
  %i.abh = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.abg, <8 x i16> splat (i16 -127))
  %i.abi = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.abh, <8 x i16> splat (i16 127))
  %i.abj = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.abi, <8 x i16> poison)
  %i.abk = bitcast <16 x i8> %i.abj to <2 x i64>
  %i.abl = extractelement <2 x i64> %i.abk, i64 0
  store i64 %i.abl, ptr %.25777.i, align 8, !tbaa !109
  %i.abm = getelementptr inbounds nuw i8, ptr %.25777.i, i64 8 ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %.0458775.i, i64 %.idx513.i
  %i.abo = add nuw nsw i32 %.0457776.i, 8         ; 2 uses
  %i.abp = or disjoint i32 %i.abo, 7
  %i.abq = icmp slt i32 %i.abp, %5
  br i1 %i.abq, label %.lr.ph778.i, label %.loopexit.i, !llvm.loop !901

bb.u:                                             ; preds = %bb.s
  %i.abr = insertelement <4 x float> poison, float %i.aaw, i64 0
  %i.abs = shufflevector <4 x float> %i.abr, <4 x float> poison, <4 x i32> zeroinitializer
  br i1 %i.ug, label %.lr.ph784.i, label %.loopexit.i

.lr.ph784.i:                                      ; preds = %bb.u, %.lr.ph784.i
  %.0454783.i = phi i32 [ %i.acg, %.lr.ph784.i ], [ 0, %bb.u ]
  %.27782.i = phi ptr [ %i.ace, %.lr.ph784.i ], [ %.24800.i, %bb.u ] ; 2 uses
  %.2460781.i = phi ptr [ %i.acf, %.lr.ph784.i ], [ %i.aat, %bb.u ] ; 2 uses
  %i.abt = load <4 x float>, ptr %.2460781.i, align 16, !tbaa !89
  %i.abu = fmul fast <4 x float> %i.abt, %i.abs   ; 2 uses
  %i.abv = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.abu)
  %i.abw = fadd fast <4 x float> %i.abv, %i.abu
  %i.abx = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.abw)
  %i.aby = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.abx, <4 x i32> poison)
  %i.abz = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aby, <8 x i16> <i16 -127, i16 -127, i16 -127, i16 -127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.aca = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.abz, <8 x i16> <i16 127, i16 127, i16 127, i16 127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.acb = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.aca, <8 x i16> poison)
  %i.acc = bitcast <16 x i8> %i.acb to <4 x i32>
  %i.acd = extractelement <4 x i32> %i.acc, i64 0
  store i32 %i.acd, ptr %.27782.i, align 4, !tbaa !50
  %i.ace = getelementptr inbounds nuw i8, ptr %.27782.i, i64 4 ; 2 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %.2460781.i, i64 %.idx512.i
  %i.acg = add nuw nsw i32 %.0454783.i, 4         ; 2 uses
  %i.ach = or disjoint i32 %i.acg, 3
  %i.aci = icmp slt i32 %i.ach, %5
  br i1 %i.aci, label %.lr.ph784.i, label %.loopexit.i, !llvm.loop !902

bb.v:                                             ; preds = %bb.s
  %i.acj = insertelement <4 x float> poison, float %i.aaw, i64 0
  %i.ack = shufflevector <4 x float> %i.acj, <4 x float> poison, <4 x i32> zeroinitializer
  br i1 %i.ug, label %.lr.ph790.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph790.i, %bb.v
  %.4462.lcssa.i = phi ptr [ %i.aat, %bb.v ], [ %i.adq, %.lr.ph790.i ] ; 3 uses
  %.29.lcssa.i = phi ptr [ %.24800.i, %bb.v ], [ %i.adp, %.lr.ph790.i ] ; 4 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.v ], [ %i.uh, %.lr.ph790.i ] ; 4 uses
  %i.acl = icmp slt i32 %.0.lcssa.i, %5
  br i1 %i.acl, label %.lr.ph797.i.preheader, label %.loopexit.i

.lr.ph797.i.preheader:                            ; preds = %.preheader.i
  %.neg183 = or disjoint i32 %.0.lcssa.i, 1
  br i1 %lcmp.mod182.not, label %.lr.ph797.i.prol.loopexit, label %.lr.ph797.i.prol

.lr.ph797.i.prol:                                 ; preds = %.lr.ph797.i.preheader
  %i.acm = load float, ptr %.4462.lcssa.i, align 4, !tbaa !68
  %i.acn = fmul fast float %i.acm, %i.aaw
  %i.aco = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.acn)
  %i.acp = fptosi float %i.aco to i32
  %spec.select.i649.i.prol = tail call i32 @llvm.smax.i32(i32 %i.acp, i32 -127)
  %.0.i650.i.prol = tail call i32 @llvm.smin.i32(i32 %spec.select.i649.i.prol, i32 127)
  %.0.i.i.prol = trunc nsw i32 %.0.i650.i.prol to i8
  store i8 %.0.i.i.prol, ptr %.29.lcssa.i, align 1, !tbaa !89
  %i.acq = getelementptr inbounds nuw i8, ptr %.29.lcssa.i, i64 1 ; 2 uses
  %i.acr = getelementptr inbounds nuw [4 x i8], ptr %.4462.lcssa.i, i64 %i.n
  %i.acs = or disjoint i32 %.0.lcssa.i, 1
  br label %.lr.ph797.i.prol.loopexit

.lr.ph797.i.prol.loopexit:                        ; preds = %.lr.ph797.i.prol, %.lr.ph797.i.preheader
  %.lcssa153.unr = phi ptr [ poison, %.lr.ph797.i.preheader ], [ %i.acq, %.lr.ph797.i.prol ]
  %.1796.i.unr = phi i32 [ %.0.lcssa.i, %.lr.ph797.i.preheader ], [ %i.acs, %.lr.ph797.i.prol ]
  %.30795.i.unr = phi ptr [ %.29.lcssa.i, %.lr.ph797.i.preheader ], [ %i.acq, %.lr.ph797.i.prol ]
  %.5463794.i.unr = phi ptr [ %.4462.lcssa.i, %.lr.ph797.i.preheader ], [ %i.acr, %.lr.ph797.i.prol ]
  %i.act = icmp eq i32 %5, %.neg183
  br i1 %i.act, label %.loopexit.i, label %.lr.ph797.i

end_hunk_2
begin_hunk_3_@_ZN4ncnnL20pack_A_tile_quantizeERKNS_3MatERS0_iiiiS2_:bb.a
  br i1 %i.kt, label %.lr.ph537.i, label %.loopexit484.i

.lr.ph528.i:                                      ; preds = %.preheader485.i, %.lr.ph528.i
  %.7527.i = phi ptr [ %i.nm, %.lr.ph528.i ], [ %.0354540.i, %.preheader485.i ] ; 2 uses
  %.7367526.i = phi ptr [ %i.nn, %.lr.ph528.i ], [ %.0360.i, %.preheader485.i ] ; 2 uses
  %.6376525.i = phi ptr [ %i.no, %.lr.ph528.i ], [ %i.gl, %.preheader485.i ] ; 10 uses
  %.0388524.i = phi i32 [ %i.np, %.lr.ph528.i ], [ 0, %.preheader485.i ]
  %i.ku = load float, ptr %.6376525.i, align 4, !tbaa !68
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %.6376525.i, i64 %i.n ; 2 uses
  %i.kw = load float, ptr %i.kv, align 4, !tbaa !68
  %i.kx = getelementptr inbounds nuw i8, ptr %.6376525.i, i64 %.idx466.i ; 2 uses
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !68
  %i.kz = getelementptr inbounds nuw i8, ptr %.6376525.i, i64 %.idx467.i ; 2 uses
  %i.la = load float, ptr %i.kz, align 4, !tbaa !68
  %i.lb = getelementptr inbounds nuw i8, ptr %.6376525.i, i64 %.idx409.i ; 2 uses
  %i.lc = load float, ptr %i.lb, align 4, !tbaa !68
  %i.ld = getelementptr inbounds nuw i8, ptr %.6376525.i, i64 %.idx469.i ; 2 uses
  %i.le = load float, ptr %i.ld, align 4, !tbaa !68
  %i.lf = getelementptr inbounds nuw i8, ptr %.6376525.i, i64 %.idx470.i ; 2 uses
  %i.lg = load float, ptr %i.lf, align 4, !tbaa !68
  %i.lh = getelementptr inbounds nuw i8, ptr %.6376525.i, i64 %.idx471.i ; 2 uses
  %i.li = load float, ptr %i.lh, align 4, !tbaa !68
  %i.lj = insertelement <8 x float> poison, float %i.ku, i64 0
  %i.lk = insertelement <8 x float> %i.lj, float %i.kw, i64 1
  %i.ll = insertelement <8 x float> %i.lk, float %i.ky, i64 2
  %i.lm = insertelement <8 x float> %i.ll, float %i.la, i64 3
  %i.ln = insertelement <8 x float> %i.lm, float %i.lc, i64 4
  %i.lo = insertelement <8 x float> %i.ln, float %i.le, i64 5
  %i.lp = insertelement <8 x float> %i.lo, float %i.lg, i64 6
  %i.lq = insertelement <8 x float> %i.lp, float %i.li, i64 7
  %i.lr = getelementptr inbounds nuw i8, ptr %.6376525.i, i64 4
  %i.ls = load float, ptr %i.lr, align 4, !tbaa !68
  %i.lt = getelementptr i8, ptr %i.kv, i64 4
  %i.lu = load float, ptr %i.lt, align 4, !tbaa !68
  %i.lv = getelementptr inbounds nuw i8, ptr %i.kx, i64 4
  %i.lw = load float, ptr %i.lv, align 4, !tbaa !68
  %i.lx = getelementptr i8, ptr %i.kz, i64 4
  %i.ly = load float, ptr %i.lx, align 4, !tbaa !68
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lb, i64 4
  %i.ma = load float, ptr %i.lz, align 4, !tbaa !68
  %i.mb = getelementptr i8, ptr %i.ld, i64 4
  %i.mc = load float, ptr %i.mb, align 4, !tbaa !68
  %i.md = getelementptr inbounds nuw i8, ptr %i.lf, i64 4
  %i.me = load float, ptr %i.md, align 4, !tbaa !68
  %i.mf = getelementptr i8, ptr %i.lh, i64 4
  %i.mg = load float, ptr %i.mf, align 4, !tbaa !68
  %i.mh = insertelement <8 x float> poison, float %i.ls, i64 0
  %i.mi = insertelement <8 x float> %i.mh, float %i.lu, i64 1
  %i.mj = insertelement <8 x float> %i.mi, float %i.lw, i64 2
  %i.mk = insertelement <8 x float> %i.mj, float %i.ly, i64 3
  %i.ml = insertelement <8 x float> %i.mk, float %i.ma, i64 4
  %i.mm = insertelement <8 x float> %i.ml, float %i.mc, i64 5
  %i.mn = insertelement <8 x float> %i.mm, float %i.me, i64 6
  %i.mo = insertelement <8 x float> %i.mn, float %i.mg, i64 7
  %i.mp = fmul fast <8 x float> %i.lq, %i.gp      ; 2 uses
  %i.mq = fmul fast <8 x float> %i.mo, %i.gp      ; 2 uses
  %i.mr = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.mp)
  %i.ms = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.mq)
  %i.mt = fadd fast <8 x float> %i.mr, %i.mp
  %i.mu = fadd fast <8 x float> %i.ms, %i.mq
  %i.mv = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.mt) ; 2 uses
  %i.mw = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.mu) ; 2 uses
  %i.mx = shufflevector <8 x i32> %i.mv, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.my = shufflevector <8 x i32> %i.mv, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.mz = shufflevector <8 x i32> %i.mw, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.na = shufflevector <8 x i32> %i.mw, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.nb = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.mx, <4 x i32> %i.my)
  %i.nc = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.mz, <4 x i32> %i.na)
  %i.nd = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.nb, <8 x i16> splat (i16 -127))
  %i.ne = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.nd, <8 x i16> splat (i16 127))
  %i.nf = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.nc, <8 x i16> splat (i16 -127))
  %i.ng = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.nf, <8 x i16> splat (i16 127))
  %i.nh = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ne, <8 x i16> %i.ng)
  %i.ni = shufflevector <16 x i8> %i.nh, <16 x i8> poison, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.nj = bitcast <16 x i8> %i.ni to <2 x double> ; 2 uses
  %i.nk = extractelement <2 x double> %i.nj, i64 0
  store double %i.nk, ptr %.7527.i, align 1, !tbaa !89
  %i.nl = extractelement <2 x double> %i.nj, i64 1
  store double %i.nl, ptr %.7367526.i, align 1, !tbaa !89
  %i.nm = getelementptr inbounds nuw i8, ptr %.7527.i, i64 8 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %.7367526.i, i64 8 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.6376525.i, i64 8 ; 2 uses
  %i.np = add nuw nsw i32 %.0388524.i, 2          ; 2 uses
  %i.nq = or disjoint i32 %i.np, 1
  %i.nr = icmp slt i32 %i.nq, %5
  br i1 %i.nr, label %.lr.ph528.i, label %.preheader483.i, !llvm.loop !915

.lr.ph537.i:                                      ; preds = %.preheader483.i, %.lr.ph537.i
  %.8536.i = phi ptr [ %i.pc, %.lr.ph537.i ], [ %.7.lcssa.i, %.preheader483.i ] ; 2 uses
  %.8368535.i = phi ptr [ %i.pd, %.lr.ph537.i ], [ %.7367.lcssa.i, %.preheader483.i ] ; 2 uses
  %.7377534.i = phi ptr [ %i.pe, %.lr.ph537.i ], [ %.6376.lcssa.i, %.preheader483.i ] ; 9 uses
  %.1389533.i = phi i32 [ %i.pf, %.lr.ph537.i ], [ %.0388.lcssa.i, %.preheader483.i ]
  %i.ns = load float, ptr %.7377534.i, align 4, !tbaa !68
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %.7377534.i, i64 %i.n
  %i.nu = load float, ptr %i.nt, align 4, !tbaa !68
  %i.nv = getelementptr inbounds nuw i8, ptr %.7377534.i, i64 %.idx466.i
  %i.nw = load float, ptr %i.nv, align 4, !tbaa !68
  %i.nx = getelementptr inbounds nuw i8, ptr %.7377534.i, i64 %.idx467.i
  %i.ny = load float, ptr %i.nx, align 4, !tbaa !68
  %i.nz = getelementptr inbounds nuw i8, ptr %.7377534.i, i64 %.idx409.i
  %i.oa = load float, ptr %i.nz, align 4, !tbaa !68
  %i.ob = getelementptr inbounds nuw i8, ptr %.7377534.i, i64 %.idx469.i
  %i.oc = load float, ptr %i.ob, align 4, !tbaa !68
  %i.od = getelementptr inbounds nuw i8, ptr %.7377534.i, i64 %.idx470.i
  %i.oe = load float, ptr %i.od, align 4, !tbaa !68
  %i.of = getelementptr inbounds nuw i8, ptr %.7377534.i, i64 %.idx471.i
  %i.og = load float, ptr %i.of, align 4, !tbaa !68
  %i.oh = insertelement <8 x float> poison, float %i.ns, i64 0
  %i.oi = insertelement <8 x float> %i.oh, float %i.nu, i64 1
  %i.oj = insertelement <8 x float> %i.oi, float %i.nw, i64 2
  %i.ok = insertelement <8 x float> %i.oj, float %i.ny, i64 3
  %i.ol = insertelement <8 x float> %i.ok, float %i.oa, i64 4
  %i.om = insertelement <8 x float> %i.ol, float %i.oc, i64 5
  %i.on = insertelement <8 x float> %i.om, float %i.oe, i64 6
  %i.oo = insertelement <8 x float> %i.on, float %i.og, i64 7
  %i.op = fmul fast <8 x float> %i.oo, %i.gp      ; 2 uses
  %i.oq = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.op)
  %i.or = fadd fast <8 x float> %i.oq, %i.op
  %i.os = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.or) ; 2 uses
  %i.ot = shufflevector <8 x i32> %i.os, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ou = shufflevector <8 x i32> %i.os, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ov = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ot, <4 x i32> %i.ou)
  %i.ow = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ov, <8 x i16> splat (i16 -127))
  %i.ox = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ow, <8 x i16> splat (i16 127))
  %i.oy = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ox, <8 x i16> poison)
  %i.oz = bitcast <16 x i8> %i.oy to <4 x i32>    ; 2 uses
  %i.pa = extractelement <4 x i32> %i.oz, i64 0
  store i32 %i.pa, ptr %.8536.i, align 4, !tbaa !50
  %i.pb = extractelement <4 x i32> %i.oz, i64 1
  store i32 %i.pb, ptr %.8368535.i, align 4, !tbaa !50
  %i.pc = getelementptr inbounds nuw i8, ptr %.8536.i, i64 4
  %i.pd = getelementptr inbounds nuw i8, ptr %.8368535.i, i64 4 ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %.7377534.i, i64 4
  %i.pf = add nuw nsw i32 %.1389533.i, 1          ; 2 uses
  %exitcond657.not.i = icmp eq i32 %i.pf, %5
  br i1 %exitcond657.not.i, label %.loopexit484.i, label %.lr.ph537.i, !llvm.loop !916

.loopexit484.i:                                   ; preds = %.lr.ph537.i, %.lr.ph520.i, %.lr.ph503.i, %.preheader483.i, %.preheader486.i, %.preheader489.i, %bb.k
  %.9369.i = phi ptr [ %.0360.i, %bb.k ], [ %.7367.lcssa.i, %.preheader483.i ], [ %i.im, %.lr.ph503.i ], [ %i.kq, %.lr.ph520.i ], [ %.4364.lcssa.i, %.preheader486.i ], [ %.1361.lcssa.i, %.preheader489.i ], [ %i.pd, %.lr.ph537.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8 ; 3 uses
  %i.pg = or disjoint i64 %indvars.iv.next.i, 7
  %i.ph = icmp samesign ult i64 %i.pg, %i.x
  br i1 %i.ph, label %bb.k, label %.preheader482.loopexit.i, !llvm.loop !917

.preheader475.loopexit.i:                         ; preds = %.loopexit477.i.us40, %.loopexit477.i.us, %.loopexit477.i.preheader
  %.us-phi = phi ptr [ %.0354.lcssa.i, %.loopexit477.i.preheader ], [ %.15.i.us, %.loopexit477.i.us ], [ %.15.i.us41, %.loopexit477.i.us40 ]
  %.us-phi35 = phi i64 [ %i.aq, %.loopexit477.i.preheader ], [ %indvars.iv.next662.i.us, %.loopexit477.i.us ], [ %indvars.iv.next662.i.us42, %.loopexit477.i.us40 ]
  %i.pi = trunc nuw nsw i64 %.us-phi35 to i32
  br label %.preheader475.i

.preheader475.i:                                  ; preds = %.preheader475.loopexit.i, %.preheader482.i
  %.1357.lcssa.i = phi i32 [ %.0356.lcssa.i, %.preheader482.i ], [ %i.pi, %.preheader475.loopexit.i ] ; 3 uses
  %.9.lcssa.i = phi ptr [ %.0354.lcssa.i, %.preheader482.i ], [ %.us-phi, %.preheader475.loopexit.i ] ; 2 uses
  %i.pj = or disjoint i32 %.1357.lcssa.i, 1
  %i.pk = icmp slt i32 %i.pj, %3
  br i1 %i.pk, label %.lr.ph595.i, label %.preheader472.i

.lr.ph595.i:                                      ; preds = %.preheader475.i
  %i.pl = sext i32 %4 to i64
  %i.pm = icmp sgt i32 %5, 3
  %i.pn = and i32 %5, -4
  %i.po = zext nneg i32 %.1357.lcssa.i to i64
  %i.pp = sext i32 %3 to i64
  %i.pq = sext i32 %2 to i64
  %invariant.op717.i = add nsw i64 %i.pp, -1
  %i.pr = shl nuw nsw i64 %i.n, 2                 ; 2 uses
  br label %bb.l

.preheader472.loopexit.i:                         ; preds = %._crit_edge.i
  %i.ps = trunc nuw nsw i64 %indvars.iv.next666.i to i32
  br label %.preheader472.i

.preheader472.i:                                  ; preds = %.preheader472.loopexit.i, %.preheader475.i
  %.2358.lcssa.i = phi i32 [ %.1357.lcssa.i, %.preheader475.i ], [ %i.ps, %.preheader472.loopexit.i ] ; 2 uses
  %.16.lcssa.i = phi ptr [ %.9.lcssa.i, %.preheader475.i ], [ %.19.lcssa.i, %.preheader472.loopexit.i ]
  %i.pt = icmp slt i32 %.2358.lcssa.i, %3
  br i1 %i.pt, label %.lr.ph614.i, label %_ZN4ncnnL24pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit

.lr.ph614.i:                                      ; preds = %.preheader472.i
  %i.pu = sext i32 %4 to i64
  %i.pv = icmp sgt i32 %5, 3
  %i.pw = and i32 %5, -4
  %i.px = sext i32 %.2358.lcssa.i to i64
  %i.py = sext i32 %2 to i64
  %wide.trip.count.i = sext i32 %3 to i64
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge.i, %.lr.ph595.i
  %indvars.iv665.i = phi i64 [ %i.po, %.lr.ph595.i ], [ %indvars.iv.next666.i, %._crit_edge.i ] ; 2 uses
  %.16594.i = phi ptr [ %.9.lcssa.i, %.lr.ph595.i ], [ %.19.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.pz = load ptr, ptr %0, align 8, !tbaa !24
  %i.qa = add nsw i64 %indvars.iv665.i, %i.pq     ; 2 uses
  %i.qb = mul i64 %i.qa, %i.n
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.pz, i64 %i.qb
  %i.qd = getelementptr inbounds [4 x i8], ptr %i.qc, i64 %i.pl ; 2 uses
  %i.qe = load ptr, ptr %6, align 8, !tbaa !24
  %i.qf = getelementptr [4 x i8], ptr %i.qe, i64 %i.qa ; 2 uses
  %i.qg = load float, ptr %i.qf, align 4, !tbaa !68 ; 3 uses
  %i.qh = getelementptr i8, ptr %i.qf, i64 4
  %i.qi = load float, ptr %i.qh, align 4, !tbaa !68 ; 3 uses
  %i.qj = insertelement <4 x float> poison, float %i.qg, i64 0 ; 2 uses
  %7 = shufflevector <4 x float> %i.qj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qk = insertelement <4 x float> poison, float %i.qi, i64 0 ; 2 uses
  %8 = shufflevector <4 x float> %i.qk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ql = shufflevector <4 x float> %i.qj, <4 x float> %i.qk, <4 x i32> <i32 0, i32 0, i32 4, i32 4>
  br i1 %i.pm, label %.lr.ph577.i, label %.preheader474.i

.preheader474.i:                                  ; preds = %.lr.ph577.i, %bb.l
  %.0381.lcssa.i = phi ptr [ %i.qd, %bb.l ], [ %i.rf, %.lr.ph577.i ] ; 2 uses
  %.0378.lcssa.i = phi i32 [ 0, %bb.l ], [ %i.pn, %.lr.ph577.i ] ; 3 uses
  %.17.lcssa.i = phi ptr [ %.16594.i, %bb.l ], [ %i.re, %.lr.ph577.i ] ; 2 uses
  %i.qm = or disjoint i32 %.0378.lcssa.i, 1
  %i.qn = icmp slt i32 %i.qm, %5
  br i1 %i.qn, label %.lr.ph584.i, label %.preheader473.i

.lr.ph577.i:                                      ; preds = %bb.l, %.lr.ph577.i
  %.17576.i = phi ptr [ %i.re, %.lr.ph577.i ], [ %.16594.i, %bb.l ] ; 2 uses
  %.0378575.i = phi i32 [ %i.rg, %.lr.ph577.i ], [ 0, %bb.l ]
  %.0381574.i = phi ptr [ %i.rf, %.lr.ph577.i ], [ %i.qd, %bb.l ] ; 3 uses
  %i.qo = load <4 x float>, ptr %.0381574.i, align 1, !tbaa !89
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %.0381574.i, i64 %i.n
  %i.qq = load <4 x float>, ptr %i.qp, align 1, !tbaa !89
  %9 = fmul fast <4 x float> %i.qo, %7            ; 2 uses
  %i.qr = fmul fast <4 x float> %i.qq, %8         ; 2 uses
  %10 = shufflevector <4 x float> %9, <4 x float> %i.qr, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %11 = shufflevector <4 x float> %9, <4 x float> %i.qr, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.qs = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %10)
  %i.qt = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %11)
  %i.qu = fadd fast <4 x float> %i.qs, %10
  %i.qv = fadd fast <4 x float> %i.qt, %11
  %i.qw = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.qu)
  %i.qx = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.qv)
  %i.qy = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.qw, <4 x i32> %i.qx)
  %i.qz = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.qy, <8 x i16> splat (i16 -127))
  %i.ra = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.qz, <8 x i16> splat (i16 127))
  %i.rb = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ra, <8 x i16> poison)
  %i.rc = bitcast <16 x i8> %i.rb to <2 x i64>
  %i.rd = extractelement <2 x i64> %i.rc, i64 0
  store i64 %i.rd, ptr %.17576.i, align 8, !tbaa !109
  %i.re = getelementptr inbounds nuw i8, ptr %.17576.i, i64 8 ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %.0381574.i, i64 16 ; 2 uses
  %i.rg = add nuw nsw i32 %.0378575.i, 4          ; 2 uses
  %i.rh = or disjoint i32 %i.rg, 3
  %i.ri = icmp slt i32 %i.rh, %5
  br i1 %i.ri, label %.lr.ph577.i, label %.preheader474.i, !llvm.loop !918

.preheader473.i:                                  ; preds = %.lr.ph584.i, %.preheader474.i
  %.1382.lcssa.i = phi ptr [ %.0381.lcssa.i, %.preheader474.i ], [ %i.tb, %.lr.ph584.i ] ; 8 uses
  %.1379.lcssa.i = phi i32 [ %.0378.lcssa.i, %.preheader474.i ], [ %i.tc, %.lr.ph584.i ] ; 6 uses
  %.18.lcssa.i = phi ptr [ %.17.lcssa.i, %.preheader474.i ], [ %i.ta, %.lr.ph584.i ] ; 8 uses
  %i.rj = icmp slt i32 %.1379.lcssa.i, %5
  br i1 %i.rj, label %.lr.ph591.i.preheader, label %._crit_edge.i

.lr.ph591.i.preheader:                            ; preds = %.preheader473.i
  %i.rk = xor i32 %.1379.lcssa.i, -1
  %i.rl = add i32 %5, %i.rk                       ; 2 uses
  %i.rm = zext i32 %i.rl to i64
  %i.rn = add nuw nsw i64 %i.rm, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.rl, 7
  br i1 %min.iters.check, label %.lr.ph591.i.preheader182, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph591.i.preheader
  %scevgep = getelementptr i8, ptr %.18.lcssa.i, i64 2
  %i.ro = xor i32 %.1379.lcssa.i, -1
  %i.rp = add i32 %5, %i.ro
  %i.rq = zext i32 %i.rp to i64                   ; 2 uses
  %i.rr = shl nuw nsw i64 %i.rq, 1
  %scevgep139 = getelementptr i8, ptr %scevgep, i64 %i.rr ; 2 uses
  %scevgep140 = getelementptr i8, ptr %.1382.lcssa.i, i64 %i.pr
  %i.rs = getelementptr i8, ptr %.1382.lcssa.i, i64 %i.pr
  %scevgep141 = getelementptr i8, ptr %i.rs, i64 4
  %i.rt = shl nuw nsw i64 %i.rq, 2                ; 2 uses
  %scevgep142 = getelementptr i8, ptr %scevgep141, i64 %i.rt
  %scevgep143 = getelementptr i8, ptr %.1382.lcssa.i, i64 4
  %scevgep144 = getelementptr i8, ptr %scevgep143, i64 %i.rt
  %bound0 = icmp ult ptr %.18.lcssa.i, %scevgep142
  %bound1 = icmp ult ptr %scevgep140, %scevgep139
  %found.conflict = and i1 %bound0, %bound1
  %bound0145 = icmp ult ptr %.18.lcssa.i, %scevgep144
  %bound1146 = icmp ult ptr %.1382.lcssa.i, %scevgep139
  %found.conflict147 = and i1 %bound0145, %bound1146
  %conflict.rdx = or i1 %found.conflict, %found.conflict147
  br i1 %conflict.rdx, label %.lr.ph591.i.preheader182, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.rn, 8589934584              ; 5 uses
  %i.ru = shl nuw nsw i64 %n.vec, 1
  %i.rv = getelementptr i8, ptr %.18.lcssa.i, i64 %i.ru ; 2 uses
  %i.rw = trunc i64 %n.vec to i32
  %i.rx = add i32 %.1379.lcssa.i, %i.rw
  %i.ry = shl nuw nsw i64 %n.vec, 2
  %i.rz = getelementptr i8, ptr %.1382.lcssa.i, i64 %i.ry
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.qg, i64 0
  %broadcast.splatinsert148 = insertelement <8 x float> poison, float %i.qi, i64 0
  %i.sa = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> %broadcast.splatinsert148, <16 x i32> <i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.sb = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.18.lcssa.i, i64 %i.sb
  %i.sc = shl i64 %index, 2
  %next.gep150 = getelementptr i8, ptr %.1382.lcssa.i, i64 %i.sc ; 2 uses
  %wide.load = load <8 x float>, ptr %next.gep150, align 4, !tbaa !68, !alias.scope !934
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %next.gep150, i64 %i.n
  %wide.load151 = load <8 x float>, ptr %i.sd, align 4, !tbaa !68, !alias.scope !935
  %i.se = shufflevector <8 x float> %wide.load, <8 x float> %wide.load151, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.sf = fmul fast <16 x float> %i.se, %i.sa
  %i.sg = tail call fast <16 x float> @llvm.round.v16f32(<16 x float> %i.sf)
  %i.sh = fptosi <16 x float> %i.sg to <16 x i32>
  %i.si = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.sh, <16 x i32> splat (i32 -127))
  %i.sj = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.si, <16 x i32> splat (i32 127))
  %interleaved.vec = trunc nsw <16 x i32> %i.sj to <16 x i8>
  store <16 x i8> %interleaved.vec, ptr %next.gep, align 1, !tbaa !89, !alias.scope !936, !noalias !937
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.sk = icmp eq i64 %index.next, %n.vec
  br i1 %i.sk, label %middle.block, label %vector.body, !llvm.loop !923

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.rn, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph591.i.preheader182

.lr.ph591.i.preheader182:                         ; preds = %vector.memcheck, %.lr.ph591.i.preheader, %middle.block
  %.19590.i.ph = phi ptr [ %.18.lcssa.i, %vector.memcheck ], [ %.18.lcssa.i, %.lr.ph591.i.preheader ], [ %i.rv, %middle.block ]
  %.2380589.i.ph = phi i32 [ %.1379.lcssa.i, %vector.memcheck ], [ %.1379.lcssa.i, %.lr.ph591.i.preheader ], [ %i.rx, %middle.block ]
  %.2383588.i.ph = phi ptr [ %.1382.lcssa.i, %vector.memcheck ], [ %.1382.lcssa.i, %.lr.ph591.i.preheader ], [ %i.rz, %middle.block ]
  br label %.lr.ph591.i

.lr.ph584.i:                                      ; preds = %.preheader474.i, %.lr.ph584.i
  %.18583.i = phi ptr [ %i.ta, %.lr.ph584.i ], [ %.17.lcssa.i, %.preheader474.i ] ; 2 uses
  %.1379582.i = phi i32 [ %i.tc, %.lr.ph584.i ], [ %.0378.lcssa.i, %.preheader474.i ]
  %.1382581.i = phi ptr [ %i.tb, %.lr.ph584.i ], [ %.0381.lcssa.i, %.preheader474.i ] ; 3 uses
  %i.sl = load i64, ptr %.1382581.i, align 1, !tbaa !89
  %i.sm = insertelement <2 x i64> poison, i64 %i.sl, i64 0
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %.1382581.i, i64 %i.n
  %i.so = load i64, ptr %i.sn, align 1, !tbaa !89
  %.uncasted.i = insertelement <2 x i64> %i.sm, i64 %i.so, i64 1
  %i.sp = bitcast <2 x i64> %.uncasted.i to <4 x float>
  %i.sq = fmul fast <4 x float> %i.ql, %i.sp      ; 2 uses
  %i.sr = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.sq)
  %i.ss = fadd fast <4 x float> %i.sr, %i.sq
  %i.st = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ss)
  %i.su = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.st, <4 x i32> poison)
  %i.sv = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.su, <8 x i16> <i16 -127, i16 -127, i16 -127, i16 -127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.sw = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.sv, <8 x i16> <i16 127, i16 127, i16 127, i16 127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.sx = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.sw, <8 x i16> poison)
  %i.sy = bitcast <16 x i8> %i.sx to <4 x i32>
  %i.sz = extractelement <4 x i32> %i.sy, i64 0
  store i32 %i.sz, ptr %.18583.i, align 4, !tbaa !50
  %i.ta = getelementptr inbounds nuw i8, ptr %.18583.i, i64 4 ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %.1382581.i, i64 8 ; 2 uses
  %i.tc = add nuw nsw i32 %.1379582.i, 2          ; 3 uses
  %i.td = or disjoint i32 %i.tc, 1
  %i.te = icmp slt i32 %i.td, %5
  br i1 %i.te, label %.lr.ph584.i, label %.preheader473.i, !llvm.loop !924

.lr.ph591.i:                                      ; preds = %.lr.ph591.i.preheader182, %.lr.ph591.i
  %.19590.i = phi ptr [ %i.tp, %.lr.ph591.i ], [ %.19590.i.ph, %.lr.ph591.i.preheader182 ] ; 3 uses
  %.2380589.i = phi i32 [ %i.tr, %.lr.ph591.i ], [ %.2380589.i.ph, %.lr.ph591.i.preheader182 ]
  %.2383588.i = phi ptr [ %i.tq, %.lr.ph591.i ], [ %.2383588.i.ph, %.lr.ph591.i.preheader182 ] ; 3 uses
  %i.tf = load float, ptr %.2383588.i, align 4, !tbaa !68
  %i.tg = fmul fast float %i.tf, %i.qg
  %i.th = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.tg)
  %i.ti = fptosi float %i.th to i32
  %spec.select.i412460.i = tail call i32 @llvm.smax.i32(i32 %i.ti, i32 -127)
  %.0.i413461.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i412460.i, i32 127)
  %.0.i413.i = trunc nsw i32 %.0.i413461.i to i8
  store i8 %.0.i413.i, ptr %.19590.i, align 1, !tbaa !89
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %.2383588.i, i64 %i.n
  %i.tk = load float, ptr %i.tj, align 4, !tbaa !68
  %i.tl = fmul fast float %i.tk, %i.qi
  %i.tm = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.tl)
  %i.tn = fptosi float %i.tm to i32
  %spec.select.i410462.i = tail call i32 @llvm.smax.i32(i32 %i.tn, i32 -127)
  %.0.i411463.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i410462.i, i32 127)
  %.0.i411.i = trunc nsw i32 %.0.i411463.i to i8
  %i.to = getelementptr inbounds nuw i8, ptr %.19590.i, i64 1
  store i8 %.0.i411.i, ptr %i.to, align 1, !tbaa !89
  %i.tp = getelementptr inbounds nuw i8, ptr %.19590.i, i64 2 ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %.2383588.i, i64 4
  %i.tr = add nuw nsw i32 %.2380589.i, 1          ; 2 uses
  %exitcond664.not.i = icmp eq i32 %i.tr, %5
  br i1 %exitcond664.not.i, label %._crit_edge.i, label %.lr.ph591.i, !llvm.loop !925

._crit_edge.i:                                    ; preds = %.lr.ph591.i, %middle.block, %.preheader473.i
  %.19.lcssa.i = phi ptr [ %.18.lcssa.i, %.preheader473.i ], [ %i.rv, %middle.block ], [ %i.tp, %.lr.ph591.i ] ; 2 uses
  %indvars.iv.next666.i = add nuw nsw i64 %indvars.iv665.i, 2 ; 3 uses
  %i.ts = icmp slt i64 %indvars.iv.next666.i, %invariant.op717.i
  br i1 %i.ts, label %bb.l, label %.preheader472.loopexit.i, !llvm.loop !926

bb.m:                                             ; preds = %._crit_edge610.i, %.lr.ph614.i
  %indvars.iv669.i = phi i64 [ %i.px, %.lr.ph614.i ], [ %indvars.iv.next670.i, %._crit_edge610.i ] ; 2 uses
  %.20613.i = phi ptr [ %.16.lcssa.i, %.lr.ph614.i ], [ %.22.lcssa.i, %._crit_edge610.i ] ; 2 uses
  %i.tt = load ptr, ptr %0, align 8, !tbaa !24
  %i.tu = add nsw i64 %indvars.iv669.i, %i.py     ; 2 uses
  %i.tv = mul i64 %i.tu, %i.n
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.tt, i64 %i.tv
  %i.tx = getelementptr inbounds [4 x i8], ptr %i.tw, i64 %i.pu ; 2 uses
  %i.ty = load ptr, ptr %6, align 8, !tbaa !24
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.ty, i64 %i.tu
  %i.ua = load float, ptr %i.tz, align 4, !tbaa !68 ; 5 uses
  %i.ub = insertelement <4 x float> poison, float %i.ua, i64 0
  %i.uc = shufflevector <4 x float> %i.ub, <4 x float> poison, <4 x i32> zeroinitializer
  br i1 %i.pv, label %.lr.ph602.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph602.i, %bb.m
  %.21.lcssa.i = phi ptr [ %.20613.i, %bb.m ], [ %i.vt, %.lr.ph602.i ] ; 7 uses
  %.0352.lcssa.i = phi ptr [ %i.tx, %bb.m ], [ %i.vu, %.lr.ph602.i ] ; 6 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.m ], [ %i.pw, %.lr.ph602.i ] ; 6 uses
  %i.ud = icmp slt i32 %.0.lcssa.i, %5
  br i1 %i.ud, label %.lr.ph609.i.preheader, label %._crit_edge610.i

.lr.ph609.i.preheader:                            ; preds = %.preheader.i
  %i.ue = xor i32 %.0.lcssa.i, -1
  %i.uf = add i32 %5, %i.ue                       ; 2 uses
  %i.ug = zext i32 %i.uf to i64
  %i.uh = add nuw nsw i64 %i.ug, 1                ; 2 uses
  %min.iters.check163 = icmp ult i32 %i.uf, 7
  br i1 %min.iters.check163, label %.lr.ph609.i.preheader179, label %vector.memcheck154

vector.memcheck154:                               ; preds = %.lr.ph609.i.preheader
  %scevgep155 = getelementptr i8, ptr %.21.lcssa.i, i64 1
  %i.ui = xor i32 %.0.lcssa.i, -1
  %i.uj = add i32 %5, %i.ui
  %i.uk = zext i32 %i.uj to i64                   ; 2 uses
  %scevgep156 = getelementptr i8, ptr %scevgep155, i64 %i.uk
  %scevgep157 = getelementptr i8, ptr %.0352.lcssa.i, i64 4
  %i.ul = shl nuw nsw i64 %i.uk, 2
  %scevgep158 = getelementptr i8, ptr %scevgep157, i64 %i.ul
end_hunk_3

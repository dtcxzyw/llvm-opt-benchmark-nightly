Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/priorbox?download=true
inline.NumInlined: 11
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK4ncnn8PriorBox7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a

bb.p:                                             ; preds = %bb.o
  %i.do = sitofp fast i32 %i.de to float
  %i.dp = sitofp fast i32 %i.s to float
  %i.dq = fdiv fast float %i.do, %i.dp            ; 2 uses
  store float %i.dq, ptr %i.j, align 4, !tbaa !27
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.ds = load i8, ptr %i.dr, align 4, !tbaa !51, !range !67, !noundef !68
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.du = tail call fast float @llvm.ceil.f32(float %i.dq)
  store float %i.du, ptr %i.j, align 4, !tbaa !27
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.o
  %i.dv = fcmp fast oeq float %i.dm, -2.330000e+02
  br i1 %i.dv, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.dw = sitofp fast i32 %i.di to float
  %i.dx = sitofp fast i32 %i.u to float
  %i.dy = fdiv fast float %i.dw, %i.dx            ; 2 uses
  store float %i.dy, ptr %i.k, align 4, !tbaa !27
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.ea = load i8, ptr %i.dz, align 4, !tbaa !51, !range !67, !noundef !68
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ec = tail call fast float @llvm.ceil.f32(float %i.dy)
  store float %i.ec, ptr %i.k, align 4, !tbaa !27
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #9
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !57 ; 3 uses
  store i32 %i.ee, ptr %i.l, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #9
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !69 ; 2 uses
  store i32 %i.eg, ptr %i.m, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #9
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !58 ; 3 uses
  store i32 %i.ei, ptr %i.n, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #9
  %i.ej = add i32 %i.ei, 1
  %i.ek = mul i32 %i.ej, %i.ee
  %i.el = add nsw i32 %i.ek, %i.eg                ; 3 uses
  store i32 %i.el, ptr %i.o, align 4, !tbaa !25
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.en = load i32, ptr %i.em, align 8, !tbaa !29
  %.not = icmp eq i32 %i.en, 0
  br i1 %.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eo = mul nsw i32 %i.ei, %i.ee
  %i.ep = add nsw i32 %i.el, %i.eo                ; 2 uses
  store i32 %i.ep, ptr %i.o, align 4, !tbaa !25
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.eq = phi i32 [ %i.ep, %bb.v ], [ %i.el, %bb.u ]
  %i.er = load ptr, ptr %2, align 8, !tbaa !53    ; 10 uses
  %i.es = shl nsw i32 %i.s, 2
  %i.et = mul nsw i32 %i.es, %i.u
  %i.eu = mul nsw i32 %i.et, %i.eq
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !59
  tail call void @_ZN4ncnn3Mat6createEiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.er, i32 noundef %i.eu, i32 noundef 2, i64 noundef 4, ptr noundef %i.ew)
  %i.ex = load ptr, ptr %i.er, align 8, !tbaa !18
  %i.ey = icmp eq ptr %i.ex, null
  br i1 %i.ey, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.w
  %i.ez = getelementptr inbounds nuw i8, ptr %i.er, i64 64
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !20
  %i.fb = getelementptr inbounds nuw i8, ptr %i.er, i64 56
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !26
  %i.fd = sext i32 %i.fc to i64
  %i.fe = mul i64 %i.fa, %i.fd
  %i.ff = icmp eq i64 %i.fe, 0
  br i1 %i.ff, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %bb.x

bb.x:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !61
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.p, i32 %i.fh)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 12, ptr nonnull @_ZNK4ncnn8PriorBox7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.1, ptr nonnull %i.b, ptr nonnull %i.er, ptr nonnull %i.a, ptr nonnull %i.o, ptr nonnull %0, ptr nonnull %i.j, ptr nonnull %i.k, ptr nonnull %i.l, ptr nonnull %i.h, ptr nonnull %i.i, ptr nonnull %i.m, ptr nonnull %i.n)
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 444
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !45
  %.not47 = icmp eq i32 %i.fj, 0
  br i1 %.not47, label %..loopexit_crit_edge, label %bb.y

..loopexit_crit_edge:                             ; preds = %bb.x
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %i.er, i64 44
  %.pre79 = load i32, ptr %.phi.trans.insert78, align 4, !tbaa !54
  br label %.loopexit

bb.y:                                             ; preds = %bb.x
  %i.fk = load ptr, ptr %i.er, align 8, !tbaa !18 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.er, i64 44
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !54 ; 5 uses
  %i.fn = icmp sgt i32 %i.fm, 0
  br i1 %i.fn, label %.lr.ph.preheader, label %_ZNK4ncnn3Mat5emptyEv.exit.thread

.lr.ph.preheader:                                 ; preds = %bb.y
  %wide.trip.count = zext nneg i32 %i.fm to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.fm, 8
  br i1 %min.iters.check, label %.lr.ph.preheader121, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %index ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.fo, align 4, !tbaa !27 ; 2 uses
  %wide.load87 = load <4 x float>, ptr %i.fp, align 4, !tbaa !27 ; 2 uses
  %i.fq = fcmp fast olt <4 x float> %wide.load, zeroinitializer
  %i.fr = fcmp fast olt <4 x float> %wide.load87, zeroinitializer
  %i.fs = select <4 x i1> %i.fq, <4 x float> zeroinitializer, <4 x float> %wide.load ; 2 uses
  %i.ft = select <4 x i1> %i.fr, <4 x float> zeroinitializer, <4 x float> %wide.load87 ; 2 uses
  %i.fu = fcmp fast ogt <4 x float> %i.fs, splat (float 1.000000e+00)
  %i.fv = fcmp fast ogt <4 x float> %i.ft, splat (float 1.000000e+00)
  %i.fw = select <4 x i1> %i.fu, <4 x float> splat (float 1.000000e+00), <4 x float> %i.fs
  %i.fx = select <4 x i1> %i.fv, <4 x float> splat (float 1.000000e+00), <4 x float> %i.ft
  store <4 x float> %i.fw, ptr %i.fo, align 4, !tbaa !27
  store <4 x float> %i.fx, ptr %i.fp, align 4, !tbaa !27
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fy = icmp eq i64 %index.next, %n.vec
  br i1 %i.fy, label %middle.block, label %vector.body, !llvm.loop !70

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader121

.lr.ph.preheader121:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader121, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader121 ] ; 2 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %indvars.iv ; 2 uses
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !27 ; 2 uses
  %i.gb = fcmp fast olt float %i.ga, 0.000000e+00
  %.sroa.speculated54 = select i1 %i.gb, float 0.000000e+00, float %i.ga ; 2 uses
  %i.gc = fcmp fast ogt float %.sroa.speculated54, 1.000000e+00
  %.sroa.speculated = select i1 %i.gc, float 1.000000e+00, float %.sroa.speculated54
  store float %.sroa.speculated, ptr %i.fz, align 4, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !71

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %..loopexit_crit_edge
  %i.gd = phi i32 [ %.pre79, %..loopexit_crit_edge ], [ %i.fm, %middle.block ], [ %i.fm, %.lr.ph ] ; 3 uses
  %i.ge = lshr i32 %i.gd, 2                       ; 5 uses
  %i.gf = icmp sgt i32 %i.gd, 3
  br i1 %i.gf, label %.lr.ph68, label %_ZNK4ncnn3Mat5emptyEv.exit.thread

.lr.ph68:                                         ; preds = %.loopexit
  %i.gg = load ptr, ptr %i.er, align 8, !tbaa !18 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !23
  %i.gj = zext nneg i32 %i.gd to i64
  %i.gk = mul i64 %i.gi, %i.gj                    ; 2 uses
  %i.gl = getelementptr i8, ptr %i.gg, i64 %i.gk  ; 6 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 5 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 428 ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 4 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 436 ; 4 uses
  %i.gq = add nsw i32 %i.ge, -1                   ; 2 uses
  %i.gr = zext i32 %i.gq to i64
  %i.gs = add nuw nsw i64 %i.gr, 1                ; 2 uses
  %min.iters.check90 = icmp ult i32 %i.gq, 7
  br i1 %min.iters.check90, label %scalar.ph89.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph68
  %i.gt = add nsw i32 %i.ge, -1
  %i.gu = zext i32 %i.gt to i64
  %i.gv = shl nuw nsw i64 %i.gu, 4
  %i.gw = getelementptr i8, ptr %i.gg, i64 %i.gk
  %i.gx = getelementptr i8, ptr %i.gw, i64 %i.gv
  %scevgep = getelementptr i8, ptr %i.gx, i64 16
  %scevgep88 = getelementptr inbounds nuw i8, ptr %0, i64 440
  %bound0 = icmp ult ptr %i.gl, %scevgep88
  %bound1 = icmp ult ptr %i.gm, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph89.preheader, label %vector.ph91

vector.ph91:                                      ; preds = %vector.memcheck
  %n.vec92 = and i64 %i.gs, 8589934588            ; 4 uses
  %i.gy = trunc i64 %n.vec92 to i32
  %i.gz = shl nuw nsw i64 %n.vec92, 4
  %i.ha = getelementptr i8, ptr %i.gl, i64 %i.gz
  %4 = load <4 x float>, ptr %i.gm, align 8
  %5 = load <4 x float>, ptr %i.gn, align 4
  %6 = load <4 x float>, ptr %i.go, align 8
  %7 = load <4 x float>, ptr %i.gp, align 4
  %8 = shufflevector <4 x float> %4, <4 x float> %5, <4 x i32> <i32 0, i32 0, i32 4, i32 4>
  %9 = shufflevector <4 x float> %6, <4 x float> %7, <4 x i32> <i32 0, i32 0, i32 4, i32 4>
  %interleaved.vec = shufflevector <4 x float> %8, <4 x float> %9, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7> ; 2 uses
  br label %vector.body93

vector.body93:                                    ; preds = %vector.body93, %vector.ph91
  %index94 = phi i64 [ 0, %vector.ph91 ], [ %index.next103, %vector.body93 ] ; 2 uses
  %i.hb = shl i64 %index94, 4                     ; 2 uses
  %next.gep = getelementptr i8, ptr %i.gl, i64 %i.hb
  %i.hc = getelementptr i8, ptr %i.gl, i64 %i.hb
  %next.gep95 = getelementptr i8, ptr %i.hc, i64 32
  store <8 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !27, !alias.scope !72, !noalias !75
  store <8 x float> %interleaved.vec, ptr %next.gep95, align 4, !tbaa !27, !alias.scope !72, !noalias !75
  %index.next103 = add nuw i64 %index94, 4        ; 2 uses
  %i.hd = icmp eq i64 %index.next103, %n.vec92
  br i1 %i.hd, label %middle.block104, label %vector.body93, !llvm.loop !77

middle.block104:                                  ; preds = %vector.body93
  %cmp.n105 = icmp eq i64 %i.gs, %n.vec92
  br i1 %cmp.n105, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %scalar.ph89.preheader

scalar.ph89.preheader:                            ; preds = %vector.memcheck, %.lr.ph68, %middle.block104
  %.067.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph68 ], [ %i.gy, %middle.block104 ] ; 4 uses
  %.04366.ph = phi ptr [ %i.gl, %vector.memcheck ], [ %i.gl, %.lr.ph68 ], [ %i.ha, %middle.block104 ] ; 6 uses
  %i.he = sub i32 %i.ge, %.067.ph
  %.neg = add i32 %.067.ph, 1
  %xtraiter = and i32 %i.he, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph89.prol.loopexit, label %scalar.ph89.prol

scalar.ph89.prol:                                 ; preds = %scalar.ph89.preheader
  %i.hf = load float, ptr %i.gm, align 8, !tbaa !27
  store float %i.hf, ptr %.04366.ph, align 4, !tbaa !27
  %i.hg = load float, ptr %i.gn, align 4, !tbaa !27
  %i.hh = getelementptr inbounds nuw i8, ptr %.04366.ph, i64 4
  store float %i.hg, ptr %i.hh, align 4, !tbaa !27
  %i.hi = load float, ptr %i.go, align 8, !tbaa !27
  %i.hj = getelementptr inbounds nuw i8, ptr %.04366.ph, i64 8
  store float %i.hi, ptr %i.hj, align 4, !tbaa !27
  %i.hk = load float, ptr %i.gp, align 4, !tbaa !27
  %i.hl = getelementptr inbounds nuw i8, ptr %.04366.ph, i64 12
  store float %i.hk, ptr %i.hl, align 4, !tbaa !27
  %i.hm = getelementptr inbounds nuw i8, ptr %.04366.ph, i64 16
  %i.hn = add nuw nsw i32 %.067.ph, 1
  br label %scalar.ph89.prol.loopexit

scalar.ph89.prol.loopexit:                        ; preds = %scalar.ph89.prol, %scalar.ph89.preheader
  %.067.unr = phi i32 [ %.067.ph, %scalar.ph89.preheader ], [ %i.hn, %scalar.ph89.prol ]
  %.04366.unr = phi ptr [ %.04366.ph, %scalar.ph89.preheader ], [ %i.hm, %scalar.ph89.prol ]
  %i.ho = icmp eq i32 %i.ge, %.neg
  br i1 %i.ho, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %scalar.ph89

scalar.ph89:                                      ; preds = %scalar.ph89.prol.loopexit, %scalar.ph89
  %.067 = phi i32 [ %i.if, %scalar.ph89 ], [ %.067.unr, %scalar.ph89.prol.loopexit ]
  %.04366 = phi ptr [ %i.ie, %scalar.ph89 ], [ %.04366.unr, %scalar.ph89.prol.loopexit ] ; 9 uses
  %i.hp = load float, ptr %i.gm, align 8, !tbaa !27
  store float %i.hp, ptr %.04366, align 4, !tbaa !27
  %i.hq = load float, ptr %i.gn, align 4, !tbaa !27
  %i.hr = getelementptr inbounds nuw i8, ptr %.04366, i64 4
  store float %i.hq, ptr %i.hr, align 4, !tbaa !27
  %i.hs = load float, ptr %i.go, align 8, !tbaa !27
  %i.ht = getelementptr inbounds nuw i8, ptr %.04366, i64 8
  store float %i.hs, ptr %i.ht, align 4, !tbaa !27
  %i.hu = load float, ptr %i.gp, align 4, !tbaa !27
  %i.hv = getelementptr inbounds nuw i8, ptr %.04366, i64 12
  store float %i.hu, ptr %i.hv, align 4, !tbaa !27
  %i.hw = getelementptr inbounds nuw i8, ptr %.04366, i64 16
  %i.hx = load float, ptr %i.gm, align 8, !tbaa !27
  store float %i.hx, ptr %i.hw, align 4, !tbaa !27
  %i.hy = load float, ptr %i.gn, align 4, !tbaa !27
  %i.hz = getelementptr inbounds nuw i8, ptr %.04366, i64 20
  store float %i.hy, ptr %i.hz, align 4, !tbaa !27
  %i.ia = load float, ptr %i.go, align 8, !tbaa !27
  %i.ib = getelementptr inbounds nuw i8, ptr %.04366, i64 24
  store float %i.ia, ptr %i.ib, align 4, !tbaa !27
  %i.ic = load float, ptr %i.gp, align 4, !tbaa !27
  %i.id = getelementptr inbounds nuw i8, ptr %.04366, i64 28
  store float %i.ic, ptr %i.id, align 4, !tbaa !27
  %i.ie = getelementptr inbounds nuw i8, ptr %.04366, i64 32
  %i.if = add nuw nsw i32 %.067, 2                ; 2 uses
  %exitcond72.not.1 = icmp eq i32 %i.if, %i.ge
  br i1 %exitcond72.not.1, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %scalar.ph89, !llvm.loop !78

_ZNK4ncnn3Mat5emptyEv.exit.thread:                ; preds = %scalar.ph89.prol.loopexit, %scalar.ph89, %middle.block104, %bb.y, %.loopexit, %bb.w, %_ZNK4ncnn3Mat5emptyEv.exit
  %.1 = phi i32 [ -100, %_ZNK4ncnn3Mat5emptyEv.exit ], [ -100, %bb.w ], [ 0, %.loopexit ], [ 0, %bb.y ], [ 0, %middle.block104 ], [ 0, %scalar.ph89 ], [ 0, %scalar.ph89.prol.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #9
  br label %bb.z

bb.z:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit.thread, %_ZNK4ncnn3Mat5emptyEv.exit49.thread
  %.2 = phi i32 [ %.046, %_ZNK4ncnn3Mat5emptyEv.exit49.thread ], [ %.1, %_ZNK4ncnn3Mat5emptyEv.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.2
}

declare noundef i32 @_ZNK4ncnn5Layer7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERNS_3MatERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn8PriorBoxC2Ev(ptr noundef nonnull align 8 dereferenceable(470) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN4ncnn5LayerC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn8PriorBoxE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i64 0, ptr %i.g, align 8, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.h, align 8, !tbaa !79
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.i, align 1, !tbaa !80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.a, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.b, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.c, i8 0, i64 36, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.d, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.e, i8 0, i64 36, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.f, i8 0, i64 28, i1 false)
  ret void
}

declare void @_ZN4ncnn5LayerC2Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #3

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #9 ; 0 uses
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

declare void @_ZNK4ncnn9ParamDict3getEiRKNS_3MatE(ptr dead_on_unwind writable sret(%"class.ncnn::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

declare noundef nofpclass(nan inf) float @_ZNK4ncnn9ParamDict3getEif(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, float noundef nofpclass(nan inf)) local_unnamed_addr #2

declare noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn8PriorBox7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10) #8 personality ptr @__gxx_personality_v0 {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !25
  %i.h = load i32, ptr %0, align 4, !tbaa !25     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !25
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 5 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !25
  %i.k = load i32, ptr %i.a, align 4, !tbaa !25   ; 4 uses
  %.not87 = icmp sgt i32 %i.k, %i.j
  br i1 %.not87, label %._crit_edge90.split, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !18     ; 3 uses
  %i.m = load i32, ptr %4, align 4, !tbaa !25     ; 6 uses
  %i.n = load i32, ptr %5, align 4, !tbaa !25
  %factor.op.mul = shl i32 %i.m, 2
  %factor.op.mul92 = mul i32 %factor.op.mul, %i.n ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 464 ; 3 uses
  %i.p = icmp sgt i32 %i.m, 0
  %i.q = sitofp fast i32 %i.m to float            ; 2 uses
  %i.r = fdiv fast float 1.000000e+00, %i.q       ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 352
  %factor.op.fmul83 = fmul fast float %i.r, 5.000000e-01
end_hunk_0

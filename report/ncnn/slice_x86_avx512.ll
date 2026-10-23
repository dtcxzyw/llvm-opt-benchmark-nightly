Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/slice_x86_avx512?download=true
inline.NumInlined: 110
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK4ncnn16Slice_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
  %.not1271 = icmp ult i64 %i.cu, %i.da
  br i1 %.not1271, label %bb.d, label %.critedge1328, !llvm.loop !63

.critedge1328:                                    ; preds = %bb.o, %_ZNK4ncnn3Mat8elembitsEv.exit.thread
  %i.db = icmp eq i32 %i.m, 2                     ; 3 uses
  %i.dc = icmp eq i32 %i.z, 0                     ; 3 uses
  %or.cond = select i1 %i.db, i1 %i.dc, i1 false
  br i1 %or.cond, label %bb.p, label %bb.bc

bb.p:                                             ; preds = %.critedge1328
  %i.dd = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !43 ; 41 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !52
  %i.dh = mul nsw i32 %i.q, %i.dg                 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !44 ; 2 uses
  %i.dk = load ptr, ptr %2, align 8, !tbaa !23    ; 4 uses
  %.not12732595.not = icmp eq ptr %i.dj, %i.dk
  br i1 %.not12732595.not, label %.critedge1330.thread, label %.lr.ph2598

.critedge1330.thread:                             ; preds = %bb.p
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !27
  br label %._crit_edge

.lr.ph2598:                                       ; preds = %bb.p
  %i.dn = ptrtoint ptr %i.dj to i64
  %i.do = ptrtoint ptr %i.dk to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = sdiv exact i64 %i.dp, 72
  %.not1272 = icmp eq ptr %i.u, null
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 39
  %i.ds = sext i32 %i.q to i64
  %i.dt = udiv i64 %i.o, %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph2598, %bb.ab
  %i.dv = phi i64 [ %i.dq, %.lr.ph2598 ], [ %i.fs, %bb.ab ] ; 2 uses
  %i.dw = phi ptr [ %i.dk, %.lr.ph2598 ], [ %i.fo, %bb.ab ]
  %.012442597 = phi i64 [ 0, %.lr.ph2598 ], [ %i.fm, %bb.ab ] ; 6 uses
  %.012452596 = phi i32 [ 0, %.lr.ph2598 ], [ %i.fl, %bb.ab ] ; 4 uses
  br i1 %.not1272, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dx = add nsw i64 %i.dv, -1
  %i.dy = icmp eq i64 %.012442597, %i.dx
  br i1 %i.dy, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dz = sub nsw i32 %i.dh, %.012452596
  br label %bb.w

bb.t:                                             ; preds = %bb.r
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.012442597
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !28 ; 2 uses
  %i.ec = icmp slt i32 %i.eb, 0
  %i.ed = select i1 %i.ec, i32 %i.dh, i32 0
  %i.ee = sub i32 %i.eb, %.012452596
  %i.ef = add i32 %i.ee, %i.ed
  br label %bb.w

bb.u:                                             ; preds = %bb.q
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.012442597
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !28 ; 2 uses
  %i.ei = icmp eq i32 %i.eh, -233
  br i1 %i.ei, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ej = sub nsw i32 %i.dh, %.012452596
  %i.ek = sext i32 %i.ej to i64
  %i.el = sub nuw i64 %i.dv, %.012442597
  %i.em = udiv i64 %i.ek, %i.el
  %i.en = trunc i64 %i.em to i32
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.s, %bb.t
  %.01243 = phi i32 [ %i.dz, %bb.s ], [ %i.ef, %bb.t ], [ %i.en, %bb.v ], [ %i.eh, %bb.u ] ; 5 uses
  %i.eo = load i8, ptr %i.dr, align 1, !tbaa !46, !range !47, !noundef !48
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.eq = and i32 %.01243, 15
  %i.er = icmp eq i32 %i.eq, 0
  br i1 %i.er, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.es = and i32 %.01243, 7
  %i.et = icmp eq i32 %i.es, 0
  br i1 %i.et, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eu = and i32 %.01243, 3
  %i.ev = icmp eq i32 %i.eu, 0
  %i.ew = select i1 %i.ev, i32 4, i32 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.x, %bb.y, %bb.z, %bb.w
  %.01242 = phi i32 [ 1, %bb.w ], [ 16, %bb.x ], [ %i.ew, %bb.z ], [ 8, %bb.y ] ; 3 uses
  %i.ex = zext nneg i32 %.01242 to i64
  %i.ey = mul i64 %i.dt, %i.ex
  %i.ez = getelementptr inbounds nuw [72 x i8], ptr %i.dw, i64 %.012442597 ; 4 uses
  %i.fa = sdiv i32 %.01243, %.01242
  %i.fb = load ptr, ptr %i.du, align 8, !tbaa !49
  tail call void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.ez, i32 noundef %i.de, i32 noundef %i.fa, i64 noundef %i.ey, i32 noundef %.01242, ptr noundef %i.fb)
  %i.fc = load ptr, ptr %i.ez, align 8, !tbaa !19
  %i.fd = icmp eq ptr %i.fc, null
  br i1 %i.fd, label %.critedge1335, label %_ZNK4ncnn3Mat5emptyEv.exit1712

_ZNK4ncnn3Mat5emptyEv.exit1712:                   ; preds = %bb.aa
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 64
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !20
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ez, i64 56
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !50
  %i.fi = sext i32 %i.fh to i64
  %i.fj = mul i64 %i.ff, %i.fi
  %i.fk = icmp eq i64 %i.fj, 0
  br i1 %i.fk, label %.critedge1335, label %bb.ab

bb.ab:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit1712
  %i.fl = add nsw i32 %.01243, %.012452596
  %i.fm = add nuw i64 %.012442597, 1              ; 2 uses
  %i.fn = load ptr, ptr %i.di, align 8, !tbaa !44 ; 2 uses
  %i.fo = load ptr, ptr %2, align 8, !tbaa !23    ; 10 uses
  %i.fp = ptrtoint ptr %i.fn to i64
  %i.fq = ptrtoint ptr %i.fo to i64
  %i.fr = sub i64 %i.fp, %i.fq
  %i.fs = sdiv exact i64 %i.fr, 72                ; 10 uses
  %.not1273 = icmp ult i64 %i.fm, %i.fs
  br i1 %.not1273, label %bb.q, label %.critedge1330, !llvm.loop !64

.critedge1330:                                    ; preds = %bb.ab
  %i.ft = icmp eq ptr %i.fn, %i.fo
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !27 ; 4 uses
  br i1 %i.ft, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %.critedge1330
  %min.iters.check = icmp ult i64 %i.fs, 8
  br i1 %min.iters.check, label %.lr.ph2602.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check3211 = icmp ult i64 %i.fs, 64
  br i1 %min.iters.check3211, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fw = and i64 %i.fs, 56
  %n.vec = and i64 %i.fs, -64                     ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.fv, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %vec.phi = phi <16 x i32> [ %broadcast.splat, %vector.ph ], [ %i.fx, %vector.body ]
  %vec.phi3212 = phi <16 x i32> [ %broadcast.splat, %vector.ph ], [ %i.fy, %vector.body ]
  %vec.phi3213 = phi <16 x i32> [ %broadcast.splat, %vector.ph ], [ %i.fz, %vector.body ]
  %vec.phi3214 = phi <16 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ga, %vector.body ]
  %step.add = add nuw <16 x i64> %vec.ind, splat (i64 16)
  %step.add.2 = add nuw <16 x i64> %vec.ind, splat (i64 32)
  %step.add.3 = add nuw <16 x i64> %vec.ind, splat (i64 48)
  %wide.gep = getelementptr inbounds nuw [72 x i8], ptr %i.fo, <16 x i64> %vec.ind
  %wide.gep3215 = getelementptr inbounds nuw [72 x i8], ptr %i.fo, <16 x i64> %step.add
  %wide.gep3216 = getelementptr inbounds nuw [72 x i8], ptr %i.fo, <16 x i64> %step.add.2
  %wide.gep3217 = getelementptr inbounds nuw [72 x i8], ptr %i.fo, <16 x i64> %step.add.3
  %wide.gep3218 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep, i64 24
  %wide.gep3219 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep3215, i64 24
  %wide.gep3220 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep3216, i64 24
  %wide.gep3221 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep3217, i64 24
  %wide.masked.gather = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %wide.gep3218, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !28
  %wide.masked.gather3222 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %wide.gep3219, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !28
  %wide.masked.gather3223 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %wide.gep3220, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !28
  %wide.masked.gather3224 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %wide.gep3221, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !28
  %i.fx = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %wide.masked.gather, <16 x i32> %vec.phi) ; 2 uses
  %i.fy = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %wide.masked.gather3222, <16 x i32> %vec.phi3212) ; 2 uses
  %i.fz = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %wide.masked.gather3223, <16 x i32> %vec.phi3213) ; 2 uses
  %i.ga = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %wide.masked.gather3224, <16 x i32> %vec.phi3214) ; 2 uses
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %vec.ind.next = add nuw <16 x i64> %vec.ind, splat (i64 64)
  %i.gb = icmp eq i64 %index.next, %n.vec
  br i1 %i.gb, label %middle.block, label %vector.body, !llvm.loop !65

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.fx, <16 x i32> %i.fy)
  %rdx.minmax3225 = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %rdx.minmax, <16 x i32> %i.fz)
  %rdx.minmax3226 = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %rdx.minmax3225, <16 x i32> %i.ga)
  %i.gc = tail call i32 @llvm.vector.reduce.smin.v16i32(<16 x i32> %rdx.minmax3226) ; 3 uses
  %cmp.n = icmp eq i64 %i.fs, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.fw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph2602.preheader, label %vec.epilog.ph, !prof !55

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %bc.merge.rdx = phi i32 [ %i.gc, %vec.epilog.iter.check ], [ %i.fv, %vector.main.loop.iter.check ]
  %broadcast.splatinsert3232 = insertelement <8 x i32> poison, i32 %bc.merge.rdx, i64 0
  %broadcast.splat3233 = shufflevector <8 x i32> %broadcast.splatinsert3232, <8 x i32> poison, <8 x i32> zeroinitializer
  %n.vec3227 = and i64 %i.fs, -8                  ; 3 uses
  %broadcast.splatinsert3230 = insertelement <8 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat3231 = shufflevector <8 x i64> %broadcast.splatinsert3230, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = or disjoint <8 x i64> %broadcast.splat3231, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index3232 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next3238, %vec.epilog.vector.body ]
  %vec.ind3233 = phi <8 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next3239, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi3234 = phi <8 x i32> [ %broadcast.splat3233, %vec.epilog.ph ], [ %i.gd, %vec.epilog.vector.body ]
  %wide.gep3235 = getelementptr inbounds nuw [72 x i8], ptr %i.fo, <8 x i64> %vec.ind3233
  %wide.gep3236 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep3235, i64 24
  %wide.masked.gather3237 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep3236, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !28
  %i.gd = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.masked.gather3237, <8 x i32> %vec.phi3234) ; 2 uses
  %index.next3238 = add nuw i64 %index3232, 8     ; 2 uses
  %vec.ind.next3239 = add nuw <8 x i64> %vec.ind3233, splat (i64 8)
  %i.ge = icmp eq i64 %index.next3238, %n.vec3227
  br i1 %i.ge, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !66

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.gf = tail call i32 @llvm.vector.reduce.smin.v8i32(<8 x i32> %i.gd) ; 2 uses
  %cmp.n3240 = icmp eq i64 %i.fs, %n.vec3227
  br i1 %cmp.n3240, label %._crit_edge, label %.lr.ph2602.preheader

.lr.ph2602.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012412601.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec3227, %vec.epilog.middle.block ]
  %.025272599.ph = phi i32 [ %i.fv, %iter.check ], [ %i.gc, %vec.epilog.iter.check ], [ %i.gf, %vec.epilog.middle.block ]
  br label %.lr.ph2602

._crit_edge:                                      ; preds = %.lr.ph2602, %middle.block, %vec.epilog.middle.block, %.critedge1330.thread, %.critedge1330
  %.02527.lcssa = phi i32 [ %i.fv, %.critedge1330 ], [ %i.dm, %.critedge1330.thread ], [ %i.gf, %vec.epilog.middle.block ], [ %i.gc, %middle.block ], [ %.sroa.speculated2512, %.lr.ph2602 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.gg = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !17 ; 2 uses
  %i.gj = load <2 x ptr>, ptr %i.k, align 8, !tbaa !56
  store <2 x ptr> %i.gj, ptr %4, align 16, !tbaa !56
  %i.gk = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.gl = load i64, ptr %i.n, align 8, !tbaa !25
  store i64 %i.gl, ptr %i.gk, align 16, !tbaa !25
  %i.gm = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.gn = load i32, ptr %i.p, align 8, !tbaa !27
  store i32 %i.gn, ptr %i.gm, align 8, !tbaa !27
  %i.go = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !18
  store ptr %i.gq, ptr %i.go, align 16, !tbaa !18
  %i.gr = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.gs = load <4 x i32>, ptr %i.l, align 8, !tbaa !28
  store <4 x i32> %i.gs, ptr %i.gr, align 8, !tbaa !28
  %i.gt = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !50
  store i32 %i.gv, ptr %i.gt, align 8, !tbaa !50
  %i.gw = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !20
  store i64 %i.gy, ptr %i.gw, align 16, !tbaa !20
  %.not.i1799 = icmp eq ptr %i.gi, null
  br i1 %.not.i1799, label %_ZN4ncnn3Mat6addrefEv.exit, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge
  %i.gz = atomicrmw add ptr %i.gi, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load i32, ptr %i.b, align 4, !tbaa !28
  br label %_ZN4ncnn3Mat6addrefEv.exit

_ZN4ncnn3Mat6addrefEv.exit:                       ; preds = %._crit_edge, %bb.ac
  %i.ha = phi i32 [ %i.q, %._crit_edge ], [ %.pre, %bb.ac ]
  %i.hb = icmp sgt i32 %i.ha, %.02527.lcssa
  br i1 %i.hb, label %bb.ad, label %bb.am

.lr.ph2602:                                       ; preds = %.lr.ph2602.preheader, %.lr.ph2602
  %.012412601 = phi i64 [ %i.hf, %.lr.ph2602 ], [ %.012412601.ph, %.lr.ph2602.preheader ] ; 2 uses
  %.025272599 = phi i32 [ %.sroa.speculated2512, %.lr.ph2602 ], [ %.025272599.ph, %.lr.ph2602.preheader ]
  %i.hc = getelementptr inbounds nuw [72 x i8], ptr %i.fo, i64 %.012412601
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 24
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !28
  %.sroa.speculated2512 = tail call i32 @llvm.smin.i32(i32 %i.he, i32 %.025272599) ; 2 uses
  %i.hf = add nuw i64 %.012412601, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.hf, %i.fs
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph2602, !llvm.loop !67

bb.ad:                                            ; preds = %_ZN4ncnn3Mat6addrefEv.exit
  invoke void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef nonnull align 8 dereferenceable(72) %4, i32 noundef %.02527.lcssa, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.hg = load ptr, ptr %4, align 16, !tbaa !19
  %i.hh = icmp eq ptr %i.hg, null
  br i1 %i.hh, label %.critedge1335.critedge, label %_ZNK4ncnn3Mat5emptyEv.exit1711

_ZNK4ncnn3Mat5emptyEv.exit1711:                   ; preds = %bb.ae
  %i.hi = load i64, ptr %i.gw, align 16, !tbaa !20
  %i.hj = load i32, ptr %i.gt, align 8, !tbaa !50
  %i.hk = sext i32 %i.hj to i64
  %i.hl = mul i64 %i.hi, %i.hk
  %i.hm = icmp eq i64 %i.hl, 0
  br i1 %i.hm, label %.critedge1335.critedge, label %bb.am

bb.af:                                            ; preds = %bb.ad
  %i.hn = landingpad { ptr, i32 }
          cleanup
  %i.ho = load ptr, ptr %i.gg, align 8, !tbaa !17 ; 2 uses
  %.not.i1416 = icmp eq ptr %i.ho, null
  br i1 %.not.i1416, label %_ZN4ncnn3MatD2Ev.exit1414, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hp = atomicrmw add ptr %i.ho, i32 -1 acq_rel, align 4
  %i.hq = icmp eq i32 %i.hp, 1
  br i1 %i.hq, label %bb.ah, label %_ZN4ncnn3MatD2Ev.exit1414

bb.ah:                                            ; preds = %bb.ag
  %i.hr = load ptr, ptr %i.go, align 16, !tbaa !18 ; 3 uses
  %.not3.i1417 = icmp eq ptr %i.hr, null
  %i.hs = load ptr, ptr %4, align 16, !tbaa !19   ; 3 uses
  br i1 %.not3.i1417, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ht = load ptr, ptr %i.hr, align 8, !tbaa !11
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 24
  %i.hv = load ptr, ptr %i.hu, align 8
  invoke void %i.hv(ptr noundef nonnull align 8 dereferenceable(8) %i.hr, ptr noundef %i.hs)
          to label %_ZN4ncnn3MatD2Ev.exit1414 unwind label %bb.al, !inline_history !0

bb.aj:                                            ; preds = %bb.ah
  %.not.i1701 = icmp eq ptr %i.hs, null
  br i1 %.not.i1701, label %_ZN4ncnn3MatD2Ev.exit1414, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @free(ptr noundef nonnull %i.hs) #9
  br label %_ZN4ncnn3MatD2Ev.exit1414

bb.al:                                            ; preds = %bb.ai
  %i.hw = landingpad { ptr, i32 }
          catch ptr null
  %i.hx = extractvalue { ptr, i32 } %i.hw, 0
  call void @__clang_call_terminate(ptr %i.hx) #15
  unreachable

_ZN4ncnn3MatD2Ev.exit1414:                        ; preds = %bb.ag, %bb.af, %bb.ai, %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.er

bb.am:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit1711, %_ZN4ncnn3Mat6addrefEv.exit
  %i.hy = load ptr, ptr %i.di, align 8, !tbaa !44 ; 2 uses
  %i.hz = load ptr, ptr %2, align 8, !tbaa !23    ; 2 uses
  %.not2908 = icmp eq ptr %i.hy, %i.hz
  br i1 %.not2908, label %._crit_edge2708, label %.lr.ph2707

.lr.ph2707:                                       ; preds = %bb.am
  %i.ia = load ptr, ptr %4, align 16, !tbaa !19
  %i.ib = icmp eq i32 %.02527.lcssa, 8
  %i.ic = shl i32 %i.de, 3                        ; 3 uses
  %i.id = sext i32 %i.ic to i64                   ; 9 uses
  %i.ie = icmp sgt i32 %i.de, 0                   ; 6 uses
  %i.if = shl i32 %i.de, 4                        ; 3 uses
  %i.ig = sext i32 %i.if to i64                   ; 8 uses
  %i.ih = icmp eq i32 %.02527.lcssa, 4            ; 2 uses
  %i.ii = shl i32 %i.de, 2                        ; 2 uses
  %i.ij = sext i32 %i.ii to i64                   ; 10 uses
  %i.ik = mul i32 %i.de, 12
  %i.il = sext i32 %i.ik to i64                   ; 4 uses
  %i.im = icmp eq i32 %.02527.lcssa, 1            ; 3 uses
  %i.in = sext i32 %i.de to i64                   ; 6 uses
  %i.io = shl i32 %i.de, 1
  %i.ip = sext i32 %i.io to i64                   ; 6 uses
  %i.iq = mul i32 %i.de, 3
  %i.ir = sext i32 %i.iq to i64                   ; 6 uses
  %i.is = mul i32 %i.de, 5
  %i.it = sext i32 %i.is to i64                   ; 4 uses
  %i.iu = mul i32 %i.de, 6
  %i.iv = sext i32 %i.iu to i64                   ; 4 uses
  %i.iw = mul i32 %i.de, 7
  %i.ix = sext i32 %i.iw to i64                   ; 4 uses
  %i.iy = mul i32 %i.de, 9
  %i.iz = sext i32 %i.iy to i64                   ; 2 uses
  %i.ja = mul i32 %i.de, 10
  %i.jb = sext i32 %i.ja to i64                   ; 2 uses
  %i.jc = mul i32 %i.de, 11
  %i.jd = sext i32 %i.jc to i64                   ; 2 uses
  %i.je = mul i32 %i.de, 13
  %i.jf = sext i32 %i.je to i64                   ; 2 uses
  %i.jg = mul i32 %i.de, 14
  %i.jh = sext i32 %i.jg to i64                   ; 2 uses
  %i.ji = mul i32 %i.de, 15
  %i.jj = sext i32 %i.ji to i64                   ; 2 uses
  %i.jk = add i32 %i.de, -1
  %i.jl = zext i32 %i.jk to i64                   ; 2 uses
  %i.jm = shl nuw nsw i64 %i.jl, 4
  %i.jn = shl nsw i64 %i.ir, 2                    ; 2 uses
  %i.jo = shl nuw nsw i64 %i.jl, 2                ; 4 uses
  %i.jp = shl nsw i64 %i.ij, 2
  %i.jq = shl nsw i64 %i.ip, 2                    ; 2 uses
  %i.jr = shl nsw i64 %i.in, 2                    ; 2 uses
  %i.js = zext i32 %i.de to i64                   ; 19 uses
  %i.jt = add i32 %i.de, -1
  %i.ju = zext i32 %i.jt to i64                   ; 2 uses
  %i.jv = shl nuw nsw i64 %i.ju, 5
  %i.jw = shl nsw i64 %i.ix, 2                    ; 2 uses
  %i.jx = shl nuw nsw i64 %i.ju, 2                ; 8 uses
  %i.jy = shl nsw i64 %i.id, 2
  %i.jz = shl nsw i64 %i.iv, 2                    ; 2 uses
  %i.ka = shl nsw i64 %i.it, 2                    ; 2 uses
  %i.kb = shl nsw i64 %i.ij, 2                    ; 2 uses
  %i.kc = shl nsw i64 %i.ir, 2                    ; 2 uses
  %i.kd = shl nsw i64 %i.ip, 2                    ; 2 uses
  %i.ke = shl nsw i64 %i.in, 2                    ; 2 uses
  %i.kf = add i32 %i.de, -1
  %i.kg = zext i32 %i.kf to i64                   ; 2 uses
  %i.kh = shl nuw nsw i64 %i.kg, 5
end_hunk_0
begin_hunk_1_@_ZNK4ncnn16Slice_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
bb.bn:                                            ; preds = %bb.bm
  %i.apn = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  %i.apo = load i32, ptr %i.apn, align 4, !tbaa !43
  %i.app = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.apq = load i32, ptr %i.app, align 8, !tbaa !52
  %i.apr = getelementptr inbounds nuw i8, ptr %i.k, i64 52
  %i.aps = load i32, ptr %i.apr, align 4, !tbaa !59
  %i.apt = getelementptr inbounds nuw i8, ptr %i.k, i64 56 ; 2 uses
  %i.apu = load i32, ptr %i.apt, align 8, !tbaa !50
  %i.apv = load i32, ptr %i.b, align 4, !tbaa !28
  %i.apw = mul nsw i32 %i.apv, %i.apu             ; 3 uses
  %i.apx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.apy = load ptr, ptr %i.apx, align 8, !tbaa !44 ; 2 uses
  %i.apz = load ptr, ptr %2, align 8, !tbaa !23   ; 4 uses
  %.not12772714.not = icmp eq ptr %i.apy, %i.apz
  br i1 %.not12772714.not, label %.critedge1341.thread, label %.lr.ph2718

.critedge1341.thread:                             ; preds = %bb.bn
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apz, i64 24
  %i.aqb = load i32, ptr %i.aqa, align 8, !tbaa !27
  br label %._crit_edge2723

.lr.ph2718:                                       ; preds = %bb.bn
  %i.aqc = ptrtoint ptr %i.apy to i64
  %i.aqd = ptrtoint ptr %i.apz to i64
  %i.aqe = sub i64 %i.aqc, %i.aqd
  %i.aqf = sdiv exact i64 %i.aqe, 72
  %.not1276 = icmp eq ptr %i.u, null
  %i.aqg = getelementptr inbounds nuw i8, ptr %3, i64 39
  %i.aqh = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.bo

bb.bo:                                            ; preds = %.lr.ph2718, %bb.bz
  %i.aqi = phi i64 [ %i.aqf, %.lr.ph2718 ], [ %i.ask, %bb.bz ] ; 2 uses
  %i.aqj = phi ptr [ %i.apz, %.lr.ph2718 ], [ %i.asg, %bb.bz ]
  %.010912716 = phi i64 [ 0, %.lr.ph2718 ], [ %i.ase, %bb.bz ] ; 6 uses
  %.010922715 = phi i32 [ 0, %.lr.ph2718 ], [ %i.asd, %bb.bz ] ; 4 uses
  br i1 %.not1276, label %bb.bs, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.aqk = add nsw i64 %i.aqi, -1
  %i.aql = icmp eq i64 %.010912716, %i.aqk
  br i1 %i.aql, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.aqm = sub nsw i32 %i.apw, %.010922715
  br label %bb.bu

bb.br:                                            ; preds = %bb.bp
  %i.aqn = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.010912716
  %i.aqo = load i32, ptr %i.aqn, align 4, !tbaa !28 ; 2 uses
  %i.aqp = icmp slt i32 %i.aqo, 0
  %i.aqq = select i1 %i.aqp, i32 %i.apw, i32 0
  %i.aqr = sub i32 %i.aqo, %.010922715
  %i.aqs = add i32 %i.aqr, %i.aqq
  br label %bb.bu

bb.bs:                                            ; preds = %bb.bo
  %i.aqt = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.010912716
  %i.aqu = load i32, ptr %i.aqt, align 4, !tbaa !28 ; 2 uses
  %i.aqv = icmp eq i32 %i.aqu, -233
  br i1 %i.aqv, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.aqw = sub nsw i32 %i.apw, %.010922715
  %i.aqx = sext i32 %i.aqw to i64
  %i.aqy = sub nuw i64 %i.aqi, %.010912716
  %i.aqz = udiv i64 %i.aqx, %i.aqy
  %i.ara = trunc i64 %i.aqz to i32
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bs, %bb.bt, %bb.bq, %bb.br
  %.01090 = phi i32 [ %i.aqm, %bb.bq ], [ %i.aqs, %bb.br ], [ %i.ara, %bb.bt ], [ %i.aqu, %bb.bs ] ; 5 uses
  %i.arb = load i8, ptr %i.aqg, align 1, !tbaa !46, !range !47, !noundef !48
  %i.arc = trunc nuw i8 %i.arb to i1
  br i1 %i.arc, label %bb.bv, label %bb.by

bb.bv:                                            ; preds = %bb.bu
  %i.ard = and i32 %.01090, 15
  %i.are = icmp eq i32 %i.ard, 0
  br i1 %i.are, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.arf = and i32 %.01090, 7
  %i.arg = icmp eq i32 %i.arf, 0
  br i1 %i.arg, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.arh = and i32 %.01090, 3
  %i.ari = icmp eq i32 %i.arh, 0
  %i.arj = select i1 %i.ari, i32 4, i32 1
  br label %bb.by

bb.by:                                            ; preds = %bb.bv, %bb.bw, %bb.bx, %bb.bu
  %.01087 = phi i32 [ 1, %bb.bu ], [ 16, %bb.bv ], [ %i.arj, %bb.bx ], [ 8, %bb.bw ] ; 3 uses
  %i.ark = load i64, ptr %i.a, align 8, !tbaa !26
  %i.arl = load i32, ptr %i.b, align 4, !tbaa !28
  %i.arm = sext i32 %i.arl to i64
  %i.arn = udiv i64 %i.ark, %i.arm
  %i.aro = zext nneg i32 %.01087 to i64
  %i.arp = mul i64 %i.arn, %i.aro
  %i.arq = getelementptr inbounds nuw [72 x i8], ptr %i.aqj, i64 %.010912716 ; 5 uses
  %i.arr = sdiv i32 %.01090, %.01087
  %i.ars = load ptr, ptr %i.aqh, align 8, !tbaa !49
  call void @_ZN4ncnn3Mat6createEiiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.arq, i32 noundef %i.apo, i32 noundef %i.apq, i32 noundef %i.aps, i32 noundef %i.arr, i64 noundef %i.arp, i32 noundef %.01087, ptr noundef %i.ars)
  %i.art = load ptr, ptr %i.arq, align 8, !tbaa !19
  %i.aru = icmp eq ptr %i.art, null
  br i1 %i.aru, label %.critedge1335, label %_ZNK4ncnn3Mat5emptyEv.exit1709

_ZNK4ncnn3Mat5emptyEv.exit1709:                   ; preds = %bb.by
  %i.arv = getelementptr inbounds nuw i8, ptr %i.arq, i64 64
  %i.arw = load i64, ptr %i.arv, align 8, !tbaa !20
  %i.arx = getelementptr inbounds nuw i8, ptr %i.arq, i64 56
  %i.ary = load i32, ptr %i.arx, align 8, !tbaa !50
  %i.arz = sext i32 %i.ary to i64
  %i.asa = mul i64 %i.arw, %i.arz
  %i.asb = icmp eq i64 %i.asa, 0
  br i1 %i.asb, label %.critedge1335, label %bb.bz

bb.bz:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit1709
  %i.asc = getelementptr inbounds nuw i8, ptr %i.arq, i64 40
  store i32 %i.m, ptr %i.asc, align 8, !tbaa !24
  %i.asd = add nsw i32 %.01090, %.010922715
  %i.ase = add nuw i64 %.010912716, 1             ; 2 uses
  %i.asf = load ptr, ptr %i.apx, align 8, !tbaa !44 ; 2 uses
  %i.asg = load ptr, ptr %2, align 8, !tbaa !23   ; 10 uses
  %i.ash = ptrtoint ptr %i.asf to i64
  %i.asi = ptrtoint ptr %i.asg to i64
  %i.asj = sub i64 %i.ash, %i.asi
  %i.ask = sdiv exact i64 %i.asj, 72              ; 10 uses
  %.not1277 = icmp ult i64 %i.ase, %i.ask
  br i1 %.not1277, label %bb.bo, label %.critedge1341, !llvm.loop !134

.critedge1341:                                    ; preds = %bb.bz
  %i.asl = icmp eq ptr %i.asf, %i.asg
  %i.asm = getelementptr inbounds nuw i8, ptr %i.asg, i64 24
  %i.asn = load i32, ptr %i.asm, align 8, !tbaa !27 ; 4 uses
  br i1 %i.asl, label %._crit_edge2723, label %iter.check3894

iter.check3894:                                   ; preds = %.critedge1341
  %min.iters.check3856 = icmp ult i64 %i.ask, 8
  br i1 %min.iters.check3856, label %.lr.ph2722.preheader, label %vector.main.loop.iter.check3857

vector.main.loop.iter.check3857:                  ; preds = %iter.check3894
  %min.iters.check3858 = icmp ult i64 %i.ask, 64
  br i1 %min.iters.check3858, label %vec.epilog.ph3898, label %vector.ph3859

vector.ph3859:                                    ; preds = %vector.main.loop.iter.check3857
  %i.aso = and i64 %i.ask, 56
  %n.vec3860 = and i64 %i.ask, -64                ; 4 uses
  %broadcast.splatinsert3861 = insertelement <16 x i32> poison, i32 %i.asn, i64 0
  %broadcast.splat3862 = shufflevector <16 x i32> %broadcast.splatinsert3861, <16 x i32> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body3863

vector.body3863:                                  ; preds = %vector.ph3859, %vector.body3863
  %index3864 = phi i64 [ 0, %vector.ph3859 ], [ %index.next3885, %vector.body3863 ]
  %vec.ind3865 = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.ph3859 ], [ %vec.ind.next3886, %vector.body3863 ] ; 5 uses
  %vec.phi3866 = phi <16 x i32> [ %broadcast.splat3862, %vector.ph3859 ], [ %i.asp, %vector.body3863 ]
  %vec.phi3867 = phi <16 x i32> [ %broadcast.splat3862, %vector.ph3859 ], [ %i.asq, %vector.body3863 ]
  %vec.phi3868 = phi <16 x i32> [ %broadcast.splat3862, %vector.ph3859 ], [ %i.asr, %vector.body3863 ]
  %vec.phi3869 = phi <16 x i32> [ %broadcast.splat3862, %vector.ph3859 ], [ %i.ass, %vector.body3863 ]
  %step.add3870 = add nuw <16 x i64> %vec.ind3865, splat (i64 16)
  %step.add.23871 = add nuw <16 x i64> %vec.ind3865, splat (i64 32)
  %step.add.33872 = add nuw <16 x i64> %vec.ind3865, splat (i64 48)
  %wide.gep3873 = getelementptr inbounds nuw [72 x i8], ptr %i.asg, <16 x i64> %vec.ind3865
  %wide.gep3874 = getelementptr inbounds nuw [72 x i8], ptr %i.asg, <16 x i64> %step.add3870
  %wide.gep3875 = getelementptr inbounds nuw [72 x i8], ptr %i.asg, <16 x i64> %step.add.23871
  %wide.gep3876.a = getelementptr inbounds nuw [72 x i8], ptr %i.asg, <16 x i64> %step.add.33872
  %wide.gep3877.a = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep3873, i64 24
  %wide.gep3878 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep3874, i64 24
  %wide.gep3879 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep3875, i64 24
  %wide.gep3880 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep3876.a, i64 24
  %wide.masked.gather3881 = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %wide.gep3877.a, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !28
  %wide.masked.gather3882 = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %wide.gep3878, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !28
  %wide.masked.gather3883 = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %wide.gep3879, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !28
  %wide.masked.gather3884 = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %wide.gep3880, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !28
  %i.asp = call <16 x i32> @llvm.smin.v16i32(<16 x i32> %wide.masked.gather3881, <16 x i32> %vec.phi3866) ; 2 uses
  %i.asq = call <16 x i32> @llvm.smin.v16i32(<16 x i32> %wide.masked.gather3882, <16 x i32> %vec.phi3867) ; 2 uses
  %i.asr = call <16 x i32> @llvm.smin.v16i32(<16 x i32> %wide.masked.gather3883, <16 x i32> %vec.phi3868) ; 2 uses
  %i.ass = call <16 x i32> @llvm.smin.v16i32(<16 x i32> %wide.masked.gather3884, <16 x i32> %vec.phi3869) ; 2 uses
  %index.next3885 = add nuw i64 %index3864, 64    ; 2 uses
  %vec.ind.next3886 = add nuw <16 x i64> %vec.ind3865, splat (i64 64)
  %i.ast = icmp eq i64 %index.next3885, %n.vec3860
  br i1 %i.ast, label %middle.block3887, label %vector.body3863, !llvm.loop !135

middle.block3887:                                 ; preds = %vector.body3863
  %rdx.minmax3888 = call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.asp, <16 x i32> %i.asq)
  %rdx.minmax3889 = call <16 x i32> @llvm.smin.v16i32(<16 x i32> %rdx.minmax3888, <16 x i32> %i.asr)
  %rdx.minmax3890 = call <16 x i32> @llvm.smin.v16i32(<16 x i32> %rdx.minmax3889, <16 x i32> %i.ass)
  %i.asu = call i32 @llvm.vector.reduce.smin.v16i32(<16 x i32> %rdx.minmax3890) ; 3 uses
  %cmp.n3891 = icmp eq i64 %i.ask, %n.vec3860
  br i1 %cmp.n3891, label %._crit_edge2723, label %vec.epilog.iter.check3896

vec.epilog.iter.check3896:                        ; preds = %middle.block3887
  %min.epilog.iters.check3897 = icmp eq i64 %i.aso, 0
  br i1 %min.epilog.iters.check3897, label %.lr.ph2722.preheader, label %vec.epilog.ph3898, !prof !55

vec.epilog.ph3898:                                ; preds = %vector.main.loop.iter.check3857, %vec.epilog.iter.check3896
  %vec.epilog.resume.val3892 = phi i64 [ %n.vec3860, %vec.epilog.iter.check3896 ], [ 0, %vector.main.loop.iter.check3857 ] ; 2 uses
  %bc.merge.rdx3893 = phi i32 [ %i.asu, %vec.epilog.iter.check3896 ], [ %i.asn, %vector.main.loop.iter.check3857 ]
  %broadcast.splatinsert3873 = insertelement <8 x i32> poison, i32 %bc.merge.rdx3893, i64 0
  %broadcast.splat3874 = shufflevector <8 x i32> %broadcast.splatinsert3873, <8 x i32> poison, <8 x i32> zeroinitializer
  %n.vec3866 = and i64 %i.ask, -8                 ; 3 uses
  %broadcast.splatinsert3902 = insertelement <8 x i64> poison, i64 %vec.epilog.resume.val3892, i64 0
  %broadcast.splat3903 = shufflevector <8 x i64> %broadcast.splatinsert3902, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction3904 = or disjoint <8 x i64> %broadcast.splat3903, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vec.epilog.vector.body3905

vec.epilog.vector.body3905:                       ; preds = %vec.epilog.vector.body3905, %vec.epilog.ph3898
  %index3906 = phi i64 [ %vec.epilog.resume.val3892, %vec.epilog.ph3898 ], [ %index.next3912, %vec.epilog.vector.body3905 ]
  %vec.ind3907 = phi <8 x i64> [ %induction3904, %vec.epilog.ph3898 ], [ %vec.ind.next3913, %vec.epilog.vector.body3905 ] ; 2 uses
  %vec.phi3908 = phi <8 x i32> [ %broadcast.splat3874, %vec.epilog.ph3898 ], [ %i.asv, %vec.epilog.vector.body3905 ]
  %wide.gep3909 = getelementptr inbounds nuw [72 x i8], ptr %i.asg, <8 x i64> %vec.ind3907
  %wide.gep3910 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep3909, i64 24
  %wide.masked.gather3911 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep3910, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !28
  %i.asv = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.masked.gather3911, <8 x i32> %vec.phi3908) ; 2 uses
  %index.next3912 = add nuw i64 %index3906, 8     ; 2 uses
  %vec.ind.next3913 = add nuw <8 x i64> %vec.ind3907, splat (i64 8)
  %i.asw = icmp eq i64 %index.next3912, %n.vec3866
  br i1 %i.asw, label %vec.epilog.middle.block3914, label %vec.epilog.vector.body3905, !llvm.loop !136

vec.epilog.middle.block3914:                      ; preds = %vec.epilog.vector.body3905
  %i.asx = call i32 @llvm.vector.reduce.smin.v8i32(<8 x i32> %i.asv) ; 2 uses
  %cmp.n3915 = icmp eq i64 %i.ask, %n.vec3866
  br i1 %cmp.n3915, label %._crit_edge2723, label %.lr.ph2722.preheader

.lr.ph2722.preheader:                             ; preds = %iter.check3894, %vec.epilog.iter.check3896, %vec.epilog.middle.block3914
  %.010862721.ph = phi i64 [ 0, %iter.check3894 ], [ %n.vec3860, %vec.epilog.iter.check3896 ], [ %n.vec3866, %vec.epilog.middle.block3914 ]
  %.025292719.ph = phi i32 [ %i.asn, %iter.check3894 ], [ %i.asu, %vec.epilog.iter.check3896 ], [ %i.asx, %vec.epilog.middle.block3914 ]
  br label %.lr.ph2722

._crit_edge2723:                                  ; preds = %.lr.ph2722, %middle.block3887, %vec.epilog.middle.block3914, %.critedge1341.thread, %.critedge1341
  %.02529.lcssa = phi i32 [ %i.asn, %.critedge1341 ], [ %i.aqb, %.critedge1341.thread ], [ %i.asx, %vec.epilog.middle.block3914 ], [ %i.asu, %middle.block3887 ], [ %.sroa.speculated, %.lr.ph2722 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.asy = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.asz = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ata = load ptr, ptr %i.asz, align 8, !tbaa !17 ; 2 uses
  %i.atb = load <2 x ptr>, ptr %i.k, align 8, !tbaa !56
  store <2 x ptr> %i.atb, ptr %5, align 16, !tbaa !56
  %i.atc = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  %i.atd = load i64, ptr %i.n, align 8, !tbaa !25
  store i64 %i.atd, ptr %i.atc, align 16, !tbaa !25
  %i.ate = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.atf = load i32, ptr %i.p, align 8, !tbaa !27
  store i32 %i.atf, ptr %i.ate, align 8, !tbaa !27
  %i.atg = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.ath = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.ati = load ptr, ptr %i.ath, align 8, !tbaa !18
  store ptr %i.ati, ptr %i.atg, align 16, !tbaa !18
  %i.atj = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.atk = load <4 x i32>, ptr %i.l, align 8, !tbaa !28
  store <4 x i32> %i.atk, ptr %i.atj, align 8, !tbaa !28
  %i.atl = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.atm = load i32, ptr %i.apt, align 8, !tbaa !50
  store i32 %i.atm, ptr %i.atl, align 8, !tbaa !50
  %i.atn = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 9 uses
  %i.ato = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.atp = load i64, ptr %i.ato, align 8, !tbaa !20
  store i64 %i.atp, ptr %i.atn, align 16, !tbaa !20
  %.not.i1800 = icmp eq ptr %i.ata, null
  br i1 %.not.i1800, label %_ZN4ncnn3Mat6addrefEv.exit1801, label %bb.ca

bb.ca:                                            ; preds = %._crit_edge2723
  %i.atq = atomicrmw add ptr %i.ata, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit1801

_ZN4ncnn3Mat6addrefEv.exit1801:                   ; preds = %._crit_edge2723, %bb.ca
  %i.atr = load i32, ptr %i.b, align 4, !tbaa !28
  %i.ats = icmp sgt i32 %i.atr, %.02529.lcssa
  br i1 %i.ats, label %bb.cb, label %bb.ce

.lr.ph2722:                                       ; preds = %.lr.ph2722.preheader, %.lr.ph2722
  %.010862721 = phi i64 [ %i.atw, %.lr.ph2722 ], [ %.010862721.ph, %.lr.ph2722.preheader ] ; 2 uses
  %.025292719 = phi i32 [ %.sroa.speculated, %.lr.ph2722 ], [ %.025292719.ph, %.lr.ph2722.preheader ]
  %i.att = getelementptr inbounds nuw [72 x i8], ptr %i.asg, i64 %.010862721
  %i.atu = getelementptr inbounds nuw i8, ptr %i.att, i64 24
  %i.atv = load i32, ptr %i.atu, align 4, !tbaa !28
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.atv, i32 %.025292719) ; 2 uses
  %i.atw = add nuw i64 %.010862721, 1             ; 2 uses
  %exitcond2966.not = icmp eq i64 %i.atw, %i.ask
  br i1 %exitcond2966.not, label %._crit_edge2723, label %.lr.ph2722, !llvm.loop !137

bb.cb:                                            ; preds = %_ZN4ncnn3Mat6addrefEv.exit1801
  invoke void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef nonnull align 8 dereferenceable(72) %5, i32 noundef %.02529.lcssa, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.cc unwind label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.atx = load ptr, ptr %5, align 16, !tbaa !19
  %i.aty = icmp eq ptr %i.atx, null
  br i1 %i.aty, label %.critedge1335.critedge1364, label %_ZNK4ncnn3Mat5emptyEv.exit1708

_ZNK4ncnn3Mat5emptyEv.exit1708:                   ; preds = %bb.cc
  %i.atz = load i64, ptr %i.atn, align 16, !tbaa !20
  %i.aua = load i32, ptr %i.atl, align 8, !tbaa !50
  %i.aub = sext i32 %i.aua to i64
  %i.auc = mul i64 %i.atz, %i.aub
  %i.aud = icmp eq i64 %i.auc, 0
  br i1 %i.aud, label %.critedge1335.critedge1364, label %bb.ce

bb.cd:                                            ; preds = %bb.cb
  %i.aue = landingpad { ptr, i32 }
          cleanup
  %i.auf = load ptr, ptr %i.asy, align 8, !tbaa !17 ; 2 uses
  %.not.i1596 = icmp eq ptr %i.auf, null
  br i1 %.not.i1596, label %_ZN4ncnn3MatD2Ev.exit1369, label %bb.cv

bb.ce:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit1708, %_ZN4ncnn3Mat6addrefEv.exit1801
  %i.aug = load ptr, ptr %i.apx, align 8, !tbaa !44 ; 2 uses
  %i.auh = load ptr, ptr %2, align 8, !tbaa !23   ; 2 uses
  %.not2910 = icmp eq ptr %i.aug, %i.auh
  br i1 %.not2910, label %._crit_edge2891, label %.lr.ph2890

.lr.ph2890:                                       ; preds = %bb.ce
  %i.aui = icmp eq i32 %.02529.lcssa, 8
  %i.auj = icmp eq i32 %.02529.lcssa, 4           ; 2 uses
  %i.auk = icmp eq i32 %.02529.lcssa, 1           ; 2 uses
  br label %bb.cf

bb.cf:                                            ; preds = %.lr.ph2890, %bb.co
  %i.aul = phi ptr [ %i.auh, %.lr.ph2890 ], [ %i.chw, %bb.co ] ; 2 uses
  %i.aum = phi ptr [ %i.aug, %.lr.ph2890 ], [ %i.chx, %bb.co ]
  %.010712888 = phi i64 [ 0, %.lr.ph2890 ], [ %i.chy, %bb.co ] ; 2 uses
  %.010722887 = phi i32 [ 0, %.lr.ph2890 ], [ %.131085, %bb.co ] ; 3 uses
  %i.aun = getelementptr inbounds nuw [72 x i8], ptr %i.aul, i64 %.010712888 ; 47 uses
  %i.auo = getelementptr inbounds nuw i8, ptr %i.aun, i64 24 ; 6 uses
  %i.aup = load i32, ptr %i.auo, align 8          ; 2 uses
  %i.auq = icmp eq i32 %i.aup, 16
  %or.cond1344 = select i1 %i.aui, i1 %i.auq, i1 false
  br i1 %or.cond1344, label %bb.cg, label %.loopexit2577

bb.cg:                                            ; preds = %bb.cf
  %i.aur = getelementptr inbounds nuw i8, ptr %i.aun, i64 44
  %i.aus = load i32, ptr %i.aur, align 4, !tbaa !43
  %i.aut = getelementptr inbounds nuw i8, ptr %i.aun, i64 48
  %i.auu = load i32, ptr %i.aut, align 8, !tbaa !52
  %i.auv = mul i32 %i.auu, %i.aus
  %i.auw = getelementptr inbounds nuw i8, ptr %i.aun, i64 52
  %i.aux = load i32, ptr %i.auw, align 4, !tbaa !59
  %i.auy = mul i32 %i.auv, %i.aux                 ; 2 uses
  %i.auz = getelementptr inbounds nuw i8, ptr %i.aun, i64 56
  %i.ava = load i32, ptr %i.auz, align 8, !tbaa !50 ; 2 uses
  %i.avb = icmp sgt i32 %i.ava, 0
  br i1 %i.avb, label %.noexc1797.lr.ph, label %.thread2565

.noexc1797.lr.ph:                                 ; preds = %bb.cg
  %i.avc = load ptr, ptr %5, align 16, !tbaa !19, !noalias !279 ; 2 uses
  %i.avd = load i64, ptr %i.atn, align 16, !tbaa !20, !noalias !279
  %i.ave = load i64, ptr %i.atc, align 16, !tbaa !25, !noalias !279
  %factor.op.mul2734 = mul i64 %i.avd, %i.ave     ; 2 uses
  %i.avf = load ptr, ptr %i.aun, align 8, !tbaa !19, !noalias !280
  %i.avg = getelementptr inbounds nuw i8, ptr %i.aun, i64 64
  %i.avh = load i64, ptr %i.avg, align 8, !tbaa !20, !noalias !280
  %i.avi = getelementptr inbounds nuw i8, ptr %i.aun, i64 16
  %i.avj = load i64, ptr %i.avi, align 8, !tbaa !25, !noalias !280
  %factor.op.mul2738 = mul i64 %i.avh, %i.avj
  %i.avk = icmp sgt i32 %i.auy, 0
  %i.avl = sext i32 %.010722887 to i64
  %wide.trip.count2975 = zext nneg i32 %i.ava to i64
  br label %.noexc1797

.noexc1797:                                       ; preds = %.noexc1797.lr.ph, %._crit_edge2730
  %indvars.iv2970 = phi i64 [ %i.avl, %.noexc1797.lr.ph ], [ %indvars.iv.next2971, %._crit_edge2730 ] ; 3 uses
  %indvars.iv2968 = phi i64 [ 0, %.noexc1797.lr.ph ], [ %indvars.iv.next2969, %._crit_edge2730 ] ; 2 uses
  br i1 %i.avk, label %.lr.ph2729.preheader, label %._crit_edge2730

.lr.ph2729.preheader:                             ; preds = %.noexc1797
  %.reass2739 = mul i64 %factor.op.mul2738, %indvars.iv2968
  %i.avm = getelementptr inbounds nuw i8, ptr %i.avf, i64 %.reass2739
  %i.avn = add nsw i64 %indvars.iv2970, 1
  %.reass2737 = mul i64 %factor.op.mul2734, %i.avn
  %i.avo = getelementptr inbounds nuw i8, ptr %i.avc, i64 %.reass2737
  %.reass2735 = mul i64 %factor.op.mul2734, %indvars.iv2970
  %i.avp = getelementptr inbounds nuw i8, ptr %i.avc, i64 %.reass2735
  br label %.lr.ph2729

._crit_edge2730:                                  ; preds = %.lr.ph2729, %.noexc1797
  %indvars.iv.next2971 = add nsw i64 %indvars.iv2970, 2 ; 2 uses
  %indvars.iv.next2969 = add nuw nsw i64 %indvars.iv2968, 1 ; 2 uses
  %exitcond2976.not = icmp eq i64 %indvars.iv.next2969, %wide.trip.count2975
  br i1 %exitcond2976.not, label %.loopexit2577.loopexit, label %.noexc1797, !llvm.loop !142

.lr.ph2729:                                       ; preds = %.lr.ph2729.preheader, %.lr.ph2729
  %.010662728 = phi i32 [ %i.axm, %.lr.ph2729 ], [ 0, %.lr.ph2729.preheader ]
  %.010672727 = phi ptr [ %i.axl, %.lr.ph2729 ], [ %i.avm, %.lr.ph2729.preheader ] ; 17 uses
  %.010682726 = phi ptr [ %i.axk, %.lr.ph2729 ], [ %i.avo, %.lr.ph2729.preheader ] ; 9 uses
  %.010692725 = phi ptr [ %i.axj, %.lr.ph2729 ], [ %i.avp, %.lr.ph2729.preheader ] ; 9 uses
  %i.avq = load float, ptr %.010692725, align 4, !tbaa !233
  store float %i.avq, ptr %.010672727, align 4, !tbaa !233
  %i.avr = getelementptr inbounds nuw i8, ptr %.010692725, i64 4
  %i.avs = load float, ptr %i.avr, align 4, !tbaa !233
  %i.avt = getelementptr inbounds nuw i8, ptr %.010672727, i64 4
  store float %i.avs, ptr %i.avt, align 4, !tbaa !233
  %i.avu = getelementptr inbounds nuw i8, ptr %.010692725, i64 8
  %i.avv = load float, ptr %i.avu, align 4, !tbaa !233
  %i.avw = getelementptr inbounds nuw i8, ptr %.010672727, i64 8
  store float %i.avv, ptr %i.avw, align 4, !tbaa !233
  %i.avx = getelementptr inbounds nuw i8, ptr %.010692725, i64 12
  %i.avy = load float, ptr %i.avx, align 4, !tbaa !233
  %i.avz = getelementptr inbounds nuw i8, ptr %.010672727, i64 12
  store float %i.avy, ptr %i.avz, align 4, !tbaa !233
  %i.awa = getelementptr inbounds nuw i8, ptr %.010692725, i64 16
  %i.awb = load float, ptr %i.awa, align 4, !tbaa !233
  %i.awc = getelementptr inbounds nuw i8, ptr %.010672727, i64 16
  store float %i.awb, ptr %i.awc, align 4, !tbaa !233
  %i.awd = getelementptr inbounds nuw i8, ptr %.010692725, i64 20
  %i.awe = load float, ptr %i.awd, align 4, !tbaa !233
  %i.awf = getelementptr inbounds nuw i8, ptr %.010672727, i64 20
  store float %i.awe, ptr %i.awf, align 4, !tbaa !233
  %i.awg = getelementptr inbounds nuw i8, ptr %.010692725, i64 24
  %i.awh = load float, ptr %i.awg, align 4, !tbaa !233
  %i.awi = getelementptr inbounds nuw i8, ptr %.010672727, i64 24
  store float %i.awh, ptr %i.awi, align 4, !tbaa !233
  %i.awj = getelementptr inbounds nuw i8, ptr %.010692725, i64 28
  %i.awk = load float, ptr %i.awj, align 4, !tbaa !233
  %i.awl = getelementptr inbounds nuw i8, ptr %.010672727, i64 28
  store float %i.awk, ptr %i.awl, align 4, !tbaa !233
  %i.awm = load float, ptr %.010682726, align 4, !tbaa !233
  %i.awn = getelementptr inbounds nuw i8, ptr %.010672727, i64 32
  store float %i.awm, ptr %i.awn, align 4, !tbaa !233
  %i.awo = getelementptr inbounds nuw i8, ptr %.010682726, i64 4
  %i.awp = load float, ptr %i.awo, align 4, !tbaa !233
  %i.awq = getelementptr inbounds nuw i8, ptr %.010672727, i64 36
  store float %i.awp, ptr %i.awq, align 4, !tbaa !233
  %i.awr = getelementptr inbounds nuw i8, ptr %.010682726, i64 8
  %i.aws = load float, ptr %i.awr, align 4, !tbaa !233
  %i.awt = getelementptr inbounds nuw i8, ptr %.010672727, i64 40
  store float %i.aws, ptr %i.awt, align 4, !tbaa !233
  %i.awu = getelementptr inbounds nuw i8, ptr %.010682726, i64 12
end_hunk_1
begin_hunk_2_@_ZNK4ncnn16Slice_x86_avx51219forward_bf16s_fp16sERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
  %.not1267 = icmp ult i64 %i.cq, %i.cw
  br i1 %.not1267, label %bb.c, label %.critedge1324, !llvm.loop !339

.critedge1324:                                    ; preds = %bb.n, %bb.a
  %i.cx = icmp eq i32 %i.m, 2                     ; 3 uses
  %i.cy = icmp eq i32 %i.z, 0                     ; 3 uses
  %or.cond = select i1 %i.cx, i1 %i.cy, i1 false
  br i1 %or.cond, label %bb.o, label %bb.bd

bb.o:                                             ; preds = %.critedge1324
  %i.cz = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !43 ; 37 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !52
  %i.dd = mul nsw i32 %i.q, %i.dc                 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !44 ; 2 uses
  %i.dg = load ptr, ptr %2, align 8, !tbaa !23    ; 4 uses
  %.not12692590.not = icmp eq ptr %i.df, %i.dg
  br i1 %.not12692590.not, label %.critedge1326.thread, label %.lr.ph2593

.critedge1326.thread:                             ; preds = %bb.o
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !27
  br label %._crit_edge

.lr.ph2593:                                       ; preds = %bb.o
  %i.dj = ptrtoint ptr %i.df to i64
  %i.dk = ptrtoint ptr %i.dg to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = sdiv exact i64 %i.dl, 72
  %.not1268 = icmp eq ptr %i.u, null
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 39
  %i.do = sext i32 %i.q to i64
  %i.dp = udiv i64 %i.o, %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph2593, %bb.aa
  %i.dr = phi i64 [ %i.dm, %.lr.ph2593 ], [ %i.fo, %bb.aa ] ; 2 uses
  %i.ds = phi ptr [ %i.dg, %.lr.ph2593 ], [ %i.fk, %bb.aa ]
  %.012402592 = phi i64 [ 0, %.lr.ph2593 ], [ %i.fi, %bb.aa ] ; 6 uses
  %.012412591 = phi i32 [ 0, %.lr.ph2593 ], [ %i.fh, %bb.aa ] ; 4 uses
  br i1 %.not1268, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dt = add nsw i64 %i.dr, -1
  %i.du = icmp eq i64 %.012402592, %i.dt
  br i1 %i.du, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dv = sub nsw i32 %i.dd, %.012412591
  br label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.012402592
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !28 ; 2 uses
  %i.dy = icmp slt i32 %i.dx, 0
  %i.dz = select i1 %i.dy, i32 %i.dd, i32 0
  %i.ea = sub i32 %i.dx, %.012412591
  %i.eb = add i32 %i.ea, %i.dz
  br label %bb.v

bb.t:                                             ; preds = %bb.p
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.012402592
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !28 ; 2 uses
  %i.ee = icmp eq i32 %i.ed, -233
  br i1 %i.ee, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ef = sub nsw i32 %i.dd, %.012412591
  %i.eg = sext i32 %i.ef to i64
  %i.eh = sub nuw i64 %i.dr, %.012402592
  %i.ei = udiv i64 %i.eg, %i.eh
  %i.ej = trunc i64 %i.ei to i32
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.r, %bb.s
  %.01239 = phi i32 [ %i.dv, %bb.r ], [ %i.eb, %bb.s ], [ %i.ej, %bb.u ], [ %i.ed, %bb.t ] ; 5 uses
  %i.ek = load i8, ptr %i.dn, align 1, !tbaa !46, !range !47, !noundef !48
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.em = and i32 %.01239, 15
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eo = and i32 %.01239, 7
  %i.ep = icmp eq i32 %i.eo, 0
  br i1 %i.ep, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eq = and i32 %.01239, 3
  %i.er = icmp eq i32 %i.eq, 0
  %i.es = select i1 %i.er, i32 4, i32 1
  br label %bb.z

bb.z:                                             ; preds = %bb.w, %bb.x, %bb.y, %bb.v
  %.01238 = phi i32 [ 1, %bb.v ], [ 16, %bb.w ], [ %i.es, %bb.y ], [ 8, %bb.x ] ; 3 uses
  %i.et = zext nneg i32 %.01238 to i64
  %i.eu = mul i64 %i.dp, %i.et
  %i.ev = getelementptr inbounds nuw [72 x i8], ptr %i.ds, i64 %.012402592 ; 4 uses
  %i.ew = sdiv i32 %.01239, %.01238
  %i.ex = load ptr, ptr %i.dq, align 8, !tbaa !49
  tail call void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.ev, i32 noundef %i.da, i32 noundef %i.ew, i64 noundef %i.eu, i32 noundef %.01238, ptr noundef %i.ex)
  %i.ey = load ptr, ptr %i.ev, align 8, !tbaa !19
  %i.ez = icmp eq ptr %i.ey, null
  br i1 %i.ez, label %.critedge1331, label %_ZNK4ncnn3Mat5emptyEv.exit1707

_ZNK4ncnn3Mat5emptyEv.exit1707:                   ; preds = %bb.z
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 64
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !20
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ev, i64 56
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !50
  %i.fe = sext i32 %i.fd to i64
  %i.ff = mul i64 %i.fb, %i.fe
  %i.fg = icmp eq i64 %i.ff, 0
  br i1 %i.fg, label %.critedge1331, label %bb.aa

bb.aa:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit1707
  %i.fh = add nsw i32 %.01239, %.012412591
  %i.fi = add nuw i64 %.012402592, 1              ; 2 uses
  %i.fj = load ptr, ptr %i.de, align 8, !tbaa !44 ; 2 uses
  %i.fk = load ptr, ptr %2, align 8, !tbaa !23    ; 10 uses
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = sub i64 %i.fl, %i.fm
  %i.fo = sdiv exact i64 %i.fn, 72                ; 10 uses
  %.not1269 = icmp ult i64 %i.fi, %i.fo
  br i1 %.not1269, label %bb.p, label %.critedge1326, !llvm.loop !340

.critedge1326:                                    ; preds = %bb.aa
  %i.fp = icmp eq ptr %i.fj, %i.fk
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !27 ; 4 uses
  br i1 %i.fp, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %.critedge1326
  %min.iters.check = icmp ult i64 %i.fo, 8
  br i1 %min.iters.check, label %.lr.ph2597.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check3205 = icmp ult i64 %i.fo, 64
  br i1 %min.iters.check3205, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fs = and i64 %i.fo, 56
  %n.vec = and i64 %i.fo, -64                     ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.fr, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %vec.phi = phi <16 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ft, %vector.body ]
  %vec.phi3206 = phi <16 x i32> [ %broadcast.splat, %vector.ph ], [ %i.fu, %vector.body ]
  %vec.phi3207 = phi <16 x i32> [ %broadcast.splat, %vector.ph ], [ %i.fv, %vector.body ]
  %vec.phi3208 = phi <16 x i32> [ %broadcast.splat, %vector.ph ], [ %i.fw, %vector.body ]
  %step.add = add nuw <16 x i64> %vec.ind, splat (i64 16)
  %step.add.2 = add nuw <16 x i64> %vec.ind, splat (i64 32)
  %step.add.3 = add nuw <16 x i64> %vec.ind, splat (i64 48)
  %wide.gep = getelementptr inbounds nuw [72 x i8], ptr %i.fk, <16 x i64> %vec.ind
  %wide.gep3209 = getelementptr inbounds nuw [72 x i8], ptr %i.fk, <16 x i64> %step.add
  %wide.gep3210 = getelementptr inbounds nuw [72 x i8], ptr %i.fk, <16 x i64> %step.add.2
  %wide.gep3211 = getelementptr inbounds nuw [72 x i8], ptr %i.fk, <16 x i64> %step.add.3
  %wide.gep3212 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep, i64 24
  %wide.gep3213 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep3209, i64 24
  %wide.gep3214 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep3210, i64 24
  %wide.gep3215 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep3211, i64 24
  %wide.masked.gather = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %wide.gep3212, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !28
  %wide.masked.gather3216 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %wide.gep3213, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !28
  %wide.masked.gather3217 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %wide.gep3214, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !28
  %wide.masked.gather3218 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %wide.gep3215, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !28
  %i.ft = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %wide.masked.gather, <16 x i32> %vec.phi) ; 2 uses
  %i.fu = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %wide.masked.gather3216, <16 x i32> %vec.phi3206) ; 2 uses
  %i.fv = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %wide.masked.gather3217, <16 x i32> %vec.phi3207) ; 2 uses
  %i.fw = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %wide.masked.gather3218, <16 x i32> %vec.phi3208) ; 2 uses
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %vec.ind.next = add nuw <16 x i64> %vec.ind, splat (i64 64)
  %i.fx = icmp eq i64 %index.next, %n.vec
  br i1 %i.fx, label %middle.block, label %vector.body, !llvm.loop !341

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.ft, <16 x i32> %i.fu)
  %rdx.minmax3219 = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %rdx.minmax, <16 x i32> %i.fv)
  %rdx.minmax3220 = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %rdx.minmax3219, <16 x i32> %i.fw)
  %i.fy = tail call i32 @llvm.vector.reduce.smin.v16i32(<16 x i32> %rdx.minmax3220) ; 3 uses
  %cmp.n = icmp eq i64 %i.fo, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.fs, 0
  br i1 %min.epilog.iters.check, label %.lr.ph2597.preheader, label %vec.epilog.ph, !prof !55

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %bc.merge.rdx = phi i32 [ %i.fy, %vec.epilog.iter.check ], [ %i.fr, %vector.main.loop.iter.check ]
  %broadcast.splatinsert3226 = insertelement <8 x i32> poison, i32 %bc.merge.rdx, i64 0
  %broadcast.splat3227 = shufflevector <8 x i32> %broadcast.splatinsert3226, <8 x i32> poison, <8 x i32> zeroinitializer
  %n.vec3221 = and i64 %i.fo, -8                  ; 3 uses
  %broadcast.splatinsert3224 = insertelement <8 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat3225 = shufflevector <8 x i64> %broadcast.splatinsert3224, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = or disjoint <8 x i64> %broadcast.splat3225, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index3226 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next3232, %vec.epilog.vector.body ]
  %vec.ind3227 = phi <8 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next3233, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi3228 = phi <8 x i32> [ %broadcast.splat3227, %vec.epilog.ph ], [ %i.fz, %vec.epilog.vector.body ]
  %wide.gep3229 = getelementptr inbounds nuw [72 x i8], ptr %i.fk, <8 x i64> %vec.ind3227
  %wide.gep3230 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep3229, i64 24
  %wide.masked.gather3231 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep3230, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !28
  %i.fz = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.masked.gather3231, <8 x i32> %vec.phi3228) ; 2 uses
  %index.next3232 = add nuw i64 %index3226, 8     ; 2 uses
  %vec.ind.next3233 = add nuw <8 x i64> %vec.ind3227, splat (i64 8)
  %i.ga = icmp eq i64 %index.next3232, %n.vec3221
  br i1 %i.ga, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !342

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.gb = tail call i32 @llvm.vector.reduce.smin.v8i32(<8 x i32> %i.fz) ; 2 uses
  %cmp.n3234 = icmp eq i64 %i.fo, %n.vec3221
  br i1 %cmp.n3234, label %._crit_edge, label %.lr.ph2597.preheader

.lr.ph2597.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012372596.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec3221, %vec.epilog.middle.block ]
  %.025222594.ph = phi i32 [ %i.fr, %iter.check ], [ %i.fy, %vec.epilog.iter.check ], [ %i.gb, %vec.epilog.middle.block ]
  br label %.lr.ph2597

._crit_edge:                                      ; preds = %.lr.ph2597, %middle.block, %vec.epilog.middle.block, %.critedge1326.thread, %.critedge1326
  %.02522.lcssa = phi i32 [ %i.fr, %.critedge1326 ], [ %i.di, %.critedge1326.thread ], [ %i.gb, %vec.epilog.middle.block ], [ %i.fy, %middle.block ], [ %.sroa.speculated2507, %.lr.ph2597 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.gc = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !17 ; 2 uses
  %i.gf = load <2 x ptr>, ptr %i.k, align 8, !tbaa !56
  store <2 x ptr> %i.gf, ptr %4, align 16, !tbaa !56
  %i.gg = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.gh = load i64, ptr %i.n, align 8, !tbaa !25
  store i64 %i.gh, ptr %i.gg, align 16, !tbaa !25
  %i.gi = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.gj = load i32, ptr %i.p, align 8, !tbaa !27
  store i32 %i.gj, ptr %i.gi, align 8, !tbaa !27
  %i.gk = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !18
  store ptr %i.gm, ptr %i.gk, align 16, !tbaa !18
  %i.gn = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.go = load <4 x i32>, ptr %i.l, align 8, !tbaa !28
  store <4 x i32> %i.go, ptr %i.gn, align 8, !tbaa !28
  %i.gp = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !50
  store i32 %i.gr, ptr %i.gp, align 8, !tbaa !50
  %i.gs = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !20
  store i64 %i.gu, ptr %i.gs, align 16, !tbaa !20
  %.not.i1794 = icmp eq ptr %i.ge, null
  br i1 %.not.i1794, label %_ZN4ncnn3Mat6addrefEv.exit, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge
  %i.gv = atomicrmw add ptr %i.ge, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load i32, ptr %i.b, align 4, !tbaa !28
  br label %_ZN4ncnn3Mat6addrefEv.exit

_ZN4ncnn3Mat6addrefEv.exit:                       ; preds = %._crit_edge, %bb.ab
  %i.gw = phi i32 [ %i.q, %._crit_edge ], [ %.pre, %bb.ab ]
  %i.gx = icmp sgt i32 %i.gw, %.02522.lcssa
  br i1 %i.gx, label %bb.ac, label %bb.al

.lr.ph2597:                                       ; preds = %.lr.ph2597.preheader, %.lr.ph2597
  %.012372596 = phi i64 [ %i.hb, %.lr.ph2597 ], [ %.012372596.ph, %.lr.ph2597.preheader ] ; 2 uses
  %.025222594 = phi i32 [ %.sroa.speculated2507, %.lr.ph2597 ], [ %.025222594.ph, %.lr.ph2597.preheader ]
  %i.gy = getelementptr inbounds nuw [72 x i8], ptr %i.fk, i64 %.012372596
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !28
  %.sroa.speculated2507 = tail call i32 @llvm.smin.i32(i32 %i.ha, i32 %.025222594) ; 2 uses
  %i.hb = add nuw i64 %.012372596, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.hb, %i.fo
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph2597, !llvm.loop !343

bb.ac:                                            ; preds = %_ZN4ncnn3Mat6addrefEv.exit
  invoke void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef nonnull align 8 dereferenceable(72) %4, i32 noundef %.02522.lcssa, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.hc = load ptr, ptr %4, align 16, !tbaa !19
  %i.hd = icmp eq ptr %i.hc, null
  br i1 %i.hd, label %.critedge1331.critedge, label %_ZNK4ncnn3Mat5emptyEv.exit1706

_ZNK4ncnn3Mat5emptyEv.exit1706:                   ; preds = %bb.ad
  %i.he = load i64, ptr %i.gs, align 16, !tbaa !20
  %i.hf = load i32, ptr %i.gp, align 8, !tbaa !50
  %i.hg = sext i32 %i.hf to i64
  %i.hh = mul i64 %i.he, %i.hg
  %i.hi = icmp eq i64 %i.hh, 0
  br i1 %i.hi, label %.critedge1331.critedge, label %bb.al

bb.ae:                                            ; preds = %bb.ac
  %i.hj = landingpad { ptr, i32 }
          cleanup
  %i.hk = load ptr, ptr %i.gc, align 8, !tbaa !17 ; 2 uses
  %.not.i1412 = icmp eq ptr %i.hk, null
  br i1 %.not.i1412, label %_ZN4ncnn3MatD2Ev.exit1410, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hl = atomicrmw add ptr %i.hk, i32 -1 acq_rel, align 4
  %i.hm = icmp eq i32 %i.hl, 1
  br i1 %i.hm, label %bb.ag, label %_ZN4ncnn3MatD2Ev.exit1410

bb.ag:                                            ; preds = %bb.af
  %i.hn = load ptr, ptr %i.gk, align 16, !tbaa !18 ; 3 uses
  %.not3.i1413 = icmp eq ptr %i.hn, null
  %i.ho = load ptr, ptr %4, align 16, !tbaa !19   ; 3 uses
  br i1 %.not3.i1413, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hp = load ptr, ptr %i.hn, align 8, !tbaa !11
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 24
  %i.hr = load ptr, ptr %i.hq, align 8
  invoke void %i.hr(ptr noundef nonnull align 8 dereferenceable(8) %i.hn, ptr noundef %i.ho)
          to label %_ZN4ncnn3MatD2Ev.exit1410 unwind label %bb.ak, !inline_history !0

bb.ai:                                            ; preds = %bb.ag
  %.not.i1697 = icmp eq ptr %i.ho, null
  br i1 %.not.i1697, label %_ZN4ncnn3MatD2Ev.exit1410, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @free(ptr noundef nonnull %i.ho) #9
  br label %_ZN4ncnn3MatD2Ev.exit1410

bb.ak:                                            ; preds = %bb.ah
  %i.hs = landingpad { ptr, i32 }
          catch ptr null
  %i.ht = extractvalue { ptr, i32 } %i.hs, 0
  call void @__clang_call_terminate(ptr %i.ht) #15
  unreachable

_ZN4ncnn3MatD2Ev.exit1410:                        ; preds = %bb.af, %bb.ae, %bb.ah, %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.es

bb.al:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit1706, %_ZN4ncnn3Mat6addrefEv.exit
  %i.hu = load ptr, ptr %i.de, align 8, !tbaa !44 ; 2 uses
  %i.hv = load ptr, ptr %2, align 8, !tbaa !23    ; 2 uses
  %.not2903 = icmp eq ptr %i.hu, %i.hv
  br i1 %.not2903, label %._crit_edge2703, label %.lr.ph2702

.lr.ph2702:                                       ; preds = %bb.al
  %i.hw = load ptr, ptr %4, align 16, !tbaa !19
  %i.hx = icmp eq i32 %.02522.lcssa, 8
  %i.hy = shl i32 %i.da, 3                        ; 3 uses
  %i.hz = sext i32 %i.hy to i64                   ; 7 uses
  %i.ia = icmp sgt i32 %i.da, 0                   ; 6 uses
  %i.ib = shl i32 %i.da, 4
  %i.ic = sext i32 %i.ib to i64                   ; 6 uses
  %i.id = icmp eq i32 %.02522.lcssa, 4            ; 2 uses
  %i.ie = shl i32 %i.da, 2                        ; 2 uses
  %i.if = sext i32 %i.ie to i64                   ; 8 uses
  %i.ig = mul nsw i32 %i.da, 12
  %i.ih = sext i32 %i.ig to i64                   ; 2 uses
  %i.ii = icmp eq i32 %.02522.lcssa, 1            ; 3 uses
  %i.ij = sext i32 %i.da to i64                   ; 5 uses
  %i.ik = shl i32 %i.da, 1
  %i.il = sext i32 %i.ik to i64                   ; 5 uses
  %i.im = mul i32 %i.da, 3
  %i.in = sext i32 %i.im to i64                   ; 5 uses
  %i.io = mul i32 %i.da, 5
  %i.ip = sext i32 %i.io to i64                   ; 3 uses
  %i.iq = mul i32 %i.da, 6
  %i.ir = sext i32 %i.iq to i64                   ; 3 uses
  %i.is = mul i32 %i.da, 7
  %i.it = sext i32 %i.is to i64                   ; 3 uses
  %i.iu = mul nsw i32 %i.da, 9
  %i.iv = sext i32 %i.iu to i64
  %i.iw = mul nsw i32 %i.da, 10
  %i.ix = sext i32 %i.iw to i64
  %i.iy = mul nsw i32 %i.da, 11
  %i.iz = sext i32 %i.iy to i64
  %i.ja = mul nsw i32 %i.da, 13
  %i.jb = sext i32 %i.ja to i64
  %i.jc = mul nsw i32 %i.da, 14
  %i.jd = sext i32 %i.jc to i64
  %i.je = mul nsw i32 %i.da, 15
  %i.jf = sext i32 %i.je to i64
  %i.jg = add i32 %i.da, -1
  %i.jh = zext i32 %i.jg to i64                   ; 2 uses
  %i.ji = shl nuw nsw i64 %i.jh, 3
  %i.jj = shl nsw i64 %i.in, 1                    ; 2 uses
  %i.jk = shl nuw nsw i64 %i.jh, 1                ; 4 uses
  %i.jl = shl nsw i64 %i.if, 1
  %i.jm = shl nsw i64 %i.il, 1                    ; 2 uses
  %i.jn = shl nsw i64 %i.ij, 1                    ; 2 uses
  %i.jo = zext i32 %i.da to i64                   ; 15 uses
  %i.jp = add i32 %i.da, -1
  %i.jq = zext i32 %i.jp to i64                   ; 2 uses
  %i.jr = shl nuw nsw i64 %i.jq, 4
  %i.js = shl nsw i64 %i.it, 1                    ; 2 uses
  %i.jt = shl nuw nsw i64 %i.jq, 1                ; 8 uses
  %i.ju = shl nsw i64 %i.hz, 1
  %i.jv = shl nsw i64 %i.ir, 1                    ; 2 uses
  %i.jw = shl nsw i64 %i.ip, 1                    ; 2 uses
  %i.jx = shl nsw i64 %i.if, 1                    ; 2 uses
  %i.jy = shl nsw i64 %i.in, 1                    ; 2 uses
  %i.jz = shl nsw i64 %i.il, 1                    ; 2 uses
  %i.ka = shl nsw i64 %i.ij, 1                    ; 2 uses
  %i.kb = add i32 %i.da, -1
  %i.kc = zext i32 %i.kb to i64                   ; 2 uses
  %i.kd = shl nuw nsw i64 %i.kc, 4
end_hunk_2
begin_hunk_3_@_ZNK4ncnn16Slice_x86_avx51219forward_bf16s_fp16sERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
bb.bo:                                            ; preds = %bb.bn
  %i.aik = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  %i.ail = load i32, ptr %i.aik, align 4, !tbaa !43
  %i.aim = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.ain = load i32, ptr %i.aim, align 8, !tbaa !52
  %i.aio = getelementptr inbounds nuw i8, ptr %i.k, i64 52
  %i.aip = load i32, ptr %i.aio, align 4, !tbaa !59
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.k, i64 56 ; 2 uses
  %i.air = load i32, ptr %i.aiq, align 8, !tbaa !50
  %i.ais = load i32, ptr %i.b, align 4, !tbaa !28
  %i.ait = mul nsw i32 %i.ais, %i.air             ; 3 uses
  %i.aiu = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.aiv = load ptr, ptr %i.aiu, align 8, !tbaa !44 ; 2 uses
  %i.aiw = load ptr, ptr %2, align 8, !tbaa !23   ; 4 uses
  %.not12732709.not = icmp eq ptr %i.aiv, %i.aiw
  br i1 %.not12732709.not, label %.critedge1337.thread, label %.lr.ph2713

.critedge1337.thread:                             ; preds = %bb.bo
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aiw, i64 24
  %i.aiy = load i32, ptr %i.aix, align 8, !tbaa !27
  br label %._crit_edge2718

.lr.ph2713:                                       ; preds = %bb.bo
  %i.aiz = ptrtoint ptr %i.aiv to i64
  %i.aja = ptrtoint ptr %i.aiw to i64
  %i.ajb = sub i64 %i.aiz, %i.aja
  %i.ajc = sdiv exact i64 %i.ajb, 72
  %.not1272 = icmp eq ptr %i.u, null
  %i.ajd = getelementptr inbounds nuw i8, ptr %3, i64 39
  %i.aje = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.bp

bb.bp:                                            ; preds = %.lr.ph2713, %bb.ca
  %i.ajf = phi i64 [ %i.ajc, %.lr.ph2713 ], [ %i.alh, %bb.ca ] ; 2 uses
  %i.ajg = phi ptr [ %i.aiw, %.lr.ph2713 ], [ %i.ald, %bb.ca ]
  %.010662711 = phi i64 [ 0, %.lr.ph2713 ], [ %i.alb, %bb.ca ] ; 6 uses
  %.010672710 = phi i32 [ 0, %.lr.ph2713 ], [ %i.ala, %bb.ca ] ; 4 uses
  br i1 %.not1272, label %bb.bt, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ajh = add nsw i64 %i.ajf, -1
  %i.aji = icmp eq i64 %.010662711, %i.ajh
  br i1 %i.aji, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.ajj = sub nsw i32 %i.ait, %.010672710
  br label %bb.bv

bb.bs:                                            ; preds = %bb.bq
  %i.ajk = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.010662711
  %i.ajl = load i32, ptr %i.ajk, align 4, !tbaa !28 ; 2 uses
  %i.ajm = icmp slt i32 %i.ajl, 0
  %i.ajn = select i1 %i.ajm, i32 %i.ait, i32 0
  %i.ajo = sub i32 %i.ajl, %.010672710
  %i.ajp = add i32 %i.ajo, %i.ajn
  br label %bb.bv

bb.bt:                                            ; preds = %bb.bp
  %i.ajq = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.010662711
  %i.ajr = load i32, ptr %i.ajq, align 4, !tbaa !28 ; 2 uses
  %i.ajs = icmp eq i32 %i.ajr, -233
  br i1 %i.ajs, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.ajt = sub nsw i32 %i.ait, %.010672710
  %i.aju = sext i32 %i.ajt to i64
  %i.ajv = sub nuw i64 %i.ajf, %.010662711
  %i.ajw = udiv i64 %i.aju, %i.ajv
  %i.ajx = trunc i64 %i.ajw to i32
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bt, %bb.bu, %bb.br, %bb.bs
  %.01065 = phi i32 [ %i.ajj, %bb.br ], [ %i.ajp, %bb.bs ], [ %i.ajx, %bb.bu ], [ %i.ajr, %bb.bt ] ; 5 uses
  %i.ajy = load i8, ptr %i.ajd, align 1, !tbaa !46, !range !47, !noundef !48
  %i.ajz = trunc nuw i8 %i.ajy to i1
  br i1 %i.ajz, label %bb.bw, label %bb.bz

bb.bw:                                            ; preds = %bb.bv
  %i.aka = and i32 %.01065, 15
  %i.akb = icmp eq i32 %i.aka, 0
  br i1 %i.akb, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.akc = and i32 %.01065, 7
  %i.akd = icmp eq i32 %i.akc, 0
  br i1 %i.akd, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ake = and i32 %.01065, 3
  %i.akf = icmp eq i32 %i.ake, 0
  %i.akg = select i1 %i.akf, i32 4, i32 1
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bw, %bb.bx, %bb.by, %bb.bv
  %.01061 = phi i32 [ 1, %bb.bv ], [ 16, %bb.bw ], [ %i.akg, %bb.by ], [ 8, %bb.bx ] ; 3 uses
  %i.akh = load i64, ptr %i.a, align 8, !tbaa !26
  %i.aki = load i32, ptr %i.b, align 4, !tbaa !28
  %i.akj = sext i32 %i.aki to i64
  %i.akk = udiv i64 %i.akh, %i.akj
  %i.akl = zext nneg i32 %.01061 to i64
  %i.akm = mul i64 %i.akk, %i.akl
  %i.akn = getelementptr inbounds nuw [72 x i8], ptr %i.ajg, i64 %.010662711 ; 5 uses
  %i.ako = sdiv i32 %.01065, %.01061
  %i.akp = load ptr, ptr %i.aje, align 8, !tbaa !49
  call void @_ZN4ncnn3Mat6createEiiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.akn, i32 noundef %i.ail, i32 noundef %i.ain, i32 noundef %i.aip, i32 noundef %i.ako, i64 noundef %i.akm, i32 noundef %.01061, ptr noundef %i.akp)
  %i.akq = load ptr, ptr %i.akn, align 8, !tbaa !19
  %i.akr = icmp eq ptr %i.akq, null
  br i1 %i.akr, label %.critedge1331, label %_ZNK4ncnn3Mat5emptyEv.exit1704

_ZNK4ncnn3Mat5emptyEv.exit1704:                   ; preds = %bb.bz
  %i.aks = getelementptr inbounds nuw i8, ptr %i.akn, i64 64
  %i.akt = load i64, ptr %i.aks, align 8, !tbaa !20
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akn, i64 56
  %i.akv = load i32, ptr %i.aku, align 8, !tbaa !50
  %i.akw = sext i32 %i.akv to i64
  %i.akx = mul i64 %i.akt, %i.akw
  %i.aky = icmp eq i64 %i.akx, 0
  br i1 %i.aky, label %.critedge1331, label %bb.ca

bb.ca:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit1704
  %i.akz = getelementptr inbounds nuw i8, ptr %i.akn, i64 40
  store i32 %i.m, ptr %i.akz, align 8, !tbaa !24
  %i.ala = add nsw i32 %.01065, %.010672710
  %i.alb = add nuw i64 %.010662711, 1             ; 2 uses
  %i.alc = load ptr, ptr %i.aiu, align 8, !tbaa !44 ; 2 uses
  %i.ald = load ptr, ptr %2, align 8, !tbaa !23   ; 10 uses
  %i.ale = ptrtoint ptr %i.alc to i64
  %i.alf = ptrtoint ptr %i.ald to i64
  %i.alg = sub i64 %i.ale, %i.alf
  %i.alh = sdiv exact i64 %i.alg, 72              ; 10 uses
  %.not1273 = icmp ult i64 %i.alb, %i.alh
  br i1 %.not1273, label %bb.bp, label %.critedge1337, !llvm.loop !384

.critedge1337:                                    ; preds = %bb.ca
  %i.ali = icmp eq ptr %i.alc, %i.ald
  %i.alj = getelementptr inbounds nuw i8, ptr %i.ald, i64 24
  %i.alk = load i32, ptr %i.alj, align 8, !tbaa !27 ; 4 uses
  br i1 %i.ali, label %._crit_edge2718, label %iter.check3560

iter.check3560:                                   ; preds = %.critedge1337
  %min.iters.check3522 = icmp ult i64 %i.alh, 8
  br i1 %min.iters.check3522, label %.lr.ph2717.preheader, label %vector.main.loop.iter.check3523

vector.main.loop.iter.check3523:                  ; preds = %iter.check3560
  %min.iters.check3524 = icmp ult i64 %i.alh, 64
  br i1 %min.iters.check3524, label %vec.epilog.ph3564, label %vector.ph3525

vector.ph3525:                                    ; preds = %vector.main.loop.iter.check3523
  %i.all = and i64 %i.alh, 56
  %n.vec3526 = and i64 %i.alh, -64                ; 4 uses
  %broadcast.splatinsert3527 = insertelement <16 x i32> poison, i32 %i.alk, i64 0
  %broadcast.splat3528 = shufflevector <16 x i32> %broadcast.splatinsert3527, <16 x i32> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body3529

vector.body3529:                                  ; preds = %vector.ph3525, %vector.body3529
  %index3530 = phi i64 [ 0, %vector.ph3525 ], [ %index.next3551, %vector.body3529 ]
  %vec.ind3531 = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.ph3525 ], [ %vec.ind.next3552, %vector.body3529 ] ; 5 uses
  %vec.phi3532 = phi <16 x i32> [ %broadcast.splat3528, %vector.ph3525 ], [ %i.alm, %vector.body3529 ]
  %vec.phi3533 = phi <16 x i32> [ %broadcast.splat3528, %vector.ph3525 ], [ %i.aln, %vector.body3529 ]
  %vec.phi3534 = phi <16 x i32> [ %broadcast.splat3528, %vector.ph3525 ], [ %i.alo, %vector.body3529 ]
  %vec.phi3535 = phi <16 x i32> [ %broadcast.splat3528, %vector.ph3525 ], [ %i.alp, %vector.body3529 ]
  %step.add3536 = add nuw <16 x i64> %vec.ind3531, splat (i64 16)
  %step.add.23537 = add nuw <16 x i64> %vec.ind3531, splat (i64 32)
  %step.add.33538 = add nuw <16 x i64> %vec.ind3531, splat (i64 48)
  %wide.gep3539 = getelementptr inbounds nuw [72 x i8], ptr %i.ald, <16 x i64> %vec.ind3531
  %wide.gep3540 = getelementptr inbounds nuw [72 x i8], ptr %i.ald, <16 x i64> %step.add3536
  %wide.gep3541 = getelementptr inbounds nuw [72 x i8], ptr %i.ald, <16 x i64> %step.add.23537
  %wide.gep3542 = getelementptr inbounds nuw [72 x i8], ptr %i.ald, <16 x i64> %step.add.33538
  %wide.gep3543 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep3539, i64 24
  %wide.gep3544 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep3540, i64 24
  %wide.gep3545 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep3541, i64 24
  %wide.gep3546 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep3542, i64 24
  %wide.masked.gather3547 = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %wide.gep3543, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !28
  %wide.masked.gather3548 = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %wide.gep3544, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !28
  %wide.masked.gather3549 = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %wide.gep3545, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !28
  %wide.masked.gather3550 = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %wide.gep3546, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !28
  %i.alm = call <16 x i32> @llvm.smin.v16i32(<16 x i32> %wide.masked.gather3547, <16 x i32> %vec.phi3532) ; 2 uses
  %i.aln = call <16 x i32> @llvm.smin.v16i32(<16 x i32> %wide.masked.gather3548, <16 x i32> %vec.phi3533) ; 2 uses
  %i.alo = call <16 x i32> @llvm.smin.v16i32(<16 x i32> %wide.masked.gather3549, <16 x i32> %vec.phi3534) ; 2 uses
  %i.alp = call <16 x i32> @llvm.smin.v16i32(<16 x i32> %wide.masked.gather3550, <16 x i32> %vec.phi3535) ; 2 uses
  %index.next3551 = add nuw i64 %index3530, 64    ; 2 uses
  %vec.ind.next3552 = add nuw <16 x i64> %vec.ind3531, splat (i64 64)
  %i.alq = icmp eq i64 %index.next3551, %n.vec3526
  br i1 %i.alq, label %middle.block3553, label %vector.body3529, !llvm.loop !385

middle.block3553:                                 ; preds = %vector.body3529
  %rdx.minmax3554 = call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.alm, <16 x i32> %i.aln)
  %rdx.minmax3555 = call <16 x i32> @llvm.smin.v16i32(<16 x i32> %rdx.minmax3554, <16 x i32> %i.alo)
  %rdx.minmax3556 = call <16 x i32> @llvm.smin.v16i32(<16 x i32> %rdx.minmax3555, <16 x i32> %i.alp)
  %i.alr = call i32 @llvm.vector.reduce.smin.v16i32(<16 x i32> %rdx.minmax3556) ; 3 uses
  %cmp.n3557 = icmp eq i64 %i.alh, %n.vec3526
  br i1 %cmp.n3557, label %._crit_edge2718, label %vec.epilog.iter.check3562

vec.epilog.iter.check3562:                        ; preds = %middle.block3553
  %min.epilog.iters.check3563 = icmp eq i64 %i.all, 0
  br i1 %min.epilog.iters.check3563, label %.lr.ph2717.preheader, label %vec.epilog.ph3564, !prof !55

vec.epilog.ph3564:                                ; preds = %vector.main.loop.iter.check3523, %vec.epilog.iter.check3562
  %vec.epilog.resume.val3558 = phi i64 [ %n.vec3526, %vec.epilog.iter.check3562 ], [ 0, %vector.main.loop.iter.check3523 ] ; 2 uses
  %bc.merge.rdx3559 = phi i32 [ %i.alr, %vec.epilog.iter.check3562 ], [ %i.alk, %vector.main.loop.iter.check3523 ]
  %broadcast.splatinsert3552 = insertelement <8 x i32> poison, i32 %bc.merge.rdx3559, i64 0
  %broadcast.splat3553 = shufflevector <8 x i32> %broadcast.splatinsert3552, <8 x i32> poison, <8 x i32> zeroinitializer
  %n.vec3545 = and i64 %i.alh, -8                 ; 3 uses
  %broadcast.splatinsert3568 = insertelement <8 x i64> poison, i64 %vec.epilog.resume.val3558, i64 0
  %broadcast.splat3569 = shufflevector <8 x i64> %broadcast.splatinsert3568, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction3570 = or disjoint <8 x i64> %broadcast.splat3569, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vec.epilog.vector.body3571

vec.epilog.vector.body3571:                       ; preds = %vec.epilog.vector.body3571, %vec.epilog.ph3564
  %index3572 = phi i64 [ %vec.epilog.resume.val3558, %vec.epilog.ph3564 ], [ %index.next3578, %vec.epilog.vector.body3571 ]
  %vec.ind3573 = phi <8 x i64> [ %induction3570, %vec.epilog.ph3564 ], [ %vec.ind.next3579, %vec.epilog.vector.body3571 ] ; 2 uses
  %vec.phi3574 = phi <8 x i32> [ %broadcast.splat3553, %vec.epilog.ph3564 ], [ %i.als, %vec.epilog.vector.body3571 ]
  %wide.gep3575 = getelementptr inbounds nuw [72 x i8], ptr %i.ald, <8 x i64> %vec.ind3573
  %wide.gep3576 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep3575, i64 24
  %wide.masked.gather3577 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep3576, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !28
  %i.als = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.masked.gather3577, <8 x i32> %vec.phi3574) ; 2 uses
  %index.next3578 = add nuw i64 %index3572, 8     ; 2 uses
  %vec.ind.next3579 = add nuw <8 x i64> %vec.ind3573, splat (i64 8)
  %i.alt = icmp eq i64 %index.next3578, %n.vec3545
  br i1 %i.alt, label %vec.epilog.middle.block3580, label %vec.epilog.vector.body3571, !llvm.loop !386

vec.epilog.middle.block3580:                      ; preds = %vec.epilog.vector.body3571
  %i.alu = call i32 @llvm.vector.reduce.smin.v8i32(<8 x i32> %i.als) ; 2 uses
  %cmp.n3581 = icmp eq i64 %i.alh, %n.vec3545
  br i1 %cmp.n3581, label %._crit_edge2718, label %.lr.ph2717.preheader

.lr.ph2717.preheader:                             ; preds = %iter.check3560, %vec.epilog.iter.check3562, %vec.epilog.middle.block3580
  %.010602716.ph = phi i64 [ 0, %iter.check3560 ], [ %n.vec3526, %vec.epilog.iter.check3562 ], [ %n.vec3545, %vec.epilog.middle.block3580 ]
  %.025242714.ph = phi i32 [ %i.alk, %iter.check3560 ], [ %i.alr, %vec.epilog.iter.check3562 ], [ %i.alu, %vec.epilog.middle.block3580 ]
  br label %.lr.ph2717

._crit_edge2718:                                  ; preds = %.lr.ph2717, %middle.block3553, %vec.epilog.middle.block3580, %.critedge1337.thread, %.critedge1337
  %.02524.lcssa = phi i32 [ %i.alk, %.critedge1337 ], [ %i.aiy, %.critedge1337.thread ], [ %i.alu, %vec.epilog.middle.block3580 ], [ %i.alr, %middle.block3553 ], [ %.sroa.speculated, %.lr.ph2717 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.alv = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.alw = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.alx = load ptr, ptr %i.alw, align 8, !tbaa !17 ; 2 uses
  %i.aly = load <2 x ptr>, ptr %i.k, align 8, !tbaa !56
  store <2 x ptr> %i.aly, ptr %5, align 16, !tbaa !56
  %i.alz = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  %i.ama = load i64, ptr %i.n, align 8, !tbaa !25
  store i64 %i.ama, ptr %i.alz, align 16, !tbaa !25
  %i.amb = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.amc = load i32, ptr %i.p, align 8, !tbaa !27
  store i32 %i.amc, ptr %i.amb, align 8, !tbaa !27
  %i.amd = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.ame = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.amf = load ptr, ptr %i.ame, align 8, !tbaa !18
  store ptr %i.amf, ptr %i.amd, align 16, !tbaa !18
  %i.amg = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.amh = load <4 x i32>, ptr %i.l, align 8, !tbaa !28
  store <4 x i32> %i.amh, ptr %i.amg, align 8, !tbaa !28
  %i.ami = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.amj = load i32, ptr %i.aiq, align 8, !tbaa !50
  store i32 %i.amj, ptr %i.ami, align 8, !tbaa !50
  %i.amk = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 9 uses
  %i.aml = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.amm = load i64, ptr %i.aml, align 8, !tbaa !20
  store i64 %i.amm, ptr %i.amk, align 16, !tbaa !20
  %.not.i1795 = icmp eq ptr %i.alx, null
  br i1 %.not.i1795, label %_ZN4ncnn3Mat6addrefEv.exit1796, label %bb.cb

bb.cb:                                            ; preds = %._crit_edge2718
  %i.amn = atomicrmw add ptr %i.alx, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit1796

_ZN4ncnn3Mat6addrefEv.exit1796:                   ; preds = %._crit_edge2718, %bb.cb
  %i.amo = load i32, ptr %i.b, align 4, !tbaa !28
  %i.amp = icmp sgt i32 %i.amo, %.02524.lcssa
  br i1 %i.amp, label %bb.cc, label %bb.cf

.lr.ph2717:                                       ; preds = %.lr.ph2717.preheader, %.lr.ph2717
  %.010602716 = phi i64 [ %i.amt, %.lr.ph2717 ], [ %.010602716.ph, %.lr.ph2717.preheader ] ; 2 uses
  %.025242714 = phi i32 [ %.sroa.speculated, %.lr.ph2717 ], [ %.025242714.ph, %.lr.ph2717.preheader ]
  %i.amq = getelementptr inbounds nuw [72 x i8], ptr %i.ald, i64 %.010602716
  %i.amr = getelementptr inbounds nuw i8, ptr %i.amq, i64 24
  %i.ams = load i32, ptr %i.amr, align 4, !tbaa !28
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ams, i32 %.025242714) ; 2 uses
  %i.amt = add nuw i64 %.010602716, 1             ; 2 uses
  %exitcond2961.not = icmp eq i64 %i.amt, %i.alh
  br i1 %exitcond2961.not, label %._crit_edge2718, label %.lr.ph2717, !llvm.loop !387

bb.cc:                                            ; preds = %_ZN4ncnn3Mat6addrefEv.exit1796
  invoke void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef nonnull align 8 dereferenceable(72) %5, i32 noundef %.02524.lcssa, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.cd unwind label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.amu = load ptr, ptr %5, align 16, !tbaa !19
  %i.amv = icmp eq ptr %i.amu, null
  br i1 %i.amv, label %.critedge1331.critedge1360, label %_ZNK4ncnn3Mat5emptyEv.exit1703

_ZNK4ncnn3Mat5emptyEv.exit1703:                   ; preds = %bb.cd
  %i.amw = load i64, ptr %i.amk, align 16, !tbaa !20
  %i.amx = load i32, ptr %i.ami, align 8, !tbaa !50
  %i.amy = sext i32 %i.amx to i64
  %i.amz = mul i64 %i.amw, %i.amy
  %i.ana = icmp eq i64 %i.amz, 0
  br i1 %i.ana, label %.critedge1331.critedge1360, label %bb.cf

bb.ce:                                            ; preds = %bb.cc
  %i.anb = landingpad { ptr, i32 }
          cleanup
  %i.anc = load ptr, ptr %i.alv, align 8, !tbaa !17 ; 2 uses
  %.not.i1592 = icmp eq ptr %i.anc, null
  br i1 %.not.i1592, label %_ZN4ncnn3MatD2Ev.exit1365, label %bb.cw

bb.cf:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit1703, %_ZN4ncnn3Mat6addrefEv.exit1796
  %i.and = load ptr, ptr %i.aiu, align 8, !tbaa !44 ; 2 uses
  %i.ane = load ptr, ptr %2, align 8, !tbaa !23   ; 2 uses
  %.not2905 = icmp eq ptr %i.and, %i.ane
  br i1 %.not2905, label %._crit_edge2886, label %.lr.ph2885

.lr.ph2885:                                       ; preds = %bb.cf
  %i.anf = icmp eq i32 %.02524.lcssa, 8
  %i.ang = icmp eq i32 %.02524.lcssa, 4           ; 2 uses
  %i.anh = icmp eq i32 %.02524.lcssa, 1           ; 2 uses
  br label %bb.cg

bb.cg:                                            ; preds = %.lr.ph2885, %bb.cp
  %i.ani = phi ptr [ %i.ane, %.lr.ph2885 ], [ %i.bqi, %bb.cp ] ; 2 uses
  %i.anj = phi ptr [ %i.and, %.lr.ph2885 ], [ %i.bqj, %bb.cp ]
  %.010452883 = phi i64 [ 0, %.lr.ph2885 ], [ %i.bqk, %bb.cp ] ; 2 uses
  %.010462882 = phi i32 [ 0, %.lr.ph2885 ], [ %.131059, %bb.cp ] ; 3 uses
  %i.ank = getelementptr inbounds nuw [72 x i8], ptr %i.ani, i64 %.010452883 ; 47 uses
  %i.anl = getelementptr inbounds nuw i8, ptr %i.ank, i64 24 ; 6 uses
  %i.anm = load i32, ptr %i.anl, align 8          ; 2 uses
  %i.ann = icmp eq i32 %i.anm, 16
  %or.cond1340 = select i1 %i.anf, i1 %i.ann, i1 false
  br i1 %or.cond1340, label %bb.ch, label %.loopexit2572

bb.ch:                                            ; preds = %bb.cg
  %i.ano = getelementptr inbounds nuw i8, ptr %i.ank, i64 44
  %i.anp = load i32, ptr %i.ano, align 4, !tbaa !43
  %i.anq = getelementptr inbounds nuw i8, ptr %i.ank, i64 48
  %i.anr = load i32, ptr %i.anq, align 8, !tbaa !52
  %i.ans = mul i32 %i.anr, %i.anp
  %i.ant = getelementptr inbounds nuw i8, ptr %i.ank, i64 52
  %i.anu = load i32, ptr %i.ant, align 4, !tbaa !59
  %i.anv = mul i32 %i.ans, %i.anu                 ; 2 uses
  %i.anw = getelementptr inbounds nuw i8, ptr %i.ank, i64 56
  %i.anx = load i32, ptr %i.anw, align 8, !tbaa !50 ; 2 uses
  %i.any = icmp sgt i32 %i.anx, 0
  br i1 %i.any, label %.noexc1792.lr.ph, label %.thread2560

.noexc1792.lr.ph:                                 ; preds = %bb.ch
  %i.anz = load ptr, ptr %5, align 16, !tbaa !19, !noalias !479 ; 2 uses
  %i.aoa = load i64, ptr %i.amk, align 16, !tbaa !20, !noalias !479
  %i.aob = load i64, ptr %i.alz, align 16, !tbaa !25, !noalias !479
  %factor.op.mul2729 = mul i64 %i.aoa, %i.aob     ; 2 uses
  %i.aoc = load ptr, ptr %i.ank, align 8, !tbaa !19, !noalias !480
  %i.aod = getelementptr inbounds nuw i8, ptr %i.ank, i64 64
  %i.aoe = load i64, ptr %i.aod, align 8, !tbaa !20, !noalias !480
  %i.aof = getelementptr inbounds nuw i8, ptr %i.ank, i64 16
  %i.aog = load i64, ptr %i.aof, align 8, !tbaa !25, !noalias !480
  %factor.op.mul2733 = mul i64 %i.aoe, %i.aog
  %i.aoh = icmp sgt i32 %i.anv, 0
  %i.aoi = sext i32 %.010462882 to i64
  %wide.trip.count2970 = zext nneg i32 %i.anx to i64
  br label %.noexc1792

.noexc1792:                                       ; preds = %.noexc1792.lr.ph, %._crit_edge2725
  %indvars.iv2965 = phi i64 [ %i.aoi, %.noexc1792.lr.ph ], [ %indvars.iv.next2966, %._crit_edge2725 ] ; 3 uses
  %indvars.iv2963 = phi i64 [ 0, %.noexc1792.lr.ph ], [ %indvars.iv.next2964, %._crit_edge2725 ] ; 2 uses
  br i1 %i.aoh, label %.lr.ph2724.preheader, label %._crit_edge2725

.lr.ph2724.preheader:                             ; preds = %.noexc1792
  %.reass2734 = mul i64 %factor.op.mul2733, %indvars.iv2963
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aoc, i64 %.reass2734
  %i.aok = add nsw i64 %indvars.iv2965, 1
  %.reass2732 = mul i64 %factor.op.mul2729, %i.aok
  %i.aol = getelementptr inbounds nuw i8, ptr %i.anz, i64 %.reass2732
  %.reass2730 = mul i64 %factor.op.mul2729, %indvars.iv2965
  %i.aom = getelementptr inbounds nuw i8, ptr %i.anz, i64 %.reass2730
  br label %.lr.ph2724

._crit_edge2725:                                  ; preds = %.lr.ph2724, %.noexc1792
  %indvars.iv.next2966 = add nsw i64 %indvars.iv2965, 2 ; 2 uses
  %indvars.iv.next2964 = add nuw nsw i64 %indvars.iv2963, 1 ; 2 uses
  %exitcond2971.not = icmp eq i64 %indvars.iv.next2964, %wide.trip.count2970
  br i1 %exitcond2971.not, label %.loopexit2572.loopexit, label %.noexc1792, !llvm.loop !392

.lr.ph2724:                                       ; preds = %.lr.ph2724.preheader, %.lr.ph2724
  %.010402723 = phi i32 [ %i.aqj, %.lr.ph2724 ], [ 0, %.lr.ph2724.preheader ]
  %.010412722 = phi ptr [ %i.aqi, %.lr.ph2724 ], [ %i.aoj, %.lr.ph2724.preheader ] ; 17 uses
  %.010422721 = phi ptr [ %i.aqh, %.lr.ph2724 ], [ %i.aol, %.lr.ph2724.preheader ] ; 9 uses
  %.010432720 = phi ptr [ %i.aqg, %.lr.ph2724 ], [ %i.aom, %.lr.ph2724.preheader ] ; 9 uses
  %i.aon = load i16, ptr %.010432720, align 2, !tbaa !457
  store i16 %i.aon, ptr %.010412722, align 2, !tbaa !457
  %i.aoo = getelementptr inbounds nuw i8, ptr %.010432720, i64 2
  %i.aop = load i16, ptr %i.aoo, align 2, !tbaa !457
  %i.aoq = getelementptr inbounds nuw i8, ptr %.010412722, i64 2
  store i16 %i.aop, ptr %i.aoq, align 2, !tbaa !457
  %i.aor = getelementptr inbounds nuw i8, ptr %.010432720, i64 4
  %i.aos = load i16, ptr %i.aor, align 2, !tbaa !457
  %i.aot = getelementptr inbounds nuw i8, ptr %.010412722, i64 4
  store i16 %i.aos, ptr %i.aot, align 2, !tbaa !457
  %i.aou = getelementptr inbounds nuw i8, ptr %.010432720, i64 6
  %i.aov = load i16, ptr %i.aou, align 2, !tbaa !457
  %i.aow = getelementptr inbounds nuw i8, ptr %.010412722, i64 6
  store i16 %i.aov, ptr %i.aow, align 2, !tbaa !457
  %i.aox = getelementptr inbounds nuw i8, ptr %.010432720, i64 8
  %i.aoy = load i16, ptr %i.aox, align 2, !tbaa !457
  %i.aoz = getelementptr inbounds nuw i8, ptr %.010412722, i64 8
  store i16 %i.aoy, ptr %i.aoz, align 2, !tbaa !457
  %i.apa = getelementptr inbounds nuw i8, ptr %.010432720, i64 10
  %i.apb = load i16, ptr %i.apa, align 2, !tbaa !457
  %i.apc = getelementptr inbounds nuw i8, ptr %.010412722, i64 10
  store i16 %i.apb, ptr %i.apc, align 2, !tbaa !457
  %i.apd = getelementptr inbounds nuw i8, ptr %.010432720, i64 12
  %i.ape = load i16, ptr %i.apd, align 2, !tbaa !457
  %i.apf = getelementptr inbounds nuw i8, ptr %.010412722, i64 12
  store i16 %i.ape, ptr %i.apf, align 2, !tbaa !457
  %i.apg = getelementptr inbounds nuw i8, ptr %.010432720, i64 14
  %i.aph = load i16, ptr %i.apg, align 2, !tbaa !457
  %i.api = getelementptr inbounds nuw i8, ptr %.010412722, i64 14
  store i16 %i.aph, ptr %i.api, align 2, !tbaa !457
  %i.apj = load i16, ptr %.010422721, align 2, !tbaa !457
  %i.apk = getelementptr inbounds nuw i8, ptr %.010412722, i64 16
  store i16 %i.apj, ptr %i.apk, align 2, !tbaa !457
  %i.apl = getelementptr inbounds nuw i8, ptr %.010422721, i64 2
  %i.apm = load i16, ptr %i.apl, align 2, !tbaa !457
  %i.apn = getelementptr inbounds nuw i8, ptr %.010412722, i64 18
  store i16 %i.apm, ptr %i.apn, align 2, !tbaa !457
  %i.apo = getelementptr inbounds nuw i8, ptr %.010422721, i64 4
  %i.app = load i16, ptr %i.apo, align 2, !tbaa !457
  %i.apq = getelementptr inbounds nuw i8, ptr %.010412722, i64 20
  store i16 %i.app, ptr %i.apq, align 2, !tbaa !457
  %i.apr = getelementptr inbounds nuw i8, ptr %.010422721, i64 6
end_hunk_3

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/slice_x86_avx512?download=true
inline.NumInlined: 110
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK4ncnn16Slice_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
bb.i:                                             ; preds = %bb.h
  %i.bi = sub nsw i32 %i.ah, %.010882594
  %i.bj = sext i32 %i.bi to i64
  %i.bk = sub i64 %i.au, %.010942593
  %i.bl = udiv i64 %i.bj, %i.bk
  %i.bm = trunc i64 %i.bl to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.f, %bb.g
  %.01095 = phi i32 [ %i.ay, %bb.f ], [ %i.be, %bb.g ], [ %i.bm, %bb.i ], [ %i.bg, %bb.h ] ; 5 uses
  %i.bn = load i8, ptr %i.aq, align 1, !tbaa !45, !range !47, !noundef !48
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.bp = and i32 %.01095, 15
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.br = and i32 %.01095, 7
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bt = and i32 %.01095, 3
  %i.bu = icmp eq i32 %i.bt, 0
  %i.bv = select i1 %i.bu, i32 4, i32 1
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.l, %bb.m, %bb.j
  %.01100 = phi i32 [ 1, %bb.j ], [ 16, %bb.k ], [ %i.bv, %bb.m ], [ 8, %bb.l ] ; 3 uses
  %i.bw = zext nneg i32 %.01100 to i64
  %i.bx = mul i64 %i.as, %i.bw
  %i.by = getelementptr inbounds nuw [72 x i8], ptr %i.av, i64 %.010942593 ; 6 uses
  %i.bz = sdiv i32 %.01095, %.01100
  %i.ca = load ptr, ptr %i.at, align 8, !tbaa !49
  tail call void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.by, i32 noundef %i.bz, i64 noundef %i.bx, i32 noundef %.01100, ptr noundef %i.ca)
  %i.cb = load ptr, ptr %i.by, align 8, !tbaa !18 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %.critedge1335, label %_ZNK4ncnn3Mat5emptyEv.exit1713

_ZNK4ncnn3Mat5emptyEv.exit1713:                   ; preds = %bb.n
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 64
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !20
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 56
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !50
  %i.ch = sext i32 %i.cg to i64
  %i.ci = mul i64 %i.ce, %i.ch
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %.critedge1335, label %bb.o

bb.o:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit1713
  %i.ck = load ptr, ptr %i.k, align 8, !tbaa !18
  %i.cl = sext i32 %.010882594 to i64
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.by, i64 44
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !43
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !25
  %i.cs = mul i64 %i.cr, %i.cp
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cb, ptr align 4 %i.cm, i64 %i.cs, i1 false)
  %i.ct = add nsw i32 %.01095, %.010882594
  %i.cu = add nuw i64 %.010942593, 1              ; 2 uses
  %i.cv = load ptr, ptr %i.ai, align 8, !tbaa !44
  %i.cw = load ptr, ptr %2, align 8, !tbaa !21    ; 2 uses
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = sdiv exact i64 %i.cz, 72                ; 2 uses
  %.not1271 = icmp ult i64 %i.cu, %i.da
  br i1 %.not1271, label %bb.d, label %.critedge1328, !llvm.loop !51

.critedge1328:                                    ; preds = %bb.o, %_ZNK4ncnn3Mat8elembitsEv.exit.thread
  %i.db = icmp eq i32 %i.m, 2                     ; 3 uses
  %i.dc = icmp eq i32 %i.z, 0                     ; 3 uses
  %or.cond = select i1 %i.db, i1 %i.dc, i1 false
  br i1 %or.cond, label %bb.p, label %bb.bc

bb.p:                                             ; preds = %.critedge1328
  %i.dd = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !43 ; 41 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !53
  %i.dh = mul nsw i32 %i.q, %i.dg                 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !44 ; 2 uses
  %i.dk = load ptr, ptr %2, align 8, !tbaa !21    ; 4 uses
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
  %i.el = sub i64 %i.dv, %.012442597
  %i.em = udiv i64 %i.ek, %i.el
  %i.en = trunc i64 %i.em to i32
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.s, %bb.t
  %.01243 = phi i32 [ %i.dz, %bb.s ], [ %i.ef, %bb.t ], [ %i.en, %bb.v ], [ %i.eh, %bb.u ] ; 5 uses
  %i.eo = load i8, ptr %i.dr, align 1, !tbaa !45, !range !47, !noundef !48
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
  %i.fc = load ptr, ptr %i.ez, align 8, !tbaa !18
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
  %i.fo = load ptr, ptr %2, align 8, !tbaa !21    ; 10 uses
  %i.fp = ptrtoint ptr %i.fn to i64
  %i.fq = ptrtoint ptr %i.fo to i64
  %i.fr = sub i64 %i.fp, %i.fq
  %i.fs = sdiv i64 %i.fr, 72                      ; 7 uses
  %.not1273 = icmp ult i64 %i.fm, %i.fs
  br i1 %.not1273, label %bb.q, label %.critedge1330, !llvm.loop !54

.critedge1330:                                    ; preds = %bb.ab
  %i.ft = icmp eq ptr %i.fn, %i.fo
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !27 ; 4 uses
  br i1 %i.ft, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %.critedge1330
  %umax = tail call i64 @llvm.umax.i64(i64 %i.fs, i64 1) ; 4 uses
  %min.iters.check = icmp ult i64 %i.fs, 8
  br i1 %min.iters.check, label %.lr.ph2602.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check3211 = icmp ult i64 %i.fs, 64
  br i1 %min.iters.check3211, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fw = and i64 %umax, 56
  %n.vec = and i64 %umax, -64                     ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.fv, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
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
  br i1 %i.gb, label %middle.block, label %vector.body, !llvm.loop !55

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.fx, <16 x i32> %i.fy)
  %rdx.minmax3225 = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %rdx.minmax, <16 x i32> %i.fz)
  %rdx.minmax3226 = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %rdx.minmax3225, <16 x i32> %i.ga)
  %i.gc = tail call i32 @llvm.vector.reduce.smin.v16i32(<16 x i32> %rdx.minmax3226) ; 3 uses
  %cmp.n = icmp eq i64 %i.fs, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.fw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph2602.preheader, label %vec.epilog.ph, !prof !58

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %bc.merge.rdx = phi i32 [ %i.gc, %vec.epilog.iter.check ], [ %i.fv, %vector.main.loop.iter.check ]
  %n.vec3227 = and i64 %umax, -8                  ; 3 uses
  %broadcast.splatinsert3228 = insertelement <8 x i32> poison, i32 %bc.merge.rdx, i64 0
  %broadcast.splat3229 = shufflevector <8 x i32> %broadcast.splatinsert3228, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert3230 = insertelement <8 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat3231 = shufflevector <8 x i64> %broadcast.splatinsert3230, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = or disjoint <8 x i64> %broadcast.splat3231, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index3232 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next3238, %vec.epilog.vector.body ]
  %vec.ind3233 = phi <8 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next3239, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi3234 = phi <8 x i32> [ %broadcast.splat3229, %vec.epilog.ph ], [ %i.gd, %vec.epilog.vector.body ]
  %wide.gep3235 = getelementptr inbounds nuw [72 x i8], ptr %i.fo, <8 x i64> %vec.ind3233
  %wide.gep3236 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep3235, i64 24
  %wide.masked.gather3237 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep3236, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !28
  %i.gd = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.masked.gather3237, <8 x i32> %vec.phi3234) ; 2 uses
  %index.next3238 = add nuw i64 %index3232, 8     ; 2 uses
  %vec.ind.next3239 = add nuw <8 x i64> %vec.ind3233, splat (i64 8)
  %i.ge = icmp eq i64 %index.next3238, %n.vec3227
  br i1 %i.ge, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !59

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
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !11 ; 2 uses
  %i.gj = load <2 x ptr>, ptr %i.k, align 8, !tbaa !60
  store <2 x ptr> %i.gj, ptr %4, align 16, !tbaa !60
  %i.gk = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.gl = load i64, ptr %i.n, align 8, !tbaa !25
  store i64 %i.gl, ptr %i.gk, align 16, !tbaa !25
  %i.gm = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.gn = load i32, ptr %i.p, align 8, !tbaa !27
  store i32 %i.gn, ptr %i.gm, align 8, !tbaa !27
  %i.go = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !17
  store ptr %i.gq, ptr %i.go, align 16, !tbaa !17
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
  %exitcond.not = icmp eq i64 %i.hf, %umax
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph2602, !llvm.loop !61

bb.ad:                                            ; preds = %_ZN4ncnn3Mat6addrefEv.exit
  invoke void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef nonnull align 8 dereferenceable(72) %4, i32 noundef %.02527.lcssa, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.hg = load ptr, ptr %4, align 16, !tbaa !18
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
  %i.ho = load ptr, ptr %i.gg, align 8, !tbaa !11 ; 2 uses
  %.not.i1416 = icmp eq ptr %i.ho, null
  br i1 %.not.i1416, label %_ZN4ncnn3MatD2Ev.exit1414, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hp = atomicrmw add ptr %i.ho, i32 -1 acq_rel, align 4
  %i.hq = icmp eq i32 %i.hp, 1
  br i1 %i.hq, label %bb.ah, label %_ZN4ncnn3MatD2Ev.exit1414

bb.ah:                                            ; preds = %bb.ag
  %i.hr = load ptr, ptr %i.go, align 16, !tbaa !17 ; 3 uses
  %.not3.i1417 = icmp eq ptr %i.hr, null
  %i.hs = load ptr, ptr %4, align 16, !tbaa !18   ; 3 uses
  br i1 %.not3.i1417, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ht = load ptr, ptr %i.hr, align 8, !tbaa !9
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 24
  %i.hv = load ptr, ptr %i.hu, align 8
  invoke void %i.hv(ptr noundef nonnull align 8 dereferenceable(8) %i.hr, ptr noundef %i.hs)
          to label %_ZN4ncnn3MatD2Ev.exit1414 unwind label %bb.al, !inline_history !19

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
  %i.hz = load ptr, ptr %2, align 8, !tbaa !21    ; 2 uses
  %.not2908 = icmp eq ptr %i.hy, %i.hz
  br i1 %.not2908, label %._crit_edge2708, label %.lr.ph2707

.lr.ph2707:                                       ; preds = %bb.am
  %i.ia = load ptr, ptr %4, align 16, !tbaa !18
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
  %i.ki = shl nsw i64 %i.ij, 2                    ; 2 uses
  %i.kj = shl nuw nsw i64 %i.kg, 4                ; 2 uses
  %i.kk = shl nsw i64 %i.id, 2
  %i.kl = add i32 %i.de, -1
  %i.km = zext i32 %i.kl to i64                   ; 2 uses
  %i.kn = shl nuw nsw i64 %i.km, 6
  %i.ko = shl nsw i64 %i.jj, 2                    ; 2 uses
  %i.kp = shl nuw nsw i64 %i.km, 2                ; 16 uses
  %i.kq = shl nsw i64 %i.ig, 2
  %i.kr = shl nsw i64 %i.jh, 2                    ; 2 uses
  %i.ks = shl nsw i64 %i.jf, 2                    ; 2 uses
  %i.kt = shl nsw i64 %i.il, 2                    ; 2 uses
  %i.ku = shl nsw i64 %i.jd, 2                    ; 2 uses
  %i.kv = shl nsw i64 %i.jb, 2                    ; 2 uses
  %i.kw = shl nsw i64 %i.iz, 2                    ; 2 uses
  %i.kx = shl nsw i64 %i.id, 2                    ; 2 uses
  %i.ky = shl nsw i64 %i.ix, 2                    ; 2 uses
  %i.kz = shl nsw i64 %i.iv, 2                    ; 2 uses
  %i.la = shl nsw i64 %i.it, 2                    ; 2 uses
  %i.lb = shl nsw i64 %i.ij, 2                    ; 2 uses
  %i.lc = shl nsw i64 %i.ir, 2                    ; 2 uses
  %i.ld = shl nsw i64 %i.ip, 2                    ; 2 uses
  %i.le = shl nsw i64 %i.in, 2                    ; 2 uses
  %i.lf = add i32 %i.de, -1
  %i.lg = zext i32 %i.lf to i64                   ; 2 uses
  %i.lh = shl nuw nsw i64 %i.lg, 6
  %i.li = shl nsw i64 %i.il, 2                    ; 2 uses
  %i.lj = shl nuw nsw i64 %i.lg, 4                ; 4 uses
  %i.lk = shl nsw i64 %i.ig, 2
  %i.ll = shl nsw i64 %i.id, 2                    ; 2 uses
  %i.lm = shl nsw i64 %i.ij, 2                    ; 2 uses
  %min.iters.check3857 = icmp ult i32 %i.de, 8
  %stride.check3842 = icmp slt i32 %i.if, 0
  %n.vec3859 = and i64 %i.js, 2147483640          ; 5 uses
  %i.ln = trunc nuw nsw i64 %n.vec3859 to i32
  %i.lo = shl nuw nsw i64 %n.vec3859, 6
  %i.lp = shl nuw nsw i64 %n.vec3859, 4           ; 4 uses
  %cmp.n3906 = icmp eq i64 %n.vec3859, %i.js
  %min.iters.check3664 = icmp ult i32 %i.de, 8
  %stride.check3577 = icmp slt i32 %i.if, 0
  %min.iters.check3666 = icmp ult i32 %i.de, 16
  %i.lq = and i64 %i.js, 8
  %n.vec3668 = and i64 %i.js, 2147483632          ; 6 uses
  %i.lr = trunc nuw nsw i64 %n.vec3668 to i32
  %i.ls = shl nuw nsw i64 %n.vec3668, 6
  %i.lt = shl nuw nsw i64 %n.vec3668, 2           ; 16 uses
  %cmp.n3720 = icmp eq i64 %n.vec3668, %i.js
  %min.epilog.iters.check3743.not.not = icmp eq i64 %i.lq, 0
  %n.vec3745 = and i64 %i.js, 2147483640          ; 5 uses
  %i.lu = trunc nuw nsw i64 %n.vec3745 to i32
  %i.lv = shl nuw nsw i64 %n.vec3745, 6
  %i.lw = shl nuw nsw i64 %n.vec3745, 2           ; 16 uses
  %cmp.n3800 = icmp eq i64 %n.vec3745, %i.js
  %min.iters.check3494 = icmp ult i32 %i.de, 8
  %stride.check3492 = icmp slt i32 %i.ic, 0
  %n.vec3496 = and i64 %i.js, 2147483640          ; 5 uses
  %i.lx = trunc nuw nsw i64 %n.vec3496 to i32
  %i.ly = shl nuw nsw i64 %n.vec3496, 5
  %i.lz = shl nuw nsw i64 %n.vec3496, 4           ; 2 uses
  %cmp.n3513 = icmp eq i64 %n.vec3496, %i.js
  %min.iters.check3397 = icmp ult i32 %i.de, 8
  %stride.check3359 = icmp slt i32 %i.ic, 0
  %min.iters.check3399 = icmp ult i32 %i.de, 16
  %i.ma = and i64 %i.js, 8
  %n.vec3401 = and i64 %i.js, 2147483632          ; 6 uses
  %i.mb = trunc nuw nsw i64 %n.vec3401 to i32
  %i.mc = shl nuw nsw i64 %n.vec3401, 5
  %i.md = shl nuw nsw i64 %n.vec3401, 2           ; 8 uses
  %cmp.n3424 = icmp eq i64 %n.vec3401, %i.js
  %min.epilog.iters.check3439.not.not = icmp eq i64 %i.ma, 0
end_hunk_0
begin_hunk_1_@_ZNK4ncnn16Slice_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
  %i.anz = load i32, ptr %i.any, align 4, !tbaa !28 ; 2 uses
  %i.aoa = icmp slt i32 %i.anz, 0
  %i.aob = select i1 %i.aoa, i32 %i.ani, i32 0
  %i.aoc = sub i32 %i.anz, %.010982710
  %i.aod = add i32 %i.aoc, %i.aob
  br label %bb.bk

bb.bi:                                            ; preds = %bb.be
  %i.aoe = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.010972711
  %i.aof = load i32, ptr %i.aoe, align 4, !tbaa !28 ; 2 uses
  %i.aog = icmp eq i32 %i.aof, -233
  br i1 %i.aog, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.aoh = sub nsw i32 %i.ani, %.010982710
  %i.aoi = sext i32 %i.aoh to i64
  %i.aoj = sub i64 %i.ant, %.010972711
  %i.aok = udiv i64 %i.aoi, %i.aoj
  %i.aol = trunc i64 %i.aok to i32
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bi, %bb.bj, %bb.bg, %bb.bh
  %.01096 = phi i32 [ %i.anx, %bb.bg ], [ %i.aod, %bb.bh ], [ %i.aol, %bb.bj ], [ %i.aof, %bb.bi ] ; 2 uses
  %i.aom = getelementptr inbounds nuw [72 x i8], ptr %i.anu, i64 %.010972711 ; 4 uses
  %i.aon = load i32, ptr %i.c, align 4, !tbaa !28
  %i.aoo = load i64, ptr %i.a, align 8, !tbaa !26
  %i.aop = load i32, ptr %i.b, align 4, !tbaa !28
  %i.aoq = load ptr, ptr %i.ans, align 8, !tbaa !49
  call void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.aom, i32 noundef %.01096, i32 noundef %i.aon, i64 noundef %i.aoo, i32 noundef %i.aop, ptr noundef %i.aoq)
  %i.aor = load ptr, ptr %i.aom, align 8, !tbaa !18
  %i.aos = icmp eq ptr %i.aor, null
  br i1 %i.aos, label %.critedge1339, label %_ZNK4ncnn3Mat5emptyEv.exit1710

_ZNK4ncnn3Mat5emptyEv.exit1710:                   ; preds = %bb.bk
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aom, i64 64
  %i.aou = load i64, ptr %i.aot, align 8, !tbaa !20
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aom, i64 56
  %i.aow = load i32, ptr %i.aov, align 8, !tbaa !50
  %i.aox = sext i32 %i.aow to i64
  %i.aoy = mul i64 %i.aou, %i.aox
  %i.aoz = icmp eq i64 %i.aoy, 0
  br i1 %i.aoz, label %.critedge1339, label %bb.bl

bb.bl:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit1710
  %i.apa = add nsw i32 %.01096, %.010982710
  %i.apb = add nuw i64 %.010972711, 1             ; 2 uses
  %i.apc = load ptr, ptr %i.anl, align 8, !tbaa !44
  %i.apd = load ptr, ptr %2, align 8, !tbaa !21   ; 2 uses
  %i.ape = ptrtoint ptr %i.apc to i64
  %i.apf = ptrtoint ptr %i.apd to i64
  %i.apg = sub i64 %i.ape, %i.apf
  %i.aph = sdiv exact i64 %i.apg, 72              ; 2 uses
  %.not1275.not = icmp ult i64 %i.apb, %i.aph
  br i1 %.not1275.not, label %bb.be, label %.critedge1362, !llvm.loop !175

.critedge1362:                                    ; preds = %bb.bl, %bb.bd
  %i.api = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.apj = load i32, ptr %i.api, align 4, !tbaa !176
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.j, i32 %i.apj)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZNK4ncnn16Slice_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined, ptr nonnull %i.c, ptr nonnull %i.k, ptr nonnull %2, ptr nonnull %i.a, ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %bb.bm

bb.bm:                                            ; preds = %.critedge1362, %bb.bc
  %i.apk = icmp eq i32 %i.m, 3                    ; 2 uses
  %i.apl = icmp eq i32 %i.m, 4                    ; 3 uses
  %i.apm = add i32 %i.m, -3
  %or.cond25 = icmp ult i32 %i.apm, 2
  %or.cond27 = select i1 %or.cond25, i1 %i.ane, i1 false
  br i1 %or.cond27, label %bb.bn, label %bb.db

bb.bn:                                            ; preds = %bb.bm
  %i.apn = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  %i.apo = load i32, ptr %i.apn, align 4, !tbaa !43
  %i.app = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.apq = load i32, ptr %i.app, align 8, !tbaa !53
  %i.apr = getelementptr inbounds nuw i8, ptr %i.k, i64 52
  %i.aps = load i32, ptr %i.apr, align 4, !tbaa !177
  %i.apt = getelementptr inbounds nuw i8, ptr %i.k, i64 56 ; 2 uses
  %i.apu = load i32, ptr %i.apt, align 8, !tbaa !50
  %i.apv = load i32, ptr %i.b, align 4, !tbaa !28
  %i.apw = mul nsw i32 %i.apv, %i.apu             ; 3 uses
  %i.apx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.apy = load ptr, ptr %i.apx, align 8, !tbaa !44 ; 2 uses
  %i.apz = load ptr, ptr %2, align 8, !tbaa !21   ; 4 uses
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
  %i.aqy = sub i64 %i.aqi, %.010912716
  %i.aqz = udiv i64 %i.aqx, %i.aqy
  %i.ara = trunc i64 %i.aqz to i32
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bs, %bb.bt, %bb.bq, %bb.br
  %.01090 = phi i32 [ %i.aqm, %bb.bq ], [ %i.aqs, %bb.br ], [ %i.ara, %bb.bt ], [ %i.aqu, %bb.bs ] ; 5 uses
  %i.arb = load i8, ptr %i.aqg, align 1, !tbaa !45, !range !47, !noundef !48
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
  %i.art = load ptr, ptr %i.arq, align 8, !tbaa !18
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
  %i.asg = load ptr, ptr %2, align 8, !tbaa !21   ; 10 uses
  %i.ash = ptrtoint ptr %i.asf to i64
  %i.asi = ptrtoint ptr %i.asg to i64
  %i.asj = sub i64 %i.ash, %i.asi
  %i.ask = sdiv i64 %i.asj, 72                    ; 7 uses
  %.not1277 = icmp ult i64 %i.ase, %i.ask
  br i1 %.not1277, label %bb.bo, label %.critedge1341, !llvm.loop !178

.critedge1341:                                    ; preds = %bb.bz
  %i.asl = icmp eq ptr %i.asf, %i.asg
  %i.asm = getelementptr inbounds nuw i8, ptr %i.asg, i64 24
  %i.asn = load i32, ptr %i.asm, align 8, !tbaa !27 ; 4 uses
  br i1 %i.asl, label %._crit_edge2723, label %iter.check3952

iter.check3952:                                   ; preds = %.critedge1341
  %umax2965 = call i64 @llvm.umax.i64(i64 %i.ask, i64 1) ; 4 uses
  %min.iters.check3914 = icmp ult i64 %i.ask, 8
  br i1 %min.iters.check3914, label %.lr.ph2722.preheader, label %vector.main.loop.iter.check3915

vector.main.loop.iter.check3915:                  ; preds = %iter.check3952
  %min.iters.check3916 = icmp ult i64 %i.ask, 64
  br i1 %min.iters.check3916, label %vec.epilog.ph3956, label %vector.ph3917

vector.ph3917:                                    ; preds = %vector.main.loop.iter.check3915
  %i.aso = and i64 %umax2965, 56
  %n.vec3918 = and i64 %umax2965, -64             ; 4 uses
  %broadcast.splatinsert3919 = insertelement <16 x i32> poison, i32 %i.asn, i64 0
  %broadcast.splat3920 = shufflevector <16 x i32> %broadcast.splatinsert3919, <16 x i32> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body3921

vector.body3921:                                  ; preds = %vector.body3921, %vector.ph3917
  %index3922 = phi i64 [ 0, %vector.ph3917 ], [ %index.next3943, %vector.body3921 ]
  %vec.ind3923 = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.ph3917 ], [ %vec.ind.next3944, %vector.body3921 ] ; 5 uses
  %vec.phi3924 = phi <16 x i32> [ %broadcast.splat3920, %vector.ph3917 ], [ %i.asp, %vector.body3921 ]
  %vec.phi3925 = phi <16 x i32> [ %broadcast.splat3920, %vector.ph3917 ], [ %i.asq, %vector.body3921 ]
  %vec.phi3926 = phi <16 x i32> [ %broadcast.splat3920, %vector.ph3917 ], [ %i.asr, %vector.body3921 ]
  %vec.phi3927 = phi <16 x i32> [ %broadcast.splat3920, %vector.ph3917 ], [ %i.ass, %vector.body3921 ]
  %step.add3928 = add nuw <16 x i64> %vec.ind3923, splat (i64 16)
  %step.add.23929 = add nuw <16 x i64> %vec.ind3923, splat (i64 32)
  %step.add.33930 = add nuw <16 x i64> %vec.ind3923, splat (i64 48)
  %wide.gep3931 = getelementptr inbounds nuw [72 x i8], ptr %i.asg, <16 x i64> %vec.ind3923
  %wide.gep3932 = getelementptr inbounds nuw [72 x i8], ptr %i.asg, <16 x i64> %step.add3928
  %wide.gep3933 = getelementptr inbounds nuw [72 x i8], ptr %i.asg, <16 x i64> %step.add.23929
  %wide.gep3934 = getelementptr inbounds nuw [72 x i8], ptr %i.asg, <16 x i64> %step.add.33930
  %wide.gep3935 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep3931, i64 24
  %wide.gep3936 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep3932, i64 24
  %wide.gep3937 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep3933, i64 24
  %wide.gep3938 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep3934, i64 24
  %wide.masked.gather3939 = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %wide.gep3935, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !28
  %wide.masked.gather3940 = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %wide.gep3936, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !28
  %wide.masked.gather3941 = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %wide.gep3937, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !28
  %wide.masked.gather3942 = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %wide.gep3938, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !28
  %i.asp = call <16 x i32> @llvm.smin.v16i32(<16 x i32> %wide.masked.gather3939, <16 x i32> %vec.phi3924) ; 2 uses
  %i.asq = call <16 x i32> @llvm.smin.v16i32(<16 x i32> %wide.masked.gather3940, <16 x i32> %vec.phi3925) ; 2 uses
  %i.asr = call <16 x i32> @llvm.smin.v16i32(<16 x i32> %wide.masked.gather3941, <16 x i32> %vec.phi3926) ; 2 uses
  %i.ass = call <16 x i32> @llvm.smin.v16i32(<16 x i32> %wide.masked.gather3942, <16 x i32> %vec.phi3927) ; 2 uses
  %index.next3943 = add nuw i64 %index3922, 64    ; 2 uses
  %vec.ind.next3944 = add nuw <16 x i64> %vec.ind3923, splat (i64 64)
  %i.ast = icmp eq i64 %index.next3943, %n.vec3918
  br i1 %i.ast, label %middle.block3945, label %vector.body3921, !llvm.loop !179

middle.block3945:                                 ; preds = %vector.body3921
  %rdx.minmax3946 = call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.asp, <16 x i32> %i.asq)
  %rdx.minmax3947 = call <16 x i32> @llvm.smin.v16i32(<16 x i32> %rdx.minmax3946, <16 x i32> %i.asr)
  %rdx.minmax3948 = call <16 x i32> @llvm.smin.v16i32(<16 x i32> %rdx.minmax3947, <16 x i32> %i.ass)
  %i.asu = call i32 @llvm.vector.reduce.smin.v16i32(<16 x i32> %rdx.minmax3948) ; 3 uses
  %cmp.n3949 = icmp eq i64 %i.ask, %n.vec3918
  br i1 %cmp.n3949, label %._crit_edge2723, label %vec.epilog.iter.check3954

vec.epilog.iter.check3954:                        ; preds = %middle.block3945
  %min.epilog.iters.check3955 = icmp eq i64 %i.aso, 0
  br i1 %min.epilog.iters.check3955, label %.lr.ph2722.preheader, label %vec.epilog.ph3956, !prof !58

vec.epilog.ph3956:                                ; preds = %vector.main.loop.iter.check3915, %vec.epilog.iter.check3954
  %vec.epilog.resume.val3950 = phi i64 [ %n.vec3918, %vec.epilog.iter.check3954 ], [ 0, %vector.main.loop.iter.check3915 ] ; 2 uses
  %bc.merge.rdx3951 = phi i32 [ %i.asu, %vec.epilog.iter.check3954 ], [ %i.asn, %vector.main.loop.iter.check3915 ]
  %n.vec3957 = and i64 %umax2965, -8              ; 3 uses
  %broadcast.splatinsert3958 = insertelement <8 x i32> poison, i32 %bc.merge.rdx3951, i64 0
  %broadcast.splat3959 = shufflevector <8 x i32> %broadcast.splatinsert3958, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert3960 = insertelement <8 x i64> poison, i64 %vec.epilog.resume.val3950, i64 0
  %broadcast.splat3961 = shufflevector <8 x i64> %broadcast.splatinsert3960, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction3962 = or disjoint <8 x i64> %broadcast.splat3961, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vec.epilog.vector.body3963

vec.epilog.vector.body3963:                       ; preds = %vec.epilog.vector.body3963, %vec.epilog.ph3956
  %index3964 = phi i64 [ %vec.epilog.resume.val3950, %vec.epilog.ph3956 ], [ %index.next3970, %vec.epilog.vector.body3963 ]
  %vec.ind3965 = phi <8 x i64> [ %induction3962, %vec.epilog.ph3956 ], [ %vec.ind.next3971, %vec.epilog.vector.body3963 ] ; 2 uses
  %vec.phi3966 = phi <8 x i32> [ %broadcast.splat3959, %vec.epilog.ph3956 ], [ %i.asv, %vec.epilog.vector.body3963 ]
  %wide.gep3967 = getelementptr inbounds nuw [72 x i8], ptr %i.asg, <8 x i64> %vec.ind3965
  %wide.gep3968 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep3967, i64 24
  %wide.masked.gather3969 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep3968, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !28
  %i.asv = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.masked.gather3969, <8 x i32> %vec.phi3966) ; 2 uses
  %index.next3970 = add nuw i64 %index3964, 8     ; 2 uses
  %vec.ind.next3971 = add nuw <8 x i64> %vec.ind3965, splat (i64 8)
  %i.asw = icmp eq i64 %index.next3970, %n.vec3957
  br i1 %i.asw, label %vec.epilog.middle.block3972, label %vec.epilog.vector.body3963, !llvm.loop !180

vec.epilog.middle.block3972:                      ; preds = %vec.epilog.vector.body3963
  %i.asx = call i32 @llvm.vector.reduce.smin.v8i32(<8 x i32> %i.asv) ; 2 uses
  %cmp.n3973 = icmp eq i64 %i.ask, %n.vec3957
  br i1 %cmp.n3973, label %._crit_edge2723, label %.lr.ph2722.preheader

.lr.ph2722.preheader:                             ; preds = %iter.check3952, %vec.epilog.iter.check3954, %vec.epilog.middle.block3972
  %.010862721.ph = phi i64 [ 0, %iter.check3952 ], [ %n.vec3918, %vec.epilog.iter.check3954 ], [ %n.vec3957, %vec.epilog.middle.block3972 ]
  %.025292719.ph = phi i32 [ %i.asn, %iter.check3952 ], [ %i.asu, %vec.epilog.iter.check3954 ], [ %i.asx, %vec.epilog.middle.block3972 ]
  br label %.lr.ph2722

._crit_edge2723:                                  ; preds = %.lr.ph2722, %middle.block3945, %vec.epilog.middle.block3972, %.critedge1341.thread, %.critedge1341
  %.02529.lcssa = phi i32 [ %i.asn, %.critedge1341 ], [ %i.aqb, %.critedge1341.thread ], [ %i.asx, %vec.epilog.middle.block3972 ], [ %i.asu, %middle.block3945 ], [ %.sroa.speculated, %.lr.ph2722 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.asy = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.asz = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ata = load ptr, ptr %i.asz, align 8, !tbaa !11 ; 2 uses
  %i.atb = load <2 x ptr>, ptr %i.k, align 8, !tbaa !60
  store <2 x ptr> %i.atb, ptr %5, align 16, !tbaa !60
  %i.atc = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  %i.atd = load i64, ptr %i.n, align 8, !tbaa !25
  store i64 %i.atd, ptr %i.atc, align 16, !tbaa !25
  %i.ate = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.atf = load i32, ptr %i.p, align 8, !tbaa !27
  store i32 %i.atf, ptr %i.ate, align 8, !tbaa !27
  %i.atg = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.ath = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.ati = load ptr, ptr %i.ath, align 8, !tbaa !17
  store ptr %i.ati, ptr %i.atg, align 16, !tbaa !17
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
  %exitcond2966.not = icmp eq i64 %i.atw, %umax2965
  br i1 %exitcond2966.not, label %._crit_edge2723, label %.lr.ph2722, !llvm.loop !181

bb.cb:                                            ; preds = %_ZN4ncnn3Mat6addrefEv.exit1801
  invoke void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef nonnull align 8 dereferenceable(72) %5, i32 noundef %.02529.lcssa, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.cc unwind label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.atx = load ptr, ptr %5, align 16, !tbaa !18
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
  %i.auf = load ptr, ptr %i.asy, align 8, !tbaa !11 ; 2 uses
  %.not.i1596 = icmp eq ptr %i.auf, null
  br i1 %.not.i1596, label %_ZN4ncnn3MatD2Ev.exit1369, label %bb.cv

bb.ce:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit1708, %_ZN4ncnn3Mat6addrefEv.exit1801
  %i.aug = load ptr, ptr %i.apx, align 8, !tbaa !44 ; 2 uses
  %i.auh = load ptr, ptr %2, align 8, !tbaa !21   ; 2 uses
  %.not2910 = icmp eq ptr %i.aug, %i.auh
  br i1 %.not2910, label %._crit_edge2891, label %.lr.ph2890

.lr.ph2890:                                       ; preds = %bb.ce
  %i.aui = icmp eq i32 %.02529.lcssa, 8
  %i.auj = icmp eq i32 %.02529.lcssa, 4           ; 2 uses
  %i.auk = icmp eq i32 %.02529.lcssa, 1           ; 2 uses
  br label %bb.cf

bb.cf:                                            ; preds = %.lr.ph2890, %bb.co
  %i.aul = phi ptr [ %i.auh, %.lr.ph2890 ], [ %i.cib, %bb.co ] ; 2 uses
  %i.aum = phi ptr [ %i.aug, %.lr.ph2890 ], [ %i.cic, %bb.co ]
  %.010712888 = phi i64 [ 0, %.lr.ph2890 ], [ %i.cid, %bb.co ] ; 2 uses
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
  %i.auu = load i32, ptr %i.aut, align 8, !tbaa !53
  %i.auv = mul i32 %i.auu, %i.aus
  %i.auw = getelementptr inbounds nuw i8, ptr %i.aun, i64 52
  %i.aux = load i32, ptr %i.auw, align 4, !tbaa !177
  %i.auy = mul i32 %i.auv, %i.aux                 ; 2 uses
  %i.auz = getelementptr inbounds nuw i8, ptr %i.aun, i64 56
  %i.ava = load i32, ptr %i.auz, align 8, !tbaa !50 ; 2 uses
  %i.avb = icmp sgt i32 %i.ava, 0
  br i1 %i.avb, label %.noexc1797.lr.ph, label %.thread2565

.noexc1797.lr.ph:                                 ; preds = %bb.cg
  %i.avc = load ptr, ptr %5, align 16, !tbaa !18, !noalias !182 ; 2 uses
  %i.avd = load i64, ptr %i.atn, align 16, !tbaa !20, !noalias !182
  %i.ave = load i64, ptr %i.atc, align 16, !tbaa !25, !noalias !182
  %factor.op.mul2734 = mul i64 %i.avd, %i.ave     ; 2 uses
  %i.avf = load ptr, ptr %i.aun, align 8, !tbaa !18, !noalias !185
  %i.avg = getelementptr inbounds nuw i8, ptr %i.aun, i64 64
  %i.avh = load i64, ptr %i.avg, align 8, !tbaa !20, !noalias !185
  %i.avi = getelementptr inbounds nuw i8, ptr %i.aun, i64 16
  %i.avj = load i64, ptr %i.avi, align 8, !tbaa !25, !noalias !185
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
  br i1 %exitcond2976.not, label %.loopexit2577.loopexit, label %.noexc1797, !llvm.loop !188

.lr.ph2729:                                       ; preds = %.lr.ph2729.preheader, %.lr.ph2729
  %.010662728 = phi i32 [ %i.axm, %.lr.ph2729 ], [ 0, %.lr.ph2729.preheader ]
  %.010672727 = phi ptr [ %i.axl, %.lr.ph2729 ], [ %i.avm, %.lr.ph2729.preheader ] ; 17 uses
  %.010682726 = phi ptr [ %i.axk, %.lr.ph2729 ], [ %i.avo, %.lr.ph2729.preheader ] ; 9 uses
  %.010692725 = phi ptr [ %i.axj, %.lr.ph2729 ], [ %i.avp, %.lr.ph2729.preheader ] ; 9 uses
  %i.avq = load float, ptr %.010692725, align 4, !tbaa !62
  store float %i.avq, ptr %.010672727, align 4, !tbaa !62
  %i.avr = getelementptr inbounds nuw i8, ptr %.010692725, i64 4
  %i.avs = load float, ptr %i.avr, align 4, !tbaa !62
  %i.avt = getelementptr inbounds nuw i8, ptr %.010672727, i64 4
  store float %i.avs, ptr %i.avt, align 4, !tbaa !62
  %i.avu = getelementptr inbounds nuw i8, ptr %.010692725, i64 8
  %i.avv = load float, ptr %i.avu, align 4, !tbaa !62
  %i.avw = getelementptr inbounds nuw i8, ptr %.010672727, i64 8
  store float %i.avv, ptr %i.avw, align 4, !tbaa !62
  %i.avx = getelementptr inbounds nuw i8, ptr %.010692725, i64 12
  %i.avy = load float, ptr %i.avx, align 4, !tbaa !62
  %i.avz = getelementptr inbounds nuw i8, ptr %.010672727, i64 12
  store float %i.avy, ptr %i.avz, align 4, !tbaa !62
  %i.awa = getelementptr inbounds nuw i8, ptr %.010692725, i64 16
  %i.awb = load float, ptr %i.awa, align 4, !tbaa !62
  %i.awc = getelementptr inbounds nuw i8, ptr %.010672727, i64 16
  store float %i.awb, ptr %i.awc, align 4, !tbaa !62
  %i.awd = getelementptr inbounds nuw i8, ptr %.010692725, i64 20
  %i.awe = load float, ptr %i.awd, align 4, !tbaa !62
  %i.awf = getelementptr inbounds nuw i8, ptr %.010672727, i64 20
  store float %i.awe, ptr %i.awf, align 4, !tbaa !62
  %i.awg = getelementptr inbounds nuw i8, ptr %.010692725, i64 24
  %i.awh = load float, ptr %i.awg, align 4, !tbaa !62
  %i.awi = getelementptr inbounds nuw i8, ptr %.010672727, i64 24
  store float %i.awh, ptr %i.awi, align 4, !tbaa !62
  %i.awj = getelementptr inbounds nuw i8, ptr %.010692725, i64 28
  %i.awk = load float, ptr %i.awj, align 4, !tbaa !62
  %i.awl = getelementptr inbounds nuw i8, ptr %.010672727, i64 28
  store float %i.awk, ptr %i.awl, align 4, !tbaa !62
  %i.awm = load float, ptr %.010682726, align 4, !tbaa !62
  %i.awn = getelementptr inbounds nuw i8, ptr %.010672727, i64 32
  store float %i.awm, ptr %i.awn, align 4, !tbaa !62
  %i.awo = getelementptr inbounds nuw i8, ptr %.010682726, i64 4
  %i.awp = load float, ptr %i.awo, align 4, !tbaa !62
  %i.awq = getelementptr inbounds nuw i8, ptr %.010672727, i64 36
  store float %i.awp, ptr %i.awq, align 4, !tbaa !62
  %i.awr = getelementptr inbounds nuw i8, ptr %.010682726, i64 8
  %i.aws = load float, ptr %i.awr, align 4, !tbaa !62
  %i.awt = getelementptr inbounds nuw i8, ptr %.010672727, i64 40
  store float %i.aws, ptr %i.awt, align 4, !tbaa !62
  %i.awu = getelementptr inbounds nuw i8, ptr %.010682726, i64 12
  %i.awv = load float, ptr %i.awu, align 4, !tbaa !62
  %i.aww = getelementptr inbounds nuw i8, ptr %.010672727, i64 44
  store float %i.awv, ptr %i.aww, align 4, !tbaa !62
  %i.awx = getelementptr inbounds nuw i8, ptr %.010682726, i64 16
  %i.awy = load float, ptr %i.awx, align 4, !tbaa !62
  %i.awz = getelementptr inbounds nuw i8, ptr %.010672727, i64 48
  store float %i.awy, ptr %i.awz, align 4, !tbaa !62
  %i.axa = getelementptr inbounds nuw i8, ptr %.010682726, i64 20
  %i.axb = load float, ptr %i.axa, align 4, !tbaa !62
  %i.axc = getelementptr inbounds nuw i8, ptr %.010672727, i64 52
  store float %i.axb, ptr %i.axc, align 4, !tbaa !62
  %i.axd = getelementptr inbounds nuw i8, ptr %.010682726, i64 24
  %i.axe = load float, ptr %i.axd, align 4, !tbaa !62
  %i.axf = getelementptr inbounds nuw i8, ptr %.010672727, i64 56
  store float %i.axe, ptr %i.axf, align 4, !tbaa !62
  %i.axg = getelementptr inbounds nuw i8, ptr %.010682726, i64 28
  %i.axh = load float, ptr %i.axg, align 4, !tbaa !62
  %i.axi = getelementptr inbounds nuw i8, ptr %.010672727, i64 60
  store float %i.axh, ptr %i.axi, align 4, !tbaa !62
  %i.axj = getelementptr inbounds nuw i8, ptr %.010692725, i64 32
  %i.axk = getelementptr inbounds nuw i8, ptr %.010682726, i64 32
  %i.axl = getelementptr inbounds nuw i8, ptr %.010672727, i64 64
  %i.axm = add nuw nsw i32 %.010662728, 1         ; 2 uses
  %exitcond2967.not = icmp eq i32 %i.axm, %i.auy
  br i1 %exitcond2967.not, label %._crit_edge2730, label %.lr.ph2729, !llvm.loop !189

.loopexit2577.loopexit:                           ; preds = %._crit_edge2730
  %i.axn = trunc nsw i64 %indvars.iv.next2971 to i32
  br label %.loopexit2577

.loopexit2577:                                    ; preds = %.loopexit2577.loopexit, %bb.cf
  %.21074 = phi i32 [ %.010722887, %bb.cf ], [ %i.axn, %.loopexit2577.loopexit ] ; 4 uses
  br i1 %i.auj, label %bb.ch, label %.loopexit2576

bb.ch:                                            ; preds = %.loopexit2577
  %i.axo = load i32, ptr %i.auo, align 8, !tbaa !27 ; 2 uses
  %i.axp = icmp eq i32 %i.axo, 16
  br i1 %i.axp, label %bb.ci, label %.thread2552

bb.ci:                                            ; preds = %bb.ch
  %i.axq = getelementptr inbounds nuw i8, ptr %i.aun, i64 44
  %i.axr = load i32, ptr %i.axq, align 4, !tbaa !43
  %i.axs = getelementptr inbounds nuw i8, ptr %i.aun, i64 48
  %i.axt = load i32, ptr %i.axs, align 8, !tbaa !53
  %i.axu = mul i32 %i.axt, %i.axr
  %i.axv = getelementptr inbounds nuw i8, ptr %i.aun, i64 52
  %i.axw = load i32, ptr %i.axv, align 4, !tbaa !177
  %i.axx = mul i32 %i.axu, %i.axw                 ; 5 uses
  %i.axy = getelementptr inbounds nuw i8, ptr %i.aun, i64 56
  %i.axz = load i32, ptr %i.axy, align 8, !tbaa !50 ; 2 uses
  %i.aya = icmp sgt i32 %i.axz, 0
  br i1 %i.aya, label %.noexc1791.lr.ph, label %thread-pre-split
end_hunk_1
begin_hunk_2_@_ZNK4ncnn16Slice_x86_avx51219forward_bf16s_fp16sERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
bb.h:                                             ; preds = %bb.g
  %i.be = sub nsw i32 %i.ad, %.010622589
  %i.bf = sext i32 %i.be to i64
  %i.bg = sub i64 %i.aq, %.010642588
  %i.bh = udiv i64 %i.bf, %i.bg
  %i.bi = trunc i64 %i.bh to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.e, %bb.f
  %.01091 = phi i32 [ %i.au, %bb.e ], [ %i.ba, %bb.f ], [ %i.bi, %bb.h ], [ %i.bc, %bb.g ] ; 5 uses
  %i.bj = load i8, ptr %i.am, align 1, !tbaa !45, !range !47, !noundef !48
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.bl = and i32 %.01091, 15
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bn = and i32 %.01091, 7
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bp = and i32 %.01091, 3
  %i.bq = icmp eq i32 %i.bp, 0
  %i.br = select i1 %i.bq, i32 4, i32 1
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.i
  %.01096 = phi i32 [ 1, %bb.i ], [ 16, %bb.j ], [ %i.br, %bb.l ], [ 8, %bb.k ] ; 3 uses
  %i.bs = zext nneg i32 %.01096 to i64
  %i.bt = mul i64 %i.ao, %i.bs
  %i.bu = getelementptr inbounds nuw [72 x i8], ptr %i.ar, i64 %.010642588 ; 6 uses
  %i.bv = sdiv i32 %.01091, %.01096
  %i.bw = load ptr, ptr %i.ap, align 8, !tbaa !49
  tail call void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.bu, i32 noundef %i.bv, i64 noundef %i.bt, i32 noundef %.01096, ptr noundef %i.bw)
  %i.bx = load ptr, ptr %i.bu, align 8, !tbaa !18 ; 2 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %.critedge1331, label %_ZNK4ncnn3Mat5emptyEv.exit1708

_ZNK4ncnn3Mat5emptyEv.exit1708:                   ; preds = %bb.m
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 64
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !20
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 56
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !50
  %i.cd = sext i32 %i.cc to i64
  %i.ce = mul i64 %i.ca, %i.cd
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %.critedge1331, label %bb.n

bb.n:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit1708
  %i.cg = load ptr, ptr %i.k, align 8, !tbaa !18
  %i.ch = sext i32 %.010622589 to i64
  %i.ci = getelementptr inbounds [2 x i8], ptr %i.cg, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bu, i64 44
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !43
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !25
  %i.co = mul i64 %i.cn, %i.cl
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.bx, ptr align 2 %i.ci, i64 %i.co, i1 false)
  %i.cp = add nsw i32 %.01091, %.010622589
  %i.cq = add nuw i64 %.010642588, 1              ; 2 uses
  %i.cr = load ptr, ptr %i.ae, align 8, !tbaa !44
  %i.cs = load ptr, ptr %2, align 8, !tbaa !21    ; 2 uses
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = sdiv exact i64 %i.cv, 72                ; 2 uses
  %.not1267 = icmp ult i64 %i.cq, %i.cw
  br i1 %.not1267, label %bb.c, label %.critedge1324, !llvm.loop !336

.critedge1324:                                    ; preds = %bb.n, %bb.a
  %i.cx = icmp eq i32 %i.m, 2                     ; 3 uses
  %i.cy = icmp eq i32 %i.z, 0                     ; 3 uses
  %or.cond = select i1 %i.cx, i1 %i.cy, i1 false
  br i1 %or.cond, label %bb.o, label %bb.bd

bb.o:                                             ; preds = %.critedge1324
  %i.cz = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !43 ; 37 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !53
  %i.dd = mul nsw i32 %i.q, %i.dc                 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !44 ; 2 uses
  %i.dg = load ptr, ptr %2, align 8, !tbaa !21    ; 4 uses
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
  %i.eh = sub i64 %i.dr, %.012402592
  %i.ei = udiv i64 %i.eg, %i.eh
  %i.ej = trunc i64 %i.ei to i32
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.r, %bb.s
  %.01239 = phi i32 [ %i.dv, %bb.r ], [ %i.eb, %bb.s ], [ %i.ej, %bb.u ], [ %i.ed, %bb.t ] ; 5 uses
  %i.ek = load i8, ptr %i.dn, align 1, !tbaa !45, !range !47, !noundef !48
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
  %i.ey = load ptr, ptr %i.ev, align 8, !tbaa !18
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
  %i.fk = load ptr, ptr %2, align 8, !tbaa !21    ; 10 uses
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = sub i64 %i.fl, %i.fm
  %i.fo = sdiv i64 %i.fn, 72                      ; 7 uses
  %.not1269 = icmp ult i64 %i.fi, %i.fo
  br i1 %.not1269, label %bb.p, label %.critedge1326, !llvm.loop !337

.critedge1326:                                    ; preds = %bb.aa
  %i.fp = icmp eq ptr %i.fj, %i.fk
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !27 ; 4 uses
  br i1 %i.fp, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %.critedge1326
  %umax = tail call i64 @llvm.umax.i64(i64 %i.fo, i64 1) ; 4 uses
  %min.iters.check = icmp ult i64 %i.fo, 8
  br i1 %min.iters.check, label %.lr.ph2597.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check3205 = icmp ult i64 %i.fo, 64
  br i1 %min.iters.check3205, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fs = and i64 %umax, 56
  %n.vec = and i64 %umax, -64                     ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.fr, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
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
  br i1 %i.fx, label %middle.block, label %vector.body, !llvm.loop !338

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.ft, <16 x i32> %i.fu)
  %rdx.minmax3219 = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %rdx.minmax, <16 x i32> %i.fv)
  %rdx.minmax3220 = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %rdx.minmax3219, <16 x i32> %i.fw)
  %i.fy = tail call i32 @llvm.vector.reduce.smin.v16i32(<16 x i32> %rdx.minmax3220) ; 3 uses
  %cmp.n = icmp eq i64 %i.fo, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.fs, 0
  br i1 %min.epilog.iters.check, label %.lr.ph2597.preheader, label %vec.epilog.ph, !prof !58

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %bc.merge.rdx = phi i32 [ %i.fy, %vec.epilog.iter.check ], [ %i.fr, %vector.main.loop.iter.check ]
  %n.vec3221 = and i64 %umax, -8                  ; 3 uses
  %broadcast.splatinsert3222 = insertelement <8 x i32> poison, i32 %bc.merge.rdx, i64 0
  %broadcast.splat3223 = shufflevector <8 x i32> %broadcast.splatinsert3222, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert3224 = insertelement <8 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat3225 = shufflevector <8 x i64> %broadcast.splatinsert3224, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = or disjoint <8 x i64> %broadcast.splat3225, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index3226 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next3232, %vec.epilog.vector.body ]
  %vec.ind3227 = phi <8 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next3233, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi3228 = phi <8 x i32> [ %broadcast.splat3223, %vec.epilog.ph ], [ %i.fz, %vec.epilog.vector.body ]
  %wide.gep3229 = getelementptr inbounds nuw [72 x i8], ptr %i.fk, <8 x i64> %vec.ind3227
  %wide.gep3230 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep3229, i64 24
  %wide.masked.gather3231 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep3230, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !28
  %i.fz = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.masked.gather3231, <8 x i32> %vec.phi3228) ; 2 uses
  %index.next3232 = add nuw i64 %index3226, 8     ; 2 uses
  %vec.ind.next3233 = add nuw <8 x i64> %vec.ind3227, splat (i64 8)
  %i.ga = icmp eq i64 %index.next3232, %n.vec3221
  br i1 %i.ga, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !339

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
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !11 ; 2 uses
  %i.gf = load <2 x ptr>, ptr %i.k, align 8, !tbaa !60
  store <2 x ptr> %i.gf, ptr %4, align 16, !tbaa !60
  %i.gg = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.gh = load i64, ptr %i.n, align 8, !tbaa !25
  store i64 %i.gh, ptr %i.gg, align 16, !tbaa !25
  %i.gi = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.gj = load i32, ptr %i.p, align 8, !tbaa !27
  store i32 %i.gj, ptr %i.gi, align 8, !tbaa !27
  %i.gk = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !17
  store ptr %i.gm, ptr %i.gk, align 16, !tbaa !17
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
  %exitcond.not = icmp eq i64 %i.hb, %umax
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph2597, !llvm.loop !340

bb.ac:                                            ; preds = %_ZN4ncnn3Mat6addrefEv.exit
  invoke void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef nonnull align 8 dereferenceable(72) %4, i32 noundef %.02522.lcssa, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.hc = load ptr, ptr %4, align 16, !tbaa !18
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
  %i.hk = load ptr, ptr %i.gc, align 8, !tbaa !11 ; 2 uses
  %.not.i1412 = icmp eq ptr %i.hk, null
  br i1 %.not.i1412, label %_ZN4ncnn3MatD2Ev.exit1410, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hl = atomicrmw add ptr %i.hk, i32 -1 acq_rel, align 4
  %i.hm = icmp eq i32 %i.hl, 1
  br i1 %i.hm, label %bb.ag, label %_ZN4ncnn3MatD2Ev.exit1410

bb.ag:                                            ; preds = %bb.af
  %i.hn = load ptr, ptr %i.gk, align 16, !tbaa !17 ; 3 uses
  %.not3.i1413 = icmp eq ptr %i.hn, null
  %i.ho = load ptr, ptr %4, align 16, !tbaa !18   ; 3 uses
  br i1 %.not3.i1413, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hp = load ptr, ptr %i.hn, align 8, !tbaa !9
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 24
  %i.hr = load ptr, ptr %i.hq, align 8
  invoke void %i.hr(ptr noundef nonnull align 8 dereferenceable(8) %i.hn, ptr noundef %i.ho)
          to label %_ZN4ncnn3MatD2Ev.exit1410 unwind label %bb.ak, !inline_history !19

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
  %i.hv = load ptr, ptr %2, align 8, !tbaa !21    ; 2 uses
  %.not2903 = icmp eq ptr %i.hu, %i.hv
  br i1 %.not2903, label %._crit_edge2703, label %.lr.ph2702

.lr.ph2702:                                       ; preds = %bb.al
  %i.hw = load ptr, ptr %4, align 16, !tbaa !18
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
  %i.ke = shl nsw i64 %i.if, 1                    ; 2 uses
  %i.kf = shl nuw nsw i64 %i.kc, 3                ; 2 uses
  %i.kg = shl nsw i64 %i.hz, 1
  %min.iters.check3488 = icmp ult i32 %i.da, 4
  %stride.check3486 = icmp slt i32 %i.hy, 0
  %min.iters.check3490 = icmp ult i32 %i.da, 16
  %i.kh = and i64 %i.jo, 12
  %n.vec3492 = and i64 %i.jo, 2147483632          ; 6 uses
  %i.ki = trunc nuw nsw i64 %n.vec3492 to i32
  %i.kj = shl nuw nsw i64 %n.vec3492, 4
  %i.kk = shl nuw nsw i64 %n.vec3492, 3           ; 2 uses
  %cmp.n3509 = icmp eq i64 %n.vec3492, %i.jo
  %min.epilog.iters.check3518 = icmp eq i64 %i.kh, 0
  %n.vec3520 = and i64 %i.jo, 2147483644          ; 5 uses
  %i.kl = trunc nuw nsw i64 %n.vec3520 to i32
  %i.km = shl nuw nsw i64 %n.vec3520, 4
  %i.kn = shl nuw nsw i64 %n.vec3520, 3           ; 2 uses
  %cmp.n3539 = icmp eq i64 %n.vec3520, %i.jo
  %min.iters.check3391 = icmp ult i32 %i.da, 8
  %stride.check3353 = icmp slt i32 %i.hy, 0
  %min.iters.check3393 = icmp ult i32 %i.da, 32
  %i.ko = and i64 %i.jo, 24
  %n.vec3395 = and i64 %i.jo, 2147483616          ; 6 uses
  %i.kp = trunc nuw nsw i64 %n.vec3395 to i32
  %i.kq = shl nuw nsw i64 %n.vec3395, 4
  %i.kr = shl nuw nsw i64 %n.vec3395, 1           ; 8 uses
  %cmp.n3418 = icmp eq i64 %n.vec3395, %i.jo
  %min.epilog.iters.check3433 = icmp eq i64 %i.ko, 0
  %n.vec3435 = and i64 %i.jo, 2147483640          ; 5 uses
  %i.ks = trunc nuw nsw i64 %n.vec3435 to i32
  %i.kt = shl nuw nsw i64 %n.vec3435, 4
  %i.ku = shl nuw nsw i64 %n.vec3435, 1           ; 8 uses
  %cmp.n3458 = icmp eq i64 %n.vec3435, %i.jo
  %min.iters.check3267 = icmp ult i32 %i.da, 8
  %stride.check3254 = icmp slt i32 %i.ie, 0
  %min.iters.check3269 = icmp ult i32 %i.da, 32
  %i.kv = and i64 %i.jo, 24
  %n.vec3271 = and i64 %i.jo, 2147483616          ; 6 uses
  %i.kw = trunc nuw nsw i64 %n.vec3271 to i32
  %i.kx = shl nuw nsw i64 %n.vec3271, 3
  %i.ky = shl nuw nsw i64 %n.vec3271, 1           ; 4 uses
  %cmp.n3283 = icmp eq i64 %n.vec3271, %i.jo
  %min.epilog.iters.check3294 = icmp eq i64 %i.kv, 0
  %n.vec3296 = and i64 %i.jo, 2147483640          ; 5 uses
  %i.kz = trunc nuw nsw i64 %n.vec3296 to i32
  %i.la = shl nuw nsw i64 %n.vec3296, 3
  %i.lb = shl nuw nsw i64 %n.vec3296, 1           ; 4 uses
  %cmp.n3311 = icmp eq i64 %n.vec3296, %i.jo
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph2702, %bb.aw
  %i.lc = phi ptr [ %i.hv, %.lr.ph2702 ], [ %i.afj, %bb.aw ] ; 2 uses
  %i.ld = phi ptr [ %i.hu, %.lr.ph2702 ], [ %i.afk, %bb.aw ]
  %.011512700 = phi i64 [ 0, %.lr.ph2702 ], [ %i.afl, %bb.aw ] ; 2 uses
  %.011522699 = phi ptr [ %i.hw, %.lr.ph2702 ], [ %.131165, %bb.aw ] ; 4 uses
  %i.le = getelementptr inbounds nuw [72 x i8], ptr %i.lc, i64 %.011512700 ; 28 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 24 ; 2 uses
  %i.lg = load i32, ptr %i.lf, align 8            ; 5 uses
  %i.lh = icmp eq i32 %i.lg, 16                   ; 3 uses
  %or.cond1329 = select i1 %i.hx, i1 %i.lh, i1 false
  br i1 %or.cond1329, label %.preheader2580, label %.loopexit2581

.preheader2580:                                   ; preds = %bb.am
  %i.li = getelementptr inbounds nuw i8, ptr %i.le, i64 48
  %i.lj = load i32, ptr %i.li, align 8, !tbaa !53 ; 3 uses
  %i.lk = icmp sgt i32 %i.lj, 0
  br i1 %i.lk, label %.lr.ph2607, label %.thread2538

.lr.ph2607:                                       ; preds = %.preheader2580
  %i.ll = load ptr, ptr %i.le, align 8, !tbaa !18
end_hunk_2
begin_hunk_3_@_ZNK4ncnn16Slice_x86_avx51219forward_bf16s_fp16sERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
  %i.agw = load i32, ptr %i.agv, align 4, !tbaa !28 ; 2 uses
  %i.agx = icmp slt i32 %i.agw, 0
  %i.agy = select i1 %i.agx, i32 %i.agf, i32 0
  %i.agz = sub i32 %i.agw, %.010942705
  %i.aha = add i32 %i.agz, %i.agy
  br label %bb.bl

bb.bj:                                            ; preds = %bb.bf
  %i.ahb = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.010932706
  %i.ahc = load i32, ptr %i.ahb, align 4, !tbaa !28 ; 2 uses
  %i.ahd = icmp eq i32 %i.ahc, -233
  br i1 %i.ahd, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.ahe = sub nsw i32 %i.agf, %.010942705
  %i.ahf = sext i32 %i.ahe to i64
  %i.ahg = sub i64 %i.agq, %.010932706
  %i.ahh = udiv i64 %i.ahf, %i.ahg
  %i.ahi = trunc i64 %i.ahh to i32
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bj, %bb.bk, %bb.bh, %bb.bi
  %.01092 = phi i32 [ %i.agu, %bb.bh ], [ %i.aha, %bb.bi ], [ %i.ahi, %bb.bk ], [ %i.ahc, %bb.bj ] ; 2 uses
  %i.ahj = getelementptr inbounds nuw [72 x i8], ptr %i.agr, i64 %.010932706 ; 4 uses
  %i.ahk = load i32, ptr %i.c, align 4, !tbaa !28
  %i.ahl = load i64, ptr %i.a, align 8, !tbaa !26
  %i.ahm = load i32, ptr %i.b, align 4, !tbaa !28
  %i.ahn = load ptr, ptr %i.agp, align 8, !tbaa !49
  call void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.ahj, i32 noundef %.01092, i32 noundef %i.ahk, i64 noundef %i.ahl, i32 noundef %i.ahm, ptr noundef %i.ahn)
  %i.aho = load ptr, ptr %i.ahj, align 8, !tbaa !18
  %i.ahp = icmp eq ptr %i.aho, null
  br i1 %i.ahp, label %.critedge1335, label %_ZNK4ncnn3Mat5emptyEv.exit1705

_ZNK4ncnn3Mat5emptyEv.exit1705:                   ; preds = %bb.bl
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.ahj, i64 64
  %i.ahr = load i64, ptr %i.ahq, align 8, !tbaa !20
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahj, i64 56
  %i.aht = load i32, ptr %i.ahs, align 8, !tbaa !50
  %i.ahu = sext i32 %i.aht to i64
  %i.ahv = mul i64 %i.ahr, %i.ahu
  %i.ahw = icmp eq i64 %i.ahv, 0
  br i1 %i.ahw, label %.critedge1335, label %bb.bm

bb.bm:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit1705
  %i.ahx = add nsw i32 %.01092, %.010942705
  %i.ahy = add nuw i64 %.010932706, 1             ; 2 uses
  %i.ahz = load ptr, ptr %i.agi, align 8, !tbaa !44
  %i.aia = load ptr, ptr %2, align 8, !tbaa !21   ; 2 uses
  %i.aib = ptrtoint ptr %i.ahz to i64
  %i.aic = ptrtoint ptr %i.aia to i64
  %i.aid = sub i64 %i.aib, %i.aic
  %i.aie = sdiv exact i64 %i.aid, 72              ; 2 uses
  %.not1271.not = icmp ult i64 %i.ahy, %i.aie
  br i1 %.not1271.not, label %bb.bf, label %.critedge1358, !llvm.loop !403

.critedge1358:                                    ; preds = %bb.bm, %bb.be
  %i.aif = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.aig = load i32, ptr %i.aif, align 4, !tbaa !176
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.j, i32 %i.aig)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZNK4ncnn16Slice_x86_avx51219forward_bf16s_fp16sERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined, ptr nonnull %i.c, ptr nonnull %i.k, ptr nonnull %2, ptr nonnull %i.a, ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %bb.bn

bb.bn:                                            ; preds = %.critedge1358, %bb.bd
  %i.aih = icmp eq i32 %i.m, 3                    ; 2 uses
  %i.aii = icmp eq i32 %i.m, 4                    ; 3 uses
  %i.aij = add i32 %i.m, -3
  %or.cond25 = icmp ult i32 %i.aij, 2
  %or.cond27 = select i1 %or.cond25, i1 %i.agb, i1 false
  br i1 %or.cond27, label %bb.bo, label %bb.dc

bb.bo:                                            ; preds = %bb.bn
  %i.aik = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  %i.ail = load i32, ptr %i.aik, align 4, !tbaa !43
  %i.aim = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.ain = load i32, ptr %i.aim, align 8, !tbaa !53
  %i.aio = getelementptr inbounds nuw i8, ptr %i.k, i64 52
  %i.aip = load i32, ptr %i.aio, align 4, !tbaa !177
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.k, i64 56 ; 2 uses
  %i.air = load i32, ptr %i.aiq, align 8, !tbaa !50
  %i.ais = load i32, ptr %i.b, align 4, !tbaa !28
  %i.ait = mul nsw i32 %i.ais, %i.air             ; 3 uses
  %i.aiu = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.aiv = load ptr, ptr %i.aiu, align 8, !tbaa !44 ; 2 uses
  %i.aiw = load ptr, ptr %2, align 8, !tbaa !21   ; 4 uses
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
  %i.ajv = sub i64 %i.ajf, %.010662711
  %i.ajw = udiv i64 %i.aju, %i.ajv
  %i.ajx = trunc i64 %i.ajw to i32
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bt, %bb.bu, %bb.br, %bb.bs
  %.01065 = phi i32 [ %i.ajj, %bb.br ], [ %i.ajp, %bb.bs ], [ %i.ajx, %bb.bu ], [ %i.ajr, %bb.bt ] ; 5 uses
  %i.ajy = load i8, ptr %i.ajd, align 1, !tbaa !45, !range !47, !noundef !48
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
  %i.akq = load ptr, ptr %i.akn, align 8, !tbaa !18
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
  %i.ald = load ptr, ptr %2, align 8, !tbaa !21   ; 10 uses
  %i.ale = ptrtoint ptr %i.alc to i64
  %i.alf = ptrtoint ptr %i.ald to i64
  %i.alg = sub i64 %i.ale, %i.alf
  %i.alh = sdiv i64 %i.alg, 72                    ; 7 uses
  %.not1273 = icmp ult i64 %i.alb, %i.alh
  br i1 %.not1273, label %bb.bp, label %.critedge1337, !llvm.loop !404

.critedge1337:                                    ; preds = %bb.ca
  %i.ali = icmp eq ptr %i.alc, %i.ald
  %i.alj = getelementptr inbounds nuw i8, ptr %i.ald, i64 24
  %i.alk = load i32, ptr %i.alj, align 8, !tbaa !27 ; 4 uses
  br i1 %i.ali, label %._crit_edge2718, label %iter.check3582

iter.check3582:                                   ; preds = %.critedge1337
  %umax2960 = call i64 @llvm.umax.i64(i64 %i.alh, i64 1) ; 4 uses
  %min.iters.check3544 = icmp ult i64 %i.alh, 8
  br i1 %min.iters.check3544, label %.lr.ph2717.preheader, label %vector.main.loop.iter.check3545

vector.main.loop.iter.check3545:                  ; preds = %iter.check3582
  %min.iters.check3546 = icmp ult i64 %i.alh, 64
  br i1 %min.iters.check3546, label %vec.epilog.ph3586, label %vector.ph3547

vector.ph3547:                                    ; preds = %vector.main.loop.iter.check3545
  %i.all = and i64 %umax2960, 56
  %n.vec3548 = and i64 %umax2960, -64             ; 4 uses
  %broadcast.splatinsert3549 = insertelement <16 x i32> poison, i32 %i.alk, i64 0
  %broadcast.splat3550 = shufflevector <16 x i32> %broadcast.splatinsert3549, <16 x i32> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body3551

vector.body3551:                                  ; preds = %vector.body3551, %vector.ph3547
  %index3552 = phi i64 [ 0, %vector.ph3547 ], [ %index.next3573, %vector.body3551 ]
  %vec.ind3553 = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.ph3547 ], [ %vec.ind.next3574, %vector.body3551 ] ; 5 uses
  %vec.phi3554 = phi <16 x i32> [ %broadcast.splat3550, %vector.ph3547 ], [ %i.alm, %vector.body3551 ]
  %vec.phi3555 = phi <16 x i32> [ %broadcast.splat3550, %vector.ph3547 ], [ %i.aln, %vector.body3551 ]
  %vec.phi3556 = phi <16 x i32> [ %broadcast.splat3550, %vector.ph3547 ], [ %i.alo, %vector.body3551 ]
  %vec.phi3557 = phi <16 x i32> [ %broadcast.splat3550, %vector.ph3547 ], [ %i.alp, %vector.body3551 ]
  %step.add3558 = add nuw <16 x i64> %vec.ind3553, splat (i64 16)
  %step.add.23559 = add nuw <16 x i64> %vec.ind3553, splat (i64 32)
  %step.add.33560 = add nuw <16 x i64> %vec.ind3553, splat (i64 48)
  %wide.gep3561 = getelementptr inbounds nuw [72 x i8], ptr %i.ald, <16 x i64> %vec.ind3553
  %wide.gep3562 = getelementptr inbounds nuw [72 x i8], ptr %i.ald, <16 x i64> %step.add3558
  %wide.gep3563 = getelementptr inbounds nuw [72 x i8], ptr %i.ald, <16 x i64> %step.add.23559
  %wide.gep3564 = getelementptr inbounds nuw [72 x i8], ptr %i.ald, <16 x i64> %step.add.33560
  %wide.gep3565 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep3561, i64 24
  %wide.gep3566 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep3562, i64 24
  %wide.gep3567 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep3563, i64 24
  %wide.gep3568 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep3564, i64 24
  %wide.masked.gather3569 = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %wide.gep3565, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !28
  %wide.masked.gather3570 = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %wide.gep3566, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !28
  %wide.masked.gather3571 = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %wide.gep3567, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !28
  %wide.masked.gather3572 = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %wide.gep3568, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !28
  %i.alm = call <16 x i32> @llvm.smin.v16i32(<16 x i32> %wide.masked.gather3569, <16 x i32> %vec.phi3554) ; 2 uses
  %i.aln = call <16 x i32> @llvm.smin.v16i32(<16 x i32> %wide.masked.gather3570, <16 x i32> %vec.phi3555) ; 2 uses
  %i.alo = call <16 x i32> @llvm.smin.v16i32(<16 x i32> %wide.masked.gather3571, <16 x i32> %vec.phi3556) ; 2 uses
  %i.alp = call <16 x i32> @llvm.smin.v16i32(<16 x i32> %wide.masked.gather3572, <16 x i32> %vec.phi3557) ; 2 uses
  %index.next3573 = add nuw i64 %index3552, 64    ; 2 uses
  %vec.ind.next3574 = add nuw <16 x i64> %vec.ind3553, splat (i64 64)
  %i.alq = icmp eq i64 %index.next3573, %n.vec3548
  br i1 %i.alq, label %middle.block3575, label %vector.body3551, !llvm.loop !405

middle.block3575:                                 ; preds = %vector.body3551
  %rdx.minmax3576 = call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.alm, <16 x i32> %i.aln)
  %rdx.minmax3577 = call <16 x i32> @llvm.smin.v16i32(<16 x i32> %rdx.minmax3576, <16 x i32> %i.alo)
  %rdx.minmax3578 = call <16 x i32> @llvm.smin.v16i32(<16 x i32> %rdx.minmax3577, <16 x i32> %i.alp)
  %i.alr = call i32 @llvm.vector.reduce.smin.v16i32(<16 x i32> %rdx.minmax3578) ; 3 uses
  %cmp.n3579 = icmp eq i64 %i.alh, %n.vec3548
  br i1 %cmp.n3579, label %._crit_edge2718, label %vec.epilog.iter.check3584

vec.epilog.iter.check3584:                        ; preds = %middle.block3575
  %min.epilog.iters.check3585 = icmp eq i64 %i.all, 0
  br i1 %min.epilog.iters.check3585, label %.lr.ph2717.preheader, label %vec.epilog.ph3586, !prof !58

vec.epilog.ph3586:                                ; preds = %vector.main.loop.iter.check3545, %vec.epilog.iter.check3584
  %vec.epilog.resume.val3580 = phi i64 [ %n.vec3548, %vec.epilog.iter.check3584 ], [ 0, %vector.main.loop.iter.check3545 ] ; 2 uses
  %bc.merge.rdx3581 = phi i32 [ %i.alr, %vec.epilog.iter.check3584 ], [ %i.alk, %vector.main.loop.iter.check3545 ]
  %n.vec3587 = and i64 %umax2960, -8              ; 3 uses
  %broadcast.splatinsert3588 = insertelement <8 x i32> poison, i32 %bc.merge.rdx3581, i64 0
  %broadcast.splat3589 = shufflevector <8 x i32> %broadcast.splatinsert3588, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert3590 = insertelement <8 x i64> poison, i64 %vec.epilog.resume.val3580, i64 0
  %broadcast.splat3591 = shufflevector <8 x i64> %broadcast.splatinsert3590, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction3592 = or disjoint <8 x i64> %broadcast.splat3591, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vec.epilog.vector.body3593

vec.epilog.vector.body3593:                       ; preds = %vec.epilog.vector.body3593, %vec.epilog.ph3586
  %index3594 = phi i64 [ %vec.epilog.resume.val3580, %vec.epilog.ph3586 ], [ %index.next3600, %vec.epilog.vector.body3593 ]
  %vec.ind3595 = phi <8 x i64> [ %induction3592, %vec.epilog.ph3586 ], [ %vec.ind.next3601, %vec.epilog.vector.body3593 ] ; 2 uses
  %vec.phi3596 = phi <8 x i32> [ %broadcast.splat3589, %vec.epilog.ph3586 ], [ %i.als, %vec.epilog.vector.body3593 ]
  %wide.gep3597 = getelementptr inbounds nuw [72 x i8], ptr %i.ald, <8 x i64> %vec.ind3595
  %wide.gep3598 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep3597, i64 24
  %wide.masked.gather3599 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep3598, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !28
  %i.als = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %wide.masked.gather3599, <8 x i32> %vec.phi3596) ; 2 uses
  %index.next3600 = add nuw i64 %index3594, 8     ; 2 uses
  %vec.ind.next3601 = add nuw <8 x i64> %vec.ind3595, splat (i64 8)
  %i.alt = icmp eq i64 %index.next3600, %n.vec3587
  br i1 %i.alt, label %vec.epilog.middle.block3602, label %vec.epilog.vector.body3593, !llvm.loop !406

vec.epilog.middle.block3602:                      ; preds = %vec.epilog.vector.body3593
  %i.alu = call i32 @llvm.vector.reduce.smin.v8i32(<8 x i32> %i.als) ; 2 uses
  %cmp.n3603 = icmp eq i64 %i.alh, %n.vec3587
  br i1 %cmp.n3603, label %._crit_edge2718, label %.lr.ph2717.preheader

.lr.ph2717.preheader:                             ; preds = %iter.check3582, %vec.epilog.iter.check3584, %vec.epilog.middle.block3602
  %.010602716.ph = phi i64 [ 0, %iter.check3582 ], [ %n.vec3548, %vec.epilog.iter.check3584 ], [ %n.vec3587, %vec.epilog.middle.block3602 ]
  %.025242714.ph = phi i32 [ %i.alk, %iter.check3582 ], [ %i.alr, %vec.epilog.iter.check3584 ], [ %i.alu, %vec.epilog.middle.block3602 ]
  br label %.lr.ph2717

._crit_edge2718:                                  ; preds = %.lr.ph2717, %middle.block3575, %vec.epilog.middle.block3602, %.critedge1337.thread, %.critedge1337
  %.02524.lcssa = phi i32 [ %i.alk, %.critedge1337 ], [ %i.aiy, %.critedge1337.thread ], [ %i.alu, %vec.epilog.middle.block3602 ], [ %i.alr, %middle.block3575 ], [ %.sroa.speculated, %.lr.ph2717 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.alv = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.alw = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.alx = load ptr, ptr %i.alw, align 8, !tbaa !11 ; 2 uses
  %i.aly = load <2 x ptr>, ptr %i.k, align 8, !tbaa !60
  store <2 x ptr> %i.aly, ptr %5, align 16, !tbaa !60
  %i.alz = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  %i.ama = load i64, ptr %i.n, align 8, !tbaa !25
  store i64 %i.ama, ptr %i.alz, align 16, !tbaa !25
  %i.amb = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.amc = load i32, ptr %i.p, align 8, !tbaa !27
  store i32 %i.amc, ptr %i.amb, align 8, !tbaa !27
  %i.amd = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.ame = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.amf = load ptr, ptr %i.ame, align 8, !tbaa !17
  store ptr %i.amf, ptr %i.amd, align 16, !tbaa !17
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
  %exitcond2961.not = icmp eq i64 %i.amt, %umax2960
  br i1 %exitcond2961.not, label %._crit_edge2718, label %.lr.ph2717, !llvm.loop !407

bb.cc:                                            ; preds = %_ZN4ncnn3Mat6addrefEv.exit1796
  invoke void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef nonnull align 8 dereferenceable(72) %5, i32 noundef %.02524.lcssa, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.cd unwind label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.amu = load ptr, ptr %5, align 16, !tbaa !18
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
  %i.anc = load ptr, ptr %i.alv, align 8, !tbaa !11 ; 2 uses
  %.not.i1592 = icmp eq ptr %i.anc, null
  br i1 %.not.i1592, label %_ZN4ncnn3MatD2Ev.exit1365, label %bb.cw

bb.cf:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit1703, %_ZN4ncnn3Mat6addrefEv.exit1796
  %i.and = load ptr, ptr %i.aiu, align 8, !tbaa !44 ; 2 uses
  %i.ane = load ptr, ptr %2, align 8, !tbaa !21   ; 2 uses
  %.not2905 = icmp eq ptr %i.and, %i.ane
  br i1 %.not2905, label %._crit_edge2886, label %.lr.ph2885

.lr.ph2885:                                       ; preds = %bb.cf
  %i.anf = icmp eq i32 %.02524.lcssa, 8
  %i.ang = icmp eq i32 %.02524.lcssa, 4           ; 2 uses
  %i.anh = icmp eq i32 %.02524.lcssa, 1           ; 2 uses
  br label %bb.cg

bb.cg:                                            ; preds = %.lr.ph2885, %bb.cp
  %i.ani = phi ptr [ %i.ane, %.lr.ph2885 ], [ %i.bql, %bb.cp ] ; 2 uses
  %i.anj = phi ptr [ %i.and, %.lr.ph2885 ], [ %i.bqm, %bb.cp ]
  %.010452883 = phi i64 [ 0, %.lr.ph2885 ], [ %i.bqn, %bb.cp ] ; 2 uses
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
  %i.anr = load i32, ptr %i.anq, align 8, !tbaa !53
  %i.ans = mul i32 %i.anr, %i.anp
  %i.ant = getelementptr inbounds nuw i8, ptr %i.ank, i64 52
  %i.anu = load i32, ptr %i.ant, align 4, !tbaa !177
  %i.anv = mul i32 %i.ans, %i.anu                 ; 2 uses
  %i.anw = getelementptr inbounds nuw i8, ptr %i.ank, i64 56
  %i.anx = load i32, ptr %i.anw, align 8, !tbaa !50 ; 2 uses
  %i.any = icmp sgt i32 %i.anx, 0
  br i1 %i.any, label %.noexc1792.lr.ph, label %.thread2560

.noexc1792.lr.ph:                                 ; preds = %bb.ch
  %i.anz = load ptr, ptr %5, align 16, !tbaa !18, !noalias !408 ; 2 uses
  %i.aoa = load i64, ptr %i.amk, align 16, !tbaa !20, !noalias !408
  %i.aob = load i64, ptr %i.alz, align 16, !tbaa !25, !noalias !408
  %factor.op.mul2729 = mul i64 %i.aoa, %i.aob     ; 2 uses
  %i.aoc = load ptr, ptr %i.ank, align 8, !tbaa !18, !noalias !411
  %i.aod = getelementptr inbounds nuw i8, ptr %i.ank, i64 64
  %i.aoe = load i64, ptr %i.aod, align 8, !tbaa !20, !noalias !411
  %i.aof = getelementptr inbounds nuw i8, ptr %i.ank, i64 16
  %i.aog = load i64, ptr %i.aof, align 8, !tbaa !25, !noalias !411
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
  br i1 %exitcond2971.not, label %.loopexit2572.loopexit, label %.noexc1792, !llvm.loop !414

.lr.ph2724:                                       ; preds = %.lr.ph2724.preheader, %.lr.ph2724
  %.010402723 = phi i32 [ %i.aqj, %.lr.ph2724 ], [ 0, %.lr.ph2724.preheader ]
  %.010412722 = phi ptr [ %i.aqi, %.lr.ph2724 ], [ %i.aoj, %.lr.ph2724.preheader ] ; 17 uses
  %.010422721 = phi ptr [ %i.aqh, %.lr.ph2724 ], [ %i.aol, %.lr.ph2724.preheader ] ; 9 uses
  %.010432720 = phi ptr [ %i.aqg, %.lr.ph2724 ], [ %i.aom, %.lr.ph2724.preheader ] ; 9 uses
  %i.aon = load i16, ptr %.010432720, align 2, !tbaa !341
  store i16 %i.aon, ptr %.010412722, align 2, !tbaa !341
  %i.aoo = getelementptr inbounds nuw i8, ptr %.010432720, i64 2
  %i.aop = load i16, ptr %i.aoo, align 2, !tbaa !341
  %i.aoq = getelementptr inbounds nuw i8, ptr %.010412722, i64 2
  store i16 %i.aop, ptr %i.aoq, align 2, !tbaa !341
  %i.aor = getelementptr inbounds nuw i8, ptr %.010432720, i64 4
  %i.aos = load i16, ptr %i.aor, align 2, !tbaa !341
  %i.aot = getelementptr inbounds nuw i8, ptr %.010412722, i64 4
  store i16 %i.aos, ptr %i.aot, align 2, !tbaa !341
  %i.aou = getelementptr inbounds nuw i8, ptr %.010432720, i64 6
  %i.aov = load i16, ptr %i.aou, align 2, !tbaa !341
  %i.aow = getelementptr inbounds nuw i8, ptr %.010412722, i64 6
  store i16 %i.aov, ptr %i.aow, align 2, !tbaa !341
  %i.aox = getelementptr inbounds nuw i8, ptr %.010432720, i64 8
  %i.aoy = load i16, ptr %i.aox, align 2, !tbaa !341
  %i.aoz = getelementptr inbounds nuw i8, ptr %.010412722, i64 8
  store i16 %i.aoy, ptr %i.aoz, align 2, !tbaa !341
  %i.apa = getelementptr inbounds nuw i8, ptr %.010432720, i64 10
  %i.apb = load i16, ptr %i.apa, align 2, !tbaa !341
  %i.apc = getelementptr inbounds nuw i8, ptr %.010412722, i64 10
  store i16 %i.apb, ptr %i.apc, align 2, !tbaa !341
  %i.apd = getelementptr inbounds nuw i8, ptr %.010432720, i64 12
  %i.ape = load i16, ptr %i.apd, align 2, !tbaa !341
  %i.apf = getelementptr inbounds nuw i8, ptr %.010412722, i64 12
  store i16 %i.ape, ptr %i.apf, align 2, !tbaa !341
  %i.apg = getelementptr inbounds nuw i8, ptr %.010432720, i64 14
  %i.aph = load i16, ptr %i.apg, align 2, !tbaa !341
  %i.api = getelementptr inbounds nuw i8, ptr %.010412722, i64 14
  store i16 %i.aph, ptr %i.api, align 2, !tbaa !341
  %i.apj = load i16, ptr %.010422721, align 2, !tbaa !341
  %i.apk = getelementptr inbounds nuw i8, ptr %.010412722, i64 16
  store i16 %i.apj, ptr %i.apk, align 2, !tbaa !341
  %i.apl = getelementptr inbounds nuw i8, ptr %.010422721, i64 2
  %i.apm = load i16, ptr %i.apl, align 2, !tbaa !341
  %i.apn = getelementptr inbounds nuw i8, ptr %.010412722, i64 18
  store i16 %i.apm, ptr %i.apn, align 2, !tbaa !341
  %i.apo = getelementptr inbounds nuw i8, ptr %.010422721, i64 4
  %i.app = load i16, ptr %i.apo, align 2, !tbaa !341
  %i.apq = getelementptr inbounds nuw i8, ptr %.010412722, i64 20
  store i16 %i.app, ptr %i.apq, align 2, !tbaa !341
  %i.apr = getelementptr inbounds nuw i8, ptr %.010422721, i64 6
  %i.aps = load i16, ptr %i.apr, align 2, !tbaa !341
  %i.apt = getelementptr inbounds nuw i8, ptr %.010412722, i64 22
  store i16 %i.aps, ptr %i.apt, align 2, !tbaa !341
  %i.apu = getelementptr inbounds nuw i8, ptr %.010422721, i64 8
  %i.apv = load i16, ptr %i.apu, align 2, !tbaa !341
  %i.apw = getelementptr inbounds nuw i8, ptr %.010412722, i64 24
  store i16 %i.apv, ptr %i.apw, align 2, !tbaa !341
  %i.apx = getelementptr inbounds nuw i8, ptr %.010422721, i64 10
  %i.apy = load i16, ptr %i.apx, align 2, !tbaa !341
  %i.apz = getelementptr inbounds nuw i8, ptr %.010412722, i64 26
  store i16 %i.apy, ptr %i.apz, align 2, !tbaa !341
  %i.aqa = getelementptr inbounds nuw i8, ptr %.010422721, i64 12
  %i.aqb = load i16, ptr %i.aqa, align 2, !tbaa !341
  %i.aqc = getelementptr inbounds nuw i8, ptr %.010412722, i64 28
  store i16 %i.aqb, ptr %i.aqc, align 2, !tbaa !341
  %i.aqd = getelementptr inbounds nuw i8, ptr %.010422721, i64 14
  %i.aqe = load i16, ptr %i.aqd, align 2, !tbaa !341
  %i.aqf = getelementptr inbounds nuw i8, ptr %.010412722, i64 30
  store i16 %i.aqe, ptr %i.aqf, align 2, !tbaa !341
  %i.aqg = getelementptr inbounds nuw i8, ptr %.010432720, i64 16
  %i.aqh = getelementptr inbounds nuw i8, ptr %.010422721, i64 16
  %i.aqi = getelementptr inbounds nuw i8, ptr %.010412722, i64 32
  %i.aqj = add nuw nsw i32 %.010402723, 1         ; 2 uses
  %exitcond2962.not = icmp eq i32 %i.aqj, %i.anv
  br i1 %exitcond2962.not, label %._crit_edge2725, label %.lr.ph2724, !llvm.loop !415

.loopexit2572.loopexit:                           ; preds = %._crit_edge2725
  %i.aqk = trunc nsw i64 %indvars.iv.next2966 to i32
  br label %.loopexit2572

.loopexit2572:                                    ; preds = %.loopexit2572.loopexit, %bb.cg
  %.21048 = phi i32 [ %.010462882, %bb.cg ], [ %i.aqk, %.loopexit2572.loopexit ] ; 4 uses
  br i1 %i.ang, label %bb.ci, label %.loopexit2571

bb.ci:                                            ; preds = %.loopexit2572
  %i.aql = load i32, ptr %i.anl, align 8, !tbaa !27 ; 2 uses
  %i.aqm = icmp eq i32 %i.aql, 16
  br i1 %i.aqm, label %bb.cj, label %.thread2547

bb.cj:                                            ; preds = %bb.ci
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.ank, i64 44
  %i.aqo = load i32, ptr %i.aqn, align 4, !tbaa !43
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.ank, i64 48
  %i.aqq = load i32, ptr %i.aqp, align 8, !tbaa !53
  %i.aqr = mul i32 %i.aqq, %i.aqo
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.ank, i64 52
  %i.aqt = load i32, ptr %i.aqs, align 4, !tbaa !177
  %i.aqu = mul i32 %i.aqr, %i.aqt                 ; 2 uses
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.ank, i64 56
  %i.aqw = load i32, ptr %i.aqv, align 8, !tbaa !50 ; 2 uses
  %i.aqx = icmp sgt i32 %i.aqw, 0
  br i1 %i.aqx, label %.noexc1786.lr.ph, label %thread-pre-split
end_hunk_3
begin_hunk_4_@_ZNK4ncnn16Slice_x86_avx51219forward_bf16s_fp16sERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.5:bb.a
  br i1 %i.as, label %.preheader92, label %._crit_edge101.loopexit, !llvm.loop !553

._crit_edge.loopexit:                             ; preds = %.noexc55
  %.pre116 = load i32, ptr %5, align 4, !tbaa !28
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.at = phi i32 [ %i.al, %.preheader ], [ %.pre116, %._crit_edge.loopexit ] ; 4 uses
  %i.au = phi ptr [ %i.am, %.preheader ], [ %i.cd, %._crit_edge.loopexit ]
  %i.av = phi ptr [ %i.am, %.preheader ], [ %i.cc, %._crit_edge.loopexit ]
  %.2.lcssa = phi ptr [ %.195, %.preheader ], [ %i.ca, %._crit_edge.loopexit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aw = sext i32 %i.at to i64
  %i.ax = icmp slt i64 %indvars.iv.next, %i.aw
  br i1 %i.ax, label %.preheader, label %._crit_edge97.loopexit, !llvm.loop !554

.noexc55:                                         ; preds = %.preheader, %.noexc55
  %i.ay = phi ptr [ %i.cd, %.noexc55 ], [ %i.am, %.preheader ]
  %.094 = phi i64 [ %i.cb, %.noexc55 ], [ 0, %.preheader ] ; 2 uses
  %.293 = phi ptr [ %i.ca, %.noexc55 ], [ %.195, %.preheader ] ; 2 uses
  %i.az = getelementptr inbounds nuw [72 x i8], ptr %i.ay, i64 %.094 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 44 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !43, !noalias !555
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !53, !noalias !555
  %i.be = load ptr, ptr %i.az, align 8, !tbaa !18, !noalias !555
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !20, !noalias !555
  %i.bh = mul i64 %i.bg, %indvars.iv112
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !25, !noalias !555 ; 2 uses
  %i.bk = mul i64 %i.bh, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bk
  %i.bm = sext i32 %i.bb to i64                   ; 2 uses
  %i.bn = sext i32 %i.bd to i64
  %i.bo = mul i64 %i.bj, %i.bm                    ; 2 uses
  %i.bp = mul i64 %i.bo, %indvars.iv109
  %i.bq = mul i64 %i.bp, %i.bn
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bq
  %i.bs = mul i64 %i.bo, %indvars.iv
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bs
  %i.bu = load i64, ptr %7, align 8, !tbaa !26
  %i.bv = mul i64 %i.bu, %i.bm
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.bt, ptr align 2 %.293, i64 %i.bv, i1 false)
  %i.bw = load i32, ptr %i.ba, align 4, !tbaa !43
  %i.bx = load i32, ptr %8, align 4, !tbaa !28
  %i.by = mul nsw i32 %i.bx, %i.bw
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [2 x i8], ptr %.293, i64 %i.bz ; 2 uses
  %i.cb = add nuw i64 %.094, 1                    ; 2 uses
  %i.cc = load ptr, ptr %i.n, align 8, !tbaa !44  ; 2 uses
  %i.cd = load ptr, ptr %6, align 8, !tbaa !21    ; 3 uses
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = sdiv exact i64 %i.cg, 72
  %i.ci = icmp ult i64 %i.cb, %i.ch
  br i1 %i.ci, label %.noexc55, label %._crit_edge.loopexit, !llvm.loop !558

._crit_edge104:                                   ; preds = %._crit_edge101, %.noexc56.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge104, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn16Slice_x86_avx51219forward_bf16s_fp16sERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.6(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !28     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.h = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !28
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !28
  %i.k = load i32, ptr %i.a, align 4, !tbaa !28   ; 2 uses
  %.not66 = icmp sgt i32 %i.k, %i.j
  br i1 %.not66, label %._crit_edge68, label %.noexc42.lr.ph

.noexc42.lr.ph:                                   ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.o = sext i32 %i.k to i64
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !44
  %.pre71 = load ptr, ptr %4, align 8, !tbaa !21
  br label %.noexc42

.noexc42:                                         ; preds = %.noexc42.lr.ph, %._crit_edge
  %i.p = phi i32 [ %i.j, %.noexc42.lr.ph ], [ %i.y, %._crit_edge ]
  %i.q = phi ptr [ %.pre71, %.noexc42.lr.ph ], [ %i.z, %._crit_edge ] ; 4 uses
  %i.r = phi ptr [ %.pre, %.noexc42.lr.ph ], [ %i.aa, %._crit_edge ]
  %indvars.iv = phi i64 [ %i.o, %.noexc42.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %.not69 = icmp eq ptr %i.r, %i.q
  br i1 %.not69, label %._crit_edge, label %.noexc41.preheader

.noexc41.preheader:                               ; preds = %.noexc42
  %i.s = load ptr, ptr %3, align 8, !tbaa !18, !noalias !559
  %i.t = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !559
  %i.u = mul i64 %i.t, %indvars.iv
  %i.v = load i64, ptr %i.m, align 8, !tbaa !25, !noalias !559
  %i.w = mul i64 %i.u, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.w
  br label %.noexc41

._crit_edge.loopexit:                             ; preds = %.noexc41
  %.pre72 = load i32, ptr %i.b, align 4, !tbaa !28
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.noexc42
  %i.y = phi i32 [ %.pre72, %._crit_edge.loopexit ], [ %i.p, %.noexc42 ] ; 2 uses
  %i.z = phi ptr [ %i.bd, %._crit_edge.loopexit ], [ %i.q, %.noexc42 ]
  %i.aa = phi ptr [ %i.bc, %._crit_edge.loopexit ], [ %i.q, %.noexc42 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.ab = sext i32 %i.y to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.ab
  br i1 %.not.not, label %.noexc42, label %._crit_edge68

.noexc41:                                         ; preds = %.noexc41.preheader, %.noexc41
  %i.ac = phi ptr [ %i.bd, %.noexc41 ], [ %i.q, %.noexc41.preheader ]
  %.065 = phi i64 [ %i.bb, %.noexc41 ], [ 0, %.noexc41.preheader ] ; 2 uses
  %.03164 = phi ptr [ %i.ba, %.noexc41 ], [ %i.x, %.noexc41.preheader ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [72 x i8], ptr %i.ac, i64 %.065 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 44
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !43
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !53
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 52
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !177
  %i.ak = load ptr, ptr %i.ad, align 8, !tbaa !18, !noalias !562
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.am = load i64, ptr %i.al, align 8, !tbaa !20, !noalias !562
  %i.an = mul i64 %i.am, %indvars.iv
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !25, !noalias !562
  %i.aq = mul i64 %i.an, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.aq
  %i.as = mul nsw i32 %i.ah, %i.af
  %i.at = mul nsw i32 %i.as, %i.aj                ; 2 uses
  %i.au = sext i32 %i.at to i64
  %i.av = load i64, ptr %5, align 8, !tbaa !26
  %i.aw = mul i64 %i.av, %i.au
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.ar, ptr align 2 %.03164, i64 %i.aw, i1 false)
  %i.ax = load i32, ptr %6, align 4, !tbaa !28
  %i.ay = mul nsw i32 %i.ax, %i.at
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [2 x i8], ptr %.03164, i64 %i.az
  %i.bb = add nuw i64 %.065, 1                    ; 2 uses
  %i.bc = load ptr, ptr %i.n, align 8, !tbaa !44  ; 2 uses
  %i.bd = load ptr, ptr %4, align 8, !tbaa !21    ; 3 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = sdiv exact i64 %i.bg, 72
  %i.bi = icmp ult i64 %i.bb, %i.bh
  br i1 %i.bi, label %.noexc41, label %._crit_edge.loopexit, !llvm.loop !565

._crit_edge68:                                    ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge68, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr>, <16 x i1>, <16 x i32>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.smin.v16i32(<16 x i32>, <16 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v16i32(<16 x i32>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr>, <8 x i1>, <8 x i32>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v8i32(<8 x i32>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v16f32.v16p0(<16 x float>, <16 x ptr>, <16 x i1>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8f32.v8p0(<8 x float>, <8 x ptr>, <8 x i1>) #14

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #15 = { noreturn nounwind }
attributes #16 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"vtable pointer", !8, i64 0}
!11 = !{!12, !14, i64 8}
!12 = !{!"_ZTSN4ncnn3MatE", !13, i64 0, !14, i64 8, !15, i64 16, !6, i64 24, !16, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !15, i64 64}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"p1 int", !13, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 _ZTSN4ncnn9AllocatorE", !13, i64 0}
!17 = !{!12, !16, i64 32}
!18 = !{!12, !13, i64 0}
!19 = distinct !{null}
!20 = !{!12, !15, i64 64}
!21 = !{!22, !23, i64 0}
!22 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!23 = !{!"p1 _ZTSN4ncnn3MatE", !13, i64 0}
!24 = !{!12, !6, i64 40}
!25 = !{!12, !15, i64 16}
!26 = !{!15, !15, i64 0}
!27 = !{!12, !6, i64 24}
!28 = !{!6, !6, i64 0}
!29 = !{!30, !6, i64 352}
!30 = !{!"_ZTSN4ncnn5SliceE", !31, i64 0, !12, i64 208, !12, i64 280, !6, i64 352}
!31 = !{!"_ZTSN4ncnn5LayerE", !32, i64 8, !32, i64 9, !32, i64 10, !32, i64 11, !32, i64 12, !32, i64 13, !32, i64 14, !32, i64 15, !32, i64 16, !32, i64 17, !32, i64 18, !32, i64 19, !32, i64 20, !32, i64 21, !32, i64 22, !32, i64 23, !32, i64 24, !32, i64 25, !32, i64 26, !32, i64 27, !6, i64 28, !13, i64 32, !6, i64 40, !33, i64 48, !33, i64 80, !36, i64 112, !36, i64 136, !40, i64 160, !40, i64 184}
!32 = !{!"bool", !7, i64 0}
!33 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !34, i64 0, !15, i64 8, !7, i64 16}
!34 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !35, i64 0}
!35 = !{!"p1 omnipotent char", !13, i64 0}
!36 = !{!"_ZTSSt6vectorIiSaIiEE", !37, i64 0}
!37 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !38, i64 0}
!38 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !39, i64 0}
!39 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!40 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !41, i64 0}
!41 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !42, i64 0}
!42 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !22, i64 0}
!43 = !{!12, !6, i64 44}
!44 = !{!22, !23, i64 8}
!45 = !{!46, !32, i64 39}
!46 = !{!"_ZTSN4ncnn6OptionE", !32, i64 0, !32, i64 1, !32, i64 2, !32, i64 3, !6, i64 4, !16, i64 8, !16, i64 16, !6, i64 24, !32, i64 28, !32, i64 29, !32, i64 30, !32, i64 31, !32, i64 32, !32, i64 33, !32, i64 34, !32, i64 35, !32, i64 36, !32, i64 37, !32, i64 38, !32, i64 39, !6, i64 40, !32, i64 44, !32, i64 45, !32, i64 46, !32, i64 47, !7, i64 48, !32, i64 49, !32, i64 50, !32, i64 51, !32, i64 52, !32, i64 53, !32, i64 54, !32, i64 55, !32, i64 56, !32, i64 57, !32, i64 58, !32, i64 59, !32, i64 60, !32, i64 61, !32, i64 62, !32, i64 63}
!47 = !{i8 0, i8 2}
!48 = !{}
!49 = !{!46, !16, i64 8}
!50 = !{!12, !6, i64 56}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!12, !6, i64 48}
!54 = distinct !{!54, !52}
!55 = distinct !{!55, !52, !56, !57}
!56 = !{!"llvm.loop.isvectorized", i32 1}
!57 = !{!"llvm.loop.unroll.runtime.disable"}
!58 = !{!"branch_weights", i32 8, i32 56}
!59 = distinct !{!59, !52, !56, !57}
!60 = !{!13, !13, i64 0}
!61 = distinct !{!61, !52, !57, !56}
!62 = !{!63, !63, i64 0}
!63 = !{!"float", !7, i64 0}
!64 = distinct !{!64, !52}
!65 = distinct !{!65, !52}
!66 = !{!67}
!67 = distinct !{!67, !68}
!68 = distinct !{!68, !"LVerDomain"}
!69 = !{!70}
!70 = distinct !{!70, !68}
!71 = !{!72, !73, !74, !67}
!72 = distinct !{!72, !68}
!73 = distinct !{!73, !68}
!74 = distinct !{!74, !68}
!75 = !{!74}
!76 = !{!73}
!77 = !{!72}
!78 = distinct !{!78, !52, !56, !57}
!79 = distinct !{!79, !52, !56}
!80 = distinct !{!80, !52}
!81 = !{!82}
!82 = distinct !{!82, !83}
!83 = distinct !{!83, !"LVerDomain"}
!84 = !{!85}
!85 = distinct !{!85, !83}
!86 = !{!87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !82}
!87 = distinct !{!87, !83}
!88 = distinct !{!88, !83}
!89 = distinct !{!89, !83}
!90 = distinct !{!90, !83}
!91 = distinct !{!91, !83}
!92 = distinct !{!92, !83}
!93 = distinct !{!93, !83}
!94 = distinct !{!94, !83}
!95 = distinct !{!95, !83}
!96 = distinct !{!96, !83}
!97 = distinct !{!97, !83}
!98 = distinct !{!98, !83}
!99 = distinct !{!99, !83}
!100 = distinct !{!100, !83}
!101 = distinct !{!101, !83}
!102 = !{!101}
!103 = !{!100}
!104 = !{!99}
!105 = !{!98}
!106 = !{!97}
!107 = !{!96}
!108 = !{!95}
!109 = !{!94}
!110 = !{!93}
!111 = !{!92}
!112 = !{!91}
!113 = !{!90}
!114 = !{!89}
!115 = !{!88}
!116 = !{!87}
!117 = distinct !{!117, !52, !56, !57}
!118 = !{!"branch_weights", i32 8, i32 8}
!119 = distinct !{!119, !52, !56, !57}
!120 = distinct !{!120, !52, !56}
!121 = distinct !{!121, !52}
!122 = !{!123}
!123 = distinct !{!123, !124}
!124 = distinct !{!124, !"LVerDomain"}
!125 = !{!126}
!126 = distinct !{!126, !124}
!127 = !{!128}
!128 = distinct !{!128, !124}
!129 = !{!126, !123}
!130 = distinct !{!130, !52, !56, !57}
!131 = distinct !{!131, !52}
!132 = distinct !{!132, !52, !56}
!133 = !{!134}
!134 = distinct !{!134, !135}
!135 = distinct !{!135, !"LVerDomain"}
!136 = !{!137}
!137 = distinct !{!137, !135}
!138 = !{!139}
!139 = distinct !{!139, !135}
!140 = !{!141}
!141 = distinct !{!141, !135}
!142 = !{!143}
!143 = distinct !{!143, !135}
!144 = !{!145}
!145 = distinct !{!145, !135}
!146 = !{!147}
!147 = distinct !{!147, !135}
!148 = !{!149}
!149 = distinct !{!149, !135}
!150 = !{!151}
!151 = distinct !{!151, !135}
!152 = !{!149, !147, !145, !143, !141, !139, !137, !134}
!153 = distinct !{!153, !52, !56, !57}
end_hunk_4

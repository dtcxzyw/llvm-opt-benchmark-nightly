Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/diag?download=true
inline.NumInlined: 7
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK4ncnn4Diag7forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !39   ; 2 uses
  switch i32 %i.b, label %.critedge [
    i32 1, label %bb.b
    i32 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !40   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %i.i = tail call i32 @llvm.abs.i32(i32 %i.h, i1 true)
  %i.j = add nsw i32 %i.i, %i.f                   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !42
  tail call void @_ZN4ncnn3Mat6createEiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.j, i32 noundef %i.j, i64 noundef %i.d, ptr noundef %i.l)
  %i.m = load ptr, ptr %2, align 8, !tbaa !43     ; 7 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.critedge, label %_ZNK4ncnn3Mat5emptyEv.exit62

_ZNK4ncnn3Mat5emptyEv.exit62:                     ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.p = load i64, ptr %i.o, align 8, !tbaa !44   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.r = load i32, ptr %i.q, align 8, !tbaa !45   ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = mul i64 %i.p, %i.s
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit62
  %i.v = trunc i64 %i.p to i32
  %i.w = mul i32 %i.r, %i.v                       ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph.preheader, label %_ZN4ncnn3Mat4fillEf.exit

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.y = zext nneg i32 %i.w to i64
  %i.z = shl nuw nsw i64 %i.y, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.m, i8 0, i64 %i.z, i1 false), !tbaa !47
  br label %_ZN4ncnn3Mat4fillEf.exit

_ZN4ncnn3Mat4fillEf.exit:                         ; preds = %.lr.ph.preheader, %bb.c
  %i.aa = icmp sgt i32 %i.f, 0
  br i1 %i.aa, label %.lr.ph110, label %.critedge

.lr.ph110:                                        ; preds = %_ZN4ncnn3Mat4fillEf.exit
  %i.ab = load i32, ptr %i.g, align 8, !tbaa !48  ; 2 uses
  %.sroa.speculated99 = tail call i32 @llvm.smax.i32(i32 %i.ab, i32 0)
  %.sroa.speculated103 = tail call i32 @llvm.smin.i32(i32 %i.ab, i32 0)
  %i.ac = load ptr, ptr %1, align 8, !tbaa !43    ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !40
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !39
  %factor.op.mul = mul i64 %i.ah, %i.af           ; 5 uses
  %i.ai = sext i32 %.sroa.speculated103 to i64    ; 5 uses
  %i.aj = zext nneg i32 %.sroa.speculated99 to i64 ; 5 uses
  %wide.trip.count121 = zext nneg i32 %i.f to i64 ; 2 uses
  %xtraiter133 = and i64 %wide.trip.count121, 3   ; 3 uses
  %i.ak = icmp ult i32 %i.f, 4
  br i1 %i.ak, label %.epil.preheader, label %.lr.ph110.new

.lr.ph110.new:                                    ; preds = %.lr.ph110
  %unroll_iter = and i64 %wide.trip.count121, 2147483644
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph110.new
  %indvars.iv118 = phi i64 [ 0, %.lr.ph110.new ], [ %indvars.iv.next119.3, %bb.d ] ; 7 uses
  %niter = phi i64 [ 0, %.lr.ph110.new ], [ %niter.next.3, %bb.d ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv118
  %i.am = load float, ptr %i.al, align 4, !tbaa !47
  %i.an = sub nsw i64 %indvars.iv118, %i.ai
  %.reass = mul i64 %factor.op.mul, %i.an
  %i.ao = getelementptr inbounds nuw i8, ptr %i.m, i64 %.reass
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv118
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.aj
  store float %i.am, ptr %i.aq, align 4, !tbaa !47
  %indvars.iv.next119 = or disjoint i64 %indvars.iv118, 1 ; 3 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.next119
  %i.as = load float, ptr %i.ar, align 4, !tbaa !47
  %i.at = sub nsw i64 %indvars.iv.next119, %i.ai
  %.reass.1 = mul i64 %factor.op.mul, %i.at
  %i.au = getelementptr inbounds nuw i8, ptr %i.m, i64 %.reass.1
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.next119
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.aj
  store float %i.as, ptr %i.aw, align 4, !tbaa !47
  %indvars.iv.next119.1 = or disjoint i64 %indvars.iv118, 2 ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.next119.1
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !47
  %i.az = sub nsw i64 %indvars.iv.next119.1, %i.ai
  %.reass.2 = mul i64 %factor.op.mul, %i.az
  %i.ba = getelementptr inbounds nuw i8, ptr %i.m, i64 %.reass.2
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next119.1
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.aj
  store float %i.ay, ptr %i.bc, align 4, !tbaa !47
  %indvars.iv.next119.2 = or disjoint i64 %indvars.iv118, 3 ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.next119.2
  %i.be = load float, ptr %i.bd, align 4, !tbaa !47
  %i.bf = sub nsw i64 %indvars.iv.next119.2, %i.ai
  %.reass.3 = mul i64 %factor.op.mul, %i.bf
  %i.bg = getelementptr inbounds nuw i8, ptr %i.m, i64 %.reass.3
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.next119.2
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.aj
  store float %i.be, ptr %i.bi, align 4, !tbaa !47
  %indvars.iv.next119.3 = add nuw nsw i64 %indvars.iv118, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.critedge.loopexit.unr-lcssa, label %bb.d, !llvm.loop !28

bb.e:                                             ; preds = %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !40 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !50 ; 4 uses
  %i.bn = sub nsw i32 %i.bk, %i.bm                ; 2 uses
  %.sroa.speculated81 = tail call i32 @llvm.smin.i32(i32 %i.bn, i32 0)
  %.sroa.speculated75 = tail call i32 @llvm.smax.i32(i32 %i.bn, i32 0)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !27 ; 6 uses
  %.not = icmp sgt i32 %i.bp, %.sroa.speculated75 ; 2 uses
  %.not60 = icmp slt i32 %i.bp, %.sroa.speculated81 ; 2 uses
  %or.cond = or i1 %.not, %.not60
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.speculated89 = tail call i32 @llvm.smin.i32(i32 %i.bm, i32 %i.bk)
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.bq = sub nsw i32 0, %i.bm
  %i.br = icmp sgt i32 %i.bp, %i.bq
  %or.cond61 = and i1 %i.br, %.not60
  br i1 %or.cond61, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bs = add nsw i32 %i.bp, %i.bm
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  br i1 %.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bt = icmp slt i32 %i.bp, %i.bk
  %i.bu = sub nsw i32 %i.bk, %i.bp
  %spec.select = select i1 %i.bt, i32 %i.bu, i32 0
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.i, %bb.f
  %.049 = phi i32 [ %.sroa.speculated89, %bb.f ], [ %i.bs, %bb.h ], [ 0, %bb.i ], [ %spec.select, %bb.j ] ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !42
  tail call void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %.049, i64 noundef %i.d, ptr noundef %i.bw)
  %i.bx = load ptr, ptr %2, align 8, !tbaa !43    ; 9 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %.thread, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.k
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !44
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !45
  %i.cd = sext i32 %i.cc to i64
  %i.ce = mul i64 %i.ca, %i.cd
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %.thread, label %bb.l

.thread:                                          ; preds = %_ZNK4ncnn3Mat5emptyEv.exit, %bb.k
  %i.cg = icmp eq i32 %.049, 0
  %. = select i1 %i.cg, i32 0, i32 -100
  br label %.critedge

bb.l:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  %i.ch = icmp sgt i32 %.049, 0
  br i1 %i.ch, label %.lr.ph113, label %.critedge

.lr.ph113:                                        ; preds = %bb.l
  %i.ci = load i32, ptr %i.bo, align 8, !tbaa !48 ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.ci, i32 0)
  %.sroa.speculated71 = tail call i32 @llvm.smin.i32(i32 %i.ci, i32 0)
  %i.cj = load ptr, ptr %1, align 8, !tbaa !43    ; 11 uses
  %i.ck = load i32, ptr %i.bj, align 4, !tbaa !40
  %i.cl = sext i32 %i.ck to i64                   ; 2 uses
  %i.cm = load i64, ptr %i.c, align 8, !tbaa !39  ; 2 uses
  %factor.op.mul114 = mul i64 %i.cm, %i.cl        ; 10 uses
  %i.cn = sext i32 %.sroa.speculated71 to i64     ; 10 uses
  %i.co = zext nneg i32 %.sroa.speculated to i64  ; 10 uses
  %wide.trip.count = zext nneg i32 %.049 to i64   ; 7 uses
  %min.iters.check = icmp ult i32 %.049, 84
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph113
  %i.cp = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep = getelementptr i8, ptr %i.bx, i64 %i.cp
  %i.cq = add nsw i64 %wide.trip.count, -1
  %i.cr = add i64 %factor.op.mul114, 4
  %i.cs = mul i64 %i.cq, %i.cr
  %i.ct = shl nuw nsw i64 %i.co, 2                ; 2 uses
  %4 = mul i64 %i.cm, %i.cn
  %i.cu = mul i64 %4, %i.cl                       ; 2 uses
  %5 = add i64 %i.cs, %i.ct
  %i.cv = sub i64 %5, %i.cu
  %scevgep129 = getelementptr i8, ptr %i.cj, i64 %i.cv ; 4 uses
  %i.cw = sub i64 %i.ct, %i.cu
  %scevgep130 = getelementptr nuw i8, ptr %i.cj, i64 %i.cw ; 4 uses
  %i.cx = icmp ult ptr %scevgep129, %scevgep130
  %umin = select i1 %i.cx, ptr %scevgep129, ptr %scevgep130
  %i.cy = icmp ugt ptr %scevgep129, %scevgep130
  %umax = select i1 %i.cy, ptr %scevgep129, ptr %scevgep130
  %scevgep131 = getelementptr i8, ptr %umax, i64 4
  %bound0 = icmp ult ptr %i.bx, %scevgep131
  %bound1 = icmp ult ptr %umin, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %i.cz = or disjoint i64 %index, 1               ; 2 uses
  %i.da = or disjoint i64 %index, 2               ; 2 uses
  %i.db = or disjoint i64 %index, 3               ; 2 uses
  %i.dc = sub nsw i64 %index, %i.cn
  %i.dd = sub nsw i64 %i.cz, %i.cn
  %i.de = sub nsw i64 %i.da, %i.cn
  %i.df = sub nsw i64 %i.db, %i.cn
  %i.dg = mul i64 %factor.op.mul114, %i.dc
  %i.dh = mul i64 %factor.op.mul114, %i.dd
  %i.di = mul i64 %factor.op.mul114, %i.de
  %i.dj = mul i64 %factor.op.mul114, %i.df
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.dg
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.dh
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.di
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.dj
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %index
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.cz
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.da
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.db
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.co
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.co
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.co
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.co
  %i.dw = load float, ptr %i.ds, align 4, !tbaa !47, !alias.scope !51
  %i.dx = load float, ptr %i.dt, align 4, !tbaa !47, !alias.scope !51
  %i.dy = load float, ptr %i.du, align 4, !tbaa !47, !alias.scope !51
  %i.dz = load float, ptr %i.dv, align 4, !tbaa !47, !alias.scope !51
  %i.ea = insertelement <4 x float> poison, float %i.dw, i64 0
  %i.eb = insertelement <4 x float> %i.ea, float %i.dx, i64 1
  %i.ec = insertelement <4 x float> %i.eb, float %i.dy, i64 2
  %i.ed = insertelement <4 x float> %i.ec, float %i.dz, i64 3
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %index
  store <4 x float> %i.ed, ptr %i.ee, align 4, !tbaa !47, !alias.scope !52, !noalias !51
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ef = icmp eq i64 %index.next, %n.vec
  br i1 %i.ef, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.critedge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph113, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph113 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.eg = sub nsw i64 %indvars.iv.prol, %i.cn
  %.reass115.prol = mul i64 %factor.op.mul114, %i.eg
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.reass115.prol
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv.prol
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.co
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !47
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv.prol
  store float %i.ek, ptr %i.el, align 4, !tbaa !47
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !33

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.em = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.en = icmp ugt i64 %i.em, -4
  br i1 %i.en, label %.critedge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 7 uses
  %i.eo = sub nsw i64 %indvars.iv, %i.cn
  %.reass115 = mul i64 %factor.op.mul114, %i.eo
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.reass115
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %indvars.iv
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %i.co
  %i.es = load float, ptr %i.er, align 4, !tbaa !47
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv
  store float %i.es, ptr %i.et, align 4, !tbaa !47
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.eu = sub nsw i64 %indvars.iv.next, %i.cn
  %.reass115.1 = mul i64 %factor.op.mul114, %i.eu
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.reass115.1
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv.next
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.co
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !47
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv.next
  store float %i.ey, ptr %i.ez, align 4, !tbaa !47
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.fa = sub nsw i64 %indvars.iv.next.1, %i.cn
  %.reass115.2 = mul i64 %factor.op.mul114, %i.fa
  %i.fb = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.reass115.2
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %indvars.iv.next.1
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.co
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !47
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv.next.1
  store float %i.fe, ptr %i.ff, align 4, !tbaa !47
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 3 uses
  %i.fg = sub nsw i64 %indvars.iv.next.2, %i.cn
  %.reass115.3 = mul i64 %factor.op.mul114, %i.fg
  %i.fh = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.reass115.3
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv.next.2
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.co
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !47
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv.next.2
  store float %i.fk, ptr %i.fl, align 4, !tbaa !47
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.critedge, label %scalar.ph, !llvm.loop !34

.critedge.loopexit.unr-lcssa:                     ; preds = %bb.d
  %lcmp.mod134.not = icmp eq i64 %xtraiter133, 0
  br i1 %lcmp.mod134.not, label %.critedge, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge.loopexit.unr-lcssa, %.lr.ph110
  %indvars.iv118.epil.init = phi i64 [ 0, %.lr.ph110 ], [ %indvars.iv.next119.3, %.critedge.loopexit.unr-lcssa ]
  %lcmp.mod135 = icmp ne i64 %xtraiter133, 0
  tail call void @llvm.assume(i1 %lcmp.mod135)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader
  %indvars.iv118.epil = phi i64 [ %indvars.iv118.epil.init, %.epil.preheader ], [ %indvars.iv.next119.epil, %bb.m ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.m ]
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv118.epil
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !47
  %i.fo = sub nsw i64 %indvars.iv118.epil, %i.ai
  %.reass.epil = mul i64 %factor.op.mul, %i.fo
  %i.fp = getelementptr inbounds nuw i8, ptr %i.m, i64 %.reass.epil
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %indvars.iv118.epil
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.aj
  store float %i.fn, ptr %i.fr, align 4, !tbaa !47
  %indvars.iv.next119.epil = add nuw nsw i64 %indvars.iv118.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter133
  br i1 %epil.iter.cmp.not, label %.critedge, label %bb.m, !llvm.loop !35

.critedge:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %.critedge.loopexit.unr-lcssa, %bb.m, %middle.block, %bb.l, %_ZN4ncnn3Mat4fillEf.exit, %bb.a, %bb.b, %.thread, %_ZNK4ncnn3Mat5emptyEv.exit62
  %.3 = phi i32 [ -100, %_ZNK4ncnn3Mat5emptyEv.exit62 ], [ -100, %bb.b ], [ %., %.thread ], [ 0, %_ZN4ncnn3Mat4fillEf.exit ], [ 0, %bb.a ], [ 0, %bb.l ], [ 0, %middle.block ], [ 0, %.critedge.loopexit.unr-lcssa ], [ 0, %bb.m ], [ 0, %scalar.ph ], [ 0, %scalar.ph.prol.loopexit ]
  ret i32 %.3
}

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #3

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERNS_3MatERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn4DiagC2Ev(ptr noundef nonnull align 8 dereferenceable(212) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN4ncnn5LayerC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn4DiagE, i64 16), ptr %0, align 8, !tbaa !57
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.a, align 8, !tbaa !58
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.b, align 1, !tbaa !59
  ret void
}

declare void @_ZN4ncnn5LayerC2Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #3

declare noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4ncnn3Mat6createEiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

end_hunk_0

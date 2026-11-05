Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/fpu_helper?download=true
inline.NumInlined: 830
inline.NumDeleted: 121
loop-unroll.NumCompletelyUnrolled: 540
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 552
begin_hunk_0_@helper_psrldq_ymm:bb.a
  %cmp.n120 = icmp eq i64 %n.vec114, %i.ap
  br i1 %cmp.n120, label %.split27.us, label %..preheader_crit_edge.us.preheader

..preheader_crit_edge.us.preheader:               ; preds = %vector.scevcheck92, %vector.memcheck95, %vec.epilog.iter.check109, %vec.epilog.middle.block119
  %indvars.iv.135.ph = phi i64 [ 0, %vector.scevcheck92 ], [ 0, %vector.memcheck95 ], [ %n.vec100, %vec.epilog.iter.check109 ], [ %n.vec114, %vec.epilog.middle.block119 ] ; 4 uses
  %xtraiter150 = and i64 %i.ap, 1
  %lcmp.mod151.not = icmp eq i64 %xtraiter150, 0
  br i1 %lcmp.mod151.not, label %..preheader_crit_edge.us.prol.loopexit, label %..preheader_crit_edge.us.prol

..preheader_crit_edge.us.prol:                    ; preds = %..preheader_crit_edge.us.preheader
  %i.hb = trunc nuw nsw i64 %indvars.iv.135.ph to i32
  %i.hc = add nuw i32 %i.hb, 16                   ; 2 uses
  %i.hd = add i32 %i.hc, %spec.store.select
  %i.he = sext i32 %i.hd to i64
  %i.hf = getelementptr inbounds i8, ptr %2, i64 %i.he
  %i.hg = load i8, ptr %i.hf, align 1
  %i.hh = sext i32 %i.hc to i64
  %i.hi = getelementptr inbounds i8, ptr %1, i64 %i.hh
  store i8 %i.hg, ptr %i.hi, align 1
  %indvars.iv.next.136.prol = or disjoint i64 %indvars.iv.135.ph, 1
  br label %..preheader_crit_edge.us.prol.loopexit

..preheader_crit_edge.us.prol.loopexit:           ; preds = %..preheader_crit_edge.us.prol, %..preheader_crit_edge.us.preheader
  %indvars.iv.135.unr = phi i64 [ %indvars.iv.135.ph, %..preheader_crit_edge.us.preheader ], [ %indvars.iv.next.136.prol, %..preheader_crit_edge.us.prol ]
  %i.hj = add nsw i64 %i.ap, -1
  %i.hk = icmp eq i64 %indvars.iv.135.ph, %i.hj
  br i1 %i.hk, label %.split27.us, label %..preheader_crit_edge.us

..preheader_crit_edge.us:                         ; preds = %..preheader_crit_edge.us.prol.loopexit, %..preheader_crit_edge.us
  %indvars.iv.135 = phi i64 [ %indvars.iv.next.136.1, %..preheader_crit_edge.us ], [ %indvars.iv.135.unr, %..preheader_crit_edge.us.prol.loopexit ] ; 3 uses
  %i.hl = trunc i64 %indvars.iv.135 to i32
  %i.hm = add i32 %i.hl, 16                       ; 2 uses
  %i.hn = add i32 %i.hm, %spec.store.select
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr inbounds i8, ptr %2, i64 %i.ho
  %i.hq = load i8, ptr %i.hp, align 1
  %i.hr = sext i32 %i.hm to i64
  %i.hs = getelementptr inbounds i8, ptr %1, i64 %i.hr
  store i8 %i.hq, ptr %i.hs, align 1
  %i.ht = trunc i64 %indvars.iv.135 to i32
  %i.hu = add i32 %i.ht, 17                       ; 2 uses
  %i.hv = add i32 %i.hu, %spec.store.select
  %i.hw = sext i32 %i.hv to i64
  %i.hx = getelementptr inbounds i8, ptr %2, i64 %i.hw
  %i.hy = load i8, ptr %i.hx, align 1
  %i.hz = sext i32 %i.hu to i64
  %i.ia = getelementptr inbounds i8, ptr %1, i64 %i.hz
  store i8 %i.hy, ptr %i.ia, align 1
  %indvars.iv.next.136.1 = add nuw nsw i64 %indvars.iv.135, 2 ; 2 uses
  %exitcond.137.not.1 = icmp eq i64 %indvars.iv.next.136.1, %i.ap
  br i1 %exitcond.137.not.1, label %.split27.us, label %..preheader_crit_edge.us, !llvm.loop !71

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %vec.epilog.scalar.ph ], [ %indvars.iv.1.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ib = shl i64 %indvars.iv.1, 32
  %sext = add i64 %i.ib, 68719476736
  %i.ic = ashr exact i64 %sext, 32
  %i.id = getelementptr inbounds i8, ptr %1, i64 %i.ic
  store i8 0, ptr %i.id, align 1
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.1, 1 ; 2 uses
  %i.ie = and i64 %indvars.iv.next.1, 4294967295
  %exitcond.1.not = icmp eq i64 %i.ie, 16
  br i1 %exitcond.1.not, label %.split27.us, label %vec.epilog.scalar.ph, !llvm.loop !72

.split27.us:                                      ; preds = %vec.epilog.scalar.ph, %..preheader_crit_edge.us.prol.loopexit, %..preheader_crit_edge.us, %..preheader_crit_edge.us.us.1, %middle.block, %vec.epilog.middle.block, %middle.block106, %vec.epilog.middle.block119, %middle.block131, %vec.epilog.middle.block143
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_pslldq_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #16 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = load i32, ptr %3, align 8                ; 4 uses
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %i.c, i32 16) ; 23 uses
  %.not21 = icmp sgt i32 %i.c, 15
  br i1 %.not21, label %.preheader20.us.preheader, label %.split

.preheader20.us.preheader:                        ; preds = %bb.a
  %i.d = add nsw i32 %spec.store.select, -1
  %i.e = zext i32 %i.d to i64
  %i.f = shl nuw nsw i64 %i.e, 1
  %i.g = add nuw nsw i64 %i.f, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, i8 0, i64 %i.g, i1 false)
  br label %.split27.us.split

.split:                                           ; preds = %bb.a
  %i.h = icmp sgt i32 %i.c, 0
  br i1 %i.h, label %.preheader20.us28.preheader, label %iter.check

iter.check:                                       ; preds = %.split
  %i.i = sext i32 %spec.store.select to i64       ; 5 uses
  %i.j = sub nsw i64 16, %i.i                     ; 12 uses
  %i.k = sub nsw i64 15, %i.i                     ; 2 uses
  %i.l = sub i32 15, %spec.store.select           ; 2 uses
  %i.m = trunc i64 %i.k to i32
  %i.n = sub i32 %i.l, %i.m
  %i.o = icmp sgt i32 %i.n, %i.l
  %i.p = icmp ugt i64 %i.k, 4294967295
  %i.q = or i1 %i.o, %i.p
  br i1 %i.q, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.r = sub i32 15, %spec.store.select
  %i.s = sext i32 %i.r to i64
  %i.t = add i64 %i.a, %i.s
  %i.u = sub i64 %i.t, %i.b
  %i.v = add i64 %i.u, -16
  %diff.check = icmp ult i64 %i.v, 31
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check = icmp ult i64 %i.j, 32
  br i1 %min.iters.check, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.w = and i64 %i.j, 24
  %n.vec = and i64 %i.j, -32                      ; 4 uses
  %i.x = sub nsw i64 15, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = sub i64 15, %index                       ; 2 uses
  %i.z = trunc nsw i64 %i.y to i32
  %i.aa = sub i32 %i.z, %spec.store.select
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds i8, ptr %2, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -15
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 -31
  %wide.load = load <16 x i8>, ptr %i.ad, align 1
  %wide.load53 = load <16 x i8>, ptr %i.ae, align 1
  %i.af = getelementptr inbounds i8, ptr %1, i64 %i.y ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -15
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 -31
  store <16 x i8> %wide.load, ptr %i.ag, align 1
  store <16 x i8> %wide.load53, ptr %i.ah, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !73

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %vector.scevcheck59, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.w, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !18

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec54 = and i64 %i.j, -8                     ; 3 uses
  %i.aj = sub nsw i64 15, %n.vec54
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index55 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next57, %vec.epilog.vector.body ] ; 2 uses
  %i.ak = sub i64 15, %index55                    ; 2 uses
  %i.al = trunc nsw i64 %i.ak to i32
  %i.am = sub i32 %i.al, %spec.store.select
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds i8, ptr %2, i64 %i.an
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -7
  %wide.load56 = load <8 x i8>, ptr %i.ap, align 1
  %i.aq = getelementptr inbounds i8, ptr %1, i64 %i.ak
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -7
  store <8 x i8> %wide.load56, ptr %i.ar, align 1
  %index.next57 = add nuw i64 %index55, 8         ; 2 uses
  %i.as = icmp eq i64 %index.next57, %n.vec54
  br i1 %i.as, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !74

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n58 = icmp eq i64 %i.j, %n.vec54
  br i1 %cmp.n58, label %vector.scevcheck59, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 15, %iter.check ], [ 15, %vector.memcheck ], [ %i.x, %vec.epilog.iter.check ], [ %i.aj, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.preheader20.us28.preheader:                      ; preds = %.split
  %i.at = zext nneg i32 %spec.store.select to i64 ; 2 uses
  %narrow = sub nuw nsw i32 16, %spec.store.select ; 2 uses
  %i.au = zext nneg i32 %narrow to i64            ; 4 uses
  %xtraiter = and i64 %i.au, 3                    ; 3 uses
  %i.av = add nsw i32 %spec.store.select, -13
  %i.aw = icmp ult i32 %i.av, 3
  br i1 %i.aw, label %.epil.preheader, label %.preheader20.us28.preheader.new

.preheader20.us28.preheader.new:                  ; preds = %.preheader20.us28.preheader
  %unroll_iter = and i64 %i.au, 28
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader20.us28.preheader.new
  %indvars.iv39 = phi i64 [ 15, %.preheader20.us28.preheader.new ], [ %indvars.iv.next40.3, %bb.b ] ; 6 uses
  %niter = phi i64 [ 0, %.preheader20.us28.preheader.new ], [ %niter.next.3, %bb.b ]
  %i.ax = trunc nsw i64 %indvars.iv39 to i32
  %i.ay = sub i32 %i.ax, %spec.store.select
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds i8, ptr %2, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = getelementptr inbounds i8, ptr %1, i64 %indvars.iv39
  store i8 %i.bb, ptr %i.bc, align 1
  %indvars.iv.next40 = add nsw i64 %indvars.iv39, -1 ; 2 uses
  %i.bd = trunc nsw i64 %indvars.iv.next40 to i32
  %i.be = sub i32 %i.bd, %spec.store.select
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds i8, ptr %2, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.next40
  store i8 %i.bh, ptr %i.bi, align 1
  %indvars.iv.next40.197 = add nsw i64 %indvars.iv39, -2 ; 2 uses
  %i.bj = trunc nsw i64 %indvars.iv.next40.197 to i32
  %i.bk = sub i32 %i.bj, %spec.store.select
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds i8, ptr %2, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.next40.197
  store i8 %i.bn, ptr %i.bo, align 1
  %indvars.iv.next40.2 = add nsw i64 %indvars.iv39, -3 ; 2 uses
  %i.bp = trunc nsw i64 %indvars.iv.next40.2 to i32
  %i.bq = sub i32 %i.bp, %spec.store.select
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds i8, ptr %2, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.next40.2
  store i8 %i.bt, ptr %i.bu, align 1
  %indvars.iv.next40.3 = add nsw i64 %indvars.iv39, -4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %..preheader_crit_edge.us.preheader.unr-lcssa, label %bb.b, !llvm.loop !75

..preheader_crit_edge.us.preheader.unr-lcssa:     ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %..preheader_crit_edge.us.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %..preheader_crit_edge.us.preheader.unr-lcssa, %.preheader20.us28.preheader
  %indvars.iv39.epil.init = phi i64 [ 15, %.preheader20.us28.preheader ], [ %indvars.iv.next40.3, %..preheader_crit_edge.us.preheader.unr-lcssa ]
  %lcmp.mod95 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod95)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv39.epil = phi i64 [ %indvars.iv.next40.epil, %bb.c ], [ %indvars.iv39.epil.init, %.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bb.c ], [ 0, %.epil.preheader ]
  %i.bv = trunc nsw i64 %indvars.iv39.epil to i32
  %i.bw = sub i32 %i.bv, %spec.store.select
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds i8, ptr %2, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1
  %i.ca = getelementptr inbounds i8, ptr %1, i64 %indvars.iv39.epil
  store i8 %i.bz, ptr %i.ca, align 1
  %indvars.iv.next40.epil = add nsw i64 %indvars.iv39.epil, -1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %..preheader_crit_edge.us.preheader, label %bb.c, !llvm.loop !76

..preheader_crit_edge.us.preheader:               ; preds = %bb.c, %..preheader_crit_edge.us.preheader.unr-lcssa
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %1, i8 0, i64 range(i64 0, 17) %i.at, i1 false)
  %xtraiter99 = and i64 %i.au, 1
  %i.cb = icmp eq i32 %i.c, 15
  br i1 %i.cb, label %.epil.preheader98, label %..preheader_crit_edge.us.preheader.new

..preheader_crit_edge.us.preheader.new:           ; preds = %..preheader_crit_edge.us.preheader
  %unroll_iter103 = and i64 %i.au, 30
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %..preheader_crit_edge.us.preheader.new
  %indvars.iv39.1 = phi i64 [ 15, %..preheader_crit_edge.us.preheader.new ], [ %indvars.iv.next40.1.1, %bb.d ] ; 3 uses
  %niter104 = phi i64 [ 0, %..preheader_crit_edge.us.preheader.new ], [ %niter104.next.1, %bb.d ]
  %i.cc = add nuw nsw i64 %indvars.iv39.1, 16     ; 2 uses
  %i.cd = trunc nsw i64 %i.cc to i32
  %i.ce = sub i32 %i.cd, %spec.store.select
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds i8, ptr %2, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1
  %i.ci = getelementptr inbounds i8, ptr %1, i64 %i.cc
  store i8 %i.ch, ptr %i.ci, align 1
  %i.cj = add nsw i64 %indvars.iv39.1, 15         ; 2 uses
  %i.ck = trunc nsw i64 %i.cj to i32
  %i.cl = sub i32 %i.ck, %spec.store.select
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds i8, ptr %2, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1
  %i.cp = getelementptr inbounds i8, ptr %1, i64 %i.cj
  store i8 %i.co, ptr %i.cp, align 1
  %indvars.iv.next40.1.1 = add nsw i64 %indvars.iv39.1, -2 ; 2 uses
  %niter104.next.1 = add i64 %niter104, 2         ; 2 uses
  %niter104.ncmp.1.not = icmp eq i64 %niter104.next.1, %unroll_iter103
  br i1 %niter104.ncmp.1.not, label %..preheader_crit_edge.us.preheader.1.unr-lcssa, label %bb.d, !llvm.loop !75

..preheader_crit_edge.us.preheader.1.unr-lcssa:   ; preds = %bb.d
  %lcmp.mod101.not = icmp eq i64 %xtraiter99, 0
  br i1 %lcmp.mod101.not, label %..preheader_crit_edge.us.preheader.1, label %.epil.preheader98

.epil.preheader98:                                ; preds = %..preheader_crit_edge.us.preheader.1.unr-lcssa, %..preheader_crit_edge.us.preheader
  %indvars.iv39.1.epil.init = phi i64 [ 15, %..preheader_crit_edge.us.preheader ], [ %indvars.iv.next40.1.1, %..preheader_crit_edge.us.preheader.1.unr-lcssa ]
  %lcmp.mod102 = trunc i32 %narrow to i1
  tail call void @llvm.assume(i1 %lcmp.mod102)
  %i.cq = add nuw nsw i64 %indvars.iv39.1.epil.init, 16 ; 2 uses
  %i.cr = trunc nsw i64 %i.cq to i32
  %i.cs = sub i32 %i.cr, %spec.store.select
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds i8, ptr %2, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1
  %i.cw = getelementptr inbounds i8, ptr %1, i64 %i.cq
  store i8 %i.cv, ptr %i.cw, align 1
  br label %..preheader_crit_edge.us.preheader.1

..preheader_crit_edge.us.preheader.1:             ; preds = %..preheader_crit_edge.us.preheader.1.unr-lcssa, %.epil.preheader98
  %scevgep.1 = getelementptr i8, ptr %1, i64 16
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep.1, i8 0, i64 range(i64 0, 17) %i.at, i1 false)
  br label %.split27.us.split

..preheader_crit_edge:                            ; preds = %..preheader_crit_edge.preheader, %..preheader_crit_edge
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %..preheader_crit_edge ], [ %indvars.iv.1.ph, %..preheader_crit_edge.preheader ] ; 3 uses
  %i.cx = add nsw i64 %indvars.iv.1, 16           ; 2 uses
  %i.cy = trunc nsw i64 %i.cx to i32
  %i.cz = sub i32 %i.cy, %spec.store.select
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds i8, ptr %2, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1
  %i.dd = getelementptr inbounds i8, ptr %1, i64 %i.cx
  store i8 %i.dc, ptr %i.dd, align 1
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.1, -1
  %.not.1.not = icmp sgt i64 %indvars.iv.1, %i.i
  br i1 %.not.1.not, label %..preheader_crit_edge, label %.split27.us.split, !llvm.loop !77

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.de = trunc nsw i64 %indvars.iv to i32
  %i.df = sub i32 %i.de, %spec.store.select
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds i8, ptr %2, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1
  %i.dj = getelementptr inbounds i8, ptr %1, i64 %indvars.iv
  store i8 %i.di, ptr %i.dj, align 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not.not = icmp sgt i64 %indvars.iv, %i.i
  br i1 %.not.not, label %vec.epilog.scalar.ph, label %vector.scevcheck59, !llvm.loop !78

vector.scevcheck59:                               ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block
  %i.dk = sub nsw i64 15, %i.i                    ; 2 uses
  %i.dl = sub i32 31, %spec.store.select          ; 2 uses
  %i.dm = trunc i64 %i.dk to i32
  %i.dn = sub i32 %i.dl, %i.dm
  %i.do = icmp sgt i32 %i.dn, %i.dl
  %i.dp = icmp ugt i64 %i.dk, 4294967295
  %i.dq = or i1 %i.do, %i.dp
  br i1 %i.dq, label %..preheader_crit_edge.preheader, label %vector.memcheck62

vector.memcheck62:                                ; preds = %vector.scevcheck59
  %i.dr = sub i32 31, %spec.store.select
  %i.ds = sext i32 %i.dr to i64
  %i.dt = add i64 %i.a, %i.ds
  %i.du = sub i64 %i.dt, %i.b
  %i.dv = add i64 %i.du, -32
  %diff.check63 = icmp ult i64 %i.dv, 31
  br i1 %diff.check63, label %..preheader_crit_edge.preheader, label %vector.main.loop.iter.check64

vector.main.loop.iter.check64:                    ; preds = %vector.memcheck62
  %min.iters.check65 = icmp ult i64 %i.j, 32
  br i1 %min.iters.check65, label %vec.epilog.ph79, label %vector.ph66

vector.ph66:                                      ; preds = %vector.main.loop.iter.check64
  %i.dw = and i64 %i.j, 24
  %n.vec67 = and i64 %i.j, -32                    ; 4 uses
  %i.dx = sub nsw i64 15, %n.vec67
  br label %vector.body68

vector.body68:                                    ; preds = %vector.ph66, %vector.body68
  %index69 = phi i64 [ 0, %vector.ph66 ], [ %index.next72, %vector.body68 ] ; 2 uses
  %i.dy = sub i64 31, %index69                    ; 2 uses
  %i.dz = trunc nsw i64 %i.dy to i32
  %i.ea = sub i32 %i.dz, %spec.store.select
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds i8, ptr %2, i64 %i.eb ; 2 uses
  %i.ed = getelementptr inbounds i8, ptr %i.ec, i64 -15
  %i.ee = getelementptr inbounds i8, ptr %i.ec, i64 -31
  %wide.load70 = load <16 x i8>, ptr %i.ed, align 1
  %wide.load71 = load <16 x i8>, ptr %i.ee, align 1
  %i.ef = getelementptr inbounds i8, ptr %1, i64 %i.dy ; 2 uses
  %i.eg = getelementptr inbounds i8, ptr %i.ef, i64 -15
  %i.eh = getelementptr inbounds i8, ptr %i.ef, i64 -31
  store <16 x i8> %wide.load70, ptr %i.eg, align 1
  store <16 x i8> %wide.load71, ptr %i.eh, align 1
  %index.next72 = add nuw i64 %index69, 32        ; 2 uses
  %i.ei = icmp eq i64 %index.next72, %n.vec67
  br i1 %i.ei, label %middle.block73, label %vector.body68, !llvm.loop !79

middle.block73:                                   ; preds = %vector.body68
  %cmp.n74 = icmp eq i64 %i.j, %n.vec67
  br i1 %cmp.n74, label %.split27.us.split, label %vec.epilog.iter.check76

vec.epilog.iter.check76:                          ; preds = %middle.block73
  %min.epilog.iters.check78 = icmp eq i64 %i.dw, 0
  br i1 %min.epilog.iters.check78, label %..preheader_crit_edge.preheader, label %vec.epilog.ph79, !prof !18

vec.epilog.ph79:                                  ; preds = %vector.main.loop.iter.check64, %vec.epilog.iter.check76
  %vec.epilog.resume.val80 = phi i64 [ %n.vec67, %vec.epilog.iter.check76 ], [ 0, %vector.main.loop.iter.check64 ]
  %n.vec81 = and i64 %i.j, -8                     ; 3 uses
  %i.ej = sub nsw i64 15, %n.vec81
  br label %vec.epilog.vector.body82

vec.epilog.vector.body82:                         ; preds = %vec.epilog.vector.body82, %vec.epilog.ph79
  %index83 = phi i64 [ %vec.epilog.resume.val80, %vec.epilog.ph79 ], [ %index.next85, %vec.epilog.vector.body82 ] ; 2 uses
  %i.ek = sub i64 31, %index83                    ; 2 uses
  %i.el = trunc nsw i64 %i.ek to i32
  %i.em = sub i32 %i.el, %spec.store.select
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds i8, ptr %2, i64 %i.en
  %i.ep = getelementptr inbounds i8, ptr %i.eo, i64 -7
  %wide.load84 = load <8 x i8>, ptr %i.ep, align 1
  %i.eq = getelementptr inbounds i8, ptr %1, i64 %i.ek
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 -7
  store <8 x i8> %wide.load84, ptr %i.er, align 1
  %index.next85 = add nuw i64 %index83, 8         ; 2 uses
  %i.es = icmp eq i64 %index.next85, %n.vec81
  br i1 %i.es, label %vec.epilog.middle.block86, label %vec.epilog.vector.body82, !llvm.loop !80

vec.epilog.middle.block86:                        ; preds = %vec.epilog.vector.body82
  %cmp.n87 = icmp eq i64 %i.j, %n.vec81
  br i1 %cmp.n87, label %.split27.us.split, label %..preheader_crit_edge.preheader

..preheader_crit_edge.preheader:                  ; preds = %vector.scevcheck59, %vector.memcheck62, %vec.epilog.iter.check76, %vec.epilog.middle.block86
  %indvars.iv.1.ph = phi i64 [ 15, %vector.scevcheck59 ], [ 15, %vector.memcheck62 ], [ %i.dx, %vec.epilog.iter.check76 ], [ %i.ej, %vec.epilog.middle.block86 ]
  br label %..preheader_crit_edge

.split27.us.split:                                ; preds = %..preheader_crit_edge, %middle.block73, %vec.epilog.middle.block86, %..preheader_crit_edge.us.preheader.1, %.preheader20.us.preheader
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_pmulhuw_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %3 to i64                  ; 2 uses
  %i.c = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.d = add i64 %i.c, 32
  %i.e = add i64 %i.b, 32
  %i.f = add i64 %i.a, 32                         ; 2 uses
  %rt.bound0 = icmp ugt i64 %i.d, %i.a
  %rt.bound1 = icmp ugt i64 %i.f, %i.c
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.bound010 = icmp ugt i64 %i.e, %i.a
  %rt.bound111 = icmp ugt i64 %i.f, %i.b
  %rt.conflict12 = and i1 %rt.bound010, %rt.bound111
  %rt.conflict.all = or i1 %rt.conflict, %rt.conflict12
  br i1 %rt.conflict.all, label %.rtscalar, label %.rtvec, !prof !19

.rtvec:                                           ; preds = %bb.a
  %i.g = load <8 x i16>, ptr %2, align 2
  %i.h = load <8 x i16>, ptr %3, align 2
  %i.i = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.g, <8 x i16> %i.h)
  store <8 x i16> %i.i, ptr %1, align 2
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load <8 x i16>, ptr %i.j, align 2
  %i.n = load <8 x i16>, ptr %i.k, align 2
  %i.o = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.m, <8 x i16> %i.n)
  store <8 x i16> %i.o, ptr %i.l, align 2
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.a
  %i.p = load i16, ptr %2, align 2
  %i.q = load i16, ptr %3, align 2
  %i.r = tail call i16 @llvm.umulh.i16(i16 %i.p, i16 %i.q)
  store i16 %i.r, ptr %1, align 2
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.t = load i16, ptr %i.s, align 2
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.v = load i16, ptr %i.u, align 2
  %i.w = tail call i16 @llvm.umulh.i16(i16 %i.t, i16 %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 %i.w, ptr %i.x, align 2
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.z = load i16, ptr %i.y, align 2
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ab = load i16, ptr %i.aa, align 2
  %i.ac = tail call i16 @llvm.umulh.i16(i16 %i.z, i16 %i.ab)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i16 %i.ac, ptr %i.ad, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.ah = load i16, ptr %i.ag, align 2
  %i.ai = tail call i16 @llvm.umulh.i16(i16 %i.af, i16 %i.ah)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i16 %i.ai, ptr %i.aj, align 2
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.al = load i16, ptr %i.ak, align 2
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.an = load i16, ptr %i.am, align 2
  %i.ao = tail call i16 @llvm.umulh.i16(i16 %i.al, i16 %i.an)
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i16 %i.ao, ptr %i.ap, align 2
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ar = load i16, ptr %i.aq, align 2
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.at = load i16, ptr %i.as, align 2
  %i.au = tail call i16 @llvm.umulh.i16(i16 %i.ar, i16 %i.at)
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i16 %i.au, ptr %i.av, align 2
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ax = load i16, ptr %i.aw, align 2
end_hunk_0

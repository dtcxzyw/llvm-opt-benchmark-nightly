Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/fpu_helper?download=true
inline.NumInlined: 830
inline.NumDeleted: 121
loop-unroll.NumCompletelyUnrolled: 540
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 554
begin_hunk_0_@helper_psrldq_ymm:bb.a
  %i.ff = ashr exact i64 %sext57, 32
  %i.fg = getelementptr inbounds i8, ptr %1, i64 %i.ff
  store i8 0, ptr %i.fg, align 1
  %indvars.iv.next44.1 = add nuw nsw i64 %indvars.iv43.1, 1 ; 2 uses
  %i.fh = and i64 %indvars.iv.next44.1, 4294967295
  %exitcond46.1.not = icmp eq i64 %i.fh, 16
  br i1 %exitcond46.1.not, label %.split27.us, label %..preheader_crit_edge.us.us.1, !llvm.loop !71

.preheader21.us.preheader:                        ; preds = %.preheader21.us.preheader.prol.loopexit, %.preheader21.us.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next.1150, %.preheader21.us.preheader ], [ %indvars.iv.unr, %.preheader21.us.preheader.prol.loopexit ] ; 4 uses
  %i.fi = trunc nuw i64 %indvars.iv to i32
  %i.fj = add i32 %spec.store.select, %i.fi
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr inbounds i8, ptr %2, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1
  %sext55 = shl i64 %indvars.iv, 32
  %i.fn = ashr exact i64 %sext55, 32
  %i.fo = getelementptr inbounds i8, ptr %1, i64 %i.fn
  store i8 %i.fm, ptr %i.fo, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fp = trunc nuw i64 %indvars.iv.next to i32
  %i.fq = add i32 %spec.store.select, %i.fp
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds i8, ptr %2, i64 %i.fr
  %i.ft = load i8, ptr %i.fs, align 1
  %sext55.1 = shl i64 %indvars.iv.next, 32
  %i.fu = ashr exact i64 %sext55.1, 32
  %i.fv = getelementptr inbounds i8, ptr %1, i64 %i.fu
  store i8 %i.ft, ptr %i.fv, align 1
  %indvars.iv.next.1150 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1150, %i.ap
  br i1 %exitcond.not.1, label %vector.scevcheck92, label %.preheader21.us.preheader, !llvm.loop !72

vector.scevcheck92:                               ; preds = %.preheader21.us.preheader.prol.loopexit, %.preheader21.us.preheader, %middle.block77, %vec.epilog.middle.block90
  %i.fw = add nsw i64 %i.ap, -1                   ; 2 uses
  %i.fx = trunc nsw i64 %i.fw to i32
  %i.fy = icmp ugt i64 %i.fw, 2147483631
  %i.fz = add nsw i32 %spec.store.select, 16      ; 2 uses
  %i.ga = add i32 %i.fz, %i.fx
  %i.gb = icmp slt i32 %i.ga, %i.fz
  %i.gc = or i1 %i.gb, %i.fy
  br i1 %i.gc, label %..preheader_crit_edge.us.preheader, label %vector.memcheck93

vector.memcheck93:                                ; preds = %vector.scevcheck92
  %i.gd = tail call i32 @llvm.smin.i32(i32 %i.c, i32 16)
  %smin94 = sext i32 %i.gd to i64
  %i.ge = add i64 %i.a, %smin94
  %i.gf = sub i64 %i.ge, %i.b
  %diff.check95 = icmp ugt i64 %i.gf, -32
  br i1 %diff.check95, label %..preheader_crit_edge.us.preheader, label %vector.main.loop.iter.check97

vector.main.loop.iter.check97:                    ; preds = %vector.memcheck93
  %min.iters.check98 = icmp ult i32 %i.d, 32
  br i1 %min.iters.check98, label %vec.epilog.ph113, label %vector.ph99

vector.ph99:                                      ; preds = %vector.main.loop.iter.check97
  %i.gg = and i64 %i.ap, 28
  %n.vec100 = and i64 %i.ap, 2147483616           ; 4 uses
  br label %vector.body101

vector.body101:                                   ; preds = %vector.ph99, %vector.body101
  %index102 = phi i64 [ 0, %vector.ph99 ], [ %index.next105, %vector.body101 ] ; 2 uses
  %i.gh = trunc i64 %index102 to i32
  %i.gi = or disjoint i32 %i.gh, 16               ; 2 uses
  %i.gj = add i32 %i.gi, %spec.store.select
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr inbounds i8, ptr %2, i64 %i.gk ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %wide.load103.a = load <16 x i8>, ptr %i.gl, align 1
  %wide.load104 = load <16 x i8>, ptr %i.gm, align 1
  %i.gn = sext i32 %i.gi to i64
  %i.go = getelementptr inbounds i8, ptr %1, i64 %i.gn ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  store <16 x i8> %wide.load103.a, ptr %i.go, align 1
  store <16 x i8> %wide.load104, ptr %i.gp, align 1
  %index.next105 = add nuw i64 %index102, 32      ; 2 uses
  %i.gq = icmp eq i64 %index.next105, %n.vec100
  br i1 %i.gq, label %middle.block106, label %vector.body101, !llvm.loop !73

middle.block106:                                  ; preds = %vector.body101
  %cmp.n107 = icmp eq i64 %n.vec100, %i.ap
  br i1 %cmp.n107, label %.split27.us, label %vec.epilog.iter.check111

vec.epilog.iter.check111:                         ; preds = %middle.block106
  %min.epilog.iters.check112 = icmp eq i64 %i.gg, 0
  br i1 %min.epilog.iters.check112, label %..preheader_crit_edge.us.preheader, label %vec.epilog.ph113, !prof !16

vec.epilog.ph113:                                 ; preds = %vector.main.loop.iter.check97, %vec.epilog.iter.check111
  %vec.epilog.resume.val108 = phi i64 [ %n.vec100, %vec.epilog.iter.check111 ], [ 0, %vector.main.loop.iter.check97 ]
  %n.vec114 = and i64 %i.ap, 2147483644           ; 3 uses
  br label %vec.epilog.vector.body115

vec.epilog.vector.body115:                        ; preds = %vec.epilog.vector.body115, %vec.epilog.ph113
  %index116 = phi i64 [ %vec.epilog.resume.val108, %vec.epilog.ph113 ], [ %index.next118, %vec.epilog.vector.body115 ] ; 2 uses
  %i.gr = trunc i64 %index116 to i32
  %i.gs = add i32 %i.gr, 16                       ; 2 uses
  %i.gt = add i32 %i.gs, %spec.store.select
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr inbounds i8, ptr %2, i64 %i.gu
  %wide.load117 = load <4 x i8>, ptr %i.gv, align 1
  %i.gw = sext i32 %i.gs to i64
  %i.gx = getelementptr inbounds i8, ptr %1, i64 %i.gw
  store <4 x i8> %wide.load117, ptr %i.gx, align 1
  %index.next118 = add nuw i64 %index116, 4       ; 2 uses
  %i.gy = icmp eq i64 %index.next118, %n.vec114
  br i1 %i.gy, label %vec.epilog.middle.block119, label %vec.epilog.vector.body115, !llvm.loop !74

vec.epilog.middle.block119:                       ; preds = %vec.epilog.vector.body115
  %cmp.n120 = icmp eq i64 %n.vec114, %i.ap
  br i1 %cmp.n120, label %.split27.us, label %..preheader_crit_edge.us.preheader

..preheader_crit_edge.us.preheader:               ; preds = %vector.scevcheck92, %vector.memcheck93, %vec.epilog.iter.check111, %vec.epilog.middle.block119
  %indvars.iv.135.ph = phi i64 [ 0, %vector.scevcheck92 ], [ 0, %vector.memcheck93 ], [ %n.vec100, %vec.epilog.iter.check111 ], [ %n.vec114, %vec.epilog.middle.block119 ] ; 4 uses
  %xtraiter151 = and i64 %i.ap, 1
  %lcmp.mod152.not = icmp eq i64 %xtraiter151, 0
  br i1 %lcmp.mod152.not, label %..preheader_crit_edge.us.prol.loopexit, label %..preheader_crit_edge.us.prol

..preheader_crit_edge.us.prol:                    ; preds = %..preheader_crit_edge.us.preheader
  %i.gz = trunc nuw nsw i64 %indvars.iv.135.ph to i32
  %i.ha = add nuw i32 %i.gz, 16                   ; 2 uses
  %i.hb = add i32 %i.ha, %spec.store.select
  %i.hc = sext i32 %i.hb to i64
  %i.hd = getelementptr inbounds i8, ptr %2, i64 %i.hc
  %i.he = load i8, ptr %i.hd, align 1
  %i.hf = sext i32 %i.ha to i64
  %i.hg = getelementptr inbounds i8, ptr %1, i64 %i.hf
  store i8 %i.he, ptr %i.hg, align 1
  %indvars.iv.next.136.prol = or disjoint i64 %indvars.iv.135.ph, 1
  br label %..preheader_crit_edge.us.prol.loopexit

..preheader_crit_edge.us.prol.loopexit:           ; preds = %..preheader_crit_edge.us.prol, %..preheader_crit_edge.us.preheader
  %indvars.iv.135.unr = phi i64 [ %indvars.iv.135.ph, %..preheader_crit_edge.us.preheader ], [ %indvars.iv.next.136.prol, %..preheader_crit_edge.us.prol ]
  %i.hh = add nsw i64 %i.ap, -1
  %i.hi = icmp eq i64 %indvars.iv.135.ph, %i.hh
  br i1 %i.hi, label %.split27.us, label %..preheader_crit_edge.us

..preheader_crit_edge.us:                         ; preds = %..preheader_crit_edge.us.prol.loopexit, %..preheader_crit_edge.us
  %indvars.iv.135 = phi i64 [ %indvars.iv.next.136.1, %..preheader_crit_edge.us ], [ %indvars.iv.135.unr, %..preheader_crit_edge.us.prol.loopexit ] ; 3 uses
  %i.hj = trunc i64 %indvars.iv.135 to i32
  %i.hk = add i32 %i.hj, 16                       ; 2 uses
  %i.hl = add i32 %i.hk, %spec.store.select
  %i.hm = sext i32 %i.hl to i64
  %i.hn = getelementptr inbounds i8, ptr %2, i64 %i.hm
  %i.ho = load i8, ptr %i.hn, align 1
  %i.hp = sext i32 %i.hk to i64
  %i.hq = getelementptr inbounds i8, ptr %1, i64 %i.hp
  store i8 %i.ho, ptr %i.hq, align 1
  %i.hr = trunc i64 %indvars.iv.135 to i32
  %i.hs = add i32 %i.hr, 17                       ; 2 uses
  %i.ht = add i32 %i.hs, %spec.store.select
  %i.hu = sext i32 %i.ht to i64
  %i.hv = getelementptr inbounds i8, ptr %2, i64 %i.hu
  %i.hw = load i8, ptr %i.hv, align 1
  %i.hx = sext i32 %i.hs to i64
  %i.hy = getelementptr inbounds i8, ptr %1, i64 %i.hx
  store i8 %i.hw, ptr %i.hy, align 1
  %indvars.iv.next.136.1 = add nuw nsw i64 %indvars.iv.135, 2 ; 2 uses
  %exitcond.137.not.1 = icmp eq i64 %indvars.iv.next.136.1, %i.ap
  br i1 %exitcond.137.not.1, label %.split27.us, label %..preheader_crit_edge.us, !llvm.loop !75

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %vec.epilog.scalar.ph ], [ %indvars.iv.1.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.hz = shl i64 %indvars.iv.1, 32
  %sext = add i64 %i.hz, 68719476736
  %i.ia = ashr exact i64 %sext, 32
  %i.ib = getelementptr inbounds i8, ptr %1, i64 %i.ia
  store i8 0, ptr %i.ib, align 1
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.1, 1 ; 2 uses
  %i.ic = and i64 %indvars.iv.next.1, 4294967295
  %exitcond.1.not = icmp eq i64 %i.ic, 16
  br i1 %exitcond.1.not, label %.split27.us, label %vec.epilog.scalar.ph, !llvm.loop !76

.split27.us:                                      ; preds = %vec.epilog.scalar.ph, %..preheader_crit_edge.us.prol.loopexit, %..preheader_crit_edge.us, %..preheader_crit_edge.us.us.1, %middle.block, %vec.epilog.middle.block, %middle.block106, %vec.epilog.middle.block119, %middle.block131, %vec.epilog.middle.block144
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_pslldq_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #16 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %2 to i64                  ; 2 uses
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
  %i.t = add i64 %i.b, %i.s
  %i.u = sub i64 %i.t, %i.a
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
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !77

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %vector.scevcheck60, label %vec.epilog.iter.check

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
  br i1 %i.as, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !78

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n58 = icmp eq i64 %i.j, %n.vec54
  br i1 %cmp.n58, label %vector.scevcheck60, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 15, %iter.check ], [ 15, %vector.memcheck ], [ %i.x, %vec.epilog.iter.check ], [ %i.aj, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.preheader20.us28.preheader:                      ; preds = %.split
  %i.at = zext nneg i32 %spec.store.select to i64 ; 2 uses
  %narrow = sub nuw nsw i32 16, %spec.store.select ; 2 uses
  %4 = zext nneg i32 %narrow to i64               ; 4 uses
  %xtraiter = and i64 %4, 3                       ; 3 uses
  %i.au = add nsw i32 %spec.store.select, -13
  %i.av = icmp ult i32 %i.au, 3
  br i1 %i.av, label %.epil.preheader, label %.preheader20.us28.preheader.new

.preheader20.us28.preheader.new:                  ; preds = %.preheader20.us28.preheader
  %unroll_iter = and i64 %4, 28
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader20.us28.preheader.new
  %indvars.iv39 = phi i64 [ 15, %.preheader20.us28.preheader.new ], [ %indvars.iv.next40.3, %bb.b ] ; 6 uses
  %niter = phi i64 [ 0, %.preheader20.us28.preheader.new ], [ %niter.next.3, %bb.b ]
  %i.aw = trunc nsw i64 %indvars.iv39 to i32
  %i.ax = sub i32 %i.aw, %spec.store.select
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds i8, ptr %2, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = getelementptr inbounds i8, ptr %1, i64 %indvars.iv39
  store i8 %i.ba, ptr %i.bb, align 1
  %indvars.iv.next40 = add nsw i64 %indvars.iv39, -1 ; 2 uses
  %i.bc = trunc nsw i64 %indvars.iv.next40 to i32
  %i.bd = sub i32 %i.bc, %spec.store.select
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds i8, ptr %2, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.next40
  store i8 %i.bg, ptr %i.bh, align 1
  %indvars.iv.next40.197 = add nsw i64 %indvars.iv39, -2 ; 2 uses
  %i.bi = trunc nsw i64 %indvars.iv.next40.197 to i32
  %i.bj = sub i32 %i.bi, %spec.store.select
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds i8, ptr %2, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.next40.197
  store i8 %i.bm, ptr %i.bn, align 1
  %indvars.iv.next40.2 = add nsw i64 %indvars.iv39, -3 ; 2 uses
  %i.bo = trunc nsw i64 %indvars.iv.next40.2 to i32
  %i.bp = sub i32 %i.bo, %spec.store.select
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds i8, ptr %2, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1
  %i.bt = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.next40.2
  store i8 %i.bs, ptr %i.bt, align 1
  %indvars.iv.next40.3 = add nsw i64 %indvars.iv39, -4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %..preheader_crit_edge.us.preheader.unr-lcssa, label %bb.b, !llvm.loop !79

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
  %i.bu = trunc nsw i64 %indvars.iv39.epil to i32
  %i.bv = sub i32 %i.bu, %spec.store.select
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds i8, ptr %2, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1
  %i.bz = getelementptr inbounds i8, ptr %1, i64 %indvars.iv39.epil
  store i8 %i.by, ptr %i.bz, align 1
  %indvars.iv.next40.epil = add nsw i64 %indvars.iv39.epil, -1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %..preheader_crit_edge.us.preheader, label %bb.c, !llvm.loop !80

..preheader_crit_edge.us.preheader:               ; preds = %bb.c, %..preheader_crit_edge.us.preheader.unr-lcssa
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %1, i8 0, i64 %i.at, i1 false)
  %xtraiter99 = and i64 %4, 1
  %i.ca = icmp eq i32 %i.c, 15
  br i1 %i.ca, label %.epil.preheader98, label %..preheader_crit_edge.us.preheader.new

..preheader_crit_edge.us.preheader.new:           ; preds = %..preheader_crit_edge.us.preheader
  %unroll_iter103 = and i64 %4, 30
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %..preheader_crit_edge.us.preheader.new
  %indvars.iv39.1 = phi i64 [ 15, %..preheader_crit_edge.us.preheader.new ], [ %indvars.iv.next40.1.1, %bb.d ] ; 3 uses
  %niter104 = phi i64 [ 0, %..preheader_crit_edge.us.preheader.new ], [ %niter104.next.1, %bb.d ]
  %i.cb = add nuw nsw i64 %indvars.iv39.1, 16     ; 2 uses
  %i.cc = trunc nsw i64 %i.cb to i32
  %i.cd = sub i32 %i.cc, %spec.store.select
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds i8, ptr %2, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = getelementptr inbounds i8, ptr %1, i64 %i.cb
  store i8 %i.cg, ptr %i.ch, align 1
  %i.ci = add nsw i64 %indvars.iv39.1, 15         ; 2 uses
  %i.cj = trunc nsw i64 %i.ci to i32
  %i.ck = sub i32 %i.cj, %spec.store.select
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds i8, ptr %2, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1
  %i.co = getelementptr inbounds i8, ptr %1, i64 %i.ci
  store i8 %i.cn, ptr %i.co, align 1
  %indvars.iv.next40.1.1 = add nsw i64 %indvars.iv39.1, -2 ; 2 uses
  %niter104.next.1 = add i64 %niter104, 2         ; 2 uses
  %niter104.ncmp.1.not = icmp eq i64 %niter104.next.1, %unroll_iter103
  br i1 %niter104.ncmp.1.not, label %..preheader_crit_edge.us.preheader.1.unr-lcssa, label %bb.d, !llvm.loop !79

..preheader_crit_edge.us.preheader.1.unr-lcssa:   ; preds = %bb.d
  %lcmp.mod101.not = icmp eq i64 %xtraiter99, 0
  br i1 %lcmp.mod101.not, label %..preheader_crit_edge.us.preheader.1, label %.epil.preheader98

.epil.preheader98:                                ; preds = %..preheader_crit_edge.us.preheader.1.unr-lcssa, %..preheader_crit_edge.us.preheader
  %indvars.iv39.1.epil.init = phi i64 [ 15, %..preheader_crit_edge.us.preheader ], [ %indvars.iv.next40.1.1, %..preheader_crit_edge.us.preheader.1.unr-lcssa ]
  %lcmp.mod102 = trunc i32 %narrow to i1
  tail call void @llvm.assume(i1 %lcmp.mod102)
  %i.cp = add nuw nsw i64 %indvars.iv39.1.epil.init, 16 ; 2 uses
  %i.cq = trunc nsw i64 %i.cp to i32
  %i.cr = sub i32 %i.cq, %spec.store.select
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds i8, ptr %2, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1
  %i.cv = getelementptr inbounds i8, ptr %1, i64 %i.cp
  store i8 %i.cu, ptr %i.cv, align 1
  br label %..preheader_crit_edge.us.preheader.1

..preheader_crit_edge.us.preheader.1:             ; preds = %..preheader_crit_edge.us.preheader.1.unr-lcssa, %.epil.preheader98
  %scevgep.1 = getelementptr i8, ptr %1, i64 16
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep.1, i8 0, i64 %i.at, i1 false)
  br label %.split27.us.split

..preheader_crit_edge:                            ; preds = %..preheader_crit_edge.preheader, %..preheader_crit_edge
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %..preheader_crit_edge ], [ %indvars.iv.1.ph, %..preheader_crit_edge.preheader ] ; 3 uses
  %i.cw = add nsw i64 %indvars.iv.1, 16           ; 2 uses
  %i.cx = trunc nsw i64 %i.cw to i32
  %i.cy = sub i32 %i.cx, %spec.store.select
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds i8, ptr %2, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1
  %i.dc = getelementptr inbounds i8, ptr %1, i64 %i.cw
  store i8 %i.db, ptr %i.dc, align 1
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.1, -1
  %.not.1.not = icmp sgt i64 %indvars.iv.1, %i.i
  br i1 %.not.1.not, label %..preheader_crit_edge, label %.split27.us.split, !llvm.loop !81

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.dd = trunc nsw i64 %indvars.iv to i32
  %i.de = sub i32 %i.dd, %spec.store.select
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds i8, ptr %2, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1
  %i.di = getelementptr inbounds i8, ptr %1, i64 %indvars.iv
  store i8 %i.dh, ptr %i.di, align 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not.not = icmp sgt i64 %indvars.iv, %i.i
  br i1 %.not.not, label %vec.epilog.scalar.ph, label %vector.scevcheck60, !llvm.loop !82

vector.scevcheck60:                               ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block
  %i.dj = sub nsw i64 15, %i.i                    ; 2 uses
  %i.dk = sub i32 31, %spec.store.select          ; 2 uses
  %i.dl = trunc i64 %i.dj to i32
  %i.dm = sub i32 %i.dk, %i.dl
  %i.dn = icmp sgt i32 %i.dm, %i.dk
  %i.do = icmp ugt i64 %i.dj, 4294967295
  %i.dp = or i1 %i.dn, %i.do
  br i1 %i.dp, label %..preheader_crit_edge.preheader, label %vector.memcheck61

vector.memcheck61:                                ; preds = %vector.scevcheck60
  %i.dq = sub i32 31, %spec.store.select
  %i.dr = sext i32 %i.dq to i64
  %i.ds = add i64 %i.b, %i.dr
  %i.dt = sub i64 %i.ds, %i.a
  %i.du = add i64 %i.dt, -32
  %diff.check62 = icmp ult i64 %i.du, 31
  br i1 %diff.check62, label %..preheader_crit_edge.preheader, label %vector.main.loop.iter.check64

vector.main.loop.iter.check64:                    ; preds = %vector.memcheck61
  %min.iters.check65 = icmp ult i64 %i.j, 32
  br i1 %min.iters.check65, label %vec.epilog.ph80, label %vector.ph66

vector.ph66:                                      ; preds = %vector.main.loop.iter.check64
  %i.dv = and i64 %i.j, 24
  %n.vec67 = and i64 %i.j, -32                    ; 4 uses
  %i.dw = sub nsw i64 15, %n.vec67
  br label %vector.body68

vector.body68:                                    ; preds = %vector.ph66, %vector.body68
  %index69 = phi i64 [ 0, %vector.ph66 ], [ %index.next72, %vector.body68 ] ; 2 uses
  %i.dx = sub i64 31, %index69                    ; 2 uses
  %i.dy = trunc nsw i64 %i.dx to i32
  %i.dz = sub i32 %i.dy, %spec.store.select
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds i8, ptr %2, i64 %i.ea ; 2 uses
  %i.ec = getelementptr inbounds i8, ptr %i.eb, i64 -15
  %i.ed = getelementptr inbounds i8, ptr %i.eb, i64 -31
  %wide.load70.a = load <16 x i8>, ptr %i.ec, align 1
  %wide.load71 = load <16 x i8>, ptr %i.ed, align 1
  %i.ee = getelementptr inbounds i8, ptr %1, i64 %i.dx ; 2 uses
  %i.ef = getelementptr inbounds i8, ptr %i.ee, i64 -15
  %i.eg = getelementptr inbounds i8, ptr %i.ee, i64 -31
  store <16 x i8> %wide.load70.a, ptr %i.ef, align 1
  store <16 x i8> %wide.load71, ptr %i.eg, align 1
  %index.next72 = add nuw i64 %index69, 32        ; 2 uses
  %i.eh = icmp eq i64 %index.next72, %n.vec67
  br i1 %i.eh, label %middle.block73, label %vector.body68, !llvm.loop !83

middle.block73:                                   ; preds = %vector.body68
  %cmp.n74 = icmp eq i64 %i.j, %n.vec67
  br i1 %cmp.n74, label %.split27.us.split, label %vec.epilog.iter.check78

vec.epilog.iter.check78:                          ; preds = %middle.block73
  %min.epilog.iters.check79 = icmp eq i64 %i.dv, 0
  br i1 %min.epilog.iters.check79, label %..preheader_crit_edge.preheader, label %vec.epilog.ph80, !prof !18

vec.epilog.ph80:                                  ; preds = %vector.main.loop.iter.check64, %vec.epilog.iter.check78
  %vec.epilog.resume.val75 = phi i64 [ %n.vec67, %vec.epilog.iter.check78 ], [ 0, %vector.main.loop.iter.check64 ]
  %n.vec81 = and i64 %i.j, -8                     ; 3 uses
  %i.ei = sub nsw i64 15, %n.vec81
  br label %vec.epilog.vector.body82

vec.epilog.vector.body82:                         ; preds = %vec.epilog.vector.body82, %vec.epilog.ph80
  %index83 = phi i64 [ %vec.epilog.resume.val75, %vec.epilog.ph80 ], [ %index.next85, %vec.epilog.vector.body82 ] ; 2 uses
  %i.ej = sub i64 31, %index83                    ; 2 uses
  %i.ek = trunc nsw i64 %i.ej to i32
  %i.el = sub i32 %i.ek, %spec.store.select
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds i8, ptr %2, i64 %i.em
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 -7
  %wide.load84 = load <8 x i8>, ptr %i.eo, align 1
  %i.ep = getelementptr inbounds i8, ptr %1, i64 %i.ej
  %i.eq = getelementptr inbounds i8, ptr %i.ep, i64 -7
  store <8 x i8> %wide.load84, ptr %i.eq, align 1
  %index.next85 = add nuw i64 %index83, 8         ; 2 uses
  %i.er = icmp eq i64 %index.next85, %n.vec81
  br i1 %i.er, label %vec.epilog.middle.block86, label %vec.epilog.vector.body82, !llvm.loop !84

vec.epilog.middle.block86:                        ; preds = %vec.epilog.vector.body82
  %cmp.n87 = icmp eq i64 %i.j, %n.vec81
  br i1 %cmp.n87, label %.split27.us.split, label %..preheader_crit_edge.preheader

..preheader_crit_edge.preheader:                  ; preds = %vector.scevcheck60, %vector.memcheck61, %vec.epilog.iter.check78, %vec.epilog.middle.block86
  %indvars.iv.1.ph = phi i64 [ 15, %vector.scevcheck60 ], [ 15, %vector.memcheck61 ], [ %i.dw, %vec.epilog.iter.check78 ], [ %i.ei, %vec.epilog.middle.block86 ]
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
  %i.h = zext <8 x i16> %i.g to <8 x i32>
  %i.i = load <8 x i16>, ptr %3, align 2
  %i.j = zext <8 x i16> %i.i to <8 x i32>
  %i.k = mul nuw <8 x i32> %i.j, %i.h
  %i.l = lshr <8 x i32> %i.k, splat (i32 16)
  %i.m = trunc nuw <8 x i32> %i.l to <8 x i16>
  store <8 x i16> %i.m, ptr %1, align 2
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load <8 x i16>, ptr %i.n, align 2
  %i.r = zext <8 x i16> %i.q to <8 x i32>
  %i.s = load <8 x i16>, ptr %i.o, align 2
  %i.t = zext <8 x i16> %i.s to <8 x i32>
  %i.u = mul nuw <8 x i32> %i.t, %i.r
  %i.v = lshr <8 x i32> %i.u, splat (i32 16)
  %i.w = trunc nuw <8 x i32> %i.v to <8 x i16>
  store <8 x i16> %i.w, ptr %i.p, align 2
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.a
  %i.x = load i16, ptr %2, align 2
  %i.y = zext i16 %i.x to i32
  %i.z = load i16, ptr %3, align 2
  %i.aa = zext i16 %i.z to i32
  %i.ab = mul nuw i32 %i.aa, %i.y
  %i.ac = lshr i32 %i.ab, 16
  %i.ad = trunc nuw i32 %i.ac to i16
  store i16 %i.ad, ptr %1, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = zext i16 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.ai = load i16, ptr %i.ah, align 2
  %i.aj = zext i16 %i.ai to i32
  %i.ak = mul nuw i32 %i.aj, %i.ag
  %i.al = lshr i32 %i.ak, 16
  %i.am = trunc nuw i32 %i.al to i16
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 %i.am, ptr %i.an, align 2
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ap = load i16, ptr %i.ao, align 2
  %i.aq = zext i16 %i.ap to i32
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.as = load i16, ptr %i.ar, align 2
  %i.at = zext i16 %i.as to i32
  %i.au = mul nuw i32 %i.at, %i.aq
  %i.av = lshr i32 %i.au, 16
  %i.aw = trunc nuw i32 %i.av to i16
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i16 %i.aw, ptr %i.ax, align 2
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.az = load i16, ptr %i.ay, align 2
  %i.ba = zext i16 %i.az to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.bc = load i16, ptr %i.bb, align 2
  %i.bd = zext i16 %i.bc to i32
  %i.be = mul nuw i32 %i.bd, %i.ba
  %i.bf = lshr i32 %i.be, 16
  %i.bg = trunc nuw i32 %i.bf to i16
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i16 %i.bg, ptr %i.bh, align 2
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bj = load i16, ptr %i.bi, align 2
  %i.bk = zext i16 %i.bj to i32
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bm = load i16, ptr %i.bl, align 2
  %i.bn = zext i16 %i.bm to i32
  %i.bo = mul nuw i32 %i.bn, %i.bk
  %i.bp = lshr i32 %i.bo, 16
  %i.bq = trunc nuw i32 %i.bp to i16
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i16 %i.bq, ptr %i.br, align 2
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bt = load i16, ptr %i.bs, align 2
  %i.bu = zext i16 %i.bt to i32
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.bw = load i16, ptr %i.bv, align 2
  %i.bx = zext i16 %i.bw to i32
  %i.by = mul nuw i32 %i.bx, %i.bu
  %i.bz = lshr i32 %i.by, 16
  %i.ca = trunc nuw i32 %i.bz to i16
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i16 %i.ca, ptr %i.cb, align 2
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.cd = load i16, ptr %i.cc, align 2
  %i.ce = zext i16 %i.cd to i32
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.cg = load i16, ptr %i.cf, align 2
  %i.ch = zext i16 %i.cg to i32
  %i.ci = mul nuw i32 %i.ch, %i.ce
  %i.cj = lshr i32 %i.ci, 16
  %i.ck = trunc nuw i32 %i.cj to i16
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i16 %i.ck, ptr %i.cl, align 2
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.cn = load i16, ptr %i.cm, align 2
  %i.co = zext i16 %i.cn to i32
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 14
  %i.cq = load i16, ptr %i.cp, align 2
  %i.cr = zext i16 %i.cq to i32
  %i.cs = mul nuw i32 %i.cr, %i.co
  %i.ct = lshr i32 %i.cs, 16
  %i.cu = trunc nuw i32 %i.ct to i16
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i16 %i.cu, ptr %i.cv, align 2
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cx = load i16, ptr %i.cw, align 2
  %i.cy = zext i16 %i.cx to i32
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.da = load i16, ptr %i.cz, align 2
  %i.db = zext i16 %i.da to i32
  %i.dc = mul nuw i32 %i.db, %i.cy
  %i.dd = lshr i32 %i.dc, 16
  %i.de = trunc nuw i32 %i.dd to i16
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i16 %i.de, ptr %i.df, align 2
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 18
  %i.dh = load i16, ptr %i.dg, align 2
  %i.di = zext i16 %i.dh to i32
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 18
  %i.dk = load i16, ptr %i.dj, align 2
  %i.dl = zext i16 %i.dk to i32
  %i.dm = mul nuw i32 %i.dl, %i.di
  %i.dn = lshr i32 %i.dm, 16
  %i.do = trunc nuw i32 %i.dn to i16
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i16 %i.do, ptr %i.dp, align 2
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.dr = load i16, ptr %i.dq, align 2
  %i.ds = zext i16 %i.dr to i32
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.du = load i16, ptr %i.dt, align 2
  %i.dv = zext i16 %i.du to i32
  %i.dw = mul nuw i32 %i.dv, %i.ds
  %i.dx = lshr i32 %i.dw, 16
  %i.dy = trunc nuw i32 %i.dx to i16
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i16 %i.dy, ptr %i.dz, align 2
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 22
  %i.eb = load i16, ptr %i.ea, align 2
  %i.ec = zext i16 %i.eb to i32
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 22
  %i.ee = load i16, ptr %i.ed, align 2
  %i.ef = zext i16 %i.ee to i32
  %i.eg = mul nuw i32 %i.ef, %i.ec
  %i.eh = lshr i32 %i.eg, 16
  %i.ei = trunc nuw i32 %i.eh to i16
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 22
  store i16 %i.ei, ptr %i.ej, align 2
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.el = load i16, ptr %i.ek, align 2
  %i.em = zext i16 %i.el to i32
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.eo = load i16, ptr %i.en, align 2
  %i.ep = zext i16 %i.eo to i32
  %i.eq = mul nuw i32 %i.ep, %i.em
  %i.er = lshr i32 %i.eq, 16
  %i.es = trunc nuw i32 %i.er to i16
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i16 %i.es, ptr %i.et, align 2
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 26
  %i.ev = load i16, ptr %i.eu, align 2
  %i.ew = zext i16 %i.ev to i32
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 26
  %i.ey = load i16, ptr %i.ex, align 2
  %i.ez = zext i16 %i.ey to i32
  %i.fa = mul nuw i32 %i.ez, %i.ew
  %i.fb = lshr i32 %i.fa, 16
  %i.fc = trunc nuw i32 %i.fb to i16
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 26
  store i16 %i.fc, ptr %i.fd, align 2
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.ff = load i16, ptr %i.fe, align 2
end_hunk_0

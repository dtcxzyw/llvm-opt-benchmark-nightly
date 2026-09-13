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

vector.body101:                                   ; preds = %vector.body101, %vector.ph99
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

..preheader_crit_edge.us.preheader:               ; preds = %vector.memcheck93, %vector.scevcheck92, %vec.epilog.iter.check111, %vec.epilog.middle.block119
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
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %i.c, i32 16) ; 22 uses
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

vector.body:                                      ; preds = %vector.body, %vector.ph
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

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 15, %iter.check ], [ 15, %vector.memcheck ], [ %i.x, %vec.epilog.iter.check ], [ %i.aj, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.preheader20.us28.preheader:                      ; preds = %.split
  %i.at = zext nneg i32 %spec.store.select to i64 ; 2 uses
  %i.au = tail call i32 @llvm.umin.i32(i32 %spec.store.select, i32 15)
  %umin = zext nneg i32 %i.au to i64              ; 2 uses
  %i.av = sub nuw nsw i64 16, %umin               ; 5 uses
  %i.aw = xor i64 %umin, 15
  %xtraiter = and i64 %i.av, 3                    ; 3 uses
  %i.ax = icmp samesign ult i64 %i.aw, 3
  br i1 %i.ax, label %.epil.preheader, label %.preheader20.us28.preheader.new

.preheader20.us28.preheader.new:                  ; preds = %.preheader20.us28.preheader
  %unroll_iter = and i64 %i.av, 28
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader20.us28.preheader.new
  %indvars.iv39 = phi i64 [ 15, %.preheader20.us28.preheader.new ], [ %indvars.iv.next40.3, %bb.b ] ; 6 uses
  %niter = phi i64 [ 0, %.preheader20.us28.preheader.new ], [ %niter.next.3, %bb.b ]
  %i.ay = trunc nsw i64 %indvars.iv39 to i32
  %i.az = sub i32 %i.ay, %spec.store.select
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds i8, ptr %2, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = getelementptr inbounds i8, ptr %1, i64 %indvars.iv39
  store i8 %i.bc, ptr %i.bd, align 1
  %indvars.iv.next40 = add nsw i64 %indvars.iv39, -1 ; 2 uses
  %i.be = trunc nsw i64 %indvars.iv.next40 to i32
  %i.bf = sub i32 %i.be, %spec.store.select
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds i8, ptr %2, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.next40
  store i8 %i.bi, ptr %i.bj, align 1
  %indvars.iv.next40.197 = add nsw i64 %indvars.iv39, -2 ; 2 uses
  %i.bk = trunc nsw i64 %indvars.iv.next40.197 to i32
  %i.bl = sub i32 %i.bk, %spec.store.select
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds i8, ptr %2, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.next40.197
  store i8 %i.bo, ptr %i.bp, align 1
  %indvars.iv.next40.2 = add nsw i64 %indvars.iv39, -3 ; 2 uses
  %i.bq = trunc nsw i64 %indvars.iv.next40.2 to i32
  %i.br = sub i32 %i.bq, %spec.store.select
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds i8, ptr %2, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.next40.2
  store i8 %i.bu, ptr %i.bv, align 1
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
  %i.bw = trunc nsw i64 %indvars.iv39.epil to i32
  %i.bx = sub i32 %i.bw, %spec.store.select
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds i8, ptr %2, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = getelementptr inbounds i8, ptr %1, i64 %indvars.iv39.epil
  store i8 %i.ca, ptr %i.cb, align 1
  %indvars.iv.next40.epil = add nsw i64 %indvars.iv39.epil, -1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %..preheader_crit_edge.us.preheader, label %bb.c, !llvm.loop !80

..preheader_crit_edge.us.preheader:               ; preds = %bb.c, %..preheader_crit_edge.us.preheader.unr-lcssa
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %1, i8 0, i64 %i.at, i1 false)
  %xtraiter99 = and i64 %i.av, 1
  %i.cc = icmp eq i32 %i.c, 15
  br i1 %i.cc, label %.epil.preheader98, label %..preheader_crit_edge.us.preheader.new

..preheader_crit_edge.us.preheader.new:           ; preds = %..preheader_crit_edge.us.preheader
  %unroll_iter103 = and i64 %i.av, 30
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %..preheader_crit_edge.us.preheader.new
  %indvars.iv39.1 = phi i64 [ 15, %..preheader_crit_edge.us.preheader.new ], [ %indvars.iv.next40.1.1, %bb.d ] ; 3 uses
  %niter104 = phi i64 [ 0, %..preheader_crit_edge.us.preheader.new ], [ %niter104.next.1, %bb.d ]
  %i.cd = add nuw nsw i64 %indvars.iv39.1, 16     ; 2 uses
  %i.ce = trunc nsw i64 %i.cd to i32
  %i.cf = sub i32 %i.ce, %spec.store.select
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds i8, ptr %2, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1
  %i.cj = getelementptr inbounds i8, ptr %1, i64 %i.cd
  store i8 %i.ci, ptr %i.cj, align 1
  %i.ck = add nsw i64 %indvars.iv39.1, 15         ; 2 uses
  %i.cl = trunc nsw i64 %i.ck to i32
  %i.cm = sub i32 %i.cl, %spec.store.select
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds i8, ptr %2, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1
  %i.cq = getelementptr inbounds i8, ptr %1, i64 %i.ck
  store i8 %i.cp, ptr %i.cq, align 1
  %indvars.iv.next40.1.1 = add nsw i64 %indvars.iv39.1, -2 ; 2 uses
  %niter104.next.1 = add i64 %niter104, 2         ; 2 uses
  %niter104.ncmp.1.not = icmp eq i64 %niter104.next.1, %unroll_iter103
  br i1 %niter104.ncmp.1.not, label %..preheader_crit_edge.us.preheader.1.unr-lcssa, label %bb.d, !llvm.loop !79

..preheader_crit_edge.us.preheader.1.unr-lcssa:   ; preds = %bb.d
  %lcmp.mod101.not = icmp eq i64 %xtraiter99, 0
  br i1 %lcmp.mod101.not, label %..preheader_crit_edge.us.preheader.1, label %.epil.preheader98

.epil.preheader98:                                ; preds = %..preheader_crit_edge.us.preheader.1.unr-lcssa, %..preheader_crit_edge.us.preheader
  %indvars.iv39.1.epil.init = phi i64 [ 15, %..preheader_crit_edge.us.preheader ], [ %indvars.iv.next40.1.1, %..preheader_crit_edge.us.preheader.1.unr-lcssa ]
  %lcmp.mod102 = trunc i64 %i.av to i1
  tail call void @llvm.assume(i1 %lcmp.mod102)
  %i.cr = add nuw nsw i64 %indvars.iv39.1.epil.init, 16 ; 2 uses
  %i.cs = trunc nsw i64 %i.cr to i32
  %i.ct = sub i32 %i.cs, %spec.store.select
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds i8, ptr %2, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1
  %i.cx = getelementptr inbounds i8, ptr %1, i64 %i.cr
  store i8 %i.cw, ptr %i.cx, align 1
  br label %..preheader_crit_edge.us.preheader.1

..preheader_crit_edge.us.preheader.1:             ; preds = %..preheader_crit_edge.us.preheader.1.unr-lcssa, %.epil.preheader98
  %scevgep.1 = getelementptr i8, ptr %1, i64 16
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep.1, i8 0, i64 %i.at, i1 false)
  br label %.split27.us.split

..preheader_crit_edge:                            ; preds = %..preheader_crit_edge.preheader, %..preheader_crit_edge
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %..preheader_crit_edge ], [ %indvars.iv.1.ph, %..preheader_crit_edge.preheader ] ; 3 uses
  %i.cy = add nsw i64 %indvars.iv.1, 16           ; 2 uses
  %i.cz = trunc nsw i64 %i.cy to i32
  %i.da = sub i32 %i.cz, %spec.store.select
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds i8, ptr %2, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1
  %i.de = getelementptr inbounds i8, ptr %1, i64 %i.cy
  store i8 %i.dd, ptr %i.de, align 1
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.1, -1
  %.not.1.not = icmp sgt i64 %indvars.iv.1, %i.i
  br i1 %.not.1.not, label %..preheader_crit_edge, label %.split27.us.split, !llvm.loop !81

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.df = trunc nsw i64 %indvars.iv to i32
  %i.dg = sub i32 %i.df, %spec.store.select
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds i8, ptr %2, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1
  %i.dk = getelementptr inbounds i8, ptr %1, i64 %indvars.iv
  store i8 %i.dj, ptr %i.dk, align 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not.not = icmp sgt i64 %indvars.iv, %i.i
  br i1 %.not.not, label %vec.epilog.scalar.ph, label %vector.scevcheck60, !llvm.loop !82

vector.scevcheck60:                               ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block
  %i.dl = sub nsw i64 15, %i.i                    ; 2 uses
  %i.dm = sub i32 31, %spec.store.select          ; 2 uses
  %i.dn = trunc i64 %i.dl to i32
  %i.do = sub i32 %i.dm, %i.dn
  %i.dp = icmp sgt i32 %i.do, %i.dm
  %i.dq = icmp ugt i64 %i.dl, 4294967295
  %i.dr = or i1 %i.dp, %i.dq
  br i1 %i.dr, label %..preheader_crit_edge.preheader, label %vector.memcheck61

vector.memcheck61:                                ; preds = %vector.scevcheck60
  %i.ds = sub i32 31, %spec.store.select
  %i.dt = sext i32 %i.ds to i64
  %i.du = add i64 %i.b, %i.dt
  %i.dv = sub i64 %i.du, %i.a
  %i.dw = add i64 %i.dv, -32
  %diff.check62 = icmp ult i64 %i.dw, 31
  br i1 %diff.check62, label %..preheader_crit_edge.preheader, label %vector.main.loop.iter.check64

vector.main.loop.iter.check64:                    ; preds = %vector.memcheck61
  %min.iters.check65 = icmp ult i64 %i.j, 32
  br i1 %min.iters.check65, label %vec.epilog.ph80, label %vector.ph66

vector.ph66:                                      ; preds = %vector.main.loop.iter.check64
  %i.dx = and i64 %i.j, 24
  %n.vec67 = and i64 %i.j, -32                    ; 4 uses
  %i.dy = sub nsw i64 15, %n.vec67
  br label %vector.body68

vector.body68:                                    ; preds = %vector.body68, %vector.ph66
  %index69 = phi i64 [ 0, %vector.ph66 ], [ %index.next72, %vector.body68 ] ; 2 uses
  %i.dz = sub i64 31, %index69                    ; 2 uses
  %i.ea = trunc nsw i64 %i.dz to i32
  %i.eb = sub i32 %i.ea, %spec.store.select
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds i8, ptr %2, i64 %i.ec ; 2 uses
  %i.ee = getelementptr inbounds i8, ptr %i.ed, i64 -15
  %i.ef = getelementptr inbounds i8, ptr %i.ed, i64 -31
  %wide.load70.a = load <16 x i8>, ptr %i.ee, align 1
  %wide.load71 = load <16 x i8>, ptr %i.ef, align 1
  %i.eg = getelementptr inbounds i8, ptr %1, i64 %i.dz ; 2 uses
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 -15
  %i.ei = getelementptr inbounds i8, ptr %i.eg, i64 -31
  store <16 x i8> %wide.load70.a, ptr %i.eh, align 1
  store <16 x i8> %wide.load71, ptr %i.ei, align 1
  %index.next72 = add nuw i64 %index69, 32        ; 2 uses
  %i.ej = icmp eq i64 %index.next72, %n.vec67
  br i1 %i.ej, label %middle.block73, label %vector.body68, !llvm.loop !83

middle.block73:                                   ; preds = %vector.body68
  %cmp.n74 = icmp eq i64 %i.j, %n.vec67
  br i1 %cmp.n74, label %.split27.us.split, label %vec.epilog.iter.check78

vec.epilog.iter.check78:                          ; preds = %middle.block73
  %min.epilog.iters.check79 = icmp eq i64 %i.dx, 0
  br i1 %min.epilog.iters.check79, label %..preheader_crit_edge.preheader, label %vec.epilog.ph80, !prof !18

vec.epilog.ph80:                                  ; preds = %vector.main.loop.iter.check64, %vec.epilog.iter.check78
  %vec.epilog.resume.val75 = phi i64 [ %n.vec67, %vec.epilog.iter.check78 ], [ 0, %vector.main.loop.iter.check64 ]
  %n.vec81 = and i64 %i.j, -8                     ; 3 uses
  %i.ek = sub nsw i64 15, %n.vec81
  br label %vec.epilog.vector.body82

vec.epilog.vector.body82:                         ; preds = %vec.epilog.vector.body82, %vec.epilog.ph80
  %index83 = phi i64 [ %vec.epilog.resume.val75, %vec.epilog.ph80 ], [ %index.next85, %vec.epilog.vector.body82 ] ; 2 uses
  %i.el = sub i64 31, %index83                    ; 2 uses
  %i.em = trunc nsw i64 %i.el to i32
  %i.en = sub i32 %i.em, %spec.store.select
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds i8, ptr %2, i64 %i.eo
  %i.eq = getelementptr inbounds i8, ptr %i.ep, i64 -7
  %wide.load84 = load <8 x i8>, ptr %i.eq, align 1
  %i.er = getelementptr inbounds i8, ptr %1, i64 %i.el
  %i.es = getelementptr inbounds i8, ptr %i.er, i64 -7
  store <8 x i8> %wide.load84, ptr %i.es, align 1
  %index.next85 = add nuw i64 %index83, 8         ; 2 uses
  %i.et = icmp eq i64 %index.next85, %n.vec81
  br i1 %i.et, label %vec.epilog.middle.block86, label %vec.epilog.vector.body82, !llvm.loop !84

vec.epilog.middle.block86:                        ; preds = %vec.epilog.vector.body82
  %cmp.n87 = icmp eq i64 %i.j, %n.vec81
  br i1 %cmp.n87, label %.split27.us.split, label %..preheader_crit_edge.preheader

..preheader_crit_edge.preheader:                  ; preds = %vector.memcheck61, %vector.scevcheck60, %vec.epilog.iter.check78, %vec.epilog.middle.block86
  %indvars.iv.1.ph = phi i64 [ 15, %vector.scevcheck60 ], [ 15, %vector.memcheck61 ], [ %i.dy, %vec.epilog.iter.check78 ], [ %i.ek, %vec.epilog.middle.block86 ]
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

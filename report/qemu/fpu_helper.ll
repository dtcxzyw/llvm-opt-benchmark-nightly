Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/fpu_helper?download=true
inline.NumInlined: 830
inline.NumDeleted: 121
loop-unroll.NumCompletelyUnrolled: 540
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 554
begin_hunk_0_@helper_psrldq_ymm:bb.a
  %i.fg = ashr exact i64 %sext57, 32
  %i.fh = getelementptr inbounds i8, ptr %1, i64 %i.fg
  store i8 0, ptr %i.fh, align 1
  %indvars.iv.next44.1 = add nuw nsw i64 %indvars.iv43.1, 1 ; 2 uses
  %i.fi = and i64 %indvars.iv.next44.1, 4294967295
  %exitcond46.1.not = icmp eq i64 %i.fi, 16
  br i1 %exitcond46.1.not, label %.split27.us, label %..preheader_crit_edge.us.us.1, !llvm.loop !71

.preheader21.us.preheader:                        ; preds = %.preheader21.us.preheader.prol.loopexit, %.preheader21.us.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next.1151, %.preheader21.us.preheader ], [ %indvars.iv.unr, %.preheader21.us.preheader.prol.loopexit ] ; 4 uses
  %i.fj = trunc nuw i64 %indvars.iv to i32
  %i.fk = add i32 %spec.store.select, %i.fj
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds i8, ptr %2, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1
  %sext55 = shl i64 %indvars.iv, 32
  %i.fo = ashr exact i64 %sext55, 32
  %i.fp = getelementptr inbounds i8, ptr %1, i64 %i.fo
  store i8 %i.fn, ptr %i.fp, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fq = trunc nuw i64 %indvars.iv.next to i32
  %i.fr = add i32 %spec.store.select, %i.fq
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr inbounds i8, ptr %2, i64 %i.fs
  %i.fu = load i8, ptr %i.ft, align 1
  %sext55.1 = shl i64 %indvars.iv.next, 32
  %i.fv = ashr exact i64 %sext55.1, 32
  %i.fw = getelementptr inbounds i8, ptr %1, i64 %i.fv
  store i8 %i.fu, ptr %i.fw, align 1
  %indvars.iv.next.1151 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1151, %i.ap
  br i1 %exitcond.not.1, label %vector.scevcheck92, label %.preheader21.us.preheader, !llvm.loop !72

vector.scevcheck92:                               ; preds = %.preheader21.us.preheader.prol.loopexit, %.preheader21.us.preheader, %middle.block77, %vec.epilog.middle.block90
  %i.fx = add nsw i64 %i.ap, -1                   ; 2 uses
  %i.fy = trunc nsw i64 %i.fx to i32
  %i.fz = icmp ugt i64 %i.fx, 2147483631
  %i.ga = add nsw i32 %spec.store.select, 16      ; 2 uses
  %i.gb = add i32 %i.ga, %i.fy
  %i.gc = icmp slt i32 %i.gb, %i.ga
  %i.gd = or i1 %i.gc, %i.fz
  br i1 %i.gd, label %..preheader_crit_edge.us.preheader, label %vector.memcheck96

vector.memcheck96:                                ; preds = %vector.scevcheck92
  %i.ge = tail call i32 @llvm.smin.i32(i32 %i.c, i32 16)
  %i.gf = sext i32 %i.ge to i64
  %i.gg = add i64 %i.b, %i.gf
  %i.gh = sub i64 %i.gg, %i.a
  %diff.check97 = icmp ugt i64 %i.gh, -32
  br i1 %diff.check97, label %..preheader_crit_edge.us.preheader, label %vector.main.loop.iter.check98

vector.main.loop.iter.check98:                    ; preds = %vector.memcheck96
  %min.iters.check99 = icmp ult i32 %i.d, 32
  br i1 %min.iters.check99, label %vec.epilog.ph114, label %vector.ph100

vector.ph100:                                     ; preds = %vector.main.loop.iter.check98
  %i.gi = and i64 %i.ap, 28
  %n.vec101 = and i64 %i.ap, 2147483616           ; 4 uses
  br label %vector.body102

vector.body102:                                   ; preds = %vector.ph100, %vector.body102
  %index103 = phi i64 [ 0, %vector.ph100 ], [ %index.next106, %vector.body102 ] ; 2 uses
  %i.gj = trunc i64 %index103 to i32
  %i.gk = or disjoint i32 %i.gj, 16               ; 2 uses
  %i.gl = add i32 %i.gk, %spec.store.select
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr inbounds i8, ptr %2, i64 %i.gm ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %wide.load104.a = load <16 x i8>, ptr %i.gn, align 1
  %wide.load105 = load <16 x i8>, ptr %i.go, align 1
  %i.gp = sext i32 %i.gk to i64
  %i.gq = getelementptr inbounds i8, ptr %1, i64 %i.gp ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  store <16 x i8> %wide.load104.a, ptr %i.gq, align 1
  store <16 x i8> %wide.load105, ptr %i.gr, align 1
  %index.next106 = add nuw i64 %index103, 32      ; 2 uses
  %i.gs = icmp eq i64 %index.next106, %n.vec101
  br i1 %i.gs, label %middle.block107, label %vector.body102, !llvm.loop !73

middle.block107:                                  ; preds = %vector.body102
  %cmp.n108 = icmp eq i64 %n.vec101, %i.ap
  br i1 %cmp.n108, label %.split27.us, label %vec.epilog.iter.check112

vec.epilog.iter.check112:                         ; preds = %middle.block107
  %min.epilog.iters.check113 = icmp eq i64 %i.gi, 0
  br i1 %min.epilog.iters.check113, label %..preheader_crit_edge.us.preheader, label %vec.epilog.ph114, !prof !16

vec.epilog.ph114:                                 ; preds = %vector.main.loop.iter.check98, %vec.epilog.iter.check112
  %vec.epilog.resume.val109 = phi i64 [ %n.vec101, %vec.epilog.iter.check112 ], [ 0, %vector.main.loop.iter.check98 ]
  %n.vec115 = and i64 %i.ap, 2147483644           ; 3 uses
  br label %vec.epilog.vector.body116

vec.epilog.vector.body116:                        ; preds = %vec.epilog.vector.body116, %vec.epilog.ph114
  %index117 = phi i64 [ %vec.epilog.resume.val109, %vec.epilog.ph114 ], [ %index.next119, %vec.epilog.vector.body116 ] ; 2 uses
  %i.gt = trunc i64 %index117 to i32
  %i.gu = add i32 %i.gt, 16                       ; 2 uses
  %i.gv = add i32 %i.gu, %spec.store.select
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr inbounds i8, ptr %2, i64 %i.gw
  %wide.load118 = load <4 x i8>, ptr %i.gx, align 1
  %i.gy = sext i32 %i.gu to i64
  %i.gz = getelementptr inbounds i8, ptr %1, i64 %i.gy
  store <4 x i8> %wide.load118, ptr %i.gz, align 1
  %index.next119 = add nuw i64 %index117, 4       ; 2 uses
  %i.ha = icmp eq i64 %index.next119, %n.vec115
  br i1 %i.ha, label %vec.epilog.middle.block120, label %vec.epilog.vector.body116, !llvm.loop !74

vec.epilog.middle.block120:                       ; preds = %vec.epilog.vector.body116
  %cmp.n121 = icmp eq i64 %n.vec115, %i.ap
  br i1 %cmp.n121, label %.split27.us, label %..preheader_crit_edge.us.preheader

..preheader_crit_edge.us.preheader:               ; preds = %vector.scevcheck92, %vector.memcheck96, %vec.epilog.iter.check112, %vec.epilog.middle.block120
  %indvars.iv.135.ph = phi i64 [ 0, %vector.scevcheck92 ], [ 0, %vector.memcheck96 ], [ %n.vec101, %vec.epilog.iter.check112 ], [ %n.vec115, %vec.epilog.middle.block120 ] ; 4 uses
  %xtraiter152 = and i64 %i.ap, 1
  %lcmp.mod153.not = icmp eq i64 %xtraiter152, 0
  br i1 %lcmp.mod153.not, label %..preheader_crit_edge.us.prol.loopexit, label %..preheader_crit_edge.us.prol

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
  br i1 %exitcond.137.not.1, label %.split27.us, label %..preheader_crit_edge.us, !llvm.loop !75

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
  br i1 %exitcond.1.not, label %.split27.us, label %vec.epilog.scalar.ph, !llvm.loop !76

.split27.us:                                      ; preds = %vec.epilog.scalar.ph, %..preheader_crit_edge.us.prol.loopexit, %..preheader_crit_edge.us, %..preheader_crit_edge.us.us.1, %middle.block, %vec.epilog.middle.block, %middle.block107, %vec.epilog.middle.block120, %middle.block132, %vec.epilog.middle.block145
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
  %i.j = sub nsw i64 16, %i.i                     ; 13 uses
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
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !77

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %iter.check78, label %vec.epilog.iter.check

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
  br i1 %cmp.n58, label %iter.check78, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 15, %iter.check ], [ 15, %vector.memcheck ], [ %i.x, %vec.epilog.iter.check ], [ %i.aj, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.preheader20.us28.preheader:                      ; preds = %.split
  %i.at = zext nneg i32 %spec.store.select to i64 ; 2 uses
  %4 = zext nneg i32 %spec.store.select to i64    ; 2 uses
  %5 = sub nsw i64 16, %i.at                      ; 2 uses
  %xtraiter = and i64 %5, 3                       ; 3 uses
  %i.au = add nsw i32 %spec.store.select, -13
  %i.av = icmp ult i32 %i.au, 3
  br i1 %i.av, label %.epil.preheader, label %.preheader20.us28.preheader.new

.preheader20.us28.preheader.new:                  ; preds = %.preheader20.us28.preheader
  %unroll_iter = and i64 %5, -4
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
  %indvars.iv.next40.199 = add nsw i64 %indvars.iv39, -2 ; 2 uses
  %i.bi = trunc nsw i64 %indvars.iv.next40.199 to i32
  %i.bj = sub i32 %i.bi, %spec.store.select
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds i8, ptr %2, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.next40.199
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
  %lcmp.mod97 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod97)
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
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %1, i8 0, i64 %4, i1 false)
  %umin = tail call i64 @llvm.umin.i64(i64 %i.at, i64 15)
  %6 = sub nuw nsw i64 16, %umin                  ; 3 uses
  %xtraiter101 = and i64 %6, 1
  %i.ca = icmp eq i32 %i.c, 15
  br i1 %i.ca, label %.epil.preheader100, label %..preheader_crit_edge.us.preheader.new

..preheader_crit_edge.us.preheader.new:           ; preds = %..preheader_crit_edge.us.preheader
  %unroll_iter105 = and i64 %6, 30
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %..preheader_crit_edge.us.preheader.new
  %indvars.iv39.1 = phi i64 [ 15, %..preheader_crit_edge.us.preheader.new ], [ %indvars.iv.next40.1.1, %bb.d ] ; 3 uses
  %niter106 = phi i64 [ 0, %..preheader_crit_edge.us.preheader.new ], [ %niter106.next.1, %bb.d ]
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
  %niter106.next.1 = add i64 %niter106, 2         ; 2 uses
  %niter106.ncmp.1.not = icmp eq i64 %niter106.next.1, %unroll_iter105
  br i1 %niter106.ncmp.1.not, label %..preheader_crit_edge.us.preheader.1.unr-lcssa, label %bb.d, !llvm.loop !79

..preheader_crit_edge.us.preheader.1.unr-lcssa:   ; preds = %bb.d
  %lcmp.mod103.not = icmp eq i64 %xtraiter101, 0
  br i1 %lcmp.mod103.not, label %..preheader_crit_edge.us.preheader.1, label %.epil.preheader100

.epil.preheader100:                               ; preds = %..preheader_crit_edge.us.preheader.1.unr-lcssa, %..preheader_crit_edge.us.preheader
  %indvars.iv39.1.epil.init = phi i64 [ 15, %..preheader_crit_edge.us.preheader ], [ %indvars.iv.next40.1.1, %..preheader_crit_edge.us.preheader.1.unr-lcssa ]
  %lcmp.mod104 = trunc i64 %6 to i1
  tail call void @llvm.assume(i1 %lcmp.mod104)
  %i.cp = add nuw nsw i64 %indvars.iv39.1.epil.init, 16 ; 2 uses
  %i.cq = trunc nsw i64 %i.cp to i32
  %i.cr = sub i32 %i.cq, %spec.store.select
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds i8, ptr %2, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1
  %i.cv = getelementptr inbounds i8, ptr %1, i64 %i.cp
  store i8 %i.cu, ptr %i.cv, align 1
  br label %..preheader_crit_edge.us.preheader.1

..preheader_crit_edge.us.preheader.1:             ; preds = %..preheader_crit_edge.us.preheader.1.unr-lcssa, %.epil.preheader100
  %scevgep.1 = getelementptr i8, ptr %1, i64 16
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep.1, i8 0, i64 %4, i1 false)
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
  br i1 %.not.not, label %vec.epilog.scalar.ph, label %iter.check78, !llvm.loop !82

iter.check78:                                     ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %min.iters.check63 = icmp ult i64 %i.j, 8
  br i1 %min.iters.check63, label %..preheader_crit_edge.preheader, label %vector.scevcheck60

vector.scevcheck60:                               ; preds = %iter.check78
  %i.dj = sub nsw i64 15, %i.i                    ; 2 uses
  %i.dk = sub i32 31, %spec.store.select          ; 2 uses
  %i.dl = trunc i64 %i.dj to i32
  %i.dm = sub i32 %i.dk, %i.dl
  %i.dn = icmp sgt i32 %i.dm, %i.dk
  %i.do = icmp ugt i64 %i.dj, 4294967295
  %i.dp = or i1 %i.dn, %i.do
  br i1 %i.dp, label %..preheader_crit_edge.preheader, label %vector.memcheck64

vector.memcheck64:                                ; preds = %vector.scevcheck60
  %i.dq = sub i32 31, %spec.store.select
  %i.dr = sext i32 %i.dq to i64
  %i.ds = add i64 %i.a, %i.dr
  %i.dt = sub i64 %i.ds, %i.b
  %i.du = add i64 %i.dt, -32
  %diff.check65 = icmp ult i64 %i.du, 31
  br i1 %diff.check65, label %..preheader_crit_edge.preheader, label %vector.main.loop.iter.check66

vector.main.loop.iter.check66:                    ; preds = %vector.memcheck64
  %min.iters.check67 = icmp ult i64 %i.j, 32
  br i1 %min.iters.check67, label %vec.epilog.ph82, label %vector.ph68

vector.ph68:                                      ; preds = %vector.main.loop.iter.check66
  %i.dv = and i64 %i.j, 24
  %n.vec69 = and i64 %i.j, -32                    ; 4 uses
  %i.dw = sub nsw i64 15, %n.vec69
  br label %vector.body70

vector.body70:                                    ; preds = %vector.ph68, %vector.body70
  %index71 = phi i64 [ 0, %vector.ph68 ], [ %index.next74, %vector.body70 ] ; 2 uses
  %i.dx = sub i64 31, %index71                    ; 2 uses
  %i.dy = trunc nsw i64 %i.dx to i32
  %i.dz = sub i32 %i.dy, %spec.store.select
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds i8, ptr %2, i64 %i.ea ; 2 uses
  %i.ec = getelementptr inbounds i8, ptr %i.eb, i64 -15
  %i.ed = getelementptr inbounds i8, ptr %i.eb, i64 -31
  %wide.load72.a = load <16 x i8>, ptr %i.ec, align 1
  %wide.load73 = load <16 x i8>, ptr %i.ed, align 1
  %i.ee = getelementptr inbounds i8, ptr %1, i64 %i.dx ; 2 uses
  %i.ef = getelementptr inbounds i8, ptr %i.ee, i64 -15
  %i.eg = getelementptr inbounds i8, ptr %i.ee, i64 -31
  store <16 x i8> %wide.load72.a, ptr %i.ef, align 1
  store <16 x i8> %wide.load73, ptr %i.eg, align 1
  %index.next74 = add nuw i64 %index71, 32        ; 2 uses
  %i.eh = icmp eq i64 %index.next74, %n.vec69
  br i1 %i.eh, label %middle.block75, label %vector.body70, !llvm.loop !83

middle.block75:                                   ; preds = %vector.body70
  %cmp.n76 = icmp eq i64 %i.j, %n.vec69
  br i1 %cmp.n76, label %.split27.us.split, label %vec.epilog.iter.check80

vec.epilog.iter.check80:                          ; preds = %middle.block75
  %min.epilog.iters.check81 = icmp eq i64 %i.dv, 0
  br i1 %min.epilog.iters.check81, label %..preheader_crit_edge.preheader, label %vec.epilog.ph82, !prof !18

vec.epilog.ph82:                                  ; preds = %vector.main.loop.iter.check66, %vec.epilog.iter.check80
  %vec.epilog.resume.val77 = phi i64 [ %n.vec69, %vec.epilog.iter.check80 ], [ 0, %vector.main.loop.iter.check66 ]
  %n.vec83 = and i64 %i.j, -8                     ; 3 uses
  %i.ei = sub nsw i64 15, %n.vec83
  br label %vec.epilog.vector.body84

vec.epilog.vector.body84:                         ; preds = %vec.epilog.vector.body84, %vec.epilog.ph82
  %index85 = phi i64 [ %vec.epilog.resume.val77, %vec.epilog.ph82 ], [ %index.next87, %vec.epilog.vector.body84 ] ; 2 uses
  %i.ej = sub i64 31, %index85                    ; 2 uses
  %i.ek = trunc nsw i64 %i.ej to i32
  %i.el = sub i32 %i.ek, %spec.store.select
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds i8, ptr %2, i64 %i.em
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 -7
  %wide.load86 = load <8 x i8>, ptr %i.eo, align 1
  %i.ep = getelementptr inbounds i8, ptr %1, i64 %i.ej
  %i.eq = getelementptr inbounds i8, ptr %i.ep, i64 -7
  store <8 x i8> %wide.load86, ptr %i.eq, align 1
  %index.next87 = add nuw i64 %index85, 8         ; 2 uses
  %i.er = icmp eq i64 %index.next87, %n.vec83
  br i1 %i.er, label %vec.epilog.middle.block88, label %vec.epilog.vector.body84, !llvm.loop !84

vec.epilog.middle.block88:                        ; preds = %vec.epilog.vector.body84
  %cmp.n89 = icmp eq i64 %i.j, %n.vec83
  br i1 %cmp.n89, label %.split27.us.split, label %..preheader_crit_edge.preheader

..preheader_crit_edge.preheader:                  ; preds = %iter.check78, %vector.scevcheck60, %vector.memcheck64, %vec.epilog.iter.check80, %vec.epilog.middle.block88
  %indvars.iv.1.ph = phi i64 [ 15, %iter.check78 ], [ 15, %vector.scevcheck60 ], [ 15, %vector.memcheck64 ], [ %i.dw, %vec.epilog.iter.check80 ], [ %i.ei, %vec.epilog.middle.block88 ]
  br label %..preheader_crit_edge

.split27.us.split:                                ; preds = %..preheader_crit_edge, %middle.block75, %vec.epilog.middle.block88, %..preheader_crit_edge.us.preheader.1, %.preheader20.us.preheader
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
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.az = load i16, ptr %i.ay, align 2
  %i.ba = tail call i16 @llvm.umulh.i16(i16 %i.ax, i16 %i.az)
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i16 %i.ba, ptr %i.bb, align 2
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.bd = load i16, ptr %i.bc, align 2
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 14
  %i.bf = load i16, ptr %i.be, align 2
  %i.bg = tail call i16 @llvm.umulh.i16(i16 %i.bd, i16 %i.bf)
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i16 %i.bg, ptr %i.bh, align 2
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = load i16, ptr %i.bi, align 2
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bl = load i16, ptr %i.bk, align 2
  %i.bm = tail call i16 @llvm.umulh.i16(i16 %i.bj, i16 %i.bl)
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i16 %i.bm, ptr %i.bn, align 2
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 18
  %i.bp = load i16, ptr %i.bo, align 2
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 18
  %i.br = load i16, ptr %i.bq, align 2
  %i.bs = tail call i16 @llvm.umulh.i16(i16 %i.bp, i16 %i.br)
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i16 %i.bs, ptr %i.bt, align 2
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.bv = load i16, ptr %i.bu, align 2
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.bx = load i16, ptr %i.bw, align 2
  %i.by = tail call i16 @llvm.umulh.i16(i16 %i.bv, i16 %i.bx)
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i16 %i.by, ptr %i.bz, align 2
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 22
  %i.cb = load i16, ptr %i.ca, align 2
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 22
  %i.cd = load i16, ptr %i.cc, align 2
  %i.ce = tail call i16 @llvm.umulh.i16(i16 %i.cb, i16 %i.cd)
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 22
  store i16 %i.ce, ptr %i.cf, align 2
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ch = load i16, ptr %i.cg, align 2
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cj = load i16, ptr %i.ci, align 2
  %i.ck = tail call i16 @llvm.umulh.i16(i16 %i.ch, i16 %i.cj)
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i16 %i.ck, ptr %i.cl, align 2
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 26
  %i.cn = load i16, ptr %i.cm, align 2
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 26
  %i.cp = load i16, ptr %i.co, align 2
  %i.cq = tail call i16 @llvm.umulh.i16(i16 %i.cn, i16 %i.cp)
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 26
  store i16 %i.cq, ptr %i.cr, align 2
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.ct = load i16, ptr %i.cs, align 2
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.cv = load i16, ptr %i.cu, align 2
  %i.cw = tail call i16 @llvm.umulh.i16(i16 %i.ct, i16 %i.cv)
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i16 %i.cw, ptr %i.cx, align 2
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 30
  %i.cz = load i16, ptr %i.cy, align 2
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 30
  %i.db = load i16, ptr %i.da, align 2
  %i.dc = tail call i16 @llvm.umulh.i16(i16 %i.cz, i16 %i.db)
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 30
  store i16 %i.dc, ptr %i.dd, align 2
  br label %.rtcont

.rtcont:                                          ; preds = %.rtscalar, %.rtvec
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_pmulhw_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
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
  %i.i = tail call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.g, <8 x i16> %i.h)
  store <8 x i16> %i.i, ptr %1, align 2
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load <8 x i16>, ptr %i.j, align 2
  %i.n = load <8 x i16>, ptr %i.k, align 2
  %i.o = tail call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.m, <8 x i16> %i.n)
  store <8 x i16> %i.o, ptr %i.l, align 2
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.a
  %i.p = load i16, ptr %2, align 2
  %i.q = load i16, ptr %3, align 2
  %i.r = tail call i16 @llvm.smulh.i16(i16 %i.p, i16 %i.q)
  store i16 %i.r, ptr %1, align 2
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.t = load i16, ptr %i.s, align 2
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.v = load i16, ptr %i.u, align 2
  %i.w = tail call i16 @llvm.smulh.i16(i16 %i.t, i16 %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 %i.w, ptr %i.x, align 2
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.z = load i16, ptr %i.y, align 2
end_hunk_0

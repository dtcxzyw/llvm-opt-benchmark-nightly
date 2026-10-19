Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/concat_x86?download=true
inline.NumInlined: 137
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNK4ncnn10Concat_x8619forward_bf16s_fp16sERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !36 ; 14 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !19 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !18 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !35 ; 2 uses
  %.not771 = icmp eq ptr %i.eb, %i.q
  br i1 %.not771, label %._crit_edge687, label %.lr.ph686.preheader

.lr.ph686.preheader:                              ; preds = %bb.c
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = ptrtoint ptr %i.q to i64
  %i.ee = sub i64 %i.ec, %i.ed                    ; 2 uses
  %i.ef = sdiv exact i64 %i.ee, 72                ; 3 uses
  %xtraiter = and i64 %i.ef, 1
  %i.eg = icmp eq i64 %i.ee, 72
  br i1 %i.eg, label %.lr.ph686.epil.preheader, label %.lr.ph686.preheader.new

.lr.ph686.preheader.new:                          ; preds = %.lr.ph686.preheader
  %unroll_iter = and i64 %i.ef, -2
  br label %.lr.ph686

._crit_edge687.loopexit.unr-lcssa:                ; preds = %.lr.ph686
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge687, label %.lr.ph686.epil.preheader

.lr.ph686.epil.preheader:                         ; preds = %._crit_edge687.loopexit.unr-lcssa, %.lr.ph686.preheader
  %.0397684.epil.init = phi i64 [ 0, %.lr.ph686.preheader ], [ %i.gf, %._crit_edge687.loopexit.unr-lcssa ]
  %.0398683.epil.init = phi i32 [ 0, %.lr.ph686.preheader ], [ %i.ge, %._crit_edge687.loopexit.unr-lcssa ]
  %.0682.epil.init = phi i64 [ %i.dx, %.lr.ph686.preheader ], [ %.sroa.speculated663.1, %._crit_edge687.loopexit.unr-lcssa ]
  %.0668681.epil.init = phi i32 [ %i.dz, %.lr.ph686.preheader ], [ %.sroa.speculated652.1, %._crit_edge687.loopexit.unr-lcssa ]
  %lcmp.mod1151 = trunc i64 %i.ef to i1
  tail call void @llvm.assume(i1 %lcmp.mod1151)
  %i.eh = getelementptr inbounds nuw [72 x i8], ptr %i.q, i64 %.0397684.epil.init ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !47
  %.sroa.speculated663.epil = tail call i64 @llvm.umin.i64(i64 %i.ej, i64 %.0682.epil.init)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !48 ; 2 uses
  %.sroa.speculated652.epil = tail call i32 @llvm.smin.i32(i32 %i.el, i32 %.0668681.epil.init)
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 48
  %i.en = load i32, ptr %i.em, align 8, !tbaa !49
  %i.eo = mul nsw i32 %i.en, %i.el
  %i.ep = add nsw i32 %i.eo, %.0398683.epil.init
  br label %._crit_edge687

._crit_edge687:                                   ; preds = %.lr.ph686.epil.preheader, %._crit_edge687.loopexit.unr-lcssa, %bb.c
  %.0668.lcssa = phi i32 [ %i.dz, %bb.c ], [ %.sroa.speculated652.1, %._crit_edge687.loopexit.unr-lcssa ], [ %.sroa.speculated652.epil, %.lr.ph686.epil.preheader ] ; 6 uses
  %.0.lcssa = phi i64 [ %i.dx, %bb.c ], [ %.sroa.speculated663.1, %._crit_edge687.loopexit.unr-lcssa ], [ %.sroa.speculated663.epil, %.lr.ph686.epil.preheader ] ; 2 uses
  %.0398.lcssa = phi i32 [ 0, %bb.c ], [ %i.ge, %._crit_edge687.loopexit.unr-lcssa ], [ %i.ep, %.lr.ph686.epil.preheader ] ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 39
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !39, !range !40, !noundef !41
  %i.es = trunc nuw i8 %i.er to i1
  %i.et = and i32 %.0398.lcssa, 3
  %i.eu = icmp eq i32 %i.et, 0
  %i.ev = and i1 %i.eu, %i.es                     ; 2 uses
  %.0395 = select i1 %i.ev, i32 4, i32 1          ; 4 uses
  %i.ew = sext i32 %.0668.lcssa to i64
  %i.ex = udiv i64 %.0.lcssa, %i.ew
  %i.ey = select i1 %i.ev, i64 2, i64 0
  %i.ez = shl i64 %i.ex, %i.ey
  %i.fa = load ptr, ptr %2, align 8, !tbaa !13    ; 11 uses
  %i.fb = sdiv i32 %.0398.lcssa, %.0395
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !42
  tail call void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.fa, i32 noundef %i.dv, i32 noundef %i.fb, i64 noundef %i.ez, i32 noundef %.0395, ptr noundef %i.fd)
  %i.fe = load ptr, ptr %i.fa, align 8, !tbaa !43
  %i.ff = icmp eq ptr %i.fe, null
  br i1 %i.ff, label %.critedge, label %_ZNK4ncnn3Mat5emptyEv.exit446

_ZNK4ncnn3Mat5emptyEv.exit446:                    ; preds = %._crit_edge687
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fa, i64 64 ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !44
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fa, i64 56 ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !45
  %i.fk = sext i32 %i.fj to i64
  %i.fl = mul i64 %i.fh, %i.fk
  %i.fm = icmp eq i64 %i.fl, 0
  br i1 %i.fm, label %.critedge, label %bb.d

.lr.ph686:                                        ; preds = %.lr.ph686, %.lr.ph686.preheader.new
  %.0397684 = phi i64 [ 0, %.lr.ph686.preheader.new ], [ %i.gf, %.lr.ph686 ] ; 3 uses
  %.0398683 = phi i32 [ 0, %.lr.ph686.preheader.new ], [ %i.ge, %.lr.ph686 ]
  %.0682 = phi i64 [ %i.dx, %.lr.ph686.preheader.new ], [ %.sroa.speculated663.1, %.lr.ph686 ]
  %.0668681 = phi i32 [ %i.dz, %.lr.ph686.preheader.new ], [ %.sroa.speculated652.1, %.lr.ph686 ]
  %niter = phi i64 [ 0, %.lr.ph686.preheader.new ], [ %niter.next.1, %.lr.ph686 ]
  %i.fn = getelementptr inbounds nuw [72 x i8], ptr %i.q, i64 %.0397684 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !47
  %.sroa.speculated663 = tail call i64 @llvm.umin.i64(i64 %i.fp, i64 %.0682)
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !48 ; 2 uses
  %.sroa.speculated652 = tail call i32 @llvm.smin.i32(i32 %i.fr, i32 %.0668681)
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fn, i64 48
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !49
  %i.fu = mul nsw i32 %i.ft, %i.fr
  %i.fv = add nsw i32 %i.fu, %.0398683
  %i.fw = getelementptr inbounds nuw [72 x i8], ptr %i.q, i64 %.0397684 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 88
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !47
  %.sroa.speculated663.1 = tail call i64 @llvm.umin.i64(i64 %i.fy, i64 %.sroa.speculated663) ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 96
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !48 ; 2 uses
  %.sroa.speculated652.1 = tail call i32 @llvm.smin.i32(i32 %i.ga, i32 %.sroa.speculated652) ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fw, i64 120
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !49
  %i.gd = mul nsw i32 %i.gc, %i.ga
  %i.ge = add nsw i32 %i.gd, %i.fv                ; 3 uses
  %i.gf = add nuw i64 %.0397684, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge687.loopexit.unr-lcssa, label %.lr.ph686, !llvm.loop !99

bb.d:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit446
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  %i.gg = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !50 ; 2 uses
  %i.gj = load <2 x ptr>, ptr %i.fa, align 8, !tbaa !51
  store <2 x ptr> %i.gj, ptr %4, align 16, !tbaa !51
  %i.gk = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !19
  store i64 %i.gm, ptr %i.gk, align 16, !tbaa !19
  %i.gn = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.go = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !18
  store i32 %i.gp, ptr %i.gn, align 8, !tbaa !18
  %i.gq = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fa, i64 32
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !52
  store ptr %i.gs, ptr %i.gq, align 16, !tbaa !52
  %i.gt = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fa, i64 40
  %i.gv = load <4 x i32>, ptr %i.gu, align 8, !tbaa !48
  store <4 x i32> %i.gv, ptr %i.gt, align 8, !tbaa !48
  %i.gw = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.gx = load i32, ptr %i.fi, align 8, !tbaa !45
  store i32 %i.gx, ptr %i.gw, align 8, !tbaa !45
  %i.gy = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.gz = load i64, ptr %i.fg, align 8, !tbaa !44
  store i64 %i.gz, ptr %i.gy, align 16, !tbaa !44
  %.not.i = icmp eq ptr %i.gi, null
  br i1 %.not.i, label %_ZN4ncnn3Mat6addrefEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ha = atomicrmw add ptr %i.gi, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit

_ZN4ncnn3Mat6addrefEv.exit:                       ; preds = %bb.d, %bb.e
  %i.hb = icmp slt i32 %.0668.lcssa, %.0395       ; 2 uses
  br i1 %i.hb, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZN4ncnn3Mat6addrefEv.exit
  %i.hc = sdiv i32 %.0398.lcssa, %.0668.lcssa
  %i.hd = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !53
  invoke void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %4, i32 noundef %i.dv, i32 noundef %i.hc, i64 noundef %.0.lcssa, i32 noundef %.0668.lcssa, ptr noundef %i.he)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.hf = load ptr, ptr %4, align 16, !tbaa !43
  %i.hg = icmp eq ptr %i.hf, null
  br i1 %i.hg, label %.critedge.critedge, label %_ZNK4ncnn3Mat5emptyEv.exit445

_ZNK4ncnn3Mat5emptyEv.exit445:                    ; preds = %bb.g
  %i.hh = load i64, ptr %i.gy, align 16, !tbaa !44
  %i.hi = load i32, ptr %i.gw, align 8, !tbaa !45
  %i.hj = sext i32 %i.hi to i64
  %i.hk = mul i64 %i.hh, %i.hj
  %i.hl = icmp eq i64 %i.hk, 0
  br i1 %i.hl, label %.critedge.critedge, label %bb.h

bb.h:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit445, %_ZN4ncnn3Mat6addrefEv.exit
  %i.hm = load ptr, ptr %i.ea, align 8, !tbaa !35 ; 2 uses
  %i.hn = load ptr, ptr %1, align 8, !tbaa !13    ; 2 uses
  %.not772 = icmp eq ptr %i.hm, %i.hn
  br i1 %.not772, label %._crit_edge708, label %.lr.ph707

.lr.ph707:                                        ; preds = %bb.h
  %i.ho = load ptr, ptr %4, align 16, !tbaa !43
  %i.hp = icmp eq i32 %.0668.lcssa, 1
  %i.hq = sext i32 %i.dv to i64                   ; 2 uses
  %i.hr = shl i32 %i.dv, 1
  %i.hs = sext i32 %i.hr to i64                   ; 2 uses
  %i.ht = mul i32 %i.dv, 3
  %i.hu = sext i32 %i.ht to i64                   ; 2 uses
  %i.hv = icmp sgt i32 %i.dv, 0
  %i.hw = shl i32 %i.dv, 2                        ; 2 uses
  %i.hx = sext i32 %i.hw to i64                   ; 3 uses
  %i.hy = add i32 %i.dv, -1
  %i.hz = zext i32 %i.hy to i64                   ; 2 uses
  %i.ia = shl nuw nsw i64 %i.hz, 1                ; 4 uses
  %i.ib = shl nsw i64 %i.hx, 1
  %i.ic = shl nsw i64 %i.hq, 1                    ; 2 uses
  %i.id = shl nsw i64 %i.hs, 1                    ; 2 uses
  %i.ie = shl nsw i64 %i.hu, 1                    ; 2 uses
  %i.if = shl nuw nsw i64 %i.hz, 3
  %i.ig = zext nneg i32 %i.dv to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.dv, 48
  %stride.check890 = icmp slt i32 %i.hw, 0
  %n.vec = and i64 %i.ig, 2147483640              ; 5 uses
  %i.ih = trunc nuw nsw i64 %n.vec to i32
  %i.ii = shl nuw nsw i64 %n.vec, 1               ; 4 uses
  %i.ij = shl nuw nsw i64 %n.vec, 3
  %cmp.n = icmp eq i64 %n.vec, %i.ig
  br label %bb.p

._crit_edge708:                                   ; preds = %bb.r, %bb.h
  br i1 %i.hb, label %bb.s, label %bb.t

bb.i:                                             ; preds = %bb.f, %bb.s
  %i.ik = landingpad { ptr, i32 }
          cleanup
  %i.il = load ptr, ptr %i.gg, align 8, !tbaa !50 ; 2 uses
  %.not.i472 = icmp eq ptr %i.il, null
  br i1 %.not.i472, label %_ZN4ncnn3MatD2Ev.exit457, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.im = atomicrmw add ptr %i.il, i32 -1 acq_rel, align 4
  %i.in = icmp eq i32 %i.im, 1
  br i1 %i.in, label %bb.k, label %_ZN4ncnn3MatD2Ev.exit457

bb.k:                                             ; preds = %bb.j
  %i.io = load ptr, ptr %i.gq, align 16, !tbaa !52 ; 3 uses
  %.not3.i473 = icmp eq ptr %i.io, null
  %i.ip = load ptr, ptr %4, align 16, !tbaa !43   ; 3 uses
  br i1 %.not3.i473, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.iq = load ptr, ptr %i.io, align 8, !tbaa !55
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 24
  %i.is = load ptr, ptr %i.ir, align 8
  invoke void %i.is(ptr noundef nonnull align 8 dereferenceable(8) %i.io, ptr noundef %i.ip)
          to label %_ZN4ncnn3MatD2Ev.exit457 unwind label %bb.o, !inline_history !0

bb.m:                                             ; preds = %bb.k
  %.not.i535 = icmp eq ptr %i.ip, null
  br i1 %.not.i535, label %_ZN4ncnn3MatD2Ev.exit457, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @free(ptr noundef nonnull %i.ip) #6
  br label %_ZN4ncnn3MatD2Ev.exit457

bb.o:                                             ; preds = %bb.l
  %i.it = landingpad { ptr, i32 }
          catch ptr null
  %i.iu = extractvalue { ptr, i32 } %i.it, 0
  call void @__clang_call_terminate(ptr %i.iu) #14
  unreachable

_ZN4ncnn3MatD2Ev.exit457:                         ; preds = %bb.j, %bb.i, %bb.l, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br label %bb.bx

bb.p:                                             ; preds = %.lr.ph707, %bb.r
  %i.iv = phi ptr [ %i.hn, %.lr.ph707 ], [ %i.qy, %bb.r ] ; 2 uses
  %i.iw = phi ptr [ %i.hm, %.lr.ph707 ], [ %i.qz, %bb.r ]
  %.0372705 = phi i64 [ 0, %.lr.ph707 ], [ %i.ra, %bb.r ] ; 2 uses
  %.0373704 = phi ptr [ %i.ho, %.lr.ph707 ], [ %.3376, %bb.r ] ; 12 uses
  %i.ix = getelementptr inbounds nuw [72 x i8], ptr %i.iv, i64 %.0372705 ; 8 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 24 ; 2 uses
  %i.iz = load i32, ptr %i.iy, align 8, !tbaa !18 ; 2 uses
  %i.ja = icmp eq i32 %i.iz, 4
  %or.cond9 = and i1 %i.ja, %i.hp
  br i1 %or.cond9, label %.preheader, label %.loopexit671

.preheader:                                       ; preds = %bb.p
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ix, i64 48
  %i.jc = load i32, ptr %i.jb, align 8, !tbaa !49 ; 3 uses
  %i.jd = icmp sgt i32 %i.jc, 0
  br i1 %i.jd, label %.lr.ph702, label %.loopexit671

.lr.ph702:                                        ; preds = %.preheader
  %i.je = load ptr, ptr %i.ix, align 8, !tbaa !43 ; 6 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ix, i64 44
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !36
  %i.jh = sext i32 %i.jg to i64                   ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !19 ; 3 uses
  %factor.op.mul = mul i64 %i.jj, %i.jh
  br i1 %i.hv, label %.lr.ph698.us.preheader, label %.lr.ph702.split.preheader

.lr.ph702.split.preheader:                        ; preds = %.lr.ph702
  %i.jk = add nsw i32 %i.jc, -1
  %i.jl = zext nneg i32 %i.jk to i64
  %i.jm = shl nuw nsw i64 %i.jl, 1
  %i.jn = add nuw nsw i64 %i.jm, 2
  %i.jo = mul nsw i64 %i.jn, %i.hx
  %scevgep = getelementptr i8, ptr %.0373704, i64 %i.jo
  br label %.loopexit671

.lr.ph698.us.preheader:                           ; preds = %.lr.ph702
  %wide.trip.count = zext nneg i32 %i.jc to i64   ; 2 uses
  %i.jp = getelementptr i8, ptr %.0373704, i64 %i.ia
  %scevgep873 = getelementptr i8, ptr %i.jp, i64 2
  %i.jq = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.jr = mul i64 %i.ib, %i.jq                    ; 4 uses
  %scevgep874 = getelementptr i8, ptr %scevgep873, i64 %i.jr
  %scevgep875 = getelementptr i8, ptr %.0373704, i64 %i.ic ; 4 uses
  %i.js = getelementptr i8, ptr %.0373704, i64 %i.ic
  %i.jt = getelementptr i8, ptr %i.js, i64 %i.ia
  %scevgep876 = getelementptr i8, ptr %i.jt, i64 2
  %scevgep877 = getelementptr i8, ptr %scevgep876, i64 %i.jr ; 4 uses
  %scevgep878 = getelementptr i8, ptr %.0373704, i64 %i.id ; 4 uses
  %i.ju = getelementptr i8, ptr %.0373704, i64 %i.id
  %i.jv = getelementptr i8, ptr %i.ju, i64 %i.ia
  %scevgep879 = getelementptr i8, ptr %i.jv, i64 2
  %scevgep880 = getelementptr i8, ptr %scevgep879, i64 %i.jr ; 4 uses
  %scevgep881 = getelementptr i8, ptr %.0373704, i64 %i.ie ; 4 uses
  %i.jw = getelementptr i8, ptr %.0373704, i64 %i.ie
  %i.jx = getelementptr i8, ptr %i.jw, i64 %i.ia
  %scevgep882 = getelementptr i8, ptr %i.jx, i64 2
  %scevgep883 = getelementptr i8, ptr %scevgep882, i64 %i.jr ; 4 uses
  %i.jy = getelementptr i8, ptr %i.je, i64 %i.if
  %scevgep884 = getelementptr i8, ptr %i.jy, i64 8
  %i.jz = mul i64 %i.jj, %i.jq
  %i.ka = mul i64 %i.jz, %i.jh
  %scevgep885 = getelementptr i8, ptr %scevgep884, i64 %i.ka ; 4 uses
  %i.kb = mul i64 %i.jj, %i.jh
  %i.kc = insertelement <4 x ptr> poison, ptr %.0373704, i64 0
  %i.kd = shufflevector <4 x ptr> %i.kc, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ke = insertelement <4 x ptr> poison, ptr %scevgep877, i64 0
  %i.kf = insertelement <4 x ptr> %i.ke, ptr %scevgep880, i64 1
  %i.kg = insertelement <4 x ptr> %i.kf, ptr %scevgep883, i64 2
  %i.kh = insertelement <4 x ptr> %i.kg, ptr %scevgep885, i64 3
  %i.ki = insertelement <4 x ptr> poison, ptr %scevgep875, i64 0
  %i.kj = insertelement <4 x ptr> %i.ki, ptr %scevgep878, i64 1
  %i.kk = insertelement <4 x ptr> %i.kj, ptr %scevgep881, i64 2
  %i.kl = insertelement <4 x ptr> %i.kk, ptr %i.je, i64 3
  %i.km = insertelement <4 x ptr> poison, ptr %scevgep874, i64 0
  %i.kn = shufflevector <4 x ptr> %i.km, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ko = icmp ult <4 x ptr> %i.kd, %i.kh
  %i.kp = icmp ult <4 x ptr> %i.kl, %i.kn
  %i.kq = and <4 x i1> %i.ko, %i.kp
  %stride.check902 = icmp slt i64 %i.kb, 0
  %bound0904 = icmp ult ptr %scevgep875, %scevgep880
  %bound1905 = icmp ult ptr %scevgep878, %scevgep877
  %found.conflict906 = and i1 %bound0904, %bound1905
  %bound0910.a = icmp ult ptr %scevgep875, %scevgep883
  %bound1911.a = icmp ult ptr %scevgep881, %scevgep877
  %found.conflict912.a = and i1 %bound0910.a, %bound1911.a
  %bound0916 = icmp ult ptr %scevgep875, %scevgep885
  %bound1917 = icmp ult ptr %i.je, %scevgep877
  %found.conflict918 = and i1 %bound0916, %bound1917
  %bound0922 = icmp ult ptr %scevgep878, %scevgep883
  %bound1923 = icmp ult ptr %scevgep881, %scevgep880
  %found.conflict924 = and i1 %bound0922, %bound1923
  %bound0928 = icmp ult ptr %scevgep878, %scevgep885
  %bound1929 = icmp ult ptr %i.je, %scevgep880
  %found.conflict930 = and i1 %bound0928, %bound1929
  %bound0934 = icmp ult ptr %scevgep881, %scevgep885
  %bound1935 = icmp ult ptr %i.je, %scevgep883
  %found.conflict936 = and i1 %bound0934, %bound1935
  %i.kr = bitcast <4 x i1> %i.kq to i4
  %i.ks = icmp ne i4 %i.kr, 0
  %op.rdx1120 = or i1 %i.ks, %found.conflict906
  %op.rdx1121 = or i1 %found.conflict912.a, %found.conflict918
  %op.rdx1122 = or i1 %found.conflict924, %found.conflict930
  %op.rdx1123 = or i1 %found.conflict936, %stride.check902
  %op.rdx1125 = or i1 %op.rdx1120, %op.rdx1121
  %op.rdx1126 = or i1 %op.rdx1122, %op.rdx1123
  %op.rdx1127 = or i1 %op.rdx1125, %op.rdx1126
  %op.rdx1128 = or i1 %op.rdx1127, %stride.check890
  br label %.lr.ph698.us

.lr.ph698.us:                                     ; preds = %.lr.ph698.us.preheader, %._crit_edge699.us
  %indvars.iv = phi i64 [ 0, %.lr.ph698.us.preheader ], [ %indvars.iv.next, %._crit_edge699.us ] ; 2 uses
  %.1374700.us = phi ptr [ %.0373704, %.lr.ph698.us.preheader ], [ %i.qk, %._crit_edge699.us ] ; 8 uses
  %.reass.us = mul i64 %factor.op.mul, %indvars.iv
  %i.kt = getelementptr inbounds nuw i8, ptr %i.je, i64 %.reass.us ; 11 uses
  %i.ku = getelementptr inbounds nuw [2 x i8], ptr %.1374700.us, i64 %i.hq ; 4 uses
  %i.kv = getelementptr inbounds nuw [2 x i8], ptr %.1374700.us, i64 %i.hs ; 4 uses
  %i.kw = getelementptr inbounds nuw [2 x i8], ptr %.1374700.us, i64 %i.hu ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph698.us
  br i1 %op.rdx1128, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.kx = getelementptr i8, ptr %i.kw, i64 %i.ii
  %i.ky = getelementptr i8, ptr %i.kv, i64 %i.ii
  %i.kz = getelementptr i8, ptr %i.ku, i64 %i.ii
  %i.la = getelementptr i8, ptr %.1374700.us, i64 %i.ii
  %i.lb = getelementptr i8, ptr %i.kt, i64 %i.ij
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.lc = shl i64 %index, 1                       ; 4 uses
  %next.gep = getelementptr i8, ptr %i.kw, i64 %i.lc
  %next.gep940 = getelementptr i8, ptr %i.kv, i64 %i.lc
  %next.gep941 = getelementptr i8, ptr %i.ku, i64 %i.lc
  %next.gep942 = getelementptr i8, ptr %.1374700.us, i64 %i.lc
  %i.ld = shl i64 %index, 3                       ; 8 uses
  %next.gep943 = getelementptr i8, ptr %i.kt, i64 %i.ld ; 4 uses
  %i.le = getelementptr i8, ptr %i.kt, i64 %i.ld  ; 4 uses
  %next.gep944 = getelementptr i8, ptr %i.le, i64 8
  %i.lf = getelementptr i8, ptr %i.kt, i64 %i.ld  ; 4 uses
  %next.gep945 = getelementptr i8, ptr %i.lf, i64 16
  %i.lg = getelementptr i8, ptr %i.kt, i64 %i.ld  ; 4 uses
  %next.gep946 = getelementptr i8, ptr %i.lg, i64 24
  %i.lh = getelementptr i8, ptr %i.kt, i64 %i.ld  ; 4 uses
  %next.gep947 = getelementptr i8, ptr %i.lh, i64 32
  %i.li = getelementptr i8, ptr %i.kt, i64 %i.ld  ; 4 uses
  %next.gep948 = getelementptr i8, ptr %i.li, i64 40
  %i.lj = getelementptr i8, ptr %i.kt, i64 %i.ld  ; 4 uses
  %next.gep949 = getelementptr i8, ptr %i.lj, i64 48
  %i.lk = getelementptr i8, ptr %i.kt, i64 %i.ld  ; 4 uses
  %next.gep950 = getelementptr i8, ptr %i.lk, i64 56
  %i.ll = load i16, ptr %next.gep943, align 2, !tbaa !136, !alias.scope !137
  %i.lm = load i16, ptr %next.gep944, align 2, !tbaa !136, !alias.scope !137
  %i.ln = load i16, ptr %next.gep945, align 2, !tbaa !136, !alias.scope !137
  %i.lo = load i16, ptr %next.gep946, align 2, !tbaa !136, !alias.scope !137
  %i.lp = load i16, ptr %next.gep947, align 2, !tbaa !136, !alias.scope !137
  %i.lq = load i16, ptr %next.gep948, align 2, !tbaa !136, !alias.scope !137
  %i.lr = load i16, ptr %next.gep949, align 2, !tbaa !136, !alias.scope !137
  %i.ls = load i16, ptr %next.gep950, align 2, !tbaa !136, !alias.scope !137
  %i.lt = insertelement <8 x i16> poison, i16 %i.ll, i64 0
  %i.lu = insertelement <8 x i16> %i.lt, i16 %i.lm, i64 1
  %i.lv = insertelement <8 x i16> %i.lu, i16 %i.ln, i64 2
  %i.lw = insertelement <8 x i16> %i.lv, i16 %i.lo, i64 3
  %i.lx = insertelement <8 x i16> %i.lw, i16 %i.lp, i64 4
  %i.ly = insertelement <8 x i16> %i.lx, i16 %i.lq, i64 5
  %i.lz = insertelement <8 x i16> %i.ly, i16 %i.lr, i64 6
  %i.ma = insertelement <8 x i16> %i.lz, i16 %i.ls, i64 7
  store <8 x i16> %i.ma, ptr %next.gep942, align 2, !tbaa !136, !alias.scope !138, !noalias !139
  %i.mb = getelementptr inbounds nuw i8, ptr %next.gep943, i64 2
  %i.mc = getelementptr i8, ptr %i.le, i64 10
  %i.md = getelementptr i8, ptr %i.lf, i64 18
  %i.me = getelementptr i8, ptr %i.lg, i64 26
  %i.mf = getelementptr i8, ptr %i.lh, i64 34
  %i.mg = getelementptr i8, ptr %i.li, i64 42
  %i.mh = getelementptr i8, ptr %i.lj, i64 50
  %i.mi = getelementptr i8, ptr %i.lk, i64 58
  %i.mj = load i16, ptr %i.mb, align 2, !tbaa !136, !alias.scope !137
  %i.mk = load i16, ptr %i.mc, align 2, !tbaa !136, !alias.scope !137
  %i.ml = load i16, ptr %i.md, align 2, !tbaa !136, !alias.scope !137
  %i.mm = load i16, ptr %i.me, align 2, !tbaa !136, !alias.scope !137
  %i.mn = load i16, ptr %i.mf, align 2, !tbaa !136, !alias.scope !137
  %i.mo = load i16, ptr %i.mg, align 2, !tbaa !136, !alias.scope !137
  %i.mp = load i16, ptr %i.mh, align 2, !tbaa !136, !alias.scope !137
  %i.mq = load i16, ptr %i.mi, align 2, !tbaa !136, !alias.scope !137
  %i.mr = insertelement <8 x i16> poison, i16 %i.mj, i64 0
  %i.ms = insertelement <8 x i16> %i.mr, i16 %i.mk, i64 1
  %i.mt = insertelement <8 x i16> %i.ms, i16 %i.ml, i64 2
  %i.mu = insertelement <8 x i16> %i.mt, i16 %i.mm, i64 3
  %i.mv = insertelement <8 x i16> %i.mu, i16 %i.mn, i64 4
  %i.mw = insertelement <8 x i16> %i.mv, i16 %i.mo, i64 5
  %i.mx = insertelement <8 x i16> %i.mw, i16 %i.mp, i64 6
  %i.my = insertelement <8 x i16> %i.mx, i16 %i.mq, i64 7
  store <8 x i16> %i.my, ptr %next.gep941, align 2, !tbaa !136, !alias.scope !140, !noalias !141
  %i.mz = getelementptr inbounds nuw i8, ptr %next.gep943, i64 4
  %i.na = getelementptr i8, ptr %i.le, i64 12
  %i.nb = getelementptr i8, ptr %i.lf, i64 20
  %i.nc = getelementptr i8, ptr %i.lg, i64 28
  %i.nd = getelementptr i8, ptr %i.lh, i64 36
  %i.ne = getelementptr i8, ptr %i.li, i64 44
  %i.nf = getelementptr i8, ptr %i.lj, i64 52
  %i.ng = getelementptr i8, ptr %i.lk, i64 60
  %i.nh = load i16, ptr %i.mz, align 2, !tbaa !136, !alias.scope !137
  %i.ni = load i16, ptr %i.na, align 2, !tbaa !136, !alias.scope !137
  %i.nj = load i16, ptr %i.nb, align 2, !tbaa !136, !alias.scope !137
  %i.nk = load i16, ptr %i.nc, align 2, !tbaa !136, !alias.scope !137
  %i.nl = load i16, ptr %i.nd, align 2, !tbaa !136, !alias.scope !137
  %i.nm = load i16, ptr %i.ne, align 2, !tbaa !136, !alias.scope !137
  %i.nn = load i16, ptr %i.nf, align 2, !tbaa !136, !alias.scope !137
  %i.no = load i16, ptr %i.ng, align 2, !tbaa !136, !alias.scope !137
  %i.np = insertelement <8 x i16> poison, i16 %i.nh, i64 0
  %i.nq = insertelement <8 x i16> %i.np, i16 %i.ni, i64 1
  %i.nr = insertelement <8 x i16> %i.nq, i16 %i.nj, i64 2
  %i.ns = insertelement <8 x i16> %i.nr, i16 %i.nk, i64 3
  %i.nt = insertelement <8 x i16> %i.ns, i16 %i.nl, i64 4
  %i.nu = insertelement <8 x i16> %i.nt, i16 %i.nm, i64 5
  %i.nv = insertelement <8 x i16> %i.nu, i16 %i.nn, i64 6
  %i.nw = insertelement <8 x i16> %i.nv, i16 %i.no, i64 7
  store <8 x i16> %i.nw, ptr %next.gep940, align 2, !tbaa !136, !alias.scope !142, !noalias !143
  %i.nx = getelementptr inbounds nuw i8, ptr %next.gep943, i64 6
  %i.ny = getelementptr i8, ptr %i.le, i64 14
  %i.nz = getelementptr i8, ptr %i.lf, i64 22
  %i.oa = getelementptr i8, ptr %i.lg, i64 30
  %i.ob = getelementptr i8, ptr %i.lh, i64 38
  %i.oc = getelementptr i8, ptr %i.li, i64 46
  %i.od = getelementptr i8, ptr %i.lj, i64 54
  %i.oe = getelementptr i8, ptr %i.lk, i64 62
  %i.of = load i16, ptr %i.nx, align 2, !tbaa !136, !alias.scope !137
  %i.og = load i16, ptr %i.ny, align 2, !tbaa !136, !alias.scope !137
  %i.oh = load i16, ptr %i.nz, align 2, !tbaa !136, !alias.scope !137
  %i.oi = load i16, ptr %i.oa, align 2, !tbaa !136, !alias.scope !137
  %i.oj = load i16, ptr %i.ob, align 2, !tbaa !136, !alias.scope !137
  %i.ok = load i16, ptr %i.oc, align 2, !tbaa !136, !alias.scope !137
  %i.ol = load i16, ptr %i.od, align 2, !tbaa !136, !alias.scope !137
  %i.om = load i16, ptr %i.oe, align 2, !tbaa !136, !alias.scope !137
  %i.on = insertelement <8 x i16> poison, i16 %i.of, i64 0
  %i.oo = insertelement <8 x i16> %i.on, i16 %i.og, i64 1
  %i.op = insertelement <8 x i16> %i.oo, i16 %i.oh, i64 2
  %i.oq = insertelement <8 x i16> %i.op, i16 %i.oi, i64 3
  %i.or = insertelement <8 x i16> %i.oq, i16 %i.oj, i64 4
  %i.os = insertelement <8 x i16> %i.or, i16 %i.ok, i64 5
  %i.ot = insertelement <8 x i16> %i.os, i16 %i.ol, i64 6
  %i.ou = insertelement <8 x i16> %i.ot, i16 %i.om, i64 7
  store <8 x i16> %i.ou, ptr %next.gep, align 2, !tbaa !136, !alias.scope !144, !noalias !137
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ov = icmp eq i64 %index.next, %n.vec
  br i1 %i.ov, label %middle.block, label %vector.body, !llvm.loop !106

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge699.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph698.us, %middle.block
  %.0365696.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph698.us ], [ %i.ih, %middle.block ] ; 4 uses
  %.0366695.us.ph = phi ptr [ %i.kw, %vector.memcheck ], [ %i.kw, %.lr.ph698.us ], [ %i.kx, %middle.block ] ; 3 uses
  %.0367694.us.ph = phi ptr [ %i.kv, %vector.memcheck ], [ %i.kv, %.lr.ph698.us ], [ %i.ky, %middle.block ] ; 3 uses
  %.0368693.us.ph = phi ptr [ %i.ku, %vector.memcheck ], [ %i.ku, %.lr.ph698.us ], [ %i.kz, %middle.block ] ; 3 uses
  %.0369692.us.ph = phi ptr [ %.1374700.us, %vector.memcheck ], [ %.1374700.us, %.lr.ph698.us ], [ %i.la, %middle.block ] ; 3 uses
  %.0370691.us.ph = phi ptr [ %i.kt, %vector.memcheck ], [ %i.kt, %.lr.ph698.us ], [ %i.lb, %middle.block ] ; 6 uses
  %i.ow = sub i32 %i.dv, %.0365696.us.ph
  %.neg = add i32 %.0365696.us.ph, 1
  %xtraiter1152 = and i32 %i.ow, 1
  %lcmp.mod1153.not = icmp eq i32 %xtraiter1152, 0
  br i1 %lcmp.mod1153.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ox = load i16, ptr %.0370691.us.ph, align 2, !tbaa !136
  %i.oy = getelementptr inbounds nuw i8, ptr %.0369692.us.ph, i64 2
  store i16 %i.ox, ptr %.0369692.us.ph, align 2, !tbaa !136
  %i.oz = getelementptr inbounds nuw i8, ptr %.0370691.us.ph, i64 2
  %i.pa = load i16, ptr %i.oz, align 2, !tbaa !136
  %i.pb = getelementptr inbounds nuw i8, ptr %.0368693.us.ph, i64 2
  store i16 %i.pa, ptr %.0368693.us.ph, align 2, !tbaa !136
  %i.pc = getelementptr inbounds nuw i8, ptr %.0370691.us.ph, i64 4
  %i.pd = load i16, ptr %i.pc, align 2, !tbaa !136
  %i.pe = getelementptr inbounds nuw i8, ptr %.0367694.us.ph, i64 2
  store i16 %i.pd, ptr %.0367694.us.ph, align 2, !tbaa !136
  %i.pf = getelementptr inbounds nuw i8, ptr %.0370691.us.ph, i64 6
  %i.pg = load i16, ptr %i.pf, align 2, !tbaa !136
  %i.ph = getelementptr inbounds nuw i8, ptr %.0366695.us.ph, i64 2
  store i16 %i.pg, ptr %.0366695.us.ph, align 2, !tbaa !136
  %i.pi = getelementptr inbounds nuw i8, ptr %.0370691.us.ph, i64 8
  %i.pj = add nuw nsw i32 %.0365696.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0365696.us.unr = phi i32 [ %.0365696.us.ph, %scalar.ph.preheader ], [ %i.pj, %scalar.ph.prol ]
  %.0366695.us.unr = phi ptr [ %.0366695.us.ph, %scalar.ph.preheader ], [ %i.ph, %scalar.ph.prol ]
  %.0367694.us.unr = phi ptr [ %.0367694.us.ph, %scalar.ph.preheader ], [ %i.pe, %scalar.ph.prol ]
  %.0368693.us.unr = phi ptr [ %.0368693.us.ph, %scalar.ph.preheader ], [ %i.pb, %scalar.ph.prol ]
  %.0369692.us.unr = phi ptr [ %.0369692.us.ph, %scalar.ph.preheader ], [ %i.oy, %scalar.ph.prol ]
  %.0370691.us.unr = phi ptr [ %.0370691.us.ph, %scalar.ph.preheader ], [ %i.pi, %scalar.ph.prol ]
  %i.pk = icmp eq i32 %i.dv, %.neg
  br i1 %i.pk, label %._crit_edge699.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0365696.us = phi i32 [ %i.qj, %scalar.ph ], [ %.0365696.us.unr, %scalar.ph.prol.loopexit ]
  %.0366695.us = phi ptr [ %i.qh, %scalar.ph ], [ %.0366695.us.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.0367694.us = phi ptr [ %i.qe, %scalar.ph ], [ %.0367694.us.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.0368693.us = phi ptr [ %i.qb, %scalar.ph ], [ %.0368693.us.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.0369692.us = phi ptr [ %i.py, %scalar.ph ], [ %.0369692.us.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.0370691.us = phi ptr [ %i.qi, %scalar.ph ], [ %.0370691.us.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.pl = load i16, ptr %.0370691.us, align 2, !tbaa !136
  %i.pm = getelementptr inbounds nuw i8, ptr %.0369692.us, i64 2
  store i16 %i.pl, ptr %.0369692.us, align 2, !tbaa !136
  %i.pn = getelementptr inbounds nuw i8, ptr %.0370691.us, i64 2
  %i.po = load i16, ptr %i.pn, align 2, !tbaa !136
end_hunk_0
begin_hunk_1_@_ZNK4ncnn10Concat_x8619forward_bf16s_fp16sERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
  %i.vq = and i32 %.0360.lcssa, 3
  %i.vr = icmp eq i32 %i.vq, 0
  %i.vs = and i1 %i.vr, %i.vp                     ; 2 uses
  %.0358 = select i1 %i.vs, i32 4, i32 1          ; 4 uses
  %i.vt = sext i32 %.0670.lcssa to i64
  %i.vu = udiv i64 %.0669.lcssa, %i.vt
  %i.vv = select i1 %i.vs, i64 2, i64 0
  %i.vw = shl i64 %i.vu, %i.vv
  %i.vx = load ptr, ptr %2, align 8, !tbaa !13    ; 11 uses
  %i.vy = sdiv i32 %.0360.lcssa, %.0358
  %i.vz = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !42
  call void @_ZN4ncnn3Mat6createEiiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.vx, i32 noundef %i.uo, i32 noundef %i.uq, i32 noundef %i.us, i32 noundef %i.vy, i64 noundef %i.vw, i32 noundef %.0358, ptr noundef %i.wa)
  %i.wb = load ptr, ptr %i.vx, align 8, !tbaa !43
  %i.wc = icmp eq ptr %i.wb, null
  br i1 %i.wc, label %.critedge, label %_ZNK4ncnn3Mat5emptyEv.exit443

_ZNK4ncnn3Mat5emptyEv.exit443:                    ; preds = %._crit_edge721
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vx, i64 64 ; 2 uses
  %i.we = load i64, ptr %i.wd, align 8, !tbaa !44
  %i.wf = getelementptr inbounds nuw i8, ptr %i.vx, i64 56 ; 2 uses
  %i.wg = load i32, ptr %i.wf, align 8, !tbaa !45
  %i.wh = sext i32 %i.wg to i64
  %i.wi = mul i64 %i.we, %i.wh
  %i.wj = icmp eq i64 %i.wi, 0
  br i1 %i.wj, label %.critedge, label %bb.af

.lr.ph720:                                        ; preds = %.lr.ph720, %.lr.ph720.preheader.new
  %.0359718 = phi i64 [ 0, %.lr.ph720.preheader.new ], [ %i.xc, %.lr.ph720 ] ; 3 uses
  %.0360717 = phi i32 [ 0, %.lr.ph720.preheader.new ], [ %i.xb, %.lr.ph720 ]
  %.0669716 = phi i64 [ %i.uu, %.lr.ph720.preheader.new ], [ %.sroa.speculated641.1, %.lr.ph720 ]
  %.0670715 = phi i32 [ %i.uw, %.lr.ph720.preheader.new ], [ %.sroa.speculated.1, %.lr.ph720 ]
  %niter1168 = phi i64 [ 0, %.lr.ph720.preheader.new ], [ %niter1168.next.1, %.lr.ph720 ]
  %i.wk = getelementptr inbounds nuw [72 x i8], ptr %i.um, i64 %.0359718 ; 3 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 16
  %i.wm = load i64, ptr %i.wl, align 8, !tbaa !47
  %.sroa.speculated641 = call i64 @llvm.umin.i64(i64 %i.wm, i64 %.0669716)
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wk, i64 24
  %i.wo = load i32, ptr %i.wn, align 8, !tbaa !48 ; 2 uses
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.wo, i32 %.0670715)
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wk, i64 56
  %i.wq = load i32, ptr %i.wp, align 8, !tbaa !45
  %i.wr = mul nsw i32 %i.wq, %i.wo
  %i.ws = add nsw i32 %i.wr, %.0360717
  %i.wt = getelementptr inbounds nuw [72 x i8], ptr %i.um, i64 %.0359718 ; 3 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 88
  %i.wv = load i64, ptr %i.wu, align 8, !tbaa !47
  %.sroa.speculated641.1 = call i64 @llvm.umin.i64(i64 %i.wv, i64 %.sroa.speculated641) ; 3 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wt, i64 96
  %i.wx = load i32, ptr %i.ww, align 8, !tbaa !48 ; 2 uses
  %.sroa.speculated.1 = call i32 @llvm.smin.i32(i32 %i.wx, i32 %.sroa.speculated) ; 3 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wt, i64 128
  %i.wz = load i32, ptr %i.wy, align 8, !tbaa !45
  %i.xa = mul nsw i32 %i.wz, %i.wx
  %i.xb = add nsw i32 %i.xa, %i.ws                ; 3 uses
  %i.xc = add nuw i64 %.0359718, 2                ; 2 uses
  %niter1168.next.1 = add i64 %niter1168, 2       ; 2 uses
  %niter1168.ncmp.1 = icmp eq i64 %niter1168.next.1, %unroll_iter1167
  br i1 %niter1168.ncmp.1, label %._crit_edge721.loopexit.unr-lcssa, label %.lr.ph720, !llvm.loop !112

bb.af:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit443
  %i.xd = getelementptr inbounds nuw i8, ptr %i.vx, i64 40 ; 2 uses
  store i32 %i.s, ptr %i.xd, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  %i.xe = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %i.vx, i64 8
  %i.xg = load ptr, ptr %i.xf, align 8, !tbaa !50 ; 2 uses
  %i.xh = load <2 x ptr>, ptr %i.vx, align 8, !tbaa !51
  store <2 x ptr> %i.xh, ptr %5, align 16, !tbaa !51
  %i.xi = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %i.vx, i64 16
  %i.xk = load i64, ptr %i.xj, align 8, !tbaa !19
  store i64 %i.xk, ptr %i.xi, align 16, !tbaa !19
  %i.xl = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.xm = getelementptr inbounds nuw i8, ptr %i.vx, i64 24
  %i.xn = load i32, ptr %i.xm, align 8, !tbaa !18
  store i32 %i.xn, ptr %i.xl, align 8, !tbaa !18
  %i.xo = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %i.vx, i64 32
  %i.xq = load ptr, ptr %i.xp, align 8, !tbaa !52
  store ptr %i.xq, ptr %i.xo, align 16, !tbaa !52
  %i.xr = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.xs = load <4 x i32>, ptr %i.xd, align 8, !tbaa !48
  store <4 x i32> %i.xs, ptr %i.xr, align 8, !tbaa !48
  %i.xt = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.xu = load i32, ptr %i.wf, align 8, !tbaa !45
  store i32 %i.xu, ptr %i.xt, align 8, !tbaa !45
  %i.xv = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 4 uses
  %i.xw = load i64, ptr %i.wd, align 8, !tbaa !44
  store i64 %i.xw, ptr %i.xv, align 16, !tbaa !44
  %.not.i468 = icmp eq ptr %i.xg, null
  br i1 %.not.i468, label %_ZN4ncnn3Mat6addrefEv.exit469, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.xx = atomicrmw add ptr %i.xg, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit469

_ZN4ncnn3Mat6addrefEv.exit469:                    ; preds = %bb.af, %bb.ag
  %i.xy = icmp slt i32 %.0670.lcssa, %.0358       ; 2 uses
  br i1 %i.xy, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %_ZN4ncnn3Mat6addrefEv.exit469
  %i.xz = sdiv i32 %.0360.lcssa, %.0670.lcssa
  %i.ya = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.yb = load ptr, ptr %i.ya, align 8, !tbaa !53
  invoke void @_ZN4ncnn3Mat6createEiiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %5, i32 noundef %i.uo, i32 noundef %i.uq, i32 noundef %i.us, i32 noundef %i.xz, i64 noundef %.0669.lcssa, i32 noundef %.0670.lcssa, ptr noundef %i.yb)
          to label %bb.ai unwind label %bb.ap

bb.ai:                                            ; preds = %bb.ah
  %i.yc = load ptr, ptr %5, align 16, !tbaa !43
  %i.yd = icmp eq ptr %i.yc, null
  br i1 %i.yd, label %.critedge.critedge439, label %_ZNK4ncnn3Mat5emptyEv.exit442

_ZNK4ncnn3Mat5emptyEv.exit442:                    ; preds = %bb.ai
  %i.ye = load i64, ptr %i.xv, align 16, !tbaa !44
  %i.yf = load i32, ptr %i.xt, align 8, !tbaa !45
  %i.yg = sext i32 %i.yf to i64
  %i.yh = mul i64 %i.ye, %i.yg
  %i.yi = icmp eq i64 %i.yh, 0
  br i1 %i.yi, label %.critedge.critedge439, label %bb.aj

bb.aj:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit442
  store i32 %i.s, ptr %i.xr, align 8, !tbaa !20
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %_ZN4ncnn3Mat6addrefEv.exit469
  %i.yj = load ptr, ptr %i.ux, align 8, !tbaa !35 ; 2 uses
  %i.yk = load ptr, ptr %1, align 8, !tbaa !13    ; 2 uses
  %.not775 = icmp eq ptr %i.yj, %i.yk
  br i1 %.not775, label %._crit_edge751, label %.lr.ph750

.lr.ph750:                                        ; preds = %bb.ak
  %i.yl = icmp eq i32 %.0670.lcssa, 1
  br label %bb.al

._crit_edge751:                                   ; preds = %bb.an, %bb.ak
  br i1 %i.xy, label %bb.ao, label %bb.aq

bb.al:                                            ; preds = %.lr.ph750, %bb.an
  %i.ym = phi ptr [ %i.yk, %.lr.ph750 ], [ %i.air, %bb.an ] ; 2 uses
  %i.yn = phi ptr [ %i.yj, %.lr.ph750 ], [ %i.ais, %bb.an ]
  %.0353748 = phi i64 [ 0, %.lr.ph750 ], [ %i.ait, %bb.an ] ; 2 uses
  %.0354747 = phi i32 [ 0, %.lr.ph750 ], [ %.3357, %bb.an ] ; 4 uses
  %i.yo = getelementptr inbounds nuw [72 x i8], ptr %i.ym, i64 %.0353748 ; 12 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 24
  %i.yq = load i32, ptr %i.yp, align 8, !tbaa !18 ; 2 uses
  %i.yr = icmp eq i32 %i.yq, 4
  %or.cond17 = and i1 %i.yr, %i.yl
  br i1 %or.cond17, label %bb.am, label %.loopexit

bb.am:                                            ; preds = %bb.al
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yo, i64 44
  %i.yt = load i32, ptr %i.ys, align 4, !tbaa !36
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yo, i64 48
  %i.yv = load i32, ptr %i.yu, align 8, !tbaa !49
  %i.yw = mul i32 %i.yv, %i.yt
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yo, i64 52
  %i.yy = load i32, ptr %i.yx, align 4, !tbaa !59
  %i.yz = mul i32 %i.yw, %i.yy                    ; 7 uses
  %i.za = getelementptr inbounds nuw i8, ptr %i.yo, i64 56
  %i.zb = load i32, ptr %i.za, align 8, !tbaa !45 ; 3 uses
  %i.zc = icmp sgt i32 %i.zb, 0
  br i1 %i.zc, label %.noexc.lr.ph, label %.loopexit

.noexc.lr.ph:                                     ; preds = %bb.am
  %i.zd = load ptr, ptr %i.yo, align 8, !tbaa !43, !noalias !145 ; 6 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %i.yo, i64 64
  %i.zf = load i64, ptr %i.ze, align 8, !tbaa !44, !noalias !145 ; 2 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %i.yo, i64 16
  %i.zh = load i64, ptr %i.zg, align 8, !tbaa !19, !noalias !145 ; 2 uses
  %factor.op.mul736 = mul i64 %i.zf, %i.zh
  %i.zi = load ptr, ptr %5, align 16, !tbaa !43, !noalias !146 ; 12 uses
  %i.zj = load i64, ptr %i.xv, align 16, !tbaa !44, !noalias !146 ; 6 uses
  %i.zk = load i64, ptr %i.xi, align 16, !tbaa !19, !noalias !146 ; 6 uses
  %factor.op.mul737 = mul i64 %i.zj, %i.zk        ; 4 uses
  %i.zl = icmp sgt i32 %i.yz, 0
  br i1 %i.zl, label %.noexc.us.preheader, label %.noexc.preheader

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.zm = shl i32 %i.zb, 2
  %i.zn = add i32 %.0354747, %i.zm
  br label %.loopexit

.noexc.us.preheader:                              ; preds = %.noexc.lr.ph
  %i.zo = sext i32 %.0354747 to i64               ; 9 uses
  %wide.trip.count808 = zext nneg i32 %i.zb to i64 ; 3 uses
  %i.zp = mul i64 %i.zk, %i.zj                    ; 2 uses
  %i.zq = mul i64 %i.zp, %i.zo
  %scevgep968 = getelementptr i8, ptr %i.zi, i64 %i.zq ; 4 uses
  %scevgep969 = getelementptr i8, ptr %i.zi, i64 2
  %i.zr = shl nuw nsw i64 %wide.trip.count808, 2  ; 4 uses
  %i.zs = add nsw i64 %i.zr, -4
  %i.zt = add nsw i64 %i.zs, %i.zo
  %i.zu = mul i64 %i.zp, %i.zt
  %i.zv = add nsw i32 %i.yz, -1
  %i.zw = zext i32 %i.zv to i64                   ; 2 uses
  %i.zx = shl nuw nsw i64 %i.zw, 1                ; 4 uses
  %i.zy = getelementptr i8, ptr %scevgep969, i64 %i.zu
  %scevgep970 = getelementptr i8, ptr %i.zy, i64 %i.zx ; 4 uses
  %i.zz = shl i64 %i.zk, 2
  %i.aaa = mul i64 %i.zz, %i.zj
  %i.aab = mul i64 %i.zk, %i.zj                   ; 2 uses
  %i.aac = add nsw i64 %i.zo, 1
  %i.aad = mul i64 %i.aab, %i.aac
  %scevgep971 = getelementptr i8, ptr %i.zi, i64 %i.aad ; 4 uses
  %scevgep972 = getelementptr i8, ptr %i.zi, i64 2
  %i.aae = add nsw i64 %i.zr, -3
  %i.aaf = add nsw i64 %i.aae, %i.zo
  %i.aag = mul i64 %i.aab, %i.aaf
  %i.aah = getelementptr i8, ptr %scevgep972, i64 %i.aag
  %scevgep973 = getelementptr i8, ptr %i.aah, i64 %i.zx ; 4 uses
  %i.aai = mul i64 %i.zk, %i.zj                   ; 2 uses
  %i.aaj = add nsw i64 %i.zo, 2
  %i.aak = mul i64 %i.aai, %i.aaj
  %scevgep974 = getelementptr i8, ptr %i.zi, i64 %i.aak ; 4 uses
  %scevgep975 = getelementptr i8, ptr %i.zi, i64 2
  %i.aal = add nsw i64 %i.zr, -2
  %i.aam = add nsw i64 %i.aal, %i.zo
  %i.aan = mul i64 %i.aai, %i.aam
  %i.aao = getelementptr i8, ptr %scevgep975, i64 %i.aan
  %scevgep976 = getelementptr i8, ptr %i.aao, i64 %i.zx ; 4 uses
  %i.aap = mul i64 %i.zk, %i.zj                   ; 2 uses
  %i.aaq = add nsw i64 %i.zo, 3
  %i.aar = mul i64 %i.aap, %i.aaq
  %scevgep977 = getelementptr i8, ptr %i.zi, i64 %i.aar ; 4 uses
  %scevgep978 = getelementptr i8, ptr %i.zi, i64 2
  %i.aas = add nsw i64 %i.zr, -1
  %i.aat = add nsw i64 %i.aas, %i.zo
  %i.aau = mul i64 %i.aap, %i.aat
  %i.aav = getelementptr i8, ptr %scevgep978, i64 %i.aau
  %scevgep979 = getelementptr i8, ptr %i.aav, i64 %i.zx ; 4 uses
  %scevgep980 = getelementptr i8, ptr %i.zd, i64 8
  %i.aaw = mul i64 %i.zh, %i.zf                   ; 2 uses
  %i.aax = add nsw i64 %wide.trip.count808, -1
  %i.aay = mul i64 %i.aaw, %i.aax
  %i.aaz = shl nuw nsw i64 %i.zw, 3
  %i.aba = getelementptr i8, ptr %scevgep980, i64 %i.aay
  %scevgep981 = getelementptr i8, ptr %i.aba, i64 %i.aaz ; 4 uses
  %i.abb = insertelement <4 x ptr> poison, ptr %scevgep977, i64 0
  %i.abc = insertelement <4 x ptr> %i.abb, ptr %scevgep968, i64 1
  %i.abd = insertelement <4 x ptr> %i.abc, ptr %scevgep974, i64 2
  %i.abe = insertelement <4 x ptr> %i.abd, ptr %scevgep971, i64 3
  %i.abf = insertelement <4 x ptr> poison, ptr %scevgep970, i64 0
  %i.abg = insertelement <4 x ptr> %i.abf, ptr %scevgep981, i64 1
  %i.abh = insertelement <4 x ptr> %i.abg, ptr %scevgep973, i64 2
  %i.abi = insertelement <4 x ptr> %i.abh, ptr %scevgep979, i64 3
  %i.abj = insertelement <4 x ptr> poison, ptr %scevgep968, i64 0
  %i.abk = insertelement <4 x ptr> %i.abj, ptr %i.zd, i64 1
  %i.abl = insertelement <4 x ptr> %i.abk, ptr %scevgep971, i64 2
  %i.abm = insertelement <4 x ptr> %i.abl, ptr %scevgep977, i64 3
  %i.abn = insertelement <4 x ptr> poison, ptr %scevgep979, i64 0
  %i.abo = insertelement <4 x ptr> %i.abn, ptr %scevgep970, i64 1
  %i.abp = insertelement <4 x ptr> %i.abo, ptr %scevgep976, i64 2
  %i.abq = insertelement <4 x ptr> %i.abp, ptr %scevgep973, i64 3
  %i.abr = zext nneg i32 %i.yz to i64             ; 2 uses
  %min.iters.check1042 = icmp ult i32 %i.yz, 48
  %bound0982 = icmp ult ptr %scevgep968, %scevgep973
  %bound1983 = icmp ult ptr %scevgep971, %scevgep970
  %found.conflict984 = and i1 %bound0982, %bound1983
  %stride.check967 = icmp slt i64 %i.aaa, 0
  %bound0987 = icmp ult ptr %scevgep968, %scevgep976
  %bound1988 = icmp ult ptr %scevgep974, %scevgep970
  %found.conflict989 = and i1 %bound0987, %bound1988
  %6 = icmp ult <4 x ptr> %i.abm, %i.abq
  %i.abs = icmp ult <4 x ptr> %i.abe, %i.abi
  %stride.check979 = icmp slt i64 %i.aaw, 0
  %i.abt = and <4 x i1> %i.abs, %6
  %bound01017 = icmp ult ptr %scevgep971, %scevgep981
  %bound11018 = icmp ult ptr %i.zd, %scevgep973
  %found.conflict1019 = and i1 %bound01017, %bound11018
  %bound01023 = icmp ult ptr %scevgep974, %scevgep979
  %bound11024 = icmp ult ptr %scevgep977, %scevgep976
  %found.conflict1025 = and i1 %bound01023, %bound11024
  %bound01029 = icmp ult ptr %scevgep974, %scevgep981
  %bound11030 = icmp ult ptr %i.zd, %scevgep976
  %found.conflict1031 = and i1 %bound01029, %bound11030
  %bound01035 = icmp ult ptr %scevgep977, %scevgep981
  %bound11036 = icmp ult ptr %i.zd, %scevgep979
  %found.conflict1037 = and i1 %bound01035, %bound11036
  %i.abu = bitcast <4 x i1> %i.abt to i4
  %i.abv = icmp ne i4 %i.abu, 0
  %op.rdx = or i1 %i.abv, %found.conflict984
  %op.rdx1110 = or i1 %found.conflict989, %found.conflict1019
  %op.rdx1111 = or i1 %found.conflict1025, %found.conflict1031
  %op.rdx1112 = or i1 %found.conflict1037, %stride.check967
  %op.rdx1115 = or i1 %op.rdx, %op.rdx1110
  %op.rdx1116 = or i1 %op.rdx1111, %op.rdx1112
  %op.rdx1118 = or i1 %op.rdx1115, %op.rdx1116
  %op.rdx1119 = or i1 %op.rdx1118, %stride.check979
  %n.vec1044 = and i64 %i.abr, 2147483640         ; 5 uses
  %i.abw = trunc nuw nsw i64 %n.vec1044 to i32
  %i.abx = shl nuw nsw i64 %n.vec1044, 1          ; 4 uses
  %i.aby = shl nuw nsw i64 %n.vec1044, 3
  %cmp.n1061 = icmp eq i64 %n.vec1044, %i.abr
  br label %.noexc.us

.noexc.us:                                        ; preds = %.noexc.us.preheader, %._crit_edge732.us
  %indvars.iv803 = phi i64 [ %i.zo, %.noexc.us.preheader ], [ %indvars.iv.next804, %._crit_edge732.us ] ; 5 uses
  %indvars.iv801 = phi i64 [ 0, %.noexc.us.preheader ], [ %indvars.iv.next802, %._crit_edge732.us ] ; 2 uses
  %.reass.us745 = mul i64 %factor.op.mul736, %indvars.iv801
  %i.abz = getelementptr inbounds nuw i8, ptr %i.zd, i64 %.reass.us745 ; 11 uses
  %.reass738.us = mul i64 %factor.op.mul737, %indvars.iv803
  %i.aca = getelementptr inbounds nuw i8, ptr %i.zi, i64 %.reass738.us ; 4 uses
  %i.acb = add nsw i64 %indvars.iv803, 1
  %.reass740.us = mul i64 %factor.op.mul737, %i.acb
  %i.acc = getelementptr inbounds nuw i8, ptr %i.zi, i64 %.reass740.us ; 4 uses
  %i.acd = add nsw i64 %indvars.iv803, 2
  %.reass742.us = mul i64 %factor.op.mul737, %i.acd
  %i.ace = getelementptr inbounds nuw i8, ptr %i.zi, i64 %.reass742.us ; 4 uses
  %i.acf = add nsw i64 %indvars.iv803, 3
  %.reass744.us = mul i64 %factor.op.mul737, %i.acf
  %i.acg = getelementptr inbounds nuw i8, ptr %i.zi, i64 %.reass744.us ; 4 uses
  br i1 %min.iters.check1042, label %scalar.ph1041.preheader, label %vector.memcheck967

vector.memcheck967:                               ; preds = %.noexc.us
  br i1 %op.rdx1119, label %scalar.ph1041.preheader, label %vector.ph1043

vector.ph1043:                                    ; preds = %vector.memcheck967
  %i.ach = getelementptr i8, ptr %i.acg, i64 %i.abx
  %i.aci = getelementptr i8, ptr %i.ace, i64 %i.abx
  %i.acj = getelementptr i8, ptr %i.acc, i64 %i.abx
  %i.ack = getelementptr i8, ptr %i.aca, i64 %i.abx
  %i.acl = getelementptr i8, ptr %i.abz, i64 %i.aby
  br label %vector.body1045

vector.body1045:                                  ; preds = %vector.body1045, %vector.ph1043
  %index1046 = phi i64 [ 0, %vector.ph1043 ], [ %index.next1059, %vector.body1045 ] ; 3 uses
  %i.acm = shl i64 %index1046, 1                  ; 4 uses
  %next.gep1047 = getelementptr i8, ptr %i.acg, i64 %i.acm
  %next.gep1048 = getelementptr i8, ptr %i.ace, i64 %i.acm
  %next.gep1049 = getelementptr i8, ptr %i.acc, i64 %i.acm
  %next.gep1050 = getelementptr i8, ptr %i.aca, i64 %i.acm
  %i.acn = shl i64 %index1046, 3                  ; 8 uses
  %next.gep1051 = getelementptr i8, ptr %i.abz, i64 %i.acn ; 4 uses
  %i.aco = getelementptr i8, ptr %i.abz, i64 %i.acn ; 4 uses
  %next.gep1052 = getelementptr i8, ptr %i.aco, i64 8
  %i.acp = getelementptr i8, ptr %i.abz, i64 %i.acn ; 4 uses
  %next.gep1053 = getelementptr i8, ptr %i.acp, i64 16
  %i.acq = getelementptr i8, ptr %i.abz, i64 %i.acn ; 4 uses
  %next.gep1054 = getelementptr i8, ptr %i.acq, i64 24
  %i.acr = getelementptr i8, ptr %i.abz, i64 %i.acn ; 4 uses
  %next.gep1055 = getelementptr i8, ptr %i.acr, i64 32
  %i.acs = getelementptr i8, ptr %i.abz, i64 %i.acn ; 4 uses
  %next.gep1056 = getelementptr i8, ptr %i.acs, i64 40
  %i.act = getelementptr i8, ptr %i.abz, i64 %i.acn ; 4 uses
  %next.gep1057 = getelementptr i8, ptr %i.act, i64 48
  %i.acu = getelementptr i8, ptr %i.abz, i64 %i.acn ; 4 uses
  %next.gep1058 = getelementptr i8, ptr %i.acu, i64 56
  %i.acv = load i16, ptr %next.gep1051, align 2, !tbaa !136, !alias.scope !147
  %i.acw = load i16, ptr %next.gep1052, align 2, !tbaa !136, !alias.scope !147
  %i.acx = load i16, ptr %next.gep1053, align 2, !tbaa !136, !alias.scope !147
  %i.acy = load i16, ptr %next.gep1054, align 2, !tbaa !136, !alias.scope !147
  %i.acz = load i16, ptr %next.gep1055, align 2, !tbaa !136, !alias.scope !147
  %i.ada = load i16, ptr %next.gep1056, align 2, !tbaa !136, !alias.scope !147
  %i.adb = load i16, ptr %next.gep1057, align 2, !tbaa !136, !alias.scope !147
  %i.adc = load i16, ptr %next.gep1058, align 2, !tbaa !136, !alias.scope !147
  %i.add = insertelement <8 x i16> poison, i16 %i.acv, i64 0
  %i.ade = insertelement <8 x i16> %i.add, i16 %i.acw, i64 1
  %i.adf = insertelement <8 x i16> %i.ade, i16 %i.acx, i64 2
  %i.adg = insertelement <8 x i16> %i.adf, i16 %i.acy, i64 3
  %i.adh = insertelement <8 x i16> %i.adg, i16 %i.acz, i64 4
  %i.adi = insertelement <8 x i16> %i.adh, i16 %i.ada, i64 5
  %i.adj = insertelement <8 x i16> %i.adi, i16 %i.adb, i64 6
  %i.adk = insertelement <8 x i16> %i.adj, i16 %i.adc, i64 7
  store <8 x i16> %i.adk, ptr %next.gep1050, align 2, !tbaa !136, !alias.scope !148, !noalias !149
  %i.adl = getelementptr inbounds nuw i8, ptr %next.gep1051, i64 2
  %i.adm = getelementptr i8, ptr %i.aco, i64 10
  %i.adn = getelementptr i8, ptr %i.acp, i64 18
  %i.ado = getelementptr i8, ptr %i.acq, i64 26
  %i.adp = getelementptr i8, ptr %i.acr, i64 34
  %i.adq = getelementptr i8, ptr %i.acs, i64 42
  %i.adr = getelementptr i8, ptr %i.act, i64 50
  %i.ads = getelementptr i8, ptr %i.acu, i64 58
  %i.adt = load i16, ptr %i.adl, align 2, !tbaa !136, !alias.scope !147
  %i.adu = load i16, ptr %i.adm, align 2, !tbaa !136, !alias.scope !147
  %i.adv = load i16, ptr %i.adn, align 2, !tbaa !136, !alias.scope !147
  %i.adw = load i16, ptr %i.ado, align 2, !tbaa !136, !alias.scope !147
  %i.adx = load i16, ptr %i.adp, align 2, !tbaa !136, !alias.scope !147
  %i.ady = load i16, ptr %i.adq, align 2, !tbaa !136, !alias.scope !147
  %i.adz = load i16, ptr %i.adr, align 2, !tbaa !136, !alias.scope !147
  %i.aea = load i16, ptr %i.ads, align 2, !tbaa !136, !alias.scope !147
  %i.aeb = insertelement <8 x i16> poison, i16 %i.adt, i64 0
  %i.aec = insertelement <8 x i16> %i.aeb, i16 %i.adu, i64 1
  %i.aed = insertelement <8 x i16> %i.aec, i16 %i.adv, i64 2
  %i.aee = insertelement <8 x i16> %i.aed, i16 %i.adw, i64 3
  %i.aef = insertelement <8 x i16> %i.aee, i16 %i.adx, i64 4
  %i.aeg = insertelement <8 x i16> %i.aef, i16 %i.ady, i64 5
  %i.aeh = insertelement <8 x i16> %i.aeg, i16 %i.adz, i64 6
  %i.aei = insertelement <8 x i16> %i.aeh, i16 %i.aea, i64 7
  store <8 x i16> %i.aei, ptr %next.gep1049, align 2, !tbaa !136, !alias.scope !150, !noalias !151
  %i.aej = getelementptr inbounds nuw i8, ptr %next.gep1051, i64 4
  %i.aek = getelementptr i8, ptr %i.aco, i64 12
  %i.ael = getelementptr i8, ptr %i.acp, i64 20
  %i.aem = getelementptr i8, ptr %i.acq, i64 28
  %i.aen = getelementptr i8, ptr %i.acr, i64 36
  %i.aeo = getelementptr i8, ptr %i.acs, i64 44
  %i.aep = getelementptr i8, ptr %i.act, i64 52
  %i.aeq = getelementptr i8, ptr %i.acu, i64 60
  %i.aer = load i16, ptr %i.aej, align 2, !tbaa !136, !alias.scope !147
  %i.aes = load i16, ptr %i.aek, align 2, !tbaa !136, !alias.scope !147
  %i.aet = load i16, ptr %i.ael, align 2, !tbaa !136, !alias.scope !147
  %i.aeu = load i16, ptr %i.aem, align 2, !tbaa !136, !alias.scope !147
  %i.aev = load i16, ptr %i.aen, align 2, !tbaa !136, !alias.scope !147
  %i.aew = load i16, ptr %i.aeo, align 2, !tbaa !136, !alias.scope !147
  %i.aex = load i16, ptr %i.aep, align 2, !tbaa !136, !alias.scope !147
  %i.aey = load i16, ptr %i.aeq, align 2, !tbaa !136, !alias.scope !147
  %i.aez = insertelement <8 x i16> poison, i16 %i.aer, i64 0
  %i.afa = insertelement <8 x i16> %i.aez, i16 %i.aes, i64 1
  %i.afb = insertelement <8 x i16> %i.afa, i16 %i.aet, i64 2
  %i.afc = insertelement <8 x i16> %i.afb, i16 %i.aeu, i64 3
  %i.afd = insertelement <8 x i16> %i.afc, i16 %i.aev, i64 4
  %i.afe = insertelement <8 x i16> %i.afd, i16 %i.aew, i64 5
  %i.aff = insertelement <8 x i16> %i.afe, i16 %i.aex, i64 6
  %i.afg = insertelement <8 x i16> %i.aff, i16 %i.aey, i64 7
  store <8 x i16> %i.afg, ptr %next.gep1048, align 2, !tbaa !136, !alias.scope !152, !noalias !153
  %i.afh = getelementptr inbounds nuw i8, ptr %next.gep1051, i64 6
  %i.afi = getelementptr i8, ptr %i.aco, i64 14
  %i.afj = getelementptr i8, ptr %i.acp, i64 22
  %i.afk = getelementptr i8, ptr %i.acq, i64 30
  %i.afl = getelementptr i8, ptr %i.acr, i64 38
  %i.afm = getelementptr i8, ptr %i.acs, i64 46
  %i.afn = getelementptr i8, ptr %i.act, i64 54
  %i.afo = getelementptr i8, ptr %i.acu, i64 62
  %i.afp = load i16, ptr %i.afh, align 2, !tbaa !136, !alias.scope !147
  %i.afq = load i16, ptr %i.afi, align 2, !tbaa !136, !alias.scope !147
  %i.afr = load i16, ptr %i.afj, align 2, !tbaa !136, !alias.scope !147
  %i.afs = load i16, ptr %i.afk, align 2, !tbaa !136, !alias.scope !147
  %i.aft = load i16, ptr %i.afl, align 2, !tbaa !136, !alias.scope !147
  %i.afu = load i16, ptr %i.afm, align 2, !tbaa !136, !alias.scope !147
  %i.afv = load i16, ptr %i.afn, align 2, !tbaa !136, !alias.scope !147
  %i.afw = load i16, ptr %i.afo, align 2, !tbaa !136, !alias.scope !147
  %i.afx = insertelement <8 x i16> poison, i16 %i.afp, i64 0
  %i.afy = insertelement <8 x i16> %i.afx, i16 %i.afq, i64 1
  %i.afz = insertelement <8 x i16> %i.afy, i16 %i.afr, i64 2
  %i.aga = insertelement <8 x i16> %i.afz, i16 %i.afs, i64 3
  %i.agb = insertelement <8 x i16> %i.aga, i16 %i.aft, i64 4
  %i.agc = insertelement <8 x i16> %i.agb, i16 %i.afu, i64 5
  %i.agd = insertelement <8 x i16> %i.agc, i16 %i.afv, i64 6
  %i.age = insertelement <8 x i16> %i.agd, i16 %i.afw, i64 7
  store <8 x i16> %i.age, ptr %next.gep1047, align 2, !tbaa !136, !alias.scope !154, !noalias !147
  %index.next1059 = add nuw i64 %index1046, 8     ; 2 uses
  %i.agf = icmp eq i64 %index.next1059, %n.vec1044
  br i1 %i.agf, label %middle.block1060, label %vector.body1045, !llvm.loop !123

middle.block1060:                                 ; preds = %vector.body1045
  br i1 %cmp.n1061, label %._crit_edge732.us, label %scalar.ph1041.preheader

scalar.ph1041.preheader:                          ; preds = %vector.memcheck967, %.noexc.us, %middle.block1060
  %.0346730.us.ph = phi i32 [ 0, %vector.memcheck967 ], [ 0, %.noexc.us ], [ %i.abw, %middle.block1060 ] ; 4 uses
  %.0347729.us.ph = phi ptr [ %i.acg, %vector.memcheck967 ], [ %i.acg, %.noexc.us ], [ %i.ach, %middle.block1060 ] ; 3 uses
  %.0348728.us.ph = phi ptr [ %i.ace, %vector.memcheck967 ], [ %i.ace, %.noexc.us ], [ %i.aci, %middle.block1060 ] ; 3 uses
  %.0349727.us.ph = phi ptr [ %i.acc, %vector.memcheck967 ], [ %i.acc, %.noexc.us ], [ %i.acj, %middle.block1060 ] ; 3 uses
  %.0350726.us.ph = phi ptr [ %i.aca, %vector.memcheck967 ], [ %i.aca, %.noexc.us ], [ %i.ack, %middle.block1060 ] ; 3 uses
  %.0351725.us.ph = phi ptr [ %i.abz, %vector.memcheck967 ], [ %i.abz, %.noexc.us ], [ %i.acl, %middle.block1060 ] ; 6 uses
  %i.agg = sub i32 %i.yz, %.0346730.us.ph
  %.neg1171 = add i32 %.0346730.us.ph, 1
  %xtraiter1169 = and i32 %i.agg, 1
  %lcmp.mod1170.not = icmp eq i32 %xtraiter1169, 0
  br i1 %lcmp.mod1170.not, label %scalar.ph1041.prol.loopexit, label %scalar.ph1041.prol

scalar.ph1041.prol:                               ; preds = %scalar.ph1041.preheader
  %i.agh = load i16, ptr %.0351725.us.ph, align 2, !tbaa !136
  %i.agi = getelementptr inbounds nuw i8, ptr %.0350726.us.ph, i64 2
  store i16 %i.agh, ptr %.0350726.us.ph, align 2, !tbaa !136
  %i.agj = getelementptr inbounds nuw i8, ptr %.0351725.us.ph, i64 2
  %i.agk = load i16, ptr %i.agj, align 2, !tbaa !136
  %i.agl = getelementptr inbounds nuw i8, ptr %.0349727.us.ph, i64 2
  store i16 %i.agk, ptr %.0349727.us.ph, align 2, !tbaa !136
  %i.agm = getelementptr inbounds nuw i8, ptr %.0351725.us.ph, i64 4
  %i.agn = load i16, ptr %i.agm, align 2, !tbaa !136
  %i.ago = getelementptr inbounds nuw i8, ptr %.0348728.us.ph, i64 2
  store i16 %i.agn, ptr %.0348728.us.ph, align 2, !tbaa !136
  %i.agp = getelementptr inbounds nuw i8, ptr %.0351725.us.ph, i64 6
  %i.agq = load i16, ptr %i.agp, align 2, !tbaa !136
  %i.agr = getelementptr inbounds nuw i8, ptr %.0347729.us.ph, i64 2
  store i16 %i.agq, ptr %.0347729.us.ph, align 2, !tbaa !136
  %i.ags = getelementptr inbounds nuw i8, ptr %.0351725.us.ph, i64 8
  %i.agt = add nuw nsw i32 %.0346730.us.ph, 1
  br label %scalar.ph1041.prol.loopexit

scalar.ph1041.prol.loopexit:                      ; preds = %scalar.ph1041.prol, %scalar.ph1041.preheader
  %.0346730.us.unr = phi i32 [ %.0346730.us.ph, %scalar.ph1041.preheader ], [ %i.agt, %scalar.ph1041.prol ]
  %.0347729.us.unr = phi ptr [ %.0347729.us.ph, %scalar.ph1041.preheader ], [ %i.agr, %scalar.ph1041.prol ]
  %.0348728.us.unr = phi ptr [ %.0348728.us.ph, %scalar.ph1041.preheader ], [ %i.ago, %scalar.ph1041.prol ]
  %.0349727.us.unr = phi ptr [ %.0349727.us.ph, %scalar.ph1041.preheader ], [ %i.agl, %scalar.ph1041.prol ]
  %.0350726.us.unr = phi ptr [ %.0350726.us.ph, %scalar.ph1041.preheader ], [ %i.agi, %scalar.ph1041.prol ]
  %.0351725.us.unr = phi ptr [ %.0351725.us.ph, %scalar.ph1041.preheader ], [ %i.ags, %scalar.ph1041.prol ]
  %i.agu = icmp eq i32 %i.yz, %.neg1171
  br i1 %i.agu, label %._crit_edge732.us, label %scalar.ph1041
end_hunk_1

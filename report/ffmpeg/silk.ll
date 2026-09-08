Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/silk?download=true
inline.NumInlined: 16
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 21
begin_hunk_0_@silk_decode_frame:bb.a
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ <i32 32768, i32 0, i32 0, i32 0>, %vector.ph ], [ %i.ks, %vector.body ]
  %vec.phi450 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.kt, %vector.body ]
  %i.km = sub i64 %wide.trip.count.i, %index
  %i.kn = getelementptr inbounds [2 x i8], ptr %i.hl, i64 %i.km ; 2 uses
  %i.ko = getelementptr inbounds i8, ptr %i.kn, i64 -6
  %i.kp = getelementptr inbounds i8, ptr %i.kn, i64 -14
  %wide.load = load <4 x i16>, ptr %i.ko, align 2, !tbaa !28
  %wide.load451 = load <4 x i16>, ptr %i.kp, align 2, !tbaa !28
  %reverse = shufflevector <4 x i16> %wide.load, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse452 = shufflevector <4 x i16> %wide.load451, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.kq = zext <4 x i16> %reverse to <4 x i32>
  %i.kr = zext <4 x i16> %reverse452 to <4 x i32>
  %i.ks = sub <4 x i32> %vec.phi, %i.kq           ; 2 uses
  %i.kt = sub <4 x i32> %vec.phi450, %i.kr        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ku = icmp eq i64 %index.next, %n.vec
  br i1 %i.ku, label %middle.block, label %vector.body, !llvm.loop !68

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.kt, %i.ks
  %i.kv = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.kk, %n.vec
  br i1 %cmp.n, label %._crit_edge196.i.i, label %.lr.ph195.i.i.preheader561

.lr.ph195.i.i.preheader561:                       ; preds = %.lr.ph195.i.i.preheader, %middle.block
  %indvars.iv216.i.i.ph = phi i64 [ %wide.trip.count.i, %.lr.ph195.i.i.preheader ], [ %i.kl, %middle.block ]
  %.0148193.i.i.ph = phi i32 [ 32768, %.lr.ph195.i.i.preheader ], [ %i.kv, %middle.block ]
  br label %.lr.ph195.i.i

.lr.ph195.i.i:                                    ; preds = %.lr.ph195.i.i.preheader561, %.lr.ph195.i.i
  %indvars.iv216.i.i = phi i64 [ %indvars.iv.next217.i.i, %.lr.ph195.i.i ], [ %indvars.iv216.i.i.ph, %.lr.ph195.i.i.preheader561 ] ; 2 uses
  %.0148193.i.i = phi i32 [ %i.kz, %.lr.ph195.i.i ], [ %.0148193.i.i.ph, %.lr.ph195.i.i.preheader561 ]
  %i.kw = getelementptr inbounds [2 x i8], ptr %i.hl, i64 %indvars.iv216.i.i
  %i.kx = load i16, ptr %i.kw, align 2, !tbaa !28
  %i.ky = zext i16 %i.kx to i32
  %i.kz = sub nsw i32 %.0148193.i.i, %i.ky        ; 2 uses
  %indvars.iv.next217.i.i = add nsw i64 %indvars.iv216.i.i, -1 ; 2 uses
  %i.la = icmp sgt i64 %indvars.iv.next217.i.i, %i.kd
  br i1 %i.la, label %.lr.ph195.i.i, label %._crit_edge196.i.i, !llvm.loop !69

._crit_edge196.i.i:                               ; preds = %.lr.ph195.i.i, %middle.block, %._crit_edge.i.i
  %.0148.lcssa.i.i = phi i32 [ 32768, %._crit_edge.i.i ], [ %i.kv, %middle.block ], [ %i.kz, %.lr.ph195.i.i ]
  %i.lb = sub nsw i32 %.0148.lcssa.i.i, %i.kh
  %i.lc = getelementptr [2 x i8], ptr %i.f, i64 %i.kd ; 3 uses
  %i.ld = getelementptr i8, ptr %i.lc, i64 -2     ; 2 uses
  %i.le = load i16, ptr %i.ld, align 2, !tbaa !28
  %i.lf = sext i16 %i.le to i32
  %i.lg = load i16, ptr %i.lc, align 2, !tbaa !28
  %i.lh = sext i16 %i.lg to i32
  %i.li = add nsw i32 %i.lh, %i.lf                ; 2 uses
  %i.lj = ashr i32 %i.li, 1
  %i.lk = and i32 %i.li, 1
  %i.ll = add nsw i32 %i.lj, %i.lk
  %i.lm = tail call i32 @llvm.smax.i32(i32 %i.ki, i32 %i.ll)
  %..i.i = tail call i32 @llvm.smin.i32(i32 %i.lb, i32 %i.lm)
  %i.ln = trunc i32 %..i.i to i16
  %i.lo = sub i16 %i.ln, %i.kg                    ; 2 uses
  store i16 %i.lo, ptr %i.ld, align 2, !tbaa !28
  %i.lp = add i16 %i.lo, %i.kf
  store i16 %i.lp, ptr %i.lc, align 2, !tbaa !28
  %.pre.i = load i16, ptr %i.f, align 16, !tbaa !28
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge196.i.i, %bb.af, %bb.ad
  %i.lq = phi i16 [ %.pre.i, %._crit_edge196.i.i ], [ %i.hv, %bb.af ], [ %i.hp, %bb.ad ]
  %i.lr = add nuw nsw i32 %.0161198.i.i, 1        ; 2 uses
  %exitcond219.not.i.i = icmp eq i32 %i.lr, 20
  br i1 %exitcond219.not.i.i, label %.preheader.i.i.preheader.new, label %.peel.next.i.split.i, !llvm.loop !70

.preheader.i.i.preheader.new:                     ; preds = %bb.ag
  %i.ls = add nsw i64 %wide.trip.count.i, -4
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.critedge.i.i.1, %.preheader.i.i.preheader.new
  %indvars.iv220.i.i = phi i64 [ 1, %.preheader.i.i.preheader.new ], [ %indvars.iv.next221.i.i.1, %.critedge.i.i.1 ] ; 4 uses
  %niter576 = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %niter576.next.1, %.critedge.i.i.1 ] ; 2 uses
  %i.lt = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv220.i.i
  %i.lu = load i16, ptr %i.lt, align 2, !tbaa !28 ; 2 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ai, %.preheader.i.i
  %indvars.iv222.i.i = phi i64 [ %indvars.iv220.i.i, %.preheader.i.i ], [ %indvars.iv.next223.i.i, %bb.ai ] ; 4 uses
  %indvars.iv.next223.i.i = add nsw i64 %indvars.iv222.i.i, -1 ; 2 uses
  %i.lv = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv.next223.i.i
  %i.lw = load i16, ptr %i.lv, align 2, !tbaa !28 ; 2 uses
  %i.lx = icmp sgt i16 %i.lw, %i.lu
  br i1 %i.lx, label %bb.ai, label %.critedge.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.ly = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv222.i.i
  store i16 %i.lw, ptr %i.ly, align 2, !tbaa !28
  %i.lz = icmp sgt i64 %indvars.iv222.i.i, 1
  br i1 %i.lz, label %bb.ah, label %.critedge.i.i, !llvm.loop !71

.critedge.i.i:                                    ; preds = %bb.ai, %bb.ah
  %.0.in.lcssa.i.i = phi i64 [ 0, %bb.ai ], [ %indvars.iv222.i.i, %bb.ah ]
  %i.ma = getelementptr inbounds [2 x i8], ptr %i.f, i64 %.0.in.lcssa.i.i
  store i16 %i.lu, ptr %i.ma, align 2, !tbaa !28
  %indvars.iv.next221.i.i = add nuw nsw i64 %indvars.iv220.i.i, 1 ; 2 uses
  %i.mb = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv.next221.i.i
  %i.mc = load i16, ptr %i.mb, align 2, !tbaa !28 ; 2 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ak, %.critedge.i.i
  %indvars.iv222.i.i.1 = phi i64 [ %indvars.iv.next221.i.i, %.critedge.i.i ], [ %indvars.iv.next223.i.i.1, %bb.ak ] ; 4 uses
  %indvars.iv.next223.i.i.1 = add nsw i64 %indvars.iv222.i.i.1, -1 ; 2 uses
  %i.md = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv.next223.i.i.1
  %i.me = load i16, ptr %i.md, align 2, !tbaa !28 ; 2 uses
  %i.mf = icmp sgt i16 %i.me, %i.mc
  br i1 %i.mf, label %bb.ak, label %.critedge.i.i.1

bb.ak:                                            ; preds = %bb.aj
  %i.mg = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv222.i.i.1
  store i16 %i.me, ptr %i.mg, align 2, !tbaa !28
  %i.mh = icmp sgt i64 %indvars.iv222.i.i.1, 1
  br i1 %i.mh, label %bb.aj, label %.critedge.i.i.1, !llvm.loop !71

.critedge.i.i.1:                                  ; preds = %bb.ak, %bb.aj
  %.0.in.lcssa.i.i.1 = phi i64 [ 0, %bb.ak ], [ %indvars.iv222.i.i.1, %bb.aj ]
  %i.mi = getelementptr inbounds [2 x i8], ptr %i.f, i64 %.0.in.lcssa.i.i.1
  store i16 %i.mc, ptr %i.mi, align 2, !tbaa !28
  %indvars.iv.next221.i.i.1 = add nuw nsw i64 %indvars.iv220.i.i, 2 ; 3 uses
  %niter576.next.1 = add nuw nsw i64 %niter576, 2
  %niter576.ncmp.1 = icmp eq i64 %niter576, %i.ls
  br i1 %niter576.ncmp.1, label %.preheader.i.i.epil, label %.preheader.i.i, !llvm.loop !72

.preheader.i.i.epil:                              ; preds = %.critedge.i.i.1
  %i.mj = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv.next221.i.i.1
  %i.mk = load i16, ptr %i.mj, align 2, !tbaa !28 ; 2 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.am, %.preheader.i.i.epil
  %indvars.iv222.i.i.epil = phi i64 [ %indvars.iv.next221.i.i.1, %.preheader.i.i.epil ], [ %indvars.iv.next223.i.i.epil, %bb.am ] ; 4 uses
  %indvars.iv.next223.i.i.epil = add nsw i64 %indvars.iv222.i.i.epil, -1 ; 2 uses
  %i.ml = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv.next223.i.i.epil
  %i.mm = load i16, ptr %i.ml, align 2, !tbaa !28 ; 2 uses
  %i.mn = icmp sgt i16 %i.mm, %i.mk
  br i1 %i.mn, label %bb.am, label %.critedge.i.i.epil

bb.am:                                            ; preds = %bb.al
  %i.mo = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv222.i.i.epil
  store i16 %i.mm, ptr %i.mo, align 2, !tbaa !28
  %i.mp = icmp sgt i64 %indvars.iv222.i.i.epil, 1
  br i1 %i.mp, label %bb.al, label %.critedge.i.i.epil, !llvm.loop !71

.critedge.i.i.epil:                               ; preds = %bb.am, %bb.al
  %.0.in.lcssa.i.i.epil = phi i64 [ 0, %bb.am ], [ %indvars.iv222.i.i.epil, %bb.al ]
  %i.mq = getelementptr inbounds [2 x i8], ptr %i.f, i64 %.0.in.lcssa.i.i.epil
  store i16 %i.mk, ptr %i.mq, align 2, !tbaa !28
  %i.mr = load i16, ptr %i.f, align 16, !tbaa !28 ; 2 uses
  %i.ms = sext i16 %i.mr to i32
  %i.mt = icmp slt i32 %i.ms, %i.hq
  %spec.store.select.i = select i1 %i.mt, i16 %i.hp, i16 %i.mr ; 2 uses
  store i16 %spec.store.select.i, ptr %i.f, align 16
  br label %bb.an

bb.an:                                            ; preds = %bb.ap, %.critedge.i.i.epil
  %store_forwarded = phi i16 [ %spec.store.select.i, %.critedge.i.i.epil ], [ %i.ne, %bb.ap ]
  %indvars.iv228.i.i = phi i64 [ 1, %.critedge.i.i.epil ], [ %indvars.iv.next229.i.i, %bb.ap ] ; 3 uses
  %i.mu = getelementptr [2 x i8], ptr %i.f, i64 %indvars.iv228.i.i ; 2 uses
  %i.mv = sext i16 %store_forwarded to i32
  %i.mw = getelementptr inbounds nuw [2 x i8], ptr %i.hl, i64 %indvars.iv228.i.i
  %i.mx = load i16, ptr %i.mw, align 2, !tbaa !28
  %i.my = zext i16 %i.mx to i32
  %i.mz = add nsw i32 %i.my, %i.mv                ; 3 uses
  %i.na = icmp sgt i32 %i.mz, 32767
  br i1 %i.na, label %.critedge179.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.nb = load i16, ptr %i.mu, align 2, !tbaa !28 ; 2 uses
  %i.nc = sext i16 %i.nb to i32
  %i.nd = icmp slt i32 %i.mz, %i.nc
  br i1 %i.nd, label %bb.ap, label %.critedge179.i.i

.critedge179.i.i:                                 ; preds = %bb.ao, %bb.an
  %spec.select180181.i.i = tail call i32 @llvm.smin.i32(i32 %i.mz, i32 32767)
  %spec.select180.i.i = trunc nsw i32 %spec.select180181.i.i to i16
  br label %bb.ap

bb.ap:                                            ; preds = %.critedge179.i.i, %bb.ao
  %i.ne = phi i16 [ %spec.select180.i.i, %.critedge179.i.i ], [ %i.nb, %bb.ao ] ; 2 uses
  store i16 %i.ne, ptr %i.mu, align 2, !tbaa !28
  %indvars.iv.next229.i.i = add nuw nsw i64 %indvars.iv228.i.i, 1 ; 2 uses
  %exitcond232.not.i.i = icmp eq i64 %indvars.iv.next229.i.i, %wide.trip.count.i
  br i1 %exitcond232.not.i.i, label %bb.aq, label %bb.an, !llvm.loop !73

bb.aq:                                            ; preds = %bb.ap
  %i.nf = load i16, ptr %i.ho, align 2, !tbaa !28
  %i.ng = sext i16 %i.nf to i32
  %i.nh = sub nsw i32 32768, %i.hs                ; 2 uses
  %i.ni = icmp slt i32 %i.nh, %i.ng
  br i1 %i.ni, label %bb.ar, label %.lr.ph206.preheader.i.i

bb.ar:                                            ; preds = %bb.aq
  %i.nj = trunc nsw i32 %i.nh to i16
  store i16 %i.nj, ptr %i.ho, align 2, !tbaa !28
  br label %.lr.ph206.preheader.i.i

.lr.ph206.preheader.i.i:                          ; preds = %bb.ar, %bb.aq
  %i.nk = add nsw i32 %i.ej, -2
  %i.nl = zext i32 %i.nk to i64                   ; 3 uses
  %i.nm = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.nl ; 2 uses
  %i.nn = load i16, ptr %i.nm, align 4, !tbaa !28
  %i.no = sext i16 %i.nn to i32
  %i.np = or disjoint i64 %i.nl, 1                ; 2 uses
  %i.nq = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.np
  %i.nr = load i16, ptr %i.nq, align 2, !tbaa !28
  %i.ns = sext i16 %i.nr to i32
  %i.nt = getelementptr inbounds nuw [2 x i8], ptr %i.hl, i64 %i.np
  %i.nu = load i16, ptr %i.nt, align 2, !tbaa !28
  %i.nv = zext i16 %i.nu to i32
  %i.nw = sub nsw i32 %i.ns, %i.nv                ; 2 uses
  %i.nx = icmp slt i32 %i.nw, %i.no
  br i1 %i.nx, label %bb.as, label %.lr.ph206.i.i.prol.loopexit.unr-lcssa

bb.as:                                            ; preds = %.lr.ph206.preheader.i.i
  %i.ny = trunc i32 %i.nw to i16
  store i16 %i.ny, ptr %i.nm, align 4, !tbaa !28
  br label %.lr.ph206.i.i.prol.loopexit.unr-lcssa

.lr.ph206.i.i.prol.loopexit.unr-lcssa:            ; preds = %bb.as, %.lr.ph206.preheader.i.i
  %indvars.iv.next234.i.i.prol = add nsw i64 %i.nl, -1
  br label %.lr.ph206.i.i

.lr.ph206.i.i:                                    ; preds = %bb.av, %.lr.ph206.i.i.prol.loopexit.unr-lcssa
  %indvars.iv233.i.i = phi i64 [ %indvars.iv.next234.i.i.prol, %.lr.ph206.i.i.prol.loopexit.unr-lcssa ], [ %indvars.iv.next234.i.i.1, %bb.av ] ; 7 uses
  %i.nz = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv233.i.i ; 2 uses
  %i.oa = load i16, ptr %i.nz, align 2, !tbaa !28
  %i.ob = sext i16 %i.oa to i32
  %i.oc = add nuw nsw i64 %indvars.iv233.i.i, 1   ; 2 uses
  %i.od = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.oc
  %i.oe = load i16, ptr %i.od, align 2, !tbaa !28
  %i.of = sext i16 %i.oe to i32
  %i.og = getelementptr inbounds nuw [2 x i8], ptr %i.hl, i64 %i.oc
  %i.oh = load i16, ptr %i.og, align 2, !tbaa !28
  %i.oi = zext i16 %i.oh to i32
  %i.oj = sub nsw i32 %i.of, %i.oi                ; 2 uses
  %i.ok = icmp slt i32 %i.oj, %i.ob
  br i1 %i.ok, label %bb.at, label %.lr.ph206.i.i.1

bb.at:                                            ; preds = %.lr.ph206.i.i
  %i.ol = trunc i32 %i.oj to i16
  store i16 %i.ol, ptr %i.nz, align 2, !tbaa !28
  br label %.lr.ph206.i.i.1

.lr.ph206.i.i.1:                                  ; preds = %bb.at, %.lr.ph206.i.i
  %i.om = getelementptr [2 x i8], ptr %i.f, i64 %indvars.iv233.i.i
  %i.on = getelementptr i8, ptr %i.om, i64 -2     ; 2 uses
  %i.oo = load i16, ptr %i.on, align 2, !tbaa !28
  %i.op = sext i16 %i.oo to i32
  %i.oq = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv233.i.i
  %i.or = load i16, ptr %i.oq, align 2, !tbaa !28
  %i.os = sext i16 %i.or to i32
  %i.ot = getelementptr inbounds nuw [2 x i8], ptr %i.hl, i64 %indvars.iv233.i.i
  %i.ou = load i16, ptr %i.ot, align 2, !tbaa !28
  %i.ov = zext i16 %i.ou to i32
  %i.ow = sub nsw i32 %i.os, %i.ov                ; 2 uses
  %i.ox = icmp slt i32 %i.ow, %i.op
  br i1 %i.ox, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.lr.ph206.i.i.1
  %i.oy = trunc i32 %i.ow to i16
  store i16 %i.oy, ptr %i.on, align 2, !tbaa !28
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %.lr.ph206.i.i.1
  %indvars.iv.next234.i.i.1 = add nsw i64 %indvars.iv233.i.i, -2
  %i.oz = icmp sgt i64 %indvars.iv233.i.i, 1
  br i1 %i.oz, label %.lr.ph206.i.i, label %silk_stabilize_lsf.exit.i, !llvm.loop !74

silk_stabilize_lsf.exit.i:                        ; preds = %.loopexit.i.peel.next.i.epilog-lcssa, %bb.av
  %i.pa = load i32, ptr %i.bq, align 8, !tbaa !12
  %i.pb = icmp eq i32 %i.pa, 4
  br i1 %i.pb, label %bb.aw, label %silk_decode_lpc.exit

bb.aw:                                            ; preds = %silk_stabilize_lsf.exit.i
  %i.pc = tail call i32 @ff_opus_rc_dec_cdf(ptr noundef %1, ptr noundef nonnull @ff_silk_model_lsf_interpolation_offset) #9 ; 5 uses
  %.not106.i = icmp eq i32 %i.pc, 4
  br i1 %.not106.i, label %silk_decode_lpc.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.pd = load i32, ptr %i.m, align 4, !tbaa !18
  %.not107.i = icmp eq i32 %i.pd, 0
  br i1 %.not107.i, label %silk_decode_lpc.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.not108.i = icmp eq i32 %i.pc, 0
  br i1 %.not108.i, label %bb.az, label %vector.ph470

vector.ph470:                                     ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
  %i.pe = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %n.vec471 = and i64 %wide.trip.count.i, 24      ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.pc, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body472

vector.body472:                                   ; preds = %vector.body472, %vector.ph470
  %index473 = phi i64 [ 0, %vector.ph470 ], [ %index.next476, %vector.body472 ] ; 4 uses
  %i.pf = getelementptr inbounds nuw [2 x i8], ptr %i.pe, i64 %index473
  %wide.load474 = load <8 x i16>, ptr %i.pf, align 2, !tbaa !28 ; 2 uses
  %i.pg = sext <8 x i16> %wide.load474 to <8 x i32>
  %i.ph = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %index473
  %wide.load475 = load <8 x i16>, ptr %i.ph, align 16, !tbaa !28
  %i.pi = sext <8 x i16> %wide.load475 to <8 x i32>
  %i.pj = sub nsw <8 x i32> %i.pi, %i.pg
  %i.pk = mul nsw <8 x i32> %i.pj, %broadcast.splat
  %i.pl = lshr <8 x i32> %i.pk, splat (i32 2)
  %i.pm = trunc <8 x i32> %i.pl to <8 x i16>
  %i.pn = add <8 x i16> %wide.load474, %i.pm
  %i.po = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %index473
  store <8 x i16> %i.pn, ptr %i.po, align 16, !tbaa !28
  %index.next476 = add nuw i64 %index473, 8       ; 2 uses
  %i.pp = icmp eq i64 %index.next476, %n.vec471
  br i1 %i.pp, label %middle.block477, label %vector.body472, !llvm.loop !75

middle.block477:                                  ; preds = %vector.body472
  %cmp.n478 = icmp eq i64 %n.vec471, %wide.trip.count.i
  br i1 %cmp.n478, label %.loopexit555, label %scalar.ph469

scalar.ph469:                                     ; preds = %middle.block477, %scalar.ph469
  %indvars.iv145.i = phi i64 [ %indvars.iv.next146.i, %scalar.ph469 ], [ %n.vec471, %middle.block477 ] ; 4 uses
  %i.pq = getelementptr inbounds nuw [2 x i8], ptr %i.pe, i64 %indvars.iv145.i
  %i.pr = load i16, ptr %i.pq, align 2, !tbaa !28 ; 2 uses
  %i.ps = sext i16 %i.pr to i32
  %i.pt = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv145.i
  %i.pu = load i16, ptr %i.pt, align 2, !tbaa !28
  %i.pv = sext i16 %i.pu to i32
  %i.pw = sub nsw i32 %i.pv, %i.ps
  %i.px = mul nsw i32 %i.pw, %i.pc
  %i.py = lshr i32 %i.px, 2
  %i.pz = trunc i32 %i.py to i16
  %i.qa = add i16 %i.pr, %i.pz
  %i.qb = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv145.i
  store i16 %i.qa, ptr %i.qb, align 2, !tbaa !28
  %indvars.iv.next146.i = add nuw nsw i64 %indvars.iv145.i, 1 ; 2 uses
  %exitcond149.not.i = icmp eq i64 %indvars.iv.next146.i, %wide.trip.count.i
  br i1 %exitcond149.not.i, label %.loopexit555, label %scalar.ph469, !llvm.loop !76

.loopexit555:                                     ; preds = %scalar.ph469, %middle.block477
  call fastcc void @silk_lsf2lpc(ptr noundef %i.g, ptr noundef nonnull %i.h, i32 noundef %i.ej)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
  br label %silk_decode_lpc.exit

bb.az:                                            ; preds = %bb.ay
  %i.qc = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.h, ptr noundef nonnull align 4 dereferenceable(64) %i.qc, i64 64, i1 false)
  br label %silk_decode_lpc.exit

silk_decode_lpc.exit:                             ; preds = %silk_stabilize_lsf.exit.i, %bb.aw, %bb.ax, %.loopexit555, %bb.az
  %i.qd = phi i1 [ false, %bb.aw ], [ false, %bb.ax ], [ true, %bb.az ], [ true, %.loopexit555 ], [ false, %silk_stabilize_lsf.exit.i ]
  %.sink161.i = phi i32 [ 4, %bb.aw ], [ 4, %bb.ax ], [ 0, %bb.az ], [ %i.pc, %.loopexit555 ], [ 4, %silk_stabilize_lsf.exit.i ]
  %i.qe = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  store i32 %.sink161.i, ptr %i.qe, align 4, !tbaa !107
  call fastcc void @silk_lsf2lpc(ptr noundef %i.f, ptr noundef nonnull %i.i, i32 noundef %i.ej)
  %i.qf = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.qg = shl nuw nsw i64 %wide.trip.count.i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.qf, ptr noundef nonnull align 16 dereferenceable(1) %i.f, i64 %i.qg, i1 false)
  %i.qh = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.qi = shl nuw nsw i64 %wide.trip.count.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.qh, ptr noundef nonnull align 16 dereferenceable(1) %i.i, i64 %i.qi, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  %.not286 = icmp eq i32 %.0234, 0                ; 2 uses
  br i1 %.not286, label %.thread284, label %bb.ba

bb.ba:                                            ; preds = %silk_decode_lpc.exit
  %.not255 = icmp eq i32 %2, 0                    ; 2 uses
  br i1 %.not255, label %.thread, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.qj = getelementptr inbounds nuw i8, ptr %i.m, i64 5260
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !108
  %.not256 = icmp eq i32 %i.qk, 0
  br i1 %.not256, label %.thread, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ql = tail call i32 @ff_opus_rc_dec_cdf(ptr noundef %1, ptr noundef nonnull @ff_silk_model_pitch_delta) #9 ; 2 uses
  %.not257 = icmp eq i32 %i.ql, 0
  br i1 %.not257, label %.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.qm = getelementptr inbounds nuw i8, ptr %i.m, i64 5256
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !109
  %i.qo = add i32 %i.ql, -9
  %i.qp = add i32 %i.qo, %i.qn
  br label %bb.be

.thread:                                          ; preds = %bb.ba, %bb.bb, %bb.bc
  %i.qq = tail call i32 @ff_opus_rc_dec_cdf(ptr noundef %1, ptr noundef nonnull @ff_silk_model_pitch_highbits) #9
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.qs = load i32, ptr %i.qr, align 8, !tbaa !15
  %i.qt = zext i32 %i.qs to i64
  %i.qu = getelementptr inbounds nuw [8 x i8], ptr @silk_decode_frame.model, i64 %i.qt
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !111
  %i.qw = tail call i32 @ff_opus_rc_dec_cdf(ptr noundef %1, ptr noundef %i.qv) #9
  %i.qx = load i32, ptr %i.qr, align 8, !tbaa !15
  %i.qy = zext i32 %i.qx to i64                   ; 2 uses
  %i.qz = getelementptr inbounds nuw [2 x i8], ptr @ff_silk_pitch_min_lag, i64 %i.qy
  %i.ra = load i16, ptr %i.qz, align 2, !tbaa !28
  %i.rb = zext i16 %i.ra to i32
  %i.rc = getelementptr inbounds nuw [2 x i8], ptr @ff_silk_pitch_scale, i64 %i.qy
  %i.rd = load i16, ptr %i.rc, align 2, !tbaa !28
  %i.re = zext i16 %i.rd to i32
  %i.rf = mul nsw i32 %i.qq, %i.re
  %i.rg = add i32 %i.qw, %i.rb
  %i.rh = add i32 %i.rg, %i.rf
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %.thread
  %.2239 = phi i32 [ %i.rh, %.thread ], [ %i.qp, %bb.bd ] ; 4 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.m, i64 5256
  store i32 %.2239, ptr %i.ri, align 4, !tbaa !109
  %i.rj = load i32, ptr %i.bq, align 8, !tbaa !12
  %i.rk = icmp eq i32 %i.rj, 2
  %i.rl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.rm = load i32, ptr %i.rl, align 8, !tbaa !15
  %i.rn = icmp eq i32 %i.rm, 0                    ; 2 uses
  br i1 %i.rk, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %bb.be
  br i1 %i.rn, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.ro = tail call i32 @ff_opus_rc_dec_cdf(ptr noundef %1, ptr noundef nonnull @ff_silk_model_pitch_contour_nb10ms) #9
  %i.rp = zext i32 %i.ro to i64
  %i.rq = getelementptr inbounds nuw [2 x i8], ptr @ff_silk_pitch_offset_nb10ms, i64 %i.rp
  br label %bb.bl

bb.bh:                                            ; preds = %bb.bf
  %i.rr = tail call i32 @ff_opus_rc_dec_cdf(ptr noundef %1, ptr noundef nonnull @ff_silk_model_pitch_contour_mbwb10ms) #9
  %i.rs = zext i32 %i.rr to i64
  %i.rt = getelementptr inbounds nuw [2 x i8], ptr @ff_silk_pitch_offset_mbwb10ms, i64 %i.rs
  br label %bb.bl

bb.bi:                                            ; preds = %bb.be
  br i1 %i.rn, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.ru = tail call i32 @ff_opus_rc_dec_cdf(ptr noundef %1, ptr noundef nonnull @ff_silk_model_pitch_contour_nb20ms) #9
  %i.rv = zext i32 %i.ru to i64
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr @ff_silk_pitch_offset_nb20ms, i64 %i.rv
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %i.rx = tail call i32 @ff_opus_rc_dec_cdf(ptr noundef %1, ptr noundef nonnull @ff_silk_model_pitch_contour_mbwb20ms) #9
  %i.ry = zext i32 %i.rx to i64
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr @ff_silk_pitch_offset_mbwb20ms, i64 %i.ry
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bj, %bb.bk, %bb.bg, %bb.bh
  %.0236 = phi ptr [ %i.rt, %bb.bh ], [ %i.rq, %bb.bg ], [ %i.rw, %bb.bj ], [ %i.rz, %bb.bk ] ; 3 uses
  %i.sa = load i32, ptr %i.bq, align 8, !tbaa !12 ; 4 uses
  %i.sb = icmp sgt i32 %i.sa, 0
  br i1 %i.sb, label %.lr.ph305, label %._crit_edge306

.lr.ph305:                                        ; preds = %bb.bl
  %i.sc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.sd = load i32, ptr %i.sc, align 8, !tbaa !15
  %i.se = zext i32 %i.sd to i64                   ; 2 uses
  %i.sf = getelementptr inbounds nuw [2 x i8], ptr @ff_silk_pitch_min_lag, i64 %i.se
  %i.sg = load i16, ptr %i.sf, align 2, !tbaa !28
  %i.sh = zext i16 %i.sg to i32                   ; 6 uses
  %i.si = getelementptr inbounds nuw [2 x i8], ptr @ff_silk_pitch_max_lag, i64 %i.se
  %i.sj = load i16, ptr %i.si, align 2, !tbaa !28
  %i.sk = zext i16 %i.sj to i32                   ; 3 uses
  %wide.trip.count = zext nneg i32 %i.sa to i64   ; 2 uses
  %xtraiter580 = and i64 %wide.trip.count, 1
  %i.sl = icmp eq i32 %i.sa, 1
  br i1 %i.sl, label %.epil.preheader579, label %.lr.ph305.new
end_hunk_0
begin_hunk_1_@silk_lsf2lpc:bb.a
  store <4 x i16> %i.rd, ptr %i.rf, align 16, !tbaa !28
  store <4 x i16> %i.re, ptr %i.rg, align 8, !tbaa !28
  br label %middle.block

middle.block:                                     ; preds = %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %.preheader131

vector.ph214:                                     ; preds = %bb.f, %bb.g
  %n.vec215 = and i64 %wide.trip.count, 24        ; 3 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %wide.load218 = load <4 x i32>, ptr %i.e, align 16, !tbaa !19
  %wide.load219 = load <4 x i32>, ptr %i.rh, align 16, !tbaa !19
  %i.ri = add nsw <4 x i32> %wide.load218, splat (i32 16)
  %i.rj = add nsw <4 x i32> %wide.load219, splat (i32 16)
  %i.rk = ashr <4 x i32> %i.ri, splat (i32 5)
  %i.rl = ashr <4 x i32> %i.rj, splat (i32 5)
  %i.rm = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.rk, <4 x i32> splat (i32 -32768))
  %i.rn = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.rl, <4 x i32> splat (i32 -32768))
  %i.ro = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.rm, <4 x i32> splat (i32 32767)) ; 2 uses
  %i.rp = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.rn, <4 x i32> splat (i32 32767)) ; 2 uses
  %i.rq = trunc nsw <4 x i32> %i.ro to <4 x i16>
  %i.rr = trunc nsw <4 x i32> %i.rp to <4 x i16>
  %i.rs = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store <4 x i16> %i.rq, ptr %i.f, align 16, !tbaa !28
  store <4 x i16> %i.rr, ptr %i.rs, align 8, !tbaa !28
  %i.rt = shl nsw <4 x i32> %i.ro, splat (i32 5)
  %i.ru = shl nsw <4 x i32> %i.rp, splat (i32 5)
  store <4 x i32> %i.rt, ptr %i.e, align 16, !tbaa !19
  store <4 x i32> %i.ru, ptr %i.rh, align 16, !tbaa !19
  %i.rv = icmp eq i64 %n.vec215, 8
  br i1 %i.rv, label %middle.block221, label %vector.body216.1

vector.body216.1:                                 ; preds = %vector.ph214
  %i.rw = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %wide.load218.1 = load <4 x i32>, ptr %i.rw, align 16, !tbaa !19
  %wide.load219.1 = load <4 x i32>, ptr %i.rx, align 16, !tbaa !19
  %i.ry = add nsw <4 x i32> %wide.load218.1, splat (i32 16)
  %i.rz = add nsw <4 x i32> %wide.load219.1, splat (i32 16)
  %i.sa = ashr <4 x i32> %i.ry, splat (i32 5)
  %i.sb = ashr <4 x i32> %i.rz, splat (i32 5)
  %i.sc = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.sa, <4 x i32> splat (i32 -32768))
  %i.sd = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.sb, <4 x i32> splat (i32 -32768))
  %i.se = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.sc, <4 x i32> splat (i32 32767)) ; 2 uses
  %i.sf = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.sd, <4 x i32> splat (i32 32767)) ; 2 uses
  %i.sg = trunc nsw <4 x i32> %i.se to <4 x i16>
  %i.sh = trunc nsw <4 x i32> %i.sf to <4 x i16>
  %i.si = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.sj = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store <4 x i16> %i.sg, ptr %i.si, align 16, !tbaa !28
  store <4 x i16> %i.sh, ptr %i.sj, align 8, !tbaa !28
  %i.sk = shl nsw <4 x i32> %i.se, splat (i32 5)
  %i.sl = shl nsw <4 x i32> %i.sf, splat (i32 5)
  store <4 x i32> %i.sk, ptr %i.rw, align 16, !tbaa !19
  store <4 x i32> %i.sl, ptr %i.rx, align 16, !tbaa !19
  br label %middle.block221

middle.block221:                                  ; preds = %vector.body216.1, %vector.ph214
  %cmp.n222 = icmp eq i64 %n.vec215, %wide.trip.count
  br i1 %cmp.n222, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %middle.block221, %.preheader
  %indvars.iv176 = phi i64 [ %indvars.iv.next177, %.preheader ], [ %n.vec215, %middle.block221 ] ; 3 uses
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv176 ; 2 uses
  %i.sn = load i32, ptr %i.sm, align 4, !tbaa !19
  %i.so = add nsw i32 %i.sn, 16
  %i.sp = ashr i32 %i.so, 5
  %i.sq = tail call i32 @llvm.smax.i32(i32 %i.sp, i32 -32768)
  %i.sr = tail call i32 @llvm.smin.i32(i32 %i.sq, i32 32767) ; 2 uses
  %.0.i = trunc nsw i32 %i.sr to i16
  %i.ss = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv176
  store i16 %.0.i, ptr %i.ss, align 2, !tbaa !28
  %i.st = shl nsw i32 %i.sr, 5
  store i32 %i.st, ptr %i.sm, align 4, !tbaa !19
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 1 ; 2 uses
  %exitcond180.not = icmp eq i64 %indvars.iv.next177, %wide.trip.count
  br i1 %exitcond180.not, label %.loopexit, label %.preheader, !llvm.loop !131

.preheader131:                                    ; preds = %middle.block, %.preheader131
  %indvars.iv171 = phi i64 [ %indvars.iv.next172, %.preheader131 ], [ %n.vec, %middle.block ] ; 3 uses
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv171
  %i.sv = load i32, ptr %i.su, align 4, !tbaa !19
  %i.sw = add nsw i32 %i.sv, 16
  %i.sx = lshr i32 %i.sw, 5
  %i.sy = trunc i32 %i.sx to i16
  %i.sz = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv171
  store i16 %i.sy, ptr %i.sz, align 2, !tbaa !28
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1 ; 2 uses
  %exitcond175.not = icmp eq i64 %indvars.iv.next172, %wide.trip.count
  br i1 %exitcond175.not, label %.loopexit, label %.preheader131, !llvm.loop !132

.loopexit:                                        ; preds = %.preheader131, %.preheader, %middle.block, %middle.block221
  %i.ta = getelementptr [4 x i8], ptr %i.a, i64 %wide.trip.count
  %i.tb = getelementptr i8, ptr %i.ta, i64 -4
  %i.tc = add nsw i64 %wide.trip.count, -1
  %n.vec225 = and i64 %wide.trip.count, 24        ; 3 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.te = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.tf = icmp eq i64 %n.vec225, 8
  %i.tg = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.th = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ti = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.tj = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %cmp.n233 = icmp eq i64 %n.vec225, %wide.trip.count
  br label %vector.ph224

vector.ph224:                                     ; preds = %.loopexit, %bb.l
  %.1150 = phi i32 [ 1, %.loopexit ], [ %i.xr, %bb.l ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %wide.load229 = load <4 x i16>, ptr %i.f, align 16, !tbaa !28
  %wide.load230 = load <4 x i16>, ptr %i.td, align 8, !tbaa !28
  %i.tk = sext <4 x i16> %wide.load229 to <4 x i32> ; 3 uses
  %i.tl = sext <4 x i16> %wide.load230 to <4 x i32> ; 3 uses
  %i.tm = shl nsw <4 x i32> %i.tk, splat (i32 12)
  %i.tn = shl nsw <4 x i32> %i.tl, splat (i32 12)
  store <4 x i32> %i.tm, ptr %i.a, align 16, !tbaa !19
  store <4 x i32> %i.tn, ptr %i.te, align 16, !tbaa !19
  br i1 %i.tf, label %middle.block232, label %vector.body226.1

vector.body226.1:                                 ; preds = %vector.ph224
  %wide.load229.1 = load <4 x i16>, ptr %i.tg, align 16, !tbaa !28
  %wide.load230.1 = load <4 x i16>, ptr %i.th, align 8, !tbaa !28
  %i.to = sext <4 x i16> %wide.load229.1 to <4 x i32> ; 2 uses
  %i.tp = sext <4 x i16> %wide.load230.1 to <4 x i32> ; 2 uses
  %i.tq = add nsw <4 x i32> %i.tk, %i.to
  %i.tr = add nsw <4 x i32> %i.tl, %i.tp
  %i.ts = shl nsw <4 x i32> %i.to, splat (i32 12)
  %i.tt = shl nsw <4 x i32> %i.tp, splat (i32 12)
  store <4 x i32> %i.ts, ptr %i.ti, align 16, !tbaa !19
  store <4 x i32> %i.tt, ptr %i.tj, align 16, !tbaa !19
  br label %middle.block232

middle.block232:                                  ; preds = %vector.body226.1, %vector.ph224
  %.lcssa248 = phi <4 x i32> [ %i.tk, %vector.ph224 ], [ %i.tq, %vector.body226.1 ]
  %.lcssa247 = phi <4 x i32> [ %i.tl, %vector.ph224 ], [ %i.tr, %vector.body226.1 ]
  %bin.rdx = add nsw <4 x i32> %.lcssa247, %.lcssa248
  %i.tu = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n233, label %.loopexit245, label %scalar.ph223

scalar.ph223:                                     ; preds = %middle.block232, %scalar.ph223
  %indvars.iv.i121 = phi i64 [ %indvars.iv.next.i122, %scalar.ph223 ], [ %n.vec225, %middle.block232 ] ; 3 uses
  %.06484.i = phi i32 [ %i.ty, %scalar.ph223 ], [ %i.tu, %middle.block232 ]
  %i.tv = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv.i121
  %i.tw = load i16, ptr %i.tv, align 2, !tbaa !28
  %i.tx = sext i16 %i.tw to i32                   ; 2 uses
  %i.ty = add nsw i32 %.06484.i, %i.tx            ; 2 uses
  %i.tz = shl nsw i32 %i.tx, 12
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i121
  store i32 %i.tz, ptr %i.ua, align 4, !tbaa !19
  %indvars.iv.next.i122 = add nuw nsw i64 %indvars.iv.i121, 1 ; 2 uses
  %exitcond.not.i123 = icmp eq i64 %indvars.iv.next.i122, %wide.trip.count
  br i1 %exitcond.not.i123, label %.loopexit245, label %scalar.ph223, !llvm.loop !133

.loopexit245:                                     ; preds = %scalar.ph223, %middle.block232
  %.lcssa = phi i32 [ %i.tu, %middle.block232 ], [ %i.ty, %scalar.ph223 ]
  %i.ub = icmp sgt i32 %.lcssa, 4095
  br i1 %i.ub, label %silk_is_lpc_stable.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %.loopexit245
  %i.uc = load i32, ptr %i.tb, align 4, !tbaa !19 ; 2 uses
  %i.ud = add i32 %i.uc, -16773023
  %i.ue = icmp ult i32 %i.ud, -33546045
  br i1 %i.ue, label %silk_is_lpc_stable.exit.thread, label %.lr.ph.i124.lr.ph

.lr.ph.i124.lr.ph:                                ; preds = %.preheader.i
  %.neg.i207 = mul nsw i32 %i.uc, -128
  %i.uf = sext i32 %.neg.i207 to i64              ; 3 uses
  %i.ug = mul nsw i64 %i.uf, %i.uf
  %i.uh = lshr i64 %i.ug, 32
  %i.ui = trunc nuw i64 %i.uh to i32
  %i.uj = sub nsw i32 1073741824, %i.ui           ; 2 uses
  %i.uk = and i32 %i.uj, -4
  br label %.lr.ph.i124

.loopexit.i.loopexit:                             ; preds = %bb.i
  %indvars.iv.next102.i = add nsw i64 %indvars.iv101.i210, -1 ; 3 uses
  %i.ul = getelementptr inbounds [4 x i8], ptr %i.vd, i64 %indvars.iv.next102.i
  %i.um = load i32, ptr %i.ul, align 4, !tbaa !19 ; 2 uses
  %i.un = add i32 %i.um, -16773023
  %i.uo = icmp ult i32 %i.un, -33546045
  br i1 %i.uo, label %silk_is_lpc_stable.exit.thread, label %.lr.ph90.i

.lr.ph90.i:                                       ; preds = %.loopexit.i.loopexit
  %.neg.i = mul nsw i32 %i.um, -128
  %i.up = sext i32 %.neg.i to i64                 ; 3 uses
  %i.uq = mul nsw i64 %i.up, %i.up
  %i.ur = lshr i64 %i.uq, 32
  %i.us = trunc nuw i64 %i.ur to i32
  %i.ut = sub nsw i32 1073741824, %i.us           ; 2 uses
  %i.uu = sext i32 %i.uz to i64
  %i.uv = sext i32 %i.ut to i64
  %i.uw = mul nsw i64 %i.uv, %i.uu
  %sh.diff.i = lshr i64 %i.uw, 30
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32
  %i.ux = and i32 %tr.sh.diff.i, -4               ; 2 uses
  %i.uy = icmp eq i64 %indvars.iv.next102.i, 0
  br i1 %i.uy, label %.lr.ph90.i.silk_is_lpc_stable.exit_crit_edge, label %.lr.ph.i124

.lr.ph.i124:                                      ; preds = %.lr.ph.i124.lr.ph, %.lr.ph90.i
  %i.uz = phi i32 [ %i.uk, %.lr.ph.i124.lr.ph ], [ %i.ux, %.lr.ph90.i ]
  %i.va = phi i32 [ %i.uj, %.lr.ph.i124.lr.ph ], [ %i.ut, %.lr.ph90.i ] ; 5 uses
  %i.vb = phi i64 [ %i.uf, %.lr.ph.i124.lr.ph ], [ %i.up, %.lr.ph90.i ]
  %.06088.i211 = phi ptr [ %i.a, %.lr.ph.i124.lr.ph ], [ %i.vd, %.lr.ph90.i ] ; 2 uses
  %indvars.iv101.i210 = phi i64 [ %i.tc, %.lr.ph.i124.lr.ph ], [ %indvars.iv.next102.i, %.lr.ph90.i ] ; 4 uses
  %i.vc = and i64 %indvars.iv101.i210, 1
  %i.vd = getelementptr inbounds nuw [64 x i8], ptr %i.a, i64 %i.vc ; 3 uses
  %i.ve = icmp samesign ugt i32 %i.va, 65535      ; 2 uses
  %i.vf = lshr i32 %i.va, 16
  %spec.select.i.i = select i1 %i.ve, i32 %i.vf, i32 %i.va ; 3 uses
  %.not.i.i = icmp samesign ult i32 %spec.select.i.i, 256 ; 2 uses
  %spec.select11.i.i = select i1 %i.ve, i32 16, i32 0 ; 2 uses
  %i.vg = or disjoint i32 %spec.select11.i.i, 8
  %.1.i.i = select i1 %.not.i.i, i32 %spec.select11.i.i, i32 %i.vg
  %i.vh = lshr i32 %spec.select.i.i, 8
  %.110.i.i = select i1 %.not.i.i, i32 %spec.select.i.i, i32 %i.vh
  %i.vi = zext nneg i32 %.110.i.i to i64
  %i.vj = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.vi
  %i.vk = load i8, ptr %i.vj, align 1, !tbaa !30
  %i.vl = zext i8 %i.vk to i32
  %i.vm = add nuw nsw i32 %.1.i.i, %i.vl          ; 3 uses
  %i.vn = sub nsw i32 30, %i.vm
  %i.vo = shl i32 %i.va, %i.vn
  %i.vp = sext i32 %i.vo to i64
  %i.vq = add nsw i32 %i.vm, -14
  %i.vr = lshr i32 %i.va, %i.vq
  %i.vs = sdiv i32 536870911, %i.vr               ; 3 uses
  %i.vt = zext nneg i32 %i.vs to i64
  %i.vu = mul nsw i64 %i.vp, %i.vt
  %i.vv = lshr i64 %i.vu, 16
  %i.vw = trunc i64 %i.vv to i32
  %i.vx = sub i32 536870912, %i.vw
  %i.vy = mul nsw i32 %i.vx, %i.vs
  %i.vz = ashr i32 %i.vy, 13
  %i.wa = shl i32 %i.vs, 16
  %i.wb = add nsw i32 %i.vz, %i.wa
  %i.wc = shl nsw i64 %i.vb, 1
  %i.wd = sext i32 %i.wb to i64
  %i.we = zext nneg i32 %i.vm to i64
  %wide.trip.count99.i = and i64 %indvars.iv101.i210, 4294967295
  %i.wf = getelementptr [4 x i8], ptr %.06088.i211, i64 %indvars.iv101.i210
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i124
  %indvars.iv96.i = phi i64 [ 0, %.lr.ph.i124 ], [ %indvars.iv.next97.i, %bb.i ] ; 4 uses
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %.06088.i211, i64 %indvars.iv96.i
  %i.wh = load i32, ptr %i.wg, align 4, !tbaa !19
  %i.wi = xor i64 %indvars.iv96.i, -1
  %i.wj = getelementptr [4 x i8], ptr %i.wf, i64 %i.wi
  %i.wk = load i32, ptr %i.wj, align 4, !tbaa !19
  %i.wl = sext i32 %i.wk to i64
  %i.wm = mul i64 %i.wc, %i.wl
  %i.wn = add i64 %i.wm, 2147483648
  %i.wo = lshr i64 %i.wn, 32
  %i.wp = trunc nuw i64 %i.wo to i32
  %i.wq = tail call i32 @llvm.ssub.sat.i32(i32 %i.wh, i32 %i.wp)
  %i.wr = sext i32 %i.wq to i64
  %i.ws = mul nsw i64 %i.wr, %i.wd
  %i.wt = ashr i64 %i.ws, %i.we
  %i.wu = add nsw i64 %i.wt, 1
  %i.wv = ashr i64 %i.wu, 1                       ; 2 uses
  %i.ww = add nsw i64 %i.wv, 2147483648
  %or.cond.i = icmp ult i64 %i.ww, 4294967296
  br i1 %or.cond.i, label %bb.i, label %silk_is_lpc_stable.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.wx = trunc nsw i64 %i.wv to i32
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %i.vd, i64 %indvars.iv96.i
  store i32 %i.wx, ptr %i.wy, align 4, !tbaa !19
  %indvars.iv.next97.i = add nuw nsw i64 %indvars.iv96.i, 1 ; 2 uses
  %exitcond100.not.i = icmp eq i64 %indvars.iv.next97.i, %wide.trip.count99.i
  br i1 %exitcond100.not.i, label %.loopexit.i.loopexit, label %bb.h, !llvm.loop !134

silk_is_lpc_stable.exit.thread:                   ; preds = %.loopexit.i.loopexit, %bb.h, %.loopexit245, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.j

.lr.ph90.i.silk_is_lpc_stable.exit_crit_edge:     ; preds = %.lr.ph90.i
  %i.wz = icmp slt i32 %i.ux, 107374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br i1 %i.wz, label %bb.j, label %vector.ph235

bb.j:                                             ; preds = %silk_is_lpc_stable.exit.thread, %.lr.ph90.i.silk_is_lpc_stable.exit_crit_edge
  %.neg = shl nsw i32 -1, %.1150
  %i.xa = add nsw i32 %.neg, 65536                ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.k
  %indvars.iv181 = phi i64 [ 0, %bb.j ], [ %indvars.iv.next182, %bb.k ] ; 3 uses
  %.0149 = phi i32 [ %i.xa, %bb.j ], [ %i.xq, %bb.k ] ; 2 uses
  %i.xb = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv181 ; 2 uses
  %i.xc = load i32, ptr %i.xb, align 4, !tbaa !19
  %i.xd = sext i32 %i.xc to i64
  %i.xe = zext i32 %.0149 to i64
  %i.xf = mul nsw i64 %i.xd, %i.xe
  %i.xg = lshr i64 %i.xf, 15
  %i.xh = add nuw nsw i64 %i.xg, 1
  %i.xi = lshr i64 %i.xh, 1
  %i.xj = trunc i64 %i.xi to i32                  ; 2 uses
  store i32 %i.xj, ptr %i.xb, align 4, !tbaa !19
  %i.xk = add nsw i32 %i.xj, 16
  %i.xl = lshr i32 %i.xk, 5
  %i.xm = trunc i32 %i.xl to i16
  %i.xn = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv181
  store i16 %i.xm, ptr %i.xn, align 2, !tbaa !28
  %i.xo = mul i32 %.0149, %i.xa
  %i.xp = add i32 %i.xo, 32768
  %i.xq = lshr i32 %i.xp, 16
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 1 ; 2 uses
  %exitcond185.not = icmp eq i64 %indvars.iv.next182, %wide.trip.count
  br i1 %exitcond185.not, label %bb.l, label %bb.k, !llvm.loop !135

bb.l:                                             ; preds = %bb.k
  %i.xr = add nuw nsw i32 %.1150, 1               ; 2 uses
  %exitcond186.not = icmp eq i32 %i.xr, 17
  br i1 %exitcond186.not, label %vector.ph235, label %vector.ph224, !llvm.loop !136

vector.ph235:                                     ; preds = %.lr.ph90.i.silk_is_lpc_stable.exit_crit_edge, %bb.l
  %n.vec236 = and i64 %wide.trip.count, 24        ; 3 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %wide.load239 = load <4 x i16>, ptr %i.f, align 16, !tbaa !28
  %wide.load240 = load <4 x i16>, ptr %i.xs, align 8, !tbaa !28
  %i.xt = sitofp <4 x i16> %wide.load239 to <4 x float>
  %i.xu = sitofp <4 x i16> %wide.load240 to <4 x float>
  %i.xv = fmul nnan nsz <4 x float> %i.xt, splat (float f0x39800000)
  %i.xw = fmul nnan nsz <4 x float> %i.xu, splat (float f0x39800000)
  %i.xx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <4 x float> %i.xv, ptr %1, align 4, !tbaa !24
  store <4 x float> %i.xw, ptr %i.xx, align 4, !tbaa !24
  %i.xy = icmp eq i64 %n.vec236, 8
  br i1 %i.xy, label %middle.block242, label %vector.body237.1

vector.body237.1:                                 ; preds = %vector.ph235
  %i.xz = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ya = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %wide.load239.1 = load <4 x i16>, ptr %i.xz, align 16, !tbaa !28
  %wide.load240.1 = load <4 x i16>, ptr %i.ya, align 8, !tbaa !28
  %i.yb = sitofp <4 x i16> %wide.load239.1 to <4 x float>
  %i.yc = sitofp <4 x i16> %wide.load240.1 to <4 x float>
  %i.yd = fmul nnan nsz <4 x float> %i.yb, splat (float f0x39800000)
  %i.ye = fmul nnan nsz <4 x float> %i.yc, splat (float f0x39800000)
  %i.yf = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.yg = getelementptr inbounds nuw i8, ptr %1, i64 48
  store <4 x float> %i.yd, ptr %i.yf, align 4, !tbaa !24
  store <4 x float> %i.ye, ptr %i.yg, align 4, !tbaa !24
  br label %middle.block242

middle.block242:                                  ; preds = %vector.body237.1, %vector.ph235
  %cmp.n243 = icmp eq i64 %n.vec236, %wide.trip.count
  br i1 %cmp.n243, label %.loopexit244, label %scalar.ph234

scalar.ph234:                                     ; preds = %middle.block242, %scalar.ph234
  %indvars.iv187 = phi i64 [ %indvars.iv.next188, %scalar.ph234 ], [ %n.vec236, %middle.block242 ] ; 3 uses
  %i.yh = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv187
  %i.yi = load i16, ptr %i.yh, align 2, !tbaa !28
  %i.yj = sitofp i16 %i.yi to float
  %i.yk = fmul nnan nsz float %i.yj, f0x39800000
  %i.yl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv187
  store float %i.yk, ptr %i.yl, align 4, !tbaa !24
  %indvars.iv.next188 = add nuw nsw i64 %indvars.iv187, 1 ; 2 uses
  %exitcond191.not = icmp eq i64 %indvars.iv.next188, %wide.trip.count
  br i1 %exitcond191.not, label %.loopexit244, label %scalar.ph234, !llvm.loop !137

.loopexit244:                                     ; preds = %scalar.ph234, %middle.block242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ssub.sat.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #5

end_hunk_1

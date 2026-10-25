Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_fade?download=true
inline.NumInlined: 17
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@filter_slice_rgb:bb.a
  %i.mr = getelementptr inbounds nuw i8, ptr %i.b, i64 109
  %i.ms = zext i8 %i.mk to i64
  %i.mt = getelementptr inbounds nuw i8, ptr %i.b, i64 110
  %i.mu = zext i8 %i.mi to i64
  %i.mv = load i32, ptr %i.mo, align 8, !tbaa !61 ; 2 uses
  %i.mw = icmp sgt i32 %i.mv, 0
  br i1 %i.mw, label %.lr.ph128.split, label %filter_rgb_planar.exit38

.lr.ph128.split:                                  ; preds = %.lr.ph128, %._crit_edge125
  %i.mx = phi i32 [ %i.ov, %._crit_edge125 ], [ %i.mv, %.lr.ph128 ] ; 2 uses
  %.046.i126 = phi i32 [ %i.ow, %._crit_edge125 ], [ %i.j, %.lr.ph128 ] ; 2 uses
  %i.my = icmp sgt i32 %i.mx, 0
  br i1 %i.my, label %.lr.ph124.preheader, label %._crit_edge125

.lr.ph124.preheader:                              ; preds = %.lr.ph128.split
  %i.mz = load ptr, ptr %1, align 8, !tbaa !51
  %i.na = load i32, ptr %i.mn, align 8, !tbaa !54
  %i.nb = mul nsw i32 %i.na, %.046.i126
  %i.nc = sext i32 %i.nb to i64
  %i.nd = getelementptr inbounds i8, ptr %i.mz, i64 %i.nc
  br label %.lr.ph124

.lr.ph124:                                        ; preds = %.lr.ph124.preheader, %.lr.ph124
  %.0.i39122 = phi ptr [ %i.or, %.lr.ph124 ], [ %i.nd, %.lr.ph124.preheader ] ; 4 uses
  %.045.i121 = phi i32 [ %i.os, %.lr.ph124 ], [ 0, %.lr.ph124.preheader ]
  %i.ne = load i8, ptr %i.mf, align 4, !tbaa !53
  %i.nf = zext i8 %i.ne to i32                    ; 2 uses
  %i.ng = shl nuw nsw i32 %i.nf, 16
  %i.nh = getelementptr inbounds nuw i8, ptr %.0.i39122, i64 %i.mp ; 2 uses
  %i.ni = load i8, ptr %i.nh, align 1, !tbaa !53
  %i.nj = zext i8 %i.ni to i32
  %i.nk = sub nsw i32 %i.nj, %i.nf
  %i.nl = load i32, ptr %i.mq, align 4, !tbaa !40
  %i.nm = mul nsw i32 %i.nk, %i.nl
  %i.nn = or disjoint i32 %i.ng, 32768
  %i.no = add i32 %i.nn, %i.nm
  %i.np = ashr i32 %i.no, 16
  %i.nq = tail call i32 @llvm.smax.i32(i32 %i.np, i32 0)
  %.0.i6692 = tail call i32 @llvm.umin.i32(i32 %i.nq, i32 255)
  %.0.i66 = trunc nuw i32 %.0.i6692 to i8
  store i8 %.0.i66, ptr %i.nh, align 1, !tbaa !53
  %i.nr = load i8, ptr %i.mr, align 1, !tbaa !53
  %i.ns = zext i8 %i.nr to i32                    ; 2 uses
  %i.nt = shl nuw nsw i32 %i.ns, 16
  %i.nu = getelementptr inbounds nuw i8, ptr %.0.i39122, i64 %i.ms ; 2 uses
  %i.nv = load i8, ptr %i.nu, align 1, !tbaa !53
  %i.nw = zext i8 %i.nv to i32
  %i.nx = sub nsw i32 %i.nw, %i.ns
  %i.ny = load i32, ptr %i.mq, align 4, !tbaa !40
  %i.nz = mul nsw i32 %i.nx, %i.ny
  %i.oa = or disjoint i32 %i.nt, 32768
  %i.ob = add i32 %i.oa, %i.nz
  %i.oc = ashr i32 %i.ob, 16
  %i.od = tail call i32 @llvm.smax.i32(i32 %i.oc, i32 0)
  %.0.i6493 = tail call i32 @llvm.umin.i32(i32 %i.od, i32 255)
  %.0.i64 = trunc nuw i32 %.0.i6493 to i8
  store i8 %.0.i64, ptr %i.nu, align 1, !tbaa !53
  %i.oe = load i8, ptr %i.mt, align 2, !tbaa !53
  %i.of = zext i8 %i.oe to i32                    ; 2 uses
  %i.og = shl nuw nsw i32 %i.of, 16
  %i.oh = getelementptr inbounds nuw i8, ptr %.0.i39122, i64 %i.mu ; 2 uses
  %i.oi = load i8, ptr %i.oh, align 1, !tbaa !53
  %i.oj = zext i8 %i.oi to i32
  %i.ok = sub nsw i32 %i.oj, %i.of
  %i.ol = load i32, ptr %i.mq, align 4, !tbaa !40
  %i.om = mul nsw i32 %i.ok, %i.ol
  %i.on = or disjoint i32 %i.og, 32768
  %i.oo = add i32 %i.on, %i.om
  %i.op = ashr i32 %i.oo, 16
  %i.oq = tail call i32 @llvm.smax.i32(i32 %i.op, i32 0)
  %.0.i6294 = tail call i32 @llvm.umin.i32(i32 %i.oq, i32 255)
  %.0.i62 = trunc nuw i32 %.0.i6294 to i8
  store i8 %.0.i62, ptr %i.oh, align 1, !tbaa !53
  %i.or = getelementptr inbounds nuw i8, ptr %.0.i39122, i64 4
  %i.os = add nuw nsw i32 %.045.i121, 1           ; 2 uses
  %i.ot = load i32, ptr %i.mo, align 8, !tbaa !61 ; 2 uses
  %i.ou = icmp slt i32 %i.os, %i.ot
  br i1 %i.ou, label %.lr.ph124, label %._crit_edge125, !llvm.loop !84

._crit_edge125:                                   ; preds = %.lr.ph124, %.lr.ph128.split
  %i.ov = phi i32 [ %i.mx, %.lr.ph128.split ], [ %i.ot, %.lr.ph124 ]
  %i.ow = add nsw i32 %.046.i126, 1               ; 2 uses
  %exitcond151.not = icmp eq i32 %i.ow, %i.o
  br i1 %exitcond151.not, label %filter_rgb_planar.exit38, label %.lr.ph128.split, !llvm.loop !87

bb.k:                                             ; preds = %bb.h
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 266) #9
  tail call void @abort() #12
  unreachable

filter_rgb_planar.exit38:                         ; preds = %._crit_edge, %._crit_edge109, %._crit_edge117, %._crit_edge125, %._crit_edge133, %.lr.ph128, %.lr.ph136, %.lr.ph120, %.lr.ph105, %bb.c, %bb.d, %bb.g, %bb.j, %bb.i
  ret i32 0
}

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #2

declare i32 @ff_fill_rgba_map(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @av_get_bits_per_pixel(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_rescale_q(i64 noundef, i64, i64) local_unnamed_addr #5

declare i32 @ff_pixfmt_is_in(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @filter_slice_luma(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.d = load i32, ptr %i.c, align 4, !tbaa !50
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = sext i32 %2 to i64
  %i.g = mul nsw i64 %i.e, %i.f
  %i.h = sext i32 %3 to i64                       ; 2 uses
  %i.i = sdiv i64 %i.g, %i.h
  %i.j = trunc i64 %i.i to i32                    ; 4 uses
  %i.k = add nsw i32 %2, 1
  %i.l = sext i32 %i.k to i64
  %i.m = mul nsw i64 %i.e, %i.l
  %i.n = sdiv i64 %i.m, %i.h
  %i.o = trunc i64 %i.n to i32                    ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 4 uses
  %i.q = icmp slt i32 %i.j, %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 52 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 44 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  br i1 %i.q, label %.split.us, label %.split40.us

.split.us:                                        ; preds = %bb.a
  %i.y = load i32, ptr %i.p, align 8, !tbaa !57
  %.not.us = icmp eq i32 %i.y, 0                  ; 0 uses
  %.pre = load i32, ptr %i.t, align 8, !tbaa !61
  %.pre43 = load i32, ptr %i.u, align 4, !tbaa !56
  br label %bb.b

bb.b:                                             ; preds = %.split.us, %._crit_edge.us
  %i.z = phi i32 [ %.pre43, %.split.us ], [ %i.ay, %._crit_edge.us ] ; 2 uses
  %i.aa = phi i32 [ %.pre, %.split.us ], [ %i.az, %._crit_edge.us ] ; 2 uses
  %.03236.us = phi i32 [ %i.j, %.split.us ], [ %i.ba, %._crit_edge.us ] ; 2 uses
  %i.ab = mul nsw i32 %i.z, %i.aa
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph.us.preheader, label %._crit_edge.us

.lr.ph.us.preheader:                              ; preds = %bb.b
  %i.ad = load ptr, ptr %1, align 8, !tbaa !51
  %i.ae = load i32, ptr %i.s, align 8, !tbaa !54
  %i.af = mul nsw i32 %i.ae, %.03236.us
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds i8, ptr %i.ad, i64 %i.ag
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %.lr.ph.us
  %.035.us = phi ptr [ %i.as, %.lr.ph.us ], [ %i.ah, %.lr.ph.us.preheader ] ; 3 uses
  %.03134.us = phi i32 [ %i.at, %.lr.ph.us ], [ 0, %.lr.ph.us.preheader ]
  %i.ai = load i8, ptr %.035.us, align 1, !tbaa !53
  %i.aj = zext i8 %i.ai to i32
  %i.ak = load i32, ptr %i.v, align 4, !tbaa !59
  %i.al = sub i32 %i.aj, %i.ak
  %i.am = load i32, ptr %i.w, align 4, !tbaa !40
  %i.an = mul i32 %i.al, %i.am
  %i.ao = load i32, ptr %i.x, align 8, !tbaa !60
  %i.ap = add i32 %i.an, %i.ao
  %i.aq = lshr i32 %i.ap, 16
  %i.ar = trunc i32 %i.aq to i8
  store i8 %i.ar, ptr %.035.us, align 1, !tbaa !53
  %i.as = getelementptr inbounds nuw i8, ptr %.035.us, i64 1
  %i.at = add nuw nsw i32 %.03134.us, 1           ; 2 uses
  %i.au = load i32, ptr %i.t, align 8, !tbaa !61  ; 2 uses
  %i.av = load i32, ptr %i.u, align 4, !tbaa !56  ; 2 uses
  %i.aw = mul nsw i32 %i.av, %i.au
  %i.ax = icmp slt i32 %i.at, %i.aw
  br i1 %i.ax, label %.lr.ph.us, label %._crit_edge.us, !llvm.loop !88

._crit_edge.us:                                   ; preds = %.lr.ph.us, %bb.b
  %i.ay = phi i32 [ %i.z, %bb.b ], [ %i.av, %.lr.ph.us ]
  %i.az = phi i32 [ %i.aa, %bb.b ], [ %i.au, %.lr.ph.us ]
  %i.ba = add nsw i32 %.03236.us, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.ba, %i.o
  br i1 %exitcond.not, label %._crit_edge38.us, label %bb.b, !llvm.loop !89

._crit_edge38.us:                                 ; preds = %._crit_edge.us
  %i.bb = load i32, ptr %i.p, align 8, !tbaa !57
  %.not.us.1 = icmp eq i32 %i.bb, 0
  br i1 %.not.us.1, label %.split40.us, label %bb.c

bb.c:                                             ; preds = %._crit_edge38.us
  %i.bc = load i8, ptr %i.r, align 4, !tbaa !48
  %.not33.us.1 = icmp ne i8 %i.bc, 0
  br i1 %.not33.us.1, label %.preheader.us.1, label %.split40.us

.preheader.us.1:                                  ; preds = %bb.c
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 68
  %.pre.1 = load i32, ptr %i.t, align 8, !tbaa !61
  %.pre43.1 = load i32, ptr %i.u, align 4, !tbaa !56
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.us.1, %.preheader.us.1
  %i.bf = phi i32 [ %.pre43.1, %.preheader.us.1 ], [ %i.ce, %._crit_edge.us.1 ] ; 2 uses
  %i.bg = phi i32 [ %.pre.1, %.preheader.us.1 ], [ %i.cf, %._crit_edge.us.1 ] ; 2 uses
  %.03236.us.1 = phi i32 [ %i.j, %.preheader.us.1 ], [ %i.cg, %._crit_edge.us.1 ] ; 2 uses
  %i.bh = mul nsw i32 %i.bf, %i.bg
  %i.bi = icmp sgt i32 %i.bh, 0
  br i1 %i.bi, label %.lr.ph.us.preheader.1, label %._crit_edge.us.1

.lr.ph.us.preheader.1:                            ; preds = %bb.d
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !51
  %i.bk = load i32, ptr %i.be, align 4, !tbaa !54
  %i.bl = mul nsw i32 %i.bk, %.03236.us.1
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds i8, ptr %i.bj, i64 %i.bm
  br label %.lr.ph.us.1

.lr.ph.us.1:                                      ; preds = %.lr.ph.us.1, %.lr.ph.us.preheader.1
  %.035.us.1 = phi ptr [ %i.by, %.lr.ph.us.1 ], [ %i.bn, %.lr.ph.us.preheader.1 ] ; 3 uses
  %.03134.us.1 = phi i32 [ %i.bz, %.lr.ph.us.1 ], [ 0, %.lr.ph.us.preheader.1 ]
  %i.bo = load i8, ptr %.035.us.1, align 1, !tbaa !53
  %i.bp = zext i8 %i.bo to i32
  %i.bq = load i32, ptr %i.v, align 4, !tbaa !59
  %i.br = sub i32 %i.bp, %i.bq
  %i.bs = load i32, ptr %i.w, align 4, !tbaa !40
  %i.bt = mul i32 %i.br, %i.bs
  %i.bu = load i32, ptr %i.x, align 8, !tbaa !60
  %i.bv = add i32 %i.bt, %i.bu
  %i.bw = lshr i32 %i.bv, 16
  %i.bx = trunc i32 %i.bw to i8
  store i8 %i.bx, ptr %.035.us.1, align 1, !tbaa !53
  %i.by = getelementptr inbounds nuw i8, ptr %.035.us.1, i64 1
  %i.bz = add nuw nsw i32 %.03134.us.1, 1         ; 2 uses
  %i.ca = load i32, ptr %i.t, align 8, !tbaa !61  ; 2 uses
  %i.cb = load i32, ptr %i.u, align 4, !tbaa !56  ; 2 uses
  %i.cc = mul nsw i32 %i.cb, %i.ca
  %i.cd = icmp slt i32 %i.bz, %i.cc
  br i1 %i.cd, label %.lr.ph.us.1, label %._crit_edge.us.1, !llvm.loop !88

._crit_edge.us.1:                                 ; preds = %.lr.ph.us.1, %bb.d
  %i.ce = phi i32 [ %i.bf, %bb.d ], [ %i.cb, %.lr.ph.us.1 ]
  %i.cf = phi i32 [ %i.bg, %bb.d ], [ %i.ca, %.lr.ph.us.1 ]
  %i.cg = add nsw i32 %.03236.us.1, 1             ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.cg, %i.o
  br i1 %exitcond.not.1, label %._crit_edge38.us.1, label %bb.d, !llvm.loop !89

._crit_edge38.us.1:                               ; preds = %._crit_edge.us.1
  %i.ch = load i32, ptr %i.p, align 8, !tbaa !57
  %.not.us.2 = icmp eq i32 %i.ch, 0
  br i1 %.not.us.2, label %.split40.us, label %bb.e

bb.e:                                             ; preds = %._crit_edge38.us.1
  %i.ci = load i8, ptr %i.r, align 4, !tbaa !48
  %.not33.us.2 = icmp ne i8 %i.ci, 0
  br i1 %.not33.us.2, label %.preheader.us.2, label %.split40.us

.preheader.us.2:                                  ; preds = %bb.e
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.pre.2 = load i32, ptr %i.t, align 8, !tbaa !61
  %.pre43.2 = load i32, ptr %i.u, align 4, !tbaa !56
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.us.2, %.preheader.us.2
  %i.cl = phi i32 [ %.pre43.2, %.preheader.us.2 ], [ %i.dk, %._crit_edge.us.2 ] ; 2 uses
  %i.cm = phi i32 [ %.pre.2, %.preheader.us.2 ], [ %i.dl, %._crit_edge.us.2 ] ; 2 uses
  %.03236.us.2 = phi i32 [ %i.j, %.preheader.us.2 ], [ %i.dm, %._crit_edge.us.2 ] ; 2 uses
  %i.cn = mul nsw i32 %i.cl, %i.cm
  %i.co = icmp sgt i32 %i.cn, 0
  br i1 %i.co, label %.lr.ph.us.preheader.2, label %._crit_edge.us.2

.lr.ph.us.preheader.2:                            ; preds = %bb.f
  %i.cp = load ptr, ptr %i.cj, align 8, !tbaa !51
  %i.cq = load i32, ptr %i.ck, align 8, !tbaa !54
  %i.cr = mul nsw i32 %i.cq, %.03236.us.2
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds i8, ptr %i.cp, i64 %i.cs
  br label %.lr.ph.us.2

.lr.ph.us.2:                                      ; preds = %.lr.ph.us.2, %.lr.ph.us.preheader.2
  %.035.us.2 = phi ptr [ %i.de, %.lr.ph.us.2 ], [ %i.ct, %.lr.ph.us.preheader.2 ] ; 3 uses
  %.03134.us.2 = phi i32 [ %i.df, %.lr.ph.us.2 ], [ 0, %.lr.ph.us.preheader.2 ]
  %i.cu = load i8, ptr %.035.us.2, align 1, !tbaa !53
  %i.cv = zext i8 %i.cu to i32
  %i.cw = load i32, ptr %i.v, align 4, !tbaa !59
  %i.cx = sub i32 %i.cv, %i.cw
  %i.cy = load i32, ptr %i.w, align 4, !tbaa !40
  %i.cz = mul i32 %i.cx, %i.cy
  %i.da = load i32, ptr %i.x, align 8, !tbaa !60
  %i.db = add i32 %i.cz, %i.da
  %i.dc = lshr i32 %i.db, 16
  %i.dd = trunc i32 %i.dc to i8
  store i8 %i.dd, ptr %.035.us.2, align 1, !tbaa !53
  %i.de = getelementptr inbounds nuw i8, ptr %.035.us.2, i64 1
  %i.df = add nuw nsw i32 %.03134.us.2, 1         ; 2 uses
  %i.dg = load i32, ptr %i.t, align 8, !tbaa !61  ; 2 uses
  %i.dh = load i32, ptr %i.u, align 4, !tbaa !56  ; 2 uses
  %i.di = mul nsw i32 %i.dh, %i.dg
  %i.dj = icmp slt i32 %i.df, %i.di
  br i1 %i.dj, label %.lr.ph.us.2, label %._crit_edge.us.2, !llvm.loop !88

._crit_edge.us.2:                                 ; preds = %.lr.ph.us.2, %bb.f
  %i.dk = phi i32 [ %i.cl, %bb.f ], [ %i.dh, %.lr.ph.us.2 ]
  %i.dl = phi i32 [ %i.cm, %bb.f ], [ %i.dg, %.lr.ph.us.2 ]
  %i.dm = add nsw i32 %.03236.us.2, 1             ; 2 uses
  %exitcond.not.2 = icmp eq i32 %i.dm, %i.o
  br i1 %exitcond.not.2, label %._crit_edge38.us.2, label %bb.f, !llvm.loop !89

._crit_edge38.us.2:                               ; preds = %._crit_edge.us.2
  %i.dn = load i32, ptr %i.p, align 8, !tbaa !57
  %.not.us.3 = icmp eq i32 %i.dn, 0               ; 0 uses
  br label %.split40.us

.split40.us:                                      ; preds = %bb.c, %bb.e, %._crit_edge38.us.2, %._crit_edge38.us, %._crit_edge38.us.1, %bb.a
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @filter_slice_luma16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.d = load i32, ptr %i.c, align 4, !tbaa !50
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = sext i32 %2 to i64
  %i.g = mul nsw i64 %i.e, %i.f
  %i.h = sext i32 %3 to i64                       ; 2 uses
  %i.i = sdiv i64 %i.g, %i.h                      ; 3 uses
  %i.j = trunc i64 %i.i to i32
  %i.k = add nsw i32 %2, 1
  %i.l = sext i32 %i.k to i64
  %i.m = mul nsw i64 %i.e, %i.l
  %i.n = sdiv i64 %i.m, %i.h                      ; 3 uses
  %i.o = trunc i64 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.q = load i32, ptr %i.p, align 8, !tbaa !57
  %.not = icmp eq i32 %i.q, 0
  %i.r = icmp slt i32 %i.j, %i.o
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  br i1 %i.r, label %.split.us, label %.split40.us

.split.us:                                        ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.z = load i32, ptr %i.y, align 8, !tbaa !61
  %i.aa = load i32, ptr %i.x, align 4, !tbaa !56
  %i.ab = mul nsw i32 %i.aa, %i.z                 ; 13 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.split.us.split.us, label %.split40.us

.split.us.split.us:                               ; preds = %.split.us
  %i.ad = load i32, ptr %i.u, align 4, !tbaa !59  ; 8 uses
  %i.ae = load i32, ptr %i.v, align 4, !tbaa !40  ; 8 uses
  %i.af = load i32, ptr %i.w, align 8, !tbaa !60  ; 8 uses
  br i1 %.not, label %.preheader.us.us.us.preheader, label %.split.us.split.us.split

.preheader.us.us.us.preheader:                    ; preds = %.split.us.split.us
  %sext60 = shl i64 %i.i, 32
  %i.ag = ashr exact i64 %sext60, 32
  %i.ah = load ptr, ptr %1, align 8, !tbaa !51
  %i.ai = load i32, ptr %i.t, align 8, !tbaa !54
  %i.aj = sext i32 %i.ai to i64
  %sext61 = shl i64 %i.n, 32
  %wide.trip.count55 = ashr exact i64 %sext61, 32
  %i.ak = zext nneg i32 %i.ab to i64              ; 2 uses
  %min.iters.check70 = icmp ult i32 %i.ab, 8
  %n.vec72 = and i64 %i.ak, 2147483640            ; 4 uses
  %i.al = shl nuw nsw i64 %n.vec72, 1
  %i.am = trunc nuw nsw i64 %n.vec72 to i32
  %broadcast.splatinsert73 = insertelement <8 x i32> poison, i32 %i.ad, i64 0
  %broadcast.splat74 = shufflevector <8 x i32> %broadcast.splatinsert73, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert75 = insertelement <8 x i32> poison, i32 %i.ae, i64 0
  %broadcast.splat76 = shufflevector <8 x i32> %broadcast.splatinsert75, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert77 = insertelement <8 x i32> poison, i32 %i.af, i64 0
  %broadcast.splat78 = shufflevector <8 x i32> %broadcast.splatinsert77, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n85 = icmp eq i64 %n.vec72, %i.ak
  br label %.lr.ph.us.us.us

.lr.ph.us.us.us:                                  ; preds = %._crit_edge.us.us.us, %.preheader.us.us.us.preheader
  %indvars.iv52 = phi i64 [ %indvars.iv.next53, %._crit_edge.us.us.us ], [ %i.ag, %.preheader.us.us.us.preheader ] ; 2 uses
  %i.an = mul nsw i64 %indvars.iv52, %i.aj
  %i.ao = getelementptr inbounds i8, ptr %i.ah, i64 %i.an ; 3 uses
  br i1 %min.iters.check70, label %scalar.ph69.preheader, label %vector.ph71

vector.ph71:                                      ; preds = %.lr.ph.us.us.us
  %i.ap = getelementptr i8, ptr %i.ao, i64 %i.al
  br label %vector.body79

end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/o3dgcDynamicVectorEncoder?download=true
inline.NumInlined: 82
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN5o3dgc20DynamicVectorEncoder13EncodePayloadERKNS_14DVEncodeParamsERKNS_13DynamicVectorERNS_12BinaryStreamE:bb.a
  br i1 %i.co, label %.preheader75, label %bb.ah

._crit_edge80.split.thread147:                    ; preds = %.lr.ph36.i
  %i.cp = load i32, ptr %i.g, align 8
  %i.cq = icmp eq i32 %i.cp, 1
  br i1 %i.cq, label %.loopexit.thread, label %bb.ah

._crit_edge80.split.thread:                       ; preds = %.lr.ph79
  %i.cr = load i32, ptr %i.g, align 8
  %i.cs = icmp eq i32 %i.cr, 1
  br i1 %i.cs, label %.preheader.preheader, label %bb.ah

.preheader75:                                     ; preds = %._crit_edge80.split
  %.not94 = icmp eq i64 %i.f, 0
  br i1 %.not94, label %.loopexit.thread, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader75
  br i1 %.not.i, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %._crit_edge80.split.thread, %.preheader.lr.ph
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  br label %.preheader

.lr.ph.i67:                                       ; preds = %.lr.ph79, %_ZN5o3dgc9TransformEPlm.exit.loopexit
  %.05978 = phi i64 [ %i.gy, %_ZN5o3dgc9TransformEPlm.exit.loopexit ], [ 0, %.lr.ph79 ] ; 2 uses
  %i.cv = load ptr, ptr %i.bx, align 8
  %i.cw = mul i64 %.05978, %i.f
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.cw ; 12 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  br label %bb.m

bb.m:                                             ; preds = %_ZN5o3dgc5SplitEPll.exit.i, %.lr.ph.i67
  %.014.i = phi i64 [ %i.f, %.lr.ph.i67 ], [ %i.gw, %_ZN5o3dgc5SplitEPll.exit.i ] ; 8 uses
  %i.cz = add nsw i64 %.014.i, -1                 ; 5 uses
  %i.da = icmp sgt i64 %.014.i, 2                 ; 2 uses
  br i1 %i.da, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.m
  %i.db = add nsw i64 %.014.i, -3                 ; 2 uses
  %i.dc = lshr i64 %i.db, 1                       ; 2 uses
  %i.dd = add nuw i64 %i.dc, 1                    ; 2 uses
  %i.de = icmp eq i64 %i.dc, 0
  br i1 %i.de, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter159 = and i64 %i.dd, -2
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.016.i.i = phi i64 [ 1, %.lr.ph.i.i.preheader.new ], [ %i.dy, %.lr.ph.i.i ] ; 3 uses
  %niter160 = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter160.next.1, %.lr.ph.i.i ]
  %i.df = getelementptr [8 x i8], ptr %i.cx, i64 %.016.i.i ; 4 uses
  %i.dg = getelementptr i8, ptr %i.df, i64 -8
  %i.dh = load i64, ptr %i.dg, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dj = load i64, ptr %i.di, align 8            ; 2 uses
  %i.dk = add i64 %i.dh, 1
  %i.dl = add i64 %i.dk, %i.dj
  %i.dm = ashr i64 %i.dl, 1
  %i.dn = load i64, ptr %i.df, align 8
  %i.do = sub nsw i64 %i.dn, %i.dm
  store i64 %i.do, ptr %i.df, align 8
  %i.dp = getelementptr [8 x i8], ptr %i.cx, i64 %.016.i.i ; 2 uses
  %i.dq = getelementptr i8, ptr %i.dp, i64 16     ; 2 uses
  %i.dr = getelementptr i8, ptr %i.dp, i64 24
  %i.ds = load i64, ptr %i.dr, align 8
  %i.dt = add i64 %i.dj, 1
  %i.du = add i64 %i.dt, %i.ds
  %i.dv = ashr i64 %i.du, 1
  %i.dw = load i64, ptr %i.dq, align 8
  %i.dx = sub nsw i64 %i.dw, %i.dv
  store i64 %i.dx, ptr %i.dq, align 8
  %i.dy = add nuw nsw i64 %.016.i.i, 4            ; 3 uses
  %niter160.next.1 = add nuw i64 %niter160, 2     ; 2 uses
  %niter160.ncmp.1.not = icmp eq i64 %niter160.next.1, %unroll_iter159
  br i1 %niter160.ncmp.1.not, label %._crit_edge.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !7

._crit_edge.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i.i
  %i.dz = and i64 %i.db, 2
  %lcmp.mod156.not.not = icmp eq i64 %i.dz, 0
  br i1 %lcmp.mod156.not.not, label %.lr.ph.i.i.epil.preheader, label %._crit_edge.i.i

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.016.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.preheader ], [ %i.dy, %._crit_edge.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod158 = trunc i64 %i.dd to i1
  tail call void @llvm.assume(i1 %lcmp.mod158)
  %i.ea = getelementptr [8 x i8], ptr %i.cx, i64 %.016.i.i.epil.init ; 4 uses
  %i.eb = getelementptr i8, ptr %i.ea, i64 -8
  %i.ec = load i64, ptr %i.eb, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ee = load i64, ptr %i.ed, align 8
  %i.ef = add i64 %i.ec, 1
  %i.eg = add i64 %i.ef, %i.ee
  %i.eh = ashr i64 %i.eg, 1
  %i.ei = load i64, ptr %i.ea, align 8
  %i.ej = sub nsw i64 %i.ei, %i.eh
  store i64 %i.ej, ptr %i.ea, align 8
  %i.ek = add nuw nsw i64 %.016.i.i.epil.init, 2
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.epil.preheader, %._crit_edge.i.i.loopexit.unr-lcssa, %bb.m
  %.0.lcssa.i.i = phi i64 [ 1, %bb.m ], [ %i.dy, %._crit_edge.i.i.loopexit.unr-lcssa ], [ %i.ek, %.lr.ph.i.i.epil.preheader ]
  %i.el = icmp eq i64 %.0.lcssa.i.i, %i.cz
  br i1 %i.el, label %bb.n, label %_ZN5o3dgc7PredictEPll.exit.i

bb.n:                                             ; preds = %._crit_edge.i.i
  %i.em = getelementptr [8 x i8], ptr %i.cx, i64 %i.cz ; 3 uses
  %i.en = getelementptr i8, ptr %i.em, i64 -8
  %i.eo = load i64, ptr %i.en, align 8
  %i.ep = load i64, ptr %i.em, align 8
  %i.eq = sub nsw i64 %i.ep, %i.eo
  store i64 %i.eq, ptr %i.em, align 8
  br label %_ZN5o3dgc7PredictEPll.exit.i

_ZN5o3dgc7PredictEPll.exit.i:                     ; preds = %bb.n, %._crit_edge.i.i
  %i.er = load i64, ptr %i.cy, align 8
  %i.es = ashr i64 %i.er, 1
  %i.et = load i64, ptr %i.cx, align 8
  %i.eu = add nsw i64 %i.et, %i.es
  store i64 %i.eu, ptr %i.cx, align 8
  %i.ev = icmp sgt i64 %.014.i, 3
  br i1 %i.ev, label %.lr.ph.i11.i.preheader, label %._crit_edge.i9.i

.lr.ph.i11.i.preheader:                           ; preds = %_ZN5o3dgc7PredictEPll.exit.i
  %i.ew = add nsw i64 %.014.i, -4
  %i.ex = lshr i64 %i.ew, 1                       ; 2 uses
  %i.ey = add nuw i64 %i.ex, 1                    ; 2 uses
  %i.ez = icmp eq i64 %i.ex, 0
  br i1 %i.ez, label %.lr.ph.i11.i.epil.preheader, label %.lr.ph.i11.i.preheader.new

.lr.ph.i11.i.preheader.new:                       ; preds = %.lr.ph.i11.i.preheader
  %unroll_iter165 = and i64 %i.ey, -2
  br label %.lr.ph.i11.i

.lr.ph.i11.i:                                     ; preds = %.lr.ph.i11.i, %.lr.ph.i11.i.preheader.new
  %.018.i.i = phi i64 [ 2, %.lr.ph.i11.i.preheader.new ], [ %i.ft, %.lr.ph.i11.i ] ; 3 uses
  %niter166 = phi i64 [ 0, %.lr.ph.i11.i.preheader.new ], [ %niter166.next.1, %.lr.ph.i11.i ]
  %i.fa = getelementptr [8 x i8], ptr %i.cx, i64 %.018.i.i ; 4 uses
  %i.fb = getelementptr i8, ptr %i.fa, i64 -8
  %i.fc = load i64, ptr %i.fb, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fe = load i64, ptr %i.fd, align 8            ; 2 uses
  %i.ff = add i64 %i.fc, 2
  %i.fg = add i64 %i.ff, %i.fe
  %i.fh = ashr i64 %i.fg, 2
  %i.fi = load i64, ptr %i.fa, align 8
  %i.fj = add nsw i64 %i.fh, %i.fi
  store i64 %i.fj, ptr %i.fa, align 8
  %i.fk = getelementptr [8 x i8], ptr %i.cx, i64 %.018.i.i ; 2 uses
  %i.fl = getelementptr i8, ptr %i.fk, i64 16     ; 2 uses
  %i.fm = getelementptr i8, ptr %i.fk, i64 24
  %i.fn = load i64, ptr %i.fm, align 8
  %i.fo = add i64 %i.fe, 2
  %i.fp = add i64 %i.fo, %i.fn
  %i.fq = ashr i64 %i.fp, 2
  %i.fr = load i64, ptr %i.fl, align 8
  %i.fs = add nsw i64 %i.fq, %i.fr
  store i64 %i.fs, ptr %i.fl, align 8
  %i.ft = add nuw nsw i64 %.018.i.i, 4            ; 3 uses
  %niter166.next.1 = add nuw i64 %niter166, 2     ; 2 uses
  %niter166.ncmp.1.not = icmp eq i64 %niter166.next.1, %unroll_iter165
  br i1 %niter166.ncmp.1.not, label %._crit_edge.i9.i.loopexit.unr-lcssa, label %.lr.ph.i11.i, !llvm.loop !8

._crit_edge.i9.i.loopexit.unr-lcssa:              ; preds = %.lr.ph.i11.i
  %i.fu = and i64 %.014.i, 2
  %lcmp.mod162.not.not = icmp eq i64 %i.fu, 0
  br i1 %lcmp.mod162.not.not, label %.lr.ph.i11.i.epil.preheader, label %._crit_edge.i9.i

.lr.ph.i11.i.epil.preheader:                      ; preds = %._crit_edge.i9.i.loopexit.unr-lcssa, %.lr.ph.i11.i.preheader
  %.018.i.i.epil.init = phi i64 [ 2, %.lr.ph.i11.i.preheader ], [ %i.ft, %._crit_edge.i9.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod164 = trunc i64 %i.ey to i1
  tail call void @llvm.assume(i1 %lcmp.mod164)
  %i.fv = getelementptr [8 x i8], ptr %i.cx, i64 %.018.i.i.epil.init ; 4 uses
  %i.fw = getelementptr i8, ptr %i.fv, i64 -8
  %i.fx = load i64, ptr %i.fw, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fz = load i64, ptr %i.fy, align 8
  %i.ga = add i64 %i.fx, 2
  %i.gb = add i64 %i.ga, %i.fz
  %i.gc = ashr i64 %i.gb, 2
  %i.gd = load i64, ptr %i.fv, align 8
  %i.ge = add nsw i64 %i.gc, %i.gd
  store i64 %i.ge, ptr %i.fv, align 8
  %i.gf = add nuw nsw i64 %.018.i.i.epil.init, 2
  br label %._crit_edge.i9.i

._crit_edge.i9.i:                                 ; preds = %.lr.ph.i11.i.epil.preheader, %._crit_edge.i9.i.loopexit.unr-lcssa, %_ZN5o3dgc7PredictEPll.exit.i
  %.0.lcssa.i10.i = phi i64 [ 2, %_ZN5o3dgc7PredictEPll.exit.i ], [ %i.ft, %._crit_edge.i9.i.loopexit.unr-lcssa ], [ %i.gf, %.lr.ph.i11.i.epil.preheader ]
  %i.gg = icmp eq i64 %.0.lcssa.i10.i, %i.cz
  br i1 %i.gg, label %bb.o, label %_ZN5o3dgc6UpdateEPll.exit.i

bb.o:                                             ; preds = %._crit_edge.i9.i
  %i.gh = getelementptr [8 x i8], ptr %i.cx, i64 %i.cz ; 3 uses
  %i.gi = getelementptr i8, ptr %i.gh, i64 -8
  %i.gj = load i64, ptr %i.gi, align 8
  %i.gk = ashr i64 %i.gj, 1
  %i.gl = load i64, ptr %i.gh, align 8
  %i.gm = add nsw i64 %i.gl, %i.gk
  store i64 %i.gm, ptr %i.gh, align 8
  br label %_ZN5o3dgc6UpdateEPll.exit.i

_ZN5o3dgc6UpdateEPll.exit.i:                      ; preds = %bb.o, %._crit_edge.i9.i
  br i1 %i.da, label %.preheader.i.i, label %_ZN5o3dgc5SplitEPll.exit.i

.preheader.i.i:                                   ; preds = %_ZN5o3dgc6UpdateEPll.exit.i, %bb.p
  %.01217.i.i = phi i64 [ %.012.i.i, %bb.p ], [ %i.cz, %_ZN5o3dgc6UpdateEPll.exit.i ] ; 2 uses
  %.01316.i.i = phi i64 [ %i.gn, %bb.p ], [ 1, %_ZN5o3dgc6UpdateEPll.exit.i ] ; 2 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.q
  %i.gn = add nuw nsw i64 %.01316.i.i, 1          ; 2 uses
  %.012.i.i = add nsw i64 %.01217.i.i, -1         ; 2 uses
  %i.go = icmp slt i64 %i.gn, %.012.i.i
  br i1 %i.go, label %.preheader.i.i, label %_ZN5o3dgc5SplitEPll.exit.i, !llvm.loop !9

bb.q:                                             ; preds = %bb.q, %.preheader.i.i
  %.014.i.i = phi i64 [ %.01316.i.i, %.preheader.i.i ], [ %i.gs, %bb.q ] ; 2 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %.014.i.i ; 2 uses
  %i.gq = load <2 x i64>, ptr %i.gp, align 8
  %i.gr = shufflevector <2 x i64> %i.gq, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.gr, ptr %i.gp, align 8
  %i.gs = add nuw nsw i64 %.014.i.i, 2            ; 2 uses
  %i.gt = icmp slt i64 %i.gs, %.01217.i.i
  br i1 %i.gt, label %bb.q, label %bb.p, !llvm.loop !10

_ZN5o3dgc5SplitEPll.exit.i:                       ; preds = %bb.p, %_ZN5o3dgc6UpdateEPll.exit.i
  %i.gu = lshr i64 %.014.i, 1
  %i.gv = and i64 %.014.i, 1
  %i.gw = add nuw i64 %i.gu, %i.gv                ; 2 uses
  %i.gx = icmp ugt i64 %i.gw, 1
  br i1 %i.gx, label %bb.m, label %_ZN5o3dgc9TransformEPlm.exit.loopexit, !llvm.loop !11

_ZN5o3dgc9TransformEPlm.exit.loopexit:            ; preds = %_ZN5o3dgc5SplitEPll.exit.i
  %i.gy = add nuw i64 %.05978, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.gy, %i.e
  br i1 %exitcond.not, label %._crit_edge80.split, label %.lr.ph.i67, !llvm.loop !12

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge90
  %.05891 = phi i64 [ %i.gz, %._crit_edge90 ], [ 0, %.preheader.preheader ] ; 2 uses
  br label %bb.r

._crit_edge90:                                    ; preds = %_ZN5o3dgc12BinaryStream14WriteUIntASCIIEm.exit
  %i.gz = add nuw i64 %.05891, 1                  ; 2 uses
  %exitcond99.not = icmp eq i64 %i.gz, %i.f
  br i1 %exitcond99.not, label %.loopexit, label %.preheader, !llvm.loop !13

bb.r:                                             ; preds = %.preheader, %_ZN5o3dgc12BinaryStream14WriteUIntASCIIEm.exit
  %.05788 = phi i64 [ 0, %.preheader ], [ %i.ja, %_ZN5o3dgc12BinaryStream14WriteUIntASCIIEm.exit ] ; 2 uses
  %i.ha = load ptr, ptr %i.ct, align 8
  %i.hb = mul i64 %.05788, %i.f
  %i.hc = getelementptr [8 x i8], ptr %i.ha, i64 %i.hb
  %i.hd = getelementptr [8 x i8], ptr %i.hc, i64 %.05891
  %i.he = load i64, ptr %i.hd, align 8            ; 2 uses
  %i.hf = shl nsw i64 %i.he, 1
  %.lobit.i.i = ashr i64 %i.he, 63
  %i.hg = xor i64 %i.hf, %.lobit.i.i              ; 3 uses
  %i.hh = icmp ugt i64 %i.hg, 126
  br i1 %i.hh, label %bb.s, label %bb.ac

bb.s:                                             ; preds = %bb.r
  %i.hi = load i64, ptr %i.b, align 8             ; 3 uses
  %i.hj = load i64, ptr %i.cu, align 8
  %i.hk = icmp eq i64 %i.hi, %i.hj
  br i1 %i.hk, label %bb.t, label %._crit_edge.i.i69

._crit_edge.i.i69:                                ; preds = %bb.s
  %.pre.i.i70 = load ptr, ptr %3, align 8
  br label %_ZN5o3dgc6VectorIhE8PushBackERKh.exit.i

bb.t:                                             ; preds = %bb.s
  %i.hl = shl i64 %i.hi, 1
  %spec.select.i.i71 = tail call i64 @llvm.umax.i64(i64 %i.hl, i64 32) ; 2 uses
  store i64 %spec.select.i.i71, ptr %i.cu, align 8
  %i.hm = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %spec.select.i.i71) #12 ; 3 uses
  %i.hn = load i64, ptr %i.b, align 8             ; 3 uses
  %.not.i.i72 = icmp eq i64 %i.hn, 0
  br i1 %.not.i.i72, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ho = load ptr, ptr %3, align 8               ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hm, ptr align 1 %i.ho, i64 %i.hn, i1 false)
  %i.hp = icmp eq ptr %i.ho, null
  br i1 %i.hp, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @_ZdaPv(ptr noundef nonnull %i.ho) #11
  %.pre6.pre.i.i73 = load i64, ptr %i.b, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %.pre6.i.i74 = phi i64 [ %i.hn, %bb.u ], [ %.pre6.pre.i.i73, %bb.v ], [ 0, %bb.t ]
  store ptr %i.hm, ptr %3, align 8
  br label %_ZN5o3dgc6VectorIhE8PushBackERKh.exit.i

_ZN5o3dgc6VectorIhE8PushBackERKh.exit.i:          ; preds = %bb.w, %._crit_edge.i.i69
  %i.hq = phi i64 [ %i.hi, %._crit_edge.i.i69 ], [ %.pre6.i.i74, %bb.w ] ; 2 uses
  %i.hr = phi ptr [ %.pre.i.i70, %._crit_edge.i.i69 ], [ %i.hm, %bb.w ]
  %i.hs = add i64 %i.hq, 1
  store i64 %i.hs, ptr %i.b, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 %i.hq
  store i8 127, ptr %i.ht, align 1
  %i.hu = add i64 %i.hg, -127
  br label %bb.x

bb.x:                                             ; preds = %_ZN5o3dgc6VectorIhE8PushBackERKh.exit14.i, %_ZN5o3dgc6VectorIhE8PushBackERKh.exit.i
  %.0.i = phi i64 [ %i.hu, %_ZN5o3dgc6VectorIhE8PushBackERKh.exit.i ], [ %i.hx, %_ZN5o3dgc6VectorIhE8PushBackERKh.exit14.i ] ; 2 uses
  %.0.tr.i = trunc i64 %.0.i to i8
  %i.hv = shl i8 %.0.tr.i, 1
  %i.hw = and i8 %i.hv, 126
  %i.hx = lshr i64 %.0.i, 6                       ; 2 uses
  %i.hy = icmp ne i64 %i.hx, 0                    ; 2 uses
  %i.hz = zext i1 %i.hy to i8
  %i.ia = or disjoint i8 %i.hw, %i.hz
  %i.ib = load i64, ptr %i.b, align 8             ; 3 uses
  %i.ic = load i64, ptr %i.cu, align 8
  %i.id = icmp eq i64 %i.ib, %i.ic
  br i1 %i.id, label %bb.y, label %._crit_edge.i8.i

._crit_edge.i8.i:                                 ; preds = %bb.x
  %.pre.i9.i = load ptr, ptr %3, align 8
  br label %_ZN5o3dgc6VectorIhE8PushBackERKh.exit14.i

bb.y:                                             ; preds = %bb.x
  %i.ie = shl i64 %i.ib, 1
  %spec.select.i10.i = tail call i64 @llvm.umax.i64(i64 %i.ie, i64 32) ; 2 uses
  store i64 %spec.select.i10.i, ptr %i.cu, align 8
  %i.if = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %spec.select.i10.i) #12 ; 3 uses
  %i.ig = load i64, ptr %i.b, align 8             ; 3 uses
  %.not.i11.i = icmp eq i64 %i.ig, 0
  br i1 %.not.i11.i, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ih = load ptr, ptr %3, align 8               ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.if, ptr align 1 %i.ih, i64 %i.ig, i1 false)
  %i.ii = icmp eq ptr %i.ih, null
  br i1 %i.ii, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZdaPv(ptr noundef nonnull %i.ih) #11
  %.pre6.pre.i12.i = load i64, ptr %i.b, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %.pre6.i13.i = phi i64 [ %i.ig, %bb.z ], [ %.pre6.pre.i12.i, %bb.aa ], [ 0, %bb.y ]
  store ptr %i.if, ptr %3, align 8
  br label %_ZN5o3dgc6VectorIhE8PushBackERKh.exit14.i

_ZN5o3dgc6VectorIhE8PushBackERKh.exit14.i:        ; preds = %bb.ab, %._crit_edge.i8.i
  %i.ij = phi i64 [ %i.ib, %._crit_edge.i8.i ], [ %.pre6.i13.i, %bb.ab ] ; 2 uses
  %i.ik = phi ptr [ %.pre.i9.i, %._crit_edge.i8.i ], [ %i.if, %bb.ab ]
  %i.il = add i64 %i.ij, 1
  store i64 %i.il, ptr %i.b, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.ij
  store i8 %i.ia, ptr %i.im, align 1
  br i1 %i.hy, label %bb.x, label %_ZN5o3dgc12BinaryStream14WriteUIntASCIIEm.exit, !llvm.loop !14

bb.ac:                                            ; preds = %bb.r
  %i.in = trunc nuw nsw i64 %i.hg to i8
  %i.io = load i64, ptr %i.b, align 8             ; 3 uses
  %i.ip = load i64, ptr %i.cu, align 8
  %i.iq = icmp eq i64 %i.io, %i.ip
  br i1 %i.iq, label %bb.ad, label %._crit_edge.i15.i

._crit_edge.i15.i:                                ; preds = %bb.ac
  %.pre.i16.i = load ptr, ptr %3, align 8
  br label %_ZN5o3dgc6VectorIhE8PushBackERKh.exit21.i

bb.ad:                                            ; preds = %bb.ac
  %i.ir = shl i64 %i.io, 1
  %spec.select.i17.i = tail call i64 @llvm.umax.i64(i64 %i.ir, i64 32) ; 2 uses
  store i64 %spec.select.i17.i, ptr %i.cu, align 8
  %i.is = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %spec.select.i17.i) #12 ; 3 uses
  %i.it = load i64, ptr %i.b, align 8             ; 3 uses
  %.not.i18.i = icmp eq i64 %i.it, 0
  br i1 %.not.i18.i, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.iu = load ptr, ptr %3, align 8               ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.is, ptr align 1 %i.iu, i64 %i.it, i1 false)
  %i.iv = icmp eq ptr %i.iu, null
  br i1 %i.iv, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @_ZdaPv(ptr noundef nonnull %i.iu) #11
  %.pre6.pre.i19.i = load i64, ptr %i.b, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %.pre6.i20.i = phi i64 [ %i.it, %bb.ae ], [ %.pre6.pre.i19.i, %bb.af ], [ 0, %bb.ad ]
  store ptr %i.is, ptr %3, align 8
  br label %_ZN5o3dgc6VectorIhE8PushBackERKh.exit21.i

_ZN5o3dgc6VectorIhE8PushBackERKh.exit21.i:        ; preds = %bb.ag, %._crit_edge.i15.i
  %i.iw = phi i64 [ %i.io, %._crit_edge.i15.i ], [ %.pre6.i20.i, %bb.ag ] ; 2 uses
  %i.ix = phi ptr [ %.pre.i16.i, %._crit_edge.i15.i ], [ %i.is, %bb.ag ]
  %i.iy = add i64 %i.iw, 1
  store i64 %i.iy, ptr %i.b, align 8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 %i.iw
  store i8 %i.in, ptr %i.iz, align 1
  br label %_ZN5o3dgc12BinaryStream14WriteUIntASCIIEm.exit

_ZN5o3dgc12BinaryStream14WriteUIntASCIIEm.exit:   ; preds = %_ZN5o3dgc6VectorIhE8PushBackERKh.exit14.i, %_ZN5o3dgc6VectorIhE8PushBackERKh.exit21.i
  %i.ja = add nuw i64 %.05788, 1                  ; 2 uses
  %exitcond98.not = icmp eq i64 %i.ja, %i.e
  br i1 %exitcond98.not, label %._crit_edge90, label %bb.r, !llvm.loop !15

bb.ah:                                            ; preds = %._crit_edge80.split.thread147, %._crit_edge80.split.thread, %._crit_edge80.split
end_hunk_0

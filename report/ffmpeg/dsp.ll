Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dsp?download=true
inline.NumInlined: 81
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 168
loop-unroll.NumRuntimeUnrolled: 139
loop-unroll.NumUnrolled: 307
begin_hunk_0_@apply_bdof_12:bb.a
  store <8 x i16> %i.bc, ptr %i.bd, align 2, !tbaa !34
  %index.next123 = add nuw i64 %index117, 8       ; 2 uses
  %i.be = icmp eq i64 %index.next123, %n.vec115
  br i1 %i.be, label %middle.block124, label %vector.body116, !llvm.loop !609

middle.block124:                                  ; preds = %vector.body116
  br i1 %cmp.n125, label %._crit_edge.i67, label %scalar.ph112.preheader

scalar.ph112.preheader:                           ; preds = %.preheader.i56, %middle.block124
  %indvars.iv.i61.ph = phi i64 [ 0, %.preheader.i56 ], [ %n.vec115, %middle.block124 ]
  %.02430.i62.ph = phi ptr [ %.02634.i58, %.preheader.i56 ], [ %i.aq, %middle.block124 ]
  br label %scalar.ph112

._crit_edge.i67:                                  ; preds = %scalar.ph112, %middle.block124
  %i.bf = getelementptr inbounds nuw i8, ptr %.02733.i59, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %.02832.i60, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %.02634.i58, i64 256
  %i.bi = add nuw nsw i32 %.02535.i57, 1          ; 2 uses
  %exitcond38.not.i68 = icmp eq i32 %i.bi, %5
  br i1 %exitcond38.not.i68, label %prof_grad_filter_12.exit69, label %.preheader.i56, !llvm.loop !607

scalar.ph112:                                     ; preds = %scalar.ph112.preheader, %scalar.ph112
  %indvars.iv.i61 = phi i64 [ %indvars.iv.next.i65, %scalar.ph112 ], [ %indvars.iv.i61.ph, %scalar.ph112.preheader ] ; 3 uses
  %.02430.i62 = phi ptr [ %i.bj, %scalar.ph112 ], [ %.02430.i62.ph, %scalar.ph112.preheader ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.02430.i62, i64 2 ; 2 uses
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !34
  %i.bl = ashr i16 %i.bk, 6
  %i.bm = getelementptr inbounds i8, ptr %.02430.i62, i64 -2
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !34
  %i.bo = ashr i16 %i.bn, 6
  %narrow.i63 = sub nsw i16 %i.bl, %i.bo
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %.02733.i59, i64 %indvars.iv.i61
  store i16 %narrow.i63, ptr %i.bp, align 2, !tbaa !34
  %i.bq = getelementptr inbounds nuw i8, ptr %.02430.i62, i64 256
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !34
  %i.bs = ashr i16 %i.br, 6
  %i.bt = getelementptr inbounds i8, ptr %.02430.i62, i64 -256
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !34
  %i.bv = ashr i16 %i.bu, 6
  %narrow29.i64 = sub nsw i16 %i.bs, %i.bv
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %.02832.i60, i64 %indvars.iv.i61
  store i16 %narrow29.i64, ptr %i.bw, align 2, !tbaa !34
  %indvars.iv.next.i65 = add nuw nsw i64 %indvars.iv.i61, 1 ; 2 uses
  %exitcond.not.i66 = icmp eq i64 %indvars.iv.next.i65, %wide.trip.count.i
  br i1 %exitcond.not.i66, label %._crit_edge.i67, label %scalar.ph112, !llvm.loop !610

prof_grad_filter_12.exit69:                       ; preds = %._crit_edge.i67, %bb.a
  br i1 %i.d, label %.preheader.lr.ph, label %._crit_edge86.split

.preheader.lr.ph:                                 ; preds = %prof_grad_filter_12.exit69
  %.idx = shl nuw nsw i64 %i.c, 3
  br i1 %i.e, label %.preheader.preheader, label %._crit_edge86.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.bx = zext nneg i32 %4 to i64
  %i.by = zext nneg i32 %4 to i64
  %i.bz = zext nneg i32 %5 to i64
  %i.ca = zext nneg i32 %5 to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv92 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next93, %._crit_edge ] ; 4 uses
  %.085 = phi ptr [ %0, %.preheader.preheader ], [ %i.ci, %._crit_edge ] ; 2 uses
  %i.cd = shl nuw nsw i64 %indvars.iv92, 7        ; 2 uses
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.cd
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.cd
  %i.cg = shl nuw nsw i64 %indvars.iv92, 4
  %.not45 = icmp eq i64 %indvars.iv92, 0
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 4 ; 3 uses
  %i.ch = icmp eq i64 %indvars.iv.next93, %i.bz
  br label %bb.b

._crit_edge86.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %prof_grad_filter_12.exit69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void

._crit_edge:                                      ; preds = %apply_bdof_min_block_12.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %.085, i64 %.idx
  %i.cj = icmp samesign ult i64 %indvars.iv.next93, %i.ca
  br i1 %i.cj, label %.preheader, label %._crit_edge86.split, !llvm.loop !611

bb.b:                                             ; preds = %.preheader, %apply_bdof_min_block_12.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %apply_bdof_min_block_12.exit ] ; 6 uses
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.ce, i64 %indvars.iv ; 2 uses
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %i.cf, i64 %indvars.iv ; 2 uses
  %i.cm = add nuw nsw i64 %indvars.iv, %i.cg      ; 4 uses
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.cm ; 7 uses
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %i.cm ; 7 uses
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.cm ; 7 uses
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %i.cm ; 7 uses
  %.not = icmp ne i64 %indvars.iv, 0              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 3 uses
  %i.cr = icmp eq i64 %indvars.iv.next, %i.bx
  %i.cs = sext i1 %.not to i32
  %i.ct = sext i1 %.not to i64                    ; 2 uses
  %i.cu = select i1 %i.cr, i32 3, i32 4           ; 2 uses
  %i.cv = zext nneg i32 %i.cu to i64              ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %.085, i64 %indvars.iv
  %i.cx = icmp sgt i32 %op.rdx141, 0
  br i1 %i.cx, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.d, %bb.b
  %.06116.i = phi i32 [ -1, %bb.b ], [ %i.hr, %bb.d ] ; 4 uses
  %.06215.i = phi i32 [ 0, %bb.b ], [ %op.rdx129, %bb.d ]
  %.06314.i = phi i32 [ 0, %bb.b ], [ %op.rdx132, %bb.d ]
  %.06513.i = phi i32 [ 0, %bb.b ], [ %op.rdx135, %bb.d ]
  %.06712.i = phi i32 [ 0, %bb.b ], [ %op.rdx138, %bb.d ]
  %.06911.i = phi i32 [ 0, %bb.b ], [ %op.rdx141, %bb.d ]
  %i.cy = icmp slt i32 %.06116.i, 0
  %i.cz = and i1 %.not45, %i.cy
  %i.da = zext i1 %i.cz to i32
  %i.db = add nsw i32 %.06116.i, %i.da
  %i.dc = icmp eq i32 %.06116.i, 4
  %i.dd = and i1 %i.ch, %i.dc
  %.neg.i = sext i1 %i.dd to i32
  %i.de = add nsw i32 %i.db, %.neg.i              ; 2 uses
  %i.df = shl nsw i32 %i.de, 7
  %i.dg = sext i32 %i.df to i64                   ; 2 uses
  %i.dh = getelementptr inbounds [2 x i8], ptr %i.ck, i64 %i.dg ; 3 uses
  %i.di = getelementptr inbounds [2 x i8], ptr %i.cl, i64 %i.dg ; 3 uses
  %i.dj = shl nsw i32 %i.de, 4                    ; 3 uses
  %i.dk = getelementptr inbounds [2 x i8], ptr %i.dh, i64 %i.ct
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !34
  %i.dm = ashr i16 %i.dl, 4
  %i.dn = getelementptr inbounds [2 x i8], ptr %i.di, i64 %i.ct
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !34
  %i.dp = ashr i16 %i.do, 4
  %narrow.i70 = sub nsw i16 %i.dm, %i.dp
  %i.dq = sext i16 %narrow.i70 to i32             ; 3 uses
  %i.dr = add nsw i32 %i.dj, %i.cs
  %i.ds = sext i32 %i.dr to i64                   ; 4 uses
  %i.dt = getelementptr inbounds [2 x i8], ptr %i.cn, i64 %i.ds
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !34
  %i.dv = sext i16 %i.du to i32
  %i.dw = getelementptr inbounds [2 x i8], ptr %i.co, i64 %i.ds
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !34
  %i.dy = sext i16 %i.dx to i32
  %i.dz = add nsw i32 %i.dy, %i.dv
  %i.ea = ashr i32 %i.dz, 1                       ; 3 uses
  %i.eb = getelementptr inbounds [2 x i8], ptr %i.cp, i64 %i.ds
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !34
  %i.ed = sext i16 %i.ec to i32
  %i.ee = getelementptr inbounds [2 x i8], ptr %i.cq, i64 %i.ds
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !34
  %i.eg = sext i16 %i.ef to i32
  %i.eh = add nsw i32 %i.eg, %i.ed
  %i.ei = ashr i32 %i.eh, 1                       ; 3 uses
  %i.ej = icmp slt i32 %i.ei, 0
  %i.ek = icmp slt i32 %i.ea, 0
  %.not.i = icmp eq i32 %i.ea, 0
  %i.el = sub nsw i32 0, %i.dq                    ; 2 uses
  %i.em = select i1 %.not.i, i32 0, i32 %i.el
  %.neg76.i = select i1 %i.ek, i32 %i.dq, i32 %i.em
  %.not79.i = icmp eq i32 %i.ei, 0
  %i.en = select i1 %.not79.i, i32 0, i32 %i.el
  %.neg78.i = select i1 %i.ej, i32 %i.dq, i32 %i.en
  %i.eo = sext i32 %i.dj to i64                   ; 4 uses
  %i.ep = getelementptr inbounds [2 x i8], ptr %i.cn, i64 %i.eo
  %i.eq = getelementptr inbounds [2 x i8], ptr %i.co, i64 %i.eo
  %i.er = getelementptr inbounds [2 x i8], ptr %i.cp, i64 %i.eo
  %i.es = getelementptr inbounds [2 x i8], ptr %i.cq, i64 %i.eo
  %i.et = load <4 x i16>, ptr %i.er, align 8, !tbaa !34
  %i.eu = sext <4 x i16> %i.et to <4 x i32>
  %i.ev = load <4 x i16>, ptr %i.es, align 8, !tbaa !34
  %i.ew = sext <4 x i16> %i.ev to <4 x i32>
  %i.ex = add nsw <4 x i32> %i.ew, %i.eu
  %i.ey = ashr <4 x i32> %i.ex, splat (i32 1)     ; 4 uses
  %i.ez = load <4 x i16>, ptr %i.dh, align 2, !tbaa !34
  %i.fa = ashr <4 x i16> %i.ez, splat (i16 4)
  %i.fb = load <4 x i16>, ptr %i.di, align 2, !tbaa !34
  %i.fc = ashr <4 x i16> %i.fb, splat (i16 4)
  %i.fd = sub nsw <4 x i16> %i.fa, %i.fc          ; 3 uses
  %i.fe = sub nsw <4 x i16> zeroinitializer, %i.fd ; 2 uses
  %i.ff = icmp slt <4 x i32> %i.ey, zeroinitializer
  %i.fg = icmp eq <4 x i32> %i.ey, zeroinitializer
  %i.fh = select <4 x i1> %i.fg, <4 x i16> zeroinitializer, <4 x i16> %i.fe
  %i.fi = select <4 x i1> %i.ff, <4 x i16> %i.fd, <4 x i16> %i.fh
  %i.fj = insertelement <4 x i32> %i.ey, i32 %i.ei, i64 3 ; 2 uses
  %i.fk = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.fj, i1 true)
  %i.fl = extractelement <4 x i32> %i.ey, i64 3   ; 2 uses
  %i.fm = tail call i32 @llvm.abs.i32(i32 %i.fl, i1 true)
  %i.fn = tail call i32 @llvm.scmp.i32.i32(i32 %i.fl, i32 0)
  %i.fo = load <4 x i16>, ptr %i.ep, align 8, !tbaa !34
  %i.fp = sext <4 x i16> %i.fo to <4 x i32>
  %i.fq = load <4 x i16>, ptr %i.eq, align 8, !tbaa !34
  %i.fr = sext <4 x i16> %i.fq to <4 x i32>
  %i.fs = add nsw <4 x i32> %i.fr, %i.fp
  %i.ft = ashr <4 x i32> %i.fs, splat (i32 1)     ; 4 uses
  %i.fu = insertelement <4 x i32> %i.ft, i32 %i.ea, i64 3 ; 2 uses
  %i.fv = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.fu, i1 true)
  %i.fw = extractelement <4 x i32> %i.ft, i64 3   ; 2 uses
  %i.fx = tail call i32 @llvm.abs.i32(i32 %i.fw, i1 true)
  %i.fy = icmp slt <4 x i32> %i.ft, zeroinitializer
  %i.fz = icmp eq <4 x i32> %i.ft, zeroinitializer
  %6 = sext <4 x i16> %i.fe to <4 x i32>
  %7 = select <4 x i1> %i.fz, <4 x i32> zeroinitializer, <4 x i32> %6
  %8 = sext <4 x i16> %i.fd to <4 x i32>
  %9 = select <4 x i1> %i.fy, <4 x i32> %8, <4 x i32> %7
  %i.ga = tail call <4 x i32> @llvm.scmp.v4i32.v4i32(<4 x i32> %i.fj, <4 x i32> zeroinitializer)
  %i.gb = mul nsw <4 x i32> %i.ga, %i.fu
  %i.gc = mul nsw i32 %i.fn, %i.fw
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %i.cv
  %i.ge = load i16, ptr %i.gd, align 2, !tbaa !34
  %i.gf = ashr i16 %i.ge, 4
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %i.cv
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !34
  %i.gi = ashr i16 %i.gh, 4
  %narrow.5.i = sub nsw i16 %i.gf, %i.gi
  %i.gj = sext i16 %narrow.5.i to i32             ; 3 uses
  %i.gk = or disjoint i32 %i.dj, %i.cu
  %i.gl = sext i32 %i.gk to i64                   ; 4 uses
  %i.gm = getelementptr inbounds [2 x i8], ptr %i.cn, i64 %i.gl
  %i.gn = load i16, ptr %i.gm, align 2, !tbaa !34
  %i.go = sext i16 %i.gn to i32
  %i.gp = getelementptr inbounds [2 x i8], ptr %i.co, i64 %i.gl
  %i.gq = load i16, ptr %i.gp, align 2, !tbaa !34
  %i.gr = sext i16 %i.gq to i32
  %i.gs = add nsw i32 %i.gr, %i.go
  %i.gt = ashr i32 %i.gs, 1                       ; 4 uses
  %i.gu = getelementptr inbounds [2 x i8], ptr %i.cp, i64 %i.gl
  %i.gv = load i16, ptr %i.gu, align 2, !tbaa !34
  %i.gw = sext i16 %i.gv to i32
  %i.gx = getelementptr inbounds [2 x i8], ptr %i.cq, i64 %i.gl
  %i.gy = load i16, ptr %i.gx, align 2, !tbaa !34
  %i.gz = sext i16 %i.gy to i32
  %i.ha = add nsw i32 %i.gz, %i.gw
  %i.hb = ashr i32 %i.ha, 1                       ; 4 uses
  %i.hc = tail call i32 @llvm.abs.i32(i32 %i.gt, i1 true)
  %i.hd = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.fv)
  %op.rdx139 = add i32 %i.hd, %i.fx
  %op.rdx140 = add i32 %i.hc, %.06911.i
  %op.rdx141 = add i32 %op.rdx139, %op.rdx140     ; 5 uses
  %i.he = tail call i32 @llvm.abs.i32(i32 %i.hb, i1 true)
  %i.hf = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.fk)
  %op.rdx136 = add i32 %i.hf, %i.fm
  %op.rdx137 = add i32 %i.he, %.06712.i
  %op.rdx138 = add i32 %op.rdx136, %op.rdx137     ; 5 uses
  %i.hg = icmp slt i32 %i.hb, 0
  %i.hh = tail call i32 @llvm.scmp.i32.i32(i32 %i.hb, i32 0)
  %i.hi = mul nsw i32 %i.hh, %i.gt
  %i.hj = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.gb)
  %op.rdx133 = add i32 %i.hj, %i.gc
  %op.rdx134 = add i32 %i.hi, %.06513.i
  %op.rdx135 = add i32 %op.rdx133, %op.rdx134     ; 2 uses
  %i.hk = icmp slt i32 %i.gt, 0
  %.not.5.i = icmp eq i32 %i.gt, 0
  %i.hl = sub nsw i32 0, %i.gj                    ; 2 uses
  %i.hm = select i1 %.not.5.i, i32 0, i32 %i.hl
  %.neg76.5.i = select i1 %i.hk, i32 %i.gj, i32 %i.hm
  %i.hn = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %9)
  %op.rdx130 = add i32 %i.hn, %.neg76.i
  %op.rdx131 = add i32 %.neg76.5.i, %.06314.i
  %op.rdx132 = add i32 %op.rdx130, %op.rdx131     ; 2 uses
  %.not79.5.i = icmp eq i32 %i.hb, 0
  %i.ho = select i1 %.not79.5.i, i32 0, i32 %i.hl
  %.neg78.5.i = select i1 %i.hg, i32 %i.gj, i32 %i.ho
  %i.hp = sext <4 x i16> %i.fi to <4 x i32>
  %i.hq = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.hp)
  %op.rdx = add i32 %i.hq, %.neg78.i
  %op.rdx128 = add i32 %.neg78.5.i, %.06215.i
  %op.rdx129 = add i32 %op.rdx, %op.rdx128        ; 2 uses
  %i.hr = add nsw i32 %.06116.i, 1                ; 2 uses
  %exitcond.not.i71 = icmp eq i32 %i.hr, 5
  br i1 %exitcond.not.i71, label %bb.c, label %bb.d, !llvm.loop !612

bb.e:                                             ; preds = %bb.c
  %i.hs = shl nsw i32 %op.rdx132, 2
  %.not.i82.i = icmp samesign ult i32 %op.rdx141, 65536 ; 2 uses
  %i.ht = lshr i32 %op.rdx141, 16
  %spec.select.i83.i = select i1 %.not.i82.i, i32 %op.rdx141, i32 %i.ht ; 3 uses
  %spec.select12.i84.i = select i1 %.not.i82.i, i32 0, i32 16 ; 2 uses
  %.not11.i85.i = icmp samesign ult i32 %spec.select.i83.i, 256 ; 2 uses
  %i.hu = lshr i32 %spec.select.i83.i, 8
  %i.hv = or disjoint i32 %spec.select12.i84.i, 8
  %.110.i86.i = select i1 %.not11.i85.i, i32 %spec.select.i83.i, i32 %i.hu
  %.1.i87.i = select i1 %.not11.i85.i, i32 %spec.select12.i84.i, i32 %i.hv
  %i.hw = zext nneg i32 %.110.i86.i to i64
  %i.hx = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.hw
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !40
  %i.hz = zext i8 %i.hy to i32
  %i.ia = add nuw nsw i32 %.1.i87.i, %i.hz
  %i.ib = ashr i32 %i.hs, %i.ia
  %i.ic = tail call i32 @llvm.smax.i32(i32 %i.ib, i32 -15)
  %.0.i81.i = tail call i32 @llvm.smin.i32(i32 %i.ic, i32 15)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.id = phi i32 [ %.0.i81.i, %bb.e ], [ 0, %bb.c ] ; 5 uses
  %i.ie = icmp sgt i32 %op.rdx138, 0
  br i1 %i.ie, label %bb.g, label %derive_bdof_vx_vy_12.exit

bb.g:                                             ; preds = %bb.f
  %i.if = shl nsw i32 %op.rdx129, 2
  %i.ig = mul nsw i32 %i.id, %op.rdx135
  %i.ih = ashr i32 %i.ig, 1
  %i.ii = sub nsw i32 %i.if, %i.ih
  %.not.i.i = icmp samesign ult i32 %op.rdx138, 65536 ; 2 uses
  %i.ij = lshr i32 %op.rdx138, 16
  %spec.select.i.i = select i1 %.not.i.i, i32 %op.rdx138, i32 %i.ij ; 3 uses
  %spec.select12.i.i = select i1 %.not.i.i, i32 0, i32 16 ; 2 uses
  %.not11.i.i = icmp samesign ult i32 %spec.select.i.i, 256 ; 2 uses
  %i.ik = lshr i32 %spec.select.i.i, 8
  %i.il = or disjoint i32 %spec.select12.i.i, 8
  %.110.i.i = select i1 %.not11.i.i, i32 %spec.select.i.i, i32 %i.ik
  %.1.i.i = select i1 %.not11.i.i, i32 %spec.select12.i.i, i32 %i.il
  %i.im = zext nneg i32 %.110.i.i to i64
  %i.in = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.im
  %i.io = load i8, ptr %i.in, align 1, !tbaa !40
  %i.ip = zext i8 %i.io to i32
  %i.iq = add nuw nsw i32 %.1.i.i, %i.ip
  %i.ir = ashr i32 %i.ii, %i.iq
  %i.is = tail call i32 @llvm.smax.i32(i32 %i.ir, i32 -15)
  %.0.i.i = tail call i32 @llvm.smin.i32(i32 %i.is, i32 15)
  br label %derive_bdof_vx_vy_12.exit

derive_bdof_vx_vy_12.exit:                        ; preds = %bb.f, %bb.g
  %i.it = phi i32 [ %.0.i.i, %bb.g ], [ 0, %bb.f ] ; 4 uses
  br label %.preheader.i72

.preheader.i72:                                   ; preds = %.preheader.i72, %derive_bdof_vx_vy_12.exit
  %indvars.iv.i73 = phi i64 [ 0, %derive_bdof_vx_vy_12.exit ], [ %indvars.iv.next.i74, %.preheader.i72 ] ; 2 uses
  %.09.i = phi ptr [ %i.cw, %derive_bdof_vx_vy_12.exit ], [ %i.np, %.preheader.i72 ] ; 5 uses
  %.0268.i = phi ptr [ %i.ck, %derive_bdof_vx_vy_12.exit ], [ %i.nq, %.preheader.i72 ] ; 5 uses
  %.0296.i = phi ptr [ %i.cl, %derive_bdof_vx_vy_12.exit ], [ %i.nr, %.preheader.i72 ] ; 5 uses
  %i.iu = shl nuw nsw i64 %indvars.iv.i73, 4      ; 7 uses
  %i.iv = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %i.iu
  %i.iw = load i16, ptr %i.iv, align 8, !tbaa !34
  %i.ix = sext i16 %i.iw to i32
  %i.iy = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.iu
  %i.iz = load i16, ptr %i.iy, align 8, !tbaa !34
  %i.ja = sext i16 %i.iz to i32
  %i.jb = sub nsw i32 %i.ix, %i.ja
  %i.jc = mul nsw i32 %i.jb, %i.id
  %i.jd = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %i.iu
  %i.je = load i16, ptr %i.jd, align 8, !tbaa !34
  %i.jf = sext i16 %i.je to i32
  %i.jg = getelementptr inbounds nuw [2 x i8], ptr %i.cq, i64 %i.iu
  %i.jh = load i16, ptr %i.jg, align 8, !tbaa !34
  %i.ji = sext i16 %i.jh to i32
  %i.jj = sub nsw i32 %i.jf, %i.ji
  %i.jk = mul nsw i32 %i.jj, %i.it
  %i.jl = load i16, ptr %.0268.i, align 2, !tbaa !34
  %i.jm = sext i16 %i.jl to i32
  %i.jn = load i16, ptr %.0296.i, align 2, !tbaa !34
  %i.jo = sext i16 %i.jn to i32
  %i.jp = add nsw i32 %i.jc, 4
  %i.jq = add nsw i32 %i.jp, %i.jm
  %i.jr = add nsw i32 %i.jq, %i.jo
  %i.js = add nsw i32 %i.jr, %i.jk
  %i.jt = ashr i32 %i.js, 3
  %i.ju = tail call i32 @llvm.smax.i32(i32 %i.jt, i32 0)
  %i.jv = tail call i32 @llvm.umin.i32(i32 %i.ju, i32 4095)
  %i.jw = trunc nuw nsw i32 %i.jv to i16
  store i16 %i.jw, ptr %.09.i, align 2, !tbaa !34
  %i.jx = or disjoint i64 %i.iu, 1                ; 4 uses
  %i.jy = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %i.jx
  %i.jz = load i16, ptr %i.jy, align 2, !tbaa !34
  %i.ka = sext i16 %i.jz to i32
  %i.kb = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.jx
  %i.kc = load i16, ptr %i.kb, align 2, !tbaa !34
  %i.kd = sext i16 %i.kc to i32
  %i.ke = sub nsw i32 %i.ka, %i.kd
  %i.kf = mul nsw i32 %i.ke, %i.id
  %i.kg = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %i.jx
  %i.kh = load i16, ptr %i.kg, align 2, !tbaa !34
  %i.ki = sext i16 %i.kh to i32
  %i.kj = getelementptr inbounds nuw [2 x i8], ptr %i.cq, i64 %i.jx
  %i.kk = load i16, ptr %i.kj, align 2, !tbaa !34
  %i.kl = sext i16 %i.kk to i32
  %i.km = sub nsw i32 %i.ki, %i.kl
  %i.kn = mul nsw i32 %i.km, %i.it
  %i.ko = getelementptr inbounds nuw i8, ptr %.0268.i, i64 2
  %i.kp = load i16, ptr %i.ko, align 2, !tbaa !34
  %i.kq = sext i16 %i.kp to i32
  %i.kr = getelementptr inbounds nuw i8, ptr %.0296.i, i64 2
  %i.ks = load i16, ptr %i.kr, align 2, !tbaa !34
  %i.kt = sext i16 %i.ks to i32
  %i.ku = add nsw i32 %i.kf, 4
  %i.kv = add nsw i32 %i.ku, %i.kq
  %i.kw = add nsw i32 %i.kv, %i.kt
  %i.kx = add nsw i32 %i.kw, %i.kn
  %i.ky = ashr i32 %i.kx, 3
  %i.kz = tail call i32 @llvm.smax.i32(i32 %i.ky, i32 0)
  %i.la = tail call i32 @llvm.umin.i32(i32 %i.kz, i32 4095)
  %i.lb = trunc nuw nsw i32 %i.la to i16
  %i.lc = getelementptr inbounds nuw i8, ptr %.09.i, i64 2
  store i16 %i.lb, ptr %i.lc, align 2, !tbaa !34
  %i.ld = or disjoint i64 %i.iu, 2                ; 4 uses
  %i.le = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %i.ld
  %i.lf = load i16, ptr %i.le, align 4, !tbaa !34
  %i.lg = sext i16 %i.lf to i32
  %i.lh = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.ld
  %i.li = load i16, ptr %i.lh, align 4, !tbaa !34
  %i.lj = sext i16 %i.li to i32
  %i.lk = sub nsw i32 %i.lg, %i.lj
  %i.ll = mul nsw i32 %i.lk, %i.id
  %i.lm = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %i.ld
  %i.ln = load i16, ptr %i.lm, align 4, !tbaa !34
  %i.lo = sext i16 %i.ln to i32
  %i.lp = getelementptr inbounds nuw [2 x i8], ptr %i.cq, i64 %i.ld
  %i.lq = load i16, ptr %i.lp, align 4, !tbaa !34
  %i.lr = sext i16 %i.lq to i32
  %i.ls = sub nsw i32 %i.lo, %i.lr
  %i.lt = mul nsw i32 %i.ls, %i.it
  %i.lu = getelementptr inbounds nuw i8, ptr %.0268.i, i64 4
  %i.lv = load i16, ptr %i.lu, align 2, !tbaa !34
  %i.lw = sext i16 %i.lv to i32
  %i.lx = getelementptr inbounds nuw i8, ptr %.0296.i, i64 4
  %i.ly = load i16, ptr %i.lx, align 2, !tbaa !34
  %i.lz = sext i16 %i.ly to i32
  %i.ma = add nsw i32 %i.ll, 4
  %i.mb = add nsw i32 %i.ma, %i.lw
  %i.mc = add nsw i32 %i.mb, %i.lz
  %i.md = add nsw i32 %i.mc, %i.lt
  %i.me = ashr i32 %i.md, 3
  %i.mf = tail call i32 @llvm.smax.i32(i32 %i.me, i32 0)
  %i.mg = tail call i32 @llvm.umin.i32(i32 %i.mf, i32 4095)
  %i.mh = trunc nuw nsw i32 %i.mg to i16
  %i.mi = getelementptr inbounds nuw i8, ptr %.09.i, i64 4
  store i16 %i.mh, ptr %i.mi, align 2, !tbaa !34
  %i.mj = or disjoint i64 %i.iu, 3                ; 4 uses
  %i.mk = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %i.mj
  %i.ml = load i16, ptr %i.mk, align 2, !tbaa !34
  %i.mm = sext i16 %i.ml to i32
  %i.mn = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.mj
  %i.mo = load i16, ptr %i.mn, align 2, !tbaa !34
  %i.mp = sext i16 %i.mo to i32
  %i.mq = sub nsw i32 %i.mm, %i.mp
  %i.mr = mul nsw i32 %i.mq, %i.id
  %i.ms = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %i.mj
  %i.mt = load i16, ptr %i.ms, align 2, !tbaa !34
  %i.mu = sext i16 %i.mt to i32
  %i.mv = getelementptr inbounds nuw [2 x i8], ptr %i.cq, i64 %i.mj
  %i.mw = load i16, ptr %i.mv, align 2, !tbaa !34
  %i.mx = sext i16 %i.mw to i32
  %i.my = sub nsw i32 %i.mu, %i.mx
  %i.mz = mul nsw i32 %i.my, %i.it
  %i.na = getelementptr inbounds nuw i8, ptr %.0268.i, i64 6
  %i.nb = load i16, ptr %i.na, align 2, !tbaa !34
  %i.nc = sext i16 %i.nb to i32
  %i.nd = getelementptr inbounds nuw i8, ptr %.0296.i, i64 6
  %i.ne = load i16, ptr %i.nd, align 2, !tbaa !34
  %i.nf = sext i16 %i.ne to i32
  %i.ng = add nsw i32 %i.mr, 4
  %i.nh = add nsw i32 %i.ng, %i.nc
  %i.ni = add nsw i32 %i.nh, %i.nf
  %i.nj = add nsw i32 %i.ni, %i.mz
  %i.nk = ashr i32 %i.nj, 3
  %i.nl = tail call i32 @llvm.smax.i32(i32 %i.nk, i32 0)
  %i.nm = tail call i32 @llvm.umin.i32(i32 %i.nl, i32 4095)
end_hunk_0
begin_hunk_1_@apply_bdof_10:bb.a
  store <8 x i16> %i.bc, ptr %i.bd, align 2, !tbaa !34
  %index.next123 = add nuw i64 %index117, 8       ; 2 uses
  %i.be = icmp eq i64 %index.next123, %n.vec115
  br i1 %i.be, label %middle.block124, label %vector.body116, !llvm.loop !1289

middle.block124:                                  ; preds = %vector.body116
  br i1 %cmp.n125, label %._crit_edge.i67, label %scalar.ph112.preheader

scalar.ph112.preheader:                           ; preds = %.preheader.i56, %middle.block124
  %indvars.iv.i61.ph = phi i64 [ 0, %.preheader.i56 ], [ %n.vec115, %middle.block124 ]
  %.02430.i62.ph = phi ptr [ %.02634.i58, %.preheader.i56 ], [ %i.aq, %middle.block124 ]
  br label %scalar.ph112

._crit_edge.i67:                                  ; preds = %scalar.ph112, %middle.block124
  %i.bf = getelementptr inbounds nuw i8, ptr %.02733.i59, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %.02832.i60, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %.02634.i58, i64 256
  %i.bi = add nuw nsw i32 %.02535.i57, 1          ; 2 uses
  %exitcond38.not.i68 = icmp eq i32 %i.bi, %5
  br i1 %exitcond38.not.i68, label %prof_grad_filter_10.exit69, label %.preheader.i56, !llvm.loop !1287

scalar.ph112:                                     ; preds = %scalar.ph112.preheader, %scalar.ph112
  %indvars.iv.i61 = phi i64 [ %indvars.iv.next.i65, %scalar.ph112 ], [ %indvars.iv.i61.ph, %scalar.ph112.preheader ] ; 3 uses
  %.02430.i62 = phi ptr [ %i.bj, %scalar.ph112 ], [ %.02430.i62.ph, %scalar.ph112.preheader ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.02430.i62, i64 2 ; 2 uses
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !34
  %i.bl = ashr i16 %i.bk, 6
  %i.bm = getelementptr inbounds i8, ptr %.02430.i62, i64 -2
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !34
  %i.bo = ashr i16 %i.bn, 6
  %narrow.i63 = sub nsw i16 %i.bl, %i.bo
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %.02733.i59, i64 %indvars.iv.i61
  store i16 %narrow.i63, ptr %i.bp, align 2, !tbaa !34
  %i.bq = getelementptr inbounds nuw i8, ptr %.02430.i62, i64 256
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !34
  %i.bs = ashr i16 %i.br, 6
  %i.bt = getelementptr inbounds i8, ptr %.02430.i62, i64 -256
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !34
  %i.bv = ashr i16 %i.bu, 6
  %narrow29.i64 = sub nsw i16 %i.bs, %i.bv
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %.02832.i60, i64 %indvars.iv.i61
  store i16 %narrow29.i64, ptr %i.bw, align 2, !tbaa !34
  %indvars.iv.next.i65 = add nuw nsw i64 %indvars.iv.i61, 1 ; 2 uses
  %exitcond.not.i66 = icmp eq i64 %indvars.iv.next.i65, %wide.trip.count.i
  br i1 %exitcond.not.i66, label %._crit_edge.i67, label %scalar.ph112, !llvm.loop !1290

prof_grad_filter_10.exit69:                       ; preds = %._crit_edge.i67, %bb.a
  br i1 %i.d, label %.preheader.lr.ph, label %._crit_edge86.split

.preheader.lr.ph:                                 ; preds = %prof_grad_filter_10.exit69
  %.idx = shl nuw nsw i64 %i.c, 3
  br i1 %i.e, label %.preheader.preheader, label %._crit_edge86.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.bx = zext nneg i32 %4 to i64
  %i.by = zext nneg i32 %4 to i64
  %i.bz = zext nneg i32 %5 to i64
  %i.ca = zext nneg i32 %5 to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv92 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next93, %._crit_edge ] ; 4 uses
  %.085 = phi ptr [ %0, %.preheader.preheader ], [ %i.ci, %._crit_edge ] ; 2 uses
  %i.cd = shl nuw nsw i64 %indvars.iv92, 7        ; 2 uses
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.cd
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.cd
  %i.cg = shl nuw nsw i64 %indvars.iv92, 4
  %.not45 = icmp eq i64 %indvars.iv92, 0
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 4 ; 3 uses
  %i.ch = icmp eq i64 %indvars.iv.next93, %i.bz
  br label %bb.b

._crit_edge86.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %prof_grad_filter_10.exit69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void

._crit_edge:                                      ; preds = %apply_bdof_min_block_10.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %.085, i64 %.idx
  %i.cj = icmp samesign ult i64 %indvars.iv.next93, %i.ca
  br i1 %i.cj, label %.preheader, label %._crit_edge86.split, !llvm.loop !1291

bb.b:                                             ; preds = %.preheader, %apply_bdof_min_block_10.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %apply_bdof_min_block_10.exit ] ; 6 uses
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.ce, i64 %indvars.iv ; 2 uses
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %i.cf, i64 %indvars.iv ; 2 uses
  %i.cm = add nuw nsw i64 %indvars.iv, %i.cg      ; 4 uses
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.cm ; 7 uses
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %i.cm ; 7 uses
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.cm ; 7 uses
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %i.cm ; 7 uses
  %.not = icmp ne i64 %indvars.iv, 0              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 3 uses
  %i.cr = icmp eq i64 %indvars.iv.next, %i.bx
  %i.cs = sext i1 %.not to i32
  %i.ct = sext i1 %.not to i64                    ; 2 uses
  %i.cu = select i1 %i.cr, i32 3, i32 4           ; 2 uses
  %i.cv = zext nneg i32 %i.cu to i64              ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %.085, i64 %indvars.iv
  %i.cx = icmp sgt i32 %op.rdx141, 0
  br i1 %i.cx, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.d, %bb.b
  %.06116.i = phi i32 [ -1, %bb.b ], [ %i.hr, %bb.d ] ; 4 uses
  %.06215.i = phi i32 [ 0, %bb.b ], [ %op.rdx129, %bb.d ]
  %.06314.i = phi i32 [ 0, %bb.b ], [ %op.rdx132, %bb.d ]
  %.06513.i = phi i32 [ 0, %bb.b ], [ %op.rdx135, %bb.d ]
  %.06712.i = phi i32 [ 0, %bb.b ], [ %op.rdx138, %bb.d ]
  %.06911.i = phi i32 [ 0, %bb.b ], [ %op.rdx141, %bb.d ]
  %i.cy = icmp slt i32 %.06116.i, 0
  %i.cz = and i1 %.not45, %i.cy
  %i.da = zext i1 %i.cz to i32
  %i.db = add nsw i32 %.06116.i, %i.da
  %i.dc = icmp eq i32 %.06116.i, 4
  %i.dd = and i1 %i.ch, %i.dc
  %.neg.i = sext i1 %i.dd to i32
  %i.de = add nsw i32 %i.db, %.neg.i              ; 2 uses
  %i.df = shl nsw i32 %i.de, 7
  %i.dg = sext i32 %i.df to i64                   ; 2 uses
  %i.dh = getelementptr inbounds [2 x i8], ptr %i.ck, i64 %i.dg ; 3 uses
  %i.di = getelementptr inbounds [2 x i8], ptr %i.cl, i64 %i.dg ; 3 uses
  %i.dj = shl nsw i32 %i.de, 4                    ; 3 uses
  %i.dk = getelementptr inbounds [2 x i8], ptr %i.dh, i64 %i.ct
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !34
  %i.dm = ashr i16 %i.dl, 4
  %i.dn = getelementptr inbounds [2 x i8], ptr %i.di, i64 %i.ct
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !34
  %i.dp = ashr i16 %i.do, 4
  %narrow.i70 = sub nsw i16 %i.dm, %i.dp
  %i.dq = sext i16 %narrow.i70 to i32             ; 3 uses
  %i.dr = add nsw i32 %i.dj, %i.cs
  %i.ds = sext i32 %i.dr to i64                   ; 4 uses
  %i.dt = getelementptr inbounds [2 x i8], ptr %i.cn, i64 %i.ds
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !34
  %i.dv = sext i16 %i.du to i32
  %i.dw = getelementptr inbounds [2 x i8], ptr %i.co, i64 %i.ds
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !34
  %i.dy = sext i16 %i.dx to i32
  %i.dz = add nsw i32 %i.dy, %i.dv
  %i.ea = ashr i32 %i.dz, 1                       ; 3 uses
  %i.eb = getelementptr inbounds [2 x i8], ptr %i.cp, i64 %i.ds
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !34
  %i.ed = sext i16 %i.ec to i32
  %i.ee = getelementptr inbounds [2 x i8], ptr %i.cq, i64 %i.ds
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !34
  %i.eg = sext i16 %i.ef to i32
  %i.eh = add nsw i32 %i.eg, %i.ed
  %i.ei = ashr i32 %i.eh, 1                       ; 3 uses
  %i.ej = icmp slt i32 %i.ei, 0
  %i.ek = icmp slt i32 %i.ea, 0
  %.not.i = icmp eq i32 %i.ea, 0
  %i.el = sub nsw i32 0, %i.dq                    ; 2 uses
  %i.em = select i1 %.not.i, i32 0, i32 %i.el
  %.neg76.i = select i1 %i.ek, i32 %i.dq, i32 %i.em
  %.not79.i = icmp eq i32 %i.ei, 0
  %i.en = select i1 %.not79.i, i32 0, i32 %i.el
  %.neg78.i = select i1 %i.ej, i32 %i.dq, i32 %i.en
  %i.eo = sext i32 %i.dj to i64                   ; 4 uses
  %i.ep = getelementptr inbounds [2 x i8], ptr %i.cn, i64 %i.eo
  %i.eq = getelementptr inbounds [2 x i8], ptr %i.co, i64 %i.eo
  %i.er = getelementptr inbounds [2 x i8], ptr %i.cp, i64 %i.eo
  %i.es = getelementptr inbounds [2 x i8], ptr %i.cq, i64 %i.eo
  %i.et = load <4 x i16>, ptr %i.er, align 8, !tbaa !34
  %i.eu = sext <4 x i16> %i.et to <4 x i32>
  %i.ev = load <4 x i16>, ptr %i.es, align 8, !tbaa !34
  %i.ew = sext <4 x i16> %i.ev to <4 x i32>
  %i.ex = add nsw <4 x i32> %i.ew, %i.eu
  %i.ey = ashr <4 x i32> %i.ex, splat (i32 1)     ; 4 uses
  %i.ez = load <4 x i16>, ptr %i.dh, align 2, !tbaa !34
  %i.fa = ashr <4 x i16> %i.ez, splat (i16 4)
  %i.fb = load <4 x i16>, ptr %i.di, align 2, !tbaa !34
  %i.fc = ashr <4 x i16> %i.fb, splat (i16 4)
  %i.fd = sub nsw <4 x i16> %i.fa, %i.fc          ; 3 uses
  %i.fe = sub nsw <4 x i16> zeroinitializer, %i.fd ; 2 uses
  %i.ff = icmp slt <4 x i32> %i.ey, zeroinitializer
  %i.fg = icmp eq <4 x i32> %i.ey, zeroinitializer
  %i.fh = select <4 x i1> %i.fg, <4 x i16> zeroinitializer, <4 x i16> %i.fe
  %i.fi = select <4 x i1> %i.ff, <4 x i16> %i.fd, <4 x i16> %i.fh
  %i.fj = insertelement <4 x i32> %i.ey, i32 %i.ei, i64 3 ; 2 uses
  %i.fk = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.fj, i1 true)
  %i.fl = extractelement <4 x i32> %i.ey, i64 3   ; 2 uses
  %i.fm = tail call i32 @llvm.abs.i32(i32 %i.fl, i1 true)
  %i.fn = tail call i32 @llvm.scmp.i32.i32(i32 %i.fl, i32 0)
  %i.fo = load <4 x i16>, ptr %i.ep, align 8, !tbaa !34
  %i.fp = sext <4 x i16> %i.fo to <4 x i32>
  %i.fq = load <4 x i16>, ptr %i.eq, align 8, !tbaa !34
  %i.fr = sext <4 x i16> %i.fq to <4 x i32>
  %i.fs = add nsw <4 x i32> %i.fr, %i.fp
  %i.ft = ashr <4 x i32> %i.fs, splat (i32 1)     ; 4 uses
  %i.fu = insertelement <4 x i32> %i.ft, i32 %i.ea, i64 3 ; 2 uses
  %i.fv = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.fu, i1 true)
  %i.fw = extractelement <4 x i32> %i.ft, i64 3   ; 2 uses
  %i.fx = tail call i32 @llvm.abs.i32(i32 %i.fw, i1 true)
  %i.fy = icmp slt <4 x i32> %i.ft, zeroinitializer
  %i.fz = icmp eq <4 x i32> %i.ft, zeroinitializer
  %6 = sext <4 x i16> %i.fe to <4 x i32>
  %7 = select <4 x i1> %i.fz, <4 x i32> zeroinitializer, <4 x i32> %6
  %8 = sext <4 x i16> %i.fd to <4 x i32>
  %9 = select <4 x i1> %i.fy, <4 x i32> %8, <4 x i32> %7
  %i.ga = tail call <4 x i32> @llvm.scmp.v4i32.v4i32(<4 x i32> %i.fj, <4 x i32> zeroinitializer)
  %i.gb = mul nsw <4 x i32> %i.ga, %i.fu
  %i.gc = mul nsw i32 %i.fn, %i.fw
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %i.cv
  %i.ge = load i16, ptr %i.gd, align 2, !tbaa !34
  %i.gf = ashr i16 %i.ge, 4
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %i.cv
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !34
  %i.gi = ashr i16 %i.gh, 4
  %narrow.5.i = sub nsw i16 %i.gf, %i.gi
  %i.gj = sext i16 %narrow.5.i to i32             ; 3 uses
  %i.gk = or disjoint i32 %i.dj, %i.cu
  %i.gl = sext i32 %i.gk to i64                   ; 4 uses
  %i.gm = getelementptr inbounds [2 x i8], ptr %i.cn, i64 %i.gl
  %i.gn = load i16, ptr %i.gm, align 2, !tbaa !34
  %i.go = sext i16 %i.gn to i32
  %i.gp = getelementptr inbounds [2 x i8], ptr %i.co, i64 %i.gl
  %i.gq = load i16, ptr %i.gp, align 2, !tbaa !34
  %i.gr = sext i16 %i.gq to i32
  %i.gs = add nsw i32 %i.gr, %i.go
  %i.gt = ashr i32 %i.gs, 1                       ; 4 uses
  %i.gu = getelementptr inbounds [2 x i8], ptr %i.cp, i64 %i.gl
  %i.gv = load i16, ptr %i.gu, align 2, !tbaa !34
  %i.gw = sext i16 %i.gv to i32
  %i.gx = getelementptr inbounds [2 x i8], ptr %i.cq, i64 %i.gl
  %i.gy = load i16, ptr %i.gx, align 2, !tbaa !34
  %i.gz = sext i16 %i.gy to i32
  %i.ha = add nsw i32 %i.gz, %i.gw
  %i.hb = ashr i32 %i.ha, 1                       ; 4 uses
  %i.hc = tail call i32 @llvm.abs.i32(i32 %i.gt, i1 true)
  %i.hd = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.fv)
  %op.rdx139 = add i32 %i.hd, %i.fx
  %op.rdx140 = add i32 %i.hc, %.06911.i
  %op.rdx141 = add i32 %op.rdx139, %op.rdx140     ; 5 uses
  %i.he = tail call i32 @llvm.abs.i32(i32 %i.hb, i1 true)
  %i.hf = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.fk)
  %op.rdx136 = add i32 %i.hf, %i.fm
  %op.rdx137 = add i32 %i.he, %.06712.i
  %op.rdx138 = add i32 %op.rdx136, %op.rdx137     ; 5 uses
  %i.hg = icmp slt i32 %i.hb, 0
  %i.hh = tail call i32 @llvm.scmp.i32.i32(i32 %i.hb, i32 0)
  %i.hi = mul nsw i32 %i.hh, %i.gt
  %i.hj = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.gb)
  %op.rdx133 = add i32 %i.hj, %i.gc
  %op.rdx134 = add i32 %i.hi, %.06513.i
  %op.rdx135 = add i32 %op.rdx133, %op.rdx134     ; 2 uses
  %i.hk = icmp slt i32 %i.gt, 0
  %.not.5.i = icmp eq i32 %i.gt, 0
  %i.hl = sub nsw i32 0, %i.gj                    ; 2 uses
  %i.hm = select i1 %.not.5.i, i32 0, i32 %i.hl
  %.neg76.5.i = select i1 %i.hk, i32 %i.gj, i32 %i.hm
  %i.hn = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %9)
  %op.rdx130 = add i32 %i.hn, %.neg76.i
  %op.rdx131 = add i32 %.neg76.5.i, %.06314.i
  %op.rdx132 = add i32 %op.rdx130, %op.rdx131     ; 2 uses
  %.not79.5.i = icmp eq i32 %i.hb, 0
  %i.ho = select i1 %.not79.5.i, i32 0, i32 %i.hl
  %.neg78.5.i = select i1 %i.hg, i32 %i.gj, i32 %i.ho
  %i.hp = sext <4 x i16> %i.fi to <4 x i32>
  %i.hq = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.hp)
  %op.rdx = add i32 %i.hq, %.neg78.i
  %op.rdx128 = add i32 %.neg78.5.i, %.06215.i
  %op.rdx129 = add i32 %op.rdx, %op.rdx128        ; 2 uses
  %i.hr = add nsw i32 %.06116.i, 1                ; 2 uses
  %exitcond.not.i71 = icmp eq i32 %i.hr, 5
  br i1 %exitcond.not.i71, label %bb.c, label %bb.d, !llvm.loop !1292

bb.e:                                             ; preds = %bb.c
  %i.hs = shl nsw i32 %op.rdx132, 2
  %.not.i82.i = icmp samesign ult i32 %op.rdx141, 65536 ; 2 uses
  %i.ht = lshr i32 %op.rdx141, 16
  %spec.select.i83.i = select i1 %.not.i82.i, i32 %op.rdx141, i32 %i.ht ; 3 uses
  %spec.select12.i84.i = select i1 %.not.i82.i, i32 0, i32 16 ; 2 uses
  %.not11.i85.i = icmp samesign ult i32 %spec.select.i83.i, 256 ; 2 uses
  %i.hu = lshr i32 %spec.select.i83.i, 8
  %i.hv = or disjoint i32 %spec.select12.i84.i, 8
  %.110.i86.i = select i1 %.not11.i85.i, i32 %spec.select.i83.i, i32 %i.hu
  %.1.i87.i = select i1 %.not11.i85.i, i32 %spec.select12.i84.i, i32 %i.hv
  %i.hw = zext nneg i32 %.110.i86.i to i64
  %i.hx = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.hw
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !40
  %i.hz = zext i8 %i.hy to i32
  %i.ia = add nuw nsw i32 %.1.i87.i, %i.hz
  %i.ib = ashr i32 %i.hs, %i.ia
  %i.ic = tail call i32 @llvm.smax.i32(i32 %i.ib, i32 -15)
  %.0.i81.i = tail call i32 @llvm.smin.i32(i32 %i.ic, i32 15)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.id = phi i32 [ %.0.i81.i, %bb.e ], [ 0, %bb.c ] ; 5 uses
  %i.ie = icmp sgt i32 %op.rdx138, 0
  br i1 %i.ie, label %bb.g, label %derive_bdof_vx_vy_10.exit

bb.g:                                             ; preds = %bb.f
  %i.if = shl nsw i32 %op.rdx129, 2
  %i.ig = mul nsw i32 %i.id, %op.rdx135
  %i.ih = ashr i32 %i.ig, 1
  %i.ii = sub nsw i32 %i.if, %i.ih
  %.not.i.i = icmp samesign ult i32 %op.rdx138, 65536 ; 2 uses
  %i.ij = lshr i32 %op.rdx138, 16
  %spec.select.i.i = select i1 %.not.i.i, i32 %op.rdx138, i32 %i.ij ; 3 uses
  %spec.select12.i.i = select i1 %.not.i.i, i32 0, i32 16 ; 2 uses
  %.not11.i.i = icmp samesign ult i32 %spec.select.i.i, 256 ; 2 uses
  %i.ik = lshr i32 %spec.select.i.i, 8
  %i.il = or disjoint i32 %spec.select12.i.i, 8
  %.110.i.i = select i1 %.not11.i.i, i32 %spec.select.i.i, i32 %i.ik
  %.1.i.i = select i1 %.not11.i.i, i32 %spec.select12.i.i, i32 %i.il
  %i.im = zext nneg i32 %.110.i.i to i64
  %i.in = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.im
  %i.io = load i8, ptr %i.in, align 1, !tbaa !40
  %i.ip = zext i8 %i.io to i32
  %i.iq = add nuw nsw i32 %.1.i.i, %i.ip
  %i.ir = ashr i32 %i.ii, %i.iq
  %i.is = tail call i32 @llvm.smax.i32(i32 %i.ir, i32 -15)
  %.0.i.i = tail call i32 @llvm.smin.i32(i32 %i.is, i32 15)
  br label %derive_bdof_vx_vy_10.exit

derive_bdof_vx_vy_10.exit:                        ; preds = %bb.f, %bb.g
  %i.it = phi i32 [ %.0.i.i, %bb.g ], [ 0, %bb.f ] ; 4 uses
  br label %.preheader.i72

.preheader.i72:                                   ; preds = %.preheader.i72, %derive_bdof_vx_vy_10.exit
  %indvars.iv.i73 = phi i64 [ 0, %derive_bdof_vx_vy_10.exit ], [ %indvars.iv.next.i74, %.preheader.i72 ] ; 2 uses
  %.09.i = phi ptr [ %i.cw, %derive_bdof_vx_vy_10.exit ], [ %i.np, %.preheader.i72 ] ; 5 uses
  %.0268.i = phi ptr [ %i.ck, %derive_bdof_vx_vy_10.exit ], [ %i.nq, %.preheader.i72 ] ; 5 uses
  %.0296.i = phi ptr [ %i.cl, %derive_bdof_vx_vy_10.exit ], [ %i.nr, %.preheader.i72 ] ; 5 uses
  %i.iu = shl nuw nsw i64 %indvars.iv.i73, 4      ; 7 uses
  %i.iv = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %i.iu
  %i.iw = load i16, ptr %i.iv, align 8, !tbaa !34
  %i.ix = sext i16 %i.iw to i32
  %i.iy = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.iu
  %i.iz = load i16, ptr %i.iy, align 8, !tbaa !34
  %i.ja = sext i16 %i.iz to i32
  %i.jb = sub nsw i32 %i.ix, %i.ja
  %i.jc = mul nsw i32 %i.jb, %i.id
  %i.jd = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %i.iu
  %i.je = load i16, ptr %i.jd, align 8, !tbaa !34
  %i.jf = sext i16 %i.je to i32
  %i.jg = getelementptr inbounds nuw [2 x i8], ptr %i.cq, i64 %i.iu
  %i.jh = load i16, ptr %i.jg, align 8, !tbaa !34
  %i.ji = sext i16 %i.jh to i32
  %i.jj = sub nsw i32 %i.jf, %i.ji
  %i.jk = mul nsw i32 %i.jj, %i.it
  %i.jl = load i16, ptr %.0268.i, align 2, !tbaa !34
  %i.jm = sext i16 %i.jl to i32
  %i.jn = load i16, ptr %.0296.i, align 2, !tbaa !34
  %i.jo = sext i16 %i.jn to i32
  %i.jp = add nsw i32 %i.jc, 16
  %i.jq = add nsw i32 %i.jp, %i.jm
  %i.jr = add nsw i32 %i.jq, %i.jo
  %i.js = add nsw i32 %i.jr, %i.jk
  %i.jt = ashr i32 %i.js, 5
  %i.ju = tail call i32 @llvm.smax.i32(i32 %i.jt, i32 0)
  %i.jv = tail call i32 @llvm.umin.i32(i32 %i.ju, i32 1023)
  %i.jw = trunc nuw nsw i32 %i.jv to i16
  store i16 %i.jw, ptr %.09.i, align 2, !tbaa !34
  %i.jx = or disjoint i64 %i.iu, 1                ; 4 uses
  %i.jy = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %i.jx
  %i.jz = load i16, ptr %i.jy, align 2, !tbaa !34
  %i.ka = sext i16 %i.jz to i32
  %i.kb = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.jx
  %i.kc = load i16, ptr %i.kb, align 2, !tbaa !34
  %i.kd = sext i16 %i.kc to i32
  %i.ke = sub nsw i32 %i.ka, %i.kd
  %i.kf = mul nsw i32 %i.ke, %i.id
  %i.kg = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %i.jx
  %i.kh = load i16, ptr %i.kg, align 2, !tbaa !34
  %i.ki = sext i16 %i.kh to i32
  %i.kj = getelementptr inbounds nuw [2 x i8], ptr %i.cq, i64 %i.jx
  %i.kk = load i16, ptr %i.kj, align 2, !tbaa !34
  %i.kl = sext i16 %i.kk to i32
  %i.km = sub nsw i32 %i.ki, %i.kl
  %i.kn = mul nsw i32 %i.km, %i.it
  %i.ko = getelementptr inbounds nuw i8, ptr %.0268.i, i64 2
  %i.kp = load i16, ptr %i.ko, align 2, !tbaa !34
  %i.kq = sext i16 %i.kp to i32
  %i.kr = getelementptr inbounds nuw i8, ptr %.0296.i, i64 2
  %i.ks = load i16, ptr %i.kr, align 2, !tbaa !34
  %i.kt = sext i16 %i.ks to i32
  %i.ku = add nsw i32 %i.kf, 16
  %i.kv = add nsw i32 %i.ku, %i.kq
  %i.kw = add nsw i32 %i.kv, %i.kt
  %i.kx = add nsw i32 %i.kw, %i.kn
  %i.ky = ashr i32 %i.kx, 5
  %i.kz = tail call i32 @llvm.smax.i32(i32 %i.ky, i32 0)
  %i.la = tail call i32 @llvm.umin.i32(i32 %i.kz, i32 1023)
  %i.lb = trunc nuw nsw i32 %i.la to i16
  %i.lc = getelementptr inbounds nuw i8, ptr %.09.i, i64 2
  store i16 %i.lb, ptr %i.lc, align 2, !tbaa !34
  %i.ld = or disjoint i64 %i.iu, 2                ; 4 uses
  %i.le = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %i.ld
  %i.lf = load i16, ptr %i.le, align 4, !tbaa !34
  %i.lg = sext i16 %i.lf to i32
  %i.lh = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.ld
  %i.li = load i16, ptr %i.lh, align 4, !tbaa !34
  %i.lj = sext i16 %i.li to i32
  %i.lk = sub nsw i32 %i.lg, %i.lj
  %i.ll = mul nsw i32 %i.lk, %i.id
  %i.lm = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %i.ld
  %i.ln = load i16, ptr %i.lm, align 4, !tbaa !34
  %i.lo = sext i16 %i.ln to i32
  %i.lp = getelementptr inbounds nuw [2 x i8], ptr %i.cq, i64 %i.ld
  %i.lq = load i16, ptr %i.lp, align 4, !tbaa !34
  %i.lr = sext i16 %i.lq to i32
  %i.ls = sub nsw i32 %i.lo, %i.lr
  %i.lt = mul nsw i32 %i.ls, %i.it
  %i.lu = getelementptr inbounds nuw i8, ptr %.0268.i, i64 4
  %i.lv = load i16, ptr %i.lu, align 2, !tbaa !34
  %i.lw = sext i16 %i.lv to i32
  %i.lx = getelementptr inbounds nuw i8, ptr %.0296.i, i64 4
  %i.ly = load i16, ptr %i.lx, align 2, !tbaa !34
  %i.lz = sext i16 %i.ly to i32
  %i.ma = add nsw i32 %i.ll, 16
  %i.mb = add nsw i32 %i.ma, %i.lw
  %i.mc = add nsw i32 %i.mb, %i.lz
  %i.md = add nsw i32 %i.mc, %i.lt
  %i.me = ashr i32 %i.md, 5
  %i.mf = tail call i32 @llvm.smax.i32(i32 %i.me, i32 0)
  %i.mg = tail call i32 @llvm.umin.i32(i32 %i.mf, i32 1023)
  %i.mh = trunc nuw nsw i32 %i.mg to i16
  %i.mi = getelementptr inbounds nuw i8, ptr %.09.i, i64 4
  store i16 %i.mh, ptr %i.mi, align 2, !tbaa !34
  %i.mj = or disjoint i64 %i.iu, 3                ; 4 uses
  %i.mk = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %i.mj
  %i.ml = load i16, ptr %i.mk, align 2, !tbaa !34
  %i.mm = sext i16 %i.ml to i32
  %i.mn = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.mj
  %i.mo = load i16, ptr %i.mn, align 2, !tbaa !34
  %i.mp = sext i16 %i.mo to i32
  %i.mq = sub nsw i32 %i.mm, %i.mp
  %i.mr = mul nsw i32 %i.mq, %i.id
  %i.ms = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %i.mj
  %i.mt = load i16, ptr %i.ms, align 2, !tbaa !34
  %i.mu = sext i16 %i.mt to i32
  %i.mv = getelementptr inbounds nuw [2 x i8], ptr %i.cq, i64 %i.mj
  %i.mw = load i16, ptr %i.mv, align 2, !tbaa !34
  %i.mx = sext i16 %i.mw to i32
  %i.my = sub nsw i32 %i.mu, %i.mx
  %i.mz = mul nsw i32 %i.my, %i.it
  %i.na = getelementptr inbounds nuw i8, ptr %.0268.i, i64 6
  %i.nb = load i16, ptr %i.na, align 2, !tbaa !34
  %i.nc = sext i16 %i.nb to i32
  %i.nd = getelementptr inbounds nuw i8, ptr %.0296.i, i64 6
  %i.ne = load i16, ptr %i.nd, align 2, !tbaa !34
  %i.nf = sext i16 %i.ne to i32
  %i.ng = add nsw i32 %i.mr, 16
  %i.nh = add nsw i32 %i.ng, %i.nc
  %i.ni = add nsw i32 %i.nh, %i.nf
  %i.nj = add nsw i32 %i.ni, %i.mz
  %i.nk = ashr i32 %i.nj, 5
  %i.nl = tail call i32 @llvm.smax.i32(i32 %i.nk, i32 0)
  %i.nm = tail call i32 @llvm.umin.i32(i32 %i.nl, i32 1023)
end_hunk_1
begin_hunk_2_@apply_bdof_8:bb.a
  store <8 x i16> %i.bb, ptr %i.bc, align 2, !tbaa !34
  %index.next125 = add nuw i64 %index119, 8       ; 2 uses
  %i.bd = icmp eq i64 %index.next125, %n.vec117
  br i1 %i.bd, label %middle.block126, label %vector.body118, !llvm.loop !1998

middle.block126:                                  ; preds = %vector.body118
  br i1 %cmp.n127, label %._crit_edge.i67, label %scalar.ph114.preheader

scalar.ph114.preheader:                           ; preds = %.preheader.i56, %middle.block126
  %indvars.iv.i61.ph = phi i64 [ 0, %.preheader.i56 ], [ %n.vec117, %middle.block126 ]
  %.02430.i62.ph = phi ptr [ %.02634.i58, %.preheader.i56 ], [ %i.ap, %middle.block126 ]
  br label %scalar.ph114

._crit_edge.i67:                                  ; preds = %scalar.ph114, %middle.block126
  %i.be = getelementptr inbounds nuw i8, ptr %.02733.i59, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %.02832.i60, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %.02634.i58, i64 256
  %i.bh = add nuw nsw i32 %.02535.i57, 1          ; 2 uses
  %exitcond38.not.i68 = icmp eq i32 %i.bh, %5
  br i1 %exitcond38.not.i68, label %prof_grad_filter_8.exit69, label %.preheader.i56, !llvm.loop !1996

scalar.ph114:                                     ; preds = %scalar.ph114.preheader, %scalar.ph114
  %indvars.iv.i61 = phi i64 [ %indvars.iv.next.i65, %scalar.ph114 ], [ %indvars.iv.i61.ph, %scalar.ph114.preheader ] ; 3 uses
  %.02430.i62 = phi ptr [ %i.bi, %scalar.ph114 ], [ %.02430.i62.ph, %scalar.ph114.preheader ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.02430.i62, i64 2 ; 2 uses
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !34
  %i.bk = ashr i16 %i.bj, 6
  %i.bl = getelementptr inbounds i8, ptr %.02430.i62, i64 -2
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !34
  %i.bn = ashr i16 %i.bm, 6
  %narrow.i63 = sub nsw i16 %i.bk, %i.bn
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %.02733.i59, i64 %indvars.iv.i61
  store i16 %narrow.i63, ptr %i.bo, align 2, !tbaa !34
  %i.bp = getelementptr inbounds nuw i8, ptr %.02430.i62, i64 256
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !34
  %i.br = ashr i16 %i.bq, 6
  %i.bs = getelementptr inbounds i8, ptr %.02430.i62, i64 -256
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !34
  %i.bu = ashr i16 %i.bt, 6
  %narrow29.i64 = sub nsw i16 %i.br, %i.bu
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %.02832.i60, i64 %indvars.iv.i61
  store i16 %narrow29.i64, ptr %i.bv, align 2, !tbaa !34
  %indvars.iv.next.i65 = add nuw nsw i64 %indvars.iv.i61, 1 ; 2 uses
  %exitcond.not.i66 = icmp eq i64 %indvars.iv.next.i65, %wide.trip.count.i
  br i1 %exitcond.not.i66, label %._crit_edge.i67, label %scalar.ph114, !llvm.loop !1999

prof_grad_filter_8.exit69:                        ; preds = %._crit_edge.i67, %bb.a
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge88.split

.preheader.lr.ph:                                 ; preds = %prof_grad_filter_8.exit69
  %i.bw = shl nsw i64 %1, 2
  br i1 %i.d, label %.preheader.preheader, label %._crit_edge88.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.bx = zext nneg i32 %4 to i64
  %i.by = zext nneg i32 %4 to i64
  %i.bz = zext nneg i32 %5 to i64
  %i.ca = zext nneg i32 %5 to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv94 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next95, %._crit_edge ] ; 4 uses
  %.087 = phi ptr [ %0, %.preheader.preheader ], [ %i.ci, %._crit_edge ] ; 2 uses
  %i.cd = shl nuw nsw i64 %indvars.iv94, 7        ; 2 uses
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.cd
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.cd
  %i.cg = shl nuw nsw i64 %indvars.iv94, 4
  %.not45 = icmp eq i64 %indvars.iv94, 0
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 4 ; 3 uses
  %i.ch = icmp eq i64 %indvars.iv.next95, %i.bz
  br label %bb.b

._crit_edge88.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %prof_grad_filter_8.exit69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void

._crit_edge:                                      ; preds = %derive_bdof_vx_vy_8.exit
  %i.ci = getelementptr inbounds i8, ptr %.087, i64 %i.bw
  %i.cj = icmp samesign ult i64 %indvars.iv.next95, %i.ca
  br i1 %i.cj, label %.preheader, label %._crit_edge88.split, !llvm.loop !2000

bb.b:                                             ; preds = %.preheader, %derive_bdof_vx_vy_8.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %derive_bdof_vx_vy_8.exit ] ; 6 uses
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.ce, i64 %indvars.iv ; 17 uses
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %i.cf, i64 %indvars.iv ; 17 uses
  %i.cm = add nuw nsw i64 %indvars.iv, %i.cg      ; 4 uses
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.cm ; 19 uses
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %i.cm ; 19 uses
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.cm ; 19 uses
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %i.cm ; 19 uses
  %.not = icmp ne i64 %indvars.iv, 0              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 3 uses
  %i.cr = icmp eq i64 %indvars.iv.next, %i.bx
  %i.cs = sext i1 %.not to i32
  %i.ct = sext i1 %.not to i64                    ; 2 uses
  %i.cu = select i1 %i.cr, i32 3, i32 4           ; 2 uses
  %i.cv = zext nneg i32 %i.cu to i64              ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.cw = getelementptr inbounds nuw i8, ptr %.087, i64 %indvars.iv ; 5 uses
  %i.cx = icmp sgt i32 %op.rdx143, 0
  br i1 %i.cx, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.d, %bb.b
  %.06116.i = phi i32 [ -1, %bb.b ], [ %i.hr, %bb.d ] ; 4 uses
  %.06215.i = phi i32 [ 0, %bb.b ], [ %op.rdx131, %bb.d ]
  %.06314.i = phi i32 [ 0, %bb.b ], [ %op.rdx134, %bb.d ]
  %.06513.i = phi i32 [ 0, %bb.b ], [ %op.rdx137, %bb.d ]
  %.06712.i = phi i32 [ 0, %bb.b ], [ %op.rdx140, %bb.d ]
  %.06911.i = phi i32 [ 0, %bb.b ], [ %op.rdx143, %bb.d ]
  %i.cy = icmp slt i32 %.06116.i, 0
  %i.cz = and i1 %.not45, %i.cy
  %i.da = zext i1 %i.cz to i32
  %i.db = add nsw i32 %.06116.i, %i.da
  %i.dc = icmp eq i32 %.06116.i, 4
  %i.dd = and i1 %i.ch, %i.dc
  %.neg.i = sext i1 %i.dd to i32
  %i.de = add nsw i32 %i.db, %.neg.i              ; 2 uses
  %i.df = shl nsw i32 %i.de, 7
  %i.dg = sext i32 %i.df to i64                   ; 2 uses
  %i.dh = getelementptr inbounds [2 x i8], ptr %i.ck, i64 %i.dg ; 3 uses
  %i.di = getelementptr inbounds [2 x i8], ptr %i.cl, i64 %i.dg ; 3 uses
  %i.dj = shl nsw i32 %i.de, 4                    ; 3 uses
  %i.dk = getelementptr inbounds [2 x i8], ptr %i.dh, i64 %i.ct
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !34
  %i.dm = ashr i16 %i.dl, 4
  %i.dn = getelementptr inbounds [2 x i8], ptr %i.di, i64 %i.ct
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !34
  %i.dp = ashr i16 %i.do, 4
  %narrow.i70 = sub nsw i16 %i.dm, %i.dp
  %i.dq = sext i16 %narrow.i70 to i32             ; 3 uses
  %i.dr = add nsw i32 %i.dj, %i.cs
  %i.ds = sext i32 %i.dr to i64                   ; 4 uses
  %i.dt = getelementptr inbounds [2 x i8], ptr %i.cn, i64 %i.ds
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !34
  %i.dv = sext i16 %i.du to i32
  %i.dw = getelementptr inbounds [2 x i8], ptr %i.co, i64 %i.ds
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !34
  %i.dy = sext i16 %i.dx to i32
  %i.dz = add nsw i32 %i.dy, %i.dv
  %i.ea = ashr i32 %i.dz, 1                       ; 3 uses
  %i.eb = getelementptr inbounds [2 x i8], ptr %i.cp, i64 %i.ds
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !34
  %i.ed = sext i16 %i.ec to i32
  %i.ee = getelementptr inbounds [2 x i8], ptr %i.cq, i64 %i.ds
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !34
  %i.eg = sext i16 %i.ef to i32
  %i.eh = add nsw i32 %i.eg, %i.ed
  %i.ei = ashr i32 %i.eh, 1                       ; 3 uses
  %i.ej = icmp slt i32 %i.ei, 0
  %i.ek = icmp slt i32 %i.ea, 0
  %.not.i = icmp eq i32 %i.ea, 0
  %i.el = sub nsw i32 0, %i.dq                    ; 2 uses
  %i.em = select i1 %.not.i, i32 0, i32 %i.el
  %.neg76.i = select i1 %i.ek, i32 %i.dq, i32 %i.em
  %.not79.i = icmp eq i32 %i.ei, 0
  %i.en = select i1 %.not79.i, i32 0, i32 %i.el
  %.neg78.i = select i1 %i.ej, i32 %i.dq, i32 %i.en
  %i.eo = sext i32 %i.dj to i64                   ; 4 uses
  %i.ep = getelementptr inbounds [2 x i8], ptr %i.cn, i64 %i.eo
  %i.eq = getelementptr inbounds [2 x i8], ptr %i.co, i64 %i.eo
  %i.er = getelementptr inbounds [2 x i8], ptr %i.cp, i64 %i.eo
  %i.es = getelementptr inbounds [2 x i8], ptr %i.cq, i64 %i.eo
  %i.et = load <4 x i16>, ptr %i.er, align 8, !tbaa !34
  %i.eu = sext <4 x i16> %i.et to <4 x i32>
  %i.ev = load <4 x i16>, ptr %i.es, align 8, !tbaa !34
  %i.ew = sext <4 x i16> %i.ev to <4 x i32>
  %i.ex = add nsw <4 x i32> %i.ew, %i.eu
  %i.ey = ashr <4 x i32> %i.ex, splat (i32 1)     ; 4 uses
  %i.ez = load <4 x i16>, ptr %i.dh, align 2, !tbaa !34
  %i.fa = ashr <4 x i16> %i.ez, splat (i16 4)
  %i.fb = load <4 x i16>, ptr %i.di, align 2, !tbaa !34
  %i.fc = ashr <4 x i16> %i.fb, splat (i16 4)
  %i.fd = sub nsw <4 x i16> %i.fa, %i.fc          ; 3 uses
  %i.fe = sub nsw <4 x i16> zeroinitializer, %i.fd ; 2 uses
  %i.ff = icmp slt <4 x i32> %i.ey, zeroinitializer
  %i.fg = icmp eq <4 x i32> %i.ey, zeroinitializer
  %i.fh = select <4 x i1> %i.fg, <4 x i16> zeroinitializer, <4 x i16> %i.fe
  %i.fi = select <4 x i1> %i.ff, <4 x i16> %i.fd, <4 x i16> %i.fh
  %i.fj = insertelement <4 x i32> %i.ey, i32 %i.ei, i64 3 ; 2 uses
  %i.fk = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.fj, i1 true)
  %i.fl = extractelement <4 x i32> %i.ey, i64 3   ; 2 uses
  %i.fm = tail call i32 @llvm.abs.i32(i32 %i.fl, i1 true)
  %i.fn = tail call i32 @llvm.scmp.i32.i32(i32 %i.fl, i32 0)
  %i.fo = load <4 x i16>, ptr %i.ep, align 8, !tbaa !34
  %i.fp = sext <4 x i16> %i.fo to <4 x i32>
  %i.fq = load <4 x i16>, ptr %i.eq, align 8, !tbaa !34
  %i.fr = sext <4 x i16> %i.fq to <4 x i32>
  %i.fs = add nsw <4 x i32> %i.fr, %i.fp
  %i.ft = ashr <4 x i32> %i.fs, splat (i32 1)     ; 4 uses
  %i.fu = insertelement <4 x i32> %i.ft, i32 %i.ea, i64 3 ; 2 uses
  %i.fv = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.fu, i1 true)
  %i.fw = extractelement <4 x i32> %i.ft, i64 3   ; 2 uses
  %i.fx = tail call i32 @llvm.abs.i32(i32 %i.fw, i1 true)
  %i.fy = icmp slt <4 x i32> %i.ft, zeroinitializer
  %i.fz = icmp eq <4 x i32> %i.ft, zeroinitializer
  %6 = sext <4 x i16> %i.fe to <4 x i32>
  %7 = select <4 x i1> %i.fz, <4 x i32> zeroinitializer, <4 x i32> %6
  %8 = sext <4 x i16> %i.fd to <4 x i32>
  %9 = select <4 x i1> %i.fy, <4 x i32> %8, <4 x i32> %7
  %i.ga = tail call <4 x i32> @llvm.scmp.v4i32.v4i32(<4 x i32> %i.fj, <4 x i32> zeroinitializer)
  %i.gb = mul nsw <4 x i32> %i.ga, %i.fu
  %i.gc = mul nsw i32 %i.fn, %i.fw
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %i.cv
  %i.ge = load i16, ptr %i.gd, align 2, !tbaa !34
  %i.gf = ashr i16 %i.ge, 4
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %i.cv
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !34
  %i.gi = ashr i16 %i.gh, 4
  %narrow.5.i = sub nsw i16 %i.gf, %i.gi
  %i.gj = sext i16 %narrow.5.i to i32             ; 3 uses
  %i.gk = or disjoint i32 %i.dj, %i.cu
  %i.gl = sext i32 %i.gk to i64                   ; 4 uses
  %i.gm = getelementptr inbounds [2 x i8], ptr %i.cn, i64 %i.gl
  %i.gn = load i16, ptr %i.gm, align 2, !tbaa !34
  %i.go = sext i16 %i.gn to i32
  %i.gp = getelementptr inbounds [2 x i8], ptr %i.co, i64 %i.gl
  %i.gq = load i16, ptr %i.gp, align 2, !tbaa !34
  %i.gr = sext i16 %i.gq to i32
  %i.gs = add nsw i32 %i.gr, %i.go
  %i.gt = ashr i32 %i.gs, 1                       ; 4 uses
  %i.gu = getelementptr inbounds [2 x i8], ptr %i.cp, i64 %i.gl
  %i.gv = load i16, ptr %i.gu, align 2, !tbaa !34
  %i.gw = sext i16 %i.gv to i32
  %i.gx = getelementptr inbounds [2 x i8], ptr %i.cq, i64 %i.gl
  %i.gy = load i16, ptr %i.gx, align 2, !tbaa !34
  %i.gz = sext i16 %i.gy to i32
  %i.ha = add nsw i32 %i.gz, %i.gw
  %i.hb = ashr i32 %i.ha, 1                       ; 4 uses
  %i.hc = tail call i32 @llvm.abs.i32(i32 %i.gt, i1 true)
  %i.hd = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.fv)
  %op.rdx141 = add i32 %i.hd, %i.fx
  %op.rdx142 = add i32 %i.hc, %.06911.i
  %op.rdx143 = add i32 %op.rdx141, %op.rdx142     ; 5 uses
  %i.he = tail call i32 @llvm.abs.i32(i32 %i.hb, i1 true)
  %i.hf = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.fk)
  %op.rdx138 = add i32 %i.hf, %i.fm
  %op.rdx139 = add i32 %i.he, %.06712.i
  %op.rdx140 = add i32 %op.rdx138, %op.rdx139     ; 5 uses
  %i.hg = icmp slt i32 %i.hb, 0
  %i.hh = tail call i32 @llvm.scmp.i32.i32(i32 %i.hb, i32 0)
  %i.hi = mul nsw i32 %i.hh, %i.gt
  %i.hj = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.gb)
  %op.rdx135 = add i32 %i.hj, %i.gc
  %op.rdx136 = add i32 %i.hi, %.06513.i
  %op.rdx137 = add i32 %op.rdx135, %op.rdx136     ; 2 uses
  %i.hk = icmp slt i32 %i.gt, 0
  %.not.5.i = icmp eq i32 %i.gt, 0
  %i.hl = sub nsw i32 0, %i.gj                    ; 2 uses
  %i.hm = select i1 %.not.5.i, i32 0, i32 %i.hl
  %.neg76.5.i = select i1 %i.hk, i32 %i.gj, i32 %i.hm
  %i.hn = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %9)
  %op.rdx132 = add i32 %i.hn, %.neg76.i
  %op.rdx133 = add i32 %.neg76.5.i, %.06314.i
  %op.rdx134 = add i32 %op.rdx132, %op.rdx133     ; 2 uses
  %.not79.5.i = icmp eq i32 %i.hb, 0
  %i.ho = select i1 %.not79.5.i, i32 0, i32 %i.hl
  %.neg78.5.i = select i1 %i.hg, i32 %i.gj, i32 %i.ho
  %i.hp = sext <4 x i16> %i.fi to <4 x i32>
  %i.hq = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.hp)
  %op.rdx = add i32 %i.hq, %.neg78.i
  %op.rdx130 = add i32 %.neg78.5.i, %.06215.i
  %op.rdx131 = add i32 %op.rdx, %op.rdx130        ; 2 uses
  %i.hr = add nsw i32 %.06116.i, 1                ; 2 uses
  %exitcond.not.i71 = icmp eq i32 %i.hr, 5
  br i1 %exitcond.not.i71, label %bb.c, label %bb.d, !llvm.loop !2001

bb.e:                                             ; preds = %bb.c
  %i.hs = shl nsw i32 %op.rdx134, 2
  %.not.i82.i = icmp samesign ult i32 %op.rdx143, 65536 ; 2 uses
  %i.ht = lshr i32 %op.rdx143, 16
  %spec.select.i83.i = select i1 %.not.i82.i, i32 %op.rdx143, i32 %i.ht ; 3 uses
  %spec.select12.i84.i = select i1 %.not.i82.i, i32 0, i32 16 ; 2 uses
  %.not11.i85.i = icmp samesign ult i32 %spec.select.i83.i, 256 ; 2 uses
  %i.hu = lshr i32 %spec.select.i83.i, 8
  %i.hv = or disjoint i32 %spec.select12.i84.i, 8
  %.110.i86.i = select i1 %.not11.i85.i, i32 %spec.select.i83.i, i32 %i.hu
  %.1.i87.i = select i1 %.not11.i85.i, i32 %spec.select12.i84.i, i32 %i.hv
  %i.hw = zext nneg i32 %.110.i86.i to i64
  %i.hx = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.hw
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !40
  %i.hz = zext i8 %i.hy to i32
  %i.ia = add nuw nsw i32 %.1.i87.i, %i.hz
  %i.ib = ashr i32 %i.hs, %i.ia
  %i.ic = tail call i32 @llvm.smax.i32(i32 %i.ib, i32 -15)
  %.0.i81.i = tail call i32 @llvm.smin.i32(i32 %i.ic, i32 15)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.id = phi i32 [ %.0.i81.i, %bb.e ], [ 0, %bb.c ] ; 17 uses
  %i.ie = icmp sgt i32 %op.rdx140, 0
  br i1 %i.ie, label %bb.g, label %derive_bdof_vx_vy_8.exit

bb.g:                                             ; preds = %bb.f
  %i.if = shl nsw i32 %op.rdx131, 2
  %i.ig = mul nsw i32 %i.id, %op.rdx137
  %i.ih = ashr i32 %i.ig, 1
  %i.ii = sub nsw i32 %i.if, %i.ih
  %.not.i.i = icmp samesign ult i32 %op.rdx140, 65536 ; 2 uses
  %i.ij = lshr i32 %op.rdx140, 16
  %spec.select.i.i = select i1 %.not.i.i, i32 %op.rdx140, i32 %i.ij ; 3 uses
  %spec.select12.i.i = select i1 %.not.i.i, i32 0, i32 16 ; 2 uses
  %.not11.i.i = icmp samesign ult i32 %spec.select.i.i, 256 ; 2 uses
  %i.ik = lshr i32 %spec.select.i.i, 8
  %i.il = or disjoint i32 %spec.select12.i.i, 8
  %.110.i.i = select i1 %.not11.i.i, i32 %spec.select.i.i, i32 %i.ik
  %.1.i.i = select i1 %.not11.i.i, i32 %spec.select12.i.i, i32 %i.il
  %i.im = zext nneg i32 %.110.i.i to i64
  %i.in = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.im
  %i.io = load i8, ptr %i.in, align 1, !tbaa !40
  %i.ip = zext i8 %i.io to i32
  %i.iq = add nuw nsw i32 %.1.i.i, %i.ip
  %i.ir = ashr i32 %i.ii, %i.iq
  %i.is = tail call i32 @llvm.smax.i32(i32 %i.ir, i32 -15)
  %.0.i.i = tail call i32 @llvm.smin.i32(i32 %i.is, i32 15)
  br label %derive_bdof_vx_vy_8.exit

derive_bdof_vx_vy_8.exit:                         ; preds = %bb.f, %bb.g
  %i.it = phi i32 [ %.0.i.i, %bb.g ], [ 0, %bb.f ] ; 16 uses
  %i.iu = load i16, ptr %i.cn, align 8, !tbaa !34
  %i.iv = sext i16 %i.iu to i32
  %i.iw = load i16, ptr %i.co, align 8, !tbaa !34
  %i.ix = sext i16 %i.iw to i32
  %i.iy = sub nsw i32 %i.iv, %i.ix
  %i.iz = mul nsw i32 %i.iy, %i.id
  %i.ja = load i16, ptr %i.cp, align 8, !tbaa !34
  %i.jb = sext i16 %i.ja to i32
  %i.jc = load i16, ptr %i.cq, align 8, !tbaa !34
  %i.jd = sext i16 %i.jc to i32
  %i.je = sub nsw i32 %i.jb, %i.jd
  %i.jf = mul nsw i32 %i.je, %i.it
  %i.jg = load i16, ptr %i.ck, align 2, !tbaa !34
  %i.jh = sext i16 %i.jg to i32
  %i.ji = load i16, ptr %i.cl, align 2, !tbaa !34
  %i.jj = sext i16 %i.ji to i32
  %i.jk = add nsw i32 %i.iz, 64
  %i.jl = add nsw i32 %i.jk, %i.jh
  %i.jm = add nsw i32 %i.jl, %i.jj
  %i.jn = add nsw i32 %i.jm, %i.jf
  %i.jo = ashr i32 %i.jn, 7                       ; 3 uses
  %.not.i.i74 = icmp ult i32 %i.jo, 256
  %isnotneg.i.i = icmp sgt i32 %i.jo, -1
  %i.jp = sext i1 %isnotneg.i.i to i8
  %i.jq = trunc nuw i32 %i.jo to i8
  %.0.i.i75 = select i1 %.not.i.i74, i8 %i.jq, i8 %i.jp
  store i8 %.0.i.i75, ptr %i.cw, align 1, !tbaa !40
  %i.jr = getelementptr inbounds nuw i8, ptr %i.cn, i64 2
  %i.js = load i16, ptr %i.jr, align 2, !tbaa !34
  %i.jt = sext i16 %i.js to i32
  %i.ju = getelementptr inbounds nuw i8, ptr %i.co, i64 2
  %i.jv = load i16, ptr %i.ju, align 2, !tbaa !34
  %i.jw = sext i16 %i.jv to i32
  %i.jx = sub nsw i32 %i.jt, %i.jw
  %i.jy = mul nsw i32 %i.jx, %i.id
  %i.jz = getelementptr inbounds nuw i8, ptr %i.cp, i64 2
  %i.ka = load i16, ptr %i.jz, align 2, !tbaa !34
  %i.kb = sext i16 %i.ka to i32
  %i.kc = getelementptr inbounds nuw i8, ptr %i.cq, i64 2
  %i.kd = load i16, ptr %i.kc, align 2, !tbaa !34
  %i.ke = sext i16 %i.kd to i32
  %i.kf = sub nsw i32 %i.kb, %i.ke
  %i.kg = mul nsw i32 %i.kf, %i.it
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ck, i64 2
  %i.ki = load i16, ptr %i.kh, align 2, !tbaa !34
  %i.kj = sext i16 %i.ki to i32
  %i.kk = getelementptr inbounds nuw i8, ptr %i.cl, i64 2
  %i.kl = load i16, ptr %i.kk, align 2, !tbaa !34
  %i.km = sext i16 %i.kl to i32
  %i.kn = add nsw i32 %i.jy, 64
  %i.ko = add nsw i32 %i.kn, %i.kj
  %i.kp = add nsw i32 %i.ko, %i.km
  %i.kq = add nsw i32 %i.kp, %i.kg
  %i.kr = ashr i32 %i.kq, 7                       ; 3 uses
  %.not.i.1.i = icmp ult i32 %i.kr, 256
  %isnotneg.i.1.i = icmp sgt i32 %i.kr, -1
  %i.ks = sext i1 %isnotneg.i.1.i to i8
  %i.kt = trunc nuw i32 %i.kr to i8
  %.0.i.1.i = select i1 %.not.i.1.i, i8 %i.kt, i8 %i.ks
  %i.ku = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  store i8 %.0.i.1.i, ptr %i.ku, align 1, !tbaa !40
  %i.kv = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.kw = load i16, ptr %i.kv, align 4, !tbaa !34
  %i.kx = sext i16 %i.kw to i32
  %i.ky = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %i.kz = load i16, ptr %i.ky, align 4, !tbaa !34
  %i.la = sext i16 %i.kz to i32
  %i.lb = sub nsw i32 %i.kx, %i.la
  %i.lc = mul nsw i32 %i.lb, %i.id
  %i.ld = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.le = load i16, ptr %i.ld, align 4, !tbaa !34
  %i.lf = sext i16 %i.le to i32
  %i.lg = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.lh = load i16, ptr %i.lg, align 4, !tbaa !34
  %i.li = sext i16 %i.lh to i32
  %i.lj = sub nsw i32 %i.lf, %i.li
  %i.lk = mul nsw i32 %i.lj, %i.it
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.lm = load i16, ptr %i.ll, align 2, !tbaa !34
  %i.ln = sext i16 %i.lm to i32
  %i.lo = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.lp = load i16, ptr %i.lo, align 2, !tbaa !34
  %i.lq = sext i16 %i.lp to i32
  %i.lr = add nsw i32 %i.lc, 64
  %i.ls = add nsw i32 %i.lr, %i.ln
  %i.lt = add nsw i32 %i.ls, %i.lq
  %i.lu = add nsw i32 %i.lt, %i.lk
  %i.lv = ashr i32 %i.lu, 7                       ; 3 uses
  %.not.i.2.i = icmp ult i32 %i.lv, 256
  %isnotneg.i.2.i = icmp sgt i32 %i.lv, -1
  %i.lw = sext i1 %isnotneg.i.2.i to i8
  %i.lx = trunc nuw i32 %i.lv to i8
  %.0.i.2.i = select i1 %.not.i.2.i, i8 %i.lx, i8 %i.lw
  %i.ly = getelementptr inbounds nuw i8, ptr %i.cw, i64 2
  store i8 %.0.i.2.i, ptr %i.ly, align 1, !tbaa !40
  %i.lz = getelementptr inbounds nuw i8, ptr %i.cn, i64 6
  %i.ma = load i16, ptr %i.lz, align 2, !tbaa !34
  %i.mb = sext i16 %i.ma to i32
  %i.mc = getelementptr inbounds nuw i8, ptr %i.co, i64 6
  %i.md = load i16, ptr %i.mc, align 2, !tbaa !34
  %i.me = sext i16 %i.md to i32
  %i.mf = sub nsw i32 %i.mb, %i.me
  %i.mg = mul nsw i32 %i.mf, %i.id
  %i.mh = getelementptr inbounds nuw i8, ptr %i.cp, i64 6
  %i.mi = load i16, ptr %i.mh, align 2, !tbaa !34
  %i.mj = sext i16 %i.mi to i32
  %i.mk = getelementptr inbounds nuw i8, ptr %i.cq, i64 6
  %i.ml = load i16, ptr %i.mk, align 2, !tbaa !34
  %i.mm = sext i16 %i.ml to i32
  %i.mn = sub nsw i32 %i.mj, %i.mm
  %i.mo = mul nsw i32 %i.mn, %i.it
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ck, i64 6
  %i.mq = load i16, ptr %i.mp, align 2, !tbaa !34
  %i.mr = sext i16 %i.mq to i32
  %i.ms = getelementptr inbounds nuw i8, ptr %i.cl, i64 6
  %i.mt = load i16, ptr %i.ms, align 2, !tbaa !34
  %i.mu = sext i16 %i.mt to i32
  %i.mv = add nsw i32 %i.mg, 64
  %i.mw = add nsw i32 %i.mv, %i.mr
  %i.mx = add nsw i32 %i.mw, %i.mu
  %i.my = add nsw i32 %i.mx, %i.mo
  %i.mz = ashr i32 %i.my, 7                       ; 3 uses
  %.not.i.3.i = icmp ult i32 %i.mz, 256
  %isnotneg.i.3.i = icmp sgt i32 %i.mz, -1
  %i.na = sext i1 %isnotneg.i.3.i to i8
  %i.nb = trunc nuw i32 %i.mz to i8
  %.0.i.3.i = select i1 %.not.i.3.i, i8 %i.nb, i8 %i.na
  %i.nc = getelementptr inbounds nuw i8, ptr %i.cw, i64 3
  store i8 %.0.i.3.i, ptr %i.nc, align 1, !tbaa !40
  %i.nd = getelementptr inbounds i8, ptr %i.cw, i64 %1 ; 5 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.ck, i64 256
  %i.nf = getelementptr inbounds nuw i8, ptr %i.cl, i64 256
  %i.ng = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
end_hunk_2

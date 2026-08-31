Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/atrac3plusdec?download=true
inline.NumInlined: 8
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@atrac3p_decode_frame:bb.a
  %index156 = phi i64 [ 0, %vector.ph151 ], [ %index.next157, %vector.body155 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph151 ], [ %vec.ind.next, %vector.body155 ] ; 3 uses
  %i.cm = and <4 x i32> %vec.ind, splat (i32 1020)
  %i.cn = and <4 x i32> %vec.ind, splat (i32 1020)
  %i.co = xor <4 x i32> %i.cn, splat (i32 512)
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index156 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store <4 x i32> %i.cm, ptr %i.cp, align 16, !tbaa !76
  store <4 x i32> %i.co, ptr %i.cq, align 16, !tbaa !76
  %index.next157 = add nuw i64 %index156, 8       ; 2 uses
  %vec.ind.next = add nsw <4 x i32> %vec.ind, splat (i32 1024)
  %i.cr = icmp eq i64 %index.next157, %n.vec152
  br i1 %i.cr, label %middle.block158, label %vector.body155, !llvm.loop !81

middle.block158:                                  ; preds = %vector.body155
  %cmp.n159 = icmp eq i64 %n.vec152, %wide.trip.count36.i
  br i1 %cmp.n159, label %.preheader7.i, label %.lr.ph18.i.preheader

.lr.ph18.i.preheader:                             ; preds = %.lr.ph18.preheader.i, %middle.block158
  %indvars.iv33.i.ph = phi i64 [ 0, %.lr.ph18.preheader.i ], [ %n.vec152, %middle.block158 ]
  %.19417.i.ph = phi i32 [ %.093.lcssa.i, %.lr.ph18.preheader.i ], [ %i.cl, %middle.block158 ]
  br label %.lr.ph18.i

scalar.ph162:                                     ; preds = %scalar.ph162.preheader, %scalar.ph162
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph162 ], [ %indvars.iv.i.ph, %scalar.ph162.preheader ] ; 3 uses
  %.09315.i = phi i32 [ %i.cx, %scalar.ph162 ], [ %.09315.i.ph, %scalar.ph162.preheader ]
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.i
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !76
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv.i
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !76
  %i.cw = add i32 %i.ct, %.09315.i
  %i.cx = add i32 %i.cw, %i.cv                    ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader8.i, label %scalar.ph162, !llvm.loop !82

.preheader7.i:                                    ; preds = %.lr.ph18.i, %middle.block158, %.preheader8.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bm, i64 72
  %wide.trip.count54.i = zext nneg i32 %i.bi to i64 ; 3 uses
  br label %bb.l

.lr.ph18.i:                                       ; preds = %.lr.ph18.i.preheader, %.lr.ph18.i
  %indvars.iv33.i = phi i64 [ %indvars.iv.next34.i, %.lr.ph18.i ], [ %indvars.iv33.i.ph, %.lr.ph18.i.preheader ] ; 2 uses
  %.19417.i = phi i32 [ %i.db, %.lr.ph18.i ], [ %.19417.i.ph, %.lr.ph18.i.preheader ] ; 2 uses
  %i.cz = and i32 %.19417.i, 1020
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv33.i
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !76
  %indvars.iv.next34.i = add nuw nsw i64 %indvars.iv33.i, 1 ; 2 uses
  %i.db = add nsw i32 %.19417.i, 128
  %exitcond37.not.i = icmp eq i64 %indvars.iv.next34.i, %wide.trip.count36.i
  br i1 %exitcond37.not.i, label %.preheader7.i, label %.lr.ph18.i, !llvm.loop !83

bb.l:                                             ; preds = %._crit_edge.i, %.preheader7.i
  %indvars.iv51.i = phi i64 [ 0, %.preheader7.i ], [ %indvars.iv.next52.i, %._crit_edge.i ] ; 4 uses
  %i.dc = getelementptr inbounds nuw [8192 x i8], ptr %i.x, i64 %indvars.iv51.i ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(8192) %i.dc, i8 0, i64 8192, i1 false)
  %i.dd = load i32, ptr %i.br, align 4, !tbaa !75 ; 2 uses
  %i.de = icmp sgt i32 %i.dd, 0
  br i1 %i.de, label %.lr.ph22.i, label %.preheader6.i

.lr.ph22.i:                                       ; preds = %bb.l
  %i.df = getelementptr inbounds nuw [7800 x i8], ptr %i.cy, i64 %indvars.iv51.i ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 404
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 20
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 148
  %wide.trip.count46.i = zext nneg i32 %i.dd to i64
  br label %bb.m

.preheader6.i:                                    ; preds = %.loopexit5.i, %bb.l
  %i.dj = load i32, ptr %i.cg, align 16, !tbaa !80 ; 2 uses
  %i.dk = icmp sgt i32 %i.dj, 0
  br i1 %i.dk, label %.lr.ph24.preheader.i, label %._crit_edge.i

.lr.ph24.preheader.i:                             ; preds = %.preheader6.i
  %i.dl = trunc nuw nsw i64 %indvars.iv51.i to i32
  br label %.lr.ph24.i

bb.m:                                             ; preds = %.loopexit5.i, %.lr.ph22.i
  %i.dm = phi i16 [ %.pre.i, %.lr.ph22.i ], [ %i.dr, %.loopexit5.i ] ; 2 uses
  %indvars.iv43.i = phi i64 [ 0, %.lr.ph22.i ], [ %indvars.iv.next44.i, %.loopexit5.i ] ; 3 uses
  %i.dn = zext i16 %i.dm to i64                   ; 2 uses
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.dg, i64 %i.dn ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.dn ; 2 uses
  %indvars.iv.next44.i = add nuw nsw i64 %indvars.iv43.i, 1 ; 3 uses
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr @ff_atrac3p_qu_to_spec_pos, i64 %indvars.iv.next44.i
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !84 ; 2 uses
  %i.ds = zext i16 %i.dr to i32
  %i.dt = zext i16 %i.dm to i32
  %i.du = sub nsw i32 %i.ds, %i.dt                ; 3 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv43.i
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !76 ; 2 uses
  %i.dx = icmp sgt i32 %i.dw, 0
  br i1 %i.dx, label %bb.n, label %.loopexit5.i

bb.n:                                             ; preds = %bb.m
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv43.i
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !76
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds [4 x i8], ptr @ff_atrac3p_sf_tab, i64 %i.ea
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !30
  %i.ed = zext nneg i32 %i.dw to i64
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr @ff_atrac3p_mant_tab, i64 %i.ed
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !30
  %i.eg = fmul nsz float %i.ec, %i.ef             ; 2 uses
  %i.eh = icmp sgt i32 %i.du, 0
  br i1 %i.eh, label %.lr.ph20.preheader.i, label %.loopexit5.i

.lr.ph20.preheader.i:                             ; preds = %bb.n
  %wide.trip.count41.i = zext nneg i32 %i.du to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.du, 8
  br i1 %min.iters.check, label %.lr.ph20.i.preheader, label %vector.ph142

vector.ph142:                                     ; preds = %.lr.ph20.preheader.i
  %n.vec = and i64 %wide.trip.count41.i, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.eg, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body143

vector.body143:                                   ; preds = %vector.body143, %vector.ph142
  %index144 = phi i64 [ 0, %vector.ph142 ], [ %index.next147, %vector.body143 ] ; 3 uses
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %index144 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %wide.load145.a = load <4 x i16>, ptr %i.ei, align 2, !tbaa !84
  %wide.load146 = load <4 x i16>, ptr %i.ej, align 2, !tbaa !84
  %i.ek = sitofp <4 x i16> %wide.load145.a to <4 x float>
  %i.el = sitofp <4 x i16> %wide.load146 to <4 x float>
  %i.em = fmul nsz <4 x float> %broadcast.splat, %i.ek
  %i.en = fmul nsz <4 x float> %broadcast.splat, %i.el
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %index144 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store <4 x float> %i.em, ptr %i.eo, align 4, !tbaa !30
  store <4 x float> %i.en, ptr %i.ep, align 4, !tbaa !30
  %index.next147 = add nuw i64 %index144, 8       ; 2 uses
  %i.eq = icmp eq i64 %index.next147, %n.vec
  br i1 %i.eq, label %middle.block148, label %vector.body143, !llvm.loop !86

middle.block148:                                  ; preds = %vector.body143
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count41.i
  br i1 %cmp.n, label %.loopexit5.i, label %.lr.ph20.i.preheader

.lr.ph20.i.preheader:                             ; preds = %.lr.ph20.preheader.i, %middle.block148
  %indvars.iv38.i.ph = phi i64 [ 0, %.lr.ph20.preheader.i ], [ %n.vec, %middle.block148 ]
  br label %.lr.ph20.i

.lr.ph20.i:                                       ; preds = %.lr.ph20.i.preheader, %.lr.ph20.i
  %indvars.iv38.i = phi i64 [ %indvars.iv.next39.i, %.lr.ph20.i ], [ %indvars.iv38.i.ph, %.lr.ph20.i.preheader ] ; 3 uses
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %indvars.iv38.i
  %i.es = load i16, ptr %i.er, align 2, !tbaa !84
  %i.et = sitofp i16 %i.es to float
  %i.eu = fmul nsz float %i.eg, %i.et
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv38.i
  store float %i.eu, ptr %i.ev, align 4, !tbaa !30
  %indvars.iv.next39.i = add nuw nsw i64 %indvars.iv38.i, 1 ; 2 uses
  %exitcond42.not.i = icmp eq i64 %indvars.iv.next39.i, %wide.trip.count41.i
  br i1 %exitcond42.not.i, label %.loopexit5.i, label %.lr.ph20.i, !llvm.loop !87

.loopexit5.i:                                     ; preds = %.lr.ph20.i, %middle.block148, %bb.n, %bb.m
  %exitcond47.not.i = icmp eq i64 %indvars.iv.next44.i, %wide.trip.count46.i
  br i1 %exitcond47.not.i, label %.preheader6.i, label %bb.m, !llvm.loop !88

.lr.ph24.i:                                       ; preds = %.lr.ph24.i, %.lr.ph24.preheader.i
  %indvars.iv48.i = phi i64 [ 0, %.lr.ph24.preheader.i ], [ %indvars.iv.next49.i, %.lr.ph24.i ] ; 3 uses
  %i.ew = load ptr, ptr %i.y, align 8, !tbaa !40
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv48.i
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !76
  %i.ez = trunc nuw nsw i64 %indvars.iv48.i to i32
  tail call void @ff_atrac3p_power_compensation(ptr noundef nonnull %i.bm, ptr noundef %i.ew, i32 noundef %i.dl, ptr noundef nonnull %i.dc, i32 noundef %i.ey, i32 noundef %i.ez) #6
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 1 ; 2 uses
  %i.fa = load i32, ptr %i.cg, align 16, !tbaa !80 ; 2 uses
  %i.fb = sext i32 %i.fa to i64
  %i.fc = icmp slt i64 %indvars.iv.next49.i, %i.fb
  br i1 %i.fc, label %.lr.ph24.i, label %._crit_edge.i, !llvm.loop !89

._crit_edge.i:                                    ; preds = %.lr.ph24.i, %.preheader6.i
  %i.fd = phi i32 [ %i.dj, %.preheader6.i ], [ %i.fa, %.lr.ph24.i ] ; 2 uses
  %indvars.iv.next52.i = add nuw nsw i64 %indvars.iv51.i, 1 ; 2 uses
  %exitcond55.not.i = icmp eq i64 %indvars.iv.next52.i, %wide.trip.count54.i
  br i1 %exitcond55.not.i, label %bb.o, label %bb.l, !llvm.loop !90

bb.o:                                             ; preds = %._crit_edge.i
  %i.fe = load i32, ptr %i.bm, align 16, !tbaa !73
  %i.ff = icmp eq i32 %i.fe, 1
  %i.fg = icmp sgt i32 %i.fd, 0
  %or.cond.i77 = and i1 %i.fg, %i.ff
  br i1 %or.cond.i77, label %.lr.ph29.i, label %decode_residual_spectrum.exit

.lr.ph29.i:                                       ; preds = %bb.o
  %i.fh = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  %wide.trip.count68.i = zext nneg i32 %i.fd to i64
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.i, %.lr.ph29.i
  %indvars.iv65.i = phi i64 [ 0, %.lr.ph29.i ], [ %indvars.iv.next66.i, %.loopexit.i ] ; 5 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 %indvars.iv65.i
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !72
  %.not103.i = icmp eq i8 %i.fk, 0
  br i1 %.not103.i, label %.loopexit2.i, label %vector.body134

vector.body134:                                   ; preds = %bb.p
  %i.fl = shl nuw nsw i64 %indvars.iv65.i, 7
  %4 = and i64 %i.fl, 4294967168                  ; 17 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %4 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16 ; 2 uses
  %wide.load136.a = load <4 x float>, ptr %i.fm, align 4, !tbaa !30
  %wide.load137.a = load <4 x float>, ptr %i.fn, align 4, !tbaa !30
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %4 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16 ; 2 uses
  %wide.load138.a = load <4 x float>, ptr %i.fo, align 4, !tbaa !30
  %wide.load139 = load <4 x float>, ptr %i.fp, align 4, !tbaa !30
  store <4 x float> %wide.load138.a, ptr %i.fm, align 4, !tbaa !30
  store <4 x float> %wide.load139, ptr %i.fn, align 4, !tbaa !30
  store <4 x float> %wide.load136.a, ptr %i.fo, align 4, !tbaa !30
  store <4 x float> %wide.load137.a, ptr %i.fp, align 4, !tbaa !30
  %i.fq = or disjoint i64 %4, 8                   ; 2 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.fq ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16 ; 2 uses
  %wide.load136.1.a = load <4 x float>, ptr %i.fr, align 4, !tbaa !30
  %wide.load137.1.a = load <4 x float>, ptr %i.fs, align 4, !tbaa !30
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.fq ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16 ; 2 uses
  %wide.load138.1.a = load <4 x float>, ptr %i.ft, align 4, !tbaa !30
  %wide.load139.1 = load <4 x float>, ptr %i.fu, align 4, !tbaa !30
  store <4 x float> %wide.load138.1.a, ptr %i.fr, align 4, !tbaa !30
  store <4 x float> %wide.load139.1, ptr %i.fs, align 4, !tbaa !30
  store <4 x float> %wide.load136.1.a, ptr %i.ft, align 4, !tbaa !30
  store <4 x float> %wide.load137.1.a, ptr %i.fu, align 4, !tbaa !30
  %i.fv = or disjoint i64 %4, 16                  ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.fv ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16 ; 2 uses
  %wide.load136.2.a = load <4 x float>, ptr %i.fw, align 4, !tbaa !30
  %wide.load137.2.a = load <4 x float>, ptr %i.fx, align 4, !tbaa !30
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.fv ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16 ; 2 uses
  %wide.load138.2.a = load <4 x float>, ptr %i.fy, align 4, !tbaa !30
  %wide.load139.2 = load <4 x float>, ptr %i.fz, align 4, !tbaa !30
  store <4 x float> %wide.load138.2.a, ptr %i.fw, align 4, !tbaa !30
  store <4 x float> %wide.load139.2, ptr %i.fx, align 4, !tbaa !30
  store <4 x float> %wide.load136.2.a, ptr %i.fy, align 4, !tbaa !30
  store <4 x float> %wide.load137.2.a, ptr %i.fz, align 4, !tbaa !30
  %i.ga = or disjoint i64 %4, 24                  ; 2 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ga ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16 ; 2 uses
  %wide.load136.3.a = load <4 x float>, ptr %i.gb, align 4, !tbaa !30
  %wide.load137.3.a = load <4 x float>, ptr %i.gc, align 4, !tbaa !30
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ga ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16 ; 2 uses
  %wide.load138.3.a = load <4 x float>, ptr %i.gd, align 4, !tbaa !30
  %wide.load139.3 = load <4 x float>, ptr %i.ge, align 4, !tbaa !30
  store <4 x float> %wide.load138.3.a, ptr %i.gb, align 4, !tbaa !30
  store <4 x float> %wide.load139.3, ptr %i.gc, align 4, !tbaa !30
  store <4 x float> %wide.load136.3.a, ptr %i.gd, align 4, !tbaa !30
  store <4 x float> %wide.load137.3.a, ptr %i.ge, align 4, !tbaa !30
  %i.gf = or disjoint i64 %4, 32                  ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.gf ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16 ; 2 uses
  %wide.load136.4.a = load <4 x float>, ptr %i.gg, align 4, !tbaa !30
  %wide.load137.4.a = load <4 x float>, ptr %i.gh, align 4, !tbaa !30
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.gf ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16 ; 2 uses
  %wide.load138.4.a = load <4 x float>, ptr %i.gi, align 4, !tbaa !30
  %wide.load139.4 = load <4 x float>, ptr %i.gj, align 4, !tbaa !30
  store <4 x float> %wide.load138.4.a, ptr %i.gg, align 4, !tbaa !30
  store <4 x float> %wide.load139.4, ptr %i.gh, align 4, !tbaa !30
  store <4 x float> %wide.load136.4.a, ptr %i.gi, align 4, !tbaa !30
  store <4 x float> %wide.load137.4.a, ptr %i.gj, align 4, !tbaa !30
  %i.gk = or disjoint i64 %4, 40                  ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.gk ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16 ; 2 uses
  %wide.load136.5.a = load <4 x float>, ptr %i.gl, align 4, !tbaa !30
  %wide.load137.5.a = load <4 x float>, ptr %i.gm, align 4, !tbaa !30
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.gk ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16 ; 2 uses
  %wide.load138.5.a = load <4 x float>, ptr %i.gn, align 4, !tbaa !30
  %wide.load139.5 = load <4 x float>, ptr %i.go, align 4, !tbaa !30
  store <4 x float> %wide.load138.5.a, ptr %i.gl, align 4, !tbaa !30
  store <4 x float> %wide.load139.5, ptr %i.gm, align 4, !tbaa !30
  store <4 x float> %wide.load136.5.a, ptr %i.gn, align 4, !tbaa !30
  store <4 x float> %wide.load137.5.a, ptr %i.go, align 4, !tbaa !30
  %i.gp = or disjoint i64 %4, 48                  ; 2 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.gp ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16 ; 2 uses
  %wide.load136.6.a = load <4 x float>, ptr %i.gq, align 4, !tbaa !30
  %wide.load137.6.a = load <4 x float>, ptr %i.gr, align 4, !tbaa !30
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.gp ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16 ; 2 uses
  %wide.load138.6.a = load <4 x float>, ptr %i.gs, align 4, !tbaa !30
  %wide.load139.6 = load <4 x float>, ptr %i.gt, align 4, !tbaa !30
  store <4 x float> %wide.load138.6.a, ptr %i.gq, align 4, !tbaa !30
  store <4 x float> %wide.load139.6, ptr %i.gr, align 4, !tbaa !30
  store <4 x float> %wide.load136.6.a, ptr %i.gs, align 4, !tbaa !30
  store <4 x float> %wide.load137.6.a, ptr %i.gt, align 4, !tbaa !30
  %i.gu = or disjoint i64 %4, 56                  ; 2 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.gu ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16 ; 2 uses
  %wide.load136.7.a = load <4 x float>, ptr %i.gv, align 4, !tbaa !30
  %wide.load137.7.a = load <4 x float>, ptr %i.gw, align 4, !tbaa !30
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.gu ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16 ; 2 uses
  %wide.load138.7.a = load <4 x float>, ptr %i.gx, align 4, !tbaa !30
  %wide.load139.7 = load <4 x float>, ptr %i.gy, align 4, !tbaa !30
  store <4 x float> %wide.load138.7.a, ptr %i.gv, align 4, !tbaa !30
  store <4 x float> %wide.load139.7, ptr %i.gw, align 4, !tbaa !30
  store <4 x float> %wide.load136.7.a, ptr %i.gx, align 4, !tbaa !30
  store <4 x float> %wide.load137.7.a, ptr %i.gy, align 4, !tbaa !30
  %i.gz = or disjoint i64 %4, 64                  ; 2 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.gz ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16 ; 2 uses
  %wide.load136.8.a = load <4 x float>, ptr %i.ha, align 4, !tbaa !30
  %wide.load137.8.a = load <4 x float>, ptr %i.hb, align 4, !tbaa !30
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.gz ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16 ; 2 uses
  %wide.load138.8.a = load <4 x float>, ptr %i.hc, align 4, !tbaa !30
  %wide.load139.8 = load <4 x float>, ptr %i.hd, align 4, !tbaa !30
  store <4 x float> %wide.load138.8.a, ptr %i.ha, align 4, !tbaa !30
  store <4 x float> %wide.load139.8, ptr %i.hb, align 4, !tbaa !30
  store <4 x float> %wide.load136.8.a, ptr %i.hc, align 4, !tbaa !30
  store <4 x float> %wide.load137.8.a, ptr %i.hd, align 4, !tbaa !30
  %i.he = or disjoint i64 %4, 72                  ; 2 uses
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.he ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16 ; 2 uses
  %wide.load136.9.a = load <4 x float>, ptr %i.hf, align 4, !tbaa !30
  %wide.load137.9.a = load <4 x float>, ptr %i.hg, align 4, !tbaa !30
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.he ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16 ; 2 uses
  %wide.load138.9.a = load <4 x float>, ptr %i.hh, align 4, !tbaa !30
  %wide.load139.9 = load <4 x float>, ptr %i.hi, align 4, !tbaa !30
  store <4 x float> %wide.load138.9.a, ptr %i.hf, align 4, !tbaa !30
  store <4 x float> %wide.load139.9, ptr %i.hg, align 4, !tbaa !30
  store <4 x float> %wide.load136.9.a, ptr %i.hh, align 4, !tbaa !30
  store <4 x float> %wide.load137.9.a, ptr %i.hi, align 4, !tbaa !30
  %i.hj = or disjoint i64 %4, 80                  ; 2 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.hj ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 16 ; 2 uses
  %wide.load136.10.a = load <4 x float>, ptr %i.hk, align 4, !tbaa !30
  %wide.load137.10.a = load <4 x float>, ptr %i.hl, align 4, !tbaa !30
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.hj ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16 ; 2 uses
  %wide.load138.10.a = load <4 x float>, ptr %i.hm, align 4, !tbaa !30
  %wide.load139.10 = load <4 x float>, ptr %i.hn, align 4, !tbaa !30
  store <4 x float> %wide.load138.10.a, ptr %i.hk, align 4, !tbaa !30
  store <4 x float> %wide.load139.10, ptr %i.hl, align 4, !tbaa !30
  store <4 x float> %wide.load136.10.a, ptr %i.hm, align 4, !tbaa !30
  store <4 x float> %wide.load137.10.a, ptr %i.hn, align 4, !tbaa !30
  %i.ho = or disjoint i64 %4, 88                  ; 2 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ho ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 16 ; 2 uses
  %wide.load136.11.a = load <4 x float>, ptr %i.hp, align 4, !tbaa !30
  %wide.load137.11.a = load <4 x float>, ptr %i.hq, align 4, !tbaa !30
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ho ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16 ; 2 uses
  %wide.load138.11.a = load <4 x float>, ptr %i.hr, align 4, !tbaa !30
  %wide.load139.11 = load <4 x float>, ptr %i.hs, align 4, !tbaa !30
  store <4 x float> %wide.load138.11.a, ptr %i.hp, align 4, !tbaa !30
  store <4 x float> %wide.load139.11, ptr %i.hq, align 4, !tbaa !30
  store <4 x float> %wide.load136.11.a, ptr %i.hr, align 4, !tbaa !30
  store <4 x float> %wide.load137.11.a, ptr %i.hs, align 4, !tbaa !30
  %i.ht = or disjoint i64 %4, 96                  ; 2 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ht ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16 ; 2 uses
  %wide.load136.12.a = load <4 x float>, ptr %i.hu, align 4, !tbaa !30
  %wide.load137.12.a = load <4 x float>, ptr %i.hv, align 4, !tbaa !30
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ht ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16 ; 2 uses
  %wide.load138.12.a = load <4 x float>, ptr %i.hw, align 4, !tbaa !30
  %wide.load139.12 = load <4 x float>, ptr %i.hx, align 4, !tbaa !30
  store <4 x float> %wide.load138.12.a, ptr %i.hu, align 4, !tbaa !30
  store <4 x float> %wide.load139.12, ptr %i.hv, align 4, !tbaa !30
  store <4 x float> %wide.load136.12.a, ptr %i.hw, align 4, !tbaa !30
  store <4 x float> %wide.load137.12.a, ptr %i.hx, align 4, !tbaa !30
  %i.hy = or disjoint i64 %4, 104                 ; 2 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.hy ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16 ; 2 uses
  %wide.load136.13.a = load <4 x float>, ptr %i.hz, align 4, !tbaa !30
  %wide.load137.13.a = load <4 x float>, ptr %i.ia, align 4, !tbaa !30
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.hy ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 16 ; 2 uses
  %wide.load138.13.a = load <4 x float>, ptr %i.ib, align 4, !tbaa !30
  %wide.load139.13 = load <4 x float>, ptr %i.ic, align 4, !tbaa !30
  store <4 x float> %wide.load138.13.a, ptr %i.hz, align 4, !tbaa !30
  store <4 x float> %wide.load139.13, ptr %i.ia, align 4, !tbaa !30
  store <4 x float> %wide.load136.13.a, ptr %i.ib, align 4, !tbaa !30
  store <4 x float> %wide.load137.13.a, ptr %i.ic, align 4, !tbaa !30
  %i.id = or disjoint i64 %4, 112                 ; 2 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.id ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 16 ; 2 uses
  %wide.load136.14.a = load <4 x float>, ptr %i.ie, align 4, !tbaa !30
  %wide.load137.14.a = load <4 x float>, ptr %i.if, align 4, !tbaa !30
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.id ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16 ; 2 uses
  %wide.load138.14.a = load <4 x float>, ptr %i.ig, align 4, !tbaa !30
  %wide.load139.14 = load <4 x float>, ptr %i.ih, align 4, !tbaa !30
  store <4 x float> %wide.load138.14.a, ptr %i.ie, align 4, !tbaa !30
  store <4 x float> %wide.load139.14, ptr %i.if, align 4, !tbaa !30
  store <4 x float> %wide.load136.14.a, ptr %i.ig, align 4, !tbaa !30
  store <4 x float> %wide.load137.14.a, ptr %i.ih, align 4, !tbaa !30
  %i.ii = or disjoint i64 %4, 120                 ; 2 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ii ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 16 ; 2 uses
  %wide.load136.15.a = load <4 x float>, ptr %i.ij, align 4, !tbaa !30
  %wide.load137.15.a = load <4 x float>, ptr %i.ik, align 4, !tbaa !30
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ii ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 16 ; 2 uses
  %wide.load138.15.a = load <4 x float>, ptr %i.il, align 4, !tbaa !30
  %wide.load139.15 = load <4 x float>, ptr %i.im, align 4, !tbaa !30
  store <4 x float> %wide.load138.15.a, ptr %i.ij, align 4, !tbaa !30
  store <4 x float> %wide.load139.15, ptr %i.ik, align 4, !tbaa !30
  store <4 x float> %wide.load136.15.a, ptr %i.il, align 4, !tbaa !30
  store <4 x float> %wide.load137.15.a, ptr %i.im, align 4, !tbaa !30
  br label %.loopexit2.i

.loopexit2.i:                                     ; preds = %vector.body134, %bb.p
  %i.in = getelementptr inbounds nuw i8, ptr %i.fi, i64 %indvars.iv65.i
  %i.io = load i8, ptr %i.in, align 1, !tbaa !72
  %.not104.i = icmp eq i8 %i.io, 0
  br i1 %.not104.i, label %.loopexit.i, label %vector.body

vector.body:                                      ; preds = %.loopexit2.i
  %i.ip = shl nuw nsw i64 %indvars.iv65.i, 7
  %5 = and i64 %i.ip, 4294967168
  %invariant.gep.i = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %5 ; 33 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %invariant.gep.i, align 4, !tbaa !30
  %wide.load132 = load <4 x float>, ptr %i.iq, align 4, !tbaa !30
  %i.ir = fneg nsz <4 x float> %wide.load
  %i.is = fneg nsz <4 x float> %wide.load132
  store <4 x float> %i.ir, ptr %invariant.gep.i, align 4, !tbaa !30
  store <4 x float> %i.is, ptr %i.iq, align 4, !tbaa !30
  %i.it = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 32 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 48 ; 2 uses
  %wide.load.1 = load <4 x float>, ptr %i.it, align 4, !tbaa !30
  %wide.load132.1 = load <4 x float>, ptr %i.iu, align 4, !tbaa !30
  %i.iv = fneg nsz <4 x float> %wide.load.1
  %i.iw = fneg nsz <4 x float> %wide.load132.1
  store <4 x float> %i.iv, ptr %i.it, align 4, !tbaa !30
  store <4 x float> %i.iw, ptr %i.iu, align 4, !tbaa !30
  %i.ix = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 64 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 80 ; 2 uses
  %wide.load.2 = load <4 x float>, ptr %i.ix, align 4, !tbaa !30
  %wide.load132.2 = load <4 x float>, ptr %i.iy, align 4, !tbaa !30
  %i.iz = fneg nsz <4 x float> %wide.load.2
  %i.ja = fneg nsz <4 x float> %wide.load132.2
  store <4 x float> %i.iz, ptr %i.ix, align 4, !tbaa !30
  store <4 x float> %i.ja, ptr %i.iy, align 4, !tbaa !30
  %i.jb = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 96 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 112 ; 2 uses
  %wide.load.3 = load <4 x float>, ptr %i.jb, align 4, !tbaa !30
  %wide.load132.3 = load <4 x float>, ptr %i.jc, align 4, !tbaa !30
  %i.jd = fneg nsz <4 x float> %wide.load.3
  %i.je = fneg nsz <4 x float> %wide.load132.3
  store <4 x float> %i.jd, ptr %i.jb, align 4, !tbaa !30
  store <4 x float> %i.je, ptr %i.jc, align 4, !tbaa !30
  %i.jf = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 128 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 144 ; 2 uses
  %wide.load.4 = load <4 x float>, ptr %i.jf, align 4, !tbaa !30
  %wide.load132.4 = load <4 x float>, ptr %i.jg, align 4, !tbaa !30
  %i.jh = fneg nsz <4 x float> %wide.load.4
  %i.ji = fneg nsz <4 x float> %wide.load132.4
  store <4 x float> %i.jh, ptr %i.jf, align 4, !tbaa !30
  store <4 x float> %i.ji, ptr %i.jg, align 4, !tbaa !30
  %i.jj = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 160 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 176 ; 2 uses
  %wide.load.5 = load <4 x float>, ptr %i.jj, align 4, !tbaa !30
  %wide.load132.5 = load <4 x float>, ptr %i.jk, align 4, !tbaa !30
  %i.jl = fneg nsz <4 x float> %wide.load.5
  %i.jm = fneg nsz <4 x float> %wide.load132.5
  store <4 x float> %i.jl, ptr %i.jj, align 4, !tbaa !30
  store <4 x float> %i.jm, ptr %i.jk, align 4, !tbaa !30
  %i.jn = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 192 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 208 ; 2 uses
  %wide.load.6 = load <4 x float>, ptr %i.jn, align 4, !tbaa !30
  %wide.load132.6 = load <4 x float>, ptr %i.jo, align 4, !tbaa !30
  %i.jp = fneg nsz <4 x float> %wide.load.6
  %i.jq = fneg nsz <4 x float> %wide.load132.6
  store <4 x float> %i.jp, ptr %i.jn, align 4, !tbaa !30
  store <4 x float> %i.jq, ptr %i.jo, align 4, !tbaa !30
  %i.jr = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 224 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 240 ; 2 uses
  %wide.load.7 = load <4 x float>, ptr %i.jr, align 4, !tbaa !30
  %wide.load132.7 = load <4 x float>, ptr %i.js, align 4, !tbaa !30
  %i.jt = fneg nsz <4 x float> %wide.load.7
  %i.ju = fneg nsz <4 x float> %wide.load132.7
  store <4 x float> %i.jt, ptr %i.jr, align 4, !tbaa !30
  store <4 x float> %i.ju, ptr %i.js, align 4, !tbaa !30
  %i.jv = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 256 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 272 ; 2 uses
  %wide.load.8 = load <4 x float>, ptr %i.jv, align 4, !tbaa !30
  %wide.load132.8 = load <4 x float>, ptr %i.jw, align 4, !tbaa !30
  %i.jx = fneg nsz <4 x float> %wide.load.8
  %i.jy = fneg nsz <4 x float> %wide.load132.8
  store <4 x float> %i.jx, ptr %i.jv, align 4, !tbaa !30
  store <4 x float> %i.jy, ptr %i.jw, align 4, !tbaa !30
  %i.jz = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 288 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 304 ; 2 uses
  %wide.load.9 = load <4 x float>, ptr %i.jz, align 4, !tbaa !30
  %wide.load132.9 = load <4 x float>, ptr %i.ka, align 4, !tbaa !30
  %i.kb = fneg nsz <4 x float> %wide.load.9
  %i.kc = fneg nsz <4 x float> %wide.load132.9
  store <4 x float> %i.kb, ptr %i.jz, align 4, !tbaa !30
  store <4 x float> %i.kc, ptr %i.ka, align 4, !tbaa !30
  %i.kd = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 320 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 336 ; 2 uses
  %wide.load.10 = load <4 x float>, ptr %i.kd, align 4, !tbaa !30
  %wide.load132.10 = load <4 x float>, ptr %i.ke, align 4, !tbaa !30
  %i.kf = fneg nsz <4 x float> %wide.load.10
  %i.kg = fneg nsz <4 x float> %wide.load132.10
  store <4 x float> %i.kf, ptr %i.kd, align 4, !tbaa !30
  store <4 x float> %i.kg, ptr %i.ke, align 4, !tbaa !30
  %i.kh = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 352 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 368 ; 2 uses
  %wide.load.11 = load <4 x float>, ptr %i.kh, align 4, !tbaa !30
  %wide.load132.11 = load <4 x float>, ptr %i.ki, align 4, !tbaa !30
  %i.kj = fneg nsz <4 x float> %wide.load.11
  %i.kk = fneg nsz <4 x float> %wide.load132.11
  store <4 x float> %i.kj, ptr %i.kh, align 4, !tbaa !30
  store <4 x float> %i.kk, ptr %i.ki, align 4, !tbaa !30
  %i.kl = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 384 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 400 ; 2 uses
  %wide.load.12 = load <4 x float>, ptr %i.kl, align 4, !tbaa !30
  %wide.load132.12 = load <4 x float>, ptr %i.km, align 4, !tbaa !30
  %i.kn = fneg nsz <4 x float> %wide.load.12
  %i.ko = fneg nsz <4 x float> %wide.load132.12
  store <4 x float> %i.kn, ptr %i.kl, align 4, !tbaa !30
  store <4 x float> %i.ko, ptr %i.km, align 4, !tbaa !30
  %i.kp = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 416 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 432 ; 2 uses
  %wide.load.13 = load <4 x float>, ptr %i.kp, align 4, !tbaa !30
  %wide.load132.13 = load <4 x float>, ptr %i.kq, align 4, !tbaa !30
  %i.kr = fneg nsz <4 x float> %wide.load.13
  %i.ks = fneg nsz <4 x float> %wide.load132.13
  store <4 x float> %i.kr, ptr %i.kp, align 4, !tbaa !30
  store <4 x float> %i.ks, ptr %i.kq, align 4, !tbaa !30
  %i.kt = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 448 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 464 ; 2 uses
  %wide.load.14 = load <4 x float>, ptr %i.kt, align 4, !tbaa !30
  %wide.load132.14 = load <4 x float>, ptr %i.ku, align 4, !tbaa !30
  %i.kv = fneg nsz <4 x float> %wide.load.14
  %i.kw = fneg nsz <4 x float> %wide.load132.14
  store <4 x float> %i.kv, ptr %i.kt, align 4, !tbaa !30
  store <4 x float> %i.kw, ptr %i.ku, align 4, !tbaa !30
  %i.kx = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 480 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 496 ; 2 uses
  %wide.load.15 = load <4 x float>, ptr %i.kx, align 4, !tbaa !30
  %wide.load132.15 = load <4 x float>, ptr %i.ky, align 4, !tbaa !30
  %i.kz = fneg nsz <4 x float> %wide.load.15
  %i.la = fneg nsz <4 x float> %wide.load132.15
  store <4 x float> %i.kz, ptr %i.kx, align 4, !tbaa !30
  store <4 x float> %i.la, ptr %i.ky, align 4, !tbaa !30
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %vector.body, %.loopexit2.i
  %indvars.iv.next66.i = add nuw nsw i64 %indvars.iv65.i, 1 ; 2 uses
  %exitcond69.not.i = icmp eq i64 %indvars.iv.next66.i, %wide.trip.count68.i
  br i1 %exitcond69.not.i, label %decode_residual_spectrum.exit, label %bb.p, !llvm.loop !91

decode_residual_spectrum.exit:                    ; preds = %.loopexit.i, %.preheader10.preheader.i, %bb.o
  %wide.trip.count.i78.pre-phi = phi i64 [ %wide.trip.count54.i, %bb.o ], [ %.pre, %.preheader10.preheader.i ], [ %wide.trip.count54.i, %.loopexit.i ] ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.lb = load ptr, ptr %i.w, align 8, !tbaa !38
  %i.lc = getelementptr inbounds nuw [36848 x i8], ptr %i.lb, i64 %indvars.iv108 ; 28 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 8 ; 5 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.lc, i64 72 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lc, i64 20464 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lc, i64 17336 ; 3 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lc, i64 17344
  %i.li = getelementptr inbounds nuw i8, ptr %i.lc, i64 17360
  br label %.preheader1.i79

.preheader1.i79:                                  ; preds = %.loopexit.i82, %decode_residual_spectrum.exit
  %indvars.iv15.i = phi i64 [ 0, %decode_residual_spectrum.exit ], [ %indvars.iv.next16.i, %.loopexit.i82 ] ; 12 uses
  %i.lj = load i32, ptr %i.ld, align 8, !tbaa !92 ; 2 uses
  %i.lk = icmp sgt i32 %i.lj, 0
  br i1 %i.lk, label %.lr.ph.i86, label %._crit_edge.i80

.lr.ph.i86:                                       ; preds = %.preheader1.i79
  %i.ll = getelementptr inbounds nuw [8192 x i8], ptr %i.x, i64 %indvars.iv15.i
  %i.lm = getelementptr inbounds nuw [8192 x i8], ptr %i.ac, i64 %indvars.iv15.i
  %i.ln = getelementptr inbounds nuw [7800 x i8], ptr %i.le, i64 %indvars.iv15.i ; 4 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 4552
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ln, i64 4544
  %i.lq = getelementptr inbounds nuw [8192 x i8], ptr %i.lf, i64 %indvars.iv15.i
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ln, i64 6488
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ln, i64 6480
  %i.lt = getelementptr inbounds nuw [8192 x i8], ptr %i.ae, i64 %indvars.iv15.i
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph.i86
  %indvars.iv.i87 = phi i64 [ 0, %.lr.ph.i86 ], [ %indvars.iv.next.i88, %bb.q ] ; 7 uses
  %i.lu = load ptr, ptr %i.y, align 8, !tbaa !40
  %i.lv = load ptr, ptr %i.aa, align 8, !tbaa !93
  %i.lw = load ptr, ptr %i.ab, align 16, !tbaa !94
  %i.lx = shl nuw nsw i64 %indvars.iv.i87, 7      ; 4 uses
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %i.lx
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %i.lx ; 2 uses
  %i.ma = load ptr, ptr %i.lo, align 8, !tbaa !46
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 %indvars.iv.i87
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !72
  %i.md = zext i8 %i.mc to i32
  %i.me = shl nuw nsw i32 %i.md, 1
  %i.mf = load ptr, ptr %i.lp, align 8, !tbaa !45
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 %indvars.iv.i87
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !72
  %i.mi = zext i8 %i.mh to i32
  %i.mj = add nuw nsw i32 %i.me, %i.mi
  %i.mk = trunc nuw nsw i64 %indvars.iv.i87 to i32
  tail call void @ff_atrac3p_imdct(ptr noundef %i.lu, ptr noundef %i.lv, ptr noundef %i.lw, ptr noundef nonnull %i.ly, ptr noundef nonnull %i.lz, i32 noundef %i.mj, i32 noundef %i.mk) #6
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %i.lx
  %i.mm = load ptr, ptr %i.lr, align 8, !tbaa !48
  %i.mn = getelementptr inbounds nuw [60 x i8], ptr %i.mm, i64 %indvars.iv.i87
  %i.mo = load ptr, ptr %i.ls, align 8, !tbaa !47
  %i.mp = getelementptr inbounds nuw [60 x i8], ptr %i.mo, i64 %indvars.iv.i87
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %i.lx
  tail call void @ff_atrac_gain_compensation(ptr noundef nonnull %i.ad, ptr noundef nonnull %i.lz, ptr noundef nonnull %i.ml, ptr noundef %i.mn, ptr noundef %i.mp, i32 noundef 128, ptr noundef nonnull %i.mq) #6
  %indvars.iv.next.i88 = add nuw nsw i64 %indvars.iv.i87, 1 ; 2 uses
  %i.mr = load i32, ptr %i.ld, align 8, !tbaa !92 ; 2 uses
  %i.ms = sext i32 %i.mr to i64
  %i.mt = icmp slt i64 %indvars.iv.next.i88, %i.ms
  br i1 %i.mt, label %bb.q, label %._crit_edge.i80, !llvm.loop !95

._crit_edge.i80:                                  ; preds = %bb.q, %.preheader1.i79
  %.lcssa.i = phi i32 [ %i.lj, %.preheader1.i79 ], [ %i.mr, %bb.q ]
end_hunk_0

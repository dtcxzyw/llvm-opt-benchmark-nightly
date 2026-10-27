Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_waveform?download=true
inline.NumInlined: 250
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 37
begin_hunk_0_@config_output:bb.a

bb.b:                                             ; preds = %._crit_edge
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !130
  %i.ab = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.aa) #12 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 504
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !102
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !87
  %i.af = zext i8 %i.ae to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i32 %i.af, ptr %i.ag, align 8, !tbaa !100
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 352 ; 6 uses
  tail call void @av_freep(ptr noundef nonnull %i.ah) #12
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !116
  %.not = icmp eq i32 %i.aj, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 376
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !97
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.an = load i32, ptr %i.am, align 4, !tbaa !115 ; 2 uses
  %i.ao = icmp eq i32 %i.an, 1
  %i.ap = select i1 %i.ao, i32 %spec.select.lcssa, i32 1
  %spec.select134 = mul nsw i32 %i.ap, %i.al      ; 2 uses
  %i.aq = icmp eq i32 %i.an, 2
  %i.ar = select i1 %i.aq, i32 %spec.select.lcssa, i32 1 ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !98
  %i.au = mul nsw i32 %i.at, %i.ar
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 44 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !99
  %i.ax = mul nsw i32 %i.aw, %i.ar
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink = phi i32 [ %spec.select134, %bb.d ], [ %i.au, %bb.c ]
  %spec.select133.sink = phi i32 [ %i.ax, %bb.d ], [ %spec.select134, %bb.c ]
  %.0119.in = phi ptr [ %i.av, %bb.d ], [ %i.as, %bb.c ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sink, ptr %i.ay, align 8, !tbaa !98
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %spec.select133.sink, ptr %i.az, align 4, !tbaa !99
  %.0119 = load i32, ptr %.0119.in, align 4, !tbaa !84
  %.0119.fr = freeze i32 %.0119                   ; 4 uses
  %i.ba = sext i32 %.0119.fr to i64               ; 25 uses
  %i.bb = tail call ptr @av_malloc_array(i64 noundef %i.ba, i64 noundef 128) #12 ; 4 uses
  store ptr %i.bb, ptr %i.ah, align 8, !tbaa !336
  %.not129 = icmp eq ptr %i.bb, null
  br i1 %.not129, label %bb.l, label %.preheader136

.preheader136:                                    ; preds = %bb.e
  %i.bc = load i32, ptr %i.g, align 4, !tbaa !111 ; 3 uses
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %.lr.ph144, label %._crit_edge145

.lr.ph144:                                        ; preds = %.preheader136
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 496
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !114
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.f, i64 96 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 224 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 376 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 44 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 2 uses
  %i.bo = icmp sgt i32 %.0119.fr, 0
  br i1 %i.bo, label %.lr.ph144.split.us.preheader, label %.lr.ph144.split

.lr.ph144.split.us.preheader:                     ; preds = %.lr.ph144
  %wide.trip.count = zext nneg i32 %.0119.fr to i64 ; 4 uses
  %i.bp = shl nuw nsw i64 %wide.trip.count, 2     ; 5 uses
  %i.bq = shl nuw nsw i64 %i.ba, 2
  %i.br = shl nuw nsw i64 %i.ba, 2
  %i.bs = shl nuw nsw i64 %i.ba, 2
  %i.bt = shl nuw nsw i64 %i.ba, 2
  %i.bu = shl nuw nsw i64 %i.ba, 2
  %i.bv = shl nuw nsw i64 %i.ba, 2
  %i.bw = shl nuw nsw i64 %i.ba, 2
  %i.bx = shl nuw nsw i64 %i.ba, 2
  %scevgep191 = getelementptr i8, ptr %i.f, i64 84
  %min.iters.check333 = icmp ult i32 %.0119.fr, 48
  %n.vec335 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n356 = icmp eq i64 %n.vec335, %wide.trip.count
  br label %.lr.ph144.split.us

.lr.ph144.split.us:                               ; preds = %.lr.ph144.split.us.preheader, %..loopexit_crit_edge.us
  %i.by = phi i32 [ %i.bc, %.lr.ph144.split.us.preheader ], [ %i.cf, %..loopexit_crit_edge.us ]
  %i.bz = phi ptr [ %i.bb, %.lr.ph144.split.us.preheader ], [ %i.cg, %..loopexit_crit_edge.us ] ; 3 uses
  %indvars.iv162 = phi i64 [ 0, %.lr.ph144.split.us.preheader ], [ %indvars.iv.next163, %..loopexit_crit_edge.us ] ; 3 uses
  %.0123142.us = phi i32 [ 0, %.lr.ph144.split.us.preheader ], [ %.1124.us, %..loopexit_crit_edge.us ] ; 3 uses
  %i.ca = trunc nuw nsw i64 %indvars.iv162 to i32
  %i.cb = shl nuw i32 1, %i.ca
  %i.cc = load i32, ptr %i.bh, align 8, !tbaa !113
  %i.cd = and i32 %i.cc, %i.cb
  %.not131.us = icmp eq i32 %i.cd, 0
  br i1 %.not131.us, label %..loopexit_crit_edge.us, label %.preheader135.us

..loopexit_crit_edge.us.loopexit:                 ; preds = %.preheader.us, %middle.block355
  %i.ce = add nsw i32 %.0123142.us, 1
  %.pre165 = load i32, ptr %i.g, align 4, !tbaa !111
  br label %..loopexit_crit_edge.us

..loopexit_crit_edge.us:                          ; preds = %..loopexit_crit_edge.us.loopexit, %.lr.ph144.split.us
  %i.cf = phi i32 [ %i.by, %.lr.ph144.split.us ], [ %.pre165, %..loopexit_crit_edge.us.loopexit ] ; 2 uses
  %i.cg = phi ptr [ %i.bz, %.lr.ph144.split.us ], [ %i.dm, %..loopexit_crit_edge.us.loopexit ]
  %.1124.us = phi i32 [ %.0123142.us, %.lr.ph144.split.us ], [ %i.ce, %..loopexit_crit_edge.us.loopexit ]
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 2 uses
  %i.ch = sext i32 %i.cf to i64
  %i.ci = icmp slt i64 %indvars.iv.next163, %i.ch
  br i1 %i.ci, label %.lr.ph144.split.us, label %._crit_edge145, !llvm.loop !322

.preheader.us:                                    ; preds = %.preheader.us.preheader, %.preheader.us
  %indvars.iv158 = phi i64 [ %indvars.iv.next159, %.preheader.us ], [ %indvars.iv158.ph, %.preheader.us.preheader ] ; 9 uses
  %i.cj = load i32, ptr %i.eq, align 4, !tbaa !84
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv158
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !84
  %i.cl = load i32, ptr %i.eu, align 4, !tbaa !84
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv158
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !84
  %i.cn = load i32, ptr %i.eq, align 4, !tbaa !84
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv158
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !84
  %i.cp = load i32, ptr %i.eu, align 4, !tbaa !84
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %indvars.iv158
  store i32 %i.cp, ptr %i.cq, align 4, !tbaa !84
  %i.cr = load i32, ptr %i.eq, align 4, !tbaa !84
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %indvars.iv158
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !84
  %i.ct = load i32, ptr %i.eu, align 4, !tbaa !84
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv158
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !84
  %i.cv = load i32, ptr %i.eq, align 4, !tbaa !84
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv158
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !84
  %i.cx = load i32, ptr %i.eu, align 4, !tbaa !84
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv158
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !84
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1 ; 2 uses
  %exitcond161.not = icmp eq i64 %indvars.iv.next159, %wide.trip.count
  br i1 %exitcond161.not, label %..loopexit_crit_edge.us.loopexit, label %.preheader.us, !llvm.loop !323

.preheader135.us:                                 ; preds = %.lr.ph144.split.us
  %i.cz = getelementptr inbounds nuw [20 x i8], ptr %i.bg, i64 %indvars.iv162
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !103 ; 2 uses
  %i.db = shl i32 %i.da, 2
  %i.dc = sext i32 %i.da to i64                   ; 5 uses
  %i.dd = getelementptr inbounds [32 x i8], ptr %i.bi, i64 %i.dc ; 4 uses
  %i.de = getelementptr inbounds [32 x i8], ptr %i.bj, i64 %i.dc ; 4 uses
  %i.df = sext i32 %i.db to i64                   ; 12 uses
  %i.dg = mul nsw i64 %i.df, %i.ba
  %i.dh = getelementptr [4 x i8], ptr %i.bz, i64 %i.dg ; 11 uses
  store ptr %i.dh, ptr %i.dd, align 8, !tbaa !140
  %i.di = load ptr, ptr %i.ah, align 8, !tbaa !336 ; 2 uses
  %i.dj = add nsw i64 %i.df, 16                   ; 2 uses
  %i.dk = mul nsw i64 %i.dj, %i.ba
  %i.dl = getelementptr [4 x i8], ptr %i.di, i64 %i.dk ; 11 uses
  store ptr %i.dl, ptr %i.de, align 8, !tbaa !140
  %i.dm = load ptr, ptr %i.ah, align 8, !tbaa !336 ; 13 uses
  %i.dn = or disjoint i64 %i.df, 1
  %i.do = mul nsw i64 %i.dn, %i.ba
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.do ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !140
  %i.dr = add nsw i64 %i.df, 17                   ; 2 uses
  %i.ds = mul nsw i64 %i.dr, %i.ba
  %i.dt = getelementptr [4 x i8], ptr %i.dm, i64 %i.ds ; 11 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store ptr %i.dt, ptr %i.du, align 8, !tbaa !140
  %i.dv = or disjoint i64 %i.df, 2
  %i.dw = mul nsw i64 %i.dv, %i.ba
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.dw ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store ptr %i.dx, ptr %i.dy, align 8, !tbaa !140
  %i.dz = add nsw i64 %i.df, 18                   ; 2 uses
  %i.ea = mul nsw i64 %i.dz, %i.ba
  %i.eb = getelementptr [4 x i8], ptr %i.dm, i64 %i.ea ; 11 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store ptr %i.eb, ptr %i.ec, align 8, !tbaa !140
  %i.ed = or disjoint i64 %i.df, 3
  %i.ee = mul nsw i64 %i.ed, %i.ba
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.ee ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  store ptr %i.ef, ptr %i.eg, align 8, !tbaa !140
  %i.eh = add nsw i64 %i.df, 19                   ; 2 uses
  %i.ei = mul nsw i64 %i.eh, %i.ba
  %i.ej = getelementptr [4 x i8], ptr %i.dm, i64 %i.ei ; 11 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  store ptr %i.ej, ptr %i.ek, align 8, !tbaa !140
  %i.el = load i32, ptr %i.bk, align 8, !tbaa !97
  %i.em = mul nsw i32 %i.el, %.0123142.us
  %i.en = load i32, ptr %i.bl, align 4, !tbaa !115
  %i.eo = icmp eq i32 %i.en, 1
  %i.ep = select i1 %i.eo, i32 %i.em, i32 0       ; 2 uses
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.dc ; 14 uses
  store i32 %i.ep, ptr %i.eq, align 4, !tbaa !84
  %i.er = load i32, ptr %i.bk, align 8, !tbaa !97
  %i.es = add i32 %i.er, -1
  %i.et = add i32 %i.es, %i.ep
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.dc ; 6 uses
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !84
  br i1 %min.iters.check333, label %.preheader.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader135.us
  %scevgep = getelementptr i8, ptr %i.bz, i64 %i.bp
  %i.ev = mul i64 %i.bq, %i.df
  %scevgep176 = getelementptr i8, ptr %scevgep, i64 %i.ev ; 8 uses
  %scevgep177 = getelementptr i8, ptr %i.di, i64 %i.bp
  %i.ew = mul i64 %i.br, %i.dj
  %scevgep178 = getelementptr i8, ptr %scevgep177, i64 %i.ew ; 8 uses
  %i.ex = or disjoint i64 %i.df, 1
  %i.ey = mul i64 %i.bs, %i.ex                    ; 2 uses
  %scevgep179 = getelementptr i8, ptr %i.dm, i64 %i.ey ; 8 uses
  %scevgep180 = getelementptr i8, ptr %i.dm, i64 %i.bp ; 2 uses
  %scevgep181 = getelementptr i8, ptr %scevgep180, i64 %i.ey ; 8 uses
  %i.ez = mul i64 %i.bt, %i.dr
  %scevgep182 = getelementptr i8, ptr %scevgep180, i64 %i.ez ; 8 uses
  %i.fa = or disjoint i64 %i.df, 2
  %i.fb = mul i64 %i.bu, %i.fa                    ; 2 uses
  %scevgep183 = getelementptr i8, ptr %i.dm, i64 %i.fb ; 8 uses
  %scevgep184 = getelementptr i8, ptr %i.dm, i64 %i.bp ; 2 uses
  %scevgep185 = getelementptr i8, ptr %scevgep184, i64 %i.fb ; 8 uses
  %i.fc = mul i64 %i.bv, %i.dz
  %scevgep186 = getelementptr i8, ptr %scevgep184, i64 %i.fc ; 8 uses
  %i.fd = or disjoint i64 %i.df, 3
  %i.fe = mul i64 %i.bw, %i.fd                    ; 2 uses
  %scevgep187 = getelementptr i8, ptr %i.dm, i64 %i.fe ; 8 uses
  %scevgep188 = getelementptr i8, ptr %i.dm, i64 %i.bp ; 2 uses
  %scevgep189 = getelementptr i8, ptr %scevgep188, i64 %i.fe ; 8 uses
  %i.ff = mul i64 %i.bx, %i.eh
  %scevgep190 = getelementptr i8, ptr %scevgep188, i64 %i.ff ; 8 uses
  %i.fg = shl nsw i64 %i.dc, 2
  %scevgep192 = getelementptr i8, ptr %scevgep191, i64 %i.fg ; 8 uses
  %bound0 = icmp ult ptr %i.dh, %scevgep178
  %bound1 = icmp ult ptr %i.dl, %scevgep176
  %found.conflict = and i1 %bound0, %bound1
  %bound0193 = icmp ult ptr %i.dh, %scevgep181
  %bound1194 = icmp ult ptr %scevgep179, %scevgep176
  %found.conflict195 = and i1 %bound0193, %bound1194
  %conflict.rdx = or i1 %found.conflict, %found.conflict195
  %bound0196 = icmp ult ptr %i.dh, %scevgep182
  %bound1197 = icmp ult ptr %i.dt, %scevgep176
  %found.conflict198 = and i1 %bound0196, %bound1197
  %conflict.rdx199 = or i1 %conflict.rdx, %found.conflict198
  %bound0200 = icmp ult ptr %i.dh, %scevgep185
  %bound1201 = icmp ult ptr %scevgep183, %scevgep176
  %found.conflict202 = and i1 %bound0200, %bound1201
  %conflict.rdx203 = or i1 %conflict.rdx199, %found.conflict202
  %bound0204 = icmp ult ptr %i.dh, %scevgep186
  %bound1205 = icmp ult ptr %i.eb, %scevgep176
  %found.conflict206 = and i1 %bound0204, %bound1205
  %conflict.rdx207 = or i1 %conflict.rdx203, %found.conflict206
  %bound0208 = icmp ult ptr %i.dh, %scevgep189
  %bound1209 = icmp ult ptr %scevgep187, %scevgep176
  %found.conflict210 = and i1 %bound0208, %bound1209
  %conflict.rdx211 = or i1 %conflict.rdx207, %found.conflict210
  %bound0212 = icmp ult ptr %i.dh, %scevgep190
  %bound1213 = icmp ult ptr %i.ej, %scevgep176
  %found.conflict214 = and i1 %bound0212, %bound1213
  %conflict.rdx215 = or i1 %conflict.rdx211, %found.conflict214
  %bound0216 = icmp ult ptr %i.dh, %scevgep192
  %bound1217 = icmp ult ptr %i.eq, %scevgep176
  %found.conflict218 = and i1 %bound0216, %bound1217
  %conflict.rdx219 = or i1 %conflict.rdx215, %found.conflict218
  %bound0220 = icmp ult ptr %i.dl, %scevgep181
  %bound1221 = icmp ult ptr %scevgep179, %scevgep178
  %found.conflict222 = and i1 %bound0220, %bound1221
  %conflict.rdx223 = or i1 %conflict.rdx219, %found.conflict222
  %bound0224 = icmp ult ptr %i.dl, %scevgep182
  %bound1225 = icmp ult ptr %i.dt, %scevgep178
  %found.conflict226 = and i1 %bound0224, %bound1225
  %conflict.rdx227 = or i1 %conflict.rdx223, %found.conflict226
  %bound0228 = icmp ult ptr %i.dl, %scevgep185
  %bound1229 = icmp ult ptr %scevgep183, %scevgep178
  %found.conflict230 = and i1 %bound0228, %bound1229
  %conflict.rdx231 = or i1 %conflict.rdx227, %found.conflict230
  %bound0232 = icmp ult ptr %i.dl, %scevgep186
  %bound1233 = icmp ult ptr %i.eb, %scevgep178
  %found.conflict234 = and i1 %bound0232, %bound1233
  %conflict.rdx235 = or i1 %conflict.rdx231, %found.conflict234
  %bound0236 = icmp ult ptr %i.dl, %scevgep189
  %bound1237 = icmp ult ptr %scevgep187, %scevgep178
  %found.conflict238 = and i1 %bound0236, %bound1237
  %conflict.rdx239 = or i1 %conflict.rdx235, %found.conflict238
  %bound0240 = icmp ult ptr %i.dl, %scevgep190
  %bound1241 = icmp ult ptr %i.ej, %scevgep178
  %found.conflict242 = and i1 %bound0240, %bound1241
  %conflict.rdx243 = or i1 %conflict.rdx239, %found.conflict242
  %bound0244 = icmp ult ptr %i.dl, %scevgep192
  %bound1245 = icmp ult ptr %i.eq, %scevgep178
  %found.conflict246 = and i1 %bound0244, %bound1245
  %conflict.rdx247 = or i1 %conflict.rdx243, %found.conflict246
  %bound0248 = icmp ult ptr %scevgep179, %scevgep182
  %bound1249 = icmp ult ptr %i.dt, %scevgep181
  %found.conflict250 = and i1 %bound0248, %bound1249
  %conflict.rdx251 = or i1 %conflict.rdx247, %found.conflict250
  %bound0252 = icmp ult ptr %scevgep179, %scevgep185
  %bound1253 = icmp ult ptr %scevgep183, %scevgep181
  %found.conflict254 = and i1 %bound0252, %bound1253
  %conflict.rdx255 = or i1 %conflict.rdx251, %found.conflict254
  %bound0256 = icmp ult ptr %scevgep179, %scevgep186
  %bound1257 = icmp ult ptr %i.eb, %scevgep181
  %found.conflict258 = and i1 %bound0256, %bound1257
  %conflict.rdx259 = or i1 %conflict.rdx255, %found.conflict258
  %bound0260 = icmp ult ptr %scevgep179, %scevgep189
  %bound1261 = icmp ult ptr %scevgep187, %scevgep181
  %found.conflict262 = and i1 %bound0260, %bound1261
  %conflict.rdx263 = or i1 %conflict.rdx259, %found.conflict262
  %bound0264 = icmp ult ptr %scevgep179, %scevgep190
  %bound1265 = icmp ult ptr %i.ej, %scevgep181
  %found.conflict266 = and i1 %bound0264, %bound1265
  %conflict.rdx267 = or i1 %conflict.rdx263, %found.conflict266
  %bound0268 = icmp ult ptr %scevgep179, %scevgep192
  %bound1269 = icmp ult ptr %i.eq, %scevgep181
  %found.conflict270 = and i1 %bound0268, %bound1269
  %conflict.rdx271 = or i1 %conflict.rdx267, %found.conflict270
  %bound0272 = icmp ult ptr %i.dt, %scevgep185
  %bound1273 = icmp ult ptr %scevgep183, %scevgep182
  %found.conflict274 = and i1 %bound0272, %bound1273
  %conflict.rdx275 = or i1 %conflict.rdx271, %found.conflict274
  %bound0276 = icmp ult ptr %i.dt, %scevgep186
  %bound1277 = icmp ult ptr %i.eb, %scevgep182
  %found.conflict278 = and i1 %bound0276, %bound1277
  %conflict.rdx279 = or i1 %conflict.rdx275, %found.conflict278
  %bound0280 = icmp ult ptr %i.dt, %scevgep189
  %bound1281 = icmp ult ptr %scevgep187, %scevgep182
  %found.conflict282 = and i1 %bound0280, %bound1281
  %conflict.rdx283 = or i1 %conflict.rdx279, %found.conflict282
  %bound0284 = icmp ult ptr %i.dt, %scevgep190
  %bound1285 = icmp ult ptr %i.ej, %scevgep182
  %found.conflict286 = and i1 %bound0284, %bound1285
  %conflict.rdx287 = or i1 %conflict.rdx283, %found.conflict286
  %bound0288 = icmp ult ptr %i.dt, %scevgep192
  %bound1289 = icmp ult ptr %i.eq, %scevgep182
  %found.conflict290 = and i1 %bound0288, %bound1289
  %conflict.rdx291 = or i1 %conflict.rdx287, %found.conflict290
  %bound0292 = icmp ult ptr %scevgep183, %scevgep186
  %bound1293 = icmp ult ptr %i.eb, %scevgep185
  %found.conflict294 = and i1 %bound0292, %bound1293
  %conflict.rdx295 = or i1 %conflict.rdx291, %found.conflict294
  %bound0296 = icmp ult ptr %scevgep183, %scevgep189
  %bound1297 = icmp ult ptr %scevgep187, %scevgep185
  %found.conflict298 = and i1 %bound0296, %bound1297
  %conflict.rdx299 = or i1 %conflict.rdx295, %found.conflict298
  %bound0300 = icmp ult ptr %scevgep183, %scevgep190
  %bound1301 = icmp ult ptr %i.ej, %scevgep185
  %found.conflict302 = and i1 %bound0300, %bound1301
  %conflict.rdx303 = or i1 %conflict.rdx299, %found.conflict302
  %bound0304 = icmp ult ptr %scevgep183, %scevgep192
  %bound1305 = icmp ult ptr %i.eq, %scevgep185
  %found.conflict306 = and i1 %bound0304, %bound1305
  %conflict.rdx307 = or i1 %conflict.rdx303, %found.conflict306
  %bound0308 = icmp ult ptr %i.eb, %scevgep189
  %bound1309 = icmp ult ptr %scevgep187, %scevgep186
  %found.conflict310 = and i1 %bound0308, %bound1309
  %conflict.rdx311 = or i1 %conflict.rdx307, %found.conflict310
  %bound0312 = icmp ult ptr %i.eb, %scevgep190
  %bound1313 = icmp ult ptr %i.ej, %scevgep186
  %found.conflict314 = and i1 %bound0312, %bound1313
  %conflict.rdx315 = or i1 %conflict.rdx311, %found.conflict314
  %bound0316 = icmp ult ptr %i.eb, %scevgep192
  %bound1317 = icmp ult ptr %i.eq, %scevgep186
  %found.conflict318 = and i1 %bound0316, %bound1317
  %conflict.rdx319 = or i1 %conflict.rdx315, %found.conflict318
  %bound0320 = icmp ult ptr %scevgep187, %scevgep190
  %bound1321 = icmp ult ptr %i.ej, %scevgep189
  %found.conflict322 = and i1 %bound0320, %bound1321
  %conflict.rdx323 = or i1 %conflict.rdx319, %found.conflict322
  %bound0324 = icmp ult ptr %scevgep187, %scevgep192
  %bound1325 = icmp ult ptr %i.eq, %scevgep189
  %found.conflict326 = and i1 %bound0324, %bound1325
  %conflict.rdx327 = or i1 %conflict.rdx323, %found.conflict326
  %bound0328 = icmp ult ptr %i.ej, %scevgep192
  %bound1329 = icmp ult ptr %i.eq, %scevgep190
  %found.conflict330 = and i1 %bound0328, %bound1329
  %conflict.rdx331 = or i1 %conflict.rdx327, %found.conflict330
  br i1 %conflict.rdx331, label %.preheader.us.preheader, label %vector.ph334

vector.ph334:                                     ; preds = %vector.memcheck
  %i.fh = load i32, ptr %i.eq, align 4, !tbaa !84, !alias.scope !337
  %broadcast.splatinsert346 = insertelement <4 x i32> poison, i32 %i.fh, i64 0
  %broadcast.splat347 = shufflevector <4 x i32> %broadcast.splatinsert346, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.fi = load i32, ptr %i.eu, align 4, !tbaa !84, !alias.scope !337
  %broadcast.splatinsert352 = insertelement <4 x i32> poison, i32 %i.fi, i64 0
  %broadcast.splat353 = shufflevector <4 x i32> %broadcast.splatinsert352, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body336

vector.body336:                                   ; preds = %vector.body336, %vector.ph334
  %index337 = phi i64 [ 0, %vector.ph334 ], [ %index.next354, %vector.body336 ] ; 9 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %index337
  store <4 x i32> %broadcast.splat347, ptr %i.fj, align 4, !tbaa !84, !alias.scope !338, !noalias !339
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %index337
  store <4 x i32> %broadcast.splat353, ptr %i.fk, align 4, !tbaa !84, !alias.scope !340, !noalias !341
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %index337
  store <4 x i32> %broadcast.splat347, ptr %i.fl, align 4, !tbaa !84, !alias.scope !342, !noalias !343
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %index337
  store <4 x i32> %broadcast.splat353, ptr %i.fm, align 4, !tbaa !84, !alias.scope !344, !noalias !345
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %index337
  store <4 x i32> %broadcast.splat347, ptr %i.fn, align 4, !tbaa !84, !alias.scope !346, !noalias !347
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %index337
  store <4 x i32> %broadcast.splat353, ptr %i.fo, align 4, !tbaa !84, !alias.scope !348, !noalias !349
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %index337
  store <4 x i32> %broadcast.splat347, ptr %i.fp, align 4, !tbaa !84, !alias.scope !350, !noalias !351
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %index337
  store <4 x i32> %broadcast.splat353, ptr %i.fq, align 4, !tbaa !84, !alias.scope !352, !noalias !337
  %index.next354 = add nuw i64 %index337, 4       ; 2 uses
  %i.fr = icmp eq i64 %index.next354, %n.vec335
  br i1 %i.fr, label %middle.block355, label %vector.body336, !llvm.loop !334

middle.block355:                                  ; preds = %vector.body336
  br i1 %cmp.n356, label %..loopexit_crit_edge.us.loopexit, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %vector.memcheck, %.preheader135.us, %middle.block355
  %indvars.iv158.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader135.us ], [ %n.vec335, %middle.block355 ]
  br label %.preheader.us

.lr.ph144.split:                                  ; preds = %.lr.ph144, %bb.f
  %i.fs = phi i32 [ %i.hv, %bb.f ], [ %i.bc, %.lr.ph144 ]
  %i.ft = phi ptr [ %i.hw, %bb.f ], [ %i.bb, %.lr.ph144 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ 0, %.lr.ph144 ] ; 3 uses
  %.0123142 = phi i32 [ %.1124, %bb.f ], [ 0, %.lr.ph144 ] ; 3 uses
  %i.fu = trunc nuw nsw i64 %indvars.iv to i32
  %i.fv = shl nuw i32 1, %i.fu
  %i.fw = load i32, ptr %i.bh, align 8, !tbaa !113
  %i.fx = and i32 %i.fw, %i.fv
  %.not131 = icmp eq i32 %i.fx, 0
  br i1 %.not131, label %bb.f, label %.preheader135

.preheader135:                                    ; preds = %.lr.ph144.split
  %i.fy = getelementptr inbounds nuw [20 x i8], ptr %i.bg, i64 %indvars.iv
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !103 ; 2 uses
  %i.ga = shl nsw i32 %i.fz, 2
  %i.gb = sext i32 %i.fz to i64                   ; 4 uses
  %i.gc = getelementptr inbounds [32 x i8], ptr %i.bi, i64 %i.gb ; 4 uses
  %i.gd = getelementptr inbounds [32 x i8], ptr %i.bj, i64 %i.gb ; 4 uses
  %i.ge = sext i32 %i.ga to i64                   ; 8 uses
  %i.gf = mul nsw i64 %i.ge, %i.ba
  %i.gg = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %i.gf
  store ptr %i.gg, ptr %i.gc, align 8, !tbaa !140
  %i.gh = load ptr, ptr %i.ah, align 8, !tbaa !336
  %i.gi = add nsw i64 %i.ge, 16
  %i.gj = mul nsw i64 %i.gi, %i.ba
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.gh, i64 %i.gj
  store ptr %i.gk, ptr %i.gd, align 8, !tbaa !140
  %i.gl = load ptr, ptr %i.ah, align 8, !tbaa !336 ; 7 uses
  %i.gm = or disjoint i64 %i.ge, 1
  %i.gn = mul nsw i64 %i.gm, %i.ba
  %i.go = getelementptr inbounds [4 x i8], ptr %i.gl, i64 %i.gn
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  store ptr %i.go, ptr %i.gp, align 8, !tbaa !140
  %i.gq = add nsw i64 %i.ge, 17
  %i.gr = mul nsw i64 %i.gq, %i.ba
  %i.gs = getelementptr inbounds [4 x i8], ptr %i.gl, i64 %i.gr
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store ptr %i.gs, ptr %i.gt, align 8, !tbaa !140
  %i.gu = or disjoint i64 %i.ge, 2
  %i.gv = mul nsw i64 %i.gu, %i.ba
  %i.gw = getelementptr inbounds [4 x i8], ptr %i.gl, i64 %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  store ptr %i.gw, ptr %i.gx, align 8, !tbaa !140
  %i.gy = add nsw i64 %i.ge, 18
  %i.gz = mul nsw i64 %i.gy, %i.ba
  %i.ha = getelementptr inbounds [4 x i8], ptr %i.gl, i64 %i.gz
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  store ptr %i.ha, ptr %i.hb, align 8, !tbaa !140
  %i.hc = or disjoint i64 %i.ge, 3
  %i.hd = mul nsw i64 %i.hc, %i.ba
  %i.he = getelementptr inbounds [4 x i8], ptr %i.gl, i64 %i.hd
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  store ptr %i.he, ptr %i.hf, align 8, !tbaa !140
  %i.hg = add nsw i64 %i.ge, 19
  %i.hh = mul nsw i64 %i.hg, %i.ba
  %i.hi = getelementptr inbounds [4 x i8], ptr %i.gl, i64 %i.hh
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  store ptr %i.hi, ptr %i.hj, align 8, !tbaa !140
  %i.hk = add nsw i32 %.0123142, 1
  %i.hl = load i32, ptr %i.bk, align 8, !tbaa !97
  %i.hm = mul nsw i32 %i.hl, %.0123142
  %i.hn = load i32, ptr %i.bl, align 4, !tbaa !115
  %i.ho = icmp eq i32 %i.hn, 1
  %i.hp = select i1 %i.ho, i32 %i.hm, i32 0       ; 2 uses
  %i.hq = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.gb
  store i32 %i.hp, ptr %i.hq, align 4, !tbaa !84
  %i.hr = load i32, ptr %i.bk, align 8, !tbaa !97
  %i.hs = add i32 %i.hr, -1
  %i.ht = add i32 %i.hs, %i.hp
  %i.hu = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.gb
  store i32 %i.ht, ptr %i.hu, align 4, !tbaa !84
  %.pre = load i32, ptr %i.g, align 4, !tbaa !111
  br label %bb.f

bb.f:                                             ; preds = %.preheader135, %.lr.ph144.split
  %i.hv = phi i32 [ %i.fs, %.lr.ph144.split ], [ %.pre, %.preheader135 ] ; 2 uses
  %i.hw = phi ptr [ %i.ft, %.lr.ph144.split ], [ %i.gl, %.preheader135 ]
  %.1124 = phi i32 [ %.0123142, %.lr.ph144.split ], [ %i.hk, %.preheader135 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hx = sext i32 %i.hv to i64
  %i.hy = icmp slt i64 %indvars.iv.next, %i.hx
  br i1 %i.hy, label %.lr.ph144.split, label %._crit_edge145, !llvm.loop !322

._crit_edge145:                                   ; preds = %bb.f, %..loopexit_crit_edge.us, %.preheader136
  %i.hz = getelementptr inbounds nuw i8, ptr %i.f, i64 456
  %i.ia = load i32, ptr %i.hz, align 8, !tbaa !353
  switch i32 %i.ia, label %._crit_edge145._crit_edge [
    i32 0, label %bb.g
    i32 1, label %bb.h
  ]

._crit_edge145._crit_edge:                        ; preds = %._crit_edge145
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre166 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !354
  %.phi.trans.insert167 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %.pre168 = load i32, ptr %.phi.trans.insert167, align 4, !tbaa !355
  br label %bb.k

bb.g:                                             ; preds = %._crit_edge145
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 1, ptr %i.ib, align 8, !tbaa !84
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 1, ptr %.sroa.24.0..sroa_idx, align 4, !tbaa !84
  br label %bb.k

bb.h:                                             ; preds = %._crit_edge145
  %i.ic = load i32, ptr %i.ai, align 8, !tbaa !116
  %.not130 = icmp eq i32 %i.ic, 0
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  br i1 %.not130, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ie = getelementptr inbounds nuw i8, ptr %i.f, i64 376
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !97
  %i.ig = mul nsw i32 %i.if, %spec.select.lcssa   ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !99 ; 2 uses
  store i32 %i.ig, ptr %i.id, align 8, !tbaa !84
  store i32 %i.ii, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !84
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ij = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.ik = load i32, ptr %i.ij, align 8, !tbaa !98 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.f, i64 376
  %i.im = load i32, ptr %i.il, align 8, !tbaa !97
  %i.in = mul nsw i32 %i.im, %spec.select.lcssa   ; 2 uses
  store i32 %i.ik, ptr %i.id, align 8, !tbaa !84
  store i32 %i.in, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !84
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge145._crit_edge, %bb.i, %bb.j, %bb.g
  %i.io = phi i32 [ %.pre168, %._crit_edge145._crit_edge ], [ %i.ii, %bb.i ], [ %i.in, %bb.j ], [ 1, %bb.g ]
  %i.ip = phi i32 [ %.pre166, %._crit_edge145._crit_edge ], [ %i.ig, %bb.i ], [ %i.ik, %bb.j ], [ 1, %bb.g ]
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.is = sext i32 %i.ip to i64
  %i.it = sext i32 %i.io to i64
  %i.iu = tail call i32 @av_reduce(ptr noundef nonnull %i.iq, ptr noundef nonnull %i.ir, i64 noundef %i.is, i64 noundef %i.it, i64 noundef 2147483647) #12 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.thread, %bb.e, %._crit_edge, %bb.k
  %.0 = phi i32 [ -22, %._crit_edge ], [ 0, %bb.k ], [ -12, %bb.e ], [ -22, %._crit_edge.thread ]
  ret i32 %.0
}

declare void @av_freep(ptr noundef) local_unnamed_addr #2

declare ptr @av_malloc_array(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @av_reduce(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @av_default_item_name(ptr noundef) #2

declare i32 @ff_formats_ref(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ff_make_pixel_format_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fmuladd.v16f32(<16 x float>, <16 x float>, <16 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #9

end_hunk_0

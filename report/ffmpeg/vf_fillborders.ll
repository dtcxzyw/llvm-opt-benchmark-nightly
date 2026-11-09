Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_fillborders?download=true
inline.NumInlined: 8
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0_@fade_borders16:bb.a
  %i.ax = sext i32 %i.ak to i64                   ; 2 uses
  %i.ay = zext nneg i32 %i.aj to i64
  %i.az = sext i32 %i.ah to i64
  %wide.trip.count156 = zext nneg i32 %i.aa to i64
  br label %.preheader128

.preheader129:                                    ; preds = %.preheader129.preheader, %._crit_edge
  %indvars.iv148 = phi i64 [ 0, %.preheader129.preheader ], [ %indvars.iv.next149, %._crit_edge ] ; 4 uses
  %i.ba = mul nsw i64 %indvars.iv148, %i.w
  %i.bb = getelementptr [2 x i8], ptr %i.o, i64 %i.ba
  %i.bc = sub nuw nsw i64 %i.aq, %indvars.iv148
  %i.bd = mul nsw i64 %i.ap, %i.bc
  %i.be = sdiv i64 %i.bd, %i.aq
  br label %bb.c

bb.c:                                             ; preds = %.preheader129, %bb.c
  %indvars.iv = phi i64 [ 0, %.preheader129 ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.bf = getelementptr [2 x i8], ptr %i.bb, i64 %indvars.iv ; 2 uses
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !45
  %i.bh = zext i16 %i.bg to i64
  %i.bi = shl i64 %i.bh, %i.l
  %i.bj = mul nsw i64 %i.bi, %indvars.iv148
  %i.bk = sdiv i64 %i.bj, %i.aq
  %i.bl = add nsw i64 %i.bk, %i.be
  %i.bm = ashr i64 %i.bl, %i.l
  %i.bn = trunc i64 %i.bm to i32                  ; 3 uses
  %i.bo = and i32 %notmask.i.i, %i.bn
  %.not.i.i = icmp eq i32 %i.bo, 0
  %isnotneg.inv.i.i = icmp slt i32 %i.bn, 0
  %i.bp = select i1 %isnotneg.inv.i.i, i32 0, i32 %i.m
  %.0.i.i = select i1 %.not.i.i, i32 %i.bn, i32 %i.bp
  %i.bq = trunc i32 %.0.i.i to i16
  store i16 %i.bq, ptr %i.bf, align 2, !tbaa !45
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !164

._crit_edge:                                      ; preds = %bb.c
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1 ; 2 uses
  %exitcond152.not = icmp eq i64 %indvars.iv.next149, %i.aq
  br i1 %exitcond152.not, label %.preheader131, label %.preheader129, !llvm.loop !165

.preheader130:                                    ; preds = %._crit_edge135, %.preheader128.lr.ph, %.preheader131
  %i.br = icmp sgt i32 %i.ah, 0
  br i1 %i.br, label %.preheader127.lr.ph, label %._crit_edge142

.preheader127.lr.ph:                              ; preds = %.preheader130
  %i.bs = icmp sgt i32 %i.y, 0
  %i.bt = and i32 %i.s, 65535
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = shl i64 %i.bu, %i.l                     ; 2 uses
  %i.bw = sext i32 %i.y to i64                    ; 2 uses
  %i.bx = icmp sgt i32 %i.ac, 0
  %i.by = sext i32 %i.ad to i64
  %invariant.gep = getelementptr [2 x i8], ptr %i.o, i64 %i.by
  %i.bz = sext i32 %i.ac to i64                   ; 2 uses
  %i.ca = zext i32 %i.y to i64                    ; 2 uses
  %i.cb = zext i32 %i.ac to i64                   ; 2 uses
  %wide.trip.count174 = zext nneg i32 %i.ah to i64
  br label %.preheader127

.preheader128:                                    ; preds = %.preheader128.preheader, %._crit_edge135
  %indvars.iv158 = phi i64 [ %i.ax, %.preheader128.preheader ], [ %indvars.iv.next159, %._crit_edge135 ] ; 3 uses
  %i.cc = mul nsw i64 %indvars.iv158, %i.w
  %i.cd = getelementptr [2 x i8], ptr %i.o, i64 %i.cc
  %i.ce = sub nsw i64 %indvars.iv158, %i.ax       ; 2 uses
  %i.cf = mul nsw i64 %i.av, %i.ce
  %i.cg = sdiv i64 %i.cf, %i.aw
  %i.ch = sub nsw i64 %i.ay, %i.ce
  br label %bb.d

bb.d:                                             ; preds = %.preheader128, %bb.d
  %indvars.iv153 = phi i64 [ 0, %.preheader128 ], [ %indvars.iv.next154, %bb.d ] ; 2 uses
  %i.ci = getelementptr [2 x i8], ptr %i.cd, i64 %indvars.iv153 ; 2 uses
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !45
  %i.ck = zext i16 %i.cj to i64
  %i.cl = shl i64 %i.ck, %i.l
  %i.cm = mul nsw i64 %i.cl, %i.ch
  %i.cn = sdiv i64 %i.cm, %i.aw
  %i.co = add nsw i64 %i.cn, %i.cg
  %i.cp = ashr i64 %i.co, %i.l
  %i.cq = trunc i64 %i.cp to i32                  ; 3 uses
  %i.cr = and i32 %notmask.i.i, %i.cq
  %.not.i.i116 = icmp eq i32 %i.cr, 0
  %isnotneg.inv.i.i117 = icmp slt i32 %i.cq, 0
  %i.cs = select i1 %isnotneg.inv.i.i117, i32 0, i32 %i.m
  %.0.i.i118 = select i1 %.not.i.i116, i32 %i.cq, i32 %i.cs
  %i.ct = trunc i32 %.0.i.i118 to i16
  store i16 %i.ct, ptr %i.ci, align 2, !tbaa !45
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 1 ; 2 uses
  %exitcond157.not = icmp eq i64 %indvars.iv.next154, %wide.trip.count156
  br i1 %exitcond157.not, label %._crit_edge135, label %bb.d, !llvm.loop !166

._crit_edge135:                                   ; preds = %bb.d
  %indvars.iv.next159 = add nsw i64 %indvars.iv158, 1 ; 2 uses
  %i.cu = icmp slt i64 %indvars.iv.next159, %i.az
  br i1 %i.cu, label %.preheader128, label %.preheader130, !llvm.loop !167

.preheader127:                                    ; preds = %.preheader127.lr.ph, %._crit_edge140
  %indvars.iv171 = phi i64 [ 0, %.preheader127.lr.ph ], [ %indvars.iv.next172, %._crit_edge140 ] ; 3 uses
  br i1 %i.bs, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %.preheader127
  %i.cv = mul nsw i64 %indvars.iv171, %i.w
  %i.cw = getelementptr [2 x i8], ptr %i.o, i64 %i.cv
  br label %bb.e

.preheader:                                       ; preds = %bb.e, %.preheader127
  br i1 %i.bx, label %.lr.ph139, label %._crit_edge140

.lr.ph139:                                        ; preds = %.preheader
  %i.cx = mul nsw i64 %indvars.iv171, %i.w
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.cx
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv161 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next162, %bb.e ] ; 4 uses
  %i.cy = getelementptr [2 x i8], ptr %i.cw, i64 %indvars.iv161 ; 2 uses
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !45
  %i.da = sub nuw nsw i64 %i.ca, %indvars.iv161
  %i.db = mul nsw i64 %i.bv, %i.da
  %i.dc = sdiv i64 %i.db, %i.bw
  %i.dd = zext i16 %i.cz to i64
  %i.de = shl i64 %i.dd, %i.l
  %i.df = mul nsw i64 %i.de, %indvars.iv161
  %i.dg = sdiv i64 %i.df, %i.bw
  %i.dh = add nsw i64 %i.dg, %i.dc
  %i.di = ashr i64 %i.dh, %i.l
  %i.dj = trunc i64 %i.di to i32                  ; 3 uses
  %i.dk = and i32 %notmask.i.i, %i.dj
  %.not.i.i120 = icmp eq i32 %i.dk, 0
  %isnotneg.inv.i.i121 = icmp slt i32 %i.dj, 0
  %i.dl = select i1 %isnotneg.inv.i.i121, i32 0, i32 %i.m
  %.0.i.i122 = select i1 %.not.i.i120, i32 %i.dj, i32 %i.dl
  %i.dm = trunc i32 %.0.i.i122 to i16
  store i16 %i.dm, ptr %i.cy, align 2, !tbaa !45
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1 ; 2 uses
  %exitcond165.not = icmp eq i64 %indvars.iv.next162, %i.ca
  br i1 %exitcond165.not, label %.preheader, label %bb.e, !llvm.loop !168

bb.f:                                             ; preds = %.lr.ph139, %bb.f
  %indvars.iv166 = phi i64 [ 0, %.lr.ph139 ], [ %indvars.iv.next167, %bb.f ] ; 4 uses
  %i.dn = getelementptr [2 x i8], ptr %gep, i64 %indvars.iv166 ; 2 uses
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !45
  %i.dp = mul nsw i64 %i.bv, %indvars.iv166
  %i.dq = sdiv i64 %i.dp, %i.bz
  %i.dr = zext i16 %i.do to i64
  %i.ds = shl i64 %i.dr, %i.l
  %i.dt = sub nuw nsw i64 %i.cb, %indvars.iv166
  %i.du = mul nsw i64 %i.ds, %i.dt
  %i.dv = sdiv i64 %i.du, %i.bz
  %i.dw = add nsw i64 %i.dv, %i.dq
  %i.dx = ashr i64 %i.dw, %i.l
  %i.dy = trunc i64 %i.dx to i32                  ; 3 uses
  %i.dz = and i32 %notmask.i.i, %i.dy
  %.not.i.i124 = icmp eq i32 %i.dz, 0
  %isnotneg.inv.i.i125 = icmp slt i32 %i.dy, 0
  %i.ea = select i1 %isnotneg.inv.i.i125, i32 0, i32 %i.m
  %.0.i.i126 = select i1 %.not.i.i124, i32 %i.dy, i32 %i.ea
  %i.eb = trunc i32 %.0.i.i126 to i16
  store i16 %i.eb, ptr %i.dn, align 2, !tbaa !45
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %exitcond170.not = icmp eq i64 %indvars.iv.next167, %i.cb
  br i1 %exitcond170.not, label %._crit_edge140, label %bb.f, !llvm.loop !169

._crit_edge140:                                   ; preds = %bb.f, %.preheader
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1 ; 2 uses
  %exitcond175.not = icmp eq i64 %indvars.iv.next172, %wide.trip.count174
  br i1 %exitcond175.not, label %._crit_edge142, label %.preheader127, !llvm.loop !170

._crit_edge142:                                   ; preds = %._crit_edge140, %.preheader130
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 1 ; 2 uses
  %exitcond180.not = icmp eq i64 %indvars.iv.next177, %wide.trip.count179
  br i1 %exitcond180.not, label %._crit_edge146, label %bb.b, !llvm.loop !171

._crit_edge146:                                   ; preds = %._crit_edge142, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @margins_borders8(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !33
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph145, label %._crit_edge146

.lr.ph145:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 116
  br label %bb.b

._crit_edge146:                                   ; preds = %._crit_edge142, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph145, %._crit_edge142
  %indvars.iv174 = phi i64 [ 0, %.lr.ph145 ], [ %indvars.iv.next175, %._crit_edge142 ] ; 6 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv174
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !42   ; 11 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv174
  %i.k = load i32, ptr %i.j, align 4, !tbaa !35   ; 2 uses
  %i.l = sext i32 %i.k to i64                     ; 13 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv174 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i32, ptr %i.n, align 4, !tbaa !39   ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !40   ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv174
  %i.s = load i32, ptr %i.r, align 4, !tbaa !35   ; 7 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv174
  %i.u = load i32, ptr %i.t, align 4, !tbaa !35   ; 2 uses
  %i.v = sub nsw i32 %i.u, %i.q                   ; 3 uses
  %i.w = icmp slt i32 %i.o, %i.v
  br i1 %i.w, label %.lr.ph, label %.preheader130

.lr.ph:                                           ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !38
  %i.z = load i32, ptr %i.m, align 4, !tbaa !37
  %i.aa = sext i32 %i.z to i64                    ; 2 uses
  %i.ab = sext i32 %i.s to i64
  %i.ac = sext i32 %i.y to i64                    ; 2 uses
  %i.ad = sub nsw i64 0, %i.ac
  %i.ae = sext i32 %i.o to i64
  %i.af = sext i32 %i.v to i64
  br label %bb.c

.preheader130:                                    ; preds = %bb.c, %bb.b
  %i.ag = icmp sgt i32 %i.o, 0
  br i1 %i.ag, label %.lr.ph137, label %.preheader

.lr.ph137:                                        ; preds = %.preheader130
  %.0125134 = add nsw i32 %i.o, -1                ; 2 uses
  %i.ah = sext i32 %i.s to i64                    ; 8 uses
  %i.ai = icmp sgt i32 %i.s, 9
  %i.aj = zext i32 %.0125134 to i64               ; 5 uses
  %i.ak = zext nneg i32 %i.o to i64               ; 5 uses
  br i1 %i.ai, label %.lr.ph133.us.preheader, label %.loopexit.preheader

.loopexit.preheader:                              ; preds = %.lr.ph137
  %i.al = and i32 %i.o, 1
  %lcmp.mod.not = icmp eq i32 %i.al, 0
  br i1 %lcmp.mod.not, label %.loopexit.prol.loopexit, label %.loopexit.prol

.loopexit.prol:                                   ; preds = %.loopexit.preheader
  %i.am = mul nsw i64 %i.ak, %i.l
  %i.an = getelementptr inbounds i8, ptr %i.i, i64 %i.am ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !41
  %i.ap = mul nsw i64 %i.aj, %i.l
  %i.aq = getelementptr inbounds i8, ptr %i.i, i64 %i.ap ; 2 uses
  store i8 %i.ao, ptr %i.aq, align 1, !tbaa !41
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 %i.ah
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -8
  %i.at = getelementptr inbounds i8, ptr %i.an, i64 %i.ah
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -8
  %i.av = load i64, ptr %i.au, align 1
  store i64 %i.av, ptr %i.as, align 1
  %indvars.iv.next150.prol = add nsw i64 %i.aj, -1
  %indvars.iv.next152.prol = add nsw i64 %i.ak, -1
  br label %.loopexit.prol.loopexit

.loopexit.prol.loopexit:                          ; preds = %.loopexit.prol, %.loopexit.preheader
  %indvars.iv151.unr = phi i64 [ %i.ak, %.loopexit.preheader ], [ %indvars.iv.next152.prol, %.loopexit.prol ]
  %indvars.iv149.unr = phi i64 [ %i.aj, %.loopexit.preheader ], [ %indvars.iv.next150.prol, %.loopexit.prol ]
  %i.aw = icmp eq i32 %.0125134, 0
  br i1 %i.aw, label %.preheader, label %.loopexit

.lr.ph133.us.preheader:                           ; preds = %.lr.ph137
  %i.ax = add nsw i32 %i.s, -8
  %wide.trip.count = zext i32 %i.ax to i64        ; 4 uses
  %i.ay = sub nsw i64 %i.aj, %i.ak
  %i.az = mul i64 %i.ay, %i.l
  %i.ba = add nsw i64 %wide.trip.count, -1        ; 7 uses
  %min.iters.check202 = icmp ult i64 %i.ba, 4
  %conflict.rdx208 = icmp ult i64 %i.az, 17
  %or.cond = select i1 %min.iters.check202, i1 true, i1 %conflict.rdx208
  %min.iters.check210 = icmp ult i64 %i.ba, 16
  %i.bb = and i64 %i.ba, 12
  %n.vec212 = and i64 %i.ba, -16                  ; 4 uses
  %i.bc = or disjoint i64 %n.vec212, 1
  %cmp.n220 = icmp eq i64 %i.ba, %n.vec212
  %min.epilog.iters.check224 = icmp eq i64 %i.bb, 0
  %n.vec227 = and i64 %i.ba, -4                   ; 3 uses
  %i.bd = or disjoint i64 %n.vec227, 1
  %cmp.n235 = icmp eq i64 %i.ba, %n.vec227
  %i.be = and i64 %wide.trip.count, 1
  %lcmp.mod239.not.not = icmp eq i64 %i.be, 0
  %i.bf = add nsw i64 %wide.trip.count, -1
  br label %iter.check221

iter.check221:                                    ; preds = %.lr.ph133.us.preheader, %..loopexit_crit_edge.us
  %indvars.iv161 = phi i64 [ %i.ak, %.lr.ph133.us.preheader ], [ %indvars.iv.next162, %..loopexit_crit_edge.us ] ; 2 uses
  %indvars.iv159 = phi i64 [ %i.aj, %.lr.ph133.us.preheader ], [ %indvars.iv.next160, %..loopexit_crit_edge.us ] ; 3 uses
  %i.bg = mul nsw i64 %indvars.iv161, %i.l
  %i.bh = getelementptr i8, ptr %i.i, i64 %i.bg   ; 8 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !41
  %i.bj = mul nsw i64 %indvars.iv159, %i.l
  %i.bk = getelementptr inbounds i8, ptr %i.i, i64 %i.bj ; 7 uses
  store i8 %i.bi, ptr %i.bk, align 1, !tbaa !41
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.ah
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ah
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -8
  %i.bp = load i64, ptr %i.bo, align 1
  store i64 %i.bp, ptr %i.bm, align 1
  br i1 %or.cond, label %vec.epilog.scalar.ph223.preheader, label %vector.main.loop.iter.check209

vector.main.loop.iter.check209:                   ; preds = %iter.check221
  br i1 %min.iters.check210, label %vec.epilog.ph225, label %vector.body213

vector.body213:                                   ; preds = %vector.main.loop.iter.check209, %vector.body213
  %index214 = phi i64 [ %index.next218, %vector.body213 ], [ 0, %vector.main.loop.iter.check209 ] ; 2 uses
  %i.bq = or disjoint i64 %index214, 1            ; 2 uses
  %i.br = getelementptr i8, ptr %i.bh, i64 %i.bq  ; 3 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 -1
  %wide.load215 = load <16 x i8>, ptr %i.bs, align 1, !tbaa !41
  %i.bt = zext <16 x i8> %wide.load215 to <16 x i16>
  %wide.load216 = load <16 x i8>, ptr %i.br, align 1, !tbaa !41
  %i.bu = zext <16 x i8> %wide.load216 to <16 x i16>
  %i.bv = getelementptr i8, ptr %i.br, i64 1
  %wide.load217 = load <16 x i8>, ptr %i.bv, align 1, !tbaa !41
  %i.bw = zext <16 x i8> %wide.load217 to <16 x i16>
  %i.bx = shl nuw nsw <16 x i16> %i.bu, splat (i16 1)
  %i.by = add nuw nsw <16 x i16> %i.bw, %i.bt
  %i.bz = mul nuw nsw <16 x i16> %i.by, splat (i16 3)
  %i.ca = add nuw nsw <16 x i16> %i.bx, splat (i16 4)
  %i.cb = add nuw nsw <16 x i16> %i.ca, %i.bz
  %i.cc = lshr <16 x i16> %i.cb, splat (i16 3)
  %i.cd = trunc nuw <16 x i16> %i.cc to <16 x i8>
  %i.ce = getelementptr i8, ptr %i.bk, i64 %i.bq
  store <16 x i8> %i.cd, ptr %i.ce, align 1, !tbaa !41
  %index.next218 = add nuw i64 %index214, 16      ; 2 uses
  %i.cf = icmp eq i64 %index.next218, %n.vec212
  br i1 %i.cf, label %middle.block219, label %vector.body213, !llvm.loop !172

middle.block219:                                  ; preds = %vector.body213
  br i1 %cmp.n220, label %..loopexit_crit_edge.us, label %vec.epilog.iter.check222

vec.epilog.iter.check222:                         ; preds = %middle.block219
  br i1 %min.epilog.iters.check224, label %vec.epilog.scalar.ph223.preheader, label %vec.epilog.ph225, !prof !48

vec.epilog.ph225:                                 ; preds = %vector.main.loop.iter.check209, %vec.epilog.iter.check222
  %vec.epilog.resume.val226 = phi i64 [ %n.vec212, %vec.epilog.iter.check222 ], [ 0, %vector.main.loop.iter.check209 ]
  br label %vec.epilog.vector.body228

vec.epilog.vector.body228:                        ; preds = %vec.epilog.vector.body228, %vec.epilog.ph225
  %index229 = phi i64 [ %vec.epilog.resume.val226, %vec.epilog.ph225 ], [ %index.next233, %vec.epilog.vector.body228 ] ; 2 uses
  %i.cg = or disjoint i64 %index229, 1            ; 2 uses
  %i.ch = getelementptr i8, ptr %i.bh, i64 %i.cg  ; 3 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 -1
  %wide.load230 = load <4 x i8>, ptr %i.ci, align 1, !tbaa !41
  %i.cj = zext <4 x i8> %wide.load230 to <4 x i16>
  %wide.load231 = load <4 x i8>, ptr %i.ch, align 1, !tbaa !41
  %i.ck = zext <4 x i8> %wide.load231 to <4 x i16>
  %i.cl = getelementptr i8, ptr %i.ch, i64 1
  %wide.load232 = load <4 x i8>, ptr %i.cl, align 1, !tbaa !41
  %i.cm = zext <4 x i8> %wide.load232 to <4 x i16>
  %i.cn = shl nuw nsw <4 x i16> %i.ck, splat (i16 1)
  %i.co = add nuw nsw <4 x i16> %i.cm, %i.cj
  %i.cp = mul nuw nsw <4 x i16> %i.co, splat (i16 3)
  %i.cq = add nuw nsw <4 x i16> %i.cn, splat (i16 4)
  %i.cr = add nuw nsw <4 x i16> %i.cq, %i.cp
  %i.cs = lshr <4 x i16> %i.cr, splat (i16 3)
  %i.ct = trunc nuw <4 x i16> %i.cs to <4 x i8>
  %i.cu = getelementptr i8, ptr %i.bk, i64 %i.cg
  store <4 x i8> %i.ct, ptr %i.cu, align 1, !tbaa !41
  %index.next233 = add nuw i64 %index229, 4       ; 2 uses
  %i.cv = icmp eq i64 %index.next233, %n.vec227
  br i1 %i.cv, label %vec.epilog.middle.block234, label %vec.epilog.vector.body228, !llvm.loop !173

vec.epilog.middle.block234:                       ; preds = %vec.epilog.vector.body228
  br i1 %cmp.n235, label %..loopexit_crit_edge.us, label %vec.epilog.scalar.ph223.preheader

vec.epilog.scalar.ph223.preheader:                ; preds = %iter.check221, %vec.epilog.iter.check222, %vec.epilog.middle.block234
  %indvars.iv156.ph = phi i64 [ 1, %iter.check221 ], [ %i.bc, %vec.epilog.iter.check222 ], [ %i.bd, %vec.epilog.middle.block234 ] ; 5 uses
  br i1 %lcmp.mod239.not.not, label %vec.epilog.scalar.ph223.prol, label %vec.epilog.scalar.ph223.prol.loopexit

vec.epilog.scalar.ph223.prol:                     ; preds = %vec.epilog.scalar.ph223.preheader
  %i.cw = getelementptr i8, ptr %i.bh, i64 %indvars.iv156.ph ; 3 uses
  %i.cx = getelementptr i8, ptr %i.cw, i64 -1
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !41
  %i.cz = zext i8 %i.cy to i16
  %i.da = load i8, ptr %i.cw, align 1, !tbaa !41
  %i.db = zext i8 %i.da to i16
  %i.dc = getelementptr i8, ptr %i.cw, i64 1
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !41
  %i.de = zext i8 %i.dd to i16
  %i.df = shl nuw nsw i16 %i.db, 1
  %reass.add128.us.prol = add nuw nsw i16 %i.de, %i.cz
  %reass.mul129.us.prol = mul nuw nsw i16 %reass.add128.us.prol, 3
  %i.dg = add nuw nsw i16 %i.df, 4
  %i.dh = add nuw nsw i16 %i.dg, %reass.mul129.us.prol
  %i.di = lshr i16 %i.dh, 3
  %i.dj = trunc nuw i16 %i.di to i8
  %i.dk = getelementptr i8, ptr %i.bk, i64 %indvars.iv156.ph
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !41
  %indvars.iv.next157.prol = add nuw nsw i64 %indvars.iv156.ph, 1
  br label %vec.epilog.scalar.ph223.prol.loopexit

vec.epilog.scalar.ph223.prol.loopexit:            ; preds = %vec.epilog.scalar.ph223.prol, %vec.epilog.scalar.ph223.preheader
  %indvars.iv156.unr = phi i64 [ %indvars.iv156.ph, %vec.epilog.scalar.ph223.preheader ], [ %indvars.iv.next157.prol, %vec.epilog.scalar.ph223.prol ]
  %i.dl = icmp eq i64 %indvars.iv156.ph, %i.bf
  br i1 %i.dl, label %..loopexit_crit_edge.us, label %vec.epilog.scalar.ph223

vec.epilog.scalar.ph223:                          ; preds = %vec.epilog.scalar.ph223.prol.loopexit, %vec.epilog.scalar.ph223
  %indvars.iv156 = phi i64 [ %indvars.iv.next157.1, %vec.epilog.scalar.ph223 ], [ %indvars.iv156.unr, %vec.epilog.scalar.ph223.prol.loopexit ] ; 5 uses
  %i.dm = getelementptr i8, ptr %i.bh, i64 %indvars.iv156 ; 3 uses
  %i.dn = getelementptr i8, ptr %i.dm, i64 -1
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !41
  %i.dp = zext i8 %i.do to i16
  %i.dq = load i8, ptr %i.dm, align 1, !tbaa !41
  %i.dr = zext i8 %i.dq to i16
  %i.ds = getelementptr i8, ptr %i.dm, i64 1
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !41
  %i.du = zext i8 %i.dt to i16
  %i.dv = shl nuw nsw i16 %i.dr, 1
  %reass.add128.us = add nuw nsw i16 %i.du, %i.dp
  %reass.mul129.us = mul nuw nsw i16 %reass.add128.us, 3
  %i.dw = add nuw nsw i16 %i.dv, 4
  %i.dx = add nuw nsw i16 %i.dw, %reass.mul129.us
  %i.dy = lshr i16 %i.dx, 3
  %i.dz = trunc nuw i16 %i.dy to i8
  %i.ea = getelementptr i8, ptr %i.bk, i64 %indvars.iv156
  store i8 %i.dz, ptr %i.ea, align 1, !tbaa !41
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1 ; 2 uses
  %i.eb = getelementptr i8, ptr %i.bh, i64 %indvars.iv.next157 ; 2 uses
  %i.ec = getelementptr i8, ptr %i.bh, i64 %indvars.iv156
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !41
  %i.ee = zext i8 %i.ed to i16
  %i.ef = load i8, ptr %i.eb, align 1, !tbaa !41
  %i.eg = zext i8 %i.ef to i16
  %i.eh = getelementptr i8, ptr %i.eb, i64 1
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !41
  %i.ej = zext i8 %i.ei to i16
  %i.ek = shl nuw nsw i16 %i.eg, 1
  %reass.add128.us.1 = add nuw nsw i16 %i.ej, %i.ee
  %reass.mul129.us.1 = mul nuw nsw i16 %reass.add128.us.1, 3
  %i.el = add nuw nsw i16 %i.ek, 4
  %i.em = add nuw nsw i16 %i.el, %reass.mul129.us.1
  %i.en = lshr i16 %i.em, 3
  %i.eo = trunc nuw i16 %i.en to i8
  %i.ep = getelementptr i8, ptr %i.bk, i64 %indvars.iv.next157
  store i8 %i.eo, ptr %i.ep, align 1, !tbaa !41
  %indvars.iv.next157.1 = add nuw nsw i64 %indvars.iv156, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next157.1, %wide.trip.count
  br i1 %exitcond.not.1, label %..loopexit_crit_edge.us, label %vec.epilog.scalar.ph223, !llvm.loop !174

..loopexit_crit_edge.us:                          ; preds = %vec.epilog.scalar.ph223.prol.loopexit, %vec.epilog.scalar.ph223, %vec.epilog.middle.block234, %middle.block219
  %indvars.iv.next160 = add nsw i64 %indvars.iv159, -1
  %i.eq = icmp sgt i64 %indvars.iv159, 0
  %indvars.iv.next162 = add nsw i64 %indvars.iv161, -1
  br i1 %i.eq, label %iter.check221, label %.preheader, !llvm.loop !175

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.ae, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.er = mul nsw i64 %indvars.iv, %i.l
  %i.es = getelementptr inbounds i8, ptr %i.i, i64 %i.er ; 3 uses
  %i.et = getelementptr i8, ptr %i.es, i64 %i.aa
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !41
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.es, i8 %i.eu, i64 %i.aa, i1 false)
  %i.ev = getelementptr inbounds i8, ptr %i.es, i64 %i.ab
  %i.ew = getelementptr inbounds i8, ptr %i.ev, i64 %i.ad ; 2 uses
  %i.ex = getelementptr inbounds i8, ptr %i.ew, i64 -1
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !41
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ew, i8 %i.ey, i64 %i.ac, i1 false)
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ez = icmp slt i64 %indvars.iv.next, %i.af
  br i1 %i.ez, label %bb.c, label %.preheader130, !llvm.loop !176

.preheader:                                       ; preds = %.loopexit.prol.loopexit, %.loopexit, %..loopexit_crit_edge.us, %.preheader130
  %i.fa = icmp sgt i32 %i.q, 0
  br i1 %i.fa, label %.lr.ph141, label %._crit_edge142

.lr.ph141:                                        ; preds = %.preheader
  %i.fb = sext i32 %i.s to i64                    ; 2 uses
  %i.fc = add i32 %i.s, -8
  %i.fd = icmp sgt i32 %i.s, 9
  %i.fe = sext i32 %i.v to i64
  %i.ff = sext i32 %i.u to i64
  %wide.trip.count169.a = zext i32 %i.fc to i64   ; 4 uses
  %i.fg = add nsw i64 %wide.trip.count169.a, -1   ; 7 uses
  %min.iters.check.a = icmp ult i64 %i.fg, 4
  %diff.check = icmp ult i32 %i.k, 15
  %2 = add nsw i64 %i.l, -1
  %3 = icmp ult i64 %2, 16
  %conflict.rdx185 = or i1 %diff.check, %3
  %min.iters.check186 = icmp ult i64 %i.fg, 16
  %i.fh = and i64 %i.fg, 12
  %n.vec = and i64 %i.fg, -16                     ; 4 uses
  %i.fi = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.fg, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.fh, 0
  %n.vec189 = and i64 %i.fg, -4                   ; 3 uses
  %i.fj = or disjoint i64 %n.vec189, 1
  %cmp.n195 = icmp eq i64 %i.fg, %n.vec189
  %i.fk = and i64 %wide.trip.count169.a, 1
  %lcmp.mod241.not.not = icmp eq i64 %i.fk, 0
  %i.fl = add nsw i64 %wide.trip.count169.a, -1
  br label %bb.d

.loopexit:                                        ; preds = %.loopexit.prol.loopexit, %.loopexit
  %indvars.iv151 = phi i64 [ %indvars.iv.next152.1, %.loopexit ], [ %indvars.iv151.unr, %.loopexit.prol.loopexit ] ; 3 uses
  %indvars.iv149 = phi i64 [ %indvars.iv.next150.1, %.loopexit ], [ %indvars.iv149.unr, %.loopexit.prol.loopexit ] ; 3 uses
  %i.fm = mul nsw i64 %indvars.iv151, %i.l
  %i.fn = getelementptr inbounds i8, ptr %i.i, i64 %i.fm ; 2 uses
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !41
  %i.fp = mul nsw i64 %indvars.iv149, %i.l
  %i.fq = getelementptr inbounds i8, ptr %i.i, i64 %i.fp ; 2 uses
  store i8 %i.fo, ptr %i.fq, align 1, !tbaa !41
  %i.fr = getelementptr inbounds i8, ptr %i.fq, i64 %i.ah
  %i.fs = getelementptr inbounds i8, ptr %i.fr, i64 -8
  %i.ft = getelementptr inbounds i8, ptr %i.fn, i64 %i.ah
  %i.fu = getelementptr inbounds i8, ptr %i.ft, i64 -8
  %i.fv = load i64, ptr %i.fu, align 1
  store i64 %i.fv, ptr %i.fs, align 1
  %indvars.iv.next150 = add nsw i64 %indvars.iv149, -1 ; 2 uses
  %indvars.iv.next152 = add nsw i64 %indvars.iv151, -1
  %i.fw = mul nsw i64 %indvars.iv.next152, %i.l
  %i.fx = getelementptr inbounds i8, ptr %i.i, i64 %i.fw ; 2 uses
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !41
  %i.fz = mul nsw i64 %indvars.iv.next150, %i.l
  %i.ga = getelementptr inbounds i8, ptr %i.i, i64 %i.fz ; 2 uses
  store i8 %i.fy, ptr %i.ga, align 1, !tbaa !41
  %i.gb = getelementptr inbounds i8, ptr %i.ga, i64 %i.ah
  %i.gc = getelementptr inbounds i8, ptr %i.gb, i64 -8
  %i.gd = getelementptr inbounds i8, ptr %i.fx, i64 %i.ah
  %i.ge = getelementptr inbounds i8, ptr %i.gd, i64 -8
  %i.gf = load i64, ptr %i.ge, align 1
  store i64 %i.gf, ptr %i.gc, align 1
  %indvars.iv.next150.1 = add nsw i64 %indvars.iv149, -2
  %.not.1 = icmp eq i64 %indvars.iv.next150, 0
  %indvars.iv.next152.1 = add nsw i64 %indvars.iv151, -2
  br i1 %.not.1, label %.preheader, label %.loopexit, !llvm.loop !175

._crit_edge142:                                   ; preds = %._crit_edge, %.preheader
  %indvars.iv.next175 = add nuw nsw i64 %indvars.iv174, 1 ; 2 uses
  %i.gg = load i32, ptr %i.a, align 4, !tbaa !33
  %i.gh = sext i32 %i.gg to i64
  %i.gi = icmp slt i64 %indvars.iv.next175, %i.gh
  br i1 %i.gi, label %bb.b, label %._crit_edge146, !llvm.loop !177

bb.d:                                             ; preds = %.lr.ph141, %._crit_edge
  %indvars.iv171 = phi i64 [ %i.fe, %.lr.ph141 ], [ %indvars.iv.next172, %._crit_edge ] ; 3 uses
  %i.gj = add nsw i64 %indvars.iv171, -1
  %i.gk = mul nsw i64 %i.gj, %i.l
  %i.gl = getelementptr i8, ptr %i.i, i64 %i.gk   ; 8 uses
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !41
  %i.gn = mul nsw i64 %indvars.iv171, %i.l
  %i.go = getelementptr inbounds i8, ptr %i.i, i64 %i.gn ; 7 uses
  store i8 %i.gm, ptr %i.go, align 1, !tbaa !41
  %i.gp = getelementptr inbounds i8, ptr %i.go, i64 %i.fb
  %i.gq = getelementptr inbounds i8, ptr %i.gp, i64 -8
  %i.gr = getelementptr inbounds i8, ptr %i.gl, i64 %i.fb
  %i.gs = getelementptr inbounds i8, ptr %i.gr, i64 -8
  %i.gt = load i64, ptr %i.gs, align 1
  store i64 %i.gt, ptr %i.gq, align 1
  br i1 %i.fd, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.d
  %brmerge.a = select i1 %min.iters.check.a, i1 true, i1 %conflict.rdx185
  br i1 %brmerge.a, label %.lr.ph139.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check186, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.gu = or disjoint i64 %index, 1               ; 2 uses
  %i.gv = getelementptr i8, ptr %i.gl, i64 %i.gu  ; 3 uses
  %i.gw = getelementptr i8, ptr %i.gv, i64 -1
  %wide.load = load <16 x i8>, ptr %i.gw, align 1, !tbaa !41
  %i.gx = zext <16 x i8> %wide.load to <16 x i16>
  %wide.load187 = load <16 x i8>, ptr %i.gv, align 1, !tbaa !41
  %i.gy = zext <16 x i8> %wide.load187 to <16 x i16>
  %i.gz = getelementptr i8, ptr %i.gv, i64 1
  %wide.load188 = load <16 x i8>, ptr %i.gz, align 1, !tbaa !41
  %i.ha = zext <16 x i8> %wide.load188 to <16 x i16>
  %i.hb = shl nuw nsw <16 x i16> %i.gy, splat (i16 1)
  %i.hc = add nuw nsw <16 x i16> %i.ha, %i.gx
  %i.hd = mul nuw nsw <16 x i16> %i.hc, splat (i16 3)
  %i.he = add nuw nsw <16 x i16> %i.hb, splat (i16 4)
  %i.hf = add nuw nsw <16 x i16> %i.he, %i.hd
  %i.hg = lshr <16 x i16> %i.hf, splat (i16 3)
  %i.hh = trunc nuw <16 x i16> %i.hg to <16 x i8>
  %i.hi = getelementptr i8, ptr %i.go, i64 %i.gu
  store <16 x i8> %i.hh, ptr %i.hi, align 1, !tbaa !41
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.hj = icmp eq i64 %index.next, %n.vec
  br i1 %i.hj, label %middle.block, label %vector.body, !llvm.loop !178

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph139.preheader, label %vec.epilog.ph, !prof !48

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index190 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next194, %vec.epilog.vector.body ] ; 2 uses
  %i.hk = or disjoint i64 %index190, 1            ; 2 uses
  %i.hl = getelementptr i8, ptr %i.gl, i64 %i.hk  ; 3 uses
  %i.hm = getelementptr i8, ptr %i.hl, i64 -1
  %wide.load191 = load <4 x i8>, ptr %i.hm, align 1, !tbaa !41
  %i.hn = zext <4 x i8> %wide.load191 to <4 x i16>
  %wide.load192 = load <4 x i8>, ptr %i.hl, align 1, !tbaa !41
  %i.ho = zext <4 x i8> %wide.load192 to <4 x i16>
  %i.hp = getelementptr i8, ptr %i.hl, i64 1
  %wide.load193 = load <4 x i8>, ptr %i.hp, align 1, !tbaa !41
  %i.hq = zext <4 x i8> %wide.load193 to <4 x i16>
  %i.hr = shl nuw nsw <4 x i16> %i.ho, splat (i16 1)
  %i.hs = add nuw nsw <4 x i16> %i.hq, %i.hn
  %i.ht = mul nuw nsw <4 x i16> %i.hs, splat (i16 3)
  %i.hu = add nuw nsw <4 x i16> %i.hr, splat (i16 4)
  %i.hv = add nuw nsw <4 x i16> %i.hu, %i.ht
  %i.hw = lshr <4 x i16> %i.hv, splat (i16 3)
  %i.hx = trunc nuw <4 x i16> %i.hw to <4 x i8>
  %i.hy = getelementptr i8, ptr %i.go, i64 %i.hk
  store <4 x i8> %i.hx, ptr %i.hy, align 1, !tbaa !41
  %index.next194 = add nuw i64 %index190, 4       ; 2 uses
  %i.hz = icmp eq i64 %index.next194, %n.vec189
  br i1 %i.hz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !179

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n195, label %._crit_edge, label %.lr.ph139.preheader

.lr.ph139.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv166.ph = phi i64 [ 1, %iter.check ], [ %i.fj, %vec.epilog.middle.block ], [ %i.fi, %vec.epilog.iter.check ] ; 5 uses
  br i1 %lcmp.mod241.not.not, label %.lr.ph139.prol, label %.lr.ph139.prol.loopexit

.lr.ph139.prol:                                   ; preds = %.lr.ph139.preheader
  %i.ia = getelementptr i8, ptr %i.gl, i64 %indvars.iv166.ph ; 3 uses
  %i.ib = getelementptr i8, ptr %i.ia, i64 -1
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !41
  %i.id = zext i8 %i.ic to i16
  %i.ie = load i8, ptr %i.ia, align 1, !tbaa !41
  %i.if = zext i8 %i.ie to i16
  %i.ig = getelementptr i8, ptr %i.ia, i64 1
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !41
  %i.ii = zext i8 %i.ih to i16
  %i.ij = shl nuw nsw i16 %i.if, 1
  %reass.add.prol = add nuw nsw i16 %i.ii, %i.id
  %reass.mul.prol = mul nuw nsw i16 %reass.add.prol, 3
  %i.ik = add nuw nsw i16 %i.ij, 4
  %i.il = add nuw nsw i16 %i.ik, %reass.mul.prol
  %i.im = lshr i16 %i.il, 3
  %i.in = trunc nuw i16 %i.im to i8
  %i.io = getelementptr i8, ptr %i.go, i64 %indvars.iv166.ph
  store i8 %i.in, ptr %i.io, align 1, !tbaa !41
  %indvars.iv.next167.prol = add nuw nsw i64 %indvars.iv166.ph, 1
  br label %.lr.ph139.prol.loopexit

.lr.ph139.prol.loopexit:                          ; preds = %.lr.ph139.prol, %.lr.ph139.preheader
  %indvars.iv166.unr = phi i64 [ %indvars.iv166.ph, %.lr.ph139.preheader ], [ %indvars.iv.next167.prol, %.lr.ph139.prol ]
  %i.ip = icmp eq i64 %indvars.iv166.ph, %i.fl
  br i1 %i.ip, label %._crit_edge, label %.lr.ph139

._crit_edge:                                      ; preds = %.lr.ph139.prol.loopexit, %.lr.ph139, %middle.block, %vec.epilog.middle.block, %bb.d
  %indvars.iv.next172 = add nsw i64 %indvars.iv171, 1 ; 2 uses
  %i.iq = icmp slt i64 %indvars.iv.next172, %i.ff
  br i1 %i.iq, label %bb.d, label %._crit_edge142, !llvm.loop !180

.lr.ph139:                                        ; preds = %.lr.ph139.prol.loopexit, %.lr.ph139
  %indvars.iv166 = phi i64 [ %indvars.iv.next167.1, %.lr.ph139 ], [ %indvars.iv166.unr, %.lr.ph139.prol.loopexit ] ; 5 uses
  %i.ir = getelementptr i8, ptr %i.gl, i64 %indvars.iv166 ; 3 uses
  %i.is = getelementptr i8, ptr %i.ir, i64 -1
  %i.it = load i8, ptr %i.is, align 1, !tbaa !41
  %i.iu = zext i8 %i.it to i16
  %i.iv = load i8, ptr %i.ir, align 1, !tbaa !41
  %i.iw = zext i8 %i.iv to i16
  %i.ix = getelementptr i8, ptr %i.ir, i64 1
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !41
  %i.iz = zext i8 %i.iy to i16
  %i.ja = shl nuw nsw i16 %i.iw, 1
  %reass.add = add nuw nsw i16 %i.iz, %i.iu
  %reass.mul = mul nuw nsw i16 %reass.add, 3
  %i.jb = add nuw nsw i16 %i.ja, 4
  %i.jc = add nuw nsw i16 %i.jb, %reass.mul
  %i.jd = lshr i16 %i.jc, 3
  %i.je = trunc nuw i16 %i.jd to i8
  %i.jf = getelementptr i8, ptr %i.go, i64 %indvars.iv166
  store i8 %i.je, ptr %i.jf, align 1, !tbaa !41
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %i.jg = getelementptr i8, ptr %i.gl, i64 %indvars.iv.next167 ; 2 uses
  %i.jh = getelementptr i8, ptr %i.gl, i64 %indvars.iv166
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !41
  %i.jj = zext i8 %i.ji to i16
  %i.jk = load i8, ptr %i.jg, align 1, !tbaa !41
  %i.jl = zext i8 %i.jk to i16
  %i.jm = getelementptr i8, ptr %i.jg, i64 1
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !41
  %i.jo = zext i8 %i.jn to i16
  %i.jp = shl nuw nsw i16 %i.jl, 1
  %reass.add.1 = add nuw nsw i16 %i.jo, %i.jj
  %reass.mul.1 = mul nuw nsw i16 %reass.add.1, 3
  %i.jq = add nuw nsw i16 %i.jp, 4
  %i.jr = add nuw nsw i16 %i.jq, %reass.mul.1
  %i.js = lshr i16 %i.jr, 3
  %i.jt = trunc nuw i16 %i.js to i8
  %i.ju = getelementptr i8, ptr %i.go, i64 %indvars.iv.next167
  store i8 %i.jt, ptr %i.ju, align 1, !tbaa !41
  %indvars.iv.next167.1 = add nuw nsw i64 %indvars.iv166, 2 ; 2 uses
  %exitcond170.not.1 = icmp eq i64 %indvars.iv.next167.1, %wide.trip.count169.a
  br i1 %exitcond170.not.1, label %._crit_edge, label %.lr.ph139, !llvm.loop !181
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @margins_borders16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !33
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph159, label %._crit_edge160

.lr.ph159:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 116
  br label %bb.b

._crit_edge160:                                   ; preds = %._crit_edge156, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph159, %._crit_edge156
  %indvars.iv195 = phi i64 [ 0, %.lr.ph159 ], [ %indvars.iv.next196, %._crit_edge156 ] ; 6 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv195
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !42   ; 7 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv195
  %i.k = load i32, ptr %i.j, align 4, !tbaa !35
  %i.l = sdiv i32 %i.k, 2
  %i.m = sext i32 %i.l to i64                     ; 9 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv195 ; 4 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !37   ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !38   ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !39   ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !40   ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv195
  %i.w = load i32, ptr %i.v, align 4, !tbaa !35   ; 7 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv195
  %i.y = load i32, ptr %i.x, align 4, !tbaa !35   ; 2 uses
  %i.z = sub nsw i32 %i.y, %i.u                   ; 4 uses
  %i.aa = icmp slt i32 %i.s, %i.z
  br i1 %i.aa, label %.preheader140.lr.ph, label %.preheader142

.preheader140.lr.ph:                              ; preds = %bb.b
  %i.ab = icmp sgt i32 %i.o, 0                    ; 2 uses
  %i.ac = sext i32 %i.o to i64                    ; 2 uses
  %i.ad = icmp sgt i32 %i.q, 0
  br i1 %i.ad, label %.preheader140.us.preheader, label %.preheader140.lr.ph.split

.preheader140.us.preheader:                       ; preds = %.preheader140.lr.ph
  %i.ae = sext i32 %i.w to i64
  %i.af = zext nneg i32 %i.q to i64
  %i.ag = sub nsw i64 %i.ae, %i.af
  %i.ah = sext i32 %i.s to i64
  %i.ai = sext i32 %i.z to i64
  %wide.trip.count169 = zext i32 %i.o to i64      ; 6 uses
  %i.aj = getelementptr [2 x i8], ptr %i.i, i64 %i.ag
  %wide.trip.count174 = zext nneg i32 %i.q to i64 ; 6 uses
  %min.iters.check258 = icmp ult i32 %i.o, 4
  %min.iters.check260 = icmp ult i32 %i.o, 16
  %i.ak = and i64 %wide.trip.count169, 12
  %n.vec262 = and i64 %wide.trip.count169, 2147483632 ; 4 uses
  %cmp.n269.a = icmp eq i64 %n.vec262, %wide.trip.count169
  %min.epilog.iters.check273 = icmp eq i64 %i.ak, 0
  %n.vec276 = and i64 %wide.trip.count169, 2147483644 ; 3 uses
  %cmp.n283 = icmp eq i64 %n.vec276, %wide.trip.count169
  %min.iters.check241 = icmp ult i32 %i.q, 4
  %min.iters.check242 = icmp ult i32 %i.q, 16
  %i.al = and i64 %wide.trip.count174, 12
  %n.vec244.a = and i64 %wide.trip.count174, 2147483632 ; 4 uses
  %cmp.n249 = icmp eq i64 %n.vec244.a, %wide.trip.count174
  %min.epilog.iters.check = icmp eq i64 %i.al, 0
  %n.vec250 = and i64 %wide.trip.count174, 2147483644 ; 3 uses
  %cmp.n255 = icmp eq i64 %n.vec250, %wide.trip.count174
  br label %.preheader140.us

.preheader140.us:                                 ; preds = %.preheader140.us.preheader, %._crit_edge.us
  %indvars.iv176 = phi i64 [ %i.ah, %.preheader140.us.preheader ], [ %indvars.iv.next177, %._crit_edge.us ] ; 2 uses
  %i.am = mul nsw i64 %indvars.iv176, %i.m        ; 2 uses
  br i1 %i.ab, label %iter.check270, label %iter.check

vec.epilog.scalar.ph272:                          ; preds = %vec.epilog.scalar.ph272.preheader, %vec.epilog.scalar.ph272
  %indvars.iv166 = phi i64 [ %indvars.iv.next167, %vec.epilog.scalar.ph272 ], [ %indvars.iv166.ph, %vec.epilog.scalar.ph272.preheader ] ; 2 uses
  %i.an = getelementptr [2 x i8], ptr %i.aw, i64 %indvars.iv166
  store i16 %.pre198, ptr %i.an, align 2, !tbaa !45
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %exitcond170.not = icmp eq i64 %indvars.iv.next167, %wide.trip.count169
  br i1 %exitcond170.not, label %iter.check, label %vec.epilog.scalar.ph272, !llvm.loop !182

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv171 = phi i64 [ %indvars.iv.next172, %vec.epilog.scalar.ph ], [ %indvars.iv171.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ao = getelementptr [2 x i8], ptr %i.ap, i64 %indvars.iv171
  store i16 %.pre199, ptr %i.ao, align 2, !tbaa !45
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1 ; 2 uses
  %exitcond175.not = icmp eq i64 %indvars.iv.next172, %wide.trip.count174
  br i1 %exitcond175.not, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !183

iter.check:                                       ; preds = %vec.epilog.scalar.ph272, %middle.block268, %vec.epilog.middle.block282, %.preheader140.us
  %i.ap = getelementptr [2 x i8], ptr %i.aj, i64 %i.am ; 4 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 -2
  %.pre199 = load i16, ptr %i.aq, align 2, !tbaa !45 ; 3 uses
  br i1 %min.iters.check241, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check242, label %vec.epilog.ph, label %vector.ph243

vector.ph243:                                     ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %.pre199, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body245.a

vector.body245.a:                                 ; preds = %vector.ph243, %vector.body245.a
  %index246.a = phi i64 [ 0, %vector.ph243 ], [ %index.next247, %vector.body245.a ] ; 2 uses
  %i.ar = getelementptr [2 x i8], ptr %i.ap, i64 %index246.a ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 16
  store <8 x i16> %broadcast.splat, ptr %i.ar, align 2, !tbaa !45
  store <8 x i16> %broadcast.splat, ptr %i.as, align 2, !tbaa !45
  %index.next247 = add nuw i64 %index246.a, 16    ; 2 uses
  %i.at = icmp eq i64 %index.next247, %n.vec244.a
  br i1 %i.at, label %middle.block248, label %vector.body245.a, !llvm.loop !184

middle.block248:                                  ; preds = %vector.body245.a
  br i1 %cmp.n249, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block248
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !48

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec244.a, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert251 = insertelement <4 x i16> poison, i16 %.pre199, i64 0
  %broadcast.splat252 = shufflevector <4 x i16> %broadcast.splatinsert251, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index253 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next254, %vec.epilog.vector.body ] ; 2 uses
  %i.au = getelementptr [2 x i8], ptr %i.ap, i64 %index253
  store <4 x i16> %broadcast.splat252, ptr %i.au, align 2, !tbaa !45
  %index.next254 = add nuw i64 %index253, 4       ; 2 uses
  %i.av = icmp eq i64 %index.next254, %n.vec250
  br i1 %i.av, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !185

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n255, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv171.ph = phi i64 [ 0, %iter.check ], [ %n.vec244.a, %vec.epilog.iter.check ], [ %n.vec250, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

iter.check270:                                    ; preds = %.preheader140.us
  %i.aw = getelementptr [2 x i8], ptr %i.i, i64 %i.am ; 4 uses
  %i.ax = getelementptr [2 x i8], ptr %i.aw, i64 %i.ac
  %.pre198 = load i16, ptr %i.ax, align 2, !tbaa !45 ; 3 uses
  br i1 %min.iters.check258, label %vec.epilog.scalar.ph272.preheader, label %vector.main.loop.iter.check259

vector.main.loop.iter.check259:                   ; preds = %iter.check270
  br i1 %min.iters.check260, label %vec.epilog.ph274, label %vector.ph261

vector.ph261:                                     ; preds = %vector.main.loop.iter.check259
  %broadcast.splatinsert263 = insertelement <8 x i16> poison, i16 %.pre198, i64 0
  %broadcast.splat264 = shufflevector <8 x i16> %broadcast.splatinsert263, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body265

vector.body265:                                   ; preds = %vector.ph261, %vector.body265
  %index266 = phi i64 [ 0, %vector.ph261 ], [ %index.next267, %vector.body265 ] ; 2 uses
  %i.ay = getelementptr [2 x i8], ptr %i.aw, i64 %index266 ; 2 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 16
  store <8 x i16> %broadcast.splat264, ptr %i.ay, align 2, !tbaa !45
  store <8 x i16> %broadcast.splat264, ptr %i.az, align 2, !tbaa !45
  %index.next267 = add nuw i64 %index266, 16      ; 2 uses
  %i.ba = icmp eq i64 %index.next267, %n.vec262
  br i1 %i.ba, label %middle.block268, label %vector.body265, !llvm.loop !186

middle.block268:                                  ; preds = %vector.body265
  br i1 %cmp.n269.a, label %iter.check, label %vec.epilog.iter.check271

vec.epilog.iter.check271:                         ; preds = %middle.block268
  br i1 %min.epilog.iters.check273, label %vec.epilog.scalar.ph272.preheader, label %vec.epilog.ph274, !prof !48

vec.epilog.ph274:                                 ; preds = %vector.main.loop.iter.check259, %vec.epilog.iter.check271
  %vec.epilog.resume.val275 = phi i64 [ %n.vec262, %vec.epilog.iter.check271 ], [ 0, %vector.main.loop.iter.check259 ]
  %broadcast.splatinsert277 = insertelement <4 x i16> poison, i16 %.pre198, i64 0
  %broadcast.splat278 = shufflevector <4 x i16> %broadcast.splatinsert277, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body279

vec.epilog.vector.body279:                        ; preds = %vec.epilog.vector.body279, %vec.epilog.ph274
  %index280 = phi i64 [ %vec.epilog.resume.val275, %vec.epilog.ph274 ], [ %index.next281, %vec.epilog.vector.body279 ] ; 2 uses
  %i.bb = getelementptr [2 x i8], ptr %i.aw, i64 %index280
  store <4 x i16> %broadcast.splat278, ptr %i.bb, align 2, !tbaa !45
  %index.next281 = add nuw i64 %index280, 4       ; 2 uses
  %i.bc = icmp eq i64 %index.next281, %n.vec276
  br i1 %i.bc, label %vec.epilog.middle.block282, label %vec.epilog.vector.body279, !llvm.loop !187

vec.epilog.middle.block282:                       ; preds = %vec.epilog.vector.body279
  br i1 %cmp.n283, label %iter.check, label %vec.epilog.scalar.ph272.preheader

vec.epilog.scalar.ph272.preheader:                ; preds = %iter.check270, %vec.epilog.iter.check271, %vec.epilog.middle.block282
  %indvars.iv166.ph = phi i64 [ 0, %iter.check270 ], [ %n.vec262, %vec.epilog.iter.check271 ], [ %n.vec276, %vec.epilog.middle.block282 ]
  br label %vec.epilog.scalar.ph272

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block248
  %indvars.iv.next177 = add nsw i64 %indvars.iv176, 1 ; 2 uses
  %i.bd = icmp slt i64 %indvars.iv.next177, %i.ai
  br i1 %i.bd, label %.preheader140.us, label %.preheader142, !llvm.loop !188

.preheader140.lr.ph.split:                        ; preds = %.preheader140.lr.ph
  br i1 %i.ab, label %.preheader140.preheader, label %.preheader142

.preheader140.preheader:                          ; preds = %.preheader140.lr.ph.split
  %i.be = sext i32 %i.s to i64
  %i.bf = sext i32 %i.z to i64
  %wide.trip.count = zext nneg i32 %i.o to i64    ; 6 uses
  %min.iters.check286 = icmp ult i32 %i.o, 4
  %min.iters.check288 = icmp ult i32 %i.o, 16
  %i.bg = and i64 %wide.trip.count, 12
  %n.vec290 = and i64 %wide.trip.count, 2147483632 ; 4 uses
  %cmp.n297 = icmp eq i64 %n.vec290, %wide.trip.count
  %min.epilog.iters.check301 = icmp eq i64 %i.bg, 0
  %n.vec304 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n311 = icmp eq i64 %n.vec304, %wide.trip.count
  br label %iter.check298

.preheader142:                                    ; preds = %..preheader_crit_edge, %._crit_edge.us, %.preheader140.lr.ph.split, %bb.b
  %i.bh = icmp sgt i32 %i.s, 0
  br i1 %i.bh, label %.lr.ph151, label %.preheader141

.lr.ph151:                                        ; preds = %.preheader142
  %i.bi = sext i32 %i.w to i64                    ; 2 uses
  %i.bj = add i32 %i.w, -8
  %i.bk = icmp sgt i32 %i.w, 9
  %i.bl = zext nneg i32 %i.s to i64
  %wide.trip.count182 = zext i32 %i.bj to i64     ; 4 uses
  %i.bm = shl nsw i64 %i.m, 1
  %i.bn = add nsw i64 %wide.trip.count182, -1     ; 3 uses
  %min.iters.check222 = icmp ult i64 %i.bn, 8
  %i.bo = shl nsw i64 %i.m, 1
  %diff.check225 = icmp ugt i64 %i.bo, -16
  %i.bp = add nsw i64 %i.bm, 17
  %i.bq = icmp ult i64 %i.bp, 19
  %conflict.rdx228 = or i1 %i.bq, %diff.check225
  %n.vec230 = and i64 %i.bn, -8                   ; 3 uses
  %i.br = or disjoint i64 %n.vec230, 1
  %cmp.n238 = icmp eq i64 %i.bn, %n.vec230
  %i.bs = and i64 %wide.trip.count182, 1
  %lcmp.mod.not.not = icmp eq i64 %i.bs, 0
  %i.bt = add nsw i64 %wide.trip.count182, -1
  br label %bb.c

iter.check298:                                    ; preds = %.preheader140.preheader, %..preheader_crit_edge
  %indvars.iv163 = phi i64 [ %i.be, %.preheader140.preheader ], [ %indvars.iv.next164, %..preheader_crit_edge ] ; 2 uses
  %i.bu = mul nsw i64 %indvars.iv163, %i.m
  %i.bv = getelementptr [2 x i8], ptr %i.i, i64 %i.bu ; 4 uses
  %i.bw = getelementptr [2 x i8], ptr %i.bv, i64 %i.ac
  %.pre = load i16, ptr %i.bw, align 2, !tbaa !45 ; 3 uses
  br i1 %min.iters.check286, label %vec.epilog.scalar.ph300.preheader, label %vector.main.loop.iter.check287

vector.main.loop.iter.check287:                   ; preds = %iter.check298
  br i1 %min.iters.check288, label %vec.epilog.ph302, label %vector.ph289

vector.ph289:                                     ; preds = %vector.main.loop.iter.check287
  %broadcast.splatinsert291 = insertelement <8 x i16> poison, i16 %.pre, i64 0
  %broadcast.splat292 = shufflevector <8 x i16> %broadcast.splatinsert291, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body293

vector.body293:                                   ; preds = %vector.ph289, %vector.body293
  %index294 = phi i64 [ 0, %vector.ph289 ], [ %index.next295, %vector.body293 ] ; 2 uses
  %i.bx = getelementptr [2 x i8], ptr %i.bv, i64 %index294 ; 2 uses
  %i.by = getelementptr i8, ptr %i.bx, i64 16
  store <8 x i16> %broadcast.splat292, ptr %i.bx, align 2, !tbaa !45
  store <8 x i16> %broadcast.splat292, ptr %i.by, align 2, !tbaa !45
  %index.next295 = add nuw i64 %index294, 16      ; 2 uses
  %i.bz = icmp eq i64 %index.next295, %n.vec290
  br i1 %i.bz, label %middle.block296, label %vector.body293, !llvm.loop !189

middle.block296:                                  ; preds = %vector.body293
  br i1 %cmp.n297, label %..preheader_crit_edge, label %vec.epilog.iter.check299

vec.epilog.iter.check299:                         ; preds = %middle.block296
  br i1 %min.epilog.iters.check301, label %vec.epilog.scalar.ph300.preheader, label %vec.epilog.ph302, !prof !48

vec.epilog.ph302:                                 ; preds = %vector.main.loop.iter.check287, %vec.epilog.iter.check299
  %vec.epilog.resume.val303 = phi i64 [ %n.vec290, %vec.epilog.iter.check299 ], [ 0, %vector.main.loop.iter.check287 ]
  %broadcast.splatinsert305 = insertelement <4 x i16> poison, i16 %.pre, i64 0
  %broadcast.splat306 = shufflevector <4 x i16> %broadcast.splatinsert305, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body307

vec.epilog.vector.body307:                        ; preds = %vec.epilog.vector.body307, %vec.epilog.ph302
  %index308 = phi i64 [ %vec.epilog.resume.val303, %vec.epilog.ph302 ], [ %index.next309, %vec.epilog.vector.body307 ] ; 2 uses
  %i.ca = getelementptr [2 x i8], ptr %i.bv, i64 %index308
  store <4 x i16> %broadcast.splat306, ptr %i.ca, align 2, !tbaa !45
  %index.next309 = add nuw i64 %index308, 4       ; 2 uses
  %i.cb = icmp eq i64 %index.next309, %n.vec304
  br i1 %i.cb, label %vec.epilog.middle.block310, label %vec.epilog.vector.body307, !llvm.loop !190

vec.epilog.middle.block310:                       ; preds = %vec.epilog.vector.body307
  br i1 %cmp.n311, label %..preheader_crit_edge, label %vec.epilog.scalar.ph300.preheader

vec.epilog.scalar.ph300.preheader:                ; preds = %iter.check298, %vec.epilog.iter.check299, %vec.epilog.middle.block310
  %indvars.iv.ph = phi i64 [ 0, %iter.check298 ], [ %n.vec290, %vec.epilog.iter.check299 ], [ %n.vec304, %vec.epilog.middle.block310 ]
  br label %vec.epilog.scalar.ph300

..preheader_crit_edge:                            ; preds = %vec.epilog.scalar.ph300, %vec.epilog.middle.block310, %middle.block296
  %indvars.iv.next164 = add nsw i64 %indvars.iv163, 1 ; 2 uses
  %i.cc = icmp slt i64 %indvars.iv.next164, %i.bf
  br i1 %i.cc, label %iter.check298, label %.preheader142, !llvm.loop !188

vec.epilog.scalar.ph300:                          ; preds = %vec.epilog.scalar.ph300.preheader, %vec.epilog.scalar.ph300
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph300 ], [ %indvars.iv.ph, %vec.epilog.scalar.ph300.preheader ] ; 2 uses
  %i.cd = getelementptr [2 x i8], ptr %i.bv, i64 %indvars.iv
  store i16 %.pre, ptr %i.cd, align 2, !tbaa !45
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..preheader_crit_edge, label %vec.epilog.scalar.ph300, !llvm.loop !191

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block237, %bb.c
  %i.ce = icmp samesign ugt i64 %indvars.iv184, 1
  br i1 %i.ce, label %bb.c, label %.preheader141, !llvm.loop !192

.preheader141:                                    ; preds = %.loopexit, %.preheader142
  %i.cf = icmp sgt i32 %i.u, 0
  br i1 %i.cf, label %.lr.ph155, label %._crit_edge156

.lr.ph155:                                        ; preds = %.preheader141
  %i.cg = sext i32 %i.w to i64                    ; 2 uses
  %i.ch = add i32 %i.w, -8
  %i.ci = icmp sgt i32 %i.w, 9
  %i.cj = sext i32 %i.z to i64
  %i.ck = sext i32 %i.y to i64
  %wide.trip.count190.a = zext i32 %i.ch to i64   ; 4 uses
  %i.cl = shl nsw i64 %i.m, 1
  %i.cm = add nsw i64 %wide.trip.count190.a, -1   ; 3 uses
  %min.iters.check.a = icmp ult i64 %i.cm, 8
  %conflict.rdx212 = icmp ult i64 %i.cl, 18
  %or.cond = select i1 %min.iters.check.a, i1 true, i1 %conflict.rdx212
  %n.vec = and i64 %i.cm, -8                      ; 3 uses
  %i.cn = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.cm, %n.vec
  %i.co = and i64 %wide.trip.count190.a, 1
  %lcmp.mod317.not.not = icmp eq i64 %i.co, 0
  %i.cp = add nsw i64 %wide.trip.count190.a, -1
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph151, %.loopexit
  %indvars.iv184 = phi i64 [ %i.bl, %.lr.ph151 ], [ %indvars.iv.next185, %.loopexit ] ; 3 uses
  %indvars.iv.next185 = add nsw i64 %indvars.iv184, -1 ; 2 uses
  %i.cq = mul nsw i64 %indvars.iv184, %i.m
  %i.cr = getelementptr [2 x i8], ptr %i.i, i64 %i.cq ; 6 uses
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !45
  %i.ct = mul nsw i64 %indvars.iv.next185, %i.m
  %i.cu = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.ct ; 6 uses
  store i16 %i.cs, ptr %i.cu, align 2, !tbaa !45
  %i.cv = getelementptr inbounds [2 x i8], ptr %i.cu, i64 %i.bi
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 -16
  %i.cx = getelementptr inbounds [2 x i8], ptr %i.cr, i64 %i.bi
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.cw, ptr noundef nonnull align 2 dereferenceable(16) %i.cy, i64 16, i1 false)
  br i1 %i.bk, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.c
  %brmerge = select i1 %min.iters.check222, i1 true, i1 %conflict.rdx228
  br i1 %brmerge, label %.lr.ph.preheader314, label %vector.body231

vector.body231:                                   ; preds = %.lr.ph.preheader, %vector.body231
  %index232 = phi i64 [ %index.next236, %vector.body231 ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.cz = or disjoint i64 %index232, 1            ; 2 uses
  %i.da = getelementptr [2 x i8], ptr %i.cr, i64 %i.cz ; 3 uses
  %i.db = getelementptr i8, ptr %i.da, i64 -2
  %wide.load233 = load <8 x i16>, ptr %i.db, align 2, !tbaa !45
  %i.dc = zext <8 x i16> %wide.load233 to <8 x i32>
  %wide.load234 = load <8 x i16>, ptr %i.da, align 2, !tbaa !45
  %i.dd = zext <8 x i16> %wide.load234 to <8 x i32>
  %i.de = getelementptr i8, ptr %i.da, i64 2
  %wide.load235 = load <8 x i16>, ptr %i.de, align 2, !tbaa !45
  %i.df = zext <8 x i16> %wide.load235 to <8 x i32>
  %i.dg = shl nuw nsw <8 x i32> %i.dd, splat (i32 1)
  %i.dh = add nuw nsw <8 x i32> %i.df, %i.dc
  %i.di = mul nuw nsw <8 x i32> %i.dh, splat (i32 3)
  %i.dj = add nuw nsw <8 x i32> %i.dg, splat (i32 4)
  %i.dk = add nuw nsw <8 x i32> %i.dj, %i.di
  %i.dl = lshr <8 x i32> %i.dk, splat (i32 3)
  %i.dm = trunc nuw <8 x i32> %i.dl to <8 x i16>
  %i.dn = getelementptr [2 x i8], ptr %i.cu, i64 %i.cz
  store <8 x i16> %i.dm, ptr %i.dn, align 2, !tbaa !45
  %index.next236 = add nuw i64 %index232, 8       ; 2 uses
  %i.do = icmp eq i64 %index.next236, %n.vec230
  br i1 %i.do, label %middle.block237, label %vector.body231, !llvm.loop !193

middle.block237:                                  ; preds = %vector.body231
  br i1 %cmp.n238, label %.loopexit, label %.lr.ph.preheader314

.lr.ph.preheader314:                              ; preds = %.lr.ph.preheader, %middle.block237
  %indvars.iv179.ph = phi i64 [ %i.br, %middle.block237 ], [ 1, %.lr.ph.preheader ] ; 5 uses
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader314
  %i.dp = getelementptr [2 x i8], ptr %i.cr, i64 %indvars.iv179.ph ; 3 uses
  %i.dq = getelementptr i8, ptr %i.dp, i64 -2
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !45
  %i.ds = zext i16 %i.dr to i32
  %i.dt = load i16, ptr %i.dp, align 2, !tbaa !45
  %i.du = zext i16 %i.dt to i32
  %i.dv = getelementptr i8, ptr %i.dp, i64 2
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !45
  %i.dx = zext i16 %i.dw to i32
  %i.dy = shl nuw nsw i32 %i.du, 1
  %reass.add138.prol = add nuw nsw i32 %i.dx, %i.ds
  %reass.mul139.prol = mul nuw nsw i32 %reass.add138.prol, 3
  %i.dz = add nuw nsw i32 %i.dy, 4
  %i.ea = add nuw nsw i32 %i.dz, %reass.mul139.prol
  %i.eb = lshr i32 %i.ea, 3
  %i.ec = trunc nuw i32 %i.eb to i16
  %i.ed = getelementptr [2 x i8], ptr %i.cu, i64 %indvars.iv179.ph
  store i16 %i.ec, ptr %i.ed, align 2, !tbaa !45
  %indvars.iv.next180.prol = add nuw nsw i64 %indvars.iv179.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader314
  %indvars.iv179.unr = phi i64 [ %indvars.iv179.ph, %.lr.ph.preheader314 ], [ %indvars.iv.next180.prol, %.lr.ph.prol ]
  %i.ee = icmp eq i64 %indvars.iv179.ph, %i.bt
  br i1 %i.ee, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv179 = phi i64 [ %indvars.iv.next180.1, %.lr.ph ], [ %indvars.iv179.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.ef = getelementptr [2 x i8], ptr %i.cr, i64 %indvars.iv179 ; 3 uses
  %i.eg = getelementptr i8, ptr %i.ef, i64 -2
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !45
  %i.ei = zext i16 %i.eh to i32
  %i.ej = load i16, ptr %i.ef, align 2, !tbaa !45
  %i.ek = zext i16 %i.ej to i32
  %i.el = getelementptr i8, ptr %i.ef, i64 2
  %i.em = load i16, ptr %i.el, align 2, !tbaa !45
  %i.en = zext i16 %i.em to i32
  %i.eo = shl nuw nsw i32 %i.ek, 1
  %reass.add138 = add nuw nsw i32 %i.en, %i.ei
  %reass.mul139 = mul nuw nsw i32 %reass.add138, 3
  %i.ep = add nuw nsw i32 %i.eo, 4
  %i.eq = add nuw nsw i32 %i.ep, %reass.mul139
  %i.er = lshr i32 %i.eq, 3
  %i.es = trunc nuw i32 %i.er to i16
  %i.et = getelementptr [2 x i8], ptr %i.cu, i64 %indvars.iv179
  store i16 %i.es, ptr %i.et, align 2, !tbaa !45
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179, 1 ; 2 uses
  %i.eu = getelementptr [2 x i8], ptr %i.cr, i64 %indvars.iv.next180 ; 3 uses
  %i.ev = getelementptr i8, ptr %i.eu, i64 -2
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !45
  %i.ex = zext i16 %i.ew to i32
  %i.ey = load i16, ptr %i.eu, align 2, !tbaa !45
  %i.ez = zext i16 %i.ey to i32
  %i.fa = getelementptr i8, ptr %i.eu, i64 2
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !45
  %i.fc = zext i16 %i.fb to i32
  %i.fd = shl nuw nsw i32 %i.ez, 1
  %reass.add138.1 = add nuw nsw i32 %i.fc, %i.ex
  %reass.mul139.1 = mul nuw nsw i32 %reass.add138.1, 3
  %i.fe = add nuw nsw i32 %i.fd, 4
  %i.ff = add nuw nsw i32 %i.fe, %reass.mul139.1
  %i.fg = lshr i32 %i.ff, 3
  %i.fh = trunc nuw i32 %i.fg to i16
  %i.fi = getelementptr [2 x i8], ptr %i.cu, i64 %indvars.iv.next180
  store i16 %i.fh, ptr %i.fi, align 2, !tbaa !45
  %indvars.iv.next180.1 = add nuw nsw i64 %indvars.iv179, 2 ; 2 uses
  %exitcond183.not.1 = icmp eq i64 %indvars.iv.next180.1, %wide.trip.count182
  br i1 %exitcond183.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !194

._crit_edge156:                                   ; preds = %._crit_edge, %.preheader141
  %indvars.iv.next196 = add nuw nsw i64 %indvars.iv195, 1 ; 2 uses
  %i.fj = load i32, ptr %i.a, align 4, !tbaa !33
  %i.fk = sext i32 %i.fj to i64
  %i.fl = icmp slt i64 %indvars.iv.next196, %i.fk
  br i1 %i.fl, label %bb.b, label %._crit_edge160, !llvm.loop !195

bb.d:                                             ; preds = %.lr.ph155, %._crit_edge
  %indvars.iv192 = phi i64 [ %i.cj, %.lr.ph155 ], [ %indvars.iv.next193, %._crit_edge ] ; 3 uses
  %i.fm = add nsw i64 %indvars.iv192, -1
  %i.fn = mul nsw i64 %i.fm, %i.m
  %i.fo = getelementptr [2 x i8], ptr %i.i, i64 %i.fn ; 6 uses
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !45
  %i.fq = mul nsw i64 %indvars.iv192, %i.m
  %i.fr = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.fq ; 6 uses
  store i16 %i.fp, ptr %i.fr, align 2, !tbaa !45
  %i.fs = getelementptr inbounds [2 x i8], ptr %i.fr, i64 %i.cg
  %i.ft = getelementptr inbounds i8, ptr %i.fs, i64 -16
  %i.fu = getelementptr inbounds [2 x i8], ptr %i.fo, i64 %i.cg
  %i.fv = getelementptr inbounds i8, ptr %i.fu, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.ft, ptr noundef nonnull align 2 dereferenceable(16) %i.fv, i64 16, i1 false)
  br i1 %i.ci, label %.lr.ph153.preheader, label %._crit_edge

.lr.ph153.preheader:                              ; preds = %bb.d
  br i1 %or.cond, label %.lr.ph153.preheader313, label %vector.body

vector.body:                                      ; preds = %.lr.ph153.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph153.preheader ] ; 2 uses
  %i.fw = or disjoint i64 %index, 1               ; 2 uses
  %i.fx = getelementptr [2 x i8], ptr %i.fo, i64 %i.fw ; 3 uses
  %i.fy = getelementptr i8, ptr %i.fx, i64 -2
  %wide.load = load <8 x i16>, ptr %i.fy, align 2, !tbaa !45
  %i.fz = zext <8 x i16> %wide.load to <8 x i32>
  %wide.load213 = load <8 x i16>, ptr %i.fx, align 2, !tbaa !45
  %i.ga = zext <8 x i16> %wide.load213 to <8 x i32>
  %i.gb = getelementptr i8, ptr %i.fx, i64 2
  %wide.load214 = load <8 x i16>, ptr %i.gb, align 2, !tbaa !45
  %i.gc = zext <8 x i16> %wide.load214 to <8 x i32>
  %i.gd = shl nuw nsw <8 x i32> %i.ga, splat (i32 1)
  %i.ge = add nuw nsw <8 x i32> %i.gc, %i.fz
  %i.gf = mul nuw nsw <8 x i32> %i.ge, splat (i32 3)
  %i.gg = add nuw nsw <8 x i32> %i.gd, splat (i32 4)
  %i.gh = add nuw nsw <8 x i32> %i.gg, %i.gf
  %i.gi = lshr <8 x i32> %i.gh, splat (i32 3)
  %i.gj = trunc nuw <8 x i32> %i.gi to <8 x i16>
  %i.gk = getelementptr [2 x i8], ptr %i.fr, i64 %i.fw
  store <8 x i16> %i.gj, ptr %i.gk, align 2, !tbaa !45
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gl = icmp eq i64 %index.next, %n.vec
  br i1 %i.gl, label %middle.block, label %vector.body, !llvm.loop !196

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph153.preheader313

.lr.ph153.preheader313:                           ; preds = %.lr.ph153.preheader, %middle.block
  %indvars.iv187.ph = phi i64 [ 1, %.lr.ph153.preheader ], [ %i.cn, %middle.block ] ; 5 uses
  br i1 %lcmp.mod317.not.not, label %.lr.ph153.prol, label %.lr.ph153.prol.loopexit

.lr.ph153.prol:                                   ; preds = %.lr.ph153.preheader313
  %i.gm = getelementptr [2 x i8], ptr %i.fo, i64 %indvars.iv187.ph ; 3 uses
  %i.gn = getelementptr i8, ptr %i.gm, i64 -2
  %i.go = load i16, ptr %i.gn, align 2, !tbaa !45
  %i.gp = zext i16 %i.go to i32
  %i.gq = load i16, ptr %i.gm, align 2, !tbaa !45
  %i.gr = zext i16 %i.gq to i32
  %i.gs = getelementptr i8, ptr %i.gm, i64 2
  %i.gt = load i16, ptr %i.gs, align 2, !tbaa !45
  %i.gu = zext i16 %i.gt to i32
  %i.gv = shl nuw nsw i32 %i.gr, 1
  %reass.add.prol = add nuw nsw i32 %i.gu, %i.gp
  %reass.mul.prol = mul nuw nsw i32 %reass.add.prol, 3
  %i.gw = add nuw nsw i32 %i.gv, 4
  %i.gx = add nuw nsw i32 %i.gw, %reass.mul.prol
  %i.gy = lshr i32 %i.gx, 3
  %i.gz = trunc nuw i32 %i.gy to i16
  %i.ha = getelementptr [2 x i8], ptr %i.fr, i64 %indvars.iv187.ph
  store i16 %i.gz, ptr %i.ha, align 2, !tbaa !45
  %indvars.iv.next188.prol = add nuw nsw i64 %indvars.iv187.ph, 1
  br label %.lr.ph153.prol.loopexit

.lr.ph153.prol.loopexit:                          ; preds = %.lr.ph153.prol, %.lr.ph153.preheader313
  %indvars.iv187.unr = phi i64 [ %indvars.iv187.ph, %.lr.ph153.preheader313 ], [ %indvars.iv.next188.prol, %.lr.ph153.prol ]
  %i.hb = icmp eq i64 %indvars.iv187.ph, %i.cp
  br i1 %i.hb, label %._crit_edge, label %.lr.ph153

._crit_edge:                                      ; preds = %.lr.ph153.prol.loopexit, %.lr.ph153, %middle.block, %bb.d
  %indvars.iv.next193 = add nsw i64 %indvars.iv192, 1 ; 2 uses
  %i.hc = icmp slt i64 %indvars.iv.next193, %i.ck
  br i1 %i.hc, label %bb.d, label %._crit_edge156, !llvm.loop !197

.lr.ph153:                                        ; preds = %.lr.ph153.prol.loopexit, %.lr.ph153
  %indvars.iv187 = phi i64 [ %indvars.iv.next188.1, %.lr.ph153 ], [ %indvars.iv187.unr, %.lr.ph153.prol.loopexit ] ; 4 uses
  %i.hd = getelementptr [2 x i8], ptr %i.fo, i64 %indvars.iv187 ; 3 uses
  %i.he = getelementptr i8, ptr %i.hd, i64 -2
  %i.hf = load i16, ptr %i.he, align 2, !tbaa !45
  %i.hg = zext i16 %i.hf to i32
  %i.hh = load i16, ptr %i.hd, align 2, !tbaa !45
  %i.hi = zext i16 %i.hh to i32
  %i.hj = getelementptr i8, ptr %i.hd, i64 2
  %i.hk = load i16, ptr %i.hj, align 2, !tbaa !45
  %i.hl = zext i16 %i.hk to i32
  %i.hm = shl nuw nsw i32 %i.hi, 1
  %reass.add = add nuw nsw i32 %i.hl, %i.hg
  %reass.mul = mul nuw nsw i32 %reass.add, 3
  %i.hn = add nuw nsw i32 %i.hm, 4
  %i.ho = add nuw nsw i32 %i.hn, %reass.mul
  %i.hp = lshr i32 %i.ho, 3
  %i.hq = trunc nuw i32 %i.hp to i16
  %i.hr = getelementptr [2 x i8], ptr %i.fr, i64 %indvars.iv187
  store i16 %i.hq, ptr %i.hr, align 2, !tbaa !45
  %indvars.iv.next188 = add nuw nsw i64 %indvars.iv187, 1 ; 2 uses
  %i.hs = getelementptr [2 x i8], ptr %i.fo, i64 %indvars.iv.next188 ; 3 uses
  %i.ht = getelementptr i8, ptr %i.hs, i64 -2
  %i.hu = load i16, ptr %i.ht, align 2, !tbaa !45
  %i.hv = zext i16 %i.hu to i32
  %i.hw = load i16, ptr %i.hs, align 2, !tbaa !45
  %i.hx = zext i16 %i.hw to i32
  %i.hy = getelementptr i8, ptr %i.hs, i64 2
  %i.hz = load i16, ptr %i.hy, align 2, !tbaa !45
  %i.ia = zext i16 %i.hz to i32
  %i.ib = shl nuw nsw i32 %i.hx, 1
  %reass.add.1 = add nuw nsw i32 %i.ia, %i.hv
  %reass.mul.1 = mul nuw nsw i32 %reass.add.1, 3
  %i.ic = add nuw nsw i32 %i.ib, 4
  %i.id = add nuw nsw i32 %i.ic, %reass.mul.1
  %i.ie = lshr i32 %i.id, 3
  %i.if = trunc nuw i32 %i.ie to i16
  %i.ig = getelementptr [2 x i8], ptr %i.fr, i64 %indvars.iv.next188
  store i16 %i.if, ptr %i.ig, align 2, !tbaa !45
  %indvars.iv.next188.1 = add nuw nsw i64 %indvars.iv187, 2 ; 2 uses
  %exitcond191.not.1 = icmp eq i64 %indvars.iv.next188.1, %wide.trip.count190.a
  br i1 %exitcond191.not.1, label %._crit_edge, label %.lr.ph153, !llvm.loop !198
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

declare i32 @ff_fill_rgba_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare ptr @av_default_item_name(ptr noundef) #2

declare i32 @ff_filter_process_command(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS8AVFilter", !9, i64 0}
!12 = !{!"p1 omnipotent char", !9, i64 0}
!13 = !{!"p1 _ZTS11AVFilterPad", !9, i64 0}
!14 = !{!"any p2 pointer", !9, i64 0}
!15 = !{!"p2 _ZTS12AVFilterLink", !14, i64 0}
!16 = !{!"p1 _ZTS13AVFilterGraph", !9, i64 0}
!17 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!18 = !{!"AVFilterContext", !10, i64 0, !11, i64 8, !12, i64 16, !13, i64 24, !15, i64 32, !6, i64 40, !13, i64 48, !15, i64 56, !6, i64 64, !9, i64 72, !16, i64 80, !6, i64 88, !6, i64 92, !12, i64 96, !6, i64 104, !17, i64 112, !6, i64 120}
!19 = !{!"p1 _ZTS12AVFilterLink", !9, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"p1 _ZTS15AVFilterContext", !9, i64 0}
!22 = !{!"AVRational", !6, i64 0, !6, i64 4}
!23 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!24 = !{!"p2 _ZTS15AVFrameSideData", !14, i64 0}
!25 = !{!"p1 _ZTS15AVFilterFormats", !9, i64 0}
!26 = !{!"p1 _ZTS22AVFilterChannelLayouts", !9, i64 0}
!27 = !{!"AVFilterFormatsConfig", !25, i64 0, !25, i64 8, !26, i64 16, !25, i64 24, !25, i64 32, !25, i64 40}
!28 = !{!"AVFilterLink", !21, i64 0, !13, i64 8, !21, i64 16, !13, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !22, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !23, i64 72, !22, i64 96, !24, i64 104, !6, i64 112, !6, i64 116, !27, i64 120, !27, i64 168}
!29 = !{!28, !21, i64 16}
!30 = !{!18, !9, i64 72}
!31 = !{!"FillBordersContext", !10, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !5, i64 36, !5, i64 100, !5, i64 116, !5, i64 132, !5, i64 136, !5, i64 140, !9, i64 144}
!32 = !{!31, !9, i64 144}
!33 = !{!31, !6, i64 28}
!34 = !{!31, !6, i64 32}
!35 = !{!6, !6, i64 0}
!36 = !{!"Borders", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!37 = !{!36, !6, i64 0}
!38 = !{!36, !6, i64 4}
!39 = !{!36, !6, i64 8}
!40 = !{!36, !6, i64 12}
!41 = !{!5, !5, i64 0}
!42 = !{!12, !12, i64 0}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!"short", !5, i64 0}
!45 = !{!44, !44, i64 0}
!46 = !{!"llvm.loop.unroll.runtime.disable"}
!47 = !{!"llvm.loop.isvectorized", i32 1}
!48 = !{!"branch_weights", i32 4, i32 12}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = !{!18, !15, i64 32}
!51 = !{!18, !15, i64 56}
!52 = !{!28, !6, i64 36}
!53 = !{!"long", !5, i64 0}
!54 = !{!"AVPixFmtDescriptor", !12, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !53, i64 16, !5, i64 24, !12, i64 104}
!55 = !{!54, !5, i64 8}
!56 = !{!"AVComponentDescriptor", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
!57 = !{!56, !6, i64 16}
!58 = !{!54, !5, i64 10}
!59 = !{!28, !6, i64 44}
!60 = !{!54, !5, i64 9}
!61 = !{!28, !6, i64 40}
!62 = !{!31, !6, i64 12}
!63 = !{!31, !6, i64 8}
!64 = !{!31, !6, i64 20}
!65 = !{!31, !6, i64 16}
!66 = !{!31, !6, i64 24}
!67 = !{!54, !53, i64 16}
!68 = distinct !{!68, !43}
!69 = distinct !{!69, !43}
!70 = distinct !{!70, !43}
!71 = distinct !{!71, !43}
!72 = distinct !{!72, !43, !46, !47}
!73 = distinct !{!73, !43, !46, !47}
!74 = distinct !{!74, !43, !47, !46}
!75 = distinct !{!75, !43, !47, !46}
!76 = distinct !{!76, !43, !47, !46}
!77 = distinct !{!77, !43, !47, !46}
!78 = distinct !{!78, !43}
!79 = distinct !{!79, !43, !47, !46}
!80 = distinct !{!80, !43, !47, !46}
!81 = distinct !{!81, !43, !46, !47}
!82 = distinct !{!82, !43}
!83 = distinct !{!83, !43}
!84 = distinct !{!84, !43}
!85 = distinct !{!85, !43}
!86 = distinct !{!86, !43}
!87 = distinct !{!87, !43}
!88 = distinct !{!88, !43}
!89 = distinct !{!89, !43}
!90 = distinct !{!90, !43}
!91 = distinct !{!91, !49}
!92 = distinct !{!92, !43, !47, !46}
!93 = distinct !{!93, !43, !47, !46}
!94 = distinct !{!94, !43}
!95 = distinct !{!95, !43, !46, !47}
!96 = distinct !{!96, !43}
!97 = distinct !{!97, !43}
!98 = distinct !{!98, !43}
!99 = distinct !{!99, !43}
!100 = distinct !{!100, !43}
!101 = distinct !{!101, !43}
!102 = distinct !{!102, !43}
!103 = distinct !{!103, !43}
!104 = distinct !{!104, !43, !46, !47}
!105 = distinct !{!105, !43, !46, !47}
!106 = distinct !{!106, !43, !47, !46}
!107 = distinct !{!107, !43, !47, !46}
!108 = distinct !{!108, !43, !47, !46}
!109 = distinct !{!109, !43, !47, !46}
!110 = distinct !{!110, !43}
!111 = distinct !{!111, !43, !47, !46}
!112 = distinct !{!112, !43, !47, !46}
!113 = distinct !{!113, !43, !46, !47}
!114 = distinct !{!114, !43, !47, !46}
!115 = distinct !{!115, !43, !47, !46}
!116 = distinct !{!116, !43, !46, !47}
!117 = distinct !{!117, !43}
!118 = distinct !{!118, !43, !47, !46}
!119 = distinct !{!119, !43, !47, !46}
!120 = distinct !{!120, !43, !46, !47}
!121 = distinct !{!121, !43}
!122 = distinct !{!122, !43}
!123 = distinct !{!123, !43}
!124 = distinct !{!124, !43}
!125 = distinct !{!125, !43}
!126 = distinct !{!126, !43}
!127 = distinct !{!127, !43}
!128 = distinct !{!128, !43}
!129 = distinct !{!129, !49}
!130 = distinct !{!130, !43}
!131 = distinct !{!131, !43}
!132 = distinct !{!132, !49}
!133 = distinct !{!133, !43}
!134 = distinct !{!134, !43}
!135 = distinct !{!135, !43}
!136 = distinct !{!136, !43}
!137 = distinct !{!137, !43}
!138 = distinct !{!138, !43}
!139 = distinct !{!139, !43}
!140 = distinct !{!140, !43}
!141 = distinct !{!141, !43}
!142 = distinct !{!142, !43}
!143 = distinct !{!143, !43, !47, !46}
!144 = distinct !{!144, !43, !47, !46}
!145 = distinct !{!145, !49}
!146 = distinct !{!146, !43, !47, !46}
!147 = distinct !{!147, !43, !47, !46}
!148 = distinct !{!148, !49}
!149 = distinct !{!149, !43, !47}
!150 = distinct !{!150, !43, !47}
!151 = distinct !{!151, !43}
!152 = distinct !{!152, !43}
!153 = distinct !{!153, !43}
!154 = distinct !{!154, !43}
!155 = distinct !{!155, !43}
!156 = distinct !{!156, !43, !163}
!157 = distinct !{!157, !43}
!158 = distinct !{!158, !43, !163}
!159 = distinct !{!159, !43}
!160 = distinct !{!160, !43}
!161 = distinct !{!161, !43}
!162 = distinct !{!162, !43}
!163 = !{!"llvm.loop.unswitch.partial.disable"}
!164 = distinct !{!164, !43}
!165 = distinct !{!165, !43}
!166 = distinct !{!166, !43}
!167 = distinct !{!167, !43}
!168 = distinct !{!168, !43}
!169 = distinct !{!169, !43}
!170 = distinct !{!170, !43}
!171 = distinct !{!171, !43}
!172 = distinct !{!172, !43, !47, !46}
!173 = distinct !{!173, !43, !47, !46}
!174 = distinct !{!174, !43, !47}
!175 = distinct !{!175, !43}
!176 = distinct !{!176, !43}
!177 = distinct !{!177, !43}
!178 = distinct !{!178, !43, !47, !46}
!179 = distinct !{!179, !43, !47, !46}
!180 = distinct !{!180, !43}
!181 = distinct !{!181, !43, !47}
!182 = distinct !{!182, !43, !46, !47}
!183 = distinct !{!183, !43, !46, !47}
!184 = distinct !{!184, !43, !47, !46}
!185 = distinct !{!185, !43, !47, !46}
!186 = distinct !{!186, !43, !47, !46}
!187 = distinct !{!187, !43, !47, !46}
!188 = distinct !{!188, !43}
!189 = distinct !{!189, !43, !47, !46}
!190 = distinct !{!190, !43, !47, !46}
!191 = distinct !{!191, !43, !46, !47}
!192 = distinct !{!192, !43}
!193 = distinct !{!193, !43, !47, !46}
!194 = distinct !{!194, !43, !47}
!195 = distinct !{!195, !43}
!196 = distinct !{!196, !43, !47, !46}
!197 = distinct !{!197, !43}
!198 = distinct !{!198, !43, !47}
end_hunk_0

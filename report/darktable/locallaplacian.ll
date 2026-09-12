Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/locallaplacian?download=true
inline.NumInlined: 42
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 58
begin_hunk_0_@local_laplacian_internal:bb.a
  %scevgep1229 = getelementptr i8, ptr %i.bz, i64 %i.by
  %i.ca = mul nsw i64 %i.bt, %i.ah
  %i.cb = shl i64 %i.ca, 2
  %i.cc = getelementptr i8, ptr %0, i64 %i.cb
  %scevgep1230 = getelementptr i8, ptr %i.cc, i64 4
  %i.cd = add nuw nsw i64 %i.bb, %i.aj
  %i.ce = add nuw nsw i64 %i.bb, %i.aj
  %min.iters.check1234 = icmp ult i32 %i.k, 8
  %bound01231 = icmp ult ptr %scevgep1228, %scevgep1230
  %bound11232 = icmp ult ptr %0, %scevgep1229
  %found.conflict1233 = and i1 %bound01231, %bound11232
  %stride.check = icmp slt i32 %i.ad, 0
  %i.cf = or i1 %found.conflict1233, %stride.check
  %min.iters.check1236 = icmp ult i32 %i.k, 64
  %n.vec1238 = and i64 %i.ai, 1073741792
  %n.vec1252 = and i64 %i.ai, 1073741820
  %xtraiter = and i64 %i.ai, 7                    ; 3 uses
  %i.cg = icmp ult i32 %i.k, 16
  %unroll_iter = and i64 %i.ai, 1073741816
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod1426 = icmp ne i64 %xtraiter, 0
  %min.iters.check1199 = icmp ult i32 %2, 5
  %i.ch = trunc nsw i64 %i.be to i32
  %i.ci = icmp ugt i64 %i.be, 4294967295
  %min.iters.check1201 = icmp ult i32 %2, 33
  %i.cj = and i64 %i.aj, 31                       ; 2 uses
  %i.ck = icmp eq i64 %i.cj, 0
  %i.cl = select i1 %i.ck, i64 32, i64 %i.cj      ; 2 uses
  %n.vec1203 = sub nsw i64 %i.aj, %i.cl           ; 3 uses
  %min.epilog.iters.check1218 = icmp samesign ult i64 %i.cl, 5
  %i.cm = and i64 %i.aj, 3                        ; 2 uses
  %i.cn = icmp eq i64 %i.cm, 0
  %i.co = select i1 %i.cn, i64 4, i64 %i.cm
  %n.vec1220 = sub nsw i64 %i.aj, %i.co           ; 2 uses
  %min.iters.check = icmp ult i64 %i.bd, 4
  %min.iters.check1183 = icmp ult i64 %i.bd, 32
  %i.cp = and i64 %i.bd, 28
  %n.vec = and i64 %i.bd, -32                     ; 4 uses
  %i.cq = add nsw i64 %n.vec, %i.ag
  %cmp.n = icmp eq i64 %i.bd, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.cp, 0
  %n.vec1184 = and i64 %i.bd, -4                  ; 3 uses
  %i.cr = add nsw i64 %n.vec1184, %i.ag
  %cmp.n1189 = icmp eq i64 %i.bd, %n.vec1184
  br label %iter.check1247

iter.check1247:                                   ; preds = %._crit_edge479.i, %bb.e
  %indvars.iv539.i = phi i64 [ 0, %bb.e ], [ %i.iq, %._crit_edge479.i ] ; 6 uses
  %i.cs = trunc i64 %indvars.iv539.i to i32
  %i.ct = mul i32 %i.w, %i.cs
  %i.cu = add i32 %i.ct, %i.bl
  %i.cv = sext i32 %i.cu to i64
  %i.cw = shl nsw i64 %i.cv, 2                    ; 2 uses
  %scevgep1193 = getelementptr i8, ptr %i.ac, i64 %i.cw
  %scevgep1195 = getelementptr i8, ptr %scevgep1194, i64 %i.cw
  %i.cx = trunc i64 %indvars.iv539.i to i32
  %i.cy = mul i32 %i.ad, %i.cx
  %i.cz = add i32 %i.cy, %i.ba
  %i.da = sext i32 %i.cz to i64
  %i.db = shl nsw i64 %i.da, 2
  %scevgep1182 = getelementptr i8, ptr %scevgep1181, i64 %i.db
  %i.dc = mul nuw nsw i64 %indvars.iv539.i, %i.ah
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dc ; 10 uses
  %i.de = add nuw nsw i64 %indvars.iv539.i, %i.ai
  %i.df = mul nuw nsw i64 %i.de, %i.y             ; 2 uses
  %i.dg = getelementptr [4 x i8], ptr %i.ac, i64 %i.df ; 22 uses
  %brmerge = select i1 %min.iters.check1234, i1 true, i1 %i.cf
  br i1 %brmerge, label %vec.epilog.scalar.ph1248.preheader, label %vector.main.loop.iter.check1235

vec.epilog.scalar.ph1248.preheader:               ; preds = %iter.check1247
  br i1 %i.cg, label %vec.epilog.scalar.ph1248.epil.preheader, label %vec.epilog.scalar.ph1248

vector.main.loop.iter.check1235:                  ; preds = %iter.check1247
  %i.dh = load float, ptr %i.dd, align 4, !tbaa !21, !alias.scope !105
  %i.di = fmul reassoc nsz arcp contract afn float %i.dh, f0x3C23D70A ; 2 uses
  br i1 %min.iters.check1236, label %vec.epilog.ph1251, label %vector.ph1237

vector.ph1237:                                    ; preds = %vector.main.loop.iter.check1235
  %broadcast.splatinsert1241 = insertelement <8 x float> poison, float %i.di, i64 0
  %broadcast.splat1242 = shufflevector <8 x float> %broadcast.splatinsert1241, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body1239

vector.body1239:                                  ; preds = %vector.body1239, %vector.ph1237
  %index1240 = phi i64 [ 0, %vector.ph1237 ], [ %index.next1243, %vector.body1239 ] ; 2 uses
  %i.dj = getelementptr [4 x i8], ptr %i.dg, i64 %index1240 ; 4 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 32
  %i.dl = getelementptr i8, ptr %i.dj, i64 64
  %i.dm = getelementptr i8, ptr %i.dj, i64 96
  store <8 x float> %broadcast.splat1242, ptr %i.dj, align 4, !tbaa !21, !alias.scope !106, !noalias !105
  store <8 x float> %broadcast.splat1242, ptr %i.dk, align 4, !tbaa !21, !alias.scope !106, !noalias !105
  store <8 x float> %broadcast.splat1242, ptr %i.dl, align 4, !tbaa !21, !alias.scope !106, !noalias !105
  store <8 x float> %broadcast.splat1242, ptr %i.dm, align 4, !tbaa !21, !alias.scope !106, !noalias !105
  %index.next1243 = add nuw i64 %index1240, 32    ; 2 uses
  %i.dn = icmp eq i64 %index.next1243, %n.vec1238
  br i1 %i.dn, label %iter.check1215, label %vector.body1239, !llvm.loop !35

vec.epilog.ph1251:                                ; preds = %vector.main.loop.iter.check1235
  %broadcast.splatinsert1255 = insertelement <4 x float> poison, float %i.di, i64 0
  %broadcast.splat1256 = shufflevector <4 x float> %broadcast.splatinsert1255, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body1253

vec.epilog.vector.body1253:                       ; preds = %vec.epilog.vector.body1253, %vec.epilog.ph1251
  %index1254 = phi i64 [ 0, %vec.epilog.ph1251 ], [ %index.next1257, %vec.epilog.vector.body1253 ] ; 2 uses
  %i.do = getelementptr [4 x i8], ptr %i.dg, i64 %index1254
  store <4 x float> %broadcast.splat1256, ptr %i.do, align 4, !tbaa !21, !alias.scope !106, !noalias !105
  %index.next1257 = add nuw i64 %index1254, 4     ; 2 uses
  %i.dp = icmp eq i64 %index.next1257, %n.vec1252
  br i1 %i.dp, label %iter.check1215, label %vec.epilog.vector.body1253, !llvm.loop !36

bb.f:                                             ; preds = %._crit_edge479.i
  %i.dq = shl i32 %i.w, %i.n
  %i.dr = zext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.dr ; 5 uses
  %i.dt = shl nuw nsw i64 %i.y, 2                 ; 10 uses
  %i.du = sub nuw nsw i32 %i.x, %i.u              ; 6 uses
  %i.dv = add nsw i32 %i.du, -1
  %i.dw = mul i32 %i.dv, %i.w
  %i.dx = zext i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.dx ; 5 uses
  %xtraiter1432 = and i64 %i.ai, 3                ; 3 uses
  %i.dz = icmp ult i32 %i.k, 8
  br i1 %i.dz, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.f
  %unroll_iter1436 = and i64 %i.ai, 1073741820
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.new
  %indvars.iv.i.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.i.3, %bb.g ] ; 5 uses
  %niter1437 = phi i64 [ 0, %.new ], [ %niter1437.next.3, %bb.g ]
  %i.ea = trunc nuw nsw i64 %indvars.iv.i.i to i32 ; 2 uses
  %i.eb = mul i32 %i.w, %i.ea
  %i.ec = zext i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ec
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ed, ptr noundef nonnull align 4 dereferenceable(1) %i.ds, i64 %i.dt, i1 false)
  %i.ee = add i32 %i.du, %i.ea
  %i.ef = mul i32 %i.ee, %i.w
  %i.eg = zext i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.eg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.eh, ptr noundef nonnull align 4 dereferenceable(1) %i.dy, i64 %i.dt, i1 false)
  %i.ei = trunc i64 %indvars.iv.i.i to i32
  %i.ej = or disjoint i32 %i.ei, 1                ; 2 uses
  %i.ek = mul i32 %i.w, %i.ej
  %i.el = zext i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.el
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.em, ptr noundef nonnull align 4 dereferenceable(1) %i.ds, i64 %i.dt, i1 false)
  %i.en = add i32 %i.du, %i.ej
  %i.eo = mul i32 %i.en, %i.w
  %i.ep = zext i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ep
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.eq, ptr noundef nonnull align 4 dereferenceable(1) %i.dy, i64 %i.dt, i1 false)
  %i.er = trunc i64 %indvars.iv.i.i to i32
  %i.es = or disjoint i32 %i.er, 2                ; 2 uses
  %i.et = mul i32 %i.w, %i.es
  %i.eu = zext i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.eu
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ev, ptr noundef nonnull align 4 dereferenceable(1) %i.ds, i64 %i.dt, i1 false)
  %i.ew = add i32 %i.du, %i.es
  %i.ex = mul i32 %i.ew, %i.w
  %i.ey = zext i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ey
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ez, ptr noundef nonnull align 4 dereferenceable(1) %i.dy, i64 %i.dt, i1 false)
  %i.fa = trunc i64 %indvars.iv.i.i to i32
  %i.fb = or disjoint i32 %i.fa, 3                ; 2 uses
  %i.fc = mul i32 %i.w, %i.fb
  %i.fd = zext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.fd
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.fe, ptr noundef nonnull align 4 dereferenceable(1) %i.ds, i64 %i.dt, i1 false)
  %i.ff = add i32 %i.du, %i.fb
  %i.fg = mul i32 %i.ff, %i.w
  %i.fh = zext i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.fh
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.fi, ptr noundef nonnull align 4 dereferenceable(1) %i.dy, i64 %i.dt, i1 false)
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter1437.next.3 = add i64 %niter1437, 4       ; 2 uses
  %niter1437.ncmp.3 = icmp eq i64 %niter1437.next.3, %unroll_iter1436
  br i1 %niter1437.ncmp.3, label %ll_pad_input.exit.loopexit.unr-lcssa, label %bb.g

iter.check1215.loopexit.unr-lcssa:                ; preds = %vec.epilog.scalar.ph1248
  br i1 %lcmp.mod.not, label %iter.check1215, label %vec.epilog.scalar.ph1248.epil.preheader

vec.epilog.scalar.ph1248.epil.preheader:          ; preds = %iter.check1215.loopexit.unr-lcssa, %vec.epilog.scalar.ph1248.preheader
  %indvars.iv524.i.epil.init = phi i64 [ 0, %vec.epilog.scalar.ph1248.preheader ], [ %indvars.iv.next525.i.7, %iter.check1215.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1426)
  br label %vec.epilog.scalar.ph1248.epil

vec.epilog.scalar.ph1248.epil:                    ; preds = %vec.epilog.scalar.ph1248.epil, %vec.epilog.scalar.ph1248.epil.preheader
  %indvars.iv524.i.epil = phi i64 [ %indvars.iv.next525.i.epil, %vec.epilog.scalar.ph1248.epil ], [ %indvars.iv524.i.epil.init, %vec.epilog.scalar.ph1248.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %vec.epilog.scalar.ph1248.epil ], [ 0, %vec.epilog.scalar.ph1248.epil.preheader ]
  %i.fj = load float, ptr %i.dd, align 4, !tbaa !21
  %i.fk = fmul reassoc nsz arcp contract afn float %i.fj, f0x3C23D70A
  %i.fl = getelementptr [4 x i8], ptr %i.dg, i64 %indvars.iv524.i.epil
  store float %i.fk, ptr %i.fl, align 4, !tbaa !21
  %indvars.iv.next525.i.epil = add nuw nsw i64 %indvars.iv524.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %iter.check1215, label %vec.epilog.scalar.ph1248.epil, !llvm.loop !37

iter.check1215:                                   ; preds = %vector.body1239, %vec.epilog.vector.body1253, %iter.check1215.loopexit.unr-lcssa, %vec.epilog.scalar.ph1248.epil
  %i.fm = mul nuw nsw i64 %indvars.iv539.i, %i.aj ; 10 uses
  %i.fn = trunc nuw nsw i64 %i.df to i32
  %invariant.op473.i = add i32 %i.u, %i.fn        ; 9 uses
  br i1 %min.iters.check1199, label %vec.epilog.scalar.ph1216.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check1215
  %i.fo = add i32 %invariant.op473.i, %i.ch
  %i.fp = icmp slt i32 %i.fo, %invariant.op473.i
  %i.fq = or i1 %i.fp, %i.ci
  br i1 %i.fq, label %vec.epilog.scalar.ph1216.preheader, label %vector.memcheck1191

vector.memcheck1191:                              ; preds = %vector.scevcheck
  %bound01196 = icmp ult ptr %0, %scevgep1195
  %bound11197 = icmp ult ptr %scevgep1193, %scevgep1192
  %found.conflict1198 = and i1 %bound01196, %bound11197
  br i1 %found.conflict1198, label %vec.epilog.scalar.ph1216.preheader, label %vector.main.loop.iter.check1200

vector.main.loop.iter.check1200:                  ; preds = %vector.memcheck1191
  br i1 %min.iters.check1201, label %vec.epilog.ph1219, label %vector.body1204

vector.body1204:                                  ; preds = %vector.main.loop.iter.check1200, %vector.body1204
  %index1205 = phi i64 [ %index.next1212, %vector.body1204 ], [ 0, %vector.main.loop.iter.check1200 ] ; 6 uses
  %i.fr = or disjoint i64 %index1205, 8
  %i.fs = or disjoint i64 %index1205, 16
  %i.ft = or disjoint i64 %index1205, 24
  %i.fu = add nuw nsw i64 %index1205, %i.fm
  %i.fv = add nuw nsw i64 %i.fr, %i.fm
  %i.fw = add nuw nsw i64 %i.fs, %i.fm
  %i.fx = add nuw nsw i64 %i.ft, %i.fm
  %i.fy = shl nuw nsw i64 %i.fu, 4
  %i.fz = shl nuw nsw i64 %i.fv, 4
  %i.ga = shl nuw nsw i64 %i.fw, 4
  %i.gb = shl nuw nsw i64 %i.fx, 4
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 %i.fy
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 %i.fz
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 %i.ga
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 %i.gb
  %wide.vec = load <32 x float>, ptr %i.gc, align 4, !tbaa !21, !alias.scope !107, !noalias !108
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec1206 = load <32 x float>, ptr %i.gd, align 4, !tbaa !21, !alias.scope !107, !noalias !108
  %strided.vec1207 = shufflevector <32 x float> %wide.vec1206, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec1208 = load <32 x float>, ptr %i.ge, align 4, !tbaa !21, !alias.scope !107, !noalias !108
  %strided.vec1209 = shufflevector <32 x float> %wide.vec1208, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec1210 = load <32 x float>, ptr %i.gf, align 4, !tbaa !21, !alias.scope !107, !noalias !108
  %strided.vec1211 = shufflevector <32 x float> %wide.vec1210, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.gg = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, splat (float f0x3C23D70A)
  %i.gh = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1207, splat (float f0x3C23D70A)
  %i.gi = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1209, splat (float f0x3C23D70A)
  %i.gj = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1211, splat (float f0x3C23D70A)
  %i.gk = trunc nuw nsw i64 %index1205 to i32
  %i.gl = add i32 %invariant.op473.i, %i.gk
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.gm ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 32
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 64
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 96
  store <8 x float> %i.gg, ptr %i.gn, align 4, !tbaa !21, !alias.scope !108
  store <8 x float> %i.gh, ptr %i.go, align 4, !tbaa !21, !alias.scope !108
  store <8 x float> %i.gi, ptr %i.gp, align 4, !tbaa !21, !alias.scope !108
  store <8 x float> %i.gj, ptr %i.gq, align 4, !tbaa !21, !alias.scope !108
  %index.next1212 = add nuw i64 %index1205, 32    ; 2 uses
  %i.gr = icmp eq i64 %index.next1212, %n.vec1203
  br i1 %i.gr, label %vec.epilog.iter.check1217, label %vector.body1204, !llvm.loop !41

vec.epilog.iter.check1217:                        ; preds = %vector.body1204
  br i1 %min.epilog.iters.check1218, label %vec.epilog.scalar.ph1216.preheader, label %vec.epilog.ph1219, !prof !25

vec.epilog.scalar.ph1216.preheader:               ; preds = %vec.epilog.vector.body1221, %vector.memcheck1191, %vector.scevcheck, %iter.check1215, %vec.epilog.iter.check1217
  %indvars.iv529.i.ph = phi i64 [ 0, %iter.check1215 ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck1191 ], [ %n.vec1203, %vec.epilog.iter.check1217 ], [ %n.vec1220, %vec.epilog.vector.body1221 ] ; 4 uses
  %i.gs = sub i64 %i.aj, %indvars.iv529.i.ph
  %xtraiter1427 = and i64 %i.gs, 3                ; 2 uses
  %lcmp.mod1428.not = icmp eq i64 %xtraiter1427, 0
  br i1 %lcmp.mod1428.not, label %vec.epilog.scalar.ph1216.prol.loopexit, label %vec.epilog.scalar.ph1216.prol

vec.epilog.scalar.ph1216.prol:                    ; preds = %vec.epilog.scalar.ph1216.preheader, %vec.epilog.scalar.ph1216.prol
  %indvars.iv529.i.prol = phi i64 [ %indvars.iv.next530.i.prol, %vec.epilog.scalar.ph1216.prol ], [ %indvars.iv529.i.ph, %vec.epilog.scalar.ph1216.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph1216.prol ], [ 0, %vec.epilog.scalar.ph1216.preheader ]
  %i.gt = add nuw nsw i64 %indvars.iv529.i.prol, %i.fm
  %.idx570.i.prol = shl nuw nsw i64 %i.gt, 4
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 %.idx570.i.prol
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !21
  %i.gw = fmul reassoc nsz arcp contract afn float %i.gv, f0x3C23D70A
  %i.gx = trunc nuw nsw i64 %indvars.iv529.i.prol to i32
  %.reass474.i.prol = add i32 %invariant.op473.i, %i.gx
  %i.gy = sext i32 %.reass474.i.prol to i64
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.gy
  store float %i.gw, ptr %i.gz, align 4, !tbaa !21
  %indvars.iv.next530.i.prol = add nuw nsw i64 %indvars.iv529.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1427
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph1216.prol.loopexit, label %vec.epilog.scalar.ph1216.prol, !llvm.loop !42

vec.epilog.scalar.ph1216.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1216.prol, %vec.epilog.scalar.ph1216.preheader
  %indvars.iv529.i.unr = phi i64 [ %indvars.iv529.i.ph, %vec.epilog.scalar.ph1216.preheader ], [ %indvars.iv.next530.i.prol, %vec.epilog.scalar.ph1216.prol ]
  %i.ha = sub i64 %indvars.iv529.i.ph, %i.aj
  %i.hb = icmp ugt i64 %i.ha, -4
  br i1 %i.hb, label %.unr-lcssa, label %vec.epilog.scalar.ph1216

vec.epilog.ph1219:                                ; preds = %vector.main.loop.iter.check1200, %vec.epilog.iter.check1217
  %vec.epilog.resume.val1214 = phi i64 [ %n.vec1203, %vec.epilog.iter.check1217 ], [ 0, %vector.main.loop.iter.check1200 ]
  br label %vec.epilog.vector.body1221

vec.epilog.vector.body1221:                       ; preds = %vec.epilog.vector.body1221, %vec.epilog.ph1219
  %index1222 = phi i64 [ %vec.epilog.resume.val1214, %vec.epilog.ph1219 ], [ %index.next1225, %vec.epilog.vector.body1221 ] ; 3 uses
  %i.hc = add nuw nsw i64 %index1222, %i.fm
  %i.hd = shl nuw nsw i64 %i.hc, 4
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 %i.hd
  %wide.vec1223 = load <16 x float>, ptr %i.he, align 4, !tbaa !21, !alias.scope !107, !noalias !108
  %strided.vec1224 = shufflevector <16 x float> %wide.vec1223, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.hf = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec1224, splat (float f0x3C23D70A)
  %i.hg = trunc nuw nsw i64 %index1222 to i32
  %i.hh = add i32 %invariant.op473.i, %i.hg
  %i.hi = sext i32 %i.hh to i64
  %i.hj = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.hi
  store <4 x float> %i.hf, ptr %i.hj, align 4, !tbaa !21, !alias.scope !108
  %index.next1225 = add nuw i64 %index1222, 4     ; 2 uses
  %i.hk = icmp eq i64 %index.next1225, %n.vec1220
  br i1 %i.hk, label %vec.epilog.scalar.ph1216.preheader, label %vec.epilog.vector.body1221, !llvm.loop !43

vec.epilog.scalar.ph1248:                         ; preds = %vec.epilog.scalar.ph1248.preheader, %vec.epilog.scalar.ph1248
  %indvars.iv524.i = phi i64 [ %indvars.iv.next525.i.7, %vec.epilog.scalar.ph1248 ], [ 0, %vec.epilog.scalar.ph1248.preheader ] ; 9 uses
  %niter = phi i64 [ %niter.next.7, %vec.epilog.scalar.ph1248 ], [ 0, %vec.epilog.scalar.ph1248.preheader ]
  %i.hl = load float, ptr %i.dd, align 4, !tbaa !21
  %i.hm = fmul reassoc nsz arcp contract afn float %i.hl, f0x3C23D70A
  %i.hn = getelementptr [4 x i8], ptr %i.dg, i64 %indvars.iv524.i
  store float %i.hm, ptr %i.hn, align 4, !tbaa !21
  %i.ho = load float, ptr %i.dd, align 4, !tbaa !21
  %i.hp = fmul reassoc nsz arcp contract afn float %i.ho, f0x3C23D70A
  %i.hq = getelementptr [4 x i8], ptr %i.dg, i64 %indvars.iv524.i
  %i.hr = getelementptr i8, ptr %i.hq, i64 4
  store float %i.hp, ptr %i.hr, align 4, !tbaa !21
  %i.hs = load float, ptr %i.dd, align 4, !tbaa !21
  %i.ht = fmul reassoc nsz arcp contract afn float %i.hs, f0x3C23D70A
  %i.hu = getelementptr [4 x i8], ptr %i.dg, i64 %indvars.iv524.i
  %i.hv = getelementptr i8, ptr %i.hu, i64 8
  store float %i.ht, ptr %i.hv, align 4, !tbaa !21
  %i.hw = load float, ptr %i.dd, align 4, !tbaa !21
  %i.hx = fmul reassoc nsz arcp contract afn float %i.hw, f0x3C23D70A
  %i.hy = getelementptr [4 x i8], ptr %i.dg, i64 %indvars.iv524.i
  %i.hz = getelementptr i8, ptr %i.hy, i64 12
  store float %i.hx, ptr %i.hz, align 4, !tbaa !21
  %i.ia = load float, ptr %i.dd, align 4, !tbaa !21
  %i.ib = fmul reassoc nsz arcp contract afn float %i.ia, f0x3C23D70A
  %i.ic = getelementptr [4 x i8], ptr %i.dg, i64 %indvars.iv524.i
  %i.id = getelementptr i8, ptr %i.ic, i64 16
  store float %i.ib, ptr %i.id, align 4, !tbaa !21
  %i.ie = load float, ptr %i.dd, align 4, !tbaa !21
  %i.if = fmul reassoc nsz arcp contract afn float %i.ie, f0x3C23D70A
  %i.ig = getelementptr [4 x i8], ptr %i.dg, i64 %indvars.iv524.i
  %i.ih = getelementptr i8, ptr %i.ig, i64 20
  store float %i.if, ptr %i.ih, align 4, !tbaa !21
  %i.ii = load float, ptr %i.dd, align 4, !tbaa !21
  %i.ij = fmul reassoc nsz arcp contract afn float %i.ii, f0x3C23D70A
  %i.ik = getelementptr [4 x i8], ptr %i.dg, i64 %indvars.iv524.i
  %i.il = getelementptr i8, ptr %i.ik, i64 24
  store float %i.ij, ptr %i.il, align 4, !tbaa !21
  %i.im = load float, ptr %i.dd, align 4, !tbaa !21
  %i.in = fmul reassoc nsz arcp contract afn float %i.im, f0x3C23D70A
  %i.io = getelementptr [4 x i8], ptr %i.dg, i64 %indvars.iv524.i
  %i.ip = getelementptr i8, ptr %i.io, i64 28
  store float %i.in, ptr %i.ip, align 4, !tbaa !21
  %indvars.iv.next525.i.7 = add nuw nsw i64 %indvars.iv524.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %iter.check1215.loopexit.unr-lcssa, label %vec.epilog.scalar.ph1248, !llvm.loop !44

.unr-lcssa:                                       ; preds = %vec.epilog.scalar.ph1216, %vec.epilog.scalar.ph1216.prol.loopexit
  %i.iq = add nuw nsw i64 %indvars.iv539.i, 1     ; 3 uses
  br i1 %i.af, label %iter.check, label %._crit_edge479.i

iter.check:                                       ; preds = %.unr-lcssa
  %i.ir = trunc nuw nsw i64 %i.iq to i32
  %i.is = mul i32 %i.ad, %i.ir
  %i.it = add i32 %i.is, -4
  %i.iu = sext i32 %i.it to i64
  %i.iv = getelementptr inbounds [4 x i8], ptr %0, i64 %i.iu ; 12 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %bound0 = icmp ult ptr %scevgep, %scevgep1182
  %bound1 = icmp ult ptr %i.iv, %scevgep1180
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check1183, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !21, !alias.scope !109
  %i.ix = fmul reassoc nsz arcp contract afn float %i.iw, f0x3C23D70A
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.ix, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.gep1771 = getelementptr [4 x i8], ptr %i.dg, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep1772 = getelementptr [4 x i8], ptr %invariant.gep1771, i64 %index ; 4 uses
  %i.iy = getelementptr i8, ptr %gep1772, i64 32
  %i.iz = getelementptr i8, ptr %gep1772, i64 64
  %i.ja = getelementptr i8, ptr %gep1772, i64 96
  store <8 x float> %broadcast.splat, ptr %gep1772, align 4, !tbaa !21, !alias.scope !110, !noalias !109
  store <8 x float> %broadcast.splat, ptr %i.iy, align 4, !tbaa !21, !alias.scope !110, !noalias !109
  store <8 x float> %broadcast.splat, ptr %i.iz, align 4, !tbaa !21, !alias.scope !110, !noalias !109
  store <8 x float> %broadcast.splat, ptr %i.ja, align 4, !tbaa !21, !alias.scope !110, !noalias !109
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.jb = icmp eq i64 %index.next, %n.vec
  br i1 %i.jb, label %middle.block, label %vector.body, !llvm.loop !48

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge479.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !25

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.jc = load float, ptr %i.iv, align 4, !tbaa !21, !alias.scope !109
  %i.jd = fmul reassoc nsz arcp contract afn float %i.jc, f0x3C23D70A
  %broadcast.splatinsert1186 = insertelement <4 x float> poison, float %i.jd, i64 0
  %broadcast.splat1187 = shufflevector <4 x float> %broadcast.splatinsert1186, <4 x float> poison, <4 x i32> zeroinitializer
  %invariant.gep1773 = getelementptr [4 x i8], ptr %i.dg, i64 %i.ag
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1185 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1188, %vec.epilog.vector.body ] ; 2 uses
  %gep1774 = getelementptr [4 x i8], ptr %invariant.gep1773, i64 %index1185
  store <4 x float> %broadcast.splat1187, ptr %gep1774, align 4, !tbaa !21, !alias.scope !110, !noalias !109
  %index.next1188 = add nuw i64 %index1185, 4     ; 2 uses
  %i.je = icmp eq i64 %index.next1188, %n.vec1184
  br i1 %i.je, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !49

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n1189, label %._crit_edge479.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv534.i.ph = phi i64 [ %i.ag, %iter.check ], [ %i.ag, %vector.memcheck ], [ %i.cq, %vec.epilog.iter.check ], [ %i.cr, %vec.epilog.middle.block ] ; 4 uses
  %i.jf = sub i64 %i.cd, %indvars.iv534.i.ph
  %xtraiter1429 = and i64 %i.jf, 7                ; 2 uses
  %lcmp.mod1430.not = icmp eq i64 %xtraiter1429, 0
  br i1 %lcmp.mod1430.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv534.i.prol = phi i64 [ %indvars.iv.next535.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv534.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter1431 = phi i64 [ %prol.iter1431.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.jg = load float, ptr %i.iv, align 4, !tbaa !21
  %i.jh = fmul reassoc nsz arcp contract afn float %i.jg, f0x3C23D70A
  %i.ji = getelementptr [4 x i8], ptr %i.dg, i64 %indvars.iv534.i.prol
  store float %i.jh, ptr %i.ji, align 4, !tbaa !21
  %indvars.iv.next535.i.prol = add nuw nsw i64 %indvars.iv534.i.prol, 1 ; 2 uses
  %prol.iter1431.next = add i64 %prol.iter1431, 1 ; 2 uses
  %prol.iter1431.cmp.not = icmp eq i64 %prol.iter1431.next, %xtraiter1429
  br i1 %prol.iter1431.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !50

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv534.i.unr = phi i64 [ %indvars.iv534.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next535.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.jj = sub i64 %indvars.iv534.i.ph, %i.ce
  %i.jk = icmp ugt i64 %i.jj, -8
  br i1 %i.jk, label %._crit_edge479.i, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph1216:                         ; preds = %vec.epilog.scalar.ph1216.prol.loopexit, %vec.epilog.scalar.ph1216
  %indvars.iv529.i = phi i64 [ %indvars.iv.next530.i.3, %vec.epilog.scalar.ph1216 ], [ %indvars.iv529.i.unr, %vec.epilog.scalar.ph1216.prol.loopexit ] ; 6 uses
  %i.jl = add nuw nsw i64 %indvars.iv529.i, %i.fm
  %.idx570.i = shl nuw nsw i64 %i.jl, 4
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 %.idx570.i
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !21
  %i.jo = fmul reassoc nsz arcp contract afn float %i.jn, f0x3C23D70A
  %i.jp = trunc nuw nsw i64 %indvars.iv529.i to i32
  %.reass474.i = add i32 %invariant.op473.i, %i.jp
  %i.jq = sext i32 %.reass474.i to i64
  %i.jr = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.jq
  store float %i.jo, ptr %i.jr, align 4, !tbaa !21
  %indvars.iv.next530.i = add nuw nsw i64 %indvars.iv529.i, 1 ; 2 uses
  %i.js = add nuw nsw i64 %indvars.iv.next530.i, %i.fm
  %.idx570.i.1 = shl nuw nsw i64 %i.js, 4
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 %.idx570.i.1
  %i.ju = load float, ptr %i.jt, align 4, !tbaa !21
  %i.jv = fmul reassoc nsz arcp contract afn float %i.ju, f0x3C23D70A
  %i.jw = trunc nuw nsw i64 %indvars.iv.next530.i to i32
  %.reass474.i.1 = add i32 %invariant.op473.i, %i.jw
  %i.jx = sext i32 %.reass474.i.1 to i64
  %i.jy = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.jx
  store float %i.jv, ptr %i.jy, align 4, !tbaa !21
  %indvars.iv.next530.i.1 = add nuw nsw i64 %indvars.iv529.i, 2 ; 2 uses
  %i.jz = add nuw nsw i64 %indvars.iv.next530.i.1, %i.fm
  %.idx570.i.2 = shl nuw nsw i64 %i.jz, 4
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 %.idx570.i.2
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !21
  %i.kc = fmul reassoc nsz arcp contract afn float %i.kb, f0x3C23D70A
  %i.kd = trunc nuw nsw i64 %indvars.iv.next530.i.1 to i32
  %.reass474.i.2 = add i32 %invariant.op473.i, %i.kd
  %i.ke = sext i32 %.reass474.i.2 to i64
  %i.kf = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ke
  store float %i.kc, ptr %i.kf, align 4, !tbaa !21
  %indvars.iv.next530.i.2 = add nuw nsw i64 %indvars.iv529.i, 3 ; 2 uses
  %i.kg = add nuw nsw i64 %indvars.iv.next530.i.2, %i.fm
  %.idx570.i.3 = shl nuw nsw i64 %i.kg, 4
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 %.idx570.i.3
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !21
  %i.kj = fmul reassoc nsz arcp contract afn float %i.ki, f0x3C23D70A
  %i.kk = trunc nuw nsw i64 %indvars.iv.next530.i.2 to i32
  %.reass474.i.3 = add i32 %invariant.op473.i, %i.kk
  %i.kl = sext i32 %.reass474.i.3 to i64
  %i.km = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.kl
  store float %i.kj, ptr %i.km, align 4, !tbaa !21
  %indvars.iv.next530.i.3 = add nuw nsw i64 %indvars.iv529.i, 4 ; 2 uses
  %exitcond533.not.i.3 = icmp eq i64 %indvars.iv.next530.i.3, %i.aj
  br i1 %exitcond533.not.i.3, label %.unr-lcssa, label %vec.epilog.scalar.ph1216, !llvm.loop !51

._crit_edge479.i:                                 ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.unr-lcssa
  %exitcond543.not.i = icmp eq i64 %i.iq, %wide.trip.count542.i
  br i1 %exitcond543.not.i, label %bb.f, label %iter.check1247

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv534.i = phi i64 [ %indvars.iv.next535.i.7, %vec.epilog.scalar.ph ], [ %indvars.iv534.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.kn = load float, ptr %i.iv, align 4, !tbaa !21
  %i.ko = fmul reassoc nsz arcp contract afn float %i.kn, f0x3C23D70A
  %i.kp = getelementptr [4 x i8], ptr %i.dg, i64 %indvars.iv534.i
  store float %i.ko, ptr %i.kp, align 4, !tbaa !21
  %i.kq = load float, ptr %i.iv, align 4, !tbaa !21
  %i.kr = fmul reassoc nsz arcp contract afn float %i.kq, f0x3C23D70A
  %i.ks = getelementptr [4 x i8], ptr %i.dg, i64 %indvars.iv534.i
  %i.kt = getelementptr i8, ptr %i.ks, i64 4
  store float %i.kr, ptr %i.kt, align 4, !tbaa !21
  %i.ku = load float, ptr %i.iv, align 4, !tbaa !21
  %i.kv = fmul reassoc nsz arcp contract afn float %i.ku, f0x3C23D70A
  %i.kw = getelementptr [4 x i8], ptr %i.dg, i64 %indvars.iv534.i
  %i.kx = getelementptr i8, ptr %i.kw, i64 8
  store float %i.kv, ptr %i.kx, align 4, !tbaa !21
  %i.ky = load float, ptr %i.iv, align 4, !tbaa !21
  %i.kz = fmul reassoc nsz arcp contract afn float %i.ky, f0x3C23D70A
  %i.la = getelementptr [4 x i8], ptr %i.dg, i64 %indvars.iv534.i
  %i.lb = getelementptr i8, ptr %i.la, i64 12
  store float %i.kz, ptr %i.lb, align 4, !tbaa !21
  %i.lc = load float, ptr %i.iv, align 4, !tbaa !21
  %i.ld = fmul reassoc nsz arcp contract afn float %i.lc, f0x3C23D70A
  %i.le = getelementptr [4 x i8], ptr %i.dg, i64 %indvars.iv534.i
  %i.lf = getelementptr i8, ptr %i.le, i64 16
  store float %i.ld, ptr %i.lf, align 4, !tbaa !21
  %i.lg = load float, ptr %i.iv, align 4, !tbaa !21
  %i.lh = fmul reassoc nsz arcp contract afn float %i.lg, f0x3C23D70A
  %i.li = getelementptr [4 x i8], ptr %i.dg, i64 %indvars.iv534.i
  %i.lj = getelementptr i8, ptr %i.li, i64 20
  store float %i.lh, ptr %i.lj, align 4, !tbaa !21
  %i.lk = load float, ptr %i.iv, align 4, !tbaa !21
  %i.ll = fmul reassoc nsz arcp contract afn float %i.lk, f0x3C23D70A
  %i.lm = getelementptr [4 x i8], ptr %i.dg, i64 %indvars.iv534.i
  %i.ln = getelementptr i8, ptr %i.lm, i64 24
  store float %i.ll, ptr %i.ln, align 4, !tbaa !21
  %i.lo = load float, ptr %i.iv, align 4, !tbaa !21
  %i.lp = fmul reassoc nsz arcp contract afn float %i.lo, f0x3C23D70A
  %i.lq = getelementptr [4 x i8], ptr %i.dg, i64 %indvars.iv534.i
  %i.lr = getelementptr i8, ptr %i.lq, i64 28
  store float %i.lp, ptr %i.lr, align 4, !tbaa !21
  %indvars.iv.next535.i.7 = add nuw nsw i64 %indvars.iv534.i, 8 ; 2 uses
  %exitcond538.not.i.7 = icmp eq i64 %indvars.iv.next535.i.7, %i.y
  br i1 %exitcond538.not.i.7, label %._crit_edge479.i, label %vec.epilog.scalar.ph, !llvm.loop !52

ll_pad_input.exit.loopexit.unr-lcssa:             ; preds = %bb.g
  %lcmp.mod1434.not = icmp eq i64 %xtraiter1432, 0
  br i1 %lcmp.mod1434.not, label %ll_pad_input.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %ll_pad_input.exit.loopexit.unr-lcssa, %bb.f
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %bb.f ], [ %indvars.iv.next.i.i.3, %ll_pad_input.exit.loopexit.unr-lcssa ]
  %lcmp.mod1435 = icmp ne i64 %xtraiter1432, 0
  tail call void @llvm.assume(i1 %lcmp.mod1435)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.epil, %bb.h ] ; 2 uses
  %epil.iter1433 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter1433.next, %bb.h ]
  %i.ls = trunc nuw nsw i64 %indvars.iv.i.i.epil to i32 ; 2 uses
  %i.lt = mul i32 %i.w, %i.ls
  %i.lu = zext i32 %i.lt to i64
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.lu
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.lv, ptr noundef nonnull align 4 dereferenceable(1) %i.ds, i64 %i.dt, i1 false)
  %i.lw = add i32 %i.du, %i.ls
  %i.lx = mul i32 %i.lw, %i.w
  %i.ly = zext i32 %i.lx to i64
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ly
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.lz, ptr noundef nonnull align 4 dereferenceable(1) %i.dy, i64 %i.dt, i1 false)
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter1433.next = add i64 %epil.iter1433, 1 ; 2 uses
  %epil.iter1433.cmp.not = icmp eq i64 %epil.iter1433.next, %xtraiter1432
  br i1 %epil.iter1433.cmp.not, label %ll_pad_input.exit, label %bb.h, !llvm.loop !53

ll_pad_input.exit:                                ; preds = %ll_pad_input.exit.loopexit.unr-lcssa, %bb.h, %bb.d
  %.pre1074 = phi i32 [ %.pre1074.pre, %bb.d ], [ %i.x, %bb.h ], [ %i.x, %ll_pad_input.exit.loopexit.unr-lcssa ] ; 15 uses
  %.pre = phi i32 [ %.pre.pre, %bb.d ], [ %i.w, %bb.h ], [ %i.w, %ll_pad_input.exit.loopexit.unr-lcssa ] ; 17 uses
  %i.ma = phi i32 [ %i.s, %bb.d ], [ %i.u, %bb.h ], [ %i.u, %ll_pad_input.exit.loopexit.unr-lcssa ] ; 3 uses
  %.0528797 = phi i32 [ %i.r, %bb.d ], [ %i.n, %bb.h ], [ %i.n, %ll_pad_input.exit.loopexit.unr-lcssa ] ; 16 uses
  %storemerge = phi ptr [ %i.t, %bb.d ], [ %i.ac, %bb.h ], [ %i.ac, %ll_pad_input.exit.loopexit.unr-lcssa ] ; 5 uses
  store ptr %storemerge, ptr %i.e, align 16, !tbaa !17
  %.not617 = icmp eq ptr %storemerge, null        ; 2 uses
  %.not612871 = icmp slt i32 %.0528797, 1         ; 2 uses
  %.pre1079 = add nsw i32 %.pre, -1               ; 26 uses
  %.pre1081 = add i32 %.pre1074, -1               ; 27 uses
  br i1 %.not612871, label %dl.exit649._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %ll_pad_input.exit
  %i.mb = add nuw nsw i32 %.0528797, 1
  %wide.trip.count = zext nneg i32 %i.mb to i64   ; 3 uses
  br label %bb.j

bb.i:                                             ; preds = %dl.exit649
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not, label %dl.exit649._crit_edge, label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.i
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %bb.i ] ; 3 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 6 uses
  %xtraiter1439 = and i64 %indvars.iv, 7          ; 3 uses
  %i.mc = icmp ult i64 %indvar, 7
  br i1 %i.mc, label %.lr.ph.i.epil.preheader, label %.new1438

.new1438:                                         ; preds = %bb.j
  %unroll_iter1444 = and i64 %indvars.iv, 9223372036854775800
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.new1438
  %.056.i = phi i32 [ %.pre1079, %.new1438 ], [ %i.md, %.lr.ph.i ]
  %niter1445 = phi i64 [ 0, %.new1438 ], [ %niter1445.next.7, %.lr.ph.i ]
  %i.md = sdiv i32 %.056.i, 256                   ; 3 uses
  %niter1445.next.7 = add i64 %niter1445, 8       ; 2 uses
  %niter1445.ncmp.7 = icmp eq i64 %niter1445.next.7, %unroll_iter1444
  br i1 %niter1445.ncmp.7, label %.lr.ph.i645.preheader.unr-lcssa, label %.lr.ph.i

.lr.ph.i645.preheader.unr-lcssa:                  ; preds = %.lr.ph.i
  %lcmp.mod1441.not = icmp eq i64 %xtraiter1439, 0
  br i1 %lcmp.mod1441.not, label %.lr.ph.i645.preheader, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph.i645.preheader.unr-lcssa, %bb.j
  %.056.i.epil.init = phi i32 [ %.pre1079, %bb.j ], [ %i.md, %.lr.ph.i645.preheader.unr-lcssa ]
  %lcmp.mod1443 = icmp ne i64 %xtraiter1439, 0
  tail call void @llvm.assume(i1 %lcmp.mod1443)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.056.i.epil = phi i32 [ %i.me, %.lr.ph.i.epil ], [ %.056.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter1440 = phi i64 [ %epil.iter1440.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.me = sdiv i32 %.056.i.epil, 2                ; 2 uses
  %epil.iter1440.next = add i64 %epil.iter1440, 1 ; 2 uses
  %epil.iter1440.cmp.not = icmp eq i64 %epil.iter1440.next, %xtraiter1439
  br i1 %epil.iter1440.cmp.not, label %.lr.ph.i645.preheader, label %.lr.ph.i.epil, !llvm.loop !54

.lr.ph.i645.preheader:                            ; preds = %.lr.ph.i.epil, %.lr.ph.i645.preheader.unr-lcssa
  %.lcssa1422 = phi i32 [ %i.md, %.lr.ph.i645.preheader.unr-lcssa ], [ %i.me, %.lr.ph.i.epil ]
  %xtraiter1446 = and i64 %indvars.iv, 7          ; 3 uses
  %i.mf = icmp ult i64 %indvar, 7
  br i1 %i.mf, label %.lr.ph.i645.epil.preheader, label %.lr.ph.i645.preheader.new

.lr.ph.i645.preheader.new:                        ; preds = %.lr.ph.i645.preheader
  %unroll_iter1451 = and i64 %indvars.iv, 9223372036854775800
  br label %.lr.ph.i645

.lr.ph.i645:                                      ; preds = %.lr.ph.i645, %.lr.ph.i645.preheader.new
  %.056.i647 = phi i32 [ %.pre1081, %.lr.ph.i645.preheader.new ], [ %i.mg, %.lr.ph.i645 ]
  %niter1452 = phi i64 [ 0, %.lr.ph.i645.preheader.new ], [ %niter1452.next.7, %.lr.ph.i645 ]
  %i.mg = sdiv i32 %.056.i647, 256                ; 3 uses
  %niter1452.next.7 = add i64 %niter1452, 8       ; 2 uses
  %niter1452.ncmp.7 = icmp eq i64 %niter1452.next.7, %unroll_iter1451
  br i1 %niter1452.ncmp.7, label %dl.exit649.unr-lcssa, label %.lr.ph.i645

dl.exit649.unr-lcssa:                             ; preds = %.lr.ph.i645
  %lcmp.mod1448.not = icmp eq i64 %xtraiter1446, 0
  br i1 %lcmp.mod1448.not, label %dl.exit649, label %.lr.ph.i645.epil.preheader

.lr.ph.i645.epil.preheader:                       ; preds = %dl.exit649.unr-lcssa, %.lr.ph.i645.preheader
  %.056.i647.epil.init = phi i32 [ %.pre1081, %.lr.ph.i645.preheader ], [ %i.mg, %dl.exit649.unr-lcssa ]
  %lcmp.mod1450 = icmp ne i64 %xtraiter1446, 0
  tail call void @llvm.assume(i1 %lcmp.mod1450)
  br label %.lr.ph.i645.epil

.lr.ph.i645.epil:                                 ; preds = %.lr.ph.i645.epil, %.lr.ph.i645.epil.preheader
  %.056.i647.epil = phi i32 [ %i.mh, %.lr.ph.i645.epil ], [ %.056.i647.epil.init, %.lr.ph.i645.epil.preheader ]
  %epil.iter1447 = phi i64 [ %epil.iter1447.next, %.lr.ph.i645.epil ], [ 0, %.lr.ph.i645.epil.preheader ]
  %i.mh = sdiv i32 %.056.i647.epil, 2             ; 2 uses
  %epil.iter1447.next = add i64 %epil.iter1447, 1 ; 2 uses
  %epil.iter1447.cmp.not = icmp eq i64 %epil.iter1447.next, %xtraiter1446
  br i1 %epil.iter1447.cmp.not, label %dl.exit649, label %.lr.ph.i645.epil, !llvm.loop !55

dl.exit649:                                       ; preds = %.lr.ph.i645.epil, %dl.exit649.unr-lcssa
  %.lcssa1423 = phi i32 [ %i.mg, %dl.exit649.unr-lcssa ], [ %i.mh, %.lr.ph.i645.epil ]
  %i.mi = add nsw i32 %.lcssa1422, 1
  %i.mj = sext i32 %i.mi to i64
  %i.mk = add nsw i32 %.lcssa1423, 1
  %i.ml = sext i32 %i.mk to i64
  %i.mm = shl nsw i64 %i.mj, 2
  %i.mn = mul nsw i64 %i.mm, %i.ml
  %i.mo = tail call ptr @dt_alloc_aligned(i64 noundef %i.mn) #14 ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.mo, i64 64) ]
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  store ptr %i.mo, ptr %i.mp, align 8, !tbaa !17
  %.not613 = icmp eq ptr %i.mo, null
  br i1 %.not613, label %dl.exit649._crit_edge, label %bb.i
end_hunk_0
begin_hunk_1_@ll_pad_input:bb.a
  br label %iter.check701

iter.check701:                                    ; preds = %bb.ab, %._crit_edge479
  %indvars.iv539 = phi i64 [ 0, %bb.ab ], [ %i.xt, %._crit_edge479 ] ; 6 uses
  %i.ro = trunc i64 %indvars.iv539 to i32
  %i.rp = mul i32 %i.pq, %i.ro
  %i.rq = add i32 %i.rp, %i.ql
  %i.rr = sext i32 %i.rq to i64
  %i.rs = shl nsw i64 %i.rr, 2                    ; 2 uses
  %scevgep642 = getelementptr i8, ptr %i.i, i64 %i.rs
  %scevgep644 = getelementptr i8, ptr %scevgep643, i64 %i.rs
  %i.rt = trunc i64 %indvars.iv539 to i32
  %i.ru = mul i32 %i.pp, %i.rt
  %i.rv = add i32 %i.ru, %i.qe
  %i.rw = sext i32 %i.rv to i64
  %i.rx = shl nsw i64 %i.rw, 2
  %scevgep610 = getelementptr i8, ptr %scevgep609, i64 %i.rx
  %i.ry = mul nuw nsw i64 %indvars.iv539, %i.pu
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ry ; 11 uses
  %i.sa = add nuw nsw i64 %indvars.iv539, %i.pv
  %i.sb = mul nsw i64 %i.sa, %i.pw                ; 3 uses
  %i.sc = getelementptr [4 x i8], ptr %i.i, i64 %i.sb ; 11 uses
  %brmerge = select i1 %min.iters.check688, i1 true, i1 %i.rb
  br i1 %brmerge, label %vec.epilog.scalar.ph702.preheader, label %vector.main.loop.iter.check689

vector.main.loop.iter.check689:                   ; preds = %iter.check701
  br i1 %min.iters.check690, label %vec.epilog.ph705, label %vector.ph691

vector.ph691:                                     ; preds = %vector.main.loop.iter.check689
  %i.sd = load float, ptr %i.rz, align 4, !tbaa !21, !alias.scope !219
  %i.se = fmul reassoc nsz arcp contract afn float %i.sd, f0x3C23D70A
  %broadcast.splatinsert695 = insertelement <8 x float> poison, float %i.se, i64 0
  %broadcast.splat696 = shufflevector <8 x float> %broadcast.splatinsert695, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body693

vector.body693:                                   ; preds = %vector.body693, %vector.ph691
  %index694 = phi i64 [ 0, %vector.ph691 ], [ %index.next697, %vector.body693 ] ; 2 uses
  %i.sf = getelementptr [4 x i8], ptr %i.sc, i64 %index694 ; 4 uses
  %i.sg = getelementptr i8, ptr %i.sf, i64 32
  %i.sh = getelementptr i8, ptr %i.sf, i64 64
  %i.si = getelementptr i8, ptr %i.sf, i64 96
  store <8 x float> %broadcast.splat696, ptr %i.sf, align 4, !tbaa !21, !alias.scope !220, !noalias !219
  store <8 x float> %broadcast.splat696, ptr %i.sg, align 4, !tbaa !21, !alias.scope !220, !noalias !219
  store <8 x float> %broadcast.splat696, ptr %i.sh, align 4, !tbaa !21, !alias.scope !220, !noalias !219
  store <8 x float> %broadcast.splat696, ptr %i.si, align 4, !tbaa !21, !alias.scope !220, !noalias !219
  %index.next697 = add nuw i64 %index694, 32      ; 2 uses
  %i.sj = icmp eq i64 %index.next697, %n.vec692
  br i1 %i.sj, label %middle.block698, label %vector.body693, !llvm.loop !195

middle.block698:                                  ; preds = %vector.body693
  br i1 %cmp.n699, label %iter.check666, label %vec.epilog.iter.check703

vec.epilog.iter.check703:                         ; preds = %middle.block698
  br i1 %min.epilog.iters.check704, label %vec.epilog.scalar.ph702.preheader, label %vec.epilog.ph705, !prof !25

vec.epilog.ph705:                                 ; preds = %vector.main.loop.iter.check689, %vec.epilog.iter.check703
  %vec.epilog.resume.val700 = phi i64 [ %n.vec692, %vec.epilog.iter.check703 ], [ 0, %vector.main.loop.iter.check689 ]
  %i.sk = load float, ptr %i.rz, align 4, !tbaa !21, !alias.scope !219
  %i.sl = fmul reassoc nsz arcp contract afn float %i.sk, f0x3C23D70A
  %broadcast.splatinsert709 = insertelement <4 x float> poison, float %i.sl, i64 0
  %broadcast.splat710 = shufflevector <4 x float> %broadcast.splatinsert709, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body707

vec.epilog.vector.body707:                        ; preds = %vec.epilog.vector.body707, %vec.epilog.ph705
  %index708 = phi i64 [ %vec.epilog.resume.val700, %vec.epilog.ph705 ], [ %index.next711, %vec.epilog.vector.body707 ] ; 2 uses
  %i.sm = getelementptr [4 x i8], ptr %i.sc, i64 %index708
  store <4 x float> %broadcast.splat710, ptr %i.sm, align 4, !tbaa !21, !alias.scope !220, !noalias !219
  %index.next711 = add nuw i64 %index708, 4       ; 2 uses
  %i.sn = icmp eq i64 %index.next711, %n.vec706
  br i1 %i.sn, label %vec.epilog.middle.block712, label %vec.epilog.vector.body707, !llvm.loop !196

vec.epilog.middle.block712:                       ; preds = %vec.epilog.vector.body707
  br i1 %cmp.n713, label %iter.check666, label %vec.epilog.scalar.ph702.preheader

vec.epilog.scalar.ph702.preheader:                ; preds = %iter.check701, %vec.epilog.iter.check703, %vec.epilog.middle.block712
  %indvars.iv524.ph = phi i64 [ 0, %iter.check701 ], [ %n.vec706, %vec.epilog.middle.block712 ], [ %n.vec692, %vec.epilog.iter.check703 ] ; 4 uses
  %i.so = sub nsw i64 %wide.trip.count527, %indvars.iv524.ph
  %xtraiter716 = and i64 %i.so, 7                 ; 2 uses
  %lcmp.mod717.not = icmp eq i64 %xtraiter716, 0
  br i1 %lcmp.mod717.not, label %vec.epilog.scalar.ph702.prol.loopexit, label %vec.epilog.scalar.ph702.prol

vec.epilog.scalar.ph702.prol:                     ; preds = %vec.epilog.scalar.ph702.preheader, %vec.epilog.scalar.ph702.prol
  %indvars.iv524.prol = phi i64 [ %indvars.iv.next525.prol, %vec.epilog.scalar.ph702.prol ], [ %indvars.iv524.ph, %vec.epilog.scalar.ph702.preheader ] ; 2 uses
  %prol.iter718 = phi i64 [ %prol.iter718.next, %vec.epilog.scalar.ph702.prol ], [ 0, %vec.epilog.scalar.ph702.preheader ]
  %i.sp = load float, ptr %i.rz, align 4, !tbaa !21
  %i.sq = fmul reassoc nsz arcp contract afn float %i.sp, f0x3C23D70A
  %i.sr = getelementptr [4 x i8], ptr %i.sc, i64 %indvars.iv524.prol
  store float %i.sq, ptr %i.sr, align 4, !tbaa !21
  %indvars.iv.next525.prol = add nuw nsw i64 %indvars.iv524.prol, 1 ; 2 uses
  %prol.iter718.next = add i64 %prol.iter718, 1   ; 2 uses
  %prol.iter718.cmp.not = icmp eq i64 %prol.iter718.next, %xtraiter716
  br i1 %prol.iter718.cmp.not, label %vec.epilog.scalar.ph702.prol.loopexit, label %vec.epilog.scalar.ph702.prol, !llvm.loop !197

vec.epilog.scalar.ph702.prol.loopexit:            ; preds = %vec.epilog.scalar.ph702.prol, %vec.epilog.scalar.ph702.preheader
  %indvars.iv524.unr = phi i64 [ %indvars.iv524.ph, %vec.epilog.scalar.ph702.preheader ], [ %indvars.iv.next525.prol, %vec.epilog.scalar.ph702.prol ]
  %i.ss = sub nsw i64 %indvars.iv524.ph, %wide.trip.count527
  %i.st = icmp ugt i64 %i.ss, -8
  br i1 %i.st, label %iter.check666, label %vec.epilog.scalar.ph702

bb.ac:                                            ; preds = %._crit_edge479
  %i.su = load i32, ptr %5, align 4, !tbaa !19
  %i.sv = mul i32 %i.pq, %3
  %i.sw = zext i32 %i.sv to i64
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.sw ; 5 uses
  %i.sy = zext i32 %i.pq to i64
  %i.sz = shl nuw nsw i64 %i.sy, 2                ; 10 uses
  %i.ta = sub i32 %i.su, %3                       ; 6 uses
  %i.tb = add i32 %i.ta, -1
  %i.tc = mul i32 %i.tb, %i.pq
  %i.td = zext i32 %i.tc to i64
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.td ; 5 uses
  %xtraiter727 = and i64 %wide.trip.count527, 3   ; 3 uses
  %i.tf = icmp samesign ult i32 %3, 4
  br i1 %i.tf, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.ac
  %unroll_iter = and i64 %wide.trip.count527, 1073741820
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.new
  %indvars.iv.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.3, %bb.ad ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.ad ]
  %i.tg = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.th = mul i32 %i.pq, %i.tg
  %i.ti = zext i32 %i.th to i64
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ti
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 16 %i.tj, ptr align 4 %i.sx, i64 %i.sz, i1 false)
  %i.tk = add i32 %i.ta, %i.tg
  %i.tl = mul i32 %i.tk, %i.pq
  %i.tm = zext i32 %i.tl to i64
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.tm
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.tn, ptr align 4 %i.te, i64 %i.sz, i1 false)
  %i.to = trunc i64 %indvars.iv.i to i32
  %i.tp = or disjoint i32 %i.to, 1                ; 2 uses
  %i.tq = mul i32 %i.pq, %i.tp
  %i.tr = zext i32 %i.tq to i64
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.tr
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ts, ptr align 4 %i.sx, i64 %i.sz, i1 false)
  %i.tt = add i32 %i.ta, %i.tp
  %i.tu = mul i32 %i.tt, %i.pq
  %i.tv = zext i32 %i.tu to i64
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.tv
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.tw, ptr align 4 %i.te, i64 %i.sz, i1 false)
  %i.tx = trunc i64 %indvars.iv.i to i32
  %i.ty = or disjoint i32 %i.tx, 2                ; 2 uses
  %i.tz = mul i32 %i.pq, %i.ty
  %i.ua = zext i32 %i.tz to i64
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ua
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ub, ptr align 4 %i.sx, i64 %i.sz, i1 false)
  %i.uc = add i32 %i.ta, %i.ty
  %i.ud = mul i32 %i.uc, %i.pq
  %i.ue = zext i32 %i.ud to i64
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ue
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.uf, ptr align 4 %i.te, i64 %i.sz, i1 false)
  %i.ug = trunc i64 %indvars.iv.i to i32
  %i.uh = or disjoint i32 %i.ug, 3                ; 2 uses
  %i.ui = mul i32 %i.pq, %i.uh
  %i.uj = zext i32 %i.ui to i64
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.uj
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.uk, ptr align 4 %i.sx, i64 %i.sz, i1 false)
  %i.ul = add i32 %i.ta, %i.uh
  %i.um = mul i32 %i.ul, %i.pq
  %i.un = zext i32 %i.um to i64
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.un
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.uo, ptr align 4 %i.te, i64 %i.sz, i1 false)
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %pad_by_replication.exit.loopexit.unr-lcssa, label %bb.ad

iter.check666:                                    ; preds = %vec.epilog.scalar.ph702.prol.loopexit, %vec.epilog.scalar.ph702, %vec.epilog.middle.block712, %middle.block698
  %i.up = mul nuw nsw i64 %indvars.iv539, %i.px   ; 10 uses
  %i.uq = trunc nsw i64 %i.sb to i32
  %invariant.op473 = add i32 %3, %i.uq            ; 9 uses
  br i1 %min.iters.check648, label %vec.epilog.scalar.ph667.preheader, label %vector.scevcheck639

vector.scevcheck639:                              ; preds = %iter.check666
  %i.ur = add i32 %invariant.op473, %i.rd
  %i.us = icmp slt i32 %i.ur, %invariant.op473
  %i.ut = or i1 %i.us, %i.re
  br i1 %i.ut, label %vec.epilog.scalar.ph667.preheader, label %vector.memcheck640

vector.memcheck640:                               ; preds = %vector.scevcheck639
  %bound0645 = icmp ult ptr %0, %scevgep644
  %bound1646 = icmp ult ptr %scevgep642, %scevgep641
  %found.conflict647 = and i1 %bound0645, %bound1646
  br i1 %found.conflict647, label %vec.epilog.scalar.ph667.preheader, label %vector.main.loop.iter.check649

vector.main.loop.iter.check649:                   ; preds = %vector.memcheck640
  br i1 %min.iters.check650, label %vec.epilog.ph670, label %vector.body653

vector.body653:                                   ; preds = %vector.main.loop.iter.check649, %vector.body653
  %index654 = phi i64 [ %index.next663, %vector.body653 ], [ 0, %vector.main.loop.iter.check649 ] ; 6 uses
  %i.uu = or disjoint i64 %index654, 8
  %i.uv = or disjoint i64 %index654, 16
  %i.uw = or disjoint i64 %index654, 24
  %i.ux = add nuw nsw i64 %index654, %i.up
  %i.uy = add nuw nsw i64 %i.uu, %i.up
  %i.uz = add nuw nsw i64 %i.uv, %i.up
  %i.va = add nuw nsw i64 %i.uw, %i.up
  %i.vb = shl nuw nsw i64 %i.ux, 4
  %i.vc = shl nuw nsw i64 %i.uy, 4
  %i.vd = shl nuw nsw i64 %i.uz, 4
  %i.ve = shl nuw nsw i64 %i.va, 4
  %i.vf = getelementptr inbounds nuw i8, ptr %0, i64 %i.vb
  %i.vg = getelementptr inbounds nuw i8, ptr %0, i64 %i.vc
  %i.vh = getelementptr inbounds nuw i8, ptr %0, i64 %i.vd
  %i.vi = getelementptr inbounds nuw i8, ptr %0, i64 %i.ve
  %wide.vec655 = load <32 x float>, ptr %i.vf, align 4, !tbaa !21, !alias.scope !221, !noalias !222
  %strided.vec656 = shufflevector <32 x float> %wide.vec655, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec657 = load <32 x float>, ptr %i.vg, align 4, !tbaa !21, !alias.scope !221, !noalias !222
  %strided.vec658 = shufflevector <32 x float> %wide.vec657, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec659 = load <32 x float>, ptr %i.vh, align 4, !tbaa !21, !alias.scope !221, !noalias !222
  %strided.vec660 = shufflevector <32 x float> %wide.vec659, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec661 = load <32 x float>, ptr %i.vi, align 4, !tbaa !21, !alias.scope !221, !noalias !222
  %strided.vec662 = shufflevector <32 x float> %wide.vec661, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.vj = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec656, splat (float f0x3C23D70A)
  %i.vk = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec658, splat (float f0x3C23D70A)
  %i.vl = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec660, splat (float f0x3C23D70A)
  %i.vm = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec662, splat (float f0x3C23D70A)
  %i.vn = trunc nuw nsw i64 %index654 to i32
  %i.vo = add i32 %invariant.op473, %i.vn
  %i.vp = sext i32 %i.vo to i64
  %i.vq = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.vp ; 4 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 32
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vq, i64 64
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vq, i64 96
  store <8 x float> %i.vj, ptr %i.vq, align 4, !tbaa !21, !alias.scope !222
  store <8 x float> %i.vk, ptr %i.vr, align 4, !tbaa !21, !alias.scope !222
  store <8 x float> %i.vl, ptr %i.vs, align 4, !tbaa !21, !alias.scope !222
  store <8 x float> %i.vm, ptr %i.vt, align 4, !tbaa !21, !alias.scope !222
  %index.next663 = add nuw i64 %index654, 32      ; 2 uses
  %i.vu = icmp eq i64 %index.next663, %n.vec652
  br i1 %i.vu, label %vec.epilog.iter.check668, label %vector.body653, !llvm.loop !201

vec.epilog.iter.check668:                         ; preds = %vector.body653
  br i1 %min.epilog.iters.check669, label %vec.epilog.scalar.ph667.preheader, label %vec.epilog.ph670, !prof !25

vec.epilog.scalar.ph667.preheader:                ; preds = %vec.epilog.vector.body672, %vector.memcheck640, %vector.scevcheck639, %iter.check666, %vec.epilog.iter.check668
  %indvars.iv529.ph = phi i64 [ 0, %iter.check666 ], [ 0, %vector.scevcheck639 ], [ 0, %vector.memcheck640 ], [ %n.vec652, %vec.epilog.iter.check668 ], [ %n.vec671, %vec.epilog.vector.body672 ] ; 4 uses
  %i.vv = sub i64 %wide.trip.count532, %indvars.iv529.ph
  %xtraiter719 = and i64 %i.vv, 3                 ; 2 uses
  %lcmp.mod720.not = icmp eq i64 %xtraiter719, 0
  br i1 %lcmp.mod720.not, label %vec.epilog.scalar.ph667.prol.loopexit, label %vec.epilog.scalar.ph667.prol

vec.epilog.scalar.ph667.prol:                     ; preds = %vec.epilog.scalar.ph667.preheader, %vec.epilog.scalar.ph667.prol
  %indvars.iv529.prol = phi i64 [ %indvars.iv.next530.prol, %vec.epilog.scalar.ph667.prol ], [ %indvars.iv529.ph, %vec.epilog.scalar.ph667.preheader ] ; 3 uses
  %prol.iter721 = phi i64 [ %prol.iter721.next, %vec.epilog.scalar.ph667.prol ], [ 0, %vec.epilog.scalar.ph667.preheader ]
  %i.vw = add nuw nsw i64 %indvars.iv529.prol, %i.up
  %.idx570.prol = shl nuw nsw i64 %i.vw, 4
  %i.vx = getelementptr inbounds nuw i8, ptr %0, i64 %.idx570.prol
  %i.vy = load float, ptr %i.vx, align 4, !tbaa !21
  %i.vz = fmul reassoc nsz arcp contract afn float %i.vy, f0x3C23D70A
  %i.wa = trunc nuw nsw i64 %indvars.iv529.prol to i32
  %.reass474.prol = add i32 %invariant.op473, %i.wa
  %i.wb = sext i32 %.reass474.prol to i64
  %i.wc = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.wb
  store float %i.vz, ptr %i.wc, align 4, !tbaa !21
  %indvars.iv.next530.prol = add nuw nsw i64 %indvars.iv529.prol, 1 ; 2 uses
  %prol.iter721.next = add i64 %prol.iter721, 1   ; 2 uses
  %prol.iter721.cmp.not = icmp eq i64 %prol.iter721.next, %xtraiter719
  br i1 %prol.iter721.cmp.not, label %vec.epilog.scalar.ph667.prol.loopexit, label %vec.epilog.scalar.ph667.prol, !llvm.loop !202

vec.epilog.scalar.ph667.prol.loopexit:            ; preds = %vec.epilog.scalar.ph667.prol, %vec.epilog.scalar.ph667.preheader
  %indvars.iv529.unr = phi i64 [ %indvars.iv529.ph, %vec.epilog.scalar.ph667.preheader ], [ %indvars.iv.next530.prol, %vec.epilog.scalar.ph667.prol ]
  %i.wd = sub i64 %indvars.iv529.ph, %wide.trip.count532
  %i.we = icmp ugt i64 %i.wd, -4
  br i1 %i.we, label %.unr-lcssa722, label %vec.epilog.scalar.ph667

vec.epilog.ph670:                                 ; preds = %vector.main.loop.iter.check649, %vec.epilog.iter.check668
  %vec.epilog.resume.val665 = phi i64 [ %n.vec652, %vec.epilog.iter.check668 ], [ 0, %vector.main.loop.iter.check649 ]
  br label %vec.epilog.vector.body672

vec.epilog.vector.body672:                        ; preds = %vec.epilog.vector.body672, %vec.epilog.ph670
  %index673 = phi i64 [ %vec.epilog.resume.val665, %vec.epilog.ph670 ], [ %index.next676, %vec.epilog.vector.body672 ] ; 3 uses
  %i.wf = add nuw nsw i64 %index673, %i.up
  %i.wg = shl nuw nsw i64 %i.wf, 4
  %i.wh = getelementptr inbounds nuw i8, ptr %0, i64 %i.wg
  %wide.vec674 = load <16 x float>, ptr %i.wh, align 4, !tbaa !21, !alias.scope !221, !noalias !222
  %strided.vec675 = shufflevector <16 x float> %wide.vec674, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.wi = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec675, splat (float f0x3C23D70A)
  %i.wj = trunc nuw nsw i64 %index673 to i32
  %i.wk = add i32 %invariant.op473, %i.wj
  %i.wl = sext i32 %i.wk to i64
  %i.wm = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.wl
  store <4 x float> %i.wi, ptr %i.wm, align 4, !tbaa !21, !alias.scope !222
  %index.next676 = add nuw i64 %index673, 4       ; 2 uses
  %i.wn = icmp eq i64 %index.next676, %n.vec671
  br i1 %i.wn, label %vec.epilog.scalar.ph667.preheader, label %vec.epilog.vector.body672, !llvm.loop !203

vec.epilog.scalar.ph702:                          ; preds = %vec.epilog.scalar.ph702.prol.loopexit, %vec.epilog.scalar.ph702
  %indvars.iv524 = phi i64 [ %indvars.iv.next525.7, %vec.epilog.scalar.ph702 ], [ %indvars.iv524.unr, %vec.epilog.scalar.ph702.prol.loopexit ] ; 9 uses
  %i.wo = load float, ptr %i.rz, align 4, !tbaa !21
  %i.wp = fmul reassoc nsz arcp contract afn float %i.wo, f0x3C23D70A
  %i.wq = getelementptr [4 x i8], ptr %i.sc, i64 %indvars.iv524
  store float %i.wp, ptr %i.wq, align 4, !tbaa !21
  %i.wr = load float, ptr %i.rz, align 4, !tbaa !21
  %i.ws = fmul reassoc nsz arcp contract afn float %i.wr, f0x3C23D70A
  %i.wt = getelementptr [4 x i8], ptr %i.sc, i64 %indvars.iv524
  %i.wu = getelementptr i8, ptr %i.wt, i64 4
  store float %i.ws, ptr %i.wu, align 4, !tbaa !21
  %i.wv = load float, ptr %i.rz, align 4, !tbaa !21
  %i.ww = fmul reassoc nsz arcp contract afn float %i.wv, f0x3C23D70A
  %i.wx = getelementptr [4 x i8], ptr %i.sc, i64 %indvars.iv524
  %i.wy = getelementptr i8, ptr %i.wx, i64 8
  store float %i.ww, ptr %i.wy, align 4, !tbaa !21
  %i.wz = load float, ptr %i.rz, align 4, !tbaa !21
  %i.xa = fmul reassoc nsz arcp contract afn float %i.wz, f0x3C23D70A
  %i.xb = getelementptr [4 x i8], ptr %i.sc, i64 %indvars.iv524
  %i.xc = getelementptr i8, ptr %i.xb, i64 12
  store float %i.xa, ptr %i.xc, align 4, !tbaa !21
  %i.xd = load float, ptr %i.rz, align 4, !tbaa !21
  %i.xe = fmul reassoc nsz arcp contract afn float %i.xd, f0x3C23D70A
  %i.xf = getelementptr [4 x i8], ptr %i.sc, i64 %indvars.iv524
  %i.xg = getelementptr i8, ptr %i.xf, i64 16
  store float %i.xe, ptr %i.xg, align 4, !tbaa !21
  %i.xh = load float, ptr %i.rz, align 4, !tbaa !21
  %i.xi = fmul reassoc nsz arcp contract afn float %i.xh, f0x3C23D70A
  %i.xj = getelementptr [4 x i8], ptr %i.sc, i64 %indvars.iv524
  %i.xk = getelementptr i8, ptr %i.xj, i64 20
  store float %i.xi, ptr %i.xk, align 4, !tbaa !21
  %i.xl = load float, ptr %i.rz, align 4, !tbaa !21
  %i.xm = fmul reassoc nsz arcp contract afn float %i.xl, f0x3C23D70A
  %i.xn = getelementptr [4 x i8], ptr %i.sc, i64 %indvars.iv524
  %i.xo = getelementptr i8, ptr %i.xn, i64 24
  store float %i.xm, ptr %i.xo, align 4, !tbaa !21
  %i.xp = load float, ptr %i.rz, align 4, !tbaa !21
  %i.xq = fmul reassoc nsz arcp contract afn float %i.xp, f0x3C23D70A
  %i.xr = getelementptr [4 x i8], ptr %i.sc, i64 %indvars.iv524
  %i.xs = getelementptr i8, ptr %i.xr, i64 28
  store float %i.xq, ptr %i.xs, align 4, !tbaa !21
  %indvars.iv.next525.7 = add nuw nsw i64 %indvars.iv524, 8 ; 2 uses
  %exitcond528.not.7 = icmp eq i64 %indvars.iv.next525.7, %wide.trip.count527
  br i1 %exitcond528.not.7, label %iter.check666, label %vec.epilog.scalar.ph702, !llvm.loop !204

.unr-lcssa722:                                    ; preds = %vec.epilog.scalar.ph667, %vec.epilog.scalar.ph667.prol.loopexit
  %i.xt = add nuw nsw i64 %indvars.iv539, 1       ; 3 uses
  br i1 %i.ps, label %iter.check625, label %._crit_edge479

iter.check625:                                    ; preds = %.unr-lcssa722
  %i.xu = trunc nuw nsw i64 %i.xt to i32
  %i.xv = mul i32 %i.pp, %i.xu
  %i.xw = add i32 %i.xv, -4
  %i.xx = sext i32 %i.xw to i64
  %i.xy = getelementptr inbounds [4 x i8], ptr %0, i64 %i.xx ; 12 uses
  %i.xz = getelementptr [4 x i8], ptr %i.i, i64 %i.sb ; 11 uses
  br i1 %min.iters.check614, label %vec.epilog.scalar.ph626.preheader, label %vector.memcheck606

vector.memcheck606:                               ; preds = %iter.check625
  %bound0611 = icmp ult ptr %scevgep607, %scevgep610
  %bound1612 = icmp ult ptr %i.xy, %scevgep608
  %found.conflict613 = and i1 %bound0611, %bound1612
  %i.ya = or i1 %found.conflict613, %stride.check
  br i1 %i.ya, label %vec.epilog.scalar.ph626.preheader, label %vector.main.loop.iter.check615

vector.main.loop.iter.check615:                   ; preds = %vector.memcheck606
  br i1 %min.iters.check616, label %vec.epilog.ph629, label %vector.ph617

vector.ph617:                                     ; preds = %vector.main.loop.iter.check615
  %i.yb = load float, ptr %i.xy, align 4, !tbaa !21, !alias.scope !223
  %i.yc = fmul reassoc nsz arcp contract afn float %i.yb, f0x3C23D70A
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.yc, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.gep730 = getelementptr [4 x i8], ptr %i.xz, i64 %i.pt
  br label %vector.body619

vector.body619:                                   ; preds = %vector.body619, %vector.ph617
  %index620 = phi i64 [ 0, %vector.ph617 ], [ %index.next621, %vector.body619 ] ; 2 uses
  %gep731 = getelementptr [4 x i8], ptr %invariant.gep730, i64 %index620 ; 4 uses
  %i.yd = getelementptr i8, ptr %gep731, i64 32
  %i.ye = getelementptr i8, ptr %gep731, i64 64
  %i.yf = getelementptr i8, ptr %gep731, i64 96
  store <8 x float> %broadcast.splat, ptr %gep731, align 4, !tbaa !21, !alias.scope !224, !noalias !223
  store <8 x float> %broadcast.splat, ptr %i.yd, align 4, !tbaa !21, !alias.scope !224, !noalias !223
  store <8 x float> %broadcast.splat, ptr %i.ye, align 4, !tbaa !21, !alias.scope !224, !noalias !223
  store <8 x float> %broadcast.splat, ptr %i.yf, align 4, !tbaa !21, !alias.scope !224, !noalias !223
  %index.next621 = add nuw i64 %index620, 32      ; 2 uses
  %i.yg = icmp eq i64 %index.next621, %n.vec618
  br i1 %i.yg, label %middle.block622, label %vector.body619, !llvm.loop !208

middle.block622:                                  ; preds = %vector.body619
  br i1 %cmp.n, label %._crit_edge479, label %vec.epilog.iter.check627

vec.epilog.iter.check627:                         ; preds = %middle.block622
  br i1 %min.epilog.iters.check628, label %vec.epilog.scalar.ph626.preheader, label %vec.epilog.ph629, !prof !25

vec.epilog.ph629:                                 ; preds = %vector.main.loop.iter.check615, %vec.epilog.iter.check627
  %vec.epilog.resume.val623 = phi i64 [ %n.vec618, %vec.epilog.iter.check627 ], [ 0, %vector.main.loop.iter.check615 ]
  %i.yh = load float, ptr %i.xy, align 4, !tbaa !21, !alias.scope !223
  %i.yi = fmul reassoc nsz arcp contract afn float %i.yh, f0x3C23D70A
  %broadcast.splatinsert633 = insertelement <4 x float> poison, float %i.yi, i64 0
  %broadcast.splat634 = shufflevector <4 x float> %broadcast.splatinsert633, <4 x float> poison, <4 x i32> zeroinitializer
  %invariant.gep732 = getelementptr [4 x i8], ptr %i.xz, i64 %i.pt
  br label %vec.epilog.vector.body631

vec.epilog.vector.body631:                        ; preds = %vec.epilog.vector.body631, %vec.epilog.ph629
  %index632 = phi i64 [ %vec.epilog.resume.val623, %vec.epilog.ph629 ], [ %index.next635, %vec.epilog.vector.body631 ] ; 2 uses
  %gep733 = getelementptr [4 x i8], ptr %invariant.gep732, i64 %index632
  store <4 x float> %broadcast.splat634, ptr %gep733, align 4, !tbaa !21, !alias.scope !224, !noalias !223
  %index.next635 = add nuw i64 %index632, 4       ; 2 uses
  %i.yj = icmp eq i64 %index.next635, %n.vec630
  br i1 %i.yj, label %vec.epilog.middle.block636, label %vec.epilog.vector.body631, !llvm.loop !209

vec.epilog.middle.block636:                       ; preds = %vec.epilog.vector.body631
  br i1 %cmp.n637, label %._crit_edge479, label %vec.epilog.scalar.ph626.preheader

vec.epilog.scalar.ph626.preheader:                ; preds = %vector.memcheck606, %iter.check625, %vec.epilog.iter.check627, %vec.epilog.middle.block636
  %indvars.iv534.ph = phi i64 [ %i.pt, %iter.check625 ], [ %i.pt, %vector.memcheck606 ], [ %i.rm, %vec.epilog.iter.check627 ], [ %i.rn, %vec.epilog.middle.block636 ] ; 4 uses
  %i.yk = sub nsw i64 %i.pw, %indvars.iv534.ph
  %xtraiter723 = and i64 %i.yk, 7                 ; 2 uses
  %lcmp.mod724.not = icmp eq i64 %xtraiter723, 0
  br i1 %lcmp.mod724.not, label %vec.epilog.scalar.ph626.prol.loopexit, label %vec.epilog.scalar.ph626.prol

vec.epilog.scalar.ph626.prol:                     ; preds = %vec.epilog.scalar.ph626.preheader, %vec.epilog.scalar.ph626.prol
  %indvars.iv534.prol = phi i64 [ %indvars.iv.next535.prol, %vec.epilog.scalar.ph626.prol ], [ %indvars.iv534.ph, %vec.epilog.scalar.ph626.preheader ] ; 2 uses
  %prol.iter725 = phi i64 [ %prol.iter725.next, %vec.epilog.scalar.ph626.prol ], [ 0, %vec.epilog.scalar.ph626.preheader ]
  %i.yl = load float, ptr %i.xy, align 4, !tbaa !21
  %i.ym = fmul reassoc nsz arcp contract afn float %i.yl, f0x3C23D70A
  %i.yn = getelementptr [4 x i8], ptr %i.xz, i64 %indvars.iv534.prol
  store float %i.ym, ptr %i.yn, align 4, !tbaa !21
  %indvars.iv.next535.prol = add nuw nsw i64 %indvars.iv534.prol, 1 ; 2 uses
  %prol.iter725.next = add i64 %prol.iter725, 1   ; 2 uses
  %prol.iter725.cmp.not = icmp eq i64 %prol.iter725.next, %xtraiter723
  br i1 %prol.iter725.cmp.not, label %vec.epilog.scalar.ph626.prol.loopexit, label %vec.epilog.scalar.ph626.prol, !llvm.loop !210

vec.epilog.scalar.ph626.prol.loopexit:            ; preds = %vec.epilog.scalar.ph626.prol, %vec.epilog.scalar.ph626.preheader
  %indvars.iv534.unr = phi i64 [ %indvars.iv534.ph, %vec.epilog.scalar.ph626.preheader ], [ %indvars.iv.next535.prol, %vec.epilog.scalar.ph626.prol ]
  %i.yo = sub nsw i64 %indvars.iv534.ph, %i.pw
  %i.yp = icmp ugt i64 %i.yo, -8
  br i1 %i.yp, label %._crit_edge479, label %vec.epilog.scalar.ph626

vec.epilog.scalar.ph667:                          ; preds = %vec.epilog.scalar.ph667.prol.loopexit, %vec.epilog.scalar.ph667
  %indvars.iv529 = phi i64 [ %indvars.iv.next530.3, %vec.epilog.scalar.ph667 ], [ %indvars.iv529.unr, %vec.epilog.scalar.ph667.prol.loopexit ] ; 6 uses
  %i.yq = add nuw nsw i64 %indvars.iv529, %i.up
  %.idx570 = shl nuw nsw i64 %i.yq, 4
  %i.yr = getelementptr inbounds nuw i8, ptr %0, i64 %.idx570
  %i.ys = load float, ptr %i.yr, align 4, !tbaa !21
  %i.yt = fmul reassoc nsz arcp contract afn float %i.ys, f0x3C23D70A
  %i.yu = trunc nuw nsw i64 %indvars.iv529 to i32
  %.reass474 = add i32 %invariant.op473, %i.yu
  %i.yv = sext i32 %.reass474 to i64
  %i.yw = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.yv
  store float %i.yt, ptr %i.yw, align 4, !tbaa !21
  %indvars.iv.next530 = add nuw nsw i64 %indvars.iv529, 1 ; 2 uses
  %i.yx = add nuw nsw i64 %indvars.iv.next530, %i.up
  %.idx570.1 = shl nuw nsw i64 %i.yx, 4
  %i.yy = getelementptr inbounds nuw i8, ptr %0, i64 %.idx570.1
  %i.yz = load float, ptr %i.yy, align 4, !tbaa !21
  %i.za = fmul reassoc nsz arcp contract afn float %i.yz, f0x3C23D70A
  %i.zb = trunc nuw nsw i64 %indvars.iv.next530 to i32
  %.reass474.1 = add i32 %invariant.op473, %i.zb
  %i.zc = sext i32 %.reass474.1 to i64
  %i.zd = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.zc
  store float %i.za, ptr %i.zd, align 4, !tbaa !21
  %indvars.iv.next530.1 = add nuw nsw i64 %indvars.iv529, 2 ; 2 uses
  %i.ze = add nuw nsw i64 %indvars.iv.next530.1, %i.up
  %.idx570.2 = shl nuw nsw i64 %i.ze, 4
  %i.zf = getelementptr inbounds nuw i8, ptr %0, i64 %.idx570.2
  %i.zg = load float, ptr %i.zf, align 4, !tbaa !21
  %i.zh = fmul reassoc nsz arcp contract afn float %i.zg, f0x3C23D70A
  %i.zi = trunc nuw nsw i64 %indvars.iv.next530.1 to i32
  %.reass474.2 = add i32 %invariant.op473, %i.zi
  %i.zj = sext i32 %.reass474.2 to i64
  %i.zk = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.zj
  store float %i.zh, ptr %i.zk, align 4, !tbaa !21
  %indvars.iv.next530.2 = add nuw nsw i64 %indvars.iv529, 3 ; 2 uses
  %i.zl = add nuw nsw i64 %indvars.iv.next530.2, %i.up
  %.idx570.3 = shl nuw nsw i64 %i.zl, 4
  %i.zm = getelementptr inbounds nuw i8, ptr %0, i64 %.idx570.3
  %i.zn = load float, ptr %i.zm, align 4, !tbaa !21
  %i.zo = fmul reassoc nsz arcp contract afn float %i.zn, f0x3C23D70A
  %i.zp = trunc nuw nsw i64 %indvars.iv.next530.2 to i32
  %.reass474.3 = add i32 %invariant.op473, %i.zp
  %i.zq = sext i32 %.reass474.3 to i64
  %i.zr = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.zq
  store float %i.zo, ptr %i.zr, align 4, !tbaa !21
  %indvars.iv.next530.3 = add nuw nsw i64 %indvars.iv529, 4 ; 2 uses
  %exitcond533.not.3 = icmp eq i64 %indvars.iv.next530.3, %wide.trip.count532
  br i1 %exitcond533.not.3, label %.unr-lcssa722, label %vec.epilog.scalar.ph667, !llvm.loop !211

._crit_edge479:                                   ; preds = %vec.epilog.scalar.ph626.prol.loopexit, %vec.epilog.scalar.ph626, %middle.block622, %vec.epilog.middle.block636, %.unr-lcssa722
  %exitcond543.not = icmp eq i64 %i.xt, %wide.trip.count542
  br i1 %exitcond543.not, label %bb.ac, label %iter.check701

vec.epilog.scalar.ph626:                          ; preds = %vec.epilog.scalar.ph626.prol.loopexit, %vec.epilog.scalar.ph626
  %indvars.iv534 = phi i64 [ %indvars.iv.next535.7, %vec.epilog.scalar.ph626 ], [ %indvars.iv534.unr, %vec.epilog.scalar.ph626.prol.loopexit ] ; 9 uses
  %i.zs = load float, ptr %i.xy, align 4, !tbaa !21
  %i.zt = fmul reassoc nsz arcp contract afn float %i.zs, f0x3C23D70A
  %i.zu = getelementptr [4 x i8], ptr %i.xz, i64 %indvars.iv534
  store float %i.zt, ptr %i.zu, align 4, !tbaa !21
  %i.zv = load float, ptr %i.xy, align 4, !tbaa !21
  %i.zw = fmul reassoc nsz arcp contract afn float %i.zv, f0x3C23D70A
  %i.zx = getelementptr [4 x i8], ptr %i.xz, i64 %indvars.iv534
  %i.zy = getelementptr i8, ptr %i.zx, i64 4
  store float %i.zw, ptr %i.zy, align 4, !tbaa !21
  %i.zz = load float, ptr %i.xy, align 4, !tbaa !21
  %i.aaa = fmul reassoc nsz arcp contract afn float %i.zz, f0x3C23D70A
  %i.aab = getelementptr [4 x i8], ptr %i.xz, i64 %indvars.iv534
  %i.aac = getelementptr i8, ptr %i.aab, i64 8
  store float %i.aaa, ptr %i.aac, align 4, !tbaa !21
  %i.aad = load float, ptr %i.xy, align 4, !tbaa !21
  %i.aae = fmul reassoc nsz arcp contract afn float %i.aad, f0x3C23D70A
  %i.aaf = getelementptr [4 x i8], ptr %i.xz, i64 %indvars.iv534
  %i.aag = getelementptr i8, ptr %i.aaf, i64 12
  store float %i.aae, ptr %i.aag, align 4, !tbaa !21
  %i.aah = load float, ptr %i.xy, align 4, !tbaa !21
  %i.aai = fmul reassoc nsz arcp contract afn float %i.aah, f0x3C23D70A
  %i.aaj = getelementptr [4 x i8], ptr %i.xz, i64 %indvars.iv534
  %i.aak = getelementptr i8, ptr %i.aaj, i64 16
  store float %i.aai, ptr %i.aak, align 4, !tbaa !21
  %i.aal = load float, ptr %i.xy, align 4, !tbaa !21
  %i.aam = fmul reassoc nsz arcp contract afn float %i.aal, f0x3C23D70A
  %i.aan = getelementptr [4 x i8], ptr %i.xz, i64 %indvars.iv534
  %i.aao = getelementptr i8, ptr %i.aan, i64 20
  store float %i.aam, ptr %i.aao, align 4, !tbaa !21
  %i.aap = load float, ptr %i.xy, align 4, !tbaa !21
  %i.aaq = fmul reassoc nsz arcp contract afn float %i.aap, f0x3C23D70A
  %i.aar = getelementptr [4 x i8], ptr %i.xz, i64 %indvars.iv534
  %i.aas = getelementptr i8, ptr %i.aar, i64 24
  store float %i.aaq, ptr %i.aas, align 4, !tbaa !21
  %i.aat = load float, ptr %i.xy, align 4, !tbaa !21
  %i.aau = fmul reassoc nsz arcp contract afn float %i.aat, f0x3C23D70A
  %i.aav = getelementptr [4 x i8], ptr %i.xz, i64 %indvars.iv534
  %i.aaw = getelementptr i8, ptr %i.aav, i64 28
  store float %i.aau, ptr %i.aaw, align 4, !tbaa !21
  %indvars.iv.next535.7 = add nuw nsw i64 %indvars.iv534, 8 ; 2 uses
  %exitcond538.not.7 = icmp eq i64 %indvars.iv.next535.7, %i.pw
  br i1 %exitcond538.not.7, label %._crit_edge479, label %vec.epilog.scalar.ph626, !llvm.loop !212

pad_by_replication.exit.loopexit.unr-lcssa:       ; preds = %bb.ad
  %lcmp.mod728.not = icmp eq i64 %xtraiter727, 0
  br i1 %lcmp.mod728.not, label %pad_by_replication.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %pad_by_replication.exit.loopexit.unr-lcssa, %bb.ac
  %indvars.iv.i.epil.init = phi i64 [ 0, %bb.ac ], [ %indvars.iv.next.i.3, %pad_by_replication.exit.loopexit.unr-lcssa ]
  %lcmp.mod729 = icmp ne i64 %xtraiter727, 0
  tail call void @llvm.assume(i1 %lcmp.mod729)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.ae ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ae ]
  %i.aax = trunc nuw nsw i64 %indvars.iv.i.epil to i32 ; 2 uses
  %i.aay = mul i32 %i.pq, %i.aax
  %i.aaz = zext i32 %i.aay to i64
  %i.aba = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.aaz
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.aba, ptr align 4 %i.sx, i64 %i.sz, i1 false)
  %i.abb = add i32 %i.ta, %i.aax
  %i.abc = mul i32 %i.abb, %i.pq
  %i.abd = zext i32 %i.abc to i64
  %i.abe = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.abd
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.abe, ptr align 4 %i.te, i64 %i.sz, i1 false)
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter727
  br i1 %epil.iter.cmp.not, label %pad_by_replication.exit, label %bb.ae, !llvm.loop !213

pad_by_replication.exit:                          ; preds = %._crit_edge466, %pad_by_replication.exit.loopexit.unr-lcssa, %bb.ae, %.split, %.preheader435
  br i1 %.not, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %pad_by_replication.exit
  %i.abf = load i32, ptr %6, align 8, !tbaa !18
  %i.abg = icmp eq i32 %i.abf, 2
  %i.abh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3096), align 8
  %i.abi = icmp ne ptr %i.abh, null
  %or.cond9 = select i1 %i.abg, i1 %i.abi, i1 false
  br i1 %or.cond9, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.abj = load i32, ptr %4, align 4, !tbaa !19
  %i.abk = load i32, ptr %5, align 4, !tbaa !19
  tail call void @dt_dump_pfm(ptr noundef nonnull @.str.4, ptr noundef nonnull %i.i, i32 noundef %i.abj, i32 noundef %i.abk, i32 noundef 16, ptr noundef nonnull @.str.1) #14
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %pad_by_replication.exit
  ret ptr %i.i
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gauss_reduce(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef range(i64 -2147483648, 2147483648) %2, i64 noundef range(i64 -2147483648, 2147483648) %3) unnamed_addr #7 {
bb.a:
  %i.a = add nsw i64 %2, -1                       ; 2 uses
  %i.b = lshr i64 %i.a, 1                         ; 2 uses
  %i.c = add nuw i64 %i.b, 1                      ; 2 uses
  %i.d = add nsw i64 %3, -1                       ; 2 uses
  %i.e = lshr i64 %i.d, 1                         ; 5 uses
  %i.f = icmp ugt i64 %i.d, 3
  br i1 %i.f, label %.lr.ph110, label %._crit_edge111

.lr.ph110:                                        ; preds = %bb.a
  %.idx.i = shl nsw i64 %2, 3                     ; 3 uses
  %.idx41.i = mul nsw i64 %2, 12                  ; 3 uses
  %.idx42.i = shl nsw i64 %2, 4                   ; 3 uses
  %i.g = add nsw i64 %i.b, -2                     ; 3 uses
  %.not = icmp eq i64 %i.g, 0
  %i.h = and i64 %i.a, 2
  %.not.not = icmp eq i64 %i.h, 0
  br label %bb.b

._crit_edge111:                                   ; preds = %bb.d, %bb.a
  tail call void @llvm.x86.sse.sfence()
  %i.i = trunc i64 %i.e to i32
  %i.j = add i32 %i.i, 1
  %i.k = icmp sgt i32 %i.j, 2
  %sext = shl i64 %i.c, 32                        ; 13 uses
  br i1 %i.k, label %.lr.ph.preheader.i, label %ll_fill_boundary1.exit

.lr.ph.preheader.i:                               ; preds = %._crit_edge111
  %i.l = ashr exact i64 %sext, 32                 ; 9 uses
  %wide.trip.count.i = and i64 %i.e, 4294967295   ; 2 uses
  %i.m = add nsw i64 %wide.trip.count.i, -1       ; 4 uses
  %i.n = add nsw i64 %wide.trip.count.i, -2       ; 2 uses
  %xtraiter = and i64 %i.m, 7                     ; 3 uses
  %i.o = icmp ult i64 %i.n, 7
  br i1 %i.o, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.m, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.7, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.p = mul nsw i64 %indvars.iv.i, %i.l
  %i.q = getelementptr [4 x i8], ptr %1, i64 %i.p ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 4
  %i.s = load float, ptr %i.r, align 4, !tbaa !21
  store float %i.s, ptr %i.q, align 4, !tbaa !21
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.t = mul nsw i64 %indvars.iv.next.i, %i.l
  %i.u = getelementptr [4 x i8], ptr %1, i64 %i.t ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 4
  %i.w = load float, ptr %i.v, align 4, !tbaa !21
  store float %i.w, ptr %i.u, align 4, !tbaa !21
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  %i.x = mul nsw i64 %indvars.iv.next.i.1, %i.l
  %i.y = getelementptr [4 x i8], ptr %1, i64 %i.x ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 4
  %i.aa = load float, ptr %i.z, align 4, !tbaa !21
  store float %i.aa, ptr %i.y, align 4, !tbaa !21
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3
  %i.ab = mul nsw i64 %indvars.iv.next.i.2, %i.l
  %i.ac = getelementptr [4 x i8], ptr %1, i64 %i.ab ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 4
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !21
  store float %i.ae, ptr %i.ac, align 4, !tbaa !21
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4
  %i.af = mul nsw i64 %indvars.iv.next.i.3, %i.l
  %i.ag = getelementptr [4 x i8], ptr %1, i64 %i.af ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 4
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !21
  store float %i.ai, ptr %i.ag, align 4, !tbaa !21
  %indvars.iv.next.i.4 = add nuw nsw i64 %indvars.iv.i, 5
  %i.aj = mul nsw i64 %indvars.iv.next.i.4, %i.l
  %i.ak = getelementptr [4 x i8], ptr %1, i64 %i.aj ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 4
  %i.am = load float, ptr %i.al, align 4, !tbaa !21
  store float %i.am, ptr %i.ak, align 4, !tbaa !21
  %indvars.iv.next.i.5 = add nuw nsw i64 %indvars.iv.i, 6
  %i.an = mul nsw i64 %indvars.iv.next.i.5, %i.l
  %i.ao = getelementptr [4 x i8], ptr %1, i64 %i.an ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 4
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !21
  store float %i.aq, ptr %i.ao, align 4, !tbaa !21
  %indvars.iv.next.i.6 = add nuw nsw i64 %indvars.iv.i, 7
  %i.ar = mul nsw i64 %indvars.iv.next.i.6, %i.l
  %i.as = getelementptr [4 x i8], ptr %1, i64 %i.ar ; 2 uses
  %i.at = getelementptr i8, ptr %i.as, i64 4
end_hunk_1

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaDecGraph?download=true
inline.NumInlined: 3483
inline.NumDeleted: 1207
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 57
loop-unroll.NumUnrolled: 68
begin_hunk_0_@_ZN8DecGraph10TruthTable12swapVariableEii:bb.a
  %i.v = sext i32 %spec.select to i64
  %i.w = getelementptr inbounds [48 x i8], ptr @_ZN8DecGraphL9swap_maskE, i64 %i.v
  %i.x = sext i32 %spec.select131 to i64
  %i.y = getelementptr [8 x i8], ptr %i.w, i64 %i.x
  %i.z = getelementptr i8, ptr %i.y, i64 -8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !50  ; 4 uses
  %i.ab = zext i32 %i.u to i64                    ; 4 uses
  %i.ac = xor i64 %i.aa, -1                       ; 2 uses
  %i.ad = shl i64 %i.aa, %i.ab                    ; 3 uses
  %i.ae = xor i64 %i.ad, -1                       ; 2 uses
  %i.af = and i64 %i.n, 2147483647                ; 3 uses
  %min.iters.check215 = icmp samesign ult i64 %i.af, 4
  br i1 %min.iters.check215, label %scalar.ph214.preheader, label %vector.ph216

vector.ph216:                                     ; preds = %.lr.ph
  %n.vec217 = and i64 %i.n, 2147483644            ; 3 uses
  %broadcast.splatinsert218 = insertelement <2 x i64> poison, i64 %i.aa, i64 0
  %broadcast.splat219 = shufflevector <2 x i64> %broadcast.splatinsert218, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert220 = insertelement <2 x i64> poison, i64 %i.ab, i64 0
  %broadcast.splat221 = shufflevector <2 x i64> %broadcast.splatinsert220, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert222 = insertelement <2 x i64> poison, i64 %i.ac, i64 0
  %broadcast.splat223 = shufflevector <2 x i64> %broadcast.splatinsert222, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert224 = insertelement <2 x i64> poison, i64 %i.ad, i64 0
  %broadcast.splat225 = shufflevector <2 x i64> %broadcast.splatinsert224, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert226 = insertelement <2 x i64> poison, i64 %i.ae, i64 0
  %broadcast.splat227 = shufflevector <2 x i64> %broadcast.splatinsert226, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %invariant.op244 = and <2 x i64> %broadcast.splat223, %broadcast.splat225
  %invariant.op246 = and <2 x i64> %broadcast.splat223, %broadcast.splat225
  %invariant.op248 = and <2 x i64> %broadcast.splat223, %broadcast.splat227
  %invariant.op250 = and <2 x i64> %broadcast.splat223, %broadcast.splat227
  br label %vector.body228

vector.body228:                                   ; preds = %vector.body228, %vector.ph216
  %index229 = phi i64 [ 0, %vector.ph216 ], [ %index.next232, %vector.body228 ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %index229 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %wide.load230.a = load <2 x i64>, ptr %i.ag, align 8, !tbaa !50 ; 3 uses
  %wide.load231 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !50 ; 3 uses
  %i.ai = and <2 x i64> %broadcast.splat219, %wide.load230.a
  %i.aj = and <2 x i64> %broadcast.splat219, %wide.load231
  %i.ak = shl <2 x i64> %i.ai, %broadcast.splat221
  %i.al = shl <2 x i64> %i.aj, %broadcast.splat221
  %.reass245 = and <2 x i64> %wide.load230.a, %invariant.op244
  %.reass247 = and <2 x i64> %wide.load231, %invariant.op246
  %i.am = lshr <2 x i64> %.reass245, %broadcast.splat221
  %i.an = lshr <2 x i64> %.reass247, %broadcast.splat221
  %.reass249 = and <2 x i64> %wide.load230.a, %invariant.op248
  %.reass251 = and <2 x i64> %wide.load231, %invariant.op250
  %i.ao = or <2 x i64> %.reass249, %i.ak
  %i.ap = or <2 x i64> %.reass251, %i.al
  %i.aq = or <2 x i64> %i.ao, %i.am
  %i.ar = or <2 x i64> %i.ap, %i.an
  store <2 x i64> %i.aq, ptr %i.ag, align 8, !tbaa !50
  store <2 x i64> %i.ar, ptr %i.ah, align 8, !tbaa !50
  %index.next232 = add nuw i64 %index229, 4       ; 2 uses
  %i.as = icmp eq i64 %index.next232, %n.vec217
  br i1 %i.as, label %middle.block233, label %vector.body228, !llvm.loop !219

middle.block233:                                  ; preds = %vector.body228
  %cmp.n234 = icmp eq i64 %i.af, %n.vec217
  br i1 %cmp.n234, label %.loopexit, label %scalar.ph214.preheader

scalar.ph214.preheader:                           ; preds = %.lr.ph, %middle.block233
  %indvars.iv170.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec217, %middle.block233 ]
  br label %scalar.ph214

scalar.ph214:                                     ; preds = %scalar.ph214.preheader, %scalar.ph214
  %indvars.iv170 = phi i64 [ %indvars.iv.next171, %scalar.ph214 ], [ %indvars.iv170.ph, %scalar.ph214.preheader ] ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv170 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !50 ; 2 uses
  %i.av = and i64 %i.aa, %i.au
  %i.aw = shl i64 %i.av, %i.ab
  %i.ax = and i64 %i.au, %i.ac                    ; 2 uses
  %i.ay = and i64 %i.ax, %i.ad
  %i.az = lshr i64 %i.ay, %i.ab
  %i.ba = and i64 %i.ax, %i.ae
  %i.bb = or i64 %i.ba, %i.aw
  %i.bc = or i64 %i.bb, %i.az
  store i64 %i.bc, ptr %i.at, align 8, !tbaa !50
  %indvars.iv.next171 = add nuw nsw i64 %indvars.iv170, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next171, %i.af
  br i1 %.not, label %.loopexit, label %scalar.ph214, !llvm.loop !220

bb.c:                                             ; preds = %_ZNK8DecGraph10TruthTable4dataEv.exit
  %i.bd = icmp slt i32 %spec.select, 6
  br i1 %i.bd, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.be = add nsw i32 %spec.select131, -5         ; 2 uses
  %i.bf = shl nuw i32 1, %i.be                    ; 2 uses
  %i.bg = sdiv i32 %i.bf, 2                       ; 2 uses
  %i.bh = icmp sgt i32 %i.o, 0
  br i1 %i.bh, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.d
  %i.bi = shl nuw nsw i32 1, %spec.select
  %i.bj = icmp sgt i32 %i.bf, 1
  %i.bk = zext nneg i32 %i.bi to i64              ; 4 uses
  br i1 %i.bj, label %.preheader.lr.ph.split, label %.loopexit

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.bl = shl nuw nsw i32 %i.bg, 1
  %i.bm = sext i32 %spec.select to i64
  %i.bn = getelementptr inbounds [48 x i8], ptr @_ZN8DecGraphL9swap_maskE, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !50 ; 4 uses
  %i.bq = lshr i64 %i.bp, %i.bk                   ; 3 uses
  %i.br = xor i64 %i.bq, -1                       ; 2 uses
  %i.bs = xor i64 %i.bp, -1                       ; 2 uses
  %i.bt = zext nneg i32 %i.bl to i64
  %i.bu = zext nneg i32 %i.bg to i64              ; 4 uses
  %invariant.gep182 = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bu
  %min.iters.check193 = icmp ult i32 %i.be, 2
  %n.vec195 = and i64 %i.bu, 1073741822           ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bq, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert196 = insertelement <2 x i64> poison, i64 %i.bk, i64 0
  %broadcast.splat197 = shufflevector <2 x i64> %broadcast.splatinsert196, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert198 = insertelement <2 x i64> poison, i64 %i.br, i64 0
  %broadcast.splat199 = shufflevector <2 x i64> %broadcast.splatinsert198, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert200 = insertelement <2 x i64> poison, i64 %i.bp, i64 0
  %broadcast.splat201 = shufflevector <2 x i64> %broadcast.splatinsert200, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert202 = insertelement <2 x i64> poison, i64 %i.bs, i64 0
  %broadcast.splat203 = shufflevector <2 x i64> %broadcast.splatinsert202, <2 x i64> poison, <2 x i32> zeroinitializer
  %cmp.n212 = icmp eq i64 %n.vec195, %i.bu
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge142
  %indvars.iv167 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next168, %._crit_edge142 ] ; 3 uses
  %invariant.gep180 = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv167 ; 2 uses
  %gep183 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep182, i64 %indvars.iv167 ; 2 uses
  br i1 %min.iters.check193, label %scalar.ph192.preheader, label %vector.body204

vector.body204:                                   ; preds = %.preheader, %vector.body204
  %index205 = phi i64 [ %index.next210, %vector.body204 ], [ 0, %.preheader ] ; 3 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep180, i64 %index205 ; 4 uses
  %wide.load206.a = load <2 x i64>, ptr %i.bv, align 8, !tbaa !50 ; 2 uses
  %i.bw = and <2 x i64> %broadcast.splat, %wide.load206.a
  %i.bx = shl <2 x i64> %i.bw, %broadcast.splat197
  %i.by = and <2 x i64> %wide.load206.a, %broadcast.splat199
  store <2 x i64> %i.by, ptr %i.bv, align 8, !tbaa !50
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %gep183, i64 %index205 ; 4 uses
  %wide.load207.a = load <2 x i64>, ptr %i.bz, align 8, !tbaa !50 ; 2 uses
  %i.ca = and <2 x i64> %wide.load207.a, %broadcast.splat201
  %i.cb = lshr <2 x i64> %i.ca, %broadcast.splat197
  %i.cc = and <2 x i64> %wide.load207.a, %broadcast.splat203
  store <2 x i64> %i.cc, ptr %i.bz, align 8, !tbaa !50
  %wide.load208.a = load <2 x i64>, ptr %i.bv, align 8, !tbaa !50
  %i.cd = or <2 x i64> %wide.load208.a, %i.cb
  store <2 x i64> %i.cd, ptr %i.bv, align 8, !tbaa !50
  %wide.load209 = load <2 x i64>, ptr %i.bz, align 8, !tbaa !50
  %i.ce = or <2 x i64> %wide.load209, %i.bx
  store <2 x i64> %i.ce, ptr %i.bz, align 8, !tbaa !50
  %index.next210 = add nuw i64 %index205, 2       ; 2 uses
  %i.cf = icmp eq i64 %index.next210, %n.vec195
  br i1 %i.cf, label %middle.block211, label %vector.body204, !llvm.loop !221

middle.block211:                                  ; preds = %vector.body204
  br i1 %cmp.n212, label %._crit_edge142, label %scalar.ph192.preheader

scalar.ph192.preheader:                           ; preds = %.preheader, %middle.block211
  %indvars.iv162.ph = phi i64 [ 0, %.preheader ], [ %n.vec195, %middle.block211 ]
  br label %scalar.ph192

._crit_edge142:                                   ; preds = %scalar.ph192, %middle.block211
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, %i.bt ; 2 uses
  %i.cg = trunc nuw i64 %indvars.iv.next168 to i32
  %i.ch = icmp slt i32 %i.cg, %i.o
  br i1 %i.ch, label %.preheader, label %.loopexit, !llvm.loop !222

scalar.ph192:                                     ; preds = %scalar.ph192.preheader, %scalar.ph192
  %indvars.iv162 = phi i64 [ %indvars.iv.next163, %scalar.ph192 ], [ %indvars.iv162.ph, %scalar.ph192.preheader ] ; 3 uses
  %gep181 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep180, i64 %indvars.iv162 ; 4 uses
  %i.ci = load i64, ptr %gep181, align 8, !tbaa !50 ; 2 uses
  %i.cj = and i64 %i.bq, %i.ci
  %i.ck = shl i64 %i.cj, %i.bk
  %i.cl = and i64 %i.ci, %i.br
  store i64 %i.cl, ptr %gep181, align 8, !tbaa !50
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %gep183, i64 %indvars.iv162 ; 4 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !50 ; 2 uses
  %i.co = and i64 %i.cn, %i.bp
  %i.cp = lshr i64 %i.co, %i.bk
  %i.cq = and i64 %i.cn, %i.bs
  store i64 %i.cq, ptr %i.cm, align 8, !tbaa !50
  %i.cr = load i64, ptr %gep181, align 8, !tbaa !50
  %i.cs = or i64 %i.cr, %i.cp
  store i64 %i.cs, ptr %gep181, align 8, !tbaa !50
  %i.ct = load i64, ptr %i.cm, align 8, !tbaa !50
  %i.cu = or i64 %i.ct, %i.ck
  store i64 %i.cu, ptr %i.cm, align 8, !tbaa !50
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 2 uses
  %exitcond166.not = icmp eq i64 %indvars.iv.next163, %i.bu
  br i1 %exitcond166.not, label %._crit_edge142, label %scalar.ph192, !llvm.loop !223

bb.e:                                             ; preds = %bb.c
  %i.cv = add nsw i32 %spec.select, -5            ; 2 uses
  %i.cw = shl nuw i32 1, %i.cv                    ; 2 uses
  %i.cx = sdiv i32 %i.cw, 2                       ; 3 uses
  %i.cy = add nsw i32 %spec.select131, -5
  %i.cz = shl nuw i32 1, %i.cy                    ; 2 uses
  %i.da = sdiv i32 %i.cz, 2                       ; 3 uses
  %i.db = icmp sgt i32 %i.o, 0
  br i1 %i.db, label %.preheader134.lr.ph, label %.loopexit

.preheader134.lr.ph:                              ; preds = %bb.e
  %i.dc = icmp slt i32 %i.cz, 2
  %i.dd = icmp slt i32 %i.cw, 2
  %brmerge = select i1 %i.dc, i1 true, i1 %i.dd
  br i1 %brmerge, label %.loopexit, label %.preheader134.preheader

.preheader134.preheader:                          ; preds = %.preheader134.lr.ph
  %i.de = shl nuw nsw i32 %i.da, 1
  %i.df = shl nuw nsw i32 %i.cx, 1                ; 2 uses
  %i.dg = zext nneg i32 %i.df to i64              ; 5 uses
  %i.dh = zext nneg i32 %i.da to i64              ; 4 uses
  %i.di = zext nneg i32 %i.de to i64              ; 2 uses
  %i.dj = zext nneg i32 %i.cx to i64              ; 3 uses
  %i.dk = and i64 %i.n, 2147483647
  %wide.trip.count = zext nneg i32 %i.cx to i64   ; 5 uses
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.dj
  %invariant.gep178 = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.dh
  %3 = shl nuw nsw i64 %i.di, 3
  %i.dl = shl nuw nsw i64 %wide.trip.count, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.dg, i64 1)
  %umax188 = tail call i64 @llvm.umax.i64(i64 %i.dh, i64 %i.dg)
  %4 = icmp ult i32 %i.df, %i.da
  %umin = zext i1 %4 to i64                       ; 2 uses
  %5 = or disjoint i64 %umin, %i.dg
  %6 = sub nsw i64 %umax188, %5
  %min.iters.check = icmp ult i32 %i.cv, 3
  %invariant.gep238 = getelementptr i8, ptr %i.j, i64 %i.dl
  %invariant.op = add i64 %i.dh, %wide.trip.count
  %n.vec = and i64 %wide.trip.count, 1073741820   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %i.dj, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.dm = add nsw i64 %i.dj, -1
  br label %.preheader134

.preheader134:                                    ; preds = %.preheader134.preheader, %._crit_edge138
  %indvar = phi i64 [ 0, %.preheader134.preheader ], [ %indvar.next, %._crit_edge138 ] ; 2 uses
  %indvars.iv159 = phi i64 [ 0, %.preheader134.preheader ], [ %indvars.iv.next160, %._crit_edge138 ] ; 3 uses
  %i.dn = mul i64 %3, %indvar                     ; 2 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv159 ; 2 uses
  %gep179 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep178, i64 %indvars.iv159 ; 2 uses
  %invariant.gep240 = getelementptr i8, ptr %invariant.gep238, i64 %i.dn
  %invariant.gep242 = getelementptr i8, ptr %i.j, i64 %i.dn
  br label %.preheader133

.preheader133:                                    ; preds = %.preheader134, %._crit_edge
  %indvars.iv156 = phi i64 [ 0, %.preheader134 ], [ %indvars.iv.next157, %._crit_edge ] ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %indvars.iv156 ; 4 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %gep179, i64 %indvars.iv156 ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader133
  %7 = udiv i64 %6, %umax
  %8 = add i64 %7, %umin
  %9 = mul i64 %8, %i.dg                          ; 2 uses
  %10 = shl i64 %9, 3
  %gep241 = getelementptr i8, ptr %invariant.gep240, i64 %10
  %.reass = add i64 %9, %invariant.op
  %11 = shl i64 %.reass, 3
  %gep243 = getelementptr i8, ptr %invariant.gep242, i64 %11
  %bound0 = icmp ult ptr %gep, %gep243
  %bound1 = icmp ult ptr %gep179, %gep241
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %index ; 3 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %index ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.dq, align 8, !tbaa !50, !alias.scope !231, !noalias !232
  %wide.load189.a = load <2 x i64>, ptr %i.ds, align 8, !tbaa !50, !alias.scope !231, !noalias !232
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 16 ; 2 uses
  %wide.load190.a = load <2 x i64>, ptr %i.dr, align 8, !tbaa !50, !alias.scope !232
  %wide.load191 = load <2 x i64>, ptr %i.dt, align 8, !tbaa !50, !alias.scope !232
  store <2 x i64> %wide.load190.a, ptr %i.dq, align 8, !tbaa !50, !alias.scope !231, !noalias !232
  store <2 x i64> %wide.load191, ptr %i.ds, align 8, !tbaa !50, !alias.scope !231, !noalias !232
  store <2 x i64> %wide.load, ptr %i.dr, align 8, !tbaa !50, !alias.scope !232
  store <2 x i64> %wide.load189.a, ptr %i.dt, align 8, !tbaa !50, !alias.scope !232
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.du = icmp eq i64 %index.next, %n.vec
  br i1 %i.du, label %middle.block, label %vector.body, !llvm.loop !227

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader133, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader133 ], [ %n.vec, %middle.block ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv.ph ; 2 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv.ph ; 2 uses
  %i.dx = load i64, ptr %i.dv, align 8, !tbaa !50
  %i.dy = load i64, ptr %i.dw, align 8, !tbaa !50
  store i64 %i.dy, ptr %i.dv, align 8, !tbaa !50
  store i64 %i.dx, ptr %i.dw, align 8, !tbaa !50
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.dz = icmp eq i64 %indvars.iv.ph, %i.dm
  br i1 %i.dz, label %._crit_edge, label %scalar.ph

._crit_edge138:                                   ; preds = %._crit_edge
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, %i.di ; 2 uses
  %i.ea = icmp samesign ult i64 %indvars.iv.next160, %i.dk
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ea, label %.preheader134, label %.loopexit, !llvm.loop !228

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, %i.dg ; 2 uses
  %i.eb = icmp samesign ult i64 %indvars.iv.next157, %i.dh
  br i1 %i.eb, label %.preheader133, label %._crit_edge138, !llvm.loop !229

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv ; 2 uses
  %i.ee = load i64, ptr %i.ec, align 8, !tbaa !50
  %i.ef = load i64, ptr %i.ed, align 8, !tbaa !50
  store i64 %i.ef, ptr %i.ec, align 8, !tbaa !50
  store i64 %i.ee, ptr %i.ed, align 8, !tbaa !50
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv.next ; 2 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv.next ; 2 uses
  %i.ei = load i64, ptr %i.eg, align 8, !tbaa !50
  %i.ej = load i64, ptr %i.eh, align 8, !tbaa !50
  store i64 %i.ej, ptr %i.eg, align 8, !tbaa !50
  store i64 %i.ei, ptr %i.eh, align 8, !tbaa !50
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !230

.loopexit:                                        ; preds = %._crit_edge138, %._crit_edge142, %scalar.ph214, %middle.block233, %.preheader134.lr.ph, %bb.e, %bb.d, %.preheader.lr.ph, %bb.b
  %i.ek = sext i32 %spec.select131 to i64         ; 2 uses
  %i.el = sext i32 %spec.select to i64            ; 2 uses
  %i.em = load ptr, ptr %i.q, align 8, !tbaa !47  ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.el ; 3 uses
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !50
  %i.ep = load ptr, ptr %i.r, align 8, !tbaa !47  ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.eo
  store i64 %i.ek, ptr %i.eq, align 8, !tbaa !50
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.ek ; 3 uses
  %i.es = load i64, ptr %i.er, align 8, !tbaa !50
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.es
  store i64 %i.el, ptr %i.et, align 8, !tbaa !50
  %i.eu = load i64, ptr %i.en, align 8, !tbaa !50
  %i.ev = load i64, ptr %i.er, align 8, !tbaa !50
  store i64 %i.ev, ptr %i.en, align 8, !tbaa !50
  store i64 %i.eu, ptr %i.er, align 8, !tbaa !50
  br label %bb.f

bb.f:                                             ; preds = %.loopexit, %_ZNK8DecGraph10TruthTable6nWordsEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN8DecGraph10TruthTable12swapAdjacentEPmS1_i(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 11 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 11 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !36     ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %.loopexit, label %_ZNK8DecGraph10TruthTable6nWordsEv.exit

_ZNK8DecGraph10TruthTable6nWordsEv.exit:          ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %i.k = lshr exact i64 %i.j, 3                   ; 3 uses
  %i.l = trunc i64 %i.k to i32                    ; 4 uses
  %i.m = icmp slt i32 %3, 5
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK8DecGraph10TruthTable6nWordsEv.exit
  %.not118132 = icmp slt i32 %i.l, 1
  br i1 %.not118132, label %.loopexit, label %.lr.ph135

.lr.ph135:                                        ; preds = %bb.b
  %i.n = shl nuw nsw i32 1, %3
  %i.o = sext i32 %3 to i64
  %i.p = getelementptr inbounds [24 x i8], ptr @_ZN8DecGraphL16permutation_maskE, i64 %i.o ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !50   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !50   ; 4 uses
  %i.t = zext nneg i32 %i.n to i64                ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !50   ; 4 uses
  %i.w = and i64 %i.k, 2147483647                 ; 4 uses
  %min.iters.check238 = icmp samesign ult i64 %i.w, 4
  %i.x = sub i64 %i.a, %i.b
  %diff.check240 = icmp ugt i64 %i.x, -32
  %or.cond = or i1 %min.iters.check238, %diff.check240
  br i1 %or.cond, label %scalar.ph237.preheader, label %vector.ph241

vector.ph241:                                     ; preds = %.lr.ph135
  %n.vec242 = and i64 %i.k, 2147483644            ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.q, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert243 = insertelement <2 x i64> poison, i64 %i.s, i64 0
  %broadcast.splat244 = shufflevector <2 x i64> %broadcast.splatinsert243, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert245 = insertelement <2 x i64> poison, i64 %i.t, i64 0
  %broadcast.splat246 = shufflevector <2 x i64> %broadcast.splatinsert245, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert247 = insertelement <2 x i64> poison, i64 %i.v, i64 0
  %broadcast.splat248 = shufflevector <2 x i64> %broadcast.splatinsert247, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body249

vector.body249:                                   ; preds = %vector.body249, %vector.ph241
  %index250 = phi i64 [ 0, %vector.ph241 ], [ %index.next253, %vector.body249 ] ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index250 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %wide.load251 = load <2 x i64>, ptr %i.y, align 8, !tbaa !50 ; 3 uses
  %wide.load252 = load <2 x i64>, ptr %i.z, align 8, !tbaa !50 ; 3 uses
  %i.aa = and <2 x i64> %broadcast.splat, %wide.load251
  %i.ab = and <2 x i64> %broadcast.splat, %wide.load252
  %i.ac = and <2 x i64> %broadcast.splat244, %wide.load251
  %i.ad = and <2 x i64> %broadcast.splat244, %wide.load252
  %i.ae = shl <2 x i64> %i.ac, %broadcast.splat246
  %i.af = shl <2 x i64> %i.ad, %broadcast.splat246
  %i.ag = or <2 x i64> %i.ae, %i.aa
  %i.ah = or <2 x i64> %i.af, %i.ab
  %i.ai = and <2 x i64> %broadcast.splat248, %wide.load251
  %i.aj = and <2 x i64> %broadcast.splat248, %wide.load252
  %i.ak = lshr <2 x i64> %i.ai, %broadcast.splat246
  %i.al = lshr <2 x i64> %i.aj, %broadcast.splat246
  %i.am = or <2 x i64> %i.ag, %i.ak
  %i.an = or <2 x i64> %i.ah, %i.al
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index250 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store <2 x i64> %i.am, ptr %i.ao, align 8, !tbaa !50
  store <2 x i64> %i.an, ptr %i.ap, align 8, !tbaa !50
  %index.next253 = add nuw i64 %index250, 4       ; 2 uses
  %i.aq = icmp eq i64 %index.next253, %n.vec242
  br i1 %i.aq, label %middle.block254, label %vector.body249, !llvm.loop !233

middle.block254:                                  ; preds = %vector.body249
  %cmp.n255 = icmp eq i64 %i.w, %n.vec242
  br i1 %cmp.n255, label %.loopexit, label %scalar.ph237.preheader

scalar.ph237.preheader:                           ; preds = %.lr.ph135, %middle.block254
  %indvars.iv142.ph = phi i64 [ 0, %.lr.ph135 ], [ %n.vec242, %middle.block254 ] ; 5 uses
  %.neg = or disjoint i64 %indvars.iv142.ph, 1
  %i.ar = and i64 %i.j, 8
  %lcmp.mod.not = icmp eq i64 %i.ar, 0
  br i1 %lcmp.mod.not, label %scalar.ph237.prol.loopexit, label %scalar.ph237.prol

scalar.ph237.prol:                                ; preds = %scalar.ph237.preheader
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv142.ph
  %i.at = load i64, ptr %i.as, align 8, !tbaa !50 ; 3 uses
  %i.au = and i64 %i.q, %i.at
  %i.av = and i64 %i.s, %i.at
  %i.aw = shl i64 %i.av, %i.t
  %i.ax = or i64 %i.aw, %i.au
  %i.ay = and i64 %i.v, %i.at
  %i.az = lshr i64 %i.ay, %i.t
  %i.ba = or i64 %i.ax, %i.az
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv142.ph
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !50
  %indvars.iv.next143.prol = or disjoint i64 %indvars.iv142.ph, 1
  br label %scalar.ph237.prol.loopexit

scalar.ph237.prol.loopexit:                       ; preds = %scalar.ph237.prol, %scalar.ph237.preheader
  %indvars.iv142.unr = phi i64 [ %indvars.iv142.ph, %scalar.ph237.preheader ], [ %indvars.iv.next143.prol, %scalar.ph237.prol ]
  %i.bc = icmp eq i64 %i.w, %.neg
  br i1 %i.bc, label %.loopexit, label %scalar.ph237

scalar.ph237:                                     ; preds = %scalar.ph237.prol.loopexit, %scalar.ph237
  %indvars.iv142 = phi i64 [ %indvars.iv.next143.1, %scalar.ph237 ], [ %indvars.iv142.unr, %scalar.ph237.prol.loopexit ] ; 4 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv142
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !50 ; 3 uses
  %i.bf = and i64 %i.q, %i.be
  %i.bg = and i64 %i.s, %i.be
  %i.bh = shl i64 %i.bg, %i.t
  %i.bi = or i64 %i.bh, %i.bf
  %i.bj = and i64 %i.v, %i.be
  %i.bk = lshr i64 %i.bj, %i.t
  %i.bl = or i64 %i.bi, %i.bk
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv142
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !50
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next143
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !50 ; 3 uses
end_hunk_0

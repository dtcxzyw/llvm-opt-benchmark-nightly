Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/cngdec?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@cng_decode_frame:bb.a
scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ac, i64 %indvars.iv.next
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !31
  %i.bf = zext i8 %i.be to i32
  %i.bg = add nsw i32 %i.bf, -127
  %i.bh = sitofp i32 %i.bg to float
  %i.bi = fmul nnan nsz float %i.bh, 7.812500e-03
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv
  store float %i.bi, ptr %i.bj, align 4, !tbaa !51
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ac, i64 %indvars.iv.next.1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !31
  %i.bm = zext i8 %i.bl to i32
  %i.bn = add nsw i32 %i.bm, -127
  %i.bo = sitofp i32 %i.bn to float
  %i.bp = fmul nnan nsz float %i.bo, 7.812500e-03
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.next
  store float %i.bp, ptr %i.bq, align 4, !tbaa !51
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit96, label %scalar.ph, !llvm.loop !58

.loopexit96:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.b, %bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !59
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 108 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !60
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 5 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !38
  %i.bx = mul nsw i32 %i.bw, 10
  %i.by = icmp sgt i32 %i.bu, %i.bx
  br i1 %i.by, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.loopexit96
  store i32 0, ptr %i.bt, align 4, !tbaa !60
  br label %bb.k

bb.d:                                             ; preds = %.loopexit96
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 36 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !67
  %.not94 = icmp eq i32 %i.ca, 0
  br i1 %.not94, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 28 ; 2 uses
  %i.cc = load <2 x i32>, ptr %i.cb, align 4, !tbaa !30
  %i.cd = sdiv <2 x i32> %i.cc, splat (i32 2)
  %i.ce = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.cd)
  store i32 %i.ce, ptr %i.cb, align 4, !tbaa !68
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !34 ; 5 uses
  %i.ch = icmp sgt i32 %i.cg, 0
  %.pre136 = load ptr, ptr %i.c, align 8, !tbaa !39 ; 7 uses
  br i1 %i.ch, label %.lr.ph100, label %.loopexit.thread152

.loopexit.thread152:                              ; preds = %bb.e
  %i.ci = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  br label %make_lpc_coefs.exit.thread

.lr.ph100:                                        ; preds = %bb.e
  %i.ck = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !40 ; 6 uses
  %wide.trip.count121 = zext nneg i32 %i.cg to i64 ; 6 uses
  %min.iters.check169 = icmp ult i32 %i.cg, 4
  br i1 %min.iters.check169, label %scalar.ph168.preheader, label %vector.memcheck162

vector.memcheck162:                               ; preds = %.lr.ph100
  %i.cm = shl nuw nsw i64 %wide.trip.count121, 2  ; 2 uses
  %scevgep163 = getelementptr i8, ptr %.pre136, i64 %i.cm
  %scevgep164 = getelementptr i8, ptr %i.cl, i64 %i.cm
  %bound0165 = icmp ult ptr %.pre136, %scevgep164
  %bound1166 = icmp ult ptr %i.cl, %scevgep163
  %found.conflict167 = and i1 %bound0165, %bound1166
  br i1 %found.conflict167, label %scalar.ph168.preheader, label %vector.ph170

vector.ph170:                                     ; preds = %vector.memcheck162
  %n.vec171 = and i64 %wide.trip.count121, 2147483644 ; 3 uses
  br label %vector.body172

vector.body172:                                   ; preds = %vector.body172, %vector.ph170
  %index173 = phi i64 [ 0, %vector.ph170 ], [ %index.next176, %vector.body172 ] ; 3 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %.pre136, i64 %index173 ; 2 uses
  %wide.load174 = load <4 x float>, ptr %i.cn, align 4, !tbaa !51, !alias.scope !69, !noalias !72
  %i.co = fpext nsz <4 x float> %wide.load174 to <4 x double>
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %index173
  %wide.load175 = load <4 x float>, ptr %i.cp, align 4, !tbaa !51, !alias.scope !72
  %i.cq = fpext nsz <4 x float> %wide.load175 to <4 x double>
  %i.cr = fmul nsz <4 x double> %i.cq, splat (double 4.000000e-01)
  %i.cs = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.co, <4 x double> splat (double 6.000000e-01), <4 x double> %i.cr)
  %i.ct = fptrunc nsz <4 x double> %i.cs to <4 x float>
  store <4 x float> %i.ct, ptr %i.cn, align 4, !tbaa !51, !alias.scope !69, !noalias !72
  %index.next176 = add nuw i64 %index173, 4       ; 2 uses
  %i.cu = icmp eq i64 %index.next176, %n.vec171
  br i1 %i.cu, label %middle.block177, label %vector.body172, !llvm.loop !74

middle.block177:                                  ; preds = %vector.body172
  %cmp.n178 = icmp eq i64 %n.vec171, %wide.trip.count121
  br i1 %cmp.n178, label %.loopexit.thread, label %scalar.ph168.preheader

scalar.ph168.preheader:                           ; preds = %vector.memcheck162, %.lr.ph100, %middle.block177
  %indvars.iv118.ph = phi i64 [ 0, %vector.memcheck162 ], [ 0, %.lr.ph100 ], [ %n.vec171, %middle.block177 ] ; 5 uses
  %xtraiter222 = and i64 %wide.trip.count121, 1
  %lcmp.mod223.not = icmp eq i64 %xtraiter222, 0
  br i1 %lcmp.mod223.not, label %scalar.ph168.prol.loopexit, label %scalar.ph168.prol

scalar.ph168.prol:                                ; preds = %scalar.ph168.preheader
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.pre136, i64 %indvars.iv118.ph ; 2 uses
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !51
  %i.cx = fpext nsz float %i.cw to double
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv118.ph
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !51
  %i.da = fpext nsz float %i.cz to double
  %i.db = fmul nsz double %i.da, 4.000000e-01
  %i.dc = tail call nsz double @llvm.fmuladd.f64(double %i.cx, double 6.000000e-01, double %i.db)
  %i.dd = fptrunc nsz double %i.dc to float
  store float %i.dd, ptr %i.cv, align 4, !tbaa !51
  %indvars.iv.next119.prol = or disjoint i64 %indvars.iv118.ph, 1
  br label %scalar.ph168.prol.loopexit

scalar.ph168.prol.loopexit:                       ; preds = %scalar.ph168.prol, %scalar.ph168.preheader
  %indvars.iv118.unr = phi i64 [ %indvars.iv118.ph, %scalar.ph168.preheader ], [ %indvars.iv.next119.prol, %scalar.ph168.prol ]
  %i.de = add nsw i64 %wide.trip.count121, -1
  %i.df = icmp eq i64 %indvars.iv118.ph, %i.de
  br i1 %i.df, label %.loopexit.thread, label %scalar.ph168

scalar.ph168:                                     ; preds = %scalar.ph168.prol.loopexit, %scalar.ph168
  %indvars.iv118 = phi i64 [ %indvars.iv.next119.1, %scalar.ph168 ], [ %indvars.iv118.unr, %scalar.ph168.prol.loopexit ] ; 4 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %.pre136, i64 %indvars.iv118 ; 2 uses
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !51
  %i.di = fpext nsz float %i.dh to double
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv118
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !51
  %i.dl = fpext nsz float %i.dk to double
  %i.dm = fmul nsz double %i.dl, 4.000000e-01
  %i.dn = tail call nsz double @llvm.fmuladd.f64(double %i.di, double 6.000000e-01, double %i.dm)
  %i.do = fptrunc nsz double %i.dn to float
  store float %i.do, ptr %i.dg, align 4, !tbaa !51
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %.pre136, i64 %indvars.iv.next119 ; 2 uses
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !51
  %i.dr = fpext nsz float %i.dq to double
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv.next119
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !51
  %i.du = fpext nsz float %i.dt to double
  %i.dv = fmul nsz double %i.du, 4.000000e-01
  %i.dw = tail call nsz double @llvm.fmuladd.f64(double %i.dr, double 6.000000e-01, double %i.dv)
  %i.dx = fptrunc nsz double %i.dw to float
  store float %i.dx, ptr %i.dp, align 4, !tbaa !51
  %indvars.iv.next119.1 = add nuw nsw i64 %indvars.iv118, 2 ; 2 uses
  %exitcond122.not.1 = icmp eq i64 %indvars.iv.next119.1, %wide.trip.count121
  br i1 %exitcond122.not.1, label %.loopexit.thread, label %scalar.ph168, !llvm.loop !75

.loopexit.thread:                                 ; preds = %scalar.ph168.prol.loopexit, %scalar.ph168, %middle.block177
  %i.dy = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !41
  %i.ea = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  br label %.lr.ph37.preheader.i

.loopexit:                                        ; preds = %bb.d
  %i.eb = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !47
  %i.ed = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  store i32 %i.ec, ptr %i.ed, align 4, !tbaa !68
  %i.ee = load ptr, ptr %i.c, align 8, !tbaa !39
  %i.ef = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !40
  %i.eh = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !34
  %i.ej = sext i32 %i.ei to i64
  %i.ek = shl nsw i64 %i.ej, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ee, ptr align 4 %i.eg, i64 %i.ek, i1 false)
  store i32 1, ptr %i.bz, align 4, !tbaa !67
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !39
  %.pre137 = load i32, ptr %i.eh, align 8, !tbaa !34 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !41
  %i.en = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.eo = icmp sgt i32 %.pre137, 0
  br i1 %i.eo, label %.lr.ph37.preheader.i, label %make_lpc_coefs.exit.thread

.lr.ph37.preheader.i:                             ; preds = %.loopexit.thread, %.loopexit
  %i.ep = phi ptr [ %i.ea, %.loopexit.thread ], [ %i.en, %.loopexit ] ; 4 uses
  %i.eq = phi ptr [ %i.dz, %.loopexit.thread ], [ %i.em, %.loopexit ] ; 3 uses
  %i.er = phi ptr [ %i.dy, %.loopexit.thread ], [ %i.el, %.loopexit ] ; 3 uses
  %i.es = phi ptr [ %.pre136, %.loopexit.thread ], [ %.pre, %.loopexit ] ; 3 uses
  %i.et = phi i32 [ %i.cg, %.loopexit.thread ], [ %.pre137, %.loopexit ] ; 2 uses
  %wide.trip.count44.i = zext nneg i32 %i.et to i64 ; 3 uses
  %i.eu = shl nuw nsw i64 %wide.trip.count44.i, 2
  %scevgep182 = getelementptr i8, ptr %i.es, i64 %i.eu
  br label %.lr.ph37.i

.lr.ph37.i:                                       ; preds = %._crit_edge.i, %.lr.ph37.preheader.i
  %indvars.iv41.i = phi i64 [ 0, %.lr.ph37.preheader.i ], [ %indvars.iv.next42.i, %._crit_edge.i ] ; 12 uses
  %.035.i = phi ptr [ %i.a, %.lr.ph37.preheader.i ], [ %.02933.i, %._crit_edge.i ] ; 11 uses
  %.02933.i = phi ptr [ %i.eq, %.lr.ph37.preheader.i ], [ %.035.i, %._crit_edge.i ] ; 7 uses
  %i.ev = shl nuw nsw i64 %indvars.iv41.i, 2
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv41.i ; 5 uses
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !51
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.035.i, i64 %indvars.iv41.i
  store float %i.ex, ptr %i.ey, align 4, !tbaa !51
  %.not39.i = icmp eq i64 %indvars.iv41.i, 0
  br i1 %.not39.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph37.i
  %i.ez = getelementptr [4 x i8], ptr %.02933.i, i64 %indvars.iv41.i ; 5 uses
  %min.iters.check194 = icmp samesign ult i64 %indvars.iv41.i, 8
  br i1 %min.iters.check194, label %.lr.ph.i.preheader, label %vector.memcheck180

vector.memcheck180:                               ; preds = %.lr.ph.preheader.i
  %scevgep181 = getelementptr i8, ptr %.035.i, i64 %i.ev ; 2 uses
  %bound0186 = icmp ult ptr %.035.i, %scevgep182
  %bound1187 = icmp ult ptr %i.es, %scevgep181
  %found.conflict188 = and i1 %bound0186, %bound1187
  %bound0189 = icmp ult ptr %.035.i, %i.ez
  %bound1190 = icmp ult ptr %.02933.i, %scevgep181
  %found.conflict191 = and i1 %bound0189, %bound1190
  %conflict.rdx192 = or i1 %found.conflict191, %found.conflict188
  br i1 %conflict.rdx192, label %.lr.ph.i.preheader, label %vector.ph195

vector.ph195:                                     ; preds = %vector.memcheck180
  %n.vec196 = and i64 %indvars.iv41.i, 9223372036854775800 ; 3 uses
  %i.fa = load float, ptr %i.ew, align 4, !tbaa !51, !alias.scope !76
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.fa, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body197

vector.body197:                                   ; preds = %vector.body197, %vector.ph195
  %index198 = phi i64 [ 0, %vector.ph195 ], [ %index.next204, %vector.body197 ] ; 4 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %.02933.i, i64 %index198 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %wide.load199 = load <4 x float>, ptr %i.fb, align 4, !tbaa !51, !alias.scope !79
  %wide.load200 = load <4 x float>, ptr %i.fc, align 4, !tbaa !51, !alias.scope !79
  %i.fd = xor i64 %index198, -1
  %i.fe = getelementptr [4 x i8], ptr %i.ez, i64 %i.fd ; 2 uses
  %i.ff = getelementptr i8, ptr %i.fe, i64 -12
  %i.fg = getelementptr i8, ptr %i.fe, i64 -28
  %wide.load201 = load <4 x float>, ptr %i.ff, align 4, !tbaa !51, !alias.scope !81
  %wide.load202 = load <4 x float>, ptr %i.fg, align 4, !tbaa !51, !alias.scope !81
  %reverse = shufflevector <4 x float> %wide.load201, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse203 = shufflevector <4 x float> %wide.load202, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.fh = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %reverse, <4 x float> %wide.load199)
  %i.fi = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %reverse203, <4 x float> %wide.load200)
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %.035.i, i64 %index198 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  store <4 x float> %i.fh, ptr %i.fj, align 4, !tbaa !51, !alias.scope !83, !noalias !85
  store <4 x float> %i.fi, ptr %i.fk, align 4, !tbaa !51, !alias.scope !83, !noalias !85
  %index.next204 = add nuw i64 %index198, 8       ; 2 uses
  %i.fl = icmp eq i64 %index.next204, %n.vec196
  br i1 %i.fl, label %middle.block205, label %vector.body197, !llvm.loop !86

middle.block205:                                  ; preds = %vector.body197
  %cmp.n206 = icmp eq i64 %indvars.iv41.i, %n.vec196
  br i1 %cmp.n206, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck180, %.lr.ph.preheader.i, %middle.block205
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck180 ], [ 0, %.lr.ph.preheader.i ], [ %n.vec196, %middle.block205 ] ; 6 uses
  %.neg = or disjoint i64 %indvars.iv.i.ph, 1
  %xtraiter224 = and i64 %indvars.iv41.i, 1
  %lcmp.mod225.not = icmp eq i64 %xtraiter224, 0
  br i1 %lcmp.mod225.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %.02933.i, i64 %indvars.iv.i.ph
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !51
  %i.fo = load float, ptr %i.ew, align 4, !tbaa !51
  %i.fp = xor i64 %indvars.iv.i.ph, -1
  %i.fq = getelementptr [4 x i8], ptr %i.ez, i64 %i.fp
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !51
  %i.fs = tail call nsz float @llvm.fmuladd.f32(float %i.fo, float %i.fr, float %i.fn)
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %.035.i, i64 %indvars.iv.i.ph
  store float %i.fs, ptr %i.ft, align 4, !tbaa !51
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.fu = icmp eq i64 %indvars.iv41.i, %.neg
  br i1 %i.fu, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %.02933.i, i64 %indvars.iv.i
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !51
  %i.fx = load float, ptr %i.ew, align 4, !tbaa !51
  %i.fy = xor i64 %indvars.iv.i, -1
  %i.fz = getelementptr [4 x i8], ptr %i.ez, i64 %i.fy
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !51
  %i.gb = tail call nsz float @llvm.fmuladd.f32(float %i.fx, float %i.ga, float %i.fw)
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %.035.i, i64 %indvars.iv.i
  store float %i.gb, ptr %i.gc, align 4, !tbaa !51
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %.02933.i, i64 %indvars.iv.next.i
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !51
  %i.gf = load float, ptr %i.ew, align 4, !tbaa !51
  %i.gg = sub i64 -2, %indvars.iv.i
  %i.gh = getelementptr [4 x i8], ptr %i.ez, i64 %i.gg
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !51
  %i.gj = tail call nsz float @llvm.fmuladd.f32(float %i.gf, float %i.gi, float %i.ge)
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %.035.i, i64 %indvars.iv.next.i
  store float %i.gj, ptr %i.gk, align 4, !tbaa !51
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %indvars.iv41.i
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !87

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block205, %.lr.ph37.i
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1 ; 2 uses
  %exitcond45.not.i = icmp eq i64 %indvars.iv.next42.i, %wide.trip.count44.i
  br i1 %exitcond45.not.i, label %._crit_edge38.i, label %.lr.ph37.i, !llvm.loop !88

._crit_edge38.i:                                  ; preds = %._crit_edge.i
  %.not.i95 = icmp eq ptr %.035.i, %i.eq
  br i1 %.not.i95, label %make_lpc_coefs.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge38.i
  %i.gl = shl nuw nsw i64 %wide.trip.count44.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.eq, ptr nonnull align 4 %.035.i, i64 %i.gl, i1 false)
  %.pre142 = load i32, ptr %i.ep, align 8, !tbaa !34
  br label %make_lpc_coefs.exit

make_lpc_coefs.exit.thread:                       ; preds = %.loopexit, %.loopexit.thread152
  %.ph = phi ptr [ %i.cj, %.loopexit.thread152 ], [ %i.en, %.loopexit ]
  %.ph153 = phi ptr [ %i.ci, %.loopexit.thread152 ], [ %i.el, %.loopexit ]
  %.ph154 = phi i32 [ %i.cg, %.loopexit.thread152 ], [ %.pre137, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %._crit_edge

make_lpc_coefs.exit:                              ; preds = %._crit_edge38.i, %bb.f
  %i.gm = phi i32 [ %.pre142, %bb.f ], [ %i.et, %._crit_edge38.i ] ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.gn = icmp sgt i32 %i.gm, 0
  br i1 %i.gn, label %.lr.ph103, label %._crit_edge

.lr.ph103:                                        ; preds = %make_lpc_coefs.exit
  %i.go = load ptr, ptr %i.c, align 8, !tbaa !39  ; 3 uses
  %wide.trip.count126 = zext nneg i32 %i.gm to i64 ; 2 uses
  %xtraiter226 = and i64 %wide.trip.count126, 1
  %i.gp = icmp eq i32 %i.gm, 1
  br i1 %i.gp, label %.epil.preheader, label %.lr.ph103.new

.lr.ph103.new:                                    ; preds = %.lr.ph103
  %unroll_iter = and i64 %wide.trip.count126, 2147483646
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph103.new
  %indvars.iv123 = phi i64 [ 0, %.lr.ph103.new ], [ %indvars.iv.next124.1, %bb.g ] ; 3 uses
  %.087102 = phi float [ 1.000000e+00, %.lr.ph103.new ], [ %i.hg, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph103.new ], [ %niter.next.1, %bb.g ]
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %indvars.iv123
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !51 ; 2 uses
  %i.gs = fmul nsz float %i.gr, %i.gr
  %i.gt = fpext nsz float %i.gs to double
  %i.gu = fsub nsz double 1.000000e+00, %i.gt
  %i.gv = fpext nsz float %.087102 to double
  %i.gw = fmul nsz double %i.gu, %i.gv
  %i.gx = fptrunc nsz double %i.gw to float
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %indvars.iv123
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 4
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !51 ; 2 uses
  %i.hb = fmul nsz float %i.ha, %i.ha
  %i.hc = fpext nsz float %i.hb to double
  %i.hd = fsub nsz double 1.000000e+00, %i.hc
  %i.he = fpext nsz float %i.gx to double
  %i.hf = fmul nsz double %i.hd, %i.he
  %i.hg = fptrunc nsz double %i.hf to float       ; 3 uses
  %indvars.iv.next124.1 = add nuw nsw i64 %indvars.iv123, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.g, !llvm.loop !89

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.g
  %lcmp.mod227.not = icmp eq i64 %xtraiter226, 0
  br i1 %lcmp.mod227.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph103
  %indvars.iv123.epil.init = phi i64 [ 0, %.lr.ph103 ], [ %indvars.iv.next124.1, %._crit_edge.loopexit.unr-lcssa ]
  %.087102.epil.init = phi float [ 1.000000e+00, %.lr.ph103 ], [ %i.hg, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod229 = trunc i32 %i.gm to i1
  call void @llvm.assume(i1 %lcmp.mod229)
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %indvars.iv123.epil.init
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !51 ; 2 uses
  %i.hj = fmul nsz float %i.hi, %i.hi
  %i.hk = fpext nsz float %i.hj to double
  %i.hl = fsub nsz double 1.000000e+00, %i.hk
  %i.hm = fpext nsz float %.087102.epil.init to double
  %i.hn = fmul nsz double %i.hl, %i.hm
  %i.ho = fptrunc nsz double %i.hn to float
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %make_lpc_coefs.exit.thread, %make_lpc_coefs.exit
  %i.hp = phi i32 [ %i.gm, %make_lpc_coefs.exit ], [ %.ph154, %make_lpc_coefs.exit.thread ], [ %i.gm, %._crit_edge.loopexit.unr-lcssa ], [ %i.gm, %.epil.preheader ] ; 2 uses
  %i.hq = phi ptr [ %i.er, %make_lpc_coefs.exit ], [ %.ph153, %make_lpc_coefs.exit.thread ], [ %i.er, %._crit_edge.loopexit.unr-lcssa ], [ %i.er, %.epil.preheader ]
  %i.hr = phi ptr [ %i.ep, %make_lpc_coefs.exit ], [ %.ph, %make_lpc_coefs.exit.thread ], [ %i.ep, %._crit_edge.loopexit.unr-lcssa ], [ %i.ep, %.epil.preheader ]
  %.087.lcssa = phi float [ 1.000000e+00, %make_lpc_coefs.exit ], [ 1.000000e+00, %make_lpc_coefs.exit.thread ], [ %i.hg, %._crit_edge.loopexit.unr-lcssa ], [ %i.ho, %.epil.preheader ]
  %i.hs = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !68
  %i.hu = sitofp nsz i32 %i.ht to float
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/kyber?download=true
inline.NumInlined: 107
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZL11encrypt_cpaPhPKN12_GLOBAL__N_110public_keyEPKhS5_:vector.ph
  %wide.load104 = load <8 x i16>, ptr %i.jd, align 2, !tbaa !12
  %wide.load105 = load <8 x i16>, ptr %i.je, align 2, !tbaa !12
  %i.jf = add <8 x i16> %wide.load104, %wide.load102 ; 2 uses
  %i.jg = add <8 x i16> %wide.load105, %wide.load103 ; 2 uses
  %i.jh = add <8 x i16> %i.jf, splat (i16 -3329)  ; 2 uses
  %i.ji = add <8 x i16> %i.jg, splat (i16 -3329)  ; 2 uses
  %i.jj = icmp slt <8 x i16> %i.jh, zeroinitializer
  %i.jk = icmp slt <8 x i16> %i.ji, zeroinitializer
  %i.jl = select <8 x i1> %i.jj, <8 x i16> %i.jf, <8 x i16> zeroinitializer
  %i.jm = select <8 x i1> %i.jk, <8 x i16> %i.jg, <8 x i16> zeroinitializer
  %i.jn = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.jh, <8 x i16> zeroinitializer)
  %i.jo = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ji, <8 x i16> zeroinitializer)
  %i.jp = or <8 x i16> %i.jl, %i.jn
  %i.jq = or <8 x i16> %i.jm, %i.jo
  store <8 x i16> %i.jp, ptr %i.jb, align 2, !tbaa !12
  store <8 x i16> %i.jq, ptr %i.jc, align 2, !tbaa !12
  %index.next106 = add nuw i64 %index101, 16      ; 2 uses
  %i.jr = icmp eq i64 %index.next106, 256
  br i1 %i.jr, label %_ZL10scalar_addP6scalarPKS_.exit.2.i, label %vector.body100, !llvm.loop !51

_ZL10scalar_addP6scalarPKS_.exit.2.i:             ; preds = %vector.body100
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  %indvars.iv.next.i9 = add nuw nsw i64 %indvars.iv.i8, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i9, 3
  br i1 %exitcond.not.i, label %_ZL11matrix_multP6vectorPK6matrixPKS_.exit, label %.preheader.i, !llvm.loop !52

_ZL11matrix_multP6vectorPK6matrixPKS_.exit:       ; preds = %_ZL10scalar_addP6scalarPKS_.exit.2.i, %._crit_edge48.i.i
  %.03550.i.i = phi i32 [ %i.js, %._crit_edge48.i.i ], [ 128, %_ZL10scalar_addP6scalarPKS_.exit.2.i ]
  %.03649.i.i = phi i32 [ %.pre.i.i, %._crit_edge48.i.i ], [ 2, %_ZL10scalar_addP6scalarPKS_.exit.2.i ] ; 3 uses
  %i.js = lshr i32 %.03550.i.i, 1                 ; 3 uses
  %.not.i.i = icmp eq i32 %i.js, 0
  %.pre.i.i = shl i32 %.03649.i.i, 1              ; 3 uses
  br i1 %.not.i.i, label %._crit_edge48.i.i, label %.lr.ph47.i.i

.lr.ph47.i.i:                                     ; preds = %_ZL11matrix_multP6vectorPK6matrixPKS_.exit
  %i.jt = zext i32 %.pre.i.i to i64               ; 2 uses
  %i.ju = sext i32 %.03649.i.i to i64             ; 4 uses
  %i.jv = zext nneg i32 %i.js to i64              ; 2 uses
  %invariant.gep68.i.i = getelementptr inbounds nuw [2 x i8], ptr @_ZL16kInverseNTTRoots, i64 %i.jv
  %invariant.gep.i.i = getelementptr [2 x i8], ptr %8, i64 %i.ju ; 2 uses
  %min.iters.check = icmp ult i32 %.03649.i.i, 8
  %n.vec = and i64 %i.ju, -8                      ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.ju
  br label %.lr.ph.preheader.i.i

._crit_edge48.i.i:                                ; preds = %._crit_edge.i.i, %_ZL11matrix_multP6vectorPK6matrixPKS_.exit
  %i.jw = icmp slt i32 %.pre.i.i, 256
  br i1 %i.jw, label %_ZL11matrix_multP6vectorPK6matrixPKS_.exit, label %vector.body172, !llvm.loop !53

vector.body172:                                   ; preds = %._crit_edge48.i.i, %vector.body172
  %index173 = phi i64 [ %index.next175, %vector.body172 ], [ 0, %._crit_edge48.i.i ] ; 2 uses
  %i.jx = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %index173 ; 2 uses
  %wide.load174 = load <8 x i16>, ptr %i.jx, align 2, !tbaa !12
  %i.jy = zext <8 x i16> %wide.load174 to <8 x i32>
  %i.jz = mul nuw nsw <8 x i32> %i.jy, splat (i32 3303) ; 2 uses
  %i.ka = zext nneg <8 x i32> %i.jz to <8 x i64>
  %i.kb = mul nuw nsw <8 x i64> %i.ka, splat (i64 5039)
  %i.kc = lshr <8 x i64> %i.kb, splat (i64 24)
  %i.kd = trunc nuw nsw <8 x i64> %i.kc to <8 x i32>
  %i.ke = mul nuw <8 x i32> %i.kd, splat (i32 62207)
  %i.kf = add nuw <8 x i32> %i.ke, %i.jz
  %i.kg = trunc <8 x i32> %i.kf to <8 x i16>      ; 2 uses
  %i.kh = add <8 x i16> %i.kg, splat (i16 -3329)  ; 2 uses
  %i.ki = icmp slt <8 x i16> %i.kh, zeroinitializer
  %i.kj = select <8 x i1> %i.ki, <8 x i16> %i.kg, <8 x i16> zeroinitializer
  %i.kk = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.kh, <8 x i16> zeroinitializer)
  %i.kl = or <8 x i16> %i.kj, %i.kk
  store <8 x i16> %i.kl, ptr %i.jx, align 2, !tbaa !12
  %index.next175 = add nuw i64 %index173, 8       ; 2 uses
  %i.km = icmp eq i64 %index.next175, 256
  br i1 %i.km, label %_ZL18scalar_inverse_nttP6scalar.exit.i, label %vector.body172, !llvm.loop !54

.lr.ph.preheader.i.i:                             ; preds = %._crit_edge.i.i, %.lr.ph47.i.i
  %indvars.iv.i10 = phi i64 [ %indvars.iv.next.i17, %._crit_edge.i.i ], [ %i.ju, %.lr.ph47.i.i ] ; 2 uses
  %indvars.iv57.i.i = phi i64 [ %indvars.iv.next58.i.i, %._crit_edge.i.i ], [ 0, %.lr.ph47.i.i ] ; 2 uses
  %indvars.iv.i.i11 = phi i64 [ %indvars.iv.next.i.i16, %._crit_edge.i.i ], [ 0, %.lr.ph47.i.i ] ; 4 uses
  %gep69.i.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep68.i.i, i64 %indvars.iv57.i.i
  %i.kn = load i16, ptr %gep69.i.i, align 2, !tbaa !12
  %i.ko = zext i16 %i.kn to i32                   ; 2 uses
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph163

vector.ph163:                                     ; preds = %.lr.ph.preheader.i.i
  %i.kp = add i64 %indvars.iv.i.i11, %n.vec
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ko, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body164

vector.body164:                                   ; preds = %vector.body164, %vector.ph163
  %index165 = phi i64 [ 0, %vector.ph163 ], [ %index.next168, %vector.body164 ] ; 2 uses
  %i.kq = add nuw i64 %indvars.iv.i.i11, %index165 ; 2 uses
  %i.kr = getelementptr [2 x i8], ptr %invariant.gep.i.i, i64 %i.kq ; 2 uses
  %wide.load166 = load <8 x i16>, ptr %i.kr, align 2, !tbaa !12 ; 2 uses
  %i.ks = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.kq ; 2 uses
  %wide.load167 = load <8 x i16>, ptr %i.ks, align 2, !tbaa !12 ; 2 uses
  %i.kt = zext <8 x i16> %wide.load166 to <8 x i32>
  %i.ku = zext <8 x i16> %wide.load167 to <8 x i32>
  %i.kv = add <8 x i16> %wide.load167, %wide.load166 ; 2 uses
  %i.kw = add <8 x i16> %i.kv, splat (i16 -3329)  ; 2 uses
  %i.kx = icmp slt <8 x i16> %i.kw, zeroinitializer
  %i.ky = select <8 x i1> %i.kx, <8 x i16> %i.kv, <8 x i16> zeroinitializer
  %i.kz = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.kw, <8 x i16> zeroinitializer)
  %i.la = or <8 x i16> %i.ky, %i.kz
  store <8 x i16> %i.la, ptr %i.ks, align 2, !tbaa !12
  %i.lb = sub nsw <8 x i32> %i.ku, %i.kt
  %i.lc = add nsw <8 x i32> %i.lb, splat (i32 3329)
  %i.ld = mul <8 x i32> %i.lc, %broadcast.splat   ; 2 uses
  %i.le = zext <8 x i32> %i.ld to <8 x i64>
  %i.lf = mul nuw nsw <8 x i64> %i.le, splat (i64 5039)
  %i.lg = lshr <8 x i64> %i.lf, splat (i64 24)
  %i.lh = trunc nuw nsw <8 x i64> %i.lg to <8 x i32>
  %i.li = mul <8 x i32> %i.lh, splat (i32 62207)
  %i.lj = add <8 x i32> %i.li, %i.ld
  %i.lk = trunc <8 x i32> %i.lj to <8 x i16>      ; 2 uses
  %i.ll = add <8 x i16> %i.lk, splat (i16 -3329)  ; 2 uses
  %i.lm = icmp slt <8 x i16> %i.ll, zeroinitializer
  %i.ln = select <8 x i1> %i.lm, <8 x i16> %i.lk, <8 x i16> zeroinitializer
  %i.lo = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ll, <8 x i16> zeroinitializer)
  %i.lp = or <8 x i16> %i.ln, %i.lo
  store <8 x i16> %i.lp, ptr %i.kr, align 2, !tbaa !12
  %index.next168 = add nuw i64 %index165, 8       ; 2 uses
  %i.lq = icmp eq i64 %index.next168, %n.vec
  br i1 %i.lq, label %middle.block169, label %vector.body164, !llvm.loop !55

middle.block169:                                  ; preds = %vector.body164
  br i1 %cmp.n, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block169
  %indvars.iv52.i.i.ph = phi i64 [ %indvars.iv.i.i11, %.lr.ph.preheader.i.i ], [ %i.kp, %middle.block169 ]
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %middle.block169
  %indvars.iv.next.i.i16 = add nuw nsw i64 %indvars.iv.i.i11, %i.jt
  %indvars.iv.next58.i.i = add nuw nsw i64 %indvars.iv57.i.i, 1 ; 2 uses
  %indvars.iv.next.i17 = add nuw nsw i64 %indvars.iv.i10, %i.jt
  %exitcond63.not.i.i = icmp eq i64 %indvars.iv.next58.i.i, %i.jv
  br i1 %exitcond63.not.i.i, label %._crit_edge48.i.i, label %.lr.ph.preheader.i.i, !llvm.loop !56

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv52.i.i = phi i64 [ %indvars.iv.next53.i.i, %.lr.ph.i.i ], [ %indvars.iv52.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %gep.i.i = getelementptr [2 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv52.i.i ; 2 uses
  %i.lr = load i16, ptr %gep.i.i, align 2, !tbaa !12 ; 2 uses
  %i.ls = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %indvars.iv52.i.i ; 2 uses
  %i.lt = load i16, ptr %i.ls, align 2, !tbaa !12 ; 2 uses
  %i.lu = zext i16 %i.lr to i32
  %i.lv = zext i16 %i.lt to i32
  %i.lw = add i16 %i.lt, %i.lr                    ; 2 uses
  %i.lx = add i16 %i.lw, -3329                    ; 2 uses
  %isneg.i.i.i12 = icmp slt i16 %i.lx, 0
  %i.ly = select i1 %isneg.i.i.i12, i16 %i.lw, i16 0
  %i.lz = call i16 @llvm.smax.i16(i16 %i.lx, i16 0)
  %i.ma = or i16 %i.ly, %i.lz
  store i16 %i.ma, ptr %i.ls, align 2, !tbaa !12
  %reass.sub = sub nsw i32 %i.lv, %i.lu
  %i.mb = add nsw i32 %reass.sub, 3329
  %i.mc = mul i32 %i.mb, %i.ko                    ; 2 uses
  %i.md = zext i32 %i.mc to i64
  %i.me = mul nuw nsw i64 %i.md, 5039
  %i.mf = lshr i64 %i.me, 24
  %i.mg = trunc nuw nsw i64 %i.mf to i32
  %.neg.i.i.i13 = mul i32 %i.mg, 62207
  %i.mh = add i32 %.neg.i.i.i13, %i.mc
  %i.mi = trunc i32 %i.mh to i16                  ; 2 uses
  %i.mj = add i16 %i.mi, -3329                    ; 2 uses
  %isneg.i.i.i.i14 = icmp slt i16 %i.mj, 0
  %i.mk = select i1 %isneg.i.i.i.i14, i16 %i.mi, i16 0
  %i.ml = call i16 @llvm.smax.i16(i16 %i.mj, i16 0)
  %i.mm = or i16 %i.mk, %i.ml
  store i16 %i.mm, ptr %gep.i.i, align 2, !tbaa !12
  %indvars.iv.next53.i.i = add nuw nsw i64 %indvars.iv52.i.i, 1 ; 2 uses
  %exitcond.not.i.i15 = icmp eq i64 %indvars.iv.next53.i.i, %indvars.iv.i10
  br i1 %exitcond.not.i.i15, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !57

_ZL18scalar_inverse_nttP6scalar.exit.i:           ; preds = %vector.body172
  %i.mn = getelementptr inbounds nuw i8, ptr %8, i64 512 ; 6 uses
  br label %bb.a

bb.a:                                             ; preds = %._crit_edge48.i.1.i, %_ZL18scalar_inverse_nttP6scalar.exit.i
  %.03550.i.1.i = phi i32 [ 128, %_ZL18scalar_inverse_nttP6scalar.exit.i ], [ %i.mo, %._crit_edge48.i.1.i ]
  %.03649.i.1.i = phi i32 [ 2, %_ZL18scalar_inverse_nttP6scalar.exit.i ], [ %.pre.i.1.i, %._crit_edge48.i.1.i ] ; 3 uses
  %i.mo = lshr i32 %.03550.i.1.i, 1               ; 3 uses
  %.not.i.1.i = icmp eq i32 %i.mo, 0
  %.pre.i.1.i = shl i32 %.03649.i.1.i, 1          ; 4 uses
  br i1 %.not.i.1.i, label %._crit_edge48.i.1.i, label %.lr.ph47.i.1.i

.lr.ph47.i.1.i:                                   ; preds = %bb.a
  %i.mp = zext i32 %.pre.i.1.i to i64             ; 4 uses
  %i.mq = sext i32 %.03649.i.1.i to i64           ; 2 uses
  %i.mr = zext nneg i32 %i.mo to i64              ; 2 uses
  %invariant.gep68.i.1.i = getelementptr inbounds nuw [2 x i8], ptr @_ZL16kInverseNTTRoots, i64 %i.mr
  %invariant.gep.i.1.i = getelementptr [2 x i8], ptr %i.mn, i64 %i.mq ; 2 uses
  %i.ms = shl nuw nsw i64 %i.mp, 1
  %i.mt = shl nuw nsw i64 %i.mq, 1                ; 2 uses
  %i.mu = getelementptr i8, ptr %8, i64 %i.mt
  %i.mv = getelementptr i8, ptr %i.mu, i64 514
  %i.mw = getelementptr i8, ptr %8, i64 %i.mt
  %i.mx = getelementptr i8, ptr %i.mw, i64 512
  br label %.lr.ph.preheader.i.1.i

.lr.ph.preheader.i.1.i:                           ; preds = %._crit_edge.i.1.i, %.lr.ph47.i.1.i
  %indvars.iv57.i.1.i = phi i64 [ 0, %.lr.ph47.i.1.i ], [ %indvars.iv.next58.i.1.i, %._crit_edge.i.1.i ] ; 5 uses
  %indvars.iv55.i.1.i = phi i32 [ %.03649.i.1.i, %.lr.ph47.i.1.i ], [ %indvars.iv.next56.i.1.i, %._crit_edge.i.1.i ] ; 4 uses
  %indvars.iv.i.1.i18 = phi i64 [ 0, %.lr.ph47.i.1.i ], [ %indvars.iv.next.i.1.i23, %._crit_edge.i.1.i ] ; 5 uses
  %i.my = mul i64 %indvars.iv57.i.1.i, %i.mp
  %11 = zext nneg i32 %indvars.iv55.i.1.i to i64
  %12 = sub i64 %11, %i.my                        ; 3 uses
  %gep69.i.1.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep68.i.1.i, i64 %indvars.iv57.i.1.i
  %i.mz = load i16, ptr %gep69.i.1.i, align 2, !tbaa !12
  %i.na = zext i16 %i.mz to i32                   ; 2 uses
  %wide.trip.count.i.1.i = zext i32 %indvars.iv55.i.1.i to i64
  %min.iters.check183 = icmp ult i64 %12, 8
  br i1 %min.iters.check183, label %.lr.ph.i.1.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i.1.i
  %i.nb = mul i64 %i.ms, %indvars.iv57.i.1.i      ; 4 uses
  %scevgep180 = getelementptr i8, ptr %i.mv, i64 %i.nb
  %i.nc = mul i64 %indvars.iv57.i.1.i, %i.mp
  %i.nd = xor i64 %i.nc, -1
  %i.ne = zext nneg i32 %indvars.iv55.i.1.i to i64
  %i.nf = add i64 %i.nd, %i.ne
  %i.ng = shl nsw i64 %i.nf, 1                    ; 2 uses
  %scevgep181 = getelementptr i8, ptr %scevgep180, i64 %i.ng
  %scevgep179 = getelementptr i8, ptr %i.mx, i64 %i.nb
  %i.nh = getelementptr i8, ptr %8, i64 %i.nb
  %scevgep177 = getelementptr i8, ptr %i.nh, i64 514
  %scevgep178 = getelementptr i8, ptr %scevgep177, i64 %i.ng
  %i.ni = getelementptr i8, ptr %8, i64 %i.nb
  %scevgep = getelementptr i8, ptr %i.ni, i64 512
  %bound0 = icmp ult ptr %scevgep, %scevgep181
  %bound1 = icmp ult ptr %scevgep179, %scevgep178
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.1.i.preheader, label %vector.ph184

vector.ph184:                                     ; preds = %vector.memcheck
  %n.vec185 = and i64 %12, -8                     ; 3 uses
  %i.nj = add i64 %indvars.iv.i.1.i18, %n.vec185
  %broadcast.splatinsert186 = insertelement <8 x i32> poison, i32 %i.na, i64 0
  %broadcast.splat187 = shufflevector <8 x i32> %broadcast.splatinsert186, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body188

vector.body188:                                   ; preds = %vector.body188, %vector.ph184
  %index189 = phi i64 [ 0, %vector.ph184 ], [ %index.next192, %vector.body188 ] ; 2 uses
  %i.nk = add nuw i64 %indvars.iv.i.1.i18, %index189 ; 2 uses
  %i.nl = getelementptr [2 x i8], ptr %invariant.gep.i.1.i, i64 %i.nk ; 2 uses
  %wide.load190 = load <8 x i16>, ptr %i.nl, align 2, !tbaa !12, !alias.scope !58 ; 2 uses
  %i.nm = getelementptr inbounds nuw [2 x i8], ptr %i.mn, i64 %i.nk ; 2 uses
  %wide.load191 = load <8 x i16>, ptr %i.nm, align 2, !tbaa !12, !alias.scope !61, !noalias !58 ; 2 uses
  %i.nn = zext <8 x i16> %wide.load190 to <8 x i32>
  %i.no = zext <8 x i16> %wide.load191 to <8 x i32>
  %i.np = add <8 x i16> %wide.load191, %wide.load190 ; 2 uses
  %i.nq = add <8 x i16> %i.np, splat (i16 -3329)  ; 2 uses
  %i.nr = icmp slt <8 x i16> %i.nq, zeroinitializer
  %i.ns = select <8 x i1> %i.nr, <8 x i16> %i.np, <8 x i16> zeroinitializer
  %i.nt = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.nq, <8 x i16> zeroinitializer)
  %i.nu = or <8 x i16> %i.ns, %i.nt
  store <8 x i16> %i.nu, ptr %i.nm, align 2, !tbaa !12, !alias.scope !61, !noalias !58
  %i.nv = sub nsw <8 x i32> %i.no, %i.nn
  %i.nw = add nsw <8 x i32> %i.nv, splat (i32 3329)
  %i.nx = mul <8 x i32> %i.nw, %broadcast.splat187 ; 2 uses
  %i.ny = zext <8 x i32> %i.nx to <8 x i64>
  %i.nz = mul nuw nsw <8 x i64> %i.ny, splat (i64 5039)
  %i.oa = lshr <8 x i64> %i.nz, splat (i64 24)
  %i.ob = trunc nuw nsw <8 x i64> %i.oa to <8 x i32>
  %i.oc = mul <8 x i32> %i.ob, splat (i32 62207)
  %i.od = add <8 x i32> %i.oc, %i.nx
  %i.oe = trunc <8 x i32> %i.od to <8 x i16>      ; 2 uses
  %i.of = add <8 x i16> %i.oe, splat (i16 -3329)  ; 2 uses
  %i.og = icmp slt <8 x i16> %i.of, zeroinitializer
  %i.oh = select <8 x i1> %i.og, <8 x i16> %i.oe, <8 x i16> zeroinitializer
  %i.oi = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.of, <8 x i16> zeroinitializer)
  %i.oj = or <8 x i16> %i.oh, %i.oi
  store <8 x i16> %i.oj, ptr %i.nl, align 2, !tbaa !12, !alias.scope !58
  %index.next192 = add nuw i64 %index189, 8       ; 2 uses
  %i.ok = icmp eq i64 %index.next192, %n.vec185
  br i1 %i.ok, label %middle.block193, label %vector.body188, !llvm.loop !63

middle.block193:                                  ; preds = %vector.body188
  %cmp.n194 = icmp eq i64 %12, %n.vec185
  br i1 %cmp.n194, label %._crit_edge.i.1.i, label %.lr.ph.i.1.i.preheader

.lr.ph.i.1.i.preheader:                           ; preds = %vector.memcheck, %.lr.ph.preheader.i.1.i, %middle.block193
  %indvars.iv52.i.1.i.ph = phi i64 [ %indvars.iv.i.1.i18, %vector.memcheck ], [ %indvars.iv.i.1.i18, %.lr.ph.preheader.i.1.i ], [ %i.nj, %middle.block193 ]
  br label %.lr.ph.i.1.i

.lr.ph.i.1.i:                                     ; preds = %.lr.ph.i.1.i.preheader, %.lr.ph.i.1.i
  %indvars.iv52.i.1.i = phi i64 [ %indvars.iv.next53.i.1.i, %.lr.ph.i.1.i ], [ %indvars.iv52.i.1.i.ph, %.lr.ph.i.1.i.preheader ] ; 3 uses
  %gep.i.1.i = getelementptr [2 x i8], ptr %invariant.gep.i.1.i, i64 %indvars.iv52.i.1.i ; 2 uses
  %i.ol = load i16, ptr %gep.i.1.i, align 2, !tbaa !12 ; 2 uses
  %i.om = getelementptr inbounds nuw [2 x i8], ptr %i.mn, i64 %indvars.iv52.i.1.i ; 2 uses
  %i.on = load i16, ptr %i.om, align 2, !tbaa !12 ; 2 uses
  %i.oo = zext i16 %i.ol to i32
  %i.op = zext i16 %i.on to i32
  %i.oq = add i16 %i.on, %i.ol                    ; 2 uses
  %i.or = add i16 %i.oq, -3329                    ; 2 uses
  %isneg.i.i.1.i19 = icmp slt i16 %i.or, 0
  %i.os = select i1 %isneg.i.i.1.i19, i16 %i.oq, i16 0
  %i.ot = call i16 @llvm.smax.i16(i16 %i.or, i16 0)
  %i.ou = or i16 %i.os, %i.ot
  store i16 %i.ou, ptr %i.om, align 2, !tbaa !12
  %reass.sub90 = sub nsw i32 %i.op, %i.oo
  %i.ov = add nsw i32 %reass.sub90, 3329
  %i.ow = mul i32 %i.ov, %i.na                    ; 2 uses
  %i.ox = zext i32 %i.ow to i64
  %i.oy = mul nuw nsw i64 %i.ox, 5039
  %i.oz = lshr i64 %i.oy, 24
  %i.pa = trunc nuw nsw i64 %i.oz to i32
  %.neg.i.i.1.i20 = mul i32 %i.pa, 62207
  %i.pb = add i32 %.neg.i.i.1.i20, %i.ow
  %i.pc = trunc i32 %i.pb to i16                  ; 2 uses
  %i.pd = add i16 %i.pc, -3329                    ; 2 uses
  %isneg.i.i.i.1.i21 = icmp slt i16 %i.pd, 0
  %i.pe = select i1 %isneg.i.i.i.1.i21, i16 %i.pc, i16 0
  %i.pf = call i16 @llvm.smax.i16(i16 %i.pd, i16 0)
  %i.pg = or i16 %i.pe, %i.pf
  store i16 %i.pg, ptr %gep.i.1.i, align 2, !tbaa !12
  %indvars.iv.next53.i.1.i = add nuw nsw i64 %indvars.iv52.i.1.i, 1 ; 2 uses
  %exitcond.not.i.1.i22 = icmp eq i64 %indvars.iv.next53.i.1.i, %wide.trip.count.i.1.i
  br i1 %exitcond.not.i.1.i22, label %._crit_edge.i.1.i, label %.lr.ph.i.1.i, !llvm.loop !64

._crit_edge.i.1.i:                                ; preds = %.lr.ph.i.1.i, %middle.block193
  %indvars.iv.next.i.1.i23 = add nuw nsw i64 %indvars.iv.i.1.i18, %i.mp
  %indvars.iv.next58.i.1.i = add nuw nsw i64 %indvars.iv57.i.1.i, 1 ; 2 uses
  %indvars.iv.next56.i.1.i = add i32 %indvars.iv55.i.1.i, %.pre.i.1.i
  %exitcond63.not.i.1.i = icmp eq i64 %indvars.iv.next58.i.1.i, %i.mr
  br i1 %exitcond63.not.i.1.i, label %._crit_edge48.i.1.i, label %.lr.ph.preheader.i.1.i, !llvm.loop !56

._crit_edge48.i.1.i:                              ; preds = %._crit_edge.i.1.i, %bb.a
  %i.ph = icmp slt i32 %.pre.i.1.i, 256
  br i1 %i.ph, label %bb.a, label %vector.body198, !llvm.loop !53

vector.body198:                                   ; preds = %._crit_edge48.i.1.i, %vector.body198
  %index199 = phi i64 [ %index.next201, %vector.body198 ], [ 0, %._crit_edge48.i.1.i ] ; 2 uses
  %i.pi = getelementptr inbounds nuw [2 x i8], ptr %i.mn, i64 %index199 ; 2 uses
  %wide.load200 = load <8 x i16>, ptr %i.pi, align 2, !tbaa !12
  %i.pj = zext <8 x i16> %wide.load200 to <8 x i32>
  %i.pk = mul nuw nsw <8 x i32> %i.pj, splat (i32 3303) ; 2 uses
  %i.pl = zext nneg <8 x i32> %i.pk to <8 x i64>
  %i.pm = mul nuw nsw <8 x i64> %i.pl, splat (i64 5039)
  %i.pn = lshr <8 x i64> %i.pm, splat (i64 24)
  %i.po = trunc nuw nsw <8 x i64> %i.pn to <8 x i32>
  %i.pp = mul nuw <8 x i32> %i.po, splat (i32 62207)
  %i.pq = add nuw <8 x i32> %i.pp, %i.pk
  %i.pr = trunc <8 x i32> %i.pq to <8 x i16>      ; 2 uses
  %i.ps = add <8 x i16> %i.pr, splat (i16 -3329)  ; 2 uses
  %i.pt = icmp slt <8 x i16> %i.ps, zeroinitializer
  %i.pu = select <8 x i1> %i.pt, <8 x i16> %i.pr, <8 x i16> zeroinitializer
  %i.pv = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ps, <8 x i16> zeroinitializer)
  %i.pw = or <8 x i16> %i.pu, %i.pv
  store <8 x i16> %i.pw, ptr %i.pi, align 2, !tbaa !12
  %index.next201 = add nuw i64 %index199, 8       ; 2 uses
  %i.px = icmp eq i64 %index.next201, 256
  br i1 %i.px, label %_ZL18scalar_inverse_nttP6scalar.exit.1.i, label %vector.body198, !llvm.loop !65

_ZL18scalar_inverse_nttP6scalar.exit.1.i:         ; preds = %vector.body198
  %i.py = getelementptr inbounds nuw i8, ptr %8, i64 1024 ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge48.i.2.i, %_ZL18scalar_inverse_nttP6scalar.exit.1.i
  %.03550.i.2.i = phi i32 [ 128, %_ZL18scalar_inverse_nttP6scalar.exit.1.i ], [ %i.pz, %._crit_edge48.i.2.i ]
  %.03649.i.2.i = phi i32 [ 2, %_ZL18scalar_inverse_nttP6scalar.exit.1.i ], [ %.pre.i.2.i, %._crit_edge48.i.2.i ] ; 3 uses
  %i.pz = lshr i32 %.03550.i.2.i, 1               ; 3 uses
  %.not.i.2.i = icmp eq i32 %i.pz, 0
  %.pre.i.2.i = shl i32 %.03649.i.2.i, 1          ; 4 uses
  br i1 %.not.i.2.i, label %._crit_edge48.i.2.i, label %.lr.ph47.i.2.i

.lr.ph47.i.2.i:                                   ; preds = %bb.b
  %i.qa = zext i32 %.pre.i.2.i to i64             ; 4 uses
  %i.qb = sext i32 %.03649.i.2.i to i64           ; 2 uses
  %i.qc = zext nneg i32 %i.pz to i64              ; 2 uses
  %invariant.gep68.i.2.i = getelementptr inbounds nuw [2 x i8], ptr @_ZL16kInverseNTTRoots, i64 %i.qc
  %invariant.gep.i.2.i = getelementptr [2 x i8], ptr %i.py, i64 %i.qb ; 2 uses
  %i.qd = shl nuw nsw i64 %i.qa, 1
  %i.qe = shl nuw nsw i64 %i.qb, 1                ; 2 uses
  %i.qf = getelementptr i8, ptr %8, i64 %i.qe
  %i.qg = getelementptr i8, ptr %i.qf, i64 1026
  %i.qh = getelementptr i8, ptr %8, i64 %i.qe
  %i.qi = getelementptr i8, ptr %i.qh, i64 1024
  br label %.lr.ph.preheader.i.2.i

.lr.ph.preheader.i.2.i:                           ; preds = %._crit_edge.i.2.i, %.lr.ph47.i.2.i
  %indvars.iv57.i.2.i = phi i64 [ 0, %.lr.ph47.i.2.i ], [ %indvars.iv.next58.i.2.i, %._crit_edge.i.2.i ] ; 5 uses
  %indvars.iv55.i.2.i = phi i32 [ %.03649.i.2.i, %.lr.ph47.i.2.i ], [ %indvars.iv.next56.i.2.i, %._crit_edge.i.2.i ] ; 4 uses
  %indvars.iv.i.2.i24 = phi i64 [ 0, %.lr.ph47.i.2.i ], [ %indvars.iv.next.i.2.i29, %._crit_edge.i.2.i ] ; 5 uses
  %i.qj = mul i64 %indvars.iv57.i.2.i, %i.qa
  %13 = zext nneg i32 %indvars.iv55.i.2.i to i64
  %14 = sub i64 %13, %i.qj                        ; 3 uses
  %gep69.i.2.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep68.i.2.i, i64 %indvars.iv57.i.2.i
  %i.qk = load i16, ptr %gep69.i.2.i, align 2, !tbaa !12
  %i.ql = zext i16 %i.qk to i32                   ; 2 uses
  %wide.trip.count.i.2.i = zext i32 %indvars.iv55.i.2.i to i64
  %min.iters.check214 = icmp ult i64 %14, 8
  br i1 %min.iters.check214, label %.lr.ph.i.2.i.preheader, label %vector.memcheck203

vector.memcheck203:                               ; preds = %.lr.ph.preheader.i.2.i
  %i.qm = mul i64 %i.qd, %indvars.iv57.i.2.i      ; 4 uses
  %scevgep208 = getelementptr i8, ptr %i.qg, i64 %i.qm
  %i.qn = mul i64 %indvars.iv57.i.2.i, %i.qa
  %i.qo = xor i64 %i.qn, -1
  %i.qp = zext nneg i32 %indvars.iv55.i.2.i to i64
  %i.qq = add i64 %i.qo, %i.qp
  %i.qr = shl nsw i64 %i.qq, 1                    ; 2 uses
  %scevgep209 = getelementptr i8, ptr %scevgep208, i64 %i.qr
  %scevgep207 = getelementptr i8, ptr %i.qi, i64 %i.qm
  %i.qs = getelementptr i8, ptr %8, i64 %i.qm
  %scevgep205 = getelementptr i8, ptr %i.qs, i64 1026
  %scevgep206 = getelementptr i8, ptr %scevgep205, i64 %i.qr
  %i.qt = getelementptr i8, ptr %8, i64 %i.qm
  %scevgep204 = getelementptr i8, ptr %i.qt, i64 1024
  %bound0210 = icmp ult ptr %scevgep204, %scevgep209
  %bound1211 = icmp ult ptr %scevgep207, %scevgep206
  %found.conflict212 = and i1 %bound0210, %bound1211
  br i1 %found.conflict212, label %.lr.ph.i.2.i.preheader, label %vector.ph215

vector.ph215:                                     ; preds = %vector.memcheck203
  %n.vec216 = and i64 %14, -8                     ; 3 uses
  %i.qu = add i64 %indvars.iv.i.2.i24, %n.vec216
  %broadcast.splatinsert217 = insertelement <8 x i32> poison, i32 %i.ql, i64 0
  %broadcast.splat218 = shufflevector <8 x i32> %broadcast.splatinsert217, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body219

vector.body219:                                   ; preds = %vector.body219, %vector.ph215
  %index220 = phi i64 [ 0, %vector.ph215 ], [ %index.next223, %vector.body219 ] ; 2 uses
  %i.qv = add nuw i64 %indvars.iv.i.2.i24, %index220 ; 2 uses
  %i.qw = getelementptr [2 x i8], ptr %invariant.gep.i.2.i, i64 %i.qv ; 2 uses
  %wide.load221 = load <8 x i16>, ptr %i.qw, align 2, !tbaa !12, !alias.scope !66 ; 2 uses
  %i.qx = getelementptr inbounds nuw [2 x i8], ptr %i.py, i64 %i.qv ; 2 uses
  %wide.load222 = load <8 x i16>, ptr %i.qx, align 2, !tbaa !12, !alias.scope !69, !noalias !66 ; 2 uses
  %i.qy = zext <8 x i16> %wide.load221 to <8 x i32>
  %i.qz = zext <8 x i16> %wide.load222 to <8 x i32>
  %i.ra = add <8 x i16> %wide.load222, %wide.load221 ; 2 uses
  %i.rb = add <8 x i16> %i.ra, splat (i16 -3329)  ; 2 uses
  %i.rc = icmp slt <8 x i16> %i.rb, zeroinitializer
  %i.rd = select <8 x i1> %i.rc, <8 x i16> %i.ra, <8 x i16> zeroinitializer
  %i.re = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.rb, <8 x i16> zeroinitializer)
  %i.rf = or <8 x i16> %i.rd, %i.re
  store <8 x i16> %i.rf, ptr %i.qx, align 2, !tbaa !12, !alias.scope !69, !noalias !66
  %i.rg = sub nsw <8 x i32> %i.qz, %i.qy
  %i.rh = add nsw <8 x i32> %i.rg, splat (i32 3329)
  %i.ri = mul <8 x i32> %i.rh, %broadcast.splat218 ; 2 uses
  %i.rj = zext <8 x i32> %i.ri to <8 x i64>
  %i.rk = mul nuw nsw <8 x i64> %i.rj, splat (i64 5039)
  %i.rl = lshr <8 x i64> %i.rk, splat (i64 24)
  %i.rm = trunc nuw nsw <8 x i64> %i.rl to <8 x i32>
  %i.rn = mul <8 x i32> %i.rm, splat (i32 62207)
  %i.ro = add <8 x i32> %i.rn, %i.ri
  %i.rp = trunc <8 x i32> %i.ro to <8 x i16>      ; 2 uses
  %i.rq = add <8 x i16> %i.rp, splat (i16 -3329)  ; 2 uses
  %i.rr = icmp slt <8 x i16> %i.rq, zeroinitializer
  %i.rs = select <8 x i1> %i.rr, <8 x i16> %i.rp, <8 x i16> zeroinitializer
  %i.rt = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.rq, <8 x i16> zeroinitializer)
  %i.ru = or <8 x i16> %i.rs, %i.rt
  store <8 x i16> %i.ru, ptr %i.qw, align 2, !tbaa !12, !alias.scope !66
  %index.next223 = add nuw i64 %index220, 8       ; 2 uses
  %i.rv = icmp eq i64 %index.next223, %n.vec216
  br i1 %i.rv, label %middle.block224, label %vector.body219, !llvm.loop !71

middle.block224:                                  ; preds = %vector.body219
  %cmp.n225 = icmp eq i64 %14, %n.vec216
  br i1 %cmp.n225, label %._crit_edge.i.2.i, label %.lr.ph.i.2.i.preheader

.lr.ph.i.2.i.preheader:                           ; preds = %vector.memcheck203, %.lr.ph.preheader.i.2.i, %middle.block224
  %indvars.iv52.i.2.i.ph = phi i64 [ %indvars.iv.i.2.i24, %vector.memcheck203 ], [ %indvars.iv.i.2.i24, %.lr.ph.preheader.i.2.i ], [ %i.qu, %middle.block224 ]
  br label %.lr.ph.i.2.i

.lr.ph.i.2.i:                                     ; preds = %.lr.ph.i.2.i.preheader, %.lr.ph.i.2.i
  %indvars.iv52.i.2.i = phi i64 [ %indvars.iv.next53.i.2.i, %.lr.ph.i.2.i ], [ %indvars.iv52.i.2.i.ph, %.lr.ph.i.2.i.preheader ] ; 3 uses
  %gep.i.2.i = getelementptr [2 x i8], ptr %invariant.gep.i.2.i, i64 %indvars.iv52.i.2.i ; 2 uses
  %i.rw = load i16, ptr %gep.i.2.i, align 2, !tbaa !12 ; 2 uses
  %i.rx = getelementptr inbounds nuw [2 x i8], ptr %i.py, i64 %indvars.iv52.i.2.i ; 2 uses
  %i.ry = load i16, ptr %i.rx, align 2, !tbaa !12 ; 2 uses
  %i.rz = zext i16 %i.rw to i32
  %i.sa = zext i16 %i.ry to i32
  %i.sb = add i16 %i.ry, %i.rw                    ; 2 uses
  %i.sc = add i16 %i.sb, -3329                    ; 2 uses
  %isneg.i.i.2.i25 = icmp slt i16 %i.sc, 0
  %i.sd = select i1 %isneg.i.i.2.i25, i16 %i.sb, i16 0
  %i.se = call i16 @llvm.smax.i16(i16 %i.sc, i16 0)
  %i.sf = or i16 %i.sd, %i.se
  store i16 %i.sf, ptr %i.rx, align 2, !tbaa !12
  %reass.sub91 = sub nsw i32 %i.sa, %i.rz
  %i.sg = add nsw i32 %reass.sub91, 3329
  %i.sh = mul i32 %i.sg, %i.ql                    ; 2 uses
  %i.si = zext i32 %i.sh to i64
  %i.sj = mul nuw nsw i64 %i.si, 5039
  %i.sk = lshr i64 %i.sj, 24
  %i.sl = trunc nuw nsw i64 %i.sk to i32
  %.neg.i.i.2.i26 = mul i32 %i.sl, 62207
  %i.sm = add i32 %.neg.i.i.2.i26, %i.sh
  %i.sn = trunc i32 %i.sm to i16                  ; 2 uses
  %i.so = add i16 %i.sn, -3329                    ; 2 uses
  %isneg.i.i.i.2.i27 = icmp slt i16 %i.so, 0
  %i.sp = select i1 %isneg.i.i.i.2.i27, i16 %i.sn, i16 0
  %i.sq = call i16 @llvm.smax.i16(i16 %i.so, i16 0)
  %i.sr = or i16 %i.sp, %i.sq
  store i16 %i.sr, ptr %gep.i.2.i, align 2, !tbaa !12
  %indvars.iv.next53.i.2.i = add nuw nsw i64 %indvars.iv52.i.2.i, 1 ; 2 uses
  %exitcond.not.i.2.i28 = icmp eq i64 %indvars.iv.next53.i.2.i, %wide.trip.count.i.2.i
  br i1 %exitcond.not.i.2.i28, label %._crit_edge.i.2.i, label %.lr.ph.i.2.i, !llvm.loop !72

._crit_edge.i.2.i:                                ; preds = %.lr.ph.i.2.i, %middle.block224
  %indvars.iv.next.i.2.i29 = add nuw nsw i64 %indvars.iv.i.2.i24, %i.qa
  %indvars.iv.next58.i.2.i = add nuw nsw i64 %indvars.iv57.i.2.i, 1 ; 2 uses
  %indvars.iv.next56.i.2.i = add i32 %indvars.iv55.i.2.i, %.pre.i.2.i
  %exitcond63.not.i.2.i = icmp eq i64 %indvars.iv.next58.i.2.i, %i.qc
  br i1 %exitcond63.not.i.2.i, label %._crit_edge48.i.2.i, label %.lr.ph.preheader.i.2.i, !llvm.loop !56

._crit_edge48.i.2.i:                              ; preds = %._crit_edge.i.2.i, %bb.b
  %i.ss = icmp slt i32 %.pre.i.2.i, 256
  br i1 %i.ss, label %bb.b, label %vector.body229, !llvm.loop !53

vector.body229:                                   ; preds = %._crit_edge48.i.2.i, %vector.body229
  %index230 = phi i64 [ %index.next232, %vector.body229 ], [ 0, %._crit_edge48.i.2.i ] ; 2 uses
  %i.st = getelementptr inbounds nuw [2 x i8], ptr %i.py, i64 %index230 ; 2 uses
  %wide.load231 = load <8 x i16>, ptr %i.st, align 2, !tbaa !12
  %i.su = zext <8 x i16> %wide.load231 to <8 x i32>
  %i.sv = mul nuw nsw <8 x i32> %i.su, splat (i32 3303) ; 2 uses
  %i.sw = zext nneg <8 x i32> %i.sv to <8 x i64>
  %i.sx = mul nuw nsw <8 x i64> %i.sw, splat (i64 5039)
  %i.sy = lshr <8 x i64> %i.sx, splat (i64 24)
  %i.sz = trunc nuw nsw <8 x i64> %i.sy to <8 x i32>
  %i.ta = mul nuw <8 x i32> %i.sz, splat (i32 62207)
  %i.tb = add nuw <8 x i32> %i.ta, %i.sv
  %i.tc = trunc <8 x i32> %i.tb to <8 x i16>      ; 2 uses
  %i.td = add <8 x i16> %i.tc, splat (i16 -3329)  ; 2 uses
  %i.te = icmp slt <8 x i16> %i.td, zeroinitializer
  %i.tf = select <8 x i1> %i.te, <8 x i16> %i.tc, <8 x i16> zeroinitializer
  %i.tg = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.td, <8 x i16> zeroinitializer)
  %i.th = or <8 x i16> %i.tf, %i.tg
  store <8 x i16> %i.th, ptr %i.st, align 2, !tbaa !12
  %index.next232 = add nuw i64 %index230, 8       ; 2 uses
  %i.ti = icmp eq i64 %index.next232, 256
  br i1 %i.ti, label %vector.body236, label %vector.body229, !llvm.loop !73

vector.body236:                                   ; preds = %vector.body229, %vector.body236
  %index237 = phi i64 [ %index.next242, %vector.body236 ], [ 0, %vector.body229 ] ; 3 uses
  %i.tj = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %index237 ; 3 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 16 ; 2 uses
  %wide.load238 = load <8 x i16>, ptr %i.tj, align 2, !tbaa !12
  %wide.load239 = load <8 x i16>, ptr %i.tk, align 2, !tbaa !12
  %i.tl = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %index237 ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 16
  %wide.load240 = load <8 x i16>, ptr %i.tl, align 2, !tbaa !12
  %wide.load241 = load <8 x i16>, ptr %i.tm, align 2, !tbaa !12
  %i.tn = add <8 x i16> %wide.load240, %wide.load238 ; 2 uses
  %i.to = add <8 x i16> %wide.load241, %wide.load239 ; 2 uses
  %i.tp = add <8 x i16> %i.tn, splat (i16 -3329)  ; 2 uses
  %i.tq = add <8 x i16> %i.to, splat (i16 -3329)  ; 2 uses
  %i.tr = icmp slt <8 x i16> %i.tp, zeroinitializer
  %i.ts = icmp slt <8 x i16> %i.tq, zeroinitializer
  %i.tt = select <8 x i1> %i.tr, <8 x i16> %i.tn, <8 x i16> zeroinitializer
  %i.tu = select <8 x i1> %i.ts, <8 x i16> %i.to, <8 x i16> zeroinitializer
  %i.tv = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.tp, <8 x i16> zeroinitializer)
  %i.tw = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.tq, <8 x i16> zeroinitializer)
  %i.tx = or <8 x i16> %i.tt, %i.tv
  %i.ty = or <8 x i16> %i.tu, %i.tw
  store <8 x i16> %i.tx, ptr %i.tj, align 2, !tbaa !12
  store <8 x i16> %i.ty, ptr %i.tk, align 2, !tbaa !12
  %index.next242 = add nuw i64 %index237, 16      ; 2 uses
  %i.tz = icmp eq i64 %index.next242, 256
  br i1 %i.tz, label %_ZL10scalar_addP6scalarPKS_.exit.i34, label %vector.body236, !llvm.loop !74

_ZL10scalar_addP6scalarPKS_.exit.i34:             ; preds = %vector.body236
  %i.ua = getelementptr inbounds nuw i8, ptr %6, i64 512
  br label %vector.body246

vector.body246:                                   ; preds = %vector.body246, %_ZL10scalar_addP6scalarPKS_.exit.i34
  %index247 = phi i64 [ 0, %_ZL10scalar_addP6scalarPKS_.exit.i34 ], [ %index.next252, %vector.body246 ] ; 3 uses
  %i.ub = getelementptr inbounds nuw [2 x i8], ptr %i.mn, i64 %index247 ; 3 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 16 ; 2 uses
  %wide.load248 = load <8 x i16>, ptr %i.ub, align 2, !tbaa !12
  %wide.load249 = load <8 x i16>, ptr %i.uc, align 2, !tbaa !12
  %i.ud = getelementptr inbounds nuw [2 x i8], ptr %i.ua, i64 %index247 ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 16
  %wide.load250 = load <8 x i16>, ptr %i.ud, align 2, !tbaa !12
  %wide.load251 = load <8 x i16>, ptr %i.ue, align 2, !tbaa !12
  %i.uf = add <8 x i16> %wide.load250, %wide.load248 ; 2 uses
  %i.ug = add <8 x i16> %wide.load251, %wide.load249 ; 2 uses
  %i.uh = add <8 x i16> %i.uf, splat (i16 -3329)  ; 2 uses
  %i.ui = add <8 x i16> %i.ug, splat (i16 -3329)  ; 2 uses
  %i.uj = icmp slt <8 x i16> %i.uh, zeroinitializer
  %i.uk = icmp slt <8 x i16> %i.ui, zeroinitializer
  %i.ul = select <8 x i1> %i.uj, <8 x i16> %i.uf, <8 x i16> zeroinitializer
  %i.um = select <8 x i1> %i.uk, <8 x i16> %i.ug, <8 x i16> zeroinitializer
  %i.un = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.uh, <8 x i16> zeroinitializer)
  %i.uo = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ui, <8 x i16> zeroinitializer)
  %i.up = or <8 x i16> %i.ul, %i.un
  %i.uq = or <8 x i16> %i.um, %i.uo
  store <8 x i16> %i.up, ptr %i.ub, align 2, !tbaa !12
  store <8 x i16> %i.uq, ptr %i.uc, align 2, !tbaa !12
  %index.next252 = add nuw i64 %index247, 16      ; 2 uses
  %i.ur = icmp eq i64 %index.next252, 256
  br i1 %i.ur, label %_ZL10scalar_addP6scalarPKS_.exit.1.i39, label %vector.body246, !llvm.loop !75

_ZL10scalar_addP6scalarPKS_.exit.1.i39:           ; preds = %vector.body246
  %i.us = getelementptr inbounds nuw i8, ptr %6, i64 1024
  br label %vector.body256

vector.body256:                                   ; preds = %vector.body256, %_ZL10scalar_addP6scalarPKS_.exit.1.i39
  %index257 = phi i64 [ 0, %_ZL10scalar_addP6scalarPKS_.exit.1.i39 ], [ %index.next262, %vector.body256 ] ; 3 uses
  %i.ut = getelementptr inbounds nuw [2 x i8], ptr %i.py, i64 %index257 ; 3 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 16 ; 2 uses
  %wide.load258 = load <8 x i16>, ptr %i.ut, align 2, !tbaa !12
  %wide.load259 = load <8 x i16>, ptr %i.uu, align 2, !tbaa !12
  %i.uv = getelementptr inbounds nuw [2 x i8], ptr %i.us, i64 %index257 ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 16
  %wide.load260 = load <8 x i16>, ptr %i.uv, align 2, !tbaa !12
  %wide.load261 = load <8 x i16>, ptr %i.uw, align 2, !tbaa !12
  %i.ux = add <8 x i16> %wide.load260, %wide.load258 ; 2 uses
  %i.uy = add <8 x i16> %wide.load261, %wide.load259 ; 2 uses
  %i.uz = add <8 x i16> %i.ux, splat (i16 -3329)  ; 2 uses
  %i.va = add <8 x i16> %i.uy, splat (i16 -3329)  ; 2 uses
  %i.vb = icmp slt <8 x i16> %i.uz, zeroinitializer
  %i.vc = icmp slt <8 x i16> %i.va, zeroinitializer
  %i.vd = select <8 x i1> %i.vb, <8 x i16> %i.ux, <8 x i16> zeroinitializer
  %i.ve = select <8 x i1> %i.vc, <8 x i16> %i.uy, <8 x i16> zeroinitializer
  %i.vf = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.uz, <8 x i16> zeroinitializer)
  %i.vg = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.va, <8 x i16> zeroinitializer)
  %i.vh = or <8 x i16> %i.vd, %i.vf
  %i.vi = or <8 x i16> %i.ve, %i.vg
  store <8 x i16> %i.vh, ptr %i.ut, align 2, !tbaa !12
  store <8 x i16> %i.vi, ptr %i.uu, align 2, !tbaa !12
  %index.next262 = add nuw i64 %index257, 16      ; 2 uses
  %i.vj = icmp eq i64 %index.next262, 256
  br i1 %i.vj, label %_ZL10vector_addP6vectorPKS_.exit, label %vector.body256, !llvm.loop !76

_ZL10vector_addP6vectorPKS_.exit:                 ; preds = %vector.body256
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  call fastcc void @_ZL20scalar_inner_productP6scalarPK6vectorS3_(ptr noundef %9, ptr noundef %1, ptr noundef %5)
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge48.i, %_ZL10vector_addP6vectorPKS_.exit
  %.03550.i = phi i32 [ 128, %_ZL10vector_addP6vectorPKS_.exit ], [ %i.vk, %._crit_edge48.i ]
  %.03649.i = phi i32 [ 2, %_ZL10vector_addP6vectorPKS_.exit ], [ %.pre.i, %._crit_edge48.i ] ; 3 uses
  %i.vk = lshr i32 %.03550.i, 1                   ; 3 uses
  %.not.i = icmp eq i32 %i.vk, 0
  %.pre.i = shl i32 %.03649.i, 1                  ; 4 uses
  br i1 %.not.i, label %._crit_edge48.i, label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %bb.c
  %i.vl = zext i32 %.pre.i to i64                 ; 4 uses
  %i.vm = sext i32 %.03649.i to i64               ; 2 uses
  %i.vn = zext nneg i32 %i.vk to i64              ; 2 uses
  %invariant.gep68.i = getelementptr inbounds nuw [2 x i8], ptr @_ZL16kInverseNTTRoots, i64 %i.vn
  %invariant.gep.i = getelementptr [2 x i8], ptr %9, i64 %i.vm ; 2 uses
  %i.vo = shl nuw nsw i64 %i.vl, 1
  %i.vp = shl nuw nsw i64 %i.vm, 1                ; 2 uses
  %i.vq = getelementptr i8, ptr %9, i64 %i.vp
  %i.vr = getelementptr i8, ptr %i.vq, i64 2
  %i.vs = getelementptr i8, ptr %9, i64 %i.vp
  br label %.lr.ph.preheader.i

._crit_edge48.i:                                  ; preds = %._crit_edge.i, %bb.c
  %i.vt = icmp slt i32 %.pre.i, 256
  br i1 %i.vt, label %bb.c, label %vector.body290, !llvm.loop !53

vector.body290:                                   ; preds = %._crit_edge48.i, %vector.body290
  %index291 = phi i64 [ %index.next293, %vector.body290 ], [ 0, %._crit_edge48.i ] ; 2 uses
  %i.vu = getelementptr inbounds nuw [2 x i8], ptr %9, i64 %index291 ; 2 uses
  %wide.load292 = load <8 x i16>, ptr %i.vu, align 2, !tbaa !12
  %i.vv = zext <8 x i16> %wide.load292 to <8 x i32>
  %i.vw = mul nuw nsw <8 x i32> %i.vv, splat (i32 3303) ; 2 uses
  %i.vx = zext nneg <8 x i32> %i.vw to <8 x i64>
  %i.vy = mul nuw nsw <8 x i64> %i.vx, splat (i64 5039)
  %i.vz = lshr <8 x i64> %i.vy, splat (i64 24)
  %i.wa = trunc nuw nsw <8 x i64> %i.vz to <8 x i32>
  %i.wb = mul nuw <8 x i32> %i.wa, splat (i32 62207)
  %i.wc = add nuw <8 x i32> %i.wb, %i.vw
  %i.wd = trunc <8 x i32> %i.wc to <8 x i16>      ; 2 uses
  %i.we = add <8 x i16> %i.wd, splat (i16 -3329)  ; 2 uses
  %i.wf = icmp slt <8 x i16> %i.we, zeroinitializer
  %i.wg = select <8 x i1> %i.wf, <8 x i16> %i.wd, <8 x i16> zeroinitializer
  %i.wh = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.we, <8 x i16> zeroinitializer)
  %i.wi = or <8 x i16> %i.wg, %i.wh
  store <8 x i16> %i.wi, ptr %i.vu, align 2, !tbaa !12
  %index.next293 = add nuw i64 %index291, 8       ; 2 uses
  %i.wj = icmp eq i64 %index.next293, 256
  br i1 %i.wj, label %vector.body297, label %vector.body290, !llvm.loop !77

.lr.ph.preheader.i:                               ; preds = %._crit_edge.i, %.lr.ph47.i
  %indvars.iv57.i = phi i64 [ 0, %.lr.ph47.i ], [ %indvars.iv.next58.i, %._crit_edge.i ] ; 5 uses
  %indvars.iv55.i = phi i32 [ %.03649.i, %.lr.ph47.i ], [ %indvars.iv.next56.i, %._crit_edge.i ] ; 4 uses
  %indvars.iv.i45 = phi i64 [ 0, %.lr.ph47.i ], [ %indvars.iv.next.i49, %._crit_edge.i ] ; 5 uses
  %i.wk = mul i64 %indvars.iv57.i, %i.vl
  %15 = zext nneg i32 %indvars.iv55.i to i64
  %16 = sub i64 %15, %i.wk                        ; 3 uses
  %gep69.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep68.i, i64 %indvars.iv57.i
  %i.wl = load i16, ptr %gep69.i, align 2, !tbaa !12
  %i.wm = zext i16 %i.wl to i32                   ; 2 uses
  %wide.trip.count.i = zext i32 %indvars.iv55.i to i64
  %min.iters.check275 = icmp ult i64 %16, 8
  br i1 %min.iters.check275, label %.lr.ph.i.preheader, label %vector.memcheck264

vector.memcheck264:                               ; preds = %.lr.ph.preheader.i
  %i.wn = mul i64 %i.vo, %indvars.iv57.i          ; 4 uses
  %scevgep269 = getelementptr i8, ptr %i.vr, i64 %i.wn
  %i.wo = mul i64 %indvars.iv57.i, %i.vl
  %i.wp = xor i64 %i.wo, -1
  %i.wq = zext nneg i32 %indvars.iv55.i to i64
  %i.wr = add i64 %i.wp, %i.wq
  %i.ws = shl nsw i64 %i.wr, 1                    ; 2 uses
  %scevgep270 = getelementptr i8, ptr %scevgep269, i64 %i.ws
  %scevgep268 = getelementptr i8, ptr %i.vs, i64 %i.wn
  %i.wt = getelementptr i8, ptr %9, i64 %i.wn
  %scevgep266 = getelementptr i8, ptr %i.wt, i64 2
  %scevgep267 = getelementptr i8, ptr %scevgep266, i64 %i.ws
  %scevgep265 = getelementptr nuw i8, ptr %9, i64 %i.wn
  %bound0271 = icmp ult ptr %scevgep265, %scevgep270
  %bound1272 = icmp ult ptr %scevgep268, %scevgep267
  %found.conflict273 = and i1 %bound0271, %bound1272
  br i1 %found.conflict273, label %.lr.ph.i.preheader, label %vector.ph276

vector.ph276:                                     ; preds = %vector.memcheck264
  %n.vec277 = and i64 %16, -8                     ; 3 uses
  %i.wu = add i64 %indvars.iv.i45, %n.vec277
  %broadcast.splatinsert278 = insertelement <8 x i32> poison, i32 %i.wm, i64 0
  %broadcast.splat279 = shufflevector <8 x i32> %broadcast.splatinsert278, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body280

vector.body280:                                   ; preds = %vector.body280, %vector.ph276
  %index281 = phi i64 [ 0, %vector.ph276 ], [ %index.next284, %vector.body280 ] ; 2 uses
  %i.wv = add nuw i64 %indvars.iv.i45, %index281  ; 2 uses
  %i.ww = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.wv ; 2 uses
  %wide.load282 = load <8 x i16>, ptr %i.ww, align 2, !tbaa !12, !alias.scope !78 ; 2 uses
  %i.wx = getelementptr inbounds nuw [2 x i8], ptr %9, i64 %i.wv ; 2 uses
  %wide.load283 = load <8 x i16>, ptr %i.wx, align 2, !tbaa !12, !alias.scope !81, !noalias !78 ; 2 uses
  %i.wy = zext <8 x i16> %wide.load282 to <8 x i32>
  %i.wz = zext <8 x i16> %wide.load283 to <8 x i32>
  %i.xa = add <8 x i16> %wide.load283, %wide.load282 ; 2 uses
  %i.xb = add <8 x i16> %i.xa, splat (i16 -3329)  ; 2 uses
  %i.xc = icmp slt <8 x i16> %i.xb, zeroinitializer
  %i.xd = select <8 x i1> %i.xc, <8 x i16> %i.xa, <8 x i16> zeroinitializer
  %i.xe = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.xb, <8 x i16> zeroinitializer)
  %i.xf = or <8 x i16> %i.xd, %i.xe
  store <8 x i16> %i.xf, ptr %i.wx, align 2, !tbaa !12, !alias.scope !81, !noalias !78
  %i.xg = sub nsw <8 x i32> %i.wz, %i.wy
  %i.xh = add nsw <8 x i32> %i.xg, splat (i32 3329)
  %i.xi = mul <8 x i32> %i.xh, %broadcast.splat279 ; 2 uses
  %i.xj = zext <8 x i32> %i.xi to <8 x i64>
  %i.xk = mul nuw nsw <8 x i64> %i.xj, splat (i64 5039)
  %i.xl = lshr <8 x i64> %i.xk, splat (i64 24)
  %i.xm = trunc nuw nsw <8 x i64> %i.xl to <8 x i32>
  %i.xn = mul <8 x i32> %i.xm, splat (i32 62207)
  %i.xo = add <8 x i32> %i.xn, %i.xi
  %i.xp = trunc <8 x i32> %i.xo to <8 x i16>      ; 2 uses
  %i.xq = add <8 x i16> %i.xp, splat (i16 -3329)  ; 2 uses
  %i.xr = icmp slt <8 x i16> %i.xq, zeroinitializer
  %i.xs = select <8 x i1> %i.xr, <8 x i16> %i.xp, <8 x i16> zeroinitializer
  %i.xt = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.xq, <8 x i16> zeroinitializer)
  %i.xu = or <8 x i16> %i.xs, %i.xt
  store <8 x i16> %i.xu, ptr %i.ww, align 2, !tbaa !12, !alias.scope !78
  %index.next284 = add nuw i64 %index281, 8       ; 2 uses
  %i.xv = icmp eq i64 %index.next284, %n.vec277
  br i1 %i.xv, label %middle.block285, label %vector.body280, !llvm.loop !83

middle.block285:                                  ; preds = %vector.body280
  %cmp.n286 = icmp eq i64 %16, %n.vec277
  br i1 %cmp.n286, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck264, %.lr.ph.preheader.i, %middle.block285
  %indvars.iv52.i.ph = phi i64 [ %indvars.iv.i45, %vector.memcheck264 ], [ %indvars.iv.i45, %.lr.ph.preheader.i ], [ %i.wu, %middle.block285 ]
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block285
  %indvars.iv.next.i49 = add nuw nsw i64 %indvars.iv.i45, %i.vl
  %indvars.iv.next58.i = add nuw nsw i64 %indvars.iv57.i, 1 ; 2 uses
  %indvars.iv.next56.i = add i32 %indvars.iv55.i, %.pre.i
  %exitcond63.not.i = icmp eq i64 %indvars.iv.next58.i, %i.vn
  br i1 %exitcond63.not.i, label %._crit_edge48.i, label %.lr.ph.preheader.i, !llvm.loop !56

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv52.i = phi i64 [ %indvars.iv.next53.i, %.lr.ph.i ], [ %indvars.iv52.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %gep.i = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv52.i ; 2 uses
  %i.xw = load i16, ptr %gep.i, align 2, !tbaa !12 ; 2 uses
  %i.xx = getelementptr inbounds nuw [2 x i8], ptr %9, i64 %indvars.iv52.i ; 2 uses
  %i.xy = load i16, ptr %i.xx, align 2, !tbaa !12 ; 2 uses
  %i.xz = zext i16 %i.xw to i32
  %i.ya = zext i16 %i.xy to i32
  %i.yb = add i16 %i.xy, %i.xw                    ; 2 uses
  %i.yc = add i16 %i.yb, -3329                    ; 2 uses
  %isneg.i.i = icmp slt i16 %i.yc, 0
  %i.yd = select i1 %isneg.i.i, i16 %i.yb, i16 0
  %i.ye = call i16 @llvm.smax.i16(i16 %i.yc, i16 0)
  %i.yf = or i16 %i.yd, %i.ye
  store i16 %i.yf, ptr %i.xx, align 2, !tbaa !12
  %reass.sub92 = sub nsw i32 %i.ya, %i.xz
  %i.yg = add nsw i32 %reass.sub92, 3329
  %i.yh = mul i32 %i.yg, %i.wm                    ; 2 uses
  %i.yi = zext i32 %i.yh to i64
  %i.yj = mul nuw nsw i64 %i.yi, 5039
  %i.yk = lshr i64 %i.yj, 24
  %i.yl = trunc nuw nsw i64 %i.yk to i32
  %.neg.i.i = mul i32 %i.yl, 62207
  %i.ym = add i32 %.neg.i.i, %i.yh
  %i.yn = trunc i32 %i.ym to i16                  ; 2 uses
  %i.yo = add i16 %i.yn, -3329                    ; 2 uses
  %isneg.i.i.i47 = icmp slt i16 %i.yo, 0
  %i.yp = select i1 %isneg.i.i.i47, i16 %i.yn, i16 0
  %i.yq = call i16 @llvm.smax.i16(i16 %i.yo, i16 0)
  %i.yr = or i16 %i.yp, %i.yq
  store i16 %i.yr, ptr %gep.i, align 2, !tbaa !12
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1 ; 2 uses
  %exitcond.not.i48 = icmp eq i64 %indvars.iv.next53.i, %wide.trip.count.i
  br i1 %exitcond.not.i48, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !84

vector.body297:                                   ; preds = %vector.body290, %vector.body297
  %index298 = phi i64 [ %index.next303, %vector.body297 ], [ 0, %vector.body290 ] ; 3 uses
  %i.ys = getelementptr inbounds nuw [2 x i8], ptr %9, i64 %index298 ; 3 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 16 ; 2 uses
  %wide.load299 = load <8 x i16>, ptr %i.ys, align 2, !tbaa !12
  %wide.load300 = load <8 x i16>, ptr %i.yt, align 2, !tbaa !12
  %i.yu = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %index298 ; 2 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 16
  %wide.load301 = load <8 x i16>, ptr %i.yu, align 2, !tbaa !12
  %wide.load302 = load <8 x i16>, ptr %i.yv, align 2, !tbaa !12
  %i.yw = add <8 x i16> %wide.load301, %wide.load299 ; 2 uses
  %i.yx = add <8 x i16> %wide.load302, %wide.load300 ; 2 uses
  %i.yy = add <8 x i16> %i.yw, splat (i16 -3329)  ; 2 uses
  %i.yz = add <8 x i16> %i.yx, splat (i16 -3329)  ; 2 uses
  %i.za = icmp slt <8 x i16> %i.yy, zeroinitializer
  %i.zb = icmp slt <8 x i16> %i.yz, zeroinitializer
  %i.zc = select <8 x i1> %i.za, <8 x i16> %i.yw, <8 x i16> zeroinitializer
  %i.zd = select <8 x i1> %i.zb, <8 x i16> %i.yx, <8 x i16> zeroinitializer
  %i.ze = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.yy, <8 x i16> zeroinitializer)
  %i.zf = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.yz, <8 x i16> zeroinitializer)
  %i.zg = or <8 x i16> %i.zc, %i.ze
  %i.zh = or <8 x i16> %i.zd, %i.zf
  store <8 x i16> %i.zg, ptr %i.ys, align 2, !tbaa !12
  store <8 x i16> %i.zh, ptr %i.yt, align 2, !tbaa !12
  %index.next303 = add nuw i64 %index298, 16      ; 2 uses
  %i.zi = icmp eq i64 %index.next303, 256
  br i1 %i.zi, label %_ZL10scalar_addP6scalarPKS_.exit, label %vector.body297, !llvm.loop !85

_ZL10scalar_addP6scalarPKS_.exit:                 ; preds = %vector.body297
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  br label %vector.body307

vector.body307:                                   ; preds = %vector.body307, %_ZL10scalar_addP6scalarPKS_.exit
  %index308 = phi i64 [ 0, %_ZL10scalar_addP6scalarPKS_.exit ], [ %index.next311, %vector.body307 ] ; 3 uses
  %next.gep = getelementptr i8, ptr %2, i64 %index308
  %wide.load309 = load <8 x i8>, ptr %next.gep, align 1, !tbaa !11 ; 8 uses
  %i.zj = and <8 x i8> %wide.load309, splat (i8 1)
  %i.zk = zext nneg <8 x i8> %i.zj to <8 x i16>
  %.idx358 = shl nuw i64 %index308, 4
  %i.zl = getelementptr inbounds nuw i8, ptr %10, i64 %.idx358
  %i.zm = lshr <8 x i8> %wide.load309, splat (i8 1)
  %i.zn = and <8 x i8> %i.zm, splat (i8 1)
  %i.zo = zext nneg <8 x i8> %i.zn to <8 x i16>
  %i.zp = lshr <8 x i8> %wide.load309, splat (i8 2)
  %i.zq = and <8 x i8> %i.zp, splat (i8 1)
  %i.zr = zext nneg <8 x i8> %i.zq to <8 x i16>
  %i.zs = lshr <8 x i8> %wide.load309, splat (i8 3)
  %i.zt = and <8 x i8> %i.zs, splat (i8 1)
  %i.zu = zext nneg <8 x i8> %i.zt to <8 x i16>
  %i.zv = lshr <8 x i8> %wide.load309, splat (i8 4)
  %i.zw = and <8 x i8> %i.zv, splat (i8 1)
  %i.zx = zext nneg <8 x i8> %i.zw to <8 x i16>
  %i.zy = lshr <8 x i8> %wide.load309, splat (i8 5)
  %i.zz = and <8 x i8> %i.zy, splat (i8 1)
  %i.aaa = zext nneg <8 x i8> %i.zz to <8 x i16>
  %i.aab = lshr <8 x i8> %wide.load309, splat (i8 6)
  %i.aac = and <8 x i8> %i.aab, splat (i8 1)
  %i.aad = zext nneg <8 x i8> %i.aac to <8 x i16>
  %i.aae = lshr <8 x i8> %wide.load309, splat (i8 7)
  %i.aaf = zext nneg <8 x i8> %i.aae to <8 x i16>
  %i.aag = shufflevector <8 x i16> %i.zk, <8 x i16> %i.zo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aah = shufflevector <8 x i16> %i.zr, <8 x i16> %i.zu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aai = shufflevector <8 x i16> %i.zx, <8 x i16> %i.aaa, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aaj = shufflevector <8 x i16> %i.aad, <8 x i16> %i.aaf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aak = shufflevector <16 x i16> %i.aag, <16 x i16> %i.aah, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.aal = shufflevector <16 x i16> %i.aai, <16 x i16> %i.aaj, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec310 = shufflevector <32 x i16> %i.aak, <32 x i16> %i.aal, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x i16> %interleaved.vec310, ptr %i.zl, align 2, !tbaa !12
  %index.next311 = add nuw i64 %index308, 8       ; 2 uses
  %i.aam = icmp eq i64 %index.next311, 32
  br i1 %i.aam, label %vector.body315, label %vector.body307, !llvm.loop !86

vector.body315:                                   ; preds = %vector.body307, %vector.body315
  %index316 = phi i64 [ %index.next318, %vector.body315 ], [ 0, %vector.body307 ] ; 2 uses
  %i.aan = getelementptr inbounds nuw [2 x i8], ptr %10, i64 %index316 ; 2 uses
  %wide.load317 = load <8 x i16>, ptr %i.aan, align 2, !tbaa !12
  %i.aao = zext <8 x i16> %wide.load317 to <8 x i32>
  %i.aap = mul nuw nsw <8 x i32> %i.aao, splat (i32 3329) ; 2 uses
  %i.aaq = and <8 x i32> %i.aap, splat (i32 1)
  %i.aar = lshr <8 x i32> %i.aap, splat (i32 1)
  %i.aas = add nuw nsw <8 x i32> %i.aaq, %i.aar
  %i.aat = trunc <8 x i32> %i.aas to <8 x i16>
  store <8 x i16> %i.aat, ptr %i.aan, align 2, !tbaa !12
  %index.next318 = add nuw i64 %index316, 8       ; 2 uses
  %i.aau = icmp eq i64 %index.next318, 256
  br i1 %i.aau, label %vector.body322, label %vector.body315, !llvm.loop !87

vector.body322:                                   ; preds = %vector.body315, %vector.body322
  %index323 = phi i64 [ %index.next328, %vector.body322 ], [ 0, %vector.body315 ] ; 3 uses
  %i.aav = getelementptr inbounds nuw [2 x i8], ptr %9, i64 %index323 ; 3 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aav, i64 16 ; 2 uses
  %wide.load324 = load <8 x i16>, ptr %i.aav, align 2, !tbaa !12
  %wide.load325 = load <8 x i16>, ptr %i.aaw, align 2, !tbaa !12
  %i.aax = getelementptr inbounds nuw [2 x i8], ptr %10, i64 %index323 ; 2 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aax, i64 16
  %wide.load326 = load <8 x i16>, ptr %i.aax, align 2, !tbaa !12
  %wide.load327 = load <8 x i16>, ptr %i.aay, align 2, !tbaa !12
  %i.aaz = add <8 x i16> %wide.load326, %wide.load324 ; 2 uses
  %i.aba = add <8 x i16> %wide.load327, %wide.load325 ; 2 uses
  %i.abb = add <8 x i16> %i.aaz, splat (i16 -3329) ; 2 uses
  %i.abc = add <8 x i16> %i.aba, splat (i16 -3329) ; 2 uses
  %i.abd = icmp slt <8 x i16> %i.abb, zeroinitializer
  %i.abe = icmp slt <8 x i16> %i.abc, zeroinitializer
  %i.abf = select <8 x i1> %i.abd, <8 x i16> %i.aaz, <8 x i16> zeroinitializer
  %i.abg = select <8 x i1> %i.abe, <8 x i16> %i.aba, <8 x i16> zeroinitializer
  %i.abh = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.abb, <8 x i16> zeroinitializer)
  %i.abi = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.abc, <8 x i16> zeroinitializer)
  %i.abj = or <8 x i16> %i.abf, %i.abh
  %i.abk = or <8 x i16> %i.abg, %i.abi
  store <8 x i16> %i.abj, ptr %i.aav, align 2, !tbaa !12
  store <8 x i16> %i.abk, ptr %i.aaw, align 2, !tbaa !12
  %index.next328 = add nuw i64 %index323, 16      ; 2 uses
  %i.abl = icmp eq i64 %index.next328, 256
  br i1 %i.abl, label %vector.body332, label %vector.body322, !llvm.loop !88

vector.body332:                                   ; preds = %vector.body322, %vector.body332
  %index333 = phi i64 [ %index.next335, %vector.body332 ], [ 0, %vector.body322 ] ; 2 uses
  %i.abm = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %index333 ; 2 uses
  %wide.load334 = load <4 x i16>, ptr %i.abm, align 2, !tbaa !12
  %i.abn = zext <4 x i16> %wide.load334 to <4 x i32>
  %i.abo = shl nuw nsw <4 x i32> %i.abn, splat (i32 10) ; 2 uses
  %i.abp = zext nneg <4 x i32> %i.abo to <4 x i64>
  %i.abq = mul nuw nsw <4 x i64> %i.abp, splat (i64 5039)
  %i.abr = lshr <4 x i64> %i.abq, splat (i64 24)  ; 2 uses
  %i.abs = trunc nuw nsw <4 x i64> %i.abr to <4 x i32>
  %i.abt = mul nsw <4 x i32> %i.abs, splat (i32 -3329)
  %i.abu = add nsw <4 x i32> %i.abt, %i.abo       ; 2 uses
  %i.abv = icmp ugt <4 x i32> %i.abu, splat (i32 1664)
  %i.abw = zext <4 x i1> %i.abv to <4 x i64>
  %i.abx = add nuw nsw <4 x i64> %i.abr, %i.abw
  %i.aby = icmp ugt <4 x i32> %i.abu, splat (i32 4993)
  %i.abz = zext <4 x i1> %i.aby to <4 x i64>
  %i.aca = add nuw nsw <4 x i64> %i.abx, %i.abz
  %i.acb = trunc nuw nsw <4 x i64> %i.aca to <4 x i16>
  %i.acc = and <4 x i16> %i.acb, splat (i16 1023)
  store <4 x i16> %i.acc, ptr %i.abm, align 2, !tbaa !12
  %index.next335 = add nuw i64 %index333, 4       ; 2 uses
  %i.acd = icmp eq i64 %index.next335, 256
  br i1 %i.acd, label %vector.body339, label %vector.body332, !llvm.loop !89

vector.body339:                                   ; preds = %vector.body332, %vector.body339
  %index340 = phi i64 [ %index.next342, %vector.body339 ], [ 0, %vector.body332 ] ; 2 uses
  %i.ace = getelementptr inbounds nuw [2 x i8], ptr %i.mn, i64 %index340 ; 2 uses
  %wide.load341 = load <4 x i16>, ptr %i.ace, align 2, !tbaa !12
  %i.acf = zext <4 x i16> %wide.load341 to <4 x i32>
  %i.acg = shl nuw nsw <4 x i32> %i.acf, splat (i32 10) ; 2 uses
  %i.ach = zext nneg <4 x i32> %i.acg to <4 x i64>
  %i.aci = mul nuw nsw <4 x i64> %i.ach, splat (i64 5039)
  %i.acj = lshr <4 x i64> %i.aci, splat (i64 24)  ; 2 uses
  %i.ack = trunc nuw nsw <4 x i64> %i.acj to <4 x i32>
  %i.acl = mul nsw <4 x i32> %i.ack, splat (i32 -3329)
  %i.acm = add nsw <4 x i32> %i.acl, %i.acg       ; 2 uses
end_hunk_0
begin_hunk_1_@KYBER_decap:vector.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.e = call fastcc noundef i32 @_ZL13vector_decodeP6vectorPKhi(ptr noundef nonnull %3, ptr noundef readonly %1, i32 noundef 10) ; 0 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %index ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.f, align 2, !tbaa !12
  %i.g = zext <8 x i16> %wide.load to <8 x i32>
  %i.h = mul nuw nsw <8 x i32> %i.g, splat (i32 3329) ; 2 uses
  %i.i = lshr <8 x i32> %i.h, splat (i32 10)
  %i.j = lshr <8 x i32> %i.h, splat (i32 9)
  %i.k = and <8 x i32> %i.j, splat (i32 1)
  %i.l = add nuw nsw <8 x i32> %i.k, %i.i
  %i.m = trunc <8 x i32> %i.l to <8 x i16>
  store <8 x i16> %i.m, ptr %i.f, align 2, !tbaa !12
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.n = icmp eq i64 %index.next, 256
  br i1 %i.n, label %_ZL17scalar_decompressP6scalari.exit.i.i, label %vector.body, !llvm.loop !95

_ZL17scalar_decompressP6scalari.exit.i.i:         ; preds = %vector.body
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 512
  br label %vector.body27

vector.body27:                                    ; preds = %vector.body27, %_ZL17scalar_decompressP6scalari.exit.i.i
  %index28 = phi i64 [ 0, %_ZL17scalar_decompressP6scalari.exit.i.i ], [ %index.next30, %vector.body27 ] ; 2 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %index28 ; 2 uses
  %wide.load29 = load <8 x i16>, ptr %i.p, align 2, !tbaa !12
  %i.q = zext <8 x i16> %wide.load29 to <8 x i32>
  %i.r = mul nuw nsw <8 x i32> %i.q, splat (i32 3329) ; 2 uses
  %i.s = lshr <8 x i32> %i.r, splat (i32 10)
  %i.t = lshr <8 x i32> %i.r, splat (i32 9)
  %i.u = and <8 x i32> %i.t, splat (i32 1)
  %i.v = add nuw nsw <8 x i32> %i.u, %i.s
  %i.w = trunc <8 x i32> %i.v to <8 x i16>
  store <8 x i16> %i.w, ptr %i.p, align 2, !tbaa !12
  %index.next30 = add nuw i64 %index28, 8         ; 2 uses
  %i.x = icmp eq i64 %index.next30, 256
  br i1 %i.x, label %_ZL17scalar_decompressP6scalari.exit.1.i.i, label %vector.body27, !llvm.loop !96

_ZL17scalar_decompressP6scalari.exit.1.i.i:       ; preds = %vector.body27
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 1024
  br label %vector.body33

vector.body33:                                    ; preds = %vector.body33, %_ZL17scalar_decompressP6scalari.exit.1.i.i
  %index34 = phi i64 [ 0, %_ZL17scalar_decompressP6scalari.exit.1.i.i ], [ %index.next36, %vector.body33 ] ; 2 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %index34 ; 2 uses
  %wide.load35 = load <8 x i16>, ptr %i.z, align 2, !tbaa !12
  %i.aa = zext <8 x i16> %wide.load35 to <8 x i32>
  %i.ab = mul nuw nsw <8 x i32> %i.aa, splat (i32 3329) ; 2 uses
  %i.ac = lshr <8 x i32> %i.ab, splat (i32 10)
  %i.ad = lshr <8 x i32> %i.ab, splat (i32 9)
  %i.ae = and <8 x i32> %i.ad, splat (i32 1)
  %i.af = add nuw nsw <8 x i32> %i.ae, %i.ac
  %i.ag = trunc <8 x i32> %i.af to <8 x i16>
  store <8 x i16> %i.ag, ptr %i.z, align 2, !tbaa !12
  %index.next36 = add nuw i64 %index34, 8         ; 2 uses
  %i.ah = icmp eq i64 %index.next36, 256
  br i1 %i.ah, label %_ZL17vector_decompressP6vectori.exit.i, label %vector.body33, !llvm.loop !97

_ZL17vector_decompressP6vectori.exit.i:           ; preds = %vector.body33
  call fastcc void @_ZL10vector_nttP6vector(ptr noundef nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 960
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.e, %_ZL17vector_decompressP6vectori.exit.i
  %indvars.iv.i.i = phi i64 [ 0, %_ZL17vector_decompressP6vectori.exit.i ], [ %indvars.iv.next.i.i, %bb.e ] ; 2 uses
  %.03354.i.i = phi i32 [ 0, %_ZL17vector_decompressP6vectori.exit.i ], [ %i.ax, %bb.e ]
  %.03553.i.i = phi i8 [ 0, %_ZL17vector_decompressP6vectori.exit.i ], [ %i.az, %bb.e ]
  %.04152.i.i = phi ptr [ %i.ai, %_ZL17vector_decompressP6vectori.exit.i ], [ %.243.i.i, %bb.e ]
  br label %bb.a

bb.a:                                             ; preds = %bb.c, %.preheader.i.i
  %.02951.i.i = phi i32 [ 0, %.preheader.i.i ], [ %i.ba, %bb.c ] ; 3 uses
  %.03050.i.i = phi i16 [ 0, %.preheader.i.i ], [ %i.aw, %bb.c ]
  %.13449.i.i = phi i32 [ %.03354.i.i, %.preheader.i.i ], [ %i.ax, %bb.c ] ; 2 uses
  %.13648.i.i = phi i8 [ %.03553.i.i, %.preheader.i.i ], [ %i.az, %bb.c ]
  %.14247.i.i = phi ptr [ %.04152.i.i, %.preheader.i.i ], [ %.243.i.i, %bb.c ] ; 3 uses
  %i.aj = icmp eq i32 %.13449.i.i, 0
  br i1 %i.aj, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ak = load i8, ptr %.14247.i.i, align 1, !tbaa !11
  %i.al = getelementptr inbounds nuw i8, ptr %.14247.i.i, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.243.i.i = phi ptr [ %i.al, %bb.b ], [ %.14247.i.i, %bb.a ] ; 2 uses
  %.237.i.i = phi i8 [ %i.ak, %bb.b ], [ %.13648.i.i, %bb.a ] ; 2 uses
  %.2.i.i = phi i32 [ 8, %bb.b ], [ %.13449.i.i, %bb.a ] ; 2 uses
  %i.am = sub nsw i32 4, %.02951.i.i
  %spec.select.i.i = tail call i32 @llvm.smin.i32(i32 %i.am, i32 %.2.i.i) ; 4 uses
  %i.an = zext i8 %.237.i.i to i32
  %i.ao = sext i32 %spec.select.i.i to i64
  %i.ap = getelementptr i8, ptr @_ZL6kMasks, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 -1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !11
  %i.as = and i8 %i.ar, %.237.i.i
  %i.at = zext i8 %i.as to i32
  %i.au = shl nuw nsw i32 %i.at, %.02951.i.i
  %i.av = trunc i32 %i.au to i16
  %i.aw = or i16 %.03050.i.i, %i.av               ; 3 uses
  %i.ax = sub nsw i32 %.2.i.i, %spec.select.i.i   ; 2 uses
  %i.ay = lshr i32 %i.an, %spec.select.i.i
  %i.az = trunc nuw nsw i32 %i.ay to i8           ; 2 uses
  %i.ba = add nsw i32 %spec.select.i.i, %.02951.i.i ; 2 uses
  %i.bb = icmp slt i32 %i.ba, 4
  br i1 %i.bb, label %bb.a, label %bb.d, !llvm.loop !98

bb.d:                                             ; preds = %bb.c
  %i.bc = icmp ugt i16 %i.aw, 3328
  %i.bd = zext i1 %i.bc to i32
  %i.be = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 2) %i.bd) #11, !srcloc !99
  %.not.i.i = icmp eq i32 %i.be, 0
  br i1 %.not.i.i, label %bb.e, label %vector.body39.preheader

bb.e:                                             ; preds = %bb.d
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.i.i
  store i16 %i.aw, ptr %i.bf, align 2, !tbaa !12
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.i.i = icmp eq i64 %indvars.iv.next.i.i, 256
  br i1 %exitcond.i.i, label %vector.body39.preheader, label %.preheader.i.i, !llvm.loop !100

vector.body39.preheader:                          ; preds = %bb.d, %bb.e
  br label %vector.body39

vector.body39:                                    ; preds = %vector.body39.preheader, %vector.body39
  %index40 = phi i64 [ %index.next42, %vector.body39 ], [ 0, %vector.body39.preheader ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %index40 ; 2 uses
  %wide.load41 = load <8 x i16>, ptr %i.bg, align 2, !tbaa !12
  %i.bh = zext <8 x i16> %wide.load41 to <8 x i32>
  %i.bi = mul nuw nsw <8 x i32> %i.bh, splat (i32 3329) ; 2 uses
  %i.bj = lshr <8 x i32> %i.bi, splat (i32 4)
  %i.bk = lshr <8 x i32> %i.bi, splat (i32 3)
  %i.bl = and <8 x i32> %i.bk, splat (i32 1)
  %i.bm = add nuw nsw <8 x i32> %i.bl, %i.bj
  %i.bn = trunc <8 x i32> %i.bm to <8 x i16>
  store <8 x i16> %i.bn, ptr %i.bg, align 2, !tbaa !12
  %index.next42 = add nuw i64 %index40, 8         ; 2 uses
  %i.bo = icmp eq i64 %index.next42, 256
  br i1 %i.bo, label %_ZL17scalar_decompressP6scalari.exit.i, label %vector.body39, !llvm.loop !101

_ZL17scalar_decompressP6scalari.exit.i:           ; preds = %vector.body39
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 6208
  call fastcc void @_ZL20scalar_inner_productP6scalarPK6vectorS3_(ptr noundef %5, ptr noundef nonnull readonly %i.bp, ptr noundef %3)
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge48.i.i, %_ZL17scalar_decompressP6scalari.exit.i
  %.03550.i.i = phi i32 [ 128, %_ZL17scalar_decompressP6scalari.exit.i ], [ %i.bq, %._crit_edge48.i.i ]
  %.03649.i.i = phi i32 [ 2, %_ZL17scalar_decompressP6scalari.exit.i ], [ %.pre.i.i, %._crit_edge48.i.i ] ; 3 uses
  %i.bq = lshr i32 %.03550.i.i, 1                 ; 3 uses
  %.not.i6.i = icmp eq i32 %i.bq, 0
  %.pre.i.i = shl i32 %.03649.i.i, 1              ; 4 uses
  br i1 %.not.i6.i, label %._crit_edge48.i.i, label %.lr.ph47.i.i

.lr.ph47.i.i:                                     ; preds = %bb.f
  %i.br = zext i32 %.pre.i.i to i64               ; 4 uses
  %i.bs = sext i32 %.03649.i.i to i64             ; 2 uses
  %i.bt = zext nneg i32 %i.bq to i64              ; 2 uses
  %invariant.gep68.i.i = getelementptr inbounds nuw [2 x i8], ptr @_ZL16kInverseNTTRoots, i64 %i.bt
  %invariant.gep.i.i = getelementptr [2 x i8], ptr %5, i64 %i.bs ; 2 uses
  %i.bu = shl nuw nsw i64 %i.br, 1
  %i.bv = shl nuw nsw i64 %i.bs, 1                ; 2 uses
  %i.bw = getelementptr i8, ptr %5, i64 %i.bv
  %i.bx = getelementptr i8, ptr %i.bw, i64 2
  %i.by = getelementptr i8, ptr %5, i64 %i.bv
  br label %.lr.ph.preheader.i.i

._crit_edge48.i.i:                                ; preds = %._crit_edge.i.i, %bb.f
  %i.bz = icmp slt i32 %.pre.i.i, 256
  br i1 %i.bz, label %bb.f, label %vector.body58, !llvm.loop !53

vector.body58:                                    ; preds = %._crit_edge48.i.i, %vector.body58
  %index59 = phi i64 [ %index.next61, %vector.body58 ], [ 0, %._crit_edge48.i.i ] ; 2 uses
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %index59 ; 2 uses
  %wide.load60 = load <8 x i16>, ptr %i.ca, align 2, !tbaa !12
  %i.cb = zext <8 x i16> %wide.load60 to <8 x i32>
  %i.cc = mul nuw nsw <8 x i32> %i.cb, splat (i32 3303) ; 2 uses
  %i.cd = zext nneg <8 x i32> %i.cc to <8 x i64>
  %i.ce = mul nuw nsw <8 x i64> %i.cd, splat (i64 5039)
  %i.cf = lshr <8 x i64> %i.ce, splat (i64 24)
  %i.cg = trunc nuw nsw <8 x i64> %i.cf to <8 x i32>
  %i.ch = mul nuw <8 x i32> %i.cg, splat (i32 62207)
  %i.ci = add nuw <8 x i32> %i.ch, %i.cc
  %i.cj = trunc <8 x i32> %i.ci to <8 x i16>      ; 2 uses
  %i.ck = add <8 x i16> %i.cj, splat (i16 -3329)  ; 2 uses
  %i.cl = icmp slt <8 x i16> %i.ck, zeroinitializer
  %i.cm = select <8 x i1> %i.cl, <8 x i16> %i.cj, <8 x i16> zeroinitializer
  %i.cn = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ck, <8 x i16> zeroinitializer)
  %i.co = or <8 x i16> %i.cm, %i.cn
  store <8 x i16> %i.co, ptr %i.ca, align 2, !tbaa !12
  %index.next61 = add nuw i64 %index59, 8         ; 2 uses
  %i.cp = icmp eq i64 %index.next61, 256
  br i1 %i.cp, label %vector.body65, label %vector.body58, !llvm.loop !102

.lr.ph.preheader.i.i:                             ; preds = %._crit_edge.i.i, %.lr.ph47.i.i
  %indvars.iv57.i.i = phi i64 [ 0, %.lr.ph47.i.i ], [ %indvars.iv.next58.i.i, %._crit_edge.i.i ] ; 5 uses
  %indvars.iv55.i.i = phi i32 [ %.03649.i.i, %.lr.ph47.i.i ], [ %indvars.iv.next56.i.i, %._crit_edge.i.i ] ; 4 uses
  %indvars.iv.i7.i = phi i64 [ 0, %.lr.ph47.i.i ], [ %indvars.iv.next.i9.i, %._crit_edge.i.i ] ; 5 uses
  %i.cq = mul i64 %indvars.iv57.i.i, %i.br
  %6 = zext nneg i32 %indvars.iv55.i.i to i64
  %7 = sub i64 %6, %i.cq                          ; 3 uses
  %gep69.i.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep68.i.i, i64 %indvars.iv57.i.i
  %i.cr = load i16, ptr %gep69.i.i, align 2, !tbaa !12
  %i.cs = zext i16 %i.cr to i32                   ; 2 uses
  %wide.trip.count.i.i = zext i32 %indvars.iv55.i.i to i64
  %min.iters.check = icmp ult i64 %7, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i.i
  %i.ct = mul i64 %i.bu, %indvars.iv57.i.i        ; 4 uses
  %scevgep47 = getelementptr i8, ptr %i.bx, i64 %i.ct
  %i.cu = mul i64 %indvars.iv57.i.i, %i.br
  %i.cv = xor i64 %i.cu, -1
  %i.cw = zext nneg i32 %indvars.iv55.i.i to i64
  %i.cx = add i64 %i.cv, %i.cw
  %i.cy = shl nsw i64 %i.cx, 1                    ; 2 uses
  %scevgep48 = getelementptr i8, ptr %scevgep47, i64 %i.cy
  %scevgep46 = getelementptr i8, ptr %i.by, i64 %i.ct
  %i.cz = getelementptr i8, ptr %5, i64 %i.ct
  %scevgep44 = getelementptr i8, ptr %i.cz, i64 2
  %scevgep45 = getelementptr i8, ptr %scevgep44, i64 %i.cy
  %scevgep = getelementptr nuw i8, ptr %5, i64 %i.ct
  %bound0 = icmp ult ptr %scevgep, %scevgep48
  %bound1 = icmp ult ptr %scevgep46, %scevgep45
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader, label %vector.ph49

vector.ph49:                                      ; preds = %vector.memcheck
  %n.vec = and i64 %7, -8                         ; 3 uses
  %i.da = add i64 %indvars.iv.i7.i, %n.vec
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.cs, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body50

vector.body50:                                    ; preds = %vector.body50, %vector.ph49
  %index51 = phi i64 [ 0, %vector.ph49 ], [ %index.next54, %vector.body50 ] ; 2 uses
  %i.db = add nuw i64 %indvars.iv.i7.i, %index51  ; 2 uses
  %i.dc = getelementptr [2 x i8], ptr %invariant.gep.i.i, i64 %i.db ; 2 uses
  %wide.load52 = load <8 x i16>, ptr %i.dc, align 2, !tbaa !12, !alias.scope !103 ; 2 uses
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.db ; 2 uses
  %wide.load53 = load <8 x i16>, ptr %i.dd, align 2, !tbaa !12, !alias.scope !106, !noalias !103 ; 2 uses
  %i.de = zext <8 x i16> %wide.load52 to <8 x i32>
  %i.df = zext <8 x i16> %wide.load53 to <8 x i32>
  %i.dg = add <8 x i16> %wide.load53, %wide.load52 ; 2 uses
  %i.dh = add <8 x i16> %i.dg, splat (i16 -3329)  ; 2 uses
  %i.di = icmp slt <8 x i16> %i.dh, zeroinitializer
  %i.dj = select <8 x i1> %i.di, <8 x i16> %i.dg, <8 x i16> zeroinitializer
  %i.dk = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.dh, <8 x i16> zeroinitializer)
  %i.dl = or <8 x i16> %i.dj, %i.dk
  store <8 x i16> %i.dl, ptr %i.dd, align 2, !tbaa !12, !alias.scope !106, !noalias !103
  %i.dm = sub nsw <8 x i32> %i.df, %i.de
  %i.dn = add nsw <8 x i32> %i.dm, splat (i32 3329)
  %i.do = mul <8 x i32> %i.dn, %broadcast.splat   ; 2 uses
  %i.dp = zext <8 x i32> %i.do to <8 x i64>
  %i.dq = mul nuw nsw <8 x i64> %i.dp, splat (i64 5039)
  %i.dr = lshr <8 x i64> %i.dq, splat (i64 24)
  %i.ds = trunc nuw nsw <8 x i64> %i.dr to <8 x i32>
  %i.dt = mul <8 x i32> %i.ds, splat (i32 62207)
  %i.du = add <8 x i32> %i.dt, %i.do
  %i.dv = trunc <8 x i32> %i.du to <8 x i16>      ; 2 uses
  %i.dw = add <8 x i16> %i.dv, splat (i16 -3329)  ; 2 uses
  %i.dx = icmp slt <8 x i16> %i.dw, zeroinitializer
  %i.dy = select <8 x i1> %i.dx, <8 x i16> %i.dv, <8 x i16> zeroinitializer
  %i.dz = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.dw, <8 x i16> zeroinitializer)
  %i.ea = or <8 x i16> %i.dy, %i.dz
  store <8 x i16> %i.ea, ptr %i.dc, align 2, !tbaa !12, !alias.scope !103
  %index.next54 = add nuw i64 %index51, 8         ; 2 uses
  %i.eb = icmp eq i64 %index.next54, %n.vec
  br i1 %i.eb, label %middle.block55, label %vector.body50, !llvm.loop !108

middle.block55:                                   ; preds = %vector.body50
  %cmp.n = icmp eq i64 %7, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph.preheader.i.i, %middle.block55
  %indvars.iv52.i.i.ph = phi i64 [ %indvars.iv.i7.i, %vector.memcheck ], [ %indvars.iv.i7.i, %.lr.ph.preheader.i.i ], [ %i.da, %middle.block55 ]
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %middle.block55
  %indvars.iv.next.i9.i = add nuw nsw i64 %indvars.iv.i7.i, %i.br
  %indvars.iv.next58.i.i = add nuw nsw i64 %indvars.iv57.i.i, 1 ; 2 uses
  %indvars.iv.next56.i.i = add i32 %indvars.iv55.i.i, %.pre.i.i
  %exitcond63.not.i.i = icmp eq i64 %indvars.iv.next58.i.i, %i.bt
  br i1 %exitcond63.not.i.i, label %._crit_edge48.i.i, label %.lr.ph.preheader.i.i, !llvm.loop !56

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv52.i.i = phi i64 [ %indvars.iv.next53.i.i, %.lr.ph.i.i ], [ %indvars.iv52.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %gep.i.i = getelementptr [2 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv52.i.i ; 2 uses
  %i.ec = load i16, ptr %gep.i.i, align 2, !tbaa !12 ; 2 uses
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %indvars.iv52.i.i ; 2 uses
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !12 ; 2 uses
  %i.ef = zext i16 %i.ec to i32
  %i.eg = zext i16 %i.ee to i32
  %i.eh = add i16 %i.ee, %i.ec                    ; 2 uses
  %i.ei = add i16 %i.eh, -3329                    ; 2 uses
  %isneg.i.i.i = icmp slt i16 %i.ei, 0
  %i.ej = select i1 %isneg.i.i.i, i16 %i.eh, i16 0
  %i.ek = tail call i16 @llvm.smax.i16(i16 %i.ei, i16 0)
  %i.el = or i16 %i.ej, %i.ek
  store i16 %i.el, ptr %i.ed, align 2, !tbaa !12
  %reass.sub = sub nsw i32 %i.eg, %i.ef
  %i.em = add nsw i32 %reass.sub, 3329
  %i.en = mul i32 %i.em, %i.cs                    ; 2 uses
  %i.eo = zext i32 %i.en to i64
  %i.ep = mul nuw nsw i64 %i.eo, 5039
  %i.eq = lshr i64 %i.ep, 24
  %i.er = trunc nuw nsw i64 %i.eq to i32
  %.neg.i.i.i = mul i32 %i.er, 62207
  %i.es = add i32 %.neg.i.i.i, %i.en
  %i.et = trunc i32 %i.es to i16                  ; 2 uses
  %i.eu = add i16 %i.et, -3329                    ; 2 uses
  %isneg.i.i.i.i = icmp slt i16 %i.eu, 0
  %i.ev = select i1 %isneg.i.i.i.i, i16 %i.et, i16 0
  %i.ew = tail call i16 @llvm.smax.i16(i16 %i.eu, i16 0)
  %i.ex = or i16 %i.ev, %i.ew
  store i16 %i.ex, ptr %gep.i.i, align 2, !tbaa !12
  %indvars.iv.next53.i.i = add nuw nsw i64 %indvars.iv52.i.i, 1 ; 2 uses
  %exitcond.not.i8.i = icmp eq i64 %indvars.iv.next53.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i8.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !109

vector.body65:                                    ; preds = %vector.body58, %vector.body65
  %index66 = phi i64 [ %index.next71, %vector.body65 ], [ 0, %vector.body58 ] ; 3 uses
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %index66 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16 ; 2 uses
  %wide.load67 = load <8 x i16>, ptr %i.ey, align 2, !tbaa !12
  %wide.load68 = load <8 x i16>, ptr %i.ez, align 2, !tbaa !12
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %index66 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %wide.load69 = load <8 x i16>, ptr %i.fa, align 2, !tbaa !12
  %wide.load70 = load <8 x i16>, ptr %i.fb, align 2, !tbaa !12
  %i.fc = sub <8 x i16> %wide.load67, %wide.load69 ; 3 uses
  %i.fd = sub <8 x i16> %wide.load68, %wide.load70 ; 3 uses
  %i.fe = add <8 x i16> %i.fc, splat (i16 3329)
  %i.ff = add <8 x i16> %i.fd, splat (i16 3329)
  %i.fg = icmp slt <8 x i16> %i.fc, zeroinitializer
  %i.fh = icmp slt <8 x i16> %i.fd, zeroinitializer
  %i.fi = select <8 x i1> %i.fg, <8 x i16> %i.fe, <8 x i16> zeroinitializer
  %i.fj = select <8 x i1> %i.fh, <8 x i16> %i.ff, <8 x i16> zeroinitializer
  %i.fk = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.fc, <8 x i16> zeroinitializer)
  %i.fl = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.fd, <8 x i16> zeroinitializer)
  %i.fm = or <8 x i16> %i.fi, %i.fk
  %i.fn = or <8 x i16> %i.fj, %i.fl
  store <8 x i16> %i.fm, ptr %i.ey, align 2, !tbaa !12
  store <8 x i16> %i.fn, ptr %i.ez, align 2, !tbaa !12
  %index.next71 = add nuw i64 %index66, 16        ; 2 uses
  %i.fo = icmp eq i64 %index.next71, 256
  br i1 %i.fo, label %vector.body75, label %vector.body65, !llvm.loop !110

vector.body75:                                    ; preds = %vector.body65, %vector.body75
  %index76 = phi i64 [ %index.next78, %vector.body75 ], [ 0, %vector.body65 ] ; 2 uses
  %i.fp = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %index76 ; 2 uses
  %wide.load77 = load <8 x i16>, ptr %i.fp, align 2, !tbaa !12
  %i.fq = zext <8 x i16> %wide.load77 to <8 x i32> ; 2 uses
  %i.fr = shl nuw nsw <8 x i32> %i.fq, splat (i32 1)
  %i.fs = mul nuw nsw <8 x i32> %i.fq, splat (i32 10078)
  %i.ft = lshr <8 x i32> %i.fs, splat (i32 24)    ; 2 uses
  %i.fu = mul nsw <8 x i32> %i.ft, splat (i32 -3329)
  %i.fv = add nsw <8 x i32> %i.fu, %i.fr          ; 2 uses
  %i.fw = icmp ugt <8 x i32> %i.fv, splat (i32 1664)
  %i.fx = icmp ugt <8 x i32> %i.fv, splat (i32 4993)
  %i.fy = trunc <8 x i32> %i.ft to <8 x i1>
  %i.fz = xor <8 x i1> %i.fw, %i.fy
  %i.ga = xor <8 x i1> %i.fx, %i.fz
  %i.gb = zext <8 x i1> %i.ga to <8 x i16>
  store <8 x i16> %i.gb, ptr %i.fp, align 2, !tbaa !12
  %index.next78 = add nuw i64 %index76, 8         ; 2 uses
  %i.gc = icmp eq i64 %index.next78, 256
  br i1 %i.gc, label %vector.body82, label %vector.body75, !llvm.loop !111

vector.body82:                                    ; preds = %vector.body75, %vector.body82
  %index83 = phi i64 [ %index.next84, %vector.body82 ], [ 0, %vector.body75 ] ; 3 uses
  %i.gd = shl nuw i64 %index83, 3                 ; 8 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.a, i64 %index83
  %i.gf = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.gd ; 8 uses
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.gd ; 8 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %i.gi = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.gd ; 8 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 32
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.gd ; 8 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 48
  %i.gm = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.gd ; 8 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 64
  %i.go = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.gd ; 8 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 80
  %i.gq = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.gd ; 8 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 96
  %i.gs = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.gd ; 8 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 112
  %i.gu = load i16, ptr %i.gf, align 2, !tbaa !12
  %i.gv = load i16, ptr %i.gh, align 2, !tbaa !12
  %i.gw = load i16, ptr %i.gj, align 2, !tbaa !12
  %i.gx = load i16, ptr %i.gl, align 2, !tbaa !12
  %i.gy = load i16, ptr %i.gn, align 2, !tbaa !12
  %i.gz = load i16, ptr %i.gp, align 2, !tbaa !12
  %i.ha = load i16, ptr %i.gr, align 2, !tbaa !12
  %i.hb = load i16, ptr %i.gt, align 2, !tbaa !12
  %i.hc = insertelement <8 x i16> poison, i16 %i.gu, i64 0
  %i.hd = insertelement <8 x i16> %i.hc, i16 %i.gv, i64 1
  %i.he = insertelement <8 x i16> %i.hd, i16 %i.gw, i64 2
  %i.hf = insertelement <8 x i16> %i.he, i16 %i.gx, i64 3
  %i.hg = insertelement <8 x i16> %i.hf, i16 %i.gy, i64 4
  %i.hh = insertelement <8 x i16> %i.hg, i16 %i.gz, i64 5
  %i.hi = insertelement <8 x i16> %i.hh, i16 %i.ha, i64 6
  %i.hj = insertelement <8 x i16> %i.hi, i16 %i.hb, i64 7
  %i.hk = trunc <8 x i16> %i.hj to <8 x i8>
  %i.hl = and <8 x i8> %i.hk, splat (i8 1)
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gf, i64 2
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gg, i64 18
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gi, i64 34
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gk, i64 50
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gm, i64 66
  %i.hr = getelementptr inbounds nuw i8, ptr %i.go, i64 82
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gq, i64 98
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gs, i64 114
  %i.hu = load i16, ptr %i.hm, align 2, !tbaa !12
  %i.hv = load i16, ptr %i.hn, align 2, !tbaa !12
  %i.hw = load i16, ptr %i.ho, align 2, !tbaa !12
  %i.hx = load i16, ptr %i.hp, align 2, !tbaa !12
  %i.hy = load i16, ptr %i.hq, align 2, !tbaa !12
  %i.hz = load i16, ptr %i.hr, align 2, !tbaa !12
  %i.ia = load i16, ptr %i.hs, align 2, !tbaa !12
  %i.ib = load i16, ptr %i.ht, align 2, !tbaa !12
  %i.ic = insertelement <8 x i16> poison, i16 %i.hu, i64 0
  %i.id = insertelement <8 x i16> %i.ic, i16 %i.hv, i64 1
  %i.ie = insertelement <8 x i16> %i.id, i16 %i.hw, i64 2
  %i.if = insertelement <8 x i16> %i.ie, i16 %i.hx, i64 3
  %i.ig = insertelement <8 x i16> %i.if, i16 %i.hy, i64 4
  %i.ih = insertelement <8 x i16> %i.ig, i16 %i.hz, i64 5
  %i.ii = insertelement <8 x i16> %i.ih, i16 %i.ia, i64 6
  %i.ij = insertelement <8 x i16> %i.ii, i16 %i.ib, i64 7
  %i.ik = trunc <8 x i16> %i.ij to <8 x i8>
  %i.il = shl <8 x i8> %i.ik, splat (i8 1)
  %i.im = and <8 x i8> %i.il, splat (i8 2)
  %i.in = or disjoint <8 x i8> %i.im, %i.hl
  %i.io = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  %i.ip = getelementptr inbounds nuw i8, ptr %i.gg, i64 20
  %i.iq = getelementptr inbounds nuw i8, ptr %i.gi, i64 36
  %i.ir = getelementptr inbounds nuw i8, ptr %i.gk, i64 52
  %i.is = getelementptr inbounds nuw i8, ptr %i.gm, i64 68
  %i.it = getelementptr inbounds nuw i8, ptr %i.go, i64 84
  %i.iu = getelementptr inbounds nuw i8, ptr %i.gq, i64 100
  %i.iv = getelementptr inbounds nuw i8, ptr %i.gs, i64 116
  %i.iw = load i16, ptr %i.io, align 2, !tbaa !12
  %i.ix = load i16, ptr %i.ip, align 2, !tbaa !12
  %i.iy = load i16, ptr %i.iq, align 2, !tbaa !12
  %i.iz = load i16, ptr %i.ir, align 2, !tbaa !12
  %i.ja = load i16, ptr %i.is, align 2, !tbaa !12
  %i.jb = load i16, ptr %i.it, align 2, !tbaa !12
  %i.jc = load i16, ptr %i.iu, align 2, !tbaa !12
  %i.jd = load i16, ptr %i.iv, align 2, !tbaa !12
  %i.je = insertelement <8 x i16> poison, i16 %i.iw, i64 0
  %i.jf = insertelement <8 x i16> %i.je, i16 %i.ix, i64 1
  %i.jg = insertelement <8 x i16> %i.jf, i16 %i.iy, i64 2
  %i.jh = insertelement <8 x i16> %i.jg, i16 %i.iz, i64 3
  %i.ji = insertelement <8 x i16> %i.jh, i16 %i.ja, i64 4
  %i.jj = insertelement <8 x i16> %i.ji, i16 %i.jb, i64 5
  %i.jk = insertelement <8 x i16> %i.jj, i16 %i.jc, i64 6
  %i.jl = insertelement <8 x i16> %i.jk, i16 %i.jd, i64 7
  %i.jm = trunc <8 x i16> %i.jl to <8 x i8>
  %i.jn = shl <8 x i8> %i.jm, splat (i8 2)
  %i.jo = and <8 x i8> %i.jn, splat (i8 4)
  %i.jp = or disjoint <8 x i8> %i.in, %i.jo
  %i.jq = getelementptr inbounds nuw i8, ptr %i.gf, i64 6
  %i.jr = getelementptr inbounds nuw i8, ptr %i.gg, i64 22
  %i.js = getelementptr inbounds nuw i8, ptr %i.gi, i64 38
  %i.jt = getelementptr inbounds nuw i8, ptr %i.gk, i64 54
  %i.ju = getelementptr inbounds nuw i8, ptr %i.gm, i64 70
  %i.jv = getelementptr inbounds nuw i8, ptr %i.go, i64 86
  %i.jw = getelementptr inbounds nuw i8, ptr %i.gq, i64 102
  %i.jx = getelementptr inbounds nuw i8, ptr %i.gs, i64 118
  %i.jy = load i16, ptr %i.jq, align 2, !tbaa !12
  %i.jz = load i16, ptr %i.jr, align 2, !tbaa !12
end_hunk_1

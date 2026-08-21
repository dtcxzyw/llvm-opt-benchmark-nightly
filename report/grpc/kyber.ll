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
  %11 = mul i64 %indvars.iv57.i.1.i, %i.mp
  %12 = zext nneg i32 %indvars.iv55.i.1.i to i64
  %13 = sub i64 %12, %11                          ; 3 uses
  %gep69.i.1.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep68.i.1.i, i64 %indvars.iv57.i.1.i
  %14 = load i16, ptr %gep69.i.1.i, align 2, !tbaa !12
  %15 = zext i16 %14 to i32                       ; 2 uses
  %wide.trip.count.i.1.i = zext i32 %indvars.iv55.i.1.i to i64
  %min.iters.check183 = icmp ult i64 %13, 8
  br i1 %min.iters.check183, label %.lr.ph.i.1.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i.1.i
  %i.my = mul i64 %i.ms, %indvars.iv57.i.1.i      ; 4 uses
  %scevgep180 = getelementptr i8, ptr %i.mv, i64 %i.my
  %i.mz = mul i64 %indvars.iv57.i.1.i, %i.mp
  %i.na = xor i64 %i.mz, -1
  %i.nb = zext nneg i32 %indvars.iv55.i.1.i to i64
  %i.nc = add i64 %i.na, %i.nb
  %i.nd = shl nsw i64 %i.nc, 1                    ; 2 uses
  %scevgep181 = getelementptr i8, ptr %scevgep180, i64 %i.nd
  %scevgep179 = getelementptr i8, ptr %i.mx, i64 %i.my
  %i.ne = getelementptr i8, ptr %8, i64 %i.my
  %scevgep177 = getelementptr i8, ptr %i.ne, i64 514
  %scevgep178 = getelementptr i8, ptr %scevgep177, i64 %i.nd
  %i.nf = getelementptr i8, ptr %8, i64 %i.my
  %scevgep = getelementptr i8, ptr %i.nf, i64 512
  %bound0 = icmp ult ptr %scevgep, %scevgep181
  %bound1 = icmp ult ptr %scevgep179, %scevgep178
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.1.i.preheader, label %vector.ph184

vector.ph184:                                     ; preds = %vector.memcheck
  %n.vec185 = and i64 %13, -8                     ; 3 uses
  %i.ng = add i64 %indvars.iv.i.1.i18, %n.vec185
  %broadcast.splatinsert186 = insertelement <8 x i32> poison, i32 %15, i64 0
  %broadcast.splat187 = shufflevector <8 x i32> %broadcast.splatinsert186, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body188

vector.body188:                                   ; preds = %vector.body188, %vector.ph184
  %index189 = phi i64 [ 0, %vector.ph184 ], [ %index.next192, %vector.body188 ] ; 2 uses
  %i.nh = add nuw i64 %indvars.iv.i.1.i18, %index189 ; 2 uses
  %i.ni = getelementptr [2 x i8], ptr %invariant.gep.i.1.i, i64 %i.nh ; 2 uses
  %wide.load190 = load <8 x i16>, ptr %i.ni, align 2, !tbaa !12, !alias.scope !58 ; 2 uses
  %i.nj = getelementptr inbounds nuw [2 x i8], ptr %i.mn, i64 %i.nh ; 2 uses
  %wide.load191 = load <8 x i16>, ptr %i.nj, align 2, !tbaa !12, !alias.scope !61, !noalias !58 ; 2 uses
  %i.nk = zext <8 x i16> %wide.load190 to <8 x i32>
  %i.nl = zext <8 x i16> %wide.load191 to <8 x i32>
  %i.nm = add <8 x i16> %wide.load191, %wide.load190 ; 2 uses
  %i.nn = add <8 x i16> %i.nm, splat (i16 -3329)  ; 2 uses
  %i.no = icmp slt <8 x i16> %i.nn, zeroinitializer
  %i.np = select <8 x i1> %i.no, <8 x i16> %i.nm, <8 x i16> zeroinitializer
  %i.nq = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.nn, <8 x i16> zeroinitializer)
  %i.nr = or <8 x i16> %i.np, %i.nq
  store <8 x i16> %i.nr, ptr %i.nj, align 2, !tbaa !12, !alias.scope !61, !noalias !58
  %i.ns = sub nsw <8 x i32> %i.nl, %i.nk
  %i.nt = add nsw <8 x i32> %i.ns, splat (i32 3329)
  %i.nu = mul <8 x i32> %i.nt, %broadcast.splat187 ; 2 uses
  %i.nv = zext <8 x i32> %i.nu to <8 x i64>
  %i.nw = mul nuw nsw <8 x i64> %i.nv, splat (i64 5039)
  %i.nx = lshr <8 x i64> %i.nw, splat (i64 24)
  %i.ny = trunc nuw nsw <8 x i64> %i.nx to <8 x i32>
  %i.nz = mul <8 x i32> %i.ny, splat (i32 62207)
  %i.oa = add <8 x i32> %i.nz, %i.nu
  %i.ob = trunc <8 x i32> %i.oa to <8 x i16>      ; 2 uses
  %i.oc = add <8 x i16> %i.ob, splat (i16 -3329)  ; 2 uses
  %i.od = icmp slt <8 x i16> %i.oc, zeroinitializer
  %i.oe = select <8 x i1> %i.od, <8 x i16> %i.ob, <8 x i16> zeroinitializer
  %i.of = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.oc, <8 x i16> zeroinitializer)
  %i.og = or <8 x i16> %i.oe, %i.of
  store <8 x i16> %i.og, ptr %i.ni, align 2, !tbaa !12, !alias.scope !58
  %index.next192 = add nuw i64 %index189, 8       ; 2 uses
  %i.oh = icmp eq i64 %index.next192, %n.vec185
  br i1 %i.oh, label %middle.block193, label %vector.body188, !llvm.loop !63

middle.block193:                                  ; preds = %vector.body188
  %cmp.n194 = icmp eq i64 %13, %n.vec185
  br i1 %cmp.n194, label %._crit_edge.i.1.i, label %.lr.ph.i.1.i.preheader

.lr.ph.i.1.i.preheader:                           ; preds = %vector.memcheck, %.lr.ph.preheader.i.1.i, %middle.block193
  %indvars.iv52.i.1.i.ph = phi i64 [ %indvars.iv.i.1.i18, %vector.memcheck ], [ %indvars.iv.i.1.i18, %.lr.ph.preheader.i.1.i ], [ %i.ng, %middle.block193 ]
  br label %.lr.ph.i.1.i

.lr.ph.i.1.i:                                     ; preds = %.lr.ph.i.1.i.preheader, %.lr.ph.i.1.i
  %indvars.iv52.i.1.i = phi i64 [ %indvars.iv.next53.i.1.i, %.lr.ph.i.1.i ], [ %indvars.iv52.i.1.i.ph, %.lr.ph.i.1.i.preheader ] ; 3 uses
  %gep.i.1.i = getelementptr [2 x i8], ptr %invariant.gep.i.1.i, i64 %indvars.iv52.i.1.i ; 2 uses
  %i.oi = load i16, ptr %gep.i.1.i, align 2, !tbaa !12 ; 2 uses
  %i.oj = getelementptr inbounds nuw [2 x i8], ptr %i.mn, i64 %indvars.iv52.i.1.i ; 2 uses
  %i.ok = load i16, ptr %i.oj, align 2, !tbaa !12 ; 2 uses
  %i.ol = zext i16 %i.oi to i32
  %i.om = zext i16 %i.ok to i32
  %i.on = add i16 %i.ok, %i.oi                    ; 2 uses
  %i.oo = add i16 %i.on, -3329                    ; 2 uses
  %isneg.i.i.1.i19 = icmp slt i16 %i.oo, 0
  %i.op = select i1 %isneg.i.i.1.i19, i16 %i.on, i16 0
  %i.oq = call i16 @llvm.smax.i16(i16 %i.oo, i16 0)
  %i.or = or i16 %i.op, %i.oq
  store i16 %i.or, ptr %i.oj, align 2, !tbaa !12
  %reass.sub90 = sub nsw i32 %i.om, %i.ol
  %i.os = add nsw i32 %reass.sub90, 3329
  %i.ot = mul i32 %i.os, %15                      ; 2 uses
  %i.ou = zext i32 %i.ot to i64
  %i.ov = mul nuw nsw i64 %i.ou, 5039
  %i.ow = lshr i64 %i.ov, 24
  %i.ox = trunc nuw nsw i64 %i.ow to i32
  %.neg.i.i.1.i20 = mul i32 %i.ox, 62207
  %i.oy = add i32 %.neg.i.i.1.i20, %i.ot
  %i.oz = trunc i32 %i.oy to i16                  ; 2 uses
  %i.pa = add i16 %i.oz, -3329                    ; 2 uses
  %isneg.i.i.i.1.i21 = icmp slt i16 %i.pa, 0
  %i.pb = select i1 %isneg.i.i.i.1.i21, i16 %i.oz, i16 0
  %i.pc = call i16 @llvm.smax.i16(i16 %i.pa, i16 0)
  %i.pd = or i16 %i.pb, %i.pc
  store i16 %i.pd, ptr %gep.i.1.i, align 2, !tbaa !12
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
  %i.pe = icmp slt i32 %.pre.i.1.i, 256
  br i1 %i.pe, label %bb.a, label %vector.body198, !llvm.loop !53

vector.body198:                                   ; preds = %._crit_edge48.i.1.i, %vector.body198
  %index199 = phi i64 [ %index.next201, %vector.body198 ], [ 0, %._crit_edge48.i.1.i ] ; 2 uses
  %i.pf = getelementptr inbounds nuw [2 x i8], ptr %i.mn, i64 %index199 ; 2 uses
  %wide.load200 = load <8 x i16>, ptr %i.pf, align 2, !tbaa !12
  %i.pg = zext <8 x i16> %wide.load200 to <8 x i32>
  %i.ph = mul nuw nsw <8 x i32> %i.pg, splat (i32 3303) ; 2 uses
  %i.pi = zext nneg <8 x i32> %i.ph to <8 x i64>
  %i.pj = mul nuw nsw <8 x i64> %i.pi, splat (i64 5039)
  %i.pk = lshr <8 x i64> %i.pj, splat (i64 24)
  %i.pl = trunc nuw nsw <8 x i64> %i.pk to <8 x i32>
  %i.pm = mul nuw <8 x i32> %i.pl, splat (i32 62207)
  %i.pn = add nuw <8 x i32> %i.pm, %i.ph
  %i.po = trunc <8 x i32> %i.pn to <8 x i16>      ; 2 uses
  %i.pp = add <8 x i16> %i.po, splat (i16 -3329)  ; 2 uses
  %i.pq = icmp slt <8 x i16> %i.pp, zeroinitializer
  %i.pr = select <8 x i1> %i.pq, <8 x i16> %i.po, <8 x i16> zeroinitializer
  %i.ps = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.pp, <8 x i16> zeroinitializer)
  %i.pt = or <8 x i16> %i.pr, %i.ps
  store <8 x i16> %i.pt, ptr %i.pf, align 2, !tbaa !12
  %index.next201 = add nuw i64 %index199, 8       ; 2 uses
  %i.pu = icmp eq i64 %index.next201, 256
  br i1 %i.pu, label %_ZL18scalar_inverse_nttP6scalar.exit.1.i, label %vector.body198, !llvm.loop !65

_ZL18scalar_inverse_nttP6scalar.exit.1.i:         ; preds = %vector.body198
  %i.pv = getelementptr inbounds nuw i8, ptr %8, i64 1024 ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge48.i.2.i, %_ZL18scalar_inverse_nttP6scalar.exit.1.i
  %.03550.i.2.i = phi i32 [ 128, %_ZL18scalar_inverse_nttP6scalar.exit.1.i ], [ %i.pw, %._crit_edge48.i.2.i ]
  %.03649.i.2.i = phi i32 [ 2, %_ZL18scalar_inverse_nttP6scalar.exit.1.i ], [ %.pre.i.2.i, %._crit_edge48.i.2.i ] ; 3 uses
  %i.pw = lshr i32 %.03550.i.2.i, 1               ; 3 uses
  %.not.i.2.i = icmp eq i32 %i.pw, 0
  %.pre.i.2.i = shl i32 %.03649.i.2.i, 1          ; 4 uses
  br i1 %.not.i.2.i, label %._crit_edge48.i.2.i, label %.lr.ph47.i.2.i

.lr.ph47.i.2.i:                                   ; preds = %bb.b
  %i.px = zext i32 %.pre.i.2.i to i64             ; 4 uses
  %i.py = sext i32 %.03649.i.2.i to i64           ; 2 uses
  %i.pz = zext nneg i32 %i.pw to i64              ; 2 uses
  %invariant.gep68.i.2.i = getelementptr inbounds nuw [2 x i8], ptr @_ZL16kInverseNTTRoots, i64 %i.pz
  %invariant.gep.i.2.i = getelementptr [2 x i8], ptr %i.pv, i64 %i.py ; 2 uses
  %i.qa = shl nuw nsw i64 %i.px, 1
  %i.qb = shl nuw nsw i64 %i.py, 1                ; 2 uses
  %i.qc = getelementptr i8, ptr %8, i64 %i.qb
  %i.qd = getelementptr i8, ptr %i.qc, i64 1026
  %i.qe = getelementptr i8, ptr %8, i64 %i.qb
  %i.qf = getelementptr i8, ptr %i.qe, i64 1024
  br label %.lr.ph.preheader.i.2.i

.lr.ph.preheader.i.2.i:                           ; preds = %._crit_edge.i.2.i, %.lr.ph47.i.2.i
  %indvars.iv57.i.2.i = phi i64 [ 0, %.lr.ph47.i.2.i ], [ %indvars.iv.next58.i.2.i, %._crit_edge.i.2.i ] ; 5 uses
  %indvars.iv55.i.2.i = phi i32 [ %.03649.i.2.i, %.lr.ph47.i.2.i ], [ %indvars.iv.next56.i.2.i, %._crit_edge.i.2.i ] ; 4 uses
  %indvars.iv.i.2.i24 = phi i64 [ 0, %.lr.ph47.i.2.i ], [ %indvars.iv.next.i.2.i29, %._crit_edge.i.2.i ] ; 5 uses
  %16 = mul i64 %indvars.iv57.i.2.i, %i.px
  %17 = zext nneg i32 %indvars.iv55.i.2.i to i64
  %18 = sub i64 %17, %16                          ; 3 uses
  %gep69.i.2.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep68.i.2.i, i64 %indvars.iv57.i.2.i
  %19 = load i16, ptr %gep69.i.2.i, align 2, !tbaa !12
  %20 = zext i16 %19 to i32                       ; 2 uses
  %wide.trip.count.i.2.i = zext i32 %indvars.iv55.i.2.i to i64
  %min.iters.check214 = icmp ult i64 %18, 8
  br i1 %min.iters.check214, label %.lr.ph.i.2.i.preheader, label %vector.memcheck203

vector.memcheck203:                               ; preds = %.lr.ph.preheader.i.2.i
  %i.qg = mul i64 %i.qa, %indvars.iv57.i.2.i      ; 4 uses
  %scevgep208 = getelementptr i8, ptr %i.qd, i64 %i.qg
  %i.qh = mul i64 %indvars.iv57.i.2.i, %i.px
  %i.qi = xor i64 %i.qh, -1
  %i.qj = zext nneg i32 %indvars.iv55.i.2.i to i64
  %i.qk = add i64 %i.qi, %i.qj
  %i.ql = shl nsw i64 %i.qk, 1                    ; 2 uses
  %scevgep209 = getelementptr i8, ptr %scevgep208, i64 %i.ql
  %scevgep207 = getelementptr i8, ptr %i.qf, i64 %i.qg
  %i.qm = getelementptr i8, ptr %8, i64 %i.qg
  %scevgep205 = getelementptr i8, ptr %i.qm, i64 1026
  %scevgep206 = getelementptr i8, ptr %scevgep205, i64 %i.ql
  %i.qn = getelementptr i8, ptr %8, i64 %i.qg
  %scevgep204 = getelementptr i8, ptr %i.qn, i64 1024
  %bound0210 = icmp ult ptr %scevgep204, %scevgep209
  %bound1211 = icmp ult ptr %scevgep207, %scevgep206
  %found.conflict212 = and i1 %bound0210, %bound1211
  br i1 %found.conflict212, label %.lr.ph.i.2.i.preheader, label %vector.ph215

vector.ph215:                                     ; preds = %vector.memcheck203
  %n.vec216 = and i64 %18, -8                     ; 3 uses
  %i.qo = add i64 %indvars.iv.i.2.i24, %n.vec216
  %broadcast.splatinsert217 = insertelement <8 x i32> poison, i32 %20, i64 0
  %broadcast.splat218 = shufflevector <8 x i32> %broadcast.splatinsert217, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body219

vector.body219:                                   ; preds = %vector.body219, %vector.ph215
  %index220 = phi i64 [ 0, %vector.ph215 ], [ %index.next223, %vector.body219 ] ; 2 uses
  %i.qp = add nuw i64 %indvars.iv.i.2.i24, %index220 ; 2 uses
  %i.qq = getelementptr [2 x i8], ptr %invariant.gep.i.2.i, i64 %i.qp ; 2 uses
  %wide.load221 = load <8 x i16>, ptr %i.qq, align 2, !tbaa !12, !alias.scope !66 ; 2 uses
  %i.qr = getelementptr inbounds nuw [2 x i8], ptr %i.pv, i64 %i.qp ; 2 uses
  %wide.load222 = load <8 x i16>, ptr %i.qr, align 2, !tbaa !12, !alias.scope !69, !noalias !66 ; 2 uses
  %i.qs = zext <8 x i16> %wide.load221 to <8 x i32>
  %i.qt = zext <8 x i16> %wide.load222 to <8 x i32>
  %i.qu = add <8 x i16> %wide.load222, %wide.load221 ; 2 uses
  %i.qv = add <8 x i16> %i.qu, splat (i16 -3329)  ; 2 uses
  %i.qw = icmp slt <8 x i16> %i.qv, zeroinitializer
  %i.qx = select <8 x i1> %i.qw, <8 x i16> %i.qu, <8 x i16> zeroinitializer
  %i.qy = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.qv, <8 x i16> zeroinitializer)
  %i.qz = or <8 x i16> %i.qx, %i.qy
  store <8 x i16> %i.qz, ptr %i.qr, align 2, !tbaa !12, !alias.scope !69, !noalias !66
  %i.ra = sub nsw <8 x i32> %i.qt, %i.qs
  %i.rb = add nsw <8 x i32> %i.ra, splat (i32 3329)
  %i.rc = mul <8 x i32> %i.rb, %broadcast.splat218 ; 2 uses
  %i.rd = zext <8 x i32> %i.rc to <8 x i64>
  %i.re = mul nuw nsw <8 x i64> %i.rd, splat (i64 5039)
  %i.rf = lshr <8 x i64> %i.re, splat (i64 24)
  %i.rg = trunc nuw nsw <8 x i64> %i.rf to <8 x i32>
  %i.rh = mul <8 x i32> %i.rg, splat (i32 62207)
  %i.ri = add <8 x i32> %i.rh, %i.rc
  %i.rj = trunc <8 x i32> %i.ri to <8 x i16>      ; 2 uses
  %i.rk = add <8 x i16> %i.rj, splat (i16 -3329)  ; 2 uses
  %i.rl = icmp slt <8 x i16> %i.rk, zeroinitializer
  %i.rm = select <8 x i1> %i.rl, <8 x i16> %i.rj, <8 x i16> zeroinitializer
  %i.rn = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.rk, <8 x i16> zeroinitializer)
  %i.ro = or <8 x i16> %i.rm, %i.rn
  store <8 x i16> %i.ro, ptr %i.qq, align 2, !tbaa !12, !alias.scope !66
  %index.next223 = add nuw i64 %index220, 8       ; 2 uses
  %i.rp = icmp eq i64 %index.next223, %n.vec216
  br i1 %i.rp, label %middle.block224, label %vector.body219, !llvm.loop !71

middle.block224:                                  ; preds = %vector.body219
  %cmp.n225 = icmp eq i64 %18, %n.vec216
  br i1 %cmp.n225, label %._crit_edge.i.2.i, label %.lr.ph.i.2.i.preheader

.lr.ph.i.2.i.preheader:                           ; preds = %vector.memcheck203, %.lr.ph.preheader.i.2.i, %middle.block224
  %indvars.iv52.i.2.i.ph = phi i64 [ %indvars.iv.i.2.i24, %vector.memcheck203 ], [ %indvars.iv.i.2.i24, %.lr.ph.preheader.i.2.i ], [ %i.qo, %middle.block224 ]
  br label %.lr.ph.i.2.i

.lr.ph.i.2.i:                                     ; preds = %.lr.ph.i.2.i.preheader, %.lr.ph.i.2.i
  %indvars.iv52.i.2.i = phi i64 [ %indvars.iv.next53.i.2.i, %.lr.ph.i.2.i ], [ %indvars.iv52.i.2.i.ph, %.lr.ph.i.2.i.preheader ] ; 3 uses
  %gep.i.2.i = getelementptr [2 x i8], ptr %invariant.gep.i.2.i, i64 %indvars.iv52.i.2.i ; 2 uses
  %i.rq = load i16, ptr %gep.i.2.i, align 2, !tbaa !12 ; 2 uses
  %i.rr = getelementptr inbounds nuw [2 x i8], ptr %i.pv, i64 %indvars.iv52.i.2.i ; 2 uses
  %i.rs = load i16, ptr %i.rr, align 2, !tbaa !12 ; 2 uses
  %i.rt = zext i16 %i.rq to i32
  %i.ru = zext i16 %i.rs to i32
  %i.rv = add i16 %i.rs, %i.rq                    ; 2 uses
  %i.rw = add i16 %i.rv, -3329                    ; 2 uses
  %isneg.i.i.2.i25 = icmp slt i16 %i.rw, 0
  %i.rx = select i1 %isneg.i.i.2.i25, i16 %i.rv, i16 0
  %i.ry = call i16 @llvm.smax.i16(i16 %i.rw, i16 0)
  %i.rz = or i16 %i.rx, %i.ry
  store i16 %i.rz, ptr %i.rr, align 2, !tbaa !12
  %reass.sub91 = sub nsw i32 %i.ru, %i.rt
  %i.sa = add nsw i32 %reass.sub91, 3329
  %i.sb = mul i32 %i.sa, %20                      ; 2 uses
  %i.sc = zext i32 %i.sb to i64
  %i.sd = mul nuw nsw i64 %i.sc, 5039
  %i.se = lshr i64 %i.sd, 24
  %i.sf = trunc nuw nsw i64 %i.se to i32
  %.neg.i.i.2.i26 = mul i32 %i.sf, 62207
  %i.sg = add i32 %.neg.i.i.2.i26, %i.sb
  %i.sh = trunc i32 %i.sg to i16                  ; 2 uses
  %i.si = add i16 %i.sh, -3329                    ; 2 uses
  %isneg.i.i.i.2.i27 = icmp slt i16 %i.si, 0
  %i.sj = select i1 %isneg.i.i.i.2.i27, i16 %i.sh, i16 0
  %i.sk = call i16 @llvm.smax.i16(i16 %i.si, i16 0)
  %i.sl = or i16 %i.sj, %i.sk
  store i16 %i.sl, ptr %gep.i.2.i, align 2, !tbaa !12
  %indvars.iv.next53.i.2.i = add nuw nsw i64 %indvars.iv52.i.2.i, 1 ; 2 uses
  %exitcond.not.i.2.i28 = icmp eq i64 %indvars.iv.next53.i.2.i, %wide.trip.count.i.2.i
  br i1 %exitcond.not.i.2.i28, label %._crit_edge.i.2.i, label %.lr.ph.i.2.i, !llvm.loop !72

._crit_edge.i.2.i:                                ; preds = %.lr.ph.i.2.i, %middle.block224
  %indvars.iv.next.i.2.i29 = add nuw nsw i64 %indvars.iv.i.2.i24, %i.px
  %indvars.iv.next58.i.2.i = add nuw nsw i64 %indvars.iv57.i.2.i, 1 ; 2 uses
  %indvars.iv.next56.i.2.i = add i32 %indvars.iv55.i.2.i, %.pre.i.2.i
  %exitcond63.not.i.2.i = icmp eq i64 %indvars.iv.next58.i.2.i, %i.pz
  br i1 %exitcond63.not.i.2.i, label %._crit_edge48.i.2.i, label %.lr.ph.preheader.i.2.i, !llvm.loop !56

._crit_edge48.i.2.i:                              ; preds = %._crit_edge.i.2.i, %bb.b
  %i.sm = icmp slt i32 %.pre.i.2.i, 256
  br i1 %i.sm, label %bb.b, label %vector.body229, !llvm.loop !53

vector.body229:                                   ; preds = %._crit_edge48.i.2.i, %vector.body229
  %index230 = phi i64 [ %index.next232, %vector.body229 ], [ 0, %._crit_edge48.i.2.i ] ; 2 uses
  %i.sn = getelementptr inbounds nuw [2 x i8], ptr %i.pv, i64 %index230 ; 2 uses
  %wide.load231 = load <8 x i16>, ptr %i.sn, align 2, !tbaa !12
  %i.so = zext <8 x i16> %wide.load231 to <8 x i32>
  %i.sp = mul nuw nsw <8 x i32> %i.so, splat (i32 3303) ; 2 uses
  %i.sq = zext nneg <8 x i32> %i.sp to <8 x i64>
  %i.sr = mul nuw nsw <8 x i64> %i.sq, splat (i64 5039)
  %i.ss = lshr <8 x i64> %i.sr, splat (i64 24)
  %i.st = trunc nuw nsw <8 x i64> %i.ss to <8 x i32>
  %i.su = mul nuw <8 x i32> %i.st, splat (i32 62207)
  %i.sv = add nuw <8 x i32> %i.su, %i.sp
  %i.sw = trunc <8 x i32> %i.sv to <8 x i16>      ; 2 uses
  %i.sx = add <8 x i16> %i.sw, splat (i16 -3329)  ; 2 uses
  %i.sy = icmp slt <8 x i16> %i.sx, zeroinitializer
  %i.sz = select <8 x i1> %i.sy, <8 x i16> %i.sw, <8 x i16> zeroinitializer
  %i.ta = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.sx, <8 x i16> zeroinitializer)
  %i.tb = or <8 x i16> %i.sz, %i.ta
  store <8 x i16> %i.tb, ptr %i.sn, align 2, !tbaa !12
  %index.next232 = add nuw i64 %index230, 8       ; 2 uses
  %i.tc = icmp eq i64 %index.next232, 256
  br i1 %i.tc, label %vector.body236, label %vector.body229, !llvm.loop !73

vector.body236:                                   ; preds = %vector.body229, %vector.body236
  %index237 = phi i64 [ %index.next242, %vector.body236 ], [ 0, %vector.body229 ] ; 3 uses
  %i.td = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %index237 ; 3 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 16 ; 2 uses
  %wide.load238 = load <8 x i16>, ptr %i.td, align 2, !tbaa !12
  %wide.load239 = load <8 x i16>, ptr %i.te, align 2, !tbaa !12
  %i.tf = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %index237 ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 16
  %wide.load240 = load <8 x i16>, ptr %i.tf, align 2, !tbaa !12
  %wide.load241 = load <8 x i16>, ptr %i.tg, align 2, !tbaa !12
  %i.th = add <8 x i16> %wide.load240, %wide.load238 ; 2 uses
  %i.ti = add <8 x i16> %wide.load241, %wide.load239 ; 2 uses
  %i.tj = add <8 x i16> %i.th, splat (i16 -3329)  ; 2 uses
  %i.tk = add <8 x i16> %i.ti, splat (i16 -3329)  ; 2 uses
  %i.tl = icmp slt <8 x i16> %i.tj, zeroinitializer
  %i.tm = icmp slt <8 x i16> %i.tk, zeroinitializer
  %i.tn = select <8 x i1> %i.tl, <8 x i16> %i.th, <8 x i16> zeroinitializer
  %i.to = select <8 x i1> %i.tm, <8 x i16> %i.ti, <8 x i16> zeroinitializer
  %i.tp = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.tj, <8 x i16> zeroinitializer)
  %i.tq = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.tk, <8 x i16> zeroinitializer)
  %i.tr = or <8 x i16> %i.tn, %i.tp
  %i.ts = or <8 x i16> %i.to, %i.tq
  store <8 x i16> %i.tr, ptr %i.td, align 2, !tbaa !12
  store <8 x i16> %i.ts, ptr %i.te, align 2, !tbaa !12
  %index.next242 = add nuw i64 %index237, 16      ; 2 uses
  %i.tt = icmp eq i64 %index.next242, 256
  br i1 %i.tt, label %_ZL10scalar_addP6scalarPKS_.exit.i34, label %vector.body236, !llvm.loop !74

_ZL10scalar_addP6scalarPKS_.exit.i34:             ; preds = %vector.body236
  %i.tu = getelementptr inbounds nuw i8, ptr %6, i64 512
  br label %vector.body246

vector.body246:                                   ; preds = %vector.body246, %_ZL10scalar_addP6scalarPKS_.exit.i34
  %index247 = phi i64 [ 0, %_ZL10scalar_addP6scalarPKS_.exit.i34 ], [ %index.next252, %vector.body246 ] ; 3 uses
  %i.tv = getelementptr inbounds nuw [2 x i8], ptr %i.mn, i64 %index247 ; 3 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 16 ; 2 uses
  %wide.load248 = load <8 x i16>, ptr %i.tv, align 2, !tbaa !12
  %wide.load249 = load <8 x i16>, ptr %i.tw, align 2, !tbaa !12
  %i.tx = getelementptr inbounds nuw [2 x i8], ptr %i.tu, i64 %index247 ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 16
  %wide.load250 = load <8 x i16>, ptr %i.tx, align 2, !tbaa !12
  %wide.load251 = load <8 x i16>, ptr %i.ty, align 2, !tbaa !12
  %i.tz = add <8 x i16> %wide.load250, %wide.load248 ; 2 uses
  %i.ua = add <8 x i16> %wide.load251, %wide.load249 ; 2 uses
  %i.ub = add <8 x i16> %i.tz, splat (i16 -3329)  ; 2 uses
  %i.uc = add <8 x i16> %i.ua, splat (i16 -3329)  ; 2 uses
  %i.ud = icmp slt <8 x i16> %i.ub, zeroinitializer
  %i.ue = icmp slt <8 x i16> %i.uc, zeroinitializer
  %i.uf = select <8 x i1> %i.ud, <8 x i16> %i.tz, <8 x i16> zeroinitializer
  %i.ug = select <8 x i1> %i.ue, <8 x i16> %i.ua, <8 x i16> zeroinitializer
  %i.uh = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ub, <8 x i16> zeroinitializer)
  %i.ui = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.uc, <8 x i16> zeroinitializer)
  %i.uj = or <8 x i16> %i.uf, %i.uh
  %i.uk = or <8 x i16> %i.ug, %i.ui
  store <8 x i16> %i.uj, ptr %i.tv, align 2, !tbaa !12
  store <8 x i16> %i.uk, ptr %i.tw, align 2, !tbaa !12
  %index.next252 = add nuw i64 %index247, 16      ; 2 uses
  %i.ul = icmp eq i64 %index.next252, 256
  br i1 %i.ul, label %_ZL10scalar_addP6scalarPKS_.exit.1.i39, label %vector.body246, !llvm.loop !75

_ZL10scalar_addP6scalarPKS_.exit.1.i39:           ; preds = %vector.body246
  %i.um = getelementptr inbounds nuw i8, ptr %6, i64 1024
  br label %vector.body256

vector.body256:                                   ; preds = %vector.body256, %_ZL10scalar_addP6scalarPKS_.exit.1.i39
  %index257 = phi i64 [ 0, %_ZL10scalar_addP6scalarPKS_.exit.1.i39 ], [ %index.next262, %vector.body256 ] ; 3 uses
  %i.un = getelementptr inbounds nuw [2 x i8], ptr %i.pv, i64 %index257 ; 3 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 16 ; 2 uses
  %wide.load258 = load <8 x i16>, ptr %i.un, align 2, !tbaa !12
  %wide.load259 = load <8 x i16>, ptr %i.uo, align 2, !tbaa !12
  %i.up = getelementptr inbounds nuw [2 x i8], ptr %i.um, i64 %index257 ; 2 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 16
  %wide.load260 = load <8 x i16>, ptr %i.up, align 2, !tbaa !12
  %wide.load261 = load <8 x i16>, ptr %i.uq, align 2, !tbaa !12
  %i.ur = add <8 x i16> %wide.load260, %wide.load258 ; 2 uses
  %i.us = add <8 x i16> %wide.load261, %wide.load259 ; 2 uses
  %i.ut = add <8 x i16> %i.ur, splat (i16 -3329)  ; 2 uses
  %i.uu = add <8 x i16> %i.us, splat (i16 -3329)  ; 2 uses
  %i.uv = icmp slt <8 x i16> %i.ut, zeroinitializer
  %i.uw = icmp slt <8 x i16> %i.uu, zeroinitializer
  %i.ux = select <8 x i1> %i.uv, <8 x i16> %i.ur, <8 x i16> zeroinitializer
  %i.uy = select <8 x i1> %i.uw, <8 x i16> %i.us, <8 x i16> zeroinitializer
  %i.uz = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ut, <8 x i16> zeroinitializer)
  %i.va = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.uu, <8 x i16> zeroinitializer)
  %i.vb = or <8 x i16> %i.ux, %i.uz
  %i.vc = or <8 x i16> %i.uy, %i.va
  store <8 x i16> %i.vb, ptr %i.un, align 2, !tbaa !12
  store <8 x i16> %i.vc, ptr %i.uo, align 2, !tbaa !12
  %index.next262 = add nuw i64 %index257, 16      ; 2 uses
  %i.vd = icmp eq i64 %index.next262, 256
  br i1 %i.vd, label %_ZL10vector_addP6vectorPKS_.exit, label %vector.body256, !llvm.loop !76

_ZL10vector_addP6vectorPKS_.exit:                 ; preds = %vector.body256
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  call fastcc void @_ZL20scalar_inner_productP6scalarPK6vectorS3_(ptr noundef %9, ptr noundef %1, ptr noundef %5)
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge48.i, %_ZL10vector_addP6vectorPKS_.exit
  %.03550.i = phi i32 [ 128, %_ZL10vector_addP6vectorPKS_.exit ], [ %i.ve, %._crit_edge48.i ]
  %.03649.i = phi i32 [ 2, %_ZL10vector_addP6vectorPKS_.exit ], [ %.pre.i, %._crit_edge48.i ] ; 3 uses
  %i.ve = lshr i32 %.03550.i, 1                   ; 3 uses
  %.not.i = icmp eq i32 %i.ve, 0
  %.pre.i = shl i32 %.03649.i, 1                  ; 4 uses
  br i1 %.not.i, label %._crit_edge48.i, label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %bb.c
  %i.vf = zext i32 %.pre.i to i64                 ; 4 uses
  %i.vg = sext i32 %.03649.i to i64               ; 2 uses
  %i.vh = zext nneg i32 %i.ve to i64              ; 2 uses
  %invariant.gep68.i = getelementptr inbounds nuw [2 x i8], ptr @_ZL16kInverseNTTRoots, i64 %i.vh
  %invariant.gep.i = getelementptr [2 x i8], ptr %9, i64 %i.vg ; 2 uses
  %i.vi = shl nuw nsw i64 %i.vf, 1
  %i.vj = shl nuw nsw i64 %i.vg, 1                ; 2 uses
  %i.vk = getelementptr i8, ptr %9, i64 %i.vj
  %i.vl = getelementptr i8, ptr %i.vk, i64 2
  %i.vm = getelementptr i8, ptr %9, i64 %i.vj
  br label %.lr.ph.preheader.i

._crit_edge48.i:                                  ; preds = %._crit_edge.i, %bb.c
  %i.vn = icmp slt i32 %.pre.i, 256
  br i1 %i.vn, label %bb.c, label %vector.body290, !llvm.loop !53

vector.body290:                                   ; preds = %._crit_edge48.i, %vector.body290
  %index291 = phi i64 [ %index.next293, %vector.body290 ], [ 0, %._crit_edge48.i ] ; 2 uses
  %i.vo = getelementptr inbounds nuw [2 x i8], ptr %9, i64 %index291 ; 2 uses
  %wide.load292 = load <8 x i16>, ptr %i.vo, align 2, !tbaa !12
  %i.vp = zext <8 x i16> %wide.load292 to <8 x i32>
  %i.vq = mul nuw nsw <8 x i32> %i.vp, splat (i32 3303) ; 2 uses
  %i.vr = zext nneg <8 x i32> %i.vq to <8 x i64>
  %i.vs = mul nuw nsw <8 x i64> %i.vr, splat (i64 5039)
  %i.vt = lshr <8 x i64> %i.vs, splat (i64 24)
  %i.vu = trunc nuw nsw <8 x i64> %i.vt to <8 x i32>
  %i.vv = mul nuw <8 x i32> %i.vu, splat (i32 62207)
  %i.vw = add nuw <8 x i32> %i.vv, %i.vq
  %i.vx = trunc <8 x i32> %i.vw to <8 x i16>      ; 2 uses
  %i.vy = add <8 x i16> %i.vx, splat (i16 -3329)  ; 2 uses
  %i.vz = icmp slt <8 x i16> %i.vy, zeroinitializer
  %i.wa = select <8 x i1> %i.vz, <8 x i16> %i.vx, <8 x i16> zeroinitializer
  %i.wb = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.vy, <8 x i16> zeroinitializer)
  %i.wc = or <8 x i16> %i.wa, %i.wb
  store <8 x i16> %i.wc, ptr %i.vo, align 2, !tbaa !12
  %index.next293 = add nuw i64 %index291, 8       ; 2 uses
  %i.wd = icmp eq i64 %index.next293, 256
  br i1 %i.wd, label %vector.body297, label %vector.body290, !llvm.loop !77

.lr.ph.preheader.i:                               ; preds = %._crit_edge.i, %.lr.ph47.i
  %indvars.iv57.i = phi i64 [ 0, %.lr.ph47.i ], [ %indvars.iv.next58.i, %._crit_edge.i ] ; 5 uses
  %indvars.iv55.i = phi i32 [ %.03649.i, %.lr.ph47.i ], [ %indvars.iv.next56.i, %._crit_edge.i ] ; 4 uses
  %indvars.iv.i45 = phi i64 [ 0, %.lr.ph47.i ], [ %indvars.iv.next.i49, %._crit_edge.i ] ; 5 uses
  %21 = mul i64 %indvars.iv57.i, %i.vf
  %22 = zext nneg i32 %indvars.iv55.i to i64
  %23 = sub i64 %22, %21                          ; 3 uses
  %gep69.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep68.i, i64 %indvars.iv57.i
  %24 = load i16, ptr %gep69.i, align 2, !tbaa !12
  %25 = zext i16 %24 to i32                       ; 2 uses
  %wide.trip.count.i = zext i32 %indvars.iv55.i to i64
  %min.iters.check275 = icmp ult i64 %23, 8
  br i1 %min.iters.check275, label %.lr.ph.i.preheader, label %vector.memcheck264

vector.memcheck264:                               ; preds = %.lr.ph.preheader.i
  %i.we = mul i64 %i.vi, %indvars.iv57.i          ; 4 uses
  %scevgep269 = getelementptr i8, ptr %i.vl, i64 %i.we
  %i.wf = mul i64 %indvars.iv57.i, %i.vf
  %i.wg = xor i64 %i.wf, -1
  %i.wh = zext nneg i32 %indvars.iv55.i to i64
  %i.wi = add i64 %i.wg, %i.wh
  %i.wj = shl nsw i64 %i.wi, 1                    ; 2 uses
  %scevgep270 = getelementptr i8, ptr %scevgep269, i64 %i.wj
  %scevgep268 = getelementptr i8, ptr %i.vm, i64 %i.we
  %i.wk = getelementptr i8, ptr %9, i64 %i.we
  %scevgep266 = getelementptr i8, ptr %i.wk, i64 2
  %scevgep267 = getelementptr i8, ptr %scevgep266, i64 %i.wj
  %scevgep265 = getelementptr nuw i8, ptr %9, i64 %i.we
  %bound0271 = icmp ult ptr %scevgep265, %scevgep270
  %bound1272 = icmp ult ptr %scevgep268, %scevgep267
  %found.conflict273 = and i1 %bound0271, %bound1272
  br i1 %found.conflict273, label %.lr.ph.i.preheader, label %vector.ph276

vector.ph276:                                     ; preds = %vector.memcheck264
  %n.vec277 = and i64 %23, -8                     ; 3 uses
  %i.wl = add i64 %indvars.iv.i45, %n.vec277
  %broadcast.splatinsert278 = insertelement <8 x i32> poison, i32 %25, i64 0
  %broadcast.splat279 = shufflevector <8 x i32> %broadcast.splatinsert278, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body280

vector.body280:                                   ; preds = %vector.body280, %vector.ph276
  %index281 = phi i64 [ 0, %vector.ph276 ], [ %index.next284, %vector.body280 ] ; 2 uses
  %i.wm = add nuw i64 %indvars.iv.i45, %index281  ; 2 uses
  %i.wn = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.wm ; 2 uses
  %wide.load282 = load <8 x i16>, ptr %i.wn, align 2, !tbaa !12, !alias.scope !78 ; 2 uses
  %i.wo = getelementptr inbounds nuw [2 x i8], ptr %9, i64 %i.wm ; 2 uses
  %wide.load283 = load <8 x i16>, ptr %i.wo, align 2, !tbaa !12, !alias.scope !81, !noalias !78 ; 2 uses
  %i.wp = zext <8 x i16> %wide.load282 to <8 x i32>
  %i.wq = zext <8 x i16> %wide.load283 to <8 x i32>
  %i.wr = add <8 x i16> %wide.load283, %wide.load282 ; 2 uses
  %i.ws = add <8 x i16> %i.wr, splat (i16 -3329)  ; 2 uses
  %i.wt = icmp slt <8 x i16> %i.ws, zeroinitializer
  %i.wu = select <8 x i1> %i.wt, <8 x i16> %i.wr, <8 x i16> zeroinitializer
  %i.wv = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ws, <8 x i16> zeroinitializer)
  %i.ww = or <8 x i16> %i.wu, %i.wv
  store <8 x i16> %i.ww, ptr %i.wo, align 2, !tbaa !12, !alias.scope !81, !noalias !78
  %i.wx = sub nsw <8 x i32> %i.wq, %i.wp
  %i.wy = add nsw <8 x i32> %i.wx, splat (i32 3329)
  %i.wz = mul <8 x i32> %i.wy, %broadcast.splat279 ; 2 uses
  %i.xa = zext <8 x i32> %i.wz to <8 x i64>
  %i.xb = mul nuw nsw <8 x i64> %i.xa, splat (i64 5039)
  %i.xc = lshr <8 x i64> %i.xb, splat (i64 24)
  %i.xd = trunc nuw nsw <8 x i64> %i.xc to <8 x i32>
  %i.xe = mul <8 x i32> %i.xd, splat (i32 62207)
  %i.xf = add <8 x i32> %i.xe, %i.wz
  %i.xg = trunc <8 x i32> %i.xf to <8 x i16>      ; 2 uses
  %i.xh = add <8 x i16> %i.xg, splat (i16 -3329)  ; 2 uses
  %i.xi = icmp slt <8 x i16> %i.xh, zeroinitializer
  %i.xj = select <8 x i1> %i.xi, <8 x i16> %i.xg, <8 x i16> zeroinitializer
  %i.xk = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.xh, <8 x i16> zeroinitializer)
  %i.xl = or <8 x i16> %i.xj, %i.xk
  store <8 x i16> %i.xl, ptr %i.wn, align 2, !tbaa !12, !alias.scope !78
  %index.next284 = add nuw i64 %index281, 8       ; 2 uses
  %i.xm = icmp eq i64 %index.next284, %n.vec277
  br i1 %i.xm, label %middle.block285, label %vector.body280, !llvm.loop !83

middle.block285:                                  ; preds = %vector.body280
  %cmp.n286 = icmp eq i64 %23, %n.vec277
  br i1 %cmp.n286, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck264, %.lr.ph.preheader.i, %middle.block285
  %indvars.iv52.i.ph = phi i64 [ %indvars.iv.i45, %vector.memcheck264 ], [ %indvars.iv.i45, %.lr.ph.preheader.i ], [ %i.wl, %middle.block285 ]
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block285
  %indvars.iv.next.i49 = add nuw nsw i64 %indvars.iv.i45, %i.vf
  %indvars.iv.next58.i = add nuw nsw i64 %indvars.iv57.i, 1 ; 2 uses
  %indvars.iv.next56.i = add i32 %indvars.iv55.i, %.pre.i
  %exitcond63.not.i = icmp eq i64 %indvars.iv.next58.i, %i.vh
  br i1 %exitcond63.not.i, label %._crit_edge48.i, label %.lr.ph.preheader.i, !llvm.loop !56

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv52.i = phi i64 [ %indvars.iv.next53.i, %.lr.ph.i ], [ %indvars.iv52.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %gep.i = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv52.i ; 2 uses
  %i.xn = load i16, ptr %gep.i, align 2, !tbaa !12 ; 2 uses
  %i.xo = getelementptr inbounds nuw [2 x i8], ptr %9, i64 %indvars.iv52.i ; 2 uses
  %i.xp = load i16, ptr %i.xo, align 2, !tbaa !12 ; 2 uses
  %i.xq = zext i16 %i.xn to i32
  %i.xr = zext i16 %i.xp to i32
  %i.xs = add i16 %i.xp, %i.xn                    ; 2 uses
  %i.xt = add i16 %i.xs, -3329                    ; 2 uses
  %isneg.i.i = icmp slt i16 %i.xt, 0
  %i.xu = select i1 %isneg.i.i, i16 %i.xs, i16 0
  %i.xv = call i16 @llvm.smax.i16(i16 %i.xt, i16 0)
  %i.xw = or i16 %i.xu, %i.xv
  store i16 %i.xw, ptr %i.xo, align 2, !tbaa !12
  %reass.sub92 = sub nsw i32 %i.xr, %i.xq
  %i.xx = add nsw i32 %reass.sub92, 3329
  %i.xy = mul i32 %i.xx, %25                      ; 2 uses
  %i.xz = zext i32 %i.xy to i64
  %i.ya = mul nuw nsw i64 %i.xz, 5039
  %i.yb = lshr i64 %i.ya, 24
  %i.yc = trunc nuw nsw i64 %i.yb to i32
  %.neg.i.i = mul i32 %i.yc, 62207
  %i.yd = add i32 %.neg.i.i, %i.xy
  %i.ye = trunc i32 %i.yd to i16                  ; 2 uses
  %i.yf = add i16 %i.ye, -3329                    ; 2 uses
  %isneg.i.i.i47 = icmp slt i16 %i.yf, 0
  %i.yg = select i1 %isneg.i.i.i47, i16 %i.ye, i16 0
  %i.yh = call i16 @llvm.smax.i16(i16 %i.yf, i16 0)
  %i.yi = or i16 %i.yg, %i.yh
  store i16 %i.yi, ptr %gep.i, align 2, !tbaa !12
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1 ; 2 uses
  %exitcond.not.i48 = icmp eq i64 %indvars.iv.next53.i, %wide.trip.count.i
  br i1 %exitcond.not.i48, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !84

vector.body297:                                   ; preds = %vector.body290, %vector.body297
  %index298 = phi i64 [ %index.next303, %vector.body297 ], [ 0, %vector.body290 ] ; 3 uses
  %i.yj = getelementptr inbounds nuw [2 x i8], ptr %9, i64 %index298 ; 3 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 16 ; 2 uses
  %wide.load299 = load <8 x i16>, ptr %i.yj, align 2, !tbaa !12
  %wide.load300 = load <8 x i16>, ptr %i.yk, align 2, !tbaa !12
  %i.yl = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %index298 ; 2 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 16
  %wide.load301 = load <8 x i16>, ptr %i.yl, align 2, !tbaa !12
  %wide.load302 = load <8 x i16>, ptr %i.ym, align 2, !tbaa !12
  %i.yn = add <8 x i16> %wide.load301, %wide.load299 ; 2 uses
  %i.yo = add <8 x i16> %wide.load302, %wide.load300 ; 2 uses
  %i.yp = add <8 x i16> %i.yn, splat (i16 -3329)  ; 2 uses
  %i.yq = add <8 x i16> %i.yo, splat (i16 -3329)  ; 2 uses
  %i.yr = icmp slt <8 x i16> %i.yp, zeroinitializer
  %i.ys = icmp slt <8 x i16> %i.yq, zeroinitializer
  %i.yt = select <8 x i1> %i.yr, <8 x i16> %i.yn, <8 x i16> zeroinitializer
  %i.yu = select <8 x i1> %i.ys, <8 x i16> %i.yo, <8 x i16> zeroinitializer
  %i.yv = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.yp, <8 x i16> zeroinitializer)
  %i.yw = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.yq, <8 x i16> zeroinitializer)
  %i.yx = or <8 x i16> %i.yt, %i.yv
  %i.yy = or <8 x i16> %i.yu, %i.yw
  store <8 x i16> %i.yx, ptr %i.yj, align 2, !tbaa !12
  store <8 x i16> %i.yy, ptr %i.yk, align 2, !tbaa !12
  %index.next303 = add nuw i64 %index298, 16      ; 2 uses
  %i.yz = icmp eq i64 %index.next303, 256
  br i1 %i.yz, label %_ZL10scalar_addP6scalarPKS_.exit, label %vector.body297, !llvm.loop !85

_ZL10scalar_addP6scalarPKS_.exit:                 ; preds = %vector.body297
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  br label %vector.body307

vector.body307:                                   ; preds = %vector.body307, %_ZL10scalar_addP6scalarPKS_.exit
  %index308 = phi i64 [ 0, %_ZL10scalar_addP6scalarPKS_.exit ], [ %index.next311, %vector.body307 ] ; 3 uses
  %next.gep = getelementptr i8, ptr %2, i64 %index308
  %wide.load309 = load <8 x i8>, ptr %next.gep, align 1, !tbaa !11 ; 8 uses
  %i.za = and <8 x i8> %wide.load309, splat (i8 1)
  %i.zb = zext nneg <8 x i8> %i.za to <8 x i16>
  %.idx358 = shl nuw i64 %index308, 4
  %i.zc = getelementptr inbounds nuw i8, ptr %10, i64 %.idx358
  %i.zd = lshr <8 x i8> %wide.load309, splat (i8 1)
  %i.ze = and <8 x i8> %i.zd, splat (i8 1)
  %i.zf = zext nneg <8 x i8> %i.ze to <8 x i16>
  %i.zg = lshr <8 x i8> %wide.load309, splat (i8 2)
  %i.zh = and <8 x i8> %i.zg, splat (i8 1)
  %i.zi = zext nneg <8 x i8> %i.zh to <8 x i16>
  %i.zj = lshr <8 x i8> %wide.load309, splat (i8 3)
  %i.zk = and <8 x i8> %i.zj, splat (i8 1)
  %i.zl = zext nneg <8 x i8> %i.zk to <8 x i16>
  %i.zm = lshr <8 x i8> %wide.load309, splat (i8 4)
  %i.zn = and <8 x i8> %i.zm, splat (i8 1)
  %i.zo = zext nneg <8 x i8> %i.zn to <8 x i16>
  %i.zp = lshr <8 x i8> %wide.load309, splat (i8 5)
  %i.zq = and <8 x i8> %i.zp, splat (i8 1)
  %i.zr = zext nneg <8 x i8> %i.zq to <8 x i16>
  %i.zs = lshr <8 x i8> %wide.load309, splat (i8 6)
  %i.zt = and <8 x i8> %i.zs, splat (i8 1)
  %i.zu = zext nneg <8 x i8> %i.zt to <8 x i16>
  %i.zv = lshr <8 x i8> %wide.load309, splat (i8 7)
  %i.zw = zext nneg <8 x i8> %i.zv to <8 x i16>
  %i.zx = shufflevector <8 x i16> %i.zb, <8 x i16> %i.zf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.zy = shufflevector <8 x i16> %i.zi, <8 x i16> %i.zl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.zz = shufflevector <8 x i16> %i.zo, <8 x i16> %i.zr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aaa = shufflevector <8 x i16> %i.zu, <8 x i16> %i.zw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aab = shufflevector <16 x i16> %i.zx, <16 x i16> %i.zy, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.aac = shufflevector <16 x i16> %i.zz, <16 x i16> %i.aaa, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec310 = shufflevector <32 x i16> %i.aab, <32 x i16> %i.aac, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x i16> %interleaved.vec310, ptr %i.zc, align 2, !tbaa !12
  %index.next311 = add nuw i64 %index308, 8       ; 2 uses
  %i.aad = icmp eq i64 %index.next311, 32
  br i1 %i.aad, label %vector.body315, label %vector.body307, !llvm.loop !86

vector.body315:                                   ; preds = %vector.body307, %vector.body315
  %index316 = phi i64 [ %index.next318, %vector.body315 ], [ 0, %vector.body307 ] ; 2 uses
  %i.aae = getelementptr inbounds nuw [2 x i8], ptr %10, i64 %index316 ; 2 uses
  %wide.load317 = load <8 x i16>, ptr %i.aae, align 2, !tbaa !12
  %i.aaf = zext <8 x i16> %wide.load317 to <8 x i32>
  %i.aag = mul nuw nsw <8 x i32> %i.aaf, splat (i32 3329) ; 2 uses
  %i.aah = and <8 x i32> %i.aag, splat (i32 1)
  %i.aai = lshr <8 x i32> %i.aag, splat (i32 1)
  %i.aaj = add nuw nsw <8 x i32> %i.aah, %i.aai
  %i.aak = trunc <8 x i32> %i.aaj to <8 x i16>
  store <8 x i16> %i.aak, ptr %i.aae, align 2, !tbaa !12
  %index.next318 = add nuw i64 %index316, 8       ; 2 uses
  %i.aal = icmp eq i64 %index.next318, 256
  br i1 %i.aal, label %vector.body322, label %vector.body315, !llvm.loop !87

vector.body322:                                   ; preds = %vector.body315, %vector.body322
  %index323 = phi i64 [ %index.next328, %vector.body322 ], [ 0, %vector.body315 ] ; 3 uses
  %i.aam = getelementptr inbounds nuw [2 x i8], ptr %9, i64 %index323 ; 3 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 16 ; 2 uses
  %wide.load324 = load <8 x i16>, ptr %i.aam, align 2, !tbaa !12
  %wide.load325 = load <8 x i16>, ptr %i.aan, align 2, !tbaa !12
  %i.aao = getelementptr inbounds nuw [2 x i8], ptr %10, i64 %index323 ; 2 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aao, i64 16
  %wide.load326 = load <8 x i16>, ptr %i.aao, align 2, !tbaa !12
  %wide.load327 = load <8 x i16>, ptr %i.aap, align 2, !tbaa !12
  %i.aaq = add <8 x i16> %wide.load326, %wide.load324 ; 2 uses
  %i.aar = add <8 x i16> %wide.load327, %wide.load325 ; 2 uses
  %i.aas = add <8 x i16> %i.aaq, splat (i16 -3329) ; 2 uses
  %i.aat = add <8 x i16> %i.aar, splat (i16 -3329) ; 2 uses
  %i.aau = icmp slt <8 x i16> %i.aas, zeroinitializer
  %i.aav = icmp slt <8 x i16> %i.aat, zeroinitializer
  %i.aaw = select <8 x i1> %i.aau, <8 x i16> %i.aaq, <8 x i16> zeroinitializer
  %i.aax = select <8 x i1> %i.aav, <8 x i16> %i.aar, <8 x i16> zeroinitializer
  %i.aay = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aas, <8 x i16> zeroinitializer)
  %i.aaz = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aat, <8 x i16> zeroinitializer)
  %i.aba = or <8 x i16> %i.aaw, %i.aay
  %i.abb = or <8 x i16> %i.aax, %i.aaz
  store <8 x i16> %i.aba, ptr %i.aam, align 2, !tbaa !12
  store <8 x i16> %i.abb, ptr %i.aan, align 2, !tbaa !12
  %index.next328 = add nuw i64 %index323, 16      ; 2 uses
  %i.abc = icmp eq i64 %index.next328, 256
  br i1 %i.abc, label %vector.body332, label %vector.body322, !llvm.loop !88

vector.body332:                                   ; preds = %vector.body322, %vector.body332
  %index333 = phi i64 [ %index.next335, %vector.body332 ], [ 0, %vector.body322 ] ; 2 uses
  %i.abd = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %index333 ; 2 uses
  %wide.load334 = load <4 x i16>, ptr %i.abd, align 2, !tbaa !12
  %i.abe = zext <4 x i16> %wide.load334 to <4 x i32>
  %i.abf = shl nuw nsw <4 x i32> %i.abe, splat (i32 10) ; 2 uses
  %i.abg = zext nneg <4 x i32> %i.abf to <4 x i64>
  %i.abh = mul nuw nsw <4 x i64> %i.abg, splat (i64 5039)
  %i.abi = lshr <4 x i64> %i.abh, splat (i64 24)  ; 2 uses
  %i.abj = trunc nuw nsw <4 x i64> %i.abi to <4 x i32>
  %i.abk = mul nsw <4 x i32> %i.abj, splat (i32 -3329)
  %i.abl = add nsw <4 x i32> %i.abk, %i.abf       ; 2 uses
  %i.abm = icmp ugt <4 x i32> %i.abl, splat (i32 1664)
  %i.abn = zext <4 x i1> %i.abm to <4 x i64>
  %i.abo = add nuw nsw <4 x i64> %i.abi, %i.abn
  %i.abp = icmp ugt <4 x i32> %i.abl, splat (i32 4993)
  %i.abq = zext <4 x i1> %i.abp to <4 x i64>
  %i.abr = add nuw nsw <4 x i64> %i.abo, %i.abq
  %i.abs = trunc nuw nsw <4 x i64> %i.abr to <4 x i16>
  %i.abt = and <4 x i16> %i.abs, splat (i16 1023)
  store <4 x i16> %i.abt, ptr %i.abd, align 2, !tbaa !12
  %index.next335 = add nuw i64 %index333, 4       ; 2 uses
  %i.abu = icmp eq i64 %index.next335, 256
  br i1 %i.abu, label %vector.body339, label %vector.body332, !llvm.loop !89

vector.body339:                                   ; preds = %vector.body332, %vector.body339
  %index340 = phi i64 [ %index.next342, %vector.body339 ], [ 0, %vector.body332 ] ; 2 uses
  %i.abv = getelementptr inbounds nuw [2 x i8], ptr %i.mn, i64 %index340 ; 2 uses
  %wide.load341 = load <4 x i16>, ptr %i.abv, align 2, !tbaa !12
  %i.abw = zext <4 x i16> %wide.load341 to <4 x i32>
  %i.abx = shl nuw nsw <4 x i32> %i.abw, splat (i32 10) ; 2 uses
  %i.aby = zext nneg <4 x i32> %i.abx to <4 x i64>
  %i.abz = mul nuw nsw <4 x i64> %i.aby, splat (i64 5039)
  %i.aca = lshr <4 x i64> %i.abz, splat (i64 24)  ; 2 uses
  %i.acb = trunc nuw nsw <4 x i64> %i.aca to <4 x i32>
  %i.acc = mul nsw <4 x i32> %i.acb, splat (i32 -3329)
  %i.acd = add nsw <4 x i32> %i.acc, %i.abx       ; 2 uses
  %i.ace = icmp ugt <4 x i32> %i.acd, splat (i32 1664)
  %i.acf = zext <4 x i1> %i.ace to <4 x i64>
  %i.acg = add nuw nsw <4 x i64> %i.aca, %i.acf
  %i.ach = icmp ugt <4 x i32> %i.acd, splat (i32 4993)
  %i.aci = zext <4 x i1> %i.ach to <4 x i64>
  %i.acj = add nuw nsw <4 x i64> %i.acg, %i.aci
  %i.ack = trunc nuw nsw <4 x i64> %i.acj to <4 x i16>
  %i.acl = and <4 x i16> %i.ack, splat (i16 1023)
  store <4 x i16> %i.acl, ptr %i.abv, align 2, !tbaa !12
  %index.next342 = add nuw i64 %index340, 4       ; 2 uses
  %i.acm = icmp eq i64 %index.next342, 256
  br i1 %i.acm, label %vector.body346, label %vector.body339, !llvm.loop !90

vector.body346:                                   ; preds = %vector.body339, %vector.body346
  %index347 = phi i64 [ %index.next349, %vector.body346 ], [ 0, %vector.body339 ] ; 2 uses
  %i.acn = getelementptr inbounds nuw [2 x i8], ptr %i.pv, i64 %index347 ; 2 uses
  %wide.load348 = load <4 x i16>, ptr %i.acn, align 2, !tbaa !12
  %i.aco = zext <4 x i16> %wide.load348 to <4 x i32>
  %i.acp = shl nuw nsw <4 x i32> %i.aco, splat (i32 10) ; 2 uses
  %i.acq = zext nneg <4 x i32> %i.acp to <4 x i64>
  %i.acr = mul nuw nsw <4 x i64> %i.acq, splat (i64 5039)
  %i.acs = lshr <4 x i64> %i.acr, splat (i64 24)  ; 2 uses
  %i.act = trunc nuw nsw <4 x i64> %i.acs to <4 x i32>
  %i.acu = mul nsw <4 x i32> %i.act, splat (i32 -3329)
  %i.acv = add nsw <4 x i32> %i.acu, %i.acp       ; 2 uses
  %i.acw = icmp ugt <4 x i32> %i.acv, splat (i32 1664)
  %i.acx = zext <4 x i1> %i.acw to <4 x i64>
  %i.acy = add nuw nsw <4 x i64> %i.acs, %i.acx
  %i.acz = icmp ugt <4 x i32> %i.acv, splat (i32 4993)
  %i.ada = zext <4 x i1> %i.acz to <4 x i64>
  %i.adb = add nuw nsw <4 x i64> %i.acy, %i.ada
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
  %6 = mul i64 %indvars.iv57.i.i, %i.br
  %7 = zext nneg i32 %indvars.iv55.i.i to i64
  %8 = sub i64 %7, %6                             ; 3 uses
  %gep69.i.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep68.i.i, i64 %indvars.iv57.i.i
  %9 = load i16, ptr %gep69.i.i, align 2, !tbaa !12
  %10 = zext i16 %9 to i32                        ; 2 uses
  %wide.trip.count.i.i = zext i32 %indvars.iv55.i.i to i64
  %min.iters.check = icmp ult i64 %8, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i.i
  %i.cq = mul i64 %i.bu, %indvars.iv57.i.i        ; 4 uses
  %scevgep47 = getelementptr i8, ptr %i.bx, i64 %i.cq
  %i.cr = mul i64 %indvars.iv57.i.i, %i.br
  %i.cs = xor i64 %i.cr, -1
  %i.ct = zext nneg i32 %indvars.iv55.i.i to i64
  %i.cu = add i64 %i.cs, %i.ct
  %i.cv = shl nsw i64 %i.cu, 1                    ; 2 uses
  %scevgep48 = getelementptr i8, ptr %scevgep47, i64 %i.cv
  %scevgep46 = getelementptr i8, ptr %i.by, i64 %i.cq
  %i.cw = getelementptr i8, ptr %5, i64 %i.cq
  %scevgep44 = getelementptr i8, ptr %i.cw, i64 2
  %scevgep45 = getelementptr i8, ptr %scevgep44, i64 %i.cv
  %scevgep = getelementptr nuw i8, ptr %5, i64 %i.cq
  %bound0 = icmp ult ptr %scevgep, %scevgep48
  %bound1 = icmp ult ptr %scevgep46, %scevgep45
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader, label %vector.ph49

vector.ph49:                                      ; preds = %vector.memcheck
  %n.vec = and i64 %8, -8                         ; 3 uses
  %i.cx = add i64 %indvars.iv.i7.i, %n.vec
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %10, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body50

vector.body50:                                    ; preds = %vector.body50, %vector.ph49
  %index51 = phi i64 [ 0, %vector.ph49 ], [ %index.next54, %vector.body50 ] ; 2 uses
  %i.cy = add nuw i64 %indvars.iv.i7.i, %index51  ; 2 uses
  %i.cz = getelementptr [2 x i8], ptr %invariant.gep.i.i, i64 %i.cy ; 2 uses
  %wide.load52 = load <8 x i16>, ptr %i.cz, align 2, !tbaa !12, !alias.scope !103 ; 2 uses
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.cy ; 2 uses
  %wide.load53 = load <8 x i16>, ptr %i.da, align 2, !tbaa !12, !alias.scope !106, !noalias !103 ; 2 uses
  %i.db = zext <8 x i16> %wide.load52 to <8 x i32>
  %i.dc = zext <8 x i16> %wide.load53 to <8 x i32>
  %i.dd = add <8 x i16> %wide.load53, %wide.load52 ; 2 uses
  %i.de = add <8 x i16> %i.dd, splat (i16 -3329)  ; 2 uses
  %i.df = icmp slt <8 x i16> %i.de, zeroinitializer
  %i.dg = select <8 x i1> %i.df, <8 x i16> %i.dd, <8 x i16> zeroinitializer
  %i.dh = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.de, <8 x i16> zeroinitializer)
  %i.di = or <8 x i16> %i.dg, %i.dh
  store <8 x i16> %i.di, ptr %i.da, align 2, !tbaa !12, !alias.scope !106, !noalias !103
  %i.dj = sub nsw <8 x i32> %i.dc, %i.db
  %i.dk = add nsw <8 x i32> %i.dj, splat (i32 3329)
  %i.dl = mul <8 x i32> %i.dk, %broadcast.splat   ; 2 uses
  %i.dm = zext <8 x i32> %i.dl to <8 x i64>
  %i.dn = mul nuw nsw <8 x i64> %i.dm, splat (i64 5039)
  %i.do = lshr <8 x i64> %i.dn, splat (i64 24)
  %i.dp = trunc nuw nsw <8 x i64> %i.do to <8 x i32>
  %i.dq = mul <8 x i32> %i.dp, splat (i32 62207)
  %i.dr = add <8 x i32> %i.dq, %i.dl
  %i.ds = trunc <8 x i32> %i.dr to <8 x i16>      ; 2 uses
  %i.dt = add <8 x i16> %i.ds, splat (i16 -3329)  ; 2 uses
  %i.du = icmp slt <8 x i16> %i.dt, zeroinitializer
  %i.dv = select <8 x i1> %i.du, <8 x i16> %i.ds, <8 x i16> zeroinitializer
  %i.dw = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.dt, <8 x i16> zeroinitializer)
  %i.dx = or <8 x i16> %i.dv, %i.dw
  store <8 x i16> %i.dx, ptr %i.cz, align 2, !tbaa !12, !alias.scope !103
  %index.next54 = add nuw i64 %index51, 8         ; 2 uses
  %i.dy = icmp eq i64 %index.next54, %n.vec
  br i1 %i.dy, label %middle.block55, label %vector.body50, !llvm.loop !108

middle.block55:                                   ; preds = %vector.body50
  %cmp.n = icmp eq i64 %8, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph.preheader.i.i, %middle.block55
  %indvars.iv52.i.i.ph = phi i64 [ %indvars.iv.i7.i, %vector.memcheck ], [ %indvars.iv.i7.i, %.lr.ph.preheader.i.i ], [ %i.cx, %middle.block55 ]
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
  %i.dz = load i16, ptr %gep.i.i, align 2, !tbaa !12 ; 2 uses
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %indvars.iv52.i.i ; 2 uses
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !12 ; 2 uses
  %i.ec = zext i16 %i.dz to i32
  %i.ed = zext i16 %i.eb to i32
  %i.ee = add i16 %i.eb, %i.dz                    ; 2 uses
  %i.ef = add i16 %i.ee, -3329                    ; 2 uses
  %isneg.i.i.i = icmp slt i16 %i.ef, 0
  %i.eg = select i1 %isneg.i.i.i, i16 %i.ee, i16 0
  %i.eh = tail call i16 @llvm.smax.i16(i16 %i.ef, i16 0)
  %i.ei = or i16 %i.eg, %i.eh
  store i16 %i.ei, ptr %i.ea, align 2, !tbaa !12
  %reass.sub = sub nsw i32 %i.ed, %i.ec
  %i.ej = add nsw i32 %reass.sub, 3329
  %i.ek = mul i32 %i.ej, %10                      ; 2 uses
  %i.el = zext i32 %i.ek to i64
  %i.em = mul nuw nsw i64 %i.el, 5039
  %i.en = lshr i64 %i.em, 24
  %i.eo = trunc nuw nsw i64 %i.en to i32
  %.neg.i.i.i = mul i32 %i.eo, 62207
  %i.ep = add i32 %.neg.i.i.i, %i.ek
  %i.eq = trunc i32 %i.ep to i16                  ; 2 uses
  %i.er = add i16 %i.eq, -3329                    ; 2 uses
  %isneg.i.i.i.i = icmp slt i16 %i.er, 0
  %i.es = select i1 %isneg.i.i.i.i, i16 %i.eq, i16 0
  %i.et = tail call i16 @llvm.smax.i16(i16 %i.er, i16 0)
  %i.eu = or i16 %i.es, %i.et
  store i16 %i.eu, ptr %gep.i.i, align 2, !tbaa !12
  %indvars.iv.next53.i.i = add nuw nsw i64 %indvars.iv52.i.i, 1 ; 2 uses
  %exitcond.not.i8.i = icmp eq i64 %indvars.iv.next53.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i8.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !109

vector.body65:                                    ; preds = %vector.body58, %vector.body65
  %index66 = phi i64 [ %index.next71, %vector.body65 ], [ 0, %vector.body58 ] ; 3 uses
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %index66 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16 ; 2 uses
  %wide.load67 = load <8 x i16>, ptr %i.ev, align 2, !tbaa !12
  %wide.load68 = load <8 x i16>, ptr %i.ew, align 2, !tbaa !12
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %index66 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %wide.load69 = load <8 x i16>, ptr %i.ex, align 2, !tbaa !12
  %wide.load70 = load <8 x i16>, ptr %i.ey, align 2, !tbaa !12
  %i.ez = sub <8 x i16> %wide.load67, %wide.load69 ; 3 uses
  %i.fa = sub <8 x i16> %wide.load68, %wide.load70 ; 3 uses
  %i.fb = add <8 x i16> %i.ez, splat (i16 3329)
  %i.fc = add <8 x i16> %i.fa, splat (i16 3329)
  %i.fd = icmp slt <8 x i16> %i.ez, zeroinitializer
  %i.fe = icmp slt <8 x i16> %i.fa, zeroinitializer
  %i.ff = select <8 x i1> %i.fd, <8 x i16> %i.fb, <8 x i16> zeroinitializer
  %i.fg = select <8 x i1> %i.fe, <8 x i16> %i.fc, <8 x i16> zeroinitializer
  %i.fh = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ez, <8 x i16> zeroinitializer)
  %i.fi = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.fa, <8 x i16> zeroinitializer)
  %i.fj = or <8 x i16> %i.ff, %i.fh
  %i.fk = or <8 x i16> %i.fg, %i.fi
  store <8 x i16> %i.fj, ptr %i.ev, align 2, !tbaa !12
  store <8 x i16> %i.fk, ptr %i.ew, align 2, !tbaa !12
  %index.next71 = add nuw i64 %index66, 16        ; 2 uses
  %i.fl = icmp eq i64 %index.next71, 256
  br i1 %i.fl, label %vector.body75, label %vector.body65, !llvm.loop !110

vector.body75:                                    ; preds = %vector.body65, %vector.body75
  %index76 = phi i64 [ %index.next78, %vector.body75 ], [ 0, %vector.body65 ] ; 2 uses
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %index76 ; 2 uses
  %wide.load77 = load <8 x i16>, ptr %i.fm, align 2, !tbaa !12
  %i.fn = zext <8 x i16> %wide.load77 to <8 x i32> ; 2 uses
  %i.fo = shl nuw nsw <8 x i32> %i.fn, splat (i32 1)
  %i.fp = mul nuw nsw <8 x i32> %i.fn, splat (i32 10078)
  %i.fq = lshr <8 x i32> %i.fp, splat (i32 24)    ; 2 uses
  %i.fr = mul nsw <8 x i32> %i.fq, splat (i32 -3329)
  %i.fs = add nsw <8 x i32> %i.fr, %i.fo          ; 2 uses
  %i.ft = icmp ugt <8 x i32> %i.fs, splat (i32 1664)
  %i.fu = icmp ugt <8 x i32> %i.fs, splat (i32 4993)
  %i.fv = trunc <8 x i32> %i.fq to <8 x i1>
  %i.fw = xor <8 x i1> %i.ft, %i.fv
  %i.fx = xor <8 x i1> %i.fu, %i.fw
  %i.fy = zext <8 x i1> %i.fx to <8 x i16>
  store <8 x i16> %i.fy, ptr %i.fm, align 2, !tbaa !12
  %index.next78 = add nuw i64 %index76, 8         ; 2 uses
  %i.fz = icmp eq i64 %index.next78, 256
  br i1 %i.fz, label %vector.body82, label %vector.body75, !llvm.loop !111

vector.body82:                                    ; preds = %vector.body75, %vector.body82
  %index83 = phi i64 [ %index.next84, %vector.body82 ], [ 0, %vector.body75 ] ; 3 uses
  %i.ga = shl nuw i64 %index83, 3                 ; 8 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.a, i64 %index83
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.ga ; 8 uses
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.ga ; 8 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %i.gf = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.ga ; 8 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 32
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.ga ; 8 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 48
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.ga ; 8 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 64
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.ga ; 8 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 80
  %i.gn = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.ga ; 8 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 96
  %i.gp = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.ga ; 8 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 112
  %i.gr = load i16, ptr %i.gc, align 2, !tbaa !12
  %i.gs = load i16, ptr %i.ge, align 2, !tbaa !12
  %i.gt = load i16, ptr %i.gg, align 2, !tbaa !12
  %i.gu = load i16, ptr %i.gi, align 2, !tbaa !12
  %i.gv = load i16, ptr %i.gk, align 2, !tbaa !12
  %i.gw = load i16, ptr %i.gm, align 2, !tbaa !12
  %i.gx = load i16, ptr %i.go, align 2, !tbaa !12
  %i.gy = load i16, ptr %i.gq, align 2, !tbaa !12
  %i.gz = insertelement <8 x i16> poison, i16 %i.gr, i64 0
  %i.ha = insertelement <8 x i16> %i.gz, i16 %i.gs, i64 1
  %i.hb = insertelement <8 x i16> %i.ha, i16 %i.gt, i64 2
  %i.hc = insertelement <8 x i16> %i.hb, i16 %i.gu, i64 3
  %i.hd = insertelement <8 x i16> %i.hc, i16 %i.gv, i64 4
  %i.he = insertelement <8 x i16> %i.hd, i16 %i.gw, i64 5
  %i.hf = insertelement <8 x i16> %i.he, i16 %i.gx, i64 6
  %i.hg = insertelement <8 x i16> %i.hf, i16 %i.gy, i64 7
  %i.hh = trunc <8 x i16> %i.hg to <8 x i8>
  %i.hi = and <8 x i8> %i.hh, splat (i8 1)
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gc, i64 2
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gd, i64 18
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gf, i64 34
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gh, i64 50
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gj, i64 66
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gl, i64 82
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gn, i64 98
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gp, i64 114
  %i.hr = load i16, ptr %i.hj, align 2, !tbaa !12
  %i.hs = load i16, ptr %i.hk, align 2, !tbaa !12
  %i.ht = load i16, ptr %i.hl, align 2, !tbaa !12
  %i.hu = load i16, ptr %i.hm, align 2, !tbaa !12
  %i.hv = load i16, ptr %i.hn, align 2, !tbaa !12
  %i.hw = load i16, ptr %i.ho, align 2, !tbaa !12
  %i.hx = load i16, ptr %i.hp, align 2, !tbaa !12
  %i.hy = load i16, ptr %i.hq, align 2, !tbaa !12
  %i.hz = insertelement <8 x i16> poison, i16 %i.hr, i64 0
  %i.ia = insertelement <8 x i16> %i.hz, i16 %i.hs, i64 1
  %i.ib = insertelement <8 x i16> %i.ia, i16 %i.ht, i64 2
  %i.ic = insertelement <8 x i16> %i.ib, i16 %i.hu, i64 3
  %i.id = insertelement <8 x i16> %i.ic, i16 %i.hv, i64 4
  %i.ie = insertelement <8 x i16> %i.id, i16 %i.hw, i64 5
  %i.if = insertelement <8 x i16> %i.ie, i16 %i.hx, i64 6
  %i.ig = insertelement <8 x i16> %i.if, i16 %i.hy, i64 7
  %i.ih = trunc <8 x i16> %i.ig to <8 x i8>
  %i.ii = shl <8 x i8> %i.ih, splat (i8 1)
  %i.ij = and <8 x i8> %i.ii, splat (i8 2)
  %i.ik = or disjoint <8 x i8> %i.ij, %i.hi
  %i.il = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  %i.im = getelementptr inbounds nuw i8, ptr %i.gd, i64 20
  %i.in = getelementptr inbounds nuw i8, ptr %i.gf, i64 36
  %i.io = getelementptr inbounds nuw i8, ptr %i.gh, i64 52
  %i.ip = getelementptr inbounds nuw i8, ptr %i.gj, i64 68
  %i.iq = getelementptr inbounds nuw i8, ptr %i.gl, i64 84
  %i.ir = getelementptr inbounds nuw i8, ptr %i.gn, i64 100
  %i.is = getelementptr inbounds nuw i8, ptr %i.gp, i64 116
  %i.it = load i16, ptr %i.il, align 2, !tbaa !12
  %i.iu = load i16, ptr %i.im, align 2, !tbaa !12
  %i.iv = load i16, ptr %i.in, align 2, !tbaa !12
  %i.iw = load i16, ptr %i.io, align 2, !tbaa !12
  %i.ix = load i16, ptr %i.ip, align 2, !tbaa !12
  %i.iy = load i16, ptr %i.iq, align 2, !tbaa !12
  %i.iz = load i16, ptr %i.ir, align 2, !tbaa !12
  %i.ja = load i16, ptr %i.is, align 2, !tbaa !12
  %i.jb = insertelement <8 x i16> poison, i16 %i.it, i64 0
  %i.jc = insertelement <8 x i16> %i.jb, i16 %i.iu, i64 1
  %i.jd = insertelement <8 x i16> %i.jc, i16 %i.iv, i64 2
  %i.je = insertelement <8 x i16> %i.jd, i16 %i.iw, i64 3
  %i.jf = insertelement <8 x i16> %i.je, i16 %i.ix, i64 4
  %i.jg = insertelement <8 x i16> %i.jf, i16 %i.iy, i64 5
  %i.jh = insertelement <8 x i16> %i.jg, i16 %i.iz, i64 6
  %i.ji = insertelement <8 x i16> %i.jh, i16 %i.ja, i64 7
  %i.jj = trunc <8 x i16> %i.ji to <8 x i8>
  %i.jk = shl <8 x i8> %i.jj, splat (i8 2)
  %i.jl = and <8 x i8> %i.jk, splat (i8 4)
  %i.jm = or disjoint <8 x i8> %i.ik, %i.jl
  %i.jn = getelementptr inbounds nuw i8, ptr %i.gc, i64 6
  %i.jo = getelementptr inbounds nuw i8, ptr %i.gd, i64 22
  %i.jp = getelementptr inbounds nuw i8, ptr %i.gf, i64 38
  %i.jq = getelementptr inbounds nuw i8, ptr %i.gh, i64 54
  %i.jr = getelementptr inbounds nuw i8, ptr %i.gj, i64 70
  %i.js = getelementptr inbounds nuw i8, ptr %i.gl, i64 86
  %i.jt = getelementptr inbounds nuw i8, ptr %i.gn, i64 102
  %i.ju = getelementptr inbounds nuw i8, ptr %i.gp, i64 118
  %i.jv = load i16, ptr %i.jn, align 2, !tbaa !12
  %i.jw = load i16, ptr %i.jo, align 2, !tbaa !12
  %i.jx = load i16, ptr %i.jp, align 2, !tbaa !12
  %i.jy = load i16, ptr %i.jq, align 2, !tbaa !12
  %i.jz = load i16, ptr %i.jr, align 2, !tbaa !12
  %i.ka = load i16, ptr %i.js, align 2, !tbaa !12
  %i.kb = load i16, ptr %i.jt, align 2, !tbaa !12
  %i.kc = load i16, ptr %i.ju, align 2, !tbaa !12
  %i.kd = insertelement <8 x i16> poison, i16 %i.jv, i64 0
  %i.ke = insertelement <8 x i16> %i.kd, i16 %i.jw, i64 1
  %i.kf = insertelement <8 x i16> %i.ke, i16 %i.jx, i64 2
  %i.kg = insertelement <8 x i16> %i.kf, i16 %i.jy, i64 3
  %i.kh = insertelement <8 x i16> %i.kg, i16 %i.jz, i64 4
  %i.ki = insertelement <8 x i16> %i.kh, i16 %i.ka, i64 5
  %i.kj = insertelement <8 x i16> %i.ki, i16 %i.kb, i64 6
  %i.kk = insertelement <8 x i16> %i.kj, i16 %i.kc, i64 7
  %i.kl = trunc <8 x i16> %i.kk to <8 x i8>
  %i.km = shl <8 x i8> %i.kl, splat (i8 3)
  %i.kn = and <8 x i8> %i.km, splat (i8 8)
  %i.ko = or disjoint <8 x i8> %i.jm, %i.kn
  %i.kp = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.kq = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  %i.kr = getelementptr inbounds nuw i8, ptr %i.gf, i64 40
  %i.ks = getelementptr inbounds nuw i8, ptr %i.gh, i64 56
  %i.kt = getelementptr inbounds nuw i8, ptr %i.gj, i64 72
  %i.ku = getelementptr inbounds nuw i8, ptr %i.gl, i64 88
  %i.kv = getelementptr inbounds nuw i8, ptr %i.gn, i64 104
  %i.kw = getelementptr inbounds nuw i8, ptr %i.gp, i64 120
  %i.kx = load i16, ptr %i.kp, align 2, !tbaa !12
  %i.ky = load i16, ptr %i.kq, align 2, !tbaa !12
  %i.kz = load i16, ptr %i.kr, align 2, !tbaa !12
  %i.la = load i16, ptr %i.ks, align 2, !tbaa !12
  %i.lb = load i16, ptr %i.kt, align 2, !tbaa !12
end_hunk_1

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_audiotypecvt?download=true
inline.NumInlined: 20
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@ConvertAudioToFloat:bb.a
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 -12
  %i.ei = getelementptr inbounds i8, ptr %i.eg, i64 -28
  %i.ej = zext <4 x i16> %wide.load173 to <4 x i32>
  %i.ek = xor <4 x i32> %i.ej, splat (i32 1132494848)
  %i.el = bitcast <4 x i32> %i.ek to <4 x float>
  %reverse177 = fadd <4 x float> %i.el, splat (float -2.570000e+02)
  %i.em = zext <4 x i16> %wide.load174 to <4 x i32>
  %i.en = xor <4 x i32> %i.em, splat (i32 1132494848)
  %i.eo = bitcast <4 x i32> %i.en to <4 x float>
  %reverse178 = fadd <4 x float> %i.eo, splat (float -2.570000e+02)
  store <4 x float> %reverse177, ptr %i.eh, align 4, !alias.scope !49, !noalias !48
  store <4 x float> %reverse178, ptr %i.ei, align 4, !alias.scope !49, !noalias !48
  %index.next179 = add nuw i64 %index172, 8       ; 2 uses
  %i.ep = icmp eq i64 %index.next179, %n.vec170
  br i1 %i.ep, label %middle.block180, label %vector.body171, !llvm.loop !30

middle.block180:                                  ; preds = %vector.body171
  %cmp.n181 = icmp eq i64 %n.vec170, %wide.trip.count.i
  br i1 %cmp.n181, label %SDL_Convert_S8_to_F32_Scalar.exit, label %.lr.ph.i40.preheader263

.lr.ph.i40.preheader263:                          ; preds = %vector.memcheck168, %.lr.ph.i40.preheader, %middle.block180
  %indvars.iv.i41.ph = phi i64 [ %wide.trip.count.i, %vector.memcheck168 ], [ %wide.trip.count.i, %.lr.ph.i40.preheader ], [ %i.ea, %middle.block180 ]
  br label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %.lr.ph.i40.preheader263, %.lr.ph.i40
  %indvars.iv.i41 = phi i64 [ %indvars.iv.next.i42, %.lr.ph.i40 ], [ %indvars.iv.i41.ph, %.lr.ph.i40.preheader263 ] ; 2 uses
  %indvars.iv.next.i42 = add nsw i64 %indvars.iv.i41, -1 ; 3 uses
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.i42
  %i.er = load i16, ptr %i.eq, align 2
  %i.es = zext i16 %i.er to i32
  %i.et = xor i32 %i.es, 1132494848
  %i.eu = bitcast i32 %i.et to float
  %i.ev = fadd float %i.eu, -2.570000e+02
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i42
  store float %i.ev, ptr %i.ew, align 4
  %i.ex = icmp samesign ugt i64 %indvars.iv.i41, 1
  br i1 %i.ex, label %.lr.ph.i40, label %SDL_Convert_S8_to_F32_Scalar.exit, !llvm.loop !31

bb.f:                                             ; preds = %bb.a
  %i.ey = icmp sgt i32 %2, 0
  br i1 %i.ey, label %.lr.ph.preheader.i44, label %SDL_Convert_S8_to_F32_Scalar.exit

.lr.ph.preheader.i44:                             ; preds = %bb.f
  %i.ez = zext nneg i32 %2 to i64                 ; 5 uses
  %min.iters.check125 = icmp ult i32 %2, 8
  %i.fa = sub i64 %i.b, %i.a
  %diff.check127 = icmp ugt i64 %i.fa, -32
  %or.cond258 = or i1 %min.iters.check125, %diff.check127
  br i1 %or.cond258, label %.lr.ph.i45.preheader, label %vector.ph128

vector.ph128:                                     ; preds = %.lr.ph.preheader.i44
  %n.vec129 = and i64 %i.ez, 2147483640           ; 2 uses
  %i.fb = and i64 %i.ez, 7
  br label %vector.body130

vector.body130:                                   ; preds = %vector.body130, %vector.ph128
  %index131 = phi i64 [ 0, %vector.ph128 ], [ %index.next138, %vector.body130 ] ; 2 uses
  %i.fc = xor i64 %index131, -1
  %i.fd = add i64 %i.fc, %i.ez                    ; 2 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fd ; 2 uses
  %i.ff = getelementptr inbounds i8, ptr %i.fe, i64 -12
  %i.fg = getelementptr inbounds i8, ptr %i.fe, i64 -28
  %wide.load132 = load <4 x i32>, ptr %i.ff, align 4
  %wide.load133 = load <4 x i32>, ptr %i.fg, align 4
  %i.fh = sitofp <4 x i32> %wide.load132 to <4 x float>
  %i.fi = sitofp <4 x i32> %wide.load133 to <4 x float>
  %i.fj = fmul nnan <4 x float> %i.fh, splat (float f0x30000000)
  %i.fk = fmul nnan <4 x float> %i.fi, splat (float f0x30000000)
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fd ; 2 uses
  %i.fm = getelementptr inbounds i8, ptr %i.fl, i64 -12
  %i.fn = getelementptr inbounds i8, ptr %i.fl, i64 -28
  store <4 x float> %i.fj, ptr %i.fm, align 4
  store <4 x float> %i.fk, ptr %i.fn, align 4
  %index.next138 = add nuw i64 %index131, 8       ; 2 uses
  %i.fo = icmp eq i64 %index.next138, %n.vec129
  br i1 %i.fo, label %middle.block139, label %vector.body130, !llvm.loop !32

middle.block139:                                  ; preds = %vector.body130
  %cmp.n140 = icmp eq i64 %n.vec129, %i.ez
  br i1 %cmp.n140, label %SDL_Convert_S8_to_F32_Scalar.exit, label %.lr.ph.i45.preheader

.lr.ph.i45.preheader:                             ; preds = %.lr.ph.preheader.i44, %middle.block139
  %indvars.iv.i46.ph = phi i64 [ %i.ez, %.lr.ph.preheader.i44 ], [ %i.fb, %middle.block139 ]
  br label %.lr.ph.i45

.lr.ph.i45:                                       ; preds = %.lr.ph.i45.preheader, %.lr.ph.i45
  %indvars.iv.i46 = phi i64 [ %indvars.iv.next.i47, %.lr.ph.i45 ], [ %indvars.iv.i46.ph, %.lr.ph.i45.preheader ] ; 2 uses
  %indvars.iv.next.i47 = add nsw i64 %indvars.iv.i46, -1 ; 3 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i47
  %i.fq = load i32, ptr %i.fp, align 4
  %i.fr = sitofp i32 %i.fq to float
  %i.fs = fmul nnan float %i.fr, f0x30000000
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i47
  store float %i.fs, ptr %i.ft, align 4
  %i.fu = icmp samesign ugt i64 %indvars.iv.i46, 1
  br i1 %i.fu, label %.lr.ph.i45, label %SDL_Convert_S8_to_F32_Scalar.exit, !llvm.loop !33

bb.g:                                             ; preds = %bb.a
  %i.fv = icmp sgt i32 %2, 0
  br i1 %i.fv, label %.lr.ph.preheader.i48, label %SDL_Convert_S8_to_F32_Scalar.exit

.lr.ph.preheader.i48:                             ; preds = %bb.g
  %wide.trip.count.i49 = zext nneg i32 %2 to i64  ; 10 uses
  %min.iters.check94 = icmp ult i32 %2, 8
  %i.fw = sub i64 %i.a, %i.b
  %diff.check96 = icmp ugt i64 %i.fw, -32
  %or.cond259 = or i1 %min.iters.check94, %diff.check96
  br i1 %or.cond259, label %.lr.ph.i50.preheader, label %vector.ph97

vector.ph97:                                      ; preds = %.lr.ph.preheader.i48
  %n.vec98 = and i64 %wide.trip.count.i49, 2147483640 ; 3 uses
  br label %vector.body99

vector.body99:                                    ; preds = %vector.body99, %vector.ph97
  %index100 = phi i64 [ 0, %vector.ph97 ], [ %index.next103, %vector.body99 ] ; 3 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index100 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %wide.load101 = load <4 x i32>, ptr %i.fx, align 4
  %wide.load102 = load <4 x i32>, ptr %i.fy, align 4
  %i.fz = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load101)
  %i.ga = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load102)
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index100 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  store <4 x i32> %i.fz, ptr %i.gb, align 4
  store <4 x i32> %i.ga, ptr %i.gc, align 4
  %index.next103 = add nuw i64 %index100, 8       ; 2 uses
  %i.gd = icmp eq i64 %index.next103, %n.vec98
  br i1 %i.gd, label %middle.block104, label %vector.body99, !llvm.loop !34

middle.block104:                                  ; preds = %vector.body99
  %cmp.n105 = icmp eq i64 %n.vec98, %wide.trip.count.i49
  br i1 %cmp.n105, label %.lr.ph.i55.preheader, label %.lr.ph.i50.preheader

.lr.ph.i50.preheader:                             ; preds = %.lr.ph.preheader.i48, %middle.block104
  %indvars.iv.i51.ph = phi i64 [ 0, %.lr.ph.preheader.i48 ], [ %n.vec98, %middle.block104 ] ; 3 uses
  %xtraiter269 = and i64 %wide.trip.count.i49, 3  ; 2 uses
  %lcmp.mod270.not = icmp eq i64 %xtraiter269, 0
  br i1 %lcmp.mod270.not, label %.lr.ph.i50.prol.loopexit, label %.lr.ph.i50.prol

.lr.ph.i50.prol:                                  ; preds = %.lr.ph.i50.preheader, %.lr.ph.i50.prol
  %indvars.iv.i51.prol = phi i64 [ %indvars.iv.next.i52.prol, %.lr.ph.i50.prol ], [ %indvars.iv.i51.ph, %.lr.ph.i50.preheader ] ; 3 uses
  %prol.iter271 = phi i64 [ %prol.iter271.next, %.lr.ph.i50.prol ], [ 0, %.lr.ph.i50.preheader ]
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i51.prol
  %i.gf = load i32, ptr %i.ge, align 4
  %i.gg = tail call i32 @llvm.bswap.i32(i32 %i.gf)
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i51.prol
  store i32 %i.gg, ptr %i.gh, align 4
  %indvars.iv.next.i52.prol = add nuw nsw i64 %indvars.iv.i51.prol, 1 ; 2 uses
  %prol.iter271.next = add i64 %prol.iter271, 1   ; 2 uses
  %prol.iter271.cmp.not = icmp eq i64 %prol.iter271.next, %xtraiter269
  br i1 %prol.iter271.cmp.not, label %.lr.ph.i50.prol.loopexit, label %.lr.ph.i50.prol, !llvm.loop !35

.lr.ph.i50.prol.loopexit:                         ; preds = %.lr.ph.i50.prol, %.lr.ph.i50.preheader
  %indvars.iv.i51.unr = phi i64 [ %indvars.iv.i51.ph, %.lr.ph.i50.preheader ], [ %indvars.iv.next.i52.prol, %.lr.ph.i50.prol ]
  %i.gi = sub nsw i64 %indvars.iv.i51.ph, %wide.trip.count.i49
  %i.gj = icmp ugt i64 %i.gi, -4
  br i1 %i.gj, label %.lr.ph.i55.preheader, label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %.lr.ph.i50.prol.loopexit, %.lr.ph.i50
  %indvars.iv.i51 = phi i64 [ %indvars.iv.next.i52.3, %.lr.ph.i50 ], [ %indvars.iv.i51.unr, %.lr.ph.i50.prol.loopexit ] ; 6 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i51
  %i.gl = load i32, ptr %i.gk, align 4
  %i.gm = tail call i32 @llvm.bswap.i32(i32 %i.gl)
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i51
  store i32 %i.gm, ptr %i.gn, align 4
  %indvars.iv.next.i52 = add nuw nsw i64 %indvars.iv.i51, 1 ; 2 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i52
  %i.gp = load i32, ptr %i.go, align 4
  %i.gq = tail call i32 @llvm.bswap.i32(i32 %i.gp)
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i52
  store i32 %i.gq, ptr %i.gr, align 4
  %indvars.iv.next.i52.1 = add nuw nsw i64 %indvars.iv.i51, 2 ; 2 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i52.1
  %i.gt = load i32, ptr %i.gs, align 4
  %i.gu = tail call i32 @llvm.bswap.i32(i32 %i.gt)
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i52.1
  store i32 %i.gu, ptr %i.gv, align 4
  %indvars.iv.next.i52.2 = add nuw nsw i64 %indvars.iv.i51, 3 ; 2 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i52.2
  %i.gx = load i32, ptr %i.gw, align 4
  %i.gy = tail call i32 @llvm.bswap.i32(i32 %i.gx)
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i52.2
  store i32 %i.gy, ptr %i.gz, align 4
  %indvars.iv.next.i52.3 = add nuw nsw i64 %indvars.iv.i51, 4 ; 2 uses
  %exitcond.not.i53.3 = icmp eq i64 %indvars.iv.next.i52.3, %wide.trip.count.i49
  br i1 %exitcond.not.i53.3, label %.lr.ph.i55.preheader, label %.lr.ph.i50, !llvm.loop !36

.lr.ph.i55.preheader:                             ; preds = %.lr.ph.i50.prol.loopexit, %.lr.ph.i50, %middle.block104
  %min.iters.check108 = icmp ult i32 %2, 8
  br i1 %min.iters.check108, label %.lr.ph.i55.preheader266, label %vector.ph109

vector.ph109:                                     ; preds = %.lr.ph.i55.preheader
  %n.vec110 = and i64 %wide.trip.count.i49, 2147483640 ; 2 uses
  %i.ha = and i64 %wide.trip.count.i49, 7
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %wide.trip.count.i49
  br label %vector.body111

vector.body111:                                   ; preds = %vector.body111, %vector.ph109
  %index112 = phi i64 [ 0, %vector.ph109 ], [ %index.next118, %vector.body111 ] ; 2 uses
  %i.hb = xor i64 %index112, -1
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.hb ; 2 uses
  %i.hc = getelementptr inbounds i8, ptr %gep, i64 -12 ; 2 uses
  %i.hd = getelementptr inbounds i8, ptr %gep, i64 -28 ; 2 uses
  %wide.load113 = load <4 x i32>, ptr %i.hc, align 4
  %wide.load114 = load <4 x i32>, ptr %i.hd, align 4
  %i.he = sitofp <4 x i32> %wide.load113 to <4 x float>
  %i.hf = sitofp <4 x i32> %wide.load114 to <4 x float>
  %i.hg = fmul nnan <4 x float> %i.he, splat (float f0x30000000)
  %i.hh = fmul nnan <4 x float> %i.hf, splat (float f0x30000000)
  store <4 x float> %i.hg, ptr %i.hc, align 4
  store <4 x float> %i.hh, ptr %i.hd, align 4
  %index.next118 = add nuw i64 %index112, 8       ; 2 uses
  %i.hi = icmp eq i64 %index.next118, %n.vec110
  br i1 %i.hi, label %middle.block119, label %vector.body111, !llvm.loop !37

middle.block119:                                  ; preds = %vector.body111
  %cmp.n120 = icmp eq i64 %n.vec110, %wide.trip.count.i49
  br i1 %cmp.n120, label %SDL_Convert_S8_to_F32_Scalar.exit, label %.lr.ph.i55.preheader266

.lr.ph.i55.preheader266:                          ; preds = %.lr.ph.i55.preheader, %middle.block119
  %indvars.iv.i56.ph = phi i64 [ %wide.trip.count.i49, %.lr.ph.i55.preheader ], [ %i.ha, %middle.block119 ]
  br label %.lr.ph.i55

.lr.ph.i55:                                       ; preds = %.lr.ph.i55.preheader266, %.lr.ph.i55
  %indvars.iv.i56 = phi i64 [ %indvars.iv.next.i57, %.lr.ph.i55 ], [ %indvars.iv.i56.ph, %.lr.ph.i55.preheader266 ] ; 2 uses
  %indvars.iv.next.i57 = add nsw i64 %indvars.iv.i56, -1 ; 2 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i57 ; 2 uses
  %i.hk = load i32, ptr %i.hj, align 4
  %i.hl = sitofp i32 %i.hk to float
  %i.hm = fmul nnan float %i.hl, f0x30000000
  store float %i.hm, ptr %i.hj, align 4
  %i.hn = icmp samesign ugt i64 %indvars.iv.i56, 1
  br i1 %i.hn, label %.lr.ph.i55, label %SDL_Convert_S8_to_F32_Scalar.exit, !llvm.loop !38

bb.h:                                             ; preds = %bb.a
  %i.ho = icmp sgt i32 %2, 0
  br i1 %i.ho, label %.lr.ph.preheader.i59, label %SDL_Convert_S8_to_F32_Scalar.exit

.lr.ph.preheader.i59:                             ; preds = %bb.h
  %wide.trip.count.i60 = zext nneg i32 %2 to i64  ; 5 uses
  %min.iters.check = icmp ult i32 %2, 8
  %i.hp = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.hp, -32
  %or.cond260 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond260, label %.lr.ph.i61.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i59
  %n.vec = and i64 %wide.trip.count.i60, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %wide.load = load <4 x i32>, ptr %i.hq, align 4
  %wide.load90 = load <4 x i32>, ptr %i.hr, align 4
  %i.hs = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load)
  %i.ht = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load90)
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  store <4 x i32> %i.hs, ptr %i.hu, align 4
  store <4 x i32> %i.ht, ptr %i.hv, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hw = icmp eq i64 %index.next, %n.vec
  br i1 %i.hw, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i60
  br i1 %cmp.n, label %SDL_Convert_S8_to_F32_Scalar.exit, label %.lr.ph.i61.preheader

.lr.ph.i61.preheader:                             ; preds = %.lr.ph.preheader.i59, %middle.block
  %indvars.iv.i62.ph = phi i64 [ 0, %.lr.ph.preheader.i59 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i60, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i61.prol.loopexit, label %.lr.ph.i61.prol

.lr.ph.i61.prol:                                  ; preds = %.lr.ph.i61.preheader, %.lr.ph.i61.prol
  %indvars.iv.i62.prol = phi i64 [ %indvars.iv.next.i63.prol, %.lr.ph.i61.prol ], [ %indvars.iv.i62.ph, %.lr.ph.i61.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i61.prol ], [ 0, %.lr.ph.i61.preheader ]
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i62.prol
  %i.hy = load i32, ptr %i.hx, align 4
  %i.hz = tail call i32 @llvm.bswap.i32(i32 %i.hy)
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i62.prol
  store i32 %i.hz, ptr %i.ia, align 4
  %indvars.iv.next.i63.prol = add nuw nsw i64 %indvars.iv.i62.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i61.prol.loopexit, label %.lr.ph.i61.prol, !llvm.loop !40

.lr.ph.i61.prol.loopexit:                         ; preds = %.lr.ph.i61.prol, %.lr.ph.i61.preheader
  %indvars.iv.i62.unr = phi i64 [ %indvars.iv.i62.ph, %.lr.ph.i61.preheader ], [ %indvars.iv.next.i63.prol, %.lr.ph.i61.prol ]
  %i.ib = sub nsw i64 %indvars.iv.i62.ph, %wide.trip.count.i60
  %i.ic = icmp ugt i64 %i.ib, -4
  br i1 %i.ic, label %SDL_Convert_S8_to_F32_Scalar.exit, label %.lr.ph.i61

.lr.ph.i61:                                       ; preds = %.lr.ph.i61.prol.loopexit, %.lr.ph.i61
  %indvars.iv.i62 = phi i64 [ %indvars.iv.next.i63.3, %.lr.ph.i61 ], [ %indvars.iv.i62.unr, %.lr.ph.i61.prol.loopexit ] ; 6 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i62
  %i.ie = load i32, ptr %i.id, align 4
  %i.if = tail call i32 @llvm.bswap.i32(i32 %i.ie)
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i62
  store i32 %i.if, ptr %i.ig, align 4
  %indvars.iv.next.i63 = add nuw nsw i64 %indvars.iv.i62, 1 ; 2 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i63
  %i.ii = load i32, ptr %i.ih, align 4
  %i.ij = tail call i32 @llvm.bswap.i32(i32 %i.ii)
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i63
  store i32 %i.ij, ptr %i.ik, align 4
  %indvars.iv.next.i63.1 = add nuw nsw i64 %indvars.iv.i62, 2 ; 2 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i63.1
  %i.im = load i32, ptr %i.il, align 4
  %i.in = tail call i32 @llvm.bswap.i32(i32 %i.im)
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i63.1
  store i32 %i.in, ptr %i.io, align 4
  %indvars.iv.next.i63.2 = add nuw nsw i64 %indvars.iv.i62, 3 ; 2 uses
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i63.2
  %i.iq = load i32, ptr %i.ip, align 4
  %i.ir = tail call i32 @llvm.bswap.i32(i32 %i.iq)
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i63.2
  store i32 %i.ir, ptr %i.is, align 4
  %indvars.iv.next.i63.3 = add nuw nsw i64 %indvars.iv.i62, 4 ; 2 uses
  %exitcond.not.i64.3 = icmp eq i64 %indvars.iv.next.i63.3, %wide.trip.count.i60
  br i1 %exitcond.not.i64.3, label %SDL_Convert_S8_to_F32_Scalar.exit, label %.lr.ph.i61, !llvm.loop !41

SDL_Convert_S8_to_F32_Scalar.exit:                ; preds = %.lr.ph.i61.prol.loopexit, %.lr.ph.i61, %.lr.ph.i55, %.lr.ph.i45, %.lr.ph.i40, %.lr.ph.i32, %.lr.ph.i28, %.lr.ph.i, %middle.block, %middle.block119, %middle.block139, %middle.block180, %middle.block205, %middle.block230, %middle.block255, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @ConvertAudioFromFloat(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 3 uses
  switch i32 %3, label %SDL_Convert_F32_to_S8_Scalar.exit [
    i32 32776, label %bb.b
    i32 8, label %bb.c
    i32 32784, label %bb.d
    i32 36880, label %bb.e
    i32 32800, label %bb.f
    i32 36896, label %bb.g
    i32 37152, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %.lr.ph.preheader.i, label %SDL_Convert_F32_to_S8_Scalar.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count.i = zext nneg i32 %2 to i64    ; 7 uses
  %min.iters.check234 = icmp ult i32 %2, 8
  br i1 %min.iters.check234, label %.lr.ph.i.preheader, label %vector.memcheck235

vector.memcheck235:                               ; preds = %.lr.ph.preheader.i
  %i.d = getelementptr i8, ptr %0, i64 %wide.trip.count.i
  %i.e = shl nuw nsw i64 %wide.trip.count.i, 2
  %i.f = getelementptr i8, ptr %1, i64 %i.e
  %bound0236 = icmp ult ptr %0, %i.f
  %bound1237 = icmp ult ptr %1, %i.d
  %found.conflict238 = and i1 %bound0236, %bound1237
  br i1 %found.conflict238, label %.lr.ph.i.preheader, label %vector.ph239

vector.ph239:                                     ; preds = %vector.memcheck235
  %n.vec240 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body241

vector.body241:                                   ; preds = %vector.body241, %vector.ph239
  %index242 = phi i64 [ 0, %vector.ph239 ], [ %index.next245, %vector.body241 ] ; 3 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index242 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load243 = load <4 x float>, ptr %i.g, align 4, !alias.scope !82
  %wide.load244 = load <4 x float>, ptr %i.h, align 4, !alias.scope !82
  %i.i = fadd <4 x float> %wide.load243, splat (float 9.830400e+04)
  %i.j = fadd <4 x float> %wide.load244, splat (float 9.830400e+04)
  %i.k = bitcast <4 x float> %i.i to <4 x i32>    ; 2 uses
  %i.l = bitcast <4 x float> %i.j to <4 x i32>    ; 2 uses
  %i.m = add <4 x i32> %i.k, splat (i32 -1203765248) ; 2 uses
  %i.n = add <4 x i32> %i.l, splat (i32 -1203765248) ; 2 uses
  %i.o = ashr <4 x i32> %i.m, splat (i32 31)
  %i.p = ashr <4 x i32> %i.n, splat (i32 31)
  %i.q = xor <4 x i32> %i.o, %i.m
  %i.r = xor <4 x i32> %i.p, %i.n
  %i.s = sub <4 x i32> splat (i32 127), %i.q
  %i.t = sub <4 x i32> splat (i32 127), %i.r
  %i.u = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.s, <4 x i32> zeroinitializer)
  %i.v = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.t, <4 x i32> zeroinitializer)
  %i.w = xor <4 x i32> %i.u, %i.k
  %i.x = xor <4 x i32> %i.v, %i.l
  %i.y = trunc <4 x i32> %i.w to <4 x i8>
  %i.z = trunc <4 x i32> %i.x to <4 x i8>
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %index242 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store <4 x i8> %i.y, ptr %i.aa, align 1, !alias.scope !83, !noalias !82
  store <4 x i8> %i.z, ptr %i.ab, align 1, !alias.scope !83, !noalias !82
  %index.next245 = add nuw i64 %index242, 8       ; 2 uses
  %i.ac = icmp eq i64 %index.next245, %n.vec240
  br i1 %i.ac, label %middle.block246, label %vector.body241, !llvm.loop !53

middle.block246:                                  ; preds = %vector.body241
  %cmp.n247 = icmp eq i64 %n.vec240, %wide.trip.count.i
  br i1 %cmp.n247, label %SDL_Convert_F32_to_S8_Scalar.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck235, %.lr.ph.preheader.i, %middle.block246
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck235 ], [ 0, %.lr.ph.preheader.i ], [ %n.vec240, %middle.block246 ] ; 5 uses
  %xtraiter265 = and i64 %wide.trip.count.i, 1
  %lcmp.mod266.not = icmp eq i64 %xtraiter265, 0
  br i1 %lcmp.mod266.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i.ph
  %i.ae = load float, ptr %i.ad, align 4
  %i.af = fadd float %i.ae, 9.830400e+04
end_hunk_0

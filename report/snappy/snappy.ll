Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/snappy/original/snappy?download=true
inline.NumInlined: 501
inline.NumDeleted: 214
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN6snappy8internal16CompressFragmentEPKcmPcPti:bb.a
bb.t:                                             ; preds = %bb.s
  %.tr37.i = trunc i32 %i.iy to i8
  %i.ja = shl i8 %.tr37.i, 2
  %i.jb = getelementptr inbounds nuw i8, ptr %.0117, i64 1 ; 2 uses
  store i8 %i.ja, ptr %.0117, align 1, !tbaa !16
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.jb, ptr noundef nonnull readonly align 1 dereferenceable(16) %.0118, i64 16, i1 false)
  %sext = shl i64 %i.iw, 32
  %i.jc = ashr exact i64 %sext, 32
  %i.jd = getelementptr inbounds i8, ptr %i.jb, i64 %i.jc
  br label %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader

bb.u:                                             ; preds = %bb.s
  %i.je = icmp samesign ult i32 %i.ix, 61
  br i1 %i.je, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %.tr.i = trunc nuw nsw i32 %i.iy to i8
  %i.jf = shl nuw i8 %.tr.i, 2
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.jg = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.iy, i1 true)
  %i.jh = lshr i32 %i.jg, 3
  %i.ji = xor i32 %i.jh, 3                        ; 2 uses
  %.tr38.i = trunc nuw nsw i32 %i.ji to i8
  %i.jj = shl nuw nsw i8 %.tr38.i, 2
  %i.jk = or disjoint i8 %i.jj, -16
  %i.jl = getelementptr inbounds nuw i8, ptr %.0117, i64 1 ; 2 uses
  store i32 %i.iy, ptr %i.jl, align 1
  %i.jm = zext nneg i32 %i.ji to i64
  %i.jn = getelementptr i8, ptr %i.jl, i64 %i.jm
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sink.i = phi i8 [ %i.jf, %bb.v ], [ %i.jk, %bb.w ]
  %.pn.i = phi ptr [ %.0117, %bb.v ], [ %i.jn, %bb.w ]
  store i8 %.sink.i, ptr %.0117, align 1, !tbaa !16
  %.032.i = getelementptr i8, ptr %.pn.i, i64 1   ; 2 uses
  %i.jo = and i64 %i.iw, 2147483647
  %i.jp = getelementptr inbounds nuw i8, ptr %.032.i, i64 %i.jo ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %bb.x
  %.030.i = phi ptr [ %.032.i, %bb.x ], [ %i.jq, %bb.y ] ; 2 uses
  %.0.i = phi ptr [ %.0118, %bb.x ], [ %i.jr, %bb.y ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.030.i, ptr noundef nonnull align 1 dereferenceable(16) %.0.i, i64 16, i1 false)
  %i.jq = getelementptr inbounds nuw i8, ptr %.030.i, i64 16 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.js = icmp ult ptr %i.jq, %i.jp
  br i1 %i.js, label %bb.y, label %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader, !llvm.loop !0

_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader: ; preds = %bb.y, %bb.t, %bb.p
  %.9189.ph = phi i64 [ %.1181283.lcssa, %bb.p ], [ %.6186288, %bb.t ], [ %.6186288, %bb.y ]
  %.8148.ph = phi ptr [ %i.hq, %bb.p ], [ %i.iu, %bb.t ], [ %i.iu, %bb.y ]
  %.11129.ph = phi ptr [ %i.ht, %bb.p ], [ %.8126289, %bb.t ], [ %.8126289, %bb.y ]
  %.8.ph = phi ptr [ %i.hv, %bb.p ], [ %i.jd, %bb.t ], [ %i.jp, %bb.y ]
  br label %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit

_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit:    ; preds = %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader, %bb.ak
  %.9189 = phi i64 [ %.11191235, %bb.ak ], [ %.9189.ph, %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader ] ; 3 uses
  %.8148 = phi ptr [ %i.oy, %bb.ak ], [ %.8148.ph, %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader ] ; 6 uses
  %.11129 = phi ptr [ %i.od, %bb.ak ], [ %.11129.ph, %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader ] ; 11 uses
  %.8 = phi ptr [ %.9, %bb.ak ], [ %.8.ph, %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader ] ; 5 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.8148, i64 4 ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.11129, i64 4 ; 3 uses
  %.not.i = icmp ugt ptr %i.ju, %i.k
  br i1 %.not.i, label %bb.aa, label %bb.z, !prof !29

bb.z:                                             ; preds = %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit
  %.0.copyload.i.i = load i64, ptr %i.jt, align 1 ; 2 uses
  %.0.copyload.i62.i = load i64, ptr %i.ju, align 1 ; 3 uses
  %.not59.i = icmp eq i64 %.0.copyload.i.i, %.0.copyload.i62.i
  br i1 %.not59.i, label %.thread.i, label %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread, !prof !29

.thread.i:                                        ; preds = %bb.z
  %i.jv = getelementptr inbounds nuw i8, ptr %.11129, i64 12
  br label %bb.aa

_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread: ; preds = %bb.z
  %i.jw = xor i64 %.0.copyload.i62.i, %.0.copyload.i.i ; 2 uses
  %i.jx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.jw, i1 true) ; 2 uses
  %i.jy = lshr i64 %i.jx, 3
  %i.jz = getelementptr inbounds nuw i8, ptr %.11129, i64 8
  %.0.copyload.i63.i = load i64, ptr %i.jz, align 1
  %i.ka = tail call i64 asm "testl ${2:k}, ${2:k}\0A\09cmovzq $1, $0\0A\09", "=r,r,r,0,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i63.i, i64 %i.jw, i64 %.0.copyload.i62.i) #23, !srcloc !132
  %i.kb = and i64 %i.jx, 24
  %i.kc = lshr i64 %i.ka, %i.kb
  %i.kd = add nuw nsw i64 %i.jy, 4                ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.11129, i64 %i.kd
  %i.kf = ptrtoint ptr %.11129 to i64
  %i.kg = ptrtoint ptr %.8148 to i64
  %i.kh = sub i64 %i.kf, %i.kg
  br label %bb.af

bb.aa:                                            ; preds = %.thread.i, %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit
  %.182.i = phi i64 [ 0, %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit ], [ 8, %.thread.i ] ; 2 uses
  %.1.i = phi ptr [ %i.ju, %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit ], [ %i.jv, %.thread.i ] ; 4 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.8148, i64 68
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %i.ki, i32 0, i32 3, i32 1)
  %i.kj = getelementptr inbounds nuw i8, ptr %.1.i, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.kj, i32 0, i32 3, i32 1)
  %.not6098.i = icmp ugt ptr %.1.i, %i.k
  br i1 %.not6098.i, label %.preheader.i, label %.lr.ph.i, !prof !30

.preheader.i:                                     ; preds = %bb.ab, %bb.aa
  %.283.lcssa.i = phi i64 [ %.182.i, %bb.aa ], [ %i.ld, %bb.ab ] ; 3 uses
  %.2.lcssa.i = phi ptr [ %.1.i, %bb.aa ], [ %i.lc, %bb.ab ] ; 3 uses
  %i.kk = icmp ult ptr %.2.lcssa.i, %i.c
  br i1 %i.kk, label %.lr.ph104.preheader.i, label %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit, !prof !33

.lr.ph104.preheader.i:                            ; preds = %.preheader.i
  %.2.lcssa114.i = ptrtoaddr ptr %.2.lcssa.i to i64
  %i.kl = add i64 %.283.lcssa.i, %i.j
  %i.km = sub i64 %i.kl, %.2.lcssa114.i
  br label %.lr.ph104.i

.lr.ph.i:                                         ; preds = %bb.aa, %bb.ab
  %.2100.i = phi ptr [ %i.lc, %bb.ab ], [ %.1.i, %bb.aa ] ; 3 uses
  %.28399.i = phi i64 [ %i.ld, %bb.ab ], [ %.182.i, %bb.aa ] ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jt, i64 %.28399.i
  %.0.copyload.i64.i = load i64, ptr %i.kn, align 1 ; 2 uses
  %.0.copyload.i65.i = load i64, ptr %.2100.i, align 1 ; 3 uses
  %i.ko = icmp eq i64 %.0.copyload.i64.i, %.0.copyload.i65.i
  br i1 %i.ko, label %bb.ab, label %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread237

_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread237: ; preds = %.lr.ph.i
  %i.kp = xor i64 %.0.copyload.i65.i, %.0.copyload.i64.i ; 2 uses
  %i.kq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.kp, i1 true) ; 2 uses
  %i.kr = lshr i64 %i.kq, 3
  %i.ks = getelementptr inbounds nuw i8, ptr %.2100.i, i64 4
  %.0.copyload.i66.i = load i64, ptr %i.ks, align 1
  %i.kt = tail call i64 asm "testl ${2:k}, ${2:k}\0A\09cmovzq $1, $0\0A\09", "=r,r,r,0,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i66.i, i64 %i.kp, i64 %.0.copyload.i65.i) #23, !srcloc !133
  %i.ku = and i64 %i.kq, 24
  %i.kv = lshr i64 %i.kt, %i.ku
  %i.kw = or disjoint i64 %i.kr, %.28399.i
  %i.kx = add i64 %i.kw, 4                        ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.11129, i64 %i.kx
  %i.kz = ptrtoint ptr %.11129 to i64
  %i.la = ptrtoint ptr %.8148 to i64
  %i.lb = sub i64 %i.kz, %i.la
  br label %bb.ag

bb.ab:                                            ; preds = %.lr.ph.i
  %i.lc = getelementptr inbounds nuw i8, ptr %.2100.i, i64 8 ; 3 uses
  %i.ld = add i64 %.28399.i, 8                    ; 2 uses
  %.not60.i = icmp ugt ptr %i.lc, %i.k
  br i1 %.not60.i, label %.preheader.i, label %.lr.ph.i, !prof !31

.lr.ph104.i:                                      ; preds = %bb.ac, %.lr.ph104.preheader.i
  %.4103.i = phi ptr [ %i.li, %bb.ac ], [ %.2.lcssa.i, %.lr.ph104.preheader.i ] ; 4 uses
  %.485102.i = phi i64 [ %i.lj, %bb.ac ], [ %.283.lcssa.i, %.lr.ph104.preheader.i ] ; 4 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.jt, i64 %.485102.i
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !16
  %i.lg = load i8, ptr %.4103.i, align 1, !tbaa !16
  %i.lh = icmp eq i8 %i.lf, %i.lg
  br i1 %i.lh, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph104.i
  %i.li = getelementptr inbounds nuw i8, ptr %.4103.i, i64 1 ; 2 uses
  %i.lj = add i64 %.485102.i, 1
  %exitcond.not.i = icmp eq ptr %i.li, %i.c
  br i1 %exitcond.not.i, label %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit, label %.lr.ph104.i, !prof !31, !llvm.loop !128

bb.ad:                                            ; preds = %.lr.ph104.i
  %.not61.i = icmp ugt ptr %.4103.i, %i.l
  br i1 %.not61.i, label %.split, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.0.copyload.i67.i = load i64, ptr %.4103.i, align 1
  br label %.split

.split:                                           ; preds = %bb.ae, %bb.ad
  %.10190 = phi i64 [ %.9189, %bb.ad ], [ %.0.copyload.i67.i, %bb.ae ] ; 2 uses
  %i.lk = icmp ult i64 %.485102.i, 8
  %i.ll = add i64 %.485102.i, 4                   ; 3 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.11129, i64 %i.ll ; 2 uses
  %i.ln = ptrtoint ptr %.11129 to i64
  %i.lo = ptrtoint ptr %.8148 to i64
  %i.lp = sub i64 %i.ln, %i.lo                    ; 2 uses
  br i1 %i.lk, label %bb.af, label %bb.ag

_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit: ; preds = %bb.ac, %.preheader.i
  %.485.lcssa.i = phi i64 [ %.283.lcssa.i, %.preheader.i ], [ %i.km, %bb.ac ] ; 2 uses
  %i.lq = icmp ult i64 %.485.lcssa.i, 8
  %i.lr = add i64 %.485.lcssa.i, 4                ; 3 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.11129, i64 %i.lr ; 2 uses
  %i.lt = ptrtoint ptr %.11129 to i64
  %i.lu = ptrtoint ptr %.8148 to i64
  %i.lv = sub i64 %i.lt, %i.lu                    ; 2 uses
  br i1 %i.lq, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.split, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit
  %i.lw = phi i64 [ %i.kh, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread ], [ %i.lv, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit ], [ %i.lp, %.split ] ; 3 uses
  %i.lx = phi ptr [ %i.ke, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread ], [ %i.ls, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit ], [ %i.lm, %.split ]
  %i.ly = phi i64 [ %i.kd, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread ], [ %i.lr, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit ], [ %i.ll, %.split ]
  %.11191236 = phi i64 [ %i.kc, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread ], [ %.9189, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit ], [ %.10190, %.split ]
  %i.lz = shl nuw nsw i64 %i.ly, 2
  %i.ma = shl i64 %i.lw, 8
  %i.mb = add nuw i64 %i.lz, %i.ma
  %i.mc = trunc i64 %i.mb to i32
  %5 = trunc i64 %i.lw to i32
  %6 = lshr i32 %5, 3
  %i.md = and i32 %6, 224
  %i.me = add nsw i32 %i.md, -15
  %i.mf = icmp ult i64 %i.lw, 2048                ; 2 uses
  %i.mg = select i1 %i.mf, i32 %i.me, i32 -2
  %i.mh = add i32 %i.mg, %i.mc
  store i32 %i.mh, ptr %.8, align 1
  %i.mi = select i1 %i.mf, i64 2, i64 3
  %i.mj = getelementptr inbounds nuw i8, ptr %.8, i64 %i.mi
  br label %_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit

bb.ag:                                            ; preds = %.split, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread237, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit
  %i.mk = phi i64 [ %i.lb, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread237 ], [ %i.lv, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit ], [ %i.lp, %.split ] ; 6 uses
  %i.ml = phi ptr [ %i.ky, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread237 ], [ %i.ls, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit ], [ %i.lm, %.split ] ; 2 uses
  %i.mm = phi i64 [ %i.kx, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread237 ], [ %i.lr, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit ], [ %i.ll, %.split ] ; 5 uses
  %.11191244 = phi i64 [ %i.kv, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread237 ], [ %.9189, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit ], [ %.10190, %.split ] ; 2 uses
  %i.mn = icmp ugt i64 %i.mm, 67
  br i1 %i.mn, label %.lr.ph.i167, label %._crit_edge.i164, !prof !34

.lr.ph.i167:                                      ; preds = %bb.ag
  %.tr21.i = trunc i64 %i.mk to i32
  %i.mo = shl i32 %.tr21.i, 8
  %i.mp = or disjoint i32 %i.mo, 254              ; 9 uses
  %i.mq = add i64 %i.mm, -68                      ; 2 uses
  %i.mr = lshr i64 %i.mq, 6
  %i.ms = add nuw nsw i64 %i.mr, 1
  %xtraiter = and i64 %i.ms, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader, !prof !33

.prol.preheader:                                  ; preds = %.lr.ph.i167, %.prol.preheader
  %.023.i.prol = phi i64 [ %i.mu, %.prol.preheader ], [ %i.mm, %.lr.ph.i167 ]
  %.01522.i.prol = phi ptr [ %i.mt, %.prol.preheader ], [ %.8, %.lr.ph.i167 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i167 ]
  store i32 %i.mp, ptr %.01522.i.prol, align 1
  %i.mt = getelementptr inbounds nuw i8, ptr %.01522.i.prol, i64 3 ; 3 uses
  %i.mu = add i64 %.023.i.prol, -64               ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !prof !35, !llvm.loop !129

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i167
  %.023.i.unr = phi i64 [ %i.mm, %.lr.ph.i167 ], [ %i.mu, %.prol.preheader ]
  %.01522.i.unr = phi ptr [ %.8, %.lr.ph.i167 ], [ %i.mt, %.prol.preheader ]
  %.lcssa416.unr = phi ptr [ poison, %.lr.ph.i167 ], [ %i.mt, %.prol.preheader ]
  %.lcssa415.unr = phi i64 [ poison, %.lr.ph.i167 ], [ %i.mu, %.prol.preheader ]
  %i.mv = icmp ult i64 %i.mq, 448
  br i1 %i.mv, label %._crit_edge.i164, label %.lr.ph.i167.new, !prof !30

.lr.ph.i167.new:                                  ; preds = %.prol.loopexit, %.lr.ph.i167.new
  %.023.i = phi i64 [ %i.ne, %.lr.ph.i167.new ], [ %.023.i.unr, %.prol.loopexit ]
  %.01522.i = phi ptr [ %i.nd, %.lr.ph.i167.new ], [ %.01522.i.unr, %.prol.loopexit ] ; 9 uses
  store i32 %i.mp, ptr %.01522.i, align 1
  %i.mw = getelementptr inbounds nuw i8, ptr %.01522.i, i64 3
  store i32 %i.mp, ptr %i.mw, align 1
  %i.mx = getelementptr inbounds nuw i8, ptr %.01522.i, i64 6
  store i32 %i.mp, ptr %i.mx, align 1
  %i.my = getelementptr inbounds nuw i8, ptr %.01522.i, i64 9
  store i32 %i.mp, ptr %i.my, align 1
  %i.mz = getelementptr inbounds nuw i8, ptr %.01522.i, i64 12
  store i32 %i.mp, ptr %i.mz, align 1
  %i.na = getelementptr inbounds nuw i8, ptr %.01522.i, i64 15
  store i32 %i.mp, ptr %i.na, align 1
  %i.nb = getelementptr inbounds nuw i8, ptr %.01522.i, i64 18
  store i32 %i.mp, ptr %i.nb, align 1
  %i.nc = getelementptr inbounds nuw i8, ptr %.01522.i, i64 21
  store i32 %i.mp, ptr %i.nc, align 1
  %i.nd = getelementptr inbounds nuw i8, ptr %.01522.i, i64 24 ; 2 uses
  %i.ne = add i64 %.023.i, -512                   ; 3 uses
  %i.nf = icmp ugt i64 %i.ne, 67
  br i1 %i.nf, label %.lr.ph.i167.new, label %._crit_edge.i164, !prof !37, !llvm.loop !130

._crit_edge.i164:                                 ; preds = %.prol.loopexit, %.lr.ph.i167.new, %bb.ag
  %.015.lcssa.i = phi ptr [ %.8, %bb.ag ], [ %.lcssa416.unr, %.prol.loopexit ], [ %i.nd, %.lr.ph.i167.new ] ; 5 uses
  %.0.lcssa.i = phi i64 [ %i.mm, %bb.ag ], [ %.lcssa415.unr, %.prol.loopexit ], [ %i.ne, %.lr.ph.i167.new ] ; 5 uses
  %i.ng = icmp samesign ugt i64 %.0.lcssa.i, 64
  br i1 %i.ng, label %.thread.i165, label %bb.ah

.thread.i165:                                     ; preds = %._crit_edge.i164
  %.tr.i166 = trunc i64 %i.mk to i32              ; 2 uses
  %i.nh = shl i32 %.tr.i166, 8
  %i.ni = or disjoint i32 %i.nh, 238
  store i32 %i.ni, ptr %.015.lcssa.i, align 1
  %i.nj = getelementptr inbounds nuw i8, ptr %.015.lcssa.i, i64 3
  %i.nk = add nsw i64 %.0.lcssa.i, -60
  br label %bb.ai

bb.ah:                                            ; preds = %._crit_edge.i164
  %i.nl = icmp samesign ult i64 %.0.lcssa.i, 12
  br i1 %i.nl, label %._crit_edge26.i, label %bb.aj

._crit_edge26.i:                                  ; preds = %bb.ah
  %.pre.i = trunc i64 %i.mk to i32
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge26.i, %.thread.i165
  %.pre-phi.i = phi i32 [ %.pre.i, %._crit_edge26.i ], [ %.tr.i166, %.thread.i165 ]
  %.120.i = phi i64 [ %.0.lcssa.i, %._crit_edge26.i ], [ %i.nk, %.thread.i165 ]
  %.11619.i = phi ptr [ %.015.lcssa.i, %._crit_edge26.i ], [ %i.nj, %.thread.i165 ] ; 2 uses
  %i.nm = shl nuw nsw i64 %.120.i, 2
  %i.nn = shl i64 %i.mk, 8
  %i.no = add nuw i64 %i.nm, %i.nn
  %i.np = trunc i64 %i.no to i32
  %7 = lshr i32 %.pre-phi.i, 3
  %i.nq = and i32 %7, 224
  %i.nr = add nsw i32 %i.nq, -15
  %i.ns = icmp ult i64 %i.mk, 2048                ; 2 uses
  %i.nt = select i1 %i.ns, i32 %i.nr, i32 -2
  %i.nu = add i32 %i.nt, %i.np
  store i32 %i.nu, ptr %.11619.i, align 1
  %i.nv = select i1 %i.ns, i64 2, i64 3
  %i.nw = getelementptr inbounds nuw i8, ptr %.11619.i, i64 %i.nv
  br label %_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit

bb.aj:                                            ; preds = %bb.ah
  %i.nx = shl nuw nsw i64 %.0.lcssa.i, 2
  %i.ny = shl i64 %i.mk, 8
  %i.nz = add i64 %i.ny, 4294967294
  %i.oa = add i64 %i.nz, %i.nx
  %i.ob = trunc i64 %i.oa to i32
  store i32 %i.ob, ptr %.015.lcssa.i, align 1
  %i.oc = getelementptr inbounds nuw i8, ptr %.015.lcssa.i, i64 3
  br label %_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit

_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit:          ; preds = %bb.aj, %bb.ai, %bb.af
  %i.od = phi ptr [ %i.lx, %bb.af ], [ %i.ml, %bb.ai ], [ %i.ml, %bb.aj ] ; 6 uses
  %.11191235 = phi i64 [ %.11191236, %bb.af ], [ %.11191244, %bb.ai ], [ %.11191244, %bb.aj ] ; 3 uses
  %.9 = phi ptr [ %i.mj, %bb.af ], [ %i.nw, %bb.ai ], [ %i.oc, %bb.aj ] ; 3 uses
  %.not158 = icmp ult ptr %i.od, %i.e
  br i1 %.not158, label %bb.ak, label %.thread252, !prof !26

bb.ak:                                            ; preds = %_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit
  %i.oe = ptrtoint ptr %i.od to i64
  %i.of = sub i64 %i.oe, %i.h
  %i.og = trunc i64 %i.of to i16                  ; 2 uses
  %i.oh = add i16 %i.og, -1
  %i.oi = getelementptr inbounds i8, ptr %i.od, i64 -1
  %.0.copyload.i168 = load i32, ptr %i.oi, align 1
  %i.oj = mul i32 %.0.copyload.i168, 506832829
  %i.ok = lshr i32 %i.oj, 16
  %i.ol = and i32 %i.ok, %i.b
  %i.om = zext nneg i32 %i.ol to i64
  %i.on = add i64 %i.om, %i.i
  %i.oo = inttoptr i64 %i.on to ptr
  store i16 %i.oh, ptr %i.oo, align 2, !tbaa !28
  %i.op = trunc i64 %.11191235 to i32             ; 2 uses
  %i.oq = mul i32 %i.op, 506832829
  %i.or = lshr i32 %i.oq, 16
  %i.os = and i32 %i.or, %i.b
  %i.ot = zext nneg i32 %i.os to i64
  %i.ou = add i64 %i.ot, %i.i
  %i.ov = inttoptr i64 %i.ou to ptr               ; 2 uses
  %i.ow = load i16, ptr %i.ov, align 2, !tbaa !28
  %i.ox = zext i16 %i.ow to i64
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 %i.ox ; 2 uses
  store i16 %i.og, ptr %i.ov, align 2, !tbaa !28
  %.0.copyload.i169 = load i32, ptr %i.oy, align 1
  %i.oz = icmp eq i32 %.0.copyload.i169, %i.op
  br i1 %i.oz, label %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit, label %bb.al, !llvm.loop !131

bb.al:                                            ; preds = %bb.ak
  %i.pa = lshr i64 %.11191235, 8
  %i.pb = trunc i64 %i.pa to i32
  br label %bb.c

.thread252:                                       ; preds = %bb.q, %bb.r, %_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit, %bb.a
  %.13 = phi ptr [ %0, %bb.a ], [ %.0118, %bb.r ], [ %i.od, %_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit ], [ %.0118, %bb.q ] ; 3 uses
  %.11 = phi ptr [ %2, %bb.a ], [ %.0117, %bb.r ], [ %.9, %_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit ], [ %.0117, %bb.q ] ; 4 uses
  %i.pc = icmp ult ptr %.13, %i.c
  br i1 %i.pc, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %.thread252
  %i.pd = ptrtoint ptr %i.c to i64
  %i.pe = ptrtoint ptr %.13 to i64
  %i.pf = sub i64 %i.pd, %i.pe                    ; 2 uses
  %i.pg = trunc i64 %i.pf to i32                  ; 2 uses
  %i.ph = add nsw i32 %i.pg, -1                   ; 3 uses
  %i.pi = icmp slt i32 %i.pg, 61
  br i1 %i.pi, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %.tr.i173 = trunc i32 %i.ph to i8
  %i.pj = shl i8 %.tr.i173, 2
  br label %_ZN6snappyL11EmitLiteralILb0EEEPcS1_PKci.exit

bb.ao:                                            ; preds = %bb.am
  %i.pk = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ph, i1 true)
  %i.pl = lshr i32 %i.pk, 3
  %i.pm = xor i32 %i.pl, 3                        ; 2 uses
  %.tr16.i = trunc nuw nsw i32 %i.pm to i8
  %i.pn = shl nuw nsw i8 %.tr16.i, 2
  %i.po = or disjoint i8 %i.pn, -16
  %i.pp = getelementptr inbounds nuw i8, ptr %.11, i64 1 ; 2 uses
  store i32 %i.ph, ptr %i.pp, align 1
  %i.pq = zext nneg i32 %i.pm to i64
  %i.pr = getelementptr i8, ptr %i.pp, i64 %i.pq
  br label %_ZN6snappyL11EmitLiteralILb0EEEPcS1_PKci.exit

_ZN6snappyL11EmitLiteralILb0EEEPcS1_PKci.exit:    ; preds = %bb.an, %bb.ao
  %.sink.i170 = phi i8 [ %i.pj, %bb.an ], [ %i.po, %bb.ao ]
  %.pn.i171 = phi ptr [ %.11, %bb.an ], [ %i.pr, %bb.ao ]
  store i8 %.sink.i170, ptr %.11, align 1, !tbaa !16
  %.0.i172 = getelementptr i8, ptr %.pn.i171, i64 1 ; 2 uses
  %sext257 = shl i64 %i.pf, 32
  %i.ps = ashr exact i64 %sext257, 32             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i172, ptr readonly align 1 %.13, i64 %i.ps, i1 false)
  %i.pt = getelementptr inbounds i8, ptr %.0.i172, i64 %i.ps
  br label %bb.ap

bb.ap:                                            ; preds = %.thread252, %_ZN6snappyL11EmitLiteralILb0EEEPcS1_PKci.exit
  %.0 = phi ptr [ %.11, %.thread252 ], [ %i.pt, %_ZN6snappyL11EmitLiteralILb0EEEPcS1_PKci.exit ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZN6snappy8internal26CompressFragmentDoubleHashEPKcmPcPtiS4_i(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address, ret: address, provenance) %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 %6) local_unnamed_addr #7 {
bb.a:
  %i.a = shl i32 %4, 1
  %i.b = add i32 %i.a, -2                         ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 15 uses
  %i.d = icmp ugt i64 %1, 14
  br i1 %i.d, label %bb.b, label %.thread351, !prof !26

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -15 ; 3 uses
  %i.f = ptrtoint ptr %5 to i64                   ; 9 uses
  %i.g = zext i32 %i.b to i64                     ; 9 uses
  %i.h = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.i = ptrtoint ptr %3 to i64                   ; 5 uses
  %i.j = ptrtoaddr ptr %i.c to i64
  %i.k = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 10 uses
  %i.l = trunc i64 %i.j to i32                    ; 5 uses
  %i.m = icmp slt i64 %1, 17
  br i1 %i.m, label %.thread351, label %.lr.ph573.lr.ph, !prof !30

.lr.ph573.lr.ph:                                  ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2
  br label %.lr.ph573

.loopexit.loopexit:                               ; preds = %bb.ac
  %i.o = getelementptr inbounds nuw i8, ptr %i.gi, i64 2 ; 2 uses
  %i.p = icmp ugt ptr %i.o, %i.e
  br i1 %i.p, label %.thread351, label %.lr.ph573, !prof !139

.lr.ph573:                                        ; preds = %.lr.ph573.lr.ph, %.loopexit.loopexit
  %i.q = phi ptr [ %i.n, %.lr.ph573.lr.ph ], [ %i.o, %.loopexit.loopexit ]
  %.0192578 = phi ptr [ %0, %.lr.ph573.lr.ph ], [ %i.gi, %.loopexit.loopexit ] ; 7 uses
  %.0201577 = phi ptr [ %2, %.lr.ph573.lr.ph ], [ %.3204, %.loopexit.loopexit ] ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0192578, i64 1
  br label %bb.d

bb.c:                                             ; preds = %bb.g
  %i.s = lshr i32 %i.y, 9
  %i.t = add i32 %i.y, 1
  %i.u = zext nneg i32 %i.s to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.u ; 2 uses
  %i.w = icmp ugt ptr %i.v, %i.e
  br i1 %i.w, label %.thread351, label %bb.d, !prof !31

bb.d:                                             ; preds = %.lr.ph573, %bb.c
  %i.x = phi ptr [ %i.q, %.lr.ph573 ], [ %i.v, %bb.c ] ; 2 uses
  %i.y = phi i32 [ 513, %.lr.ph573 ], [ %i.t, %bb.c ] ; 2 uses
  %.1193572 = phi ptr [ %i.r, %.lr.ph573 ], [ %i.x, %bb.c ] ; 7 uses
  %.0189 = load i64, ptr %.1193572, align 1       ; 2 uses
  %i.z = mul i64 %.0189, 58295818150454627
  %i.aa = lshr i64 %i.z, 49
  %i.ab = and i64 %i.aa, %i.g
  %i.ac = add i64 %i.ab, %i.f
  %i.ad = inttoptr i64 %i.ac to ptr               ; 2 uses
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !28
  %i.af = zext i16 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %i.af
  %i.ah = ptrtoint ptr %.1193572 to i64
  %i.ai = sub i64 %i.ah, %i.h
  %i.aj = trunc i64 %i.ai to i16                  ; 3 uses
  store i16 %i.aj, ptr %i.ad, align 2, !tbaa !28
  %i.ak = trunc i64 %.0189 to i32                 ; 3 uses
  %.0.copyload.i215 = load i32, ptr %i.ag, align 1
  %i.al = icmp eq i32 %.0.copyload.i215, %i.ak
  br i1 %i.al, label %bb.e, label %bb.g, !prof !29

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %i.af ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.1193572, i64 4 ; 3 uses
  %.not34.i = icmp ugt ptr %i.ao, %i.k
  br i1 %.not34.i, label %.critedge28.preheader.i, label %.lr.ph.i

.critedge28.preheader.loopexit.i:                 ; preds = %bb.f
  %i.ap = trunc nuw i64 %indvars.iv.next.i to i32
  br label %.critedge28.preheader.i

.critedge28.preheader.i:                          ; preds = %.critedge28.preheader.loopexit.i, %bb.e
  %.026.lcssa.i = phi i32 [ 0, %bb.e ], [ %i.ap, %.critedge28.preheader.loopexit.i ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %i.ao, %bb.e ], [ %i.ax, %.critedge28.preheader.loopexit.i ] ; 3 uses
  %i.aq = icmp ult ptr %.0.lcssa.i, %i.c
  br i1 %i.aq, label %.lr.ph40.preheader.i, label %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit

.lr.ph40.preheader.i:                             ; preds = %.critedge28.preheader.i
  %.0.lcssa50.i = ptrtoaddr ptr %.0.lcssa.i to i64
  %i.ar = zext i32 %.026.lcssa.i to i64
  %i.as = add i32 %.026.lcssa.i, %i.l
end_hunk_0
begin_hunk_1_@_ZN6snappy8internal26CompressFragmentDoubleHashEPKcmPcPtiS4_i:bb.a
  br label %.lr.ph40.i258

.lr.ph.i243:                                      ; preds = %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit240, %bb.j
  %indvars.iv.i244 = phi i64 [ %indvars.iv.next.i250, %bb.j ], [ 0, %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit240 ] ; 3 uses
  %.036.i245 = phi ptr [ %i.dl, %bb.j ], [ %i.cu, %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit240 ] ; 2 uses
  %.0.copyload.i.i246 = load i64, ptr %.036.i245, align 1 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dc, i64 %indvars.iv.i244
  %.0.copyload.i29.i247 = load i64, ptr %i.dj, align 1 ; 2 uses
  %i.dk = icmp eq i64 %.0.copyload.i.i246, %.0.copyload.i29.i247
  br i1 %i.dk, label %bb.j, label %.critedge.i248

bb.j:                                             ; preds = %.lr.ph.i243
  %i.dl = getelementptr inbounds nuw i8, ptr %.036.i245, i64 8 ; 3 uses
  %indvars.iv.next.i250 = add nuw nsw i64 %indvars.iv.i244, 8 ; 2 uses
  %.not.i251 = icmp ugt ptr %i.dl, %i.k
  br i1 %.not.i251, label %.critedge28.preheader.loopexit.i252, label %.lr.ph.i243, !llvm.loop !134

.critedge.i248:                                   ; preds = %.lr.ph.i243
  %i.dm = trunc nuw nsw i64 %indvars.iv.i244 to i32
  %i.dn = xor i64 %.0.copyload.i29.i247, %.0.copyload.i.i246
  %i.do = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.dn, i1 true)
  %i.dp = trunc nuw nsw i64 %i.do to i32
  %i.dq = lshr i32 %i.dp, 3
  %i.dr = or disjoint i32 %i.dq, %i.dm
  br label %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit265

.lr.ph40.i258:                                    ; preds = %.critedge28.i262, %.lr.ph40.preheader.i256
  %indvars.iv48.i259 = phi i64 [ %i.df, %.lr.ph40.preheader.i256 ], [ %indvars.iv.next49.i263, %.critedge28.i262 ] ; 3 uses
  %.139.i260 = phi ptr [ %.0.lcssa.i255, %.lr.ph40.preheader.i256 ], [ %i.dw, %.critedge28.i262 ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dc, i64 %indvars.iv48.i259
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !16
  %i.du = load i8, ptr %.139.i260, align 1, !tbaa !16
  %i.dv = icmp eq i8 %i.dt, %i.du
  br i1 %i.dv, label %.critedge28.i262, label %.critedge2.loopexit.split.loop.exit.i261

.critedge28.i262:                                 ; preds = %.lr.ph40.i258
  %i.dw = getelementptr inbounds nuw i8, ptr %.139.i260, i64 1 ; 2 uses
  %indvars.iv.next49.i263 = add nuw nsw i64 %indvars.iv48.i259, 1
  %exitcond.not.i264 = icmp eq ptr %i.dw, %i.c
  br i1 %exitcond.not.i264, label %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit265, label %.lr.ph40.i258, !llvm.loop !135

.critedge2.loopexit.split.loop.exit.i261:         ; preds = %.lr.ph40.i258
  %i.dx = trunc nuw i64 %indvars.iv48.i259 to i32
  br label %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit265

_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit265: ; preds = %.critedge28.i262, %.critedge28.preheader.i253, %.critedge.i248, %.critedge2.loopexit.split.loop.exit.i261
  %.2.i249 = phi i32 [ %i.dr, %.critedge.i248 ], [ %.026.lcssa.i254, %.critedge28.preheader.i253 ], [ %i.dx, %.critedge2.loopexit.split.loop.exit.i261 ], [ %i.di, %.critedge28.i262 ] ; 2 uses
  %i.dy = sext i32 %.2.i249 to i64
  %i.dz = zext i32 %i.ct to i64
  %i.ea = icmp ugt i64 %i.dy, %i.dz
  br i1 %i.ea, label %bb.k, label %.preheader

bb.k:                                             ; preds = %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit265
  store i16 %i.aj, ptr %i.cz, align 2, !tbaa !28
  br label %.preheader

.preheader:                                       ; preds = %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit265, %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit, %bb.k
  %.4196.ph = phi ptr [ %i.cu, %bb.k ], [ %.1193572, %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit ], [ %.1193572, %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit265 ] ; 3 uses
  %.3183.ph = phi ptr [ %i.dc, %bb.k ], [ %i.am, %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit ], [ %i.bv, %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit265 ] ; 3 uses
  %.3178.ph = phi i32 [ %.2.i249, %bb.k ], [ %i.bk, %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit ], [ %i.ct, %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit265 ] ; 2 uses
  %i.eb = icmp ugt ptr %.4196.ph, %.0192578
  %i.ec = icmp ugt ptr %.3183.ph, %0
  %or.cond397 = select i1 %i.eb, i1 %i.ec, i1 false
  br i1 %or.cond397, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader, %bb.l
  %.4179400 = phi i32 [ %i.ei, %bb.l ], [ %.3178.ph, %.preheader ] ; 2 uses
  %.4184399 = phi ptr [ %i.ef, %bb.l ], [ %.3183.ph, %.preheader ] ; 2 uses
  %.5197398 = phi ptr [ %i.ed, %bb.l ], [ %.4196.ph, %.preheader ] ; 2 uses
  %i.ed = getelementptr inbounds i8, ptr %.5197398, i64 -1 ; 4 uses
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !16
  %i.ef = getelementptr inbounds i8, ptr %.4184399, i64 -1 ; 4 uses
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !16
  %i.eh = icmp eq i8 %i.ee, %i.eg
  br i1 %i.eh, label %bb.l, label %.critedge

bb.l:                                             ; preds = %.lr.ph
  %i.ei = add i32 %.4179400, 1                    ; 2 uses
  %i.ej = icmp ugt ptr %i.ed, %.0192578
  %i.ek = icmp ugt ptr %i.ef, %0
  %or.cond = and i1 %i.ej, %i.ek
  br i1 %or.cond, label %.lr.ph, label %.critedge, !llvm.loop !136

.critedge:                                        ; preds = %.lr.ph, %bb.l, %.preheader
  %.5197.lcssa = phi ptr [ %.4196.ph, %.preheader ], [ %i.ed, %bb.l ], [ %.5197398, %.lr.ph ] ; 4 uses
  %.4184.lcssa = phi ptr [ %.3183.ph, %.preheader ], [ %i.ef, %bb.l ], [ %.4184399, %.lr.ph ]
  %.4179.lcssa = phi i32 [ %.3178.ph, %.preheader ], [ %i.ei, %bb.l ], [ %.4179400, %.lr.ph ]
  %i.el = ptrtoint ptr %.5197.lcssa to i64        ; 2 uses
  %i.em = sub i64 %i.el, %i.h
  %i.en = trunc i64 %i.em to i16                  ; 2 uses
  %i.eo = add i16 %i.en, 1                        ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.5197.lcssa, i64 1 ; 2 uses
  %.0.copyload.i267 = load i64, ptr %i.ep, align 1
  %i.eq = mul i64 %.0.copyload.i267, 58295818150454627
  %i.er = lshr i64 %i.eq, 49
  %i.es = and i64 %i.er, %i.g
  %i.et = add i64 %i.es, %i.f
  %i.eu = inttoptr i64 %i.et to ptr
  store i16 %i.eo, ptr %i.eu, align 2, !tbaa !28
  %i.ev = add i16 %i.en, 2
  %i.ew = getelementptr inbounds nuw i8, ptr %.5197.lcssa, i64 2
  %.0.copyload.i268 = load i64, ptr %i.ew, align 1
  %i.ex = mul i64 %.0.copyload.i268, 58295818150454627
  %i.ey = lshr i64 %i.ex, 49
  %i.ez = and i64 %i.ey, %i.g
  %i.fa = add i64 %i.ez, %i.f
  %i.fb = inttoptr i64 %i.fa to ptr
  store i16 %i.ev, ptr %i.fb, align 2, !tbaa !28
  %.0.copyload.i269 = load i32, ptr %i.ep, align 1
  %i.fc = mul i32 %.0.copyload.i269, -1640531535
  %i.fd = lshr i32 %i.fc, 17
  %i.fe = and i32 %i.fd, %i.b
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = add i64 %i.ff, %i.i
  %i.fh = inttoptr i64 %i.fg to ptr
  store i16 %i.eo, ptr %i.fh, align 2, !tbaa !28
  %i.fi = ptrtoint ptr %.0192578 to i64
  %i.fj = sub i64 %i.el, %i.fi                    ; 4 uses
  %i.fk = icmp sgt i64 %i.fj, 0
  br i1 %i.fk, label %bb.m, label %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader

bb.m:                                             ; preds = %.critedge
  %i.fl = trunc i64 %i.fj to i32                  ; 3 uses
  %i.fm = add nsw i32 %i.fl, -1                   ; 4 uses
  %i.fn = icmp slt i32 %i.fl, 17
  br i1 %i.fn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.tr37.i = trunc i32 %i.fm to i8
  %i.fo = shl i8 %.tr37.i, 2
  %i.fp = getelementptr inbounds nuw i8, ptr %.0201577, i64 1 ; 2 uses
  store i8 %i.fo, ptr %.0201577, align 1, !tbaa !16
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.fp, ptr noundef nonnull readonly align 1 dereferenceable(16) %.0192578, i64 16, i1 false)
  %sext = shl i64 %i.fj, 32
  %i.fq = ashr exact i64 %sext, 32
  %i.fr = getelementptr inbounds i8, ptr %i.fp, i64 %i.fq
  br label %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader

bb.o:                                             ; preds = %bb.m
  %i.fs = icmp samesign ult i32 %i.fl, 61
  br i1 %i.fs, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.tr.i = trunc nuw nsw i32 %i.fm to i8
  %i.ft = shl nuw i8 %.tr.i, 2
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.fu = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.fm, i1 true)
  %i.fv = lshr i32 %i.fu, 3
  %i.fw = xor i32 %i.fv, 3                        ; 2 uses
  %.tr38.i = trunc nuw nsw i32 %i.fw to i8
  %i.fx = shl nuw nsw i8 %.tr38.i, 2
  %i.fy = or disjoint i8 %i.fx, -16
  %i.fz = getelementptr inbounds nuw i8, ptr %.0201577, i64 1 ; 2 uses
  store i32 %i.fm, ptr %i.fz, align 1
  %i.ga = zext nneg i32 %i.fw to i64
  %i.gb = getelementptr i8, ptr %i.fz, i64 %i.ga
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sink.i = phi i8 [ %i.ft, %bb.p ], [ %i.fy, %bb.q ]
  %.pn.i = phi ptr [ %.0201577, %bb.p ], [ %i.gb, %bb.q ]
  store i8 %.sink.i, ptr %.0201577, align 1, !tbaa !16
  %.032.i = getelementptr i8, ptr %.pn.i, i64 1   ; 2 uses
  %i.gc = and i64 %i.fj, 2147483647
  %i.gd = getelementptr inbounds nuw i8, ptr %.032.i, i64 %i.gc ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %bb.r
  %.030.i = phi ptr [ %.032.i, %bb.r ], [ %i.ge, %bb.s ] ; 2 uses
  %.0.i = phi ptr [ %.0192578, %bb.r ], [ %i.gf, %bb.s ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.030.i, ptr noundef nonnull align 1 dereferenceable(16) %.0.i, i64 16, i1 false)
  %i.ge = getelementptr inbounds nuw i8, ptr %.030.i, i64 16 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.gg = icmp ult ptr %i.ge, %i.gd
  br i1 %i.gg, label %bb.s, label %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader, !llvm.loop !0

_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader: ; preds = %bb.s, %bb.n, %.critedge
  %.2203.ph = phi ptr [ %.0201577, %.critedge ], [ %i.fr, %bb.n ], [ %i.gd, %bb.s ]
  br label %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit

_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit:    ; preds = %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader, %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit306
  %.2203 = phi ptr [ %.3204, %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit306 ], [ %.2203.ph, %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader ] ; 5 uses
  %.6198 = phi ptr [ %i.gi, %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit306 ], [ %.5197.lcssa, %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader ] ; 2 uses
  %.5185 = phi ptr [ %.7187, %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit306 ], [ %.4184.lcssa, %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader ]
  %.5 = phi i32 [ %.7, %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit306 ], [ %.4179.lcssa, %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader ] ; 3 uses
  %i.gh = zext i32 %.5 to i64                     ; 6 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.6198, i64 %i.gh ; 17 uses
  %i.gj = ptrtoint ptr %.6198 to i64
  %i.gk = ptrtoint ptr %.5185 to i64
  %i.gl = sub i64 %i.gj, %i.gk                    ; 9 uses
  %i.gm = icmp ult i32 %.5, 12
  br i1 %i.gm, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit
  %i.gn = shl nuw nsw i64 %i.gh, 2
  %i.go = shl i64 %i.gl, 8
  %i.gp = or disjoint i64 %i.gn, %i.go
  %i.gq = trunc i64 %i.gp to i32
  %7 = trunc i64 %i.gl to i32
  %8 = lshr i32 %7, 3
  %i.gr = and i32 %8, 224
  %i.gs = add nsw i32 %i.gr, -15
  %i.gt = icmp ult i64 %i.gl, 2048                ; 2 uses
  %i.gu = select i1 %i.gt, i32 %i.gs, i32 -2
  %i.gv = add i32 %i.gu, %i.gq
  store i32 %i.gv, ptr %.2203, align 1
  %i.gw = select i1 %i.gt, i64 2, i64 3
  %i.gx = getelementptr inbounds nuw i8, ptr %.2203, i64 %i.gw
  br label %_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit

bb.u:                                             ; preds = %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit
  %i.gy = icmp ugt i32 %.5, 67
  br i1 %i.gy, label %.lr.ph.i273, label %._crit_edge.i, !prof !34

.lr.ph.i273:                                      ; preds = %bb.u
  %.tr21.i = trunc i64 %i.gl to i32
  %i.gz = shl i32 %.tr21.i, 8
  %i.ha = or disjoint i32 %i.gz, 254              ; 9 uses
  %i.hb = add nsw i64 %i.gh, -68                  ; 2 uses
  %i.hc = lshr i64 %i.hb, 6
  %i.hd = add nuw nsw i64 %i.hc, 1
  %xtraiter = and i64 %i.hd, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader, !prof !33

.prol.preheader:                                  ; preds = %.lr.ph.i273, %.prol.preheader
  %.023.i.prol = phi i64 [ %i.hf, %.prol.preheader ], [ %i.gh, %.lr.ph.i273 ]
  %.01522.i.prol = phi ptr [ %i.he, %.prol.preheader ], [ %.2203, %.lr.ph.i273 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i273 ]
  store i32 %i.ha, ptr %.01522.i.prol, align 1
  %i.he = getelementptr inbounds nuw i8, ptr %.01522.i.prol, i64 3 ; 3 uses
  %i.hf = add i64 %.023.i.prol, -64               ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !prof !35, !llvm.loop !137

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i273
  %.023.i.unr = phi i64 [ %i.gh, %.lr.ph.i273 ], [ %i.hf, %.prol.preheader ]
  %.01522.i.unr = phi ptr [ %.2203, %.lr.ph.i273 ], [ %i.he, %.prol.preheader ]
  %.lcssa609.unr = phi ptr [ poison, %.lr.ph.i273 ], [ %i.he, %.prol.preheader ]
  %.lcssa608.unr = phi i64 [ poison, %.lr.ph.i273 ], [ %i.hf, %.prol.preheader ]
  %i.hg = icmp ult i64 %i.hb, 448
  br i1 %i.hg, label %._crit_edge.i, label %.lr.ph.i273.new, !prof !30

.lr.ph.i273.new:                                  ; preds = %.prol.loopexit, %.lr.ph.i273.new
  %.023.i = phi i64 [ %i.hp, %.lr.ph.i273.new ], [ %.023.i.unr, %.prol.loopexit ]
  %.01522.i = phi ptr [ %i.ho, %.lr.ph.i273.new ], [ %.01522.i.unr, %.prol.loopexit ] ; 9 uses
  store i32 %i.ha, ptr %.01522.i, align 1
  %i.hh = getelementptr inbounds nuw i8, ptr %.01522.i, i64 3
  store i32 %i.ha, ptr %i.hh, align 1
  %i.hi = getelementptr inbounds nuw i8, ptr %.01522.i, i64 6
  store i32 %i.ha, ptr %i.hi, align 1
  %i.hj = getelementptr inbounds nuw i8, ptr %.01522.i, i64 9
  store i32 %i.ha, ptr %i.hj, align 1
  %i.hk = getelementptr inbounds nuw i8, ptr %.01522.i, i64 12
  store i32 %i.ha, ptr %i.hk, align 1
  %i.hl = getelementptr inbounds nuw i8, ptr %.01522.i, i64 15
  store i32 %i.ha, ptr %i.hl, align 1
  %i.hm = getelementptr inbounds nuw i8, ptr %.01522.i, i64 18
  store i32 %i.ha, ptr %i.hm, align 1
  %i.hn = getelementptr inbounds nuw i8, ptr %.01522.i, i64 21
  store i32 %i.ha, ptr %i.hn, align 1
  %i.ho = getelementptr inbounds nuw i8, ptr %.01522.i, i64 24 ; 2 uses
  %i.hp = add i64 %.023.i, -512                   ; 3 uses
  %i.hq = icmp ugt i64 %i.hp, 67
  br i1 %i.hq, label %.lr.ph.i273.new, label %._crit_edge.i, !prof !37, !llvm.loop !138

._crit_edge.i:                                    ; preds = %.prol.loopexit, %.lr.ph.i273.new, %bb.u
  %.015.lcssa.i = phi ptr [ %.2203, %bb.u ], [ %.lcssa609.unr, %.prol.loopexit ], [ %i.ho, %.lr.ph.i273.new ] ; 5 uses
  %.0.lcssa.i270 = phi i64 [ %i.gh, %bb.u ], [ %.lcssa608.unr, %.prol.loopexit ], [ %i.hp, %.lr.ph.i273.new ] ; 5 uses
  %i.hr = icmp samesign ugt i64 %.0.lcssa.i270, 64
  br i1 %i.hr, label %.thread.i, label %bb.v

.thread.i:                                        ; preds = %._crit_edge.i
  %.tr.i272 = trunc i64 %i.gl to i32              ; 2 uses
  %i.hs = shl i32 %.tr.i272, 8
  %i.ht = or disjoint i32 %i.hs, 238
  store i32 %i.ht, ptr %.015.lcssa.i, align 1
  %i.hu = getelementptr inbounds nuw i8, ptr %.015.lcssa.i, i64 3
  %i.hv = add nsw i64 %.0.lcssa.i270, -60
  br label %bb.w

bb.v:                                             ; preds = %._crit_edge.i
  %i.hw = icmp samesign ult i64 %.0.lcssa.i270, 12
  br i1 %i.hw, label %._crit_edge26.i, label %bb.x

._crit_edge26.i:                                  ; preds = %bb.v
  %.pre.i = trunc i64 %i.gl to i32
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge26.i, %.thread.i
  %.pre-phi.i = phi i32 [ %.pre.i, %._crit_edge26.i ], [ %.tr.i272, %.thread.i ]
  %.120.i = phi i64 [ %.0.lcssa.i270, %._crit_edge26.i ], [ %i.hv, %.thread.i ]
  %.11619.i = phi ptr [ %.015.lcssa.i, %._crit_edge26.i ], [ %i.hu, %.thread.i ] ; 2 uses
  %i.hx = shl nuw nsw i64 %.120.i, 2
  %i.hy = shl i64 %i.gl, 8
  %i.hz = add nuw i64 %i.hx, %i.hy
  %i.ia = trunc i64 %i.hz to i32
  %9 = lshr i32 %.pre-phi.i, 3
  %i.ib = and i32 %9, 224
  %i.ic = add nsw i32 %i.ib, -15
  %i.id = icmp ult i64 %i.gl, 2048                ; 2 uses
  %i.ie = select i1 %i.id, i32 %i.ic, i32 -2
  %i.if = add i32 %i.ie, %i.ia
  store i32 %i.if, ptr %.11619.i, align 1
  %i.ig = select i1 %i.id, i64 2, i64 3
  %i.ih = getelementptr inbounds nuw i8, ptr %.11619.i, i64 %i.ig
  br label %_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit

bb.x:                                             ; preds = %bb.v
  %i.ii = shl nuw nsw i64 %.0.lcssa.i270, 2
  %i.ij = shl i64 %i.gl, 8
  %i.ik = add i64 %i.ij, 4294967294
  %i.il = add i64 %i.ik, %i.ii
  %i.im = trunc i64 %i.il to i32
  store i32 %i.im, ptr %.015.lcssa.i, align 1
  %i.in = getelementptr inbounds nuw i8, ptr %.015.lcssa.i, i64 3
  br label %_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit

_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit:          ; preds = %bb.x, %bb.w, %bb.t
  %.3204 = phi ptr [ %i.gx, %bb.t ], [ %i.ih, %bb.w ], [ %i.in, %bb.x ] ; 4 uses
  %.not = icmp ult ptr %i.gi, %i.e
  br i1 %.not, label %bb.y, label %.thread351, !prof !26

bb.y:                                             ; preds = %_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit
  %i.io = ptrtoint ptr %i.gi to i64
  %i.ip = sub i64 %i.io, %i.h                     ; 2 uses
  %i.iq = icmp sgt i64 %i.ip, 7
  %i.ir = trunc i64 %i.ip to i16                  ; 7 uses
  br i1 %i.iq, label %bb.z, label %._crit_edge

bb.z:                                             ; preds = %bb.y
  %i.is = add i16 %i.ir, -7
  %i.it = getelementptr inbounds i8, ptr %i.gi, i64 -7
  %.0.copyload.i274 = load i64, ptr %i.it, align 1
  %i.iu = mul i64 %.0.copyload.i274, 58295818150454627
  %i.iv = lshr i64 %i.iu, 49
  %i.iw = and i64 %i.iv, %i.g
  %i.ix = add i64 %i.iw, %i.f
  %i.iy = inttoptr i64 %i.ix to ptr
  store i16 %i.is, ptr %i.iy, align 2, !tbaa !28
  %i.iz = add i16 %i.ir, -4
  %i.ja = getelementptr inbounds i8, ptr %i.gi, i64 -4
  %.0.copyload.i275 = load i64, ptr %i.ja, align 1
  %i.jb = mul i64 %.0.copyload.i275, 58295818150454627
  %i.jc = lshr i64 %i.jb, 49
  %i.jd = and i64 %i.jc, %i.g
  %i.je = add i64 %i.jd, %i.f
  %i.jf = inttoptr i64 %i.je to ptr
  store i16 %i.iz, ptr %i.jf, align 2, !tbaa !28
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.y, %bb.z
  %i.jg = add i16 %i.ir, -3
  %i.jh = getelementptr inbounds i8, ptr %i.gi, i64 -3
  %.0.copyload.i276 = load i64, ptr %i.jh, align 1
  %i.ji = mul i64 %.0.copyload.i276, 58295818150454627
  %i.jj = lshr i64 %i.ji, 49
  %i.jk = and i64 %i.jj, %i.g
  %i.jl = add i64 %i.jk, %i.f
  %i.jm = inttoptr i64 %i.jl to ptr
  store i16 %i.jg, ptr %i.jm, align 2, !tbaa !28
  %i.jn = add i16 %i.ir, -2                       ; 2 uses
  %i.jo = getelementptr inbounds i8, ptr %i.gi, i64 -2 ; 2 uses
  %.0.copyload.i277 = load i64, ptr %i.jo, align 1
  %i.jp = mul i64 %.0.copyload.i277, 58295818150454627
  %i.jq = lshr i64 %i.jp, 49
  %i.jr = and i64 %i.jq, %i.g
  %i.js = add i64 %i.jr, %i.f
  %i.jt = inttoptr i64 %i.js to ptr
  store i16 %i.jn, ptr %i.jt, align 2, !tbaa !28
  %.0.copyload.i278 = load i32, ptr %i.jo, align 1
  %i.ju = mul i32 %.0.copyload.i278, -1640531535
  %i.jv = lshr i32 %i.ju, 17
  %i.jw = and i32 %i.jv, %i.b
  %i.jx = zext nneg i32 %i.jw to i64
  %i.jy = add i64 %i.jx, %i.i
  %i.jz = inttoptr i64 %i.jy to ptr
  store i16 %i.jn, ptr %i.jz, align 2, !tbaa !28
  %i.ka = add i16 %i.ir, -1
  %i.kb = getelementptr inbounds i8, ptr %i.gi, i64 -1
  %.0.copyload.i279 = load i32, ptr %i.kb, align 1
  %i.kc = mul i32 %.0.copyload.i279, -1640531535
  %i.kd = lshr i32 %i.kc, 17
  %i.ke = and i32 %i.kd, %i.b
  %i.kf = zext nneg i32 %i.ke to i64
  %i.kg = add i64 %i.kf, %i.i
  %i.kh = inttoptr i64 %i.kg to ptr
  store i16 %i.ka, ptr %i.kh, align 2, !tbaa !28
  %.0.copyload.i280 = load i64, ptr %i.gi, align 1
  %i.ki = mul i64 %.0.copyload.i280, 58295818150454627
  %i.kj = lshr i64 %i.ki, 49
  %i.kk = and i64 %i.kj, %i.g
  %i.kl = add i64 %i.kk, %i.f
  %i.km = inttoptr i64 %i.kl to ptr               ; 2 uses
  %i.kn = load i16, ptr %i.km, align 2, !tbaa !28
  %i.ko = zext i16 %i.kn to i64
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 %i.ko ; 6 uses
  store i16 %i.ir, ptr %i.km, align 2, !tbaa !28
  %.0.copyload.i281 = load i32, ptr %i.gi, align 1 ; 2 uses
  %.0.copyload.i282 = load i32, ptr %i.kp, align 1
  %i.kq = icmp eq i32 %.0.copyload.i281, %.0.copyload.i282
  br i1 %i.kq, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %._crit_edge
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kp, i64 4 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.gi, i64 4 ; 3 uses
  %.not34.i283 = icmp ugt ptr %i.ks, %i.k
  br i1 %.not34.i283, label %.critedge28.preheader.i294, label %.lr.ph.i284

.critedge28.preheader.loopexit.i293:              ; preds = %bb.ab
  %i.kt = trunc nuw i64 %indvars.iv.next.i291 to i32
  br label %.critedge28.preheader.i294

.critedge28.preheader.i294:                       ; preds = %.critedge28.preheader.loopexit.i293, %bb.aa
  %.026.lcssa.i295 = phi i32 [ 0, %bb.aa ], [ %i.kt, %.critedge28.preheader.loopexit.i293 ] ; 3 uses
  %.0.lcssa.i296 = phi ptr [ %i.ks, %bb.aa ], [ %i.lb, %.critedge28.preheader.loopexit.i293 ] ; 3 uses
  %i.ku = icmp ult ptr %.0.lcssa.i296, %i.c
  br i1 %i.ku, label %.lr.ph40.preheader.i297, label %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit306

.lr.ph40.preheader.i297:                          ; preds = %.critedge28.preheader.i294
  %.0.lcssa50.i298 = ptrtoaddr ptr %.0.lcssa.i296 to i64
  %i.kv = zext i32 %.026.lcssa.i295 to i64
  %i.kw = add i32 %.026.lcssa.i295, %i.l
  %i.kx = trunc i64 %.0.lcssa50.i298 to i32
  %i.ky = sub i32 %i.kw, %i.kx
  br label %.lr.ph40.i299

.lr.ph.i284:                                      ; preds = %bb.aa, %bb.ab
  %indvars.iv.i285 = phi i64 [ %indvars.iv.next.i291, %bb.ab ], [ 0, %bb.aa ] ; 3 uses
  %.036.i286 = phi ptr [ %i.lb, %bb.ab ], [ %i.ks, %bb.aa ] ; 2 uses
  %.0.copyload.i.i287 = load i64, ptr %.036.i286, align 1 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kr, i64 %indvars.iv.i285
  %.0.copyload.i29.i288 = load i64, ptr %i.kz, align 1 ; 2 uses
  %i.la = icmp eq i64 %.0.copyload.i.i287, %.0.copyload.i29.i288
  br i1 %i.la, label %bb.ab, label %.critedge.i289

bb.ab:                                            ; preds = %.lr.ph.i284
  %i.lb = getelementptr inbounds nuw i8, ptr %.036.i286, i64 8 ; 3 uses
  %indvars.iv.next.i291 = add nuw nsw i64 %indvars.iv.i285, 8 ; 2 uses
  %.not.i292 = icmp ugt ptr %i.lb, %i.k
  br i1 %.not.i292, label %.critedge28.preheader.loopexit.i293, label %.lr.ph.i284, !llvm.loop !134

.critedge.i289:                                   ; preds = %.lr.ph.i284
  %i.lc = trunc nuw nsw i64 %indvars.iv.i285 to i32
  %i.ld = xor i64 %.0.copyload.i29.i288, %.0.copyload.i.i287
  %i.le = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ld, i1 true)
  %i.lf = trunc nuw nsw i64 %i.le to i32
  %i.lg = lshr i32 %i.lf, 3
  %i.lh = or disjoint i32 %i.lg, %i.lc
  br label %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit306

.lr.ph40.i299:                                    ; preds = %.critedge28.i303, %.lr.ph40.preheader.i297
  %indvars.iv48.i300 = phi i64 [ %i.kv, %.lr.ph40.preheader.i297 ], [ %indvars.iv.next49.i304, %.critedge28.i303 ] ; 3 uses
  %.139.i301 = phi ptr [ %.0.lcssa.i296, %.lr.ph40.preheader.i297 ], [ %i.lm, %.critedge28.i303 ] ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.kr, i64 %indvars.iv48.i300
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !16
  %i.lk = load i8, ptr %.139.i301, align 1, !tbaa !16
  %i.ll = icmp eq i8 %i.lj, %i.lk
  br i1 %i.ll, label %.critedge28.i303, label %.critedge2.loopexit.split.loop.exit.i302

.critedge28.i303:                                 ; preds = %.lr.ph40.i299
  %i.lm = getelementptr inbounds nuw i8, ptr %.139.i301, i64 1 ; 2 uses
  %indvars.iv.next49.i304 = add nuw nsw i64 %indvars.iv48.i300, 1
  %exitcond.not.i305 = icmp eq ptr %i.lm, %i.c
  br i1 %exitcond.not.i305, label %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit306, label %.lr.ph40.i299, !llvm.loop !135

.critedge2.loopexit.split.loop.exit.i302:         ; preds = %.lr.ph40.i299
  %i.ln = trunc nuw i64 %indvars.iv48.i300 to i32
  br label %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit306

bb.ac:                                            ; preds = %._crit_edge
  %i.lo = mul i32 %.0.copyload.i281, -1640531535
  %i.lp = lshr i32 %i.lo, 17
  %i.lq = and i32 %i.lp, %i.b
  %i.lr = zext nneg i32 %i.lq to i64
  %i.ls = add i64 %i.lr, %i.i
  %i.lt = inttoptr i64 %i.ls to ptr               ; 2 uses
  %i.lu = load i16, ptr %i.lt, align 2, !tbaa !28
  %i.lv = zext i16 %i.lu to i64
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 %i.lv ; 6 uses
  store i16 %i.ir, ptr %i.lt, align 2, !tbaa !28
  %.0.copyload.i308 = load i32, ptr %i.gi, align 1
  %.0.copyload.i309 = load i32, ptr %i.lw, align 1
  %i.lx = icmp eq i32 %.0.copyload.i308, %.0.copyload.i309
  br i1 %i.lx, label %bb.ad, label %.loopexit.loopexit

bb.ad:                                            ; preds = %bb.ac
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lw, i64 4 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.gi, i64 4 ; 3 uses
  %.not34.i310 = icmp ugt ptr %i.lz, %i.k
  br i1 %.not34.i310, label %.critedge28.preheader.i321, label %.lr.ph.i311

.critedge28.preheader.loopexit.i320:              ; preds = %bb.ae
  %i.ma = trunc nuw i64 %indvars.iv.next.i318 to i32
  br label %.critedge28.preheader.i321

.critedge28.preheader.i321:                       ; preds = %.critedge28.preheader.loopexit.i320, %bb.ad
  %.026.lcssa.i322 = phi i32 [ 0, %bb.ad ], [ %i.ma, %.critedge28.preheader.loopexit.i320 ] ; 3 uses
  %.0.lcssa.i323 = phi ptr [ %i.lz, %bb.ad ], [ %i.mi, %.critedge28.preheader.loopexit.i320 ] ; 3 uses
end_hunk_1

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/snappy?download=true
inline.NumInlined: 441
inline.NumDeleted: 208
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN6snappy8internal16CompressFragmentEPKcmPcPti:bb.a
  %i.iy = add nsw i32 %i.ix, -1                   ; 4 uses
  %i.iz = icmp slt i32 %i.ix, 17
  br i1 %i.iz, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %.tr37.i = trunc i32 %i.iy to i8
  %i.ja = shl i8 %.tr37.i, 2
  %i.jb = getelementptr inbounds nuw i8, ptr %.0117, i64 1 ; 2 uses
  store i8 %i.ja, ptr %.0117, align 1, !tbaa !14
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
  store i8 %.sink.i, ptr %.0117, align 1, !tbaa !14
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
  br i1 %i.js, label %bb.y, label %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader, !llvm.loop !121

_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader: ; preds = %bb.y, %bb.t, %bb.p
  %.9189.ph = phi i64 [ %.1181283.lcssa, %bb.p ], [ %.6186288, %bb.t ], [ %.6186288, %bb.y ]
  %.8148.ph = phi ptr [ %i.hq, %bb.p ], [ %i.iu, %bb.t ], [ %i.iu, %bb.y ]
  %.11129.ph = phi ptr [ %i.ht, %bb.p ], [ %.8126289, %bb.t ], [ %.8126289, %bb.y ]
  %.8.ph = phi ptr [ %i.hv, %bb.p ], [ %i.jd, %bb.t ], [ %i.jp, %bb.y ]
  br label %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit

_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit:    ; preds = %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader, %bb.ak
  %.9189 = phi i64 [ %.11191235, %bb.ak ], [ %.9189.ph, %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader ] ; 3 uses
  %.8148 = phi ptr [ %i.ow, %bb.ak ], [ %.8148.ph, %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader ] ; 5 uses
  %.11129 = phi ptr [ %i.ob, %bb.ak ], [ %.11129.ph, %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader ] ; 11 uses
  %.8 = phi ptr [ %.9, %bb.ak ], [ %.8.ph, %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader ] ; 5 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.8148, i64 4 ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.11129, i64 4 ; 3 uses
  %.not.i = icmp ugt ptr %i.ju, %i.k
  br i1 %.not.i, label %bb.aa, label %bb.z, !prof !30

bb.z:                                             ; preds = %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit
  %.0.copyload.i.i = load i64, ptr %i.jt, align 1 ; 2 uses
  %.0.copyload.i60.i = load i64, ptr %i.ju, align 1 ; 3 uses
  %.not57.i = icmp eq i64 %.0.copyload.i.i, %.0.copyload.i60.i
  br i1 %.not57.i, label %.thread.i, label %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread, !prof !30

.thread.i:                                        ; preds = %bb.z
  %i.jv = getelementptr inbounds nuw i8, ptr %.11129, i64 12
  br label %bb.aa

_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread: ; preds = %bb.z
  %i.jw = xor i64 %.0.copyload.i60.i, %.0.copyload.i.i ; 2 uses
  %i.jx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.jw, i1 true) ; 2 uses
  %i.jy = lshr i64 %i.jx, 3
  %i.jz = getelementptr inbounds nuw i8, ptr %.11129, i64 8
  %.0.copyload.i61.i = load i64, ptr %i.jz, align 1
  %i.ka = tail call i64 asm "testl ${2:k}, ${2:k}\0A\09cmovzq $1, $0\0A\09", "=r,r,r,0,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i61.i, i64 %i.jw, i64 %.0.copyload.i60.i) #22, !srcloc !128
  %i.kb = and i64 %i.jx, 24
  %i.kc = lshr i64 %i.ka, %i.kb
  %i.kd = add nuw nsw i64 %i.jy, 4                ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.11129, i64 %i.kd
  %i.kf = ptrtoint ptr %.11129 to i64
  %i.kg = ptrtoint ptr %.8148 to i64
  %i.kh = sub i64 %i.kf, %i.kg
  br label %bb.af

bb.aa:                                            ; preds = %.thread.i, %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit
  %.180.i = phi i64 [ 0, %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit ], [ 8, %.thread.i ] ; 2 uses
  %.1.i = phi ptr [ %i.ju, %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit ], [ %i.jv, %.thread.i ] ; 3 uses
  %.not5896.i = icmp ugt ptr %.1.i, %i.k
  br i1 %.not5896.i, label %.preheader.i, label %.lr.ph.i, !prof !126

.preheader.i:                                     ; preds = %bb.ab, %bb.aa
  %.281.lcssa.i = phi i64 [ %.180.i, %bb.aa ], [ %i.lb, %bb.ab ] ; 3 uses
  %.2.lcssa.i = phi ptr [ %.1.i, %bb.aa ], [ %i.la, %bb.ab ] ; 3 uses
  %i.ki = icmp ult ptr %.2.lcssa.i, %i.c
  br i1 %i.ki, label %.lr.ph102.preheader.i, label %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit, !prof !129

.lr.ph102.preheader.i:                            ; preds = %.preheader.i
  %.2.lcssa112.i = ptrtoaddr ptr %.2.lcssa.i to i64
  %i.kj = add i64 %.281.lcssa.i, %i.j
  %i.kk = sub i64 %i.kj, %.2.lcssa112.i
  br label %.lr.ph102.i

.lr.ph.i:                                         ; preds = %bb.aa, %bb.ab
  %.298.i = phi ptr [ %i.la, %bb.ab ], [ %.1.i, %bb.aa ] ; 3 uses
  %.28197.i = phi i64 [ %i.lb, %bb.ab ], [ %.180.i, %bb.aa ] ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jt, i64 %.28197.i
  %.0.copyload.i62.i = load i64, ptr %i.kl, align 1 ; 2 uses
  %.0.copyload.i63.i = load i64, ptr %.298.i, align 1 ; 3 uses
  %i.km = icmp eq i64 %.0.copyload.i62.i, %.0.copyload.i63.i
  br i1 %i.km, label %bb.ab, label %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread237

_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread237: ; preds = %.lr.ph.i
  %i.kn = xor i64 %.0.copyload.i63.i, %.0.copyload.i62.i ; 2 uses
  %i.ko = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.kn, i1 true) ; 2 uses
  %i.kp = lshr i64 %i.ko, 3
  %i.kq = getelementptr inbounds nuw i8, ptr %.298.i, i64 4
  %.0.copyload.i64.i = load i64, ptr %i.kq, align 1
  %i.kr = tail call i64 asm "testl ${2:k}, ${2:k}\0A\09cmovzq $1, $0\0A\09", "=r,r,r,0,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i64.i, i64 %i.kn, i64 %.0.copyload.i63.i) #22, !srcloc !130
  %i.ks = and i64 %i.ko, 24
  %i.kt = lshr i64 %i.kr, %i.ks
  %i.ku = or disjoint i64 %i.kp, %.28197.i
  %i.kv = add i64 %i.ku, 4                        ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.11129, i64 %i.kv
  %i.kx = ptrtoint ptr %.11129 to i64
  %i.ky = ptrtoint ptr %.8148 to i64
  %i.kz = sub i64 %i.kx, %i.ky
  br label %bb.ag

bb.ab:                                            ; preds = %.lr.ph.i
  %i.la = getelementptr inbounds nuw i8, ptr %.298.i, i64 8 ; 3 uses
  %i.lb = add i64 %.28197.i, 8                    ; 2 uses
  %.not58.i = icmp ugt ptr %i.la, %i.k
  br i1 %.not58.i, label %.preheader.i, label %.lr.ph.i, !prof !127

.lr.ph102.i:                                      ; preds = %bb.ac, %.lr.ph102.preheader.i
  %.4101.i = phi ptr [ %i.lg, %bb.ac ], [ %.2.lcssa.i, %.lr.ph102.preheader.i ] ; 4 uses
  %.483100.i = phi i64 [ %i.lh, %bb.ac ], [ %.281.lcssa.i, %.lr.ph102.preheader.i ] ; 4 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.jt, i64 %.483100.i
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !14
  %i.le = load i8, ptr %.4101.i, align 1, !tbaa !14
  %i.lf = icmp eq i8 %i.ld, %i.le
  br i1 %i.lf, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph102.i
  %i.lg = getelementptr inbounds nuw i8, ptr %.4101.i, i64 1 ; 2 uses
  %i.lh = add i64 %.483100.i, 1
  %exitcond.not.i = icmp eq ptr %i.lg, %i.c
  br i1 %exitcond.not.i, label %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit, label %.lr.ph102.i, !prof !127, !llvm.loop !122

bb.ad:                                            ; preds = %.lr.ph102.i
  %.not59.i = icmp ugt ptr %.4101.i, %i.l
  br i1 %.not59.i, label %.split, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.0.copyload.i65.i = load i64, ptr %.4101.i, align 1
  br label %.split

.split:                                           ; preds = %bb.ae, %bb.ad
  %.10190 = phi i64 [ %.9189, %bb.ad ], [ %.0.copyload.i65.i, %bb.ae ] ; 2 uses
  %i.li = icmp ult i64 %.483100.i, 8
  %i.lj = add i64 %.483100.i, 4                   ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %.11129, i64 %i.lj ; 2 uses
  %i.ll = ptrtoint ptr %.11129 to i64
  %i.lm = ptrtoint ptr %.8148 to i64
  %i.ln = sub i64 %i.ll, %i.lm                    ; 2 uses
  br i1 %i.li, label %bb.af, label %bb.ag

_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit: ; preds = %bb.ac, %.preheader.i
  %.483.lcssa.i = phi i64 [ %.281.lcssa.i, %.preheader.i ], [ %i.kk, %bb.ac ] ; 2 uses
  %i.lo = icmp ult i64 %.483.lcssa.i, 8
  %i.lp = add i64 %.483.lcssa.i, 4                ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %.11129, i64 %i.lp ; 2 uses
  %i.lr = ptrtoint ptr %.11129 to i64
  %i.ls = ptrtoint ptr %.8148 to i64
  %i.lt = sub i64 %i.lr, %i.ls                    ; 2 uses
  br i1 %i.lo, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.split, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit
  %i.lu = phi i64 [ %i.kh, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread ], [ %i.lt, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit ], [ %i.ln, %.split ] ; 3 uses
  %i.lv = phi ptr [ %i.ke, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread ], [ %i.lq, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit ], [ %i.lk, %.split ]
  %i.lw = phi i64 [ %i.kd, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread ], [ %i.lp, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit ], [ %i.lj, %.split ]
  %.11191236 = phi i64 [ %i.kc, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread ], [ %.9189, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit ], [ %.10190, %.split ]
  %i.lx = shl nuw nsw i64 %i.lw, 2
  %i.ly = shl i64 %i.lu, 8
  %i.lz = add nuw i64 %i.lx, %i.ly
  %i.ma = trunc i64 %i.lz to i32
  %5 = lshr i64 %i.lu, 3
  %6 = trunc i64 %5 to i32
  %i.mb = and i32 %6, 224
  %i.mc = add nsw i32 %i.mb, -15
  %i.md = icmp ult i64 %i.lu, 2048                ; 2 uses
  %i.me = select i1 %i.md, i32 %i.mc, i32 -2
  %i.mf = add i32 %i.me, %i.ma
  store i32 %i.mf, ptr %.8, align 1
  %i.mg = select i1 %i.md, i64 2, i64 3
  %i.mh = getelementptr inbounds nuw i8, ptr %.8, i64 %i.mg
  br label %_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit

bb.ag:                                            ; preds = %.split, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread237, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit
  %i.mi = phi i64 [ %i.kz, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread237 ], [ %i.lt, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit ], [ %i.ln, %.split ] ; 6 uses
  %i.mj = phi ptr [ %i.kw, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread237 ], [ %i.lq, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit ], [ %i.lk, %.split ] ; 2 uses
  %i.mk = phi i64 [ %i.kv, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread237 ], [ %i.lp, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit ], [ %i.lj, %.split ] ; 5 uses
  %.11191244 = phi i64 [ %i.kt, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread237 ], [ %.9189, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit ], [ %.10190, %.split ] ; 2 uses
  %i.ml = icmp ugt i64 %i.mk, 67
  br i1 %i.ml, label %.lr.ph.i167, label %._crit_edge.i164, !prof !131

.lr.ph.i167:                                      ; preds = %bb.ag
  %.tr21.i = trunc i64 %i.mi to i32
  %i.mm = shl i32 %.tr21.i, 8
  %i.mn = or disjoint i32 %i.mm, 254              ; 9 uses
  %i.mo = add i64 %i.mk, -68                      ; 2 uses
  %i.mp = lshr i64 %i.mo, 6
  %i.mq = add nuw nsw i64 %i.mp, 1
  %xtraiter = and i64 %i.mq, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader, !prof !129

.prol.preheader:                                  ; preds = %.lr.ph.i167, %.prol.preheader
  %.023.i.prol = phi i64 [ %i.ms, %.prol.preheader ], [ %i.mk, %.lr.ph.i167 ]
  %.01522.i.prol = phi ptr [ %i.mr, %.prol.preheader ], [ %.8, %.lr.ph.i167 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i167 ]
  store i32 %i.mn, ptr %.01522.i.prol, align 1
  %i.mr = getelementptr inbounds nuw i8, ptr %.01522.i.prol, i64 3 ; 3 uses
  %i.ms = add i64 %.023.i.prol, -64               ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !prof !132, !llvm.loop !123

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i167
  %.023.i.unr = phi i64 [ %i.mk, %.lr.ph.i167 ], [ %i.ms, %.prol.preheader ]
  %.01522.i.unr = phi ptr [ %.8, %.lr.ph.i167 ], [ %i.mr, %.prol.preheader ]
  %.lcssa416.unr = phi ptr [ poison, %.lr.ph.i167 ], [ %i.mr, %.prol.preheader ]
  %.lcssa415.unr = phi i64 [ poison, %.lr.ph.i167 ], [ %i.ms, %.prol.preheader ]
  %i.mt = icmp ult i64 %i.mo, 448
  br i1 %i.mt, label %._crit_edge.i164, label %.lr.ph.i167.new, !prof !126

.lr.ph.i167.new:                                  ; preds = %.prol.loopexit, %.lr.ph.i167.new
  %.023.i = phi i64 [ %i.nc, %.lr.ph.i167.new ], [ %.023.i.unr, %.prol.loopexit ]
  %.01522.i = phi ptr [ %i.nb, %.lr.ph.i167.new ], [ %.01522.i.unr, %.prol.loopexit ] ; 9 uses
  store i32 %i.mn, ptr %.01522.i, align 1
  %i.mu = getelementptr inbounds nuw i8, ptr %.01522.i, i64 3
  store i32 %i.mn, ptr %i.mu, align 1
  %i.mv = getelementptr inbounds nuw i8, ptr %.01522.i, i64 6
  store i32 %i.mn, ptr %i.mv, align 1
  %i.mw = getelementptr inbounds nuw i8, ptr %.01522.i, i64 9
  store i32 %i.mn, ptr %i.mw, align 1
  %i.mx = getelementptr inbounds nuw i8, ptr %.01522.i, i64 12
  store i32 %i.mn, ptr %i.mx, align 1
  %i.my = getelementptr inbounds nuw i8, ptr %.01522.i, i64 15
  store i32 %i.mn, ptr %i.my, align 1
  %i.mz = getelementptr inbounds nuw i8, ptr %.01522.i, i64 18
  store i32 %i.mn, ptr %i.mz, align 1
  %i.na = getelementptr inbounds nuw i8, ptr %.01522.i, i64 21
  store i32 %i.mn, ptr %i.na, align 1
  %i.nb = getelementptr inbounds nuw i8, ptr %.01522.i, i64 24 ; 2 uses
  %i.nc = add i64 %.023.i, -512                   ; 3 uses
  %i.nd = icmp ugt i64 %i.nc, 67
  br i1 %i.nd, label %.lr.ph.i167.new, label %._crit_edge.i164, !prof !133, !llvm.loop !124

._crit_edge.i164:                                 ; preds = %.prol.loopexit, %.lr.ph.i167.new, %bb.ag
  %.015.lcssa.i = phi ptr [ %.8, %bb.ag ], [ %.lcssa416.unr, %.prol.loopexit ], [ %i.nb, %.lr.ph.i167.new ] ; 5 uses
  %.0.lcssa.i = phi i64 [ %i.mk, %bb.ag ], [ %.lcssa415.unr, %.prol.loopexit ], [ %i.nc, %.lr.ph.i167.new ] ; 5 uses
  %i.ne = icmp samesign ugt i64 %.0.lcssa.i, 64
  br i1 %i.ne, label %.thread.i165, label %bb.ah

.thread.i165:                                     ; preds = %._crit_edge.i164
  %.tr.i166 = trunc i64 %i.mi to i32
  %i.nf = shl i32 %.tr.i166, 8
  %i.ng = or disjoint i32 %i.nf, 238
  store i32 %i.ng, ptr %.015.lcssa.i, align 1
  %i.nh = getelementptr inbounds nuw i8, ptr %.015.lcssa.i, i64 3
  %i.ni = add nsw i64 %.0.lcssa.i, -60
  br label %bb.ai

bb.ah:                                            ; preds = %._crit_edge.i164
  %i.nj = icmp samesign ult i64 %.0.lcssa.i, 12
  br i1 %i.nj, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah, %.thread.i165
  %.120.i = phi i64 [ %i.ni, %.thread.i165 ], [ %.0.lcssa.i, %bb.ah ]
  %.11619.i = phi ptr [ %i.nh, %.thread.i165 ], [ %.015.lcssa.i, %bb.ah ] ; 2 uses
  %i.nk = shl nuw nsw i64 %.120.i, 2
  %i.nl = shl i64 %i.mi, 8
  %i.nm = add nuw i64 %i.nk, %i.nl
  %i.nn = trunc i64 %i.nm to i32
  %7 = lshr i64 %i.mi, 3
  %8 = trunc i64 %7 to i32
  %i.no = and i32 %8, 224
  %i.np = add nsw i32 %i.no, -15
  %i.nq = icmp ult i64 %i.mi, 2048                ; 2 uses
  %i.nr = select i1 %i.nq, i32 %i.np, i32 -2
  %i.ns = add i32 %i.nr, %i.nn
  store i32 %i.ns, ptr %.11619.i, align 1
  %i.nt = select i1 %i.nq, i64 2, i64 3
  %i.nu = getelementptr inbounds nuw i8, ptr %.11619.i, i64 %i.nt
  br label %_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit

bb.aj:                                            ; preds = %bb.ah
  %i.nv = shl nuw nsw i64 %.0.lcssa.i, 2
  %i.nw = shl i64 %i.mi, 8
  %i.nx = add i64 %i.nw, 4294967294
  %i.ny = add i64 %i.nx, %i.nv
  %i.nz = trunc i64 %i.ny to i32
  store i32 %i.nz, ptr %.015.lcssa.i, align 1
  %i.oa = getelementptr inbounds nuw i8, ptr %.015.lcssa.i, i64 3
  br label %_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit

_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit:          ; preds = %bb.aj, %bb.ai, %bb.af
  %i.ob = phi ptr [ %i.lv, %bb.af ], [ %i.mj, %bb.ai ], [ %i.mj, %bb.aj ] ; 6 uses
  %.11191235 = phi i64 [ %.11191236, %bb.af ], [ %.11191244, %bb.ai ], [ %.11191244, %bb.aj ] ; 3 uses
  %.9 = phi ptr [ %i.mh, %bb.af ], [ %i.nu, %bb.ai ], [ %i.oa, %bb.aj ] ; 3 uses
  %.not158 = icmp ult ptr %i.ob, %i.e
  br i1 %.not158, label %bb.ak, label %.thread252, !prof !27

bb.ak:                                            ; preds = %_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit
  %i.oc = ptrtoint ptr %i.ob to i64
  %i.od = sub i64 %i.oc, %i.h
  %i.oe = trunc i64 %i.od to i16                  ; 2 uses
  %i.of = add i16 %i.oe, -1
  %i.og = getelementptr inbounds i8, ptr %i.ob, i64 -1
  %.0.copyload.i168 = load i32, ptr %i.og, align 1
  %i.oh = mul i32 %.0.copyload.i168, 506832829
  %i.oi = lshr i32 %i.oh, 17
  %i.oj = and i32 %i.oi, %i.b
  %i.ok = zext nneg i32 %i.oj to i64
  %i.ol = add i64 %i.ok, %i.i
  %i.om = inttoptr i64 %i.ol to ptr
  store i16 %i.of, ptr %i.om, align 2, !tbaa !29
  %i.on = trunc i64 %.11191235 to i32             ; 2 uses
  %i.oo = mul i32 %i.on, 506832829
  %i.op = lshr i32 %i.oo, 17
  %i.oq = and i32 %i.op, %i.b
  %i.or = zext nneg i32 %i.oq to i64
  %i.os = add i64 %i.or, %i.i
  %i.ot = inttoptr i64 %i.os to ptr               ; 2 uses
  %i.ou = load i16, ptr %i.ot, align 2, !tbaa !29
  %i.ov = zext i16 %i.ou to i64
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 %i.ov ; 2 uses
  store i16 %i.oe, ptr %i.ot, align 2, !tbaa !29
  %.0.copyload.i169 = load i32, ptr %i.ow, align 1
  %i.ox = icmp eq i32 %.0.copyload.i169, %i.on
  br i1 %i.ox, label %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit, label %bb.al, !llvm.loop !125

bb.al:                                            ; preds = %bb.ak
  %i.oy = lshr i64 %.11191235, 8
  %i.oz = trunc i64 %i.oy to i32
  br label %bb.c

.thread252:                                       ; preds = %bb.q, %bb.r, %_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit, %bb.a
  %.13 = phi ptr [ %0, %bb.a ], [ %.0118, %bb.r ], [ %i.ob, %_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit ], [ %.0118, %bb.q ] ; 3 uses
  %.11 = phi ptr [ %2, %bb.a ], [ %.0117, %bb.r ], [ %.9, %_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit ], [ %.0117, %bb.q ] ; 4 uses
  %i.pa = icmp ult ptr %.13, %i.c
  br i1 %i.pa, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %.thread252
  %i.pb = ptrtoint ptr %i.c to i64
  %i.pc = ptrtoint ptr %.13 to i64
  %i.pd = sub i64 %i.pb, %i.pc                    ; 2 uses
  %i.pe = trunc i64 %i.pd to i32                  ; 2 uses
  %i.pf = add nsw i32 %i.pe, -1                   ; 3 uses
  %i.pg = icmp slt i32 %i.pe, 61
  br i1 %i.pg, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %.tr.i173 = trunc i32 %i.pf to i8
  %i.ph = shl i8 %.tr.i173, 2
  br label %_ZN6snappyL11EmitLiteralILb0EEEPcS1_PKci.exit

bb.ao:                                            ; preds = %bb.am
  %i.pi = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.pf, i1 true)
  %i.pj = lshr i32 %i.pi, 3
  %i.pk = xor i32 %i.pj, 3                        ; 2 uses
  %.tr16.i = trunc nuw nsw i32 %i.pk to i8
  %i.pl = shl nuw nsw i8 %.tr16.i, 2
  %i.pm = or disjoint i8 %i.pl, -16
  %i.pn = getelementptr inbounds nuw i8, ptr %.11, i64 1 ; 2 uses
  store i32 %i.pf, ptr %i.pn, align 1
  %i.po = zext nneg i32 %i.pk to i64
  %i.pp = getelementptr i8, ptr %i.pn, i64 %i.po
  br label %_ZN6snappyL11EmitLiteralILb0EEEPcS1_PKci.exit

_ZN6snappyL11EmitLiteralILb0EEEPcS1_PKci.exit:    ; preds = %bb.an, %bb.ao
  %.sink.i170 = phi i8 [ %i.ph, %bb.an ], [ %i.pm, %bb.ao ]
  %.pn.i171 = phi ptr [ %.11, %bb.an ], [ %i.pp, %bb.ao ]
  store i8 %.sink.i170, ptr %.11, align 1, !tbaa !14
  %.0.i172 = getelementptr i8, ptr %.pn.i171, i64 1 ; 2 uses
  %sext257 = shl i64 %i.pd, 32
  %i.pq = ashr exact i64 %sext257, 32             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i172, ptr readonly align 1 %.13, i64 %i.pq, i1 false)
  %i.pr = getelementptr inbounds i8, ptr %.0.i172, i64 %i.pq
  br label %bb.ap

bb.ap:                                            ; preds = %.thread252, %_ZN6snappyL11EmitLiteralILb0EEEPcS1_PKci.exit
  %.0 = phi ptr [ %.11, %.thread252 ], [ %i.pr, %_ZN6snappyL11EmitLiteralILb0EEEPcS1_PKci.exit ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6snappy9MemCopy64EPcPKvm(ptr nofree noundef writeonly captures(none) initializes((0, 32)) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(32) %1, i64 32, i1 false)
  %i.a = icmp ugt i64 %2, 32
  br i1 %i.a, label %bb.b, label %bb.c, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.b, ptr noundef nonnull align 1 dereferenceable(32) %i.c, i64 32, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN6snappy9MemCopy64ElPKvm(i64 noundef %0, ptr nofree noundef readnone captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6snappy13ClearDeferredEPPKvPmPh(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr noundef %2) local_unnamed_addr #7 {
bb.a:
  store ptr %2, ptr %0, align 8, !tbaa !33
  store i64 0, ptr %1, align 8, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6snappy12DeferMemCopyEPPKvPmS1_m(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #7 {
bb.a:
  store ptr %2, ptr %0, align 8, !tbaa !33
  store i64 %3, ptr %1, align 8, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(42) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38   ; 2 uses
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !39     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !40
  %i.k = zext i32 %i.j to i64
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !42
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef %i.k) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.o = load ptr, ptr %0, align 8, !tbaa !39     ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !42
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call noundef ptr %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull %i.a) #23 ; 2 uses
  %i.t = load i64, ptr %i.a, align 8, !tbaa !16   ; 3 uses
  %i.u = trunc i64 %i.t to i32
  store i32 %i.u, ptr %i.i, align 8, !tbaa !40
  %i.v = icmp eq i64 %i.t, 0                      ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.x = zext i1 %i.v to i8
  store i8 %i.x, ptr %i.w, align 4, !tbaa !43
  br i1 %i.v, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t ; 2 uses
  store ptr %i.y, ptr %i.e, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.z = phi ptr [ %i.y, %bb.c ], [ %i.f, %bb.a ]
  %.033 = phi ptr [ %i.s, %bb.c ], [ %i.d, %bb.a ] ; 5 uses
  %i.aa = load i8, ptr %.033, align 1, !tbaa !14  ; 2 uses
end_hunk_0

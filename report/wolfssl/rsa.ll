Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/rsa?download=true
inline.NumInlined: 69
inline.NumDeleted: 28
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@wc_RsaUnPad_ex:bb.a
  %i.fk = load i8, ptr %.22453.i.i.prol, align 1, !tbaa !24
  %i.fl = xor i8 %i.fk, %i.fi
  store i8 %i.fl, ptr %.22453.i.i.prol, align 1, !tbaa !24
  %i.fm = add i32 %.22752.i.i.prol, -1            ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph56.i.i.prol.loopexit, label %.lr.ph56.i.i.prol, !llvm.loop !49

.lr.ph56.i.i.prol.loopexit:                       ; preds = %.lr.ph56.i.i.prol, %.lr.ph56.i.i.preheader
  %.254.i.i.unr = phi ptr [ %.254.i.i.ph, %.lr.ph56.i.i.preheader ], [ %i.fh, %.lr.ph56.i.i.prol ]
  %.22453.i.i.unr = phi ptr [ %.22453.i.i.ph, %.lr.ph56.i.i.preheader ], [ %i.fj, %.lr.ph56.i.i.prol ]
  %.22752.i.i.unr = phi i32 [ %.22752.i.i.ph, %.lr.ph56.i.i.preheader ], [ %i.fm, %.lr.ph56.i.i.prol ]
  %i.fn = icmp ult i32 %i.fg, 3
  br i1 %i.fn, label %xorbuf.exit.i, label %.lr.ph56.i.i

.lr.ph56.i.i:                                     ; preds = %.lr.ph56.i.i.prol.loopexit, %.lr.ph56.i.i
  %.254.i.i = phi ptr [ %i.gd, %.lr.ph56.i.i ], [ %.254.i.i.unr, %.lr.ph56.i.i.prol.loopexit ] ; 5 uses
  %.22453.i.i = phi ptr [ %i.gf, %.lr.ph56.i.i ], [ %.22453.i.i.unr, %.lr.ph56.i.i.prol.loopexit ] ; 6 uses
  %.22752.i.i = phi i32 [ %i.gi, %.lr.ph56.i.i ], [ %.22752.i.i.unr, %.lr.ph56.i.i.prol.loopexit ]
  %i.fo = getelementptr inbounds nuw i8, ptr %.254.i.i, i64 1
  %i.fp = load i8, ptr %.254.i.i, align 1, !tbaa !24
  %i.fq = getelementptr inbounds nuw i8, ptr %.22453.i.i, i64 1 ; 2 uses
  %i.fr = load i8, ptr %.22453.i.i, align 1, !tbaa !24
  %i.fs = xor i8 %i.fr, %i.fp
  store i8 %i.fs, ptr %.22453.i.i, align 1, !tbaa !24
  %i.ft = getelementptr inbounds nuw i8, ptr %.254.i.i, i64 2
  %i.fu = load i8, ptr %i.fo, align 1, !tbaa !24
  %i.fv = getelementptr inbounds nuw i8, ptr %.22453.i.i, i64 2 ; 2 uses
  %i.fw = load i8, ptr %i.fq, align 1, !tbaa !24
  %i.fx = xor i8 %i.fw, %i.fu
  store i8 %i.fx, ptr %i.fq, align 1, !tbaa !24
  %i.fy = getelementptr inbounds nuw i8, ptr %.254.i.i, i64 3
  %i.fz = load i8, ptr %i.ft, align 1, !tbaa !24
  %i.ga = getelementptr inbounds nuw i8, ptr %.22453.i.i, i64 3 ; 2 uses
  %i.gb = load i8, ptr %i.fv, align 1, !tbaa !24
  %i.gc = xor i8 %i.gb, %i.fz
  store i8 %i.gc, ptr %i.fv, align 1, !tbaa !24
  %i.gd = getelementptr inbounds nuw i8, ptr %.254.i.i, i64 4
  %i.ge = load i8, ptr %i.fy, align 1, !tbaa !24
  %i.gf = getelementptr inbounds nuw i8, ptr %.22453.i.i, i64 4
  %i.gg = load i8, ptr %i.ga, align 1, !tbaa !24
  %i.gh = xor i8 %i.gg, %i.ge
  store i8 %i.gh, ptr %i.ga, align 1, !tbaa !24
  %i.gi = add i32 %.22752.i.i, -4                 ; 2 uses
  %.not.i.i.3 = icmp eq i32 %i.gi, 0
  br i1 %.not.i.i.3, label %xorbuf.exit.i, label %.lr.ph56.i.i, !llvm.loop !50

xorbuf.exit.i:                                    ; preds = %.lr.ph56.i.i.prol.loopexit, %.lr.ph56.i.i, %middle.block127, %vec.epilog.middle.block, %bb.o
  %i.gj = zext nneg i32 %.fr274 to i64            ; 11 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.gj ; 10 uses
  %i.gl = call fastcc i32 @RsaMGF(i32 noundef %6, ptr noundef nonnull %i.c, i32 noundef %.fr274, ptr noundef nonnull %i.gk, i32 noundef %i.dh, ptr noundef %11) ; 2 uses
  %.not76.i = icmp eq i32 %i.gl, 0
  br i1 %.not76.i, label %bb.p, label %.preheader16.i.i

.preheader16.i.i:                                 ; preds = %xorbuf.exit.i
  fence seq_cst
  %i.gm = icmp samesign ugt i32 %.fr274, 7
  br i1 %i.gm, label %.lr.ph25.preheader.i.i, label %.preheader.i81.i

.lr.ph25.preheader.i.i:                           ; preds = %.preheader16.i.i
  %i.gn = and i64 %i.gj, 2147483640               ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.c, i8 0, i64 %i.gn, i1 false), !tbaa !22
  %scevgep.i.i = getelementptr i8, ptr %i.c, i64 %i.gn
  %i.go = and i64 %i.gj, 7
  br label %.preheader.i81.i

.preheader.i81.i:                                 ; preds = %.lr.ph25.preheader.i.i, %.preheader16.i.i
  %.114.lcssa.i.i = phi i64 [ %i.gj, %.preheader16.i.i ], [ %i.go, %.lr.ph25.preheader.i.i ] ; 2 uses
  %.0.lcssa.i82.i = phi ptr [ %i.c, %.preheader16.i.i ], [ %scevgep.i.i, %.lr.ph25.preheader.i.i ]
  %.not1528.i.i = icmp eq i64 %.114.lcssa.i.i, 0
  br i1 %.not1528.i.i, label %._crit_edge.i83.i, label %.lr.ph31.preheader.i.i

.lr.ph31.preheader.i.i:                           ; preds = %.preheader.i81.i
  call void @llvm.memset.p0.i64(ptr align 1 %.0.lcssa.i82.i, i8 0, i64 %.114.lcssa.i.i, i1 false), !tbaa !24
  br label %._crit_edge.i83.i

._crit_edge.i83.i:                                ; preds = %.lr.ph31.preheader.i.i, %.preheader.i81.i
  fence seq_cst
  br label %RsaUnPad_OAEP.exit

bb.p:                                             ; preds = %xorbuf.exit.i
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 %i.gj
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 1 ; 10 uses
  %i.gr = ptrtoint ptr %i.gq to i64               ; 3 uses
  %i.gs = ptrtoint ptr %i.gk to i64               ; 2 uses
  %i.gt = or i64 %i.gr, %i.gs
  %i.gu = and i64 %i.gt, 7
  %or.cond.i84.i = icmp eq i64 %i.gu, 0
  br i1 %or.cond.i84.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.gv = and i32 %i.dh, -8
  %.idx.i.i110.i = zext i32 %i.gv to i64          ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gk, i64 %.idx.i.i110.i
  %.not.i.i111.i = icmp ult i32 %i.dh, 8
  br i1 %.not.i.i111.i, label %XorWords.exit.i114.i, label %.lr.ph.i.i112.i.preheader

.lr.ph.i.i112.i.preheader:                        ; preds = %bb.q
  %i.gx = ptrtoaddr ptr %i.c to i64               ; 3 uses
  %i.gy = add i64 %i.gx, %.idx.i.i110.i
  %i.gz = add i64 %i.gy, %i.gj
  %i.ha = add i64 %i.gx, %i.gj
  %i.hb = add i64 %i.ha, 8
  %i.hc = call i64 @llvm.umax.i64(i64 %i.gz, i64 %i.hb)
  %i.hd = xor i64 %i.gx, -1
  %i.he = add i64 %i.hc, %i.hd
  %i.hf = sub i64 %i.he, %i.gj                    ; 2 uses
  %i.hg = lshr i64 %i.hf, 3
  %i.hh = add nuw nsw i64 %i.hg, 1                ; 2 uses
  %min.iters.check168 = icmp ult i64 %i.hf, 24
  br i1 %min.iters.check168, label %.lr.ph.i.i112.i.preheader250, label %vector.ph169

vector.ph169:                                     ; preds = %.lr.ph.i.i112.i.preheader
  %n.vec170 = and i64 %i.hh, 4611686018427387900  ; 3 uses
  %i.hi = shl i64 %n.vec170, 3                    ; 2 uses
  %i.hj = getelementptr i8, ptr %i.gq, i64 %i.hi  ; 2 uses
  %i.hk = getelementptr i8, ptr %i.gk, i64 %i.hi  ; 2 uses
  br label %vector.body171

vector.body171:                                   ; preds = %vector.body171, %vector.ph169
  %index172 = phi i64 [ 0, %vector.ph169 ], [ %index.next179, %vector.body171 ] ; 2 uses
  %i.hl = shl i64 %index172, 3                    ; 2 uses
  %next.gep173 = getelementptr i8, ptr %i.gq, i64 %i.hl ; 3 uses
  %next.gep174 = getelementptr i8, ptr %i.gk, i64 %i.hl ; 2 uses
  %i.hm = getelementptr i8, ptr %next.gep174, i64 16
  %wide.load175 = load <2 x i64>, ptr %next.gep174, align 8, !tbaa !22
  %wide.load176 = load <2 x i64>, ptr %i.hm, align 8, !tbaa !22
  %i.hn = getelementptr i8, ptr %next.gep173, i64 16 ; 2 uses
  %wide.load177 = load <2 x i64>, ptr %next.gep173, align 8, !tbaa !22
  %wide.load178 = load <2 x i64>, ptr %i.hn, align 8, !tbaa !22
  %i.ho = xor <2 x i64> %wide.load177, %wide.load175
  %i.hp = xor <2 x i64> %wide.load178, %wide.load176
  store <2 x i64> %i.ho, ptr %next.gep173, align 8, !tbaa !22
  store <2 x i64> %i.hp, ptr %i.hn, align 8, !tbaa !22
  %index.next179 = add nuw i64 %index172, 4       ; 2 uses
  %i.hq = icmp eq i64 %index.next179, %n.vec170
  br i1 %i.hq, label %middle.block180, label %vector.body171, !llvm.loop !51

middle.block180:                                  ; preds = %vector.body171
  %cmp.n181 = icmp eq i64 %i.hh, %n.vec170
  br i1 %cmp.n181, label %XorWords.exit.i114.i, label %.lr.ph.i.i112.i.preheader250

.lr.ph.i.i112.i.preheader250:                     ; preds = %.lr.ph.i.i112.i.preheader, %middle.block180
  %.sroa.039.0.i113.i.ph = phi ptr [ %i.gq, %.lr.ph.i.i112.i.preheader ], [ %i.hj, %middle.block180 ]
  %.ph = phi ptr [ %i.gk, %.lr.ph.i.i112.i.preheader ], [ %i.hk, %middle.block180 ]
  br label %.lr.ph.i.i112.i

.lr.ph.i.i112.i:                                  ; preds = %.lr.ph.i.i112.i.preheader250, %.lr.ph.i.i112.i
  %.sroa.039.0.i113.i = phi ptr [ %i.hu, %.lr.ph.i.i112.i ], [ %.sroa.039.0.i113.i.ph, %.lr.ph.i.i112.i.preheader250 ] ; 3 uses
  %i.hr = phi ptr [ %i.hs, %.lr.ph.i.i112.i ], [ %.ph, %.lr.ph.i.i112.i.preheader250 ] ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8 ; 3 uses
  %i.ht = load i64, ptr %i.hr, align 8, !tbaa !22
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.039.0.i113.i, i64 8 ; 2 uses
  %i.hv = load i64, ptr %.sroa.039.0.i113.i, align 8, !tbaa !22
  %i.hw = xor i64 %i.hv, %i.ht
  store i64 %i.hw, ptr %.sroa.039.0.i113.i, align 8, !tbaa !22
  %i.hx = icmp ult ptr %i.hs, %i.gw
  br i1 %i.hx, label %.lr.ph.i.i112.i, label %XorWords.exit.i114.i, !llvm.loop !52

XorWords.exit.i114.i:                             ; preds = %.lr.ph.i.i112.i, %middle.block180, %bb.q
  %.sroa.039.1.i115.i = phi ptr [ %i.gq, %bb.q ], [ %i.hj, %middle.block180 ], [ %i.hu, %.lr.ph.i.i112.i ]
  %.sroa.0.0.i116.i = phi ptr [ %i.gk, %bb.q ], [ %i.hk, %middle.block180 ], [ %i.hs, %.lr.ph.i.i112.i ]
  %i.hy = and i32 %i.dh, 7
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.hz = xor i64 %i.gr, %i.gs
  %i.ia = and i64 %i.hz, 7
  %i.ib = icmp eq i64 %i.ia, 0
  br i1 %i.ib, label %.preheader.i94.i, label %bb.s

.preheader.i94.i:                                 ; preds = %bb.r
  %i.ic = and i64 %i.gr, 7
  %i.id = icmp ne i64 %i.ic, 0
  %i.ie = icmp ne i32 %i.dh, 0
  %i.if = and i1 %i.ie, %i.id
  br i1 %i.if, label %.lr.ph.i106.i, label %._crit_edge.i95.i

.lr.ph.i106.i:                                    ; preds = %.preheader.i94.i, %.lr.ph.i106.i
  %.048.i107.i = phi ptr [ %i.ig, %.lr.ph.i106.i ], [ %i.gk, %.preheader.i94.i ] ; 2 uses
  %.02247.i108.i = phi ptr [ %i.ii, %.lr.ph.i106.i ], [ %i.gq, %.preheader.i94.i ] ; 3 uses
  %.02546.i109.i = phi i32 [ %i.il, %.lr.ph.i106.i ], [ %i.dh, %.preheader.i94.i ]
  %i.ig = getelementptr inbounds nuw i8, ptr %.048.i107.i, i64 1 ; 2 uses
  %i.ih = load i8, ptr %.048.i107.i, align 1, !tbaa !24
  %i.ii = getelementptr inbounds nuw i8, ptr %.02247.i108.i, i64 1 ; 3 uses
  %i.ij = load i8, ptr %.02247.i108.i, align 1, !tbaa !24
  %i.ik = xor i8 %i.ij, %i.ih
  store i8 %i.ik, ptr %.02247.i108.i, align 1, !tbaa !24
  %i.il = add i32 %.02546.i109.i, -1              ; 3 uses
  %i.im = ptrtoint ptr %i.ii to i64
  %i.in = and i64 %i.im, 7
  %i.io = icmp ne i64 %i.in, 0
  %i.ip = icmp ne i32 %i.il, 0
  %i.iq = select i1 %i.io, i1 %i.ip, i1 false
  br i1 %i.iq, label %.lr.ph.i106.i, label %._crit_edge.i95.i, !llvm.loop !1

._crit_edge.i95.i:                                ; preds = %.lr.ph.i106.i, %.preheader.i94.i
  %.025.lcssa.i96.i = phi i32 [ %i.dh, %.preheader.i94.i ], [ %i.il, %.lr.ph.i106.i ] ; 3 uses
  %.022.lcssa.i97.i = phi ptr [ %i.gq, %.preheader.i94.i ], [ %i.ii, %.lr.ph.i106.i ] ; 7 uses
  %.0.lcssa.i98.i = phi ptr [ %i.gk, %.preheader.i94.i ], [ %i.ig, %.lr.ph.i106.i ] ; 9 uses
  %.0.lcssa.i98.i144 = ptrtoaddr ptr %.0.lcssa.i98.i to i64 ; 6 uses
  %i.ir = and i32 %.025.lcssa.i96.i, -8
  %.idx.i30.i99.i = zext i32 %i.ir to i64         ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.0.lcssa.i98.i, i64 %.idx.i30.i99.i
  %.not.i31.i100.i = icmp ult i32 %.025.lcssa.i96.i, 8
  br i1 %.not.i31.i100.i, label %XorWords.exit33.i103.i, label %.lr.ph.i32.i101.i.preheader

.lr.ph.i32.i101.i.preheader:                      ; preds = %._crit_edge.i95.i
  %i.it = add i64 %.0.lcssa.i98.i144, %.idx.i30.i99.i
  %i.iu = add i64 %.0.lcssa.i98.i144, 8
  %i.iv = call i64 @llvm.umax.i64(i64 %i.it, i64 %i.iu)
  %i.iw = xor i64 %.0.lcssa.i98.i144, -1
  %i.ix = add i64 %i.iv, %i.iw                    ; 2 uses
  %i.iy = lshr i64 %i.ix, 3
  %i.iz = add nuw nsw i64 %i.iy, 1                ; 2 uses
  %min.iters.check151 = icmp ult i64 %i.ix, 152
  br i1 %min.iters.check151, label %.lr.ph.i32.i101.i.preheader253, label %vector.memcheck143

vector.memcheck143:                               ; preds = %.lr.ph.i32.i101.i.preheader
  %12 = add i64 %.0.lcssa.i98.i144, %.idx.i30.i99.i
  %13 = add i64 %.0.lcssa.i98.i144, 8
  %umax = call i64 @llvm.umax.i64(i64 %12, i64 %13)
  %14 = xor i64 %.0.lcssa.i98.i144, -1
  %15 = add i64 %umax, %14
  %i.ja = and i64 %15, -8
  %i.jb = add i64 %i.ja, 8                        ; 2 uses
  %scevgep145 = getelementptr i8, ptr %.022.lcssa.i97.i, i64 %i.jb
  %scevgep146 = getelementptr i8, ptr %.0.lcssa.i98.i, i64 %i.jb
  %bound0147 = icmp ult ptr %.022.lcssa.i97.i, %scevgep146
  %bound1148 = icmp ult ptr %.0.lcssa.i98.i, %scevgep145
  %found.conflict149 = and i1 %bound0147, %bound1148
  br i1 %found.conflict149, label %.lr.ph.i32.i101.i.preheader253, label %vector.ph152

vector.ph152:                                     ; preds = %vector.memcheck143
  %n.vec153 = and i64 %i.iz, 4611686018427387900  ; 3 uses
  %i.jc = shl i64 %n.vec153, 3                    ; 2 uses
  %i.jd = getelementptr i8, ptr %.022.lcssa.i97.i, i64 %i.jc ; 2 uses
  %i.je = getelementptr i8, ptr %.0.lcssa.i98.i, i64 %i.jc ; 2 uses
  br label %vector.body154

vector.body154:                                   ; preds = %vector.body154, %vector.ph152
  %index155 = phi i64 [ 0, %vector.ph152 ], [ %index.next162, %vector.body154 ] ; 2 uses
  %i.jf = shl i64 %index155, 3                    ; 2 uses
  %next.gep156 = getelementptr i8, ptr %.022.lcssa.i97.i, i64 %i.jf ; 3 uses
  %next.gep157 = getelementptr i8, ptr %.0.lcssa.i98.i, i64 %i.jf ; 2 uses
  %i.jg = getelementptr i8, ptr %next.gep157, i64 16
  %wide.load158 = load <2 x i64>, ptr %next.gep157, align 8, !tbaa !22, !alias.scope !72
  %wide.load159 = load <2 x i64>, ptr %i.jg, align 8, !tbaa !22, !alias.scope !72
  %i.jh = getelementptr i8, ptr %next.gep156, i64 16 ; 2 uses
  %wide.load160 = load <2 x i64>, ptr %next.gep156, align 8, !tbaa !22, !alias.scope !73, !noalias !72
  %wide.load161 = load <2 x i64>, ptr %i.jh, align 8, !tbaa !22, !alias.scope !73, !noalias !72
  %i.ji = xor <2 x i64> %wide.load160, %wide.load158
  %i.jj = xor <2 x i64> %wide.load161, %wide.load159
  store <2 x i64> %i.ji, ptr %next.gep156, align 8, !tbaa !22, !alias.scope !73, !noalias !72
  store <2 x i64> %i.jj, ptr %i.jh, align 8, !tbaa !22, !alias.scope !73, !noalias !72
  %index.next162 = add nuw i64 %index155, 4       ; 2 uses
  %i.jk = icmp eq i64 %index.next162, %n.vec153
  br i1 %i.jk, label %middle.block163, label %vector.body154, !llvm.loop !56

middle.block163:                                  ; preds = %vector.body154
  %cmp.n164 = icmp eq i64 %i.iz, %n.vec153
  br i1 %cmp.n164, label %XorWords.exit33.i103.i, label %.lr.ph.i32.i101.i.preheader253

.lr.ph.i32.i101.i.preheader253:                   ; preds = %vector.memcheck143, %.lr.ph.i32.i101.i.preheader, %middle.block163
  %.sroa.039.2.i102.i.ph = phi ptr [ %.022.lcssa.i97.i, %vector.memcheck143 ], [ %.022.lcssa.i97.i, %.lr.ph.i32.i101.i.preheader ], [ %i.jd, %middle.block163 ]
  %.ph254 = phi ptr [ %.0.lcssa.i98.i, %vector.memcheck143 ], [ %.0.lcssa.i98.i, %.lr.ph.i32.i101.i.preheader ], [ %i.je, %middle.block163 ]
  br label %.lr.ph.i32.i101.i

.lr.ph.i32.i101.i:                                ; preds = %.lr.ph.i32.i101.i.preheader253, %.lr.ph.i32.i101.i
  %.sroa.039.2.i102.i = phi ptr [ %i.jo, %.lr.ph.i32.i101.i ], [ %.sroa.039.2.i102.i.ph, %.lr.ph.i32.i101.i.preheader253 ] ; 3 uses
  %i.jl = phi ptr [ %i.jm, %.lr.ph.i32.i101.i ], [ %.ph254, %.lr.ph.i32.i101.i.preheader253 ] ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8 ; 3 uses
  %i.jn = load i64, ptr %i.jl, align 8, !tbaa !22
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.039.2.i102.i, i64 8 ; 2 uses
  %i.jp = load i64, ptr %.sroa.039.2.i102.i, align 8, !tbaa !22
  %i.jq = xor i64 %i.jp, %i.jn
  store i64 %i.jq, ptr %.sroa.039.2.i102.i, align 8, !tbaa !22
  %i.jr = icmp ult ptr %i.jm, %i.is
  br i1 %i.jr, label %.lr.ph.i32.i101.i, label %XorWords.exit33.i103.i, !llvm.loop !57

XorWords.exit33.i103.i:                           ; preds = %.lr.ph.i32.i101.i, %middle.block163, %._crit_edge.i95.i
  %.sroa.039.3.i104.i = phi ptr [ %.022.lcssa.i97.i, %._crit_edge.i95.i ], [ %i.jd, %middle.block163 ], [ %i.jo, %.lr.ph.i32.i101.i ]
  %.sroa.0.1.i105.i = phi ptr [ %.0.lcssa.i98.i, %._crit_edge.i95.i ], [ %i.je, %middle.block163 ], [ %i.jm, %.lr.ph.i32.i101.i ]
  %i.js = and i32 %.025.lcssa.i96.i, 7
  br label %bb.s

bb.s:                                             ; preds = %XorWords.exit33.i103.i, %bb.r, %XorWords.exit.i114.i
  %.126.i85.i = phi i32 [ %i.hy, %XorWords.exit.i114.i ], [ %i.js, %XorWords.exit33.i103.i ], [ %i.dh, %bb.r ] ; 9 uses
  %.123.i86.i = phi ptr [ %.sroa.039.1.i115.i, %XorWords.exit.i114.i ], [ %.sroa.039.3.i104.i, %XorWords.exit33.i103.i ], [ %i.gq, %bb.r ] ; 8 uses
  %.1.i87.i = phi ptr [ %.sroa.0.0.i116.i, %XorWords.exit.i114.i ], [ %.sroa.0.1.i105.i, %XorWords.exit33.i103.i ], [ %i.gk, %bb.r ] ; 8 uses
  %.not51.i88.i = icmp eq i32 %.126.i85.i, 0
  br i1 %.not51.i88.i, label %xorbuf.exit117.i, label %iter.check211

iter.check211:                                    ; preds = %bb.s
  %i.jt = zext i32 %.126.i85.i to i64             ; 5 uses
  %min.iters.check191 = icmp ult i32 %.126.i85.i, 4
  br i1 %min.iters.check191, label %.lr.ph56.i89.i.preheader, label %vector.memcheck184

vector.memcheck184:                               ; preds = %iter.check211
  %i.ju = zext i32 %.126.i85.i to i64             ; 2 uses
  %scevgep185 = getelementptr i8, ptr %.123.i86.i, i64 %i.ju
  %scevgep186 = getelementptr i8, ptr %.1.i87.i, i64 %i.ju
  %bound0187 = icmp ult ptr %.123.i86.i, %scevgep186
  %bound1188 = icmp ult ptr %.1.i87.i, %scevgep185
  %found.conflict189 = and i1 %bound0187, %bound1188
  br i1 %found.conflict189, label %.lr.ph56.i89.i.preheader, label %vector.main.loop.iter.check192

vector.main.loop.iter.check192:                   ; preds = %vector.memcheck184
  %min.iters.check193 = icmp ult i32 %.126.i85.i, 32
  br i1 %min.iters.check193, label %vec.epilog.ph215, label %vector.ph194

vector.ph194:                                     ; preds = %vector.main.loop.iter.check192
  %i.jv = and i64 %i.jt, 28
  %n.vec195 = and i64 %i.jt, 4294967264           ; 6 uses
  %i.jw = getelementptr i8, ptr %.1.i87.i, i64 %n.vec195
  %i.jx = getelementptr i8, ptr %.123.i86.i, i64 %n.vec195
  %i.jy = trunc nuw i64 %n.vec195 to i32
  %i.jz = sub i32 %.126.i85.i, %i.jy
  br label %vector.body196

vector.body196:                                   ; preds = %vector.ph194, %vector.body196
  %index197 = phi i64 [ 0, %vector.ph194 ], [ %index.next204, %vector.body196 ] ; 3 uses
  %next.gep198 = getelementptr i8, ptr %.1.i87.i, i64 %index197 ; 2 uses
  %next.gep199 = getelementptr i8, ptr %.123.i86.i, i64 %index197 ; 3 uses
  %i.ka = getelementptr i8, ptr %next.gep198, i64 16
  %wide.load200 = load <16 x i8>, ptr %next.gep198, align 1, !tbaa !24, !alias.scope !74
  %wide.load201 = load <16 x i8>, ptr %i.ka, align 1, !tbaa !24, !alias.scope !74
  %i.kb = getelementptr i8, ptr %next.gep199, i64 16 ; 2 uses
  %wide.load202 = load <16 x i8>, ptr %next.gep199, align 1, !tbaa !24, !alias.scope !75, !noalias !74
  %wide.load203 = load <16 x i8>, ptr %i.kb, align 1, !tbaa !24, !alias.scope !75, !noalias !74
  %i.kc = xor <16 x i8> %wide.load202, %wide.load200
  %i.kd = xor <16 x i8> %wide.load203, %wide.load201
  store <16 x i8> %i.kc, ptr %next.gep199, align 1, !tbaa !24, !alias.scope !75, !noalias !74
  store <16 x i8> %i.kd, ptr %i.kb, align 1, !tbaa !24, !alias.scope !75, !noalias !74
  %index.next204 = add nuw i64 %index197, 32      ; 2 uses
  %i.ke = icmp eq i64 %index.next204, %n.vec195
  br i1 %i.ke, label %middle.block205, label %vector.body196, !llvm.loop !61

middle.block205:                                  ; preds = %vector.body196
  %cmp.n206 = icmp eq i64 %n.vec195, %i.jt
  br i1 %cmp.n206, label %xorbuf.exit117.i, label %vec.epilog.iter.check213

vec.epilog.iter.check213:                         ; preds = %middle.block205
  %min.epilog.iters.check214 = icmp eq i64 %i.jv, 0
  br i1 %min.epilog.iters.check214, label %.lr.ph56.i89.i.preheader, label %vec.epilog.ph215, !prof !29

vec.epilog.ph215:                                 ; preds = %vector.main.loop.iter.check192, %vec.epilog.iter.check213
  %vec.epilog.resume.val207 = phi i64 [ %n.vec195, %vec.epilog.iter.check213 ], [ 0, %vector.main.loop.iter.check192 ]
  %n.vec216 = and i64 %i.jt, 4294967292           ; 5 uses
  %i.kf = getelementptr i8, ptr %.1.i87.i, i64 %n.vec216
  %i.kg = getelementptr i8, ptr %.123.i86.i, i64 %n.vec216
  %i.kh = trunc nuw i64 %n.vec216 to i32
  %i.ki = sub i32 %.126.i85.i, %i.kh
  br label %vec.epilog.vector.body217

vec.epilog.vector.body217:                        ; preds = %vec.epilog.vector.body217, %vec.epilog.ph215
  %index218 = phi i64 [ %vec.epilog.resume.val207, %vec.epilog.ph215 ], [ %index.next223, %vec.epilog.vector.body217 ] ; 3 uses
  %next.gep219 = getelementptr i8, ptr %.1.i87.i, i64 %index218
  %next.gep220 = getelementptr i8, ptr %.123.i86.i, i64 %index218 ; 2 uses
  %wide.load221 = load <4 x i8>, ptr %next.gep219, align 1, !tbaa !24, !alias.scope !74
  %wide.load222 = load <4 x i8>, ptr %next.gep220, align 1, !tbaa !24, !alias.scope !75, !noalias !74
  %i.kj = xor <4 x i8> %wide.load222, %wide.load221
  store <4 x i8> %i.kj, ptr %next.gep220, align 1, !tbaa !24, !alias.scope !75, !noalias !74
  %index.next223 = add nuw i64 %index218, 4       ; 2 uses
  %i.kk = icmp eq i64 %index.next223, %n.vec216
  br i1 %i.kk, label %vec.epilog.middle.block224, label %vec.epilog.vector.body217, !llvm.loop !62

vec.epilog.middle.block224:                       ; preds = %vec.epilog.vector.body217
  %cmp.n225 = icmp eq i64 %n.vec216, %i.jt
  br i1 %cmp.n225, label %xorbuf.exit117.i, label %.lr.ph56.i89.i.preheader

.lr.ph56.i89.i.preheader:                         ; preds = %iter.check211, %vector.memcheck184, %vec.epilog.iter.check213, %vec.epilog.middle.block224
  %.254.i90.i.ph = phi ptr [ %.1.i87.i, %iter.check211 ], [ %.1.i87.i, %vector.memcheck184 ], [ %i.jw, %vec.epilog.iter.check213 ], [ %i.kf, %vec.epilog.middle.block224 ] ; 2 uses
  %.22453.i91.i.ph = phi ptr [ %.123.i86.i, %iter.check211 ], [ %.123.i86.i, %vector.memcheck184 ], [ %i.jx, %vec.epilog.iter.check213 ], [ %i.kg, %vec.epilog.middle.block224 ] ; 2 uses
  %.22752.i92.i.ph = phi i32 [ %.126.i85.i, %iter.check211 ], [ %.126.i85.i, %vector.memcheck184 ], [ %i.jz, %vec.epilog.iter.check213 ], [ %i.ki, %vec.epilog.middle.block224 ] ; 4 uses
  %i.kl = add i32 %.22752.i92.i.ph, -1
  %xtraiter264 = and i32 %.22752.i92.i.ph, 3      ; 2 uses
  %lcmp.mod265.not = icmp eq i32 %xtraiter264, 0
  br i1 %lcmp.mod265.not, label %.lr.ph56.i89.i.prol.loopexit, label %.lr.ph56.i89.i.prol

.lr.ph56.i89.i.prol:                              ; preds = %.lr.ph56.i89.i.preheader, %.lr.ph56.i89.i.prol
  %.254.i90.i.prol = phi ptr [ %i.km, %.lr.ph56.i89.i.prol ], [ %.254.i90.i.ph, %.lr.ph56.i89.i.preheader ] ; 2 uses
  %.22453.i91.i.prol = phi ptr [ %i.ko, %.lr.ph56.i89.i.prol ], [ %.22453.i91.i.ph, %.lr.ph56.i89.i.preheader ] ; 3 uses
  %.22752.i92.i.prol = phi i32 [ %i.kr, %.lr.ph56.i89.i.prol ], [ %.22752.i92.i.ph, %.lr.ph56.i89.i.preheader ]
  %prol.iter266 = phi i32 [ %prol.iter266.next, %.lr.ph56.i89.i.prol ], [ 0, %.lr.ph56.i89.i.preheader ]
  %i.km = getelementptr inbounds nuw i8, ptr %.254.i90.i.prol, i64 1 ; 2 uses
  %i.kn = load i8, ptr %.254.i90.i.prol, align 1, !tbaa !24
  %i.ko = getelementptr inbounds nuw i8, ptr %.22453.i91.i.prol, i64 1 ; 2 uses
  %i.kp = load i8, ptr %.22453.i91.i.prol, align 1, !tbaa !24
  %i.kq = xor i8 %i.kp, %i.kn
  store i8 %i.kq, ptr %.22453.i91.i.prol, align 1, !tbaa !24
  %i.kr = add i32 %.22752.i92.i.prol, -1          ; 2 uses
  %prol.iter266.next = add i32 %prol.iter266, 1   ; 2 uses
  %prol.iter266.cmp.not = icmp eq i32 %prol.iter266.next, %xtraiter264
  br i1 %prol.iter266.cmp.not, label %.lr.ph56.i89.i.prol.loopexit, label %.lr.ph56.i89.i.prol, !llvm.loop !63

.lr.ph56.i89.i.prol.loopexit:                     ; preds = %.lr.ph56.i89.i.prol, %.lr.ph56.i89.i.preheader
  %.254.i90.i.unr = phi ptr [ %.254.i90.i.ph, %.lr.ph56.i89.i.preheader ], [ %i.km, %.lr.ph56.i89.i.prol ]
  %.22453.i91.i.unr = phi ptr [ %.22453.i91.i.ph, %.lr.ph56.i89.i.preheader ], [ %i.ko, %.lr.ph56.i89.i.prol ]
  %.22752.i92.i.unr = phi i32 [ %.22752.i92.i.ph, %.lr.ph56.i89.i.preheader ], [ %i.kr, %.lr.ph56.i89.i.prol ]
  %i.ks = icmp ult i32 %i.kl, 3
  br i1 %i.ks, label %xorbuf.exit117.i, label %.lr.ph56.i89.i

.lr.ph56.i89.i:                                   ; preds = %.lr.ph56.i89.i.prol.loopexit, %.lr.ph56.i89.i
  %.254.i90.i = phi ptr [ %i.li, %.lr.ph56.i89.i ], [ %.254.i90.i.unr, %.lr.ph56.i89.i.prol.loopexit ] ; 5 uses
  %.22453.i91.i = phi ptr [ %i.lk, %.lr.ph56.i89.i ], [ %.22453.i91.i.unr, %.lr.ph56.i89.i.prol.loopexit ] ; 6 uses
  %.22752.i92.i = phi i32 [ %i.ln, %.lr.ph56.i89.i ], [ %.22752.i92.i.unr, %.lr.ph56.i89.i.prol.loopexit ]
  %i.kt = getelementptr inbounds nuw i8, ptr %.254.i90.i, i64 1
  %i.ku = load i8, ptr %.254.i90.i, align 1, !tbaa !24
  %i.kv = getelementptr inbounds nuw i8, ptr %.22453.i91.i, i64 1 ; 2 uses
  %i.kw = load i8, ptr %.22453.i91.i, align 1, !tbaa !24
  %i.kx = xor i8 %i.kw, %i.ku
  store i8 %i.kx, ptr %.22453.i91.i, align 1, !tbaa !24
  %i.ky = getelementptr inbounds nuw i8, ptr %.254.i90.i, i64 2
  %i.kz = load i8, ptr %i.kt, align 1, !tbaa !24
  %i.la = getelementptr inbounds nuw i8, ptr %.22453.i91.i, i64 2 ; 2 uses
  %i.lb = load i8, ptr %i.kv, align 1, !tbaa !24
  %i.lc = xor i8 %i.lb, %i.kz
  store i8 %i.lc, ptr %i.kv, align 1, !tbaa !24
  %i.ld = getelementptr inbounds nuw i8, ptr %.254.i90.i, i64 3
  %i.le = load i8, ptr %i.ky, align 1, !tbaa !24
  %i.lf = getelementptr inbounds nuw i8, ptr %.22453.i91.i, i64 3 ; 2 uses
  %i.lg = load i8, ptr %i.la, align 1, !tbaa !24
  %i.lh = xor i8 %i.lg, %i.le
  store i8 %i.lh, ptr %i.la, align 1, !tbaa !24
end_hunk_0
begin_hunk_1_@wc_RsaPrivateKeyDecodeRaw:bb.a
_RsaPrivateKeyDecodeRaw.exit:                     ; preds = %bb.a, %bb.d, %bb.c, %bb.b, %.thread114.i, %bb.s
  %.2 = phi i32 [ 0, %bb.s ], [ -173, %bb.c ], [ -173, %bb.a ], [ -173, %bb.d ], [ %.7116.i, %.thread114.i ], [ -173, %bb.b ]
  ret i32 %.2
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define internal fastcc void @ForceZero(ptr noundef %0, i64 noundef range(i64 0, 4294967296) %1) unnamed_addr #7 {
bb.a:
  fence seq_cst
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 7
  %.not19 = icmp eq i64 %i.b, 0
  br i1 %.not19, label %.preheader16, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %.loopexit, label %.lr.ph39

.preheader16:                                     ; preds = %.lr.ph39, %bb.a
  %.013.lcssa = phi i64 [ %1, %bb.a ], [ %i.i, %.lr.ph39 ] ; 4 uses
  %.012.lcssa = phi ptr [ %0, %bb.a ], [ %i.h, %.lr.ph39 ] ; 3 uses
  %i.d = icmp ugt i64 %.013.lcssa, 7
  br i1 %i.d, label %.lr.ph25.preheader, label %.preheader

.lr.ph25.preheader:                               ; preds = %.preheader16
  %i.e = and i64 %.013.lcssa, -8                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.012.lcssa, i8 0, i64 %i.e, i1 false), !tbaa !22
  %scevgep = getelementptr i8, ptr %.012.lcssa, i64 %i.e
  %i.f = and i64 %.013.lcssa, 7
  br label %.preheader

.lr.ph:                                           ; preds = %.lr.ph39
  %i.g = icmp eq i64 %i.i, 0
  br i1 %i.g, label %.loopexit, label %.lr.ph39, !llvm.loop !0

.lr.ph39:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.0132038 = phi i64 [ %i.i, %.lr.ph ], [ %1, %.lr.ph.preheader ]
  %.0122137 = phi ptr [ %i.h, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0122137, i64 1 ; 3 uses
  store i8 0, ptr %.0122137, align 1, !tbaa !24
  %i.i = add nsw i64 %.0132038, -1                ; 3 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = and i64 %i.j, 7
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.preheader16, label %.lr.ph, !llvm.loop !0

.preheader:                                       ; preds = %.lr.ph25.preheader, %.preheader16
  %.114.lcssa = phi i64 [ %.013.lcssa, %.preheader16 ], [ %i.f, %.lr.ph25.preheader ] ; 2 uses
  %.0.lcssa = phi ptr [ %.012.lcssa, %.preheader16 ], [ %scevgep, %.lr.ph25.preheader ]
  %.not1528 = icmp eq i64 %.114.lcssa, 0
  br i1 %.not1528, label %._crit_edge, label %.lr.ph31.preheader

.lr.ph31.preheader:                               ; preds = %.preheader
  tail call void @llvm.memset.p0.i64(ptr align 1 %.0.lcssa, i8 0, i64 %.114.lcssa, i1 false), !tbaa !24
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph31.preheader, %.preheader
  fence seq_cst
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph.preheader, %._crit_edge
  ret void
}

declare i32 @wc_RNG_GenerateBlock(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @RsaMGF(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 {
bb.a:
  %6 = alloca [1 x %struct.wc_Sha3], align 16     ; 6 uses
  %7 = alloca [1 x %struct.wc_Sha3], align 16     ; 6 uses
  switch i32 %0, label %bb.w [
    i32 26, label %bb.b
    i32 4, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
    i32 7, label %bb.i
    i32 8, label %bb.j
    i32 9, label %bb.k
    i32 10, label %bb.l
    i32 11, label %bb.m
    i32 13, label %bb.n
    i32 12, label %bb.r
    i32 14, label %bb.s
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call fastcc i32 @RsaMGF1(i32 noundef 4, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4)
  br label %bb.w

bb.c:                                             ; preds = %bb.a
  %i.b = tail call fastcc i32 @RsaMGF1(i32 noundef 5, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4)
  br label %bb.w

bb.d:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @RsaMGF1(i32 noundef 6, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4)
  br label %bb.w

bb.e:                                             ; preds = %bb.a
  %i.d = tail call fastcc i32 @RsaMGF1(i32 noundef 7, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4)
  br label %bb.w

bb.f:                                             ; preds = %bb.a
  %i.e = tail call fastcc i32 @RsaMGF1(i32 noundef 8, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4)
  br label %bb.w

bb.g:                                             ; preds = %bb.a
  %i.f = tail call fastcc i32 @RsaMGF1(i32 noundef 16, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4)
  br label %bb.w

bb.h:                                             ; preds = %bb.a
  %i.g = tail call fastcc i32 @RsaMGF1(i32 noundef 17, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4)
  br label %bb.w

bb.i:                                             ; preds = %bb.a
  %i.h = tail call fastcc i32 @RsaMGF1(i32 noundef 10, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4)
  br label %bb.w

bb.j:                                             ; preds = %bb.a
  %i.i = tail call fastcc i32 @RsaMGF1(i32 noundef 11, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4)
  br label %bb.w

bb.k:                                             ; preds = %bb.a
  %i.j = tail call fastcc i32 @RsaMGF1(i32 noundef 12, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4)
  br label %bb.w

bb.l:                                             ; preds = %bb.a
  %i.k = tail call fastcc i32 @RsaMGF1(i32 noundef 13, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4)
  br label %bb.w

bb.m:                                             ; preds = %bb.a
  %i.l = tail call fastcc i32 @RsaMGF1(i32 noundef 18, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4)
  br label %bb.w

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.m = call i32 @wc_InitShake128(ptr noundef nonnull %7, ptr noundef %5, i32 noundef -2) #12 ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.o, label %RsaMGF_SHAKE.exit

bb.o:                                             ; preds = %bb.n
  %i.o = call i32 @wc_Shake128_Update(ptr noundef nonnull %7, ptr noundef %1, i32 noundef %2) #12 ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.q = call i32 @wc_Shake128_Final(ptr noundef nonnull %7, ptr noundef %3, i32 noundef %4) #12
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0.i = phi i32 [ %i.q, %bb.p ], [ %i.o, %bb.o ]
  call void @wc_Shake128_Free(ptr noundef nonnull %7) #12
  br label %RsaMGF_SHAKE.exit

RsaMGF_SHAKE.exit:                                ; preds = %bb.n, %bb.q
  %.2.i = phi i32 [ %.0.i, %bb.q ], [ %i.m, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %bb.w

bb.r:                                             ; preds = %bb.a
  %i.r = tail call fastcc i32 @RsaMGF1(i32 noundef 19, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4)
  br label %bb.w

bb.s:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.s = call i32 @wc_InitShake256(ptr noundef nonnull %6, ptr noundef %5, i32 noundef -2) #12 ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.t, label %RsaMGF_SHAKE.exit77

bb.t:                                             ; preds = %bb.s
  %i.u = call i32 @wc_Shake256_Update(ptr noundef nonnull %6, ptr noundef %1, i32 noundef %2) #12 ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.w = call i32 @wc_Shake256_Final(ptr noundef nonnull %6, ptr noundef %3, i32 noundef %4) #12
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.1.i = phi i32 [ %i.w, %bb.u ], [ %i.u, %bb.t ]
  call void @wc_Shake256_Free(ptr noundef nonnull %6) #12
  br label %RsaMGF_SHAKE.exit77

RsaMGF_SHAKE.exit77:                              ; preds = %bb.s, %bb.v
  %.2.i76 = phi i32 [ %.1.i, %bb.v ], [ %i.s, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.w

bb.w:                                             ; preds = %bb.a, %RsaMGF_SHAKE.exit77, %bb.r, %RsaMGF_SHAKE.exit, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ %.2.i76, %RsaMGF_SHAKE.exit77 ], [ %i.a, %bb.b ], [ %i.b, %bb.c ], [ %i.c, %bb.d ], [ %i.d, %bb.e ], [ %i.e, %bb.f ], [ %i.f, %bb.g ], [ %i.g, %bb.h ], [ %i.h, %bb.i ], [ %i.i, %bb.j ], [ %i.j, %bb.k ], [ %i.k, %bb.l ], [ %i.l, %bb.m ], [ %.2.i, %RsaMGF_SHAKE.exit ], [ %i.r, %bb.r ], [ -173, %bb.a ]
  ret i32 %.0
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @xorbuf(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #8 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 8 uses
  %i.c = or i64 %i.b, %i.a
  %i.d = and i64 %i.c, 7
  %or.cond = icmp eq i64 %i.d, 0
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %2, -8
  %.idx.i = zext i32 %i.e to i64                  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i
  %.not.i = icmp ult i32 %2, 8
  br i1 %.not.i, label %XorWords.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.g = add i64 %i.b, %.idx.i
  %i.h = add i64 %i.b, 8
  %i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.h)
  %i.j = xor i64 %i.b, -1
  %i.k = add i64 %i.i, %i.j                       ; 2 uses
  %i.l = lshr i64 %i.k, 3
  %i.m = add nuw nsw i64 %i.l, 1                  ; 2 uses
  %min.iters.check93 = icmp ult i64 %i.k, 152
  br i1 %min.iters.check93, label %.lr.ph.i.preheader145, label %vector.memcheck85

vector.memcheck85:                                ; preds = %.lr.ph.i.preheader
  %3 = add i64 %i.b, %.idx.i
  %4 = add i64 %i.b, 8
  %umax86 = tail call i64 @llvm.umax.i64(i64 %3, i64 %4)
  %5 = xor i64 %i.b, -1
  %6 = add i64 %umax86, %5
  %i.n = and i64 %6, -8
  %i.o = add i64 %i.n, 8                          ; 2 uses
  %scevgep87 = getelementptr i8, ptr %0, i64 %i.o
  %scevgep88 = getelementptr i8, ptr %1, i64 %i.o
  %bound089 = icmp ult ptr %0, %scevgep88
  %bound190 = icmp ult ptr %1, %scevgep87
  %found.conflict91 = and i1 %bound089, %bound190
  br i1 %found.conflict91, label %.lr.ph.i.preheader145, label %vector.ph94

vector.ph94:                                      ; preds = %vector.memcheck85
  %n.vec95 = and i64 %i.m, 4611686018427387900    ; 3 uses
  %i.p = shl i64 %n.vec95, 3                      ; 2 uses
  %i.q = getelementptr i8, ptr %0, i64 %i.p       ; 2 uses
  %i.r = getelementptr i8, ptr %1, i64 %i.p       ; 2 uses
  br label %vector.body96

vector.body96:                                    ; preds = %vector.body96, %vector.ph94
  %index97 = phi i64 [ 0, %vector.ph94 ], [ %index.next104, %vector.body96 ] ; 2 uses
  %i.s = shl i64 %index97, 3                      ; 2 uses
  %next.gep98 = getelementptr i8, ptr %0, i64 %i.s ; 3 uses
  %next.gep99 = getelementptr i8, ptr %1, i64 %i.s ; 2 uses
  %i.t = getelementptr i8, ptr %next.gep99, i64 16
  %wide.load100 = load <2 x i64>, ptr %next.gep99, align 8, !tbaa !22, !alias.scope !94
  %wide.load101 = load <2 x i64>, ptr %i.t, align 8, !tbaa !22, !alias.scope !94
  %i.u = getelementptr i8, ptr %next.gep98, i64 16 ; 2 uses
  %wide.load102 = load <2 x i64>, ptr %next.gep98, align 8, !tbaa !22, !alias.scope !95, !noalias !94
  %wide.load103 = load <2 x i64>, ptr %i.u, align 8, !tbaa !22, !alias.scope !95, !noalias !94
  %i.v = xor <2 x i64> %wide.load102, %wide.load100
  %i.w = xor <2 x i64> %wide.load103, %wide.load101
  store <2 x i64> %i.v, ptr %next.gep98, align 8, !tbaa !22, !alias.scope !95, !noalias !94
  store <2 x i64> %i.w, ptr %i.u, align 8, !tbaa !22, !alias.scope !95, !noalias !94
  %index.next104 = add nuw i64 %index97, 4        ; 2 uses
  %i.x = icmp eq i64 %index.next104, %n.vec95
  br i1 %i.x, label %middle.block105, label %vector.body96, !llvm.loop !80

middle.block105:                                  ; preds = %vector.body96
  %cmp.n106 = icmp eq i64 %i.m, %n.vec95
  br i1 %cmp.n106, label %XorWords.exit, label %.lr.ph.i.preheader145

.lr.ph.i.preheader145:                            ; preds = %vector.memcheck85, %.lr.ph.i.preheader, %middle.block105
  %.sroa.039.0.ph = phi ptr [ %0, %vector.memcheck85 ], [ %0, %.lr.ph.i.preheader ], [ %i.q, %middle.block105 ]
  %.ph = phi ptr [ %1, %vector.memcheck85 ], [ %1, %.lr.ph.i.preheader ], [ %i.r, %middle.block105 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader145, %.lr.ph.i
  %.sroa.039.0 = phi ptr [ %i.ab, %.lr.ph.i ], [ %.sroa.039.0.ph, %.lr.ph.i.preheader145 ] ; 3 uses
  %i.y = phi ptr [ %i.z, %.lr.ph.i ], [ %.ph, %.lr.ph.i.preheader145 ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !22
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.039.0, i64 8 ; 2 uses
  %i.ac = load i64, ptr %.sroa.039.0, align 8, !tbaa !22
  %i.ad = xor i64 %i.ac, %i.aa
  store i64 %i.ad, ptr %.sroa.039.0, align 8, !tbaa !22
  %i.ae = icmp ult ptr %i.z, %i.f
  br i1 %i.ae, label %.lr.ph.i, label %XorWords.exit, !llvm.loop !81

XorWords.exit:                                    ; preds = %.lr.ph.i, %middle.block105, %bb.b
  %.sroa.039.1 = phi ptr [ %0, %bb.b ], [ %i.q, %middle.block105 ], [ %i.ab, %.lr.ph.i ]
  %.sroa.0.0 = phi ptr [ %1, %bb.b ], [ %i.r, %middle.block105 ], [ %i.z, %.lr.ph.i ]
  %i.af = and i32 %2, 7
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ag = xor i64 %i.b, %i.a
  %i.ah = and i64 %i.ag, 7
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.c
  %i.aj = and i64 %i.a, 7
  %i.ak = icmp ne i64 %i.aj, 0
  %i.al = icmp ne i32 %2, 0
  %i.am = and i1 %i.ak, %i.al
  br i1 %i.am, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.048 = phi ptr [ %i.an, %.lr.ph ], [ %1, %.preheader ] ; 2 uses
  %.02247 = phi ptr [ %i.ap, %.lr.ph ], [ %0, %.preheader ] ; 3 uses
  %.02546 = phi i32 [ %i.as, %.lr.ph ], [ %2, %.preheader ]
  %i.an = getelementptr inbounds nuw i8, ptr %.048, i64 1 ; 2 uses
  %i.ao = load i8, ptr %.048, align 1, !tbaa !24
  %i.ap = getelementptr inbounds nuw i8, ptr %.02247, i64 1 ; 3 uses
  %i.aq = load i8, ptr %.02247, align 1, !tbaa !24
  %i.ar = xor i8 %i.aq, %i.ao
  store i8 %i.ar, ptr %.02247, align 1, !tbaa !24
  %i.as = add i32 %.02546, -1                     ; 3 uses
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = and i64 %i.at, 7
  %i.av = icmp ne i64 %i.au, 0
  %i.aw = icmp ne i32 %i.as, 0
  %i.ax = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %i.ax, label %.lr.ph, label %._crit_edge, !llvm.loop !1

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.025.lcssa = phi i32 [ %2, %.preheader ], [ %i.as, %.lr.ph ] ; 3 uses
  %.022.lcssa = phi ptr [ %0, %.preheader ], [ %i.ap, %.lr.ph ] ; 7 uses
  %.0.lcssa = phi ptr [ %1, %.preheader ], [ %i.an, %.lr.ph ] ; 9 uses
  %.0.lcssa78 = ptrtoaddr ptr %.0.lcssa to i64    ; 6 uses
  %i.ay = and i32 %.025.lcssa, -8
  %.idx.i30 = zext i32 %i.ay to i64               ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 %.idx.i30
  %.not.i31 = icmp ult i32 %.025.lcssa, 8
  br i1 %.not.i31, label %XorWords.exit33, label %.lr.ph.i32.preheader

.lr.ph.i32.preheader:                             ; preds = %._crit_edge
  %i.ba = add i64 %.0.lcssa78, %.idx.i30
  %i.bb = add i64 %.0.lcssa78, 8
  %i.bc = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 %i.bb)
  %i.bd = xor i64 %.0.lcssa78, -1
  %i.be = add i64 %i.bc, %i.bd                    ; 2 uses
  %i.bf = lshr i64 %i.be, 3
  %i.bg = add nuw nsw i64 %i.bf, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.be, 152
  br i1 %min.iters.check, label %.lr.ph.i32.preheader147, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i32.preheader
  %7 = add i64 %.0.lcssa78, %.idx.i30
  %8 = add i64 %.0.lcssa78, 8
  %umax = tail call i64 @llvm.umax.i64(i64 %7, i64 %8)
  %9 = xor i64 %.0.lcssa78, -1
  %10 = add i64 %umax, %9
  %i.bh = and i64 %10, -8
  %i.bi = add i64 %i.bh, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %.022.lcssa, i64 %i.bi
  %scevgep79 = getelementptr i8, ptr %.0.lcssa, i64 %i.bi
  %bound0 = icmp ult ptr %.022.lcssa, %scevgep79
  %bound1 = icmp ult ptr %.0.lcssa, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i32.preheader147, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bg, 4611686018427387900     ; 3 uses
  %i.bj = shl i64 %n.vec, 3                       ; 2 uses
  %i.bk = getelementptr i8, ptr %.022.lcssa, i64 %i.bj ; 2 uses
  %i.bl = getelementptr i8, ptr %.0.lcssa, i64 %i.bj ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bm = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.022.lcssa, i64 %i.bm ; 3 uses
  %next.gep80 = getelementptr i8, ptr %.0.lcssa, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep80, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep80, align 8, !tbaa !22, !alias.scope !96
  %wide.load81 = load <2 x i64>, ptr %i.bn, align 8, !tbaa !22, !alias.scope !96
  %i.bo = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load82 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !22, !alias.scope !97, !noalias !96
  %wide.load83 = load <2 x i64>, ptr %i.bo, align 8, !tbaa !22, !alias.scope !97, !noalias !96
  %i.bp = xor <2 x i64> %wide.load82, %wide.load
  %i.bq = xor <2 x i64> %wide.load83, %wide.load81
  store <2 x i64> %i.bp, ptr %next.gep, align 8, !tbaa !22, !alias.scope !97, !noalias !96
  store <2 x i64> %i.bq, ptr %i.bo, align 8, !tbaa !22, !alias.scope !97, !noalias !96
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !85

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bg, %n.vec
  br i1 %cmp.n, label %XorWords.exit33, label %.lr.ph.i32.preheader147

.lr.ph.i32.preheader147:                          ; preds = %vector.memcheck, %.lr.ph.i32.preheader, %middle.block
  %.sroa.039.2.ph = phi ptr [ %.022.lcssa, %vector.memcheck ], [ %.022.lcssa, %.lr.ph.i32.preheader ], [ %i.bk, %middle.block ]
  %.ph148 = phi ptr [ %.0.lcssa, %vector.memcheck ], [ %.0.lcssa, %.lr.ph.i32.preheader ], [ %i.bl, %middle.block ]
  br label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %.lr.ph.i32.preheader147, %.lr.ph.i32
  %.sroa.039.2 = phi ptr [ %i.bv, %.lr.ph.i32 ], [ %.sroa.039.2.ph, %.lr.ph.i32.preheader147 ] ; 3 uses
  %i.bs = phi ptr [ %i.bt, %.lr.ph.i32 ], [ %.ph148, %.lr.ph.i32.preheader147 ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 3 uses
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !22
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.039.2, i64 8 ; 2 uses
  %i.bw = load i64, ptr %.sroa.039.2, align 8, !tbaa !22
  %i.bx = xor i64 %i.bw, %i.bu
  store i64 %i.bx, ptr %.sroa.039.2, align 8, !tbaa !22
  %i.by = icmp ult ptr %i.bt, %i.az
  br i1 %i.by, label %.lr.ph.i32, label %XorWords.exit33, !llvm.loop !86

XorWords.exit33:                                  ; preds = %.lr.ph.i32, %middle.block, %._crit_edge
  %.sroa.039.3 = phi ptr [ %.022.lcssa, %._crit_edge ], [ %i.bk, %middle.block ], [ %i.bv, %.lr.ph.i32 ]
  %.sroa.0.1 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.bl, %middle.block ], [ %i.bt, %.lr.ph.i32 ]
  %i.bz = and i32 %.025.lcssa, 7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %XorWords.exit33, %XorWords.exit
  %.126 = phi i32 [ %i.af, %XorWords.exit ], [ %i.bz, %XorWords.exit33 ], [ %2, %bb.c ] ; 9 uses
  %.123 = phi ptr [ %.sroa.039.1, %XorWords.exit ], [ %.sroa.039.3, %XorWords.exit33 ], [ %0, %bb.c ] ; 8 uses
  %.1 = phi ptr [ %.sroa.0.0, %XorWords.exit ], [ %.sroa.0.1, %XorWords.exit33 ], [ %1, %bb.c ] ; 8 uses
  %.not51 = icmp eq i32 %.126, 0
  br i1 %.not51, label %._crit_edge57, label %iter.check

iter.check:                                       ; preds = %bb.d
  %i.ca = zext i32 %.126 to i64                   ; 5 uses
  %min.iters.check116 = icmp ult i32 %.126, 4
  br i1 %min.iters.check116, label %.lr.ph56.preheader, label %vector.memcheck109

vector.memcheck109:                               ; preds = %iter.check
  %i.cb = zext i32 %.126 to i64                   ; 2 uses
  %scevgep110 = getelementptr i8, ptr %.123, i64 %i.cb
  %scevgep111 = getelementptr i8, ptr %.1, i64 %i.cb
  %bound0112 = icmp ult ptr %.123, %scevgep111
  %bound1113 = icmp ult ptr %.1, %scevgep110
  %found.conflict114 = and i1 %bound0112, %bound1113
  br i1 %found.conflict114, label %.lr.ph56.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck109
  %min.iters.check117 = icmp ult i32 %.126, 32
  br i1 %min.iters.check117, label %vec.epilog.ph, label %vector.ph118

vector.ph118:                                     ; preds = %vector.main.loop.iter.check
  %i.cc = and i64 %i.ca, 28
  %n.vec119 = and i64 %i.ca, 4294967264           ; 6 uses
  %i.cd = getelementptr i8, ptr %.1, i64 %n.vec119
  %i.ce = getelementptr i8, ptr %.123, i64 %n.vec119
  %i.cf = trunc nuw i64 %n.vec119 to i32
  %i.cg = sub i32 %.126, %i.cf
  br label %vector.body120

vector.body120:                                   ; preds = %vector.ph118, %vector.body120
  %index121 = phi i64 [ 0, %vector.ph118 ], [ %index.next128, %vector.body120 ] ; 3 uses
  %next.gep122 = getelementptr i8, ptr %.1, i64 %index121 ; 2 uses
  %next.gep123 = getelementptr i8, ptr %.123, i64 %index121 ; 3 uses
  %i.ch = getelementptr i8, ptr %next.gep122, i64 16
  %wide.load124 = load <16 x i8>, ptr %next.gep122, align 1, !tbaa !24, !alias.scope !98
  %wide.load125 = load <16 x i8>, ptr %i.ch, align 1, !tbaa !24, !alias.scope !98
  %i.ci = getelementptr i8, ptr %next.gep123, i64 16 ; 2 uses
  %wide.load126 = load <16 x i8>, ptr %next.gep123, align 1, !tbaa !24, !alias.scope !99, !noalias !98
  %wide.load127 = load <16 x i8>, ptr %i.ci, align 1, !tbaa !24, !alias.scope !99, !noalias !98
  %i.cj = xor <16 x i8> %wide.load126, %wide.load124
  %i.ck = xor <16 x i8> %wide.load127, %wide.load125
  store <16 x i8> %i.cj, ptr %next.gep123, align 1, !tbaa !24, !alias.scope !99, !noalias !98
  store <16 x i8> %i.ck, ptr %i.ci, align 1, !tbaa !24, !alias.scope !99, !noalias !98
  %index.next128 = add nuw i64 %index121, 32      ; 2 uses
  %i.cl = icmp eq i64 %index.next128, %n.vec119
  br i1 %i.cl, label %middle.block129, label %vector.body120, !llvm.loop !90

middle.block129:                                  ; preds = %vector.body120
  %cmp.n130 = icmp eq i64 %n.vec119, %i.ca
  br i1 %cmp.n130, label %._crit_edge57, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block129
  %min.epilog.iters.check = icmp eq i64 %i.cc, 0
  br i1 %min.epilog.iters.check, label %.lr.ph56.preheader, label %vec.epilog.ph, !prof !29

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec119, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec134 = and i64 %i.ca, 4294967292           ; 5 uses
  %i.cm = getelementptr i8, ptr %.1, i64 %n.vec134
  %i.cn = getelementptr i8, ptr %.123, i64 %n.vec134
  %i.co = trunc nuw i64 %n.vec134 to i32
  %i.cp = sub i32 %.126, %i.co
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index135 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next140, %vec.epilog.vector.body ] ; 3 uses
  %next.gep136 = getelementptr i8, ptr %.1, i64 %index135
  %next.gep137 = getelementptr i8, ptr %.123, i64 %index135 ; 2 uses
  %wide.load138 = load <4 x i8>, ptr %next.gep136, align 1, !tbaa !24, !alias.scope !98
  %wide.load139 = load <4 x i8>, ptr %next.gep137, align 1, !tbaa !24, !alias.scope !99, !noalias !98
  %i.cq = xor <4 x i8> %wide.load139, %wide.load138
  store <4 x i8> %i.cq, ptr %next.gep137, align 1, !tbaa !24, !alias.scope !99, !noalias !98
  %index.next140 = add nuw i64 %index135, 4       ; 2 uses
  %i.cr = icmp eq i64 %index.next140, %n.vec134
  br i1 %i.cr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !91

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n141 = icmp eq i64 %n.vec134, %i.ca
  br i1 %cmp.n141, label %._crit_edge57, label %.lr.ph56.preheader

.lr.ph56.preheader:                               ; preds = %iter.check, %vector.memcheck109, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.254.ph = phi ptr [ %.1, %iter.check ], [ %.1, %vector.memcheck109 ], [ %i.cd, %vec.epilog.iter.check ], [ %i.cm, %vec.epilog.middle.block ] ; 2 uses
  %.22453.ph = phi ptr [ %.123, %iter.check ], [ %.123, %vector.memcheck109 ], [ %i.ce, %vec.epilog.iter.check ], [ %i.cn, %vec.epilog.middle.block ] ; 2 uses
  %.22752.ph = phi i32 [ %.126, %iter.check ], [ %.126, %vector.memcheck109 ], [ %i.cg, %vec.epilog.iter.check ], [ %i.cp, %vec.epilog.middle.block ] ; 4 uses
  %i.cs = add i32 %.22752.ph, -1
  %xtraiter = and i32 %.22752.ph, 3               ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph56.prol.loopexit, label %.lr.ph56.prol

.lr.ph56.prol:                                    ; preds = %.lr.ph56.preheader, %.lr.ph56.prol
  %.254.prol = phi ptr [ %i.ct, %.lr.ph56.prol ], [ %.254.ph, %.lr.ph56.preheader ] ; 2 uses
  %.22453.prol = phi ptr [ %i.cv, %.lr.ph56.prol ], [ %.22453.ph, %.lr.ph56.preheader ] ; 3 uses
  %.22752.prol = phi i32 [ %i.cy, %.lr.ph56.prol ], [ %.22752.ph, %.lr.ph56.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph56.prol ], [ 0, %.lr.ph56.preheader ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.254.prol, i64 1 ; 2 uses
  %i.cu = load i8, ptr %.254.prol, align 1, !tbaa !24
  %i.cv = getelementptr inbounds nuw i8, ptr %.22453.prol, i64 1 ; 2 uses
  %i.cw = load i8, ptr %.22453.prol, align 1, !tbaa !24
  %i.cx = xor i8 %i.cw, %i.cu
  store i8 %i.cx, ptr %.22453.prol, align 1, !tbaa !24
  %i.cy = add i32 %.22752.prol, -1                ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph56.prol.loopexit, label %.lr.ph56.prol, !llvm.loop !92

.lr.ph56.prol.loopexit:                           ; preds = %.lr.ph56.prol, %.lr.ph56.preheader
  %.254.unr = phi ptr [ %.254.ph, %.lr.ph56.preheader ], [ %i.ct, %.lr.ph56.prol ]
  %.22453.unr = phi ptr [ %.22453.ph, %.lr.ph56.preheader ], [ %i.cv, %.lr.ph56.prol ]
  %.22752.unr = phi i32 [ %.22752.ph, %.lr.ph56.preheader ], [ %i.cy, %.lr.ph56.prol ]
  %i.cz = icmp ult i32 %i.cs, 3
  br i1 %i.cz, label %._crit_edge57, label %.lr.ph56

.lr.ph56:                                         ; preds = %.lr.ph56.prol.loopexit, %.lr.ph56
  %.254 = phi ptr [ %i.dp, %.lr.ph56 ], [ %.254.unr, %.lr.ph56.prol.loopexit ] ; 5 uses
  %.22453 = phi ptr [ %i.dr, %.lr.ph56 ], [ %.22453.unr, %.lr.ph56.prol.loopexit ] ; 6 uses
  %.22752 = phi i32 [ %i.du, %.lr.ph56 ], [ %.22752.unr, %.lr.ph56.prol.loopexit ]
  %i.da = getelementptr inbounds nuw i8, ptr %.254, i64 1
  %i.db = load i8, ptr %.254, align 1, !tbaa !24
  %i.dc = getelementptr inbounds nuw i8, ptr %.22453, i64 1 ; 2 uses
  %i.dd = load i8, ptr %.22453, align 1, !tbaa !24
  %i.de = xor i8 %i.dd, %i.db
  store i8 %i.de, ptr %.22453, align 1, !tbaa !24
  %i.df = getelementptr inbounds nuw i8, ptr %.254, i64 2
  %i.dg = load i8, ptr %i.da, align 1, !tbaa !24
  %i.dh = getelementptr inbounds nuw i8, ptr %.22453, i64 2 ; 2 uses
  %i.di = load i8, ptr %i.dc, align 1, !tbaa !24
  %i.dj = xor i8 %i.di, %i.dg
  store i8 %i.dj, ptr %i.dc, align 1, !tbaa !24
  %i.dk = getelementptr inbounds nuw i8, ptr %.254, i64 3
  %i.dl = load i8, ptr %i.df, align 1, !tbaa !24
  %i.dm = getelementptr inbounds nuw i8, ptr %.22453, i64 3 ; 2 uses
  %i.dn = load i8, ptr %i.dh, align 1, !tbaa !24
  %i.do = xor i8 %i.dn, %i.dl
  store i8 %i.do, ptr %i.dh, align 1, !tbaa !24
end_hunk_1

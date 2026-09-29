Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/bpacking_simd_avx512?download=true
inline.NumInlined: 11107
inline.NumDeleted: 458
loop-unroll.NumCompletelyUnrolled: 589
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 593
begin_hunk_0_@_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT0_iii:bb.a
  store i32 %i.ms, ptr %.026.i.i192, align 4, !tbaa !6
  %i.mt = getelementptr inbounds nuw i8, ptr %.026.i.i192, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  %i.mu = icmp slt i32 %i.mg, %i.mc
  br i1 %i.mu, label %.lr.ph.i.i191, label %_ZN5arrow8internal12unpack_exactILi3ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !161

_ZN5arrow8internal12unpack_exactILi3ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.h, %.lr.ph.i.i191, %bb.g
  %.023.lcssa.i.i178 = phi i32 [ %4, %bb.g ], [ %i.mg, %bb.h ], [ %.02325.i.i193, %.lr.ph.i.i191 ]
  %i.mv = sub nsw i32 %.023.lcssa.i.i178, %4
  %i.mw = sdiv i32 %i.mv, 3                       ; 3 uses
  %i.mx = mul nsw i32 %i.mw, 3
  %i.my = add nsw i32 %i.mx, %4
  %i.mz = sub nsw i32 %2, %i.mw                   ; 4 uses
  %i.na = sdiv i32 %i.my, 8
  %i.nb = sext i32 %i.na to i64
  %i.nc = getelementptr inbounds i8, ptr %0, i64 %i.nb ; 2 uses
  %i.nd = sext i32 %i.mw to i64
  %i.ne = getelementptr inbounds [4 x i8], ptr %1, i64 %i.nd ; 2 uses
  %i.nf = sdiv i32 %i.mz, 32                      ; 2 uses
  %i.ng = icmp sgt i32 %i.mz, 31
  br i1 %i.ng, label %.lr.ph.i186, label %._crit_edge.i179

._crit_edge.i179:                                 ; preds = %.lr.ph.i186, %_ZN5arrow8internal12unpack_exactILi3ELb1EjEEiPKhPT1_ii.exit.i
  %.026.lcssa.i180 = phi ptr [ %i.ne, %_ZN5arrow8internal12unpack_exactILi3ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.pa, %.lr.ph.i186 ]
  %.025.lcssa.i181 = phi ptr [ %i.nc, %_ZN5arrow8internal12unpack_exactILi3ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.oz, %.lr.ph.i186 ]
  %i.nh = shl nsw i32 %i.nf, 5                    ; 2 uses
  %i.ni = sub nsw i32 %i.mz, %i.nh                ; 2 uses
  %i.nj = icmp samesign ult i32 %i.ni, 32
  tail call void @llvm.assume(i1 %i.nj)
  %i.nk = mul nuw nsw i32 %i.ni, 3
  %.not.i182 = icmp eq i32 %i.mz, %i.nh
  br i1 %.not.i182, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i183

.lr.ph.i28.i183:                                  ; preds = %._crit_edge.i179, %.lr.ph.i28.i183
  %.024.i.i184 = phi ptr [ %i.oa, %.lr.ph.i28.i183 ], [ %.026.lcssa.i180, %._crit_edge.i179 ] ; 2 uses
  %.02223.i.i185 = phi i32 [ %i.nm, %.lr.ph.i28.i183 ], [ 0, %._crit_edge.i179 ] ; 4 uses
  %i.nl = lshr i32 %.02223.i.i185, 3              ; 2 uses
  %i.nm = add nuw nsw i32 %.02223.i.i185, 3       ; 2 uses
  %i.nn = add nuw nsw i32 %.02223.i.i185, 2
  %i.no = lshr i32 %i.nn, 3
  %i.np = sub nsw i32 %i.no, %i.nl                ; 2 uses
  %i.nq = add nsw i32 %i.np, 1
  %i.nr = icmp slt i32 %i.np, 2
  tail call void @llvm.assume(i1 %i.nr)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  store i64 0, ptr %i.bb, align 8, !tbaa !13
  %i.ns = zext nneg i32 %i.nl to i64
  %i.nt = getelementptr inbounds nuw i8, ptr %.025.lcssa.i181, i64 %i.ns
  %i.nu = sext i32 %i.nq to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr align 1 %i.nt, i64 %i.nu, i1 false)
  %.0..0..0..0..0..0..0..0..i29.i = load i64, ptr %i.bb, align 8, !tbaa !13
  %i.nv = and i32 %.02223.i.i185, 7
  %i.nw = zext nneg i32 %i.nv to i64
  %i.nx = lshr i64 %.0..0..0..0..0..0..0..0..i29.i, %i.nw
  %i.ny = trunc i64 %i.nx to i32
  %i.nz = and i32 %i.ny, 7
  store i32 %i.nz, ptr %.024.i.i184, align 4, !tbaa !6
  %i.oa = getelementptr inbounds nuw i8, ptr %.024.i.i184, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  %i.ob = icmp samesign ult i32 %i.nm, %i.nk
  br i1 %i.ob, label %.lr.ph.i28.i183, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !162

.lr.ph.i186:                                      ; preds = %_ZN5arrow8internal12unpack_exactILi3ELb1EjEEiPKhPT1_ii.exit.i, %.lr.ph.i186
  %.032.i187 = phi i32 [ %i.pb, %.lr.ph.i186 ], [ 0, %_ZN5arrow8internal12unpack_exactILi3ELb1EjEEiPKhPT1_ii.exit.i ]
  %.02531.i188 = phi ptr [ %i.oz, %.lr.ph.i186 ], [ %i.nc, %_ZN5arrow8internal12unpack_exactILi3ELb1EjEEiPKhPT1_ii.exit.i ] ; 5 uses
  %.02630.i189 = phi ptr [ %i.pa, %.lr.ph.i186 ], [ %i.ne, %_ZN5arrow8internal12unpack_exactILi3ELb1EjEEiPKhPT1_ii.exit.i ] ; 3 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.02531.i188, i64 4 ; 3 uses
  %i.od = load <2 x i32>, ptr %.02531.i188, align 1
  %i.oe = load i32, ptr %i.oc, align 1
  %i.of = load i32, ptr %.02531.i188, align 1
  %i.og = tail call i32 @llvm.fshl.i32(i32 %i.oe, i32 %i.of, i32 2)
  %i.oh = shufflevector <2 x i32> %i.od, <2 x i32> poison, <3 x i32> <i32 0, i32 poison, i32 1>
  %i.oi = insertelement <3 x i32> %i.oh, i32 %i.og, i64 1
  %i.oj = shufflevector <3 x i32> %i.oi, <3 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.ok = lshr <16 x i32> %i.oj, <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21, i32 24, i32 27, i32 0, i32 1, i32 4, i32 7, i32 10, i32 13>
  %i.ol = bitcast <16 x i32> %i.ok to <8 x i64>
  %i.om = and <8 x i64> %i.ol, splat (i64 30064771079)
  store <8 x i64> %i.om, ptr %.02630.i189, align 1, !tbaa !11
  %i.on = getelementptr inbounds nuw i8, ptr %.02531.i188, i64 8
  %i.oo = load <2 x i32>, ptr %i.oc, align 1
  %i.op = load i32, ptr %i.on, align 1
  %i.oq = load i32, ptr %i.oc, align 1
  %i.or = tail call i32 @llvm.fshl.i32(i32 %i.op, i32 %i.oq, i32 1)
  %i.os = shufflevector <2 x i32> %i.oo, <2 x i32> poison, <3 x i32> <i32 0, i32 poison, i32 1>
  %i.ot = insertelement <3 x i32> %i.os, i32 %i.or, i64 1
  %i.ou = shufflevector <3 x i32> %i.ot, <3 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.ov = lshr <16 x i32> %i.ou, <i32 16, i32 19, i32 22, i32 25, i32 28, i32 0, i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23, i32 26, i32 29>
  %i.ow = getelementptr inbounds nuw i8, ptr %.02630.i189, i64 64
  %i.ox = bitcast <16 x i32> %i.ov to <8 x i64>
  %i.oy = and <8 x i64> %i.ox, splat (i64 30064771079)
  store <8 x i64> %i.oy, ptr %i.ow, align 1, !tbaa !11
  %i.oz = getelementptr inbounds nuw i8, ptr %.02531.i188, i64 12 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %.02630.i189, i64 128 ; 2 uses
  %i.pb = add nuw nsw i32 %.032.i187, 1           ; 2 uses
  %exitcond.not.i190 = icmp eq i32 %i.pb, %i.nf
  br i1 %exitcond.not.i190, label %._crit_edge.i179, label %.lr.ph.i186, !llvm.loop !163

bb.i:                                             ; preds = %bb.a
  %i.pc = shl nsw i32 %2, 2
  %i.pd = add nsw i32 %4, %i.pc
  %i.pe = icmp sgt i32 %2, 0
  br i1 %i.pe, label %.lr.ph.i.i211, label %_ZN5arrow8internal12unpack_exactILi4ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i211:                                    ; preds = %bb.i, %bb.j
  %.026.i.i212 = phi ptr [ %i.pu, %bb.j ], [ %1, %bb.i ] ; 2 uses
  %.02325.i.i213 = phi i32 [ %i.ph, %bb.j ], [ %4, %bb.i ] ; 5 uses
  %i.pf = srem i32 %.02325.i.i213, 8              ; 2 uses
  %i.pg = sdiv i32 %.02325.i.i213, 8              ; 2 uses
  %.not.i.i214 = icmp eq i32 %i.pf, 0
  br i1 %.not.i.i214, label %_ZN5arrow8internal12unpack_exactILi4ELb1EjEEiPKhPT1_ii.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i211
  %i.ph = add nsw i32 %.02325.i.i213, 4           ; 3 uses
  %i.pi = add nsw i32 %.02325.i.i213, 3
  %i.pj = sdiv i32 %i.pi, 8
  %i.pk = sub nsw i32 %i.pj, %i.pg                ; 2 uses
  %i.pl = add nsw i32 %i.pk, 1
  %i.pm = icmp slt i32 %i.pk, 2
  tail call void @llvm.assume(i1 %i.pm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  store i64 0, ptr %i.ba, align 8, !tbaa !13
  %i.pn = sext i32 %i.pg to i64
  %i.po = getelementptr inbounds i8, ptr %0, i64 %i.pn
  %i.pp = sext i32 %i.pl to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ba, ptr readonly align 1 %i.po, i64 %i.pp, i1 false)
  %.0..0..0..0..0..0..0..0..i.i215 = load i64, ptr %i.ba, align 8, !tbaa !13
  %i.pq = zext nneg i32 %i.pf to i64
  %i.pr = lshr i64 %.0..0..0..0..0..0..0..0..i.i215, %i.pq
  %i.ps = trunc i64 %i.pr to i32
  %i.pt = and i32 %i.ps, 15
  store i32 %i.pt, ptr %.026.i.i212, align 4, !tbaa !6
  %i.pu = getelementptr inbounds nuw i8, ptr %.026.i.i212, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  %i.pv = icmp slt i32 %i.ph, %i.pd
  br i1 %i.pv, label %.lr.ph.i.i211, label %_ZN5arrow8internal12unpack_exactILi4ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !164

_ZN5arrow8internal12unpack_exactILi4ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.j, %.lr.ph.i.i211, %bb.i
  %.023.lcssa.i.i196 = phi i32 [ %4, %bb.i ], [ %i.ph, %bb.j ], [ %.02325.i.i213, %.lr.ph.i.i211 ]
  %i.pw = sub nsw i32 %.023.lcssa.i.i196, %4
  %i.px = sdiv i32 %i.pw, 4                       ; 3 uses
  %i.py = shl nsw i32 %i.px, 2
  %i.pz = add nsw i32 %i.py, %4
  %i.qa = sub nsw i32 %2, %i.px                   ; 5 uses
  %i.qb = sdiv i32 %i.pz, 8
  %i.qc = sext i32 %i.qb to i64
  %i.qd = getelementptr inbounds i8, ptr %0, i64 %i.qc ; 3 uses
  %i.qe = sext i32 %i.px to i64
  %i.qf = getelementptr inbounds [4 x i8], ptr %1, i64 %i.qe ; 3 uses
  %i.qg = sdiv i32 %i.qa, 32                      ; 4 uses
  %i.qh = icmp sgt i32 %i.qa, 31
  br i1 %i.qh, label %.lr.ph.i204.preheader, label %._crit_edge.i197

.lr.ph.i204.preheader:                            ; preds = %_ZN5arrow8internal12unpack_exactILi4ELb1EjEEiPKhPT1_ii.exit.i
  %xtraiter1597 = and i32 %i.qg, 1
  %i.qi = and i32 %i.qa, 2147483616
  %i.qj = icmp eq i32 %i.qi, 32
  br i1 %i.qj, label %.lr.ph.i204.epil.preheader, label %.lr.ph.i204.preheader.new

.lr.ph.i204.preheader.new:                        ; preds = %.lr.ph.i204.preheader
  %unroll_iter1602 = and i32 %i.qg, 67108862
  br label %.lr.ph.i204

._crit_edge.i197.loopexit.unr-lcssa:              ; preds = %.lr.ph.i204
  %lcmp.mod1598.not = icmp eq i32 %xtraiter1597, 0
  br i1 %lcmp.mod1598.not, label %._crit_edge.i197, label %.lr.ph.i204.epil.preheader

.lr.ph.i204.epil.preheader:                       ; preds = %._crit_edge.i197.loopexit.unr-lcssa, %.lr.ph.i204.preheader
  %.02531.i206.epil.init = phi ptr [ %i.qd, %.lr.ph.i204.preheader ], [ %i.ut, %._crit_edge.i197.loopexit.unr-lcssa ] ; 4 uses
  %.02630.i207.epil.init = phi ptr [ %i.qf, %.lr.ph.i204.preheader ], [ %i.uu, %._crit_edge.i197.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod1601 = trunc i32 %i.qg to i1
  tail call void @llvm.assume(i1 %lcmp.mod1601)
  %i.qk = getelementptr inbounds nuw i8, ptr %.02531.i206.epil.init, i64 4
  %i.ql = load i32, ptr %.02531.i206.epil.init, align 1
  %i.qm = insertelement <8 x i32> poison, i32 %i.ql, i64 0
  %i.qn = load i32, ptr %i.qk, align 1
  %i.qo = insertelement <8 x i32> poison, i32 %i.qn, i64 0
  %i.qp = shufflevector <8 x i32> %i.qm, <8 x i32> %i.qo, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  %.sroa.0111.60.vec.insert.i.i2081435.epil = lshr <16 x i32> %i.qp, <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.qq = bitcast <16 x i32> %.sroa.0111.60.vec.insert.i.i2081435.epil to <8 x i64>
  %i.qr = and <8 x i64> %i.qq, splat (i64 64424509455)
  store <8 x i64> %i.qr, ptr %.02630.i207.epil.init, align 1, !tbaa !11
  %i.qs = getelementptr inbounds nuw i8, ptr %.02531.i206.epil.init, i64 8
  %i.qt = load <2 x i32>, ptr %i.qs, align 1
  %i.qu = shufflevector <2 x i32> %i.qt, <2 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.qv = lshr <16 x i32> %i.qu, <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.qw = getelementptr inbounds nuw i8, ptr %.02630.i207.epil.init, i64 64
  %i.qx = bitcast <16 x i32> %i.qv to <8 x i64>
  %i.qy = and <8 x i64> %i.qx, splat (i64 64424509455)
  store <8 x i64> %i.qy, ptr %i.qw, align 1, !tbaa !11
  %i.qz = getelementptr inbounds nuw i8, ptr %.02531.i206.epil.init, i64 16
  %i.ra = getelementptr inbounds nuw i8, ptr %.02630.i207.epil.init, i64 128
  br label %._crit_edge.i197

._crit_edge.i197:                                 ; preds = %.lr.ph.i204.epil.preheader, %._crit_edge.i197.loopexit.unr-lcssa, %_ZN5arrow8internal12unpack_exactILi4ELb1EjEEiPKhPT1_ii.exit.i
  %.026.lcssa.i198 = phi ptr [ %i.qf, %_ZN5arrow8internal12unpack_exactILi4ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.uu, %._crit_edge.i197.loopexit.unr-lcssa ], [ %i.ra, %.lr.ph.i204.epil.preheader ] ; 6 uses
  %.025.lcssa.i199 = phi ptr [ %i.qd, %_ZN5arrow8internal12unpack_exactILi4ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.ut, %._crit_edge.i197.loopexit.unr-lcssa ], [ %i.qz, %.lr.ph.i204.epil.preheader ] ; 11 uses
  %i.rb = shl nsw i32 %i.qg, 5                    ; 2 uses
  %i.rc = sub nsw i32 %i.qa, %i.rb                ; 2 uses
  %i.rd = icmp samesign ult i32 %i.rc, 32
  tail call void @llvm.assume(i1 %i.rd)
  %i.re = shl nuw nsw i32 %i.rc, 2                ; 2 uses
  %.not.i200 = icmp eq i32 %i.qa, %i.rb
  br i1 %.not.i200, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i201.preheader

.lr.ph.i28.i201.preheader:                        ; preds = %._crit_edge.i197
  %i.rf = tail call i32 @llvm.usub.sat.i32(i32 %i.re, i32 4) ; 2 uses
  %5 = or disjoint i32 %i.rf, 3
  %6 = zext nneg i32 %5 to i64                    ; 3 uses
  %7 = lshr i64 %6, 2
  %8 = add nuw nsw i64 %7, 1                      ; 2 uses
  %min.iters.check1308 = icmp samesign ult i32 %i.rf, 60
  br i1 %min.iters.check1308, label %.lr.ph.i28.i201.preheader1509, label %vector.memcheck1301

vector.memcheck1301:                              ; preds = %.lr.ph.i28.i201.preheader
  %i.rg = and i64 %6, 124
  %i.rh = getelementptr i8, ptr %.026.lcssa.i198, i64 %i.rg
  %scevgep1302 = getelementptr i8, ptr %i.rh, i64 4
  %i.ri = lshr i64 %6, 3
  %i.rj = getelementptr i8, ptr %.025.lcssa.i199, i64 %i.ri
  %scevgep1303 = getelementptr i8, ptr %i.rj, i64 1
  %bound01304 = icmp ult ptr %.026.lcssa.i198, %scevgep1303
  %bound11305 = icmp ult ptr %.025.lcssa.i199, %scevgep1302
  %found.conflict1306 = and i1 %bound01304, %bound11305
  br i1 %found.conflict1306, label %.lr.ph.i28.i201.preheader1509, label %vector.ph1309

vector.ph1309:                                    ; preds = %vector.memcheck1301
  %n.vec1310 = and i64 %8, 1073741816             ; 4 uses
  %i.rk = shl nuw nsw i64 %n.vec1310, 2
  %i.rl = getelementptr i8, ptr %.026.lcssa.i198, i64 %i.rk
  %i.rm = trunc nuw nsw i64 %n.vec1310 to i32
  %i.rn = shl nuw i32 %i.rm, 2
  br label %vector.body1311

vector.body1311:                                  ; preds = %vector.body1311, %vector.ph1309
  %index1312 = phi i64 [ 0, %vector.ph1309 ], [ %index.next1315, %vector.body1311 ] ; 2 uses
  %vec.ind1313 = phi <8 x i32> [ <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>, %vector.ph1309 ], [ %vec.ind.next1316, %vector.body1311 ] ; 3 uses
  %i.ro = shl i64 %index1312, 2
  %next.gep1314 = getelementptr i8, ptr %.026.lcssa.i198, i64 %i.ro
  %i.rp = lshr <8 x i32> %vec.ind1313, splat (i32 3)
  %i.rq = zext nneg <8 x i32> %i.rp to <8 x i64>  ; 8 uses
  %i.rr = extractelement <8 x i64> %i.rq, i64 0
  %i.rs = getelementptr inbounds nuw i8, ptr %.025.lcssa.i199, i64 %i.rr
  %i.rt = extractelement <8 x i64> %i.rq, i64 1
  %i.ru = getelementptr inbounds nuw i8, ptr %.025.lcssa.i199, i64 %i.rt
  %i.rv = extractelement <8 x i64> %i.rq, i64 2
  %i.rw = getelementptr inbounds nuw i8, ptr %.025.lcssa.i199, i64 %i.rv
  %i.rx = extractelement <8 x i64> %i.rq, i64 3
  %i.ry = getelementptr inbounds nuw i8, ptr %.025.lcssa.i199, i64 %i.rx
  %i.rz = extractelement <8 x i64> %i.rq, i64 4
  %i.sa = getelementptr inbounds nuw i8, ptr %.025.lcssa.i199, i64 %i.rz
  %i.sb = extractelement <8 x i64> %i.rq, i64 5
  %i.sc = getelementptr inbounds nuw i8, ptr %.025.lcssa.i199, i64 %i.sb
  %i.sd = extractelement <8 x i64> %i.rq, i64 6
  %i.se = getelementptr inbounds nuw i8, ptr %.025.lcssa.i199, i64 %i.sd
  %i.sf = extractelement <8 x i64> %i.rq, i64 7
  %i.sg = getelementptr inbounds nuw i8, ptr %.025.lcssa.i199, i64 %i.sf
  %i.sh = load i8, ptr %i.rs, align 1, !alias.scope !269
  %i.si = load i8, ptr %i.ru, align 1, !alias.scope !269
  %i.sj = load i8, ptr %i.rw, align 1, !alias.scope !269
  %i.sk = load i8, ptr %i.ry, align 1, !alias.scope !269
  %i.sl = load i8, ptr %i.sa, align 1, !alias.scope !269
  %i.sm = load i8, ptr %i.sc, align 1, !alias.scope !269
  %i.sn = load i8, ptr %i.se, align 1, !alias.scope !269
  %i.so = load i8, ptr %i.sg, align 1, !alias.scope !269
  %i.sp = insertelement <8 x i8> poison, i8 %i.sh, i64 0
  %i.sq = insertelement <8 x i8> %i.sp, i8 %i.si, i64 1
  %i.sr = insertelement <8 x i8> %i.sq, i8 %i.sj, i64 2
  %i.ss = insertelement <8 x i8> %i.sr, i8 %i.sk, i64 3
  %i.st = insertelement <8 x i8> %i.ss, i8 %i.sl, i64 4
  %i.su = insertelement <8 x i8> %i.st, i8 %i.sm, i64 5
  %i.sv = insertelement <8 x i8> %i.su, i8 %i.sn, i64 6
  %i.sw = insertelement <8 x i8> %i.sv, i8 %i.so, i64 7
  %i.sx = zext <8 x i8> %i.sw to <8 x i32>
  %i.sy = and <8 x i32> %vec.ind1313, splat (i32 4)
  %i.sz = lshr <8 x i32> %i.sx, %i.sy
  %i.ta = and <8 x i32> %i.sz, splat (i32 15)
  store <8 x i32> %i.ta, ptr %next.gep1314, align 4, !tbaa !6, !alias.scope !270, !noalias !269
  %index.next1315 = add nuw i64 %index1312, 8     ; 2 uses
  %vec.ind.next1316 = add nuw nsw <8 x i32> %vec.ind1313, splat (i32 32)
  %i.tb = icmp eq i64 %index.next1315, %n.vec1310
  br i1 %i.tb, label %middle.block1317, label %vector.body1311, !llvm.loop !168

middle.block1317:                                 ; preds = %vector.body1311
  %cmp.n1318 = icmp eq i64 %8, %n.vec1310
  br i1 %cmp.n1318, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i201.preheader1509

.lr.ph.i28.i201.preheader1509:                    ; preds = %vector.memcheck1301, %.lr.ph.i28.i201.preheader, %middle.block1317
  %.024.i.i202.ph = phi ptr [ %.026.lcssa.i198, %vector.memcheck1301 ], [ %.026.lcssa.i198, %.lr.ph.i28.i201.preheader ], [ %i.rl, %middle.block1317 ]
  %.02223.i.i203.ph = phi i32 [ 0, %vector.memcheck1301 ], [ 0, %.lr.ph.i28.i201.preheader ], [ %i.rn, %middle.block1317 ]
  br label %.lr.ph.i28.i201

.lr.ph.i28.i201:                                  ; preds = %.lr.ph.i28.i201.preheader1509, %.lr.ph.i28.i201
  %.024.i.i202 = phi ptr [ %i.tl, %.lr.ph.i28.i201 ], [ %.024.i.i202.ph, %.lr.ph.i28.i201.preheader1509 ] ; 2 uses
  %.02223.i.i203 = phi i32 [ %i.td, %.lr.ph.i28.i201 ], [ %.02223.i.i203.ph, %.lr.ph.i28.i201.preheader1509 ] ; 3 uses
  %i.tc = lshr i32 %.02223.i.i203, 3
  %i.td = add nuw nsw i32 %.02223.i.i203, 4       ; 2 uses
  %i.te = zext nneg i32 %i.tc to i64
  %i.tf = getelementptr inbounds nuw i8, ptr %.025.lcssa.i199, i64 %i.te
  %i.tg = load i8, ptr %i.tf, align 1
  %i.th = zext i8 %i.tg to i32
  %i.ti = and i32 %.02223.i.i203, 4
  %i.tj = lshr i32 %i.th, %i.ti
  %i.tk = and i32 %i.tj, 15
  store i32 %i.tk, ptr %.024.i.i202, align 4, !tbaa !6
  %i.tl = getelementptr inbounds nuw i8, ptr %.024.i.i202, i64 4
  %i.tm = icmp samesign ult i32 %i.td, %i.re
  br i1 %i.tm, label %.lr.ph.i28.i201, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !169

.lr.ph.i204:                                      ; preds = %.lr.ph.i204, %.lr.ph.i204.preheader.new
  %.02531.i206 = phi ptr [ %i.qd, %.lr.ph.i204.preheader.new ], [ %i.ut, %.lr.ph.i204 ] ; 7 uses
  %.02630.i207 = phi ptr [ %i.qf, %.lr.ph.i204.preheader.new ], [ %i.uu, %.lr.ph.i204 ] ; 5 uses
  %niter1603 = phi i32 [ 0, %.lr.ph.i204.preheader.new ], [ %niter1603.next.1, %.lr.ph.i204 ]
  %i.tn = getelementptr inbounds nuw i8, ptr %.02531.i206, i64 4
  %i.to = load i32, ptr %.02531.i206, align 1
  %i.tp = insertelement <8 x i32> poison, i32 %i.to, i64 0
  %i.tq = load i32, ptr %i.tn, align 1
  %i.tr = insertelement <8 x i32> poison, i32 %i.tq, i64 0
  %i.ts = shufflevector <8 x i32> %i.tp, <8 x i32> %i.tr, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  %.sroa.0111.60.vec.insert.i.i2081435 = lshr <16 x i32> %i.ts, <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.tt = bitcast <16 x i32> %.sroa.0111.60.vec.insert.i.i2081435 to <8 x i64>
  %i.tu = and <8 x i64> %i.tt, splat (i64 64424509455)
  store <8 x i64> %i.tu, ptr %.02630.i207, align 1, !tbaa !11
  %i.tv = getelementptr inbounds nuw i8, ptr %.02531.i206, i64 8
  %i.tw = load <2 x i32>, ptr %i.tv, align 1
  %i.tx = shufflevector <2 x i32> %i.tw, <2 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ty = lshr <16 x i32> %i.tx, <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.tz = getelementptr inbounds nuw i8, ptr %.02630.i207, i64 64
  %i.ua = bitcast <16 x i32> %i.ty to <8 x i64>
  %i.ub = and <8 x i64> %i.ua, splat (i64 64424509455)
  store <8 x i64> %i.ub, ptr %i.tz, align 1, !tbaa !11
  %i.uc = getelementptr inbounds nuw i8, ptr %.02531.i206, i64 16
  %i.ud = getelementptr inbounds nuw i8, ptr %.02630.i207, i64 128
  %i.ue = getelementptr inbounds nuw i8, ptr %.02531.i206, i64 20
  %i.uf = load i32, ptr %i.uc, align 1
  %i.ug = insertelement <8 x i32> poison, i32 %i.uf, i64 0
  %i.uh = load i32, ptr %i.ue, align 1
  %i.ui = insertelement <8 x i32> poison, i32 %i.uh, i64 0
  %i.uj = shufflevector <8 x i32> %i.ug, <8 x i32> %i.ui, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  %.sroa.0111.60.vec.insert.i.i2081435.1 = lshr <16 x i32> %i.uj, <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.uk = bitcast <16 x i32> %.sroa.0111.60.vec.insert.i.i2081435.1 to <8 x i64>
  %i.ul = and <8 x i64> %i.uk, splat (i64 64424509455)
  store <8 x i64> %i.ul, ptr %i.ud, align 1, !tbaa !11
  %i.um = getelementptr inbounds nuw i8, ptr %.02531.i206, i64 24
  %i.un = load <2 x i32>, ptr %i.um, align 1
  %i.uo = shufflevector <2 x i32> %i.un, <2 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.up = lshr <16 x i32> %i.uo, <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.uq = getelementptr inbounds nuw i8, ptr %.02630.i207, i64 192
  %i.ur = bitcast <16 x i32> %i.up to <8 x i64>
  %i.us = and <8 x i64> %i.ur, splat (i64 64424509455)
  store <8 x i64> %i.us, ptr %i.uq, align 1, !tbaa !11
  %i.ut = getelementptr inbounds nuw i8, ptr %.02531.i206, i64 32 ; 3 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %.02630.i207, i64 256 ; 3 uses
  %niter1603.next.1 = add i32 %niter1603, 2       ; 2 uses
  %niter1603.ncmp.1 = icmp eq i32 %niter1603.next.1, %unroll_iter1602
  br i1 %niter1603.ncmp.1, label %._crit_edge.i197.loopexit.unr-lcssa, label %.lr.ph.i204, !llvm.loop !170

bb.k:                                             ; preds = %bb.a
  %i.uv = mul nsw i32 %2, 5
  %i.uw = add nsw i32 %4, %i.uv
  %i.ux = icmp sgt i32 %2, 0
  br i1 %i.ux, label %.lr.ph.i.i230, label %_ZN5arrow8internal12unpack_exactILi5ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i230:                                    ; preds = %bb.k, %bb.l
  %.026.i.i231 = phi ptr [ %i.vn, %bb.l ], [ %1, %bb.k ] ; 2 uses
  %.02325.i.i232 = phi i32 [ %i.va, %bb.l ], [ %4, %bb.k ] ; 5 uses
  %i.uy = srem i32 %.02325.i.i232, 8              ; 2 uses
  %i.uz = sdiv i32 %.02325.i.i232, 8              ; 2 uses
  %.not.i.i233 = icmp eq i32 %i.uy, 0
  br i1 %.not.i.i233, label %_ZN5arrow8internal12unpack_exactILi5ELb1EjEEiPKhPT1_ii.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i230
  %i.va = add nsw i32 %.02325.i.i232, 5           ; 3 uses
  %i.vb = add nsw i32 %.02325.i.i232, 4
  %i.vc = sdiv i32 %i.vb, 8
  %i.vd = sub nsw i32 %i.vc, %i.uz                ; 2 uses
  %i.ve = add nsw i32 %i.vd, 1
  %i.vf = icmp slt i32 %i.vd, 2
  tail call void @llvm.assume(i1 %i.vf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  store i64 0, ptr %i.az, align 8, !tbaa !13
  %i.vg = sext i32 %i.uz to i64
  %i.vh = getelementptr inbounds i8, ptr %0, i64 %i.vg
  %i.vi = sext i32 %i.ve to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.az, ptr readonly align 1 %i.vh, i64 %i.vi, i1 false)
  %.0..0..0..0..0..0..0..0..i.i234 = load i64, ptr %i.az, align 8, !tbaa !13
  %i.vj = zext nneg i32 %i.uy to i64
  %i.vk = lshr i64 %.0..0..0..0..0..0..0..0..i.i234, %i.vj
  %i.vl = trunc i64 %i.vk to i32
  %i.vm = and i32 %i.vl, 31
  store i32 %i.vm, ptr %.026.i.i231, align 4, !tbaa !6
  %i.vn = getelementptr inbounds nuw i8, ptr %.026.i.i231, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  %i.vo = icmp slt i32 %i.va, %i.uw
  br i1 %i.vo, label %.lr.ph.i.i230, label %_ZN5arrow8internal12unpack_exactILi5ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !171

_ZN5arrow8internal12unpack_exactILi5ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.l, %.lr.ph.i.i230, %bb.k
  %.023.lcssa.i.i216 = phi i32 [ %4, %bb.k ], [ %i.va, %bb.l ], [ %.02325.i.i232, %.lr.ph.i.i230 ]
  %i.vp = sub nsw i32 %.023.lcssa.i.i216, %4
  %i.vq = sdiv i32 %i.vp, 5                       ; 3 uses
  %i.vr = mul nsw i32 %i.vq, 5
  %i.vs = add nsw i32 %i.vr, %4
  %i.vt = sub nsw i32 %2, %i.vq                   ; 4 uses
  %i.vu = sdiv i32 %i.vs, 8
  %i.vv = sext i32 %i.vu to i64
  %i.vw = getelementptr inbounds i8, ptr %0, i64 %i.vv ; 2 uses
  %i.vx = sext i32 %i.vq to i64
  %i.vy = getelementptr inbounds [4 x i8], ptr %1, i64 %i.vx ; 2 uses
  %i.vz = sdiv i32 %i.vt, 32                      ; 2 uses
  %i.wa = icmp sgt i32 %i.vt, 31
  br i1 %i.wa, label %.lr.ph.i225, label %._crit_edge.i217

._crit_edge.i217:                                 ; preds = %.lr.ph.i225, %_ZN5arrow8internal12unpack_exactILi5ELb1EjEEiPKhPT1_ii.exit.i
  %.026.lcssa.i218 = phi ptr [ %i.vy, %_ZN5arrow8internal12unpack_exactILi5ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.xt, %.lr.ph.i225 ]
  %.025.lcssa.i219 = phi ptr [ %i.vw, %_ZN5arrow8internal12unpack_exactILi5ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.xs, %.lr.ph.i225 ]
  %i.wb = shl nsw i32 %i.vz, 5                    ; 2 uses
  %i.wc = sub nsw i32 %i.vt, %i.wb                ; 2 uses
  %i.wd = icmp samesign ult i32 %i.wc, 32
  tail call void @llvm.assume(i1 %i.wd)
  %i.we = mul nuw nsw i32 %i.wc, 5
  %.not.i220 = icmp eq i32 %i.vt, %i.wb
  br i1 %.not.i220, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i221

.lr.ph.i28.i221:                                  ; preds = %._crit_edge.i217, %.lr.ph.i28.i221
  %.024.i.i222 = phi ptr [ %i.wu, %.lr.ph.i28.i221 ], [ %.026.lcssa.i218, %._crit_edge.i217 ] ; 2 uses
  %.02223.i.i223 = phi i32 [ %i.wg, %.lr.ph.i28.i221 ], [ 0, %._crit_edge.i217 ] ; 4 uses
  %i.wf = lshr i32 %.02223.i.i223, 3              ; 2 uses
  %i.wg = add nuw nsw i32 %.02223.i.i223, 5       ; 2 uses
  %i.wh = add nuw nsw i32 %.02223.i.i223, 4
  %i.wi = lshr i32 %i.wh, 3
  %i.wj = sub nsw i32 %i.wi, %i.wf                ; 2 uses
  %i.wk = add nsw i32 %i.wj, 1
  %i.wl = icmp slt i32 %i.wj, 2
  tail call void @llvm.assume(i1 %i.wl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  store i64 0, ptr %i.ay, align 8, !tbaa !13
  %i.wm = zext nneg i32 %i.wf to i64
  %i.wn = getelementptr inbounds nuw i8, ptr %.025.lcssa.i219, i64 %i.wm
  %i.wo = sext i32 %i.wk to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ay, ptr align 1 %i.wn, i64 %i.wo, i1 false)
  %.0..0..0..0..0..0..0..0..i29.i224 = load i64, ptr %i.ay, align 8, !tbaa !13
  %i.wp = and i32 %.02223.i.i223, 7
  %i.wq = zext nneg i32 %i.wp to i64
  %i.wr = lshr i64 %.0..0..0..0..0..0..0..0..i29.i224, %i.wq
  %i.ws = trunc i64 %i.wr to i32
  %i.wt = and i32 %i.ws, 31
  store i32 %i.wt, ptr %.024.i.i222, align 4, !tbaa !6
  %i.wu = getelementptr inbounds nuw i8, ptr %.024.i.i222, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  %i.wv = icmp samesign ult i32 %i.wg, %i.we
  br i1 %i.wv, label %.lr.ph.i28.i221, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !172

.lr.ph.i225:                                      ; preds = %_ZN5arrow8internal12unpack_exactILi5ELb1EjEEiPKhPT1_ii.exit.i, %.lr.ph.i225
  %.032.i226 = phi i32 [ %i.xu, %.lr.ph.i225 ], [ 0, %_ZN5arrow8internal12unpack_exactILi5ELb1EjEEiPKhPT1_ii.exit.i ]
  %.02531.i227 = phi ptr [ %i.xs, %.lr.ph.i225 ], [ %i.vw, %_ZN5arrow8internal12unpack_exactILi5ELb1EjEEiPKhPT1_ii.exit.i ] ; 5 uses
  %.02630.i228 = phi ptr [ %i.xt, %.lr.ph.i225 ], [ %i.vy, %_ZN5arrow8internal12unpack_exactILi5ELb1EjEEiPKhPT1_ii.exit.i ] ; 3 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %.02531.i227, i64 4
  %i.wx = getelementptr inbounds nuw i8, ptr %.02531.i227, i64 8
  %i.wy = load <2 x i32>, ptr %.02531.i227, align 1 ; 2 uses
  %i.wz = load <2 x i32>, ptr %i.ww, align 1      ; 2 uses
  %i.xa = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.wz, <2 x i32> %i.wy, <2 x i32> <i32 2, i32 4>)
  %i.xb = shufflevector <2 x i32> %i.wy, <2 x i32> %i.xa, <5 x i32> <i32 0, i32 2, i32 1, i32 3, i32 poison>
  %i.xc = shufflevector <2 x i32> %i.wz, <2 x i32> poison, <5 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %i.xd = shufflevector <5 x i32> %i.xb, <5 x i32> %i.xc, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3, i32 6, i32 6, i32 6>
  %i.xe = lshr <16 x i32> %i.xd, <i32 0, i32 5, i32 10, i32 15, i32 20, i32 25, i32 0, i32 3, i32 8, i32 13, i32 18, i32 23, i32 0, i32 1, i32 6, i32 11>
  %i.xf = bitcast <16 x i32> %i.xe to <8 x i64>
  %i.xg = and <8 x i64> %i.xf, splat (i64 133143986207)
  store <8 x i64> %i.xg, ptr %.02630.i228, align 1, !tbaa !11
  %i.xh = getelementptr inbounds nuw i8, ptr %.02531.i227, i64 12
  %i.xi = load <2 x i32>, ptr %i.wx, align 1      ; 2 uses
  %i.xj = load <2 x i32>, ptr %i.xh, align 1      ; 2 uses
  %i.xk = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.xj, <2 x i32> %i.xi, <2 x i32> <i32 1, i32 3>)
  %i.xl = shufflevector <2 x i32> %i.xi, <2 x i32> %i.xk, <5 x i32> <i32 0, i32 2, i32 1, i32 3, i32 poison>
  %i.xm = shufflevector <2 x i32> %i.xj, <2 x i32> poison, <5 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %i.xn = shufflevector <5 x i32> %i.xl, <5 x i32> %i.xm, <16 x i32> <i32 0, i32 0, i32 0, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  %i.xo = lshr <16 x i32> %i.xn, <i32 16, i32 21, i32 26, i32 0, i32 4, i32 9, i32 14, i32 19, i32 24, i32 0, i32 2, i32 7, i32 12, i32 17, i32 22, i32 27>
  %i.xp = getelementptr inbounds nuw i8, ptr %.02630.i228, i64 64
  %i.xq = bitcast <16 x i32> %i.xo to <8 x i64>
  %i.xr = and <8 x i64> %i.xq, splat (i64 133143986207)
  store <8 x i64> %i.xr, ptr %i.xp, align 1, !tbaa !11
  %i.xs = getelementptr inbounds nuw i8, ptr %.02531.i227, i64 20 ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %.02630.i228, i64 128 ; 2 uses
  %i.xu = add nuw nsw i32 %.032.i226, 1           ; 2 uses
  %exitcond.not.i229 = icmp eq i32 %i.xu, %i.vz
  br i1 %exitcond.not.i229, label %._crit_edge.i217, label %.lr.ph.i225, !llvm.loop !173
end_hunk_0
begin_hunk_1_@_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT0_iii:bb.a
  %i.csf = zext nneg i32 %i.cse to i64
  %i.csg = lshr i64 %.0..0..0..0..0..0..0..0..i29.i585, %i.csf
  %i.csh = trunc i64 %i.csg to i32
  %i.csi = and i32 %i.csh, 8388607
  store i32 %i.csi, ptr %.024.i.i583, align 4, !tbaa !6
  %i.csj = getelementptr inbounds nuw i8, ptr %.024.i.i583, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.csk = icmp samesign ult i32 %i.crv, %i.crt
  br i1 %i.csk, label %.lr.ph.i28.i582, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !234

.lr.ph.i586:                                      ; preds = %_ZN5arrow8internal12unpack_exactILi23ELb1EjEEiPKhPT1_ii.exit.i, %.lr.ph.i586
  %.032.i587 = phi i32 [ %i.cws, %.lr.ph.i586 ], [ 0, %_ZN5arrow8internal12unpack_exactILi23ELb1EjEEiPKhPT1_ii.exit.i ]
  %.02531.i588 = phi ptr [ %i.cwq, %.lr.ph.i586 ], [ %i.crl, %_ZN5arrow8internal12unpack_exactILi23ELb1EjEEiPKhPT1_ii.exit.i ] ; 23 uses
  %.02630.i589 = phi ptr [ %i.cwr, %.lr.ph.i586 ], [ %i.crn, %_ZN5arrow8internal12unpack_exactILi23ELb1EjEEiPKhPT1_ii.exit.i ] ; 3 uses
  %i.csl = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 4
  %i.csm = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 8
  %i.csn = load <2 x i32>, ptr %.02531.i588, align 1 ; 2 uses
  %i.cso = load i32, ptr %i.csm, align 1          ; 2 uses
  %i.csp = load <2 x i32>, ptr %i.csl, align 1
  %i.csq = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.csp, <2 x i32> %i.csn, <2 x i32> <i32 9, i32 18>)
  %i.csr = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 12 ; 2 uses
  %i.css = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 16
  %i.cst = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 20 ; 2 uses
  %i.csu = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 24
  %i.csv = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 28
  %i.csw = load <2 x i32>, ptr %i.cst, align 1
  %i.csx = load i32, ptr %i.csr, align 1
  %i.csy = load <2 x i32>, ptr %i.csr, align 1
  %i.csz = tail call i32 @llvm.fshl.i32(i32 %i.csx, i32 %i.cso, i32 4)
  %i.cta = load i32, ptr %i.cst, align 1
  %i.ctb = load <2 x i32>, ptr %i.css, align 1
  %i.ctc = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.ctb, <2 x i32> %i.csy, <2 x i32> <i32 13, i32 22>)
  %i.ctd = load i32, ptr %i.csv, align 1          ; 2 uses
  %i.cte = load <2 x i32>, ptr %i.csu, align 1
  %i.ctf = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.cte, <2 x i32> %i.csw, <2 x i32> <i32 8, i32 17>)
  %i.ctg = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 32 ; 2 uses
  %i.cth = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 36
  %i.cti = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 40
  %i.ctj = load i32, ptr %i.ctg, align 1
  %i.ctk = load <2 x i32>, ptr %i.ctg, align 1
  %i.ctl = tail call i32 @llvm.fshl.i32(i32 %i.ctj, i32 %i.ctd, i32 3)
  %i.ctm = load i32, ptr %i.cti, align 1          ; 2 uses
  %i.ctn = load <2 x i32>, ptr %i.cth, align 1
  %i.cto = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.ctn, <2 x i32> %i.ctk, <2 x i32> <i32 12, i32 21>)
  %i.ctp = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 44 ; 2 uses
  %i.ctq = load i32, ptr %i.ctp, align 1
  %i.ctr = tail call i32 @llvm.fshl.i32(i32 %i.ctq, i32 %i.ctm, i32 7)
  %i.cts = shufflevector <2 x i32> %i.csn, <2 x i32> %i.csq, <16 x i32> <i32 0, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ctt = lshr i32 %i.cso, 5
  %i.ctu = insertelement <16 x i32> %i.cts, i32 %i.ctt, i64 3
  %i.ctv = insertelement <16 x i32> %i.ctu, i32 %i.csz, i64 4
  %i.ctw = shufflevector <2 x i32> %i.ctc, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ctx = shufflevector <16 x i32> %i.ctv, <16 x i32> %i.ctw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cty = lshr i32 %i.cta, 1
  %i.ctz = insertelement <16 x i32> %i.ctx, i32 %i.cty, i64 7
  %i.cua = shufflevector <2 x i32> %i.ctf, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cub = shufflevector <16 x i32> %i.ctz, <16 x i32> %i.cua, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cuc = lshr i32 %i.ctd, 6
  %i.cud = insertelement <16 x i32> %i.cub, i32 %i.cuc, i64 10
  %i.cue = insertelement <16 x i32> %i.cud, i32 %i.ctl, i64 11
  %i.cuf = shufflevector <2 x i32> %i.cto, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cug = shufflevector <16 x i32> %i.cue, <16 x i32> %i.cuf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 poison, i32 poison>
  %i.cuh = lshr i32 %i.ctm, 2
  %i.cui = insertelement <16 x i32> %i.cug, i32 %i.cuh, i64 14
  %.sroa.0133.60.vec.insert.i.i590 = insertelement <16 x i32> %i.cui, i32 %i.ctr, i64 15
  %i.cuj = bitcast <16 x i32> %.sroa.0133.60.vec.insert.i.i590 to <8 x i64>
  %i.cuk = and <8 x i64> %i.cuj, splat (i64 36028792732385279)
  store <8 x i64> %i.cuk, ptr %.02630.i589, align 1, !tbaa !11
  %i.cul = load i32, ptr %i.ctp, align 1
  %i.cum = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 48 ; 2 uses
  %i.cun = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 52
  %i.cuo = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 56
  %i.cup = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 60 ; 2 uses
  %i.cuq = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 64
  %i.cur = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 68 ; 2 uses
  %i.cus = load <2 x i32>, ptr %i.cup, align 1
  %i.cut = load <2 x i32>, ptr %i.cun, align 1
  %i.cuu = load i32, ptr %i.cup, align 1
  %i.cuv = load <2 x i32>, ptr %i.cuo, align 1
  %i.cuw = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.cuv, <2 x i32> %i.cut, <2 x i32> <i32 11, i32 20>)
  %i.cux = load <2 x i32>, ptr %i.cuq, align 1
  %i.cuy = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.cux, <2 x i32> %i.cus, <2 x i32> <i32 6, i32 15>)
  %i.cuz = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 76
  %i.cva = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 80 ; 2 uses
  %i.cvb = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 84
  %i.cvc = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 88
  %i.cvd = load <2 x i32>, ptr %i.cva, align 1
  %i.cve = load <2 x i32>, ptr %i.cum, align 1    ; 2 uses
  %i.cvf = load i32, ptr %i.cum, align 1          ; 2 uses
  %i.cvg = tail call i32 @llvm.fshl.i32(i32 %i.cvf, i32 %i.cul, i32 16)
  %i.cvh = load <2 x i32>, ptr %i.cur, align 1    ; 2 uses
  %i.cvi = load i32, ptr %i.cur, align 1
  %i.cvj = load <2 x i32>, ptr %i.cuz, align 1
  %i.cvk = load i32, ptr %i.cva, align 1
  %i.cvl = shufflevector <2 x i32> %i.cve, <2 x i32> %i.cvh, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.cvm = shufflevector <2 x i32> %i.cvj, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.cvn = shufflevector <4 x i32> %i.cvl, <4 x i32> %i.cvm, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cvo = shufflevector <2 x i32> %i.cve, <2 x i32> %i.cvh, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.cvp = shufflevector <4 x i32> %i.cvo, <4 x i32> %i.cvm, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.cvq = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cvn, <4 x i32> %i.cvp, <4 x i32> <i32 2, i32 1, i32 10, i32 19>)
  %i.cvr = load i32, ptr %i.cvc, align 1
  %i.cvs = load <2 x i32>, ptr %i.cvb, align 1
  %i.cvt = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.cvs, <2 x i32> %i.cvd, <2 x i32> <i32 5, i32 14>)
  %i.cvu = insertelement <16 x i32> poison, i32 %i.cvg, i64 0
  %i.cvv = lshr i32 %i.cvf, 7
  %i.cvw = insertelement <16 x i32> %i.cvu, i32 %i.cvv, i64 1
  %i.cvx = shufflevector <4 x i32> %i.cvq, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.cvy = shufflevector <16 x i32> %i.cvw, <16 x i32> %i.cvx, <16 x i32> <i32 0, i32 1, i32 16, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cvz = shufflevector <2 x i32> %i.cuw, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cwa = shufflevector <16 x i32> %i.cvy, <16 x i32> %i.cvz, <16 x i32> <i32 0, i32 1, i32 2, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cwb = lshr i32 %i.cuu, 3
  %i.cwc = insertelement <16 x i32> %i.cwa, i32 %i.cwb, i64 5
  %i.cwd = shufflevector <2 x i32> %i.cuy, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cwe = shufflevector <16 x i32> %i.cwc, <16 x i32> %i.cwd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cwf = lshr i32 %i.cvi, 8
  %i.cwg = insertelement <16 x i32> %i.cwe, i32 %i.cwf, i64 8
  %i.cwh = shufflevector <16 x i32> %i.cwg, <16 x i32> %i.cvx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cwi = lshr i32 %i.cvk, 4
  %i.cwj = insertelement <16 x i32> %i.cwh, i32 %i.cwi, i64 12
  %i.cwk = shufflevector <2 x i32> %i.cvt, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cwl = shufflevector <16 x i32> %i.cwj, <16 x i32> %i.cwk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 16, i32 17, i32 poison>
  %i.cwm = lshr i32 %i.cvr, 9
  %.sroa.0153.60.vec.insert.i.i = insertelement <16 x i32> %i.cwl, i32 %i.cwm, i64 15
  %i.cwn = getelementptr inbounds nuw i8, ptr %.02630.i589, i64 64
  %i.cwo = bitcast <16 x i32> %.sroa.0153.60.vec.insert.i.i to <8 x i64>
  %i.cwp = and <8 x i64> %i.cwo, splat (i64 36028792732385279)
  store <8 x i64> %i.cwp, ptr %i.cwn, align 1, !tbaa !11
  %i.cwq = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 92 ; 2 uses
  %i.cwr = getelementptr inbounds nuw i8, ptr %.02630.i589, i64 128 ; 2 uses
  %i.cws = add nuw nsw i32 %.032.i587, 1          ; 2 uses
  %exitcond.not.i591 = icmp eq i32 %i.cws, %i.cro
  br i1 %exitcond.not.i591, label %._crit_edge.i578, label %.lr.ph.i586, !llvm.loop !235

bb.aw:                                            ; preds = %bb.a
  %i.cwt = mul nsw i32 %2, 24
  %i.cwu = add nsw i32 %4, %i.cwt
  %i.cwv = icmp sgt i32 %2, 0
  br i1 %i.cwv, label %.lr.ph.i.i615, label %_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i615:                                    ; preds = %bb.aw, %bb.ax
  %.026.i.i616 = phi ptr [ %i.cxl, %bb.ax ], [ %1, %bb.aw ] ; 2 uses
  %.02325.i.i617 = phi i32 [ %i.cwy, %bb.ax ], [ %4, %bb.aw ] ; 5 uses
  %i.cww = srem i32 %.02325.i.i617, 8             ; 2 uses
  %i.cwx = sdiv i32 %.02325.i.i617, 8             ; 2 uses
  %.not.i.i618 = icmp eq i32 %i.cww, 0
  br i1 %.not.i.i618, label %_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.i.i615
  %i.cwy = add nsw i32 %.02325.i.i617, 24         ; 3 uses
  %i.cwz = add nsw i32 %.02325.i.i617, 23
  %i.cxa = sdiv i32 %i.cwz, 8
  %i.cxb = sub nsw i32 %i.cxa, %i.cwx             ; 2 uses
  %i.cxc = add nsw i32 %i.cxb, 1
  %i.cxd = icmp slt i32 %i.cxb, 4
  tail call void @llvm.assume(i1 %i.cxd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 0, ptr %i.p, align 8, !tbaa !13
  %i.cxe = sext i32 %i.cwx to i64
  %i.cxf = getelementptr inbounds i8, ptr %0, i64 %i.cxe
  %i.cxg = sext i32 %i.cxc to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr readonly align 1 %i.cxf, i64 %i.cxg, i1 false)
  %.0..0..0..0..0..0..0..0..i.i619 = load i64, ptr %i.p, align 8, !tbaa !13
  %i.cxh = zext nneg i32 %i.cww to i64
  %i.cxi = lshr i64 %.0..0..0..0..0..0..0..0..i.i619, %i.cxh
  %i.cxj = trunc i64 %i.cxi to i32
  %i.cxk = and i32 %i.cxj, 16777215
  store i32 %i.cxk, ptr %.026.i.i616, align 4, !tbaa !6
  %i.cxl = getelementptr inbounds nuw i8, ptr %.026.i.i616, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.cxm = icmp slt i32 %i.cwy, %i.cwu
  br i1 %i.cxm, label %.lr.ph.i.i615, label %_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !236

_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.ax, %.lr.ph.i.i615, %bb.aw
  %.023.lcssa.i.i597 = phi i32 [ %4, %bb.aw ], [ %i.cwy, %bb.ax ], [ %.02325.i.i617, %.lr.ph.i.i615 ]
  %i.cxn = sub nsw i32 %.023.lcssa.i.i597, %4
  %i.cxo = sdiv i32 %i.cxn, 24                    ; 3 uses
  %i.cxp = mul nsw i32 %i.cxo, 24
  %i.cxq = add nsw i32 %i.cxp, %4
  %i.cxr = sub nsw i32 %2, %i.cxo                 ; 4 uses
  %i.cxs = sdiv i32 %i.cxq, 8
  %i.cxt = sext i32 %i.cxs to i64
  %i.cxu = getelementptr inbounds i8, ptr %0, i64 %i.cxt ; 2 uses
  %i.cxv = sext i32 %i.cxo to i64
  %i.cxw = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cxv ; 2 uses
  %i.cxx = sdiv i32 %i.cxr, 32                    ; 2 uses
  %i.cxy = icmp sgt i32 %i.cxr, 31
  br i1 %i.cxy, label %.lr.ph.i608, label %._crit_edge.i598

._crit_edge.i598:                                 ; preds = %.lr.ph.i608, %_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i
  %.026.lcssa.i599 = phi ptr [ %i.cxw, %_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.ddo, %.lr.ph.i608 ] ; 6 uses
  %.025.lcssa.i600 = phi ptr [ %i.cxu, %_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.ddn, %.lr.ph.i608 ] ; 11 uses
  %i.cxz = shl nsw i32 %i.cxx, 5                  ; 2 uses
  %i.cya = sub nsw i32 %i.cxr, %i.cxz             ; 2 uses
  %i.cyb = icmp samesign ult i32 %i.cya, 32
  tail call void @llvm.assume(i1 %i.cyb)
  %.not.i601 = icmp eq i32 %i.cxr, %i.cxz
  br i1 %.not.i601, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.preheader.i602

.lr.ph.i28.preheader.i602:                        ; preds = %._crit_edge.i598
  %i.cyc = mul nuw nsw i32 %i.cya, 24
  %i.cyd = zext nneg i32 %i.cyc to i64            ; 2 uses
  %i.cye = add nsw i64 %i.cyd, -8                 ; 2 uses
  %i.cyf = udiv i64 %i.cye, 24                    ; 3 uses
  %i.cyg = add nuw nsw i64 %i.cyf, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %i.cye, 552
  br i1 %min.iters.check, label %.lr.ph.i28.i603.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i28.preheader.i602
  %i.cyh = shl nuw nsw i64 %i.cyf, 2
  %i.cyi = getelementptr i8, ptr %.026.lcssa.i599, i64 %i.cyh
  %scevgep = getelementptr i8, ptr %i.cyi, i64 4
  %i.cyj = mul nuw nsw i64 %i.cyf, 3
  %i.cyk = getelementptr i8, ptr %.025.lcssa.i600, i64 %i.cyj
  %scevgep1227 = getelementptr i8, ptr %i.cyk, i64 3
  %bound0 = icmp ult ptr %.026.lcssa.i599, %scevgep1227
  %bound1 = icmp ult ptr %.025.lcssa.i600, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i28.i603.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cyg, 2305843009213693944    ; 4 uses
  %i.cyl = mul i64 %n.vec, 24
  %i.cym = shl nuw nsw i64 %n.vec, 2
  %i.cyn = getelementptr i8, ptr %.026.lcssa.i599, i64 %i.cym
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 24, i64 48, i64 72, i64 96, i64 120, i64 144, i64 168>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.cyo = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.026.lcssa.i599, i64 %i.cyo
  %i.cyp = lshr exact <8 x i64> %vec.ind, splat (i64 3) ; 8 uses
  %i.cyq = extractelement <8 x i64> %i.cyp, i64 0
  %i.cyr = getelementptr inbounds nuw i8, ptr %.025.lcssa.i600, i64 %i.cyq
  %i.cys = extractelement <8 x i64> %i.cyp, i64 1
  %i.cyt = getelementptr inbounds nuw i8, ptr %.025.lcssa.i600, i64 %i.cys
  %i.cyu = extractelement <8 x i64> %i.cyp, i64 2
  %i.cyv = getelementptr inbounds nuw i8, ptr %.025.lcssa.i600, i64 %i.cyu
  %i.cyw = extractelement <8 x i64> %i.cyp, i64 3
  %i.cyx = getelementptr inbounds nuw i8, ptr %.025.lcssa.i600, i64 %i.cyw
  %i.cyy = extractelement <8 x i64> %i.cyp, i64 4
  %i.cyz = getelementptr inbounds nuw i8, ptr %.025.lcssa.i600, i64 %i.cyy
  %i.cza = extractelement <8 x i64> %i.cyp, i64 5
  %i.czb = getelementptr inbounds nuw i8, ptr %.025.lcssa.i600, i64 %i.cza
  %i.czc = extractelement <8 x i64> %i.cyp, i64 6
  %i.czd = getelementptr inbounds nuw i8, ptr %.025.lcssa.i600, i64 %i.czc
  %i.cze = extractelement <8 x i64> %i.cyp, i64 7
  %i.czf = getelementptr inbounds nuw i8, ptr %.025.lcssa.i600, i64 %i.cze
  %i.czg = load i24, ptr %i.cyr, align 1, !alias.scope !275
  %i.czh = load i24, ptr %i.cyt, align 1, !alias.scope !275
  %i.czi = load i24, ptr %i.cyv, align 1, !alias.scope !275
  %i.czj = load i24, ptr %i.cyx, align 1, !alias.scope !275
  %i.czk = load i24, ptr %i.cyz, align 1, !alias.scope !275
  %i.czl = load i24, ptr %i.czb, align 1, !alias.scope !275
  %i.czm = load i24, ptr %i.czd, align 1, !alias.scope !275
  %i.czn = load i24, ptr %i.czf, align 1, !alias.scope !275
  %i.czo = insertelement <8 x i24> poison, i24 %i.czg, i64 0
  %i.czp = insertelement <8 x i24> %i.czo, i24 %i.czh, i64 1
  %i.czq = insertelement <8 x i24> %i.czp, i24 %i.czi, i64 2
  %i.czr = insertelement <8 x i24> %i.czq, i24 %i.czj, i64 3
  %i.czs = insertelement <8 x i24> %i.czr, i24 %i.czk, i64 4
  %i.czt = insertelement <8 x i24> %i.czs, i24 %i.czl, i64 5
  %i.czu = insertelement <8 x i24> %i.czt, i24 %i.czm, i64 6
  %i.czv = insertelement <8 x i24> %i.czu, i24 %i.czn, i64 7
  %i.czw = zext <8 x i24> %i.czv to <8 x i32>
  store <8 x i32> %i.czw, ptr %next.gep, align 4, !tbaa !6, !alias.scope !276, !noalias !275
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 192)
  %i.czx = icmp eq i64 %index.next, %n.vec
  br i1 %i.czx, label %middle.block, label %vector.body, !llvm.loop !240

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cyg, %n.vec
  br i1 %cmp.n, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i603.preheader

.lr.ph.i28.i603.preheader:                        ; preds = %vector.memcheck, %.lr.ph.i28.preheader.i602, %middle.block
  %indvars.iv.i604.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i28.preheader.i602 ], [ %i.cyl, %middle.block ]
  %.024.i.i605.ph = phi ptr [ %.026.lcssa.i599, %vector.memcheck ], [ %.026.lcssa.i599, %.lr.ph.i28.preheader.i602 ], [ %i.cyn, %middle.block ]
  br label %.lr.ph.i28.i603

.lr.ph.i28.i603:                                  ; preds = %.lr.ph.i28.i603.preheader, %.lr.ph.i28.i603
  %indvars.iv.i604 = phi i64 [ %indvars.iv.next.i606, %.lr.ph.i28.i603 ], [ %indvars.iv.i604.ph, %.lr.ph.i28.i603.preheader ] ; 2 uses
  %.024.i.i605 = phi ptr [ %i.dab, %.lr.ph.i28.i603 ], [ %.024.i.i605.ph, %.lr.ph.i28.i603.preheader ] ; 2 uses
  %i.czy = lshr exact i64 %indvars.iv.i604, 3
  %indvars.iv.next.i606 = add nuw nsw i64 %indvars.iv.i604, 24 ; 2 uses
  %i.czz = getelementptr inbounds nuw i8, ptr %.025.lcssa.i600, i64 %i.czy
  %.0.copyload = load i24, ptr %i.czz, align 1
  %i.daa = zext i24 %.0.copyload to i32
  store i32 %i.daa, ptr %.024.i.i605, align 4, !tbaa !6
  %i.dab = getelementptr inbounds nuw i8, ptr %.024.i.i605, i64 4
  %i.dac = icmp samesign ult i64 %indvars.iv.next.i606, %i.cyd
  br i1 %i.dac, label %.lr.ph.i28.i603, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !241

.lr.ph.i608:                                      ; preds = %_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i, %.lr.ph.i608
  %.032.i609 = phi i32 [ %i.ddp, %.lr.ph.i608 ], [ 0, %_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i ]
  %.02531.i610 = phi ptr [ %i.ddn, %.lr.ph.i608 ], [ %i.cxu, %_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i ] ; 19 uses
  %.02630.i611 = phi ptr [ %i.ddo, %.lr.ph.i608 ], [ %i.cxw, %_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i ] ; 3 uses
  %i.dad = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 4
  %i.dae = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 8
  %i.daf = load <2 x i32>, ptr %.02531.i610, align 1 ; 2 uses
  %i.dag = load <2 x i32>, ptr %i.dad, align 1
  %i.dah = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.dag, <2 x i32> %i.daf, <2 x i32> <i32 8, i32 16>)
  %i.dai = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 12
  %i.daj = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 16
  %i.dak = load <2 x i32>, ptr %i.dai, align 1    ; 2 uses
  %i.dal = load <2 x i32>, ptr %i.daj, align 1
  %i.dam = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.dal, <2 x i32> %i.dak, <2 x i32> <i32 8, i32 16>)
  %i.dan = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 24
  %i.dao = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 28
  %i.dap = load <2 x i32>, ptr %i.dan, align 1    ; 2 uses
  %i.daq = load <2 x i32>, ptr %i.dao, align 1
  %i.dar = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.daq, <2 x i32> %i.dap, <2 x i32> <i32 8, i32 16>)
  %i.das = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 36
  %i.dat = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 40
  %i.dau = load <2 x i32>, ptr %i.das, align 1    ; 2 uses
  %i.dav = load <2 x i32>, ptr %i.dat, align 1
  %i.daw = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.dav, <2 x i32> %i.dau, <2 x i32> <i32 8, i32 16>)
  %i.dax = shufflevector <2 x i32> %i.daf, <2 x i32> %i.dah, <16 x i32> <i32 0, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.day = shufflevector <2 x i32> %i.dak, <2 x i32> poison, <16 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.daz = shufflevector <2 x i32> %i.dam, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dba = shufflevector <2 x i32> %i.dap, <2 x i32> poison, <16 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dbb = shufflevector <2 x i32> %i.dar, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dbc = shufflevector <2 x i32> %i.dau, <2 x i32> poison, <16 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dbd = shufflevector <2 x i32> %i.daw, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dbe = tail call <10 x i32> @llvm.masked.load.v10i32.p0(ptr nonnull align 1 %i.dae, <10 x i1> <i1 true, i1 false, i1 false, i1 true, i1 false, i1 false, i1 true, i1 false, i1 false, i1 true>, <10 x i32> poison)
  %i.dbf = shufflevector <10 x i32> %i.dbe, <10 x i32> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 9>
  %i.dbg = lshr <4 x i32> %i.dbf, splat (i32 8)
  %i.dbh = shufflevector <4 x i32> %i.dbg, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 4 uses
  %i.dbi = shufflevector <16 x i32> %i.dax, <16 x i32> %i.dbh, <16 x i32> <i32 0, i32 1, i32 2, i32 16, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dbj = shufflevector <16 x i32> %i.dbi, <16 x i32> %i.day, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dbk = shufflevector <16 x i32> %i.dbj, <16 x i32> %i.daz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dbl = shufflevector <16 x i32> %i.dbk, <16 x i32> %i.dbh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dbm = shufflevector <16 x i32> %i.dbl, <16 x i32> %i.dba, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dbn = shufflevector <16 x i32> %i.dbm, <16 x i32> %i.dbb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dbo = shufflevector <16 x i32> %i.dbn, <16 x i32> %i.dbh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 18, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dbp = shufflevector <16 x i32> %i.dbo, <16 x i32> %i.dbc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 poison, i32 poison, i32 poison>
  %i.dbq = shufflevector <16 x i32> %i.dbp, <16 x i32> %i.dbd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 16, i32 17, i32 poison>
  %i.dbr = shufflevector <16 x i32> %i.dbq, <16 x i32> %i.dbh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 19>
  %i.dbs = bitcast <16 x i32> %i.dbr to <8 x i64>
  %i.dbt = and <8 x i64> %i.dbs, splat (i64 72057589759737855)
  store <8 x i64> %i.dbt, ptr %.02630.i611, align 1, !tbaa !11
  %i.dbu = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 48
  %i.dbv = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 52
  %i.dbw = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 56
  %i.dbx = load <2 x i32>, ptr %i.dbu, align 1    ; 2 uses
  %i.dby = load <2 x i32>, ptr %i.dbv, align 1
  %i.dbz = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.dby, <2 x i32> %i.dbx, <2 x i32> <i32 8, i32 16>)
  %i.dca = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 60
  %i.dcb = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 64
  %i.dcc = load <2 x i32>, ptr %i.dca, align 1    ; 2 uses
  %i.dcd = load <2 x i32>, ptr %i.dcb, align 1
  %i.dce = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.dcd, <2 x i32> %i.dcc, <2 x i32> <i32 8, i32 16>)
  %i.dcf = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 72
  %i.dcg = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 76
  %i.dch = load <2 x i32>, ptr %i.dcf, align 1    ; 2 uses
  %i.dci = load <2 x i32>, ptr %i.dcg, align 1
  %i.dcj = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.dci, <2 x i32> %i.dch, <2 x i32> <i32 8, i32 16>)
  %i.dck = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 84
  %i.dcl = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 88
  %i.dcm = load <2 x i32>, ptr %i.dck, align 1    ; 2 uses
  %i.dcn = load <2 x i32>, ptr %i.dcl, align 1
  %i.dco = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.dcn, <2 x i32> %i.dcm, <2 x i32> <i32 8, i32 16>)
  %i.dcp = shufflevector <2 x i32> %i.dbx, <2 x i32> %i.dbz, <16 x i32> <i32 0, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dcq = shufflevector <2 x i32> %i.dcc, <2 x i32> poison, <16 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dcr = shufflevector <2 x i32> %i.dce, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dcs = shufflevector <2 x i32> %i.dch, <2 x i32> poison, <16 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dct = shufflevector <2 x i32> %i.dcj, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dcu = shufflevector <2 x i32> %i.dcm, <2 x i32> poison, <16 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dcv = shufflevector <2 x i32> %i.dco, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dcw = tail call <10 x i32> @llvm.masked.load.v10i32.p0(ptr nonnull align 1 %i.dbw, <10 x i1> <i1 true, i1 false, i1 false, i1 true, i1 false, i1 false, i1 true, i1 false, i1 false, i1 true>, <10 x i32> poison)
  %i.dcx = shufflevector <10 x i32> %i.dcw, <10 x i32> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 9>
  %i.dcy = lshr <4 x i32> %i.dcx, splat (i32 8)
  %i.dcz = shufflevector <4 x i32> %i.dcy, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 4 uses
  %i.dda = shufflevector <16 x i32> %i.dcp, <16 x i32> %i.dcz, <16 x i32> <i32 0, i32 1, i32 2, i32 16, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ddb = shufflevector <16 x i32> %i.dda, <16 x i32> %i.dcq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ddc = shufflevector <16 x i32> %i.ddb, <16 x i32> %i.dcr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ddd = shufflevector <16 x i32> %i.ddc, <16 x i32> %i.dcz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dde = shufflevector <16 x i32> %i.ddd, <16 x i32> %i.dcs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ddf = shufflevector <16 x i32> %i.dde, <16 x i32> %i.dct, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ddg = shufflevector <16 x i32> %i.ddf, <16 x i32> %i.dcz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 18, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ddh = shufflevector <16 x i32> %i.ddg, <16 x i32> %i.dcu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 poison, i32 poison, i32 poison>
  %i.ddi = shufflevector <16 x i32> %i.ddh, <16 x i32> %i.dcv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 16, i32 17, i32 poison>
  %i.ddj = shufflevector <16 x i32> %i.ddi, <16 x i32> %i.dcz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 19>
  %i.ddk = getelementptr inbounds nuw i8, ptr %.02630.i611, i64 64
  %i.ddl = bitcast <16 x i32> %i.ddj to <8 x i64>
  %i.ddm = and <8 x i64> %i.ddl, splat (i64 72057589759737855)
  store <8 x i64> %i.ddm, ptr %i.ddk, align 1, !tbaa !11
  %i.ddn = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 96 ; 2 uses
  %i.ddo = getelementptr inbounds nuw i8, ptr %.02630.i611, i64 128 ; 2 uses
  %i.ddp = add nuw nsw i32 %.032.i609, 1          ; 2 uses
  %exitcond.not.i614 = icmp eq i32 %i.ddp, %i.cxx
  br i1 %exitcond.not.i614, label %._crit_edge.i598, label %.lr.ph.i608, !llvm.loop !242

bb.ay:                                            ; preds = %bb.a
  %i.ddq = mul nsw i32 %2, 25
  %i.ddr = add nsw i32 %4, %i.ddq
  %i.dds = icmp sgt i32 %2, 0
  br i1 %i.dds, label %.lr.ph.i.i635, label %_ZN5arrow8internal12unpack_exactILi25ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i635:                                    ; preds = %bb.ay, %bb.az
  %.026.i.i636 = phi ptr [ %i.dei, %bb.az ], [ %1, %bb.ay ] ; 2 uses
  %.02325.i.i637 = phi i32 [ %i.ddv, %bb.az ], [ %4, %bb.ay ] ; 5 uses
  %i.ddt = srem i32 %.02325.i.i637, 8             ; 2 uses
  %i.ddu = sdiv i32 %.02325.i.i637, 8             ; 2 uses
  %.not.i.i638 = icmp eq i32 %i.ddt, 0
  br i1 %.not.i.i638, label %_ZN5arrow8internal12unpack_exactILi25ELb1EjEEiPKhPT1_ii.exit.i, label %bb.az

bb.az:                                            ; preds = %.lr.ph.i.i635
  %i.ddv = add nsw i32 %.02325.i.i637, 25         ; 3 uses
  %i.ddw = add nsw i32 %.02325.i.i637, 24
  %i.ddx = sdiv i32 %i.ddw, 8
  %i.ddy = sub nsw i32 %i.ddx, %i.ddu             ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN5arrow8internal12unpack_widthILi3ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEmEEvPKhPT1_ii:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.u = icmp slt i32 %i.h, %i.d
  br i1 %i.u, label %.lr.ph.i, label %_ZN5arrow8internal12unpack_exactILi3ELb1EmEEiPKhPT1_ii.exit, !llvm.loop !297

_ZN5arrow8internal12unpack_exactILi3ELb1EmEEiPKhPT1_ii.exit: ; preds = %.lr.ph.i, %bb.b, %bb.a
  %.023.lcssa.i = phi i32 [ %3, %bb.a ], [ %.02325.i, %.lr.ph.i ], [ %i.h, %bb.b ]
  %i.v = sub nsw i32 %.023.lcssa.i, %3
  %i.w = sdiv i32 %i.v, 3                         ; 3 uses
  %i.x = mul nsw i32 %i.w, 3
  %i.y = add nsw i32 %i.x, %3
  %i.z = sub nsw i32 %2, %i.w                     ; 4 uses
  %i.aa = sdiv i32 %i.y, 8
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds i8, ptr %0, i64 %i.ab ; 2 uses
  %i.ad = sext i32 %i.w to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ad ; 2 uses
  %i.af = sdiv i32 %i.z, 64                       ; 2 uses
  %i.ag = icmp sgt i32 %i.z, 63
  br i1 %i.ag, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZN5arrow8internal12unpack_exactILi3ELb1EmEEiPKhPT1_ii.exit
  %.026.lcssa = phi ptr [ %i.ae, %_ZN5arrow8internal12unpack_exactILi3ELb1EmEEiPKhPT1_ii.exit ], [ %i.df, %.lr.ph ]
  %.025.lcssa = phi ptr [ %i.ac, %_ZN5arrow8internal12unpack_exactILi3ELb1EmEEiPKhPT1_ii.exit ], [ %i.de, %.lr.ph ]
  %i.ah = shl nsw i32 %i.af, 6                    ; 2 uses
  %i.ai = sub nsw i32 %i.z, %i.ah                 ; 2 uses
  %i.aj = icmp samesign ult i32 %i.ai, 64
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = mul nuw nsw i32 %i.ai, 3
  %.not = icmp eq i32 %i.z, %i.ah
  br i1 %.not, label %_ZN5arrow8internal12unpack_exactILi3ELb0EmEEiPKhPT1_ii.exit, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %._crit_edge, %.lr.ph.i28
  %.024.i = phi ptr [ %i.az, %.lr.ph.i28 ], [ %.026.lcssa, %._crit_edge ] ; 2 uses
  %.02223.i = phi i32 [ %i.am, %.lr.ph.i28 ], [ 0, %._crit_edge ] ; 4 uses
  %i.al = lshr i32 %.02223.i, 3                   ; 2 uses
  %i.am = add nuw nsw i32 %.02223.i, 3            ; 2 uses
  %i.an = add nuw nsw i32 %.02223.i, 2
  %i.ao = lshr i32 %i.an, 3
  %i.ap = sub nsw i32 %i.ao, %i.al                ; 2 uses
  %i.aq = add nsw i32 %i.ap, 1
  %i.ar = icmp slt i32 %i.ap, 2
  tail call void @llvm.assume(i1 %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !13
  %i.as = zext nneg i32 %i.al to i64
  %i.at = getelementptr inbounds nuw i8, ptr %.025.lcssa, i64 %i.as
  %i.au = sext i32 %i.aq to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr align 1 %i.at, i64 %i.au, i1 false)
  %.0..0..0..0..0..0..i29 = load i64, ptr %i.a, align 8, !tbaa !13
  %i.av = and i32 %.02223.i, 7
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = lshr i64 %.0..0..0..0..0..0..i29, %i.aw
  %i.ay = and i64 %i.ax, 7
  store i64 %i.ay, ptr %.024.i, align 8, !tbaa !13
  %i.az = getelementptr inbounds nuw i8, ptr %.024.i, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ba = icmp samesign ult i32 %i.am, %i.ak
  br i1 %i.ba, label %.lr.ph.i28, label %_ZN5arrow8internal12unpack_exactILi3ELb0EmEEiPKhPT1_ii.exit, !llvm.loop !298

_ZN5arrow8internal12unpack_exactILi3ELb0EmEEiPKhPT1_ii.exit: ; preds = %.lr.ph.i28, %._crit_edge
  ret void

.lr.ph:                                           ; preds = %_ZN5arrow8internal12unpack_exactILi3ELb1EmEEiPKhPT1_ii.exit, %.lr.ph
  %.032 = phi i32 [ %i.dg, %.lr.ph ], [ 0, %_ZN5arrow8internal12unpack_exactILi3ELb1EmEEiPKhPT1_ii.exit ]
  %.02531 = phi ptr [ %i.de, %.lr.ph ], [ %i.ac, %_ZN5arrow8internal12unpack_exactILi3ELb1EmEEiPKhPT1_ii.exit ] ; 9 uses
  %.02630 = phi ptr [ %i.df, %.lr.ph ], [ %i.ae, %_ZN5arrow8internal12unpack_exactILi3ELb1EmEEiPKhPT1_ii.exit ] ; 9 uses
  %i.bb = load i64, ptr %.02531, align 1
  %i.bc = insertelement <8 x i64> poison, i64 %i.bb, i64 0
  %i.bd = shufflevector <8 x i64> %i.bc, <8 x i64> poison, <8 x i32> zeroinitializer
  %i.be = lshr <8 x i64> %i.bd, <i64 0, i64 3, i64 6, i64 9, i64 12, i64 15, i64 18, i64 21>
  %i.bf = and <8 x i64> %i.be, splat (i64 7)
  store <8 x i64> %i.bf, ptr %.02630, align 1, !tbaa !11
  %i.bg = load i64, ptr %.02531, align 1
  %i.bh = insertelement <8 x i64> poison, i64 %i.bg, i64 0
  %i.bi = shufflevector <8 x i64> %i.bh, <8 x i64> poison, <8 x i32> zeroinitializer
  %i.bj = lshr <8 x i64> %i.bi, <i64 24, i64 27, i64 30, i64 33, i64 36, i64 39, i64 42, i64 45>
  %i.bk = getelementptr inbounds nuw i8, ptr %.02630, i64 64
  %i.bl = and <8 x i64> %i.bj, splat (i64 7)
  store <8 x i64> %i.bl, ptr %i.bk, align 1, !tbaa !11
  %i.bm = getelementptr inbounds nuw i8, ptr %.02531, i64 8 ; 3 uses
  %i.bn = load <2 x i64>, ptr %.02531, align 1
  %i.bo = load i64, ptr %i.bm, align 1
  %i.bp = load i64, ptr %.02531, align 1
  %i.bq = tail call i64 @llvm.fshl.i64(i64 %i.bo, i64 %i.bp, i64 1)
  %i.br = shufflevector <2 x i64> %i.bn, <2 x i64> poison, <3 x i32> <i32 0, i32 poison, i32 1>
  %i.bs = insertelement <3 x i64> %i.br, i64 %i.bq, i64 1
  %i.bt = shufflevector <3 x i64> %i.bs, <3 x i64> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 2>
  %i.bu = lshr <8 x i64> %i.bt, <i64 48, i64 51, i64 54, i64 57, i64 60, i64 0, i64 2, i64 5>
  %i.bv = getelementptr inbounds nuw i8, ptr %.02630, i64 128
  %i.bw = and <8 x i64> %i.bu, splat (i64 7)
  store <8 x i64> %i.bw, ptr %i.bv, align 1, !tbaa !11
  %i.bx = load <2 x i64>, ptr %.02531, align 1
  %i.by = shufflevector <2 x i64> %i.bx, <2 x i64> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.bz = lshr <8 x i64> %i.by, <i64 8, i64 11, i64 14, i64 17, i64 20, i64 23, i64 26, i64 29>
  %i.ca = getelementptr inbounds nuw i8, ptr %.02630, i64 192
  %i.cb = and <8 x i64> %i.bz, splat (i64 7)
  store <8 x i64> %i.cb, ptr %i.ca, align 1, !tbaa !11
  %i.cc = load <2 x i64>, ptr %.02531, align 1
  %i.cd = shufflevector <2 x i64> %i.cc, <2 x i64> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ce = lshr <8 x i64> %i.cd, <i64 32, i64 35, i64 38, i64 41, i64 44, i64 47, i64 50, i64 53>
  %i.cf = getelementptr inbounds nuw i8, ptr %.02630, i64 256
  %i.cg = and <8 x i64> %i.ce, splat (i64 7)
  store <8 x i64> %i.cg, ptr %i.cf, align 1, !tbaa !11
  %i.ch = getelementptr inbounds nuw i8, ptr %.02531, i64 16 ; 3 uses
  %i.ci = load <2 x i64>, ptr %i.bm, align 1
  %i.cj = load i64, ptr %i.ch, align 1
  %i.ck = load i64, ptr %i.bm, align 1
  %i.cl = tail call i64 @llvm.fshl.i64(i64 %i.cj, i64 %i.ck, i64 2)
  %i.cm = shufflevector <2 x i64> %i.ci, <2 x i64> poison, <3 x i32> <i32 0, i32 poison, i32 1>
  %i.cn = insertelement <3 x i64> %i.cm, i64 %i.cl, i64 1
  %i.co = shufflevector <3 x i64> %i.cn, <3 x i64> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.cp = lshr <8 x i64> %i.co, <i64 56, i64 59, i64 0, i64 1, i64 4, i64 7, i64 10, i64 13>
  %i.cq = getelementptr inbounds nuw i8, ptr %.02630, i64 320
  %i.cr = and <8 x i64> %i.cp, splat (i64 7)
  store <8 x i64> %i.cr, ptr %i.cq, align 1, !tbaa !11
  %i.cs = load i64, ptr %i.ch, align 1
  %i.ct = insertelement <8 x i64> poison, i64 %i.cs, i64 0
  %i.cu = shufflevector <8 x i64> %i.ct, <8 x i64> poison, <8 x i32> zeroinitializer
  %i.cv = lshr <8 x i64> %i.cu, <i64 16, i64 19, i64 22, i64 25, i64 28, i64 31, i64 34, i64 37>
  %i.cw = getelementptr inbounds nuw i8, ptr %.02630, i64 384
  %i.cx = and <8 x i64> %i.cv, splat (i64 7)
  store <8 x i64> %i.cx, ptr %i.cw, align 1, !tbaa !11
  %i.cy = load i64, ptr %i.ch, align 1
  %i.cz = insertelement <8 x i64> poison, i64 %i.cy, i64 0
  %i.da = shufflevector <8 x i64> %i.cz, <8 x i64> poison, <8 x i32> zeroinitializer
  %i.db = lshr <8 x i64> %i.da, <i64 40, i64 43, i64 46, i64 49, i64 52, i64 55, i64 58, i64 61>
  %i.dc = getelementptr inbounds nuw i8, ptr %.02630, i64 448
  %i.dd = and <8 x i64> %i.db, splat (i64 7)
  store <8 x i64> %i.dd, ptr %i.dc, align 1, !tbaa !11
  %i.de = getelementptr inbounds nuw i8, ptr %.02531, i64 24 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.02630, i64 512 ; 2 uses
  %i.dg = add nuw nsw i32 %.032, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.dg, %i.af
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !299
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_ZN5arrow8internal12unpack_widthILi4ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEmEEvPKhPT1_ii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = shl nsw i32 %2, 2
  %i.c = add nsw i32 %i.b, %3
  %i.d = icmp sgt i32 %2, 0
  br i1 %i.d, label %.lr.ph.i, label %_ZN5arrow8internal12unpack_exactILi4ELb1EmEEiPKhPT1_ii.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.026.i = phi ptr [ %i.s, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.02325.i = phi i32 [ %i.g, %bb.b ], [ %3, %bb.a ] ; 5 uses
  %i.e = srem i32 %.02325.i, 8                    ; 2 uses
  %i.f = sdiv i32 %.02325.i, 8                    ; 2 uses
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN5arrow8internal12unpack_exactILi4ELb1EmEEiPKhPT1_ii.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = add nsw i32 %.02325.i, 4                 ; 3 uses
  %i.h = add nsw i32 %.02325.i, 3
  %i.i = sdiv i32 %i.h, 8
  %i.j = sub nsw i32 %i.i, %i.f                   ; 2 uses
  %i.k = add nsw i32 %i.j, 1
  %i.l = icmp slt i32 %i.j, 2
  tail call void @llvm.assume(i1 %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !13
  %i.m = sext i32 %i.f to i64
  %i.n = getelementptr inbounds i8, ptr %0, i64 %i.m
  %i.o = sext i32 %i.k to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr align 1 %i.n, i64 %i.o, i1 false)
  %.0..0..0..0..0..0..i = load i64, ptr %i.a, align 8, !tbaa !13
  %i.p = zext nneg i32 %i.e to i64
  %i.q = lshr i64 %.0..0..0..0..0..0..i, %i.p
  %i.r = and i64 %i.q, 15
  store i64 %i.r, ptr %.026.i, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %.026.i, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.t = icmp slt i32 %i.g, %i.c
  br i1 %i.t, label %.lr.ph.i, label %_ZN5arrow8internal12unpack_exactILi4ELb1EmEEiPKhPT1_ii.exit, !llvm.loop !300

_ZN5arrow8internal12unpack_exactILi4ELb1EmEEiPKhPT1_ii.exit: ; preds = %.lr.ph.i, %bb.b, %bb.a
  %.023.lcssa.i = phi i32 [ %3, %bb.a ], [ %.02325.i, %.lr.ph.i ], [ %i.g, %bb.b ]
  %i.u = sub nsw i32 %.023.lcssa.i, %3
  %i.v = sdiv i32 %i.u, 4                         ; 3 uses
  %i.w = shl nsw i32 %i.v, 2
  %i.x = add nsw i32 %i.w, %3
  %i.y = sub nsw i32 %2, %i.v                     ; 4 uses
  %i.z = sdiv i32 %i.x, 8
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds i8, ptr %0, i64 %i.aa ; 2 uses
  %i.ac = sext i32 %i.v to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ac ; 2 uses
  %i.ae = sdiv i32 %i.y, 64                       ; 2 uses
  %i.af = icmp sgt i32 %i.y, 63
  br i1 %i.af, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZN5arrow8internal12unpack_exactILi4ELb1EmEEiPKhPT1_ii.exit
  %.026.lcssa = phi ptr [ %i.ad, %_ZN5arrow8internal12unpack_exactILi4ELb1EmEEiPKhPT1_ii.exit ], [ %i.ee, %.lr.ph ] ; 6 uses
  %.025.lcssa = phi ptr [ %i.ab, %_ZN5arrow8internal12unpack_exactILi4ELb1EmEEiPKhPT1_ii.exit ], [ %i.ed, %.lr.ph ] ; 7 uses
  %i.ag = shl nsw i32 %i.ae, 6                    ; 2 uses
  %i.ah = sub nsw i32 %i.y, %i.ag                 ; 2 uses
  %i.ai = icmp samesign ult i32 %i.ah, 64
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = shl nuw nsw i32 %i.ah, 2                ; 2 uses
  %.not = icmp eq i32 %i.y, %i.ag
  br i1 %.not, label %_ZN5arrow8internal12unpack_exactILi4ELb0EmEEiPKhPT1_ii.exit, label %.lr.ph.i28.preheader

.lr.ph.i28.preheader:                             ; preds = %._crit_edge
  %i.ak = tail call i32 @llvm.usub.sat.i32(i32 %i.aj, i32 4) ; 2 uses
  %4 = or disjoint i32 %i.ak, 3
  %5 = zext nneg i32 %4 to i64                    ; 3 uses
  %6 = lshr i64 %5, 2
  %7 = add nuw nsw i64 %6, 1                      ; 2 uses
  %min.iters.check = icmp samesign ult i32 %i.ak, 60
  br i1 %min.iters.check, label %.lr.ph.i28.preheader40, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i28.preheader
  %i.al = shl nuw nsw i64 %5, 1
  %i.am = and i64 %i.al, 4294967288
  %i.an = getelementptr i8, ptr %.026.lcssa, i64 %i.am
  %scevgep = getelementptr i8, ptr %i.an, i64 8
  %i.ao = lshr i64 %5, 3
  %i.ap = getelementptr i8, ptr %.025.lcssa, i64 %i.ao
  %scevgep38 = getelementptr i8, ptr %i.ap, i64 1
  %bound0 = icmp ult ptr %.026.lcssa, %scevgep38
  %bound1 = icmp ult ptr %.025.lcssa, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i28.preheader40, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %7, 1073741820                 ; 4 uses
  %i.aq = shl nuw nsw i64 %n.vec, 3
  %i.ar = getelementptr i8, ptr %.026.lcssa, i64 %i.aq
  %i.as = trunc nuw nsw i64 %n.vec to i32
  %i.at = shl nuw i32 %i.as, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 4, i32 8, i32 12>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.au = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.026.lcssa, i64 %i.au
  %i.av = lshr <4 x i32> %vec.ind, splat (i32 3)
  %i.aw = zext nneg <4 x i32> %i.av to <4 x i64>  ; 4 uses
  %i.ax = extractelement <4 x i64> %i.aw, i64 0
  %i.ay = getelementptr inbounds nuw i8, ptr %.025.lcssa, i64 %i.ax
  %i.az = extractelement <4 x i64> %i.aw, i64 1
  %i.ba = getelementptr inbounds nuw i8, ptr %.025.lcssa, i64 %i.az
  %i.bb = extractelement <4 x i64> %i.aw, i64 2
  %i.bc = getelementptr inbounds nuw i8, ptr %.025.lcssa, i64 %i.bb
  %i.bd = extractelement <4 x i64> %i.aw, i64 3
  %i.be = getelementptr inbounds nuw i8, ptr %.025.lcssa, i64 %i.bd
  %i.bf = load i8, ptr %i.ay, align 1, !alias.scope !307
  %i.bg = load i8, ptr %i.ba, align 1, !alias.scope !307
  %i.bh = load i8, ptr %i.bc, align 1, !alias.scope !307
  %i.bi = load i8, ptr %i.be, align 1, !alias.scope !307
  %i.bj = insertelement <4 x i8> poison, i8 %i.bf, i64 0
  %i.bk = insertelement <4 x i8> %i.bj, i8 %i.bg, i64 1
  %i.bl = insertelement <4 x i8> %i.bk, i8 %i.bh, i64 2
  %i.bm = insertelement <4 x i8> %i.bl, i8 %i.bi, i64 3
  %i.bn = zext <4 x i8> %i.bm to <4 x i32>
  %i.bo = and <4 x i32> %vec.ind, splat (i32 4)
  %i.bp = lshr <4 x i32> %i.bn, %i.bo
  %i.bq = and <4 x i32> %i.bp, splat (i32 15)
  %i.br = zext nneg <4 x i32> %i.bq to <4 x i64>
  store <4 x i64> %i.br, ptr %next.gep, align 8, !tbaa !13, !alias.scope !308, !noalias !307
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 16)
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !304

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %7, %n.vec
  br i1 %cmp.n, label %_ZN5arrow8internal12unpack_exactILi4ELb0EmEEiPKhPT1_ii.exit, label %.lr.ph.i28.preheader40

.lr.ph.i28.preheader40:                           ; preds = %vector.memcheck, %.lr.ph.i28.preheader, %middle.block
  %.024.i.ph = phi ptr [ %.026.lcssa, %vector.memcheck ], [ %.026.lcssa, %.lr.ph.i28.preheader ], [ %i.ar, %middle.block ]
  %.02223.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i28.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %.lr.ph.i28.preheader40, %.lr.ph.i28
  %.024.i = phi ptr [ %i.cd, %.lr.ph.i28 ], [ %.024.i.ph, %.lr.ph.i28.preheader40 ] ; 2 uses
  %.02223.i = phi i32 [ %i.bu, %.lr.ph.i28 ], [ %.02223.i.ph, %.lr.ph.i28.preheader40 ] ; 3 uses
  %i.bt = lshr i32 %.02223.i, 3
  %i.bu = add nuw nsw i32 %.02223.i, 4            ; 2 uses
  %i.bv = zext nneg i32 %i.bt to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %.025.lcssa, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = zext i8 %i.bx to i32
  %i.bz = and i32 %.02223.i, 4
  %i.ca = lshr i32 %i.by, %i.bz
  %i.cb = and i32 %i.ca, 15
  %i.cc = zext nneg i32 %i.cb to i64
  store i64 %i.cc, ptr %.024.i, align 8, !tbaa !13
  %i.cd = getelementptr inbounds nuw i8, ptr %.024.i, i64 8
  %i.ce = icmp samesign ult i32 %i.bu, %i.aj
  br i1 %i.ce, label %.lr.ph.i28, label %_ZN5arrow8internal12unpack_exactILi4ELb0EmEEiPKhPT1_ii.exit, !llvm.loop !305

_ZN5arrow8internal12unpack_exactILi4ELb0EmEEiPKhPT1_ii.exit: ; preds = %.lr.ph.i28, %middle.block, %._crit_edge
  ret void

.lr.ph:                                           ; preds = %_ZN5arrow8internal12unpack_exactILi4ELb1EmEEiPKhPT1_ii.exit, %.lr.ph
  %.032 = phi i32 [ %i.ef, %.lr.ph ], [ 0, %_ZN5arrow8internal12unpack_exactILi4ELb1EmEEiPKhPT1_ii.exit ]
  %.02531 = phi ptr [ %i.ed, %.lr.ph ], [ %i.ab, %_ZN5arrow8internal12unpack_exactILi4ELb1EmEEiPKhPT1_ii.exit ] ; 6 uses
  %.02630 = phi ptr [ %i.ee, %.lr.ph ], [ %i.ad, %_ZN5arrow8internal12unpack_exactILi4ELb1EmEEiPKhPT1_ii.exit ] ; 9 uses
  %i.cf = load i64, ptr %.02531, align 1
  %i.cg = insertelement <8 x i64> poison, i64 %i.cf, i64 0
  %i.ch = shufflevector <8 x i64> %i.cg, <8 x i64> poison, <8 x i32> zeroinitializer
  %i.ci = lshr <8 x i64> %i.ch, <i64 0, i64 4, i64 8, i64 12, i64 16, i64 20, i64 24, i64 28>
  %i.cj = and <8 x i64> %i.ci, splat (i64 15)
  store <8 x i64> %i.cj, ptr %.02630, align 1, !tbaa !11
  %i.ck = load i64, ptr %.02531, align 1
  %i.cl = insertelement <8 x i64> poison, i64 %i.ck, i64 0
  %i.cm = shufflevector <8 x i64> %i.cl, <8 x i64> poison, <8 x i32> zeroinitializer
  %i.cn = lshr <8 x i64> %i.cm, <i64 32, i64 36, i64 40, i64 44, i64 48, i64 52, i64 56, i64 60>
  %i.co = getelementptr inbounds nuw i8, ptr %.02630, i64 64
  %i.cp = and <8 x i64> %i.cn, splat (i64 15)
  store <8 x i64> %i.cp, ptr %i.co, align 1, !tbaa !11
  %i.cq = getelementptr inbounds nuw i8, ptr %.02531, i64 8 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 1
  %i.cs = insertelement <8 x i64> poison, i64 %i.cr, i64 0
  %i.ct = shufflevector <8 x i64> %i.cs, <8 x i64> poison, <8 x i32> zeroinitializer
  %i.cu = lshr <8 x i64> %i.ct, <i64 0, i64 4, i64 8, i64 12, i64 16, i64 20, i64 24, i64 28>
  %i.cv = getelementptr inbounds nuw i8, ptr %.02630, i64 128
  %i.cw = and <8 x i64> %i.cu, splat (i64 15)
  store <8 x i64> %i.cw, ptr %i.cv, align 1, !tbaa !11
  %i.cx = load i64, ptr %i.cq, align 1
  %i.cy = insertelement <8 x i64> poison, i64 %i.cx, i64 0
  %i.cz = shufflevector <8 x i64> %i.cy, <8 x i64> poison, <8 x i32> zeroinitializer
  %i.da = lshr <8 x i64> %i.cz, <i64 32, i64 36, i64 40, i64 44, i64 48, i64 52, i64 56, i64 60>
  %i.db = getelementptr inbounds nuw i8, ptr %.02630, i64 192
  %i.dc = and <8 x i64> %i.da, splat (i64 15)
  store <8 x i64> %i.dc, ptr %i.db, align 1, !tbaa !11
  %i.dd = getelementptr inbounds nuw i8, ptr %.02531, i64 16 ; 2 uses
  %i.de = load i64, ptr %i.dd, align 1
  %i.df = insertelement <8 x i64> poison, i64 %i.de, i64 0
  %i.dg = shufflevector <8 x i64> %i.df, <8 x i64> poison, <8 x i32> zeroinitializer
  %i.dh = lshr <8 x i64> %i.dg, <i64 0, i64 4, i64 8, i64 12, i64 16, i64 20, i64 24, i64 28>
  %i.di = getelementptr inbounds nuw i8, ptr %.02630, i64 256
  %i.dj = and <8 x i64> %i.dh, splat (i64 15)
  store <8 x i64> %i.dj, ptr %i.di, align 1, !tbaa !11
  %i.dk = load i64, ptr %i.dd, align 1
  %i.dl = insertelement <8 x i64> poison, i64 %i.dk, i64 0
  %i.dm = shufflevector <8 x i64> %i.dl, <8 x i64> poison, <8 x i32> zeroinitializer
  %i.dn = lshr <8 x i64> %i.dm, <i64 32, i64 36, i64 40, i64 44, i64 48, i64 52, i64 56, i64 60>
  %i.do = getelementptr inbounds nuw i8, ptr %.02630, i64 320
  %i.dp = and <8 x i64> %i.dn, splat (i64 15)
  store <8 x i64> %i.dp, ptr %i.do, align 1, !tbaa !11
  %i.dq = getelementptr inbounds nuw i8, ptr %.02531, i64 24 ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 1
  %i.ds = insertelement <8 x i64> poison, i64 %i.dr, i64 0
  %i.dt = shufflevector <8 x i64> %i.ds, <8 x i64> poison, <8 x i32> zeroinitializer
  %i.du = lshr <8 x i64> %i.dt, <i64 0, i64 4, i64 8, i64 12, i64 16, i64 20, i64 24, i64 28>
  %i.dv = getelementptr inbounds nuw i8, ptr %.02630, i64 384
  %i.dw = and <8 x i64> %i.du, splat (i64 15)
  store <8 x i64> %i.dw, ptr %i.dv, align 1, !tbaa !11
  %i.dx = load i64, ptr %i.dq, align 1
  %i.dy = insertelement <8 x i64> poison, i64 %i.dx, i64 0
  %i.dz = shufflevector <8 x i64> %i.dy, <8 x i64> poison, <8 x i32> zeroinitializer
  %i.ea = lshr <8 x i64> %i.dz, <i64 32, i64 36, i64 40, i64 44, i64 48, i64 52, i64 56, i64 60>
  %i.eb = getelementptr inbounds nuw i8, ptr %.02630, i64 448
  %i.ec = and <8 x i64> %i.ea, splat (i64 15)
  store <8 x i64> %i.ec, ptr %i.eb, align 1, !tbaa !11
  %i.ed = getelementptr inbounds nuw i8, ptr %.02531, i64 32 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.02630, i64 512 ; 2 uses
  %i.ef = add nuw nsw i32 %.032, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ef, %i.ae
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !306
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_ZN5arrow8internal12unpack_widthILi5ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEmEEvPKhPT1_ii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = mul nsw i32 %2, 5
  %i.d = add nsw i32 %i.c, %3
  %i.e = icmp sgt i32 %2, 0
  br i1 %i.e, label %.lr.ph.i, label %_ZN5arrow8internal12unpack_exactILi5ELb1EmEEiPKhPT1_ii.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.026.i = phi ptr [ %i.t, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.02325.i = phi i32 [ %i.h, %bb.b ], [ %3, %bb.a ] ; 5 uses
  %i.f = srem i32 %.02325.i, 8                    ; 2 uses
  %i.g = sdiv i32 %.02325.i, 8                    ; 2 uses
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN5arrow8internal12unpack_exactILi5ELb1EmEEiPKhPT1_ii.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = add nsw i32 %.02325.i, 5                 ; 3 uses
  %i.i = add nsw i32 %.02325.i, 4
  %i.j = sdiv i32 %i.i, 8
  %i.k = sub nsw i32 %i.j, %i.g                   ; 2 uses
  %i.l = add nsw i32 %i.k, 1
  %i.m = icmp slt i32 %i.k, 2
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8, !tbaa !13
  %i.n = sext i32 %i.g to i64
  %i.o = getelementptr inbounds i8, ptr %0, i64 %i.n
  %i.p = sext i32 %i.l to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.b, ptr align 1 %i.o, i64 %i.p, i1 false)
  %.0..0..0..0..0..0..i = load i64, ptr %i.b, align 8, !tbaa !13
  %i.q = zext nneg i32 %i.f to i64
  %i.r = lshr i64 %.0..0..0..0..0..0..i, %i.q
  %i.s = and i64 %i.r, 31
  store i64 %i.s, ptr %.026.i, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %.026.i, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.u = icmp slt i32 %i.h, %i.d
  br i1 %i.u, label %.lr.ph.i, label %_ZN5arrow8internal12unpack_exactILi5ELb1EmEEiPKhPT1_ii.exit, !llvm.loop !309

_ZN5arrow8internal12unpack_exactILi5ELb1EmEEiPKhPT1_ii.exit: ; preds = %.lr.ph.i, %bb.b, %bb.a
  %.023.lcssa.i = phi i32 [ %3, %bb.a ], [ %.02325.i, %.lr.ph.i ], [ %i.h, %bb.b ]
  %i.v = sub nsw i32 %.023.lcssa.i, %3
  %i.w = sdiv i32 %i.v, 5                         ; 3 uses
  %i.x = mul nsw i32 %i.w, 5
  %i.y = add nsw i32 %i.x, %3
  %i.z = sub nsw i32 %2, %i.w                     ; 4 uses
  %i.aa = sdiv i32 %i.y, 8
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds i8, ptr %0, i64 %i.ab ; 2 uses
  %i.ad = sext i32 %i.w to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ad ; 2 uses
  %i.af = sdiv i32 %i.z, 64                       ; 2 uses
  %i.ag = icmp sgt i32 %i.z, 63
  br i1 %i.ag, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZN5arrow8internal12unpack_exactILi5ELb1EmEEiPKhPT1_ii.exit
  %.026.lcssa = phi ptr [ %i.ae, %_ZN5arrow8internal12unpack_exactILi5ELb1EmEEiPKhPT1_ii.exit ], [ %i.dq, %.lr.ph ]
  %.025.lcssa = phi ptr [ %i.ac, %_ZN5arrow8internal12unpack_exactILi5ELb1EmEEiPKhPT1_ii.exit ], [ %i.dp, %.lr.ph ]
  %i.ah = shl nsw i32 %i.af, 6                    ; 2 uses
  %i.ai = sub nsw i32 %i.z, %i.ah                 ; 2 uses
  %i.aj = icmp samesign ult i32 %i.ai, 64
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = mul nuw nsw i32 %i.ai, 5
  %.not = icmp eq i32 %i.z, %i.ah
  br i1 %.not, label %_ZN5arrow8internal12unpack_exactILi5ELb0EmEEiPKhPT1_ii.exit, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %._crit_edge, %.lr.ph.i28
  %.024.i = phi ptr [ %i.az, %.lr.ph.i28 ], [ %.026.lcssa, %._crit_edge ] ; 2 uses
  %.02223.i = phi i32 [ %i.am, %.lr.ph.i28 ], [ 0, %._crit_edge ] ; 4 uses
  %i.al = lshr i32 %.02223.i, 3                   ; 2 uses
  %i.am = add nuw nsw i32 %.02223.i, 5            ; 2 uses
  %i.an = add nuw nsw i32 %.02223.i, 4
  %i.ao = lshr i32 %i.an, 3
  %i.ap = sub nsw i32 %i.ao, %i.al                ; 2 uses
  %i.aq = add nsw i32 %i.ap, 1
  %i.ar = icmp slt i32 %i.ap, 2
  tail call void @llvm.assume(i1 %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !13
  %i.as = zext nneg i32 %i.al to i64
  %i.at = getelementptr inbounds nuw i8, ptr %.025.lcssa, i64 %i.as
  %i.au = sext i32 %i.aq to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr align 1 %i.at, i64 %i.au, i1 false)
  %.0..0..0..0..0..0..i29 = load i64, ptr %i.a, align 8, !tbaa !13
  %i.av = and i32 %.02223.i, 7
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = lshr i64 %.0..0..0..0..0..0..i29, %i.aw
  %i.ay = and i64 %i.ax, 31
  store i64 %i.ay, ptr %.024.i, align 8, !tbaa !13
  %i.az = getelementptr inbounds nuw i8, ptr %.024.i, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ba = icmp samesign ult i32 %i.am, %i.ak
  br i1 %i.ba, label %.lr.ph.i28, label %_ZN5arrow8internal12unpack_exactILi5ELb0EmEEiPKhPT1_ii.exit, !llvm.loop !310

_ZN5arrow8internal12unpack_exactILi5ELb0EmEEiPKhPT1_ii.exit: ; preds = %.lr.ph.i28, %._crit_edge
  ret void

.lr.ph:                                           ; preds = %_ZN5arrow8internal12unpack_exactILi5ELb1EmEEiPKhPT1_ii.exit, %.lr.ph
  %.032 = phi i32 [ %i.dr, %.lr.ph ], [ 0, %_ZN5arrow8internal12unpack_exactILi5ELb1EmEEiPKhPT1_ii.exit ]
  %.02531 = phi ptr [ %i.dp, %.lr.ph ], [ %i.ac, %_ZN5arrow8internal12unpack_exactILi5ELb1EmEEiPKhPT1_ii.exit ] ; 9 uses
end_hunk_2

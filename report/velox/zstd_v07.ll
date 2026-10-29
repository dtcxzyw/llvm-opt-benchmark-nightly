Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/zstd_v07?download=true
inline.NumInlined: 402
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 18
begin_hunk_0_@HUFv07_decompress4X2_usingDTable_internal:bb.a
  %i.pm = getelementptr inbounds i8, ptr %i.ia, i64 %i.pl ; 2 uses
  %i.pn = shl i32 %.024.i, 3
  %i.po = sub i32 %i.nm, %i.pn
  %.val.i208 = load i64, ptr %i.pm, align 1
  br label %BITv07_reloadDStream.exit

BITv07_reloadDStream.exit:                        ; preds = %bb.ao, %bb.aq, %bb.as, %bb.at
  %i.pp = phi ptr [ %i.pm, %bb.at ], [ %i.oz, %bb.aq ], [ %i.ia, %bb.as ], [ %i.ia, %bb.ao ] ; 2 uses
  %.val7.i294 = phi i32 [ %i.po, %bb.at ], [ %i.pa, %bb.aq ], [ %i.nm, %bb.as ], [ %i.nm, %bb.ao ] ; 2 uses
  %.val.i208267 = phi i64 [ %.val.i208, %bb.at ], [ %.val30.i, %bb.aq ], [ %.val.i208268281, %bb.as ], [ %.val.i208268281, %bb.ao ] ; 2 uses
  %.025.i = phi i32 [ %.0.i, %bb.at ], [ 0, %bb.aq ], [ %..i, %bb.as ], [ 3, %bb.ao ]
  %i.pq = icmp ugt i32 %i.nx, 64
  br i1 %i.pq, label %BITv07_reloadDStream.exit217, label %bb.au

bb.au:                                            ; preds = %BITv07_reloadDStream.exit
  %.not.i209 = icmp ult ptr %i.hz, %i.hp
  br i1 %.not.i209, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.pr = lshr i32 %i.nx, 3
  %i.ps = zext nneg i32 %i.pr to i64
  %i.pt = sub nsw i64 0, %i.ps
  %i.pu = getelementptr inbounds i8, ptr %i.hz, i64 %i.pt ; 2 uses
  %i.pv = and i32 %i.nx, 7
  %.val30.i210 = load i64, ptr %i.pu, align 1
  br label %BITv07_reloadDStream.exit217

bb.aw:                                            ; preds = %bb.au
  %i.pw = icmp eq ptr %i.hz, %i.ho
  br i1 %i.pw, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %.not29.i215 = icmp eq i32 %i.nx, 64
  %..i216 = select i1 %.not29.i215, i32 2, i32 1
  br label %BITv07_reloadDStream.exit217

bb.ay:                                            ; preds = %bb.aw
  %i.px = lshr i32 %i.nx, 3                       ; 2 uses
  %i.py = zext nneg i32 %i.px to i64
  %i.pz = sub nsw i64 0, %i.py
  %i.qa = getelementptr inbounds i8, ptr %i.hz, i64 %i.pz
  %i.qb = icmp ult ptr %i.qa, %i.ho               ; 2 uses
  %i.qc = ptrtoint ptr %i.hz to i64
  %i.qd = sub i64 %i.qc, %i.hq
  %i.qe = trunc i64 %i.qd to i32
  %.024.i212 = select i1 %i.qb, i32 %i.qe, i32 %i.px ; 2 uses
  %.0.i213 = zext i1 %i.qb to i32
  %i.qf = zext i32 %.024.i212 to i64
  %i.qg = sub nsw i64 0, %i.qf
  %i.qh = getelementptr inbounds i8, ptr %i.hz, i64 %i.qg ; 2 uses
  %i.qi = shl i32 %.024.i212, 3
  %i.qj = sub i32 %i.nx, %i.qi
  %.val.i214 = load i64, ptr %i.qh, align 1
  br label %BITv07_reloadDStream.exit217

BITv07_reloadDStream.exit217:                     ; preds = %BITv07_reloadDStream.exit, %bb.av, %bb.ax, %bb.ay
  %i.qk = phi ptr [ %i.qh, %bb.ay ], [ %i.pu, %bb.av ], [ %i.hz, %bb.ax ], [ %i.hz, %BITv07_reloadDStream.exit ] ; 2 uses
  %.val7.i178297 = phi i32 [ %i.qj, %bb.ay ], [ %i.pv, %bb.av ], [ %i.nx, %bb.ax ], [ %i.nx, %BITv07_reloadDStream.exit ] ; 2 uses
  %.val.i214270 = phi i64 [ %.val.i214, %bb.ay ], [ %.val30.i210, %bb.av ], [ %.val.i214271280, %bb.ax ], [ %.val.i214271280, %BITv07_reloadDStream.exit ] ; 2 uses
  %.025.i211 = phi i32 [ %.0.i213, %bb.ay ], [ 0, %bb.av ], [ %..i216, %bb.ax ], [ 3, %BITv07_reloadDStream.exit ]
  %i.ql = or i32 %.025.i211, %.025.i
  %i.qm = icmp ugt i32 %i.oi, 64
  br i1 %i.qm, label %BITv07_reloadDStream.exit226, label %bb.az

bb.az:                                            ; preds = %BITv07_reloadDStream.exit217
  %.not.i218 = icmp ult ptr %i.hy, %i.hs
  br i1 %.not.i218, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.qn = lshr i32 %i.oi, 3
  %i.qo = zext nneg i32 %i.qn to i64
  %i.qp = sub nsw i64 0, %i.qo
  %i.qq = getelementptr inbounds i8, ptr %i.hy, i64 %i.qp ; 2 uses
  %i.qr = and i32 %i.oi, 7
  %.val30.i219 = load i64, ptr %i.qq, align 1
  br label %BITv07_reloadDStream.exit226

bb.bb:                                            ; preds = %bb.az
  %i.qs = icmp eq ptr %i.hy, %i.hr
  br i1 %i.qs, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %.not29.i224 = icmp eq i32 %i.oi, 64
  %..i225 = select i1 %.not29.i224, i32 2, i32 1
  br label %BITv07_reloadDStream.exit226

bb.bd:                                            ; preds = %bb.bb
  %i.qt = lshr i32 %i.oi, 3                       ; 2 uses
  %i.qu = zext nneg i32 %i.qt to i64
  %i.qv = sub nsw i64 0, %i.qu
  %i.qw = getelementptr inbounds i8, ptr %i.hy, i64 %i.qv
  %i.qx = icmp ult ptr %i.qw, %i.hr               ; 2 uses
  %i.qy = ptrtoint ptr %i.hy to i64
  %i.qz = sub i64 %i.qy, %i.ht
  %i.ra = trunc i64 %i.qz to i32
  %.024.i221 = select i1 %i.qx, i32 %i.ra, i32 %i.qt ; 2 uses
  %.0.i222 = zext i1 %i.qx to i32
  %i.rb = zext i32 %.024.i221 to i64
  %i.rc = sub nsw i64 0, %i.rb
  %i.rd = getelementptr inbounds i8, ptr %i.hy, i64 %i.rc ; 2 uses
  %i.re = shl i32 %.024.i221, 3
  %i.rf = sub i32 %i.oi, %i.re
  %.val.i223 = load i64, ptr %i.rd, align 1
  br label %BITv07_reloadDStream.exit226

BITv07_reloadDStream.exit226:                     ; preds = %BITv07_reloadDStream.exit217, %bb.ba, %bb.bc, %bb.bd
  %i.rg = phi ptr [ %i.rd, %bb.bd ], [ %i.qq, %bb.ba ], [ %i.hy, %bb.bc ], [ %i.hy, %BITv07_reloadDStream.exit217 ] ; 2 uses
  %.val7.i180300 = phi i32 [ %i.rf, %bb.bd ], [ %i.qr, %bb.ba ], [ %i.oi, %bb.bc ], [ %i.oi, %BITv07_reloadDStream.exit217 ] ; 2 uses
  %.val.i223273 = phi i64 [ %.val.i223, %bb.bd ], [ %.val30.i219, %bb.ba ], [ %.val.i223274279, %bb.bc ], [ %.val.i223274279, %BITv07_reloadDStream.exit217 ] ; 2 uses
  %.025.i220 = phi i32 [ %.0.i222, %bb.bd ], [ 0, %bb.ba ], [ %..i225, %bb.bc ], [ 3, %BITv07_reloadDStream.exit217 ]
  %i.rh = or i32 %i.ql, %.025.i220
  %i.ri = icmp ugt i32 %i.ot, 64
  br i1 %i.ri, label %BITv07_reloadDStream.exit235, label %bb.be

bb.be:                                            ; preds = %BITv07_reloadDStream.exit226
  %.not.i227 = icmp ult ptr %i.hx, %i.hv
  br i1 %.not.i227, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.rj = lshr i32 %i.ot, 3
  %i.rk = zext nneg i32 %i.rj to i64
  %i.rl = sub nsw i64 0, %i.rk
  %i.rm = getelementptr inbounds i8, ptr %i.hx, i64 %i.rl ; 2 uses
  %i.rn = and i32 %i.ot, 7
  %.val30.i228 = load i64, ptr %i.rm, align 1
  br label %BITv07_reloadDStream.exit235

bb.bg:                                            ; preds = %bb.be
  %i.ro = icmp eq ptr %i.hx, %i.hu
  br i1 %i.ro, label %BITv07_reloadDStream.exit235, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.rp = lshr i32 %i.ot, 3                       ; 2 uses
  %i.rq = zext nneg i32 %i.rp to i64
  %i.rr = sub nsw i64 0, %i.rq
  %i.rs = getelementptr inbounds i8, ptr %i.hx, i64 %i.rr
  %i.rt = icmp ult ptr %i.rs, %i.hu               ; 2 uses
  %i.ru = ptrtoint ptr %i.hx to i64
  %i.rv = sub i64 %i.ru, %i.hw
  %i.rw = trunc i64 %i.rv to i32
  %.024.i230 = select i1 %i.rt, i32 %i.rw, i32 %i.rp ; 2 uses
  %.0.i231 = zext i1 %i.rt to i32
  %i.rx = zext i32 %.024.i230 to i64
  %i.ry = sub nsw i64 0, %i.rx
  %i.rz = getelementptr inbounds i8, ptr %i.hx, i64 %i.ry ; 2 uses
  %i.sa = shl i32 %.024.i230, 3
  %i.sb = sub i32 %i.ot, %i.sa
  %.val.i232 = load i64, ptr %i.rz, align 1
  br label %BITv07_reloadDStream.exit235

BITv07_reloadDStream.exit235:                     ; preds = %bb.bg, %BITv07_reloadDStream.exit226, %bb.bf, %bb.bh
  %i.sc = phi ptr [ %i.rz, %bb.bh ], [ %i.rm, %bb.bf ], [ %i.hx, %BITv07_reloadDStream.exit226 ], [ %i.hx, %bb.bg ] ; 2 uses
  %.val7.i182303 = phi i32 [ %i.sb, %bb.bh ], [ %i.rn, %bb.bf ], [ %i.ot, %BITv07_reloadDStream.exit226 ], [ %i.ot, %bb.bg ] ; 2 uses
  %.val.i232276 = phi i64 [ %.val.i232, %bb.bh ], [ %.val30.i228, %bb.bf ], [ %.val.i232277278, %BITv07_reloadDStream.exit226 ], [ %.val.i232277278, %bb.bg ] ; 2 uses
  %.025.i229 = phi i32 [ %.0.i231, %bb.bh ], [ 0, %bb.bf ], [ 3, %BITv07_reloadDStream.exit226 ], [ 3, %bb.bg ]
  %i.sd = or i32 %i.rh, %.025.i229
  %i.se = icmp eq i32 %i.sd, 0
  %i.sf = icmp ult ptr %i.ou, %i.gv
  %i.sg = select i1 %i.se, i1 %i.sf, i1 false
  br i1 %i.sg, label %bb.ao, label %._crit_edge, !llvm.loop !99

._crit_edge:                                      ; preds = %BITv07_reloadDStream.exit235
  store i32 %.val7.i294, ptr %i.gz, align 8, !tbaa !35
  store i32 %.val7.i178297, ptr %i.hd, align 8, !tbaa !35
  store i32 %.val7.i180300, ptr %i.he, align 8, !tbaa !35
  store i32 %.val7.i182303, ptr %i.hf, align 8, !tbaa !35
  store ptr %i.pp, ptr %i.hg, align 8
  store ptr %i.qk, ptr %i.hh, align 8
  store ptr %i.rg, ptr %i.hi, align 8
  store ptr %i.sc, ptr %i.hj, align 8
  br label %bb.bi

bb.bi:                                            ; preds = %._crit_edge, %bb.an
  %.val.i232277.lcssa = phi i64 [ %.val.i232276, %._crit_edge ], [ %.promoted275, %bb.an ]
  %.val.i223274.lcssa = phi i64 [ %.val.i223273, %._crit_edge ], [ %.promoted272, %bb.an ]
  %.val.i214271.lcssa = phi i64 [ %.val.i214270, %._crit_edge ], [ %.promoted269, %bb.an ]
  %.val.i208268.lcssa = phi i64 [ %.val.i208267, %._crit_edge ], [ %.promoted, %bb.an ]
  %.0143.lcssa = phi ptr [ %i.nn, %._crit_edge ], [ %0, %bb.an ] ; 2 uses
  %.0140.lcssa = phi ptr [ %i.ny, %._crit_edge ], [ %i.s, %bb.an ] ; 2 uses
  %.0137.lcssa = phi ptr [ %i.oj, %._crit_edge ], [ %i.t, %bb.an ] ; 2 uses
  %.0134.lcssa = phi ptr [ %i.ou, %._crit_edge ], [ %i.u, %bb.an ]
  store i64 %.val.i208268.lcssa, ptr %5, align 8
  store i64 %.val.i214271.lcssa, ptr %6, align 8
  store i64 %.val.i223274.lcssa, ptr %7, align 8
  store i64 %.val.i232277.lcssa, ptr %8, align 8
  %i.sh = icmp ugt ptr %.0143.lcssa, %i.s
  %i.si = icmp ugt ptr %.0140.lcssa, %i.t
  %or.cond = select i1 %i.sh, i1 true, i1 %i.si
  %i.sj = icmp ugt ptr %.0137.lcssa, %i.u
  %or.cond160 = select i1 %or.cond, i1 true, i1 %i.sj
  br i1 %or.cond160, label %BITv07_initDStream.exit.thread, label %BITv07_endOfDStream.exit

BITv07_endOfDStream.exit:                         ; preds = %bb.bi
  call fastcc void @HUFv07_decodeStreamX2(ptr noundef %.0143.lcssa, ptr noundef %5, ptr noundef %i.s, ptr noundef nonnull %i.c, i32 noundef %i.v)
  call fastcc void @HUFv07_decodeStreamX2(ptr noundef %.0140.lcssa, ptr noundef %6, ptr noundef %i.t, ptr noundef nonnull %i.c, i32 noundef %i.v)
  call fastcc void @HUFv07_decodeStreamX2(ptr noundef %.0137.lcssa, ptr noundef %7, ptr noundef %i.u, ptr noundef nonnull %i.c, i32 noundef %i.v)
  call fastcc void @HUFv07_decodeStreamX2(ptr noundef %.0134.lcssa, ptr noundef %8, ptr noundef %i.b, ptr noundef nonnull %i.c, i32 noundef %i.v)
  %i.sk = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.sl = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.sm = load i32, ptr %i.sl, align 8
  %i.sn = icmp ne i32 %i.sm, 64
  %i.so = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.sp = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.sq = load i32, ptr %i.sp, align 8
  %i.sr = icmp ne i32 %i.sq, 64
  %i.ss = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.st = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.su = load i32, ptr %i.st, align 8
  %i.sv = icmp ne i32 %i.su, 64
  %i.sw = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.sx = load <2 x ptr>, ptr %i.sk, align 8, !tbaa !39 ; 2 uses
  %i.sy = load <2 x ptr>, ptr %i.so, align 8, !tbaa !39 ; 2 uses
  %i.sz = load <2 x ptr>, ptr %i.ss, align 8, !tbaa !39 ; 2 uses
  %i.ta = load <2 x ptr>, ptr %i.sw, align 8, !tbaa !39 ; 2 uses
  %i.tb = shufflevector <2 x ptr> %i.sx, <2 x ptr> %i.sy, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.tc = shufflevector <2 x ptr> %i.sz, <2 x ptr> %i.ta, <4 x i32> <i32 poison, i32 poison, i32 0, i32 2>
  %i.td = shufflevector <4 x ptr> %i.tb, <4 x ptr> %i.tc, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.te = shufflevector <2 x ptr> %i.sx, <2 x ptr> %i.sy, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.tf = shufflevector <2 x ptr> %i.sz, <2 x ptr> %i.ta, <4 x i32> <i32 poison, i32 poison, i32 1, i32 3>
  %i.tg = shufflevector <4 x ptr> %i.te, <4 x ptr> %i.tf, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.th = icmp ne <4 x ptr> %i.td, %i.tg
  %i.ti = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.tj = load i32, ptr %i.ti, align 8
  %i.tk = icmp ne i32 %i.tj, 64
  %i.tl = freeze <4 x i1> %i.th
  %i.tm = bitcast <4 x i1> %i.tl to i4
  %i.tn = icmp ne i4 %i.tm, 0
  %op.rdx = select i1 %i.tn, i1 true, i1 %i.sn
  %9 = select i1 %op.rdx, i1 true, i1 %i.sr
  %op.rdx367 = select i1 %9, i1 true, i1 %i.sv
  %op.rdx368 = select i1 %op.rdx367, i1 true, i1 %i.tk
  %.159 = select i1 %op.rdx368, i64 -20, i64 %1
  br label %BITv07_initDStream.exit.thread

BITv07_initDStream.exit.thread:                   ; preds = %bb.ak, %bb.ac, %bb.aa, %bb.y, %bb.q, %bb.o, %bb.m, %bb.e, %bb.c, %BITv07_endOfDStream.exit, %bb.bi, %bb.b, %bb.am
  %.4 = phi i64 [ %i.gm, %bb.am ], [ -20, %bb.b ], [ -20, %bb.bi ], [ -1, %bb.y ], [ -1, %bb.m ], [ %.159, %BITv07_endOfDStream.exit ], [ -72, %bb.c ], [ -1, %bb.e ], [ -72, %bb.o ], [ -1, %bb.q ], [ -72, %bb.aa ], [ -1, %bb.ac ], [ -1, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.bj

bb.bj:                                            ; preds = %bb.a, %BITv07_initDStream.exit.thread
  %.5 = phi i64 [ %.4, %BITv07_initDStream.exit.thread ], [ -20, %bb.a ]
  ret i64 %.5
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @HUFv07_decompress4X2_DCtx(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call i64 @HUFv07_readDTableX2(ptr noundef %0, ptr noundef %3, i64 noundef %4) ; 5 uses
  %i.b = icmp ult i64 %i.a, -119
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not19 = icmp ult i64 %i.a, %4
  br i1 %.not19, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 %i.a
  %i.d = sub nuw i64 %4, %i.a
  %i.e = tail call fastcc i64 @HUFv07_decompress4X2_usingDTable_internal(ptr noundef %1, i64 noundef %2, ptr noundef %i.c, i64 noundef %i.d, ptr noundef %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i64 [ %i.e, %bb.c ], [ %i.a, %bb.a ], [ -72, %bb.b ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @HUFv07_decompress4X2(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #11 {
bb.a:
  %i.a = alloca [2049 x i32], align 16            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(8196) %i.a, i8 0, i64 8196, i1 false)
  store i32 184549387, ptr %i.a, align 16
  %i.b = call i64 @HUFv07_readDTableX2(ptr noundef nonnull %i.a, ptr noundef %2, i64 noundef %3) ; 5 uses
  %i.c = icmp ult i64 %i.b, -119
  br i1 %i.c, label %bb.b, label %HUFv07_decompress4X2_DCtx.exit

bb.b:                                             ; preds = %bb.a
  %.not19.i = icmp ult i64 %i.b, %3
  br i1 %.not19.i, label %bb.c, label %HUFv07_decompress4X2_DCtx.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %i.b
  %i.e = sub nuw i64 %3, %i.b
  %i.f = call fastcc i64 @HUFv07_decompress4X2_usingDTable_internal(ptr noundef %0, i64 noundef %1, ptr noundef %i.d, i64 noundef %i.e, ptr noundef nonnull %i.a)
  br label %HUFv07_decompress4X2_DCtx.exit

HUFv07_decompress4X2_DCtx.exit:                   ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i64 [ %i.f, %bb.c ], [ %i.b, %bb.a ], [ -72, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i64 %.0.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i64 -119, -9223372036854775808) i64 @HUFv07_readDTableX4(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [17 x i32], align 16              ; 5 uses
  %i.b = alloca [17 x i32], align 16              ; 4 uses
  %i.c = alloca [256 x i8], align 16              ; 6 uses
  %3 = alloca [256 x %struct.sortedSymbol_t], align 16 ; 7 uses
  %i.d = alloca [17 x i32], align 16              ; 12 uses
  %i.e = alloca [18 x i32], align 16              ; 5 uses
  %i.f = alloca [16 x [17 x i32]], align 16       ; 14 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.d, i8 0, i64 68, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.e, i8 0, i64 72, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #27
  %.val = load i32, ptr %0, align 4               ; 3 uses
  %.sroa.0.0.extract.trunc = trunc i32 %.val to i8 ; 2 uses
  %.sroa.7.0.extract.shift = lshr i32 %.val, 24
  %.sroa.7.0.extract.trunc = trunc nuw i32 %.sroa.7.0.extract.shift to i8
  %i.j = and i32 %.val, 255                       ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.l = icmp samesign ugt i32 %i.j, 16
  br i1 %i.l, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = call i64 @HUFv07_readStats(ptr noundef nonnull %i.c, i64 noundef 256, ptr noundef nonnull %i.d, ptr noundef nonnull %i.h, ptr noundef nonnull %i.g, ptr noundef %1, i64 noundef %2) ; 3 uses
  %i.n = icmp ult i64 %i.m, -119
  br i1 %i.n, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %i.g, align 4, !tbaa !13   ; 4 uses
  %i.p = icmp ugt i32 %i.o, %i.j
  br i1 %i.p, label %bb.g, label %.preheader78.preheader

.preheader78.preheader:                           ; preds = %bb.c
  %i.q = add nuw nsw i32 %i.o, 1                  ; 6 uses
  br label %.preheader78

.preheader78:                                     ; preds = %.preheader78.preheader, %.preheader78
  %indvars.iv125 = phi i32 [ %i.j, %.preheader78.preheader ], [ %indvars.iv.next126, %.preheader78 ] ; 2 uses
  %indvars.iv120 = phi i32 [ 1, %.preheader78.preheader ], [ %indvars.iv.next121, %.preheader78 ] ; 2 uses
  %indvars.iv102 = phi i32 [ %i.q, %.preheader78.preheader ], [ %indvars.iv.next103, %.preheader78 ] ; 5 uses
  %.071 = phi i32 [ %i.o, %.preheader78.preheader ], [ %i.v, %.preheader78 ] ; 13 uses
  %i.r = zext i32 %.071 to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !13
  %i.u = icmp eq i32 %i.t, 0
  %i.v = add i32 %.071, -1
  %indvars.iv.next103 = add i32 %indvars.iv102, -1
  %indvars.iv.next121 = add i32 %indvars.iv120, 1
  %indvars.iv.next126 = add i32 %indvars.iv125, -1
  br i1 %i.u, label %.preheader78, label %.preheader, !llvm.loop !100

.preheader:                                       ; preds = %.preheader78
  %.not.not = icmp eq i32 %.071, 0                ; 2 uses
  br i1 %.not.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.w = add i32 %indvars.iv102, -2
  %xtraiter = and i32 %.071, 3                    ; 3 uses
  %i.x = icmp ult i32 %i.w, 3
  br i1 %i.x, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %.071, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %.07380 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.am, %.lr.ph ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.z = load i32, ptr %i.y, align 4, !tbaa !13
  %i.aa = add i32 %i.z, %.07380                   ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  store i32 %.07380, ptr %i.ab, align 4, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !13
  %i.ae = add i32 %i.ad, %i.aa                    ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next
  store i32 %i.aa, ptr %i.af, align 4, !tbaa !13
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next.1
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !13
  %i.ai = add i32 %i.ah, %i.ae                    ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next.1
  store i32 %i.ae, ptr %i.aj, align 4, !tbaa !13
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next.2
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !13
  %i.am = add i32 %i.al, %i.ai                    ; 3 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next.2
  store i32 %i.ai, ptr %i.an, align 4, !tbaa !13
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !101

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.07380.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.am, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod177 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod177)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph.epil ], [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %.07380.epil = phi i32 [ %i.aq, %.lr.ph.epil ], [ %.07380.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.epil
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !13
  %i.aq = add i32 %i.ap, %.07380.epil             ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.epil
  store i32 %.07380.epil, ptr %i.ar, align 4, !tbaa !13
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !102

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader
  %.073.lcssa = phi i32 [ 0, %.preheader ], [ %i.am, %._crit_edge.loopexit.unr-lcssa ], [ %i.aq, %.lr.ph.epil ] ; 5 uses
  store i32 %.073.lcssa, ptr %i.i, align 4, !tbaa !13
end_hunk_0
begin_hunk_1_@HUFv07_decompress4X4_usingDTable_internal:bb.a
  %i.ri = getelementptr inbounds i8, ptr %i.ia, i64 %i.rh ; 2 uses
  %i.rj = shl i32 %.024.i, 3
  %i.rk = sub i32 %i.ow, %i.rj
  %.val.i226 = load i64, ptr %i.ri, align 1
  br label %BITv07_reloadDStream.exit

BITv07_reloadDStream.exit:                        ; preds = %bb.ao, %bb.aq, %bb.as, %bb.at
  %i.rl = phi ptr [ %i.ri, %bb.at ], [ %i.qv, %bb.aq ], [ %i.ia, %bb.as ], [ %i.ia, %bb.ao ] ; 2 uses
  %.val9.i312 = phi i32 [ %i.rk, %bb.at ], [ %i.qw, %bb.aq ], [ %i.ow, %bb.as ], [ %i.ow, %bb.ao ] ; 2 uses
  %.val.i226285 = phi i64 [ %.val.i226, %bb.at ], [ %.val30.i, %bb.aq ], [ %.val.i226286299, %bb.as ], [ %.val.i226286299, %bb.ao ] ; 2 uses
  %.025.i = phi i32 [ %.0.i, %bb.at ], [ 0, %bb.aq ], [ %..i, %bb.as ], [ 3, %bb.ao ]
  %i.rm = icmp ugt i32 %i.pk, 64
  br i1 %i.rm, label %BITv07_reloadDStream.exit235, label %bb.au

bb.au:                                            ; preds = %BITv07_reloadDStream.exit
  %.not.i227 = icmp ult ptr %i.hz, %i.hp
  br i1 %.not.i227, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.rn = lshr i32 %i.pk, 3
  %i.ro = zext nneg i32 %i.rn to i64
  %i.rp = sub nsw i64 0, %i.ro
  %i.rq = getelementptr inbounds i8, ptr %i.hz, i64 %i.rp ; 2 uses
  %i.rr = and i32 %i.pk, 7
  %.val30.i228 = load i64, ptr %i.rq, align 1
  br label %BITv07_reloadDStream.exit235

bb.aw:                                            ; preds = %bb.au
  %i.rs = icmp eq ptr %i.hz, %i.ho
  br i1 %i.rs, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %.not29.i233 = icmp eq i32 %i.pk, 64
  %..i234 = select i1 %.not29.i233, i32 2, i32 1
  br label %BITv07_reloadDStream.exit235

bb.ay:                                            ; preds = %bb.aw
  %i.rt = lshr i32 %i.pk, 3                       ; 2 uses
  %i.ru = zext nneg i32 %i.rt to i64
  %i.rv = sub nsw i64 0, %i.ru
  %i.rw = getelementptr inbounds i8, ptr %i.hz, i64 %i.rv
  %i.rx = icmp ult ptr %i.rw, %i.ho               ; 2 uses
  %i.ry = ptrtoint ptr %i.hz to i64
  %i.rz = sub i64 %i.ry, %i.hq
  %i.sa = trunc i64 %i.rz to i32
  %.024.i230 = select i1 %i.rx, i32 %i.sa, i32 %i.rt ; 2 uses
  %.0.i231 = zext i1 %i.rx to i32
  %i.sb = zext i32 %.024.i230 to i64
  %i.sc = sub nsw i64 0, %i.sb
  %i.sd = getelementptr inbounds i8, ptr %i.hz, i64 %i.sc ; 2 uses
  %i.se = shl i32 %.024.i230, 3
  %i.sf = sub i32 %i.pk, %i.se
  %.val.i232 = load i64, ptr %i.sd, align 1
  br label %BITv07_reloadDStream.exit235

BITv07_reloadDStream.exit235:                     ; preds = %BITv07_reloadDStream.exit, %bb.av, %bb.ax, %bb.ay
  %i.sg = phi ptr [ %i.sd, %bb.ay ], [ %i.rq, %bb.av ], [ %i.hz, %bb.ax ], [ %i.hz, %BITv07_reloadDStream.exit ] ; 2 uses
  %.val9.i196315 = phi i32 [ %i.sf, %bb.ay ], [ %i.rr, %bb.av ], [ %i.pk, %bb.ax ], [ %i.pk, %BITv07_reloadDStream.exit ] ; 2 uses
  %.val.i232288 = phi i64 [ %.val.i232, %bb.ay ], [ %.val30.i228, %bb.av ], [ %.val.i232289298, %bb.ax ], [ %.val.i232289298, %BITv07_reloadDStream.exit ] ; 2 uses
  %.025.i229 = phi i32 [ %.0.i231, %bb.ay ], [ 0, %bb.av ], [ %..i234, %bb.ax ], [ 3, %BITv07_reloadDStream.exit ]
  %i.sh = or i32 %.025.i229, %.025.i
  %i.si = icmp ugt i32 %i.py, 64
  br i1 %i.si, label %BITv07_reloadDStream.exit244, label %bb.az

bb.az:                                            ; preds = %BITv07_reloadDStream.exit235
  %.not.i236 = icmp ult ptr %i.hy, %i.hs
  br i1 %.not.i236, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.sj = lshr i32 %i.py, 3
  %i.sk = zext nneg i32 %i.sj to i64
  %i.sl = sub nsw i64 0, %i.sk
  %i.sm = getelementptr inbounds i8, ptr %i.hy, i64 %i.sl ; 2 uses
  %i.sn = and i32 %i.py, 7
  %.val30.i237 = load i64, ptr %i.sm, align 1
  br label %BITv07_reloadDStream.exit244

bb.bb:                                            ; preds = %bb.az
  %i.so = icmp eq ptr %i.hy, %i.hr
  br i1 %i.so, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %.not29.i242 = icmp eq i32 %i.py, 64
  %..i243 = select i1 %.not29.i242, i32 2, i32 1
  br label %BITv07_reloadDStream.exit244

bb.bd:                                            ; preds = %bb.bb
  %i.sp = lshr i32 %i.py, 3                       ; 2 uses
  %i.sq = zext nneg i32 %i.sp to i64
  %i.sr = sub nsw i64 0, %i.sq
  %i.ss = getelementptr inbounds i8, ptr %i.hy, i64 %i.sr
  %i.st = icmp ult ptr %i.ss, %i.hr               ; 2 uses
  %i.su = ptrtoint ptr %i.hy to i64
  %i.sv = sub i64 %i.su, %i.ht
  %i.sw = trunc i64 %i.sv to i32
  %.024.i239 = select i1 %i.st, i32 %i.sw, i32 %i.sp ; 2 uses
  %.0.i240 = zext i1 %i.st to i32
  %i.sx = zext i32 %.024.i239 to i64
  %i.sy = sub nsw i64 0, %i.sx
  %i.sz = getelementptr inbounds i8, ptr %i.hy, i64 %i.sy ; 2 uses
  %i.ta = shl i32 %.024.i239, 3
  %i.tb = sub i32 %i.py, %i.ta
  %.val.i241 = load i64, ptr %i.sz, align 1
  br label %BITv07_reloadDStream.exit244

BITv07_reloadDStream.exit244:                     ; preds = %BITv07_reloadDStream.exit235, %bb.ba, %bb.bc, %bb.bd
  %i.tc = phi ptr [ %i.sz, %bb.bd ], [ %i.sm, %bb.ba ], [ %i.hy, %bb.bc ], [ %i.hy, %BITv07_reloadDStream.exit235 ] ; 2 uses
  %.val9.i198318 = phi i32 [ %i.tb, %bb.bd ], [ %i.sn, %bb.ba ], [ %i.py, %bb.bc ], [ %i.py, %BITv07_reloadDStream.exit235 ] ; 2 uses
  %.val.i241291 = phi i64 [ %.val.i241, %bb.bd ], [ %.val30.i237, %bb.ba ], [ %.val.i241292297, %bb.bc ], [ %.val.i241292297, %BITv07_reloadDStream.exit235 ] ; 2 uses
  %.025.i238 = phi i32 [ %.0.i240, %bb.bd ], [ 0, %bb.ba ], [ %..i243, %bb.bc ], [ 3, %BITv07_reloadDStream.exit235 ]
  %i.td = or i32 %i.sh, %.025.i238
  %i.te = icmp ugt i32 %i.qm, 64
  br i1 %i.te, label %BITv07_reloadDStream.exit253, label %bb.be

bb.be:                                            ; preds = %BITv07_reloadDStream.exit244
  %.not.i245 = icmp ult ptr %i.hx, %i.hv
  br i1 %.not.i245, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.tf = lshr i32 %i.qm, 3
  %i.tg = zext nneg i32 %i.tf to i64
  %i.th = sub nsw i64 0, %i.tg
  %i.ti = getelementptr inbounds i8, ptr %i.hx, i64 %i.th ; 2 uses
  %i.tj = and i32 %i.qm, 7
  %.val30.i246 = load i64, ptr %i.ti, align 1
  br label %BITv07_reloadDStream.exit253

bb.bg:                                            ; preds = %bb.be
  %i.tk = icmp eq ptr %i.hx, %i.hu
  br i1 %i.tk, label %BITv07_reloadDStream.exit253, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.tl = lshr i32 %i.qm, 3                       ; 2 uses
  %i.tm = zext nneg i32 %i.tl to i64
  %i.tn = sub nsw i64 0, %i.tm
  %i.to = getelementptr inbounds i8, ptr %i.hx, i64 %i.tn
  %i.tp = icmp ult ptr %i.to, %i.hu               ; 2 uses
  %i.tq = ptrtoint ptr %i.hx to i64
  %i.tr = sub i64 %i.tq, %i.hw
  %i.ts = trunc i64 %i.tr to i32
  %.024.i248 = select i1 %i.tp, i32 %i.ts, i32 %i.tl ; 2 uses
  %.0.i249 = zext i1 %i.tp to i32
  %i.tt = zext i32 %.024.i248 to i64
  %i.tu = sub nsw i64 0, %i.tt
  %i.tv = getelementptr inbounds i8, ptr %i.hx, i64 %i.tu ; 2 uses
  %i.tw = shl i32 %.024.i248, 3
  %i.tx = sub i32 %i.qm, %i.tw
  %.val.i250 = load i64, ptr %i.tv, align 1
  br label %BITv07_reloadDStream.exit253

BITv07_reloadDStream.exit253:                     ; preds = %bb.bg, %BITv07_reloadDStream.exit244, %bb.bf, %bb.bh
  %i.ty = phi ptr [ %i.tv, %bb.bh ], [ %i.ti, %bb.bf ], [ %i.hx, %BITv07_reloadDStream.exit244 ], [ %i.hx, %bb.bg ] ; 2 uses
  %.val9.i200321 = phi i32 [ %i.tx, %bb.bh ], [ %i.tj, %bb.bf ], [ %i.qm, %BITv07_reloadDStream.exit244 ], [ %i.qm, %bb.bg ] ; 2 uses
  %.val.i250294 = phi i64 [ %.val.i250, %bb.bh ], [ %.val30.i246, %bb.bf ], [ %.val.i250295296, %BITv07_reloadDStream.exit244 ], [ %.val.i250295296, %bb.bg ] ; 2 uses
  %.025.i247 = phi i32 [ %.0.i249, %bb.bh ], [ 0, %bb.bf ], [ 3, %BITv07_reloadDStream.exit244 ], [ 3, %bb.bg ]
  %i.tz = or i32 %i.td, %.025.i247
  %i.ua = icmp eq i32 %i.tz, 0
  %i.ub = icmp ult ptr %i.qq, %i.gv
  %i.uc = select i1 %i.ua, i1 %i.ub, i1 false
  br i1 %i.uc, label %bb.ao, label %._crit_edge, !llvm.loop !118

._crit_edge:                                      ; preds = %BITv07_reloadDStream.exit253
  store i32 %.val9.i312, ptr %i.gz, align 8, !tbaa !35
  store i32 %.val9.i196315, ptr %i.hd, align 8, !tbaa !35
  store i32 %.val9.i198318, ptr %i.he, align 8, !tbaa !35
  store i32 %.val9.i200321, ptr %i.hf, align 8, !tbaa !35
  store ptr %i.rl, ptr %i.hg, align 8
  store ptr %i.sg, ptr %i.hh, align 8
  store ptr %i.tc, ptr %i.hi, align 8
  store ptr %i.ty, ptr %i.hj, align 8
  br label %bb.bi

bb.bi:                                            ; preds = %._crit_edge, %bb.an
  %.val.i250295.lcssa = phi i64 [ %.val.i250294, %._crit_edge ], [ %.promoted293, %bb.an ]
  %.val.i241292.lcssa = phi i64 [ %.val.i241291, %._crit_edge ], [ %.promoted290, %bb.an ]
  %.val.i232289.lcssa = phi i64 [ %.val.i232288, %._crit_edge ], [ %.promoted287, %bb.an ]
  %.val.i226286.lcssa = phi i64 [ %.val.i226285, %._crit_edge ], [ %.promoted, %bb.an ]
  %.0161.lcssa = phi ptr [ %i.pa, %._crit_edge ], [ %0, %bb.an ] ; 2 uses
  %.0158.lcssa = phi ptr [ %i.po, %._crit_edge ], [ %i.s, %bb.an ] ; 2 uses
  %.0155.lcssa = phi ptr [ %i.qc, %._crit_edge ], [ %i.t, %bb.an ] ; 2 uses
  %.0152.lcssa = phi ptr [ %i.qq, %._crit_edge ], [ %i.u, %bb.an ]
  store i64 %.val.i226286.lcssa, ptr %5, align 8
  store i64 %.val.i232289.lcssa, ptr %6, align 8
  store i64 %.val.i241292.lcssa, ptr %7, align 8
  store i64 %.val.i250295.lcssa, ptr %8, align 8
  %i.ud = icmp ugt ptr %.0161.lcssa, %i.s
  %i.ue = icmp ugt ptr %.0158.lcssa, %i.t
  %or.cond = select i1 %i.ud, i1 true, i1 %i.ue
  %i.uf = icmp ugt ptr %.0155.lcssa, %i.u
  %or.cond178 = select i1 %or.cond, i1 true, i1 %i.uf
  br i1 %or.cond178, label %BITv07_initDStream.exit.thread, label %BITv07_endOfDStream.exit

BITv07_endOfDStream.exit:                         ; preds = %bb.bi
  call fastcc void @HUFv07_decodeStreamX4(ptr noundef %.0161.lcssa, ptr noundef %5, ptr noundef %i.s, ptr noundef nonnull %i.c, i32 noundef %i.v)
  call fastcc void @HUFv07_decodeStreamX4(ptr noundef %.0158.lcssa, ptr noundef %6, ptr noundef %i.t, ptr noundef nonnull %i.c, i32 noundef %i.v)
  call fastcc void @HUFv07_decodeStreamX4(ptr noundef %.0155.lcssa, ptr noundef %7, ptr noundef %i.u, ptr noundef nonnull %i.c, i32 noundef %i.v)
  call fastcc void @HUFv07_decodeStreamX4(ptr noundef %.0152.lcssa, ptr noundef %8, ptr noundef %i.b, ptr noundef nonnull %i.c, i32 noundef %i.v)
  %i.ug = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.uh = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ui = load i32, ptr %i.uh, align 8
  %i.uj = icmp ne i32 %i.ui, 64
  %i.uk = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ul = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.um = load i32, ptr %i.ul, align 8
  %i.un = icmp ne i32 %i.um, 64
  %i.uo = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.up = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.uq = load i32, ptr %i.up, align 8
  %i.ur = icmp ne i32 %i.uq, 64
  %i.us = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ut = load <2 x ptr>, ptr %i.ug, align 8, !tbaa !39 ; 2 uses
  %i.uu = load <2 x ptr>, ptr %i.uk, align 8, !tbaa !39 ; 2 uses
  %i.uv = load <2 x ptr>, ptr %i.uo, align 8, !tbaa !39 ; 2 uses
  %i.uw = load <2 x ptr>, ptr %i.us, align 8, !tbaa !39 ; 2 uses
  %i.ux = shufflevector <2 x ptr> %i.ut, <2 x ptr> %i.uu, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.uy = shufflevector <2 x ptr> %i.uv, <2 x ptr> %i.uw, <4 x i32> <i32 poison, i32 poison, i32 0, i32 2>
  %i.uz = shufflevector <4 x ptr> %i.ux, <4 x ptr> %i.uy, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.va = shufflevector <2 x ptr> %i.ut, <2 x ptr> %i.uu, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.vb = shufflevector <2 x ptr> %i.uv, <2 x ptr> %i.uw, <4 x i32> <i32 poison, i32 poison, i32 1, i32 3>
  %i.vc = shufflevector <4 x ptr> %i.va, <4 x ptr> %i.vb, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.vd = icmp ne <4 x ptr> %i.uz, %i.vc
  %i.ve = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.vf = load i32, ptr %i.ve, align 8
  %i.vg = icmp ne i32 %i.vf, 64
  %i.vh = freeze <4 x i1> %i.vd
  %i.vi = bitcast <4 x i1> %i.vh to i4
  %i.vj = icmp ne i4 %i.vi, 0
  %op.rdx = select i1 %i.vj, i1 true, i1 %i.uj
  %9 = select i1 %op.rdx, i1 true, i1 %i.un
  %op.rdx385 = select i1 %9, i1 true, i1 %i.ur
  %op.rdx386 = select i1 %op.rdx385, i1 true, i1 %i.vg
  %spec.select = select i1 %op.rdx386, i64 -20, i64 %1
  br label %BITv07_initDStream.exit.thread

BITv07_initDStream.exit.thread:                   ; preds = %bb.ak, %bb.ac, %bb.aa, %bb.y, %bb.q, %bb.o, %bb.m, %bb.e, %bb.c, %BITv07_endOfDStream.exit, %bb.bi, %bb.b, %bb.am
  %.5 = phi i64 [ %i.gm, %bb.am ], [ -20, %bb.b ], [ -20, %bb.bi ], [ -1, %bb.y ], [ -1, %bb.m ], [ %spec.select, %BITv07_endOfDStream.exit ], [ -72, %bb.c ], [ -1, %bb.e ], [ -72, %bb.o ], [ -1, %bb.q ], [ -72, %bb.aa ], [ -1, %bb.ac ], [ -1, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.bj

bb.bj:                                            ; preds = %bb.a, %BITv07_initDStream.exit.thread
  %.6 = phi i64 [ %.5, %BITv07_initDStream.exit.thread ], [ -20, %bb.a ]
  ret i64 %.6
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @HUFv07_decompress4X4_DCtx(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call i64 @HUFv07_readDTableX4(ptr noundef %0, ptr noundef %3, i64 noundef %4) ; 5 uses
  %i.b = icmp ult i64 %i.a, -119
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not19 = icmp ult i64 %i.a, %4
  br i1 %.not19, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 %i.a
  %i.d = sub nuw i64 %4, %i.a
  %i.e = tail call fastcc i64 @HUFv07_decompress4X4_usingDTable_internal(ptr noundef %1, i64 noundef %2, ptr noundef %i.c, i64 noundef %i.d, ptr noundef %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i64 [ %i.e, %bb.c ], [ %i.a, %bb.a ], [ -72, %bb.b ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @HUFv07_decompress4X4(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #11 {
bb.a:
  %i.a = alloca [4097 x i32], align 16            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16388) %i.a, i8 0, i64 16388, i1 false)
  store i32 201326604, ptr %i.a, align 16
  %i.b = call i64 @HUFv07_readDTableX4(ptr noundef nonnull %i.a, ptr noundef %2, i64 noundef %3) ; 5 uses
  %i.c = icmp ult i64 %i.b, -119
  br i1 %i.c, label %bb.b, label %HUFv07_decompress4X4_DCtx.exit

bb.b:                                             ; preds = %bb.a
  %.not19.i = icmp ult i64 %i.b, %3
  br i1 %.not19.i, label %bb.c, label %HUFv07_decompress4X4_DCtx.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %i.b
  %i.e = sub nuw i64 %3, %i.b
  %i.f = call fastcc i64 @HUFv07_decompress4X4_usingDTable_internal(ptr noundef %0, i64 noundef %1, ptr noundef %i.d, i64 noundef %i.e, ptr noundef nonnull %i.a)
  br label %HUFv07_decompress4X4_DCtx.exit

HUFv07_decompress4X4_DCtx.exit:                   ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i64 [ %i.f, %bb.c ], [ %i.b, %bb.a ], [ -72, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i64 %.0.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @HUFv07_decompress1X_usingDTable(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #11 {
bb.a:
  %.val = load i32, ptr %4, align 4
  %i.a = and i32 %.val, 65280
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc i64 @HUFv07_decompress1X4_usingDTable_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %4)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call fastcc i64 @HUFv07_decompress1X2_usingDTable_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = phi i64 [ %i.b, %bb.b ], [ %i.c, %bb.c ]
  ret i64 %i.d
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @HUFv07_decompress4X_usingDTable(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #11 {
bb.a:
  %.val = load i32, ptr %4, align 4
  %i.a = and i32 %.val, 65280
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc i64 @HUFv07_decompress4X4_usingDTable_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %4)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call fastcc i64 @HUFv07_decompress4X2_usingDTable_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = phi i64 [ %i.b, %bb.b ], [ %i.c, %bb.c ]
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @HUFv07_selectDecoder(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = shl i64 %1, 4
  %i.b = udiv i64 %i.a, %0
  %i.c = lshr i64 %0, 8
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  %i.e = and i64 %i.b, 4294967295
  %i.f = getelementptr inbounds nuw [24 x i8], ptr @algoTime, i64 %i.e ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !42
  %i.j = mul i32 %i.i, %i.d
  %i.k = add i32 %i.j, %i.g
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !41
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !42
  %i.p = mul i32 %i.o, %i.d
  %i.q = add i32 %i.p, %i.m                       ; 2 uses
  %i.r = lshr i32 %i.q, 3
  %i.s = add i32 %i.r, %i.q
  %i.t = icmp ult i32 %i.s, %i.k
  %i.u = zext i1 %i.t to i32
  ret i32 %i.u
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @HUFv07_decompress(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #11 {
bb.a:
  %i.a = alloca [4097 x i32], align 16            ; 6 uses
  %i.b = alloca [2049 x i32], align 16            ; 6 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %.tail, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %3, %1
  br i1 %i.d, label %.tail, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq i64 %3, %1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %2, i64 %1, i1 false)
  br label %.tail

bb.e:                                             ; preds = %bb.c
  %i.f = icmp eq i64 %3, 1
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.g = load i8, ptr %2, align 1, !tbaa !17
  tail call void @llvm.memset.p0.i64(ptr align 1 %0, i8 %i.g, i64 %1, i1 false)
  br label %.tail

bb.g:                                             ; preds = %bb.e
  %i.h = shl i64 %3, 4
  %i.i = udiv i64 %i.h, %1
  %i.j = lshr i64 %1, 8
  %i.k = trunc i64 %i.j to i32                    ; 2 uses
  %i.l = and i64 %i.i, 4294967295
  %i.m = getelementptr inbounds nuw [24 x i8], ptr @algoTime, i64 %i.l ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !41
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !42
  %i.q = mul i32 %i.p, %i.k
  %i.r = add i32 %i.q, %i.n
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !42
  %i.w = mul i32 %i.v, %i.k
  %i.x = add i32 %i.w, %i.t                       ; 2 uses
  %i.y = lshr i32 %i.x, 3
  %i.z = add i32 %i.y, %i.x
  %.not = icmp ult i32 %i.z, %i.r
  br i1 %.not, label %call.1, label %call.0

call.0:                                           ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(8196) %i.b, i8 0, i64 8196, i1 false)
  store i32 184549387, ptr %i.b, align 16
  %i.aa = call i64 @HUFv07_readDTableX2(ptr noundef nonnull %i.b, ptr noundef %2, i64 noundef %3) ; 5 uses
  %i.ab = icmp ult i64 %i.aa, -119
  br i1 %i.ab, label %bb.h, label %HUFv07_decompress4X2.exit

bb.h:                                             ; preds = %call.0
  %.not19.i.i = icmp ult i64 %i.aa, %3
  br i1 %.not19.i.i, label %bb.i, label %HUFv07_decompress4X2.exit

bb.i:                                             ; preds = %bb.h
end_hunk_1

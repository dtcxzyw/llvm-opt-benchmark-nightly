Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/wlcGraft?download=true
inline.NumInlined: 237
inline.NumDeleted: 75
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 20
begin_hunk_0_@Sbc_ManDetectMult:bb.a
  %indvars.iv.next35.i.1 = add nuw nsw i64 %indvars.iv34.i, 2 ; 2 uses
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %indvars.iv.next35.i.1
  %i.mw = load i64, ptr %i.mv, align 8, !tbaa !57
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %indvars.iv.next35.i.1
  store i64 %i.mw, ptr %i.mx, align 8, !tbaa !57
  %indvars.iv.next35.i.2 = add nuw nsw i64 %indvars.iv34.i, 3 ; 2 uses
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %indvars.iv.next35.i.2
  %i.mz = load i64, ptr %i.my, align 8, !tbaa !57
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %indvars.iv.next35.i.2
  store i64 %i.mz, ptr %i.na, align 8, !tbaa !57
  %indvars.iv.next35.i.3 = add nuw nsw i64 %indvars.iv34.i, 4 ; 2 uses
  %exitcond38.not.i.3 = icmp eq i64 %indvars.iv.next35.i.3, %wide.trip.count37.i
  br i1 %exitcond38.not.i.3, label %Wlc_ObjSimAnd.exit, label %.lr.ph31.i, !llvm.loop !148

Wlc_ObjSimAnd.exit:                               ; preds = %.lr.ph.i139.prol.loopexit, %.lr.ph.i139, %.lr.ph31.i.prol.loopexit, %.lr.ph31.i, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.lr.ph79.i.prol.loopexit, %.lr.ph79.i, %.lr.ph81.i.prol.loopexit, %.lr.ph81.i, %.lr.ph83.i.prol.loopexit, %.lr.ph83.i, %middle.block429, %middle.block415, %middle.block401, %middle.block383, %middle.block365, %middle.block347, %.Wlc_ObjSimAnd.exit_crit_edge, %.preheader.i143, %.preheader27.i, %.preheader.i, %.preheader71.i, %.preheader73.i, %.preheader75.i
  %.pre-phi264 = phi i64 [ %.pre263, %.Wlc_ObjSimAnd.exit_crit_edge ], [ %i.dj, %middle.block347 ], [ %i.km, %middle.block415 ], [ %i.dj, %middle.block401 ], [ %i.dj, %middle.block383 ], [ %i.dj, %middle.block365 ], [ %i.dj, %.preheader75.i ], [ %i.km, %.preheader.i143 ], [ %i.km, %.preheader27.i ], [ %i.dj, %.preheader.i ], [ %i.dj, %.preheader71.i ], [ %i.dj, %.preheader73.i ], [ %i.km, %middle.block429 ], [ %i.km, %.lr.ph31.i.prol.loopexit ], [ %i.dj, %.lr.ph83.i.prol.loopexit ], [ %i.dj, %.lr.ph81.i.prol.loopexit ], [ %i.dj, %.lr.ph79.i.prol.loopexit ], [ %i.dj, %.lr.ph.i.prol.loopexit ], [ %i.dj, %.lr.ph83.i ], [ %i.dj, %.lr.ph81.i ], [ %i.dj, %.lr.ph79.i ], [ %i.dj, %.lr.ph.i ], [ %i.km, %.lr.ph31.i ], [ %i.km, %.lr.ph.i139 ], [ %i.km, %.lr.ph.i139.prol.loopexit ]
  %.val104 = load ptr, ptr %i.as, align 8, !tbaa !53
  %i.nb = getelementptr i8, ptr %.val104, i64 8
  %.val104.val = load ptr, ptr %i.nb, align 8, !tbaa !56
  %i.nc = getelementptr inbounds [8 x i8], ptr %.val104.val, i64 %.pre-phi264 ; 20 uses
  %i.nd = load ptr, ptr %i.ai, align 8, !tbaa !62 ; 2 uses
  %i.ne = load i32, ptr %i.q, align 8, !tbaa !35  ; 9 uses
  %i.nf = icmp sgt i32 %i.ne, 0                   ; 2 uses
  br i1 %i.nf, label %.lr.ph.preheader.i.i, label %Vec_MemHashKey.exit.i

.lr.ph.preheader.i.i:                             ; preds = %Wlc_ObjSimAnd.exit
  %i.ng = shl nuw i32 %i.ne, 1                    ; 2 uses
  %smax.i.i = tail call i32 @llvm.smax.i32(i32 %i.ng, i32 1) ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %smax.i.i to i64 ; 5 uses
  %min.iters.check318 = icmp slt i32 %i.ng, 8
  %i.nh = add nsw i32 %smax.i.i, -9
  %i.ni = icmp ult i32 %i.nh, -8
  %or.cond = select i1 %min.iters.check318, i1 true, i1 %i.ni
  br i1 %or.cond, label %.lr.ph.i.i147.preheader, label %vector.ph319

vector.ph319:                                     ; preds = %.lr.ph.preheader.i.i
  %n.vec320 = and i64 %wide.trip.count.i.i, 8     ; 3 uses
  br label %vector.body321

vector.body321:                                   ; preds = %vector.body321, %vector.ph319
  %index322 = phi i64 [ 0, %vector.ph319 ], [ %index.next329, %vector.body321 ] ; 2 uses
  %vec.phi323 = phi <4 x i32> [ zeroinitializer, %vector.ph319 ], [ %i.nn, %vector.body321 ]
  %vec.phi324 = phi <4 x i32> [ zeroinitializer, %vector.ph319 ], [ %i.no, %vector.body321 ]
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %index322 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  %wide.load325 = load <4 x i32>, ptr %i.nj, align 4, !tbaa !15
  %wide.load326 = load <4 x i32>, ptr %i.nk, align 4, !tbaa !15
  %i.nl = mul <4 x i32> %wide.load325, <i32 1699, i32 4177, i32 5147, i32 5647>
  %i.nm = mul <4 x i32> %wide.load326, <i32 6343, i32 7103, i32 7873, i32 8147>
  %i.nn = add <4 x i32> %i.nl, %vec.phi323        ; 2 uses
  %i.no = add <4 x i32> %i.nm, %vec.phi324        ; 2 uses
  %index.next329 = add nuw i64 %index322, 8       ; 2 uses
  %i.np = icmp eq i64 %index.next329, %n.vec320
  br i1 %i.np, label %middle.block330, label %vector.body321, !llvm.loop !149

middle.block330:                                  ; preds = %vector.body321
  %bin.rdx331 = add <4 x i32> %i.no, %i.nn
  %i.nq = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx331) ; 2 uses
  %cmp.n332 = icmp eq i64 %n.vec320, %wide.trip.count.i.i
  br i1 %cmp.n332, label %Vec_MemHashKey.exit.i, label %.lr.ph.i.i147.preheader

.lr.ph.i.i147.preheader:                          ; preds = %.lr.ph.preheader.i.i, %middle.block330
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec320, %middle.block330 ] ; 3 uses
  %.012.i.i148.ph = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %i.nq, %middle.block330 ] ; 2 uses
  %xtraiter469 = and i64 %wide.trip.count.i.i, 3  ; 2 uses
  %lcmp.mod470.not = icmp eq i64 %xtraiter469, 0
  br i1 %lcmp.mod470.not, label %.lr.ph.i.i147.prol.loopexit, label %.lr.ph.i.i147.prol

.lr.ph.i.i147.prol:                               ; preds = %.lr.ph.i.i147.preheader, %.lr.ph.i.i147.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i147.prol ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i147.preheader ] ; 3 uses
  %.012.i.i148.prol = phi i32 [ %i.nx, %.lr.ph.i.i147.prol ], [ %.012.i.i148.ph, %.lr.ph.i.i147.preheader ]
  %prol.iter471 = phi i64 [ %prol.iter471.next, %.lr.ph.i.i147.prol ], [ 0, %.lr.ph.i.i147.preheader ]
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %indvars.iv.i.i.prol
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !15
  %i.nt = and i64 %indvars.iv.i.i.prol, 7
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.nt
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !15
  %i.nw = mul i32 %i.nv, %i.ns
  %i.nx = add i32 %i.nw, %.012.i.i148.prol        ; 3 uses
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter471.next = add i64 %prol.iter471, 1   ; 2 uses
  %prol.iter471.cmp.not = icmp eq i64 %prol.iter471.next, %xtraiter469
  br i1 %prol.iter471.cmp.not, label %.lr.ph.i.i147.prol.loopexit, label %.lr.ph.i.i147.prol, !llvm.loop !150

.lr.ph.i.i147.prol.loopexit:                      ; preds = %.lr.ph.i.i147.prol, %.lr.ph.i.i147.preheader
  %.lcssa441.unr = phi i32 [ poison, %.lr.ph.i.i147.preheader ], [ %i.nx, %.lr.ph.i.i147.prol ]
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i.i147.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i147.prol ]
  %.012.i.i148.unr = phi i32 [ %.012.i.i148.ph, %.lr.ph.i.i147.preheader ], [ %i.nx, %.lr.ph.i.i147.prol ]
  %i.ny = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.nz = icmp ugt i64 %i.ny, -4
  br i1 %i.nz, label %Vec_MemHashKey.exit.i, label %.lr.ph.i.i147

.lr.ph.i.i147:                                    ; preds = %.lr.ph.i.i147.prol.loopexit, %.lr.ph.i.i147
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph.i.i147 ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i147.prol.loopexit ] ; 6 uses
  %.012.i.i148 = phi i32 [ %i.pb, %.lr.ph.i.i147 ], [ %.012.i.i148.unr, %.lr.ph.i.i147.prol.loopexit ]
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %indvars.iv.i.i
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !15
  %i.oc = and i64 %indvars.iv.i.i, 7
  %i.od = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.oc
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !15
  %i.of = mul i32 %i.oe, %i.ob
  %i.og = add i32 %i.of, %.012.i.i148
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %indvars.iv.next.i.i
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !15
  %i.oj = and i64 %indvars.iv.next.i.i, 7
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.oj
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !15
  %i.om = mul i32 %i.ol, %i.oi
  %i.on = add i32 %i.om, %i.og
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %indvars.iv.next.i.i.1
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !15
  %i.oq = and i64 %indvars.iv.next.i.i.1, 7
  %i.or = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.oq
  %i.os = load i32, ptr %i.or, align 4, !tbaa !15
  %i.ot = mul i32 %i.os, %i.op
  %i.ou = add i32 %i.ot, %i.on
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %indvars.iv.next.i.i.2
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !15
  %i.ox = and i64 %indvars.iv.next.i.i.2, 7
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.ox
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !15
  %i.pa = mul i32 %i.oz, %i.ow
  %i.pb = add i32 %i.pa, %i.ou                    ; 2 uses
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %Vec_MemHashKey.exit.i, label %.lr.ph.i.i147, !llvm.loop !151

Vec_MemHashKey.exit.i:                            ; preds = %.lr.ph.i.i147.prol.loopexit, %.lr.ph.i.i147, %middle.block330, %Wlc_ObjSimAnd.exit
  %.0.lcssa.i.i = phi i32 [ 0, %Wlc_ObjSimAnd.exit ], [ %i.nq, %middle.block330 ], [ %.lcssa441.unr, %.lr.ph.i.i147.prol.loopexit ], [ %i.pb, %.lr.ph.i.i147 ]
  %i.pc = getelementptr i8, ptr %i.nd, i64 4
  %.val.i.i = load i32, ptr %i.pc, align 4, !tbaa !29 ; 2 uses
  %i.pd = urem i32 %.0.lcssa.i.i, %.val.i.i
  %i.pe = getelementptr i8, ptr %i.nd, i64 8
  %.val16.i = load ptr, ptr %i.pe, align 8, !tbaa !31 ; 2 uses
  %i.pf = sext i32 %i.pd to i64
  %i.pg = getelementptr inbounds [4 x i8], ptr %.val16.i, i64 %i.pf
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !15 ; 5 uses
  %.not17.i = icmp eq i32 %i.ph, -1
  br i1 %.not17.i, label %Vec_MemHashLookup.exit.thread, label %.lr.ph.i144

.lr.ph.i144:                                      ; preds = %Vec_MemHashKey.exit.i
  %i.pi = load ptr, ptr %i.cx, align 8, !tbaa !64 ; 2 uses
  %i.pj = load i32, ptr %i.r, align 8, !tbaa !65  ; 2 uses
  %i.pk = load i32, ptr %i.s, align 4, !tbaa !67  ; 2 uses
  %i.pl = sext i32 %i.ne to i64
  %i.pm = shl nsw i64 %i.pl, 3                    ; 2 uses
  %i.pn = ashr i32 %i.ph, %i.pj
  %i.po = sext i32 %i.pn to i64
  %i.pp = getelementptr inbounds [8 x i8], ptr %i.pi, i64 %i.po
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !66
  %i.pr = and i32 %i.ph, %i.pk
  %i.ps = mul nsw i32 %i.pr, %i.ne
  %i.pt = sext i32 %i.ps to i64
  %i.pu = getelementptr inbounds [8 x i8], ptr %i.pq, i64 %i.pt
  %bcmp.i216 = tail call i32 @bcmp(ptr %i.pu, ptr readonly %i.nc, i64 %i.pm)
  %.not15.i217 = icmp eq i32 %bcmp.i216, 0
  br i1 %.not15.i217, label %Vec_MemHashLookup.exit, label %.lr.ph218

.lr.ph218:                                        ; preds = %.lr.ph.i144
  %i.pv = load ptr, ptr %i.an, align 8, !tbaa !63
  %i.pw = getelementptr i8, ptr %i.pv, i64 8
  %.val.i145 = load ptr, ptr %i.pw, align 8, !tbaa !31
  br label %bb.r

bb.q:                                             ; preds = %bb.r
  %i.px = ashr i32 %i.qi, %i.pj
  %i.py = sext i32 %i.px to i64
  %i.pz = getelementptr inbounds [8 x i8], ptr %i.pi, i64 %i.py
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !66
  %i.qb = and i32 %i.qi, %i.pk
  %i.qc = mul nsw i32 %i.qb, %i.ne
  %i.qd = sext i32 %i.qc to i64
  %i.qe = getelementptr inbounds [8 x i8], ptr %i.qa, i64 %i.qd
  %bcmp.i = tail call i32 @bcmp(ptr %i.qe, ptr readonly %i.nc, i64 %i.pm)
  %.not15.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not15.i, label %Vec_MemHashLookup.exit, label %bb.r, !llvm.loop !2

bb.r:                                             ; preds = %.lr.ph218, %bb.q
  %i.qf = phi i32 [ %i.ph, %.lr.ph218 ], [ %i.qi, %bb.q ]
  %i.qg = sext i32 %i.qf to i64
  %i.qh = getelementptr inbounds [4 x i8], ptr %.val.i145, i64 %i.qg
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !15 ; 5 uses
  %.not.i146 = icmp eq i32 %i.qi, -1
  br i1 %.not.i146, label %Vec_MemHashLookup.exit.thread, label %bb.q, !llvm.loop !2

Vec_MemHashLookup.exit:                           ; preds = %bb.q, %.lr.ph.i144
  %.pr = phi i32 [ %i.ph, %.lr.ph.i144 ], [ %i.qi, %bb.q ] ; 2 uses
  %i.qj = icmp sgt i32 %.pr, -1
  br i1 %i.qj, label %bb.s, label %Vec_MemHashLookup.exit.thread

bb.s:                                             ; preds = %Vec_MemHashLookup.exit
  %i.qk = shl nuw nsw i32 %.pr, 1
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %.val119, i64 %indvars.iv250
  store i32 %i.qk, ptr %i.ql, align 4, !tbaa !15
  %.pre = load i32, ptr %i.d, align 8, !tbaa !71
  br label %bb.w

Vec_MemHashLookup.exit.thread:                    ; preds = %bb.r, %Vec_MemHashKey.exit.i, %Vec_MemHashLookup.exit
  %i.qm = load i64, ptr %i.nc, align 8, !tbaa !57 ; 3 uses
  %i.qn = xor i64 %i.qm, -1
  store i64 %i.qn, ptr %i.nc, align 8, !tbaa !57
  br i1 %i.nf, label %.lr.ph.preheader.i.i166, label %Vec_MemHashKey.exit.i154

.lr.ph.preheader.i.i166:                          ; preds = %Vec_MemHashLookup.exit.thread
  %i.qo = shl nuw i32 %i.ne, 1                    ; 2 uses
  %smax.i.i167 = tail call i32 @llvm.smax.i32(i32 %i.qo, i32 1) ; 2 uses
  %wide.trip.count.i.i168 = zext nneg i32 %smax.i.i167 to i64 ; 5 uses
  %min.iters.check = icmp slt i32 %i.qo, 8
  %i.qp = add nsw i32 %smax.i.i167, -9
  %i.qq = icmp ult i32 %i.qp, -8
  %or.cond434 = select i1 %min.iters.check, i1 true, i1 %i.qq
  br i1 %or.cond434, label %.lr.ph.i.i169.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i166
  %n.vec = and i64 %wide.trip.count.i.i168, 8     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.qv, %vector.body ]
  %vec.phi312 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.qw, %vector.body ]
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %index ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 16
  %wide.load = load <4 x i32>, ptr %i.qr, align 4, !tbaa !15
  %wide.load313 = load <4 x i32>, ptr %i.qs, align 4, !tbaa !15
  %i.qt = mul <4 x i32> %wide.load, <i32 1699, i32 4177, i32 5147, i32 5647>
  %i.qu = mul <4 x i32> %wide.load313, <i32 6343, i32 7103, i32 7873, i32 8147>
  %i.qv = add <4 x i32> %i.qt, %vec.phi           ; 2 uses
  %i.qw = add <4 x i32> %i.qu, %vec.phi312        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.qx = icmp eq i64 %index.next, %n.vec
  br i1 %i.qx, label %middle.block, label %vector.body, !llvm.loop !152

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.qw, %i.qv
  %i.qy = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i168
  br i1 %cmp.n, label %Vec_MemHashKey.exit.i154, label %.lr.ph.i.i169.preheader

.lr.ph.i.i169.preheader:                          ; preds = %.lr.ph.preheader.i.i166, %middle.block
  %indvars.iv.i.i170.ph = phi i64 [ 0, %.lr.ph.preheader.i.i166 ], [ %n.vec, %middle.block ] ; 3 uses
  %.012.i.i171.ph = phi i32 [ 0, %.lr.ph.preheader.i.i166 ], [ %i.qy, %middle.block ] ; 2 uses
  %xtraiter472 = and i64 %wide.trip.count.i.i168, 3 ; 2 uses
  %lcmp.mod473.not = icmp eq i64 %xtraiter472, 0
  br i1 %lcmp.mod473.not, label %.lr.ph.i.i169.prol.loopexit, label %.lr.ph.i.i169.prol

.lr.ph.i.i169.prol:                               ; preds = %.lr.ph.i.i169.preheader, %.lr.ph.i.i169.prol
  %indvars.iv.i.i170.prol = phi i64 [ %indvars.iv.next.i.i172.prol, %.lr.ph.i.i169.prol ], [ %indvars.iv.i.i170.ph, %.lr.ph.i.i169.preheader ] ; 3 uses
  %.012.i.i171.prol = phi i32 [ %i.rf, %.lr.ph.i.i169.prol ], [ %.012.i.i171.ph, %.lr.ph.i.i169.preheader ]
  %prol.iter474 = phi i64 [ %prol.iter474.next, %.lr.ph.i.i169.prol ], [ 0, %.lr.ph.i.i169.preheader ]
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %indvars.iv.i.i170.prol
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !15
  %i.rb = and i64 %indvars.iv.i.i170.prol, 7
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.rb
  %i.rd = load i32, ptr %i.rc, align 4, !tbaa !15
  %i.re = mul i32 %i.rd, %i.ra
  %i.rf = add i32 %i.re, %.012.i.i171.prol        ; 3 uses
  %indvars.iv.next.i.i172.prol = add nuw nsw i64 %indvars.iv.i.i170.prol, 1 ; 2 uses
  %prol.iter474.next = add i64 %prol.iter474, 1   ; 2 uses
  %prol.iter474.cmp.not = icmp eq i64 %prol.iter474.next, %xtraiter472
  br i1 %prol.iter474.cmp.not, label %.lr.ph.i.i169.prol.loopexit, label %.lr.ph.i.i169.prol, !llvm.loop !153

.lr.ph.i.i169.prol.loopexit:                      ; preds = %.lr.ph.i.i169.prol, %.lr.ph.i.i169.preheader
  %.lcssa446.unr = phi i32 [ poison, %.lr.ph.i.i169.preheader ], [ %i.rf, %.lr.ph.i.i169.prol ]
  %indvars.iv.i.i170.unr = phi i64 [ %indvars.iv.i.i170.ph, %.lr.ph.i.i169.preheader ], [ %indvars.iv.next.i.i172.prol, %.lr.ph.i.i169.prol ]
  %.012.i.i171.unr = phi i32 [ %.012.i.i171.ph, %.lr.ph.i.i169.preheader ], [ %i.rf, %.lr.ph.i.i169.prol ]
  %i.rg = sub nsw i64 %indvars.iv.i.i170.ph, %wide.trip.count.i.i168
  %i.rh = icmp ugt i64 %i.rg, -4
  br i1 %i.rh, label %Vec_MemHashKey.exit.i154, label %.lr.ph.i.i169

.lr.ph.i.i169:                                    ; preds = %.lr.ph.i.i169.prol.loopexit, %.lr.ph.i.i169
  %indvars.iv.i.i170 = phi i64 [ %indvars.iv.next.i.i172.3, %.lr.ph.i.i169 ], [ %indvars.iv.i.i170.unr, %.lr.ph.i.i169.prol.loopexit ] ; 6 uses
  %.012.i.i171 = phi i32 [ %i.sj, %.lr.ph.i.i169 ], [ %.012.i.i171.unr, %.lr.ph.i.i169.prol.loopexit ]
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %indvars.iv.i.i170
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !15
  %i.rk = and i64 %indvars.iv.i.i170, 7
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.rk
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !15
  %i.rn = mul i32 %i.rm, %i.rj
  %i.ro = add i32 %i.rn, %.012.i.i171
  %indvars.iv.next.i.i172 = add nuw nsw i64 %indvars.iv.i.i170, 1 ; 2 uses
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %indvars.iv.next.i.i172
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !15
  %i.rr = and i64 %indvars.iv.next.i.i172, 7
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.rr
  %i.rt = load i32, ptr %i.rs, align 4, !tbaa !15
  %i.ru = mul i32 %i.rt, %i.rq
  %i.rv = add i32 %i.ru, %i.ro
  %indvars.iv.next.i.i172.1 = add nuw nsw i64 %indvars.iv.i.i170, 2 ; 2 uses
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %indvars.iv.next.i.i172.1
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !15
  %i.ry = and i64 %indvars.iv.next.i.i172.1, 7
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.ry
  %i.sa = load i32, ptr %i.rz, align 4, !tbaa !15
  %i.sb = mul i32 %i.sa, %i.rx
  %i.sc = add i32 %i.sb, %i.rv
  %indvars.iv.next.i.i172.2 = add nuw nsw i64 %indvars.iv.i.i170, 3 ; 2 uses
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %indvars.iv.next.i.i172.2
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !15
  %i.sf = and i64 %indvars.iv.next.i.i172.2, 7
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.sf
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !15
  %i.si = mul i32 %i.sh, %i.se
  %i.sj = add i32 %i.si, %i.sc                    ; 2 uses
  %indvars.iv.next.i.i172.3 = add nuw nsw i64 %indvars.iv.i.i170, 4 ; 2 uses
  %exitcond.not.i.i173.3 = icmp eq i64 %indvars.iv.next.i.i172.3, %wide.trip.count.i.i168
  br i1 %exitcond.not.i.i173.3, label %Vec_MemHashKey.exit.i154, label %.lr.ph.i.i169, !llvm.loop !154

Vec_MemHashKey.exit.i154:                         ; preds = %.lr.ph.i.i169.prol.loopexit, %.lr.ph.i.i169, %middle.block, %Vec_MemHashLookup.exit.thread
  %.0.lcssa.i.i155 = phi i32 [ 0, %Vec_MemHashLookup.exit.thread ], [ %i.qy, %middle.block ], [ %.lcssa446.unr, %.lr.ph.i.i169.prol.loopexit ], [ %i.sj, %.lr.ph.i.i169 ]
  %i.sk = urem i32 %.0.lcssa.i.i155, %.val.i.i
  %i.sl = sext i32 %i.sk to i64
  %i.sm = getelementptr inbounds [4 x i8], ptr %.val16.i, i64 %i.sl
  %i.sn = load i32, ptr %i.sm, align 4, !tbaa !15 ; 5 uses
  %.not17.i158 = icmp eq i32 %i.sn, -1
  br i1 %.not17.i158, label %Vec_MemHashLookup.exit174.thread, label %.lr.ph.i159

.lr.ph.i159:                                      ; preds = %Vec_MemHashKey.exit.i154
  %i.so = load ptr, ptr %i.cx, align 8, !tbaa !64 ; 2 uses
  %i.sp = load i32, ptr %i.r, align 8, !tbaa !65  ; 2 uses
  %i.sq = load i32, ptr %i.s, align 4, !tbaa !67  ; 2 uses
  %i.sr = sext i32 %i.ne to i64
  %i.ss = shl nsw i64 %i.sr, 3                    ; 2 uses
  %i.st = ashr i32 %i.sn, %i.sp
  %i.su = sext i32 %i.st to i64
  %i.sv = getelementptr inbounds [8 x i8], ptr %i.so, i64 %i.su
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !66
  %i.sx = and i32 %i.sn, %i.sq
  %i.sy = mul nsw i32 %i.sx, %i.ne
  %i.sz = sext i32 %i.sy to i64
  %i.ta = getelementptr inbounds [8 x i8], ptr %i.sw, i64 %i.sz
  %bcmp.i161219 = tail call i32 @bcmp(ptr %i.ta, ptr nonnull readonly %i.nc, i64 %i.ss)
  %.not15.i162220 = icmp eq i32 %bcmp.i161219, 0
  br i1 %.not15.i162220, label %Vec_MemHashLookup.exit174, label %.lr.ph221

.lr.ph221:                                        ; preds = %.lr.ph.i159
  %i.tb = load ptr, ptr %i.an, align 8, !tbaa !63
  %i.tc = getelementptr i8, ptr %i.tb, i64 8
  %.val.i163 = load ptr, ptr %i.tc, align 8, !tbaa !31
  br label %bb.u

bb.t:                                             ; preds = %bb.u
  %i.td = ashr i32 %i.to, %i.sp
  %i.te = sext i32 %i.td to i64
  %i.tf = getelementptr inbounds [8 x i8], ptr %i.so, i64 %i.te
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !66
  %i.th = and i32 %i.to, %i.sq
  %i.ti = mul nsw i32 %i.th, %i.ne
  %i.tj = sext i32 %i.ti to i64
  %i.tk = getelementptr inbounds [8 x i8], ptr %i.tg, i64 %i.tj
  %bcmp.i161 = tail call i32 @bcmp(ptr %i.tk, ptr nonnull readonly %i.nc, i64 %i.ss)
  %.not15.i162 = icmp eq i32 %bcmp.i161, 0
  br i1 %.not15.i162, label %Vec_MemHashLookup.exit174, label %bb.u, !llvm.loop !2

bb.u:                                             ; preds = %.lr.ph221, %bb.t
  %i.tl = phi i32 [ %i.sn, %.lr.ph221 ], [ %i.to, %bb.t ]
  %i.tm = sext i32 %i.tl to i64
  %i.tn = getelementptr inbounds [4 x i8], ptr %.val.i163, i64 %i.tm
  %i.to = load i32, ptr %i.tn, align 4, !tbaa !15 ; 5 uses
  %.not.i164 = icmp eq i32 %i.to, -1
  br i1 %.not.i164, label %Vec_MemHashLookup.exit174.thread, label %bb.t, !llvm.loop !2

Vec_MemHashLookup.exit174.thread:                 ; preds = %bb.u, %Vec_MemHashKey.exit.i154
  store i64 %i.qm, ptr %i.nc, align 8, !tbaa !57
  br label %bb.w

Vec_MemHashLookup.exit174:                        ; preds = %bb.t, %.lr.ph.i159
  %i.tp = phi i32 [ %i.sn, %.lr.ph.i159 ], [ %i.to, %bb.t ] ; 2 uses
  store i64 %i.qm, ptr %i.nc, align 8, !tbaa !57
  %i.tq = icmp sgt i32 %i.tp, -1
  br i1 %i.tq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %Vec_MemHashLookup.exit174
  %i.tr = shl nuw nsw i32 %i.tp, 1
  %i.ts = or disjoint i32 %i.tr, 1
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %.val119, i64 %indvars.iv250
  store i32 %i.ts, ptr %i.tt, align 4, !tbaa !15
  br label %bb.w

bb.w:                                             ; preds = %Vec_MemHashLookup.exit174.thread, %Vec_MemHashLookup.exit174, %bb.j, %bb.v, %bb.s
  %i.tu = phi i32 [ %i.cz, %Vec_MemHashLookup.exit174 ], [ %i.cz, %bb.j ], [ %i.cz, %bb.v ], [ %.pre, %bb.s ], [ %i.cz, %Vec_MemHashLookup.exit174.thread ] ; 2 uses
  %indvars.iv.next251 = add nuw nsw i64 %indvars.iv250, 1 ; 2 uses
  %i.tv = sext i32 %i.tu to i64
  %i.tw = icmp slt i64 %indvars.iv.next251, %i.tv
  br i1 %i.tw, label %bb.j, label %.critedge6, !llvm.loop !155

.critedge6:                                       ; preds = %bb.w, %.critedge2
  %i.tx = load ptr, ptr %i.ai, align 8, !tbaa !75 ; 3 uses
  %i.ty = icmp eq ptr %i.tx, null
  br i1 %i.ty, label %Vec_IntFreeP.exit.i, label %bb.x

bb.x:                                             ; preds = %.critedge6
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tx, i64 8
  %i.ua = load ptr, ptr %i.tz, align 8, !tbaa !31 ; 2 uses
  %.not.i.i181 = icmp eq ptr %i.ua, null
  br i1 %.not.i.i181, label %bb.y, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.x
end_hunk_0

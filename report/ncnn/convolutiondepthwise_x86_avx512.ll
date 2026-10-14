Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolutiondepthwise_x86_avx512?download=true
inline.NumInlined: 230
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZNK4ncnn31ConvolutionDepthWise_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.oe = icmp eq i32 %i.od, 0
  %i.of = select i1 %i.oe, i32 4, i32 1
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cq, %bb.cr, %bb.cs, %.thread426
  %.0184 = phi i32 [ 1, %.thread426 ], [ %i.nx, %bb.cs ], [ %i.nx, %bb.cr ], [ %i.nx, %bb.cq ] ; 3 uses
  %.0183 = phi i32 [ 1, %.thread426 ], [ %i.of, %bb.cs ], [ 8, %bb.cr ], [ 16, %bb.cq ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  %i.og = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.oh = load ptr, ptr %i.af, align 8, !tbaa !19 ; 2 uses
  %i.oi = load <2 x ptr>, ptr %4, align 16, !tbaa !66
  store <2 x ptr> %i.oi, ptr %11, align 16, !tbaa !66
  %i.oj = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ok = load i64, ptr %i.ag, align 16, !tbaa !67
  store i64 %i.ok, ptr %i.oj, align 16, !tbaa !67
  %i.ol = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  %i.om = load i32, ptr %i.ah, align 8, !tbaa !68
  store i32 %i.om, ptr %i.ol, align 8, !tbaa !68
  %i.on = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 4 uses
  %i.oo = load ptr, ptr %i.ai, align 16, !tbaa !20
  store ptr %i.oo, ptr %i.on, align 16, !tbaa !20
  %i.op = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.or = load <4 x i32>, ptr %i.aj, align 8, !tbaa !69
  store <4 x i32> %i.or, ptr %i.op, align 8, !tbaa !69
  %i.os = getelementptr inbounds nuw i8, ptr %11, i64 56 ; 2 uses
  %i.ot = load i32, ptr %i.al, align 8, !tbaa !70
  store i32 %i.ot, ptr %i.os, align 8, !tbaa !70
  %i.ou = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 3 uses
  %i.ov = load i64, ptr %i.am, align 16, !tbaa !22
  store i64 %i.ov, ptr %i.ou, align 16, !tbaa !22
  %.not.i351 = icmp eq ptr %i.oh, null
  br i1 %.not.i351, label %_ZN4ncnn3Mat6addrefEv.exit, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ow = atomicrmw add ptr %i.oh, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit

_ZN4ncnn3Mat6addrefEv.exit:                       ; preds = %bb.cu, %bb.ct
  %i.ox = icmp sgt i32 %i.v, %.0184
  br i1 %i.ox, label %bb.cv, label %bb.cy

bb.cv:                                            ; preds = %_ZN4ncnn3Mat6addrefEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %12, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !88
  %i.oy = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !89
  %i.pa = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.oz, ptr %i.pa, align 8, !tbaa !79
  invoke void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef %.0184, ptr noundef nonnull align 8 dereferenceable(64) %12)
          to label %bb.cw unwind label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.pb = load ptr, ptr %11, align 16, !tbaa !21
  %i.pc = icmp eq ptr %i.pb, null
  br i1 %i.pc, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit.thread:                ; preds = %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  br label %bb.fe

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.cw
  %i.pd = load i64, ptr %i.ou, align 16, !tbaa !22
  %i.pe = load i32, ptr %i.os, align 8, !tbaa !70
  %i.pf = sext i32 %i.pe to i64
  %i.pg = mul i64 %i.pd, %i.pf
  %i.ph = icmp eq i64 %i.pg, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  br i1 %i.ph, label %bb.fe, label %bb.cy

bb.cx:                                            ; preds = %bb.cv
  %i.pi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  br label %bb.fl

bb.cy:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit, %_ZN4ncnn3Mat6addrefEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  %i.pj = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !19 ; 2 uses
  %i.pm = load <2 x ptr>, ptr %2, align 8, !tbaa !66
  store <2 x ptr> %i.pm, ptr %13, align 16, !tbaa !66
  %i.pn = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.po = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.pp = load i64, ptr %i.po, align 8, !tbaa !67
  store i64 %i.pp, ptr %i.pn, align 16, !tbaa !67
  %i.pq = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 3 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ps = load i32, ptr %i.pr, align 8, !tbaa !68
  store i32 %i.ps, ptr %i.pq, align 8, !tbaa !68
  %i.pt = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 5 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !20
  store ptr %i.pv, ptr %i.pt, align 16, !tbaa !20
  %i.pw = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 3 uses
  %i.px = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %13, i64 44
  %i.pz = load <4 x i32>, ptr %i.px, align 8, !tbaa !69
  store <4 x i32> %i.pz, ptr %i.pw, align 8, !tbaa !69
  %i.qa = getelementptr inbounds nuw i8, ptr %13, i64 56 ; 3 uses
  %i.qb = load i32, ptr %i.cd, align 8, !tbaa !70
  store i32 %i.qb, ptr %i.qa, align 8, !tbaa !70
  %i.qc = getelementptr inbounds nuw i8, ptr %13, i64 64 ; 4 uses
  %i.qd = load i64, ptr %i.cb, align 8, !tbaa !22
  store i64 %i.qd, ptr %i.qc, align 16, !tbaa !22
  %.not.i352 = icmp eq ptr %i.pl, null
  br i1 %.not.i352, label %_ZN4ncnn3Mat6addrefEv.exit353, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.qe = atomicrmw add ptr %i.pl, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit353

_ZN4ncnn3Mat6addrefEv.exit353:                    ; preds = %bb.cz, %bb.cy
  %i.qf = icmp samesign ult i32 %.0183, %.0202    ; 2 uses
  br i1 %i.qf, label %bb.da, label %bb.dd

bb.da:                                            ; preds = %_ZN4ncnn3Mat6addrefEv.exit353
  %i.qg = load i32, ptr %i.b, align 4, !tbaa !69
  %i.qh = load i32, ptr %i.c, align 4, !tbaa !69
  %i.qi = load i32, ptr %i.bv, align 8, !tbaa !60
  %i.qj = sdiv i32 %i.qi, %.0183
  %i.qk = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bt, i1 true)
  %i.ql = lshr i64 %i.bu, %i.qk
  %i.qm = zext nneg i32 %.0183 to i64
  %i.qn = mul i64 %i.ql, %i.qm
  %i.qo = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !89
  invoke void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %13, i32 noundef %i.qg, i32 noundef %i.qh, i32 noundef %i.qj, i64 noundef %i.qn, i32 noundef %.0183, ptr noundef %i.qp)
          to label %bb.db unwind label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.qq = load ptr, ptr %13, align 16, !tbaa !21
  %i.qr = icmp eq ptr %i.qq, null
  br i1 %i.qr, label %_ZNK4ncnn3Mat5emptyEv.exit347.thread, label %_ZNK4ncnn3Mat5emptyEv.exit347

_ZNK4ncnn3Mat5emptyEv.exit347:                    ; preds = %bb.db
  %i.qs = load i64, ptr %i.qc, align 16, !tbaa !22
  %i.qt = load i32, ptr %i.qa, align 8, !tbaa !70
  %i.qu = sext i32 %i.qt to i64
  %i.qv = mul i64 %i.qs, %i.qu
  %i.qw = icmp eq i64 %i.qv, 0
  br i1 %i.qw, label %_ZNK4ncnn3Mat5emptyEv.exit347.thread, label %bb.dd

bb.dc:                                            ; preds = %bb.en, %bb.eg, %bb.da
  %i.qx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

bb.dd:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit347, %_ZN4ncnn3Mat6addrefEv.exit353
  %i.qy = load i32, ptr %i.cl, align 8, !tbaa !59
  %.not251549 = icmp sgt i32 %i.qy, 0
  br i1 %.not251549, label %.lr.ph552, label %._crit_edge553

.lr.ph552:                                        ; preds = %bb.dd
  %i.qz = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.rb = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.rc = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 3 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.re = getelementptr inbounds nuw i8, ptr %14, i64 56
  %i.rf = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.rg = insertelement <2 x i32> poison, i32 %.0184, i64 0
  %i.rh = insertelement <2 x i32> %i.rg, i32 %.0183, i64 1 ; 2 uses
  %i.ri = sdiv <2 x i32> %i.nm, %i.rh             ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.rl = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.rm = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 3 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.ro = getelementptr inbounds nuw i8, ptr %15, i64 56
  %i.rp = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.rr = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.rs = extractelement <2 x i32> %i.ri, i64 0
  %i.rt = extractelement <2 x i32> %i.ri, i64 1
  br label %bb.df

bb.de:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit287
  %indvars.iv.next573 = add nuw nsw i64 %indvars.iv572, 1 ; 2 uses
  %i.ru = load i32, ptr %i.cl, align 8, !tbaa !59
  %i.rv = sext i32 %i.ru to i64
  %.not251 = icmp slt i64 %indvars.iv.next573, %i.rv
  br i1 %.not251, label %bb.df, label %._crit_edge553, !llvm.loop !123

bb.df:                                            ; preds = %.lr.ph552, %bb.de
  %indvars.iv572 = phi i64 [ 0, %.lr.ph552 ], [ %indvars.iv.next573, %bb.de ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13
  %i.rw = trunc i64 %indvars.iv572 to i32
  %i.rx = load ptr, ptr %11, align 16, !tbaa !21, !noalias !128
  %i.ry = load i64, ptr %i.ou, align 16, !tbaa !22, !noalias !128
  %i.rz = load i64, ptr %i.oj, align 16, !tbaa !67, !noalias !128 ; 3 uses
  %i.sa = load i32, ptr %i.ol, align 8, !tbaa !68, !noalias !128
  %i.sb = load ptr, ptr %i.on, align 16, !tbaa !20, !noalias !128
  store ptr null, ptr %i.qz, align 8, !tbaa !19
  store i64 %i.rz, ptr %i.ra, align 8, !tbaa !67
  store i32 %i.sa, ptr %i.rb, align 8, !tbaa !68
  store ptr %i.sb, ptr %i.rc, align 8, !tbaa !20
  store i32 %i.rs, ptr %i.re, align 8, !tbaa !70
  %i.sc = load <4 x i32>, ptr %i.op, align 8, !tbaa !69, !noalias !128 ; 3 uses
  %17 = load <4 x i32>, ptr %i.oq, align 4
  %18 = shufflevector <4 x i32> %17, <4 x i32> poison, <2 x i32> <i32 0, i32 poison>
  store <4 x i32> %i.sc, ptr %i.rd, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #13
  %i.sd = trunc i64 %indvars.iv572 to i32
  %i.se = insertelement <2 x i32> poison, i32 %i.rw, i64 0
  %i.sf = insertelement <2 x i32> %i.se, i32 %i.sd, i64 1
  %i.sg = mul <2 x i32> %i.nm, %i.sf
  %i.sh = sdiv <2 x i32> %i.sg, %i.rh             ; 2 uses
  %i.si = extractelement <2 x i32> %i.sh, i64 0
  %i.sj = sext i32 %i.si to i64
  %i.sk = mul i64 %i.ry, %i.sj
  %i.sl = mul i64 %i.sk, %i.rz
  %i.sm = getelementptr inbounds nuw i8, ptr %i.rx, i64 %i.sl
  store ptr %i.sm, ptr %14, align 8, !tbaa !21
  %i.sn = load ptr, ptr %13, align 16, !tbaa !21, !noalias !129
  %i.so = load i64, ptr %i.qc, align 16, !tbaa !22, !noalias !129
  %i.sp = extractelement <2 x i32> %i.sh, i64 1
  %i.sq = sext i32 %i.sp to i64
  %i.sr = mul i64 %i.so, %i.sq
  %i.ss = load i64, ptr %i.pn, align 16, !tbaa !67, !noalias !129 ; 3 uses
  %i.st = mul i64 %i.sr, %i.ss
  %i.su = getelementptr inbounds nuw i8, ptr %i.sn, i64 %i.st
  %i.sv = load i32, ptr %i.pq, align 8, !tbaa !68, !noalias !129
  %i.sw = load ptr, ptr %i.pt, align 16, !tbaa !20, !noalias !129 ; 2 uses
  store ptr %i.su, ptr %15, align 8, !tbaa !21
  store ptr null, ptr %i.rj, align 8, !tbaa !19
  store i64 %i.ss, ptr %i.rk, align 8, !tbaa !67
  store i32 %i.sv, ptr %i.rl, align 8, !tbaa !68
  store ptr %i.sw, ptr %i.rm, align 8, !tbaa !20
  store i32 %i.rt, ptr %i.ro, align 8, !tbaa !70
  %i.sx = load <4 x i32>, ptr %i.pw, align 8, !tbaa !69, !noalias !129 ; 3 uses
  %i.sy = load i32, ptr %i.py, align 4, !tbaa !75, !noalias !129
  %i.sz = insertelement <2 x i32> %18, i32 %i.sy, i64 1
  %i.ta = sext <2 x i32> %i.sz to <2 x i64>
  %i.tb = shufflevector <4 x i32> %i.sc, <4 x i32> %i.sx, <2 x i32> <i32 2, i32 6>
  %i.tc = sext <2 x i32> %i.tb to <2 x i64>
  %i.td = mul nsw <2 x i64> %i.tc, %i.ta
  %i.te = shufflevector <4 x i32> %i.sc, <4 x i32> %i.sx, <2 x i32> <i32 3, i32 7>
  %i.tf = sext <2 x i32> %i.te to <2 x i64>
  %i.tg = mul <2 x i64> %i.td, %i.tf
  %i.th = insertelement <2 x i64> poison, i64 %i.rz, i64 0
  %i.ti = insertelement <2 x i64> %i.th, i64 %i.ss, i64 1 ; 2 uses
  %i.tj = mul <2 x i64> %i.tg, %i.ti
  %i.tk = add <2 x i64> %i.tj, splat (i64 15)
  %i.tl = and <2 x i64> %i.tk, splat (i64 -16)
  %i.tm = udiv <2 x i64> %i.tl, %i.ti             ; 2 uses
  %i.tn = extractelement <2 x i64> %i.tm, i64 0
  store i64 %i.tn, ptr %i.rf, align 8, !tbaa !22
  %i.to = extractelement <2 x i64> %i.tm, i64 1
  store i64 %i.to, ptr %i.rp, align 8, !tbaa !22
  store <4 x i32> %i.sx, ptr %i.rn, align 8, !tbaa !69
  %i.tp = load ptr, ptr %i.rq, align 8, !tbaa !26
  %i.tq = getelementptr inbounds nuw [8 x i8], ptr %i.tp, i64 %indvars.iv572
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !73 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %16, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !88
  store ptr %i.sw, ptr %i.rr, align 8, !tbaa !79
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !13
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 56
  %i.tu = load ptr, ptr %i.tt, align 8
  %i.tv = invoke noundef i32 %i.tu(ptr noundef nonnull align 8 dereferenceable(208) %i.tr, ptr noundef nonnull align 8 dereferenceable(72) %14, ptr noundef nonnull align 8 dereferenceable(72) %15, ptr noundef nonnull align 8 dereferenceable(64) %16)
          to label %bb.dg unwind label %bb.dt     ; 2 uses

bb.dg:                                            ; preds = %bb.df
  %.not250 = icmp eq i32 %i.tv, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  %i.tw = load ptr, ptr %i.rj, align 8, !tbaa !19 ; 2 uses
  %.not.i290 = icmp eq ptr %i.tw, null
  br i1 %.not.i290, label %_ZN4ncnn3MatD2Ev.exit288, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.tx = atomicrmw add ptr %i.tw, i32 -1 acq_rel, align 4
  %i.ty = icmp eq i32 %i.tx, 1
  br i1 %i.ty, label %bb.di, label %_ZN4ncnn3MatD2Ev.exit288

bb.di:                                            ; preds = %bb.dh
  %i.tz = load ptr, ptr %i.rm, align 8, !tbaa !20 ; 3 uses
  %.not3.i291 = icmp eq ptr %i.tz, null
  %i.ua = load ptr, ptr %15, align 8, !tbaa !21   ; 3 uses
  br i1 %.not3.i291, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.ub = load ptr, ptr %i.tz, align 8, !tbaa !13
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 24
  %i.ud = load ptr, ptr %i.uc, align 8
  invoke void %i.ud(ptr noundef nonnull align 8 dereferenceable(8) %i.tz, ptr noundef %i.ua)
          to label %_ZN4ncnn3MatD2Ev.exit288 unwind label %bb.dm, !inline_history !0

bb.dk:                                            ; preds = %bb.di
  %.not.i341 = icmp eq ptr %i.ua, null
  br i1 %.not.i341, label %_ZN4ncnn3MatD2Ev.exit288, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  call void @free(ptr noundef nonnull %i.ua) #13
  br label %_ZN4ncnn3MatD2Ev.exit288

bb.dm:                                            ; preds = %bb.dj
  %i.ue = landingpad { ptr, i32 }
          catch ptr null
  %i.uf = extractvalue { ptr, i32 } %i.ue, 0
  call void @__clang_call_terminate(ptr %i.uf) #23
  unreachable

_ZN4ncnn3MatD2Ev.exit288:                         ; preds = %bb.dh, %bb.dg, %bb.dj, %bb.dk, %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  %i.ug = load ptr, ptr %i.qz, align 8, !tbaa !19 ; 2 uses
  %.not.i294 = icmp eq ptr %i.ug, null
  br i1 %.not.i294, label %_ZN4ncnn3MatD2Ev.exit287, label %bb.dn

bb.dn:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit288
  %i.uh = atomicrmw add ptr %i.ug, i32 -1 acq_rel, align 4
  %i.ui = icmp eq i32 %i.uh, 1
  br i1 %i.ui, label %bb.do, label %_ZN4ncnn3MatD2Ev.exit287

bb.do:                                            ; preds = %bb.dn
  %i.uj = load ptr, ptr %i.rc, align 8, !tbaa !20 ; 3 uses
  %.not3.i295 = icmp eq ptr %i.uj, null
  %i.uk = load ptr, ptr %14, align 8, !tbaa !21   ; 3 uses
  br i1 %.not3.i295, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.ul = load ptr, ptr %i.uj, align 8, !tbaa !13
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 24
  %i.un = load ptr, ptr %i.um, align 8
  invoke void %i.un(ptr noundef nonnull align 8 dereferenceable(8) %i.uj, ptr noundef %i.uk)
          to label %_ZN4ncnn3MatD2Ev.exit287 unwind label %bb.ds, !inline_history !0

bb.dq:                                            ; preds = %bb.do
  %.not.i339 = icmp eq ptr %i.uk, null
  br i1 %.not.i339, label %_ZN4ncnn3MatD2Ev.exit287, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  call void @free(ptr noundef nonnull %i.uk) #13
  br label %_ZN4ncnn3MatD2Ev.exit287

bb.ds:                                            ; preds = %bb.dp
  %i.uo = landingpad { ptr, i32 }
          catch ptr null
  %i.up = extractvalue { ptr, i32 } %i.uo, 0
  call void @__clang_call_terminate(ptr %i.up) #23
  unreachable

_ZN4ncnn3MatD2Ev.exit287:                         ; preds = %bb.dn, %_ZN4ncnn3MatD2Ev.exit288, %bb.dp, %bb.dq, %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  br i1 %.not250, label %bb.de, label %_ZNK4ncnn3Mat5emptyEv.exit347.thread

bb.dt:                                            ; preds = %bb.df
  %i.uq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  %i.ur = load ptr, ptr %i.rj, align 8, !tbaa !19 ; 2 uses
  %.not.i = icmp eq ptr %i.ur, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit289, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.us = atomicrmw add ptr %i.ur, i32 -1 acq_rel, align 4
  %i.ut = icmp eq i32 %i.us, 1
  br i1 %i.ut, label %bb.dv, label %_ZN4ncnn3MatD2Ev.exit289

bb.dv:                                            ; preds = %bb.du
  %i.uu = load ptr, ptr %i.rm, align 8, !tbaa !20 ; 3 uses
  %.not3.i = icmp eq ptr %i.uu, null
  %i.uv = load ptr, ptr %15, align 8, !tbaa !21   ; 3 uses
  br i1 %.not3.i, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.uw = load ptr, ptr %i.uu, align 8, !tbaa !13
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 24
  %i.uy = load ptr, ptr %i.ux, align 8
  invoke void %i.uy(ptr noundef nonnull align 8 dereferenceable(8) %i.uu, ptr noundef %i.uv)
          to label %_ZN4ncnn3MatD2Ev.exit289 unwind label %bb.dz, !inline_history !0

bb.dx:                                            ; preds = %bb.dv
  %.not.i343 = icmp eq ptr %i.uv, null
  br i1 %.not.i343, label %_ZN4ncnn3MatD2Ev.exit289, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  call void @free(ptr noundef nonnull %i.uv) #13
  br label %_ZN4ncnn3MatD2Ev.exit289

bb.dz:                                            ; preds = %bb.dw
  %i.uz = landingpad { ptr, i32 }
          catch ptr null
  %i.va = extractvalue { ptr, i32 } %i.uz, 0
  call void @__clang_call_terminate(ptr %i.va) #23
  unreachable

_ZN4ncnn3MatD2Ev.exit289:                         ; preds = %bb.du, %bb.dt, %bb.dw, %bb.dx, %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  %i.vb = load ptr, ptr %i.qz, align 8, !tbaa !19 ; 2 uses
  %.not.i298 = icmp eq ptr %i.vb, null
  br i1 %.not.i298, label %_ZN4ncnn3MatD2Ev.exit286, label %bb.ea

bb.ea:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit289
  %i.vc = atomicrmw add ptr %i.vb, i32 -1 acq_rel, align 4
  %i.vd = icmp eq i32 %i.vc, 1
  br i1 %i.vd, label %bb.eb, label %_ZN4ncnn3MatD2Ev.exit286

bb.eb:                                            ; preds = %bb.ea
  %i.ve = load ptr, ptr %i.rc, align 8, !tbaa !20 ; 3 uses
  %.not3.i299 = icmp eq ptr %i.ve, null
  %i.vf = load ptr, ptr %14, align 8, !tbaa !21   ; 3 uses
  br i1 %.not3.i299, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.vg = load ptr, ptr %i.ve, align 8, !tbaa !13
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 24
  %i.vi = load ptr, ptr %i.vh, align 8
  invoke void %i.vi(ptr noundef nonnull align 8 dereferenceable(8) %i.ve, ptr noundef %i.vf)
          to label %_ZN4ncnn3MatD2Ev.exit286 unwind label %bb.ef, !inline_history !0

bb.ed:                                            ; preds = %bb.eb
  %.not.i337 = icmp eq ptr %i.vf, null
  br i1 %.not.i337, label %_ZN4ncnn3MatD2Ev.exit286, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  call void @free(ptr noundef nonnull %i.vf) #13
  br label %_ZN4ncnn3MatD2Ev.exit286

bb.ef:                                            ; preds = %bb.ec
  %i.vj = landingpad { ptr, i32 }
          catch ptr null
  %i.vk = extractvalue { ptr, i32 } %i.vj, 0
  call void @__clang_call_terminate(ptr %i.vk) #23
  unreachable

_ZN4ncnn3MatD2Ev.exit286:                         ; preds = %bb.ea, %_ZN4ncnn3MatD2Ev.exit289, %bb.ec, %bb.ed, %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  br label %bb.ex

._crit_edge553:                                   ; preds = %bb.de, %bb.dd
  br i1 %i.qf, label %bb.eg, label %bb.ei

end_hunk_0
begin_hunk_1_@_ZNK4ncnn31ConvolutionDepthWise_x86_avx51216forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %min.epilog.iters.check700 = icmp eq i64 %i.pg, 0
  %n.vec702 = and i64 %i.pf, 2147483640           ; 4 uses
  %i.pl = trunc nuw nsw i64 %n.vec702 to i32
  %i.pm = mul i32 %i.oz, %i.pl
  %broadcast.splatinsert705 = insertelement <8 x i32> poison, i32 %i.oz, i64 0
  %broadcast.splat706 = shufflevector <8 x i32> %broadcast.splatinsert705, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.pn = mul nsw <8 x i32> %broadcast.splat706, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.po = shl nsw i32 %i.oz, 3
  %broadcast.splatinsert708 = insertelement <8 x i32> poison, i32 %i.po, i64 0
  %broadcast.splat709 = shufflevector <8 x i32> %broadcast.splatinsert708, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n716 = icmp eq i64 %n.vec702, %i.pf
  br label %iter.check697

iter.check697:                                    ; preds = %.preheader.preheader, %._crit_edge506
  %.0164511 = phi i32 [ %i.qh, %._crit_edge506 ], [ 0, %.preheader.preheader ]
  %.0165510 = phi i32 [ %i.qg, %._crit_edge506 ], [ 0, %.preheader.preheader ] ; 5 uses
  %.0166509 = phi i32 [ %i.pq, %._crit_edge506 ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.pp = sext i32 %.0166509 to i64               ; 5 uses
  %i.pq = add i32 %i.oy, %.0166509                ; 2 uses
  br i1 %min.iters.check681, label %vec.epilog.scalar.ph698.preheader, label %vector.main.loop.iter.check682

vector.main.loop.iter.check682:                   ; preds = %iter.check697
  br i1 %min.iters.check683, label %vec.epilog.ph701, label %vector.ph684

vector.ph684:                                     ; preds = %vector.main.loop.iter.check682
  %i.pr = add nsw i64 %n.vec685, %i.pp
  %i.ps = add i32 %.0165510, %i.pi                ; 3 uses
  %broadcast.splatinsert688 = insertelement <16 x i32> poison, i32 %.0165510, i64 0
  %broadcast.splat689 = shufflevector <16 x i32> %broadcast.splatinsert688, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction = add nsw <16 x i32> %broadcast.splat689, %i.pk
  %invariant.gep = getelementptr [4 x i8], ptr %.sroa.0389.0, i64 %i.pp
  br label %vector.body690

vector.body690:                                   ; preds = %vector.ph684, %vector.body690
  %index691 = phi i64 [ 0, %vector.ph684 ], [ %index.next692, %vector.body690 ] ; 2 uses
  %vec.ind = phi <16 x i32> [ %induction, %vector.ph684 ], [ %vec.ind.next.reass, %vector.body690 ] ; 5 uses
  %step.add = add nsw <16 x i32> %vec.ind, %i.pj
  %step.add.2.reass = add <16 x i32> %vec.ind, %invariant.op
  %step.add.3.reass = add <16 x i32> %vec.ind, %invariant.op733
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index691 ; 4 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.pu = getelementptr inbounds nuw i8, ptr %gep, i64 128
  %i.pv = getelementptr inbounds nuw i8, ptr %gep, i64 192
  store <16 x i32> %vec.ind, ptr %gep, align 4, !tbaa !69
  store <16 x i32> %step.add, ptr %i.pt, align 4, !tbaa !69
  store <16 x i32> %step.add.2.reass, ptr %i.pu, align 4, !tbaa !69
  store <16 x i32> %step.add.3.reass, ptr %i.pv, align 4, !tbaa !69
  %index.next692 = add nuw i64 %index691, 64      ; 2 uses
  %vec.ind.next.reass = add <16 x i32> %vec.ind, %invariant.op734
  %i.pw = icmp eq i64 %index.next692, %n.vec685
  br i1 %i.pw, label %middle.block693, label %vector.body690, !llvm.loop !167

middle.block693:                                  ; preds = %vector.body690
  br i1 %cmp.n694, label %._crit_edge506, label %vec.epilog.iter.check699

vec.epilog.iter.check699:                         ; preds = %middle.block693
  br i1 %min.epilog.iters.check700, label %vec.epilog.scalar.ph698.preheader, label %vec.epilog.ph701, !prof !92

vec.epilog.ph701:                                 ; preds = %vector.main.loop.iter.check682, %vec.epilog.iter.check699
  %vec.epilog.resume.val695 = phi i64 [ %n.vec685, %vec.epilog.iter.check699 ], [ 0, %vector.main.loop.iter.check682 ]
  %bc.resume.val696 = phi i32 [ %i.ps, %vec.epilog.iter.check699 ], [ %.0165510, %vector.main.loop.iter.check682 ]
  %i.px = add nsw i64 %n.vec702, %i.pp
  %i.py = add i32 %.0165510, %i.pm                ; 2 uses
  %broadcast.splatinsert703 = insertelement <8 x i32> poison, i32 %bc.resume.val696, i64 0
  %broadcast.splat704 = shufflevector <8 x i32> %broadcast.splatinsert703, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction707 = add nsw <8 x i32> %broadcast.splat704, %i.pn
  %invariant.gep735 = getelementptr [4 x i8], ptr %.sroa.0389.0, i64 %i.pp
  br label %vec.epilog.vector.body710

vec.epilog.vector.body710:                        ; preds = %vec.epilog.vector.body710, %vec.epilog.ph701
  %index711 = phi i64 [ %vec.epilog.resume.val695, %vec.epilog.ph701 ], [ %index.next713, %vec.epilog.vector.body710 ] ; 2 uses
  %vec.ind712 = phi <8 x i32> [ %induction707, %vec.epilog.ph701 ], [ %vec.ind.next714, %vec.epilog.vector.body710 ] ; 2 uses
  %gep736 = getelementptr [4 x i8], ptr %invariant.gep735, i64 %index711
  store <8 x i32> %vec.ind712, ptr %gep736, align 4, !tbaa !69
  %index.next713 = add nuw i64 %index711, 8       ; 2 uses
  %vec.ind.next714 = add nsw <8 x i32> %vec.ind712, %broadcast.splat709
  %i.pz = icmp eq i64 %index.next713, %n.vec702
  br i1 %i.pz, label %vec.epilog.middle.block715, label %vec.epilog.vector.body710, !llvm.loop !168

vec.epilog.middle.block715:                       ; preds = %vec.epilog.vector.body710
  br i1 %cmp.n716, label %._crit_edge506, label %vec.epilog.scalar.ph698.preheader

vec.epilog.scalar.ph698.preheader:                ; preds = %iter.check697, %vec.epilog.iter.check699, %vec.epilog.middle.block715
  %indvars.iv543.ph = phi i64 [ %i.pp, %iter.check697 ], [ %i.pr, %vec.epilog.iter.check699 ], [ %i.px, %vec.epilog.middle.block715 ]
  %.1503.ph = phi i32 [ %.0165510, %iter.check697 ], [ %i.ps, %vec.epilog.iter.check699 ], [ %i.py, %vec.epilog.middle.block715 ]
  br label %vec.epilog.scalar.ph698

._crit_edge512.split:                             ; preds = %._crit_edge506, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.qa = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !82
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.o, i32 %i.qb)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @_ZNK4ncnn31ConvolutionDepthWise_x86_avx51216forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.4, ptr nonnull %0, ptr nonnull %2, ptr nonnull %i.m, ptr nonnull %7, ptr nonnull %i.c, ptr nonnull %i.b, ptr nonnull %i.n, ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #13
  %.not.i.i.i387 = icmp eq ptr %.sroa.0389.0, null
  br i1 %.not.i.i.i387, label %_ZNSt6vectorIiSaIiEED2Ev.exit388, label %bb.cq

bb.cq:                                            ; preds = %._crit_edge512.split
  %i.qc = ptrtoint ptr %.sroa.9.0 to i64
  %i.qd = ptrtoint ptr %.sroa.0389.0 to i64
  %i.qe = sub i64 %i.qc, %i.qd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0389.0, i64 noundef %i.qe) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit388

_ZNSt6vectorIiSaIiEED2Ev.exit388:                 ; preds = %._crit_edge512.split, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #13
  br label %_ZNK4ncnn3Mat5emptyEv.exit353.thread

bb.cr:                                            ; preds = %bb.cp, %bb.co
  %i.qf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #13
  br label %bb.cs

._crit_edge506:                                   ; preds = %vec.epilog.scalar.ph698, %vec.epilog.middle.block715, %middle.block693
  %.lcssa664 = phi i32 [ %i.py, %vec.epilog.middle.block715 ], [ %i.ps, %middle.block693 ], [ %i.qj, %vec.epilog.scalar.ph698 ]
  %i.qg = add nsw i32 %i.pb, %.lcssa664
  %i.qh = add nuw nsw i32 %.0164511, 1            ; 2 uses
  %exitcond547.not = icmp eq i32 %i.qh, %i.pc
  br i1 %exitcond547.not, label %._crit_edge512.split, label %iter.check697, !llvm.loop !169

vec.epilog.scalar.ph698:                          ; preds = %vec.epilog.scalar.ph698.preheader, %vec.epilog.scalar.ph698
  %indvars.iv543 = phi i64 [ %indvars.iv.next544, %vec.epilog.scalar.ph698 ], [ %indvars.iv543.ph, %vec.epilog.scalar.ph698.preheader ] ; 2 uses
  %.1503 = phi i32 [ %i.qj, %vec.epilog.scalar.ph698 ], [ %.1503.ph, %vec.epilog.scalar.ph698.preheader ] ; 2 uses
  %i.qi = getelementptr inbounds [4 x i8], ptr %.sroa.0389.0, i64 %indvars.iv543
  store i32 %.1503, ptr %i.qi, align 4, !tbaa !69
  %indvars.iv.next544 = add nsw i64 %indvars.iv543, 1 ; 2 uses
  %i.qj = add nsw i32 %.1503, %i.oz               ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next544 to i32
  %exitcond546.not = icmp eq i32 %i.pq, %lftr.wideiv
  br i1 %exitcond546.not, label %._crit_edge506, label %vec.epilog.scalar.ph698, !llvm.loop !170

_ZNK4ncnn3Mat5emptyEv.exit353.thread:             ; preds = %.invoke, %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.aa, %_ZNSt6vectorIiSaIiEED2Ev.exit388, %bb.cn, %bb.bl, %bb.ac, %_ZNK4ncnn3Mat5emptyEv.exit353
  %.2207 = phi i32 [ -100, %_ZNK4ncnn3Mat5emptyEv.exit353 ], [ 0, %bb.ac ], [ -100, %bb.aa ], [ 0, %bb.bl ], [ 0, %bb.cn ], [ 0, %.invoke ], [ 0, %_ZNSt6vectorIiSaIiEED2Ev.exit388 ], [ 0, %_ZNSt6vectorIiSaIiEED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  br label %_ZNK4ncnn3Mat5emptyEv.exit352.thread

bb.cs:                                            ; preds = %bb.cr, %_ZNSt6vectorIfSaIfEED2Ev.exit384, %_ZNSt6vectorIfSaIfEED2Ev.exit378, %_ZNSt6vectorIfSaIfEED2Ev.exit372, %_ZNSt6vectorIfSaIfEED2Ev.exit366, %bb.ag, %bb.ab
  %.pn248.pn = phi { ptr, i32 } [ %.pn248, %_ZNSt6vectorIfSaIfEED2Ev.exit366 ], [ %i.fr, %bb.ab ], [ %.pn244, %_ZNSt6vectorIfSaIfEED2Ev.exit372 ], [ %.pn242, %_ZNSt6vectorIfSaIfEED2Ev.exit378 ], [ %.pn239, %_ZNSt6vectorIfSaIfEED2Ev.exit384 ], [ %i.qf, %bb.cr ], [ %i.gs, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  br label %bb.gc

bb.ct:                                            ; preds = %bb.y, %bb.x
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !78
  %i.qm = icmp sgt i32 %i.ql, 100                 ; 3 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %3, i64 39 ; 2 uses
  %i.qo = load i8, ptr %i.qn, align 1, !tbaa !61, !range !54, !noundef !55
  %i.qp = trunc nuw i8 %i.qo to i1
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.qr = load i32, ptr %i.qq, align 8, !tbaa !60 ; 3 uses
  br i1 %i.qp, label %bb.cu, label %._crit_edge563

bb.cu:                                            ; preds = %bb.ct
  br i1 %i.qm, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.qs = and i32 %i.qr, 7
  %i.qt = icmp eq i32 %i.qs, 0
  %i.qu = select i1 %i.qt, i32 8, i32 1
  br label %._crit_edge563

bb.cw:                                            ; preds = %bb.cu
  %i.qv = and i32 %i.qr, 3
  %i.qw = icmp eq i32 %i.qv, 0
  %i.qx = select i1 %i.qw, i32 4, i32 1
  br label %._crit_edge563

._crit_edge563:                                   ; preds = %bb.ct, %bb.cv, %bb.cw
  %.0162 = phi i32 [ %i.qu, %bb.cv ], [ %i.qx, %bb.cw ], [ 1, %bb.ct ] ; 7 uses
  %i.qy = shl nuw nsw i32 %.0162, 2
  %i.qz = select i1 %i.qm, i32 %.0162, i32 %i.qy  ; 2 uses
  %i.ra = zext nneg i32 %i.qz to i64
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.rc = sdiv i32 %i.qr, %.0162
  %i.rd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !79
  invoke void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.ej, i32 noundef %i.ek, i32 noundef %i.rc, i64 noundef %i.ra, i32 noundef %.0162, ptr noundef %i.re)
          to label %bb.cx unwind label %bb.cy

bb.cx:                                            ; preds = %._crit_edge563
  %i.rf = load ptr, ptr %2, align 8, !tbaa !21
  %i.rg = icmp eq ptr %i.rf, null
  br i1 %i.rg, label %_ZNK4ncnn3Mat5emptyEv.exit352.thread, label %_ZNK4ncnn3Mat5emptyEv.exit352

_ZNK4ncnn3Mat5emptyEv.exit352:                    ; preds = %bb.cx
  %i.rh = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 4 uses
  %i.ri = load i64, ptr %i.rh, align 8, !tbaa !22
  %i.rj = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 4 uses
  %i.rk = load i32, ptr %i.rj, align 8, !tbaa !70
  %i.rl = sext i32 %i.rk to i64
  %i.rm = mul i64 %i.ri, %i.rl
  %i.rn = icmp eq i64 %i.rm, 0
  br i1 %i.rn, label %_ZNK4ncnn3Mat5emptyEv.exit352.thread, label %bb.cz

bb.cy:                                            ; preds = %._crit_edge563
  %i.ro = landingpad { ptr, i32 }
          cleanup
  br label %bb.gc

bb.cz:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit352
  %24 = load <4 x i32>, ptr %i.em, align 8
  %i.rp = load i32, ptr %i.rb, align 8, !tbaa !60
  %i.rq = insertelement <2 x i32> poison, i32 %i.el, i64 0
  %i.rr = insertelement <2 x i32> %i.rq, i32 %i.rp, i64 1
  %i.rs = shufflevector <4 x i32> %24, <4 x i32> poison, <2 x i32> zeroinitializer
  %i.rt = sdiv <2 x i32> %i.rr, %i.rs             ; 5 uses
  %i.ru = load i8, ptr %i.qn, align 1, !tbaa !61, !range !54, !noundef !55
  %i.rv = trunc nuw i8 %i.ru to i1
  br i1 %i.rv, label %bb.da, label %bb.dd

bb.da:                                            ; preds = %bb.cz
  %i.rw = extractelement <2 x i32> %i.rt, i64 0
  %i.rx = and i32 %i.rw, 7
  %i.ry = icmp eq i32 %i.rx, 0
  %i.rz = select i1 %i.ry, i32 8, i32 1           ; 2 uses
  br i1 %i.qm, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.sa = extractelement <2 x i32> %i.rt, i64 1
  %i.sb = and i32 %i.sa, 7
  %i.sc = icmp eq i32 %i.sb, 0
  %i.sd = select i1 %i.sc, i32 8, i32 1
  br label %bb.dd

bb.dc:                                            ; preds = %bb.da
  %i.se = extractelement <2 x i32> %i.rt, i64 1
  %i.sf = and i32 %i.se, 3
  %i.sg = icmp eq i32 %i.sf, 0
  %i.sh = select i1 %i.sg, i32 4, i32 1
  br label %bb.dd

bb.dd:                                            ; preds = %bb.db, %bb.dc, %bb.cz
  %.0161 = phi i32 [ %i.rz, %bb.db ], [ %i.rz, %bb.dc ], [ 1, %bb.cz ] ; 3 uses
  %.0160 = phi i32 [ %i.sd, %bb.db ], [ %i.sh, %bb.dc ], [ 1, %bb.cz ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #13
  %i.si = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.sj = load ptr, ptr %i.dk, align 8, !tbaa !19 ; 2 uses
  %i.sk = load <2 x ptr>, ptr %7, align 16, !tbaa !66
  store <2 x ptr> %i.sk, ptr %18, align 16, !tbaa !66
  %i.sl = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.sm = load i64, ptr %i.dl, align 16, !tbaa !67
  store i64 %i.sm, ptr %i.sl, align 16, !tbaa !67
  %i.sn = getelementptr inbounds nuw i8, ptr %18, i64 24 ; 2 uses
  %i.so = load i32, ptr %i.dm, align 8, !tbaa !68
  store i32 %i.so, ptr %i.sn, align 8, !tbaa !68
  %i.sp = getelementptr inbounds nuw i8, ptr %18, i64 32 ; 4 uses
  %i.sq = load ptr, ptr %i.dn, align 16, !tbaa !20
  store ptr %i.sq, ptr %i.sp, align 16, !tbaa !20
  %i.sr = getelementptr inbounds nuw i8, ptr %18, i64 40 ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %18, i64 44
  %i.st = load <4 x i32>, ptr %i.do, align 8, !tbaa !69
  store <4 x i32> %i.st, ptr %i.sr, align 8, !tbaa !69
  %i.su = getelementptr inbounds nuw i8, ptr %18, i64 56 ; 2 uses
  %i.sv = load i32, ptr %i.dq, align 8, !tbaa !70
  store i32 %i.sv, ptr %i.su, align 8, !tbaa !70
  %i.sw = getelementptr inbounds nuw i8, ptr %18, i64 64 ; 3 uses
  %i.sx = load i64, ptr %i.dr, align 16, !tbaa !22
  store i64 %i.sx, ptr %i.sw, align 16, !tbaa !22
  %.not.i357 = icmp eq ptr %i.sj, null
  br i1 %.not.i357, label %_ZN4ncnn3Mat6addrefEv.exit358, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.sy = atomicrmw add ptr %i.sj, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit358

_ZN4ncnn3Mat6addrefEv.exit358:                    ; preds = %bb.de, %bb.dd
  %i.sz = icmp sgt i32 %i.ea, %.0161
  br i1 %i.sz, label %bb.df, label %bb.di

bb.df:                                            ; preds = %_ZN4ncnn3Mat6addrefEv.exit358
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %19, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !88
  %i.ta = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !89
  %i.tc = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %i.tb, ptr %i.tc, align 8, !tbaa !79
  invoke void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull align 8 dereferenceable(72) %18, i32 noundef %.0161, ptr noundef nonnull align 8 dereferenceable(64) %19)
          to label %bb.dg unwind label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.td = load ptr, ptr %18, align 16, !tbaa !21
  %i.te = icmp eq ptr %i.td, null
  br i1 %i.te, label %_ZNK4ncnn3Mat5emptyEv.exit351.thread, label %_ZNK4ncnn3Mat5emptyEv.exit351

_ZNK4ncnn3Mat5emptyEv.exit351.thread:             ; preds = %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  br label %bb.fo

_ZNK4ncnn3Mat5emptyEv.exit351:                    ; preds = %bb.dg
  %i.tf = load i64, ptr %i.sw, align 16, !tbaa !22
  %i.tg = load i32, ptr %i.su, align 8, !tbaa !70
  %i.th = sext i32 %i.tg to i64
  %i.ti = mul i64 %i.tf, %i.th
  %i.tj = icmp eq i64 %i.ti, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  br i1 %i.tj, label %bb.fo, label %bb.di

bb.dh:                                            ; preds = %bb.df
  %i.tk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  br label %bb.fv

bb.di:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit351, %_ZN4ncnn3Mat6addrefEv.exit358
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #13
  %i.tl = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !19 ; 2 uses
  %i.to = load <2 x ptr>, ptr %2, align 8, !tbaa !66
  store <2 x ptr> %i.to, ptr %20, align 16, !tbaa !66
  %i.tp = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 3 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.tr = load i64, ptr %i.tq, align 8, !tbaa !67
  store i64 %i.tr, ptr %i.tp, align 16, !tbaa !67
  %i.ts = getelementptr inbounds nuw i8, ptr %20, i64 24 ; 3 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.tu = load i32, ptr %i.tt, align 8, !tbaa !68
  store i32 %i.tu, ptr %i.ts, align 8, !tbaa !68
  %i.tv = getelementptr inbounds nuw i8, ptr %20, i64 32 ; 5 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !20
  store ptr %i.tx, ptr %i.tv, align 16, !tbaa !20
  %i.ty = getelementptr inbounds nuw i8, ptr %20, i64 40 ; 3 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %20, i64 44
  %i.ub = load <4 x i32>, ptr %i.tz, align 8, !tbaa !69
  store <4 x i32> %i.ub, ptr %i.ty, align 8, !tbaa !69
  %i.uc = getelementptr inbounds nuw i8, ptr %20, i64 56 ; 3 uses
  %i.ud = load i32, ptr %i.rj, align 8, !tbaa !70
  store i32 %i.ud, ptr %i.uc, align 8, !tbaa !70
  %i.ue = getelementptr inbounds nuw i8, ptr %20, i64 64 ; 4 uses
  %i.uf = load i64, ptr %i.rh, align 8, !tbaa !22
  store i64 %i.uf, ptr %i.ue, align 16, !tbaa !22
  %.not.i359 = icmp eq ptr %i.tn, null
  br i1 %.not.i359, label %_ZN4ncnn3Mat6addrefEv.exit360, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.ug = atomicrmw add ptr %i.tn, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit360

_ZN4ncnn3Mat6addrefEv.exit360:                    ; preds = %bb.dj, %bb.di
  %i.uh = icmp samesign ult i32 %.0160, %.0162    ; 2 uses
  br i1 %i.uh, label %bb.dk, label %bb.dn

bb.dk:                                            ; preds = %_ZN4ncnn3Mat6addrefEv.exit360
  %i.ui = load i32, ptr %i.b, align 4, !tbaa !69
  %i.uj = load i32, ptr %i.c, align 4, !tbaa !69
  %i.uk = load i32, ptr %i.rb, align 8, !tbaa !60
  %i.ul = sdiv i32 %i.uk, %.0160
  %i.um = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0162, i1 true)
  %i.un = lshr i32 %i.qz, %i.um
  %narrow = mul nuw nsw i32 %.0160, %i.un
  %i.uo = zext nneg i32 %narrow to i64
  %i.up = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !89
  invoke void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %20, i32 noundef %i.ui, i32 noundef %i.uj, i32 noundef %i.ul, i64 noundef %i.uo, i32 noundef %.0160, ptr noundef %i.uq)
          to label %bb.dl unwind label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.ur = load ptr, ptr %20, align 16, !tbaa !21
  %i.us = icmp eq ptr %i.ur, null
  br i1 %i.us, label %_ZNK4ncnn3Mat5emptyEv.exit350.thread, label %_ZNK4ncnn3Mat5emptyEv.exit350

_ZNK4ncnn3Mat5emptyEv.exit350:                    ; preds = %bb.dl
  %i.ut = load i64, ptr %i.ue, align 16, !tbaa !22
  %i.uu = load i32, ptr %i.uc, align 8, !tbaa !70
  %i.uv = sext i32 %i.uu to i64
  %i.uw = mul i64 %i.ut, %i.uv
  %i.ux = icmp eq i64 %i.uw, 0
  br i1 %i.ux, label %_ZNK4ncnn3Mat5emptyEv.exit350.thread, label %bb.dn

bb.dm:                                            ; preds = %bb.ex, %bb.eq, %bb.dk
  %i.uy = landingpad { ptr, i32 }
          cleanup
  br label %bb.fh

bb.dn:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit350, %_ZN4ncnn3Mat6addrefEv.exit360
  %i.uz = load i32, ptr %i.em, align 8, !tbaa !59
  %.not232486 = icmp sgt i32 %i.uz, 0
  br i1 %.not232486, label %.lr.ph489, label %._crit_edge490

.lr.ph489:                                        ; preds = %bb.dn
  %i.va = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 3 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.vc = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.vd = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 3 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %21, i64 40
  %i.vf = getelementptr inbounds nuw i8, ptr %21, i64 56
  %i.vg = getelementptr inbounds nuw i8, ptr %21, i64 64
  %i.vh = insertelement <2 x i32> poison, i32 %.0161, i64 0
  %i.vi = insertelement <2 x i32> %i.vh, i32 %.0160, i64 1 ; 2 uses
  %i.vj = sdiv <2 x i32> %i.rt, %i.vi             ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 3 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.vm = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.vn = getelementptr inbounds nuw i8, ptr %22, i64 32 ; 3 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %22, i64 40
  %i.vp = getelementptr inbounds nuw i8, ptr %22, i64 56
  %i.vq = getelementptr inbounds nuw i8, ptr %22, i64 64
  %i.vr = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.vs = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.vt = extractelement <2 x i32> %i.vj, i64 0
  %i.vu = extractelement <2 x i32> %i.vj, i64 1
  br label %bb.dp

bb.do:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit263
  %indvars.iv.next541 = add nuw nsw i64 %indvars.iv540, 1 ; 2 uses
  %i.vv = load i32, ptr %i.em, align 8, !tbaa !59
  %i.vw = sext i32 %i.vv to i64
  %.not232 = icmp slt i64 %indvars.iv.next541, %i.vw
  br i1 %.not232, label %bb.dp, label %._crit_edge490, !llvm.loop !171

bb.dp:                                            ; preds = %.lr.ph489, %bb.do
  %indvars.iv540 = phi i64 [ 0, %.lr.ph489 ], [ %indvars.iv.next541, %bb.do ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #13
  %i.vx = trunc i64 %indvars.iv540 to i32
  %i.vy = load ptr, ptr %18, align 16, !tbaa !21, !noalias !176
  %i.vz = load i64, ptr %i.sw, align 16, !tbaa !22, !noalias !176
  %i.wa = load i64, ptr %i.sl, align 16, !tbaa !67, !noalias !176 ; 3 uses
  %i.wb = load i32, ptr %i.sn, align 8, !tbaa !68, !noalias !176
  %i.wc = load ptr, ptr %i.sp, align 16, !tbaa !20, !noalias !176
  store ptr null, ptr %i.va, align 8, !tbaa !19
  store i64 %i.wa, ptr %i.vb, align 8, !tbaa !67
  store i32 %i.wb, ptr %i.vc, align 8, !tbaa !68
  store ptr %i.wc, ptr %i.vd, align 8, !tbaa !20
  store i32 %i.vt, ptr %i.vf, align 8, !tbaa !70
  %i.wd = load <4 x i32>, ptr %i.sr, align 8, !tbaa !69, !noalias !176 ; 3 uses
  %25 = load <4 x i32>, ptr %i.ss, align 4
  %26 = shufflevector <4 x i32> %25, <4 x i32> poison, <2 x i32> <i32 0, i32 poison>
  store <4 x i32> %i.wd, ptr %i.ve, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #13
  %i.we = trunc i64 %indvars.iv540 to i32
  %i.wf = insertelement <2 x i32> poison, i32 %i.vx, i64 0
  %i.wg = insertelement <2 x i32> %i.wf, i32 %i.we, i64 1
  %i.wh = mul <2 x i32> %i.rt, %i.wg
  %i.wi = sdiv <2 x i32> %i.wh, %i.vi             ; 2 uses
  %i.wj = extractelement <2 x i32> %i.wi, i64 0
  %i.wk = sext i32 %i.wj to i64
  %i.wl = mul i64 %i.vz, %i.wk
  %i.wm = mul i64 %i.wl, %i.wa
  %i.wn = getelementptr inbounds nuw i8, ptr %i.vy, i64 %i.wm
  store ptr %i.wn, ptr %21, align 8, !tbaa !21
  %i.wo = load ptr, ptr %20, align 16, !tbaa !21, !noalias !177
  %i.wp = load i64, ptr %i.ue, align 16, !tbaa !22, !noalias !177
  %i.wq = extractelement <2 x i32> %i.wi, i64 1
  %i.wr = sext i32 %i.wq to i64
  %i.ws = mul i64 %i.wp, %i.wr
  %i.wt = load i64, ptr %i.tp, align 16, !tbaa !67, !noalias !177 ; 3 uses
  %i.wu = mul i64 %i.ws, %i.wt
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wo, i64 %i.wu
  %i.ww = load i32, ptr %i.ts, align 8, !tbaa !68, !noalias !177
  %i.wx = load ptr, ptr %i.tv, align 16, !tbaa !20, !noalias !177 ; 2 uses
  store ptr %i.wv, ptr %22, align 8, !tbaa !21
  store ptr null, ptr %i.vk, align 8, !tbaa !19
  store i64 %i.wt, ptr %i.vl, align 8, !tbaa !67
  store i32 %i.ww, ptr %i.vm, align 8, !tbaa !68
  store ptr %i.wx, ptr %i.vn, align 8, !tbaa !20
  store i32 %i.vu, ptr %i.vp, align 8, !tbaa !70
  %i.wy = load <4 x i32>, ptr %i.ty, align 8, !tbaa !69, !noalias !177 ; 3 uses
  %i.wz = load i32, ptr %i.ua, align 4, !tbaa !75, !noalias !177
  %i.xa = insertelement <2 x i32> %26, i32 %i.wz, i64 1
  %i.xb = sext <2 x i32> %i.xa to <2 x i64>
  %i.xc = shufflevector <4 x i32> %i.wd, <4 x i32> %i.wy, <2 x i32> <i32 2, i32 6>
  %i.xd = sext <2 x i32> %i.xc to <2 x i64>
  %i.xe = mul nsw <2 x i64> %i.xd, %i.xb
  %i.xf = shufflevector <4 x i32> %i.wd, <4 x i32> %i.wy, <2 x i32> <i32 3, i32 7>
  %i.xg = sext <2 x i32> %i.xf to <2 x i64>
  %i.xh = mul <2 x i64> %i.xe, %i.xg
  %i.xi = insertelement <2 x i64> poison, i64 %i.wa, i64 0
  %i.xj = insertelement <2 x i64> %i.xi, i64 %i.wt, i64 1 ; 2 uses
  %i.xk = mul <2 x i64> %i.xh, %i.xj
  %i.xl = add <2 x i64> %i.xk, splat (i64 15)
  %i.xm = and <2 x i64> %i.xl, splat (i64 -16)
  %i.xn = udiv <2 x i64> %i.xm, %i.xj             ; 2 uses
  %i.xo = extractelement <2 x i64> %i.xn, i64 0
  store i64 %i.xo, ptr %i.vg, align 8, !tbaa !22
  %i.xp = extractelement <2 x i64> %i.xn, i64 1
  store i64 %i.xp, ptr %i.vq, align 8, !tbaa !22
  store <4 x i32> %i.wy, ptr %i.vo, align 8, !tbaa !69
  %i.xq = load ptr, ptr %i.vr, align 8, !tbaa !26
  %i.xr = getelementptr inbounds nuw [8 x i8], ptr %i.xq, i64 %indvars.iv540
  %i.xs = load ptr, ptr %i.xr, align 8, !tbaa !73 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %23, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !88
  store ptr %i.wx, ptr %i.vs, align 8, !tbaa !79
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !13
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 56
  %i.xv = load ptr, ptr %i.xu, align 8
  %i.xw = invoke noundef i32 %i.xv(ptr noundef nonnull align 8 dereferenceable(208) %i.xs, ptr noundef nonnull align 8 dereferenceable(72) %21, ptr noundef nonnull align 8 dereferenceable(72) %22, ptr noundef nonnull align 8 dereferenceable(64) %23)
          to label %bb.dq unwind label %bb.ed     ; 2 uses

bb.dq:                                            ; preds = %bb.dp
  %.not231 = icmp eq i32 %i.xw, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #13
  %i.xx = load ptr, ptr %i.vk, align 8, !tbaa !19 ; 2 uses
  %.not.i276 = icmp eq ptr %i.xx, null
  br i1 %.not.i276, label %_ZN4ncnn3MatD2Ev.exit264, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.xy = atomicrmw add ptr %i.xx, i32 -1 acq_rel, align 4
  %i.xz = icmp eq i32 %i.xy, 1
  br i1 %i.xz, label %bb.ds, label %_ZN4ncnn3MatD2Ev.exit264

bb.ds:                                            ; preds = %bb.dr
  %i.ya = load ptr, ptr %i.vn, align 8, !tbaa !20 ; 3 uses
  %.not3.i277 = icmp eq ptr %i.ya, null
  %i.yb = load ptr, ptr %22, align 8, !tbaa !21   ; 3 uses
  br i1 %.not3.i277, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.yc = load ptr, ptr %i.ya, align 8, !tbaa !13
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 24
  %i.ye = load ptr, ptr %i.yd, align 8
  invoke void %i.ye(ptr noundef nonnull align 8 dereferenceable(8) %i.ya, ptr noundef %i.yb)
          to label %_ZN4ncnn3MatD2Ev.exit264 unwind label %bb.dw, !inline_history !0

bb.du:                                            ; preds = %bb.ds
  %.not.i339 = icmp eq ptr %i.yb, null
  br i1 %.not.i339, label %_ZN4ncnn3MatD2Ev.exit264, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  call void @free(ptr noundef nonnull %i.yb) #13
  br label %_ZN4ncnn3MatD2Ev.exit264

bb.dw:                                            ; preds = %bb.dt
  %i.yf = landingpad { ptr, i32 }
          catch ptr null
  %i.yg = extractvalue { ptr, i32 } %i.yf, 0
  call void @__clang_call_terminate(ptr %i.yg) #23
  unreachable

_ZN4ncnn3MatD2Ev.exit264:                         ; preds = %bb.dr, %bb.dq, %bb.dt, %bb.du, %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #13
  %i.yh = load ptr, ptr %i.va, align 8, !tbaa !19 ; 2 uses
  %.not.i280 = icmp eq ptr %i.yh, null
  br i1 %.not.i280, label %_ZN4ncnn3MatD2Ev.exit263, label %bb.dx

bb.dx:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit264
  %i.yi = atomicrmw add ptr %i.yh, i32 -1 acq_rel, align 4
  %i.yj = icmp eq i32 %i.yi, 1
  br i1 %i.yj, label %bb.dy, label %_ZN4ncnn3MatD2Ev.exit263

bb.dy:                                            ; preds = %bb.dx
  %i.yk = load ptr, ptr %i.vd, align 8, !tbaa !20 ; 3 uses
  %.not3.i281 = icmp eq ptr %i.yk, null
  %i.yl = load ptr, ptr %21, align 8, !tbaa !21   ; 3 uses
  br i1 %.not3.i281, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.ym = load ptr, ptr %i.yk, align 8, !tbaa !13
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 24
  %i.yo = load ptr, ptr %i.yn, align 8
  invoke void %i.yo(ptr noundef nonnull align 8 dereferenceable(8) %i.yk, ptr noundef %i.yl)
          to label %_ZN4ncnn3MatD2Ev.exit263 unwind label %bb.ec, !inline_history !0

bb.ea:                                            ; preds = %bb.dy
  %.not.i337 = icmp eq ptr %i.yl, null
  br i1 %.not.i337, label %_ZN4ncnn3MatD2Ev.exit263, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  call void @free(ptr noundef nonnull %i.yl) #13
  br label %_ZN4ncnn3MatD2Ev.exit263

bb.ec:                                            ; preds = %bb.dz
  %i.yp = landingpad { ptr, i32 }
          catch ptr null
  %i.yq = extractvalue { ptr, i32 } %i.yp, 0
  call void @__clang_call_terminate(ptr %i.yq) #23
  unreachable

_ZN4ncnn3MatD2Ev.exit263:                         ; preds = %bb.dx, %_ZN4ncnn3MatD2Ev.exit264, %bb.dz, %bb.ea, %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #13
  br i1 %.not231, label %bb.do, label %_ZNK4ncnn3Mat5emptyEv.exit350.thread

bb.ed:                                            ; preds = %bb.dp
  %i.yr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #13
  %i.ys = load ptr, ptr %i.vk, align 8, !tbaa !19 ; 2 uses
  %.not.i272 = icmp eq ptr %i.ys, null
  br i1 %.not.i272, label %_ZN4ncnn3MatD2Ev.exit265, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.yt = atomicrmw add ptr %i.ys, i32 -1 acq_rel, align 4
  %i.yu = icmp eq i32 %i.yt, 1
  br i1 %i.yu, label %bb.ef, label %_ZN4ncnn3MatD2Ev.exit265

bb.ef:                                            ; preds = %bb.ee
  %i.yv = load ptr, ptr %i.vn, align 8, !tbaa !20 ; 3 uses
  %.not3.i273 = icmp eq ptr %i.yv, null
  %i.yw = load ptr, ptr %22, align 8, !tbaa !21   ; 3 uses
  br i1 %.not3.i273, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.yx = load ptr, ptr %i.yv, align 8, !tbaa !13
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 24
  %i.yz = load ptr, ptr %i.yy, align 8
  invoke void %i.yz(ptr noundef nonnull align 8 dereferenceable(8) %i.yv, ptr noundef %i.yw)
          to label %_ZN4ncnn3MatD2Ev.exit265 unwind label %bb.ej, !inline_history !0

bb.eh:                                            ; preds = %bb.ef
  %.not.i341 = icmp eq ptr %i.yw, null
  br i1 %.not.i341, label %_ZN4ncnn3MatD2Ev.exit265, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  call void @free(ptr noundef nonnull %i.yw) #13
  br label %_ZN4ncnn3MatD2Ev.exit265

bb.ej:                                            ; preds = %bb.eg
  %i.za = landingpad { ptr, i32 }
          catch ptr null
  %i.zb = extractvalue { ptr, i32 } %i.za, 0
  call void @__clang_call_terminate(ptr %i.zb) #23
  unreachable

_ZN4ncnn3MatD2Ev.exit265:                         ; preds = %bb.ee, %bb.ed, %bb.eg, %bb.eh, %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #13
  %i.zc = load ptr, ptr %i.va, align 8, !tbaa !19 ; 2 uses
  %.not.i284 = icmp eq ptr %i.zc, null
  br i1 %.not.i284, label %_ZN4ncnn3MatD2Ev.exit262, label %bb.ek

bb.ek:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit265
  %i.zd = atomicrmw add ptr %i.zc, i32 -1 acq_rel, align 4
  %i.ze = icmp eq i32 %i.zd, 1
  br i1 %i.ze, label %bb.el, label %_ZN4ncnn3MatD2Ev.exit262

bb.el:                                            ; preds = %bb.ek
  %i.zf = load ptr, ptr %i.vd, align 8, !tbaa !20 ; 3 uses
  %.not3.i285 = icmp eq ptr %i.zf, null
  %i.zg = load ptr, ptr %21, align 8, !tbaa !21   ; 3 uses
  br i1 %.not3.i285, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.zh = load ptr, ptr %i.zf, align 8, !tbaa !13
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zh, i64 24
  %i.zj = load ptr, ptr %i.zi, align 8
  invoke void %i.zj(ptr noundef nonnull align 8 dereferenceable(8) %i.zf, ptr noundef %i.zg)
          to label %_ZN4ncnn3MatD2Ev.exit262 unwind label %bb.ep, !inline_history !0

bb.en:                                            ; preds = %bb.el
  %.not.i335 = icmp eq ptr %i.zg, null
  br i1 %.not.i335, label %_ZN4ncnn3MatD2Ev.exit262, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  call void @free(ptr noundef nonnull %i.zg) #13
  br label %_ZN4ncnn3MatD2Ev.exit262

bb.ep:                                            ; preds = %bb.em
  %i.zk = landingpad { ptr, i32 }
          catch ptr null
  %i.zl = extractvalue { ptr, i32 } %i.zk, 0
  call void @__clang_call_terminate(ptr %i.zl) #23
  unreachable

_ZN4ncnn3MatD2Ev.exit262:                         ; preds = %bb.ek, %_ZN4ncnn3MatD2Ev.exit265, %bb.em, %bb.en, %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #13
  br label %bb.fh

._crit_edge490:                                   ; preds = %bb.do, %bb.dn
  br i1 %i.uh, label %bb.eq, label %bb.es

end_hunk_1

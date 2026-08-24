Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/fmopl?download=true
inline.NumInlined: 57
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@YM3812UpdateOne:bb.a
  %i.rj = load i32, ptr @vib, align 4
  %i.rk = mul i32 %i.rj, %i.ri
  %i.rl = lshr i32 %i.rk, 8
  %i.rm = getelementptr inbounds nuw i8, ptr %i.lq, i64 56 ; 2 uses
  %i.rn = load i32, ptr %i.rm, align 8
  %i.ro = add i32 %i.rl, %i.rn
  store i32 %i.ro, ptr %i.rm, align 8
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo
  %i.rp = getelementptr inbounds nuw i8, ptr %i.lq, i64 56 ; 2 uses
  %i.rq = load i32, ptr %i.rp, align 8
  %i.rr = add i32 %i.rq, %i.ri
  store i32 %i.rr, ptr %i.rp, align 8
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.rs = getelementptr inbounds nuw i8, ptr %i.mx, i64 93
  %i.rt = load i8, ptr %i.rs, align 1
  %.not62.i = icmp eq i8 %i.rt, 0
  %i.ru = getelementptr inbounds nuw i8, ptr %i.mx, i64 60
  %i.rv = load i32, ptr %i.ru, align 4            ; 2 uses
  br i1 %.not62.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.rw = load i32, ptr @vib, align 4
  %i.rx = mul i32 %i.rw, %i.rv
  %i.ry = lshr i32 %i.rx, 8
  %i.rz = getelementptr inbounds nuw i8, ptr %i.mx, i64 56 ; 2 uses
  %i.sa = load i32, ptr %i.rz, align 8
  %i.sb = add i32 %i.ry, %i.sa
  store i32 %i.sb, ptr %i.rz, align 8
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br
  %i.sc = getelementptr inbounds nuw i8, ptr %i.mx, i64 56 ; 2 uses
  %i.sd = load i32, ptr %i.sc, align 8
  %i.se = add i32 %i.sd, %i.rv
  store i32 %i.se, ptr %i.sc, align 8
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.sf = getelementptr inbounds nuw i8, ptr %i.od, i64 93
  %i.sg = load i8, ptr %i.sf, align 1
  %.not63.i = icmp eq i8 %i.sg, 0
  %i.sh = getelementptr inbounds nuw i8, ptr %i.ab, i64 2360
  %i.si = load i32, ptr %i.sh, align 8
  %i.sj = mul i32 %i.si, 48                       ; 2 uses
  br i1 %.not63.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.sk = load i32, ptr @vib, align 4
  %i.sl = mul i32 %i.sk, %i.sj
  %i.sm = lshr i32 %i.sl, 8
  %i.sn = getelementptr inbounds nuw i8, ptr %i.od, i64 56 ; 2 uses
  %i.so = load i32, ptr %i.sn, align 8
  %i.sp = add i32 %i.sm, %i.so                    ; 2 uses
  store i32 %i.sp, ptr %i.sn, align 8
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bu
  %i.sq = getelementptr inbounds nuw i8, ptr %i.od, i64 56 ; 2 uses
  %i.sr = load i32, ptr %i.sq, align 8
  %i.ss = add i32 %i.sr, %i.sj                    ; 2 uses
  store i32 %i.ss, ptr %i.sq, align 8
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.st = phi i32 [ %i.ss, %bb.bw ], [ %i.sp, %bb.bv ]
  %i.su = getelementptr inbounds nuw i8, ptr %i.od, i64 96
  %i.sv = load ptr, ptr %i.su, align 8
  %i.sw = lshr i32 %i.st, 13
  %i.sx = and i32 %i.sw, 2047
  %i.sy = zext nneg i32 %i.sx to i64
  %i.sz = getelementptr inbounds nuw [8 x i8], ptr %i.sv, i64 %i.sy
  %i.ta = load ptr, ptr %i.sz, align 8
  %i.tb = zext nneg i32 %i.gd to i64
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.ta, i64 %i.tb
  %i.td = load i32, ptr %i.tc, align 4            ; 2 uses
  %i.te = icmp ult i32 %i.mw, 4095
  %.pre65.pre.pre.pre = load i32, ptr @outd, align 4 ; 2 uses
  br i1 %i.te, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.tf = getelementptr inbounds nuw i8, ptr %i.pj, i64 96
  %i.tg = load ptr, ptr %i.tf, align 8
  %i.th = getelementptr inbounds nuw i8, ptr %i.pj, i64 56
  %i.ti = load i32, ptr %i.th, align 8
  %i.tj = lshr i32 %i.ti, 13
  %i.tk = and i32 %i.tj, 2047
  %i.tl = zext nneg i32 %i.tk to i64
  %i.tm = getelementptr inbounds nuw [8 x i8], ptr %i.tg, i64 %i.tl
  %i.tn = load ptr, ptr %i.tm, align 8
  %i.to = zext nneg i32 %i.mw to i64
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %i.tn, i64 %i.to
  %i.tq = load i32, ptr %i.tp, align 4
  %i.tr = shl i32 %i.tq, 3
  %i.ts = add i32 %.pre65.pre.pre.pre, %i.tr      ; 2 uses
  store i32 %i.ts, ptr @outd, align 4
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.pre65.pre.pre = phi i32 [ %i.ts, %bb.by ], [ %.pre65.pre.pre.pre, %bb.bx ] ; 2 uses
  %i.tt = icmp ult i32 %i.oc, 4095
  br i1 %i.tt, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.tu = getelementptr inbounds nuw i8, ptr %i.mx, i64 96
  %i.tv = load ptr, ptr %i.tu, align 8
  %i.tw = getelementptr inbounds nuw i8, ptr %i.mx, i64 56
  %i.tx = load i32, ptr %i.tw, align 8
  %i.ty = lshr i32 %i.tx, 13
  %i.tz = and i32 %i.ty, 2047
  %i.ua = zext nneg i32 %i.tz to i64
  %i.ub = getelementptr inbounds nuw [8 x i8], ptr %i.tv, i64 %i.ua
  %i.uc = load ptr, ptr %i.ub, align 8
  %i.ud = zext nneg i32 %i.oc to i64
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %i.uc, i64 %i.ud
  %i.uf = load i32, ptr %i.ue, align 4
  %i.ug = shl i32 %i.uf, 1
  %i.uh = add i32 %.pre65.pre.pre, %i.ug          ; 2 uses
  store i32 %i.uh, ptr @outd, align 4
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.pre65.pre = phi i32 [ %i.uh, %bb.ca ], [ %.pre65.pre.pre, %bb.bz ] ; 2 uses
  %i.ui = icmp ult i32 %i.pi, 4095
  br i1 %i.ui, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.uj = getelementptr inbounds nuw i8, ptr %i.lq, i64 96
  %i.uk = load ptr, ptr %i.uj, align 8
  %i.ul = getelementptr inbounds nuw i8, ptr %i.lq, i64 56
  %i.um = load i32, ptr %i.ul, align 8
  %i.un = add i32 %i.um, %i.td
  %i.uo = lshr i32 %i.un, 13
  %i.up = and i32 %i.uo, 2047
  %i.uq = zext nneg i32 %i.up to i64
  %i.ur = getelementptr inbounds nuw [8 x i8], ptr %i.uk, i64 %i.uq
  %i.us = load ptr, ptr %i.ur, align 8
  %i.ut = zext nneg i32 %i.pi to i64
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %i.us, i64 %i.ut
  %i.uv = load i32, ptr %i.uu, align 4
  %i.uw = shl i32 %i.uv, 1
  %i.ux = add i32 %.pre65.pre, %i.uw              ; 2 uses
  store i32 %i.ux, ptr @outd, align 4
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.pre65 = phi i32 [ %i.ux, %bb.cc ], [ %.pre65.pre, %bb.cb ] ; 2 uses
  %i.uy = icmp ult i32 %i.qp, 4095
  br i1 %i.uy, label %bb.ce, label %OPL_CALC_RH.exit

bb.ce:                                            ; preds = %bb.cd
  %i.uz = getelementptr inbounds nuw i8, ptr %i.lq, i64 96
  %i.va = load ptr, ptr %i.uz, align 8
  %i.vb = getelementptr inbounds nuw i8, ptr %i.lq, i64 56
  %i.vc = load i32, ptr %i.vb, align 8
  %i.vd = add i32 %i.vc, %i.td
  %i.ve = lshr i32 %i.vd, 13
  %i.vf = and i32 %i.ve, 2047
  %i.vg = zext nneg i32 %i.vf to i64
  %i.vh = getelementptr inbounds nuw [8 x i8], ptr %i.va, i64 %i.vg
  %i.vi = load ptr, ptr %i.vh, align 8
  %i.vj = zext nneg i32 %i.qp to i64
  %i.vk = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %i.vj
  %i.vl = load i32, ptr %i.vk, align 4
  %i.vm = shl i32 %i.vl, 1
  %i.vn = add i32 %.pre65, %i.vm                  ; 2 uses
  store i32 %i.vn, ptr @outd, align 4
  br label %OPL_CALC_RH.exit

OPL_CALC_RH.exit:                                 ; preds = %._crit_edge.OPL_CALC_RH.exit_crit_edge, %bb.ce, %bb.cd
  %i.vo = phi i32 [ %i.vn, %bb.ce ], [ %.pre65, %bb.cd ], [ %.pre64, %._crit_edge.OPL_CALC_RH.exit_crit_edge ]
  %i.vp = phi ptr [ %.pre62, %bb.ce ], [ %.pre62, %bb.cd ], [ %i.ab, %._crit_edge.OPL_CALC_RH.exit_crit_edge ]
  %i.vq = phi i32 [ %.pre60, %bb.ce ], [ %.pre60, %bb.cd ], [ %i.ac, %._crit_edge.OPL_CALC_RH.exit_crit_edge ]
  %i.vr = phi ptr [ %.pre58, %bb.ce ], [ %.pre58, %bb.cd ], [ %i.ad, %._crit_edge.OPL_CALC_RH.exit_crit_edge ]
  %i.vs = phi i32 [ %.pre56, %bb.ce ], [ %.pre56, %bb.cd ], [ %i.ae, %._crit_edge.OPL_CALC_RH.exit_crit_edge ]
  %i.vt = phi ptr [ %.pre54, %bb.ce ], [ %.pre54, %bb.cd ], [ %i.af, %._crit_edge.OPL_CALC_RH.exit_crit_edge ]
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.vo, i32 -268435456)
  %.0.i = tail call range(i32 -268435456, 268427265) i32 @llvm.smin.i32(i32 %spec.select.i, i32 268427264)
  %i.vu = lshr i32 %.0.i, 13
  %i.vv = trunc i32 %i.vu to i16
  %i.vw = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  store i16 %i.vv, ptr %i.vw, align 2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge48, label %.lr.ph47, !llvm.loop !9

._crit_edge48:                                    ; preds = %OPL_CALC_RH.exit, %bb.c
  %.029.lcssa = phi i32 [ %i.b, %bb.c ], [ %i.ag, %OPL_CALC_RH.exit ]
  %.028.lcssa = phi i32 [ %i.d, %bb.c ], [ %i.al, %OPL_CALC_RH.exit ]
  store i32 %.029.lcssa, ptr %i.a, align 8
  store i32 %.028.lcssa, ptr %i.c, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef ptr @OPLCreate(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @num_lock, align 4         ; 2 uses
  %i.b = add i32 %i.a, 1                          ; 2 uses
  store i32 %i.b, ptr @num_lock, align 4
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr @cur_chip, align 8
  %i.d = tail call noalias dereferenceable_or_null(65536) ptr @malloc(i64 noundef 65536) #14 ; 5 uses
  store ptr %i.d, ptr @TL_TABLE, align 8
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %OPL_LockTable.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noalias dereferenceable_or_null(65536) ptr @malloc(i64 noundef 65536) #14 ; 4 uses
  store ptr %i.f, ptr @SIN_TABLE, align 8
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.loopexit.sink.split.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #14 ; 3 uses
  store ptr %i.h, ptr @AMS_TABLE, align 8
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.loopexit.sink.split.sink.split.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #14 ; 2 uses
  store ptr %i.j, ptr @VIB_TABLE, align 8
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.d) #13
  br label %.loopexit.sink.split.sink.split.i.i

bb.g:                                             ; preds = %bb.e
  %i.l = tail call noalias dereferenceable_or_null(32772) ptr @g_malloc(i64 noundef 32772) #14 ; 4 uses
  store ptr %i.l, ptr @ENV_CURVE, align 8
  %i.m = load ptr, ptr @TL_TABLE, align 8         ; 7 uses
  br label %bb.h

.preheader73.i.i:                                 ; preds = %bb.h
  %scevgep.i.i = getelementptr nuw i8, ptr %i.m, i64 16380 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16388) %scevgep.i.i, i8 0, i64 16388, i1 false)
  %scevgep.i = getelementptr i8, ptr %i.m, i64 49148
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16388) %scevgep.i, i8 0, i64 16388, i1 false)
  %i.n = load ptr, ptr @SIN_TABLE, align 8        ; 11 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8192
  store ptr %scevgep.i.i, ptr %i.o, align 8
  store ptr %scevgep.i.i, ptr %i.n, align 8
  br label %bb.j

bb.h:                                             ; preds = %bb.i, %bb.g
  %indvars.iv.i.i = phi i64 [ 0, %bb.g ], [ %indvars.iv.next.i.i.1, %bb.i ] ; 5 uses
  %i.p = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.q = uitofp nneg i32 %i.p to double
  %i.r = fmul nnan double %i.q, 2.343750e-02
  %i.s = fdiv double %i.r, 2.000000e+01
  %i.t = tail call double @pow(double noundef 1.000000e+01, double noundef %i.s) #13
  %i.u = fdiv double f0x418FFFFFF8000000, %i.t
  %i.v = fptosi double %i.u to i32                ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i.i ; 2 uses
  store i32 %i.v, ptr %i.w, align 4
  %i.x = sub i32 0, %i.v
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 32768
  store i32 %i.x, ptr %i.y, align 4
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.i.i, 4094
  br i1 %exitcond.not.i.i, label %.preheader73.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.z = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  %i.aa = uitofp nneg i32 %i.z to double
  %i.ab = fmul nnan double %i.aa, 2.343750e-02
  %i.ac = fdiv double %i.ab, 2.000000e+01
  %i.ad = tail call double @pow(double noundef 1.000000e+01, double noundef %i.ac) #13
  %i.ae = fdiv double f0x418FFFFFF8000000, %i.ad
  %i.af = fptosi double %i.ae to i32              ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next.i.i ; 2 uses
  store i32 %i.af, ptr %i.ag, align 4
  %i.ah = sub i32 0, %i.af
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 32768
  store i32 %i.ah, ptr %i.ai, align 4
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2
  br label %bb.h

.preheader72.i.i:                                 ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 16384 ; 4 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.j, %.preheader73.i.i
  %indvars.iv86.i.i = phi i64 [ 1, %.preheader73.i.i ], [ %indvars.iv.next87.i.i, %bb.j ] ; 5 uses
  %i.ak = trunc nuw nsw i64 %indvars.iv86.i.i to i32
  %i.al = uitofp nneg i32 %i.ak to double
  %i.am = fmul nnan double %i.al, f0x401921FB54442D18
  %i.an = fmul nnan double %i.am, f0x3F40000000000000
  %i.ao = tail call double @sin(double noundef %i.an) #13
  %i.ap = fdiv double 1.000000e+00, %i.ao
  %i.aq = tail call double @log10(double noundef %i.ap) #13
  %i.ar = fmul double %i.aq, 2.000000e+01
  %i.as = fdiv double %i.ar, 2.343750e-02
  %i.at = fptosi double %i.as to i32              ; 2 uses
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.au ; 2 uses
  %i.aw = sub nuw nsw i64 1024, %indvars.iv86.i.i
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.aw
  store ptr %i.av, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv86.i.i ; 2 uses
  store ptr %i.av, ptr %i.ay, align 8
  %i.az = add i32 %i.at, 8192
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.ba ; 2 uses
  %i.bc = sub nuw nsw i64 2048, %indvars.iv86.i.i
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bc
  store ptr %i.bb, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 8192
  store ptr %i.bb, ptr %i.be, align 8
  %indvars.iv.next87.i.i = add nuw nsw i64 %indvars.iv86.i.i, 1 ; 2 uses
  %exitcond89.not.i.i = icmp eq i64 %indvars.iv.next87.i.i, 513
  br i1 %exitcond89.not.i.i, label %.preheader72.i.i, label %bb.j, !llvm.loop !10

bb.k:                                             ; preds = %bb.o, %.preheader72.i.i
  %indvars.iv90.i.i = phi i64 [ 0, %.preheader72.i.i ], [ %indvars.iv.next91.i.i.1, %bb.o ] ; 9 uses
  %i.bf = icmp samesign ult i64 %indvars.iv90.i.i, 1024
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv90.i.i
  %i.bh = load ptr, ptr %i.bg, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bi = phi ptr [ %i.bh, %bb.l ], [ %i.aj, %bb.k ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv90.i.i ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16384
  store ptr %i.bi, ptr %i.bk, align 8
  %i.bl = and i64 %indvars.iv90.i.i, 1022
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bl
  %i.bn = load ptr, ptr %i.bm, align 8            ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 32768
  store ptr %i.bn, ptr %i.bo, align 8
  %i.bp = and i64 %indvars.iv90.i.i, 512
  %.not.i.i = icmp eq i64 %i.bp, 0
  %spec.select.i.i = select i1 %.not.i.i, ptr %i.bn, ptr %i.aj
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 49152
  store ptr %spec.select.i.i, ptr %i.bq, align 8
  %indvars.iv.next91.i.i = or disjoint i64 %indvars.iv90.i.i, 1 ; 3 uses
  %i.br = icmp samesign ult i64 %indvars.iv90.i.i, 1024
  br i1 %i.br, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next91.i.i
  %i.bt = load ptr, ptr %i.bs, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bu = phi ptr [ %i.bt, %bb.n ], [ %i.aj, %bb.m ]
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next91.i.i ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16384
  store ptr %i.bu, ptr %i.bw, align 8
  %i.bx = and i64 %indvars.iv.next91.i.i, 1023
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bx
  %i.bz = load ptr, ptr %i.by, align 8            ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 32768
  store ptr %i.bz, ptr %i.ca, align 8
  %i.cb = and i64 %indvars.iv90.i.i, 512
  %.not.i.i.1 = icmp eq i64 %i.cb, 0
  %spec.select.i.i.1 = select i1 %.not.i.i.1, ptr %i.bz, ptr %i.aj
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 49152
  store ptr %spec.select.i.i.1, ptr %i.cc, align 8
  %indvars.iv.next91.i.i.1 = add nuw nsw i64 %indvars.iv90.i.i, 2 ; 2 uses
  %exitcond93.not.i.i.1 = icmp eq i64 %indvars.iv.next91.i.i.1, 2048
  br i1 %exitcond93.not.i.i.1, label %.preheader71.i.i, label %bb.k, !llvm.loop !11

.preheader71.i.i:                                 ; preds = %bb.o, %.preheader71.i.i
  %indvars.iv94.i.i = phi i64 [ %indvars.iv.next95.i.i.1, %.preheader71.i.i ], [ 0, %bb.o ] ; 4 uses
  %i.cd = trunc i64 %indvars.iv94.i.i to i32      ; 2 uses
  %i.ce = sub nuw nsw i32 4095, %i.cd
  %i.cf = uitofp nneg i32 %i.ce to double
  %i.cg = fmul nnan double %i.cf, f0x3F30000000000000
  %i.ch = tail call double @pow(double noundef %i.cg, double noundef 8.000000e+00) #13
  %i.ci = fmul double %i.ch, 4.096000e+03
  %i.cj = fptosi double %i.ci to i32
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv94.i.i ; 2 uses
  store i32 %i.cj, ptr %i.ck, align 4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16384
  store i32 %i.cd, ptr %i.cl, align 4
  %indvars.iv.next95.i.i = or disjoint i64 %indvars.iv94.i.i, 1 ; 2 uses
  %i.cm = trunc i64 %indvars.iv.next95.i.i to i32 ; 2 uses
  %i.cn = sub nuw nsw i32 4095, %i.cm
  %i.co = uitofp nneg i32 %i.cn to double
  %i.cp = fmul nnan double %i.co, f0x3F30000000000000
  %i.cq = tail call double @pow(double noundef %i.cp, double noundef 8.000000e+00) #13
  %i.cr = fmul double %i.cq, 4.096000e+03
  %i.cs = fptosi double %i.cr to i32
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next95.i.i ; 2 uses
  store i32 %i.cs, ptr %i.ct, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16384
  store i32 %i.cm, ptr %i.cu, align 4
  %indvars.iv.next95.i.i.1 = add nuw nsw i64 %indvars.iv94.i.i, 2 ; 2 uses
  %exitcond97.not.i.i.1 = icmp eq i64 %indvars.iv.next95.i.i.1, 4096
  br i1 %exitcond97.not.i.i.1, label %bb.p, label %.preheader71.i.i, !llvm.loop !12

bb.p:                                             ; preds = %.preheader71.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.l, i64 32768
  store i32 4095, ptr %i.cv, align 4
  %i.cw = load ptr, ptr @AMS_TABLE, align 8
  br label %bb.q

.preheader.i.i:                                   ; preds = %bb.q
  %i.cx = load ptr, ptr @VIB_TABLE, align 8
  br label %bb.r

bb.q:                                             ; preds = %bb.q, %bb.p
  %indvars.iv98.i.i = phi i64 [ 0, %bb.p ], [ %indvars.iv.next99.i.i, %bb.q ] ; 3 uses
  %i.cy = trunc nuw nsw i64 %indvars.iv98.i.i to i32
  %i.cz = uitofp nneg i32 %i.cy to double
  %i.da = fmul nnan double %i.cz, f0x401921FB54442D18
  %i.db = fmul nnan double %i.da, f0x3F60000000000000
  %i.dc = tail call double @sin(double noundef %i.db) #13
  %i.dd = fadd double %i.dc, 1.000000e+00
  %i.de = fmul double %i.dd, 5.000000e-01         ; 2 uses
  %i.df = fmul double %i.de, f0x4045555555555555
  %i.dg = fptosi double %i.df to i32
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv98.i.i ; 2 uses
  store i32 %i.dg, ptr %i.dh, align 4
  %i.di = fmul double %i.de, f0x4069999999999999
  %i.dj = fptosi double %i.di to i32
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 2048
  store i32 %i.dj, ptr %i.dk, align 4
  %indvars.iv.next99.i.i = add nuw nsw i64 %indvars.iv98.i.i, 1 ; 2 uses
  %exitcond101.not.i.i = icmp eq i64 %indvars.iv.next99.i.i, 512
  br i1 %exitcond101.not.i.i, label %.preheader.i.i, label %bb.q, !llvm.loop !13

bb.r:                                             ; preds = %bb.r, %.preheader.i.i
  %indvars.iv102.i.i = phi i64 [ 0, %.preheader.i.i ], [ %indvars.iv.next103.i.i, %bb.r ] ; 3 uses
  %i.dl = trunc nuw nsw i64 %indvars.iv102.i.i to i32
  %i.dm = uitofp nneg i32 %i.dl to double
  %i.dn = fmul nnan double %i.dm, f0x401921FB54442D18
  %i.do = fmul nnan double %i.dn, f0x3F60000000000000
  %i.dp = tail call double @sin(double noundef %i.do) #13
  %i.dq = fmul double %i.dp, 1.536000e+01
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv102.i.i ; 2 uses
  %i.ds = insertelement <2 x double> poison, double %i.dq, i64 0
  %i.dt = shufflevector <2 x double> %i.ds, <2 x double> poison, <2 x i32> zeroinitializer
  %i.du = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dt, <2 x double> <double 7.000000e-02, double 1.400000e-01>, <2 x double> splat (double 2.560000e+02))
  %i.dv = fptosi <2 x double> %i.du to <2 x i32>  ; 2 uses
  %i.dw = extractelement <2 x i32> %i.dv, i64 0
  store i32 %i.dw, ptr %i.dr, align 4
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dr, i64 2048
  %i.dy = extractelement <2 x i32> %i.dv, i64 1
  store i32 %i.dy, ptr %i.dx, align 4
  %indvars.iv.next103.i.i = add nuw nsw i64 %indvars.iv102.i.i, 1 ; 2 uses
  %exitcond105.not.i.i = icmp eq i64 %indvars.iv.next103.i.i, 512
  br i1 %exitcond105.not.i.i, label %.loopexit, label %bb.r, !llvm.loop !14

.loopexit.sink.split.sink.split.i.i:              ; preds = %bb.f, %bb.d
  %.sink109.i.i = phi ptr [ %i.f, %bb.f ], [ %i.d, %bb.d ]
  %.sink.ph.i.i = phi ptr [ %i.h, %bb.f ], [ %i.f, %bb.d ]
  tail call void @free(ptr noundef nonnull %.sink109.i.i) #13
  br label %.loopexit.sink.split.i.i

.loopexit.sink.split.i.i:                         ; preds = %.loopexit.sink.split.sink.split.i.i, %bb.c
  %.sink.i.i = phi ptr [ %i.d, %bb.c ], [ %.sink.ph.i.i, %.loopexit.sink.split.sink.split.i.i ]
  tail call void @free(ptr noundef nonnull %.sink.i.i) #13
  br label %OPL_LockTable.exit

OPL_LockTable.exit:                               ; preds = %bb.b, %.loopexit.sink.split.i.i
  store i32 %i.a, ptr @num_lock, align 4
  br label %OPLResetChip.exit

.loopexit:                                        ; preds = %bb.r, %bb.a
  %calloc = tail call dereferenceable_or_null(7200) ptr @calloc(i64 1, i64 7200) ; 36 uses
  %i.dz = icmp eq ptr %calloc, null
  br i1 %i.dz, label %OPLResetChip.exit, label %vector.ph

vector.ph:                                        ; preds = %.loopexit
  %i.ea = getelementptr inbounds nuw i8, ptr %calloc, i64 4824
  %i.eb = getelementptr inbounds nuw i8, ptr %calloc, i64 48 ; 4 uses
  store ptr %i.ea, ptr %i.eb, align 8
  store i32 %0, ptr %calloc, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %calloc, i64 4
  store i32 %1, ptr %i.ec, align 4
  %i.ed = getelementptr inbounds nuw i8, ptr %calloc, i64 56 ; 4 uses
  store i32 9, ptr %i.ed, align 8
  %.not.i = icmp eq i32 %1, 0                     ; 2 uses
  %.pre27.i = sitofp i32 %0 to double             ; 3 uses
  %i.ee = sitofp i32 %1 to double                 ; 2 uses
  %i.ef = fdiv double %.pre27.i, %i.ee
  %i.eg = fdiv double %i.ef, 7.200000e+01
  %i.eh = select i1 %.not.i, double 0.000000e+00, double %i.eg ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %calloc, i64 8
  store double %i.eh, ptr %i.ei, align 8
  %i.ej = fdiv double %.pre27.i, 7.200000e+01
  %i.ek = fdiv double 1.000000e+00, %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %calloc, i64 16
  store double %i.ek, ptr %i.el, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %calloc, i64 368 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %calloc, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.en, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.em, i8 0, i64 16, i1 false)
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.eh, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.eo = add nuw i64 %index, 4                   ; 2 uses
  %i.ep = and <4 x i32> %vec.ind, splat (i32 3)
  %i.eq = uitofp nneg <4 x i32> %i.ep to <4 x double>
  %i.er = tail call nnan <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.eq, <4 x double> splat (double 2.500000e-01), <4 x double> splat (double 1.000000e+00))
  %i.es = fmul <4 x double> %broadcast.splat, %i.er
  %i.et = lshr <4 x i32> %vec.ind, splat (i32 2)
  %i.eu = add nsw <4 x i32> %i.et, splat (i32 -1)
  %i.ev = shl nuw nsw <4 x i32> splat (i32 1), %i.eu
  %i.ew = uitofp nneg <4 x i32> %i.ev to <4 x double>
  %i.ex = fmul <4 x double> %i.es, %i.ew
  %i.ey = fmul <4 x double> %i.ex, splat (double f0x41B0000000000000) ; 2 uses
  %i.ez = fdiv <4 x double> %i.ey, splat (double 1.412800e+05)
  %i.fa = fptosi <4 x double> %i.ez to <4 x i32>
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.eo
  store <4 x i32> %i.fa, ptr %i.fb, align 4
  %i.fc = fdiv <4 x double> %i.ey, splat (double 1.956000e+06)
  %i.fd = fptosi <4 x double> %i.fc to <4 x i32>
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.eo
  store <4 x i32> %i.fd, ptr %i.fe, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.ff = icmp eq i64 %index.next, 56
  br i1 %i.ff, label %init_timetables.exit.i, label %vector.body, !llvm.loop !15

init_timetables.exit.i:                           ; preds = %vector.body
  %i.fg = fmul double %i.eh, 1.638400e+04
  %i.fh = fmul double %i.fg, f0x41B0000000000000
  %i.fi = getelementptr inbounds nuw i8, ptr %calloc, i64 304
  %i.fj = fdiv double %i.fh, 1.956000e+06
  %i.fk = fptosi double %i.fj to i32
  %i.fl = getelementptr inbounds nuw i8, ptr %calloc, i64 608
  store <4 x i32> splat (i32 268435455), ptr %i.fi, align 8
  %i.fm = insertelement <4 x i32> poison, i32 %i.fk, i64 0
  %i.fn = shufflevector <4 x i32> %i.fm, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  store <4 x i32> %i.fn, ptr %i.fl, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %calloc, i64 320
  %i.fp = getelementptr inbounds nuw i8, ptr %calloc, i64 624
  store <4 x i32> splat (i32 268435455), ptr %i.fo, align 8
  store <4 x i32> %i.fn, ptr %i.fp, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %calloc, i64 336
  %i.fr = getelementptr inbounds nuw i8, ptr %calloc, i64 640
  store <4 x i32> splat (i32 268435455), ptr %i.fq, align 8
  store <4 x i32> %i.fn, ptr %i.fr, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %calloc, i64 352
  %i.ft = getelementptr inbounds nuw i8, ptr %calloc, i64 656
  store <4 x i32> splat (i32 268435455), ptr %i.fs, align 8
  store <4 x i32> %i.fn, ptr %i.ft, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %calloc, i64 672
  %broadcast.splatinsert40 = insertelement <4 x double> poison, double %i.eh, i64 0
  %broadcast.splat41 = shufflevector <4 x double> %broadcast.splatinsert40, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body42

vector.body42:                                    ; preds = %vector.body42, %init_timetables.exit.i
  %index43 = phi i64 [ 0, %init_timetables.exit.i ], [ %index.next45, %vector.body42 ] ; 2 uses
  %vec.ind44 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %init_timetables.exit.i ], [ %vec.ind.next46, %vector.body42 ] ; 2 uses
  %i.fv = uitofp nneg <4 x i32> %vec.ind44 to <4 x double>
  %i.fw = fmul <4 x double> %broadcast.splat41, %i.fv
  %i.fx = fmul <4 x double> %i.fw, splat (double 1.600000e+01)
  %i.fy = fmul <4 x double> %i.fx, splat (double 1.280000e+02)
  %i.fz = fmul <4 x double> %i.fy, splat (double 5.000000e-01)
  %i.ga = fptoui <4 x double> %i.fz to <4 x i32>
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %index43
  store <4 x i32> %i.ga, ptr %i.gb, align 4
  %index.next45 = add nuw i64 %index43, 4         ; 2 uses
  %vec.ind.next46 = add <4 x i32> %vec.ind44, splat (i32 4)
  %i.gc = icmp eq i64 %index.next45, 1024
  br i1 %i.gc, label %middle.block47, label %vector.body42, !llvm.loop !19

middle.block47:                                   ; preds = %vector.body42
  br i1 %.not.i, label %.lr.ph.i.i, label %bb.s

bb.s:                                             ; preds = %middle.block47
  %i.gd = insertelement <2 x double> <double poison, double f0x41F0000000000000>, double %.pre27.i, i64 0
  %i.ge = insertelement <2 x double> <double 3.600000e+06, double poison>, double %i.ee, i64 1
  %i.gf = fdiv nnan <2 x double> %i.gd, %i.ge     ; 4 uses
  %i.gg = fmul nnan <2 x double> %i.gf, <double poison, double 3.700000e+00>
  %i.gh = extractelement <2 x double> %i.gf, i64 0
  %shift = shufflevector <2 x double> %i.gg, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.gf, %shift
  %i.gi = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.gj = fptosi double %i.gi to i32
  %i.gk = extractelement <2 x double> %i.gf, i64 1
  %i.gl = fmul nnan double %i.gk, 6.400000e+00
  %i.gm = fmul double %i.gh, %i.gl
  %i.gn = fptosi double %i.gm to i32
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %middle.block47, %bb.s
  %.sink.i = phi i32 [ %i.gj, %bb.s ], [ 0, %middle.block47 ]
  %i.go = phi i32 [ %i.gn, %bb.s ], [ 0, %middle.block47 ]
  %i.gp = getelementptr inbounds nuw i8, ptr %calloc, i64 4788
  store i32 %.sink.i, ptr %i.gp, align 4
  %i.gq = getelementptr inbounds nuw i8, ptr %calloc, i64 4796
  store i32 %i.go, ptr %i.gq, align 4
  %i.gr = getelementptr inbounds nuw i8, ptr %calloc, i64 28
  store i32 0, ptr %i.gr, align 4
  %i.gs = getelementptr inbounds nuw i8, ptr %calloc, i64 25 ; 5 uses
  store i8 0, ptr %i.gs, align 1
  %i.gt = getelementptr inbounds nuw i8, ptr %calloc, i64 4800
  store i8 0, ptr %i.gt, align 8
  %i.gu = load ptr, ptr @SIN_TABLE, align 8       ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.lr.ph.i.i
  %indvars.iv.i.i28 = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i29, %bb.t ] ; 3 uses
  %i.gv = load ptr, ptr %i.eb, align 8
  %i.gw = getelementptr inbounds nuw [264 x i8], ptr %i.gv, i64 %indvars.iv.i.i28
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 96
  store ptr %i.gu, ptr %i.gx, align 8
  %i.gy = load ptr, ptr %i.eb, align 8
  %i.gz = getelementptr inbounds nuw [264 x i8], ptr %i.gy, i64 %indvars.iv.i.i28
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 200
  store ptr %i.gu, ptr %i.ha, align 8
  %indvars.iv.next.i.i29 = add nuw nsw i64 %indvars.iv.i.i28, 1 ; 2 uses
  %i.hb = load i32, ptr %i.ed, align 8
  %i.hc = sext i32 %i.hb to i64
  %i.hd = icmp slt i64 %indvars.iv.next.i.i29, %i.hc
  br i1 %i.hd, label %bb.t, label %OPLWriteReg.exit.i, !llvm.loop !20

OPLWriteReg.exit.i:                               ; preds = %bb.t
  %.pre.i30 = load i8, ptr %i.gs, align 1         ; 5 uses
  %i.he = getelementptr inbounds nuw i8, ptr %calloc, i64 32
  store i32 1024, ptr %i.he, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %calloc, i64 36
  store i32 4096, ptr %i.hf, align 4
  %.not.i204.i.i = icmp sgt i8 %.pre.i30, -1
  %i.hg = getelementptr inbounds nuw i8, ptr %calloc, i64 26 ; 3 uses
  br i1 %.not.i204.i.i, label %OPL_STATUS_RESET.exit206.thread245.i.i, label %bb.u

bb.u:                                             ; preds = %OPLWriteReg.exit.i
  %i.hh = load i8, ptr %i.hg, align 2
  %i.hi = and i8 %i.hh, %.pre.i30
  %.not5.i205.i.i = icmp eq i8 %i.hi, 0
  br i1 %.not5.i205.i.i, label %OPL_STATUS_RESET.exit206.thread.i.i, label %OPL_STATUS_RESET.exit206.i.i

OPL_STATUS_RESET.exit206.thread.i.i:              ; preds = %bb.u
  %i.hj = and i8 %.pre.i30, 127                   ; 2 uses
  store i8 %i.hj, ptr %i.gs, align 1
  br label %OPL_STATUS_RESET.exit206.thread245.i.i

OPL_STATUS_RESET.exit206.i.i:                     ; preds = %bb.u
  store i8 121, ptr %i.hg, align 2
  br label %bb.w

OPL_STATUS_RESET.exit206.thread245.i.i:           ; preds = %OPL_STATUS_RESET.exit206.thread.i.i, %OPLWriteReg.exit.i
  %i.hk = phi i8 [ %i.hj, %OPL_STATUS_RESET.exit206.thread.i.i ], [ %.pre.i30, %OPLWriteReg.exit.i ] ; 2 uses
  store i8 121, ptr %i.hg, align 2
  %i.hl = and i8 %i.hk, 121
  %.not5.i.i.i.i = icmp eq i8 %i.hl, 0
  br i1 %.not5.i.i.i.i, label %OPL_STATUSMASK_SET.exit.i.i, label %bb.v

bb.v:                                             ; preds = %OPL_STATUS_RESET.exit206.thread245.i.i
  %i.hm = or disjoint i8 %i.hk, -128              ; 2 uses
  store i8 %i.hm, ptr %i.gs, align 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %OPL_STATUS_RESET.exit206.i.i
  %.ph.i.i.i = phi i8 [ %i.hm, %bb.v ], [ %.pre.i30, %OPL_STATUS_RESET.exit206.i.i ] ; 2 uses
  %i.hn = and i8 %.ph.i.i.i, 121
  %.not5.i4.i.i.i = icmp eq i8 %i.hn, 0
  br i1 %.not5.i4.i.i.i, label %bb.x, label %OPL_STATUSMASK_SET.exit.i.i
end_hunk_0

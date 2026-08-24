Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/gencnval?download=true
inline.NumInlined: 14
inline.NumDeleted: 11
begin_hunk_0_@main:bb.a
bb.co:                                            ; preds = %bb.cn, %bb.cm, %bb.cl
  %.2110.i.i = phi i16 [ %.1109.i.i, %bb.cl ], [ %.1109.i.i, %bb.cm ], [ %.0111.i.i, %bb.cn ]
  %.146.i.i = phi i32 [ %.045119.i.i, %bb.cl ], [ %.045119.i.i, %bb.cm ], [ %i.py, %bb.cn ] ; 3 uses
  %.143.i.i = phi i16 [ %.042121.i.i, %bb.cl ], [ %.042121.i.i, %bb.cm ], [ %.1107.i.i, %bb.cn ]
  %.1.i.i = phi ptr [ %.0122.i.i, %bb.cl ], [ %.0122.i.i, %bb.cm ], [ %i.qb, %bb.cn ]
  %i.qc = zext i16 %.1107.i.i to i64
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr @converters, i64 %i.qc
  %i.qe = load i16, ptr %i.qd, align 4, !tbaa !35
  %i.qf = zext i16 %i.qe to i64
  %i.qg = shl nuw nsw i64 %i.qf, 1
  %i.qh = getelementptr inbounds nuw i8, ptr @stringStore, i64 %i.qg
  %i.qi = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.qh, i32 noundef 44) #17
  %.not52.i.i = icmp eq ptr %i.qi, null
  br i1 %.not52.i.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.qj = add i32 %.146.i.i, -1
  %i.qk = zext i32 %i.qj to i64
  %i.ql = getelementptr inbounds nuw [2 x i8], ptr %i.lr, i64 %i.qk ; 2 uses
  %i.qm = load i16, ptr %i.ql, align 2, !tbaa !21
  %i.qn = or i16 %i.qm, 16384
  store i16 %i.qn, ptr %i.ql, align 2, !tbaa !21
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.qo = load i16, ptr @knownAliasesCount, align 2, !tbaa !21
  %i.qp = zext i16 %i.qo to i64
  %i.qq = icmp samesign ult i64 %indvars.iv.next.i.i, %i.qp
  br i1 %i.qq, label %.lr.ph.i.i60, label %resolveAliases.exit.i, !llvm.loop !52

resolveAliases.exit.i:                            ; preds = %bb.cq, %resolveAliasToConverter.exit.i.i, %bb.bw
  %.2.i.i = phi i32 [ 0, %bb.bw ], [ 1, %resolveAliasToConverter.exit.i.i ], [ %.146.i.i, %bb.cq ] ; 3 uses
  store i16 0, ptr @aliasListsSize, align 2, !tbaa !21
  %i.qr = load i16, ptr @tagCount, align 2, !tbaa !21 ; 2 uses
  %.not91.i = icmp eq i16 %i.qr, 0
  br i1 %.not91.i, label %._crit_edge84.i, label %.preheader71.preheader.i

.preheader71.preheader.i:                         ; preds = %resolveAliases.exit.i
  %.pre115.i = load i16, ptr @converterCount, align 2, !tbaa !21 ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.lc, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %.preheader71.i

.preheader71.i:                                   ; preds = %._crit_edge.i57, %.preheader71.preheader.i
  %i.qs = phi i16 [ %i.qr, %.preheader71.preheader.i ], [ %i.vc, %._crit_edge.i57 ] ; 2 uses
  %i.qt = phi i16 [ %.pre115.i, %.preheader71.preheader.i ], [ %i.vd, %._crit_edge.i57 ] ; 6 uses
  %aliasListsSize.promoted.i = phi i16 [ 0, %.preheader71.preheader.i ], [ %aliasListsSize.promoted120.i, %._crit_edge.i57 ] ; 4 uses
  %i.qu = phi i16 [ %.pre115.i, %.preheader71.preheader.i ], [ %i.ve, %._crit_edge.i57 ] ; 2 uses
  %i.qv = phi i16 [ 0, %.preheader71.preheader.i ], [ %i.vf, %._crit_edge.i57 ] ; 2 uses
  %i.qw = phi i16 [ %.pre115.i, %.preheader71.preheader.i ], [ %i.vg, %._crit_edge.i57 ] ; 2 uses
  %indvars.iv106.i = phi i64 [ 0, %.preheader71.preheader.i ], [ %indvars.iv.next107.i, %._crit_edge.i57 ] ; 5 uses
  %.not92.i = icmp eq i16 %i.qw, 0
  br i1 %.not92.i, label %._crit_edge.i57, label %.lr.ph.i55

.lr.ph.i55:                                       ; preds = %.preheader71.i
  %i.qx = getelementptr inbounds nuw [65528 x i8], ptr @tags, i64 %indvars.iv106.i ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 8 ; 2 uses
  %i.qz = icmp eq i64 %indvars.iv106.i, 0
  br i1 %i.qz, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i55
  %i.ra = call i16 @llvm.umax.i16(i16 %i.qt, i16 1)
  %wide.trip.count.i = zext i16 %i.ra to i64
  br label %bb.cr

bb.cr:                                            ; preds = %createOneAliasList.exit.us.i, %.lr.ph.split.us.i
  %aliasListsSize.promoted121.i = phi i16 [ %aliasListsSize.promoted122.i, %createOneAliasList.exit.us.i ], [ %aliasListsSize.promoted.i, %.lr.ph.split.us.i ]
  %indvars.iv103.i = phi i64 [ %indvars.iv.next104.i, %createOneAliasList.exit.us.i ], [ 0, %.lr.ph.split.us.i ] ; 4 uses
  %.lcssa72.us81.i = phi i16 [ %.lcssa72.us80.i, %createOneAliasList.exit.us.i ], [ %aliasListsSize.promoted.i, %.lr.ph.split.us.i ] ; 6 uses
  %i.rb = getelementptr inbounds nuw [16 x i8], ptr %i.qy, i64 %indvars.iv103.i ; 2 uses
  %i.rc = load i16, ptr %i.rb, align 8, !tbaa !43 ; 3 uses
  %i.rd = icmp eq i16 %i.rc, 0
  br i1 %i.rd, label %bb.ct, label %.lr.ph.i59.us.i

.lr.ph.i59.us.i:                                  ; preds = %bb.cr
  %i.re = add i16 %.lcssa72.us81.i, 1             ; 8 uses
  store i16 %i.re, ptr @aliasListsSize, align 2, !tbaa !21
  %i.rf = zext i16 %.lcssa72.us81.i to i64
  %i.rg = getelementptr inbounds nuw [2 x i8], ptr @aliasLists, i64 %i.rf
  store i16 %i.rc, ptr %i.rg, align 2, !tbaa !21
  %i.rh = getelementptr inbounds nuw [2 x i8], ptr %i.lj, i64 %indvars.iv103.i
  store i16 %i.re, ptr %i.rh, align 2, !tbaa !21
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rb, i64 8
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !46 ; 3 uses
  %i.rk = ptrtoaddr ptr %i.rj to i64
  %i.rl = zext i16 %i.rc to i64                   ; 3 uses
  %i.rm = add nsw i64 %i.rl, -1
  %i.rn = sub i16 -3, %.lcssa72.us81.i
  %i.ro = zext i16 %i.rn to i64
  %i.rp = call i64 @llvm.umin.i64(i64 %i.rm, i64 %i.ro) ; 2 uses
  %i.rq = add nuw nsw i64 %i.rp, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.rp, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i59.us.i
  %i.rr = add nsw i64 %i.rl, -1
  %i.rs = sub i16 -3, %.lcssa72.us81.i
  %i.rt = zext i16 %i.rs to i64
  %umin = call i64 @llvm.umin.i64(i64 %i.rr, i64 %i.rt)
  %i.ru = trunc nuw i64 %umin to i16
  %i.rv = sub i16 -2, %.lcssa72.us81.i
  %i.rw = icmp ult i16 %i.rv, %i.ru
  br i1 %i.rw, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.rx = zext i16 %i.re to i64
  %i.ry = shl nuw nsw i64 %i.rx, 1
  %i.rz = add i64 %i.ry, ptrtoaddr (ptr @aliasLists to i64)
  %i.sa = sub i64 %i.rk, %i.rz
  %diff.check = icmp ugt i64 %i.sa, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.sb = and i64 %i.rq, 15                       ; 2 uses
  %i.sc = icmp eq i64 %i.sb, 0
  %i.sd = select i1 %i.sc, i64 16, i64 %i.sb
  %n.vec = sub nsw i64 %i.rq, %i.sd               ; 3 uses
  %i.se = trunc i64 %n.vec to i16
  %i.sf = add i16 %i.re, %i.se
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.sg = trunc i64 %index to i16
  %i.sh = add i16 %i.re, %i.sg
  %i.si = getelementptr inbounds nuw [2 x i8], ptr %i.rj, i64 %index ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 16
  %wide.load = load <8 x i16>, ptr %i.si, align 2, !tbaa !21 ; 2 uses
  %wide.load297 = load <8 x i16>, ptr %i.sj, align 2, !tbaa !21 ; 2 uses
  %i.sk = icmp eq <8 x i16> %wide.load, zeroinitializer
  %i.sl = icmp eq <8 x i16> %wide.load297, zeroinitializer
  %i.sm = add <8 x i16> %wide.load, %broadcast.splat
  %i.sn = add <8 x i16> %wide.load297, %broadcast.splat
  %i.so = select <8 x i1> %i.sk, <8 x i16> zeroinitializer, <8 x i16> %i.sm
  %i.sp = select <8 x i1> %i.sl, <8 x i16> zeroinitializer, <8 x i16> %i.sn
  %i.sq = zext i16 %i.sh to i64
  %i.sr = getelementptr inbounds nuw [2 x i8], ptr @aliasLists, i64 %i.sq ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 16
  store <8 x i16> %i.so, ptr %i.sr, align 2, !tbaa !21
  store <8 x i16> %i.sp, ptr %i.ss, align 2, !tbaa !21
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.st = icmp eq i64 %index.next, %n.vec
  br i1 %i.st, label %scalar.ph.preheader, label %vector.body, !llvm.loop !53

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %vector.scevcheck, %.lr.ph.i59.us.i
  %indvars.iv29.i.us.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i59.us.i ], [ %n.vec, %vector.body ]
  %.ph = phi i16 [ %i.re, %vector.memcheck ], [ %i.re, %vector.scevcheck ], [ %i.re, %.lr.ph.i59.us.i ], [ %i.sf, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.cs
  %indvars.iv29.i.us.i = phi i64 [ %indvars.iv.next30.i.us.i, %bb.cs ], [ %indvars.iv29.i.us.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.su = phi i16 [ %i.sy, %bb.cs ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %i.sv = getelementptr inbounds nuw [2 x i8], ptr %i.rj, i64 %indvars.iv29.i.us.i
  %i.sw = load i16, ptr %i.sv, align 2, !tbaa !21 ; 2 uses
  %.not.us.i.us.i = icmp eq i16 %i.sw, 0
  %i.sx = add i16 %i.sw, %i.lc
  %.0.us.i.us.i = select i1 %.not.us.i.us.i, i16 0, i16 %i.sx
  %i.sy = add i16 %i.su, 1                        ; 5 uses
  %i.sz = zext i16 %i.su to i64
  %i.ta = getelementptr inbounds nuw [2 x i8], ptr @aliasLists, i64 %i.sz
  store i16 %.0.us.i.us.i, ptr %i.ta, align 2, !tbaa !21
  %i.tb = icmp eq i16 %i.sy, -1
  br i1 %i.tb, label %.split.us.i.i, label %bb.cs

bb.cs:                                            ; preds = %scalar.ph
  %indvars.iv.next30.i.us.i = add nuw nsw i64 %indvars.iv29.i.us.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next30.i.us.i, %i.rl
  br i1 %exitcond.not.i, label %..loopexit_crit_edge.split.us.i.us.i, label %scalar.ph, !llvm.loop !56

..loopexit_crit_edge.split.us.i.us.i:             ; preds = %bb.cs
  store i16 %i.sy, ptr @aliasListsSize, align 2, !tbaa !21
  br label %createOneAliasList.exit.us.i

bb.ct:                                            ; preds = %bb.cr
  %i.tc = getelementptr inbounds nuw [2 x i8], ptr %i.lj, i64 %indvars.iv103.i
  store i16 0, ptr %i.tc, align 2, !tbaa !21
  br label %createOneAliasList.exit.us.i

createOneAliasList.exit.us.i:                     ; preds = %bb.ct, %..loopexit_crit_edge.split.us.i.us.i
  %aliasListsSize.promoted122.i = phi i16 [ %aliasListsSize.promoted121.i, %bb.ct ], [ %i.sy, %..loopexit_crit_edge.split.us.i.us.i ] ; 2 uses
  %.lcssa72.us80.i = phi i16 [ %.lcssa72.us81.i, %bb.ct ], [ %i.sy, %..loopexit_crit_edge.split.us.i.us.i ] ; 2 uses
  %indvars.iv.next104.i = add nuw nsw i64 %indvars.iv103.i, 1 ; 2 uses
  %exitcond105.not.i = icmp eq i64 %indvars.iv.next104.i, %wide.trip.count.i
  br i1 %exitcond105.not.i, label %._crit_edge.i57, label %bb.cr, !llvm.loop !57

.lr.ph.split.i:                                   ; preds = %.lr.ph.i55, %createOneAliasList.exit.i
  %i.td = phi i16 [ %i.ux, %createOneAliasList.exit.i ], [ %i.qt, %.lr.ph.i55 ]
  %aliasListsSize.promoted118.i = phi i16 [ %aliasListsSize.promoted117.i, %createOneAliasList.exit.i ], [ %aliasListsSize.promoted.i, %.lr.ph.i55 ]
  %i.te = phi i16 [ %i.uy, %createOneAliasList.exit.i ], [ %i.qu, %.lr.ph.i55 ]
  %i.tf = phi i16 [ %i.uz, %createOneAliasList.exit.i ], [ %i.qv, %.lr.ph.i55 ] ; 3 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %createOneAliasList.exit.i ], [ 0, %.lr.ph.i55 ] ; 5 uses
  %.in.i = phi i16 [ %i.uy, %createOneAliasList.exit.i ], [ %i.qw, %.lr.ph.i55 ] ; 2 uses
  %i.tg = getelementptr inbounds nuw [16 x i8], ptr %i.qy, i64 %indvars.iv.i ; 3 uses
  %i.th = load i16, ptr %i.tg, align 8, !tbaa !43 ; 2 uses
  %i.ti = icmp eq i16 %i.th, 0
  br i1 %i.ti, label %bb.cu, label %.lr.ph.i59.i

bb.cu:                                            ; preds = %.lr.ph.split.i
  %i.tj = zext i16 %.in.i to i64
  %i.tk = mul nuw i64 %indvars.iv106.i, %i.tj
  %i.tl = getelementptr inbounds nuw [2 x i8], ptr %i.lj, i64 %i.tk
  %i.tm = getelementptr inbounds nuw [2 x i8], ptr %i.tl, i64 %indvars.iv.i
  store i16 0, ptr %i.tm, align 2, !tbaa !21
  br label %createOneAliasList.exit.i

.lr.ph.i59.i:                                     ; preds = %.lr.ph.split.i
  %i.tn = add i16 %i.tf, 1                        ; 3 uses
  store i16 %i.tn, ptr @aliasListsSize, align 2, !tbaa !21
  %i.to = zext i16 %i.tf to i64
  %i.tp = getelementptr inbounds nuw [2 x i8], ptr @aliasLists, i64 %i.to
  store i16 %i.th, ptr %i.tp, align 2, !tbaa !21
  %i.tq = zext i16 %.in.i to i64
  %i.tr = mul nuw i64 %indvars.iv106.i, %i.tq
  %i.ts = getelementptr inbounds nuw [2 x i8], ptr %i.lj, i64 %i.tr
  %i.tt = getelementptr inbounds nuw [2 x i8], ptr %i.ts, i64 %indvars.iv.i
  store i16 %i.tn, ptr %i.tt, align 2, !tbaa !21
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tg, i64 8
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr @converters, i64 %indvars.iv.i
  br label %.lr.ph.split.i.i

.split.us.i.i:                                    ; preds = %scalar.ph
  store i16 -1, ptr @aliasListsSize, align 2, !tbaa !21
  br label %.split.i.i

bb.cv:                                            ; preds = %bb.cz
  %indvars.iv.next.i62.i = add nuw nsw i64 %indvars.iv.i60.i, 1 ; 2 uses
  %i.tw = load i16, ptr %i.tg, align 8, !tbaa !43
  %i.tx = zext i16 %i.tw to i64
  %i.ty = icmp samesign ult i64 %indvars.iv.next.i62.i, %i.tx
  br i1 %i.ty, label %.lr.ph.split.i.i, label %createOneAliasList.exit.loopexit.i, !llvm.loop !58

.lr.ph.split.i.i:                                 ; preds = %bb.cv, %.lr.ph.i59.i
  %i.tz = phi i16 [ %i.uq, %bb.cv ], [ %i.tn, %.lr.ph.i59.i ] ; 2 uses
  %indvars.iv.i60.i = phi i64 [ %indvars.iv.next.i62.i, %bb.cv ], [ 0, %.lr.ph.i59.i ] ; 2 uses
  %i.ua = load ptr, ptr %i.tu, align 8, !tbaa !46
  %i.ub = getelementptr inbounds nuw [2 x i8], ptr %i.ua, i64 %indvars.iv.i60.i
  %i.uc = load i16, ptr %i.ub, align 2, !tbaa !21 ; 2 uses
  %.not.i61.i = icmp eq i16 %i.uc, 0
  br i1 %.not.i61.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %.lr.ph.split.i.i
  %i.ud = add i16 %i.uc, %i.lc
  br label %bb.cz

bb.cx:                                            ; preds = %.lr.ph.split.i.i
  %.b.i63.i = load i1, ptr @quiet, align 1
  br i1 %.b.i63.i, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ue = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.uf = load ptr, ptr @path, align 8, !tbaa !16
  %i.ug = load i16, ptr %i.qx, align 8, !tbaa !30
  %i.uh = zext i16 %i.ug to i64
  %i.ui = shl nuw nsw i64 %i.uh, 1
  %i.uj = getelementptr inbounds nuw i8, ptr @tagStore, i64 %i.ui
  %i.uk = load i16, ptr %i.tv, align 4, !tbaa !35
  %i.ul = zext i16 %i.uk to i64
  %i.um = shl nuw nsw i64 %i.ul, 1
  %i.un = getelementptr inbounds nuw i8, ptr @stringStore, i64 %i.um
  %i.uo = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ue, ptr noundef nonnull @.str.49, ptr noundef %i.uf, ptr noundef nonnull %i.uj, ptr noundef nonnull %i.un) #16 ; 0 uses
  %.pre.i64.i = load i16, ptr @aliasListsSize, align 2, !tbaa !21
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx, %bb.cw
  %i.up = phi i16 [ %i.tz, %bb.cw ], [ %i.tz, %bb.cx ], [ %.pre.i64.i, %bb.cy ] ; 2 uses
  %.0.i.i56 = phi i16 [ %i.ud, %bb.cw ], [ 0, %bb.cx ], [ 0, %bb.cy ]
  %i.uq = add i16 %i.up, 1                        ; 5 uses
  store i16 %i.uq, ptr @aliasListsSize, align 2, !tbaa !21
  %i.ur = zext i16 %i.up to i64
  %i.us = getelementptr inbounds nuw [2 x i8], ptr @aliasLists, i64 %i.ur
  store i16 %.0.i.i56, ptr %i.us, align 2, !tbaa !21
  %i.ut = icmp eq i16 %i.uq, -1
  br i1 %i.ut, label %.split.i.i, label %bb.cv

.split.i.i:                                       ; preds = %bb.cz, %.split.us.i.i
  %i.uu = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.uv = load ptr, ptr @path, align 8, !tbaa !16
  %i.uw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.uu, ptr noundef nonnull @.str.50, ptr noundef %i.uv) #16 ; 0 uses
  call void @exit(i32 noundef 15) #18
  unreachable

createOneAliasList.exit.loopexit.i:               ; preds = %bb.cv
  %.pre116.i = load i16, ptr @converterCount, align 2, !tbaa !21 ; 2 uses
  br label %createOneAliasList.exit.i

createOneAliasList.exit.i:                        ; preds = %createOneAliasList.exit.loopexit.i, %bb.cu
  %i.ux = phi i16 [ %.pre116.i, %createOneAliasList.exit.loopexit.i ], [ %i.td, %bb.cu ] ; 2 uses
  %aliasListsSize.promoted117.i = phi i16 [ %i.uq, %createOneAliasList.exit.loopexit.i ], [ %aliasListsSize.promoted118.i, %bb.cu ] ; 2 uses
  %i.uy = phi i16 [ %.pre116.i, %createOneAliasList.exit.loopexit.i ], [ %i.te, %bb.cu ] ; 5 uses
  %i.uz = phi i16 [ %i.uq, %createOneAliasList.exit.loopexit.i ], [ %i.tf, %bb.cu ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.va = zext i16 %i.uy to i64
  %i.vb = icmp samesign ult i64 %indvars.iv.next.i, %i.va
  br i1 %i.vb, label %.lr.ph.split.i, label %._crit_edge.loopexit94.i, !llvm.loop !57

._crit_edge.loopexit94.i:                         ; preds = %createOneAliasList.exit.i
  %.pre123.i = load i16, ptr @tagCount, align 2, !tbaa !21
  br label %._crit_edge.i57

._crit_edge.i57:                                  ; preds = %createOneAliasList.exit.us.i, %._crit_edge.loopexit94.i, %.preheader71.i
  %i.vc = phi i16 [ %.pre123.i, %._crit_edge.loopexit94.i ], [ %i.qs, %.preheader71.i ], [ %i.qs, %createOneAliasList.exit.us.i ] ; 2 uses
  %i.vd = phi i16 [ %i.ux, %._crit_edge.loopexit94.i ], [ %i.qt, %.preheader71.i ], [ %i.qt, %createOneAliasList.exit.us.i ]
  %aliasListsSize.promoted120.i = phi i16 [ %aliasListsSize.promoted117.i, %._crit_edge.loopexit94.i ], [ %aliasListsSize.promoted.i, %.preheader71.i ], [ %aliasListsSize.promoted122.i, %createOneAliasList.exit.us.i ]
  %i.ve = phi i16 [ %i.uy, %._crit_edge.loopexit94.i ], [ %i.qu, %.preheader71.i ], [ %i.qt, %createOneAliasList.exit.us.i ]
  %i.vf = phi i16 [ %i.uz, %._crit_edge.loopexit94.i ], [ %i.qv, %.preheader71.i ], [ %.lcssa72.us80.i, %createOneAliasList.exit.us.i ]
  %i.vg = phi i16 [ %i.uy, %._crit_edge.loopexit94.i ], [ 0, %.preheader71.i ], [ %i.qt, %createOneAliasList.exit.us.i ]
  %indvars.iv.next107.i = add nuw nsw i64 %indvars.iv106.i, 1 ; 2 uses
  %i.vh = zext i16 %i.vc to i64
  %i.vi = icmp samesign ult i64 %indvars.iv.next107.i, %i.vh
  br i1 %i.vi, label %.preheader71.i, label %._crit_edge84.i, !llvm.loop !59

._crit_edge84.i:                                  ; preds = %._crit_edge.i57, %resolveAliases.exit.i
  %i.vj = load i16, ptr @tableOptions, align 2, !tbaa !35
  %i.vk = icmp eq i16 %i.vj, 0
  %..i = select i1 %i.vk, i32 8, i32 9
  call void @udata_write32(ptr noundef %i.kt, i32 noundef %..i) #15
  %i.vl = load i16, ptr @converterCount, align 2, !tbaa !21
  %i.vm = zext i16 %i.vl to i32
  call void @udata_write32(ptr noundef %i.kt, i32 noundef %i.vm) #15
  %i.vn = load i16, ptr @tagCount, align 2, !tbaa !21
  %i.vo = zext i16 %i.vn to i32
  call void @udata_write32(ptr noundef %i.kt, i32 noundef %i.vo) #15
  call void @udata_write32(ptr noundef %i.kt, i32 noundef %.2.i.i) #15
  call void @udata_write32(ptr noundef %i.kt, i32 noundef %.2.i.i) #15
  %i.vp = load i16, ptr @tagCount, align 2, !tbaa !21
  %i.vq = zext i16 %i.vp to i32
  %i.vr = load i16, ptr @converterCount, align 2, !tbaa !21
  %i.vs = zext i16 %i.vr to i32
  %i.vt = mul nuw nsw i32 %i.vs, %i.vq
  call void @udata_write32(ptr noundef %i.kt, i32 noundef %i.vt) #15
  %i.vu = load i16, ptr @aliasListsSize, align 2, !tbaa !21
  %i.vv = zext i16 %i.vu to i32
  %i.vw = add nuw nsw i32 %i.vv, 1
  call void @udata_write32(ptr noundef %i.kt, i32 noundef %i.vw) #15
  call void @udata_write32(ptr noundef %i.kt, i32 noundef 2) #15
  %i.vx = load i32, ptr getelementptr inbounds nuw (i8, ptr @tagBlock, i64 8), align 8, !tbaa !26
  %i.vy = load i32, ptr getelementptr inbounds nuw (i8, ptr @stringBlock, i64 8), align 8, !tbaa !26
  %i.vz = add i32 %i.vy, %i.vx
  %i.wa = lshr i32 %i.vz, 1
  call void @udata_write32(ptr noundef %i.kt, i32 noundef %i.wa) #15
  %i.wb = load i16, ptr @tableOptions, align 2, !tbaa !35
  %.not.i58 = icmp eq i16 %i.wb, 0
  br i1 %.not.i58, label %bb.db, label %bb.da

bb.da:                                            ; preds = %._crit_edge84.i
  %i.wc = load i32, ptr getelementptr inbounds nuw (i8, ptr @tagBlock, i64 8), align 8, !tbaa !26
  %i.wd = load i32, ptr getelementptr inbounds nuw (i8, ptr @stringBlock, i64 8), align 8, !tbaa !26
  %i.we = add i32 %i.wd, %i.wc
  %i.wf = lshr i32 %i.we, 1
  call void @udata_write32(ptr noundef %i.kt, i32 noundef %i.wf) #15
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %._crit_edge84.i
  %i.wg = load i16, ptr @converterCount, align 2, !tbaa !21
  %.not93.i = icmp eq i16 %i.wg, 0
  br i1 %.not93.i, label %.preheader.i59, label %.lr.ph87.i

.preheader.i59:                                   ; preds = %.lr.ph87.i, %bb.db
  %i.wh = load i16, ptr @tagCount, align 2, !tbaa !21
  %i.wi = icmp ugt i16 %i.wh, 2
  br i1 %i.wi, label %.lr.ph89.i, label %._crit_edge90.i

.lr.ph87.i:                                       ; preds = %bb.db, %.lr.ph87.i
  %indvars.iv109.i = phi i64 [ %indvars.iv.next110.i, %.lr.ph87.i ], [ 0, %bb.db ] ; 2 uses
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr @converters, i64 %indvars.iv109.i
  %i.wk = load i16, ptr %i.wj, align 4, !tbaa !35
  %i.wl = add i16 %i.wk, %i.lc
  call void @udata_write16(ptr noundef %i.kt, i16 noundef zeroext %i.wl) #15
  %indvars.iv.next110.i = add nuw nsw i64 %indvars.iv109.i, 1 ; 2 uses
  %i.wm = load i16, ptr @converterCount, align 2, !tbaa !21
  %i.wn = zext i16 %i.wm to i64
  %i.wo = icmp samesign ult i64 %indvars.iv.next110.i, %i.wn
  br i1 %i.wo, label %.lr.ph87.i, label %.preheader.i59, !llvm.loop !60

.lr.ph89.i:                                       ; preds = %.preheader.i59, %.lr.ph89.i
  %indvars.iv112.i = phi i64 [ %indvars.iv.next113.i, %.lr.ph89.i ], [ 2, %.preheader.i59 ] ; 2 uses
  %i.wp = getelementptr inbounds nuw [65528 x i8], ptr @tags, i64 %indvars.iv112.i
  %i.wq = load i16, ptr %i.wp, align 8, !tbaa !30
  call void @udata_write16(ptr noundef %i.kt, i16 noundef zeroext %i.wq) #15
  %indvars.iv.next113.i = add nuw nsw i64 %indvars.iv112.i, 1 ; 2 uses
  %i.wr = load i16, ptr @tagCount, align 2, !tbaa !21
  %i.ws = zext i16 %i.wr to i64
  %i.wt = icmp samesign ult i64 %indvars.iv.next113.i, %i.ws
  br i1 %i.wt, label %.lr.ph89.i, label %._crit_edge90.i, !llvm.loop !61

._crit_edge90.i:                                  ; preds = %.lr.ph89.i, %.preheader.i59
  %i.wu = load i16, ptr @tags, align 16, !tbaa !30
  call void @udata_write16(ptr noundef %i.kt, i16 noundef zeroext %i.wu) #15
  %i.wv = load i16, ptr getelementptr inbounds nuw (i8, ptr @tags, i64 65528), align 8, !tbaa !30
  call void @udata_write16(ptr noundef %i.kt, i16 noundef zeroext %i.wv) #15
  %i.ww = shl i32 %.2.i.i, 1                      ; 2 uses
  call void @udata_writeBlock(ptr noundef %i.kt, ptr noundef %i.ln, i32 noundef %i.ww) #15
  call void @udata_writeBlock(ptr noundef %i.kt, ptr noundef %i.lr, i32 noundef %i.ww) #15
  %i.wx = load i16, ptr @converterCount, align 2, !tbaa !21
  %i.wy = zext i16 %i.wx to i32
  %i.wz = shl nuw nsw i32 %i.wy, 1                ; 2 uses
  %i.xa = zext nneg i32 %i.wz to i64
  %i.xb = getelementptr inbounds nuw [2 x i8], ptr %i.lj, i64 %i.xa
  %i.xc = load i16, ptr @tagCount, align 2, !tbaa !21
  %i.xd = zext i16 %i.xc to i32
  %i.xe = add nuw i32 %i.xd, 2147483646
  %i.xf = mul i32 %i.xe, %i.wz
  call void @udata_writeBlock(ptr noundef %i.kt, ptr noundef %i.xb, i32 noundef %i.xf) #15
  %i.xg = load i16, ptr @converterCount, align 2, !tbaa !21
  %i.xh = zext i16 %i.xg to i32
  %i.xi = shl nuw nsw i32 %i.xh, 2
  call void @udata_writeBlock(ptr noundef %i.kt, ptr noundef %i.lj, i32 noundef %i.xi) #15
  call void @udata_write16(ptr noundef %i.kt, i16 noundef zeroext -8531) #15
  %i.xj = load i16, ptr @aliasListsSize, align 2, !tbaa !21
  %i.xk = zext i16 %i.xj to i32
  %i.xl = shl nuw nsw i32 %i.xk, 1
  call void @udata_writeBlock(ptr noundef %i.kt, ptr noundef nonnull @aliasLists, i32 noundef %i.xl) #15
  call void @udata_writeBlock(ptr noundef %i.kt, ptr noundef nonnull @tableOptions, i32 noundef 4) #15
end_hunk_0

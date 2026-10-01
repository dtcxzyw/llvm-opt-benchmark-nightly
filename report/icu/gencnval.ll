Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/gencnval?download=true
inline.NumInlined: 14
inline.NumDeleted: 11
begin_hunk_0_@main:bb.a
  %i.qi = zext i32 %i.qh to i64
  %i.qj = getelementptr inbounds nuw [2 x i8], ptr %i.lp, i64 %i.qi ; 2 uses
  %i.qk = load i16, ptr %i.qj, align 2, !tbaa !18
  %i.ql = or i16 %i.qk, 16384
  store i16 %i.ql, ptr %i.qj, align 2, !tbaa !18
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.qm = load i16, ptr @knownAliasesCount, align 2, !tbaa !18
  %i.qn = zext i16 %i.qm to i64
  %i.qo = icmp samesign ult i64 %indvars.iv.next.i.i, %i.qn
  br i1 %i.qo, label %.lr.ph.i.i62, label %resolveAliases.exit.i, !llvm.loop !48

resolveAliases.exit.i:                            ; preds = %bb.cq, %resolveAliasToConverter.exit.i.i, %bb.bw
  %.2.i.i = phi i32 [ 0, %bb.bw ], [ 1, %resolveAliasToConverter.exit.i.i ], [ %.146.i.i, %bb.cq ] ; 3 uses
  store i16 0, ptr @aliasListsSize, align 2, !tbaa !18
  %i.qp = load i16, ptr @tagCount, align 2, !tbaa !18 ; 2 uses
  %.not91.i = icmp eq i16 %i.qp, 0
  br i1 %.not91.i, label %._crit_edge84.i, label %.preheader71.preheader.i

.preheader71.preheader.i:                         ; preds = %resolveAliases.exit.i
  %.pre115.i = load i16, ptr @converterCount, align 2, !tbaa !18 ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.la, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %.preheader71.i

.preheader71.i:                                   ; preds = %._crit_edge.i59, %.preheader71.preheader.i
  %i.qq = phi i16 [ %i.qp, %.preheader71.preheader.i ], [ %i.uz, %._crit_edge.i59 ] ; 2 uses
  %i.qr = phi i16 [ %.pre115.i, %.preheader71.preheader.i ], [ %i.va, %._crit_edge.i59 ] ; 6 uses
  %aliasListsSize.promoted.i = phi i16 [ 0, %.preheader71.preheader.i ], [ %aliasListsSize.promoted120.i, %._crit_edge.i59 ] ; 4 uses
  %i.qs = phi i16 [ %.pre115.i, %.preheader71.preheader.i ], [ %i.vb, %._crit_edge.i59 ] ; 2 uses
  %i.qt = phi i16 [ 0, %.preheader71.preheader.i ], [ %i.vc, %._crit_edge.i59 ] ; 2 uses
  %i.qu = phi i16 [ %.pre115.i, %.preheader71.preheader.i ], [ %i.vd, %._crit_edge.i59 ] ; 2 uses
  %indvars.iv106.i = phi i64 [ 0, %.preheader71.preheader.i ], [ %indvars.iv.next107.i, %._crit_edge.i59 ] ; 5 uses
  %.not92.i = icmp eq i16 %i.qu, 0
  br i1 %.not92.i, label %._crit_edge.i59, label %.lr.ph.i55

.lr.ph.i55:                                       ; preds = %.preheader71.i
  %i.qv = getelementptr inbounds nuw [65528 x i8], ptr @tags, i64 %indvars.iv106.i ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 8 ; 2 uses
  %i.qx = icmp eq i64 %indvars.iv106.i, 0
  br i1 %i.qx, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i55
  %i.qy = call i16 @llvm.umax.i16(i16 %i.qr, i16 1)
  %wide.trip.count.i = zext i16 %i.qy to i64
  br label %bb.cr

bb.cr:                                            ; preds = %createOneAliasList.exit.us.i, %.lr.ph.split.us.i
  %aliasListsSize.promoted121.i = phi i16 [ %aliasListsSize.promoted122.i, %createOneAliasList.exit.us.i ], [ %aliasListsSize.promoted.i, %.lr.ph.split.us.i ]
  %indvars.iv103.i = phi i64 [ %indvars.iv.next104.i, %createOneAliasList.exit.us.i ], [ 0, %.lr.ph.split.us.i ] ; 4 uses
  %.lcssa72.us81.i = phi i16 [ %.lcssa72.us80.i, %createOneAliasList.exit.us.i ], [ %aliasListsSize.promoted.i, %.lr.ph.split.us.i ] ; 6 uses
  %i.qz = getelementptr inbounds nuw [16 x i8], ptr %i.qw, i64 %indvars.iv103.i ; 2 uses
  %i.ra = load i16, ptr %i.qz, align 8, !tbaa !30 ; 3 uses
  %i.rb = icmp eq i16 %i.ra, 0
  br i1 %i.rb, label %bb.ct, label %.lr.ph.i59.us.i

.lr.ph.i59.us.i:                                  ; preds = %bb.cr
  %i.rc = add i16 %.lcssa72.us81.i, 1             ; 8 uses
  store i16 %i.rc, ptr @aliasListsSize, align 2, !tbaa !18
  %i.rd = zext i16 %.lcssa72.us81.i to i64
  %i.re = getelementptr inbounds nuw [2 x i8], ptr @aliasLists, i64 %i.rd
  store i16 %i.ra, ptr %i.re, align 2, !tbaa !18
  %i.rf = getelementptr inbounds nuw [2 x i8], ptr %i.lh, i64 %indvars.iv103.i
  store i16 %i.rc, ptr %i.rf, align 2, !tbaa !18
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qz, i64 8
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !31 ; 3 uses
  %i.ri = ptrtoaddr ptr %i.rh to i64
  %i.rj = zext i16 %i.ra to i64                   ; 3 uses
  %i.rk = add nsw i64 %i.rj, -1
  %i.rl = sub i16 -3, %.lcssa72.us81.i
  %i.rm = zext i16 %i.rl to i64
  %i.rn = call i64 @llvm.umin.i64(i64 %i.rk, i64 %i.rm) ; 2 uses
  %i.ro = add nuw nsw i64 %i.rn, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.rn, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i59.us.i
  %i.rp = add nsw i64 %i.rj, -1
  %i.rq = sub i16 -3, %.lcssa72.us81.i
  %i.rr = zext i16 %i.rq to i64
  %umin = call i64 @llvm.umin.i64(i64 %i.rp, i64 %i.rr)
  %i.rs = trunc nuw i64 %umin to i16
  %i.rt = sub i16 -2, %.lcssa72.us81.i
  %i.ru = icmp ult i16 %i.rt, %i.rs
  br i1 %i.ru, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.rv = zext i16 %i.rc to i64
  %i.rw = shl nuw nsw i64 %i.rv, 1
  %i.rx = add i64 %i.rw, ptrtoaddr (ptr @aliasLists to i64)
  %i.ry = sub i64 %i.ri, %i.rx
  %diff.check = icmp ugt i64 %i.ry, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.rz = and i64 %i.ro, 15                       ; 2 uses
  %i.sa = icmp eq i64 %i.rz, 0
  %i.sb = select i1 %i.sa, i64 16, i64 %i.rz
  %n.vec = sub nsw i64 %i.ro, %i.sb               ; 3 uses
  %i.sc = trunc i64 %n.vec to i16
  %i.sd = add i16 %i.rc, %i.sc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.se = trunc i64 %index to i16
  %i.sf = add i16 %i.rc, %i.se
  %i.sg = getelementptr inbounds nuw [2 x i8], ptr %i.rh, i64 %index ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 16
  %wide.load = load <8 x i16>, ptr %i.sg, align 2, !tbaa !18 ; 2 uses
  %wide.load296 = load <8 x i16>, ptr %i.sh, align 2, !tbaa !18 ; 2 uses
  %i.si = icmp eq <8 x i16> %wide.load, zeroinitializer
  %i.sj = icmp eq <8 x i16> %wide.load296, zeroinitializer
  %i.sk = add <8 x i16> %wide.load, %broadcast.splat
  %i.sl = add <8 x i16> %wide.load296, %broadcast.splat
  %i.sm = select <8 x i1> %i.si, <8 x i16> zeroinitializer, <8 x i16> %i.sk
  %i.sn = select <8 x i1> %i.sj, <8 x i16> zeroinitializer, <8 x i16> %i.sl
  %i.so = zext i16 %i.sf to i64
  %i.sp = getelementptr inbounds nuw [2 x i8], ptr @aliasLists, i64 %i.so ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 16
  store <8 x i16> %i.sm, ptr %i.sp, align 2, !tbaa !18
  store <8 x i16> %i.sn, ptr %i.sq, align 2, !tbaa !18
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.sr = icmp eq i64 %index.next, %n.vec
  br i1 %i.sr, label %scalar.ph.preheader, label %vector.body, !llvm.loop !49

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %vector.scevcheck, %.lr.ph.i59.us.i
  %indvars.iv29.i.us.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i59.us.i ], [ %n.vec, %vector.body ]
  %.ph = phi i16 [ %i.rc, %vector.memcheck ], [ %i.rc, %vector.scevcheck ], [ %i.rc, %.lr.ph.i59.us.i ], [ %i.sd, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.cs
  %indvars.iv29.i.us.i = phi i64 [ %indvars.iv.next30.i.us.i, %bb.cs ], [ %indvars.iv29.i.us.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ss = phi i16 [ %i.sw, %bb.cs ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %i.st = getelementptr inbounds nuw [2 x i8], ptr %i.rh, i64 %indvars.iv29.i.us.i
  %i.su = load i16, ptr %i.st, align 2, !tbaa !18 ; 2 uses
  %.not.us.i.us.i = icmp eq i16 %i.su, 0
  %i.sv = add i16 %i.su, %i.la
  %.0.us.i.us.i = select i1 %.not.us.i.us.i, i16 0, i16 %i.sv
  %i.sw = add i16 %i.ss, 1                        ; 5 uses
  %i.sx = zext i16 %i.ss to i64
  %i.sy = getelementptr inbounds nuw [2 x i8], ptr @aliasLists, i64 %i.sx
  store i16 %.0.us.i.us.i, ptr %i.sy, align 2, !tbaa !18
  %i.sz = icmp eq i16 %i.sw, -1
  br i1 %i.sz, label %.split.us.i.i, label %bb.cs

bb.cs:                                            ; preds = %scalar.ph
  %indvars.iv.next30.i.us.i = add nuw nsw i64 %indvars.iv29.i.us.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next30.i.us.i, %i.rj
  br i1 %exitcond.not.i, label %..loopexit_crit_edge.split.us.i.us.i, label %scalar.ph, !llvm.loop !50

..loopexit_crit_edge.split.us.i.us.i:             ; preds = %bb.cs
  store i16 %i.sw, ptr @aliasListsSize, align 2, !tbaa !18
  br label %createOneAliasList.exit.us.i

bb.ct:                                            ; preds = %bb.cr
  %i.ta = getelementptr inbounds nuw [2 x i8], ptr %i.lh, i64 %indvars.iv103.i
  store i16 0, ptr %i.ta, align 2, !tbaa !18
  br label %createOneAliasList.exit.us.i

createOneAliasList.exit.us.i:                     ; preds = %bb.ct, %..loopexit_crit_edge.split.us.i.us.i
  %aliasListsSize.promoted122.i = phi i16 [ %aliasListsSize.promoted121.i, %bb.ct ], [ %i.sw, %..loopexit_crit_edge.split.us.i.us.i ] ; 2 uses
  %.lcssa72.us80.i = phi i16 [ %.lcssa72.us81.i, %bb.ct ], [ %i.sw, %..loopexit_crit_edge.split.us.i.us.i ] ; 2 uses
  %indvars.iv.next104.i = add nuw nsw i64 %indvars.iv103.i, 1 ; 2 uses
  %exitcond105.not.i = icmp eq i64 %indvars.iv.next104.i, %wide.trip.count.i
  br i1 %exitcond105.not.i, label %._crit_edge.i59, label %bb.cr, !llvm.loop !51

.lr.ph.split.i:                                   ; preds = %.lr.ph.i55, %createOneAliasList.exit.i
  %i.tb = phi i16 [ %i.uu, %createOneAliasList.exit.i ], [ %i.qr, %.lr.ph.i55 ]
  %aliasListsSize.promoted118.i = phi i16 [ %aliasListsSize.promoted117.i, %createOneAliasList.exit.i ], [ %aliasListsSize.promoted.i, %.lr.ph.i55 ]
  %i.tc = phi i16 [ %i.uv, %createOneAliasList.exit.i ], [ %i.qs, %.lr.ph.i55 ]
  %i.td = phi i16 [ %i.uw, %createOneAliasList.exit.i ], [ %i.qt, %.lr.ph.i55 ] ; 3 uses
  %indvars.iv.i56 = phi i64 [ %indvars.iv.next.i58, %createOneAliasList.exit.i ], [ 0, %.lr.ph.i55 ] ; 5 uses
  %.in.i = phi i16 [ %i.uv, %createOneAliasList.exit.i ], [ %i.qu, %.lr.ph.i55 ] ; 2 uses
  %i.te = getelementptr inbounds nuw [16 x i8], ptr %i.qw, i64 %indvars.iv.i56 ; 3 uses
  %i.tf = load i16, ptr %i.te, align 8, !tbaa !30 ; 2 uses
  %i.tg = icmp eq i16 %i.tf, 0
  br i1 %i.tg, label %bb.cu, label %.lr.ph.i59.i

bb.cu:                                            ; preds = %.lr.ph.split.i
  %i.th = zext i16 %.in.i to i64
  %i.ti = mul nuw i64 %indvars.iv106.i, %i.th
  %i.tj = getelementptr inbounds nuw [2 x i8], ptr %i.lh, i64 %i.ti
  %i.tk = getelementptr inbounds nuw [2 x i8], ptr %i.tj, i64 %indvars.iv.i56
  store i16 0, ptr %i.tk, align 2, !tbaa !18
  br label %createOneAliasList.exit.i

.lr.ph.i59.i:                                     ; preds = %.lr.ph.split.i
  %i.tl = add i16 %i.td, 1                        ; 3 uses
  store i16 %i.tl, ptr @aliasListsSize, align 2, !tbaa !18
  %i.tm = zext i16 %i.td to i64
  %i.tn = getelementptr inbounds nuw [2 x i8], ptr @aliasLists, i64 %i.tm
  store i16 %i.tf, ptr %i.tn, align 2, !tbaa !18
  %i.to = zext i16 %.in.i to i64
  %i.tp = mul nuw i64 %indvars.iv106.i, %i.to
  %i.tq = getelementptr inbounds nuw [2 x i8], ptr %i.lh, i64 %i.tp
  %i.tr = getelementptr inbounds nuw [2 x i8], ptr %i.tq, i64 %indvars.iv.i56
  store i16 %i.tl, ptr %i.tr, align 2, !tbaa !18
  %i.ts = getelementptr inbounds nuw i8, ptr %i.te, i64 8 ; 2 uses
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr @converters, i64 %indvars.iv.i56
  %2 = load ptr, ptr %i.ts, align 8, !tbaa !31
  br label %.lr.ph.split.i.i

.split.us.i.i:                                    ; preds = %scalar.ph
  store i16 -1, ptr @aliasListsSize, align 2, !tbaa !18
  br label %.split.i.i

bb.cv:                                            ; preds = %bb.cz
  %indvars.iv.next.i62.i = add nuw nsw i64 %indvars.iv.i60.i, 1 ; 2 uses
  %i.tu = load i16, ptr %i.te, align 8, !tbaa !30
  %i.tv = zext i16 %i.tu to i64
  %i.tw = icmp samesign ult i64 %indvars.iv.next.i62.i, %i.tv
  br i1 %i.tw, label %.lr.ph.split.i.i, label %createOneAliasList.exit.loopexit.i, !llvm.loop !52

.lr.ph.split.i.i:                                 ; preds = %bb.cv, %.lr.ph.i59.i
  %i.tx = phi i16 [ %i.un, %bb.cv ], [ %i.tl, %.lr.ph.i59.i ] ; 2 uses
  %3 = phi ptr [ %4, %bb.cv ], [ %2, %.lr.ph.i59.i ] ; 3 uses
  %indvars.iv.i60.i = phi i64 [ %indvars.iv.next.i62.i, %bb.cv ], [ 0, %.lr.ph.i59.i ] ; 2 uses
  %i.ty = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv.i60.i
  %i.tz = load i16, ptr %i.ty, align 2, !tbaa !18 ; 2 uses
  %.not.i61.i = icmp eq i16 %i.tz, 0
  br i1 %.not.i61.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %.lr.ph.split.i.i
  %i.ua = add i16 %i.tz, %i.la
  br label %bb.cz

bb.cx:                                            ; preds = %.lr.ph.split.i.i
  %.b.i63.i = load i1, ptr @quiet, align 1
  br i1 %.b.i63.i, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ub = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.uc = load ptr, ptr @path, align 8, !tbaa !14
  %i.ud = load i16, ptr %i.qv, align 8, !tbaa !25
  %i.ue = zext i16 %i.ud to i64
  %i.uf = shl nuw nsw i64 %i.ue, 1
  %i.ug = getelementptr inbounds nuw i8, ptr @tagStore, i64 %i.uf
  %i.uh = load i16, ptr %i.tt, align 4, !tbaa !27
  %i.ui = zext i16 %i.uh to i64
  %i.uj = shl nuw nsw i64 %i.ui, 1
  %i.uk = getelementptr inbounds nuw i8, ptr @stringStore, i64 %i.uj
  %i.ul = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ub, ptr noundef nonnull @.str.49, ptr noundef %i.uc, ptr noundef nonnull %i.ug, ptr noundef nonnull %i.uk) #16 ; 0 uses
  %.pre.i64.i = load ptr, ptr %i.ts, align 8, !tbaa !31
  %.pre.i64.i.a = load i16, ptr @aliasListsSize, align 2, !tbaa !18
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx, %bb.cw
  %i.um = phi i16 [ %i.tx, %bb.cw ], [ %i.tx, %bb.cx ], [ %.pre.i64.i.a, %bb.cy ] ; 2 uses
  %4 = phi ptr [ %3, %bb.cw ], [ %3, %bb.cx ], [ %.pre.i64.i, %bb.cy ]
  %.0.i.i57 = phi i16 [ %i.ua, %bb.cw ], [ 0, %bb.cx ], [ 0, %bb.cy ]
  %i.un = add i16 %i.um, 1                        ; 5 uses
  store i16 %i.un, ptr @aliasListsSize, align 2, !tbaa !18
  %i.uo = zext i16 %i.um to i64
  %i.up = getelementptr inbounds nuw [2 x i8], ptr @aliasLists, i64 %i.uo
  store i16 %.0.i.i57, ptr %i.up, align 2, !tbaa !18
  %i.uq = icmp eq i16 %i.un, -1
  br i1 %i.uq, label %.split.i.i, label %bb.cv

.split.i.i:                                       ; preds = %bb.cz, %.split.us.i.i
  %i.ur = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.us = load ptr, ptr @path, align 8, !tbaa !14
  %i.ut = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ur, ptr noundef nonnull @.str.50, ptr noundef %i.us) #16 ; 0 uses
  call void @exit(i32 noundef 15) #18
  unreachable

createOneAliasList.exit.loopexit.i:               ; preds = %bb.cv
  %.pre116.i = load i16, ptr @converterCount, align 2, !tbaa !18 ; 2 uses
  br label %createOneAliasList.exit.i

createOneAliasList.exit.i:                        ; preds = %createOneAliasList.exit.loopexit.i, %bb.cu
  %i.uu = phi i16 [ %.pre116.i, %createOneAliasList.exit.loopexit.i ], [ %i.tb, %bb.cu ] ; 2 uses
  %aliasListsSize.promoted117.i = phi i16 [ %i.un, %createOneAliasList.exit.loopexit.i ], [ %aliasListsSize.promoted118.i, %bb.cu ] ; 2 uses
  %i.uv = phi i16 [ %.pre116.i, %createOneAliasList.exit.loopexit.i ], [ %i.tc, %bb.cu ] ; 5 uses
  %i.uw = phi i16 [ %i.un, %createOneAliasList.exit.loopexit.i ], [ %i.td, %bb.cu ] ; 2 uses
  %indvars.iv.next.i58 = add nuw nsw i64 %indvars.iv.i56, 1 ; 2 uses
  %i.ux = zext i16 %i.uv to i64
  %i.uy = icmp samesign ult i64 %indvars.iv.next.i58, %i.ux
  br i1 %i.uy, label %.lr.ph.split.i, label %._crit_edge.loopexit94.i, !llvm.loop !51

._crit_edge.loopexit94.i:                         ; preds = %createOneAliasList.exit.i
  %.pre123.i = load i16, ptr @tagCount, align 2, !tbaa !18
  br label %._crit_edge.i59

._crit_edge.i59:                                  ; preds = %createOneAliasList.exit.us.i, %._crit_edge.loopexit94.i, %.preheader71.i
  %i.uz = phi i16 [ %.pre123.i, %._crit_edge.loopexit94.i ], [ %i.qq, %.preheader71.i ], [ %i.qq, %createOneAliasList.exit.us.i ] ; 2 uses
  %i.va = phi i16 [ %i.uu, %._crit_edge.loopexit94.i ], [ %i.qr, %.preheader71.i ], [ %i.qr, %createOneAliasList.exit.us.i ]
  %aliasListsSize.promoted120.i = phi i16 [ %aliasListsSize.promoted117.i, %._crit_edge.loopexit94.i ], [ %aliasListsSize.promoted.i, %.preheader71.i ], [ %aliasListsSize.promoted122.i, %createOneAliasList.exit.us.i ]
  %i.vb = phi i16 [ %i.uv, %._crit_edge.loopexit94.i ], [ %i.qs, %.preheader71.i ], [ %i.qr, %createOneAliasList.exit.us.i ]
  %i.vc = phi i16 [ %i.uw, %._crit_edge.loopexit94.i ], [ %i.qt, %.preheader71.i ], [ %.lcssa72.us80.i, %createOneAliasList.exit.us.i ]
  %i.vd = phi i16 [ %i.uv, %._crit_edge.loopexit94.i ], [ 0, %.preheader71.i ], [ %i.qr, %createOneAliasList.exit.us.i ]
  %indvars.iv.next107.i = add nuw nsw i64 %indvars.iv106.i, 1 ; 2 uses
  %i.ve = zext i16 %i.uz to i64
  %i.vf = icmp samesign ult i64 %indvars.iv.next107.i, %i.ve
  br i1 %i.vf, label %.preheader71.i, label %._crit_edge84.i, !llvm.loop !53

._crit_edge84.i:                                  ; preds = %._crit_edge.i59, %resolveAliases.exit.i
  %i.vg = load i16, ptr @tableOptions, align 2, !tbaa !27
  %i.vh = icmp eq i16 %i.vg, 0
  %..i = select i1 %i.vh, i32 8, i32 9
  call void @udata_write32(ptr noundef %i.kr, i32 noundef %..i) #15
  %i.vi = load i16, ptr @converterCount, align 2, !tbaa !18
  %i.vj = zext i16 %i.vi to i32
  call void @udata_write32(ptr noundef %i.kr, i32 noundef %i.vj) #15
  %i.vk = load i16, ptr @tagCount, align 2, !tbaa !18
  %i.vl = zext i16 %i.vk to i32
  call void @udata_write32(ptr noundef %i.kr, i32 noundef %i.vl) #15
  call void @udata_write32(ptr noundef %i.kr, i32 noundef %.2.i.i) #15
  call void @udata_write32(ptr noundef %i.kr, i32 noundef %.2.i.i) #15
  %i.vm = load i16, ptr @tagCount, align 2, !tbaa !18
  %i.vn = zext i16 %i.vm to i32
  %i.vo = load i16, ptr @converterCount, align 2, !tbaa !18
  %i.vp = zext i16 %i.vo to i32
  %i.vq = mul nuw nsw i32 %i.vp, %i.vn
  call void @udata_write32(ptr noundef %i.kr, i32 noundef %i.vq) #15
  %i.vr = load i16, ptr @aliasListsSize, align 2, !tbaa !18
  %i.vs = zext i16 %i.vr to i32
  %i.vt = add nuw nsw i32 %i.vs, 1
  call void @udata_write32(ptr noundef %i.kr, i32 noundef %i.vt) #15
  call void @udata_write32(ptr noundef %i.kr, i32 noundef 2) #15
  %i.vu = load i32, ptr getelementptr inbounds nuw (i8, ptr @tagBlock, i64 8), align 8, !tbaa !21
  %i.vv = load i32, ptr getelementptr inbounds nuw (i8, ptr @stringBlock, i64 8), align 8, !tbaa !21
  %i.vw = add i32 %i.vv, %i.vu
  %i.vx = lshr i32 %i.vw, 1
  call void @udata_write32(ptr noundef %i.kr, i32 noundef %i.vx) #15
  %i.vy = load i16, ptr @tableOptions, align 2, !tbaa !27
  %.not.i60 = icmp eq i16 %i.vy, 0
  br i1 %.not.i60, label %bb.db, label %bb.da

bb.da:                                            ; preds = %._crit_edge84.i
  %i.vz = load i32, ptr getelementptr inbounds nuw (i8, ptr @tagBlock, i64 8), align 8, !tbaa !21
  %i.wa = load i32, ptr getelementptr inbounds nuw (i8, ptr @stringBlock, i64 8), align 8, !tbaa !21
  %i.wb = add i32 %i.wa, %i.vz
  %i.wc = lshr i32 %i.wb, 1
  call void @udata_write32(ptr noundef %i.kr, i32 noundef %i.wc) #15
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %._crit_edge84.i
  %i.wd = load i16, ptr @converterCount, align 2, !tbaa !18
  %.not93.i = icmp eq i16 %i.wd, 0
  br i1 %.not93.i, label %.preheader.i61, label %.lr.ph87.i

.preheader.i61:                                   ; preds = %.lr.ph87.i, %bb.db
  %i.we = load i16, ptr @tagCount, align 2, !tbaa !18
  %i.wf = icmp ugt i16 %i.we, 2
  br i1 %i.wf, label %.lr.ph89.i, label %._crit_edge90.i

.lr.ph87.i:                                       ; preds = %bb.db, %.lr.ph87.i
  %indvars.iv109.i = phi i64 [ %indvars.iv.next110.i, %.lr.ph87.i ], [ 0, %bb.db ] ; 2 uses
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr @converters, i64 %indvars.iv109.i
  %i.wh = load i16, ptr %i.wg, align 4, !tbaa !27
  %i.wi = add i16 %i.wh, %i.la
  call void @udata_write16(ptr noundef %i.kr, i16 noundef zeroext %i.wi) #15
  %indvars.iv.next110.i = add nuw nsw i64 %indvars.iv109.i, 1 ; 2 uses
  %i.wj = load i16, ptr @converterCount, align 2, !tbaa !18
  %i.wk = zext i16 %i.wj to i64
  %i.wl = icmp samesign ult i64 %indvars.iv.next110.i, %i.wk
  br i1 %i.wl, label %.lr.ph87.i, label %.preheader.i61, !llvm.loop !54

.lr.ph89.i:                                       ; preds = %.preheader.i61, %.lr.ph89.i
  %indvars.iv112.i = phi i64 [ %indvars.iv.next113.i, %.lr.ph89.i ], [ 2, %.preheader.i61 ] ; 2 uses
  %i.wm = getelementptr inbounds nuw [65528 x i8], ptr @tags, i64 %indvars.iv112.i
  %i.wn = load i16, ptr %i.wm, align 8, !tbaa !25
  call void @udata_write16(ptr noundef %i.kr, i16 noundef zeroext %i.wn) #15
  %indvars.iv.next113.i = add nuw nsw i64 %indvars.iv112.i, 1 ; 2 uses
  %i.wo = load i16, ptr @tagCount, align 2, !tbaa !18
  %i.wp = zext i16 %i.wo to i64
  %i.wq = icmp samesign ult i64 %indvars.iv.next113.i, %i.wp
  br i1 %i.wq, label %.lr.ph89.i, label %._crit_edge90.i, !llvm.loop !55

._crit_edge90.i:                                  ; preds = %.lr.ph89.i, %.preheader.i61
  %i.wr = load i16, ptr @tags, align 16, !tbaa !25
  call void @udata_write16(ptr noundef %i.kr, i16 noundef zeroext %i.wr) #15
  %i.ws = load i16, ptr getelementptr inbounds nuw (i8, ptr @tags, i64 65528), align 8, !tbaa !25
  call void @udata_write16(ptr noundef %i.kr, i16 noundef zeroext %i.ws) #15
  %i.wt = shl i32 %.2.i.i, 1                      ; 2 uses
  call void @udata_writeBlock(ptr noundef %i.kr, ptr noundef %i.ll, i32 noundef %i.wt) #15
  call void @udata_writeBlock(ptr noundef %i.kr, ptr noundef %i.lp, i32 noundef %i.wt) #15
  %i.wu = load i16, ptr @converterCount, align 2, !tbaa !18
  %i.wv = zext i16 %i.wu to i32
  %i.ww = shl nuw nsw i32 %i.wv, 1                ; 2 uses
  %i.wx = zext nneg i32 %i.ww to i64
  %i.wy = getelementptr inbounds nuw [2 x i8], ptr %i.lh, i64 %i.wx
  %i.wz = load i16, ptr @tagCount, align 2, !tbaa !18
  %i.xa = zext i16 %i.wz to i32
  %i.xb = add nuw i32 %i.xa, 2147483646
  %i.xc = mul i32 %i.xb, %i.ww
  call void @udata_writeBlock(ptr noundef %i.kr, ptr noundef %i.wy, i32 noundef %i.xc) #15
  %i.xd = load i16, ptr @converterCount, align 2, !tbaa !18
  %i.xe = zext i16 %i.xd to i32
  %i.xf = shl nuw nsw i32 %i.xe, 2
  call void @udata_writeBlock(ptr noundef %i.kr, ptr noundef %i.lh, i32 noundef %i.xf) #15
  call void @udata_write16(ptr noundef %i.kr, i16 noundef zeroext -8531) #15
  %i.xg = load i16, ptr @aliasListsSize, align 2, !tbaa !18
  %i.xh = zext i16 %i.xg to i32
  %i.xi = shl nuw nsw i32 %i.xh, 1
  call void @udata_writeBlock(ptr noundef %i.kr, ptr noundef nonnull @aliasLists, i32 noundef %i.xi) #15
  call void @udata_writeBlock(ptr noundef %i.kr, ptr noundef nonnull @tableOptions, i32 noundef 4) #15
  %i.xj = load ptr, ptr @tagBlock, align 8, !tbaa !23
  %i.xk = load i32, ptr getelementptr inbounds nuw (i8, ptr @tagBlock, i64 8), align 8, !tbaa !21
  call void @udata_writeString(ptr noundef %i.kr, ptr noundef %i.xj, i32 noundef %i.xk) #15
  %i.xl = load ptr, ptr @stringBlock, align 8, !tbaa !23
  %i.xm = load i32, ptr getelementptr inbounds nuw (i8, ptr @stringBlock, i64 8), align 8, !tbaa !21
  call void @udata_writeString(ptr noundef %i.kr, ptr noundef %i.xl, i32 noundef %i.xm) #15
  %i.xn = load i16, ptr @tableOptions, align 2, !tbaa !27
  %.not58.i = icmp eq i16 %i.xn, 0
  br i1 %.not58.i, label %writeAliasTable.exit, label %bb.dc

bb.dc:                                            ; preds = %._crit_edge90.i
  %i.xo = load i32, ptr getelementptr inbounds nuw (i8, ptr @tagBlock, i64 8), align 8, !tbaa !21
  %i.xp = load i32, ptr getelementptr inbounds nuw (i8, ptr @stringBlock, i64 8), align 8, !tbaa !21
  %i.xq = add i32 %i.xp, %i.xo
  %i.xr = zext i32 %i.xq to i64
  %i.xs = call noalias ptr @uprv_malloc_78(i64 noundef %i.xr) #21 ; 5 uses
  %i.xt = load ptr, ptr @tagBlock, align 8, !tbaa !23 ; 3 uses
  %i.xu = load i32, ptr getelementptr inbounds nuw (i8, ptr @tagBlock, i64 8), align 8, !tbaa !21 ; 4 uses
  %i.xv = sext i32 %i.xu to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.xs, ptr align 1 %i.xt, i64 %i.xv, i1 false)
  %i.xw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.xt) #17
  %i.xx = trunc i64 %i.xw to i32                  ; 2 uses
  %i.xy = icmp sgt i32 %i.xu, %i.xx
  br i1 %i.xy, label %.lr.ph.i65.i, label %createNormalizedAliasStrings.exit.i

.lr.ph.i65.i:                                     ; preds = %bb.dc, %bb.df
  %i.xz = phi i32 [ %i.yp, %bb.df ], [ %i.xx, %bb.dc ] ; 2 uses
  %.026.i.i = phi i32 [ %i.yk, %bb.df ], [ %i.xu, %bb.dc ]
  %.02025.i.i = phi ptr [ %i.yn, %bb.df ], [ %i.xt, %bb.dc ] ; 2 uses
  %.02124.i.i = phi ptr [ %i.ym, %bb.df ], [ %i.xs, %bb.dc ] ; 4 uses
  %i.ya = add nsw i32 %i.xz, 1                    ; 3 uses
  %i.yb = icmp sgt i32 %i.xz, 0
  br i1 %i.yb, label %bb.dd, label %bb.df

bb.dd:                                            ; preds = %.lr.ph.i65.i
  %i.yc = call ptr @ucnv_io_stripASCIIForCompare_78(ptr noundef %.02124.i.i, ptr noundef nonnull %.02025.i.i) #15 ; 0 uses
  %i.yd = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.02124.i.i) #17 ; 2 uses
  %i.ye = trunc i64 %i.yd to i32                  ; 2 uses
  %i.yf = icmp sgt i32 %i.ye, 0
  br i1 %i.yf, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.yg = and i64 %i.yd, 2147483647
  %i.yh = getelementptr inbounds nuw i8, ptr %.02124.i.i, i64 %i.yg
  %i.yi = sub nsw i32 %i.ya, %i.ye
  %i.yj = sext i32 %i.yi to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.yh, i8 0, i64 %i.yj, i1 false)
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd, %.lr.ph.i65.i
  %i.yk = sub nsw i32 %.026.i.i, %i.ya            ; 2 uses
  %i.yl = sext i32 %i.ya to i64                   ; 2 uses
end_hunk_0

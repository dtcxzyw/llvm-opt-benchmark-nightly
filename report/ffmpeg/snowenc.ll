Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/snowenc?download=true
inline.NumInlined: 82
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 29
begin_hunk_0_@encode_frame:bb.a
vector.body1997:                                  ; preds = %vector.main.loop.iter.check1993, %vector.body1997
  %index1998 = phi i64 [ %index.next2001, %vector.body1997 ], [ 0, %vector.main.loop.iter.check1993 ] ; 3 uses
  %i.rt = getelementptr i8, ptr %i.rs, i64 %index1998 ; 2 uses
  %i.ru = getelementptr i8, ptr %i.rt, i64 8
  %wide.load1999 = load <8 x i8>, ptr %i.rt, align 1, !tbaa !83, !alias.scope !197
  %wide.load2000 = load <8 x i8>, ptr %i.ru, align 1, !tbaa !83, !alias.scope !197
  %i.rv = zext <8 x i8> %wide.load1999 to <8 x i16>
  %i.rw = zext <8 x i8> %wide.load2000 to <8 x i16>
  %i.rx = shl nuw nsw <8 x i16> %i.rv, splat (i16 4)
  %i.ry = shl nuw nsw <8 x i16> %i.rw, splat (i16 4)
  %i.rz = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep1423, i64 %index1998 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 16
  store <8 x i16> %i.rx, ptr %i.rz, align 2, !tbaa !182, !alias.scope !200, !noalias !197
  store <8 x i16> %i.ry, ptr %i.sa, align 2, !tbaa !182, !alias.scope !200, !noalias !197
  %index.next2001 = add nuw i64 %index1998, 16    ; 2 uses
  %i.sb = icmp eq i64 %index.next2001, %n.vec1996
  br i1 %i.sb, label %middle.block2002, label %vector.body1997, !llvm.loop !202

middle.block2002:                                 ; preds = %vector.body1997
  br i1 %cmp.n2003, label %._crit_edge1005, label %vec.epilog.iter.check2007

vec.epilog.iter.check2007:                        ; preds = %middle.block2002
  br i1 %min.epilog.iters.check2008, label %vec.epilog.scalar.ph2006.preheader, label %vec.epilog.ph2009, !prof !205

vec.epilog.ph2009:                                ; preds = %vector.main.loop.iter.check1993, %vec.epilog.iter.check2007
  %vec.epilog.resume.val2004 = phi i64 [ %n.vec1996, %vec.epilog.iter.check2007 ], [ 0, %vector.main.loop.iter.check1993 ]
  br label %vec.epilog.vector.body2011

vec.epilog.vector.body2011:                       ; preds = %vec.epilog.vector.body2011, %vec.epilog.ph2009
  %index2012 = phi i64 [ %vec.epilog.resume.val2004, %vec.epilog.ph2009 ], [ %index.next2014, %vec.epilog.vector.body2011 ] ; 3 uses
  %i.sc = getelementptr i8, ptr %i.rs, i64 %index2012
  %wide.load2013 = load <4 x i8>, ptr %i.sc, align 1, !tbaa !83, !alias.scope !197
  %i.sd = zext <4 x i8> %wide.load2013 to <4 x i16>
  %i.se = shl nuw nsw <4 x i16> %i.sd, splat (i16 4)
  %i.sf = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep1423, i64 %index2012
  store <4 x i16> %i.se, ptr %i.sf, align 2, !tbaa !182, !alias.scope !200, !noalias !197
  %index.next2014 = add nuw i64 %index2012, 4     ; 2 uses
  %i.sg = icmp eq i64 %index.next2014, %n.vec2010
  br i1 %i.sg, label %vec.epilog.middle.block2015, label %vec.epilog.vector.body2011, !llvm.loop !206

vec.epilog.middle.block2015:                      ; preds = %vec.epilog.vector.body2011
  br i1 %cmp.n2016, label %._crit_edge1005, label %vec.epilog.scalar.ph2006.preheader

vec.epilog.scalar.ph2006.preheader:               ; preds = %iter.check2005, %vec.epilog.iter.check2007, %vec.epilog.middle.block2015
  %indvars.iv1165.ph = phi i64 [ 0, %iter.check2005 ], [ %n.vec2010, %vec.epilog.middle.block2015 ], [ %n.vec1996, %vec.epilog.iter.check2007 ] ; 3 uses
  br i1 %lcmp.mod2180.not, label %vec.epilog.scalar.ph2006.prol.loopexit, label %vec.epilog.scalar.ph2006.prol

vec.epilog.scalar.ph2006.prol:                    ; preds = %vec.epilog.scalar.ph2006.preheader, %vec.epilog.scalar.ph2006.prol
  %indvars.iv1165.prol = phi i64 [ %indvars.iv.next1166.prol, %vec.epilog.scalar.ph2006.prol ], [ %indvars.iv1165.ph, %vec.epilog.scalar.ph2006.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph2006.prol ], [ 0, %vec.epilog.scalar.ph2006.preheader ]
  %i.sh = getelementptr i8, ptr %i.rs, i64 %indvars.iv1165.prol
  %i.si = load i8, ptr %i.sh, align 1, !tbaa !83
  %i.sj = zext i8 %i.si to i16
  %i.sk = shl nuw nsw i16 %i.sj, 4
  %gep1424.prol = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep1423, i64 %indvars.iv1165.prol
  store i16 %i.sk, ptr %gep1424.prol, align 2, !tbaa !182
  %indvars.iv.next1166.prol = add nuw nsw i64 %indvars.iv1165.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter2179
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph2006.prol.loopexit, label %vec.epilog.scalar.ph2006.prol, !llvm.loop !207

vec.epilog.scalar.ph2006.prol.loopexit:           ; preds = %vec.epilog.scalar.ph2006.prol, %vec.epilog.scalar.ph2006.preheader
  %indvars.iv1165.unr = phi i64 [ %indvars.iv1165.ph, %vec.epilog.scalar.ph2006.preheader ], [ %indvars.iv.next1166.prol, %vec.epilog.scalar.ph2006.prol ]
  %i.sl = sub nsw i64 %indvars.iv1165.ph, %wide.trip.count1168
  %i.sm = icmp ugt i64 %i.sl, -4
  br i1 %i.sm, label %._crit_edge1005, label %vec.epilog.scalar.ph2006

vec.epilog.scalar.ph2006:                         ; preds = %vec.epilog.scalar.ph2006.prol.loopexit, %vec.epilog.scalar.ph2006
  %indvars.iv1165 = phi i64 [ %indvars.iv.next1166.3, %vec.epilog.scalar.ph2006 ], [ %indvars.iv1165.unr, %vec.epilog.scalar.ph2006.prol.loopexit ] ; 6 uses
  %i.sn = getelementptr i8, ptr %i.rs, i64 %indvars.iv1165
  %i.so = load i8, ptr %i.sn, align 1, !tbaa !83
  %i.sp = zext i8 %i.so to i16
  %i.sq = shl nuw nsw i16 %i.sp, 4
  %gep1424 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep1423, i64 %indvars.iv1165
  store i16 %i.sq, ptr %gep1424, align 2, !tbaa !182
  %indvars.iv.next1166 = add nuw nsw i64 %indvars.iv1165, 1 ; 2 uses
  %i.sr = getelementptr i8, ptr %i.rs, i64 %indvars.iv.next1166
  %i.ss = load i8, ptr %i.sr, align 1, !tbaa !83
  %i.st = zext i8 %i.ss to i16
  %i.su = shl nuw nsw i16 %i.st, 4
  %gep1424.1 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep1423, i64 %indvars.iv.next1166
  store i16 %i.su, ptr %gep1424.1, align 2, !tbaa !182
  %indvars.iv.next1166.1 = add nuw nsw i64 %indvars.iv1165, 2 ; 2 uses
  %i.sv = getelementptr i8, ptr %i.rs, i64 %indvars.iv.next1166.1
  %i.sw = load i8, ptr %i.sv, align 1, !tbaa !83
  %i.sx = zext i8 %i.sw to i16
  %i.sy = shl nuw nsw i16 %i.sx, 4
  %gep1424.2 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep1423, i64 %indvars.iv.next1166.1
  store i16 %i.sy, ptr %gep1424.2, align 2, !tbaa !182
  %indvars.iv.next1166.2 = add nuw nsw i64 %indvars.iv1165, 3 ; 2 uses
  %i.sz = getelementptr i8, ptr %i.rs, i64 %indvars.iv.next1166.2
  %i.ta = load i8, ptr %i.sz, align 1, !tbaa !83
  %i.tb = zext i8 %i.ta to i16
  %i.tc = shl nuw nsw i16 %i.tb, 4
  %gep1424.3 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep1423, i64 %indvars.iv.next1166.2
  store i16 %i.tc, ptr %gep1424.3, align 2, !tbaa !182
  %indvars.iv.next1166.3 = add nuw nsw i64 %indvars.iv1165, 4 ; 2 uses
  %exitcond1169.not.3 = icmp eq i64 %indvars.iv.next1166.3, %wide.trip.count1168
  br i1 %exitcond1169.not.3, label %._crit_edge1005, label %vec.epilog.scalar.ph2006, !llvm.loop !208

._crit_edge1005:                                  ; preds = %vec.epilog.scalar.ph2006.prol.loopexit, %vec.epilog.scalar.ph2006, %vec.epilog.middle.block2015, %middle.block2002
  %indvars.iv.next1171 = add nuw nsw i64 %indvars.iv1170, 1 ; 2 uses
  %exitcond1174.not = icmp eq i64 %indvars.iv.next1171, %wide.trip.count1173
  br i1 %exitcond1174.not, label %.loopexit928, label %iter.check2005, !llvm.loop !209

.loopexit928:                                     ; preds = %._crit_edge1005, %..loopexit928_crit_edge, %.preheader915.lr.ph
  %i.td = phi ptr [ %.pre1284, %..loopexit928_crit_edge ], [ %.pre1285, %.preheader915.lr.ph ], [ %.pre1285, %._crit_edge1005 ] ; 4 uses
  %i.te = load i32, ptr %i.q, align 4, !tbaa !114
  %i.tf = load i32, ptr %i.lg, align 8, !tbaa !80
  %i.tg = shl i32 %i.te, %i.tf                    ; 2 uses
  %.not.i5881021 = icmp slt i32 %i.tg, 0
  br i1 %.not.i5881021, label %predict_plane.exit589, label %.lr.ph1025

.lr.ph1025:                                       ; preds = %.loopexit928
  %.not.i590 = icmp eq i64 %indvars.iv1267, 0
  %i.th = trunc nuw nsw i64 %indvars.iv1267 to i32 ; 4 uses
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph1025, %predict_slice.exit
  %.0.i5871022 = phi i32 [ 0, %.lr.ph1025 ], [ %i.any, %predict_slice.exit ] ; 9 uses
  %i.ti = load i32, ptr %i.o, align 16, !tbaa !115
  %i.tj = load i32, ptr %i.lg, align 8, !tbaa !80 ; 5 uses
  %i.tk = shl i32 %i.ti, %i.tj                    ; 2 uses
  %i.tl = load i32, ptr %i.q, align 4, !tbaa !114
  %i.tm = shl i32 %i.tl, %i.tj
  %i.tn = lshr i32 16, %i.tj                      ; 6 uses
  br i1 %.not.i590, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.to = load i32, ptr %i.kt, align 4, !tbaa !108 ; 3 uses
  %i.tp = lshr i32 %i.tn, %i.to
  %i.tq = load i32, ptr %i.ks, align 16, !tbaa !109
  %i.tr = lshr i32 %i.tn, %i.tq
  %i.ts = add nsw i32 %i.to, %i.tj
  %i.tt = shl nuw nsw i32 %i.tn, 1
  %i.tu = lshr i32 %i.tt, %i.to
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.tv = shl nuw nsw i32 %i.tn, 1
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.pn.i.pn.in = phi i32 [ %i.ts, %bb.ap ], [ %i.tj, %bb.aq ]
  %i.tw = phi i32 [ %i.tp, %bb.ap ], [ %i.tn, %bb.aq ] ; 4 uses
  %i.tx = phi i32 [ %i.tr, %bb.ap ], [ %i.tn, %bb.aq ] ; 5 uses
  %i.ty = phi i32 [ %i.tu, %bb.ap ], [ %i.tv, %bb.aq ] ; 4 uses
  %.pn.i.pn = sext i32 %.pn.i.pn.in to i64
  %.in892 = getelementptr inbounds [8 x i8], ptr @ff_obmc_tab, i64 %.pn.i.pn
  %i.tz = load ptr, ptr %.in892, align 8, !tbaa !107 ; 8 uses
  %i.ua = load ptr, ptr %i.eo, align 16, !tbaa !142
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 64
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.ub, i64 %indvars.iv1267
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !84 ; 4 uses
  %i.ue = load i32, ptr %i.qw, align 8, !tbaa !174 ; 16 uses
  %i.uf = load i32, ptr %i.qy, align 4, !tbaa !175 ; 8 uses
  %i.ug = load i32, ptr %i.lh, align 16, !tbaa !138
  %.not110.i = icmp eq i32 %i.ug, 0
  br i1 %.not110.i, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.uh = load ptr, ptr %i.i, align 8, !tbaa !106
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 524
  %i.uj = load i32, ptr %i.ui, align 4, !tbaa !210
  %i.uk = and i32 %i.uj, 512
  %.not111.i = icmp eq i32 %i.uk, 0
  br i1 %.not111.i, label %.preheader913, label %bb.at

.preheader913:                                    ; preds = %bb.as
  %.not112.i1018 = icmp slt i32 %i.tk, 0
  br i1 %.not112.i1018, label %predict_slice.exit, label %.lr.ph1020

.lr.ph1020:                                       ; preds = %.preheader913
  %i.ul = lshr i32 %i.tw, 1                       ; 2 uses
  %i.um = mul i32 %i.tx, %.0.i5871022
  %i.un = lshr i32 %i.tx, 1
  %i.uo = sub i32 %i.um, %i.un                    ; 4 uses
  %i.up = add nsw i32 %.0.i5871022, -1
  %i.uq = icmp sgt i32 %i.ud, 111
  %i.ur = shl nsw i32 %i.ud, 4
  %i.us = select i1 %i.uq, i32 16, i32 %i.ur      ; 2 uses
  %i.ut = icmp eq i32 %.0.i5871022, 0
  %i.uu = icmp slt i32 %i.uo, 0
  %i.uv = mul nsw i32 %i.uo, %i.ty
  %i.uw = sext i32 %i.uv to i64
  %i.ux = sub nsw i64 0, %i.uw
  %i.uy = tail call i32 @llvm.smin.i32(i32 %i.uo, i32 0)
  %.0239.i.i = add i32 %i.tx, %i.uy               ; 2 uses
  %.0236.i.i = tail call i32 @llvm.smax.i32(i32 %i.uo, i32 0) ; 8 uses
  %i.uz = add i32 %.0236.i.i, %.0239.i.i          ; 2 uses
  %i.va = icmp sgt i32 %i.uz, %i.uf
  %i.vb = sub nsw i32 %i.uf, %.0236.i.i
  %spec.select265.i.i = select i1 %i.va, i32 %i.vb, i32 %.0239.i.i ; 6 uses
  %i.vc = icmp slt i32 %spec.select265.i.i, 1
  %i.vd = mul i32 %i.ue, %.0236.i.i               ; 2 uses
  %i.ve = mul i32 %i.us, 3
  %i.vf = sext i32 %i.ve to i64                   ; 2 uses
  %i.vg = sext i32 %i.us to i64                   ; 3 uses
  %i.vh = sext i32 %i.ud to i64                   ; 6 uses
  %i.vi = lshr i32 %i.ty, 1                       ; 2 uses
  %i.vj = zext nneg i32 %i.vi to i64              ; 4 uses
  %i.vk = mul i32 %i.vi, %i.ty
  %i.vl = zext i32 %i.vk to i64                   ; 5 uses
  %i.vm = sext i32 %i.ue to i64                   ; 2 uses
  %i.vn = sext i32 %spec.select265.i.i to i64
  %i.vo = zext i32 %i.ty to i64                   ; 2 uses
  %i.vp = zext i32 %i.tw to i64                   ; 2 uses
  %i.vq = zext nneg i32 %i.ul to i64              ; 2 uses
  %i.vr = add nuw i32 %i.tk, 1
  %wide.trip.count1192 = zext i32 %i.vr to i64
  %.1234.i.i.idx = select i1 %i.uu, i64 %i.ux, i64 0 ; 6 uses
  %invariant.gep1429 = getelementptr i8, ptr %i.tz, i64 %.1234.i.i.idx
  %smin1865 = tail call i32 @llvm.smin.i32(i32 %i.uf, i32 %i.uz)
  %i.vs = sub i32 %smin1865, %.0236.i.i
  %i.vt = tail call i32 @llvm.smax.i32(i32 %i.vs, i32 1)
  %smax1866 = zext nneg i32 %i.vt to i64
  %i.vu = add nsw i64 %smax1866, -1               ; 3 uses
  %i.vv = shl nsw i64 %i.vu, 1
  %i.vw = mul i64 %i.vv, %i.vm
  %scevgep1867 = getelementptr i8, ptr %i.td, i64 %i.vw
  %i.vx = add nsw i64 %.1234.i.i.idx, %i.vj       ; 2 uses
  %4 = getelementptr i8, ptr %i.tz, i64 %i.vx
  %scevgep1872 = getelementptr i8, ptr %4, i64 %i.vl
  %i.vy = mul nsw i64 %i.vu, %i.vo                ; 4 uses
  %i.vz = getelementptr i8, ptr %i.tz, i64 %i.vx
  %i.wa = getelementptr i8, ptr %i.vz, i64 %i.vy
  %scevgep1875 = getelementptr i8, ptr %i.wa, i64 %i.vl
  %i.wb = getelementptr i8, ptr %i.tz, i64 %.1234.i.i.idx
  %scevgep1877 = getelementptr i8, ptr %i.wb, i64 %i.vl
  %5 = getelementptr i8, ptr %i.tz, i64 %.1234.i.i.idx
  %i.wc = getelementptr i8, ptr %5, i64 %i.vy
  %scevgep1879 = getelementptr i8, ptr %i.wc, i64 %i.vl
  %i.wd = add nsw i64 %.1234.i.i.idx, %i.vj       ; 2 uses
  %scevgep1881 = getelementptr i8, ptr %i.tz, i64 %i.wd
  %i.we = getelementptr i8, ptr %i.tz, i64 %i.wd
  %scevgep1883 = getelementptr i8, ptr %i.we, i64 %i.vy
  %i.wf = getelementptr i8, ptr %i.tz, i64 %.1234.i.i.idx
  %scevgep1885 = getelementptr i8, ptr %i.wf, i64 %i.vy
  %i.wg = mul nsw i64 %i.vu, %i.vh                ; 4 uses
  %i.wh = insertelement <4 x i32> poison, i32 %i.ud, i64 0
  %i.wi = insertelement <4 x i32> poison, i32 %i.ue, i64 0
  %stride.check1902 = icmp slt i32 %i.ue, 0
  %i.wj = insertelement <8 x i1> poison, i1 %stride.check1902, i64 7
  %i.wk = shufflevector <4 x i32> %i.wh, <4 x i32> poison, <8 x i32> zeroinitializer
  %i.wl = shufflevector <4 x i32> %i.wi, <4 x i32> poison, <8 x i32> zeroinitializer
  %i.wm = or <8 x i32> %i.wk, %i.wl
  %i.wn = icmp slt <8 x i32> %i.wm, zeroinitializer
  br label %bb.av

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.wo = icmp eq i32 %.0.i5871022, %i.tm
  br i1 %i.wo, label %predict_slice.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.wp = mul i32 %i.tx, %.0.i5871022             ; 2 uses
  %i.wq = add nuw nsw i32 %.0.i5871022, 1
  %i.wr = mul nsw i32 %i.tx, %i.wq
  %.114.i = tail call i32 @llvm.smin.i32(i32 %i.uf, i32 %i.wr) ; 2 uses
  %i.ws = icmp slt i32 %i.wp, %.114.i
  %i.wt = icmp sgt i32 %i.ue, 0
  %or.cond1110 = select i1 %i.ws, i1 %i.wt, i1 false
  br i1 %or.cond1110, label %.preheader905.preheader, label %predict_slice.exit

.preheader905.preheader:                          ; preds = %bb.au
  %i.wu = sext i32 %i.wp to i64
  %i.wv = zext nneg i32 %i.ue to i64
  %i.ww = sext i32 %.114.i to i64
  %wide.trip.count1178 = zext nneg i32 %i.ue to i64 ; 6 uses
  %min.iters.check1958 = icmp ult i32 %i.ue, 4
  %min.iters.check1960 = icmp ult i32 %i.ue, 16
  %i.wx = and i64 %wide.trip.count1178, 12
  %n.vec1962 = and i64 %wide.trip.count1178, 2147483632 ; 4 uses
  %cmp.n1969 = icmp eq i64 %n.vec1962, %wide.trip.count1178
  %min.epilog.iters.check1974 = icmp eq i64 %i.wx, 0
  %n.vec1976 = and i64 %wide.trip.count1178, 2147483644 ; 3 uses
  %cmp.n1982 = icmp eq i64 %n.vec1976, %wide.trip.count1178
  br label %iter.check1971

iter.check1971:                                   ; preds = %.preheader905.preheader, %._crit_edge1009
  %indvars.iv1180 = phi i64 [ %i.wu, %.preheader905.preheader ], [ %indvars.iv.next1181, %._crit_edge1009 ] ; 2 uses
  %i.wy = mul nsw i64 %indvars.iv1180, %i.wv
  %invariant.gep1425 = getelementptr [2 x i8], ptr %i.td, i64 %i.wy ; 3 uses
  br i1 %min.iters.check1958, label %vec.epilog.scalar.ph1972.preheader, label %vector.main.loop.iter.check1959

vector.main.loop.iter.check1959:                  ; preds = %iter.check1971
  br i1 %min.iters.check1960, label %vec.epilog.ph1975, label %vector.body1963

vector.body1963:                                  ; preds = %vector.main.loop.iter.check1959, %vector.body1963
  %index1964 = phi i64 [ %index.next1967, %vector.body1963 ], [ 0, %vector.main.loop.iter.check1959 ] ; 2 uses
  %i.wz = getelementptr [2 x i8], ptr %invariant.gep1425, i64 %index1964 ; 3 uses
  %i.xa = getelementptr i8, ptr %i.wz, i64 16     ; 2 uses
  %wide.load1965 = load <8 x i16>, ptr %i.wz, align 2, !tbaa !182
  %wide.load1966 = load <8 x i16>, ptr %i.xa, align 2, !tbaa !182
  %i.xb = add <8 x i16> %wide.load1965, splat (i16 -2048)
  %i.xc = add <8 x i16> %wide.load1966, splat (i16 -2048)
  store <8 x i16> %i.xb, ptr %i.wz, align 2, !tbaa !182
  store <8 x i16> %i.xc, ptr %i.xa, align 2, !tbaa !182
  %index.next1967 = add nuw i64 %index1964, 16    ; 2 uses
  %i.xd = icmp eq i64 %index.next1967, %n.vec1962
  br i1 %i.xd, label %middle.block1968, label %vector.body1963, !llvm.loop !211

middle.block1968:                                 ; preds = %vector.body1963
  br i1 %cmp.n1969, label %._crit_edge1009, label %vec.epilog.iter.check1973

vec.epilog.iter.check1973:                        ; preds = %middle.block1968
  br i1 %min.epilog.iters.check1974, label %vec.epilog.scalar.ph1972.preheader, label %vec.epilog.ph1975, !prof !205

vec.epilog.ph1975:                                ; preds = %vector.main.loop.iter.check1959, %vec.epilog.iter.check1973
  %vec.epilog.resume.val1970 = phi i64 [ %n.vec1962, %vec.epilog.iter.check1973 ], [ 0, %vector.main.loop.iter.check1959 ]
  br label %vec.epilog.vector.body1977

vec.epilog.vector.body1977:                       ; preds = %vec.epilog.vector.body1977, %vec.epilog.ph1975
  %index1978 = phi i64 [ %vec.epilog.resume.val1970, %vec.epilog.ph1975 ], [ %index.next1980, %vec.epilog.vector.body1977 ] ; 2 uses
  %i.xe = getelementptr [2 x i8], ptr %invariant.gep1425, i64 %index1978 ; 2 uses
  %wide.load1979 = load <4 x i16>, ptr %i.xe, align 2, !tbaa !182
  %i.xf = add <4 x i16> %wide.load1979, splat (i16 -2048)
  store <4 x i16> %i.xf, ptr %i.xe, align 2, !tbaa !182
  %index.next1980 = add nuw i64 %index1978, 4     ; 2 uses
  %i.xg = icmp eq i64 %index.next1980, %n.vec1976
  br i1 %i.xg, label %vec.epilog.middle.block1981, label %vec.epilog.vector.body1977, !llvm.loop !212

vec.epilog.middle.block1981:                      ; preds = %vec.epilog.vector.body1977
  br i1 %cmp.n1982, label %._crit_edge1009, label %vec.epilog.scalar.ph1972.preheader

vec.epilog.scalar.ph1972.preheader:               ; preds = %iter.check1971, %vec.epilog.iter.check1973, %vec.epilog.middle.block1981
  %indvars.iv1175.ph = phi i64 [ 0, %iter.check1971 ], [ %n.vec1962, %vec.epilog.iter.check1973 ], [ %n.vec1976, %vec.epilog.middle.block1981 ]
  br label %vec.epilog.scalar.ph1972

vec.epilog.scalar.ph1972:                         ; preds = %vec.epilog.scalar.ph1972.preheader, %vec.epilog.scalar.ph1972
  %indvars.iv1175 = phi i64 [ %indvars.iv.next1176, %vec.epilog.scalar.ph1972 ], [ %indvars.iv1175.ph, %vec.epilog.scalar.ph1972.preheader ] ; 2 uses
  %gep1426 = getelementptr [2 x i8], ptr %invariant.gep1425, i64 %indvars.iv1175 ; 2 uses
  %i.xh = load i16, ptr %gep1426, align 2, !tbaa !182
  %i.xi = add i16 %i.xh, -2048
  store i16 %i.xi, ptr %gep1426, align 2, !tbaa !182
  %indvars.iv.next1176 = add nuw nsw i64 %indvars.iv1175, 1 ; 2 uses
  %exitcond1179.not = icmp eq i64 %indvars.iv.next1176, %wide.trip.count1178
  br i1 %exitcond1179.not, label %._crit_edge1009, label %vec.epilog.scalar.ph1972, !llvm.loop !213

._crit_edge1009:                                  ; preds = %vec.epilog.scalar.ph1972, %vec.epilog.middle.block1981, %middle.block1968
  %indvars.iv.next1181 = add nsw i64 %indvars.iv1180, 1 ; 2 uses
  %i.xj = icmp slt i64 %indvars.iv.next1181, %i.ww
  br i1 %i.xj, label %iter.check1971, label %predict_slice.exit, !llvm.loop !214

bb.av:                                            ; preds = %.lr.ph1020, %add_yblock.exit.i
  %indvars.iv1189 = phi i64 [ 0, %.lr.ph1020 ], [ %indvars.iv.next1190, %add_yblock.exit.i ] ; 6 uses
  %i.xk = mul i64 %indvars.iv1189, %i.vp          ; 2 uses
  %i.xl = trunc i64 %i.xk to i32
  %i.xm = sub i32 %i.xl, %i.ul                    ; 2 uses
  %smax1863 = tail call i32 @llvm.smax.i32(i32 %i.xm, i32 0) ; 3 uses
  %i.xn = add i32 %i.vd, %smax1863
  %i.xo = sext i32 %i.xn to i64                   ; 2 uses
  %i.xp = shl nsw i64 %i.xo, 1
  %scevgep1864 = getelementptr i8, ptr %i.td, i64 %i.xp ; 3 uses
  %smin1868 = tail call i32 @llvm.smin.i32(i32 %i.xm, i32 0)
  %i.xq = add i32 %i.tw, %smin1868
  %i.xr = add i32 %i.xq, %smax1863
  %smin1869 = tail call i32 @llvm.smin.i32(i32 %i.ue, i32 %i.xr)
  %i.xs = sub i32 %smin1869, %smax1863
  %i.xt = tail call i32 @llvm.umax.i32(i32 %i.xs, i32 1)
  %umax1870 = zext i32 %i.xt to i64               ; 6 uses
  %i.xu = add nsw i64 %umax1870, %i.xo
  %i.xv = shl nsw i64 %i.xu, 1
  %scevgep1871 = getelementptr i8, ptr %scevgep1867, i64 %i.xv ; 4 uses
  %i.xw = sub i64 %i.xk, %i.vq
  %smin1873 = tail call i64 @llvm.smin.i64(i64 %i.xw, i64 0) ; 2 uses
  %i.xx = sub nsw i64 0, %smin1873                ; 3 uses
  %scevgep1874 = getelementptr i8, ptr %scevgep1872, i64 %i.xx
  %i.xy = sub i64 %umax1870, %smin1873            ; 4 uses
  %scevgep1876 = getelementptr i8, ptr %scevgep1875, i64 %i.xy
  %scevgep1878 = getelementptr i8, ptr %scevgep1877, i64 %i.xx
  %scevgep1880 = getelementptr i8, ptr %scevgep1879, i64 %i.xy
  %scevgep1882 = getelementptr i8, ptr %scevgep1881, i64 %i.xx
  %scevgep1884 = getelementptr i8, ptr %scevgep1883, i64 %i.xy
  %scevgep1886 = getelementptr i8, ptr %scevgep1885, i64 %i.xy
  %i.xz = mul nuw nsw i64 %indvars.iv1189, %i.vp
  %i.ya = sub nsw i64 %i.xz, %i.vq                ; 2 uses
  %i.yb = load i32, ptr %i.o, align 16, !tbaa !115
  %i.yc = load i32, ptr %i.lg, align 8, !tbaa !80 ; 2 uses
  %i.yd = shl i32 %i.yb, %i.yc                    ; 2 uses
  %i.ye = load i32, ptr %i.q, align 4, !tbaa !114
  %i.yf = shl i32 %i.ye, %i.yc
  %i.yg = load ptr, ptr %i.li, align 8, !tbaa !215
  %i.yh = mul nsw i32 %i.yd, %i.up
  %i.yi = sext i32 %i.yh to i64
  %i.yj = getelementptr [10 x i8], ptr %i.yg, i64 %indvars.iv1189
  %i.yk = getelementptr i8, ptr %i.yj, i64 -10
  %i.yl = getelementptr [10 x i8], ptr %i.yk, i64 %i.yi ; 4 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 10 ; 3 uses
  %i.yn = sext i32 %i.yd to i64                   ; 2 uses
  %i.yo = getelementptr inbounds [10 x i8], ptr %i.yl, i64 %i.yn ; 3 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 10 ; 3 uses
  %i.yq = load ptr, ptr %i.lj, align 8, !tbaa !216 ; 6 uses
  %i.yr = icmp eq i64 %indvars.iv1189, 0
  br i1 %i.yr, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %.not.i.i = icmp slt i64 %indvars.iv1189, %i.yn ; 2 uses
  %spec.select.i.i = select i1 %.not.i.i, ptr %i.ym, ptr %i.yl
  %spec.select260.i.i = select i1 %.not.i.i, ptr %i.yp, ptr %i.yo
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.0228.i.i = phi ptr [ %i.yl, %bb.aw ], [ %i.ym, %bb.av ] ; 2 uses
  %.0226.i.i = phi ptr [ %spec.select.i.i, %bb.aw ], [ %i.ym, %bb.av ] ; 2 uses
  %.0224.i.i = phi ptr [ %i.yo, %bb.aw ], [ %i.yp, %bb.av ] ; 3 uses
  %.0222.i.i = phi ptr [ %spec.select260.i.i, %bb.aw ], [ %i.yp, %bb.av ] ; 3 uses
  br i1 %i.ut, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.not249.i.i = icmp slt i32 %.0.i5871022, %i.yf ; 2 uses
  %spec.select261.i.i = select i1 %.not249.i.i, ptr %.0224.i.i, ptr %.0228.i.i
  %spec.select262.i.i = select i1 %.not249.i.i, ptr %.0222.i.i, ptr %.0226.i.i
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.1229.i.i = phi ptr [ %.0228.i.i, %bb.ay ], [ %.0224.i.i, %bb.ax ] ; 20 uses
  %.1227.i.i = phi ptr [ %.0226.i.i, %bb.ay ], [ %.0222.i.i, %bb.ax ] ; 22 uses
  %.1225.i.i = phi ptr [ %spec.select261.i.i, %bb.ay ], [ %.0224.i.i, %bb.ax ] ; 21 uses
  %.1223.i.i = phi ptr [ %spec.select262.i.i, %bb.ay ], [ %.0222.i.i, %bb.ax ] ; 20 uses
  %i.ys = trunc nsw i64 %i.ya to i32              ; 2 uses
  %i.yt = tail call i32 @llvm.smin.i32(i32 %i.ys, i32 0)
  %.0237.i.i = add nsw i32 %i.yt, %i.tw           ; 2 uses
  %.0235.i.i = tail call i32 @llvm.smax.i32(i32 %i.ys, i32 0) ; 7 uses
  %i.yu = tail call i64 @llvm.smin.i64(i64 %i.ya, i64 0)
  %.0233.i.i.idx = sub i64 0, %i.yu
  %i.yv = add nsw i32 %.0237.i.i, %.0235.i.i
  %i.yw = icmp sgt i32 %i.yv, %i.ue
  %i.yx = sub nsw i32 %i.ue, %.0235.i.i
  %spec.select264.i.i = select i1 %i.yw, i32 %i.yx, i32 %.0237.i.i ; 7 uses
  %gep1430 = getelementptr i8, ptr %invariant.gep1429, i64 %.0233.i.i.idx ; 2 uses
  %i.yy = icmp slt i32 %spec.select264.i.i, 1
  %or.cond5.i.i = select i1 %i.yy, i1 true, i1 %i.vc
  br i1 %or.cond5.i.i, label %add_yblock.exit.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.yz = add nsw i32 %.0235.i.i, %i.vd
  %i.za = sext i32 %i.yz to i64
  %i.zb = getelementptr inbounds [2 x i8], ptr %i.td, i64 %i.za
  %i.zc = getelementptr inbounds i8, ptr %i.yq, i64 %i.vf ; 11 uses
  %i.zd = getelementptr inbounds i8, ptr %i.zc, i64 %i.vg ; 5 uses
  tail call void @ff_snow_pred_block(ptr noundef nonnull %i.d, ptr noundef %i.zc, ptr noundef %i.yq, i64 noundef %i.vh, i32 noundef %.0235.i.i, i32 noundef %.0236.i.i, i32 noundef %spec.select264.i.i, i32 noundef %spec.select265.i.i, ptr noundef %.1229.i.i, i32 noundef %i.th, i32 noundef %i.ue, i32 noundef %i.uf) #12
  %i.ze = getelementptr inbounds nuw i8, ptr %.1229.i.i, i64 8 ; 3 uses
  %i.zf = load i8, ptr %i.ze, align 2, !tbaa !217 ; 4 uses
  %i.zg = and i8 %i.zf, 1
  %.not.i294.i.i = icmp eq i8 %i.zg, 0
  %.phi.trans.insert1287 = getelementptr inbounds nuw i8, ptr %.1227.i.i, i64 8
  %.pre1288 = load i8, ptr %.phi.trans.insert1287, align 2, !tbaa !217 ; 2 uses
  %i.zh = and i8 %.pre1288, 1
  %.not16.i295.i.i = icmp eq i8 %i.zh, 0
  %or.cond1445 = select i1 %.not.i294.i.i, i1 true, i1 %.not16.i295.i.i
  br i1 %or.cond1445, label %same_block.exit300.i.i, label %.split1379

.split1379:                                       ; preds = %bb.ba
  %i.zi = getelementptr inbounds nuw i8, ptr %.1229.i.i, i64 5
  %i.zj = load i8, ptr %i.zi, align 1, !tbaa !83
  %i.zk = getelementptr inbounds nuw i8, ptr %.1227.i.i, i64 5
  %i.zl = load i8, ptr %i.zk, align 1, !tbaa !83
  %i.zm = getelementptr inbounds nuw i8, ptr %.1229.i.i, i64 6
  %i.zn = load i8, ptr %i.zm, align 2, !tbaa !83
  %i.zo = getelementptr inbounds nuw i8, ptr %.1227.i.i, i64 6
  %i.zp = load i8, ptr %i.zo, align 2, !tbaa !83
  %i.zq = getelementptr inbounds nuw i8, ptr %.1229.i.i, i64 7
  %i.zr = load i8, ptr %i.zq, align 1, !tbaa !83
  %i.zs = getelementptr inbounds nuw i8, ptr %.1227.i.i, i64 7
  %i.zt = load i8, ptr %i.zs, align 1, !tbaa !83
  %i.zu = icmp eq i8 %i.zj, %i.zl
  %i.zv = icmp eq i8 %i.zn, %i.zp
  %i.zw = and i1 %i.zu, %i.zv
  %i.zx = icmp eq i8 %i.zr, %i.zt
  %.not18.i296.i.i = and i1 %i.zw, %i.zx
  br i1 %.not18.i296.i.i, label %bb.bc, label %bb.bb

same_block.exit300.i.i:                           ; preds = %bb.ba
  %i.zy = load i16, ptr %.1229.i.i, align 2, !tbaa !219
  %i.zz = sext i16 %i.zy to i32
  %i.aaa = load i16, ptr %.1227.i.i, align 2, !tbaa !219
  %i.aab = sext i16 %i.aaa to i32
  %i.aac = sub nsw i32 %i.zz, %i.aab
  %i.aad = getelementptr inbounds nuw i8, ptr %.1229.i.i, i64 2
  %i.aae = load i16, ptr %i.aad, align 2, !tbaa !220
  %i.aaf = sext i16 %i.aae to i32
  %i.aag = getelementptr inbounds nuw i8, ptr %.1227.i.i, i64 2
  %i.aah = load i16, ptr %i.aag, align 2, !tbaa !220
  %i.aai = sext i16 %i.aah to i32
  %i.aaj = sub nsw i32 %i.aaf, %i.aai
  %i.aak = or i32 %i.aaj, %i.aac
  %i.aal = getelementptr inbounds nuw i8, ptr %.1229.i.i, i64 4
  %i.aam = load i8, ptr %i.aal, align 2, !tbaa !221
  %i.aan = zext i8 %i.aam to i32
  %i.aao = getelementptr inbounds nuw i8, ptr %.1227.i.i, i64 4
  %i.aap = load i8, ptr %i.aao, align 2, !tbaa !221
  %i.aaq = zext i8 %i.aap to i32
  %i.aar = sub nsw i32 %i.aan, %i.aaq
  %i.aas = or i32 %i.aak, %i.aar
  %i.aat = xor i8 %.pre1288, %i.zf
  %i.aau = and i8 %i.aat, 1
  %i.aav = zext nneg i8 %i.aau to i32
  %i.aaw = or i32 %i.aas, %i.aav
  %.not17.i299.i.i = icmp eq i32 %i.aaw, 0
  br i1 %.not17.i299.i.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.split1379, %same_block.exit300.i.i
  %i.aax = getelementptr inbounds i8, ptr %i.zd, i64 %i.vg
  tail call void @ff_snow_pred_block(ptr noundef nonnull %i.d, ptr noundef %i.zd, ptr noundef %i.yq, i64 noundef %i.vh, i32 noundef %.0235.i.i, i32 noundef %.0236.i.i, i32 noundef %spec.select264.i.i, i32 noundef %spec.select265.i.i, ptr noundef nonnull %.1227.i.i, i32 noundef %i.th, i32 noundef %i.ue, i32 noundef %i.uf) #12
  %.pre1289 = load i8, ptr %i.ze, align 2, !tbaa !217
  br label %bb.bc

bb.bc:                                            ; preds = %.split1379, %same_block.exit300.i.i, %bb.bb
  %i.aay = phi i8 [ %.pre1289, %bb.bb ], [ %i.zf, %same_block.exit300.i.i ], [ %i.zf, %.split1379 ] ; 6 uses
  %.sroa.7.0 = phi ptr [ %i.zd, %bb.bb ], [ %i.zc, %same_block.exit300.i.i ], [ %i.zc, %.split1379 ] ; 8 uses
  %.0221.i.i = phi ptr [ %i.aax, %bb.bb ], [ %i.zd, %same_block.exit300.i.i ], [ %i.zd, %.split1379 ] ; 7 uses
  %i.aaz = and i8 %i.aay, 1
  %.not.i287.i.i = icmp eq i8 %i.aaz, 0
  %.phi.trans.insert1291 = getelementptr inbounds nuw i8, ptr %.1225.i.i, i64 8
  %.pre1292 = load i8, ptr %.phi.trans.insert1291, align 2, !tbaa !217 ; 4 uses
  %i.aba = and i8 %.pre1292, 1
  %.not16.i288.i.i = icmp eq i8 %i.aba, 0
  %or.cond1446 = select i1 %.not.i287.i.i, i1 true, i1 %.not16.i288.i.i
  br i1 %or.cond1446, label %same_block.exit293.i.i, label %.split1380

.split1380:                                       ; preds = %bb.bc
  %i.abb = getelementptr inbounds nuw i8, ptr %.1229.i.i, i64 5
  %i.abc = load i8, ptr %i.abb, align 1, !tbaa !83
  %i.abd = getelementptr inbounds nuw i8, ptr %.1225.i.i, i64 5
  %i.abe = load i8, ptr %i.abd, align 1, !tbaa !83
  %i.abf = getelementptr inbounds nuw i8, ptr %.1229.i.i, i64 6
  %i.abg = load i8, ptr %i.abf, align 2, !tbaa !83
  %i.abh = getelementptr inbounds nuw i8, ptr %.1225.i.i, i64 6
  %i.abi = load i8, ptr %i.abh, align 2, !tbaa !83
  %i.abj = getelementptr inbounds nuw i8, ptr %.1229.i.i, i64 7
  %i.abk = load i8, ptr %i.abj, align 1, !tbaa !83
  %i.abl = getelementptr inbounds nuw i8, ptr %.1225.i.i, i64 7
  %i.abm = load i8, ptr %i.abl, align 1, !tbaa !83
  %i.abn = icmp eq i8 %i.abc, %i.abe
  %i.abo = icmp eq i8 %i.abg, %i.abi
  %i.abp = and i1 %i.abn, %i.abo
  %i.abq = icmp eq i8 %i.abk, %i.abm
  %.not18.i289.i.i = and i1 %i.abp, %i.abq
  br i1 %.not18.i289.i.i, label %bb.bf, label %bb.bd

same_block.exit293.i.i:                           ; preds = %bb.bc
  %i.abr = load i16, ptr %.1229.i.i, align 2, !tbaa !219
  %i.abs = sext i16 %i.abr to i32
  %i.abt = load i16, ptr %.1225.i.i, align 2, !tbaa !219
  %i.abu = sext i16 %i.abt to i32
  %i.abv = sub nsw i32 %i.abs, %i.abu
  %i.abw = getelementptr inbounds nuw i8, ptr %.1229.i.i, i64 2
  %i.abx = load i16, ptr %i.abw, align 2, !tbaa !220
  %i.aby = sext i16 %i.abx to i32
  %i.abz = getelementptr inbounds nuw i8, ptr %.1225.i.i, i64 2
  %i.aca = load i16, ptr %i.abz, align 2, !tbaa !220
  %i.acb = sext i16 %i.aca to i32
  %i.acc = sub nsw i32 %i.aby, %i.acb
  %i.acd = or i32 %i.acc, %i.abv
  %i.ace = getelementptr inbounds nuw i8, ptr %.1229.i.i, i64 4
  %i.acf = load i8, ptr %i.ace, align 2, !tbaa !221
  %i.acg = zext i8 %i.acf to i32
  %i.ach = getelementptr inbounds nuw i8, ptr %.1225.i.i, i64 4
  %i.aci = load i8, ptr %i.ach, align 2, !tbaa !221
  %i.acj = zext i8 %i.aci to i32
  %i.ack = sub nsw i32 %i.acg, %i.acj
  %i.acl = or i32 %i.acd, %i.ack
  %i.acm = xor i8 %.pre1292, %i.aay
  %i.acn = and i8 %i.acm, 1
  %i.aco = zext nneg i8 %i.acn to i32
  %i.acp = or i32 %i.acl, %i.aco
  %.not17.i292.i.i = icmp eq i32 %i.acp, 0
  br i1 %.not17.i292.i.i, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %.split1380, %same_block.exit293.i.i
end_hunk_0
begin_hunk_1_@encode_frame:bb.a
  br i1 %exitcond.not.i831.3, label %._crit_edge.i832.3, label %bb.gb, !llvm.loop !330

._crit_edge.i832.3:                               ; preds = %bb.gf
  %indvars.iv.next7.i.3 = add nuw nsw i64 %indvars.iv6.i.3, 1 ; 2 uses
  %exitcond10.not.i.3 = icmp eq i64 %indvars.iv.next7.i.3, %wide.trip.count9.i.3
  br i1 %exitcond10.not.i.3, label %.split1050.us, label %.preheader.i824.3, !llvm.loop !331

.split1050.us:                                    ; preds = %dequantize.exit.2, %._crit_edge.i832.3, %.split.3, %bb.fl
  %indvars.iv.next1227 = add nuw nsw i64 %indvars.iv1226, 1 ; 2 uses
  %exitcond1230.not = icmp eq i64 %indvars.iv.next1227, %wide.trip.count1229
  br i1 %exitcond1230.not, label %._crit_edge1054, label %bb.fl, !llvm.loop !332

._crit_edge1054:                                  ; preds = %.split1050.us, %bb.bt, %.preheader922
  %.lcssa9401386 = phi i32 [ %i.axk, %bb.bt ], [ %i.bvz, %.preheader922 ], [ %i.bvz, %.split1050.us ]
  %i.ccd = load ptr, ptr %i.ky, align 16, !tbaa !180
  %i.cce = load ptr, ptr %i.kz, align 8, !tbaa !183
  %i.ccf = load i32, ptr %i.la, align 4, !tbaa !78
  tail call void @ff_spatial_idwt(ptr noundef %i.ccd, ptr noundef %i.cce, i32 noundef %i.qx, i32 noundef %i.qz, i32 noundef %i.qx, i32 noundef %i.ccf, i32 noundef %.lcssa9401386) #12
  %i.ccg = load i32, ptr %i.en, align 8, !tbaa !140
  %i.cch = icmp eq i32 %i.ccg, -128
  %or.cond1114 = select i1 %i.cch, i1 %i.rd, i1 false
  %i.cci = icmp sgt i32 %i.qx, 0
  %or.cond1115 = select i1 %or.cond1114, i1 %i.cci, i1 false
  %.pre1297 = load ptr, ptr %i.ky, align 16, !tbaa !180 ; 7 uses
  br i1 %or.cond1115, label %.preheader910.lr.ph.split, label %.loopexit921

.preheader910.lr.ph.split:                        ; preds = %._crit_edge1054
  %i.ccj = zext nneg i32 %i.qx to i64             ; 7 uses
  %wide.trip.count1239 = zext nneg i32 %i.qz to i64
  %min.iters.check1593 = icmp ult i32 %i.qx, 4
  %min.iters.check1594 = icmp ult i32 %i.qx, 16
  %i.cck = and i64 %i.ccj, 12
  %n.vec1596 = and i64 %i.ccj, 2147483632         ; 4 uses
  %cmp.n1603 = icmp eq i64 %n.vec1596, %i.ccj
  %min.epilog.iters.check = icmp eq i64 %i.cck, 0
  %n.vec1604 = and i64 %i.ccj, 2147483644         ; 3 uses
  %cmp.n1608 = icmp eq i64 %n.vec1604, %i.ccj
  br label %iter.check

iter.check:                                       ; preds = %.preheader910.lr.ph.split, %._crit_edge1057
  %indvars.iv1236 = phi i64 [ 0, %.preheader910.lr.ph.split ], [ %indvars.iv.next1237, %._crit_edge1057 ] ; 2 uses
  %i.ccl = mul nuw nsw i64 %indvars.iv1236, %i.ccj
  %invariant.gep1431 = getelementptr inbounds nuw [2 x i8], ptr %.pre1297, i64 %i.ccl ; 3 uses
  br i1 %min.iters.check1593, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check1594, label %vec.epilog.ph, label %vector.body1597

vector.body1597:                                  ; preds = %vector.main.loop.iter.check, %vector.body1597
  %index1598 = phi i64 [ %index.next1601, %vector.body1597 ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.ccm = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep1431, i64 %index1598 ; 3 uses
  %i.ccn = getelementptr inbounds nuw i8, ptr %i.ccm, i64 16 ; 2 uses
  %wide.load1599 = load <8 x i16>, ptr %i.ccm, align 2, !tbaa !182
  %wide.load1600 = load <8 x i16>, ptr %i.ccn, align 2, !tbaa !182
  %i.cco = shl <8 x i16> %wide.load1599, splat (i16 4)
  %i.ccp = shl <8 x i16> %wide.load1600, splat (i16 4)
  store <8 x i16> %i.cco, ptr %i.ccm, align 2, !tbaa !182
  store <8 x i16> %i.ccp, ptr %i.ccn, align 2, !tbaa !182
  %index.next1601 = add nuw i64 %index1598, 16    ; 2 uses
  %i.ccq = icmp eq i64 %index.next1601, %n.vec1596
  br i1 %i.ccq, label %middle.block1602, label %vector.body1597, !llvm.loop !333

middle.block1602:                                 ; preds = %vector.body1597
  br i1 %cmp.n1603, label %._crit_edge1057, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block1602
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !205

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec1596, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1605 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1607, %vec.epilog.vector.body ] ; 2 uses
  %i.ccr = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep1431, i64 %index1605 ; 2 uses
  %wide.load1606 = load <4 x i16>, ptr %i.ccr, align 2, !tbaa !182
  %i.ccs = shl <4 x i16> %wide.load1606, splat (i16 4)
  store <4 x i16> %i.ccs, ptr %i.ccr, align 2, !tbaa !182
  %index.next1607 = add nuw i64 %index1605, 4     ; 2 uses
  %i.cct = icmp eq i64 %index.next1607, %n.vec1604
  br i1 %i.cct, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !334

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n1608, label %._crit_edge1057, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv1231.ph = phi i64 [ 0, %iter.check ], [ %n.vec1596, %vec.epilog.iter.check ], [ %n.vec1604, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv1231 = phi i64 [ %indvars.iv.next1232, %vec.epilog.scalar.ph ], [ %indvars.iv1231.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %gep1432 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep1431, i64 %indvars.iv1231 ; 2 uses
  %i.ccu = load i16, ptr %gep1432, align 2, !tbaa !182
  %i.ccv = shl i16 %i.ccu, 4
  store i16 %i.ccv, ptr %gep1432, align 2, !tbaa !182
  %indvars.iv.next1232 = add nuw nsw i64 %indvars.iv1231, 1 ; 2 uses
  %exitcond1235.not = icmp eq i64 %indvars.iv.next1232, %i.ccj
  br i1 %exitcond1235.not, label %._crit_edge1057, label %vec.epilog.scalar.ph, !llvm.loop !335

._crit_edge1057:                                  ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block1602
  %indvars.iv.next1237 = add nuw nsw i64 %indvars.iv1236, 1 ; 2 uses
  %exitcond1240.not = icmp eq i64 %indvars.iv.next1237, %wide.trip.count1239
  br i1 %exitcond1240.not, label %.loopexit921, label %iter.check, !llvm.loop !336

.loopexit921:                                     ; preds = %._crit_edge1057, %._crit_edge1054
  %i.ccw = load i32, ptr %i.q, align 4, !tbaa !114
  %i.ccx = load i32, ptr %i.lg, align 8, !tbaa !80
  %i.ccy = shl i32 %i.ccw, %i.ccx                 ; 2 uses
  %.not.i5851073 = icmp slt i32 %i.ccy, 0
  br i1 %.not.i5851073, label %predict_plane.exit586, label %.lr.ph1077

.lr.ph1077:                                       ; preds = %.loopexit921
  %i.ccz = trunc nuw nsw i64 %indvars.iv1267 to i32 ; 4 uses
  br label %bb.gg

bb.gg:                                            ; preds = %.lr.ph1077, %predict_slice.exit676
  %.0.i5841074 = phi i32 [ 0, %.lr.ph1077 ], [ %i.czp, %predict_slice.exit676 ] ; 9 uses
  %i.cda = load i32, ptr %i.o, align 16, !tbaa !115
  %i.cdb = load i32, ptr %i.lg, align 8, !tbaa !80 ; 5 uses
  %i.cdc = shl i32 %i.cda, %i.cdb                 ; 2 uses
  %i.cdd = load i32, ptr %i.q, align 4, !tbaa !114
  %i.cde = shl i32 %i.cdd, %i.cdb
  %i.cdf = lshr i32 16, %i.cdb                    ; 6 uses
  br i1 %i.anz, label %bb.gi, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.cdg = load i32, ptr %i.kt, align 4, !tbaa !108 ; 3 uses
  %i.cdh = lshr i32 %i.cdf, %i.cdg
  %i.cdi = load i32, ptr %i.ks, align 16, !tbaa !109
  %i.cdj = lshr i32 %i.cdf, %i.cdi
  %i.cdk = add nsw i32 %i.cdg, %i.cdb
  %i.cdl = shl nuw nsw i32 %i.cdf, 1
  %i.cdm = lshr i32 %i.cdl, %i.cdg
  br label %bb.gj

bb.gi:                                            ; preds = %bb.gg
  %i.cdn = shl nuw nsw i32 %i.cdf, 1
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %bb.gh
  %.pn.i593.pn.in = phi i32 [ %i.cdk, %bb.gh ], [ %i.cdb, %bb.gi ]
  %i.cdo = phi i32 [ %i.cdh, %bb.gh ], [ %i.cdf, %bb.gi ] ; 4 uses
  %i.cdp = phi i32 [ %i.cdj, %bb.gh ], [ %i.cdf, %bb.gi ] ; 5 uses
  %i.cdq = phi i32 [ %i.cdm, %bb.gh ], [ %i.cdn, %bb.gi ] ; 4 uses
  %.pn.i593.pn = sext i32 %.pn.i593.pn.in to i64
  %.in893 = getelementptr inbounds [8 x i8], ptr @ff_obmc_tab, i64 %.pn.i593.pn
  %i.cdr = load ptr, ptr %.in893, align 8, !tbaa !107 ; 8 uses
  %i.cds = load ptr, ptr %i.eo, align 16, !tbaa !142 ; 2 uses
  %i.cdt = getelementptr inbounds nuw i8, ptr %i.cds, i64 64
  %i.cdu = getelementptr inbounds nuw [4 x i8], ptr %i.cdt, i64 %indvars.iv1267
  %i.cdv = load i32, ptr %i.cdu, align 4, !tbaa !84 ; 8 uses
  %i.cdw = getelementptr inbounds nuw [8 x i8], ptr %i.cds, i64 %indvars.iv1267
  %i.cdx = load ptr, ptr %i.cdw, align 8, !tbaa !107 ; 6 uses
  %i.cdy = load i32, ptr %i.qw, align 8, !tbaa !174 ; 14 uses
  %i.cdz = load i32, ptr %i.qy, align 4, !tbaa !175 ; 8 uses
  %i.cea = load i32, ptr %i.lh, align 16, !tbaa !138
  %.not110.i595 = icmp eq i32 %i.cea, 0
  br i1 %.not110.i595, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  %i.ceb = load ptr, ptr %i.i, align 8, !tbaa !106
  %i.cec = getelementptr inbounds nuw i8, ptr %i.ceb, i64 524
  %i.ced = load i32, ptr %i.cec, align 4, !tbaa !210
  %i.cee = and i32 %i.ced, 512
  %.not111.i597 = icmp eq i32 %i.cee, 0
  br i1 %.not111.i597, label %.preheader908, label %bb.gl

.preheader908:                                    ; preds = %bb.gk
  %.not112.i5991070 = icmp slt i32 %i.cdc, 0
  br i1 %.not112.i5991070, label %predict_slice.exit676, label %.lr.ph1072

.lr.ph1072:                                       ; preds = %.preheader908
  %i.cef = lshr i32 %i.cdo, 1                     ; 2 uses
  %i.ceg = mul i32 %i.cdp, %.0.i5841074
  %i.ceh = lshr i32 %i.cdp, 1
  %i.cei = sub i32 %i.ceg, %i.ceh                 ; 4 uses
  %i.cej = add nsw i32 %.0.i5841074, -1
  %i.cek = icmp sgt i32 %i.cdv, 111
  %i.cel = shl nsw i32 %i.cdv, 4
  %i.cem = select i1 %i.cek, i32 16, i32 %i.cel   ; 2 uses
  %i.cen = icmp eq i32 %.0.i5841074, 0
  %i.ceo = icmp slt i32 %i.cei, 0
  %i.cep = mul nsw i32 %i.cei, %i.cdq
  %i.ceq = sext i32 %i.cep to i64
  %i.cer = sub nsw i64 0, %i.ceq
  %i.ces = tail call i32 @llvm.smin.i32(i32 %i.cei, i32 0)
  %.0239.i.i618 = add i32 %i.cdp, %i.ces          ; 2 uses
  %.0236.i.i619 = tail call i32 @llvm.smax.i32(i32 %i.cei, i32 0) ; 9 uses
  %i.cet = add i32 %.0236.i.i619, %.0239.i.i618   ; 2 uses
  %i.ceu = icmp sgt i32 %i.cet, %i.cdz
  %i.cev = sub nsw i32 %i.cdz, %.0236.i.i619
  %spec.select265.i.i621 = select i1 %i.ceu, i32 %i.cev, i32 %.0239.i.i618 ; 6 uses
  %i.cew = icmp slt i32 %spec.select265.i.i621, 1
  %i.cex = mul i32 %i.cdy, %.0236.i.i619          ; 2 uses
  %i.cey = mul i32 %.0236.i.i619, %i.cdv          ; 2 uses
  %i.cez = mul i32 %i.cem, 3
  %i.cfa = sext i32 %i.cez to i64                 ; 2 uses
  %i.cfb = sext i32 %i.cem to i64                 ; 3 uses
  %i.cfc = sext i32 %i.cdv to i64                 ; 6 uses
  %i.cfd = lshr i32 %i.cdq, 1                     ; 2 uses
  %i.cfe = zext nneg i32 %i.cfd to i64            ; 4 uses
  %i.cff = mul i32 %i.cfd, %i.cdq
  %i.cfg = zext i32 %i.cff to i64                 ; 5 uses
  %i.cfh = sext i32 %i.cdy to i64                 ; 2 uses
  %i.cfi = sext i32 %spec.select265.i.i621 to i64
  %i.cfj = zext i32 %i.cdq to i64                 ; 2 uses
  %i.cfk = zext i32 %i.cdo to i64                 ; 2 uses
  %i.cfl = zext nneg i32 %i.cef to i64            ; 2 uses
  %i.cfm = add nuw i32 %i.cdc, 1
  %wide.trip.count1258 = zext i32 %i.cfm to i64
  %.1234.i.i620.idx = select i1 %i.ceo, i64 %i.cer, i64 0 ; 6 uses
  %invariant.gep1439 = getelementptr i8, ptr %i.cdr, i64 %.1234.i.i620.idx
  %smin = tail call i32 @llvm.smin.i32(i32 %i.cdz, i32 %i.cet)
  %i.cfn = sub i32 %smin, %.0236.i.i619
  %i.cfo = tail call i32 @llvm.smax.i32(i32 %i.cfn, i32 1)
  %smax1489 = zext nneg i32 %i.cfo to i64
  %i.cfp = add nsw i64 %smax1489, -1              ; 3 uses
  %i.cfq = mul nsw i64 %i.cfp, %i.cfc             ; 5 uses
  %scevgep1490 = getelementptr i8, ptr %i.cdx, i64 %i.cfq
  %i.cfr = add nsw i64 %.1234.i.i620.idx, %i.cfe  ; 2 uses
  %6 = getelementptr i8, ptr %i.cdr, i64 %i.cfr
  %scevgep1494 = getelementptr i8, ptr %6, i64 %i.cfg
  %i.cfs = mul nsw i64 %i.cfp, %i.cfj             ; 4 uses
  %i.cft = getelementptr i8, ptr %i.cdr, i64 %i.cfr
  %i.cfu = getelementptr i8, ptr %i.cft, i64 %i.cfs
  %scevgep1497 = getelementptr i8, ptr %i.cfu, i64 %i.cfg
  %i.cfv = getelementptr i8, ptr %i.cdr, i64 %.1234.i.i620.idx
  %scevgep1499 = getelementptr i8, ptr %i.cfv, i64 %i.cfg
  %7 = getelementptr i8, ptr %i.cdr, i64 %.1234.i.i620.idx
  %i.cfw = getelementptr i8, ptr %7, i64 %i.cfs
  %scevgep1501 = getelementptr i8, ptr %i.cfw, i64 %i.cfg
  %i.cfx = add nsw i64 %.1234.i.i620.idx, %i.cfe  ; 2 uses
  %scevgep1503 = getelementptr i8, ptr %i.cdr, i64 %i.cfx
  %i.cfy = getelementptr i8, ptr %i.cdr, i64 %i.cfx
  %scevgep1505 = getelementptr i8, ptr %i.cfy, i64 %i.cfs
  %i.cfz = getelementptr i8, ptr %i.cdr, i64 %.1234.i.i620.idx
  %scevgep1507 = getelementptr i8, ptr %i.cfz, i64 %i.cfs
  %i.cga = shl nsw i64 %i.cfp, 1
  %i.cgb = mul i64 %i.cga, %i.cfh
  %scevgep1518 = getelementptr i8, ptr %.pre1297, i64 %i.cgb
  %stride.check1523 = icmp slt i32 %i.cdv, 0
  %i.cgc = insertelement <8 x i1> poison, i1 %stride.check1523, i64 7
  %i.cgd = or i32 %i.cdy, %i.cdv
  %i.cge = icmp slt i32 %i.cgd, 0
  br label %bb.gn

bb.gl:                                            ; preds = %bb.gk, %bb.gj
  %i.cgf = icmp eq i32 %.0.i5841074, %i.cde
  br i1 %i.cgf, label %predict_slice.exit676, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.cgg = mul i32 %i.cdp, %.0.i5841074           ; 2 uses
  %i.cgh = add nuw nsw i32 %.0.i5841074, 1
  %i.cgi = mul nsw i32 %i.cdp, %i.cgh
  %..i = tail call i32 @llvm.smin.i32(i32 %i.cdz, i32 %i.cgi) ; 2 uses
  %i.cgj = icmp slt i32 %i.cgg, %..i
  %i.cgk = icmp sgt i32 %i.cdy, 0
  %or.cond1116 = select i1 %i.cgj, i1 %i.cgk, i1 false
  br i1 %or.cond1116, label %.preheader.preheader, label %predict_slice.exit676

.preheader.preheader:                             ; preds = %bb.gm
  %i.cgl = sext i32 %i.cgg to i64                 ; 3 uses
  %i.cgm = sext i32 %i.cdv to i64                 ; 3 uses
  %i.cgn = zext nneg i32 %i.cdy to i64
  %i.cgo = sext i32 %..i to i64                   ; 3 uses
  %wide.trip.count1244 = zext nneg i32 %i.cdy to i64 ; 8 uses
  %i.cgp = mul nsw i64 %i.cgm, %i.cgl
  %scevgep1573 = getelementptr i8, ptr %i.cdx, i64 %i.cgp
  %i.cgq = add nsw i64 %i.cgo, -1
  %i.cgr = mul i64 %i.cgq, %i.cgm
  %i.cgs = getelementptr i8, ptr %i.cdx, i64 %i.cgr
  %scevgep1574 = getelementptr i8, ptr %i.cgs, i64 %wide.trip.count1244
  %i.cgt = shl nsw i64 %i.cgl, 1
  %i.cgu = mul nsw i64 %i.cgt, %wide.trip.count1244
  %scevgep1575 = getelementptr i8, ptr %.pre1297, i64 %i.cgu
  %i.cgv = shl nsw i64 %i.cgo, 1
  %i.cgw = mul nsw i64 %i.cgv, %wide.trip.count1244
  %scevgep1576 = getelementptr i8, ptr %.pre1297, i64 %i.cgw
  %min.iters.check1582 = icmp ult i32 %i.cdy, 8
  %bound01577 = icmp ult ptr %scevgep1573, %scevgep1576
  %bound11578 = icmp ult ptr %scevgep1575, %scevgep1574
  %found.conflict1579 = and i1 %bound01577, %bound11578
  %stride.check1580 = icmp slt i32 %i.cdv, 0
  %i.cgx = or i1 %found.conflict1579, %stride.check1580
  %n.vec1584 = and i64 %wide.trip.count1244, 2147483640 ; 3 uses
  %cmp.n1590 = icmp eq i64 %n.vec1584, %wide.trip.count1244
  %xtraiter2187 = and i64 %wide.trip.count1244, 1
  %lcmp.mod2188.not = icmp eq i64 %xtraiter2187, 0
  %i.cgy = add nsw i64 %wide.trip.count1244, -1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge1061
  %indvars.iv1246 = phi i64 [ %i.cgl, %.preheader.preheader ], [ %indvars.iv.next1247, %._crit_edge1061 ] ; 3 uses
  %i.cgz = mul nsw i64 %indvars.iv1246, %i.cgn
  %i.cha = mul nsw i64 %indvars.iv1246, %i.cgm
  %invariant.gep1433 = getelementptr [2 x i8], ptr %.pre1297, i64 %i.cgz ; 4 uses
  %invariant.gep1435 = getelementptr i8, ptr %i.cdx, i64 %i.cha ; 4 uses
  %brmerge2215 = select i1 %min.iters.check1582, i1 true, i1 %i.cgx
  br i1 %brmerge2215, label %scalar.ph1581.preheader, label %vector.body1585

vector.body1585:                                  ; preds = %.preheader, %vector.body1585
  %index1586 = phi i64 [ %index.next1588, %vector.body1585 ], [ 0, %.preheader ] ; 3 uses
  %i.chb = getelementptr [2 x i8], ptr %invariant.gep1433, i64 %index1586
  %wide.load1587 = load <8 x i16>, ptr %i.chb, align 2, !tbaa !182, !alias.scope !337 ; 2 uses
  %i.chc = sext <8 x i16> %wide.load1587 to <8 x i32>
  %i.chd = add nsw <8 x i32> %i.chc, splat (i32 2056)
  %i.che = ashr <8 x i32> %i.chd, splat (i32 4)   ; 2 uses
  %i.chf = icmp ugt <8 x i32> %i.che, splat (i32 255)
  %i.chg = icmp sgt <8 x i16> %wide.load1587, splat (i16 -2057)
  %i.chh = sext <8 x i1> %i.chg to <8 x i32>
  %i.chi = select <8 x i1> %i.chf, <8 x i32> %i.chh, <8 x i32> %i.che
  %i.chj = trunc <8 x i32> %i.chi to <8 x i8>
  %i.chk = getelementptr i8, ptr %invariant.gep1435, i64 %index1586
  store <8 x i8> %i.chj, ptr %i.chk, align 1, !tbaa !83, !alias.scope !340, !noalias !337
  %index.next1588 = add nuw i64 %index1586, 8     ; 2 uses
  %i.chl = icmp eq i64 %index.next1588, %n.vec1584
  br i1 %i.chl, label %middle.block1589, label %vector.body1585, !llvm.loop !342

middle.block1589:                                 ; preds = %vector.body1585
  br i1 %cmp.n1590, label %._crit_edge1061, label %scalar.ph1581.preheader

scalar.ph1581.preheader:                          ; preds = %.preheader, %middle.block1589
  %indvars.iv1241.ph = phi i64 [ %n.vec1584, %middle.block1589 ], [ 0, %.preheader ] ; 5 uses
  br i1 %lcmp.mod2188.not, label %scalar.ph1581.prol.loopexit, label %scalar.ph1581.prol

scalar.ph1581.prol:                               ; preds = %scalar.ph1581.preheader
  %gep1434.prol = getelementptr [2 x i8], ptr %invariant.gep1433, i64 %indvars.iv1241.ph
  %i.chm = load i16, ptr %gep1434.prol, align 2, !tbaa !182 ; 2 uses
  %i.chn = sext i16 %i.chm to i32
  %i.cho = add nsw i32 %i.chn, 2056
  %i.chp = ashr i32 %i.cho, 4                     ; 2 uses
  %i.chq = icmp ugt i32 %i.chp, 255
  %isnotneg.i.prol = icmp sgt i16 %i.chm, -2057
  %i.chr = sext i1 %isnotneg.i.prol to i32
  %.0.i596.prol = select i1 %i.chq, i32 %i.chr, i32 %i.chp
  %i.chs = trunc i32 %.0.i596.prol to i8
  %gep1436.prol = getelementptr i8, ptr %invariant.gep1435, i64 %indvars.iv1241.ph
  store i8 %i.chs, ptr %gep1436.prol, align 1, !tbaa !83
  %indvars.iv.next1242.prol = or disjoint i64 %indvars.iv1241.ph, 1
  br label %scalar.ph1581.prol.loopexit

scalar.ph1581.prol.loopexit:                      ; preds = %scalar.ph1581.prol, %scalar.ph1581.preheader
  %indvars.iv1241.unr = phi i64 [ %indvars.iv1241.ph, %scalar.ph1581.preheader ], [ %indvars.iv.next1242.prol, %scalar.ph1581.prol ]
  %i.cht = icmp eq i64 %indvars.iv1241.ph, %i.cgy
  br i1 %i.cht, label %._crit_edge1061, label %scalar.ph1581

scalar.ph1581:                                    ; preds = %scalar.ph1581.prol.loopexit, %scalar.ph1581
  %indvars.iv1241 = phi i64 [ %indvars.iv.next1242.1, %scalar.ph1581 ], [ %indvars.iv1241.unr, %scalar.ph1581.prol.loopexit ] ; 4 uses
  %gep1434 = getelementptr [2 x i8], ptr %invariant.gep1433, i64 %indvars.iv1241
  %i.chu = load i16, ptr %gep1434, align 2, !tbaa !182 ; 2 uses
  %i.chv = sext i16 %i.chu to i32
  %i.chw = add nsw i32 %i.chv, 2056
  %i.chx = ashr i32 %i.chw, 4                     ; 2 uses
  %i.chy = icmp ugt i32 %i.chx, 255
  %isnotneg.i = icmp sgt i16 %i.chu, -2057
  %i.chz = sext i1 %isnotneg.i to i32
  %.0.i596 = select i1 %i.chy, i32 %i.chz, i32 %i.chx
  %i.cia = trunc i32 %.0.i596 to i8
  %gep1436 = getelementptr i8, ptr %invariant.gep1435, i64 %indvars.iv1241
  store i8 %i.cia, ptr %gep1436, align 1, !tbaa !83
  %indvars.iv.next1242 = add nuw nsw i64 %indvars.iv1241, 1 ; 2 uses
  %gep1434.1 = getelementptr [2 x i8], ptr %invariant.gep1433, i64 %indvars.iv.next1242
  %i.cib = load i16, ptr %gep1434.1, align 2, !tbaa !182 ; 2 uses
  %i.cic = sext i16 %i.cib to i32
  %i.cid = add nsw i32 %i.cic, 2056
  %i.cie = ashr i32 %i.cid, 4                     ; 2 uses
  %i.cif = icmp ugt i32 %i.cie, 255
  %isnotneg.i.1 = icmp sgt i16 %i.cib, -2057
  %i.cig = sext i1 %isnotneg.i.1 to i32
  %.0.i596.1 = select i1 %i.cif, i32 %i.cig, i32 %i.cie
  %i.cih = trunc i32 %.0.i596.1 to i8
  %gep1436.1 = getelementptr i8, ptr %invariant.gep1435, i64 %indvars.iv.next1242
  store i8 %i.cih, ptr %gep1436.1, align 1, !tbaa !83
  %indvars.iv.next1242.1 = add nuw nsw i64 %indvars.iv1241, 2 ; 2 uses
  %exitcond1245.not.1 = icmp eq i64 %indvars.iv.next1242.1, %wide.trip.count1244
  br i1 %exitcond1245.not.1, label %._crit_edge1061, label %scalar.ph1581, !llvm.loop !343

._crit_edge1061:                                  ; preds = %scalar.ph1581.prol.loopexit, %scalar.ph1581, %middle.block1589
  %indvars.iv.next1247 = add nsw i64 %indvars.iv1246, 1 ; 2 uses
  %i.cii = icmp slt i64 %indvars.iv.next1247, %i.cgo
  br i1 %i.cii, label %.preheader, label %predict_slice.exit676, !llvm.loop !344

bb.gn:                                            ; preds = %.lr.ph1072, %add_yblock.exit.i647
  %indvars.iv1255 = phi i64 [ 0, %.lr.ph1072 ], [ %indvars.iv.next1256, %add_yblock.exit.i647 ] ; 6 uses
  %i.cij = mul i64 %indvars.iv1255, %i.cfk        ; 2 uses
  %i.cik = trunc i64 %i.cij to i32
  %i.cil = sub i32 %i.cik, %i.cef                 ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.cil, i32 0) ; 4 uses
  %i.cim = add i32 %i.cey, %smax
  %i.cin = sext i32 %i.cim to i64                 ; 2 uses
  %scevgep = getelementptr i8, ptr %i.cdx, i64 %i.cin ; 4 uses
  %smin1491 = tail call i32 @llvm.smin.i32(i32 %i.cil, i32 0)
  %i.cio = add i32 %i.cdo, %smin1491
  %i.cip = add i32 %i.cio, %smax
  %smin1492 = tail call i32 @llvm.smin.i32(i32 %i.cdy, i32 %i.cip)
  %i.ciq = sub i32 %smin1492, %smax
  %i.cir = tail call i32 @llvm.umax.i32(i32 %i.ciq, i32 1)
  %umax = zext i32 %i.cir to i64                  ; 7 uses
  %i.cis = getelementptr i8, ptr %scevgep1490, i64 %umax
  %scevgep1493 = getelementptr i8, ptr %i.cis, i64 %i.cin ; 5 uses
  %i.cit = sub i64 %i.cij, %i.cfl
  %smin1495 = tail call i64 @llvm.smin.i64(i64 %i.cit, i64 0) ; 2 uses
  %i.ciu = sub nsw i64 0, %smin1495               ; 3 uses
  %scevgep1496 = getelementptr i8, ptr %scevgep1494, i64 %i.ciu
  %i.civ = sub i64 %umax, %smin1495               ; 4 uses
  %scevgep1498 = getelementptr i8, ptr %scevgep1497, i64 %i.civ
  %scevgep1500 = getelementptr i8, ptr %scevgep1499, i64 %i.ciu
  %scevgep1502 = getelementptr i8, ptr %scevgep1501, i64 %i.civ
  %scevgep1504 = getelementptr i8, ptr %scevgep1503, i64 %i.ciu
  %scevgep1506 = getelementptr i8, ptr %scevgep1505, i64 %i.civ
  %scevgep1508 = getelementptr i8, ptr %scevgep1507, i64 %i.civ
  %i.ciw = add i32 %i.cex, %smax
  %i.cix = sext i32 %i.ciw to i64                 ; 2 uses
  %i.ciy = shl nsw i64 %i.cix, 1
  %scevgep1517 = getelementptr i8, ptr %.pre1297, i64 %i.ciy
  %i.ciz = add nsw i64 %umax, %i.cix
  %i.cja = shl nsw i64 %i.ciz, 1
  %scevgep1519 = getelementptr i8, ptr %scevgep1518, i64 %i.cja
  %i.cjb = mul nuw nsw i64 %indvars.iv1255, %i.cfk
  %i.cjc = sub nsw i64 %i.cjb, %i.cfl             ; 2 uses
  %i.cjd = load i32, ptr %i.o, align 16, !tbaa !115
  %i.cje = load i32, ptr %i.lg, align 8, !tbaa !80 ; 2 uses
  %i.cjf = shl i32 %i.cjd, %i.cje                 ; 2 uses
  %i.cjg = load i32, ptr %i.q, align 4, !tbaa !114
  %i.cjh = shl i32 %i.cjg, %i.cje
  %i.cji = load ptr, ptr %i.li, align 8, !tbaa !215
  %i.cjj = mul nsw i32 %i.cjf, %i.cej
  %i.cjk = sext i32 %i.cjj to i64
  %i.cjl = getelementptr [10 x i8], ptr %i.cji, i64 %indvars.iv1255
  %i.cjm = getelementptr i8, ptr %i.cjl, i64 -10
  %i.cjn = getelementptr [10 x i8], ptr %i.cjm, i64 %i.cjk ; 4 uses
  %i.cjo = getelementptr inbounds nuw i8, ptr %i.cjn, i64 10 ; 3 uses
  %i.cjp = sext i32 %i.cjf to i64                 ; 2 uses
  %i.cjq = getelementptr inbounds [10 x i8], ptr %i.cjn, i64 %i.cjp ; 3 uses
  %i.cjr = getelementptr inbounds nuw i8, ptr %i.cjq, i64 10 ; 3 uses
  %i.cjs = load ptr, ptr %i.lj, align 8, !tbaa !216 ; 6 uses
  %i.cjt = icmp eq i64 %indvars.iv1255, 0
  br i1 %i.cjt, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %.not.i.i600 = icmp slt i64 %indvars.iv1255, %i.cjp ; 2 uses
  %spec.select.i.i601 = select i1 %.not.i.i600, ptr %i.cjo, ptr %i.cjn
  %spec.select260.i.i602 = select i1 %.not.i.i600, ptr %i.cjr, ptr %i.cjq
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %bb.gn
  %.0228.i.i603 = phi ptr [ %i.cjn, %bb.go ], [ %i.cjo, %bb.gn ] ; 2 uses
  %.0226.i.i604 = phi ptr [ %spec.select.i.i601, %bb.go ], [ %i.cjo, %bb.gn ] ; 2 uses
  %.0224.i.i605 = phi ptr [ %i.cjq, %bb.go ], [ %i.cjr, %bb.gn ] ; 3 uses
  %.0222.i.i606 = phi ptr [ %spec.select260.i.i602, %bb.go ], [ %i.cjr, %bb.gn ] ; 3 uses
  br i1 %i.cen, label %bb.gr, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %.not249.i.i607 = icmp slt i32 %.0.i5841074, %i.cjh ; 2 uses
  %spec.select261.i.i608 = select i1 %.not249.i.i607, ptr %.0224.i.i605, ptr %.0228.i.i603
  %spec.select262.i.i609 = select i1 %.not249.i.i607, ptr %.0222.i.i606, ptr %.0226.i.i604
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %bb.gp
  %.1229.i.i610 = phi ptr [ %.0228.i.i603, %bb.gq ], [ %.0224.i.i605, %bb.gp ] ; 20 uses
  %.1227.i.i611 = phi ptr [ %.0226.i.i604, %bb.gq ], [ %.0222.i.i606, %bb.gp ] ; 22 uses
  %.1225.i.i612 = phi ptr [ %spec.select261.i.i608, %bb.gq ], [ %.0224.i.i605, %bb.gp ] ; 21 uses
  %.1223.i.i613 = phi ptr [ %spec.select262.i.i609, %bb.gq ], [ %.0222.i.i606, %bb.gp ] ; 20 uses
  %i.cju = trunc nsw i64 %i.cjc to i32            ; 2 uses
  %i.cjv = tail call i32 @llvm.smin.i32(i32 %i.cju, i32 0)
  %.0237.i.i614 = add nsw i32 %i.cjv, %i.cdo      ; 2 uses
  %.0235.i.i615 = tail call i32 @llvm.smax.i32(i32 %i.cju, i32 0) ; 8 uses
  %i.cjw = tail call i64 @llvm.smin.i64(i64 %i.cjc, i64 0)
  %.0233.i.i616.idx = sub i64 0, %i.cjw
  %i.cjx = add nsw i32 %.0237.i.i614, %.0235.i.i615
  %i.cjy = icmp sgt i32 %i.cjx, %i.cdy
  %i.cjz = sub nsw i32 %i.cdy, %.0235.i.i615
  %spec.select264.i.i617 = select i1 %i.cjy, i32 %i.cjz, i32 %.0237.i.i614 ; 7 uses
  %gep1440 = getelementptr i8, ptr %invariant.gep1439, i64 %.0233.i.i616.idx ; 2 uses
  %i.cka = icmp slt i32 %spec.select264.i.i617, 1
  %or.cond5.i.i622 = select i1 %i.cka, i1 true, i1 %i.cew
  br i1 %or.cond5.i.i622, label %add_yblock.exit.i647, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.ckb = add nsw i32 %.0235.i.i615, %i.cex
  %i.ckc = sext i32 %i.ckb to i64
  %i.ckd = getelementptr inbounds [2 x i8], ptr %.pre1297, i64 %i.ckc
  %i.cke = add nsw i32 %.0235.i.i615, %i.cey
  %i.ckf = sext i32 %i.cke to i64
  %i.ckg = getelementptr inbounds i8, ptr %i.cdx, i64 %i.ckf ; 2 uses
  %i.ckh = getelementptr inbounds i8, ptr %i.cjs, i64 %i.cfa ; 11 uses
  %i.cki = getelementptr inbounds i8, ptr %i.ckh, i64 %i.cfb ; 5 uses
  tail call void @ff_snow_pred_block(ptr noundef nonnull %i.d, ptr noundef %i.ckh, ptr noundef %i.cjs, i64 noundef %i.cfc, i32 noundef %.0235.i.i615, i32 noundef %.0236.i.i619, i32 noundef %spec.select264.i.i617, i32 noundef %spec.select265.i.i621, ptr noundef %.1229.i.i610, i32 noundef %i.ccz, i32 noundef %i.cdy, i32 noundef %i.cdz) #12
  %i.ckj = getelementptr inbounds nuw i8, ptr %.1229.i.i610, i64 8 ; 3 uses
  %i.ckk = load i8, ptr %i.ckj, align 2, !tbaa !217 ; 4 uses
  %i.ckl = and i8 %i.ckk, 1
  %.not.i294.i.i623 = icmp eq i8 %i.ckl, 0
  %.phi.trans.insert1299 = getelementptr inbounds nuw i8, ptr %.1227.i.i611, i64 8
  %.pre1300 = load i8, ptr %.phi.trans.insert1299, align 2, !tbaa !217 ; 2 uses
  %i.ckm = and i8 %.pre1300, 1
  %.not16.i295.i.i624 = icmp eq i8 %i.ckm, 0
  %or.cond1451 = select i1 %.not.i294.i.i623, i1 true, i1 %.not16.i295.i.i624
  br i1 %or.cond1451, label %same_block.exit300.i.i626, label %.split1387

.split1387:                                       ; preds = %bb.gs
  %i.ckn = getelementptr inbounds nuw i8, ptr %.1229.i.i610, i64 5
  %i.cko = load i8, ptr %i.ckn, align 1, !tbaa !83
  %i.ckp = getelementptr inbounds nuw i8, ptr %.1227.i.i611, i64 5
  %i.ckq = load i8, ptr %i.ckp, align 1, !tbaa !83
  %i.ckr = getelementptr inbounds nuw i8, ptr %.1229.i.i610, i64 6
  %i.cks = load i8, ptr %i.ckr, align 2, !tbaa !83
  %i.ckt = getelementptr inbounds nuw i8, ptr %.1227.i.i611, i64 6
  %i.cku = load i8, ptr %i.ckt, align 2, !tbaa !83
  %i.ckv = getelementptr inbounds nuw i8, ptr %.1229.i.i610, i64 7
  %i.ckw = load i8, ptr %i.ckv, align 1, !tbaa !83
  %i.ckx = getelementptr inbounds nuw i8, ptr %.1227.i.i611, i64 7
  %i.cky = load i8, ptr %i.ckx, align 1, !tbaa !83
  %i.ckz = icmp eq i8 %i.cko, %i.ckq
  %i.cla = icmp eq i8 %i.cks, %i.cku
  %i.clb = and i1 %i.ckz, %i.cla
  %i.clc = icmp eq i8 %i.ckw, %i.cky
  %.not18.i296.i.i625 = and i1 %i.clb, %i.clc
  br i1 %.not18.i296.i.i625, label %bb.gu, label %bb.gt

same_block.exit300.i.i626:                        ; preds = %bb.gs
  %i.cld = load i16, ptr %.1229.i.i610, align 2, !tbaa !219
  %i.cle = sext i16 %i.cld to i32
  %i.clf = load i16, ptr %.1227.i.i611, align 2, !tbaa !219
  %i.clg = sext i16 %i.clf to i32
  %i.clh = sub nsw i32 %i.cle, %i.clg
  %i.cli = getelementptr inbounds nuw i8, ptr %.1229.i.i610, i64 2
  %i.clj = load i16, ptr %i.cli, align 2, !tbaa !220
  %i.clk = sext i16 %i.clj to i32
  %i.cll = getelementptr inbounds nuw i8, ptr %.1227.i.i611, i64 2
  %i.clm = load i16, ptr %i.cll, align 2, !tbaa !220
  %i.cln = sext i16 %i.clm to i32
  %i.clo = sub nsw i32 %i.clk, %i.cln
  %i.clp = or i32 %i.clo, %i.clh
  %i.clq = getelementptr inbounds nuw i8, ptr %.1229.i.i610, i64 4
  %i.clr = load i8, ptr %i.clq, align 2, !tbaa !221
  %i.cls = zext i8 %i.clr to i32
  %i.clt = getelementptr inbounds nuw i8, ptr %.1227.i.i611, i64 4
  %i.clu = load i8, ptr %i.clt, align 2, !tbaa !221
  %i.clv = zext i8 %i.clu to i32
  %i.clw = sub nsw i32 %i.cls, %i.clv
  %i.clx = or i32 %i.clp, %i.clw
  %i.cly = xor i8 %.pre1300, %i.ckk
  %i.clz = and i8 %i.cly, 1
  %i.cma = zext nneg i8 %i.clz to i32
  %i.cmb = or i32 %i.clx, %i.cma
  %.not17.i299.i.i675 = icmp eq i32 %i.cmb, 0
  br i1 %.not17.i299.i.i675, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %.split1387, %same_block.exit300.i.i626
  %i.cmc = getelementptr inbounds i8, ptr %i.cki, i64 %i.cfb
  tail call void @ff_snow_pred_block(ptr noundef nonnull %i.d, ptr noundef %i.cki, ptr noundef %i.cjs, i64 noundef %i.cfc, i32 noundef %.0235.i.i615, i32 noundef %.0236.i.i619, i32 noundef %spec.select264.i.i617, i32 noundef %spec.select265.i.i621, ptr noundef nonnull %.1227.i.i611, i32 noundef %i.ccz, i32 noundef %i.cdy, i32 noundef %i.cdz) #12
  %.pre1301 = load i8, ptr %i.ckj, align 2, !tbaa !217
  br label %bb.gu

bb.gu:                                            ; preds = %.split1387, %same_block.exit300.i.i626, %bb.gt
  %i.cmd = phi i8 [ %.pre1301, %bb.gt ], [ %i.ckk, %same_block.exit300.i.i626 ], [ %i.ckk, %.split1387 ] ; 6 uses
  %.sroa.7845.0 = phi ptr [ %i.cki, %bb.gt ], [ %i.ckh, %same_block.exit300.i.i626 ], [ %i.ckh, %.split1387 ] ; 8 uses
  %.0221.i.i630 = phi ptr [ %i.cmc, %bb.gt ], [ %i.cki, %same_block.exit300.i.i626 ], [ %i.cki, %.split1387 ] ; 7 uses
  %i.cme = and i8 %i.cmd, 1
  %.not.i287.i.i631 = icmp eq i8 %i.cme, 0
  %.phi.trans.insert1303 = getelementptr inbounds nuw i8, ptr %.1225.i.i612, i64 8
  %.pre1304 = load i8, ptr %.phi.trans.insert1303, align 2, !tbaa !217 ; 4 uses
  %i.cmf = and i8 %.pre1304, 1
  %.not16.i288.i.i632 = icmp eq i8 %i.cmf, 0
  %or.cond1452 = select i1 %.not.i287.i.i631, i1 true, i1 %.not16.i288.i.i632
  br i1 %or.cond1452, label %same_block.exit293.i.i634, label %.split1388

.split1388:                                       ; preds = %bb.gu
  %i.cmg = getelementptr inbounds nuw i8, ptr %.1229.i.i610, i64 5
  %i.cmh = load i8, ptr %i.cmg, align 1, !tbaa !83
  %i.cmi = getelementptr inbounds nuw i8, ptr %.1225.i.i612, i64 5
  %i.cmj = load i8, ptr %i.cmi, align 1, !tbaa !83
  %i.cmk = getelementptr inbounds nuw i8, ptr %.1229.i.i610, i64 6
  %i.cml = load i8, ptr %i.cmk, align 2, !tbaa !83
  %i.cmm = getelementptr inbounds nuw i8, ptr %.1225.i.i612, i64 6
  %i.cmn = load i8, ptr %i.cmm, align 2, !tbaa !83
  %i.cmo = getelementptr inbounds nuw i8, ptr %.1229.i.i610, i64 7
  %i.cmp = load i8, ptr %i.cmo, align 1, !tbaa !83
  %i.cmq = getelementptr inbounds nuw i8, ptr %.1225.i.i612, i64 7
  %i.cmr = load i8, ptr %i.cmq, align 1, !tbaa !83
  %i.cms = icmp eq i8 %i.cmh, %i.cmj
  %i.cmt = icmp eq i8 %i.cml, %i.cmn
  %i.cmu = and i1 %i.cms, %i.cmt
  %i.cmv = icmp eq i8 %i.cmp, %i.cmr
  %.not18.i289.i.i633 = and i1 %i.cmu, %i.cmv
  br i1 %.not18.i289.i.i633, label %bb.gx, label %bb.gv

same_block.exit293.i.i634:                        ; preds = %bb.gu
  %i.cmw = load i16, ptr %.1229.i.i610, align 2, !tbaa !219
  %i.cmx = sext i16 %i.cmw to i32
  %i.cmy = load i16, ptr %.1225.i.i612, align 2, !tbaa !219
  %i.cmz = sext i16 %i.cmy to i32
  %i.cna = sub nsw i32 %i.cmx, %i.cmz
  %i.cnb = getelementptr inbounds nuw i8, ptr %.1229.i.i610, i64 2
  %i.cnc = load i16, ptr %i.cnb, align 2, !tbaa !220
  %i.cnd = sext i16 %i.cnc to i32
  %i.cne = getelementptr inbounds nuw i8, ptr %.1225.i.i612, i64 2
  %i.cnf = load i16, ptr %i.cne, align 2, !tbaa !220
  %i.cng = sext i16 %i.cnf to i32
  %i.cnh = sub nsw i32 %i.cnd, %i.cng
  %i.cni = or i32 %i.cnh, %i.cna
  %i.cnj = getelementptr inbounds nuw i8, ptr %.1229.i.i610, i64 4
  %i.cnk = load i8, ptr %i.cnj, align 2, !tbaa !221
  %i.cnl = zext i8 %i.cnk to i32
  %i.cnm = getelementptr inbounds nuw i8, ptr %.1225.i.i612, i64 4
  %i.cnn = load i8, ptr %i.cnm, align 2, !tbaa !221
  %i.cno = zext i8 %i.cnn to i32
end_hunk_1
begin_hunk_2_@encode_frame:bb.a
  %i.cyo = load i8, ptr %i.cyn, align 1, !tbaa !83
  %i.cyp = zext i8 %i.cyo to i32
  %i.cyq = getelementptr inbounds i8, ptr %.sroa.7845.0, i64 %i.cya
  %i.cyr = load i8, ptr %i.cyq, align 1, !tbaa !83
  %i.cys = zext i8 %i.cyr to i32
  %i.cyt = mul nuw nsw i32 %i.cys, %i.cyp
  %i.cyu = add nuw nsw i32 %i.cym, %i.cyt
  %i.cyv = getelementptr inbounds nuw i8, ptr %i.cwj, i64 %indvars.iv1249
  %i.cyw = load i8, ptr %i.cyv, align 1, !tbaa !83
  %i.cyx = zext i8 %i.cyw to i32
  %i.cyy = getelementptr inbounds i8, ptr %i.ckh, i64 %i.cya
  %i.cyz = load i8, ptr %i.cyy, align 1, !tbaa !83
  %i.cza = zext i8 %i.cyz to i32
  %i.czb = mul nuw nsw i32 %i.cza, %i.cyx
  %i.czc = add nuw nsw i32 %i.cyu, %i.czb
  %i.czd = lshr i32 %i.czc, 2
  %gep1438 = getelementptr [2 x i8], ptr %invariant.gep1437, i64 %indvars.iv1249
  %i.cze = load i16, ptr %gep1438, align 2, !tbaa !182
  %i.czf = sext i16 %i.cze to i32
  %i.czg = add nsw i32 %i.czd, %i.czf             ; 2 uses
  %i.czh = add nsw i32 %i.czg, 8
  %i.czi = ashr i32 %i.czh, 4                     ; 2 uses
  %i.czj = icmp ugt i32 %i.czi, 255
  %isnotneg.i.i = icmp sgt i32 %i.czg, -9
  %i.czk = sext i1 %isnotneg.i.i to i32
  %.0.i.i = select i1 %i.czj, i32 %i.czk, i32 %i.czi
  %i.czl = trunc i32 %.0.i.i to i8
  %i.czm = getelementptr inbounds i8, ptr %i.ckg, i64 %i.cya
  store i8 %i.czl, ptr %i.czm, align 1, !tbaa !83
  %indvars.iv.next1250 = add nuw nsw i64 %indvars.iv1249, 1 ; 2 uses
  %i.czn = icmp samesign ult i64 %indvars.iv.next1250, %i.cut
  br i1 %i.czn, label %scalar.ph, label %._crit_edge1066, !llvm.loop !368

._crit_edge1066:                                  ; preds = %scalar.ph, %middle.block
  %indvars.iv.next1253 = add nuw nsw i64 %indvars.iv1252, 1 ; 2 uses
  %i.czo = icmp slt i64 %indvars.iv.next1253, %i.cfi
  br i1 %i.czo, label %.lr.ph1065, label %add_yblock.exit.i647, !llvm.loop !244

add_yblock.exit.i647:                             ; preds = %._crit_edge1066, %bb.gr
  %indvars.iv.next1256 = add nuw nsw i64 %indvars.iv1255, 1 ; 2 uses
  %exitcond1259.not = icmp eq i64 %indvars.iv.next1256, %wide.trip.count1258
  br i1 %exitcond1259.not, label %predict_slice.exit676, label %bb.gn, !llvm.loop !245

predict_slice.exit676:                            ; preds = %._crit_edge1061, %add_yblock.exit.i647, %bb.gm, %.preheader908, %bb.gl
  %i.czp = add nuw i32 %.0.i5841074, 1
  %exitcond1260.not = icmp eq i32 %.0.i5841074, %i.ccy
  br i1 %exitcond1260.not, label %predict_plane.exit586, label %bb.gg, !llvm.loop !246

bb.hb:                                            ; preds = %.lr.ph1089
  %i.czq = load i32, ptr %i.cf, align 8, !tbaa !126
  %i.czr = icmp eq i32 %i.czq, 1
  br i1 %i.czr, label %.preheader929, label %bb.hd

.preheader929:                                    ; preds = %bb.hb
  %i.czs = icmp sgt i32 %i.qz, 0
  br i1 %i.czs, label %.preheader916.lr.ph, label %predict_plane.exit586

.preheader916.lr.ph:                              ; preds = %.preheader929
  %i.czt = icmp sgt i32 %i.qx, 0
  %i.czu = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv1267
  %i.czv = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %indvars.iv1267
  br i1 %i.czt, label %.preheader916, label %predict_plane.exit586

.preheader916:                                    ; preds = %.preheader916.lr.ph, %._crit_edge1001
  %.45181002 = phi i32 [ %i.dao, %._crit_edge1001 ], [ 0, %.preheader916.lr.ph ] ; 3 uses
  br label %bb.hc

bb.hc:                                            ; preds = %.preheader916, %bb.hc
  %.4524999 = phi i32 [ 0, %.preheader916 ], [ %i.dan, %bb.hc ] ; 3 uses
  %i.czw = load ptr, ptr %i.czu, align 8, !tbaa !107
  %i.czx = load i32, ptr %i.czv, align 4, !tbaa !84
  %i.czy = mul nsw i32 %i.czx, %.45181002
  %i.czz = add nsw i32 %i.czy, %.4524999
  %i.daa = sext i32 %i.czz to i64
  %i.dab = getelementptr inbounds i8, ptr %i.czw, i64 %i.daa
  %i.dac = load i8, ptr %i.dab, align 1, !tbaa !83
  %i.dad = load ptr, ptr %i.eo, align 16, !tbaa !142 ; 2 uses
  %i.dae = getelementptr inbounds nuw [8 x i8], ptr %i.dad, i64 %indvars.iv1267
  %i.daf = load ptr, ptr %i.dae, align 8, !tbaa !107
  %i.dag = getelementptr inbounds nuw i8, ptr %i.dad, i64 64
  %i.dah = getelementptr inbounds nuw [4 x i8], ptr %i.dag, i64 %indvars.iv1267
  %i.dai = load i32, ptr %i.dah, align 4, !tbaa !84
  %i.daj = mul nsw i32 %i.dai, %.45181002
  %i.dak = add nsw i32 %i.daj, %.4524999
  %i.dal = sext i32 %i.dak to i64
  %i.dam = getelementptr inbounds i8, ptr %i.daf, i64 %i.dal
  store i8 %i.dac, ptr %i.dam, align 1, !tbaa !83
  %i.dan = add nuw nsw i32 %.4524999, 1           ; 2 uses
  %exitcond1163.not = icmp eq i32 %i.dan, %i.qx
  br i1 %exitcond1163.not, label %._crit_edge1001, label %bb.hc, !llvm.loop !369

._crit_edge1001:                                  ; preds = %bb.hc
  %i.dao = add nuw nsw i32 %.45181002, 1          ; 2 uses
  %exitcond1164.not = icmp eq i32 %i.dao, %i.qz
  br i1 %exitcond1164.not, label %predict_plane.exit586, label %.preheader916, !llvm.loop !370

bb.hd:                                            ; preds = %bb.hb
  %i.dap = load ptr, ptr %i.ky, align 16, !tbaa !180
  %i.daq = sext i32 %i.qx to i64
  %i.dar = shl nsw i64 %i.daq, 1
  %i.das = sext i32 %i.qz to i64
  %i.dat = mul i64 %i.dar, %i.das
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.dap, i8 0, i64 %i.dat, i1 false)
  %i.dau = load ptr, ptr %i.ky, align 16, !tbaa !180 ; 6 uses
  %i.dav = load i32, ptr %i.q, align 4, !tbaa !114
  %i.daw = load i32, ptr %i.lg, align 8, !tbaa !80
  %i.dax = shl i32 %i.dav, %i.daw                 ; 2 uses
  %.not.i994 = icmp slt i32 %i.dax, 0
  br i1 %.not.i994, label %predict_plane.exit586, label %.lr.ph998

.lr.ph998:                                        ; preds = %bb.hd
  %.not.i677 = icmp eq i64 %indvars.iv1267, 0
  %i.day = trunc nuw nsw i64 %indvars.iv1267 to i32 ; 4 uses
  br label %bb.he

bb.he:                                            ; preds = %.lr.ph998, %predict_slice.exit768
  %.0.i995 = phi i32 [ 0, %.lr.ph998 ], [ %i.dxo, %predict_slice.exit768 ] ; 9 uses
  %i.daz = load i32, ptr %i.o, align 16, !tbaa !115
  %i.dba = load i32, ptr %i.lg, align 8, !tbaa !80 ; 5 uses
  %i.dbb = shl i32 %i.daz, %i.dba                 ; 2 uses
  %i.dbc = load i32, ptr %i.q, align 4, !tbaa !114
  %i.dbd = shl i32 %i.dbc, %i.dba
  %i.dbe = lshr i32 16, %i.dba                    ; 6 uses
  br i1 %.not.i677, label %bb.hg, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.dbf = load i32, ptr %i.kt, align 4, !tbaa !108 ; 3 uses
  %i.dbg = lshr i32 %i.dbe, %i.dbf
  %i.dbh = load i32, ptr %i.ks, align 16, !tbaa !109
  %i.dbi = lshr i32 %i.dbe, %i.dbh
  %i.dbj = add nsw i32 %i.dbf, %i.dba
  %i.dbk = shl nuw nsw i32 %i.dbe, 1
  %i.dbl = lshr i32 %i.dbk, %i.dbf
  br label %bb.hh

bb.hg:                                            ; preds = %bb.he
  %i.dbm = shl nuw nsw i32 %i.dbe, 1
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %bb.hf
  %.pn.i679.pn.in = phi i32 [ %i.dbj, %bb.hf ], [ %i.dba, %bb.hg ]
  %i.dbn = phi i32 [ %i.dbg, %bb.hf ], [ %i.dbe, %bb.hg ] ; 4 uses
  %i.dbo = phi i32 [ %i.dbi, %bb.hf ], [ %i.dbe, %bb.hg ] ; 5 uses
  %i.dbp = phi i32 [ %i.dbl, %bb.hf ], [ %i.dbm, %bb.hg ] ; 4 uses
  %.pn.i679.pn = sext i32 %.pn.i679.pn.in to i64
  %.in = getelementptr inbounds [8 x i8], ptr @ff_obmc_tab, i64 %.pn.i679.pn
  %i.dbq = load ptr, ptr %.in, align 8, !tbaa !107 ; 8 uses
  %i.dbr = load ptr, ptr %i.eo, align 16, !tbaa !142 ; 2 uses
  %i.dbs = getelementptr inbounds nuw i8, ptr %i.dbr, i64 64
  %i.dbt = getelementptr inbounds nuw [4 x i8], ptr %i.dbs, i64 %indvars.iv1267
  %i.dbu = load i32, ptr %i.dbt, align 4, !tbaa !84 ; 8 uses
  %i.dbv = getelementptr inbounds nuw [8 x i8], ptr %i.dbr, i64 %indvars.iv1267
  %i.dbw = load ptr, ptr %i.dbv, align 8, !tbaa !107 ; 6 uses
  %i.dbx = load i32, ptr %i.qw, align 8, !tbaa !174 ; 14 uses
  %i.dby = load i32, ptr %i.qy, align 4, !tbaa !175 ; 8 uses
  %i.dbz = load i32, ptr %i.lh, align 16, !tbaa !138
  %.not110.i681 = icmp eq i32 %i.dbz, 0
  br i1 %.not110.i681, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %bb.hh
  %i.dca = load ptr, ptr %i.i, align 8, !tbaa !106
  %i.dcb = getelementptr inbounds nuw i8, ptr %i.dca, i64 524
  %i.dcc = load i32, ptr %i.dcb, align 4, !tbaa !210
  %i.dcd = and i32 %i.dcc, 512
  %.not111.i687 = icmp eq i32 %i.dcd, 0
  br i1 %.not111.i687, label %.preheader917, label %bb.hj

.preheader917:                                    ; preds = %bb.hi
  %.not112.i689991 = icmp slt i32 %i.dbb, 0
  br i1 %.not112.i689991, label %predict_slice.exit768, label %.lr.ph993

.lr.ph993:                                        ; preds = %.preheader917
  %i.dce = lshr i32 %i.dbn, 1                     ; 2 uses
  %i.dcf = mul i32 %i.dbo, %.0.i995
  %i.dcg = lshr i32 %i.dbo, 1
  %i.dch = sub i32 %i.dcf, %i.dcg                 ; 4 uses
  %i.dci = add nsw i32 %.0.i995, -1
  %i.dcj = icmp sgt i32 %i.dbu, 111
  %i.dck = shl nsw i32 %i.dbu, 4
  %i.dcl = select i1 %i.dcj, i32 16, i32 %i.dck   ; 2 uses
  %i.dcm = icmp eq i32 %.0.i995, 0
  %i.dcn = icmp slt i32 %i.dch, 0
  %i.dco = mul nsw i32 %i.dch, %i.dbp
  %i.dcp = sext i32 %i.dco to i64
  %i.dcq = sub nsw i64 0, %i.dcp
  %i.dcr = tail call i32 @llvm.smin.i32(i32 %i.dch, i32 0)
  %.0239.i.i708 = add i32 %i.dbo, %i.dcr          ; 2 uses
  %.0236.i.i709 = tail call i32 @llvm.smax.i32(i32 %i.dch, i32 0) ; 9 uses
  %i.dcs = add i32 %.0236.i.i709, %.0239.i.i708   ; 2 uses
  %i.dct = icmp sgt i32 %i.dcs, %i.dby
  %i.dcu = sub nsw i32 %i.dby, %.0236.i.i709
  %spec.select265.i.i711 = select i1 %i.dct, i32 %i.dcu, i32 %.0239.i.i708 ; 6 uses
  %i.dcv = icmp slt i32 %spec.select265.i.i711, 1
  %i.dcw = mul i32 %i.dbx, %.0236.i.i709          ; 2 uses
  %i.dcx = mul i32 %.0236.i.i709, %i.dbu          ; 2 uses
  %i.dcy = mul i32 %i.dcl, 3
  %i.dcz = sext i32 %i.dcy to i64                 ; 2 uses
  %i.dda = sext i32 %i.dcl to i64                 ; 3 uses
  %i.ddb = sext i32 %i.dbu to i64                 ; 6 uses
  %i.ddc = lshr i32 %i.dbp, 1                     ; 2 uses
  %i.ddd = zext nneg i32 %i.ddc to i64            ; 4 uses
  %i.dde = mul i32 %i.ddc, %i.dbp
  %i.ddf = zext i32 %i.dde to i64                 ; 5 uses
  %i.ddg = sext i32 %i.dbx to i64                 ; 2 uses
  %i.ddh = sext i32 %spec.select265.i.i711 to i64
  %i.ddi = zext i32 %i.dbp to i64                 ; 2 uses
  %i.ddj = zext i32 %i.dbn to i64                 ; 2 uses
  %i.ddk = zext nneg i32 %i.dce to i64            ; 2 uses
  %i.ddl = add nuw i32 %i.dbb, 1
  %wide.trip.count1160 = zext i32 %i.ddl to i64
  %.1234.i.i710.idx = select i1 %i.dcn, i64 %i.dcq, i64 0 ; 6 uses
  %invariant.gep1421 = getelementptr i8, ptr %i.dbq, i64 %.1234.i.i710.idx
  %smin2021 = tail call i32 @llvm.smin.i32(i32 %i.dby, i32 %i.dcs)
  %i.ddm = sub i32 %smin2021, %.0236.i.i709
  %i.ddn = tail call i32 @llvm.smax.i32(i32 %i.ddm, i32 1)
  %smax2022 = zext nneg i32 %i.ddn to i64
  %i.ddo = add nsw i64 %smax2022, -1              ; 3 uses
  %i.ddp = mul nsw i64 %i.ddo, %i.ddb             ; 5 uses
  %scevgep2023 = getelementptr i8, ptr %i.dbw, i64 %i.ddp
  %i.ddq = add nsw i64 %.1234.i.i710.idx, %i.ddd  ; 2 uses
  %8 = getelementptr i8, ptr %i.dbq, i64 %i.ddq
  %scevgep2028 = getelementptr i8, ptr %8, i64 %i.ddf
  %i.ddr = mul nsw i64 %i.ddo, %i.ddi             ; 4 uses
  %i.dds = getelementptr i8, ptr %i.dbq, i64 %i.ddq
  %i.ddt = getelementptr i8, ptr %i.dds, i64 %i.ddr
  %scevgep2031 = getelementptr i8, ptr %i.ddt, i64 %i.ddf
  %i.ddu = getelementptr i8, ptr %i.dbq, i64 %.1234.i.i710.idx
  %scevgep2033 = getelementptr i8, ptr %i.ddu, i64 %i.ddf
  %9 = getelementptr i8, ptr %i.dbq, i64 %.1234.i.i710.idx
  %i.ddv = getelementptr i8, ptr %9, i64 %i.ddr
  %scevgep2035 = getelementptr i8, ptr %i.ddv, i64 %i.ddf
  %i.ddw = add nsw i64 %.1234.i.i710.idx, %i.ddd  ; 2 uses
  %scevgep2037 = getelementptr i8, ptr %i.dbq, i64 %i.ddw
  %i.ddx = getelementptr i8, ptr %i.dbq, i64 %i.ddw
  %scevgep2039 = getelementptr i8, ptr %i.ddx, i64 %i.ddr
  %i.ddy = getelementptr i8, ptr %i.dbq, i64 %.1234.i.i710.idx
  %scevgep2041 = getelementptr i8, ptr %i.ddy, i64 %i.ddr
  %i.ddz = shl nsw i64 %i.ddo, 1
  %i.dea = mul i64 %i.ddz, %i.ddg
  %scevgep2052 = getelementptr i8, ptr %i.dau, i64 %i.dea
  %stride.check2061 = icmp slt i32 %i.dbu, 0
  %i.deb = insertelement <8 x i1> poison, i1 %stride.check2061, i64 7
  %i.dec = or i32 %i.dbx, %i.dbu
  %i.ded = icmp slt i32 %i.dec, 0
  br label %bb.hl

bb.hj:                                            ; preds = %bb.hi, %bb.hh
  %i.dee = icmp eq i32 %.0.i995, %i.dbd
  br i1 %i.dee, label %predict_slice.exit768, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.def = mul i32 %i.dbo, %.0.i995               ; 2 uses
  %i.deg = add nuw nsw i32 %.0.i995, 1
  %i.deh = mul nsw i32 %i.dbo, %i.deg
  %..i683 = tail call i32 @llvm.smin.i32(i32 %i.dby, i32 %i.deh) ; 2 uses
  %i.dei = icmp slt i32 %i.def, %..i683
  %i.dej = icmp sgt i32 %i.dbx, 0
  %or.cond1118 = select i1 %i.dei, i1 %i.dej, i1 false
  br i1 %or.cond1118, label %.preheader906.preheader, label %predict_slice.exit768

.preheader906.preheader:                          ; preds = %bb.hk
  %i.dek = sext i32 %i.def to i64                 ; 3 uses
  %i.del = sext i32 %i.dbu to i64                 ; 3 uses
  %i.dem = zext nneg i32 %i.dbx to i64
  %i.den = sext i32 %..i683 to i64                ; 3 uses
  %wide.trip.count = zext nneg i32 %i.dbx to i64  ; 8 uses
  %i.deo = mul nsw i64 %i.del, %i.dek
  %scevgep2123 = getelementptr i8, ptr %i.dbw, i64 %i.deo
  %i.dep = add nsw i64 %i.den, -1
  %i.deq = mul i64 %i.dep, %i.del
  %i.der = getelementptr i8, ptr %i.dbw, i64 %i.deq
  %scevgep2124 = getelementptr i8, ptr %i.der, i64 %wide.trip.count
  %i.des = shl nsw i64 %i.dek, 1
  %i.det = mul nsw i64 %i.des, %wide.trip.count
  %scevgep2125 = getelementptr i8, ptr %i.dau, i64 %i.det
  %i.deu = shl nsw i64 %i.den, 1
  %i.dev = mul nsw i64 %i.deu, %wide.trip.count
  %scevgep2126 = getelementptr i8, ptr %i.dau, i64 %i.dev
  %min.iters.check2132 = icmp ult i32 %i.dbx, 8
  %bound02127 = icmp ult ptr %scevgep2123, %scevgep2126
  %bound12128 = icmp ult ptr %scevgep2125, %scevgep2124
  %found.conflict2129 = and i1 %bound02127, %bound12128
  %stride.check2130 = icmp slt i32 %i.dbu, 0
  %i.dew = or i1 %found.conflict2129, %stride.check2130
  %n.vec2134 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n2140 = icmp eq i64 %n.vec2134, %wide.trip.count
  %xtraiter2177 = and i64 %wide.trip.count, 1
  %lcmp.mod2178.not = icmp eq i64 %xtraiter2177, 0
  %i.dex = add nsw i64 %wide.trip.count, -1
  br label %.preheader906

.preheader906:                                    ; preds = %.preheader906.preheader, %._crit_edge982
  %indvars.iv1148 = phi i64 [ %i.dek, %.preheader906.preheader ], [ %indvars.iv.next1149, %._crit_edge982 ] ; 3 uses
  %i.dey = mul nsw i64 %indvars.iv1148, %i.dem
  %i.dez = mul nsw i64 %indvars.iv1148, %i.del
  %invariant.gep = getelementptr [2 x i8], ptr %i.dau, i64 %i.dey ; 4 uses
  %invariant.gep1417 = getelementptr i8, ptr %i.dbw, i64 %i.dez ; 4 uses
  %brmerge2217 = select i1 %min.iters.check2132, i1 true, i1 %i.dew
  br i1 %brmerge2217, label %scalar.ph2131.preheader, label %vector.body2135

vector.body2135:                                  ; preds = %.preheader906, %vector.body2135
  %index2136 = phi i64 [ %index.next2138, %vector.body2135 ], [ 0, %.preheader906 ] ; 3 uses
  %i.dfa = getelementptr [2 x i8], ptr %invariant.gep, i64 %index2136
  %wide.load2137 = load <8 x i16>, ptr %i.dfa, align 2, !tbaa !182, !alias.scope !371 ; 2 uses
  %i.dfb = sext <8 x i16> %wide.load2137 to <8 x i32>
  %i.dfc = add nsw <8 x i32> %i.dfb, splat (i32 2056)
  %i.dfd = ashr <8 x i32> %i.dfc, splat (i32 4)   ; 2 uses
  %i.dfe = icmp ugt <8 x i32> %i.dfd, splat (i32 255)
  %i.dff = icmp sgt <8 x i16> %wide.load2137, splat (i16 -2057)
  %i.dfg = sext <8 x i1> %i.dff to <8 x i32>
  %i.dfh = select <8 x i1> %i.dfe, <8 x i32> %i.dfg, <8 x i32> %i.dfd
  %i.dfi = trunc <8 x i32> %i.dfh to <8 x i8>
  %i.dfj = getelementptr i8, ptr %invariant.gep1417, i64 %index2136
  store <8 x i8> %i.dfi, ptr %i.dfj, align 1, !tbaa !83, !alias.scope !374, !noalias !371
  %index.next2138 = add nuw i64 %index2136, 8     ; 2 uses
  %i.dfk = icmp eq i64 %index.next2138, %n.vec2134
  br i1 %i.dfk, label %middle.block2139, label %vector.body2135, !llvm.loop !376

middle.block2139:                                 ; preds = %vector.body2135
  br i1 %cmp.n2140, label %._crit_edge982, label %scalar.ph2131.preheader

scalar.ph2131.preheader:                          ; preds = %.preheader906, %middle.block2139
  %indvars.iv1145.ph = phi i64 [ %n.vec2134, %middle.block2139 ], [ 0, %.preheader906 ] ; 5 uses
  br i1 %lcmp.mod2178.not, label %scalar.ph2131.prol.loopexit, label %scalar.ph2131.prol

scalar.ph2131.prol:                               ; preds = %scalar.ph2131.preheader
  %gep.prol = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv1145.ph
  %i.dfl = load i16, ptr %gep.prol, align 2, !tbaa !182 ; 2 uses
  %i.dfm = sext i16 %i.dfl to i32
  %i.dfn = add nsw i32 %i.dfm, 2056
  %i.dfo = ashr i32 %i.dfn, 4                     ; 2 uses
  %i.dfp = icmp ugt i32 %i.dfo, 255
  %isnotneg.i685.prol = icmp sgt i16 %i.dfl, -2057
  %i.dfq = sext i1 %isnotneg.i685.prol to i32
  %.0.i686.prol = select i1 %i.dfp, i32 %i.dfq, i32 %i.dfo
  %i.dfr = trunc i32 %.0.i686.prol to i8
  %gep1418.prol = getelementptr i8, ptr %invariant.gep1417, i64 %indvars.iv1145.ph
  store i8 %i.dfr, ptr %gep1418.prol, align 1, !tbaa !83
  %indvars.iv.next1146.prol = or disjoint i64 %indvars.iv1145.ph, 1
  br label %scalar.ph2131.prol.loopexit

scalar.ph2131.prol.loopexit:                      ; preds = %scalar.ph2131.prol, %scalar.ph2131.preheader
  %indvars.iv1145.unr = phi i64 [ %indvars.iv1145.ph, %scalar.ph2131.preheader ], [ %indvars.iv.next1146.prol, %scalar.ph2131.prol ]
  %i.dfs = icmp eq i64 %indvars.iv1145.ph, %i.dex
  br i1 %i.dfs, label %._crit_edge982, label %scalar.ph2131

scalar.ph2131:                                    ; preds = %scalar.ph2131.prol.loopexit, %scalar.ph2131
  %indvars.iv1145 = phi i64 [ %indvars.iv.next1146.1, %scalar.ph2131 ], [ %indvars.iv1145.unr, %scalar.ph2131.prol.loopexit ] ; 4 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv1145
  %i.dft = load i16, ptr %gep, align 2, !tbaa !182 ; 2 uses
  %i.dfu = sext i16 %i.dft to i32
  %i.dfv = add nsw i32 %i.dfu, 2056
  %i.dfw = ashr i32 %i.dfv, 4                     ; 2 uses
  %i.dfx = icmp ugt i32 %i.dfw, 255
  %isnotneg.i685 = icmp sgt i16 %i.dft, -2057
  %i.dfy = sext i1 %isnotneg.i685 to i32
  %.0.i686 = select i1 %i.dfx, i32 %i.dfy, i32 %i.dfw
  %i.dfz = trunc i32 %.0.i686 to i8
  %gep1418 = getelementptr i8, ptr %invariant.gep1417, i64 %indvars.iv1145
  store i8 %i.dfz, ptr %gep1418, align 1, !tbaa !83
  %indvars.iv.next1146 = add nuw nsw i64 %indvars.iv1145, 1 ; 2 uses
  %gep.1 = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv.next1146
  %i.dga = load i16, ptr %gep.1, align 2, !tbaa !182 ; 2 uses
  %i.dgb = sext i16 %i.dga to i32
  %i.dgc = add nsw i32 %i.dgb, 2056
  %i.dgd = ashr i32 %i.dgc, 4                     ; 2 uses
  %i.dge = icmp ugt i32 %i.dgd, 255
  %isnotneg.i685.1 = icmp sgt i16 %i.dga, -2057
  %i.dgf = sext i1 %isnotneg.i685.1 to i32
  %.0.i686.1 = select i1 %i.dge, i32 %i.dgf, i32 %i.dgd
  %i.dgg = trunc i32 %.0.i686.1 to i8
  %gep1418.1 = getelementptr i8, ptr %invariant.gep1417, i64 %indvars.iv.next1146
  store i8 %i.dgg, ptr %gep1418.1, align 1, !tbaa !83
  %indvars.iv.next1146.1 = add nuw nsw i64 %indvars.iv1145, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next1146.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge982, label %scalar.ph2131, !llvm.loop !377

._crit_edge982:                                   ; preds = %scalar.ph2131.prol.loopexit, %scalar.ph2131, %middle.block2139
  %indvars.iv.next1149 = add nsw i64 %indvars.iv1148, 1 ; 2 uses
  %i.dgh = icmp slt i64 %indvars.iv.next1149, %i.den
  br i1 %i.dgh, label %.preheader906, label %predict_slice.exit768, !llvm.loop !344

bb.hl:                                            ; preds = %.lr.ph993, %add_yblock.exit.i737
  %indvars.iv1157 = phi i64 [ 0, %.lr.ph993 ], [ %indvars.iv.next1158, %add_yblock.exit.i737 ] ; 6 uses
  %i.dgi = mul i64 %indvars.iv1157, %i.ddj        ; 2 uses
  %i.dgj = trunc i64 %i.dgi to i32
  %i.dgk = sub i32 %i.dgj, %i.dce                 ; 2 uses
  %smax2019 = tail call i32 @llvm.smax.i32(i32 %i.dgk, i32 0) ; 4 uses
  %i.dgl = add i32 %i.dcx, %smax2019
  %i.dgm = sext i32 %i.dgl to i64                 ; 2 uses
  %scevgep2020 = getelementptr i8, ptr %i.dbw, i64 %i.dgm ; 4 uses
  %smin2024 = tail call i32 @llvm.smin.i32(i32 %i.dgk, i32 0)
  %i.dgn = add i32 %i.dbn, %smin2024
  %i.dgo = add i32 %i.dgn, %smax2019
  %smin2025 = tail call i32 @llvm.smin.i32(i32 %i.dbx, i32 %i.dgo)
  %i.dgp = sub i32 %smin2025, %smax2019
  %i.dgq = tail call i32 @llvm.umax.i32(i32 %i.dgp, i32 1)
  %umax2026 = zext i32 %i.dgq to i64              ; 7 uses
  %i.dgr = getelementptr i8, ptr %scevgep2023, i64 %umax2026
  %scevgep2027 = getelementptr i8, ptr %i.dgr, i64 %i.dgm ; 5 uses
  %i.dgs = sub i64 %i.dgi, %i.ddk
  %smin2029 = tail call i64 @llvm.smin.i64(i64 %i.dgs, i64 0) ; 2 uses
  %i.dgt = sub nsw i64 0, %smin2029               ; 3 uses
  %scevgep2030 = getelementptr i8, ptr %scevgep2028, i64 %i.dgt
  %i.dgu = sub i64 %umax2026, %smin2029           ; 4 uses
  %scevgep2032 = getelementptr i8, ptr %scevgep2031, i64 %i.dgu
  %scevgep2034 = getelementptr i8, ptr %scevgep2033, i64 %i.dgt
  %scevgep2036 = getelementptr i8, ptr %scevgep2035, i64 %i.dgu
  %scevgep2038 = getelementptr i8, ptr %scevgep2037, i64 %i.dgt
  %scevgep2040 = getelementptr i8, ptr %scevgep2039, i64 %i.dgu
  %scevgep2042 = getelementptr i8, ptr %scevgep2041, i64 %i.dgu
  %i.dgv = add i32 %i.dcw, %smax2019
  %i.dgw = sext i32 %i.dgv to i64                 ; 2 uses
  %i.dgx = shl nsw i64 %i.dgw, 1
  %scevgep2051 = getelementptr i8, ptr %i.dau, i64 %i.dgx
  %i.dgy = add nsw i64 %umax2026, %i.dgw
  %i.dgz = shl nsw i64 %i.dgy, 1
  %scevgep2053 = getelementptr i8, ptr %scevgep2052, i64 %i.dgz
  %i.dha = mul nuw nsw i64 %indvars.iv1157, %i.ddj
  %i.dhb = sub nsw i64 %i.dha, %i.ddk             ; 2 uses
  %i.dhc = load i32, ptr %i.o, align 16, !tbaa !115
  %i.dhd = load i32, ptr %i.lg, align 8, !tbaa !80 ; 2 uses
  %i.dhe = shl i32 %i.dhc, %i.dhd                 ; 2 uses
  %i.dhf = load i32, ptr %i.q, align 4, !tbaa !114
  %i.dhg = shl i32 %i.dhf, %i.dhd
  %i.dhh = load ptr, ptr %i.li, align 8, !tbaa !215
  %i.dhi = mul nsw i32 %i.dhe, %i.dci
  %i.dhj = sext i32 %i.dhi to i64
  %i.dhk = getelementptr [10 x i8], ptr %i.dhh, i64 %indvars.iv1157
  %i.dhl = getelementptr i8, ptr %i.dhk, i64 -10
  %i.dhm = getelementptr [10 x i8], ptr %i.dhl, i64 %i.dhj ; 4 uses
  %i.dhn = getelementptr inbounds nuw i8, ptr %i.dhm, i64 10 ; 3 uses
  %i.dho = sext i32 %i.dhe to i64                 ; 2 uses
  %i.dhp = getelementptr inbounds [10 x i8], ptr %i.dhm, i64 %i.dho ; 3 uses
  %i.dhq = getelementptr inbounds nuw i8, ptr %i.dhp, i64 10 ; 3 uses
  %i.dhr = load ptr, ptr %i.lj, align 8, !tbaa !216 ; 6 uses
  %i.dhs = icmp eq i64 %indvars.iv1157, 0
  br i1 %i.dhs, label %bb.hn, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %.not.i.i690 = icmp slt i64 %indvars.iv1157, %i.dho ; 2 uses
  %spec.select.i.i691 = select i1 %.not.i.i690, ptr %i.dhn, ptr %i.dhm
  %spec.select260.i.i692 = select i1 %.not.i.i690, ptr %i.dhq, ptr %i.dhp
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hm, %bb.hl
  %.0228.i.i693 = phi ptr [ %i.dhm, %bb.hm ], [ %i.dhn, %bb.hl ] ; 2 uses
  %.0226.i.i694 = phi ptr [ %spec.select.i.i691, %bb.hm ], [ %i.dhn, %bb.hl ] ; 2 uses
  %.0224.i.i695 = phi ptr [ %i.dhp, %bb.hm ], [ %i.dhq, %bb.hl ] ; 3 uses
  %.0222.i.i696 = phi ptr [ %spec.select260.i.i692, %bb.hm ], [ %i.dhq, %bb.hl ] ; 3 uses
  br i1 %i.dcm, label %bb.hp, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %.not249.i.i697 = icmp slt i32 %.0.i995, %i.dhg ; 2 uses
  %spec.select261.i.i698 = select i1 %.not249.i.i697, ptr %.0224.i.i695, ptr %.0228.i.i693
  %spec.select262.i.i699 = select i1 %.not249.i.i697, ptr %.0222.i.i696, ptr %.0226.i.i694
  br label %bb.hp

bb.hp:                                            ; preds = %bb.ho, %bb.hn
  %.1229.i.i700 = phi ptr [ %.0228.i.i693, %bb.ho ], [ %.0224.i.i695, %bb.hn ] ; 20 uses
  %.1227.i.i701 = phi ptr [ %.0226.i.i694, %bb.ho ], [ %.0222.i.i696, %bb.hn ] ; 22 uses
  %.1225.i.i702 = phi ptr [ %spec.select261.i.i698, %bb.ho ], [ %.0224.i.i695, %bb.hn ] ; 21 uses
  %.1223.i.i703 = phi ptr [ %spec.select262.i.i699, %bb.ho ], [ %.0222.i.i696, %bb.hn ] ; 20 uses
  %i.dht = trunc nsw i64 %i.dhb to i32            ; 2 uses
  %i.dhu = tail call i32 @llvm.smin.i32(i32 %i.dht, i32 0)
  %.0237.i.i704 = add nsw i32 %i.dhu, %i.dbn      ; 2 uses
  %.0235.i.i705 = tail call i32 @llvm.smax.i32(i32 %i.dht, i32 0) ; 8 uses
  %i.dhv = tail call i64 @llvm.smin.i64(i64 %i.dhb, i64 0)
  %.0233.i.i706.idx = sub i64 0, %i.dhv
  %i.dhw = add nsw i32 %.0237.i.i704, %.0235.i.i705
  %i.dhx = icmp sgt i32 %i.dhw, %i.dbx
  %i.dhy = sub nsw i32 %i.dbx, %.0235.i.i705
  %spec.select264.i.i707 = select i1 %i.dhx, i32 %i.dhy, i32 %.0237.i.i704 ; 7 uses
  %gep1422 = getelementptr i8, ptr %invariant.gep1421, i64 %.0233.i.i706.idx ; 2 uses
  %i.dhz = icmp slt i32 %spec.select264.i.i707, 1
  %or.cond5.i.i712 = select i1 %i.dhz, i1 true, i1 %i.dcv
  br i1 %or.cond5.i.i712, label %add_yblock.exit.i737, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.dia = add nsw i32 %.0235.i.i705, %i.dcw
  %i.dib = sext i32 %i.dia to i64
  %i.dic = getelementptr inbounds [2 x i8], ptr %i.dau, i64 %i.dib
  %i.did = add nsw i32 %.0235.i.i705, %i.dcx
  %i.die = sext i32 %i.did to i64
  %i.dif = getelementptr inbounds i8, ptr %i.dbw, i64 %i.die ; 2 uses
  %i.dig = getelementptr inbounds i8, ptr %i.dhr, i64 %i.dcz ; 11 uses
  %i.dih = getelementptr inbounds i8, ptr %i.dig, i64 %i.dda ; 5 uses
  tail call void @ff_snow_pred_block(ptr noundef nonnull %i.d, ptr noundef %i.dig, ptr noundef %i.dhr, i64 noundef %i.ddb, i32 noundef %.0235.i.i705, i32 noundef %.0236.i.i709, i32 noundef %spec.select264.i.i707, i32 noundef %spec.select265.i.i711, ptr noundef %.1229.i.i700, i32 noundef %i.day, i32 noundef %i.dbx, i32 noundef %i.dby) #12
  %i.dii = getelementptr inbounds nuw i8, ptr %.1229.i.i700, i64 8 ; 3 uses
  %i.dij = load i8, ptr %i.dii, align 2, !tbaa !217 ; 4 uses
  %i.dik = and i8 %i.dij, 1
  %.not.i294.i.i713 = icmp eq i8 %i.dik, 0
  %.phi.trans.insert1274 = getelementptr inbounds nuw i8, ptr %.1227.i.i701, i64 8
  %.pre1275 = load i8, ptr %.phi.trans.insert1274, align 2, !tbaa !217 ; 2 uses
  %i.dil = and i8 %.pre1275, 1
  %.not16.i295.i.i714 = icmp eq i8 %i.dil, 0
  %or.cond1457 = select i1 %.not.i294.i.i713, i1 true, i1 %.not16.i295.i.i714
  br i1 %or.cond1457, label %same_block.exit300.i.i716, label %.split1393

.split1393:                                       ; preds = %bb.hq
  %i.dim = getelementptr inbounds nuw i8, ptr %.1229.i.i700, i64 5
  %i.din = load i8, ptr %i.dim, align 1, !tbaa !83
  %i.dio = getelementptr inbounds nuw i8, ptr %.1227.i.i701, i64 5
  %i.dip = load i8, ptr %i.dio, align 1, !tbaa !83
  %i.diq = getelementptr inbounds nuw i8, ptr %.1229.i.i700, i64 6
  %i.dir = load i8, ptr %i.diq, align 2, !tbaa !83
  %i.dis = getelementptr inbounds nuw i8, ptr %.1227.i.i701, i64 6
  %i.dit = load i8, ptr %i.dis, align 2, !tbaa !83
  %i.diu = getelementptr inbounds nuw i8, ptr %.1229.i.i700, i64 7
  %i.div = load i8, ptr %i.diu, align 1, !tbaa !83
  %i.diw = getelementptr inbounds nuw i8, ptr %.1227.i.i701, i64 7
  %i.dix = load i8, ptr %i.diw, align 1, !tbaa !83
  %i.diy = icmp eq i8 %i.din, %i.dip
  %i.diz = icmp eq i8 %i.dir, %i.dit
  %i.dja = and i1 %i.diy, %i.diz
  %i.djb = icmp eq i8 %i.div, %i.dix
  %.not18.i296.i.i715 = and i1 %i.dja, %i.djb
  br i1 %.not18.i296.i.i715, label %bb.hs, label %bb.hr

same_block.exit300.i.i716:                        ; preds = %bb.hq
  %i.djc = load i16, ptr %.1229.i.i700, align 2, !tbaa !219
  %i.djd = sext i16 %i.djc to i32
  %i.dje = load i16, ptr %.1227.i.i701, align 2, !tbaa !219
  %i.djf = sext i16 %i.dje to i32
  %i.djg = sub nsw i32 %i.djd, %i.djf
  %i.djh = getelementptr inbounds nuw i8, ptr %.1229.i.i700, i64 2
  %i.dji = load i16, ptr %i.djh, align 2, !tbaa !220
  %i.djj = sext i16 %i.dji to i32
  %i.djk = getelementptr inbounds nuw i8, ptr %.1227.i.i701, i64 2
  %i.djl = load i16, ptr %i.djk, align 2, !tbaa !220
  %i.djm = sext i16 %i.djl to i32
  %i.djn = sub nsw i32 %i.djj, %i.djm
  %i.djo = or i32 %i.djn, %i.djg
  %i.djp = getelementptr inbounds nuw i8, ptr %.1229.i.i700, i64 4
  %i.djq = load i8, ptr %i.djp, align 2, !tbaa !221
  %i.djr = zext i8 %i.djq to i32
  %i.djs = getelementptr inbounds nuw i8, ptr %.1227.i.i701, i64 4
  %i.djt = load i8, ptr %i.djs, align 2, !tbaa !221
  %i.dju = zext i8 %i.djt to i32
  %i.djv = sub nsw i32 %i.djr, %i.dju
  %i.djw = or i32 %i.djo, %i.djv
  %i.djx = xor i8 %.pre1275, %i.dij
  %i.djy = and i8 %i.djx, 1
  %i.djz = zext nneg i8 %i.djy to i32
  %i.dka = or i32 %i.djw, %i.djz
  %.not17.i299.i.i767 = icmp eq i32 %i.dka, 0
  br i1 %.not17.i299.i.i767, label %bb.hs, label %bb.hr

bb.hr:                                            ; preds = %.split1393, %same_block.exit300.i.i716
  %i.dkb = getelementptr inbounds i8, ptr %i.dih, i64 %i.dda
  tail call void @ff_snow_pred_block(ptr noundef nonnull %i.d, ptr noundef %i.dih, ptr noundef %i.dhr, i64 noundef %i.ddb, i32 noundef %.0235.i.i705, i32 noundef %.0236.i.i709, i32 noundef %spec.select264.i.i707, i32 noundef %spec.select265.i.i711, ptr noundef nonnull %.1227.i.i701, i32 noundef %i.day, i32 noundef %i.dbx, i32 noundef %i.dby) #12
  %.pre1276 = load i8, ptr %i.dii, align 2, !tbaa !217
  br label %bb.hs

bb.hs:                                            ; preds = %.split1393, %same_block.exit300.i.i716, %bb.hr
  %i.dkc = phi i8 [ %.pre1276, %bb.hr ], [ %i.dij, %same_block.exit300.i.i716 ], [ %i.dij, %.split1393 ] ; 6 uses
  %.sroa.7855.0 = phi ptr [ %i.dih, %bb.hr ], [ %i.dig, %same_block.exit300.i.i716 ], [ %i.dig, %.split1393 ] ; 8 uses
  %.0221.i.i720 = phi ptr [ %i.dkb, %bb.hr ], [ %i.dih, %same_block.exit300.i.i716 ], [ %i.dih, %.split1393 ] ; 7 uses
  %i.dkd = and i8 %i.dkc, 1
  %.not.i287.i.i721 = icmp eq i8 %i.dkd, 0
  %.phi.trans.insert1278 = getelementptr inbounds nuw i8, ptr %.1225.i.i702, i64 8
  %.pre1279 = load i8, ptr %.phi.trans.insert1278, align 2, !tbaa !217 ; 4 uses
  %i.dke = and i8 %.pre1279, 1
  %.not16.i288.i.i722 = icmp eq i8 %i.dke, 0
  %or.cond1458 = select i1 %.not.i287.i.i721, i1 true, i1 %.not16.i288.i.i722
  br i1 %or.cond1458, label %same_block.exit293.i.i724, label %.split1394

.split1394:                                       ; preds = %bb.hs
  %i.dkf = getelementptr inbounds nuw i8, ptr %.1229.i.i700, i64 5
  %i.dkg = load i8, ptr %i.dkf, align 1, !tbaa !83
  %i.dkh = getelementptr inbounds nuw i8, ptr %.1225.i.i702, i64 5
  %i.dki = load i8, ptr %i.dkh, align 1, !tbaa !83
  %i.dkj = getelementptr inbounds nuw i8, ptr %.1229.i.i700, i64 6
  %i.dkk = load i8, ptr %i.dkj, align 2, !tbaa !83
  %i.dkl = getelementptr inbounds nuw i8, ptr %.1225.i.i702, i64 6
  %i.dkm = load i8, ptr %i.dkl, align 2, !tbaa !83
  %i.dkn = getelementptr inbounds nuw i8, ptr %.1229.i.i700, i64 7
  %i.dko = load i8, ptr %i.dkn, align 1, !tbaa !83
  %i.dkp = getelementptr inbounds nuw i8, ptr %.1225.i.i702, i64 7
  %i.dkq = load i8, ptr %i.dkp, align 1, !tbaa !83
  %i.dkr = icmp eq i8 %i.dkg, %i.dki
  %i.dks = icmp eq i8 %i.dkk, %i.dkm
  %i.dkt = and i1 %i.dkr, %i.dks
  %i.dku = icmp eq i8 %i.dko, %i.dkq
  %.not18.i289.i.i723 = and i1 %i.dkt, %i.dku
  br i1 %.not18.i289.i.i723, label %bb.hv, label %bb.ht

same_block.exit293.i.i724:                        ; preds = %bb.hs
  %i.dkv = load i16, ptr %.1229.i.i700, align 2, !tbaa !219
  %i.dkw = sext i16 %i.dkv to i32
  %i.dkx = load i16, ptr %.1225.i.i702, align 2, !tbaa !219
  %i.dky = sext i16 %i.dkx to i32
  %i.dkz = sub nsw i32 %i.dkw, %i.dky
  %i.dla = getelementptr inbounds nuw i8, ptr %.1229.i.i700, i64 2
  %i.dlb = load i16, ptr %i.dla, align 2, !tbaa !220
  %i.dlc = sext i16 %i.dlb to i32
  %i.dld = getelementptr inbounds nuw i8, ptr %.1225.i.i702, i64 2
  %i.dle = load i16, ptr %i.dld, align 2, !tbaa !220
  %i.dlf = sext i16 %i.dle to i32
  %i.dlg = sub nsw i32 %i.dlc, %i.dlf
  %i.dlh = or i32 %i.dlg, %i.dkz
  %i.dli = getelementptr inbounds nuw i8, ptr %.1229.i.i700, i64 4
  %i.dlj = load i8, ptr %i.dli, align 2, !tbaa !221
  %i.dlk = zext i8 %i.dlj to i32
  %i.dll = getelementptr inbounds nuw i8, ptr %.1225.i.i702, i64 4
  %i.dlm = load i8, ptr %i.dll, align 2, !tbaa !221
  %i.dln = zext i8 %i.dlm to i32
end_hunk_2
begin_hunk_3_@encode_blocks:bb.a
  %indvars.iv.next871.i.3 = add nuw nsw i64 %indvars.iv870.i, 4 ; 2 uses
  %exitcond875.not.i.3 = icmp eq i64 %indvars.iv.next871.i.3, %wide.trip.count.i
  br i1 %exitcond875.not.i.3, label %.preheader627.us.us.us.i, label %vec.epilog.scalar.ph, !llvm.loop !454

.lr.ph667.us.us.us.i.new:                         ; preds = %.prol.loopexit, %.lr.ph667.us.us.us.i.new
  %indvars.iv876.i = phi i64 [ %indvars.iv.next877.i.3, %.lr.ph667.us.us.us.i.new ], [ %indvars.iv876.i.unr, %.prol.loopexit ] ; 5 uses
  %i.id = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %indvars.iv876.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.id, ptr nonnull align 16 %i.bnx, i64 %i.bny, i1 false)
  %i.ie = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %indvars.iv876.i
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.if, ptr nonnull align 16 %i.bnx, i64 %i.bny, i1 false)
  %i.ig = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %indvars.iv876.i
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.ih, ptr nonnull align 16 %i.bnx, i64 %i.bny, i1 false)
  %i.ii = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %indvars.iv876.i
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.ij, ptr nonnull align 16 %i.bnx, i64 %i.bny, i1 false)
  %indvars.iv.next877.i.3 = add nuw nsw i64 %indvars.iv876.i, 4 ; 2 uses
  %exitcond880.not.i.3 = icmp eq i64 %indvars.iv.next877.i.3, %i.bnw
  br i1 %exitcond880.not.i.3, label %.loopexit628.us.us.us.thread.i, label %.lr.ph667.us.us.us.i.new, !llvm.loop !455

.loopexit628.us.us.us.i:                          ; preds = %.loopexit631.us.us.us.i.thread, %.loopexit631.us.us.us.i
  %i.ik = phi i1 [ %i.hi, %.loopexit631.us.us.us.i.thread ], [ %i.es, %.loopexit631.us.us.us.i ]
  %i.il = phi i1 [ %i.hh, %.loopexit631.us.us.us.i.thread ], [ %i.dk, %.loopexit631.us.us.us.i ]
  %i.im = or i1 %i.ik, %i.il
  %brmerge509.us.us.us.i = or i1 %i.bu, %i.im
  br i1 %brmerge509.us.us.us.i, label %.loopexit628.us.us.us.thread.i, label %.loopexit.us.us.us.i

.loopexit628.us.us.us.thread.i:                   ; preds = %.prol.loopexit, %.lr.ph667.us.us.us.i.new, %.preheader627.us.us.us.i, %.loopexit628.us.us.us.i
  %i.in = load ptr, ptr %i.aq, align 8, !tbaa !105
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !107 ; 4 uses
  %i.ip = load ptr, ptr %i.ar, align 16, !tbaa !142 ; 2 uses
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !107 ; 4 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 64
  %i.is = load i32, ptr %i.ir, align 8, !tbaa !84 ; 4 uses
  %i.it = trunc nuw nsw i64 %indvars.iv920.i to i32
  %i.iu = mul nuw nsw i32 %i.cv, %i.it
  %i.iv = lshr i32 8, %i.cu                       ; 8 uses
  %i.iw = sub nsw i32 %i.iu, %i.iv                ; 6 uses
  %i.ix = mul i32 %i.cv, %i.bw                    ; 4 uses
  %i.iy = sub nsw i32 %i.ix, %i.iv                ; 2 uses
  %i.iz = load i32, ptr %i.as, align 8, !tbaa !174 ; 3 uses
  %i.ja = load i32, ptr %i.at, align 4, !tbaa !175 ; 2 uses
  %i.jb = icmp slt i32 %i.iy, 0
  br i1 %i.jb, label %.lr.ph670.us.us.us.i, label %.preheader626.us.us.us.i

.lr.ph670.us.us.us.i.new:                         ; preds = %.prol.loopexit459, %.lr.ph670.us.us.us.i.new
  %indvars.iv881.i = phi i64 [ %indvars.iv.next882.i.1, %.lr.ph670.us.us.us.i.new ], [ %indvars.iv881.i.unr, %.prol.loopexit459 ] ; 3 uses
  %i.jc = mul nsw i64 %indvars.iv881.i, %i.bop    ; 2 uses
  %i.jd = getelementptr inbounds i8, ptr %i.boi, i64 %i.jc
  %i.je = getelementptr inbounds i8, ptr %i.boj, i64 %i.jc
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jd, ptr align 1 %i.je, i64 %i.bok, i1 false)
  %indvars.iv.next882.i = add nsw i64 %indvars.iv881.i, 1
  %i.jf = mul nsw i64 %indvars.iv.next882.i, %i.bop ; 2 uses
  %i.jg = getelementptr inbounds i8, ptr %i.boi, i64 %i.jf
  %i.jh = getelementptr inbounds i8, ptr %i.boj, i64 %i.jf
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jg, ptr align 1 %i.jh, i64 %i.bok, i1 false)
  %indvars.iv.next882.i.1 = add nsw i64 %indvars.iv881.i, 2 ; 2 uses
  %i.ji = and i64 %indvars.iv.next882.i.1, 4294967295
  %exitcond884.not.i.1 = icmp eq i64 %i.ji, 0
  br i1 %exitcond884.not.i.1, label %.preheader626.us.us.us.i, label %.lr.ph670.us.us.us.i.new, !llvm.loop !456

.lr.ph672.us.us.us.i.new:                         ; preds = %.prol.loopexit464, %.lr.ph672.us.us.us.i.new
  %indvars.iv885.i = phi i64 [ %indvars.iv.next886.i.3, %.lr.ph672.us.us.us.i.new ], [ %indvars.iv885.i.unr, %.prol.loopexit464 ] ; 5 uses
  %i.jj = mul nsw i64 %indvars.iv885.i, %i.bpb    ; 2 uses
  %i.jk = getelementptr inbounds i8, ptr %i.box, i64 %i.jj
  %i.jl = getelementptr inbounds i8, ptr %i.boy, i64 %i.jj
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jk, ptr align 1 %i.jl, i64 %i.boz, i1 false)
  %indvars.iv.next886.i = add nsw i64 %indvars.iv885.i, 1
  %i.jm = mul nsw i64 %indvars.iv.next886.i, %i.bpb ; 2 uses
  %i.jn = getelementptr inbounds i8, ptr %i.box, i64 %i.jm
  %i.jo = getelementptr inbounds i8, ptr %i.boy, i64 %i.jm
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jn, ptr align 1 %i.jo, i64 %i.boz, i1 false)
  %indvars.iv.next886.i.1 = add nsw i64 %indvars.iv885.i, 2
  %i.jp = mul nsw i64 %indvars.iv.next886.i.1, %i.bpb ; 2 uses
  %i.jq = getelementptr inbounds i8, ptr %i.box, i64 %i.jp
  %i.jr = getelementptr inbounds i8, ptr %i.boy, i64 %i.jp
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jq, ptr align 1 %i.jr, i64 %i.boz, i1 false)
  %indvars.iv.next886.i.2 = add nsw i64 %indvars.iv885.i, 3
  %i.js = mul nsw i64 %indvars.iv.next886.i.2, %i.bpb ; 2 uses
  %i.jt = getelementptr inbounds i8, ptr %i.box, i64 %i.js
  %i.ju = getelementptr inbounds i8, ptr %i.boy, i64 %i.js
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jt, ptr align 1 %i.ju, i64 %i.boz, i1 false)
  %indvars.iv.next886.i.3 = add nsw i64 %indvars.iv885.i, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next886.i.3, %i.bpe
  br i1 %exitcond.not.3, label %._crit_edge673.us.us.us.i, label %.lr.ph672.us.us.us.i.new, !llvm.loop !457

._crit_edge673.us.us.us.i:                        ; preds = %.prol.loopexit464, %.lr.ph672.us.us.us.i.new, %.preheader626.us.us.us.i
  %i.jv = icmp slt i32 %i.iw, 0
  %or.cond810.i = and i1 %.not.i, %i.jv
  br i1 %or.cond810.i, label %.lr.ph676.us.us.us.i, label %.loopexit625.us.us.us.i

bb.n:                                             ; preds = %.lr.ph676.us.us.us.i, %bb.n
  %indvars.iv888.i = phi i64 [ %i.bpt, %.lr.ph676.us.us.us.i ], [ %indvars.iv.next889.i, %bb.n ] ; 2 uses
  %i.jw = mul nsw i64 %indvars.iv888.i, %i.bpu    ; 2 uses
  %i.jx = getelementptr inbounds i8, ptr %i.bpm, i64 %i.jw
  %i.jy = getelementptr inbounds i8, ptr %i.bpn, i64 %i.jw
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jx, ptr nonnull align 1 %i.jy, i64 %i.bpp, i1 false)
  %indvars.iv.next889.i = add nsw i64 %indvars.iv888.i, 1 ; 2 uses
  %i.jz = icmp slt i64 %indvars.iv.next889.i, %i.bpv
  br i1 %i.jz, label %bb.n, label %.loopexit625.us.us.us.i, !llvm.loop !458

.loopexit625.us.us.us.i:                          ; preds = %bb.n, %._crit_edge673.us.us.us.i
  %i.ka = add nsw i32 %i.iw, %i.da                ; 2 uses
  %i.kb = icmp sgt i32 %i.ka, %i.iz
  %or.cond809.i = and i1 %.not.i, %i.kb
  br i1 %or.cond809.i, label %.lr.ph678.us.us.us.i, label %.loopexit.us.us.us.i

bb.o:                                             ; preds = %.lr.ph678.us.us.us.i, %bb.o
  %indvars.iv891.i = phi i64 [ %i.bqe, %.lr.ph678.us.us.us.i ], [ %indvars.iv.next892.i, %bb.o ] ; 2 uses
  %i.kc = mul nsw i64 %indvars.iv891.i, %i.bqf    ; 2 uses
  %i.kd = getelementptr inbounds i8, ptr %i.bpx, i64 %i.kc
  %i.ke = getelementptr inbounds i8, ptr %i.bpy, i64 %i.kc
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kd, ptr align 1 %i.ke, i64 %i.bqa, i1 false)
  %indvars.iv.next892.i = add nsw i64 %indvars.iv891.i, 1 ; 2 uses
  %i.kf = icmp slt i64 %indvars.iv.next892.i, %i.bqg
  br i1 %i.kf, label %bb.o, label %.loopexit.us.us.us.i, !llvm.loop !459

.loopexit.us.us.us.i:                             ; preds = %bb.o, %.loopexit625.us.us.us.i, %.loopexit628.us.us.us.i
  %i.kg = load i32, ptr %i.au, align 16, !tbaa !103
  %i.kh = icmp sgt i32 %i.kg, 0
  br i1 %i.kh, label %.lr.ph687.us.us.us.i, label %._crit_edge688.us.us.us.i

bb.p:                                             ; preds = %.lr.ph687.us.us.us.i, %get_dc.exit.us.us.us.i
  %indvars.iv909.i = phi i64 [ 0, %.lr.ph687.us.us.us.i ], [ %indvars.iv.next910.i, %get_dc.exit.us.us.us.i ] ; 8 uses
  %i.ki = getelementptr inbounds nuw [37160 x i8], ptr %i.as, i64 %indvars.iv909.i ; 2 uses
  %i.kj = load i32, ptr %i.p, align 8, !tbaa !80  ; 4 uses
  %i.kk = lshr i32 16, %i.kj                      ; 8 uses
  %.not.i562.us.us.us.i = icmp eq i64 %indvars.iv909.i, 0
  br i1 %.not.i562.us.us.us.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.kl = load i32, ptr %i.av, align 4, !tbaa !108 ; 3 uses
  %i.km = lshr i32 %i.kk, %i.kl
  %i.kn = load i32, ptr %i.aw, align 16, !tbaa !109
  %i.ko = lshr i32 %i.kk, %i.kn
  %i.kp = add nsw i32 %i.kl, %i.kj
  %i.kq = shl nuw nsw i32 %i.kk, 1
  %i.kr = lshr i32 %i.kq, %i.kl
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ks = shl nuw nsw i32 %i.kk, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn.pn.in.i.us.us.us.i = phi i32 [ %i.kp, %bb.q ], [ %i.kj, %bb.r ]
  %i.kt = phi i32 [ %i.km, %bb.q ], [ %i.kk, %bb.r ] ; 39 uses
  %i.ku = phi i32 [ %i.ko, %bb.q ], [ %i.kk, %bb.r ] ; 21 uses
  %i.kv = phi i32 [ %i.kr, %bb.q ], [ %i.ks, %bb.r ] ; 15 uses
  %.pn.pn.i.us.us.us.i = sext i32 %.pn.pn.in.i.us.us.us.i to i64
  %.in191.i.us.us.us.i = getelementptr inbounds [8 x i8], ptr @ff_obmc_tab, i64 %.pn.pn.i.us.us.us.i
  %i.kw = load ptr, ptr %.in191.i.us.us.us.i, align 8, !tbaa !107 ; 34 uses
  %i.kx = load ptr, ptr %i.ar, align 16, !tbaa !142
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 64
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv909.i
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !84 ; 5 uses
  %i.lb = load ptr, ptr %i.aq, align 8, !tbaa !105
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %indvars.iv909.i
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !107 ; 6 uses
  %i.le = trunc i64 %indvars.iv909.i to i32       ; 5 uses
  %i.lf = shl i32 %i.le, 2
  %i.lg = mul i32 %i.lf, %i.kk
  %i.lh = mul i32 %i.lg, %i.kk
  %i.li = sext i32 %i.lh to i64                   ; 3 uses
  %i.lj = getelementptr inbounds [2 x i8], ptr %i.ax, i64 %i.li ; 12 uses
  %i.lk = load i32, ptr %i.e, align 16, !tbaa !115
  %i.ll = shl i32 %i.lk, %i.kj
  %i.lm = load i32, ptr %i.ki, align 8, !tbaa !174 ; 13 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ki, i64 4
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !175 ; 11 uses
  %i.lp = sext i32 %i.ll to i64
  %i.lq = mul nsw i64 %indvars.iv925.i, %i.lp
  %i.lr = load ptr, ptr %i.ak, align 8, !tbaa !215
  %i.ls = getelementptr [10 x i8], ptr %i.lr, i64 %i.lq
  %i.lt = getelementptr [10 x i8], ptr %i.ls, i64 %indvars.iv920.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %2, ptr noundef nonnull align 2 dereferenceable(10) %i.lt, i64 10, i1 false), !tbaa.struct !460
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 8 ; 2 uses
  %i.lv = load i8, ptr %i.lu, align 2, !tbaa !217
  %i.lw = or i8 %i.lv, 1
  store i8 %i.lw, ptr %i.lu, align 2, !tbaa !217
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lt, i64 5
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 %indvars.iv909.i
  store i8 0, ptr %i.ly, align 1, !tbaa !83
  %i.lz = shl nuw nsw i32 %i.kv, 1
  %i.ma = mul nuw nsw i32 %i.lz, %i.kv
  %i.mb = zext nneg i32 %i.ma to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.lj, i8 0, i64 %i.mb, i1 false)
  %i.mc = lshr i32 %i.kt, 1                       ; 11 uses
  %i.md = lshr i32 %i.ku, 1                       ; 10 uses
  %i.me = mul nuw nsw i32 %i.kv, %i.ku            ; 9 uses
  %i.mf = icmp sgt i32 %i.la, 111
  %i.mg = shl nsw i32 %i.la, 4
  %i.mh = select i1 %i.mf, i32 16, i32 %i.mg      ; 2 uses
  %i.mi = mul i32 %i.mh, 3
  %i.mj = sext i32 %i.mi to i64                   ; 2 uses
  %i.mk = sext i32 %i.mh to i64                   ; 3 uses
  %i.ml = sext i32 %i.la to i64                   ; 12 uses
  %i.mm = lshr i32 %i.kv, 1                       ; 2 uses
  %i.mn = zext nneg i32 %i.mm to i64              ; 4 uses
  %i.mo = mul i32 %i.mm, %i.kv
  %i.mp = zext i32 %i.mo to i64                   ; 3 uses
  %i.mq = mul nsw i32 %i.kt, %i.buo
  %.neg.i.us.us.us.i = sub i32 %i.mc, %i.mq       ; 9 uses
  %i.mr = mul nsw i32 %i.ku, %i.bw
  %.neg175.i.us.us.us.i = sub i32 %i.md, %i.mr    ; 4 uses
  %i.ms = zext i32 %i.kv to i64                   ; 3 uses
  %i.mt = mul i32 %i.kt, %i.bz
  %i.mu = sub i32 %i.mc, %i.mt
  %i.mv = mul i32 %i.ku, %i.bq
  %i.mw = sub i32 %i.md, %i.mv
  %i.mx = shl nsw i64 %i.li, 1
  %scevgep235 = getelementptr i8, ptr %scevgep234, i64 %i.mx
  %i.my = mul i32 %i.kt, %i.by
  %i.mz = sub i32 %i.mc, %i.my
  %i.na = mul i32 %i.ku, %i.bp
  %i.nb = sub i32 %i.md, %i.na
  %i.nc = shl nuw nsw i64 %i.ms, 1
  %stride.check295 = icmp slt i32 %i.la, 0
  %stride.check = icmp slt i32 %i.la, 0
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge208.i.us.us.us.i, %bb.s
  %.0162234.i.us.us.us.i = phi i32 [ 0, %bb.s ], [ %.1163.lcssa.i.us.us.us.i, %._crit_edge208.i.us.us.us.i ] ; 6 uses
  %.0165233.i.us.us.us.i = phi i32 [ 0, %bb.s ], [ %.1166.lcssa.i.us.us.us.i, %._crit_edge208.i.us.us.us.i ] ; 6 uses
  %.0170232.i.us.us.us.i = phi i32 [ 0, %bb.s ], [ %i.aou, %._crit_edge208.i.us.us.us.i ] ; 9 uses
  %i.nd = lshr i32 %.0170232.i.us.us.us.i, 1
  %i.ne = add i32 %indvars.iv901.i, %i.nd
  %i.nf = mul i32 %i.ku, %i.ne
  %i.ng = add i32 %i.md, %i.nf                    ; 2 uses
  %smin257 = call i32 @llvm.smin.i32(i32 %i.ng, i32 0)
  %i.nh = add i32 %i.ku, %smin257
  %smax258 = call i32 @llvm.smax.i32(i32 %i.ng, i32 0) ; 2 uses
  %i.ni = add i32 %i.nh, %smax258
  %smin259 = call i32 @llvm.smin.i32(i32 %i.lo, i32 %i.ni)
  %i.nj = sub i32 %smin259, %smax258
  %i.nk = zext i32 %i.nj to i64
  %i.nl = call i64 @llvm.usub.sat.i64(i64 %i.nk, i64 1) ; 3 uses
  %i.nm = mul i64 %i.nc, %i.nl
  %i.nn = and i32 %.0170232.i.us.us.us.i, 1
  %i.no = add i32 %indvars.iv894.i, %i.nn
  %i.np = mul i32 %i.kt, %i.no
  %i.nq = add i32 %i.mc, %i.np                    ; 2 uses
  %smin260 = call i32 @llvm.smin.i32(i32 %i.nq, i32 0)
  %i.nr = add i32 %i.kt, %smin260
  %smax261 = call i32 @llvm.smax.i32(i32 %i.nq, i32 0) ; 2 uses
  %i.ns = add i32 %i.nr, %smax261
  %smin262 = call i32 @llvm.smin.i32(i32 %i.lm, i32 %i.ns)
  %i.nt = sub i32 %smin262, %smax261
  %i.nu = call i32 @llvm.umax.i32(i32 %i.nt, i32 1)
  %umax263 = zext i32 %i.nu to i64                ; 3 uses
  %i.nv = shl nuw nsw i64 %umax263, 1
  %i.nw = mul nuw i64 %i.nl, %i.ms
  %i.nx = add i64 %i.nw, %umax263                 ; 4 uses
  %i.ny = mul nsw i64 %i.nl, %i.ml
  %i.nz = add i64 %i.ny, %umax263                 ; 4 uses
  %i.oa = lshr i32 %.0170232.i.us.us.us.i, 1      ; 2 uses
  %i.ob = add i32 %indvars.iv901.i, %i.oa
  %i.oc = mul i32 %i.ku, %i.ob
  %i.od = add i32 %i.md, %i.oc
  %smax227 = call i32 @llvm.smax.i32(i32 %i.od, i32 0) ; 2 uses
  %i.oe = zext nneg i32 %smax227 to i64           ; 2 uses
  %i.of = mul nsw i64 %i.ml, %i.oe
  %i.og = and i32 %.0170232.i.us.us.us.i, 1       ; 2 uses
  %i.oh = add i32 %indvars.iv894.i, %i.og
  %i.oi = mul i32 %i.kt, %i.oh
  %i.oj = add i32 %i.mc, %i.oi
  %smax228 = call i32 @llvm.smax.i32(i32 %i.oj, i32 0) ; 2 uses
  %i.ok = zext nneg i32 %smax228 to i64           ; 4 uses
  %i.ol = getelementptr i8, ptr %i.ld, i64 %i.of
  %scevgep = getelementptr i8, ptr %i.ol, i64 %i.ok
  %i.om = add nuw nsw i64 %i.ok, 1
  %i.on = add i32 %i.og, %i.buo
  %i.oo = mul i32 %i.kt, %i.on
  %i.op = add i32 %i.mc, %i.oo
  %smin229 = call i32 @llvm.smin.i32(i32 %i.lm, i32 %i.op)
  %i.oq = zext i32 %smin229 to i64
  %umax230 = call i64 @llvm.umax.i64(i64 %i.om, i64 %i.oq) ; 3 uses
  %i.or = add nuw nsw i64 %i.oe, 1
  %i.os = add i32 %i.oa, %i.bw
  %i.ot = mul i32 %i.ku, %i.os
  %i.ou = add i32 %i.md, %i.ot
  %smin231 = call i32 @llvm.smin.i32(i32 %i.lo, i32 %i.ou)
  %i.ov = zext i32 %smin231 to i64
  %umax232 = call i64 @llvm.umax.i64(i64 %i.or, i64 %i.ov)
  %i.ow = add nsw i64 %umax232, -1
  %i.ox = mul i64 %i.ow, %i.ml
  %i.oy = getelementptr i8, ptr %i.ld, i64 %umax230
  %scevgep233 = getelementptr i8, ptr %i.oy, i64 %i.ox
  %i.oz = add i32 %i.mz, %smax228
  %i.pa = add i32 %i.nb, %smax227
  %i.pb = mul i32 %i.kv, %i.pa
  %i.pc = add i32 %i.oz, %i.pb
  %i.pd = mul nsw i64 %i.ok, -2
  %i.pe = sub nsw i64 %umax230, %i.ok
  %i.pf = and i32 %.0170232.i.us.us.us.i, 1       ; 2 uses
  %i.pg = add i32 %indvars.iv894.i, %i.pf
  %i.ph = mul i32 %i.kt, %i.pg
  %i.pi = add i32 %i.mc, %i.ph
  %smax = call i32 @llvm.smax.i32(i32 %i.pi, i32 0) ; 2 uses
  %i.pj = zext nneg i32 %smax to i64              ; 2 uses
  %i.pk = add nuw nsw i64 %i.pj, 1
  %i.pl = add i32 %i.pf, %i.buo
  %i.pm = mul i32 %i.kt, %i.pl
  %i.pn = add i32 %i.mc, %i.pm
  %smin = call i32 @llvm.smin.i32(i32 %i.lm, i32 %i.pn)
  %i.po = zext i32 %smin to i64
  %umax = call i64 @llvm.umax.i64(i64 %i.pk, i64 %i.po)
  %i.pp = xor i64 %i.pj, -1
  %i.pq = add nsw i64 %umax, %i.pp                ; 2 uses
  %i.pr = add i32 %i.mu, %smax
  %i.ps = lshr i32 %.0170232.i.us.us.us.i, 1
  %i.pt = add i32 %indvars.iv901.i, %i.ps
  %i.pu = mul i32 %i.ku, %i.pt
  %i.pv = add i32 %i.md, %i.pu
  %smax226 = call i32 @llvm.smax.i32(i32 %i.pv, i32 0)
  %i.pw = add i32 %i.mw, %smax226
  %i.px = mul i32 %i.kv, %i.pw
  %i.py = add i32 %i.pr, %i.px
  %i.pz = lshr i32 %.0170232.i.us.us.us.i, 1      ; 4 uses
  %i.qa = add i32 %i.pz, %indvars.iv901.i
  %i.qb = mul i32 %i.qa, %i.ku
  %i.qc = add i32 %i.qb, %i.md                    ; 2 uses
  %smin903.i = tail call i32 @llvm.smin.i32(i32 %i.qc, i32 0)
  %i.qd = add nsw i32 %smin903.i, %i.ku
  %smax904.i = tail call i32 @llvm.smax.i32(i32 %i.qc, i32 0) ; 2 uses
  %i.qe = add i32 %i.qd, %smax904.i
  %smin905.i = tail call i32 @llvm.smin.i32(i32 %i.lo, i32 %i.qe)
  %i.qf = sub i32 %smin905.i, %smax904.i
  %i.qg = tail call i32 @llvm.umax.i32(i32 %i.qf, i32 1)
  %umax906.i = zext i32 %i.qg to i64
  %i.qh = and i32 %.0170232.i.us.us.us.i, 1       ; 4 uses
  %i.qi = add i32 %i.qh, %indvars.iv894.i
  %i.qj = mul i32 %i.qi, %i.kt
  %i.qk = add i32 %i.qj, %i.mc                    ; 2 uses
  %smin.i = tail call i32 @llvm.smin.i32(i32 %i.qk, i32 0) ; 2 uses
  %i.ql = add nsw i32 %smin.i, %i.kt
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.qk, i32 0) ; 5 uses
  %i.qm = add i32 %i.ql, %smax.i
  %smin898.i = tail call i32 @llvm.smin.i32(i32 %i.lm, i32 %i.qm)
  %i.qn = sub i32 %smin898.i, %smax.i
  %i.qo = tail call i32 @llvm.umax.i32(i32 %i.qn, i32 1)
  %umax899.i = zext i32 %i.qo to i64
  %i.qp = add i32 %i.bx, %i.pz
  %i.qq = mul i32 %i.qp, %i.ku
  %i.qr = add i32 %i.qq, %i.md
  %smax275.i.us.us.us.i = tail call i32 @llvm.smax.i32(i32 %i.qr, i32 0)
  %i.qs = zext nneg i32 %smax275.i.us.us.us.i to i64 ; 4 uses
  %i.qt = add nsw i32 %i.bup, %i.qh
  %i.qu = mul i32 %i.qt, %i.kt
  %i.qv = add i32 %i.qu, %i.mc
  %smax271.i.us.us.us.i = tail call i32 @llvm.smax.i32(i32 %i.qv, i32 0)
  %i.qw = zext nneg i32 %smax271.i.us.us.us.i to i64 ; 13 uses
  %i.qx = add nuw nsw i32 %i.qh, %i.buo           ; 3 uses
  %i.qy = add nsw i32 %i.qx, -1                   ; 2 uses
  %i.qz = add nuw nsw i32 %i.pz, %i.bw            ; 3 uses
  %i.ra = add nsw i32 %i.qz, -1                   ; 2 uses
  %i.rb = mul nsw i32 %i.qy, %i.kt
  %i.rc = add nsw i32 %i.rb, %i.mc                ; 6 uses
  %i.rd = mul nsw i32 %i.ra, %i.ku
  %i.re = add nsw i32 %i.rd, %i.md                ; 6 uses
  %i.rf = mul nuw nsw i32 %i.qh, %i.kt
  %i.rg = zext nneg i32 %i.rf to i64
  %i.rh = getelementptr inbounds nuw [2 x i8], ptr %i.lj, i64 %i.rg
  %i.ri = mul i32 %i.pz, %i.me
  %i.rj = sext i32 %i.ri to i64
  %i.rk = getelementptr inbounds [2 x i8], ptr %i.rh, i64 %i.rj ; 2 uses
  %i.rl = load i32, ptr %i.e, align 16, !tbaa !115
  %i.rm = load i32, ptr %i.p, align 8, !tbaa !80  ; 2 uses
  %i.rn = shl i32 %i.rl, %i.rm                    ; 3 uses
  %i.ro = load i32, ptr %i.g, align 4, !tbaa !114
  %i.rp = shl i32 %i.ro, %i.rm
  %i.rq = load ptr, ptr %i.ak, align 8, !tbaa !215
  %i.rr = mul nsw i32 %i.rn, %i.ra
  %i.rs = add nsw i32 %i.rr, %i.qy
  %i.rt = sext i32 %i.rs to i64
  %i.ru = getelementptr inbounds [10 x i8], ptr %i.rq, i64 %i.rt ; 4 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 10 ; 3 uses
  %i.rw = sext i32 %i.rn to i64
  %i.rx = getelementptr inbounds [10 x i8], ptr %i.ru, i64 %i.rw ; 3 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 10 ; 3 uses
  %i.rz = load ptr, ptr %i.ay, align 8, !tbaa !216 ; 6 uses
  %i.sa = icmp eq i32 %i.qx, 0
  br i1 %i.sa, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not.i.i.us.us.us.i = icmp slt i32 %i.qx, %i.rn ; 2 uses
  %spec.select.i.i.us.us.us.i = select i1 %.not.i.i.us.us.us.i, ptr %i.rv, ptr %i.ru
  %spec.select260.i.i.us.us.us.i = select i1 %.not.i.i.us.us.us.i, ptr %i.ry, ptr %i.rx
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.0228.i.i.us.us.us.i = phi ptr [ %i.ru, %bb.u ], [ %i.rv, %bb.t ] ; 2 uses
  %.0226.i.i.us.us.us.i = phi ptr [ %spec.select.i.i.us.us.us.i, %bb.u ], [ %i.rv, %bb.t ] ; 2 uses
  %.0224.i.i.us.us.us.i = phi ptr [ %i.rx, %bb.u ], [ %i.ry, %bb.t ] ; 3 uses
  %.0222.i.i.us.us.us.i = phi ptr [ %spec.select260.i.i.us.us.us.i, %bb.u ], [ %i.ry, %bb.t ] ; 3 uses
  %i.sb = icmp eq i32 %i.qz, 0
  br i1 %i.sb, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not249.i.i.us.us.us.i = icmp slt i32 %i.qz, %i.rp ; 2 uses
  %spec.select261.i.i.us.us.us.i = select i1 %.not249.i.i.us.us.us.i, ptr %.0224.i.i.us.us.us.i, ptr %.0228.i.i.us.us.us.i
  %spec.select262.i.i.us.us.us.i = select i1 %.not249.i.i.us.us.us.i, ptr %.0222.i.i.us.us.us.i, ptr %.0226.i.i.us.us.us.i
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.1229.i.i.us.us.us.i = phi ptr [ %.0228.i.i.us.us.us.i, %bb.w ], [ %.0224.i.i.us.us.us.i, %bb.v ] ; 20 uses
  %.1227.i.i.us.us.us.i = phi ptr [ %.0226.i.i.us.us.us.i, %bb.w ], [ %.0222.i.i.us.us.us.i, %bb.v ] ; 20 uses
  %.1225.i.i.us.us.us.i = phi ptr [ %spec.select261.i.i.us.us.us.i, %bb.w ], [ %.0224.i.i.us.us.us.i, %bb.v ] ; 20 uses
  %.1223.i.i.us.us.us.i = phi ptr [ %spec.select262.i.i.us.us.us.i, %bb.w ], [ %.0222.i.i.us.us.us.i, %bb.v ] ; 20 uses
  %i.sc = icmp slt i32 %i.rc, 0                   ; 3 uses
  br i1 %i.sc, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.sd = sext i32 %i.rc to i64
  %i.se = sub nsw i64 0, %i.sd                    ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.se
  %i.sg = add nsw i32 %i.rc, %i.kt
  %i.sh = getelementptr inbounds nuw [2 x i8], ptr %i.rk, i64 %i.se
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0237.i.i.us.us.us.i = phi i32 [ %i.sg, %bb.y ], [ %i.kt, %bb.x ] ; 2 uses
  %.0235.i.i.us.us.us.i = phi i32 [ 0, %bb.y ], [ %i.rc, %bb.x ] ; 6 uses
  %.0233.i.i.us.us.us.i = phi ptr [ %i.sf, %bb.y ], [ %i.kw, %bb.x ] ; 3 uses
  %.1231.i.i.us.us.us.i = phi ptr [ %i.sh, %bb.y ], [ %i.rk, %bb.x ] ; 3 uses
  %i.si = add nsw i32 %.0235.i.i.us.us.us.i, %.0237.i.i.us.us.us.i
  %i.sj = icmp sgt i32 %i.si, %i.lm
  %i.sk = sub nsw i32 %i.lm, %.0235.i.i.us.us.us.i
  %spec.select264.i.i.us.us.us.i = select i1 %i.sj, i32 %i.sk, i32 %.0237.i.i.us.us.us.i ; 5 uses
  %i.sl = icmp slt i32 %i.re, 0                   ; 2 uses
  %i.sm = insertelement <2 x ptr> poison, ptr %.1231.i.i.us.us.us.i, i64 0
  %i.sn = insertelement <2 x ptr> %i.sm, ptr %.0233.i.i.us.us.us.i, i64 1
  br i1 %i.sl, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.so = mul nsw i32 %i.re, %i.kv
  %i.sp = sext i32 %i.so to i64
  %i.sq = sub nsw i64 0, %i.sp                    ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %.0233.i.i.us.us.us.i, i64 %i.sq ; 2 uses
  %i.ss = add nsw i32 %i.re, %i.ku
  %i.st = getelementptr inbounds nuw [2 x i8], ptr %.1231.i.i.us.us.us.i, i64 %i.sq ; 2 uses
  %i.su = insertelement <2 x ptr> poison, ptr %i.st, i64 0
  %i.sv = insertelement <2 x ptr> %i.su, ptr %i.sr, i64 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.0239.i.i.us.us.us.i = phi i32 [ %i.ss, %bb.aa ], [ %i.ku, %bb.z ] ; 2 uses
  %.0236.i.i.us.us.us.i = phi i32 [ 0, %bb.aa ], [ %i.re, %bb.z ] ; 6 uses
  %.1234.i.i.us.us.us.i = phi ptr [ %i.sr, %bb.aa ], [ %.0233.i.i.us.us.us.i, %bb.z ] ; 5 uses
  %.3.i.i.us.us.us.i = phi ptr [ %i.st, %bb.aa ], [ %.1231.i.i.us.us.us.i, %bb.z ] ; 2 uses
  %i.sw = phi <2 x ptr> [ %i.sv, %bb.aa ], [ %i.sn, %bb.z ] ; 2 uses
  %i.sx = add nsw i32 %.0236.i.i.us.us.us.i, %.0239.i.i.us.us.us.i
  %i.sy = icmp sgt i32 %i.sx, %i.lo
  %i.sz = sub nsw i32 %i.lo, %.0236.i.i.us.us.us.i
  %spec.select265.i.i.us.us.us.i = select i1 %i.sy, i32 %i.sz, i32 %.0239.i.i.us.us.us.i ; 5 uses
  %i.ta = icmp slt i32 %spec.select264.i.i.us.us.us.i, 1
  %i.tb = icmp slt i32 %spec.select265.i.i.us.us.us.i, 1
  %or.cond5.i.i.us.us.us.i = select i1 %i.ta, i1 true, i1 %i.tb
  br i1 %or.cond5.i.i.us.us.us.i, label %add_yblock.exit.i.us.us.us.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.tc = getelementptr inbounds i8, ptr %i.rz, i64 %i.mj ; 11 uses
  %i.td = getelementptr inbounds i8, ptr %i.tc, i64 %i.mk ; 5 uses
  tail call void @ff_snow_pred_block(ptr noundef nonnull %0, ptr noundef %i.tc, ptr noundef %i.rz, i64 noundef %i.ml, i32 noundef %.0235.i.i.us.us.us.i, i32 noundef %.0236.i.i.us.us.us.i, i32 noundef %spec.select264.i.i.us.us.us.i, i32 noundef %spec.select265.i.i.us.us.us.i, ptr noundef %.1229.i.i.us.us.us.i, i32 noundef %i.le, i32 noundef %i.lm, i32 noundef %i.lo) #12
  %i.te = getelementptr inbounds nuw i8, ptr %.1229.i.i.us.us.us.i, i64 8 ; 3 uses
  %i.tf = load i8, ptr %i.te, align 2, !tbaa !217 ; 4 uses
  %i.tg = and i8 %i.tf, 1                         ; 2 uses
  %.not.i294.i.i.us.us.us.i = icmp eq i8 %i.tg, 0
  %.phi.trans.insert.i.us.us.us.i = getelementptr inbounds nuw i8, ptr %.1227.i.i.us.us.us.i, i64 8 ; 3 uses
  %.pre.i.us.us.us.i = load i8, ptr %.phi.trans.insert.i.us.us.us.i, align 2, !tbaa !217 ; 2 uses
  %i.th = and i8 %.pre.i.us.us.us.i, 1
  %.not16.i295.i.i.us.us.us.i = icmp eq i8 %i.th, 0
  %or.cond.i.us.us.us.i = select i1 %.not.i294.i.i.us.us.us.i, i1 true, i1 %.not16.i295.i.i.us.us.us.i
  br i1 %or.cond.i.us.us.us.i, label %same_block.exit300.i.i.us.us.us.i, label %.split.i.us.us.us.i

.split.i.us.us.us.i:                              ; preds = %bb.ac
  %i.ti = getelementptr inbounds nuw i8, ptr %.1229.i.i.us.us.us.i, i64 5
  %i.tj = load i8, ptr %i.ti, align 1, !tbaa !83
  %i.tk = getelementptr inbounds nuw i8, ptr %.1227.i.i.us.us.us.i, i64 5
  %i.tl = load i8, ptr %i.tk, align 1, !tbaa !83
  %i.tm = getelementptr inbounds nuw i8, ptr %.1229.i.i.us.us.us.i, i64 6
  %i.tn = load i8, ptr %i.tm, align 2, !tbaa !83
  %i.to = getelementptr inbounds nuw i8, ptr %.1227.i.i.us.us.us.i, i64 6
  %i.tp = load i8, ptr %i.to, align 2, !tbaa !83
  %i.tq = getelementptr inbounds nuw i8, ptr %.1229.i.i.us.us.us.i, i64 7
  %i.tr = load i8, ptr %i.tq, align 1, !tbaa !83
  %i.ts = getelementptr inbounds nuw i8, ptr %.1227.i.i.us.us.us.i, i64 7
  %i.tt = load i8, ptr %i.ts, align 1, !tbaa !83
  %i.tu = icmp eq i8 %i.tj, %i.tl
  %i.tv = icmp eq i8 %i.tn, %i.tp
  %i.tw = and i1 %i.tu, %i.tv
  %i.tx = icmp eq i8 %i.tr, %i.tt
  %.not18.i296.i.i.us.us.us.i = and i1 %i.tw, %i.tx
  br i1 %.not18.i296.i.i.us.us.us.i, label %bb.ae, label %bb.ad

same_block.exit300.i.i.us.us.us.i:                ; preds = %bb.ac
  %i.ty = load i16, ptr %.1229.i.i.us.us.us.i, align 2, !tbaa !219
  %i.tz = sext i16 %i.ty to i32
  %i.ua = load i16, ptr %.1227.i.i.us.us.us.i, align 2, !tbaa !219
  %i.ub = sext i16 %i.ua to i32
  %i.uc = sub nsw i32 %i.tz, %i.ub
  %i.ud = getelementptr inbounds nuw i8, ptr %.1229.i.i.us.us.us.i, i64 2
  %i.ue = load i16, ptr %i.ud, align 2, !tbaa !220
  %i.uf = sext i16 %i.ue to i32
  %i.ug = getelementptr inbounds nuw i8, ptr %.1227.i.i.us.us.us.i, i64 2
  %i.uh = load i16, ptr %i.ug, align 2, !tbaa !220
  %i.ui = sext i16 %i.uh to i32
  %i.uj = sub nsw i32 %i.uf, %i.ui
  %i.uk = getelementptr inbounds nuw i8, ptr %.1229.i.i.us.us.us.i, i64 4
  %i.ul = load i8, ptr %i.uk, align 2, !tbaa !221
  %i.um = zext i8 %i.ul to i32
  %i.un = getelementptr inbounds nuw i8, ptr %.1227.i.i.us.us.us.i, i64 4
  %i.uo = load i8, ptr %i.un, align 2, !tbaa !221
  %i.up = zext i8 %i.uo to i32
  %i.uq = sub nsw i32 %i.um, %i.up
  %i.ur = xor i8 %.pre.i.us.us.us.i, %i.tf
  %i.us = and i8 %i.ur, 1
  %i.ut = zext nneg i8 %i.us to i32
  %i.uu = or i32 %i.uc, %i.ut
  %i.uv = or i32 %i.uu, %i.uj
  %i.uw = or i32 %i.uv, %i.uq
  %.not17.i299.i.i.us.us.us.i = icmp eq i32 %i.uw, 0
  br i1 %.not17.i299.i.i.us.us.us.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %same_block.exit300.i.i.us.us.us.i, %.split.i.us.us.us.i
  %i.ux = getelementptr inbounds i8, ptr %i.td, i64 %i.mk
  tail call void @ff_snow_pred_block(ptr noundef nonnull %0, ptr noundef %i.td, ptr noundef %i.rz, i64 noundef %i.ml, i32 noundef %.0235.i.i.us.us.us.i, i32 noundef %.0236.i.i.us.us.us.i, i32 noundef %spec.select264.i.i.us.us.us.i, i32 noundef %spec.select265.i.i.us.us.us.i, ptr noundef nonnull %.1227.i.i.us.us.us.i, i32 noundef %i.le, i32 noundef %i.lm, i32 noundef %i.lo) #12
  %.pre281.i.us.us.us.i = load i8, ptr %i.te, align 2, !tbaa !217 ; 2 uses
  %.pre976.i = and i8 %.pre281.i.us.us.us.i, 1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %same_block.exit300.i.i.us.us.us.i, %.split.i.us.us.us.i
  %.pre-phi977.i = phi i8 [ %.pre976.i, %bb.ad ], [ %i.tg, %same_block.exit300.i.i.us.us.us.i ], [ 1, %.split.i.us.us.us.i ] ; 4 uses
  %i.uy = phi i8 [ %.pre281.i.us.us.us.i, %bb.ad ], [ %i.tf, %same_block.exit300.i.i.us.us.us.i ], [ %i.tf, %.split.i.us.us.us.i ] ; 5 uses
  %.sroa.7.0.i.us.us.us.i = phi ptr [ %i.td, %bb.ad ], [ %i.tc, %same_block.exit300.i.i.us.us.us.i ], [ %i.tc, %.split.i.us.us.us.i ] ; 8 uses
  %.0221.i.i.us.us.us.i = phi ptr [ %i.ux, %bb.ad ], [ %i.td, %same_block.exit300.i.i.us.us.us.i ], [ %i.td, %.split.i.us.us.us.i ] ; 7 uses
  %.not.i287.i.i.us.us.us.i = icmp eq i8 %.pre-phi977.i, 0
  %.phi.trans.insert283.i.us.us.us.i = getelementptr inbounds nuw i8, ptr %.1225.i.i.us.us.us.i, i64 8 ; 2 uses
  %.pre284.i.us.us.us.i = load i8, ptr %.phi.trans.insert283.i.us.us.us.i, align 2, !tbaa !217 ; 3 uses
  %i.uz = and i8 %.pre284.i.us.us.us.i, 1
  %.not16.i288.i.i.us.us.us.i = icmp eq i8 %i.uz, 0 ; 2 uses
  %or.cond321.i.us.us.us.i = select i1 %.not.i287.i.i.us.us.us.i, i1 true, i1 %.not16.i288.i.i.us.us.us.i
  br i1 %or.cond321.i.us.us.us.i, label %same_block.exit293.i.i.us.us.us.i, label %.split298.i.us.us.us.i

.split298.i.us.us.us.i:                           ; preds = %bb.ae
  %i.va = getelementptr inbounds nuw i8, ptr %.1229.i.i.us.us.us.i, i64 5
  %i.vb = load i8, ptr %i.va, align 1, !tbaa !83
  %i.vc = getelementptr inbounds nuw i8, ptr %.1225.i.i.us.us.us.i, i64 5
  %i.vd = load i8, ptr %i.vc, align 1, !tbaa !83
  %i.ve = getelementptr inbounds nuw i8, ptr %.1229.i.i.us.us.us.i, i64 6
  %i.vf = load i8, ptr %i.ve, align 2, !tbaa !83
  %i.vg = getelementptr inbounds nuw i8, ptr %.1225.i.i.us.us.us.i, i64 6
  %i.vh = load i8, ptr %i.vg, align 2, !tbaa !83
  %i.vi = getelementptr inbounds nuw i8, ptr %.1229.i.i.us.us.us.i, i64 7
  %i.vj = load i8, ptr %i.vi, align 1, !tbaa !83
  %i.vk = getelementptr inbounds nuw i8, ptr %.1225.i.i.us.us.us.i, i64 7
  %i.vl = load i8, ptr %i.vk, align 1, !tbaa !83
  %i.vm = icmp eq i8 %i.vb, %i.vd
  %i.vn = icmp eq i8 %i.vf, %i.vh
  %i.vo = and i1 %i.vm, %i.vn
  %i.vp = icmp eq i8 %i.vj, %i.vl
  %.not18.i289.i.i.us.us.us.i = and i1 %i.vo, %i.vp
  br i1 %.not18.i289.i.i.us.us.us.i, label %bb.ah, label %bb.af

same_block.exit293.i.i.us.us.us.i:                ; preds = %bb.ae
  %i.vq = load i16, ptr %.1229.i.i.us.us.us.i, align 2, !tbaa !219
  %i.vr = sext i16 %i.vq to i32
  %i.vs = load i16, ptr %.1225.i.i.us.us.us.i, align 2, !tbaa !219
  %i.vt = sext i16 %i.vs to i32
  %i.vu = sub nsw i32 %i.vr, %i.vt
  %i.vv = getelementptr inbounds nuw i8, ptr %.1229.i.i.us.us.us.i, i64 2
  %i.vw = load i16, ptr %i.vv, align 2, !tbaa !220
  %i.vx = sext i16 %i.vw to i32
  %i.vy = getelementptr inbounds nuw i8, ptr %.1225.i.i.us.us.us.i, i64 2
  %i.vz = load i16, ptr %i.vy, align 2, !tbaa !220
  %i.wa = sext i16 %i.vz to i32
  %i.wb = sub nsw i32 %i.vx, %i.wa
  %i.wc = getelementptr inbounds nuw i8, ptr %.1229.i.i.us.us.us.i, i64 4
  %i.wd = load i8, ptr %i.wc, align 2, !tbaa !221
  %i.we = zext i8 %i.wd to i32
  %i.wf = getelementptr inbounds nuw i8, ptr %.1225.i.i.us.us.us.i, i64 4
  %i.wg = load i8, ptr %i.wf, align 2, !tbaa !221
  %i.wh = zext i8 %i.wg to i32
  %i.wi = sub nsw i32 %i.we, %i.wh
  %i.wj = xor i8 %.pre284.i.us.us.us.i, %i.uy
  %i.wk = and i8 %i.wj, 1
  %i.wl = zext nneg i8 %i.wk to i32
  %i.wm = or i32 %i.vu, %i.wl
  %i.wn = or i32 %i.wm, %i.wb
  %i.wo = or i32 %i.wn, %i.wi
  %.not17.i292.i.i.us.us.us.i = icmp eq i32 %i.wo, 0
  br i1 %.not17.i292.i.i.us.us.us.i, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %same_block.exit293.i.i.us.us.us.i, %.split298.i.us.us.us.i
  %i.wp = load i8, ptr %.phi.trans.insert.i.us.us.us.i, align 2, !tbaa !217 ; 2 uses
  %i.wq = and i8 %i.wp, 1
  %.not.i280.i.i.us.us.us.i = icmp eq i8 %i.wq, 0
  %or.cond322.i.us.us.us.i = select i1 %.not.i280.i.i.us.us.us.i, i1 true, i1 %.not16.i288.i.i.us.us.us.i
  br i1 %or.cond322.i.us.us.us.i, label %same_block.exit286.i.i.us.us.us.i, label %.split299.i.us.us.us.i

.split299.i.us.us.us.i:                           ; preds = %bb.af
  %i.wr = getelementptr inbounds nuw i8, ptr %.1227.i.i.us.us.us.i, i64 5
  %i.ws = load i8, ptr %i.wr, align 1, !tbaa !83
  %i.wt = getelementptr inbounds nuw i8, ptr %.1225.i.i.us.us.us.i, i64 5
  %i.wu = load i8, ptr %i.wt, align 1, !tbaa !83
  %i.wv = getelementptr inbounds nuw i8, ptr %.1227.i.i.us.us.us.i, i64 6
  %i.ww = load i8, ptr %i.wv, align 2, !tbaa !83
  %i.wx = getelementptr inbounds nuw i8, ptr %.1225.i.i.us.us.us.i, i64 6
  %i.wy = load i8, ptr %i.wx, align 2, !tbaa !83
  %i.wz = getelementptr inbounds nuw i8, ptr %.1227.i.i.us.us.us.i, i64 7
  %i.xa = load i8, ptr %i.wz, align 1, !tbaa !83
  %i.xb = getelementptr inbounds nuw i8, ptr %.1225.i.i.us.us.us.i, i64 7
  %i.xc = load i8, ptr %i.xb, align 1, !tbaa !83
  %i.xd = icmp eq i8 %i.ws, %i.wu
  %i.xe = icmp eq i8 %i.ww, %i.wy
  %i.xf = and i1 %i.xd, %i.xe
  %i.xg = icmp eq i8 %i.xa, %i.xc
  %.not18.i282.i.i.us.us.us.i = and i1 %i.xf, %i.xg
  br i1 %.not18.i282.i.i.us.us.us.i, label %bb.ah, label %bb.ag

same_block.exit286.i.i.us.us.us.i:                ; preds = %bb.af
  %i.xh = load i16, ptr %.1227.i.i.us.us.us.i, align 2, !tbaa !219
  %i.xi = sext i16 %i.xh to i32
  %i.xj = load i16, ptr %.1225.i.i.us.us.us.i, align 2, !tbaa !219
  %i.xk = sext i16 %i.xj to i32
  %i.xl = sub nsw i32 %i.xi, %i.xk
  %i.xm = getelementptr inbounds nuw i8, ptr %.1227.i.i.us.us.us.i, i64 2
  %i.xn = load i16, ptr %i.xm, align 2, !tbaa !220
  %i.xo = sext i16 %i.xn to i32
  %i.xp = getelementptr inbounds nuw i8, ptr %.1225.i.i.us.us.us.i, i64 2
  %i.xq = load i16, ptr %i.xp, align 2, !tbaa !220
  %i.xr = sext i16 %i.xq to i32
  %i.xs = sub nsw i32 %i.xo, %i.xr
  %i.xt = getelementptr inbounds nuw i8, ptr %.1227.i.i.us.us.us.i, i64 4
  %i.xu = load i8, ptr %i.xt, align 2, !tbaa !221
  %i.xv = zext i8 %i.xu to i32
  %i.xw = getelementptr inbounds nuw i8, ptr %.1225.i.i.us.us.us.i, i64 4
  %i.xx = load i8, ptr %i.xw, align 2, !tbaa !221
  %i.xy = zext i8 %i.xx to i32
  %i.xz = sub nsw i32 %i.xv, %i.xy
  %i.ya = xor i8 %i.wp, %.pre284.i.us.us.us.i
  %i.yb = and i8 %i.ya, 1
  %i.yc = zext nneg i8 %i.yb to i32
  %i.yd = or i32 %i.xl, %i.yc
  %i.ye = or i32 %i.yd, %i.xs
  %i.yf = or i32 %i.ye, %i.xz
  %.not17.i285.i.i.us.us.us.i = icmp eq i32 %i.yf, 0
  br i1 %.not17.i285.i.i.us.us.us.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %same_block.exit286.i.i.us.us.us.i, %.split299.i.us.us.us.i
  %i.yg = getelementptr inbounds i8, ptr %.0221.i.i.us.us.us.i, i64 %i.mk
  tail call void @ff_snow_pred_block(ptr noundef nonnull %0, ptr noundef %.0221.i.i.us.us.us.i, ptr noundef %i.rz, i64 noundef %i.ml, i32 noundef %.0235.i.i.us.us.us.i, i32 noundef %.0236.i.i.us.us.us.i, i32 noundef %spec.select264.i.i.us.us.us.i, i32 noundef %spec.select265.i.i.us.us.us.i, ptr noundef nonnull %.1225.i.i.us.us.us.i, i32 noundef %i.le, i32 noundef %i.lm, i32 noundef %i.lo) #12
  %.pre285.i.us.us.us.i = load i8, ptr %i.te, align 2, !tbaa !217 ; 2 uses
  %.pre978.i = and i8 %.pre285.i.us.us.us.i, 1
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %same_block.exit286.i.i.us.us.us.i, %.split299.i.us.us.us.i, %same_block.exit293.i.i.us.us.us.i, %.split298.i.us.us.us.i
  %.pre-phi979.i = phi i8 [ %.pre978.i, %bb.ag ], [ %.pre-phi977.i, %same_block.exit286.i.i.us.us.us.i ], [ %.pre-phi977.i, %.split299.i.us.us.us.i ], [ %.pre-phi977.i, %same_block.exit293.i.i.us.us.us.i ], [ 1, %.split298.i.us.us.us.i ]
  %i.yh = phi i8 [ %.pre285.i.us.us.us.i, %bb.ag ], [ %i.uy, %same_block.exit286.i.i.us.us.us.i ], [ %i.uy, %.split299.i.us.us.us.i ], [ %i.uy, %same_block.exit293.i.i.us.us.us.i ], [ %i.uy, %.split298.i.us.us.us.i ]
  %.sroa.12.0.i.us.us.us.i = phi ptr [ %.0221.i.i.us.us.us.i, %bb.ag ], [ %.sroa.7.0.i.us.us.us.i, %same_block.exit286.i.i.us.us.us.i ], [ %.sroa.7.0.i.us.us.us.i, %.split299.i.us.us.us.i ], [ %i.tc, %same_block.exit293.i.i.us.us.us.i ], [ %i.tc, %.split298.i.us.us.us.i ] ; 6 uses
  %.1.i.i.us.us.us.i = phi ptr [ %i.yg, %bb.ag ], [ %.0221.i.i.us.us.us.i, %same_block.exit286.i.i.us.us.us.i ], [ %.0221.i.i.us.us.us.i, %.split299.i.us.us.us.i ], [ %.0221.i.i.us.us.us.i, %same_block.exit293.i.i.us.us.us.i ], [ %.0221.i.i.us.us.us.i, %.split298.i.us.us.us.i ] ; 2 uses
  %.not.i273.i.i.us.us.us.i = icmp eq i8 %.pre-phi979.i, 0
  %.phi.trans.insert287.i.us.us.us.i = getelementptr inbounds nuw i8, ptr %.1223.i.i.us.us.us.i, i64 8
  %.pre288.i.us.us.us.i = load i8, ptr %.phi.trans.insert287.i.us.us.us.i, align 2, !tbaa !217 ; 4 uses
  %i.yi = and i8 %.pre288.i.us.us.us.i, 1
  %.not16.i274.i.i.us.us.us.i = icmp eq i8 %i.yi, 0 ; 3 uses
  %or.cond323.i.us.us.us.i = select i1 %.not.i273.i.i.us.us.us.i, i1 true, i1 %.not16.i274.i.i.us.us.us.i
  br i1 %or.cond323.i.us.us.us.i, label %same_block.exit279.i.i.us.us.us.i, label %.split300.i.us.us.us.i

.split300.i.us.us.us.i:                           ; preds = %bb.ah
  %i.yj = getelementptr inbounds nuw i8, ptr %.1229.i.i.us.us.us.i, i64 5
  %i.yk = load i8, ptr %i.yj, align 1, !tbaa !83
  %i.yl = getelementptr inbounds nuw i8, ptr %.1223.i.i.us.us.us.i, i64 5
  %i.ym = load i8, ptr %i.yl, align 1, !tbaa !83
  %i.yn = getelementptr inbounds nuw i8, ptr %.1229.i.i.us.us.us.i, i64 6
  %i.yo = load i8, ptr %i.yn, align 2, !tbaa !83
  %i.yp = getelementptr inbounds nuw i8, ptr %.1223.i.i.us.us.us.i, i64 6
  %i.yq = load i8, ptr %i.yp, align 2, !tbaa !83
  %i.yr = getelementptr inbounds nuw i8, ptr %.1229.i.i.us.us.us.i, i64 7
  %i.ys = load i8, ptr %i.yr, align 1, !tbaa !83
  %i.yt = getelementptr inbounds nuw i8, ptr %.1223.i.i.us.us.us.i, i64 7
  %i.yu = load i8, ptr %i.yt, align 1, !tbaa !83
  %i.yv = icmp eq i8 %i.yk, %i.ym
  %i.yw = icmp eq i8 %i.yo, %i.yq
  %i.yx = and i1 %i.yv, %i.yw
  %i.yy = icmp eq i8 %i.ys, %i.yu
  %.not18.i275.i.i.us.us.us.i = and i1 %i.yx, %i.yy
  br i1 %.not18.i275.i.i.us.us.us.i, label %.lr.ph.preheader.i.us.us.us.i, label %bb.ai

same_block.exit279.i.i.us.us.us.i:                ; preds = %bb.ah
  %i.yz = load i16, ptr %.1229.i.i.us.us.us.i, align 2, !tbaa !219
  %i.za = sext i16 %i.yz to i32
  %i.zb = load i16, ptr %.1223.i.i.us.us.us.i, align 2, !tbaa !219
  %i.zc = sext i16 %i.zb to i32
  %i.zd = sub nsw i32 %i.za, %i.zc
  %i.ze = getelementptr inbounds nuw i8, ptr %.1229.i.i.us.us.us.i, i64 2
  %i.zf = load i16, ptr %i.ze, align 2, !tbaa !220
  %i.zg = sext i16 %i.zf to i32
  %i.zh = getelementptr inbounds nuw i8, ptr %.1223.i.i.us.us.us.i, i64 2
  %i.zi = load i16, ptr %i.zh, align 2, !tbaa !220
  %i.zj = sext i16 %i.zi to i32
  %i.zk = sub nsw i32 %i.zg, %i.zj
  %i.zl = getelementptr inbounds nuw i8, ptr %.1229.i.i.us.us.us.i, i64 4
  %i.zm = load i8, ptr %i.zl, align 2, !tbaa !221
  %i.zn = zext i8 %i.zm to i32
  %i.zo = getelementptr inbounds nuw i8, ptr %.1223.i.i.us.us.us.i, i64 4
  %i.zp = load i8, ptr %i.zo, align 2, !tbaa !221
  %i.zq = zext i8 %i.zp to i32
  %i.zr = sub nsw i32 %i.zn, %i.zq
  %i.zs = xor i8 %.pre288.i.us.us.us.i, %i.yh
  %i.zt = and i8 %i.zs, 1
  %i.zu = zext nneg i8 %i.zt to i32
  %i.zv = or i32 %i.zd, %i.zu
  %i.zw = or i32 %i.zv, %i.zk
  %i.zx = or i32 %i.zw, %i.zr
  %.not17.i278.i.i.us.us.us.i = icmp eq i32 %i.zx, 0
  br i1 %.not17.i278.i.i.us.us.us.i, label %.lr.ph.preheader.i.us.us.us.i, label %bb.ai

bb.ai:                                            ; preds = %same_block.exit279.i.i.us.us.us.i, %.split300.i.us.us.us.i
  %i.zy = load i8, ptr %.phi.trans.insert.i.us.us.us.i, align 2, !tbaa !217 ; 2 uses
  %i.zz = and i8 %i.zy, 1
  %.not.i266.i.i.us.us.us.i = icmp eq i8 %i.zz, 0
  %or.cond324.i.us.us.us.i = select i1 %.not.i266.i.i.us.us.us.i, i1 true, i1 %.not16.i274.i.i.us.us.us.i
  br i1 %or.cond324.i.us.us.us.i, label %same_block.exit272.i.i.us.us.us.i, label %.split301.i.us.us.us.i

.split301.i.us.us.us.i:                           ; preds = %bb.ai
  %i.aaa = getelementptr inbounds nuw i8, ptr %.1227.i.i.us.us.us.i, i64 5
  %i.aab = load i8, ptr %i.aaa, align 1, !tbaa !83
  %i.aac = getelementptr inbounds nuw i8, ptr %.1223.i.i.us.us.us.i, i64 5
  %i.aad = load i8, ptr %i.aac, align 1, !tbaa !83
  %i.aae = getelementptr inbounds nuw i8, ptr %.1227.i.i.us.us.us.i, i64 6
  %i.aaf = load i8, ptr %i.aae, align 2, !tbaa !83
  %i.aag = getelementptr inbounds nuw i8, ptr %.1223.i.i.us.us.us.i, i64 6
  %i.aah = load i8, ptr %i.aag, align 2, !tbaa !83
  %i.aai = getelementptr inbounds nuw i8, ptr %.1227.i.i.us.us.us.i, i64 7
  %i.aaj = load i8, ptr %i.aai, align 1, !tbaa !83
  %i.aak = getelementptr inbounds nuw i8, ptr %.1223.i.i.us.us.us.i, i64 7
  %i.aal = load i8, ptr %i.aak, align 1, !tbaa !83
  %i.aam = icmp eq i8 %i.aab, %i.aad
  %i.aan = icmp eq i8 %i.aaf, %i.aah
  %i.aao = and i1 %i.aam, %i.aan
  %i.aap = icmp eq i8 %i.aaj, %i.aal
  %.not18.i268.i.i.us.us.us.i = and i1 %i.aao, %i.aap
  br i1 %.not18.i268.i.i.us.us.us.i, label %.lr.ph.preheader.i.us.us.us.i, label %bb.aj

same_block.exit272.i.i.us.us.us.i:                ; preds = %bb.ai
  %i.aaq = load i16, ptr %.1227.i.i.us.us.us.i, align 2, !tbaa !219
  %i.aar = sext i16 %i.aaq to i32
  %i.aas = load i16, ptr %.1223.i.i.us.us.us.i, align 2, !tbaa !219
  %i.aat = sext i16 %i.aas to i32
  %i.aau = sub nsw i32 %i.aar, %i.aat
  %i.aav = getelementptr inbounds nuw i8, ptr %.1227.i.i.us.us.us.i, i64 2
  %i.aaw = load i16, ptr %i.aav, align 2, !tbaa !220
  %i.aax = sext i16 %i.aaw to i32
  %i.aay = getelementptr inbounds nuw i8, ptr %.1223.i.i.us.us.us.i, i64 2
  %i.aaz = load i16, ptr %i.aay, align 2, !tbaa !220
  %i.aba = sext i16 %i.aaz to i32
  %i.abb = sub nsw i32 %i.aax, %i.aba
  %i.abc = getelementptr inbounds nuw i8, ptr %.1227.i.i.us.us.us.i, i64 4
  %i.abd = load i8, ptr %i.abc, align 2, !tbaa !221
  %i.abe = zext i8 %i.abd to i32
  %i.abf = getelementptr inbounds nuw i8, ptr %.1223.i.i.us.us.us.i, i64 4
  %i.abg = load i8, ptr %i.abf, align 2, !tbaa !221
  %i.abh = zext i8 %i.abg to i32
  %i.abi = sub nsw i32 %i.abe, %i.abh
  %i.abj = xor i8 %i.zy, %.pre288.i.us.us.us.i
  %i.abk = and i8 %i.abj, 1
  %i.abl = zext nneg i8 %i.abk to i32
  %i.abm = or i32 %i.aau, %i.abl
  %i.abn = or i32 %i.abm, %i.abb
  %i.abo = or i32 %i.abn, %i.abi
  %.not17.i271.i.i.us.us.us.i = icmp eq i32 %i.abo, 0
  br i1 %.not17.i271.i.i.us.us.us.i, label %.lr.ph.preheader.i.us.us.us.i, label %bb.aj

bb.aj:                                            ; preds = %same_block.exit272.i.i.us.us.us.i, %.split301.i.us.us.us.i
  %i.abp = load i8, ptr %.phi.trans.insert283.i.us.us.us.i, align 2, !tbaa !217 ; 2 uses
  %i.abq = and i8 %i.abp, 1
  %.not.i.i.i.us.us.us.i = icmp eq i8 %i.abq, 0
  %or.cond325.i.us.us.us.i = select i1 %.not.i.i.i.us.us.us.i, i1 true, i1 %.not16.i274.i.i.us.us.us.i
  br i1 %or.cond325.i.us.us.us.i, label %same_block.exit.i.i.us.us.us.i, label %.split302.i.us.us.us.i

.split302.i.us.us.us.i:                           ; preds = %bb.aj
  %i.abr = getelementptr inbounds nuw i8, ptr %.1225.i.i.us.us.us.i, i64 5
  %i.abs = load i8, ptr %i.abr, align 1, !tbaa !83
  %i.abt = getelementptr inbounds nuw i8, ptr %.1223.i.i.us.us.us.i, i64 5
  %i.abu = load i8, ptr %i.abt, align 1, !tbaa !83
  %i.abv = getelementptr inbounds nuw i8, ptr %.1225.i.i.us.us.us.i, i64 6
  %i.abw = load i8, ptr %i.abv, align 2, !tbaa !83
  %i.abx = getelementptr inbounds nuw i8, ptr %.1223.i.i.us.us.us.i, i64 6
  %i.aby = load i8, ptr %i.abx, align 2, !tbaa !83
  %i.abz = getelementptr inbounds nuw i8, ptr %.1225.i.i.us.us.us.i, i64 7
  %i.aca = load i8, ptr %i.abz, align 1, !tbaa !83
  %i.acb = getelementptr inbounds nuw i8, ptr %.1223.i.i.us.us.us.i, i64 7
  %i.acc = load i8, ptr %i.acb, align 1, !tbaa !83
  %i.acd = icmp eq i8 %i.abs, %i.abu
  %i.ace = icmp eq i8 %i.abw, %i.aby
  %i.acf = and i1 %i.acd, %i.ace
  %i.acg = icmp eq i8 %i.aca, %i.acc
  %.not18.i.i.i.us.us.us.i = and i1 %i.acf, %i.acg
  br i1 %.not18.i.i.i.us.us.us.i, label %.lr.ph.preheader.i.us.us.us.i, label %bb.ak

same_block.exit.i.i.us.us.us.i:                   ; preds = %bb.aj
  %i.ach = load i16, ptr %.1225.i.i.us.us.us.i, align 2, !tbaa !219
  %i.aci = sext i16 %i.ach to i32
  %i.acj = load i16, ptr %.1223.i.i.us.us.us.i, align 2, !tbaa !219
  %i.ack = sext i16 %i.acj to i32
  %i.acl = sub nsw i32 %i.aci, %i.ack
  %i.acm = getelementptr inbounds nuw i8, ptr %.1225.i.i.us.us.us.i, i64 2
  %i.acn = load i16, ptr %i.acm, align 2, !tbaa !220
  %i.aco = sext i16 %i.acn to i32
  %i.acp = getelementptr inbounds nuw i8, ptr %.1223.i.i.us.us.us.i, i64 2
  %i.acq = load i16, ptr %i.acp, align 2, !tbaa !220
  %i.acr = sext i16 %i.acq to i32
  %i.acs = sub nsw i32 %i.aco, %i.acr
  %i.act = getelementptr inbounds nuw i8, ptr %.1225.i.i.us.us.us.i, i64 4
  %i.acu = load i8, ptr %i.act, align 2, !tbaa !221
  %i.acv = zext i8 %i.acu to i32
  %i.acw = getelementptr inbounds nuw i8, ptr %.1223.i.i.us.us.us.i, i64 4
  %i.acx = load i8, ptr %i.acw, align 2, !tbaa !221
  %i.acy = zext i8 %i.acx to i32
  %i.acz = sub nsw i32 %i.acv, %i.acy
  %i.ada = xor i8 %i.abp, %.pre288.i.us.us.us.i
  %i.adb = and i8 %i.ada, 1
  %i.adc = zext nneg i8 %i.adb to i32
  %i.add = or i32 %i.acl, %i.adc
  %i.ade = or i32 %i.add, %i.acs
  %i.adf = or i32 %i.ade, %i.acz
  %.not17.i.i.i.us.us.us.i = icmp eq i32 %i.adf, 0
  br i1 %.not17.i.i.i.us.us.us.i, label %.lr.ph.preheader.i.us.us.us.i, label %bb.ak

bb.ak:                                            ; preds = %same_block.exit.i.i.us.us.us.i, %.split302.i.us.us.us.i
  tail call void @ff_snow_pred_block(ptr noundef nonnull %0, ptr noundef %.1.i.i.us.us.us.i, ptr noundef %i.rz, i64 noundef %i.ml, i32 noundef %.0235.i.i.us.us.us.i, i32 noundef %.0236.i.i.us.us.us.i, i32 noundef %spec.select264.i.i.us.us.us.i, i32 noundef %spec.select265.i.i.us.us.us.i, ptr noundef nonnull %.1223.i.i.us.us.us.i, i32 noundef %i.le, i32 noundef %i.lm, i32 noundef %i.lo) #12
  br label %.lr.ph.preheader.i.us.us.us.i

.lr.ph.preheader.i.us.us.us.i:                    ; preds = %bb.ak, %same_block.exit.i.i.us.us.us.i, %.split302.i.us.us.us.i, %same_block.exit272.i.i.us.us.us.i, %.split301.i.us.us.us.i, %same_block.exit279.i.i.us.us.us.i, %.split300.i.us.us.us.i
  %.sroa.17.0.i.us.us.us.i = phi ptr [ %.1.i.i.us.us.us.i, %bb.ak ], [ %.sroa.7.0.i.us.us.us.i, %same_block.exit272.i.i.us.us.us.i ], [ %i.tc, %same_block.exit279.i.i.us.us.us.i ], [ %.sroa.12.0.i.us.us.us.i, %same_block.exit.i.i.us.us.us.i ], [ %i.tc, %.split300.i.us.us.us.i ], [ %.sroa.7.0.i.us.us.us.i, %.split301.i.us.us.us.i ], [ %.sroa.12.0.i.us.us.us.i, %.split302.i.us.us.us.i ] ; 4 uses
  %i.adg = getelementptr i8, ptr %.3.i.i.us.us.us.i, i64 %i.nm
  %scevgep264 = getelementptr i8, ptr %i.adg, i64 %i.nv ; 3 uses
  %i.adh = getelementptr i8, ptr %.1234.i.i.us.us.us.i, i64 %i.mn
  %scevgep265 = getelementptr i8, ptr %i.adh, i64 %i.mp ; 2 uses
  %scevgep266 = getelementptr i8, ptr %scevgep265, i64 %i.nx
  %scevgep267 = getelementptr i8, ptr %.1234.i.i.us.us.us.i, i64 %i.mp ; 2 uses
  %scevgep268 = getelementptr i8, ptr %scevgep267, i64 %i.nx
  %scevgep269 = getelementptr i8, ptr %.1234.i.i.us.us.us.i, i64 %i.mn ; 2 uses
  %scevgep270 = getelementptr i8, ptr %scevgep269, i64 %i.nx
  %scevgep271 = getelementptr i8, ptr %.1234.i.i.us.us.us.i, i64 %i.nx
  %scevgep272 = getelementptr i8, ptr %i.rz, i64 %i.mj
  %scevgep273 = getelementptr i8, ptr %scevgep272, i64 %i.nz
  %scevgep274 = getelementptr i8, ptr %.sroa.7.0.i.us.us.us.i, i64 %i.nz
  %scevgep275 = getelementptr i8, ptr %.sroa.12.0.i.us.us.us.i, i64 %i.nz
  %scevgep276 = getelementptr i8, ptr %.sroa.17.0.i.us.us.us.i, i64 %i.nz
  %i.adi = insertelement <8 x ptr> poison, ptr %scevgep266, i64 0
  %i.adj = insertelement <8 x ptr> %i.adi, ptr %scevgep268, i64 1
  %i.adk = insertelement <8 x ptr> %i.adj, ptr %scevgep270, i64 2
  %i.adl = insertelement <8 x ptr> %i.adk, ptr %scevgep264, i64 3
  %i.adm = insertelement <8 x ptr> %i.adl, ptr %scevgep273, i64 4
  %i.adn = insertelement <8 x ptr> %i.adm, ptr %scevgep274, i64 5
  %i.ado = insertelement <8 x ptr> %i.adn, ptr %scevgep275, i64 6
  %i.adp = insertelement <8 x ptr> %i.ado, ptr %scevgep276, i64 7
  %i.adq = insertelement <4 x ptr> poison, ptr %i.tc, i64 0
  %i.adr = insertelement <4 x ptr> %i.adq, ptr %.sroa.7.0.i.us.us.us.i, i64 1
  %i.ads = insertelement <4 x ptr> %i.adr, ptr %.sroa.12.0.i.us.us.us.i, i64 2
  %i.adt = insertelement <4 x ptr> %i.ads, ptr %.sroa.17.0.i.us.us.us.i, i64 3
  %i.adu = insertelement <4 x ptr> poison, ptr %scevgep264, i64 0
  %i.adv = shufflevector <4 x ptr> %i.adu, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.adw = insertelement <2 x ptr> poison, ptr %scevgep265, i64 0
  %i.adx = insertelement <2 x ptr> %i.adw, ptr %scevgep267, i64 1
  %i.ady = insertelement <2 x ptr> poison, ptr %scevgep264, i64 0 ; 2 uses
  %i.adz = shufflevector <2 x ptr> %i.ady, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.aea = insertelement <2 x ptr> poison, ptr %scevgep269, i64 0
  %i.aeb = insertelement <2 x ptr> %i.ady, ptr %scevgep271, i64 1
  %i.aec = shufflevector <2 x ptr> %i.aea, <2 x ptr> %i.sw, <2 x i32> <i32 0, i32 2>
  %i.aed = add i32 %i.kt, %smin.i
  %i.aee = add i32 %i.aed, %smax.i
  %i.aef = call i32 @llvm.smin.i32(i32 %i.lm, i32 %i.aee)
  %i.aeg = sub i32 %i.aef, %smax.i                ; 2 uses
  %i.aeh = call i32 @llvm.umax.i32(i32 %i.aeg, i32 1)
  %i.aei = zext i32 %i.aeh to i64                 ; 2 uses
  %min.iters.check313 = icmp ult i32 %i.aeg, 16
  %i.aej = shufflevector <2 x ptr> %i.sw, <2 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0>
  %i.aek = icmp ult <8 x ptr> %i.aej, %i.adp
  %i.ael = icmp ult <2 x ptr> %i.adx, %i.adz
  %i.aem = icmp ult <2 x ptr> %i.aec, %i.aeb
  %i.aen = icmp ult <4 x ptr> %i.adt, %i.adv
  %i.aeo = shufflevector <2 x i1> %i.ael, <2 x i1> %i.aem, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aep = shufflevector <4 x i1> %i.aen, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aeq = shufflevector <8 x i1> %i.aeo, <8 x i1> %i.aep, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.aer = and <8 x i1> %i.aek, %i.aeq
  %i.aes = bitcast <8 x i1> %i.aer to i8
  %i.aet = icmp ne i8 %i.aes, 0
  %op.rdx = or i1 %i.aet, %stride.check295
  %n.vec315 = and i64 %i.aei, 4294967288          ; 3 uses
  %cmp.n329 = icmp eq i64 %n.vec315, %i.aei
  br label %.lr.ph.i.us.us.us.i

.lr.ph.i.us.us.us.i:                              ; preds = %._crit_edge.i.us.us.us.i, %.lr.ph.preheader.i.us.us.us.i
  %indvars.iv247.i.us.us.us.i = phi i64 [ 0, %.lr.ph.preheader.i.us.us.us.i ], [ %indvars.iv.next248.i.us.us.us.i, %._crit_edge.i.us.us.us.i ] ; 3 uses
  %i.aeu = mul nuw nsw i64 %indvars.iv247.i.us.us.us.i, %i.ms ; 2 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %.1234.i.i.us.us.us.i, i64 %i.aeu ; 4 uses
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aev, i64 %i.mn ; 2 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aev, i64 %i.mp ; 3 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aex, i64 %i.mn ; 2 uses
  %i.aez = mul nsw i64 %indvars.iv247.i.us.us.us.i, %i.ml ; 2 uses
  %invariant.gep.i.us.us.us.i = getelementptr inbounds nuw [2 x i8], ptr %.3.i.i.us.us.us.i, i64 %i.aeu ; 2 uses
  %brmerge = select i1 %min.iters.check313, i1 true, i1 %op.rdx
  br i1 %brmerge, label %scalar.ph312.preheader, label %vector.body316

vector.body316:                                   ; preds = %.lr.ph.i.us.us.us.i, %vector.body316
  %index317 = phi i64 [ %index.next327, %vector.body316 ], [ 0, %.lr.ph.i.us.us.us.i ] ; 7 uses
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aev, i64 %index317
  %wide.load318 = load <8 x i8>, ptr %i.afa, align 1, !tbaa !83, !alias.scope !461
  %i.afb = zext <8 x i8> %wide.load318 to <8 x i32>
  %i.afc = add nsw i64 %index317, %i.aez          ; 4 uses
  %i.afd = getelementptr inbounds i8, ptr %.sroa.17.0.i.us.us.us.i, i64 %i.afc
  %wide.load319 = load <8 x i8>, ptr %i.afd, align 1, !tbaa !83, !alias.scope !464
  %i.afe = zext <8 x i8> %wide.load319 to <8 x i32>
  %i.aff = mul nuw nsw <8 x i32> %i.afe, %i.afb
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aew, i64 %index317
  %wide.load320 = load <8 x i8>, ptr %i.afg, align 1, !tbaa !83, !alias.scope !466
  %i.afh = zext <8 x i8> %wide.load320 to <8 x i32>
  %i.afi = getelementptr inbounds i8, ptr %.sroa.12.0.i.us.us.us.i, i64 %i.afc
  %wide.load321 = load <8 x i8>, ptr %i.afi, align 1, !tbaa !83, !alias.scope !468
  %i.afj = zext <8 x i8> %wide.load321 to <8 x i32>
  %i.afk = mul nuw nsw <8 x i32> %i.afj, %i.afh
  %i.afl = add nuw nsw <8 x i32> %i.afk, %i.aff
  %i.afm = getelementptr inbounds nuw i8, ptr %i.aex, i64 %index317
  %wide.load322 = load <8 x i8>, ptr %i.afm, align 1, !tbaa !83, !alias.scope !470
  %i.afn = zext <8 x i8> %wide.load322 to <8 x i32>
  %i.afo = getelementptr inbounds i8, ptr %.sroa.7.0.i.us.us.us.i, i64 %i.afc
  %wide.load323 = load <8 x i8>, ptr %i.afo, align 1, !tbaa !83, !alias.scope !472
  %i.afp = zext <8 x i8> %wide.load323 to <8 x i32>
  %i.afq = mul nuw nsw <8 x i32> %i.afp, %i.afn
  %i.afr = add nuw nsw <8 x i32> %i.afl, %i.afq
  %i.afs = getelementptr inbounds nuw i8, ptr %i.aey, i64 %index317
  %wide.load324 = load <8 x i8>, ptr %i.afs, align 1, !tbaa !83, !alias.scope !474
  %i.aft = zext <8 x i8> %wide.load324 to <8 x i32>
  %i.afu = getelementptr inbounds i8, ptr %i.tc, i64 %i.afc
  %wide.load325 = load <8 x i8>, ptr %i.afu, align 1, !tbaa !83, !alias.scope !476
  %i.afv = zext <8 x i8> %wide.load325 to <8 x i32>
  %i.afw = mul nuw nsw <8 x i32> %i.afv, %i.aft
  %i.afx = add nuw nsw <8 x i32> %i.afr, %i.afw
  %i.afy = lshr <8 x i32> %i.afx, splat (i32 2)
  %i.afz = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i.us.us.us.i, i64 %index317 ; 2 uses
  %wide.load326 = load <8 x i16>, ptr %i.afz, align 2, !tbaa !182, !alias.scope !478, !noalias !480
  %i.aga = trunc nuw <8 x i32> %i.afy to <8 x i16>
  %i.agb = sub <8 x i16> %wide.load326, %i.aga
  store <8 x i16> %i.agb, ptr %i.afz, align 2, !tbaa !182, !alias.scope !478, !noalias !480
  %index.next327 = add nuw i64 %index317, 8       ; 2 uses
  %i.agc = icmp eq i64 %index.next327, %n.vec315
  br i1 %i.agc, label %middle.block328, label %vector.body316, !llvm.loop !481

middle.block328:                                  ; preds = %vector.body316
  br i1 %cmp.n329, label %._crit_edge.i.us.us.us.i, label %scalar.ph312.preheader

scalar.ph312.preheader:                           ; preds = %.lr.ph.i.us.us.us.i, %middle.block328
  %indvars.iv.i.us.us.us.i.ph = phi i64 [ %n.vec315, %middle.block328 ], [ 0, %.lr.ph.i.us.us.us.i ]
  br label %scalar.ph312

scalar.ph312:                                     ; preds = %scalar.ph312.preheader, %scalar.ph312
  %indvars.iv.i.us.us.us.i = phi i64 [ %indvars.iv.next.i.us.us.us.i, %scalar.ph312 ], [ %indvars.iv.i.us.us.us.i.ph, %scalar.ph312.preheader ] ; 7 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %i.aev, i64 %indvars.iv.i.us.us.us.i
  %i.age = load i8, ptr %i.agd, align 1, !tbaa !83
  %i.agf = zext i8 %i.age to i32
  %i.agg = add nsw i64 %indvars.iv.i.us.us.us.i, %i.aez ; 4 uses
  %i.agh = getelementptr inbounds i8, ptr %.sroa.17.0.i.us.us.us.i, i64 %i.agg
  %i.agi = load i8, ptr %i.agh, align 1, !tbaa !83
  %i.agj = zext i8 %i.agi to i32
  %i.agk = mul nuw nsw i32 %i.agj, %i.agf
  %i.agl = getelementptr inbounds nuw i8, ptr %i.aew, i64 %indvars.iv.i.us.us.us.i
  %i.agm = load i8, ptr %i.agl, align 1, !tbaa !83
  %i.agn = zext i8 %i.agm to i32
  %i.ago = getelementptr inbounds i8, ptr %.sroa.12.0.i.us.us.us.i, i64 %i.agg
  %i.agp = load i8, ptr %i.ago, align 1, !tbaa !83
  %i.agq = zext i8 %i.agp to i32
  %i.agr = mul nuw nsw i32 %i.agq, %i.agn
  %i.ags = add nuw nsw i32 %i.agr, %i.agk
  %i.agt = getelementptr inbounds nuw i8, ptr %i.aex, i64 %indvars.iv.i.us.us.us.i
  %i.agu = load i8, ptr %i.agt, align 1, !tbaa !83
  %i.agv = zext i8 %i.agu to i32
  %i.agw = getelementptr inbounds i8, ptr %.sroa.7.0.i.us.us.us.i, i64 %i.agg
  %i.agx = load i8, ptr %i.agw, align 1, !tbaa !83
  %i.agy = zext i8 %i.agx to i32
  %i.agz = mul nuw nsw i32 %i.agy, %i.agv
  %i.aha = add nuw nsw i32 %i.ags, %i.agz
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.aey, i64 %indvars.iv.i.us.us.us.i
  %i.ahc = load i8, ptr %i.ahb, align 1, !tbaa !83
  %i.ahd = zext i8 %i.ahc to i32
  %i.ahe = getelementptr inbounds i8, ptr %i.tc, i64 %i.agg
  %i.ahf = load i8, ptr %i.ahe, align 1, !tbaa !83
  %i.ahg = zext i8 %i.ahf to i32
  %i.ahh = mul nuw nsw i32 %i.ahg, %i.ahd
  %i.ahi = add nuw nsw i32 %i.aha, %i.ahh
  %i.ahj = lshr i32 %i.ahi, 2
  %gep.i.us.us.us.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i.us.us.us.i, i64 %indvars.iv.i.us.us.us.i ; 2 uses
  %i.ahk = load i16, ptr %gep.i.us.us.us.i, align 2, !tbaa !182
  %i.ahl = trunc nuw i32 %i.ahj to i16
  %i.ahm = sub i16 %i.ahk, %i.ahl
  store i16 %i.ahm, ptr %gep.i.us.us.us.i, align 2, !tbaa !182
  %indvars.iv.next.i.us.us.us.i = add nuw nsw i64 %indvars.iv.i.us.us.us.i, 1 ; 2 uses
  %exitcond900.not.i = icmp eq i64 %indvars.iv.next.i.us.us.us.i, %umax899.i
  br i1 %exitcond900.not.i, label %._crit_edge.i.us.us.us.i, label %scalar.ph312, !llvm.loop !482

._crit_edge.i.us.us.us.i:                         ; preds = %scalar.ph312, %middle.block328
  %indvars.iv.next248.i.us.us.us.i = add nuw nsw i64 %indvars.iv247.i.us.us.us.i, 1 ; 2 uses
  %exitcond907.not.i = icmp eq i64 %indvars.iv.next248.i.us.us.us.i, %umax906.i
  br i1 %exitcond907.not.i, label %add_yblock.exit.i.us.us.us.i, label %.lr.ph.i.us.us.us.i, !llvm.loop !244

add_yblock.exit.i.us.us.us.i:                     ; preds = %._crit_edge.i.us.us.us.i, %bb.ab
  %i.ahn = tail call i32 @llvm.smax.i32(i32 %i.re, i32 0)
  %i.aho = add nsw i32 %i.re, %i.ku               ; 2 uses
  %i.ahp = tail call i32 @llvm.smin.i32(i32 %i.lo, i32 %i.aho) ; 2 uses
  %i.ahq = icmp slt i32 %i.ahn, %i.ahp
  br i1 %i.ahq, label %.lr.ph207.i.us.us.us.i, label %._crit_edge208.i.us.us.us.i

.lr.ph207.i.us.us.us.i:                           ; preds = %add_yblock.exit.i.us.us.us.i
  %i.ahr = tail call i32 @llvm.smax.i32(i32 %i.rc, i32 0)
  %i.ahs = add nsw i32 %i.rc, %i.kt               ; 2 uses
  %i.aht = tail call i32 @llvm.smin.i32(i32 %i.lm, i32 %i.ahs) ; 2 uses
  %i.ahu = icmp slt i32 %i.ahr, %i.aht
  %i.ahv = icmp sle i32 %i.aho, %i.lo             ; 4 uses
  %i.ahw = icmp sle i32 %i.ahs, %i.lm
  %.fr.us.us.i = freeze i1 %i.ahw                 ; 8 uses
  br i1 %i.ahu, label %.lr.ph207.split.us.i.us.us.us.i, label %._crit_edge208.i.us.us.us.i

.lr.ph207.split.us.i.us.us.us.i:                  ; preds = %.lr.ph207.i.us.us.us.i
  %i.ahx = zext nneg i32 %i.aht to i64            ; 10 uses
  %i.ahy = zext nneg i32 %i.ahp to i64            ; 4 uses
  br i1 %i.sl, label %.lr.ph207.split.us.split.us.i.us.us.us.i, label %.lr.ph200.us.i.preheader.us.us.us.i

.lr.ph200.us.i.us724.us.us.i:                     ; preds = %.lr.ph200.us.i.us724.us.us.i.preheader, %._crit_edge201.split.us219.i.split.us.us.us.i
  %indvar = phi i32 [ 0, %.lr.ph200.us.i.us724.us.us.i.preheader ], [ %indvar.next, %._crit_edge201.split.us219.i.split.us.us.us.i ] ; 3 uses
  %indvars.iv256.i.us725.us.us.i = phi i64 [ %i.qs, %.lr.ph200.us.i.us724.us.us.i.preheader ], [ %indvars.iv.next257.i.us731.us.us.i, %._crit_edge201.split.us219.i.split.us.us.us.i ] ; 3 uses
  %.1163206.us.i.us726.us.us.i = phi i32 [ %.0162234.i.us.us.us.i, %.lr.ph200.us.i.us724.us.us.i.preheader ], [ %.us-phi761.us.us.i, %._crit_edge201.split.us219.i.split.us.us.us.i ] ; 6 uses
  %.1166205.us.i.us727.us.us.i = phi i32 [ %.0165233.i.us.us.us.i, %.lr.ph200.us.i.us724.us.us.i.preheader ], [ %.us-phi.us780.us.i, %._crit_edge201.split.us219.i.split.us.us.us.i ] ; 6 uses
  %i.ahz = mul i32 %i.kv, %indvar
  %i.aia = add i32 %i.pc, %i.ahz
  %i.aib = sext i32 %i.aia to i64                 ; 4 uses
  %i.aic = shl nsw i64 %i.aib, 1
  %scevgep236 = getelementptr i8, ptr %scevgep235, i64 %i.aic ; 2 uses
  %i.aid = add nsw i64 %i.bld, %i.aib
  %i.aie = shl nsw i64 %i.aid, 1
  %scevgep239 = getelementptr i8, ptr %scevgep238, i64 %i.aie ; 2 uses
  %scevgep240 = getelementptr i8, ptr %i.kw, i64 %i.aib
  %scevgep242 = getelementptr i8, ptr %scevgep241, i64 %i.aib
  %i.aif = mul i32 %i.kv, %indvar
  %i.aig = add i32 %i.py, %i.aif                  ; 2 uses
  %i.aih = trunc nuw nsw i64 %indvars.iv256.i.us725.us.us.i to i32
  %i.aii = add i32 %.neg175.i.us.us.us.i, %i.aih  ; 2 uses
  %i.aij = mul nsw i32 %i.aii, %i.kv              ; 3 uses
  %.not176.us.i.us728.us.us.i = icmp slt i32 %i.aii, %i.ku
  %or.cond.us.i.us729.us.us.i = or i1 %i.ahv, %.not176.us.i.us728.us.us.i
  %i.aik = mul nsw i64 %indvars.iv256.i.us725.us.us.i, %i.ml
  %invariant.gep313.i.us730.us.us.i = getelementptr i8, ptr %i.ld, i64 %i.aik ; 4 uses
  br i1 %or.cond.us.i.us729.us.us.i, label %.lr.ph200.us.i.us724.split.us.us.us.i, label %.lr.ph200.us.i.us724.split.us779.us.i

.lr.ph200.us.i.us724.split.us779.us.i:            ; preds = %.lr.ph200.us.i.us724.us.us.i, %bb.am
  %indvars.iv252.i.us.us769.us.i = phi i64 [ %indvars.iv.next253.i.us.us775.us.i, %bb.am ], [ %i.qw, %.lr.ph200.us.i.us724.us.us.i ] ; 3 uses
  %.2164198.us211.i.us.us770.us.i = phi i32 [ %i.ajq, %bb.am ], [ %.1163206.us.i.us726.us.us.i, %.lr.ph200.us.i.us724.us.us.i ]
  %.2167197.us212.i.us.us771.us.i = phi i32 [ %i.ajo, %bb.am ], [ %.1166205.us.i.us727.us.us.i, %.lr.ph200.us.i.us724.us.us.i ]
  %i.ail = trunc nuw nsw i64 %indvars.iv252.i.us.us769.us.i to i32
  %i.aim = add i32 %.neg.i.us.us.us.i, %i.ail     ; 2 uses
  %i.ain = add nsw i32 %i.aim, %i.aij             ; 3 uses
  %i.aio = sext i32 %i.ain to i64                 ; 2 uses
  %i.aip = getelementptr inbounds i8, ptr %i.kw, i64 %i.aio
  %i.aiq = load i8, ptr %i.aip, align 1, !tbaa !83
  %i.air = zext i8 %i.aiq to i32
  %i.ais = sub nsw i32 %i.ain, %i.me
end_hunk_3

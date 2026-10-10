Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AssignmentTrackingAnalysis?download=true
inline.NumInlined: 9322
inline.NumDeleted: 4239
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 51
loop-unroll.NumUnrolled: 65
begin_hunk_0_@_ZN4llvm11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEE8iterator9eraseNodeEj:bb.a

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.015.i.i.i.i41.unr = phi i32 [ %.015.i.i.i.i41.ph, %scalar.ph.preheader ], [ %i.gn, %scalar.ph.prol ]
  %.01214.i.i.i.i42.unr = phi i32 [ %.01214.i.i.i.i42.ph, %scalar.ph.preheader ], [ %i.go, %scalar.ph.prol ]
  %i.gp = icmp eq i32 %i.dw, %.neg
  br i1 %i.gp, label %_ZN4llvm15IntervalMapImpl4Path7setSizeEjj.exit.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.015.i.i.i.i41 = phi i32 [ %i.hi, %scalar.ph ], [ %.015.i.i.i.i41.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.01214.i.i.i.i42 = phi i32 [ %i.hj, %scalar.ph ], [ %.01214.i.i.i.i42.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.gq = zext i32 %.015.i.i.i.i41 to i64         ; 2 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.gq
  %i.gs = zext i32 %.01214.i.i.i.i42 to i64       ; 2 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.gs
  %i.gu = load i64, ptr %i.gr, align 8, !tbaa !205
  store i64 %i.gu, ptr %i.gt, align 8, !tbaa !205
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.gq
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !116
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.gs
  store i32 %i.gw, ptr %i.gx, align 4, !tbaa !116
  %i.gy = add i32 %.015.i.i.i.i41, 1
  %i.gz = add i32 %.01214.i.i.i.i42, 1
  %i.ha = zext i32 %i.gy to i64                   ; 2 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.ha
  %i.hc = zext i32 %i.gz to i64                   ; 2 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.hc
  %i.he = load i64, ptr %i.hb, align 8, !tbaa !205
  store i64 %i.he, ptr %i.hd, align 8, !tbaa !205
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.ha
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !116
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.hc
  store i32 %i.hg, ptr %i.hh, align 4, !tbaa !116
  %i.hi = add i32 %.015.i.i.i.i41, 2              ; 2 uses
  %i.hj = add i32 %.01214.i.i.i.i42, 2
  %.not.i.i.i.i43.1 = icmp eq i32 %i.hi, %i.dw
  br i1 %.not.i.i.i.i43.1, label %_ZN4llvm15IntervalMapImpl4Path7setSizeEjj.exit.loopexit, label %scalar.ph, !llvm.loop !2562

_ZN4llvm15IntervalMapImpl4Path7setSizeEjj.exit.loopexit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !71  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %i.ds
  %.phi.trans.insert46 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 8
  %.pre47 = load i32, ptr %.phi.trans.insert46, align 8, !tbaa !473
  br label %_ZN4llvm15IntervalMapImpl4Path7setSizeEjj.exit

_ZN4llvm15IntervalMapImpl4Path7setSizeEjj.exit:   ; preds = %_ZN4llvm15IntervalMapImpl4Path7setSizeEjj.exit.loopexit, %bb.l
  %i.hk = phi i32 [ %.pre47, %_ZN4llvm15IntervalMapImpl4Path7setSizeEjj.exit.loopexit ], [ %i.dw, %bb.l ] ; 2 uses
  %i.hl = phi ptr [ %.pre, %_ZN4llvm15IntervalMapImpl4Path7setSizeEjj.exit.loopexit ], [ %i.e, %bb.l ] ; 2 uses
  %i.hm = getelementptr inbounds nuw [16 x i8], ptr %i.hl, i64 %i.ds
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.ho = add i32 %i.hk, -1                       ; 2 uses
  store i32 %i.ho, ptr %i.hn, align 8, !tbaa !473
  %i.hp = add i32 %1, -2
  %i.hq = zext i32 %i.hp to i64
  %i.hr = getelementptr inbounds nuw [16 x i8], ptr %i.hl, i64 %i.hq ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 12
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !471
  %i.hu = load ptr, ptr %i.hr, align 8, !tbaa !472
  %i.hv = zext i32 %i.ht to i64
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %i.hv ; 2 uses
  %i.hx = add i32 %i.hk, -2
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.hw, align 8
  %i.hy = zext i32 %i.hx to i64                   ; 2 uses
  %i.hz = and i64 %.0.copyload.i.i.i.i.i, -64
  %i.ia = or i64 %i.hz, %i.hy
  store i64 %i.ia, ptr %i.hw, align 8
  %i.ib = load ptr, ptr %i.b, align 8, !tbaa !71  ; 4 uses
  %i.ic = getelementptr inbounds nuw [16 x i8], ptr %i.ib, i64 %i.ds
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 12
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !116
  %i.if = icmp eq i32 %i.ie, %i.ho
  br i1 %i.if, label %bb.m, label %bb.o

bb.m:                                             ; preds = %_ZN4llvm15IntervalMapImpl4Path7setSizeEjj.exit
  %i.ig = getelementptr inbounds nuw i8, ptr %i.du, i64 128
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %i.hy
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !116 ; 2 uses
  %i.ij = add nsw i64 %i.ds, -1                   ; 2 uses
  %.not16.wide.i55 = icmp eq i64 %i.ij, 0
  br i1 %.not16.wide.i55, label %._crit_edge, label %.lr.ph

bb.n:                                             ; preds = %.lr.ph
  %i.ik = add nsw i64 %i.il, -1                   ; 2 uses
  %.not16.wide.i = icmp eq i64 %i.ik, 0
  br i1 %.not16.wide.i, label %._crit_edge, label %.lr.ph, !llvm.loop !44

.lr.ph:                                           ; preds = %bb.m, %bb.n
  %i.il = phi i64 [ %i.ik, %bb.n ], [ %i.ij, %bb.m ] ; 2 uses
  %i.im = getelementptr inbounds nuw [16 x i8], ptr %i.ib, i64 %i.il ; 3 uses
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !472
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 12 ; 2 uses
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !116
  %i.iq = getelementptr inbounds nuw i8, ptr %i.in, i64 128
  %i.ir = zext i32 %i.ip to i64
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %i.ir
  store i32 %i.ii, ptr %i.is, align 4, !tbaa !116
  %i.it = load i32, ptr %i.io, align 4, !tbaa !471
  %i.iu = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !473
  %i.iw = add i32 %i.iv, -1
  %i.ix = icmp eq i32 %i.it, %i.iw
  br i1 %i.ix, label %bb.n, label %_ZN4llvm11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEE8iterator11setNodeStopEjj.exit, !llvm.loop !44

._crit_edge:                                      ; preds = %bb.n, %bb.m
  %i.iy = load ptr, ptr %i.ib, align 8, !tbaa !472
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ib, i64 12
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !116
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iy, i64 120
  %i.jc = zext i32 %i.ja to i64
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %i.jc
  store i32 %i.ii, ptr %i.jd, align 4, !tbaa !116
  br label %_ZN4llvm11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEE8iterator11setNodeStopEjj.exit

_ZN4llvm11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEE8iterator11setNodeStopEjj.exit: ; preds = %.lr.ph, %._crit_edge
  tail call void @_ZN4llvm15IntervalMapImpl4Path9moveRightEj(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i32 noundef %i.c) #22
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %_ZN4llvm11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEE8iterator11setNodeStopEjj.exit, %_ZN4llvm15IntervalMapImpl4Path7setSizeEjj.exit, %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEjLj15EE5eraseEjj.exit
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jf = load i32, ptr %i.je, align 8, !tbaa !78
  %.not.i.i = icmp eq i32 %i.jf, 0
  br i1 %.not.i.i, label %_ZN4llvm11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEE14const_iterator7setRootEj.exit, label %_ZNK4llvm15IntervalMapImpl4Path5validEv.exit

_ZNK4llvm15IntervalMapImpl4Path5validEv.exit:     ; preds = %bb.o
  %i.jg = load ptr, ptr %i.b, align 8, !tbaa !71  ; 4 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 12
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !471
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !473
  %i.jl = icmp ult i32 %i.ji, %i.jk
  br i1 %i.jl, label %bb.p, label %_ZN4llvm11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEE14const_iterator7setRootEj.exit

bb.p:                                             ; preds = %_ZNK4llvm15IntervalMapImpl4Path5validEv.exit
  %i.jm = zext i32 %i.c to i64
  %i.jn = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %i.jm ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 12
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !471
  %i.jq = load ptr, ptr %i.jn, align 8, !tbaa !472
  %i.jr = zext i32 %i.jp to i64
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.jq, i64 %i.jr
  %.sroa.0.0.copyload.i = load i64, ptr %i.js, align 8, !tbaa !205 ; 2 uses
  %i.jt = zext i32 %1 to i64                      ; 2 uses
  %i.ju = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %i.jt ; 2 uses
  %i.jv = and i64 %.sroa.0.0.copyload.i, -64
  %i.jw = inttoptr i64 %i.jv to ptr
  %i.jx = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.jy = and i32 %i.jx, 63
  %i.jz = add nuw nsw i32 %i.jy, 1
  store ptr %i.jw, ptr %i.ju, align 8, !tbaa !329
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  store i32 %i.jz, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !116
  %i.ka = load ptr, ptr %i.b, align 8, !tbaa !71
  %i.kb = getelementptr inbounds nuw [16 x i8], ptr %i.ka, i64 %i.jt
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 12
  store i32 0, ptr %i.kc, align 4, !tbaa !116
  br label %_ZN4llvm11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEE14const_iterator7setRootEj.exit

_ZN4llvm11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEE14const_iterator7setRootEj.exit: ; preds = %bb.o, %bb.i, %bb.h, %bb.f, %bb.e, %_ZNK4llvm15IntervalMapImpl4Path5validEv.exit, %bb.p
  ret void
}

declare void @_ZN4llvm15IntervalMapImpl4Path9moveRightEj(ptr noundef nonnull align 8 dereferenceable(80), i32 noundef) local_unnamed_addr #4

declare i64 @_ZNK4llvm15IntervalMapImpl4Path15getRightSiblingEj(ptr noundef nonnull align 8 dereferenceable(80), i32 noundef) local_unnamed_addr #4

declare i64 @_ZN4llvm15IntervalMapImpl10distributeEjjjPKjPjjb(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm15IntervalMapImpl18adjustSiblingSizesINS0_8LeafNodeIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEEEEEvPPT_jPjPKj(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = add i32 %1, -1                           ; 3 uses
  %.not117 = icmp eq i32 %i.a, 0
  br i1 %.not117, label %.loopexit114, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = sext i32 %i.a to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.loopexit116
  %or.cond = icmp ult i32 %1, 2
  br i1 %or.cond, label %.loopexit114, label %.lr.ph121.preheader

.lr.ph121.preheader:                              ; preds = %._crit_edge
  %i.c = zext i32 %i.a to i64
  br label %.lr.ph121

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit116
  %indvars.iv = phi i64 [ %i.b, %.lr.ph.preheader ], [ %indvars.iv.next, %.loopexit116 ] ; 6 uses
  %i.d = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !116  ; 2 uses
  %i.f = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !116  ; 2 uses
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %.loopexit116, label %.preheader115

.preheader115:                                    ; preds = %.lr.ph
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv
  %i.j = icmp eq i64 %indvars.iv, 0
  br i1 %i.j, label %.loopexit116, label %.lr.ph149.preheader

.lr.ph149.preheader:                              ; preds = %.preheader115
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !526  ; 48 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 128 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 128 ; 13 uses
  %scevgep217 = getelementptr i8, ptr %i.k, i64 4 ; 6 uses
  %scevgep219 = getelementptr i8, ptr %i.k, i64 8
  %scevgep221 = getelementptr i8, ptr %i.k, i64 132
  %scevgep225 = getelementptr i8, ptr %i.k, i64 4 ; 2 uses
  %scevgep228 = getelementptr i8, ptr %i.k, i64 8
  %scevgep230 = getelementptr i8, ptr %i.k, i64 128
  %scevgep232 = getelementptr i8, ptr %i.k, i64 132
  %i.n = insertelement <4 x ptr> poison, ptr %i.k, i64 0
  %i.o = shufflevector <4 x ptr> %i.n, <4 x ptr> poison, <4 x i32> zeroinitializer
  %4 = insertelement <4 x ptr> poison, ptr %scevgep217, i64 0
  %5 = insertelement <4 x ptr> %4, ptr %i.m, i64 1
  %i.p = getelementptr i8, ptr %i.k, i64 128      ; 11 uses
  %scevgep154 = getelementptr i8, ptr %i.k, i64 4 ; 2 uses
  %scevgep157 = getelementptr i8, ptr %i.k, i64 8
  %scevgep159 = getelementptr i8, ptr %i.k, i64 128
  %scevgep161 = getelementptr i8, ptr %i.k, i64 132 ; 2 uses
  %scevgep163 = getelementptr i8, ptr %i.k, i64 4 ; 4 uses
  %scevgep165 = getelementptr i8, ptr %i.k, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 128 ; 3 uses
  br label %.lr.ph149

bb.b:                                             ; preds = %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE17adjustFromLeftSibEjRS4_ji.exit
  %i.r = icmp eq i64 %indvars.iv.next123148, 0
  br i1 %i.r, label %.loopexit116, label %.lr.ph149, !llvm.loop !2575

.lr.ph149:                                        ; preds = %.lr.ph149.preheader, %bb.b
  %indvars.iv.next123148.in = phi i64 [ %indvars.iv.next123148, %bb.b ], [ %indvars.iv, %.lr.ph149.preheader ]
  %i.s = phi i32 [ %i.hk, %bb.b ], [ %i.e, %.lr.ph149.preheader ] ; 16 uses
  %i.t = phi i32 [ %i.hl, %bb.b ], [ %i.g, %.lr.ph149.preheader ]
  %indvars.iv.next123148 = add nsw i64 %indvars.iv.next123148.in, -1 ; 4 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv.next123148
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !526  ; 8 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv.next123148 ; 3 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !116  ; 5 uses
  %i.y = sub i32 %i.t, %i.s                       ; 3 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph.i.i.i, label %.lr.ph.i.i24.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph149
  %i.aa = sub i32 16, %i.s
  %i.ab = tail call i32 @llvm.umin.i32(i32 %i.x, i32 %i.y)
  %.sroa.speculated46.i = tail call i32 @llvm.umin.i32(i32 %i.aa, i32 %i.ab) ; 14 uses
  %.not9.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not9.i.i.i, label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE9moveRightEjjj.exit.i.i, label %.lr.ph.i.i21.i

.lr.ph.i.i21.i:                                   ; preds = %.lr.ph.i.i.i
  %i.ac = zext i32 %i.s to i64                    ; 6 uses
  %min.iters.check = icmp ult i32 %i.s, 30
  %i.ad = sub i32 0, %i.s
  %i.ae = icmp ugt i32 %.sroa.speculated46.i, %i.ad
  %or.cond474 = select i1 %min.iters.check, i1 true, i1 %i.ae
  br i1 %or.cond474, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i21.i
  %i.af = add i32 %i.s, -1                        ; 2 uses
  %i.ag = add i32 %i.af, %.sroa.speculated46.i
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = shl nuw nsw i64 %i.ah, 3                ; 3 uses
  %i.aj = zext i32 %i.af to i64                   ; 2 uses
  %i.ak = shl nuw nsw i64 %i.aj, 3                ; 3 uses
  %i.al = sub nsw i64 %i.ai, %i.ak                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.k, i64 %i.al ; 5 uses
  %scevgep155 = getelementptr i8, ptr %scevgep154, i64 %i.ai ; 5 uses
  %scevgep156 = getelementptr i8, ptr %scevgep154, i64 %i.al ; 5 uses
  %scevgep158 = getelementptr i8, ptr %scevgep157, i64 %i.ai ; 5 uses
  %i.am = shl nuw nsw i64 %i.ah, 2                ; 2 uses
  %i.an = shl nuw nsw i64 %i.aj, 2                ; 2 uses
  %i.ao = sub nsw i64 %i.am, %i.an
  %scevgep160 = getelementptr i8, ptr %scevgep159, i64 %i.ao ; 5 uses
  %scevgep162 = getelementptr i8, ptr %scevgep161, i64 %i.am ; 5 uses
  %scevgep164 = getelementptr i8, ptr %scevgep163, i64 %i.ak ; 3 uses
  %scevgep166 = getelementptr i8, ptr %scevgep165, i64 %i.ak ; 3 uses
  %scevgep167 = getelementptr i8, ptr %scevgep161, i64 %i.an ; 3 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep158
  %bound1 = icmp ult ptr %scevgep156, %scevgep155
  %found.conflict = and i1 %bound0, %bound1
  %bound0168 = icmp ult ptr %scevgep, %scevgep162
  %bound1169 = icmp ult ptr %scevgep160, %scevgep155
  %found.conflict170 = and i1 %bound0168, %bound1169
  %conflict.rdx = or i1 %found.conflict, %found.conflict170
  %bound0171 = icmp ult ptr %scevgep, %scevgep164
  %bound1172 = icmp ult ptr %i.k, %scevgep155
  %found.conflict173 = and i1 %bound0171, %bound1172
  %conflict.rdx174 = or i1 %conflict.rdx, %found.conflict173
  %bound0175 = icmp ult ptr %scevgep, %scevgep166
  %bound1176 = icmp ult ptr %scevgep163, %scevgep155
  %found.conflict177 = and i1 %bound0175, %bound1176
  %conflict.rdx178 = or i1 %conflict.rdx174, %found.conflict177
  %bound0179 = icmp ult ptr %scevgep, %scevgep167
  %bound1180 = icmp ult ptr %i.p, %scevgep155
  %found.conflict181 = and i1 %bound0179, %bound1180
  %conflict.rdx182 = or i1 %conflict.rdx178, %found.conflict181
  %bound0183 = icmp ult ptr %scevgep156, %scevgep162
  %bound1184 = icmp ult ptr %scevgep160, %scevgep158
  %found.conflict185 = and i1 %bound0183, %bound1184
  %conflict.rdx186 = or i1 %conflict.rdx182, %found.conflict185
  %bound0187 = icmp ult ptr %scevgep156, %scevgep164
  %bound1188 = icmp ult ptr %i.k, %scevgep158
  %found.conflict189 = and i1 %bound0187, %bound1188
  %conflict.rdx190 = or i1 %conflict.rdx186, %found.conflict189
  %bound0191 = icmp ult ptr %scevgep156, %scevgep166
  %bound1192 = icmp ult ptr %scevgep163, %scevgep158
  %found.conflict193 = and i1 %bound0191, %bound1192
  %conflict.rdx194 = or i1 %conflict.rdx190, %found.conflict193
  %bound0195 = icmp ult ptr %scevgep156, %scevgep167
  %bound1196 = icmp ult ptr %i.p, %scevgep158
  %found.conflict197 = and i1 %bound0195, %bound1196
  %conflict.rdx198 = or i1 %conflict.rdx194, %found.conflict197
  %bound0199 = icmp ult ptr %scevgep160, %scevgep164
  %bound1200 = icmp ult ptr %i.k, %scevgep162
  %found.conflict201 = and i1 %bound0199, %bound1200
  %conflict.rdx202 = or i1 %conflict.rdx198, %found.conflict201
  %bound0203 = icmp ult ptr %scevgep160, %scevgep166
  %bound1204 = icmp ult ptr %scevgep163, %scevgep162
  %found.conflict205 = and i1 %bound0203, %bound1204
  %conflict.rdx206 = or i1 %conflict.rdx202, %found.conflict205
  %bound0207 = icmp ult ptr %scevgep160, %scevgep167
  %bound1208 = icmp ult ptr %i.p, %scevgep162
  %found.conflict209 = and i1 %bound0207, %bound1208
  %conflict.rdx210 = or i1 %conflict.rdx206, %found.conflict209
  br i1 %conflict.rdx210, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ac, 4294967294              ; 2 uses
  %i.ap = and i64 %i.ac, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aq = xor i64 %index, -1
  %i.ar = add i64 %i.aq, %i.ac                    ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i64 %i.ar, 4294967295               ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.at
  %i.av = add i32 %.sroa.speculated46.i, %i.as
  %i.aw = zext i32 %i.av to i64                   ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.aw
  %i.ay = getelementptr inbounds i8, ptr %i.au, i64 -8
  %interleaved.vec = load <4 x i32>, ptr %i.ay, align 4, !tbaa !116
  %i.az = getelementptr inbounds i8, ptr %i.ax, i64 -8
  store <4 x i32> %interleaved.vec, ptr %i.az, align 4, !tbaa !116
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.at
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -4
  %wide.load = load <2 x i32>, ptr %i.bb, align 4, !tbaa !116, !alias.scope !2607
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.aw
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -4
  store <2 x i32> %wide.load, ptr %i.bd, align 4, !tbaa !116, !alias.scope !2608, !noalias !2609
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !2581

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ac
  br i1 %cmp.n, label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE9moveRightEjjj.exit.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i21.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ %i.ac, %vector.memcheck ], [ %i.ac, %.lr.ph.i.i21.i ], [ %i.ap, %middle.block ] ; 4 uses
  %i.bf = trunc nuw i64 %indvars.iv.i.i.i.ph to i32
  %xtraiter499 = and i32 %i.bf, 1
  %lcmp.mod500.not = icmp eq i32 %xtraiter499, 0
  br i1 %lcmp.mod500.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %indvars.iv.next.i.i.i.prol = add nsw i64 %indvars.iv.i.i.i.ph, -1 ; 3 uses
  %indvars.i.i.i.prol = trunc i64 %indvars.iv.next.i.i.i.prol to i32
  %i.bg = and i64 %indvars.iv.next.i.i.i.prol, 4294967295 ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bg
  %i.bi = add i32 %.sroa.speculated46.i, %indvars.i.i.i.prol
  %i.bj = zext i32 %i.bi to i64                   ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bj
  %i.bl = load <2 x i32>, ptr %i.bh, align 4, !tbaa !116
  store <2 x i32> %i.bl, ptr %i.bk, align 4, !tbaa !116
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.bg
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !116
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.bj
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !116
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.bp = icmp eq i64 %indvars.iv.i.i.i.ph, 1
  br i1 %i.bp, label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE9moveRightEjjj.exit.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.1, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 2 uses
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 2 uses
  %indvars.i.i.i = trunc i64 %indvars.iv.next.i.i.i to i32
  %i.bq = and i64 %indvars.iv.next.i.i.i, 4294967295 ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bq
  %i.bs = add i32 %.sroa.speculated46.i, %indvars.i.i.i
  %i.bt = zext i32 %i.bs to i64                   ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bt
  %i.bv = load <2 x i32>, ptr %i.br, align 4, !tbaa !116
  store <2 x i32> %i.bv, ptr %i.bu, align 4, !tbaa !116
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.bq
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !116
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.bt
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !116
  %indvars.iv.next.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i, -2 ; 3 uses
  %indvars.i.i.i.1 = trunc i64 %indvars.iv.next.i.i.i.1 to i32 ; 2 uses
  %i.bz = and i64 %indvars.iv.next.i.i.i.1, 4294967295 ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bz
  %i.cb = add i32 %.sroa.speculated46.i, %indvars.i.i.i.1
  %i.cc = zext i32 %i.cb to i64                   ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.cc
  %i.ce = load <2 x i32>, ptr %i.ca, align 4, !tbaa !116
  store <2 x i32> %i.ce, ptr %i.cd, align 4, !tbaa !116
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.bz
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !116
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.cc
  store i32 %i.cg, ptr %i.ch, align 4, !tbaa !116
end_hunk_0
begin_hunk_1_@_ZN4llvm15IntervalMapImpl18adjustSiblingSizesINS0_8LeafNodeIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEEEEEvPPT_jPjPKj:bb.a
  %found.conflict259 = and i1 %bound0257, %bound1258
  %bound0261 = icmp ult ptr %scevgep217, %scevgep229
  %bound1262 = icmp ult ptr %scevgep227, %scevgep220
  %found.conflict263 = and i1 %bound0261, %bound1262
  %bound0265 = icmp ult ptr %scevgep217, %scevgep233
  %bound1266 = icmp ult ptr %scevgep231, %scevgep220
  %found.conflict267 = and i1 %bound0265, %bound1266
  %bound0269 = icmp ult ptr %i.m, %scevgep226
  %bound1270 = icmp ult ptr %scevgep224, %scevgep222
  %found.conflict271 = and i1 %bound0269, %bound1270
  %bound0273 = icmp ult ptr %i.m, %scevgep229
  %bound1274 = icmp ult ptr %scevgep227, %scevgep222
  %found.conflict275 = and i1 %bound0273, %bound1274
  %bound0277 = icmp ult ptr %i.m, %scevgep233
  %bound1278 = icmp ult ptr %scevgep231, %scevgep222
  %found.conflict279 = and i1 %bound0277, %bound1278
  %i.fg = bitcast <4 x i1> %i.ff to i4
  %i.fh = icmp ne i4 %i.fg, 0
  %op.rdx488 = or i1 %i.fh, %found.conflict251
  %op.rdx489 = or i1 %found.conflict255, %found.conflict259
  %op.rdx490 = or i1 %found.conflict263, %found.conflict267
  %op.rdx491 = or i1 %found.conflict271, %found.conflict275
  %op.rdx492 = or i1 %op.rdx488, %op.rdx489
  %op.rdx493 = or i1 %op.rdx490, %op.rdx491
  %op.rdx494 = or i1 %op.rdx492, %op.rdx493
  %op.rdx495 = or i1 %op.rdx494, %found.conflict279
  br i1 %op.rdx495, label %scalar.ph281.preheader, label %vector.ph283

vector.ph283:                                     ; preds = %vector.memcheck216
  %n.vec284 = and i64 %i.eh, 8589934588           ; 4 uses
  %i.fi = trunc i64 %n.vec284 to i32
  %i.fj = add i32 %.sroa.speculated.i, %i.fi
  br label %vector.body285

vector.body285:                                   ; preds = %vector.body285, %vector.ph283
  %index286 = phi i64 [ 0, %vector.ph283 ], [ %index.next297, %vector.body285 ] ; 5 uses
  %i.fk = trunc i64 %index286 to i32
  %i.fl = add i32 %.sroa.speculated.i, %i.fk      ; 2 uses
  %i.fm = add i32 %i.fl, 2
  %i.fn = zext i32 %i.fl to i64                   ; 2 uses
  %i.fo = zext i32 %i.fm to i64
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.fn
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.fo
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index286
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index286
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %wide.vec287 = load <4 x i32>, ptr %i.fp, align 4, !tbaa !116
  %wide.vec290 = load <4 x i32>, ptr %i.fq, align 4, !tbaa !116
  store <4 x i32> %wide.vec287, ptr %i.fr, align 4, !tbaa !116
  store <4 x i32> %wide.vec290, ptr %i.ft, align 4, !tbaa !116
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.fn ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %wide.load295 = load <2 x i32>, ptr %i.fu, align 4, !tbaa !116, !alias.scope !2610
  %wide.load296 = load <2 x i32>, ptr %i.fv, align 4, !tbaa !116, !alias.scope !2610
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index286 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  store <2 x i32> %wide.load295, ptr %i.fw, align 4, !tbaa !116, !alias.scope !2611, !noalias !2612
  store <2 x i32> %wide.load296, ptr %i.fx, align 4, !tbaa !116, !alias.scope !2611, !noalias !2612
  %index.next297 = add nuw i64 %index286, 4       ; 2 uses
  %i.fy = icmp eq i64 %index.next297, %n.vec284
  br i1 %i.fy, label %middle.block298, label %vector.body285, !llvm.loop !2588

middle.block298:                                  ; preds = %vector.body285
  %cmp.n299 = icmp eq i64 %i.eh, %n.vec284
  br i1 %cmp.n299, label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE17transferToLeftSibEjRS4_jj.exit.i, label %scalar.ph281.preheader

scalar.ph281.preheader:                           ; preds = %vector.memcheck216, %.lr.ph.i.i.i.i.i, %middle.block298
  %indvars.iv6.i.i.ph = phi i64 [ 0, %vector.memcheck216 ], [ 0, %.lr.ph.i.i.i.i.i ], [ %n.vec284, %middle.block298 ] ; 4 uses
  %.015.i.i.i.i.i.ph = phi i32 [ %.sroa.speculated.i, %vector.memcheck216 ], [ %.sroa.speculated.i, %.lr.ph.i.i.i.i.i ], [ %i.fj, %middle.block298 ] ; 5 uses
  %i.fz = sub i32 %i.s, %.015.i.i.i.i.i.ph
  %.neg = add i32 %.015.i.i.i.i.i.ph, 1
  %xtraiter497 = and i32 %i.fz, 1
  %lcmp.mod498.not = icmp eq i32 %xtraiter497, 0
  br i1 %lcmp.mod498.not, label %scalar.ph281.prol.loopexit, label %scalar.ph281.prol

scalar.ph281.prol:                                ; preds = %scalar.ph281.preheader
  %i.ga = zext i32 %.015.i.i.i.i.i.ph to i64      ; 2 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ga
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv6.i.i.ph
  %i.gd = load <2 x i32>, ptr %i.gb, align 4, !tbaa !116
  store <2 x i32> %i.gd, ptr %i.gc, align 4, !tbaa !116
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ga
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !116
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv6.i.i.ph
  store i32 %i.gf, ptr %i.gg, align 4, !tbaa !116
  %i.gh = add i32 %.015.i.i.i.i.i.ph, 1
  %indvars.iv.next7.i.i.prol = or disjoint i64 %indvars.iv6.i.i.ph, 1
  br label %scalar.ph281.prol.loopexit

scalar.ph281.prol.loopexit:                       ; preds = %scalar.ph281.prol, %scalar.ph281.preheader
  %indvars.iv6.i.i.unr = phi i64 [ %indvars.iv6.i.i.ph, %scalar.ph281.preheader ], [ %indvars.iv.next7.i.i.prol, %scalar.ph281.prol ]
  %.015.i.i.i.i.i.unr = phi i32 [ %.015.i.i.i.i.i.ph, %scalar.ph281.preheader ], [ %i.gh, %scalar.ph281.prol ]
  %i.gi = icmp eq i32 %i.s, %.neg
  br i1 %i.gi, label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE17transferToLeftSibEjRS4_jj.exit.i, label %scalar.ph281

scalar.ph281:                                     ; preds = %scalar.ph281.prol.loopexit, %scalar.ph281
  %indvars.iv6.i.i = phi i64 [ %indvars.iv.next7.i.i.1, %scalar.ph281 ], [ %indvars.iv6.i.i.unr, %scalar.ph281.prol.loopexit ] ; 4 uses
  %.015.i.i.i.i.i = phi i32 [ %i.gy, %scalar.ph281 ], [ %.015.i.i.i.i.i.unr, %scalar.ph281.prol.loopexit ] ; 3 uses
  %i.gj = zext i32 %.015.i.i.i.i.i to i64         ; 2 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.gj
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv6.i.i
  %i.gm = load <2 x i32>, ptr %i.gk, align 4, !tbaa !116
  store <2 x i32> %i.gm, ptr %i.gl, align 4, !tbaa !116
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.gj
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !116
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv6.i.i
  store i32 %i.go, ptr %i.gp, align 4, !tbaa !116
  %i.gq = add i32 %.015.i.i.i.i.i, 1
  %indvars.iv.next7.i.i = add nuw nsw i64 %indvars.iv6.i.i, 1 ; 2 uses
  %i.gr = zext i32 %i.gq to i64                   ; 2 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.gr
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next7.i.i
  %i.gu = load <2 x i32>, ptr %i.gs, align 4, !tbaa !116
  store <2 x i32> %i.gu, ptr %i.gt, align 4, !tbaa !116
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.gr
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !116
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next7.i.i
  store i32 %i.gw, ptr %i.gx, align 4, !tbaa !116
  %i.gy = add i32 %.015.i.i.i.i.i, 2              ; 2 uses
  %indvars.iv.next7.i.i.1 = add nuw nsw i64 %indvars.iv6.i.i, 2
  %.not.i.i.i.i.i.1 = icmp eq i32 %i.gy, %i.s
  br i1 %.not.i.i.i.i.i.1, label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE17transferToLeftSibEjRS4_jj.exit.i, label %scalar.ph281, !llvm.loop !2589

_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE17transferToLeftSibEjRS4_jj.exit.i: ; preds = %scalar.ph281.prol.loopexit, %scalar.ph281, %middle.block298, %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE4copyILj16EEEvRKNS1_IS3_jXT_EEEjjj.exit.i.i
  %i.gz = sub nsw i32 0, %.sroa.speculated.i
  br label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE17adjustFromLeftSibEjRS4_ji.exit

_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE17adjustFromLeftSibEjRS4_ji.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod503.not = icmp eq i32 %xtraiter502, 0
  br i1 %lcmp.mod503.not, label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE17adjustFromLeftSibEjRS4_ji.exit, label %.epil.preheader501

.epil.preheader501:                               ; preds = %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE17adjustFromLeftSibEjRS4_ji.exit.loopexit.unr-lcssa, %.lr.ph.i7.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i7.i.i ], [ %indvars.iv.next.i.i.1, %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE17adjustFromLeftSibEjRS4_ji.exit.loopexit.unr-lcssa ] ; 2 uses
  %.015.i.i.i.epil.init = phi i32 [ %i.ci, %.lr.ph.i7.i.i ], [ %i.da, %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE17adjustFromLeftSibEjRS4_ji.exit.loopexit.unr-lcssa ]
  %lcmp.mod504 = trunc i32 %.sroa.speculated46.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod504)
  %i.ha = zext i32 %.015.i.i.i.epil.init to i64   ; 2 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ha
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i.i.epil.init
  %i.hd = load <2 x i32>, ptr %i.hb, align 4, !tbaa !116
  store <2 x i32> %i.hd, ptr %i.hc, align 4, !tbaa !116
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.ha
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !116
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i.i.epil.init
  store i32 %i.hf, ptr %i.hg, align 4, !tbaa !116
  br label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE17adjustFromLeftSibEjRS4_ji.exit

_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE17adjustFromLeftSibEjRS4_ji.exit: ; preds = %.epil.preheader501, %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE17adjustFromLeftSibEjRS4_ji.exit.loopexit.unr-lcssa, %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE9moveRightEjjj.exit.i.i, %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE17transferToLeftSibEjRS4_jj.exit.i
  %.0.i = phi i32 [ %i.gz, %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE17transferToLeftSibEjRS4_jj.exit.i ], [ 0, %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE9moveRightEjjj.exit.i.i ], [ %.sroa.speculated46.i, %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE17adjustFromLeftSibEjRS4_ji.exit.loopexit.unr-lcssa ], [ %.sroa.speculated46.i, %.epil.preheader501 ] ; 2 uses
  %i.hh = load i32, ptr %i.w, align 4, !tbaa !116
  %i.hi = sub i32 %i.hh, %.0.i
  store i32 %i.hi, ptr %i.w, align 4, !tbaa !116
  %i.hj = load i32, ptr %i.d, align 4, !tbaa !116
  %i.hk = add i32 %i.hj, %.0.i                    ; 3 uses
  store i32 %i.hk, ptr %i.d, align 4, !tbaa !116
  %i.hl = load i32, ptr %i.f, align 4, !tbaa !116 ; 2 uses
  %.not77 = icmp ult i32 %i.hk, %i.hl
  br i1 %.not77, label %bb.b, label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE17adjustFromLeftSibEjRS4_ji.exit..loopexit116.loopexit_crit_edge, !llvm.loop !2575

_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE17adjustFromLeftSibEjRS4_ji.exit..loopexit116.loopexit_crit_edge: ; preds = %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE17adjustFromLeftSibEjRS4_ji.exit
  br label %.loopexit116, !llvm.loop !2575

.loopexit116:                                     ; preds = %bb.b, %.preheader115, %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE17adjustFromLeftSibEjRS4_ji.exit..loopexit116.loopexit_crit_edge, %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2590

.lr.ph121:                                        ; preds = %.lr.ph121.preheader, %.loopexit
  %indvars.iv126 = phi i64 [ 0, %.lr.ph121.preheader ], [ %indvars.iv.next127, %.loopexit ] ; 5 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv126 ; 3 uses
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !116 ; 2 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv126 ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !116 ; 2 uses
  %i.hq = icmp eq i32 %i.hn, %i.hp
  br i1 %i.hq, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.lr.ph121
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv126
  %i.hs = trunc nuw i64 %indvars.iv126 to i32
  %.0150 = add i32 %i.hs, 1                       ; 2 uses
  %.not74151 = icmp eq i32 %.0150, %1
  br i1 %.not74151, label %.loopexit, label %.lr.ph153.preheader

.lr.ph153.preheader:                              ; preds = %.preheader
  %i.ht = load ptr, ptr %i.hr, align 8, !tbaa !526 ; 8 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 128 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 128 ; 3 uses
  br label %.lr.ph153

bb.e:                                             ; preds = %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE17adjustFromLeftSibEjRS4_ji.exit112
  %.0 = add i32 %.0152, 1                         ; 2 uses
  %.not74 = icmp eq i32 %.0, %1
  br i1 %.not74, label %.loopexit, label %.lr.ph153, !llvm.loop !2591

.lr.ph153:                                        ; preds = %.lr.ph153.preheader, %bb.e
  %.0152 = phi i32 [ %.0, %bb.e ], [ %.0150, %.lr.ph153.preheader ] ; 2 uses
  %i.hw = phi i32 [ %i.pt, %bb.e ], [ %i.hn, %.lr.ph153.preheader ] ; 6 uses
  %i.hx = phi i32 [ %i.pu, %bb.e ], [ %i.hp, %.lr.ph153.preheader ]
  %i.hy = zext i32 %.0152 to i64                  ; 2 uses
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.hy
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !526 ; 48 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.hy ; 3 uses
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !116 ; 15 uses
  %i.id = sub i32 %i.hw, %i.hx                    ; 3 uses
  %i.ie = icmp sgt i32 %i.id, 0
  br i1 %i.ie, label %.lr.ph.i.i.i96, label %.lr.ph.i.i24.i78

.lr.ph.i.i.i96:                                   ; preds = %.lr.ph153
  %i.if = sub i32 16, %i.ic
  %i.ig = tail call i32 @llvm.umin.i32(i32 %i.hw, i32 %i.id)
  %.sroa.speculated46.i98 = tail call i32 @llvm.umin.i32(i32 %i.if, i32 %i.ig) ; 14 uses
  %.not9.i.i.i99 = icmp eq i32 %i.ic, 0
  br i1 %.not9.i.i.i99, label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE9moveRightEjjj.exit.i.i105, label %.lr.ph.i.i21.i100

.lr.ph.i.i21.i100:                                ; preds = %.lr.ph.i.i.i96
  %i.ih = getelementptr i8, ptr %i.ia, i64 128    ; 11 uses
  %i.ii = zext i32 %i.ic to i64                   ; 6 uses
  %min.iters.check367 = icmp ult i32 %i.ic, 30
  %i.ij = sub i32 0, %i.ic
  %i.ik = icmp ugt i32 %.sroa.speculated46.i98, %i.ij
  %or.cond478 = select i1 %min.iters.check367, i1 true, i1 %i.ik
  br i1 %or.cond478, label %scalar.ph366.preheader, label %vector.memcheck303

vector.memcheck303:                               ; preds = %.lr.ph.i.i21.i100
  %i.il = add i32 %i.ic, -1                       ; 2 uses
  %i.im = add i32 %i.il, %.sroa.speculated46.i98
  %i.in = zext i32 %i.im to i64                   ; 2 uses
  %i.io = shl nuw nsw i64 %i.in, 3                ; 3 uses
  %i.ip = zext i32 %i.il to i64                   ; 2 uses
  %i.iq = shl nuw nsw i64 %i.ip, 3                ; 3 uses
  %i.ir = sub nsw i64 %i.io, %i.iq                ; 2 uses
  %scevgep304 = getelementptr i8, ptr %i.ia, i64 %i.ir ; 5 uses
  %scevgep305 = getelementptr i8, ptr %i.ia, i64 4 ; 2 uses
  %scevgep306 = getelementptr i8, ptr %scevgep305, i64 %i.io ; 5 uses
  %scevgep307 = getelementptr i8, ptr %scevgep305, i64 %i.ir ; 5 uses
  %scevgep308 = getelementptr i8, ptr %i.ia, i64 8
  %scevgep309 = getelementptr i8, ptr %scevgep308, i64 %i.io ; 5 uses
  %scevgep310 = getelementptr i8, ptr %i.ia, i64 128
  %i.is = shl nuw nsw i64 %i.in, 2                ; 2 uses
  %i.it = shl nuw nsw i64 %i.ip, 2                ; 2 uses
  %i.iu = sub nsw i64 %i.is, %i.it
  %scevgep311 = getelementptr i8, ptr %scevgep310, i64 %i.iu ; 5 uses
  %scevgep312 = getelementptr i8, ptr %i.ia, i64 132 ; 2 uses
  %scevgep313 = getelementptr i8, ptr %scevgep312, i64 %i.is ; 5 uses
  %scevgep314 = getelementptr i8, ptr %i.ia, i64 4 ; 4 uses
  %scevgep315 = getelementptr i8, ptr %scevgep314, i64 %i.iq ; 3 uses
  %scevgep316 = getelementptr i8, ptr %i.ia, i64 8
  %scevgep317 = getelementptr i8, ptr %scevgep316, i64 %i.iq ; 3 uses
  %scevgep318 = getelementptr i8, ptr %scevgep312, i64 %i.it ; 3 uses
  %bound0319 = icmp ult ptr %scevgep304, %scevgep309
  %bound1320 = icmp ult ptr %scevgep307, %scevgep306
  %found.conflict321 = and i1 %bound0319, %bound1320
  %bound0322 = icmp ult ptr %scevgep304, %scevgep313
  %bound1323 = icmp ult ptr %scevgep311, %scevgep306
  %found.conflict324 = and i1 %bound0322, %bound1323
  %conflict.rdx325 = or i1 %found.conflict321, %found.conflict324
  %bound0326 = icmp ult ptr %scevgep304, %scevgep315
  %bound1327 = icmp ult ptr %i.ia, %scevgep306
  %found.conflict328 = and i1 %bound0326, %bound1327
  %conflict.rdx329 = or i1 %conflict.rdx325, %found.conflict328
  %bound0330 = icmp ult ptr %scevgep304, %scevgep317
  %bound1331 = icmp ult ptr %scevgep314, %scevgep306
  %found.conflict332 = and i1 %bound0330, %bound1331
  %conflict.rdx333 = or i1 %conflict.rdx329, %found.conflict332
  %bound0334 = icmp ult ptr %scevgep304, %scevgep318
  %bound1335 = icmp ult ptr %i.ih, %scevgep306
  %found.conflict336 = and i1 %bound0334, %bound1335
  %conflict.rdx337 = or i1 %conflict.rdx333, %found.conflict336
  %bound0338 = icmp ult ptr %scevgep307, %scevgep313
  %bound1339 = icmp ult ptr %scevgep311, %scevgep309
  %found.conflict340 = and i1 %bound0338, %bound1339
  %conflict.rdx341 = or i1 %conflict.rdx337, %found.conflict340
  %bound0342 = icmp ult ptr %scevgep307, %scevgep315
  %bound1343 = icmp ult ptr %i.ia, %scevgep309
  %found.conflict344 = and i1 %bound0342, %bound1343
  %conflict.rdx345 = or i1 %conflict.rdx341, %found.conflict344
  %bound0346 = icmp ult ptr %scevgep307, %scevgep317
  %bound1347 = icmp ult ptr %scevgep314, %scevgep309
  %found.conflict348 = and i1 %bound0346, %bound1347
  %conflict.rdx349 = or i1 %conflict.rdx345, %found.conflict348
  %bound0350 = icmp ult ptr %scevgep307, %scevgep318
  %bound1351 = icmp ult ptr %i.ih, %scevgep309
  %found.conflict352 = and i1 %bound0350, %bound1351
  %conflict.rdx353 = or i1 %conflict.rdx349, %found.conflict352
  %bound0354 = icmp ult ptr %scevgep311, %scevgep315
  %bound1355 = icmp ult ptr %i.ia, %scevgep313
  %found.conflict356 = and i1 %bound0354, %bound1355
  %conflict.rdx357 = or i1 %conflict.rdx353, %found.conflict356
  %bound0358 = icmp ult ptr %scevgep311, %scevgep317
  %bound1359 = icmp ult ptr %scevgep314, %scevgep313
  %found.conflict360 = and i1 %bound0358, %bound1359
  %conflict.rdx361 = or i1 %conflict.rdx357, %found.conflict360
  %bound0362 = icmp ult ptr %scevgep311, %scevgep318
  %bound1363 = icmp ult ptr %i.ih, %scevgep313
  %found.conflict364 = and i1 %bound0362, %bound1363
  %conflict.rdx365 = or i1 %conflict.rdx361, %found.conflict364
  br i1 %conflict.rdx365, label %scalar.ph366.preheader, label %vector.ph368

vector.ph368:                                     ; preds = %vector.memcheck303
  %n.vec369 = and i64 %i.ii, 4294967294           ; 2 uses
  %i.iv = and i64 %i.ii, 1
  br label %vector.body370

vector.body370:                                   ; preds = %vector.body370, %vector.ph368
  %index371 = phi i64 [ 0, %vector.ph368 ], [ %index.next381, %vector.body370 ] ; 2 uses
  %i.iw = xor i64 %index371, -1
  %i.ix = add i64 %i.iw, %i.ii                    ; 2 uses
  %i.iy = trunc i64 %i.ix to i32
  %i.iz = and i64 %i.ix, 4294967295               ; 2 uses
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %i.iz
  %i.jb = add i32 %.sroa.speculated46.i98, %i.iy
  %i.jc = zext i32 %i.jb to i64                   ; 2 uses
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %i.jc
  %i.je = getelementptr inbounds i8, ptr %i.ja, i64 -8
  %interleaved.vec379 = load <4 x i32>, ptr %i.je, align 4, !tbaa !116
  %i.jf = getelementptr inbounds i8, ptr %i.jd, i64 -8
  store <4 x i32> %interleaved.vec379, ptr %i.jf, align 4, !tbaa !116
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.iz
  %i.jh = getelementptr inbounds i8, ptr %i.jg, i64 -4
  %wide.load380 = load <2 x i32>, ptr %i.jh, align 4, !tbaa !116, !alias.scope !2613
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.jc
  %i.jj = getelementptr inbounds i8, ptr %i.ji, i64 -4
  store <2 x i32> %wide.load380, ptr %i.jj, align 4, !tbaa !116, !alias.scope !2614, !noalias !2615
  %index.next381 = add nuw i64 %index371, 2       ; 2 uses
  %i.jk = icmp eq i64 %index.next381, %n.vec369
  br i1 %i.jk, label %middle.block382, label %vector.body370, !llvm.loop !2597

middle.block382:                                  ; preds = %vector.body370
  %cmp.n383 = icmp eq i64 %n.vec369, %i.ii
  br i1 %cmp.n383, label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE9moveRightEjjj.exit.i.i105, label %scalar.ph366.preheader

scalar.ph366.preheader:                           ; preds = %vector.memcheck303, %.lr.ph.i.i21.i100, %middle.block382
  %indvars.iv.i.i.i101.ph = phi i64 [ %i.ii, %vector.memcheck303 ], [ %i.ii, %.lr.ph.i.i21.i100 ], [ %i.iv, %middle.block382 ] ; 4 uses
  %i.jl = trunc nuw i64 %indvars.iv.i.i.i101.ph to i32
  %xtraiter515 = and i32 %i.jl, 1
  %lcmp.mod516.not = icmp eq i32 %xtraiter515, 0
  br i1 %lcmp.mod516.not, label %scalar.ph366.prol.loopexit, label %scalar.ph366.prol

scalar.ph366.prol:                                ; preds = %scalar.ph366.preheader
  %indvars.iv.next.i.i.i102.prol = add nsw i64 %indvars.iv.i.i.i101.ph, -1 ; 3 uses
  %indvars.i.i.i103.prol = trunc i64 %indvars.iv.next.i.i.i102.prol to i32
  %i.jm = and i64 %indvars.iv.next.i.i.i102.prol, 4294967295 ; 2 uses
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %i.jm
  %i.jo = add i32 %.sroa.speculated46.i98, %indvars.i.i.i103.prol
  %i.jp = zext i32 %i.jo to i64                   ; 2 uses
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %i.jp
  %i.jr = load <2 x i32>, ptr %i.jn, align 4, !tbaa !116
  store <2 x i32> %i.jr, ptr %i.jq, align 4, !tbaa !116
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.jm
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !116
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.jp
  store i32 %i.jt, ptr %i.ju, align 4, !tbaa !116
  br label %scalar.ph366.prol.loopexit

scalar.ph366.prol.loopexit:                       ; preds = %scalar.ph366.prol, %scalar.ph366.preheader
  %indvars.iv.i.i.i101.unr = phi i64 [ %indvars.iv.i.i.i101.ph, %scalar.ph366.preheader ], [ %indvars.iv.next.i.i.i102.prol, %scalar.ph366.prol ]
  %i.jv = icmp eq i64 %indvars.iv.i.i.i101.ph, 1
  br i1 %i.jv, label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE9moveRightEjjj.exit.i.i105, label %scalar.ph366

scalar.ph366:                                     ; preds = %scalar.ph366.prol.loopexit, %scalar.ph366
  %indvars.iv.i.i.i101 = phi i64 [ %indvars.iv.next.i.i.i102.1, %scalar.ph366 ], [ %indvars.iv.i.i.i101.unr, %scalar.ph366.prol.loopexit ] ; 2 uses
  %indvars.iv.next.i.i.i102 = add nsw i64 %indvars.iv.i.i.i101, -1 ; 2 uses
  %indvars.i.i.i103 = trunc i64 %indvars.iv.next.i.i.i102 to i32
  %i.jw = and i64 %indvars.iv.next.i.i.i102, 4294967295 ; 2 uses
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %i.jw
  %i.jy = add i32 %.sroa.speculated46.i98, %indvars.i.i.i103
  %i.jz = zext i32 %i.jy to i64                   ; 2 uses
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %i.jz
  %i.kb = load <2 x i32>, ptr %i.jx, align 4, !tbaa !116
  store <2 x i32> %i.kb, ptr %i.ka, align 4, !tbaa !116
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.jw
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !116
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.jz
  store i32 %i.kd, ptr %i.ke, align 4, !tbaa !116
  %indvars.iv.next.i.i.i102.1 = add nsw i64 %indvars.iv.i.i.i101, -2 ; 3 uses
  %indvars.i.i.i103.1 = trunc i64 %indvars.iv.next.i.i.i102.1 to i32 ; 2 uses
  %i.kf = and i64 %indvars.iv.next.i.i.i102.1, 4294967295 ; 2 uses
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %i.kf
  %i.kh = add i32 %.sroa.speculated46.i98, %indvars.i.i.i103.1
  %i.ki = zext i32 %i.kh to i64                   ; 2 uses
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %i.ki
  %i.kk = load <2 x i32>, ptr %i.kg, align 4, !tbaa !116
  store <2 x i32> %i.kk, ptr %i.kj, align 4, !tbaa !116
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.kf
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !116
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.ki
  store i32 %i.km, ptr %i.kn, align 4, !tbaa !116
  %.not.i.i22.i104.1 = icmp eq i32 %indvars.i.i.i103.1, 0
  br i1 %.not.i.i22.i104.1, label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE9moveRightEjjj.exit.i.i105, label %scalar.ph366, !llvm.loop !2598

_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE9moveRightEjjj.exit.i.i105: ; preds = %scalar.ph366.prol.loopexit, %scalar.ph366, %middle.block382, %.lr.ph.i.i.i96
  %.not13.i.i.i106 = icmp eq i32 %.sroa.speculated46.i98, 0
  br i1 %.not13.i.i.i106, label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE17adjustFromLeftSibEjRS4_ji.exit112, label %.lr.ph.i7.i.i107

.lr.ph.i7.i.i107:                                 ; preds = %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE9moveRightEjjj.exit.i.i105
  %i.ko = sub i32 %i.hw, %.sroa.speculated46.i98  ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ia, i64 128 ; 3 uses
  %xtraiter518 = and i32 %.sroa.speculated46.i98, 1
  %i.kq = icmp eq i32 %.sroa.speculated46.i98, 1
  br i1 %i.kq, label %.epil.preheader517, label %.lr.ph.i7.i.i107.new

.lr.ph.i7.i.i107.new:                             ; preds = %.lr.ph.i7.i.i107
  %unroll_iter521 = and i32 %.sroa.speculated46.i98, 2147483646
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i7.i.i107.new
  %indvars.iv.i.i108 = phi i64 [ 0, %.lr.ph.i7.i.i107.new ], [ %indvars.iv.next.i.i110.1, %bb.f ] ; 4 uses
  %.015.i.i.i109 = phi i32 [ %i.ko, %.lr.ph.i7.i.i107.new ], [ %i.lg, %bb.f ] ; 3 uses
  %niter522 = phi i32 [ 0, %.lr.ph.i7.i.i107.new ], [ %niter522.next.1, %bb.f ]
  %i.kr = zext i32 %.015.i.i.i109 to i64          ; 2 uses
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %i.kr
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %indvars.iv.i.i108
  %i.ku = load <2 x i32>, ptr %i.ks, align 4, !tbaa !116
  store <2 x i32> %i.ku, ptr %i.kt, align 4, !tbaa !116
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %i.kr
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !116
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %indvars.iv.i.i108
  store i32 %i.kw, ptr %i.kx, align 4, !tbaa !116
  %i.ky = add i32 %.015.i.i.i109, 1
  %indvars.iv.next.i.i110 = or disjoint i64 %indvars.iv.i.i108, 1 ; 2 uses
  %i.kz = zext i32 %i.ky to i64                   ; 2 uses
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %i.kz
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %indvars.iv.next.i.i110
  %i.lc = load <2 x i32>, ptr %i.la, align 4, !tbaa !116
  store <2 x i32> %i.lc, ptr %i.lb, align 4, !tbaa !116
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %i.kz
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !116
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %indvars.iv.next.i.i110
  store i32 %i.le, ptr %i.lf, align 4, !tbaa !116
  %i.lg = add i32 %.015.i.i.i109, 2               ; 2 uses
  %indvars.iv.next.i.i110.1 = add nuw nsw i64 %indvars.iv.i.i108, 2 ; 2 uses
  %niter522.next.1 = add i32 %niter522, 2         ; 2 uses
  %niter522.ncmp.1 = icmp eq i32 %niter522.next.1, %unroll_iter521
  br i1 %niter522.ncmp.1, label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE17adjustFromLeftSibEjRS4_ji.exit112.loopexit.unr-lcssa, label %bb.f, !llvm.loop !45

.lr.ph.i.i24.i78:                                 ; preds = %.lr.ph153
  %i.lh = sub nsw i32 0, %i.id                    ; 2 uses
  %i.li = sub i32 16, %i.hw                       ; 2 uses
  %i.lj = tail call i32 @llvm.umin.i32(i32 %i.ic, i32 %i.lh)
  %.sroa.speculated.i80 = tail call i32 @llvm.umin.i32(i32 %i.li, i32 %i.lj) ; 13 uses
  %.not13.i.i29.i81 = icmp eq i32 %.sroa.speculated.i80, 0
  br i1 %.not13.i.i29.i81, label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE4copyILj16EEEvRKNS1_IS3_jXT_EEEjjj.exit.i.i87, label %.lr.ph.i.i30.i82

.lr.ph.i.i30.i82:                                 ; preds = %.lr.ph.i.i24.i78
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ia, i64 128 ; 3 uses
  %i.ll = zext nneg i32 %.sroa.speculated.i80 to i64 ; 2 uses
  %xtraiter508 = and i64 %i.ll, 1
  %i.lm = icmp eq i32 %.sroa.speculated.i80, 1
  br i1 %i.lm, label %.epil.preheader507, label %.lr.ph.i.i30.i82.new

.lr.ph.i.i30.i82.new:                             ; preds = %.lr.ph.i.i30.i82
  %unroll_iter511 = and i64 %i.ll, 2147483646
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i30.i82.new
  %indvars.iv.i31.i83 = phi i64 [ 0, %.lr.ph.i.i30.i82.new ], [ %indvars.iv.next.i32.i85.1, %bb.g ] ; 4 uses
  %.01214.i.i.i84 = phi i32 [ %i.hw, %.lr.ph.i.i30.i82.new ], [ %i.mc, %bb.g ] ; 3 uses
  %niter512 = phi i64 [ 0, %.lr.ph.i.i30.i82.new ], [ %niter512.next.1, %bb.g ]
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %indvars.iv.i31.i83
  %i.lo = zext i32 %.01214.i.i.i84 to i64         ; 2 uses
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %i.lo
  %i.lq = load <2 x i32>, ptr %i.ln, align 4, !tbaa !116
  store <2 x i32> %i.lq, ptr %i.lp, align 4, !tbaa !116
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %indvars.iv.i31.i83
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !116
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %i.lo
  store i32 %i.ls, ptr %i.lt, align 4, !tbaa !116
  %indvars.iv.next.i32.i85 = or disjoint i64 %indvars.iv.i31.i83, 1 ; 2 uses
  %i.lu = add i32 %.01214.i.i.i84, 1
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %indvars.iv.next.i32.i85
  %i.lw = zext i32 %i.lu to i64                   ; 2 uses
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %i.lw
  %i.ly = load <2 x i32>, ptr %i.lv, align 4, !tbaa !116
  store <2 x i32> %i.ly, ptr %i.lx, align 4, !tbaa !116
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %indvars.iv.next.i32.i85
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !116
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %i.lw
  store i32 %i.ma, ptr %i.mb, align 4, !tbaa !116
  %indvars.iv.next.i32.i85.1 = add nuw nsw i64 %indvars.iv.i31.i83, 2 ; 2 uses
  %i.mc = add i32 %.01214.i.i.i84, 2              ; 2 uses
  %niter512.next.1 = add i64 %niter512, 2         ; 2 uses
  %niter512.ncmp.1 = icmp eq i64 %niter512.next.1, %unroll_iter511
  br i1 %niter512.ncmp.1, label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE4copyILj16EEEvRKNS1_IS3_jXT_EEEjjj.exit.i.i87.loopexit.unr-lcssa, label %bb.g, !llvm.loop !45

_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE4copyILj16EEEvRKNS1_IS3_jXT_EEEjjj.exit.i.i87.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod509.not = icmp eq i64 %xtraiter508, 0
  br i1 %lcmp.mod509.not, label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE4copyILj16EEEvRKNS1_IS3_jXT_EEEjjj.exit.i.i87, label %.epil.preheader507

.epil.preheader507:                               ; preds = %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE4copyILj16EEEvRKNS1_IS3_jXT_EEEjjj.exit.i.i87.loopexit.unr-lcssa, %.lr.ph.i.i30.i82
  %indvars.iv.i31.i83.epil.init = phi i64 [ 0, %.lr.ph.i.i30.i82 ], [ %indvars.iv.next.i32.i85.1, %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE4copyILj16EEEvRKNS1_IS3_jXT_EEEjjj.exit.i.i87.loopexit.unr-lcssa ] ; 2 uses
  %.01214.i.i.i84.epil.init = phi i32 [ %i.hw, %.lr.ph.i.i30.i82 ], [ %i.mc, %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE4copyILj16EEEvRKNS1_IS3_jXT_EEEjjj.exit.i.i87.loopexit.unr-lcssa ]
  %lcmp.mod510 = trunc i32 %.sroa.speculated.i80 to i1
  tail call void @llvm.assume(i1 %lcmp.mod510)
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %indvars.iv.i31.i83.epil.init
  %i.me = zext i32 %.01214.i.i.i84.epil.init to i64 ; 2 uses
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %i.me
  %i.mg = load <2 x i32>, ptr %i.md, align 4, !tbaa !116
  store <2 x i32> %i.mg, ptr %i.mf, align 4, !tbaa !116
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %indvars.iv.i31.i83.epil.init
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !116
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %i.me
  store i32 %i.mi, ptr %i.mj, align 4, !tbaa !116
  br label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE4copyILj16EEEvRKNS1_IS3_jXT_EEEjjj.exit.i.i87

_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE4copyILj16EEEvRKNS1_IS3_jXT_EEEjjj.exit.i.i87: ; preds = %.epil.preheader507, %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE4copyILj16EEEvRKNS1_IS3_jXT_EEEjjj.exit.i.i87.loopexit.unr-lcssa, %.lr.ph.i.i24.i78
  %.not13.i.i.i.i.i88 = icmp eq i32 %i.ic, %.sroa.speculated.i80
  br i1 %.not13.i.i.i.i.i88, label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE17transferToLeftSibEjRS4_jj.exit.i94, label %.lr.ph.i.i.i.i.i89

.lr.ph.i.i.i.i.i89:                               ; preds = %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE4copyILj16EEEvRKNS1_IS3_jXT_EEEjjj.exit.i.i87
  %i.mk = getelementptr inbounds nuw i8, ptr %i.ia, i64 128 ; 13 uses
  %i.ml = xor i32 %.sroa.speculated.i80, -1
  %i.mm = add i32 %i.ic, %i.ml                    ; 2 uses
  %i.mn = zext i32 %i.mm to i64
  %i.mo = add nuw nsw i64 %i.mn, 1                ; 2 uses
  %min.iters.check453 = icmp ult i32 %i.mm, 33
  %i.mp = add i32 %i.ic, -1
  %i.mq = icmp ult i32 %i.mp, %.sroa.speculated.i80
  %or.cond480 = or i1 %min.iters.check453, %i.mq
  br i1 %or.cond480, label %scalar.ph452.preheader, label %vector.memcheck386

vector.memcheck386:                               ; preds = %.lr.ph.i.i.i.i.i89
  %scevgep387 = getelementptr i8, ptr %i.ia, i64 4 ; 6 uses
  %i.mr = xor i32 %.sroa.speculated.i80, -1
  %i.ms = add i32 %i.ic, %i.mr
  %i.mt = zext i32 %i.ms to i64                   ; 2 uses
  %i.mu = shl nuw nsw i64 %i.mt, 3                ; 3 uses
  %scevgep388 = getelementptr i8, ptr %scevgep387, i64 %i.mu ; 2 uses
  %scevgep389 = getelementptr i8, ptr %i.ia, i64 8
  %scevgep390 = getelementptr i8, ptr %scevgep389, i64 %i.mu ; 5 uses
  %scevgep391 = getelementptr i8, ptr %i.ia, i64 132
  %i.mv = shl nuw nsw i64 %i.mt, 2                ; 2 uses
  %scevgep392 = getelementptr i8, ptr %scevgep391, i64 %i.mv ; 5 uses
  %i.mw = tail call i32 @llvm.umin.i32(i32 %i.ic, i32 %i.lh)
  %i.mx = tail call i32 @llvm.umin.i32(i32 %i.mw, i32 %i.li)
  %umin394 = zext i32 %i.mx to i64                ; 2 uses
  %i.my = shl nuw nsw i64 %umin394, 3             ; 3 uses
  %scevgep395 = getelementptr i8, ptr %i.ia, i64 %i.my ; 3 uses
  %scevgep396 = getelementptr i8, ptr %i.ia, i64 4 ; 2 uses
  %i.mz = add nuw nsw i64 %i.my, %i.mu            ; 2 uses
  %scevgep397 = getelementptr i8, ptr %scevgep396, i64 %i.mz ; 3 uses
  %scevgep398 = getelementptr i8, ptr %scevgep396, i64 %i.my ; 3 uses
  %scevgep399 = getelementptr i8, ptr %i.ia, i64 8
  %scevgep400 = getelementptr i8, ptr %scevgep399, i64 %i.mz ; 3 uses
  %scevgep401 = getelementptr i8, ptr %i.ia, i64 128
  %i.na = shl nuw nsw i64 %umin394, 2             ; 2 uses
  %scevgep402 = getelementptr i8, ptr %scevgep401, i64 %i.na ; 3 uses
  %scevgep403 = getelementptr i8, ptr %i.ia, i64 132
  %i.nb = getelementptr i8, ptr %scevgep403, i64 %i.na
  %scevgep404 = getelementptr i8, ptr %i.nb, i64 %i.mv ; 3 uses
  %i.nc = insertelement <4 x ptr> poison, ptr %i.ia, i64 0
  %i.nd = shufflevector <4 x ptr> %i.nc, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ne = insertelement <4 x ptr> poison, ptr %scevgep390, i64 0
  %i.nf = insertelement <4 x ptr> %i.ne, ptr %scevgep392, i64 1
  %i.ng = insertelement <4 x ptr> %i.nf, ptr %scevgep397, i64 2
  %i.nh = insertelement <4 x ptr> %i.ng, ptr %scevgep400, i64 3
  %i.ni = icmp ult <4 x ptr> %i.nd, %i.nh
  %6 = insertelement <4 x ptr> poison, ptr %scevgep387, i64 0
  %7 = insertelement <4 x ptr> %6, ptr %i.mk, i64 1
  %i.nj = insertelement <4 x ptr> %7, ptr %scevgep395, i64 2
  %i.nk = insertelement <4 x ptr> %i.nj, ptr %scevgep398, i64 3
  %i.nl = insertelement <4 x ptr> poison, ptr %scevgep388, i64 0
  %i.nm = shufflevector <4 x ptr> %i.nl, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.nn = icmp ult <4 x ptr> %i.nk, %i.nm
  %i.no = and <4 x i1> %i.ni, %i.nn
  %bound0420 = icmp ult ptr %i.ia, %scevgep404
  %bound1421 = icmp ult ptr %scevgep402, %scevgep388
  %found.conflict422 = and i1 %bound0420, %bound1421
  %bound0424 = icmp ult ptr %scevgep387, %scevgep392
  %bound1425 = icmp ult ptr %i.mk, %scevgep390
  %found.conflict426 = and i1 %bound0424, %bound1425
  %bound0428 = icmp ult ptr %scevgep387, %scevgep397
  %bound1429 = icmp ult ptr %scevgep395, %scevgep390
  %found.conflict430 = and i1 %bound0428, %bound1429
  %bound0432 = icmp ult ptr %scevgep387, %scevgep400
  %bound1433 = icmp ult ptr %scevgep398, %scevgep390
  %found.conflict434 = and i1 %bound0432, %bound1433
  %bound0436 = icmp ult ptr %scevgep387, %scevgep404
  %bound1437 = icmp ult ptr %scevgep402, %scevgep390
  %found.conflict438 = and i1 %bound0436, %bound1437
  %bound0440 = icmp ult ptr %i.mk, %scevgep397
  %bound1441 = icmp ult ptr %scevgep395, %scevgep392
  %found.conflict442 = and i1 %bound0440, %bound1441
  %bound0444 = icmp ult ptr %i.mk, %scevgep400
  %bound1445 = icmp ult ptr %scevgep398, %scevgep392
  %found.conflict446 = and i1 %bound0444, %bound1445
  %bound0448 = icmp ult ptr %i.mk, %scevgep404
  %bound1449 = icmp ult ptr %scevgep402, %scevgep392
  %found.conflict450 = and i1 %bound0448, %bound1449
  %i.np = bitcast <4 x i1> %i.no to i4
  %i.nq = icmp ne i4 %i.np, 0
  %op.rdx = or i1 %i.nq, %found.conflict422
  %op.rdx481 = or i1 %found.conflict426, %found.conflict430
  %op.rdx482 = or i1 %found.conflict434, %found.conflict438
  %op.rdx483 = or i1 %found.conflict442, %found.conflict446
  %op.rdx484 = or i1 %op.rdx, %op.rdx481
  %op.rdx485 = or i1 %op.rdx482, %op.rdx483
  %op.rdx486 = or i1 %op.rdx484, %op.rdx485
  %op.rdx487 = or i1 %op.rdx486, %found.conflict450
  br i1 %op.rdx487, label %scalar.ph452.preheader, label %vector.ph454

vector.ph454:                                     ; preds = %vector.memcheck386
  %n.vec455 = and i64 %i.mo, 8589934588           ; 4 uses
  %i.nr = trunc i64 %n.vec455 to i32
  %i.ns = add i32 %.sroa.speculated.i80, %i.nr
  br label %vector.body456

vector.body456:                                   ; preds = %vector.body456, %vector.ph454
  %index457 = phi i64 [ 0, %vector.ph454 ], [ %index.next468, %vector.body456 ] ; 5 uses
  %i.nt = trunc i64 %index457 to i32
  %i.nu = add i32 %.sroa.speculated.i80, %i.nt    ; 2 uses
  %i.nv = add i32 %i.nu, 2
  %i.nw = zext i32 %i.nu to i64                   ; 2 uses
  %i.nx = zext i32 %i.nv to i64
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %i.nw
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %i.nx
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %index457
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %index457
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 16
  %wide.vec458 = load <4 x i32>, ptr %i.ny, align 4, !tbaa !116
  %wide.vec461 = load <4 x i32>, ptr %i.nz, align 4, !tbaa !116
  store <4 x i32> %wide.vec458, ptr %i.oa, align 4, !tbaa !116
  store <4 x i32> %wide.vec461, ptr %i.oc, align 4, !tbaa !116
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %i.nw ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 8
  %wide.load466 = load <2 x i32>, ptr %i.od, align 4, !tbaa !116, !alias.scope !2616
  %wide.load467 = load <2 x i32>, ptr %i.oe, align 4, !tbaa !116, !alias.scope !2616
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %index457 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 8
  store <2 x i32> %wide.load466, ptr %i.of, align 4, !tbaa !116, !alias.scope !2617, !noalias !2618
  store <2 x i32> %wide.load467, ptr %i.og, align 4, !tbaa !116, !alias.scope !2617, !noalias !2618
  %index.next468 = add nuw i64 %index457, 4       ; 2 uses
  %i.oh = icmp eq i64 %index.next468, %n.vec455
  br i1 %i.oh, label %middle.block469, label %vector.body456, !llvm.loop !2604

middle.block469:                                  ; preds = %vector.body456
  %cmp.n470 = icmp eq i64 %i.mo, %n.vec455
  br i1 %cmp.n470, label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE17transferToLeftSibEjRS4_jj.exit.i94, label %scalar.ph452.preheader

scalar.ph452.preheader:                           ; preds = %vector.memcheck386, %.lr.ph.i.i.i.i.i89, %middle.block469
  %indvars.iv6.i.i90.ph = phi i64 [ 0, %vector.memcheck386 ], [ 0, %.lr.ph.i.i.i.i.i89 ], [ %n.vec455, %middle.block469 ] ; 4 uses
  %.015.i.i.i.i.i91.ph = phi i32 [ %.sroa.speculated.i80, %vector.memcheck386 ], [ %.sroa.speculated.i80, %.lr.ph.i.i.i.i.i89 ], [ %i.ns, %middle.block469 ] ; 5 uses
  %i.oi = sub i32 %i.ic, %.015.i.i.i.i.i91.ph
  %.neg523 = add i32 %.015.i.i.i.i.i91.ph, 1
  %xtraiter513 = and i32 %i.oi, 1
  %lcmp.mod514.not = icmp eq i32 %xtraiter513, 0
  br i1 %lcmp.mod514.not, label %scalar.ph452.prol.loopexit, label %scalar.ph452.prol

scalar.ph452.prol:                                ; preds = %scalar.ph452.preheader
  %i.oj = zext i32 %.015.i.i.i.i.i91.ph to i64    ; 2 uses
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %i.oj
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %indvars.iv6.i.i90.ph
  %i.om = load <2 x i32>, ptr %i.ok, align 4, !tbaa !116
  store <2 x i32> %i.om, ptr %i.ol, align 4, !tbaa !116
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %i.oj
  %i.oo = load i32, ptr %i.on, align 4, !tbaa !116
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %indvars.iv6.i.i90.ph
  store i32 %i.oo, ptr %i.op, align 4, !tbaa !116
  %i.oq = add i32 %.015.i.i.i.i.i91.ph, 1
  %indvars.iv.next7.i.i92.prol = or disjoint i64 %indvars.iv6.i.i90.ph, 1
  br label %scalar.ph452.prol.loopexit

scalar.ph452.prol.loopexit:                       ; preds = %scalar.ph452.prol, %scalar.ph452.preheader
  %indvars.iv6.i.i90.unr = phi i64 [ %indvars.iv6.i.i90.ph, %scalar.ph452.preheader ], [ %indvars.iv.next7.i.i92.prol, %scalar.ph452.prol ]
  %.015.i.i.i.i.i91.unr = phi i32 [ %.015.i.i.i.i.i91.ph, %scalar.ph452.preheader ], [ %i.oq, %scalar.ph452.prol ]
  %i.or = icmp eq i32 %i.ic, %.neg523
  br i1 %i.or, label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE17transferToLeftSibEjRS4_jj.exit.i94, label %scalar.ph452

scalar.ph452:                                     ; preds = %scalar.ph452.prol.loopexit, %scalar.ph452
  %indvars.iv6.i.i90 = phi i64 [ %indvars.iv.next7.i.i92.1, %scalar.ph452 ], [ %indvars.iv6.i.i90.unr, %scalar.ph452.prol.loopexit ] ; 4 uses
  %.015.i.i.i.i.i91 = phi i32 [ %i.ph, %scalar.ph452 ], [ %.015.i.i.i.i.i91.unr, %scalar.ph452.prol.loopexit ] ; 3 uses
  %i.os = zext i32 %.015.i.i.i.i.i91 to i64       ; 2 uses
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %i.os
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %indvars.iv6.i.i90
  %i.ov = load <2 x i32>, ptr %i.ot, align 4, !tbaa !116
  store <2 x i32> %i.ov, ptr %i.ou, align 4, !tbaa !116
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %i.os
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !116
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %indvars.iv6.i.i90
  store i32 %i.ox, ptr %i.oy, align 4, !tbaa !116
  %i.oz = add i32 %.015.i.i.i.i.i91, 1
  %indvars.iv.next7.i.i92 = add nuw nsw i64 %indvars.iv6.i.i90, 1 ; 2 uses
  %i.pa = zext i32 %i.oz to i64                   ; 2 uses
  %i.pb = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %i.pa
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %indvars.iv.next7.i.i92
  %i.pd = load <2 x i32>, ptr %i.pb, align 4, !tbaa !116
  store <2 x i32> %i.pd, ptr %i.pc, align 4, !tbaa !116
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %i.pa
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !116
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %indvars.iv.next7.i.i92
  store i32 %i.pf, ptr %i.pg, align 4, !tbaa !116
  %i.ph = add i32 %.015.i.i.i.i.i91, 2            ; 2 uses
  %indvars.iv.next7.i.i92.1 = add nuw nsw i64 %indvars.iv6.i.i90, 2
  %.not.i.i.i.i.i93.1 = icmp eq i32 %i.ph, %i.ic
  br i1 %.not.i.i.i.i.i93.1, label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE17transferToLeftSibEjRS4_jj.exit.i94, label %scalar.ph452, !llvm.loop !2605

_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE17transferToLeftSibEjRS4_jj.exit.i94: ; preds = %scalar.ph452.prol.loopexit, %scalar.ph452, %middle.block469, %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE4copyILj16EEEvRKNS1_IS3_jXT_EEEjjj.exit.i.i87
  %i.pi = sub nsw i32 0, %.sroa.speculated.i80
  br label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE17adjustFromLeftSibEjRS4_ji.exit112

_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE17adjustFromLeftSibEjRS4_ji.exit112.loopexit.unr-lcssa: ; preds = %bb.f
  %lcmp.mod519.not = icmp eq i32 %xtraiter518, 0
  br i1 %lcmp.mod519.not, label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE17adjustFromLeftSibEjRS4_ji.exit112, label %.epil.preheader517

.epil.preheader517:                               ; preds = %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE17adjustFromLeftSibEjRS4_ji.exit112.loopexit.unr-lcssa, %.lr.ph.i7.i.i107
  %indvars.iv.i.i108.epil.init = phi i64 [ 0, %.lr.ph.i7.i.i107 ], [ %indvars.iv.next.i.i110.1, %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE17adjustFromLeftSibEjRS4_ji.exit112.loopexit.unr-lcssa ] ; 2 uses
  %.015.i.i.i109.epil.init = phi i32 [ %i.ko, %.lr.ph.i7.i.i107 ], [ %i.lg, %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE17adjustFromLeftSibEjRS4_ji.exit112.loopexit.unr-lcssa ]
  %lcmp.mod520 = trunc i32 %.sroa.speculated46.i98 to i1
  tail call void @llvm.assume(i1 %lcmp.mod520)
  %i.pj = zext i32 %.015.i.i.i109.epil.init to i64 ; 2 uses
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %i.pj
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %indvars.iv.i.i108.epil.init
  %i.pm = load <2 x i32>, ptr %i.pk, align 4, !tbaa !116
  store <2 x i32> %i.pm, ptr %i.pl, align 4, !tbaa !116
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %i.pj
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !116
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %indvars.iv.i.i108.epil.init
  store i32 %i.po, ptr %i.pp, align 4, !tbaa !116
  br label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE17adjustFromLeftSibEjRS4_ji.exit112

_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE17adjustFromLeftSibEjRS4_ji.exit112: ; preds = %.epil.preheader517, %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE17adjustFromLeftSibEjRS4_ji.exit112.loopexit.unr-lcssa, %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE9moveRightEjjj.exit.i.i105, %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE17transferToLeftSibEjRS4_jj.exit.i94
  %.0.i95 = phi i32 [ %i.pi, %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE17transferToLeftSibEjRS4_jj.exit.i94 ], [ 0, %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE9moveRightEjjj.exit.i.i105 ], [ %.sroa.speculated46.i98, %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE17adjustFromLeftSibEjRS4_ji.exit112.loopexit.unr-lcssa ], [ %.sroa.speculated46.i98, %.epil.preheader517 ] ; 2 uses
  %i.pq = load i32, ptr %i.ib, align 4, !tbaa !116
  %i.pr = add i32 %i.pq, %.0.i95
  store i32 %i.pr, ptr %i.ib, align 4, !tbaa !116
  %i.ps = load i32, ptr %i.hm, align 4, !tbaa !116
  %i.pt = sub i32 %i.ps, %.0.i95                  ; 3 uses
  store i32 %i.pt, ptr %i.hm, align 4, !tbaa !116
  %i.pu = load i32, ptr %i.ho, align 4, !tbaa !116 ; 2 uses
  %.not75 = icmp ult i32 %i.pt, %i.pu
  br i1 %.not75, label %bb.e, label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE17adjustFromLeftSibEjRS4_ji.exit112..loopexit.loopexit_crit_edge, !llvm.loop !2591

_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE17adjustFromLeftSibEjRS4_ji.exit112..loopexit.loopexit_crit_edge: ; preds = %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE17adjustFromLeftSibEjRS4_ji.exit112
  br label %.loopexit, !llvm.loop !2591

.loopexit:                                        ; preds = %bb.e, %.preheader, %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIjjEjLj16EE17adjustFromLeftSibEjRS4_ji.exit112..loopexit.loopexit_crit_edge, %.lr.ph121
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1 ; 2 uses
  %.not73 = icmp eq i64 %indvars.iv.next127, %i.c
  br i1 %.not73, label %.loopexit114, label %.lr.ph121, !llvm.loop !2606

.loopexit114:                                     ; preds = %.loopexit, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN4llvm11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEE8iterator10insertNodeEjNS_15IntervalMapImpl7NodeRefEj(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1, i64 %2, i32 noundef %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !469    ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.c = icmp eq i32 %1, 1                        ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 196 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !459  ; 8 uses
  %i.f = icmp ult i32 %i.e, 15
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
end_hunk_1

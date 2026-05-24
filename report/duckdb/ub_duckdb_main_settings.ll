inline.NumInlined: 2875
inline.NumDeleted: 1096
begin_hunk_0_@_ZN17duckdb_fast_float19parse_long_mantissaINS_13binary_formatIdEEEENS_17adjusted_mantissaEPKcS5_:bb.a
  %i.au = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  br i1 %i.at, label %bb.i, label %.thread

.thread:                                          ; preds = %bb.j, %bb.i, %.critedge4.i
  %.lcssa27 = phi i32 [ %.promoted26, %.critedge4.i ], [ %i.aj, %bb.i ], [ %i.au, %bb.j ] ; 3 uses
  %.5.i.lcssa = phi ptr [ %.4.i, %.critedge4.i ], [ %.5.i28, %bb.i ], [ %i.ai, %bb.j ] ; 3 uses
  store i32 %.lcssa27, ptr %2, align 4
  %.not101.i37 = icmp eq ptr %.5.i.lcssa, %1
  br i1 %.not101.i37, label %.critedge6.i, label %.lr.ph39

.lr.ph39:                                         ; preds = %.thread, %bb.m
  %.8.i38 = phi ptr [ %i.bd, %bb.m ], [ %.5.i.lcssa, %.thread ] ; 3 uses
  %i.av = phi i32 [ %i.bc, %bb.m ], [ %.lcssa27, %.thread ] ; 4 uses
  %i.aw = load i8, ptr %.8.i38, align 1, !tbaa !222, !noalias !617
  %i.ax = add i8 %i.aw, -48                       ; 2 uses
  %i.ay = icmp ult i8 %i.ax, 10
  br i1 %i.ay, label %bb.k, label %.critedge6.i

bb.k:                                             ; preds = %.lr.ph39
  %i.az = icmp ult i32 %i.av, 768
  br i1 %i.az, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ba = zext nneg i32 %i.av to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ba
  store i8 %i.ax, ptr %i.bb, align 1, !tbaa !222, !alias.scope !617
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bc = add i32 %i.av, 1                        ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.8.i38, i64 1 ; 3 uses
  %.not101.i = icmp eq ptr %i.bd, %1
  br i1 %.not101.i, label %.critedge6.i, label %.lr.ph39, !llvm.loop !625

.critedge6.i:                                     ; preds = %bb.m, %.lr.ph39, %.thread
  %.lcssa36 = phi i32 [ %.lcssa27, %.thread ], [ %i.av, %.lr.ph39 ], [ %i.bc, %bb.m ] ; 2 uses
  %.8.i.lcssa = phi ptr [ %.5.i.lcssa, %.thread ], [ %.8.i38, %.lr.ph39 ], [ %i.bd, %bb.m ] ; 2 uses
  store i32 %.lcssa36, ptr %2, align 4
  %i.be = ptrtoint ptr %i.w to i64
  %i.bf = ptrtoint ptr %.8.i.lcssa to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = trunc i64 %i.bg to i32                  ; 2 uses
  store i32 %i.bh, ptr %i.b, align 4, !tbaa !626, !alias.scope !617
  br label %.critedge106.i

.critedge106.i.loopexit:                          ; preds = %bb.f, %.critedge.i
  %.lcssa13 = phi i32 [ 0, %.critedge.i ], [ %i.t, %bb.f ] ; 2 uses
  %.2.i.lcssa = phi ptr [ %.1.i.lcssa, %.critedge.i ], [ %i.u, %bb.f ]
  store i32 %.lcssa13, ptr %2, align 4
  br label %.critedge106.i

.critedge106.i:                                   ; preds = %.critedge106.i.loopexit, %.critedge6.i, %.critedge2.i
  %i.bi = phi i32 [ %i.bh, %.critedge6.i ], [ 0, %.critedge2.i ], [ 0, %.critedge106.i.loopexit ] ; 2 uses
  %i.bj = phi i32 [ %.lcssa36, %.critedge6.i ], [ %.promoted26, %.critedge2.i ], [ %.lcssa13, %.critedge106.i.loopexit ] ; 3 uses
  %.9.i = phi ptr [ %.8.i.lcssa, %.critedge6.i ], [ %.2.i16, %.critedge2.i ], [ %.2.i.lcssa, %.critedge106.i.loopexit ] ; 6 uses
  %.not102.i = icmp eq i32 %i.bj, 0
  br i1 %.not102.i, label %.thread6, label %.preheader

.preheader:                                       ; preds = %.critedge106.i, %.critedge8.i
  %.9.pn.i = phi ptr [ %.087.i, %.critedge8.i ], [ %.9.i, %.critedge106.i ]
  %.085.i = phi i32 [ %spec.select107.i, %.critedge8.i ], [ 0, %.critedge106.i ] ; 2 uses
  %.087.i = getelementptr inbounds i8, ptr %.9.pn.i, i64 -1 ; 2 uses
  %i.bk = load i8, ptr %.087.i, align 1, !tbaa !222, !noalias !617 ; 2 uses
  switch i8 %i.bk, label %bb.n [
    i8 48, label %.critedge8.i
    i8 46, label %.critedge8.i
  ]

.critedge8.i:                                     ; preds = %.preheader, %.preheader
  %i.bl = icmp eq i8 %i.bk, 48
  %i.bm = zext i1 %i.bl to i32
  %spec.select107.i = add nuw nsw i32 %.085.i, %i.bm
  br label %.preheader, !llvm.loop !627

bb.n:                                             ; preds = %.preheader
  %i.bn = add nsw i32 %i.bi, %i.bj                ; 3 uses
  store i32 %i.bn, ptr %i.b, align 4, !tbaa !626, !alias.scope !617
  %i.bo = sub i32 %i.bj, %.085.i                  ; 3 uses
  store i32 %i.bo, ptr %2, align 4, !tbaa !628, !alias.scope !617
  %i.bp = icmp ugt i32 %i.bo, 768
  br i1 %i.bp, label %bb.o, label %.thread6

bb.o:                                             ; preds = %bb.n
  store i8 1, ptr %i.c, align 1, !tbaa !629, !alias.scope !617
  store i32 768, ptr %2, align 4, !tbaa !628, !alias.scope !617
  br label %.thread6

.thread6:                                         ; preds = %.critedge106.i, %bb.o, %bb.n
  %i.bq = phi i32 [ 0, %.critedge106.i ], [ 768, %bb.o ], [ %i.bo, %bb.n ] ; 3 uses
  %i.br = phi i32 [ %i.bi, %.critedge106.i ], [ %i.bn, %bb.o ], [ %i.bn, %bb.n ]
  %.not103.i = icmp eq ptr %.9.i, %1
  br i1 %.not103.i, label %bb.v, label %bb.p

bb.p:                                             ; preds = %.thread6
  %i.bs = load i8, ptr %.9.i, align 1, !tbaa !222, !noalias !617
  switch i8 %i.bs, label %bb.v [
    i8 101, label %bb.q
    i8 69, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p, %bb.p
  %i.bt = getelementptr inbounds nuw i8, ptr %.9.i, i64 1 ; 4 uses
  %.not104.i = icmp eq ptr %i.bt, %1
  br i1 %.not104.i, label %.critedge109.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !222, !noalias !617 ; 2 uses
  %i.bv = icmp eq i8 %i.bu, 45
  br i1 %i.bv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bw = getelementptr inbounds nuw i8, ptr %.9.i, i64 2
  br label %.critedge109.i

bb.t:                                             ; preds = %bb.r
  %i.bx = icmp eq i8 %i.bu, 43
  %i.by = getelementptr inbounds nuw i8, ptr %.9.i, i64 2
  %spec.select110.i = select i1 %i.bx, ptr %i.by, ptr %i.bt
  br label %.critedge109.i

.critedge109.i:                                   ; preds = %bb.t, %bb.s, %bb.q
  %.084.i = phi i1 [ true, %bb.s ], [ false, %bb.q ], [ false, %bb.t ]
  %.10.i = phi ptr [ %i.bw, %bb.s ], [ %i.bt, %bb.q ], [ %spec.select110.i, %bb.t ] ; 2 uses
  %.not105.i45 = icmp eq ptr %.10.i, %1
  br i1 %.not105.i45, label %.critedge10.i, label %.lr.ph48

.lr.ph48:                                         ; preds = %.critedge109.i, %bb.u
  %.11.i47 = phi ptr [ %i.cg, %bb.u ], [ %.10.i, %.critedge109.i ] ; 2 uses
  %.082.i46 = phi i32 [ %.183.i, %bb.u ], [ 0, %.critedge109.i ] ; 4 uses
  %i.bz = load i8, ptr %.11.i47, align 1, !tbaa !222, !noalias !617
  %i.ca = add i8 %i.bz, -48                       ; 2 uses
  %i.cb = icmp ult i8 %i.ca, 10
  br i1 %i.cb, label %bb.u, label %.critedge10.i

bb.u:                                             ; preds = %.lr.ph48
  %i.cc = icmp slt i32 %.082.i46, 65536
  %i.cd = mul nsw i32 %.082.i46, 10
  %i.ce = zext nneg i8 %i.ca to i32
  %i.cf = add nsw i32 %i.cd, %i.ce
  %.183.i = select i1 %i.cc, i32 %i.cf, i32 %.082.i46 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.11.i47, i64 1 ; 2 uses
  %.not105.i = icmp eq ptr %i.cg, %1
  br i1 %.not105.i, label %.critedge10.i, label %.lr.ph48, !llvm.loop !630

.critedge10.i:                                    ; preds = %bb.u, %.lr.ph48, %.critedge109.i
  %.082.i.lcssa = phi i32 [ 0, %.critedge109.i ], [ %.082.i46, %.lr.ph48 ], [ %.183.i, %bb.u ] ; 2 uses
  %i.ch = sub nsw i32 0, %.082.i.lcssa
  %i.ci = select i1 %.084.i, i32 %i.ch, i32 %.082.i.lcssa
  %i.cj = add nsw i32 %i.br, %i.ci
  store i32 %i.cj, ptr %i.b, align 4, !tbaa !626, !alias.scope !617
  br label %bb.v

bb.v:                                             ; preds = %.critedge10.i, %bb.p, %.thread6
  %i.ck = icmp samesign ult i32 %i.bq, 19
  br i1 %i.ck, label %.lr.ph53, label %_ZN17duckdb_fast_float13parse_decimalEPKcS1_c.exit

.lr.ph53:                                         ; preds = %bb.v
  %i.cl = zext nneg i32 %i.bq to i64
  %i.cm = getelementptr i8, ptr %2, i64 %i.cl
  %scevgep63 = getelementptr i8, ptr %i.cm, i64 10
  %narrow = sub nuw nsw i32 19, %i.bq
  %i.cn = zext nneg i32 %narrow to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep63, i8 0, i64 %i.cn, i1 false), !tbaa !222, !alias.scope !617
  br label %_ZN17duckdb_fast_float13parse_decimalEPKcS1_c.exit

_ZN17duckdb_fast_float13parse_decimalEPKcS1_c.exit: ; preds = %.lr.ph53, %bb.v
  %i.co = call { i64, i32 } @_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaERNS_7decimalE(ptr noundef nonnull align 4 dereferenceable(778) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret { i64, i32 } %i.co
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #19

; Function Attrs: mustprogress uwtable
define linkonce_odr { i64, i32 } @_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaERNS_7decimalE(ptr noundef nonnull align 4 dereferenceable(778) %0) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !628    ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %.thread121, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !626  ; 5 uses
  %i.e = icmp slt i32 %i.d, -324
  br i1 %i.e, label %.thread121, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp sgt i32 %i.d, 309
  br i1 %i.f, label %.thread121, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.g = icmp sgt i32 %i.d, 0
  br i1 %i.g, label %.lr.ph, label %.lr.ph165

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 10 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  br label %bb.d

.thread-pre-split.loopexit_crit_edge:             ; preds = %.lr.ph253
  store i32 %indvars.i.i, ptr %0, align 4, !tbaa !628
  br label %thread-pre-split, !llvm.loop !631

thread-pre-split.loopexit:                        ; preds = %.lr.ph.i.i
  store i32 %indvars.i.i, ptr %0, align 4, !tbaa !628
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %thread-pre-split.loopexit, %.lr.ph.preheader.i.i, %.thread-pre-split.loopexit_crit_edge, %._crit_edge250, %._crit_edge.i.thread
  %.pr187 = phi i32 [ %.pr188, %._crit_edge250 ], [ %i.ak, %._crit_edge.i.thread ], [ %i.ak, %.lr.ph.preheader.i.i ], [ %i.ak, %.thread-pre-split.loopexit_crit_edge ], [ %i.ak, %thread-pre-split.loopexit ] ; 3 uses
  %i.j = phi i32 [ %i.m, %._crit_edge250 ], [ 0, %._crit_edge.i.thread ], [ %.145.lcssa94.i, %.lr.ph.preheader.i.i ], [ 0, %.thread-pre-split.loopexit_crit_edge ], [ %indvars.i.i, %thread-pre-split.loopexit ]
  %i.k = add nuw nsw i32 %i.s, %.044163           ; 2 uses
  %i.l = icmp sgt i32 %.pr187, 0
  br i1 %i.l, label %bb.d, label %.lr.ph165

bb.d:                                             ; preds = %.lr.ph, %thread-pre-split
  %.pr188 = phi i32 [ %i.d, %.lr.ph ], [ %.pr187, %thread-pre-split ] ; 4 uses
  %i.m = phi i32 [ %i.a, %.lr.ph ], [ %i.j, %thread-pre-split ] ; 7 uses
  %.044163 = phi i32 [ 0, %.lr.ph ], [ %i.k, %thread-pre-split ] ; 2 uses
  %i.n = icmp samesign ult i32 %.pr188, 19
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = zext nneg i32 %.pr188 to i64
  %i.p = getelementptr inbounds nuw i8, ptr @_ZZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaERNS_7decimalEE14decimal_powers, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !222
  %i.r = zext i8 %i.q to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.s = phi i32 [ %i.r, %bb.e ], [ 60, %bb.d ]   ; 3 uses
  %i.t = zext nneg i32 %i.s to i64                ; 8 uses
  %i.u = zext i32 %i.m to i64
  %exitcond.not.i245 = icmp eq i32 %i.m, 0
  br i1 %exitcond.not.i245, label %._crit_edge250, label %.lr.ph249

bb.g:                                             ; preds = %.lr.ph249
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.u
  br i1 %exitcond.not.i, label %._crit_edge250, label %.lr.ph249, !llvm.loop !632

.lr.ph249:                                        ; preds = %bb.f, %bb.g
  %.04757.i247 = phi i64 [ %i.z, %bb.g ], [ 0, %bb.f ]
  %indvars.iv.i246 = phi i64 [ %indvars.iv.next.i, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %i.v = mul i64 %.04757.i247, 10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i246, 1 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv.i246
  %i.x = load i8, ptr %i.w, align 1, !tbaa !222
  %i.y = zext i8 %i.x to i64
  %i.z = add i64 %i.v, %i.y                       ; 4 uses
  %i.aa = lshr i64 %i.z, %i.t
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.g, label %.loopexit.loopexit73.i, !llvm.loop !632

._crit_edge250:                                   ; preds = %bb.g, %bb.f
  %.04757.i.lcssa = phi i64 [ 0, %bb.f ], [ %i.z, %bb.g ] ; 4 uses
  %i.ac = icmp eq i64 %.04757.i.lcssa, 0
  br i1 %i.ac, label %thread-pre-split, label %.preheader52.i

.preheader52.i:                                   ; preds = %._crit_edge250
  %i.ad = lshr i64 %.04757.i.lcssa, %i.t
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %.preheader52.i, %.lr.ph.i
  %.160.i = phi i32 [ %i.ag, %.lr.ph.i ], [ %i.m, %.preheader52.i ]
  %.14859.i = phi i64 [ %i.af, %.lr.ph.i ], [ %.04757.i.lcssa, %.preheader52.i ]
  %i.af = mul i64 %.14859.i, 10                   ; 3 uses
  %i.ag = add i32 %.160.i, 1                      ; 2 uses
  %i.ah = lshr i64 %i.af, %i.t
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !633

.loopexit.loopexit73.i:                           ; preds = %.lr.ph249
  %i.aj = trunc nuw i64 %indvars.iv.next.i to i32
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i, %.loopexit.loopexit73.i, %.preheader52.i
  %.249.i = phi i64 [ %i.z, %.loopexit.loopexit73.i ], [ %.04757.i.lcssa, %.preheader52.i ], [ %i.af, %.lr.ph.i ] ; 4 uses
  %.2.i = phi i32 [ %i.aj, %.loopexit.loopexit73.i ], [ %i.m, %.preheader52.i ], [ %i.ag, %.lr.ph.i ] ; 4 uses
  %reass.sub.i = sub i32 %.pr188, %.2.i
  %i.ak = add i32 %reass.sub.i, 1                 ; 6 uses
  store i32 %i.ak, ptr %i.c, align 4, !tbaa !626
  %i.al = icmp slt i32 %i.ak, -2047
  br i1 %i.al, label %thread-pre-split.thread, label %bb.h

thread-pre-split.thread:                          ; preds = %.loopexit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(778) %0, i8 0, i64 10, i1 false)
  %i.am = add nuw nsw i32 %i.s, %.044163
  br label %.lr.ph165

bb.h:                                             ; preds = %.loopexit.i
  %notmask.i = shl nsw i64 -1, %i.t
  %i.an = xor i64 %notmask.i, -1                  ; 4 uses
  %i.ao = icmp ult i32 %.2.i, %i.m
  br i1 %i.ao, label %.lr.ph65.i, label %.preheader.i.thread

.lr.ph65.i:                                       ; preds = %bb.h
  %i.ap = zext i32 %.2.i to i64                   ; 2 uses
  %i.aq = sub nuw i32 %i.m, %.2.i                 ; 5 uses
  %zext = zext i32 %i.aq to i64                   ; 3 uses
  %xtraiter = and i64 %zext, 1
  %i.ar = icmp eq i32 %i.aq, 1
  br i1 %i.ar, label %.epil.preheader, label %.lr.ph65.i.new

.lr.ph65.i.new:                                   ; preds = %.lr.ph65.i
  %unroll_iter = and i64 %zext, 4294967294
  br label %bb.i

.preheader.i.unr-lcssa:                           ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.i.unr-lcssa, %.lr.ph65.i
  %indvars.iv84.i.epil.init = phi i64 [ 0, %.lr.ph65.i ], [ %indvars.iv.next85.i.1, %.preheader.i.unr-lcssa ]
  %indvars.iv82.i.epil.init = phi i64 [ %i.ap, %.lr.ph65.i ], [ %indvars.iv.next83.i.1, %.preheader.i.unr-lcssa ]
  %.35062.i.epil.init = phi i64 [ %.249.i, %.lr.ph65.i ], [ %i.bs, %.preheader.i.unr-lcssa ] ; 2 uses
  %lcmp.mod288 = trunc i32 %i.aq to i1
  tail call void @llvm.assume(i1 %lcmp.mod288)
  %i.as = lshr i64 %.35062.i.epil.init, %i.t
  %i.at = trunc i64 %i.as to i8
  %i.au = and i64 %.35062.i.epil.init, %i.an
  %i.av = mul i64 %i.au, 10
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv82.i.epil.init
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !222
  %i.ay = zext i8 %i.ax to i64
  %i.az = add i64 %i.av, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv84.i.epil.init
  store i8 %i.at, ptr %i.ba, align 1, !tbaa !222
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.unr-lcssa, %.epil.preheader
  %.lcssa281 = phi i64 [ %i.bs, %.preheader.i.unr-lcssa ], [ %i.az, %.epil.preheader ] ; 2 uses
  %.not68.i = icmp eq i64 %.lcssa281, 0
  br i1 %.not68.i, label %.lr.ph.preheader.i.i, label %.lr.ph71.i.preheader

.lr.ph71.i.preheader:                             ; preds = %.preheader.i.thread, %.preheader.i
  %.14570.i.ph = phi i32 [ %i.aq, %.preheader.i ], [ 0, %.preheader.i.thread ]
  %.469.i.ph = phi i64 [ %.lcssa281, %.preheader.i ], [ %.249.i, %.preheader.i.thread ]
  br label %.lr.ph71.i

.preheader.i.thread:                              ; preds = %bb.h
  %.not68.i108 = icmp eq i64 %.249.i, 0
  br i1 %.not68.i108, label %._crit_edge.i.thread, label %.lr.ph71.i.preheader

._crit_edge.i.thread:                             ; preds = %.preheader.i.thread
  store i32 0, ptr %0, align 4, !tbaa !628
  br label %thread-pre-split

bb.i:                                             ; preds = %bb.i, %.lr.ph65.i.new
  %indvars.iv84.i = phi i64 [ 0, %.lr.ph65.i.new ], [ %indvars.iv.next85.i.1, %bb.i ] ; 3 uses
  %indvars.iv82.i = phi i64 [ %i.ap, %.lr.ph65.i.new ], [ %indvars.iv.next83.i.1, %bb.i ] ; 3 uses
  %.35062.i = phi i64 [ %.249.i, %.lr.ph65.i.new ], [ %i.bs, %bb.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph65.i.new ], [ %niter.next.1, %bb.i ]
  %i.bb = lshr i64 %.35062.i, %i.t
  %i.bc = trunc i64 %i.bb to i8
  %i.bd = and i64 %.35062.i, %i.an
  %i.be = mul i64 %i.bd, 10
  %i.bf = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv82.i
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !222
  %i.bh = zext i8 %i.bg to i64
  %i.bi = add i64 %i.be, %i.bh                    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv84.i
  store i8 %i.bc, ptr %i.bj, align 2, !tbaa !222
  %i.bk = lshr i64 %i.bi, %i.t
  %i.bl = trunc i64 %i.bk to i8
  %i.bm = and i64 %i.bi, %i.an
  %i.bn = mul i64 %i.bm, 10
  %indvars.iv.next83.i.1 = add nuw nsw i64 %indvars.iv82.i, 2 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv82.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !222
  %i.br = zext i8 %i.bq to i64
  %i.bs = add i64 %i.bn, %i.br                    ; 3 uses
  %indvars.iv.next85.i.1 = add nuw nsw i64 %indvars.iv84.i, 2 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv84.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  store i8 %i.bl, ptr %i.bu, align 1, !tbaa !222
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.i.unr-lcssa, label %bb.i, !llvm.loop !634

.lr.ph71.i:                                       ; preds = %.lr.ph71.i.preheader, %bb.m
  %.14570.i = phi i32 [ %.246.i, %bb.m ], [ %.14570.i.ph, %.lr.ph71.i.preheader ] ; 5 uses
  %.469.i = phi i64 [ %i.bx, %bb.m ], [ %.469.i.ph, %.lr.ph71.i.preheader ] ; 2 uses
  %i.bv = lshr i64 %.469.i, %i.t                  ; 2 uses
  %i.bw = and i64 %.469.i, %i.an
  %i.bx = mul i64 %i.bw, 10                       ; 2 uses
  %i.by = icmp ult i32 %.14570.i, 768
  br i1 %i.by, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph71.i
  %i.bz = trunc i64 %i.bv to i8
  %i.ca = add nuw nsw i32 %.14570.i, 1
  %i.cb = zext nneg i32 %.14570.i to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.cb
  store i8 %i.bz, ptr %i.cc, align 1, !tbaa !222
  br label %bb.m

bb.k:                                             ; preds = %.lr.ph71.i
  %i.cd = and i64 %i.bv, 255
  %.not51.i = icmp eq i64 %i.cd, 0
  br i1 %.not51.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i8 1, ptr %i.i, align 1, !tbaa !629
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.246.i = phi i32 [ %i.ca, %bb.j ], [ %.14570.i, %bb.l ], [ %.14570.i, %bb.k ] ; 3 uses
  %.not.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i, label %._crit_edge.thread.i, label %.lr.ph71.i, !llvm.loop !635

._crit_edge.thread.i:                             ; preds = %bb.m
  %.pre192 = zext i32 %.246.i to i64
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i, %._crit_edge.thread.i
  %.pre-phi193 = phi i64 [ %.pre192, %._crit_edge.thread.i ], [ %zext, %.preheader.i ]
  %.145.lcssa94.i = phi i32 [ %.246.i, %._crit_edge.thread.i ], [ %i.aq, %.preheader.i ] ; 2 uses
  store i32 %.145.lcssa94.i, ptr %0, align 4, !tbaa !628
  %indvars.iv.next.i.i251 = add nsw i64 %.pre-phi193, -1 ; 2 uses
  %1 = and i64 %indvars.iv.next.i.i251, 4294967295
  %i.ce = getelementptr inbounds nuw i8, ptr %i.h, i64 %1
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !222
  %i.cg = icmp eq i8 %i.cf, 0
  br i1 %i.cg, label %.lr.ph253, label %thread-pre-split

.lr.ph.i.i:                                       ; preds = %.lr.ph253
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.next.i.i252, -1 ; 2 uses
  %2 = and i64 %indvars.iv.next.i.i, 4294967295
  %i.ch = getelementptr inbounds nuw i8, ptr %i.h, i64 %2
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !222
  %i.cj = icmp eq i8 %i.ci, 0
  br i1 %i.cj, label %.lr.ph253, label %thread-pre-split.loopexit, !llvm.loop !631

.lr.ph253:                                        ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i
  %indvars.iv.next.i.i252 = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.next.i.i251, %.lr.ph.preheader.i.i ] ; 2 uses
  %indvars.i.i = trunc i64 %indvars.iv.next.i.i252 to i32 ; 4 uses
  %.not.i.i = icmp eq i32 %indvars.i.i, 0
  br i1 %.not.i.i, label %.thread-pre-split.loopexit_crit_edge, label %.lr.ph.i.i, !llvm.loop !631

.lr.ph165:                                        ; preds = %thread-pre-split, %.preheader, %thread-pre-split.thread
  %.pr149 = phi i32 [ %i.d, %.preheader ], [ 0, %thread-pre-split.thread ], [ %.pr187, %thread-pre-split ]
  %.044.lcssa = phi i32 [ 0, %.preheader ], [ %i.am, %thread-pre-split.thread ], [ %i.k, %thread-pre-split ]
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 10
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph165, %bb.t
  %.2164 = phi i32 [ %.044.lcssa, %.lr.ph165 ], [ %i.cz, %bb.t ] ; 2 uses
  %i.cl = phi i32 [ %.pr149, %.lr.ph165 ], [ %i.cx, %bb.t ] ; 2 uses
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.cn = load i8, ptr %i.ck, align 2, !tbaa !222 ; 2 uses
  %i.co = icmp ugt i8 %i.cn, 4
  br i1 %i.co, label %.thread126, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cp = icmp samesign ult i8 %i.cn, 2
  %i.cq = select i1 %i.cp, i32 2, i32 1
  br label %bb.s

bb.q:                                             ; preds = %bb.n
  %i.cr = sub nsw i32 0, %i.cl                    ; 2 uses
  %i.cs = icmp samesign ult i32 %i.cr, 19
  br i1 %i.cs, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ct = zext nneg i32 %i.cr to i64
  %i.cu = getelementptr inbounds nuw i8, ptr @_ZZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaERNS_7decimalEE14decimal_powers, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !222
  %i.cw = zext i8 %i.cv to i32
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.047 = phi i32 [ %i.cq, %bb.p ], [ %i.cw, %bb.r ], [ 60, %bb.q ] ; 2 uses
  tail call void @_ZN17duckdb_fast_float6detail18decimal_left_shiftERNS_7decimalEj(ptr noundef nonnull align 4 dereferenceable(778) %0, i32 noundef %.047)
  %i.cx = load i32, ptr %i.c, align 4, !tbaa !626 ; 4 uses
  %i.cy = icmp sgt i32 %i.cx, 2047
  br i1 %i.cy, label %.thread121, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cz = sub nsw i32 %.2164, %.047               ; 2 uses
  %i.da = icmp slt i32 %i.cx, 1
  br i1 %i.da, label %bb.n, label %.thread126

.thread126:                                       ; preds = %bb.t, %bb.o
  %i.db = phi i32 [ %i.cx, %bb.t ], [ 0, %bb.o ]
  %.2.lcssa.ph = phi i32 [ %i.cz, %bb.t ], [ %.2164, %bb.o ] ; 2 uses
  %i.dc = add nsw i32 %.2.lcssa.ph, -1            ; 2 uses
  %i.dd = icmp slt i32 %.2.lcssa.ph, -1021
  br i1 %i.dd, label %.lr.ph170, label %._crit_edge

.lr.ph170:                                        ; preds = %.thread126
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 10 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 9
  %.pre = load i32, ptr %0, align 4, !tbaa !628
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph170, %_ZN17duckdb_fast_float6detail19decimal_right_shiftERNS_7decimalEj.exit98
  %i.dg = phi i32 [ %i.db, %.lr.ph170 ], [ %i.fz, %_ZN17duckdb_fast_float6detail19decimal_right_shiftERNS_7decimalEj.exit98 ] ; 2 uses
  %i.dh = phi i32 [ %.pre, %.lr.ph170 ], [ %i.ga, %_ZN17duckdb_fast_float6detail19decimal_right_shiftERNS_7decimalEj.exit98 ] ; 7 uses
  %.5169 = phi i32 [ %i.dc, %.lr.ph170 ], [ %i.gb, %_ZN17duckdb_fast_float6detail19decimal_right_shiftERNS_7decimalEj.exit98 ] ; 2 uses
  %i.di = sub nuw nsw i32 -1022, %.5169
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %i.di, i32 60) ; 2 uses
  %i.dj = zext nneg i32 %spec.store.select to i64 ; 8 uses
  %i.dk = zext i32 %i.dh to i64
  %exitcond.not.i58256 = icmp eq i32 %i.dh, 0
  br i1 %exitcond.not.i58256, label %._crit_edge261, label %.lr.ph260

bb.v:                                             ; preds = %.lr.ph260
  %exitcond.not.i58 = icmp eq i64 %indvars.iv.next.i59, %i.dk
  br i1 %exitcond.not.i58, label %._crit_edge261, label %.lr.ph260, !llvm.loop !632

.lr.ph260:                                        ; preds = %bb.u, %bb.v
  %.04757.i57258 = phi i64 [ %i.dp, %bb.v ], [ 0, %bb.u ]
  %indvars.iv.i56257 = phi i64 [ %indvars.iv.next.i59, %bb.v ], [ 0, %bb.u ] ; 2 uses
  %i.dl = mul i64 %.04757.i57258, 10
  %indvars.iv.next.i59 = add nuw nsw i64 %indvars.iv.i56257, 1 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv.i56257
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !222
  %i.do = zext i8 %i.dn to i64
  %i.dp = add i64 %i.dl, %i.do                    ; 4 uses
  %i.dq = lshr i64 %i.dp, %i.dj
  %i.dr = icmp eq i64 %i.dq, 0
  br i1 %i.dr, label %bb.v, label %.loopexit.loopexit73.i60, !llvm.loop !632

._crit_edge261:                                   ; preds = %bb.v, %bb.u
  %.04757.i57.lcssa = phi i64 [ 0, %bb.u ], [ %i.dp, %bb.v ] ; 4 uses
  %i.ds = icmp eq i64 %.04757.i57.lcssa, 0
  br i1 %i.ds, label %_ZN17duckdb_fast_float6detail19decimal_right_shiftERNS_7decimalEj.exit98, label %.preheader52.i94

.preheader52.i94:                                 ; preds = %._crit_edge261
  %i.dt = lshr i64 %.04757.i57.lcssa, %i.dj
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %.lr.ph.i95, label %.loopexit.i61

.lr.ph.i95:                                       ; preds = %.preheader52.i94, %.lr.ph.i95
  %.160.i96 = phi i32 [ %i.dw, %.lr.ph.i95 ], [ %i.dh, %.preheader52.i94 ]
  %.14859.i97 = phi i64 [ %i.dv, %.lr.ph.i95 ], [ %.04757.i57.lcssa, %.preheader52.i94 ]
  %i.dv = mul i64 %.14859.i97, 10                 ; 3 uses
  %i.dw = add i32 %.160.i96, 1                    ; 2 uses
  %i.dx = lshr i64 %i.dv, %i.dj
  %i.dy = icmp eq i64 %i.dx, 0
  br i1 %i.dy, label %.lr.ph.i95, label %.loopexit.i61, !llvm.loop !633

.loopexit.loopexit73.i60:                         ; preds = %.lr.ph260
  %i.dz = trunc nuw i64 %indvars.iv.next.i59 to i32
  br label %.loopexit.i61

.loopexit.i61:                                    ; preds = %.lr.ph.i95, %.loopexit.loopexit73.i60, %.preheader52.i94
  %.249.i62 = phi i64 [ %i.dp, %.loopexit.loopexit73.i60 ], [ %.04757.i57.lcssa, %.preheader52.i94 ], [ %i.dv, %.lr.ph.i95 ] ; 4 uses
  %.2.i63 = phi i32 [ %i.dz, %.loopexit.loopexit73.i60 ], [ %i.dh, %.preheader52.i94 ], [ %i.dw, %.lr.ph.i95 ] ; 4 uses
  %reass.sub.i64 = sub i32 %i.dg, %.2.i63
  %i.ea = add i32 %reass.sub.i64, 1               ; 6 uses
  store i32 %i.ea, ptr %i.c, align 4, !tbaa !626
  %i.eb = icmp slt i32 %i.ea, -2047
  br i1 %i.eb, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.loopexit.i61
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(778) %0, i8 0, i64 10, i1 false)
  br label %_ZN17duckdb_fast_float6detail19decimal_right_shiftERNS_7decimalEj.exit98

bb.x:                                             ; preds = %.loopexit.i61
  %notmask.i65 = shl nsw i64 -1, %i.dj
  %i.ec = xor i64 %notmask.i65, -1                ; 4 uses
  %i.ed = icmp ult i32 %.2.i63, %i.dh
  br i1 %i.ed, label %.lr.ph65.i86, label %.preheader.i66.thread

.lr.ph65.i86:                                     ; preds = %bb.x
  %i.ee = zext i32 %.2.i63 to i64                 ; 2 uses
  %i.ef = sub nuw i32 %i.dh, %.2.i63              ; 5 uses
  %zext185 = zext i32 %i.ef to i64                ; 3 uses
  %xtraiter290 = and i64 %zext185, 1
  %i.eg = icmp eq i32 %i.ef, 1
  br i1 %i.eg, label %.epil.preheader289, label %.lr.ph65.i86.new

.lr.ph65.i86.new:                                 ; preds = %.lr.ph65.i86
  %unroll_iter294 = and i64 %zext185, 4294967294
  br label %bb.y

.preheader.i66.unr-lcssa:                         ; preds = %bb.y
  %lcmp.mod291.not = icmp eq i64 %xtraiter290, 0
  br i1 %lcmp.mod291.not, label %.preheader.i66, label %.epil.preheader289

.epil.preheader289:                               ; preds = %.preheader.i66.unr-lcssa, %.lr.ph65.i86
  %indvars.iv84.i87.epil.init = phi i64 [ 0, %.lr.ph65.i86 ], [ %indvars.iv.next85.i91.1, %.preheader.i66.unr-lcssa ]
  %indvars.iv82.i88.epil.init = phi i64 [ %i.ee, %.lr.ph65.i86 ], [ %indvars.iv.next83.i90.1, %.preheader.i66.unr-lcssa ]
  %.35062.i89.epil.init = phi i64 [ %.249.i62, %.lr.ph65.i86 ], [ %i.fh, %.preheader.i66.unr-lcssa ] ; 2 uses
  %lcmp.mod293 = trunc i32 %i.ef to i1
  tail call void @llvm.assume(i1 %lcmp.mod293)
  %i.eh = lshr i64 %.35062.i89.epil.init, %i.dj
  %i.ei = trunc i64 %i.eh to i8
  %i.ej = and i64 %.35062.i89.epil.init, %i.ec
  %i.ek = mul nuw i64 %i.ej, 10
  %i.el = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv82.i88.epil.init
  %i.em = load i8, ptr %i.el, align 1, !tbaa !222
  %i.en = zext i8 %i.em to i64
  %i.eo = add nuw i64 %i.ek, %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv84.i87.epil.init
  store i8 %i.ei, ptr %i.ep, align 1, !tbaa !222
  br label %.preheader.i66

.preheader.i66:                                   ; preds = %.preheader.i66.unr-lcssa, %.epil.preheader289
  %.lcssa273 = phi i64 [ %i.fh, %.preheader.i66.unr-lcssa ], [ %i.eo, %.epil.preheader289 ] ; 2 uses
  %.not68.i69 = icmp eq i64 %.lcssa273, 0
  br i1 %.not68.i69, label %.lr.ph.preheader.i.i77, label %.lr.ph71.i70.preheader

.lr.ph71.i70.preheader:                           ; preds = %.preheader.i66.thread, %.preheader.i66
  %.14570.i71.ph = phi i32 [ %i.ef, %.preheader.i66 ], [ 0, %.preheader.i66.thread ]
  %.469.i72.ph = phi i64 [ %.lcssa273, %.preheader.i66 ], [ %.249.i62, %.preheader.i66.thread ]
  br label %.lr.ph71.i70

.preheader.i66.thread:                            ; preds = %bb.x
  %.not68.i69133 = icmp eq i64 %.249.i62, 0
  br i1 %.not68.i69133, label %._crit_edge.i84.thread, label %.lr.ph71.i70.preheader

._crit_edge.i84.thread:                           ; preds = %.preheader.i66.thread
  store i32 0, ptr %0, align 4, !tbaa !628
  br label %_ZN17duckdb_fast_float6detail19decimal_right_shiftERNS_7decimalEj.exit98

bb.y:                                             ; preds = %bb.y, %.lr.ph65.i86.new
  %indvars.iv84.i87 = phi i64 [ 0, %.lr.ph65.i86.new ], [ %indvars.iv.next85.i91.1, %bb.y ] ; 3 uses
  %indvars.iv82.i88 = phi i64 [ %i.ee, %.lr.ph65.i86.new ], [ %indvars.iv.next83.i90.1, %bb.y ] ; 3 uses
  %.35062.i89 = phi i64 [ %.249.i62, %.lr.ph65.i86.new ], [ %i.fh, %bb.y ] ; 2 uses
  %niter295 = phi i64 [ 0, %.lr.ph65.i86.new ], [ %niter295.next.1, %bb.y ]
  %i.eq = lshr i64 %.35062.i89, %i.dj
  %i.er = trunc i64 %i.eq to i8
  %i.es = and i64 %.35062.i89, %i.ec
  %i.et = mul nuw i64 %i.es, 10
  %i.eu = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv82.i88
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !222
  %i.ew = zext i8 %i.ev to i64
  %i.ex = add nuw i64 %i.et, %i.ew                ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv84.i87
  store i8 %i.er, ptr %i.ey, align 2, !tbaa !222
  %i.ez = lshr i64 %i.ex, %i.dj
  %i.fa = trunc i64 %i.ez to i8
  %i.fb = and i64 %i.ex, %i.ec
  %i.fc = mul nuw i64 %i.fb, 10
  %indvars.iv.next83.i90.1 = add nuw nsw i64 %indvars.iv82.i88, 2 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv82.i88
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 1
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !222
  %i.fg = zext i8 %i.ff to i64
  %i.fh = add nuw i64 %i.fc, %i.fg                ; 3 uses
  %indvars.iv.next85.i91.1 = add nuw nsw i64 %indvars.iv84.i87, 2 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv84.i87
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 1
  store i8 %i.fa, ptr %i.fj, align 1, !tbaa !222
  %niter295.next.1 = add i64 %niter295, 2         ; 2 uses
  %niter295.ncmp.1 = icmp eq i64 %niter295.next.1, %unroll_iter294
  br i1 %niter295.ncmp.1, label %.preheader.i66.unr-lcssa, label %bb.y, !llvm.loop !634

.lr.ph71.i70:                                     ; preds = %.lr.ph71.i70.preheader, %bb.ac
  %.14570.i71 = phi i32 [ %.246.i74, %bb.ac ], [ %.14570.i71.ph, %.lr.ph71.i70.preheader ] ; 5 uses
  %.469.i72 = phi i64 [ %i.fm, %bb.ac ], [ %.469.i72.ph, %.lr.ph71.i70.preheader ] ; 2 uses
  %i.fk = lshr i64 %.469.i72, %i.dj               ; 2 uses
  %i.fl = and i64 %.469.i72, %i.ec                ; 2 uses
  %i.fm = mul nuw i64 %i.fl, 10
  %i.fn = icmp ult i32 %.14570.i71, 768
  br i1 %i.fn, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph71.i70
  %i.fo = trunc i64 %i.fk to i8
  %i.fp = add nuw nsw i32 %.14570.i71, 1
  %i.fq = zext nneg i32 %.14570.i71 to i64
  %i.fr = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.fq
  store i8 %i.fo, ptr %i.fr, align 1, !tbaa !222
  br label %bb.ac

bb.aa:                                            ; preds = %.lr.ph71.i70
  %i.fs = and i64 %i.fk, 255
  %.not51.i73 = icmp eq i64 %i.fs, 0
  br i1 %.not51.i73, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i8 1, ptr %i.df, align 1, !tbaa !629
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %.246.i74 = phi i32 [ %i.fp, %bb.z ], [ %.14570.i71, %bb.ab ], [ %.14570.i71, %bb.aa ] ; 3 uses
  %.not.i75 = icmp eq i64 %i.fl, 0
  br i1 %.not.i75, label %._crit_edge.thread.i76, label %.lr.ph71.i70, !llvm.loop !635

._crit_edge.thread.i76:                           ; preds = %bb.ac
  %.pre191 = zext i32 %.246.i74 to i64
  br label %.lr.ph.preheader.i.i77

.lr.ph.preheader.i.i77:                           ; preds = %.preheader.i66, %._crit_edge.thread.i76
  %.pre-phi = phi i64 [ %.pre191, %._crit_edge.thread.i76 ], [ %zext185, %.preheader.i66 ]
  %.145.lcssa94.i78 = phi i32 [ %.246.i74, %._crit_edge.thread.i76 ], [ %i.ef, %.preheader.i66 ] ; 2 uses
  store i32 %.145.lcssa94.i78, ptr %0, align 4, !tbaa !628
  %indvars.iv.next.i.i81263 = add nsw i64 %.pre-phi, -1 ; 2 uses
  %3 = and i64 %indvars.iv.next.i.i81263, 4294967295
  %i.ft = getelementptr inbounds nuw i8, ptr %i.de, i64 %3
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !222
  %i.fv = icmp eq i8 %i.fu, 0
  br i1 %i.fv, label %.lr.ph265, label %_ZN17duckdb_fast_float6detail19decimal_right_shiftERNS_7decimalEj.exit98

.lr.ph.i.i79:                                     ; preds = %.lr.ph265
  %indvars.iv.next.i.i81 = add nsw i64 %indvars.iv.next.i.i81264, -1 ; 2 uses
  %4 = and i64 %indvars.iv.next.i.i81, 4294967295
  %i.fw = getelementptr inbounds nuw i8, ptr %i.de, i64 %4
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !222
  %i.fy = icmp eq i8 %i.fx, 0
  br i1 %i.fy, label %.lr.ph265, label %_ZN17duckdb_fast_float6detail19decimal_right_shiftERNS_7decimalEj.exit98.loopexit, !llvm.loop !631

.lr.ph265:                                        ; preds = %.lr.ph.preheader.i.i77, %.lr.ph.i.i79
  %indvars.iv.next.i.i81264 = phi i64 [ %indvars.iv.next.i.i81, %.lr.ph.i.i79 ], [ %indvars.iv.next.i.i81263, %.lr.ph.preheader.i.i77 ] ; 2 uses
  %indvars.i.i82 = trunc i64 %indvars.iv.next.i.i81264 to i32 ; 4 uses
  %.not.i.i83 = icmp eq i32 %indvars.i.i82, 0
  br i1 %.not.i.i83, label %._ZN17duckdb_fast_float6detail19decimal_right_shiftERNS_7decimalEj.exit98.loopexit_crit_edge, label %.lr.ph.i.i79, !llvm.loop !631

._ZN17duckdb_fast_float6detail19decimal_right_shiftERNS_7decimalEj.exit98.loopexit_crit_edge: ; preds = %.lr.ph265
  store i32 %indvars.i.i82, ptr %0, align 4, !tbaa !628
  br label %_ZN17duckdb_fast_float6detail19decimal_right_shiftERNS_7decimalEj.exit98, !llvm.loop !631

_ZN17duckdb_fast_float6detail19decimal_right_shiftERNS_7decimalEj.exit98.loopexit: ; preds = %.lr.ph.i.i79
  store i32 %indvars.i.i82, ptr %0, align 4, !tbaa !628
  br label %_ZN17duckdb_fast_float6detail19decimal_right_shiftERNS_7decimalEj.exit98

_ZN17duckdb_fast_float6detail19decimal_right_shiftERNS_7decimalEj.exit98: ; preds = %_ZN17duckdb_fast_float6detail19decimal_right_shiftERNS_7decimalEj.exit98.loopexit, %.lr.ph.preheader.i.i77, %._ZN17duckdb_fast_float6detail19decimal_right_shiftERNS_7decimalEj.exit98.loopexit_crit_edge, %._crit_edge.i84.thread, %._crit_edge261, %bb.w
  %i.fz = phi i32 [ 0, %bb.w ], [ %i.ea, %._crit_edge.i84.thread ], [ %i.dg, %._crit_edge261 ], [ %i.ea, %.lr.ph.preheader.i.i77 ], [ %i.ea, %._ZN17duckdb_fast_float6detail19decimal_right_shiftERNS_7decimalEj.exit98.loopexit_crit_edge ], [ %i.ea, %_ZN17duckdb_fast_float6detail19decimal_right_shiftERNS_7decimalEj.exit98.loopexit ]
  %i.ga = phi i32 [ 0, %bb.w ], [ 0, %._crit_edge.i84.thread ], [ %i.dh, %._crit_edge261 ], [ %.145.lcssa94.i78, %.lr.ph.preheader.i.i77 ], [ 0, %._ZN17duckdb_fast_float6detail19decimal_right_shiftERNS_7decimalEj.exit98.loopexit_crit_edge ], [ %indvars.i.i82, %_ZN17duckdb_fast_float6detail19decimal_right_shiftERNS_7decimalEj.exit98.loopexit ]
  %i.gb = add nsw i32 %spec.store.select, %.5169  ; 3 uses
  %i.gc = icmp slt i32 %i.gb, -1022
  br i1 %i.gc, label %bb.u, label %._crit_edge, !llvm.loop !636

._crit_edge:                                      ; preds = %_ZN17duckdb_fast_float6detail19decimal_right_shiftERNS_7decimalEj.exit98, %.thread126
  %.5.lcssa = phi i32 [ %i.dc, %.thread126 ], [ %i.gb, %_ZN17duckdb_fast_float6detail19decimal_right_shiftERNS_7decimalEj.exit98 ] ; 5 uses
  %.not = icmp slt i32 %.5.lcssa, 1024
  br i1 %.not, label %bb.ad, label %.thread121

bb.ad:                                            ; preds = %._crit_edge
  tail call void @_ZN17duckdb_fast_float6detail18decimal_left_shiftERNS_7decimalEj(ptr noundef nonnull align 4 dereferenceable(778) %0, i32 noundef 53)
  %i.gd = load i32, ptr %0, align 4, !tbaa !628   ; 4 uses
  %i.ge = icmp eq i32 %i.gd, 0
  br i1 %i.ge, label %.thread142, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gf = load i32, ptr %i.c, align 4, !tbaa !626 ; 9 uses
  %i.gg = icmp slt i32 %i.gf, 0
  br i1 %i.gg, label %.thread142, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gh = icmp samesign ugt i32 %i.gf, 18
  br i1 %i.gh, label %_ZN17duckdb_fast_float6detail5roundERNS_7decimalE.exit.thread140, label %.preheader.i99

.preheader.i99:                                   ; preds = %bb.af
  %.not42.i = icmp eq i32 %i.gf, 0                ; 2 uses
  br i1 %.not42.i, label %._crit_edge.i104, label %.lr.ph.i100

.lr.ph.i100:                                      ; preds = %.preheader.i99
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.gj = zext i32 %i.gd to i64                   ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.gf to i64 ; 2 uses
  %xtraiter297 = and i64 %wide.trip.count.i, 1
  %i.gk = icmp eq i32 %i.gf, 1
  br i1 %i.gk, label %.epil.preheader296, label %.lr.ph.i100.new

.lr.ph.i100.new:                                  ; preds = %.lr.ph.i100
  %unroll_iter301 = and i64 %wide.trip.count.i, 30
  br label %bb.ah

._crit_edge.i104.loopexit.unr-lcssa:              ; preds = %bb.al
  %lcmp.mod298.not = icmp eq i64 %xtraiter297, 0
  br i1 %lcmp.mod298.not, label %._crit_edge.i104, label %.epil.preheader296

.epil.preheader296:                               ; preds = %._crit_edge.i104.loopexit.unr-lcssa, %.lr.ph.i100
  %indvars.iv.i101.epil.init = phi i64 [ 0, %.lr.ph.i100 ], [ %indvars.iv.next.i102.1, %._crit_edge.i104.loopexit.unr-lcssa ] ; 2 uses
  %.02840.i.epil.init = phi i64 [ 0, %.lr.ph.i100 ], [ %i.hg, %._crit_edge.i104.loopexit.unr-lcssa ]
  %lcmp.mod300 = trunc i32 %i.gf to i1
  tail call void @llvm.assume(i1 %lcmp.mod300)
  %i.gl = mul i64 %.02840.i.epil.init, 10
  %i.gm = icmp samesign ult i64 %indvars.iv.i101.epil.init, %i.gj
  br i1 %i.gm, label %bb.ag, label %._crit_edge.i104.loopexit.epilog-lcssa

bb.ag:                                            ; preds = %.epil.preheader296
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gi, i64 %indvars.iv.i101.epil.init
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !222
  %i.gp = zext i8 %i.go to i64
  br label %._crit_edge.i104.loopexit.epilog-lcssa

._crit_edge.i104.loopexit.epilog-lcssa:           ; preds = %bb.ag, %.epil.preheader296
  %i.gq = phi i64 [ %i.gp, %bb.ag ], [ 0, %.epil.preheader296 ]
  %i.gr = add i64 %i.gq, %i.gl
  br label %._crit_edge.i104

._crit_edge.i104:                                 ; preds = %._crit_edge.i104.loopexit.epilog-lcssa, %._crit_edge.i104.loopexit.unr-lcssa, %.preheader.i99
  %.028.lcssa.i = phi i64 [ 0, %.preheader.i99 ], [ %i.hg, %._crit_edge.i104.loopexit.unr-lcssa ], [ %i.gr, %._crit_edge.i104.loopexit.epilog-lcssa ] ; 5 uses
  %i.gs = icmp ult i32 %i.gf, %i.gd
  br i1 %i.gs, label %bb.am, label %_ZN17duckdb_fast_float6detail5roundERNS_7decimalE.exit

bb.ah:                                            ; preds = %bb.al, %.lr.ph.i100.new
  %indvars.iv.i101 = phi i64 [ 0, %.lr.ph.i100.new ], [ %indvars.iv.next.i102.1, %bb.al ] ; 4 uses
  %.02840.i = phi i64 [ 0, %.lr.ph.i100.new ], [ %i.hg, %bb.al ]
  %niter302 = phi i64 [ 0, %.lr.ph.i100.new ], [ %niter302.next.1, %bb.al ]
  %i.gt = mul i64 %.02840.i, 10
  %i.gu = icmp samesign ult i64 %indvars.iv.i101, %i.gj
  br i1 %i.gu, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gi, i64 %indvars.iv.i101
  %i.gw = load i8, ptr %i.gv, align 2, !tbaa !222
  %i.gx = zext i8 %i.gw to i64
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.gy = phi i64 [ %i.gx, %bb.ai ], [ 0, %bb.ah ]
  %i.gz = add i64 %i.gy, %i.gt
  %indvars.iv.next.i102 = or disjoint i64 %indvars.iv.i101, 1 ; 2 uses
  %i.ha = mul i64 %i.gz, 10
  %i.hb = icmp samesign ult i64 %indvars.iv.next.i102, %i.gj
  br i1 %i.hb, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gi, i64 %indvars.iv.next.i102
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !222
  %i.he = zext i8 %i.hd to i64
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.hf = phi i64 [ %i.he, %bb.ak ], [ 0, %bb.aj ]
  %i.hg = add i64 %i.hf, %i.ha                    ; 3 uses
  %indvars.iv.next.i102.1 = add nuw nsw i64 %indvars.iv.i101, 2 ; 2 uses
  %niter302.next.1 = add i64 %niter302, 2         ; 2 uses
  %niter302.ncmp.1 = icmp eq i64 %niter302.next.1, %unroll_iter301
  br i1 %niter302.ncmp.1, label %._crit_edge.i104.loopexit.unr-lcssa, label %bb.ah, !llvm.loop !637

bb.am:                                            ; preds = %._crit_edge.i104
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.hi = zext nneg i32 %i.gf to i64
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hi ; 2 uses
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !222
  %.fr.i = freeze i8 %i.hk                        ; 2 uses
  %i.hl = icmp eq i8 %.fr.i, 5
  %i.hm = add nuw nsw i32 %i.gf, 1
  %i.hn = icmp eq i32 %i.hm, %i.gd
  %or.cond.i = select i1 %i.hl, i1 %i.hn, i1 false
  br i1 %or.cond.i, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !629, !range !269, !noundef !369
  %i.hq = trunc nuw i8 %i.hp to i1
  br i1 %i.hq, label %.thread35.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  br i1 %.not42.i, label %_ZN17duckdb_fast_float6detail5roundERNS_7decimalE.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hr = getelementptr i8, ptr %i.hj, i64 -1
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !222
  %.fr39.i = freeze i8 %i.hs
  %i.ht = trunc i8 %.fr39.i to i1
  br i1 %i.ht, label %.thread35.i, label %_ZN17duckdb_fast_float6detail5roundERNS_7decimalE.exit

bb.aq:                                            ; preds = %bb.am
  %i.hu = icmp ugt i8 %.fr.i, 4
  br i1 %i.hu, label %.thread35.i, label %_ZN17duckdb_fast_float6detail5roundERNS_7decimalE.exit

.thread35.i:                                      ; preds = %bb.aq, %bb.ap, %bb.an
  %i.hv = add i64 %.028.lcssa.i, 1
  br label %_ZN17duckdb_fast_float6detail5roundERNS_7decimalE.exit

.thread142:                                       ; preds = %bb.ae, %bb.ad
  %i.hw = add nsw i32 %.5.lcssa, 1023
  br label %bb.as

_ZN17duckdb_fast_float6detail5roundERNS_7decimalE.exit: ; preds = %._crit_edge.i104, %bb.ao, %bb.ap, %bb.aq, %.thread35.i
  %.029.i = phi i64 [ %.028.lcssa.i, %bb.ap ], [ %.028.lcssa.i, %._crit_edge.i104 ], [ %.028.lcssa.i, %bb.ao ], [ %i.hv, %.thread35.i ], [ %.028.lcssa.i, %bb.aq ] ; 2 uses
  %i.hx = icmp ugt i64 %.029.i, 9007199254740991
  br i1 %i.hx, label %_ZN17duckdb_fast_float6detail5roundERNS_7decimalE.exit.thread140, label %bb.ar

_ZN17duckdb_fast_float6detail5roundERNS_7decimalE.exit.thread140: ; preds = %bb.af, %_ZN17duckdb_fast_float6detail5roundERNS_7decimalE.exit
  tail call void @_ZN17duckdb_fast_float6detail19decimal_right_shiftERNS_7decimalEj(ptr noundef nonnull align 4 dereferenceable(778) %0, i32 noundef 1)
  %i.hy = add nsw i32 %.5.lcssa, 1
  %i.hz = tail call noundef i64 @_ZN17duckdb_fast_float6detail5roundERNS_7decimalE(ptr noundef nonnull align 4 dereferenceable(778) %0)
  %.not54.not = icmp eq i32 %.5.lcssa, 1023
  br i1 %.not54.not, label %.thread121, label %bb.ar

bb.ar:                                            ; preds = %_ZN17duckdb_fast_float6detail5roundERNS_7decimalE.exit.thread140, %_ZN17duckdb_fast_float6detail5roundERNS_7decimalE.exit
  %.6 = phi i32 [ %i.hy, %_ZN17duckdb_fast_float6detail5roundERNS_7decimalE.exit.thread140 ], [ %.5.lcssa, %_ZN17duckdb_fast_float6detail5roundERNS_7decimalE.exit ]
  %.0 = phi i64 [ %i.hz, %_ZN17duckdb_fast_float6detail5roundERNS_7decimalE.exit.thread140 ], [ %.029.i, %_ZN17duckdb_fast_float6detail5roundERNS_7decimalE.exit ] ; 3 uses
  %i.ia = add nsw i32 %.6, 1023                   ; 2 uses
  %i.ib = icmp ult i64 %.0, 4503599627370496
  br i1 %i.ib, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.thread142, %bb.ar
  %i.ic = phi i32 [ %i.hw, %.thread142 ], [ %i.ia, %bb.ar ]
  %.0147 = phi i64 [ 0, %.thread142 ], [ %.0, %bb.ar ]
  %i.id = add nsw i32 %i.ic, -1
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.0146 = phi i64 [ %.0147, %bb.as ], [ %.0, %bb.ar ]
  %.sroa.8.4 = phi i32 [ %i.id, %bb.as ], [ %i.ia, %bb.ar ]
  %i.ie = and i64 %.0146, 4503599627370495
  br label %.thread121

.thread121:                                       ; preds = %bb.s, %bb.at, %._crit_edge, %_ZN17duckdb_fast_float6detail5roundERNS_7decimalE.exit.thread140, %bb.c, %bb.b, %bb.a
  %.sroa.8.6 = phi i32 [ 2047, %._crit_edge ], [ 0, %bb.a ], [ 0, %bb.b ], [ 2047, %bb.c ], [ 2047, %_ZN17duckdb_fast_float6detail5roundERNS_7decimalE.exit.thread140 ], [ %.sroa.8.4, %bb.at ], [ 2047, %bb.s ]
  %.sroa.0.4 = phi i64 [ 0, %._crit_edge ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %_ZN17duckdb_fast_float6detail5roundERNS_7decimalE.exit.thread140 ], [ %i.ie, %bb.at ], [ 0, %bb.s ]
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.sroa.0.4, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %.sroa.8.6, 1
  ret { i64, i32 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN17duckdb_fast_float6detail19decimal_right_shiftERNS_7decimalEj(ptr noundef nonnull align 4 dereferenceable(778) %0, i32 noundef %1) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 8 uses
  %i.b = load i32, ptr %0, align 4, !tbaa !628    ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 9 uses
  %i.d = zext i32 %i.b to i64
  %exitcond.not103 = icmp eq i32 %i.b, 0
  br i1 %exitcond.not103, label %._crit_edge108, label %.lr.ph107

bb.b:                                             ; preds = %.lr.ph107
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.d
  br i1 %exitcond.not, label %._crit_edge108, label %.lr.ph107, !llvm.loop !632

.lr.ph107:                                        ; preds = %bb.a, %bb.b
  %.04757105 = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ]
  %indvars.iv104 = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.e = mul i64 %.04757105, 10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv104, 1 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv104
  %i.g = load i8, ptr %i.f, align 1, !tbaa !222
  %i.h = zext i8 %i.g to i64
  %i.i = add i64 %i.e, %i.h                       ; 4 uses
  %i.j = lshr i64 %i.i, %i.a
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.b, label %.loopexit.loopexit73, !llvm.loop !632

._crit_edge108:                                   ; preds = %bb.b, %bb.a
  %.04757.lcssa = phi i64 [ 0, %bb.a ], [ %i.i, %bb.b ] ; 4 uses
  %i.l = icmp eq i64 %.04757.lcssa, 0
  br i1 %i.l, label %_ZN17duckdb_fast_float6detail4trimERNS_7decimalE.exit, label %.preheader52

.preheader52:                                     ; preds = %._crit_edge108
  %i.m = lshr i64 %.04757.lcssa, %i.a
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader52, %.lr.ph
  %.160 = phi i32 [ %i.p, %.lr.ph ], [ %i.b, %.preheader52 ]
  %.14859 = phi i64 [ %i.o, %.lr.ph ], [ %.04757.lcssa, %.preheader52 ]
  %i.o = mul i64 %.14859, 10                      ; 3 uses
  %i.p = add i32 %.160, 1                         ; 2 uses
  %i.q = lshr i64 %i.o, %i.a
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.lr.ph, label %.loopexit, !llvm.loop !633

.loopexit.loopexit73:                             ; preds = %.lr.ph107
  %i.s = trunc nuw i64 %indvars.iv.next to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.loopexit.loopexit73, %.preheader52
  %.249 = phi i64 [ %i.i, %.loopexit.loopexit73 ], [ %.04757.lcssa, %.preheader52 ], [ %i.o, %.lr.ph ] ; 3 uses
  %.2 = phi i32 [ %i.s, %.loopexit.loopexit73 ], [ %i.b, %.preheader52 ], [ %i.p, %.lr.ph ] ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !626
  %reass.sub = sub i32 %i.u, %.2
  %i.v = add i32 %reass.sub, 1                    ; 2 uses
  store i32 %i.v, ptr %i.t, align 4, !tbaa !626
  %i.w = icmp slt i32 %i.v, -2047
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.loopexit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %0, i8 0, i64 10, i1 false)
  br label %_ZN17duckdb_fast_float6detail4trimERNS_7decimalE.exit

bb.d:                                             ; preds = %.loopexit
  %notmask = shl nsw i64 -1, %i.a
  %i.x = xor i64 %notmask, -1                     ; 4 uses
  %i.y = icmp ult i32 %.2, %i.b
  br i1 %i.y, label %.lr.ph65, label %.preheader

.lr.ph65:                                         ; preds = %bb.d
  %i.z = zext i32 %.2 to i64                      ; 2 uses
  %i.aa = sub nuw i32 %i.b, %.2                   ; 5 uses
  %.neg = add i32 %.2, 1
  %xtraiter = and i32 %i.aa, 1
  %i.ab = icmp eq i32 %i.b, %.neg
  br i1 %i.ab, label %.epil.preheader, label %.lr.ph65.new

.lr.ph65.new:                                     ; preds = %.lr.ph65
  %unroll_iter = and i32 %i.aa, -2
  br label %bb.e

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.e
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph65
  %indvars.iv84.epil.init = phi i64 [ 0, %.lr.ph65 ], [ %indvars.iv.next85.1, %.preheader.loopexit.unr-lcssa ]
  %indvars.iv82.epil.init = phi i64 [ %i.z, %.lr.ph65 ], [ %indvars.iv.next83.1, %.preheader.loopexit.unr-lcssa ]
  %.35062.epil.init = phi i64 [ %.249, %.lr.ph65 ], [ %i.bd, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod115 = trunc i32 %i.aa to i1
  tail call void @llvm.assume(i1 %lcmp.mod115)
  %i.ac = lshr i64 %.35062.epil.init, %i.a
  %i.ad = trunc i64 %i.ac to i8
  %i.ae = and i64 %.35062.epil.init, %i.x
  %i.af = mul i64 %i.ae, 10
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv82.epil.init
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !222
  %i.ai = zext i8 %i.ah to i64
  %i.aj = add i64 %i.af, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv84.epil.init
  store i8 %i.ad, ptr %i.ak, align 1, !tbaa !222
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %bb.d
  %.350.lcssa = phi i64 [ %.249, %bb.d ], [ %i.bd, %.preheader.loopexit.unr-lcssa ], [ %i.aj, %.epil.preheader ] ; 2 uses
  %.044.lcssa = phi i32 [ 0, %bb.d ], [ %i.aa, %.preheader.loopexit.unr-lcssa ], [ %i.aa, %.epil.preheader ] ; 4 uses
  %.not68 = icmp eq i64 %.350.lcssa, 0
  br i1 %.not68, label %._crit_edge, label %.lr.ph71

.lr.ph71:                                         ; preds = %.preheader
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 9
  br label %bb.f

bb.e:                                             ; preds = %bb.e, %.lr.ph65.new
  %indvars.iv84 = phi i64 [ 0, %.lr.ph65.new ], [ %indvars.iv.next85.1, %bb.e ] ; 3 uses
  %indvars.iv82 = phi i64 [ %i.z, %.lr.ph65.new ], [ %indvars.iv.next83.1, %bb.e ] ; 3 uses
  %.35062 = phi i64 [ %.249, %.lr.ph65.new ], [ %i.bd, %bb.e ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph65.new ], [ %niter.next.1, %bb.e ]
  %i.am = lshr i64 %.35062, %i.a
  %i.an = trunc i64 %i.am to i8
  %i.ao = and i64 %.35062, %i.x
  %i.ap = mul i64 %i.ao, 10
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv82
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !222
  %i.as = zext i8 %i.ar to i64
  %i.at = add i64 %i.ap, %i.as                    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv84
  store i8 %i.an, ptr %i.au, align 2, !tbaa !222
  %i.av = lshr i64 %i.at, %i.a
  %i.aw = trunc i64 %i.av to i8
  %i.ax = and i64 %i.at, %i.x
  %i.ay = mul i64 %i.ax, 10
  %indvars.iv.next83.1 = add nuw nsw i64 %indvars.iv82, 2 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv82
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !222
  %i.bc = zext i8 %i.bb to i64
  %i.bd = add i64 %i.ay, %i.bc                    ; 3 uses
  %indvars.iv.next85.1 = add nuw nsw i64 %indvars.iv84, 2 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv84
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  store i8 %i.aw, ptr %i.bf, align 1, !tbaa !222
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.e, !llvm.loop !634

bb.f:                                             ; preds = %.lr.ph71, %bb.j
  %.14570 = phi i32 [ %.044.lcssa, %.lr.ph71 ], [ %.246, %bb.j ] ; 5 uses
  %.469 = phi i64 [ %.350.lcssa, %.lr.ph71 ], [ %i.bi, %bb.j ] ; 2 uses
  %i.bg = lshr i64 %.469, %i.a                    ; 2 uses
  %i.bh = and i64 %.469, %i.x
  %i.bi = mul i64 %i.bh, 10                       ; 2 uses
  %i.bj = icmp ult i32 %.14570, 768
  br i1 %i.bj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bk = trunc i64 %i.bg to i8
  %i.bl = add nuw nsw i32 %.14570, 1
  %i.bm = zext nneg i32 %.14570 to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bm
  store i8 %i.bk, ptr %i.bn, align 1, !tbaa !222
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.bo = and i64 %i.bg, 255
  %.not51 = icmp eq i64 %i.bo, 0
  br i1 %.not51, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.al, align 1, !tbaa !629
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %.246 = phi i32 [ %i.bl, %bb.g ], [ %.14570, %bb.i ], [ %.14570, %bb.h ] ; 3 uses
  %.not = icmp eq i64 %i.bi, 0
  br i1 %.not, label %._crit_edge.thread, label %bb.f, !llvm.loop !635

._crit_edge.thread:                               ; preds = %bb.j
  store i32 %.246, ptr %0, align 4, !tbaa !628
  br label %.lr.ph.preheader.i

._crit_edge:                                      ; preds = %.preheader
  store i32 %.044.lcssa, ptr %0, align 4, !tbaa !628
  %.not4.i = icmp eq i32 %.044.lcssa, 0
  br i1 %.not4.i, label %_ZN17duckdb_fast_float6detail4trimERNS_7decimalE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge.thread, %._crit_edge
  %.145.lcssa94 = phi i32 [ %.246, %._crit_edge.thread ], [ %.044.lcssa, %._crit_edge ]
  %i.bp = zext i32 %.145.lcssa94 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.bp, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.k ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %2 = and i64 %indvars.iv.next.i, 4294967295
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 %2
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !222
  %i.bs = icmp eq i8 %i.br, 0
  br i1 %i.bs, label %bb.k, label %_ZN17duckdb_fast_float6detail4trimERNS_7decimalE.exit

bb.k:                                             ; preds = %.lr.ph.i
  %indvars.i = trunc i64 %indvars.iv.next.i to i32 ; 2 uses
  store i32 %indvars.i, ptr %0, align 4, !tbaa !628
  %.not.i = icmp eq i32 %indvars.i, 0
  br i1 %.not.i, label %_ZN17duckdb_fast_float6detail4trimERNS_7decimalE.exit, label %.lr.ph.i, !llvm.loop !631

_ZN17duckdb_fast_float6detail4trimERNS_7decimalE.exit: ; preds = %bb.k, %.lr.ph.i, %._crit_edge, %._crit_edge108, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN17duckdb_fast_float6detail18decimal_left_shiftERNS_7decimalEj(ptr noundef nonnull align 4 dereferenceable(778) %0, i32 noundef %1) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !628    ; 4 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %_ZN17duckdb_fast_float6detail4trimERNS_7decimalE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %1, 63
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [2 x i8], ptr @_ZZN17duckdb_fast_float6detail35number_of_digits_decimal_left_shiftERKNS_7decimalEjE41number_of_digits_decimal_left_shift_table, i64 %i.d ; 2 uses
  %i.f = load i16, ptr %i.e, align 2, !tbaa !638
  %i.g = zext i16 %i.f to i32                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.i = load i16, ptr %i.h, align 2, !tbaa !638
  %i.j = lshr i32 %i.g, 11                        ; 4 uses
  %i.k = and i32 %i.g, 2047                       ; 3 uses
  %i.l = and i16 %i.i, 2047
  %i.m = zext nneg i16 %i.l to i32                ; 2 uses
  %i.n = zext nneg i32 %i.k to i64
  %i.o = getelementptr inbounds nuw i8, ptr @_ZZN17duckdb_fast_float6detail35number_of_digits_decimal_left_shiftERKNS_7decimalEjE53number_of_digits_decimal_left_shift_table_powers_of_5, i64 %i.n
  %.not31.i = icmp eq i32 %i.k, %i.m
  br i1 %.not31.i, label %_ZN17duckdb_fast_float6detail35number_of_digits_decimal_left_shiftERKNS_7decimalEj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.p = sub nsw i32 %i.m, %i.k
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 10
  %wide.trip.count.i = zext i32 %i.a to i64
  %wide.trip.count36.i = zext i32 %i.p to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.f
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond37.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count36.i
  br i1 %exitcond37.not.i, label %_ZN17duckdb_fast_float6detail35number_of_digits_decimal_left_shiftERKNS_7decimalEj.exit, label %bb.d, !llvm.loop !640

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 4 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.j, -1
  br label %_ZN17duckdb_fast_float6detail35number_of_digits_decimal_left_shiftERKNS_7decimalEj.exit

bb.f:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv.i
  %i.t = load i8, ptr %i.s, align 1, !tbaa !222   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 %indvars.iv.i
  %i.v = load i8, ptr %i.u, align 1, !tbaa !222   ; 2 uses
  %i.w = icmp eq i8 %i.t, %i.v
  br i1 %i.w, label %bb.c, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = icmp ult i8 %i.t, %i.v
  %i.y = sext i1 %i.x to i32
  %spec.select.i = add nsw i32 %i.j, %i.y
  br label %_ZN17duckdb_fast_float6detail35number_of_digits_decimal_left_shiftERKNS_7decimalEj.exit

_ZN17duckdb_fast_float6detail35number_of_digits_decimal_left_shiftERKNS_7decimalEj.exit: ; preds = %bb.c, %bb.b, %bb.e, %bb.g
  %.0.i = phi i32 [ %i.r, %bb.e ], [ %spec.select.i, %bb.g ], [ %i.j, %bb.b ], [ %i.j, %bb.c ] ; 3 uses
  %i.z = add i32 %i.a, -1                         ; 3 uses
  %i.aa = icmp sgt i32 %i.z, -1
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN17duckdb_fast_float6detail35number_of_digits_decimal_left_shiftERKNS_7decimalEj.exit
  %i.ab = add i32 %.0.i, %i.z
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.ad = zext nneg i32 %1 to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.af = zext nneg i32 %i.z to i64
  br label %bb.h

.preheader:                                       ; preds = %bb.l
  %.not57 = icmp ult i64 %i.am, 10
  br i1 %.not57, label %._crit_edge, label %.lr.ph60

.lr.ph60:                                         ; preds = %.preheader
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 10
  br label %bb.m

bb.h:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ %i.af, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 3 uses
  %.04154 = phi i32 [ %i.ab, %.lr.ph ], [ %i.at, %bb.l ] ; 3 uses
  %.04253 = phi i64 [ 0, %.lr.ph ], [ %i.an, %bb.l ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 %indvars.iv
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !222
  %i.ak = zext i8 %i.aj to i64
  %i.al = shl i64 %i.ak, %i.ad
  %i.am = add i64 %i.al, %.04253                  ; 3 uses
  %i.an = udiv i64 %i.am, 10                      ; 3 uses
  %.neg45 = mul i64 %i.an, -10
  %i.ao = add i64 %.neg45, %i.am                  ; 2 uses
  %i.ap = icmp ult i32 %.04154, 768
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aq = trunc i64 %i.ao to i8
  %i.ar = zext nneg i32 %.04154 to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ar
  store i8 %i.aq, ptr %i.as, align 1, !tbaa !222
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %.not46 = icmp eq i64 %i.ao, 0
  br i1 %.not46, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %i.ae, align 1, !tbaa !629
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i
  %i.at = add i32 %.04154, -1                     ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.au = icmp sgt i64 %indvars.iv, 0
  br i1 %i.au, label %bb.h, label %.preheader, !llvm.loop !641

bb.m:                                             ; preds = %.lr.ph60, %bb.q
  %.159 = phi i32 [ %i.at, %.lr.ph60 ], [ %i.bb, %bb.q ] ; 3 uses
  %.14358 = phi i64 [ %i.an, %.lr.ph60 ], [ %i.av, %bb.q ] ; 3 uses
  %i.av = udiv i64 %.14358, 10                    ; 2 uses
  %.neg = mul nsw i64 %i.av, -10
  %i.aw = add nsw i64 %.neg, %.14358              ; 2 uses
  %i.ax = icmp ult i32 %.159, 768
  br i1 %i.ax, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ay = trunc i64 %i.aw to i8
  %i.az = zext nneg i32 %.159 to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.az
  store i8 %i.ay, ptr %i.ba, align 1, !tbaa !222
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %.not44 = icmp eq i64 %i.aw, 0
  br i1 %.not44, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i8 1, ptr %i.ag, align 1, !tbaa !629
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n
  %i.bb = add i32 %.159, -1
  %.not = icmp samesign ult i64 %.14358, 10
  br i1 %.not, label %._crit_edge, label %bb.m, !llvm.loop !642

._crit_edge:                                      ; preds = %bb.q, %_ZN17duckdb_fast_float6detail35number_of_digits_decimal_left_shiftERKNS_7decimalEj.exit, %.preheader
  %i.bc = add i32 %.0.i, %i.a                     ; 2 uses
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.bc, i32 768) ; 2 uses
  store i32 %spec.select, ptr %0, align 4, !tbaa !628
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !626
  %i.bf = add nsw i32 %i.be, %.0.i
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !626
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 10
  %.not4.i = icmp eq i32 %i.bc, 0
  br i1 %.not4.i, label %_ZN17duckdb_fast_float6detail4trimERNS_7decimalE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge
  %i.bh = zext nneg i32 %spec.select to i64
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %bb.r, %.lr.ph.preheader.i
  %indvars.iv.i48 = phi i64 [ %i.bh, %.lr.ph.preheader.i ], [ %indvars.iv.next.i49, %bb.r ]
  %indvars.iv.next.i49 = add nsw i64 %indvars.iv.i48, -1 ; 3 uses
  %i.bi = and i64 %indvars.iv.next.i49, 4294967295
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !222
  %i.bl = icmp eq i8 %i.bk, 0
  br i1 %i.bl, label %bb.r, label %_ZN17duckdb_fast_float6detail4trimERNS_7decimalE.exit

bb.r:                                             ; preds = %.lr.ph.i47
  %indvars.i = trunc i64 %indvars.iv.next.i49 to i32 ; 2 uses
  store i32 %indvars.i, ptr %0, align 4, !tbaa !628
  %.not.i = icmp eq i32 %indvars.i, 0
  br i1 %.not.i, label %_ZN17duckdb_fast_float6detail4trimERNS_7decimalE.exit, label %.lr.ph.i47, !llvm.loop !631

_ZN17duckdb_fast_float6detail4trimERNS_7decimalE.exit: ; preds = %bb.r, %.lr.ph.i47, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZN17duckdb_fast_float6detail5roundERNS_7decimalE(ptr noundef nonnull align 4 dereferenceable(778) %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !628    ; 4 uses
end_hunk_0

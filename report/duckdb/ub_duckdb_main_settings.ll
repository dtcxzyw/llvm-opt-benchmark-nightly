inline.NumInlined: 2875
inline.NumDeleted: 1096
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN17duckdb_fast_float6detail12parse_infnanIdEENS_17from_chars_resultEPKcS4_RT_:bb.a

bb.b:                                             ; preds = %.lr.ph.i.preheader
  %i.z = getelementptr inbounds nuw i8, ptr %spec.select, i64 3 ; 6 uses
  %i.aa = select i1 %i.b, double -qnan, double +qnan
  store double %i.aa, ptr %2, align 8, !tbaa !614
  %.not = icmp eq ptr %i.z, %1
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = load i8, ptr %i.z, align 1, !tbaa !222
  %i.ac = icmp ne i8 %i.ab, 40
  %i.ad = getelementptr inbounds nuw i8, ptr %spec.select, i64 4 ; 4 uses
  %.not4058 = icmp eq ptr %i.ad, %1
  %or.cond61 = select i1 %i.ac, i1 true, i1 %.not4058
  br i1 %or.cond61, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !222 ; 2 uses
  %i.af = icmp eq i8 %i.ae, 41
  br i1 %i.af, label %.lr.ph._crit_edge, label %.lr.ph76

.lr.ph._crit_edge:                                ; preds = %.lr.ph.backedge, %.lr.ph.preheader
  %.059.lcssa = phi ptr [ %i.ad, %.lr.ph.preheader ], [ %.059.be, %.lr.ph.backedge ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.059.lcssa, i64 1
  br label %.loopexit

.lr.ph76:                                         ; preds = %.lr.ph.preheader, %.lr.ph.backedge
  %i.ah = phi i8 [ %i.an, %.lr.ph.backedge ], [ %i.ae, %.lr.ph.preheader ] ; 3 uses
  %.05975 = phi ptr [ %.059.be, %.lr.ph.backedge ], [ %i.ad, %.lr.ph.preheader ] ; 2 uses
  %i.ai = and i8 %i.ah, -33
  %i.aj = add i8 %i.ai, -65
  %or.cond54 = icmp ult i8 %i.aj, 26
  br i1 %or.cond54, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph76
  %i.ak = add i8 %i.ah, -58
  %or.cond42 = icmp ult i8 %i.ak, -10
  %i.al = icmp ne i8 %i.ah, 95
  %or.cond53.not64 = and i1 %i.al, %or.cond42
  %i.am = getelementptr inbounds nuw i8, ptr %.05975, i64 1 ; 2 uses
  %.not40 = icmp eq ptr %i.am, %1
  %or.cond62 = select i1 %or.cond53.not64, i1 true, i1 %.not40
  br i1 %or.cond62, label %.loopexit, label %.lr.ph.backedge

bb.e:                                             ; preds = %.lr.ph76
  %.old = getelementptr inbounds nuw i8, ptr %.05975, i64 1 ; 2 uses
  %.not40.old = icmp eq ptr %.old, %1
  br i1 %.not40.old, label %.loopexit, label %.lr.ph.backedge

.lr.ph.backedge:                                  ; preds = %bb.e, %bb.d
  %.059.be = phi ptr [ %.old, %bb.e ], [ %i.am, %bb.d ] ; 3 uses
  %i.an = load i8, ptr %.059.be, align 1, !tbaa !222 ; 2 uses
  %i.ao = icmp eq i8 %i.an, 41
  br i1 %i.ao, label %.lr.ph._crit_edge, label %.lr.ph76, !llvm.loop !616

bb.f:                                             ; preds = %.lr.ph.i43.preheader
  %i.ap = icmp samesign ugt i64 %i.e, 7
  br i1 %i.ap, label %.lr.ph.i48, label %bb.g

.lr.ph.i48:                                       ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %spec.select, i64 3
  %i.ar = load <4 x i8>, ptr %i.aq, align 1, !tbaa !222
  %i.as = xor <4 x i8> %i.ar, <i8 73, i8 78, i8 73, i8 84>
  %i.at = getelementptr inbounds nuw i8, ptr %spec.select, i64 7
  %i.au = load i8, ptr %i.at, align 1, !tbaa !222
  %i.av = xor i8 %i.au, 89
  %i.aw = tail call i8 @llvm.vector.reduce.or.v4i8(<4 x i8> %i.as)
  %op.rdx = or i8 %i.aw, %i.av
  %i.ax = and i8 %op.rdx, -33
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i48, %bb.f
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph.i48, %bb.g
  %.sink = phi i64 [ 3, %bb.g ], [ 8, %.lr.ph.i48 ]
  %i.az = getelementptr inbounds nuw i8, ptr %spec.select, i64 %.sink
  %i.ba = select i1 %i.b, double -inf, double +inf
  store double %i.ba, ptr %2, align 8, !tbaa !614
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.d, %bb.a, %.lr.ph.i43.preheader, %bb.b, %bb.c, %.lr.ph._crit_edge, %bb.h
  %.sroa.0.3 = phi ptr [ %0, %.lr.ph.i43.preheader ], [ %i.az, %bb.h ], [ %i.z, %bb.b ], [ %i.z, %bb.c ], [ %i.ag, %.lr.ph._crit_edge ], [ %0, %bb.a ], [ %i.z, %bb.d ], [ %i.z, %bb.e ]
  %.sroa.6.0 = phi i32 [ 22, %.lr.ph.i43.preheader ], [ 0, %bb.h ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %.lr.ph._crit_edge ], [ 22, %bb.a ], [ 0, %bb.d ], [ 0, %bb.e ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.3, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.6.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { i64, i32 } @_ZN17duckdb_fast_float19parse_long_mantissaINS_13binary_formatIdEEEENS_17adjusted_mantissaEPKcS5_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %2 = alloca %"struct.duckdb_fast_float::decimal", align 4 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !617)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %2, i8 0, i64 10, i1 false)
  %i.d = load i8, ptr %0, align 1, !tbaa !222, !noalias !617
  %i.e = icmp eq i8 %i.d, 45                      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = zext i1 %i.e to i8
  store i8 %i.g, ptr %i.f, align 4, !tbaa !620, !alias.scope !617
  %spec.select.i.idx = zext i1 %i.e to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.i.idx ; 3 uses
  %.not.i9 = icmp eq ptr %spec.select.i, %1
  br i1 %.not.i9, label %.critedge.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.h = ptrtoaddr ptr %0 to i64
  %i.i = sub i64 %i.a, %i.h
  %scevgep = getelementptr i8, ptr %0, i64 %i.i
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.188.i10 = phi ptr [ %i.l, %bb.b ], [ %spec.select.i, %.lr.ph.preheader ] ; 3 uses
  %i.j = load i8, ptr %.188.i10, align 1, !tbaa !222, !noalias !617
  %i.k = icmp eq i8 %i.j, 48
  br i1 %i.k, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.188.i10, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.l, %1
  br i1 %.not.i, label %.critedge.i, label %.lr.ph, !llvm.loop !622

.critedge.i:                                      ; preds = %bb.b, %.lr.ph, %bb.a
  %.188.i.lcssa = phi ptr [ %spec.select.i, %bb.a ], [ %.188.i10, %.lr.ph ], [ %scevgep, %bb.b ] ; 5 uses
  %.188.i.lcssa60 = ptrtoaddr ptr %.188.i.lcssa to i64
  %.not99.i15 = icmp eq ptr %.188.i.lcssa, %1
  br i1 %.not99.i15, label %.critedge106.i.loopexit, label %.lr.ph17

.lr.ph17:                                         ; preds = %.critedge.i
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph17, %bb.f
  %.2.i16 = phi ptr [ %.188.i.lcssa, %.lr.ph17 ], [ %i.u, %bb.f ] ; 4 uses
  %.promoted26 = phi i32 [ 0, %.lr.ph17 ], [ %i.t, %bb.f ] ; 9 uses
  %i.n = load i8, ptr %.2.i16, align 1, !tbaa !222, !noalias !617 ; 2 uses
  %i.o = add i8 %i.n, -48                         ; 2 uses
  %i.p = icmp ult i8 %i.o, 10
  br i1 %i.p, label %bb.d, label %.critedge2.i

bb.d:                                             ; preds = %bb.c
  %i.q = icmp ult i32 %.promoted26, 768
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = zext nneg i32 %.promoted26 to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.r
  store i8 %i.o, ptr %i.s, align 1, !tbaa !222, !alias.scope !617
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = add i32 %.promoted26, 1                  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.2.i16, i64 1 ; 3 uses
  %.not99.i = icmp eq ptr %i.u, %1
  br i1 %.not99.i, label %.critedge106.i.loopexit, label %bb.c, !llvm.loop !623

.critedge2.i:                                     ; preds = %bb.c
  store i32 %.promoted26, ptr %2, align 4
  %i.v = icmp eq i8 %i.n, 46
  br i1 %i.v, label %bb.g, label %.critedge106.i

bb.g:                                             ; preds = %.critedge2.i
  %i.w = getelementptr inbounds nuw i8, ptr %.2.i16, i64 1 ; 4 uses
  %i.x = icmp ne i32 %.promoted26, 0
  %.not100.i20 = icmp eq ptr %i.w, %1
  %or.cond = select i1 %i.x, i1 true, i1 %.not100.i20
  br i1 %or.cond, label %.critedge4.i, label %.lr.ph22.preheader

.lr.ph22.preheader:                               ; preds = %bb.g
  %i.y = sub i64 %i.a, %.188.i.lcssa60
  %scevgep61 = getelementptr i8, ptr %.188.i.lcssa, i64 %i.y
  br label %.lr.ph22

.lr.ph22:                                         ; preds = %.lr.ph22.preheader, %bb.h
  %.3.i21 = phi ptr [ %i.ab, %bb.h ], [ %i.w, %.lr.ph22.preheader ] ; 3 uses
  %i.z = load i8, ptr %.3.i21, align 1, !tbaa !222, !noalias !617
  %i.aa = icmp eq i8 %i.z, 48
  br i1 %i.aa, label %bb.h, label %.critedge4.i

bb.h:                                             ; preds = %.lr.ph22
  %i.ab = getelementptr inbounds nuw i8, ptr %.3.i21, i64 1 ; 2 uses
  %.not100.i = icmp eq ptr %i.ab, %1
  br i1 %.not100.i, label %.critedge4.i, label %.lr.ph22, !llvm.loop !624

.critedge4.i:                                     ; preds = %bb.h, %.lr.ph22, %bb.g
  %.4.i = phi ptr [ %i.w, %bb.g ], [ %.3.i21, %.lr.ph22 ], [ %scevgep61, %bb.h ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.4.i, i64 8 ; 2 uses
  %i.ad = icmp ule ptr %i.ac, %1
  %i.ae = add i32 %.promoted26, 8                 ; 2 uses
  %i.af = icmp ult i32 %i.ae, 768
  %i.ag = select i1 %i.ad, i1 %i.af, i1 false
  br i1 %i.ag, label %.lr.ph29, label %.thread

.lr.ph29:                                         ; preds = %.critedge4.i
  %i.ah = zext nneg i32 %i.ae to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph29, %bb.j
  %indvars.iv.a = phi i64 [ %i.ah, %.lr.ph29 ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %3 = phi ptr [ %i.ac, %.lr.ph29 ], [ %i.an, %bb.j ] ; 3 uses
  %.5.i28.a = phi ptr [ %.4.i, %.lr.ph29 ], [ %3, %bb.j ] ; 2 uses
  %4 = phi i32 [ %.promoted26, %.lr.ph29 ], [ %6, %bb.j ] ; 2 uses
  %.0.copyload.i.i = load i64, ptr %.5.i28.a, align 1, !noalias !617 ; 2 uses
  %i.ai = add i64 %.0.copyload.i.i, 5063812098665367110
  %i.aj = add i64 %.0.copyload.i.i, -3472328296227680304 ; 2 uses
  %i.ak = or i64 %i.ai, %i.aj
  %i.al = and i64 %i.ak, -9187201950435737472
  %.not.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %5 = zext i32 %4 to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 %5
  store i64 %i.aj, ptr %i.am, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ao = icmp ule ptr %i.an, %1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.a, 8
  %i.ap = icmp samesign ult i64 %indvars.iv.a, 760
  %i.aq = select i1 %i.ao, i1 %i.ap, i1 false
  %6 = trunc nuw nsw i64 %indvars.iv.a to i32     ; 2 uses
  br i1 %i.aq, label %bb.i, label %.thread

.thread:                                          ; preds = %bb.j, %bb.i, %.critedge4.i
  %.lcssa27 = phi i32 [ %.promoted26, %.critedge4.i ], [ %4, %bb.i ], [ %6, %bb.j ] ; 3 uses
  %.5.i.lcssa = phi ptr [ %.4.i, %.critedge4.i ], [ %.5.i28.a, %bb.i ], [ %3, %bb.j ] ; 3 uses
  store i32 %.lcssa27, ptr %2, align 4
  %.not101.i37 = icmp eq ptr %.5.i.lcssa, %1
  br i1 %.not101.i37, label %.critedge6.i, label %.lr.ph39

.lr.ph39:                                         ; preds = %.thread, %bb.m
  %.8.i38 = phi ptr [ %i.az, %bb.m ], [ %.5.i.lcssa, %.thread ] ; 3 uses
  %i.ar = phi i32 [ %i.ay, %bb.m ], [ %.lcssa27, %.thread ] ; 4 uses
  %i.as = load i8, ptr %.8.i38, align 1, !tbaa !222, !noalias !617
  %i.at = add i8 %i.as, -48                       ; 2 uses
  %i.au = icmp ult i8 %i.at, 10
  br i1 %i.au, label %bb.k, label %.critedge6.i

bb.k:                                             ; preds = %.lr.ph39
  %i.av = icmp ult i32 %i.ar, 768
  br i1 %i.av, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aw = zext nneg i32 %i.ar to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.aw
  store i8 %i.at, ptr %i.ax, align 1, !tbaa !222, !alias.scope !617
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ay = add i32 %i.ar, 1                        ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.8.i38, i64 1 ; 3 uses
  %.not101.i = icmp eq ptr %i.az, %1
  br i1 %.not101.i, label %.critedge6.i, label %.lr.ph39, !llvm.loop !625

.critedge6.i:                                     ; preds = %bb.m, %.lr.ph39, %.thread
  %.lcssa36 = phi i32 [ %.lcssa27, %.thread ], [ %i.ar, %.lr.ph39 ], [ %i.ay, %bb.m ] ; 2 uses
  %.8.i.lcssa = phi ptr [ %.5.i.lcssa, %.thread ], [ %.8.i38, %.lr.ph39 ], [ %i.az, %bb.m ] ; 2 uses
  store i32 %.lcssa36, ptr %2, align 4
  %i.ba = ptrtoint ptr %i.w to i64
  %i.bb = ptrtoint ptr %.8.i.lcssa to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = trunc i64 %i.bc to i32                  ; 2 uses
  store i32 %i.bd, ptr %i.b, align 4, !tbaa !626, !alias.scope !617
  br label %.critedge106.i

.critedge106.i.loopexit:                          ; preds = %bb.f, %.critedge.i
  %.lcssa13 = phi i32 [ 0, %.critedge.i ], [ %i.t, %bb.f ] ; 2 uses
  %.2.i.lcssa = phi ptr [ %.188.i.lcssa, %.critedge.i ], [ %i.u, %bb.f ]
  store i32 %.lcssa13, ptr %2, align 4
  br label %.critedge106.i

.critedge106.i:                                   ; preds = %.critedge106.i.loopexit, %.critedge6.i, %.critedge2.i
  %i.be = phi i32 [ %i.bd, %.critedge6.i ], [ 0, %.critedge2.i ], [ 0, %.critedge106.i.loopexit ] ; 2 uses
  %i.bf = phi i32 [ %.lcssa36, %.critedge6.i ], [ %.promoted26, %.critedge2.i ], [ %.lcssa13, %.critedge106.i.loopexit ] ; 3 uses
  %.9.i = phi ptr [ %.8.i.lcssa, %.critedge6.i ], [ %.2.i16, %.critedge2.i ], [ %.2.i.lcssa, %.critedge106.i.loopexit ] ; 6 uses
  %.not102.i = icmp eq i32 %i.bf, 0
  br i1 %.not102.i, label %.thread6, label %.preheader

.preheader:                                       ; preds = %.critedge106.i, %.critedge8.i
  %.9.pn.i = phi ptr [ %.085.i, %.critedge8.i ], [ %.9.i, %.critedge106.i ]
  %.083.i = phi i32 [ %spec.select107.i, %.critedge8.i ], [ 0, %.critedge106.i ] ; 2 uses
  %.085.i = getelementptr inbounds i8, ptr %.9.pn.i, i64 -1 ; 2 uses
  %i.bg = load i8, ptr %.085.i, align 1, !tbaa !222, !noalias !617 ; 2 uses
  switch i8 %i.bg, label %bb.n [
    i8 48, label %.critedge8.i
    i8 46, label %.critedge8.i
  ]

.critedge8.i:                                     ; preds = %.preheader, %.preheader
  %i.bh = icmp eq i8 %i.bg, 48
  %i.bi = zext i1 %i.bh to i32
  %spec.select107.i = add nuw nsw i32 %.083.i, %i.bi
  br label %.preheader, !llvm.loop !627

bb.n:                                             ; preds = %.preheader
  %i.bj = add nsw i32 %i.be, %i.bf                ; 3 uses
  store i32 %i.bj, ptr %i.b, align 4, !tbaa !626, !alias.scope !617
  %i.bk = sub i32 %i.bf, %.083.i                  ; 3 uses
  store i32 %i.bk, ptr %2, align 4, !tbaa !628, !alias.scope !617
  %i.bl = icmp ugt i32 %i.bk, 768
  br i1 %i.bl, label %bb.o, label %.thread6

bb.o:                                             ; preds = %bb.n
  store i8 1, ptr %i.c, align 1, !tbaa !629, !alias.scope !617
  store i32 768, ptr %2, align 4, !tbaa !628, !alias.scope !617
  br label %.thread6

.thread6:                                         ; preds = %.critedge106.i, %bb.o, %bb.n
  %i.bm = phi i32 [ 0, %.critedge106.i ], [ 768, %bb.o ], [ %i.bk, %bb.n ] ; 3 uses
  %i.bn = phi i32 [ %i.be, %.critedge106.i ], [ %i.bj, %bb.o ], [ %i.bj, %bb.n ]
  %.not103.i = icmp eq ptr %.9.i, %1
  br i1 %.not103.i, label %bb.v, label %bb.p

bb.p:                                             ; preds = %.thread6
  %i.bo = load i8, ptr %.9.i, align 1, !tbaa !222, !noalias !617
  switch i8 %i.bo, label %bb.v [
    i8 101, label %bb.q
    i8 69, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p, %bb.p
  %i.bp = getelementptr inbounds nuw i8, ptr %.9.i, i64 1 ; 4 uses
  %.not104.i = icmp eq ptr %i.bp, %1
  br i1 %.not104.i, label %.critedge109.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !222, !noalias !617 ; 2 uses
  %i.br = icmp eq i8 %i.bq, 45
  br i1 %i.br, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bs = getelementptr inbounds nuw i8, ptr %.9.i, i64 2
  br label %.critedge109.i

bb.t:                                             ; preds = %bb.r
  %i.bt = icmp eq i8 %i.bq, 43
  %i.bu = getelementptr inbounds nuw i8, ptr %.9.i, i64 2
  %spec.select110.i = select i1 %i.bt, ptr %i.bu, ptr %i.bp
  br label %.critedge109.i

.critedge109.i:                                   ; preds = %bb.t, %bb.s, %bb.q
  %.10.i = phi ptr [ %i.bs, %bb.s ], [ %i.bp, %bb.q ], [ %spec.select110.i, %bb.t ] ; 2 uses
  %.082.i = phi i1 [ true, %bb.s ], [ false, %bb.q ], [ false, %bb.t ]
  %.not105.i45 = icmp eq ptr %.10.i, %1
  br i1 %.not105.i45, label %.critedge10.i, label %.lr.ph48

.lr.ph48:                                         ; preds = %.critedge109.i, %bb.u
  %.081.i47 = phi i32 [ %.1.i, %bb.u ], [ 0, %.critedge109.i ] ; 4 uses
  %.11.i46 = phi ptr [ %i.cc, %bb.u ], [ %.10.i, %.critedge109.i ] ; 2 uses
  %i.bv = load i8, ptr %.11.i46, align 1, !tbaa !222, !noalias !617
  %i.bw = add i8 %i.bv, -48                       ; 2 uses
  %i.bx = icmp ult i8 %i.bw, 10
  br i1 %i.bx, label %bb.u, label %.critedge10.i

bb.u:                                             ; preds = %.lr.ph48
  %i.by = icmp slt i32 %.081.i47, 65536
  %i.bz = mul nsw i32 %.081.i47, 10
  %i.ca = zext nneg i8 %i.bw to i32
  %i.cb = add nsw i32 %i.bz, %i.ca
  %.1.i = select i1 %i.by, i32 %i.cb, i32 %.081.i47 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.11.i46, i64 1 ; 2 uses
  %.not105.i = icmp eq ptr %i.cc, %1
  br i1 %.not105.i, label %.critedge10.i, label %.lr.ph48, !llvm.loop !630

.critedge10.i:                                    ; preds = %bb.u, %.lr.ph48, %.critedge109.i
  %.081.i.lcssa = phi i32 [ 0, %.critedge109.i ], [ %.081.i47, %.lr.ph48 ], [ %.1.i, %bb.u ] ; 2 uses
  %i.cd = sub nsw i32 0, %.081.i.lcssa
  %i.ce = select i1 %.082.i, i32 %i.cd, i32 %.081.i.lcssa
  %i.cf = add nsw i32 %i.bn, %i.ce
  store i32 %i.cf, ptr %i.b, align 4, !tbaa !626, !alias.scope !617
  br label %bb.v

bb.v:                                             ; preds = %.critedge10.i, %bb.p, %.thread6
  %i.cg = icmp samesign ult i32 %i.bm, 19
  br i1 %i.cg, label %.lr.ph53, label %_ZN17duckdb_fast_float13parse_decimalEPKcS1_c.exit

.lr.ph53:                                         ; preds = %bb.v
  %i.ch = zext nneg i32 %i.bm to i64
  %i.ci = getelementptr i8, ptr %2, i64 %i.ch
  %scevgep63 = getelementptr i8, ptr %i.ci, i64 10
  %narrow = sub nuw nsw i32 19, %i.bm
  %i.cj = zext nneg i32 %narrow to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep63, i8 0, i64 %i.cj, i1 false), !tbaa !222, !alias.scope !617
  br label %_ZN17duckdb_fast_float13parse_decimalEPKcS1_c.exit

_ZN17duckdb_fast_float13parse_decimalEPKcS1_c.exit: ; preds = %.lr.ph53, %bb.v
  %i.ck = call { i64, i32 } @_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaERNS_7decimalE(ptr noundef nonnull align 4 dereferenceable(778) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret { i64, i32 } %i.ck
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
end_hunk_0

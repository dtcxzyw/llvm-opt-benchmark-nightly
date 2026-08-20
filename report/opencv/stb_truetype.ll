inline.NumInlined: 427
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN2cvL20stbtt__cff_get_indexEPNS_10stbtt__bufE:bb.a
  %unroll_iter = and i32 %.0.i, 254
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.1, %.lr.ph.i.preheader.new
  %i.ag = phi i32 [ %..i.i, %.lr.ph.i.preheader.new ], [ %i.ay, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.1 ] ; 4 uses
  %.056.i16 = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %.0.i.i19.1, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.1 ]
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.1 ]
  %i.ah = shl i32 %.056.i16, 8                    ; 2 uses
  %.not.i.i17 = icmp slt i32 %i.ag, %i.d
  br i1 %.not.i.i17, label %bb.f, label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18

bb.f:                                             ; preds = %.lr.ph.i
  %i.ai = load ptr, ptr %0, align 8, !tbaa !213
  %i.aj = add nsw i32 %i.ag, 1                    ; 2 uses
  store i32 %i.aj, ptr %i.a, align 8, !tbaa !211
  %i.ak = sext i32 %i.ag to i64
  %i.al = getelementptr inbounds i8, ptr %i.ai, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !14
  %i.an = zext i8 %i.am to i32
  %i.ao = or disjoint i32 %i.ah, %i.an
  br label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18: ; preds = %bb.f, %.lr.ph.i
  %i.ap = phi i32 [ %i.aj, %bb.f ], [ %i.ag, %.lr.ph.i ] ; 4 uses
  %.0.i.i19 = phi i32 [ %i.ao, %bb.f ], [ %i.ah, %.lr.ph.i ]
  %i.aq = shl i32 %.0.i.i19, 8                    ; 2 uses
  %.not.i.i17.1 = icmp slt i32 %i.ap, %i.d
  br i1 %.not.i.i17.1, label %bb.g, label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.1

bb.g:                                             ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18
  %i.ar = load ptr, ptr %0, align 8, !tbaa !213
  %i.as = add nsw i32 %i.ap, 1                    ; 2 uses
  store i32 %i.as, ptr %i.a, align 8, !tbaa !211
  %i.at = sext i32 %i.ap to i64
  %i.au = getelementptr inbounds i8, ptr %i.ar, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !14
  %i.aw = zext i8 %i.av to i32
  %i.ax = or disjoint i32 %i.aq, %i.aw
  br label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.1

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.1: ; preds = %bb.g, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18
  %i.ay = phi i32 [ %i.as, %bb.g ], [ %i.ap, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18 ] ; 3 uses
  %.0.i.i19.1 = phi i32 [ %i.ax, %bb.g ], [ %i.aq, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18 ] ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !214

_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.unr-lcssa: ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.epil.init = phi i32 [ %..i.i, %.lr.ph.i.preheader ], [ %i.ay, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.unr-lcssa ] ; 4 uses
  %.056.i16.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %.0.i.i19.1, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.unr-lcssa ]
  %lcmp.mod33 = trunc i32 %.0.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod33)
  %i.az = shl i32 %.056.i16.epil.init, 8          ; 2 uses
  %.not.i.i17.epil = icmp slt i32 %.epil.init, %i.d
  br i1 %.not.i.i17.epil, label %bb.h, label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit

bb.h:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.ba = load ptr, ptr %0, align 8, !tbaa !213
  %i.bb = add nsw i32 %.epil.init, 1              ; 2 uses
  store i32 %i.bb, ptr %i.a, align 8, !tbaa !211
  %i.bc = sext i32 %.epil.init to i64
  %i.bd = getelementptr inbounds i8, ptr %i.ba, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !14
  %i.bf = zext i8 %i.be to i32
  %i.bg = or disjoint i32 %i.az, %i.bf
  br label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit

_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit: ; preds = %.lr.ph.i.epil.preheader, %bb.h, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.unr-lcssa
  %.lcssa = phi i32 [ %i.ay, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.unr-lcssa ], [ %i.bb, %bb.h ], [ %.epil.init, %.lr.ph.i.epil.preheader ]
  %.0.i.i19.lcssa = phi i32 [ %.0.i.i19.1, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.unr-lcssa ], [ %i.bg, %bb.h ], [ %i.az, %.lr.ph.i.epil.preheader ]
  %i.bh = add i32 %.0.i.i19.lcssa, -1
  br label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21

_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21: ; preds = %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit
  %i.bi = phi i32 [ %..i.i, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit ], [ %.lcssa, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit ]
  %.05.lcssa.i = phi i32 [ -1, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit ], [ %i.bh, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit ]
  %i.bj = add nsw i32 %.05.lcssa.i, %i.bi         ; 2 uses
  %i.bk = icmp slt i32 %i.bj, 0
  %i.bl = tail call i32 @llvm.smin.i32(i32 %i.bj, i32 %i.d)
  %..i.i22 = select i1 %i.bk, i32 %i.d, i32 %i.bl ; 2 uses
  store i32 %..i.i22, ptr %i.a, align 8, !tbaa !211
  br label %bb.i

bb.i:                                             ; preds = %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.1
  %i.bm = phi i32 [ %..i.i22, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21 ], [ %i.t, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.1 ] ; 2 uses
  %i.bn = sub nsw i32 %i.bm, %i.b                 ; 2 uses
  %i.bo = or i32 %i.bn, %i.b
  %or.cond.not.i = icmp slt i32 %i.bo, 0
  %i.bp = icmp sgt i32 %i.bm, %i.d
  %or.cond = or i1 %or.cond.not.i, %i.bp
  br i1 %or.cond, label %_ZN2cvL16stbtt__buf_rangeEPKNS_10stbtt__bufEii.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bq = load ptr, ptr %0, align 8, !tbaa !213
  %i.br = zext nneg i32 %i.b to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.br
  %i.bt = zext i32 %i.bn to i64
  %i.bu = shl nuw i64 %i.bt, 32
  br label %_ZN2cvL16stbtt__buf_rangeEPKNS_10stbtt__bufEii.exit

_ZN2cvL16stbtt__buf_rangeEPKNS_10stbtt__bufEii.exit: ; preds = %bb.i, %bb.j
  %.sroa.0.0.i = phi ptr [ null, %bb.i ], [ %i.bs, %bb.j ]
  %.sroa.5.0.i = phi i64 [ 0, %bb.i ], [ %i.bu, %bb.j ]
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %.sroa.5.0.i, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @_ZN2cvL23stbtt__VaryGlyphShapeTTEPKNS_14stbtt_fontinfoEiiiiPNS_12stbtt_vertexEiPiS5_S5_S5_(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef range(i32 0, 2) %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef nonnull captures(none) %5, i32 noundef %6, ptr nofree noundef captures(address_is_null) %7, ptr nofree noundef captures(address_is_null) %8, ptr nofree noundef captures(address_is_null) %9, ptr nofree noundef captures(address_is_null) %10) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.d = load i32, ptr %i.c, align 4, !tbaa !37
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.bp, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 460
  %i.g = load i32, ptr %i.f, align 4, !tbaa !38   ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.bp, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !20
  %.not = icmp slt i32 %1, %i.j
  br i1 %.not, label %bb.d, label %bb.bp

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.l = load i32, ptr %i.k, align 8, !tbaa !262
  %i.m = icmp eq i32 %i.l, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !8    ; 11 uses
  %i.p = sext i32 %i.g to i64
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 %i.p ; 2 uses
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = shl nsw i32 %1, 1
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds i8, ptr %i.q, i64 %i.s ; 4 uses
  %.val497 = load i8, ptr %i.t, align 1, !tbaa !14
  %i.u = getelementptr i8, ptr %i.t, i64 1
  %.val498 = load i8, ptr %i.u, align 1, !tbaa !14
  %i.v = zext i8 %.val497 to i32
  %i.w = zext i8 %.val498 to i32
  %i.x = shl nuw nsw i32 %i.v, 9
  %i.y = shl nuw nsw i32 %i.w, 1
  %i.z = or disjoint i32 %i.y, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %.val495 = load i8, ptr %i.aa, align 1, !tbaa !14
  %i.ab = getelementptr i8, ptr %i.t, i64 3
  %.val496 = load i8, ptr %i.ab, align 1, !tbaa !14
  %i.ac = zext i8 %.val495 to i32
  %i.ad = zext i8 %.val496 to i32
  %i.ae = shl nuw nsw i32 %i.ac, 9
  %i.af = shl nuw nsw i32 %i.ad, 1
  %i.ag = or disjoint i32 %i.af, %i.ae
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ah = shl nsw i32 %1, 2
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds i8, ptr %i.q, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 1
  %i.al = tail call i32 @llvm.bswap.i32(i32 %i.ak)
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.an = load i32, ptr %i.am, align 1
  %i.ao = tail call i32 @llvm.bswap.i32(i32 %i.an)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0413 = phi i32 [ %i.z, %bb.e ], [ %i.al, %bb.f ] ; 2 uses
  %.0412 = phi i32 [ %i.ag, %bb.e ], [ %i.ao, %bb.f ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !263 ; 2 uses
  %i.ar = add nsw i32 %i.aq, %.0413               ; 3 uses
  %.not455 = icmp sgt i32 %.0412, %.0413
  br i1 %.not455, label %bb.h, label %bb.bp

bb.h:                                             ; preds = %bb.g
  %i.as = add i32 %i.aq, %.0412
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.au = load i32, ptr %i.at, align 4, !tbaa !69 ; 4 uses
  %i.av = icmp ugt i32 %i.as, %i.au
  br i1 %i.av, label %bb.bp, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = sext i32 %i.ar to i64
  %i.ax = getelementptr inbounds i8, ptr %i.o, i64 %i.aw ; 4 uses
  %.val493 = load i8, ptr %i.ax, align 1, !tbaa !14
  %i.ay = getelementptr i8, ptr %i.ax, i64 1
  %.val494 = load i8, ptr %i.ay, align 1, !tbaa !14
  %i.az = zext i8 %.val493 to i16
  %i.ba = shl nuw i16 %i.az, 8                    ; 2 uses
  %i.bb = zext i8 %.val494 to i16
  %i.bc = or disjoint i16 %i.ba, %i.bb            ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %.val491 = load i8, ptr %i.bd, align 1, !tbaa !14
  %i.be = getelementptr i8, ptr %i.ax, i64 3
  %.val492 = load i8, ptr %i.be, align 1, !tbaa !14
  %i.bf = zext i8 %.val491 to i32
  %i.bg = shl nuw nsw i32 %i.bf, 8
  %i.bh = zext i8 %.val492 to i32
  %i.bi = or disjoint i32 %i.bg, %i.bh
  %i.bj = add nsw i32 %i.bi, %i.ar                ; 3 uses
  %.not456 = icmp ult i32 %i.bj, %i.au
  br i1 %.not456, label %bb.j, label %bb.bp

bb.j:                                             ; preds = %bb.i
  %i.bk = add nsw i32 %i.ar, 4
  %i.bl = icmp eq i16 %i.bc, 0
  br i1 %i.bl, label %bb.bp, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !220 ; 4 uses
  %.not457 = icmp sgt i16 %i.ba, -1
  %i.bo = and i16 %i.bc, 4095                     ; 2 uses
  %11 = zext nneg i16 %i.bo to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4, !tbaa !18
  %i.bp = icmp ne i32 %2, 0                       ; 3 uses
  %i.bq = select i1 %i.bp, i32 %3, i32 %6         ; 11 uses
  %i.br = add nsw i32 %i.bq, 4                    ; 4 uses
  %i.bs = sext i32 %i.br to i64                   ; 3 uses
  %i.bt = mul nsw i64 %i.bs, 20
  %i.bu = tail call noalias ptr @malloc(i64 noundef %i.bt) #21 ; 17 uses
  %.not458 = icmp eq ptr %i.bu, null
  br i1 %.not458, label %.thread528, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bv = shl i32 %i.br, 1                        ; 4 uses
  %i.bw = sext i32 %i.bv to i64                   ; 6 uses
  %i.bx = getelementptr [4 x i8], ptr %i.bu, i64 %i.bw ; 3 uses
  %i.by = getelementptr [2 x i8], ptr %i.bx, i64 %i.bs ; 3 uses
  %i.bz = getelementptr [2 x i8], ptr %i.by, i64 %i.bs ; 15 uses
  %i.ca = getelementptr [2 x i8], ptr %i.bz, i64 %i.bw ; 5 uses
  %i.cb = select i1 %i.bp, i16 0, i16 -32768      ; 6 uses
  %i.cc = icmp sgt i32 %i.bq, -4                  ; 2 uses
  br i1 %i.cc, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.l
  %smax = tail call i32 @llvm.smax.i32(i32 %i.bv, i32 1)
  %i.cd = zext nneg i32 %smax to i64
  %i.ce = shl nuw nsw i64 %i.cd, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bu, i8 0, i64 %i.ce, i1 false), !tbaa !18
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.l
  br i1 %.not457, label %bb.n, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.cf = call fastcc noundef i32 @_ZN2cvL23stbtt__ReadPointNumbersEPKNS_14stbtt_fontinfoEiPiPt(ptr noundef nonnull %0, i32 noundef %i.bj, ptr noundef %i.a, ptr noundef %i.by) ; 2 uses
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %.thread532, label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge
  %.0389 = phi i32 [ %i.cf, %bb.m ], [ %i.bj, %._crit_edge ]
  %.not601 = icmp eq i16 %i.bo, 0
  br i1 %.not601, label %.preheader, label %.lr.ph596

.lr.ph596:                                        ; preds = %bb.n
  %i.ch = shl i32 %i.bn, 1                        ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.ck = sext i32 %i.ch to i64
  %i.cl = shl nsw i32 %i.bn, 2
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.cn = icmp sgt i32 %i.bn, 0
  %wide.trip.count93.i = zext nneg i32 %i.bn to i64 ; 2 uses
  %i.co = load i32, ptr %i.a, align 4
  %i.cp = shl i32 %i.bq, 1                        ; 3 uses
  %i.cq = icmp sgt i32 %i.bq, 0
  %i.cr = icmp slt i32 %3, 1
  %i.cs = sext i32 %4 to i64
  %i.ct = getelementptr inbounds i8, ptr %i.o, i64 %i.cs
  %i.cu = mul nsw i64 %i.bw, 6
  %i.cv = sext i32 %i.bq to i64                   ; 3 uses
  %i.cw = shl nsw i64 %i.cv, 2
  %i.cx = getelementptr i8, ptr %i.bu, i64 %i.cu
  %i.cy = getelementptr i8, ptr %i.cx, i64 %i.cw
  %scevgep = getelementptr i8, ptr %i.cy, i64 16
  %smax621 = tail call i32 @llvm.smax.i32(i32 %i.cp, i32 1)
  %i.cz = add nsw i64 %i.cv, %i.bw
  %i.da = shl nsw i64 %i.cz, 2
  %smax661 = tail call i32 @llvm.smax.i32(i32 %i.bv, i32 1)
  %wide.trip.count622 = zext nneg i32 %smax621 to i64 ; 6 uses
  %.idx = shl nsw i64 %i.cv, 2
  %i.db = getelementptr i8, ptr %i.bz, i64 %.idx
  %wide.trip.count656 = zext nneg i32 %3 to i64
  %invariant.gep736 = getelementptr i8, ptr %i.bu, i64 %i.da
  %wide.trip.count662 = zext nneg i32 %smax661 to i64 ; 3 uses
  %i.dc = mul nsw i64 %i.bw, 6
  %i.dd = sext i32 %i.bq to i64
  %i.de = shl nsw i64 %i.dd, 2
  %i.df = getelementptr i8, ptr %i.bu, i64 %i.dc
  %i.dg = getelementptr i8, ptr %i.df, i64 %i.de
  %scevgep36 = getelementptr i8, ptr %i.dg, i64 18
  %scevgep38 = getelementptr i8, ptr %i.o, i64 1
  %i.dh = mul nsw i64 %i.bw, 6
  %i.di = sext i32 %i.bq to i64
  %i.dj = shl nsw i64 %i.di, 2
  %i.dk = getelementptr i8, ptr %i.bu, i64 %i.dh
  %i.dl = getelementptr i8, ptr %i.dk, i64 %i.dj
  %scevgep68 = getelementptr i8, ptr %i.dl, i64 18
  %scevgep70 = getelementptr i8, ptr %i.o, i64 2
  %min.iters.check18 = icmp slt i32 %i.cp, 4
  %min.iters.check19 = icmp slt i32 %i.cp, 16
  %i.dm = and i64 %wide.trip.count622, 12
  %n.vec21 = and i64 %wide.trip.count622, 2147483632 ; 4 uses
  %broadcast.splatinsert22 = insertelement <8 x i16> poison, i16 %i.cb, i64 0
  %broadcast.splat23 = shufflevector <8 x i16> %broadcast.splatinsert22, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n28 = icmp eq i64 %n.vec21, %wide.trip.count622
  %min.epilog.iters.check = icmp eq i64 %i.dm, 0
  %n.vec29 = and i64 %wide.trip.count622, 2147483644 ; 3 uses
  %broadcast.splatinsert30 = insertelement <4 x i16> poison, i16 %i.cb, i64 0
  %broadcast.splat31 = shufflevector <4 x i16> %broadcast.splatinsert30, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n34 = icmp eq i64 %n.vec29, %wide.trip.count622
  %invariant.op = or i1 %i.cr, %i.bp
  %min.iters.check = icmp slt i32 %i.bv, 8
  %n.vec = and i64 %wide.trip.count662, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count662
  br label %bb.o

.preheader:                                       ; preds = %.thread522, %bb.n
  %i.dn = icmp sgt i32 %6, 0
  br i1 %i.dn, label %.lr.ph598.preheader, label %._crit_edge599

.lr.ph598.preheader:                              ; preds = %.preheader
  %wide.trip.count668 = zext nneg i32 %6 to i64   ; 2 uses
  %xtraiter105 = and i64 %wide.trip.count668, 1
  %i.do = icmp eq i32 %6, 1
  br i1 %i.do, label %.lr.ph598.epil.preheader, label %.lr.ph598.preheader.new

.lr.ph598.preheader.new:                          ; preds = %.lr.ph598.preheader
  %unroll_iter108 = and i64 %wide.trip.count668, 2147483646
  br label %.lr.ph598

bb.o:                                             ; preds = %.lr.ph596, %.thread522
  %.0385594 = phi i32 [ %i.bk, %.lr.ph596 ], [ %.2387, %.thread522 ] ; 2 uses
  %.1390593 = phi i32 [ %.0389, %.lr.ph596 ], [ %.9526, %.thread522 ] ; 3 uses
  %.0394592 = phi i32 [ 0, %.lr.ph596 ], [ %i.vh, %.thread522 ]
  %i.dp = sext i32 %.0385594 to i64
  %i.dq = getelementptr inbounds i8, ptr %i.o, i64 %i.dp ; 4 uses
  %.val489 = load i8, ptr %i.dq, align 1, !tbaa !14
  %i.dr = getelementptr i8, ptr %i.dq, i64 1
  %.val490 = load i8, ptr %i.dr, align 1, !tbaa !14
  %i.ds = zext i8 %.val489 to i32
  %i.dt = shl nuw nsw i32 %i.ds, 8
  %i.du = zext i8 %.val490 to i32
  %i.dv = or disjoint i32 %i.dt, %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dq, i64 2
  %.val487 = load i8, ptr %i.dw, align 1, !tbaa !14
  %i.dx = getelementptr i8, ptr %i.dq, i64 3
  %.val488 = load i8, ptr %i.dx, align 1, !tbaa !14
  %i.dy = zext i8 %.val487 to i16
  %i.dz = shl nuw i16 %i.dy, 8                    ; 2 uses
  %i.ea = zext i8 %.val488 to i16
  %i.eb = or disjoint i16 %i.dz, %i.ea
  %i.ec = zext i16 %i.eb to i32                   ; 3 uses
  %i.ed = add nsw i32 %i.dv, %.1390593            ; 6 uses
  %i.ee = icmp ugt i32 %i.ed, %i.au
  br i1 %i.ee, label %.thread528, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ef = add nsw i32 %.0385594, 4                ; 3 uses
  %.not463 = icmp sgt i16 %i.dz, -1
  br i1 %.not463, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds i8, ptr %i.o, i64 %i.eg
  %i.ei = add nsw i32 %i.ef, %i.ch
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ej = and i32 %i.ec, 4095                     ; 2 uses
  %i.ek = load i32, ptr %i.ci, align 8, !tbaa !264
  %.not464 = icmp slt i32 %i.ej, %i.ek
  br i1 %.not464, label %.thread, label %.thread532

.thread:                                          ; preds = %bb.r
  %i.el = load i32, ptr %i.cj, align 4, !tbaa !265
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds i8, ptr %i.o, i64 %i.em
  %i.eo = mul i32 %i.ch, %i.ej
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds i8, ptr %i.en, i64 %i.ep
  br label %bb.s

bb.s:                                             ; preds = %.thread, %bb.q
  %.1386 = phi i32 [ %i.ei, %bb.q ], [ %i.ef, %.thread ] ; 2 uses
  %.1384 = phi ptr [ %i.eh, %bb.q ], [ %i.eq, %.thread ] ; 2 uses
  %i.er = and i32 %i.ec, 16384
  %.not465 = icmp eq i32 %i.er, 0                 ; 3 uses
  %i.es = sext i32 %.1386 to i64
  %i.et = getelementptr inbounds i8, ptr %i.o, i64 %i.es ; 2 uses
  %i.eu = getelementptr inbounds i8, ptr %i.et, i64 %i.ck
  %i.ev = select i1 %.not465, i32 0, i32 %i.cl
  %.2387 = add nsw i32 %.1386, %i.ev
  %.0382 = select i1 %.not465, ptr null, ptr %i.et ; 2 uses
  %.0381 = select i1 %.not465, ptr null, ptr %i.eu
  br i1 %i.cn, label %.lr.ph.i, label %_ZN2cvL23stbtt__GetVarTupleScaleEPKNS_14stbtt_fontinfoEPKhS4_S4_.exit.thread504

.lr.ph.i:                                         ; preds = %bb.s
  %.not.i = icmp eq ptr %.0382, null
  br i1 %.not.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.x
  %indvars.iv90.i = phi i64 [ %indvars.iv.next91.i, %bb.x ], [ 0, %.lr.ph.i ] ; 3 uses
  %.05178.us.i = phi i32 [ %.3.us.i, %bb.x ], [ 65536, %.lr.ph.i ] ; 2 uses
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %indvars.iv90.i
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !41 ; 7 uses
  %i.ey = shl nuw nsw i64 %indvars.iv90.i, 1
  %i.ez = getelementptr inbounds nuw i8, ptr %.1384, i64 %i.ey ; 2 uses
  %.val67.us.i = load i8, ptr %i.ez, align 1, !tbaa !14
  %i.fa = getelementptr i8, ptr %i.ez, i64 1
  %.val68.us.i = load i8, ptr %i.fa, align 1, !tbaa !14
  %i.fb = zext i8 %.val67.us.i to i16
  %i.fc = shl nuw i16 %i.fb, 8
  %i.fd = zext i8 %.val68.us.i to i16
  %i.fe = or disjoint i16 %i.fc, %i.fd            ; 5 uses
  %i.ff = icmp eq i16 %i.ex, %i.fe
  %i.fg = icmp eq i16 %i.fe, 0
  %or.cond.us.i = or i1 %i.ff, %i.fg
  br i1 %or.cond.us.i, label %bb.x, label %bb.t

bb.t:                                             ; preds = %.lr.ph.split.us.i
  %i.fh = icmp eq i16 %i.ex, 0
  br i1 %i.fh, label %.thread522, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fi = icmp slt i16 %i.ex, 1
  %.not59.us.i = icmp sgt i16 %i.ex, %i.fe
  %or.cond62.us.i = or i1 %i.fi, %.not59.us.i
  br i1 %or.cond62.us.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fj = icmp sle i16 %i.fe, %i.ex
  %i.fk = icmp slt i16 %i.ex, 0
  %or.cond3.us.i = and i1 %i.fk, %i.fj
  br i1 %or.cond3.us.i, label %bb.w, label %.thread522

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.fl = sext i32 %.05178.us.i to i64
  %i.fm = sext i16 %i.ex to i64
  %i.fn = mul nsw i64 %i.fm, %i.fl
  %i.fo = sext i16 %i.fe to i64
  %i.fp = sdiv i64 %i.fn, %i.fo
  %i.fq = trunc i64 %i.fp to i32
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph.split.us.i
  %.3.us.i = phi i32 [ %i.fq, %bb.w ], [ %.05178.us.i, %.lr.ph.split.us.i ] ; 2 uses
  %indvars.iv.next91.i = add nuw nsw i64 %indvars.iv90.i, 1 ; 2 uses
  %exitcond94.not.i = icmp eq i64 %indvars.iv.next91.i, %wide.trip.count93.i
  br i1 %exitcond94.not.i, label %_ZN2cvL23stbtt__GetVarTupleScaleEPKNS_14stbtt_fontinfoEPKhS4_S4_.exit, label %.lr.ph.split.us.i, !llvm.loop !266

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.ab
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ab ], [ 0, %.lr.ph.i ] ; 3 uses
  %.05178.i = phi i32 [ %.3.i, %bb.ab ], [ 65536, %.lr.ph.i ] ; 2 uses
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %indvars.iv.i
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !41 ; 6 uses
  %i.ft = sext i16 %i.fs to i32                   ; 2 uses
  %i.fu = shl nuw nsw i64 %indvars.iv.i, 1        ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.1384, i64 %i.fu ; 2 uses
  %.val67.i = load i8, ptr %i.fv, align 1, !tbaa !14
  %i.fw = getelementptr i8, ptr %i.fv, i64 1
  %.val68.i = load i8, ptr %i.fw, align 1, !tbaa !14
  %i.fx = zext i8 %.val67.i to i16
  %i.fy = shl nuw i16 %i.fx, 8
  %i.fz = zext i8 %.val68.i to i16
  %i.ga = or disjoint i16 %i.fy, %i.fz            ; 4 uses
  %i.gb = sext i16 %i.ga to i32                   ; 2 uses
  %i.gc = icmp eq i16 %i.fs, %i.ga
  %i.gd = icmp eq i16 %i.ga, 0
  %or.cond.i = or i1 %i.gc, %i.gd
  br i1 %or.cond.i, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %.lr.ph.split.i
  %i.ge = icmp eq i16 %i.fs, 0
  br i1 %i.ge, label %.thread522, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gf = getelementptr inbounds nuw i8, ptr %.0382, i64 %i.fu ; 2 uses
  %.val65.i = load i8, ptr %i.gf, align 1, !tbaa !14
end_hunk_0
begin_hunk_1_@_ZN2cvL23stbtt__VaryGlyphShapeTTEPKNS_14stbtt_fontinfoEiiiiPNS_12stbtt_vertexEiPiS5_S5_S5_:bb.a
  %i.sp = load i16, ptr %i.so, align 2, !tbaa !41 ; 2 uses
  %i.sq = sext i16 %i.sp to i32                   ; 6 uses
  %i.sr = shl nsw i32 %.1368, 1
  %i.ss = sext i32 %i.sr to i64
  %i.st = getelementptr inbounds [2 x i8], ptr %i.bz, i64 %i.ss ; 2 uses
  %i.su = load i16, ptr %i.st, align 2, !tbaa !41 ; 2 uses
  %i.sv = sext i16 %i.su to i32                   ; 5 uses
  %i.sw = getelementptr i8, ptr %i.st, i64 2
  %i.sx = load i16, ptr %i.sw, align 2, !tbaa !41 ; 2 uses
  %i.sy = sext i16 %i.sx to i32                   ; 5 uses
  %i.sz = sub nsw i32 %i.sf, %i.ry                ; 4 uses
  %i.ta = sub nsw i32 %i.si, %i.sb                ; 4 uses
  %i.tb = icmp eq i16 %i.rx, %i.se
  br i1 %i.tb, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.loopexit
  %i.tc = icmp eq i16 %i.sm, %i.su
  %i.td = select i1 %i.tc, i32 %i.sn, i32 0
  br label %bb.ax

bb.aq:                                            ; preds = %.loopexit
  %i.te = icmp slt i16 %i.rx, %i.se
  br i1 %i.te, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %.not474 = icmp sgt i16 %i.rq, %i.rx
  br i1 %.not474, label %bb.as, label %bb.ax

bb.as:                                            ; preds = %bb.ar
  %.not475 = icmp slt i16 %i.rq, %i.se
  br i1 %.not475, label %bb.at, label %bb.ax

bb.at:                                            ; preds = %bb.as
  %i.tf = sub nsw i32 %i.sv, %i.sn
  %i.tg = sub nsw i32 %i.rr, %i.ry
  %i.th = mul nsw i32 %i.tf, %i.tg
  %i.ti = mul nsw i32 %i.sz, %i.sn
  %i.tj = add nsw i32 %i.th, %i.ti
  %i.tk = sdiv i32 %i.tj, %i.sz
  br label %bb.ax

bb.au:                                            ; preds = %bb.aq
  %.not472 = icmp sgt i16 %i.rq, %i.se
  br i1 %.not472, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %.not473 = icmp slt i16 %i.rq, %i.rx
  br i1 %.not473, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.tl = sub nsw i32 %i.sn, %i.sv
  %i.tm = sub nsw i32 %i.rr, %i.sf
  %i.tn = mul nsw i32 %i.tl, %i.tm
  %i.to = mul nsw i32 %i.sz, %i.sv
  %i.tp = sub nsw i32 %i.tn, %i.to
  %i.tq = sub nsw i32 0, %i.sz
  %i.tr = sdiv i32 %i.tp, %i.tq
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.au, %bb.av, %bb.at, %bb.ar, %bb.as, %bb.ap
  %.0365 = phi i32 [ %i.td, %bb.ap ], [ %i.sv, %bb.as ], [ %i.tk, %bb.at ], [ %i.sn, %bb.ar ], [ %i.tr, %bb.aw ], [ %i.sv, %bb.au ], [ %i.sn, %bb.av ]
  %i.ts = icmp eq i16 %i.sa, %i.sh
  br i1 %i.ts, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.tt = icmp eq i16 %i.sp, %i.sx
  %i.tu = select i1 %i.tt, i32 %i.sq, i32 0
  br label %bb.bg

bb.az:                                            ; preds = %bb.ax
  %i.tv = icmp slt i16 %i.sa, %i.sh
  br i1 %i.tv, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %bb.az
  %.not478 = icmp sgt i16 %i.rt, %i.sa
  br i1 %.not478, label %bb.bb, label %bb.bg

bb.bb:                                            ; preds = %bb.ba
  %.not479 = icmp slt i16 %i.rt, %i.sh
  br i1 %.not479, label %bb.bc, label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  %i.tw = sub nsw i32 %i.sy, %i.sq
  %i.tx = sub nsw i32 %i.ru, %i.sb
  %i.ty = mul nsw i32 %i.tw, %i.tx
  %i.tz = mul nsw i32 %i.ta, %i.sq
  %i.ua = add nsw i32 %i.ty, %i.tz
  %i.ub = sdiv i32 %i.ua, %i.ta
  br label %bb.bg

bb.bd:                                            ; preds = %bb.az
  %.not476 = icmp sgt i16 %i.rt, %i.sh
  br i1 %.not476, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %.not477 = icmp slt i16 %i.rt, %i.sa
  br i1 %.not477, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.uc = sub nsw i32 %i.sq, %i.sy
  %i.ud = sub nsw i32 %i.ru, %i.si
  %i.ue = mul nsw i32 %i.uc, %i.ud
  %i.uf = mul nsw i32 %i.ta, %i.sy
  %i.ug = sub nsw i32 %i.ue, %i.uf
  %i.uh = sub nsw i32 0, %i.ta
  %i.ui = sdiv i32 %i.ug, %i.uh
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.bd, %bb.be, %bb.bc, %bb.ba, %bb.bb, %bb.ay
  %.0 = phi i32 [ %i.tu, %bb.ay ], [ %i.sy, %bb.bb ], [ %i.ub, %bb.bc ], [ %i.sq, %bb.ba ], [ %i.ui, %bb.bf ], [ %i.sy, %bb.bd ], [ %i.sq, %bb.be ]
  %i.uj = trunc i32 %.0365 to i16
  store i16 %i.uj, ptr %i.qn, align 2, !tbaa !41
  %i.uk = trunc i32 %.0 to i16
  %i.ul = getelementptr i8, ptr %i.qn, i64 2
  store i16 %i.uk, ptr %i.ul, align 2, !tbaa !41
  br label %bb.bh

bb.bh:                                            ; preds = %bb.al, %bb.bg
  %.2372.ph = phi i32 [ %.1371, %bb.bg ], [ %i.qp, %bb.al ]
  %.2369.ph = phi i32 [ %.1368, %bb.bg ], [ %spec.store.select, %bb.al ]
  %.3.ph = phi i32 [ %.2, %bb.bg ], [ %spec.select, %bb.al ]
  %indvars.iv.next637 = add nuw nsw i64 %indvars.iv636, 1 ; 2 uses
  %exitcond646.not = icmp eq i64 %indvars.iv.next637, %wide.trip.count645
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond646.not, label %.loopexit543, label %.lr.ph581, !llvm.loop !290

.loopexit543:                                     ; preds = %bb.bh, %.lr.ph587..loopexit543_crit_edge, %.lr.ph584.preheader, %.preheader542
  %.pre-phi = phi i32 [ %.pre, %.lr.ph587..loopexit543_crit_edge ], [ %i.qm, %.preheader542 ], [ %i.qm, %.lr.ph584.preheader ], [ %i.qm, %bb.bh ]
  %indvars.iv.next654 = add nuw nsw i64 %indvars.iv653, 1 ; 2 uses
  %exitcond657.not = icmp eq i64 %indvars.iv.next654, %wide.trip.count656
  br i1 %exitcond657.not, label %.loopexit547, label %.lr.ph587, !llvm.loop !291

.loopexit547:                                     ; preds = %.loopexit543, %._crit_edge567
  br i1 %i.cc, label %.lr.ph590.preheader, label %._crit_edge591

.lr.ph590.preheader:                              ; preds = %.loopexit547
  br i1 %min.iters.check, label %.lr.ph590.preheader89, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph590.preheader
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.4.i506, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.um = getelementptr inbounds nuw [2 x i8], ptr %i.bz, i64 %index ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 8
  %wide.load = load <4 x i16>, ptr %i.um, align 2, !tbaa !41
  %wide.load14 = load <4 x i16>, ptr %i.un, align 2, !tbaa !41
  %i.uo = sext <4 x i16> %wide.load to <4 x i32>
  %i.up = sext <4 x i16> %wide.load14 to <4 x i32>
  %i.uq = mul nsw <4 x i32> %broadcast.splat, %i.uo
  %i.ur = mul nsw <4 x i32> %broadcast.splat, %i.up
  %i.us = ashr <4 x i32> %i.uq, splat (i32 8)
  %i.ut = ashr <4 x i32> %i.ur, splat (i32 8)
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %index ; 3 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 16 ; 2 uses
  %wide.load15 = load <4 x i32>, ptr %i.uu, align 4, !tbaa !18
  %wide.load16 = load <4 x i32>, ptr %i.uv, align 4, !tbaa !18
  %i.uw = add nsw <4 x i32> %i.us, %wide.load15
  %i.ux = add nsw <4 x i32> %i.ut, %wide.load16
  store <4 x i32> %i.uw, ptr %i.uu, align 4, !tbaa !18
  store <4 x i32> %i.ux, ptr %i.uv, align 4, !tbaa !18
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.uy = icmp eq i64 %index.next, %n.vec
  br i1 %i.uy, label %middle.block, label %vector.body, !llvm.loop !292

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge591, label %.lr.ph590.preheader89

.lr.ph590.preheader89:                            ; preds = %.lr.ph590.preheader, %middle.block
  %indvars.iv658.ph = phi i64 [ 0, %.lr.ph590.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph590

.lr.ph590:                                        ; preds = %.lr.ph590.preheader89, %.lr.ph590
  %indvars.iv658 = phi i64 [ %indvars.iv.next659, %.lr.ph590 ], [ %indvars.iv658.ph, %.lr.ph590.preheader89 ] ; 3 uses
  %i.uz = getelementptr inbounds nuw [2 x i8], ptr %i.bz, i64 %indvars.iv658
  %i.va = load i16, ptr %i.uz, align 2, !tbaa !41
  %i.vb = sext i16 %i.va to i32
  %i.vc = mul nsw i32 %.4.i506, %i.vb
  %i.vd = ashr i32 %i.vc, 8
  %i.ve = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv658 ; 2 uses
  %i.vf = load i32, ptr %i.ve, align 4, !tbaa !18
  %i.vg = add nsw i32 %i.vd, %i.vf
  store i32 %i.vg, ptr %i.ve, align 4, !tbaa !18
  %indvars.iv.next659 = add nuw nsw i64 %indvars.iv658, 1 ; 2 uses
  %exitcond663.not = icmp eq i64 %indvars.iv.next659, %wide.trip.count662
  br i1 %exitcond663.not, label %._crit_edge591, label %.lr.ph590, !llvm.loop !293

.thread537:                                       ; preds = %bb.ac, %.lr.ph561, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %.thread532

._crit_edge591:                                   ; preds = %.lr.ph590, %middle.block, %.loopexit547
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %.thread522

.thread522:                                       ; preds = %bb.z, %bb.y, %bb.t, %bb.v, %_ZN2cvL23stbtt__GetVarTupleScaleEPKNS_14stbtt_fontinfoEPKhS4_S4_.exit, %._crit_edge591
  %.9526 = phi i32 [ %.3392.lcssa, %._crit_edge591 ], [ %i.ed, %_ZN2cvL23stbtt__GetVarTupleScaleEPKNS_14stbtt_fontinfoEPKhS4_S4_.exit ], [ %i.ed, %bb.t ], [ %i.ed, %bb.v ], [ %i.ed, %bb.y ], [ %i.ed, %bb.z ]
  %i.vh = add nuw nsw i32 %.0394592, 1            ; 2 uses
  %12 = icmp samesign ult i32 %i.vh, %11
  br i1 %12, label %bb.o, label %.preheader, !llvm.loop !294

.lr.ph598:                                        ; preds = %.lr.ph598, %.lr.ph598.preheader.new
  %indvars.iv665 = phi i64 [ 0, %.lr.ph598.preheader.new ], [ %indvars.iv.next666.1, %.lr.ph598 ] ; 4 uses
  %niter109 = phi i64 [ 0, %.lr.ph598.preheader.new ], [ %niter109.next.1, %.lr.ph598 ]
  %.idx715 = shl nuw nsw i64 %indvars.iv665, 3
  %i.vi = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.idx715
  %i.vj = getelementptr inbounds nuw [14 x i8], ptr %5, i64 %indvars.iv665 ; 2 uses
  %i.vk = load <2 x i32>, ptr %i.vi, align 4, !tbaa !18
  %i.vl = lshr <2 x i32> %i.vk, splat (i32 8)
  %i.vm = load <2 x i16>, ptr %i.vj, align 2, !tbaa !41
  %i.vn = trunc <2 x i32> %i.vl to <2 x i16>
  %i.vo = add <2 x i16> %i.vm, %i.vn
  store <2 x i16> %i.vo, ptr %i.vj, align 2, !tbaa !41
  %indvars.iv.next666 = or disjoint i64 %indvars.iv665, 1 ; 2 uses
  %.idx715.1 = shl nuw nsw i64 %indvars.iv.next666, 3
  %i.vp = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.idx715.1
  %i.vq = getelementptr inbounds nuw [14 x i8], ptr %5, i64 %indvars.iv.next666 ; 2 uses
  %i.vr = load <2 x i32>, ptr %i.vp, align 4, !tbaa !18
  %i.vs = lshr <2 x i32> %i.vr, splat (i32 8)
  %i.vt = load <2 x i16>, ptr %i.vq, align 2, !tbaa !41
  %i.vu = trunc <2 x i32> %i.vs to <2 x i16>
  %i.vv = add <2 x i16> %i.vt, %i.vu
  store <2 x i16> %i.vv, ptr %i.vq, align 2, !tbaa !41
  %indvars.iv.next666.1 = add nuw nsw i64 %indvars.iv665, 2 ; 2 uses
  %niter109.next.1 = add i64 %niter109, 2         ; 2 uses
  %niter109.ncmp.1 = icmp eq i64 %niter109.next.1, %unroll_iter108
  br i1 %niter109.ncmp.1, label %._crit_edge599.loopexit.unr-lcssa, label %.lr.ph598, !llvm.loop !295

._crit_edge599.loopexit.unr-lcssa:                ; preds = %.lr.ph598
  %lcmp.mod106.not = icmp eq i64 %xtraiter105, 0
  br i1 %lcmp.mod106.not, label %._crit_edge599, label %.lr.ph598.epil.preheader

.lr.ph598.epil.preheader:                         ; preds = %._crit_edge599.loopexit.unr-lcssa, %.lr.ph598.preheader
  %indvars.iv665.epil.init = phi i64 [ 0, %.lr.ph598.preheader ], [ %indvars.iv.next666.1, %._crit_edge599.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod107 = trunc i32 %6 to i1
  tail call void @llvm.assume(i1 %lcmp.mod107)
  %.idx715.epil = shl nuw nsw i64 %indvars.iv665.epil.init, 3
  %i.vw = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.idx715.epil
  %i.vx = getelementptr inbounds nuw [14 x i8], ptr %5, i64 %indvars.iv665.epil.init ; 2 uses
  %i.vy = load <2 x i32>, ptr %i.vw, align 4, !tbaa !18
  %i.vz = lshr <2 x i32> %i.vy, splat (i32 8)
  %i.wa = load <2 x i16>, ptr %i.vx, align 2, !tbaa !41
  %i.wb = trunc <2 x i32> %i.vz to <2 x i16>
  %i.wc = add <2 x i16> %i.wa, %i.wb
  store <2 x i16> %i.wc, ptr %i.vx, align 2, !tbaa !41
  br label %._crit_edge599

._crit_edge599:                                   ; preds = %.lr.ph598.epil.preheader, %._crit_edge599.loopexit.unr-lcssa, %.preheader
  %.not459 = icmp eq ptr %7, null
  br i1 %.not459, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %._crit_edge599
  %i.wd = shl nsw i32 %i.bq, 1
  %i.we = sext i32 %i.wd to i64
  %i.wf = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.we
  %i.wg = load i32, ptr %i.wf, align 4, !tbaa !18
  %i.wh = ashr i32 %i.wg, 8
  %i.wi = load i32, ptr %7, align 4, !tbaa !18
  %i.wj = add nsw i32 %i.wi, %i.wh
  store i32 %i.wj, ptr %7, align 4, !tbaa !18
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %._crit_edge599
  %.not460 = icmp eq ptr %8, null
  br i1 %.not460, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.wk = shl nsw i32 %i.bq, 1
  %i.wl = sext i32 %i.wk to i64
  %i.wm = getelementptr [4 x i8], ptr %i.bu, i64 %i.wl
  %i.wn = getelementptr i8, ptr %i.wm, i64 20
  %i.wo = load i32, ptr %i.wn, align 4, !tbaa !18
  %i.wp = ashr i32 %i.wo, 8
  %i.wq = load i32, ptr %8, align 4, !tbaa !18
  %i.wr = add nsw i32 %i.wq, %i.wp
  store i32 %i.wr, ptr %8, align 4, !tbaa !18
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.not461 = icmp eq ptr %9, null
  br i1 %.not461, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ws = shl nsw i32 %i.bq, 1
  %i.wt = sext i32 %i.ws to i64
  %i.wu = getelementptr [4 x i8], ptr %i.bu, i64 %i.wt
  %i.wv = getelementptr i8, ptr %i.wu, i64 8
  %i.ww = load i32, ptr %i.wv, align 4, !tbaa !18
  %i.wx = ashr i32 %i.ww, 8
  %i.wy = load i32, ptr %9, align 4, !tbaa !18
  %i.wz = add nsw i32 %i.wy, %i.wx
  store i32 %i.wz, ptr %9, align 4, !tbaa !18
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.not462 = icmp eq ptr %10, null
  br i1 %.not462, label %.thread532, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.xa = shl nsw i32 %i.bq, 1
  %i.xb = sext i32 %i.xa to i64
  %i.xc = getelementptr [4 x i8], ptr %i.bu, i64 %i.xb
  %i.xd = getelementptr i8, ptr %i.xc, i64 28
  %i.xe = load i32, ptr %i.xd, align 4, !tbaa !18
  %i.xf = ashr i32 %i.xe, 8
  %i.xg = load i32, ptr %10, align 4, !tbaa !18
  %i.xh = add nsw i32 %i.xg, %i.xf
  store i32 %i.xh, ptr %10, align 4, !tbaa !18
  br label %.thread532

.thread532:                                       ; preds = %bb.r, %.thread537, %bb.bn, %bb.bo, %bb.m
  tail call void @free(ptr noundef %i.bu) #22
  br label %.thread528

.thread528:                                       ; preds = %bb.o, %.thread532, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.bp

bb.bp:                                            ; preds = %bb.h, %bb.g, %.thread528, %bb.j, %bb.i, %bb.c, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i32 -2147483647, -2147483648) i32 @_ZN2cvL23stbtt__ReadPointNumbersEPKNS_14stbtt_fontinfoEiPiPt(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 4 uses
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !14    ; 2 uses
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  %i.g = add nsw i32 %1, 1                        ; 2 uses
  %.not = icmp sgt i8 %i.e, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = shl nuw nsw i32 %i.f, 8
  %i.i = and i32 %i.h, 32512
  %i.j = sext i32 %i.g to i64
  %i.k = getelementptr inbounds i8, ptr %i.b, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !14
  %i.m = zext i8 %i.l to i32
  %i.n = or disjoint i32 %i.i, %i.m
  %i.o = add nsw i32 %1, 2
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.061 = phi i32 [ %i.o, %bb.b ], [ %i.g, %bb.a ] ; 2 uses
  %.049 = phi i32 [ %i.n, %bb.b ], [ %i.f, %bb.a ] ; 4 uses
  store i32 %.049, ptr %2, align 4, !tbaa !18
  %i.p = icmp eq i32 %.049, 0
  br i1 %i.p, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !69
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %.split.us
  %.078 = phi i16 [ 0, %.lr.ph ], [ %.us-phi74, %.split.us ] ; 4 uses
  %.05177 = phi i32 [ 0, %.lr.ph ], [ %i.y, %.split.us ]
  %.05376 = phi ptr [ %3, %.lr.ph ], [ %.us-phi, %.split.us ] ; 4 uses
  %.16275 = phi i32 [ %.061, %.lr.ph ], [ %i.cj, %.split.us ] ; 3 uses
  %.not66 = icmp ult i32 %.16275, %i.r
  br i1 %.not66, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.s = sext i32 %.16275 to i64
  %i.t = getelementptr inbounds i8, ptr %i.b, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !14    ; 5 uses
  %i.v = add nuw nsw i32 %.16275, 1               ; 2 uses
  %i.w = and i8 %i.u, 127
  %narrow = add nuw i8 %i.w, 1                    ; 3 uses
  %i.x = zext i8 %narrow to i32                   ; 2 uses
  %i.y = add nuw nsw i32 %.05177, %i.x            ; 3 uses
  %.not68 = icmp sgt i32 %i.y, %.049
  br i1 %.not68, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.e
  %.not67 = icmp slt i8 %i.u, 0
  %i.z = sext i32 %i.v to i64
  %i.aa = getelementptr inbounds i8, ptr %i.b, i64 %i.z ; 8 uses
  %wide.trip.count89 = zext i8 %narrow to i64     ; 4 uses
  br i1 %.not67, label %.preheader.split.us.preheader, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %.preheader
  %xtraiter = and i64 %wide.trip.count89, 3       ; 3 uses
  %i.ab = icmp ult i8 %i.u, 3
  br i1 %i.ab, label %.preheader.split.epil.preheader, label %.preheader.split.preheader.new

.preheader.split.preheader.new:                   ; preds = %.preheader.split.preheader
  %unroll_iter = and i64 %wide.trip.count89, 252
  br label %.preheader.split

.preheader.split.us.preheader:                    ; preds = %.preheader
  %i.ac = and i8 %i.u, 127
  %xtraiter106 = and i64 %wide.trip.count89, 1
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %.preheader.split.us.epil.preheader, label %.preheader.split.us.preheader.new

end_hunk_1
